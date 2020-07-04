	.file	"freq.c"
	.text
	.section	.rodata
	.align 4
.LC0:
	.string	"The cpu frequency is %.2f MHz\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
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
	subl	$80, %esp
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	subl	$8, %esp
	pushl	$0
	leal	-28(%ebp), %eax
	pushl	%eax
	call	gettimeofday@PLT
	addl	$16, %esp
#APP
# 11 "freq.c" 1
	rdtsc
	mov	%eax,cycle_1_l
	mov	%edx,cycle_1_h
	mov	$0x7fffffff,%ecx
	L1:
	inc	%eax
	loop L1
	rdtsc
	mov	%eax,cycle_2_l
	mov	%edx,cycle_2_h
	
# 0 "" 2
#NO_APP
	subl	$8, %esp
	pushl	$0
	leal	-20(%ebp), %eax
	pushl	%eax
	call	gettimeofday@PLT
	addl	$16, %esp
	movl	-60(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-52(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	-20(%ebp), %edx
	movl	-28(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$1000000, %eax, %eax
	movl	-16(%ebp), %ecx
	movl	-24(%ebp), %edx
	subl	%edx, %ecx
	movl	%ecx, %edx
	addl	%edx, %eax
	movl	%eax, -44(%ebp)
	movl	-48(%ebp), %eax
	subl	-56(%ebp), %eax
	cltd
	idivl	-44(%ebp)
	movl	%eax, -76(%ebp)
	fildl	-76(%ebp)
	fstpl	-40(%ebp)
	subl	$4, %esp
	pushl	-36(%ebp)
	pushl	-40(%ebp)
	leal	.LC0@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printf@PLT
	addl	$16, %esp
	nop
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L3
	call	__stack_chk_fail_local
.L3:
	leal	-8(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB1:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE1:
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
