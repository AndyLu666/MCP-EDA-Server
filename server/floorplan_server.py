#!/usr/bin/env python3
"""
REST service that runs the Innovus backend flow
(1_setup.tcl → 2_floorplan.tcl) with optional restoreDesign.

POST  /floorplan/run
"""

from typing import Optional
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
from pydantic import BaseModel

# ─────── 环境及日志初始化 ───────
# 确保 Innovus v21+ 的二进制目录在 PATH 前面
os.environ["PATH"] = (
    "/opt/cadence/innovus221/tools/bin:"
    "/opt/cadence/genus172/bin:"
    + os.environ.get("PATH", "")
)

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s",
    handlers=[
        logging.FileHandler("/home/yl996/fp_api.log"),
        logging.StreamHandler(sys.stdout),
    ],
)

# 根目录、后端 Tcl 脚本目录、日志目录
ROOT    = pathlib.Path(__file__).resolve().parent.parent
BACKEND = ROOT / "scripts" / "FreePDK45" / "backend"
LOG_DIR = ROOT / "logs" / "floorplan"
LOG_DIR.mkdir(parents=True, exist_ok=True)

# CSV 配置文件路径
IMP_CSV = ROOT / "config" / "imp_global.csv"
PLC_CSV = ROOT / "config" / "placement.csv"

# CSV 列名到环境变量名的映射
CSV_MAP = {
    "design_flow_effort":  "design_flow_effort",
    "design_power_effort": "design_power_effort",
    "ASPECT_RATIO":        "ASPECT_RATIO",
    "target_util":         "target_util",
}

# ─────── 请求与返回模型 ───────
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

# ─────── 辅助函数 ───────
def read_csv_row(path: pathlib.Path, idx: int):
    """从 CSV 中读取第 idx 行，返回一个字典。"""
    rows = list(csv.DictReader(path.open()))
    if idx >= len(rows):
        raise IndexError(f"{path.name}: row {idx} out of range (total {len(rows)})")
    return rows[idx]

def run(cmd: str, logfile: pathlib.Path, cwd: pathlib.Path, env_extra: dict):
    """
    在 cwd 下用额外环境变量 env_extra 执行 cmd，将 stdout/stderr 写入 logfile。
    如果命令返回非零，就抛出 RuntimeError。
    """
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

# ─────── FastAPI 主程序 ───────
app = FastAPI(title="MCP · Floorplan Service")


@app.post("/floorplan/run", response_model=FPResp)
def floorplan_run(req: FPReq):
    # 1) 校验合成结果目录是否存在
    des_root = ROOT / "designs" / req.design / req.tech
    syn_res  = des_root / "synthesis" / req.syn_ver / "results"
    if not syn_res.exists():
        return FPResp(status="error: synthesis results not found", log_path="", report="")

    # 2) 构造 implementation 目录（如果存在且 force=True，则先删除再建）
    impl_ver = f"{req.syn_ver}__g{req.g_idx}_p{req.p_idx}"
    impl_dir = des_root / "implementation" / impl_ver
    if impl_dir.exists() and req.force:
        subprocess.run(["rm", "-rf", str(impl_dir)], check=True)
    impl_dir.mkdir(parents=True, exist_ok=True)

    # 在宿主（文件系统）先创建 pnr_save 目录
    (impl_dir / "pnr_save").mkdir(exist_ok=True)

    # 3) 确定 TOP_NAME。优先使用请求中传来的 top_module，否则直接用 design 名称
    top_name = req.top_module or req.design

    # 4) 如果传入 restore_enc，则校验该文件是否存在，并构造 restoreDesign 命令
    restore_arg = ""
    if req.restore_enc:
        restore_abs = pathlib.Path(req.restore_enc).resolve()
        if not restore_abs.exists():
            return FPResp(status="error: provided restore_enc not found", log_path="", report="")
        # 直接在 -execute 中使用绝对路径恢复
        restore_arg = f'restoreDesign "{restore_abs}" {top_name}; '

    # 5) 构造 Innovus 需要的环境变量（均为绝对路径）
    env = {
        "BASE_DIR":    str(ROOT),
        "NETLIST_DIR": str(syn_res),
        "TOP_NAME":    top_name,
        "FILE_FORMAT": "verilog",
    }
    # 5.1) 从 imp_global.csv 里取 g_idx 对应行
    env.update({CSV_MAP[k]: v for k, v in read_csv_row(IMP_CSV, req.g_idx).items() if k in CSV_MAP})
    # 5.2) 从 placement.csv 里取 p_idx 对应行
    env.update({CSV_MAP[k]: v for k, v in read_csv_row(PLC_CSV, req.p_idx).items() if k in CSV_MAP})

    # 6) 为了让 -files 能正确 source config.tcl，需要把主目录下的 config.tcl 复制到 impl_dir
    local_config = impl_dir / "config.tcl"
    if not local_config.exists():
        subprocess.run(["cp", str(ROOT / "config.tcl"), str(local_config)], check=True)

    # 7) 收集所有要通过 -files 传给 Innovus 的 Tcl 脚本
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

    # 8) 构造 -execute 字符串，只负责在加载 Tcl 脚本之前设置必要变量
    # （真正的 floorplan 保存由 2_floorplan.tcl 在内部完成）
    exec_cmd = (
        f'set NETLIST_DIR "{syn_res}"; '
        f'set TOP_NAME "{top_name}"; '
        f'{restore_arg}'
    )

    # 9) 最终的 Innovus 调用：-execute <exec_cmd> 先执行上面这几句，然后 -files <files_arg>
    innovus_cmd = (
        f'innovus -no_gui -batch '
        f'-execute "{exec_cmd}" '
        f'-files "{files_arg}"'
    )

    # 10) 准备日志文件
    ts       = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
    log_file = LOG_DIR / f"{req.design}_fp_{ts}.log"

    # 11) 在 impl_dir 下执行 Innovus
    try:
        run(innovus_cmd, log_file, impl_dir, env)
    except Exception as e:
        return FPResp(status=f"error: {e}", log_path=str(log_file), report="")

    # 12) floorplan_summary.rpt 报告（可选）
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

    # 13) 检查最终是否生成 floorplan.enc.dat
    enc_path = impl_dir / "pnr_save" / "floorplan.enc.dat"
    if not enc_path.exists():
        return FPResp(
            status="error: Floorplan did not produce floorplan.enc.dat",
            log_path=str(log_file),
            report=rpt_text
        )

    return FPResp(status="ok", log_path=str(log_file), report=rpt_text)


if __name__ == "__main__":
    import uvicorn
    uvicorn.run("floorplan_server:app",
                host="0.0.0.0", port=3335, reload=False)