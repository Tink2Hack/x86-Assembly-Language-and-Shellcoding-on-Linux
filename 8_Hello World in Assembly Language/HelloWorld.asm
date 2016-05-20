; HelloWorld.asm


global _start


section .text

_start:

    ; Print Hello World on the screen

    mov eax, 0x4
    mov ebx, 0x1
    mov ecx, message
    mov edx, mlen
    int 0x80

    ; Exit the program gracefully

    mov eax, 0x1
    mov ebx, 0x5
    int 0x80

section .data

    message: db "Hello World!"
    mlen     equ $-message 
