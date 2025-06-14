#-------------------------------------------------------------------------------
# Placement
#-------------------------------------------------------------------------------

proc do_power_analysis {report_folder} {
    set_default_switching_activity -input_activity 0.2 -seq_activity 0.1
    propagate_activity
    set_power_output_dir pnr_reports/$report_folder
    report_power -cap -pg_net -format=detailed -outfile design.rpt.gz
    report_power -clock_network all -outfile clock.rpt.gz
    # write_tcf pnr_reports/$report_folder/activity.tcf
}

# TODO: verify there's no tapcell
# deleteFiller -cell $TAPCELL
# addEndCap -preCap $TAPCELL -postCap $TAPCELL -prefix ENDCAP

#addWellTap -cell $TAPCELL -cellInterval 100

set check_place_out pnr_reports/check_place.out

setPlaceMode -place_global_timing_effort $env(place_global_timing_effort) \
    -place_global_cong_effort $env(place_global_cong_effort) \
    -place_detail_wire_length_opt_effort $env(place_detail_wire_length_opt_effort) \
    -place_global_max_density $env(place_global_max_density) \
    -activity_power_driven $env(place_activity_power_driven)
placeDesign
refinePlace
#place_opt_design -incremental

#setAnalysisMode -analysisType onChipVariation
timeDesign -preCTS -outDir pnr_reports/place_time
report_timing -max_paths 100 > pnr_reports/place_timing.rpt.gz

checkPlace $check_place_out



#-------------------------------------------------------------------------------
# Pre-CTS timing optimization
#-------------------------------------------------------------------------------

setOptMode -maxDensity $env(prects_opt_max_density) \
    -powerEffort $env(prects_opt_power_effort) \
    -reclaimArea $env(prects_opt_reclaim_area) \
    -fixFanoutLoad $env(prects_fix_fanout_load)
optDesign -preCTS -outDir pnr_reports/place_opt
# set _REPORTS_PATH $REPORTS_PATH
report_timing -max_paths 100 > pnr_reports/place_opt_timing.rpt.gz


#-------------------------------------------------------------------------------
# Log info & save design
#-------------------------------------------------------------------------------

do_power_analysis place_opt_power

defOut pnr_out/place.def
summaryReport -outfile pnr_reports/placement_summary.rpt


# exec gzip $cellFile $netFile &


saveNetlist pnr_out/${top_module}_place.v

# setExtractRCMode -engine preRoute -effortLevel low -coupled true -total_c_th 0.0
setExtractRCMode -engine preRoute -effortLevel low
extractRC
rcOut -spef pnr_out/RC_place.spef.gz

saveDesign pnr_save/placement.enc

exec touch _Place_Finished_
