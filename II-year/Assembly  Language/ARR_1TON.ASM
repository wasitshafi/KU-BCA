.model small
.stack 10h
.data
 arr db 5,4,3,2,1
 i   db 1
.code
      mov ax,@data
      mov ds,ax
      lea bx,arr
lbl1:
      mov al,[bx]
      add al,48

      mov dl,al
      mov ah,02h
      int 21h

      mov dl,10
      mov ah,02h
      int 21h

      inc bx
      inc i
      cmp i,5
      jbe lbl1

      mov ah,4ch
      int 21h
      end
