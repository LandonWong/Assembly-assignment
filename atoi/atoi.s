	.text
	.globl	myatoi
	.type	myatoi, @function
myatoi:
.L0:
	movl	4(%esp), %eax
	push	%ebx
	xor	%eax,%eax
	pop	%ebx
	ret
