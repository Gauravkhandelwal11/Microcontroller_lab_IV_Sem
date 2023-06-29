org 0000h
	size equ 05h
		mov r4,#size
		dec r4
		
		l2:  mov r3,#size
		dec r3
		mov r0,#30h
		
		l1: mov a,@r0
		mov b ,a
		inc r0
		mov a,@r0
		cjne a,b, continue
		
		continue: jc skip 
		mov@r0,b
		dec r0
		mov @r0,a
		inc r0
		
		skip: djnz r3, l1
		djnz r4, l2
		
		stop: sjmp stop
		
		end