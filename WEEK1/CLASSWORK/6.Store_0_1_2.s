MOV R0,#-1
CONDITION:
CMP R0,#0
BEQ L1
BGT L2
ELSE:
MOV R1,#3
SWI 0X011

L1:MOV R1,#1
L2:MOV R1,#2
