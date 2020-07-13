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
	.string	"glib2.0 memcpy durtime: %d\n\n"
.LC2:
	.string	"Failed. "
.LC3:
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
	leaq	src_offset(%rip), %r14
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	4+dst_offset(%rip), %r12
	leaq	size(%rip), %r13
	.loc 1 69 0
	movl	$1, %ebx
.LBB44:
.LBB45:
.LBB46:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 2 71 0
	movl	$-1, %r15d
.LBE46:
.LBE45:
.LBE44:
	.loc 1 65 0
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.loc 1 68 0
	call	malloc@PLT
.LVL20:
	.loc 1 69 0
	movl	$12582912, %edi
	.loc 1 68 0
	movq	%rax, src(%rip)
	movq	%rax, (%rsp)
	.loc 1 69 0
	call	malloc@PLT
.LVL21:
.LBB97:
.LBB49:
.LBB47:
	.loc 2 71 0
	movq	(%rsp), %rdx
.LBE47:
.LBE49:
.LBE97:
	.loc 1 69 0
	movq	%rax, dst(%rip)
.LVL22:
	.p2align 4,,10
	.p2align 3
.L30:
.LBB98:
	.loc 1 71 0
	movslq	(%r12), %rdi
	movslq	(%r14,%rbx,4), %rsi
	leaq	0(,%rbx,4), %rbp
.LVL23:
.LBB50:
.LBB51:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 3 104 0
	movl	0(%r13,%rbx,4), %ecx
	leaq	(%rax,%rdi), %r9
	leaq	(%rdx,%rsi), %r8
	leaq	.LC0(%rip), %rsi
	movl	%ebx, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL24:
.LBE51:
.LBE50:
.LBB52:
.LBB53:
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
.LBE53:
.LBE52:
.LBB54:
.LBB48:
	.loc 2 71 0
	movq	dst(%rip), %rdi
	movl	$12582912, %edx
	movl	%r15d, %esi
	call	memset@PLT
.LVL30:
.LBE48:
.LBE54:
.LBB55:
.LBB56:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtscp
# 0 "" 2
#NO_APP
.LBE56:
.LBE55:
	.loc 1 75 0
	movslq	(%r14,%rbp), %rsi
	movslq	(%r12), %rdi
.LBB60:
.LBB57:
	.loc 1 21 0
	movq	%rdx, 8(%rsp)
.LBE57:
.LBE60:
	.loc 1 75 0
	addq	src(%rip), %rsi
	movslq	0(%r13,%rbp), %rdx
	addq	dst(%rip), %rdi
.LBB61:
.LBB58:
	.loc 1 21 0
	movq	%rax, (%rsp)
.LBE58:
.LBE61:
	.loc 1 75 0
	call	mymemcpy@PLT
.LVL31:
.LBB62:
.LBB63:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtscp
# 0 "" 2
#NO_APP
.LBE63:
.LBE62:
	.loc 1 77 0
	movslq	0(%r13,%rbp), %r9
	movslq	(%r14,%rbp), %rdi
	movslq	(%r12), %r8
	addq	src(%rip), %rdi
	addq	dst(%rip), %r8
.LVL32:
.LBB66:
.LBB67:
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
.LBE67:
.LBE66:
.LBB68:
.LBB64:
	.loc 1 22 0
	salq	$32, %rdx
.LBE64:
.LBE68:
.LBB69:
.LBB70:
	.loc 3 104 0
	leaq	.LC3(%rip), %rsi
	movl	$1, %edi
.LBE70:
.LBE69:
.LBB72:
.LBB65:
	.loc 1 22 0
	orq	%rax, %rdx
.LBE65:
.LBE72:
.LBB73:
.LBB59:
	movq	8(%rsp), %rax
	salq	$32, %rax
	orq	(%rsp), %rax
.LBE59:
.LBE73:
	.loc 1 80 0
	subq	%rax, %rdx
.LBB74:
.LBB71:
	.loc 3 104 0
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL37:
.L31:
.LBE71:
.LBE74:
.LBB75:
.LBB76:
	.loc 2 71 0 discriminator 2
	movq	dst(%rip), %rdi
	movl	$12582912, %edx
	movl	%r15d, %esi
	call	memset@PLT
