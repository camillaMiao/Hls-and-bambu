// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _myproject_HH_
#define _myproject_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0.h"

namespace ap_rtl {

struct myproject : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_logic > dense_input_V_ap_vld;
    sc_in< sc_lv<256> > dense_input_V;
    sc_out< sc_lv<16> > ap_return_0;
    sc_out< sc_lv<16> > ap_return_1;
    sc_out< sc_lv<16> > ap_return_2;
    sc_out< sc_lv<16> > ap_return_3;
    sc_out< sc_logic > dense_input_V_blk_n;


    // Module declarations
    myproject(sc_module_name name);
    SC_HAS_PROCESS(myproject);

    ~myproject();

    sc_trace_file* mVcdFile;

    dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0* grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26;
    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter5;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter6;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter5;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter6;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_lv<16> > grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26_ap_return_0;
    sc_signal< sc_lv<16> > grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26_ap_return_1;
    sc_signal< sc_lv<16> > grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26_ap_return_2;
    sc_signal< sc_lv<16> > grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26_ap_return_3;
    sc_signal< sc_logic > grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26_ap_ce;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0_ignore_call4;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1_ignore_call4;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter2_ignore_call4;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter3_ignore_call4;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter4_ignore_call4;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter5_ignore_call4;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter6_ignore_call4;
    sc_signal< bool > ap_block_pp0_stage0_11001_ignoreCallOp9;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0_0to5;
    sc_signal< sc_logic > ap_reset_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_fsm_pp0_stage0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_11001_ignoreCallOp9();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state1_pp0_stage0_iter0_ignore_call4();
    void thread_ap_block_state2_pp0_stage0_iter1();
    void thread_ap_block_state2_pp0_stage0_iter1_ignore_call4();
    void thread_ap_block_state3_pp0_stage0_iter2();
    void thread_ap_block_state3_pp0_stage0_iter2_ignore_call4();
    void thread_ap_block_state4_pp0_stage0_iter3();
    void thread_ap_block_state4_pp0_stage0_iter3_ignore_call4();
    void thread_ap_block_state5_pp0_stage0_iter4();
    void thread_ap_block_state5_pp0_stage0_iter4_ignore_call4();
    void thread_ap_block_state6_pp0_stage0_iter5();
    void thread_ap_block_state6_pp0_stage0_iter5_ignore_call4();
    void thread_ap_block_state7_pp0_stage0_iter6();
    void thread_ap_block_state7_pp0_stage0_iter6_ignore_call4();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_reg_pp0_iter0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp0_0to5();
    void thread_ap_ready();
    void thread_ap_reset_idle_pp0();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_2();
    void thread_ap_return_3();
    void thread_dense_input_V_blk_n();
    void thread_grp_dense_latency_ap_fixed_ap_fixed_config2_0_0_0_0_0_fu_26_ap_ce();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
