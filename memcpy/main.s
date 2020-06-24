	.file	"main.c"
	.text
	.globl	InitSrcArea
	.type	InitSrcArea, @function
InitSrcArea:
	pushq	%rbx
	movl	%edi, %ebx
	movl	$1000, %edi
	call	malloc@PLT
	movq	%rax, src(%rip)
	testl	%ebx, %ebx
	je	.L1
.L3:
	movb	%bl, (%rax)
	addq	$1, %rax
	subl	$1, %ebx
	jne	.L3
.L1:
	popq	%rbx
	ret
	.size	InitSrcArea, .-InitSrcArea
	.globl	check
	.type	check, @function
check:
	testq	%rdx, %rdx
	je	.L10
	movzbl	(%rsi), %eax
	cmpb	%al, (%rdi)
	jne	.L11
	addq	%rdi, %rdx
.L8:
	addq	$1, %rdi
	addq	$1, %rsi
	cmpq	%rdi, %rdx
	je	.L13
	movzbl	(%rsi), %eax
	cmpb	%al, (%rdi)
	je	.L8
	movl	$0, %eax
	ret
.L13:
	movl	$1, %eax
	ret
.L10:
	movl	$1, %eax
	ret
.L11:
	movl	$0, %eax
	ret
	.size	check, .-check
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"pass"
.LC1:
	.string	"fail"
.LC2:
	.string	"1 Test src align %d, %s.\n"
.LC3:
	.string	"2 Test dest align %d, %s.\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC4:
	.string	"3 Test src & dest align %d, %s.\n"
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
	subq	$8, %rsp
	movl	$1000, %edi
	call	malloc@PLT
	movq	%rax, dest(%rip)
	movl	$1000, %edi
	call	InitSrcArea
	movl	$0, %ebx
	leaq	.LC0(%rip), %r15
	leaq	.LC1(%rip), %r14
	leaq	.LC2(%rip), %r13
.L16:
	leaq	16(%rbx), %rbp
	movq	%rbp, %rsi
	addq	src(%rip), %rsi
	movl	$256, %edx
	movq	dest(%rip), %rdi
	call	mymemcpy@PLT
	movq	%rbp, %rsi
	addq	src(%rip), %rsi
	movl	$256, %edx
	movq	dest(%rip), %rdi
	call	check
	cmpl	$1, %eax
	movq	%r14, %rcx
	cmove	%r15, %rcx
	movl	%ebx, %edx
	movq	%r13, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	addq	$1, %rbx
	cmpq	$4, %rbx
	jne	.L16
	movl	$0, %ebx
	leaq	.LC0(%rip), %r15
	leaq	.LC1(%rip), %r14
	leaq	.LC3(%rip), %r13
.L18:
	leaq	16(%rbx), %rbp
	movq	%rbp, %rdi
	addq	dest(%rip), %rdi
	movl	$256, %edx
	movq	src(%rip), %rsi
	call	mymemcpy@PLT
	movq	%rbp, %rdi
	addq	dest(%rip), %rdi
	movl	$256, %edx
	movq	src(%rip), %rsi
	call	check
	cmpl	$1, %eax
	movq	%r14, %rcx
	cmove	%r15, %rcx
	movl	%ebx, %edx
	movq	%r13, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	addq	$1, %rbx
	cmpq	$4, %rbx
	jne	.L18
	movl	$0, %ebx
	leaq	.LC0(%rip), %r15
	leaq	.LC1(%rip), %r14
.L20:
	leaq	32(%rbx), %r12
	movl	$16, %ebp
	subq	%rbx, %rbp
	movq	%r12, %rsi
	addq	src(%rip), %rsi
	movq	%rbp, %rdi
	addq	dest(%rip), %rdi
	movl	$256, %edx
	call	mymemcpy@PLT
	movq	%r12, %rsi
	addq	src(%rip), %rsi
	movq	%rbp, %rdi
	addq	dest(%rip), %rdi
	movl	$256, %edx
	call	check
	cmpl	$1, %eax
	movq	%r14, %rcx
	cmove	%r15, %rcx
	movl	%ebx, %edx
	leaq	.LC4(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	addq	$1, %rbx
	cmpq	$4, %rbx
	jne	.L20
	movl	$0, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.size	main, .-main
	.comm	dest,8,8
	.comm	src,8,8
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
