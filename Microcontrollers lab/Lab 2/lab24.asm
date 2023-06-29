org 0000h
	mov r2,#0ch
	mov r0,#4ch
	mov r1,#51h
	
	back: mov a,@r0
	mov @r1,a
	dec r0
	dec r1
	djnz r2,back
	
	end