/*
 * Politecnico di Milano
 * Code created using PandA - Version: PandA 0.9.7-dev - Revision 50cb9328b7e885f87c45c88a801253f08b66c7de-openroad4 - Date 2021-12-17T20:30:45
 * bambu executed with: bambu -O3 -fPIC --std=c++14 --compiler=I386_CLANG11 -v4 -D__SYNTHESIS__ --top-fname=myproject --generate-interface=INFER --generate-tb=test_myproject.xml --simulator=VERILATOR --simulate --print-dot --pretty-print=a.c model_single_dense/hls4ml_prj/firmware/myproject.cpp 
 */
struct class_ac_private__iv_base 
{
   unsigned int fd0;
} ;
struct Internal_422756 
{
   struct class_ac_private__iv_base fd0;
} ;
static struct Internal_422756 w2[64] = {{{4294967062u}}, {{4294966966u}}, {{39u}}, {{68u}}, {{4294967202u}}, {{345u}}, {{4294967288u}}, {{558u}}, {{220u}}, 
   {{4294966875u}}, {{235u}}, {{182u}}, {{81u}}, {{4294967144u}}, {{4294967206u}}, {{145u}}, {{464u}}, {{181u}}, {{374u}}, 
   {{4294966829u}}, {{4294967048u}}, {{4294966752u}}, {{253u}}, {{297u}}, {{201u}}, {{36u}}, {{287u}}, {{4294966788u}}, 
   {{4294966791u}}, {{282u}}, {{4294966928u}}, {{4294967085u}}, {{4294967061u}}, {{4294966847u}}, {{4294966920u}}, {{302u}}, 
   {{96u}}, {{540u}}, {{465u}}, {{4294966894u}}, {{4294966844u}}, {{119u}}, {{4294966934u}}, {{20u}}, {{540u}}, {{4294966932u}}, 
   {{4294966786u}}, {{109u}}, {{70u}}, {{342u}}, {{94u}}, {{4294966850u}}, {{499u}}, {{4294967052u}}, {{59u}}, {{4294967048u}}, 
   {{4294966824u}}, {{4294967172u}}, {{4294966813u}}, {{4294966782u}}, {{475u}}, {{420u}}, {{4294967260u}}, {{4294967262u}}};

struct class_ac_private__iv 
{
   struct class_ac_private__iv_base fd0;
} ;
struct class_ac_fixed 
{
   struct class_ac_private__iv fd0;
} ;
extern unsigned int dense_input_bambu_artificial_ParmMgr_Read_array(_Bool _P0, unsigned int _P1, unsigned int _P2, struct class_ac_fixed* _P3);

extern void layer2_out_bambu_artificial_ParmMgr_Write_array(_Bool _P0, unsigned int _P1, unsigned int _P2, struct class_ac_fixed* _P3);

extern void const_size_in_1_bambu_artificial_ParmMgr_Write_valid(unsigned int _P0, unsigned short _P1, unsigned short* _P2);

extern void const_size_out_1_bambu_artificial_ParmMgr_Write_valid(unsigned int _P0, unsigned short _P1, unsigned short* _P2);

void myproject(struct class_ac_fixed* dense_input, struct class_ac_fixed* layer2_out, unsigned short* const_size_in_1, unsigned short* const_size_out_1);

