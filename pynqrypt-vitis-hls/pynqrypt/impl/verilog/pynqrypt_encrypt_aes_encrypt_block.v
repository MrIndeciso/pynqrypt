// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module pynqrypt_encrypt_aes_encrypt_block (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        pynqrypt_round_keys_address0,
        pynqrypt_round_keys_ce0,
        pynqrypt_round_keys_q0,
        pynqrypt_round_keys_address1,
        pynqrypt_round_keys_ce1,
        pynqrypt_round_keys_q1,
        state_address0,
        state_ce0,
        state_we0,
        state_d0,
        state_q0,
        state_address1,
        state_ce1,
        state_we1,
        state_d1,
        state_q1
);

parameter    ap_ST_fsm_state1 = 17'd1;
parameter    ap_ST_fsm_state2 = 17'd2;
parameter    ap_ST_fsm_state3 = 17'd4;
parameter    ap_ST_fsm_state4 = 17'd8;
parameter    ap_ST_fsm_state5 = 17'd16;
parameter    ap_ST_fsm_state6 = 17'd32;
parameter    ap_ST_fsm_state7 = 17'd64;
parameter    ap_ST_fsm_state8 = 17'd128;
parameter    ap_ST_fsm_state9 = 17'd256;
parameter    ap_ST_fsm_state10 = 17'd512;
parameter    ap_ST_fsm_state11 = 17'd1024;
parameter    ap_ST_fsm_state12 = 17'd2048;
parameter    ap_ST_fsm_state13 = 17'd4096;
parameter    ap_ST_fsm_state14 = 17'd8192;
parameter    ap_ST_fsm_state15 = 17'd16384;
parameter    ap_ST_fsm_state16 = 17'd32768;
parameter    ap_ST_fsm_state17 = 17'd65536;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] pynqrypt_round_keys_address0;
output   pynqrypt_round_keys_ce0;
input  [7:0] pynqrypt_round_keys_q0;
output  [7:0] pynqrypt_round_keys_address1;
output   pynqrypt_round_keys_ce1;
input  [7:0] pynqrypt_round_keys_q1;
output  [3:0] state_address0;
output   state_ce0;
output   state_we0;
output  [7:0] state_d0;
input  [7:0] state_q0;
output  [3:0] state_address1;
output   state_ce1;
output   state_we1;
output  [7:0] state_d1;
input  [7:0] state_q1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] pynqrypt_round_keys_address0;
reg pynqrypt_round_keys_ce0;
reg pynqrypt_round_keys_ce1;
reg[3:0] state_address0;
reg state_ce0;
reg state_we0;
reg[7:0] state_d0;
reg[3:0] state_address1;
reg state_ce1;
reg state_we1;
reg[7:0] state_d1;

