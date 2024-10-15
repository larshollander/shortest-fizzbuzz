%macro a 3
mov ax,cx
mov bx,%1
mov dx,0
div bx
cmp dx,0
jg %2
sub di,4
mov edx,%3
mov[edi],edx
%endmacro
section .bss
b RESQ 9
section .text
global _start
_start:mov cx,1
i:lea edi,[b]
mov[edi],rax
add di,8
mov byte[edi],10
a 5,f,"Buzz"
f:a 3,n,"Fizz"
n:sub di,8
cmp edi,b
jl s
mov ax,cx
add di,8
c:dec di
mov dx,0
mov bx,10
div bx
add dl,48
mov[edi],dl
cmp ax,0
jg c
s:push rcx
mov ax,4
mov bx,1
lea ecx,[edi]
lea edx,[b+9]
sub dx,cx
int 80h
pop rcx
inc cx
cmp cx,101
jl i
mov ax,1
int 80h
