section .text
    global _start
_start:
    mov     edx,len
    mov     ecx,msg
    mov     ebx,1
    mov     eax,4
    int     0x80
    jmp     _start
section .data
msg db      "f",0xa
len equ     $ - msg