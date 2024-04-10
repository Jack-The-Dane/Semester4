vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu  \
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

