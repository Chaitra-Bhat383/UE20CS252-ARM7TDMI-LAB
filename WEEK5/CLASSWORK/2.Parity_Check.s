;WRITE A PROGRAM IN ARM7TDMI TO CHECK PARITY OF 32 BIT NUMBER USING A FUNCTION PARITYCHECK. DISPLAY APPROPRIATE
;MESSAGE AS ODD PARITY OR EVEN PARITY NUMBER

;COUNTS THE NUMBER OF 0 S AND 1S IN THE BINARY NUMBER DENOTION
;EVEN PARITY=EVEN NUMBER OF 1'S
;ODD PARITY = ODD NUMBER OF 1'S

.DATA
ODD: .ASCIZ "ODD PARITY NUMBER"
EVEN: .ASCIZ "EVEN PARITY NUMBER"
A: .WORD 0X54

.TEXT
LDR R2,=A
LDR R3,[R2]
MOV R6,#0    ; COUNT REGISTER
MOV R4,#0   ;COUNT NUMBER OF 1S

L2: TST R3,#1
	BNE L1
		
LOOP:	MOV R3,R3,LSR #1
		ADD R6,R6,#1
		CMP R6,#32
			BNE L2
			TST R4,#1
			BEQ L3
			LDR R0,=ODD
			SWI 0X02
			B EXIT

L3: 	LDR R0,=EVEN 
		SWI 0X02

EXIT: SWI 0X011

L1: ADD R4,R4,#1
	B LOOP
	
.END
		



;CHECKING EVEN OR ODD PARITY
;EVEN NO OF ONES' =EVN PARITY
;ODD NUMBER OF ONES = ODD PARITY
 





 
SWI OXO11
