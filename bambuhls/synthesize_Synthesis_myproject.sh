#!/bin/bash
##########################################################
#     Automatically generated by the PandA framework     #
##########################################################

# Synthesis script for COMPONENT: myproject

#configuration
. /opt/Xilinx/Vivado/2021.1/settings64.sh >& /dev/null; 

# STEP: vivado_flow
cd /home/li/bambuhls
ulimit -s 131072; vivado -mode batch -nojournal -nolog -source /home/li/bambuhls/HLS_output//Synthesis/vivado_flow_9/vivado.tcl