.LVL38:
.LBE76:
.LBE75:
.LBB77:
.LBB78:
	.loc 1 21 0 discriminator 2
#APP
# 21 "main.c" 1
	rdtscp
# 0 "" 2
.LVL39:
#NO_APP
.LBE78:
.LBE77:
	.loc 1 84 0 discriminator 2
	movslq	(%r12), %rdi
	movslq	(%r14,%rbp), %rsi
.LBB82:
.LBB79:
	.loc 1 21 0 discriminator 2
	movq	%rdx, 8(%rsp)
.LBE79:
.LBE82:
	.loc 1 84 0 discriminator 2
	addq	dst(%rip), %rdi
.LVL40:
	movslq	0(%r13,%rbp), %rdx
	addq	src(%rip), %rsi
.LBB83:
.LBB80:
	.loc 1 21 0 discriminator 2
	movq	%rax, (%rsp)
.LBE80:
.LBE83:
.LBB84:
.LBB85:
	.loc 2 34 0 discriminator 2
	call	memcpy@PLT
.LVL41:
.LBE85:
.LBE84:
.LBB86:
.LBB87:
	.loc 1 21 0 discriminator 2
#APP
# 21 "main.c" 1
	rdtscp
# 0 "" 2
.LVL42:
	.loc 1 22 0 discriminator 2
#NO_APP
	salq	$32, %rdx
.LBE87:
.LBE86:
.LBB89:
.LBB90:
	.loc 3 104 0 discriminator 2
	leaq	.LC1(%rip), %rsi
	movl	$1, %edi
.LBE90:
.LBE89:
.LBB92:
.LBB88:
	.loc 1 22 0 discriminator 2
	orq	%rax, %rdx
.LBE88:
.LBE92:
.LBB93:
.LBB81:
	movq	8(%rsp), %rax
	addq	$1, %rbx
.LVL43:
	addq	$4, %r12
	salq	$32, %rax
	orq	(%rsp), %rax
.LBE81:
.LBE93:
	.loc 1 86 0 discriminator 2
	subq	%rax, %rdx
.LBB94:
.LBB91:
	.loc 3 104 0 discriminator 2
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL44:
.LBE91:
.LBE94:
	.loc 1 70 0 discriminator 2
	cmpq	$16, %rbx
	je	.L33
	movq	dst(%rip), %rax
	movq	src(%rip), %rdx
	jmp	.L30
.LVL45:
.L26:
.LBB95:
.LBB96:
	.loc 3 104 0
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
.LVL46:
	jmp	.L31
