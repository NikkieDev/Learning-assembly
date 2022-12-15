as main.asm --32 -o main.o
gcc -o main.elf -m32 main.o -nostdlib
./main.elf