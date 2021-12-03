%include	'../util.asm'

section		.text
global		_start

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Escreva uma função em assembly equivalente à seguinte função em C;
;								  ;
;int fatorial(int n)						  ;
;{								  ;
;	int fat = 1;						  ;
;	for(int i = 2; i <= n; i++)				  ;
;		fat *= i;					  ;
;	return fat;						  ;	
;}								  ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

fatorial:			; rdi n
		mov	rax, 1	; var fat	
		mov	r11, 2	; var i
	.for:
		cmp	r11, rdx
		jg	.fim
		imul	rax, r11
		inc	r11
		jmp	.for
	.fim:
		ret

;main
_start:
	; print first string
	lea	rdi, [msg1]
	call	printstr

	; r15 = fatorial(readint())
	call	readint
	mov	rdi, rax
	call	fatorial
	mov	r15, rax

	; print 2nd string
	lea	rdi, [msg2]
	call	printstr

	; print result (saved in r15) and exit
	mov	rdi, r15
	call	printint
	call	enld
	call	exit0

; Dados em memória
section		.data
msg1:		db 'Digite um número: ', 0
msg2:		db 'Fatorial: ', 0
