.model small
.data
poruka1 db 'Jeste Armstrongov','$'
poruka2 db 'Nije Armstrongov','$'
sumacif dw 0
cifra dw ?
x dw 153
y dw ?
.stack

.code
main:
        mov ax,@data
        mov ds,ax

        mov ax,x
        mov y,ax

        mov ax,y
        mov cx,10
        petlja:
                cmp ax,0
                je krajPetlje

                mov dx,0
                div cx
                mov cifra,dx
                mov bx,ax
                mov ax,cifra
                mul cifra
                mul cifra
                add sumacif,ax
                mov cifra,0
                mov ax,bx
                jmp petlja
        krajPetlje:

                mov ax,sumacif
                cmp ax,x
                je jesteArm
                jne nijeArm

                jesteArm:
                        mov ah,9
                        mov dx,OFFSET poruka1
                        int 21h
                        jmp kraj
                nijeArm:
                        mov ah,9
                        mov dx,OFFSET poruka2
                        int 21h
                        jmp kraj

        kraj:
        mov ah,4ch
        int 21h
end main
