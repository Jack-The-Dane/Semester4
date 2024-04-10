//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Wed Mar  6 00:39:22 2024
//Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
//Command     : generate_target clock.bd
//Design      : clock
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "clock,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=clock,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=20,numReposBlks=20,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=19,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "clock.hwdef" *) 
module clock
   (Minutes_LSD,
    Minutes_MSD,
    Seconds_LSD,
    Seconds_MSD);
  output [6:0]Minutes_LSD;
  output [6:0]Minutes_MSD;
  output [6:0]Seconds_LSD;
  output [6:0]Seconds_MSD;

  wire [6:0]BCD_to_7seg_0_seg_out;
  wire Comparator_100_output;
  wire Comparator_10_cmp_res;
  wire Comparator_6_10_sec_output;
  wire Comparator_8bit_0_output;
  wire Comparator_8bit_0_output1;
  wire Comparator_8bit_0_output2;
  wire [7:0]Counter_10_counter_out;
  wire [6:0]Min_LSD_seg_out;
  wire [6:0]Min_MSD_seg_out;
  wire [7:0]Minute_counter_counter_out;
  wire [6:0]Sec_LSD1_seg_out;
  wire [7:0]Second_counter_counter_out;
  wire [7:0]Ten_minute_counter_counter_out;
  wire [7:0]Ten_second_counter_counter_out;
  wire [7:0]cmp_100_0_o;
  wire [7:0]cmp_10_0_o;
  wire [7:0]cmp_6_0_o;
  wire [7:0]one_second_counter_out;
  wire sim_clk_gen_0_clk;

  assign Minutes_LSD[6:0] = Min_LSD_seg_out;
  assign Minutes_MSD[6:0] = Min_MSD_seg_out;
  assign Seconds_LSD[6:0] = BCD_to_7seg_0_seg_out;
  assign Seconds_MSD[6:0] = Sec_LSD1_seg_out;
  clock_Comparator_8bit_0_4 Comparator_10
       (.cmp_in(Counter_10_counter_out),
        .cmp_res(Comparator_10_cmp_res),
        .cmp_val(cmp_10_0_o));
  clock_Comparator_8bit_0_0 Comparator_100
       (.cmp_in(one_second_counter_out),
        .cmp_res(Comparator_100_output),
        .cmp_val(cmp_100_0_o));
  clock_Comparator_8bit_0_3 Comparator_10_min
       (.cmp_in(Minute_counter_counter_out),
        .cmp_res(Comparator_8bit_0_output2),
        .cmp_val(cmp_10_0_o));
  clock_Comparator_8bit_0_1 Comparator_10_sec
       (.cmp_in(Second_counter_counter_out),
        .cmp_res(Comparator_8bit_0_output1),
        .cmp_val(cmp_10_0_o));
  clock_Comparator_8bit_0_2 Comparator_6_10_sec
       (.cmp_in(Ten_second_counter_counter_out),
        .cmp_res(Comparator_6_10_sec_output),
        .cmp_val(cmp_6_0_o));
  clock_Comparator_8bit_0_5 Comparator_8bit_0
       (.cmp_in(Ten_minute_counter_counter_out),
        .cmp_res(Comparator_8bit_0_output),
        .cmp_val(cmp_6_0_o));
  clock_Counter_8bit_0_5 Counter_10
       (.clk(Comparator_100_output),
        .counter_out(Counter_10_counter_out),
        .rst(Comparator_10_cmp_res));
  clock_Counter_8bit_0_0 Counter_100
       (.clk(sim_clk_gen_0_clk),
        .counter_out(one_second_counter_out),
        .rst(Comparator_100_output));
  clock_BCD_to_7seg_0_1 Min_LSD
       (.BCD(Minute_counter_counter_out[3:0]),
        .seg_out(Min_LSD_seg_out));
  clock_BCD_to_7seg_0_2 Min_MSD
       (.BCD(Ten_minute_counter_counter_out[3:0]),
        .seg_out(Min_MSD_seg_out));
  clock_Counter_8bit_0_3 Minute_counter
       (.clk(Comparator_6_10_sec_output),
        .counter_out(Minute_counter_counter_out),
        .rst(Comparator_8bit_0_output2));
  clock_BCD_to_7seg_0_0 Sec_LSD
       (.BCD(Second_counter_counter_out[3:0]),
        .seg_out(BCD_to_7seg_0_seg_out));
  clock_Sec_LSD_0 Sec_MSD
       (.BCD(Ten_second_counter_counter_out[3:0]),
        .seg_out(Sec_LSD1_seg_out));
  clock_Counter_8bit_0_1 Second_counter
       (.clk(Comparator_10_cmp_res),
        .counter_out(Second_counter_counter_out),
        .rst(Comparator_8bit_0_output1));
  clock_Counter_8bit_0_4 Ten_minute_counter
       (.clk(Comparator_8bit_0_output2),
        .counter_out(Ten_minute_counter_counter_out),
        .rst(Comparator_8bit_0_output));
  clock_Counter_8bit_0_2 Ten_second_counter
       (.clk(Comparator_8bit_0_output1),
        .counter_out(Ten_second_counter_counter_out),
        .rst(Comparator_6_10_sec_output));
  clock_cmp_100_0_0 cmp_100_0
       (.o(cmp_100_0_o));
  clock_cmp_10_0_0 cmp_10_0
       (.o(cmp_10_0_o));
  clock_cmp_6_0_0 cmp_6_0
       (.o(cmp_6_0_o));
  clock_sim_clk_gen_0_0 sim_clk_gen_0
       (.clk(sim_clk_gen_0_clk));
endmodule
