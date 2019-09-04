.model small
.stack 100h
.data

var1 db '1234$'
var2 db '1'

.code
main proc

mov ax, @data
mov ds,ax
mov dx, offset var1
mov ah, 9
int 21h

mov dx,13
mov ah,2
int 21h
mov dx,10
mov ah,2
int 21h

mov dl, var2
mov ah, 2
int 21h

mov ah, 4ch
int 21h

main endp
end main
