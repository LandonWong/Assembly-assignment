	.file	"main.c"
	.text
	.comm	src,4,4
	.comm	dest,4,4
	.globl	InitSrcArea
	.type	InitSrcArea, @function
InitSrcArea:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$20, %esp
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	subl	$12, %esp
	pushl	$1000
	call	malloc@PLT
	addl	$16, %esp
	movl	%eax, %edx
	movl	src@GOT(%ebx), %eax
	movl	%edx, (%eax)
	movl	src@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L2
.L3:
	movl	8(%ebp), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movb	%dl, (%eax)
	subl	$1, 8(%ebp)
	addl	$1, -12(%ebp)
.L2:
	cmpl	$0, 8(%ebp)
	jne	.L3
	nop
	movl	-4(%ebp), %ebx
	leave
	ret
	.size	InitSrcArea, .-InitSrcArea
	.globl	check
	.type	check, @function
check:
	pushl	%ebp
	movl	%esp, %ebp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	jmp	.L5
.L8:
	movl	8(%ebp), %eax
	movzbl	(%eax), %edx
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	je	.L6
	movl	$0, %eax
	jmp	.L7
.L6:
	addl	$1, 8(%ebp)
	addl	$1, 12(%ebp)
	subl	$1, 16(%ebp)
.L5:
	cmpl	$0, 16(%ebp)
	jne	.L8
	movl	$1, %eax
.L7:
	popl	%ebp
	ret
	.size	check, .-check
	.section	.rodata
.LC0:
	.string	"pass"
.LC1:
	.string	"fail"
.LC2:
	.string	"1 Test src align %d, %s.\n"
.LC3:
	.string	"2 Test dest align %d, %s.\n"
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
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	subl	$28, %esp
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$0, -28(%ebp)
	subl	$12, %esp
	pushl	$1000
	call	malloc@PLT
	addl	$16, %esp
	movl	%eax, %edx
	movl	dest@GOT(%ebx), %eax
	movl	%edx, (%eax)
	subl	$12, %esp
	pushl	$1000
	call	InitSrcArea
	addl	$16, %esp
	movl	$0, -28(%ebp)
	jmp	.L10
.L13:
	movl	src@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	-28(%ebp), %edx
	addl	$16, %edx
	addl	%eax, %edx
	movl	dest@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$4, %esp
	pushl	$256
	pushl	%edx
	pushl	%eax
	call	mymemcpy@PLT
	addl	$16, %esp
	movl	src@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	-28(%ebp), %edx
	addl	$16, %edx
	addl	%eax, %edx
	movl	dest@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$4, %esp
	pushl	$256
	pushl	%edx
	pushl	%eax
	call	check
	addl	$16, %esp
	cmpl	$1, %eax
	jne	.L11
	leal	.LC0@GOTOFF(%ebx), %eax
	jmp	.L12
.L11:
	leal	.LC1@GOTOFF(%ebx), %eax
.L12:
	subl	$4, %esp
	pushl	%eax
	pushl	-28(%ebp)
	leal	.LC2@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printf@PLT
	addl	$16, %esp
	addl	$1, -28(%ebp)
.L10:
	cmpl	$3, -28(%ebp)
	jle	.L13
	movl	$0, -28(%ebp)
	jmp	.L14
.L17:
	movl	src@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	dest@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	-28(%ebp), %ecx
	addl	$16, %ecx
	addl	%ecx, %edx
	subl	$4, %esp
	pushl	$256
	pushl	%eax
	pushl	%edx
	call	mymemcpy@PLT
	addl	$16, %esp
	movl	src@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	dest@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	-28(%ebp), %ecx
	addl	$16, %ecx
	addl	%ecx, %edx
	subl	$4, %esp
	pushl	$256
	pushl	%eax
	pushl	%edx
	call	check
	addl	$16, %esp
	cmpl	$1, %eax
	jne	.L15
	leal	.LC0@GOTOFF(%ebx), %eax
	jmp	.L16
.L15:
	leal	.LC1@GOTOFF(%ebx), %eax
.L16:
	subl	$4, %esp
	pushl	%eax
	pushl	-28(%ebp)
	leal	.LC3@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printf@PLT
	addl	$16, %esp
	addl	$1, -28(%ebp)
.L14:
	cmpl	$3, -28(%ebp)
	jle	.L17
	movl	$0, -28(%ebp)
	jmp	.L18
.L21:
	movl	src@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	-28(%ebp), %edx
	addl	$32, %edx
	addl	%eax, %edx
	movl	dest@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	-28(%ebp), %ecx
	movl	$16, %esi
	subl	%ecx, %esi
	movl	%esi, %ecx
	addl	%ecx, %eax
	subl	$4, %esp
	pushl	$256
	pushl	%edx
	pushl	%eax
	call	mymemcpy@PLT
	addl	$16, %esp
	movl	src@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	-28(%ebp), %edx
	addl	$32, %edx
	addl	%eax, %edx
	movl	dest@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	-28(%ebp), %ecx
	movl	$16, %esi
	subl	%ecx, %esi
	movl	%esi, %ecx
	addl	%ecx, %eax
	subl	$4, %esp
	pushl	$256
	pushl	%edx
	pushl	%eax
	call	check
	addl	$16, %esp
	cmpl	$1, %eax
	jne	.L19
	leal	.LC0@GOTOFF(%ebx), %eax
	jmp	.L20
.L19:
	leal	.LC1@GOTOFF(%ebx), %eax
.L20:
	subl	$4, %esp
	pushl	%eax
	pushl	-28(%ebp)
	leal	.LC4@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printf@PLT
	addl	$16, %esp
	addl	$1, -28(%ebp)
.L18:
	cmpl	$3, -28(%ebp)
	jle	.L21
	movl	$0, %eax
	leal	-12(%ebp), %esp
	popl	%ecx
	popl	%ebx
	popl	%esi
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
	movl	(%esp), %eax
	ret
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
