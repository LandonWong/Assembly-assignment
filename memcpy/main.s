	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.p2align 4,,15
	.globl	InitSrcArea
	.type	InitSrcArea, @function
InitSrcArea:
.LFB52:
	.file 1 "main.c"
	.loc 1 24 0
	.cfi_startproc
.LVL0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 24 0
	movl	%edi, %ebx
	.loc 1 25 0
	movl	$100000, %edi
.LVL1:
	call	malloc@PLT
.LVL2:
	.loc 1 27 0
	testl	%ebx, %ebx
	.loc 1 25 0
	movq	%rax, src(%rip)
.LVL3:
	.loc 1 27 0
	je	.L1
	.p2align 4,,10
	.p2align 3
.L3:
.LVL4:
	.loc 1 28 0
	movb	%bl, (%rax)
	.loc 1 30 0
	addq	$1, %rax
.LVL5:
	.loc 1 27 0
	subl	$1, %ebx
.LVL6:
	jne	.L3
.L1:
	.loc 1 32 0
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL7:
	ret
	.cfi_endproc
.LFE52:
	.size	InitSrcArea, .-InitSrcArea
	.p2align 4,,15
	.globl	check
	.type	check, @function
check:
.LFB53:
	.loc 1 45 0
	.cfi_startproc
.LVL8:
	.loc 1 46 0
	testq	%rdx, %rdx
	je	.L14
	.loc 1 48 0
	movzbl	(%rsi), %eax
	cmpb	%al, (%rdi)
	jne	.L16
	addq	%rdi, %rdx
.LVL9:
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L13:
	movzbl	(%rsi), %eax
	cmpb	%al, (%rdi)
	jne	.L16
.LVL10:
.L12:
	.loc 1 51 0
	addq	$1, %rdi
.LVL11:
	.loc 1 52 0
	addq	$1, %rsi
.LVL12:
	.loc 1 46 0
	cmpq	%rdi, %rdx
	jne	.L13
.LVL13:
.L14:
	.loc 1 55 0
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L16:
	.loc 1 49 0
	xorl	%eax, %eax
	.loc 1 56 0
	ret
	.cfi_endproc
.LFE53:
	.size	check, .-check
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"pass"
.LC1:
	.string	"fail"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"[Mine] Test (basic #1) %d / 5: %s,time: %u.\n"
	.align 8
.LC3:
	.string	"       Prod: %x --> %x, size = %d.\n\n"
	.align 8
.LC4:
	.string	"[Mine] Test (basic #2) %d / 5: %s ,time: %u.\n"
	.align 8
.LC5:
	.string	"       Prod: %x --> %x, size = %d.\n"
	.align 8
.LC6:
	.string	"[CLIB] Test (basic #2) %d / 5:     ,time: %u.\n\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB54:
	.loc 1 59 0
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	.loc 1 64 0
	movl	$100000, %edi
	.loc 1 59 0
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.loc 1 59 0
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
.LVL14:
	.loc 1 64 0
	call	malloc@PLT
.LVL15:
.LBB32:
.LBB33:
	.loc 1 25 0
	movl	$100000, %edi
.LBE33:
.LBE32:
	.loc 1 64 0
	movq	%rax, dst(%rip)
.LVL16:
.LBB35:
.LBB34:
	.loc 1 25 0
	call	malloc@PLT
.LVL17:
	movl	$100000, %edx
	movq	%rax, src(%rip)
.LVL18:
	.p2align 4,,10
	.p2align 3
.L18:
	.loc 1 28 0
	movb	%dl, (%rax)
	.loc 1 30 0
	addq	$1, %rax
.LVL19:
	.loc 1 27 0
	subl	$1, %edx
.LVL20:
	jne	.L18
.LVL21:
.LBE34:
.LBE35:
	.loc 1 66 0
	leaq	16(%rsp), %r15
	xorl	%esi, %esi
	movl	$1, %r14d
	leaq	basic_1_dst_offset(%rip), %rbx
	leaq	-4+basic_1_size(%rip), %r13
	leaq	-4+basic_1_src_offset(%rip), %r12
	movq	%r15, %rdi
	call	gettimeofday@PLT
.LVL22:
	leaq	32(%rsp), %rax
.LBB36:
.LBB37:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	movq	%r15, 8(%rsp)
	movq	%r14, %r15
	movq	%rax, (%rsp)
.LVL23:
.L23:
.LBE37:
.LBE36:
	.loc 1 70 0
	movq	8(%rsp), %rdi
	xorl	%esi, %esi
	leaq	0(,%r15,4), %rbp
	call	gettimeofday@PLT
.LVL24:
	.loc 1 72 0
	movslq	(%r12,%r15,4), %rsi
	.loc 1 71 0
	movslq	(%rbx), %rdi
	.loc 1 72 0
	addq	src(%rip), %rsi
	.loc 1 71 0
	addq	dst(%rip), %rdi
	movslq	0(%r13,%r15,4), %rdx
	call	mymemcpy@PLT
.LVL25:
	.loc 1 74 0
	movq	(%rsp), %rdi
	xorl	%esi, %esi
	.loc 1 71 0
	movq	%rax, %r14
