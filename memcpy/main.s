	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.p2align 4,,15
	.globl	InitSrcArea
	.type	InitSrcArea, @function
InitSrcArea:
.LFB53:
	.file 1 "main.c"
	.loc 1 29 0
	.cfi_startproc
.LVL0:
	.loc 1 32 0
	testl	%edi, %edi
	.loc 1 31 0
	movq	src(%rip), %rax
.LVL1:
	.loc 1 32 0
	je	.L1
	.p2align 4,,10
	.p2align 3
.L3:
.LVL2:
	.loc 1 33 0
	movb	%dil, (%rax)
	.loc 1 35 0
	addq	$1, %rax
.LVL3:
	.loc 1 32 0
	subl	$1, %edi
.LVL4:
	jne	.L3
.L1:
	.loc 1 37 0
	rep ret
	.cfi_endproc
.LFE53:
	.size	InitSrcArea, .-InitSrcArea
	.p2align 4,,15
	.globl	char_memcpy
	.type	char_memcpy, @function
char_memcpy:
.LFB54:
	.loc 1 41 0
	.cfi_startproc
.LVL5:
	.loc 1 43 0
	testq	%rdx, %rdx
	.loc 1 41 0
	movq	%rdi, %rax
.LVL6:
	.loc 1 43 0
	je	.L10
	addq	%rdi, %rdx
.LVL7:
	.loc 1 42 0
	movq	%rdi, %rcx
.LVL8:
	.p2align 4,,10
	.p2align 3
.L11:
	.loc 1 44 0
	addq	$1, %rcx
.LVL9:
	movb	%sil, -1(%rcx)
.LVL10:
	addq	$1, %rsi
.LVL11:
	.loc 1 43 0
	cmpq	%rcx, %rdx
	jne	.L11
.LVL12:
.L10:
	.loc 1 48 0
	rep ret
	.cfi_endproc
.LFE54:
	.size	char_memcpy, .-char_memcpy
	.p2align 4,,15
	.globl	check
	.type	check, @function
check:
.LFB55:
	.loc 1 51 0
	.cfi_startproc
.LVL13:
	.loc 1 52 0
	testq	%rdx, %rdx
	je	.L20
	.loc 1 54 0
	movzbl	(%rsi), %eax
	cmpb	%al, (%rdi)
	jne	.L22
	addq	%rdi, %rdx
.LVL14:
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L19:
	movzbl	(%rsi), %eax
	cmpb	%al, (%rdi)
	jne	.L22
.LVL15:
.L18:
	.loc 1 57 0
	addq	$1, %rdi
.LVL16:
	.loc 1 58 0
	addq	$1, %rsi
.LVL17:
	.loc 1 52 0
	cmpq	%rdi, %rdx
	jne	.L19
.LVL18:
.L20:
	.loc 1 61 0
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L22:
	.loc 1 55 0
	xorl	%eax, %eax
	.loc 1 62 0
	ret
	.cfi_endproc
.LFE55:
	.size	check, .-check
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Test %2d:\tsize = %6x\n\t%x -> %x\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Failed. "
.LC2:
	.string	"Passed. \nDurTime: %d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB56:
	.loc 1 65 0
	.cfi_startproc
.LVL19:
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	.loc 1 68 0
	movl	$12582912, %edi
	.loc 1 65 0
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leaq	dst_offset(%rip), %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	src_offset(%rip), %r12
	leaq	size(%rip), %rbp
	.loc 1 69 0
	movl	$1, %r15d
	.loc 1 65 0
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.loc 1 68 0
	call	malloc@PLT
.LVL20:
	.loc 1 69 0
	movl	$12582912, %edi
	.loc 1 68 0
	movq	%rax, %rbx
	movq	%rax, src(%rip)
	.loc 1 69 0
	call	malloc@PLT
.LVL21:
	movq	%rax, dst(%rip)
.LVL22:
	.p2align 4,,10
	.p2align 3
