.model small
.data
n dw 5
k dw 3
temp dw ?
.stack
.code
main:
        mov ax,@data
        mov ds,ax

        mov bx,1
        mov ax,n
        mov temp,ax

        petlja:
              cmp bx,k
              je kraj

              mov ax,n
              mul n
              mov n,ax
              inc bx
              jmp petlja
       kraj:
        mov ax,n
        mov cx,10
        mov bx,0

        addToStack:
                cmp ax,0
                je endPush

                mov dx,0
                div cx
                push dx
                inc bx
                jmp addToStack

        endPush:

                stampa:
                cmp bx,0
                je krajStampe

                pop dx
                add dl,'0'
                mov ah,2
                int 21h

                dec bx
                jmp stampa

        krajStampe:

        mov ah,4ch
        int 21h

end main
