	.text
	.globl	mymemcpy
	.type	mymemcpy, @function
mymemcpy:
	movl	%edx,%ebx
	movl	%edi,%eax
	xor	%r8d,%r8d
	ret
