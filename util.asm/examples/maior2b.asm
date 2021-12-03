%include        '../util.asm'

section         .text
global          _start

_start:
        call    readint		; lê
        mov     r12, rax        ; priemiro valor
        call    readint		; lê
        mov     r13, rax        ; segundo valor
        cmp     r12, r13        ; r12 > 13 ? 
	cmovg	rdi, r12	; sim, printa r12
	cmovng	rdi, r13	; nao, printa r13
        call    printint	; printa rdi
        call    endl		
        call    exit0		
	