.LVL47:
.L33:
.LBE96:
.LBE95:
.LBE98:
	.loc 1 89 0
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
	.long	0x979
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF83
	.byte	0xc
	.long	.LASF84
	.long	.LASF85
	.long	.Ldebug_ranges0+0x1f0
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
	.long	0x82
	.uleb128 0x7
	.byte	0x8
	.long	0x8f
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x8
	.long	0x8f
	.uleb128 0x9
	.long	.LASF40
	.byte	0xd8
	.byte	0x6
	.byte	0xf5
	.long	0x21b
	.uleb128 0xa
	.long	.LASF11
	.byte	0x6
	.byte	0xf6
	.long	0x5e
	.byte	0
	.uleb128 0xa
	.long	.LASF12
	.byte	0x6
	.byte	0xfb
	.long	0x89
	.byte	0x8
	.uleb128 0xa
	.long	.LASF13
	.byte	0x6
	.byte	0xfc
	.long	0x89
	.byte	0x10
	.uleb128 0xa
	.long	.LASF14
	.byte	0x6
	.byte	0xfd
	.long	0x89
	.byte	0x18
	.uleb128 0xa
	.long	.LASF15
	.byte	0x6
	.byte	0xfe
	.long	0x89
	.byte	0x20
	.uleb128 0xa
	.long	.LASF16
	.byte	0x6
	.byte	0xff
	.long	0x89
	.byte	0x28
	.uleb128 0xb
	.long	.LASF17
	.byte	0x6
	.value	0x100
	.long	0x89
	.byte	0x30
	.uleb128 0xb
	.long	.LASF18
	.byte	0x6
	.value	0x101
	.long	0x89
	.byte	0x38
	.uleb128 0xb
	.long	.LASF19
	.byte	0x6
	.value	0x102
	.long	0x89
	.byte	0x40
	.uleb128 0xb
	.long	.LASF20
	.byte	0x6
	.value	0x104
	.long	0x89
	.byte	0x48
	.uleb128 0xb
	.long	.LASF21
	.byte	0x6
	.value	0x105
	.long	0x89
	.byte	0x50
	.uleb128 0xb
	.long	.LASF22
	.byte	0x6
	.value	0x106
	.long	0x89
	.byte	0x58
	.uleb128 0xb
	.long	.LASF23
	.byte	0x6
	.value	0x108
	.long	0x253
	.byte	0x60
	.uleb128 0xb
	.long	.LASF24
	.byte	0x6
	.value	0x10a
	.long	0x259
	.byte	0x68
	.uleb128 0xb
	.long	.LASF25
	.byte	0x6
	.value	0x10c
	.long	0x5e
	.byte	0x70
	.uleb128 0xb
	.long	.LASF26
	.byte	0x6
	.value	0x110
	.long	0x5e
	.byte	0x74
	.uleb128 0xb
	.long	.LASF27
	.byte	0x6
	.value	0x112
	.long	0x6c
	.byte	0x78
	.uleb128 0xb
	.long	.LASF28
	.byte	0x6
	.value	0x116
	.long	0x42
	.byte	0x80
	.uleb128 0xb
	.long	.LASF29
	.byte	0x6
	.value	0x117
	.long	0x50
	.byte	0x82
	.uleb128 0xb
	.long	.LASF30
	.byte	0x6
	.value	0x118
	.long	0x25f
	.byte	0x83
	.uleb128 0xb
	.long	.LASF31
	.byte	0x6
	.value	0x11c
	.long	0x26f
	.byte	0x88
	.uleb128 0xb
	.long	.LASF32
	.byte	0x6
	.value	0x125
	.long	0x77
	.byte	0x90
	.uleb128 0xb
	.long	.LASF33
	.byte	0x6
	.value	0x12d
	.long	0x82
	.byte	0x98
	.uleb128 0xb
	.long	.LASF34
	.byte	0x6
	.value	0x12e
	.long	0x82
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF35
	.byte	0x6
	.value	0x12f
	.long	0x82
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF36
	.byte	0x6
	.value	0x130
	.long	0x82
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF37
	.byte	0x6
	.value	0x132
	.long	0x29
	.byte	0xb8
	.uleb128 0xb
	.long	.LASF38
	.byte	0x6
	.value	0x133
	.long	0x5e
	.byte	0xc0
	.uleb128 0xb
	.long	.LASF39
	.byte	0x6
	.value	0x135
	.long	0x275
	.byte	0xc4
	.byte	0
	.uleb128 0xc
	.long	.LASF86
	.byte	0x6
	.byte	0x9a
	.uleb128 0x9
	.long	.LASF41
	.byte	0x18
	.byte	0x6
	.byte	0xa0
	.long	0x253
	.uleb128 0xa
	.long	.LASF42
	.byte	0x6
	.byte	0xa1
	.long	0x253
	.byte	0
	.uleb128 0xa
	.long	.LASF43
	.byte	0x6
	.byte	0xa2
	.long	0x259
	.byte	0x8
	.uleb128 0xa
	.long	.LASF44
	.byte	0x6
	.byte	0xa6
	.long	0x5e
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x222
	.uleb128 0x7
	.byte	0x8
	.long	0x9b
	.uleb128 0xd
	.long	0x8f
	.long	0x26f
	.uleb128 0xe
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x21b
	.uleb128 0xd
	.long	0x8f
	.long	0x285
	.uleb128 0xe
	.long	0x34
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.long	.LASF87
	.uleb128 0x10
	.long	.LASF45
	.byte	0x6
	.value	0x13f
	.long	0x285
	.uleb128 0x10
	.long	.LASF46
	.byte	0x6
	.value	0x140
	.long	0x285
	.uleb128 0x10
	.long	.LASF47
	.byte	0x6
	.value	0x141
	.long	0x285
	.uleb128 0x7
	.byte	0x8
	.long	0x96
	.uleb128 0x8
	.long	0x2ae
	.uleb128 0x6
	.long	0x2ae
	.uleb128 0x11
	.long	.LASF48
	.byte	0x7
	.byte	0x87
	.long	0x259
	.uleb128 0x11
	.long	.LASF49
	.byte	0x7
	.byte	0x88
	.long	0x259
	.uleb128 0x11
	.long	.LASF50
	.byte	0x7
	.byte	0x89
	.long	0x259
	.uleb128 0x11
	.long	.LASF51
	.byte	0x8
	.byte	0x1a
	.long	0x5e
	.uleb128 0xd
	.long	0x2b4
	.long	0x2f5
	.uleb128 0x12
	.byte	0
	.uleb128 0x8
	.long	0x2ea
	.uleb128 0x11
	.long	.LASF52
	.byte	0x8
	.byte	0x1b
	.long	0x2f5
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF53
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF54
	.uleb128 0x7
	.byte	0x8
	.long	0x31e
	.uleb128 0x6
	.long	0x313
	.uleb128 0x13
	.uleb128 0x9
	.long	.LASF55
	.byte	0x8
	.byte	0x9
	.byte	0x34
	.long	0x344
	.uleb128 0xa
	.long	.LASF56
	.byte	0x9
	.byte	0x36
	.long	0x5e
	.byte	0
	.uleb128 0xa
	.long	.LASF57
	.byte	0x9
	.byte	0x37
	.long	0x5e
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x31f
	.uleb128 0x6
	.long	0x344
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
	.uleb128 0xd
	.long	0x5e
	.long	0x389
	.uleb128 0xe
	.long	0x34
	.byte	0xe
	.byte	0
	.uleb128 0x15
	.long	.LASF58
	.byte	0x1
	.byte	0xa
	.long	0x379
	.uleb128 0x9
	.byte	0x3
	.quad	size
	.uleb128 0x15
	.long	.LASF59
	.byte	0x1
	.byte	0xd
	.long	0x379
	.uleb128 0x9
	.byte	0x3
	.quad	src_offset
	.uleb128 0x15
	.long	.LASF60
	.byte	0x1
	.byte	0xf
	.long	0x379
	.uleb128 0x9
	.byte	0x3
	.quad	dst_offset
	.uleb128 0x16
	.long	.LASF88
	.byte	0x1
	.byte	0x41
	.long	0x5e
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x765
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
	.long	.Ldebug_ranges0+0
	.long	0x736
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x46
	.long	0x5e
	.long	.LLST9
	.uleb128 0x1b
	.long	0x83b
	.quad	.LBB45
	.long	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x49
	.long	0x472
	.uleb128 0x1c
	.long	0x861
	.long	.LLST10
	.uleb128 0x1c
	.long	0x856
	.long	.LLST11
	.uleb128 0x1c
	.long	0x84b
	.long	.LLST12
	.uleb128 0x1d
	.quad	.LVL30
	.long	0x91f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x89f
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.byte	0x1
	.byte	0x47
	.long	0x4bd
	.uleb128 0x1c
	.long	0x8af
	.long	.LLST13
	.uleb128 0x1d
	.quad	.LVL24
	.long	0x92e
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
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x7f1
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.byte	0x1
	.byte	0x48
	.long	0x4f9
	.uleb128 0x1c
	.long	0x7fd
	.long	.LLST14
	.uleb128 0x20
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.uleb128 0x21
	.long	0x8e0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x814
	.quad	.LBB55
	.long	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0x4a
	.long	0x521
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x80
	.uleb128 0x21
	.long	0x824
	.uleb128 0x21
	.long	0x82f
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x814
	.quad	.LBB62
	.long	.Ldebug_ranges0+0xd0
	.byte	0x1
	.byte	0x4c
	.long	0x549
	.uleb128 0x22
	.long	.Ldebug_ranges0+0xd0
	.uleb128 0x21
	.long	0x824
	.uleb128 0x21
	.long	0x82f
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x765
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.byte	0x1
	.byte	0x4d
	.long	0x580
	.uleb128 0x1c
	.long	0x78b
	.long	.LLST15
	.uleb128 0x1c
	.long	0x780
	.long	.LLST16
	.uleb128 0x1c
	.long	0x775
	.long	.LLST17
	.byte	0
	.uleb128 0x1b
	.long	0x89f
	.quad	.LBB69
	.long	.Ldebug_ranges0+0x110
	.byte	0x1
	.byte	0x50
	.long	0x5c1
	.uleb128 0x1c
	.long	0x8af
	.long	.LLST18
	.uleb128 0x1d
	.quad	.LVL37
	.long	0x92e
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
	.quad	.LC3
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x83b
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.byte	0x1
	.byte	0x52
	.long	0x613
	.uleb128 0x1c
	.long	0x861
	.long	.LLST19
	.uleb128 0x1c
	.long	0x856
	.long	.LLST20
	.uleb128 0x1c
	.long	0x84b
	.long	.LLST21
	.uleb128 0x1d
	.quad	.LVL38
	.long	0x91f
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x814
	.quad	.LBB77
	.long	.Ldebug_ranges0+0x140
	.byte	0x1
	.byte	0x53
	.long	0x63b
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x140
	.uleb128 0x21
	.long	0x824
	.uleb128 0x21
	.long	0x82f
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x86d
	.quad	.LBB84
	.quad	.LBE84-.LBB84
	.byte	0x1
	.byte	0x54
	.long	0x67f
	.uleb128 0x1c
	.long	0x893
	.long	.LLST22
	.uleb128 0x1c
	.long	0x888
	.long	.LLST23
	.uleb128 0x1c
	.long	0x87d
	.long	.LLST24
	.uleb128 0x23
	.quad	.LVL41
	.long	0x939
	.byte	0
	.uleb128 0x1b
	.long	0x814
	.quad	.LBB86
	.long	.Ldebug_ranges0+0x190
	.byte	0x1
	.byte	0x55
	.long	0x6a7
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x190
	.uleb128 0x21
	.long	0x824
	.uleb128 0x21
	.long	0x82f
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x89f
	.quad	.LBB89
	.long	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.byte	0x56
	.long	0x6e8
	.uleb128 0x1c
	.long	0x8af
	.long	.LLST25
	.uleb128 0x1d
	.quad	.LVL44
	.long	0x92e
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
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x89f
	.quad	.LBB95
	.quad	.LBE95-.LBB95
	.byte	0x1
	.byte	0x4e
	.long	0x728
	.uleb128 0x1c
	.long	0x8af
	.long	.LLST26
	.uleb128 0x1d
	.quad	.LVL46
	.long	0x956
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LVL31
	.long	0x965
	.byte	0
	.uleb128 0x24
	.quad	.LVL20
	.long	0x970
	.long	0x74f
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
	.long	0x970
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
	.long	.LASF89
	.byte	0x1
	.byte	0x33
	.long	0x5e
	.byte	0x1
	.long	0x795
	.uleb128 0x26
	.long	.LASF64
	.byte	0x1
	.byte	0x33
	.long	0x89
	.uleb128 0x27
	.string	"src"
	.byte	0x1
	.byte	0x33
	.long	0x2ae
	.uleb128 0x27
	.string	"n"
	.byte	0x1
	.byte	0x33
	.long	0x29
	.byte	0
	.uleb128 0x28
	.long	.LASF90
	.byte	0x1
	.byte	0x29
	.long	0x82
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x7f1
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
	.long	0x313
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
	.long	0x89
	.long	.LLST4
	.byte	0
	.uleb128 0x2b
	.long	.LASF91
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.long	0x814
	.uleb128 0x26
	.long	.LASF58
	.byte	0x1
	.byte	0x1d
	.long	0x5e
	.uleb128 0x17
	.long	.LASF65
	.byte	0x1
	.byte	0x1f
	.long	0x89
	.byte	0
	.uleb128 0x2c
	.long	.LASF92
	.byte	0x1
	.byte	0x13
	.long	0x34
	.byte	0x3
	.long	0x83b
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
	.byte	0x2
	.byte	0x3b
	.long	0x82
	.byte	0x3
	.long	0x86d
	.uleb128 0x26
	.long	.LASF68
	.byte	0x2
	.byte	0x3b
	.long	0x82
	.uleb128 0x26
	.long	.LASF69
	.byte	0x2
	.byte	0x3b
	.long	0x5e
	.uleb128 0x26
	.long	.LASF70
	.byte	0x2
	.byte	0x3b
	.long	0x29
	.byte	0
	.uleb128 0x2d
	.long	.LASF72
	.byte	0x2
	.byte	0x1f
	.long	0x82
	.byte	0x3
	.long	0x89f
	.uleb128 0x26
	.long	.LASF68
	.byte	0x2
	.byte	0x1f
	.long	0x84
	.uleb128 0x26
	.long	.LASF73
	.byte	0x2
	.byte	0x1f
	.long	0x319
	.uleb128 0x26
	.long	.LASF70
	.byte	0x2
	.byte	0x1f
	.long	0x29
	.byte	0
	.uleb128 0x2d
	.long	.LASF74
	.byte	0x3
	.byte	0x66
	.long	0x5e
	.byte	0x3
	.long	0x8bc
	.uleb128 0x26
	.long	.LASF75
	.byte	0x3
	.byte	0x66
	.long	0x2b9
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2f
	.long	0x7f1
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x8e8
	.uleb128 0x1c
	.long	0x7fd
	.long	.LLST0
	.uleb128 0x30
	.long	0x808
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x2f
	.long	0x765
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x91f
	.uleb128 0x1c
	.long	0x775
	.long	.LLST5
	.uleb128 0x1c
	.long	0x780
	.long	.LLST6
	.uleb128 0x1c
	.long	0x78b
	.long	.LLST7
	.byte	0
	.uleb128 0x31
	.long	.LASF71
	.long	.LASF76
	.byte	0xa
	.byte	0
	.long	.LASF71
	.uleb128 0x32
	.long	.LASF80
	.long	.LASF80
	.byte	0x3
	.byte	0x57
	.uleb128 0x31
	.long	.LASF72
	.long	.LASF77
	.byte	0xa
	.byte	0
	.long	.LASF72
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
	.uleb128 0x31
	.long	.LASF78
	.long	.LASF79
	.byte	0xa
	.byte	0
	.long	.LASF78
	.uleb128 0x32
	.long	.LASF81
	.long	.LASF81
	.byte	0x1
	.byte	0x1a
	.uleb128 0x34
	.long	.LASF82
	.long	.LASF82
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
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.quad	.LVL43
	.value	0x1
	.byte	0x53
	.quad	.LVL45
	.quad	.LVL47
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL29
	.quad	.LVL30
	.value	0x4
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL29
	.quad	.LVL30
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL29
	.quad	.LVL30-1
	.value	0x9
	.byte	0x3
	.quad	dst
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL23
	.quad	.LVL24
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
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
.LLST15:
	.quad	.LVL32
	.quad	.LVL33
	.value	0x1
	.byte	0x59
	.quad	.LVL33
	.quad	.LVL34
	.value	0x18
	.byte	0x76
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
	.byte	0x76
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
	.byte	0x76
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
	.quad	.LVL37
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL37
	.quad	.LVL38
	.value	0x4
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL37
	.quad	.LVL38
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL37
	.quad	.LVL38-1
	.value	0x9
	.byte	0x3
	.quad	dst
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL39
	.quad	.LVL41-1
	.value	0x15
	.byte	0x76
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
	.byte	0x9f
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL39
	.quad	.LVL41-1
	.value	0x20
	.byte	0x76
	.sleb128 0
	.byte	0x3
	.quad	src_offset
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
.LLST24:
	.quad	.LVL39
	.quad	.LVL40
	.value	0x16
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
	.byte	0x3
	.quad	dst
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.quad	.LVL40
	.quad	.LVL41-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL42
	.quad	.LVL44
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL45
	.quad	.LVL47
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2376
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
	.quad	.LBB44
	.quad	.LBE44
	.quad	.LBB97
	.quad	.LBE97
	.quad	.LBB98
	.quad	.LBE98
	.quad	0
	.quad	0
	.quad	.LBB45
	.quad	.LBE45
	.quad	.LBB49
	.quad	.LBE49
	.quad	.LBB54
	.quad	.LBE54
	.quad	0
	.quad	0
	.quad	.LBB55
	.quad	.LBE55
	.quad	.LBB60
	.quad	.LBE60
	.quad	.LBB61
	.quad	.LBE61
	.quad	.LBB73
	.quad	.LBE73
	.quad	0
	.quad	0
	.quad	.LBB62
	.quad	.LBE62
	.quad	.LBB68
	.quad	.LBE68
	.quad	.LBB72
	.quad	.LBE72
	.quad	0
	.quad	0
	.quad	.LBB69
	.quad	.LBE69
	.quad	.LBB74
	.quad	.LBE74
	.quad	0
	.quad	0
	.quad	.LBB77
	.quad	.LBE77
	.quad	.LBB82
	.quad	.LBE82
	.quad	.LBB83
	.quad	.LBE83
	.quad	.LBB93
	.quad	.LBE93
	.quad	0
	.quad	0
	.quad	.LBB86
	.quad	.LBE86
	.quad	.LBB92
	.quad	.LBE92
	.quad	0
	.quad	0
	.quad	.LBB89
	.quad	.LBE89
	.quad	.LBB94
	.quad	.LBE94
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
.LASF74:
	.string	"printf"
