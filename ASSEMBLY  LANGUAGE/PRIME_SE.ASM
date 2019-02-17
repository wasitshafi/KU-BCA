.model small
.stack 10h
.data
   num db 2
   d db 2
.code
     mov ax,@data
     mov ds,ax

lbl1:
     mov ah,0
     mov al,num
     div d

       cmp ah,0
       je lbl_check

       inc d
       jmp lbl1

lbl_check:
            mov dl,num
            cmp dl,d
            je lbl_print

            jmp lbl_incr
lbl_print:
             mov al,num
             add al,48

             mov dl,al
             mov ah,02h
             int 21h

             mov dl,10
             mov ah,02h
             int 21h

lbl_incr:
                inc num
                mov d,2
                   cmp num,9
                   jbe lbl1


           mov ah,4ch
           int 21h
end

