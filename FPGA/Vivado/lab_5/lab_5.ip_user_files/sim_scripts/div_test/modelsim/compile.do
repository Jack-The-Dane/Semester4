vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../bd/div_test/ip/div_test_clock_divider_0_0/sim/div_test_clock_divider_0_0.v" \
"../../../bd/div_test/ip/div_test_Counter_8bit_0_0/sim/div_test_Counter_8bit_0_0.v" \
"../../../bd/div_test/sim/div_test.v" \


vlog -work xil_defaultlib \
"glbl.v"

