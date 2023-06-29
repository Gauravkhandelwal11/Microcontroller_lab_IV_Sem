org 0000h
	mov a,#38h
	acall cmd
	mov a,#0fh
	acall cmd
	mov a,#01h
	acall cmd
	mov a,#06h
	acall cmd 
	mov a,#81h
	acall cmd
	
	mov dptr,#text1
	repeat: clr a
	mov a,@a + dptr
	jz last
	acall data1
	inc dptr
	sjmp repeat
		
	last: mov a,#0c6h
	acall cmd
	
	mov dptr,#text2
	repeat2: clr a
	mov a,@a + dptr
	jz last
	acall data1
	inc dptr
	sjmp repeat2
	
	text1: db 'microcontroller',0
	text2: db '8051',0
		
    cmd: acall ready
    clr p3.7  //rs (data register)
    clr p3.6  //rw
 	mov p2,a  // output port
	setb p3.5
	nop
	clr p3.5
	ret
	  
	  
	 data1: acall ready
		  setb p3.7
		  clr p3.6
		  mov p1,a
		  setb p3.5
		  nop
		  clr p3.5
		  ret
		  
		  ready: setb p2.7
                 clr p3.7		  
		         setb p3.6
	       
		   wait: clr p3.5
		   nop
		   setb p3.5
		   jb p1.7,wait
		   
		   ret
		   last2: nop
		   end
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	