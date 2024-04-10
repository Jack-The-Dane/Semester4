//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Wed Apr  3 17:09:07 2024
//Host        : Laptop running 64-bit Ubuntu 22.04.4 LTS
//Command     : generate_target subtractor_4_bit.bd
//Design      : subtractor_4_bit
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "subtractor_4_bit,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=subtractor_4_bit,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=19,numReposBlks=19,numNonXlnxBlks=4,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=4,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "subtractor_4_bit.hwdef" *) 
module subtractor_4_bit
   (a,
    b,
    s);
  input [3:0]a;
  input [3:0]b;
  output [4:0]s;

  wire NOT_gate_0_B;
  wire [3:0]a_1;
  wire [0:0]aslice_0_Dout;
  wire [0:0]aslice_1_Dout;
  wire [0:0]aslice_2_Dout;
  wire [0:0]aslice_3_Dout;
  wire [3:0]b_1;
  wire [0:0]bslice_0_Dout;
  wire [0:0]bslice_1_Dout;
  wire [0:0]bslice_2_Dout;
  wire [0:0]bslice_3_Dout;
  wire full_adder_0_c_out;
  wire full_adder_0_s;
  wire full_adder_1_c_out;
  wire full_adder_1_s;
  wire full_adder_2_c_out;
  wire full_adder_2_s;
  wire full_adder_3_c_out;
  wire full_adder_3_s;
  wire [4:0]xlconcat_0_dout;
  wire [0:0]xlconstant_0_dout;
  wire xor_generic_0_o;
  wire xor_generic_1_o;
  wire xor_generic_2_o;
  wire xor_generic_3_o;

  assign a_1 = a[3:0];
  assign b_1 = b[3:0];
  assign s[4:0] = xlconcat_0_dout;
  subtractor_4_bit_NOT_gate_0_0 NOT_gate_0
       (.A(full_adder_3_c_out),
        .B(NOT_gate_0_B));
  subtractor_4_bit_xlslice_0_3 aslice_0
       (.Din(a_1),
        .Dout(aslice_0_Dout));
  subtractor_4_bit_aslice_0_0 aslice_1
       (.Din(a_1),
        .Dout(aslice_1_Dout));
  subtractor_4_bit_aslice_0_1 aslice_2
       (.Din(a_1),
        .Dout(aslice_2_Dout));
  subtractor_4_bit_aslice_0_2 aslice_3
       (.Din(a_1),
        .Dout(aslice_3_Dout));
  subtractor_4_bit_xlslice_0_0 bslice_0
       (.Din(b_1),
        .Dout(bslice_0_Dout));
  subtractor_4_bit_bslice_0_0 bslice_1
       (.Din(b_1),
        .Dout(bslice_1_Dout));
  subtractor_4_bit_bslice_0_1 bslice_2
       (.Din(b_1),
        .Dout(bslice_2_Dout));
  subtractor_4_bit_bslice_0_2 bslice_3
       (.Din(b_1),
        .Dout(bslice_3_Dout));
  subtractor_4_bit_full_adder_0_0 full_adder_0
       (.a(aslice_0_Dout),
        .b(xor_generic_0_o),
        .c_in(xlconstant_0_dout),
        .c_out(full_adder_0_c_out),
        .s(full_adder_0_s));
  subtractor_4_bit_full_adder_1_0 full_adder_1
       (.a(aslice_1_Dout),
        .b(xor_generic_1_o),
        .c_in(full_adder_0_c_out),
        .c_out(full_adder_1_c_out),
        .s(full_adder_1_s));
  subtractor_4_bit_full_adder_1_1 full_adder_2
       (.a(aslice_2_Dout),
        .b(xor_generic_2_o),
        .c_in(full_adder_1_c_out),
        .c_out(full_adder_2_c_out),
        .s(full_adder_2_s));
  subtractor_4_bit_full_adder_1_2 full_adder_3
       (.a(aslice_3_Dout),
        .b(xor_generic_3_o),
        .c_in(full_adder_2_c_out),
        .c_out(full_adder_3_c_out),
        .s(full_adder_3_s));
  subtractor_4_bit_xlconcat_0_0 xlconcat_0
       (.In0(full_adder_0_s),
        .In1(full_adder_1_s),
        .In2(full_adder_2_s),
        .In3(full_adder_3_s),
        .In4(NOT_gate_0_B),
        .dout(xlconcat_0_dout));
  subtractor_4_bit_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  subtractor_4_bit_xor_generic_0_0 xor_generic_0
       (.a(xlconstant_0_dout),
        .b(bslice_0_Dout),
        .o(xor_generic_0_o));
  subtractor_4_bit_xor_generic_1_0 xor_generic_1
       (.a(xlconstant_0_dout),
        .b(bslice_1_Dout),
        .o(xor_generic_1_o));
  subtractor_4_bit_xor_generic_1_1 xor_generic_2
       (.a(xlconstant_0_dout),
        .b(bslice_2_Dout),
        .o(xor_generic_2_o));
  subtractor_4_bit_xor_generic_1_2 xor_generic_3
       (.a(xlconstant_0_dout),
        .b(bslice_3_Dout),
        .o(xor_generic_3_o));
endmodule
