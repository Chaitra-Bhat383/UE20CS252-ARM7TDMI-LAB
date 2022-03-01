.DATA
A:.WORD 1,2,-3,4,-5,6,7,-8,-9 

.TEXT
LDR R0,=A

MOV R2,#0 ;Row Number
MOV R3,#0 ;Column Number
MOV R4,#3 ;Number of elements in a row
MOV R8,#-1 ;Initially assign max to -1

LOOP1:  MLA R5,R2,R4,R3
	MOV R5,R5,LSL #2

	LDR R6,[R0,R5]
	CMP R6,#0
	RSBLT R6,R6,#0 ;In case the number is negative we get its absolute value
	ADD R7,R7,R6 
	
	ADD R3,R3,#1 
	CMP R3,#3 
BNE LOOP1
	CMP R7,R8
	MOVGT R8,R7 ;Compare to get the max sum amongst three
	ADD R1,R1,#4
	MOV R3,#0
	MOV R7,#0
	ADD R2,R2,#1 
	CMP R2,#3 
BNE LOOP1
SWI 0x011