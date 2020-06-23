CC = gcc
CFLAGS = -g -w -O -m32

asm:
	$(CC) $(CFLAGS) -S main.c
	$(CC) $(CFLAGS) -c main.c
	git add --all && git commit -m "Update: atoi_asm"
link:
	ld -o atoi main.o atoi.o
	git add --all && git commit -m "Update: atoi_link"
clean:
	rm -rf main.o atoi.o main.s atoi
	git add --all && git commit -m "Update: atoi_clean"
run:
	@./atoi
