	.text
	.globl	mymemcpy
	.type	mymemcpy, @function
mymemcpy:
.L0:
	push	%rbx
	push	%rcx
	push	%r8
	mov	%rdx,%rbx
	mov	%rdi,%rax
.L2:
	test	%rbx,%rbx
	jz	.L1
	cmp	$16,%rbx
	jl	.L30
	mov	%rdi,%rcx
	and	$0xf,%rcx
	jnz	.L3
	cmp	$128,%rbx
	jge	.L4
.L5:
	mov	%rbx,%rcx
	shr	$3,%rcx
	mov	%rcx,%r8
	shl	$3,%r8
	sub	%r8,%rbx
	cld
	rep	movsq
	jmp	.L2
.L4:
	mov	%rbx,%rcx
	shr	$7,%rcx
	mov	%rcx,%r8
	shl	$7,%r8
	sub	%r8,%rbx
.L40:
	prefetchnta	1*128(%rsi)
	prefetchnta	2*128(%rsi)
	movdqu	0*16(%rsi),%xmm0
	movdqu	1*16(%rsi),%xmm1
	movdqu	2*16(%rsi),%xmm2
	movdqu	3*16(%rsi),%xmm3
	movdqu	4*16(%rsi),%xmm4
	movdqu	5*16(%rsi),%xmm5
	movdqu	6*16(%rsi),%xmm6
	movdqu	7*16(%rsi),%xmm7
	movdqa	%xmm0,0*16(%rdi)
	movdqa	%xmm1,1*16(%rdi)
	movdqa	%xmm2,2*16(%rdi)
	movdqa	%xmm3,3*16(%rdi)
	movdqa	%xmm4,4*16(%rdi)
	movdqa	%xmm5,5*16(%rdi)
	movdqa	%xmm6,6*16(%rdi)
	movdqa	%xmm7,7*16(%rdi)
	add	$0x80,%rsi
	add	$0x80,%rdi
	loop	.L40
	jmp	.L2
.L3:
	sub	$16,%rcx
	not	%rcx
	inc	%rcx
	sub	%rcx,%rbx
	cld
	rep	movsb
	jmp	.L2
.L30:
	mov	%rbx,%rcx
	cld
	rep	movsb
.L1:
	pop	%r8
	pop	%rcx
	pop	%rbx
	ret
