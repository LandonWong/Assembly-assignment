	.file	"main.c"
	.text
.Ltext0:
	.globl	myatoi
	.type	myatoi, @function
myatoi:
.LFB41:
	.file 1 "main.c"
	.loc 1 10 0
	.cfi_startproc
.LVL0:
	.loc 1 10 0
	movl	$352, %eax
	ret
	.cfi_endproc
.LFE41:
	.size	myatoi, .-myatoi
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"<<<<< Begin BASIC Test >>>>>>"
.LC1:
	.string	"[%d:%s] PASS : %d\n"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC2:
	.string	"[%d:%s] FAIL : MINE: %d, REF: %d\n"
	.section	.rodata.str1.1
.LC3:
	.string	"pass %d / %d\n"
.LC4:
	.string	"<<<<< BASIC Test Done >>>>>>\n"
	.text
	.globl	basic_test
	.type	basic_test, @function
basic_test:
.LFB42:
	.loc 1 13 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LVL1:
.LBB56:
.LBB57:
	.file 2 "/usr/include/bits/stdio2.h"
	.loc 2 104 0
	leal	.LC0@GOTOFF(%ebx), %eax
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	puts@PLT
.LVL2:
	addl	$16, %esp
	.cfi_def_cfa_offset 48
.LBE57:
.LBE56:
	.loc 1 17 0
	movl	$0, 12(%esp)
	.loc 1 18 0
	movl	$0, %esi
	.loc 1 19 0
	movl	basic@GOT(%ebx), %edi
.LBB58:
.LBB59:
	.loc 2 104 0
	leal	.LC2@GOTOFF(%ebx), %ebp
	jmp	.L5
.LVL3:
.L9:
.LBE59:
.LBE58:
.LBB61:
.LBB62:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	$352
	.cfi_def_cfa_offset 64
	pushl	%edx
	.cfi_def_cfa_offset 68
	pushl	%esi
	.cfi_def_cfa_offset 72
	leal	.LC1@GOTOFF(%ebx), %eax
	pushl	%eax
	.cfi_def_cfa_offset 76
	pushl	$1
	.cfi_def_cfa_offset 80
	call	__printf_chk@PLT
.LVL4:
.LBE62:
.LBE61:
	.loc 1 23 0
	addl	$1, 44(%esp)
.LVL5:
	addl	$32, %esp
	.cfi_def_cfa_offset 48
.L4:
	.loc 1 18 0 discriminator 2
	addl	$1, %esi
.LVL6:
	cmpl	$4, %esi
	je	.L8
.LVL7:
.L5:
.LBB63:
.LBB64:
	.file 3 "/usr/include/stdlib.h"
	.loc 3 363 0
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	pushl	$10
	.cfi_def_cfa_offset 56
	pushl	$0
	.cfi_def_cfa_offset 60
	pushl	(%edi,%esi,4)
	.cfi_def_cfa_offset 64
	call	strtol@PLT
.LVL8:
.LBE64:
.LBE63:
	.loc 1 20 0
	movl	(%edi,%esi,4), %edx
	.loc 1 21 0
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	cmpl	$352, %eax
	je	.L9
.LVL9:
.LBB65:
.LBB60:
	.loc 2 104 0
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	$352
	.cfi_def_cfa_offset 64
	pushl	%edx
	.cfi_def_cfa_offset 68
	pushl	%esi
	.cfi_def_cfa_offset 72
	pushl	%ebp
	.cfi_def_cfa_offset 76
	pushl	$1
	.cfi_def_cfa_offset 80
	call	__printf_chk@PLT
.LVL10:
	addl	$32, %esp
	.cfi_def_cfa_offset 48
	jmp	.L4
.LVL11:
.L8:
.LBE60:
.LBE65:
.LBB66:
.LBB67:
	pushl	$4
	.cfi_def_cfa_offset 52
	pushl	16(%esp)
	.cfi_def_cfa_offset 56
	leal	.LC3@GOTOFF(%ebx), %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	$1
	.cfi_def_cfa_offset 64
	call	__printf_chk@PLT
.LVL12:
.LBE67:
.LBE66:
.LBB68:
.LBB69:
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.LVL13:
.LBE69:
.LBE68:
	.loc 1 30 0
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
.LVL14:
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE42:
	.size	basic_test, .-basic_test
	.section	.rodata.str1.4
	.align 4
.LC5:
	.string	"<<<<< Begin MEDIUM Test >>>>>>"
	.align 4
.LC6:
	.string	"<<<<< MEDIUM Test Done >>>>>>\n"
	.text
	.globl	medium_test
	.type	medium_test, @function
medium_test:
.LFB43:
	.loc 1 33 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LVL15:
.LBB84:
.LBB85:
	.loc 2 104 0
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	puts@PLT
.LVL16:
	addl	$16, %esp
	.cfi_def_cfa_offset 48
.LBE85:
.LBE84:
	.loc 1 37 0
	movl	$0, 12(%esp)
	.loc 1 38 0
	movl	$0, %esi
	.loc 1 39 0
	movl	medium@GOT(%ebx), %edi
.LBB86:
.LBB87:
	.loc 2 104 0
	leal	.LC2@GOTOFF(%ebx), %ebp
	jmp	.L13
.LVL17:
.L17:
.LBE87:
.LBE86:
.LBB89:
.LBB90:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	$352
	.cfi_def_cfa_offset 64
	pushl	%edx
	.cfi_def_cfa_offset 68
	pushl	%esi
	.cfi_def_cfa_offset 72
	leal	.LC1@GOTOFF(%ebx), %eax
	pushl	%eax
	.cfi_def_cfa_offset 76
	pushl	$1
	.cfi_def_cfa_offset 80
	call	__printf_chk@PLT
.LVL18:
.LBE90:
.LBE89:
	.loc 1 43 0
	addl	$1, 44(%esp)
.LVL19:
	addl	$32, %esp
	.cfi_def_cfa_offset 48
.L12:
	.loc 1 38 0 discriminator 2
	addl	$1, %esi
.LVL20:
	cmpl	$4, %esi
	je	.L16
.LVL21:
.L13:
.LBB91:
.LBB92:
	.loc 3 363 0
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	pushl	$10
	.cfi_def_cfa_offset 56
	pushl	$0
	.cfi_def_cfa_offset 60
	pushl	(%edi,%esi,4)
	.cfi_def_cfa_offset 64
	call	strtol@PLT
