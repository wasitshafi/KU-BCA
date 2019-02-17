.model small
.stack 10h
.data
   i   db -2
   msg db "negative"
.code

  mov ax,@data
  mov ds,ax

  mov dl,i
  cmp dl,0
  jb e

  mov dx,offset msg
  mov ah,09h
  int 21h


  e:
  mov ah,4ch
  int 21h
 end
