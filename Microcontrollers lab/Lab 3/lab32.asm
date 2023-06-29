org 0000h
	mov r2,#05h
	mov r0,#55h
	mov r1,#65h
	
	mov 08h,#75h // difference is stored in location starting from 75h
	
	repeat: mov a,#99h
	clr c
	subb a,@r0
	
	add a ,#01h
	da a
	add a,@r1
	da a
	
	 jc skip
	 mov r4,a 
	 
	 mov a ,#99h
	 clr c
	 subb a , r4
	 add a ,#01h
	 da a
	 
	 skip: setb psw.3
	 mov @r0,a
	 clr psw.3
	 
	 inc r0
	 inc r1
	 inc 08h
	 
	 djnz r2, repeat 
	 end