vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlconcat_v2_1_5

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlconcat_v2_1_5 questa_lib/msim/xlconcat_v2_1_5

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../bd/half_adder/ip/half_adder_AND_generic_0_0/sim/half_adder_AND_generic_0_0.v" \
"../../../bd/half_adder/ip/half_adder_xor_generic_0_0/sim/half_adder_xor_generic_0_0.v" \

vlog -work xlconcat_v2_1_5 -64 -incr -mfcu  \
"../../../../lab_5.gen/sources_1/bd/half_adder/ipshared/147b/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../bd/half_adder/ip/half_adder_xlconcat_0_0/sim/half_adder_xlconcat_0_0.v" \
"../../../bd/half_adder/sim/half_adder.v" \

vlog -work xil_defaultlib \
"glbl.v"

