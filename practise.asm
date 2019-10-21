.model small
.stack 100h
.data

string dw 10 dup('$')

.code

main proc
; mov ax, @data
; mov ds, ax
; mov si, offset string

mov ah, 1
int 21h

mov dl, al
mov ah, 2
int 21h

mov ah, 4ch
int 21h

main endp
end main