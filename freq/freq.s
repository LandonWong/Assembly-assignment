	.file	"freq.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"The cpu frequency is %.2f MHz, time = %d us, cycle = %d\n"
	.text
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %rdi
	movl	$0, %esi
	call	gettimeofday@PLT
#APP
# 12 "freq.c" 1
	rdtscp
	shl	$32,%rdx
	or	%rax,%rdx
	mov	%rdx,%rbp
	mov	$0x7ffffffff,%rcx
	L1:
	xor	%ecx,%eax
	inc	%eax
	dec	%ecx
	jnz	L1
	rdtscp
	shl	$32,%rdx
	or	%rdx,%rax
	
# 0 "" 2
#NO_APP
	movq	%rax, %rbx
	leaq	16(%rsp), %rdi
	movl	$0, %esi
	call	gettimeofday@PLT
	movq	16(%rsp), %rdx
	subq	(%rsp), %rdx
	imulq	$1000000, %rdx, %rdx
	addq	24(%rsp), %rdx
	subq	8(%rsp), %rdx
	subq	%rbp, %rbx
	movq	%rbx, %rcx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rbx, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdx, %xmm1
	divsd	%xmm1, %xmm0
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
	movq	40(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L4
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
.L4:
	call	__stack_chk_fail@PLT
	.size	main, .-main
	.comm	cycle_2,8,8
	.comm	cycle_1,8,8
	.comm	time,8,8
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
