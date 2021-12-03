%include	'../util.asm'

section		.text
global		_start

_start:
	call	readint
	mov	r12, rax	; priemiro valor
	call	readint
	mov	r13, rax	; segundo valor
	cmp	r12, r13	; compara 
	jg	foo		; se o r13 for maior segue a execução
	mov	rdi, r13
	jmp	mostra		; vai dar um jump para o rotulo mostra

foo:				; se o r12 for maior pula p/ esse rotulo
	mov	rdi, r12

mostra:
	call	printint
	call	endl
	call	exit0
	

