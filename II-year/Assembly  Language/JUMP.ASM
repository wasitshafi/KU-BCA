.model small
.stack 10h
.data
  num db 5
  mssg db "i now understand the use of jmp statement $"

.code

     mov ax,@data
     mov ds,ax

     jmp lbl

     mov num,8   ;this line will skip by assembler

     lbl:

     add num,48
     mov dl,num ;printing number 5
     mov ah,02h
     int 21h

     mov dl,10  ; for new line by using  dl register
     mov ah,02h
     int 21h

     mov dx,offset mssg   ; printing message
     mov ah,09h              
     int 21h

     mov ah,4ch
     int 21h
  end




