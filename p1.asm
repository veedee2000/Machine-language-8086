.model small
.stack 100h
.data
;Enter variable names here
.code
main proc

mov bl, 5
mov cl, 4
add bl, cl
add bl, 48
mov dl, bl

mov ah, 2
int 21h

mov ah, 4ch
int 21h

main endp
end main
