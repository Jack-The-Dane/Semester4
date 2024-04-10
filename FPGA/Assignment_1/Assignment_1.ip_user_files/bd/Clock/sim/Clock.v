//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Tue Mar 19 19:35:10 2024
//Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
//Command     : generate_target Clock.bd
//Design      : Clock
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Clock,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Clock,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=9,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "Clock.hwdef" *) 
module Clock
   (Minutes_LSD,
    Minutes_MSD,
    Seconds_LSD,
    Seconds_MSD,
    clk_0,
    minutes,
    rst_0,
    seconds);
  output [6:0]Minutes_LSD;
  output [6:0]Minutes_MSD;
  output [6:0]Seconds_LSD;
  output [6:0]Seconds_MSD;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET rst_0, CLK_DOMAIN Clock_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_0;
  output [5:0]minutes;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_0;
  output [5:0]seconds;

  wire Counter_1_sec_cnt_full;
  wire [5:0]Counter_minutes_current_val;
  wire Counter_seconds_cnt_full;
  wire [5:0]Counter_seconds_current_val;
  wire clk_0_1;
  wire [6:0]min_LSD_BCD_to_7seg_seg_out;
  wire [6:0]min_MSD_BCD_to_7seg_seg_out;
  wire [3:0]minute_splitter_LSD_out;
  wire [3:0]minute_splitter_MSD_out;
  wire rst_0_1;
  wire [3:0]sceond_splitter_LSD_out;
  wire [3:0]sceond_splitter_MSD_out;
  wire [6:0]sec_LSD_BCD_to_7seg_seg_out;
  wire [6:0]sec_MSD_BCD_to_7seg_seg_out;

  assign Minutes_LSD[6:0] = min_LSD_BCD_to_7seg_seg_out;
  assign Minutes_MSD[6:0] = min_MSD_BCD_to_7seg_seg_out;
  assign Seconds_LSD[6:0] = sec_LSD_BCD_to_7seg_seg_out;
  assign Seconds_MSD[6:0] = sec_MSD_BCD_to_7seg_seg_out;
  assign clk_0_1 = clk_0;
  assign minutes[5:0] = Counter_minutes_current_val;
  assign rst_0_1 = rst_0;
  assign seconds[5:0] = Counter_seconds_current_val;
  Clock_Counter_generic_0_0 Counter_1_sec_10kHz
       (.clk(clk_0_1),
        .cnt_full(Counter_1_sec_cnt_full),
        .rst(rst_0_1));
  Clock_Counter_generic_0_2 Counter_minutes
       (.clk(Counter_seconds_cnt_full),
        .current_val(Counter_minutes_current_val),
        .rst(rst_0_1));
  Clock_Counter_generic_0_1 Counter_seconds
       (.clk(Counter_1_sec_cnt_full),
        .cnt_full(Counter_seconds_cnt_full),
        .current_val(Counter_seconds_current_val),
        .rst(rst_0_1));
  Clock_BCD_to_7seg_0_0 min_LSD_BCD_to_7seg
       (.BCD(minute_splitter_LSD_out),
        .seg_out(min_LSD_BCD_to_7seg_seg_out));
  Clock_BCD_to_7seg_0_2 min_MSD_BCD_to_7seg
       (.BCD(minute_splitter_MSD_out),
        .seg_out(min_MSD_BCD_to_7seg_seg_out));
  Clock_digit_splitter_0_1 minute_splitter
       (.LSD_out(minute_splitter_LSD_out),
        .MSD_out(minute_splitter_MSD_out),
        .digits_in({1'b0,Counter_minutes_current_val}));
  Clock_digit_splitter_0_0 sceond_splitter
       (.LSD_out(sceond_splitter_LSD_out),
        .MSD_out(sceond_splitter_MSD_out),
        .digits_in({1'b0,Counter_seconds_current_val}));
  Clock_BCD_to_7seg_0_1 sec_LSD_BCD_to_7seg
       (.BCD(sceond_splitter_LSD_out),
        .seg_out(sec_LSD_BCD_to_7seg_seg_out));
  Clock_BCD_to_7seg_0_3 sec_MSD_BCD_to_7seg
       (.BCD(sceond_splitter_MSD_out),
        .seg_out(sec_MSD_BCD_to_7seg_seg_out));
endmodule
