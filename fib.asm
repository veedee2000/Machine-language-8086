.model small 
.stack 100h
.data
n dw 10
.code
main proc
mov ax, @data
mov ds, ax

mov dx, 49
mov ah, 2
int 21h
                ; Printing Two ones upfront 
mov dx, 49
mov ah, 2
int 21h

sub n, 2
mov ax, 1
mov bx, 1
mov si, 1

l1:

mov dx, si
add dx, bx
mov bx, si
mov ax, dx
mov si, dx
mov dx, '$'     ; For the end of stack
push dx

l2:

mov dx, 0
mov cx, 10
div cx
push dx
cmp ax, 0

jg l2

l3:

pop dx
cmp dx, '$'
je l4
add dx, 48
mov ah, 2
int 21h

jmp l3

l4:

sub n, 1
cmp n, 0
jle l5

jmp l1

l5:
mov ah, 4ch
int 21h

main endp
end main