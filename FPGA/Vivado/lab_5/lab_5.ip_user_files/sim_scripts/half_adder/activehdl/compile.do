transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xil_defaultlib
vlib activehdl/xlconcat_v2_1_5

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xlconcat_v2_1_5 activehdl/xlconcat_v2_1_5

vlog -work xil_defaultlib  -v2k5 -l xil_defaultlib -l xlconcat_v2_1_5 \
"../../../bd/half_adder/ip/half_adder_AND_generic_0_0/sim/half_adder_AND_generic_0_0.v" \
"../../../bd/half_adder/ip/half_adder_xor_generic_0_0/sim/half_adder_xor_generic_0_0.v" \

vlog -work xlconcat_v2_1_5  -v2k5 -l xil_defaultlib -l xlconcat_v2_1_5 \
"../../../../lab_5.gen/sources_1/bd/half_adder/ipshared/147b/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 -l xil_defaultlib -l xlconcat_v2_1_5 \
"../../../bd/half_adder/ip/half_adder_xlconcat_0_0/sim/half_adder_xlconcat_0_0.v" \
"../../../bd/half_adder/sim/half_adder.v" \

vlog -work xil_defaultlib \
"glbl.v"

