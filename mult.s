
li t0, 0
li t1, 0

loop:
    andi t2, a1, 1
    beq t2, x0, skip_add
    add t0, t0, a0

skip_add:
    slli a0, a0, 1
    srli a1, a1, 1
    addi t1, t1, 1
    li t2, 64
    bne t1, t2, loop