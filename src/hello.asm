;consts

section .data
  msg db "Hello World", 0xA, 0xD ;pointer, and /n
  ;tam 12
  tam equ $- msg

;variables
section .bss

;beginin
section .text


global _start

_start:

  mov eax, 0x4 ;default
  mov ebx, 0x1 ;end
  mov ecx, msg
  mov edx, tam
  int 0x80 ;take the programer

  ;mov ebx, 0x0 ;return 0

  ;nasm -f elf64 hello.nasm
  ;ld -s -o hello hello.o

output:
  mov eax, 0x1
  mov ebx, 0x0
  int 0x80
