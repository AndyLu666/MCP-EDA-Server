#!/usr/bin/env bash
set -euo pipefail
design="des"
tech="FreePDK45"

g_idx=0       # imp_global.csv / placement.csv
p_idx=0
c_idx=0       # cts.csv

die() { echo "ERROR: $*" >&2; exit 1; }

call() {
  stage="$1"; shift
  echo -e "\n==> $stage"
  resp=$(curl -s -X POST "$@")
  echo "$resp" | jq .
  ok=$(echo "$resp" | jq -r .status)
  [[ "$ok" == "ok" ]] || die "$stage failed: $ok"
}

# =======================================
# 1️⃣  Synth Setup
# =======================================
call "1. Synth Setup" \
  http://localhost:3333/setup/run \
  -H 'Content-Type: application/json' \
  -d "{\"design\":\"$design\",\"tech\":\"$tech\",\"version_idx\":0,\"force\":true}"

# =======================================
# 2️⃣  Synth Compile
# =======================================
call "2. Synth Compile" \
  http://localhost:3334/compile/run \
  -H 'Content-Type: application/json' \
  -d "{\"design\":\"$design\",\"tech\":\"$tech\",\"version_idx\":0,\"force\":true}"

synth_dir=$(ls -dt ../designs/"$design"/"$tech"/synthesis/* | head -1)
syn_ver=$(basename "$synth_dir")
echo "⤷ Using syn_ver = $syn_ver"

# =======================================
# 3️⃣  Floorplan
# =======================================
call "3. Floorplan" \
  http://localhost:3335/floorplan/run \
  -H 'Content-Type: application/json' \
  -d "{\"design\":\"$design\",\"tech\":\"$tech\",\"syn_ver\":\"$syn_ver\",\"g_idx\":$g_idx,\"p_idx\":$p_idx,\"force\":true}"

impl_ver="${syn_ver}__g${g_idx}_p${p_idx}"
echo "⤷ Using impl_ver = $impl_ver"

# =======================================
# 4️⃣  Placement
# =======================================
call "4. Placement" \
  http://localhost:3337/place/run \
  -H 'Content-Type: application/json' \
  -d "{\"design\":\"$design\",\"tech\":\"$tech\",\"impl_ver\":\"$impl_ver\",\"g_idx\":$g_idx,\"p_idx\":$p_idx,\"force\":true}"

# =======================================
# 5️⃣  CTS
# =======================================
call "5. CTS" \
  http://localhost:3338/cts/run \
  -H 'Content-Type: application/json' \
  -d "{\"design\":\"$design\",\"tech\":\"$tech\",\"impl_ver\":\"$impl_ver\",\"g_idx\":$g_idx,\"c_idx\":$c_idx,\"force\":true}"

# =======================================
# 6️⃣  Power-plan
# =======================================
call "6. Powerplan" \
  http://localhost:3336/power/run \
  -H 'Content-Type: application/json' \
  -d "{\"design\":\"$design\",\"tech\":\"$tech\",\"impl_ver\":\"$impl_ver\",\"force\":true}"

# =======================================
# 7️⃣  Routing
# =======================================
call "7. Routing" \
  http://localhost:3339/route/run \
  -H 'Content-Type: application/json' \
  -d "{\"design\":\"$design\",\"tech\":\"$tech\",\"impl_ver\":\"$impl_ver\",\"g_idx\":$g_idx,\"p_idx\":$p_idx,\"c_idx\":$c_idx,\"force\":true}"

# =======================================
# 8️⃣  Save / Package
# =======================================
call "8. Save" \
  http://localhost:3340/save/run \
  -H 'Content-Type: application/json' \
  -d "{\"design\":\"$design\",\"tech\":\"$tech\",\"impl_ver\":\"$impl_ver\",\"archive\":true,\"force\":true}"

echo -e "\n✅  All stages completed successfully!"
