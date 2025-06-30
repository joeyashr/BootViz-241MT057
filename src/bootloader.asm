; bootloader.asm
[org 0x7C00]       ; Code starts at memory address 0x7C00

start:
    mov si, message     ; Load address of message into SI

print_loop:
    lodsb               ; 
    cmp al, 0           ; 
    je done             ; 

    mov ah, 0x0E        ; 
    int 0x10            ; 
    jmp print_loop      ;

done:
    cli                 ; Disable interrupts
    hlt                 ; Halt the CPU

message:
    db 'Hello, Bootloader!', 0   ; Message + null terminator

times 510 - ($ - $$) db 0        ; Pad up to 510 bytes
dw 0xAA55                        ; Boot signature
