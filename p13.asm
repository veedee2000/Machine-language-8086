.model small
.stack 100h
.data

var1 db -2
var2 db -3

.code
main proc

mov ax,@data
mov ds,ax

mov al,var1
mov bl,var2
add al,bl

;mov dl, al
;JUST adding negative numbers
neg al

mov ah, 4ch
int 21h

main endp
end main
