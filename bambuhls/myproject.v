// 
// Politecnico di Milano
// Code created using PandA - Version: PandA 0.9.7-dev - Revision 50cb9328b7e885f87c45c88a801253f08b66c7de-openroad4 - Date 2021-12-21T13:08:18
// bambu executed with: bambu -O3 -fPIC --std=c++14 --compiler=I386_CLANG11 -v4 -D__SYNTHESIS__ --top-fname=myproject --generate-interface=INFER --generate-tb=test_myproject.xml --simulator=VERILATOR --simulate model_single_dense/hls4ml_prj/firmware/myproject.cpp 
// 
// Send any bug to: panda-info@polimi.it
// ************************************************************************
// The following text holds for all the components tagged with PANDA_LGPLv3.
// They are all part of the BAMBU/PANDA IP LIBRARY.
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 3 of the License, or (at your option) any later version.
// 
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public
// License along with the PandA framework; see the files COPYING.LIB
// If not, see <http://www.gnu.org/licenses/>.
// ************************************************************************

`ifdef __ICARUS__
  `define _SIM_HAVE_CLOG2
`endif
`ifdef VERILATOR
  `define _SIM_HAVE_CLOG2
`endif
`ifdef MODEL_TECH
  `define _SIM_HAVE_CLOG2
`endif
`ifdef VCS
  `define _SIM_HAVE_CLOG2
`endif
`ifdef NCVERILOG
  `define _SIM_HAVE_CLOG2
`endif
`ifdef XILINX_SIMULATOR
  `define _SIM_HAVE_CLOG2
`endif
`ifdef XILINX_ISIM
  `define _SIM_HAVE_CLOG2
