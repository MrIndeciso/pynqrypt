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
        this_round_keys_address0,
        this_round_keys_ce0,
        this_round_keys_q0,
        p_read,
        ap_return
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] this_round_keys_address0;
output   this_round_keys_ce0;
input  [127:0] this_round_keys_q0;
input  [127:0] p_read;
output  [127:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] this_round_keys_address0;
reg this_round_keys_ce0;
reg[127:0] ap_return;

(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [127:0] this_round_keys_load_reg_371;
wire    ap_CS_fsm_state2;
wire   [127:0] xor_ln859_fu_145_p2;
reg   [127:0] xor_ln859_reg_376;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state6;
wire    grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_ap_start;
wire    grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_ap_done;
wire    grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_ap_idle;
wire    grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_ap_ready;
wire   [3:0] grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_this_round_keys_address0;
wire    grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_this_round_keys_ce0;
wire   [127:0] grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_state_promoted_i_out;
wire    grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_state_promoted_i_out_ap_vld;
wire    grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_ap_start;
wire    grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_ap_done;
wire    grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_ap_idle;
wire    grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_ap_ready;
wire   [127:0] grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_t_out;
wire    grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_t_out_ap_vld;
reg    grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state7;
wire   [7:0] tmp_fu_158_p4;
wire   [7:0] tmp_s_fu_168_p4;
wire   [7:0] tmp_31_fu_178_p4;
wire   [7:0] trunc_ln628_fu_188_p1;
wire   [7:0] tmp_32_fu_192_p4;
wire   [7:0] tmp_33_fu_202_p4;
wire   [7:0] tmp_34_fu_212_p4;
wire   [7:0] tmp_35_fu_222_p4;
wire   [7:0] tmp_36_fu_232_p4;
wire   [7:0] tmp_37_fu_242_p4;
wire   [7:0] tmp_38_fu_252_p4;
wire   [7:0] tmp_39_fu_262_p4;
wire   [7:0] tmp_40_fu_272_p4;
wire   [7:0] tmp_41_fu_282_p4;
wire   [7:0] tmp_42_fu_292_p4;
wire   [7:0] tmp_43_fu_302_p4;
wire   [127:0] p_Result_s_fu_312_p17;
wire   [127:0] xor_ln859_1_fu_348_p2;
reg   [127:0] ap_return_preg;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'd1;
#0 grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_ap_start_reg = 1'b0;
#0 grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_ap_start_reg = 1'b0;
#0 ap_return_preg = 128'd0;
end

pynqrypt_encrypt_aes_encrypt_block_Pipeline_loop_aes_encrypt_block grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_ap_start),
    .ap_done(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_ap_done),
    .ap_idle(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_ap_idle),
    .ap_ready(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_ap_ready),
    .xor_ln859(xor_ln859_reg_376),
    .this_round_keys_address0(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_this_round_keys_address0),
    .this_round_keys_ce0(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_this_round_keys_ce0),
    .this_round_keys_q0(this_round_keys_q0),
    .state_promoted_i_out(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_state_promoted_i_out),
    .state_promoted_i_out_ap_vld(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_state_promoted_i_out_ap_vld)
);

pynqrypt_encrypt_aes_encrypt_block_Pipeline_loop_aes_sub_bytes grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_ap_start),
    .ap_done(grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_ap_done),
    .ap_idle(grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_ap_idle),
    .ap_ready(grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_ap_ready),
    .state_promoted_i_reload(grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_state_promoted_i_out),
    .t_out(grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_t_out),
    .t_out_ap_vld(grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_t_out_ap_vld)
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
        ap_return_preg <= 128'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            ap_return_preg <= xor_ln859_1_fu_348_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_ap_start_reg <= 1'b1;
        end else if ((grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_ap_ready == 1'b1)) begin
            grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_ap_start_reg <= 1'b1;
        end else if ((grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_ap_ready == 1'b1)) begin
            grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        this_round_keys_load_reg_371 <= this_round_keys_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        xor_ln859_reg_376 <= xor_ln859_fu_145_p2;
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
    if ((grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

assign ap_ST_fsm_state7_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ap_return = xor_ln859_1_fu_348_p2;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        this_round_keys_address0 = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        this_round_keys_address0 = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        this_round_keys_address0 = grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_this_round_keys_address0;
    end else begin
        this_round_keys_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6)))) begin
        this_round_keys_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        this_round_keys_ce0 = grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_this_round_keys_ce0;
    end else begin
        this_round_keys_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_ap_start = grp_aes_encrypt_block_Pipeline_loop_aes_encrypt_block_fu_123_ap_start_reg;

assign grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_ap_start = grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_ap_start_reg;

assign p_Result_s_fu_312_p17 = {{{{{{{{{{{{{{{{tmp_fu_158_p4}, {tmp_s_fu_168_p4}}, {tmp_31_fu_178_p4}}, {trunc_ln628_fu_188_p1}}, {tmp_32_fu_192_p4}}, {tmp_33_fu_202_p4}}, {tmp_34_fu_212_p4}}, {tmp_35_fu_222_p4}}, {tmp_36_fu_232_p4}}, {tmp_37_fu_242_p4}}, {tmp_38_fu_252_p4}}, {tmp_39_fu_262_p4}}, {tmp_40_fu_272_p4}}, {tmp_41_fu_282_p4}}, {tmp_42_fu_292_p4}}, {tmp_43_fu_302_p4}};

assign tmp_31_fu_178_p4 = {{grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_t_out[47:40]}};

assign tmp_32_fu_192_p4 = {{grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_t_out[95:88]}};

assign tmp_33_fu_202_p4 = {{grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_t_out[55:48]}};

assign tmp_34_fu_212_p4 = {{grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_t_out[15:8]}};

assign tmp_35_fu_222_p4 = {{grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_t_out[103:96]}};

assign tmp_36_fu_232_p4 = {{grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_t_out[63:56]}};

assign tmp_37_fu_242_p4 = {{grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_t_out[23:16]}};

assign tmp_38_fu_252_p4 = {{grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_t_out[111:104]}};

assign tmp_39_fu_262_p4 = {{grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_t_out[71:64]}};

assign tmp_40_fu_272_p4 = {{grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_t_out[31:24]}};

assign tmp_41_fu_282_p4 = {{grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_t_out[119:112]}};

assign tmp_42_fu_292_p4 = {{grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_t_out[79:72]}};

assign tmp_43_fu_302_p4 = {{grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_t_out[39:32]}};

assign tmp_fu_158_p4 = {{grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_t_out[127:120]}};

assign tmp_s_fu_168_p4 = {{grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_t_out[87:80]}};

assign trunc_ln628_fu_188_p1 = grp_aes_encrypt_block_Pipeline_loop_aes_sub_bytes_fu_137_t_out[7:0];

assign xor_ln859_1_fu_348_p2 = (this_round_keys_q0 ^ p_Result_s_fu_312_p17);

assign xor_ln859_fu_145_p2 = (this_round_keys_load_reg_371 ^ p_read);

endmodule //pynqrypt_encrypt_aes_encrypt_block