(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] crypto_aes_sbox_address0;
reg    crypto_aes_sbox_ce0;
wire   [7:0] crypto_aes_sbox_q0;
reg   [7:0] reg_224;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state11;
reg   [7:0] reg_230;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state12;
reg   [7:0] reg_236;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state13;
reg   [7:0] reg_241;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln221_fu_262_p2;
reg   [3:0] state_addr_reg_301;
wire   [3:0] state_addr_2_reg_306;
wire    ap_CS_fsm_state7;
wire   [3:0] state_addr_3_reg_311;
wire   [3:0] state_addr_10_reg_339;
wire    grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_ap_start;
wire    grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_ap_done;
wire    grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_ap_idle;
wire    grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_ap_ready;
wire   [3:0] grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_state_address0;
wire    grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_state_ce0;
wire    grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_state_we0;
wire   [7:0] grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_state_d0;
wire   [3:0] grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_state_address1;
wire    grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_state_ce1;
wire    grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_state_we1;
wire   [7:0] grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_state_d1;
wire   [7:0] grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_pynqrypt_round_keys_address0;
wire    grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_pynqrypt_round_keys_ce0;
wire   [7:0] grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_pynqrypt_round_keys_address1;
wire    grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_pynqrypt_round_keys_ce1;
wire   [7:0] grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_crypto_aes_sbox_address0;
wire    grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_crypto_aes_sbox_ce0;
wire    grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_ap_start;
wire    grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_ap_done;
wire    grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_ap_idle;
wire    grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_ap_ready;
wire   [3:0] grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_state_address0;
wire    grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_state_ce0;
wire    grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_state_we0;
wire   [7:0] grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_state_d0;
wire   [3:0] grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_state_address1;
wire    grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_state_ce1;
wire   [7:0] grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_crypto_aes_sbox_address0;
wire    grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_crypto_aes_sbox_ce0;
wire    grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_ap_start;
wire    grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_ap_done;
wire    grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_ap_idle;
wire    grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_ap_ready;
wire   [7:0] grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_pynqrypt_round_keys_address0;
wire    grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_pynqrypt_round_keys_ce0;
wire   [3:0] grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_state_address0;
wire    grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_state_ce0;
wire    grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_state_we0;
wire   [7:0] grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_state_d0;
wire   [3:0] grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_state_address1;
wire    grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_state_ce1;
reg    grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg    grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_ap_start_reg;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
wire   [63:0] zext_ln221_fu_256_p1;
reg   [4:0] i_fu_54;
wire   [4:0] add_ln221_fu_268_p2;
wire    ap_CS_fsm_state3;
wire   [7:0] xor_ln222_fu_279_p2;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state15;
reg   [16:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
reg    ap_ST_fsm_state17_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_ap_start_reg = 1'b0;
#0 grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_ap_start_reg = 1'b0;
#0 grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_ap_start_reg = 1'b0;
end

pynqrypt_encrypt_aes_generate_round_keys_Pipeline_loop_generate_round_keys_aes_sbox3_ROM_AUTO_1R #(
    .DataWidth( 8 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
crypto_aes_sbox_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(crypto_aes_sbox_address0),
    .ce0(crypto_aes_sbox_ce0),
    .q0(crypto_aes_sbox_q0)
);

pynqrypt_encrypt_aes_encrypt_block_Pipeline_loop_aes_encrypt_block grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_ap_start),
    .ap_done(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_ap_done),
    .ap_idle(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_ap_idle),
    .ap_ready(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_ap_ready),
    .state_address0(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_state_address0),
    .state_ce0(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_state_ce0),
    .state_we0(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_state_we0),
    .state_d0(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_state_d0),
    .state_q0(state_q0),
    .state_address1(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_state_address1),
    .state_ce1(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_state_ce1),
    .state_we1(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_state_we1),
    .state_d1(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_state_d1),
    .state_q1(state_q1),
    .pynqrypt_round_keys_address0(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_pynqrypt_round_keys_address0),
    .pynqrypt_round_keys_ce0(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_pynqrypt_round_keys_ce0),
    .pynqrypt_round_keys_q0(pynqrypt_round_keys_q0),
    .pynqrypt_round_keys_address1(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_pynqrypt_round_keys_address1),
    .pynqrypt_round_keys_ce1(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_pynqrypt_round_keys_ce1),
    .pynqrypt_round_keys_q1(pynqrypt_round_keys_q1),
    .crypto_aes_sbox_address0(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_crypto_aes_sbox_address0),
    .crypto_aes_sbox_ce0(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_crypto_aes_sbox_ce0),
    .crypto_aes_sbox_q0(crypto_aes_sbox_q0)
);

pynqrypt_encrypt_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1 grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_ap_start),
    .ap_done(grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_ap_done),
    .ap_idle(grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_ap_idle),
    .ap_ready(grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_ap_ready),
    .state_address0(grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_state_address0),
    .state_ce0(grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_state_ce0),
    .state_we0(grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_state_we0),
    .state_d0(grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_state_d0),
    .state_address1(grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_state_address1),
    .state_ce1(grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_state_ce1),
    .state_q1(state_q1),
    .crypto_aes_sbox_address0(grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_crypto_aes_sbox_address0),
    .crypto_aes_sbox_ce0(grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_crypto_aes_sbox_ce0),
    .crypto_aes_sbox_q0(crypto_aes_sbox_q0)
);