void myproject(struct class_ac_fixed* dense_input, struct class_ac_fixed* layer2_out, unsigned short* const_size_in_1, unsigned short* const_size_out_1)
{
   unsigned int _8831;
   unsigned int _8880;
   unsigned int* _8833;
   unsigned int _8835;
   unsigned int _8836;
   int _8837;
   unsigned int* _8838;
   unsigned int _8839;
   unsigned int _8840;
   int _8841;
   int _8842;
   unsigned int _8843;
   unsigned int _8844;
   int _8845;
   unsigned int* _8846;
   struct class_ac_fixed internal_423023[64];
   struct class_ac_fixed(* _8824)[64];
   unsigned int _8848;
   unsigned int* _8849;
   unsigned int _8850;
   unsigned int _8851;
   int _8852;
   int _8853;
   unsigned int _8854;
   unsigned int _8855;
   int _8856;
   unsigned int* _8857;
   unsigned int _8859;
   unsigned int* _8860;
   unsigned int _8861;
   unsigned int _8862;
   int _8863;
   int _8864;
   unsigned int _8865;
   unsigned int _8866;
   int _8867;
   unsigned int* _8868;
   unsigned int _8870;
   unsigned int* _8871;
   unsigned int _8872;
   unsigned int _8873;
   int _8874;
   int _8875;
   unsigned int _8876;
   unsigned int _8877;
   int _8878;
   unsigned int* _8879;
   unsigned int _8882;
   int _8911;
   unsigned int _8883;
   int _8905;
   unsigned int _8884;
   int _8899;
   unsigned int _8885;
   int _8893;
   unsigned int _8886;
   unsigned int _8912;
   unsigned int _8888;
   unsigned int* _8889;
   unsigned int _8890;
   unsigned int _8891;
   unsigned int _8892;
   unsigned int _8894;
   unsigned int* _8895;
   unsigned int _8896;
   unsigned int _8897;
   unsigned int _8898;
   unsigned int _8900;
   unsigned int* _8901;
   unsigned int _8902;
   unsigned int _8903;
   unsigned int _8904;
   unsigned int _8906;
   unsigned int* _8907;
   unsigned int _8908;
   unsigned int _8909;
   unsigned int _8910;
   unsigned int* _8917;
   unsigned int* _8919;
   unsigned int* _8921;
   unsigned int _8926;
   unsigned int _8927;
   unsigned int _8928;
   unsigned int _8929;
   unsigned int _8930;
   int _8931;
   struct Internal_422756(* _8932)[64];
   unsigned int _8933;
   int _8934;
   unsigned int _8935;
   int _8936;
   unsigned int _8938;
   unsigned int _8940;
   int _8941;
   unsigned int _8942;
   int _8943;
   unsigned int _8945;
   unsigned int _8947;
   int _8948;
   unsigned int _8949;
   int _8950;
   unsigned int _8952;
   unsigned int _8954;
   int _8955;
   unsigned int _8956;
   int _8957;
   unsigned int _8959;
   _Bool _8960;
   unsigned int _8961;
   int _8962;
   unsigned int _8963;
   int _8964;
   unsigned int _8965;
   int _8966;
   unsigned int _8967;
   int _8968;
   _Bool _8969;
   unsigned int _8976;
   int _8983;
   int _8984;
   int _8985;
   unsigned int __t__423549_0;
   unsigned int __t__423550_0;
   unsigned int __t__423551_0;
   unsigned int __t__423552_0;
   unsigned int __t__423553_0;
   unsigned int __t__423554_0;
   _8824 = internal_423023;
   const_size_in_1_bambu_artificial_ParmMgr_Write_valid(16u, 16u, const_size_in_1);
   const_size_out_1_bambu_artificial_ParmMgr_Write_valid(16u, 4u, const_size_out_1);
   _8932 = w2;
   _8917 = (unsigned int*)(((unsigned char*)layer2_out) + 4);
   _8919 = (unsigned int*)(((unsigned char*)layer2_out) + 8);
   _8921 = (unsigned int*)(((unsigned char*)layer2_out) + 12);
   _8831 = 0u;
   BB_LABEL_2:;
   __t__423549_0 = _8831;
   /* __t__423549_0 = gimple_phi(<_8880, BB2>, <0u, BB3>) */
   _8930 = __t__423549_0 << (2u);
   _8833 = (struct class_ac_fixed*)(((unsigned char*)dense_input) + _8930);
   _8976 = dense_input_bambu_artificial_ParmMgr_Read_array(0u, 32u, 0u, _8833);
   _8835 = __t__423549_0 << (2u);
   _8836 = _8976 << (16u);
   _8931 = (int) (_8836);
   _8837 = _8931 >> (16u);
   _8985 = _8837;
   _8984 = _8837;
   _8983 = _8837;
   _8933 = _8835 << (2u);
   _8838 = (struct Internal_422756(*)[64])(((unsigned char*)_8932) + _8933);
   if(1u) _8839 = (*((unsigned int*)(_8838)));
   _8840 = _8839 << (16u);
   _8934 = (int) (_8840);
   _8841 = _8934 >> (16u);
   _8842 = ((int)(_8841)) * ((int)(_8837));
   _8935 = (unsigned int) (_8842);
   _8843 = _8935 >> (10u);
   _8844 = _8843 << (16u);
   _8936 = (int) (_8844);
   _8845 = _8936 >> (16u);
   _8846 = (struct class_ac_fixed(*)[64])(((unsigned char*)_8824) + _8933);
   _8938 = (unsigned int) (_8845);
   if(1u) (*((unsigned int*)(_8846))) = _8938;
   _8848 = _8835 | (1u);
   _8940 = _8848 << (2u);
   _8849 = (struct Internal_422756(*)[64])(((unsigned char*)_8932) + _8940);
   if(1u) _8850 = (*((unsigned int*)(_8849)));
   _8851 = _8850 << (16u);
   _8941 = (int) (_8851);
   _8852 = _8941 >> (16u);
   _8853 = ((int)(_8852)) * ((int)(_8983));
   _8942 = (unsigned int) (_8853);
   _8854 = _8942 >> (10u);
   _8855 = _8854 << (16u);
   _8943 = (int) (_8855);
   _8856 = _8943 >> (16u);
   _8857 = (struct class_ac_fixed(*)[64])(((unsigned char*)_8824) + _8940);
   _8945 = (unsigned int) (_8856);
   if(1u) (*((unsigned int*)(_8857))) = _8945;
   _8859 = _8835 | (2u);
   _8947 = _8859 << (2u);
   _8860 = (struct Internal_422756(*)[64])(((unsigned char*)_8932) + _8947);
   if(1u) _8861 = (*((unsigned int*)(_8860)));
   _8862 = _8861 << (16u);
   _8948 = (int) (_8862);
   _8863 = _8948 >> (16u);
   _8864 = ((int)(_8863)) * ((int)(_8984));
   _8949 = (unsigned int) (_8864);
   _8865 = _8949 >> (10u);
   _8866 = _8865 << (16u);
   _8950 = (int) (_8866);
   _8867 = _8950 >> (16u);
   _8868 = (struct class_ac_fixed(*)[64])(((unsigned char*)_8824) + _8947);
   _8952 = (unsigned int) (_8867);
   if(1u) (*((unsigned int*)(_8868))) = _8952;
   _8870 = _8835 | (3u);
   _8954 = _8870 << (2u);
   _8871 = (struct Internal_422756(*)[64])(((unsigned char*)_8932) + _8954);
   if(1u) _8872 = (*((unsigned int*)(_8871)));
   _8873 = _8872 << (16u);
   _8955 = (int) (_8873);
   _8874 = _8955 >> (16u);
   _8875 = ((int)(_8874)) * ((int)(_8985));
   _8956 = (unsigned int) (_8875);
   _8876 = _8956 >> (10u);
   _8877 = _8876 << (16u);
   _8957 = (int) (_8877);
   _8878 = _8957 >> (16u);
   _8879 = (struct class_ac_fixed(*)[64])(((unsigned char*)_8824) + _8954);
   _8959 = (unsigned int) (_8878);
   if(1u) (*((unsigned int*)(_8879))) = _8959;
   _8880 = (unsigned int)(__t__423549_0 + (1u));
   _8960 = _8880 == (16u);
   _8882 = 0u;
   _8883 = 0u;
   _8884 = 0u;
   _8885 = 0u;
   _8886 = 0u;
   _8831 = _8880;
   if (_8960)
   {}
   else
      goto BB_LABEL_2;
   BB_LABEL_8:;
   __t__423550_0 = _8882;
   __t__423551_0 = _8883;
   __t__423552_0 = _8884;
   __t__423553_0 = _8885;
   __t__423554_0 = _8886;
   /* __t__423550_0 = gimple_phi(<_8926, BB8>, <0u, BB2>) */
   /* __t__423551_0 = gimple_phi(<_8927, BB8>, <0u, BB2>) */
   /* __t__423552_0 = gimple_phi(<_8928, BB8>, <0u, BB2>) */
   /* __t__423553_0 = gimple_phi(<_8929, BB8>, <0u, BB2>) */
   /* __t__423554_0 = gimple_phi(<_8912, BB8>, <0u, BB2>) */
   _8888 = __t__423554_0 << (2u);
   _8961 = _8888 << (2u);
   _8889 = (struct class_ac_fixed(*)[64])(((unsigned char*)_8824) + _8961);
   if(1u) _8890 = (*((unsigned int*)(_8889)));
   _8891 = (unsigned int)(_8890 + __t__423553_0);
   _8892 = _8891 << (16u);
   _8962 = (int) (_8892);
   _8893 = _8962 >> (16u);
   _8894 = _8888 | (1u);
   _8963 = _8894 << (2u);
   _8895 = (struct class_ac_fixed(*)[64])(((unsigned char*)_8824) + _8963);
   if(1u) _8896 = (*((unsigned int*)(_8895)));
   _8897 = (unsigned int)(_8896 + __t__423552_0);
   _8898 = _8897 << (16u);
   _8964 = (int) (_8898);
   _8899 = _8964 >> (16u);
   _8900 = _8888 | (2u);
   _8965 = _8900 << (2u);
   _8901 = (struct class_ac_fixed(*)[64])(((unsigned char*)_8824) + _8965);
   if(1u) _8902 = (*((unsigned int*)(_8901)));
   _8903 = (unsigned int)(_8902 + __t__423551_0);
   _8904 = _8903 << (16u);
   _8966 = (int) (_8904);
   _8905 = _8966 >> (16u);
   _8906 = _8888 | (3u);
   _8967 = _8906 << (2u);
   _8907 = (struct class_ac_fixed(*)[64])(((unsigned char*)_8824) + _8967);
   if(1u) _8908 = (*((unsigned int*)(_8907)));
   _8909 = (unsigned int)(_8908 + __t__423550_0);
   _8910 = _8909 << (16u);
   _8968 = (int) (_8910);
   _8911 = _8968 >> (16u);
   _8912 = (unsigned int)(__t__423554_0 + (1u));
   _8969 = _8912 == (16u);
   _8926 = (unsigned int) (_8911);
   _8927 = (unsigned int) (_8905);
   _8928 = (unsigned int) (_8899);
   _8929 = (unsigned int) (_8893);
   _8886 = _8912;
   _8882 = _8926;
   _8883 = _8927;
   _8884 = _8928;
   _8885 = _8929;
   if (_8969)
   {}
   else
      goto BB_LABEL_8;
   layer2_out_bambu_artificial_ParmMgr_Write_array(1u, 32u, _8929, layer2_out);
   layer2_out_bambu_artificial_ParmMgr_Write_array(1u, 32u, _8928, _8917);
   layer2_out_bambu_artificial_ParmMgr_Write_array(1u, 32u, _8927, _8919);
   layer2_out_bambu_artificial_ParmMgr_Write_array(1u, 32u, _8926, _8921);
   return ;
}


