	.file	"memcpy.c"
	.text
	.globl	mymemcpy
	.type	mymemcpy, @function
mymemcpy:
	pushl	%ebp
	movl	%esp, %ebp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	addl	$1, 12(%ebp)
	addl	$1, 16(%ebp)
	movl	8(%ebp), %eax
	popl	%ebp
	ret
	.size	mymemcpy, .-mymemcpy
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
	movl	(%esp), %eax
	ret
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
