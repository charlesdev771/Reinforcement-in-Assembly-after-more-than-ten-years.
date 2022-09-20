NOML = enter

all: $(NOME).o
  ld -s -o $(NOML) $(NOML).o
  rm -rf *.o

%.o: %.asm
  nasm -f elf64 $<
