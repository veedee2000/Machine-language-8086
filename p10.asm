.model small
.stack 100h
.data
string dw 10 dup('$')
.code
main proc
mov ax, @data
mov ds, ax
mov si, offset string
mov bl, 0
mov cl, 0
l1:
mov ah, 1
int 21h
cmp al, 13
je l2
mov [si], al
PUSH [si]
inc si
inc bl
jmp l1

l2:
l3:
POP ax
mov dx, ax
mov ah, 2
int 21h
sub bl, 1
cmp cl, bl
jl l3
mov ah, 4ch
int 21h

main endp
end main
