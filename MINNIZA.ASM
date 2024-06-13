.model small
.data
niz1 db 101,103,100,105,110
n dw 5
temp db 120
.stack
.code
main:
        mov ax,@data
        mov ds,ax

        mov bx,0
        findMin:
                cmp bx,n
                je end_loop

                mov ah,temp
                cmp niz1[bx],ah
                jb thenPart
                jae elsePart
                thenPart:
                        mov ah,niz1[bx]
                        mov temp,ah
                        inc bx
                        jmp findMin
                elsePart:
                        inc bx
                        jmp findMin
        end_loop:
                mov dl,temp
                mov ah,2
                int 21h

                mov ah,4ch
                int 21h
end main
                        
