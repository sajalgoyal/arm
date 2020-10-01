     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
	 
__main  FUNCTION
		MOV R1, #4 	 ;move first number (1) to register R1
		MOV R2, #5	 ;move second number (2) to register R2
		
whileconditioncheck  	cmp R1, R2 		;comparing both the register values	, while is just a label name 	
						bne whiletrue 		; branch and go to loop if value of register R1 is not equal to value of register R2	
						B stop; 		;if they are equal then stop and come out of while loop


whiletrue  	bgt iftrue 		; branch and go to loop2 if a>b
			sub R2, R2, R1 	; else part of if statement that is if b>a then R2 = R2 - R1
			B whileconditioncheck


iftrue 	SUB R1, R1, R2 	; now since a>b then perform R1	= R1 - R2
		B whileconditioncheck


stop    B stop ;

	ENDFUNC
	END
		
		