     area     appcode, CODE, READONLY
     export __main
	 ENTRY 
__main  function

		VLDR.F32 S1,=1.0;	//1,2,3,4,........
		VLDR.F32 S2,=1.0; // COUNTER 
		VLDR.F32 S3,=1.0;	//initially it contains x then X^2, X^3.....
		VLDR.F32 S4,=1.0;	// VALUE OF X
		VLDR.F32 S5,=0.0;	// X/1 , (X^2)/2 ..........
		VLDR.F32 S6,=1.0;	//initially it contains x ,OUTPUT
		
loop	VADD.F32 S1,S1,S2; //i = i +1
		VNMUL.F32 S3,S3,S4; // -x^i
		VDIV.F32 S5,S2,S1; // 1/i
		VMLA.F32 S6,S3,S5; // out = out + (-x^i)/i, this will improve after each iteration and will become more precise
		B loop;
stop    B stop ; stop program?
	ENDFUNC
	END 
