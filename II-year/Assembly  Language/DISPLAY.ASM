.model small
.stack 10h
.data
  mssg db "wellcome in assembly language $"
.code
   mov ax,@data
   mov ds,ax

  mov dx,offset mssg
  mov ah,09h
  int 21h

   mov ah,4ch
   int 21h
   end


