#!/usr/bin/env python3
"""
MCP · Clock-Tree Synthesis Service (port 3338)
----------------------------------------------

REST  /cts/run  →  Innovus 5_cts.tcl

调用示例:
    curl -X POST http://localhost:3338/cts/run \
         -H "Content-Type: application/json" \
         -d '{"design":"des","tech":"FreePDK45","impl_ver":"cpV1_clkP1_drcV1__g0_p0","g_idx":0,"c_idx":0,"force":true}'
"""
from typing import Optional, Dict
import subprocess, pathlib, datetime, os, logging, sys, csv, glob, gzip
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
        logging.FileHandler("/home/yl996/cts_api.log"),
        logging.StreamHandler(sys.stdout),
    ],
)

ROOT     = pathlib.Path(__file__).resolve().parent.parent
BACKEND  = ROOT / "scripts" / "FreePDK45" / "backend"
LOG_DIR  = ROOT / "logs" / "cts"; LOG_DIR.mkdir(parents=True, exist_ok=True)
IMP_CSV  = ROOT / "config" / "imp_global.csv"
CTS_CSV  = ROOT / "config" / "cts.csv"

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

def read_csv_row(path: pathlib.Path, idx: int) -> Dict[str,str]:
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

def run(cmd: str, log_file: pathlib.Path, cwd: pathlib.Path, env_extra: Dict[str,str]):
    env = os.environ.copy()
    env.update(env_extra)
    logging.info("launch Innovus → %s", cmd)
    with log_file.open("w") as lf, subprocess.Popen(
        cmd,
        cwd=str(cwd),
        shell=True,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        executable="/bin/bash",
        env=env,
        bufsize=1
    ) as p:
        for line in iter(p.stdout.readline, ""):
            lf.write(line)
        p.wait()
    if p.returncode != 0:
        raise RuntimeError(f"Innovus exited with code {p.returncode}")

# ──────────── FastAPI 应用 ────────────
app = FastAPI(title="MCP · CTS Service")

@app.post("/cts/run", response_model=CtsResp)
def cts_run(req: CtsReq):
    des_root = ROOT / "designs" / req.design / req.tech
    impl_dir = des_root / "implementation" / req.impl_ver
    if not impl_dir.exists():
        return CtsResp(status="error: implementation dir not found", log_path="", report="")

    pnr_save = impl_dir / "pnr_save"
    enc_candidates = [
        pnr_save / "place.enc.dat",
        pnr_save / "powerplan.enc.dat",
        pnr_save / "floorplan.enc.dat",
    ]
    enc_dat = next((p for p in enc_candidates if p.exists()), None)
    if enc_dat is None:
        return CtsResp(status="error: no previous .enc.dat found", log_path="", report="")

    rpt_dir  = impl_dir / "pnr_reports"
    rpt_dir.mkdir(exist_ok=True)
    rpt_file = rpt_dir / "cts_summary.rpt"

    if req.force:
        rpt_file.unlink(missing_ok=True)
        (pnr_save / "cts.enc.dat").unlink(missing_ok=True)

    cfg_tcl  = ROOT / "designs" / req.design / "config.tcl"
    top      = req.top_module or parse_top_from_config(cfg_tcl) or req.design

    env: Dict[str,str] = {
        "BASE_DIR":   str(ROOT),
        "TOP_NAME":   top,
        "FILE_FORMAT":"verilog",
    }
    env.update(read_csv_row(IMP_CSV, req.g_idx))
    env.update(read_csv_row(CTS_CSV, req.c_idx))

    tech_tcl = ROOT / "scripts" / req.tech / "tech.tcl"
    cts_tcl  = BACKEND / "5_cts.tcl"

    files_arg = f"{tech_tcl} {cts_tcl}"

    exec_cmd = (
        f'restoreDesign "{enc_dat}" "{top}"; '
        'saveDesign pnr_save/cts.enc.dat; '
        f'report_ccopt_summary > {rpt_file}'
    )

    innovus_cmd = (
        "innovus -no_gui -batch "
        f'-execute "{exec_cmd}" '
        f'-files "{files_arg}"'
    )

    log_file = LOG_DIR / f"{req.design}_cts_{datetime.datetime.now():%Y%m%d_%H%M%S}.log"
    try:
        run(innovus_cmd, log_file, impl_dir, env)
    except Exception as e:
        return CtsResp(status=f"error: {e}", log_path=str(log_file), report="")

    if rpt_file.exists():
        report_text = rpt_file.read_text()
    else:
        report_text = "cts_summary.rpt(.gz) not found"
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
