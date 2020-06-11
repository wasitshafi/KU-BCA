.model small
.stack 10h
.data
      a db 04h
      b db 04h
.code
         mov ax,@data
         mov ds,ax
         mov al,a
         mov bl,b

         sub al,bl

         mov al,bl
         mov ch,02h
         mov cl,04h
         mov bh,al
 l2:     rol bh,cl
         mov dl,bh
         and dl.0fh
         mcp dl,04
         jbe l4

         add dl,04
         add dl,07
      l4: add dl,30h
            mov ah,02h
            int 21h
            dec ch
            jnz l2
            mov ah,4ch
            int 21h
            end
