	.file	"freq.c"
	.text
	.globl	__divdi3
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
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x74,0x6
	.cfi_escape 0x10,0x6,0x2,0x75,0x7c
	.cfi_escape 0x10,0x3,0x2,0x75,0x78
	subl	$108, %esp
	call	__x86.get_pc_thunk.si
	addl	$_GLOBAL_OFFSET_TABLE_, %esi
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	subl	$8, %esp
	pushl	$0
	leal	-44(%ebp), %eax
	pushl	%eax
	movl	%esi, %ebx
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
	leal	-36(%ebp), %eax
	pushl	%eax
	movl	%esi, %ebx
	call	gettimeofday@PLT
	addl	$16, %esp
	movl	$32, %edx
	movl	-92(%ebp), %eax
	movl	%edx, %ecx
	sall	%cl, %eax
	orl	-88(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	$0, -68(%ebp)
	movl	$32, %edx
	movl	-84(%ebp), %eax
	movl	%edx, %ecx
	sall	%cl, %eax
	orl	-80(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	$0, -60(%ebp)
	movl	-36(%ebp), %edx
	movl	-44(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$1000000, %eax, %eax
	movl	-32(%ebp), %ecx
	movl	-40(%ebp), %edx
	subl	%edx, %ecx
	movl	%ecx, %edx
	addl	%edx, %eax
	movl	%eax, -76(%ebp)
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	subl	-72(%ebp), %eax
	sbbl	-68(%ebp), %edx
	movl	-76(%ebp), %ecx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	movl	%esi, %ebx
	call	__divdi3@PLT
	addl	$16, %esp
	movl	%eax, -120(%ebp)
	movl	%edx, -116(%ebp)
	fildq	-120(%ebp)
	fstpl	-56(%ebp)
	subl	$4, %esp
	pushl	-52(%ebp)
	pushl	-56(%ebp)
	leal	.LC0@GOTOFF(%esi), %eax
	pushl	%eax
	movl	%esi, %ebx
	call	printf@PLT
	addl	$16, %esp
	nop
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L3
	call	__stack_chk_fail_local
.L3:
	leal	-12(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.si,"axG",@progbits,__x86.get_pc_thunk.si,comdat
	.globl	__x86.get_pc_thunk.si
	.hidden	__x86.get_pc_thunk.si
	.type	__x86.get_pc_thunk.si, @function
__x86.get_pc_thunk.si:
.LFB1:
	.cfi_startproc
	movl	(%esp), %esi
	ret
	.cfi_endproc
.LFE1:
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
