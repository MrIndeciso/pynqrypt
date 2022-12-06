// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="pynqrypt_encrypt_pynqrypt_encrypt,hls_ip_2022_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020i-clg400-1L,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=7.300000,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=4,HLS_SYN_DSP=0,HLS_SYN_FF=3489,HLS_SYN_LUT=8201,HLS_VERSION=2022_2}" *)

module pynqrypt_encrypt (
        ap_clk,
        ap_rst_n,
        s_axi_control_AWVALID,
        s_axi_control_AWREADY,
        s_axi_control_AWADDR,
        s_axi_control_WVALID,
        s_axi_control_WREADY,
        s_axi_control_WDATA,
        s_axi_control_WSTRB,
        s_axi_control_ARVALID,
        s_axi_control_ARREADY,
        s_axi_control_ARADDR,
        s_axi_control_RVALID,
        s_axi_control_RREADY,
        s_axi_control_RDATA,
        s_axi_control_RRESP,
        s_axi_control_BVALID,
        s_axi_control_BREADY,
        s_axi_control_BRESP,
        interrupt,
        m_axi_gmem_AWVALID,
        m_axi_gmem_AWREADY,
        m_axi_gmem_AWADDR,
        m_axi_gmem_AWID,
        m_axi_gmem_AWLEN,
        m_axi_gmem_AWSIZE,
        m_axi_gmem_AWBURST,
        m_axi_gmem_AWLOCK,
        m_axi_gmem_AWCACHE,
        m_axi_gmem_AWPROT,
        m_axi_gmem_AWQOS,
        m_axi_gmem_AWREGION,
        m_axi_gmem_AWUSER,
        m_axi_gmem_WVALID,
        m_axi_gmem_WREADY,
        m_axi_gmem_WDATA,
        m_axi_gmem_WSTRB,
        m_axi_gmem_WLAST,
        m_axi_gmem_WID,
        m_axi_gmem_WUSER,
        m_axi_gmem_ARVALID,
        m_axi_gmem_ARREADY,
        m_axi_gmem_ARADDR,
        m_axi_gmem_ARID,
        m_axi_gmem_ARLEN,
        m_axi_gmem_ARSIZE,
        m_axi_gmem_ARBURST,
        m_axi_gmem_ARLOCK,
        m_axi_gmem_ARCACHE,
        m_axi_gmem_ARPROT,
        m_axi_gmem_ARQOS,
        m_axi_gmem_ARREGION,
        m_axi_gmem_ARUSER,
        m_axi_gmem_RVALID,
        m_axi_gmem_RREADY,
        m_axi_gmem_RDATA,
        m_axi_gmem_RLAST,
        m_axi_gmem_RID,
        m_axi_gmem_RUSER,
        m_axi_gmem_RRESP,
        m_axi_gmem_BVALID,
        m_axi_gmem_BREADY,
        m_axi_gmem_BRESP,
        m_axi_gmem_BID,
        m_axi_gmem_BUSER
);

parameter    C_S_AXI_CONTROL_DATA_WIDTH = 32;
parameter    C_S_AXI_CONTROL_ADDR_WIDTH = 7;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    C_M_AXI_GMEM_ID_WIDTH = 1;
parameter    C_M_AXI_GMEM_ADDR_WIDTH = 64;
parameter    C_M_AXI_GMEM_DATA_WIDTH = 32;
parameter    C_M_AXI_GMEM_AWUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_ARUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_WUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_RUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_BUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_USER_VALUE = 0;
parameter    C_M_AXI_GMEM_PROT_VALUE = 0;
parameter    C_M_AXI_GMEM_CACHE_VALUE = 3;
parameter    C_M_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CONTROL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_GMEM_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
input   s_axi_control_AWVALID;
output   s_axi_control_AWREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_AWADDR;
input   s_axi_control_WVALID;
output   s_axi_control_WREADY;
input  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_WDATA;
input  [C_S_AXI_CONTROL_WSTRB_WIDTH - 1:0] s_axi_control_WSTRB;
input   s_axi_control_ARVALID;
output   s_axi_control_ARREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_ARADDR;
output   s_axi_control_RVALID;
input   s_axi_control_RREADY;
output  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_RDATA;
output  [1:0] s_axi_control_RRESP;
output   s_axi_control_BVALID;
input   s_axi_control_BREADY;
output  [1:0] s_axi_control_BRESP;
output   interrupt;
output   m_axi_gmem_AWVALID;
input   m_axi_gmem_AWREADY;
output  [C_M_AXI_GMEM_ADDR_WIDTH - 1:0] m_axi_gmem_AWADDR;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_AWID;
output  [7:0] m_axi_gmem_AWLEN;
output  [2:0] m_axi_gmem_AWSIZE;
output  [1:0] m_axi_gmem_AWBURST;
output  [1:0] m_axi_gmem_AWLOCK;
output  [3:0] m_axi_gmem_AWCACHE;
output  [2:0] m_axi_gmem_AWPROT;
output  [3:0] m_axi_gmem_AWQOS;
output  [3:0] m_axi_gmem_AWREGION;
output  [C_M_AXI_GMEM_AWUSER_WIDTH - 1:0] m_axi_gmem_AWUSER;
output   m_axi_gmem_WVALID;
input   m_axi_gmem_WREADY;
output  [C_M_AXI_GMEM_DATA_WIDTH - 1:0] m_axi_gmem_WDATA;
output  [C_M_AXI_GMEM_WSTRB_WIDTH - 1:0] m_axi_gmem_WSTRB;
output   m_axi_gmem_WLAST;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_WID;
output  [C_M_AXI_GMEM_WUSER_WIDTH - 1:0] m_axi_gmem_WUSER;
output   m_axi_gmem_ARVALID;
input   m_axi_gmem_ARREADY;
output  [C_M_AXI_GMEM_ADDR_WIDTH - 1:0] m_axi_gmem_ARADDR;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_ARID;
output  [7:0] m_axi_gmem_ARLEN;
output  [2:0] m_axi_gmem_ARSIZE;
output  [1:0] m_axi_gmem_ARBURST;
output  [1:0] m_axi_gmem_ARLOCK;
output  [3:0] m_axi_gmem_ARCACHE;
output  [2:0] m_axi_gmem_ARPROT;
output  [3:0] m_axi_gmem_ARQOS;
output  [3:0] m_axi_gmem_ARREGION;
output  [C_M_AXI_GMEM_ARUSER_WIDTH - 1:0] m_axi_gmem_ARUSER;
input   m_axi_gmem_RVALID;
output   m_axi_gmem_RREADY;
input  [C_M_AXI_GMEM_DATA_WIDTH - 1:0] m_axi_gmem_RDATA;
input   m_axi_gmem_RLAST;
input  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_RID;
input  [C_M_AXI_GMEM_RUSER_WIDTH - 1:0] m_axi_gmem_RUSER;
input  [1:0] m_axi_gmem_RRESP;
input   m_axi_gmem_BVALID;
output   m_axi_gmem_BREADY;
input  [1:0] m_axi_gmem_BRESP;
input  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_BID;
input  [C_M_AXI_GMEM_BUSER_WIDTH - 1:0] m_axi_gmem_BUSER;

 reg    ap_rst_n_inv;
