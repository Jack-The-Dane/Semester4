vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xlconcat_v2_1_5
vlib modelsim_lib/msim/xil_defaultlib

vmap xlconcat_v2_1_5 modelsim_lib/msim/xlconcat_v2_1_5
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xlconcat_v2_1_5 -64 -incr -mfcu  \
"../../../../lab_5.gen/sources_1/bd/full_adder/ip/full_adder_half_adder_0_0/src/half_adder_xlconcat_0_0/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../bd/full_adder/ip/full_adder_half_adder_0_0/src/half_adder_xlconcat_0_0/sim/half_adder_xlconcat_0_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/full_adder/ipshared/a74b/src/AND_generic.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../bd/full_adder/ipshared/a74b/sim/half_adder_AND_generic_0_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/full_adder/ipshared/a74b/src/xor_generic.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../bd/full_adder/ipshared/a74b/sim/half_adder_xor_generic_0_0.v" \
"../../../bd/full_adder/ipshared/a74b/sim/half_adder.v" \
"../../../bd/full_adder/ip/full_adder_half_adder_0_0/sim/full_adder_half_adder_0_0.v" \
"../../../bd/full_adder/ip/full_adder_OR_generic_0_0/sim/full_adder_OR_generic_0_0.v" \
"../../../bd/full_adder/ip/full_adder_xlconcat_0_0/sim/full_adder_xlconcat_0_0.v" \
"../../../bd/full_adder/ip/full_adder_half_adder_1_0/sim/full_adder_half_adder_1_0.v" \
"../../../bd/full_adder/sim/full_adder.v" \

vlog -work xil_defaultlib \
"glbl.v"

