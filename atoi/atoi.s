	.text
	.p2align 4,,15
	.globl	myatoi
	.type	myatoi, @function
myatoi:
.LFB0:
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	movl	16(%esp), %edx
	movzbl	(%edx), %ecx
	leal	-9(%ecx), %eax
	cmpb	$1, %al
	ja	.L20
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
	xorl	%eax, %eax
	popl	%esi
	popl	%edi
	ret
