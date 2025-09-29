extern printf
extern scanf
extern exit

global main

section .text

main:
  ; printf("Enter a string: ");
  mov rdi, stringPrompt
  push rbx
  call printf
  pop rbx

  ; scanf("%s", string);
  mov rdi, stringFormat
  mov rsi, string
  push rbx
  call scanf
  pop rbx

  ; printf("What is the length of the string? ");
  mov rdi, stringSizePrompt
  push rbx
  call printf
  pop rbx

  ; scanf("%lli", stringSize);
  mov rdi, stringSizeFormat
  mov rsi, stringSize
  push rbx
  call scanf
  pop rbx
  
  mov r15, [stringSize]

  ; reverse the string
	mov r12, string ; first letter  
	mov r13, string
	add r13, [stringSize]
	dec r13
nextChar:
  ; check if we are done 
  cmp r12, r13 
  jge printResult

  ; swap these two characters
	mov al, [r12]
	mov bl, [r13]
	mov [r12], bl
	mov [r13], al

  ; move to the next characters
	dec r13
	inc r12
	jmp nextChar

printResult:
  ; printf("The reverse of the string is %s.\n", string);
  mov rdi, responseFormat
  mov rsi, string
  push rbx
  call printf
  pop rbx
  
  jmp endProgram

endProgram:
  ; exit
  mov rax, 0
  ret

section .data
  stringPrompt db "Enter a string: ", 0
  stringFormat db "%s", 0

  stringSizePrompt db "What is the length of the string? ", 0
  stringSizeFormat db "%lli", 0

  responseFormat db "The reverse of the string is %s.", 0ah, 0dh, 0

section .bss 
  string resb 50
  stringSize resq 1
