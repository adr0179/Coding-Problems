extern printf
extern scanf


global main

section .text

main:
	;printf
	mov rdi, numberPrompt
	push rbx
	call printf
	pop rbx
	
	;scanf
	mov rdi, numberFormat
	mov rsi, num
	push rbx
	call scanf
	pop rbx
	
	; calculate the fib num
	; [num] is the desired fib index
	; r12 - current fib index (act like i)
	; r13 - previous fib number
	; r14 - current fib number
	mov rsi, 1
	mov r11, 0
	mov r12, 1
	
nextFib:
	; check if we are at the right index to quit (rsi > [num])
	cmp rsi, [num]
	; saves value of r12 into fib
	mov [fib], r12
	je printRes
	
	; calculate next fib num
	mov r8, r12 ; store old current for later use
	add r12, r11 ; new current
	mov r11, r8 ; new previous
	inc rsi
	
	jmp nextFib
	
printRes:
	; result
	mov rdi, result
	mov rsi, [num]
	mov rdx, [fib]
	push rbx
	call printf
	pop rbx

exitProgram:
	mov rax, 0
	ret

section .rodata
	numberPrompt db "Which Fib num do you want?", 0
	numberFormat db "%lli", 0 ; %ill 64-bit integer
	result db "The %llith fib number is %lli", 0ah, 0dh, 0

section .data
	num dq 0
	fib dq 0