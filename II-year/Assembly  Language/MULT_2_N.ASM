.model small
.stack 10h
.data

   n1 db 2
   n2 db 2
   res db 
.code

   mov ax,@data
   mov ds,ax

   mov al,n1
   mul n2

   mov res,al
   add res,48
 
   mov dl,res
   mov ah,02h
   int 21h

   mov ah,4ch
   int 21h
   end

