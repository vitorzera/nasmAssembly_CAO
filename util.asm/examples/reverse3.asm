; Escreva um progrma que inicialmente
; lê 8 valores e depois exibe-os
; em ordem reversa à que foram digitados

%include        '../util.asm'

section         .text
global          _start

_start:
		mov	rbx, 8
	.laco1:
		; ...
		call	readint
		push	rax
		dec	rbx
		jnz	.laco1
		
		call	endl
		mov	rbx, 0

	.laco2:
		pop	rdi
		call	printint
		call	endl
		dec	rbx
		jnz	.laco2
		
		call	exit0
