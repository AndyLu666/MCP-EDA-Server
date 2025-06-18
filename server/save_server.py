#!/usr/bin/env python3
"""
MCP · Design Packaging / Save Service
"""
import datetime
import logging
import os
import pathlib
import subprocess
import sys
import tarfile
import argparse
from typing import Dict, Optional

from fastapi import FastAPI
from pydantic import BaseModel

os.environ["PATH"] = (
    "/opt/cadence/innovus221/tools/bin:"
    "/opt/cadence/genus172/bin:" + os.environ.get("PATH", "")
)

ROOT      = pathlib.Path(__file__).resolve().parent.parent
LOG_ROOT  = ROOT / "logs";  LOG_ROOT.mkdir(exist_ok=True)
LOG_DIR   = LOG_ROOT / "save"; LOG_DIR.mkdir(parents=True, exist_ok=True)

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname).1s] %(message)s",
    handlers=[
        logging.FileHandler(LOG_ROOT / "save_api.log"),
        logging.StreamHandler(sys.stdout),
    ],
)

BACKEND   = ROOT / "scripts" / "FreePDK45" / "backend"
SAVE_TCL  = BACKEND / "8_save_design.tcl"

ART_PATTERNS = [
    ("gds",      ["*.gds", "*.gds.gz"]),
    ("def",      ["*.def"]),
    ("lef",      ["*.lef"]),
    ("spef",     ["*.spef", "*.spef.gz"]),
    # ("sdc",      ["*.sdc"]),
    ("verilog",  ["*.v", "*.verilog"]),
    # ("sdf",      ["*.sdf"]),
    # ("emp",      ["*.emp"]),
    # ("enc.dat",  ["*.enc.dat"]),
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
    with logfile.open("w") as lf, subprocess.Popen(
        cmd,
        cwd=str(cwd),
        shell=True,
        universal_newlines=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        executable="/bin/bash",
    ) as p:
        for line in p.stdout:
            lf.write(line)
        p.wait()
    if p.returncode != 0:
        raise RuntimeError("command exit %d" % p.returncode)

def locate_route_enc(pnr_save: pathlib.Path) -> Optional[pathlib.Path]:
    for name in (
        "route_opt.enc.dat",
        "detail_route.enc.dat",
        "route.enc.dat",         
    ):
        fp = pnr_save / name
        if fp.exists():
            return fp
    return None

app = FastAPI(title="MCP · Save Service")

@app.post("/save/run", response_model=SaveResp)
def save_run(req: SaveReq):
    impl_dir = (
        ROOT / "designs" / req.design / req.tech / "implementation" / req.impl_ver
    )
    if not impl_dir.exists():
        return SaveResp(
            status="error: implementation dir not found",
            log_path="",
            artifacts={},
        )

    pnr_save = impl_dir / "pnr_save"
    route_enc = locate_route_enc(pnr_save)
    if route_enc is None:
        return SaveResp(
            status="error: route_opt/detail_route/route.enc.dat not found",
            log_path="",
            artifacts={},
        )

    top = req.top_module or req.design

    exec_cmd = (
        f'set env(TOP_NAME) "{top}"; '          # ← 新增：给 Tcl 的 env 数组赋值
        f'restoreDesign "{route_enc}" {top}; '  # 末尾要加分号
        f'source "{SAVE_TCL}"'                  # 继续执行 save_design.tcl
    )

    innovus_cmd = (
        f'innovus -no_gui -batch '
        f'-execute "{exec_cmd}" '
        f'-files "{SAVE_TCL}"'                  # 只要 8_save_design.tcl 就够
    )

    ts       = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
    log_file = LOG_DIR / f"{req.design}_save_{ts}.log"

    try:
        run(innovus_cmd, log_file, impl_dir)
    except Exception as e:
        return SaveResp(status=f"error: {e}", log_path=str(log_file), artifacts={})

    out_dir   = impl_dir / "pnr_out"
    artifacts: Dict[str, str] = {}
    for key, patterns in ART_PATTERNS:
        hit = "not found"
        for pat in patterns:
            hits = list(out_dir.glob(pat))
            if hits:
                hit = str(hits[0])
                break
        artifacts[key] = hit

    tar_path = None
    if req.archive:
        deliver_dir = ROOT / "deliverables"; deliver_dir.mkdir(exist_ok=True)
        tar_path = deliver_dir / f"{req.design}_{req.impl_ver}_{ts}.tgz"
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
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--port",
        type=int,
        default=int(os.getenv("SAVE_PORT", 13440)),
        help="listen port (env SAVE_PORT overrides; default 13440)",
    )
    args = parser.parse_args()

    import uvicorn
    uvicorn.run(
        "save_server:app",
        host="0.0.0.0",
        port=args.port,
        reload=False,
    )
