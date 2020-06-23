CC = gcc
CFLAGS = -w -O -m32

asm:
	$(CC) $(CFLAGS) -S main.c
	$(CC) $(CFLAGS) -c main.c
	$(CC) $(CFLAGS) -S atoi.c
	$(CC) $(CFLAGS) -c atoi.c
	#as -o atoi.o atoi.S
	git add --all && git commit -m "Update: atoi_asm"
link:
	$(CC) $(CFLAGS) main.o atoi.o -o atoi -lm
	#ld -m elf_i386 -o atoi main.o atoi.o
	git add --all && git commit -m "Update: atoi_link"
clean:
	rm -rf main.o atoi.o main.s atoi
	git add --all && git commit -m "Update: atoi_clean"
run:
	@./atoi
