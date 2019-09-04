.model small
.stack 100h
.data
var1 db '2'
msg1 db "Equal$"
msg2 db "Not equal$"
.code
main proc
mov ax, @data
mov ds, ax
mov bl, var1
mov ah, 1
int 21h
cmp bl, al
mov dx, 13
mov ah, 2
int 21h
mov dx, 10
mov ah,2
int 21h
je l1
mov dx, offset msg2
mov ah, 9
int 21h

mov ah, 4ch
int 21h


l1:
mov dx, offset msg1
mov ah, 9
int 21h

mov ah, 4ch
int 21h


main endp
end main