.LASF8:
	.string	"__off_t"
.LASF12:
	.string	"_IO_read_ptr"
.LASF82:
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
.LASF76:
	.string	"__builtin_memset"
.LASF54:
	.string	"long long unsigned int"
.LASF91:
	.string	"InitSrcArea"
.LASF73:
	.string	"__src"
.LASF53:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF25:
	.string	"_fileno"
.LASF13:
	.string	"_IO_read_end"
.LASF83:
	.string	"GNU C11 7.5.0 -mmmx -mtune=generic -march=x86-64 -g -O2 -fno-asynchronous-unwind-tables -fstack-protector-strong"
.LASF6:
	.string	"long int"
.LASF89:
	.string	"check"
.LASF11:
	.string	"_flags"
.LASF19:
	.string	"_IO_buf_end"
.LASF28:
	.string	"_cur_column"
.LASF80:
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
.LASF85:
	.string	"/home/landon/AssembleLangFinal/memcpy"
.LASF87:
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
.LASF84:
	.string	"main.c"
.LASF56:
	.string	"tz_minuteswest"
.LASF77:
	.string	"__builtin_memcpy"
.LASF31:
	.string	"_lock"
.LASF26:
	.string	"_flags2"
.LASF38:
	.string	"_mode"
.LASF79:
	.string	"__builtin_puts"
.LASF49:
	.string	"stdout"
.LASF45:
	.string	"_IO_2_1_stdin_"
.LASF78:
	.string	"puts"
.LASF67:
	.string	"tickh"
.LASF66:
	.string	"tickl"
.LASF17:
	.string	"_IO_write_end"
.LASF68:
	.string	"__dest"
.LASF81:
	.string	"mymemcpy"
.LASF65:
	.string	"psrc"
.LASF86:
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
.LASF90:
	.string	"char_memcpy"
.LASF92:
	.string	"rdtsc"
.LASF10:
	.string	"char"
.LASF42:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF14:
	.string	"_IO_read_base"
.LASF72:
	.string	"memcpy"
.LASF22:
	.string	"_IO_save_end"
.LASF75:
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
.LASF88:
	.string	"main"
.LASF15:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
