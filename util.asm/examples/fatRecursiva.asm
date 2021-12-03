fatorial:
        test    rdi, rdi
        jz      .n0
        push    rbx
        mov     rbx, rdi
        dec     rdi0
        call    fatorial
        imul    rax, rbx
        pop     rbx
        ret

    .n0:    
        mov     rax, 1
        ret