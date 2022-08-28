# User config
set ::env(DESIGN_NAME) tristate

# Change if needed
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

set ::env(SYNTH_READ_BLACKBOX_LIB) 1

# Fill this
set ::env(CLOCK_PERIOD) "10.0"
set ::env(CLOCK_PORT) "clk"

set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 100 100"
set ::env(FP_CORE_UTIL) 45
set ::env(PL_BASIC_PLACEMENT) {1}

set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}

