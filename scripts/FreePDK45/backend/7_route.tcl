#-------------------------------------------------------------------------------
# Routing
#-------------------------------------------------------------------------------

proc do_power_analysis {report_folder} {
    set_default_switching_activity -input_activity 0.2 -seq_activity 0.1
    propagate_activity
    set_power_output_dir pnr_reports/$report_folder
    report_power -cap -pg_net -format=detailed -outfile design.rpt.gz
    report_power -clock_network all -outfile clock.rpt.gz
    # write_tcf pnr_reports/$report_folder/activity.tcf
}


set routing_start_time [clock seconds]

setNanoRouteMode -routeWithTimingDriven false -routeDesignFixClockNets true

set gr_start_time [clock seconds]
globalRoute
puts "\[Info\] The global routing stage duration is [expr [clock seconds] - $gr_start_time] sec"

# dump congestion
dumpCongestArea -all pnr_reports/congestion.rpt

set dr_start_time [clock seconds]
detailRoute
puts "\[Info\] The detail routing stage duration is [expr [clock seconds] - $dr_start_time] sec"

puts "\[Info\] The Routing stage duration is [expr [clock seconds] - $routing_start_time] sec"
puts "\[Info\] The total duration is [expr [clock seconds] - $start_time] sec"
saveDesign pnr_save/global_route.enc

setAnalysisMode -analysisType onChipVariation
timeDesign -postRoute -outDir pnr_reports/postRoute_timing
report_timing -max_paths 100 -path_group Reg2Reg > pnr_reports/route_timing.rpt.gz


set drc_start_time [clock seconds]
verify_drc -limit 10000000 -report pnr_reports/postRoute_drc_max1M.rpt
puts "\[Info\] The post-routing DRC stage duration is [expr [clock seconds] - $drc_start_time] sec"
saveDesign pnr_save/detail_route.enc


setDelayCalMode -SIAware True
timeDesign -postRoute -outDir pnr_reports/route_SI_timing

set opt_start_time [clock seconds]
optDesign -postRoute -outDir pnr_reports/route_SI_opt.rpt
puts "\[Info\] The post-routing optimization stage duration is [expr [clock seconds] - $opt_start_time] sec"
puts "\[Info\] The total duration is [expr [clock seconds] - $start_time] sec"



set drc_start_time [clock seconds]
verify_drc -limit 10000000 -report pnr_reports/postOpt_drc_max1M.rpt
puts "\[Info\] The post-optimization DRC stage duration is [expr [clock seconds] - $drc_start_time] sec"
puts "\[Info\] The total duration is [expr [clock seconds] - $start_time] sec"

timeDesign -postRoute -reportOnly -outDir pnr_reports/route_opt_timing
report_timing -max_paths 100 -path_group Reg2Reg > pnr_reports/route_opt_timing.rpt.gz
defOut pnr_out/route.def -routing
fit
createSnapshot -dir pnr_out -name pnr_result

# Post-routing power analysis

# set_power_analysis_mode -method static -corner max -off_pg_nets $init_pwr_net -create_binary_db true -write_static_currents true
do_power_analysis route_opt_power

# extract RC
# -effortLevel with medium/high requries Quantus QRC tech files
setExtractRCMode -engine postRoute -effortLevel low -coupled true -total_c_th 0.0
extractRC
rcOut -spef pnr_out/RC.spef.gz

summaryReport -outfile pnr_reports/route_summary.rpt

saveDesign pnr_save/route_opt.enc