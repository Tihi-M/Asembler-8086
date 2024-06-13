.model small
.data
n dw 10
niz1 db 97,98,99,100,101,102,103,104,105,106
niz2 db 10 dup(0)
x dw 2
.stack
.code
main:
        mov ax,@data
        mov ds,ax

        mov bx,0
        copyArr:
                cmp bx,n
                je copyEnd

                mov ah,niz1[bx]
                inc ah
                mov niz2[bx],ah
                inc bx
                jmp copyArr
       copyEnd:
       mov bx,0
       printArr:
                cmp bx,n
                je printEnd

                mov dl,niz2[bx]
                mov ah,2
                int 21h

                mov dl,' '
                mov ah,2
                int 21h

                inc bx
                jmp printArr
       printEnd:
       mov ah,4ch
       int 21h
end main


