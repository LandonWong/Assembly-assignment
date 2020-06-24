	.file	"main.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"<<<<< Begin BASIC Test >>>>>>"
.LC1:
	.string	"[%d] PASS : %d\n"
.LC2:
	.string	"str:%s\n"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC3:
	.string	"[%d] FAIL : MINE: %d, REF: %d\n"
	.section	.rodata.str1.1
.LC4:
	.string	"pass %d / %d\n"
.LC5:
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
	pushl	%eax
	pushl	%esi
	leal	.LC1@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	addl	$12, %esp
	movl	basic@GOT(%ebx), %eax
	pushl	(%eax,%esi,4)
	leal	.LC2@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	addl	$1, 28(%esp)
	addl	$16, %esp
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
	subl	$12, %esp
	pushl	%edi
	pushl	%eax
	pushl	%esi
	leal	.LC3@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	addl	$28, %esp
	movl	12(%esp), %eax
	pushl	(%eax,%esi,4)
	leal	.LC2@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	addl	$16, %esp
	jmp	.L3
.L7:
	pushl	$4
	pushl	16(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	leal	.LC5@GOTOFF(%ebx), %eax
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
.LC6:
	.string	"<<<<< Begin MEDIUM Test >>>>>>"
	.align 4
.LC7:
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
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	movl	$0, 12(%esp)
	movl	$0, %esi
	movl	medium@GOT(%ebx), %ebp
	movl	%ebp, 8(%esp)
	jmp	.L12
.L16:
	pushl	%eax
	pushl	%esi
	leal	.LC1@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	addl	$12, %esp
	movl	medium@GOT(%ebx), %eax
	pushl	(%eax,%esi,4)
	leal	.LC2@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	addl	$1, 28(%esp)
	addl	$16, %esp
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
	subl	$12, %esp
	pushl	%edi
	pushl	%eax
	pushl	%esi
	leal	.LC3@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	addl	$28, %esp
	movl	12(%esp), %eax
	pushl	(%eax,%esi,4)
	leal	.LC2@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	addl	$16, %esp
	jmp	.L11
.L15:
	pushl	$4
	pushl	16(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	leal	.LC7@GOTOFF(%ebx), %eax
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
.LC8:
	.string	"<<<<< Begin ADVANCED Test >>>>>>"
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
	leal	.LC8@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	movl	$0, 12(%esp)
	movl	$0, %esi
	movl	advanced@GOT(%ebx), %edi
	movl	%edi, 8(%esp)
	jmp	.L24
.L28:
	cmpl	$2147483647, %eax
	je	.L19
	movl	$2147483647, %edx
	movl	$0, %ecx
.L20:
	subl	$8, %esp
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	pushl	%esi
	leal	.LC3@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	addl	$28, %esp
	movl	12(%esp), %eax
	pushl	0(%ebp,%eax)
	leal	.LC2@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	addl	$16, %esp
.L23:
	addl	$1, %esi
	cmpl	$4, %esi
	je	.L27
.L24:
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
	cmpl	$3, %esi
	je	.L28
	cmpl	$2, %esi
	je	.L29
	movl	4(%esp), %edx
	movl	%edx, %ecx
	sarl	$31, %ecx
	cmpl	4(%esp), %eax
	jne	.L20
.L19:
	pushl	%eax
	pushl	%esi
	leal	.LC1@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	addl	$12, %esp
	movl	advanced@GOT(%ebx), %eax
	pushl	0(%ebp,%eax)
	leal	.LC2@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	addl	$1, 28(%esp)
	addl	$16, %esp
	jmp	.L23
.L29:
	cmpl	$-2147483648, %eax
	je	.L19
	movl	$-2147483648, %edx
	movl	$-1, %ecx
	jmp	.L20
.L27:
	pushl	$4
	pushl	16(%esp)
	leal	.LC4@GOTOFF(%ebx), %eax
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
	.string	"\n\n\n\t 23452"
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
.L31:
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
	jne	.L31
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
	.string	"User Test: "
.LC25:
	.string	"Result = %d\n"
	.text
	.globl	main
	.type	main, @function
main:
	leal	4(%esp), %ecx
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	subl	$120, %esp
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	call	init
	call	basic_test
	call	medium_test
	call	advanced_test
	subl	$8, %esp
	leal	.LC24@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	addl	$16, %esp
	leal	-128(%ebp), %esi
	movl	stdin@GOT(%ebx), %edi
	jmp	.L35
.L36:
	addl	$1, %esi
	movb	%al, -1(%esi)
.L35:
	subl	$12, %esp
	pushl	(%edi)
	call	_IO_getc@PLT
	addl	$16, %esp
	cmpb	$-1, %al
	jne	.L36
	subl	$4, %esp
	pushl	$10
	pushl	$0
	leal	-128(%ebp), %eax
	pushl	%eax
	call	strtol@PLT
	addl	$12, %esp
	pushl	%eax
	leal	.LC25@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
	addl	$16, %esp
	movl	$0, %eax
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	jne	.L39
	leal	-16(%ebp), %esp
	popl	%ecx
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
.L39:
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
