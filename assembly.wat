*Assembly (x86)*
asm
section .data
msg db 'Hola Mundo', 0

section .text
global _start
_start:
    ; sys_write
    mov eax, 4
    ; file descriptor (stdout)
    mov ebx, 1
    ; message to write
    mov ecx, msg
    ; length of message
    mov edx, 11
    int 0x80
    
    ; sys_exit
    mov eax, 1
    xor ebx, ebx
    int 0x80
