.ORIG x1200

; saving registers on stack
STW R0 R6 #-1
STW R1 R6 #-2

LEA R0, INC
LDW R1, R0, #0 ; m[x4000] in R1
ADD R1, R1, #1
STW R1, R0, #0 ; R1 to m[x4000]

; reloading registers
LDW R1 R6 #-2
LDW R0 R6 #-1

RTI
INC .FILL x4000
.END
