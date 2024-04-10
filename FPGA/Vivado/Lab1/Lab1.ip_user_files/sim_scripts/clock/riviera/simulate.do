transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+clock  -L sim_clk_gen_v1_0_3 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.clock xil_defaultlib.glbl

do {clock.udo}

run 1000ns

endsim

quit -force
