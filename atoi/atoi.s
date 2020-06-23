	.text
	.globl	myatoi
	.type	myatoi, @function
myatoi:
.LFB0:
	movl	4(%esp), %eax
	movsbl	(%eax), %eax
	subl	$48, %eax
	ret
