.model small
.stack 10h
.data 
 arr db 4,1,9,8,7
 i db 1
 msgp db"no is positive.$"
 msgn  db "no is negative.$"
.code
      mov ax,@data
      mov ds,ax
      lea bx,arr
lbl1:
      mov al,[bx]
      mov dl,al

      cmp dl,0
      jae lblp

back:
      inc bx
      inc i
      cmp i,6
      je e
      cmp i,5
      jbe lbl1

lblp:          
        add al,48          ; printing no
        mov dl,al
        mov ah,02h
        int 21h

        mov dl,32          ; for space
        mov ah,02h
        int 21h

        mov dx,offset msgp ; printing msg
        mov ah,09h
        int 21h

        mov dl,10          ;for new line
        mov ah,02h
        int 21h

        jmp back

 e:
      mov ah,4ch
      int 21h
 
      end
