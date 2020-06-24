	.file	"atoi.c"
	.text
	.globl	myatoi
	.type	myatoi, @function
myatoi:
.LFB0:
	.cfi_startproc
	movl	4(%esp), %edx
	movzbl	(%edx), %eax
	leal	-9(%eax), %ecx
	cmpb	$1, %cl
	jbe	.L5
	cmpb	$32, %al
	jne	.L2
.L5:
	addl	$1, %edx
	movzbl	(%edx), %eax
	leal	-9(%eax), %ecx
	cmpb	$1, %cl
	jbe	.L5
	cmpb	$32, %al
	je	.L5
.L2:
	movsbl	%al, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	myatoi, .-myatoi
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