.L30:
.LBB28:
	.loc 1 71 0
	movslq	0(%r13,%r15,4), %rsi
	movslq	(%r12,%r15,4), %rdx
.LBB29:
.LBB30:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	movl	$1, %edi
	movl	0(%rbp,%r15,4), %ecx
	leaq	0(,%r15,4), %r14
.LVL23:
	leaq	(%rax,%rsi), %r9
	leaq	(%rbx,%rdx), %r8
	leaq	.LC0(%rip), %rsi
	movl	%r15d, %edx
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL24:
.LBE30:
.LBE29:
.LBB31:
.LBB32:
	.loc 1 31 0
	movq	src(%rip), %rcx
.LVL25:
	leaq	12582912(%rcx), %rsi
	movq	%rcx, %rax
.LVL26:
	.p2align 4,,10
	.p2align 3
.L24:
	.loc 1 33 0
	movl	%ecx, %edx
	subl	%eax, %edx
	.loc 1 35 0
	addq	$1, %rax
.LVL27:
	.loc 1 33 0
	movb	%dl, -1(%rax)
.LVL28:
	.loc 1 32 0
	cmpq	%rsi, %rax
	jne	.L24
.LVL29:
.LBE32:
.LBE31:
.LBB33:
.LBB34:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 3 71 0
	movq	dst(%rip), %rdi
	movl	$12582912, %edx
	movl	$-1, %esi
	call	memset@PLT
.LVL30:
.LBE34:
.LBE33:
.LBB35:
.LBB36:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtscp
# 0 "" 2
#NO_APP
.LBE36:
.LBE35:
	.loc 1 75 0
	movslq	(%r12,%r14), %rsi
	movslq	0(%r13,%r14), %rdi
.LBB42:
.LBB37:
	.loc 1 21 0
	movq	%rdx, %rbx
.LBE37:
.LBE42:
	.loc 1 75 0
	addq	src(%rip), %rsi
	movslq	0(%rbp,%r14), %rdx
	addq	dst(%rip), %rdi
.LBB43:
.LBB38:
	.loc 1 21 0
	movq	%rax, 8(%rsp)
.LBE38:
.LBE43:
	.loc 1 75 0
	call	mymemcpy@PLT
.LVL31:
.LBB44:
.LBB45:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtscp
# 0 "" 2
#NO_APP
.LBE45:
.LBE44:
	.loc 1 77 0
	movslq	0(%rbp,%r14), %r9
	movslq	(%r12,%r14), %rdi
	movslq	0(%r13,%r14), %r8
	addq	src(%rip), %rdi
	addq	dst(%rip), %r8
.LVL32:
.LBB48:
.LBB49:
	.loc 1 52 0
	testq	%r9, %r9
	je	.L25
	.loc 1 54 0
	movzbl	(%r8), %esi
	cmpb	%sil, (%rdi)
	jne	.L26
	movl	$1, %ecx
	jmp	.L27
.LVL33:
	.p2align 4,,10
	.p2align 3
.L28:
	movzbl	(%r8,%rcx), %esi
	addq	$1, %rcx
.LVL34:
	cmpb	-1(%rdi,%rcx), %sil
	jne	.L26
.LVL35:
.L27:
	.loc 1 52 0
	cmpq	%rcx, %r9
	jne	.L28
.LVL36:
.L25:
.LBE49:
.LBE48:
.LBB50:
.LBB39:
	.loc 1 22 0
	movq	8(%rsp), %r14
.LBE39:
.LBE50:
.LBB51:
.LBB46:
	salq	$32, %rdx
.LBE46:
.LBE51:
.LBB52:
.LBB40:
	salq	$32, %rbx
.LBE40:
.LBE52:
.LBB53:
.LBB47:
	orq	%rax, %rdx
