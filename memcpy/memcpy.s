	.text
	.globl	mymemcpy
	.type	mymemcpy, @function
mymemcpy:
.L0:
	push	%rbx
	push	%rcx
	push	%rdx
	push	%r8
	mov	%rdx,%rbx
	mov	%rdi,%rax
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
	jmp	.L7
.L12:
	mov	%rdi,%rcx
	and	$7,%rcx
	jz	.L10
	jmp	.L30	
.L6:
	sub	%rcx,%rbx
	cld
	rep	movsb
	jmp	.L2
.L7:
	mov	%rbx,%rcx
	shr	$2,%rcx
	mov	%rcx,%r8
	shl	$2,%r8
	sub	%r8,%rbx
	cld
	rep	movsl
	jmp	.L2
.L30:
	movsl
	sub	$4,%rbx
	jmp	.L2
.L10:
	cmp	$64,%rbx
	jge	.L200
	mov	%rbx,%rcx
	shr	$3,%rcx
	mov	%rcx,%r8
	shl	$3,%r8
	sub	%r8,%rbx
	cld
	rep	movsq
	jmp	.L2
.L200:
	mov	%rbx,%rcx
	shr	$6,%rcx
	mov	%rcx,%r8
	shl	$6,%r8
	sub	%r8,%rbx
.L201:
	movsq
	movsq
	movsq
	movsq
	movsq
	movsq
	movsq
	movsq
	loop	.L201
	jmp	.L2
.L1:
	pop	%r8
	pop	%rdx
	pop	%rcx
	pop	%rbx
	ret
