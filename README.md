# BootViz - 241MT057

This project demonstrates how computers boot up and interact with keyboard input entirely written in low-level x86 Assembly.  
It includes a basic bootloader and a keyboard handler, both designed to run without an operating system.

---

## Project Structure

BootViz/

├── src/ # Assembly source files (.asm)

│ ├── bootloader.asm # Boot sector code (first-stage)

│ └── keyboard.asm # Keyboard input handler

├── bin/ # Compiled bootable image files (.img)

├── docs/ # Additional documentation (optional)

├── Makefile # Build automation using NASM

├── .gitignore # Git ignored files (e.g., *.img, temp files)

└── README.md # This file


---

## Requirements

To build and run this project, you need the following installed:

- **NASM** (Netwide Assembler)
- **QEMU** (Quick Emulator)
- **Make** (included in MSYS2 on Windows or native on Linux/Mac)

---

## How to Build

From the root folder (`BootViz/`), run:

```make```
This assembles the .asm files in src/ and outputs .img files to bin/.

## How to Run in QEMU
To boot the bootloader:


```qemu-system-x86_64 -drive format=raw,file=bin/bootloader.img```

To test the keyboard input (if it generates a separate image):

```qemu-system-x86_64 -drive format=raw,file=bin/keyboard.img```

## Description of Key Files
File	Description
bootloader.asm	512-byte boot sector that loads first
keyboard.asm	Assembly to read and echo keyboard input
Makefile	Automates NASM compilation to .img

## Concepts Covered
BIOS-level booting

Real-mode x86 Assembly

Interrupt handling (keyboard)

MBR structure

Bare-metal programming
