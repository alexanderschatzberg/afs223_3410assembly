
li t0, 0           # rd (t0) = 0
li t1, 0           # i

loop:
    andi t2, a1, 1     # Check if the LSB of rs2 (a1) is 1 (rs2 & 0x1)
    beq t2, x0, skip_add  # If rs2's LSB is 0, skip addition
    add t0, t0, a0     # Add rs1 (a0) to rd (t0)

skip_add:
    slli a0, a0, 1     # Left shift rs1 (a0) by 1
    srli a1, a1, 1     # Right shift rs2 (a1) by 1 
    addi t1, t1, 1     # i++
    li t2, 64          # Load 64 into t2
    bne t1, t2, loop   # If i != 64, repeat the loop

    # Return value in t0
    ret