.model small
.stack 10h
.data

   x db 1
   enter db 10 ;ascii code for enter is 10
.code       
   mov ax,@data
   mov ds,ax

lbl1:   mov dl,x
        add dl,48
        mov ah,02h
        int 21h

        inc x

        mov dl,enter
        mov ah,02h ;for new line after ever no.
        int 21h

        cmp x,9
        jbe lbl1

     mov ah,4ch
     int 21h
     end
          
