	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.p2align 4,,15
	.globl	memcpy
	.type	memcpy, @function
memcpy:
.LFB53:
	.file 1 "main.c"
	.loc 1 35 0
	.cfi_startproc
.LVL0:
	.loc 1 37 0
	testq	%rdx, %rdx
	.loc 1 35 0
	movq	%rdi, %rax
.LVL1:
	.loc 1 37 0
	je	.L2
	addq	%rdi, %rdx
.LVL2:
	.loc 1 36 0
	movq	%rdi, %rcx
.LVL3:
	.p2align 4,,10
	.p2align 3
.L3:
	.loc 1 38 0
	addq	$1, %rcx
.LVL4:
	movb	%sil, -1(%rcx)
.LVL5:
	addq	$1, %rsi
.LVL6:
	.loc 1 37 0
	cmpq	%rcx, %rdx
	jne	.L3
.LVL7:
.L2:
	.loc 1 42 0
	rep ret
	.cfi_endproc
.LFE53:
	.size	memcpy, .-memcpy
	.p2align 4,,15
	.globl	InitSrcArea
	.type	InitSrcArea, @function
InitSrcArea:
.LFB52:
	.loc 1 24 0
	.cfi_startproc
.LVL8:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 24 0
	movl	%edi, %ebx
	.loc 1 25 0
	movl	$100000, %edi
.LVL9:
	call	malloc@PLT
.LVL10:
	.loc 1 27 0
	testl	%ebx, %ebx
	.loc 1 25 0
	movq	%rax, src(%rip)
.LVL11:
	.loc 1 27 0
	je	.L9
	.p2align 4,,10
	.p2align 3
.L11:
.LVL12:
	.loc 1 28 0
	movb	%bl, (%rax)
	.loc 1 30 0
	addq	$1, %rax
.LVL13:
	.loc 1 27 0
	subl	$1, %ebx
.LVL14:
	jne	.L11
.L9:
	.loc 1 32 0
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL15:
	ret
	.cfi_endproc
.LFE52:
	.size	InitSrcArea, .-InitSrcArea
	.p2align 4,,15
	.globl	check
	.type	check, @function
check:
.LFB54:
	.loc 1 45 0
	.cfi_startproc
.LVL16:
	.loc 1 46 0
	testq	%rdx, %rdx
	je	.L21
	.loc 1 48 0
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
	.loc 1 51 0
	addq	$1, %rdi
.LVL19:
	.loc 1 52 0
	addq	$1, %rsi
.LVL20:
	.loc 1 46 0
	cmpq	%rdi, %rdx
	jne	.L20
.LVL21:
.L21:
	.loc 1 55 0
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	.loc 1 49 0
	xorl	%eax, %eax
	.loc 1 56 0
	ret
	.cfi_endproc
.LFE54:
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
	.string	"[Norm] Test (basic #2) %d / 5:     ,time: %u.\n\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB55:
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
.LVL22:
	.loc 1 64 0
	call	malloc@PLT
.LVL23:
.LBB28:
.LBB29:
	.loc 1 25 0
	movl	$100000, %edi
.LBE29:
.LBE28:
	.loc 1 64 0
	movq	%rax, dst(%rip)
.LVL24:
.LBB31:
.LBB30:
	.loc 1 25 0
	call	malloc@PLT
.LVL25:
	movl	$100000, %edx
	movq	%rax, src(%rip)
.LVL26:
	.p2align 4,,10
	.p2align 3
.L25:
	.loc 1 28 0
	movb	%dl, (%rax)
	.loc 1 30 0
	addq	$1, %rax
.LVL27:
	.loc 1 27 0
	subl	$1, %edx
.LVL28:
	jne	.L25
.LVL29:
.LBE30:
.LBE31:
	.loc 1 66 0
	leaq	16(%rsp), %rdi
	xorl	%esi, %esi
	leaq	basic_1_dst_offset(%rip), %rbx
	leaq	-4+basic_1_size(%rip), %r13
	leaq	-4+basic_1_src_offset(%rip), %r12
	movl	$1, %r15d
	movq	%rdi, (%rsp)
	call	gettimeofday@PLT
.LVL30:
	leaq	32(%rsp), %rax
	movq	%rax, 8(%rsp)
