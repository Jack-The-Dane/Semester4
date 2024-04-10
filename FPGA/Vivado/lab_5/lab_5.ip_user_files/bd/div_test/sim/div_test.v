//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Wed Apr  3 17:36:41 2024
//Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
//Command     : generate_target div_test.bd
//Design      : div_test
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "div_test,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=div_test,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "div_test.hwdef" *) 
module div_test
   (clk_0,
    counter_out_0,
    rst_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET rst_0, CLK_DOMAIN div_test_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_0;
  output [7:0]counter_out_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_0;

  wire [7:0]Counter_8bit_0_counter_out;
  wire clk_0_1;
  wire clock_divider_0_clk_div;
  wire rst_0_1;

  assign clk_0_1 = clk_0;
  assign counter_out_0[7:0] = Counter_8bit_0_counter_out;
  assign rst_0_1 = rst_0;
  div_test_Counter_8bit_0_0 Counter_8bit_0
       (.clk(clock_divider_0_clk_div),
        .counter_out(Counter_8bit_0_counter_out),
        .rst(rst_0_1));
  div_test_clock_divider_0_0 clock_divider_0
       (.clk(clk_0_1),
        .clk_div(clock_divider_0_clk_div),
        .rst(rst_0_1));
endmodule
