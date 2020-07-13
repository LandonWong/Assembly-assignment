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
	movq	%rax, %rcx
	leal	-1(%rdi), %edx
	movl	$16, %r9d
	negq	%rcx
	andl	$15, %ecx
	movl	%edx, %esi
	leal	15(%rcx), %r8d
	cmpl	$16, %r8d
	cmovb	%r9d, %r8d
	cmpl	%r8d, %edx
	jb	.L8
	testl	%ecx, %ecx
	je	.L9
	cmpl	$1, %ecx
	.loc 1 33 0
	movb	%dil, (%rax)
.LVL2:
	.loc 1 35 0
	leaq	1(%rax), %r8
.LVL3:
	je	.L4
	cmpl	$2, %ecx
	.loc 1 33 0
	movb	%dl, 1(%rax)
	.loc 1 34 0
	leal	-2(%rdi), %esi
.LVL4:
	.loc 1 35 0
	leaq	2(%rax), %r8
.LVL5:
	je	.L4
	cmpl	$3, %ecx
	.loc 1 33 0
	movb	%sil, 2(%rax)
	.loc 1 35 0
	leaq	3(%rax), %r8
.LVL6:
	.loc 1 34 0
	leal	-3(%rdi), %esi
.LVL7:
	je	.L4
	cmpl	$4, %ecx
	.loc 1 33 0
	movb	%sil, 3(%rax)
	.loc 1 35 0
	leaq	4(%rax), %r8
.LVL8:
	.loc 1 34 0
	leal	-4(%rdi), %esi
.LVL9:
	je	.L4
	cmpl	$5, %ecx
	.loc 1 33 0
	movb	%sil, 4(%rax)
	.loc 1 35 0
	leaq	5(%rax), %r8
.LVL10:
	.loc 1 34 0
	leal	-5(%rdi), %esi
.LVL11:
	je	.L4
	cmpl	$6, %ecx
	.loc 1 33 0
	movb	%sil, 5(%rax)
	.loc 1 35 0
	leaq	6(%rax), %r8
.LVL12:
	.loc 1 34 0
	leal	-6(%rdi), %esi
.LVL13:
	je	.L4
	cmpl	$7, %ecx
	.loc 1 33 0
	movb	%sil, 6(%rax)
	.loc 1 35 0
	leaq	7(%rax), %r8
.LVL14:
	.loc 1 34 0
	leal	-7(%rdi), %esi
.LVL15:
	je	.L4
	cmpl	$8, %ecx
	.loc 1 33 0
	movb	%sil, 7(%rax)
	.loc 1 35 0
	leaq	8(%rax), %r8
.LVL16:
	.loc 1 34 0
	leal	-8(%rdi), %esi
.LVL17:
	je	.L4
	cmpl	$9, %ecx
	.loc 1 33 0
	movb	%sil, 8(%rax)
	.loc 1 35 0
	leaq	9(%rax), %r8
.LVL18:
	.loc 1 34 0
	leal	-9(%rdi), %esi
.LVL19:
	je	.L4
	cmpl	$10, %ecx
	.loc 1 33 0
	movb	%sil, 9(%rax)
	.loc 1 35 0
	leaq	10(%rax), %r8
.LVL20:
	.loc 1 34 0
	leal	-10(%rdi), %esi
.LVL21:
	je	.L4
	cmpl	$11, %ecx
	.loc 1 33 0
	movb	%sil, 10(%rax)
	.loc 1 35 0
	leaq	11(%rax), %r8
.LVL22:
	.loc 1 34 0
	leal	-11(%rdi), %esi
.LVL23:
	je	.L4
	cmpl	$12, %ecx
	.loc 1 33 0
	movb	%sil, 11(%rax)
	.loc 1 35 0
	leaq	12(%rax), %r8
.LVL24:
	.loc 1 34 0
	leal	-12(%rdi), %esi
.LVL25:
	je	.L4
	cmpl	$13, %ecx
	.loc 1 33 0
	movb	%sil, 12(%rax)
	.loc 1 35 0
	leaq	13(%rax), %r8
.LVL26:
	.loc 1 34 0
	leal	-13(%rdi), %esi
.LVL27:
	je	.L4
	cmpl	$15, %ecx
	.loc 1 33 0
	movb	%sil, 13(%rax)
	.loc 1 35 0
	leaq	14(%rax), %r8
.LVL28:
	.loc 1 34 0
	leal	-14(%rdi), %esi
.LVL29:
	jne	.L4
	.loc 1 33 0
	movb	%sil, 14(%rax)
	.loc 1 35 0
	leaq	15(%rax), %r8
.LVL30:
	.loc 1 34 0
	leal	-15(%rdi), %esi
.LVL31:
	.p2align 4,,10
	.p2align 3
.L4:
	movl	%esi, -12(%rsp)
	subl	%ecx, %edi
	addq	%rcx, %rax
	movd	-12(%rsp), %xmm6
	movl	%edi, %r9d
	.loc 1 32 0
	xorl	%edx, %edx
	movdqa	.LC1(%rip), %xmm9
	shrl	$4, %edi
	pshufd	$0, %xmm6, %xmm2
	movdqa	.LC2(%rip), %xmm8
	movdqa	.LC3(%rip), %xmm7
	paddd	.LC0(%rip), %xmm2
	movdqa	.LC4(%rip), %xmm6
	movdqa	.LC5(%rip), %xmm5
.LVL32:
	.p2align 4,,10
	.p2align 3
.L6:
	.loc 1 33 0
	movdqa	%xmm2, %xmm1
	movdqa	%xmm2, %xmm3
	movdqa	%xmm2, %xmm0
	addl	$1, %edx
	paddd	%xmm8, %xmm1
	punpcklwd	%xmm1, %xmm3
	addq	$16, %rax
	punpckhwd	%xmm1, %xmm0
	movdqa	%xmm2, %xmm4
	movdqa	%xmm3, %xmm1
	punpckhwd	%xmm0, %xmm3
	paddd	%xmm6, %xmm4
	punpcklwd	%xmm0, %xmm1
	movdqa	%xmm2, %xmm0
	paddd	%xmm9, %xmm2
	paddd	%xmm7, %xmm0
	punpcklwd	%xmm3, %xmm1
	movdqa	%xmm0, %xmm3
	punpcklwd	%xmm4, %xmm0
	punpckhwd	%xmm4, %xmm3
	movdqa	%xmm0, %xmm4
	pand	%xmm5, %xmm1
	punpckhwd	%xmm3, %xmm4
	punpcklwd	%xmm3, %xmm0
	punpcklwd	%xmm4, %xmm0
	pand	%xmm5, %xmm0
	packuswb	%xmm0, %xmm1
	movaps	%xmm1, -16(%rax)
	cmpl	%edx, %edi
	ja	.L6
	movl	%r9d, %edx
	andl	$-16, %edx
	movl	%edx, %eax
	subl	%edx, %esi
	addq	%r8, %rax
	cmpl	%edx, %r9d
	movl	%esi, %edi
	je	.L1
	leal	-1(%rsi), %edx
.LVL33:
	movb	%dil, (%rax)
	.loc 1 35 0
	addq	$1, %rax
.LVL34:
	.loc 1 32 0
	testl	%edx, %edx
	.loc 1 34 0
	movl	%edx, %edi
.LVL35:
	.loc 1 32 0
	je	.L1
	.p2align 4,,10
	.p2align 3
.L55:
	subl	$1, %edx
.LVL36:
.L8:
	.loc 1 33 0
	movb	%dil, (%rax)
	.loc 1 35 0
	addq	$1, %rax
.LVL37:
	.loc 1 32 0
	testl	%edx, %edx
	.loc 1 34 0
	movl	%edx, %edi
.LVL38:
	.loc 1 32 0
	jne	.L55
.LVL39:
.L1:
	.loc 1 37 0
	rep ret
.LVL40:
	.p2align 4,,10
	.p2align 3
.L9:
	.loc 1 31 0
	movq	%rax, %r8
	.loc 1 32 0
	movl	%edi, %esi
	jmp	.L4
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
.LVL41:
	.loc 1 43 0
	testq	%rdx, %rdx
	.loc 1 41 0
	movq	%rdi, %rax
.LVL42:
	.loc 1 43 0
	je	.L57
	movq	%rdi, %r8
	leaq	-1(%rdx), %r11
	movl	$17, %edi
.LVL43:
	negq	%r8
	andl	$15, %r8d
	leaq	15(%r8), %rcx
	cmpq	$17, %rcx
	cmovb	%rdi, %rcx
	cmpq	%rcx, %r11
	jb	.L64
	testq	%r8, %r8
	je	.L65
	cmpq	$1, %r8
	.loc 1 44 0
	leaq	1(%rsi), %r10
.LVL44:
	leaq	1(%rax), %rcx
.LVL45:
	movb	%sil, (%rax)
.LVL46:
	je	.L59
	cmpq	$2, %r8
	leaq	2(%rsi), %rdi
.LVL47:
	leaq	2(%rax), %rcx
.LVL48:
	movb	%r10b, 1(%rax)
.LVL49:
	.loc 1 45 0
	leaq	-2(%rdx), %r11
.LVL50:
	je	.L72
	cmpq	$3, %r8
	.loc 1 44 0
	leaq	3(%rsi), %r10
.LVL51:
	leaq	3(%rax), %rcx
.LVL52:
	movb	%dil, 2(%rax)
.LVL53:
	.loc 1 45 0
	leaq	-3(%rdx), %r11
.LVL54:
	je	.L59
	cmpq	$4, %r8
	.loc 1 44 0
	leaq	4(%rsi), %rdi
.LVL55:
	leaq	4(%rax), %rcx
.LVL56:
	movb	%r10b, 3(%rax)
.LVL57:
	.loc 1 45 0
	leaq	-4(%rdx), %r11
.LVL58:
	je	.L72
	cmpq	$5, %r8
	.loc 1 44 0
	leaq	5(%rsi), %r10
.LVL59:
	leaq	5(%rax), %rcx
.LVL60:
	movb	%dil, 4(%rax)
.LVL61:
	.loc 1 45 0
	leaq	-5(%rdx), %r11
.LVL62:
	je	.L59
	cmpq	$6, %r8
	.loc 1 44 0
	leaq	6(%rsi), %rdi
.LVL63:
	leaq	6(%rax), %rcx
.LVL64:
	movb	%r10b, 5(%rax)
.LVL65:
	.loc 1 45 0
	leaq	-6(%rdx), %r11
.LVL66:
	je	.L72
	cmpq	$7, %r8
	.loc 1 44 0
	leaq	7(%rsi), %r10
.LVL67:
	leaq	7(%rax), %rcx
.LVL68:
	movb	%dil, 6(%rax)
.LVL69:
	.loc 1 45 0
	leaq	-7(%rdx), %r11
.LVL70:
	je	.L59
	cmpq	$8, %r8
	.loc 1 44 0
	leaq	8(%rsi), %rdi
.LVL71:
	leaq	8(%rax), %rcx
.LVL72:
	movb	%r10b, 7(%rax)
.LVL73:
	.loc 1 45 0
	leaq	-8(%rdx), %r11
.LVL74:
	je	.L72
	cmpq	$9, %r8
	.loc 1 44 0
	leaq	9(%rsi), %r10
.LVL75:
	leaq	9(%rax), %rcx
.LVL76:
	movb	%dil, 8(%rax)
.LVL77:
	.loc 1 45 0
	leaq	-9(%rdx), %r11
.LVL78:
	je	.L59
	cmpq	$10, %r8
	.loc 1 44 0
	leaq	10(%rsi), %rdi
.LVL79:
	leaq	10(%rax), %rcx
.LVL80:
	movb	%r10b, 9(%rax)
.LVL81:
	.loc 1 45 0
	leaq	-10(%rdx), %r11
.LVL82:
	je	.L72
	cmpq	$11, %r8
	.loc 1 44 0
	leaq	11(%rsi), %r10
.LVL83:
	leaq	11(%rax), %rcx
.LVL84:
	movb	%dil, 10(%rax)
.LVL85:
	.loc 1 45 0
	leaq	-11(%rdx), %r11
.LVL86:
	je	.L59
	cmpq	$12, %r8
	.loc 1 44 0
	leaq	12(%rsi), %rdi
.LVL87:
	leaq	12(%rax), %rcx
.LVL88:
	movb	%r10b, 11(%rax)
.LVL89:
	.loc 1 45 0
	leaq	-12(%rdx), %r11
.LVL90:
	je	.L72
	cmpq	$13, %r8
	.loc 1 44 0
	leaq	13(%rsi), %r10
.LVL91:
	leaq	13(%rax), %rcx
.LVL92:
	movb	%dil, 12(%rax)
.LVL93:
	.loc 1 45 0
	leaq	-13(%rdx), %r11
.LVL94:
	je	.L59
	cmpq	$15, %r8
	.loc 1 44 0
	leaq	14(%rsi), %rdi
.LVL95:
	leaq	14(%rax), %rcx
.LVL96:
	movb	%r10b, 13(%rax)
.LVL97:
	.loc 1 45 0
	leaq	-14(%rdx), %r11
.LVL98:
	jne	.L72
	.loc 1 44 0
	leaq	15(%rsi), %r10
.LVL99:
	leaq	15(%rax), %rcx
.LVL100:
	.loc 1 45 0
	leaq	-15(%rdx), %r11
.LVL101:
	.loc 1 44 0
	movb	%dil, 14(%rax)
.LVL102:
	.p2align 4,,10
	.p2align 3
.L59:
	subq	%r8, %rdx
	movq	%r10, -16(%rsp)
	.loc 1 43 0
	xorl	%esi, %esi
	movq	%rdx, %rdi
	movq	%rdx, %r9
	leaq	1(%r10), %rdx
	movq	-16(%rsp), %xmm2
	shrq	$4, %rdi
	movq	%rdx, -16(%rsp)
	leaq	(%rax,%r8), %rdx
	movhps	-16(%rsp), %xmm2
	movdqa	.LC6(%rip), %xmm11
	movdqa	.LC7(%rip), %xmm10
	movdqa	.LC8(%rip), %xmm9
	movdqa	.LC9(%rip), %xmm8
	movdqa	.LC10(%rip), %xmm7
	movdqa	.LC11(%rip), %xmm6
	movdqa	.LC12(%rip), %xmm5
	movdqa	.LC13(%rip), %xmm4
	movdqa	.LC5(%rip), %xmm3
	.p2align 4,,10
	.p2align 3
.L61:
	.loc 1 44 0
	movdqa	%xmm2, %xmm0
	movdqa	%xmm2, %xmm1
	movdqa	%xmm2, %xmm12
	addq	$1, %rsi
	paddq	%xmm10, %xmm0
	shufps	$136, %xmm0, %xmm1
	addq	$16, %rdx
	paddq	%xmm8, %xmm12
	movdqa	%xmm2, %xmm13
	movdqa	%xmm1, %xmm0
	paddq	%xmm4, %xmm13
	movdqa	%xmm2, %xmm1
	paddq	%xmm9, %xmm1
	shufps	$136, %xmm12, %xmm1
	movdqa	%xmm0, %xmm12
	punpcklwd	%xmm1, %xmm0
	punpckhwd	%xmm1, %xmm12
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm12, %xmm0
	punpckhwd	%xmm12, %xmm1
	movdqa	%xmm2, %xmm12
	paddq	%xmm6, %xmm12
	punpcklwd	%xmm1, %xmm0
	movdqa	%xmm2, %xmm1
	paddq	%xmm7, %xmm1
	shufps	$136, %xmm12, %xmm1
	movdqa	%xmm2, %xmm12
	pand	%xmm3, %xmm0
	paddq	%xmm11, %xmm2
	paddq	%xmm5, %xmm12
	shufps	$136, %xmm13, %xmm12
	movdqa	%xmm1, %xmm13
	punpcklwd	%xmm12, %xmm1
	punpckhwd	%xmm12, %xmm13
	movdqa	%xmm1, %xmm12
	punpcklwd	%xmm13, %xmm1
	punpckhwd	%xmm13, %xmm12
	punpcklwd	%xmm12, %xmm1
	pand	%xmm3, %xmm1
	packuswb	%xmm1, %xmm0
	movaps	%xmm0, -16(%rdx)
	cmpq	%rsi, %rdi
	ja	.L61
	movq	%r9, %rdi
	movq	%r11, %rdx
	andq	$-16, %rdi
	subq	%rdi, %rdx
	addq	%rdi, %rcx
	cmpq	%rdi, %r9
	leaq	(%r10,%rdi), %rsi
	je	.L99
