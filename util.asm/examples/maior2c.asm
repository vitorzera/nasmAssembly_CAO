%include	'./util.asm'

section		.text
global		_start

maior:
	mov	rax, rdi
	cmp	rsi, rdi
	cmovg	rax, rsi
	ret

_start:
	call	readlist
	mov	rdx, rax
	call	readlist
	mov	rsi, rax
	mov	rdi, rbx
	call	maior
	mov	rdi, rax
	call	printint
	call	endl
	call	exit0
