org 0000h
	sjmp start
	org 0030h
		
		start: acall delay
		mov p0,#66h
		acall delay
		
		mov p0,#0b3h
		acall delay 
		acall delay
		
		mov p0,#0ffh
		acall delay 
		
		mov p0,#0h
		acall delay
	    sjmp start 
		
		delay:mov r4,#0ffh
		loop:djnz r4,loop
		end