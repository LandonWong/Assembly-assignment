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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 29 0
	movl	%edi, %ebx
	.loc 1 30 0
	movl	$12582912, %edi
.LVL1:
	call	malloc@PLT
.LVL2:
	.loc 1 32 0
	testl	%ebx, %ebx
	.loc 1 30 0
	movq	%rax, src(%rip)
.LVL3:
	.loc 1 32 0
	je	.L1
	.p2align 4,,10
	.p2align 3
.L3:
.LVL4:
	.loc 1 33 0
	movb	%bl, (%rax)
	.loc 1 35 0
	addq	$1, %rax
.LVL5:
	.loc 1 32 0
	subl	$1, %ebx
.LVL6:
	jne	.L3
.L1:
	.loc 1 37 0
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL7:
	ret
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
.LVL8:
	.loc 1 43 0
	testq	%rdx, %rdx
	.loc 1 41 0
	movq	%rdi, %rax
.LVL9:
	.loc 1 43 0
	je	.L11
	addq	%rdi, %rdx
.LVL10:
	.loc 1 42 0
	movq	%rdi, %rcx
.LVL11:
	.p2align 4,,10
	.p2align 3
.L12:
	.loc 1 44 0
	addq	$1, %rcx
.LVL12:
	movb	%sil, -1(%rcx)
.LVL13:
	addq	$1, %rsi
.LVL14:
	.loc 1 43 0
	cmpq	%rcx, %rdx
	jne	.L12
.LVL15:
.L11:
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
.LVL16:
	.loc 1 52 0
	testq	%rdx, %rdx
	je	.L21
	.loc 1 54 0
	movzbl	(%rsi), %eax
	cmpb	%al, (%rdi)
	jne	.L23
	addq	%rdi, %rdx
.LVL17:
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L20:
	movzbl	(%rsi), %eax
	cmpb	%al, (%rdi)
	jne	.L23
.LVL18:
.L19:
	.loc 1 57 0
	addq	$1, %rdi
.LVL19:
	.loc 1 58 0
	addq	$1, %rsi
.LVL20:
	.loc 1 52 0
	cmpq	%rdi, %rdx
	jne	.L20
.LVL21:
.L21:
	.loc 1 61 0
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L23:
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
	.string	"Passed. \nDurTime: %d"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB56:
	.loc 1 65 0
	.cfi_startproc
.LVL22:
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	.loc 1 69 0
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
	.loc 1 69 0
	call	malloc@PLT
.LVL23:
	movq	%rax, dst(%rip)
.LVL24:
	.p2align 4,,10
	.p2align 3
.L31:
.LBB28:
	.loc 1 71 0
	movslq	0(%r13,%r15,4), %rdx
	movslq	(%r12,%r15,4), %r8
.LBB29:
.LBB30:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	leaq	.LC0(%rip), %rsi
	addq	src(%rip), %r8
	movl	0(%rbp,%r15,4), %ecx
	movl	$1, %edi
	leaq	0(,%r15,4), %rbx
.LVL25:
	leaq	(%rax,%rdx), %r9
	movl	%r15d, %edx
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL26:
.LBE30:
.LBE29:
.LBB31:
.LBB32:
	.loc 1 30 0
	movl	$12582912, %edi
	call	malloc@PLT
.LVL27:
	leaq	12582912(%rax), %rsi
	movq	%rax, src(%rip)
.LVL28:
	.loc 1 31 0
	movq	%rax, %rdx
.LVL29:
	.p2align 4,,10
	.p2align 3
.L25:
	.loc 1 33 0
	movl	%eax, %ecx
	subl	%edx, %ecx
	.loc 1 35 0
	addq	$1, %rdx
.LVL30:
	.loc 1 33 0
	movb	%cl, -1(%rdx)
.LVL31:
	.loc 1 32 0
	cmpq	%rsi, %rdx
	jne	.L25
.LVL32:
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
.LVL33:
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
	movslq	(%r12,%rbx), %rsi
	movslq	0(%r13,%rbx), %rdi
.LBB40:
.LBB37:
	.loc 1 21 0
	movq	%rax, %r14
	movq	%rdx, 8(%rsp)
.LBE37:
.LBE40:
	.loc 1 75 0
	addq	src(%rip), %rsi
	movslq	0(%rbp,%rbx), %rdx
	addq	dst(%rip), %rdi
	call	mymemcpy@PLT
