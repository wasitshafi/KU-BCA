.model small
.stack 10h
.data

   x db 7
   y db 2

.code

   mov ax,@data
   mov ds,ax

   mov al,x
   sub al,y
   add al,48
 
   mov dl,al
   mov ah,02h
   int 21h

   mov ah,4ch
   int 21h
   end
