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
.LBB70:
.LBB71:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	movl	$1, %ebx
.LBE71:
.LBE70:
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
.LBB74:
.LBB72:
	.loc 2 104 0
	leaq	.LC0(%rip), %rdi
.LBE72:
.LBE74:
	.loc 1 69 0
	movq	%rax, dst(%rip)
.LVL22:
.LBB75:
.LBB73:
	.loc 2 104 0
	call	puts@PLT
.LVL23:
	.p2align 4,,10
	.p2align 3
.L33:
.LBE73:
.LBE75:
.LBB76:
	.loc 1 72 0
	movslq	(%r12), %r9
	movslq	0(%rbp), %r8
.LBB77:
.LBB78:
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
.LBE78:
.LBE77:
.LBB79:
.LBB80:
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
.LBE80:
.LBE79:
.LBB81:
.LBB82:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 3 71 0
	movq	dst(%rip), %rdi
	movl	$12582912, %edx
	movl	$-1, %esi
	call	memset@PLT
.LVL31:
.LBE82:
.LBE81:
.LBB83:
.LBB84:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtsc
# 0 "" 2
#NO_APP
.LBE84:
.LBE83:
	.loc 1 76 0
	movslq	0(%rbp), %rsi
	movslq	(%r12), %rdi
.LBB88:
.LBB85:
	.loc 1 21 0
	movq	%rdx, %r15
.LBE85:
.LBE88:
	.loc 1 76 0
	addq	src(%rip), %rsi
	addq	dst(%rip), %rdi
	movq	0(%r13,%r14), %rdx
.LBB89:
.LBB86:
	.loc 1 21 0
	movq	%rax, 8(%rsp)
.LBE86:
.LBE89:
	.loc 1 76 0
	call	mymemcpy@PLT
.LVL32:
.LBB90:
.LBB91:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtsc
# 0 "" 2
#NO_APP
.LBE91:
.LBE90:
	.loc 1 78 0
	movq	0(%r13,%r14), %r9
	movslq	0(%rbp), %rdi
	movslq	(%r12), %r8
	addq	src(%rip), %rdi
	addq	dst(%rip), %r8
.LVL33:
.LBB93:
.LBB94:
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
.LBE94:
.LBE93:
.LBB95:
.LBB87:
	.loc 1 22 0
	salq	$32, %r15
	orq	8(%rsp), %r15
.LBE87:
.LBE95:
.LBB96:
.LBB92:
	salq	$32, %rdx
	orq	%rax, %rdx
