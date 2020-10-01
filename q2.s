	AREA     appcode, CODE, READONLY
    EXPORT __main
    ENTRY 
__main  FUNCTION	
			MOV R1, #25;		;move first number (25) to register R1
			MOV R2, #71;		;move second number (71) to register R1
			MOV R3, #34;		;move third number (34) to register R1
			cmp R1, R2			;comparing both the register values	
			ble loop1			;branch to loop1 if less then equal to, that is if R1 <= R2
			cmp R1, R3			;comparing both the register values, if R1>R2
			ble loop2			;branch to loop2 if less then equal to, that is if R1 <= R3
			MOV R4, #1;			;if R1>R3 then 1 will be stored in R4 indicating R1 has max value
			B stop;
			
loop1		cmp R2,R3 			;comparing both the register values	
			ble loop3			;branch to loop3 if less then equal to, that is if R2 <= R3
			MOV R4, #2;			if R2>R3 then 2 will be stored in R4 indicating R2 has max value
			B stop;

loop2		MOV R4, #3;			if R3>R1 then 3 will be stored in R4 indicating R3 has max value
			B stop;
			
loop3		MOV R4, #3;			if R3>R2 then 3 will be stored in R4 indicating R3 has max value	
			B stop;

stop    B stop ;
     ENDFUNC
     END