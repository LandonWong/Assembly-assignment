	.file	"freq.c"
	.text
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC0:
	.string	"The cpu frequency is %.2f MHz, time = %d us, cycle = %d\n"
	.text
	.globl	main
	.type	main, @function
main:
	leal	4(%esp), %ecx
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	subl	$64, %esp
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	pushl	$0
	leal	-44(%ebp), %eax
	pushl	%eax
	call	gettimeofday@PLT
#APP
# 12 "freq.c" 1
	rdtscp
	mov	%eax,%edi
	mov	$0xffffff,%ecx
	L1:
	xor	%ecx,%eax
	inc	%eax
	loop	L1
	rdtscp
# 0 "" 2
#NO_APP
	movl	%eax, %esi
	addl	$8, %esp
	pushl	$0
	leal	-36(%ebp), %eax
	pushl	%eax
	call	gettimeofday@PLT
	movl	-36(%ebp), %eax
	subl	-44(%ebp), %eax
	imull	$1000000, %eax, %eax
	addl	-32(%ebp), %eax
	subl	-40(%ebp), %eax
	subl	%edi, %esi
	addl	$8, %esp
	pushl	%esi
	pushl	%eax
	movl	%esi, -60(%ebp)
	fildl	-60(%ebp)
	movl	%eax, -60(%ebp)
	fildl	-60(%ebp)
	fdivrp	%st, %st(1)
	leal	-8(%esp), %esp
	fstpl	(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	addl	$32, %esp
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	jne	.L4
	leal	-16(%ebp), %esp
	popl	%ecx
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
.L4:
	call	__stack_chk_fail_local
	.size	main, .-main
	.comm	cycle_2,4,4
	.comm	cycle_1,4,4
	.comm	time,4,4
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