wire   [7:0] pynqrypt_round_keys_i_q0;
wire   [7:0] pynqrypt_round_keys_i_q1;
wire   [7:0] pynqrypt_round_keys_t_q0;
wire   [7:0] pynqrypt_round_keys_t_q1;
wire   [7:0] pynqrypt_key_i_q0;
wire   [7:0] pynqrypt_key_t_q0;
wire   [7:0] pynqrypt_nonce_i_q0;
wire   [7:0] pynqrypt_nonce_t_q0;
wire   [7:0] key_q0;
wire   [7:0] nonce_q0;
wire   [63:0] plaintext_length;
wire   [63:0] plaintext;
wire   [63:0] ciphertext;
wire    ap_start;
wire    ap_ready;
wire    ap_done;
wire    ap_idle;
wire    gmem_AWREADY;
wire    gmem_WREADY;
wire    gmem_ARREADY;
wire    gmem_RVALID;
wire   [7:0] gmem_RDATA;
wire    gmem_RLAST;
wire   [0:0] gmem_RID;
wire   [10:0] gmem_RFIFONUM;
wire   [0:0] gmem_RUSER;
wire   [1:0] gmem_RRESP;
wire    gmem_BVALID;
wire   [1:0] gmem_BRESP;
wire   [0:0] gmem_BID;
wire   [0:0] gmem_BUSER;
wire    entry_proc_U0_ap_start;
wire    entry_proc_U0_ap_done;
wire    entry_proc_U0_ap_continue;
wire    entry_proc_U0_ap_idle;
wire    entry_proc_U0_ap_ready;
wire   [63:0] entry_proc_U0_plaintext_length_c_din;
wire    entry_proc_U0_plaintext_length_c_write;
wire   [63:0] entry_proc_U0_plaintext_c_din;
wire    entry_proc_U0_plaintext_c_write;
wire   [63:0] entry_proc_U0_ciphertext_c_din;
wire    entry_proc_U0_ciphertext_c_write;
wire    Loop_1_proc_U0_ap_start;
wire    Loop_1_proc_U0_ap_done;
wire    Loop_1_proc_U0_ap_continue;
wire    Loop_1_proc_U0_ap_idle;
wire    Loop_1_proc_U0_ap_ready;
wire   [3:0] Loop_1_proc_U0_key_address0;
wire    Loop_1_proc_U0_key_ce0;
wire   [3:0] Loop_1_proc_U0_pynqrypt_key_address0;
wire    Loop_1_proc_U0_pynqrypt_key_ce0;
wire    Loop_1_proc_U0_pynqrypt_key_we0;
wire   [7:0] Loop_1_proc_U0_pynqrypt_key_d0;
wire    Loop_2_proc_U0_ap_start;
wire    Loop_2_proc_U0_ap_done;
wire    Loop_2_proc_U0_ap_continue;
wire    Loop_2_proc_U0_ap_idle;
wire    Loop_2_proc_U0_ap_ready;
wire   [3:0] Loop_2_proc_U0_nonce_address0;
wire    Loop_2_proc_U0_nonce_ce0;
wire   [3:0] Loop_2_proc_U0_pynqrypt_nonce_address0;
wire    Loop_2_proc_U0_pynqrypt_nonce_ce0;
wire    Loop_2_proc_U0_pynqrypt_nonce_we0;
wire   [7:0] Loop_2_proc_U0_pynqrypt_nonce_d0;
wire    aes_generate_round_keys_U0_ap_start;
wire    aes_generate_round_keys_U0_ap_done;
wire    aes_generate_round_keys_U0_ap_continue;
wire    aes_generate_round_keys_U0_ap_idle;
wire    aes_generate_round_keys_U0_ap_ready;
wire   [3:0] aes_generate_round_keys_U0_this_key_address0;
wire    aes_generate_round_keys_U0_this_key_ce0;
wire   [7:0] aes_generate_round_keys_U0_pynqrypt_round_keys_address0;
wire    aes_generate_round_keys_U0_pynqrypt_round_keys_ce0;
wire    aes_generate_round_keys_U0_pynqrypt_round_keys_we0;
wire   [7:0] aes_generate_round_keys_U0_pynqrypt_round_keys_d0;
wire   [7:0] aes_generate_round_keys_U0_pynqrypt_round_keys_address1;
wire    aes_generate_round_keys_U0_pynqrypt_round_keys_ce1;
wire    aes_generate_round_keys_U0_pynqrypt_round_keys_we1;
wire   [7:0] aes_generate_round_keys_U0_pynqrypt_round_keys_d1;
wire    ctr_encrypt_U0_ap_start;
wire    ctr_encrypt_U0_ap_done;
wire    ctr_encrypt_U0_ap_continue;
wire    ctr_encrypt_U0_ap_idle;
wire    ctr_encrypt_U0_ap_ready;
wire   [3:0] ctr_encrypt_U0_this_nonce_address0;
wire    ctr_encrypt_U0_this_nonce_ce0;
wire   [7:0] ctr_encrypt_U0_pynqrypt_round_keys_address0;
wire    ctr_encrypt_U0_pynqrypt_round_keys_ce0;
wire   [7:0] ctr_encrypt_U0_pynqrypt_round_keys_address1;
wire    ctr_encrypt_U0_pynqrypt_round_keys_ce1;
wire    ctr_encrypt_U0_plaintext_length_read;
wire    ctr_encrypt_U0_m_axi_gmem_AWVALID;
wire   [63:0] ctr_encrypt_U0_m_axi_gmem_AWADDR;
wire   [0:0] ctr_encrypt_U0_m_axi_gmem_AWID;
wire   [31:0] ctr_encrypt_U0_m_axi_gmem_AWLEN;
wire   [2:0] ctr_encrypt_U0_m_axi_gmem_AWSIZE;
wire   [1:0] ctr_encrypt_U0_m_axi_gmem_AWBURST;
wire   [1:0] ctr_encrypt_U0_m_axi_gmem_AWLOCK;
wire   [3:0] ctr_encrypt_U0_m_axi_gmem_AWCACHE;
wire   [2:0] ctr_encrypt_U0_m_axi_gmem_AWPROT;
wire   [3:0] ctr_encrypt_U0_m_axi_gmem_AWQOS;
wire   [3:0] ctr_encrypt_U0_m_axi_gmem_AWREGION;
wire   [0:0] ctr_encrypt_U0_m_axi_gmem_AWUSER;
wire    ctr_encrypt_U0_m_axi_gmem_WVALID;
wire   [7:0] ctr_encrypt_U0_m_axi_gmem_WDATA;
wire   [0:0] ctr_encrypt_U0_m_axi_gmem_WSTRB;
wire    ctr_encrypt_U0_m_axi_gmem_WLAST;
wire   [0:0] ctr_encrypt_U0_m_axi_gmem_WID;
wire   [0:0] ctr_encrypt_U0_m_axi_gmem_WUSER;
wire    ctr_encrypt_U0_m_axi_gmem_ARVALID;
wire   [63:0] ctr_encrypt_U0_m_axi_gmem_ARADDR;
wire   [0:0] ctr_encrypt_U0_m_axi_gmem_ARID;
wire   [31:0] ctr_encrypt_U0_m_axi_gmem_ARLEN;
wire   [2:0] ctr_encrypt_U0_m_axi_gmem_ARSIZE;
wire   [1:0] ctr_encrypt_U0_m_axi_gmem_ARBURST;
wire   [1:0] ctr_encrypt_U0_m_axi_gmem_ARLOCK;
wire   [3:0] ctr_encrypt_U0_m_axi_gmem_ARCACHE;
wire   [2:0] ctr_encrypt_U0_m_axi_gmem_ARPROT;
wire   [3:0] ctr_encrypt_U0_m_axi_gmem_ARQOS;
wire   [3:0] ctr_encrypt_U0_m_axi_gmem_ARREGION;
wire   [0:0] ctr_encrypt_U0_m_axi_gmem_ARUSER;
wire    ctr_encrypt_U0_m_axi_gmem_RREADY;
wire    ctr_encrypt_U0_m_axi_gmem_BREADY;
wire    ctr_encrypt_U0_plaintext_read;
wire    ctr_encrypt_U0_ciphertext_read;
wire    pynqrypt_key_i_full_n;
wire    pynqrypt_key_t_empty_n;
wire    pynqrypt_nonce_i_full_n;
wire    pynqrypt_nonce_t_empty_n;
wire    pynqrypt_round_keys_i_full_n;
wire    pynqrypt_round_keys_t_empty_n;
wire    plaintext_length_c_full_n;
wire   [63:0] plaintext_length_c_dout;
wire   [2:0] plaintext_length_c_num_data_valid;
wire   [2:0] plaintext_length_c_fifo_cap;
wire    plaintext_length_c_empty_n;
wire    plaintext_c_full_n;
wire   [63:0] plaintext_c_dout;
wire   [2:0] plaintext_c_num_data_valid;
wire   [2:0] plaintext_c_fifo_cap;
wire    plaintext_c_empty_n;
wire    ciphertext_c_full_n;
wire   [63:0] ciphertext_c_dout;
wire   [2:0] ciphertext_c_num_data_valid;
wire   [2:0] ciphertext_c_fifo_cap;
wire    ciphertext_c_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_entry_proc_U0_ap_ready;
wire    ap_sync_entry_proc_U0_ap_ready;
reg    ap_sync_reg_Loop_1_proc_U0_ap_ready;
wire    ap_sync_Loop_1_proc_U0_ap_ready;
reg    ap_sync_reg_Loop_2_proc_U0_ap_ready;
wire    ap_sync_Loop_2_proc_U0_ap_ready;
reg    ap_sync_reg_ctr_encrypt_U0_ap_ready;
wire    ap_sync_ctr_encrypt_U0_ap_ready;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_sync_reg_entry_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_Loop_1_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_Loop_2_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_ctr_encrypt_U0_ap_ready = 1'b0;
end

