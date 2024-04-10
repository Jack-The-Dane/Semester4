transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+subtractor_4_bit  -L xil_defaultlib -L xlconcat_v2_1_5 -L xlconstant_v1_1_8 -L xlslice_v1_0_3 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.subtractor_4_bit xil_defaultlib.glbl

do {subtractor_4_bit.udo}

run 1000ns

endsim

quit -force
