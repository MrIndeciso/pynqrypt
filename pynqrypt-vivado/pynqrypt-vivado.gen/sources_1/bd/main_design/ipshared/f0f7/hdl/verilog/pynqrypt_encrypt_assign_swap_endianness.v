// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module pynqrypt_encrypt_assign_swap_endianness (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
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
        m_axi_gmem_RFIFONUM,
        m_axi_gmem_RUSER,
        m_axi_gmem_RRESP,
        m_axi_gmem_BVALID,
        m_axi_gmem_BREADY,
        m_axi_gmem_BRESP,
        m_axi_gmem_BID,
        m_axi_gmem_BUSER,
        i,
        plaintext,
        i_c_din,
        i_c_num_data_valid,
        i_c_fifo_cap,
        i_c_full_n,
        i_c_write,
        ap_return
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   m_axi_gmem_AWVALID;
input   m_axi_gmem_AWREADY;
output  [63:0] m_axi_gmem_AWADDR;
output  [0:0] m_axi_gmem_AWID;
output  [31:0] m_axi_gmem_AWLEN;
output  [2:0] m_axi_gmem_AWSIZE;
output  [1:0] m_axi_gmem_AWBURST;
output  [1:0] m_axi_gmem_AWLOCK;
output  [3:0] m_axi_gmem_AWCACHE;
output  [2:0] m_axi_gmem_AWPROT;
output  [3:0] m_axi_gmem_AWQOS;
output  [3:0] m_axi_gmem_AWREGION;
output  [0:0] m_axi_gmem_AWUSER;
output   m_axi_gmem_WVALID;
input   m_axi_gmem_WREADY;
output  [127:0] m_axi_gmem_WDATA;
output  [15:0] m_axi_gmem_WSTRB;
output   m_axi_gmem_WLAST;
output  [0:0] m_axi_gmem_WID;
output  [0:0] m_axi_gmem_WUSER;
output   m_axi_gmem_ARVALID;
input   m_axi_gmem_ARREADY;
output  [63:0] m_axi_gmem_ARADDR;
output  [0:0] m_axi_gmem_ARID;
output  [31:0] m_axi_gmem_ARLEN;
output  [2:0] m_axi_gmem_ARSIZE;
output  [1:0] m_axi_gmem_ARBURST;
output  [1:0] m_axi_gmem_ARLOCK;
output  [3:0] m_axi_gmem_ARCACHE;
output  [2:0] m_axi_gmem_ARPROT;
output  [3:0] m_axi_gmem_ARQOS;
output  [3:0] m_axi_gmem_ARREGION;
output  [0:0] m_axi_gmem_ARUSER;
input   m_axi_gmem_RVALID;
output   m_axi_gmem_RREADY;
input  [127:0] m_axi_gmem_RDATA;
input   m_axi_gmem_RLAST;
input  [0:0] m_axi_gmem_RID;
input  [8:0] m_axi_gmem_RFIFONUM;
input  [0:0] m_axi_gmem_RUSER;
input  [1:0] m_axi_gmem_RRESP;
input   m_axi_gmem_BVALID;
output   m_axi_gmem_BREADY;
input  [1:0] m_axi_gmem_BRESP;
input  [0:0] m_axi_gmem_BID;
input  [0:0] m_axi_gmem_BUSER;
input  [59:0] i;
input  [63:0] plaintext;
output  [59:0] i_c_din;
input  [2:0] i_c_num_data_valid;
input  [2:0] i_c_fifo_cap;
input   i_c_full_n;
output   i_c_write;
output  [127:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_gmem_ARVALID;
reg m_axi_gmem_RREADY;
reg i_c_write;
reg[127:0] ap_return;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    gmem_blk_n_AR;
wire    ap_CS_fsm_state2;
reg    gmem_blk_n_R;
wire    ap_CS_fsm_state9;
reg    i_c_blk_n;
reg   [59:0] trunc_ln_reg_372;
wire  signed [63:0] sext_ln22_fu_172_p1;
reg    ap_block_state1;
wire   [63:0] shl_ln_fu_148_p3;
wire   [63:0] add_ln21_fu_156_p2;
wire   [7:0] trunc_ln628_fu_182_p1;
wire   [7:0] tmp_i3_fu_186_p4;
wire   [7:0] tmp_15_i4_fu_196_p4;
wire   [7:0] tmp_16_i5_fu_206_p4;
wire   [7:0] tmp_17_i6_fu_216_p4;
wire   [7:0] tmp_18_i7_fu_226_p4;
wire   [7:0] tmp_19_i8_fu_236_p4;
wire   [7:0] tmp_20_i9_fu_246_p4;
wire   [7:0] tmp_21_i_fu_256_p4;
wire   [7:0] tmp_22_i_fu_266_p4;
wire   [7:0] tmp_23_i_fu_276_p4;
wire   [7:0] tmp_24_i_fu_286_p4;
wire   [7:0] tmp_25_i_fu_296_p4;
wire   [7:0] tmp_26_i_fu_306_p4;
wire   [7:0] tmp_27_i_fu_316_p4;
wire   [7:0] tmp_28_i_fu_326_p4;
wire   [127:0] p_Result_s_fu_336_p17;
reg   [127:0] ap_return_preg;
reg   [8:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 9'd1;
#0 ap_return_preg = 128'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((m_axi_gmem_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 128'd0;
    end else begin
        if (((m_axi_gmem_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
            ap_return_preg <= p_Result_s_fu_336_p17;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        trunc_ln_reg_372 <= {{add_ln21_fu_156_p2[63:4]}};
    end
end

always @ (*) begin
    if (((i_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((m_axi_gmem_ARREADY == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

always @ (*) begin
    if ((m_axi_gmem_RVALID == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_gmem_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
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
    if (((m_axi_gmem_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_gmem_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        ap_return = p_Result_s_fu_336_p17;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        gmem_blk_n_AR = m_axi_gmem_ARREADY;
    end else begin
        gmem_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        gmem_blk_n_R = m_axi_gmem_RVALID;
    end else begin
        gmem_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_c_blk_n = i_c_full_n;
    end else begin
        i_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((i_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_c_write = 1'b1;
    end else begin
        i_c_write = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_gmem_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        m_axi_gmem_ARVALID = 1'b1;
    end else begin
        m_axi_gmem_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_gmem_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        m_axi_gmem_RREADY = 1'b1;
    end else begin
        m_axi_gmem_RREADY = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((i_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((m_axi_gmem_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((m_axi_gmem_RVALID == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln21_fu_156_p2 = (shl_ln_fu_148_p3 + plaintext);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state1 = ((i_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

assign i_c_din = i;

assign m_axi_gmem_ARADDR = sext_ln22_fu_172_p1;

assign m_axi_gmem_ARBURST = 2'd0;

assign m_axi_gmem_ARCACHE = 4'd0;

assign m_axi_gmem_ARID = 1'd0;

assign m_axi_gmem_ARLEN = 32'd1;

assign m_axi_gmem_ARLOCK = 2'd0;

assign m_axi_gmem_ARPROT = 3'd0;

assign m_axi_gmem_ARQOS = 4'd0;

assign m_axi_gmem_ARREGION = 4'd0;

assign m_axi_gmem_ARSIZE = 3'd0;

assign m_axi_gmem_ARUSER = 1'd0;

assign m_axi_gmem_AWADDR = 64'd0;

assign m_axi_gmem_AWBURST = 2'd0;

assign m_axi_gmem_AWCACHE = 4'd0;

assign m_axi_gmem_AWID = 1'd0;

assign m_axi_gmem_AWLEN = 32'd0;

assign m_axi_gmem_AWLOCK = 2'd0;

assign m_axi_gmem_AWPROT = 3'd0;

assign m_axi_gmem_AWQOS = 4'd0;

assign m_axi_gmem_AWREGION = 4'd0;

assign m_axi_gmem_AWSIZE = 3'd0;

assign m_axi_gmem_AWUSER = 1'd0;

assign m_axi_gmem_AWVALID = 1'b0;

assign m_axi_gmem_BREADY = 1'b0;

assign m_axi_gmem_WDATA = 128'd0;

assign m_axi_gmem_WID = 1'd0;

assign m_axi_gmem_WLAST = 1'b0;

assign m_axi_gmem_WSTRB = 16'd0;

assign m_axi_gmem_WUSER = 1'd0;

assign m_axi_gmem_WVALID = 1'b0;

assign p_Result_s_fu_336_p17 = {{{{{{{{{{{{{{{{trunc_ln628_fu_182_p1}, {tmp_i3_fu_186_p4}}, {tmp_15_i4_fu_196_p4}}, {tmp_16_i5_fu_206_p4}}, {tmp_17_i6_fu_216_p4}}, {tmp_18_i7_fu_226_p4}}, {tmp_19_i8_fu_236_p4}}, {tmp_20_i9_fu_246_p4}}, {tmp_21_i_fu_256_p4}}, {tmp_22_i_fu_266_p4}}, {tmp_23_i_fu_276_p4}}, {tmp_24_i_fu_286_p4}}, {tmp_25_i_fu_296_p4}}, {tmp_26_i_fu_306_p4}}, {tmp_27_i_fu_316_p4}}, {tmp_28_i_fu_326_p4}};

assign sext_ln22_fu_172_p1 = $signed(trunc_ln_reg_372);

assign shl_ln_fu_148_p3 = {{i}, {4'd0}};

assign tmp_15_i4_fu_196_p4 = {{m_axi_gmem_RDATA[23:16]}};

assign tmp_16_i5_fu_206_p4 = {{m_axi_gmem_RDATA[31:24]}};

assign tmp_17_i6_fu_216_p4 = {{m_axi_gmem_RDATA[39:32]}};

assign tmp_18_i7_fu_226_p4 = {{m_axi_gmem_RDATA[47:40]}};

assign tmp_19_i8_fu_236_p4 = {{m_axi_gmem_RDATA[55:48]}};

assign tmp_20_i9_fu_246_p4 = {{m_axi_gmem_RDATA[63:56]}};

assign tmp_21_i_fu_256_p4 = {{m_axi_gmem_RDATA[71:64]}};

assign tmp_22_i_fu_266_p4 = {{m_axi_gmem_RDATA[79:72]}};

assign tmp_23_i_fu_276_p4 = {{m_axi_gmem_RDATA[87:80]}};

assign tmp_24_i_fu_286_p4 = {{m_axi_gmem_RDATA[95:88]}};

assign tmp_25_i_fu_296_p4 = {{m_axi_gmem_RDATA[103:96]}};

assign tmp_26_i_fu_306_p4 = {{m_axi_gmem_RDATA[111:104]}};

assign tmp_27_i_fu_316_p4 = {{m_axi_gmem_RDATA[119:112]}};

assign tmp_28_i_fu_326_p4 = {{m_axi_gmem_RDATA[127:120]}};

assign tmp_i3_fu_186_p4 = {{m_axi_gmem_RDATA[15:8]}};

assign trunc_ln628_fu_182_p1 = m_axi_gmem_RDATA[7:0];

endmodule //pynqrypt_encrypt_assign_swap_endianness
