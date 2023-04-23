######################################################################

# Created by Genus(TM) Synthesis Solution 17.24-s038_1 on Sat Apr 22 22:49:57 EDT 2023

# This file contains the RC script for design:controller

######################################################################

if {! [is_attribute wlec_internal_to_write_lec_db_for_invocation -obj_type root]} {define_attribute -obj_type root -category lec -data_type string -help_string {Capture internal write_lec variables.} wlec_internal_to_write_lec_db_for_invocation}
if {! [is_attribute wlec_internal_to_write_lec_db_for_label -obj_type root]} {define_attribute -obj_type root -category lec -data_type string -help_string {Capture internal write_lec variables.} wlec_internal_to_write_lec_db_for_label}
if {! [is_attribute wlec_internal_to_write_lec_label_data -obj_type root]} {define_attribute -obj_type root -category lec -data_type string -help_string {Capture internal write_lec variables.} wlec_internal_to_write_lec_label_data}
set_db -quiet information_level 7
set_db -quiet init_lib_search_path .
set_db -quiet design_mode_process 900.0
set_db -quiet phys_assume_met_fill 0.0
set_db -quiet map_placed_for_hum false
set_db -quiet phys_use_invs_extraction true
set_db -quiet phys_route_time_out 120.0
set_db -quiet capacitance_per_unit_length_mmmc {}
set_db -quiet resistance_per_unit_length_mmmc {}
set_db -quiet runtime_by_stage {{PBS_Generic-Start 0 31 0.0 22.0} {to_generic 1 32 0 22} {first_condense 1 33 0 23} {PBS_Generic_Opt-Post 2 33 1.9745549999999987 23.974555} {{PBS_Generic-Postgen HBO Optimizations} 0 33 0.0 23.974555} {PBS_TechMap-Start 0 34 0.0 23.974555} {{PBS_TechMap-Premap HBO Optimizations} 0 34 0.0 23.974555} {second_condense 0 34 0 24} {reify 1 35 0 25} {global_incr_map 0 35 0 25} {{PBS_Techmap-Global Mapping} 1 35 0.8433349999999997 24.81789} {{PBS_TechMap-Datapath Postmap Operations} 1 36 2.0 26.81789} {{PBS_TechMap-Postmap HBO Optimizations} 0 37 0.0 26.81789} {{PBS_TechMap-Postmap Clock Gating} 0 37 0.0 26.81789} {{PBS_TechMap-Postmap Cleanup} 0 37 0.0 26.81789} {PBS_Techmap-Post_MBCI 0 37 0.0 26.81789} {incr_opt 1 40 0 28} }
set_db -quiet tinfo_tstamp_file .rs_dgarci23.tstamp
set_db -quiet metric_enable true
set_db -quiet script_search_path .
set_db -quiet use_area_from_lef true
set_db -quiet hdl_unconnected_marking_done true
set_db -quiet flow_metrics_snapshot_uuid e5bd3518-662d-4393-b280-d70df4c414e8
set_db -quiet compensative_dpul_driver 0
set_db -quiet phys_use_segment_parasitics true
set_db -quiet probabilistic_extraction true
set_db -quiet ple_correlation_factors {1.9000 2.0000}
set_db -quiet maximum_interval_of_vias inf
set_db -quiet ple_mode global
set_db -quiet wireload_selection wireload_selection:default_emulate_libset_max/muddlib/foo
set_db -quiet operating_condition:default_emulate_libset_max/muddlib/typical .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/muddlib/_nominal_ .tree_type balanced_tree
# BEGIN MSV SECTION
# END MSV SECTION
define_clock -name ph1 -domain domain_1 -period 10000.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -design design:controller port:controller/ph1
define_cost_group -design design:controller -name ph1
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_31 port:controller/ph1
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_31_1_1 port:controller/ph2
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_31_2_1 port:controller/reset
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_31_3_1 {{port:controller/Instr[31]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_31_4_1 {{port:controller/Instr[30]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_31_5_1 {{port:controller/Instr[29]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_31_6_1 {{port:controller/Instr[28]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_31_7_1 {{port:controller/Instr[27]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_31_8_1 {{port:controller/Instr[26]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_31_9_1 {{port:controller/Instr[25]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_31_10_1 {{port:controller/Funct[0]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_31_11_1 {{port:controller/Rd[2]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_31_12_1 {{port:controller/Rd[1]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_31_13_1 {{port:controller/Rd[0]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_31_14_1 {{port:controller/ALUFlags[1]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_31_15_1 {{port:controller/ALUFlags[0]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_31_16_1 {{port:controller/FlagW[1]}}
external_delay -accumulate -input {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_31_17_1 {{port:controller/FlagW[0]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_37 port:controller/PCWrite
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_37_18_1 port:controller/MemWrite
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_37_19_1 port:controller/RegWrite
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_37_20_1 {{port:controller/IRWrite[3]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_37_21_1 {{port:controller/IRWrite[2]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_37_22_1 {{port:controller/IRWrite[1]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_37_23_1 {{port:controller/IRWrite[0]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_37_24_1 port:controller/AdrSrc
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_37_25_1 {{port:controller/RegSrc[1]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_37_26_1 {{port:controller/RegSrc[0]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_37_27_1 port:controller/ALUOp
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_37_28_1 port:controller/ALUSrcA
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_37_29_1 {{port:controller/ALUSrcB[1]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_37_30_1 {{port:controller/ALUSrcB[0]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_37_31_1 {{port:controller/ResultSrc[1]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_37_32_1 {{port:controller/ResultSrc[0]}}
external_delay -accumulate -output {500.0 500.0 500.0 500.0} -clock clock:controller/ph1 -name constraints.sdc_line_37_33_1 port:controller/ImmSrc
path_group -paths [specify_paths -to clock:controller/ph1]  -name ph1 -group cost_group:controller/ph1 -user_priority -1047552
# BEGIN DFT SECTION
set_db -quiet dft_scan_style muxed_scan
set_db -quiet dft_scanbit_waveform_analysis false
# END DFT SECTION
set_db -quiet design:controller .qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 44158} {cell_count 152} {utilization  0.00} {runtime 1 32 0 22} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 39266} {cell_count 133} {utilization  0.00} {runtime 1 33 0 23} }{second_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 38994} {cell_count 131} {utilization  0.00} {runtime 0 34 0 24} }{reify {wns 4699} {tns 0} {vep 0} {area 32140} {cell_count 113} {utilization  0.00} {runtime 1 35 0 25} }{global_incr_map {wns 4699} {tns 0} {vep 0} {area 32140} {cell_count 113} {utilization  0.00} {runtime 0 35 0 25} }{incr_opt {wns 214748365} {tns 0} {vep 0} {area 31687} {cell_count 108} {utilization  0.00} {runtime 1 40 0 28} }}
set_db -quiet design:controller .seq_mbci_coverage 0.0
set_db -quiet design:controller .hdl_user_name controller
set_db -quiet design:controller .hdl_filelist {{default -sv {SYNTHESIS} {datapath/processor_multi.sv} {} {}}}
set_db -quiet design:controller .verification_directory fv/controller
set_db -quiet design:controller .arch_filename datapath/processor_multi.sv
set_db -quiet design:controller .entity_filename datapath/processor_multi.sv
set_db -quiet port:controller/ph1 .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet port:controller/ph1 .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet port:controller/ph1 .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet port:controller/ph1 .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet port:controller/ph1 .min_transition no_value
set_db -quiet port:controller/ph1 .original_name ph1
set_db -quiet port:controller/ph2 .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet port:controller/ph2 .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet port:controller/ph2 .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet port:controller/ph2 .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet port:controller/ph2 .min_transition no_value
set_db -quiet port:controller/ph2 .original_name ph2
set_db -quiet port:controller/reset .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet port:controller/reset .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet port:controller/reset .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet port:controller/reset .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet port:controller/reset .min_transition no_value
set_db -quiet port:controller/reset .original_name reset
set_db -quiet {port:controller/Instr[31]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[31]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[31]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[31]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[31]} .min_transition no_value
set_db -quiet {port:controller/Instr[31]} .original_name {Instr[31]}
set_db -quiet {port:controller/Instr[30]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[30]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[30]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[30]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[30]} .min_transition no_value
set_db -quiet {port:controller/Instr[30]} .original_name {Instr[30]}
set_db -quiet {port:controller/Instr[29]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[29]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[29]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[29]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[29]} .min_transition no_value
set_db -quiet {port:controller/Instr[29]} .original_name {Instr[29]}
set_db -quiet {port:controller/Instr[28]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[28]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[28]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[28]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[28]} .min_transition no_value
set_db -quiet {port:controller/Instr[28]} .original_name {Instr[28]}
set_db -quiet {port:controller/Instr[27]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[27]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[27]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[27]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[27]} .min_transition no_value
set_db -quiet {port:controller/Instr[27]} .original_name {Instr[27]}
set_db -quiet {port:controller/Instr[26]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[26]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[26]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[26]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[26]} .min_transition no_value
set_db -quiet {port:controller/Instr[26]} .original_name {Instr[26]}
set_db -quiet {port:controller/Instr[25]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[25]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[25]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[25]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Instr[25]} .min_transition no_value
set_db -quiet {port:controller/Instr[25]} .original_name {Instr[25]}
set_db -quiet {port:controller/Funct[0]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Funct[0]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Funct[0]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Funct[0]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Funct[0]} .min_transition no_value
set_db -quiet {port:controller/Funct[0]} .original_name {Funct[0]}
set_db -quiet {port:controller/Rd[2]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Rd[2]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Rd[2]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Rd[2]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Rd[2]} .min_transition no_value
set_db -quiet {port:controller/Rd[2]} .original_name {Rd[2]}
set_db -quiet {port:controller/Rd[1]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Rd[1]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Rd[1]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Rd[1]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Rd[1]} .min_transition no_value
set_db -quiet {port:controller/Rd[1]} .original_name {Rd[1]}
set_db -quiet {port:controller/Rd[0]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Rd[0]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Rd[0]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Rd[0]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/Rd[0]} .min_transition no_value
set_db -quiet {port:controller/Rd[0]} .original_name {Rd[0]}
set_db -quiet {port:controller/ALUFlags[1]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/ALUFlags[1]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/ALUFlags[1]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/ALUFlags[1]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/ALUFlags[1]} .min_transition no_value
set_db -quiet {port:controller/ALUFlags[1]} .original_name {ALUFlags[1]}
set_db -quiet {port:controller/ALUFlags[0]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/ALUFlags[0]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/ALUFlags[0]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/ALUFlags[0]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/ALUFlags[0]} .min_transition no_value
set_db -quiet {port:controller/ALUFlags[0]} .original_name {ALUFlags[0]}
set_db -quiet {port:controller/FlagW[1]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/FlagW[1]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/FlagW[1]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/FlagW[1]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/FlagW[1]} .min_transition no_value
set_db -quiet {port:controller/FlagW[1]} .original_name {FlagW[1]}
set_db -quiet {port:controller/FlagW[0]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/FlagW[0]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/FlagW[0]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/FlagW[0]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/muddlib/inv_4x/y
set_db -quiet {port:controller/FlagW[0]} .min_transition no_value
set_db -quiet {port:controller/FlagW[0]} .original_name {FlagW[0]}
set_db -quiet port:controller/PCWrite .external_pin_cap_min 35.0
set_db -quiet port:controller/PCWrite .external_capacitance_max {35.0 35.0}
set_db -quiet port:controller/PCWrite .external_capacitance_min 35.0
set_db -quiet port:controller/PCWrite .min_transition no_value
set_db -quiet port:controller/PCWrite .original_name PCWrite
set_db -quiet port:controller/PCWrite .external_pin_cap {35.0 35.0}
set_db -quiet port:controller/MemWrite .external_pin_cap_min 35.0
set_db -quiet port:controller/MemWrite .external_capacitance_max {35.0 35.0}
set_db -quiet port:controller/MemWrite .external_capacitance_min 35.0
set_db -quiet port:controller/MemWrite .min_transition no_value
set_db -quiet port:controller/MemWrite .original_name MemWrite
set_db -quiet port:controller/MemWrite .external_pin_cap {35.0 35.0}
set_db -quiet port:controller/RegWrite .external_pin_cap_min 35.0
set_db -quiet port:controller/RegWrite .external_capacitance_max {35.0 35.0}
set_db -quiet port:controller/RegWrite .external_capacitance_min 35.0
set_db -quiet port:controller/RegWrite .min_transition no_value
set_db -quiet port:controller/RegWrite .original_name RegWrite
set_db -quiet port:controller/RegWrite .external_pin_cap {35.0 35.0}
set_db -quiet {port:controller/IRWrite[3]} .external_pin_cap_min 35.0
set_db -quiet {port:controller/IRWrite[3]} .external_capacitance_max {35.0 35.0}
set_db -quiet {port:controller/IRWrite[3]} .external_capacitance_min 35.0
set_db -quiet {port:controller/IRWrite[3]} .min_transition no_value
set_db -quiet {port:controller/IRWrite[3]} .original_name {IRWrite[3]}
set_db -quiet {port:controller/IRWrite[3]} .external_pin_cap {35.0 35.0}
set_db -quiet {port:controller/IRWrite[2]} .external_pin_cap_min 35.0
set_db -quiet {port:controller/IRWrite[2]} .external_capacitance_max {35.0 35.0}
set_db -quiet {port:controller/IRWrite[2]} .external_capacitance_min 35.0
set_db -quiet {port:controller/IRWrite[2]} .min_transition no_value
set_db -quiet {port:controller/IRWrite[2]} .original_name {IRWrite[2]}
set_db -quiet {port:controller/IRWrite[2]} .external_pin_cap {35.0 35.0}
set_db -quiet {port:controller/IRWrite[1]} .external_pin_cap_min 35.0
set_db -quiet {port:controller/IRWrite[1]} .external_capacitance_max {35.0 35.0}
set_db -quiet {port:controller/IRWrite[1]} .external_capacitance_min 35.0
set_db -quiet {port:controller/IRWrite[1]} .min_transition no_value
set_db -quiet {port:controller/IRWrite[1]} .original_name {IRWrite[1]}
set_db -quiet {port:controller/IRWrite[1]} .external_pin_cap {35.0 35.0}
set_db -quiet {port:controller/IRWrite[0]} .external_pin_cap_min 35.0
set_db -quiet {port:controller/IRWrite[0]} .external_capacitance_max {35.0 35.0}
set_db -quiet {port:controller/IRWrite[0]} .external_capacitance_min 35.0
set_db -quiet {port:controller/IRWrite[0]} .min_transition no_value
set_db -quiet {port:controller/IRWrite[0]} .original_name {IRWrite[0]}
set_db -quiet {port:controller/IRWrite[0]} .external_pin_cap {35.0 35.0}
set_db -quiet port:controller/AdrSrc .external_pin_cap_min 35.0
set_db -quiet port:controller/AdrSrc .external_capacitance_max {35.0 35.0}
set_db -quiet port:controller/AdrSrc .external_capacitance_min 35.0
set_db -quiet port:controller/AdrSrc .min_transition no_value
set_db -quiet port:controller/AdrSrc .original_name AdrSrc
set_db -quiet port:controller/AdrSrc .external_pin_cap {35.0 35.0}
set_db -quiet {port:controller/RegSrc[1]} .external_pin_cap_min 35.0
set_db -quiet {port:controller/RegSrc[1]} .external_capacitance_max {35.0 35.0}
set_db -quiet {port:controller/RegSrc[1]} .external_capacitance_min 35.0
set_db -quiet {port:controller/RegSrc[1]} .min_transition no_value
set_db -quiet {port:controller/RegSrc[1]} .original_name {RegSrc[1]}
set_db -quiet {port:controller/RegSrc[1]} .external_pin_cap {35.0 35.0}
set_db -quiet {port:controller/RegSrc[0]} .external_pin_cap_min 35.0
set_db -quiet {port:controller/RegSrc[0]} .external_capacitance_max {35.0 35.0}
set_db -quiet {port:controller/RegSrc[0]} .external_capacitance_min 35.0
set_db -quiet {port:controller/RegSrc[0]} .min_transition no_value
set_db -quiet {port:controller/RegSrc[0]} .original_name {RegSrc[0]}
set_db -quiet {port:controller/RegSrc[0]} .external_pin_cap {35.0 35.0}
set_db -quiet port:controller/ALUOp .external_pin_cap_min 35.0
set_db -quiet port:controller/ALUOp .external_capacitance_max {35.0 35.0}
set_db -quiet port:controller/ALUOp .external_capacitance_min 35.0
set_db -quiet port:controller/ALUOp .min_transition no_value
set_db -quiet port:controller/ALUOp .original_name ALUOp
set_db -quiet port:controller/ALUOp .external_pin_cap {35.0 35.0}
set_db -quiet port:controller/ALUSrcA .external_pin_cap_min 35.0
set_db -quiet port:controller/ALUSrcA .external_capacitance_max {35.0 35.0}
set_db -quiet port:controller/ALUSrcA .external_capacitance_min 35.0
set_db -quiet port:controller/ALUSrcA .min_transition no_value
set_db -quiet port:controller/ALUSrcA .original_name ALUSrcA
set_db -quiet port:controller/ALUSrcA .external_pin_cap {35.0 35.0}
set_db -quiet {port:controller/ALUSrcB[1]} .external_pin_cap_min 35.0
set_db -quiet {port:controller/ALUSrcB[1]} .external_capacitance_max {35.0 35.0}
set_db -quiet {port:controller/ALUSrcB[1]} .external_capacitance_min 35.0
set_db -quiet {port:controller/ALUSrcB[1]} .min_transition no_value
set_db -quiet {port:controller/ALUSrcB[1]} .original_name {ALUSrcB[1]}
set_db -quiet {port:controller/ALUSrcB[1]} .external_pin_cap {35.0 35.0}
set_db -quiet {port:controller/ALUSrcB[0]} .external_pin_cap_min 35.0
set_db -quiet {port:controller/ALUSrcB[0]} .external_capacitance_max {35.0 35.0}
set_db -quiet {port:controller/ALUSrcB[0]} .external_capacitance_min 35.0
set_db -quiet {port:controller/ALUSrcB[0]} .min_transition no_value
set_db -quiet {port:controller/ALUSrcB[0]} .original_name {ALUSrcB[0]}
set_db -quiet {port:controller/ALUSrcB[0]} .external_pin_cap {35.0 35.0}
set_db -quiet {port:controller/ResultSrc[1]} .external_pin_cap_min 35.0
set_db -quiet {port:controller/ResultSrc[1]} .external_capacitance_max {35.0 35.0}
set_db -quiet {port:controller/ResultSrc[1]} .external_capacitance_min 35.0
set_db -quiet {port:controller/ResultSrc[1]} .min_transition no_value
set_db -quiet {port:controller/ResultSrc[1]} .original_name {ResultSrc[1]}
set_db -quiet {port:controller/ResultSrc[1]} .external_pin_cap {35.0 35.0}
set_db -quiet {port:controller/ResultSrc[0]} .external_pin_cap_min 35.0
set_db -quiet {port:controller/ResultSrc[0]} .external_capacitance_max {35.0 35.0}
set_db -quiet {port:controller/ResultSrc[0]} .external_capacitance_min 35.0
set_db -quiet {port:controller/ResultSrc[0]} .min_transition no_value
set_db -quiet {port:controller/ResultSrc[0]} .original_name {ResultSrc[0]}
set_db -quiet {port:controller/ResultSrc[0]} .external_pin_cap {35.0 35.0}
set_db -quiet port:controller/ImmSrc .external_pin_cap_min 35.0
set_db -quiet port:controller/ImmSrc .external_capacitance_max {35.0 35.0}
set_db -quiet port:controller/ImmSrc .external_capacitance_min 35.0
set_db -quiet port:controller/ImmSrc .min_transition no_value
set_db -quiet port:controller/ImmSrc .original_name ImmSrc
set_db -quiet port:controller/ImmSrc .external_pin_cap {35.0 35.0}
set_db -quiet {inst:controller/cl_flagreg0_f_slave_q_reg[0]} .original_name {{cl/flagreg0/f/slave/q[0]}}
set_db -quiet {inst:controller/cl_flagreg0_f_slave_q_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:controller/cl_flagreg0_f_slave_q_reg[0]} .single_bit_orig_name {cl/flagreg0/f/slave/q[0]}
set_db -quiet {inst:controller/cl_flagreg0_f_slave_q_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:controller/cl_flagreg0_f_slave_q_reg[0]/q} .original_name {cl/flagreg0/f/slave/q[0]/q}
set_db -quiet {inst:controller/cl_flagreg1_f_slave_q_reg[0]} .original_name {{cl/flagreg1/f/slave/q[0]}}
set_db -quiet {inst:controller/cl_flagreg1_f_slave_q_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:controller/cl_flagreg1_f_slave_q_reg[0]} .single_bit_orig_name {cl/flagreg1/f/slave/q[0]}
set_db -quiet {inst:controller/cl_flagreg1_f_slave_q_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:controller/cl_flagreg1_f_slave_q_reg[0]/q} .original_name {cl/flagreg1/f/slave/q[0]/q}
set_db -quiet {inst:controller/cl_flagreg0_f_master_q_reg[0]} .original_name {{cl/flagreg0/f/master/q[0]}}
set_db -quiet {inst:controller/cl_flagreg0_f_master_q_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:controller/cl_flagreg0_f_master_q_reg[0]} .single_bit_orig_name {cl/flagreg0/f/master/q[0]}
set_db -quiet {inst:controller/cl_flagreg0_f_master_q_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:controller/cl_flagreg0_f_master_q_reg[0]/q} .original_name {cl/flagreg0/f/master/q[0]/q}
set_db -quiet {inst:controller/cl_flagreg1_f_master_q_reg[0]} .original_name {{cl/flagreg1/f/master/q[0]}}
set_db -quiet {inst:controller/cl_flagreg1_f_master_q_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:controller/cl_flagreg1_f_master_q_reg[0]} .single_bit_orig_name {cl/flagreg1/f/master/q[0]}
set_db -quiet {inst:controller/cl_flagreg1_f_master_q_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:controller/cl_flagreg1_f_master_q_reg[0]/q} .original_name {cl/flagreg1/f/master/q[0]/q}
set_db -quiet {inst:controller/cl_condreg_f_slave_q_reg[0]} .original_name {{cl/condreg/f/slave/q[0]}}
set_db -quiet {inst:controller/cl_condreg_f_slave_q_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:controller/cl_condreg_f_slave_q_reg[0]} .single_bit_orig_name {cl/condreg/f/slave/q[0]}
set_db -quiet {inst:controller/cl_condreg_f_slave_q_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:controller/cl_condreg_f_slave_q_reg[0]/q} .original_name {cl/condreg/f/slave/q[0]/q}
set_db -quiet {inst:controller/dec_fsm_statereg_f_slave_q_reg[3]} .original_name {{dec/fsm/statereg/f/slave/q[3]}}
set_db -quiet {inst:controller/dec_fsm_statereg_f_slave_q_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:controller/dec_fsm_statereg_f_slave_q_reg[3]} .single_bit_orig_name {dec/fsm/statereg/f/slave/q[3]}
set_db -quiet {inst:controller/dec_fsm_statereg_f_slave_q_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:controller/dec_fsm_statereg_f_slave_q_reg[3]/q} .original_name {dec/fsm/statereg/f/slave/q[3]/q}
set_db -quiet {inst:controller/dec_fsm_statereg_f_master_q_reg[3]} .original_name {{dec/fsm/statereg/f/master/q[3]}}
set_db -quiet {inst:controller/dec_fsm_statereg_f_master_q_reg[3]} .orig_hdl_instantiated false
set_db -quiet {inst:controller/dec_fsm_statereg_f_master_q_reg[3]} .single_bit_orig_name {dec/fsm/statereg/f/master/q[3]}
set_db -quiet {inst:controller/dec_fsm_statereg_f_master_q_reg[3]} .gint_phase_inversion false
set_db -quiet {pin:controller/dec_fsm_statereg_f_master_q_reg[3]/q} .original_name {dec/fsm/statereg/f/master/q[3]/q}
set_db -quiet {inst:controller/dec_fsm_statereg_f_slave_q_reg[1]} .original_name {{dec/fsm/statereg/f/slave/q[1]}}
set_db -quiet {inst:controller/dec_fsm_statereg_f_slave_q_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:controller/dec_fsm_statereg_f_slave_q_reg[1]} .single_bit_orig_name {dec/fsm/statereg/f/slave/q[1]}
set_db -quiet {inst:controller/dec_fsm_statereg_f_slave_q_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:controller/dec_fsm_statereg_f_slave_q_reg[1]/q} .original_name {dec/fsm/statereg/f/slave/q[1]/q}
set_db -quiet {inst:controller/cl_condreg_f_master_q_reg[0]} .original_name {{cl/condreg/f/master/q[0]}}
set_db -quiet {inst:controller/cl_condreg_f_master_q_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:controller/cl_condreg_f_master_q_reg[0]} .single_bit_orig_name {cl/condreg/f/master/q[0]}
set_db -quiet {inst:controller/cl_condreg_f_master_q_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:controller/cl_condreg_f_master_q_reg[0]/q} .original_name {cl/condreg/f/master/q[0]/q}
set_db -quiet {inst:controller/dec_fsm_statereg_f_slave_q_reg[2]} .original_name {{dec/fsm/statereg/f/slave/q[2]}}
set_db -quiet {inst:controller/dec_fsm_statereg_f_slave_q_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:controller/dec_fsm_statereg_f_slave_q_reg[2]} .single_bit_orig_name {dec/fsm/statereg/f/slave/q[2]}
set_db -quiet {inst:controller/dec_fsm_statereg_f_slave_q_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:controller/dec_fsm_statereg_f_slave_q_reg[2]/q} .original_name {dec/fsm/statereg/f/slave/q[2]/q}
set_db -quiet {inst:controller/dec_fsm_statereg_f_master_q_reg[1]} .original_name {{dec/fsm/statereg/f/master/q[1]}}
set_db -quiet {inst:controller/dec_fsm_statereg_f_master_q_reg[1]} .orig_hdl_instantiated false
set_db -quiet {inst:controller/dec_fsm_statereg_f_master_q_reg[1]} .single_bit_orig_name {dec/fsm/statereg/f/master/q[1]}
set_db -quiet {inst:controller/dec_fsm_statereg_f_master_q_reg[1]} .gint_phase_inversion false
set_db -quiet {pin:controller/dec_fsm_statereg_f_master_q_reg[1]/q} .original_name {dec/fsm/statereg/f/master/q[1]/q}
set_db -quiet {inst:controller/dec_fsm_statereg_f_master_q_reg[0]} .original_name {{dec/fsm/statereg/f/master/q[0]}}
set_db -quiet {inst:controller/dec_fsm_statereg_f_master_q_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:controller/dec_fsm_statereg_f_master_q_reg[0]} .single_bit_orig_name {dec/fsm/statereg/f/master/q[0]}
set_db -quiet {inst:controller/dec_fsm_statereg_f_master_q_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:controller/dec_fsm_statereg_f_master_q_reg[0]/q} .original_name {dec/fsm/statereg/f/master/q[0]/q}
set_db -quiet {inst:controller/dec_fsm_statereg_f_master_q_reg[2]} .original_name {{dec/fsm/statereg/f/master/q[2]}}
set_db -quiet {inst:controller/dec_fsm_statereg_f_master_q_reg[2]} .orig_hdl_instantiated false
set_db -quiet {inst:controller/dec_fsm_statereg_f_master_q_reg[2]} .single_bit_orig_name {dec/fsm/statereg/f/master/q[2]}
set_db -quiet {inst:controller/dec_fsm_statereg_f_master_q_reg[2]} .gint_phase_inversion false
set_db -quiet {pin:controller/dec_fsm_statereg_f_master_q_reg[2]/q} .original_name {dec/fsm/statereg/f/master/q[2]/q}
set_db -quiet {inst:controller/dec_fsm_statereg_f_slave_q_reg[0]} .original_name {{dec/fsm/statereg/f/slave/q[0]}}
set_db -quiet {inst:controller/dec_fsm_statereg_f_slave_q_reg[0]} .orig_hdl_instantiated false
set_db -quiet {inst:controller/dec_fsm_statereg_f_slave_q_reg[0]} .single_bit_orig_name {dec/fsm/statereg/f/slave/q[0]}
set_db -quiet {inst:controller/dec_fsm_statereg_f_slave_q_reg[0]} .gint_phase_inversion false
set_db -quiet {pin:controller/dec_fsm_statereg_f_slave_q_reg[0]/q} .original_name {dec/fsm/statereg/f/slave/q[0]/q}
# BEGIN PMBIST SECTION
# END PMBIST SECTION
# BEGIN PHYSICAL ANNOTATION SECTION
# END PHYSICAL ANNOTATION SECTION
set_db -quiet source_verbose true
#############################################################
#####   FLOW WRITE   ########################################
##
## Written by Genus(TM) Synthesis Solution version 17.24-s038_1
## Written on 22:49:58 22-Apr 2023
#############################################################
#####   Flow Definitions   ##################################

#############################################################
#####   Step Definitions   ##################################


#############################################################
#####   Attribute Definitions   #############################

if {[is_attribute flow_edit_wildcard_end_steps -obj_type root]} {set_db flow_edit_wildcard_end_steps {}}
if {[is_attribute flow_edit_wildcard_start_steps -obj_type root]} {set_db flow_edit_wildcard_start_steps {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_db flow_footer_tcl {}}
if {[is_attribute flow_header_tcl -obj_type root]} {set_db flow_header_tcl {}}
if {[is_attribute flow_metadata -obj_type root]} {set_db flow_metadata {}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_db flow_step_check_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_db flow_step_end_tcl {}}
if {[is_attribute flow_step_order -obj_type root]} {set_db flow_step_order {}}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_db flow_summary_tcl {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_db flow_template_feature_definition {}}
if {[is_attribute flow_template_type -obj_type root]} {set_db flow_template_type {}}
if {[is_attribute flow_template_version -obj_type root]} {set_db flow_template_version {}}
if {[is_attribute flow_user_templates -obj_type root]} {set_db flow_user_templates {}}


#############################################################
#####   Flow History   ######################################

if {[is_attribute flow_branch -obj_type root]} {set_db flow_branch {}}
if {[is_attribute flow_caller_data -obj_type root]} {set_db flow_caller_data {}}
if {[is_attribute flow_current -obj_type root]} {set_db flow_current {}}
if {[is_attribute flow_hier_path -obj_type root]} {set_db flow_hier_path {}}
if {[is_attribute flow_database_directory -obj_type root]} {set_db flow_database_directory dbs}
if {[is_attribute flow_exit_when_done -obj_type root]} {set_db flow_exit_when_done false}
if {[is_attribute flow_history -obj_type root]} {set_db flow_history {}}
if {[is_attribute flow_log_directory -obj_type root]} {set_db flow_log_directory logs}
if {[is_attribute flow_mail_on_error -obj_type root]} {set_db flow_mail_on_error false}
if {[is_attribute flow_mail_to -obj_type root]} {set_db flow_mail_to {}}
if {[is_attribute flow_metrics_file -obj_type root]} {set_db flow_metrics_file {}}
if {[is_attribute flow_metrics_snapshot_parent_uuid -obj_type root]} {set_db flow_metrics_snapshot_parent_uuid {}}
if {[is_attribute flow_metrics_snapshot_uuid -obj_type root]} {set_db flow_metrics_snapshot_uuid e5bd3518-662d-4393-b280-d70df4c414e8}
if {[is_attribute flow_overwrite_database -obj_type root]} {set_db flow_overwrite_database false}
if {[is_attribute flow_report_directory -obj_type root]} {set_db flow_report_directory reports}
if {[is_attribute flow_run_tag -obj_type root]} {set_db flow_run_tag {}}
if {[is_attribute flow_schedule -obj_type root]} {set_db flow_schedule {}}
if {[is_attribute flow_script -obj_type root]} {set_db flow_script {}}
if {[is_attribute flow_starting_db -obj_type root]} {set_db flow_starting_db {}}
if {[is_attribute flow_status_file -obj_type root]} {set_db flow_status_file {}}
if {[is_attribute flow_step_canonical_current -obj_type root]} {set_db flow_step_canonical_current {}}
if {[is_attribute flow_step_current -obj_type root]} {set_db flow_step_current {}}
if {[is_attribute flow_step_last -obj_type root]} {set_db flow_step_last {}}
if {[is_attribute flow_step_last_msg -obj_type root]} {set_db flow_step_last_msg {}}
if {[is_attribute flow_step_last_status -obj_type root]} {set_db flow_step_last_status not_run}
if {[is_attribute flow_step_next -obj_type root]} {set_db flow_step_next {}}
if {[is_attribute flow_working_directory -obj_type root]} {set_db flow_working_directory .}

#############################################################
#####   User Defined Attributes   ###########################

