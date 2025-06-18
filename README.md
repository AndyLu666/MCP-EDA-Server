# MCP‑EDA Example Flow

An **end‑to‑end digital implementation reference** that couples **Synopsys Design Compiler** (RTL‑to‑gate) with **Cadence Innovus** (physical implementation), wrapped in lightweight Python + FastAPI micro‑services.

---

## 1. Repository Layout

```
.
├── config/                  # CSV knobs for each stage
│   ├── synthesis.csv
│   ├── imp_global.csv
│   ├── placement.csv
│   └── cts.csv
├── designs/
│   └── <design>/            # one folder per design
│       ├── rtl/             # Verilog sources
│       └── implementation/  # auto‑generated results
├── libraries/               # FreePDK45 libs (timing/LEF/GDS)
├── scripts/
│   └── FreePDK45/
│       ├── tech.tcl         # common tech include
│       ├── frontend/        # Design Compiler TCL
│       └── backend/         # Innovus TCL 1‑8
└── server/                  # 8 FastAPI services
    ├── synth_setup_server.py
    ├── synth_compile_server.py
    ├── floorplan_server.py
    ├── powerplan_server.py
    ├── placement_server.py
    ├── cts_server.py
    ├── route_server.py
    └── save_server.py
```

---

## 2. Prerequisites

| Tool | Version (tested) | Notes |
|------|------------------|-------|
| **Python** | 3.8 + | create a `venv`, `pip install -r requirements.txt` |
| **Synopsys DC** | *V‑2023.12‑SP2* | `dc_shell` in `$PATH` |
| **Cadence Innovus** | *21.1 s075* | `innovus` in `$PATH` |
| **FreePDK45 / Nangate 1.3** | — | already vendored under `libraries/` |

Valid DC & Innovus licenses must be reachable from the host.

---

## 3. One‑shot Pipeline

```bash
./restart_servers.sh      # (re)launch all 8 REST services
./run_pipeline.sh         # run setup → save in one go
```

`run_pipeline.sh`:

1. Detects the most recent RTL → tags a synthesis version (`syn_ver`).
2. Chooses a row from each `*.csv` (indices `g_idx / p_idx / c_idx`).
3. Calls each REST endpoint in sequence, streaming JSON to the console.
4. Stores artefacts under  
   `designs/<design>/FreePDK45/{synthesis,implementation}/…`.

A green **“✅ All stages completed successfully!”** means you have a routed
DEF + GDS + SPEF + netlist in `pnr_out/`.

---

## 4. Hitting Individual Stages

Every stage is a micro‑service exposing **`POST /<stage>/run`**.

Example – *placement* (default port **13337**):

```bash
curl -X POST http://localhost:13337/place/run      -H 'Content-Type: application/json'      -d '{
           "design"   : "aes",
           "tech"     : "FreePDK45",
           "impl_ver" : "syn1__g0_p0",
           "restore_enc" : "designs/aes/…/floorplan.enc",
           "force"    : true
         }' | jq .
```

| Port | Service | Depends on | Output key file |
|------|---------|------------|-----------------|
| 13333 | **setup**    | RTL      | `.mapped.v / .sdc` |
| 13334 | **compile**  | setup    | `*_mapped.v` |
| 13335 | **floorplan**| compile  | `floorplan.enc` |
| 13336 | **powerplan**| floorplan| `powerplan.enc` |
| 13337 | **placement**| powerplan| `placement.enc` |
| 13338 | **CTS**      | placement| `cts.enc` |
| 13339 | **route**    | CTS      | `route_opt.enc` |
| 13340 | **save**     | route    | `gds / lef / …` |

All endpoints accept `force:true` to overwrite previous runs.

---

## 5. Configuration via CSV

Instead of burying numbers inside TCL, each tunable lives in CSV:

* `imp_global.csv` – floor‑plan effort, aspect ratio, util…
* `placement.csv` – density caps, place legalization settings…
* `cts.csv` – CCOpt buffer lists, density, cloning…
* `synthesis.csv` – compile effort, clock period…

At runtime the Python wrapper:

1. Selects a **row** by index (`g_idx`, `p_idx`, `c_idx`, …).
2. Exports the pairs as **env‑vars** (`export design_flow_effort=medium`).
3. The TCL scripts reference them: `setDesignMode -flowEffort $env(design_flow_effort)`.

Editing CSV + git commit = fully reproducible flow.

---

## 6. Logs & Reports

| Location | Content |
|----------|---------|
| `logs/<stage>/*.log` | Full Innovus / DC std‑out |
| `pnr_reports/` | key reports aggregated per stage (`*_timing.rpt.gz`, `*_drc.rpt`) |
| `pnr_save/` | intermediate checkpoints (`*.enc`, `*.enc.dat`) |
| `pnr_out/` | final deliverables (DEF / GDS / SPEF / netlist) |

Each micro‑service returns the *important* report snippets as JSON so that a CI pipeline can parse WNS/TNS/DRC counts directly.

---

## 7. Bringing Your Own Design

1. Copy RTL into `designs/<your‑design>/rtl/`.
2. Create `designs/<your‑design>/config.tcl`:

```tcl
set TOP_NAME "<top>"
set RTL_LIST [glob $::env(BASE_DIR)/designs/<your‑design>/rtl/*.v]
```

3. Update `run_pipeline.sh` → `design="<your‑design>"`.
4. Adjust clock period in `synthesis.csv`.

No path hacking elsewhere.

---

## 8. Troubleshooting Cheatsheet

| Symptom | Likely fix |
|---------|------------|
| `floorplan.enc not found` | check Innovus log – usually floorplan DRC, decrease density / effort. |
| placement WNS > 0 | lower `target_util`, loosen density caps |
| route DRC over 1 M | add more power stripes (M4/M5) in `3_powerplan.tcl` |
| `…enc.dat not found` in later stage | earlier stage crashed – open its `.log` |

---

## 9. Roadmap

* add **OpenROAD** backend for full open‑source flow  
* parameter sweeps via `sweep.py` + SLURM  
* Prometheus exporter in each service  

---

Made with ❤️ by the **MCP team**.
