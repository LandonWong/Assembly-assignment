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
	jbe	.L14
	cmpb	$32, %cl
	jne	.L2
.L14:
	addl	$1, %edx
	movzbl	(%edx), %ecx
	leal	-9(%ecx), %eax
	cmpb	$1, %al
	jbe	.L14
	cmpb	$32, %cl
	je	.L14
.L2:
	cmpb	$45, %cl
	je	.L16
	movl	$1, %esi
	cmpb	$43, %cl
	je	.L17
.L6:
	movzbl	(%edx), %eax
	leal	-48(%eax), %ecx
	cmpb	$9, %cl
	ja	.L12
	movsbl	%al, %eax
	leal	-48(%eax), %eax
.L9:
	addl	$1, %edx
	movzbl	(%edx), %ecx
	leal	-48(%ecx), %ebx
	cmpb	$9, %bl
	ja	.L7
	leal	(%eax,%eax,4), %eax
	movsbl	%cl, %ecx
	leal	-48(%ecx,%eax,2), %eax
	cmpl	$458752, %eax
	jle	.L9
	movl	$2147483647, %eax
.L7:
	imull	%esi, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
.L16:
	.cfi_restore_state
	addl	$1, %edx
	movl	$-1, %esi
	jmp	.L6
.L17:
	addl	$1, %edx
	jmp	.L6
.L12:
	movl	$0, %eax
	jmp	.L7
	.cfi_endproc
.LFE0:
	.size	myatoi, .-myatoi
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
