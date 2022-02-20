SECTION .text
GLOBAL num2hexstr
num2hexstr:
mov rdx, rax 
and rdx, 0xF 
mov dl, [rsi + rdx] 
mov [rdi+rcx-1], dl 
shr rax, 4 
loop num2hexstr 
ret