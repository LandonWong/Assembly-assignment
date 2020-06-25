	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
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
	movl	%edi, %ebx
	.loc 1 25 0
	movl	$100000, %edi
.LVL1:
	call	malloc@PLT
.LVL2:
	movq	%rax, src(%rip)
.LVL3:
	.loc 1 27 0
	testl	%ebx, %ebx
	je	.L1
.L3:
	.loc 1 28 0
	movb	%bl, (%rax)
.LVL4:
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
	.globl	check
	.type	check, @function
check:
.LFB53:
	.loc 1 35 0
	.cfi_startproc
.LVL8:
	.loc 1 36 0
	testq	%rdx, %rdx
	je	.L10
	.loc 1 38 0
	movzbl	(%rsi), %eax
	cmpb	%al, (%rdi)
	jne	.L11
	addq	%rdi, %rdx
.LVL9:
.L8:
	.loc 1 41 0
	addq	$1, %rdi
.LVL10:
	.loc 1 42 0
	addq	$1, %rsi
.LVL11:
	.loc 1 36 0
	cmpq	%rdi, %rdx
	je	.L13
	.loc 1 38 0
	movzbl	(%rsi), %eax
	cmpb	%al, (%rdi)
	je	.L8
	.loc 1 39 0
	movl	$0, %eax
	.loc 1 46 0
	ret
.L13:
	.loc 1 45 0
	movl	$1, %eax
	ret
.LVL12:
.L10:
	movl	$1, %eax
	ret
.L11:
	.loc 1 39 0
	movl	$0, %eax
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
	.string	"       Prod: %x --> %x, size = %d.\n"
	.align 8
.LC4:
	.string	"[Clib] Test (basic #1) %d / 5:     ,time: %u.\n\n"
	.align 8
.LC5:
	.string	"[Mine] Test (basic #2) %d / 5: %s ,time: %u.\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB54:
	.loc 1 49 0
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	.loc 1 49 0
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
.LVL13:
	.loc 1 54 0
	movl	$100000, %edi
	call	malloc@PLT
.LVL14:
	movq	%rax, dst(%rip)
	.loc 1 55 0
	movl	$100000, %edi
	call	InitSrcArea
.LVL15:
	leaq	basic_1_size(%rip), %r12
	leaq	basic_1_dst_offset(%rip), %rbp
	movl	$1, %ebx
	.loc 1 59 0
	leaq	32(%rsp), %rax
	movq	%rax, 8(%rsp)
	.loc 1 61 0
	leaq	-4+basic_1_src_offset(%rip), %r15
	.loc 1 63 0
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	jmp	.L17
.LVL16:
.L29:
	.loc 1 65 0 discriminator 1
	movslq	(%r12), %rdx
	.loc 1 66 0 discriminator 1
	movslq	(%r15,%rbx,4), %rsi
	addq	src(%rip), %rsi
	.loc 1 65 0 discriminator 1
	call	check
.LVL17:
	.loc 1 69 0 discriminator 1
	movq	48(%rsp), %r8
	subq	32(%rsp), %r8
	imulq	$1000, %r8, %r8
	addq	56(%rsp), %r8
	subq	40(%rsp), %r8
	cmpl	$1, %eax
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
.LVL18:
	cmovne	%rax, %rcx