.LBE47:
.LBE53:
.LBB54:
.LBB55:
	.loc 2 104 0
	leaq	.LC2(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	addq	$1, %r15
.LVL37:
.LBE55:
.LBE54:
.LBB57:
.LBB41:
	.loc 1 22 0
	orq	%rbx, %r14
.LBE41:
.LBE57:
	.loc 1 80 0
	subq	%r14, %rdx
.LBB58:
.LBB56:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL38:
.LBE56:
.LBE58:
	.loc 1 70 0
	cmpq	$16, %r15
	je	.L33
.LVL39:
.L38:
	movq	dst(%rip), %rax
	movq	src(%rip), %rbx
	jmp	.L30
.LVL40:
.L26:
.LBB59:
.LBB60:
	.loc 2 104 0
	leaq	.LC1(%rip), %rdi
	addq	$1, %r15
.LVL41:
	call	puts@PLT
.LVL42:
.LBE60:
.LBE59:
	.loc 1 70 0
	cmpq	$16, %r15
	jne	.L38
.LVL43:
.L33:
.LBE28:
	.loc 1 84 0
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE56:
	.size	main, .-main
	.globl	dst_offset
	.data
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
	.globl	size
	.align 32
	.type	size, @object
	.size	size, 60
size:
	.long	1
	.long	2
	.long	4
	.long	8
	.long	64
	.long	9
	.long	63
	.long	25
	.long	5132
	.long	1024
	.long	102403
	.long	1048576
	.long	3145794
	.long	8389163
	.long	10485760
	.comm	dst,8,8
	.comm	src,8,8
	.text
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 9 "/usr/include/x86_64-linux-gnu/sys/time.h"
	.file 10 "<built-in>"
	.file 11 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x817
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF80
	.byte	0xc
	.long	.LASF81
	.long	.LASF82
	.long	.Ldebug_ranges0+0xe0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x4
	.byte	0xd8
	.long	0x34
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
	.byte	0x5
	.byte	0x8c
	.long	0x65
	.uleb128 0x2
	.long	.LASF9
	.byte	0x5
	.byte	0x8d
	.long	0x65
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x8a
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x7
	.long	0x8a
	.uleb128 0x8
	.long	.LASF40
	.byte	0xd8
	.byte	0x6
	.byte	0xf5
	.long	0x216
	.uleb128 0x9
	.long	.LASF11
	.byte	0x6
	.byte	0xf6
	.long	0x5e
	.byte	0
	.uleb128 0x9
	.long	.LASF12
	.byte	0x6
	.byte	0xfb
	.long	0x84
	.byte	0x8
	.uleb128 0x9
	.long	.LASF13
	.byte	0x6
	.byte	0xfc
	.long	0x84
	.byte	0x10
	.uleb128 0x9
	.long	.LASF14
	.byte	0x6
	.byte	0xfd
	.long	0x84
	.byte	0x18
	.uleb128 0x9
	.long	.LASF15
	.byte	0x6
	.byte	0xfe
	.long	0x84
	.byte	0x20
	.uleb128 0x9
	.long	.LASF16
	.byte	0x6
	.byte	0xff
	.long	0x84
	.byte	0x28
	.uleb128 0xa
	.long	.LASF17
	.byte	0x6
	.value	0x100
	.long	0x84
	.byte	0x30
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.value	0x101
	.long	0x84
	.byte	0x38
	.uleb128 0xa
	.long	.LASF19
	.byte	0x6
	.value	0x102
	.long	0x84
	.byte	0x40
	.uleb128 0xa
	.long	.LASF20
	.byte	0x6
	.value	0x104
	.long	0x84
	.byte	0x48
	.uleb128 0xa
	.long	.LASF21
	.byte	0x6
	.value	0x105
	.long	0x84
	.byte	0x50
	.uleb128 0xa
	.long	.LASF22
	.byte	0x6
	.value	0x106
	.long	0x84
	.byte	0x58
	.uleb128 0xa
	.long	.LASF23
	.byte	0x6
	.value	0x108
	.long	0x24e
	.byte	0x60
	.uleb128 0xa
	.long	.LASF24
	.byte	0x6
	.value	0x10a
	.long	0x254
	.byte	0x68
	.uleb128 0xa
	.long	.LASF25
	.byte	0x6
	.value	0x10c
	.long	0x5e
	.byte	0x70
	.uleb128 0xa
	.long	.LASF26
	.byte	0x6
	.value	0x110
	.long	0x5e
	.byte	0x74
	.uleb128 0xa
	.long	.LASF27
	.byte	0x6
	.value	0x112
	.long	0x6c
	.byte	0x78
	.uleb128 0xa
	.long	.LASF28
	.byte	0x6
	.value	0x116
	.long	0x42
	.byte	0x80
	.uleb128 0xa
	.long	.LASF29
	.byte	0x6
	.value	0x117
	.long	0x50
	.byte	0x82
	.uleb128 0xa
	.long	.LASF30
	.byte	0x6
	.value	0x118
	.long	0x25a
	.byte	0x83
	.uleb128 0xa
	.long	.LASF31
	.byte	0x6
	.value	0x11c
	.long	0x26a
	.byte	0x88
	.uleb128 0xa
	.long	.LASF32
	.byte	0x6
	.value	0x125
	.long	0x77
	.byte	0x90
	.uleb128 0xa
	.long	.LASF33
	.byte	0x6
	.value	0x12d
	.long	0x82
	.byte	0x98
	.uleb128 0xa
	.long	.LASF34
	.byte	0x6
	.value	0x12e
	.long	0x82
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF35
	.byte	0x6
	.value	0x12f
	.long	0x82
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF36
	.byte	0x6
	.value	0x130
	.long	0x82
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x6
	.value	0x132
	.long	0x29
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x6
	.value	0x133
	.long	0x5e
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x6
	.value	0x135
	.long	0x270
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF83
	.byte	0x6
	.byte	0x9a
	.uleb128 0x8
	.long	.LASF41
	.byte	0x18
	.byte	0x6
	.byte	0xa0
	.long	0x24e
	.uleb128 0x9
	.long	.LASF42
	.byte	0x6
	.byte	0xa1
	.long	0x24e
	.byte	0
	.uleb128 0x9
	.long	.LASF43
	.byte	0x6
	.byte	0xa2
	.long	0x254
	.byte	0x8
	.uleb128 0x9
	.long	.LASF44
	.byte	0x6
	.byte	0xa6
	.long	0x5e
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x21d
	.uleb128 0x6
	.byte	0x8
	.long	0x96
	.uleb128 0xc
	.long	0x8a
	.long	0x26a
	.uleb128 0xd
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x216
	.uleb128 0xc
	.long	0x8a
	.long	0x280
	.uleb128 0xd
	.long	0x34
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF84
	.uleb128 0xf
	.long	.LASF45
	.byte	0x6
	.value	0x13f
	.long	0x280
	.uleb128 0xf
	.long	.LASF46
	.byte	0x6
	.value	0x140
	.long	0x280
	.uleb128 0xf
	.long	.LASF47
	.byte	0x6
	.value	0x141
	.long	0x280
	.uleb128 0x6
	.byte	0x8
	.long	0x91
	.uleb128 0x7
	.long	0x2a9
	.uleb128 0x10
	.long	0x2a9
	.uleb128 0x11
	.long	.LASF48
	.byte	0x7
	.byte	0x87
	.long	0x254
	.uleb128 0x11
	.long	.LASF49
	.byte	0x7
	.byte	0x88
	.long	0x254
	.uleb128 0x11
	.long	.LASF50
	.byte	0x7
	.byte	0x89
	.long	0x254
	.uleb128 0x11
	.long	.LASF51
	.byte	0x8
	.byte	0x1a
	.long	0x5e
	.uleb128 0xc
	.long	0x2af
	.long	0x2f0
	.uleb128 0x12
	.byte	0
	.uleb128 0x7
	.long	0x2e5
	.uleb128 0x11
	.long	.LASF52
	.byte	0x8
	.byte	0x1b
	.long	0x2f0
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
	.long	0x314
	.uleb128 0x13
	.uleb128 0x8
	.long	.LASF55
	.byte	0x8
	.byte	0x9
	.byte	0x34
	.long	0x33a
	.uleb128 0x9
	.long	.LASF56
	.byte	0x9
	.byte	0x36
	.long	0x5e
	.byte	0
	.uleb128 0x9
	.long	.LASF57
	.byte	0x9
	.byte	0x37
	.long	0x5e
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x315
	.uleb128 0x10
	.long	0x33a
	.uleb128 0x14
	.string	"src"
	.byte	0x1
	.byte	0x7
	.long	0x82
	.uleb128 0x9
	.byte	0x3
	.quad	src
	.uleb128 0x14
	.string	"dst"
	.byte	0x1
	.byte	0x8
	.long	0x82
	.uleb128 0x9
	.byte	0x3
	.quad	dst
	.uleb128 0xc
	.long	0x5e
	.long	0x37f
	.uleb128 0xd
	.long	0x34
	.byte	0xe
	.byte	0
	.uleb128 0x15
	.long	.LASF58
	.byte	0x1
	.byte	0xa
	.long	0x36f
	.uleb128 0x9
	.byte	0x3
	.quad	size
	.uleb128 0x15
	.long	.LASF59
	.byte	0x1
	.byte	0xd
	.long	0x36f
	.uleb128 0x9
	.byte	0x3
	.quad	src_offset
	.uleb128 0x15
	.long	.LASF60
	.byte	0x1
	.byte	0xf
	.long	0x36f
	.uleb128 0x9
	.byte	0x3
	.quad	dst_offset
	.uleb128 0x16
	.long	.LASF85
	.byte	0x1
	.byte	0x41
	.long	0x5e
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x644
	.uleb128 0x17
	.long	.LASF61
	.byte	0x1
	.byte	0x42
	.long	0x34
	.uleb128 0x17
	.long	.LASF62
	.byte	0x1
	.byte	0x42
	.long	0x34
	.uleb128 0x18
	.long	.LASF63
	.byte	0x1
	.byte	0x43
	.long	0x5e
	.long	.LLST8
	.uleb128 0x19
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0x615
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x46
	.long	0x5e
	.long	.LLST9
	.uleb128 0x1b
	.long	0x74c
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.byte	0x1
	.byte	0x47
	.long	0x471
	.uleb128 0x1c
	.long	0x75c
	.long	.LLST10
	.uleb128 0x1d
	.quad	.LVL24
	.long	0x7cc
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x6d0
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.byte	0x1
	.byte	0x48
	.long	0x4ad
	.uleb128 0x1c
	.long	0x6dc
	.long	.LLST11
	.uleb128 0x1f
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x20
	.long	0x78d
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x71a
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.byte	0x1
	.byte	0x49
	.long	0x4ff
	.uleb128 0x1c
	.long	0x740
	.long	.LLST12
	.uleb128 0x1c
	.long	0x735
	.long	.LLST13
	.uleb128 0x1c
	.long	0x72a
	.long	.LLST14
	.uleb128 0x1d
	.quad	.LVL30
	.long	0x7d7
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x6f3
	.quad	.LBB35
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x4a
	.long	0x527
	.uleb128 0x22
	.long	.Ldebug_ranges0+0
	.uleb128 0x20
	.long	0x703
	.uleb128 0x20
	.long	0x70e
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x6f3
	.quad	.LBB44
	.long	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x4c
	.long	0x54f
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x70
	.uleb128 0x20
	.long	0x703
	.uleb128 0x20
	.long	0x70e
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x644
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.byte	0x1
	.byte	0x4d
	.long	0x586
	.uleb128 0x1c
	.long	0x66a
	.long	.LLST15
	.uleb128 0x1c
	.long	0x65f
	.long	.LLST16
	.uleb128 0x1c
	.long	0x654
	.long	.LLST17
	.byte	0
	.uleb128 0x21
	.long	0x74c
	.quad	.LBB54
	.long	.Ldebug_ranges0+0xb0
	.byte	0x1
	.byte	0x50
	.long	0x5c7
	.uleb128 0x1c
	.long	0x75c
	.long	.LLST18
	.uleb128 0x1d
	.quad	.LVL38
	.long	0x7cc
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x74c
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.byte	0x1
	.byte	0x4e
	.long	0x607
	.uleb128 0x1c
	.long	0x75c
	.long	.LLST19
	.uleb128 0x1d
	.quad	.LVL42
	.long	0x7f4
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LVL31
	.long	0x803
	.byte	0
	.uleb128 0x24
	.quad	.LVL20
	.long	0x80e
	.long	0x62e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0
	.uleb128 0x1d
	.quad	.LVL21
	.long	0x80e
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF86
	.byte	0x1
	.byte	0x33
	.long	0x5e
	.byte	0x1
	.long	0x674
	.uleb128 0x26
	.long	.LASF64
	.byte	0x1
	.byte	0x33
	.long	0x84
	.uleb128 0x27
	.string	"src"
	.byte	0x1
	.byte	0x33
	.long	0x2a9
	.uleb128 0x27
	.string	"n"
	.byte	0x1
	.byte	0x33
	.long	0x29
	.byte	0
	.uleb128 0x28
	.long	.LASF87
	.byte	0x1
	.byte	0x29
	.long	0x82
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x6d0
	.uleb128 0x29
	.long	.LASF64
	.byte	0x1
	.byte	0x29
	.long	0x82
	.long	.LLST1
	.uleb128 0x2a
	.string	"src"
	.byte	0x1
	.byte	0x29
	.long	0x30e
	.long	.LLST2
	.uleb128 0x2a
	.string	"n"
	.byte	0x1
	.byte	0x29
	.long	0x29
	.long	.LLST3
	.uleb128 0x1a
	.string	"tmp"
	.byte	0x1
	.byte	0x2a
	.long	0x84
	.long	.LLST4
	.byte	0
	.uleb128 0x2b
	.long	.LASF88
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.long	0x6f3
	.uleb128 0x26
	.long	.LASF58
	.byte	0x1
	.byte	0x1d
	.long	0x5e
	.uleb128 0x17
	.long	.LASF65
	.byte	0x1
	.byte	0x1f
	.long	0x84
	.byte	0
	.uleb128 0x2c
	.long	.LASF89
	.byte	0x1
	.byte	0x13
	.long	0x34
	.byte	0x3
	.long	0x71a
	.uleb128 0x17
	.long	.LASF66
	.byte	0x1
	.byte	0x14
	.long	0x34
	.uleb128 0x17
	.long	.LASF67
	.byte	0x1
	.byte	0x14
	.long	0x34
	.byte	0
	.uleb128 0x2d
	.long	.LASF71
	.byte	0x3
	.byte	0x3b
	.long	0x82
	.byte	0x3
	.long	0x74c
	.uleb128 0x26
	.long	.LASF68
	.byte	0x3
	.byte	0x3b
	.long	0x82
	.uleb128 0x26
	.long	.LASF69
	.byte	0x3
	.byte	0x3b
	.long	0x5e
	.uleb128 0x26
	.long	.LASF70
	.byte	0x3
	.byte	0x3b
	.long	0x29
	.byte	0
	.uleb128 0x2d
	.long	.LASF72
	.byte	0x2
	.byte	0x66
	.long	0x5e
	.byte	0x3
	.long	0x769
	.uleb128 0x26
	.long	.LASF73
	.byte	0x2
	.byte	0x66
	.long	0x2b4
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2f
	.long	0x6d0
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x795
	.uleb128 0x1c
	.long	0x6dc
	.long	.LLST0
	.uleb128 0x30
	.long	0x6e7
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x2f
	.long	0x644
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x7cc
	.uleb128 0x1c
	.long	0x654
	.long	.LLST5
	.uleb128 0x1c
	.long	0x65f
	.long	.LLST6
	.uleb128 0x1c
	.long	0x66a
	.long	.LLST7
	.byte	0
	.uleb128 0x31
	.long	.LASF77
	.long	.LASF77
	.byte	0x2
	.byte	0x57
	.uleb128 0x32
	.long	.LASF71
	.long	.LASF75
	.byte	0xa
	.byte	0
	.long	.LASF71
	.uleb128 0x33
	.uleb128 0xc
	.byte	0x9e
	.uleb128 0xa
	.byte	0x46
	.byte	0x61
	.byte	0x69
	.byte	0x6c
	.byte	0x65
	.byte	0x64
	.byte	0x2e
	.byte	0x20
	.byte	0xa
	.byte	0
	.uleb128 0x32
	.long	.LASF74
	.long	.LASF76
	.byte	0xa
	.byte	0
	.long	.LASF74
	.uleb128 0x31
	.long	.LASF78
	.long	.LASF78
	.byte	0x1
	.byte	0x1a
	.uleb128 0x34
	.long	.LASF79
	.long	.LASF79
	.byte	0xb
	.value	0x21b
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x16
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST8:
	.quad	.LVL19
	.quad	.LVL22
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL22
	.quad	.LVL37
	.value	0x1
	.byte	0x5f
	.quad	.LVL40
	.quad	.LVL41
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL23
	.quad	.LVL24
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL24
	.quad	.LVL26
	.value	0x4
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.quad	.LVL26
	.quad	.LVL27
	.value	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL29
	.quad	.LVL30
	.value	0x4
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL29
	.quad	.LVL30
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL29
	.quad	.LVL30-1
	.value	0x9
	.byte	0x3
	.quad	dst
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL32
	.quad	.LVL33
	.value	0x1
	.byte	0x59
	.quad	.LVL33
	.quad	.LVL34
	.value	0x18
	.byte	0x7e
	.sleb128 0
	.byte	0x3
	.quad	size
	.byte	0x22
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL34
	.quad	.LVL35
	.value	0x1a
	.byte	0x7e
	.sleb128 0
	.byte	0x3
	.quad	size
	.byte	0x22
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL35
	.quad	.LVL36
	.value	0x18
	.byte	0x7e
	.sleb128 0
	.byte	0x3
	.quad	size
	.byte	0x22
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL32
	.quad	.LVL33
	.value	0x1
	.byte	0x55
	.quad	.LVL33
	.quad	.LVL34
	.value	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL34
	.quad	.LVL35
	.value	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL35
	.quad	.LVL36
	.value	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL32
	.quad	.LVL33
	.value	0x1
	.byte	0x58
	.quad	.LVL33
	.quad	.LVL34
	.value	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL34
	.quad	.LVL35
	.value	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL35
	.quad	.LVL36
	.value	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL36
	.quad	.LVL39
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL40
	.quad	.LVL43
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2022
	.sleb128 0
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL5
	.quad	.LVL8
	.value	0x1
	.byte	0x55
	.quad	.LVL8
	.quad	.LFE54
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL5
	.quad	.LVL8
	.value	0x1
	.byte	0x54
	.quad	.LVL8
	.quad	.LVL11
	.value	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.quad	.LVL11
	.quad	.LVL12
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL5
	.quad	.LVL7
	.value	0x1
	.byte	0x51
	.quad	.LVL7
	.quad	.LVL8
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL8
	.quad	.LVL10
	.value	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x22
	.byte	0x9f
	.quad	.LVL10
	.quad	.LVL11
	.value	0xc
	.byte	0x74
	.sleb128 0
	.byte	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x22
	.byte	0x9f
	.quad	.LVL11
	.quad	.LVL12
	.value	0xb
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x22
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL6
	.quad	.LVL8
	.value	0x1
	.byte	0x55
	.quad	.LVL8
	.quad	.LVL12
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST0:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x1
	.byte	0x55
	.quad	.LVL2
	.quad	.LVL4
	.value	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL4
	.quad	.LFE53
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL13
	.quad	.LVL16
	.value	0x1
	.byte	0x55
	.quad	.LVL16
	.quad	.LFE55
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL13
	.quad	.LVL17
	.value	0x1
	.byte	0x54
	.quad	.LVL17
	.quad	.LFE55
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL13
	.quad	.LVL14
	.value	0x1
	.byte	0x51
	.quad	.LVL14
	.quad	.LVL18
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB35
	.quad	.LBE35
	.quad	.LBB42
	.quad	.LBE42
	.quad	.LBB43
	.quad	.LBE43
	.quad	.LBB50
	.quad	.LBE50
	.quad	.LBB52
	.quad	.LBE52
	.quad	.LBB57
	.quad	.LBE57
	.quad	0
	.quad	0
	.quad	.LBB44
	.quad	.LBE44
	.quad	.LBB51
	.quad	.LBE51
	.quad	.LBB53
	.quad	.LBE53
	.quad	0
	.quad	0
	.quad	.LBB54
	.quad	.LBE54
	.quad	.LBB58
	.quad	.LBE58
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB56
	.quad	.LFE56
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF72:
	.string	"printf"
.LASF8:
	.string	"__off_t"
.LASF12:
	.string	"_IO_read_ptr"
.LASF79:
	.string	"malloc"
.LASF24:
	.string	"_chain"
.LASF7:
	.string	"size_t"
.LASF59:
	.string	"src_offset"
.LASF30:
	.string	"_shortbuf"
.LASF69:
	.string	"__ch"
.LASF47:
	.string	"_IO_2_1_stderr_"
.LASF18:
	.string	"_IO_buf_base"
.LASF75:
	.string	"__builtin_memset"
.LASF54:
	.string	"long long unsigned int"
.LASF88:
	.string	"InitSrcArea"
.LASF53:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF25:
	.string	"_fileno"
.LASF13:
	.string	"_IO_read_end"
.LASF80:
	.string	"GNU C11 7.5.0 -mmmx -mtune=generic -march=x86-64 -g -O2 -fno-asynchronous-unwind-tables -fstack-protector-strong"
.LASF6:
	.string	"long int"
.LASF86:
	.string	"check"
.LASF11:
	.string	"_flags"
.LASF19:
	.string	"_IO_buf_end"
.LASF28:
	.string	"_cur_column"
.LASF77:
	.string	"__printf_chk"
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
.LASF82:
	.string	"/home/landon/AssembleLangFinal/memcpy"
.LASF84:
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
.LASF81:
	.string	"main.c"
.LASF56:
	.string	"tz_minuteswest"
.LASF31:
	.string	"_lock"
.LASF26:
	.string	"_flags2"
.LASF38:
	.string	"_mode"
.LASF76:
	.string	"__builtin_puts"
.LASF49:
	.string	"stdout"
.LASF45:
	.string	"_IO_2_1_stdin_"
.LASF74:
	.string	"puts"
.LASF67:
	.string	"tickh"
.LASF66:
	.string	"tickl"
.LASF17:
	.string	"_IO_write_end"
.LASF68:
	.string	"__dest"
.LASF78:
	.string	"mymemcpy"
.LASF65:
	.string	"psrc"
.LASF83:
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
.LASF70:
	.string	"__len"
.LASF29:
	.string	"_vtable_offset"
.LASF46:
	.string	"_IO_2_1_stdout_"
.LASF87:
	.string	"char_memcpy"
.LASF89:
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
.LASF73:
	.string	"__fmt"
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
.LASF71:
	.string	"memset"
.LASF60:
	.string	"dst_offset"
.LASF57:
	.string	"tz_dsttime"
.LASF21:
	.string	"_IO_backup_base"
.LASF63:
	.string	"pass"
.LASF85:
	.string	"main"
.LASF15:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
