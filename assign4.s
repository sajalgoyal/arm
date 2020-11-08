     area     appcode, CODE, READONLY
     export __main
	 ENTRY 
__main  function

		VLDR.F32 S1,=0.0;	//1,2,3,4,........
		VLDR.F32 S2,=1.0; // COUNTER 
		VLDR.F32 S3,=1.0;	//initially it contains x then X^2, X^3.....
		VLDR.F32 S4,=0.0;	// VALUE OF X
		VLDR.F32 S5,=0.0;	// X/1 , (X^2)/2 ..........
		VLDR.F32 S6,=1.0;	//initially it contains x ,OUTPUT
		VLDR.F32 S7,=1.0;
		VLDR.F32 S8,=5.0; // how many times loop will run
		VLDR.F32 S9,=1.0; //x1
		VLDR.F32 S10,=1.0; //x2
		VLDR.F32 S11,=20.0; //w1
		VLDR.F32 S12,=20.0; //w2
		VLDR.F32 S13,=-30.0; //bias
		VMLA.F32 S4,S9,S11;
		VMLA.F32 S4,S10,S12;
		VADD.F32 S4,S4,S13;
		
loop	VADD.F32 S1,S1,S2; //i = i +1 // for the exponent of x
		VMUL.F32 S7,S7,S1; // i = i * (i+1) // for the division part
		VNEG.F32 S3,S3;
		VMUL.F32 S3,S3,S4; // x^i
		VDIV.F32 S5,S2,S7; // 1/i
		VMLA.F32 S6,S3,S5; // out = out + (x^i)/i, this will improve after each iteration and will become more precise
		VSUB.F32 S8,S8,S2;
		VCMP.F32 S8,#0.0;
		VMRS APSR_nzcv, FPSCR;
		BGT loop;
		VADD.F32 S6,S6,S2;
		VDIV.F32 S6,S2,S6;
		B stop;
		
stop    B stop ; stop program?
	ENDFUNC
	END 
