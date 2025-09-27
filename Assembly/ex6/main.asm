extern printf

global main

main:
	; iterate through the array
	; r8 - current maximum
	; r9 - the current index
	; r10 - the value of numberCount
	; r11 - the current value of the array
	
	; inizialize
	mov r8, [numbers] ; the first num of array
	mov r9, 1
	mov r10, [numberCount]

nextNum:
	; check if at end of array
	cmp r9, r10
	jge printRes
	
	;load the next number into a regester
	mov r11, [numbers + r9 * 8] ; times 8 because 1 int = 8 bytes
	
	; check if the number is > than the max
	cmp r11, r8
	jle notLarger
	
	; update the max
	mov r8, r11
	
	; update the maximum value
	
notLarger:
	inc r9
	jmp nextNum
	
printRes:
	; save max into the maxVal varible
	mov [maxVal], r8
	
	; print the result
	mov rdi, result
	mov rsi, r8 ; mov rsi, [maxVal]
	mov rax, 0
	push rbx
	call printf
	pop rbx
	

exit:
	mov rax, 0
	ret

section .rodata
	numbers dq 311, -31, 77, 50, -19, -1, 2, 0, -9, 13, -41, 53, 90, -102, 13, 11, -8, -19, 1, 123
	numberCount dq 20
	
	result db "the maximum is %lli", 0ah, 0dh, 0 
section .bss
	maxVal resq 1 ; this is a pointer all varibles are pointers