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
	cmpl	$458752, %eax
	jle	.L10
	movl	$2147483647, %eax
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
	popl	%esi
	ret
