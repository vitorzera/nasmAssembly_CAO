%include	'../util.asm'

section		.text
global		_start

_start:
		xor	r12, r12
	.loop:
		mov	rdi, [vet+r12*8]
		call	printint
		call	endl	
		inc	r12
		cmp	r12, 3
		jl	.loop
		call	exit0

section		.data
vet:		dq 1, 2, 3
