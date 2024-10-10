.prime:
    addi t1, x0, 2
    blt a2, t1, .ret_fls 
    addi t0, x0, 2 // i = 2

LOOP: 
    beq a2, t0, .ret_tru // return true if i makes it up to p 
    
    div t5, a2, t4         # t5 = p / i
    mul t3, t5, t4         # t3 = (p / i) * i
    sub t3, a2, t3         # t3 = p - ((p / i) * i) -> rem

    beqz t3, .ret_fls      # if rem == 0, jump to .ret_fls (return false)

    addi t4, t4, 1         # i = i + 1
    j loop_start 

