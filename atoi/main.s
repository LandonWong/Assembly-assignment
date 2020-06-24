	.file	"main.c"
	.text
	.comm	basic,16,4
	.comm	medium,16,4
	.comm	advanced,16,4
	.section	.rodata
.LC0:
	.string	"<<<<< Begin BASIC Test >>>>>>"
.LC1:
	.string	"[%d:%s] PASS : %d\n"
	.align 4
.LC2:
	.string	"[%d:%s] FAIL : MINE: %d, REF: %d\n"
.LC3:
	.string	"pass %d / %d\n"
.LC4:
	.string	"<<<<< BASIC Test Done >>>>>>\n"
	.text
	.globl	basic_test
	.type	basic_test, @function
basic_test:
.LFB5:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	leal	.LC0@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
	jmp	.L2
.L5:
	movl	basic@GOT(%ebx), %eax
	movl	-24(%ebp), %edx
	movl	(%eax,%edx,4), %eax
	subl	$12, %esp
	pushl	%eax
	call	atoi@PLT
	addl	$16, %esp
	movl	%eax, -16(%ebp)
	movl	basic@GOT(%ebx), %eax
	movl	-24(%ebp), %edx
	movl	(%eax,%edx,4), %eax
	subl	$12, %esp
	pushl	%eax
	call	myatoi@PLT
	addl	$16, %esp
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jne	.L3
	movl	basic@GOT(%ebx), %eax
	movl	-24(%ebp), %edx
	movl	(%eax,%edx,4), %eax
	pushl	-12(%ebp)
	pushl	%eax
	pushl	-24(%ebp)
	leal	.LC1@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printf@PLT
	addl	$16, %esp
	addl	$1, -20(%ebp)
	jmp	.L4
.L3:
	movl	basic@GOT(%ebx), %eax
	movl	-24(%ebp), %edx
	movl	(%eax,%edx,4), %eax
	subl	$12, %esp
	pushl	-16(%ebp)
	pushl	-12(%ebp)
	pushl	%eax
	pushl	-24(%ebp)
	leal	.LC2@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printf@PLT
	addl	$32, %esp
.L4:
	addl	$1, -24(%ebp)
.L2:
	cmpl	$3, -24(%ebp)
	jle	.L5
	subl	$4, %esp
	pushl	$4
	pushl	-20(%ebp)
	leal	.LC3@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printf@PLT
	addl	$16, %esp
	subl	$12, %esp
	leal	.LC4@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	basic_test, .-basic_test
	.section	.rodata
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
.LFB6:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
	jmp	.L7
.L10:
	movl	medium@GOT(%ebx), %eax
	movl	-24(%ebp), %edx
	movl	(%eax,%edx,4), %eax
	subl	$12, %esp
	pushl	%eax
	call	atoi@PLT
	addl	$16, %esp
	movl	%eax, -16(%ebp)
	movl	medium@GOT(%ebx), %eax
	movl	-24(%ebp), %edx
	movl	(%eax,%edx,4), %eax
	subl	$12, %esp
	pushl	%eax
	call	myatoi@PLT
	addl	$16, %esp
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jne	.L8
	movl	medium@GOT(%ebx), %eax
	movl	-24(%ebp), %edx
	movl	(%eax,%edx,4), %eax
	pushl	-12(%ebp)
	pushl	%eax
	pushl	-24(%ebp)
	leal	.LC1@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printf@PLT
	addl	$16, %esp
	addl	$1, -20(%ebp)
	jmp	.L9
.L8:
	movl	medium@GOT(%ebx), %eax
	movl	-24(%ebp), %edx
	movl	(%eax,%edx,4), %eax
	subl	$12, %esp
	pushl	-16(%ebp)
	pushl	-12(%ebp)
	pushl	%eax
	pushl	-24(%ebp)
	leal	.LC2@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printf@PLT
	addl	$32, %esp
.L9:
	addl	$1, -24(%ebp)
.L7:
	cmpl	$3, -24(%ebp)
	jle	.L10
	subl	$4, %esp
	pushl	$4
	pushl	-20(%ebp)
	leal	.LC3@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printf@PLT
	addl	$16, %esp
	subl	$12, %esp
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	medium_test, .-medium_test
	.section	.rodata
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
.LFB7:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	leal	.LC7@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	movl	$0, -20(%ebp)
	movl	$0, -24(%ebp)
	jmp	.L12
.L19:
	movl	advanced@GOT(%ebx), %eax
	movl	-24(%ebp), %edx
	movl	(%eax,%edx,4), %eax
	subl	$12, %esp
	pushl	%eax
	call	atoi@PLT
	addl	$16, %esp
	movl	%eax, -16(%ebp)
	movl	advanced@GOT(%ebx), %eax
	movl	-24(%ebp), %edx
	movl	(%eax,%edx,4), %eax
	subl	$12, %esp
	pushl	%eax
	call	myatoi@PLT
	addl	$16, %esp
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jne	.L13
	movl	advanced@GOT(%ebx), %eax
	movl	-24(%ebp), %edx
	movl	(%eax,%edx,4), %eax
	pushl	-12(%ebp)
	pushl	%eax
	pushl	-24(%ebp)
	leal	.LC1@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printf@PLT
	addl	$16, %esp
	addl	$1, -20(%ebp)
	jmp	.L14
