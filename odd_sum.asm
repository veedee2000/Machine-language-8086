.model small
.stack 100h
.data
n dw 10
base dw 10
.code
main proc

mov bx, 1
mov ax, 1

l1:

add bx, 2  ; current value
cmp bx, 10
jge section
add ax, bx ; Sum

jmp l1

section:     ; We reach here after JGE flag
mov bx, 10   ; Divisor = 10
mov dx, '$' 
push dx      ; Bottom of stack
mov dx, 0    ; IMP ---> Dividend is DX:AX always make DX zero !!!!

l2:          ; Pushing values into Stack

div bx
push dx
mov dx, 0
cmp ax, 0

jne l2

l3:          ; Getting output till '$' is reached

pop dx
cmp dx, '$'
je l4
add dx, 48
mov ah, 2
int 21h

jmp l3

l4:          ; And thats it 
mov ah, 4ch
int 21h

main endp
end main