pynqrypt_encrypt_pynqrypt_round_keys_RAM_AUTO_1R1W #(
    .DataWidth( 8 ),
    .AddressRange( 176 ),
    .AddressWidth( 8 ))
pynqrypt_round_keys_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .i_address0(aes_generate_round_keys_U0_pynqrypt_round_keys_address0),
    .i_ce0(aes_generate_round_keys_U0_pynqrypt_round_keys_ce0),
    .i_we0(aes_generate_round_keys_U0_pynqrypt_round_keys_we0),
    .i_d0(aes_generate_round_keys_U0_pynqrypt_round_keys_d0),
    .i_q0(pynqrypt_round_keys_i_q0),
    .i_address1(aes_generate_round_keys_U0_pynqrypt_round_keys_address1),
    .i_ce1(aes_generate_round_keys_U0_pynqrypt_round_keys_ce1),
    .i_we1(aes_generate_round_keys_U0_pynqrypt_round_keys_we1),
    .i_d1(aes_generate_round_keys_U0_pynqrypt_round_keys_d1),
    .i_q1(pynqrypt_round_keys_i_q1),
    .t_address0(ctr_encrypt_U0_pynqrypt_round_keys_address0),
    .t_ce0(ctr_encrypt_U0_pynqrypt_round_keys_ce0),
    .t_we0(1'b0),
    .t_d0(8'd0),
    .t_q0(pynqrypt_round_keys_t_q0),
    .t_address1(ctr_encrypt_U0_pynqrypt_round_keys_address1),
    .t_ce1(ctr_encrypt_U0_pynqrypt_round_keys_ce1),
    .t_we1(1'b0),
    .t_d1(8'd0),
    .t_q1(pynqrypt_round_keys_t_q1),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(pynqrypt_round_keys_i_full_n),
    .i_write(aes_generate_round_keys_U0_ap_done),
    .t_empty_n(pynqrypt_round_keys_t_empty_n),
    .t_read(ctr_encrypt_U0_ap_ready)
);

pynqrypt_encrypt_pynqrypt_key_RAM_AUTO_1R1W #(
    .DataWidth( 8 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
pynqrypt_key_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .i_address0(Loop_1_proc_U0_pynqrypt_key_address0),
    .i_ce0(Loop_1_proc_U0_pynqrypt_key_ce0),
    .i_we0(Loop_1_proc_U0_pynqrypt_key_we0),
    .i_d0(Loop_1_proc_U0_pynqrypt_key_d0),
    .i_q0(pynqrypt_key_i_q0),
    .t_address0(aes_generate_round_keys_U0_this_key_address0),
    .t_ce0(aes_generate_round_keys_U0_this_key_ce0),
    .t_we0(1'b0),
    .t_d0(8'd0),
    .t_q0(pynqrypt_key_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(pynqrypt_key_i_full_n),
    .i_write(Loop_1_proc_U0_ap_done),
    .t_empty_n(pynqrypt_key_t_empty_n),
    .t_read(aes_generate_round_keys_U0_ap_ready)
);

pynqrypt_encrypt_pynqrypt_nonce_RAM_AUTO_1R1W #(
    .DataWidth( 8 ),
    .AddressRange( 12 ),
    .AddressWidth( 4 ))
pynqrypt_nonce_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .i_address0(Loop_2_proc_U0_pynqrypt_nonce_address0),
    .i_ce0(Loop_2_proc_U0_pynqrypt_nonce_ce0),
    .i_we0(Loop_2_proc_U0_pynqrypt_nonce_we0),
    .i_d0(Loop_2_proc_U0_pynqrypt_nonce_d0),
    .i_q0(pynqrypt_nonce_i_q0),
    .t_address0(ctr_encrypt_U0_this_nonce_address0),
    .t_ce0(ctr_encrypt_U0_this_nonce_ce0),
    .t_we0(1'b0),
    .t_d0(8'd0),
    .t_q0(pynqrypt_nonce_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(pynqrypt_nonce_i_full_n),
    .i_write(Loop_2_proc_U0_ap_done),
    .t_empty_n(pynqrypt_nonce_t_empty_n),
    .t_read(ctr_encrypt_U0_ap_ready)
);

pynqrypt_encrypt_control_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CONTROL_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CONTROL_DATA_WIDTH ))
control_s_axi_U(
    .AWVALID(s_axi_control_AWVALID),
    .AWREADY(s_axi_control_AWREADY),
    .AWADDR(s_axi_control_AWADDR),
    .WVALID(s_axi_control_WVALID),
    .WREADY(s_axi_control_WREADY),
    .WDATA(s_axi_control_WDATA),
    .WSTRB(s_axi_control_WSTRB),
    .ARVALID(s_axi_control_ARVALID),
    .ARREADY(s_axi_control_ARREADY),
    .ARADDR(s_axi_control_ARADDR),
    .RVALID(s_axi_control_RVALID),
    .RREADY(s_axi_control_RREADY),
    .RDATA(s_axi_control_RDATA),
    .RRESP(s_axi_control_RRESP),
    .BVALID(s_axi_control_BVALID),
    .BREADY(s_axi_control_BREADY),
    .BRESP(s_axi_control_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .key_address0(Loop_1_proc_U0_key_address0),
    .key_ce0(Loop_1_proc_U0_key_ce0),
    .key_q0(key_q0),
    .nonce_address0(Loop_2_proc_U0_nonce_address0),
    .nonce_ce0(Loop_2_proc_U0_nonce_ce0),
    .nonce_q0(nonce_q0),
    .plaintext_length(plaintext_length),
    .plaintext(plaintext),
    .ciphertext(ciphertext),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

pynqrypt_encrypt_gmem_m_axi #(
    .CONSERVATIVE( 1 ),
    .USER_MAXREQS( 5 ),
    .MAX_READ_BURST_LENGTH( 16 ),
    .MAX_WRITE_BURST_LENGTH( 16 ),
    .C_M_AXI_ID_WIDTH( C_M_AXI_GMEM_ID_WIDTH ),
    .C_M_AXI_ADDR_WIDTH( C_M_AXI_GMEM_ADDR_WIDTH ),
    .C_M_AXI_DATA_WIDTH( C_M_AXI_GMEM_DATA_WIDTH ),
    .C_M_AXI_AWUSER_WIDTH( C_M_AXI_GMEM_AWUSER_WIDTH ),
    .C_M_AXI_ARUSER_WIDTH( C_M_AXI_GMEM_ARUSER_WIDTH ),
    .C_M_AXI_WUSER_WIDTH( C_M_AXI_GMEM_WUSER_WIDTH ),
    .C_M_AXI_RUSER_WIDTH( C_M_AXI_GMEM_RUSER_WIDTH ),
    .C_M_AXI_BUSER_WIDTH( C_M_AXI_GMEM_BUSER_WIDTH ),
    .C_USER_VALUE( C_M_AXI_GMEM_USER_VALUE ),
    .C_PROT_VALUE( C_M_AXI_GMEM_PROT_VALUE ),
    .C_CACHE_VALUE( C_M_AXI_GMEM_CACHE_VALUE ),
    .USER_RFIFONUM_WIDTH( 11 ),
    .USER_DW( 8 ),
    .USER_AW( 64 ),
    .NUM_READ_OUTSTANDING( 16 ),
    .NUM_WRITE_OUTSTANDING( 16 ))
gmem_m_axi_U(
    .AWVALID(m_axi_gmem_AWVALID),
    .AWREADY(m_axi_gmem_AWREADY),
    .AWADDR(m_axi_gmem_AWADDR),
    .AWID(m_axi_gmem_AWID),
    .AWLEN(m_axi_gmem_AWLEN),
    .AWSIZE(m_axi_gmem_AWSIZE),
    .AWBURST(m_axi_gmem_AWBURST),
    .AWLOCK(m_axi_gmem_AWLOCK),
    .AWCACHE(m_axi_gmem_AWCACHE),
    .AWPROT(m_axi_gmem_AWPROT),
    .AWQOS(m_axi_gmem_AWQOS),
    .AWREGION(m_axi_gmem_AWREGION),
    .AWUSER(m_axi_gmem_AWUSER),
    .WVALID(m_axi_gmem_WVALID),
    .WREADY(m_axi_gmem_WREADY),
    .WDATA(m_axi_gmem_WDATA),
    .WSTRB(m_axi_gmem_WSTRB),
    .WLAST(m_axi_gmem_WLAST),
    .WID(m_axi_gmem_WID),
    .WUSER(m_axi_gmem_WUSER),
    .ARVALID(m_axi_gmem_ARVALID),
    .ARREADY(m_axi_gmem_ARREADY),
    .ARADDR(m_axi_gmem_ARADDR),
    .ARID(m_axi_gmem_ARID),
    .ARLEN(m_axi_gmem_ARLEN),
    .ARSIZE(m_axi_gmem_ARSIZE),
    .ARBURST(m_axi_gmem_ARBURST),
    .ARLOCK(m_axi_gmem_ARLOCK),
    .ARCACHE(m_axi_gmem_ARCACHE),
    .ARPROT(m_axi_gmem_ARPROT),
    .ARQOS(m_axi_gmem_ARQOS),
    .ARREGION(m_axi_gmem_ARREGION),
    .ARUSER(m_axi_gmem_ARUSER),
    .RVALID(m_axi_gmem_RVALID),
    .RREADY(m_axi_gmem_RREADY),
    .RDATA(m_axi_gmem_RDATA),
    .RLAST(m_axi_gmem_RLAST),
    .RID(m_axi_gmem_RID),
    .RUSER(m_axi_gmem_RUSER),
    .RRESP(m_axi_gmem_RRESP),
    .BVALID(m_axi_gmem_BVALID),
    .BREADY(m_axi_gmem_BREADY),
    .BRESP(m_axi_gmem_BRESP),
    .BID(m_axi_gmem_BID),
    .BUSER(m_axi_gmem_BUSER),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .I_ARVALID(ctr_encrypt_U0_m_axi_gmem_ARVALID),
    .I_ARREADY(gmem_ARREADY),
    .I_ARADDR(ctr_encrypt_U0_m_axi_gmem_ARADDR),
    .I_ARLEN(ctr_encrypt_U0_m_axi_gmem_ARLEN),
    .I_RVALID(gmem_RVALID),
    .I_RREADY(ctr_encrypt_U0_m_axi_gmem_RREADY),
    .I_RDATA(gmem_RDATA),
    .I_RFIFONUM(gmem_RFIFONUM),
    .I_AWVALID(ctr_encrypt_U0_m_axi_gmem_AWVALID),
    .I_AWREADY(gmem_AWREADY),
    .I_AWADDR(ctr_encrypt_U0_m_axi_gmem_AWADDR),
    .I_AWLEN(ctr_encrypt_U0_m_axi_gmem_AWLEN),
    .I_WVALID(ctr_encrypt_U0_m_axi_gmem_WVALID),
    .I_WREADY(gmem_WREADY),
    .I_WDATA(ctr_encrypt_U0_m_axi_gmem_WDATA),
    .I_WSTRB(ctr_encrypt_U0_m_axi_gmem_WSTRB),
    .I_BVALID(gmem_BVALID),
    .I_BREADY(ctr_encrypt_U0_m_axi_gmem_BREADY)
);

pynqrypt_encrypt_entry_proc entry_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(entry_proc_U0_ap_start),
    .ap_done(entry_proc_U0_ap_done),
    .ap_continue(entry_proc_U0_ap_continue),
    .ap_idle(entry_proc_U0_ap_idle),
    .ap_ready(entry_proc_U0_ap_ready),
    .plaintext_length(plaintext_length),
    .plaintext_length_c_din(entry_proc_U0_plaintext_length_c_din),
    .plaintext_length_c_num_data_valid(plaintext_length_c_num_data_valid),
    .plaintext_length_c_fifo_cap(plaintext_length_c_fifo_cap),
    .plaintext_length_c_full_n(plaintext_length_c_full_n),
    .plaintext_length_c_write(entry_proc_U0_plaintext_length_c_write),
    .plaintext(plaintext),
    .plaintext_c_din(entry_proc_U0_plaintext_c_din),
    .plaintext_c_num_data_valid(plaintext_c_num_data_valid),
    .plaintext_c_fifo_cap(plaintext_c_fifo_cap),
    .plaintext_c_full_n(plaintext_c_full_n),
    .plaintext_c_write(entry_proc_U0_plaintext_c_write),
    .ciphertext(ciphertext),
    .ciphertext_c_din(entry_proc_U0_ciphertext_c_din),
    .ciphertext_c_num_data_valid(ciphertext_c_num_data_valid),
    .ciphertext_c_fifo_cap(ciphertext_c_fifo_cap),
    .ciphertext_c_full_n(ciphertext_c_full_n),
    .ciphertext_c_write(entry_proc_U0_ciphertext_c_write)
);

pynqrypt_encrypt_Loop_1_proc Loop_1_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Loop_1_proc_U0_ap_start),
    .ap_done(Loop_1_proc_U0_ap_done),
    .ap_continue(Loop_1_proc_U0_ap_continue),
    .ap_idle(Loop_1_proc_U0_ap_idle),
    .ap_ready(Loop_1_proc_U0_ap_ready),
    .key_address0(Loop_1_proc_U0_key_address0),
    .key_ce0(Loop_1_proc_U0_key_ce0),
    .key_q0(key_q0),
    .pynqrypt_key_address0(Loop_1_proc_U0_pynqrypt_key_address0),
    .pynqrypt_key_ce0(Loop_1_proc_U0_pynqrypt_key_ce0),
    .pynqrypt_key_we0(Loop_1_proc_U0_pynqrypt_key_we0),
    .pynqrypt_key_d0(Loop_1_proc_U0_pynqrypt_key_d0)
);

pynqrypt_encrypt_Loop_2_proc Loop_2_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Loop_2_proc_U0_ap_start),
    .ap_done(Loop_2_proc_U0_ap_done),
    .ap_continue(Loop_2_proc_U0_ap_continue),
    .ap_idle(Loop_2_proc_U0_ap_idle),
    .ap_ready(Loop_2_proc_U0_ap_ready),
    .nonce_address0(Loop_2_proc_U0_nonce_address0),
    .nonce_ce0(Loop_2_proc_U0_nonce_ce0),
    .nonce_q0(nonce_q0),
    .pynqrypt_nonce_address0(Loop_2_proc_U0_pynqrypt_nonce_address0),
    .pynqrypt_nonce_ce0(Loop_2_proc_U0_pynqrypt_nonce_ce0),
    .pynqrypt_nonce_we0(Loop_2_proc_U0_pynqrypt_nonce_we0),
    .pynqrypt_nonce_d0(Loop_2_proc_U0_pynqrypt_nonce_d0)
);

pynqrypt_encrypt_aes_generate_round_keys aes_generate_round_keys_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(aes_generate_round_keys_U0_ap_start),
    .ap_done(aes_generate_round_keys_U0_ap_done),
    .ap_continue(aes_generate_round_keys_U0_ap_continue),
    .ap_idle(aes_generate_round_keys_U0_ap_idle),
    .ap_ready(aes_generate_round_keys_U0_ap_ready),
    .this_key_address0(aes_generate_round_keys_U0_this_key_address0),
    .this_key_ce0(aes_generate_round_keys_U0_this_key_ce0),
    .this_key_q0(pynqrypt_key_t_q0),
    .pynqrypt_round_keys_address0(aes_generate_round_keys_U0_pynqrypt_round_keys_address0),
    .pynqrypt_round_keys_ce0(aes_generate_round_keys_U0_pynqrypt_round_keys_ce0),
    .pynqrypt_round_keys_we0(aes_generate_round_keys_U0_pynqrypt_round_keys_we0),
    .pynqrypt_round_keys_d0(aes_generate_round_keys_U0_pynqrypt_round_keys_d0),
    .pynqrypt_round_keys_q0(pynqrypt_round_keys_i_q0),
    .pynqrypt_round_keys_address1(aes_generate_round_keys_U0_pynqrypt_round_keys_address1),
    .pynqrypt_round_keys_ce1(aes_generate_round_keys_U0_pynqrypt_round_keys_ce1),
    .pynqrypt_round_keys_we1(aes_generate_round_keys_U0_pynqrypt_round_keys_we1),
    .pynqrypt_round_keys_d1(aes_generate_round_keys_U0_pynqrypt_round_keys_d1),
    .pynqrypt_round_keys_q1(pynqrypt_round_keys_i_q1)
);

