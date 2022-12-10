-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pynqrypt_encrypt_aes_encrypt_block_Pipeline_loop_aes_sub_bytes is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    state_promoted_i_reload : IN STD_LOGIC_VECTOR (127 downto 0);
    t_out : OUT STD_LOGIC_VECTOR (127 downto 0);
    t_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of pynqrypt_encrypt_aes_encrypt_block_Pipeline_loop_aes_sub_bytes is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2048_lc_1 : STD_LOGIC_VECTOR (2047 downto 0) := "00010110101110110101010010110000000011110010110110011001010000010110100001000010111001101011111100001101100010011010000110001100110111110010100001010101110011101110100110000111000111101001101110010100100011101101100101101001000100011001100011111000111000011001111000011101110000011000011010111001010101110011010101100001000011101111011000000011010010000110011010110101001111100111000010001010100010111011110101001011000111110111010011011101111010001100011010110100101001100001110000101110001001010111100010111010000010001010111001111010011001011110101011110100010101100110110010101001010011101101010110001101011011010011011111001000111001110111100111100100100101011001000101100010101011001101001111000010010111000010010000000110010010010000101000111010001100101110000011011011000010110101111011011110000101001011100011101110010001101000100010010000001010100010001011011100010011111000000101100000011100110001100101011101011001000011110101111110101001111100010000010111010001001001011101011111111011000001001100001100110011011101001011110011111111110001000000100001110110101011011010111100111101010011100010011101100100101000111101000000101000110101000110101000100111110011110001010000011111110000001011111001010001011000010100110011010011010100001111111011101010101110111111010000110011110101100001001100010010100011100110111110110010110110101001011011101100011111110000100000111011010000000011010001010100111000010000101111111000110010100110110011110101100011101101010010101000000101101001101110000110110001101000101100100000110000100101110101101100100010011111101011111000101000000000010010000001111001101000000101100101100001100011000011001000111100011100000100000101010011000111011000011100011111000111100101101001010011010011001100111101110011111100110110001001101001001111111101101101111100000001110010101001001001110010101111101000101101010010101101111100000100011101011001111110100111110111001001100000101100101001110110101010111101011111111110001010110110011100000001001100001100010101101111011010111111001001111011011101110111110001100011";
    constant ap_const_lv128_lc_8 : STD_LOGIC_VECTOR (127 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111";
    constant ap_const_lv128_lc_9 : STD_LOGIC_VECTOR (127 downto 0) := "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln63_fu_78_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal p_Result_s_fu_173_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal p_Result_s_reg_210 : STD_LOGIC_VECTOR (127 downto 0);
    signal i_fu_44 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_4_fu_84_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal p_Val2_s_fu_48 : STD_LOGIC_VECTOR (127 downto 0);
    signal ap_sig_allocacmp_p_Val2_load_1 : STD_LOGIC_VECTOR (127 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal trunc_ln64_fu_93_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln5_fu_97_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln668_fu_105_p1 : STD_LOGIC_VECTOR (127 downto 0);
    signal lshr_ln668_fu_109_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal trunc_ln668_fu_115_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal shl_ln6_fu_119_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln186_fu_127_p1 : STD_LOGIC_VECTOR (2047 downto 0);
    signal lshr_ln186_fu_131_p2 : STD_LOGIC_VECTOR (2047 downto 0);
    signal zext_ln368_fu_141_p1 : STD_LOGIC_VECTOR (127 downto 0);
    signal shl_ln368_fu_145_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal xor_ln368_fu_151_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal trunc_ln186_fu_137_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln368_1_fu_163_p1 : STD_LOGIC_VECTOR (127 downto 0);
    signal and_ln368_fu_157_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal shl_ln368_1_fu_167_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component pynqrypt_encrypt_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component pynqrypt_encrypt_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter1_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    i_fu_44_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_44 <= ap_const_lv5_0;
                elsif (((icmp_ln63_fu_78_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    i_fu_44 <= i_4_fu_84_p2;
                end if;
            end if; 
        end if;
    end process;

    p_Val2_s_fu_48_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    p_Val2_s_fu_48 <= state_promoted_i_reload;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    p_Val2_s_fu_48 <= p_Result_s_reg_210;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln63_fu_78_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                p_Result_s_reg_210 <= p_Result_s_fu_173_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    and_ln368_fu_157_p2 <= (xor_ln368_fu_151_p2 and ap_sig_allocacmp_p_Val2_load_1);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln63_fu_78_p2)
    begin
        if (((icmp_ln63_fu_78_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_start_int = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter1_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_p_Val2_load_1_assign_proc : process(ap_enable_reg_pp0_iter2, p_Result_s_reg_210, ap_block_pp0_stage0, p_Val2_s_fu_48)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            ap_sig_allocacmp_p_Val2_load_1 <= p_Result_s_reg_210;
        else 
            ap_sig_allocacmp_p_Val2_load_1 <= p_Val2_s_fu_48;
        end if; 
    end process;

    i_4_fu_84_p2 <= std_logic_vector(unsigned(i_fu_44) + unsigned(ap_const_lv5_1));
    icmp_ln63_fu_78_p2 <= "1" when (i_fu_44 = ap_const_lv5_10) else "0";
    lshr_ln186_fu_131_p2 <= std_logic_vector(shift_right(unsigned(ap_const_lv2048_lc_1),to_integer(unsigned('0' & zext_ln186_fu_127_p1(31-1 downto 0)))));
    lshr_ln668_fu_109_p2 <= std_logic_vector(shift_right(unsigned(ap_sig_allocacmp_p_Val2_load_1),to_integer(unsigned('0' & zext_ln668_fu_105_p1(31-1 downto 0)))));
    p_Result_s_fu_173_p2 <= (shl_ln368_1_fu_167_p2 or and_ln368_fu_157_p2);
    shl_ln368_1_fu_167_p2 <= std_logic_vector(shift_left(unsigned(zext_ln368_1_fu_163_p1),to_integer(unsigned('0' & zext_ln368_fu_141_p1(31-1 downto 0)))));
    shl_ln368_fu_145_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv128_lc_8),to_integer(unsigned('0' & zext_ln368_fu_141_p1(31-1 downto 0)))));
    shl_ln5_fu_97_p3 <= (trunc_ln64_fu_93_p1 & ap_const_lv3_0);
    shl_ln6_fu_119_p3 <= (trunc_ln668_fu_115_p1 & ap_const_lv3_0);
    t_out <= p_Val2_s_fu_48;

    t_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln63_fu_78_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln63_fu_78_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            t_out_ap_vld <= ap_const_logic_1;
        else 
            t_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    trunc_ln186_fu_137_p1 <= lshr_ln186_fu_131_p2(8 - 1 downto 0);
    trunc_ln64_fu_93_p1 <= i_fu_44(4 - 1 downto 0);
    trunc_ln668_fu_115_p1 <= lshr_ln668_fu_109_p2(8 - 1 downto 0);
    xor_ln368_fu_151_p2 <= (shl_ln368_fu_145_p2 xor ap_const_lv128_lc_9);
    zext_ln186_fu_127_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln6_fu_119_p3),2048));
    zext_ln368_1_fu_163_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln186_fu_137_p1),128));
    zext_ln368_fu_141_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln5_fu_97_p3),128));
    zext_ln668_fu_105_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln5_fu_97_p3),128));
end behav;
