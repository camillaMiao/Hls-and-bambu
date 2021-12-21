// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _myproject_axi_HH_
#define _myproject_axi_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "myproject.h"
#include "myproject_axi_fpext_32ns_64_3_1.h"
#include "myproject_axi_ashr_54ns_32ns_54_2_1.h"
#include "myproject_axi_mux_42_16_1_1.h"
#include "myproject_axi_lshr_32ns_32ns_32_2_1.h"
#include "myproject_axi_shl_64ns_32ns_64_2_1.h"

namespace ap_rtl {

struct myproject_axi : public sc_module {
    // Port declarations 10
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_lv<32> > in_r_TDATA;
    sc_in< sc_logic > in_r_TVALID;
    sc_out< sc_logic > in_r_TREADY;
    sc_in< sc_lv<1> > in_r_TLAST;
    sc_out< sc_lv<32> > out_r_TDATA;
    sc_out< sc_logic > out_r_TVALID;
    sc_in< sc_logic > out_r_TREADY;
    sc_out< sc_lv<1> > out_r_TLAST;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    myproject_axi(sc_module_name name);
    SC_HAS_PROCESS(myproject_axi);

    ~myproject_axi();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    myproject* grp_myproject_fu_230;
    myproject_axi_fpext_32ns_64_3_1<1,3,32,64>* myproject_axi_fpext_32ns_64_3_1_U61;
    myproject_axi_ashr_54ns_32ns_54_2_1<1,2,2,54,32,54>* myproject_axi_ashr_54ns_32ns_54_2_1_U62;
    myproject_axi_mux_42_16_1_1<1,1,16,16,16,16,2,16>* myproject_axi_mux_42_16_1_1_U63;
    myproject_axi_lshr_32ns_32ns_32_2_1<1,2,1,32,32,32>* myproject_axi_lshr_32ns_32ns_32_2_1_U64;
    myproject_axi_shl_64ns_32ns_64_2_1<1,2,0,64,32,64>* myproject_axi_shl_64ns_32ns_64_2_1_U65;
    regslice_both<32>* regslice_both_in_data_U;
    regslice_both<1>* regslice_both_in_last_V_U;
    regslice_both<32>* regslice_both_out_data_U;
    regslice_both<1>* regslice_both_out_last_V_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > in_r_TDATA_blk_n;
    sc_signal< sc_lv<11> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln19_fu_238_p2;
    sc_signal< sc_logic > out_r_TDATA_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter8;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< sc_lv<1> > icmp_ln27_reg_1211;
    sc_signal< sc_lv<1> > icmp_ln27_reg_1211_pp1_iter7_reg;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter9;
    sc_signal< sc_lv<1> > icmp_ln27_reg_1211_pp1_iter8_reg;
    sc_signal< sc_lv<1> > is_last_0_reg_196;
    sc_signal< sc_lv<5> > i_0_reg_208;
    sc_signal< sc_lv<3> > i2_0_reg_219;
    sc_signal< sc_lv<1> > icmp_ln19_reg_1030;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter5;
    sc_signal< bool > ap_block_state8_pp0_stage0_iter6;
    sc_signal< bool > ap_block_state9_pp0_stage0_iter7;
    sc_signal< bool > ap_block_state10_pp0_stage0_iter8;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln19_reg_1030_pp0_iter1_reg;
    sc_signal< sc_lv<1> > icmp_ln19_reg_1030_pp0_iter2_reg;
    sc_signal< sc_lv<1> > icmp_ln19_reg_1030_pp0_iter3_reg;
    sc_signal< sc_lv<1> > icmp_ln19_reg_1030_pp0_iter4_reg;
    sc_signal< sc_lv<1> > icmp_ln19_reg_1030_pp0_iter5_reg;
    sc_signal< sc_lv<1> > icmp_ln19_reg_1030_pp0_iter6_reg;
    sc_signal< sc_lv<1> > icmp_ln19_reg_1030_pp0_iter7_reg;
    sc_signal< sc_lv<5> > i_fu_244_p2;
    sc_signal< sc_lv<32> > in_data_tmp_reg_1039;
    sc_signal< sc_lv<32> > in_data_tmp_reg_1039_pp0_iter1_reg;
    sc_signal< sc_lv<32> > in_data_tmp_reg_1039_pp0_iter2_reg;
    sc_signal< sc_lv<32> > in_data_tmp_reg_1039_pp0_iter3_reg;
    sc_signal< sc_lv<4> > trunc_ln203_fu_259_p1;
    sc_signal< sc_lv<4> > trunc_ln203_reg_1045;
    sc_signal< sc_lv<4> > trunc_ln203_reg_1045_pp0_iter1_reg;
    sc_signal< sc_lv<4> > trunc_ln203_reg_1045_pp0_iter2_reg;
    sc_signal< sc_lv<4> > trunc_ln203_reg_1045_pp0_iter3_reg;
    sc_signal< sc_lv<4> > trunc_ln203_reg_1045_pp0_iter4_reg;
    sc_signal< sc_lv<4> > trunc_ln203_reg_1045_pp0_iter5_reg;
    sc_signal< sc_lv<1> > is_last_fu_263_p2;
    sc_signal< sc_lv<1> > is_last_reg_1050;
    sc_signal< sc_lv<63> > trunc_ln556_fu_273_p1;
    sc_signal< sc_lv<63> > trunc_ln556_reg_1055;
    sc_signal< sc_lv<1> > p_Result_8_reg_1060;
    sc_signal< sc_lv<11> > exp_tmp_V_reg_1065;
    sc_signal< sc_lv<52> > trunc_ln565_fu_295_p1;
    sc_signal< sc_lv<52> > trunc_ln565_reg_1070;
    sc_signal< sc_lv<54> > man_V_2_fu_319_p3;
    sc_signal< sc_lv<54> > man_V_2_reg_1075;
    sc_signal< sc_lv<1> > icmp_ln571_fu_326_p2;
    sc_signal< sc_lv<1> > icmp_ln571_reg_1080;
    sc_signal< sc_lv<1> > icmp_ln571_reg_1080_pp0_iter4_reg;
    sc_signal< sc_lv<1> > icmp_ln581_fu_337_p2;
    sc_signal< sc_lv<1> > icmp_ln581_reg_1086;
    sc_signal< sc_lv<12> > sh_amt_fu_355_p3;
    sc_signal< sc_lv<12> > sh_amt_reg_1092;
    sc_signal< sc_lv<1> > icmp_ln582_fu_363_p2;
    sc_signal< sc_lv<1> > icmp_ln582_reg_1098;
    sc_signal< sc_lv<1> > icmp_ln582_reg_1098_pp0_iter4_reg;
    sc_signal< sc_lv<16> > trunc_ln583_fu_369_p1;
    sc_signal< sc_lv<16> > trunc_ln583_reg_1104;
    sc_signal< sc_lv<16> > trunc_ln583_reg_1104_pp0_iter4_reg;
    sc_signal< sc_lv<16> > trunc_ln583_reg_1104_pp0_iter5_reg;
    sc_signal< sc_lv<8> > tmp_4_reg_1110;
    sc_signal< sc_lv<32> > sext_ln581_fu_383_p1;
    sc_signal< sc_lv<32> > sext_ln581_reg_1115;
    sc_signal< sc_lv<32> > sext_ln581_reg_1115_pp0_iter5_reg;
    sc_signal< sc_lv<1> > and_ln585_fu_445_p2;
    sc_signal< sc_lv<1> > and_ln585_reg_1125;
    sc_signal< sc_lv<1> > and_ln603_fu_468_p2;
    sc_signal< sc_lv<1> > and_ln603_reg_1130;
    sc_signal< sc_lv<1> > and_ln603_reg_1130_pp0_iter5_reg;
    sc_signal< sc_lv<1> > or_ln603_fu_474_p2;
    sc_signal< sc_lv<1> > or_ln603_reg_1135;
    sc_signal< sc_lv<1> > or_ln603_reg_1135_pp0_iter5_reg;
    sc_signal< sc_lv<16> > select_ln603_1_fu_480_p3;
    sc_signal< sc_lv<16> > select_ln603_1_reg_1141;
    sc_signal< sc_lv<16> > select_ln603_1_reg_1141_pp0_iter5_reg;
    sc_signal< sc_lv<54> > grp_fu_400_p2;
    sc_signal< sc_lv<54> > ashr_ln586_reg_1146;
    sc_signal< sc_lv<1> > or_ln603_2_fu_502_p2;
    sc_signal< sc_lv<1> > or_ln603_2_reg_1151;
    sc_signal< sc_lv<1> > or_ln603_2_reg_1151_pp0_iter6_reg;
    sc_signal< sc_lv<16> > select_ln603_2_fu_525_p3;
    sc_signal< sc_lv<16> > select_ln603_2_reg_1156;
    sc_signal< sc_lv<8> > shl_ln_fu_531_p3;
    sc_signal< sc_lv<8> > shl_ln_reg_1161;
    sc_signal< sc_lv<8> > empty_32_fu_538_p2;
    sc_signal< sc_lv<8> > empty_32_reg_1166;
    sc_signal< sc_lv<1> > icmp_ln203_fu_544_p2;
    sc_signal< sc_lv<1> > icmp_ln203_reg_1171;
    sc_signal< sc_lv<1> > icmp_ln203_reg_1171_pp0_iter7_reg;
    sc_signal< sc_lv<256> > shl_ln203_fu_611_p2;
    sc_signal< sc_lv<256> > shl_ln203_reg_1179;
    sc_signal< sc_lv<256> > and_ln203_fu_629_p2;
    sc_signal< sc_lv<256> > and_ln203_reg_1185;
    sc_signal< sc_lv<16> > out_local_0_V_reg_1191;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<16> > out_local_1_V_reg_1196;
    sc_signal< sc_lv<16> > out_local_2_V_reg_1201;
    sc_signal< sc_lv<16> > out_local_3_V_reg_1206;
    sc_signal< sc_lv<1> > icmp_ln27_fu_696_p2;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< bool > ap_block_state18_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state19_pp1_stage0_iter1;
    sc_signal< bool > ap_block_state20_pp1_stage0_iter2;
    sc_signal< bool > ap_block_state21_pp1_stage0_iter3;
    sc_signal< bool > ap_block_state22_pp1_stage0_iter4;
    sc_signal< bool > ap_block_state23_pp1_stage0_iter5;
    sc_signal< bool > ap_block_state24_pp1_stage0_iter6;
    sc_signal< bool > ap_block_state25_pp1_stage0_iter7;
    sc_signal< bool > ap_block_state26_pp1_stage0_iter8;
    sc_signal< bool > ap_block_state26_io;
    sc_signal< bool > ap_block_state27_pp1_stage0_iter9;
    sc_signal< bool > ap_block_state27_io;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln27_reg_1211_pp1_iter1_reg;
    sc_signal< sc_lv<1> > icmp_ln27_reg_1211_pp1_iter2_reg;
    sc_signal< sc_lv<1> > icmp_ln27_reg_1211_pp1_iter3_reg;
    sc_signal< sc_lv<1> > icmp_ln27_reg_1211_pp1_iter4_reg;
    sc_signal< sc_lv<1> > icmp_ln27_reg_1211_pp1_iter5_reg;
    sc_signal< sc_lv<1> > icmp_ln27_reg_1211_pp1_iter6_reg;
    sc_signal< sc_lv<3> > i_1_fu_702_p2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< sc_lv<16> > tmp_V_3_fu_712_p6;
    sc_signal< sc_lv<16> > tmp_V_3_reg_1220;
    sc_signal< sc_lv<1> > p_Result_10_reg_1226;
    sc_signal< sc_lv<1> > p_Result_10_reg_1226_pp1_iter1_reg;
    sc_signal< sc_lv<1> > p_Result_10_reg_1226_pp1_iter2_reg;
    sc_signal< sc_lv<1> > p_Result_10_reg_1226_pp1_iter3_reg;
    sc_signal< sc_lv<1> > p_Result_10_reg_1226_pp1_iter4_reg;
    sc_signal< sc_lv<1> > p_Result_10_reg_1226_pp1_iter5_reg;
    sc_signal< sc_lv<1> > p_Result_10_reg_1226_pp1_iter6_reg;
    sc_signal< sc_lv<1> > p_Result_10_reg_1226_pp1_iter7_reg;
    sc_signal< sc_lv<16> > tmp_V_fu_730_p2;
    sc_signal< sc_lv<16> > tmp_V_reg_1232;
    sc_signal< sc_lv<1> > and_ln30_fu_742_p2;
    sc_signal< sc_lv<1> > and_ln30_reg_1237;
    sc_signal< sc_lv<1> > and_ln30_reg_1237_pp1_iter1_reg;
    sc_signal< sc_lv<1> > and_ln30_reg_1237_pp1_iter2_reg;
    sc_signal< sc_lv<1> > and_ln30_reg_1237_pp1_iter3_reg;
    sc_signal< sc_lv<1> > and_ln30_reg_1237_pp1_iter4_reg;
    sc_signal< sc_lv<1> > and_ln30_reg_1237_pp1_iter5_reg;
    sc_signal< sc_lv<1> > and_ln30_reg_1237_pp1_iter6_reg;
    sc_signal< sc_lv<1> > and_ln30_reg_1237_pp1_iter7_reg;
    sc_signal< sc_lv<1> > icmp_ln935_fu_748_p2;
    sc_signal< sc_lv<1> > icmp_ln935_reg_1242;
    sc_signal< sc_lv<1> > icmp_ln935_reg_1242_pp1_iter2_reg;
    sc_signal< sc_lv<1> > icmp_ln935_reg_1242_pp1_iter3_reg;
    sc_signal< sc_lv<1> > icmp_ln935_reg_1242_pp1_iter4_reg;
    sc_signal< sc_lv<1> > icmp_ln935_reg_1242_pp1_iter5_reg;
    sc_signal< sc_lv<1> > icmp_ln935_reg_1242_pp1_iter6_reg;
    sc_signal< sc_lv<1> > icmp_ln935_reg_1242_pp1_iter7_reg;
    sc_signal< sc_lv<16> > tmp_V_4_fu_753_p3;
    sc_signal< sc_lv<16> > tmp_V_4_reg_1247;
    sc_signal< sc_lv<16> > tmp_V_4_reg_1247_pp1_iter2_reg;
    sc_signal< sc_lv<16> > tmp_V_4_reg_1247_pp1_iter3_reg;
    sc_signal< sc_lv<32> > l_fu_776_p3;
    sc_signal< sc_lv<32> > l_reg_1255;
    sc_signal< sc_lv<8> > trunc_ln943_fu_784_p1;
    sc_signal< sc_lv<8> > trunc_ln943_reg_1260;
    sc_signal< sc_lv<8> > trunc_ln943_reg_1260_pp1_iter2_reg;
    sc_signal< sc_lv<8> > trunc_ln943_reg_1260_pp1_iter3_reg;
    sc_signal< sc_lv<8> > trunc_ln943_reg_1260_pp1_iter4_reg;
    sc_signal< sc_lv<8> > trunc_ln943_reg_1260_pp1_iter5_reg;
    sc_signal< sc_lv<8> > trunc_ln943_reg_1260_pp1_iter6_reg;
    sc_signal< sc_lv<8> > trunc_ln943_reg_1260_pp1_iter7_reg;
    sc_signal< sc_lv<32> > sub_ln944_fu_788_p2;
    sc_signal< sc_lv<32> > sub_ln944_reg_1265;
    sc_signal< sc_lv<16> > trunc_ln944_fu_793_p1;
    sc_signal< sc_lv<16> > trunc_ln944_reg_1272;
    sc_signal< sc_lv<16> > trunc_ln944_reg_1272_pp1_iter3_reg;
    sc_signal< sc_lv<5> > sub_ln947_fu_801_p2;
    sc_signal< sc_lv<5> > sub_ln947_reg_1277;
    sc_signal< sc_lv<32> > lsb_index_fu_807_p2;
    sc_signal< sc_lv<32> > lsb_index_reg_1282;
    sc_signal< sc_lv<31> > tmp_8_reg_1288;
    sc_signal< sc_lv<1> > icmp_ln947_1_fu_836_p2;
    sc_signal< sc_lv<1> > icmp_ln947_1_reg_1293;
    sc_signal< sc_lv<32> > add_ln958_fu_842_p2;
    sc_signal< sc_lv<32> > add_ln958_reg_1298;
    sc_signal< sc_lv<32> > sub_ln958_fu_847_p2;
    sc_signal< sc_lv<32> > sub_ln958_reg_1303;
    sc_signal< sc_lv<32> > or_ln_fu_899_p3;
    sc_signal< sc_lv<32> > or_ln_reg_1308;
    sc_signal< sc_lv<32> > or_ln_reg_1308_pp1_iter5_reg;
    sc_signal< sc_lv<1> > icmp_ln958_fu_913_p2;
    sc_signal< sc_lv<1> > icmp_ln958_reg_1323;
    sc_signal< sc_lv<1> > icmp_ln958_reg_1323_pp1_iter5_reg;
    sc_signal< sc_lv<32> > grp_fu_918_p2;
    sc_signal< sc_lv<32> > lshr_ln958_reg_1333;
    sc_signal< sc_lv<64> > grp_fu_926_p2;
    sc_signal< sc_lv<64> > shl_ln958_reg_1338;
    sc_signal< sc_lv<63> > m_5_reg_1343;
    sc_signal< sc_lv<63> > m_5_reg_1343_pp1_iter7_reg;
    sc_signal< sc_lv<1> > tmp_10_reg_1348;
    sc_signal< sc_lv<8> > select_ln964_fu_968_p3;
    sc_signal< sc_lv<8> > select_ln964_reg_1353;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter5;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter6;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter7;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter8;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state18;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter3;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter4;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter5;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter6;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter7;
    sc_signal< sc_logic > grp_myproject_fu_230_ap_start;
    sc_signal< sc_logic > grp_myproject_fu_230_ap_done;
    sc_signal< sc_logic > grp_myproject_fu_230_ap_idle;
    sc_signal< sc_logic > grp_myproject_fu_230_ap_ready;
    sc_signal< sc_lv<16> > grp_myproject_fu_230_ap_return_0;
    sc_signal< sc_lv<16> > grp_myproject_fu_230_ap_return_1;
    sc_signal< sc_lv<16> > grp_myproject_fu_230_ap_return_2;
    sc_signal< sc_lv<16> > grp_myproject_fu_230_ap_return_3;
    sc_signal< sc_logic > grp_myproject_fu_230_dense_input_V_blk_n;
    sc_signal< sc_lv<1> > ap_phi_mux_is_last_0_phi_fu_200_p4;
    sc_signal< sc_logic > grp_myproject_fu_230_ap_start_reg;
    sc_signal< sc_lv<11> > ap_NS_fsm;
    sc_signal< sc_logic > ap_NS_fsm_state11;
    sc_signal< sc_lv<256> > in_local_V_fu_174;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<256> > in_local_V_1_fu_669_p2;
    sc_signal< bool > ap_block_pp1_stage0_01001;
    sc_signal< sc_lv<64> > grp_fu_235_p1;
    sc_signal< sc_lv<64> > ireg_V_fu_269_p1;
    sc_signal< sc_lv<53> > tmp_s_fu_302_p3;
    sc_signal< sc_lv<54> > p_Result_9_fu_309_p1;
    sc_signal< sc_lv<54> > man_V_1_fu_313_p2;
    sc_signal< sc_lv<12> > zext_ln461_fu_299_p1;
    sc_signal< sc_lv<12> > F2_fu_331_p2;
    sc_signal< sc_lv<12> > add_ln581_fu_343_p2;
    sc_signal< sc_lv<12> > sub_ln581_fu_349_p2;
    sc_signal< sc_lv<54> > grp_fu_400_p1;
    sc_signal< sc_lv<32> > bitcast_ln696_fu_405_p1;
    sc_signal< sc_lv<1> > tmp_5_fu_408_p3;
    sc_signal< sc_lv<1> > or_ln582_fu_424_p2;
    sc_signal< sc_lv<1> > xor_ln582_fu_428_p2;
    sc_signal< sc_lv<1> > icmp_ln585_fu_386_p2;
    sc_signal< sc_lv<1> > and_ln581_fu_434_p2;
    sc_signal< sc_lv<1> > xor_ln585_fu_439_p2;
    sc_signal< sc_lv<1> > or_ln581_fu_457_p2;
    sc_signal< sc_lv<1> > icmp_ln603_fu_391_p2;
    sc_signal< sc_lv<1> > xor_ln581_fu_462_p2;
    sc_signal< sc_lv<1> > and_ln585_1_fu_451_p2;
    sc_signal< sc_lv<16> > select_ln588_fu_416_p3;
    sc_signal< sc_lv<1> > xor_ln571_fu_487_p2;
    sc_signal< sc_lv<1> > and_ln582_fu_492_p2;
    sc_signal< sc_lv<1> > or_ln603_1_fu_497_p2;
    sc_signal< sc_lv<16> > sext_ln581cast_fu_510_p1;
    sc_signal< sc_lv<16> > shl_ln604_fu_513_p2;
    sc_signal< sc_lv<16> > trunc_ln586_fu_507_p1;
    sc_signal< sc_lv<16> > select_ln603_fu_518_p3;
    sc_signal< sc_lv<16> > select_ln603_3_fu_550_p3;
    sc_signal< sc_lv<9> > zext_ln203_fu_556_p1;
    sc_signal< sc_lv<9> > zext_ln203_1_fu_559_p1;
    sc_signal< sc_lv<9> > xor_ln203_fu_566_p2;
    sc_signal< sc_lv<9> > select_ln203_fu_572_p3;
    sc_signal< sc_lv<9> > select_ln203_2_fu_586_p3;
    sc_signal< sc_lv<9> > select_ln203_1_fu_579_p3;
    sc_signal< sc_lv<9> > xor_ln203_1_fu_593_p2;
    sc_signal< sc_lv<256> > zext_ln203_2_fu_562_p1;
    sc_signal< sc_lv<256> > zext_ln203_3_fu_599_p1;
    sc_signal< sc_lv<256> > zext_ln203_4_fu_603_p1;
    sc_signal< sc_lv<256> > zext_ln203_5_fu_607_p1;
    sc_signal< sc_lv<256> > shl_ln203_1_fu_617_p2;
    sc_signal< sc_lv<256> > lshr_ln203_fu_623_p2;
    sc_signal< sc_lv<256> > tmp_6_fu_638_p4;
    sc_signal< sc_lv<256> > xor_ln203_2_fu_653_p2;
    sc_signal< sc_lv<256> > select_ln203_3_fu_647_p3;
    sc_signal< sc_lv<256> > and_ln203_1_fu_658_p2;
    sc_signal< sc_lv<256> > and_ln203_2_fu_664_p2;
    sc_signal< sc_lv<2> > tmp_V_3_fu_712_p5;
    sc_signal< sc_lv<1> > icmp_ln30_fu_736_p2;
    sc_signal< sc_lv<16> > p_Result_s_fu_758_p4;
    sc_signal< sc_lv<32> > p_Result_11_fu_768_p3;
    sc_signal< sc_lv<5> > trunc_ln947_fu_797_p1;
    sc_signal< sc_lv<16> > zext_ln947_fu_822_p1;
    sc_signal< sc_lv<16> > lshr_ln947_fu_825_p2;
    sc_signal< sc_lv<16> > p_Result_6_fu_831_p2;
    sc_signal< sc_lv<1> > icmp_ln947_fu_852_p2;
    sc_signal< sc_lv<1> > tmp_9_fu_862_p3;
    sc_signal< sc_lv<16> > add_ln949_fu_875_p2;
    sc_signal< sc_lv<1> > p_Result_5_fu_880_p3;
    sc_signal< sc_lv<1> > xor_ln949_fu_869_p2;
    sc_signal< sc_lv<1> > and_ln949_fu_887_p2;
    sc_signal< sc_lv<1> > a_fu_857_p2;
    sc_signal< sc_lv<1> > or_ln949_fu_893_p2;
    sc_signal< sc_lv<32> > grp_fu_918_p0;
    sc_signal< sc_lv<64> > grp_fu_926_p0;
    sc_signal< sc_lv<64> > grp_fu_926_p1;
    sc_signal< sc_lv<64> > zext_ln958_fu_932_p1;
    sc_signal< sc_lv<64> > m_1_fu_935_p3;
    sc_signal< sc_lv<64> > zext_ln961_fu_941_p1;
    sc_signal< sc_lv<64> > m_2_fu_944_p2;
    sc_signal< sc_lv<8> > sub_ln964_fu_978_p2;
    sc_signal< sc_lv<8> > add_ln964_fu_983_p2;
    sc_signal< sc_lv<64> > m_6_fu_975_p1;
    sc_signal< sc_lv<9> > tmp_3_fu_988_p3;
    sc_signal< sc_lv<64> > p_Result_12_fu_995_p5;
    sc_signal< sc_lv<32> > trunc_ln738_fu_1007_p1;
    sc_signal< sc_lv<32> > bitcast_ln739_fu_1011_p1;
    sc_signal< sc_logic > grp_fu_235_ce;
    sc_signal< sc_logic > grp_fu_400_ce;
    sc_signal< sc_logic > grp_fu_918_ce;
    sc_signal< sc_logic > grp_fu_926_ce;
    sc_signal< sc_logic > ap_CS_fsm_state28;
    sc_signal< sc_logic > regslice_both_out_data_U_apdone_blk;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    sc_signal< sc_logic > regslice_both_in_data_U_apdone_blk;
    sc_signal< sc_lv<32> > in_r_TDATA_int;
    sc_signal< sc_logic > in_r_TVALID_int;
    sc_signal< sc_logic > in_r_TREADY_int;
    sc_signal< sc_logic > regslice_both_in_data_U_ack_in;
    sc_signal< sc_logic > regslice_both_in_last_V_U_apdone_blk;
    sc_signal< sc_lv<1> > in_r_TLAST_int;
    sc_signal< sc_logic > regslice_both_in_last_V_U_vld_out;
    sc_signal< sc_logic > regslice_both_in_last_V_U_ack_in;
    sc_signal< sc_lv<32> > out_r_TDATA_int;
    sc_signal< sc_logic > out_r_TVALID_int;
    sc_signal< sc_logic > out_r_TREADY_int;
    sc_signal< sc_logic > regslice_both_out_data_U_vld_out;
    sc_signal< sc_logic > regslice_both_out_last_V_U_apdone_blk;
    sc_signal< sc_logic > regslice_both_out_last_V_U_ack_in_dummy;
    sc_signal< sc_logic > regslice_both_out_last_V_U_vld_out;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<11> ap_ST_fsm_state1;
    static const sc_lv<11> ap_ST_fsm_pp0_stage0;
    static const sc_lv<11> ap_ST_fsm_state11;
    static const sc_lv<11> ap_ST_fsm_state12;
    static const sc_lv<11> ap_ST_fsm_state13;
    static const sc_lv<11> ap_ST_fsm_state14;
    static const sc_lv<11> ap_ST_fsm_state15;
    static const sc_lv<11> ap_ST_fsm_state16;
    static const sc_lv<11> ap_ST_fsm_state17;
    static const sc_lv<11> ap_ST_fsm_pp1_stage0;
    static const sc_lv<11> ap_ST_fsm_state28;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<32> ap_const_lv32_34;
    static const sc_lv<32> ap_const_lv32_3E;
    static const sc_lv<54> ap_const_lv54_0;
    static const sc_lv<63> ap_const_lv63_0;
    static const sc_lv<12> ap_const_lv12_433;
    static const sc_lv<12> ap_const_lv12_A;
    static const sc_lv<12> ap_const_lv12_FF6;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<12> ap_const_lv12_36;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<16> ap_const_lv16_FFFF;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<8> ap_const_lv8_F;
    static const sc_lv<9> ap_const_lv9_FF;
    static const sc_lv<256> ap_const_lv256_lc_1;
    static const sc_lv<32> ap_const_lv32_FF;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<3> ap_const_lv3_3;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<5> ap_const_lv5_9;
    static const sc_lv<32> ap_const_lv32_FFFFFFE8;
    static const sc_lv<32> ap_const_lv32_FFFFFFE7;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<16> ap_const_lv16_FFE8;
    static const sc_lv<8> ap_const_lv8_7F;
    static const sc_lv<8> ap_const_lv8_7E;
    static const sc_lv<8> ap_const_lv8_6;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_A;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_F2_fu_331_p2();
    void thread_a_fu_857_p2();
    void thread_add_ln581_fu_343_p2();
    void thread_add_ln949_fu_875_p2();
    void thread_add_ln958_fu_842_p2();
    void thread_add_ln964_fu_983_p2();
    void thread_and_ln203_1_fu_658_p2();
    void thread_and_ln203_2_fu_664_p2();
    void thread_and_ln203_fu_629_p2();
    void thread_and_ln30_fu_742_p2();
    void thread_and_ln581_fu_434_p2();
    void thread_and_ln582_fu_492_p2();
    void thread_and_ln585_1_fu_451_p2();
    void thread_and_ln585_fu_445_p2();
    void thread_and_ln603_fu_468_p2();
    void thread_and_ln949_fu_887_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state28();
    void thread_ap_NS_fsm_state11();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp1_stage0();
    void thread_ap_block_pp1_stage0_01001();
    void thread_ap_block_pp1_stage0_11001();
    void thread_ap_block_pp1_stage0_subdone();
    void thread_ap_block_state10_pp0_stage0_iter8();
    void thread_ap_block_state18_pp1_stage0_iter0();
    void thread_ap_block_state19_pp1_stage0_iter1();
    void thread_ap_block_state20_pp1_stage0_iter2();
    void thread_ap_block_state21_pp1_stage0_iter3();
    void thread_ap_block_state22_pp1_stage0_iter4();
    void thread_ap_block_state23_pp1_stage0_iter5();
    void thread_ap_block_state24_pp1_stage0_iter6();
    void thread_ap_block_state25_pp1_stage0_iter7();
    void thread_ap_block_state26_io();
    void thread_ap_block_state26_pp1_stage0_iter8();
    void thread_ap_block_state27_io();
    void thread_ap_block_state27_pp1_stage0_iter9();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state5_pp0_stage0_iter3();
    void thread_ap_block_state6_pp0_stage0_iter4();
    void thread_ap_block_state7_pp0_stage0_iter5();
    void thread_ap_block_state8_pp0_stage0_iter6();
    void thread_ap_block_state9_pp0_stage0_iter7();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_condition_pp1_exit_iter0_state18();
    void thread_ap_enable_pp0();
    void thread_ap_enable_pp1();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp1();
    void thread_ap_phi_mux_is_last_0_phi_fu_200_p4();
    void thread_ap_rst_n_inv();
    void thread_bitcast_ln696_fu_405_p1();
    void thread_bitcast_ln739_fu_1011_p1();
    void thread_empty_32_fu_538_p2();
    void thread_grp_fu_235_ce();
    void thread_grp_fu_400_ce();
    void thread_grp_fu_400_p1();
    void thread_grp_fu_918_ce();
    void thread_grp_fu_918_p0();
    void thread_grp_fu_926_ce();
    void thread_grp_fu_926_p0();
    void thread_grp_fu_926_p1();
    void thread_grp_myproject_fu_230_ap_start();
    void thread_i_1_fu_702_p2();
    void thread_i_fu_244_p2();
    void thread_icmp_ln19_fu_238_p2();
    void thread_icmp_ln203_fu_544_p2();
    void thread_icmp_ln27_fu_696_p2();
    void thread_icmp_ln30_fu_736_p2();
    void thread_icmp_ln571_fu_326_p2();
    void thread_icmp_ln581_fu_337_p2();
    void thread_icmp_ln582_fu_363_p2();
    void thread_icmp_ln585_fu_386_p2();
    void thread_icmp_ln603_fu_391_p2();
    void thread_icmp_ln935_fu_748_p2();
    void thread_icmp_ln947_1_fu_836_p2();
    void thread_icmp_ln947_fu_852_p2();
    void thread_icmp_ln958_fu_913_p2();
    void thread_in_local_V_1_fu_669_p2();
    void thread_in_r_TDATA_blk_n();
    void thread_in_r_TREADY();
    void thread_in_r_TREADY_int();
    void thread_ireg_V_fu_269_p1();
    void thread_is_last_fu_263_p2();
    void thread_l_fu_776_p3();
    void thread_lsb_index_fu_807_p2();
    void thread_lshr_ln203_fu_623_p2();
    void thread_lshr_ln947_fu_825_p2();
    void thread_m_1_fu_935_p3();
    void thread_m_2_fu_944_p2();
    void thread_m_6_fu_975_p1();
    void thread_man_V_1_fu_313_p2();
    void thread_man_V_2_fu_319_p3();
    void thread_or_ln581_fu_457_p2();
    void thread_or_ln582_fu_424_p2();
    void thread_or_ln603_1_fu_497_p2();
    void thread_or_ln603_2_fu_502_p2();
    void thread_or_ln603_fu_474_p2();
    void thread_or_ln949_fu_893_p2();
    void thread_or_ln_fu_899_p3();
    void thread_out_r_TDATA_blk_n();
    void thread_out_r_TDATA_int();
    void thread_out_r_TVALID();
    void thread_out_r_TVALID_int();
    void thread_p_Result_11_fu_768_p3();
    void thread_p_Result_12_fu_995_p5();
    void thread_p_Result_5_fu_880_p3();
    void thread_p_Result_6_fu_831_p2();
    void thread_p_Result_9_fu_309_p1();
    void thread_p_Result_s_fu_758_p4();
    void thread_select_ln203_1_fu_579_p3();
    void thread_select_ln203_2_fu_586_p3();
    void thread_select_ln203_3_fu_647_p3();
    void thread_select_ln203_fu_572_p3();
    void thread_select_ln588_fu_416_p3();
    void thread_select_ln603_1_fu_480_p3();
    void thread_select_ln603_2_fu_525_p3();
    void thread_select_ln603_3_fu_550_p3();
    void thread_select_ln603_fu_518_p3();
    void thread_select_ln964_fu_968_p3();
    void thread_sext_ln581_fu_383_p1();
    void thread_sext_ln581cast_fu_510_p1();
    void thread_sh_amt_fu_355_p3();
    void thread_shl_ln203_1_fu_617_p2();
    void thread_shl_ln203_fu_611_p2();
    void thread_shl_ln604_fu_513_p2();
    void thread_shl_ln_fu_531_p3();
    void thread_sub_ln581_fu_349_p2();
    void thread_sub_ln944_fu_788_p2();
    void thread_sub_ln947_fu_801_p2();
    void thread_sub_ln958_fu_847_p2();
    void thread_sub_ln964_fu_978_p2();
    void thread_tmp_3_fu_988_p3();
    void thread_tmp_5_fu_408_p3();
    void thread_tmp_6_fu_638_p4();
    void thread_tmp_9_fu_862_p3();
    void thread_tmp_V_3_fu_712_p5();
    void thread_tmp_V_4_fu_753_p3();
    void thread_tmp_V_fu_730_p2();
    void thread_tmp_s_fu_302_p3();
    void thread_trunc_ln203_fu_259_p1();
    void thread_trunc_ln556_fu_273_p1();
    void thread_trunc_ln565_fu_295_p1();
    void thread_trunc_ln583_fu_369_p1();
    void thread_trunc_ln586_fu_507_p1();
    void thread_trunc_ln738_fu_1007_p1();
    void thread_trunc_ln943_fu_784_p1();
    void thread_trunc_ln944_fu_793_p1();
    void thread_trunc_ln947_fu_797_p1();
    void thread_xor_ln203_1_fu_593_p2();
    void thread_xor_ln203_2_fu_653_p2();
    void thread_xor_ln203_fu_566_p2();
    void thread_xor_ln571_fu_487_p2();
    void thread_xor_ln581_fu_462_p2();
    void thread_xor_ln582_fu_428_p2();
    void thread_xor_ln585_fu_439_p2();
    void thread_xor_ln949_fu_869_p2();
    void thread_zext_ln203_1_fu_559_p1();
    void thread_zext_ln203_2_fu_562_p1();
    void thread_zext_ln203_3_fu_599_p1();
    void thread_zext_ln203_4_fu_603_p1();
    void thread_zext_ln203_5_fu_607_p1();
    void thread_zext_ln203_fu_556_p1();
    void thread_zext_ln461_fu_299_p1();
    void thread_zext_ln947_fu_822_p1();
    void thread_zext_ln958_fu_932_p1();
    void thread_zext_ln961_fu_941_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif