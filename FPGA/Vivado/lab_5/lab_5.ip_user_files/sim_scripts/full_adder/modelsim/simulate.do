onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xlconcat_v2_1_5 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.full_adder xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {full_adder.udo}

run 1000ns

quit -force
