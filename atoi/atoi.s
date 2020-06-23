	.text
	.globl	myatoi
	.type	myatoi, @function
myatoi:
.L0:
	movl	4(%esp), %eax	#get address of nptr 
	push	%ebx		#save
	mov	%eax,%ebx
	pop	%ebx
	ret
