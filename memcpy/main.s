	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.comm	src,8,8
	.comm	dst,8,8
	.globl	size
	.data
	.align 32
	.type	size, @object
	.size	size, 120
size:
	.quad	1
	.quad	2
	.quad	4
	.quad	8
	.quad	64
	.quad	9
	.quad	63
	.quad	25
	.quad	5132
	.quad	1024
	.quad	102403
	.quad	1048576
	.quad	3145794
	.quad	8389163
	.quad	10485760
	.globl	src_offset
	.align 32
	.type	src_offset, @object
	.size	src_offset, 60
src_offset:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	7
	.long	9
	.long	4
	.long	8
	.long	12
	.long	1
	.long	3
	.long	5
	.globl	dst_offset
	.align 32
	.type	dst_offset, @object
	.size	dst_offset, 60
dst_offset:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4
	.long	8
	.long	12
	.long	1
	.long	3
	.long	5
	.long	7
	.text
	.type	rdtsc, @function
rdtsc:
.LFB5:
	.file 1 "main.c"
	.loc 1 19 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtsc
# 0 "" 2
#NO_APP
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	.loc 1 22 0
	movq	-8(%rbp), %rax
	salq	$32, %rax
	orq	-16(%rbp), %rax
	.loc 1 23 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	rdtsc, .-rdtsc
	.globl	InitSrcArea
	.type	InitSrcArea, @function
