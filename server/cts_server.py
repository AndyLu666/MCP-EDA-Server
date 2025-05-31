#!/usr/bin/env python3
"""
MCP · Clock-Tree Synthesis Service
---------------------------------

Start:
    cd ~/proj/mcp-eda-example
    python3 server/cts_server.py      # 0.0.0.0:3338

Example:
    curl -X POST http://localhost:3338/cts/run \
         -H "Content-Type: application/json" \
         -d '{"design":"des","tech":"FreePDK45","impl_ver":"cpV1_clkP1_drcV1__g0_p0","g_idx":0,"c_idx":0,"force":true}'
"""
from typing import Optional
import subprocess
import pathlib
import datetime
import os
import logging
import sys
import glob
import gzip
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
        logging.FileHandler("/home/yl996/cts_api.log"),
        logging.StreamHandler(sys.stdout),
    ],
)

ROOT     = pathlib.Path(__file__).resolve().parent.parent
BACKEND  = ROOT / "scripts" / "FreePDK45" / "backend"
LOG_DIR  = ROOT / "logs" / "cts"; LOG_DIR.mkdir(parents=True, exist_ok=True)
IMP_CSV  = ROOT / "config" / "imp_global.csv"
CTS_CSV  = ROOT / "config" / "cts.csv"

MANUAL_ENV = {
    "CLKBUF_CELLS": "CLKBUF_X1 CLKBUF_X2 CLKBUF_X3 CLKBUF_X4 CLKBUF_X8",
    "CLKGT_CELLS":  "CLKGT_X1 CLKGT_X2",
}

class CtsReq(BaseModel):
    design:     str
    tech:       str = "FreePDK45"
    impl_ver:   str
    g_idx:      int = 0
    c_idx:      int = 0
    force:      bool = False
    top_module: Optional[str] = None

class CtsResp(BaseModel):
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
    with log_file.open("w") as lf:
        proc = subprocess.Popen(
            cmd, cwd=cwd, shell=True, universal_newlines=True,
            stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
            executable="/bin/bash", env=env
        )
        for line in proc.stdout:
            lf.write(line)
        proc.wait()
    if proc.returncode != 0:
        raise RuntimeError(f"command exited {proc.returncode}")

# ────────────────── FastAPI ──────────────────
app = FastAPI(title="MCP · CTS Service")

@app.post("/cts/run", response_model=CtsResp)
def cts_run(req: CtsReq):
    des_root = ROOT / "designs" / req.design / req.tech
    impl_dir = des_root / "implementation" / req.impl_ver
    if not impl_dir.exists():
        return CtsResp(status="error: implementation dir not found", log_path="", report="")

    enc_dat = impl_dir / "pnr_save" / "floorplan.enc.dat"
    if not enc_dat.exists():
        return CtsResp(status="error: floorplan.enc.dat not found", log_path="", report="")

    rpt_dir   = impl_dir / "pnr_reports"
    cts_rpt   = rpt_dir / "cts_summary.rpt"
    extra_rpt = rpt_dir / "postcts_opt_max_density.rpt"

    if req.force:
        for rpt in (cts_rpt, extra_rpt):
            if rpt.exists():
                rpt.unlink()

    cfg_path = ROOT / "designs" / req.design / "config.tcl"
    if req.top_module:
        top = req.top_module
    else:
        parsed = parse_top_from_config(cfg_path)
        top = parsed or req.design

    env = {"BASE_DIR": str(ROOT)}
    env.update(read_csv_row(IMP_CSV, req.g_idx))
    env.update(read_csv_row(CTS_CSV, req.c_idx))
    env.update(MANUAL_ENV)
    env.setdefault("TOP_NAME",    top)
    env.setdefault("FILE_FORMAT", "verilog")

    config_tcl = ROOT / "config.tcl"
    tech_tcl   = ROOT / "scripts" / req.tech / "tech.tcl"
    cts_tcl    = BACKEND / "5_cts.tcl"

    scripts = [
        str(config_tcl),
        str(tech_tcl),
        str(cts_tcl),
    ]
    files_arg = " ".join(scripts)

    exec_cmd = (
        f'source "{scripts[0]}"; '
        f'source "{scripts[1]}"; '
        f'restoreDesign "{enc_dat}" {top}; '
        f'source "{scripts[2]}"; '
        'report_cts > pnr_reports/cts_summary.rpt'
    )
    innovus_cmd = (
        "innovus -no_gui -batch "
        f'-execute "{exec_cmd}" '
        f'-files "{files_arg}"'
    )

    ts       = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
    log_file = LOG_DIR / f"{req.design}_cts_{ts}.log"

    try:
        run(innovus_cmd, log_file, impl_dir, env)
    except Exception as e:
        return CtsResp(status=f"error: {e}", log_path=str(log_file), report="")

    report_text = "cts_summary.rpt(.gz) not found"
    if cts_rpt.exists():
        report_text = cts_rpt.read_text()
    elif extra_rpt.exists():
        report_text = extra_rpt.read_text()
    else:
        for cand in glob.glob(str(rpt_dir / "*.rpt*")):
            p = pathlib.Path(cand)
            if p.suffix == ".gz":
                with gzip.open(p, "rt") as f:
                    report_text = f.read()
            else:
                report_text = p.read_text()
            break

    return CtsResp(status="ok", log_path=str(log_file), report=report_text)

if __name__ == "__main__":
    import uvicorn
    uvicorn.run("cts_server:app", host="0.0.0.0", port=3338, reload=False)
