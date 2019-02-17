.model small
.stack 10h
.data
    msg_p db "no. is prime.$"
    msg_c db "no. is composite.$"
    num db 7
    i db 2
.code
    mov ax,@data
    mov ds,ax

lbl1:
       mov ah,0
       mov al,num
       div i

       cmp ah,0
       je check

       inc i
       jmp lbl1

check:
       mov dl,num
       cmp dl,i
       je lbl_prime

       mov dx,offset msg_c
       jmp lbl_display

lbl_prime:
             mov dx,offset msg_p

lbl_display:
             mov ah,09h
             int 21h

             mov ah,4ch
             int 21h
end
