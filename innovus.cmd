#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sat Apr 22 22:59:02 2023                
#                                                     
#######################################################

#@(#)CDS: Innovus v17.12-s095_1 (64bit) 11/09/2017 12:10 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 17.12-s095_1 NR171102-1913/17_12-UB (database version 2.30, 405.7.1) {superthreading v1.44}
#@(#)CDS: AAE 17.12-s040 (64bit) 11/09/2017 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 17.12-s036_1 () Nov  2 2017 09:33:40 ( )
#@(#)CDS: SYNTECH 17.12-s012_1 () Oct 31 2017 04:30:11 ( )
#@(#)CDS: CPE v17.12-s076
#@(#)CDS: IQRC/TQRC 16.1.1-s220 (64bit) Fri Aug  4 09:53:48 PDT 2017 (Linux 2.6.18-194.el5)

set_db init_netlist_files outputs_Apr22-22:49:46/controller_m.v
set_db init_lef_files muddlib.lef
set_db init_power_nets V
set_db init_power_nets VD
set_db init_power_nets VDD
set_db init_ground_nets V
set_db init_ground_nets VS
set_db init_ground_nets VSS
set_db init_power_nets VDD
set_db init_power_nets VDD
set_db init_ground_nets VSS
set_db init_ground_nets VSS
read_physical -lef muddlib.lef
read_netlist outputs_Apr22-22:49:46/controller_m.v
set_current_design {}
init_design
eval_legacy { setLibraryUnit -time none -internal }
set_db floorplan_is_max_io_height 1
set_io_flow_flag 0
create_floorplan -core_density_size 1.0 0.7 0 0 0 0 -flip f
gui_fit
get_io_flow_flag
set_io_flow_flag 0
create_floorplan -site core -core_density_size 0.788979336255 0.699884 30 30 30 30
gui_set_tool select
get_io_flow_flag
gui_fit
get_io_flow_flag
write_db controller_floorplan.enc
write_db controller_floorplan.enc
create_pg_pin -name VDD -net VDD
create_pg_pin -name VSS -net VSS
create_pg_pin -name VSS -net VSS
connect_global_net VDD -type pgpin -pin vdd! -all
connect_global_net VSS -type pgpin -pin gnd! -all
set_db place_global_place_io_pins true
set_db add_rings_target default
set_db add_rings_extend_over_row 0
set_db add_rings_ignore_rows 0
set_db add_rings_avoid_short 0
set_db add_rings_skip_shared_inner_ring none
set_db add_rings_stacked_via_top_layer metal3
set_db add_rings_stacked_via_bottom_layer metal1
set_db add_rings_via_using_exact_crossover_size 1
set_db add_rings_orthogonal_only 1
set_db add_rings_skip_via_on_pin standardcell
set_db add_rings_skip_via_on_wire_shape noshape
add_rings -nets {VDD VSS} -type core_rings -follow core -layer {top metal1 bottom metal1 left metal2 right metal2} -width {top 9.9 bottom 9.9 left 9.9 right 9.9} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corners {lt } -threshold 0 -jog_distance 0 -snap_wire_center_to_grid none
set_db route_special_via_connect_to_shape noshape
route_special -connect {block_pin pad_pin pad_ring core_pin floating_stripe} -layer_change_range { metal1(1) metal3(3) } -block_pin_target {nearest_target} -pad_pin_port_connect {all_port one_geom} -pad_pin_target {nearest_target} -core_pin_target {first_after_row_end} -floating_stripe_target {block_ring pad_ring ring stripe ring_pin block_pin followpin} -allow_jogging 1 -crossover_via_layer_range { metal1(1) metal3(3) } -nets { VDD VSS } -allow_layer_change 1 -block_pin use_lef -target_via_layer_range { metal1(1) metal3(3) }
gui_select -point {-37.870 110.890}
get_multi_cpu_usage -local_cpu
set_db place_design_floorplan_mode 0
eval_legacy { report_message -start_cmd }
get_proto_model -type_match {flex_module flex_instgroup} -committed -name -tcl
set_db extract_rc_engine pre_route
set_db timing_analysis_clock_source_paths 0
set_db timing_analysis_clock_propagation_mode forced_ideal
set_db timing_analysis_clock_source_paths 0
set_db timing_analysis_clock_propagation_mode forced_ideal
reorder_scan
eval_legacy { is_attribute metric_current_run_id -obj_type root }
eval_legacy { is_attribute metric_advanced_url_endpoint -obj_type root }
eval_legacy { is_attribute metric_current_run_id -obj_type root }
eval_legacy { is_attribute metric_summary_metrics -obj_type root }
set_db flow_schedule {}
set_db flow_schedule {}
set_db flow_metrics_snapshot_uuid 522c891d
set_db flow_metrics_snapshot_uuid 522c891d
eval_legacy { is_attribute metric_current_run_id -obj_type root }
eval_legacy { is_attribute metric_advanced_url_endpoint -obj_type root }
eval_legacy { is_attribute metric_current_run_id -obj_type root }
eval_legacy { is_attribute metric_summary_metrics -obj_type root }
set_db flow_schedule {}
set_db flow_schedule {}
set_db flow_metrics_snapshot_uuid 522c891e
set_db flow_metrics_snapshot_uuid 522c891e
get_proto_model -type_match {flex_module flex_instgroup} -committed -name -tcl
place_fix_congestion
puts {***** Total cpu  0:0:1}
puts {***** Total real time  0:0:1}
set_db timing_analysis_clock_source_paths 1
set_db timing_analysis_clock_propagation_mode sdc_control
set_db timing_analysis_clock_source_paths 1
set_db timing_analysis_clock_propagation_mode sdc_control
set_db extract_rc_engine pre_route
set_db delaycal_ignore_net_load 0
eval_legacy { report_message -end_cmd }
eval_legacy { is_attribute metric_current_run_id -obj_type root }
eval_legacy { is_attribute metric_advanced_url_endpoint -obj_type root }
eval_legacy { is_attribute metric_current_run_id -obj_type root }
eval_legacy { is_attribute metric_summary_metrics -obj_type root }
set_db flow_schedule {}
set_db flow_schedule {}
set_db flow_metrics_snapshot_uuid 522c891a
set_db flow_metrics_snapshot_uuid 522c891a
eval_legacy { is_attribute metric_category_default -obj_type root }
eval_legacy { is_attribute metric_category_tcl -obj_type root }
eval_legacy { is_attribute metric_capture_design_image -obj_type root }
eval_legacy { is_attribute -obj_type root flow_run_tag }
eval_legacy { is_attribute flow_template_feature_definition -obj_type root }
eval_legacy { is_attribute flow_template_type -obj_type root }
report_messages -errors
eval_legacy { is_attribute metric_current_run_id -obj_type root }
eval_legacy { is_attribute metric_advanced_url_endpoint -obj_type root }
eval_legacy { is_attribute metric_current_run_id -obj_type root }
eval_legacy { is_attribute metric_current_run_id -obj_type root }
eval_legacy { is_attribute metric_advanced_url_endpoint -obj_type root }
eval_legacy { is_attribute metric_current_run_id -obj_type root }
eval_legacy { is_attribute metric_advanced_url_endpoint -obj_type root }
eval_legacy { is_attribute metric_summary_metrics -obj_type root }
set_db flow_schedule {}
set_db flow_schedule {}
set_db flow_metrics_snapshot_uuid 522cb68a
set_db flow_metrics_snapshot_uuid 522cb68a
gui_set_draw_view place
get_multi_cpu_usage -local_cpu
get_multi_cpu_usage -cpu_per_remote_host
get_multi_cpu_usage -remote_host
set_db route_design_with_timing_driven 0
set_db route_design_with_si_driven 0
route_design -global_detail -via_opt -wire_opt
reset_db route_design_detail_post_route_spread_wire
set_db route_design_reserve_space_for_multi_cut 1
set_db route_design_concurrent_minimize_via_count_effort high
set_db route_design_detail_post_route_spread_wire 0.500000
set_db route_design_detail_post_route_spread_wire auto
reset_db route_design_detail_post_route_wire_widen
reset_db route_design_detail_post_route_spread_wire
set_db route_design_detail_post_route_spread_wire auto
reset_db route_design_detail_post_route_wire_widen
set_db route_design_with_si_driven 0
set_db route_design_with_timing_driven 0
reset_db route_design_concurrent_minimize_via_count_effort
reset_db route_design_reserve_space_for_multi_cut
reset_db route_design_detail_post_route_spread_wire
add_fillers -base_cells fill_1_wide -prefix FILLER
set_db opt_fix_fanout_load 0
set_db delaycal_enable_si true
opt_design -post_route
set_db opt_all_end_points 1
set_db delaycal_enable_high_fanout 1
set_db delaycal_eng_copyNetPropToNewNet 1
set_db si_delay_separate_on_data true
set_db opt_post_route_area_reclaim none
set_db opt_drv_margin 0
set_db opt_post_route_area_reclaim none
reset_db opt_post_route_area_reclaim
set_db opt_all_end_points 0
reset_db opt_all_end_points
get_multi_cpu_usage -local_cpu
set_db check_implant 1
set_db check_drc_implant_across_rows 0
set_db check_drc_ndr_spacing 0
set_db check_drc_inside_via_def 0
set_db check_drc_exclude_pg_net 0
set_db check_drc_ignore_trial_route 0
set_db check_drc_report controller.drc.rpt
set_db check_drc_limit 1000
check_drc
set_db route_design_strict_honor_route_rule false
set_db route_design_strict_honor_route_rule false
set_db check_drc_area {0 0 0 0}
check_connectivity -type all -error 1000 -warning 50
write_db controller_floorplan.enc
write_db controller_floorplan.enc
set_db write_def_lef_out_version 5.8
global dbgLefDefOutVersion
set_db write_def_lef_out_version 5.8
write_def -floorplan -netlist -routing controller.def
set_db write_def_lef_out_version 5.8
set_db write_def_lef_out_version 5.8
