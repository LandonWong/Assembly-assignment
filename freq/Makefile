CC = gcc
CFLAGS = -m64 -O -fno-asynchronous-unwind-tables
compile:
	$(CC) $(CFLAGS) -S freq.c
	$(CC) $(CFLAGS) -o freq freq.c
	git add --all && git commit -m "Update: freq_compile"
clean:
	rm -rf freq.s freq
	git add --all && git commit -m "Update: freq_clean"
run:
	@./freq
