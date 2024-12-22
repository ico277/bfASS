section .data
   msg1 db "test", 0xA, 0 
   msg1_len equ $ - msg1

section .text
    global test

test:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg1
    mov rdx, msg1_len
    syscall
    ret
