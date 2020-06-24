	.file	"main.c"
	.text
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
	.p2align 4,,15
	.globl	basic_test
	.type	basic_test, @function
basic_test:
.LFB41:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	xorl	%ebp, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	leal	.LC0@GOTOFF(%ebx), %eax
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	puts@PLT
	leal	.LC2@GOTOFF(%ebx), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	basic@GOT(%ebx), %esi
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
.L4:
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	pushl	$10
	.cfi_def_cfa_offset 56
	pushl	$0
	.cfi_def_cfa_offset 60
	pushl	(%esi,%ebp,4)
	.cfi_def_cfa_offset 64
	call	strtol@PLT
	movl	%eax, %edi
	popl	%eax
	.cfi_def_cfa_offset 60
	pushl	(%esi,%ebp,4)
	.cfi_def_cfa_offset 64
	call	myatoi@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	cmpl	%edi, %eax
	je	.L8
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	%edi
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	pushl	(%esi,%ebp,4)
	.cfi_def_cfa_offset 68
	pushl	%ebp
	.cfi_def_cfa_offset 72
	pushl	28(%esp)
	.cfi_def_cfa_offset 76
	pushl	$1
	.cfi_def_cfa_offset 80
	call	__printf_chk@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 48
.L3:
	addl	$1, %ebp
	cmpl	$4, %ebp
	jne	.L4
	leal	.LC3@GOTOFF(%ebx), %eax
	pushl	$4
	.cfi_def_cfa_offset 52
	pushl	12(%esp)
	.cfi_def_cfa_offset 56
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	$1
	.cfi_def_cfa_offset 64
	call	__printf_chk@PLT
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	addl	$44, %esp
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
	.p2align 4,,10
	.p2align 3
.L8:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	pushl	(%esi,%ebp,4)
	.cfi_def_cfa_offset 68
	pushl	%ebp
	.cfi_def_cfa_offset 72
	pushl	36(%esp)
	.cfi_def_cfa_offset 76
	pushl	$1
	.cfi_def_cfa_offset 80
	call	__printf_chk@PLT
	addl	$1, 40(%esp)
	addl	$32, %esp
	.cfi_def_cfa_offset 48
	jmp	.L3
	.cfi_endproc
.LFE41:
	.size	basic_test, .-basic_test
	.section	.rodata.str1.4
	.align 4
.LC5:
	.string	"<<<<< Begin MEDIUM Test >>>>>>"
	.align 4
.LC6:
	.string	"<<<<< MEDIUM Test Done >>>>>>\n"
	.text
	.p2align 4,,15
	.globl	medium_test
	.type	medium_test, @function
medium_test:
.LFB42:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	xorl	%ebp, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	puts@PLT
	leal	.LC2@GOTOFF(%ebx), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	medium@GOT(%ebx), %esi
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	leal	.LC1@GOTOFF(%ebx), %eax
	movl	%eax, 12(%esp)
.L12:
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	pushl	$10
	.cfi_def_cfa_offset 56
	pushl	$0
	.cfi_def_cfa_offset 60
	pushl	(%esi,%ebp,4)
	.cfi_def_cfa_offset 64
	call	strtol@PLT
	movl	%eax, %edi
	popl	%eax
	.cfi_def_cfa_offset 60
	pushl	(%esi,%ebp,4)
	.cfi_def_cfa_offset 64
	call	myatoi@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	cmpl	%edi, %eax
	je	.L15
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	%edi
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	pushl	(%esi,%ebp,4)
	.cfi_def_cfa_offset 68
	pushl	%ebp
	.cfi_def_cfa_offset 72
	pushl	28(%esp)
	.cfi_def_cfa_offset 76
	pushl	$1
	.cfi_def_cfa_offset 80
	call	__printf_chk@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 48
.L11:
	addl	$1, %ebp
	cmpl	$4, %ebp
	jne	.L12
	leal	.LC3@GOTOFF(%ebx), %eax
	pushl	$4
	.cfi_def_cfa_offset 52
	pushl	12(%esp)
	.cfi_def_cfa_offset 56
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	$1
	.cfi_def_cfa_offset 64
	call	__printf_chk@PLT
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	addl	$44, %esp
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
	.p2align 4,,10
	.p2align 3
.L15:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	pushl	(%esi,%ebp,4)
	.cfi_def_cfa_offset 68
	pushl	%ebp
	.cfi_def_cfa_offset 72
	pushl	36(%esp)
	.cfi_def_cfa_offset 76
	pushl	$1
	.cfi_def_cfa_offset 80
	call	__printf_chk@PLT
	addl	$1, 40(%esp)
	addl	$32, %esp
	.cfi_def_cfa_offset 48
	jmp	.L11
	.cfi_endproc
.LFE42:
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
	.p2align 4,,15
	.globl	advanced_test
	.type	advanced_test, @function
advanced_test:
.LFB43:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	xorl	%edi, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	leal	.LC7@GOTOFF(%ebx), %eax
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	puts@PLT
	leal	.LC8@GOTOFF(%ebx), %eax
	movl	advanced@GOT(%ebx), %esi
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	$0, 12(%esp)
	movl	%eax, 4(%esp)
