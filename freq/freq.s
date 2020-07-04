	.file	"freq.c"
	.text
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC0:
	.string	"The cpu frequency is %.2f MHz\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	subl	$56, %esp
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	pushl	$0
	leal	-28(%ebp), %eax
	pushl	%eax
	call	gettimeofday@PLT
#APP
# 10 "freq.c" 1
	rdtsc
	mov	%eax,cycle_1
	mov	$0xffff,%ecx
	L1:
	xor	%ecx,%eax
	inc	%eax
	loop L1
	rdtsc
	mov	%eax,cycle_2
	
# 0 "" 2
#NO_APP
	addl	$8, %esp
	pushl	$0
	leal	-20(%ebp), %eax
	pushl	%eax
	call	gettimeofday@PLT
	movl	-20(%ebp), %ecx
	subl	-28(%ebp), %ecx
	imull	$1000000, %ecx, %ecx
	addl	-16(%ebp), %ecx
	subl	-24(%ebp), %ecx
	movl	time@GOT(%ebx), %eax
	movl	%ecx, (%eax)
	movl	cycle_2@GOT(%ebx), %eax
	movl	cycle_1@GOT(%ebx), %edx
	movl	(%eax), %eax
	subl	(%edx), %eax
	cltd
	idivl	%ecx
	movl	%eax, -44(%ebp)
	fildl	-44(%ebp)
	leal	-8(%esp), %esp
	fstpl	(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	addl	$32, %esp
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	jne	.L4
	leal	-8(%ebp), %esp
	popl	%ecx
	.cfi_remember_state
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
.L4:
	.cfi_restore_state
	call	__stack_chk_fail_local
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.comm	cycle_2,4,4
	.comm	cycle_1,4,4
	.comm	time,4,4
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB24:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE24:
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