pynqrypt_encrypt_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1 grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_ap_start),
    .ap_done(grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_ap_done),
    .ap_idle(grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_ap_idle),
    .ap_ready(grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_ap_ready),
    .pynqrypt_round_keys_address0(grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_pynqrypt_round_keys_address0),
    .pynqrypt_round_keys_ce0(grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_pynqrypt_round_keys_ce0),
    .pynqrypt_round_keys_q0(pynqrypt_round_keys_q0),
    .state_address0(grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_state_address0),
    .state_ce0(grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_state_ce0),
    .state_we0(grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_state_we0),
    .state_d0(grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_state_d0),
    .state_address1(grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_state_address1),
    .state_ce1(grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_state_ce1),
    .state_q1(state_q1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_ap_start_reg <= 1'b1;
        end else if ((grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_ap_ready == 1'b1)) begin
            grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_ap_start_reg <= 1'b1;
        end else if ((grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_ap_ready == 1'b1)) begin
            grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln221_fu_262_p2 == 1'd1))) begin
            grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_ap_start_reg <= 1'b1;
        end else if ((grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_ap_ready == 1'b1)) begin
            grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_54 <= 5'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln221_fu_262_p2 == 1'd0))) begin
        i_fu_54 <= add_ln221_fu_268_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        reg_224 <= state_q0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        reg_224 <= state_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        reg_241 <= state_q0;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_241 <= state_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_230 <= state_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_236 <= state_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln221_fu_262_p2 == 1'd0))) begin
        state_addr_reg_301 <= zext_ln221_fu_256_p1;
    end
end

assign ap_ST_fsm_state10_blk = 1'b0;

assign ap_ST_fsm_state11_blk = 1'b0;

assign ap_ST_fsm_state12_blk = 1'b0;

assign ap_ST_fsm_state13_blk = 1'b0;

assign ap_ST_fsm_state14_blk = 1'b0;

assign ap_ST_fsm_state15_blk = 1'b0;

assign ap_ST_fsm_state16_blk = 1'b0;

always @ (*) begin
    if ((grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_ap_done == 1'b0)) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if ((grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state17) & (grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_ap_done == 1'b1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) & (grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        crypto_aes_sbox_address0 = grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_crypto_aes_sbox_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        crypto_aes_sbox_address0 = grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_crypto_aes_sbox_address0;
    end else begin
        crypto_aes_sbox_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        crypto_aes_sbox_ce0 = grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_crypto_aes_sbox_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        crypto_aes_sbox_ce0 = grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_crypto_aes_sbox_ce0;
    end else begin
        crypto_aes_sbox_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln221_fu_262_p2 == 1'd0))) begin
        pynqrypt_round_keys_address0 = zext_ln221_fu_256_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        pynqrypt_round_keys_address0 = grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_pynqrypt_round_keys_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        pynqrypt_round_keys_address0 = grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_pynqrypt_round_keys_address0;
    end else begin
        pynqrypt_round_keys_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln221_fu_262_p2 == 1'd0))) begin
        pynqrypt_round_keys_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        pynqrypt_round_keys_ce0 = grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_pynqrypt_round_keys_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        pynqrypt_round_keys_ce0 = grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_pynqrypt_round_keys_ce0;
    end else begin
        pynqrypt_round_keys_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        pynqrypt_round_keys_ce1 = grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_pynqrypt_round_keys_ce1;
    end else begin
        pynqrypt_round_keys_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        state_address0 = state_addr_10_reg_339;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        state_address0 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        state_address0 = state_addr_3_reg_311;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        state_address0 = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        state_address0 = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        state_address0 = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        state_address0 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        state_address0 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        state_address0 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        state_address0 = state_addr_reg_301;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln221_fu_262_p2 == 1'd0))) begin
        state_address0 = zext_ln221_fu_256_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        state_address0 = grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_state_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        state_address0 = grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_state_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        state_address0 = grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_state_address0;
    end else begin
        state_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        state_address1 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        state_address1 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        state_address1 = state_addr_2_reg_306;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        state_address1 = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        state_address1 = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        state_address1 = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        state_address1 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        state_address1 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        state_address1 = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        state_address1 = grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_state_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        state_address1 = grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_state_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        state_address1 = grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_state_address1;
    end else begin
        state_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state2) & (icmp_ln221_fu_262_p2 == 1'd0)))) begin
        state_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        state_ce0 = grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_state_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        state_ce0 = grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_state_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        state_ce0 = grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_state_ce0;
    end else begin
        state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state7))) begin
        state_ce1 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        state_ce1 = grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_state_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        state_ce1 = grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_state_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        state_ce1 = grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_state_ce1;
    end else begin
        state_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        state_d0 = reg_230;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        state_d0 = reg_241;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        state_d0 = state_q1;
    end else if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14))) begin
        state_d0 = reg_224;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        state_d0 = xor_ln222_fu_279_p2;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        state_d0 = grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_state_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        state_d0 = grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_state_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        state_d0 = grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_state_d0;
    end else begin
        state_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state15))) begin
        state_d1 = reg_236;
    end else if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14))) begin
        state_d1 = reg_241;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10))) begin
        state_d1 = reg_230;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        state_d1 = state_q0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        state_d1 = grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_state_d1;
    end else begin
        state_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state3))) begin
        state_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        state_we0 = grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_state_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        state_we0 = grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_state_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        state_we0 = grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_state_we0;
    end else begin
        state_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14))) begin
        state_we1 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        state_we1 = grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_state_we1;
    end else begin
        state_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln221_fu_262_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            if (((1'b1 == ap_CS_fsm_state17) & (grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln221_fu_268_p2 = (i_fu_54 + 5'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_ap_start = grp_aes_encrypt_block_Pipeline_VITIS_LOOP_221_1_fu_216_ap_start_reg;

assign grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_ap_start = grp_aes_encrypt_block_Pipeline_VITIS_LOOP_68_1_fu_208_ap_start_reg;

assign grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_ap_start = grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_ap_start_reg;

assign icmp_ln221_fu_262_p2 = ((i_fu_54 == 5'd16) ? 1'b1 : 1'b0);

assign pynqrypt_round_keys_address1 = grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_198_pynqrypt_round_keys_address1;

assign state_addr_10_reg_339 = 64'd9;

assign state_addr_2_reg_306 = 64'd1;

assign state_addr_3_reg_311 = 64'd2;

assign xor_ln222_fu_279_p2 = (state_q0 ^ pynqrypt_round_keys_q0);

assign zext_ln221_fu_256_p1 = i_fu_54;

endmodule //pynqrypt_encrypt_aes_encrypt_block
