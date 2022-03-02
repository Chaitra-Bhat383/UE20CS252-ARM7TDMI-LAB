.DATA
    STR: .ASCIZ "PES University"
    LETTER: .ASCIZ "i"
.TEXT
    LDR R0, =STR
    LDR R1, =LETTER
    LDRB R1, [R1] 
    MOV R2, #0
    LOOP:
        LDRB R3, [R0]
        CMP R3, #0
        BEQ END
        CMP R3, R1
        BEQ SUCCESS
        ADD R0, R0, #1
        B LOOP
    SUCCESS:
        ADD R2,R2,#1
        ADD R0, R0, #1
        B LOOP
    END:
        SWI 0x011