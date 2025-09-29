extern printf
extern scanf

global main

section .text

main:
	mov rdi, messagePrompt
	mov rax, 0
	push rbx
	call printf
	pop rbx
	
	mov rdi, messageFormat
	mov rsi, message
	push rbx
	call scanf
	pop rbx
	
	; convert to uppercase
	; message is a pointer to the first character
	mov r12, message
	
nextChar:
	; each character is a byte use the byte registers
	mov al, [r12]
	
	; see if the next char is a null terminator
	; compares ascii code
	cmp al, 0
	je printRes
	
	; a = 97
	; if number or special char
	cmp al, 65
	jl skipChar
	
	; if lowercase
	; 122 = z
	cmp al, 90
	jg skipChar
	
	add al, 32
	mov [r12], al ; [] means to put it into address
	
skipChar:
	inc r12 ; next index of array
	jmp nextChar
	
printRes:
	mov rdi, result
	mov rsi, message
	push rbx
	call printf
	pop rbx
	
	mov rax, 0
	ret

section .rodata
	messagePrompt db "Enter a message: ", 0
	messageFormat db "%s", 0
	result db "The message in lowercase is %s", 0ah, 0dh, 0
	
section .bss
	message resb 51