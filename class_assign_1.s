	AREA     appcode, CODE, READONLY
    EXPORT __main
	ENTRY 
	 
__main	FUNCTION	
	
    MOV r2,#47 ; ;move 47->r2
    MOV r7,#12 ; ;move 12->r7
	MOV r4,#8 ; ;move 8->r4
	cmp r2,r7 ; 
	ITTE NE    
	SUBNE r2,r2,r7 ;
	MOVNE r2,#0    ;
	ADDEQ r2,r2,r4 ;
	MOVEQ r4,#0   ;
		
		
stop	B stop ;
		 
	ENDFUNC
    END
