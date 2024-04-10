transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xil_defaultlib
vlib riviera/xlconcat_v2_1_5
vlib riviera/xlconstant_v1_1_8
vlib riviera/xlslice_v1_0_3

vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconcat_v2_1_5 riviera/xlconcat_v2_1_5
vmap xlconstant_v1_1_8 riviera/xlconstant_v1_1_8
vmap xlslice_v1_0_3 riviera/xlslice_v1_0_3

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib -l xlconcat_v2_1_5 -l xlconstant_v1_1_8 -l xlslice_v1_0_3 \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_xor_generic_0_0/sim/subtractor_4_bit_xor_generic_0_0.v" \

vlog -work xlconcat_v2_1_5  -incr -v2k5 -l xil_defaultlib -l xlconcat_v2_1_5 -l xlconstant_v1_1_8 -l xlslice_v1_0_3 \
"../../../../lab_5.gen/sources_1/bd/subtractor_4_bit/ip/subtractor_4_bit_full_adder_0_0/src/full_adder_half_adder_0_0/src/half_adder_xlconcat_0_0/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib -l xlconcat_v2_1_5 -l xlconstant_v1_1_8 -l xlslice_v1_0_3 \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_full_adder_0_0/src/full_adder_half_adder_0_0/src/half_adder_xlconcat_0_0/sim/half_adder_xlconcat_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_full_adder_0_0/src/full_adder_half_adder_0_0/src/AND_generic.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib -l xlconcat_v2_1_5 -l xlconstant_v1_1_8 -l xlslice_v1_0_3 \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_full_adder_0_0/src/full_adder_half_adder_0_0/sim/half_adder_AND_generic_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_full_adder_0_0/src/full_adder_half_adder_0_0/src/xor_generic.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib -l xlconcat_v2_1_5 -l xlconstant_v1_1_8 -l xlslice_v1_0_3 \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_full_adder_0_0/src/full_adder_half_adder_0_0/sim/half_adder_xor_generic_0_0.v" \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_full_adder_0_0/src/full_adder_half_adder_0_0/sim/half_adder.v" \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_full_adder_0_0/src/full_adder_half_adder_0_0/sim/full_adder_half_adder_0_0.v" \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_full_adder_0_0/src/full_adder_xlconcat_0_0/sim/full_adder_xlconcat_0_0.v" \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_full_adder_0_0/src/full_adder_half_adder_1_0/sim/full_adder_half_adder_1_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/subtractor_4_bit/ipshared/c271/src/OR_generic.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib -l xlconcat_v2_1_5 -l xlconstant_v1_1_8 -l xlslice_v1_0_3 \
"../../../bd/subtractor_4_bit/ipshared/c271/sim/full_adder_OR_generic_0_0.v" \
"../../../bd/subtractor_4_bit/ipshared/c271/sim/full_adder.v" \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_full_adder_0_0/sim/subtractor_4_bit_full_adder_0_0.v" \

vlog -work xlconstant_v1_1_8  -incr -v2k5 -l xil_defaultlib -l xlconcat_v2_1_5 -l xlconstant_v1_1_8 -l xlslice_v1_0_3 \
"../../../../lab_5.gen/sources_1/bd/subtractor_4_bit/ipshared/d390/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib -l xlconcat_v2_1_5 -l xlconstant_v1_1_8 -l xlslice_v1_0_3 \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_xlconstant_0_0/sim/subtractor_4_bit_xlconstant_0_0.v" \

vlog -work xlslice_v1_0_3  -incr -v2k5 -l xil_defaultlib -l xlconcat_v2_1_5 -l xlconstant_v1_1_8 -l xlslice_v1_0_3 \
"../../../../lab_5.gen/sources_1/bd/subtractor_4_bit/ipshared/217a/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xil_defaultlib -l xlconcat_v2_1_5 -l xlconstant_v1_1_8 -l xlslice_v1_0_3 \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_xlslice_0_0/sim/subtractor_4_bit_xlslice_0_0.v" \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_full_adder_1_0/sim/subtractor_4_bit_full_adder_1_0.v" \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_xor_generic_1_0/sim/subtractor_4_bit_xor_generic_1_0.v" \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_xlslice_0_3/sim/subtractor_4_bit_xlslice_0_3.v" \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_bslice_0_0/sim/subtractor_4_bit_bslice_0_0.v" \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_bslice_0_1/sim/subtractor_4_bit_bslice_0_1.v" \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_bslice_0_2/sim/subtractor_4_bit_bslice_0_2.v" \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_aslice_0_0/sim/subtractor_4_bit_aslice_0_0.v" \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_aslice_0_1/sim/subtractor_4_bit_aslice_0_1.v" \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_aslice_0_2/sim/subtractor_4_bit_aslice_0_2.v" \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_xor_generic_1_1/sim/subtractor_4_bit_xor_generic_1_1.v" \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_xor_generic_1_2/sim/subtractor_4_bit_xor_generic_1_2.v" \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_full_adder_1_1/sim/subtractor_4_bit_full_adder_1_1.v" \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_full_adder_1_2/sim/subtractor_4_bit_full_adder_1_2.v" \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_xlconcat_0_0/sim/subtractor_4_bit_xlconcat_0_0.v" \
"../../../bd/subtractor_4_bit/sim/subtractor_4_bit.v" \
"../../../bd/subtractor_4_bit/ip/subtractor_4_bit_NOT_gate_0_0/sim/subtractor_4_bit_NOT_gate_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

