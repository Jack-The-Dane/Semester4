transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/sim_clk_gen_v1_0_3
vlib activehdl/xil_defaultlib

vmap sim_clk_gen_v1_0_3 activehdl/sim_clk_gen_v1_0_3
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work sim_clk_gen_v1_0_3  -v2k5 -l sim_clk_gen_v1_0_3 -l xil_defaultlib \
"../../../../Lab1.gen/sources_1/bd/clock/ipshared/fda6/hdl/sim_clk_gen_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 -l sim_clk_gen_v1_0_3 -l xil_defaultlib \
"../../../bd/clock/ip/clock_sim_clk_gen_0_0/sim/clock_sim_clk_gen_0_0.v" \
"../../../bd/clock/ip/clock_Counter_8bit_0_0/sim/clock_Counter_8bit_0_0.v" \
"../../../bd/clock/ip/clock_Comparator_8bit_0_0/sim/clock_Comparator_8bit_0_0.v" \
"../../../bd/clock/ip/clock_Counter_8bit_0_1/sim/clock_Counter_8bit_0_1.v" \
"../../../bd/clock/ip/clock_Comparator_8bit_0_1/sim/clock_Comparator_8bit_0_1.v" \
"../../../bd/clock/ip/clock_Counter_8bit_0_2/sim/clock_Counter_8bit_0_2.v" \
"../../../bd/clock/ip/clock_Comparator_8bit_0_2/sim/clock_Comparator_8bit_0_2.v" \
"../../../bd/clock/ip/clock_Counter_8bit_0_3/sim/clock_Counter_8bit_0_3.v" \
"../../../bd/clock/ip/clock_Comparator_8bit_0_3/sim/clock_Comparator_8bit_0_3.v" \
"../../../bd/clock/ip/clock_Counter_8bit_0_4/sim/clock_Counter_8bit_0_4.v" \
"../../../bd/clock/ip/clock_Counter_8bit_0_5/sim/clock_Counter_8bit_0_5.v" \
"../../../bd/clock/ip/clock_Comparator_8bit_0_4/sim/clock_Comparator_8bit_0_4.v" \
"../../../bd/clock/ip/clock_cmp_100_0_0/sim/clock_cmp_100_0_0.v" \
"../../../bd/clock/ip/clock_cmp_10_0_0/sim/clock_cmp_10_0_0.v" \
"../../../bd/clock/ip/clock_Comparator_8bit_0_5/sim/clock_Comparator_8bit_0_5.v" \
"../../../bd/clock/ip/clock_cmp_6_0_0/sim/clock_cmp_6_0_0.v" \
"../../../bd/clock/ip/clock_BCD_to_7seg_0_0/sim/clock_BCD_to_7seg_0_0.v" \
"../../../bd/clock/ip/clock_Sec_LSD_0/sim/clock_Sec_LSD_0.v" \
"../../../bd/clock/ip/clock_BCD_to_7seg_0_1/sim/clock_BCD_to_7seg_0_1.v" \
"../../../bd/clock/ip/clock_BCD_to_7seg_0_2/sim/clock_BCD_to_7seg_0_2.v" \
"../../../bd/clock/sim/clock.v" \

vlog -work xil_defaultlib \
"glbl.v"

