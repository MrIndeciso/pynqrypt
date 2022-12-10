############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project pynqrypt-vitis-hls
set_top pynqrypt_encrypt
add_files hw-impl/src/pynqrypt_hls.hpp
add_files hw-impl/src/pynqrypt_hls.cpp
add_files hw-impl/src/pynqrypt.hpp
add_files hw-impl/src/pynqrypt.cpp
add_files hw-impl/src/constants.hpp
add_files -tb hw-impl/src/test.cpp -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb hw-impl/src/nonce.bin -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb hw-impl/src/key.bin -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb hw-impl/src/data_enc_openssl.bin -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb hw-impl/src/data.bin -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "pynqrypt" -flow_target vivado
set_part {xc7z020i-clg400-1L}
create_clock -period 10 -name default
config_cosim -enable_dataflow_profiling
config_export -format ip_catalog -output /home/mrindeciso/Documents/pynqrypt/pynqrypt-vitis-hls -rtl verilog -vivado_clock 10
source "./pynqrypt-vitis-hls/pynqrypt/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -flow syn -rtl verilog -format ip_catalog -output /home/mrindeciso/Documents/pynqrypt/pynqrypt-vitis-hls
