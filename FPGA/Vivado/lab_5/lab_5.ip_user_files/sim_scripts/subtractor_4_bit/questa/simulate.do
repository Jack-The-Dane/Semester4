onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib subtractor_4_bit_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {subtractor_4_bit.udo}

run 1000ns

quit -force
