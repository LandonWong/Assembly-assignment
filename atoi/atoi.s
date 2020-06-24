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
	jbe	.L13
	cmpb	$32, %cl
	jne	.L2
.L13:
	addl	$1, %edx
	movzbl	(%edx), %ecx
	leal	-9(%ecx), %eax
	cmpb	$1, %al
	jbe	.L13
	cmpb	$32, %cl
	je	.L13
.L2:
	cmpb	$45, %cl
	je	.L15
	movl	$1, %esi
	cmpb	$43, %cl
	je	.L16
.L6:
	movzbl	(%edx), %ecx
	leal	-48(%ecx), %ebx
	movl	$0, %eax
	cmpb	$9, %bl
	ja	.L8
.L7:
	leal	(%eax,%eax,4), %eax
	movsbl	%cl, %ecx
	leal	-48(%ecx,%eax,2), %eax
	addl	$1, %edx
	movzbl	(%edx), %ecx
	leal	-48(%ecx), %ebx
	cmpb	$9, %bl
	jbe	.L7
.L8:
	imull	%esi, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
.L15:
	.cfi_restore_state
	addl	$1, %edx
	movl	$-1, %esi
	jmp	.L6
.L16:
	addl	$1, %edx
	jmp	.L6
	.cfi_endproc
.LFE0:
	.size	myatoi, .-myatoi
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
