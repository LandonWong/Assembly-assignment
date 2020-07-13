	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.globl	InitSrcArea
	.type	InitSrcArea, @function
InitSrcArea:
.LFB53:
	.file 1 "main.c"
	.loc 1 29 0
	.cfi_startproc
.LVL0:
	.loc 1 31 0
	movq	src(%rip), %rax
.LVL1:
	.loc 1 32 0
	testl	%edi, %edi
	je	.L1
.L3:
	.loc 1 33 0
	movb	%dil, (%rax)
.LVL2:
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
	.globl	char_memcpy
	.type	char_memcpy, @function
char_memcpy:
.LFB54:
	.loc 1 41 0
	.cfi_startproc
.LVL5:
	movq	%rdi, %rax
.LVL6:
	.loc 1 43 0
	testq	%rdx, %rdx
	je	.L6
	addq	%rdi, %rdx
.LVL7:
	.loc 1 42 0
	movq	%rdi, %rcx
.LVL8:
.L7:
	.loc 1 44 0
	addq	$1, %rcx
.LVL9:
	movb	%sil, -1(%rcx)
.LVL10:
	addq	$1, %rsi
.LVL11:
	.loc 1 43 0
	cmpq	%rcx, %rdx
	jne	.L7
.LVL12:
.L6:
	.loc 1 48 0
	rep ret
	.cfi_endproc
.LFE54:
	.size	char_memcpy, .-char_memcpy
	.globl	check
	.type	check, @function
check:
.LFB55:
	.loc 1 51 0
	.cfi_startproc
.LVL13:
	.loc 1 52 0
	testq	%rdx, %rdx
	je	.L13
	.loc 1 54 0
	movzbl	(%rsi), %eax
	cmpb	%al, (%rdi)
	jne	.L14
	addq	%rdi, %rdx
.LVL14:
.L11:
	.loc 1 57 0
	addq	$1, %rdi
.LVL15:
	.loc 1 58 0
	addq	$1, %rsi
.LVL16:
	.loc 1 52 0
	cmpq	%rdi, %rdx
	je	.L16
	.loc 1 54 0
	movzbl	(%rsi), %eax
	cmpb	%al, (%rdi)
	je	.L11
	.loc 1 55 0
	movl	$0, %eax
	.loc 1 62 0
	ret
.L16:
	.loc 1 61 0
	movl	$1, %eax
	ret
.LVL17:
.L13:
	movl	$1, %eax
	ret
.L14:
	.loc 1 55 0
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE55:
	.size	check, .-check
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"========================================"
	.align 8
.LC1:
	.string	"Test %2d:\tsize = 0x%6lx\n\t0x%x -> 0x%x\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"Failed. "
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"Passed. \n\nmymemcpy durtime:\t%d\n"
	.section	.rodata.str1.1
.LC4:
	.string	"glib2.0 memcpy durtime:\t%d\n"
.LC5:
	.string	"1-char copy durtime:\t%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB56:
	.loc 1 65 0
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
.LVL18:
	.loc 1 68 0
	movl	$12582912, %edi
	call	malloc@PLT
.LVL19:
	movq	%rax, src(%rip)
	.loc 1 69 0
	movl	$12582912, %edi
	call	malloc@PLT
.LVL20:
	movq	%rax, dst(%rip)
.LVL21:
.LBB60:
.LBB61:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
.LVL22:
	leaq	dst_offset(%rip), %r12
	leaq	src_offset(%rip), %rbp
	movl	$1, %ebx
.LBE61:
.LBE60:
.LBB62:
	.loc 1 72 0
	leaq	-8+size(%rip), %r14
	jmp	.L20
.LVL23:
.L18:
.LBB63:
.LBB64:
	.loc 1 22 0
	movq	%r13, %rdx
	salq	$32, %rdx
	orq	%r15, %rdx
.LBE64:
.LBE63:
.LBB66:
.LBB67:
	movq	8(%rsp), %rax
.LVL24:
	salq	$32, %rax
	orq	(%rsp), %rax
.LBE67:
.LBE66:
	.loc 1 81 0
	subq	%rax, %rdx