.LVL22:
.LBE92:
.LBE91:
	.loc 1 40 0
	movl	(%edi,%esi,4), %edx
	.loc 1 41 0
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	cmpl	$352, %eax
	je	.L17
.LVL23:
.LBB93:
.LBB88:
	.loc 2 104 0
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	$352
	.cfi_def_cfa_offset 64
	pushl	%edx
	.cfi_def_cfa_offset 68
	pushl	%esi
	.cfi_def_cfa_offset 72
	pushl	%ebp
	.cfi_def_cfa_offset 76
	pushl	$1
	.cfi_def_cfa_offset 80
	call	__printf_chk@PLT
.LVL24:
	addl	$32, %esp
	.cfi_def_cfa_offset 48
	jmp	.L12
.LVL25:
.L16:
.LBE88:
.LBE93:
.LBB94:
.LBB95:
	pushl	$4
	.cfi_def_cfa_offset 52
	pushl	16(%esp)
	.cfi_def_cfa_offset 56
	leal	.LC3@GOTOFF(%ebx), %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	$1
	.cfi_def_cfa_offset 64
	call	__printf_chk@PLT
.LVL26:
.LBE95:
.LBE94:
.LBB96:
.LBB97:
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.LVL27:
.LBE97:
.LBE96:
	.loc 1 50 0
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
.LVL28:
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE43:
	.size	medium_test, .-medium_test
	.section	.rodata.str1.4
	.align 4
.LC7:
	.string	"<<<<< Begin ADVANCED Test >>>>>>"
	.align 4
.LC8:
	.string	"[%d:%s] FAIL : MINE: %d, REF: %ld \n"
	.align 4
.LC9:
	.string	"<<<<< ADVANCED Test Done >>>>>>\n"
	.text
	.globl	advanced_test
	.type	advanced_test, @function
advanced_test:
.LFB44:
	.loc 1 53 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LVL29:
.LBB112:
.LBB113:
	.loc 2 104 0
	leal	.LC7@GOTOFF(%ebx), %eax
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	puts@PLT
.LVL30:
	addl	$16, %esp
	.cfi_def_cfa_offset 48
.LBE113:
.LBE112:
	.loc 1 57 0
	movl	$0, 12(%esp)
	.loc 1 58 0
	movl	$0, %esi
	.loc 1 59 0
	movl	advanced@GOT(%ebx), %edi
.LBB114:
.LBB115:
	.loc 2 104 0
	leal	.LC8@GOTOFF(%ebx), %ebp
	jmp	.L22
.LVL31:
.L28:
.LBE115:
.LBE114:
.LBB117:
.LBB118:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	$352
	.cfi_def_cfa_offset 64
	pushl	%ecx
	.cfi_def_cfa_offset 68
	pushl	%esi
	.cfi_def_cfa_offset 72
	leal	.LC1@GOTOFF(%ebx), %eax
	pushl	%eax
	.cfi_def_cfa_offset 76
	pushl	$1
	.cfi_def_cfa_offset 80
	call	__printf_chk@PLT
.LVL32:
.LBE118:
.LBE117:
	.loc 1 63 0
	addl	$1, 44(%esp)
.LVL33:
	addl	$32, %esp
	.cfi_def_cfa_offset 48
	jmp	.L20
.L29:
	.loc 1 65 0 discriminator 3
	cltd
.L21:
.LVL34:
.LBB119:
.LBB116:
	.loc 2 104 0 discriminator 8
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	pushl	%edx
	.cfi_def_cfa_offset 56
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	$352
	.cfi_def_cfa_offset 64
	pushl	%ecx
	.cfi_def_cfa_offset 68
	pushl	%esi
	.cfi_def_cfa_offset 72
	pushl	%ebp
	.cfi_def_cfa_offset 76
	pushl	$1
	.cfi_def_cfa_offset 80
	call	__printf_chk@PLT
.LVL35:
	addl	$32, %esp
	.cfi_def_cfa_offset 48
.LVL36:
.L20:
.LBE116:
.LBE119:
	.loc 1 58 0 discriminator 2
	addl	$1, %esi
.LVL37:
	cmpl	$4, %esi
	je	.L27
.LVL38:
.L22:
.LBB120:
.LBB121:
	.loc 3 363 0
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	pushl	$10
	.cfi_def_cfa_offset 56
	pushl	$0
	.cfi_def_cfa_offset 60
	pushl	(%edi,%esi,4)
	.cfi_def_cfa_offset 64
	call	strtol@PLT
.LVL39:
.LBE121:
.LBE120:
	.loc 1 60 0
	movl	(%edi,%esi,4), %ecx
	.loc 1 61 0
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	cmpl	$352, %eax
	je	.L28
	.loc 1 65 0
	cmpl	$3, %esi
	je	.L23
	.loc 1 65 0 is_stmt 0 discriminator 1
	cmpl	$2, %esi
	jne	.L29
	.loc 1 65 0
	movl	$-2147483648, %eax
	movl	$-1, %edx
	jmp	.L21
.L23:
	movl	$2147483647, %eax
	movl	$0, %edx
	jmp	.L21
.L27:
.LVL40:
.LBB122:
.LBB123:
	.loc 2 104 0 is_stmt 1
	pushl	$4
	.cfi_def_cfa_offset 52
	pushl	16(%esp)
	.cfi_def_cfa_offset 56
	leal	.LC3@GOTOFF(%ebx), %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	$1
	.cfi_def_cfa_offset 64
	call	__printf_chk@PLT
.LVL41:
.LBE123:
.LBE122:
.LBB124:
.LBB125:
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
.LVL42:
.LBE125:
.LBE124:
	.loc 1 70 0
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
.LVL43:
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE44:
	.size	advanced_test, .-advanced_test
	.section	.rodata.str1.1
.LC10:
	.string	"Benchmark preparing..."
.LC11:
	.string	"352"
.LC12:
	.string	"2147483640"
.LC13:
	.string	"-155852"
.LC14:
	.string	"+2351"
.LC15:
	.string	"\t256"
.LC16:
	.string	"         -658"
.LC17:
	.string	"\n 23452"
.LC18:
	.string	"-2561_ds"
