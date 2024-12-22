section .data
    ; msg db "Argument: %s", 0xA, 0 

section .bss
    ; loop_i resq 1                 ; loop index

section .text
    global _start

_start:
    nop
