//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Wed Apr  3 15:42:05 2024
//Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
//Command     : generate_target full_adder.bd
//Design      : full_adder
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "full_adder,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=full_adder,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=2,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "full_adder.hwdef" *) 
module full_adder
   (a,
    b,
    c_in,
    c_out,
    s);
  input a;
  input b;
  input c_in;
  output c_out;
  output s;

  wire OR_generic_0_o;
  wire a_1;
  wire b_1;
  wire c_in_1;
  wire half_adder_0_c;
  wire half_adder_0_s;
  wire half_adder_1_c;
  wire half_adder_1_s;
  wire [1:0]xlconcat_0_dout;

  assign a_1 = a;
  assign b_1 = b;
  assign c_in_1 = c_in;
  assign c_out = OR_generic_0_o;
  assign s = half_adder_1_s;
  full_adder_OR_generic_0_0 OR_generic_0
       (.i(xlconcat_0_dout),
        .o(OR_generic_0_o));
  full_adder_half_adder_0_0 half_adder_0
       (.a(a_1),
        .b(b_1),
        .c(half_adder_0_c),
        .s(half_adder_0_s));
  full_adder_half_adder_1_0 half_adder_1
       (.a(half_adder_0_s),
        .b(c_in_1),
        .c(half_adder_1_c),
        .s(half_adder_1_s));
  full_adder_xlconcat_0_0 xlconcat_0
       (.In0(half_adder_0_c),
        .In1(half_adder_1_c),
        .dout(xlconcat_0_dout));
endmodule
