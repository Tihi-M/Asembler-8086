.model small
.data
poruka db 'Tihi :P','$'
.stack
.code
main:
        mov ax,@data
        mov ds,ax

        mov ah,9
        mov dx,OFFSET poruka
        int 21h

        mov ah,4ch
        int 21h
end main
