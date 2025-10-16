set TOP_MODULE QickTop

set PROJ_NAME ${TOP_MODULE}
set BUILD_PREFIX ./${PROJ_NAME}
set SOURCE_PATH ../../rtl/

set BD_NAME bd

# create project
create_project ${PROJ_NAME} ${BUILD_PREFIX} -part xczu49dr-ffvf1760-2-e -force

# add source files
add_files [glob ${SOURCE_PATH}/*.v]
add_files [glob ${SOURCE_PATH}/**/*.v]
add_files [glob ${SOURCE_PATH}/**/*.sv]
add_files [glob ${SOURCE_PATH}/**/*.svh]
add_files [glob ${SOURCE_PATH}/**/*.vhd]
add_files [glob ${SOURCE_PATH}/**/*.xci] 


# create_ip -name dsp_macro -vendor xilinx.com -library ip -version 1.0 -module_name dsp_macro_0
# set_property -dict [list \
#   CONFIG.a_binarywidth {0} \
#   CONFIG.a_width {27} \
#   CONFIG.areg_3 {true} \
#   CONFIG.areg_4 {true} \
#   CONFIG.b_binarywidth {0} \
#   CONFIG.b_width {18} \
#   CONFIG.breg_3 {true} \
#   CONFIG.breg_4 {true} \
#   CONFIG.c_binarywidth {0} \
#   CONFIG.c_width {32} \
#   CONFIG.concat_binarywidth {0} \
#   CONFIG.concat_width {48} \
#   CONFIG.creg_3 {true} \
#   CONFIG.creg_4 {true} \
#   CONFIG.creg_5 {true} \
#   CONFIG.d_binarywidth {0} \
#   CONFIG.d_width {27} \
#   CONFIG.dreg_3 {true} \
#   CONFIG.instruction1 {A*B} \
#   CONFIG.instruction2 {A*B+C} \
#   CONFIG.instruction3 {A*B-C} \
#   CONFIG.instruction4 {(A+D)*B} \
#   CONFIG.instruction5 {(A+D)*B+C} \
#   CONFIG.instruction6 {(A+D)*B-C} \
#   CONFIG.instruction7 {(D-A)*B} \
#   CONFIG.instruction8 {(D-A)*B+C} \
#   CONFIG.instruction_list {(D-A)*B-C} \
#   CONFIG.mreg_5 {true} \
#   CONFIG.opreg_3 {true} \
#   CONFIG.opreg_4 {true} \
#   CONFIG.opreg_5 {true} \
#   CONFIG.p_binarywidth {0} \
#   CONFIG.p_full_width {46} \
#   CONFIG.p_width {46} \
#   CONFIG.pcin_binarywidth {0} \
#   CONFIG.preg_6 {true} \
# ] [get_ips dsp_macro_0]

upgrade_ip [get_ips dsp_macro_0]
generate_target all [get_ips dsp_macro_0]

# add_files -fileset constrs_1 ${SOURCE_PATH}/constraints/PYNQ-Z2.xdc

# create block design
create_bd_design -dir ${BUILD_PREFIX}/bd ${BD_NAME}

# add zynq ps to bd
# create_bd_cell -type ip -vlnv xilinx.com:ip:zynq_ultra_ps_e:3.5 ZynqPs
# apply_bd_automation -rule xilinx.com:bd_rule:zynq_ultra_ps_e -config {apply_board_preset "1" }  [get_bd_cells ZynqPs]
source ./utils/ZynqPs.tcl
connect_bd_net [get_bd_pins ZynqPs/pl_clk0] [get_bd_pins ZynqPs/maxihpm0_fpd_aclk] [get_bd_pins ZynqPs/saxihpc0_fpd_aclk] [get_bd_pins ZynqPs/maxihpm1_fpd_aclk]

# create top module in bd
create_bd_cell -type module -reference ${TOP_MODULE} Top

# add ports to bd and connect to top module
# dsp clock
create_bd_port -dir I -type clk clk
connect_bd_net [get_bd_ports clk] [get_bd_pins Top/c_clk_i] 

# block design ending routines
validate_bd_design
make_wrapper -files [get_files ${BD_NAME}.bd] -top -import -force
close_bd_design ${BD_NAME}
generate_target all [get_files ${BD_NAME}.bd]
set_property -name "top" -value "${BD_NAME}_wrapper" -objects [get_filesets sources_1]

# run synthesis
launch_runs synth_1
wait_on_run synth_1

# run implementation
launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1