pynqrypt_encrypt_ctr_encrypt ctr_encrypt_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(ctr_encrypt_U0_ap_start),
    .ap_done(ctr_encrypt_U0_ap_done),
    .ap_continue(ctr_encrypt_U0_ap_continue),
    .ap_idle(ctr_encrypt_U0_ap_idle),
    .ap_ready(ctr_encrypt_U0_ap_ready),
    .this_nonce_address0(ctr_encrypt_U0_this_nonce_address0),
    .this_nonce_ce0(ctr_encrypt_U0_this_nonce_ce0),
    .this_nonce_q0(pynqrypt_nonce_t_q0),
    .pynqrypt_round_keys_address0(ctr_encrypt_U0_pynqrypt_round_keys_address0),
    .pynqrypt_round_keys_ce0(ctr_encrypt_U0_pynqrypt_round_keys_ce0),
    .pynqrypt_round_keys_q0(pynqrypt_round_keys_t_q0),
    .pynqrypt_round_keys_address1(ctr_encrypt_U0_pynqrypt_round_keys_address1),
    .pynqrypt_round_keys_ce1(ctr_encrypt_U0_pynqrypt_round_keys_ce1),
    .pynqrypt_round_keys_q1(pynqrypt_round_keys_t_q1),
    .plaintext_length_dout(plaintext_length_c_dout),
    .plaintext_length_num_data_valid(plaintext_length_c_num_data_valid),
    .plaintext_length_fifo_cap(plaintext_length_c_fifo_cap),
    .plaintext_length_empty_n(plaintext_length_c_empty_n),
    .plaintext_length_read(ctr_encrypt_U0_plaintext_length_read),
    .m_axi_gmem_AWVALID(ctr_encrypt_U0_m_axi_gmem_AWVALID),
    .m_axi_gmem_AWREADY(gmem_AWREADY),
    .m_axi_gmem_AWADDR(ctr_encrypt_U0_m_axi_gmem_AWADDR),
    .m_axi_gmem_AWID(ctr_encrypt_U0_m_axi_gmem_AWID),
    .m_axi_gmem_AWLEN(ctr_encrypt_U0_m_axi_gmem_AWLEN),
    .m_axi_gmem_AWSIZE(ctr_encrypt_U0_m_axi_gmem_AWSIZE),
    .m_axi_gmem_AWBURST(ctr_encrypt_U0_m_axi_gmem_AWBURST),
    .m_axi_gmem_AWLOCK(ctr_encrypt_U0_m_axi_gmem_AWLOCK),
    .m_axi_gmem_AWCACHE(ctr_encrypt_U0_m_axi_gmem_AWCACHE),
    .m_axi_gmem_AWPROT(ctr_encrypt_U0_m_axi_gmem_AWPROT),
    .m_axi_gmem_AWQOS(ctr_encrypt_U0_m_axi_gmem_AWQOS),
    .m_axi_gmem_AWREGION(ctr_encrypt_U0_m_axi_gmem_AWREGION),
    .m_axi_gmem_AWUSER(ctr_encrypt_U0_m_axi_gmem_AWUSER),
    .m_axi_gmem_WVALID(ctr_encrypt_U0_m_axi_gmem_WVALID),
    .m_axi_gmem_WREADY(gmem_WREADY),
    .m_axi_gmem_WDATA(ctr_encrypt_U0_m_axi_gmem_WDATA),
    .m_axi_gmem_WSTRB(ctr_encrypt_U0_m_axi_gmem_WSTRB),
    .m_axi_gmem_WLAST(ctr_encrypt_U0_m_axi_gmem_WLAST),
    .m_axi_gmem_WID(ctr_encrypt_U0_m_axi_gmem_WID),
    .m_axi_gmem_WUSER(ctr_encrypt_U0_m_axi_gmem_WUSER),
    .m_axi_gmem_ARVALID(ctr_encrypt_U0_m_axi_gmem_ARVALID),
    .m_axi_gmem_ARREADY(gmem_ARREADY),
    .m_axi_gmem_ARADDR(ctr_encrypt_U0_m_axi_gmem_ARADDR),
    .m_axi_gmem_ARID(ctr_encrypt_U0_m_axi_gmem_ARID),
    .m_axi_gmem_ARLEN(ctr_encrypt_U0_m_axi_gmem_ARLEN),
    .m_axi_gmem_ARSIZE(ctr_encrypt_U0_m_axi_gmem_ARSIZE),
    .m_axi_gmem_ARBURST(ctr_encrypt_U0_m_axi_gmem_ARBURST),
    .m_axi_gmem_ARLOCK(ctr_encrypt_U0_m_axi_gmem_ARLOCK),
    .m_axi_gmem_ARCACHE(ctr_encrypt_U0_m_axi_gmem_ARCACHE),
    .m_axi_gmem_ARPROT(ctr_encrypt_U0_m_axi_gmem_ARPROT),
    .m_axi_gmem_ARQOS(ctr_encrypt_U0_m_axi_gmem_ARQOS),
    .m_axi_gmem_ARREGION(ctr_encrypt_U0_m_axi_gmem_ARREGION),
    .m_axi_gmem_ARUSER(ctr_encrypt_U0_m_axi_gmem_ARUSER),
    .m_axi_gmem_RVALID(gmem_RVALID),
    .m_axi_gmem_RREADY(ctr_encrypt_U0_m_axi_gmem_RREADY),
    .m_axi_gmem_RDATA(gmem_RDATA),
    .m_axi_gmem_RLAST(gmem_RLAST),
    .m_axi_gmem_RID(gmem_RID),
    .m_axi_gmem_RFIFONUM(gmem_RFIFONUM),
    .m_axi_gmem_RUSER(gmem_RUSER),
    .m_axi_gmem_RRESP(gmem_RRESP),
    .m_axi_gmem_BVALID(gmem_BVALID),
    .m_axi_gmem_BREADY(ctr_encrypt_U0_m_axi_gmem_BREADY),
    .m_axi_gmem_BRESP(gmem_BRESP),
    .m_axi_gmem_BID(gmem_BID),
    .m_axi_gmem_BUSER(gmem_BUSER),
    .plaintext_dout(plaintext_c_dout),
    .plaintext_num_data_valid(plaintext_c_num_data_valid),
    .plaintext_fifo_cap(plaintext_c_fifo_cap),
    .plaintext_empty_n(plaintext_c_empty_n),
    .plaintext_read(ctr_encrypt_U0_plaintext_read),
    .ciphertext_dout(ciphertext_c_dout),
    .ciphertext_num_data_valid(ciphertext_c_num_data_valid),
    .ciphertext_fifo_cap(ciphertext_c_fifo_cap),
    .ciphertext_empty_n(ciphertext_c_empty_n),
    .ciphertext_read(ctr_encrypt_U0_ciphertext_read)
);