.LVL34:
.LBB41:
.LBB42:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtscp
# 0 "" 2
#NO_APP
.LBE42:
.LBE41:
	.loc 1 77 0
	movslq	0(%rbp,%rbx), %r9
	movslq	(%r12,%rbx), %rdi
	movslq	0(%r13,%rbx), %r8
	addq	src(%rip), %rdi
	addq	dst(%rip), %r8
.LVL35:
.LBB45:
.LBB46:
	.loc 1 52 0
	testq	%r9, %r9
	je	.L26
	.loc 1 54 0
	movzbl	(%r8), %ebx
	cmpb	%bl, (%rdi)
	jne	.L27
	movl	$1, %ecx
	jmp	.L28
.LVL36:
	.p2align 4,,10
	.p2align 3
.L29:
	movzbl	(%r8,%rcx), %esi
	addq	$1, %rcx
.LVL37:
	cmpb	-1(%rdi,%rcx), %sil
	jne	.L27
.LVL38:
.L28:
	.loc 1 52 0
	cmpq	%rcx, %r9
	jne	.L29
.LVL39:
.L26:
.LBE46:
.LBE45:
.LBB47:
.LBB38:
	.loc 1 22 0
	movq	8(%rsp), %rbx
.LBE38:
.LBE47:
.LBB48:
.LBB43:
	salq	$32, %rdx
.LBE43:
.LBE48:
.LBB49:
.LBB50:
	.loc 2 104 0
	leaq	.LC2(%rip), %rsi
.LBE50:
.LBE49:
.LBB53:
.LBB44:
	.loc 1 22 0
	orq	%rax, %rdx
.LBE44:
.LBE53:
.LBB54:
.LBB51:
	.loc 2 104 0
	movl	$1, %edi
	xorl	%eax, %eax
	addq	$1, %r15
.LVL40:
.LBE51:
.LBE54:
.LBB55:
.LBB39:
	.loc 1 22 0
	salq	$32, %rbx
	orq	%rbx, %r14
.LBE39:
.LBE55:
	.loc 1 80 0
	subq	%r14, %rdx
.LBB56:
.LBB52:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL41:
.LBE52:
.LBE56:
	.loc 1 70 0
	cmpq	$16, %r15
	je	.L34
.LVL42:
.L39:
	movq	dst(%rip), %rax
	jmp	.L31
.LVL43:
.L27:
.LBB57:
.LBB58:
	.loc 2 104 0
	leaq	.LC1(%rip), %rdi
	addq	$1, %r15
.LVL44:
	call	puts@PLT
.LVL45:
.LBE58:
.LBE57:
	.loc 1 70 0
	cmpq	$16, %r15
	jne	.L39
