org 0000h
	mov 55h,#0feh //sample value
	mov 56h,#0feh //sample value
	clr a
	add a, 55h
	add a , 56h
	
	mov dptr,#0c000h
	movx @dptr,a
	
	end
		