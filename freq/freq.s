	.file	"freq.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"The cpu frequency is %.3f MHz, time = %d us, cycle = %lu\n"
	.text
	.globl	main
	.type	main, @function
main:
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbp
	pushq	%rbx
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %r14
	leaq	16(%rsp), %r13
	leaq	.LC0(%rip), %r12
.L2:
	movl	$0, %esi
	movq	%r14, %rdi
	call	gettimeofday@PLT
#APP
# 11 "freq.c" 1
	rdtscp
	shl	$32,%rdx
	or	%rax,%rdx
	mov	%rdx,%rbp
	mov	$0x7fffffff,%rcx
L1:
	xor	%ecx,%eax
	inc	%eax
	dec	%rcx
	jnz	L1
	rdtscp
	shl	$32,%rdx
	or	%rdx,%rax
	
# 0 "" 2
#NO_APP
	movq	%rax, %rbx
	movl	$0, %esi
	movq	%r13, %rdi
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
	movq	%r12, %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
	jmp	.L2
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
