.model small

.data
n dw 5
niz1 db 97,98,100,103,101
temp db 0
.stack
.code
main:
        mov ax,@data
        mov ds,ax

        mov bx,0
        findMax:
                cmp bx,n
                je endLoop

                mov al,niz1[bx]
                cmp al,temp
                jge newMax
                jl elsePart

                newMax:
                      mov al,niz1[bx]
                      mov temp,al
                      inc bx
                      jmp findMax

                elsePart:
                     inc bx
                     jmp findMax
        endLoop:
        mov dl,temp
        mov ah,2
        int 21h

        mov ah,4ch
        int 21h
end main
