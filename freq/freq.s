	.file	"freq.c"
	.text
.Ltext0:
	.globl	main
	.type	main, @function
main:
.LFB0:
	.file 1 "freq.c"
	.loc 1 4 0
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	subl	$48, %esp
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 4 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 10 0
	subl	$8, %esp
	pushl	$0
	leal	-28(%ebp), %eax
	pushl	%eax
	call	gettimeofday@PLT
	addl	$16, %esp
	.loc 1 11 0
#APP
# 11 "freq.c" 1
	push	%eax
	push	%ecx
	rdtsc
	mov	%eax,cycle_1_l
	mov	$0x7fffffff,%ecx
	L1:
	inc	%eax
	loop L1
	rdtsc
	mov	%eax,cycle_2_l
	pop	%ecx
	pop	%eax
	
# 0 "" 2
	.loc 1 25 0
#NO_APP
	subl	$8, %esp
	pushl	$0
	leal	-20(%ebp), %eax
	pushl	%eax
	call	gettimeofday@PLT
	addl	$16, %esp
	.loc 1 26 0
	movl	-48(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 27 0
	movl	-40(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 28 0
	movl	-20(%ebp), %edx
	movl	-28(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$1000000, %eax, %eax
	movl	-16(%ebp), %ecx
	movl	-24(%ebp), %edx
	subl	%edx, %ecx
	movl	%ecx, %edx
	addl	%edx, %eax
	movl	%eax, -32(%ebp)
	.loc 1 31 0
	nop
	.loc 1 32 0
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L3
	call	__stack_chk_fail_local
.L3:
	leal	-8(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB1:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE1:
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/bits/libio.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/bits/sys_errlist.h"
	.file 7 "/usr/include/bits/types/struct_timeval.h"
	.file 8 "/usr/include/sys/time.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x402
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF71
	.byte	0xc
	.long	.LASF72
	.long	.LASF73
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF8
	.byte	0x2
	.byte	0xd8
	.long	0x30
	.uleb128 0x3
	.byte	0x4
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
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x37
	.long	0x61
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x8c
	.long	0x85
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF11
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0x8d
	.long	0x6f
	.uleb128 0x2
	.long	.LASF13
	.byte	0x3
	.byte	0x94
	.long	0x85
	.uleb128 0x2
	.long	.LASF14
	.byte	0x3
	.byte	0x96
	.long	0x85
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0xb5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF15
	.uleb128 0x7
	.long	0xb5
	.uleb128 0x8
	.long	.LASF45
	.byte	0x94
	.byte	0x4
	.byte	0xf5
	.long	0x241
	.uleb128 0x9
	.long	.LASF16
	.byte	0x4
	.byte	0xf6
	.long	0x5a
	.byte	0
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.byte	0xfb
	.long	0xaf
	.byte	0x4
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.byte	0xfc
	.long	0xaf
	.byte	0x8
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.byte	0xfd
	.long	0xaf
	.byte	0xc
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.byte	0xfe
	.long	0xaf
	.byte	0x10
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.byte	0xff
	.long	0xaf
	.byte	0x14
	.uleb128 0xa
	.long	.LASF22
	.byte	0x4
	.value	0x100
	.long	0xaf
	.byte	0x18
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.value	0x101
	.long	0xaf
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF24
	.byte	0x4
	.value	0x102
	.long	0xaf
	.byte	0x20
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.value	0x104
	.long	0xaf
	.byte	0x24
	.uleb128 0xa
	.long	.LASF26
	.byte	0x4
	.value	0x105
	.long	0xaf
	.byte	0x28
	.uleb128 0xa
	.long	.LASF27
	.byte	0x4
	.value	0x106
	.long	0xaf
	.byte	0x2c
	.uleb128 0xa
	.long	.LASF28
	.byte	0x4
	.value	0x108
	.long	0x279
	.byte	0x30
	.uleb128 0xa
	.long	.LASF29
	.byte	0x4
	.value	0x10a
	.long	0x27f
	.byte	0x34
	.uleb128 0xa
	.long	.LASF30
	.byte	0x4
	.value	0x10c
	.long	0x5a
	.byte	0x38
	.uleb128 0xa
	.long	.LASF31
	.byte	0x4
	.value	0x110
	.long	0x5a
	.byte	0x3c
	.uleb128 0xa
	.long	.LASF32
	.byte	0x4
	.value	0x112
	.long	0x7a
	.byte	0x40
	.uleb128 0xa
	.long	.LASF33
	.byte	0x4
	.value	0x116
	.long	0x3e
	.byte	0x44
	.uleb128 0xa
	.long	.LASF34
	.byte	0x4
	.value	0x117
	.long	0x4c
	.byte	0x46
	.uleb128 0xa
	.long	.LASF35
	.byte	0x4
	.value	0x118
	.long	0x285
	.byte	0x47
	.uleb128 0xa
	.long	.LASF36
	.byte	0x4
	.value	0x11c
	.long	0x295
	.byte	0x48
	.uleb128 0xa
	.long	.LASF37
	.byte	0x4
	.value	0x125
	.long	0x8c
	.byte	0x4c
	.uleb128 0xa
	.long	.LASF38
	.byte	0x4
	.value	0x12d
	.long	0xad
	.byte	0x54
	.uleb128 0xa
	.long	.LASF39
	.byte	0x4
	.value	0x12e
	.long	0xad
	.byte	0x58
	.uleb128 0xa
	.long	.LASF40
	.byte	0x4
	.value	0x12f
	.long	0xad
	.byte	0x5c
	.uleb128 0xa
	.long	.LASF41
	.byte	0x4
	.value	0x130
	.long	0xad
	.byte	0x60
	.uleb128 0xa
	.long	.LASF42
	.byte	0x4
	.value	0x132
	.long	0x25
	.byte	0x64
	.uleb128 0xa
	.long	.LASF43
	.byte	0x4
	.value	0x133
	.long	0x5a
	.byte	0x68
	.uleb128 0xa
	.long	.LASF44
	.byte	0x4
	.value	0x135
	.long	0x29b
	.byte	0x6c
	.byte	0
	.uleb128 0xb
	.long	.LASF74
	.byte	0x4
	.byte	0x9a
	.uleb128 0x8
	.long	.LASF46
	.byte	0xc
	.byte	0x4
	.byte	0xa0
	.long	0x279
	.uleb128 0x9
	.long	.LASF47
	.byte	0x4
	.byte	0xa1
	.long	0x279
	.byte	0
	.uleb128 0x9
	.long	.LASF48
	.byte	0x4
	.byte	0xa2
	.long	0x27f
	.byte	0x4
	.uleb128 0x9
	.long	.LASF49
	.byte	0x4
	.byte	0xa6
	.long	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x248
	.uleb128 0x6
	.byte	0x4
	.long	0xc1
	.uleb128 0xc
	.long	0xb5
	.long	0x295
	.uleb128 0xd
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x241
	.uleb128 0xc
	.long	0xb5
	.long	0x2ab
	.uleb128 0xd
	.long	0x30
	.byte	0x27
	.byte	0
	.uleb128 0xe
	.long	.LASF75
	.uleb128 0xf
	.long	.LASF50
	.byte	0x4
	.value	0x13f
	.long	0x2ab
	.uleb128 0xf
	.long	.LASF51
	.byte	0x4
	.value	0x140
	.long	0x2ab
	.uleb128 0xf
	.long	.LASF52
	.byte	0x4
	.value	0x141
	.long	0x2ab
	.uleb128 0x6
	.byte	0x4
	.long	0xbc
	.uleb128 0x7
	.long	0x2d4
	.uleb128 0x10
	.long	.LASF53
	.byte	0x5
	.byte	0x87
	.long	0x27f
	.uleb128 0x10
	.long	.LASF54
	.byte	0x5
	.byte	0x88
	.long	0x27f
	.uleb128 0x10
	.long	.LASF55
	.byte	0x5
	.byte	0x89
	.long	0x27f
	.uleb128 0x10
	.long	.LASF56
	.byte	0x6
	.byte	0x1a
	.long	0x5a
	.uleb128 0xc
	.long	0x2da
	.long	0x316
	.uleb128 0x11
	.byte	0
	.uleb128 0x7
	.long	0x30b
	.uleb128 0x10
	.long	.LASF57
	.byte	0x6
	.byte	0x1b
	.long	0x316
	.uleb128 0x8
	.long	.LASF58
	.byte	0x8
	.byte	0x7
	.byte	0x8
	.long	0x34b
	.uleb128 0x9
	.long	.LASF59
	.byte	0x7
	.byte	0xa
	.long	0x97
	.byte	0
	.uleb128 0x9
	.long	.LASF60
	.byte	0x7
	.byte	0xb
	.long	0xa2
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	.LASF61
	.byte	0x8
	.byte	0x8
	.byte	0x34
	.long	0x370
	.uleb128 0x9
	.long	.LASF62
	.byte	0x8
	.byte	0x36
	.long	0x5a
	.byte	0
	.uleb128 0x9
	.long	.LASF63
	.byte	0x8
	.byte	0x37
	.long	0x5a
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x34b
	.uleb128 0x12
	.long	0x370
	.uleb128 0x13
	.long	.LASF76
	.byte	0x1
	.byte	0x4
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.long	.LASF64
	.byte	0x1
	.byte	0x5
	.long	0x85
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x5
	.long	0x85
	.uleb128 0x2
	.byte	0x75
	.sleb128 -48
	.uleb128 0x14
	.long	.LASF65
	.byte	0x1
	.byte	0x5
	.long	0x85
	.uleb128 0x15
	.long	.LASF67
	.byte	0x1
	.byte	0x5
	.long	0x85
	.uleb128 0x2
	.byte	0x75
	.sleb128 -40
	.uleb128 0x15
	.long	.LASF68
	.byte	0x1
	.byte	0x6
	.long	0x85
	.uleb128 0x2
	.byte	0x75
	.sleb128 -32
	.uleb128 0x15
	.long	.LASF69
	.byte	0x1
	.byte	0x7
	.long	0x85
	.uleb128 0x2
	.byte	0x75
	.sleb128 -44
	.uleb128 0x15
	.long	.LASF70
	.byte	0x1
	.byte	0x7
	.long	0x85
	.uleb128 0x2
	.byte	0x75
	.sleb128 -36
	.uleb128 0x16
	.string	"tv1"
	.byte	0x1
	.byte	0x8
	.long	0x326
	.uleb128 0x2
	.byte	0x75
	.sleb128 -28
	.uleb128 0x16
	.string	"tv2"
	.byte	0x1
	.byte	0x8
	.long	0x326
	.uleb128 0x2
	.byte	0x75
	.sleb128 -20
	.byte	0
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
	.uleb128 0x6
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
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"_IO_buf_end"
.LASF9:
	.string	"__quad_t"
.LASF32:
	.string	"_old_offset"
.LASF59:
	.string	"tv_sec"
.LASF56:
	.string	"sys_nerr"
.LASF27:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF8:
	.string	"size_t"
.LASF37:
	.string	"_offset"
.LASF65:
	.string	"cycle_2_h"
.LASF21:
	.string	"_IO_write_ptr"
.LASF16:
	.string	"_flags"
.LASF23:
	.string	"_IO_buf_base"
.LASF28:
	.string	"_markers"
.LASF18:
	.string	"_IO_read_end"
.LASF61:
	.string	"timezone"
.LASF62:
	.string	"tz_minuteswest"
.LASF55:
	.string	"stderr"
.LASF6:
	.string	"long long int"
.LASF36:
	.string	"_lock"
.LASF11:
	.string	"long int"
.LASF33:
	.string	"_cur_column"
.LASF52:
	.string	"_IO_2_1_stderr_"
.LASF63:
	.string	"tz_dsttime"
.LASF75:
	.string	"_IO_FILE_plus"
.LASF49:
	.string	"_pos"
.LASF48:
	.string	"_sbuf"
.LASF45:
	.string	"_IO_FILE"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"signed char"
.LASF7:
	.string	"long long unsigned int"
.LASF50:
	.string	"_IO_2_1_stdin_"
.LASF0:
	.string	"unsigned int"
.LASF46:
	.string	"_IO_marker"
.LASF35:
	.string	"_shortbuf"
.LASF38:
	.string	"__pad1"
.LASF20:
	.string	"_IO_write_base"
.LASF44:
	.string	"_unused2"
.LASF17:
	.string	"_IO_read_ptr"
.LASF2:
	.string	"short unsigned int"
.LASF15:
	.string	"char"
.LASF76:
	.string	"main"
.LASF47:
	.string	"_next"
.LASF73:
	.string	"/home/landon/AssembleLangFinal/freq"
.LASF39:
	.string	"__pad2"
.LASF40:
	.string	"__pad3"
.LASF41:
	.string	"__pad4"
.LASF42:
	.string	"__pad5"
.LASF3:
	.string	"long unsigned int"
.LASF22:
	.string	"_IO_write_end"
.LASF67:
	.string	"cycle_2_l"
.LASF12:
	.string	"__off64_t"
.LASF10:
	.string	"__off_t"
.LASF29:
	.string	"_chain"
.LASF58:
	.string	"timeval"
.LASF13:
	.string	"__time_t"
.LASF60:
	.string	"tv_usec"
.LASF26:
	.string	"_IO_backup_base"
.LASF53:
	.string	"stdin"
.LASF31:
	.string	"_flags2"
.LASF43:
	.string	"_mode"
.LASF19:
	.string	"_IO_read_base"
.LASF71:
	.string	"GNU C11 7.5.0 -m32 -mtune=generic -march=i686 -g -fPIC -fstack-protector-strong"
.LASF64:
	.string	"cycle_1_h"
.LASF72:
	.string	"freq.c"
.LASF34:
	.string	"_vtable_offset"
.LASF66:
	.string	"cycle_1_l"
.LASF68:
	.string	"time"
.LASF25:
	.string	"_IO_save_base"
.LASF57:
	.string	"sys_errlist"
.LASF30:
	.string	"_fileno"
.LASF14:
	.string	"__suseconds_t"
.LASF69:
	.string	"cycle_1"
.LASF70:
	.string	"cycle_2"
.LASF54:
	.string	"stdout"
.LASF51:
	.string	"_IO_2_1_stdout_"
.LASF74:
	.string	"_IO_lock_t"
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
