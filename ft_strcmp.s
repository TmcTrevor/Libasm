
global .text
	global _ft_strcmp

_ft_strcmp:
	mov 	rax, 0
	jmp		_compa

_compa:
	mov		al, BYTE[rdi]
	mov		bl, BYTE[rsi]
	cmp		al, 0
	je		_exit
	cmp		bl, 0
	je		_exit
	cmp 	al, bl
	jne 	_exit
	inc 	rdi
	inc 	rsi
	jmp 	_compa

_exit:
	movzx	rax, al
    movzx	rbx, bl
    sub		rax, rbx
	ret