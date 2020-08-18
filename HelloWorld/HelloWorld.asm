global _start; define global entry point

section .data; we define our data here
  HelloStr db "Hello, world!", 0xa; define the output string
  HelloLen equ $ - HelloStr; define the output string length

section .text; this is where all our code goes in:
_start:
    mov eax, 4; code system write, eax = 4
    mov ebx, 1; code for sdtout, ebx = 1 
    mov ecx, HelloStr; ecx = HelloStr
    mov edx, HelloLen; set our string length, edx = HelloLen
    int 0x80; interrupt code, call kernel
    mov eax, 1; code for exit eax = 1
    int 0x80; interrupt code, call kernel
