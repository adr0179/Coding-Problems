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

  ; check if the string is a palindrome
	mov r12, string ; first char
	mov r13, string
	add r13, [stringSize] ; last char
	dec r13 ; exclude null
	
nextChar:
  ; check if we are done 
	cmp r12, r13
	jge palindrome
	
  ; compare these two characters
	mov al, [r12]
	mov bl, [r13]
	cmp al, bl
	jne notPalindrome
	
  ; move to the next characters
	inc r12
	dec r13
	jmp nextChar

palindrome:
  ; printf("The string %s is a palindrome.\n", string);
  mov rdi, responseTrue
  mov rsi, string
  push rbx
  call printf
  pop rbx
  
  jmp endProgram

notPalindrome:
  ; printf("The string %s is not a palindrome.\n", string);
  mov rdi, responseFalse
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

  responseTrue db "The string %s is a palindrome.", 0ah, 0dh, 0
  responseFalse db "The string %s is not a palindrome.", 0ah, 0dh, 0
  
  testsC db "char: %s", 0ah, 0dh, 0
  testsN db "Value: %lli", 0ah, 0dh, 0

section .bss 
  string resb 50
  stringSize resq 1