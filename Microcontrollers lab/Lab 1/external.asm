org 0000h
    mov dptr,#6000h
	movx a,@dptr
	
	mov dptr ,#6001h
	movx @dptr,a
	inc a
	
	mov dptr,#6002h
	movx @dptr,a
	inc a
	
	mov dptr,#6003h
	movx @dptr,a
	inc a
	
	mov dptr,#6004h
	movx @dptr,a
	inc a
	
	mov dptr,#6005h
	movx @dptr,a
	end