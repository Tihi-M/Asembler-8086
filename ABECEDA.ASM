.model small

.data
letter db 97
n dw 27
.stack

.code
main:
        mov ax,@data
        mov ds,ax

        mov bx,0

        printLetters:
                cmp bx,n
                je printEnd

                mov dl,letter
                mov ah,2
                int 21h

                mov dl,' '
                mov ah,2
                int 21h

                inc letter

                inc bx
                jmp printLetters

        printEnd:

                mov ah,4ch
                int 21h
end main





