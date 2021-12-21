// verilator lint_off BLKANDNBLK
// verilator lint_off BLKSEQ
`timescale 1ns / 1ps
// CONSTANTS DECLARATION
`define EOF 32'hFFFF_FFFF
`define NULL 0
`define MAX_COMMENT_LENGTH 1000
`define SIMULATION_LENGTH 200000000

`define HALF_CLOCK_PERIOD 1

`define CLOCK_PERIOD (2*`HALF_CLOCK_PERIOD)

`define MEM_DELAY_READ 2

`define MEM_DELAY_WRITE 1

// MODULE DECLARATION
module myproject_tb(clock);

  function real bits32_to_real64;
    input [31:0] in1;
    reg [7:0] exponent1;
    reg is_exp_zero;
    reg is_all_ones;
    reg [10:0] exp_tmp;
    reg [63:0] out1;
  begin
    exponent1 = in1[30:23];
    is_exp_zero = exponent1 == 8'd0;
    is_all_ones = exponent1 == {8{1'b1}};
    exp_tmp = {3'd0, exponent1} + 11'd896;
    out1[63] = in1[31];
    out1[62:52] = is_exp_zero ? 11'd0 : (is_all_ones ? {11{1'b1}} : exp_tmp);
    out1[51:29] = in1[22:0];
    out1[28:0] = 29'd0;
    bits32_to_real64 = $bitstoreal(out1);
  end
  endfunction
  function real compute_ulp32;
    input [31:0] computed;
    input [31:0] expected;
    real computedR;
    real expectedR;
    real diffR;
    reg [31:0] denom;
    real denomR;
  begin
    if (expected[30:23] == {8{1'b1}} ||computed[30:23] == {8{1'b1}})
      compute_ulp32 = computed != expected && (computed[22:0] == 23'd0 || expected[22:0] == 23'd0) ? {1'b0,({8{1'b1}}-8'd1),{23'b1} } : 32'd0;
    else
    begin
      denom = 32'd0;
      if (expected[30:0] == 31'd0)
        denom[30:23] = 8'd104;
      else
        denom[30:23] = expected[30:23]-8'd23;
      computedR = bits32_to_real64({1'b0, computed[30:0]});
      expectedR = bits32_to_real64({1'b0, expected[30:0]});
      denomR = bits32_to_real64(denom);
      diffR = computedR - expectedR;
      if(diffR < 0.0)
        diffR = - diffR;
      if (expected[30:0] == 31'd0 && computed[30:0] == 31'd0  && expected[31] != computed[31] )
        compute_ulp32 = 1.0;
      else
        compute_ulp32 = diffR / denomR;
    end
  end
  endfunction
  
  function real compute_ulp64;
    input [63:0] computed;
    input [63:0] expected;
    real computedR;
    real expectedR;
    real diffR;
    reg [63:0] denom;
    real denomR;
  begin
    if (expected[62:52] == {11{1'b1}} ||computed[62:52] == {11{1'b1}})
      compute_ulp64 = computed != expected && (computed[51:0] == 52'd0 || expected[51:0] == 52'd0) ? {1'b0,({11{1'b1}}-11'd1),{52'b1} } : 64'd0;
    else
    begin
      denom = 64'd0;
      if (expected[62:0] == 63'd0)
        denom[62:52] = 11'd971;
      else
        denom[62:52] = expected[62:52]-11'd52;
      computedR = $bitstoreal({1'b0, computed[62:0]});
      expectedR = $bitstoreal({1'b0, expected[62:0]});
      denomR = $bitstoreal(denom);
      diffR = computedR - expectedR;
      if(diffR < 0.0)
        diffR = - diffR;
      if (expected[62:0] == 63'd0 && computed[62:0] == 63'd0  && expected[63] != computed[63] )
        compute_ulp64 = 1.0;
      else
        compute_ulp64 = diffR / denomR;
    end
  end
  endfunction
  parameter MEMSIZE = 1024;
  // AUXILIARY VARIABLES DECLARATION
  time startTime, endTime, sim_time;
  integer res_file, file, _r_, _n_, _i_, _addr_i_;
  integer _ch_;
  reg compare_outputs, success; // Flag: True if input vector specifies expected outputs
  reg [8*`MAX_COMMENT_LENGTH:0] line; // Comment line read from file
  
  reg [31:0] addr, base_addr;
  reg [31:0] paddrdense_1_input_q0;
  reg [31:0] paddrlayer2_out_d0;
  reg [31:0] paddrconst_size_in_1;
  reg [31:0] paddrconst_size_out_1;
  
  reg [7:0] _bambu_testbench_mem_ [0:MEMSIZE-1];
  
  reg [7:0] _bambu_databyte_;
  
  reg [3:0] __state, __next_state;
  reg start_results_comparison;
  reg next_start_port;
  // INPUT SIGNALS
  input clock;
  reg reset;
  reg start_port;
  reg [15:0] dense_1_input_q0;
  reg [15:0] dense_1_input_q1;
  
  reg start_next_sim;
  // OUTPUT SIGNALS
  wire done_port;
  wire [15:0] const_size_in_1;
  reg [15:0] ex_const_size_in_1;
  reg [15:0] registered_const_size_in_1;
  wire const_size_in_1_vld;
  wire [15:0] const_size_out_1;
  reg [15:0] ex_const_size_out_1;
  reg [15:0] registered_const_size_out_1;
  wire const_size_out_1_vld;
  wire [3:0] dense_1_input_address0;
  wire [3:0] dense_1_input_address1;
  wire dense_1_input_ce0;
  wire dense_1_input_ce1;
  wire [1:0] layer2_out_address0;
  wire [1:0] layer2_out_address1;
  wire layer2_out_ce0;
  wire layer2_out_ce1;
  wire layer2_out_we0;
  wire layer2_out_we1;
  wire [15:0] layer2_out_d0;
  reg [15:0] ex_layer2_out_d0;
  wire [15:0] layer2_out_d1;
  reg [15:0] ex_layer2_out_d1;
  
  // MODULE INSTANTIATION AND PORTS BINDING
  myproject myproject (.clock(clock), .reset(reset), .start_port(start_port), .dense_1_input_q0(dense_1_input_q0), .dense_1_input_q1(dense_1_input_q1), .done_port(done_port), .const_size_in_1(const_size_in_1), .const_size_in_1_vld(const_size_in_1_vld), .const_size_out_1(const_size_out_1), .const_size_out_1_vld(const_size_out_1_vld), .dense_1_input_address0(dense_1_input_address0), .dense_1_input_address1(dense_1_input_address1), .dense_1_input_ce0(dense_1_input_ce0), .dense_1_input_ce1(dense_1_input_ce1), .layer2_out_address0(layer2_out_address0), .layer2_out_address1(layer2_out_address1), .layer2_out_ce0(layer2_out_ce0), .layer2_out_ce1(layer2_out_ce1), .layer2_out_we0(layer2_out_we0), .layer2_out_we1(layer2_out_we1), .layer2_out_d0(layer2_out_d0), .layer2_out_d1(layer2_out_d1));
  
  // Operation to be executed just one time
  initial
  begin
    // OPEN FILE WITH VALUES FOR SIMULATION
    file = $fopen("/home/li/bambuhls/HLS_output//simulation/values.txt","r");
    // Error in file open
    if (file == `NULL)
    begin
      $display("ERROR - Error opening the file");
      $finish;// Terminate
          end
    // OPEN FILE WHERE results will be written
    res_file = $fopen("/home/li/bambuhls/results.txt","w");
    
    // Error in file open
    if (res_file == `NULL)
    begin
      $display("ERROR - Error opening the res_file");
      $fclose(file);
      $finish;// Terminate
          end
    // Variables initialization
    sim_time = 0;
    startTime = 0;
    endTime = 0;
    _ch_ = 0;
    _n_ = 0;
    _r_ = 0;
    line = 0;
    _i_ = 0;
    _addr_i_ = 0;
    compare_outputs = 0;
    start_next_sim = 0;
    __next_state = 0;
    reset = 0;
    next_start_port = 0;
    success = 1;
    dense_1_input_q0 = 0;
    dense_1_input_q1 = 0;
    
    ex_const_size_in_1 = 0;
    registered_const_size_in_1 = 0;
    ex_const_size_out_1 = 0;
    registered_const_size_out_1 = 0;
    ex_layer2_out_d0 = 0;
    ex_layer2_out_d1 = 0;
    
    for (addr = 0; addr < MEMSIZE; addr = addr + 1)
    begin
      _bambu_testbench_mem_[addr] = 8'b0;
    end
  end
  
  // Assigning values
  always @ (posedge clock)
  begin
    if (next_start_port == 1'b1)
    begin
      // reading base address memory --------------------------------------------------------------
      _ch_ = $fgetc(file);
      if ($feof(file))
      begin
        $display("No more values found. Simulation(s) executed: %d.\n", _n_);
        $fclose(res_file);
        $fclose(file);
        $finish;
      end
      while (_ch_ == "/" || _ch_ == "\n" || _ch_ == "b")
      begin
        if (_ch_ == "b")
        begin
          _r_ = $fscanf(file,"%b\n", base_addr); end
        else
        begin
          _r_ = $fgets(line, file);
        end
        _ch_ = $fgetc(file);
      end
      // initializing memory --------------------------------------------------------------
      while (_ch_ == "/" || _ch_ == "\n" || _ch_ == "m")
      begin
        if (_ch_ == "m")
        begin
          _r_ = $fscanf(file,"%b\n", _bambu_databyte_);
          _bambu_testbench_mem_[_addr_i_] = _bambu_databyte_;
          _addr_i_ = _addr_i_ + 1;
        end
        else
        begin
          _r_ = $fgets(line, file);
        end
        _ch_ = $fgetc(file);
      end
      
      // Read a value for paddrdense_1_input_q0 --------------------------------------------------------------
      while (_ch_ == "/" || _ch_ == "\n")
      begin
        _r_ = $fgets(line, file);
        _ch_ = $fgetc(file);
      end
      // If no character found
      if (_ch_ == -1)
      begin
        $display("No more values found. Simulation(s) executed: %d.\n", _n_);
        $fclose(res_file);
        $fclose(file);
        $finish;
      end
      else
      begin
        // Vectors count
        _n_ = _n_ + 1;
        $display("Start reading vector %d's values from input file.\n", _n_);
      end
      if (_ch_ == "p")
      begin
        _r_ = $fscanf(file,"%b\n", paddrdense_1_input_q0); // expected format: bbb...b (example: 00101110)
      end
      if (_r_ != 1) // error
      begin
        _ch_ = $fgetc(file);
        if (_ch_ == `EOF) // end-of-file reached
        begin
          $display("ERROR - End of file reached before getting all the values for the parameters");
          $fclose(res_file);
          $fclose(file);
          $finish;
        end
        else // generic error
        begin
          $display("ERROR - Unknown error while reading the file. Character found: %c", _ch_[7:0]);
          $fclose(res_file);
          $fclose(file);
          $finish;
        end
      end
      else
      begin
        $display("Value found for input paddrdense_1_input_q0: %b", paddrdense_1_input_q0);
      end
      // Value for paddrdense_1_input_q0 found ---------------------------------------------------------------
      
      // Read a value for paddrlayer2_out_d0 --------------------------------------------------------------
      _ch_ = $fgetc(file);
      while (_ch_ == "/" || _ch_ == "\n")
      begin
        _r_ = $fgets(line, file);
        _ch_ = $fgetc(file);
      end
      if (_ch_ == "p")
      begin
        _r_ = $fscanf(file,"%b\n", paddrlayer2_out_d0); // expected format: bbb...b (example: 00101110)
      end
      if (_r_ != 1) // error
      begin
        _ch_ = $fgetc(file);
        if (_ch_ == `EOF) // end-of-file reached
        begin
          $display("ERROR - End of file reached before getting all the values for the parameters");
          $fclose(res_file);
          $fclose(file);
          $finish;
        end
        else // generic error
        begin
          $display("ERROR - Unknown error while reading the file. Character found: %c", _ch_[7:0]);
          $fclose(res_file);
          $fclose(file);
          $finish;
        end
      end
      else
      begin
        $display("Value found for input paddrlayer2_out_d0: %b", paddrlayer2_out_d0);
      end
      // Value for paddrlayer2_out_d0 found ---------------------------------------------------------------
      
      // Read a value for paddrconst_size_in_1 --------------------------------------------------------------
      _ch_ = $fgetc(file);
      while (_ch_ == "/" || _ch_ == "\n")
      begin
        _r_ = $fgets(line, file);
        _ch_ = $fgetc(file);
      end
      if (_ch_ == "p")
      begin
        _r_ = $fscanf(file,"%b\n", paddrconst_size_in_1); // expected format: bbb...b (example: 00101110)
      end
      if (_r_ != 1) // error
      begin
        _ch_ = $fgetc(file);
        if (_ch_ == `EOF) // end-of-file reached
        begin
          $display("ERROR - End of file reached before getting all the values for the parameters");
          $fclose(res_file);
          $fclose(file);
          $finish;
        end
        else // generic error
        begin
          $display("ERROR - Unknown error while reading the file. Character found: %c", _ch_[7:0]);
          $fclose(res_file);
          $fclose(file);
          $finish;
        end
      end
      else
      begin
        $display("Value found for input paddrconst_size_in_1: %b", paddrconst_size_in_1);
      end
      // Value for paddrconst_size_in_1 found ---------------------------------------------------------------
      
      // Read a value for paddrconst_size_out_1 --------------------------------------------------------------
      _ch_ = $fgetc(file);
      while (_ch_ == "/" || _ch_ == "\n")
      begin
        _r_ = $fgets(line, file);
        _ch_ = $fgetc(file);
      end
      if (_ch_ == "p")
      begin
        _r_ = $fscanf(file,"%b\n", paddrconst_size_out_1); // expected format: bbb...b (example: 00101110)
      end
      if (_r_ != 1) // error
      begin
        _ch_ = $fgetc(file);
        if (_ch_ == `EOF) // end-of-file reached
        begin
          $display("ERROR - End of file reached before getting all the values for the parameters");
          $fclose(res_file);
          $fclose(file);
          $finish;
        end
        else // generic error
        begin
          $display("ERROR - Unknown error while reading the file. Character found: %c", _ch_[7:0]);
          $fclose(res_file);
          $fclose(file);
          $finish;
        end
      end
      else
      begin
        $display("Value found for input paddrconst_size_out_1: %b", paddrconst_size_out_1);
      end
      // Value for paddrconst_size_out_1 found ---------------------------------------------------------------
      _ch_ = $fgetc(file);
      // Simulation start
      startTime = $time;
      $display("Reading of vector values from input file completed. Simulation started.");
    end
  end
  
  always @(negedge clock)
  begin
  if (done_port == 1)
    begin
    end
    end
  always @(posedge clock)
  begin
    if (dense_1_input_ce0 == 1'b1)
    begin
      dense_1_input_q0 <= {_bambu_testbench_mem_[paddrdense_1_input_q0 + 1 - base_addr + dense_1_input_address0*4], _bambu_testbench_mem_[paddrdense_1_input_q0 + 0 - base_addr + dense_1_input_address0*4]};
    end
  end
  always @(posedge clock)
  begin
    if (dense_1_input_ce1 == 1'b1)
    begin
      dense_1_input_q1 <= {_bambu_testbench_mem_[paddrdense_1_input_q0 + 1 - base_addr + dense_1_input_address1*4], _bambu_testbench_mem_[paddrdense_1_input_q0 + 0 - base_addr + dense_1_input_address1*4]};
    end
  end
  always @(posedge clock)
  begin
    if (layer2_out_ce0 == 1'b1 && layer2_out_we0 == 1'b1)
    begin
      {_bambu_testbench_mem_[paddrlayer2_out_d0 + 1 - base_addr + layer2_out_address0*4], _bambu_testbench_mem_[paddrlayer2_out_d0 + 0 - base_addr + layer2_out_address0*4]} <= layer2_out_d0;
    end
  end
  always @(posedge clock)
  begin
    if (layer2_out_ce1 == 1'b1 && layer2_out_we1 == 1'b1)
    begin
      {_bambu_testbench_mem_[paddrlayer2_out_d0 + 1 - base_addr + layer2_out_address1*4], _bambu_testbench_mem_[paddrlayer2_out_d0 + 0 - base_addr + layer2_out_address1*4]} <= layer2_out_d1;
    end
  end
  always @(negedge clock)
  begin
    if (const_size_in_1_vld == 1)
    begin
      registered_const_size_in_1 <= const_size_in_1;
    end
  end
  always @(negedge clock)
  begin
    if (const_size_out_1_vld == 1)
    begin
      registered_const_size_out_1 <= const_size_out_1;
    end
  end
  always @(negedge clock)
  begin
    if (start_results_comparison == 1)
    begin
      
      // OPTIONAL - skip expected value for dense_1_input_q0 --------------------------------------------------------------
      _i_ = 0;
      while (_ch_ == "/" || _ch_ == "\n" || _ch_ == "o")
      begin
        if (_ch_ == "o")
        begin
          compare_outputs = 1;
          _ch_ = $fgetc(file);
          while (_ch_ == "\n" || _ch_ == "0" || _ch_ == "1") _ch_ = $fgetc(file);
          _i_ = _i_ + 1;
        end
        else
        begin
          // skip comments and empty lines
          _r_ = $fgets(line, file);
          _ch_ = $fgetc(file);
        end
      end
      if (_ch_ == "e")
      begin
        _r_ = $fgets(line, file);
        _ch_ = $fgetc(file);
      end
      else
      begin
      // error
        $display("ERROR - Unknown error while reading the file. Character found: %c", _ch_[7:0]);
        $fclose(res_file);
        $fclose(file);
        $finish;
      end
      
      // OPTIONAL - Read a value for layer2_out --------------------------------------------------------------
      _i_ = 0;
      while (_ch_ == "/" || _ch_ == "\n" || _ch_ == "o")
      begin
        if (_ch_ == "o")
        begin
          compare_outputs = 1;
          _r_ = $fscanf(file,"%b\n", ex_layer2_out_d0); // expected format: bbb...b (example: 00101110)
          if (_r_ != 1)
          begin
            // error
            $display("ERROR - Unknown error while reading the file. Character found: %c", _ch_[7:0]);
            $fclose(res_file);
            $fclose(file);
            $finish;
          end
          else
          begin
            $display("Value found for output layer2_out: %b", ex_layer2_out_d0);
          end
          $display(" layer2_out = %d   expected = %d \n", {_bambu_testbench_mem_[paddrlayer2_out_d0 + 1 - base_addr + _i_*4], _bambu_testbench_mem_[paddrlayer2_out_d0 + 0 - base_addr + _i_*4]}, ex_layer2_out_d0);
          if ({_bambu_testbench_mem_[paddrlayer2_out_d0 + 1 - base_addr + _i_*4], _bambu_testbench_mem_[paddrlayer2_out_d0 + 0 - base_addr + _i_*4]} !== ex_layer2_out_d0)
          begin
            success = 0;
          end
          _i_ = _i_ + 1;
          _ch_ = $fgetc(file);
        end
        else
        begin
          // skip comments and empty lines
          _r_ = $fgets(line, file);
          _ch_ = $fgetc(file);
        end
      end
      if (_ch_ == "e")
      begin
        _r_ = $fgets(line, file);
        _ch_ = $fgetc(file);
      end
      else
      begin
      // error
        $display("ERROR - Unknown error while reading the file. Character found: %c", _ch_[7:0]);
        $fclose(res_file);
        $fclose(file);
        $finish;
      end
      
      // OPTIONAL - Read a value for const_size_in_1 --------------------------------------------------------------
      _i_ = 0;
      while (_ch_ == "/" || _ch_ == "\n" || _ch_ == "o")
      begin
        if (_ch_ == "o")
        begin
          compare_outputs = 1;
          _r_ = $fscanf(file,"%b\n", ex_const_size_in_1); // expected format: bbb...b (example: 00101110)
          if (_r_ != 1)
          begin
            // error
            $display("ERROR - Unknown error while reading the file. Character found: %c", _ch_[7:0]);
            $fclose(res_file);
            $fclose(file);
            $finish;
          end
          else
          begin
            $display("Value found for output const_size_in_1: %b", ex_const_size_in_1);
          end
          $display(" const_size_in_1 = %d   expected = %d \n", registered_const_size_in_1, ex_const_size_in_1);
          if (registered_const_size_in_1 !== ex_const_size_in_1)
          begin
            success = 0;
          end
          _i_ = _i_ + 1;
          _ch_ = $fgetc(file);
        end
        else
        begin
          // skip comments and empty lines
          _r_ = $fgets(line, file);
          _ch_ = $fgetc(file);
        end
      end
      if (_ch_ == "e")
      begin
        _r_ = $fgets(line, file);
        _ch_ = $fgetc(file);
      end
      else
      begin
      // error
        $display("ERROR - Unknown error while reading the file. Character found: %c", _ch_[7:0]);
        $fclose(res_file);
        $fclose(file);
        $finish;
      end
      
      // OPTIONAL - Read a value for const_size_out_1 --------------------------------------------------------------
      _i_ = 0;
      while (_ch_ == "/" || _ch_ == "\n" || _ch_ == "o")
      begin
        if (_ch_ == "o")
        begin
          compare_outputs = 1;
          _r_ = $fscanf(file,"%b\n", ex_const_size_out_1); // expected format: bbb...b (example: 00101110)
          if (_r_ != 1)
          begin
            // error
            $display("ERROR - Unknown error while reading the file. Character found: %c", _ch_[7:0]);
            $fclose(res_file);
            $fclose(file);
            $finish;
          end
          else
          begin
            $display("Value found for output const_size_out_1: %b", ex_const_size_out_1);
          end
          $display(" const_size_out_1 = %d   expected = %d \n", registered_const_size_out_1, ex_const_size_out_1);
          if (registered_const_size_out_1 !== ex_const_size_out_1)
          begin
            success = 0;
          end
          _i_ = _i_ + 1;
          _ch_ = $fgetc(file);
        end
        else
        begin
          // skip comments and empty lines
          _r_ = $fgets(line, file);
          _ch_ = $fgetc(file);
        end
      end
      if (_ch_ == "e")
      begin
        _r_ = $fgets(line, file);
        _ch_ = $fgetc(file);
      end
      else
      begin
      // error
        $display("ERROR - Unknown error while reading the file. Character found: %c", _ch_[7:0]);
        $fclose(res_file);
        $fclose(file);
        $finish;
      end
      // Compare output with expected output (if given)
      if (compare_outputs == 1)
      begin
        $display("Simulation ended after %d cycles.\n", sim_time);
        if (success == 1)
        begin
          $display("Simulation completed with success\n");
          $fwrite(res_file, "1\t");
        end
        else
        begin
          $display("Simulation FAILED\n");
          $fwrite(res_file, "0\t");
        end
      end
      else
      begin
        $display("Simulation ended after %d cycles (no expected outputs specified).\n", sim_time);
        $fwrite(res_file, "-\t");
      end
      $fwrite(res_file, "%d\n", sim_time);
    end
  end
  
  always @(*)
    begin
       start_results_comparison = 0;
       reset = 1;
       start_next_sim = 0;
       next_start_port = 0;
       case (__state)
         0:
           begin
              reset = 0;
              __next_state = 1;
           end
         1:
           begin
              reset = 0;
              __next_state = 2;
           end
         2:
           begin
              next_start_port = 1;
              if (done_port == 1'b1)
                begin
                  __next_state = 4;
                end
              else
                __next_state = 3;
           end
         3:
           if (done_port == 1'b1)
             begin
                __next_state = 4;
             end
           else
             __next_state = 3;
         4:
           begin
              start_results_comparison = 1;
              __next_state = 5;
           end
         5:
           begin
  // wait a cycle (needed for a correct simulation)
              $fclose(res_file);
              $fclose(file);
              $finish;
           end
         default:
           begin
              __next_state = 0;
           end
       endcase // case (__state)
    end // always @ (*)
  always @(posedge clock)
    begin
    __state <= __next_state;
    start_port <= next_start_port;
    end
  // Check done_port signal
  always @(negedge clock)
  begin
    if (done_port == 1)
    begin
      endTime = $time;
      
      // Simulation time (clock cycles) = 1+(time elapsed (seconds) / clock cycle (seconds per cycle)) (until done is 1)
      sim_time = $rtoi((endTime + `HALF_CLOCK_PERIOD - startTime)/`CLOCK_PERIOD);
      
      success = 1;
      compare_outputs = 0;
    end
  end
  always @(posedge clock)
  begin
    if (($time - startTime)/`CLOCK_PERIOD > `SIMULATION_LENGTH)
    begin
      $display("Simulation not completed into %d cycles", `SIMULATION_LENGTH);
      $fwrite(res_file, "X\t");
      $fwrite(res_file, "%d\n", `SIMULATION_LENGTH);
      $fclose(res_file);
      $fclose(file);
      $finish;
    end
  end
  
endmodule

// verilator lint_on BLKANDNBLK
// verilator lint_on BLKSEQ

