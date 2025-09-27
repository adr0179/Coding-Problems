extern printf
; extern exit

global main

section .text

main:
  ; printf("Hello, world!\n");
  ; cout << "Hello, world!" << endl;
  ; rsi is the second argument "%s"
  mov rdi, message
  mov rsi, name
  mov rax, 0
  push rbx
  call printf
  pop rbx
  
  ; rdx is the third argument pass in rsi to add to it and store the value the (the second %d in agePrompt)
  mov rdi, agePrompt
  mov rsi, 18
  mov rdx, rsi
  add rdx, 5
  push rbx
  call printf
  pop rbx

  ; exit
  mov rax, 0
  ret

section .data
  message db "Hello, %s", 0ah, 0dh, 0
  agePrompt db "You are %d years old, and %d in 5 years", 0ah, 0dh, 0 
  name db "Adrian", 0
