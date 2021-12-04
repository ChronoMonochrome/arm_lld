.text
.align  2
.syntax unified
.arm
.global _start
_start:
    bl main

    mov r7, #1
    mov r0, #0
    swi 0