.L20:
	leal	0(,%edi,4), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	movl	%eax, 12(%esp)
	pushl	$10
	.cfi_def_cfa_offset 56
	pushl	$0
	.cfi_def_cfa_offset 60
	pushl	(%esi,%edi,4)
	.cfi_def_cfa_offset 64
	call	strtol@PLT
	movl	%eax, %ebp
	popl	%eax
	.cfi_def_cfa_offset 60
	pushl	(%esi,%edi,4)
	.cfi_def_cfa_offset 64
	call	myatoi@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	cmpl	%ebp, %eax
	je	.L25
	cmpl	$3, %edi
	je	.L21
	cmpl	$2, %edi
	je	.L22
	movl	%ebp, %ecx
	movl	%ebp, %edx
	sarl	$31, %ecx
.L19:
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	pushl	%ecx
	.cfi_def_cfa_offset 56
	pushl	%edx
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	leal	0(,%edi,4), %eax
	pushl	(%eax,%esi)
	.cfi_def_cfa_offset 68
	pushl	%edi
	.cfi_def_cfa_offset 72
	pushl	28(%esp)
	.cfi_def_cfa_offset 76
	pushl	$1
	.cfi_def_cfa_offset 80
	call	__printf_chk@PLT
	addl	$32, %esp
	.cfi_def_cfa_offset 48
.L18:
	addl	$1, %edi
	cmpl	$4, %edi
	jne	.L20
	leal	.LC3@GOTOFF(%ebx), %eax
	pushl	$4
	.cfi_def_cfa_offset 52
	pushl	16(%esp)
	.cfi_def_cfa_offset 56
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	$1
	.cfi_def_cfa_offset 64
	call	__printf_chk@PLT
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	addl	$44, %esp
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
	.p2align 4,,10
	.p2align 3
.L25:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	leal	.LC1@GOTOFF(%ebx), %eax
	pushl	(%esi,%edi,4)
	.cfi_def_cfa_offset 68
	pushl	%edi
	.cfi_def_cfa_offset 72
	pushl	%eax
	.cfi_def_cfa_offset 76
	pushl	$1
	.cfi_def_cfa_offset 80
	call	__printf_chk@PLT
	addl	$1, 44(%esp)
	addl	$32, %esp
	.cfi_def_cfa_offset 48
	jmp	.L18
.L21:
	movl	$2147483647, %edx
	xorl	%ecx, %ecx
	jmp	.L19
.L22:
	movl	$-2147483648, %edx
	movl	$-1, %ecx
	jmp	.L19
	.cfi_endproc
.LFE43:
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
	.p2align 4,,15
	.globl	init
	.type	init, @function
init:
.LFB44:
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
	xorl	%esi, %esi
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	leal	.LC10@GOTOFF(%ebx), %eax
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	puts@PLT
	movl	basic@GOT(%ebx), %ebp
	movl	medium@GOT(%ebx), %edi
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	advanced@GOT(%ebx), %edx
.L27:
	movl	%edx, 12(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	addl	$4, %esi
	pushl	$100
	.cfi_def_cfa_offset 64
	call	malloc@PLT
	movl	%eax, -4(%esi,%ebp)
	movl	$100, (%esp)
	call	malloc@PLT
	movl	$100, (%esp)
	movl	%eax, -4(%esi,%edi)
	call	malloc@PLT
	movl	28(%esp), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, -4(%esi,%edx)
	cmpl	$16, %esi
	jne	.L27
	leal	.LC11@GOTOFF(%ebx), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	movl	%eax, 0(%ebp)
	leal	.LC12@GOTOFF(%ebx), %eax
	movl	%eax, 4(%ebp)
	leal	.LC13@GOTOFF(%ebx), %eax
	movl	%eax, 8(%ebp)
	leal	.LC14@GOTOFF(%ebx), %eax
	movl	%eax, 12(%ebp)
	leal	.LC15@GOTOFF(%ebx), %eax
	movl	%eax, (%edi)
	leal	.LC16@GOTOFF(%ebx), %eax
	movl	%eax, 4(%edi)
	leal	.LC17@GOTOFF(%ebx), %eax
	movl	%eax, 8(%edi)
	leal	.LC18@GOTOFF(%ebx), %eax
	movl	%eax, 12(%edi)
	leal	.LC19@GOTOFF(%ebx), %eax
	movl	%eax, (%edx)
	leal	.LC20@GOTOFF(%ebx), %eax
	movl	%eax, 4(%edx)
	leal	.LC21@GOTOFF(%ebx), %eax
	movl	%eax, 8(%edx)
	leal	.LC22@GOTOFF(%ebx), %eax
	movl	%eax, 12(%edx)
	leal	.LC23@GOTOFF(%ebx), %eax
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	puts@PLT
	addl	$44, %esp
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
.LFE44:
	.size	init, .-init
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB45:
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
	call	init
	call	basic_test
	call	medium_test
	call	advanced_test
	addl	$4, %esp
	xorl	%eax, %eax
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE45:
	.size	main, .-main
	.comm	advanced,16,4
	.comm	medium,16,4
	.comm	basic,16,4
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB46:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE46:
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
