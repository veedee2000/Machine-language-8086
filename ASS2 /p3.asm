.MODEL SMALL
.STACK 100H
.DATA
	ARR DW 321,34,112,565,123,323,112,45,13,34,'$'
	BASE DW 10
.CODE
MAIN PROC
	MOV AX,@DATA
	MOV DS,AX
	LEA SI,ARR
	MOV AX,[SI]
	INC SI
	INC SI
	MOV CX,9
L1:
	CMP AX,[SI]
	JL L2
	MOV AX,[SI]
L2:
	INC SI
	INC SI
	LOOP L1
	MOV CX,'$'
	PUSH CX
	MOV BX,BASE
L3:
	MOV DX,0
	DIV BX
	ADD DX,48
	PUSH DX
	CMP AX,0
	JE L4
	JMP L3
L4:
	POP DX
	CMP DX,'$'
	JE L5
	MOV AH,02H
	INT 21H
	JMP L4
L5:
	MOV AH,4CH
	INT 21H
MAIN ENDP
END MAIN