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
	.string	"========================================"
	.align 8
.LC1:
	.string	"Test %2d:\tsize = 0x%6lx\n\t0x%x -> 0x%x\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"glib2.0 memcpy durtime:\t%d\n"
.LC3:
	.string	"1-char copy durtime:\t%d\n"
.LC4:
	.string	"Failed. "
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"Passed. \n\nmymemcpy durtime:\t%d\n"
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
	leaq	-8+size(%rip), %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	dst_offset(%rip), %r12
	leaq	src_offset(%rip), %rbp
.LBB66:
.LBB67:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	movl	$1, %ebx
.LBE67:
.LBE66:
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
	.loc 1 69 0
	call	malloc@PLT
.LVL21:
.LBB70:
.LBB68:
	.loc 2 104 0
	leaq	.LC0(%rip), %rdi
.LBE68:
.LBE70:
	.loc 1 69 0
	movq	%rax, dst(%rip)
.LVL22:
.LBB71:
.LBB69:
	.loc 2 104 0
	call	puts@PLT
.LVL23:
	.p2align 4,,10
	.p2align 3
.L33:
.LBE69:
.LBE71:
.LBB72:
	.loc 1 72 0
	movslq	(%r12), %r9
	movslq	0(%rbp), %r8
.LBB73:
.LBB74:
	.loc 2 104 0
	leaq	.LC1(%rip), %rsi
	addq	dst(%rip), %r9
	addq	src(%rip), %r8
	movl	%ebx, %edx
	movq	0(%r13,%rbx,8), %rcx
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	0(,%rbx,8), %r14
.LVL24:
	call	__printf_chk@PLT
.LVL25:
.LBE74:
.LBE73:
.LBB75:
.LBB76:
	.loc 1 31 0
	movq	src(%rip), %rcx
.LVL26:
	leaq	12582912(%rcx), %rsi
	movq	%rcx, %rax
.LVL27:
	.p2align 4,,10
	.p2align 3
.L24:
	.loc 1 33 0
	movl	%ecx, %edx
	subl	%eax, %edx
	.loc 1 35 0
	addq	$1, %rax
.LVL28:
	.loc 1 33 0
	movb	%dl, -1(%rax)
.LVL29:
	.loc 1 32 0
	cmpq	%rsi, %rax
	jne	.L24
.LVL30:
.LBE76:
.LBE75:
.LBB77:
.LBB78:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 3 71 0
	movq	dst(%rip), %rdi
	movl	$12582912, %edx
	movl	$-1, %esi
	call	memset@PLT
.LVL31:
.LBE78:
.LBE77:
.LBB79:
.LBB80:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtsc
# 0 "" 2
#NO_APP
.LBE80:
.LBE79:
	.loc 1 76 0
	movslq	0(%rbp), %rsi
	movslq	(%r12), %rdi
.LBB84:
.LBB81:
	.loc 1 21 0
	movq	%rdx, %r15
.LBE81:
.LBE84:
	.loc 1 76 0
	addq	src(%rip), %rsi
	addq	dst(%rip), %rdi
	movq	0(%r13,%r14), %rdx
.LBB85:
.LBB82:
	.loc 1 21 0
	movq	%rax, 8(%rsp)
.LBE82:
.LBE85:
	.loc 1 76 0
	call	mymemcpy@PLT
.LVL32:
.LBB86:
.LBB87:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtsc
# 0 "" 2
#NO_APP
.LBE87:
.LBE86:
	.loc 1 78 0
	movq	0(%r13,%r14), %r9
	movslq	0(%rbp), %rdi
	movslq	(%r12), %r8
	addq	src(%rip), %rdi
	addq	dst(%rip), %r8
.LVL33:
.LBB89:
.LBB90:
	.loc 1 52 0
	testq	%r9, %r9
	je	.L25
	.loc 1 54 0
	movzbl	(%r8), %esi
	cmpb	%sil, (%rdi)
	jne	.L26
	movl	$1, %ecx
	jmp	.L27
