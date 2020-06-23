atoi_asm:
	@cd atoi && $(MAKE) asm
atoi_link:
	@cd atoi && $(MAKE) link
atoi_clean:
	@cd atoi && $(MAKE) clean
atoi_run:
	@cd atoi && $(MAKE) run
memcpy_asm:
	@cd memcpy && $(MAKE) asm
memcpy_link:
	@cd memcpy && $(MAKE) link
memcpy_clean:
	@cd memcpy && $(MAKE) clean
memcpy_run:
	@cd memcpy && $(MAKE) run
freq_compile:
	@cd freq && $(MAKE) compile
freq_clean:
	@cd freq && $(MAKE) clean
freq_run:
	@cd freq && $(MAKE) run
cmt:
	@git add --all
	@git commit -m "Update: all"
push:
	@git push origin master
