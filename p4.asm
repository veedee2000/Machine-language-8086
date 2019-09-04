.model small
.stack 100h
.data
.code
main proc

mov dl, 'a'
mov cx, 26
l1:

mov ah, 2
int 21h
add dl, 1
mov bl, dl

mov dx, 13
mov ah, 2
int 21h
mov dx, 10
mov ah, 2
int 21h

mov dl, bl

loop l1

mov ah, 4ch
int 21h

main endp
end main
