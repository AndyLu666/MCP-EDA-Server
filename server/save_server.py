#!/usr/bin/env python3
"""
MCP · Design Packaging / Save Service

Start:
    cd ~/proj/mcp-eda-example
    python3 server/save_server.py        # -> 0.0.0.0:3340

POST  /save/run
    {
      "design"   : "des",
      "tech"     : "FreePDK45",
      "impl_ver" : "cpV1_clkP1_drcV1__g0_p0",
      "archive"  : true,        # generate tar.gz
      "force"    : false
    }
"""
# ────────────────────────────── imports ──────────────────────────────
import datetime, gzip, logging, os, pathlib, subprocess, sys, tarfile, tempfile
from typing import List, Dict, Optional

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
        raise RuntimeError(f"command exit {p.returncode}")

# ──────────── FastAPI ────────────
app = FastAPI(title="MCP · Save Service")

@app.post("/save/run", response_model=SaveResp)
def save_run(req: SaveReq):
    impl_dir = ROOT / "designs" / req.design / req.tech / "implementation" / req.impl_ver
    if not impl_dir.exists():
        return SaveResp(status="error: implementation dir not found", log_path="", artifacts={})

    chk = list((impl_dir/"pnr_save").glob("*.enc.dat"))
    if not chk:
        return SaveResp(status="error: no .enc.dat (run placement/route first)", log_path="", artifacts={})

    config_tcl = ROOT / "config.tcl"
    tech_tcl   = ROOT / "scripts" / req.tech / "tech.tcl"
    files_arg  = f'{config_tcl} {tech_tcl} {SAVE_TCL}'

    exec_cmd = f'source "{config_tcl}"; source "{tech_tcl}"; ' \
               f'restoreDesign "{chk[0]}" {req.top_module or req.design}; ' \
               f'source "{SAVE_TCL}"'

    innovus_cmd = f'innovus -no_gui -batch -execute "{exec_cmd}" -files "{files_arg}"'

    ts = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
    log_file = LOG_DIR / f"{req.design}_save_{ts}.log"

    try:
        run(innovus_cmd, log_file, impl_dir)
    except Exception as e:
        return SaveResp(status=f"error: {e}", log_path=str(log_file), artifacts={})

    out_dir = impl_dir / "pnr_out"
    artifacts = {}
    for ext in ARTIFACTS:
        globbed = list(out_dir.glob(f"*.{ext}"))
        artifacts[ext] = str(globbed[0]) if globbed else "not found"

    tar_path = None
    if req.archive:
        tar_path = ROOT / "deliverables" ; tar_path.mkdir(exist_ok=True)
        tar_path = tar_path / f"{req.design}_{req.impl_ver}_{ts}.tgz"
        with tarfile.open(tar_path, "w:gz") as tar:
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
