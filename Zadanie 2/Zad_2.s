global _start 
section .text 
%include "syscall.mac"
_start:     
 WRITE msg1,len1 
 READ msg,1024 
 WRITE msg2,len2 
 WRITE msg, 1024 
 EXIT  
section .data 
msg1:        
 DB "Input the line:", 0xa  
len1 EQU $ - msg1 
msg2:        
 DB "Duplicate line:", 0xa  
len2 EQU $ - msg2 
section .bss 
msg resb 1024
