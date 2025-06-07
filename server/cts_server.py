#!/usr/bin/env python3
"""
MCP · Routing Service (global + detail) — port 3339
───────────────────────────────────────────────────

POST /route/run  →  Innovus 7_route.tcl

输入：
  - 如果已指定 restore_enc，就直接从它恢复；
  - 否则，从 CTS 阶段输出的 cts.enc.dat 恢复。

结束时保存：pnr_save/route.enc.dat
"""

from typing import Optional, Dict
import subprocess
import pathlib
import datetime
import os
import csv
import logging
import sys
import glob
import gzip

from fastapi import FastAPI
from pydantic import BaseModel, Field

os.environ["PATH"] = (
    "/opt/cadence/innovus221/tools/bin:"
    "/opt/cadence/genus172/bin:"
    + os.environ.get("PATH", "")
)
logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s",
    handlers=[
        logging.FileHandler("/home/yl996/route_api.log"),
        logging.StreamHandler(sys.stdout),
    ],
)

ROOT     = pathlib.Path(__file__).resolve().parent.parent
BACKEND  = ROOT / "scripts" / "FreePDK45" / "backend"
LOG_DIR  = ROOT / "logs" / "route"; LOG_DIR.mkdir(parents=True, exist_ok=True)

IMP_CSV = ROOT / "config" / "imp_global.csv"
PLC_CSV = ROOT / "config" / "placement.csv"
CTS_CSV = ROOT / "config" / "cts.csv"

ROUTE_RPTS = [
    "route_summary.rpt",
    "congestion.rpt",
    "postRoute_drc_max1M.rpt",
    "postOpt_drc_max1M.rpt",
    "route_timing.rpt.gz",
]

class RtReq(BaseModel):
    design:      str
    tech:        str = "FreePDK45"
    impl_ver:    str
    g_idx:       int = 0
    p_idx:       int = 0
    c_idx:       int = 0
    force:       bool = False
    top_module:  Optional[str] = Field(
        None, description="override TOP_NAME; 留空则解析 designs/<design>/config.tcl"
    )
    restore_enc: Optional[str] = None 

class RtResp(BaseModel):
    status:     str
    log_path:   str
    rpt_paths:  Dict[str, str]

def read_csv_row(path: pathlib.Path, idx: int) -> Dict[str,str]:
    rows = list(csv.DictReader(path.open()))
    if idx >= len(rows):
        raise IndexError(f"{path.name}: row {idx} out of range")
    return rows[idx]

def run(cmd: str, logfile: pathlib.Path, cwd: pathlib.Path, env_extra: dict):
    env = os.environ.copy()
    env.update(env_extra)
    logging.info("launch Innovus → %s", cmd)

    with logfile.open("w") as lf, subprocess.Popen(
        cmd, cwd=str(cwd), shell=True, universal_newlines=True,
        stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
        executable="/bin/bash", env=env
    ) as p:
        for line in p.stdout:
            lf.write(line)
        p.wait()

    if p.returncode != 0:
        raise RuntimeError(f"Innovus exited with {p.returncode}")

def parse_top_from_config(cfg: pathlib.Path) -> Optional[str]:
    if not cfg.exists():
        return None
    for line in cfg.read_text().splitlines():
        if line.strip().startswith("set TOP_NAME"):
            return line.split('"')[1]
    return None

app = FastAPI(title="MCP · Routing Service")

@app.post("/route/run", response_model=RtResp)
def route_run(req: RtReq):
    des_root = ROOT / "designs" / req.design / req.tech
    impl_dir = des_root / "implementation" / req.impl_ver
    if not impl_dir.exists():
        return RtResp(status="error: implementation dir not found", log_path="", rpt_paths={})

    if req.restore_enc:
        enc_dat = pathlib.Path(req.restore_enc)
    else:
        save_dir = impl_dir / "pnr_save"
        candidates = [
            save_dir / "cts.enc.dat",
            save_dir / "place.enc.dat",
            save_dir / "power.enc.dat",
            save_dir / "floorplan.enc.dat",
        ]
        enc_dat = next((p for p in candidates if p.exists()), None)
    if not enc_dat or not enc_dat.exists():
        return RtResp(status="error: no .enc.dat to restore", log_path="", rpt_paths={})

    rpt_dir = impl_dir / "pnr_reports"; rpt_dir.mkdir(exist_ok=True)
    if req.force:
        for rpt in ROUTE_RPTS:
            (rpt_dir / rpt).unlink(missing_ok=True)
        (impl_dir / "pnr_save" / "route.enc.dat").unlink(missing_ok=True)

    cfg_tcl  = ROOT / "designs" / req.design / "config.tcl"
    top_name = req.top_module or parse_top_from_config(cfg_tcl) or req.design

    env = {
        "BASE_DIR":    str(ROOT),
        "TOP_NAME":    top_name,
        "FILE_FORMAT": "verilog",
        **read_csv_row(IMP_CSV, req.g_idx),
        **read_csv_row(PLC_CSV, req.p_idx),
        **read_csv_row(CTS_CSV, req.c_idx),
    }

    tech_tcl   = ROOT / "scripts" / req.tech / "tech.tcl"
    route_tcl  = BACKEND / "7_route.tcl"

    files_arg = f"{tech_tcl}"

    exec_cmd = (
        f'restoreDesign "{enc_dat}" "{top_name}"; '
        f'source "{route_tcl}"; '
        'saveDesign pnr_save/route.enc.dat'
    )
    innovus_cmd = (
        f'innovus -no_gui -batch '
        f'-execute "{exec_cmd}" '
        f'-files "{files_arg}"'
    )

    ts = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
    log_file = LOG_DIR / f"{req.design}_route_{ts}.log"
    try:
        run(innovus_cmd, log_file, impl_dir, env)
    except Exception as e:
        return RtResp(status=f"error: {e}", log_path=str(log_file), rpt_paths={})

    rpt_paths: Dict[str,str] = {}
    for rpt in ROUTE_RPTS:
        p = rpt_dir / rpt
        if p.exists():
            if p.suffix == ".gz":
                rpt_paths[rpt] = gzip.open(p, "rt").read()
            else:
                rpt_paths[rpt] = p.read_text()
        else:
            rpt_paths[rpt] = "not found"

    return RtResp(status="ok", log_path=str(log_file), rpt_paths=rpt_paths)

if __name__ == "__main__":
    import uvicorn
    uvicorn.run("route_server:app", host="0.0.0.0", port=3339, reload=False)
