.model small
.stack 100h
.data
v1 dw '1'
v2 dw '2'
.code
main proc
mov ax, @data
mov ds, ax

mov ax, v1
PUSH ax
mov bx, v2
PUSH bx

pop ax
pop bx

mov dx, ax
mov ah, 2
int 21h

mov dx, bx
mov ah, 2
int 21h

mov ah, 4ch
int 21h

main endp
end main
