.model small
.stack 10h
.data
   t  db ?
   t1 db 0
   t2 db 1
   i  db 1
.code
        mov ax,@data
        mov ds,ax

lbl:    mov al,t1
        add al,t2
        mov t,al

        add al,48
        mov dl,al
        mov ah,02h
        int 21h

        mov dl,32
        mov ah,02h
        int 21h

        mov al,t2
        mov t1,al

        mov al,t
        mov t2,al

        inc i
        cmp i,5
        jbe lbl

        mov ah,4ch
        int 21h
  end