.LC19:
	.string	"- 256adfs"
.LC20:
	.string	"   -a2sdfdfda"
.LC21:
	.string	"\n-99999999999"
.LC22:
	.string	"   +77777788888877"
	.section	.rodata.str1.4
	.align 4
.LC23:
	.string	"Benchmark prepare done. Test begin"
	.text
	.globl	init
	.type	init, @function
init:
.LFB45:
	.loc 1 72 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
.LVL44:
.LBB126:
.LBB127:
	.loc 2 104 0
	leal	.LC10@GOTOFF(%ebx), %eax
	pushl	%eax
	.cfi_def_cfa_offset 48
	call	puts@PLT
.LVL45:
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	$0, %esi
.LBE127:
.LBE126:
	.loc 1 76 0
	movl	basic@GOT(%ebx), %ebp
	.loc 1 77 0
	movl	medium@GOT(%ebx), %edi
.LVL46:
.L31:
	.loc 1 76 0 discriminator 3
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	pushl	$100
	.cfi_def_cfa_offset 48
	call	malloc@PLT
.LVL47:
	movl	%eax, (%esi,%ebp)
	.loc 1 77 0 discriminator 3
	movl	$100, (%esp)
	call	malloc@PLT
.LVL48:
	movl	%eax, (%esi,%edi)
	.loc 1 78 0 discriminator 3
	movl	$100, (%esp)
	call	malloc@PLT
.LVL49:
	movl	advanced@GOT(%ebx), %edx
	movl	%eax, (%esi,%edx)
	addl	$4, %esi
	.loc 1 75 0 discriminator 3
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	cmpl	$16, %esi
	jne	.L31
	.loc 1 81 0
	movl	basic@GOT(%ebx), %eax
	leal	.LC11@GOTOFF(%ebx), %edx
	movl	%edx, (%eax)
	.loc 1 82 0
	leal	.LC12@GOTOFF(%ebx), %edx
	movl	%edx, 4(%eax)
	.loc 1 83 0
	leal	.LC13@GOTOFF(%ebx), %edx
	movl	%edx, 8(%eax)
	.loc 1 84 0
	leal	.LC14@GOTOFF(%ebx), %edx
	movl	%edx, 12(%eax)
	.loc 1 85 0
	movl	medium@GOT(%ebx), %eax
	leal	.LC15@GOTOFF(%ebx), %edx
	movl	%edx, (%eax)
	.loc 1 86 0
	leal	.LC16@GOTOFF(%ebx), %edx
	movl	%edx, 4(%eax)
	.loc 1 87 0
	leal	.LC17@GOTOFF(%ebx), %edx
	movl	%edx, 8(%eax)
	.loc 1 88 0
	leal	.LC18@GOTOFF(%ebx), %edx
	movl	%edx, 12(%eax)
	.loc 1 89 0
	movl	advanced@GOT(%ebx), %eax
	leal	.LC19@GOTOFF(%ebx), %edx
	movl	%edx, (%eax)
	.loc 1 90 0
	leal	.LC20@GOTOFF(%ebx), %edx
	movl	%edx, 4(%eax)
	.loc 1 91 0
	leal	.LC21@GOTOFF(%ebx), %edx
	movl	%edx, 8(%eax)
	.loc 1 92 0
	leal	.LC22@GOTOFF(%ebx), %edx
	movl	%edx, 12(%eax)
.LVL50:
.LBB128:
.LBB129:
	.loc 2 104 0
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	leal	.LC23@GOTOFF(%ebx), %eax
	pushl	%eax
	.cfi_def_cfa_offset 48
	call	puts@PLT
.LVL51:
.LBE129:
.LBE128:
	.loc 1 94 0
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE45:
	.size	init, .-init
	.globl	main
	.type	main, @function
main:
.LFB46:
	.loc 1 97 0
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	subl	$4, %esp
.LVL52:
	.loc 1 99 0
	call	init
.LVL53:
	.loc 1 100 0
	call	basic_test
.LVL54:
	.loc 1 101 0
	call	medium_test
.LVL55:
	.loc 1 102 0
	call	advanced_test