.LVL31:
.L30:
	.loc 1 70 0
	movq	(%rsp), %rdi
	xorl	%esi, %esi
	leaq	0(,%r15,4), %rbp
	call	gettimeofday@PLT
.LVL32:
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
.LVL33:
	.loc 1 74 0
	movq	8(%rsp), %rdi
	xorl	%esi, %esi
	.loc 1 71 0
	movq	%rax, %r14
.LVL34:
	.loc 1 74 0
	call	gettimeofday@PLT
.LVL35:
	.loc 1 75 0
	movslq	(%rbx), %rax
	addq	dst(%rip), %rax
	cmpq	%r14, %rax
	je	.L52
.L26:
	.loc 1 80 0
	movq	32(%rsp), %r8
	subq	16(%rsp), %r8
	leaq	.LC1(%rip), %rcx
	imulq	$1000, %r8, %r8
	addq	40(%rsp), %r8
	subq	24(%rsp), %r8
.LVL36:
.L36:
.LBB32:
.LBB33:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0 discriminator 4
	leaq	.LC2(%rip), %rsi
	movl	%r15d, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	addq	$1, %r15
.LVL37:
	addq	$4, %rbx
	call	__printf_chk@PLT
.LVL38:
.LBE33:
.LBE32:
	.loc 1 81 0 discriminator 4
	movslq	-4(%rbx), %rcx
	movslq	(%r12,%rbp), %rdx
.LBB34:
.LBB35:
	.loc 2 104 0 discriminator 4
	leaq	.LC3(%rip), %rsi
.LBE35:
.LBE34:
	.loc 1 81 0 discriminator 4
	addq	dst(%rip), %rcx
	addq	src(%rip), %rdx
.LBB37:
.LBB36:
	.loc 2 104 0 discriminator 4
	xorl	%eax, %eax
	movl	0(%r13,%rbp), %r8d
	movl	$1, %edi
	call	__printf_chk@PLT
.LVL39:
.LBE36:
.LBE37:
	.loc 1 68 0 discriminator 4
	cmpq	$6, %r15
	jne	.L30
	leaq	basic_2_size(%rip), %r12
	leaq	basic_2_dst_offset(%rip), %rbp
	leaq	-4+basic_2_src_offset(%rip), %r13
	.loc 1 68 0 is_stmt 0
	movl	$1, %ebx
.LVL40:
.L35:
	.loc 1 86 0 is_stmt 1
	movq	(%rsp), %rdi
	xorl	%esi, %esi
	leaq	0(,%rbx,4), %r14
	call	gettimeofday@PLT
.LVL41:
	.loc 1 88 0
	movslq	0(%r13,%rbx,4), %rsi
	.loc 1 87 0
	movslq	0(%rbp), %rdi
	.loc 1 88 0
	addq	src(%rip), %rsi
	.loc 1 87 0
	addq	dst(%rip), %rdi
	movslq	(%r12), %rdx
	call	mymemcpy@PLT
.LVL42:
	.loc 1 90 0
	movq	8(%rsp), %rdi
	xorl	%esi, %esi
	.loc 1 87 0
	movq	%rax, %r15
.LVL43:
	.loc 1 90 0
	call	gettimeofday@PLT
.LVL44:
	.loc 1 91 0
	movslq	0(%rbp), %rax
	addq	dst(%rip), %rax
	cmpq	%r15, %rax
	je	.L53
.L31:
	.loc 1 96 0
	movq	32(%rsp), %r8
	subq	16(%rsp), %r8
	leaq	.LC1(%rip), %rcx
	imulq	$1000, %r8, %r8
	addq	40(%rsp), %r8
	subq	24(%rsp), %r8
.LVL45:
.L37:
.LBB38:
.LBB39:
	.loc 2 104 0 discriminator 4
	leaq	.LC4(%rip), %rsi
	movl	%ebx, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	addq	$4, %r12
	addq	$4, %rbp
	call	__printf_chk@PLT
.LVL46:
.LBE39:
.LBE38:
	.loc 1 97 0 discriminator 4
	movslq	-4(%rbp), %rcx
	movslq	0(%r13,%r14), %rdx
.LBB40:
.LBB41:
	.loc 2 104 0 discriminator 4
	leaq	.LC5(%rip), %rsi
.LBE41:
.LBE40:
	.loc 1 97 0 discriminator 4
	addq	dst(%rip), %rcx
	addq	src(%rip), %rdx