.LVL26:
	.loc 1 74 0
	call	gettimeofday@PLT
.LVL27:
	.loc 1 75 0
	movslq	(%rbx), %rax
	addq	dst(%rip), %rax
	cmpq	%r14, %rax
	je	.L45
.L19:
	.loc 1 80 0
	movq	32(%rsp), %r8
	subq	16(%rsp), %r8
	leaq	.LC1(%rip), %rcx
	imulq	$1000, %r8, %r8
	addq	40(%rsp), %r8
	subq	24(%rsp), %r8
.LVL28:
.L29:
.LBB40:
.LBB41:
	.loc 2 104 0 discriminator 4
	leaq	.LC2(%rip), %rsi
	movl	%r15d, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	addq	$1, %r15
.LVL29:
	addq	$4, %rbx
	call	__printf_chk@PLT
.LVL30:
.LBE41:
.LBE40:
	.loc 1 81 0 discriminator 4
	movslq	-4(%rbx), %rcx
	movslq	(%r12,%rbp), %rdx
.LBB42:
.LBB38:
	.loc 2 104 0 discriminator 4
	leaq	.LC3(%rip), %rsi
.LBE38:
.LBE42:
	.loc 1 81 0 discriminator 4
	addq	dst(%rip), %rcx
	addq	src(%rip), %rdx
.LBB43:
.LBB39:
	.loc 2 104 0 discriminator 4
	xorl	%eax, %eax
	movl	0(%r13,%rbp), %r8d
	movl	$1, %edi
	call	__printf_chk@PLT
.LVL31:
.LBE39:
.LBE43:
	.loc 1 68 0 discriminator 4
	cmpq	$6, %r15
	jne	.L23
	movq	8(%rsp), %r15
	leaq	basic_2_size(%rip), %r12
	leaq	basic_2_dst_offset(%rip), %rbp
	leaq	-4+basic_2_src_offset(%rip), %r13
	.loc 1 68 0 is_stmt 0
	movl	$1, %ebx
.LVL32:
.L28:
	.loc 1 86 0 is_stmt 1
	xorl	%esi, %esi
	movq	%r15, %rdi
	leaq	0(,%rbx,4), %r14
	call	gettimeofday@PLT
.LVL33:
	.loc 1 87 0
	xorl	%esi, %esi
	movq	%r15, %rdi
	call	gettimeofday@PLT
.LVL34:
	.loc 1 89 0
	movslq	0(%r13,%rbx,4), %rsi
	.loc 1 88 0
	movslq	0(%rbp), %rdi
	.loc 1 89 0
	addq	src(%rip), %rsi
	.loc 1 88 0
	addq	dst(%rip), %rdi
	movslq	(%r12), %rdx
	call	mymemcpy@PLT
.LVL35:
	.loc 1 91 0
	movq	(%rsp), %rdi
	xorl	%esi, %esi
	.loc 1 88 0
	movq	%rax, 8(%rsp)
.LVL36:
	.loc 1 91 0
	call	gettimeofday@PLT
.LVL37:
	.loc 1 92 0
	movslq	0(%rbp), %rax
	addq	dst(%rip), %rax
	cmpq	8(%rsp), %rax
	je	.L46
.L24:
	.loc 1 97 0
	movq	32(%rsp), %r8
	subq	16(%rsp), %r8
	leaq	.LC1(%rip), %rcx
	imulq	$1000, %r8, %r8
	addq	40(%rsp), %r8
	subq	24(%rsp), %r8
.LVL38:
.L30:
.LBB44:
.LBB45:
	.loc 2 104 0 discriminator 4
	leaq	.LC4(%rip), %rsi
	movl	%ebx, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	addq	$4, %r12
	addq	$4, %rbp
	call	__printf_chk@PLT
.LVL39:
.LBE45:
.LBE44:
	.loc 1 98 0 discriminator 4
	movslq	-4(%rbp), %rcx
	movslq	0(%r13,%r14), %rdx
.LBB46:
.LBB47:
	.loc 2 104 0 discriminator 4
	leaq	.LC5(%rip), %rsi
.LBE47:
.LBE46:
	.loc 1 98 0 discriminator 4
	addq	dst(%rip), %rcx
	addq	src(%rip), %rdx
.LBB49:
.LBB48:
	.loc 2 104 0 discriminator 4
	movl	$1, %edi
	movl	-4(%r12), %r8d
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL40:
.LBE48:
.LBE49:
	.loc 1 99 0 discriminator 4
	xorl	%esi, %esi
	movq	%r15, %rdi
	call	gettimeofday@PLT
.LVL41:
	.loc 1 100 0 discriminator 4
	movslq	-4(%rbp), %rdi
	.loc 1 101 0 discriminator 4
	movslq	0(%r13,%r14), %rsi
	.loc 1 100 0 discriminator 4
	movslq	-4(%r12), %rdx
	addq	dst(%rip), %rdi
	.loc 1 101 0 discriminator 4
	addq	src(%rip), %rsi
.LBB50:
.LBB51:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 3 34 0 discriminator 4
	call	memcpy@PLT
