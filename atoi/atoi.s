	.text
	.globl	myatoi
	.type	myatoi, @function
myatoi:
.LFB0:
	pushl	%esi
	pushl	%ebx
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
	popl	%esi
	ret
.L15:
	addl	$1, %edx
	movl	$-1, %esi
	jmp	.L6
.L16:
	addl	$1, %edx
	jmp	.L6
