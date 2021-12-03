; Escreva um progrma que inicialmente
; lê 8 valores e depois exibe-os
; em ordem reversa à que foram digitados

%include        '../util.asm'

section         .text
global          _start

_start:
                xor     rbx, rbx                ; i = 0
        .loop:
                call    readint
                mov     [vet+rbx*8], rax        ; vet[i] = readint()
                inc     rbx                     ; i++
                cmp     rbx, 8                  ; while(i < 8)
                jl      .loop                   ; se menor vai volta pro laço

                call    endl

        .rloop:
                dec     rbx                     ; i--
                mov     rdi, [vet+rbx*8]        ; rdi = vet[i]
                call    printint                ; printint(rdi)
                call    endl
                test    rbx, rbx                ; while(i > 0)
                jg      .rloop                  ; se for maior volra pro laço

                call    exit0

section         .bss
vet:            resq 0
~                                 