.L58:
	addq	%rcx, %rdx
	.p2align 4,,10
	.p2align 3
.L63:
.LVL103:
	addq	$1, %rcx
.LVL104:
	movb	%sil, -1(%rcx)
	addq	$1, %rsi
.LVL105:
	.loc 1 43 0
	cmpq	%rdx, %rcx
	jne	.L63
.LVL106:
.L57:
	.loc 1 48 0
	rep ret
.LVL107:
	.p2align 4,,10
	.p2align 3
.L72:
	.loc 1 44 0
	movq	%rdi, %r10
	jmp	.L59
.LVL108:
	.p2align 4,,10
	.p2align 3
.L64:
	.loc 1 43 0
	movq	%rax, %rcx
	jmp	.L58
.LVL109:
.L99:
	rep ret
.LVL110:
.L65:
	movq	%rax, %rcx
	movq	%rdx, %r11
	movq	%rsi, %r10
	jmp	.L59
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
.LVL111:
	.loc 1 52 0
	testq	%rdx, %rdx
	je	.L104
	.loc 1 54 0
	movzbl	(%rsi), %eax
	cmpb	%al, (%rdi)
	jne	.L106
	addq	%rdi, %rdx
.LVL112:
	jmp	.L102
	.p2align 4,,10
	.p2align 3
.L103:
	movzbl	(%rsi), %eax
	cmpb	%al, (%rdi)
	jne	.L106
.LVL113:
.L102:
	.loc 1 57 0
	addq	$1, %rdi
.LVL114:
	.loc 1 58 0
	addq	$1, %rsi
.LVL115:
	.loc 1 52 0
	cmpq	%rdi, %rdx
	jne	.L103
.LVL116:
.L104:
	.loc 1 61 0
	movl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L106:
	.loc 1 55 0
	xorl	%eax, %eax
	.loc 1 62 0
	ret
	.cfi_endproc
.LFE55:
	.size	check, .-check
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC14:
	.string	"========================================"
	.align 8
.LC15:
	.string	"Test %2d:\tsize = 0x%6lx\n\t0x%x -> 0x%x\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC16:
	.string	"glib2.0 memcpy durtime:\t%d\n"
.LC17:
	.string	"1-char copy durtime:\t%d\n"
.LC18:
	.string	"Failed. "
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"Passed. \n\nmymemcpy durtime:\t%d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB56:
	.loc 1 65 0
	.cfi_startproc
.LVL117:
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
	leaq	-8+size(%rip), %r14
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	.loc 1 68 0
	call	malloc@PLT
.LVL118:
	.loc 1 69 0
	movl	$12582912, %edi
	.loc 1 68 0
	movq	%rax, src(%rip)
	.loc 1 69 0
	call	malloc@PLT
.LVL119:
.LBB74:
.LBB72:
	.loc 2 104 0
	leaq	.LC14(%rip), %rdi
.LBE72:
.LBE74:
	.loc 1 69 0
	movq	%rax, dst(%rip)
.LVL120:
.LBB75:
.LBB73:
	.loc 2 104 0
	call	puts@PLT
.LVL121:
	movdqa	.LC1(%rip), %xmm7
	movdqa	.LC2(%rip), %xmm6
	movdqa	.LC3(%rip), %xmm5
	movdqa	.LC4(%rip), %xmm4
	movdqa	.LC5(%rip), %xmm3
.LVL122:
	.p2align 4,,10
	.p2align 3
.L130:
.LBE73:
.LBE75:
.LBB76:
	.loc 1 72 0
	movslq	(%r12), %r9
	movslq	0(%rbp), %r8
.LBB77:
.LBB78:
	.loc 2 104 0
	leaq	.LC15(%rip), %rsi
	addq	dst(%rip), %r9
	addq	src(%rip), %r8
	movl	%ebx, %edx
	movq	(%r14,%rbx,8), %rcx
	xorl	%eax, %eax
	movl	$1, %edi
	movaps	%xmm3, 64(%rsp)
	leaq	0(,%rbx,8), %r15
	movaps	%xmm4, 48(%rsp)
	movaps	%xmm5, 32(%rsp)
	movaps	%xmm6, 16(%rsp)
	movaps	%xmm7, (%rsp)
.LVL123:
	call	__printf_chk@PLT
.LVL124:
.LBE78:
.LBE77:
.LBB79:
.LBB80:
	.loc 1 31 0
	movq	src(%rip), %rax
.LVL125:
	movdqa	(%rsp), %xmm7
	movq	%rax, %rdx
	movdqa	16(%rsp), %xmm6
	negq	%rdx
	andl	$15, %edx
	movdqa	32(%rsp), %xmm5
	movdqa	48(%rsp), %xmm4
	movdqa	64(%rsp), %xmm3
	je	.L134
	cmpl	$1, %edx
	.loc 1 33 0
	movb	$0, (%rax)
.LVL126:
	.loc 1 35 0
	leaq	1(%rax), %rcx
.LVL127:
	je	.L135
	cmpl	$2, %edx
	.loc 1 33 0
	movb	$-1, 1(%rax)
.LVL128:
	.loc 1 35 0
	leaq	2(%rax), %rcx
.LVL129:
	je	.L136
	cmpl	$3, %edx
	.loc 1 33 0
	movb	$-2, 2(%rax)
.LVL130:
	.loc 1 35 0
	leaq	3(%rax), %rcx
.LVL131:
	je	.L137
	cmpl	$4, %edx
	.loc 1 33 0
	movb	$-3, 3(%rax)
.LVL132:
	.loc 1 35 0
	leaq	4(%rax), %rcx
.LVL133:
	je	.L138
	cmpl	$5, %edx
	.loc 1 33 0
	movb	$-4, 4(%rax)
.LVL134:
	.loc 1 35 0
	leaq	5(%rax), %rcx
.LVL135:
	je	.L139
	cmpl	$6, %edx
	.loc 1 33 0
	movb	$-5, 5(%rax)
.LVL136:
	.loc 1 35 0
	leaq	6(%rax), %rcx
.LVL137:
	je	.L140
	cmpl	$7, %edx
	.loc 1 33 0
	movb	$-6, 6(%rax)
.LVL138:
	.loc 1 35 0
	leaq	7(%rax), %rcx
.LVL139:
	je	.L141
	cmpl	$8, %edx
	.loc 1 33 0
	movb	$-7, 7(%rax)
.LVL140:
	.loc 1 35 0
	leaq	8(%rax), %rcx
.LVL141:
	je	.L142
	cmpl	$9, %edx
	.loc 1 33 0
	movb	$-8, 8(%rax)
.LVL142:
	.loc 1 35 0
	leaq	9(%rax), %rcx
.LVL143:
	je	.L143
	cmpl	$10, %edx
	.loc 1 33 0
	movb	$-9, 9(%rax)
.LVL144:
	.loc 1 35 0
	leaq	10(%rax), %rcx
.LVL145:
	je	.L144
	cmpl	$11, %edx
	.loc 1 33 0
	movb	$-10, 10(%rax)
.LVL146:
	.loc 1 35 0
	leaq	11(%rax), %rcx
.LVL147:
	je	.L145
	cmpl	$12, %edx
	.loc 1 33 0
	movb	$-11, 11(%rax)
.LVL148:
	.loc 1 35 0
	leaq	12(%rax), %rcx
.LVL149:
	je	.L146
	cmpl	$13, %edx
	.loc 1 33 0
	movb	$-12, 12(%rax)
.LVL150:
	.loc 1 35 0
	leaq	13(%rax), %rcx
.LVL151:
	je	.L147
	cmpl	$15, %edx
	.loc 1 33 0
	movb	$-13, 13(%rax)
.LVL152:
	.loc 1 35 0
	leaq	14(%rax), %rcx
.LVL153:
	jne	.L148
	leaq	15(%rax), %rcx
.LVL154:
	.loc 1 33 0
	movb	$-14, 14(%rax)
.LVL155:
	.loc 1 35 0
	movl	$12582897, %edi
	.loc 1 34 0
	movl	$12582897, (%rsp)
.LVL156:
.L108:
	movd	(%rsp), %xmm2
	movl	$12582912, %esi
	subl	%edx, %esi
	movl	%edx, %edx
	pshufd	$0, %xmm2, %xmm2
	movl	%esi, %r8d
	addq	%rdx, %rax
	shrl	$4, %r8d
	.loc 1 31 0
	xorl	%edx, %edx
	paddd	.LC0(%rip), %xmm2
	.p2align 4,,10
	.p2align 3
.L110:
	.loc 1 33 0
	movdqa	%xmm2, %xmm1
	addl	$1, %edx
	movdqa	%xmm2, %xmm14
	addq	$16, %rax
	paddd	%xmm6, %xmm1
	movdqa	%xmm2, %xmm0
	punpcklwd	%xmm1, %xmm14
	movdqa	%xmm2, %xmm9
	punpckhwd	%xmm1, %xmm0
	paddd	%xmm4, %xmm9
	movdqa	%xmm14, %xmm1
	movdqa	%xmm14, %xmm8
	punpcklwd	%xmm0, %xmm1
	punpckhwd	%xmm0, %xmm8
	movdqa	%xmm2, %xmm0
	paddd	%xmm7, %xmm2
	paddd	%xmm5, %xmm0
	punpcklwd	%xmm8, %xmm1
	movdqa	%xmm0, %xmm8
	punpcklwd	%xmm9, %xmm0
	punpckhwd	%xmm9, %xmm8
	movdqa	%xmm0, %xmm9
	pand	%xmm3, %xmm1
	punpckhwd	%xmm8, %xmm9
	punpcklwd	%xmm8, %xmm0
	punpcklwd	%xmm9, %xmm0
	pand	%xmm3, %xmm0
	packuswb	%xmm0, %xmm1
	movaps	%xmm1, -16(%rax)
	cmpl	%edx, %r8d
	ja	.L110
	movl	%esi, %r8d
	movl	(%rsp), %eax
	andl	$-16, %r8d
	movl	%r8d, %edx
	subl	%r8d, %edi
	addq	%rcx, %rdx
	subl	%r8d, %eax
	cmpl	%r8d, %esi
	je	.L111
.LVL157:
	.loc 1 32 0
	cmpl	$1, %edi
	.loc 1 33 0
	movb	%al, (%rdx)
	.loc 1 34 0
	leal	-1(%rax), %esi
.LVL158:
	.loc 1 32 0
	je	.L111
	cmpl	$2, %edi
	.loc 1 33 0
	movb	%sil, 1(%rdx)
	.loc 1 34 0
	leal	-2(%rax), %esi
.LVL159:
	.loc 1 32 0
	je	.L111
	cmpl	$3, %edi
	.loc 1 33 0
	movb	%sil, 2(%rdx)
	.loc 1 34 0
	leal	-3(%rax), %esi
.LVL160:
	.loc 1 32 0
	je	.L111
	cmpl	$4, %edi
	.loc 1 33 0
	movb	%sil, 3(%rdx)
	.loc 1 34 0
	leal	-4(%rax), %esi
.LVL161:
	.loc 1 32 0
	je	.L111
	cmpl	$5, %edi
	.loc 1 33 0
	movb	%sil, 4(%rdx)
	.loc 1 34 0
	leal	-5(%rax), %esi
.LVL162:
	.loc 1 32 0
	je	.L111
	cmpl	$6, %edi
	.loc 1 33 0
	movb	%sil, 5(%rdx)
	.loc 1 34 0
	leal	-6(%rax), %esi
.LVL163:
	.loc 1 32 0
	je	.L111
	cmpl	$7, %edi
	.loc 1 33 0
	movb	%sil, 6(%rdx)
	.loc 1 34 0
	leal	-7(%rax), %esi
.LVL164:
	.loc 1 32 0
	je	.L111
	cmpl	$8, %edi
	.loc 1 33 0
	movb	%sil, 7(%rdx)
	.loc 1 34 0
	leal	-8(%rax), %esi
.LVL165:
	.loc 1 32 0
	je	.L111
	cmpl	$9, %edi
	.loc 1 33 0
	movb	%sil, 8(%rdx)
	.loc 1 34 0
	leal	-9(%rax), %esi
.LVL166:
	.loc 1 32 0
	je	.L111
	cmpl	$10, %edi
	.loc 1 33 0
	movb	%sil, 9(%rdx)
	.loc 1 34 0
	leal	-10(%rax), %esi
.LVL167:
	.loc 1 32 0
	je	.L111
	cmpl	$11, %edi
	.loc 1 33 0
	movb	%sil, 10(%rdx)
	.loc 1 34 0
	leal	-11(%rax), %esi
.LVL168:
	.loc 1 32 0
	je	.L111
	cmpl	$12, %edi
	.loc 1 33 0
	movb	%sil, 11(%rdx)
	.loc 1 34 0
	leal	-12(%rax), %esi
.LVL169:
	.loc 1 32 0
	je	.L111
	cmpl	$13, %edi
	.loc 1 33 0
	movb	%sil, 12(%rdx)
	.loc 1 34 0
	leal	-13(%rax), %esi
.LVL170:
	.loc 1 32 0
	je	.L111
	.loc 1 34 0
	subl	$14, %eax
	.loc 1 32 0
	cmpl	$14, %edi
	.loc 1 33 0
	movb	%sil, 13(%rdx)
.LVL171:
	.loc 1 32 0
	je	.L111
	.loc 1 33 0
	movb	%al, 14(%rdx)
.LVL172:
.L111:
.LBE80:
.LBE79:
.LBB84:
.LBB85:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 3 71 0
	movq	dst(%rip), %rdi
	movl	$12582912, %edx
	movl	$-1, %esi
	movaps	%xmm3, 64(%rsp)
	movaps	%xmm4, 48(%rsp)
	movaps	%xmm5, 32(%rsp)
	movaps	%xmm6, 16(%rsp)
	movaps	%xmm7, (%rsp)
.LVL173:
	call	memset@PLT
.LVL174:
.LBE85:
.LBE84:
.LBB86:
.LBB87:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtsc
# 0 "" 2
#NO_APP
	movq	%rdx, %r13
.LBE87:
.LBE86:
	.loc 1 76 0
	movslq	0(%rbp), %rsi
	movslq	(%r12), %rdi
	addq	src(%rip), %rsi
	addq	dst(%rip), %rdi
	movq	(%r14,%r15), %rdx
.LBB90:
.LBB88:
	.loc 1 21 0
	movq	%rax, 80(%rsp)
.LBE88:
.LBE90:
	.loc 1 76 0
	call	mymemcpy@PLT
.LVL175:
.LBB91:
.LBB92:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtsc
# 0 "" 2
#NO_APP
.LBE92:
.LBE91:
	.loc 1 78 0
	movq	(%r14,%r15), %r9
	movslq	0(%rbp), %rdi
	movslq	(%r12), %r8
	addq	src(%rip), %rdi
	addq	dst(%rip), %r8
.LVL176:
.LBB94:
.LBB95:
	.loc 1 52 0
	testq	%r9, %r9
	movdqa	(%rsp), %xmm7
	movdqa	16(%rsp), %xmm6
	movdqa	32(%rsp), %xmm5
	movdqa	48(%rsp), %xmm4
	movdqa	64(%rsp), %xmm3
	je	.L112
	.loc 1 54 0
	movzbl	(%r8), %esi
	cmpb	%sil, (%rdi)
	jne	.L113
	movl	$1, %ecx
	jmp	.L114
.LVL177:
	.p2align 4,,10
	.p2align 3
.L115:
	movzbl	(%r8,%rcx), %esi
	addq	$1, %rcx
.LVL178:
	cmpb	-1(%rdi,%rcx), %sil
	jne	.L113
.LVL179:
.L114:
	.loc 1 52 0
	cmpq	%rcx, %r9
	jne	.L115
.LVL180:
.L112:
.LBE95:
.LBE94:
.LBB97:
.LBB89:
	.loc 1 22 0
	salq	$32, %r13
	orq	80(%rsp), %r13
