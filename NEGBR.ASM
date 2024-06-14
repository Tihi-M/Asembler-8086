.model small

.data
x dw 3
y dw 7
minus db '-','$'
res dw ?
.stack
.code
main:
        mov ax,@data
        mov ds,ax

        mov cx,10
        mov ax,x
        sub ax,y
        mov res, ax
        mov ax, res

        cmp ax,0
        jge pozitivanBr

        mov ax,res
        neg ax
        mov res,ax
        mov ah,9
        mov dx,OFFSET minus
        int 21h

        pozitivanBr:
        mov ax, res
        mov cx, 10

        petlja:
                cmp ax,0
                jz krajPetlje

                mov dx,0
                div cx
                mov bx,ax
                add dl,'0'
                mov ah,2
                int 21h
                mov ax,bx
                jmp petlja

        krajPetlje:

        mov ah,4ch
        int 21h

end main

