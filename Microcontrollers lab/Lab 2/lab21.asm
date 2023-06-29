org 0000h
	mov r2,#05h // this is counter, number of elements are 5 in array
	mov r0,#20h // starting adderss
    mov a ,#00h
	
	back: add a,@r0
	jnc skip
	inc 26h
	
	skip: inc r0
	djnz r2 , back //Decrement Register and Jump if Not Zero(used to perform a Loop operation)
	mov 25h, a
	
	end
	