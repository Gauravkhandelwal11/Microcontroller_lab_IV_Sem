org 0000h
	mov r1,#30h
	mov r0,#25h
	mov 08h ,#35h
	
	loop_subb:
	mov a,@r0
	clr c    // clear carry flag
	subb a,@r1
	setb psw.3
		mov @r0,a
		clr psw.3
		inc r1
		inc r0
		inc 08h
		djnz r2,loop_subb
		end