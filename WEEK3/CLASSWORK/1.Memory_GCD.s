;b. Assume data to be in Memory registers

.DATA   ;(data is in memory location)
A: .WORD 0X0123
B: .WORD 0X023

.TEXT
LDR R3,=A
LDR R4,=B

LDR R0,[R3]
LDR R1,[R4]

GCD: CMP R0, R1
	 BEQ RES
	 BLT LOOP
	 SUB R0, R0, R1
	 B GCD
	 
LOOP: SUB R1, R1, R0
	  B GCD
	 
RES: MOV R2,R0
     SWI 0X011
	 .END
	 
;Ans: 1
	 