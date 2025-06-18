#!/usr/bin/env python3

from typing import Optional
import subprocess, pathlib, datetime, os, csv, logging, sys, glob, gzip, argparse   
from fastapi import FastAPI
from pydantic import BaseModel

os.environ["PATH"] = (
    "/opt/cadence/innovus221/tools/bin:"
    "/opt/cadence/genus172/bin:"
    + os.environ.get("PATH", "")
)

ROOT      = pathlib.Path(__file__).resolve().parent.parent
LOG_ROOT  = ROOT / "logs"
LOG_ROOT.mkdir(exist_ok=True)
LOG_DIR   = LOG_ROOT / "floorplan"
LOG_DIR.mkdir(parents=True, exist_ok=True)

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s",
    handlers=[
        logging.FileHandler(LOG_ROOT / "fp_api.log"), 
        logging.StreamHandler(sys.stdout),
    ],
)

BACKEND  = ROOT / "scripts" / "FreePDK45" / "backend"
IMP_CSV  = ROOT / "config" / "imp_global.csv"
PLC_CSV  = ROOT / "config" / "placement.csv"

CSV_MAP = {
    "design_flow_effort":  "design_flow_effort",
    "design_power_effort": "design_power_effort",
    "ASPECT_RATIO":        "ASPECT_RATIO",
    "target_util":         "target_util",
}

class FPReq(BaseModel):
    design:      str
    tech:        str = "FreePDK45"
    syn_ver:     str
    g_idx:       int = 0
    p_idx:       int = 0
    force:       bool = False
    top_module:  Optional[str] = None
    restore_enc: Optional[str] = None  

class FPResp(BaseModel):
    status:   str
    log_path: str
    report:   str

def read_csv_row(path: pathlib.Path, idx: int):
    rows = list(csv.DictReader(path.open()))
    if idx >= len(rows):
        raise IndexError(f"{path.name}: row {idx} out of range (total {len(rows)})")
    return rows[idx]

def run(cmd: str, logfile: pathlib.Path, cwd: pathlib.Path, env_extra: dict):
    env = os.environ.copy()
    env.update(env_extra)
    with logfile.open("w") as lf, subprocess.Popen(
        cmd,
        cwd=str(cwd),
        shell=True,
        universal_newlines=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        executable="/bin/bash",
        env=env
    ) as p:
        for line in p.stdout:
            lf.write(line)
        p.wait()
    if p.returncode != 0:
        raise RuntimeError(f"command exit {p.returncode}")

app = FastAPI(title="MCP · Floorplan Service")

@app.post("/floorplan/run", response_model=FPResp)
def floorplan_run(req: FPReq):
    des_root = ROOT / "designs" / req.design / req.tech
    syn_res  = des_root / "synthesis" / req.syn_ver / "results"
    if not syn_res.exists():
        return FPResp(status="error: synthesis results not found", log_path="", report="")

    impl_ver = f"{req.syn_ver}__g{req.g_idx}_p{req.p_idx}"
    impl_dir = des_root / "implementation" / impl_ver
    if impl_dir.exists() and req.force:
        subprocess.run(["rm", "-rf", str(impl_dir)], check=True)
    impl_dir.mkdir(parents=True, exist_ok=True)

    (impl_dir / "pnr_save").mkdir(exist_ok=True)

    top_name = req.top_module or req.design

    restore_arg = ""
    if req.restore_enc:
        restore_abs = pathlib.Path(req.restore_enc).resolve()
        if not restore_abs.exists():
            return FPResp(status="error: provided restore_enc not found", log_path="", report="")
        restore_arg = f'restoreDesign "{restore_abs}" {top_name}; '

    env = {
        "BASE_DIR":    str(ROOT),
        "NETLIST_DIR": str(syn_res),
        "TOP_NAME":    top_name,
        "FILE_FORMAT": "verilog",
    }
    env.update({CSV_MAP[k]: v for k, v in read_csv_row(IMP_CSV, req.g_idx).items() if k in CSV_MAP})
    env.update({CSV_MAP[k]: v for k, v in read_csv_row(PLC_CSV, req.p_idx).items() if k in CSV_MAP})

    local_config = impl_dir / "config.tcl"
    if not local_config.exists():
        subprocess.run(["cp", str(ROOT / "config.tcl"), str(local_config)], check=True)

    config_tcl    = local_config
    tech_tcl      = ROOT / "scripts" / req.tech / "tech.tcl"
    setup_tcl     = BACKEND / "1_setup.tcl"
    floorplan_tcl = BACKEND / "2_floorplan.tcl"

    files_list = [
        str(config_tcl),
        str(tech_tcl),
        str(setup_tcl),
        str(floorplan_tcl),
    ]
    files_arg = " ".join(files_list)

    # TODO: modify clock_name and clock_period to be user input (they are design dependent)
    clock_name = "clk"
    clock_period = "1."

    exec_cmd = (
        f'set NETLIST_DIR "{syn_res}"; '
        f'set TOP_NAME "{top_name}"; '
        f'set FILE_FORMAT "verilog"; '
        f'set CLOCK_NAME "{clock_name}"; '
        f'set clk_period {clock_period}; '
    )

    innovus_cmd = (
        f'innovus -no_gui -batch '
        f'-execute \'{exec_cmd}\' '
        f'-files "{files_arg}"'
    )

    ts       = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
    log_file = LOG_DIR / f"{req.design}_fp_{ts}.log"

    try:
        run(innovus_cmd, log_file, impl_dir, env)
    except Exception as e:
        return FPResp(status=f"error: {e}", log_path=str(log_file), report="")

    rpt_dir    = impl_dir / "pnr_reports"
    candidates = glob.glob(str(rpt_dir / "floorplan_summary.rpt*"))
    if candidates:
        rpt_file = pathlib.Path(candidates[0])
        rpt_text = (
            gzip.open(rpt_file, "rt").read()
            if rpt_file.suffix == ".gz"
            else rpt_file.read_text()
        )
    else:
        rpt_text = "floorplan_summary.rpt(.gz) not found"

    enc_path = impl_dir / "pnr_save" / "floorplan.enc.dat"
    if not enc_path.exists():
        return FPResp(
            status="error: Floorplan did not produce floorplan.enc.dat",
            log_path=str(log_file),
            report=rpt_text
        )

    return FPResp(status="ok", log_path=str(log_file), report=rpt_text)


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--port",
        type=int,
        default=int(os.getenv("FLOORPLAN_PORT", 13335)),
        help="listen port (env FLOORPLAN_PORT overrides; default 13335)",
    )
    args = parser.parse_args()

    import uvicorn
    uvicorn.run(
        "floorplan_server:app",
        host="0.0.0.0",
        port=args.port,
        reload=False,
    )