.LBB43:
.LBB42:
	.loc 2 104 0 discriminator 4
	movl	$1, %edi
	movl	-4(%r12), %r8d
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL47:
.LBE42:
.LBE43:
	.loc 1 98 0 discriminator 4
	movq	(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
.LVL48:
	.loc 1 99 0 discriminator 4
	movslq	-4(%rbp), %rdi
	.loc 1 100 0 discriminator 4
	movslq	0(%r13,%r14), %rsi
	.loc 1 99 0 discriminator 4
	movslq	-4(%r12), %rdx
	addq	dst(%rip), %rdi
	.loc 1 100 0 discriminator 4
	addq	src(%rip), %rsi
	.loc 1 99 0 discriminator 4
	call	memcpy@PLT
.LVL49:
	.loc 1 102 0 discriminator 4
	movq	8(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
.LVL50:
	.loc 1 103 0 discriminator 4
	movq	32(%rsp), %rcx
	subq	16(%rsp), %rcx
.LBB44:
.LBB45:
	.loc 2 104 0 discriminator 4
	leaq	.LC6(%rip), %rsi
	movl	%ebx, %edx
	xorl	%eax, %eax
	movl	$1, %edi
	addq	$1, %rbx
.LVL51:
.LBE45:
.LBE44:
	.loc 1 103 0 discriminator 4
	imulq	$1000, %rcx, %rcx
	addq	40(%rsp), %rcx
	subq	24(%rsp), %rcx
.LBB47:
.LBB46:
	.loc 2 104 0 discriminator 4
	call	__printf_chk@PLT
.LVL52:
.LBE46:
.LBE47:
	.loc 1 84 0 discriminator 4
	cmpq	$6, %rbx
	jne	.L35
	.loc 1 111 0
	xorl	%eax, %eax
	movq	56(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L54
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
.LVL53:
	ret
.LVL54:
.L53:
	.cfi_restore_state
	.loc 1 92 0 discriminator 1
	movslq	(%r12), %rdi
	.loc 1 93 0 discriminator 1
	movslq	0(%r13,%rbx,4), %rsi
	addq	src(%rip), %rsi
.LVL55:
.LBB48:
.LBB49:
	.loc 1 46 0 discriminator 1
	testq	%rdi, %rdi
	je	.L32
	.loc 1 48 0
	movzbl	(%rax), %ecx
	cmpb	%cl, (%rsi)
	jne	.L31
	movl	$1, %edx
	jmp	.L33
.LVL56:
	.p2align 4,,10
	.p2align 3
.L34:
	movzbl	(%rax,%rdx), %ecx
	addq	$1, %rdx
.LVL57:
	cmpb	-1(%rsi,%rdx), %cl
	jne	.L31
.LVL58:
.L33:
	.loc 1 46 0
	cmpq	%rdx, %rdi
	jne	.L34
.LVL59:
.L32:
.LBE49:
.LBE48:
	.loc 1 96 0
	movq	32(%rsp), %r8
	subq	16(%rsp), %r8
	leaq	.LC0(%rip), %rcx
	imulq	$1000, %r8, %r8
	addq	40(%rsp), %r8
	subq	24(%rsp), %r8
	jmp	.L37
.LVL60:
.L52:
	.loc 1 76 0 discriminator 1
	movslq	0(%r13,%r15,4), %rdi
	.loc 1 77 0 discriminator 1
	movslq	(%r12,%r15,4), %rsi
	addq	src(%rip), %rsi
.LVL61:
.LBB50:
.LBB51:
	.loc 1 46 0 discriminator 1
	testq	%rdi, %rdi
	je	.L27
	.loc 1 48 0
	movzbl	(%rax), %ecx
	cmpb	%cl, (%rsi)
	jne	.L26
	movl	$1, %edx
	jmp	.L28
.LVL62:
	.p2align 4,,10
	.p2align 3
.L29:
	movzbl	(%rax,%rdx), %ecx
	addq	$1, %rdx
.LVL63:
	cmpb	-1(%rsi,%rdx), %cl
	jne	.L26
.LVL64:
.L28:
	.loc 1 46 0
	cmpq	%rdx, %rdi
	jne	.L29
.LVL65:
.L27:
.LBE51:
.LBE50:
	.loc 1 80 0
	movq	32(%rsp), %r8
	subq	16(%rsp), %r8
	leaq	.LC0(%rip), %rcx
	imulq	$1000, %r8, %r8
	addq	40(%rsp), %r8
	subq	24(%rsp), %r8
	jmp	.L36
.LVL66:
.L54:
	.loc 1 111 0
	call	__stack_chk_fail@PLT
.LVL67:
	.cfi_endproc
.LFE55:
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
	.long	16
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
	.long	52428
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
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h"
	.file 9 "/usr/include/x86_64-linux-gnu/sys/time.h"
	.file 10 "/usr/include/stdlib.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.file 12 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x953
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF78
	.byte	0xc
	.long	.LASF79
	.long	.LASF80
	.long	.Ldebug_ranges0+0xc0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x3
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
	.byte	0x4
	.byte	0x8c
	.long	0x65
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x8d
	.long	0x65
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x94
	.long	0x65
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0x96
	.long	0x65
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0xa0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x7
	.long	0xa0
	.uleb128 0x8
	.long	.LASF42
	.byte	0xd8
	.byte	0x5
	.byte	0xf5
	.long	0x22c
	.uleb128 0x9
	.long	.LASF13
	.byte	0x5
	.byte	0xf6
	.long	0x5e
	.byte	0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x5
	.byte	0xfb
	.long	0x9a
	.byte	0x8
	.uleb128 0x9
	.long	.LASF15
	.byte	0x5
	.byte	0xfc
	.long	0x9a
	.byte	0x10
	.uleb128 0x9
	.long	.LASF16
	.byte	0x5
	.byte	0xfd
	.long	0x9a
	.byte	0x18
	.uleb128 0x9
	.long	.LASF17
	.byte	0x5
	.byte	0xfe
	.long	0x9a
	.byte	0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.byte	0xff
	.long	0x9a
	.byte	0x28
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.value	0x100
	.long	0x9a
	.byte	0x30
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.value	0x101
	.long	0x9a
	.byte	0x38
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.value	0x102
	.long	0x9a
	.byte	0x40
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.value	0x104
	.long	0x9a
	.byte	0x48
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.value	0x105
	.long	0x9a
	.byte	0x50
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.value	0x106
	.long	0x9a
	.byte	0x58
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.value	0x108
	.long	0x264
	.byte	0x60
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.value	0x10a
	.long	0x26a
	.byte	0x68
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.value	0x10c
	.long	0x5e
	.byte	0x70
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.value	0x110
	.long	0x5e
	.byte	0x74
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.value	0x112
	.long	0x6c
	.byte	0x78
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.value	0x116
	.long	0x42
	.byte	0x80
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.value	0x117
	.long	0x50
	.byte	0x82
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.value	0x118
	.long	0x270
	.byte	0x83
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.value	0x11c
	.long	0x280
	.byte	0x88
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.value	0x125
	.long	0x77
	.byte	0x90
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.value	0x12d
	.long	0x98
	.byte	0x98
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.value	0x12e
	.long	0x98
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.value	0x12f
	.long	0x98
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.value	0x130
	.long	0x98
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.value	0x132
	.long	0x29
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.value	0x133
	.long	0x5e
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.value	0x135
	.long	0x286
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	.LASF81
	.byte	0x5
	.byte	0x9a
	.uleb128 0x8
	.long	.LASF43
	.byte	0x18
	.byte	0x5
	.byte	0xa0
	.long	0x264
	.uleb128 0x9
	.long	.LASF44
	.byte	0x5
	.byte	0xa1
	.long	0x264
	.byte	0
	.uleb128 0x9
	.long	.LASF45
	.byte	0x5
	.byte	0xa2
	.long	0x26a
	.byte	0x8
	.uleb128 0x9
	.long	.LASF46
	.byte	0x5
	.byte	0xa6
	.long	0x5e
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x233
	.uleb128 0x6
	.byte	0x8
	.long	0xac
	.uleb128 0xc
	.long	0xa0
	.long	0x280
	.uleb128 0xd
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22c
	.uleb128 0xc
	.long	0xa0
	.long	0x296
	.uleb128 0xd
	.long	0x34
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF82
	.uleb128 0xf
	.long	.LASF47
	.byte	0x5
	.value	0x13f
	.long	0x296
	.uleb128 0xf
	.long	.LASF48
	.byte	0x5
	.value	0x140
	.long	0x296
	.uleb128 0xf
	.long	.LASF49
	.byte	0x5
	.value	0x141
	.long	0x296
	.uleb128 0x6
	.byte	0x8
	.long	0xa7
	.uleb128 0x7
	.long	0x2bf
	.uleb128 0x10
	.long	0x2bf
	.uleb128 0x11
	.long	.LASF50
	.byte	0x6
	.byte	0x87
	.long	0x26a
	.uleb128 0x11
	.long	.LASF51
	.byte	0x6
	.byte	0x88
	.long	0x26a
	.uleb128 0x11
	.long	.LASF52
	.byte	0x6
	.byte	0x89
	.long	0x26a
	.uleb128 0x11
	.long	.LASF53
	.byte	0x7
	.byte	0x1a
	.long	0x5e
	.uleb128 0xc
	.long	0x2c5
	.long	0x306
	.uleb128 0x12
	.byte	0
	.uleb128 0x7
	.long	0x2fb
	.uleb128 0x11
	.long	.LASF54
	.byte	0x7
	.byte	0x1b
	.long	0x306
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF55
	.uleb128 0x8
	.long	.LASF56
	.byte	0x10
	.byte	0x8
	.byte	0x8
	.long	0x342
	.uleb128 0x9
	.long	.LASF57
	.byte	0x8
	.byte	0xa
	.long	0x82
	.byte	0
	.uleb128 0x9
	.long	.LASF58
	.byte	0x8
	.byte	0xb
	.long	0x8d
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF59
	.uleb128 0x6
	.byte	0x8
	.long	0x34f
	.uleb128 0x13
	.uleb128 0x8
	.long	.LASF60
	.byte	0x8
	.byte	0x9
	.byte	0x34
	.long	0x375
	.uleb128 0x9
	.long	.LASF61
	.byte	0x9
	.byte	0x36
	.long	0x5e
	.byte	0
	.uleb128 0x9
	.long	.LASF62
	.byte	0x9
	.byte	0x37
	.long	0x5e
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x350
	.uleb128 0x10
	.long	0x375
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
	.uleb128 0xc
	.long	0x5e
	.long	0x3ba
	.uleb128 0xd
	.long	0x34
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.long	.LASF63
	.byte	0x1
	.byte	0xa
	.long	0x3aa
	.uleb128 0x9
	.byte	0x3
	.quad	basic_1_size
	.uleb128 0x15
	.long	.LASF64
	.byte	0x1
	.byte	0xb
	.long	0x3aa
	.uleb128 0x9
	.byte	0x3
	.quad	basic_2_size
	.uleb128 0x15
	.long	.LASF65
	.byte	0x1
	.byte	0xd
	.long	0x3aa
	.uleb128 0x9
	.byte	0x3
	.quad	basic_1_src_offset
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0xe
	.long	0x3aa
	.uleb128 0x9
	.byte	0x3
	.quad	basic_2_src_offset
	.uleb128 0x15
	.long	.LASF67
	.byte	0x1
	.byte	0x10
	.long	0x3aa
	.uleb128 0x9
	.byte	0x3
	.quad	basic_1_dst_offset
	.uleb128 0x15
	.long	.LASF68
	.byte	0x1
	.byte	0x11
	.long	0x3aa
	.uleb128 0x9
	.byte	0x3
	.quad	basic_2_dst_offset
	.uleb128 0x16
	.long	.LASF83
	.byte	0x1
	.byte	0x3b
	.long	0x5e
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x7cb
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x3c
	.long	0x5e
	.long	.LLST8
	.uleb128 0x18
	.long	.LASF69
	.byte	0x1
	.byte	0x3d
	.long	0x5e
	.long	.LLST9
	.uleb128 0x19
	.string	"tv1"
	.byte	0x1
	.byte	0x3e
	.long	0x31d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x19
	.string	"tv2"
	.byte	0x1
	.byte	0x3e
	.long	0x31d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x18
	.long	.LASF70
	.byte	0x1
	.byte	0x3f
	.long	0x98
	.long	.LLST10
	.uleb128 0x1a
	.long	0x7fb
	.quad	.LBB28
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x41
	.long	0x4e5
	.uleb128 0x1b
	.long	0x807
	.long	.LLST11
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0
	.uleb128 0x1d
	.long	0x8bb
	.uleb128 0x1e
	.quad	.LVL25
	.long	0x911
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x186a0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x87a
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.byte	0x1
	.byte	0x50
	.long	0x52a
	.uleb128 0x1b
	.long	0x88a
	.long	.LLST12
	.uleb128 0x1e
	.quad	.LVL38
	.long	0x91d
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
	.uleb128 0x1a
	.long	0x87a
	.quad	.LBB34
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x51
	.long	0x56b
	.uleb128 0x1b
	.long	0x88a
	.long	.LLST13
	.uleb128 0x1e
	.quad	.LVL39
	.long	0x91d
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
	.long	0x87a
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.byte	0x1
	.byte	0x60
	.long	0x5b6
	.uleb128 0x1b
	.long	0x88a
	.long	.LLST14
	.uleb128 0x1e
	.quad	.LVL46
	.long	0x91d
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
	.long	0x87a
	.quad	.LBB40
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x61
	.long	0x5f7
	.uleb128 0x1b
	.long	0x88a
	.long	.LLST15
	.uleb128 0x1e
	.quad	.LVL47
	.long	0x91d
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
	.uleb128 0x1a
	.long	0x87a
	.quad	.LBB44
	.long	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0x67
	.long	0x638
	.uleb128 0x1b
	.long	0x88a
	.long	.LLST16
	.uleb128 0x1e
	.quad	.LVL52
	.long	0x91d
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
	.long	0x7cb
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.byte	0x1
	.byte	0x5c
	.long	0x66f
	.uleb128 0x1b
	.long	0x7f1
	.long	.LLST17
	.uleb128 0x1b
	.long	0x7e6
	.long	.LLST18
	.uleb128 0x1b
	.long	0x7db
	.long	.LLST19
	.byte	0
	.uleb128 0x20
	.long	0x7cb
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.byte	0x1
	.byte	0x4c
	.long	0x6a6
	.uleb128 0x1b
	.long	0x7f1
	.long	.LLST20
	.uleb128 0x1b
	.long	0x7e6
	.long	.LLST21
	.uleb128 0x1b
	.long	0x7db
	.long	.LLST22
	.byte	0
	.uleb128 0x21
	.quad	.LVL23
	.long	0x911
	.long	0x6c1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x186a0
	.byte	0
	.uleb128 0x21
	.quad	.LVL30
	.long	0x928
	.long	0x6df
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
	.uleb128 0x21
	.quad	.LVL32
	.long	0x928
	.long	0x6fd
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
	.quad	.LVL33
	.long	0x933
	.uleb128 0x21
	.quad	.LVL35
	.long	0x928
	.long	0x729
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
	.uleb128 0x21
	.quad	.LVL41
	.long	0x928
	.long	0x747
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
	.quad	.LVL42
	.long	0x933
	.uleb128 0x21
	.quad	.LVL44
	.long	0x928
	.long	0x773
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
	.uleb128 0x21
	.quad	.LVL48
	.long	0x928
	.long	0x791
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
	.quad	.LVL49
	.long	0x93e
	.uleb128 0x21
	.quad	.LVL50
	.long	0x928
	.long	0x7bd
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
	.quad	.LVL67
	.long	0x94d
	.byte	0
	.uleb128 0x23
	.long	.LASF84
	.byte	0x1
	.byte	0x2d
	.long	0x5e
	.byte	0x1
	.long	0x7fb
	.uleb128 0x24
	.long	.LASF71
	.byte	0x1
	.byte	0x2d
	.long	0x9a
	.uleb128 0x25
	.string	"src"
	.byte	0x1
	.byte	0x2d
	.long	0x2bf
	.uleb128 0x25
	.string	"n"
	.byte	0x1
	.byte	0x2d
	.long	0x29
	.byte	0
	.uleb128 0x26
	.long	.LASF85
	.byte	0x1
	.byte	0x18
	.byte	0x1
	.long	0x81e
	.uleb128 0x24
	.long	.LASF72
	.byte	0x1
	.byte	0x18
	.long	0x5e
	.uleb128 0x27
	.long	.LASF86
	.byte	0x1
	.byte	0x1a
	.long	0x9a
	.byte	0
	.uleb128 0x28
	.long	.LASF87
	.byte	0xb
	.byte	0x1f
	.long	0x98
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x87a
	.uleb128 0x29
	.long	.LASF71
	.byte	0x1
	.byte	0x23
	.long	0x98
	.long	.LLST0
	.uleb128 0x2a
	.string	"src"
	.byte	0x1
	.byte	0x23
	.long	0x349
	.long	.LLST1
	.uleb128 0x2a
	.string	"n"
	.byte	0x1
	.byte	0x23
	.long	0x29
	.long	.LLST2
	.uleb128 0x17
	.string	"tmp"
	.byte	0x1
	.byte	0x24
	.long	0x9a
	.long	.LLST3
	.byte	0
	.uleb128 0x2b
	.long	.LASF88
	.byte	0x2
	.byte	0x66
	.long	0x5e
	.byte	0x3
	.long	0x897
	.uleb128 0x24
	.long	.LASF73
	.byte	0x2
	.byte	0x66
	.long	0x2ca
	.uleb128 0x2c
	.byte	0
	.uleb128 0x2d
	.long	0x7fb
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x8da
	.uleb128 0x1b
	.long	0x807
	.long	.LLST4
	.uleb128 0x2e
	.long	0x812
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1e
	.quad	.LVL10
	.long	0x911
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x186a0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x7cb
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x911
	.uleb128 0x1b
	.long	0x7db
	.long	.LLST5
	.uleb128 0x1b
	.long	0x7e6
	.long	.LLST6
	.uleb128 0x1b
	.long	0x7f1
	.long	.LLST7
	.byte	0
	.uleb128 0x2f
	.long	.LASF74
	.long	.LASF74
	.byte	0xa
	.value	0x21b
	.uleb128 0x30
	.long	.LASF75
	.long	.LASF75
	.byte	0x2
	.byte	0x57
	.uleb128 0x30
	.long	.LASF76
	.long	.LASF76
	.byte	0x9
	.byte	0x44
	.uleb128 0x30
	.long	.LASF77
	.long	.LASF77
	.byte	0x1
	.byte	0x15
	.uleb128 0x31
	.long	.LASF87
	.long	.LASF89
	.byte	0xc
	.byte	0
	.long	.LASF87
	.uleb128 0x32
	.long	.LASF90
	.long	.LASF90
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2c
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST8:
	.quad	.LVL22
	.quad	.LVL31
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL31
	.quad	.LVL37
	.value	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL37
	.quad	.LVL38-1
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL40
	.quad	.LVL51
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL51
	.quad	.LVL52-1
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL54
	.quad	.LVL60
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL60
	.quad	.LVL66
	.value	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL22
	.quad	.LVL36
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL40
	.quad	.LVL45
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL54
	.quad	.LVL59
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL59
	.quad	.LVL60
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL60
	.quad	.LVL65
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL65
	.quad	.LVL66
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL34
	.quad	.LVL35-1
	.value	0x1
	.byte	0x50
	.quad	.LVL35-1
	.quad	.LVL40
	.value	0x1
	.byte	0x5e
	.quad	.LVL43
	.quad	.LVL44-1
	.value	0x1
	.byte	0x50
	.quad	.LVL44-1
	.quad	.LVL53
	.value	0x1
	.byte	0x5f
	.quad	.LVL54
	.quad	.LVL60
	.value	0x1
	.byte	0x5f
	.quad	.LVL60
	.quad	.LVL66
	.value	0x1
	.byte	0x5e
	.quad	.LVL66
	.quad	.LFE55
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL24
	.quad	.LVL26
	.value	0x6
	.byte	0xc
	.long	0x186a0
	.byte	0x9f
	.quad	.LVL26
	.quad	.LVL28
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL28
	.quad	.LVL29
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL36
	.quad	.LVL38
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL38
	.quad	.LVL39
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL45
	.quad	.LVL46
	.value	0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL46
	.quad	.LVL47
	.value	0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL50
	.quad	.LVL52
	.value	0xa
	.byte	0x3
	.quad	.LC6
	.byte	0x9f
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL55
	.quad	.LVL56
	.value	0x1
	.byte	0x55
	.quad	.LVL56
	.quad	.LVL57
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
	.quad	.LVL57
	.quad	.LVL58
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
	.quad	.LVL58
	.quad	.LVL59
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
.LLST18:
	.quad	.LVL55
	.quad	.LVL56
	.value	0x1
	.byte	0x54
	.quad	.LVL56
	.quad	.LVL57
	.value	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL57
	.quad	.LVL58
	.value	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL58
	.quad	.LVL59
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
	.quad	.LVL55
	.quad	.LVL56
	.value	0x1
	.byte	0x50
	.quad	.LVL56
	.quad	.LVL57
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL57
	.quad	.LVL58
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL58
	.quad	.LVL59
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL61
	.quad	.LVL62
	.value	0x1
	.byte	0x55
	.quad	.LVL62
	.quad	.LVL63
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
	.quad	.LVL63
	.quad	.LVL64
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
	.quad	.LVL64
	.quad	.LVL65
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
.LLST21:
	.quad	.LVL61
	.quad	.LVL62
	.value	0x1
	.byte	0x54
	.quad	.LVL62
	.quad	.LVL63
	.value	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL63
	.quad	.LVL64
	.value	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL64
	.quad	.LVL65
	.value	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL61
	.quad	.LVL62
	.value	0x1
	.byte	0x50
	.quad	.LVL62
	.quad	.LVL63
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL63
	.quad	.LVL64
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL64
	.quad	.LVL65
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
	.quad	.LVL3
	.value	0x1
	.byte	0x55
	.quad	.LVL3
	.quad	.LFE53
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0
	.quad	.LVL3
	.value	0x1
	.byte	0x54
	.quad	.LVL3
	.quad	.LVL6
	.value	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.quad	.LVL6
	.quad	.LVL7
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x1
	.byte	0x51
	.quad	.LVL2
	.quad	.LVL3
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL3
	.quad	.LVL5
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
	.quad	.LVL5
	.quad	.LVL6
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
	.quad	.LVL6
	.quad	.LVL7
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
.LLST3:
	.quad	.LVL1
	.quad	.LVL3
	.value	0x1
	.byte	0x55
	.quad	.LVL3
	.quad	.LVL7
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL8
	.quad	.LVL9
	.value	0x1
	.byte	0x55
	.quad	.LVL9
	.quad	.LVL12
	.value	0x1
	.byte	0x53
	.quad	.LVL12
	.quad	.LVL14
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL14
	.quad	.LVL15
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
	.quad	.LFE54
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
	.quad	.LFE54
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
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB28
	.quad	.LBE28
	.quad	.LBB31
	.quad	.LBE31
	.quad	0
	.quad	0
	.quad	.LBB34
	.quad	.LBE34
	.quad	.LBB37
	.quad	.LBE37
	.quad	0
	.quad	0
	.quad	.LBB40
	.quad	.LBE40
	.quad	.LBB43
	.quad	.LBE43
	.quad	0
	.quad	0
	.quad	.LBB44
	.quad	.LBE44
	.quad	.LBB47
	.quad	.LBE47
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB55
	.quad	.LFE55
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF88:
	.string	"printf"
.LASF8:
	.string	"__off_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF74:
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
.LASF85:
	.string	"InitSrcArea"
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
.LASF78:
	.string	"GNU C11 7.5.0 -mmmx -mtune=generic -march=x86-64 -g -O2 -fno-asynchronous-unwind-tables -fstack-protector-strong"
.LASF6:
	.string	"long int"
.LASF84:
	.string	"check"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF75:
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
.LASF80:
	.string	"/home/landon/AssembleLangFinal/memcpy"
.LASF82:
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
.LASF79:
	.string	"main.c"
.LASF61:
	.string	"tz_minuteswest"
.LASF89:
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
.LASF77:
	.string	"mymemcpy"
.LASF86:
	.string	"psrc"
.LASF81:
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
.LASF31:
	.string	"_vtable_offset"
.LASF48:
	.string	"_IO_2_1_stdout_"
.LASF90:
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
.LASF87:
	.string	"memcpy"
.LASF24:
	.string	"_IO_save_end"
.LASF73:
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
.LASF62:
	.string	"tz_dsttime"
.LASF23:
	.string	"_IO_backup_base"
.LASF76:
	.string	"gettimeofday"
.LASF68:
	.string	"basic_2_dst_offset"
.LASF69:
	.string	"pass"
.LASF64:
	.string	"basic_2_size"
.LASF83:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
