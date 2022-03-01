.TEXT
        ;Loading number and setting Zero Flag
        
        MOV R0, #10
        ANDs R0, R0, #1
        
        ;condition entered if Z=1 -> odd number
        
        BEQ CONDITION
                MOV R1, #1
                B EXIT
        CONDITION:
                MOV R2, #1
        EXIT:
                SWI 0x011
.END