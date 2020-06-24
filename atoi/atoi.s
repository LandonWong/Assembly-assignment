	.file	"atoi.c"
	.text
	.globl	myatoi
	.type	myatoi, @function
myatoi:
.L0:
	movl	4(%esp),%edx 	# base ptr
	push	%ebx		# sign
	xor	%eax,%eax	# return value
	push	%ecx		# use for store elements
	xor	%ecx,%ecx	# clear
	mov	$1,%ebx		# sign(value: 1/-1): default = 1
.L1:
	movzx	(%edx),%ecx	
	cmp	$' ',%cl
	je	.L6
	cmp	$'\n',%cl
	je	.L6
	cmp	$'\t',%cl
	je	.L6
	jmp	.L2
.L6:
	inc	%edx
	jmp	.L1
.L2:
	movzx	(%edx),%ecx
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
	jl	.L8
	cmp	$'9',%cl
	jg	.L8
	imull	$10,%eax
	jo	.L7
	sub	$'0',%eax
	add	%ecx,%eax
	jo	.L7
	inc	%edx
	jmp	.L5
.L7:
	mov	$0x7fffffff,%eax
	cmp	$1,%ebx
	je	.L8
	not	%eax
.L8:
	imull	%ebx,%eax
	pop	%ecx
	pop	%ebx
	ret
#	.size	myatoi, .-myatoi
#	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
#	.section	.note.GNU-stack,"",@progbits
