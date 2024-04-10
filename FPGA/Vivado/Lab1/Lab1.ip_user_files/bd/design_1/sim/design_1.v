//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Wed Mar  6 13:34:05 2024
//Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (A_0,
    A_1,
    B_0,
    C_0);
  input A_0;
  input A_1;
  input B_0;
  output C_0;

  wire AND_gate_0_C;
  wire AND_gate_2_C;
  wire A_0_1;
  wire A_1_1;
  wire B_0_1;

  assign A_0_1 = A_0;
  assign A_1_1 = A_1;
  assign B_0_1 = B_0;
  assign C_0 = AND_gate_2_C;
  design_1_AND_gate_0_0 AND_gate_0
       (.A(A_0_1),
        .B(B_0_1),
        .C(AND_gate_0_C));
  design_1_AND_gate_2_0 AND_gate_2
       (.A(AND_gate_0_C),
        .B(A_1_1),
        .C(AND_gate_2_C));
endmodule
