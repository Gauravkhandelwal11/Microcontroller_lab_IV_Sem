org 0000h
	mov a ,#00h
	
	restart: mov a,#25h
	 
	 back: mov p0,a
	 acall delay
	 add a ,#01h
	 da a
	 cjne a,#51h , back
	 
	 sjmp restart
	 
	 org 0200h
		 delay: mov r3, 20
		 l3: mov r4,#50h
		 l2: mov r5,0ffh
		 l1: djnz r5,l1
		 djnz r4,l2
		 djnz r5,l3
		 ret 
		 end
			 
	 