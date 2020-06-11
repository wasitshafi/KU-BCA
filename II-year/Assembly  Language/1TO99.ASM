.model small
.stack 10h
.data
  rem db
.code
     mov ax,@data
     mov ds,ax

     mov cx,99
     mov bl,1

prt:
     mov ah,0
     mov al,bl
     mov dl,10
     div dl

     mov rem,ah
     mov dl,al
     add dl,48
     mov ah,02h
     int 21h

     mov dl,rem
     add dl,48
     mov ah,02h
     int 21h

     mov dl,32  ;for space
     mov ah,02h
     int 21h

     inc bl
  loop prt

       mov ah,4ch
       int 21h
end
       