.L16:
.LVL19:
.LBB18:
.LBB19:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0 discriminator 4
	movl	%ebx, %edx
	leaq	.LC2(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL20:
.LBE19:
.LBE18:
	.loc 1 70 0 discriminator 4
	movq	(%rsp), %rax
	movslq	(%rax), %rcx
	addq	dst(%rip), %rcx
	movslq	(%r15,%r13), %rdx
	addq	src(%rip), %rdx
.LBB20:
.LBB21:
	.loc 2 104 0 discriminator 4
	movl	(%r14), %r8d
	leaq	.LC3(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL21:
.LBE21:
.LBE20:
	.loc 1 71 0 discriminator 4
	movl	$0, %esi
	movq	8(%rsp), %rdi
	call	gettimeofday@PLT
.LVL22:
	.loc 1 72 0 discriminator 4
	movq	(%rsp), %rax
	movslq	(%rax), %rdi
	addq	dst(%rip), %rdi
.LVL23:
	movslq	(%r14), %rdx
.LVL24:
	.loc 1 73 0 discriminator 4
	movslq	(%r15,%r13), %rsi
	addq	src(%rip), %rsi
.LBB22:
.LBB23:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 3 34 0 discriminator 4
	call	memcpy@PLT
.LVL25:
.LBE23:
.LBE22:
	.loc 1 75 0 discriminator 4
	movl	$0, %esi
	movq	16(%rsp), %rdi
	call	gettimeofday@PLT
.LVL26:
	.loc 1 76 0 discriminator 4
	movq	48(%rsp), %rcx
	subq	32(%rsp), %rcx
	imulq	$1000, %rcx, %rcx
	addq	56(%rsp), %rcx
	subq	40(%rsp), %rcx
.LBB24:
.LBB25:
	.loc 2 104 0 discriminator 4
	movl	%ebx, %edx
	leaq	.LC4(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL27:
	addq	$1, %rbx
.LVL28:
	addq	$4, %r12
	addq	$4, %rbp
.LBE25:
.LBE24:
	.loc 1 57 0 discriminator 4
	cmpq	$6, %rbx
	je	.L28
.LVL29:
.L17:
	.loc 1 59 0
	movl	$0, %esi
	movq	8(%rsp), %rdi
	call	gettimeofday@PLT
.LVL30:
	movq	%r12, %r14
	leaq	0(,%rbx,4), %r13
	movq	%rbp, (%rsp)
	.loc 1 60 0
	movslq	(%r12), %rdx
	.loc 1 61 0
	movslq	(%r15,%rbx,4), %rsi
	addq	src(%rip), %rsi
	.loc 1 60 0
	movslq	0(%rbp), %rdi
	addq	dst(%rip), %rdi
	call	mymemcpy@PLT
.LVL31:
	movq	%rax, 24(%rsp)
.LVL32:
	.loc 1 63 0
	movl	$0, %esi
	movq	16(%rsp), %rdi
	call	gettimeofday@PLT
.LVL33:
	.loc 1 64 0
	movslq	0(%rbp), %rdi
	addq	dst(%rip), %rdi
	cmpq	24(%rsp), %rdi
	je	.L29
	.loc 1 69 0
	movq	48(%rsp), %r8
	subq	32(%rsp), %r8
	imulq	$1000, %r8, %r8
	addq	56(%rsp), %r8
	subq	40(%rsp), %r8
	leaq	.LC1(%rip), %rcx
	jmp	.L16
.LVL34:
.L28:
	leaq	basic_2_size(%rip), %r12
	leaq	basic_2_dst_offset(%rip), %rbp
	.loc 1 57 0
	movl	$1, %ebx
	.loc 1 81 0
	leaq	32(%rsp), %rax
	movq	%rax, 8(%rsp)
	.loc 1 83 0
	leaq	-4+basic_2_src_offset(%rip), %r15
	.loc 1 85 0
	leaq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	jmp	.L20
.LVL35:
.L31:
	.loc 1 87 0 discriminator 1
	movslq	(%r12), %rdx
	.loc 1 88 0 discriminator 1
	movslq	(%r15,%rbx,4), %rsi
	addq	src(%rip), %rsi
	.loc 1 87 0 discriminator 1
	call	check
.LVL36:
	.loc 1 91 0 discriminator 1
	movq	48(%rsp), %r8
	subq	32(%rsp), %r8
	imulq	$1000, %r8, %r8
	addq	56(%rsp), %r8
	subq	40(%rsp), %r8
	cmpl	$1, %eax
	leaq	.LC0(%rip), %rcx
	leaq	.LC1(%rip), %rax
.LVL37:
	cmovne	%rax, %rcx
.L19:
.LVL38:
.LBB26:
.LBB27:
	.loc 2 104 0 discriminator 4
	movl	%ebx, %edx
	leaq	.LC5(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL39:
.LBE27:
.LBE26:
	.loc 1 92 0 discriminator 4
	movq	(%rsp), %rax
	movslq	(%rax), %rcx
	addq	dst(%rip), %rcx
	movslq	(%r15,%r13), %rdx
	addq	src(%rip), %rdx
.LBB28:
.LBB29:
	.loc 2 104 0 discriminator 4
	movl	(%r14), %r8d
	leaq	.LC3(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL40:
.LBE29:
.LBE28:
	.loc 1 93 0 discriminator 4
	movl	$0, %esi
	movq	8(%rsp), %rdi
	call	gettimeofday@PLT
.LVL41:
	.loc 1 94 0 discriminator 4
	movq	(%rsp), %rax
	movslq	(%rax), %rdi
	addq	dst(%rip), %rdi
.LVL42:
	movslq	(%r14), %rdx
.LVL43:
	.loc 1 95 0 discriminator 4
	movslq	(%r15,%r13), %rsi
	addq	src(%rip), %rsi
.LBB30:
.LBB31:
	.loc 3 34 0 discriminator 4
	call	memcpy@PLT
.LVL44:
.LBE31:
.LBE30:
	.loc 1 97 0 discriminator 4
	movl	$0, %esi
	movq	16(%rsp), %rdi
	call	gettimeofday@PLT
.LVL45:
	.loc 1 98 0 discriminator 4
	movq	48(%rsp), %rcx
	subq	32(%rsp), %rcx
	imulq	$1000, %rcx, %rcx
	addq	56(%rsp), %rcx
	subq	40(%rsp), %rcx
.LBB32:
.LBB33:
	.loc 2 104 0 discriminator 4
	movl	%ebx, %edx
	leaq	.LC4(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL46:
	addq	$1, %rbx
.LVL47:
	addq	$4, %r12
	addq	$4, %rbp
.LBE33:
.LBE32:
	.loc 1 79 0 discriminator 4
	cmpq	$6, %rbx
	je	.L30
.L20:
.LVL48:
	.loc 1 81 0
	movl	$0, %esi
	movq	8(%rsp), %rdi
	call	gettimeofday@PLT
.LVL49:
	movq	%r12, %r14
	leaq	0(,%rbx,4), %r13
	movq	%rbp, (%rsp)
	.loc 1 82 0
	movslq	(%r12), %rdx
	.loc 1 83 0
	movslq	(%r15,%rbx,4), %rsi
	addq	src(%rip), %rsi
	.loc 1 82 0
	movslq	0(%rbp), %rdi
	addq	dst(%rip), %rdi
	call	mymemcpy@PLT
.LVL50:
	movq	%rax, 24(%rsp)
.LVL51:
	.loc 1 85 0
	movl	$0, %esi
	movq	16(%rsp), %rdi
	call	gettimeofday@PLT
.LVL52:
	.loc 1 86 0
	movslq	0(%rbp), %rdi
	addq	dst(%rip), %rdi
	cmpq	24(%rsp), %rdi
	je	.L31
	.loc 1 91 0
	movq	48(%rsp), %r8
	subq	32(%rsp), %r8
	imulq	$1000, %r8, %r8
	addq	56(%rsp), %r8
	subq	40(%rsp), %r8
	leaq	.LC1(%rip), %rcx
	jmp	.L19
.LVL53:
.L30:
	.loc 1 106 0
	movl	$0, %eax
	movq	72(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L32
	addq	$88, %rsp
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
.L32:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.LVL54:
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
	.long	52272
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
	.long	268
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
	.long	61439
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
	.long	0x98d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF86
	.byte	0xc
	.long	.LASF87
	.long	.LASF88
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x4
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
	.byte	0x5
	.byte	0x8c
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x5
	.byte	0x8d
	.long	0x69
	.uleb128 0x2
	.long	.LASF10
	.byte	0x5
	.byte	0x94
	.long	0x69
	.uleb128 0x2
	.long	.LASF11
	.byte	0x5
	.byte	0x96
	.long	0x69
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.long	0x9c
	.uleb128 0x7
	.byte	0x8
	.long	0xa9
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x8
	.long	0xa9
	.uleb128 0x9
	.long	.LASF42
	.byte	0xd8
	.byte	0x6
	.byte	0xf5
	.long	0x235
	.uleb128 0xa
	.long	.LASF13
	.byte	0x6
	.byte	0xf6
	.long	0x62
	.byte	0
	.uleb128 0xa
	.long	.LASF14
	.byte	0x6
	.byte	0xfb
	.long	0xa3
	.byte	0x8
	.uleb128 0xa
	.long	.LASF15
	.byte	0x6
	.byte	0xfc
	.long	0xa3
	.byte	0x10
	.uleb128 0xa
	.long	.LASF16
	.byte	0x6
	.byte	0xfd
	.long	0xa3
	.byte	0x18
	.uleb128 0xa
	.long	.LASF17
	.byte	0x6
	.byte	0xfe
	.long	0xa3
	.byte	0x20
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.byte	0xff
	.long	0xa3
	.byte	0x28
	.uleb128 0xb
	.long	.LASF19
	.byte	0x6
	.value	0x100
	.long	0xa3
	.byte	0x30
	.uleb128 0xb
	.long	.LASF20
	.byte	0x6
	.value	0x101
	.long	0xa3
	.byte	0x38
	.uleb128 0xb
	.long	.LASF21
	.byte	0x6
	.value	0x102
	.long	0xa3
	.byte	0x40
	.uleb128 0xb
	.long	.LASF22
	.byte	0x6
	.value	0x104
	.long	0xa3
	.byte	0x48
	.uleb128 0xb
	.long	.LASF23
	.byte	0x6
	.value	0x105
	.long	0xa3
	.byte	0x50
	.uleb128 0xb
	.long	.LASF24
	.byte	0x6
	.value	0x106
	.long	0xa3
	.byte	0x58
	.uleb128 0xb
	.long	.LASF25
	.byte	0x6
	.value	0x108
	.long	0x26d
	.byte	0x60
	.uleb128 0xb
	.long	.LASF26
	.byte	0x6
	.value	0x10a
	.long	0x273
	.byte	0x68
	.uleb128 0xb
	.long	.LASF27
	.byte	0x6
	.value	0x10c
	.long	0x62
	.byte	0x70
	.uleb128 0xb
	.long	.LASF28
	.byte	0x6
	.value	0x110
	.long	0x62
	.byte	0x74
	.uleb128 0xb
	.long	.LASF29
	.byte	0x6
	.value	0x112
	.long	0x70
	.byte	0x78
	.uleb128 0xb
	.long	.LASF30
	.byte	0x6
	.value	0x116
	.long	0x46
	.byte	0x80
	.uleb128 0xb
	.long	.LASF31
	.byte	0x6
	.value	0x117
	.long	0x54
	.byte	0x82
	.uleb128 0xb
	.long	.LASF32
	.byte	0x6
	.value	0x118
	.long	0x279
	.byte	0x83
	.uleb128 0xb
	.long	.LASF33
	.byte	0x6
	.value	0x11c
	.long	0x289
	.byte	0x88
	.uleb128 0xb
	.long	.LASF34
	.byte	0x6
	.value	0x125
	.long	0x7b
	.byte	0x90
	.uleb128 0xb
	.long	.LASF35
	.byte	0x6
	.value	0x12d
	.long	0x9c
	.byte	0x98
	.uleb128 0xb
	.long	.LASF36
	.byte	0x6
	.value	0x12e
	.long	0x9c
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF37
	.byte	0x6
	.value	0x12f
	.long	0x9c
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF38
	.byte	0x6
	.value	0x130
	.long	0x9c
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF39
	.byte	0x6
	.value	0x132
	.long	0x2d
	.byte	0xb8
	.uleb128 0xb
	.long	.LASF40
	.byte	0x6
	.value	0x133
	.long	0x62
	.byte	0xc0
	.uleb128 0xb
	.long	.LASF41
	.byte	0x6
	.value	0x135
	.long	0x28f
	.byte	0xc4
	.byte	0
	.uleb128 0xc
	.long	.LASF89
	.byte	0x6
	.byte	0x9a
	.uleb128 0x9
	.long	.LASF43
	.byte	0x18
	.byte	0x6
	.byte	0xa0
	.long	0x26d
	.uleb128 0xa
	.long	.LASF44
	.byte	0x6
	.byte	0xa1
	.long	0x26d
	.byte	0
	.uleb128 0xa
	.long	.LASF45
	.byte	0x6
	.byte	0xa2
	.long	0x273
	.byte	0x8
	.uleb128 0xa
	.long	.LASF46
	.byte	0x6
	.byte	0xa6
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x23c
	.uleb128 0x7
	.byte	0x8
	.long	0xb5
	.uleb128 0xd
	.long	0xa9
	.long	0x289
	.uleb128 0xe
	.long	0x38
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x235
	.uleb128 0xd
	.long	0xa9
	.long	0x29f
	.uleb128 0xe
	.long	0x38
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.long	.LASF90
	.uleb128 0x10
	.long	.LASF47
	.byte	0x6
	.value	0x13f
	.long	0x29f
	.uleb128 0x10
	.long	.LASF48
	.byte	0x6
	.value	0x140
	.long	0x29f
	.uleb128 0x10
	.long	.LASF49
	.byte	0x6
	.value	0x141
	.long	0x29f
	.uleb128 0x7
	.byte	0x8
	.long	0xb0
	.uleb128 0x8
	.long	0x2c8
	.uleb128 0x6
	.long	0x2c8
	.uleb128 0x11
	.long	.LASF50
	.byte	0x7
	.byte	0x87
	.long	0x273
	.uleb128 0x11
	.long	.LASF51
	.byte	0x7
	.byte	0x88
	.long	0x273
	.uleb128 0x11
	.long	.LASF52
	.byte	0x7
	.byte	0x89
	.long	0x273
	.uleb128 0x11
	.long	.LASF53
	.byte	0x8
	.byte	0x1a
	.long	0x62
	.uleb128 0xd
	.long	0x2ce
	.long	0x30f
	.uleb128 0x12
	.byte	0
	.uleb128 0x8
	.long	0x304
	.uleb128 0x11
	.long	.LASF54
	.byte	0x8
	.byte	0x1b
	.long	0x30f
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF55
	.uleb128 0x9
	.long	.LASF56
	.byte	0x10
	.byte	0x9
	.byte	0x8
	.long	0x34b
	.uleb128 0xa
	.long	.LASF57
	.byte	0x9
	.byte	0xa
	.long	0x86
	.byte	0
	.uleb128 0xa
	.long	.LASF58
	.byte	0x9
	.byte	0xb
	.long	0x91
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF59
	.uleb128 0x7
	.byte	0x8
	.long	0x35d
	.uleb128 0x6
	.long	0x352
	.uleb128 0x13
	.uleb128 0x9
	.long	.LASF60
	.byte	0x8
	.byte	0xa
	.byte	0x34
	.long	0x383
	.uleb128 0xa
	.long	.LASF61
	.byte	0xa
	.byte	0x36
	.long	0x62
	.byte	0
	.uleb128 0xa
	.long	.LASF62
	.byte	0xa
	.byte	0x37
	.long	0x62
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x35e
	.uleb128 0x6
	.long	0x383
	.uleb128 0x14
	.string	"src"
	.byte	0x1
	.byte	0x7
	.long	0x9c
	.uleb128 0x9
	.byte	0x3
	.quad	src
	.uleb128 0x14
	.string	"dst"
	.byte	0x1
	.byte	0x8
	.long	0x9c
	.uleb128 0x9
	.byte	0x3
	.quad	dst
	.uleb128 0xd
	.long	0x62
	.long	0x3c8
	.uleb128 0xe
	.long	0x38
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.long	.LASF63
	.byte	0x1
	.byte	0xa
	.long	0x3b8
	.uleb128 0x9
	.byte	0x3
	.quad	basic_1_size
	.uleb128 0x15
	.long	.LASF64
	.byte	0x1
	.byte	0xb
	.long	0x3b8
	.uleb128 0x9
	.byte	0x3
	.quad	basic_2_size
	.uleb128 0x15
	.long	.LASF65
	.byte	0x1
	.byte	0xd
	.long	0x3b8
	.uleb128 0x9
	.byte	0x3
	.quad	basic_1_src_offset
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0xe
	.long	0x3b8
	.uleb128 0x9
	.byte	0x3
	.quad	basic_2_src_offset
	.uleb128 0x15
	.long	.LASF67
	.byte	0x1
	.byte	0x10
	.long	0x3b8
	.uleb128 0x9
	.byte	0x3
	.quad	basic_1_dst_offset
	.uleb128 0x15
	.long	.LASF68
	.byte	0x1
	.byte	0x11
	.long	0x3b8
	.uleb128 0x9
	.byte	0x3
	.quad	basic_2_dst_offset
	.uleb128 0x16
	.long	.LASF72
	.byte	0x1
	.byte	0x31
	.long	0x62
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x85e
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x32
	.long	0x62
	.long	.LLST4
	.uleb128 0x18
	.long	.LASF69
	.byte	0x1
	.byte	0x33
	.long	0x62
	.long	.LLST5
	.uleb128 0x19
	.string	"tv1"
	.byte	0x1
	.byte	0x34
	.long	0x326
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x19
	.string	"tv2"
	.byte	0x1
	.byte	0x34
	.long	0x326
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x18
	.long	.LASF70
	.byte	0x1
	.byte	0x35
	.long	0x9c
	.long	.LLST6
	.uleb128 0x1a
	.long	0x92e
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.byte	0x1
	.byte	0x45
	.long	0x4fb
	.uleb128 0x1b
	.long	0x93e
	.long	.LLST7
	.uleb128 0x1c
	.quad	.LVL20
	.long	0x94b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x92e
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.byte	0x1
	.byte	0x46
	.long	0x540
	.uleb128 0x1b
	.long	0x93e
	.long	.LLST8
	.uleb128 0x1c
	.quad	.LVL21
	.long	0x94b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x8fc
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.byte	0x1
	.byte	0x48
	.long	0x584
	.uleb128 0x1b
	.long	0x922
	.long	.LLST9
	.uleb128 0x1b
	.long	0x917
	.long	.LLST10
	.uleb128 0x1b
	.long	0x90c
	.long	.LLST11
	.uleb128 0x1e
	.quad	.LVL25
	.long	0x956
	.byte	0
	.uleb128 0x1a
	.long	0x92e
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.byte	0x1
	.byte	0x4c
	.long	0x5cf
	.uleb128 0x1b
	.long	0x93e
	.long	.LLST12
	.uleb128 0x1c
	.quad	.LVL27
	.long	0x94b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x92e
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.byte	0x1
	.byte	0x5b
	.long	0x61a
	.uleb128 0x1b
	.long	0x93e
	.long	.LLST13
	.uleb128 0x1c
	.quad	.LVL39
	.long	0x94b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x92e
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.byte	0x1
	.byte	0x5c
	.long	0x65f
	.uleb128 0x1b
	.long	0x93e
	.long	.LLST14
	.uleb128 0x1c
	.quad	.LVL40
	.long	0x94b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x8fc
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.byte	0x1
	.byte	0x5e
	.long	0x6a3
	.uleb128 0x1b
	.long	0x922
	.long	.LLST15
	.uleb128 0x1b
	.long	0x917
	.long	.LLST16
	.uleb128 0x1b
	.long	0x90c
	.long	.LLST17
	.uleb128 0x1e
	.quad	.LVL44
	.long	0x956
	.byte	0
	.uleb128 0x1a
	.long	0x92e
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.byte	0x1
	.byte	0x62
	.long	0x6ee
	.uleb128 0x1b
	.long	0x93e
	.long	.LLST18
	.uleb128 0x1c
	.quad	.LVL46
	.long	0x94b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL14
	.long	0x965
	.long	0x709
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x186a0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL15
	.long	0x8ab
	.long	0x724
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x186a0
	.byte	0
	.uleb128 0x1e
	.quad	.LVL17
	.long	0x85e
	.uleb128 0x1f
	.quad	.LVL22
	.long	0x971
	.long	0x750
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.quad	.LVL26
	.long	0x971
	.long	0x76f
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.quad	.LVL30
	.long	0x971
	.long	0x78e
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.quad	.LVL31
	.long	0x97c
	.uleb128 0x1f
	.quad	.LVL33
	.long	0x971
	.long	0x7ba
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.quad	.LVL36
	.long	0x85e
	.uleb128 0x1f
	.quad	.LVL41
	.long	0x971
	.long	0x7e6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.quad	.LVL45
	.long	0x971
	.long	0x805
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.quad	.LVL49
	.long	0x971
	.long	0x824
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.quad	.LVL50
	.long	0x97c
	.uleb128 0x1f
	.quad	.LVL52
	.long	0x971
	.long	0x850
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.byte	0x91
	.sleb128 -128
	.byte	0x6
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.quad	.LVL54
	.long	0x987
	.byte	0
	.uleb128 0x20
	.long	.LASF91
	.byte	0x1
	.byte	0x23
	.long	0x62
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x8ab
	.uleb128 0x21
	.long	.LASF71
	.byte	0x1
	.byte	0x23
	.long	0xa3
	.long	.LLST1
	.uleb128 0x22
	.string	"src"
	.byte	0x1
	.byte	0x23
	.long	0x2c8
	.long	.LLST2
	.uleb128 0x22
	.string	"n"
	.byte	0x1
	.byte	0x23
	.long	0x2d
	.long	.LLST3
	.byte	0
	.uleb128 0x23
	.long	.LASF73
	.byte	0x1
	.byte	0x18
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x8fc
	.uleb128 0x21
	.long	.LASF74
	.byte	0x1
	.byte	0x18
	.long	0x62
	.long	.LLST0
	.uleb128 0x24
	.long	.LASF75
	.byte	0x1
	.byte	0x1a
	.long	0xa3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1c
	.quad	.LVL2
	.long	0x965
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x186a0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LASF79
	.byte	0x3
	.byte	0x1f
	.long	0x9c
	.byte	0x3
	.long	0x92e
	.uleb128 0x26
	.long	.LASF76
	.byte	0x3
	.byte	0x1f
	.long	0x9e
	.uleb128 0x26
	.long	.LASF77
	.byte	0x3
	.byte	0x1f
	.long	0x358
	.uleb128 0x26
	.long	.LASF78
	.byte	0x3
	.byte	0x1f
	.long	0x2d
	.byte	0
	.uleb128 0x25
	.long	.LASF80
	.byte	0x2
	.byte	0x66
	.long	0x62
	.byte	0x3
	.long	0x94b
	.uleb128 0x26
	.long	.LASF81
	.byte	0x2
	.byte	0x66
	.long	0x2d3
	.uleb128 0x27
	.byte	0
	.uleb128 0x28
	.long	.LASF82
	.long	.LASF82
	.byte	0x2
	.byte	0x57
	.uleb128 0x29
	.long	.LASF79
	.long	.LASF92
	.byte	0xc
	.byte	0
	.long	.LASF79
	.uleb128 0x2a
	.long	.LASF83
	.long	.LASF83
	.byte	0xb
	.value	0x21b
	.uleb128 0x28
	.long	.LASF84
	.long	.LASF84
	.byte	0xa
	.byte	0x44
	.uleb128 0x28
	.long	.LASF85
	.long	.LASF85
	.byte	0x1
	.byte	0x15
	.uleb128 0x2b
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x24
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
	.uleb128 0x34
	.uleb128 0x19
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.quad	.LVL13-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL16-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL27-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL29-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL35-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL46-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL48-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL13-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL17-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0xd
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x40
	.byte	0x4c
	.byte	0x24
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.quad	.LVL29-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL35-.Ltext0
	.quad	.LVL36-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL36-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0xd
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x40
	.byte	0x4c
	.byte	0x24
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.quad	.LVL48-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL16-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	.LVL32-.Ltext0
	.quad	.LVL33-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL33-1-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	.LVL51-.Ltext0
	.quad	.LVL52-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL52-1-.Ltext0
	.quad	.LFE54-.Ltext0
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL19-.Ltext0
	.quad	.LVL20-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL20-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL22-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0xb
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
	.byte	0x9f
	.quad	.LVL24-.Ltext0
	.quad	.LVL25-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL22-.Ltext0
	.quad	.LVL25-1-.Ltext0
	.value	0x20
	.byte	0x7d
	.sleb128 0
	.byte	0x3
	.quad	basic_1_src_offset-4
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
.LLST11:
	.quad	.LVL22-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x17
	.byte	0x77
	.sleb128 0
	.byte	0x6
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x3
	.quad	dst
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.quad	.LVL23-.Ltext0
	.quad	.LVL25-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL26-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL38-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL39-.Ltext0
	.quad	.LVL40-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL41-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0xb
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
	.byte	0x9f
	.quad	.LVL43-.Ltext0
	.quad	.LVL44-1-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL41-.Ltext0
	.quad	.LVL44-1-.Ltext0
	.value	0x20
	.byte	0x7d
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
.LLST17:
	.quad	.LVL41-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x17
	.byte	0x77
	.sleb128 0
	.byte	0x6
	.byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x3
	.quad	dst
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.quad	.LVL42-.Ltext0
	.quad	.LVL44-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL45-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL8-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL10-.Ltext0
	.quad	.LFE53-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL8-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL11-.Ltext0
	.quad	.LFE53-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL8-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL9-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL12-.Ltext0
	.quad	.LFE53-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL1-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL4-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
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
.LASF80:
	.string	"printf"
.LASF8:
	.string	"__off_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF83:
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
.LASF86:
	.string	"GNU C11 7.5.0 -mmmx -mtune=generic -march=x86-64 -g -O -fno-asynchronous-unwind-tables -fstack-protector-strong"
.LASF73:
	.string	"InitSrcArea"
.LASF77:
	.string	"__src"
.LASF70:
	.string	"adst"
.LASF55:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF74:
	.string	"size"
.LASF59:
	.string	"long long unsigned int"
.LASF27:
	.string	"_fileno"
.LASF67:
	.string	"basic_1_dst_offset"
.LASF15:
	.string	"_IO_read_end"
.LASF6:
	.string	"long int"
.LASF91:
	.string	"check"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF82:
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
.LASF88:
	.string	"/home/landon/AssembleLangFinal/memcpy"
.LASF90:
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
.LASF87:
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
.LASF85:
	.string	"mymemcpy"
.LASF75:
	.string	"psrc"
.LASF89:
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
.LASF78:
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
.LASF79:
	.string	"memcpy"
.LASF24:
	.string	"_IO_save_end"
.LASF81:
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
.LASF76:
	.string	"__dest"
.LASF62:
	.string	"tz_dsttime"
.LASF23:
	.string	"_IO_backup_base"
.LASF84:
	.string	"gettimeofday"
.LASF68:
	.string	"basic_2_dst_offset"
.LASF69:
	.string	"pass"
.LASF64:
	.string	"basic_2_size"
.LASF72:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
