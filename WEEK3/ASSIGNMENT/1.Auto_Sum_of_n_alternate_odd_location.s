; even alternate auto indexing 
.data 
a: .word 10, 20, 30, 40 
sum: .word 0 
.text 
mov r2, #0 
ldr r1, =a 
ldr r3, =sum 
mov r5, #0 
sub r1, r1, #4; initializing r1 for pre indexing, starts at 1 and skips first element 
loop: ldr r4, [r1, #8]!; writeback included 
add r2, r2, r4 
add r5, r5, #2 
cmp r5, #4 
bne loop 
str r2, [r3] 
swi 0x011 
.end 