.LVL34:
	.p2align 4,,10
	.p2align 3
.L28:
	movzbl	(%r8,%rcx), %esi
	addq	$1, %rcx
.LVL35:
	cmpb	-1(%rdi,%rcx), %sil
	jne	.L26
.LVL36:
.L27:
	.loc 1 52 0
	cmpq	%rcx, %r9
	jne	.L28
.LVL37:
.L25:
.LBE90:
.LBE89:
.LBB91:
.LBB83:
	.loc 1 22 0
	salq	$32, %r15
	orq	8(%rsp), %r15
.LBE83:
.LBE91:
.LBB92:
.LBB88:
	salq	$32, %rdx
	orq	%rax, %rdx
.LBE88:
.LBE92:
.LBB93:
.LBB94:
	.loc 2 104 0
	leaq	.LC5(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
.LBE94:
.LBE93:
	.loc 1 81 0
	subq	%r15, %rdx
.LBB96:
.LBB95:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL38:
.LBE95:
.LBE96:
.LBB97:
.LBB98:
	.loc 3 71 0
	movq	dst(%rip), %rdi
	movl	$-2, %esi
	movl	$12582912, %edx
	call	memset@PLT
.LVL39:
.LBE98:
.LBE97:
.LBB99:
.LBB100:
	.loc 1 31 0
	movq	src(%rip), %rcx
.LVL40:
	leaq	12582912(%rcx), %rsi
	movq	%rcx, %rax
.LVL41:
	.p2align 4,,10
	.p2align 3
.L29:
	.loc 1 33 0
	movl	%ecx, %edx
	subl	%eax, %edx
	.loc 1 35 0
	addq	$1, %rax
.LVL42:
	.loc 1 33 0
	movb	%dl, -1(%rax)
.LVL43:
	.loc 1 32 0
	cmpq	%rax, %rsi
	jne	.L29
.LVL44:
.LBE100:
.LBE99:
.LBB101:
.LBB102:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtsc
# 0 "" 2
.LVL45:
#NO_APP
.LBE102:
.LBE101:
	.loc 1 85 0
	movslq	0(%rbp), %rsi
	movslq	(%r12), %rdi
.LBB105:
.LBB103:
	.loc 1 22 0
	salq	$32, %rdx
.LVL46:
	orq	%rax, %rdx
.LBE103:
.LBE105:
	.loc 1 85 0
	addq	src(%rip), %rsi
	addq	dst(%rip), %rdi
.LBB106:
.LBB104:
	.loc 1 22 0
	movq	%rdx, %r15
.LVL47:
.LBE104:
.LBE106:
	.loc 1 85 0
	movq	0(%r13,%r14), %rdx
	call	mymemcpy@PLT
.LVL48:
.LBB107:
.LBB108:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtsc
# 0 "" 2
.LVL49:
	.loc 1 22 0
#NO_APP
	salq	$32, %rdx
.LBE108:
.LBE107:
.LBB110:
.LBB111:
	.loc 2 104 0
	leaq	.LC2(%rip), %rsi
	movl	$1, %edi
.LBE111:
.LBE110:
.LBB114:
.LBB109:
	.loc 1 22 0
	orq	%rax, %rdx
.LBE109:
.LBE114:
.LBB115:
.LBB112:
	.loc 2 104 0
	xorl	%eax, %eax
.LBE112:
.LBE115:
	.loc 1 87 0
	subq	%r15, %rdx
.LBB116:
.LBB113:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL50:
.LBE113:
.LBE116:
.LBB117:
.LBB118:
	.loc 3 71 0
	movq	dst(%rip), %rdi
	movl	$-1, %esi
	movl	$12582912, %edx
	call	memset@PLT
.LVL51:
.LBE118:
.LBE117:
.LBB119:
.LBB120:
	.loc 1 31 0
	movq	src(%rip), %rcx
.LVL52:
	leaq	12582912(%rcx), %rsi
	movq	%rcx, %rax
.LVL53:
	.p2align 4,,10
	.p2align 3
.L30:
	.loc 1 33 0
	movl	%ecx, %edx
	subl	%eax, %edx
	.loc 1 35 0
	addq	$1, %rax
.LVL54:
	.loc 1 33 0
	movb	%dl, -1(%rax)
.LVL55:
	.loc 1 32 0
	cmpq	%rsi, %rax
	jne	.L30
.LVL56:
.LBE120:
.LBE119:
.LBB121:
.LBB122:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtsc
# 0 "" 2
.LVL57:
	.loc 1 22 0
#NO_APP
	salq	$32, %rdx
.LVL58:
.LBE122:
.LBE121:
	.loc 1 91 0
	movq	src(%rip), %rcx
	movq	0(%r13,%r14), %rsi
.LBB125:
.LBB123:
	.loc 1 22 0
	movq	%rdx, %rdi
.LBE123:
.LBE125:
	.loc 1 91 0
	movslq	0(%rbp), %rdx
.LBB126:
.LBB124:
	.loc 1 22 0
	orq	%rax, %rdi
.LVL59:
.LBE124:
.LBE126:
	.loc 1 91 0
	addq	%rdx, %rcx
	movslq	(%r12), %rdx
	addq	dst(%rip), %rdx
.LVL60:
.LBB127:
.LBB128:
	.loc 1 43 0
	testq	%rsi, %rsi
	je	.L31
	addq	%rdx, %rsi
.LVL61:
	.p2align 4,,10
	.p2align 3
.L32:
	.loc 1 44 0
	addq	$1, %rdx
.LVL62:
	movb	%cl, -1(%rdx)
	addq	$1, %rcx
.LVL63:
	.loc 1 43 0
	cmpq	%rdx, %rsi
	jne	.L32
.LVL64:
.L31:
.LBE128:
.LBE127:
.LBB129:
.LBB130:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtsc
# 0 "" 2
.LVL65:
	.loc 1 22 0
#NO_APP
	salq	$32, %rdx
.LBE130:
.LBE129:
.LBB132:
.LBB133:
	.loc 2 104 0
	leaq	.LC3(%rip), %rsi
.LBE133:
.LBE132:
.LBB136:
.LBB131:
	.loc 1 22 0
	orq	%rax, %rdx
.LBE131:
.LBE136:
.LBB137:
.LBB134:
	.loc 2 104 0
	xorl	%eax, %eax
.LBE134:
.LBE137:
	.loc 1 93 0
	subq	%rdi, %rdx
.LBB138:
.LBB135:
	.loc 2 104 0
	movl	$1, %edi
	call	__printf_chk@PLT
.LVL66:
.L34:
.LBE135:
.LBE138:
.LBB139:
.LBB140:
	.loc 2 104 0 is_stmt 0 discriminator 2
	leaq	.LC0(%rip), %rdi
	addq	$1, %rbx
.LVL67:
	addq	$4, %r12
	addq	$4, %rbp
	call	puts@PLT
.LVL68:
.LBE140:
.LBE139:
	.loc 1 71 0 is_stmt 1 discriminator 2
	cmpq	$16, %rbx
	jne	.L33
.LBE72:
	.loc 1 98 0
	addq	$24, %rsp
	.cfi_remember_state
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
.LVL69:
.L26:
	.cfi_restore_state
.LBB143:
.LBB141:
.LBB142:
	.loc 2 104 0
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
.LVL70:
	jmp	.L34
.LBE142:
.LBE141:
.LBE143:
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
	.long	0xb97
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF82
	.byte	0xc
	.long	.LASF83
	.long	.LASF84
	.long	.Ldebug_ranges0+0x280
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
	.long	.LASF85
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
	.long	.LASF86
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
	.long	0x35a
	.uleb128 0x9
	.byte	0x3
	.quad	src
	.uleb128 0x6
	.byte	0x8
	.long	0x360
	.uleb128 0x15
	.uleb128 0x14
	.string	"dst"
	.byte	0x1
	.byte	0x8
	.long	0x35a
	.uleb128 0x9
	.byte	0x3
	.quad	dst
	.uleb128 0xc
	.long	0x34
	.long	0x386
	.uleb128 0xd
	.long	0x34
	.byte	0xe
	.byte	0
	.uleb128 0x16
	.long	.LASF58
	.byte	0x1
	.byte	0xa
	.long	0x376
	.uleb128 0x9
	.byte	0x3
	.quad	size
	.uleb128 0xc
	.long	0x5e
	.long	0x3ab
	.uleb128 0xd
	.long	0x34
	.byte	0xe
	.byte	0
	.uleb128 0x16
	.long	.LASF59
	.byte	0x1
	.byte	0xd
	.long	0x39b
	.uleb128 0x9
	.byte	0x3
	.quad	src_offset
	.uleb128 0x16
	.long	.LASF60
	.byte	0x1
	.byte	0xf
	.long	0x39b
	.uleb128 0x9
	.byte	0x3
	.quad	dst_offset
	.uleb128 0x17
	.long	.LASF87
	.byte	0x1
	.byte	0x41
	.long	0x5e
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x977
	.uleb128 0x18
	.long	.LASF61
	.byte	0x1
	.byte	0x42
	.long	0x34
	.uleb128 0x18
	.long	.LASF62
	.byte	0x1
	.byte	0x42
	.long	0x34
	.uleb128 0x19
	.long	.LASF63
	.byte	0x1
	.byte	0x43
	.long	0x5e
	.long	.LLST8
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x40
	.long	0x90c
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x47
	.long	0x5e
	.long	.LLST10
	.uleb128 0x1c
	.long	0xa5e
	.quad	.LBB73
	.quad	.LBE73-.LBB73
	.byte	0x1
	.byte	0x48
	.long	0x47c
	.uleb128 0x1d
	.long	0xa6e
	.long	.LLST11
	.uleb128 0x1e
	.quad	.LVL25
	.long	0xb1e
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
	.quad	.LC1
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x9e2
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.byte	0x1
	.byte	0x49
	.long	0x4b8
	.uleb128 0x1d
	.long	0x9ee
	.long	.LLST12
	.uleb128 0x20
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.uleb128 0x21
	.long	0xa9f
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0xa2c
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.byte	0x1
	.byte	0x4a
	.long	0x50a
	.uleb128 0x1d
	.long	0xa52
	.long	.LLST13
	.uleb128 0x1d
	.long	0xa47
	.long	.LLST14
	.uleb128 0x1d
	.long	0xa3c
	.long	.LLST15
	.uleb128 0x1e
	.quad	.LVL31
	.long	0xb29
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0xa05
	.quad	.LBB79
	.long	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x4b
	.long	0x532
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x70
	.uleb128 0x21
	.long	0xa15
	.uleb128 0x21
	.long	0xa20
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0xa05
	.quad	.LBB86
	.long	.Ldebug_ranges0+0xc0
	.byte	0x1
	.byte	0x4d
	.long	0x55a
	.uleb128 0x23
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x21
	.long	0xa15
	.uleb128 0x21
	.long	0xa20
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x977
	.quad	.LBB89
	.quad	.LBE89-.LBB89
	.byte	0x1
	.byte	0x4e
	.long	0x591
	.uleb128 0x1d
	.long	0x99d
	.long	.LLST16
	.uleb128 0x1d
	.long	0x992
	.long	.LLST17
	.uleb128 0x1d
	.long	0x987
	.long	.LLST18
	.byte	0
	.uleb128 0x22
	.long	0xa5e
	.quad	.LBB93
	.long	.Ldebug_ranges0+0xf0
	.byte	0x1
	.byte	0x51
	.long	0x5d2
	.uleb128 0x1d
	.long	0xa6e
	.long	.LLST19
	.uleb128 0x1e
	.quad	.LVL38
	.long	0xb1e
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
	.uleb128 0x1c
	.long	0xa2c
	.quad	.LBB97
	.quad	.LBE97-.LBB97
	.byte	0x1
	.byte	0x52
	.long	0x624
	.uleb128 0x1d
	.long	0xa52
	.long	.LLST20
	.uleb128 0x1d
	.long	0xa47
	.long	.LLST21
	.uleb128 0x1d
	.long	0xa3c
	.long	.LLST22
	.uleb128 0x1e
	.quad	.LVL39
	.long	0xb29
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x9
	.byte	0xfe
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x9e2
	.quad	.LBB99
	.quad	.LBE99-.LBB99
	.byte	0x1
	.byte	0x53
	.long	0x660
	.uleb128 0x1d
	.long	0x9ee
	.long	.LLST23
	.uleb128 0x20
	.quad	.LBB100
	.quad	.LBE100-.LBB100
	.uleb128 0x21
	.long	0xa9f
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0xa05
	.quad	.LBB101
	.long	.Ldebug_ranges0+0x120
	.byte	0x1
	.byte	0x54
	.long	0x690
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x120
	.uleb128 0x24
	.long	0xa15
	.long	.LLST24
	.uleb128 0x24
	.long	0xa20
	.long	.LLST25
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0xa05
	.quad	.LBB107
	.long	.Ldebug_ranges0+0x160
	.byte	0x1
	.byte	0x56
	.long	0x6b8
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x160
	.uleb128 0x21
	.long	0xa15
	.uleb128 0x21
	.long	0xa20
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0xa5e
	.quad	.LBB110
	.long	.Ldebug_ranges0+0x190
	.byte	0x1
	.byte	0x57
	.long	0x6f9
	.uleb128 0x1d
	.long	0xa6e
	.long	.LLST26
	.uleb128 0x1e
	.quad	.LVL50
	.long	0xb1e
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
	.uleb128 0x1c
	.long	0xa2c
	.quad	.LBB117
	.quad	.LBE117-.LBB117
	.byte	0x1
	.byte	0x58
	.long	0x74b
	.uleb128 0x1d
	.long	0xa52
	.long	.LLST27
	.uleb128 0x1d
	.long	0xa47
	.long	.LLST28
	.uleb128 0x1d
	.long	0xa3c
	.long	.LLST29
	.uleb128 0x1e
	.quad	.LVL51
	.long	0xb29
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x9e2
	.quad	.LBB119
	.quad	.LBE119-.LBB119
	.byte	0x1
	.byte	0x59
	.long	0x787
	.uleb128 0x1d
	.long	0x9ee
	.long	.LLST30
	.uleb128 0x20
	.quad	.LBB120
	.quad	.LBE120-.LBB120
	.uleb128 0x21
	.long	0xa9f
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0xa05
	.quad	.LBB121
	.long	.Ldebug_ranges0+0x1d0
	.byte	0x1
	.byte	0x5a
	.long	0x7b7
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x1d0
	.uleb128 0x24
	.long	0xa15
	.long	.LLST31
	.uleb128 0x24
	.long	0xa20
	.long	.LLST32
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x9a7
	.quad	.LBB127
	.quad	.LBE127-.LBB127
	.byte	0x1
	.byte	0x5b
	.long	0x805
	.uleb128 0x1d
	.long	0x9cd
	.long	.LLST33
	.uleb128 0x1d
	.long	0x9c2
	.long	.LLST34
	.uleb128 0x1d
	.long	0x9b7
	.long	.LLST35
	.uleb128 0x20
	.quad	.LBB128
	.quad	.LBE128-.LBB128
	.uleb128 0x21
	.long	0xadd
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0xa05
	.quad	.LBB129
	.long	.Ldebug_ranges0+0x210
	.byte	0x1
	.byte	0x5c
	.long	0x82d
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x210
	.uleb128 0x21
	.long	0xa15
	.uleb128 0x21
	.long	0xa20
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0xa5e
	.quad	.LBB132
	.long	.Ldebug_ranges0+0x240
	.byte	0x1
	.byte	0x5d
	.long	0x86e
	.uleb128 0x1d
	.long	0xa6e
	.long	.LLST36
	.uleb128 0x1e
	.quad	.LVL66
	.long	0xb1e
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
	.uleb128 0x1c
	.long	0xa5e
	.quad	.LBB139
	.quad	.LBE139-.LBB139
	.byte	0x1
	.byte	0x5f
	.long	0x8ae
	.uleb128 0x1d
	.long	0xa6e
	.long	.LLST37
	.uleb128 0x1e
	.quad	.LVL68
	.long	0xb66
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0xa5e
	.quad	.LBB141
	.quad	.LBE141-.LBB141
	.byte	0x1
	.byte	0x4f
	.long	0x8f1
	.uleb128 0x25
	.long	0xa6e
	.uleb128 0x6
	.byte	0xf2
	.long	.Ldebug_info0+2933
	.sleb128 0
	.uleb128 0x1e
	.quad	.LVL70
	.long	0xb66
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LVL32
	.long	0xb83
	.uleb128 0x26
	.quad	.LVL48
	.long	0xb83
	.byte	0
	.uleb128 0x22
	.long	0xa5e
	.quad	.LBB66
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x46
	.long	0x948
	.uleb128 0x1d
	.long	0xa6e
	.long	.LLST9
	.uleb128 0x1e
	.quad	.LVL23
	.long	0xb66
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.byte	0
	.uleb128 0x27
	.quad	.LVL20
	.long	0xb8e
	.long	0x961
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0
	.uleb128 0x1e
	.quad	.LVL21
	.long	0xb8e
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF65
	.byte	0x1
	.byte	0x33
	.long	0x5e
	.byte	0x1
	.long	0x9a7
	.uleb128 0x29
	.long	.LASF64
	.byte	0x1
	.byte	0x33
	.long	0x84
	.uleb128 0x2a
	.string	"src"
	.byte	0x1
	.byte	0x33
	.long	0x2a9
	.uleb128 0x2a
	.string	"n"
	.byte	0x1
	.byte	0x33
	.long	0x29
	.byte	0
	.uleb128 0x28
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.long	0x82
	.byte	0x1
	.long	0x9e2
	.uleb128 0x29
	.long	.LASF64
	.byte	0x1
	.byte	0x29
	.long	0x82
	.uleb128 0x2a
	.string	"src"
	.byte	0x1
	.byte	0x29
	.long	0x30e
	.uleb128 0x2a
	.string	"n"
	.byte	0x1
	.byte	0x29
	.long	0x29
	.uleb128 0x2b
	.string	"tmp"
	.byte	0x1
	.byte	0x2a
	.long	0x84
	.byte	0
	.uleb128 0x2c
	.long	.LASF88
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.long	0xa05
	.uleb128 0x29
	.long	.LASF58
	.byte	0x1
	.byte	0x1d
	.long	0x5e
	.uleb128 0x18
	.long	.LASF67
	.byte	0x1
	.byte	0x1f
	.long	0x84
	.byte	0
	.uleb128 0x2d
	.long	.LASF89
	.byte	0x1
	.byte	0x13
	.long	0x34
	.byte	0x3
	.long	0xa2c
	.uleb128 0x18
	.long	.LASF68
	.byte	0x1
	.byte	0x14
	.long	0x34
	.uleb128 0x18
	.long	.LASF69
	.byte	0x1
	.byte	0x14
	.long	0x34
	.byte	0
	.uleb128 0x2e
	.long	.LASF73
	.byte	0x3
	.byte	0x3b
	.long	0x82
	.byte	0x3
	.long	0xa5e
	.uleb128 0x29
	.long	.LASF70
	.byte	0x3
	.byte	0x3b
	.long	0x82
	.uleb128 0x29
	.long	.LASF71
	.byte	0x3
	.byte	0x3b
	.long	0x5e
	.uleb128 0x29
	.long	.LASF72
	.byte	0x3
	.byte	0x3b
	.long	0x29
	.byte	0
	.uleb128 0x2e
	.long	.LASF74
	.byte	0x2
	.byte	0x66
	.long	0x5e
	.byte	0x3
	.long	0xa7b
	.uleb128 0x29
	.long	.LASF75
	.byte	0x2
	.byte	0x66
	.long	0x2b4
	.uleb128 0x2f
	.byte	0
	.uleb128 0x30
	.long	0x9e2
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xaa7
	.uleb128 0x1d
	.long	0x9ee
	.long	.LLST0
	.uleb128 0x31
	.long	0x9f9
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.long	0x9a7
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0xae7
	.uleb128 0x1d
	.long	0x9b7
	.long	.LLST1
	.uleb128 0x1d
	.long	0x9c2
	.long	.LLST2
	.uleb128 0x1d
	.long	0x9cd
	.long	.LLST3
	.uleb128 0x24
	.long	0x9d6
	.long	.LLST4
	.byte	0
	.uleb128 0x30
	.long	0x977
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0xb1e
	.uleb128 0x1d
	.long	0x987
	.long	.LLST5
	.uleb128 0x1d
	.long	0x992
	.long	.LLST6
	.uleb128 0x1d
	.long	0x99d
	.long	.LLST7
	.byte	0
	.uleb128 0x32
	.long	.LASF79
	.long	.LASF79
	.byte	0x2
	.byte	0x57
	.uleb128 0x33
	.long	.LASF73
	.long	.LASF77
	.byte	0xa
	.byte	0
	.long	.LASF73
	.uleb128 0x34
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
	.uleb128 0x33
	.long	.LASF76
	.long	.LASF78
	.byte	0xa
	.byte	0
	.long	.LASF76
	.uleb128 0x34
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
	.long	.LASF80
	.long	.LASF80
	.byte	0x1
	.byte	0x1a
	.uleb128 0x35
	.long	.LASF81
	.long	.LASF81
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
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x34
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.quad	.LVL23
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL23
	.quad	.LVL67
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL69
	.quad	.LFE56
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL24
	.quad	.LVL25
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL25
	.quad	.LVL27
	.value	0x4
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.quad	.LVL27
	.quad	.LVL28
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
.LLST13:
	.quad	.LVL30
	.quad	.LVL31
	.value	0x4
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL30
	.quad	.LVL31
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL30
	.quad	.LVL31-1
	.value	0x9
	.byte	0x3
	.quad	dst
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL33
	.quad	.LVL34
	.value	0x1
	.byte	0x59
	.quad	.LVL34
	.quad	.LVL35
	.value	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL35
	.quad	.LVL36
	.value	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL36
	.quad	.LVL37
	.value	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL33
	.quad	.LVL34
	.value	0x1
	.byte	0x55
	.quad	.LVL34
	.quad	.LVL35
	.value	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL35
	.quad	.LVL36
	.value	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL36
	.quad	.LVL37
	.value	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL33
	.quad	.LVL34
	.value	0x1
	.byte	0x58
	.quad	.LVL34
	.quad	.LVL35
	.value	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL35
	.quad	.LVL36
	.value	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL36
	.quad	.LVL37
	.value	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL37
	.quad	.LVL38
	.value	0xa
	.byte	0x3
	.quad	.LC5
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL38
	.quad	.LVL39
	.value	0x4
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL38
	.quad	.LVL39
	.value	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL38
	.quad	.LVL39-1
	.value	0x9
	.byte	0x3
	.quad	dst
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL39
	.quad	.LVL41
	.value	0x4
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.quad	.LVL41
	.quad	.LVL42
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
.LLST24:
	.quad	.LVL45
	.quad	.LVL47
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL45
	.quad	.LVL46
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL49
	.quad	.LVL50
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL50
	.quad	.LVL51
	.value	0x4
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL50
	.quad	.LVL51
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL50
	.quad	.LVL51-1
	.value	0x9
	.byte	0x3
	.quad	dst
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL51
	.quad	.LVL53
	.value	0x4
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.quad	.LVL53
	.quad	.LVL54
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
.LLST31:
	.quad	.LVL57
	.quad	.LVL59
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL57
	.quad	.LVL58
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL60
	.quad	.LVL61
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL60
	.quad	.LVL61
	.value	0x1
	.byte	0x52
	.quad	.LVL61
	.quad	.LVL63
	.value	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.quad	.LVL63
	.quad	.LVL64
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL60
	.quad	.LVL61
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL65
	.quad	.LVL66
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LLST37:
	.quad	.LVL66
	.quad	.LVL68
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2872
	.sleb128 0
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL22
	.quad	.LVL23
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2872
	.sleb128 0
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
	.quad	.LBB66
	.quad	.LBE66
	.quad	.LBB70
	.quad	.LBE70
	.quad	.LBB71
	.quad	.LBE71
	.quad	0
	.quad	0
	.quad	.LBB72
	.quad	.LBE72
	.quad	.LBB143
	.quad	.LBE143
	.quad	0
	.quad	0
	.quad	.LBB79
	.quad	.LBE79
	.quad	.LBB84
	.quad	.LBE84
	.quad	.LBB85
	.quad	.LBE85
	.quad	.LBB91
	.quad	.LBE91
	.quad	0
	.quad	0
	.quad	.LBB86
	.quad	.LBE86
	.quad	.LBB92
	.quad	.LBE92
	.quad	0
	.quad	0
	.quad	.LBB93
	.quad	.LBE93
	.quad	.LBB96
	.quad	.LBE96
	.quad	0
	.quad	0
	.quad	.LBB101
	.quad	.LBE101
	.quad	.LBB105
	.quad	.LBE105
	.quad	.LBB106
	.quad	.LBE106
	.quad	0
	.quad	0
	.quad	.LBB107
	.quad	.LBE107
	.quad	.LBB114
	.quad	.LBE114
	.quad	0
	.quad	0
	.quad	.LBB110
	.quad	.LBE110
	.quad	.LBB115
	.quad	.LBE115
	.quad	.LBB116
	.quad	.LBE116
	.quad	0
	.quad	0
	.quad	.LBB121
	.quad	.LBE121
	.quad	.LBB125
	.quad	.LBE125
	.quad	.LBB126
	.quad	.LBE126
	.quad	0
	.quad	0
	.quad	.LBB129
	.quad	.LBE129
	.quad	.LBB136
	.quad	.LBE136
	.quad	0
	.quad	0
	.quad	.LBB132
	.quad	.LBE132
	.quad	.LBB137
	.quad	.LBE137
	.quad	.LBB138
	.quad	.LBE138
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
.LASF81:
	.string	"malloc"
.LASF24:
	.string	"_chain"
.LASF7:
	.string	"size_t"
.LASF59:
	.string	"src_offset"
.LASF30:
	.string	"_shortbuf"
.LASF71:
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
.LASF82:
	.string	"GNU C11 7.5.0 -mmmx -mtune=generic -march=x86-64 -g -O2 -fno-asynchronous-unwind-tables -fstack-protector-strong"
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
.LASF79:
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
.LASF84:
	.string	"/home/landon/AssembleLangFinal/memcpy"
.LASF86:
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
.LASF83:
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
.LASF69:
	.string	"tickh"
.LASF68:
	.string	"tickl"
.LASF17:
	.string	"_IO_write_end"
.LASF70:
	.string	"__dest"
.LASF80:
	.string	"mymemcpy"
.LASF67:
	.string	"psrc"
.LASF85:
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
.LASF72:
	.string	"__len"
.LASF29:
	.string	"_vtable_offset"
.LASF46:
	.string	"_IO_2_1_stdout_"
.LASF66:
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
.LASF73:
	.string	"memset"
.LASF60:
	.string	"dst_offset"
.LASF57:
	.string	"tz_dsttime"
.LASF21:
	.string	"_IO_backup_base"
.LASF63:
	.string	"pass"
.LASF87:
	.string	"main"
.LASF15:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
