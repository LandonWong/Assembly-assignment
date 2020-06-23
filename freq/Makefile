CC = gcc
CFLAGS = -o
compile:
	$(CC) $(CFLAGS) -S main.c
	$(CC) $(CFLAGS) freq main.c
	git add --all && git commit -m "Update: freq_compile"
clean:
	rm -rf main.s freq
	git add --all && git commit -m "Update: freq_clean"
run:
	@./freq
