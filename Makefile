SRC_DIR = src
BIN_DIR = bin

ASM_FILES = $(wildcard $(SRC_DIR)/*.asm)
IMG_FILES = $(patsubst $(SRC_DIR)/%.asm, $(BIN_DIR)/%.img, $(ASM_FILES))

NASM = nasm
NASMFLAGS = -f bin

all: $(IMG_FILES)

$(BIN_DIR)/%.img: $(SRC_DIR)/%.asm
	@mkdir -p $(BIN_DIR)
	$(NASM) $(NASMFLAGS) $< -o $@

clean:
	rm -f $(BIN_DIR)/*.img
