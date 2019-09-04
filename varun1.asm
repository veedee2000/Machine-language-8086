.MODEL LONG
.STACK 100H
.DATA
	A DB 10
	B DB 20
.CODE
MAIN PROC
	MOV AX,@DATA
	MOV DS,AX
	MOV Al,A
	ADD Al,B
  mov dl,al
  mov ah, 2
  int 21h
  mov ah, 4ch
  int 21h
	;MOV AX,4C00H
	;INT 21H
  mov
MAIN ENDP
END MAIN
