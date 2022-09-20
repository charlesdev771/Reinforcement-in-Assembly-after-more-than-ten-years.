;consts

section .data
  msg db "Hello World", 0xA ;pointer, and /n
  ;tam 12
  tam equ $- msg

;variables
section .bss

;beginin
section .text


global _start

_start:

  mov eax, 0x4 ;default
  mov ebx, 0x1
  mov ecx, msg
  mov edx, tam
  int 0x80



  mov eax, 0x1 ;end
  mov ebx, 0x0 ;return 0
  int 0x80 ;take the programer

  ;nasm -f elf64 hello.nasm
  ;ld -s -o hello hello.o
