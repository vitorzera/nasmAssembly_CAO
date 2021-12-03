include		'../util.asm'

section		.text
global		_start

_start:
		lea	rdi, [msg1]
		call	printstr
		xor	rbx, rbx
	
	.laco:
		call	readint
		cmp	rax, 0
		je	.fim
		and	rax, 1		;testa se é impar ou par
		jz	.laco		;se nao é impaer	
		inc	rbx		;se for impar incrementa
		jmp	.laco		;e volta pro laço

	.fim:	
		mov	rdi, rax
		call	printint
		lea	rdi, [msg2]
		call	printstr
		call	exit0

section		.data
msg1:	db	'Informe valores(0 para sair):', 10, 0
msg2:	db	' Impares Informados', 10, 0
