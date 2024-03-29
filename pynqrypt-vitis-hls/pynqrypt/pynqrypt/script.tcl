############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project pynqrypt
set_top pynqrypt_encrypt
add_files ../hw-impl/src/pynqrypt_hls.hpp
add_files ../hw-impl/src/pynqrypt_hls.cpp
add_files ../hw-impl/src/pynqrypt.hpp
add_files ../hw-impl/src/pynqrypt.cpp
add_files ../hw-impl/src/constants.hpp
add_files -tb ../hw-impl/src/test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb ../hw-impl/src/nonce.bin -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb ../hw-impl/src/key.bin -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb ../hw-impl/src/data_enc_openssl.bin -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb ../hw-impl/src/data.bin -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "pynqrypt" -flow_target vivado
set_part {xc7z020i-clg400-1L}
create_clock -period 10 -name default
source "./pynqrypt/pynqrypt/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
