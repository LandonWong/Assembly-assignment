	.file	"memcpy.c"
	.text
	.globl	memcpy
	.type	memcpy, @function
memcpy:
.LFB0:
	.cfi_startproc
	movl	8(%esp), %eax
	ret
	.cfi_endproc
.LFE0:
	.size	memcpy, .-memcpy
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
