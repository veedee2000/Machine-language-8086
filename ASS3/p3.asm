.MODEL SMALL
.STACK 100H
.DATA
	NUM1 DB 101
	NUM2 DB 1
.CODE
MAIN PROC
	MOV AX,@DATA
	MOV DS,AX
	MOV AL,NUM1
	ADD AL,NUM2
	MOV DX,'$'
	PUSH DX
	MOV CX,0
	MOV DX,10
	MOV BH,0
L1:
	MOV AH,0
	DIV DL
	ADD AH,CL
	CMP AH,0
	JE LX
	JMP LY
LX:
	CMP AL,0
	JE L4
LY:
	MOV CL,0
	CMP AH,2
	JGE L2
L3:
	MOV BL,AH
	PUSH BX
	JMP L1
L2:
	SUB AH,2
	MOV CL,1
	JMP L3
L4:
	POP CX
	MOV DX,10
	CMP CX,'$'
	JE L5
	MUL DX
	ADD AX,CX
	JMP L4
L5:
	MOV DX,'$'
	PUSH DX
	MOV CX,10
L6:
	MOV DX,0
	DIV CX
	PUSH DX
	CMP AX,0
	JE L7
	JMP L6
L7:
	POP DX
	CMP DX,'$'
	JE L8
	ADD DX,48
	MOV AH,02H
	INT 21H
	JMP L7
L8:
	MOV AH,4CH
	INT 21H
MAIN ENDP
END MAIN