.LBE89:
.LBE97:
.LBB98:
.LBB93:
	salq	$32, %rdx
	orq	%rax, %rdx
.LBE93:
.LBE98:
.LBB99:
.LBB100:
	.loc 2 104 0
	leaq	.LC19(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	movaps	%xmm3, 64(%rsp)
.LBE100:
.LBE99:
	.loc 1 81 0
	subq	%r13, %rdx
	movaps	%xmm4, 48(%rsp)
	movaps	%xmm5, 32(%rsp)
	movaps	%xmm6, 16(%rsp)
	movaps	%xmm7, (%rsp)
.LVL181:
.LBB102:
.LBB101:
	.loc 2 104 0
	call	__printf_chk@PLT
.LVL182:
.LBE101:
.LBE102:
.LBB103:
.LBB104:
	.loc 3 71 0
	movl	$12582912, %edx
	movl	$-2, %esi
	movq	dst(%rip), %rdi
	call	memset@PLT
.LVL183:
.LBE104:
.LBE103:
.LBB105:
.LBB106:
	.loc 1 31 0
	movq	src(%rip), %rax
.LVL184:
	movdqa	(%rsp), %xmm7
	movq	%rax, %rdx
	movdqa	16(%rsp), %xmm6
	negq	%rdx
	andl	$15, %edx
	movdqa	32(%rsp), %xmm5
	movdqa	48(%rsp), %xmm4
	movdqa	64(%rsp), %xmm3
	je	.L172
	cmpl	$1, %edx
	.loc 1 33 0
	movb	$0, (%rax)
.LVL185:
	.loc 1 35 0
	leaq	1(%rax), %rsi
.LVL186:
	je	.L173
	cmpl	$2, %edx
	.loc 1 33 0
	movb	$-1, 1(%rax)
.LVL187:
	.loc 1 35 0
	leaq	2(%rax), %rsi
.LVL188:
	je	.L174
	cmpl	$3, %edx
	.loc 1 33 0
	movb	$-2, 2(%rax)
.LVL189:
	.loc 1 35 0
	leaq	3(%rax), %rsi
.LVL190:
	je	.L175
	cmpl	$4, %edx
	.loc 1 33 0
	movb	$-3, 3(%rax)
.LVL191:
	.loc 1 35 0
	leaq	4(%rax), %rsi
.LVL192:
	je	.L176
	cmpl	$5, %edx
	.loc 1 33 0
	movb	$-4, 4(%rax)
.LVL193:
	.loc 1 35 0
	leaq	5(%rax), %rsi
.LVL194:
	je	.L177
	cmpl	$6, %edx
	.loc 1 33 0
	movb	$-5, 5(%rax)
.LVL195:
	.loc 1 35 0
	leaq	6(%rax), %rsi
.LVL196:
	je	.L178
	cmpl	$7, %edx
	.loc 1 33 0
	movb	$-6, 6(%rax)
.LVL197:
	.loc 1 35 0
	leaq	7(%rax), %rsi
.LVL198:
	je	.L179
	cmpl	$8, %edx
	.loc 1 33 0
	movb	$-7, 7(%rax)
.LVL199:
	.loc 1 35 0
	leaq	8(%rax), %rsi
.LVL200:
	je	.L180
	cmpl	$9, %edx
	.loc 1 33 0
	movb	$-8, 8(%rax)
.LVL201:
	.loc 1 35 0
	leaq	9(%rax), %rsi
.LVL202:
	je	.L181
	cmpl	$10, %edx
	.loc 1 33 0
	movb	$-9, 9(%rax)
.LVL203:
	.loc 1 35 0
	leaq	10(%rax), %rsi
.LVL204:
	je	.L182
	cmpl	$11, %edx
	.loc 1 33 0
	movb	$-10, 10(%rax)
.LVL205:
	.loc 1 35 0
	leaq	11(%rax), %rsi
.LVL206:
	je	.L183
	cmpl	$12, %edx
	.loc 1 33 0
	movb	$-11, 11(%rax)
.LVL207:
	.loc 1 35 0
	leaq	12(%rax), %rsi
.LVL208:
	je	.L184
	cmpl	$13, %edx
	.loc 1 33 0
	movb	$-12, 12(%rax)
.LVL209:
	.loc 1 35 0
	leaq	13(%rax), %rsi
.LVL210:
	je	.L185
	cmpl	$15, %edx
	.loc 1 33 0
	movb	$-13, 13(%rax)
.LVL211:
	.loc 1 35 0
	leaq	14(%rax), %rsi
.LVL212:
	jne	.L186
	leaq	15(%rax), %rsi
.LVL213:
	.loc 1 33 0
	movb	$-14, 14(%rax)
.LVL214:
	.loc 1 35 0
	movl	$12582897, %r8d
	.loc 1 34 0
	movl	$12582897, %ecx
.LVL215:
.L132:
	movl	%ecx, (%rsp)
	movl	$12582912, %edi
	movd	(%rsp), %xmm2
	subl	%edx, %edi
	movl	%edx, %edx
	movl	%edi, %r9d
	addq	%rdx, %rax
.LBE106:
.LBE105:
.LBB112:
.LBB96:
	.loc 1 54 0
	xorl	%edx, %edx
	pshufd	$0, %xmm2, %xmm2
	shrl	$4, %r9d
	paddd	.LC0(%rip), %xmm2
	.p2align 4,,10
	.p2align 3
.L117:
.LBE96:
.LBE112:
.LBB113:
.LBB107:
	.loc 1 33 0
	movdqa	%xmm2, %xmm1
	addl	$1, %edx
	movdqa	%xmm2, %xmm15
	addq	$16, %rax
	paddd	%xmm6, %xmm1
	movdqa	%xmm2, %xmm0
	punpcklwd	%xmm1, %xmm15
	movdqa	%xmm2, %xmm9
	punpckhwd	%xmm1, %xmm0
	paddd	%xmm4, %xmm9
	movdqa	%xmm15, %xmm1
	movdqa	%xmm15, %xmm8
	punpcklwd	%xmm0, %xmm1
	punpckhwd	%xmm0, %xmm8
	movdqa	%xmm2, %xmm0
	paddd	%xmm7, %xmm2
	paddd	%xmm5, %xmm0
	punpcklwd	%xmm8, %xmm1
	movdqa	%xmm0, %xmm8
	punpcklwd	%xmm9, %xmm0
	punpckhwd	%xmm9, %xmm8
	movdqa	%xmm0, %xmm9
	pand	%xmm3, %xmm1
	punpckhwd	%xmm8, %xmm9
	punpcklwd	%xmm8, %xmm0
	punpcklwd	%xmm9, %xmm0
	pand	%xmm3, %xmm0
	packuswb	%xmm0, %xmm1
	movaps	%xmm1, -16(%rax)
	cmpl	%edx, %r9d
	ja	.L117
	movl	%edi, %r9d
	andl	$-16, %r9d
	movl	%r9d, %eax
	subl	%r9d, %ecx
	addq	%rsi, %rax
	movl	%r8d, %esi
	subl	%r9d, %esi
	cmpl	%r9d, %edi
	je	.L116
.LVL216:
	.loc 1 32 0
	cmpl	$1, %esi
	.loc 1 33 0
	movb	%cl, (%rax)
	.loc 1 34 0
	leal	-1(%rcx), %edx
.LVL217:
	.loc 1 32 0
	je	.L116
	cmpl	$2, %esi
	.loc 1 33 0
	movb	%dl, 1(%rax)
	.loc 1 34 0
	leal	-2(%rcx), %edx
.LVL218:
	.loc 1 32 0
	je	.L116
	cmpl	$3, %esi
	.loc 1 33 0
	movb	%dl, 2(%rax)
	.loc 1 34 0
	leal	-3(%rcx), %edx
.LVL219:
	.loc 1 32 0
	je	.L116
	cmpl	$4, %esi
	.loc 1 33 0
	movb	%dl, 3(%rax)
	.loc 1 34 0
	leal	-4(%rcx), %edx
.LVL220:
	.loc 1 32 0
	je	.L116
	cmpl	$5, %esi
	.loc 1 33 0
	movb	%dl, 4(%rax)
	.loc 1 34 0
	leal	-5(%rcx), %edx
.LVL221:
	.loc 1 32 0
	je	.L116
	cmpl	$6, %esi
	.loc 1 33 0
	movb	%dl, 5(%rax)
	.loc 1 34 0
	leal	-6(%rcx), %edx
.LVL222:
	.loc 1 32 0
	je	.L116
	cmpl	$7, %esi
	.loc 1 33 0
	movb	%dl, 6(%rax)
	.loc 1 34 0
	leal	-7(%rcx), %edx
.LVL223:
	.loc 1 32 0
	je	.L116
	cmpl	$8, %esi
	.loc 1 33 0
	movb	%dl, 7(%rax)
	.loc 1 34 0
	leal	-8(%rcx), %edx
.LVL224:
	.loc 1 32 0
	je	.L116
	cmpl	$9, %esi
	.loc 1 33 0
	movb	%dl, 8(%rax)
	.loc 1 34 0
	leal	-9(%rcx), %edx
.LVL225:
	.loc 1 32 0
	je	.L116
	cmpl	$10, %esi
	.loc 1 33 0
	movb	%dl, 9(%rax)
	.loc 1 34 0
	leal	-10(%rcx), %edx
.LVL226:
	.loc 1 32 0
	je	.L116
	cmpl	$11, %esi
	.loc 1 33 0
	movb	%dl, 10(%rax)
	.loc 1 34 0
	leal	-11(%rcx), %edx
.LVL227:
	.loc 1 32 0
	je	.L116
	cmpl	$12, %esi
	.loc 1 33 0
	movb	%dl, 11(%rax)
	.loc 1 34 0
	leal	-12(%rcx), %edx
.LVL228:
	.loc 1 32 0
	je	.L116
	cmpl	$13, %esi
	.loc 1 33 0
	movb	%dl, 12(%rax)
	.loc 1 34 0
	leal	-13(%rcx), %edx
.LVL229:
	.loc 1 32 0
	je	.L116
	cmpl	$14, %esi
	.loc 1 33 0
	movb	%dl, 13(%rax)
	.loc 1 34 0
	leal	-14(%rcx), %edx
.LVL230:
	.loc 1 32 0
	je	.L116
	.loc 1 33 0
	movb	%dl, 14(%rax)
.LVL231:
.L116:
	movaps	%xmm3, 80(%rsp)
	movaps	%xmm4, 64(%rsp)
	movaps	%xmm5, 48(%rsp)
	movaps	%xmm6, 32(%rsp)
	movaps	%xmm7, 16(%rsp)
.LBE107:
.LBE113:
.LBB114:
.LBB115:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtsc
# 0 "" 2
.LVL232:
#NO_APP
	movq	%rdx, %r13
.LBE115:
.LBE114:
	.loc 1 85 0
	movslq	(%r12), %rdi
	movslq	0(%rbp), %rsi
	addq	dst(%rip), %rdi
.LVL233:
	addq	src(%rip), %rsi
.LVL234:
.LBB118:
.LBB119:
	.loc 3 34 0
	movq	(%r14,%r15), %rdx
.LBE119:
.LBE118:
.LBB121:
.LBB116:
	.loc 1 21 0
	movq	%rax, (%rsp)
.LBE116:
.LBE121:
.LBB122:
.LBB120:
	.loc 3 34 0
	call	memcpy@PLT
.LVL235:
.LBE120:
.LBE122:
.LBB123:
.LBB124:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtsc
# 0 "" 2
.LVL236:
#NO_APP
.LBE124:
.LBE123:
.LBB126:
.LBB117:
	.loc 1 22 0
	salq	$32, %r13
	orq	(%rsp), %r13
.LBE117:
.LBE126:
.LBB127:
.LBB125:
	salq	$32, %rdx
	orq	%rdx, %rax
.LBE125:
.LBE127:
.LBB128:
.LBB129:
	.loc 2 104 0
	leaq	.LC16(%rip), %rsi
	movl	$1, %edi
.LBE129:
.LBE128:
	.loc 1 87 0
	subq	%r13, %rax
	movq	%rax, %rdx
.LBB131:
.LBB130:
	.loc 2 104 0
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL237:
.LBE130:
.LBE131:
.LBB132:
.LBB133:
	.loc 3 71 0
	movq	dst(%rip), %rdi
	movl	$12582912, %edx
	movl	$-1, %esi
	call	memset@PLT
.LVL238:
.LBE133:
.LBE132:
.LBB134:
.LBB135:
	.loc 1 31 0
	movq	src(%rip), %rax
.LVL239:
	movdqa	16(%rsp), %xmm7
	movq	%rax, %rdx
	movdqa	32(%rsp), %xmm6
	negq	%rdx
	andl	$15, %edx
	movdqa	48(%rsp), %xmm5
	movdqa	64(%rsp), %xmm4
	movdqa	80(%rsp), %xmm3
	je	.L149
	cmpl	$1, %edx
	.loc 1 33 0
	movb	$0, (%rax)
.LVL240:
	.loc 1 35 0
	leaq	1(%rax), %rcx
.LVL241:
	je	.L150
	cmpl	$2, %edx
	.loc 1 33 0
	movb	$-1, 1(%rax)
.LVL242:
	.loc 1 35 0
	leaq	2(%rax), %rcx
.LVL243:
	je	.L151
	cmpl	$3, %edx
	.loc 1 33 0
	movb	$-2, 2(%rax)
.LVL244:
	.loc 1 35 0
	leaq	3(%rax), %rcx
.LVL245:
	je	.L152
	cmpl	$4, %edx
	.loc 1 33 0
	movb	$-3, 3(%rax)
.LVL246:
	.loc 1 35 0
	leaq	4(%rax), %rcx
.LVL247:
	je	.L153
	cmpl	$5, %edx
	.loc 1 33 0
	movb	$-4, 4(%rax)
.LVL248:
	.loc 1 35 0
	leaq	5(%rax), %rcx
.LVL249:
	je	.L154
	cmpl	$6, %edx
	.loc 1 33 0
	movb	$-5, 5(%rax)
.LVL250:
	.loc 1 35 0
	leaq	6(%rax), %rcx
.LVL251:
	je	.L155
	cmpl	$7, %edx
	.loc 1 33 0
	movb	$-6, 6(%rax)
.LVL252:
	.loc 1 35 0
	leaq	7(%rax), %rcx
.LVL253:
	je	.L156
	cmpl	$8, %edx
	.loc 1 33 0
	movb	$-7, 7(%rax)
.LVL254:
	.loc 1 35 0
	leaq	8(%rax), %rcx
.LVL255:
	je	.L157
	cmpl	$9, %edx
	.loc 1 33 0
	movb	$-8, 8(%rax)
.LVL256:
	.loc 1 35 0
	leaq	9(%rax), %rcx
.LVL257:
	je	.L158
	cmpl	$10, %edx
	.loc 1 33 0
	movb	$-9, 9(%rax)
.LVL258:
	.loc 1 35 0
	leaq	10(%rax), %rcx
.LVL259:
	je	.L159
	cmpl	$11, %edx
	.loc 1 33 0
	movb	$-10, 10(%rax)
.LVL260:
	.loc 1 35 0
	leaq	11(%rax), %rcx
.LVL261:
	je	.L160
	cmpl	$12, %edx
	.loc 1 33 0
	movb	$-11, 11(%rax)
.LVL262:
	.loc 1 35 0
	leaq	12(%rax), %rcx
.LVL263:
	je	.L161
	cmpl	$13, %edx
	.loc 1 33 0
	movb	$-12, 12(%rax)
.LVL264:
	.loc 1 35 0
	leaq	13(%rax), %rcx
.LVL265:
	je	.L162
	cmpl	$15, %edx
	.loc 1 33 0
	movb	$-13, 13(%rax)
.LVL266:
	.loc 1 35 0
	leaq	14(%rax), %rcx
.LVL267:
	jne	.L163
	leaq	15(%rax), %rcx
.LVL268:
	.loc 1 33 0
	movb	$-14, 14(%rax)
.LVL269:
	.loc 1 35 0
	movl	$12582897, %esi
	.loc 1 34 0
	movl	$12582897, %r8d
.LVL270:
.L119:
	movl	%r8d, (%rsp)
	movl	$12582912, %edi
	movd	(%rsp), %xmm2
	subl	%edx, %edi
	movl	%edx, %edx
	movl	%edi, %r9d
	addq	%rdx, %rax
	.loc 1 31 0
	xorl	%edx, %edx
	pshufd	$0, %xmm2, %xmm2
	shrl	$4, %r9d
	paddd	.LC0(%rip), %xmm2
	.p2align 4,,10
	.p2align 3
.L121:
	.loc 1 33 0
	movdqa	%xmm2, %xmm1
	addl	$1, %edx
	movdqa	%xmm2, %xmm10
	addq	$16, %rax
	paddd	%xmm6, %xmm1
	movdqa	%xmm2, %xmm0
	punpcklwd	%xmm1, %xmm10
	movdqa	%xmm2, %xmm9
	punpckhwd	%xmm1, %xmm0
	paddd	%xmm4, %xmm9
	movdqa	%xmm10, %xmm1
	movdqa	%xmm10, %xmm8
	punpcklwd	%xmm0, %xmm1
	punpckhwd	%xmm0, %xmm8
	movdqa	%xmm2, %xmm0
	paddd	%xmm7, %xmm2
	paddd	%xmm5, %xmm0
	punpcklwd	%xmm8, %xmm1
	movdqa	%xmm0, %xmm8
	punpcklwd	%xmm9, %xmm0
	punpckhwd	%xmm9, %xmm8
	movdqa	%xmm0, %xmm9
	pand	%xmm3, %xmm1
	punpckhwd	%xmm8, %xmm9
	punpcklwd	%xmm8, %xmm0
	punpcklwd	%xmm9, %xmm0
	pand	%xmm3, %xmm0
	packuswb	%xmm0, %xmm1
	movaps	%xmm1, -16(%rax)
	cmpl	%edx, %r9d
	ja	.L121
	movl	%edi, %r9d
	movl	%r8d, %edx
	andl	$-16, %r9d
	movl	%r9d, %eax
	subl	%r9d, %edx
	subl	%r9d, %esi
	addq	%rcx, %rax
	cmpl	%r9d, %edi
	je	.L122
.LVL271:
	.loc 1 32 0
	cmpl	$1, %esi
	.loc 1 33 0
	movb	%dl, (%rax)
	.loc 1 34 0
	leal	-1(%rdx), %ecx
.LVL272:
	.loc 1 32 0
	je	.L122
	cmpl	$2, %esi
	.loc 1 33 0
	movb	%cl, 1(%rax)
	.loc 1 34 0
	leal	-2(%rdx), %ecx
.LVL273:
	.loc 1 32 0
	je	.L122
	cmpl	$3, %esi
	.loc 1 33 0
	movb	%cl, 2(%rax)
	.loc 1 34 0
	leal	-3(%rdx), %ecx
.LVL274:
	.loc 1 32 0
	je	.L122
	cmpl	$4, %esi
	.loc 1 33 0
	movb	%cl, 3(%rax)
	.loc 1 34 0
	leal	-4(%rdx), %ecx
.LVL275:
	.loc 1 32 0
	je	.L122
	cmpl	$5, %esi
	.loc 1 33 0
	movb	%cl, 4(%rax)
	.loc 1 34 0
	leal	-5(%rdx), %ecx
.LVL276:
	.loc 1 32 0
	je	.L122
	cmpl	$6, %esi
	.loc 1 33 0
	movb	%cl, 5(%rax)
	.loc 1 34 0
	leal	-6(%rdx), %ecx
.LVL277:
	.loc 1 32 0
	je	.L122
	cmpl	$7, %esi
	.loc 1 33 0
	movb	%cl, 6(%rax)
	.loc 1 34 0
	leal	-7(%rdx), %ecx
.LVL278:
	.loc 1 32 0
	je	.L122
	cmpl	$8, %esi
	.loc 1 33 0
	movb	%cl, 7(%rax)
	.loc 1 34 0
	leal	-8(%rdx), %ecx
.LVL279:
	.loc 1 32 0
	je	.L122
	cmpl	$9, %esi
	.loc 1 33 0
	movb	%cl, 8(%rax)
	.loc 1 34 0
	leal	-9(%rdx), %ecx
.LVL280:
	.loc 1 32 0
	je	.L122
	cmpl	$10, %esi
	.loc 1 33 0
	movb	%cl, 9(%rax)
	.loc 1 34 0
	leal	-10(%rdx), %ecx
.LVL281:
	.loc 1 32 0
	je	.L122
	cmpl	$11, %esi
	.loc 1 33 0
	movb	%cl, 10(%rax)
	.loc 1 34 0
	leal	-11(%rdx), %ecx
.LVL282:
	.loc 1 32 0
	je	.L122
	cmpl	$12, %esi
	.loc 1 33 0
	movb	%cl, 11(%rax)
	.loc 1 34 0
	leal	-12(%rdx), %ecx
.LVL283:
	.loc 1 32 0
	je	.L122
	cmpl	$13, %esi
	.loc 1 33 0
	movb	%cl, 12(%rax)
	.loc 1 34 0
	leal	-13(%rdx), %ecx
.LVL284:
	.loc 1 32 0
	je	.L122
	.loc 1 34 0
	subl	$14, %edx
	.loc 1 32 0
	cmpl	$14, %esi
	.loc 1 33 0
	movb	%cl, 13(%rax)
.LVL285:
	.loc 1 32 0
	je	.L122
	.loc 1 33 0
	movb	%dl, 14(%rax)
.LVL286:
.L122:
.LBE135:
.LBE134:
.LBB138:
.LBB139:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtsc
# 0 "" 2
.LVL287:
	.loc 1 22 0
#NO_APP
	salq	$32, %rdx
.LVL288:
.LBE139:
.LBE138:
	.loc 1 91 0
	movq	(%r14,%r15), %r15
	movslq	(%r12), %r8
.LBB142:
.LBB140:
	.loc 1 22 0
	orq	%rax, %rdx
.LBE140:
.LBE142:
	.loc 1 91 0
	movq	dst(%rip), %rdi
.LBB143:
.LBB141:
	.loc 1 22 0
	movq	%rdx, %r9
.LVL289:
.LBE141:
.LBE143:
	.loc 1 91 0
	movslq	0(%rbp), %rdx
	addq	src(%rip), %rdx
.LBB144:
.LBB145:
	.loc 1 43 0
	testq	%r15, %r15
.LBE145:
.LBE144:
	.loc 1 91 0
	leaq	(%rdi,%r8), %rcx
.LVL290:
.LBB150:
.LBB146:
	.loc 1 43 0
	je	.L123
	movq	%rcx, %rsi
	leaq	-1(%r15), %r10
	movl	$17, %r11d
	negq	%rsi
	andl	$15, %esi
	leaq	15(%rsi), %rax
	cmpq	$17, %rax
	cmovb	%r11, %rax
	cmpq	%rax, %r10
	jb	.L124
	testq	%rsi, %rsi
	je	.L164
	cmpq	$1, %rsi
	.loc 1 44 0
	leaq	1(%rdx), %rax
.LVL291:
	leaq	1(%rcx), %r11
.LVL292:
	movb	%dl, (%rcx)
.LVL293:
	je	.L125
	cmpq	$2, %rsi
	leaq	2(%rdx), %r13
.LVL294:
	leaq	2(%rcx), %r11
.LVL295:
	movb	%al, 1(%rcx)
.LVL296:
	.loc 1 45 0
	leaq	-2(%r15), %r10
.LVL297:
	je	.L171
	cmpq	$3, %rsi
	.loc 1 44 0
	leaq	3(%rdx), %rax
.LVL298:
	leaq	3(%rcx), %r11
.LVL299:
	movb	%r13b, 2(%rcx)
.LVL300:
	.loc 1 45 0
	leaq	-3(%r15), %r10
.LVL301:
	je	.L125
	cmpq	$4, %rsi
	.loc 1 44 0
	leaq	4(%rdx), %r13
.LVL302:
	leaq	4(%rcx), %r11
.LVL303:
	movb	%al, 3(%rcx)
.LVL304:
	.loc 1 45 0
	leaq	-4(%r15), %r10
.LVL305:
	je	.L171
	cmpq	$5, %rsi
	.loc 1 44 0
	leaq	5(%rdx), %rax
.LVL306:
	leaq	5(%rcx), %r11
.LVL307:
	movb	%r13b, 4(%rcx)
.LVL308:
	.loc 1 45 0
	leaq	-5(%r15), %r10
.LVL309:
	je	.L125
	cmpq	$6, %rsi
	.loc 1 44 0
	leaq	6(%rdx), %r13
.LVL310:
	leaq	6(%rcx), %r11
.LVL311:
	movb	%al, 5(%rcx)
.LVL312:
	.loc 1 45 0
	leaq	-6(%r15), %r10
.LVL313:
	je	.L171
	cmpq	$7, %rsi
	.loc 1 44 0
	leaq	7(%rdx), %rax
.LVL314:
	leaq	7(%rcx), %r11
.LVL315:
	movb	%r13b, 6(%rcx)
.LVL316:
	.loc 1 45 0
	leaq	-7(%r15), %r10
.LVL317:
	je	.L125
	cmpq	$8, %rsi
	.loc 1 44 0
	leaq	8(%rdx), %r13
.LVL318:
	leaq	8(%rcx), %r11
.LVL319:
	movb	%al, 7(%rcx)
.LVL320:
	.loc 1 45 0
	leaq	-8(%r15), %r10
.LVL321:
	je	.L171
	cmpq	$9, %rsi
	.loc 1 44 0
	leaq	9(%rdx), %rax
.LVL322:
	leaq	9(%rcx), %r11
.LVL323:
	movb	%r13b, 8(%rcx)
.LVL324:
	.loc 1 45 0
	leaq	-9(%r15), %r10
.LVL325:
	je	.L125
	cmpq	$10, %rsi
	.loc 1 44 0
	leaq	10(%rdx), %r13
.LVL326:
	leaq	10(%rcx), %r11
.LVL327:
	movb	%al, 9(%rcx)
.LVL328:
	.loc 1 45 0
	leaq	-10(%r15), %r10
.LVL329:
	je	.L171
	cmpq	$11, %rsi
	.loc 1 44 0
	leaq	11(%rdx), %rax
.LVL330:
	leaq	11(%rcx), %r11
.LVL331:
	movb	%r13b, 10(%rcx)
.LVL332:
	.loc 1 45 0
	leaq	-11(%r15), %r10
.LVL333:
	je	.L125
	cmpq	$12, %rsi
	.loc 1 44 0
	leaq	12(%rdx), %r13
.LVL334:
	leaq	12(%rcx), %r11
.LVL335:
	movb	%al, 11(%rcx)
.LVL336:
	.loc 1 45 0
	leaq	-12(%r15), %r10
.LVL337:
	je	.L171
	cmpq	$13, %rsi
	.loc 1 44 0
	leaq	13(%rdx), %rax
.LVL338:
	leaq	13(%rcx), %r11
.LVL339:
	movb	%r13b, 12(%rcx)
.LVL340:
	.loc 1 45 0
	leaq	-13(%r15), %r10
.LVL341:
	je	.L125
	cmpq	$15, %rsi
	.loc 1 44 0
	leaq	14(%rdx), %r13
.LVL342:
	leaq	14(%rcx), %r11
.LVL343:
	movb	%al, 13(%rcx)
.LVL344:
	.loc 1 45 0
	leaq	-14(%r15), %r10
.LVL345:
	jne	.L171
	.loc 1 44 0
	leaq	15(%rdx), %rax
.LVL346:
	leaq	15(%rcx), %r11
.LVL347:
	.loc 1 45 0
	leaq	-15(%r15), %r10
.LVL348:
	.loc 1 44 0
	movb	%r13b, 14(%rcx)
.LVL349:
	.p2align 4,,10
	.p2align 3
.L125:
	subq	%rsi, %r15
	leaq	1(%rax), %rdx
	movq	%rax, (%rsp)
	leaq	-16(%r15), %rcx
.LVL350:
	movq	(%rsp), %xmm2
	movq	%rdx, (%rsp)
	leaq	(%r8,%rsi), %rdx
	movq	%r15, %r13
	shrq	$4, %rcx
	movhps	(%rsp), %xmm2
	.loc 1 43 0
	xorl	%esi, %esi
	movdqa	.LC10(%rip), %xmm11
	addq	$1, %rcx
	addq	%rdi, %rdx
	movdqa	.LC11(%rip), %xmm10
	movdqa	.LC12(%rip), %xmm9
	movdqa	.LC13(%rip), %xmm8
	.p2align 4,,10
	.p2align 3
.L127:
	.loc 1 44 0
	movdqa	%xmm2, %xmm1
	movdqa	%xmm2, %xmm13
	movdqa	.LC7(%rip), %xmm0
	addq	$1, %rsi
	paddq	%xmm8, %xmm13
	addq	$16, %rdx
	paddq	%xmm2, %xmm0
	shufps	$136, %xmm0, %xmm1
	movdqa	.LC9(%rip), %xmm12
	paddq	%xmm2, %xmm12
	movdqa	%xmm1, %xmm0
	movdqa	.LC8(%rip), %xmm1
	paddq	%xmm2, %xmm1
	shufps	$136, %xmm12, %xmm1
	movdqa	%xmm0, %xmm12
	punpcklwd	%xmm1, %xmm0
	punpckhwd	%xmm1, %xmm12
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm12, %xmm0
	punpckhwd	%xmm12, %xmm1
	movdqa	%xmm2, %xmm12
	paddq	%xmm10, %xmm12
	punpcklwd	%xmm1, %xmm0
	movdqa	%xmm2, %xmm1
	paddq	%xmm11, %xmm1
	shufps	$136, %xmm12, %xmm1
	movdqa	%xmm2, %xmm12
	pand	%xmm3, %xmm0
	paddq	.LC6(%rip), %xmm2
	paddq	%xmm9, %xmm12
	shufps	$136, %xmm13, %xmm12
	movdqa	%xmm1, %xmm13
	punpcklwd	%xmm12, %xmm1
	punpckhwd	%xmm12, %xmm13
	movdqa	%xmm1, %xmm12
	punpcklwd	%xmm13, %xmm1
	punpckhwd	%xmm13, %xmm12
	punpcklwd	%xmm12, %xmm1
	pand	%xmm3, %xmm1
	packuswb	%xmm1, %xmm0
	movaps	%xmm0, -16(%rdx)
	cmpq	%rsi, %rcx
	ja	.L127
	movq	%rcx, %rsi
	salq	$4, %rsi
	subq	%rsi, %r10
	cmpq	%rsi, %r13
	leaq	(%rax,%rsi), %rdx
	leaq	(%r11,%rsi), %rcx
	movq	%r10, %r15
	je	.L123
.L124:
	addq	%rcx, %r15
	.p2align 4,,10
	.p2align 3
.L129:
.LVL351:
	addq	$1, %rcx
.LVL352:
	movb	%dl, -1(%rcx)
	addq	$1, %rdx
.LVL353:
	.loc 1 43 0
	cmpq	%r15, %rcx
	jne	.L129
.LVL354:
.L123:
	movaps	%xmm3, 64(%rsp)
	movaps	%xmm4, 48(%rsp)
	movaps	%xmm5, 32(%rsp)
	movaps	%xmm6, 16(%rsp)
	movaps	%xmm7, (%rsp)
.LVL355:
.LBE146:
.LBE150:
.LBB151:
.LBB152:
	.loc 1 21 0
#APP
# 21 "main.c" 1
	rdtsc
# 0 "" 2
.LVL356:
	.loc 1 22 0
#NO_APP
	salq	$32, %rdx
.LBE152:
.LBE151:
.LBB154:
.LBB155:
	.loc 2 104 0
	leaq	.LC17(%rip), %rsi
	movl	$1, %edi
.LBE155:
.LBE154:
.LBB157:
.LBB153:
	.loc 1 22 0
	orq	%rdx, %rax
.LBE153:
.LBE157:
	.loc 1 93 0
	subq	%r9, %rax
	movq	%rax, %rdx
.LBB158:
.LBB156:
	.loc 2 104 0
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL357:
	movdqa	64(%rsp), %xmm3
	movdqa	48(%rsp), %xmm4
	movdqa	32(%rsp), %xmm5
	movdqa	16(%rsp), %xmm6
	movdqa	(%rsp), %xmm7
.LVL358:
.L131:
.LBE156:
.LBE158:
.LBB159:
.LBB160:
	.loc 2 104 0 is_stmt 0 discriminator 2
	leaq	.LC14(%rip), %rdi
	addq	$1, %rbx
.LVL359:
	addq	$4, %r12
	movaps	%xmm3, 64(%rsp)
	addq	$4, %rbp
	movaps	%xmm4, 48(%rsp)
	movaps	%xmm5, 32(%rsp)
	movaps	%xmm6, 16(%rsp)
	movaps	%xmm7, (%rsp)
.LVL360:
	call	puts@PLT
.LVL361:
.LBE160:
.LBE159:
	.loc 1 71 0 is_stmt 1 discriminator 2
	cmpq	$16, %rbx
	movdqa	(%rsp), %xmm7
	movdqa	16(%rsp), %xmm6
	movdqa	32(%rsp), %xmm5
	movdqa	48(%rsp), %xmm4
	movdqa	64(%rsp), %xmm3
	jne	.L130
.LBE76:
	.loc 1 98 0
	addq	$104, %rsp
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
.LVL362:
	.p2align 4,,10
	.p2align 3
.L113:
	.cfi_restore_state
.LBB175:
.LBB161:
.LBB162:
	.loc 2 104 0
	leaq	.LC18(%rip), %rdi
	movaps	%xmm3, 64(%rsp)
	movaps	%xmm4, 48(%rsp)
	movaps	%xmm5, 32(%rsp)
	movaps	%xmm6, 16(%rsp)
	movaps	%xmm7, (%rsp)
.LVL363:
	call	puts@PLT
.LVL364:
	movdqa	(%rsp), %xmm7
	movdqa	16(%rsp), %xmm6
	movdqa	32(%rsp), %xmm5
	movdqa	48(%rsp), %xmm4
	movdqa	64(%rsp), %xmm3
	jmp	.L131
.LVL365:
	.p2align 4,,10
	.p2align 3
.L171:
.LBE162:
.LBE161:
.LBB163:
.LBB147:
	.loc 1 44 0
	movq	%r13, %rax
	jmp	.L125
.LVL366:
.L136:
.LBE147:
.LBE163:
.LBB164:
.LBB81:
	.loc 1 35 0
	movl	$12582910, %edi
	.loc 1 34 0
	movl	$12582910, (%rsp)
	jmp	.L108
.LVL367:
.L135:
	.loc 1 35 0
	movl	$12582911, %edi
	.loc 1 34 0
	movl	$12582911, (%rsp)
	jmp	.L108
.LVL368:
.L134:
	.loc 1 31 0
	movq	%rax, %rcx
	movl	$12582912, %edi
	movl	$12582912, (%rsp)
	jmp	.L108
.LVL369:
.L137:
	.loc 1 35 0
	movl	$12582909, %edi
	.loc 1 34 0
	movl	$12582909, (%rsp)
	jmp	.L108
.LVL370:
.L139:
	.loc 1 35 0
	movl	$12582907, %edi
	.loc 1 34 0
	movl	$12582907, (%rsp)
	jmp	.L108
.LVL371:
.L138:
	.loc 1 35 0
	movl	$12582908, %edi
	.loc 1 34 0
	movl	$12582908, (%rsp)
	jmp	.L108
.LVL372:
.L141:
	.loc 1 35 0
	movl	$12582905, %edi
	.loc 1 34 0
	movl	$12582905, (%rsp)
	jmp	.L108
.LVL373:
.L140:
	.loc 1 35 0
	movl	$12582906, %edi
	.loc 1 34 0
	movl	$12582906, (%rsp)
	jmp	.L108
.LVL374:
.L143:
	.loc 1 35 0
	movl	$12582903, %edi
	.loc 1 34 0
	movl	$12582903, (%rsp)
	jmp	.L108
.LVL375:
.L142:
	.loc 1 35 0
	movl	$12582904, %edi
	.loc 1 34 0
	movl	$12582904, (%rsp)
	jmp	.L108
.LVL376:
.L145:
	.loc 1 35 0
	movl	$12582901, %edi
	.loc 1 34 0
	movl	$12582901, (%rsp)
	jmp	.L108
.LVL377:
.L144:
	.loc 1 35 0
	movl	$12582902, %edi
	.loc 1 34 0
	movl	$12582902, (%rsp)
	jmp	.L108
.LVL378:
.L175:
.LBE81:
.LBE164:
.LBB165:
.LBB108:
	.loc 1 35 0
	movl	$12582909, %r8d
	.loc 1 34 0
	movl	$12582909, %ecx
	jmp	.L132
.LVL379:
.L174:
	.loc 1 35 0
	movl	$12582910, %r8d
	.loc 1 34 0
	movl	$12582910, %ecx
	jmp	.L132
.LVL380:
.L173:
	.loc 1 35 0
	movl	$12582911, %r8d
	.loc 1 34 0
	movl	$12582911, %ecx
	jmp	.L132
.LVL381:
.L172:
	.loc 1 31 0
	movq	%rax, %rsi
	movl	$12582912, %r8d
	movl	$12582912, %ecx
	jmp	.L132
.LVL382:
.L148:
.LBE108:
.LBE165:
.LBB166:
.LBB82:
	.loc 1 35 0
	movl	$12582898, %edi
	.loc 1 34 0
	movl	$12582898, (%rsp)
	jmp	.L108
.LVL383:
.L176:
.LBE82:
.LBE166:
.LBB167:
.LBB109:
	.loc 1 35 0
	movl	$12582908, %r8d
	.loc 1 34 0
	movl	$12582908, %ecx
	jmp	.L132
.LVL384:
.L147:
.LBE109:
.LBE167:
.LBB168:
.LBB83:
	.loc 1 35 0
	movl	$12582899, %edi
	.loc 1 34 0
	movl	$12582899, (%rsp)
	jmp	.L108
.LVL385:
.L146:
	.loc 1 35 0
	movl	$12582900, %edi
	.loc 1 34 0
	movl	$12582900, (%rsp)
	jmp	.L108
.LVL386:
.L177:
.LBE83:
.LBE168:
.LBB169:
.LBB110:
	.loc 1 35 0
	movl	$12582907, %r8d
	.loc 1 34 0
	movl	$12582907, %ecx
	jmp	.L132
.LVL387:
.L164:
.LBE110:
.LBE169:
.LBB170:
.LBB148:
	.loc 1 43 0
	movq	%r15, %r10
.LBE148:
.LBE170:
	.loc 1 91 0
	movq	%rcx, %r11
.LBB171:
.LBB149:
	.loc 1 43 0
	movq	%rdx, %rax
	jmp	.L125
.LVL388:
.L155:
.LBE149:
.LBE171:
.LBB172:
.LBB136:
	.loc 1 35 0
	movl	$12582906, %esi
	.loc 1 34 0
	movl	$12582906, %r8d
	jmp	.L119
.LVL389:
.L154:
	.loc 1 35 0
	movl	$12582907, %esi
	.loc 1 34 0
	movl	$12582907, %r8d
	jmp	.L119
.LVL390:
.L153:
	.loc 1 35 0
	movl	$12582908, %esi
	.loc 1 34 0
	movl	$12582908, %r8d
	jmp	.L119
.LVL391:
.L152:
	.loc 1 35 0
	movl	$12582909, %esi
	.loc 1 34 0
	movl	$12582909, %r8d
	jmp	.L119
.LVL392:
.L151:
	.loc 1 35 0
	movl	$12582910, %esi
	.loc 1 34 0
	movl	$12582910, %r8d
	jmp	.L119
.LVL393:
.L150:
	.loc 1 35 0
	movl	$12582911, %esi
	.loc 1 34 0
	movl	$12582911, %r8d
	jmp	.L119
.LVL394:
.L149:
	.loc 1 31 0
	movq	%rax, %rcx
	movl	$12582912, %esi
	movl	$12582912, %r8d
	jmp	.L119
.LVL395:
.L184:
.LBE136:
.LBE172:
.LBB173:
.LBB111:
	.loc 1 35 0
	movl	$12582900, %r8d
	.loc 1 34 0
	movl	$12582900, %ecx
	jmp	.L132
.LVL396:
.L183:
	.loc 1 35 0
	movl	$12582901, %r8d
	.loc 1 34 0
	movl	$12582901, %ecx
	jmp	.L132
.LVL397:
.L182:
	.loc 1 35 0
	movl	$12582902, %r8d
	.loc 1 34 0
	movl	$12582902, %ecx
	jmp	.L132
.LVL398:
.L181:
	.loc 1 35 0
	movl	$12582903, %r8d
	.loc 1 34 0
	movl	$12582903, %ecx
	jmp	.L132
.LVL399:
.L180:
	.loc 1 35 0
	movl	$12582904, %r8d
	.loc 1 34 0
	movl	$12582904, %ecx
	jmp	.L132
.LVL400:
.L179:
	.loc 1 35 0
	movl	$12582905, %r8d
	.loc 1 34 0
	movl	$12582905, %ecx
	jmp	.L132
.LVL401:
.L178:
	.loc 1 35 0
	movl	$12582906, %r8d
	.loc 1 34 0
	movl	$12582906, %ecx
	jmp	.L132
.LVL402:
.L186:
	.loc 1 35 0
	movl	$12582898, %r8d
	.loc 1 34 0
	movl	$12582898, %ecx
	jmp	.L132
.LVL403:
.L185:
	.loc 1 35 0
	movl	$12582899, %r8d
	.loc 1 34 0
	movl	$12582899, %ecx
	jmp	.L132
.LVL404:
.L163:
.LBE111:
.LBE173:
.LBB174:
.LBB137:
	.loc 1 35 0
	movl	$12582898, %esi
	.loc 1 34 0
	movl	$12582898, %r8d
	jmp	.L119
.LVL405:
.L162:
	.loc 1 35 0
	movl	$12582899, %esi
	.loc 1 34 0
	movl	$12582899, %r8d
	jmp	.L119
.LVL406:
.L161:
	.loc 1 35 0
	movl	$12582900, %esi
	.loc 1 34 0
	movl	$12582900, %r8d
	jmp	.L119
.LVL407:
.L160:
	.loc 1 35 0
	movl	$12582901, %esi
	.loc 1 34 0
	movl	$12582901, %r8d
	jmp	.L119
.LVL408:
.L159:
	.loc 1 35 0
	movl	$12582902, %esi
	.loc 1 34 0
	movl	$12582902, %r8d
	jmp	.L119
.LVL409:
.L158:
	.loc 1 35 0
	movl	$12582903, %esi
	.loc 1 34 0
	movl	$12582903, %r8d
	jmp	.L119
.LVL410:
.L157:
	.loc 1 35 0
	movl	$12582904, %esi
	.loc 1 34 0
	movl	$12582904, %r8d
	jmp	.L119
.LVL411:
.L156:
	.loc 1 35 0
	movl	$12582905, %esi
	.loc 1 34 0
	movl	$12582905, %r8d
	jmp	.L119
.LBE137:
.LBE174:
.LBE175:
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
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	0
	.long	-1
	.long	-2
	.long	-3
	.align 16
.LC1:
	.long	-16
	.long	-16
	.long	-16
	.long	-16
	.align 16
.LC2:
	.long	-4
	.long	-4
	.long	-4
	.long	-4
	.align 16
.LC3:
	.long	-8
	.long	-8
	.long	-8
	.long	-8
	.align 16
.LC4:
	.long	-12
	.long	-12
	.long	-12
	.long	-12
	.align 16
.LC5:
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.align 16
.LC6:
	.quad	16
	.quad	16
	.align 16
.LC7:
	.quad	2
	.quad	2
	.align 16
.LC8:
	.quad	4
	.quad	4
	.align 16
.LC9:
	.quad	6
	.quad	6
	.align 16
.LC10:
	.quad	8
	.quad	8
	.align 16
.LC11:
	.quad	10
	.quad	10
	.align 16
.LC12:
	.quad	12
	.quad	12
	.align 16
.LC13:
	.quad	14
	.quad	14
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
	.long	0xbc8
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF85
	.byte	0xc
	.long	.LASF86
	.long	.LASF87
	.long	.Ldebug_ranges0+0x410
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
	.long	0x965
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
	.long	.LLST9
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0x40
	.long	0x8fa
	.uleb128 0x1b
	.string	"i"
	.byte	0x1
	.byte	0x47
	.long	0x5e
	.long	.LLST11
	.uleb128 0x1c
	.long	0xa7e
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.byte	0x1
	.byte	0x48
	.long	0x486
	.uleb128 0x1d
	.long	0xa8e
	.long	.LLST12
	.uleb128 0x1e
	.quad	.LVL124
	.long	0xb40
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
	.quad	.LC15
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x9d0
	.quad	.LBB79
	.long	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x49
	.long	0x4b2
	.uleb128 0x1d
	.long	0x9dc
	.long	.LLST13
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x70
	.uleb128 0x22
	.long	0xabf
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0xa1a
	.quad	.LBB84
	.quad	.LBE84-.LBB84
	.byte	0x1
	.byte	0x4a
	.long	0x504
	.uleb128 0x1d
	.long	0xa40
	.long	.LLST14
	.uleb128 0x1d
	.long	0xa35
	.long	.LLST15
	.uleb128 0x1d
	.long	0xa2a
	.long	.LLST16
	.uleb128 0x1e
	.quad	.LVL174
	.long	0xb4b
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
	.uleb128 0x20
	.long	0x9f3
	.quad	.LBB86
	.long	.Ldebug_ranges0+0xc0
	.byte	0x1
	.byte	0x4b
	.long	0x52c
	.uleb128 0x21
	.long	.Ldebug_ranges0+0xc0
	.uleb128 0x22
	.long	0xa03
	.uleb128 0x22
	.long	0xa0e
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x9f3
	.quad	.LBB91
	.long	.Ldebug_ranges0+0x100
	.byte	0x1
	.byte	0x4d
	.long	0x554
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x100
	.uleb128 0x22
	.long	0xa03
	.uleb128 0x22
	.long	0xa0e
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x965
	.quad	.LBB94
	.long	.Ldebug_ranges0+0x130
	.byte	0x1
	.byte	0x4e
	.long	0x587
	.uleb128 0x1d
	.long	0x98b
	.long	.LLST17
	.uleb128 0x1d
	.long	0x980
	.long	.LLST18
	.uleb128 0x1d
	.long	0x975
	.long	.LLST19
	.byte	0
	.uleb128 0x20
	.long	0xa7e
	.quad	.LBB99
	.long	.Ldebug_ranges0+0x160
	.byte	0x1
	.byte	0x51
	.long	0x5c8
	.uleb128 0x1d
	.long	0xa8e
	.long	.LLST20
	.uleb128 0x1e
	.quad	.LVL182
	.long	0xb40
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
	.quad	.LC19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0xa1a
	.quad	.LBB103
	.quad	.LBE103-.LBB103
	.byte	0x1
	.byte	0x52
	.long	0x61a
	.uleb128 0x1d
	.long	0xa40
	.long	.LLST21
	.uleb128 0x1d
	.long	0xa35
	.long	.LLST22
	.uleb128 0x1d
	.long	0xa2a
	.long	.LLST23
	.uleb128 0x1e
	.quad	.LVL183
	.long	0xb4b
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
	.uleb128 0x20
	.long	0x9d0
	.quad	.LBB105
	.long	.Ldebug_ranges0+0x190
	.byte	0x1
	.byte	0x53
	.long	0x646
	.uleb128 0x1d
	.long	0x9dc
	.long	.LLST24
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x190
	.uleb128 0x22
	.long	0xabf
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x9f3
	.quad	.LBB114
	.long	.Ldebug_ranges0+0x200
	.byte	0x1
	.byte	0x54
	.long	0x66e
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x200
	.uleb128 0x22
	.long	0xa03
	.uleb128 0x22
	.long	0xa0e
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0xa4c
	.quad	.LBB118
	.long	.Ldebug_ranges0+0x240
	.byte	0x1
	.byte	0x55
	.long	0x6ae
	.uleb128 0x1d
	.long	0xa72
	.long	.LLST25
	.uleb128 0x1d
	.long	0xa67
	.long	.LLST26
	.uleb128 0x1d
	.long	0xa5c
	.long	.LLST27
	.uleb128 0x23
	.quad	.LVL235
	.long	0xb5a
	.byte	0
	.uleb128 0x20
	.long	0x9f3
	.quad	.LBB123
	.long	.Ldebug_ranges0+0x270
	.byte	0x1
	.byte	0x56
	.long	0x6d6
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x270
	.uleb128 0x22
	.long	0xa03
	.uleb128 0x22
	.long	0xa0e
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0xa7e
	.quad	.LBB128
	.long	.Ldebug_ranges0+0x2a0
	.byte	0x1
	.byte	0x57
	.long	0x717
	.uleb128 0x1d
	.long	0xa8e
	.long	.LLST28
	.uleb128 0x1e
	.quad	.LVL237
	.long	0xb40
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
	.quad	.LC16
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0xa1a
	.quad	.LBB132
	.quad	.LBE132-.LBB132
	.byte	0x1
	.byte	0x58
	.long	0x769
	.uleb128 0x1d
	.long	0xa40
	.long	.LLST29
	.uleb128 0x1d
	.long	0xa35
	.long	.LLST30
	.uleb128 0x1d
	.long	0xa2a
	.long	.LLST31
	.uleb128 0x1e
	.quad	.LVL238
	.long	0xb4b
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
	.uleb128 0x20
	.long	0x9d0
	.quad	.LBB134
	.long	.Ldebug_ranges0+0x2d0
	.byte	0x1
	.byte	0x59
	.long	0x795
	.uleb128 0x1d
	.long	0x9dc
	.long	.LLST32
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x2d0
	.uleb128 0x22
	.long	0xabf
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x9f3
	.quad	.LBB138
	.long	.Ldebug_ranges0+0x310
	.byte	0x1
	.byte	0x5a
	.long	0x7c5
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x310
	.uleb128 0x24
	.long	0xa03
	.long	.LLST33
	.uleb128 0x24
	.long	0xa0e
	.long	.LLST34
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x995
	.quad	.LBB144
	.long	.Ldebug_ranges0+0x350
	.byte	0x1
	.byte	0x5b
	.long	0x803
	.uleb128 0x1d
	.long	0x9bb
	.long	.LLST35
	.uleb128 0x1d
	.long	0x9b0
	.long	.LLST36
	.uleb128 0x1d
	.long	0x9a5
	.long	.LLST37
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x350
	.uleb128 0x22
	.long	0xaff
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x9f3
	.quad	.LBB151
	.long	.Ldebug_ranges0+0x3b0
	.byte	0x1
	.byte	0x5c
	.long	0x82b
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x3b0
	.uleb128 0x22
	.long	0xa03
	.uleb128 0x22
	.long	0xa0e
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0xa7e
	.quad	.LBB154
	.long	.Ldebug_ranges0+0x3e0
	.byte	0x1
	.byte	0x5d
	.long	0x86c
	.uleb128 0x1d
	.long	0xa8e
	.long	.LLST38
	.uleb128 0x1e
	.quad	.LVL357
	.long	0xb40
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
	.quad	.LC17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0xa7e
	.quad	.LBB159
	.quad	.LBE159-.LBB159
	.byte	0x1
	.byte	0x5f
	.long	0x8ac
	.uleb128 0x1d
	.long	0xa8e
	.long	.LLST39
	.uleb128 0x1e
	.quad	.LVL361
	.long	0xb97
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC14
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0xa7e
	.quad	.LBB161
	.quad	.LBE161-.LBB161
	.byte	0x1
	.byte	0x4f
	.long	0x8ec
	.uleb128 0x1d
	.long	0xa8e
	.long	.LLST40
	.uleb128 0x1e
	.quad	.LVL364
	.long	0xb97
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC18
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LVL175
	.long	0xbb4
	.byte	0
	.uleb128 0x20
	.long	0xa7e
	.quad	.LBB70
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x46
	.long	0x936
	.uleb128 0x1d
	.long	0xa8e
	.long	.LLST10
	.uleb128 0x1e
	.quad	.LVL121
	.long	0xb97
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC14
	.byte	0
	.byte	0
	.uleb128 0x25
	.quad	.LVL118
	.long	0xbbf
	.long	0x94f
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0
	.uleb128 0x1e
	.quad	.LVL119
	.long	0xbbf
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF65
	.byte	0x1
	.byte	0x33
	.long	0x5e
	.byte	0x1
	.long	0x995
	.uleb128 0x27
	.long	.LASF64
	.byte	0x1
	.byte	0x33
	.long	0x89
	.uleb128 0x28
	.string	"src"
	.byte	0x1
	.byte	0x33
	.long	0x2ae
	.uleb128 0x28
	.string	"n"
	.byte	0x1
	.byte	0x33
	.long	0x29
	.byte	0
	.uleb128 0x26
	.long	.LASF66
	.byte	0x1
	.byte	0x29
	.long	0x82
	.byte	0x1
	.long	0x9d0
	.uleb128 0x27
	.long	.LASF64
	.byte	0x1
	.byte	0x29
	.long	0x82
	.uleb128 0x28
	.string	"src"
	.byte	0x1
	.byte	0x29
	.long	0x313
	.uleb128 0x28
	.string	"n"
	.byte	0x1
	.byte	0x29
	.long	0x29
	.uleb128 0x29
	.string	"tmp"
	.byte	0x1
	.byte	0x2a
	.long	0x89
	.byte	0
	.uleb128 0x2a
	.long	.LASF91
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.long	0x9f3
	.uleb128 0x27
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
	.uleb128 0x2b
	.long	.LASF92
	.byte	0x1
	.byte	0x13
	.long	0x34
	.byte	0x3
	.long	0xa1a
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
	.uleb128 0x2c
	.long	.LASF73
	.byte	0x3
	.byte	0x3b
	.long	0x82
	.byte	0x3
	.long	0xa4c
	.uleb128 0x27
	.long	.LASF70
	.byte	0x3
	.byte	0x3b
	.long	0x82
	.uleb128 0x27
	.long	.LASF71
	.byte	0x3
	.byte	0x3b
	.long	0x5e
	.uleb128 0x27
	.long	.LASF72
	.byte	0x3
	.byte	0x3b
	.long	0x29
	.byte	0
	.uleb128 0x2c
	.long	.LASF74
	.byte	0x3
	.byte	0x1f
	.long	0x82
	.byte	0x3
	.long	0xa7e
	.uleb128 0x27
	.long	.LASF70
	.byte	0x3
	.byte	0x1f
	.long	0x84
	.uleb128 0x27
	.long	.LASF75
	.byte	0x3
	.byte	0x1f
	.long	0x319
	.uleb128 0x27
	.long	.LASF72
	.byte	0x3
	.byte	0x1f
	.long	0x29
	.byte	0
	.uleb128 0x2c
	.long	.LASF76
	.byte	0x2
	.byte	0x66
	.long	0x5e
	.byte	0x3
	.long	0xa9b
	.uleb128 0x27
	.long	.LASF77
	.byte	0x2
	.byte	0x66
	.long	0x2b9
	.uleb128 0x2d
	.byte	0
	.uleb128 0x2e
	.long	0x9d0
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xac9
	.uleb128 0x1d
	.long	0x9dc
	.long	.LLST0
	.uleb128 0x24
	.long	0x9e7
	.long	.LLST1
	.byte	0
	.uleb128 0x2e
	.long	0x995
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0xb09
	.uleb128 0x1d
	.long	0x9a5
	.long	.LLST2
	.uleb128 0x1d
	.long	0x9b0
	.long	.LLST3
	.uleb128 0x1d
	.long	0x9bb
	.long	.LLST4
	.uleb128 0x24
	.long	0x9c4
	.long	.LLST5
	.byte	0
	.uleb128 0x2e
	.long	0x965
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0xb40
	.uleb128 0x1d
	.long	0x975
	.long	.LLST6
	.uleb128 0x1d
	.long	0x980
	.long	.LLST7
	.uleb128 0x1d
	.long	0x98b
	.long	.LLST8
	.byte	0
	.uleb128 0x2f
	.long	.LASF82
	.long	.LASF82
	.byte	0x2
	.byte	0x57
	.uleb128 0x30
	.long	.LASF73
	.long	.LASF78
	.byte	0xa
	.byte	0
	.long	.LASF73
	.uleb128 0x30
	.long	.LASF74
	.long	.LASF79
	.byte	0xa
	.byte	0
	.long	.LASF74
	.uleb128 0x31
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
	.uleb128 0x30
	.long	.LASF80
	.long	.LASF81
	.byte	0xa
	.byte	0
	.long	.LASF80
	.uleb128 0x31
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
	.uleb128 0x2f
	.long	.LASF83
	.long	.LASF83
	.byte	0x1
	.byte	0x1a
	.uleb128 0x32
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x36
	.byte	0
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST9:
	.quad	.LVL117
	.quad	.LVL122
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL121
	.quad	.LVL122
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL123
	.quad	.LVL124-1
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL124-1
	.quad	.LVL359
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL362
	.quad	.LFE56
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL123
	.quad	.LVL124
	.value	0xa
	.byte	0x3
	.quad	.LC15
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL124
	.quad	.LVL126
	.value	0x4
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.quad	.LVL126
	.quad	.LVL128
	.value	0x6
	.byte	0xc
	.long	0xbfffff
	.byte	0x9f
	.quad	.LVL128
	.quad	.LVL130
	.value	0x6
	.byte	0xc
	.long	0xbffffe
	.byte	0x9f
	.quad	.LVL130
	.quad	.LVL132
	.value	0x6
	.byte	0xc
	.long	0xbffffd
	.byte	0x9f
	.quad	.LVL132
	.quad	.LVL134
	.value	0x6
	.byte	0xc
	.long	0xbffffc
	.byte	0x9f
	.quad	.LVL134
	.quad	.LVL136
	.value	0x6
	.byte	0xc
	.long	0xbffffb
	.byte	0x9f
	.quad	.LVL136
	.quad	.LVL138
	.value	0x6
	.byte	0xc
	.long	0xbffffa
	.byte	0x9f
	.quad	.LVL138
	.quad	.LVL140
	.value	0x6
	.byte	0xc
	.long	0xbffff9
	.byte	0x9f
	.quad	.LVL140
	.quad	.LVL142
	.value	0x6
	.byte	0xc
	.long	0xbffff8
	.byte	0x9f
	.quad	.LVL142
	.quad	.LVL144
	.value	0x6
	.byte	0xc
	.long	0xbffff7
	.byte	0x9f
	.quad	.LVL144
	.quad	.LVL146
	.value	0x6
	.byte	0xc
	.long	0xbffff6
	.byte	0x9f
	.quad	.LVL146
	.quad	.LVL148
	.value	0x6
	.byte	0xc
	.long	0xbffff5
	.byte	0x9f
	.quad	.LVL148
	.quad	.LVL150
	.value	0x6
	.byte	0xc
	.long	0xbffff4
	.byte	0x9f
	.quad	.LVL150
	.quad	.LVL152
	.value	0x6
	.byte	0xc
	.long	0xbffff3
	.byte	0x9f
	.quad	.LVL152
	.quad	.LVL155
	.value	0x6
	.byte	0xc
	.long	0xbffff2
	.byte	0x9f
	.quad	.LVL155
	.quad	.LVL156
	.value	0x6
	.byte	0xc
	.long	0xbffff1
	.byte	0x9f
	.quad	.LVL157
	.quad	.LVL158
	.value	0x1
	.byte	0x50
	.quad	.LVL158
	.quad	.LVL171
	.value	0x1
	.byte	0x54
	.quad	.LVL366
	.quad	.LVL367
	.value	0x6
	.byte	0xc
	.long	0xbffffe
	.byte	0x9f
	.quad	.LVL367
	.quad	.LVL368
	.value	0x6
	.byte	0xc
	.long	0xbfffff
	.byte	0x9f
	.quad	.LVL368
	.quad	.LVL369
	.value	0x4
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.quad	.LVL369
	.quad	.LVL370
	.value	0x6
	.byte	0xc
	.long	0xbffffd
	.byte	0x9f
	.quad	.LVL370
	.quad	.LVL371
	.value	0x6
	.byte	0xc
	.long	0xbffffb
	.byte	0x9f
	.quad	.LVL371
	.quad	.LVL372
	.value	0x6
	.byte	0xc
	.long	0xbffffc
	.byte	0x9f
	.quad	.LVL372
	.quad	.LVL373
	.value	0x6
	.byte	0xc
	.long	0xbffff9
	.byte	0x9f
	.quad	.LVL373
	.quad	.LVL374
	.value	0x6
	.byte	0xc
	.long	0xbffffa
	.byte	0x9f
	.quad	.LVL374
	.quad	.LVL375
	.value	0x6
	.byte	0xc
	.long	0xbffff7
	.byte	0x9f
	.quad	.LVL375
	.quad	.LVL376
	.value	0x6
	.byte	0xc
	.long	0xbffff8
	.byte	0x9f
	.quad	.LVL376
	.quad	.LVL377
	.value	0x6
	.byte	0xc
	.long	0xbffff5
	.byte	0x9f
	.quad	.LVL377
	.quad	.LVL378
	.value	0x6
	.byte	0xc
	.long	0xbffff6
	.byte	0x9f
	.quad	.LVL382
	.quad	.LVL383
	.value	0x6
	.byte	0xc
	.long	0xbffff2
	.byte	0x9f
	.quad	.LVL384
	.quad	.LVL385
	.value	0x6
	.byte	0xc
	.long	0xbffff3
	.byte	0x9f
	.quad	.LVL385
	.quad	.LVL386
	.value	0x6
	.byte	0xc
	.long	0xbffff4
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL173
	.quad	.LVL174
	.value	0x4
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL173
	.quad	.LVL174
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL173
	.quad	.LVL174-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL176
	.quad	.LVL177
	.value	0x1
	.byte	0x59
	.quad	.LVL177
	.quad	.LVL178
	.value	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL178
	.quad	.LVL179
	.value	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.quad	.LVL179
	.quad	.LVL180
	.value	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL176
	.quad	.LVL177
	.value	0x1
	.byte	0x55
	.quad	.LVL177
	.quad	.LVL178
	.value	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL178
	.quad	.LVL179
	.value	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL179
	.quad	.LVL180
	.value	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL176
	.quad	.LVL177
	.value	0x1
	.byte	0x58
	.quad	.LVL177
	.quad	.LVL178
	.value	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL178
	.quad	.LVL179
	.value	0x8
	.byte	0x78
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL179
	.quad	.LVL180
	.value	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL181
	.quad	.LVL182
	.value	0xa
	.byte	0x3
	.quad	.LC19
	.byte	0x9f
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL182
	.quad	.LVL183
	.value	0x4
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL182
	.quad	.LVL183
	.value	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL182
	.quad	.LVL183-1
	.value	0x9
	.byte	0x3
	.quad	dst
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL183
	.quad	.LVL185
	.value	0x4
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.quad	.LVL185
	.quad	.LVL187
	.value	0x6
	.byte	0xc
	.long	0xbfffff
	.byte	0x9f
	.quad	.LVL187
	.quad	.LVL189
	.value	0x6
	.byte	0xc
	.long	0xbffffe
	.byte	0x9f
	.quad	.LVL189
	.quad	.LVL191
	.value	0x6
	.byte	0xc
	.long	0xbffffd
	.byte	0x9f
	.quad	.LVL191
	.quad	.LVL193
	.value	0x6
	.byte	0xc
	.long	0xbffffc
	.byte	0x9f
	.quad	.LVL193
	.quad	.LVL195
	.value	0x6
	.byte	0xc
	.long	0xbffffb
	.byte	0x9f
	.quad	.LVL195
	.quad	.LVL197
	.value	0x6
	.byte	0xc
	.long	0xbffffa
	.byte	0x9f
	.quad	.LVL197
	.quad	.LVL199
	.value	0x6
	.byte	0xc
	.long	0xbffff9
	.byte	0x9f
	.quad	.LVL199
	.quad	.LVL201
	.value	0x6
	.byte	0xc
	.long	0xbffff8
	.byte	0x9f
	.quad	.LVL201
	.quad	.LVL203
	.value	0x6
	.byte	0xc
	.long	0xbffff7
	.byte	0x9f
	.quad	.LVL203
	.quad	.LVL205
	.value	0x6
	.byte	0xc
	.long	0xbffff6
	.byte	0x9f
	.quad	.LVL205
	.quad	.LVL207
	.value	0x6
	.byte	0xc
	.long	0xbffff5
	.byte	0x9f
	.quad	.LVL207
	.quad	.LVL209
	.value	0x6
	.byte	0xc
	.long	0xbffff4
	.byte	0x9f
	.quad	.LVL209
	.quad	.LVL211
	.value	0x6
	.byte	0xc
	.long	0xbffff3
	.byte	0x9f
	.quad	.LVL211
	.quad	.LVL214
	.value	0x6
	.byte	0xc
	.long	0xbffff2
	.byte	0x9f
	.quad	.LVL214
	.quad	.LVL215
	.value	0x6
	.byte	0xc
	.long	0xbffff1
	.byte	0x9f
	.quad	.LVL216
	.quad	.LVL217
	.value	0x1
	.byte	0x52
	.quad	.LVL217
	.quad	.LVL231
	.value	0x1
	.byte	0x51
	.quad	.LVL378
	.quad	.LVL379
	.value	0x6
	.byte	0xc
	.long	0xbffffd
	.byte	0x9f
	.quad	.LVL379
	.quad	.LVL380
	.value	0x6
	.byte	0xc
	.long	0xbffffe
	.byte	0x9f
	.quad	.LVL380
	.quad	.LVL381
	.value	0x6
	.byte	0xc
	.long	0xbfffff
	.byte	0x9f
	.quad	.LVL381
	.quad	.LVL382
	.value	0x4
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.quad	.LVL383
	.quad	.LVL384
	.value	0x6
	.byte	0xc
	.long	0xbffffc
	.byte	0x9f
	.quad	.LVL386
	.quad	.LVL387
	.value	0x6
	.byte	0xc
	.long	0xbffffb
	.byte	0x9f
	.quad	.LVL395
	.quad	.LVL396
	.value	0x6
	.byte	0xc
	.long	0xbffff4
	.byte	0x9f
	.quad	.LVL396
	.quad	.LVL397
	.value	0x6
	.byte	0xc
	.long	0xbffff5
	.byte	0x9f
	.quad	.LVL397
	.quad	.LVL398
	.value	0x6
	.byte	0xc
	.long	0xbffff6
	.byte	0x9f
	.quad	.LVL398
	.quad	.LVL399
	.value	0x6
	.byte	0xc
	.long	0xbffff7
	.byte	0x9f
	.quad	.LVL399
	.quad	.LVL400
	.value	0x6
	.byte	0xc
	.long	0xbffff8
	.byte	0x9f
	.quad	.LVL400
	.quad	.LVL401
	.value	0x6
	.byte	0xc
	.long	0xbffff9
	.byte	0x9f
	.quad	.LVL401
	.quad	.LVL402
	.value	0x6
	.byte	0xc
	.long	0xbffffa
	.byte	0x9f
	.quad	.LVL402
	.quad	.LVL403
	.value	0x6
	.byte	0xc
	.long	0xbffff2
	.byte	0x9f
	.quad	.LVL403
	.quad	.LVL404
	.value	0x6
	.byte	0xc
	.long	0xbffff3
	.byte	0x9f
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL232
	.quad	.LVL235-1
	.value	0xc
	.byte	0x7f
	.sleb128 0
	.byte	0x3
	.quad	size-8
	.byte	0x22
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL232
	.quad	.LVL234
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
	.quad	.LVL234
	.quad	.LVL235-1
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL232
	.quad	.LVL233
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
	.quad	.LVL233
	.quad	.LVL235-1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL236
	.quad	.LVL237
	.value	0xa
	.byte	0x3
	.quad	.LC16
	.byte	0x9f
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL237
	.quad	.LVL238
	.value	0x4
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL237
	.quad	.LVL238
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL237
	.quad	.LVL238-1
	.value	0x9
	.byte	0x3
	.quad	dst
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL238
	.quad	.LVL240
	.value	0x4
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.quad	.LVL240
	.quad	.LVL242
	.value	0x6
	.byte	0xc
	.long	0xbfffff
	.byte	0x9f
	.quad	.LVL242
	.quad	.LVL244
	.value	0x6
	.byte	0xc
	.long	0xbffffe
	.byte	0x9f
	.quad	.LVL244
	.quad	.LVL246
	.value	0x6
	.byte	0xc
	.long	0xbffffd
	.byte	0x9f
	.quad	.LVL246
	.quad	.LVL248
	.value	0x6
	.byte	0xc
	.long	0xbffffc
	.byte	0x9f
	.quad	.LVL248
	.quad	.LVL250
	.value	0x6
	.byte	0xc
	.long	0xbffffb
	.byte	0x9f
	.quad	.LVL250
	.quad	.LVL252
	.value	0x6
	.byte	0xc
	.long	0xbffffa
	.byte	0x9f
	.quad	.LVL252
	.quad	.LVL254
	.value	0x6
	.byte	0xc
	.long	0xbffff9
	.byte	0x9f
	.quad	.LVL254
	.quad	.LVL256
	.value	0x6
	.byte	0xc
	.long	0xbffff8
	.byte	0x9f
	.quad	.LVL256
	.quad	.LVL258
	.value	0x6
	.byte	0xc
	.long	0xbffff7
	.byte	0x9f
	.quad	.LVL258
	.quad	.LVL260
	.value	0x6
	.byte	0xc
	.long	0xbffff6
	.byte	0x9f
	.quad	.LVL260
	.quad	.LVL262
	.value	0x6
	.byte	0xc
	.long	0xbffff5
	.byte	0x9f
	.quad	.LVL262
	.quad	.LVL264
	.value	0x6
	.byte	0xc
	.long	0xbffff4
	.byte	0x9f
	.quad	.LVL264
	.quad	.LVL266
	.value	0x6
	.byte	0xc
	.long	0xbffff3
	.byte	0x9f
	.quad	.LVL266
	.quad	.LVL269
	.value	0x6
	.byte	0xc
	.long	0xbffff2
	.byte	0x9f
	.quad	.LVL269
	.quad	.LVL270
	.value	0x6
	.byte	0xc
	.long	0xbffff1
	.byte	0x9f
	.quad	.LVL271
	.quad	.LVL272
	.value	0x1
	.byte	0x51
	.quad	.LVL272
	.quad	.LVL285
	.value	0x1
	.byte	0x52
	.quad	.LVL388
	.quad	.LVL389
	.value	0x6
	.byte	0xc
	.long	0xbffffa
	.byte	0x9f
	.quad	.LVL389
	.quad	.LVL390
	.value	0x6
	.byte	0xc
	.long	0xbffffb
	.byte	0x9f
	.quad	.LVL390
	.quad	.LVL391
	.value	0x6
	.byte	0xc
	.long	0xbffffc
	.byte	0x9f
	.quad	.LVL391
	.quad	.LVL392
	.value	0x6
	.byte	0xc
	.long	0xbffffd
	.byte	0x9f
	.quad	.LVL392
	.quad	.LVL393
	.value	0x6
	.byte	0xc
	.long	0xbffffe
	.byte	0x9f
	.quad	.LVL393
	.quad	.LVL394
	.value	0x6
	.byte	0xc
	.long	0xbfffff
	.byte	0x9f
	.quad	.LVL394
	.quad	.LVL395
	.value	0x4
	.byte	0x48
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.quad	.LVL404
	.quad	.LVL405
	.value	0x6
	.byte	0xc
	.long	0xbffff2
	.byte	0x9f
	.quad	.LVL405
	.quad	.LVL406
	.value	0x6
	.byte	0xc
	.long	0xbffff3
	.byte	0x9f
	.quad	.LVL406
	.quad	.LVL407
	.value	0x6
	.byte	0xc
	.long	0xbffff4
	.byte	0x9f
	.quad	.LVL407
	.quad	.LVL408
	.value	0x6
	.byte	0xc
	.long	0xbffff5
	.byte	0x9f
	.quad	.LVL408
	.quad	.LVL409
	.value	0x6
	.byte	0xc
	.long	0xbffff6
	.byte	0x9f
	.quad	.LVL409
	.quad	.LVL410
	.value	0x6
	.byte	0xc
	.long	0xbffff7
	.byte	0x9f
	.quad	.LVL410
	.quad	.LVL411
	.value	0x6
	.byte	0xc
	.long	0xbffff8
	.byte	0x9f
	.quad	.LVL411
	.quad	.LFE56
	.value	0x6
	.byte	0xc
	.long	0xbffff9
	.byte	0x9f
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL287
	.quad	.LVL289
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL287
	.quad	.LVL288
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL293
	.quad	.LVL296
	.value	0x1
	.byte	0x5a
	.quad	.LVL296
	.quad	.LVL297
	.value	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.quad	.LVL297
	.quad	.LVL300
	.value	0x1
	.byte	0x5a
	.quad	.LVL300
	.quad	.LVL301
	.value	0x3
	.byte	0x7f
	.sleb128 -3
	.byte	0x9f
	.quad	.LVL301
	.quad	.LVL304
	.value	0x1
	.byte	0x5a
	.quad	.LVL304
	.quad	.LVL305
	.value	0x3
	.byte	0x7f
	.sleb128 -4
	.byte	0x9f
	.quad	.LVL305
	.quad	.LVL308
	.value	0x1
	.byte	0x5a
	.quad	.LVL308
	.quad	.LVL309
	.value	0x3
	.byte	0x7f
	.sleb128 -5
	.byte	0x9f
	.quad	.LVL309
	.quad	.LVL312
	.value	0x1
	.byte	0x5a
	.quad	.LVL312
	.quad	.LVL313
	.value	0x3
	.byte	0x7f
	.sleb128 -6
	.byte	0x9f
	.quad	.LVL313
	.quad	.LVL316
	.value	0x1
	.byte	0x5a
	.quad	.LVL316
	.quad	.LVL317
	.value	0x3
	.byte	0x7f
	.sleb128 -7
	.byte	0x9f
	.quad	.LVL317
	.quad	.LVL320
	.value	0x1
	.byte	0x5a
	.quad	.LVL320
	.quad	.LVL321
	.value	0x3
	.byte	0x7f
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL321
	.quad	.LVL324
	.value	0x1
	.byte	0x5a
	.quad	.LVL324
	.quad	.LVL325
	.value	0x3
	.byte	0x7f
	.sleb128 -9
	.byte	0x9f
	.quad	.LVL325
	.quad	.LVL328
	.value	0x1
	.byte	0x5a
	.quad	.LVL328
	.quad	.LVL329
	.value	0x3
	.byte	0x7f
	.sleb128 -10
	.byte	0x9f
	.quad	.LVL329
	.quad	.LVL332
	.value	0x1
	.byte	0x5a
	.quad	.LVL332
	.quad	.LVL333
	.value	0x3
	.byte	0x7f
	.sleb128 -11
	.byte	0x9f
	.quad	.LVL333
	.quad	.LVL336
	.value	0x1
	.byte	0x5a
	.quad	.LVL336
	.quad	.LVL337
	.value	0x3
	.byte	0x7f
	.sleb128 -12
	.byte	0x9f
	.quad	.LVL337
	.quad	.LVL340
	.value	0x1
	.byte	0x5a
	.quad	.LVL340
	.quad	.LVL341
	.value	0x3
	.byte	0x7f
	.sleb128 -13
	.byte	0x9f
	.quad	.LVL341
	.quad	.LVL344
	.value	0x1
	.byte	0x5a
	.quad	.LVL344
	.quad	.LVL345
	.value	0x3
	.byte	0x7f
	.sleb128 -14
	.byte	0x9f
	.quad	.LVL345
	.quad	.LVL348
	.value	0x1
	.byte	0x5a
	.quad	.LVL348
	.quad	.LVL349
	.value	0x3
	.byte	0x7f
	.sleb128 -14
	.byte	0x9f
	.quad	.LVL365
	.quad	.LVL366
	.value	0x1
	.byte	0x5a
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL290
	.quad	.LVL291
	.value	0x1
	.byte	0x51
	.quad	.LVL291
	.quad	.LVL294
	.value	0x1
	.byte	0x50
	.quad	.LVL294
	.quad	.LVL298
	.value	0x1
	.byte	0x5d
	.quad	.LVL298
	.quad	.LVL302
	.value	0x1
	.byte	0x50
	.quad	.LVL302
	.quad	.LVL306
	.value	0x1
	.byte	0x5d
	.quad	.LVL306
	.quad	.LVL310
	.value	0x1
	.byte	0x50
	.quad	.LVL310
	.quad	.LVL314
	.value	0x1
	.byte	0x5d
	.quad	.LVL314
	.quad	.LVL318
	.value	0x1
	.byte	0x50
	.quad	.LVL318
	.quad	.LVL322
	.value	0x1
	.byte	0x5d
	.quad	.LVL322
	.quad	.LVL326
	.value	0x1
	.byte	0x50
	.quad	.LVL326
	.quad	.LVL330
	.value	0x1
	.byte	0x5d
	.quad	.LVL330
	.quad	.LVL334
	.value	0x1
	.byte	0x50
	.quad	.LVL334
	.quad	.LVL338
	.value	0x1
	.byte	0x5d
	.quad	.LVL338
	.quad	.LVL342
	.value	0x1
	.byte	0x50
	.quad	.LVL342
	.quad	.LVL346
	.value	0x1
	.byte	0x5d
	.quad	.LVL346
	.quad	.LVL349
	.value	0x1
	.byte	0x50
	.quad	.LVL351
	.quad	.LVL353
	.value	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.quad	.LVL353
	.quad	.LVL354
	.value	0x1
	.byte	0x51
	.quad	.LVL365
	.quad	.LVL366
	.value	0x1
	.byte	0x5d
	.quad	.LVL387
	.quad	.LVL388
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST37:
	.quad	.LVL290
	.quad	.LVL350
	.value	0x1
	.byte	0x52
	.quad	.LVL350
	.quad	.LVL355
	.value	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL365
	.quad	.LVL366
	.value	0x1
	.byte	0x52
	.quad	.LVL387
	.quad	.LVL388
	.value	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST38:
	.quad	.LVL356
	.quad	.LVL358
	.value	0xa
	.byte	0x3
	.quad	.LC17
	.byte	0x9f
	.quad	0
	.quad	0
.LLST39:
	.quad	.LVL360
	.quad	.LVL361
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2921
	.sleb128 0
	.quad	0
	.quad	0
.LLST40:
	.quad	.LVL363
	.quad	.LVL365
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2982
	.sleb128 0
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL120
	.quad	.LVL121
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2921
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
	.value	0x1
	.byte	0x51
	.quad	.LVL4
	.quad	.LVL32
	.value	0x1
	.byte	0x54
	.quad	.LVL33
	.quad	.LVL35
	.value	0x1
	.byte	0x54
	.quad	.LVL35
	.quad	.LVL36
	.value	0x1
	.byte	0x51
	.quad	.LVL36
	.quad	.LVL38
	.value	0x1
	.byte	0x55
	.quad	.LVL38
	.quad	.LVL39
	.value	0x1
	.byte	0x51
	.quad	.LVL40
	.quad	.LFE53
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL1
	.quad	.LVL3
	.value	0x1
	.byte	0x50
	.quad	.LVL3
	.quad	.LVL4
	.value	0x1
	.byte	0x58
	.quad	.LVL4
	.quad	.LVL5
	.value	0x3
	.byte	0x70
	.sleb128 2
	.byte	0x9f
	.quad	.LVL5
	.quad	.LVL6
	.value	0x1
	.byte	0x58
	.quad	.LVL6
	.quad	.LVL7
	.value	0x3
	.byte	0x70
	.sleb128 2
	.byte	0x9f
	.quad	.LVL7
	.quad	.LVL8
	.value	0x1
	.byte	0x58
	.quad	.LVL8
	.quad	.LVL9
	.value	0x3
	.byte	0x70
	.sleb128 3
	.byte	0x9f
	.quad	.LVL9
	.quad	.LVL10
	.value	0x1
	.byte	0x58
	.quad	.LVL10
	.quad	.LVL11
	.value	0x3
	.byte	0x70
	.sleb128 4
	.byte	0x9f
	.quad	.LVL11
	.quad	.LVL12
	.value	0x1
	.byte	0x58
	.quad	.LVL12
	.quad	.LVL13
	.value	0x3
	.byte	0x70
	.sleb128 5
	.byte	0x9f
	.quad	.LVL13
	.quad	.LVL14
	.value	0x1
	.byte	0x58
	.quad	.LVL14
	.quad	.LVL15
	.value	0x3
	.byte	0x70
	.sleb128 6
	.byte	0x9f
	.quad	.LVL15
	.quad	.LVL16
	.value	0x1
	.byte	0x58
	.quad	.LVL16
	.quad	.LVL17
	.value	0x3
	.byte	0x70
	.sleb128 7
	.byte	0x9f
	.quad	.LVL17
	.quad	.LVL18
	.value	0x1
	.byte	0x58
	.quad	.LVL18
	.quad	.LVL19
	.value	0x3
	.byte	0x70
	.sleb128 8
	.byte	0x9f
	.quad	.LVL19
	.quad	.LVL20
	.value	0x1
	.byte	0x58
	.quad	.LVL20
	.quad	.LVL21
	.value	0x3
	.byte	0x70
	.sleb128 9
	.byte	0x9f
	.quad	.LVL21
	.quad	.LVL22
	.value	0x1
	.byte	0x58
	.quad	.LVL22
	.quad	.LVL23
	.value	0x3
	.byte	0x70
	.sleb128 10
	.byte	0x9f
	.quad	.LVL23
	.quad	.LVL24
	.value	0x1
	.byte	0x58
	.quad	.LVL24
	.quad	.LVL25
	.value	0x3
	.byte	0x70
	.sleb128 11
	.byte	0x9f
	.quad	.LVL25
	.quad	.LVL26
	.value	0x1
	.byte	0x58
	.quad	.LVL26
	.quad	.LVL27
	.value	0x3
	.byte	0x70
	.sleb128 12
	.byte	0x9f
	.quad	.LVL27
	.quad	.LVL28
	.value	0x1
	.byte	0x58
	.quad	.LVL28
	.quad	.LVL29
	.value	0x3
	.byte	0x70
	.sleb128 13
	.byte	0x9f
	.quad	.LVL29
	.quad	.LVL30
	.value	0x1
	.byte	0x58
	.quad	.LVL30
	.quad	.LVL31
	.value	0x3
	.byte	0x70
	.sleb128 14
	.byte	0x9f
	.quad	.LVL33
	.quad	.LVL34
	.value	0x1
	.byte	0x50
	.quad	.LVL34
	.quad	.LVL35
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL35
	.quad	.LVL37
	.value	0x1
	.byte	0x50
	.quad	.LVL37
	.quad	.LVL38
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL38
	.quad	.LVL39
	.value	0x1
	.byte	0x50
	.quad	.LVL40
	.quad	.LFE53
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL41
	.quad	.LVL43
	.value	0x1
	.byte	0x55
	.quad	.LVL43
	.quad	.LFE54
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL41
	.quad	.LVL44
	.value	0x1
	.byte	0x54
	.quad	.LVL44
	.quad	.LVL47
	.value	0x1
	.byte	0x5a
	.quad	.LVL47
	.quad	.LVL51
	.value	0x1
	.byte	0x55
	.quad	.LVL51
	.quad	.LVL55
	.value	0x1
	.byte	0x5a
	.quad	.LVL55
	.quad	.LVL59
	.value	0x1
	.byte	0x55
	.quad	.LVL59
	.quad	.LVL63
	.value	0x1
	.byte	0x5a
	.quad	.LVL63
	.quad	.LVL67
	.value	0x1
	.byte	0x55
	.quad	.LVL67
	.quad	.LVL71
	.value	0x1
	.byte	0x5a
	.quad	.LVL71
	.quad	.LVL75
	.value	0x1
	.byte	0x55
	.quad	.LVL75
	.quad	.LVL79
	.value	0x1
	.byte	0x5a
	.quad	.LVL79
	.quad	.LVL83
	.value	0x1
	.byte	0x55
	.quad	.LVL83
	.quad	.LVL87
	.value	0x1
	.byte	0x5a
	.quad	.LVL87
	.quad	.LVL91
	.value	0x1
	.byte	0x55
	.quad	.LVL91
	.quad	.LVL95
	.value	0x1
	.byte	0x5a
	.quad	.LVL95
	.quad	.LVL99
	.value	0x1
	.byte	0x55
	.quad	.LVL99
	.quad	.LVL102
	.value	0x1
	.byte	0x5a
	.quad	.LVL103
	.quad	.LVL105
	.value	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.quad	.LVL105
	.quad	.LVL106
	.value	0x1
	.byte	0x54
	.quad	.LVL107
	.quad	.LVL108
	.value	0x1
	.byte	0x55
	.quad	.LVL108
	.quad	.LVL109
	.value	0x1
	.byte	0x54
	.quad	.LVL110
	.quad	.LFE54
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL41
	.quad	.LVL46
	.value	0x1
	.byte	0x51
	.quad	.LVL46
	.quad	.LVL49
	.value	0x1
	.byte	0x5b
	.quad	.LVL49
	.quad	.LVL50
	.value	0x3
	.byte	0x71
	.sleb128 -2
	.byte	0x9f
	.quad	.LVL50
	.quad	.LVL53
	.value	0x1
	.byte	0x5b
	.quad	.LVL53
	.quad	.LVL54
	.value	0x3
	.byte	0x71
	.sleb128 -3
	.byte	0x9f
	.quad	.LVL54
	.quad	.LVL57
	.value	0x1
	.byte	0x5b
	.quad	.LVL57
	.quad	.LVL58
	.value	0x3
	.byte	0x71
	.sleb128 -4
	.byte	0x9f
	.quad	.LVL58
	.quad	.LVL61
	.value	0x1
	.byte	0x5b
	.quad	.LVL61
	.quad	.LVL62
	.value	0x3
	.byte	0x71
	.sleb128 -5
	.byte	0x9f
	.quad	.LVL62
	.quad	.LVL65
	.value	0x1
	.byte	0x5b
	.quad	.LVL65
	.quad	.LVL66
	.value	0x3
	.byte	0x71
	.sleb128 -6
	.byte	0x9f
	.quad	.LVL66
	.quad	.LVL69
	.value	0x1
	.byte	0x5b
	.quad	.LVL69
	.quad	.LVL70
	.value	0x3
	.byte	0x71
	.sleb128 -7
	.byte	0x9f
	.quad	.LVL70
	.quad	.LVL73
	.value	0x1
	.byte	0x5b
	.quad	.LVL73
	.quad	.LVL74
	.value	0x3
	.byte	0x71
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL74
	.quad	.LVL77
	.value	0x1
	.byte	0x5b
	.quad	.LVL77
	.quad	.LVL78
	.value	0x3
	.byte	0x71
	.sleb128 -9
	.byte	0x9f
	.quad	.LVL78
	.quad	.LVL81
	.value	0x1
	.byte	0x5b
	.quad	.LVL81
	.quad	.LVL82
	.value	0x3
	.byte	0x71
	.sleb128 -10
	.byte	0x9f
	.quad	.LVL82
	.quad	.LVL85
	.value	0x1
	.byte	0x5b
	.quad	.LVL85
	.quad	.LVL86
	.value	0x3
	.byte	0x71
	.sleb128 -11
	.byte	0x9f
	.quad	.LVL86
	.quad	.LVL89
	.value	0x1
	.byte	0x5b
	.quad	.LVL89
	.quad	.LVL90
	.value	0x3
	.byte	0x71
	.sleb128 -12
	.byte	0x9f
	.quad	.LVL90
	.quad	.LVL93
	.value	0x1
	.byte	0x5b
	.quad	.LVL93
	.quad	.LVL94
	.value	0x3
	.byte	0x71
	.sleb128 -13
	.byte	0x9f
	.quad	.LVL94
	.quad	.LVL97
	.value	0x1
	.byte	0x5b
	.quad	.LVL97
	.quad	.LVL98
	.value	0x3
	.byte	0x71
	.sleb128 -14
	.byte	0x9f
	.quad	.LVL98
	.quad	.LVL101
	.value	0x1
	.byte	0x5b
	.quad	.LVL101
	.quad	.LVL102
	.value	0x3
	.byte	0x71
	.sleb128 -14
	.byte	0x9f
	.quad	.LVL107
	.quad	.LVL108
	.value	0x1
	.byte	0x5b
	.quad	.LVL108
	.quad	.LVL109
	.value	0x1
	.byte	0x51
	.quad	.LVL110
	.quad	.LFE54
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL42
	.quad	.LVL43
	.value	0x1
	.byte	0x55
	.quad	.LVL43
	.quad	.LVL45
	.value	0x1
	.byte	0x50
	.quad	.LVL45
	.quad	.LVL47
	.value	0x1
	.byte	0x52
	.quad	.LVL47
	.quad	.LVL48
	.value	0x3
	.byte	0x70
	.sleb128 2
	.byte	0x9f
	.quad	.LVL48
	.quad	.LVL51
	.value	0x1
	.byte	0x52
	.quad	.LVL51
	.quad	.LVL52
	.value	0x3
	.byte	0x70
	.sleb128 3
	.byte	0x9f
	.quad	.LVL52
	.quad	.LVL55
	.value	0x1
	.byte	0x52
	.quad	.LVL55
	.quad	.LVL56
	.value	0x3
	.byte	0x70
	.sleb128 4
	.byte	0x9f
	.quad	.LVL56
	.quad	.LVL59
	.value	0x1
	.byte	0x52
	.quad	.LVL59
	.quad	.LVL60
	.value	0x3
	.byte	0x70
	.sleb128 5
	.byte	0x9f
	.quad	.LVL60
	.quad	.LVL63
	.value	0x1
	.byte	0x52
	.quad	.LVL63
	.quad	.LVL64
	.value	0x3
	.byte	0x70
	.sleb128 6
	.byte	0x9f
	.quad	.LVL64
	.quad	.LVL67
	.value	0x1
	.byte	0x52
	.quad	.LVL67
	.quad	.LVL68
	.value	0x3
	.byte	0x70
	.sleb128 7
	.byte	0x9f
	.quad	.LVL68
	.quad	.LVL71
	.value	0x1
	.byte	0x52
	.quad	.LVL71
	.quad	.LVL72
	.value	0x3
	.byte	0x70
	.sleb128 8
	.byte	0x9f
	.quad	.LVL72
	.quad	.LVL75
	.value	0x1
	.byte	0x52
	.quad	.LVL75
	.quad	.LVL76
	.value	0x3
	.byte	0x70
	.sleb128 9
	.byte	0x9f
	.quad	.LVL76
	.quad	.LVL79
	.value	0x1
	.byte	0x52
	.quad	.LVL79
	.quad	.LVL80
	.value	0x3
	.byte	0x70
	.sleb128 10
	.byte	0x9f
	.quad	.LVL80
	.quad	.LVL83
	.value	0x1
	.byte	0x52
	.quad	.LVL83
	.quad	.LVL84
	.value	0x3
	.byte	0x70
	.sleb128 11
	.byte	0x9f
	.quad	.LVL84
	.quad	.LVL87
	.value	0x1
	.byte	0x52
	.quad	.LVL87
	.quad	.LVL88
	.value	0x3
	.byte	0x70
	.sleb128 12
	.byte	0x9f
	.quad	.LVL88
	.quad	.LVL91
	.value	0x1
	.byte	0x52
	.quad	.LVL91
	.quad	.LVL92
	.value	0x3
	.byte	0x70
	.sleb128 13
	.byte	0x9f
	.quad	.LVL92
	.quad	.LVL95
	.value	0x1
	.byte	0x52
	.quad	.LVL95
	.quad	.LVL96
	.value	0x3
	.byte	0x70
	.sleb128 14
	.byte	0x9f
	.quad	.LVL96
	.quad	.LVL99
	.value	0x1
	.byte	0x52
	.quad	.LVL99
	.quad	.LVL100
	.value	0x3
	.byte	0x70
	.sleb128 15
	.byte	0x9f
	.quad	.LVL100
	.quad	.LVL102
	.value	0x1
	.byte	0x52
	.quad	.LVL103
	.quad	.LVL106
	.value	0x1
	.byte	0x52
	.quad	.LVL107
	.quad	.LVL108
	.value	0x1
	.byte	0x52
	.quad	.LVL108
	.quad	.LVL109
	.value	0x1
	.byte	0x50
	.quad	.LVL110
	.quad	.LFE54
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL111
	.quad	.LVL114
	.value	0x1
	.byte	0x55
	.quad	.LVL114
	.quad	.LFE55
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL111
	.quad	.LVL115
	.value	0x1
	.byte	0x54
	.quad	.LVL115
	.quad	.LFE55
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL111
	.quad	.LVL112
	.value	0x1
	.byte	0x51
	.quad	.LVL112
	.quad	.LVL116
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
	.quad	.LBB175
	.quad	.LBE175
	.quad	0
	.quad	0
	.quad	.LBB79
	.quad	.LBE79
	.quad	.LBB164
	.quad	.LBE164
	.quad	.LBB166
	.quad	.LBE166
	.quad	.LBB168
	.quad	.LBE168
	.quad	0
	.quad	0
	.quad	.LBB86
	.quad	.LBE86
	.quad	.LBB90
	.quad	.LBE90
	.quad	.LBB97
	.quad	.LBE97
	.quad	0
	.quad	0
	.quad	.LBB91
	.quad	.LBE91
	.quad	.LBB98
	.quad	.LBE98
	.quad	0
	.quad	0
	.quad	.LBB94
	.quad	.LBE94
	.quad	.LBB112
	.quad	.LBE112
	.quad	0
	.quad	0
	.quad	.LBB99
	.quad	.LBE99
	.quad	.LBB102
	.quad	.LBE102
	.quad	0
	.quad	0
	.quad	.LBB105
	.quad	.LBE105
	.quad	.LBB113
	.quad	.LBE113
	.quad	.LBB165
	.quad	.LBE165
	.quad	.LBB167
	.quad	.LBE167
	.quad	.LBB169
	.quad	.LBE169
	.quad	.LBB173
	.quad	.LBE173
	.quad	0
	.quad	0
	.quad	.LBB114
	.quad	.LBE114
	.quad	.LBB121
	.quad	.LBE121
	.quad	.LBB126
	.quad	.LBE126
	.quad	0
	.quad	0
	.quad	.LBB118
	.quad	.LBE118
	.quad	.LBB122
	.quad	.LBE122
	.quad	0
	.quad	0
	.quad	.LBB123
	.quad	.LBE123
	.quad	.LBB127
	.quad	.LBE127
	.quad	0
	.quad	0
	.quad	.LBB128
	.quad	.LBE128
	.quad	.LBB131
	.quad	.LBE131
	.quad	0
	.quad	0
	.quad	.LBB134
	.quad	.LBE134
	.quad	.LBB172
	.quad	.LBE172
	.quad	.LBB174
	.quad	.LBE174
	.quad	0
	.quad	0
	.quad	.LBB138
	.quad	.LBE138
	.quad	.LBB142
	.quad	.LBE142
	.quad	.LBB143
	.quad	.LBE143
	.quad	0
	.quad	0
	.quad	.LBB144
	.quad	.LBE144
	.quad	.LBB150
	.quad	.LBE150
	.quad	.LBB163
	.quad	.LBE163
	.quad	.LBB170
	.quad	.LBE170
	.quad	.LBB171
	.quad	.LBE171
	.quad	0
	.quad	0
	.quad	.LBB151
	.quad	.LBE151
	.quad	.LBB157
	.quad	.LBE157
	.quad	0
	.quad	0
	.quad	.LBB154
	.quad	.LBE154
	.quad	.LBB158
	.quad	.LBE158
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
.LASF85:
	.string	"GNU C11 7.5.0 -mmmx -mtune=generic -march=x86-64 -g -O4 -fno-asynchronous-unwind-tables -fstack-protector-strong"
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
