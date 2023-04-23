set myClk ph1
set virtual 0

# Timing and loading information				
set myPeriod_ns 10              ;# desired clock period (in ns) (sets speed goal)
set myInDelay_ns 0.5              ;# delay from clock to inputs valid
set myOutDelay_ns 0.5             ;# delay from clock to output valid
set myInputBuf inv_4x          ;# name of cell driving the inputs
set myLoadLibrary muddlib         ;# name of library the cell comes from
set myLoadPin a            ;# name of pin that the outputs drive

if {  $virtual == 0 } {
   create_clock -period $myPeriod_ns $myClk
} else {
   create_clock -period $myPeriod_ns -name $myClk
}

# Set the driving cell for all inputs except the clock	   
# The clock has infinite drive by default. This is usually  
# what you want for synthesis because you will use other   
# tools (like SOC Encounter) to build the clock tree 	    
# (or define it by hand).    	       
if {  $virtual == 0 } {
    set_driving_cell  -library $myLoadLibrary -lib_cell $myInputBuf  [all_inputs] \
} else {
   set_driving_cell  -library $myLoadLibrary -lib_cell $myInputBuf   \
         [remove_from_collection [all_inputs] $myClk]
}

# set the input and output delay relative to myClk         
if {  $virtual == 0 } {
    set_input_delay $myInDelay_ns -clock $myClk [all_inputs] \
} else {
    set_input_delay $myInDelay_ns -clock $myClk \
     [remove_from_collection [all_inputs] $myClk]
}
set_output_delay $myOutDelay_ns -clock $myClk [all_outputs]

# set the load of the circuit outputs in terms of the load 
# of the next cell that they will drive, also try to fix   
# hold time issues					   
set_load [load_of [format "%s%s%s%s%s" $myLoadLibrary "/" $myInputBuf "/" $myLoadPin]] [all_outputs]
set_fix_hold $myClk

# This command will fix the problem of having             
# assign statements left in your structural file.         
# But, it will insert pairs of inverters for feedthroughs!
set_fix_multiple_port_nets -all -buffer_constants