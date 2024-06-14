.model small

.data
a dw 1
granica dw ?
poruka1 db 'Prost broj','$'
poruka2 db 'Slozen broj','$'
poruka3 db 'Jedinica','$'

.stack
.code
main:
        mov ax,@data
        mov ds,ax

        mov ax,a
        shr ax,1
        inc ax
        mov granica,ax

        mov ax,a
        cmp ax,1
        je jesteJedinica
        jne nastavak

        jesteJedinica:
                mov ah,9
                mov dx,OFFSET poruka3
                int 21h
                jmp krajPrograma

        nastavak:
                mov ax,a
                mov bx,2
        isPrime:
                cmp bx,granica
                je truePrime

                mov dx,0
                div bx
                cmp dx,0
                je isntPrime

                inc bx
                jmp isPrime

        truePrime:
                mov ah,9
                mov dx,OFFSET poruka1
                int 21h
                jmp krajPrograma

        isntPrime:
                mov ah,9
                mov dx,OFFSET poruka2
                int 21h
                jmp krajPrograma

         krajPrograma:
                mov ah,4ch
                int 21h

  end main


