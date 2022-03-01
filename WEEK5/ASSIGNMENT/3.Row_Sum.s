.DATA
A:.WORD 1,2,3,4,5,6,7,8,9 ;The row sum should be 6,F(15),18(24)
B:.WORD 0,0,0 ;Matrix to store row sum

.TEXT
LDR R0,=A
LDR R1,=B

MOV R2,#0 ;Row Number
MOV R3,#0 ;Column Number
MOV R4,#3 ;Number of elements in a row

LOOP1:  MLA R5,R2,R4,R3
	MOV R5,R5,LSL #2

	LDR R6,[R0,R5]
	ADD R7,R7,R6 
	
	ADD R3,R3,#1 
	CMP R3,#3 
BNE LOOP1
	STR R7,[R1]
	ADD R1,R1,#4
	MOV R3,#0
	MOV R7,#0
	ADD R2,R2,#1 
	CMP R2,#3 
BNE LOOP1
SWI 0x011
	