pynqrypt_encrypt_fifo_w64_d4_S plaintext_length_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(entry_proc_U0_plaintext_length_c_din),
    .if_full_n(plaintext_length_c_full_n),
    .if_write(entry_proc_U0_plaintext_length_c_write),
    .if_dout(plaintext_length_c_dout),
    .if_num_data_valid(plaintext_length_c_num_data_valid),
    .if_fifo_cap(plaintext_length_c_fifo_cap),
    .if_empty_n(plaintext_length_c_empty_n),
    .if_read(ctr_encrypt_U0_plaintext_length_read)
);

pynqrypt_encrypt_fifo_w64_d4_S plaintext_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(entry_proc_U0_plaintext_c_din),
    .if_full_n(plaintext_c_full_n),
    .if_write(entry_proc_U0_plaintext_c_write),
    .if_dout(plaintext_c_dout),
    .if_num_data_valid(plaintext_c_num_data_valid),
    .if_fifo_cap(plaintext_c_fifo_cap),
    .if_empty_n(plaintext_c_empty_n),
    .if_read(ctr_encrypt_U0_plaintext_read)
);

pynqrypt_encrypt_fifo_w64_d4_S ciphertext_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(entry_proc_U0_ciphertext_c_din),
    .if_full_n(ciphertext_c_full_n),
    .if_write(entry_proc_U0_ciphertext_c_write),
    .if_dout(ciphertext_c_dout),
    .if_num_data_valid(ciphertext_c_num_data_valid),
    .if_fifo_cap(ciphertext_c_fifo_cap),
    .if_empty_n(ciphertext_c_empty_n),
    .if_read(ctr_encrypt_U0_ciphertext_read)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_Loop_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_Loop_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_Loop_1_proc_U0_ap_ready <= ap_sync_Loop_1_proc_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_Loop_2_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_Loop_2_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_Loop_2_proc_U0_ap_ready <= ap_sync_Loop_2_proc_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_ctr_encrypt_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_ctr_encrypt_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_ctr_encrypt_U0_ap_ready <= ap_sync_ctr_encrypt_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_entry_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_entry_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_entry_proc_U0_ap_ready <= ap_sync_entry_proc_U0_ap_ready;
        end
    end
