.model small
.stack 10h
.data

   x db 1
.code
   mov ax,@data
   mov ds,ax

lbl1:   mov dl,x
        add dl,48
        mov ah,02h
        int 21h

        inc x
      cmp x,9
     jbe lbl1

     mov ah,4ch
     int 21h
     end
          
