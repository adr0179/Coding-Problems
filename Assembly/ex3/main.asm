extern printf
extern scanf

global main

main:
	; printf("enter a number: ")
	mov rdi, numberPrompt
	push rbx
	call printf
	pop rbx
	
	; scanf("%d", sum)
	mov rdi, numberFormat
	mov rsi, num
	push rbx
	call scanf
	pop rbx
	
	; if ((num % 2) == 0) {*print its even} %2 divide by 2
	; else {*print its odd}
	mov rbx, 2
	mov rax, [num]
	mov rdx, 0 ; define rdx to store the numerator
	idiv rbx
	
	cmp rdx, 0
	jne odd
	
	mov rdi, evenPrompt
	push rbx
	call printf
	pop rbx

	mov rax, 0
	ret

odd:
	mov rdi, oddMessage
	push rbx
	call printf
	pop rbx
	
	mov rax, 0
	ret

; constants	
section .rodata
	numberPrompt db "Enter a Number: ", 0
	numberFormat db "%d", 0
	evenPrompt db "the number is even", 0ah, 0dh, 0
	oddMessage db "the number is odd", 0ah, 0dh, 0
	
	temp db "%d", 0
	
section .data
	num dq 0