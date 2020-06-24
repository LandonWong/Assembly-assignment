	.text
	.globl	mymemcpy
	.type	mymemcpy, @function
mymemcpy:
.L0:
	push	%rbx
	push	%rcx
	push	%rdx
	movl	%edx,%ebx	# Remain length
	movl	%edi,%eax	# dest, esi: src
	push	%r8
	xor	%r8,%r8		# offset
.L2:
	cmp	$0x4,%ebx
	jl	.L3
	mov	%esi,%ecx
	and	$0x3,%ecx
	jz	.L3
	sub	$0x4,%ecx
	not	%ecx
	inc	%ecx
	jmp	.L6
.L3:
	cmp	$0x10,%ebx
	jl	.L4
	mov	%esi,%ecx
	and	$0xf,%ecx
	jz	.L4
	sub	$0x10,%ecx
	not	%ecx
	inc	%ecx
	jmp	.L7
.L4:
	cmp	$0x100,%ebx
	jl	.L5
	mov	%esi,%ecx
	and	$0x3f,%ecx
	jz	.L5
	sub	$0x100,%ecx
	not	%ecx
	inc	%ecx
	jmp	.L8
.L5:
	jmp	.L10

.L6:
	mov	(%esi),%ebx
	movb	%dl,(%eax,%r8d)
	inc	%r8d
	inc	%esi
	dec	%ebx
	loop	.L6
	jmp	.L2
.L7:
	movl	(%esi),%edx
	movl	%edx,(%eax,%r8d)
	add	$4,%r8d
	add	$4,%esi
	sub	$4,%ebx
	loop	.L7
	jmp	.L2
.L8:
	push	%r9
	push	%r10
.L9:
	movq	(%esi),%r9
	movq	8(%esi),%r10
	movq	%r9,(%eax,%r8d)
	movq	%r10,8(%eax,%r8d)
	add	$0x10,%r8d
	add	$0x10,%esi
	sub	$0x10,%ebx
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
	movq	(%esi),%r9
	movq	8(%esi),%r10
	movq	16(%esi),%r11
	movq	24(%esi),%r12
	movq	32(%esi),%mm0
	movq	40(%esi),%mm1
	movq	48(%esi),%mm2
	movq	56(%esi),%mm3
	movq	%r9,(%eax,%r8d)
	movq	%r10,8(%eax,%r8d)
	movq	%r11,16(%eax,%r8d)
	movq	%r12,24(%eax,%r8d)
	movq	%mm0,32(%eax,%r8d)
	movq	%mm1,40(%eax,%r8d)
	movq	%mm2,48(%eax,%r8d)
	movq	%mm3,56(%eax,%r8d)
	add	$64,%r8d
	add	$64,%esi
	sub	$64,%ebx
	cmp	$64,%ebx
	jge	.L11
	pop	%r12
	pop	%r11
	pop	%r10
	pop	%r9
	cmp	$64,%ebx
	jmp	.L2
.L1:
	pop	%r8
	pop	%rdx
	pop	%rcx
	pop	%rbx
	ret
