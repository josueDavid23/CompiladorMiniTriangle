section .data 

 msg db  0xA 
 len equ  $ - msg 
 guardar dd 00 
n: dd 5
b: dd 8
section .bss 

section .text 

 global _start 

 _start: 


 mov esi,[n]

inicio0:
 add esi,1 
 cmp esi,[b]
 jb inicio0
 mov esi,[b]
 add esi,'0' 
 mov[guardar],esi 
 mov ecx,guardar 
 mov edx,4
 call imprimir
 jmp salida

 imprimir:
 mov eax,4
 mov ebx,1 
 int 0x80 
 ret

 salida:
 mov eax,1 
 int 0x80 
