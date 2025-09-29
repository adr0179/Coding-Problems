extern printf
extern scanf

global main

section .text

main:
  ; printf("Enter a number: ");
  mov rdi, toFindPrompt
  push rbx
  call printf
  pop rbx

  ; scanf("%lli", &toFind);
  mov rdi, toFindFormat
  mov rsi, toFind
  push rbx
  call scanf
  pop rbx

  ; search the list
  mov r8, 0 ; index
  mov r9, [toFind]
  mov r10, [list]

nextNumber:
	cmp r8, [listSize]
	je numberNotFound
	
	mov r11, [list + r8 * 8]
	
	cmp r11, r9
	je numberFound
	inc r8
	jmp nextNumber
	
  ; get the next array element
  ; compare this array element to our number
  
	
  ; go to the next array element

numberNotFound:
  ; printf("The number %lli was not found in the list.\n", toFind);
	mov rdi, notInList
	push rbx
	call printf
	pop rbx
	
	jmp endProgram
	
numberFound:
  ; printf("The number %lli was found in the list.\n", toFind);
	mov rdi, found
	push rbx
	call printf
	pop rbx
	
	jmp endProgram

endProgram:
  ; exit
  mov rax, 0
  ret

section .data
  toFindPrompt db "Enter a number: ", 0
  toFindFormat db "%lli", 0
  toFind dq 0

  list dq -4, 7, 6, 11, -1, 0, 3, 9, 16, -3
  listSize dq 10
  found db "number found", 0ah, 0dh, 0
  notInList db "number not found", 0ah, 0dh, 0
  testI db "Value: %d", 0ah, 0dh, 0
  ; more variables to be added as needed go here