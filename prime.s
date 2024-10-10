.prime:
    addi t1, x0, 2
    blt a2, t1, .ret_fls 
    addi t0, x0, 2

LOOP: 
    beq a2, t0, .ret_tru

    div t5, a2, t4
    mul t3, t5, t4
    sub t3, a2, t3

    beqz t3, .ret_fls

    addi t4, t4, 1
    j LOOP: 