end

assign Loop_1_proc_U0_ap_continue = pynqrypt_key_i_full_n;

assign Loop_1_proc_U0_ap_start = ((ap_sync_reg_Loop_1_proc_U0_ap_ready ^ 1'b1) & ap_start);

assign Loop_2_proc_U0_ap_continue = pynqrypt_nonce_i_full_n;

assign Loop_2_proc_U0_ap_start = ((ap_sync_reg_Loop_2_proc_U0_ap_ready ^ 1'b1) & ap_start);

assign aes_generate_round_keys_U0_ap_continue = pynqrypt_round_keys_i_full_n;

assign aes_generate_round_keys_U0_ap_start = pynqrypt_key_t_empty_n;

assign ap_done = ctr_encrypt_U0_ap_done;

assign ap_idle = ((pynqrypt_round_keys_t_empty_n ^ 1'b1) & (pynqrypt_nonce_t_empty_n ^ 1'b1) & (pynqrypt_key_t_empty_n ^ 1'b1) & entry_proc_U0_ap_idle & ctr_encrypt_U0_ap_idle & aes_generate_round_keys_U0_ap_idle & Loop_2_proc_U0_ap_idle & Loop_1_proc_U0_ap_idle);

assign ap_ready = ap_sync_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_Loop_1_proc_U0_ap_ready = (ap_sync_reg_Loop_1_proc_U0_ap_ready | Loop_1_proc_U0_ap_ready);

assign ap_sync_Loop_2_proc_U0_ap_ready = (ap_sync_reg_Loop_2_proc_U0_ap_ready | Loop_2_proc_U0_ap_ready);

assign ap_sync_ctr_encrypt_U0_ap_ready = (ctr_encrypt_U0_ap_ready | ap_sync_reg_ctr_encrypt_U0_ap_ready);

assign ap_sync_entry_proc_U0_ap_ready = (entry_proc_U0_ap_ready | ap_sync_reg_entry_proc_U0_ap_ready);

assign ap_sync_ready = (ap_sync_entry_proc_U0_ap_ready & ap_sync_ctr_encrypt_U0_ap_ready & ap_sync_Loop_2_proc_U0_ap_ready & ap_sync_Loop_1_proc_U0_ap_ready);

assign ctr_encrypt_U0_ap_continue = 1'b1;

assign ctr_encrypt_U0_ap_start = (pynqrypt_round_keys_t_empty_n & pynqrypt_nonce_t_empty_n & (ap_sync_reg_ctr_encrypt_U0_ap_ready ^ 1'b1) & ap_start);

assign entry_proc_U0_ap_continue = 1'b1;

assign entry_proc_U0_ap_start = ((ap_sync_reg_entry_proc_U0_ap_ready ^ 1'b1) & ap_start);

assign gmem_BID = 1'd0;

assign gmem_BRESP = 2'd0;

assign gmem_BUSER = 1'd0;

assign gmem_RID = 1'd0;

assign gmem_RLAST = 1'b0;

assign gmem_RRESP = 2'd0;

assign gmem_RUSER = 1'd0;

endmodule //pynqrypt_encrypt
