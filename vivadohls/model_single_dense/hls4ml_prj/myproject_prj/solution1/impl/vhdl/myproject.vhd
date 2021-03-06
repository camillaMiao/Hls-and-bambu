-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity myproject is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    dense_1_input_V_ap_vld : IN STD_LOGIC;
    dense_1_input_V : IN STD_LOGIC_VECTOR (255 downto 0);
    layer2_out_0_V : OUT STD_LOGIC_VECTOR (15 downto 0);
    layer2_out_0_V_ap_vld : OUT STD_LOGIC;
    layer2_out_1_V : OUT STD_LOGIC_VECTOR (15 downto 0);
    layer2_out_1_V_ap_vld : OUT STD_LOGIC;
    layer2_out_2_V : OUT STD_LOGIC_VECTOR (15 downto 0);
    layer2_out_2_V_ap_vld : OUT STD_LOGIC;
    layer2_out_3_V : OUT STD_LOGIC_VECTOR (15 downto 0);
    layer2_out_3_V_ap_vld : OUT STD_LOGIC;
    const_size_in_1 : OUT STD_LOGIC_VECTOR (15 downto 0);
    const_size_in_1_ap_vld : OUT STD_LOGIC;
    const_size_out_1 : OUT STD_LOGIC_VECTOR (15 downto 0);
    const_size_out_1_ap_vld : OUT STD_LOGIC );
end;


architecture behav of myproject is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "myproject,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7vx690t-ffg1930-3,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=pipeline,HLS_SYN_CLOCK=3.830000,HLS_SYN_LAT=3,HLS_SYN_TPT=1,HLS_SYN_MEM=0,HLS_SYN_DSP=55,HLS_SYN_FF=1866,HLS_SYN_LUT=1773,HLS_VERSION=2019_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv256_lc_1 : STD_LOGIC_VECTOR (255 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv16_10 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000010000";
    constant ap_const_lv16_4 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000100";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal dense_1_input_V_ap_vld_in_sig : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal dense_1_input_V_preg : STD_LOGIC_VECTOR (255 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal dense_1_input_V_in_sig : STD_LOGIC_VECTOR (255 downto 0);
    signal dense_1_input_V_ap_vld_preg : STD_LOGIC := '0';
    signal dense_1_input_V_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_96_ap_return_0 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_96_ap_return_1 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_96_ap_return_2 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_96_ap_return_3 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_96_ap_ce : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0_ignore_call14 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1_ignore_call14 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2_ignore_call14 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3_ignore_call14 : BOOLEAN;
    signal ap_block_pp0_stage0_11001_ignoreCallOp6 : BOOLEAN;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to2 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;

    component dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_V_read : IN STD_LOGIC_VECTOR (255 downto 0);
        ap_return_0 : OUT STD_LOGIC_VECTOR (15 downto 0);
        ap_return_1 : OUT STD_LOGIC_VECTOR (15 downto 0);
        ap_return_2 : OUT STD_LOGIC_VECTOR (15 downto 0);
        ap_return_3 : OUT STD_LOGIC_VECTOR (15 downto 0);
        ap_ce : IN STD_LOGIC );
    end component;



