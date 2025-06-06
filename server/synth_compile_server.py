#!/usr/bin/env python3
"""
MCP · Synthesis-Compile Service

Start:
    cd ~/proj/mcp-eda-example
    python3 server/synth_compile_server.py

Test:
    curl -X POST http://localhost:3334/compile/run \
         -H "Content-Type: application/json" \
         -d '{"design":"des","tech":"FreePDK45","version_idx":0,"force":true}'
"""

import subprocess, pathlib, datetime, os
from fastapi import FastAPI
from pydantic import BaseModel

ROOT    = pathlib.Path(__file__).resolve().parent.parent
RUN_SH  = ROOT / "scripts" / "run_synthesis_example.sh"
LOG_DIR = ROOT / "logs" / "compile"
LOG_DIR.mkdir(parents=True, exist_ok=True)

class CompileReq(BaseModel):
    design:      str
    tech:        str = "FreePDK45"
    version_idx: int = 0
    force:       bool = False

class CompileResp(BaseModel):
    status:   str
    log_path: str
    reports:  dict

def run_shell(cmd: str, logfile: pathlib.Path):
    """In the ROOT directory, run `cmd` in bash and redirect both stdout and stderr to `logfile`."""
    with logfile.open("w") as lf:
        proc = subprocess.Popen(
            cmd,
            cwd=str(ROOT),
            shell=True,
            executable="/bin/bash",
            universal_newlines=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            env=os.environ.copy()
        )
        for line in proc.stdout:
            lf.write(line)
        proc.wait()
    if proc.returncode != 0:
        raise RuntimeError(f"Command exit code {proc.returncode}")

app = FastAPI(title="MCP · Synthesis Compile Service")

@app.post("/compile/run", response_model=CompileResp)
def compile_stage(req: CompileReq):
    ts       = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
    log_file = LOG_DIR / f"{req.design}_compile_{ts}.log"

    cmd = f"{RUN_SH} --design {req.design} --version-idx {req.version_idx} --tech {req.tech}"
    if req.force:
        cmd += " -f"

    try:
        run_shell(cmd, log_file)
    except Exception as e:
        return CompileResp(status=f"error: {e}", log_path=str(log_file), reports={})

    synth_root = ROOT / "designs" / req.design / req.tech / "synthesis"
    if not synth_root.exists():
        return CompileResp(status="error: synthesis output not found", log_path=str(log_file), reports={})
    latest_ver = max(synth_root.iterdir(), key=lambda p: p.stat().st_mtime)
    rpt_dir    = latest_ver / "reports"

    reports = {}
    for rpt in ("qor.rpt", "timing.rpt", "area.rpt", "power.rpt"):
        pth = rpt_dir / rpt
        reports[rpt] = pth.read_text() if pth.exists() else f"{rpt} not found"

    return CompileResp(status="ok", log_path=str(log_file), reports=reports)

if __name__ == "__main__":
    import uvicorn
    uvicorn.run("synth_compile_server:app",
                host="0.0.0.0", port=3334, reload=False, log_level="info")