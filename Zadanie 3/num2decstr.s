SECTION .text
GLOBAL num2decstr
num2decstr:
mov ebx, 10
mov edx, 0
div ebx
add edx, 30h; выводим на экран
mov [rdi+rcx-1], dl; записываем цифру в конец строки 
loop num2decstr; повторяем пока >0
ret
