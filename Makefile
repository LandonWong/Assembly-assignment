ifeq ($(ACT),asm)
	MSG ?= " assemble."
endif
ifeq ($(ACT),clean)
	MSG ?= " temp clean."
endif
ifeq ($(ACT),link)
	MSG ?= " link."
endif
ifeq ($(ACT),run)
	MSG ?= " test run."
endif
all:
	@echo "[INFO] Assignment "$(VAL)" will be"$(MSG)
	@cd $(VAL) && $(MAKE) $(ACT)
