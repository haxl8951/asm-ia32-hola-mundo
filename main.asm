section .data
    msg db "Hola mundo", 10
    len equ $-msg

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, 10
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80
