	.file	"memcpy.c"
	.text
	.globl	mymemcpy
	.type	mymemcpy, @function
mymemcpy:
	movl	4(%esp), %eax
	ret
	.size	mymemcpy, .-mymemcpy
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
