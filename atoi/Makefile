CC = gcc
CFLAGS = -g -O -m32

asm:
	$(CC) $(CFLAGS) -S main.c
	$(CC) $(CFLAGS) -c main.c
	git add --all && git commit -m "Update: atoi"
link:
	ld -o atoi main.o atoi.o
	git add --all && git commit -m "Update: atoi"
clean:
	rm -rf main.o atoi.o main.s atoi
	git add --all && git commit -m "Update: atoi"
