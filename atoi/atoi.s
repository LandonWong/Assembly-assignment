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
	movl	16(%esp), %ecx
	movsbl	(%ecx), %edx
	leal	-9(%edx), %eax
	cmpb	$1, %al
	ja	.L20
	.p2align 4,,10
	.p2align 3
.L17:
	addl	$1, %ecx
	movsbl	(%ecx), %edx
	leal	-9(%edx), %eax
	cmpb	$1, %al
	jbe	.L17
.L20:
	cmpb	$32, %dl
	je	.L17
	cmpb	$45, %dl
	je	.L22
	cmpb	$43, %dl
	movl	$1, %edi
	je	.L23
.L6:
	leal	-48(%edx), %esi
	leal	-48(%edx), %eax
	movl	%esi, %ebx
	cmpb	$9, %bl
	jbe	.L9
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L8:
	leal	(%eax,%eax,4), %eax
	leal	-48(%edx,%eax,2), %eax
	cmpl	$458752, %eax
	jg	.L13
.L9:
	addl	$1, %ecx
	movsbl	(%ecx), %edx
	leal	-48(%edx), %ebx
	cmpb	$9, %bl
	jbe	.L8
	imull	%edi, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	popl	%edi
	ret
.L23:
	.cfi_restore_state
	movsbl	1(%ecx), %edx
	addl	$1, %ecx
	leal	-48(%edx), %esi
	leal	-48(%edx), %eax
	movl	%esi, %ebx
	cmpb	$9, %bl
	jbe	.L9
.L24:
	popl	%ebx
	xorl	%eax, %eax
	popl	%esi
	popl	%edi
	ret
.L13:
	popl	%ebx
	movl	$2147483647, %eax
	popl	%esi
	popl	%edi
	ret
.L22:
	movsbl	1(%ecx), %edx
	movl	$-1, %edi
	addl	$1, %ecx
	jmp	.L6
