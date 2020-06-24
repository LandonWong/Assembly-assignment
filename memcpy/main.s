	.file	"main.c"
	.text
	.globl	InitSrcArea
	.type	InitSrcArea, @function
InitSrcArea:
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	28(%esp), %esi
	pushl	$1000
	call	malloc@PLT
	movl	src@GOT(%ebx), %edx
	movl	%eax, (%edx)
	addl	$16, %esp
	testl	%esi, %esi
	je	.L1
.L3:
	movl	%esi, %ecx
	movb	%cl, (%eax)
	addl	$1, %eax
	subl	$1, %esi
	jne	.L3
.L1:
	addl	$4, %esp
	popl	%ebx
	popl	%esi
	ret
	.size	InitSrcArea, .-InitSrcArea
	.globl	check
	.type	check, @function
check:
	pushl	%ebx
	movl	8(%esp), %eax
	movl	12(%esp), %edx
	movl	16(%esp), %ecx
	testl	%ecx, %ecx
	je	.L10
	movzbl	(%edx), %ebx
	cmpb	%bl, (%eax)
	jne	.L11
	addl	%eax, %ecx
.L8:
	addl	$1, %eax
	addl	$1, %edx
	cmpl	%eax, %ecx
	je	.L14
	movzbl	(%edx), %ebx
	cmpb	%bl, (%eax)
	je	.L8
	movl	$0, %eax
	jmp	.L6
.L14:
	movl	$1, %eax
.L6:
	popl	%ebx
	ret
.L10:
	movl	$1, %eax
	jmp	.L6
.L11:
	movl	$0, %eax
	jmp	.L6
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
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC4:
	.string	"3 Test src & dest align %d, %s.\n"
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
	subl	$36, %esp
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	pushl	$1000
	call	malloc@PLT
	movl	dest@GOT(%ebx), %edx
	movl	%eax, (%edx)
	movl	$1000, (%esp)
	call	InitSrcArea
	addl	$16, %esp
	movl	$0, %esi
	movl	src@GOT(%ebx), %eax
	movl	%eax, -28(%ebp)
	movl	dest@GOT(%ebx), %eax
	movl	%eax, -32(%ebp)
.L17:
	leal	16(%esi), %edi
	subl	$4, %esp
	pushl	$256
	movl	-28(%ebp), %ecx
	movl	%edi, %eax
	addl	(%ecx), %eax
	pushl	%eax
	movl	-32(%ebp), %eax
	pushl	(%eax)
	call	mymemcpy@PLT
	addl	$12, %esp
	pushl	$256
	movl	-28(%ebp), %ecx
	addl	(%ecx), %edi
	pushl	%edi
	movl	-32(%ebp), %eax
	pushl	(%eax)
	call	check
	addl	$16, %esp
	cmpl	$1, %eax
	leal	.LC0@GOTOFF(%ebx), %eax
	leal	.LC1@GOTOFF(%ebx), %edx
	cmovne	%edx, %eax
	pushl	%eax
	pushl	%esi
	leal	.LC2@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	addl	$1, %esi
	addl	$16, %esp
	cmpl	$4, %esi
	jne	.L17
	movl	$0, %esi
	movl	src@GOT(%ebx), %eax
	movl	%eax, -28(%ebp)
	movl	dest@GOT(%ebx), %eax
	movl	%eax, -32(%ebp)
.L19:
	leal	16(%esi), %edi
	subl	$4, %esp
	pushl	$256
	movl	-28(%ebp), %eax
	pushl	(%eax)
	movl	-32(%ebp), %ecx
	movl	%edi, %edx
	addl	(%ecx), %edx
	pushl	%edx
	call	mymemcpy@PLT
	addl	$12, %esp
	pushl	$256
	movl	-28(%ebp), %eax
	pushl	(%eax)
	movl	-32(%ebp), %ecx
	addl	(%ecx), %edi
	pushl	%edi
	call	check
	addl	$16, %esp
	cmpl	$1, %eax
	leal	.LC0@GOTOFF(%ebx), %eax
	leal	.LC1@GOTOFF(%ebx), %edx
	cmovne	%edx, %eax
	pushl	%eax
	pushl	%esi
	leal	.LC3@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	addl	$1, %esi
	addl	$16, %esp
	cmpl	$4, %esi
	jne	.L19
	movl	$0, %esi
	movl	src@GOT(%ebx), %eax
	movl	%eax, -28(%ebp)
	movl	dest@GOT(%ebx), %eax
	movl	%eax, -32(%ebp)
.L21:
	leal	32(%esi), %edi
	movl	$16, %eax
	subl	%esi, %eax
	movl	%eax, %ecx
	subl	$4, %esp
	pushl	$256
	movl	-28(%ebp), %edx
	movl	%edi, %eax
	addl	(%edx), %eax
	pushl	%eax
	movl	-32(%ebp), %edx
	movl	%ecx, -36(%ebp)
	movl	%ecx, %eax
	addl	(%edx), %eax
	pushl	%eax
	call	mymemcpy@PLT
	addl	$12, %esp
	pushl	$256
	movl	-28(%ebp), %edx
	addl	(%edx), %edi
	pushl	%edi
	movl	-32(%ebp), %edx
	movl	-36(%ebp), %eax
	addl	(%edx), %eax
	pushl	%eax
	call	check
	addl	$16, %esp
	cmpl	$1, %eax
	leal	.LC0@GOTOFF(%ebx), %eax
	leal	.LC1@GOTOFF(%ebx), %edx
	cmovne	%edx, %eax
	pushl	%eax
	pushl	%esi
	leal	.LC4@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	addl	$1, %esi
	addl	$16, %esp
	cmpl	$4, %esi
	jne	.L21
	movl	$0, %eax
	leal	-16(%ebp), %esp
	popl	%ecx
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
	.size	main, .-main
	.comm	dest,4,4
	.comm	src,4,4
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
