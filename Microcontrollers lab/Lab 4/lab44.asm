org 0000h
mov dptr,#0A000h
movx a,@dptr
mov 70h,#0f0h
swap a
mov dptr,#table1
movc a,@a+ dptr
mov p0,a
mov a,70h
anl a,#0fh
movc a,@ a + dptr
mov p1,a
org 600h
    table1: db 30h, 31h,32h,33h,34h,35h,36h,37h,38h,39h,40h,41h,42h,43h,44h,45h,46h
end
