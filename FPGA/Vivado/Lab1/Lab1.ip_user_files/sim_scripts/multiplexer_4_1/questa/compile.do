vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr -mfcu  \
"../../../bd/multiplexer_4_1/ip/multiplexer_4_1_AND_gate_0_0/sim/multiplexer_4_1_AND_gate_0_0.v" \
"../../../bd/multiplexer_4_1/ip/multiplexer_4_1_NOT_gate_0_0/sim/multiplexer_4_1_NOT_gate_0_0.v" \
"../../../bd/multiplexer_4_1/ip/multiplexer_4_1_NOT_gate_1_0/sim/multiplexer_4_1_NOT_gate_1_0.v" \
"../../../bd/multiplexer_4_1/ip/multiplexer_4_1_AND_gate_0_1/sim/multiplexer_4_1_AND_gate_0_1.v" \
"../../../bd/multiplexer_4_1/ip/multiplexer_4_1_AND_gate_2_0/sim/multiplexer_4_1_AND_gate_2_0.v" \
"../../../bd/multiplexer_4_1/ip/multiplexer_4_1_AND_gate_3_0/sim/multiplexer_4_1_AND_gate_3_0.v" \
"../../../bd/multiplexer_4_1/ip/multiplexer_4_1_AND_gate_0_2/sim/multiplexer_4_1_AND_gate_0_2.v" \
"../../../bd/multiplexer_4_1/ip/multiplexer_4_1_AND_gate_0_3/sim/multiplexer_4_1_AND_gate_0_3.v" \
"../../../bd/multiplexer_4_1/ip/multiplexer_4_1_AND_gate_6_0/sim/multiplexer_4_1_AND_gate_6_0.v" \
"../../../bd/multiplexer_4_1/ip/multiplexer_4_1_AND_gate_7_0/sim/multiplexer_4_1_AND_gate_7_0.v" \
"../../../bd/multiplexer_4_1/ip/multiplexer_4_1_OR_gate_0_0/sim/multiplexer_4_1_OR_gate_0_0.v" \
"../../../bd/multiplexer_4_1/ip/multiplexer_4_1_OR_gate_1_0/sim/multiplexer_4_1_OR_gate_1_0.v" \
"../../../bd/multiplexer_4_1/ip/multiplexer_4_1_OR_gate_2_0/sim/multiplexer_4_1_OR_gate_2_0.v" \
"../../../bd/multiplexer_4_1/sim/multiplexer_4_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

