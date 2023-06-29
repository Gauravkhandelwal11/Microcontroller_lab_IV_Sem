org 0000h
	ljmp main
	
	org 0003h // int0
	ljmp wave0
	
	org 0013h //int1
	ljmp wave1
	
    org 0030h
    main: mov ie,#10000101b 
    setb p3.3 // enable int1
	setb p3.2 // enable int0
	
	mov tmod,#01h // timer 0 mode1
	standby: sjmp standby
	
	org 100h
		wave0: mov r2,#07h
		setb p1.3
		acall delay 
		mov r2,#0dh
		clr p1.3
		acall delay 
		sjmp wave0
		reti
		
		delay:
             mov th0,#0ffh
			 mov th1,#27h
			 setb tr0
			 wait: jnb tf0, wait
             clr tr0
             clr tf0
             djnz r2, delay
			 ret
			 
			 org 0200h
				wave1: mov r2,#35h
		setb p1.3
		acall delay 
		mov r2,#15h
		clr p1.3
		acall delay 
		sjmp wave1
		reti 
		end







