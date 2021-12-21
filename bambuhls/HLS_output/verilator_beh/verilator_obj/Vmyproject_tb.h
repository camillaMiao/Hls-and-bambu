// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VMYPROJECT_TB_H_
#define _VMYPROJECT_TB_H_  // guard

#include "verilated_heavy.h"

//==========

class Vmyproject_tb__Syms;

//----------

VL_MODULE(Vmyproject_tb) {
  public:
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(clock,0,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    // Anonymous structures to workaround compiler member-count bugs
    struct {
        CData/*0:0*/ myproject_tb__DOT__compare_outputs;
        CData/*0:0*/ myproject_tb__DOT__success;
        CData/*7:0*/ myproject_tb__DOT___bambu_databyte_;
        CData/*3:0*/ myproject_tb__DOT_____05Fstate;
        CData/*3:0*/ myproject_tb__DOT_____05Fnext_state;
        CData/*0:0*/ myproject_tb__DOT__start_results_comparison;
        CData/*0:0*/ myproject_tb__DOT__next_start_port;
        CData/*0:0*/ myproject_tb__DOT__reset;
        CData/*0:0*/ myproject_tb__DOT__start_port;
        CData/*3:0*/ myproject_tb__DOT__dense_1_input_address0;
        CData/*3:0*/ myproject_tb__DOT__dense_1_input_address1;
        CData/*1:0*/ myproject_tb__DOT__layer2_out_address0;
        CData/*1:0*/ myproject_tb__DOT__layer2_out_address1;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__done_delayed_REG_signal_in;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_STORE;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_STORE;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__selector_IN_UNBOUNDED_myproject_422558_423458;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__selector_IN_UNBOUNDED_myproject_422558_423472;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__selector_IN_UNBOUNDED_myproject_422558_423475;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__selector_IN_UNBOUNDED_myproject_422558_423478;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__selector_IN_UNBOUNDED_myproject_422558_423481;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__selector_IN_UNBOUNDED_myproject_422558_423495;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__selector_IN_UNBOUNDED_myproject_422558_423508;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_0_0_0;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__selector_MUX_103_reg_4_0_0_0;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__selector_MUX_104_reg_5_0_0_0;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_0;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_1;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_1_0;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_0_0_0;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_0;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_1;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_1_0;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__selector_MUX_64_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_2_0_0;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__selector_MUX_65_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_3_0_0;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__selector_MUX_68_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_2_0_0;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__selector_MUX_69_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_3_0_0;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__selector_MUX_73_reg_1_0_0_0;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__selector_MUX_75_reg_11_0_0_0;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__selector_MUX_84_reg_2_0_0_0;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__selector_MUX_95_reg_3_0_0_0;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__wrenable_reg_0;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__wrenable_reg_1;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__wrenable_reg_10;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__wrenable_reg_11;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__wrenable_reg_12;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__wrenable_reg_14;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__wrenable_reg_16;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__wrenable_reg_18;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__wrenable_reg_2;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__wrenable_reg_20;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__wrenable_reg_21;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__wrenable_reg_3;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__wrenable_reg_32;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__wrenable_reg_33;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__wrenable_reg_34;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__wrenable_reg_4;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__wrenable_reg_5;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__wrenable_reg_6;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__wrenable_reg_7;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__wrenable_reg_8;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__wrenable_reg_9;
        CData/*1:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__array_423023_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__bram_write;
        CData/*3:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__fu_myproject_422558_423458__DOT__in4_0;
    };
    struct {
        CData/*3:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__fu_myproject_422558_423458__DOT__in4_reg;
        CData/*3:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__layer2_out_bambu_artificial_ParmMgr_modgen_68_i0__DOT__in4_0;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_21__DOT__reg_out1;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_34__DOT__reg_out1;
        CData/*0:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__done_delayed_REG__DOT__reg_out1;
        SData/*15:0*/ myproject_tb__DOT__dense_1_input_q0;
        SData/*15:0*/ myproject_tb__DOT__dense_1_input_q1;
        SData/*15:0*/ myproject_tb__DOT__ex_const_size_in_1;
        SData/*15:0*/ myproject_tb__DOT__registered_const_size_in_1;
        SData/*15:0*/ myproject_tb__DOT__ex_const_size_out_1;
        SData/*15:0*/ myproject_tb__DOT__registered_const_size_out_1;
        SData/*15:0*/ myproject_tb__DOT__layer2_out_d0;
        SData/*15:0*/ myproject_tb__DOT__ex_layer2_out_d0;
        SData/*15:0*/ myproject_tb__DOT__layer2_out_d1;
        SData/*10:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Controller_i__DOT___present_state;
        SData/*10:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Controller_i__DOT___next_state;
        SData/*8:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__out_ui_pointer_plus_expr_FU_8_8_8_62_i0_fu_myproject_422558_422660;
        SData/*8:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__out_ui_pointer_plus_expr_FU_8_8_8_62_i10_fu_myproject_422558_423147;
        SData/*8:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__out_ui_pointer_plus_expr_FU_8_8_8_62_i11_fu_myproject_422558_423153;
        SData/*8:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__out_ui_pointer_plus_expr_FU_8_8_8_62_i1_fu_myproject_422558_422668;
        SData/*8:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__out_ui_pointer_plus_expr_FU_8_8_8_62_i2_fu_myproject_422558_422671;
        SData/*8:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__out_ui_pointer_plus_expr_FU_8_8_8_62_i3_fu_myproject_422558_422679;
        SData/*8:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__out_ui_pointer_plus_expr_FU_8_8_8_62_i4_fu_myproject_422558_422682;
        SData/*8:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__out_ui_pointer_plus_expr_FU_8_8_8_62_i5_fu_myproject_422558_422690;
        SData/*8:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__out_ui_pointer_plus_expr_FU_8_8_8_62_i6_fu_myproject_422558_422693;
        SData/*8:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__out_ui_pointer_plus_expr_FU_8_8_8_62_i7_fu_myproject_422558_422701;
        SData/*8:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__out_ui_pointer_plus_expr_FU_8_8_8_62_i8_fu_myproject_422558_423135;
        SData/*8:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__out_ui_pointer_plus_expr_FU_8_8_8_62_i9_fu_myproject_422558_423141;
        SData/*11:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__array_422751_0__DOT__memory_addr_a;
        SData/*11:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__array_422751_1__DOT__memory_addr_a;
        SData/*11:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__array_423023_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory_addr_a;
        SData/*8:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_0__DOT__reg_out1;
        SData/*15:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_1__DOT__reg_out1;
        SData/*8:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_12__DOT__reg_out1;
        SData/*8:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_13__DOT__reg_out1;
        SData/*8:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_14__DOT__reg_out1;
        SData/*8:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_15__DOT__reg_out1;
        SData/*8:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_16__DOT__reg_out1;
        SData/*8:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_17__DOT__reg_out1;
        SData/*8:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_18__DOT__reg_out1;
        SData/*8:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_19__DOT__reg_out1;
        SData/*15:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_2__DOT__reg_out1;
        SData/*8:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_20__DOT__reg_out1;
        SData/*15:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_22__DOT__reg_out1;
        SData/*15:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_23__DOT__reg_out1;
        SData/*15:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_24__DOT__reg_out1;
        SData/*15:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_25__DOT__reg_out1;
        SData/*15:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_26__DOT__reg_out1;
        SData/*15:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_27__DOT__reg_out1;
        SData/*15:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_28__DOT__reg_out1;
        SData/*15:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_29__DOT__reg_out1;
        SData/*15:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_3__DOT__reg_out1;
        SData/*8:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_32__DOT__reg_out1;
        SData/*8:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_33__DOT__reg_out1;
        SData/*15:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_4__DOT__reg_out1;
        IData/*31:0*/ myproject_tb__DOT__res_file;
        IData/*31:0*/ myproject_tb__DOT__file;
        IData/*31:0*/ myproject_tb__DOT___r_;
        IData/*31:0*/ myproject_tb__DOT___n_;
        IData/*31:0*/ myproject_tb__DOT___i_;
        IData/*31:0*/ myproject_tb__DOT___addr_i_;
        IData/*31:0*/ myproject_tb__DOT___ch_;
        WData/*8000:0*/ myproject_tb__DOT__line[251];
        IData/*31:0*/ myproject_tb__DOT__addr;
    };
    struct {
        IData/*31:0*/ myproject_tb__DOT__base_addr;
        IData/*31:0*/ myproject_tb__DOT__paddrdense_1_input_q0;
        IData/*31:0*/ myproject_tb__DOT__paddrlayer2_out_d0;
        IData/*31:0*/ myproject_tb__DOT__paddrconst_size_in_1;
        IData/*31:0*/ myproject_tb__DOT__paddrconst_size_out_1;
        IData/*31:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__out_IUdata_converter_FU_41_i0_fu_myproject_422558_423280;
        IData/*31:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__out_IUdata_converter_FU_42_i0_fu_myproject_422558_423283;
        IData/*31:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__out_IUdata_converter_FU_43_i0_fu_myproject_422558_423286;
        IData/*31:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__out_IUdata_converter_FU_44_i0_fu_myproject_422558_423289;
        IData/*31:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__out_MUX_104_reg_5_0_0_0;
        IData/*31:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__out_MUX_75_reg_11_0_0_0;
        IData/*31:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__out_widen_mult_expr_FU_16_16_32_0_64_i0_fu_myproject_422558_422664;
        IData/*31:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__out_widen_mult_expr_FU_16_16_32_0_64_i1_fu_myproject_422558_422675;
        IData/*17:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__array_422751_0__DOT__tmp_addr;
        IData/*17:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__array_422751_0__DOT__relative_addr;
        IData/*17:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__array_422751_1__DOT__tmp_addr;
        IData/*17:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__array_422751_1__DOT__relative_addr;
        IData/*17:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__array_423023_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__tmp_addr;
        IData/*17:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__array_423023_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__relative_addr;
        IData/*31:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_10__DOT__reg_out1;
        IData/*31:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_11__DOT__reg_out1;
        IData/*31:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_30__DOT__reg_out1;
        IData/*31:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_31__DOT__reg_out1;
        IData/*31:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_35__DOT__reg_out1;
        IData/*31:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_36__DOT__reg_out1;
        IData/*31:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_5__DOT__reg_out1;
        IData/*31:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_6__DOT__reg_out1;
        IData/*31:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_7__DOT__reg_out1;
        IData/*31:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_8__DOT__reg_out1;
        IData/*31:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__reg_9__DOT__reg_out1;
        QData/*63:0*/ myproject_tb__DOT__startTime;
        QData/*63:0*/ myproject_tb__DOT__endTime;
        QData/*63:0*/ myproject_tb__DOT__sim_time;
        QData/*63:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__array_422751_0__DOT__dout_a;
        QData/*63:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__array_422751_1__DOT__dout_a;
        QData/*63:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__array_423023_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__din_value_aggregated;
        QData/*63:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__array_423023_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__dout_a;
        CData/*7:0*/ myproject_tb__DOT___bambu_testbench_mem_[1024];
        IData/*31:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__array_422751_0__DOT__memory[64];
        IData/*31:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__array_422751_1__DOT__memory[64];
        IData/*31:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT__array_423023_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory[64];
    };
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    CData/*1:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT____Vcellinp__array_423023_0__sel_STORE;
    CData/*1:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT____Vcellinp__layer2_out_bambu_artificial_ParmMgr_modgen_68_i0__start_port;
    CData/*0:0*/ __Vclklast__TOP__clock;
    IData/*17:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT____Vcellinp__array_422751_0__in2;
    IData/*17:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT____Vcellinp__array_422751_1__in2;
    IData/*17:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT____Vcellinp__array_423023_0__in2;
    QData/*63:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT____Vcellout__array_422751_0__out1;
    QData/*63:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT____Vcellout__array_422751_1__out1;
    QData/*63:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT____Vcellinp__array_423023_0__in1;
    QData/*63:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT____Vcellout__array_423023_0__out1;
    QData/*63:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT____Vcellout__fu_myproject_422558_423458__out1;
    QData/*63:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT____Vcellinp__layer2_out_bambu_artificial_ParmMgr_modgen_68_i0__in4;
    QData/*63:0*/ myproject_tb__DOT__myproject__DOT___myproject_i0__DOT__Datapath_i__DOT____Vcellinp__layer2_out_bambu_artificial_ParmMgr_modgen_68_i0__in3;
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    Vmyproject_tb__Syms* __VlSymsp;  // Symbol table
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(Vmyproject_tb);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    Vmyproject_tb(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~Vmyproject_tb();
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval();
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
  private:
    static void _eval_initial_loop(Vmyproject_tb__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(Vmyproject_tb__Syms* symsp, bool first);
  private:
    static QData _change_request(Vmyproject_tb__Syms* __restrict vlSymsp);
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(Vmyproject_tb__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif  // VL_DEBUG
  public:
    static void _eval_initial(Vmyproject_tb__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(Vmyproject_tb__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _initial__TOP__1(Vmyproject_tb__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _sequent__TOP__2(Vmyproject_tb__Syms* __restrict vlSymsp);
    static void _sequent__TOP__3(Vmyproject_tb__Syms* __restrict vlSymsp);
    static void _settle__TOP__4(Vmyproject_tb__Syms* __restrict vlSymsp) VL_ATTR_COLD;
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
