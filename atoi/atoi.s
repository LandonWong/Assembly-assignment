	.file	"atoi.c"
	.text
	.p2align 4,,15
	.globl	myatoi
	.type	myatoi, @function
myatoi:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	20(%esp), %ecx
	movsbl	(%ecx), %edx
	leal	-9(%edx), %eax
	cmpb	$1, %al
	ja	.L18
	.p2align 4,,10
	.p2align 3
.L15:
	addl	$1, %ecx
	movsbl	(%ecx), %edx
	leal	-9(%edx), %eax
	cmpb	$1, %al
	jbe	.L15
.L18:
	cmpb	$32, %dl
	je	.L15
	cmpb	$45, %dl
	je	.L20
	cmpb	$43, %dl
	movl	$2147483647, %ebp
	movl	$1, %esi
	je	.L21
.L6:
	leal	-48(%edx), %ebx
	subl	$48, %edx
	cmpb	$9, %bl
	jbe	.L9
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L8:
	leal	(%edx,%edx,4), %edx
	leal	-48(%ebx,%edx,2), %edx
	cmpl	$458752, %edx
	jg	.L1
.L9:
	addl	$1, %ecx
	movsbl	(%ecx), %ebx
	leal	-48(%ebx), %edi
	movl	%edi, %eax
	cmpb	$9, %al
	jbe	.L8
	movl	%esi, %eax
	imull	%edx, %eax
	movl	%eax, %ebp
.L7:
.L1:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%ebp, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	.cfi_restore_state
	movsbl	1(%ecx), %edx
	addl	$1, %ecx
	leal	-48(%edx), %ebx
	subl	$48, %edx
	cmpb	$9, %bl
	jbe	.L9
.L22:
	xorl	%ebp, %ebp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	movl	%ebp, %eax
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L20:
	.cfi_restore_state
	movsbl	1(%ecx), %edx
	movl	$-2147483647, %ebp
	addl	$1, %ecx
	movl	$-1, %esi
	jmp	.L6
	.cfi_endproc
.LFE0:
	.size	myatoi, .-myatoi
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