.LVL56:
	.loc 1 104 0
	movl	$0, %eax
	addl	$4, %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE46:
	.size	main, .-main
	.comm	advanced,16,4
	.comm	medium,16,4
	.comm	basic,16,4
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB48:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE48:
	.text
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 5 "/usr/include/bits/types.h"
	.file 6 "/usr/include/bits/libio.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/bits/sys_errlist.h"
	.file 9 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x95f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF73
	.byte	0xc
	.long	.LASF74
	.long	.LASF75
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF8
	.byte	0x4
	.byte	0xd8
	.long	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.long	.LASF9
	.byte	0x5
	.byte	0x37
	.long	0x61
	.uleb128 0x2
	.long	.LASF10
	.byte	0x5
	.byte	0x8c
	.long	0x85
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF11
	.uleb128 0x2
	.long	.LASF12
	.byte	0x5
	.byte	0x8d
	.long	0x6f
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0x9f
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x7
	.long	0x9f
	.uleb128 0x8
	.long	.LASF43
	.byte	0x94
	.byte	0x6
	.byte	0xf5
	.long	0x22b
	.uleb128 0x9
	.long	.LASF14
	.byte	0x6
	.byte	0xf6
	.long	0x5a
	.byte	0
	.uleb128 0x9
	.long	.LASF15
	.byte	0x6
	.byte	0xfb
	.long	0x99
	.byte	0x4
	.uleb128 0x9
	.long	.LASF16
	.byte	0x6
	.byte	0xfc
	.long	0x99
	.byte	0x8
	.uleb128 0x9
	.long	.LASF17
	.byte	0x6
	.byte	0xfd
	.long	0x99
	.byte	0xc
	.uleb128 0x9
	.long	.LASF18
	.byte	0x6
	.byte	0xfe
	.long	0x99
	.byte	0x10
	.uleb128 0x9
	.long	.LASF19
	.byte	0x6
	.byte	0xff
	.long	0x99
	.byte	0x14
	.uleb128 0xa
	.long	.LASF20
	.byte	0x6
	.value	0x100
	.long	0x99
	.byte	0x18
	.uleb128 0xa
	.long	.LASF21
	.byte	0x6
	.value	0x101
	.long	0x99
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF22
	.byte	0x6
	.value	0x102
	.long	0x99
	.byte	0x20
	.uleb128 0xa
	.long	.LASF23
	.byte	0x6
	.value	0x104
	.long	0x99
	.byte	0x24
	.uleb128 0xa
	.long	.LASF24
	.byte	0x6
	.value	0x105
	.long	0x99
	.byte	0x28
	.uleb128 0xa
	.long	.LASF25
	.byte	0x6
	.value	0x106
	.long	0x99
	.byte	0x2c
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.value	0x108
	.long	0x263
	.byte	0x30
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.value	0x10a
	.long	0x269
	.byte	0x34
	.uleb128 0xa
	.long	.LASF28
	.byte	0x6
	.value	0x10c
	.long	0x5a
	.byte	0x38
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.value	0x110
	.long	0x5a
	.byte	0x3c
	.uleb128 0xa
	.long	.LASF30
	.byte	0x6
	.value	0x112
	.long	0x7a
	.byte	0x40
	.uleb128 0xa
	.long	.LASF31
	.byte	0x6
	.value	0x116
	.long	0x3e
	.byte	0x44
	.uleb128 0xa
	.long	.LASF32
	.byte	0x6
	.value	0x117
	.long	0x4c
	.byte	0x46
	.uleb128 0xa
	.long	.LASF33
	.byte	0x6
	.value	0x118
	.long	0x26f
	.byte	0x47
	.uleb128 0xa
	.long	.LASF34
	.byte	0x6
	.value	0x11c
	.long	0x27f
	.byte	0x48
	.uleb128 0xa
	.long	.LASF35
	.byte	0x6
	.value	0x125
	.long	0x8c
	.byte	0x4c
	.uleb128 0xa
	.long	.LASF36
	.byte	0x6
	.value	0x12d
	.long	0x97
	.byte	0x54
	.uleb128 0xa
	.long	.LASF37
	.byte	0x6
	.value	0x12e
	.long	0x97
	.byte	0x58
	.uleb128 0xa
	.long	.LASF38
	.byte	0x6
	.value	0x12f
	.long	0x97
	.byte	0x5c
	.uleb128 0xa
	.long	.LASF39
	.byte	0x6
	.value	0x130
	.long	0x97
	.byte	0x60
	.uleb128 0xa
	.long	.LASF40
	.byte	0x6
	.value	0x132
	.long	0x25
	.byte	0x64
	.uleb128 0xa
	.long	.LASF41
	.byte	0x6
	.value	0x133
	.long	0x5a
	.byte	0x68
	.uleb128 0xa
	.long	.LASF42
	.byte	0x6
	.value	0x135
	.long	0x285
	.byte	0x6c
	.byte	0
	.uleb128 0xb
	.long	.LASF76
	.byte	0x6
	.byte	0x9a
	.uleb128 0x8
	.long	.LASF44
	.byte	0xc
	.byte	0x6
	.byte	0xa0
	.long	0x263
	.uleb128 0x9
	.long	.LASF45
	.byte	0x6
	.byte	0xa1
	.long	0x263
	.byte	0
	.uleb128 0x9
	.long	.LASF46
	.byte	0x6
	.byte	0xa2
	.long	0x269
	.byte	0x4
	.uleb128 0x9
	.long	.LASF47
	.byte	0x6
	.byte	0xa6
	.long	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x232
	.uleb128 0x6
	.byte	0x4
	.long	0xab
	.uleb128 0xc
	.long	0x9f
	.long	0x27f
	.uleb128 0xd
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x22b
	.uleb128 0xc
	.long	0x9f
	.long	0x295
	.uleb128 0xd
	.long	0x30
	.byte	0x27
	.byte	0
	.uleb128 0xe
	.long	.LASF77
	.uleb128 0xf
	.long	.LASF48
	.byte	0x6
	.value	0x13f
	.long	0x295
	.uleb128 0xf
	.long	.LASF49
	.byte	0x6
	.value	0x140
	.long	0x295
	.uleb128 0xf
	.long	.LASF50
	.byte	0x6
	.value	0x141
	.long	0x295
	.uleb128 0x6
	.byte	0x4
	.long	0xa6
	.uleb128 0x7
	.long	0x2be
	.uleb128 0x10
	.long	0x2be
	.uleb128 0x11
	.long	.LASF51
	.byte	0x7
	.byte	0x87
	.long	0x269
	.uleb128 0x11
	.long	.LASF52
	.byte	0x7
	.byte	0x88
	.long	0x269
	.uleb128 0x11
	.long	.LASF53
	.byte	0x7
	.byte	0x89
	.long	0x269
	.uleb128 0x11
	.long	.LASF54
	.byte	0x8
	.byte	0x1a
	.long	0x5a
	.uleb128 0xc
	.long	0x2c4
	.long	0x305
	.uleb128 0x12
	.byte	0
	.uleb128 0x7
	.long	0x2fa
	.uleb128 0x11
	.long	.LASF55
	.byte	0x8
	.byte	0x1b
	.long	0x305
	.uleb128 0xc
	.long	0x99
	.long	0x325
	.uleb128 0xd
	.long	0x30
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.long	.LASF56
	.byte	0x1
	.byte	0x5
	.long	0x315
	.uleb128 0x5
	.byte	0x3
	.long	basic
	.uleb128 0x13
	.long	.LASF57
	.byte	0x1
	.byte	0x6
	.long	0x315
	.uleb128 0x5
	.byte	0x3
	.long	medium
	.uleb128 0x13
	.long	.LASF58
	.byte	0x1
	.byte	0x7
	.long	0x315
	.uleb128 0x5
	.byte	0x3
	.long	advanced
	.uleb128 0x14
	.long	.LASF78
	.byte	0x1
	.byte	0x61
	.long	0x5a
	.long	.LFB46
	.long	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a0
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.byte	0x62
	.long	0x5a
	.byte	0
	.uleb128 0x16
	.long	.LVL53
	.long	0x3a0
	.uleb128 0x16
	.long	.LVL54
	.long	0x67a
	.uleb128 0x16
	.long	.LVL55
	.long	0x552
	.uleb128 0x16
	.long	.LVL56
	.long	0x42a
	.byte	0
	.uleb128 0x17
	.long	.LASF59
	.byte	0x1
	.byte	0x48
	.long	.LFB45
	.long	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x42a
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x49
	.long	0x5a
	.long	.LLST24
	.uleb128 0x19
	.long	0x7da
	.long	.LBB126
	.long	.LBE126-.LBB126
	.byte	0x1
	.byte	0x4a
	.long	0x3e8
	.uleb128 0x1a
	.long	0x7ea
	.long	.LLST25
	.uleb128 0x16
	.long	.LVL45
	.long	0x82f
	.byte	0
	.uleb128 0x19
	.long	0x7da
	.long	.LBB128
	.long	.LBE128-.LBB128
	.byte	0x1
	.byte	0x5d
	.long	0x40e
	.uleb128 0x1a
	.long	0x7ea
	.long	.LLST26
	.uleb128 0x16
	.long	.LVL51
	.long	0x82f
	.byte	0
	.uleb128 0x16
	.long	.LVL47
	.long	0x866
	.uleb128 0x16
	.long	.LVL48
	.long	0x866
	.uleb128 0x16
	.long	.LVL49
	.long	0x866
	.byte	0
	.uleb128 0x17
	.long	.LASF60
	.byte	0x1
	.byte	0x35
	.long	.LFB44
	.long	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x552
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x36
	.long	0x5a
	.long	.LLST16
	.uleb128 0x1b
	.string	"ref"
	.byte	0x1
	.byte	0x37
	.long	0x5a
	.uleb128 0x1c
	.long	.LASF61
	.byte	0x1
	.byte	0x37
	.long	0x5a
	.uleb128 0x1d
	.long	.LASF62
	.byte	0x1
	.byte	0x37
	.long	0x5a
	.long	.LLST17
	.uleb128 0x19
	.long	0x7da
	.long	.LBB112
	.long	.LBE112-.LBB112
	.byte	0x1
	.byte	0x38
	.long	0x497
	.uleb128 0x1a
	.long	0x7ea
	.long	.LLST18
	.uleb128 0x16
	.long	.LVL30
	.long	0x82f
	.byte	0
	.uleb128 0x1e
	.long	0x7da
	.long	.LBB114
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x41
	.long	0x4bd
	.uleb128 0x1a
	.long	0x7ea
	.long	.LLST19
	.uleb128 0x16
	.long	.LVL35
	.long	0x898
	.byte	0
	.uleb128 0x19
	.long	0x7da
	.long	.LBB117
	.long	.LBE117-.LBB117
	.byte	0x1
	.byte	0x3e
	.long	0x4e3
	.uleb128 0x1a
	.long	0x7ea
	.long	.LLST20
	.uleb128 0x16
	.long	.LVL32
	.long	0x898
	.byte	0
	.uleb128 0x19
	.long	0x7bc
	.long	.LBB120
	.long	.LBE120-.LBB120
	.byte	0x1
	.byte	0x3b
	.long	0x509
	.uleb128 0x1a
	.long	0x7cd
	.long	.LLST21
	.uleb128 0x16
	.long	.LVL39
	.long	0x8a3
	.byte	0
	.uleb128 0x19
	.long	0x7da
	.long	.LBB122
	.long	.LBE122-.LBB122
	.byte	0x1
	.byte	0x44
	.long	0x52f
	.uleb128 0x1a
	.long	0x7ea
	.long	.LLST22
	.uleb128 0x16
	.long	.LVL41
	.long	0x898
	.byte	0
	.uleb128 0x1f
	.long	0x7da
	.long	.LBB124
	.long	.LBE124-.LBB124
	.byte	0x1
	.byte	0x45
	.uleb128 0x1a
	.long	0x7ea
	.long	.LLST23
	.uleb128 0x16
	.long	.LVL42
	.long	0x82f
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF63
	.byte	0x1
	.byte	0x21
	.long	.LFB43
	.long	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x67a
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x22
	.long	0x5a
	.long	.LLST8
	.uleb128 0x1b
	.string	"ref"
	.byte	0x1
	.byte	0x23
	.long	0x5a
	.uleb128 0x1c
	.long	.LASF61
	.byte	0x1
	.byte	0x23
	.long	0x5a
	.uleb128 0x1d
	.long	.LASF62
	.byte	0x1
	.byte	0x23
	.long	0x5a
	.long	.LLST9
	.uleb128 0x19
	.long	0x7da
	.long	.LBB84
	.long	.LBE84-.LBB84
	.byte	0x1
	.byte	0x24
	.long	0x5bf
	.uleb128 0x1a
	.long	0x7ea
	.long	.LLST10
	.uleb128 0x16
	.long	.LVL16
	.long	0x82f
	.byte	0
	.uleb128 0x1e
	.long	0x7da
	.long	.LBB86
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x2d
	.long	0x5e5
	.uleb128 0x1a
	.long	0x7ea
	.long	.LLST11
	.uleb128 0x16
	.long	.LVL24
	.long	0x898
	.byte	0
	.uleb128 0x19
	.long	0x7da
	.long	.LBB89
	.long	.LBE89-.LBB89
	.byte	0x1
	.byte	0x2a
	.long	0x60b
	.uleb128 0x1a
	.long	0x7ea
	.long	.LLST12
	.uleb128 0x16
	.long	.LVL18
	.long	0x898
	.byte	0
	.uleb128 0x19
	.long	0x7bc
	.long	.LBB91
	.long	.LBE91-.LBB91
	.byte	0x1
	.byte	0x27
	.long	0x631
	.uleb128 0x1a
	.long	0x7cd
	.long	.LLST13
	.uleb128 0x16
	.long	.LVL22
	.long	0x8a3
	.byte	0
	.uleb128 0x19
	.long	0x7da
	.long	.LBB94
	.long	.LBE94-.LBB94
	.byte	0x1
	.byte	0x30
	.long	0x657
	.uleb128 0x1a
	.long	0x7ea
	.long	.LLST14
	.uleb128 0x16
	.long	.LVL26
	.long	0x898
	.byte	0
	.uleb128 0x1f
	.long	0x7da
	.long	.LBB96
	.long	.LBE96-.LBB96
	.byte	0x1
	.byte	0x31
	.uleb128 0x1a
	.long	0x7ea
	.long	.LLST15
	.uleb128 0x16
	.long	.LVL27
	.long	0x82f
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF64
	.byte	0x1
	.byte	0xd
	.long	.LFB42
	.long	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x7a2
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xe
	.long	0x5a
	.long	.LLST0
	.uleb128 0x1b
	.string	"ref"
	.byte	0x1
	.byte	0xf
	.long	0x5a
	.uleb128 0x1c
	.long	.LASF61
	.byte	0x1
	.byte	0xf
	.long	0x5a
	.uleb128 0x1d
	.long	.LASF62
	.byte	0x1
	.byte	0xf
	.long	0x5a
	.long	.LLST1
	.uleb128 0x19
	.long	0x7da
	.long	.LBB56
	.long	.LBE56-.LBB56
	.byte	0x1
	.byte	0x10
	.long	0x6e7
	.uleb128 0x1a
	.long	0x7ea
	.long	.LLST2
	.uleb128 0x16
	.long	.LVL2
	.long	0x82f
	.byte	0
	.uleb128 0x1e
	.long	0x7da
	.long	.LBB58
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x19
	.long	0x70d
	.uleb128 0x1a
	.long	0x7ea
	.long	.LLST3
	.uleb128 0x16
	.long	.LVL10
	.long	0x898
	.byte	0
	.uleb128 0x19
	.long	0x7da
	.long	.LBB61
	.long	.LBE61-.LBB61
	.byte	0x1
	.byte	0x16
	.long	0x733
	.uleb128 0x1a
	.long	0x7ea
	.long	.LLST4
	.uleb128 0x16
	.long	.LVL4
	.long	0x898
	.byte	0
	.uleb128 0x19
	.long	0x7bc
	.long	.LBB63
	.long	.LBE63-.LBB63
	.byte	0x1
	.byte	0x13
	.long	0x759
	.uleb128 0x1a
	.long	0x7cd
	.long	.LLST5
	.uleb128 0x16
	.long	.LVL8
	.long	0x8a3
	.byte	0
	.uleb128 0x19
	.long	0x7da
	.long	.LBB66
	.long	.LBE66-.LBB66
	.byte	0x1
	.byte	0x1c
	.long	0x77f
	.uleb128 0x1a
	.long	0x7ea
	.long	.LLST6
	.uleb128 0x16
	.long	.LVL12
	.long	0x898
	.byte	0
	.uleb128 0x1f
	.long	0x7da
	.long	.LBB68
	.long	.LBE68-.LBB68
	.byte	0x1
	.byte	0x1d
	.uleb128 0x1a
	.long	0x7ea
	.long	.LLST7
	.uleb128 0x16
	.long	.LVL13
	.long	0x82f
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF65
	.byte	0x1
	.byte	0xa
	.long	0x5a
	.byte	0x1
	.long	0x7bc
	.uleb128 0x21
	.string	"a"
	.byte	0x1
	.byte	0xa
	.long	0x99
	.byte	0
	.uleb128 0x22
	.long	.LASF66
	.byte	0x3
	.value	0x169
	.long	0x5a
	.byte	0x3
	.long	0x7da
	.uleb128 0x23
	.long	.LASF67
	.byte	0x3
	.value	0x169
	.long	0x2be
	.byte	0
	.uleb128 0x24
	.long	.LASF68
	.byte	0x2
	.byte	0x66
	.long	0x5a
	.byte	0x3
	.long	0x7f7
	.uleb128 0x25
	.long	.LASF69
	.byte	0x2
	.byte	0x66
	.long	0x2c9
	.uleb128 0x26
	.byte	0
	.uleb128 0x27
	.long	0x7a2
	.long	.LFB41
	.long	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x813
	.uleb128 0x28
	.long	0x7b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.uleb128 0x1a
	.byte	0x9e
	.uleb128 0x18
	.byte	0x42
	.byte	0x65
	.byte	0x6e
	.byte	0x63
	.byte	0x68
	.byte	0x6d
	.byte	0x61
	.byte	0x72
	.byte	0x6b
	.byte	0x20
	.byte	0x70
	.byte	0x72
	.byte	0x65
	.byte	0x70
	.byte	0x61
	.byte	0x72
	.byte	0x69
	.byte	0x6e
	.byte	0x67
	.byte	0x2e
	.byte	0x2e
	.byte	0x2e
	.byte	0xa
	.byte	0
	.uleb128 0x2a
	.long	.LASF79
	.long	.LASF80
	.byte	0x9
	.byte	0
	.long	.LASF79
	.uleb128 0x29
	.uleb128 0x26
	.byte	0x9e
	.uleb128 0x24
	.byte	0x42
	.byte	0x65
	.byte	0x6e
	.byte	0x63
	.byte	0x68
	.byte	0x6d
	.byte	0x61
	.byte	0x72
	.byte	0x6b
	.byte	0x20
	.byte	0x70
	.byte	0x72
	.byte	0x65
	.byte	0x70
	.byte	0x61
	.byte	0x72
	.byte	0x65
	.byte	0x20
	.byte	0x64
	.byte	0x6f
	.byte	0x6e
	.byte	0x65
	.byte	0x2e
	.byte	0x20
	.byte	0x54
	.byte	0x65
	.byte	0x73
	.byte	0x74
	.byte	0x20
	.byte	0x62
	.byte	0x65
	.byte	0x67
	.byte	0x69
	.byte	0x6e
	.byte	0xa
	.byte	0
	.uleb128 0x2b
	.long	.LASF70
	.long	.LASF70
	.byte	0x3
	.value	0x21b
	.uleb128 0x29
	.uleb128 0x24
	.byte	0x9e
	.uleb128 0x22
	.byte	0x3c
	.byte	0x3c
	.byte	0x3c
	.byte	0x3c
	.byte	0x3c
	.byte	0x20
	.byte	0x42
	.byte	0x65
	.byte	0x67
	.byte	0x69
	.byte	0x6e
	.byte	0x20
	.byte	0x41
	.byte	0x44
	.byte	0x56
	.byte	0x41
	.byte	0x4e
	.byte	0x43
	.byte	0x45
	.byte	0x44
	.byte	0x20
	.byte	0x54
	.byte	0x65
	.byte	0x73
	.byte	0x74
	.byte	0x20
	.byte	0x3e
	.byte	0x3e
	.byte	0x3e
	.byte	0x3e
	.byte	0x3e
	.byte	0x3e
	.byte	0xa
	.byte	0
	.uleb128 0x2c
	.long	.LASF71
	.long	.LASF71
	.byte	0x2
	.byte	0x57
	.uleb128 0x2c
	.long	.LASF72
	.long	.LASF72
	.byte	0x3
	.byte	0xb0
	.uleb128 0x29
	.uleb128 0x24
	.byte	0x9e
	.uleb128 0x22
	.byte	0x3c
	.byte	0x3c
	.byte	0x3c
	.byte	0x3c
	.byte	0x3c
	.byte	0x20
	.byte	0x41
	.byte	0x44
	.byte	0x56
	.byte	0x41
	.byte	0x4e
	.byte	0x43
	.byte	0x45
	.byte	0x44
	.byte	0x20
	.byte	0x54
	.byte	0x65
	.byte	0x73
	.byte	0x74
	.byte	0x20
	.byte	0x44
	.byte	0x6f
	.byte	0x6e
	.byte	0x65
	.byte	0x20
	.byte	0x3e
	.byte	0x3e
	.byte	0x3e
	.byte	0x3e
	.byte	0x3e
	.byte	0x3e
	.byte	0xa
	.byte	0xa
	.byte	0
	.uleb128 0x29
	.uleb128 0x22
	.byte	0x9e
	.uleb128 0x20
	.byte	0x3c
	.byte	0x3c
	.byte	0x3c
	.byte	0x3c
	.byte	0x3c
	.byte	0x20
	.byte	0x42
	.byte	0x65
	.byte	0x67
	.byte	0x69
	.byte	0x6e
	.byte	0x20
	.byte	0x4d
	.byte	0x45
	.byte	0x44
	.byte	0x49
	.byte	0x55
	.byte	0x4d
	.byte	0x20
	.byte	0x54
	.byte	0x65
	.byte	0x73
	.byte	0x74
	.byte	0x20
	.byte	0x3e
	.byte	0x3e
	.byte	0x3e
	.byte	0x3e
	.byte	0x3e
	.byte	0x3e
	.byte	0xa
	.byte	0
	.uleb128 0x29
	.uleb128 0x22
	.byte	0x9e
	.uleb128 0x20
	.byte	0x3c
	.byte	0x3c
	.byte	0x3c
	.byte	0x3c
	.byte	0x3c
	.byte	0x20
	.byte	0x4d
	.byte	0x45
	.byte	0x44
	.byte	0x49
	.byte	0x55
	.byte	0x4d
	.byte	0x20
	.byte	0x54
	.byte	0x65
	.byte	0x73
	.byte	0x74
	.byte	0x20
	.byte	0x44
	.byte	0x6f
	.byte	0x6e
	.byte	0x65
	.byte	0x20
	.byte	0x3e
	.byte	0x3e
	.byte	0x3e
	.byte	0x3e
	.byte	0x3e
	.byte	0x3e
	.byte	0xa
	.byte	0xa
	.byte	0
	.uleb128 0x29
	.uleb128 0x21
	.byte	0x9e
	.uleb128 0x1f
	.byte	0x3c
	.byte	0x3c
	.byte	0x3c
	.byte	0x3c
	.byte	0x3c
	.byte	0x20
	.byte	0x42
	.byte	0x65
	.byte	0x67
	.byte	0x69
	.byte	0x6e
	.byte	0x20
	.byte	0x42
	.byte	0x41
	.byte	0x53
	.byte	0x49
	.byte	0x43
	.byte	0x20
	.byte	0x54
	.byte	0x65
	.byte	0x73
	.byte	0x74
	.byte	0x20
	.byte	0x3e
	.byte	0x3e
	.byte	0x3e
	.byte	0x3e
	.byte	0x3e
	.byte	0x3e
	.byte	0xa
	.byte	0
	.uleb128 0x29
	.uleb128 0x21
	.byte	0x9e
	.uleb128 0x1f
	.byte	0x3c
	.byte	0x3c
	.byte	0x3c
	.byte	0x3c
	.byte	0x3c
	.byte	0x20
	.byte	0x42
	.byte	0x41
	.byte	0x53
	.byte	0x49
	.byte	0x43
	.byte	0x20
	.byte	0x54
	.byte	0x65
	.byte	0x73
	.byte	0x74
	.byte	0x20
	.byte	0x44
	.byte	0x6f
	.byte	0x6e
	.byte	0x65
	.byte	0x20
	.byte	0x3e
	.byte	0x3e
	.byte	0x3e
	.byte	0x3e
	.byte	0x3e
	.byte	0x3e
	.byte	0xa
	.byte	0xa
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST24:
	.long	.LVL45-.Ltext0
	.long	.LVL46-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL44-.Ltext0
	.long	.LVL45-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2067
	.sleb128 0
	.long	0
	.long	0
