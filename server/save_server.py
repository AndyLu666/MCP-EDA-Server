#!/usr/bin/env python3
"""
MCP · Design Packaging / Save Service

启动:
    cd ~/proj/mcp-eda-example
    python3 server/save_server.py        # -> 0.0.0.0:3340

POST  /save/run
    {
      "design"   : "des",
      "tech"     : "FreePDK45",
      "impl_ver" : "cpV1_clkP1_drcV1__g0_p0",
      "archive"  : true,        # 生成 tar.gz
      "force"    : false
    }
"""

import datetime
import gzip
import logging
import os
import pathlib
import subprocess
import sys
import tarfile

from typing import Dict, Optional

from fastapi import FastAPI
from pydantic import BaseModel

os.environ["PATH"] = (
    "/opt/cadence/innovus221/tools/bin:"
    "/opt/cadence/genus172/bin:"
    + os.environ.get("PATH", "")
)
logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s",
    handlers=[
        logging.FileHandler("/home/yl996/save_api.log"),
        logging.StreamHandler(sys.stdout),
    ],
)

ROOT      = pathlib.Path(__file__).resolve().parent.parent
BACKEND   = ROOT / "scripts" / "FreePDK45" / "backend"
LOG_DIR   = ROOT / "logs" / "save"; LOG_DIR.mkdir(parents=True, exist_ok=True)

SAVE_TCL  = BACKEND / "8_save_design.tcl"
ARTIFACTS = [
    "gds", "def", "lef", "spef", "sdc",
    "verilog", "sdf", "emp", "enc.dat"
]

class SaveReq(BaseModel):
    design:     str
    tech:       str = "FreePDK45"
    impl_ver:   str
    archive:    bool = True
    force:      bool = False
    top_module: Optional[str] = None

class SaveResp(BaseModel):
    status:    str
    log_path:  str
    artifacts: Dict[str, str]
    tarball:   Optional[str] = None

def run(cmd: str, logfile: pathlib.Path, cwd: pathlib.Path):
    with logfile.open("w") as lf:
        p = subprocess.Popen(
            cmd, cwd=cwd, shell=True, universal_newlines=True,
            stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
            executable="/bin/bash"
        )
        for line in p.stdout:
            lf.write(line)
        p.wait()
    if p.returncode != 0:
        raise RuntimeError("command exit %d" % p.returncode)

# ──────────── FastAPI ────────────
app = FastAPI(title="MCP · Save Service")

@app.post("/save/run", response_model=SaveResp)
def save_run(req: SaveReq):
    impl_dir = ROOT / "designs" / req.design / req.tech / "implementation" / req.impl_ver
    if not impl_dir.exists():
        return SaveResp(status="error: implementation dir not found", log_path="", artifacts={})

    route_enc = impl_dir / "pnr_save" / "route.enc.dat"
    if not route_enc.exists():
        return SaveResp(status="error: route.enc.dat not found", log_path="", artifacts={})

    config_tcl = ROOT / "config.tcl"
    tech_tcl   = ROOT / "scripts" / req.tech / "tech.tcl"
    files_arg  = "{} {} {}".format(config_tcl, tech_tcl, SAVE_TCL)

    top = req.top_module if req.top_module else req.design
    exec_cmd = 'restoreDesign "{}" {}; source "{}"'.format(route_enc, top, SAVE_TCL)

    innovus_cmd = 'innovus -no_gui -batch -execute "{}" -files "{}"'.format(exec_cmd, files_arg)

    ts = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
    log_file = LOG_DIR / "{}_save_{}.log".format(req.design, ts)

    try:
        run(innovus_cmd, log_file, impl_dir)
    except Exception as e:
        return SaveResp(status="error: %s" % e, log_path=str(log_file), artifacts={})

    out_dir = impl_dir / "pnr_out"
    artifacts = {}
    for ext in ARTIFACTS:
        matches = list(out_dir.glob("*.{}".format(ext)))
        artifacts[ext] = str(matches[0]) if matches else "not found"

    tar_path = None
    if req.archive:
        deliver_dir = ROOT / "deliverables"; deliver_dir.mkdir(exist_ok=True)
        tar_path = deliver_dir / "{}_{}_{}.tgz".format(req.design, req.impl_ver, ts)
        with tarfile.open(str(tar_path), "w:gz") as tar:
            for fp in artifacts.values():
                if fp != "not found":
                    tar.add(fp, arcname=pathlib.Path(fp).name)
        logging.info("Tarball created: %s", tar_path)

    return SaveResp(
        status="ok",
        log_path=str(log_file),
        artifacts=artifacts,
        tarball=str(tar_path) if tar_path else None,
    )

if __name__ == "__main__":
    import uvicorn
    uvicorn.run("save_server:app", host="0.0.0.0", port=3340, reload=False)