# Makefile to assemble .asm files into bootable images

SRC_DIR = src
BUILD_DIR = build
ASM_FILES = $(wildcard $(SRC_DIR)/*.asm)
IMG_FILES = $(patsubst $(SRC_DIR)/%.asm, $(BUILD_DIR)/%.img, $(ASM_FILES))

NASM = nasm
NASMFLAGS = -f bin

all: $(IMG_FILES)

$(BUILD_DIR)/%.img: $(SRC_DIR)/%.asm
	@mkdir -p $(BUILD_DIR)
	$(NASM) $(NASMFLAGS) $< -o $@

clean:
	rm -rf $(BUILD_DIR)/*.img
 