.LVL42:
.LBE51:
.LBE50:
	.loc 1 103 0 discriminator 4
	movq	(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
.LVL43:
	.loc 1 104 0 discriminator 4
	movq	32(%rsp), %rcx
	subq	16(%rsp), %rcx
.LBB52:
.LBB53:
	.loc 2 104 0 discriminator 4
	leaq	.LC6(%rip), %rsi
	movl	%ebx, %edx
	xorl	%eax, %eax
	movl	$1, %edi
	addq	$1, %rbx
.LVL44:
.LBE53:
.LBE52:
	.loc 1 104 0 discriminator 4
	imulq	$1000, %rcx, %rcx
	addq	40(%rsp), %rcx
	subq	24(%rsp), %rcx
.LBB55:
.LBB54:
	.loc 2 104 0 discriminator 4
	call	__printf_chk@PLT
.LVL45:
.LBE54:
.LBE55:
	.loc 1 84 0 discriminator 4
	cmpq	$6, %rbx
	jne	.L28
	.loc 1 112 0
	xorl	%eax, %eax
	movq	56(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L47
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
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
.LVL46:
.L46:
	.cfi_restore_state
	.loc 1 93 0 discriminator 1
	movslq	(%r12), %rdi
	.loc 1 94 0 discriminator 1
	movslq	0(%r13,%rbx,4), %rsi
	addq	src(%rip), %rsi
.LVL47:
.LBB56:
.LBB57:
	.loc 1 46 0 discriminator 1
	testq	%rdi, %rdi
	je	.L25
	.loc 1 48 0
	movzbl	(%rax), %ecx
	cmpb	%cl, (%rsi)
	jne	.L24
	movl	$1, %edx
	jmp	.L26
.LVL48:
	.p2align 4,,10
	.p2align 3
.L27:
	movzbl	(%rax,%rdx), %ecx
	addq	$1, %rdx
.LVL49:
	cmpb	-1(%rsi,%rdx), %cl
	jne	.L24
.LVL50:
.L26:
	.loc 1 46 0
	cmpq	%rdx, %rdi
	jne	.L27
.LVL51:
.L25:
.LBE57:
.LBE56:
	.loc 1 97 0
	movq	32(%rsp), %r8
	subq	16(%rsp), %r8
	leaq	.LC0(%rip), %rcx
	imulq	$1000, %r8, %r8
	addq	40(%rsp), %r8
	subq	24(%rsp), %r8
	jmp	.L30
.LVL52:
.L45:
	.loc 1 76 0 discriminator 1
	movslq	0(%r13,%r15,4), %rdi
	.loc 1 77 0 discriminator 1
	movslq	(%r12,%r15,4), %rsi
	addq	src(%rip), %rsi
.LVL53:
.LBB58:
.LBB59:
	.loc 1 46 0 discriminator 1
	testq	%rdi, %rdi
	je	.L20
	.loc 1 48 0
	movzbl	(%rax), %ecx
	cmpb	%cl, (%rsi)
	jne	.L19
	movl	$1, %edx
	jmp	.L21
.LVL54:
	.p2align 4,,10
	.p2align 3
.L22:
	movzbl	(%rax,%rdx), %ecx
	addq	$1, %rdx
.LVL55:
	cmpb	-1(%rsi,%rdx), %cl
	jne	.L19
.LVL56:
.L21:
	.loc 1 46 0
	cmpq	%rdx, %rdi
	jne	.L22
.LVL57:
.L20:
.LBE59:
.LBE58:
	.loc 1 80 0
	movq	32(%rsp), %r8
	subq	16(%rsp), %r8
	leaq	.LC0(%rip), %rcx
	imulq	$1000, %r8, %r8
	addq	40(%rsp), %r8
	subq	24(%rsp), %r8
	jmp	.L29
.LVL58:
.L47:
	.loc 1 112 0
	call	__stack_chk_fail@PLT
.LVL59:
	.cfi_endproc
.LFE54:
	.size	main, .-main
	.globl	basic_2_dst_offset
	.data
	.align 16
	.type	basic_2_dst_offset, @object
	.size	basic_2_dst_offset, 20
basic_2_dst_offset:
	.long	4096
	.long	32
	.long	52224
	.long	56
	.long	56
	.globl	basic_1_dst_offset
	.align 16
	.type	basic_1_dst_offset, @object
	.size	basic_1_dst_offset, 20
basic_1_dst_offset:
	.long	268
	.long	4388
	.long	1628
	.long	8
	.long	136
	.globl	basic_2_src_offset
	.align 16
	.type	basic_2_src_offset, @object
	.size	basic_2_src_offset, 20
basic_2_src_offset:
	.long	260
	.long	4388
	.long	1628
	.long	8
	.long	2184
	.globl	basic_1_src_offset
	.align 16
	.type	basic_1_src_offset, @object
	.size	basic_1_src_offset, 20
basic_1_src_offset:
	.long	16
	.long	32
	.long	52272
	.long	56
	.long	14200
	.globl	basic_2_size
	.align 16
	.type	basic_2_size, @object
	.size	basic_2_size, 20
basic_2_size:
	.long	34952
	.long	65535
	.long	4095
	.long	49152
	.long	65536
	.globl	basic_1_size
	.align 16
	.type	basic_1_size, @object
	.size	basic_1_size, 20
basic_1_size:
	.long	1
	.long	2
	.long	4
	.long	8
	.long	64
	.comm	dst,8,8
	.comm	src,8,8
	.text
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h"
	.file 10 "/usr/include/x86_64-linux-gnu/sys/time.h"
	.file 11 "/usr/include/stdlib.h"
	.file 12 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x97a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF83
	.byte	0xc
	.long	.LASF84
	.long	.LASF85
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
	.uleb128 0x2
	.long	.LASF10
	.byte	0x5
	.byte	0x94
	.long	0x65
	.uleb128 0x2
	.long	.LASF11
	.byte	0x5
	.byte	0x96
	.long	0x65
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.long	0x98
	.uleb128 0x7
	.byte	0x8
	.long	0xa5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x8
	.long	0xa5
	.uleb128 0x9
	.long	.LASF42
	.byte	0xd8
	.byte	0x6
	.byte	0xf5
	.long	0x231
	.uleb128 0xa
	.long	.LASF13
	.byte	0x6
	.byte	0xf6
	.long	0x5e
	.byte	0
	.uleb128 0xa
	.long	.LASF14
	.byte	0x6
	.byte	0xfb
	.long	0x9f
	.byte	0x8
	.uleb128 0xa
	.long	.LASF15
	.byte	0x6
	.byte	0xfc
	.long	0x9f
	.byte	0x10
	.uleb128 0xa
	.long	.LASF16
	.byte	0x6
	.byte	0xfd
	.long	0x9f
	.byte	0x18
	.uleb128 0xa
	.long	.LASF17
	.byte	0x6
	.byte	0xfe
	.long	0x9f
	.byte	0x20
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.byte	0xff
	.long	0x9f
	.byte	0x28
	.uleb128 0xb
	.long	.LASF19
	.byte	0x6
	.value	0x100
	.long	0x9f
	.byte	0x30
	.uleb128 0xb
	.long	.LASF20
	.byte	0x6
	.value	0x101
	.long	0x9f
	.byte	0x38
	.uleb128 0xb
	.long	.LASF21
	.byte	0x6
	.value	0x102
	.long	0x9f
	.byte	0x40
	.uleb128 0xb
	.long	.LASF22
	.byte	0x6
	.value	0x104
	.long	0x9f
	.byte	0x48
	.uleb128 0xb
	.long	.LASF23
	.byte	0x6
	.value	0x105
	.long	0x9f
	.byte	0x50
	.uleb128 0xb
	.long	.LASF24
	.byte	0x6
	.value	0x106
	.long	0x9f
	.byte	0x58
	.uleb128 0xb
	.long	.LASF25
	.byte	0x6
	.value	0x108
	.long	0x269
	.byte	0x60
	.uleb128 0xb
	.long	.LASF26
	.byte	0x6
	.value	0x10a
	.long	0x26f
	.byte	0x68
	.uleb128 0xb
	.long	.LASF27
	.byte	0x6
	.value	0x10c
	.long	0x5e
	.byte	0x70
	.uleb128 0xb
	.long	.LASF28
	.byte	0x6
	.value	0x110
	.long	0x5e
	.byte	0x74
	.uleb128 0xb
	.long	.LASF29
	.byte	0x6
	.value	0x112
	.long	0x6c
	.byte	0x78
	.uleb128 0xb
	.long	.LASF30
	.byte	0x6
	.value	0x116
	.long	0x42
	.byte	0x80
	.uleb128 0xb
	.long	.LASF31
	.byte	0x6
	.value	0x117
	.long	0x50
	.byte	0x82
	.uleb128 0xb
	.long	.LASF32
	.byte	0x6
	.value	0x118
	.long	0x275
	.byte	0x83
	.uleb128 0xb
	.long	.LASF33
	.byte	0x6
	.value	0x11c
	.long	0x285
	.byte	0x88
	.uleb128 0xb
	.long	.LASF34
	.byte	0x6
	.value	0x125
	.long	0x77
	.byte	0x90
	.uleb128 0xb
	.long	.LASF35
	.byte	0x6
	.value	0x12d
	.long	0x98
	.byte	0x98
	.uleb128 0xb
	.long	.LASF36
	.byte	0x6
	.value	0x12e
	.long	0x98
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF37
	.byte	0x6
	.value	0x12f
	.long	0x98
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF38
	.byte	0x6
	.value	0x130
	.long	0x98
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF39
	.byte	0x6
	.value	0x132
	.long	0x29
	.byte	0xb8
	.uleb128 0xb
	.long	.LASF40
	.byte	0x6
	.value	0x133
	.long	0x5e
	.byte	0xc0
	.uleb128 0xb
	.long	.LASF41
	.byte	0x6
	.value	0x135
	.long	0x28b
	.byte	0xc4
	.byte	0
	.uleb128 0xc
	.long	.LASF86
	.byte	0x6
	.byte	0x9a
	.uleb128 0x9
	.long	.LASF43
	.byte	0x18
	.byte	0x6
	.byte	0xa0
	.long	0x269
	.uleb128 0xa
	.long	.LASF44
	.byte	0x6
	.byte	0xa1
	.long	0x269
	.byte	0
	.uleb128 0xa
	.long	.LASF45
	.byte	0x6
	.byte	0xa2
	.long	0x26f
	.byte	0x8
	.uleb128 0xa
	.long	.LASF46
	.byte	0x6
	.byte	0xa6
	.long	0x5e
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x238
	.uleb128 0x7
	.byte	0x8
	.long	0xb1
	.uleb128 0xd
	.long	0xa5
	.long	0x285
	.uleb128 0xe
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x231
	.uleb128 0xd
	.long	0xa5
	.long	0x29b
	.uleb128 0xe
	.long	0x34
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.long	.LASF87
	.uleb128 0x10
	.long	.LASF47
	.byte	0x6
	.value	0x13f
	.long	0x29b
	.uleb128 0x10
	.long	.LASF48
	.byte	0x6
	.value	0x140
	.long	0x29b
	.uleb128 0x10
	.long	.LASF49
	.byte	0x6
	.value	0x141
	.long	0x29b
	.uleb128 0x7
	.byte	0x8
	.long	0xac
	.uleb128 0x8
	.long	0x2c4
	.uleb128 0x6
	.long	0x2c4
	.uleb128 0x11
	.long	.LASF50
	.byte	0x7
	.byte	0x87
	.long	0x26f
	.uleb128 0x11
	.long	.LASF51
	.byte	0x7
	.byte	0x88
	.long	0x26f
	.uleb128 0x11
	.long	.LASF52
	.byte	0x7
	.byte	0x89
	.long	0x26f
	.uleb128 0x11
	.long	.LASF53
	.byte	0x8
	.byte	0x1a
	.long	0x5e
	.uleb128 0xd
	.long	0x2ca
	.long	0x30b
	.uleb128 0x12
	.byte	0
	.uleb128 0x8
	.long	0x300
	.uleb128 0x11
	.long	.LASF54
	.byte	0x8
	.byte	0x1b
	.long	0x30b
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF55
	.uleb128 0x9
	.long	.LASF56
	.byte	0x10
	.byte	0x9
	.byte	0x8
	.long	0x347
	.uleb128 0xa
	.long	.LASF57
	.byte	0x9
	.byte	0xa
	.long	0x82
	.byte	0
	.uleb128 0xa
	.long	.LASF58
	.byte	0x9
	.byte	0xb
	.long	0x8d
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF59
	.uleb128 0x7
	.byte	0x8
	.long	0x359
	.uleb128 0x6
	.long	0x34e
	.uleb128 0x13
	.uleb128 0x9
	.long	.LASF60
	.byte	0x8
	.byte	0xa
	.byte	0x34
	.long	0x37f
	.uleb128 0xa
	.long	.LASF61
	.byte	0xa
	.byte	0x36
	.long	0x5e
	.byte	0
	.uleb128 0xa
	.long	.LASF62
	.byte	0xa
	.byte	0x37
	.long	0x5e
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x35a
	.uleb128 0x6
	.long	0x37f
	.uleb128 0x14
	.string	"src"
	.byte	0x1
	.byte	0x7
	.long	0x98
	.uleb128 0x9
	.byte	0x3
	.quad	src
	.uleb128 0x14
	.string	"dst"
	.byte	0x1
	.byte	0x8
	.long	0x98
	.uleb128 0x9
	.byte	0x3
	.quad	dst
	.uleb128 0xd
	.long	0x5e
	.long	0x3c4
	.uleb128 0xe
	.long	0x34
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.long	.LASF63
	.byte	0x1
	.byte	0xa
	.long	0x3b4
	.uleb128 0x9
	.byte	0x3
	.quad	basic_1_size
	.uleb128 0x15
	.long	.LASF64
	.byte	0x1
	.byte	0xb
	.long	0x3b4
	.uleb128 0x9
	.byte	0x3
	.quad	basic_2_size
	.uleb128 0x15
	.long	.LASF65
	.byte	0x1
	.byte	0xd
	.long	0x3b4
	.uleb128 0x9
	.byte	0x3
	.quad	basic_1_src_offset
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0xe
	.long	0x3b4
	.uleb128 0x9
	.byte	0x3
	.quad	basic_2_src_offset
	.uleb128 0x15
	.long	.LASF67
	.byte	0x1
	.byte	0x10
	.long	0x3b4
	.uleb128 0x9
	.byte	0x3
	.quad	basic_1_dst_offset
	.uleb128 0x15
	.long	.LASF68
	.byte	0x1
	.byte	0x11
	.long	0x3b4
	.uleb128 0x9
	.byte	0x3
	.quad	basic_2_dst_offset
	.uleb128 0x16
	.long	.LASF88
	.byte	0x1
	.byte	0x3b
	.long	0x5e
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x81c
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x3c
	.long	0x5e
	.long	.LLST4
	.uleb128 0x18
	.long	.LASF69
	.byte	0x1
	.byte	0x3d
	.long	0x5e
	.long	.LLST5
	.uleb128 0x19
	.string	"tv1"
	.byte	0x1
	.byte	0x3e
	.long	0x322
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x19
	.string	"tv2"
	.byte	0x1
	.byte	0x3e
	.long	0x322
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x18
	.long	.LASF70
	.byte	0x1
	.byte	0x3f
	.long	0x98
	.long	.LLST6
	.uleb128 0x1a
	.long	0x84c
	.quad	.LBB32
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x41
	.long	0x4ef
	.uleb128 0x1b
	.long	0x858
	.long	.LLST7
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0
	.uleb128 0x1d
	.long	0x8e2
	.uleb128 0x1e
	.quad	.LVL17
	.long	0x938
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x186a0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x8a1
	.quad	.LBB36
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x51
	.long	0x530
	.uleb128 0x1b
	.long	0x8b1
	.long	.LLST8
	.uleb128 0x1e
	.quad	.LVL31
	.long	0x944
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x8a1
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.byte	0x1
	.byte	0x50
	.long	0x575
	.uleb128 0x1b
	.long	0x8b1
	.long	.LLST9
	.uleb128 0x1e
	.quad	.LVL30
	.long	0x944
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x8a1
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.byte	0x1
	.byte	0x61
	.long	0x5c0
	.uleb128 0x1b
	.long	0x8b1
	.long	.LLST10
	.uleb128 0x1e
	.quad	.LVL39
	.long	0x944
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x8a1
	.quad	.LBB46
	.long	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x62
	.long	0x601
	.uleb128 0x1b
	.long	0x8b1
	.long	.LLST11
	.uleb128 0x1e
	.quad	.LVL40
	.long	0x944
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x86f
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.byte	0x1
	.byte	0x64
	.long	0x63d
	.uleb128 0x21
	.long	0x895
	.uleb128 0x1b
	.long	0x88a
	.long	.LLST12
	.uleb128 0x21
	.long	0x87f
	.uleb128 0x22
	.quad	.LVL42
	.long	0x94f
	.byte	0
	.uleb128 0x1a
	.long	0x8a1
	.quad	.LBB52
	.long	.Ldebug_ranges0+0xa0
	.byte	0x1
	.byte	0x68
	.long	0x67e
	.uleb128 0x1b
	.long	0x8b1
	.long	.LLST13
	.uleb128 0x1e
	.quad	.LVL45
	.long	0x944
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x81c
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.byte	0x1
	.byte	0x5d
	.long	0x6b5
	.uleb128 0x1b
	.long	0x842
	.long	.LLST14
	.uleb128 0x1b
	.long	0x837
	.long	.LLST15
	.uleb128 0x1b
	.long	0x82c
	.long	.LLST16
	.byte	0
	.uleb128 0x20
	.long	0x81c
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.byte	0x1
	.byte	0x4c
	.long	0x6ec
	.uleb128 0x1b
	.long	0x842
	.long	.LLST17
	.uleb128 0x1b
	.long	0x837
	.long	.LLST18
	.uleb128 0x1b
	.long	0x82c
	.long	.LLST19
	.byte	0
	.uleb128 0x23
	.quad	.LVL15
	.long	0x938
	.long	0x707
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x186a0
	.byte	0
	.uleb128 0x23
	.quad	.LVL22
	.long	0x95e
	.long	0x724
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.quad	.LVL24
	.long	0x95e
	.long	0x743
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -120
	.byte	0x6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL25
	.long	0x969
	.uleb128 0x23
	.quad	.LVL27
	.long	0x95e
	.long	0x76e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x77
	.sleb128 0
	.byte	0x6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.quad	.LVL33
	.long	0x95e
	.long	0x78b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.quad	.LVL34
	.long	0x95e
	.long	0x7a8
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL35
	.long	0x969
	.uleb128 0x23
	.quad	.LVL37
	.long	0x95e
	.long	0x7d3
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x77
	.sleb128 0
	.byte	0x6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.quad	.LVL41
	.long	0x95e
	.long	0x7f0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.quad	.LVL43
	.long	0x95e
	.long	0x80e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x77
	.sleb128 0
	.byte	0x6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x22
	.quad	.LVL59
	.long	0x974
	.byte	0
	.uleb128 0x24
	.long	.LASF89
	.byte	0x1
	.byte	0x2d
	.long	0x5e
	.byte	0x1
	.long	0x84c
	.uleb128 0x25
	.long	.LASF71
	.byte	0x1
	.byte	0x2d
	.long	0x9f
	.uleb128 0x26
	.string	"src"
	.byte	0x1
	.byte	0x2d
	.long	0x2c4
	.uleb128 0x26
	.string	"n"
	.byte	0x1
	.byte	0x2d
	.long	0x29
	.byte	0
	.uleb128 0x27
	.long	.LASF90
	.byte	0x1
	.byte	0x18
	.byte	0x1
	.long	0x86f
	.uleb128 0x25
	.long	.LASF72
	.byte	0x1
	.byte	0x18
	.long	0x5e
	.uleb128 0x28
	.long	.LASF91
	.byte	0x1
	.byte	0x1a
	.long	0x9f
	.byte	0
	.uleb128 0x29
	.long	.LASF76
	.byte	0x3
	.byte	0x1f
	.long	0x98
	.byte	0x3
	.long	0x8a1
	.uleb128 0x25
	.long	.LASF73
	.byte	0x3
	.byte	0x1f
	.long	0x9a
	.uleb128 0x25
	.long	.LASF74
	.byte	0x3
	.byte	0x1f
	.long	0x354
	.uleb128 0x25
	.long	.LASF75
	.byte	0x3
	.byte	0x1f
	.long	0x29
	.byte	0
	.uleb128 0x29
	.long	.LASF77
	.byte	0x2
	.byte	0x66
	.long	0x5e
	.byte	0x3
	.long	0x8be
	.uleb128 0x25
	.long	.LASF78
	.byte	0x2
	.byte	0x66
	.long	0x2cf
	.uleb128 0x2a
	.byte	0
	.uleb128 0x2b
	.long	0x84c
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x901
	.uleb128 0x1b
	.long	0x858
	.long	.LLST0
	.uleb128 0x2c
	.long	0x863
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1e
	.quad	.LVL2
	.long	0x938
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x186a0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x81c
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x938
	.uleb128 0x1b
	.long	0x82c
	.long	.LLST1
	.uleb128 0x1b
	.long	0x837
	.long	.LLST2
	.uleb128 0x1b
	.long	0x842
	.long	.LLST3
	.byte	0
	.uleb128 0x2d
	.long	.LASF79
	.long	.LASF79
	.byte	0xb
	.value	0x21b
	.uleb128 0x2e
	.long	.LASF80
	.long	.LASF80
	.byte	0x2
	.byte	0x57
	.uleb128 0x2f
	.long	.LASF76
	.long	.LASF92
	.byte	0xc
	.byte	0
	.long	.LASF76
	.uleb128 0x2e
	.long	.LASF81
	.long	.LASF81
	.byte	0xa
	.byte	0x44
	.uleb128 0x2e
	.long	.LASF82
	.long	.LASF82
	.byte	0x1
	.byte	0x15
	.uleb128 0x30
	.long	.LASF93
	.long	.LASF93
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST4:
	.quad	.LVL14
	.quad	.LVL23
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL23
	.quad	.LVL29
	.value	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL29
	.quad	.LVL30-1
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL32
	.quad	.LVL44
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL44
	.quad	.LVL45-1
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL46
	.quad	.LVL52
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL52
	.quad	.LVL58
	.value	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL14
	.quad	.LVL28
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL32
	.quad	.LVL38
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL46
	.quad	.LVL51
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL51
	.quad	.LVL52
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL52
	.quad	.LVL57
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL57
	.quad	.LVL58
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL26
	.quad	.LVL27-1
	.value	0x1
	.byte	0x50
	.quad	.LVL27-1
	.quad	.LVL32
	.value	0x1
	.byte	0x5e
	.quad	.LVL35
	.quad	.LVL36
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	.LVL52
	.quad	.LVL58
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL16
	.quad	.LVL18
	.value	0x6
	.byte	0xc
	.long	0x186a0
	.byte	0x9f
	.quad	.LVL18
	.quad	.LVL20
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL20
	.quad	.LVL21
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL30
	.quad	.LVL31
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL28
	.quad	.LVL30
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL38
	.quad	.LVL39
	.value	0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL39
	.quad	.LVL40
	.value	0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL41
	.quad	.LVL42-1
	.value	0x20
	.byte	0x7e
	.sleb128 0
	.byte	0x3
	.quad	basic_2_src_offset-4
	.byte	0x22
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x3
	.quad	src
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL43
	.quad	.LVL45
	.value	0xa
	.byte	0x3
	.quad	.LC6
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL47
	.quad	.LVL48
	.value	0x1
	.byte	0x55
	.quad	.LVL48
	.quad	.LVL49
	.value	0xe
	.byte	0x7c
	.sleb128 0
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL49
	.quad	.LVL50
	.value	0x10
	.byte	0x7c
	.sleb128 0
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL50
	.quad	.LVL51
	.value	0xe
	.byte	0x7c
	.sleb128 0
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL47
	.quad	.LVL48
	.value	0x1
	.byte	0x54
	.quad	.LVL48
	.quad	.LVL49
	.value	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL49
	.quad	.LVL50
	.value	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL50
	.quad	.LVL51
	.value	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL47
	.quad	.LVL48
	.value	0x1
	.byte	0x50
	.quad	.LVL48
	.quad	.LVL49
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL49
	.quad	.LVL50
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL50
	.quad	.LVL51
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL53
	.quad	.LVL54
	.value	0x1
	.byte	0x55
	.quad	.LVL54
	.quad	.LVL55
	.value	0x18
	.byte	0x76
	.sleb128 0
	.byte	0x3
	.quad	basic_1_size-4
	.byte	0x22
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL55
	.quad	.LVL56
	.value	0x1a
	.byte	0x76
	.sleb128 0
	.byte	0x3
	.quad	basic_1_size-4
	.byte	0x22
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL56
	.quad	.LVL57
	.value	0x18
	.byte	0x76
	.sleb128 0
	.byte	0x3
	.quad	basic_1_size-4
	.byte	0x22
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL53
	.quad	.LVL54
	.value	0x1
	.byte	0x54
	.quad	.LVL54
	.quad	.LVL55
	.value	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL55
	.quad	.LVL56
	.value	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL56
	.quad	.LVL57
	.value	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL53
	.quad	.LVL54
	.value	0x1
	.byte	0x50
	.quad	.LVL54
	.quad	.LVL55
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL55
	.quad	.LVL56
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL56
	.quad	.LVL57
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
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
.LLST1:
	.quad	.LVL8
	.quad	.LVL11
	.value	0x1
	.byte	0x55
	.quad	.LVL11
	.quad	.LFE53
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL8
	.quad	.LVL12
	.value	0x1
	.byte	0x54
	.quad	.LVL12
	.quad	.LFE53
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL8
	.quad	.LVL9
	.value	0x1
	.byte	0x51
	.quad	.LVL9
	.quad	.LVL13
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
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB32
	.quad	.LBE32
	.quad	.LBB35
	.quad	.LBE35
	.quad	0
	.quad	0
	.quad	.LBB36
	.quad	.LBE36
	.quad	.LBB42
	.quad	.LBE42
	.quad	.LBB43
	.quad	.LBE43
	.quad	0
	.quad	0
	.quad	.LBB46
	.quad	.LBE46
	.quad	.LBB49
	.quad	.LBE49
	.quad	0
	.quad	0
	.quad	.LBB52
	.quad	.LBE52
	.quad	.LBB55
	.quad	.LBE55
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB54
	.quad	.LFE54
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF77:
	.string	"printf"
.LASF8:
	.string	"__off_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF79:
	.string	"malloc"
.LASF26:
	.string	"_chain"
.LASF7:
	.string	"size_t"
.LASF32:
	.string	"_shortbuf"
.LASF49:
	.string	"_IO_2_1_stderr_"
.LASF20:
	.string	"_IO_buf_base"
.LASF59:
	.string	"long long unsigned int"
.LASF90:
	.string	"InitSrcArea"
.LASF74:
	.string	"__src"
.LASF70:
	.string	"adst"
.LASF55:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF72:
	.string	"size"
.LASF27:
	.string	"_fileno"
.LASF67:
	.string	"basic_1_dst_offset"
.LASF15:
	.string	"_IO_read_end"
.LASF83:
	.string	"GNU C11 7.5.0 -mmmx -mtune=generic -march=x86-64 -g -O2 -fno-asynchronous-unwind-tables -fstack-protector-strong"
.LASF6:
	.string	"long int"
.LASF89:
	.string	"check"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF80:
	.string	"__printf_chk"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF60:
	.string	"timezone"
.LASF43:
	.string	"_IO_marker"
.LASF50:
	.string	"stdin"
.LASF65:
	.string	"basic_1_src_offset"
.LASF3:
	.string	"unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF85:
	.string	"/home/landon/AssembleLangFinal/memcpy"
.LASF87:
	.string	"_IO_FILE_plus"
.LASF11:
	.string	"__suseconds_t"
.LASF18:
	.string	"_IO_write_ptr"
.LASF56:
	.string	"timeval"
.LASF53:
	.string	"sys_nerr"
.LASF45:
	.string	"_sbuf"
.LASF66:
	.string	"basic_2_src_offset"
.LASF2:
	.string	"short unsigned int"
.LASF22:
	.string	"_IO_save_base"
.LASF84:
	.string	"main.c"
.LASF61:
	.string	"tz_minuteswest"
.LASF92:
	.string	"__builtin_memcpy"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF51:
	.string	"stdout"
.LASF47:
	.string	"_IO_2_1_stdin_"
.LASF57:
	.string	"tv_sec"
.LASF19:
	.string	"_IO_write_end"
.LASF63:
	.string	"basic_1_size"
.LASF82:
	.string	"mymemcpy"
.LASF91:
	.string	"psrc"
.LASF86:
	.string	"_IO_lock_t"
.LASF42:
	.string	"_IO_FILE"
.LASF71:
	.string	"dest"
.LASF46:
	.string	"_pos"
.LASF54:
	.string	"sys_errlist"
.LASF25:
	.string	"_markers"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"short int"
.LASF75:
	.string	"__len"
.LASF31:
	.string	"_vtable_offset"
.LASF48:
	.string	"_IO_2_1_stdout_"
.LASF93:
	.string	"__stack_chk_fail"
.LASF58:
	.string	"tv_usec"
.LASF12:
	.string	"char"
.LASF44:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF16:
	.string	"_IO_read_base"
.LASF76:
	.string	"memcpy"
.LASF24:
	.string	"_IO_save_end"
.LASF78:
	.string	"__fmt"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF10:
	.string	"__time_t"
.LASF41:
	.string	"_unused2"
.LASF52:
	.string	"stderr"
.LASF73:
	.string	"__dest"
.LASF62:
	.string	"tz_dsttime"
.LASF23:
	.string	"_IO_backup_base"
.LASF81:
	.string	"gettimeofday"
.LASF68:
	.string	"basic_2_dst_offset"
.LASF69:
	.string	"pass"
.LASF64:
	.string	"basic_2_size"
.LASF88:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
