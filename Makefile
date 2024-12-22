ASM = nasm
CC = gcc

ASM_FLAGS = -f elf64
CC_FLAGS = -nostartfiles -lc -lm -dynamic-linker /lib64/ld-linux-x86-64.so.2 -no-pie

OUTPUT = bfASS.out

SRC = $(wildcard src/*.asm)

OBJ = $(SRC:src/%.asm=%.o)

all: $(OUTPUT)

%.o: src/%.asm
	$(ASM) $(ASM_FLAGS) -o $@ $<

$(OUTPUT): $(OBJ)
	$(CC) $(CC_FLAGS) -o $(OUTPUT) $(OBJ)

clean:
	rm -f $(OBJ) $(OUTPUT)