.L13:
	cmpl	$3, -24(%ebp)
	je	.L15
	cmpl	$2, -24(%ebp)
	je	.L16
	movl	-16(%ebp), %eax
	cltd
	jmp	.L18
.L16:
	movl	$-2147483648, %eax
	movl	$-1, %edx
	jmp	.L18
.L15:
	movl	$2147483647, %eax
	movl	$0, %edx
.L18:
	movl	advanced@GOT(%ebx), %ecx
	movl	-24(%ebp), %esi
	movl	(%ecx,%esi,4), %ecx
	subl	$8, %esp
	pushl	%edx
	pushl	%eax
	pushl	-12(%ebp)
	pushl	%ecx
	pushl	-24(%ebp)
	leal	.LC8@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printf@PLT
	addl	$32, %esp
.L14:
	addl	$1, -24(%ebp)
.L12:
	cmpl	$3, -24(%ebp)
	jle	.L19
	subl	$4, %esp
	pushl	$4
	pushl	-20(%ebp)
	leal	.LC3@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printf@PLT
	addl	$16, %esp
	subl	$12, %esp
	leal	.LC9@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	nop
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	advanced_test, .-advanced_test
	.section	.rodata
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
	.align 4
.LC23:
	.string	"Benchmark prepare done. Test begin"
	.text
	.globl	init
	.type	init, @function
init:
.LFB8:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	leal	.LC10@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	movl	$0, -12(%ebp)
	jmp	.L21
.L22:
	subl	$12, %esp
	pushl	$100
	call	malloc@PLT
	addl	$16, %esp
	movl	%eax, %ecx
	movl	basic@GOT(%ebx), %eax
	movl	-12(%ebp), %edx
	movl	%ecx, (%eax,%edx,4)
	subl	$12, %esp
	pushl	$100
	call	malloc@PLT
	addl	$16, %esp
	movl	%eax, %ecx
	movl	medium@GOT(%ebx), %eax
	movl	-12(%ebp), %edx
	movl	%ecx, (%eax,%edx,4)
	subl	$12, %esp
	pushl	$100
	call	malloc@PLT
	addl	$16, %esp
	movl	%eax, %ecx
	movl	advanced@GOT(%ebx), %eax
	movl	-12(%ebp), %edx
	movl	%ecx, (%eax,%edx,4)
	addl	$1, -12(%ebp)
.L21:
	cmpl	$3, -12(%ebp)
	jle	.L22
	movl	basic@GOT(%ebx), %eax
	leal	.LC11@GOTOFF(%ebx), %edx
	movl	%edx, (%eax)
	movl	basic@GOT(%ebx), %eax
	leal	.LC12@GOTOFF(%ebx), %edx
	movl	%edx, 4(%eax)
	movl	basic@GOT(%ebx), %eax
	leal	.LC13@GOTOFF(%ebx), %edx
	movl	%edx, 8(%eax)
	movl	basic@GOT(%ebx), %eax
	leal	.LC14@GOTOFF(%ebx), %edx
	movl	%edx, 12(%eax)
	movl	medium@GOT(%ebx), %eax
	leal	.LC15@GOTOFF(%ebx), %edx
	movl	%edx, (%eax)
	movl	medium@GOT(%ebx), %eax
	leal	.LC16@GOTOFF(%ebx), %edx
	movl	%edx, 4(%eax)
	movl	medium@GOT(%ebx), %eax
	leal	.LC17@GOTOFF(%ebx), %edx
	movl	%edx, 8(%eax)
	movl	medium@GOT(%ebx), %eax
	leal	.LC18@GOTOFF(%ebx), %edx
	movl	%edx, 12(%eax)
	movl	advanced@GOT(%ebx), %eax
	leal	.LC19@GOTOFF(%ebx), %edx
	movl	%edx, (%eax)
	movl	advanced@GOT(%ebx), %eax
	leal	.LC20@GOTOFF(%ebx), %edx
	movl	%edx, 4(%eax)
	movl	advanced@GOT(%ebx), %eax
	leal	.LC21@GOTOFF(%ebx), %edx
	movl	%edx, 8(%eax)
	movl	advanced@GOT(%ebx), %eax
	leal	.LC22@GOTOFF(%ebx), %edx
	movl	%edx, 12(%eax)
	subl	$12, %esp
	leal	.LC23@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE8:
	.size	init, .-init
	.globl	main
	.type	main, @function
main:
.LFB9:
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
	subl	$20, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	$0, -12(%ebp)
	call	init
	call	basic_test
	call	medium_test
	call	advanced_test
	movl	$0, %eax
	addl	$20, %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB10:
	.cfi_startproc
	movl	(%esp), %eax
	ret
	.cfi_endproc
.LFE10:
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB11:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE11:
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
