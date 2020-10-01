     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
	 
__main  FUNCTION 
		MOV R1, #0;			;move first number (0) to register R1
		MOV R2, #1;			;move second number (1) to register R1
		
loop	ADD R3 ,R1 ,R2;		 ;perform R3<-R1+R2
		MOV R1,R2;			;move R2 to R1
		MOV R2,R3;       	;move R3 to R2
		B loop;				;go to loop label, its an infinite loop

stop    B stop ; stop program?
	ENDFUNC
	END 