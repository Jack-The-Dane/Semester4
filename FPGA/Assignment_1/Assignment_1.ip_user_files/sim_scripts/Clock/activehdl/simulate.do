transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+Clock  -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.Clock xil_defaultlib.glbl

do {Clock.udo}

run

endsim

quit -force