.LVL46:
.L34:
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
	.file 10 "/usr/include/stdlib.h"
	.file 11 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x828
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF80
	.byte	0xc
	.long	.LASF81
	.long	.LASF82
	.long	.Ldebug_ranges0+0xd0
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
	.long	0x640
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
	.long	0x62a
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x46
	.long	0x5e
	.long	.LLST9
	.uleb128 0x1b
	.long	0x748
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.byte	0x1
	.byte	0x47
	.long	0x471
	.uleb128 0x1c
	.long	0x758
	.long	.LLST10
	.uleb128 0x1d
	.quad	.LVL26
	.long	0x7dd
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
	.long	0x6cc
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.byte	0x1
	.byte	0x48
	.long	0x4c2
	.uleb128 0x1c
	.long	0x6d8
	.long	.LLST11
	.uleb128 0x1f
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.uleb128 0x20
	.long	0x789
	.uleb128 0x1d
	.quad	.LVL27
	.long	0x7e8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x716
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.byte	0x1
	.byte	0x49
	.long	0x514
	.uleb128 0x1c
	.long	0x73c
	.long	.LLST12
	.uleb128 0x1c
	.long	0x731
	.long	.LLST13
	.uleb128 0x1c
	.long	0x726
	.long	.LLST14
	.uleb128 0x1d
	.quad	.LVL33
	.long	0x7f4
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
	.long	0x6ef
	.quad	.LBB35
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x4a
	.long	0x53c
	.uleb128 0x22
	.long	.Ldebug_ranges0+0
	.uleb128 0x20
	.long	0x6ff
	.uleb128 0x20
	.long	0x70a
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x6ef
	.quad	.LBB41
	.long	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0x4c
	.long	0x564
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x50
	.uleb128 0x20
	.long	0x6ff
	.uleb128 0x20
	.long	0x70a
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x640
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.byte	0x1
	.byte	0x4d
	.long	0x59b
	.uleb128 0x1c
	.long	0x666
	.long	.LLST15
	.uleb128 0x1c
	.long	0x65b
	.long	.LLST16
	.uleb128 0x1c
	.long	0x650
	.long	.LLST17
	.byte	0
	.uleb128 0x21
	.long	0x748
	.quad	.LBB49
	.long	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0x50
	.long	0x5dc
	.uleb128 0x1c
	.long	0x758
	.long	.LLST18
	.uleb128 0x1d
	.quad	.LVL41
	.long	0x7dd
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
	.long	0x748
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.byte	0x1
	.byte	0x4e
	.long	0x61c
	.uleb128 0x1c
	.long	0x758
	.long	.LLST19
	.uleb128 0x1d
	.quad	.LVL45
	.long	0x811
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LVL34
	.long	0x820
	.byte	0
	.uleb128 0x1d
	.quad	.LVL23
	.long	0x7e8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF86
	.byte	0x1
	.byte	0x33
	.long	0x5e
	.byte	0x1
	.long	0x670
	.uleb128 0x25
	.long	.LASF64
	.byte	0x1
	.byte	0x33
	.long	0x84
	.uleb128 0x26
	.string	"src"
	.byte	0x1
	.byte	0x33
	.long	0x2a9
	.uleb128 0x26
	.string	"n"
	.byte	0x1
	.byte	0x33
	.long	0x29
	.byte	0
	.uleb128 0x27
	.long	.LASF87
	.byte	0x1
	.byte	0x29
	.long	0x82
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x6cc
	.uleb128 0x28
	.long	.LASF64
	.byte	0x1
	.byte	0x29
	.long	0x82
	.long	.LLST1
	.uleb128 0x29
	.string	"src"
	.byte	0x1
	.byte	0x29
	.long	0x30e
	.long	.LLST2
	.uleb128 0x29
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
	.uleb128 0x2a
	.long	.LASF88
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.long	0x6ef
	.uleb128 0x25
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
	.uleb128 0x2b
	.long	.LASF89
	.byte	0x1
	.byte	0x13
	.long	0x34
	.byte	0x3
	.long	0x716
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
	.uleb128 0x2c
	.long	.LASF71
	.byte	0x3
	.byte	0x3b
	.long	0x82
	.byte	0x3
	.long	0x748
	.uleb128 0x25
	.long	.LASF68
	.byte	0x3
	.byte	0x3b
	.long	0x82
	.uleb128 0x25
	.long	.LASF69
	.byte	0x3
	.byte	0x3b
	.long	0x5e
	.uleb128 0x25
	.long	.LASF70
	.byte	0x3
	.byte	0x3b
	.long	0x29
	.byte	0
	.uleb128 0x2c
	.long	.LASF72
	.byte	0x2
	.byte	0x66
	.long	0x5e
	.byte	0x3
	.long	0x765
	.uleb128 0x25
	.long	.LASF73
	.byte	0x2
	.byte	0x66
	.long	0x2b4
	.uleb128 0x2d
	.byte	0
	.uleb128 0x2e
	.long	0x6cc
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x7a6
	.uleb128 0x1c
	.long	0x6d8
	.long	.LLST0
	.uleb128 0x2f
	.long	0x6e3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1d
	.quad	.LVL2
	.long	0x7e8
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	0x640
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x7dd
	.uleb128 0x1c
	.long	0x650
	.long	.LLST5
	.uleb128 0x1c
	.long	0x65b
	.long	.LLST6
	.uleb128 0x1c
	.long	0x666
	.long	.LLST7
	.byte	0
	.uleb128 0x30
	.long	.LASF74
	.long	.LASF74
	.byte	0x2
	.byte	0x57
	.uleb128 0x31
	.long	.LASF75
	.long	.LASF75
	.byte	0xa
	.value	0x21b
	.uleb128 0x32
	.long	.LASF71
	.long	.LASF77
	.byte	0xb
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
	.long	.LASF76
	.long	.LASF78
	.byte	0xb
	.byte	0
	.long	.LASF76
	.uleb128 0x30
	.long	.LASF79
	.long	.LASF79
	.byte	0x1
	.byte	0x1a
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x5
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST8:
	.quad	.LVL22
	.quad	.LVL24
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL24
	.quad	.LVL40
	.value	0x1
	.byte	0x5f
	.quad	.LVL43
	.quad	.LVL44
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL25
	.quad	.LVL26
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL26
	.quad	.LVL29
	.value	0x4
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.quad	.LVL29
	.quad	.LVL30
	.value	0xa
	.byte	0x70
	.sleb128 0
	.byte	0x71
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
	.quad	.LVL32
	.quad	.LVL33
	.value	0x4
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL32
	.quad	.LVL33
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL32
	.quad	.LVL33-1
	.value	0x9
	.byte	0x3
	.quad	dst
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL35
	.quad	.LVL36
	.value	0x1
	.byte	0x59
	.quad	.LVL36
	.quad	.LVL37
	.value	0x1a
	.byte	0x7f
	.sleb128 0
	.byte	0x32
	.byte	0x24
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
	.quad	.LVL37
	.quad	.LVL38
	.value	0x1c
	.byte	0x7f
	.sleb128 0
	.byte	0x32
	.byte	0x24
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
	.quad	.LVL38
	.quad	.LVL39
	.value	0x1a
	.byte	0x7f
	.sleb128 0
	.byte	0x32
	.byte	0x24
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
	.quad	.LVL35
	.quad	.LVL36
	.value	0x1
	.byte	0x55
	.quad	.LVL36
	.quad	.LVL37
	.value	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL37
	.quad	.LVL38
	.value	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL38
	.quad	.LVL39
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
	.quad	.LVL35
	.quad	.LVL36
	.value	0x1
	.byte	0x58
	.quad	.LVL36
	.quad	.LVL37
	.value	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL37
	.quad	.LVL38
	.value	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL38
	.quad	.LVL39
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
	.quad	.LVL39
	.quad	.LVL42
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL43
	.quad	.LVL46
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2051
	.sleb128 0
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL8
	.quad	.LVL11
	.value	0x1
	.byte	0x55
	.quad	.LVL11
	.quad	.LFE54
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL8
	.quad	.LVL11
	.value	0x1
	.byte	0x54
	.quad	.LVL11
	.quad	.LVL14
	.value	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.quad	.LVL14
	.quad	.LVL15
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL8
	.quad	.LVL10
	.value	0x1
	.byte	0x51
	.quad	.LVL10
	.quad	.LVL11
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL11
	.quad	.LVL13
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
	.quad	.LVL13
	.quad	.LVL14
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
	.quad	.LVL14
	.quad	.LVL15
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
	.quad	.LVL9
	.quad	.LVL11
	.value	0x1
	.byte	0x55
	.quad	.LVL11
	.quad	.LVL15
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST0:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x1
	.byte	0x55
	.quad	.LVL1
	.quad	.LVL4
	.value	0x1
	.byte	0x53
	.quad	.LVL4
	.quad	.LVL6
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL6
	.quad	.LVL7
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL16
	.quad	.LVL19
	.value	0x1
	.byte	0x55
	.quad	.LVL19
	.quad	.LFE55
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL16
	.quad	.LVL20
	.value	0x1
	.byte	0x54
	.quad	.LVL20
	.quad	.LFE55
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL16
	.quad	.LVL17
	.value	0x1
	.byte	0x51
	.quad	.LVL17
	.quad	.LVL21
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
	.quad	.LBB40
	.quad	.LBE40
	.quad	.LBB47
	.quad	.LBE47
	.quad	.LBB55
	.quad	.LBE55
	.quad	0
	.quad	0
	.quad	.LBB41
	.quad	.LBE41
	.quad	.LBB48
	.quad	.LBE48
	.quad	.LBB53
	.quad	.LBE53
	.quad	0
	.quad	0
	.quad	.LBB49
	.quad	.LBE49
	.quad	.LBB54
	.quad	.LBE54
	.quad	.LBB56
	.quad	.LBE56
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
.LASF75:
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
.LASF77:
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
.LASF74:
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
.LASF78:
	.string	"__builtin_puts"
.LASF49:
	.string	"stdout"
.LASF45:
	.string	"_IO_2_1_stdin_"
.LASF76:
	.string	"puts"
.LASF67:
	.string	"tickh"
.LASF66:
	.string	"tickl"
.LASF17:
	.string	"_IO_write_end"
.LASF68:
	.string	"__dest"
.LASF79:
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
