	.file	"freq.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"The cpu frequency is %.3f MHz, time = %d us, cycle = %lu,%d\n"
	.text
	.globl	main
	.type	main, @function
main:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %r15
	leaq	16(%rsp), %r14
	jmp	.L6
.L2:
	movq	%rcx, %rax
	shrq	%rax
	movq	%rcx, %rsi
	andl	$1, %esi
	orq	%rsi, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L3
.L4:
	movq	%rdx, %rax
	shrq	%rax
	movq	%rdx, %rsi
	andl	$1, %esi
	orq	%rsi, %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
.L5:
	divsd	%xmm1, %xmm0
	movl	$8, %r8d
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
.L6:
	movl	$0, %esi
	movq	%r15, %rdi
	call	gettimeofday@PLT
#APP
# 11 "freq.c" 1
	rdtscp
	mov	%rdx,%rbp
	mov	%rax,%r12
	mov	$0x7fffffff,%rcx
L1:
	xor	%ecx,%eax
	inc	%eax
	dec	%rcx
	jnz	L1
	rdtscp
	
# 0 "" 2
#NO_APP
	movq	%rdx, %rbx
	movq	%rax, %r13
	movl	$0, %esi
	movq	%r14, %rdi
	call	gettimeofday@PLT
	movq	16(%rsp), %rdx
	subq	(%rsp), %rdx
	imulq	$1000000, %rdx, %rdx
	addq	24(%rsp), %rdx
	subq	8(%rsp), %rdx
	salq	$32, %rbx
	movq	%rbx, %rcx
	andl	$268435455, %r13d
	orq	%r13, %rcx
	salq	$32, %rbp
	andl	$268435455, %r12d
	orq	%rbp, %r12
	subq	%r12, %rcx
	js	.L2
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rcx, %xmm0
.L3:
	testq	%rdx, %rdx
	js	.L4
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdx, %xmm1
	jmp	.L5
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
