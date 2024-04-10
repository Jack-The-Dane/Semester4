transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+half_adder  -L xil_defaultlib -L xlconcat_v2_1_5 -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.half_adder xil_defaultlib.glbl

do {half_adder.udo}

run

endsim

quit -force
