; programa p/ renomear arquivos
; nasm sem usar nenhuma biblioteca


section     .text
global      _start

_start:
        pop     rbx
        cmp     rbx, 3
        jne     .erroargc
        pop     rbx                 ; retira argv[0]
        pop     rdi                 ; argv[1] :OLDNAME
        pop     rsi                 ; argv[2] :NEWNAME
        mov     rax, 82             ; sys_rename
        syscall
        test    rax, rax
        jnz     .errosys
        mov     rax, 60             ; sys_exit
        xor     rdi, rdi            ; usando xor para zerar o rdi
        syscall

    .errosys:
        lea     rsi, [mgsys]
        mov     rdx, mgsys_len
        jmp     .print

    .erroargc:
        lea     rsi, [mgsargc]      ; string a printar
        mov     rdx, mgsargc_len

    .print:
        mov     rax, 1              ; sys_write
        mov     rdi, 1              ; srdout    (ou 2 p/ stderr) 
        syscall
        mov     rax, 60             ; sys_exit
        mov     rdi, 1
        syscall

section         .data
mgsargc:        db 'Usage: ren OLDNAME NEWNAME', 10
mgsargc_len:    equ $ - mgsargc
mgsys:          db 'Error renaming file', 10
mgsys_len       equ $ - mgsys