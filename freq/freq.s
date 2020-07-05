	.file	"freq.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Test begin. Please use <ctrl> + <C> to halt.\n"
	.align 8
.LC1:
	.string	"The cpu frequency is %.2f MHz, time = %ld us, cycle = %llu\n"
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
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movq	%rsp, %r15
	leaq	16(%rsp), %r14
.L2:
	movl	$0, %esi
	movq	%r15, %rdi
	call	gettimeofday@PLT
#APP
# 12 "freq.c" 1
	rdtscp
	mov	%rdx,%rbp
	mov	%rax,%r12
	mov	$0xffffff,%rcx
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
	orq	%r13, %rcx
	salq	$32, %rbp
	orq	%rbp, %r12
	subq	%r12, %rcx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rcx, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rdx, %xmm1
	divsd	%xmm1, %xmm0
	leaq	.LC1(%rip), %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
	jmp	.L2
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
