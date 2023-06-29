org 0000h
	count equ 5
	
		mov r2, #count
		mov r0,#30h
		
		repeat: add a,@r0
		  mov r1,a
		  da a
		  jnc next 
		  xch a ,50h // exchange accumulator with byte variable
		  add a ,#01h
		  da a
		  xch a,50h
		  next: inc r0
		  djnz r2, repeat
		  
		  mov 51h, a
		  end
		  