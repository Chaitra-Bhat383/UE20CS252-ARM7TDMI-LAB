;Transfer a block of 256 bytes stored at memory location X to memory location Y using Load Multiple and Store Multiple instructions. The rate of transfer is 32 bytes.

.DATA
A:.WORD 10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,160,170,180,190,200,210,220,230,240
B:.WORD 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0


.TEXT
LDR R0,=A
LDR R9,=B
MOV R10,#0

LOOP: LDMIA R0!,{R1-R8}
STMIA R9!,{R1-R8}
ADD R10,R10,#1
CMP R10,#3 ;count is 3 times as 24 words are to be transfered
BNE LOOP
SWI 0X011
.END