.LLST26:
	.long	.LVL50-.Ltext0
	.long	.LVL51-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2110
	.sleb128 0
	.long	0
	.long	0
.LLST16:
	.long	.LVL30-.Ltext0
	.long	.LVL31-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL31-.Ltext0
	.long	.LVL43-.Ltext0
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST17:
	.long	.LVL30-.Ltext0
	.long	.LVL31-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL31-.Ltext0
	.long	.LFE44-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST18:
	.long	.LVL29-.Ltext0
	.long	.LVL30-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2162
	.sleb128 0
	.long	0
	.long	0
.LLST19:
	.long	.LVL34-.Ltext0
	.long	.LVL36-.Ltext0
	.value	0x6
	.byte	0x3
	.long	.LC8
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL31-.Ltext0
	.long	.LVL32-.Ltext0
	.value	0x6
	.byte	0x3
	.long	.LC1
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL38-.Ltext0
	.long	.LVL39-1-.Ltext0
	.value	0xa
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.long	advanced
	.byte	0x22
	.long	0
	.long	0
.LLST22:
	.long	.LVL40-.Ltext0
	.long	.LVL41-.Ltext0
	.value	0x6
	.byte	0x3
	.long	.LC3
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LVL41-.Ltext0
	.long	.LVL42-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2222
	.sleb128 0
	.long	0
	.long	0
