	.text
	.globl	mymemcpy
	.type	mymemcpy, @function
mymemcpy:
.L0:
	push	%rcx
	push	%r8
	mov	%rdi,%rax
.L_main:
	test	%rdx,%rdx
	jz	.L_exit
	cmp	$16,%rdx
	jl	.L_byte_finish
	mov	%rdi,%rcx
	and	$0xf,%rcx
	jnz	.L_byte
	cmp	$128,%rdx
	jge	.L_128byte
.L_qword:
	mov	%rdx,%rcx
	shr	$3,%rcx
	mov	%rcx,%r8
	shl	$3,%r8
	sub	%r8,%rdx
	cld
	rep	movsq
	jmp	.L_main
.L_128byte:
	mov	%rdx,%rcx
	shr	$7,%rcx
	mov	%rcx,%r8
	shl	$7,%r8
	sub	%r8,%rdx
.L_128byte_main:
	prefetchnta	1*128(%rsi)
	prefetchnta	2*128(%rsi)
	movups	0*16(%rsi),%xmm0
	movups	1*16(%rsi),%xmm1
	movups	2*16(%rsi),%xmm2
	movups	3*16(%rsi),%xmm3
	movups	4*16(%rsi),%xmm4
	movups	5*16(%rsi),%xmm5
	movups	6*16(%rsi),%xmm6
	movups	7*16(%rsi),%xmm7
	movntpd	%xmm0,0*16(%rdi)
	movntpd	%xmm1,1*16(%rdi)
	movntpd	%xmm2,2*16(%rdi)
	movntpd	%xmm3,3*16(%rdi)
	movntpd	%xmm4,4*16(%rdi)
	movntpd	%xmm5,5*16(%rdi)
	movntpd	%xmm6,6*16(%rdi)
	movntpd	%xmm7,7*16(%rdi)
	lea	0x80(%rsi),%rsi
	lea	0x80(%rdi),%rdi
	loop	.L_128byte_main
	jmp	.L_main
.L_byte:
	sub	$16,%rcx
	not	%rcx
	inc	%rcx
	sub	%rcx,%rdx
	cld
	rep	movsb
	jmp	.L_main
.L_byte_finish:
	mov	%rdx,%rcx
	cld
	rep	movsb
.L_exit:
	pop	%r8
	pop	%rcx
	ret
