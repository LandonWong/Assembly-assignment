	.text
	.globl	mymemcpy
	.type	mymemcpy, @function
mymemcpy:
	movl	4(%esp),%eax # dest
	movl	8(%esp),%ebx # src
	movl	12(%esp),%ecx # n
	ret
