org 0000h
	
	start: mov r2,#0eh
	mov dprt,#t
	
	repeat: clr a
	movc a,@a + dptr
	mov p1,a
	inc dptr
	
	djnz r2, repeat
	org 300h
		t: db 80h, 95h, b3h
			
			end