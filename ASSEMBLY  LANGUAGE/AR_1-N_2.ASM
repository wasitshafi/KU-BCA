.model small
.stack 10h
.data
 arr db 5,4,3,2,1
.code
      mov ax,@data
      mov ds,ax
      mov cx,5
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
   loop lbl1

      mov ah,4ch
      int 21h
      end
