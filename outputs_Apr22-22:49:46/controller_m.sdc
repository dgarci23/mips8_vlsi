# ####################################################################

#  Created by Genus(TM) Synthesis Solution 17.24-s038_1 on Sat Apr 22 22:49:59 EDT 2023

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design controller

create_clock -name "ph1" -period 10.0 -waveform {0.0 5.0} [get_ports ph1]
set_load -pin_load 0.035 [get_ports PCWrite]
set_load -pin_load 0.035 [get_ports MemWrite]
set_load -pin_load 0.035 [get_ports RegWrite]
set_load -pin_load 0.035 [get_ports {IRWrite[3]}]
set_load -pin_load 0.035 [get_ports {IRWrite[2]}]
set_load -pin_load 0.035 [get_ports {IRWrite[1]}]
set_load -pin_load 0.035 [get_ports {IRWrite[0]}]
set_load -pin_load 0.035 [get_ports AdrSrc]
set_load -pin_load 0.035 [get_ports {RegSrc[1]}]
set_load -pin_load 0.035 [get_ports {RegSrc[0]}]
set_load -pin_load 0.035 [get_ports ALUOp]
set_load -pin_load 0.035 [get_ports ALUSrcA]
set_load -pin_load 0.035 [get_ports {ALUSrcB[1]}]
set_load -pin_load 0.035 [get_ports {ALUSrcB[0]}]
set_load -pin_load 0.035 [get_ports {ResultSrc[1]}]
set_load -pin_load 0.035 [get_ports {ResultSrc[0]}]
set_load -pin_load 0.035 [get_ports ImmSrc]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports ph1]
set_input_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports ph2]
set_input_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports reset]
set_input_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports {Instr[31]}]
set_input_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports {Instr[30]}]
set_input_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports {Instr[29]}]
set_input_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports {Instr[28]}]
set_input_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports {Instr[27]}]
set_input_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports {Instr[26]}]
set_input_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports {Instr[25]}]
set_input_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports {Funct[0]}]
set_input_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports {Rd[2]}]
set_input_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports {Rd[1]}]
set_input_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports {Rd[0]}]
set_input_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports {ALUFlags[1]}]
set_input_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports {ALUFlags[0]}]
set_input_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports {FlagW[1]}]
set_input_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports {FlagW[0]}]
set_output_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports PCWrite]
set_output_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports MemWrite]
set_output_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports RegWrite]
set_output_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports {IRWrite[3]}]
set_output_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports {IRWrite[2]}]
set_output_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports {IRWrite[1]}]
set_output_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports {IRWrite[0]}]
set_output_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports AdrSrc]
set_output_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports {RegSrc[1]}]
set_output_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports {RegSrc[0]}]
set_output_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports ALUOp]
set_output_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports ALUSrcA]
set_output_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports {ALUSrcB[1]}]
set_output_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports {ALUSrcB[0]}]
set_output_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports {ResultSrc[1]}]
set_output_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports {ResultSrc[0]}]
set_output_delay -clock [get_clocks ph1] -add_delay 0.5 [get_ports ImmSrc]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports ph1]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports ph2]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports reset]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {Instr[31]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {Instr[30]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {Instr[29]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {Instr[28]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {Instr[27]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {Instr[26]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {Instr[25]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {Funct[0]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {Rd[2]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {Rd[1]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {Rd[0]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {ALUFlags[1]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {ALUFlags[0]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {FlagW[1]}]
set_driving_cell -lib_cell inv_4x -library muddlib -pin "y" [get_ports {FlagW[0]}]
set_wire_load_selection_group "foo" -library "muddlib"
## List of unsupported SDC commands ##
set_fix_multiple_port_nets -all -buffer_constants
