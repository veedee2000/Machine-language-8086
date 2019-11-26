.model small
.stack 100h
.data
var1 db 'Before$'
var2 db 'After$'
.code
main proc
mov ax, @data
mov ds,ax

lea dx, var1
mov ah, 9
int 21h

MOV     CX, 98H
MOV     DX, 9680H
MOV     AH, 86H
INT     15H

lea dx, var2
mov ah, 9
int 21h
mov ah, 4ch
int 21h

main endp
end main