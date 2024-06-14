.model small

.data
n dw 425
min dw 10
.stack
.code
main:
        mov ax,@data
        mov ds,ax

        mov cx,10
        mov ax,n
        petlja:
                cmp ax,0
                je krajPetlje

                mov dx, 0
                div cx
                mov bx,ax

                cmp dx,min
                jb jesteMin

                mov ax,bx
                jmp petlja
                jesteMin:
                       mov min,dx
                       mov ax,bx
                       jmp petlja

        krajPetlje:
        mov dx,min
        add dl,'0'
        mov ah,2
        int 21h

        mov ah,4ch
        int 21h
end main