begin
    grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_96 : component dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_V_read => dense_1_input_V_in_sig,
        ap_return_0 => grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_96_ap_return_0,
        ap_return_1 => grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_96_ap_return_1,
        ap_return_2 => grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_96_ap_return_2,
        ap_return_3 => grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_96_ap_return_3,
        ap_ce => grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_96_ap_ce);





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


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start;
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
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    dense_1_input_V_ap_vld_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                dense_1_input_V_ap_vld_preg <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    dense_1_input_V_ap_vld_preg <= ap_const_logic_0;
                elsif ((not(((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) and (dense_1_input_V_ap_vld = ap_const_logic_1))) then 
                    dense_1_input_V_ap_vld_preg <= dense_1_input_V_ap_vld;
                end if; 
            end if;
        end if;
    end process;


    dense_1_input_V_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                dense_1_input_V_preg <= ap_const_lv256_lc_1;
            else
                if ((not(((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) and (dense_1_input_V_ap_vld = ap_const_logic_1))) then 
                    dense_1_input_V_preg <= dense_1_input_V;
                end if; 
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage0_subdone, ap_reset_idle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, dense_1_input_V_ap_vld_in_sig)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (dense_1_input_V_ap_vld_in_sig = ap_const_logic_0)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, dense_1_input_V_ap_vld_in_sig)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (dense_1_input_V_ap_vld_in_sig = ap_const_logic_0)));
    end process;


    ap_block_pp0_stage0_11001_ignoreCallOp6_assign_proc : process(ap_start, dense_1_input_V_ap_vld_in_sig)
    begin
                ap_block_pp0_stage0_11001_ignoreCallOp6 <= ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (dense_1_input_V_ap_vld_in_sig = ap_const_logic_0)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, dense_1_input_V_ap_vld_in_sig)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (dense_1_input_V_ap_vld_in_sig = ap_const_logic_0)));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start, dense_1_input_V_ap_vld_in_sig)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_start = ap_const_logic_0) or (dense_1_input_V_ap_vld_in_sig = ap_const_logic_0));
    end process;


    ap_block_state1_pp0_stage0_iter0_ignore_call14_assign_proc : process(ap_start, dense_1_input_V_ap_vld_in_sig)
    begin
                ap_block_state1_pp0_stage0_iter0_ignore_call14 <= ((ap_start = ap_const_logic_0) or (dense_1_input_V_ap_vld_in_sig = ap_const_logic_0));
    end process;

        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1_ignore_call14 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2_ignore_call14 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3_ignore_call14 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_done_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start;

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_idle_pp0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to2_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0_0to2 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_reset_idle_pp0_assign_proc : process(ap_start, ap_idle_pp0_0to2)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0_0to2 = ap_const_logic_1))) then 
            ap_reset_idle_pp0 <= ap_const_logic_1;
        else 
            ap_reset_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    const_size_in_1 <= ap_const_lv16_10;

    const_size_in_1_ap_vld_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            const_size_in_1_ap_vld <= ap_const_logic_1;
        else 
            const_size_in_1_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    const_size_out_1 <= ap_const_lv16_4;

    const_size_out_1_ap_vld_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            const_size_out_1_ap_vld <= ap_const_logic_1;
        else 
            const_size_out_1_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    dense_1_input_V_ap_vld_in_sig_assign_proc : process(dense_1_input_V_ap_vld, dense_1_input_V_ap_vld_preg)
    begin
        if ((dense_1_input_V_ap_vld = ap_const_logic_1)) then 
            dense_1_input_V_ap_vld_in_sig <= dense_1_input_V_ap_vld;
        else 
            dense_1_input_V_ap_vld_in_sig <= dense_1_input_V_ap_vld_preg;
        end if; 
    end process;


    dense_1_input_V_blk_n_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, dense_1_input_V_ap_vld, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_start = ap_const_logic_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            dense_1_input_V_blk_n <= dense_1_input_V_ap_vld;
        else 
            dense_1_input_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    dense_1_input_V_in_sig_assign_proc : process(dense_1_input_V_ap_vld, dense_1_input_V, dense_1_input_V_preg)
    begin
        if ((dense_1_input_V_ap_vld = ap_const_logic_1)) then 
            dense_1_input_V_in_sig <= dense_1_input_V;
        else 
            dense_1_input_V_in_sig <= dense_1_input_V_preg;
        end if; 
    end process;


    grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_96_ap_ce_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001_ignoreCallOp6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001_ignoreCallOp6))) then 
            grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_96_ap_ce <= ap_const_logic_1;
        else 
            grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_96_ap_ce <= ap_const_logic_0;
        end if; 
    end process;

    layer2_out_0_V <= grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_96_ap_return_0;

    layer2_out_0_V_ap_vld_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            layer2_out_0_V_ap_vld <= ap_const_logic_1;
        else 
            layer2_out_0_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    layer2_out_1_V <= grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_96_ap_return_1;

    layer2_out_1_V_ap_vld_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            layer2_out_1_V_ap_vld <= ap_const_logic_1;
        else 
            layer2_out_1_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    layer2_out_2_V <= grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_96_ap_return_2;

    layer2_out_2_V_ap_vld_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            layer2_out_2_V_ap_vld <= ap_const_logic_1;
        else 
            layer2_out_2_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    layer2_out_3_V <= grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_96_ap_return_3;

    layer2_out_3_V_ap_vld_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            layer2_out_3_V_ap_vld <= ap_const_logic_1;
        else 
            layer2_out_3_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

end behav;
