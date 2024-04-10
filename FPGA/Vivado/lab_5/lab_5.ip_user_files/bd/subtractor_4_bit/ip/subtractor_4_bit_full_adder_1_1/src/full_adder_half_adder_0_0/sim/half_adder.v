//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Wed Apr  3 15:28:26 2024
//Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
//Command     : generate_target half_adder.bd
//Design      : half_adder
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "half_adder,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=half_adder,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "half_adder.hwdef" *) 
module half_adder
   (a,
    b,
    c,
    s);
  input a;
  input b;
  output c;
  output s;

  wire AND_generic_0_o;
  wire a_1;
  wire b_1;
  wire [1:0]xlconcat_0_dout;
  wire xor_generic_0_o;

  assign a_1 = a;
  assign b_1 = b;
  assign c = AND_generic_0_o;
  assign s = xor_generic_0_o;
  half_adder_AND_generic_0_0 AND_generic_0
       (.i(xlconcat_0_dout),
        .o(AND_generic_0_o));
  half_adder_xlconcat_0_0 xlconcat_0
       (.In0(a_1),
        .In1(b_1),
        .dout(xlconcat_0_dout));
  half_adder_xor_generic_0_0 xor_generic_0
       (.a(a_1),
        .b(b_1),
        .o(xor_generic_0_o));
endmodule
