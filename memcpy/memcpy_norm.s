	.text
	.globl	mymemcpy
	.type	mymemcpy, @function
mymemcpy:
.L0:
	push	%rbx
	push	%rcx
	push	%rdx
	mov	%rdx,%rbx	# Remain length
	mov	%rdi,%rax	# dest, rsi: src
	push	%r8
	xor	%r8,%r8		# offset
.L2:
	test	%rbx,%rbx
	jz	.L1
	cmp	$4,%rbx
	jge	.L15
	mov	%rbx,%rcx
	jmp	.L6
.L15:
	mov	%rsi,%rcx
	and	$3,%rcx
	jz	.L3
	sub	$0x4,%rcx
	not	%rcx
	inc	%rcx
	jmp	.L6
.L3:
	cmp	$16,%rbx
	jge	.L12
	mov	%rbx,%rcx
	shr	$2,%rcx
	jmp	.L7
.L12:
	mov	%rsi,%rcx
	and	$7,%rcx
	jz	.L4
	mov	$1,%rcx
	jmp	.L7
.L4:
	cmp	$64,%rbx
	jge	.L10
	mov	%rbx,%rcx
	shr	$4,%rcx
	jmp	.L8
.L6:
	movb	(%rsi),%dl
	movb	%dl,(%rax,%r8)
	inc	%r8
	inc	%rsi
	dec	%rbx
	loop	.L6
	jmp	.L2
.L7:
	movl	(%rsi),%edx
	movl	%edx,(%rax,%r8)
	add	$4,%r8
	add	$4,%rsi
	sub	$4,%rbx
	loop	.L7
	jmp	.L2
.L8:
	push	%r9
	push	%r10
.L9:
	movq	(%rsi),%r9
	movq	8(%rsi),%r10
	movq	%r9,(%rax,%r8)
	movq	%r10,8(%rax,%r8)
	add	$16,%r8
	add	$16,%rsi
	sub	$16,%rbx
	loop	.L9
	pop	%r10
	pop	%r9
	jmp	.L2
.L10:
	push	%r9
	push	%r10
	push	%r11
	push	%r12
.L11:
	movq	(%rsi),%r9
	movq	8(%rsi),%r10
	movq	16(%rsi),%r11
	movq	24(%rsi),%r12
	movq	32(%rsi),%mm0
	movq	40(%rsi),%mm1
	movq	48(%rsi),%mm2
	movq	56(%rsi),%mm3
	movq	%r9,(%rax,%r8)
	movq	%r10,8(%rax,%r8)
	movq	%r11,16(%rax,%r8)
	movq	%r12,24(%rax,%r8)
	movq	%mm0,32(%rax,%r8)
	movq	%mm1,40(%rax,%r8)
	movq	%mm2,48(%rax,%r8)
	movq	%mm3,56(%rax,%r8)
	add	$64,%r8
	add	$64,%rsi
	sub	$64,%rbx
	cmp	$64,%rbx
	jge	.L11
	pop	%r12
	pop	%r11
	pop	%r10
	pop	%r9
	cmp	$64,%rbx
	jmp	.L2
.L1:
	pop	%r8
	pop	%rdx
	pop	%rcx
	pop	%rbx
	ret