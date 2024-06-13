.model small

.data
a db 97
.stack
.code
main:
     mov ax,@data
     mov ds,ax

     mov al,a
     cbw

     mov cx, 10

     printNum:
        cmp ax,0
        jz printEnd

        mov dx,0
        div cx

        mov bx,ax                                                                                                                                                                   
        add dl,'0'
        mov ah,2
        int 21h
        mov ax,bx
        jmp printNum

     printEnd:
        mov ah,4ch
        int 21h
end main
