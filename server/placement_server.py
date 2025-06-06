#!/usr/bin/env python3
"""
MCP · Placement Service (global + detail placement & pre-CTS optimization)

启动：
    cd ~/proj/mcp-eda-example
    python3 server/placement_server.py      # 监听 0.0.0.0:3337

示例：
    curl -X POST http://localhost:3337/place/run \
         -H "Content-Type: application/json" \
         -d '{"design":"des","tech":"FreePDK45","impl_ver":"cpV1_clkP1_drcV1__g0_p0","g_idx":0,"p_idx":0,"force":true,"top_module":"des3","restore_enc":"<path_to_powerplan_enc>"}'
"""
from typing import Optional
import subprocess, pathlib, datetime, os, logging, sys, csv
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

ROOT     = pathlib.Path(__file__).resolve().parent.parent
BACKEND  = ROOT / "scripts" / "FreePDK45" / "backend"
LOG_DIR  = ROOT / "logs" / "placement"; LOG_DIR.mkdir(parents=True, exist_ok=True)
IMP_CSV  = ROOT / "config" / "imp_global.csv"
PLC_CSV  = ROOT / "config" / "placement.csv"

class PlReq(BaseModel):
    design:      str
    tech:        str = "FreePDK45"
    impl_ver:    str
    g_idx:       int = 0
    p_idx:       int = 0
    force:       bool = False
    top_module:  Optional[str] = None
    restore_enc: str  

class PlResp(BaseModel):
    status:     str
    log_path:   str
    report:     str

def read_csv_row(path: pathlib.Path, idx: int) -> dict:
    rows = list(csv.DictReader(path.open()))
    if idx >= len(rows):
        raise IndexError(f"{path.name}: row {idx} out of range (total {len(rows)})")
    return rows[idx]

def parse_top_from_config(cfg: pathlib.Path) -> str:
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

# ────────────────── FastAPI App ──────────────────
app = FastAPI(title="MCP · Placement Service")

@app.post("/place/run", response_model=PlResp)
def place_run(req: PlReq):
    des_root = ROOT / "designs" / req.design / req.tech
    impl_dir = des_root / "implementation" / req.impl_ver
    if not impl_dir.exists():
        return PlResp(status="error: implementation dir not found", log_path="", report="")

    powerplan_enc = pathlib.Path(req.restore_enc)
    if not powerplan_enc.exists():
        return PlResp(status="error: powerplan.enc.dat not found", log_path="", report="")

    rpt_dir = impl_dir / "pnr_reports"
    if req.force:
        for rpt in ("check_place.out",):
            p = rpt_dir / rpt
            if p.exists():
                p.unlink()

    cfg_path = ROOT / "designs" / req.design / "config.tcl"
    if req.top_module:
        top = req.top_module
    else:
        parsed = parse_top_from_config(cfg_path)
        top = parsed if parsed else req.design

    env = {"BASE_DIR": str(ROOT)}
    env.update(read_csv_row(IMP_CSV, req.g_idx))
    env.update(read_csv_row(PLC_CSV, req.p_idx))
    env.setdefault("TOP_NAME",    top)
    env.setdefault("FILE_FORMAT", "verilog")

    tech_tcl     = ROOT / "scripts" / req.tech / "tech.tcl"
    place_tcl    = BACKEND / "4_place.tcl"
    scripts = [
        str(tech_tcl),
        str(place_tcl),
    ]
    files_arg = " ".join(scripts)

    exec_cmd = (
        f'restoreDesign "{powerplan_enc.resolve()}" {top}; '
        f'source "{place_tcl}"; '
        f'saveDesign pnr_save/placement.enc.dat; '
        f'report_placement > pnr_reports/check_place.out'
    )
    innovus_cmd = (
        f'innovus -no_gui -batch '
        f'-files "{files_arg}" '
        f'-execute "{exec_cmd}"'
    )

    ts = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
    log_file = LOG_DIR / f"{req.design}_pl_{ts}.log"

    try:
        run(innovus_cmd, log_file, impl_dir, env)
    except Exception as e:
        return PlResp(status=f"error: {e}", log_path=str(log_file), report="")

    report_file = rpt_dir / "check_place.out"
    if report_file.exists():
        report_text = report_file.read_text()
    else:
        report_text = "check_place.out not found"

    return PlResp(status="ok", log_path=str(log_file), report=report_text)

if __name__ == "__main__":
    import uvicorn
    uvicorn.run("placement_server:app", host="0.0.0.0", port=3337, reload=False)