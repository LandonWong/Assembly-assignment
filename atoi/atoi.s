	.file	"atoi.c"
	.text
	.p2align 4,,15
	.globl	myatoi
	.type	myatoi, @function
myatoi:
.LFB0:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%esp), %edx
	movzbl	(%edx), %ecx
	leal	-9(%ecx), %eax
	cmpb	$1, %al
	ja	.L20
	.p2align 4,,10
	.p2align 3
.L17:
	addl	$1, %edx
	movzbl	(%edx), %ecx
	leal	-9(%ecx), %eax
	cmpb	$1, %al
	jbe	.L17
.L20:
	cmpb	$32, %cl
	je	.L17
	cmpb	$45, %cl
	je	.L22
	xorl	%eax, %eax
	cmpb	$43, %cl
	movl	$1, %edi
	sete	%al
	addl	%eax, %edx
	movsbl	(%edx), %ecx
	leal	-48(%ecx), %esi
	leal	-48(%ecx), %eax
	movl	%esi, %ebx
	cmpb	$9, %bl
	jbe	.L9
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L8:
	leal	(%eax,%eax,4), %eax
	leal	-48(%ecx,%eax,2), %eax
	cmpl	$458752, %eax
	jg	.L13
.L9:
	addl	$1, %edx
	movsbl	(%edx), %ecx
	leal	-48(%ecx), %ebx
	cmpb	$9, %bl
	jbe	.L8
	imull	%edi, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L13:
	.cfi_restore_state
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	movl	$2147483647, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L22:
	.cfi_restore_state
	addl	$1, %edx
	movsbl	(%edx), %ecx
	movl	$-1, %edi
	leal	-48(%ecx), %esi
	leal	-48(%ecx), %eax
	movl	%esi, %ebx
	cmpb	$9, %bl
	jbe	.L9
.L23:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	xorl	%eax, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE0:
	.size	myatoi, .-myatoi
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
