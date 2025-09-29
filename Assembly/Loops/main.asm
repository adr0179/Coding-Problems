extern printf

global main

section .text

main:
	mov r15, 0 ; acts as i
	
loopStart:
	cmp r15, 10
	jge exit ; if (r15 < 10) but checks the else only (r15 >= 10)
	
	mov rdi, prompt
	mov rsi, r15
	push rbx
	call printf
	pop rbx
	
	inc r15 ; increment r15
	jmp loopStart

exit:
	mov rax, 0
	ret

section .data
	prompt db "%d", 0ah, 0dh, 0