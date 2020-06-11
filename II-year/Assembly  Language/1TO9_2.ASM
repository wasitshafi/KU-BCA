.model small
.stack 10h
.data
.code
     mov ax,@data
     mov ds,ax

     mov cx,9
     mov bl,1

prt:
     mov dl,bl
     add dl,48
     mov ah,02h
     int 21h

     mov dl,10  ;for new line
     mov ah,02h
     int 21h
     inc bl
     loop prt

       mov ah,4ch
       int 21h
end
       
