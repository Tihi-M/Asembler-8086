.model small

.data
n dw 7
niz1 db 97,98,99,100,101,102,103
niz2 db 7 dup(0)
ind dw 0
len dw 6
.stack

.code
main:
        mov ax,@data
        mov ds,ax

        mov cx,7
        mov si,0
        mov di,6
        reverse_arr:
                cmp cx,0
                je reverse_end

                mov al,[si+niz1]
                mov [di+niz2],al

                inc si
                dec di
                dec cx
                jmp reverse_arr
       reverse_end:
                mov bx, 0
       print_arr:
                cmp bx,n
                je print_end

                mov dl,niz2[bx]
                mov ah,2
                int 21h

                mov dl,' '
                mov ah,2
                int 21h

                inc bx
                jmp print_arr

        print_end:
                mov ah,4ch
                int 21h
 end main




