transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 -l xil_defaultlib \
"../../../bd/div_test/ip/div_test_clock_divider_0_0/sim/div_test_clock_divider_0_0.v" \
"../../../bd/div_test/ip/div_test_Counter_8bit_0_0/sim/div_test_Counter_8bit_0_0.v" \
"../../../bd/div_test/sim/div_test.v" \


vlog -work xil_defaultlib \
"glbl.v"

