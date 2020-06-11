.model small
.stack 10h
.data
  num db 8
  d   db 2
  msg_e db "no is even.$"
  msg_o db "no is odd.$"
.code
    mov ax,@data
    mov ds,ax

    mov ah,0
    mov al,num
    div d

    cmp ah,0
    je lbl1

       mov dx,offset msg_o

     jmp lbl2

    lbl1:
         mov dx,offset msg_e
    lbl2:
          mov ah,09h
          int 21h


          mov ah,4ch
          int 21h
end








