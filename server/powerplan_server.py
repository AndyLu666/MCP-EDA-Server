#!/usr/bin/env python3

from typing import Optional
import subprocess
import pathlib
import datetime
import os
import logging
import sys
import gzip
import glob
import csv
import argparse                    
from fastapi import FastAPI
from pydantic import BaseModel


os.environ["PATH"] = (
    "/opt/cadence/innovus221/tools/bin:"
    "/opt/cadence/genus172/bin:" + os.environ.get("PATH", "")
)

ROOT      = pathlib.Path(__file__).resolve().parent.parent
LOG_ROOT  = ROOT / "logs"                 
LOG_ROOT.mkdir(exist_ok=True)
LOG_DIR   = LOG_ROOT / "powerplan"            
LOG_DIR.mkdir(parents=True, exist_ok=True)

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s",
    handlers=[
        logging.FileHandler(LOG_ROOT / "pwr_api.log"), 
        logging.StreamHandler(sys.stdout),
    ],
)

BACKEND = ROOT / "scripts" / "FreePDK45" / "backend"
IMP_CSV = ROOT / "config" / "imp_global.csv"

class PwrReq(BaseModel):
    design:      str
    tech:        str = "FreePDK45"
    impl_ver:    str
    restore_enc: str      
    force:       bool = False
    top_module:  Optional[str] = None

class PwrResp(BaseModel):
    status:    str
    log_path:  str
    report:    str

def read_csv_row(path: pathlib.Path, idx: int) -> dict:
    rows = list(csv.DictReader(path.open()))
    if idx >= len(rows):
        raise IndexError(f"{path.name}: row {idx} out of range (total {len(rows)})")
    return rows[idx]

def parse_top_from_config(cfg: pathlib.Path) -> str:
    if not cfg.exists():
        return ""
    for line in cfg.read_text().splitlines():
        if line.startswith("set TOP_NAME"):
            return line.split('"')[1]
    return ""

def run(cmd: str, log_file: pathlib.Path, cwd: pathlib.Path, env_extra: dict):
    env = os.environ.copy()
    env.update(env_extra)
    with log_file.open("w") as lf, subprocess.Popen(
        cmd,
        cwd=cwd,
        shell=True,
        universal_newlines=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        executable="/bin/bash",
        env=env,
    ) as p:
        for line in p.stdout:
            lf.write(line)
        p.wait()
    if p.returncode != 0:
        raise RuntimeError(f"command exited {p.returncode}")

app = FastAPI(title="MCP · Power-plan Service")

@app.post("/power/run", response_model=PwrResp)
def powerplan(req: PwrReq):
    des_root = ROOT / "designs" / req.design / req.tech
    impl_dir = des_root / "implementation" / req.impl_ver
    if not impl_dir.exists():
        return PwrResp(status="error: implementation dir not found", log_path="", report="")

    floor_enc = pathlib.Path(req.restore_enc)
    if not floor_enc.exists():
        return PwrResp(status="error: floorplan.enc.dat not found", log_path="", report="")

    rpt_dir  = impl_dir / "pnr_reports"
    rpt_file = rpt_dir / "powerplan.rpt"
    if req.force and rpt_file.exists():
        rpt_file.unlink()

    cfg_path = ROOT / "designs" / req.design / "config.tcl"
    if req.top_module:
        top = req.top_module
    else:
        parsed = parse_top_from_config(cfg_path)
        top = parsed if parsed else req.design

    env = {"BASE_DIR": str(ROOT)}
    env.update(read_csv_row(IMP_CSV, 0))  
    env.setdefault("TOP_NAME", top)
    env.setdefault("FILE_FORMAT", "verilog")

    power_tcl  = BACKEND / "3_powerplan.tcl"
    scripts = [str(power_tcl)]
    files_arg = " ".join(scripts)

    exec_cmd = (
        f'restoreDesign "{floor_enc.resolve()}" {top}; '
    )
    innovus_cmd = (
        f'innovus -no_gui -batch '
        f'-execute \'{exec_cmd}\' '
        f'-files "{files_arg}" '
    )

    ts       = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
    log_file = LOG_DIR / f"{req.design}_pwr_{ts}.log"

    try:
        run(innovus_cmd, log_file, impl_dir, env)
    except Exception as e:
        return PwrResp(status=f"error: {e}", log_path=str(log_file), report="")

    report_text = "powerplan.rpt(.gz) not found"
    if rpt_file.exists():
        report_text = rpt_file.read_text(errors="ignore")
    else:
        for cand in glob.glob(str(rpt_dir / "powerplan.rpt*")):
            p = pathlib.Path(cand)
            if p.suffix == ".gz":
                with gzip.open(p, "rt") as f:
                    report_text = f.read()
            else:
                report_text = p.read_text(errors="ignore")
            break

    return PwrResp(status="ok", log_path=str(log_file), report=report_text)


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--port",
        type=int,
        default=int(os.getenv("POWERPLAN_PORT", 13336)),
        help="listen port (env POWERPLAN_PORT overrides; default 13336)",
    )
    args = parser.parse_args()

    import uvicorn
    uvicorn.run(
        "powerplan_server:app",
        host="0.0.0.0",
        port=args.port,
        reload=False,
    )
