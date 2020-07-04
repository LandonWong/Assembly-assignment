CC = gcc
CFLAGS = -m32 -g -O
compile:
	$(CC) $(CFLAGS) -S freq.c
	$(CC) $(CFLAGS) -o freq freq.c
	git add --all && git commit -m "Update: freq_compile"
clean:
	rm -rf freq.s freq
	git add --all && git commit -m "Update: freq_clean"
run:
	@./freq
