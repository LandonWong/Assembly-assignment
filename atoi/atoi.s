	.text
	.globl	myatoi
	.type	myatoi, @function
myatoi:

# Description:
# | edx | nptr			|
# | ecx | load temp element	|
# | ebx | sign (+1/-1)		|
# | eax | return value (result) |

.L0:
	movl	4(%esp),%edx 		# base ptr
	push	%ebx			# sign
	push	%ecx			# use for store elements
	xor	%ecx,%ecx		# clear
	xor	%eax,%eax		# return value
	mov	$1,%ebx			# sign(value: 1/-1): default = 1
.L1:					# L1: Skip space
	movb	(%edx),%cl		# load element
	cmp	$' ',%cl		# skip ' '
	je	.L6			
	cmp	$'\n',%cl		# skip '\n'
	je	.L6	
	cmp	$'\t',%cl		# skip '\t'
	je	.L6
	jmp	.L2			# skip finish, jump to L2
.L6:					# L1 <skip loop>, continue scan and skip
	inc	%edx
	jmp	.L1
.L2:					# L2: Read '+'/'-'
	cmp	$'-',%cl		# set sign = -1
	je	.L3
	cmp	$'+',%cl		# sign has been already set to 1, just nptr++ 
	je	.L4
	jmp	.L50			# Cannot find
.L3:					# set sign = -1
	mov	$-1,%ebx
.L4:					# nptr++
	inc	%edx
.L5:					# L5: <main loop>
	movsbl	(%edx),%ecx		# load element
	sub	$-48,%ecx
.L50:
	jl	.L8			# is not num
	cmp	$'9',%cl		# is not num
	jg	.L8
	imull	$10,%eax		# result = result * 10
	jo	.L7			# if OVERFLOW, goto OVERFLOW handle
	add	%ecx,%eax		# add char
	jo	.L7			# if OVERFLOW, goto OVERFLOW handle
	inc	%edx			# nptr++
	jmp	.L5
.L7:					# L7: OVERFLOW handle
	mov	$0x7fffffff,%eax	# set value max
	cmp	$1,%ebx
	je	.L9
	not	%eax			# if sign == -1, set value min
	jmp	.L9
.L8:
	imull	%ebx,%eax		# result = result * sign
.L9:
	pop	%ecx
	pop	%ebx			# restore registers
	ret				# return
