.model small
.stack 10h
.data

   c db 'a'

.code

   mov ax,@data
   mov ds,ax

lbl1:
   mov dl,c
   mov ah,02h
   int 21h

   inc c
   cmp c,95
   jbe lbl1

   mov ah,4ch
   int 21h
 end
