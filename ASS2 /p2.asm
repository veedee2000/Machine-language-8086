.MODEL SMALL
.STACK 100H
.DATA
	NUM1 DW 1254H
	NUM2 DW 2194H
	ARR DW 3 DUP(?)
	BASE DW 16
.CODE
MAIN PROC
	MOV AX,@DATA
	MOV DS,AX
	MOV AX,NUM1
	MOV BX,NUM2
	MUL BX
	LEA SI,ARR
	MOV [SI],AX
	INC SI
	INC SI
	MOV [SI],DX
	LEA SI,ARR
	MOV CX,2
	MOV DX,'$'
	PUSH DX
L1:
	MOV BX,BASE
	MOV AX,[SI]
L2:
	MOV DX,0
	DIV BX
	PUSH DX
	CMP AX,0
	JE L3
	JMP L2
L3:
	INC SI
	INC SI
	LOOP L1
L4:
	POP DX
	CMP DX,'$'
	JE L6
	CMP DX,10
	JL L5
	ADD DX,55
	MOV AH,02H
	INT 21H
	JMP L4
L5:
	ADD DX,48
	MOV AH,02H
	INT 21H
	JMP L4
L6:
	MOV AH,4CH
	INT 21H
MAIN ENDP
END MAIN	
MAIN ENDP
END MAIN