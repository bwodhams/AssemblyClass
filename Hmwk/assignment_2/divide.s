.global _start
_start:
	MOV R1,#12
	MOV R2,#6
	MOV R0,#0
	MOV R7,#1
	BAL compare
subtract:
	SUBS R1,R1,R2
	ADDS R0,R0,#1
compare:
	CMP R1,R2
	BGE subtract
end:
	SWI 0