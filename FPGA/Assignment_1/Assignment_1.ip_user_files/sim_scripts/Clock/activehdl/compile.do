transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 -l xil_defaultlib \
"../../../bd/Clock/ip/Clock_Counter_generic_0_0/sim/Clock_Counter_generic_0_0.v" \
"../../../bd/Clock/ip/Clock_Counter_generic_0_1/sim/Clock_Counter_generic_0_1.v" \
"../../../bd/Clock/ip/Clock_Counter_generic_0_2/sim/Clock_Counter_generic_0_2.v" \
"../../../bd/Clock/ip/Clock_digit_splitter_0_0/sim/Clock_digit_splitter_0_0.v" \
"../../../bd/Clock/ip/Clock_digit_splitter_0_1/sim/Clock_digit_splitter_0_1.v" \
"../../../bd/Clock/ip/Clock_BCD_to_7seg_0_0/sim/Clock_BCD_to_7seg_0_0.v" \
"../../../bd/Clock/ip/Clock_BCD_to_7seg_0_1/sim/Clock_BCD_to_7seg_0_1.v" \
"../../../bd/Clock/ip/Clock_BCD_to_7seg_0_2/sim/Clock_BCD_to_7seg_0_2.v" \
"../../../bd/Clock/ip/Clock_BCD_to_7seg_0_3/sim/Clock_BCD_to_7seg_0_3.v" \
"../../../bd/Clock/sim/Clock.v" \


vlog -work xil_defaultlib \
"glbl.v"