`endif

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2021 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>, Christian Pilato <christian.pilato@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module constant_value(out1);
  parameter BITSIZE_out1=1,
    value=1'b0;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = value;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2021 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module register_SE(clock,
  reset,
  in1,
  wenable,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_out1=1;
  // IN
  input clock;
  input reset;
  input [BITSIZE_in1-1:0] in1;
  input wenable;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  
  reg [BITSIZE_out1-1:0] reg_out1 =0;
  assign out1 = reg_out1;
  always @(posedge clock)
    if (wenable)
      reg_out1 <= in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2021 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module register_STD(clock,
  reset,
  in1,
  wenable,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_out1=1;
  // IN
  input clock;
  input reset;
  input [BITSIZE_in1-1:0] in1;
  input wenable;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  reg [BITSIZE_out1-1:0] reg_out1 =0;
  assign out1 = reg_out1;
  always @(posedge clock)
    reg_out1 <= in1;

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2021 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ARRAY_1D_STD_DISTRAM_NN_SDS(clock,
  reset,
  in1,
  in2,
  in3,
  in4,
  out1,
  sel_LOAD,
  sel_STORE,
  S_oe_ram,
  S_we_ram,
  S_addr_ram,
  S_Wdata_ram,
  Sin_Rdata_ram,
  Sout_Rdata_ram,
  S_data_ram_size,
  Sin_DataRdy,
  Sout_DataRdy,
  proxy_in1,
  proxy_in2,
  proxy_in3,
  proxy_sel_LOAD,
  proxy_sel_STORE,
  proxy_out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2,
    BITSIZE_in2=1, PORTSIZE_in2=2,
    BITSIZE_in3=1, PORTSIZE_in3=2,
    BITSIZE_in4=1, PORTSIZE_in4=2,
    BITSIZE_sel_LOAD=1, PORTSIZE_sel_LOAD=2,
    BITSIZE_sel_STORE=1, PORTSIZE_sel_STORE=2,
    BITSIZE_S_oe_ram=1, PORTSIZE_S_oe_ram=2,
    BITSIZE_S_we_ram=1, PORTSIZE_S_we_ram=2,
    BITSIZE_out1=1, PORTSIZE_out1=2,
    BITSIZE_S_addr_ram=1, PORTSIZE_S_addr_ram=2,
    BITSIZE_S_Wdata_ram=8, PORTSIZE_S_Wdata_ram=2,
    BITSIZE_Sin_Rdata_ram=8, PORTSIZE_Sin_Rdata_ram=2,
    BITSIZE_Sout_Rdata_ram=8, PORTSIZE_Sout_Rdata_ram=2,
    BITSIZE_S_data_ram_size=1, PORTSIZE_S_data_ram_size=2,
    BITSIZE_Sin_DataRdy=1, PORTSIZE_Sin_DataRdy=2,
    BITSIZE_Sout_DataRdy=1, PORTSIZE_Sout_DataRdy=2,
    MEMORY_INIT_file="array.mem",
    n_elements=1,
    data_size=32,
    address_space_begin=0,
    address_space_rangesize=4,
    BUS_PIPELINED=1,
    PRIVATE_MEMORY=0,
    READ_ONLY_MEMORY=0,
    USE_SPARSE_MEMORY=1,
    ALIGNMENT=32,
    BITSIZE_proxy_in1=1, PORTSIZE_proxy_in1=2,
    BITSIZE_proxy_in2=1, PORTSIZE_proxy_in2=2,
    BITSIZE_proxy_in3=1, PORTSIZE_proxy_in3=2,
    BITSIZE_proxy_sel_LOAD=1, PORTSIZE_proxy_sel_LOAD=2,
    BITSIZE_proxy_sel_STORE=1, PORTSIZE_proxy_sel_STORE=2,
    BITSIZE_proxy_out1=1, PORTSIZE_proxy_out1=2;
  // IN
  input clock;
  input reset;
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  input [(PORTSIZE_in2*BITSIZE_in2)+(-1):0] in2;
  input [(PORTSIZE_in3*BITSIZE_in3)+(-1):0] in3;
  input [PORTSIZE_in4-1:0] in4;
  input [PORTSIZE_sel_LOAD-1:0] sel_LOAD;
  input [PORTSIZE_sel_STORE-1:0] sel_STORE;
  input [PORTSIZE_S_oe_ram-1:0] S_oe_ram;
  input [PORTSIZE_S_we_ram-1:0] S_we_ram;
  input [(PORTSIZE_S_addr_ram*BITSIZE_S_addr_ram)+(-1):0] S_addr_ram;
  input [(PORTSIZE_S_Wdata_ram*BITSIZE_S_Wdata_ram)+(-1):0] S_Wdata_ram;
  input [(PORTSIZE_Sin_Rdata_ram*BITSIZE_Sin_Rdata_ram)+(-1):0] Sin_Rdata_ram;
  input [(PORTSIZE_S_data_ram_size*BITSIZE_S_data_ram_size)+(-1):0] S_data_ram_size;
  input [PORTSIZE_Sin_DataRdy-1:0] Sin_DataRdy;
  input [(PORTSIZE_proxy_in1*BITSIZE_proxy_in1)+(-1):0] proxy_in1;
  input [(PORTSIZE_proxy_in2*BITSIZE_proxy_in2)+(-1):0] proxy_in2;
  input [(PORTSIZE_proxy_in3*BITSIZE_proxy_in3)+(-1):0] proxy_in3;
  input [PORTSIZE_proxy_sel_LOAD-1:0] proxy_sel_LOAD;
  input [PORTSIZE_proxy_sel_STORE-1:0] proxy_sel_STORE;
  // OUT
  output [(PORTSIZE_out1*BITSIZE_out1)+(-1):0] out1;
  output [(PORTSIZE_Sout_Rdata_ram*BITSIZE_Sout_Rdata_ram)+(-1):0] Sout_Rdata_ram;
  output [PORTSIZE_Sout_DataRdy-1:0] Sout_DataRdy;
  output [(PORTSIZE_proxy_out1*BITSIZE_proxy_out1)+(-1):0] proxy_out1;
  `ifndef _SIM_HAVE_CLOG2
      function integer log2;
        input integer value;
        integer temp_value;
        begin
        temp_value = value-1;
        for (log2=0; temp_value>0; log2=log2+1)
          temp_value = temp_value>>1;
        end
      endfunction
  `endif
  parameter n_byte_on_databus = ALIGNMENT/8;
  parameter nbit_addr = BITSIZE_in2 > BITSIZE_proxy_in2 ? BITSIZE_in2 : BITSIZE_proxy_in2;
  `ifdef _SIM_HAVE_CLOG2
    parameter nbit_read_addr = n_elements == 1 ? 1 : $clog2(n_elements);
    parameter nbits_byte_offset = n_byte_on_databus<=1 ? 0 : $clog2(n_byte_on_databus);
  `else
    parameter nbit_read_addr = n_elements == 1 ? 1 : log2(n_elements);
    parameter nbits_byte_offset = n_byte_on_databus<=1 ? 0 : log2(n_byte_on_databus);
  `endif
  parameter max_n_writes = PORTSIZE_sel_STORE;
  parameter max_n_reads = PORTSIZE_sel_LOAD;
  parameter max_n_rw = max_n_writes > max_n_reads ? max_n_writes : max_n_reads;
  
  wire [max_n_writes-1:0] bram_write;
  
  wire [nbit_read_addr*max_n_rw-1:0] memory_addr_a;
  wire [nbit_read_addr-1:0] memory_addr_a_0;
  wire [nbit_read_addr-1:0] memory_addr_a_1;
  
  wire [data_size*max_n_writes-1:0] din_value_aggregated;
  wire [data_size*max_n_reads-1:0] dout_a;
  wire [nbit_addr*max_n_rw-1:0] tmp_addr;
  wire [nbit_addr*max_n_rw-1:0] relative_addr;
  wire [PORTSIZE_sel_LOAD-1:0] int_sel_LOAD;
  wire [PORTSIZE_sel_STORE-1:0] int_sel_STORE;
  integer index2;
  
  reg [data_size-1:0] memory [0:n_elements-1] /* synthesis syn_ramstyle = "no_rw_check" */;
  
  initial
  begin
    $readmemb(MEMORY_INIT_file, memory, 0, n_elements-1);
  end
  
  generate
  genvar ind2;
  for (ind2=0; ind2<max_n_rw; ind2=ind2+1)
    begin : Lind2
      assign tmp_addr[(ind2+1)*nbit_addr-1:ind2*nbit_addr] = (proxy_sel_LOAD[ind2]||proxy_sel_STORE[ind2]) ? proxy_in2[(ind2+1)*BITSIZE_proxy_in2-1:ind2*BITSIZE_proxy_in2] : in2[(ind2+1)*BITSIZE_in2-1:ind2*BITSIZE_in2];
    end
  endgenerate
  
  generate
  genvar i6;
    for (i6=0; i6<max_n_rw; i6=i6+1)
    begin : L6
      if(USE_SPARSE_MEMORY==1)
        assign relative_addr[(i6)*nbit_addr+nbit_addr-1:i6*nbit_addr] = tmp_addr[(i6)*nbit_addr+nbit_addr-1:i6*nbit_addr];
      else
        assign relative_addr[(i6+1)*nbit_addr-1:i6*nbit_addr] = tmp_addr[(i6+1)*nbit_addr-1:i6*nbit_addr]-address_space_begin;
    end
  endgenerate
  
  generate
  genvar i7;
    for (i7=0; i7<max_n_rw; i7=i7+1)
    begin : L7_A
      if (n_elements==1)
        assign memory_addr_a[(i7+1)*nbit_read_addr-1:i7*nbit_read_addr] = {nbit_read_addr{1'b0}};
      else
        assign memory_addr_a[(i7+1)*nbit_read_addr-1:i7*nbit_read_addr] = relative_addr[nbit_read_addr+nbits_byte_offset-1+i7*nbit_addr:nbits_byte_offset+i7*nbit_addr];
    end
  endgenerate
  
  generate
  genvar i14;
    for (i14=0; i14<max_n_writes; i14=i14+1)
    begin : L14
      assign din_value_aggregated[(i14+1)*data_size-1:i14*data_size] = proxy_sel_STORE[i14] ? proxy_in1[(i14+1)*BITSIZE_proxy_in1-1:i14*BITSIZE_proxy_in1] : in1[(i14+1)*BITSIZE_in1-1:i14*BITSIZE_in1];
    end
  endgenerate
  
  generate
  genvar i11;
    for (i11=0; i11<max_n_reads; i11=i11+1)
    begin : asynchronous_read
      assign dout_a[data_size*i11+:data_size] = memory[memory_addr_a[nbit_read_addr*i11+:nbit_read_addr]];
    end
  endgenerate
  
  assign memory_addr_a_0 = memory_addr_a[nbit_read_addr*0+:nbit_read_addr];
  assign memory_addr_a_1 = memory_addr_a[nbit_read_addr*1+:nbit_read_addr];
  
  generate if(READ_ONLY_MEMORY==0)
    always @(posedge clock)
    begin
      if(bram_write[0])
        memory[memory_addr_a_0] <= din_value_aggregated[data_size*0+:data_size];
      if(bram_write[1])
        memory[memory_addr_a_1] <= din_value_aggregated[data_size*1+:data_size];
    end
  endgenerate
  
  generate
  genvar i21;
    for (i21=0; i21<max_n_writes; i21=i21+1)
    begin : L21
        assign bram_write[i21] = int_sel_STORE[i21] || proxy_sel_STORE[i21];
    end
  endgenerate
  
  generate
  genvar i20;
    for (i20=0; i20<max_n_reads; i20=i20+1)
    begin : L20
      assign out1[(i20+1)*BITSIZE_out1-1:i20*BITSIZE_out1] = dout_a[(i20+1)*data_size-1:i20*data_size];
      assign proxy_out1[(i20+1)*BITSIZE_proxy_out1-1:i20*BITSIZE_proxy_out1] = dout_a[(i20+1)*data_size-1:i20*data_size];
    end
  endgenerate
  assign Sout_Rdata_ram =Sin_Rdata_ram;
  assign Sout_DataRdy = Sin_DataRdy;
  assign int_sel_LOAD = sel_LOAD & in4;
  assign int_sel_STORE = sel_STORE & in4;
  
  assign Sout_DataRdy = Sin_DataRdy;

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2021 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ARRAY_1D_STD_BRAM_NN_SDS_BASE(clock,
  reset,
  in1,
  in2,
  in3,
  out1,
  sel_LOAD,
  sel_STORE,
  S_oe_ram,
  S_we_ram,
  S_addr_ram,
  S_Wdata_ram,
  Sin_Rdata_ram,
  Sout_Rdata_ram,
  S_data_ram_size,
  Sin_DataRdy,
  Sout_DataRdy,
  proxy_in1,
  proxy_in2,
  proxy_in3,
  proxy_sel_LOAD,
  proxy_sel_STORE,
  proxy_out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2,
    BITSIZE_in2=1, PORTSIZE_in2=2,
    BITSIZE_in3=1, PORTSIZE_in3=2,
    BITSIZE_sel_LOAD=1, PORTSIZE_sel_LOAD=2,
    BITSIZE_sel_STORE=1, PORTSIZE_sel_STORE=2,
    BITSIZE_S_oe_ram=1, PORTSIZE_S_oe_ram=2,
    BITSIZE_S_we_ram=1, PORTSIZE_S_we_ram=2,
    BITSIZE_out1=1, PORTSIZE_out1=2,
    BITSIZE_S_addr_ram=1, PORTSIZE_S_addr_ram=2,
    BITSIZE_S_Wdata_ram=8, PORTSIZE_S_Wdata_ram=2,
    BITSIZE_Sin_Rdata_ram=8, PORTSIZE_Sin_Rdata_ram=2,
    BITSIZE_Sout_Rdata_ram=8, PORTSIZE_Sout_Rdata_ram=2,
    BITSIZE_S_data_ram_size=1, PORTSIZE_S_data_ram_size=2,
    BITSIZE_Sin_DataRdy=1, PORTSIZE_Sin_DataRdy=2,
    BITSIZE_Sout_DataRdy=1, PORTSIZE_Sout_DataRdy=2,
    MEMORY_INIT_file="array.mem",
    n_elements=1,
    data_size=32,
    address_space_begin=0,
    address_space_rangesize=4,
    BUS_PIPELINED=1,
    PRIVATE_MEMORY=0,
    READ_ONLY_MEMORY=0,
    USE_SPARSE_MEMORY=1,
    HIGH_LATENCY=0,
    ALIGNMENT=32,
    BITSIZE_proxy_in1=1, PORTSIZE_proxy_in1=2,
    BITSIZE_proxy_in2=1, PORTSIZE_proxy_in2=2,
    BITSIZE_proxy_in3=1, PORTSIZE_proxy_in3=2,
    BITSIZE_proxy_sel_LOAD=1, PORTSIZE_proxy_sel_LOAD=2,
    BITSIZE_proxy_sel_STORE=1, PORTSIZE_proxy_sel_STORE=2,
    BITSIZE_proxy_out1=1, PORTSIZE_proxy_out1=2;
  // IN
  input clock;
  input reset;
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  input [(PORTSIZE_in2*BITSIZE_in2)+(-1):0] in2;
  input [(PORTSIZE_in3*BITSIZE_in3)+(-1):0] in3;
  input [PORTSIZE_sel_LOAD-1:0] sel_LOAD;
  input [PORTSIZE_sel_STORE-1:0] sel_STORE;
  input [PORTSIZE_S_oe_ram-1:0] S_oe_ram;
  input [PORTSIZE_S_we_ram-1:0] S_we_ram;
  input [(PORTSIZE_S_addr_ram*BITSIZE_S_addr_ram)+(-1):0] S_addr_ram;
  input [(PORTSIZE_S_Wdata_ram*BITSIZE_S_Wdata_ram)+(-1):0] S_Wdata_ram;
  input [(PORTSIZE_Sin_Rdata_ram*BITSIZE_Sin_Rdata_ram)+(-1):0] Sin_Rdata_ram;
  input [(PORTSIZE_S_data_ram_size*BITSIZE_S_data_ram_size)+(-1):0] S_data_ram_size;
  input [PORTSIZE_Sin_DataRdy-1:0] Sin_DataRdy;
  input [(PORTSIZE_proxy_in1*BITSIZE_proxy_in1)+(-1):0] proxy_in1;
  input [(PORTSIZE_proxy_in2*BITSIZE_proxy_in2)+(-1):0] proxy_in2;
  input [(PORTSIZE_proxy_in3*BITSIZE_proxy_in3)+(-1):0] proxy_in3;
  input [PORTSIZE_proxy_sel_LOAD-1:0] proxy_sel_LOAD;
  input [PORTSIZE_proxy_sel_STORE-1:0] proxy_sel_STORE;
  // OUT
  output [(PORTSIZE_out1*BITSIZE_out1)+(-1):0] out1;
  output [(PORTSIZE_Sout_Rdata_ram*BITSIZE_Sout_Rdata_ram)+(-1):0] Sout_Rdata_ram;
  output [PORTSIZE_Sout_DataRdy-1:0] Sout_DataRdy;
  output [(PORTSIZE_proxy_out1*BITSIZE_proxy_out1)+(-1):0] proxy_out1;
  
  `ifndef _SIM_HAVE_CLOG2
    function integer log2;
       input integer value;
       integer temp_value;
      begin
        temp_value = value-1;
        for (log2=0; temp_value>0; log2=log2+1)
          temp_value = temp_value>>1;
      end
    endfunction
  `endif
  parameter n_byte_on_databus = ALIGNMENT/8;
  parameter nbit_addr = BITSIZE_in2 > BITSIZE_proxy_in2 ? BITSIZE_in2 : BITSIZE_proxy_in2;
  `ifdef _SIM_HAVE_CLOG2
    parameter nbit_read_addr = n_elements == 1 ? 1 : $clog2(n_elements);
    parameter nbits_byte_offset = n_byte_on_databus<=1 ? 0 : $clog2(n_byte_on_databus);
  `else
    parameter nbit_read_addr = n_elements == 1 ? 1 : log2(n_elements);
    parameter nbits_byte_offset = n_byte_on_databus<=1 ? 0 : log2(n_byte_on_databus);
  `endif
  parameter max_n_writes = PORTSIZE_sel_STORE;
  parameter max_n_reads = PORTSIZE_sel_LOAD;
  parameter max_n_rw = max_n_writes > max_n_reads ? max_n_writes : max_n_reads;
  
  wire [max_n_writes-1:0] bram_write;
  wire [max_n_writes-1:0] bram_write_temp;
  
  wire [nbit_read_addr*max_n_rw-1:0] memory_addr_a;
  wire [nbit_read_addr*max_n_rw-1:0] memory_addr_a_temp;
  
  wire [data_size*max_n_writes-1:0] din_value_aggregated;
  wire [data_size*max_n_writes-1:0] din_value_aggregated_temp;
  reg [data_size*max_n_reads-1:0] dout_a =0;
  reg [data_size*max_n_reads-1:0] dout_a_registered =0;
  reg [data_size-1:0] dout_a_registered_0 =0;
  reg [data_size-1:0] dout_a_registered_1 =0;
  wire [nbit_addr*max_n_rw-1:0] tmp_addr;
  wire [nbit_addr*max_n_rw-1:0] relative_addr;
  integer index2;
  
  reg [data_size-1:0] memory [0:n_elements-1] /* synthesis syn_ramstyle = "no_rw_check" */;
  
  initial
  begin
    $readmemb(MEMORY_INIT_file, memory, 0, n_elements-1);
  end
  
  generate
    if(HIGH_LATENCY==2)
    begin
      (* syn_keep=1 *)reg [nbit_read_addr*max_n_rw-1:0] memory_addr_a_reg =0;
      (* syn_keep=1 *)reg [data_size*max_n_writes-1:0] din_value_aggregated_reg =0;
      (* syn_keep=1 *)reg [max_n_writes-1:0] bram_write_reg =0;
      always @ (posedge clock)
      begin
         memory_addr_a_reg <= memory_addr_a;
         bram_write_reg <= bram_write;
         din_value_aggregated_reg <= din_value_aggregated;
      end
      assign memory_addr_a_temp = memory_addr_a_reg;
      assign bram_write_temp = bram_write_reg;
      assign din_value_aggregated_temp = din_value_aggregated_reg;
    end
    else
    begin
      assign memory_addr_a_temp = memory_addr_a;
      assign bram_write_temp = bram_write;
      assign din_value_aggregated_temp = din_value_aggregated;
    end
  endgenerate
  
  generate
  genvar ind2;
  for (ind2=0; ind2<max_n_rw; ind2=ind2+1)
    begin : Lind2
      assign tmp_addr[(ind2+1)*nbit_addr-1:ind2*nbit_addr] = (proxy_sel_LOAD[ind2]||proxy_sel_STORE[ind2]) ? proxy_in2[(ind2+1)*BITSIZE_proxy_in2-1:ind2*BITSIZE_proxy_in2] : in2[(ind2+1)*BITSIZE_in2-1:ind2*BITSIZE_in2];
    end
  endgenerate
  
  generate
  genvar i6;
    for (i6=0; i6<max_n_rw; i6=i6+1)
    begin : L6
      if(USE_SPARSE_MEMORY==1)
        assign relative_addr[(i6+1)*nbit_addr-1:i6*nbit_addr] = tmp_addr[(i6+1)*nbit_addr-1:i6*nbit_addr];
      else
        assign relative_addr[(i6+1)*nbit_addr-1:i6*nbit_addr] = tmp_addr[(i6+1)*nbit_addr-1:i6*nbit_addr]-address_space_begin;
    end
  endgenerate
  
  generate
  genvar i7;
    for (i7=0; i7<max_n_rw; i7=i7+1)
    begin : L7_A
      if (n_elements==1)
        assign memory_addr_a[(i7+1)*nbit_read_addr-1:i7*nbit_read_addr] = {nbit_read_addr{1'b0}};
      else
        assign memory_addr_a[(i7+1)*nbit_read_addr-1:i7*nbit_read_addr] = relative_addr[nbit_read_addr+nbits_byte_offset-1+i7*nbit_addr:nbits_byte_offset+i7*nbit_addr];
    end
  endgenerate
  
  generate
  genvar i14;
    for (i14=0; i14<max_n_writes; i14=i14+1)
    begin : L14
      assign din_value_aggregated[(i14+1)*data_size-1:i14*data_size] = proxy_sel_STORE[i14] ? proxy_in1[(i14+1)*BITSIZE_proxy_in1-1:i14*BITSIZE_proxy_in1] : in1[(i14+1)*BITSIZE_in1-1:i14*BITSIZE_in1];
    end
  endgenerate
  
  generate
  genvar i11, i12;
    if(n_elements==1)
    begin : single_element
      always @(posedge clock)
      begin
        for (index2=0; index2<max_n_reads; index2=index2+1)
        begin : L12_single_read
          if(HIGH_LATENCY==0)
          begin
            dout_a[data_size*index2+:data_size] <= memory[memory_addr_a_temp[nbit_read_addr*index2+:nbit_read_addr]];
          end
          else
          begin
            dout_a_registered[data_size*index2+:data_size] <= memory[memory_addr_a_temp[nbit_read_addr*index2+:nbit_read_addr]];
            dout_a[data_size*index2+:data_size] <= dout_a_registered[data_size*index2+:data_size];
          end
        end
        for (index2=0; index2<max_n_writes; index2=index2+1)
        begin : L12_single_write
          if(READ_ONLY_MEMORY==0)
          begin
            if(bram_write_temp[index2])
              memory[memory_addr_a_temp[nbit_read_addr*index2+:nbit_read_addr]] <= din_value_aggregated_temp[data_size*index2+:data_size];
          end
        end
      end
    end
    else
    begin : multiple_elements
      if(max_n_rw ==2)
      begin
        always @(posedge clock)
        begin
          if(READ_ONLY_MEMORY==0)
          begin
            if(bram_write_temp[0])
              memory[memory_addr_a_temp[nbit_read_addr*(0+1)-1:nbit_read_addr*0]] <= din_value_aggregated_temp[data_size*0+:data_size];
          end
          if(HIGH_LATENCY==0)
          begin
            dout_a[data_size*(0+1)-1:data_size*0] <= memory[memory_addr_a_temp[nbit_read_addr*(0+1)-1:nbit_read_addr*0]];
          end
          else
          begin
            dout_a_registered_0 <= memory[memory_addr_a_temp[nbit_read_addr*(0+1)-1:nbit_read_addr*0]];
            dout_a[data_size*(0+1)-1:data_size*0] <= dout_a_registered_0;
          end
        end
        always @(posedge clock)
        begin
          if(READ_ONLY_MEMORY==0)
          begin
            if(bram_write_temp[1])
              memory[memory_addr_a_temp[nbit_read_addr*(1+1)-1:nbit_read_addr*1]] <= din_value_aggregated_temp[data_size*1+:data_size];
          end
          if(HIGH_LATENCY==0)
          begin
            dout_a[data_size*(1+1)-1:data_size*1] <= memory[memory_addr_a_temp[nbit_read_addr*(1+1)-1:nbit_read_addr*1]];
          end
          else
          begin
            dout_a_registered_1 <= memory[memory_addr_a_temp[nbit_read_addr*(1+1)-1:nbit_read_addr*1]];
            dout_a[data_size*(1+1)-1:data_size*1] <= dout_a_registered_1;
          end
        end
      end
      else
      begin
        //not supported
      end
    end    
  endgenerate
  
  generate
  genvar i21;
    for (i21=0; i21<max_n_writes; i21=i21+1)
    begin : L21
        assign bram_write[i21] = sel_STORE[i21] || proxy_sel_STORE[i21];
    end
  endgenerate
  
  generate
  genvar i20;
    for (i20=0; i20<max_n_reads; i20=i20+1)
    begin : L20
      assign out1[(i20+1)*BITSIZE_out1-1:i20*BITSIZE_out1] = dout_a[(i20+1)*data_size-1:i20*data_size];
      assign proxy_out1[(i20+1)*BITSIZE_proxy_out1-1:i20*BITSIZE_proxy_out1] = dout_a[(i20+1)*data_size-1:i20*data_size];
    end
  endgenerate
  assign Sout_Rdata_ram =Sin_Rdata_ram;
  assign Sout_DataRdy = Sin_DataRdy;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2021 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ARRAY_1D_STD_BRAM_NN_SDS(clock,
  reset,
  in1,
  in2,
  in3,
  in4,
  out1,
  sel_LOAD,
  sel_STORE,
  S_oe_ram,
  S_we_ram,
  S_addr_ram,
  S_Wdata_ram,
  Sin_Rdata_ram,
  Sout_Rdata_ram,
  S_data_ram_size,
  Sin_DataRdy,
  Sout_DataRdy,
  proxy_in1,
  proxy_in2,
  proxy_in3,
  proxy_sel_LOAD,
  proxy_sel_STORE,
  proxy_out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2,
    BITSIZE_in2=1, PORTSIZE_in2=2,
    BITSIZE_in3=1, PORTSIZE_in3=2,
    BITSIZE_in4=1, PORTSIZE_in4=2,
    BITSIZE_sel_LOAD=1, PORTSIZE_sel_LOAD=2,
    BITSIZE_sel_STORE=1, PORTSIZE_sel_STORE=2,
    BITSIZE_S_oe_ram=1, PORTSIZE_S_oe_ram=2,
    BITSIZE_S_we_ram=1, PORTSIZE_S_we_ram=2,
    BITSIZE_out1=1, PORTSIZE_out1=2,
    BITSIZE_S_addr_ram=1, PORTSIZE_S_addr_ram=2,
    BITSIZE_S_Wdata_ram=8, PORTSIZE_S_Wdata_ram=2,
    BITSIZE_Sin_Rdata_ram=8, PORTSIZE_Sin_Rdata_ram=2,
    BITSIZE_Sout_Rdata_ram=8, PORTSIZE_Sout_Rdata_ram=2,
    BITSIZE_S_data_ram_size=1, PORTSIZE_S_data_ram_size=2,
    BITSIZE_Sin_DataRdy=1, PORTSIZE_Sin_DataRdy=2,
    BITSIZE_Sout_DataRdy=1, PORTSIZE_Sout_DataRdy=2,
    MEMORY_INIT_file="array.mem",
    n_elements=1,
    data_size=32,
    address_space_begin=0,
    address_space_rangesize=4,
    BUS_PIPELINED=1,
    PRIVATE_MEMORY=0,
    READ_ONLY_MEMORY=0,
    USE_SPARSE_MEMORY=1,
    ALIGNMENT=32,
    BITSIZE_proxy_in1=1, PORTSIZE_proxy_in1=2,
    BITSIZE_proxy_in2=1, PORTSIZE_proxy_in2=2,
    BITSIZE_proxy_in3=1, PORTSIZE_proxy_in3=2,
    BITSIZE_proxy_sel_LOAD=1, PORTSIZE_proxy_sel_LOAD=2,
    BITSIZE_proxy_sel_STORE=1, PORTSIZE_proxy_sel_STORE=2,
    BITSIZE_proxy_out1=1, PORTSIZE_proxy_out1=2;
  // IN
  input clock;
  input reset;
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  input [(PORTSIZE_in2*BITSIZE_in2)+(-1):0] in2;
  input [(PORTSIZE_in3*BITSIZE_in3)+(-1):0] in3;
  input [PORTSIZE_in4-1:0] in4;
  input [PORTSIZE_sel_LOAD-1:0] sel_LOAD;
  input [PORTSIZE_sel_STORE-1:0] sel_STORE;
  input [PORTSIZE_S_oe_ram-1:0] S_oe_ram;
  input [PORTSIZE_S_we_ram-1:0] S_we_ram;
  input [(PORTSIZE_S_addr_ram*BITSIZE_S_addr_ram)+(-1):0] S_addr_ram;
  input [(PORTSIZE_S_Wdata_ram*BITSIZE_S_Wdata_ram)+(-1):0] S_Wdata_ram;
  input [(PORTSIZE_Sin_Rdata_ram*BITSIZE_Sin_Rdata_ram)+(-1):0] Sin_Rdata_ram;
  input [(PORTSIZE_S_data_ram_size*BITSIZE_S_data_ram_size)+(-1):0] S_data_ram_size;
  input [PORTSIZE_Sin_DataRdy-1:0] Sin_DataRdy;
  input [(PORTSIZE_proxy_in1*BITSIZE_proxy_in1)+(-1):0] proxy_in1;
  input [(PORTSIZE_proxy_in2*BITSIZE_proxy_in2)+(-1):0] proxy_in2;
  input [(PORTSIZE_proxy_in3*BITSIZE_proxy_in3)+(-1):0] proxy_in3;
  input [PORTSIZE_proxy_sel_LOAD-1:0] proxy_sel_LOAD;
  input [PORTSIZE_proxy_sel_STORE-1:0] proxy_sel_STORE;
  // OUT
  output [(PORTSIZE_out1*BITSIZE_out1)+(-1):0] out1;
  output [(PORTSIZE_Sout_Rdata_ram*BITSIZE_Sout_Rdata_ram)+(-1):0] Sout_Rdata_ram;
  output [PORTSIZE_Sout_DataRdy-1:0] Sout_DataRdy;
  output [(PORTSIZE_proxy_out1*BITSIZE_proxy_out1)+(-1):0] proxy_out1;
  ARRAY_1D_STD_BRAM_NN_SDS_BASE #(.BITSIZE_in1(BITSIZE_in1), .PORTSIZE_in1(PORTSIZE_in1), .BITSIZE_in2(BITSIZE_in2), .PORTSIZE_in2(PORTSIZE_in2), .BITSIZE_in3(BITSIZE_in3), .PORTSIZE_in3(PORTSIZE_in3), .BITSIZE_sel_LOAD(BITSIZE_sel_LOAD), .PORTSIZE_sel_LOAD(PORTSIZE_sel_LOAD), .BITSIZE_sel_STORE(BITSIZE_sel_STORE), .PORTSIZE_sel_STORE(PORTSIZE_sel_STORE), .BITSIZE_S_oe_ram(BITSIZE_S_oe_ram), .PORTSIZE_S_oe_ram(PORTSIZE_S_oe_ram), .BITSIZE_S_we_ram(BITSIZE_S_we_ram), .PORTSIZE_S_we_ram(PORTSIZE_S_we_ram), .BITSIZE_out1(BITSIZE_out1), .PORTSIZE_out1(PORTSIZE_out1), .BITSIZE_S_addr_ram(BITSIZE_S_addr_ram), .PORTSIZE_S_addr_ram(PORTSIZE_S_addr_ram), .BITSIZE_S_Wdata_ram(BITSIZE_S_Wdata_ram), .PORTSIZE_S_Wdata_ram(PORTSIZE_S_Wdata_ram), .BITSIZE_Sin_Rdata_ram(BITSIZE_Sin_Rdata_ram), .PORTSIZE_Sin_Rdata_ram(PORTSIZE_Sin_Rdata_ram), .BITSIZE_Sout_Rdata_ram(BITSIZE_Sout_Rdata_ram), .PORTSIZE_Sout_Rdata_ram(PORTSIZE_Sout_Rdata_ram), .BITSIZE_S_data_ram_size(BITSIZE_S_data_ram_size), .PORTSIZE_S_data_ram_size(PORTSIZE_S_data_ram_size), .BITSIZE_Sin_DataRdy(BITSIZE_Sin_DataRdy), .PORTSIZE_Sin_DataRdy(PORTSIZE_Sin_DataRdy), .BITSIZE_Sout_DataRdy(BITSIZE_Sout_DataRdy), .PORTSIZE_Sout_DataRdy(PORTSIZE_Sout_DataRdy), .MEMORY_INIT_file(MEMORY_INIT_file), .n_elements(n_elements), .data_size(data_size), .address_space_begin(address_space_begin), .address_space_rangesize(address_space_rangesize), .BUS_PIPELINED(BUS_PIPELINED), .PRIVATE_MEMORY(PRIVATE_MEMORY), .READ_ONLY_MEMORY(READ_ONLY_MEMORY), .USE_SPARSE_MEMORY(USE_SPARSE_MEMORY), .HIGH_LATENCY(0), .ALIGNMENT(ALIGNMENT), .BITSIZE_proxy_in1(BITSIZE_proxy_in1), .PORTSIZE_proxy_in1(PORTSIZE_proxy_in1), .BITSIZE_proxy_in2(BITSIZE_proxy_in2), .PORTSIZE_proxy_in2(PORTSIZE_proxy_in2), .BITSIZE_proxy_in3(BITSIZE_proxy_in3), .PORTSIZE_proxy_in3(PORTSIZE_proxy_in3), .BITSIZE_proxy_sel_LOAD(BITSIZE_proxy_sel_LOAD), .PORTSIZE_proxy_sel_LOAD(PORTSIZE_proxy_sel_LOAD), .BITSIZE_proxy_sel_STORE(BITSIZE_proxy_sel_STORE), .PORTSIZE_proxy_sel_STORE(PORTSIZE_proxy_sel_STORE), .BITSIZE_proxy_out1(BITSIZE_proxy_out1), .PORTSIZE_proxy_out1(PORTSIZE_proxy_out1)) ARRAY_1D_STD_BRAM_NN_instance (.out1(out1), .Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .proxy_out1(proxy_out1), .clock(clock), .reset(reset), .in1(in1), .in2(in2), .in3(in3), .sel_LOAD(sel_LOAD & in4), .sel_STORE(sel_STORE & in4), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size ), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(proxy_in1), .proxy_in2(proxy_in2), .proxy_in3(proxy_in3), .proxy_sel_LOAD(proxy_sel_LOAD), .proxy_sel_STORE(proxy_sel_STORE));
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2021 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module addr_expr_FU(in1,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2021 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module UIdata_converter_FU(in1,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  generate
  if (BITSIZE_out1 <= BITSIZE_in1)
  begin
    assign out1 = in1[BITSIZE_out1-1:0];
  end
  else
  begin
    assign out1 = {{(BITSIZE_out1-BITSIZE_in1){1'b0}},in1};
  end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2021 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ASSIGN_SIGNED_FU(in1,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2021 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module IUdata_converter_FU(in1,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  generate
  if (BITSIZE_out1 <= BITSIZE_in1)
  begin
    assign out1 = in1[BITSIZE_out1-1:0];
  end
  else
  begin
    assign out1 = {{(BITSIZE_out1-BITSIZE_in1){in1[BITSIZE_in1-1]}},in1};
  end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2021 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module read_cond_FU(in1,
  out1);
  parameter BITSIZE_in1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output out1;
  assign out1 = in1 != {BITSIZE_in1{1'b0}};
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2021 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module rshift_expr_FU(in1,
  in2,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_in2=1,
    BITSIZE_out1=1,
    PRECISION=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  `ifndef _SIM_HAVE_CLOG2
    function integer log2;
       input integer value;
       integer temp_value;
      begin
        temp_value = value-1;
        for (log2=0; temp_value>0; log2=log2+1)
          temp_value = temp_value>>1;
      end
    endfunction
  `endif
  `ifdef _SIM_HAVE_CLOG2
    parameter arg2_bitsize = $clog2(PRECISION);
  `else
    parameter arg2_bitsize = log2(PRECISION);
  `endif
  generate
    if(BITSIZE_in2 > arg2_bitsize)
      assign out1 = in1 >>> (in2[arg2_bitsize-1:0]);
    else
      assign out1 = in1 >>> in2;
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2021 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_bit_ior_expr_FU(in1,
  in2,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_in2=1,
    BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 | in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2021 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_eq_expr_FU(in1,
  in2,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_in2=1,
    BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 == in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2021 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_lshift_expr_FU(in1,
  in2,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_in2=1,
    BITSIZE_out1=1,
    PRECISION=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  `ifndef _SIM_HAVE_CLOG2
    function integer log2;
       input integer value;
       integer temp_value;
      begin
        temp_value = value-1;
        for (log2=0; temp_value>0; log2=log2+1)
          temp_value = temp_value>>1;
      end
    endfunction
  `endif
  `ifdef _SIM_HAVE_CLOG2
    parameter arg2_bitsize = $clog2(PRECISION);
  `else
    parameter arg2_bitsize = log2(PRECISION);
  `endif
  generate
    if(BITSIZE_in2 > arg2_bitsize)
      assign out1 = in1 << in2[arg2_bitsize-1:0];
    else
      assign out1 = in1 << in2;
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2021 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_plus_expr_FU(in1,
  in2,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_in2=1,
    BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 + in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2021 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_pointer_plus_expr_FU(in1,
  in2,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_in2=1,
    BITSIZE_out1=1,
    LSB_PARAMETER=-1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  wire [BITSIZE_out1-1:0] in1_tmp;
  wire [BITSIZE_out1-1:0] in2_tmp;
  assign in1_tmp = in1;
  assign in2_tmp = in2;generate if (BITSIZE_out1 > LSB_PARAMETER) assign out1[BITSIZE_out1-1:LSB_PARAMETER] = (in1_tmp[BITSIZE_out1-1:LSB_PARAMETER] + in2_tmp[BITSIZE_out1-1:LSB_PARAMETER]); else assign out1 = 0; endgenerate
  generate if (LSB_PARAMETER != 0 && BITSIZE_out1 > LSB_PARAMETER) assign out1[LSB_PARAMETER-1:0] = 0; endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2021 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_rshift_expr_FU(in1,
  in2,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_in2=1,
    BITSIZE_out1=1,
    PRECISION=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  `ifndef _SIM_HAVE_CLOG2
    function integer log2;
       input integer value;
       integer temp_value;
      begin
        temp_value = value-1;
        for (log2=0; temp_value>0; log2=log2+1)
          temp_value = temp_value>>1;
      end
    endfunction
  `endif
  `ifdef _SIM_HAVE_CLOG2
    parameter arg2_bitsize = $clog2(PRECISION);
  `else
    parameter arg2_bitsize = log2(PRECISION);
  `endif
  generate
    if(BITSIZE_in2 > arg2_bitsize)
      assign out1 = in1 >> (in2[arg2_bitsize-1:0]);
    else
      assign out1 = in1 >> in2;
  endgenerate

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2021 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module mult_expr_FU(clock,
  in1,
  in2,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_in2=1,
    BITSIZE_out1=1,
    PIPE_PARAMETER=0;
  // IN
  input clock;
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  generate
    if(PIPE_PARAMETER==1)
    begin
      reg signed [BITSIZE_out1-1:0] out1_reg;
      assign out1 = out1_reg;
      always @(posedge clock)
      begin
        out1_reg <= in1 * in2;
      end
    end
    else if(PIPE_PARAMETER>1)
    begin
      reg signed [BITSIZE_in1-1:0] in1_in;
      reg signed [BITSIZE_in2-1:0] in2_in;
      wire signed [BITSIZE_out1-1:0] mult_res;
      reg signed [BITSIZE_out1-1:0] mul [PIPE_PARAMETER-2:0];
      integer i;
      assign mult_res = in1_in * in2_in;
      always @(posedge clock)
      begin
        in1_in <= in1;
        in2_in <= in2;
        mul[PIPE_PARAMETER-2] <= mult_res;
        for (i=0; i<PIPE_PARAMETER-2; i=i+1)
          mul[i] <= mul[i+1];
      end
      assign out1 = mul[0];
    end
    else
    begin
      assign out1 = in1 * in2;
    end
    endgenerate

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2021 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module widen_mult_expr_FU(clock,
  in1,
  in2,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_in2=1,
    BITSIZE_out1=1,
    PIPE_PARAMETER=0;
  // IN
  input clock;
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  mult_expr_FU #(.BITSIZE_in1(BITSIZE_in1), .BITSIZE_in2(BITSIZE_in2), .BITSIZE_out1(BITSIZE_out1), .PIPE_PARAMETER(PIPE_PARAMETER)) m1 (.out1(out1), .clock(clock), .in1(in1), .in2(in2));
endmodule

// Interface module for function: const_size_in_1_bambu_artificial_ParmMgr_Write_valid
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module const_size_in_1_bambu_artificial_ParmMgr_Write_valid_modgen(start_port,
  in1,
  in2,
  in3,
  _const_size_in_1,
  _const_size_in_1_vld);
  parameter BITSIZE_in1=3, PORTSIZE_in1=1,
    BITSIZE_in2=5, PORTSIZE_in2=1,
    BITSIZE_in3=32, PORTSIZE_in3=1;
  // IN
  input [0:0] start_port;
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  input [(PORTSIZE_in2*BITSIZE_in2)+(-1):0] in2;
  input [(PORTSIZE_in3*BITSIZE_in3)+(-1):0] in3;
  // OUT
  output [15:0] _const_size_in_1;
  output _const_size_in_1_vld;
  integer ii=0;
  reg [16-1:0] reg__const_size_in_1;
  assign _const_size_in_1 = reg__const_size_in_1;
  always @(*)
  begin
    reg__const_size_in_1 = 0;
    for(ii=0; ii<PORTSIZE_in1; ii=ii+1)
    begin
      reg__const_size_in_1 = (in1[(BITSIZE_in1)*ii+:BITSIZE_in1]>=16)?in2[(BITSIZE_in2)*ii+:BITSIZE_in2]:(reg__const_size_in_1^((((BITSIZE_in2>=16?in2[(BITSIZE_in2)*ii+:BITSIZE_in2]:{{(16<BITSIZE_in2 ? 1 : 16-BITSIZE_in2){1'b0}},in2[(BITSIZE_in2)*ii+:BITSIZE_in2]})<<in3[(BITSIZE_in3)*ii+:BITSIZE_in3]*8)^reg__const_size_in_1) & (((in1[(BITSIZE_in1)*ii+:BITSIZE_in1]+in3[(BITSIZE_in3)*ii+:BITSIZE_in3]*8)>16) ? ((({(16){1'b1}})>>(in3[(BITSIZE_in3)*ii+:BITSIZE_in3]*8))<<(in3[(BITSIZE_in3)*ii+:BITSIZE_in3]*8)) : ((((({(16){1'b1}})>>(in3[(BITSIZE_in3)*ii+:BITSIZE_in3]*8))<<(in3[(BITSIZE_in3)*ii+:BITSIZE_in3]*8))<<(16-in1[(BITSIZE_in1)*ii+:BITSIZE_in1]-in3[(BITSIZE_in3)*ii+:BITSIZE_in3]*8))>>(16-in1[(BITSIZE_in1)*ii+:BITSIZE_in1]-in3[(BITSIZE_in3)*ii+:BITSIZE_in3]*8)))));
    end
  end
  assign _const_size_in_1_vld = |start_port;
  

endmodule

// Interface module for function: const_size_out_1_bambu_artificial_ParmMgr_Write_valid
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module const_size_out_1_bambu_artificial_ParmMgr_Write_valid_modgen(start_port,
  in1,
  in2,
  in3,
  _const_size_out_1,
  _const_size_out_1_vld);
  parameter BITSIZE_in1=2, PORTSIZE_in1=1,
    BITSIZE_in2=3, PORTSIZE_in2=1,
    BITSIZE_in3=32, PORTSIZE_in3=1;
  // IN
  input [0:0] start_port;
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  input [(PORTSIZE_in2*BITSIZE_in2)+(-1):0] in2;
  input [(PORTSIZE_in3*BITSIZE_in3)+(-1):0] in3;
  // OUT
  output [15:0] _const_size_out_1;
  output _const_size_out_1_vld;
  integer ii=0;
  reg [16-1:0] reg__const_size_out_1;
  assign _const_size_out_1 = reg__const_size_out_1;
  always @(*)
  begin
    reg__const_size_out_1 = 0;
    for(ii=0; ii<PORTSIZE_in1; ii=ii+1)
    begin
      reg__const_size_out_1 = (in1[(BITSIZE_in1)*ii+:BITSIZE_in1]>=16)?in2[(BITSIZE_in2)*ii+:BITSIZE_in2]:(reg__const_size_out_1^((((BITSIZE_in2>=16?in2[(BITSIZE_in2)*ii+:BITSIZE_in2]:{{(16<BITSIZE_in2 ? 1 : 16-BITSIZE_in2){1'b0}},in2[(BITSIZE_in2)*ii+:BITSIZE_in2]})<<in3[(BITSIZE_in3)*ii+:BITSIZE_in3]*8)^reg__const_size_out_1) & (((in1[(BITSIZE_in1)*ii+:BITSIZE_in1]+in3[(BITSIZE_in3)*ii+:BITSIZE_in3]*8)>16) ? ((({(16){1'b1}})>>(in3[(BITSIZE_in3)*ii+:BITSIZE_in3]*8))<<(in3[(BITSIZE_in3)*ii+:BITSIZE_in3]*8)) : ((((({(16){1'b1}})>>(in3[(BITSIZE_in3)*ii+:BITSIZE_in3]*8))<<(in3[(BITSIZE_in3)*ii+:BITSIZE_in3]*8))<<(16-in1[(BITSIZE_in1)*ii+:BITSIZE_in1]-in3[(BITSIZE_in3)*ii+:BITSIZE_in3]*8))>>(16-in1[(BITSIZE_in1)*ii+:BITSIZE_in1]-in3[(BITSIZE_in3)*ii+:BITSIZE_in3]*8)))));
    end
  end
  assign _const_size_out_1_vld = |start_port;
  

endmodule

// Interface module for function: dense_1_input_bambu_artificial_ParmMgr
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module dense_1_input_bambu_artificial_ParmMgr_modgen(clock,
  reset,
  start_port,
  in1,
  in2,
  in3,
  in4,
  _dense_1_input_q0,
  _dense_1_input_q1,
  out1,
  _dense_1_input_address0,
  _dense_1_input_address1,
  _dense_1_input_ce0,
  _dense_1_input_ce1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2,
    BITSIZE_in2=6, PORTSIZE_in2=2,
    BITSIZE_in3=32, PORTSIZE_in3=2,
    BITSIZE_in4=32, PORTSIZE_in4=2,
    BITSIZE_out1=32, PORTSIZE_out1=2;
  // IN
  input clock;
  input reset;
  input [1:0] start_port;
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  input [(PORTSIZE_in2*BITSIZE_in2)+(-1):0] in2;
  input [(PORTSIZE_in3*BITSIZE_in3)+(-1):0] in3;
  input [(PORTSIZE_in4*BITSIZE_in4)+(-1):0] in4;
  input [15:0] _dense_1_input_q0;
  input [15:0] _dense_1_input_q1;
  // OUT
  output [(PORTSIZE_out1*BITSIZE_out1)+(-1):0] out1;
  output [3:0] _dense_1_input_address0;
  output [3:0] _dense_1_input_address1;
  output _dense_1_input_ce0;
  output _dense_1_input_ce1;
  //T
  integer ii=0;
  reg [4-1:0] _dense_1_input_address0;
  reg [4-1:0] _dense_1_input_address1;
  reg [(PORTSIZE_out1*BITSIZE_out1)+(-1):0] out1;
  reg [(PORTSIZE_in1*2)+(-1):0] in4_0;
  always @(*)
  begin
    for(ii=0; ii<PORTSIZE_in1; ii=ii+1)
      in4_0[2*ii+:2] = in4[(BITSIZE_in4)*ii+:2];
  end
  reg [(PORTSIZE_in1*2)+(-1):0] in4_reg;
  always @(posedge clock )
    if (reset == 1'b0)
      in4_reg <= 0;
    else
      for(ii=0; ii<PORTSIZE_in1; ii=ii+1)
        in4_reg[2*ii+:2] <= in4_0[2*ii+:2];
  always @(*)
  begin
    _dense_1_input_address0 = {4{1'b1}};
    _dense_1_input_address1 = {4{1'b1}};
    if(start_port[0])
    begin
      _dense_1_input_address0 = _dense_1_input_address0 & (in4[(BITSIZE_in4)*0+:6] / 4);
    end
    if(start_port[1])
    begin
      _dense_1_input_address1 = _dense_1_input_address1 & (in4[(BITSIZE_in4)*1+:6] / 4);
    end
  end
  assign _dense_1_input_ce0 = start_port[0];
  assign _dense_1_input_ce1 = start_port[1];
  always @(*)
  begin
    out1[(BITSIZE_out1)*0+:BITSIZE_out1] = _dense_1_input_q0 >> {in4_reg[2*0+:2],3'b0};
    out1[(BITSIZE_out1)*1+:BITSIZE_out1] = _dense_1_input_q1 >> {in4_reg[2*1+:2],3'b0};
  end
  

endmodule

// Interface module for function: layer2_out_bambu_artificial_ParmMgr
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module layer2_out_bambu_artificial_ParmMgr_modgen(clock,
  reset,
  start_port,
  in1,
  in2,
  in3,
  in4,
  out1,
  _layer2_out_address0,
  _layer2_out_address1,
  _layer2_out_ce0,
  _layer2_out_ce1,
  _layer2_out_we0,
  _layer2_out_we1,
  _layer2_out_d0,
  _layer2_out_d1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2,
    BITSIZE_in2=6, PORTSIZE_in2=2,
    BITSIZE_in3=32, PORTSIZE_in3=2,
    BITSIZE_in4=32, PORTSIZE_in4=2,
    BITSIZE_out1=32, PORTSIZE_out1=2;
  // IN
  input clock;
  input reset;
  input [1:0] start_port;
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  input [(PORTSIZE_in2*BITSIZE_in2)+(-1):0] in2;
  input [(PORTSIZE_in3*BITSIZE_in3)+(-1):0] in3;
  input [(PORTSIZE_in4*BITSIZE_in4)+(-1):0] in4;
  // OUT
  output [(PORTSIZE_out1*BITSIZE_out1)+(-1):0] out1;
  output [1:0] _layer2_out_address0;
  output [1:0] _layer2_out_address1;
  output _layer2_out_ce0;
  output _layer2_out_ce1;
  output _layer2_out_we0;
  output _layer2_out_we1;
  output [15:0] _layer2_out_d0;
  output [15:0] _layer2_out_d1;
  //T
  integer ii=0;
  reg [2-1:0] _layer2_out_address0;
  reg [2-1:0] _layer2_out_address1;
  reg [16-1:0] _layer2_out_d0;
  reg [16-1:0] _layer2_out_d1;
  reg [(PORTSIZE_in1*2)+(-1):0] in4_0;
  always @(*)
  begin
    for(ii=0; ii<PORTSIZE_in1; ii=ii+1)
      in4_0[2*ii+:2] = in4[(BITSIZE_in4)*ii+:2];
  end
  always @(*)
  begin
    _layer2_out_address0 = {2{1'b1}};
    _layer2_out_address1 = {2{1'b1}};
    if(start_port[0])
    begin
      _layer2_out_address0 = _layer2_out_address0 & (in4[(BITSIZE_in4)*0+:4] / 4);
    end
    if(start_port[1])
    begin
      _layer2_out_address1 = _layer2_out_address1 & (in4[(BITSIZE_in4)*1+:4] / 4);
    end
  end
  assign _layer2_out_ce0 = start_port[0];
  assign _layer2_out_ce1 = start_port[1];
  assign _layer2_out_we0 = (start_port[0]) & (|(in1[(BITSIZE_in1)*0+:BITSIZE_in1]));
  assign _layer2_out_we1 = (start_port[1]) & (|(in1[(BITSIZE_in1)*1+:BITSIZE_in1]));
  always @(*)
  begin
    _layer2_out_d0 = 0;
    _layer2_out_d1 = 0;
      if(start_port[0])
        _layer2_out_d0 = (in2[(BITSIZE_in2)*0+:BITSIZE_in2]>=16)?in3[(BITSIZE_in3)*0+:BITSIZE_in3]:(_layer2_out_d0^((((BITSIZE_in3>16?in3[(BITSIZE_in3)*0+:BITSIZE_in3]:{{(16< BITSIZE_in3 ? 1 : 16-BITSIZE_in3){1'b0}},in3[(BITSIZE_in3)*0+:BITSIZE_in3]})<<{in4_0[2*0+:2],3'b0})^_layer2_out_d0) & (((in2[(BITSIZE_in2)*0+:BITSIZE_in2]+{in4_0[2*0+:2],3'b0})>16) ? ((({(16){1'b1}})>>({in4_0[2*0+:2],3'b0}))<<({in4_0[2*0+:2],3'b0})) : ((((({(16){1'b1}})>>({in4_0[2*0+:2],3'b0}))<<({in4_0[2*0+:2],3'b0}))<<(16-in2[(BITSIZE_in2)*0+:BITSIZE_in2]-{in4_0[2*0+:2],3'b0}))>>(16-in2[(BITSIZE_in2)*0+:BITSIZE_in2]-{in4_0[2*0+:2],3'b0})))));
      if(start_port[1])
        _layer2_out_d1 = (in2[(BITSIZE_in2)*1+:BITSIZE_in2]>=16)?in3[(BITSIZE_in3)*1+:BITSIZE_in3]:(_layer2_out_d1^((((BITSIZE_in3>16?in3[(BITSIZE_in3)*1+:BITSIZE_in3]:{{(16< BITSIZE_in3 ? 1 : 16-BITSIZE_in3){1'b0}},in3[(BITSIZE_in3)*1+:BITSIZE_in3]})<<{in4_0[2*1+:2],3'b0})^_layer2_out_d1) & (((in2[(BITSIZE_in2)*1+:BITSIZE_in2]+{in4_0[2*1+:2],3'b0})>16) ? ((({(16){1'b1}})>>({in4_0[2*1+:2],3'b0}))<<({in4_0[2*1+:2],3'b0})) : ((((({(16){1'b1}})>>({in4_0[2*1+:2],3'b0}))<<({in4_0[2*1+:2],3'b0}))<<(16-in2[(BITSIZE_in2)*1+:BITSIZE_in2]-{in4_0[2*1+:2],3'b0}))>>(16-in2[(BITSIZE_in2)*1+:BITSIZE_in2]-{in4_0[2*1+:2],3'b0})))));
  end
  

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2021 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ASSIGN_UNSIGNED_FU(in1,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2021 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ASSIGN_VECTOR_BOOL_FU(in1,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2021 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module UUdata_converter_FU(in1,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  generate
  if (BITSIZE_out1 <= BITSIZE_in1)
  begin
    assign out1 = in1[BITSIZE_out1-1:0];
  end
  else
  begin
    assign out1 = {{(BITSIZE_out1-BITSIZE_in1){1'b0}},in1};
  end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2021 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>, Christian Pilato <christian.pilato@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module MUX_GATE(sel,
  in1,
  in2,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_in2=1,
    BITSIZE_out1=1;
  // IN
  input sel;
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = sel ? in1 : in2;
endmodule

// Datapath RTL description for myproject
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_myproject(clock,
  reset,
  in_port_dense_1_input,
  in_port_layer2_out,
  in_port_const_size_in_1,
  in_port_const_size_out_1,
  _const_size_in_1,
  _const_size_in_1_vld,
  _const_size_out_1,
  _const_size_out_1_vld,
  _dense_1_input_q0,
  _dense_1_input_q1,
  _dense_1_input_address0,
  _dense_1_input_address1,
  _dense_1_input_ce0,
  _dense_1_input_ce1,
  _layer2_out_address0,
  _layer2_out_address1,
  _layer2_out_ce0,
  _layer2_out_ce1,
  _layer2_out_we0,
  _layer2_out_we1,
  _layer2_out_d0,
  _layer2_out_d1,
  fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_LOAD,
  fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_STORE,
  fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_LOAD,
  fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_STORE,
  fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD,
  fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE,
  fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD,
  fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE,
  fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_LOAD,
  fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_STORE,
  fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_LOAD,
  fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_STORE,
  selector_IN_UNBOUNDED_myproject_422558_423458,
  selector_IN_UNBOUNDED_myproject_422558_423472,
  selector_IN_UNBOUNDED_myproject_422558_423475,
  selector_IN_UNBOUNDED_myproject_422558_423478,
  selector_IN_UNBOUNDED_myproject_422558_423481,
  selector_IN_UNBOUNDED_myproject_422558_423495,
  selector_IN_UNBOUNDED_myproject_422558_423508,
  selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_0_0_0,
  selector_MUX_103_reg_4_0_0_0,
  selector_MUX_104_reg_5_0_0_0,
  selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_0,
  selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_1,
  selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_1_0,
  selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_0_0_0,
  selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_0,
  selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_1,
  selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_1_0,
  selector_MUX_64_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_2_0_0,
  selector_MUX_65_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_3_0_0,
  selector_MUX_68_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_2_0_0,
  selector_MUX_69_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_3_0_0,
  selector_MUX_73_reg_1_0_0_0,
  selector_MUX_75_reg_11_0_0_0,
  selector_MUX_84_reg_2_0_0_0,
  selector_MUX_95_reg_3_0_0_0,
  wrenable_reg_0,
  wrenable_reg_1,
  wrenable_reg_10,
  wrenable_reg_11,
  wrenable_reg_12,
  wrenable_reg_13,
  wrenable_reg_14,
  wrenable_reg_15,
  wrenable_reg_16,
  wrenable_reg_17,
  wrenable_reg_18,
  wrenable_reg_19,
  wrenable_reg_2,
  wrenable_reg_20,
  wrenable_reg_21,
  wrenable_reg_22,
  wrenable_reg_23,
  wrenable_reg_24,
  wrenable_reg_25,
  wrenable_reg_26,
  wrenable_reg_27,
  wrenable_reg_28,
  wrenable_reg_29,
  wrenable_reg_3,
  wrenable_reg_30,
  wrenable_reg_31,
  wrenable_reg_32,
  wrenable_reg_33,
  wrenable_reg_34,
  wrenable_reg_35,
  wrenable_reg_36,
  wrenable_reg_4,
  wrenable_reg_5,
  wrenable_reg_6,
  wrenable_reg_7,
  wrenable_reg_8,
  wrenable_reg_9,
  OUT_CONDITION_myproject_422558_422705,
  OUT_CONDITION_myproject_422558_423160,
  OUT_UNBOUNDED_myproject_422558_423458,
  OUT_UNBOUNDED_myproject_422558_423472,
  OUT_UNBOUNDED_myproject_422558_423475,
  OUT_UNBOUNDED_myproject_422558_423478,
  OUT_UNBOUNDED_myproject_422558_423481,
  OUT_UNBOUNDED_myproject_422558_423495,
  OUT_UNBOUNDED_myproject_422558_423508);
  parameter MEM_var_422751_422558=256,
    MEM_var_423023_422558=256;
  // IN
  input clock;
  input reset;
  input [31:0] in_port_dense_1_input;
  input [31:0] in_port_layer2_out;
  input [31:0] in_port_const_size_in_1;
  input [31:0] in_port_const_size_out_1;
  input [15:0] _dense_1_input_q0;
  input [15:0] _dense_1_input_q1;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_STORE;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_LOAD;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_STORE;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_LOAD;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_STORE;
  input selector_IN_UNBOUNDED_myproject_422558_423458;
  input selector_IN_UNBOUNDED_myproject_422558_423472;
  input selector_IN_UNBOUNDED_myproject_422558_423475;
  input selector_IN_UNBOUNDED_myproject_422558_423478;
  input selector_IN_UNBOUNDED_myproject_422558_423481;
  input selector_IN_UNBOUNDED_myproject_422558_423495;
  input selector_IN_UNBOUNDED_myproject_422558_423508;
  input selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_0_0_0;
  input selector_MUX_103_reg_4_0_0_0;
  input selector_MUX_104_reg_5_0_0_0;
  input selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_0;
  input selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_1;
  input selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_1_0;
  input selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_0_0_0;
  input selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_0;
  input selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_1;
  input selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_1_0;
  input selector_MUX_64_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_2_0_0;
  input selector_MUX_65_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_3_0_0;
  input selector_MUX_68_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_2_0_0;
  input selector_MUX_69_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_3_0_0;
  input selector_MUX_73_reg_1_0_0_0;
  input selector_MUX_75_reg_11_0_0_0;
  input selector_MUX_84_reg_2_0_0_0;
  input selector_MUX_95_reg_3_0_0_0;
  input wrenable_reg_0;
  input wrenable_reg_1;
  input wrenable_reg_10;
  input wrenable_reg_11;
  input wrenable_reg_12;
  input wrenable_reg_13;
  input wrenable_reg_14;
  input wrenable_reg_15;
  input wrenable_reg_16;
  input wrenable_reg_17;
  input wrenable_reg_18;
  input wrenable_reg_19;
  input wrenable_reg_2;
  input wrenable_reg_20;
  input wrenable_reg_21;
  input wrenable_reg_22;
  input wrenable_reg_23;
  input wrenable_reg_24;
  input wrenable_reg_25;
  input wrenable_reg_26;
  input wrenable_reg_27;
  input wrenable_reg_28;
  input wrenable_reg_29;
  input wrenable_reg_3;
  input wrenable_reg_30;
  input wrenable_reg_31;
  input wrenable_reg_32;
  input wrenable_reg_33;
  input wrenable_reg_34;
  input wrenable_reg_35;
  input wrenable_reg_36;
  input wrenable_reg_4;
  input wrenable_reg_5;
  input wrenable_reg_6;
  input wrenable_reg_7;
  input wrenable_reg_8;
  input wrenable_reg_9;
  // OUT
  output [15:0] _const_size_in_1;
  output _const_size_in_1_vld;
  output [15:0] _const_size_out_1;
  output _const_size_out_1_vld;
  output [3:0] _dense_1_input_address0;
  output [3:0] _dense_1_input_address1;
  output _dense_1_input_ce0;
  output _dense_1_input_ce1;
  output [1:0] _layer2_out_address0;
  output [1:0] _layer2_out_address1;
  output _layer2_out_ce0;
  output _layer2_out_ce1;
  output _layer2_out_we0;
  output _layer2_out_we1;
  output [15:0] _layer2_out_d0;
  output [15:0] _layer2_out_d1;
  output OUT_CONDITION_myproject_422558_422705;
  output OUT_CONDITION_myproject_422558_423160;
  output OUT_UNBOUNDED_myproject_422558_423458;
  output OUT_UNBOUNDED_myproject_422558_423472;
  output OUT_UNBOUNDED_myproject_422558_423475;
  output OUT_UNBOUNDED_myproject_422558_423478;
  output OUT_UNBOUNDED_myproject_422558_423481;
  output OUT_UNBOUNDED_myproject_422558_423495;
  output OUT_UNBOUNDED_myproject_422558_423508;
  // Component and signal declarations
  wire null_out_signal_array_422751_0_Sout_DataRdy_0;
  wire null_out_signal_array_422751_0_Sout_DataRdy_1;
  wire [31:0] null_out_signal_array_422751_0_Sout_Rdata_ram_0;
  wire [31:0] null_out_signal_array_422751_0_Sout_Rdata_ram_1;
  wire [31:0] null_out_signal_array_422751_0_proxy_out1_0;
  wire [31:0] null_out_signal_array_422751_0_proxy_out1_1;
  wire null_out_signal_array_422751_1_Sout_DataRdy_0;
  wire null_out_signal_array_422751_1_Sout_DataRdy_1;
  wire [31:0] null_out_signal_array_422751_1_Sout_Rdata_ram_0;
  wire [31:0] null_out_signal_array_422751_1_Sout_Rdata_ram_1;
  wire [31:0] null_out_signal_array_422751_1_proxy_out1_0;
  wire [31:0] null_out_signal_array_422751_1_proxy_out1_1;
  wire null_out_signal_array_423023_0_Sout_DataRdy_0;
  wire null_out_signal_array_423023_0_Sout_DataRdy_1;
  wire [31:0] null_out_signal_array_423023_0_Sout_Rdata_ram_0;
  wire [31:0] null_out_signal_array_423023_0_Sout_Rdata_ram_1;
  wire [31:0] null_out_signal_array_423023_0_proxy_out1_0;
  wire [31:0] null_out_signal_array_423023_0_proxy_out1_1;
  wire [31:0] null_out_signal_fu_myproject_422558_423458_out1_1;
  wire [31:0] null_out_signal_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_out1_0;
  wire [31:0] null_out_signal_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_out1_1;
  wire [31:0] out_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_array_423023_0;
  wire [31:0] out_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_array_423023_0;
  wire [31:0] out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_array_422751_0;
  wire [31:0] out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_array_422751_0;
  wire [31:0] out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_array_422751_1;
  wire [31:0] out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_array_422751_1;
  wire signed [15:0] out_ASSIGN_SIGNED_FU_11_i0_fu_myproject_422558_423515;
  wire signed [15:0] out_ASSIGN_SIGNED_FU_12_i0_fu_myproject_422558_423513;
  wire signed [15:0] out_ASSIGN_SIGNED_FU_13_i0_fu_myproject_422558_423511;
  wire [25:0] out_IUdata_converter_FU_15_i0_fu_myproject_422558_423306;
  wire [31:0] out_IUdata_converter_FU_17_i0_fu_myproject_422558_423313;
  wire [25:0] out_IUdata_converter_FU_19_i0_fu_myproject_422558_423325;
  wire [31:0] out_IUdata_converter_FU_21_i0_fu_myproject_422558_423332;
  wire [25:0] out_IUdata_converter_FU_23_i0_fu_myproject_422558_423344;
  wire [31:0] out_IUdata_converter_FU_25_i0_fu_myproject_422558_423351;
  wire [25:0] out_IUdata_converter_FU_27_i0_fu_myproject_422558_423363;
  wire [31:0] out_IUdata_converter_FU_29_i0_fu_myproject_422558_423370;
  wire [31:0] out_IUdata_converter_FU_41_i0_fu_myproject_422558_423280;
  wire [31:0] out_IUdata_converter_FU_42_i0_fu_myproject_422558_423283;
  wire [31:0] out_IUdata_converter_FU_43_i0_fu_myproject_422558_423286;
  wire [31:0] out_IUdata_converter_FU_44_i0_fu_myproject_422558_423289;
  wire [31:0] out_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_0_0_0;
  wire [31:0] out_MUX_103_reg_4_0_0_0;
  wire [31:0] out_MUX_104_reg_5_0_0_0;
  wire [8:0] out_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_0;
  wire [8:0] out_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_1;
  wire [8:0] out_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_1_0;
  wire [31:0] out_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_0_0_0;
  wire [8:0] out_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_0;
  wire [8:0] out_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_1;
  wire [8:0] out_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_1_0;
  wire [31:0] out_MUX_64_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_2_0_0;
  wire [31:0] out_MUX_65_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_3_0_0;
  wire [31:0] out_MUX_68_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_2_0_0;
  wire [31:0] out_MUX_69_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_3_0_0;
  wire [31:0] out_MUX_73_reg_1_0_0_0;
  wire [31:0] out_MUX_75_reg_11_0_0_0;
  wire [31:0] out_MUX_84_reg_2_0_0_0;
  wire [31:0] out_MUX_95_reg_3_0_0_0;
  wire signed [31:0] out_UIdata_converter_FU_10_i0_fu_myproject_422558_423294;
  wire signed [31:0] out_UIdata_converter_FU_14_i0_fu_myproject_422558_423302;
  wire signed [31:0] out_UIdata_converter_FU_16_i0_fu_myproject_422558_423309;
  wire signed [31:0] out_UIdata_converter_FU_18_i0_fu_myproject_422558_423321;
  wire signed [31:0] out_UIdata_converter_FU_20_i0_fu_myproject_422558_423328;
  wire signed [31:0] out_UIdata_converter_FU_22_i0_fu_myproject_422558_423340;
  wire signed [31:0] out_UIdata_converter_FU_24_i0_fu_myproject_422558_423347;
  wire signed [31:0] out_UIdata_converter_FU_26_i0_fu_myproject_422558_423359;
  wire signed [31:0] out_UIdata_converter_FU_28_i0_fu_myproject_422558_423366;
  wire signed [31:0] out_UIdata_converter_FU_37_i0_fu_myproject_422558_423392;
  wire signed [31:0] out_UIdata_converter_FU_38_i0_fu_myproject_422558_423397;
  wire signed [31:0] out_UIdata_converter_FU_39_i0_fu_myproject_422558_423402;
  wire signed [31:0] out_UIdata_converter_FU_40_i0_fu_myproject_422558_423407;
  wire [8:0] out_addr_expr_FU_32_i0_fu_myproject_422558_423297;
  wire [8:0] out_addr_expr_FU_4_i0_fu_myproject_422558_423029;
  wire out_const_0;
  wire [6:0] out_const_1;
  wire [3:0] out_const_10;
  wire [8:0] out_const_11;
  wire [8:0] out_const_12;
  wire out_const_2;
  wire [1:0] out_const_3;
  wire [2:0] out_const_4;
  wire [3:0] out_const_5;
  wire [4:0] out_const_6;
  wire [5:0] out_const_7;
  wire [3:0] out_const_8;
  wire [1:0] out_const_9;
  wire [15:0] out_conv_out_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_array_423023_0_32_16;
  wire [15:0] out_conv_out_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_array_423023_0_32_16;
  wire [15:0] out_conv_out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_array_422751_0_32_16;
  wire [15:0] out_conv_out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_array_422751_0_32_16;
  wire [15:0] out_conv_out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_array_422751_1_32_16;
  wire [15:0] out_conv_out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_array_422751_1_32_16;
  wire [15:0] out_conv_out_MUX_103_reg_4_0_0_0_32_16;
  wire [15:0] out_conv_out_MUX_73_reg_1_0_0_0_32_16;
  wire [15:0] out_conv_out_MUX_84_reg_2_0_0_0_32_16;
  wire [15:0] out_conv_out_MUX_95_reg_3_0_0_0_32_16;
  wire [31:0] out_conv_out_const_0_1_32;
  wire [31:0] out_conv_out_const_11_9_32;
  wire [31:0] out_conv_out_const_12_9_32;
  wire [5:0] out_conv_out_const_1_7_6;
  wire [15:0] out_conv_out_dense_1_input_bambu_artificial_ParmMgr_modgen_67_i0_fu_myproject_422558_423458_32_16;
  wire [31:0] out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_0_1_32;
  wire [31:0] out_conv_out_u_assign_conn_obj_10_ASSIGN_UNSIGNED_FU_u_assign_1_1_32;
  wire [31:0] out_conv_out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_3_1_32;
  wire [31:0] out_conv_out_u_assign_conn_obj_13_ASSIGN_UNSIGNED_FU_u_assign_4_1_32;
  wire [31:0] out_conv_out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_6_1_32;
  wire [31:0] out_conv_out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_8_1_32;
  wire [31:0] out_dense_1_input_bambu_artificial_ParmMgr_modgen_67_i0_fu_myproject_422558_423458;
  wire out_read_cond_FU_30_i0_fu_myproject_422558_422705;
  wire out_read_cond_FU_45_i0_fu_myproject_422558_423160;
  wire [8:0] out_reg_0_reg_0;
  wire [31:0] out_reg_10_reg_10;
  wire [31:0] out_reg_11_reg_11;
  wire [8:0] out_reg_12_reg_12;
  wire [8:0] out_reg_13_reg_13;
  wire [8:0] out_reg_14_reg_14;
  wire [8:0] out_reg_15_reg_15;
  wire [8:0] out_reg_16_reg_16;
  wire [8:0] out_reg_17_reg_17;
  wire [8:0] out_reg_18_reg_18;
  wire [8:0] out_reg_19_reg_19;
  wire [15:0] out_reg_1_reg_1;
  wire [8:0] out_reg_20_reg_20;
  wire out_reg_21_reg_21;
  wire [15:0] out_reg_22_reg_22;
  wire [15:0] out_reg_23_reg_23;
  wire [15:0] out_reg_24_reg_24;
  wire [15:0] out_reg_25_reg_25;
  wire [15:0] out_reg_26_reg_26;
  wire [15:0] out_reg_27_reg_27;
  wire [15:0] out_reg_28_reg_28;
  wire [15:0] out_reg_29_reg_29;
  wire [15:0] out_reg_2_reg_2;
  wire [31:0] out_reg_30_reg_30;
  wire [31:0] out_reg_31_reg_31;
  wire [8:0] out_reg_32_reg_32;
  wire [8:0] out_reg_33_reg_33;
  wire out_reg_34_reg_34;
  wire [31:0] out_reg_35_reg_35;
  wire [31:0] out_reg_36_reg_36;
  wire [15:0] out_reg_3_reg_3;
  wire [15:0] out_reg_4_reg_4;
  wire [31:0] out_reg_5_reg_5;
  wire [31:0] out_reg_6_reg_6;
  wire [31:0] out_reg_7_reg_7;
  wire [31:0] out_reg_8_reg_8;
  wire [31:0] out_reg_9_reg_9;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_47_i0_fu_myproject_422558_422659;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_47_i10_fu_myproject_422558_423145;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_47_i11_fu_myproject_422558_423151;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_47_i12_fu_myproject_422558_423157;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_47_i1_fu_myproject_422558_422663;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_47_i2_fu_myproject_422558_422667;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_47_i3_fu_myproject_422558_422674;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_47_i4_fu_myproject_422558_422678;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_47_i5_fu_myproject_422558_422685;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_47_i6_fu_myproject_422558_422689;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_47_i7_fu_myproject_422558_422696;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_47_i8_fu_myproject_422558_422700;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_47_i9_fu_myproject_422558_423139;
  wire [0:0] out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_0;
  wire [0:0] out_u_assign_conn_obj_10_ASSIGN_UNSIGNED_FU_u_assign_1;
  wire [31:0] out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_2;
  wire [0:0] out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_3;
  wire [0:0] out_u_assign_conn_obj_13_ASSIGN_UNSIGNED_FU_u_assign_4;
  wire [31:0] out_u_assign_conn_obj_5_ASSIGN_UNSIGNED_FU_u_assign_5;
  wire [0:0] out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_6;
  wire [31:0] out_u_assign_conn_obj_7_ASSIGN_UNSIGNED_FU_u_assign_7;
  wire [0:0] out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_8;
  wire [31:0] out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_9;
  wire [6:0] out_ui_bit_ior_expr_FU_8_0_8_48_i0_fu_myproject_422558_422670;
  wire [6:0] out_ui_bit_ior_expr_FU_8_0_8_48_i1_fu_myproject_422558_423140;
  wire [6:0] out_ui_bit_ior_expr_FU_8_0_8_49_i0_fu_myproject_422558_422681;
  wire [6:0] out_ui_bit_ior_expr_FU_8_0_8_49_i1_fu_myproject_422558_423146;
  wire [6:0] out_ui_bit_ior_expr_FU_8_0_8_50_i0_fu_myproject_422558_422692;
  wire [6:0] out_ui_bit_ior_expr_FU_8_0_8_50_i1_fu_myproject_422558_423152;
  wire out_ui_eq_expr_FU_32_0_32_51_i0_fu_myproject_422558_423376;
  wire out_ui_eq_expr_FU_32_0_32_51_i1_fu_myproject_422558_423409;
  wire [8:0] out_ui_lshift_expr_FU_16_0_16_52_i0_fu_myproject_422558_423299;
  wire [8:0] out_ui_lshift_expr_FU_16_0_16_52_i1_fu_myproject_422558_423318;
  wire [8:0] out_ui_lshift_expr_FU_16_0_16_52_i2_fu_myproject_422558_423337;
  wire [8:0] out_ui_lshift_expr_FU_16_0_16_52_i3_fu_myproject_422558_423356;
  wire [8:0] out_ui_lshift_expr_FU_16_0_16_52_i4_fu_myproject_422558_423389;
  wire [8:0] out_ui_lshift_expr_FU_16_0_16_52_i5_fu_myproject_422558_423394;
  wire [8:0] out_ui_lshift_expr_FU_16_0_16_52_i6_fu_myproject_422558_423399;
  wire [8:0] out_ui_lshift_expr_FU_16_0_16_52_i7_fu_myproject_422558_423404;
  wire [6:0] out_ui_lshift_expr_FU_32_0_32_53_i0_fu_myproject_422558_422657;
  wire [6:0] out_ui_lshift_expr_FU_32_0_32_53_i1_fu_myproject_422558_423134;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_54_i0_fu_myproject_422558_422658;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_54_i10_fu_myproject_422558_423144;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_54_i11_fu_myproject_422558_423150;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_54_i12_fu_myproject_422558_423156;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_54_i1_fu_myproject_422558_422662;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_54_i2_fu_myproject_422558_422666;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_54_i3_fu_myproject_422558_422673;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_54_i4_fu_myproject_422558_422677;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_54_i5_fu_myproject_422558_422684;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_54_i6_fu_myproject_422558_422688;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_54_i7_fu_myproject_422558_422695;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_54_i8_fu_myproject_422558_422699;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_54_i9_fu_myproject_422558_423138;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_55_i0_fu_myproject_422558_423291;
  wire [15:0] out_ui_plus_expr_FU_16_16_16_56_i0_fu_myproject_422558_423137;
  wire [15:0] out_ui_plus_expr_FU_16_16_16_56_i1_fu_myproject_422558_423143;
  wire [15:0] out_ui_plus_expr_FU_16_16_16_56_i2_fu_myproject_422558_423149;
  wire [15:0] out_ui_plus_expr_FU_16_16_16_56_i3_fu_myproject_422558_423155;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_57_i0_fu_myproject_422558_422703;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_57_i1_fu_myproject_422558_423158;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_0_32_58_i0_fu_myproject_422558_423235;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_0_32_59_i0_fu_myproject_422558_423237;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_0_32_60_i0_fu_myproject_422558_423239;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_61_i0_fu_myproject_422558_422655;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_62_i0_fu_myproject_422558_422660;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_62_i10_fu_myproject_422558_423147;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_62_i11_fu_myproject_422558_423153;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_62_i1_fu_myproject_422558_422668;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_62_i2_fu_myproject_422558_422671;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_62_i3_fu_myproject_422558_422679;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_62_i4_fu_myproject_422558_422682;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_62_i5_fu_myproject_422558_422690;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_62_i6_fu_myproject_422558_422693;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_62_i7_fu_myproject_422558_422701;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_62_i8_fu_myproject_422558_423135;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_62_i9_fu_myproject_422558_423141;
  wire [15:0] out_ui_rshift_expr_FU_32_0_32_63_i0_fu_myproject_422558_422665;
  wire [15:0] out_ui_rshift_expr_FU_32_0_32_63_i1_fu_myproject_422558_422676;
  wire [15:0] out_ui_rshift_expr_FU_32_0_32_63_i2_fu_myproject_422558_422687;
  wire [15:0] out_ui_rshift_expr_FU_32_0_32_63_i3_fu_myproject_422558_422698;
  wire [31:0] out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_10;
  wire [31:0] out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_11;
  wire [31:0] out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_12;
  wire [31:0] out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_13;
  wire signed [31:0] out_widen_mult_expr_FU_16_16_32_0_64_i0_fu_myproject_422558_422664;
  wire signed [31:0] out_widen_mult_expr_FU_16_16_32_0_64_i1_fu_myproject_422558_422675;
  wire signed [31:0] out_widen_mult_expr_FU_16_16_32_0_64_i2_fu_myproject_422558_422686;
  wire signed [31:0] out_widen_mult_expr_FU_16_16_32_0_64_i3_fu_myproject_422558_422697;
  wire s_start_port0;
  wire s_start_port1;
  
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1),
    .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_0 (.out1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_0),
    .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1),
    .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_1 (.out1(out_u_assign_conn_obj_10_ASSIGN_UNSIGNED_FU_u_assign_1),
    .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) ASSIGN_UNSIGNED_FU_u_assign_2 (.out1(out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_2),
    .in1(out_IUdata_converter_FU_44_i0_fu_myproject_422558_423289));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1),
    .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_3 (.out1(out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_3),
    .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1),
    .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_4 (.out1(out_u_assign_conn_obj_13_ASSIGN_UNSIGNED_FU_u_assign_4),
    .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) ASSIGN_UNSIGNED_FU_u_assign_5 (.out1(out_u_assign_conn_obj_5_ASSIGN_UNSIGNED_FU_u_assign_5),
    .in1(out_IUdata_converter_FU_41_i0_fu_myproject_422558_423280));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1),
    .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_6 (.out1(out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_6),
    .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) ASSIGN_UNSIGNED_FU_u_assign_7 (.out1(out_u_assign_conn_obj_7_ASSIGN_UNSIGNED_FU_u_assign_7),
    .in1(out_IUdata_converter_FU_42_i0_fu_myproject_422558_423283));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1),
    .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_8 (.out1(out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_8),
    .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) ASSIGN_UNSIGNED_FU_u_assign_9 (.out1(out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_9),
    .in1(out_IUdata_converter_FU_43_i0_fu_myproject_422558_423286));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) ASSIGN_VECTOR_BOOL_FU_vb_assign_10 (.out1(out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_10),
    .in1(out_IUdata_converter_FU_17_i0_fu_myproject_422558_423313));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) ASSIGN_VECTOR_BOOL_FU_vb_assign_11 (.out1(out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_11),
    .in1(out_IUdata_converter_FU_21_i0_fu_myproject_422558_423332));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) ASSIGN_VECTOR_BOOL_FU_vb_assign_12 (.out1(out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_12),
    .in1(out_reg_30_reg_30));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) ASSIGN_VECTOR_BOOL_FU_vb_assign_13 (.out1(out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_13),
    .in1(out_reg_31_reg_31));
  MUX_GATE #(.BITSIZE_in1(32),
    .BITSIZE_in2(32),
    .BITSIZE_out1(32)) MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_0_0_0 (.out1(out_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_0_0_0),
    .sel(selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_0_0_0),
    .in1(out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_10),
    .in2(out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_12));
  MUX_GATE #(.BITSIZE_in1(32),
    .BITSIZE_in2(32),
    .BITSIZE_out1(32)) MUX_103_reg_4_0_0_0 (.out1(out_MUX_103_reg_4_0_0_0),
    .sel(selector_MUX_103_reg_4_0_0_0),
    .in1(out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_2),
    .in2(out_conv_out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_3_1_32));
  MUX_GATE #(.BITSIZE_in1(32),
    .BITSIZE_in2(32),
    .BITSIZE_out1(32)) MUX_104_reg_5_0_0_0 (.out1(out_MUX_104_reg_5_0_0_0),
    .sel(selector_MUX_104_reg_5_0_0_0),
    .in1(out_conv_out_u_assign_conn_obj_13_ASSIGN_UNSIGNED_FU_u_assign_4_1_32),
    .in2(out_ui_plus_expr_FU_32_0_32_57_i1_fu_myproject_422558_423158));
  MUX_GATE #(.BITSIZE_in1(9),
    .BITSIZE_in2(9),
    .BITSIZE_out1(9)) MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_0 (.out1(out_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_0),
    .sel(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_0),
    .in1(out_reg_32_reg_32),
    .in2(out_reg_18_reg_18));
  MUX_GATE #(.BITSIZE_in1(9),
    .BITSIZE_in2(9),
    .BITSIZE_out1(9)) MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_1 (.out1(out_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_1),
    .sel(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_1),
    .in1(out_reg_14_reg_14),
    .in2(out_ui_pointer_plus_expr_FU_8_8_8_62_i8_fu_myproject_422558_423135));
  MUX_GATE #(.BITSIZE_in1(9),
    .BITSIZE_in2(9),
    .BITSIZE_out1(9)) MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_1_0 (.out1(out_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_1_0),
    .sel(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_1_0),
    .in1(out_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_0),
    .in2(out_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_1));
  MUX_GATE #(.BITSIZE_in1(32),
    .BITSIZE_in2(32),
    .BITSIZE_out1(32)) MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_0_0_0 (.out1(out_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_0_0_0),
    .sel(selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_0_0_0),
    .in1(out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_11),
    .in2(out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_13));
  MUX_GATE #(.BITSIZE_in1(9),
    .BITSIZE_in2(9),
    .BITSIZE_out1(9)) MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_0 (.out1(out_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_0),
    .sel(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_0),
    .in1(out_reg_33_reg_33),
    .in2(out_reg_20_reg_20));
  MUX_GATE #(.BITSIZE_in1(9),
    .BITSIZE_in2(9),
    .BITSIZE_out1(9)) MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_1 (.out1(out_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_1),
    .sel(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_1),
    .in1(out_reg_16_reg_16),
    .in2(out_ui_pointer_plus_expr_FU_8_8_8_62_i9_fu_myproject_422558_423141));
  MUX_GATE #(.BITSIZE_in1(9),
    .BITSIZE_in2(9),
    .BITSIZE_out1(9)) MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_1_0 (.out1(out_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_1_0),
    .sel(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_1_0),
    .in1(out_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_0),
    .in2(out_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_1));
  MUX_GATE #(.BITSIZE_in1(32),
    .BITSIZE_in2(32),
    .BITSIZE_out1(32)) MUX_64_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_2_0_0 (.out1(out_MUX_64_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_2_0_0),
    .sel(selector_MUX_64_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_2_0_0),
    .in1(out_reg_36_reg_36),
    .in2(out_reg_10_reg_10));
  MUX_GATE #(.BITSIZE_in1(32),
    .BITSIZE_in2(32),
    .BITSIZE_out1(32)) MUX_65_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_3_0_0 (.out1(out_MUX_65_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_3_0_0),
    .sel(selector_MUX_65_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_3_0_0),
    .in1(out_reg_7_reg_7),
    .in2(in_port_layer2_out));
  MUX_GATE #(.BITSIZE_in1(32),
    .BITSIZE_in2(32),
    .BITSIZE_out1(32)) MUX_68_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_2_0_0 (.out1(out_MUX_68_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_2_0_0),
    .sel(selector_MUX_68_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_2_0_0),
    .in1(out_reg_9_reg_9),
    .in2(out_reg_35_reg_35));
  MUX_GATE #(.BITSIZE_in1(32),
    .BITSIZE_in2(32),
    .BITSIZE_out1(32)) MUX_69_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_3_0_0 (.out1(out_MUX_69_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_3_0_0),
    .sel(selector_MUX_69_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_3_0_0),
    .in1(out_reg_8_reg_8),
    .in2(out_reg_6_reg_6));
  MUX_GATE #(.BITSIZE_in1(32),
    .BITSIZE_in2(32),
    .BITSIZE_out1(32)) MUX_73_reg_1_0_0_0 (.out1(out_MUX_73_reg_1_0_0_0),
    .sel(selector_MUX_73_reg_1_0_0_0),
    .in1(out_u_assign_conn_obj_5_ASSIGN_UNSIGNED_FU_u_assign_5),
    .in2(out_conv_out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_6_1_32));
  MUX_GATE #(.BITSIZE_in1(32),
    .BITSIZE_in2(32),
    .BITSIZE_out1(32)) MUX_75_reg_11_0_0_0 (.out1(out_MUX_75_reg_11_0_0_0),
    .sel(selector_MUX_75_reg_11_0_0_0),
    .in1(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_0_1_32),
    .in2(out_ui_plus_expr_FU_32_0_32_57_i0_fu_myproject_422558_422703));
  MUX_GATE #(.BITSIZE_in1(32),
    .BITSIZE_in2(32),
    .BITSIZE_out1(32)) MUX_84_reg_2_0_0_0 (.out1(out_MUX_84_reg_2_0_0_0),
    .sel(selector_MUX_84_reg_2_0_0_0),
    .in1(out_u_assign_conn_obj_7_ASSIGN_UNSIGNED_FU_u_assign_7),
    .in2(out_conv_out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_8_1_32));
  MUX_GATE #(.BITSIZE_in1(32),
    .BITSIZE_in2(32),
    .BITSIZE_out1(32)) MUX_95_reg_3_0_0_0 (.out1(out_MUX_95_reg_3_0_0_0),
    .sel(selector_MUX_95_reg_3_0_0_0),
    .in1(out_conv_out_u_assign_conn_obj_10_ASSIGN_UNSIGNED_FU_u_assign_1_1_32),
    .in2(out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_9));
  ARRAY_1D_STD_DISTRAM_NN_SDS #(.BITSIZE_in1(32),
    .PORTSIZE_in1(2),
    .BITSIZE_in2(9),
    .PORTSIZE_in2(2),
    .BITSIZE_in3(6),
    .PORTSIZE_in3(2),
    .BITSIZE_in4(1),
    .PORTSIZE_in4(2),
    .BITSIZE_sel_LOAD(1),
    .PORTSIZE_sel_LOAD(2),
    .BITSIZE_sel_STORE(1),
    .PORTSIZE_sel_STORE(2),
    .BITSIZE_S_oe_ram(1),
    .PORTSIZE_S_oe_ram(2),
    .BITSIZE_S_we_ram(1),
    .PORTSIZE_S_we_ram(2),
    .BITSIZE_out1(32),
    .PORTSIZE_out1(2),
    .BITSIZE_S_addr_ram(9),
    .PORTSIZE_S_addr_ram(2),
    .BITSIZE_S_Wdata_ram(32),
    .PORTSIZE_S_Wdata_ram(2),
    .BITSIZE_Sin_Rdata_ram(32),
    .PORTSIZE_Sin_Rdata_ram(2),
    .BITSIZE_Sout_Rdata_ram(32),
    .PORTSIZE_Sout_Rdata_ram(2),
    .BITSIZE_S_data_ram_size(6),
    .PORTSIZE_S_data_ram_size(2),
    .BITSIZE_Sin_DataRdy(1),
    .PORTSIZE_Sin_DataRdy(2),
    .BITSIZE_Sout_DataRdy(1),
    .PORTSIZE_Sout_DataRdy(2),
    .MEMORY_INIT_file("array_ref_422751.mem"),
    .n_elements(64),
    .data_size(32),
    .address_space_begin(MEM_var_422751_422558),
    .address_space_rangesize(256),
    .BUS_PIPELINED(1),
    .PRIVATE_MEMORY(1),
    .READ_ONLY_MEMORY(1),
    .USE_SPARSE_MEMORY(1),
    .ALIGNMENT(32),
    .BITSIZE_proxy_in1(32),
    .PORTSIZE_proxy_in1(2),
    .BITSIZE_proxy_in2(9),
    .PORTSIZE_proxy_in2(2),
    .BITSIZE_proxy_in3(6),
    .PORTSIZE_proxy_in3(2),
    .BITSIZE_proxy_sel_LOAD(1),
    .PORTSIZE_proxy_sel_LOAD(2),
    .BITSIZE_proxy_sel_STORE(1),
    .PORTSIZE_proxy_sel_STORE(2),
    .BITSIZE_proxy_out1(32),
    .PORTSIZE_proxy_out1(2)) array_422751_0 (.out1({out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_array_422751_0,
      out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_array_422751_0}),
    .Sout_Rdata_ram({null_out_signal_array_422751_0_Sout_Rdata_ram_1,
      null_out_signal_array_422751_0_Sout_Rdata_ram_0}),
    .Sout_DataRdy({null_out_signal_array_422751_0_Sout_DataRdy_1,
      null_out_signal_array_422751_0_Sout_DataRdy_0}),
    .proxy_out1({null_out_signal_array_422751_0_proxy_out1_1,
      null_out_signal_array_422751_0_proxy_out1_0}),
    .clock(clock),
    .reset(reset),
    .in1({32'b00000000000000000000000000000000,
      32'b00000000000000000000000000000000}),
    .in2({out_reg_15_reg_15,
      out_reg_13_reg_13}),
    .in3({out_conv_out_const_1_7_6,
      out_conv_out_const_1_7_6}),
    .in4({out_const_2,
      out_const_2}),
    .sel_LOAD({fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD,
      fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD}),
    .sel_STORE({fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE,
      fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE}),
    .S_oe_ram({1'b0,
      1'b0}),
    .S_we_ram({1'b0,
      1'b0}),
    .S_addr_ram({9'b000000000,
      9'b000000000}),
    .S_Wdata_ram({32'b00000000000000000000000000000000,
      32'b00000000000000000000000000000000}),
    .Sin_Rdata_ram({32'b00000000000000000000000000000000,
      32'b00000000000000000000000000000000}),
    .S_data_ram_size({6'b000000,
      6'b000000}),
    .Sin_DataRdy({1'b0,
      1'b0}),
    .proxy_in1({32'b00000000000000000000000000000000,
      32'b00000000000000000000000000000000}),
    .proxy_in2({9'b000000000,
      9'b000000000}),
    .proxy_in3({6'b000000,
      6'b000000}),
    .proxy_sel_LOAD({1'b0,
      1'b0}),
    .proxy_sel_STORE({1'b0,
      1'b0}));
  ARRAY_1D_STD_DISTRAM_NN_SDS #(.BITSIZE_in1(32),
    .PORTSIZE_in1(2),
    .BITSIZE_in2(9),
    .PORTSIZE_in2(2),
    .BITSIZE_in3(6),
    .PORTSIZE_in3(2),
    .BITSIZE_in4(1),
    .PORTSIZE_in4(2),
    .BITSIZE_sel_LOAD(1),
    .PORTSIZE_sel_LOAD(2),
    .BITSIZE_sel_STORE(1),
    .PORTSIZE_sel_STORE(2),
    .BITSIZE_S_oe_ram(1),
    .PORTSIZE_S_oe_ram(2),
    .BITSIZE_S_we_ram(1),
    .PORTSIZE_S_we_ram(2),
    .BITSIZE_out1(32),
    .PORTSIZE_out1(2),
    .BITSIZE_S_addr_ram(9),
    .PORTSIZE_S_addr_ram(2),
    .BITSIZE_S_Wdata_ram(32),
    .PORTSIZE_S_Wdata_ram(2),
    .BITSIZE_Sin_Rdata_ram(32),
    .PORTSIZE_Sin_Rdata_ram(2),
    .BITSIZE_Sout_Rdata_ram(32),
    .PORTSIZE_Sout_Rdata_ram(2),
    .BITSIZE_S_data_ram_size(6),
    .PORTSIZE_S_data_ram_size(2),
    .BITSIZE_Sin_DataRdy(1),
    .PORTSIZE_Sin_DataRdy(2),
    .BITSIZE_Sout_DataRdy(1),
    .PORTSIZE_Sout_DataRdy(2),
    .MEMORY_INIT_file("array_ref_422751.mem"),
    .n_elements(64),
    .data_size(32),
    .address_space_begin(MEM_var_422751_422558),
    .address_space_rangesize(256),
    .BUS_PIPELINED(1),
    .PRIVATE_MEMORY(1),
    .READ_ONLY_MEMORY(1),
    .USE_SPARSE_MEMORY(1),
    .ALIGNMENT(32),
    .BITSIZE_proxy_in1(32),
    .PORTSIZE_proxy_in1(2),
    .BITSIZE_proxy_in2(9),
    .PORTSIZE_proxy_in2(2),
    .BITSIZE_proxy_in3(6),
    .PORTSIZE_proxy_in3(2),
    .BITSIZE_proxy_sel_LOAD(1),
    .PORTSIZE_proxy_sel_LOAD(2),
    .BITSIZE_proxy_sel_STORE(1),
    .PORTSIZE_proxy_sel_STORE(2),
    .BITSIZE_proxy_out1(32),
    .PORTSIZE_proxy_out1(2)) array_422751_1 (.out1({out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_array_422751_1,
      out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_array_422751_1}),
    .Sout_Rdata_ram({null_out_signal_array_422751_1_Sout_Rdata_ram_1,
      null_out_signal_array_422751_1_Sout_Rdata_ram_0}),
    .Sout_DataRdy({null_out_signal_array_422751_1_Sout_DataRdy_1,
      null_out_signal_array_422751_1_Sout_DataRdy_0}),
    .proxy_out1({null_out_signal_array_422751_1_proxy_out1_1,
      null_out_signal_array_422751_1_proxy_out1_0}),
    .clock(clock),
    .reset(reset),
    .in1({32'b00000000000000000000000000000000,
      32'b00000000000000000000000000000000}),
    .in2({out_reg_19_reg_19,
      out_reg_17_reg_17}),
    .in3({out_conv_out_const_1_7_6,
      out_conv_out_const_1_7_6}),
    .in4({out_const_2,
      out_const_2}),
    .sel_LOAD({fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_LOAD,
      fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_LOAD}),
    .sel_STORE({fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_STORE,
      fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_STORE}),
    .S_oe_ram({1'b0,
      1'b0}),
    .S_we_ram({1'b0,
      1'b0}),
    .S_addr_ram({9'b000000000,
      9'b000000000}),
    .S_Wdata_ram({32'b00000000000000000000000000000000,
      32'b00000000000000000000000000000000}),
    .Sin_Rdata_ram({32'b00000000000000000000000000000000,
      32'b00000000000000000000000000000000}),
    .S_data_ram_size({6'b000000,
      6'b000000}),
    .Sin_DataRdy({1'b0,
      1'b0}),
    .proxy_in1({32'b00000000000000000000000000000000,
      32'b00000000000000000000000000000000}),
    .proxy_in2({9'b000000000,
      9'b000000000}),
    .proxy_in3({6'b000000,
      6'b000000}),
    .proxy_sel_LOAD({1'b0,
      1'b0}),
    .proxy_sel_STORE({1'b0,
      1'b0}));
  ARRAY_1D_STD_BRAM_NN_SDS #(.BITSIZE_in1(32),
    .PORTSIZE_in1(2),
    .BITSIZE_in2(9),
    .PORTSIZE_in2(2),
    .BITSIZE_in3(6),
    .PORTSIZE_in3(2),
    .BITSIZE_in4(1),
    .PORTSIZE_in4(2),
    .BITSIZE_sel_LOAD(1),
    .PORTSIZE_sel_LOAD(2),
    .BITSIZE_sel_STORE(1),
    .PORTSIZE_sel_STORE(2),
    .BITSIZE_S_oe_ram(1),
    .PORTSIZE_S_oe_ram(2),
    .BITSIZE_S_we_ram(1),
    .PORTSIZE_S_we_ram(2),
    .BITSIZE_out1(32),
    .PORTSIZE_out1(2),
    .BITSIZE_S_addr_ram(9),
    .PORTSIZE_S_addr_ram(2),
    .BITSIZE_S_Wdata_ram(32),
    .PORTSIZE_S_Wdata_ram(2),
    .BITSIZE_Sin_Rdata_ram(32),
    .PORTSIZE_Sin_Rdata_ram(2),
    .BITSIZE_Sout_Rdata_ram(32),
    .PORTSIZE_Sout_Rdata_ram(2),
    .BITSIZE_S_data_ram_size(6),
    .PORTSIZE_S_data_ram_size(2),
    .BITSIZE_Sin_DataRdy(1),
    .PORTSIZE_Sin_DataRdy(2),
    .BITSIZE_Sout_DataRdy(1),
    .PORTSIZE_Sout_DataRdy(2),
    .MEMORY_INIT_file("array_ref_423023.mem"),
    .n_elements(64),
    .data_size(32),
    .address_space_begin(MEM_var_423023_422558),
    .address_space_rangesize(256),
    .BUS_PIPELINED(1),
    .PRIVATE_MEMORY(1),
    .READ_ONLY_MEMORY(0),
    .USE_SPARSE_MEMORY(1),
    .ALIGNMENT(32),
    .BITSIZE_proxy_in1(32),
    .PORTSIZE_proxy_in1(2),
    .BITSIZE_proxy_in2(9),
    .PORTSIZE_proxy_in2(2),
    .BITSIZE_proxy_in3(6),
    .PORTSIZE_proxy_in3(2),
    .BITSIZE_proxy_sel_LOAD(1),
    .PORTSIZE_proxy_sel_LOAD(2),
    .BITSIZE_proxy_sel_STORE(1),
    .PORTSIZE_proxy_sel_STORE(2),
    .BITSIZE_proxy_out1(32),
    .PORTSIZE_proxy_out1(2)) array_423023_0 (.out1({out_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_array_423023_0,
      out_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_array_423023_0}),
    .Sout_Rdata_ram({null_out_signal_array_423023_0_Sout_Rdata_ram_1,
      null_out_signal_array_423023_0_Sout_Rdata_ram_0}),
    .Sout_DataRdy({null_out_signal_array_423023_0_Sout_DataRdy_1,
      null_out_signal_array_423023_0_Sout_DataRdy_0}),
    .proxy_out1({null_out_signal_array_423023_0_proxy_out1_1,
      null_out_signal_array_423023_0_proxy_out1_0}),
    .clock(clock),
    .reset(reset),
    .in1({out_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_0_0_0,
      out_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_0_0_0}),
    .in2({out_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_1_0,
      out_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_1_0}),
    .in3({out_conv_out_const_1_7_6,
      out_conv_out_const_1_7_6}),
    .in4({out_const_2,
      out_const_2}),
    .sel_LOAD({fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_LOAD,
      fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_LOAD}),
    .sel_STORE({fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_STORE,
      fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_STORE}),
    .S_oe_ram({1'b0,
      1'b0}),
    .S_we_ram({1'b0,
      1'b0}),
    .S_addr_ram({9'b000000000,
      9'b000000000}),
    .S_Wdata_ram({32'b00000000000000000000000000000000,
      32'b00000000000000000000000000000000}),
    .Sin_Rdata_ram({32'b00000000000000000000000000000000,
      32'b00000000000000000000000000000000}),
    .S_data_ram_size({6'b000000,
      6'b000000}),
    .Sin_DataRdy({1'b0,
      1'b0}),
    .proxy_in1({32'b00000000000000000000000000000000,
      32'b00000000000000000000000000000000}),
    .proxy_in2({9'b000000000,
      9'b000000000}),
    .proxy_in3({6'b000000,
      6'b000000}),
    .proxy_sel_LOAD({1'b0,
      1'b0}),
    .proxy_sel_STORE({1'b0,
      1'b0}));
  constant_value #(.BITSIZE_out1(1),
    .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(7),
    .value(7'b0100000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(4),
    .value(4'b1100)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(9),
    .value(MEM_var_422751_422558)) const_11 (.out1(out_const_11));
  constant_value #(.BITSIZE_out1(9),
    .value(MEM_var_423023_422558)) const_12 (.out1(out_const_12));
  constant_value #(.BITSIZE_out1(1),
    .value(1'b1)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(2),
    .value(2'b10)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(3),
    .value(3'b100)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(4),
    .value(4'b1000)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(5),
    .value(5'b10000)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(6),
    .value(6'b100000)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(4),
    .value(4'b1010)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(2),
    .value(2'b11)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(16)) conv_out_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_array_423023_0_32_16 (.out1(out_conv_out_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_array_423023_0_32_16),
    .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_array_423023_0));
  UUdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(16)) conv_out_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_array_423023_0_32_16 (.out1(out_conv_out_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_array_423023_0_32_16),
    .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_array_423023_0));
  UUdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(16)) conv_out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_array_422751_0_32_16 (.out1(out_conv_out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_array_422751_0_32_16),
    .in1(out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_array_422751_0));
  UUdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(16)) conv_out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_array_422751_0_32_16 (.out1(out_conv_out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_array_422751_0_32_16),
    .in1(out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_array_422751_0));
  UUdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(16)) conv_out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_array_422751_1_32_16 (.out1(out_conv_out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_array_422751_1_32_16),
    .in1(out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_array_422751_1));
  UUdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(16)) conv_out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_array_422751_1_32_16 (.out1(out_conv_out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_array_422751_1_32_16),
    .in1(out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_array_422751_1));
  UUdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(16)) conv_out_MUX_103_reg_4_0_0_0_32_16 (.out1(out_conv_out_MUX_103_reg_4_0_0_0_32_16),
    .in1(out_MUX_103_reg_4_0_0_0));
  UUdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(16)) conv_out_MUX_73_reg_1_0_0_0_32_16 (.out1(out_conv_out_MUX_73_reg_1_0_0_0_32_16),
    .in1(out_MUX_73_reg_1_0_0_0));
  UUdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(16)) conv_out_MUX_84_reg_2_0_0_0_32_16 (.out1(out_conv_out_MUX_84_reg_2_0_0_0_32_16),
    .in1(out_MUX_84_reg_2_0_0_0));
  UUdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(16)) conv_out_MUX_95_reg_3_0_0_0_32_16 (.out1(out_conv_out_MUX_95_reg_3_0_0_0_32_16),
    .in1(out_MUX_95_reg_3_0_0_0));
  UUdata_converter_FU #(.BITSIZE_in1(1),
    .BITSIZE_out1(32)) conv_out_const_0_1_32 (.out1(out_conv_out_const_0_1_32),
    .in1(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(9),
    .BITSIZE_out1(32)) conv_out_const_11_9_32 (.out1(out_conv_out_const_11_9_32),
    .in1(out_const_11));
  UUdata_converter_FU #(.BITSIZE_in1(9),
    .BITSIZE_out1(32)) conv_out_const_12_9_32 (.out1(out_conv_out_const_12_9_32),
    .in1(out_const_12));
  UUdata_converter_FU #(.BITSIZE_in1(7),
    .BITSIZE_out1(6)) conv_out_const_1_7_6 (.out1(out_conv_out_const_1_7_6),
    .in1(out_const_1));
  UUdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(16)) conv_out_dense_1_input_bambu_artificial_ParmMgr_modgen_67_i0_fu_myproject_422558_423458_32_16 (.out1(out_conv_out_dense_1_input_bambu_artificial_ParmMgr_modgen_67_i0_fu_myproject_422558_423458_32_16),
    .in1(out_dense_1_input_bambu_artificial_ParmMgr_modgen_67_i0_fu_myproject_422558_423458));
  UUdata_converter_FU #(.BITSIZE_in1(1),
    .BITSIZE_out1(32)) conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_0_1_32 (.out1(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_0_1_32),
    .in1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_0));
  UUdata_converter_FU #(.BITSIZE_in1(1),
    .BITSIZE_out1(32)) conv_out_u_assign_conn_obj_10_ASSIGN_UNSIGNED_FU_u_assign_1_1_32 (.out1(out_conv_out_u_assign_conn_obj_10_ASSIGN_UNSIGNED_FU_u_assign_1_1_32),
    .in1(out_u_assign_conn_obj_10_ASSIGN_UNSIGNED_FU_u_assign_1));
  UUdata_converter_FU #(.BITSIZE_in1(1),
    .BITSIZE_out1(32)) conv_out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_3_1_32 (.out1(out_conv_out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_3_1_32),
    .in1(out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_3));
  UUdata_converter_FU #(.BITSIZE_in1(1),
    .BITSIZE_out1(32)) conv_out_u_assign_conn_obj_13_ASSIGN_UNSIGNED_FU_u_assign_4_1_32 (.out1(out_conv_out_u_assign_conn_obj_13_ASSIGN_UNSIGNED_FU_u_assign_4_1_32),
    .in1(out_u_assign_conn_obj_13_ASSIGN_UNSIGNED_FU_u_assign_4));
  UUdata_converter_FU #(.BITSIZE_in1(1),
    .BITSIZE_out1(32)) conv_out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_6_1_32 (.out1(out_conv_out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_6_1_32),
    .in1(out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_6));
  UUdata_converter_FU #(.BITSIZE_in1(1),
    .BITSIZE_out1(32)) conv_out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_8_1_32 (.out1(out_conv_out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_8_1_32),
    .in1(out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_8));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(32),
    .BITSIZE_out1(32),
    .LSB_PARAMETER(0)) fu_myproject_422558_422655 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_61_i0_fu_myproject_422558_422655),
    .in1(in_port_dense_1_input),
    .in2(out_ui_lshift_expr_FU_32_0_32_55_i0_fu_myproject_422558_423291));
  ui_lshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(2),
    .BITSIZE_out1(7),
    .PRECISION(32)) fu_myproject_422558_422657 (.out1(out_ui_lshift_expr_FU_32_0_32_53_i0_fu_myproject_422558_422657),
    .in1(out_reg_11_reg_11),
    .in2(out_const_3));
  ui_lshift_expr_FU #(.BITSIZE_in1(16),
    .BITSIZE_in2(5),
    .BITSIZE_out1(32),
    .PRECISION(32)) fu_myproject_422558_422658 (.out1(out_ui_lshift_expr_FU_32_0_32_54_i0_fu_myproject_422558_422658),
    .in1(out_conv_out_dense_1_input_bambu_artificial_ParmMgr_modgen_67_i0_fu_myproject_422558_423458_32_16),
    .in2(out_const_6));
  rshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(5),
    .BITSIZE_out1(16),
    .PRECISION(32)) fu_myproject_422558_422659 (.out1(out_rshift_expr_FU_32_0_32_47_i0_fu_myproject_422558_422659),
    .in1(out_UIdata_converter_FU_10_i0_fu_myproject_422558_423294),
    .in2(out_const_6));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9),
    .BITSIZE_in2(9),
    .BITSIZE_out1(9),
    .LSB_PARAMETER(2)) fu_myproject_422558_422660 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_62_i0_fu_myproject_422558_422660),
    .in1(out_reg_12_reg_12),
    .in2(out_ui_lshift_expr_FU_16_0_16_52_i0_fu_myproject_422558_423299));
  ui_lshift_expr_FU #(.BITSIZE_in1(16),
    .BITSIZE_in2(5),
    .BITSIZE_out1(32),
    .PRECISION(32)) fu_myproject_422558_422662 (.out1(out_ui_lshift_expr_FU_32_0_32_54_i1_fu_myproject_422558_422662),
    .in1(out_conv_out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_array_422751_0_32_16),
    .in2(out_const_6));
  rshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(5),
    .BITSIZE_out1(16),
    .PRECISION(32)) fu_myproject_422558_422663 (.out1(out_rshift_expr_FU_32_0_32_47_i1_fu_myproject_422558_422663),
    .in1(out_UIdata_converter_FU_14_i0_fu_myproject_422558_423302),
    .in2(out_const_6));
  widen_mult_expr_FU #(.BITSIZE_in1(16),
    .BITSIZE_in2(16),
    .BITSIZE_out1(32),
    .PIPE_PARAMETER(0)) fu_myproject_422558_422664 (.out1(out_widen_mult_expr_FU_16_16_32_0_64_i0_fu_myproject_422558_422664),
    .clock(clock),
    .in1(out_reg_23_reg_23),
    .in2(out_reg_22_reg_22));
  ui_rshift_expr_FU #(.BITSIZE_in1(26),
    .BITSIZE_in2(4),
    .BITSIZE_out1(16),
    .PRECISION(32)) fu_myproject_422558_422665 (.out1(out_ui_rshift_expr_FU_32_0_32_63_i0_fu_myproject_422558_422665),
    .in1(out_IUdata_converter_FU_15_i0_fu_myproject_422558_423306),
    .in2(out_const_8));
  ui_lshift_expr_FU #(.BITSIZE_in1(16),
    .BITSIZE_in2(5),
    .BITSIZE_out1(32),
    .PRECISION(32)) fu_myproject_422558_422666 (.out1(out_ui_lshift_expr_FU_32_0_32_54_i2_fu_myproject_422558_422666),
    .in1(out_ui_rshift_expr_FU_32_0_32_63_i0_fu_myproject_422558_422665),
    .in2(out_const_6));
  rshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(5),
    .BITSIZE_out1(16),
    .PRECISION(32)) fu_myproject_422558_422667 (.out1(out_rshift_expr_FU_32_0_32_47_i2_fu_myproject_422558_422667),
    .in1(out_UIdata_converter_FU_16_i0_fu_myproject_422558_423309),
    .in2(out_const_6));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9),
    .BITSIZE_in2(9),
    .BITSIZE_out1(9),
    .LSB_PARAMETER(2)) fu_myproject_422558_422668 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_62_i1_fu_myproject_422558_422668),
    .in1(out_reg_0_reg_0),
    .in2(out_ui_lshift_expr_FU_16_0_16_52_i0_fu_myproject_422558_423299));
  ui_bit_ior_expr_FU #(.BITSIZE_in1(7),
    .BITSIZE_in2(1),
    .BITSIZE_out1(7)) fu_myproject_422558_422670 (.out1(out_ui_bit_ior_expr_FU_8_0_8_48_i0_fu_myproject_422558_422670),
    .in1(out_ui_lshift_expr_FU_32_0_32_53_i0_fu_myproject_422558_422657),
    .in2(out_const_2));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9),
    .BITSIZE_in2(9),
    .BITSIZE_out1(9),
    .LSB_PARAMETER(2)) fu_myproject_422558_422671 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_62_i2_fu_myproject_422558_422671),
    .in1(out_reg_12_reg_12),
    .in2(out_ui_lshift_expr_FU_16_0_16_52_i1_fu_myproject_422558_423318));
  ui_lshift_expr_FU #(.BITSIZE_in1(16),
    .BITSIZE_in2(5),
    .BITSIZE_out1(32),
    .PRECISION(32)) fu_myproject_422558_422673 (.out1(out_ui_lshift_expr_FU_32_0_32_54_i3_fu_myproject_422558_422673),
    .in1(out_conv_out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_array_422751_0_32_16),
    .in2(out_const_6));
  rshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(5),
    .BITSIZE_out1(16),
    .PRECISION(32)) fu_myproject_422558_422674 (.out1(out_rshift_expr_FU_32_0_32_47_i3_fu_myproject_422558_422674),
    .in1(out_UIdata_converter_FU_18_i0_fu_myproject_422558_423321),
    .in2(out_const_6));
  widen_mult_expr_FU #(.BITSIZE_in1(16),
    .BITSIZE_in2(16),
    .BITSIZE_out1(32),
    .PIPE_PARAMETER(0)) fu_myproject_422558_422675 (.out1(out_widen_mult_expr_FU_16_16_32_0_64_i1_fu_myproject_422558_422675),
    .clock(clock),
    .in1(out_reg_24_reg_24),
    .in2(out_reg_27_reg_27));
  ui_rshift_expr_FU #(.BITSIZE_in1(26),
    .BITSIZE_in2(4),
    .BITSIZE_out1(16),
    .PRECISION(32)) fu_myproject_422558_422676 (.out1(out_ui_rshift_expr_FU_32_0_32_63_i1_fu_myproject_422558_422676),
    .in1(out_IUdata_converter_FU_19_i0_fu_myproject_422558_423325),
    .in2(out_const_8));
  ui_lshift_expr_FU #(.BITSIZE_in1(16),
    .BITSIZE_in2(5),
    .BITSIZE_out1(32),
    .PRECISION(32)) fu_myproject_422558_422677 (.out1(out_ui_lshift_expr_FU_32_0_32_54_i4_fu_myproject_422558_422677),
    .in1(out_ui_rshift_expr_FU_32_0_32_63_i1_fu_myproject_422558_422676),
    .in2(out_const_6));
  rshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(5),
    .BITSIZE_out1(16),
    .PRECISION(32)) fu_myproject_422558_422678 (.out1(out_rshift_expr_FU_32_0_32_47_i4_fu_myproject_422558_422678),
    .in1(out_UIdata_converter_FU_20_i0_fu_myproject_422558_423328),
    .in2(out_const_6));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9),
    .BITSIZE_in2(9),
    .BITSIZE_out1(9),
    .LSB_PARAMETER(2)) fu_myproject_422558_422679 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_62_i3_fu_myproject_422558_422679),
    .in1(out_reg_0_reg_0),
    .in2(out_ui_lshift_expr_FU_16_0_16_52_i1_fu_myproject_422558_423318));
  ui_bit_ior_expr_FU #(.BITSIZE_in1(7),
    .BITSIZE_in2(2),
    .BITSIZE_out1(7)) fu_myproject_422558_422681 (.out1(out_ui_bit_ior_expr_FU_8_0_8_49_i0_fu_myproject_422558_422681),
    .in1(out_ui_lshift_expr_FU_32_0_32_53_i0_fu_myproject_422558_422657),
    .in2(out_const_3));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9),
    .BITSIZE_in2(9),
    .BITSIZE_out1(9),
    .LSB_PARAMETER(2)) fu_myproject_422558_422682 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_62_i4_fu_myproject_422558_422682),
    .in1(out_reg_12_reg_12),
    .in2(out_ui_lshift_expr_FU_16_0_16_52_i2_fu_myproject_422558_423337));
  ui_lshift_expr_FU #(.BITSIZE_in1(16),
    .BITSIZE_in2(5),
    .BITSIZE_out1(32),
    .PRECISION(32)) fu_myproject_422558_422684 (.out1(out_ui_lshift_expr_FU_32_0_32_54_i5_fu_myproject_422558_422684),
    .in1(out_conv_out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_array_422751_1_32_16),
    .in2(out_const_6));
  rshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(5),
    .BITSIZE_out1(16),
    .PRECISION(32)) fu_myproject_422558_422685 (.out1(out_rshift_expr_FU_32_0_32_47_i5_fu_myproject_422558_422685),
    .in1(out_UIdata_converter_FU_22_i0_fu_myproject_422558_423340),
    .in2(out_const_6));
  widen_mult_expr_FU #(.BITSIZE_in1(16),
    .BITSIZE_in2(16),
    .BITSIZE_out1(32),
    .PIPE_PARAMETER(0)) fu_myproject_422558_422686 (.out1(out_widen_mult_expr_FU_16_16_32_0_64_i2_fu_myproject_422558_422686),
    .clock(clock),
    .in1(out_reg_25_reg_25),
    .in2(out_reg_28_reg_28));
  ui_rshift_expr_FU #(.BITSIZE_in1(26),
    .BITSIZE_in2(4),
    .BITSIZE_out1(16),
    .PRECISION(32)) fu_myproject_422558_422687 (.out1(out_ui_rshift_expr_FU_32_0_32_63_i2_fu_myproject_422558_422687),
    .in1(out_IUdata_converter_FU_23_i0_fu_myproject_422558_423344),
    .in2(out_const_8));
  ui_lshift_expr_FU #(.BITSIZE_in1(16),
    .BITSIZE_in2(5),
    .BITSIZE_out1(32),
    .PRECISION(32)) fu_myproject_422558_422688 (.out1(out_ui_lshift_expr_FU_32_0_32_54_i6_fu_myproject_422558_422688),
    .in1(out_ui_rshift_expr_FU_32_0_32_63_i2_fu_myproject_422558_422687),
    .in2(out_const_6));
  rshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(5),
    .BITSIZE_out1(16),
    .PRECISION(32)) fu_myproject_422558_422689 (.out1(out_rshift_expr_FU_32_0_32_47_i6_fu_myproject_422558_422689),
    .in1(out_UIdata_converter_FU_24_i0_fu_myproject_422558_423347),
    .in2(out_const_6));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9),
    .BITSIZE_in2(9),
    .BITSIZE_out1(9),
    .LSB_PARAMETER(2)) fu_myproject_422558_422690 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_62_i5_fu_myproject_422558_422690),
    .in1(out_reg_0_reg_0),
    .in2(out_ui_lshift_expr_FU_16_0_16_52_i2_fu_myproject_422558_423337));
  ui_bit_ior_expr_FU #(.BITSIZE_in1(7),
    .BITSIZE_in2(2),
    .BITSIZE_out1(7)) fu_myproject_422558_422692 (.out1(out_ui_bit_ior_expr_FU_8_0_8_50_i0_fu_myproject_422558_422692),
    .in1(out_ui_lshift_expr_FU_32_0_32_53_i0_fu_myproject_422558_422657),
    .in2(out_const_9));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9),
    .BITSIZE_in2(9),
    .BITSIZE_out1(9),
    .LSB_PARAMETER(2)) fu_myproject_422558_422693 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_62_i6_fu_myproject_422558_422693),
    .in1(out_reg_12_reg_12),
    .in2(out_ui_lshift_expr_FU_16_0_16_52_i3_fu_myproject_422558_423356));
  ui_lshift_expr_FU #(.BITSIZE_in1(16),
    .BITSIZE_in2(5),
    .BITSIZE_out1(32),
    .PRECISION(32)) fu_myproject_422558_422695 (.out1(out_ui_lshift_expr_FU_32_0_32_54_i7_fu_myproject_422558_422695),
    .in1(out_conv_out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_array_422751_1_32_16),
    .in2(out_const_6));
  rshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(5),
    .BITSIZE_out1(16),
    .PRECISION(32)) fu_myproject_422558_422696 (.out1(out_rshift_expr_FU_32_0_32_47_i7_fu_myproject_422558_422696),
    .in1(out_UIdata_converter_FU_26_i0_fu_myproject_422558_423359),
    .in2(out_const_6));
  widen_mult_expr_FU #(.BITSIZE_in1(16),
    .BITSIZE_in2(16),
    .BITSIZE_out1(32),
    .PIPE_PARAMETER(0)) fu_myproject_422558_422697 (.out1(out_widen_mult_expr_FU_16_16_32_0_64_i3_fu_myproject_422558_422697),
    .clock(clock),
    .in1(out_reg_26_reg_26),
    .in2(out_reg_29_reg_29));
  ui_rshift_expr_FU #(.BITSIZE_in1(26),
    .BITSIZE_in2(4),
    .BITSIZE_out1(16),
    .PRECISION(32)) fu_myproject_422558_422698 (.out1(out_ui_rshift_expr_FU_32_0_32_63_i3_fu_myproject_422558_422698),
    .in1(out_IUdata_converter_FU_27_i0_fu_myproject_422558_423363),
    .in2(out_const_8));
  ui_lshift_expr_FU #(.BITSIZE_in1(16),
    .BITSIZE_in2(5),
    .BITSIZE_out1(32),
    .PRECISION(32)) fu_myproject_422558_422699 (.out1(out_ui_lshift_expr_FU_32_0_32_54_i8_fu_myproject_422558_422699),
    .in1(out_ui_rshift_expr_FU_32_0_32_63_i3_fu_myproject_422558_422698),
    .in2(out_const_6));
  rshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(5),
    .BITSIZE_out1(16),
    .PRECISION(32)) fu_myproject_422558_422700 (.out1(out_rshift_expr_FU_32_0_32_47_i8_fu_myproject_422558_422700),
    .in1(out_UIdata_converter_FU_28_i0_fu_myproject_422558_423366),
    .in2(out_const_6));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9),
    .BITSIZE_in2(9),
    .BITSIZE_out1(9),
    .LSB_PARAMETER(2)) fu_myproject_422558_422701 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_62_i7_fu_myproject_422558_422701),
    .in1(out_reg_0_reg_0),
    .in2(out_ui_lshift_expr_FU_16_0_16_52_i3_fu_myproject_422558_423356));
  ui_plus_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(1),
    .BITSIZE_out1(32)) fu_myproject_422558_422703 (.out1(out_ui_plus_expr_FU_32_0_32_57_i0_fu_myproject_422558_422703),
    .in1(out_reg_11_reg_11),
    .in2(out_const_2));
  read_cond_FU #(.BITSIZE_in1(1)) fu_myproject_422558_422705 (.out1(out_read_cond_FU_30_i0_fu_myproject_422558_422705),
    .in1(out_reg_21_reg_21));
  addr_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(9)) fu_myproject_422558_423029 (.out1(out_addr_expr_FU_4_i0_fu_myproject_422558_423029),
    .in1(out_conv_out_const_12_9_32));
  ui_lshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(2),
    .BITSIZE_out1(7),
    .PRECISION(32)) fu_myproject_422558_423134 (.out1(out_ui_lshift_expr_FU_32_0_32_53_i1_fu_myproject_422558_423134),
    .in1(out_reg_5_reg_5),
    .in2(out_const_3));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9),
    .BITSIZE_in2(9),
    .BITSIZE_out1(9),
    .LSB_PARAMETER(2)) fu_myproject_422558_423135 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_62_i8_fu_myproject_422558_423135),
    .in1(out_reg_0_reg_0),
    .in2(out_ui_lshift_expr_FU_16_0_16_52_i4_fu_myproject_422558_423389));
  ui_plus_expr_FU #(.BITSIZE_in1(16),
    .BITSIZE_in2(16),
    .BITSIZE_out1(16)) fu_myproject_422558_423137 (.out1(out_ui_plus_expr_FU_16_16_16_56_i0_fu_myproject_422558_423137),
    .in1(out_conv_out_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_array_423023_0_32_16),
    .in2(out_reg_4_reg_4));
  ui_lshift_expr_FU #(.BITSIZE_in1(16),
    .BITSIZE_in2(5),
    .BITSIZE_out1(32),
    .PRECISION(32)) fu_myproject_422558_423138 (.out1(out_ui_lshift_expr_FU_32_0_32_54_i9_fu_myproject_422558_423138),
    .in1(out_ui_plus_expr_FU_16_16_16_56_i0_fu_myproject_422558_423137),
    .in2(out_const_6));
  rshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(5),
    .BITSIZE_out1(16),
    .PRECISION(32)) fu_myproject_422558_423139 (.out1(out_rshift_expr_FU_32_0_32_47_i9_fu_myproject_422558_423139),
    .in1(out_UIdata_converter_FU_37_i0_fu_myproject_422558_423392),
    .in2(out_const_6));
  ui_bit_ior_expr_FU #(.BITSIZE_in1(7),
    .BITSIZE_in2(1),
    .BITSIZE_out1(7)) fu_myproject_422558_423140 (.out1(out_ui_bit_ior_expr_FU_8_0_8_48_i1_fu_myproject_422558_423140),
    .in1(out_ui_lshift_expr_FU_32_0_32_53_i1_fu_myproject_422558_423134),
    .in2(out_const_2));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9),
    .BITSIZE_in2(9),
    .BITSIZE_out1(9),
    .LSB_PARAMETER(2)) fu_myproject_422558_423141 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_62_i9_fu_myproject_422558_423141),
    .in1(out_reg_0_reg_0),
    .in2(out_ui_lshift_expr_FU_16_0_16_52_i5_fu_myproject_422558_423394));
  ui_plus_expr_FU #(.BITSIZE_in1(16),
    .BITSIZE_in2(16),
    .BITSIZE_out1(16)) fu_myproject_422558_423143 (.out1(out_ui_plus_expr_FU_16_16_16_56_i1_fu_myproject_422558_423143),
    .in1(out_conv_out_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_array_423023_0_32_16),
    .in2(out_reg_3_reg_3));
  ui_lshift_expr_FU #(.BITSIZE_in1(16),
    .BITSIZE_in2(5),
    .BITSIZE_out1(32),
    .PRECISION(32)) fu_myproject_422558_423144 (.out1(out_ui_lshift_expr_FU_32_0_32_54_i10_fu_myproject_422558_423144),
    .in1(out_ui_plus_expr_FU_16_16_16_56_i1_fu_myproject_422558_423143),
    .in2(out_const_6));
  rshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(5),
    .BITSIZE_out1(16),
    .PRECISION(32)) fu_myproject_422558_423145 (.out1(out_rshift_expr_FU_32_0_32_47_i10_fu_myproject_422558_423145),
    .in1(out_UIdata_converter_FU_38_i0_fu_myproject_422558_423397),
    .in2(out_const_6));
  ui_bit_ior_expr_FU #(.BITSIZE_in1(7),
    .BITSIZE_in2(2),
    .BITSIZE_out1(7)) fu_myproject_422558_423146 (.out1(out_ui_bit_ior_expr_FU_8_0_8_49_i1_fu_myproject_422558_423146),
    .in1(out_ui_lshift_expr_FU_32_0_32_53_i1_fu_myproject_422558_423134),
    .in2(out_const_3));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9),
    .BITSIZE_in2(9),
    .BITSIZE_out1(9),
    .LSB_PARAMETER(2)) fu_myproject_422558_423147 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_62_i10_fu_myproject_422558_423147),
    .in1(out_reg_0_reg_0),
    .in2(out_ui_lshift_expr_FU_16_0_16_52_i6_fu_myproject_422558_423399));
  ui_plus_expr_FU #(.BITSIZE_in1(16),
    .BITSIZE_in2(16),
    .BITSIZE_out1(16)) fu_myproject_422558_423149 (.out1(out_ui_plus_expr_FU_16_16_16_56_i2_fu_myproject_422558_423149),
    .in1(out_conv_out_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_array_423023_0_32_16),
    .in2(out_reg_2_reg_2));
  ui_lshift_expr_FU #(.BITSIZE_in1(16),
    .BITSIZE_in2(5),
    .BITSIZE_out1(32),
    .PRECISION(32)) fu_myproject_422558_423150 (.out1(out_ui_lshift_expr_FU_32_0_32_54_i11_fu_myproject_422558_423150),
    .in1(out_ui_plus_expr_FU_16_16_16_56_i2_fu_myproject_422558_423149),
    .in2(out_const_6));
  rshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(5),
    .BITSIZE_out1(16),
    .PRECISION(32)) fu_myproject_422558_423151 (.out1(out_rshift_expr_FU_32_0_32_47_i11_fu_myproject_422558_423151),
    .in1(out_UIdata_converter_FU_39_i0_fu_myproject_422558_423402),
    .in2(out_const_6));
  ui_bit_ior_expr_FU #(.BITSIZE_in1(7),
    .BITSIZE_in2(2),
    .BITSIZE_out1(7)) fu_myproject_422558_423152 (.out1(out_ui_bit_ior_expr_FU_8_0_8_50_i1_fu_myproject_422558_423152),
    .in1(out_ui_lshift_expr_FU_32_0_32_53_i1_fu_myproject_422558_423134),
    .in2(out_const_9));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9),
    .BITSIZE_in2(9),
    .BITSIZE_out1(9),
    .LSB_PARAMETER(2)) fu_myproject_422558_423153 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_62_i11_fu_myproject_422558_423153),
    .in1(out_reg_0_reg_0),
    .in2(out_ui_lshift_expr_FU_16_0_16_52_i7_fu_myproject_422558_423404));
  ui_plus_expr_FU #(.BITSIZE_in1(16),
    .BITSIZE_in2(16),
    .BITSIZE_out1(16)) fu_myproject_422558_423155 (.out1(out_ui_plus_expr_FU_16_16_16_56_i3_fu_myproject_422558_423155),
    .in1(out_conv_out_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_array_423023_0_32_16),
    .in2(out_reg_1_reg_1));
  ui_lshift_expr_FU #(.BITSIZE_in1(16),
    .BITSIZE_in2(5),
    .BITSIZE_out1(32),
    .PRECISION(32)) fu_myproject_422558_423156 (.out1(out_ui_lshift_expr_FU_32_0_32_54_i12_fu_myproject_422558_423156),
    .in1(out_ui_plus_expr_FU_16_16_16_56_i3_fu_myproject_422558_423155),
    .in2(out_const_6));
  rshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(5),
    .BITSIZE_out1(16),
    .PRECISION(32)) fu_myproject_422558_423157 (.out1(out_rshift_expr_FU_32_0_32_47_i12_fu_myproject_422558_423157),
    .in1(out_UIdata_converter_FU_40_i0_fu_myproject_422558_423407),
    .in2(out_const_6));
  ui_plus_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(1),
    .BITSIZE_out1(32)) fu_myproject_422558_423158 (.out1(out_ui_plus_expr_FU_32_0_32_57_i1_fu_myproject_422558_423158),
    .in1(out_reg_5_reg_5),
    .in2(out_const_2));
  read_cond_FU #(.BITSIZE_in1(1)) fu_myproject_422558_423160 (.out1(out_read_cond_FU_45_i0_fu_myproject_422558_423160),
    .in1(out_reg_34_reg_34));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(3),
    .BITSIZE_out1(32),
    .LSB_PARAMETER(0)) fu_myproject_422558_423235 (.out1(out_ui_pointer_plus_expr_FU_32_0_32_58_i0_fu_myproject_422558_423235),
    .in1(in_port_layer2_out),
    .in2(out_const_4));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(4),
    .BITSIZE_out1(32),
    .LSB_PARAMETER(0)) fu_myproject_422558_423237 (.out1(out_ui_pointer_plus_expr_FU_32_0_32_59_i0_fu_myproject_422558_423237),
    .in1(in_port_layer2_out),
    .in2(out_const_5));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(4),
    .BITSIZE_out1(32),
    .LSB_PARAMETER(0)) fu_myproject_422558_423239 (.out1(out_ui_pointer_plus_expr_FU_32_0_32_60_i0_fu_myproject_422558_423239),
    .in1(in_port_layer2_out),
    .in2(out_const_10));
  IUdata_converter_FU #(.BITSIZE_in1(16),
    .BITSIZE_out1(32)) fu_myproject_422558_423280 (.out1(out_IUdata_converter_FU_41_i0_fu_myproject_422558_423280),
    .in1(out_rshift_expr_FU_32_0_32_47_i12_fu_myproject_422558_423157));
  IUdata_converter_FU #(.BITSIZE_in1(16),
    .BITSIZE_out1(32)) fu_myproject_422558_423283 (.out1(out_IUdata_converter_FU_42_i0_fu_myproject_422558_423283),
    .in1(out_rshift_expr_FU_32_0_32_47_i11_fu_myproject_422558_423151));
  IUdata_converter_FU #(.BITSIZE_in1(16),
    .BITSIZE_out1(32)) fu_myproject_422558_423286 (.out1(out_IUdata_converter_FU_43_i0_fu_myproject_422558_423286),
    .in1(out_rshift_expr_FU_32_0_32_47_i10_fu_myproject_422558_423145));
  IUdata_converter_FU #(.BITSIZE_in1(16),
    .BITSIZE_out1(32)) fu_myproject_422558_423289 (.out1(out_IUdata_converter_FU_44_i0_fu_myproject_422558_423289),
    .in1(out_rshift_expr_FU_32_0_32_47_i9_fu_myproject_422558_423139));
  ui_lshift_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(2),
    .BITSIZE_out1(32),
    .PRECISION(32)) fu_myproject_422558_423291 (.out1(out_ui_lshift_expr_FU_32_0_32_55_i0_fu_myproject_422558_423291),
    .in1(out_reg_11_reg_11),
    .in2(out_const_3));
  UIdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) fu_myproject_422558_423294 (.out1(out_UIdata_converter_FU_10_i0_fu_myproject_422558_423294),
    .in1(out_ui_lshift_expr_FU_32_0_32_54_i0_fu_myproject_422558_422658));
  addr_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(9)) fu_myproject_422558_423297 (.out1(out_addr_expr_FU_32_i0_fu_myproject_422558_423297),
    .in1(out_conv_out_const_11_9_32));
  ui_lshift_expr_FU #(.BITSIZE_in1(7),
    .BITSIZE_in2(2),
    .BITSIZE_out1(9),
    .PRECISION(32)) fu_myproject_422558_423299 (.out1(out_ui_lshift_expr_FU_16_0_16_52_i0_fu_myproject_422558_423299),
    .in1(out_ui_lshift_expr_FU_32_0_32_53_i0_fu_myproject_422558_422657),
    .in2(out_const_3));
  UIdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) fu_myproject_422558_423302 (.out1(out_UIdata_converter_FU_14_i0_fu_myproject_422558_423302),
    .in1(out_ui_lshift_expr_FU_32_0_32_54_i1_fu_myproject_422558_422662));
  IUdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(26)) fu_myproject_422558_423306 (.out1(out_IUdata_converter_FU_15_i0_fu_myproject_422558_423306),
    .in1(out_widen_mult_expr_FU_16_16_32_0_64_i0_fu_myproject_422558_422664));
  UIdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) fu_myproject_422558_423309 (.out1(out_UIdata_converter_FU_16_i0_fu_myproject_422558_423309),
    .in1(out_ui_lshift_expr_FU_32_0_32_54_i2_fu_myproject_422558_422666));
  IUdata_converter_FU #(.BITSIZE_in1(16),
    .BITSIZE_out1(32)) fu_myproject_422558_423313 (.out1(out_IUdata_converter_FU_17_i0_fu_myproject_422558_423313),
    .in1(out_rshift_expr_FU_32_0_32_47_i2_fu_myproject_422558_422667));
  ui_lshift_expr_FU #(.BITSIZE_in1(7),
    .BITSIZE_in2(2),
    .BITSIZE_out1(9),
    .PRECISION(32)) fu_myproject_422558_423318 (.out1(out_ui_lshift_expr_FU_16_0_16_52_i1_fu_myproject_422558_423318),
    .in1(out_ui_bit_ior_expr_FU_8_0_8_48_i0_fu_myproject_422558_422670),
    .in2(out_const_3));
  UIdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) fu_myproject_422558_423321 (.out1(out_UIdata_converter_FU_18_i0_fu_myproject_422558_423321),
    .in1(out_ui_lshift_expr_FU_32_0_32_54_i3_fu_myproject_422558_422673));
  IUdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(26)) fu_myproject_422558_423325 (.out1(out_IUdata_converter_FU_19_i0_fu_myproject_422558_423325),
    .in1(out_widen_mult_expr_FU_16_16_32_0_64_i1_fu_myproject_422558_422675));
  UIdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) fu_myproject_422558_423328 (.out1(out_UIdata_converter_FU_20_i0_fu_myproject_422558_423328),
    .in1(out_ui_lshift_expr_FU_32_0_32_54_i4_fu_myproject_422558_422677));
  IUdata_converter_FU #(.BITSIZE_in1(16),
    .BITSIZE_out1(32)) fu_myproject_422558_423332 (.out1(out_IUdata_converter_FU_21_i0_fu_myproject_422558_423332),
    .in1(out_rshift_expr_FU_32_0_32_47_i4_fu_myproject_422558_422678));
  ui_lshift_expr_FU #(.BITSIZE_in1(7),
    .BITSIZE_in2(2),
    .BITSIZE_out1(9),
    .PRECISION(32)) fu_myproject_422558_423337 (.out1(out_ui_lshift_expr_FU_16_0_16_52_i2_fu_myproject_422558_423337),
    .in1(out_ui_bit_ior_expr_FU_8_0_8_49_i0_fu_myproject_422558_422681),
    .in2(out_const_3));
  UIdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) fu_myproject_422558_423340 (.out1(out_UIdata_converter_FU_22_i0_fu_myproject_422558_423340),
    .in1(out_ui_lshift_expr_FU_32_0_32_54_i5_fu_myproject_422558_422684));
  IUdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(26)) fu_myproject_422558_423344 (.out1(out_IUdata_converter_FU_23_i0_fu_myproject_422558_423344),
    .in1(out_widen_mult_expr_FU_16_16_32_0_64_i2_fu_myproject_422558_422686));
  UIdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) fu_myproject_422558_423347 (.out1(out_UIdata_converter_FU_24_i0_fu_myproject_422558_423347),
    .in1(out_ui_lshift_expr_FU_32_0_32_54_i6_fu_myproject_422558_422688));
  IUdata_converter_FU #(.BITSIZE_in1(16),
    .BITSIZE_out1(32)) fu_myproject_422558_423351 (.out1(out_IUdata_converter_FU_25_i0_fu_myproject_422558_423351),
    .in1(out_rshift_expr_FU_32_0_32_47_i6_fu_myproject_422558_422689));
  ui_lshift_expr_FU #(.BITSIZE_in1(7),
    .BITSIZE_in2(2),
    .BITSIZE_out1(9),
    .PRECISION(32)) fu_myproject_422558_423356 (.out1(out_ui_lshift_expr_FU_16_0_16_52_i3_fu_myproject_422558_423356),
    .in1(out_ui_bit_ior_expr_FU_8_0_8_50_i0_fu_myproject_422558_422692),
    .in2(out_const_3));
  UIdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) fu_myproject_422558_423359 (.out1(out_UIdata_converter_FU_26_i0_fu_myproject_422558_423359),
    .in1(out_ui_lshift_expr_FU_32_0_32_54_i7_fu_myproject_422558_422695));
  IUdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(26)) fu_myproject_422558_423363 (.out1(out_IUdata_converter_FU_27_i0_fu_myproject_422558_423363),
    .in1(out_widen_mult_expr_FU_16_16_32_0_64_i3_fu_myproject_422558_422697));
  UIdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) fu_myproject_422558_423366 (.out1(out_UIdata_converter_FU_28_i0_fu_myproject_422558_423366),
    .in1(out_ui_lshift_expr_FU_32_0_32_54_i8_fu_myproject_422558_422699));
  IUdata_converter_FU #(.BITSIZE_in1(16),
    .BITSIZE_out1(32)) fu_myproject_422558_423370 (.out1(out_IUdata_converter_FU_29_i0_fu_myproject_422558_423370),
    .in1(out_rshift_expr_FU_32_0_32_47_i8_fu_myproject_422558_422700));
  ui_eq_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(5),
    .BITSIZE_out1(1)) fu_myproject_422558_423376 (.out1(out_ui_eq_expr_FU_32_0_32_51_i0_fu_myproject_422558_423376),
    .in1(out_ui_plus_expr_FU_32_0_32_57_i0_fu_myproject_422558_422703),
    .in2(out_const_6));
  ui_lshift_expr_FU #(.BITSIZE_in1(7),
    .BITSIZE_in2(2),
    .BITSIZE_out1(9),
    .PRECISION(32)) fu_myproject_422558_423389 (.out1(out_ui_lshift_expr_FU_16_0_16_52_i4_fu_myproject_422558_423389),
    .in1(out_ui_lshift_expr_FU_32_0_32_53_i1_fu_myproject_422558_423134),
    .in2(out_const_3));
  UIdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) fu_myproject_422558_423392 (.out1(out_UIdata_converter_FU_37_i0_fu_myproject_422558_423392),
    .in1(out_ui_lshift_expr_FU_32_0_32_54_i9_fu_myproject_422558_423138));
  ui_lshift_expr_FU #(.BITSIZE_in1(7),
    .BITSIZE_in2(2),
    .BITSIZE_out1(9),
    .PRECISION(32)) fu_myproject_422558_423394 (.out1(out_ui_lshift_expr_FU_16_0_16_52_i5_fu_myproject_422558_423394),
    .in1(out_ui_bit_ior_expr_FU_8_0_8_48_i1_fu_myproject_422558_423140),
    .in2(out_const_3));
  UIdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) fu_myproject_422558_423397 (.out1(out_UIdata_converter_FU_38_i0_fu_myproject_422558_423397),
    .in1(out_ui_lshift_expr_FU_32_0_32_54_i10_fu_myproject_422558_423144));
  ui_lshift_expr_FU #(.BITSIZE_in1(7),
    .BITSIZE_in2(2),
    .BITSIZE_out1(9),
    .PRECISION(32)) fu_myproject_422558_423399 (.out1(out_ui_lshift_expr_FU_16_0_16_52_i6_fu_myproject_422558_423399),
    .in1(out_ui_bit_ior_expr_FU_8_0_8_49_i1_fu_myproject_422558_423146),
    .in2(out_const_3));
  UIdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) fu_myproject_422558_423402 (.out1(out_UIdata_converter_FU_39_i0_fu_myproject_422558_423402),
    .in1(out_ui_lshift_expr_FU_32_0_32_54_i11_fu_myproject_422558_423150));
  ui_lshift_expr_FU #(.BITSIZE_in1(7),
    .BITSIZE_in2(2),
    .BITSIZE_out1(9),
    .PRECISION(32)) fu_myproject_422558_423404 (.out1(out_ui_lshift_expr_FU_16_0_16_52_i7_fu_myproject_422558_423404),
    .in1(out_ui_bit_ior_expr_FU_8_0_8_50_i1_fu_myproject_422558_423152),
    .in2(out_const_3));
  UIdata_converter_FU #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) fu_myproject_422558_423407 (.out1(out_UIdata_converter_FU_40_i0_fu_myproject_422558_423407),
    .in1(out_ui_lshift_expr_FU_32_0_32_54_i12_fu_myproject_422558_423156));
  ui_eq_expr_FU #(.BITSIZE_in1(32),
    .BITSIZE_in2(5),
    .BITSIZE_out1(1)) fu_myproject_422558_423409 (.out1(out_ui_eq_expr_FU_32_0_32_51_i1_fu_myproject_422558_423409),
    .in1(out_ui_plus_expr_FU_32_0_32_57_i1_fu_myproject_422558_423158),
    .in2(out_const_6));
  dense_1_input_bambu_artificial_ParmMgr_modgen #(.BITSIZE_in1(1),
    .PORTSIZE_in1(2),
    .BITSIZE_in2(6),
    .PORTSIZE_in2(2),
    .BITSIZE_in3(32),
    .PORTSIZE_in3(2),
    .BITSIZE_in4(32),
    .PORTSIZE_in4(2),
    .BITSIZE_out1(32),
    .PORTSIZE_out1(2)) fu_myproject_422558_423458 (.out1({null_out_signal_fu_myproject_422558_423458_out1_1,
      out_dense_1_input_bambu_artificial_ParmMgr_modgen_67_i0_fu_myproject_422558_423458}),
    ._dense_1_input_address0(_dense_1_input_address0),
    ._dense_1_input_address1(_dense_1_input_address1),
    ._dense_1_input_ce0(_dense_1_input_ce0),
    ._dense_1_input_ce1(_dense_1_input_ce1),
    .clock(clock),
    .reset(reset),
    .start_port({1'b0,
      selector_IN_UNBOUNDED_myproject_422558_423458}),
    .in1({1'b0,
      out_const_0}),
    .in2({6'b000000,
      out_const_7}),
    .in3({32'b00000000000000000000000000000000,
      out_conv_out_const_0_1_32}),
    .in4({32'b00000000000000000000000000000000,
      out_ui_pointer_plus_expr_FU_32_32_32_61_i0_fu_myproject_422558_422655}),
    ._dense_1_input_q0(_dense_1_input_q0),
    ._dense_1_input_q1(_dense_1_input_q1));
  const_size_in_1_bambu_artificial_ParmMgr_Write_valid_modgen #(.BITSIZE_in1(5),
    .PORTSIZE_in1(1),
    .BITSIZE_in2(5),
    .PORTSIZE_in2(1),
    .BITSIZE_in3(32),
    .PORTSIZE_in3(1)) fu_myproject_422558_423495 (._const_size_in_1(_const_size_in_1),
    ._const_size_in_1_vld(_const_size_in_1_vld),
    .start_port({selector_IN_UNBOUNDED_myproject_422558_423495}),
    .in1({out_const_6}),
    .in2({out_const_6}),
    .in3({in_port_const_size_in_1}));
  const_size_out_1_bambu_artificial_ParmMgr_Write_valid_modgen #(.BITSIZE_in1(5),
    .PORTSIZE_in1(1),
    .BITSIZE_in2(3),
    .PORTSIZE_in2(1),
    .BITSIZE_in3(32),
    .PORTSIZE_in3(1)) fu_myproject_422558_423508 (._const_size_out_1(_const_size_out_1),
    ._const_size_out_1_vld(_const_size_out_1_vld),
    .start_port({selector_IN_UNBOUNDED_myproject_422558_423508}),
    .in1({out_const_6}),
    .in2({out_const_4}),
    .in3({in_port_const_size_out_1}));
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(16),
    .BITSIZE_out1(16)) fu_myproject_422558_423511 (.out1(out_ASSIGN_SIGNED_FU_13_i0_fu_myproject_422558_423511),
    .in1(out_rshift_expr_FU_32_0_32_47_i0_fu_myproject_422558_422659));
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(16),
    .BITSIZE_out1(16)) fu_myproject_422558_423513 (.out1(out_ASSIGN_SIGNED_FU_12_i0_fu_myproject_422558_423513),
    .in1(out_rshift_expr_FU_32_0_32_47_i0_fu_myproject_422558_422659));
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(16),
    .BITSIZE_out1(16)) fu_myproject_422558_423515 (.out1(out_ASSIGN_SIGNED_FU_11_i0_fu_myproject_422558_423515),
    .in1(out_rshift_expr_FU_32_0_32_47_i0_fu_myproject_422558_422659));
  layer2_out_bambu_artificial_ParmMgr_modgen #(.BITSIZE_in1(1),
    .PORTSIZE_in1(2),
    .BITSIZE_in2(6),
    .PORTSIZE_in2(2),
    .BITSIZE_in3(32),
    .PORTSIZE_in3(2),
    .BITSIZE_in4(32),
    .PORTSIZE_in4(2),
    .BITSIZE_out1(32),
    .PORTSIZE_out1(2)) layer2_out_bambu_artificial_ParmMgr_modgen_68_i0 (.out1({null_out_signal_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_out1_1,
      null_out_signal_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_out1_0}),
    ._layer2_out_address0(_layer2_out_address0),
    ._layer2_out_address1(_layer2_out_address1),
    ._layer2_out_ce0(_layer2_out_ce0),
    ._layer2_out_ce1(_layer2_out_ce1),
    ._layer2_out_we0(_layer2_out_we0),
    ._layer2_out_we1(_layer2_out_we1),
    ._layer2_out_d0(_layer2_out_d0),
    ._layer2_out_d1(_layer2_out_d1),
    .clock(clock),
    .reset(reset),
    .start_port({s_start_port1,
      s_start_port0}),
    .in1({out_const_2,
      out_const_2}),
    .in2({out_const_7,
      out_const_7}),
    .in3({out_MUX_68_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_2_0_0,
      out_MUX_64_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_2_0_0}),
    .in4({out_MUX_69_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_3_0_0,
      out_MUX_65_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_3_0_0}));
  or or_or_start_port0( s_start_port0, selector_IN_UNBOUNDED_myproject_422558_423472, selector_IN_UNBOUNDED_myproject_422558_423478);
  or or_or_start_port1( s_start_port1, selector_IN_UNBOUNDED_myproject_422558_423475, selector_IN_UNBOUNDED_myproject_422558_423481);
  register_SE #(.BITSIZE_in1(9),
    .BITSIZE_out1(9)) reg_0 (.out1(out_reg_0_reg_0),
    .clock(clock),
    .reset(reset),
    .in1(out_addr_expr_FU_4_i0_fu_myproject_422558_423029),
    .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(16),
    .BITSIZE_out1(16)) reg_1 (.out1(out_reg_1_reg_1),
    .clock(clock),
    .reset(reset),
    .in1(out_conv_out_MUX_73_reg_1_0_0_0_32_16),
    .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) reg_10 (.out1(out_reg_10_reg_10),
    .clock(clock),
    .reset(reset),
    .in1(out_IUdata_converter_FU_42_i0_fu_myproject_422558_423283),
    .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) reg_11 (.out1(out_reg_11_reg_11),
    .clock(clock),
    .reset(reset),
    .in1(out_MUX_75_reg_11_0_0_0),
    .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(9),
    .BITSIZE_out1(9)) reg_12 (.out1(out_reg_12_reg_12),
    .clock(clock),
    .reset(reset),
    .in1(out_addr_expr_FU_32_i0_fu_myproject_422558_423297),
    .wenable(wrenable_reg_12));
  register_STD #(.BITSIZE_in1(9),
    .BITSIZE_out1(9)) reg_13 (.out1(out_reg_13_reg_13),
    .clock(clock),
    .reset(reset),
    .in1(out_ui_pointer_plus_expr_FU_8_8_8_62_i0_fu_myproject_422558_422660),
    .wenable(wrenable_reg_13));
  register_SE #(.BITSIZE_in1(9),
    .BITSIZE_out1(9)) reg_14 (.out1(out_reg_14_reg_14),
    .clock(clock),
    .reset(reset),
    .in1(out_ui_pointer_plus_expr_FU_8_8_8_62_i1_fu_myproject_422558_422668),
    .wenable(wrenable_reg_14));
  register_STD #(.BITSIZE_in1(9),
    .BITSIZE_out1(9)) reg_15 (.out1(out_reg_15_reg_15),
    .clock(clock),
    .reset(reset),
    .in1(out_ui_pointer_plus_expr_FU_8_8_8_62_i2_fu_myproject_422558_422671),
    .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(9),
    .BITSIZE_out1(9)) reg_16 (.out1(out_reg_16_reg_16),
    .clock(clock),
    .reset(reset),
    .in1(out_ui_pointer_plus_expr_FU_8_8_8_62_i3_fu_myproject_422558_422679),
    .wenable(wrenable_reg_16));
  register_STD #(.BITSIZE_in1(9),
    .BITSIZE_out1(9)) reg_17 (.out1(out_reg_17_reg_17),
    .clock(clock),
    .reset(reset),
    .in1(out_ui_pointer_plus_expr_FU_8_8_8_62_i4_fu_myproject_422558_422682),
    .wenable(wrenable_reg_17));
  register_SE #(.BITSIZE_in1(9),
    .BITSIZE_out1(9)) reg_18 (.out1(out_reg_18_reg_18),
    .clock(clock),
    .reset(reset),
    .in1(out_ui_pointer_plus_expr_FU_8_8_8_62_i5_fu_myproject_422558_422690),
    .wenable(wrenable_reg_18));
  register_STD #(.BITSIZE_in1(9),
    .BITSIZE_out1(9)) reg_19 (.out1(out_reg_19_reg_19),
    .clock(clock),
    .reset(reset),
    .in1(out_ui_pointer_plus_expr_FU_8_8_8_62_i6_fu_myproject_422558_422693),
    .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(16),
    .BITSIZE_out1(16)) reg_2 (.out1(out_reg_2_reg_2),
    .clock(clock),
    .reset(reset),
    .in1(out_conv_out_MUX_84_reg_2_0_0_0_32_16),
    .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(9),
    .BITSIZE_out1(9)) reg_20 (.out1(out_reg_20_reg_20),
    .clock(clock),
    .reset(reset),
    .in1(out_ui_pointer_plus_expr_FU_8_8_8_62_i7_fu_myproject_422558_422701),
    .wenable(wrenable_reg_20));
  register_SE #(.BITSIZE_in1(1),
    .BITSIZE_out1(1)) reg_21 (.out1(out_reg_21_reg_21),
    .clock(clock),
    .reset(reset),
    .in1(out_ui_eq_expr_FU_32_0_32_51_i0_fu_myproject_422558_423376),
    .wenable(wrenable_reg_21));
  register_STD #(.BITSIZE_in1(16),
    .BITSIZE_out1(16)) reg_22 (.out1(out_reg_22_reg_22),
    .clock(clock),
    .reset(reset),
    .in1(out_rshift_expr_FU_32_0_32_47_i0_fu_myproject_422558_422659),
    .wenable(wrenable_reg_22));
  register_STD #(.BITSIZE_in1(16),
    .BITSIZE_out1(16)) reg_23 (.out1(out_reg_23_reg_23),
    .clock(clock),
    .reset(reset),
    .in1(out_rshift_expr_FU_32_0_32_47_i1_fu_myproject_422558_422663),
    .wenable(wrenable_reg_23));
  register_STD #(.BITSIZE_in1(16),
    .BITSIZE_out1(16)) reg_24 (.out1(out_reg_24_reg_24),
    .clock(clock),
    .reset(reset),
    .in1(out_rshift_expr_FU_32_0_32_47_i3_fu_myproject_422558_422674),
    .wenable(wrenable_reg_24));
  register_STD #(.BITSIZE_in1(16),
    .BITSIZE_out1(16)) reg_25 (.out1(out_reg_25_reg_25),
    .clock(clock),
    .reset(reset),
    .in1(out_rshift_expr_FU_32_0_32_47_i5_fu_myproject_422558_422685),
    .wenable(wrenable_reg_25));
  register_STD #(.BITSIZE_in1(16),
    .BITSIZE_out1(16)) reg_26 (.out1(out_reg_26_reg_26),
    .clock(clock),
    .reset(reset),
    .in1(out_rshift_expr_FU_32_0_32_47_i7_fu_myproject_422558_422696),
    .wenable(wrenable_reg_26));
  register_STD #(.BITSIZE_in1(16),
    .BITSIZE_out1(16)) reg_27 (.out1(out_reg_27_reg_27),
    .clock(clock),
    .reset(reset),
    .in1(out_ASSIGN_SIGNED_FU_13_i0_fu_myproject_422558_423511),
    .wenable(wrenable_reg_27));
  register_STD #(.BITSIZE_in1(16),
    .BITSIZE_out1(16)) reg_28 (.out1(out_reg_28_reg_28),
    .clock(clock),
    .reset(reset),
    .in1(out_ASSIGN_SIGNED_FU_12_i0_fu_myproject_422558_423513),
    .wenable(wrenable_reg_28));
  register_STD #(.BITSIZE_in1(16),
    .BITSIZE_out1(16)) reg_29 (.out1(out_reg_29_reg_29),
    .clock(clock),
    .reset(reset),
    .in1(out_ASSIGN_SIGNED_FU_11_i0_fu_myproject_422558_423515),
    .wenable(wrenable_reg_29));
  register_SE #(.BITSIZE_in1(16),
    .BITSIZE_out1(16)) reg_3 (.out1(out_reg_3_reg_3),
    .clock(clock),
    .reset(reset),
    .in1(out_conv_out_MUX_95_reg_3_0_0_0_32_16),
    .wenable(wrenable_reg_3));
  register_STD #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) reg_30 (.out1(out_reg_30_reg_30),
    .clock(clock),
    .reset(reset),
    .in1(out_IUdata_converter_FU_25_i0_fu_myproject_422558_423351),
    .wenable(wrenable_reg_30));
  register_STD #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) reg_31 (.out1(out_reg_31_reg_31),
    .clock(clock),
    .reset(reset),
    .in1(out_IUdata_converter_FU_29_i0_fu_myproject_422558_423370),
    .wenable(wrenable_reg_31));
  register_SE #(.BITSIZE_in1(9),
    .BITSIZE_out1(9)) reg_32 (.out1(out_reg_32_reg_32),
    .clock(clock),
    .reset(reset),
    .in1(out_ui_pointer_plus_expr_FU_8_8_8_62_i10_fu_myproject_422558_423147),
    .wenable(wrenable_reg_32));
  register_SE #(.BITSIZE_in1(9),
    .BITSIZE_out1(9)) reg_33 (.out1(out_reg_33_reg_33),
    .clock(clock),
    .reset(reset),
    .in1(out_ui_pointer_plus_expr_FU_8_8_8_62_i11_fu_myproject_422558_423153),
    .wenable(wrenable_reg_33));
  register_SE #(.BITSIZE_in1(1),
    .BITSIZE_out1(1)) reg_34 (.out1(out_reg_34_reg_34),
    .clock(clock),
    .reset(reset),
    .in1(out_ui_eq_expr_FU_32_0_32_51_i1_fu_myproject_422558_423409),
    .wenable(wrenable_reg_34));
  register_STD #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) reg_35 (.out1(out_reg_35_reg_35),
    .clock(clock),
    .reset(reset),
    .in1(out_IUdata_converter_FU_43_i0_fu_myproject_422558_423286),
    .wenable(wrenable_reg_35));
  register_STD #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) reg_36 (.out1(out_reg_36_reg_36),
    .clock(clock),
    .reset(reset),
    .in1(out_IUdata_converter_FU_44_i0_fu_myproject_422558_423289),
    .wenable(wrenable_reg_36));
  register_SE #(.BITSIZE_in1(16),
    .BITSIZE_out1(16)) reg_4 (.out1(out_reg_4_reg_4),
    .clock(clock),
    .reset(reset),
    .in1(out_conv_out_MUX_103_reg_4_0_0_0_32_16),
    .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) reg_5 (.out1(out_reg_5_reg_5),
    .clock(clock),
    .reset(reset),
    .in1(out_MUX_104_reg_5_0_0_0),
    .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) reg_6 (.out1(out_reg_6_reg_6),
    .clock(clock),
    .reset(reset),
    .in1(out_ui_pointer_plus_expr_FU_32_0_32_58_i0_fu_myproject_422558_423235),
    .wenable(wrenable_reg_6));
  register_SE #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) reg_7 (.out1(out_reg_7_reg_7),
    .clock(clock),
    .reset(reset),
    .in1(out_ui_pointer_plus_expr_FU_32_0_32_59_i0_fu_myproject_422558_423237),
    .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) reg_8 (.out1(out_reg_8_reg_8),
    .clock(clock),
    .reset(reset),
    .in1(out_ui_pointer_plus_expr_FU_32_0_32_60_i0_fu_myproject_422558_423239),
    .wenable(wrenable_reg_8));
  register_SE #(.BITSIZE_in1(32),
    .BITSIZE_out1(32)) reg_9 (.out1(out_reg_9_reg_9),
    .clock(clock),
    .reset(reset),
    .in1(out_IUdata_converter_FU_41_i0_fu_myproject_422558_423280),
    .wenable(wrenable_reg_9));
  // io-signal post fix
  assign OUT_CONDITION_myproject_422558_422705 = out_read_cond_FU_30_i0_fu_myproject_422558_422705;
  assign OUT_CONDITION_myproject_422558_423160 = out_read_cond_FU_45_i0_fu_myproject_422558_423160;

