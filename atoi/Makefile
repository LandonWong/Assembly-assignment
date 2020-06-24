CC = gcc
CFLAGS = -w -O -m32 -fno-asynchronous-unwind-tables

asm:
	$(CC) $(CFLAGS) -S main.c
	$(CC) $(CFLAGS) -c main.c
	#$(CC) $(CFLAGS) -S atoi.c
	#$(CC) $(CFLAGS) -c atoi.c
	$(CC) $(CFLAGS) -c atoi.s
	git add --all && git commit -m "Update: atoi_asm"
link:
	$(CC) $(CFLAGS) main.o atoi.o -o atoi -lm
	git add --all && git commit -m "Update: atoi_link"
clean:
	rm -rf main.o atoi.o main.s atoi
	git add --all && git commit -m "Update: atoi_clean"
run:
	@./atoi
