	.file	"atoi.c"
	.text
	.p2align 4,,15
	.globl	myatoi
	.type	myatoi, @function
myatoi:
.LFB0:
	.cfi_startproc
	movl	4(%esp), %eax
	movsbl	(%eax), %eax
	ret
	.cfi_endproc
.LFE0:
	.size	myatoi, .-myatoi
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
