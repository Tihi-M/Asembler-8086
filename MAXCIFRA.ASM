.model small
.data
x dw 391
max dw 0
.stack
.code

main:
        mov ax,@data
        mov ds,ax

        mov ax,x
        mov cx,10
        petlja:
                cmp ax,0
                je krajPetlje

                mov dx, 0
                div cx
                mov bx,ax

                cmp dx,max
                jae then

                mov ax,bx
                jmp petlja
                then:
                    mov max,dx
                    mov ax,bx
                    jmp petlja

        krajPetlje:
                mov dx,max
                add dl,'0'
                mov ah,2
                int 21h

                mov ah,4ch
                int 21h
end main