.LLST8:
	.long	.LVL16-.Ltext0
	.long	.LVL17-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL17-.Ltext0
	.long	.LVL28-.Ltext0
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST9:
	.long	.LVL16-.Ltext0
	.long	.LVL17-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL17-.Ltext0
	.long	.LFE43-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST10:
	.long	.LVL15-.Ltext0
	.long	.LVL16-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2260
	.sleb128 0
	.long	0
	.long	0
.LLST11:
	.long	.LVL23-.Ltext0
	.long	.LVL25-.Ltext0
	.value	0x6
	.byte	0x3
	.long	.LC2
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL17-.Ltext0
	.long	.LVL18-.Ltext0
	.value	0x6
	.byte	0x3
	.long	.LC1
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL21-.Ltext0
	.long	.LVL22-1-.Ltext0
	.value	0xa
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.long	medium
	.byte	0x22
	.long	0
	.long	0
.LLST14:
	.long	.LVL25-.Ltext0
	.long	.LVL26-.Ltext0
	.value	0x6
	.byte	0x3
	.long	.LC3
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL26-.Ltext0
	.long	.LVL27-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2296
	.sleb128 0
	.long	0
	.long	0
.LLST0:
	.long	.LVL2-.Ltext0
	.long	.LVL3-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL3-.Ltext0
	.long	.LVL14-.Ltext0
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST1:
	.long	.LVL2-.Ltext0
	.long	.LVL3-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL3-.Ltext0
	.long	.LFE42-.Ltext0
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST2:
	.long	.LVL1-.Ltext0
	.long	.LVL2-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2332
	.sleb128 0
	.long	0
	.long	0