endmodule

// FSM based controller description for myproject
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_myproject(done_port,
  fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_LOAD,
  fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_STORE,
  fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_LOAD,
  fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_STORE,
  fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD,
  fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE,
  fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD,
  fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE,
  fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_LOAD,
  fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_STORE,
  fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_LOAD,
  fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_STORE,
  selector_IN_UNBOUNDED_myproject_422558_423458,
  selector_IN_UNBOUNDED_myproject_422558_423472,
  selector_IN_UNBOUNDED_myproject_422558_423475,
  selector_IN_UNBOUNDED_myproject_422558_423478,
  selector_IN_UNBOUNDED_myproject_422558_423481,
  selector_IN_UNBOUNDED_myproject_422558_423495,
  selector_IN_UNBOUNDED_myproject_422558_423508,
  selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_0_0_0,
  selector_MUX_103_reg_4_0_0_0,
  selector_MUX_104_reg_5_0_0_0,
  selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_0,
  selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_1,
  selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_1_0,
  selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_0_0_0,
  selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_0,
  selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_1,
  selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_1_0,
  selector_MUX_64_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_2_0_0,
  selector_MUX_65_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_3_0_0,
  selector_MUX_68_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_2_0_0,
  selector_MUX_69_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_3_0_0,
  selector_MUX_73_reg_1_0_0_0,
  selector_MUX_75_reg_11_0_0_0,
  selector_MUX_84_reg_2_0_0_0,
  selector_MUX_95_reg_3_0_0_0,
  wrenable_reg_0,
  wrenable_reg_1,
  wrenable_reg_10,
  wrenable_reg_11,
  wrenable_reg_12,
  wrenable_reg_13,
  wrenable_reg_14,
  wrenable_reg_15,
  wrenable_reg_16,
  wrenable_reg_17,
  wrenable_reg_18,
  wrenable_reg_19,
  wrenable_reg_2,
  wrenable_reg_20,
  wrenable_reg_21,
  wrenable_reg_22,
  wrenable_reg_23,
  wrenable_reg_24,
  wrenable_reg_25,
  wrenable_reg_26,
  wrenable_reg_27,
  wrenable_reg_28,
  wrenable_reg_29,
  wrenable_reg_3,
  wrenable_reg_30,
  wrenable_reg_31,
  wrenable_reg_32,
  wrenable_reg_33,
  wrenable_reg_34,
  wrenable_reg_35,
  wrenable_reg_36,
  wrenable_reg_4,
  wrenable_reg_5,
  wrenable_reg_6,
  wrenable_reg_7,
  wrenable_reg_8,
  wrenable_reg_9,
  OUT_CONDITION_myproject_422558_422705,
  OUT_CONDITION_myproject_422558_423160,
  OUT_UNBOUNDED_myproject_422558_423458,
  OUT_UNBOUNDED_myproject_422558_423472,
  OUT_UNBOUNDED_myproject_422558_423475,
  OUT_UNBOUNDED_myproject_422558_423478,
  OUT_UNBOUNDED_myproject_422558_423481,
  OUT_UNBOUNDED_myproject_422558_423495,
  OUT_UNBOUNDED_myproject_422558_423508,
  clock,
  reset,
  start_port);
  // IN
  input OUT_CONDITION_myproject_422558_422705;
  input OUT_CONDITION_myproject_422558_423160;
  input OUT_UNBOUNDED_myproject_422558_423458;
  input OUT_UNBOUNDED_myproject_422558_423472;
  input OUT_UNBOUNDED_myproject_422558_423475;
  input OUT_UNBOUNDED_myproject_422558_423478;
  input OUT_UNBOUNDED_myproject_422558_423481;
  input OUT_UNBOUNDED_myproject_422558_423495;
  input OUT_UNBOUNDED_myproject_422558_423508;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_STORE;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_LOAD;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_STORE;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_LOAD;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_STORE;
  output selector_IN_UNBOUNDED_myproject_422558_423458;
  output selector_IN_UNBOUNDED_myproject_422558_423472;
  output selector_IN_UNBOUNDED_myproject_422558_423475;
  output selector_IN_UNBOUNDED_myproject_422558_423478;
  output selector_IN_UNBOUNDED_myproject_422558_423481;
  output selector_IN_UNBOUNDED_myproject_422558_423495;
  output selector_IN_UNBOUNDED_myproject_422558_423508;
  output selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_0_0_0;
  output selector_MUX_103_reg_4_0_0_0;
  output selector_MUX_104_reg_5_0_0_0;
  output selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_0;
  output selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_1;
  output selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_1_0;
  output selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_0_0_0;
  output selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_0;
  output selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_1;
  output selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_1_0;
  output selector_MUX_64_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_2_0_0;
  output selector_MUX_65_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_3_0_0;
  output selector_MUX_68_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_2_0_0;
  output selector_MUX_69_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_3_0_0;
  output selector_MUX_73_reg_1_0_0_0;
  output selector_MUX_75_reg_11_0_0_0;
  output selector_MUX_84_reg_2_0_0_0;
  output selector_MUX_95_reg_3_0_0_0;
  output wrenable_reg_0;
  output wrenable_reg_1;
  output wrenable_reg_10;
  output wrenable_reg_11;
  output wrenable_reg_12;
  output wrenable_reg_13;
  output wrenable_reg_14;
  output wrenable_reg_15;
  output wrenable_reg_16;
  output wrenable_reg_17;
  output wrenable_reg_18;
  output wrenable_reg_19;
  output wrenable_reg_2;
  output wrenable_reg_20;
  output wrenable_reg_21;
  output wrenable_reg_22;
  output wrenable_reg_23;
  output wrenable_reg_24;
  output wrenable_reg_25;
  output wrenable_reg_26;
  output wrenable_reg_27;
  output wrenable_reg_28;
  output wrenable_reg_29;
  output wrenable_reg_3;
  output wrenable_reg_30;
  output wrenable_reg_31;
  output wrenable_reg_32;
  output wrenable_reg_33;
  output wrenable_reg_34;
  output wrenable_reg_35;
  output wrenable_reg_36;
  output wrenable_reg_4;
  output wrenable_reg_5;
  output wrenable_reg_6;
  output wrenable_reg_7;
  output wrenable_reg_8;
  output wrenable_reg_9;
  parameter [10:0] S_4 = 11'b00000010000,
    S_10 = 11'b10000000000,
    S_0 = 11'b00000000001,
    S_1 = 11'b00000000010,
    S_2 = 11'b00000000100,
    S_3 = 11'b00000001000,
    S_5 = 11'b00000100000,
    S_6 = 11'b00001000000,
    S_8 = 11'b00100000000,
    S_9 = 11'b01000000000;
  reg [10:0] _present_state=S_4, _next_state;
  reg done_port;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_STORE;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_LOAD;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_STORE;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_LOAD;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_STORE;
  reg selector_IN_UNBOUNDED_myproject_422558_423458;
  reg selector_IN_UNBOUNDED_myproject_422558_423472;
  reg selector_IN_UNBOUNDED_myproject_422558_423475;
  reg selector_IN_UNBOUNDED_myproject_422558_423478;
  reg selector_IN_UNBOUNDED_myproject_422558_423481;
  reg selector_IN_UNBOUNDED_myproject_422558_423495;
  reg selector_IN_UNBOUNDED_myproject_422558_423508;
  reg selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_0_0_0;
  reg selector_MUX_103_reg_4_0_0_0;
  reg selector_MUX_104_reg_5_0_0_0;
  reg selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_0;
  reg selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_1;
  reg selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_1_0;
  reg selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_0_0_0;
  reg selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_0;
  reg selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_1;
  reg selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_1_0;
  reg selector_MUX_64_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_2_0_0;
  reg selector_MUX_65_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_3_0_0;
  reg selector_MUX_68_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_2_0_0;
  reg selector_MUX_69_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_3_0_0;
  reg selector_MUX_73_reg_1_0_0_0;
  reg selector_MUX_75_reg_11_0_0_0;
  reg selector_MUX_84_reg_2_0_0_0;
  reg selector_MUX_95_reg_3_0_0_0;
  reg wrenable_reg_0;
  reg wrenable_reg_1;
  reg wrenable_reg_10;
  reg wrenable_reg_11;
  reg wrenable_reg_12;
  reg wrenable_reg_13;
  reg wrenable_reg_14;
  reg wrenable_reg_15;
  reg wrenable_reg_16;
  reg wrenable_reg_17;
  reg wrenable_reg_18;
  reg wrenable_reg_19;
  reg wrenable_reg_2;
  reg wrenable_reg_20;
  reg wrenable_reg_21;
  reg wrenable_reg_22;
  reg wrenable_reg_23;
  reg wrenable_reg_24;
  reg wrenable_reg_25;
  reg wrenable_reg_26;
  reg wrenable_reg_27;
  reg wrenable_reg_28;
  reg wrenable_reg_29;
  reg wrenable_reg_3;
  reg wrenable_reg_30;
  reg wrenable_reg_31;
  reg wrenable_reg_32;
  reg wrenable_reg_33;
  reg wrenable_reg_34;
  reg wrenable_reg_35;
  reg wrenable_reg_36;
  reg wrenable_reg_4;
  reg wrenable_reg_5;
  reg wrenable_reg_6;
  reg wrenable_reg_7;
  reg wrenable_reg_8;
  reg wrenable_reg_9;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_4;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_STORE = 1'b0;
    selector_IN_UNBOUNDED_myproject_422558_423458 = 1'b0;
    selector_IN_UNBOUNDED_myproject_422558_423472 = 1'b0;
    selector_IN_UNBOUNDED_myproject_422558_423475 = 1'b0;
    selector_IN_UNBOUNDED_myproject_422558_423478 = 1'b0;
    selector_IN_UNBOUNDED_myproject_422558_423481 = 1'b0;
    selector_IN_UNBOUNDED_myproject_422558_423495 = 1'b0;
    selector_IN_UNBOUNDED_myproject_422558_423508 = 1'b0;
    selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_0_0_0 = 1'b0;
    selector_MUX_103_reg_4_0_0_0 = 1'b0;
    selector_MUX_104_reg_5_0_0_0 = 1'b0;
    selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_0 = 1'b0;
    selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_1 = 1'b0;
    selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_1_0 = 1'b0;
    selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_0_0_0 = 1'b0;
    selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_0 = 1'b0;
    selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_1 = 1'b0;
    selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_1_0 = 1'b0;
    selector_MUX_64_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_2_0_0 = 1'b0;
    selector_MUX_65_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_3_0_0 = 1'b0;
    selector_MUX_68_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_2_0_0 = 1'b0;
    selector_MUX_69_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_3_0_0 = 1'b0;
    selector_MUX_73_reg_1_0_0_0 = 1'b0;
    selector_MUX_75_reg_11_0_0_0 = 1'b0;
    selector_MUX_84_reg_2_0_0_0 = 1'b0;
    selector_MUX_95_reg_3_0_0_0 = 1'b0;
    wrenable_reg_0 = 1'b0;
    wrenable_reg_1 = 1'b0;
    wrenable_reg_10 = 1'b0;
    wrenable_reg_11 = 1'b0;
    wrenable_reg_12 = 1'b0;
    wrenable_reg_13 = 1'b0;
    wrenable_reg_14 = 1'b0;
    wrenable_reg_15 = 1'b0;
    wrenable_reg_16 = 1'b0;
    wrenable_reg_17 = 1'b0;
    wrenable_reg_18 = 1'b0;
    wrenable_reg_19 = 1'b0;
    wrenable_reg_2 = 1'b0;
    wrenable_reg_20 = 1'b0;
    wrenable_reg_21 = 1'b0;
    wrenable_reg_22 = 1'b0;
    wrenable_reg_23 = 1'b0;
    wrenable_reg_24 = 1'b0;
    wrenable_reg_25 = 1'b0;
    wrenable_reg_26 = 1'b0;
    wrenable_reg_27 = 1'b0;
    wrenable_reg_28 = 1'b0;
    wrenable_reg_29 = 1'b0;
    wrenable_reg_3 = 1'b0;
    wrenable_reg_30 = 1'b0;
    wrenable_reg_31 = 1'b0;
    wrenable_reg_32 = 1'b0;
    wrenable_reg_33 = 1'b0;
    wrenable_reg_34 = 1'b0;
    wrenable_reg_35 = 1'b0;
    wrenable_reg_36 = 1'b0;
    wrenable_reg_4 = 1'b0;
    wrenable_reg_5 = 1'b0;
    wrenable_reg_6 = 1'b0;
    wrenable_reg_7 = 1'b0;
    wrenable_reg_8 = 1'b0;
    wrenable_reg_9 = 1'b0;
    case (_present_state)
      S_4 :
        if(start_port == 1'b1)
        begin
          selector_IN_UNBOUNDED_myproject_422558_423495 = 1'b1;
          selector_IN_UNBOUNDED_myproject_422558_423508 = 1'b1;
          selector_MUX_75_reg_11_0_0_0 = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_12 = 1'b1;
          wrenable_reg_6 = 1'b1;
          wrenable_reg_7 = 1'b1;
          wrenable_reg_8 = 1'b1;
          _next_state = S_0;
        end
        else
        begin
          _next_state = S_4;
        end
      S_10 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_LOAD = 1'b1;
          selector_MUX_73_reg_1_0_0_0 = 1'b1;
          selector_MUX_84_reg_2_0_0_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_32 = 1'b1;
          wrenable_reg_33 = 1'b1;
          wrenable_reg_34 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_6;
        end
      S_0 :
        begin
          selector_IN_UNBOUNDED_myproject_422558_423458 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_14 = 1'b1;
          wrenable_reg_15 = 1'b1;
          wrenable_reg_16 = 1'b1;
          wrenable_reg_17 = 1'b1;
          wrenable_reg_18 = 1'b1;
          wrenable_reg_19 = 1'b1;
          wrenable_reg_20 = 1'b1;
          wrenable_reg_21 = 1'b1;
          _next_state = S_1;
        end
      S_1 :
        begin
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_LOAD = 1'b1;
          wrenable_reg_22 = 1'b1;
          wrenable_reg_23 = 1'b1;
          wrenable_reg_24 = 1'b1;
          wrenable_reg_25 = 1'b1;
          wrenable_reg_26 = 1'b1;
          wrenable_reg_27 = 1'b1;
          wrenable_reg_28 = 1'b1;
          wrenable_reg_29 = 1'b1;
          _next_state = S_2;
        end
      S_2 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_STORE = 1'b1;
          selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_0_0_0 = 1'b1;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_1 = 1'b1;
          selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_0_0_0 = 1'b1;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_1 = 1'b1;
          wrenable_reg_30 = 1'b1;
          wrenable_reg_31 = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_STORE = 1'b1;
          selector_MUX_104_reg_5_0_0_0 = 1'b1;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_1_0 = 1'b1;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_1_0 = 1'b1;
          selector_MUX_95_reg_3_0_0_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_5 = 1'b1;
          if (OUT_CONDITION_myproject_422558_422705 == 1'b1)
            begin
              _next_state = S_5;
            end
          else
            begin
              _next_state = S_0;
              selector_MUX_104_reg_5_0_0_0 = 1'b0;
              selector_MUX_95_reg_3_0_0_0 = 1'b0;
              wrenable_reg_1 = 1'b0;
              wrenable_reg_2 = 1'b0;
              wrenable_reg_3 = 1'b0;
              wrenable_reg_4 = 1'b0;
              wrenable_reg_5 = 1'b0;
            end
        end
      S_5 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_LOAD = 1'b1;
          wrenable_reg_32 = 1'b1;
          wrenable_reg_33 = 1'b1;
          wrenable_reg_34 = 1'b1;
          wrenable_reg_5 = 1'b1;
          _next_state = S_6;
        end
      S_6 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_LOAD = 1'b1;
          selector_MUX_103_reg_4_0_0_0 = 1'b1;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_0 = 1'b1;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_1_0 = 1'b1;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_0 = 1'b1;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_1_0 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_35 = 1'b1;
          wrenable_reg_36 = 1'b1;
          wrenable_reg_4 = 1'b1;
          if (OUT_CONDITION_myproject_422558_423160 == 1'b1)
            begin
              _next_state = S_8;
              selector_MUX_103_reg_4_0_0_0 = 1'b0;
              wrenable_reg_3 = 1'b0;
              wrenable_reg_4 = 1'b0;
            end
          else
            begin
              _next_state = S_10;
              wrenable_reg_35 = 1'b0;
              wrenable_reg_36 = 1'b0;
            end
        end
      S_8 :
        begin
          selector_IN_UNBOUNDED_myproject_422558_423472 = 1'b1;
          selector_IN_UNBOUNDED_myproject_422558_423475 = 1'b1;
          selector_MUX_64_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_2_0_0 = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_9;
          done_port = 1'b1;
        end
      S_9 :
        begin
          selector_IN_UNBOUNDED_myproject_422558_423478 = 1'b1;
          selector_IN_UNBOUNDED_myproject_422558_423481 = 1'b1;
          selector_MUX_65_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_3_0_0 = 1'b1;
          selector_MUX_68_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_2_0_0 = 1'b1;
          selector_MUX_69_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_3_0_0 = 1'b1;
          _next_state = S_4;
        end
      default :
        begin
          _next_state = S_4;
        end
    endcase
  end
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2021 Politecnico di Milano
// Author(s): Marco Lattuada <marco.lattuada@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module flipflop_AR(clock,
  reset,
  in1,
  out1);
  parameter BITSIZE_in1=1,
    BITSIZE_out1=1;
  // IN
  input clock;
  input reset;
  input in1;
  // OUT
  output out1;
  
  reg reg_out1 =0;
  assign out1 = reg_out1;
  always @(posedge clock )
    if (reset == 1'b0)
      reg_out1 <= {BITSIZE_out1{1'b0}};
    else
      reg_out1 <= in1;
endmodule

// Top component for myproject
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module _myproject(clock,
  reset,
  start_port,
  done_port,
  dense_1_input,
  layer2_out,
  const_size_in_1,
  const_size_out_1,
  _dense_1_input_q0,
  _dense_1_input_q1,
  _const_size_in_1,
  _const_size_in_1_vld,
  _const_size_out_1,
  _const_size_out_1_vld,
  _dense_1_input_address0,
  _dense_1_input_address1,
  _dense_1_input_ce0,
  _dense_1_input_ce1,
  _layer2_out_address0,
  _layer2_out_address1,
  _layer2_out_ce0,
  _layer2_out_ce1,
  _layer2_out_we0,
  _layer2_out_we1,
  _layer2_out_d0,
  _layer2_out_d1);
  // IN
  input clock;
  input reset;
  input start_port;
  input [31:0] dense_1_input;
  input [31:0] layer2_out;
  input [31:0] const_size_in_1;
  input [31:0] const_size_out_1;
  input [15:0] _dense_1_input_q0;
  input [15:0] _dense_1_input_q1;
  // OUT
  output done_port;
  output [15:0] _const_size_in_1;
  output _const_size_in_1_vld;
  output [15:0] _const_size_out_1;
  output _const_size_out_1_vld;
  output [3:0] _dense_1_input_address0;
  output [3:0] _dense_1_input_address1;
  output _dense_1_input_ce0;
  output _dense_1_input_ce1;
  output [1:0] _layer2_out_address0;
  output [1:0] _layer2_out_address1;
  output _layer2_out_ce0;
  output _layer2_out_ce1;
  output _layer2_out_we0;
  output _layer2_out_we1;
  output [15:0] _layer2_out_d0;
  output [15:0] _layer2_out_d1;
  // Component and signal declarations
  wire OUT_CONDITION_myproject_422558_422705;
  wire OUT_CONDITION_myproject_422558_423160;
  wire OUT_UNBOUNDED_myproject_422558_423458;
  wire OUT_UNBOUNDED_myproject_422558_423472;
  wire OUT_UNBOUNDED_myproject_422558_423475;
  wire OUT_UNBOUNDED_myproject_422558_423478;
  wire OUT_UNBOUNDED_myproject_422558_423481;
  wire OUT_UNBOUNDED_myproject_422558_423495;
  wire OUT_UNBOUNDED_myproject_422558_423508;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_STORE;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_LOAD;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_STORE;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_LOAD;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_STORE;
  wire selector_IN_UNBOUNDED_myproject_422558_423458;
  wire selector_IN_UNBOUNDED_myproject_422558_423472;
  wire selector_IN_UNBOUNDED_myproject_422558_423475;
  wire selector_IN_UNBOUNDED_myproject_422558_423478;
  wire selector_IN_UNBOUNDED_myproject_422558_423481;
  wire selector_IN_UNBOUNDED_myproject_422558_423495;
  wire selector_IN_UNBOUNDED_myproject_422558_423508;
  wire selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_0_0_0;
  wire selector_MUX_103_reg_4_0_0_0;
  wire selector_MUX_104_reg_5_0_0_0;
  wire selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_0;
  wire selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_1;
  wire selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_1_0;
  wire selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_0_0_0;
  wire selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_0;
  wire selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_1;
  wire selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_1_0;
  wire selector_MUX_64_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_2_0_0;
  wire selector_MUX_65_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_3_0_0;
  wire selector_MUX_68_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_2_0_0;
  wire selector_MUX_69_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_3_0_0;
  wire selector_MUX_73_reg_1_0_0_0;
  wire selector_MUX_75_reg_11_0_0_0;
  wire selector_MUX_84_reg_2_0_0_0;
  wire selector_MUX_95_reg_3_0_0_0;
  wire wrenable_reg_0;
  wire wrenable_reg_1;
  wire wrenable_reg_10;
  wire wrenable_reg_11;
  wire wrenable_reg_12;
  wire wrenable_reg_13;
  wire wrenable_reg_14;
  wire wrenable_reg_15;
  wire wrenable_reg_16;
  wire wrenable_reg_17;
  wire wrenable_reg_18;
  wire wrenable_reg_19;
  wire wrenable_reg_2;
  wire wrenable_reg_20;
  wire wrenable_reg_21;
  wire wrenable_reg_22;
  wire wrenable_reg_23;
  wire wrenable_reg_24;
  wire wrenable_reg_25;
  wire wrenable_reg_26;
  wire wrenable_reg_27;
  wire wrenable_reg_28;
  wire wrenable_reg_29;
  wire wrenable_reg_3;
  wire wrenable_reg_30;
  wire wrenable_reg_31;
  wire wrenable_reg_32;
  wire wrenable_reg_33;
  wire wrenable_reg_34;
  wire wrenable_reg_35;
  wire wrenable_reg_36;
  wire wrenable_reg_4;
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_myproject Controller_i (.done_port(done_delayed_REG_signal_in),
    .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_LOAD),
    .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_STORE),
    .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_LOAD),
    .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_STORE),
    .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD),
    .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE),
    .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD),
    .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE),
    .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_LOAD),
    .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_STORE),
    .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_LOAD),
    .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_STORE),
    .selector_IN_UNBOUNDED_myproject_422558_423458(selector_IN_UNBOUNDED_myproject_422558_423458),
    .selector_IN_UNBOUNDED_myproject_422558_423472(selector_IN_UNBOUNDED_myproject_422558_423472),
    .selector_IN_UNBOUNDED_myproject_422558_423475(selector_IN_UNBOUNDED_myproject_422558_423475),
    .selector_IN_UNBOUNDED_myproject_422558_423478(selector_IN_UNBOUNDED_myproject_422558_423478),
    .selector_IN_UNBOUNDED_myproject_422558_423481(selector_IN_UNBOUNDED_myproject_422558_423481),
    .selector_IN_UNBOUNDED_myproject_422558_423495(selector_IN_UNBOUNDED_myproject_422558_423495),
    .selector_IN_UNBOUNDED_myproject_422558_423508(selector_IN_UNBOUNDED_myproject_422558_423508),
    .selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_0_0_0(selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_0_0_0),
    .selector_MUX_103_reg_4_0_0_0(selector_MUX_103_reg_4_0_0_0),
    .selector_MUX_104_reg_5_0_0_0(selector_MUX_104_reg_5_0_0_0),
    .selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_0(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_0),
    .selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_1(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_1),
    .selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_1_0(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_1_0),
    .selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_0_0_0(selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_0_0_0),
    .selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_0(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_0),
    .selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_1(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_1),
    .selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_1_0(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_1_0),
    .selector_MUX_64_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_2_0_0(selector_MUX_64_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_2_0_0),
    .selector_MUX_65_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_3_0_0(selector_MUX_65_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_3_0_0),
    .selector_MUX_68_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_2_0_0(selector_MUX_68_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_2_0_0),
    .selector_MUX_69_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_3_0_0(selector_MUX_69_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_3_0_0),
    .selector_MUX_73_reg_1_0_0_0(selector_MUX_73_reg_1_0_0_0),
    .selector_MUX_75_reg_11_0_0_0(selector_MUX_75_reg_11_0_0_0),
    .selector_MUX_84_reg_2_0_0_0(selector_MUX_84_reg_2_0_0_0),
    .selector_MUX_95_reg_3_0_0_0(selector_MUX_95_reg_3_0_0_0),
    .wrenable_reg_0(wrenable_reg_0),
    .wrenable_reg_1(wrenable_reg_1),
    .wrenable_reg_10(wrenable_reg_10),
    .wrenable_reg_11(wrenable_reg_11),
    .wrenable_reg_12(wrenable_reg_12),
    .wrenable_reg_13(wrenable_reg_13),
    .wrenable_reg_14(wrenable_reg_14),
    .wrenable_reg_15(wrenable_reg_15),
    .wrenable_reg_16(wrenable_reg_16),
    .wrenable_reg_17(wrenable_reg_17),
    .wrenable_reg_18(wrenable_reg_18),
    .wrenable_reg_19(wrenable_reg_19),
    .wrenable_reg_2(wrenable_reg_2),
    .wrenable_reg_20(wrenable_reg_20),
    .wrenable_reg_21(wrenable_reg_21),
    .wrenable_reg_22(wrenable_reg_22),
    .wrenable_reg_23(wrenable_reg_23),
    .wrenable_reg_24(wrenable_reg_24),
    .wrenable_reg_25(wrenable_reg_25),
    .wrenable_reg_26(wrenable_reg_26),
    .wrenable_reg_27(wrenable_reg_27),
    .wrenable_reg_28(wrenable_reg_28),
    .wrenable_reg_29(wrenable_reg_29),
    .wrenable_reg_3(wrenable_reg_3),
    .wrenable_reg_30(wrenable_reg_30),
    .wrenable_reg_31(wrenable_reg_31),
    .wrenable_reg_32(wrenable_reg_32),
    .wrenable_reg_33(wrenable_reg_33),
    .wrenable_reg_34(wrenable_reg_34),
    .wrenable_reg_35(wrenable_reg_35),
    .wrenable_reg_36(wrenable_reg_36),
    .wrenable_reg_4(wrenable_reg_4),
    .wrenable_reg_5(wrenable_reg_5),
    .wrenable_reg_6(wrenable_reg_6),
    .wrenable_reg_7(wrenable_reg_7),
    .wrenable_reg_8(wrenable_reg_8),
    .wrenable_reg_9(wrenable_reg_9),
    .OUT_CONDITION_myproject_422558_422705(OUT_CONDITION_myproject_422558_422705),
    .OUT_CONDITION_myproject_422558_423160(OUT_CONDITION_myproject_422558_423160),
    .OUT_UNBOUNDED_myproject_422558_423458(OUT_UNBOUNDED_myproject_422558_423458),
    .OUT_UNBOUNDED_myproject_422558_423472(OUT_UNBOUNDED_myproject_422558_423472),
    .OUT_UNBOUNDED_myproject_422558_423475(OUT_UNBOUNDED_myproject_422558_423475),
    .OUT_UNBOUNDED_myproject_422558_423478(OUT_UNBOUNDED_myproject_422558_423478),
    .OUT_UNBOUNDED_myproject_422558_423481(OUT_UNBOUNDED_myproject_422558_423481),
    .OUT_UNBOUNDED_myproject_422558_423495(OUT_UNBOUNDED_myproject_422558_423495),
    .OUT_UNBOUNDED_myproject_422558_423508(OUT_UNBOUNDED_myproject_422558_423508),
    .clock(clock),
    .reset(reset),
    .start_port(start_port));
  datapath_myproject #(.MEM_var_422751_422558(256),
    .MEM_var_423023_422558(256)) Datapath_i (._const_size_in_1(_const_size_in_1),
    ._const_size_in_1_vld(_const_size_in_1_vld),
    ._const_size_out_1(_const_size_out_1),
    ._const_size_out_1_vld(_const_size_out_1_vld),
    ._dense_1_input_address0(_dense_1_input_address0),
    ._dense_1_input_address1(_dense_1_input_address1),
    ._dense_1_input_ce0(_dense_1_input_ce0),
    ._dense_1_input_ce1(_dense_1_input_ce1),
    ._layer2_out_address0(_layer2_out_address0),
    ._layer2_out_address1(_layer2_out_address1),
    ._layer2_out_ce0(_layer2_out_ce0),
    ._layer2_out_ce1(_layer2_out_ce1),
    ._layer2_out_we0(_layer2_out_we0),
    ._layer2_out_we1(_layer2_out_we1),
    ._layer2_out_d0(_layer2_out_d0),
    ._layer2_out_d1(_layer2_out_d1),
    .OUT_CONDITION_myproject_422558_422705(OUT_CONDITION_myproject_422558_422705),
    .OUT_CONDITION_myproject_422558_423160(OUT_CONDITION_myproject_422558_423160),
    .OUT_UNBOUNDED_myproject_422558_423458(OUT_UNBOUNDED_myproject_422558_423458),
    .OUT_UNBOUNDED_myproject_422558_423472(OUT_UNBOUNDED_myproject_422558_423472),
    .OUT_UNBOUNDED_myproject_422558_423475(OUT_UNBOUNDED_myproject_422558_423475),
    .OUT_UNBOUNDED_myproject_422558_423478(OUT_UNBOUNDED_myproject_422558_423478),
    .OUT_UNBOUNDED_myproject_422558_423481(OUT_UNBOUNDED_myproject_422558_423481),
    .OUT_UNBOUNDED_myproject_422558_423495(OUT_UNBOUNDED_myproject_422558_423495),
    .OUT_UNBOUNDED_myproject_422558_423508(OUT_UNBOUNDED_myproject_422558_423508),
    .clock(clock),
    .reset(reset),
    .in_port_dense_1_input(dense_1_input),
    .in_port_layer2_out(layer2_out),
    .in_port_const_size_in_1(const_size_in_1),
    .in_port_const_size_out_1(const_size_out_1),
    ._dense_1_input_q0(_dense_1_input_q0),
    ._dense_1_input_q1(_dense_1_input_q1),
    .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_LOAD),
    .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_STORE),
    .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_LOAD),
    .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_STORE),
    .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD),
    .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE),
    .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD),
    .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE),
    .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_LOAD),
    .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i2_STORE),
    .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_LOAD),
    .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i3_STORE),
    .selector_IN_UNBOUNDED_myproject_422558_423458(selector_IN_UNBOUNDED_myproject_422558_423458),
    .selector_IN_UNBOUNDED_myproject_422558_423472(selector_IN_UNBOUNDED_myproject_422558_423472),
    .selector_IN_UNBOUNDED_myproject_422558_423475(selector_IN_UNBOUNDED_myproject_422558_423475),
    .selector_IN_UNBOUNDED_myproject_422558_423478(selector_IN_UNBOUNDED_myproject_422558_423478),
    .selector_IN_UNBOUNDED_myproject_422558_423481(selector_IN_UNBOUNDED_myproject_422558_423481),
    .selector_IN_UNBOUNDED_myproject_422558_423495(selector_IN_UNBOUNDED_myproject_422558_423495),
    .selector_IN_UNBOUNDED_myproject_422558_423508(selector_IN_UNBOUNDED_myproject_422558_423508),
    .selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_0_0_0(selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_0_0_0),
    .selector_MUX_103_reg_4_0_0_0(selector_MUX_103_reg_4_0_0_0),
    .selector_MUX_104_reg_5_0_0_0(selector_MUX_104_reg_5_0_0_0),
    .selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_0(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_0),
    .selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_1(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_0_1),
    .selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_1_0(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_1_i0_1_1_0),
    .selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_0_0_0(selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_0_0_0),
    .selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_0(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_0),
    .selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_1(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_0_1),
    .selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_1_0(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_1_i1_1_1_0),
    .selector_MUX_64_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_2_0_0(selector_MUX_64_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_2_0_0),
    .selector_MUX_65_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_3_0_0(selector_MUX_65_layer2_out_bambu_artificial_ParmMgr_modgen_68_i0_3_0_0),
    .selector_MUX_68_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_2_0_0(selector_MUX_68_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_2_0_0),
    .selector_MUX_69_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_3_0_0(selector_MUX_69_layer2_out_bambu_artificial_ParmMgr_modgen_68_i1_3_0_0),
    .selector_MUX_73_reg_1_0_0_0(selector_MUX_73_reg_1_0_0_0),
    .selector_MUX_75_reg_11_0_0_0(selector_MUX_75_reg_11_0_0_0),
    .selector_MUX_84_reg_2_0_0_0(selector_MUX_84_reg_2_0_0_0),
    .selector_MUX_95_reg_3_0_0_0(selector_MUX_95_reg_3_0_0_0),
    .wrenable_reg_0(wrenable_reg_0),
    .wrenable_reg_1(wrenable_reg_1),
    .wrenable_reg_10(wrenable_reg_10),
    .wrenable_reg_11(wrenable_reg_11),
    .wrenable_reg_12(wrenable_reg_12),
    .wrenable_reg_13(wrenable_reg_13),
    .wrenable_reg_14(wrenable_reg_14),
    .wrenable_reg_15(wrenable_reg_15),
    .wrenable_reg_16(wrenable_reg_16),
    .wrenable_reg_17(wrenable_reg_17),
    .wrenable_reg_18(wrenable_reg_18),
    .wrenable_reg_19(wrenable_reg_19),
    .wrenable_reg_2(wrenable_reg_2),
    .wrenable_reg_20(wrenable_reg_20),
    .wrenable_reg_21(wrenable_reg_21),
    .wrenable_reg_22(wrenable_reg_22),
    .wrenable_reg_23(wrenable_reg_23),
    .wrenable_reg_24(wrenable_reg_24),
    .wrenable_reg_25(wrenable_reg_25),
    .wrenable_reg_26(wrenable_reg_26),
    .wrenable_reg_27(wrenable_reg_27),
    .wrenable_reg_28(wrenable_reg_28),
    .wrenable_reg_29(wrenable_reg_29),
    .wrenable_reg_3(wrenable_reg_3),
    .wrenable_reg_30(wrenable_reg_30),
    .wrenable_reg_31(wrenable_reg_31),
    .wrenable_reg_32(wrenable_reg_32),
    .wrenable_reg_33(wrenable_reg_33),
    .wrenable_reg_34(wrenable_reg_34),
    .wrenable_reg_35(wrenable_reg_35),
    .wrenable_reg_36(wrenable_reg_36),
    .wrenable_reg_4(wrenable_reg_4),
    .wrenable_reg_5(wrenable_reg_5),
    .wrenable_reg_6(wrenable_reg_6),
    .wrenable_reg_7(wrenable_reg_7),
    .wrenable_reg_8(wrenable_reg_8),
    .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1),
    .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out),
    .clock(clock),
    .reset(reset),
    .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Minimal interface for function: myproject
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module myproject(clock,
  reset,
  start_port,
  dense_1_input_q0,
  dense_1_input_q1,
  done_port,
  const_size_in_1,
  const_size_in_1_vld,
  const_size_out_1,
  const_size_out_1_vld,
  dense_1_input_address0,
  dense_1_input_address1,
  dense_1_input_ce0,
  dense_1_input_ce1,
  layer2_out_address0,
  layer2_out_address1,
  layer2_out_ce0,
  layer2_out_ce1,
  layer2_out_we0,
  layer2_out_we1,
  layer2_out_d0,
  layer2_out_d1);
  // IN
  input clock;
  input reset;
  input start_port;
  input [15:0] dense_1_input_q0;
  input [15:0] dense_1_input_q1;
  // OUT
  output done_port;
  output [15:0] const_size_in_1;
  output const_size_in_1_vld;
  output [15:0] const_size_out_1;
  output const_size_out_1_vld;
  output [3:0] dense_1_input_address0;
  output [3:0] dense_1_input_address1;
  output dense_1_input_ce0;
  output dense_1_input_ce1;
  output [1:0] layer2_out_address0;
  output [1:0] layer2_out_address1;
  output layer2_out_ce0;
  output layer2_out_ce1;
  output layer2_out_we0;
  output layer2_out_we1;
  output [15:0] layer2_out_d0;
  output [15:0] layer2_out_d1;
  // Component and signal declarations
  
  _myproject _myproject_i0 (.done_port(done_port),
    ._const_size_in_1(const_size_in_1),
    ._const_size_in_1_vld(const_size_in_1_vld),
    ._const_size_out_1(const_size_out_1),
    ._const_size_out_1_vld(const_size_out_1_vld),
    ._dense_1_input_address0(dense_1_input_address0),
    ._dense_1_input_address1(dense_1_input_address1),
    ._dense_1_input_ce0(dense_1_input_ce0),
    ._dense_1_input_ce1(dense_1_input_ce1),
    ._layer2_out_address0(layer2_out_address0),
    ._layer2_out_address1(layer2_out_address1),
    ._layer2_out_ce0(layer2_out_ce0),
    ._layer2_out_ce1(layer2_out_ce1),
    ._layer2_out_we0(layer2_out_we0),
    ._layer2_out_we1(layer2_out_we1),
    ._layer2_out_d0(layer2_out_d0),
    ._layer2_out_d1(layer2_out_d1),
    .clock(clock),
    .reset(reset),
    .start_port(start_port),
    .dense_1_input(32'b00000000000000000000000000000000),
    .layer2_out(32'b00000000000000000000000000000000),
    .const_size_in_1(32'b00000000000000000000000000000000),
    .const_size_out_1(32'b00000000000000000000000000000000),
    ._dense_1_input_q0(dense_1_input_q0),
    ._dense_1_input_q1(dense_1_input_q1));

endmodule


