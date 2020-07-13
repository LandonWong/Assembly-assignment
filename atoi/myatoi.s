	.file	"myatoi.c"
	.text
	.globl	myatoi
	.type	myatoi, @function
myatoi:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	$1, -8(%ebp)
	movl	$0, -4(%ebp)
	jmp	.L2
.L3:
	addl	$1, 8(%ebp)
.L2:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$10, %al
	je	.L3
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$9, %al
	je	.L3
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$32, %al
	je	.L3
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$43, %al
	jne	.L4
	addl	$1, 8(%ebp)
	jmp	.L6
.L4:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$45, %al
	jne	.L6
	movl	$0, -8(%ebp)
	addl	$1, 8(%ebp)
	jmp	.L6
.L8:
	movl	-4(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	addl	%edx, %eax
	subl	$48, %eax
	movl	%eax, -4(%ebp)
	addl	$1, 8(%ebp)
.L6:
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jle	.L7
	movl	8(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	$57, %al
	jle	.L8
.L7:
	cmpl	$0, -8(%ebp)
	jne	.L9
	movl	-4(%ebp), %eax
	negl	%eax
	jmp	.L11
.L9:
	movl	-4(%ebp), %eax
.L11:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	myatoi, .-myatoi
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB1:
	.cfi_startproc
	movl	(%esp), %eax
	ret
	.cfi_endproc
.LFE1:
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
