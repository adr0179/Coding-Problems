extern printf
extern scanf

global main

section .text

main:

	; printf
	mov rdi, namePrompt
	push rbx
	call printf
	pop rbx
	
	;scanf
	mov rdi, nameFormat
	mov rsi, name
	push rbx
	call scanf
	pop rbx
	
	; printf
	mov rdi, agePrompt
	push rbx
	call printf
	pop rbx
	
	; scanf
	mov rdi, ageFormat
	mov rsi, age
	push rbx
	call scanf
	pop rbx
	
	; get cat years catAge * 7
	mov rax, [age]
	mov rcx, 7
	mul rcx
	; rdx contains the high order bits & rax contains the lower order bits (rax has our awsner here)
	
	; printf
	mov rdi, message
	mov rsi, name
	mov rdx, [age]
	mov rcx, rax
	push rbx
	call printf
	pop rbx

	
	mov rax, 0
	ret
	
section .data
	namePrompt db "enter cats name: ", 0
	nameFormat db "%s", 0
	
	agePrompt db "enter cats age: ", 0
	ageFormat db "%d", 0
	
	message db "Your cat, %s, is %d year(s) old and %d in cat years", 0ah, 0dh, 0
	
section .bss
	name resb 51
	age resq 1 ; reserves a quad array with 1 integer