.LLST3:
	.long	.LVL9-.Ltext0
	.long	.LVL11-.Ltext0
	.value	0x6
	.byte	0x3
	.long	.LC2
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL3-.Ltext0
	.long	.LVL4-.Ltext0
	.value	0x6
	.byte	0x3
	.long	.LC1
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL7-.Ltext0
	.long	.LVL8-1-.Ltext0
	.value	0xa
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.long	basic
	.byte	0x22
	.long	0
	.long	0
.LLST6:
	.long	.LVL11-.Ltext0
	.long	.LVL12-.Ltext0
	.value	0x6
	.byte	0x3
	.long	.LC3
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL12-.Ltext0
	.long	.LVL13-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2367
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB58-.Ltext0
	.long	.LBE58-.Ltext0
	.long	.LBB65-.Ltext0
	.long	.LBE65-.Ltext0
	.long	0
	.long	0
	.long	.LBB86-.Ltext0
	.long	.LBE86-.Ltext0
	.long	.LBB93-.Ltext0
	.long	.LBE93-.Ltext0
	.long	0
	.long	0
	.long	.LBB114-.Ltext0
	.long	.LBE114-.Ltext0
	.long	.LBB119-.Ltext0
	.long	.LBE119-.Ltext0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF68:
	.string	"printf"
