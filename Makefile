atoi_asm:
	@cd atoi && $(MAKE) asm
atoi_link:
	@cd atoi && $(MAKE) link
atoi_clean:
	@cd atoi && $(MAKE) clean
cmt:
	@git add --all
	@git commit -m "Update all"
push:
	@git push origin master
