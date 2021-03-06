vsim IO_MemoryInterface
view wave

add wave clock
add wave mem_write
add wave mem_addr
add wave mem_data
add wave reset

add wave stickHitHigh
add wave stickHitLow
add wave data_out
add wave restart
add wave Measure
add wave nextM
add wave currM
add wave clkCount
add wave stupid

force clock 0 0, 1 10000 -repeat 20000
force reset 0 0
force mem_addr 1101 0, 1110 40000, 1111 80000, 0000 1020000, 1100 1040000
force mem_data 0000000000000000 0, 0000000000000011 40000, 0000000000000001 80000, 0000000000000011 1000000, 1010101010101010 1040000
force mem_write 1 0, 0 20000, 1 40000, 0 60000, 1 80000, 0 100000, 1 1000000, 0 1020000, 1 1040000, 0 1060000


run 10000000	