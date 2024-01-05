create_timing_netlist
read_sdc
update_timing_netlist

# Run Fmax analysis
execute_module -tool fitter -args "--fmax_analysis"

# Generate Fmax report
execute_module -tool fitter -args "--fmax_report /fmax_report.txt"