InitSrcArea:
.LFB6:
	.loc 1 29 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	.loc 1 31 0
	movq	src(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 1 32 0
	jmp	.L4
.L5:
	.loc 1 33 0
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	.loc 1 34 0
	subl	$1, -20(%rbp)
	.loc 1 35 0
	addq	$1, -8(%rbp)
.L4:
	.loc 1 32 0
	cmpl	$0, -20(%rbp)
	jne	.L5
	.loc 1 37 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	InitSrcArea, .-InitSrcArea
	.globl	char_memcpy
	.type	char_memcpy, @function
char_memcpy:
.LFB7:
	.loc 1 41 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 1 42 0
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 43 0
	jmp	.L7
.L8:
	.loc 1 44 0
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	%ecx, %edx
	movb	%dl, (%rax)
	.loc 1 45 0
	subq	$1, -40(%rbp)
.L7:
	.loc 1 43 0
	cmpq	$0, -40(%rbp)
	jne	.L8
	.loc 1 47 0
	movq	-24(%rbp), %rax
	.loc 1 48 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	char_memcpy, .-char_memcpy
	.globl	check
	.type	check, @function
check:
.LFB8:
	.loc 1 51 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 1 52 0
	jmp	.L11
.L14:
	.loc 1 54 0
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L12
	.loc 1 55 0
	movl	$0, %eax
	jmp	.L13
.L12:
	.loc 1 57 0
	addq	$1, -8(%rbp)
	.loc 1 58 0
	addq	$1, -16(%rbp)
	.loc 1 59 0
	subq	$1, -24(%rbp)
.L11:
	.loc 1 52 0
	cmpq	$0, -24(%rbp)
	jne	.L14
	.loc 1 61 0
	movl	$1, %eax
.L13:
	.loc 1 62 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	check, .-check
	.section	.rodata
	.align 8
.LC0:
	.string	"========================================"
	.align 8
.LC1:
	.string	"Test %2d:\tsize = 0x%6lx\n\t0x%x -> 0x%x\n"
.LC2:
	.string	"Failed. "
	.align 8
.LC3:
	.string	"Passed. \n\nmymemcpy durtime:\t%d\n"
.LC4:
	.string	"glib2.0 memcpy durtime:\t%d\n"
.LC5:
	.string	"1-char copy durtime:\t%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB9:
	.loc 1 65 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.loc 1 67 0
	movl	$0, -20(%rbp)
	.loc 1 68 0
	movl	$12582912, %edi
	call	malloc@PLT
	movq	%rax, src(%rip)
	.loc 1 69 0
	movl	$12582912, %edi
	call	malloc@PLT
	movq	%rax, dst(%rip)
	.loc 1 70 0
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
.LBB2:
	.loc 1 71 0
	movl	$6, -24(%rbp)
	jmp	.L16
.L19:
	.loc 1 72 0
	movq	dst(%rip), %rdx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	dst_offset(%rip), %rax
	movl	(%rcx,%rax), %eax
	cltq
	leaq	(%rdx,%rax), %rdi
	movq	src(%rip), %rdx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	src_offset(%rip), %rax
	movl	(%rcx,%rax), %eax
	cltq
	addq	%rax, %rdx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	size(%rip), %rax
	movq	(%rcx,%rax), %rax
	movl	-24(%rbp), %ecx
	leal	1(%rcx), %esi
	movq	%rdi, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 73 0
	movl	$12582912, %edi
	call	InitSrcArea
	.loc 1 74 0
	movq	dst(%rip), %rax
	movl	$12582912, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 75 0
	movl	$0, %eax
	call	rdtsc
	movq	%rax, -16(%rbp)
	.loc 1 76 0
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	size(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	src(%rip), %rcx
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rsi
	leaq	src_offset(%rip), %rdx
	movl	(%rsi,%rdx), %edx
	movslq	%edx, %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	dst(%rip), %rcx
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rdi
	leaq	dst_offset(%rip), %rdx
	movl	(%rdi,%rdx), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	mymemcpy@PLT
	.loc 1 77 0
	movl	$0, %eax
	call	rdtsc
	movq	%rax, -8(%rbp)
	.loc 1 78 0
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	size(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	src(%rip), %rcx
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rsi
	leaq	src_offset(%rip), %rdx
	movl	(%rsi,%rdx), %edx
	movslq	%edx, %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	dst(%rip), %rcx
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rdi
	leaq	dst_offset(%rip), %rdx
	movl	(%rdi,%rdx), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	check
	movl	%eax, -20(%rbp)
	.loc 1 79 0
	cmpl	$0, -20(%rbp)
	jne	.L17
	.loc 1 79 0 is_stmt 0 discriminator 1
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	jmp	.L18
.L17:
	.loc 1 81 0 is_stmt 1
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 82 0
	movq	dst(%rip), %rax
	movl	$12582912, %edx
	movl	$-2, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 83 0
	movl	$12582912, %edi
	call	InitSrcArea
	.loc 1 84 0
	movl	$0, %eax
	call	rdtsc
	movq	%rax, -16(%rbp)
	.loc 1 85 0
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	size(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	src(%rip), %rcx
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rsi
	leaq	src_offset(%rip), %rdx
	movl	(%rsi,%rdx), %edx
	movslq	%edx, %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	dst(%rip), %rcx
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rdi
	leaq	dst_offset(%rip), %rdx
	movl	(%rdi,%rdx), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy@PLT
	.loc 1 86 0
	movl	$0, %eax
	call	rdtsc
	movq	%rax, -8(%rbp)
	.loc 1 87 0
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 88 0
	movq	dst(%rip), %rax
	movl	$12582912, %edx
	movl	$-1, %esi
	movq	%rax, %rdi
	call	memset@PLT
	.loc 1 89 0
	movl	$12582912, %edi
	call	InitSrcArea
	.loc 1 90 0
	movl	$0, %eax
	call	rdtsc
	movq	%rax, -16(%rbp)
	.loc 1 91 0
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	size(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	src(%rip), %rcx
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rsi
	leaq	src_offset(%rip), %rdx
	movl	(%rsi,%rdx), %edx
	movslq	%edx, %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	dst(%rip), %rcx
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rdi
	leaq	dst_offset(%rip), %rdx
	movl	(%rdi,%rdx), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	char_memcpy
	.loc 1 92 0
	movl	$0, %eax
	call	rdtsc
	movq	%rax, -8(%rbp)
	.loc 1 93 0
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L18:
	.loc 1 95 0 discriminator 2
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	.loc 1 71 0 discriminator 2
	addl	$1, -24(%rbp)
.L16:
	.loc 1 71 0 is_stmt 0 discriminator 1
	cmpl	$6, -24(%rbp)
	jle	.L19
.LBE2:
	.loc 1 97 0 is_stmt 1
	movl	$0, %eax
	.loc 1 98 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 7 "/usr/include/x86_64-linux-gnu/sys/time.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x551
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF72
	.byte	0xc
	.long	.LASF73
	.long	.LASF74
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd8
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x8c
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x8d
	.long	0x69
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x8e
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x7
	.long	0x8e
	.uleb128 0x8
	.long	.LASF40
	.byte	0xd8
	.byte	0x4
	.byte	0xf5
	.long	0x21a
	.uleb128 0x9
	.long	.LASF11
	.byte	0x4
	.byte	0xf6
	.long	0x62
	.byte	0
	.uleb128 0x9
	.long	.LASF12
	.byte	0x4
	.byte	0xfb
	.long	0x88
	.byte	0x8
	.uleb128 0x9
	.long	.LASF13
	.byte	0x4
	.byte	0xfc
	.long	0x88
	.byte	0x10
	.uleb128 0x9
	.long	.LASF14
	.byte	0x4
	.byte	0xfd
	.long	0x88
	.byte	0x18
	.uleb128 0x9
	.long	.LASF15
	.byte	0x4
	.byte	0xfe
	.long	0x88
	.byte	0x20
	.uleb128 0x9
	.long	.LASF16
	.byte	0x4
	.byte	0xff
	.long	0x88
	.byte	0x28
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.value	0x100
	.long	0x88
	.byte	0x30
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.value	0x101
	.long	0x88
	.byte	0x38
	.uleb128 0xa
	.long	.LASF19
	.byte	0x4
	.value	0x102
	.long	0x88
	.byte	0x40
	.uleb128 0xa
	.long	.LASF20
	.byte	0x4
	.value	0x104
	.long	0x88
	.byte	0x48
	.uleb128 0xa
	.long	.LASF21
	.byte	0x4
	.value	0x105
	.long	0x88
	.byte	0x50
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.value	0x106
	.long	0x88
	.byte	0x58
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.value	0x108
	.long	0x252
	.byte	0x60
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.value	0x10a
	.long	0x258
	.byte	0x68
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.value	0x10c
	.long	0x62
	.byte	0x70
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.value	0x110
	.long	0x62
	.byte	0x74
	.uleb128 0xa
	.long	.LASF27
	.byte	0x4
	.value	0x112
	.long	0x70
	.byte	0x78
	.uleb128 0xa
	.long	.LASF28
	.byte	0x4
	.value	0x116
	.long	0x46
	.byte	0x80
	.uleb128 0xa
	.long	.LASF29
	.byte	0x4
	.value	0x117
	.long	0x54
	.byte	0x82
	.uleb128 0xa
	.long	.LASF30
	.byte	0x4
	.value	0x118
	.long	0x25e
	.byte	0x83
	.uleb128 0xa
	.long	.LASF31
	.byte	0x4
	.value	0x11c
	.long	0x26e
	.byte	0x88
	.uleb128 0xa
	.long	.LASF32
	.byte	0x4
	.value	0x125
	.long	0x7b
	.byte	0x90
	.uleb128 0xa
	.long	.LASF33
	.byte	0x4
	.value	0x12d
	.long	0x86
	.byte	0x98
	.uleb128 0xa
	.long	.LASF34
	.byte	0x4
	.value	0x12e
	.long	0x86
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF35
	.byte	0x4
	.value	0x12f
	.long	0x86
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF36
	.byte	0x4
	.value	0x130
	.long	0x86
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x4
	.value	0x132
	.long	0x2d
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x4
	.value	0x133
	.long	0x62
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x4
	.value	0x135
	.long	0x274
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF75
	.byte	0x4
	.byte	0x9a
	.uleb128 0x8
	.long	.LASF41
	.byte	0x18
	.byte	0x4
	.byte	0xa0
	.long	0x252
	.uleb128 0x9
	.long	.LASF42
	.byte	0x4
	.byte	0xa1
	.long	0x252
	.byte	0
	.uleb128 0x9
	.long	.LASF43
	.byte	0x4
	.byte	0xa2
	.long	0x258
	.byte	0x8
	.uleb128 0x9
	.long	.LASF44
	.byte	0x4
	.byte	0xa6
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x221
	.uleb128 0x6
	.byte	0x8
	.long	0x9a
	.uleb128 0xc
	.long	0x8e
	.long	0x26e
	.uleb128 0xd
	.long	0x38
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x21a
	.uleb128 0xc
	.long	0x8e
	.long	0x284
	.uleb128 0xd
	.long	0x38
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF76
	.uleb128 0xf
	.long	.LASF45
	.byte	0x4
	.value	0x13f
	.long	0x284
	.uleb128 0xf
	.long	.LASF46
	.byte	0x4
	.value	0x140
	.long	0x284
	.uleb128 0xf
	.long	.LASF47
	.byte	0x4
	.value	0x141
	.long	0x284
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x7
	.long	0x2ad
	.uleb128 0x10
	.long	.LASF48
	.byte	0x5
	.byte	0x87
	.long	0x258
	.uleb128 0x10
	.long	.LASF49
	.byte	0x5
	.byte	0x88
	.long	0x258
	.uleb128 0x10
	.long	.LASF50
	.byte	0x5
	.byte	0x89
	.long	0x258
	.uleb128 0x10
	.long	.LASF51
	.byte	0x6
	.byte	0x1a
	.long	0x62
	.uleb128 0xc
	.long	0x2b3
	.long	0x2ef
	.uleb128 0x11
	.byte	0
	.uleb128 0x7
	.long	0x2e4
	.uleb128 0x10
	.long	.LASF52
	.byte	0x6
	.byte	0x1b
	.long	0x2ef
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF53
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF54
	.uleb128 0x6
	.byte	0x8
	.long	0x313
	.uleb128 0x12
	.uleb128 0x8
	.long	.LASF55
	.byte	0x8
	.byte	0x7
	.byte	0x34
	.long	0x339
	.uleb128 0x9
	.long	.LASF56
	.byte	0x7
	.byte	0x36
	.long	0x62
	.byte	0
	.uleb128 0x9
	.long	.LASF57
	.byte	0x7
	.byte	0x37
	.long	0x62
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x314
	.uleb128 0x13
	.long	0x339
	.uleb128 0x14
	.string	"src"
	.byte	0x1
	.byte	0x7
	.long	0x359
	.uleb128 0x9
	.byte	0x3
	.quad	src
	.uleb128 0x6
	.byte	0x8
	.long	0x35f
	.uleb128 0x15
	.uleb128 0x14
	.string	"dst"
	.byte	0x1
	.byte	0x8
	.long	0x359
	.uleb128 0x9
	.byte	0x3
	.quad	dst
	.uleb128 0xc
	.long	0x38
	.long	0x385
	.uleb128 0xd
	.long	0x38
	.byte	0xe
	.byte	0
	.uleb128 0x16
	.long	.LASF58
	.byte	0x1
	.byte	0xa
	.long	0x375
	.uleb128 0x9
	.byte	0x3
	.quad	size
	.uleb128 0xc
	.long	0x62
	.long	0x3aa
	.uleb128 0xd
	.long	0x38
	.byte	0xe
	.byte	0
	.uleb128 0x16
	.long	.LASF59
	.byte	0x1
	.byte	0xd
	.long	0x39a
	.uleb128 0x9
	.byte	0x3
	.quad	src_offset
	.uleb128 0x16
	.long	.LASF60
	.byte	0x1
	.byte	0xf
	.long	0x39a
	.uleb128 0x9
	.byte	0x3
	.quad	dst_offset
	.uleb128 0x17
	.long	.LASF67
	.byte	0x1
	.byte	0x41
	.long	0x62
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x43e
	.uleb128 0x18
	.long	.LASF61
	.byte	0x1
	.byte	0x42
	.long	0x38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	.LASF62
	.byte	0x1
	.byte	0x42
	.long	0x38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF63
	.byte	0x1
	.byte	0x43
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x47
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF65
	.byte	0x1
	.byte	0x33
	.long	0x62
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x488
	.uleb128 0x1c
	.long	.LASF64
	.byte	0x1
	.byte	0x33
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"src"
	.byte	0x1
	.byte	0x33
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.byte	0x33
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1b
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.long	0x86
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e0
	.uleb128 0x1c
	.long	.LASF64
	.byte	0x1
	.byte	0x29
	.long	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"src"
	.byte	0x1
	.byte	0x29
	.long	0x30d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.byte	0x29
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.string	"tmp"
	.byte	0x1
	.byte	0x2a
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1e
	.long	.LASF68
	.byte	0x1
	.byte	0x1d
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x51a
	.uleb128 0x1c
	.long	.LASF58
	.byte	0x1
	.byte	0x1d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.long	.LASF69
	.byte	0x1
	.byte	0x1f
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.long	.LASF77
	.byte	0x1
	.byte	0x13
	.long	0x38
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x18
	.long	.LASF70
	.byte	0x1
	.byte	0x14
	.long	0x38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	.LASF71
	.byte	0x1
	.byte	0x14
	.long	0x38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"__off_t"
.LASF12:
	.string	"_IO_read_ptr"
.LASF24:
	.string	"_chain"
.LASF7:
	.string	"size_t"
.LASF59:
	.string	"src_offset"
.LASF30:
	.string	"_shortbuf"
.LASF47:
	.string	"_IO_2_1_stderr_"
.LASF18:
	.string	"_IO_buf_base"
.LASF54:
	.string	"long long unsigned int"
.LASF68:
	.string	"InitSrcArea"
.LASF53:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF25:
	.string	"_fileno"
.LASF13:
	.string	"_IO_read_end"
.LASF6:
	.string	"long int"
.LASF65:
	.string	"check"
.LASF11:
	.string	"_flags"
.LASF19:
	.string	"_IO_buf_end"
.LASF28:
	.string	"_cur_column"
.LASF27:
	.string	"_old_offset"
.LASF32:
	.string	"_offset"
.LASF55:
	.string	"timezone"
.LASF41:
	.string	"_IO_marker"
.LASF48:
	.string	"stdin"
.LASF3:
	.string	"unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF74:
	.string	"/home/landon/AssembleLangFinal/memcpy"
.LASF76:
	.string	"_IO_FILE_plus"
.LASF16:
	.string	"_IO_write_ptr"
.LASF51:
	.string	"sys_nerr"
.LASF43:
	.string	"_sbuf"
.LASF61:
	.string	"tick1"
.LASF62:
	.string	"tick2"
.LASF58:
	.string	"size"
.LASF2:
	.string	"short unsigned int"
.LASF20:
	.string	"_IO_save_base"
.LASF73:
	.string	"main.c"
.LASF56:
	.string	"tz_minuteswest"
.LASF31:
	.string	"_lock"
.LASF26:
	.string	"_flags2"
.LASF38:
	.string	"_mode"
.LASF49:
	.string	"stdout"
.LASF45:
	.string	"_IO_2_1_stdin_"
.LASF71:
	.string	"tickh"
.LASF70:
	.string	"tickl"
.LASF17:
	.string	"_IO_write_end"
.LASF69:
	.string	"psrc"
.LASF75:
	.string	"_IO_lock_t"
.LASF40:
	.string	"_IO_FILE"
.LASF64:
	.string	"dest"
.LASF44:
	.string	"_pos"
.LASF52:
	.string	"sys_errlist"
.LASF23:
	.string	"_markers"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF29:
	.string	"_vtable_offset"
.LASF46:
	.string	"_IO_2_1_stdout_"
.LASF72:
	.string	"GNU C11 7.5.0 -mmmx -mtune=generic -march=x86-64 -g -fno-asynchronous-unwind-tables -fstack-protector-strong"
.LASF66:
	.string	"char_memcpy"
.LASF77:
	.string	"rdtsc"
.LASF10:
	.string	"char"
.LASF42:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF14:
	.string	"_IO_read_base"
.LASF22:
	.string	"_IO_save_end"
.LASF33:
	.string	"__pad1"
.LASF34:
	.string	"__pad2"
.LASF35:
	.string	"__pad3"
.LASF36:
	.string	"__pad4"
.LASF37:
	.string	"__pad5"
.LASF39:
	.string	"_unused2"
.LASF50:
	.string	"stderr"
.LASF60:
	.string	"dst_offset"
.LASF57:
	.string	"tz_dsttime"
.LASF21:
	.string	"_IO_backup_base"
.LASF63:
	.string	"pass"
.LASF67:
	.string	"main"
.LASF15:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