.LBB69:
.LBB70:
	.loc 2 104 0
	leaq	.LC3(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL25:
.LBE70:
.LBE69:
.LBB71:
.LBB72:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 3 71 0
	movl	$12582912, %edx
	movl	$-2, %esi
	movq	dst(%rip), %rdi
	call	memset@PLT
.LVL26:
.LBE72:
.LBE71:
	.loc 1 83 0
	movl	$12582912, %edi
	call	InitSrcArea
.LVL27:
.LBB73:
.LBB74:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtsc
# 0 "" 2
#NO_APP
	movq	%rdx, %r13
	movq	%rax, %r15
.LVL28:
.LBE74:
.LBE73:
	.loc 1 85 0
	movslq	(%r12), %rdi
	addq	dst(%rip), %rdi
.LVL29:
	movslq	0(%rbp), %rsi
	addq	src(%rip), %rsi
.LVL30:
.LBB76:
.LBB77:
	.loc 3 34 0
	movq	(%r14,%rbx,8), %rdx
	call	memcpy@PLT
.LVL31:
.LBE77:
.LBE76:
.LBB78:
.LBB79:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtsc
# 0 "" 2
.LVL32:
	.loc 1 22 0
#NO_APP
	salq	$32, %rdx
	orq	%rax, %rdx
.LBE79:
.LBE78:
.LBB80:
.LBB75:
	salq	$32, %r13
	orq	%r13, %r15
.LBE75:
.LBE80:
	.loc 1 87 0
	subq	%r15, %rdx
.LBB81:
.LBB82:
	.loc 2 104 0
	leaq	.LC4(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL33:
.LBE82:
.LBE81:
.LBB83:
.LBB84:
	.loc 3 71 0
	movl	$12582912, %edx
	movl	$-1, %esi
	movq	dst(%rip), %rdi
	call	memset@PLT
.LVL34:
.LBE84:
.LBE83:
	.loc 1 89 0
	movl	$12582912, %edi
	call	InitSrcArea
.LVL35:
.LBB85:
.LBB86:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtsc
# 0 "" 2
.LVL36:
	.loc 1 22 0
#NO_APP
	salq	$32, %rdx
.LVL37:
	orq	%rax, %rdx
	movq	%rdx, %r13
.LVL38:
.LBE86:
.LBE85:
	.loc 1 91 0
	movq	(%r14,%rbx,8), %rdx
	movslq	0(%rbp), %rsi
	addq	src(%rip), %rsi
	movslq	(%r12), %rdi
	addq	dst(%rip), %rdi
	call	char_memcpy
.LVL39:
.LBB87:
.LBB88:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtsc
# 0 "" 2
.LVL40:
	.loc 1 22 0
#NO_APP
	salq	$32, %rdx
	orq	%rax, %rdx
.LBE88:
.LBE87:
	.loc 1 93 0
	subq	%r13, %rdx
.LBB89:
.LBB90:
	.loc 2 104 0
	leaq	.LC5(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL41:
.L19:
.LBE90:
.LBE89:
.LBB91:
.LBB92:
	.loc 2 104 0 is_stmt 0 discriminator 2
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
.LVL42:
	addq	$1, %rbx
.LVL43:
	addq	$4, %r12
	addq	$4, %rbp
.LBE92:
.LBE91:
	.loc 1 71 0 is_stmt 1 discriminator 2
	cmpq	$16, %rbx
	je	.L23
.L20:
.LVL44:
	.loc 1 72 0
	movslq	(%r12), %r9
	movslq	0(%rbp), %r8
.LBB93:
.LBB94:
	.loc 2 104 0
	movq	(%r14,%rbx,8), %rcx
	addq	dst(%rip), %r9
	addq	src(%rip), %r8
	movl	%ebx, %edx
	leaq	.LC1(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.LVL45:
.LBE94:
.LBE93:
	.loc 1 73 0
	movl	$12582912, %edi
	call	InitSrcArea
.LVL46:
.LBB95:
.LBB96:
	.loc 3 71 0
	movl	$12582912, %edx
	movl	$-1, %esi
	movq	dst(%rip), %rdi
	call	memset@PLT
.LVL47:
.LBE96:
.LBE95:
.LBB97:
.LBB68:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtsc
# 0 "" 2
#NO_APP
	movq	%rdx, 8(%rsp)
	movq	%rax, (%rsp)
.LBE68:
.LBE97:
	.loc 1 76 0
	movq	(%r14,%rbx,8), %rdx
	movslq	0(%rbp), %rsi
	addq	src(%rip), %rsi
	movslq	(%r12), %rdi
	addq	dst(%rip), %rdi
	call	mymemcpy@PLT
.LVL48:
.LBB98:
.LBB65:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtsc
# 0 "" 2
#NO_APP
	movq	%rdx, %r13
	movq	%rax, %r15
.LBE65:
.LBE98:
	.loc 1 78 0
	movq	(%r14,%rbx,8), %rdx
	movslq	0(%rbp), %rsi
	addq	src(%rip), %rsi
	movslq	(%r12), %rdi
	addq	dst(%rip), %rdi
	call	check
.LVL49:
	.loc 1 79 0
	testl	%eax, %eax
	jne	.L18
.LVL50:
.LBB99:
.LBB100:
	.loc 2 104 0
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
.LVL51:
	jmp	.L19
.LVL52:
.L23:
.LBE100:
.LBE99:
.LBE62:
	.loc 1 98 0
	movl	$0, %eax
	addq	$24, %rsp
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
	.long	0xb54
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF87
	.byte	0xc
	.long	.LASF88
	.long	.LASF89
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
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.long	0x86
	.uleb128 0x7
	.byte	0x8
	.long	0x93
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x8
	.long	0x93
	.uleb128 0x9
	.long	.LASF40
	.byte	0xd8
	.byte	0x6
	.byte	0xf5
	.long	0x21f
	.uleb128 0xa
	.long	.LASF11
	.byte	0x6
	.byte	0xf6
	.long	0x62
	.byte	0
	.uleb128 0xa
	.long	.LASF12
	.byte	0x6
	.byte	0xfb
	.long	0x8d
	.byte	0x8
	.uleb128 0xa
	.long	.LASF13
	.byte	0x6
	.byte	0xfc
	.long	0x8d
	.byte	0x10
	.uleb128 0xa
	.long	.LASF14
	.byte	0x6
	.byte	0xfd
	.long	0x8d
	.byte	0x18
	.uleb128 0xa
	.long	.LASF15
	.byte	0x6
	.byte	0xfe
	.long	0x8d
	.byte	0x20
	.uleb128 0xa
	.long	.LASF16
	.byte	0x6
	.byte	0xff
	.long	0x8d
	.byte	0x28
	.uleb128 0xb
	.long	.LASF17
	.byte	0x6
	.value	0x100
	.long	0x8d
	.byte	0x30
	.uleb128 0xb
	.long	.LASF18
	.byte	0x6
	.value	0x101
	.long	0x8d
	.byte	0x38
	.uleb128 0xb
	.long	.LASF19
	.byte	0x6
	.value	0x102
	.long	0x8d
	.byte	0x40
	.uleb128 0xb
	.long	.LASF20
	.byte	0x6
	.value	0x104
	.long	0x8d
	.byte	0x48
	.uleb128 0xb
	.long	.LASF21
	.byte	0x6
	.value	0x105
	.long	0x8d
	.byte	0x50
	.uleb128 0xb
	.long	.LASF22
	.byte	0x6
	.value	0x106
	.long	0x8d
	.byte	0x58
	.uleb128 0xb
	.long	.LASF23
	.byte	0x6
	.value	0x108
	.long	0x257
	.byte	0x60
	.uleb128 0xb
	.long	.LASF24
	.byte	0x6
	.value	0x10a
	.long	0x25d
	.byte	0x68
	.uleb128 0xb
	.long	.LASF25
	.byte	0x6
	.value	0x10c
	.long	0x62
	.byte	0x70
	.uleb128 0xb
	.long	.LASF26
	.byte	0x6
	.value	0x110
	.long	0x62
	.byte	0x74
	.uleb128 0xb
	.long	.LASF27
	.byte	0x6
	.value	0x112
	.long	0x70
	.byte	0x78
	.uleb128 0xb
	.long	.LASF28
	.byte	0x6
	.value	0x116
	.long	0x46
	.byte	0x80
	.uleb128 0xb
	.long	.LASF29
	.byte	0x6
	.value	0x117
	.long	0x54
	.byte	0x82
	.uleb128 0xb
	.long	.LASF30
	.byte	0x6
	.value	0x118
	.long	0x263
	.byte	0x83
	.uleb128 0xb
	.long	.LASF31
	.byte	0x6
	.value	0x11c
	.long	0x273
	.byte	0x88
	.uleb128 0xb
	.long	.LASF32
	.byte	0x6
	.value	0x125
	.long	0x7b
	.byte	0x90
	.uleb128 0xb
	.long	.LASF33
	.byte	0x6
	.value	0x12d
	.long	0x86
	.byte	0x98
	.uleb128 0xb
	.long	.LASF34
	.byte	0x6
	.value	0x12e
	.long	0x86
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF35
	.byte	0x6
	.value	0x12f
	.long	0x86
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF36
	.byte	0x6
	.value	0x130
	.long	0x86
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF37
	.byte	0x6
	.value	0x132
	.long	0x2d
	.byte	0xb8
	.uleb128 0xb
	.long	.LASF38
	.byte	0x6
	.value	0x133
	.long	0x62
	.byte	0xc0
	.uleb128 0xb
	.long	.LASF39
	.byte	0x6
	.value	0x135
	.long	0x279
	.byte	0xc4
	.byte	0
	.uleb128 0xc
	.long	.LASF90
	.byte	0x6
	.byte	0x9a
	.uleb128 0x9
	.long	.LASF41
	.byte	0x18
	.byte	0x6
	.byte	0xa0
	.long	0x257
	.uleb128 0xa
	.long	.LASF42
	.byte	0x6
	.byte	0xa1
	.long	0x257
	.byte	0
	.uleb128 0xa
	.long	.LASF43
	.byte	0x6
	.byte	0xa2
	.long	0x25d
	.byte	0x8
	.uleb128 0xa
	.long	.LASF44
	.byte	0x6
	.byte	0xa6
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x226
	.uleb128 0x7
	.byte	0x8
	.long	0x9f
	.uleb128 0xd
	.long	0x93
	.long	0x273
	.uleb128 0xe
	.long	0x38
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x21f
	.uleb128 0xd
	.long	0x93
	.long	0x289
	.uleb128 0xe
	.long	0x38
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.long	.LASF91
	.uleb128 0x10
	.long	.LASF45
	.byte	0x6
	.value	0x13f
	.long	0x289
	.uleb128 0x10
	.long	.LASF46
	.byte	0x6
	.value	0x140
	.long	0x289
	.uleb128 0x10
	.long	.LASF47
	.byte	0x6
	.value	0x141
	.long	0x289
	.uleb128 0x7
	.byte	0x8
	.long	0x9a
	.uleb128 0x8
	.long	0x2b2
	.uleb128 0x6
	.long	0x2b2
	.uleb128 0x11
	.long	.LASF48
	.byte	0x7
	.byte	0x87
	.long	0x25d
	.uleb128 0x11
	.long	.LASF49
	.byte	0x7
	.byte	0x88
	.long	0x25d
	.uleb128 0x11
	.long	.LASF50
	.byte	0x7
	.byte	0x89
	.long	0x25d
	.uleb128 0x11
	.long	.LASF51
	.byte	0x8
	.byte	0x1a
	.long	0x62
	.uleb128 0xd
	.long	0x2b8
	.long	0x2f9
	.uleb128 0x12
	.byte	0
	.uleb128 0x8
	.long	0x2ee
	.uleb128 0x11
	.long	.LASF52
	.byte	0x8
	.byte	0x1b
	.long	0x2f9
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
	.long	0x322
	.uleb128 0x6
	.long	0x317
	.uleb128 0x13
	.uleb128 0x9
	.long	.LASF55
	.byte	0x8
	.byte	0x9
	.byte	0x34
	.long	0x348
	.uleb128 0xa
	.long	.LASF56
	.byte	0x9
	.byte	0x36
	.long	0x62
	.byte	0
	.uleb128 0xa
	.long	.LASF57
	.byte	0x9
	.byte	0x37
	.long	0x62
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x323
	.uleb128 0x6
	.long	0x348
	.uleb128 0x14
	.string	"src"
	.byte	0x1
	.byte	0x7
	.long	0x368
	.uleb128 0x9
	.byte	0x3
	.quad	src
	.uleb128 0x7
	.byte	0x8
	.long	0x36e
	.uleb128 0x15
	.uleb128 0x14
	.string	"dst"
	.byte	0x1
	.byte	0x8
	.long	0x368
	.uleb128 0x9
	.byte	0x3
	.quad	dst
	.uleb128 0xd
	.long	0x38
	.long	0x394
	.uleb128 0xe
	.long	0x38
	.byte	0xe
	.byte	0
	.uleb128 0x16
	.long	.LASF58
	.byte	0x1
	.byte	0xa
	.long	0x384
	.uleb128 0x9
	.byte	0x3
	.quad	size
	.uleb128 0xd
	.long	0x62
	.long	0x3b9
	.uleb128 0xe
	.long	0x38
	.byte	0xe
	.byte	0
	.uleb128 0x16
	.long	.LASF59
	.byte	0x1
	.byte	0xd
	.long	0x3a9
	.uleb128 0x9
	.byte	0x3
	.quad	src_offset
	.uleb128 0x16
	.long	.LASF60
	.byte	0x1
	.byte	0xf
	.long	0x3a9
	.uleb128 0x9
	.byte	0x3
	.quad	dst_offset
	.uleb128 0x17
	.long	.LASF67
	.byte	0x1
	.byte	0x41
	.long	0x62
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x941
	.uleb128 0x18
	.long	.LASF61
	.byte	0x1
	.byte	0x42
	.long	0x38
	.uleb128 0x18
	.long	.LASF62
	.byte	0x1
	.byte	0x42
	.long	0x38
	.uleb128 0x19
	.long	.LASF63
	.byte	0x1
	.byte	0x43
	.long	0x62
	.long	.LLST8
	.uleb128 0x1a
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.long	0x8d2
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x47
	.long	0x62
	.long	.LLST10
	.uleb128 0x1c
	.long	0xa24
	.quad	.LBB63
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x4d
	.long	0x473
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0
	.uleb128 0x1e
	.long	0xa34
	.uleb128 0x1e
	.long	0xa3f
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0xa24
	.quad	.LBB66
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x4b
	.long	0x49b
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x1e
	.long	0xa34
	.uleb128 0x1e
	.long	0xa3f
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0xaaf
	.quad	.LBB69
	.quad	.LBE69-.LBB69
	.byte	0x1
	.byte	0x51
	.long	0x4f8
	.uleb128 0x20
	.long	0xabf
	.long	.LLST11
	.uleb128 0x21
	.quad	.LVL25
	.long	0xacc
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x14
	.byte	0x7d
	.sleb128 0
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x7f
	.sleb128 0
	.byte	0x21
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x77
	.sleb128 0
	.byte	0x6
	.byte	0x21
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0xa4b
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.byte	0x1
	.byte	0x52
	.long	0x54a
	.uleb128 0x20
	.long	0xa71
	.long	.LLST12
	.uleb128 0x20
	.long	0xa66
	.long	.LLST13
	.uleb128 0x20
	.long	0xa5b
	.long	.LLST14
	.uleb128 0x21
	.quad	.LVL26
	.long	0xad7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x9
	.byte	0xfe
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0xa24
	.quad	.LBB73
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x54
	.long	0x572
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x1e
	.long	0xa34
	.uleb128 0x1e
	.long	0xa3f
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0xa7d
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.byte	0x1
	.byte	0x55
	.long	0x5b6
	.uleb128 0x20
	.long	0xaa3
	.long	.LLST15
	.uleb128 0x20
	.long	0xa98
	.long	.LLST16
	.uleb128 0x20
	.long	0xa8d
	.long	.LLST17
	.uleb128 0x23
	.quad	.LVL31
	.long	0xae6
	.byte	0
	.uleb128 0x1f
	.long	0xa24
	.quad	.LBB78
	.quad	.LBE78-.LBB78
	.byte	0x1
	.byte	0x56
	.long	0x5ee
	.uleb128 0x24
	.quad	.LBB79
	.quad	.LBE79-.LBB79
	.uleb128 0x1e
	.long	0xa34
	.uleb128 0x1e
	.long	0xa3f
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0xaaf
	.quad	.LBB81
	.quad	.LBE81-.LBB81
	.byte	0x1
	.byte	0x57
	.long	0x633
	.uleb128 0x20
	.long	0xabf
	.long	.LLST18
	.uleb128 0x21
	.quad	.LVL33
	.long	0xacc
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0xa4b
	.quad	.LBB83
	.quad	.LBE83-.LBB83
	.byte	0x1
	.byte	0x58
	.long	0x685
	.uleb128 0x20
	.long	0xa71
	.long	.LLST19
	.uleb128 0x20
	.long	0xa66
	.long	.LLST20
	.uleb128 0x20
	.long	0xa5b
	.long	.LLST21
	.uleb128 0x21
	.quad	.LVL34
	.long	0xad7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0xa24
	.quad	.LBB85
	.quad	.LBE85-.LBB85
	.byte	0x1
	.byte	0x5a
	.long	0x6c5
	.uleb128 0x24
	.quad	.LBB86
	.quad	.LBE86-.LBB86
	.uleb128 0x25
	.long	0xa34
	.long	.LLST22
	.uleb128 0x25
	.long	0xa3f
	.long	.LLST23
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0xa24
	.quad	.LBB87
	.quad	.LBE87-.LBB87
	.byte	0x1
	.byte	0x5c
	.long	0x6fd
	.uleb128 0x24
	.quad	.LBB88
	.quad	.LBE88-.LBB88
	.uleb128 0x1e
	.long	0xa34
	.uleb128 0x1e
	.long	0xa3f
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0xaaf
	.quad	.LBB89
	.quad	.LBE89-.LBB89
	.byte	0x1
	.byte	0x5d
	.long	0x742
	.uleb128 0x20
	.long	0xabf
	.long	.LLST24
	.uleb128 0x21
	.quad	.LVL41
	.long	0xacc
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0xaaf
	.quad	.LBB91
	.quad	.LBE91-.LBB91
	.byte	0x1
	.byte	0x5f
	.long	0x782
	.uleb128 0x20
	.long	0xabf
	.long	.LLST25
	.uleb128 0x21
	.quad	.LVL42
	.long	0xb23
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0xaaf
	.quad	.LBB93
	.quad	.LBE93-.LBB93
	.byte	0x1
	.byte	0x48
	.long	0x7cd
	.uleb128 0x20
	.long	0xabf
	.long	.LLST26
	.uleb128 0x21
	.quad	.LVL45
	.long	0xacc
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0xa4b
	.quad	.LBB95
	.quad	.LBE95-.LBB95
	.byte	0x1
	.byte	0x4a
	.long	0x81f
	.uleb128 0x20
	.long	0xa71
	.long	.LLST27
	.uleb128 0x20
	.long	0xa66
	.long	.LLST28
	.uleb128 0x20
	.long	0xa5b
	.long	.LLST29
	.uleb128 0x21
	.quad	.LVL47
	.long	0xad7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0xaaf
	.quad	.LBB99
	.quad	.LBE99-.LBB99
	.byte	0x1
	.byte	0x4f
	.long	0x85f
	.uleb128 0x20
	.long	0xabf
	.long	.LLST30
	.uleb128 0x21
	.quad	.LVL51
	.long	0xb23
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LVL27
	.long	0x9ea
	.long	0x878
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0
	.uleb128 0x26
	.quad	.LVL35
	.long	0x9ea
	.long	0x891
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0
	.uleb128 0x23
	.quad	.LVL39
	.long	0x98e
	.uleb128 0x26
	.quad	.LVL46
	.long	0x9ea
	.long	0x8b7
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0
	.uleb128 0x23
	.quad	.LVL48
	.long	0xb40
	.uleb128 0x23
	.quad	.LVL49
	.long	0x941
	.byte	0
	.uleb128 0x1f
	.long	0xaaf
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.byte	0x1
	.byte	0x46
	.long	0x912
	.uleb128 0x20
	.long	0xabf
	.long	.LLST9
	.uleb128 0x21
	.quad	.LVL22
	.long	0xb23
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LVL19
	.long	0xb4b
	.long	0x92b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0
	.uleb128 0x21
	.quad	.LVL20
	.long	0xb4b
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF65
	.byte	0x1
	.byte	0x33
	.long	0x62
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x98e
	.uleb128 0x28
	.long	.LASF64
	.byte	0x1
	.byte	0x33
	.long	0x8d
	.long	.LLST5
	.uleb128 0x29
	.string	"src"
	.byte	0x1
	.byte	0x33
	.long	0x2b2
	.long	.LLST6
	.uleb128 0x29
	.string	"n"
	.byte	0x1
	.byte	0x33
	.long	0x2d
	.long	.LLST7
	.byte	0
	.uleb128 0x27
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.long	0x86
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x9ea
	.uleb128 0x28
	.long	.LASF64
	.byte	0x1
	.byte	0x29
	.long	0x86
	.long	.LLST1
	.uleb128 0x29
	.string	"src"
	.byte	0x1
	.byte	0x29
	.long	0x317
	.long	.LLST2
	.uleb128 0x29
	.string	"n"
	.byte	0x1
	.byte	0x29
	.long	0x2d
	.long	.LLST3
	.uleb128 0x1b
	.string	"tmp"
	.byte	0x1
	.byte	0x2a
	.long	0x8d
	.long	.LLST4
	.byte	0
	.uleb128 0x2a
	.long	.LASF68
	.byte	0x1
	.byte	0x1d
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xa24
	.uleb128 0x28
	.long	.LASF58
	.byte	0x1
	.byte	0x1d
	.long	0x62
	.long	.LLST0
	.uleb128 0x2b
	.long	.LASF69
	.byte	0x1
	.byte	0x1f
	.long	0x8d
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x2c
	.long	.LASF92
	.byte	0x1
	.byte	0x13
	.long	0x38
	.byte	0x3
	.long	0xa4b
	.uleb128 0x18
	.long	.LASF70
	.byte	0x1
	.byte	0x14
	.long	0x38
	.uleb128 0x18
	.long	.LASF71
	.byte	0x1
	.byte	0x14
	.long	0x38
	.byte	0
	.uleb128 0x2d
	.long	.LASF75
	.byte	0x3
	.byte	0x3b
	.long	0x86
	.byte	0x3
	.long	0xa7d
	.uleb128 0x2e
	.long	.LASF72
	.byte	0x3
	.byte	0x3b
	.long	0x86
	.uleb128 0x2e
	.long	.LASF73
	.byte	0x3
	.byte	0x3b
	.long	0x62
	.uleb128 0x2e
	.long	.LASF74
	.byte	0x3
	.byte	0x3b
	.long	0x2d
	.byte	0
	.uleb128 0x2d
	.long	.LASF76
	.byte	0x3
	.byte	0x1f
	.long	0x86
	.byte	0x3
	.long	0xaaf
	.uleb128 0x2e
	.long	.LASF72
	.byte	0x3
	.byte	0x1f
	.long	0x88
	.uleb128 0x2e
	.long	.LASF77
	.byte	0x3
	.byte	0x1f
	.long	0x31d
	.uleb128 0x2e
	.long	.LASF74
	.byte	0x3
	.byte	0x1f
	.long	0x2d
	.byte	0
	.uleb128 0x2d
	.long	.LASF78
	.byte	0x2
	.byte	0x66
	.long	0x62
	.byte	0x3
	.long	0xacc
	.uleb128 0x2e
	.long	.LASF79
	.byte	0x2
	.byte	0x66
	.long	0x2bd
	.uleb128 0x2f
	.byte	0
	.uleb128 0x30
	.long	.LASF84
	.long	.LASF84
	.byte	0x2
	.byte	0x57
	.uleb128 0x31
	.long	.LASF75
	.long	.LASF80
	.byte	0xa
	.byte	0
	.long	.LASF75
	.uleb128 0x31
	.long	.LASF76
	.long	.LASF81
	.byte	0xa
	.byte	0
	.long	.LASF76
	.uleb128 0x32
	.uleb128 0x2c
	.byte	0x9e
	.uleb128 0x2a
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0x3d
	.byte	0xa
	.byte	0
	.uleb128 0x31
	.long	.LASF82
	.long	.LASF83
	.byte	0xa
	.byte	0
	.long	.LASF82
	.uleb128 0x32
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
	.uleb128 0x30
	.long	.LASF85
	.long	.LASF85
	.byte	0x1
	.byte	0x1a
	.uleb128 0x33
	.long	.LASF86
	.long	.LASF86
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
	.uleb128 0x2117
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
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x2b
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
	.uleb128 0x2f
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.quad	.LVL18-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL23-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL49-.Ltext0
	.quad	.LVL51-1-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL22-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL23-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL42-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x1
	.byte	0x53
	.quad	.LVL44-.Ltext0
	.quad	.LVL52-.Ltext0
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL23-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL25-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x4
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL25-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL25-.Ltext0
	.quad	.LVL26-1-.Ltext0
	.value	0x9
	.byte	0x3
	.quad	dst
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL28-.Ltext0
	.quad	.LVL31-1-.Ltext0
	.value	0xe
	.byte	0x73
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.quad	size-8
	.byte	0x22
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL28-.Ltext0
	.quad	.LVL30-.Ltext0
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
	.quad	src
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.quad	.LVL30-.Ltext0
	.quad	.LVL31-1-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL28-.Ltext0
	.quad	.LVL29-.Ltext0
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
	.quad	.LVL29-.Ltext0
	.quad	.LVL31-1-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL32-.Ltext0
	.quad	.LVL33-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC4
	.byte	0x9f
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x4
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-1-.Ltext0
	.value	0x9
	.byte	0x3
	.quad	dst
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL36-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL36-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL40-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL41-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2805
	.sleb128 0
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL44-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL46-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0x4
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL46-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL46-.Ltext0
	.quad	.LVL47-1-.Ltext0
	.value	0x9
	.byte	0x3
	.quad	dst
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL50-.Ltext0
	.quad	.LVL52-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2866
	.sleb128 0
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL21-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2805
	.sleb128 0
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL13-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL15-.Ltext0
	.quad	.LFE55-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL13-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL16-.Ltext0
	.quad	.LFE55-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL13-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL14-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL17-.Ltext0
	.quad	.LFE55-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL5-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL8-.Ltext0
	.quad	.LFE54-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL5-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	.LVL8-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL5-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL8-.Ltext0
	.quad	.LVL10-.Ltext0
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
	.quad	.LVL10-.Ltext0
	.quad	.LVL11-.Ltext0
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
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
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
	.quad	.LVL6-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL8-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL2-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL4-.Ltext0
	.quad	.LFE53-.Ltext0
	.value	0x1
	.byte	0x55
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB63-.Ltext0
	.quad	.LBE63-.Ltext0
	.quad	.LBB98-.Ltext0
	.quad	.LBE98-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB66-.Ltext0
	.quad	.LBE66-.Ltext0
	.quad	.LBB97-.Ltext0
	.quad	.LBE97-.Ltext0
	.quad	0
	.quad	0
	.quad	.LBB73-.Ltext0
	.quad	.LBE73-.Ltext0
	.quad	.LBB80-.Ltext0
	.quad	.LBE80-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF78:
	.string	"printf"
.LASF8:
	.string	"__off_t"
.LASF12:
	.string	"_IO_read_ptr"
.LASF86:
	.string	"malloc"
.LASF24:
	.string	"_chain"
.LASF7:
	.string	"size_t"
.LASF59:
	.string	"src_offset"
.LASF30:
	.string	"_shortbuf"
.LASF73:
	.string	"__ch"
.LASF47:
	.string	"_IO_2_1_stderr_"
.LASF18:
	.string	"_IO_buf_base"
.LASF80:
	.string	"__builtin_memset"
.LASF87:
	.string	"GNU C11 7.5.0 -mmmx -mtune=generic -march=x86-64 -g -O -fno-asynchronous-unwind-tables -fstack-protector-strong"
.LASF68:
	.string	"InitSrcArea"
.LASF77:
	.string	"__src"
.LASF53:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF54:
	.string	"long long unsigned int"
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
.LASF84:
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
.LASF89:
	.string	"/home/landon/AssembleLangFinal/memcpy"
.LASF91:
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
.LASF88:
	.string	"main.c"
.LASF56:
	.string	"tz_minuteswest"
.LASF81:
	.string	"__builtin_memcpy"
.LASF31:
	.string	"_lock"
.LASF26:
	.string	"_flags2"
.LASF38:
	.string	"_mode"
.LASF83:
	.string	"__builtin_puts"
.LASF49:
	.string	"stdout"
.LASF45:
	.string	"_IO_2_1_stdin_"
.LASF82:
	.string	"puts"
.LASF71:
	.string	"tickh"
.LASF70:
	.string	"tickl"
.LASF17:
	.string	"_IO_write_end"
.LASF72:
	.string	"__dest"
.LASF85:
	.string	"mymemcpy"
.LASF69:
	.string	"psrc"
.LASF90:
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
.LASF74:
	.string	"__len"
.LASF29:
	.string	"_vtable_offset"
.LASF46:
	.string	"_IO_2_1_stdout_"
.LASF66:
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
.LASF76:
	.string	"memcpy"
.LASF22:
	.string	"_IO_save_end"
.LASF79:
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
.LASF75:
	.string	"memset"
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
