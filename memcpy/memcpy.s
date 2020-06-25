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
.L2:
	test	%rbx,%rbx
	jz	.L1
	cmp	$4,%rbx
	jge	.L15
	mov	%rbx,%rcx
	jmp	.L6
.L15:
	mov	%rdi,%rcx
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
	mov	%rdi,%rcx
	and	$7,%rcx
	jz	.L4
	mov	$1,%rcx
	jmp	.L7
.L4:
	cmp	$64,%rbx
	jge	.L25
	jmp	.L10
.L6:
	sub	%rcx,%rbx
	cld
	rep	movsb
	jmp	.L2
.L7:
	mov	%rcx,%r8
	imul	$4,%r8
	sub	%r8,%rbx
	cld
	rep	movsl
	jmp	.L2
.L10:
	mov	%rbx,%rcx
	shr	$3,%rcx
	mov	%rcx,%r8
	shl	$3,%r8
	sub	%r8,%rbx
	cld
	rep	movsq
	jmp	.L2
.L25:
	push	%r9
	push	%r10
	push	%r11
	push	%r12
	mov	%rbx,%rcx
	shr	$6,%rcx
	mov	%rcx,%r8
	shl	$6,%r8
	sub	%r8,%rbx	
.L11:
	movq	(%rsi),%r9
	movq	8(%rsi),%r10
	movq	16(%rsi),%r11
	movq	24(%rsi),%r12
	movq	32(%rsi),%mm0
	movq	40(%rsi),%mm1
	movq	48(%rsi),%mm2
	movq	56(%rsi),%mm3
	movq	%r9,(%rdi)
	movq	%r10,8(%rdi)
	movq	%r11,16(%rdi)
	movq	%r12,24(%rdi)
	movq	%mm0,32(%rdi)
	movq	%mm1,40(%rdi)
	movq	%mm2,48(%rdi)
	movq	%mm3,56(%rdi)
	add	$64,%rsi
	add	$64,%rdi
	loop	.L11
	#sub	$64,%rbx
	#cmp	$64,%rbx
	#jge	.L11
	pop	%r12
	pop	%r11
	pop	%r10
	pop	%r9
	jmp	.L2
.L1:
	pop	%rdx
	pop	%rcx
	pop	%rbx
	ret
