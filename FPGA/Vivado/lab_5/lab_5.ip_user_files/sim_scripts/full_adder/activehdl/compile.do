transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xlconcat_v2_1_5
vlib activehdl/xil_defaultlib

vmap xlconcat_v2_1_5 activehdl/xlconcat_v2_1_5
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xlconcat_v2_1_5  -v2k5 -l xlconcat_v2_1_5 -l xil_defaultlib \
"../../../../lab_5.gen/sources_1/bd/full_adder/ip/full_adder_half_adder_0_0/src/half_adder_xlconcat_0_0/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 -l xlconcat_v2_1_5 -l xil_defaultlib \
"../../../bd/full_adder/ip/full_adder_half_adder_0_0/src/half_adder_xlconcat_0_0/sim/half_adder_xlconcat_0_0.v" \

vcom -work xil_defaultlib -  \
"../../../bd/full_adder/ipshared/a74b/src/AND_generic.vhd" \

vlog -work xil_defaultlib  -v2k5 -l xlconcat_v2_1_5 -l xil_defaultlib \
"../../../bd/full_adder/ipshared/a74b/sim/half_adder_AND_generic_0_0.v" \

vcom -work xil_defaultlib -  \
"../../../bd/full_adder/ipshared/a74b/src/xor_generic.vhd" \

vlog -work xil_defaultlib  -v2k5 -l xlconcat_v2_1_5 -l xil_defaultlib \
"../../../bd/full_adder/ipshared/a74b/sim/half_adder_xor_generic_0_0.v" \
"../../../bd/full_adder/ipshared/a74b/sim/half_adder.v" \
"../../../bd/full_adder/ip/full_adder_half_adder_0_0/sim/full_adder_half_adder_0_0.v" \
"../../../bd/full_adder/ip/full_adder_OR_generic_0_0/sim/full_adder_OR_generic_0_0.v" \
"../../../bd/full_adder/ip/full_adder_xlconcat_0_0/sim/full_adder_xlconcat_0_0.v" \
"../../../bd/full_adder/ip/full_adder_half_adder_1_0/sim/full_adder_half_adder_1_0.v" \
"../../../bd/full_adder/sim/full_adder.v" \

vlog -work xil_defaultlib \
"glbl.v"

