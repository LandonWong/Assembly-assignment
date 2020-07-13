CC = gcc
CFLAGS = -w -O -g -mmmx -fno-asynchronous-unwind-tables 

asm:
	$(CC) $(CFLAGS) -S main.c
	$(CC) $(CFLAGS) -c main.c
	$(CC) $(CFLAGS) -O4 -c memcpy.s
	git add --all && git commit -m "Update: memcpy_asm"
link:
	$(CC) $(CFLAGS) main.o memcpy.o -o memcpy -lm
	git add --all && git commit -m "Update: memcpy_link"
clean:
	rm -rf main.o memcpy.o main.s memcpy
	git add --all && git commit -m "Update: memcpy_clean"
run:
	@./memcpy