.LASF10:
	.string	"__off_t"
.LASF15:
	.string	"_IO_read_ptr"
.LASF70:
	.string	"malloc"
.LASF27:
	.string	"_chain"
.LASF8:
	.string	"size_t"
.LASF33:
	.string	"_shortbuf"
.LASF59:
	.string	"init"
.LASF50:
	.string	"_IO_2_1_stderr_"
.LASF21:
	.string	"_IO_buf_base"
.LASF7:
	.string	"long long unsigned int"
.LASF63:
	.string	"medium_test"
.LASF6:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF61:
	.string	"mine"
.LASF60:
	.string	"advanced_test"
.LASF28:
	.string	"_fileno"
.LASF16:
	.string	"_IO_read_end"
.LASF11:
	.string	"long int"
.LASF72:
	.string	"strtol"
.LASF14:
	.string	"_flags"
.LASF22:
	.string	"_IO_buf_end"
.LASF31:
	.string	"_cur_column"
.LASF9:
	.string	"__quad_t"
.LASF71:
	.string	"__printf_chk"
.LASF30:
	.string	"_old_offset"
.LASF35:
	.string	"_offset"
.LASF75:
	.string	"/home/landon/AssembleLangFinal/atoi"
.LASF44:
	.string	"_IO_marker"
.LASF51:
	.string	"stdin"
.LASF0:
	.string	"unsigned int"
.LASF58:
	.string	"advanced"
.LASF3:
	.string	"long unsigned int"
.LASF77:
	.string	"_IO_FILE_plus"
.LASF19:
	.string	"_IO_write_ptr"
.LASF54:
	.string	"sys_nerr"
.LASF46:
	.string	"_sbuf"
.LASF2:
	.string	"short unsigned int"
.LASF23:
	.string	"_IO_save_base"
.LASF74:
	.string	"main.c"
.LASF34:
	.string	"_lock"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF80:
	.string	"__builtin_puts"
.LASF52:
	.string	"stdout"
.LASF48:
	.string	"_IO_2_1_stdin_"
.LASF79:
	.string	"puts"
.LASF20:
	.string	"_IO_write_end"
.LASF76:
	.string	"_IO_lock_t"
.LASF43:
	.string	"_IO_FILE"
.LASF67:
	.string	"__nptr"
.LASF56:
	.string	"basic"
.LASF47:
	.string	"_pos"
.LASF55:
	.string	"sys_errlist"
.LASF26:
	.string	"_markers"
.LASF66:
	.string	"atoi"
.LASF73:
	.string	"GNU C11 7.5.0 -m32 -mtune=generic -march=i686 -g -O -fstack-protector-strong"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF32:
	.string	"_vtable_offset"
.LASF49:
	.string	"_IO_2_1_stdout_"
.LASF64:
	.string	"basic_test"
.LASF57:
	.string	"medium"
.LASF13:
	.string	"char"
.LASF45:
	.string	"_next"
.LASF12:
	.string	"__off64_t"
.LASF17:
	.string	"_IO_read_base"
.LASF62:
	.string	"passnum"
.LASF25:
	.string	"_IO_save_end"
.LASF69:
	.string	"__fmt"
.LASF36:
	.string	"__pad1"
.LASF37:
	.string	"__pad2"
.LASF38:
	.string	"__pad3"
.LASF39:
	.string	"__pad4"
.LASF40:
	.string	"__pad5"
.LASF42:
	.string	"_unused2"
.LASF53:
	.string	"stderr"
.LASF65:
	.string	"myatoi"
.LASF24:
	.string	"_IO_backup_base"
.LASF78:
	.string	"main"
.LASF18:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits