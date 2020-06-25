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
	.globl	char_memcpy
	.type	char_memcpy, @function
char_memcpy:
.LFB53:
	.loc 1 36 0
	.cfi_startproc
.LVL8:
	.loc 1 38 0
	testq	%rdx, %rdx
	.loc 1 36 0
	movq	%rdi, %rax
.LVL9:
	.loc 1 38 0
	je	.L11
	addq	%rdi, %rdx
.LVL10:
	.loc 1 37 0
	movq	%rdi, %rcx
.LVL11:
	.p2align 4,,10
	.p2align 3
.L12:
	.loc 1 39 0
	addq	$1, %rcx
.LVL12:
	movb	%sil, -1(%rcx)
.LVL13:
	addq	$1, %rsi
.LVL14:
	.loc 1 38 0
	cmpq	%rcx, %rdx
	jne	.L12
.LVL15:
.L11:
	.loc 1 43 0
	rep ret
	.cfi_endproc
.LFE53:
	.size	char_memcpy, .-char_memcpy
	.p2align 4,,15
	.globl	check
	.type	check, @function
check:
.LFB54:
	.loc 1 46 0
	.cfi_startproc
.LVL16:
	.loc 1 47 0
	testq	%rdx, %rdx
	je	.L21
	.loc 1 49 0
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
	.loc 1 52 0
	addq	$1, %rdi
.LVL19:
	.loc 1 53 0
	addq	$1, %rsi
.LVL20:
	.loc 1 47 0
	cmpq	%rdi, %rdx
	jne	.L20
.LVL21:
.L21:
	.loc 1 56 0
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	.loc 1 50 0
	xorl	%eax, %eax
	.loc 1 57 0
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
	.string	"[CLIB] Test (basic #2) %d / 5:     ,time: %u.\n\n"
	.align 8
.LC7:
	.string	"[NORM] Test (basic #2) %d / 5:     ,time: %u.\n\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB55:
	.loc 1 60 0
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	.loc 1 65 0
	movl	$100000, %edi
	.loc 1 60 0
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
	.loc 1 60 0
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
.LVL22:
	.loc 1 65 0
	call	malloc@PLT
.LVL23:
.LBB38:
.LBB39:
	.loc 1 25 0
	movl	$100000, %edi
.LBE39:
.LBE38:
	.loc 1 65 0
	movq	%rax, dst(%rip)
.LVL24:
.LBB41:
.LBB40:
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
.LBE40:
.LBE41:
	.loc 1 67 0
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
	.loc 1 71 0
	movq	(%rsp), %rdi
	xorl	%esi, %esi
	leaq	0(,%r15,4), %rbp
	call	gettimeofday@PLT
.LVL32:
	.loc 1 73 0
	movslq	(%r12,%r15,4), %rsi
	.loc 1 72 0
	movslq	(%rbx), %rdi
	.loc 1 73 0
	addq	src(%rip), %rsi
	.loc 1 72 0
	addq	dst(%rip), %rdi
	movslq	0(%r13,%r15,4), %rdx
	call	mymemcpy@PLT
.LVL33:
	.loc 1 75 0
	movq	8(%rsp), %rdi
	xorl	%esi, %esi
	.loc 1 72 0
	movq	%rax, %r14
.LVL34:
	.loc 1 75 0
	call	gettimeofday@PLT
.LVL35:
	.loc 1 76 0
	movslq	(%rbx), %rax
	addq	dst(%rip), %rax
	cmpq	%r14, %rax
	je	.L58
.L26:
	.loc 1 81 0
	movq	32(%rsp), %r8
	subq	16(%rsp), %r8
	leaq	.LC1(%rip), %rcx
	imulq	$1000, %r8, %r8
	addq	40(%rsp), %r8
	subq	24(%rsp), %r8
.LVL36:
.L38:
.LBB42:
.LBB43:
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
.LBE43:
.LBE42:
	.loc 1 82 0 discriminator 4
	movslq	-4(%rbx), %rcx
	movslq	(%r12,%rbp), %rdx
.LBB44:
.LBB45:
	.loc 2 104 0 discriminator 4
	leaq	.LC3(%rip), %rsi
.LBE45:
.LBE44:
	.loc 1 82 0 discriminator 4
	addq	dst(%rip), %rcx
	addq	src(%rip), %rdx
.LBB47:
.LBB46:
	.loc 2 104 0 discriminator 4
	xorl	%eax, %eax
	movl	0(%r13,%rbp), %r8d
	movl	$1, %edi
	call	__printf_chk@PLT
.LVL39:
.LBE46:
.LBE47:
	.loc 1 69 0 discriminator 4
	cmpq	$6, %r15
	jne	.L30
	leaq	basic_2_size(%rip), %r12
	leaq	basic_2_dst_offset(%rip), %rbp
	leaq	-4+basic_2_src_offset(%rip), %r13
	.loc 1 69 0 is_stmt 0
	movl	$1, %ebx
.LVL40:
.L37:
	.loc 1 87 0 is_stmt 1
	movq	(%rsp), %r14
	xorl	%esi, %esi
	movq	%r14, %rdi
	call	gettimeofday@PLT
.LVL41:
	.loc 1 88 0
	xorl	%esi, %esi
	movq	%r14, %rdi
	leaq	0(,%rbx,4), %r14
	call	gettimeofday@PLT
.LVL42:
	.loc 1 90 0
	movslq	0(%r13,%rbx,4), %rsi
	.loc 1 89 0
	movslq	0(%rbp), %rdi
	.loc 1 90 0
	addq	src(%rip), %rsi
	.loc 1 89 0
	addq	dst(%rip), %rdi
	movslq	(%r12), %rdx
	call	mymemcpy@PLT
.LVL43:
	.loc 1 92 0
	movq	8(%rsp), %rdi
	xorl	%esi, %esi
	.loc 1 89 0
	movq	%rax, %r15
.LVL44:
	.loc 1 92 0
	call	gettimeofday@PLT
.LVL45:
	.loc 1 93 0
	movslq	0(%rbp), %rax
	addq	dst(%rip), %rax
	cmpq	%r15, %rax
	je	.L59
.L31:
	.loc 1 98 0
	movq	32(%rsp), %r8
	subq	16(%rsp), %r8
	leaq	.LC1(%rip), %rcx
	imulq	$1000, %r8, %r8
	addq	40(%rsp), %r8
	subq	24(%rsp), %r8
.LVL46:
.L39:
.LBB48:
.LBB49:
	.loc 2 104 0 discriminator 4
	leaq	.LC4(%rip), %rsi
	movl	%ebx, %edx
	movl	$1, %edi
	xorl	%eax, %eax
.LBE49:
.LBE48:
	.loc 1 98 0 discriminator 4
	movl	%ebx, %r15d
.LVL47:
.LBB51:
.LBB50:
	.loc 2 104 0 discriminator 4
	call	__printf_chk@PLT
.LVL48:
.LBE50:
.LBE51:
	.loc 1 99 0 discriminator 4
	movslq	0(%rbp), %rcx
	movslq	0(%r13,%r14), %rdx
.LBB52:
.LBB53:
	.loc 2 104 0 discriminator 4
	leaq	.LC5(%rip), %rsi
.LBE53:
.LBE52:
	.loc 1 99 0 discriminator 4
	addq	dst(%rip), %rcx
	addq	src(%rip), %rdx
.LBB55:
.LBB54:
	.loc 2 104 0 discriminator 4
	movl	$1, %edi
	movl	(%r12), %r8d
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL49:
.LBE54:
.LBE55:
	.loc 1 100 0 discriminator 4
	movq	(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
.LVL50:
	.loc 1 101 0 discriminator 4
	movslq	0(%rbp), %rdi
	.loc 1 102 0 discriminator 4
	movslq	0(%r13,%r14), %rsi
	.loc 1 101 0 discriminator 4
	addq	dst(%rip), %rdi
.LVL51:
	movslq	(%r12), %rdx
.LVL52:
	.loc 1 102 0 discriminator 4
	addq	src(%rip), %rsi
.LBB56:
.LBB57:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 3 34 0 discriminator 4
	call	memcpy@PLT
.LVL53:
.LBE57:
.LBE56:
	.loc 1 104 0 discriminator 4
	movq	8(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
.LVL54:
	.loc 1 105 0 discriminator 4
	movq	32(%rsp), %rcx
	subq	16(%rsp), %rcx
.LBB58:
.LBB59:
	.loc 2 104 0 discriminator 4
	leaq	.LC6(%rip), %rsi
	movl	%ebx, %edx
	movl	$1, %edi
	xorl	%eax, %eax
.LBE59:
.LBE58:
	.loc 1 105 0 discriminator 4
	imulq	$1000, %rcx, %rcx
	addq	40(%rsp), %rcx
	subq	24(%rsp), %rcx
.LBB61:
.LBB60:
	.loc 2 104 0 discriminator 4
	call	__printf_chk@PLT
.LVL55:
.LBE60:
.LBE61:
	.loc 1 106 0 discriminator 4
	movq	(%rsp), %rdi
	xorl	%esi, %esi
	call	gettimeofday@PLT
.LVL56:
	.loc 1 107 0 discriminator 4
	movslq	(%r12), %rcx
	.loc 1 108 0 discriminator 4
	movslq	0(%r13,%r14), %rdx
	.loc 1 107 0 discriminator 4
	movslq	0(%rbp), %rax
	.loc 1 108 0 discriminator 4
	addq	src(%rip), %rdx
	.loc 1 107 0 discriminator 4
	addq	dst(%rip), %rax
.LVL57:
.LBB62:
.LBB63:
	.loc 1 38 0 discriminator 4
	testq	%rcx, %rcx
	je	.L35
	addq	%rax, %rcx
.LVL58:
	.p2align 4,,10
	.p2align 3
.L36:
	.loc 1 39 0
	addq	$1, %rax
.LVL59:
	movb	%dl, -1(%rax)
	addq	$1, %rdx
.LVL60:
	.loc 1 38 0
	cmpq	%rax, %rcx
	jne	.L36
.LVL61:
.L35:
.LBE63:
.LBE62:
	.loc 1 110 0
	movq	8(%rsp), %rdi
	xorl	%esi, %esi
	addq	$1, %rbx
.LVL62:
	addq	$4, %r12
	addq	$4, %rbp
	call	gettimeofday@PLT
.LVL63:
	.loc 1 111 0
	movq	32(%rsp), %rcx
	subq	16(%rsp), %rcx
.LBB64:
.LBB65:
	.loc 2 104 0
	leaq	.LC7(%rip), %rsi
	xorl	%eax, %eax
	movl	%r15d, %edx
	movl	$1, %edi
.LBE65:
.LBE64:
	.loc 1 111 0
	imulq	$1000, %rcx, %rcx
	addq	40(%rsp), %rcx
	subq	24(%rsp), %rcx
.LBB67:
.LBB66:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL64:
.LBE66:
.LBE67:
	.loc 1 85 0
	cmpq	$6, %rbx
	jne	.L37
	.loc 1 119 0
	xorl	%eax, %eax
	movq	56(%rsp), %rbx
	xorq	%fs:40, %rbx
	jne	.L60
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
.LVL65:
	ret
.LVL66:
.L59:
	.cfi_restore_state
	.loc 1 94 0 discriminator 1
	movslq	(%r12), %rdi
	.loc 1 95 0 discriminator 1
	movslq	0(%r13,%rbx,4), %rsi
	addq	src(%rip), %rsi
.LVL67:
.LBB68:
.LBB69:
	.loc 1 47 0 discriminator 1
	testq	%rdi, %rdi
	je	.L32
	.loc 1 49 0
	movzbl	(%rsi), %ecx
	cmpb	%cl, (%rax)
	jne	.L31
	movl	$1, %edx
	jmp	.L33
.LVL68:
	.p2align 4,,10
	.p2align 3
.L34:
	movzbl	(%rax,%rdx), %ecx
	addq	$1, %rdx
.LVL69:
	cmpb	-1(%rsi,%rdx), %cl
	jne	.L31
.LVL70:
.L33:
	.loc 1 47 0
	cmpq	%rdx, %rdi
	jne	.L34
.LVL71:
.L32:
.LBE69:
.LBE68:
	.loc 1 98 0
	movq	32(%rsp), %r8
	subq	16(%rsp), %r8
	leaq	.LC0(%rip), %rcx
	imulq	$1000, %r8, %r8
	addq	40(%rsp), %r8
	subq	24(%rsp), %r8
	jmp	.L39
.LVL72:
.L58:
	.loc 1 77 0 discriminator 1
	movslq	0(%r13,%r15,4), %rdi
	.loc 1 78 0 discriminator 1
	movslq	(%r12,%r15,4), %rsi
	addq	src(%rip), %rsi
.LVL73:
.LBB70:
.LBB71:
	.loc 1 47 0 discriminator 1
	testq	%rdi, %rdi
	je	.L27
	.loc 1 49 0
	movzbl	(%rax), %ecx
	cmpb	%cl, (%rsi)
	jne	.L26
	movl	$1, %edx
	jmp	.L28
.LVL74:
	.p2align 4,,10
	.p2align 3
.L29:
	movzbl	(%rax,%rdx), %ecx
	addq	$1, %rdx
.LVL75:
	cmpb	-1(%rsi,%rdx), %cl
	jne	.L26
.LVL76:
.L28:
	.loc 1 47 0
	cmpq	%rdx, %rdi
	jne	.L29
.LVL77:
.L27:
.LBE71:
.LBE70:
	.loc 1 81 0
	movq	32(%rsp), %r8
	subq	16(%rsp), %r8
	leaq	.LC0(%rip), %rcx
	imulq	$1000, %r8, %r8
	addq	40(%rsp), %r8
	subq	24(%rsp), %r8
	jmp	.L38
.LVL78:
.L60:
	.loc 1 119 0
	call	__stack_chk_fail@PLT
.LVL79:
	.cfi_endproc
.LFE55:
	.size	main, .-main
	.globl	basic_2_dst_offset
	.data
	.align 16
	.type	basic_2_dst_offset, @object
	.size	basic_2_dst_offset, 20
basic_2_dst_offset:
	.long	4100
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
	.long	0xad6
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF86
	.byte	0xc
	.long	.LASF87
	.long	.LASF88
	.long	.Ldebug_ranges0+0x120
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
	.long	.LASF89
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
	.long	.LASF90
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
	.long	.LASF91
	.byte	0x1
	.byte	0x3c
	.long	0x5e
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x8fd
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x3d
	.long	0x5e
	.long	.LLST8
	.uleb128 0x18
	.long	.LASF69
	.byte	0x1
	.byte	0x3e
	.long	0x5e
	.long	.LLST9
	.uleb128 0x19
	.string	"tv1"
	.byte	0x1
	.byte	0x3f
	.long	0x322
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x19
	.string	"tv2"
	.byte	0x1
	.byte	0x3f
	.long	0x322
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x18
	.long	.LASF70
	.byte	0x1
	.byte	0x40
	.long	0x98
	.long	.LLST10
	.uleb128 0x1a
	.long	0x968
	.quad	.LBB38
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x42
	.long	0x4ef
	.uleb128 0x1b
	.long	0x974
	.long	.LLST11
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0
	.uleb128 0x1d
	.long	0x9fe
	.uleb128 0x1e
	.quad	.LVL25
	.long	0xa94
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
	.long	0x9bd
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.byte	0x1
	.byte	0x51
	.long	0x534
	.uleb128 0x1b
	.long	0x9cd
	.long	.LLST12
	.uleb128 0x1e
	.quad	.LVL38
	.long	0xaa0
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
	.long	0x9bd
	.quad	.LBB44
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x52
	.long	0x575
	.uleb128 0x1b
	.long	0x9cd
	.long	.LLST13
	.uleb128 0x1e
	.quad	.LVL39
	.long	0xaa0
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
	.uleb128 0x1a
	.long	0x9bd
	.quad	.LBB48
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x62
	.long	0x5bc
	.uleb128 0x1b
	.long	0x9cd
	.long	.LLST14
	.uleb128 0x1e
	.quad	.LVL48
	.long	0xaa0
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
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x9bd
	.quad	.LBB52
	.long	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0x63
	.long	0x5fd
	.uleb128 0x1b
	.long	0x9cd
	.long	.LLST15
	.uleb128 0x1e
	.quad	.LVL49
	.long	0xaa0
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
	.long	0x98b
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.byte	0x1
	.byte	0x65
	.long	0x641
	.uleb128 0x1b
	.long	0x9b1
	.long	.LLST16
	.uleb128 0x1b
	.long	0x9a6
	.long	.LLST17
	.uleb128 0x1b
	.long	0x99b
	.long	.LLST18
	.uleb128 0x21
	.quad	.LVL53
	.long	0xaab
	.byte	0
	.uleb128 0x1a
	.long	0x9bd
	.quad	.LBB58
	.long	.Ldebug_ranges0+0xc0
	.byte	0x1
	.byte	0x69
	.long	0x688
	.uleb128 0x1b
	.long	0x9cd
	.long	.LLST19
	.uleb128 0x1e
	.quad	.LVL55
	.long	0xaa0
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
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x92d
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.byte	0x1
	.byte	0x6b
	.long	0x6d6
	.uleb128 0x1b
	.long	0x953
	.long	.LLST20
	.uleb128 0x1b
	.long	0x948
	.long	.LLST21
	.uleb128 0x1b
	.long	0x93d
	.long	.LLST22
	.uleb128 0x22
	.quad	.LBB63
	.quad	.LBE63-.LBB63
	.uleb128 0x1d
	.long	0xa53
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x9bd
	.quad	.LBB64
	.long	.Ldebug_ranges0+0xf0
	.byte	0x1
	.byte	0x6f
	.long	0x71d
	.uleb128 0x1b
	.long	0x9cd
	.long	.LLST23
	.uleb128 0x1e
	.quad	.LVL64
	.long	0xaa0
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
	.quad	.LC7
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x8fd
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.byte	0x1
	.byte	0x5e
	.long	0x754
	.uleb128 0x1b
	.long	0x923
	.long	.LLST24
	.uleb128 0x1b
	.long	0x918
	.long	.LLST25
	.uleb128 0x1b
	.long	0x90d
	.long	.LLST26
	.byte	0
	.uleb128 0x20
	.long	0x8fd
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.byte	0x1
	.byte	0x4d
	.long	0x78b
	.uleb128 0x1b
	.long	0x923
	.long	.LLST27
	.uleb128 0x1b
	.long	0x918
	.long	.LLST28
	.uleb128 0x1b
	.long	0x90d
	.long	.LLST29
	.byte	0
	.uleb128 0x23
	.quad	.LVL23
	.long	0xa94
	.long	0x7a6
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x186a0
	.byte	0
	.uleb128 0x23
	.quad	.LVL30
	.long	0xaba
	.long	0x7c4
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
	.quad	.LVL32
	.long	0xaba
	.long	0x7e2
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
	.quad	.LVL33
	.long	0xac5
	.uleb128 0x23
	.quad	.LVL35
	.long	0xaba
	.long	0x80e
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
	.uleb128 0x23
	.quad	.LVL41
	.long	0xaba
	.long	0x82b
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.quad	.LVL42
	.long	0xaba
	.long	0x849
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
	.quad	.LVL43
	.long	0xac5
	.uleb128 0x23
	.quad	.LVL45
	.long	0xaba
	.long	0x875
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
	.uleb128 0x23
	.quad	.LVL50
	.long	0xaba
	.long	0x893
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
	.quad	.LVL54
	.long	0xaba
	.long	0x8b2
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
	.uleb128 0x23
	.quad	.LVL56
	.long	0xaba
	.long	0x8d0
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
	.quad	.LVL63
	.long	0xaba
	.long	0x8ef
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
	.quad	.LVL79
	.long	0xad0
	.byte	0
	.uleb128 0x24
	.long	.LASF72
	.byte	0x1
	.byte	0x2e
	.long	0x5e
	.byte	0x1
	.long	0x92d
	.uleb128 0x25
	.long	.LASF71
	.byte	0x1
	.byte	0x2e
	.long	0x9f
	.uleb128 0x26
	.string	"src"
	.byte	0x1
	.byte	0x2e
	.long	0x2c4
	.uleb128 0x26
	.string	"n"
	.byte	0x1
	.byte	0x2e
	.long	0x29
	.byte	0
	.uleb128 0x24
	.long	.LASF73
	.byte	0x1
	.byte	0x24
	.long	0x98
	.byte	0x1
	.long	0x968
	.uleb128 0x25
	.long	.LASF71
	.byte	0x1
	.byte	0x24
	.long	0x98
	.uleb128 0x26
	.string	"src"
	.byte	0x1
	.byte	0x24
	.long	0x34e
	.uleb128 0x26
	.string	"n"
	.byte	0x1
	.byte	0x24
	.long	0x29
	.uleb128 0x27
	.string	"tmp"
	.byte	0x1
	.byte	0x25
	.long	0x9f
	.byte	0
	.uleb128 0x28
	.long	.LASF92
	.byte	0x1
	.byte	0x18
	.byte	0x1
	.long	0x98b
	.uleb128 0x25
	.long	.LASF74
	.byte	0x1
	.byte	0x18
	.long	0x5e
	.uleb128 0x29
	.long	.LASF75
	.byte	0x1
	.byte	0x1a
	.long	0x9f
	.byte	0
	.uleb128 0x2a
	.long	.LASF79
	.byte	0x3
	.byte	0x1f
	.long	0x98
	.byte	0x3
	.long	0x9bd
	.uleb128 0x25
	.long	.LASF76
	.byte	0x3
	.byte	0x1f
	.long	0x9a
	.uleb128 0x25
	.long	.LASF77
	.byte	0x3
	.byte	0x1f
	.long	0x354
	.uleb128 0x25
	.long	.LASF78
	.byte	0x3
	.byte	0x1f
	.long	0x29
	.byte	0
	.uleb128 0x2a
	.long	.LASF80
	.byte	0x2
	.byte	0x66
	.long	0x5e
	.byte	0x3
	.long	0x9da
	.uleb128 0x25
	.long	.LASF81
	.byte	0x2
	.byte	0x66
	.long	0x2cf
	.uleb128 0x2b
	.byte	0
	.uleb128 0x2c
	.long	0x968
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0xa1d
	.uleb128 0x1b
	.long	0x974
	.long	.LLST0
	.uleb128 0x2d
	.long	0x97f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1e
	.quad	.LVL2
	.long	0xa94
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.byte	0xc
	.long	0x186a0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x92d
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xa5d
	.uleb128 0x1b
	.long	0x93d
	.long	.LLST1
	.uleb128 0x1b
	.long	0x948
	.long	.LLST2
	.uleb128 0x1b
	.long	0x953
	.long	.LLST3
	.uleb128 0x2e
	.long	0x95c
	.long	.LLST4
	.byte	0
	.uleb128 0x2c
	.long	0x8fd
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0xa94
	.uleb128 0x1b
	.long	0x90d
	.long	.LLST5
	.uleb128 0x1b
	.long	0x918
	.long	.LLST6
	.uleb128 0x1b
	.long	0x923
	.long	.LLST7
	.byte	0
	.uleb128 0x2f
	.long	.LASF82
	.long	.LASF82
	.byte	0xb
	.value	0x21b
	.uleb128 0x30
	.long	.LASF83
	.long	.LASF83
	.byte	0x2
	.byte	0x57
	.uleb128 0x31
	.long	.LASF79
	.long	.LASF93
	.byte	0xc
	.byte	0
	.long	.LASF79
	.uleb128 0x30
	.long	.LASF84
	.long	.LASF84
	.byte	0xa
	.byte	0x44
	.uleb128 0x30
	.long	.LASF85
	.long	.LASF85
	.byte	0x1
	.byte	0x15
	.uleb128 0x32
	.long	.LASF94
	.long	.LASF94
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2b
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.quad	.LVL62
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL62
	.quad	.LVL64
	.value	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL64
	.quad	.LVL65
	.value	0x1
	.byte	0x5f
	.quad	.LVL66
	.quad	.LVL72
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL72
	.quad	.LVL78
	.value	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL78
	.quad	.LFE55
	.value	0x1
	.byte	0x5f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL22
	.quad	.LVL36
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL40
	.quad	.LVL46
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL66
	.quad	.LVL71
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL71
	.quad	.LVL72
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL72
	.quad	.LVL77
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL77
	.quad	.LVL78
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
	.quad	.LVL44
	.quad	.LVL45-1
	.value	0x1
	.byte	0x50
	.quad	.LVL45-1
	.quad	.LVL47
	.value	0x1
	.byte	0x5f
	.quad	.LVL66
	.quad	.LVL72
	.value	0x1
	.byte	0x5f
	.quad	.LVL72
	.quad	.LVL78
	.value	0x1
	.byte	0x5e
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
	.quad	.LVL47
	.quad	.LVL48
	.value	0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL48
	.quad	.LVL49
	.value	0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL50
	.quad	.LVL52
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
	.quad	.LVL52
	.quad	.LVL53-1
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL50
	.quad	.LVL53-1
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
.LLST18:
	.quad	.LVL50
	.quad	.LVL51
	.value	0x16
	.byte	0x76
	.sleb128 0
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
	.quad	.LVL51
	.quad	.LVL53-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL54
	.quad	.LVL55
	.value	0xa
	.byte	0x3
	.quad	.LC6
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL57
	.quad	.LVL58
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL57
	.quad	.LVL58
	.value	0x1
	.byte	0x51
	.quad	.LVL58
	.quad	.LVL60
	.value	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.quad	.LVL60
	.quad	.LVL61
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL57
	.quad	.LVL58
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL63
	.quad	.LVL64
	.value	0xa
	.byte	0x3
	.quad	.LC7
	.byte	0x9f
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL67
	.quad	.LVL68
	.value	0x1
	.byte	0x55
	.quad	.LVL68
	.quad	.LVL69
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
	.quad	.LVL69
	.quad	.LVL70
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
	.quad	.LVL70
	.quad	.LVL71
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
.LLST25:
	.quad	.LVL67
	.quad	.LVL68
	.value	0x1
	.byte	0x54
	.quad	.LVL68
	.quad	.LVL69
	.value	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL69
	.quad	.LVL70
	.value	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL70
	.quad	.LVL71
	.value	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL67
	.quad	.LVL68
	.value	0x1
	.byte	0x50
	.quad	.LVL68
	.quad	.LVL69
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL69
	.quad	.LVL70
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL70
	.quad	.LVL71
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL73
	.quad	.LVL74
	.value	0x1
	.byte	0x55
	.quad	.LVL74
	.quad	.LVL75
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
	.quad	.LVL75
	.quad	.LVL76
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
	.quad	.LVL76
	.quad	.LVL77
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
.LLST28:
	.quad	.LVL73
	.quad	.LVL74
	.value	0x1
	.byte	0x54
	.quad	.LVL74
	.quad	.LVL75
	.value	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL75
	.quad	.LVL76
	.value	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL76
	.quad	.LVL77
	.value	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL73
	.quad	.LVL74
	.value	0x1
	.byte	0x50
	.quad	.LVL74
	.quad	.LVL75
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL75
	.quad	.LVL76
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL76
	.quad	.LVL77
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
	.quad	.LBB38
	.quad	.LBE38
	.quad	.LBB41
	.quad	.LBE41
	.quad	0
	.quad	0
	.quad	.LBB44
	.quad	.LBE44
	.quad	.LBB47
	.quad	.LBE47
	.quad	0
	.quad	0
	.quad	.LBB48
	.quad	.LBE48
	.quad	.LBB51
	.quad	.LBE51
	.quad	0
	.quad	0
	.quad	.LBB52
	.quad	.LBE52
	.quad	.LBB55
	.quad	.LBE55
	.quad	0
	.quad	0
	.quad	.LBB58
	.quad	.LBE58
	.quad	.LBB61
	.quad	.LBE61
	.quad	0
	.quad	0
	.quad	.LBB64
	.quad	.LBE64
	.quad	.LBB67
	.quad	.LBE67
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
.LASF80:
	.string	"printf"
.LASF8:
	.string	"__off_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF82:
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
.LASF92:
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
.LASF27:
	.string	"_fileno"
.LASF67:
	.string	"basic_1_dst_offset"
.LASF15:
	.string	"_IO_read_end"
.LASF86:
	.string	"GNU C11 7.5.0 -mmmx -mtune=generic -march=x86-64 -g -O2 -fno-asynchronous-unwind-tables -fstack-protector-strong"
.LASF6:
	.string	"long int"
.LASF72:
	.string	"check"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF83:
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
.LASF93:
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
.LASF94:
	.string	"__stack_chk_fail"
.LASF58:
	.string	"tv_usec"
.LASF73:
	.string	"char_memcpy"
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
.LASF91:
	.string	"main"
.LASF17:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