.LBE92:
.LBE96:
.LBB97:
.LBB98:
	.loc 2 104 0
	leaq	.LC5(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
.LBE98:
.LBE97:
	.loc 1 81 0
	subq	%r15, %rdx
.LBB100:
.LBB99:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL38:
.LBE99:
.LBE100:
.LBB101:
.LBB102:
	.loc 3 71 0
	movq	dst(%rip), %rdi
	movl	$12582912, %edx
	movl	$-2, %esi
	call	memset@PLT
.LVL39:
.LBE102:
.LBE101:
.LBB103:
.LBB104:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtsc
# 0 "" 2
#NO_APP
.LBE104:
.LBE103:
.LBB107:
.LBB108:
	.loc 1 31 0
	movq	src(%rip), %rcx
.LBE108:
.LBE107:
.LBB110:
.LBB105:
	.loc 1 21 0
	movq	%rax, 8(%rsp)
.LVL40:
	movq	%rdx, %r15
	leaq	12582912(%rcx), %rsi
.LBE105:
.LBE110:
.LBB111:
.LBB109:
	.loc 1 31 0
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
.LBE109:
.LBE111:
	.loc 1 86 0
	movslq	(%r12), %rdi
	movslq	0(%rbp), %rsi
	addq	dst(%rip), %rdi
.LVL45:
	addq	src(%rip), %rsi
.LVL46:
.LBB112:
.LBB113:
	.loc 3 34 0
	movq	0(%r13,%r14), %rdx
	call	memcpy@PLT
.LVL47:
.LBE113:
.LBE112:
.LBB114:
.LBB115:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtsc
# 0 "" 2
.LVL48:
#NO_APP
.LBE115:
.LBE114:
.LBB117:
.LBB106:
	.loc 1 22 0
	salq	$32, %r15
	orq	8(%rsp), %r15
.LBE106:
.LBE117:
.LBB118:
.LBB116:
	salq	$32, %rdx
	orq	%rax, %rdx
.LBE116:
.LBE118:
.LBB119:
.LBB120:
	.loc 2 104 0
	leaq	.LC2(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
.LBE120:
.LBE119:
	.loc 1 88 0
	subq	%r15, %rdx
.LBB122:
.LBB121:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL49:
.LBE121:
.LBE122:
.LBB123:
.LBB124:
	.loc 3 71 0
	movq	dst(%rip), %rdi
	movl	$-1, %esi
	movl	$12582912, %edx
	call	memset@PLT
.LVL50:
.LBE124:
.LBE123:
.LBB125:
.LBB126:
	.loc 1 31 0
	movq	src(%rip), %rcx
.LVL51:
	leaq	12582912(%rcx), %rsi
	movq	%rcx, %rax
.LVL52:
	.p2align 4,,10
	.p2align 3
.L30:
	.loc 1 33 0
	movl	%ecx, %edx
	subl	%eax, %edx
	.loc 1 35 0
	addq	$1, %rax
.LVL53:
	.loc 1 33 0
	movb	%dl, -1(%rax)
.LVL54:
	.loc 1 32 0
	cmpq	%rsi, %rax
	jne	.L30
.LVL55:
.LBE126:
.LBE125:
.LBB127:
.LBB128:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtsc
# 0 "" 2
.LVL56:
	.loc 1 22 0
#NO_APP
	salq	$32, %rdx
.LVL57:
.LBE128:
.LBE127:
	.loc 1 92 0
	movq	src(%rip), %rcx
	movq	0(%r13,%r14), %rsi
.LBB131:
.LBB129:
	.loc 1 22 0
	movq	%rdx, %rdi
.LBE129:
.LBE131:
	.loc 1 92 0
	movslq	0(%rbp), %rdx
.LBB132:
.LBB130:
	.loc 1 22 0
	orq	%rax, %rdi
.LVL58:
.LBE130:
.LBE132:
	.loc 1 92 0
	addq	%rdx, %rcx
	movslq	(%r12), %rdx
	addq	dst(%rip), %rdx
.LVL59:
.LBB133:
.LBB134:
	.loc 1 43 0
	testq	%rsi, %rsi
	je	.L31
	addq	%rdx, %rsi
.LVL60:
	.p2align 4,,10
	.p2align 3
.L32:
	.loc 1 44 0
	addq	$1, %rdx
.LVL61:
	movb	%cl, -1(%rdx)
	addq	$1, %rcx
.LVL62:
	.loc 1 43 0
	cmpq	%rdx, %rsi
	jne	.L32
.LVL63:
.L31:
.LBE134:
.LBE133:
.LBB135:
.LBB136:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtsc
# 0 "" 2
.LVL64:
	.loc 1 22 0
#NO_APP
	salq	$32, %rdx
.LBE136:
.LBE135:
.LBB138:
.LBB139:
	.loc 2 104 0
	leaq	.LC3(%rip), %rsi
.LBE139:
.LBE138:
.LBB142:
.LBB137:
	.loc 1 22 0
	orq	%rax, %rdx
.LBE137:
.LBE142:
.LBB143:
.LBB140:
	.loc 2 104 0
	xorl	%eax, %eax
.LBE140:
.LBE143:
	.loc 1 94 0
	subq	%rdi, %rdx
.LBB144:
.LBB141:
	.loc 2 104 0
	movl	$1, %edi
	call	__printf_chk@PLT
.LVL65:
.L34:
.LBE141:
.LBE144:
.LBB145:
.LBB146:
	.loc 2 104 0 is_stmt 0 discriminator 2
	leaq	.LC0(%rip), %rdi
	addq	$1, %rbx
.LVL66:
	addq	$4, %r12
	addq	$4, %rbp
	call	puts@PLT
.LVL67:
.LBE146:
.LBE145:
	.loc 1 71 0 is_stmt 1 discriminator 2
	cmpq	$16, %rbx
	jne	.L33
.LBE76:
	.loc 1 99 0
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
.LVL68:
.L26:
	.cfi_restore_state
.LBB149:
.LBB147:
.LBB148:
	.loc 2 104 0
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
.LVL69:
	jmp	.L34
.LBE148:
.LBE147:
.LBE149:
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
	.long	0xc01
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF85
	.byte	0xc
	.long	.LASF86
	.long	.LASF87
	.long	.Ldebug_ranges0+0x2a0
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
	.long	.LASF88
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
	.long	.LASF89
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
	.long	0x364
	.uleb128 0x9
	.byte	0x3
	.quad	src
	.uleb128 0x7
	.byte	0x8
	.long	0x36a
	.uleb128 0x15
	.uleb128 0x14
	.string	"dst"
	.byte	0x1
	.byte	0x8
	.long	0x364
	.uleb128 0x9
	.byte	0x3
	.quad	dst
	.uleb128 0xd
	.long	0x34
	.long	0x390
	.uleb128 0xe
	.long	0x34
	.byte	0xe
	.byte	0
	.uleb128 0x16
	.long	.LASF58
	.byte	0x1
	.byte	0xa
	.long	0x380
	.uleb128 0x9
	.byte	0x3
	.quad	size
	.uleb128 0xd
	.long	0x5e
	.long	0x3b5
	.uleb128 0xe
	.long	0x34
	.byte	0xe
	.byte	0
	.uleb128 0x16
	.long	.LASF59
	.byte	0x1
	.byte	0xd
	.long	0x3a5
	.uleb128 0x9
	.byte	0x3
	.quad	src_offset
	.uleb128 0x16
	.long	.LASF60
	.byte	0x1
	.byte	0xf
	.long	0x3a5
	.uleb128 0x9
	.byte	0x3
	.quad	dst_offset
	.uleb128 0x17
	.long	.LASF90
	.byte	0x1
	.byte	0x41
	.long	0x5e
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x9a0
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
	.long	0x935
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x47
	.long	0x5e
	.long	.LLST10
	.uleb128 0x1c
	.long	0xab9
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.byte	0x1
	.byte	0x48
	.long	0x486
	.uleb128 0x1d
	.long	0xac9
	.long	.LLST11
	.uleb128 0x1e
	.quad	.LVL25
	.long	0xb79
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
	.long	0xa0b
	.quad	.LBB79
	.quad	.LBE79-.LBB79
	.byte	0x1
	.byte	0x49
	.long	0x4c2
	.uleb128 0x1d
	.long	0xa17
	.long	.LLST12
	.uleb128 0x20
	.quad	.LBB80
	.quad	.LBE80-.LBB80
	.uleb128 0x21
	.long	0xafa
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0xa55
	.quad	.LBB81
	.quad	.LBE81-.LBB81
	.byte	0x1
	.byte	0x4a
	.long	0x514
	.uleb128 0x1d
	.long	0xa7b
	.long	.LLST13
	.uleb128 0x1d
	.long	0xa70
	.long	.LLST14
	.uleb128 0x1d
	.long	0xa65
	.long	.LLST15
	.uleb128 0x1e
	.quad	.LVL31
	.long	0xb84
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
	.long	0xa2e
	.quad	.LBB83
	.long	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x4b
	.long	0x53c
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x70
	.uleb128 0x21
	.long	0xa3e
	.uleb128 0x21
	.long	0xa49
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0xa2e
	.quad	.LBB90
	.long	.Ldebug_ranges0+0xc0
	.byte	0x1
	.byte	0x4d
	.long	0x564
	.uleb128 0x23
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x21
	.long	0xa3e
	.uleb128 0x21
	.long	0xa49
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x9a0
	.quad	.LBB93
	.quad	.LBE93-.LBB93
	.byte	0x1
	.byte	0x4e
	.long	0x59b
	.uleb128 0x1d
	.long	0x9c6
	.long	.LLST16
	.uleb128 0x1d
	.long	0x9bb
	.long	.LLST17
	.uleb128 0x1d
	.long	0x9b0
	.long	.LLST18
	.byte	0
	.uleb128 0x22
	.long	0xab9
	.quad	.LBB97
	.long	.Ldebug_ranges0+0xf0
	.byte	0x1
	.byte	0x51
	.long	0x5dc
	.uleb128 0x1d
	.long	0xac9
	.long	.LLST19
	.uleb128 0x1e
	.quad	.LVL38
	.long	0xb79
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
	.long	0xa55
	.quad	.LBB101
	.quad	.LBE101-.LBB101
	.byte	0x1
	.byte	0x52
	.long	0x62e
	.uleb128 0x1d
	.long	0xa7b
	.long	.LLST20
	.uleb128 0x1d
	.long	0xa70
	.long	.LLST21
	.uleb128 0x1d
	.long	0xa65
	.long	.LLST22
	.uleb128 0x1e
	.quad	.LVL39
	.long	0xb84
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
	.uleb128 0x22
	.long	0xa2e
	.quad	.LBB103
	.long	.Ldebug_ranges0+0x120
	.byte	0x1
	.byte	0x53
	.long	0x656
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x120
	.uleb128 0x21
	.long	0xa3e
	.uleb128 0x21
	.long	0xa49
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0xa0b
	.quad	.LBB107
	.long	.Ldebug_ranges0+0x160
	.byte	0x1
	.byte	0x54
	.long	0x682
	.uleb128 0x1d
	.long	0xa17
	.long	.LLST23
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x160
	.uleb128 0x21
	.long	0xafa
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0xa87
	.quad	.LBB112
	.quad	.LBE112-.LBB112
	.byte	0x1
	.byte	0x56
	.long	0x6c6
	.uleb128 0x1d
	.long	0xaad
	.long	.LLST24
	.uleb128 0x1d
	.long	0xaa2
	.long	.LLST25
	.uleb128 0x1d
	.long	0xa97
	.long	.LLST26
	.uleb128 0x24
	.quad	.LVL47
	.long	0xb93
	.byte	0
	.uleb128 0x22
	.long	0xa2e
	.quad	.LBB114
	.long	.Ldebug_ranges0+0x190
	.byte	0x1
	.byte	0x57
	.long	0x6ee
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x190
	.uleb128 0x21
	.long	0xa3e
	.uleb128 0x21
	.long	0xa49
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0xab9
	.quad	.LBB119
	.long	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.byte	0x58
	.long	0x72f
	.uleb128 0x1d
	.long	0xac9
	.long	.LLST27
	.uleb128 0x1e
	.quad	.LVL49
	.long	0xb79
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
	.long	0xa55
	.quad	.LBB123
	.quad	.LBE123-.LBB123
	.byte	0x1
	.byte	0x59
	.long	0x781
	.uleb128 0x1d
	.long	0xa7b
	.long	.LLST28
	.uleb128 0x1d
	.long	0xa70
	.long	.LLST29
	.uleb128 0x1d
	.long	0xa65
	.long	.LLST30
	.uleb128 0x1e
	.quad	.LVL50
	.long	0xb84
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
	.long	0xa0b
	.quad	.LBB125
	.quad	.LBE125-.LBB125
	.byte	0x1
	.byte	0x5a
	.long	0x7bd
	.uleb128 0x1d
	.long	0xa17
	.long	.LLST31
	.uleb128 0x20
	.quad	.LBB126
	.quad	.LBE126-.LBB126
	.uleb128 0x21
	.long	0xafa
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0xa2e
	.quad	.LBB127
	.long	.Ldebug_ranges0+0x1f0
	.byte	0x1
	.byte	0x5b
	.long	0x7ed
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x1f0
	.uleb128 0x25
	.long	0xa3e
	.long	.LLST32
	.uleb128 0x25
	.long	0xa49
	.long	.LLST33
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x9d0
	.quad	.LBB133
	.quad	.LBE133-.LBB133
	.byte	0x1
	.byte	0x5c
	.long	0x83b
	.uleb128 0x1d
	.long	0x9f6
	.long	.LLST34
	.uleb128 0x1d
	.long	0x9eb
	.long	.LLST35
	.uleb128 0x1d
	.long	0x9e0
	.long	.LLST36
	.uleb128 0x20
	.quad	.LBB134
	.quad	.LBE134-.LBB134
	.uleb128 0x21
	.long	0xb38
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0xa2e
	.quad	.LBB135
	.long	.Ldebug_ranges0+0x230
	.byte	0x1
	.byte	0x5d
	.long	0x863
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x230
	.uleb128 0x21
	.long	0xa3e
	.uleb128 0x21
	.long	0xa49
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0xab9
	.quad	.LBB138
	.long	.Ldebug_ranges0+0x260
	.byte	0x1
	.byte	0x5e
	.long	0x8a4
	.uleb128 0x1d
	.long	0xac9
	.long	.LLST37
	.uleb128 0x1e
	.quad	.LVL65
	.long	0xb79
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
	.long	0xab9
	.quad	.LBB145
	.quad	.LBE145-.LBB145
	.byte	0x1
	.byte	0x60
	.long	0x8e4
	.uleb128 0x1d
	.long	0xac9
	.long	.LLST38
	.uleb128 0x1e
	.quad	.LVL67
	.long	0xbd0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0xab9
	.quad	.LBB147
	.quad	.LBE147-.LBB147
	.byte	0x1
	.byte	0x4f
	.long	0x927
	.uleb128 0x26
	.long	0xac9
	.uleb128 0x6
	.byte	0xf2
	.long	.Ldebug_info0+3039
	.sleb128 0
	.uleb128 0x1e
	.quad	.LVL69
	.long	0xbd0
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.byte	0
	.uleb128 0x24
	.quad	.LVL32
	.long	0xbed
	.byte	0
	.uleb128 0x22
	.long	0xab9
	.quad	.LBB70
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x46
	.long	0x971
	.uleb128 0x1d
	.long	0xac9
	.long	.LLST9
	.uleb128 0x1e
	.quad	.LVL23
	.long	0xbd0
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
	.long	0xbf8
	.long	0x98a
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
	.long	0xbf8
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
	.long	0x9d0
	.uleb128 0x29
	.long	.LASF64
	.byte	0x1
	.byte	0x33
	.long	0x89
	.uleb128 0x2a
	.string	"src"
	.byte	0x1
	.byte	0x33
	.long	0x2ae
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
	.long	0xa0b
	.uleb128 0x29
	.long	.LASF64
	.byte	0x1
	.byte	0x29
	.long	0x82
	.uleb128 0x2a
	.string	"src"
	.byte	0x1
	.byte	0x29
	.long	0x313
	.uleb128 0x2a
	.string	"n"
	.byte	0x1
	.byte	0x29
	.long	0x29
	.uleb128 0x2b
	.string	"tmp"
	.byte	0x1
	.byte	0x2a
	.long	0x89
	.byte	0
	.uleb128 0x2c
	.long	.LASF91
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.long	0xa2e
	.uleb128 0x29
	.long	.LASF58
	.byte	0x1
	.byte	0x1d
	.long	0x5e
	.uleb128 0x18
	.long	.LASF67
	.byte	0x1
	.byte	0x1f
	.long	0x89
	.byte	0
	.uleb128 0x2d
	.long	.LASF92
	.byte	0x1
	.byte	0x13
	.long	0x34
	.byte	0x3
	.long	0xa55
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
	.long	0xa87
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
	.byte	0x3
	.byte	0x1f
	.long	0x82
	.byte	0x3
	.long	0xab9
	.uleb128 0x29
	.long	.LASF70
	.byte	0x3
	.byte	0x1f
	.long	0x84
	.uleb128 0x29
	.long	.LASF75
	.byte	0x3
	.byte	0x1f
	.long	0x319
	.uleb128 0x29
	.long	.LASF72
	.byte	0x3
	.byte	0x1f
	.long	0x29
	.byte	0
	.uleb128 0x2e
	.long	.LASF76
	.byte	0x2
	.byte	0x66
	.long	0x5e
	.byte	0x3
	.long	0xad6
	.uleb128 0x29
	.long	.LASF77
	.byte	0x2
	.byte	0x66
	.long	0x2b9
	.uleb128 0x2f
	.byte	0
	.uleb128 0x30
	.long	0xa0b
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xb02
	.uleb128 0x1d
	.long	0xa17
	.long	.LLST0
	.uleb128 0x31
	.long	0xa22
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x30
	.long	0x9d0
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0xb42
	.uleb128 0x1d
	.long	0x9e0
	.long	.LLST1
	.uleb128 0x1d
	.long	0x9eb
	.long	.LLST2
	.uleb128 0x1d
	.long	0x9f6
	.long	.LLST3
	.uleb128 0x25
	.long	0x9ff
	.long	.LLST4
	.byte	0
	.uleb128 0x30
	.long	0x9a0
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0xb79
	.uleb128 0x1d
	.long	0x9b0
	.long	.LLST5
	.uleb128 0x1d
	.long	0x9bb
	.long	.LLST6
	.uleb128 0x1d
	.long	0x9c6
	.long	.LLST7
	.byte	0
	.uleb128 0x32
	.long	.LASF82
	.long	.LASF82
	.byte	0x2
	.byte	0x57
	.uleb128 0x33
	.long	.LASF73
	.long	.LASF78
	.byte	0xa
	.byte	0
	.long	.LASF73
	.uleb128 0x33
	.long	.LASF74
	.long	.LASF79
	.byte	0xa
	.byte	0
	.long	.LASF74
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
	.long	.LASF80
	.long	.LASF81
	.byte	0xa
	.byte	0
	.long	.LASF80
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
	.long	.LASF83
	.long	.LASF83
	.byte	0x1
	.byte	0x1a
	.uleb128 0x35
	.long	.LASF84
	.long	.LASF84
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.quad	.LVL66
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL68
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
	.quad	.LVL40
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
	.quad	.LVL44
	.quad	.LVL47-1
	.value	0xc
	.byte	0x7e
	.sleb128 0
	.byte	0x3
	.quad	size-8
	.byte	0x22
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL44
	.quad	.LVL46
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
	.quad	.LVL46
	.quad	.LVL47-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL44
	.quad	.LVL45
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
	.quad	.LVL45
	.quad	.LVL47-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL48
	.quad	.LVL49
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL49
	.quad	.LVL50
	.value	0x4
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL49
	.quad	.LVL50
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL49
	.quad	.LVL50-1
	.value	0x9
	.byte	0x3
	.quad	dst
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL50
	.quad	.LVL52
	.value	0x4
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.quad	.LVL52
	.quad	.LVL53
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
.LLST32:
	.quad	.LVL56
	.quad	.LVL58
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL56
	.quad	.LVL57
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL59
	.quad	.LVL60
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL59
	.quad	.LVL60
	.value	0x1
	.byte	0x52
	.quad	.LVL60
	.quad	.LVL62
	.value	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.quad	.LVL62
	.quad	.LVL63
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL59
	.quad	.LVL60
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST37:
	.quad	.LVL64
	.quad	.LVL65
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LLST38:
	.quad	.LVL65
	.quad	.LVL67
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2978
	.sleb128 0
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL22
	.quad	.LVL23
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2978
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
	.quad	.LBB70
	.quad	.LBE70
	.quad	.LBB74
	.quad	.LBE74
	.quad	.LBB75
	.quad	.LBE75
	.quad	0
	.quad	0
	.quad	.LBB76
	.quad	.LBE76
	.quad	.LBB149
	.quad	.LBE149
	.quad	0
	.quad	0
	.quad	.LBB83
	.quad	.LBE83
	.quad	.LBB88
	.quad	.LBE88
	.quad	.LBB89
	.quad	.LBE89
	.quad	.LBB95
	.quad	.LBE95
	.quad	0
	.quad	0
	.quad	.LBB90
	.quad	.LBE90
	.quad	.LBB96
	.quad	.LBE96
	.quad	0
	.quad	0
	.quad	.LBB97
	.quad	.LBE97
	.quad	.LBB100
	.quad	.LBE100
	.quad	0
	.quad	0
	.quad	.LBB103
	.quad	.LBE103
	.quad	.LBB110
	.quad	.LBE110
	.quad	.LBB117
	.quad	.LBE117
	.quad	0
	.quad	0
	.quad	.LBB107
	.quad	.LBE107
	.quad	.LBB111
	.quad	.LBE111
	.quad	0
	.quad	0
	.quad	.LBB114
	.quad	.LBE114
	.quad	.LBB118
	.quad	.LBE118
	.quad	0
	.quad	0
	.quad	.LBB119
	.quad	.LBE119
	.quad	.LBB122
	.quad	.LBE122
	.quad	0
	.quad	0
	.quad	.LBB127
	.quad	.LBE127
	.quad	.LBB131
	.quad	.LBE131
	.quad	.LBB132
	.quad	.LBE132
	.quad	0
	.quad	0
	.quad	.LBB135
	.quad	.LBE135
	.quad	.LBB142
	.quad	.LBE142
	.quad	0
	.quad	0
	.quad	.LBB138
	.quad	.LBE138
	.quad	.LBB143
	.quad	.LBE143
	.quad	.LBB144
	.quad	.LBE144
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
.LASF76:
	.string	"printf"
.LASF8:
	.string	"__off_t"
.LASF12:
	.string	"_IO_read_ptr"
.LASF84:
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
.LASF78:
	.string	"__builtin_memset"
.LASF54:
	.string	"long long unsigned int"
.LASF91:
	.string	"InitSrcArea"
.LASF75:
	.string	"__src"
.LASF53:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF25:
	.string	"_fileno"
.LASF13:
	.string	"_IO_read_end"
.LASF85:
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
.LASF82:
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
.LASF87:
	.string	"/home/landon/AssembleLangFinal/memcpy"
.LASF89:
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
.LASF86:
	.string	"main.c"
.LASF56:
	.string	"tz_minuteswest"
.LASF79:
	.string	"__builtin_memcpy"
.LASF31:
	.string	"_lock"
.LASF26:
	.string	"_flags2"
.LASF38:
	.string	"_mode"
.LASF81:
	.string	"__builtin_puts"
.LASF49:
	.string	"stdout"
.LASF45:
	.string	"_IO_2_1_stdin_"
.LASF80:
	.string	"puts"
.LASF69:
	.string	"tickh"
.LASF68:
	.string	"tickl"
.LASF17:
	.string	"_IO_write_end"
.LASF70:
	.string	"__dest"
.LASF83:
	.string	"mymemcpy"
.LASF67:
	.string	"psrc"
.LASF88:
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
.LASF74:
	.string	"memcpy"
.LASF22:
	.string	"_IO_save_end"
.LASF77:
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
.LASF90:
	.string	"main"
.LASF15:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
