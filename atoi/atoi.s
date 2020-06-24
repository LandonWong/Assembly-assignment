	.text
	.globl	myatoi
	.type	myatoi, @function
myatoi:
.L0:
	push	%edx
	movl	4(%esp), %edx 	# base ptr
	push	%ebx		# sign
	xor	%eax,%eax	# return value
	push	%ecx
	xor	%cl,%cl
	mov	$1,%ebx
.L1:
	movb	(%edx),%cl
	cmp	$' ',%cl
	jne	.L2
	cmp	$'\n',%cl
	jne	.L2
	cmp	$'\t',%cl
	jne	.L2
	inc	%edx
	jmp	.L1
.L2:
	movb	(%edx),%cl
	cmp	$'-',%cl
	je	.L3
	cmp	$'+',%cl
	je	.L4
	jmp	.L5
.L3:
	mov	$-1,%ebx
.L4:
	inc	%edx
.L5:
	movzx	(%edx),%ecx
	cmp	$'0',%cl
	jl	.L100
	cmp	$'9',%cl
	jg	.L100
	imull	$10,%eax
	jo	.L100
	sub	$'0',%eax
	add	%ecx,%eax
	jo	.L100
	inc	%edx
	jmp	.L5
.L100:
	imull	%ebx,%eax
	mov	$10,%eax
	pop	%ecx
	pop	%ebx
	pop	%edx
	ret
