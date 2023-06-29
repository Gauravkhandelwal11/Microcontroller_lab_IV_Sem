    org 0000h
	mov a,#70h
	mov b,#64h
	
	div ab
	mov p0,a // store the value in port 0
	acall delay
	
	mov a,b // a gets the value of b
	mov b, #0ah
	
	div ab
	mov p0,a 
	acall delay
	
	
	org 0500h
		delay: mov r3,#08h
		l3: mov r2,#0eeh
		l2:mov r1,#0ffh
		l1: djnz r1,l1
		djnz r2,l2
		djnz r3,l3
		ret 
		end
			