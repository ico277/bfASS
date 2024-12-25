CC = gcc
LD = ld
CFLAGS = -Wall -Wextra -O2
LDFLAGS = -dynamic-linker /lib64/ld-linux-x86-64.so.2

OUTPUT = bfASS.out

SRC = $(wildcard src/*.c)

OBJ = $(SRC:src/%.c=%.o)

all: $(OUTPUT)

%.o: src/%.c
	$(CC) $(CFLAGS) -c -o $@ $<

$(OUTPUT): $(OBJ)
	$(LD) $(LDFLAGS) -o $(OUTPUT) $(OBJ)

clean:
	rm -f *.o *.out

