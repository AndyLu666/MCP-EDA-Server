# MCP‑EDA Example Flow

An **end‑to‑end digital implementation reference** that combines **Synopsys Design Compiler** for RTL‑to‑gate synthesis and **Cadence Innovus** for physical implementation, wrapped in a set of lightweight Python/FastAPI micro‑services plus automation scripts.

The goal is to let you:

* spin up every step (setup → compile → floor‑plan → place → CTS → power‑plan → route → save) with a **single command**  
* or **drive / debug individual steps** via simple REST calls  
* keep *all* tool settings under version control (CSV + TCL) for fully repeatable runs  

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
│   └── des/                 # example AES‑DES design
│       ├── rtl/             # Verilog sources
│       └── implementation/  # auto‑generated results
├── libraries/               # FreePDK45 timing/lib/LEF
├── scripts/
│   └── FreePDK45/
│       ├── tech.tcl         # common tech setup
│       ├── frontend/        # Design‑Compiler TCL
│       └── backend/         # Innovus TCL (1–8)
├── server/                  # FastAPI micro‑services
│   ├── synth_setup_server.py
│   ├── synth_compile_server.py
│   ├── floorplan_server.py
│   ├── placement_server.py
│   ├── cts_server.py
│   ├── powerplan_server.py
│   ├── route_server.py
│   └── save_server.py
└── run_pipeline.sh          # one‑shot driver
```

---

## 2. Prerequisites

| Tool | Version (known good) | Notes |
|------|---------------------|-------|
| Synopsys Design Compiler | **V‑2023.12‑SP2** | `dc_shell` in `$PATH` |
| Cadence Innovus | **21.1 s075** | `innovus` in `$PATH` |
| Python | 3.9 + | tested with `venv` |
| FreePDK45 | Nangate OpenCell v1.3 | timing/LEF already included |

> **Licenses:** You need valid DC & Innovus licenses on the host.

---

## 3. Quick Start – one line

```bash
./run_pipeline.sh       # runs ALL 8 stages, logs to ./logs/
```

Behind the scenes the script:

1. Spins up (or re‑uses) the 8 REST services on localhost `:3333…3340`.
2. Calls them in sequence, passing the parameter sets from `config/*.csv`.
3. Streams JSON back to the console for each stage; artefacts go under  
   `designs/des/FreePDK45/{synthesis,implementation}/…`.

If you see ✅ at the end you have a routed & saved GDS/V files ready.

---

## 4. Running individual stages

Every stage is a tiny FastAPI app exposing **`POST /<stage>/run`**.

Example – **placement**:

```bash
curl -X POST http://localhost:3337/place/run      -H 'Content-Type: application/json'      -d '{
           "design": "des",
           "tech":   "FreePDK45",
           "impl_ver":"cpV1_clkP1_drcV1__g0_p0",
           "g_idx":0, "p_idx":0,
           "force": true
         }' | jq .
```

All servers honour two rules:

* **idempotent** – rerun with `force=true` to wipe previous logs/reports.  
* **stateless** – all context (version tags, CSV indices) comes from the JSON.

| Port | Service | Endpoint | Depends on |
|------|---------|----------|------------|
| 3333 | `synth_setup_server`   | `/setup/run`      | source RTL |
| 3334 | `synth_compile_server` | `/compile/run`    | setup artefacts |
| 3335 | `floorplan_server`     | `/floorplan/run`  | `.mapped.v/.sdc` |
| 3337 | `placement_server`     | `/place/run`      | `floorplan.enc.dat` |
| 3338 | `cts_server`           | `/cts/run`        | placement |
| 3336 | `powerplan_server`     | `/power/run`      | floorplan (striped) |
| 3339 | `route_server`         | `/route/run`      | CTS |
| 3340 | `save_server`          | `/save/run`       | route |

See **`docs/api_examples.http`** for ready‑to‑paste requests in VS Code.

---

## 5. Configuration – CSV → environment → TCL

Instead of duplicating parameters in TCL, every tunable knob lives in **CSV**:

* `imp_global.csv` – global flow effort, target util, etc.
* `placement.csv` – `setPlaceMode` switches, density caps …
* `cts.csv` – CCOpt properties.
* `synthesis.csv` – compile options, clock period …

At runtime the Python server:

1. Picks a **row by index** (`g_idx`, `p_idx`, `c_idx` …).
2. Exports the key/values as **environment variables**.
3. The stage‑specific `*.tcl` scripts reference them, e.g.:

```tcl
setDesignMode -flowEffort $env(design_flow_effort)
floorPlan -r $env(ASPECT_RATIO) $env(target_util)
```

Change a cell in CSV → commit → rerun only the affected stage.

---

## 6. Logs, Reports & Artifacts

| Path | What |
|------|------|
| `logs/<stage>/` | Full tool std‑out per run (timestamped) |
| `designs/.../synthesis/<syn_ver>/results` | `.mapped.v`, `.sdc`, QOR |
| `designs/.../implementation/<impl_ver>/pnr_reports/` | `floorplan_summary.rpt`, `place_timing.rpt.gz`, … |
| `pnr_save/` | **`floorplan.enc.dat`**, **`final.enc.dat`** – for restore |
| `pnr_out/` | DEF, SPEF, net‑delays, etc. |

Reports that matter (WNS/TNS, DRC counts, routing congestion) are **collected and returned in JSON** by each service – so your CI can grep them directly.

---

## 7. How to Re‑use for *your* Design

1. Place your RTL under `designs/<name>/rtl/*.v`.
2. Add a *minimal* `config.tcl` under `designs/<name>/` containing at least  
   ```tcl
   set TOP_NAME "<top_module>"
   set RTL_LIST  [glob $::env(BASE_DIR)/designs/<name>/rtl/*.v]
   ```
3. Keep using the default CSV rows or add new ones.
4. Update the REST calls / `run_pipeline.sh` with `design="<name>"`.

No other path hard‑coding required.

---

## 8. Troubleshooting

| Symptom | Likely Cause | Fix |
|---------|--------------|-----|
| “`*.mapped.sdc not found`” during floorplan | RTL top name ≠ file prefix | either rename file or use the new auto‑detect logic in backend/1_setup.tcl |
| Placement fails with `row not legalised` | target util too high | tweak `placement.csv → place_global_max_density` |
| Route DRC over 1 M | missing power stripes on M4/M5 | revisit `3_powerplan.tcl` stripe pitch |
| REST call returns `error: … enc.dat not found` | previous stage crashed | look at `logs/<stage>/…log` and fix first |

---

## 9. Roadmap

* 🚧 **add OpenROAD support** for fully open‑source flow  
* parameter sweep driver (`sweep.py`) to explore CSV grids  
* Prometheus metrics endpoint on each server  

---

## 10. License

See [LICENSE](LICENSE).  Free to use for academic & evaluation purposes; no guarantees.

---

Made with ❤️ by the **MCP team** – feel free to open issues / PRs!