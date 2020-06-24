	.file	"atoi.c"
	.text
	.globl	myatoi
	.type	myatoi, @function
myatoi:
.LFB0:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	12(%esp), %edx
	movzbl	(%edx), %ecx
	leal	-9(%ecx), %eax
	cmpb	$1, %al
	jbe	.L15
	cmpb	$32, %cl
	jne	.L2
.L15:
	addl	$1, %edx
	movzbl	(%edx), %ecx
	leal	-9(%ecx), %eax
	cmpb	$1, %al
	jbe	.L15
	cmpb	$32, %cl
	je	.L15
.L2:
	cmpb	$45, %cl
	je	.L17
	movl	$1, %esi
	cmpb	$43, %cl
	je	.L18
.L6:
	movzbl	(%edx), %eax
	leal	-48(%eax), %ecx
	cmpb	$9, %cl
	ja	.L13
	movsbl	%al, %eax
	leal	-48(%eax), %eax
.L10:
	addl	$1, %edx
	movzbl	(%edx), %ecx
	leal	-48(%ecx), %ebx
	cmpb	$9, %bl
	ja	.L9
	leal	(%eax,%eax,4), %eax
	movsbl	%cl, %ecx
	leal	-48(%ecx,%eax,2), %eax
	cmpl	$10000, %eax
	jle	.L10
	movl	$-1, %eax
	jmp	.L1
.L17:
	addl	$1, %edx
	movl	$-1, %esi
	jmp	.L6
.L18:
	addl	$1, %edx
	jmp	.L6
.L13:
	movl	$0, %eax
.L9:
	imull	%esi, %eax
.L1:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE0:
	.size	myatoi, .-myatoi
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
