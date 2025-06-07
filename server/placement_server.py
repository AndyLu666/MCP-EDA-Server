#!/usr/bin/env python3
"""
MCP · Placement Service (global + detail placement & pre-CTS optimization)

启动：
    cd ~/proj/mcp-eda-example
    python3 server/placement_server.py      # 监听 0.0.0.0:3337

示例：
    curl -X POST http://localhost:3337/place/run \
         -H "Content-Type: application/json" \
         -d '{"design":"des","tech":"FreePDK45","impl_ver":"cpV1_clkP1_drcV1__g0_p0","g_idx":0,"p_idx":0,"restore_enc":"/path/to/powerplan.enc.dat","force":true}'
"""
from typing import Optional
import subprocess
import pathlib
import datetime
import os
import logging
import sys
import csv
from fastapi import FastAPI
from pydantic import BaseModel

os.environ["PATH"] = (
    "/opt/cadence/innovus221/tools/bin:"
    "/opt/cadence/genus172/bin:" + os.environ.get("PATH", "")
)

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s",
    handlers=[
        logging.FileHandler("/home/yl996/pl_api.log"),
        logging.StreamHandler(sys.stdout),
    ],
)

ROOT = pathlib.Path(__file__).resolve().parent.parent
BACKEND = ROOT / "scripts" / "FreePDK45" / "backend"
LOG_DIR = ROOT / "logs" / "placement"; LOG_DIR.mkdir(parents=True, exist_ok=True)
IMP_CSV = ROOT / "config" / "imp_global.csv"
PLC_CSV = ROOT / "config" / "placement.csv"

class PlReq(BaseModel):
    design:      str
    tech:        str = "FreePDK45"
    impl_ver:    str
    g_idx:       int = 0
    p_idx:       int = 0
    force:       bool = False
    restore_enc: Optional[str] = None
    top_module:  Optional[str] = None

class PlResp(BaseModel):
    status:     str
    log_path:   str
    report:     str


def read_csv_row(path: pathlib.Path, idx: int) -> dict:
    rows = list(csv.DictReader(path.open()))
    if idx >= len(rows):
        raise IndexError(f"{path.name}: row {idx} out of range (total {len(rows)})")
    return rows[idx]


def run(cmd: str, log_file: pathlib.Path, cwd: pathlib.Path, env_extra: dict):
    env = os.environ.copy()
    env.update(env_extra)
    with log_file.open("w") as lf, subprocess.Popen(
        cmd,
        cwd=str(cwd),
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

app = FastAPI(title="MCP · Placement Service")

@app.post("/place/run", response_model=PlResp)
def place_run(req: PlReq):
    des_root = ROOT / "designs" / req.design / req.tech
    impl_dir = des_root / "implementation" / req.impl_ver
    if not impl_dir.exists():
        return PlResp(status="error: implementation dir not found", log_path="", report="")

    if not req.restore_enc:
        return PlResp(status="error: restore_enc not provided", log_path="", report="")
    restore_abs = pathlib.Path(req.restore_enc).resolve()
    if not restore_abs.exists():
        return PlResp(status="error: provided restore_enc not found", log_path="", report="")

    top_name = req.top_module or req.design

    env = {"BASE_DIR": str(ROOT)}
    env.update(read_csv_row(IMP_CSV, req.g_idx))
    env.update(read_csv_row(PLC_CSV, req.p_idx))
    env.setdefault("TOP_NAME",    top_name)
    env.setdefault("FILE_FORMAT", "verilog")

    local_config = impl_dir / "config.tcl"
    if not local_config.exists():
        subprocess.run(["cp", str(ROOT / "config.tcl"), str(local_config)], check=True)

    config_tcl = local_config
    tech_tcl   = ROOT / "scripts" / req.tech / "tech.tcl"
    place_tcl  = BACKEND / "4_place.tcl"
    files_list = [str(config_tcl), str(tech_tcl), str(place_tcl)]
    files_arg = " ".join(files_list)

    exec_cmd = f'restoreDesign "{restore_abs}" {top_name}; '

    innovus_cmd = (
        f'innovus -no_gui -batch '
        f'-execute "{exec_cmd}" '
        f'-files "{files_arg}"'
    )

    ts = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
    log_file = LOG_DIR / f"{req.design}_pl_{ts}.log"

    try:
        run(innovus_cmd, log_file, impl_dir, env)
    except Exception as e:
        return PlResp(status=f"error: {e}", log_path=str(log_file), report="")

    enc_path = impl_dir / "pnr_save" / "placement.enc.dat"
    if not enc_path.exists():
        return PlResp(
            status="error: Placement did not produce placement.enc.dat",
            log_path=str(log_file),
            report=""
        )

    rpt = impl_dir / "pnr_reports" / "check_place.out"
    report_text = rpt.read_text(errors="ignore") if rpt.exists() else "check_place.out not found"

    return PlResp(status="ok", log_path=str(log_file), report=report_text)

if __name__ == "__main__":
    import uvicorn
    uvicorn.run("placement_server:app", host="0.0.0.0", port=3337, reload=False)
