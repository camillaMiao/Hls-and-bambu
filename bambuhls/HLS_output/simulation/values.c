/*
 * Politecnico di Milano
 * Code created using PandA - Version: PandA 0.9.7-dev - Revision 50cb9328b7e885f87c45c88a801253f08b66c7de-openroad4 - Date 2021-12-21T13:08:18
 * bambu executed with: bambu -O3 -fPIC --std=c++14 --compiler=I386_CLANG11 -v4 -D__SYNTHESIS__ --top-fname=myproject --generate-interface=INFER --generate-tb=test_myproject.xml --simulator=VERILATOR --simulate model_single_dense/hls4ml_prj/firmware/myproject.cpp 
 */
#define _FILE_OFFSET_BITS 64

#define __Inf (1.0/0.0)
#define __Nan (0.0/0.0)

#ifdef __cplusplus
#undef printf

#include <cstdio>

#include <cstdlib>

typedef bool _Bool;

#else
#include <stdio.h>

#include <stdlib.h>

extern void exit(int status);
#endif

#include <sys/types.h>
#include "/opt/panda/share/panda/ac_types/include/ap_fixed.h"

//global variable used to store the output file
FILE * __bambu_testbench_fp;

#ifdef __AC_NAMESPACE
using namespace __AC_NAMESPACE;
#endif
//variable used to detect a standard end of the main (exit has not been called)
unsigned int __standard_exit;
//definition of __bambu_testbench_exit function
void __bambu_testbench_exit(void) __attribute__ ((destructor));
void __bambu_testbench_exit(void)
{
   if (!__standard_exit)
   {
      fprintf(__bambu_testbench_fp, "//expected value for return value\n");
      fprintf(__bambu_testbench_fp, "o00000000000000000000000000000000\n");
      fprintf(__bambu_testbench_fp, "e\n");
   }
}

void _Dec2Bin_(FILE * __bambu_testbench_fp, long long int num, unsigned int precision)
{
   unsigned int i;
   unsigned long long int ull_value = (unsigned long long int) num;
   for (i = 0; i < precision; ++i)
   fprintf(__bambu_testbench_fp, "%c", (((1LLU << (precision - i -1)) & ull_value) ? '1' : '0'));
}

void _Ptd2Bin_(FILE * __bambu_testbench_fp, unsigned char * num, unsigned int precision)
{
   unsigned int i, j;
   char value;
   if (precision%8)
   {
      value = *(num+precision/8);
      for (j = 8-precision%8; j < 8; ++j)
      fprintf(__bambu_testbench_fp, "%c", (((1LLU << (8 - j - 1)) & value) ? '1' : '0'));
   }
   for (i = 0; i < 8*(precision/8); i = i + 8)
   {
      value = *(num + (precision / 8) - (i / 8) - 1);
      for (j = 0; j < 8; ++j)
      fprintf(__bambu_testbench_fp, "%c", (((1LLU << (8 - j - 1)) & value) ? '1' : '0'));
   }
}

struct class_ac_private__iv_base 
{
   unsigned int fd0;
} ;
struct class_ac_private__iv 
{
   struct class_ac_private__iv_base fd0;
} ;
struct class_ac_fixed 
{
   struct class_ac_private__iv fd0;
} ;
void myproject(ap_fixed<16, 6> *, ap_fixed<16, 6> *, unsigned short &, unsigned short &);

