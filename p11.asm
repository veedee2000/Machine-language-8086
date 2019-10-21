.model small
.stack 100h
.data
msg1 db "input the number 1: $"
;msg2 db 0ah,0dh "input the number 2: $"
;msg3 db 0ah,0dh "The result = $ "
a db 0
b db 0
.code
main proc
mov ax, @data
mov ds, ax

mov ah, 1
int 21h
mov a, al

mov ah, 1
int 21h
mov b, al

mov ah, 0
add al, a
aaa

add al, 48
add ah, 48

mov bx, ax
mov ah, 2
mov dl, bh
int 21h

mov ah, 2
mov dl, bl
int 21h

mov ah, 4ch
int 21h





main endp
end main
