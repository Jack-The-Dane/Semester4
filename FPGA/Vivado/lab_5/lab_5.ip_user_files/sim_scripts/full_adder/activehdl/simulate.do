transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+full_adder  -L xlconcat_v2_1_5 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.full_adder xil_defaultlib.glbl

do {full_adder.udo}

run

endsim

quit -force
