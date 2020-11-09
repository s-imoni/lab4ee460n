.ORIG x3000

LEA R0, START
LDW R3, R0, #1 ; get #20 in R3
LDW R0, R0, #0 ; get xC000 in R0
AND R2, R2, #0 ; clear R2 (sum)

LOOP LDB R1, R0, #0 ; R1 = addr of byte
	 ADD R2, R2, R1 ;	
	 ADD R0, R0, #1 ; increment location
	 ADD R3, R3, #-1 ; decrement counter
	 BRp LOOP ;

LEA R0, UNALIGN
LDW R0, R0, #0 ; x0000 in R0
STB R2, R0, #0 ; store sum

HALT

START .FILL xC000
COUNT .FILL #20
UNALIGN .FILL xC017
PROTECT .FILL x0000

.END
