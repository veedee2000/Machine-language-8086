.model small
.stack 100h
.data
msg1 db "ADD:$"
msg2 db "SUB:$"
.code
main proc

mov ax, @data
mov ds, ax

mov ah, 1
int 21h

mov bl, al
sub bl, 48

mov dx, 13
mov ah, 2
int 21h
mov dx, 10
mov ah, 2
int 21h

mov ah, 1
int 21h

mov cl, al
sub cl, 48


mov dx, 13
mov ah, 2
int 21h
mov dx, 10
mov ah, 2
int 21h

mov dx, offset msg1
mov ah, 9
int 21h
mov dl, bl
add dl, cl
add dl, 48
mov ah, 2
int 21h

mov dx, 13
mov ah, 2
int 21h
mov dx, 10
mov ah, 2
int 21h


mov dx, offset msg2
mov ah, 9
int 21h
mov dl, bl
sub dl, cl
add dl, 48
mov ah, 2
int 21h


mov ah, 4ch
int 21h

main endp
end main
