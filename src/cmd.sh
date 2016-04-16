gcc -S -msse -fno-asynchronous-unwind-tables -fno-dwarf2-cfi-asm -m64 MatrixMultiply.c
gcc -msse -fno-asynchronous-unwind-tables -fno-dwarf2-cfi-asm -masm=intel MatrixMultiply.c -S
