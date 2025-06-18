[BITS 16]
[ORG 0x7C00]

start:
    xor ax, ax
    mov ds, ax
    mov es, ax

    mov ax, 0x0003
    int 0x10

    mov ah, 0x02
    mov bh, 0x00
    mov dh, 0x00
    mov dl, 0x00
    int 0x10

    mov si, msg

print_loop:
    lodsb
    cmp al, 0
    je done
    mov ah, 0x0E
    int 0x10
    jmp print_loop

done:
    jmp $

msg db "Hello World!", 0

times 510 - ($ - $$) db 0

dw 0xAA55
