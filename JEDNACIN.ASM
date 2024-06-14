.model small

.data
x dw 7
y dw 5
z dw ?
.stack

.code
main:
        mov ax,@data
        mov ds,ax

        mov ax,x
        add ax,x
        add ax,y
        inc ax
        mov z,ax

        mov ax,z
        mov cx,10
        mov bx,0
        pushingOnStack:
                cmp ax,0
                je stopPushing

                mov dx,0
                div cx
                push dx
                inc bx
                jmp pushingOnStack

        stopPushing:

        printNum:
                cmp bx,0
                je endPrint

                pop dx
                add dl,'0'
                mov ah,2
                int 21h

                dec bx
                jmp printNum

        endPrint:
                mov ah,4ch
                int 21h

end main
