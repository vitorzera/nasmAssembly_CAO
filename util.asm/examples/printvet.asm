%include	'../util.asm'

section		.text
global		_start

_start:
		xor	r12, r12	; i = 0
	.for:
		mov	rdi, [vet+r12*8]
		call	printint
		call	endl
		inc	r12		; i++
		cmp	r12, 6		; repete enquanto
		jl	.for
		call	exit0	



section		.data

vet:		dq 150, -99, 3333, 45, 0, 788
