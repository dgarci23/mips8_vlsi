#####################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 04/22/2023 22:49:59
#
#####################################################################


read_mmmc genus_invs_des/genus.mmmc.tcl

read_physical -lef {/escnfs/courses/fa22-cse-40462.01/dropbox/dgarci23/mips8/muddlib.lef}

read_netlist genus_invs_des/genus.v

init_design -skip_sdc_read