#undef main
int main()
{
   unsigned int __testbench_index, __testbench_index0, __testbench_index1, __testbench_index2;
   __standard_exit = 0;
   __bambu_testbench_fp = fopen("/home/li/bambuhls/HLS_output//simulation/values.txt", "w");
   if (!__bambu_testbench_fp) {
      perror("can't open file: /home/li/bambuhls/HLS_output//simulation/values.txt");
      exit(1);
   }
   
   ac_fixed<16, 6, true, AC_TRN, AC_WRAP> * dense_1_input;
   ac_fixed<16, 6, true, AC_TRN, AC_WRAP> * layer2_out;
   unsigned short  const_size_in_1;
   unsigned short  const_size_out_1;
   fprintf(__bambu_testbench_fp, "//base address 1073741824\n");
   fprintf(__bambu_testbench_fp, "b01000000000000000000000000000000\n");
   {
      fprintf(__bambu_testbench_fp, "//memory initialization for variable dense_1_input\n");
      for (__testbench_index = 0; __testbench_index < 4; ++__testbench_index)
         fprintf(__bambu_testbench_fp, "m00000000\n");
      // next_object_offset > reserved_mem_bytes
      for (__testbench_index = 0; __testbench_index < 252; ++__testbench_index)
         fprintf(__bambu_testbench_fp, "m00000000\n");
      fprintf(__bambu_testbench_fp, "//memory initialization for variable layer2_out\n");
      fprintf(__bambu_testbench_fp, "m00000000\n");
      fprintf(__bambu_testbench_fp, "m10000100\n");
      fprintf(__bambu_testbench_fp, "m00000000\n");
      fprintf(__bambu_testbench_fp, "m00000000\n");
      fprintf(__bambu_testbench_fp, "//memory initialization for variable layer2_out\n");
      fprintf(__bambu_testbench_fp, "m00000000\n");
      fprintf(__bambu_testbench_fp, "m11001100\n");
      fprintf(__bambu_testbench_fp, "m00000000\n");
      fprintf(__bambu_testbench_fp, "m00000000\n");
      fprintf(__bambu_testbench_fp, "//memory initialization for variable layer2_out\n");
      fprintf(__bambu_testbench_fp, "m00000000\n");
      fprintf(__bambu_testbench_fp, "m10010000\n");
      fprintf(__bambu_testbench_fp, "m00000000\n");
      fprintf(__bambu_testbench_fp, "m00000000\n");
      fprintf(__bambu_testbench_fp, "//memory initialization for variable layer2_out\n");
      fprintf(__bambu_testbench_fp, "m00000000\n");
      fprintf(__bambu_testbench_fp, "m10011000\n");
      fprintf(__bambu_testbench_fp, "m00000000\n");
      fprintf(__bambu_testbench_fp, "m00000000\n");
      // next_object_offset > reserved_mem_bytes
      for (__testbench_index = 0; __testbench_index < 240; ++__testbench_index)
         fprintf(__bambu_testbench_fp, "m00000000\n");
      fprintf(__bambu_testbench_fp, "//memory initialization for variable const_size_in_1\n");
      for (__testbench_index = 0; __testbench_index < 2; ++__testbench_index)
         fprintf(__bambu_testbench_fp, "m00000000\n");
      // next_object_offset > reserved_mem_bytes
      for (__testbench_index = 0; __testbench_index < 254; ++__testbench_index)
         fprintf(__bambu_testbench_fp, "m00000000\n");
      fprintf(__bambu_testbench_fp, "//memory initialization for variable const_size_out_1\n");
      for (__testbench_index = 0; __testbench_index < 2; ++__testbench_index)
         fprintf(__bambu_testbench_fp, "m00000000\n");
      // next_object_offset > reserved_mem_bytes
      for (__testbench_index = 0; __testbench_index < 254; ++__testbench_index)
         fprintf(__bambu_testbench_fp, "m00000000\n");
   }
   {
      // parameter initialization
      ac_fixed<16, 6, true, AC_TRN, AC_WRAP>  dense_1_input_temp[] = {0};
      dense_1_input = dense_1_input_temp;
      fprintf(__bambu_testbench_fp, "//parameter: dense_1_input value: 1073741824\n");
      fprintf(__bambu_testbench_fp, "p01000000000000000000000000000000\n");
      ac_fixed<16, 6, true, AC_TRN, AC_WRAP>  layer2_out_temp[] = {97,115,100,102};
      layer2_out = layer2_out_temp;
      fprintf(__bambu_testbench_fp, "//parameter: layer2_out value: 1073742080\n");
      fprintf(__bambu_testbench_fp, "p01000000000000000000000100000000\n");
      unsigned short  const_size_in_1_temp = 0;
      const_size_in_1 = const_size_in_1_temp;
      fprintf(__bambu_testbench_fp, "//parameter: const_size_in_1 value: 1073742336\n");
      fprintf(__bambu_testbench_fp, "p01000000000000000000001000000000\n");
      unsigned short  const_size_out_1_temp = 0;
      const_size_out_1 = const_size_out_1_temp;
      fprintf(__bambu_testbench_fp, "//parameter: const_size_out_1 value: 1073742592\n");
      fprintf(__bambu_testbench_fp, "p01000000000000000000001100000000\n");
      // function call
      myproject((ap_fixed<16, 6> *) dense_1_input, (ap_fixed<16, 6> *) layer2_out, (unsigned short &) const_size_in_1, (unsigned short &) const_size_out_1);
      // print expected results
      for (__testbench_index2 = 0; __testbench_index2 < 1; ++__testbench_index2)
      {
         fprintf(__bambu_testbench_fp, "//expected value for output dense_1_input[__testbench_index2]: %d\n", (int)dense_1_input[__testbench_index2]);
         fprintf(__bambu_testbench_fp, "o");
         _Ptd2Bin_(__bambu_testbench_fp, (unsigned char*)&dense_1_input[__testbench_index2], 16);
         fprintf(__bambu_testbench_fp, "\n");
      }
      fprintf(__bambu_testbench_fp, "e\n");
      for (__testbench_index2 = 0; __testbench_index2 < 4; ++__testbench_index2)
      {
         fprintf(__bambu_testbench_fp, "//expected value for output layer2_out[__testbench_index2]: %d\n", (int)layer2_out[__testbench_index2]);
         fprintf(__bambu_testbench_fp, "o");
         _Ptd2Bin_(__bambu_testbench_fp, (unsigned char*)&layer2_out[__testbench_index2], 16);
         fprintf(__bambu_testbench_fp, "\n");
      }
      fprintf(__bambu_testbench_fp, "e\n");
      fprintf(__bambu_testbench_fp, "//expected value for output const_size_in_1: %d\n", (int)const_size_in_1);
      fprintf(__bambu_testbench_fp, "o");
      _Dec2Bin_(__bambu_testbench_fp, const_size_in_1, 16);
      fprintf(__bambu_testbench_fp, "\n");
      fprintf(__bambu_testbench_fp, "e\n");
      fprintf(__bambu_testbench_fp, "//expected value for output const_size_out_1: %d\n", (int)const_size_out_1);
      fprintf(__bambu_testbench_fp, "o");
      _Dec2Bin_(__bambu_testbench_fp, const_size_out_1, 16);
      fprintf(__bambu_testbench_fp, "\n");
      fprintf(__bambu_testbench_fp, "e\n");
   }
   __standard_exit = 1;
   exit(0);
}

