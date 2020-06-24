	.file	"main.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"<<<<< Begin BASIC Test >>>>>>"
.LC1:
	.string	"[%d:%s] PASS : %d\n"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC2:
	.string	"[%d:%s] FAIL : MINE: %d, REF: %d\n"
	.section	.rodata.str1.1
.LC3:
	.string	"pass %d / %d\n"
.LC4:
	.string	"<<<<< BASIC Test Done >>>>>>\n"
	.text
	.globl	basic_test
	.type	basic_test, @function
basic_test:
	pushl	%ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$40, %esp
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	leal	.LC0@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	movl	$0, 12(%esp)
	movl	$0, %esi
	movl	basic@GOT(%ebx), %ebp
	movl	%ebp, 8(%esp)
	jmp	.L4
.L8:
	subl	$12, %esp
	pushl	%eax
	movl	basic@GOT(%ebx), %eax
	pushl	(%eax,%esi,4)
	pushl	%esi
	leal	.LC1@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	addl	$1, 44(%esp)
	addl	$32, %esp
.L3:
	addl	$1, %esi
	cmpl	$4, %esi
	je	.L7
.L4:
	subl	$4, %esp
	pushl	$10
	pushl	$0
	pushl	0(%ebp,%esi,4)
	call	strtol@PLT
	movl	%eax, %edi
	addl	$4, %esp
	pushl	0(%ebp,%esi,4)
	call	myatoi@PLT
	addl	$16, %esp
	cmpl	%edi, %eax
	je	.L8
	subl	$8, %esp
	pushl	%edi
	pushl	%eax
	movl	24(%esp), %eax
	pushl	(%eax,%esi,4)
	pushl	%esi
	leal	.LC2@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	addl	$32, %esp
	jmp	.L3
