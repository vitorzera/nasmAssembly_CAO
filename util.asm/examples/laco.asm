%include    '../util.asm'

section     .text
global      _start

_start:
	xor	rbx, rbx	;zera o contador // cont = 0
	
laco:
	call	readlint	;chama a função para escrever
	cmp	rax, 0		;compara se o que tem dentro do rax = 0
	je	fim		;se rax = 0 vai pro fim
	jmp	laco		;se n for igual a 0 volta pro 'laco'

fim:
	call	exit0		;encerra o programa
