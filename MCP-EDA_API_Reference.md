# MCP‑EDA Service — Narrative API Overview

## What the Platform Exposes

The platform consists of **seven small, single-purpose HTTP microservices** that drive the end-to-end RTL-to-GDS flow. Each service wraps a tool script (e.g., Synopsys Design Compiler or Cadence Innovus) and listens on its own port.

| Stage                    | Service Script(s)                                               | Port(s)     |
|--------------------------|------------------------------------------------------------------|-------------|
| Synthesis                | `setup_server.py`, `compile_server.py`                          | 13333, 13334  |
| Physical Implementation  | `floorplan_server.py`, `powerplan_server.py`, `placement_server.py`, `cts_server.py`, `route_server.py`, `save_server.py` | 13335–13440   |

---

## 1. Common Request Fields

All endpoints accept the following fields:

- `design` — logical design name (e.g., `"des"`). **Required**
- `tech` — target technology directory under `scripts/`; default: **FreePDK45**
- `force` — set to `true` to force the stage to re-run even if artifacts already exist

> All parameters are passed to underlying TCL scripts via environment variables.

---

## 2. Endpoint Responsibilities & Accepted Parameters

### `/setup/run` (Port 13333) – DC setup

Initializes Synopsys Design Compiler, loads libraries, applies constraints.

| Field           | Type    | Description                                      |
|------------------|---------|--------------------------------------------------|
| `clock_period`   | float   | Target clock period in ns                        |
| `compile_effort` | string  | Compile mode: `compile`, `compile_ultra`, `incremental` |
| `lint_only`      | bool    | Run lint & constraint checks only               |

---

### `/compile/run` (Port 13334) – DC compile

Maps RTL to gates, returns timing/area/power reports and a synthesis version `syn_ver`.

| Field            | Type    | Description                           |
|------------------|---------|---------------------------------------|
| `clock_period`   | float   | Optional override of setup value      |
| `max_fanout`     | int     | Maximum net fan-out                   |
| `max_transition` | float   | Max cell output transition (ns)       |
| `power_effort`   | string  | `low`, `medium`, `high`               |

---

### `/floorplan/run` (Port 13335) – Innovus floorplan

Creates die outline, IO ring, macro rows; generates `impl_ver`.

| Field          | Type    | Description                             |
|----------------|---------|-----------------------------------------|
| `syn_ver`      | string  | Synthesis version from `/compile/run`   |
| `target_util`  | float   | Core utilization (0–1)                  |
| `aspect_ratio` | float   | Die aspect ratio (Y/X)                 |
| `flow_effort`  | string  | `express`, `standard`                   |

---

### `/power/run` (Port 13336) – Power grid

Builds power grid: rings, stripes, vias.

| Field           | Type    | Description                             |
|------------------|---------|-----------------------------------------|
| `impl_ver`       | string  | From `/floorplan/run`                  |
| `stripe_width`   | float   | Stripe width (μm)                      |
| `stripe_pitch`   | float   | Center-to-center spacing (μm)         |
| `metal_layers`   | string  | e.g., `"M4,M5"`                        |

---

### `/place/run` (Port 13337) – Standard-cell placement

Performs placement with pre-CTS optimization.

| Field               | Type    | Description                          |
|---------------------|---------|--------------------------------------|
| `impl_ver`          | string  | From previous stage                  |
| `timing_effort`     | string  | `none`, `low`, `medium`, `high`     |
| `congestion_effort` | string  | `low`, `medium`, `high`             |
| `max_density`       | float   | Legalizer density threshold (0–1)    |

---

### `/cts/run` (Port 13338) – Clock-tree synthesis

Performs CTS and post-CTS optimization.

| Field              | Type    | Description                                |
|--------------------|---------|--------------------------------------------|
| `impl_ver`         | string  | From previous stage                        |
| `buffer_cells`     | string  | Space-separated list of buffer cells       |
| `clock_gate_cells` | string  | Space-separated list of CG cells           |
| `cell_density`     | float   | CTS cell density target                    |

---

### `/route/run` (Port 13339) – Routing

Global + detailed routing, then timing/DRC clean-up.

| Field            | Type    | Description                                |
|------------------|---------|--------------------------------------------|
| `impl_ver`       | string  | From previous stage                        |
| `timing_driven`  | bool    | Enable timing-driven routing               |
| `fix_clock_nets` | bool    | Keep clock nets fixed                      |
| `si_aware`       | bool    | Enable SI-aware delay calculation          |
| `drc_limit`      | int     | Max DRC violations before stopping         |
| `top_module`     | string  | (Optional) override top Verilog module     |

---

### `/save/run` (Port 13440) – Final output

Writes `.gds`, `.def`, `.sdf`.

| Field          | Type    | Description                  |
|----------------|---------|------------------------------|
| `impl_ver`     | string  | From previous stage          |
| `compress_gds` | bool    | Gzip the GDS output          |

---

## 3. Response Contract (All Services)

Each endpoint returns:

```json
{
  "status": "ok" | "error: <msg>",
  "log_path": "/abs/path/to/tool.log",
  "reports": {
    "some_report.rpt": "full text …",
    "timing.rpt.gz": "…inflated text…"
  }
}
```
The HTTP status code is always **200** so that CI pipelines rely on the `status` field instead of transport exceptions.

## 4. Typical end‑to‑end run

A helper script stitches the stages together:
```bash
./run_pipeline.sh \
  --design des \
  --tech   FreePDK45 \
  --clock_period 2.5   \   # any parameter accepted by /setup/run
  --target_util 0.65    \   # propagated down to floorplan
  --stripe_width 2.0    \   # picked up by /power/run
  --timing_driven true
```

## 5. Troubleshooting quick tips
- *Directory not found* → stale `impl_ver`; rerun earlier stage or add `"force": true`.
- Tool licence / crash → open the file pointed to by `log_path`.
- Malformed JSON → FastAPI replies with 400.
  
---

## Contact

- **Author:** Andy Lu — [yl996@duke.edu](mailto:yl996@duke.edu)  
- **Repository:** [https://github.com/AndyLu666/MCP-EDA-Server](https://github.com/AndyLu666/MCP-EDA-Server)

