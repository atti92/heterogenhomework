############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project project1
set_top fir_hw
add_files _src/coeffs.h
add_files _src/fir_hw.cpp
add_files _src/types.h
add_files -tb _src/fir_sw.cpp
add_files -tb _src/main.cpp
open_solution "solution1"
set_part {xc6slx9tqg144-2}
create_clock -period 10 -name default
#source "./project1/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
