%include    '../util.asm'

section     .text
global      _start

_start:
        pop     rdi         ; mostra só o argc
        call    printint
        call    endl


        pop     rdi         ; mostra o nome do primeiro parametro no começo da pilha
        call    printstr
        call    endl


;        pop     rdi
;        mov     rbx, rdi
;        call    printint
;        call    endl
;    .loop
;        pop     rdi
;        call    printstr
;        call    endl
;        dec     rbx
;        jnz     .loop
;        call    exit0 