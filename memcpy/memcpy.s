	.text
	.globl	mymemcpy
	.type	mymemcpy, @function
mymemcpy:

# %rax: return value: dest
# %rdx: remain length (bytes)
# %rdi: dest pointer
# %rsi: src pointer
# %rcx: loop times

.L0:
	push	%rcx
#	push	%r9
#	mov	%rdi,%rax	# return value: dest
#	lea	(%rax,%rdx),%r9	# for testing, check if (final-rdi == dest + size)
	
.L_main:
	test	%rdx,%rdx	# if zero, goto exit
	jz	.L_exit
	cmp	$16,%rdx	# if less than 16B, goto byte copy and finish after it
	jl	.L_byte_finish
	mov	%rdi,%rcx	
	and	$0xf,%rcx	# check if dest is 16B align
	jnz	.L_byte		# if unalign, goto 1 byte copy until 16 align
	cmp	$128,%rdx	# if >=128B, goto 128B-copy
	jge	.L_128byte
	
.L_qword:			# 8B copy using movsq
	mov	%rdx,%rcx	# if align && >=16 && <128, use movsq
	shr	$3,%rcx		# calculate how many times
	and	$0x7,%rdx	# refresh remain length
	cld
	rep	movsq
	jmp	.L_main
	
.L_128byte:			# 128B copy using xmm regs
	mov	%rdx,%rcx	# calculate loop times and refresh remain length
	shr	$0x7,%rcx
	and	$0x7f,%rdx	# refresh remain length
	
.L_128byte_main:
	prefetchnta	0x80(%rsi)	# prefetch data for next loop
	prefetchnta	0xa0(%rsi)
	prefetchnta	0xc0(%rsi)
	prefetchnta	0xe0(%rsi)
	movdqu	0*16(%rsi),%xmm0
	movdqu	1*16(%rsi),%xmm1
	movdqu	2*16(%rsi),%xmm2
	movdqu	3*16(%rsi),%xmm3
	movdqu	4*16(%rsi),%xmm4
	movdqu	5*16(%rsi),%xmm5
	movdqu	6*16(%rsi),%xmm6
	movdqu	7*16(%rsi),%xmm7
	movntpd	%xmm0,0*16(%rdi)	# write to memory directly
	movntpd	%xmm1,1*16(%rdi)
	#movntpd	%xmm2,2*16(%rdi)
	movntpd	%xmm3,3*16(%rdi)
	movntpd	%xmm4,4*16(%rdi)
	movntpd	%xmm5,5*16(%rdi)
	movntpd	%xmm6,6*16(%rdi)
	movntpd	%xmm7,7*16(%rdi)
	lea	0x80(%rsi),%rsi		# refresh rsi and rdi
	lea	0x80(%rdi),%rdi
	loop	.L_128byte_main
	jmp	.L_main
	
.L_byte:				# one byte copy
	lea	-16(%rdx,%rcx),%rdx
	sub	$17,%rcx
	not	%rcx			# refresh remain length
	cld
	rep	movsb
	jmp	.L_main
	
.L_byte_finish:				# one byte copy and exit
	mov	%rdx,%rcx
	cld
	rep	movsb
	
.L_exit:
#	cmp	%r9,%rdi
#	jne	.L_exit			# for testing...if (final-rdi != dest + size) will never halt...
#	pop	%r9
	pop	%rcx
	ret
