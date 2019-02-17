.model small
.stack 10h
.data
    num db 1
    arr db ?,?,?
    d db 10
    i db ?
.code
    mov ax,@data
    mov ds,ax

lbl0:  lea bx,arr
       mov i,1
       mov al,num

lbl1:  mov ah,0
       div d
       mov [bx],ah
       inc i
       inc bx
         cmp al,0
         ja lbl1

lbl2:  dec bx
       dec i
       mov al,[bx]
       add al,48

       mov dl,al
       mov ah,02h
       int 21h
          cmp i,1
          ja lbl2
       inc num

       mov dl,32
       mov ah,02h
       int 21h

        cmp num,150
        jbe lbl0

   mov  ah,4ch
   int 21h
end
