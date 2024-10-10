add t0, x11, x10 
addi t2, x0, 2
mul t0, t0, t2
lw t3, 16(x12)
sub x10, t0, t3 

sw x10, 12(x13)