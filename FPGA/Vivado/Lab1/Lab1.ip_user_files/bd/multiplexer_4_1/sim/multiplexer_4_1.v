//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Wed Feb 21 15:27:44 2024
//Host        : Laptop running 64-bit Ubuntu 22.04.3 LTS
//Command     : generate_target multiplexer_4_1.bd
//Design      : multiplexer_4_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "multiplexer_4_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=multiplexer_4_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=13,numReposBlks=13,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=13,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "multiplexer_4_1.hwdef" *) 
module multiplexer_4_1
   (C_0,
    I0,
    I1,
    I2,
    I3,
    S0,
    S1);
  output C_0;
  input I0;
  input I1;
  input I2;
  input I3;
  input S0;
  input S1;

  wire AND_gate_0_C;
  wire AND_gate_1_C;
  wire AND_gate_2_C;
  wire AND_gate_3_C;
  wire AND_gate_4_C;
  wire AND_gate_5_C;
  wire AND_gate_6_C;
  wire AND_gate_7_C;
  wire A_0_1;
  wire A_0_2;
  wire A_1_1;
  wire A_1_2;
  wire B_0_1;
  wire B_0_2;
  wire NOT_gate_0_B;
  wire NOT_gate_1_B;
  wire OR_gate_0_C;
  wire OR_gate_1_C;
  wire OR_gate_2_C;

  assign A_0_1 = S0;
  assign A_0_2 = I0;
  assign A_1_1 = I3;
  assign A_1_2 = I2;
  assign B_0_1 = S1;
  assign B_0_2 = I1;
  assign C_0 = OR_gate_2_C;
  multiplexer_4_1_AND_gate_0_0 AND_gate_0
       (.A(A_0_1),
        .B(B_0_1),
        .C(AND_gate_0_C));
  multiplexer_4_1_AND_gate_0_1 AND_gate_1
       (.A(NOT_gate_0_B),
        .B(NOT_gate_1_B),
        .C(AND_gate_1_C));
  multiplexer_4_1_AND_gate_2_0 AND_gate_2
       (.A(A_0_1),
        .B(NOT_gate_1_B),
        .C(AND_gate_2_C));
  multiplexer_4_1_AND_gate_3_0 AND_gate_3
       (.A(B_0_1),
        .B(NOT_gate_0_B),
        .C(AND_gate_3_C));
  multiplexer_4_1_AND_gate_0_2 AND_gate_4
       (.A(A_1_1),
        .B(AND_gate_0_C),
        .C(AND_gate_4_C));
  multiplexer_4_1_AND_gate_0_3 AND_gate_5
       (.A(A_1_2),
        .B(AND_gate_3_C),
        .C(AND_gate_5_C));
  multiplexer_4_1_AND_gate_6_0 AND_gate_6
       (.A(A_0_2),
        .B(AND_gate_1_C),
        .C(AND_gate_6_C));
  multiplexer_4_1_AND_gate_7_0 AND_gate_7
       (.A(AND_gate_2_C),
        .B(B_0_2),
        .C(AND_gate_7_C));
  multiplexer_4_1_NOT_gate_0_0 NOT_S0
       (.A(A_0_1),
        .B(NOT_gate_0_B));
  multiplexer_4_1_NOT_gate_1_0 NOT_S1
       (.A(B_0_1),
        .B(NOT_gate_1_B));
  multiplexer_4_1_OR_gate_0_0 OR_gate_0
       (.A(AND_gate_5_C),
        .B(AND_gate_6_C),
        .C(OR_gate_0_C));
  multiplexer_4_1_OR_gate_1_0 OR_gate_1
       (.A(AND_gate_7_C),
        .B(AND_gate_4_C),
        .C(OR_gate_1_C));
  multiplexer_4_1_OR_gate_2_0 OR_gate_2
       (.A(OR_gate_0_C),
        .B(OR_gate_1_C),
        .C(OR_gate_2_C));
endmodule