.L7:
	pushl	$4
	pushl	16(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	leal	.LC4@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	basic_test, .-basic_test
	.section	.rodata.str1.4
	.align 4
.LC5:
	.string	"<<<<< Begin MEDIUM Test >>>>>>"
	.align 4
.LC6:
	.string	"<<<<< MEDIUM Test Done >>>>>>\n"
	.text
	.globl	medium_test
	.type	medium_test, @function
medium_test:
	pushl	%ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$40, %esp
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	movl	$0, 12(%esp)
	movl	$0, %esi
	movl	medium@GOT(%ebx), %ebp
	movl	%ebp, 8(%esp)
	jmp	.L12
.L16:
	subl	$12, %esp
	pushl	%eax
	movl	medium@GOT(%ebx), %eax
	pushl	(%eax,%esi,4)
	pushl	%esi
	leal	.LC1@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	addl	$1, 44(%esp)
	addl	$32, %esp
.L11:
	addl	$1, %esi
	cmpl	$4, %esi
	je	.L15
.L12:
	subl	$4, %esp
	pushl	$10
	pushl	$0
	pushl	0(%ebp,%esi,4)
	call	strtol@PLT
	movl	%eax, %edi
	addl	$4, %esp
	pushl	0(%ebp,%esi,4)
	call	myatoi@PLT
	addl	$16, %esp
	cmpl	%edi, %eax
	je	.L16
	subl	$8, %esp
	pushl	%edi
	pushl	%eax
	movl	24(%esp), %eax
	pushl	(%eax,%esi,4)
	pushl	%esi
	leal	.LC2@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	addl	$32, %esp
	jmp	.L11
.L15:
	pushl	$4
	pushl	16(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	leal	.LC6@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	medium_test, .-medium_test
	.section	.rodata.str1.4
	.align 4
.LC7:
	.string	"<<<<< Begin ADVANCED Test >>>>>>"
	.align 4
.LC8:
	.string	"[%d:%s] FAIL : MINE: %d, REF: %ld \n"
	.align 4
.LC9:
	.string	"<<<<< ADVANCED Test Done >>>>>>\n"
	.text
	.globl	advanced_test
	.type	advanced_test, @function
advanced_test:
	pushl	%ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$40, %esp
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	leal	.LC7@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	movl	$0, 12(%esp)
	movl	$0, %esi
	movl	advanced@GOT(%ebx), %edi
	movl	%edi, 8(%esp)
	jmp	.L21
.L27:
	subl	$12, %esp
	pushl	%eax
	movl	advanced@GOT(%ebx), %eax
	pushl	(%eax,%esi,4)
	pushl	%esi
	leal	.LC1@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	addl	$1, 44(%esp)
	addl	$32, %esp
	jmp	.L19
.L28:
	movl	4(%esp), %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
.L20:
	subl	$4, %esp
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	movl	24(%esp), %eax
	pushl	0(%ebp,%eax)
	pushl	%esi
	leal	.LC8@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	addl	$32, %esp
.L19:
	addl	$1, %esi
	cmpl	$4, %esi
	je	.L26
.L21:
	leal	0(,%esi,4), %ebp
	subl	$4, %esp
	pushl	$10
	pushl	$0
	pushl	(%edi,%esi,4)
	call	strtol@PLT
	movl	%eax, 20(%esp)
	addl	$4, %esp
	pushl	(%edi,%esi,4)
	call	myatoi@PLT
	addl	$16, %esp
	cmpl	4(%esp), %eax
	je	.L27
	cmpl	$3, %esi
	je	.L22
	cmpl	$2, %esi
	jne	.L28
	movl	$-2147483648, %edx
	movl	$-1, %ecx
	jmp	.L20
.L22:
	movl	$2147483647, %edx
	movl	$0, %ecx
	jmp	.L20
.L26:
	pushl	$4
	pushl	16(%esp)
	leal	.LC3@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	leal	.LC9@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	call	puts@PLT
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	advanced_test, .-advanced_test
	.section	.rodata.str1.1
.LC10:
	.string	"Benchmark preparing..."
.LC11:
	.string	"352"
.LC12:
	.string	"2147483640"
.LC13:
	.string	"-155852"
.LC14:
	.string	"+2351"
.LC15:
	.string	"\t256"
.LC16:
	.string	"         -658"
.LC17:
	.string	"\n 23452"
.LC18:
	.string	"-2561_ds"
.LC19:
	.string	"- 256adfs"
.LC20:
	.string	"   -a2sdfdfda"
.LC21:
	.string	"\n-99999999999"
.LC22:
	.string	"   +77777788888877"
	.section	.rodata.str1.4
	.align 4
.LC23:
	.string	"Benchmark prepare done. Test begin"
	.text
	.globl	init
	.type	init, @function
init:
	pushl	%ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$24, %esp
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	leal	.LC10@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	movl	$0, %esi
	movl	basic@GOT(%ebx), %ebp
	movl	medium@GOT(%ebx), %edi
.L30:
	subl	$12, %esp
	pushl	$100
	call	malloc@PLT
	movl	%eax, (%esi,%ebp)
	movl	$100, (%esp)
	call	malloc@PLT
	movl	%eax, (%esi,%edi)
	movl	$100, (%esp)
	call	malloc@PLT
	movl	advanced@GOT(%ebx), %edx
	movl	%eax, (%esi,%edx)
	addl	$4, %esi
	addl	$16, %esp
	cmpl	$16, %esi
	jne	.L30
	movl	basic@GOT(%ebx), %eax
	leal	.LC11@GOTOFF(%ebx), %edx
	movl	%edx, (%eax)
	leal	.LC12@GOTOFF(%ebx), %edx
	movl	%edx, 4(%eax)
	leal	.LC13@GOTOFF(%ebx), %edx
	movl	%edx, 8(%eax)
	leal	.LC14@GOTOFF(%ebx), %edx
	movl	%edx, 12(%eax)
	movl	medium@GOT(%ebx), %eax
	leal	.LC15@GOTOFF(%ebx), %edx
	movl	%edx, (%eax)
	leal	.LC16@GOTOFF(%ebx), %edx
	movl	%edx, 4(%eax)
	leal	.LC17@GOTOFF(%ebx), %edx
	movl	%edx, 8(%eax)
	leal	.LC18@GOTOFF(%ebx), %edx
	movl	%edx, 12(%eax)
	movl	advanced@GOT(%ebx), %eax
	leal	.LC19@GOTOFF(%ebx), %edx
	movl	%edx, (%eax)
	leal	.LC20@GOTOFF(%ebx), %edx
	movl	%edx, 4(%eax)
	leal	.LC21@GOTOFF(%ebx), %edx
	movl	%edx, 8(%eax)
	leal	.LC22@GOTOFF(%ebx), %edx
	movl	%edx, 12(%eax)
	subl	$12, %esp
	leal	.LC23@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$28, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	init, .-init
	.section	.rodata.str1.1
.LC24:
	.string	"res=%u,%u\n"
	.text
	.globl	main
	.type	main, @function
main:
	leal	4(%esp), %ecx
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	subl	$28, %esp
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	movl	$875770417, -38(%ebp)
	movl	$0, -34(%ebp)
	movw	$0, -30(%ebp)
	call	init
	subl	$12, %esp
	leal	-38(%ebp), %esi
	pushl	%esi
	call	myatoi@PLT
	pushl	%esi
	pushl	%eax
	leal	.LC24@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	addl	$32, %esp
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	jne	.L36
	movl	$0, %eax
	leal	-12(%ebp), %esp
	popl	%ecx
	popl	%ebx
	popl	%esi
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
.L36:
	call	__stack_chk_fail_local
	.size	main, .-main
	.comm	advanced,16,4
	.comm	medium,16,4
	.comm	basic,16,4
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
	movl	(%esp), %ebx
	ret
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
