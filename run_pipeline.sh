#!/usr/bin/env bash
set -euo pipefail


design="des"
tech="FreePDK45"

g_idx=0    
p_idx=0
c_idx=0  

die() {
  err_msg="$*"
  echo "ERROR: $err_msg" >&2
  exit 1
}

call() {
  stage="$1"; shift
  echo -e "\n==> $stage"
  resp=$(curl -s -X POST "$@")
  echo "$resp" | jq .
  ok=$(echo "$resp" | jq -r .status)
  [[ "$ok" == "ok" ]] || die "$stage failed: $ok"
}


call "1. Synth Setup" \
  http://localhost:13333/setup/run \
  -H 'Content-Type: application/json' \
  -d "{\"design\":\"$design\",\"tech\":\"$tech\",\"version_idx\":0,\"force\":true}"


call "2. Synth Compile" \
  http://localhost:13334/compile/run \
  -H 'Content-Type: application/json' \
  -d "{\"design\":\"$design\",\"tech\":\"$tech\",\"version_idx\":0,\"force\":true}"
synth_dir=$(ls -dt designs/"$design"/"$tech"/synthesis/* | head -1)
syn_ver=$(basename "$synth_dir")
echo "⤷ Using syn_ver = $syn_ver"


call "3. Floorplan" \
  http://localhost:13335/floorplan/run \
  -H 'Content-Type: application/json' \
  -d "{\"design\":\"$design\",\"top_module\":\"des3\",\"tech\":\"$tech\",\"syn_ver\":\"$syn_ver\",\"g_idx\":$g_idx,\"p_idx\":$p_idx,\"force\":true}"

impl_ver="${syn_ver}__g${g_idx}_p${p_idx}"
echo "⤷ Using impl_ver = $impl_ver"

floorplan_enc="designs/$design/$tech/implementation/$impl_ver/pnr_save/floorplan.enc.dat"
if [[ ! -d "$floorplan_enc" ]]; then
  die "Floorplan did not produce floorplan.enc at $floorplan_enc"
else
  echo "✔ Found floorplan.enc"
fi


call "4. Powerplan" \
  http://localhost:13336/power/run \
  -H 'Content-Type: application/json' \
  -d "{\"design\":\"$design\",\"top_module\":\"des3\",\"tech\":\"$tech\",\"impl_ver\":\"$impl_ver\",\"restore_enc\":\"$floorplan_enc\",\"force\":true}"

powerplan_enc="designs/$design/$tech/implementation/$impl_ver/pnr_save/powerplan.enc.dat"
if [[ ! -d "$powerplan_enc" ]]; then
  die "Powerplan did not produce powerplan.enc at $powerplan_enc"
else
  echo "✔ Found powerplan.enc"
fi


call "5. Placement" \
  http://localhost:13337/place/run \
  -H 'Content-Type: application/json' \
  -d "{\"design\":\"$design\",\"tech\":\"$tech\",\"impl_ver\":\"$impl_ver\",\"g_idx\":$g_idx,\"p_idx\":$p_idx,\"restore_enc\":\"$powerplan_enc\",\"top_module\":\"des3\",\"force\":true}"

placement_enc="designs/$design/$tech/implementation/$impl_ver/pnr_save/placement.enc.dat"
if [[ ! -d "$placement_enc" ]]; then
  die "Placement did not produce placement.enc at $placement_enc"
else
  echo "✔ Found placement.enc"
fi


call "6. CTS" \
  http://localhost:13338/cts/run \
  -H 'Content-Type: application/json' \
  -d "{\"design\":\"$design\",\"top_module\":\"des3\",\"tech\":\"$tech\",\"impl_ver\":\"$impl_ver\",\"g_idx\":$g_idx,\"c_idx\":$c_idx,\"restore_enc\":\"$placement_enc\",\"force\":true}"

cts_enc="designs/$design/$tech/implementation/$impl_ver/pnr_save/cts.enc.dat"
if [[ ! -d "$cts_enc" ]]; then
  die "CTS did not produce cts.enc at $cts_enc"
else
  echo "✔ Found cts.enc"
fi


call "7. Routing" \
  http://localhost:13339/route/run \
  -H 'Content-Type: application/json' \
  -d "{\"design\":\"$design\",\"top_module\":\"des3\",\"tech\":\"$tech\",\"impl_ver\":\"$impl_ver\",\"g_idx\":$g_idx,\"p_idx\":$p_idx,\"c_idx\":$c_idx,\"restore_enc\":\"$cts_enc\",\"force\":true}"

route_enc="designs/$design/$tech/implementation/$impl_ver/pnr_save/route_opt.enc.dat"
if [[ ! -d "$route_enc" ]]; then
  die "Routing did not produce route_opt.enc at $route_enc"
else
  echo "✔ Found route.enc"
fi


call "8. Save" \
  http://localhost:13440/save/run \
  -H 'Content-Type: application/json' \
  -d "{\"design\":\"$design\",\"top_module\":\"des3\",\"tech\":\"$tech\",\"impl_ver\":\"$impl_ver\",\"archive\":true,\"force\":true}"

echo -e "\n ✅ All stages completed successfully!"
