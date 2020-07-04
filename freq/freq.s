	.file	"freq.c"
	.text
.Ltext0:
	.globl	__divdi3
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC0:
	.string	"The cpu frequency is %.2f MHz\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB23:
	.file 1 "freq.c"
	.loc 1 7 0
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x70,0x6
	.cfi_escape 0x10,0x7,0x2,0x75,0x7c
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	subl	$64, %esp
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 7 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 10 0
	pushl	$0
	leal	-44(%ebp), %eax
	pushl	%eax
	call	gettimeofday@PLT
.LVL0:
	.loc 1 11 0
#APP
# 11 "freq.c" 1
	rdtsc
	mov	%eax,cycle_1_l
	mov	%edx,cycle_1_h
	mov	$0xffff,%ecx
	L1:
	inc	%eax
	loop L1
	rdtsc
	mov	%eax,cycle_2_l
	mov	%edx,cycle_2_h
	
# 0 "" 2
	.loc 1 23 0
#NO_APP
	addl	$8, %esp
	pushl	$0
	leal	-36(%ebp), %eax
	pushl	%eax
	call	gettimeofday@PLT
.LVL1:
	.loc 1 24 0
	movl	cycle_1_l@GOT(%ebx), %eax
	movl	(%eax), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	movl	%ecx, %edx
	movl	cycle_1@GOT(%ebx), %ecx
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	.loc 1 25 0
	movl	cycle_2_l@GOT(%ebx), %ecx
	movl	(%ecx), %esi
	movl	%esi, %edi
	sarl	$31, %edi
	movl	cycle_2@GOT(%ebx), %ecx
	movl	%esi, (%ecx)
	movl	%edi, 4(%ecx)
	.loc 1 26 0
	movl	-36(%ebp), %ecx
	subl	-44(%ebp), %ecx
	imull	$1000000, %ecx, %ecx
	addl	-32(%ebp), %ecx
	subl	-40(%ebp), %ecx
	movl	time@GOT(%ebx), %eax
	movl	%ecx, (%eax)
.LVL2:
	.loc 1 27 0
	subl	-72(%ebp), %esi
.LVL3:
	sbbl	-68(%ebp), %edi
	movl	%ecx, %eax
	cltd
	pushl	%edx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	__divdi3@PLT
.LVL4:
	addl	$8, %esp
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	fildq	-72(%ebp)
.LBB4:
.LBB5:
	.file 2 "/usr/include/bits/stdio2.h"
	.loc 2 104 0
	fstpl	(%esp)
	leal	.LC0@GOTOFF(%ebx), %eax
	pushl	%eax
	pushl	$1
	call	__printf_chk@PLT
.LVL5:
.LBE5:
.LBE4:
	.loc 1 29 0
	addl	$32, %esp
	.loc 1 30 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	jne	.L4
	leal	-16(%ebp), %esp
	popl	%ecx
	.cfi_remember_state
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
.L4:
	.cfi_restore_state
	call	__stack_chk_fail_local
.LVL6:
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.comm	cycle_2,8,8
	.comm	cycle_1,8,8
	.comm	time,4,4
	.comm	cycle_2_l,4,4
	.comm	cycle_2_h,4,4
	.comm	cycle_1_l,4,4
	.comm	cycle_1_h,4,4
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB24:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE24:
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 4 "/usr/include/bits/types.h"
	.file 5 "/usr/include/bits/libio.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/bits/sys_errlist.h"
	.file 8 "/usr/include/bits/types/struct_timeval.h"
	.file 9 "/usr/include/sys/time.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4b9
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF77
	.byte	0xc
	.long	.LASF78
	.long	.LASF79
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.long	.LASF9
	.byte	0x3
	.byte	0xd8
	.long	0x4c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x4
	.long	.LASF10
	.byte	0x4
	.byte	0x37
	.long	0x25
	.uleb128 0x4
	.long	.LASF11
	.byte	0x4
	.byte	0x8c
	.long	0x8c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF12
	.uleb128 0x4
	.long	.LASF13
	.byte	0x4
	.byte	0x8d
	.long	0x76
	.uleb128 0x4
	.long	.LASF14
	.byte	0x4
	.byte	0x94
	.long	0x8c
	.uleb128 0x4
	.long	.LASF15
	.byte	0x4
	.byte	0x96
	.long	0x8c
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0xbc
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF16
	.uleb128 0x7
	.long	0xbc
	.uleb128 0x8
	.long	.LASF46
	.byte	0x94
	.byte	0x5
	.byte	0xf5
	.long	0x248
	.uleb128 0x9
	.long	.LASF17
	.byte	0x5
	.byte	0xf6
	.long	0x3a
	.byte	0
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.byte	0xfb
	.long	0xb6
	.byte	0x4
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.byte	0xfc
	.long	0xb6
	.byte	0x8
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.byte	0xfd
	.long	0xb6
	.byte	0xc
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.byte	0xfe
	.long	0xb6
	.byte	0x10
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.byte	0xff
	.long	0xb6
	.byte	0x14
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.value	0x100
	.long	0xb6
	.byte	0x18
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.value	0x101
	.long	0xb6
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.value	0x102
	.long	0xb6
	.byte	0x20
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.value	0x104
	.long	0xb6
	.byte	0x24
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.value	0x105
	.long	0xb6
	.byte	0x28
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.value	0x106
	.long	0xb6
	.byte	0x2c
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.value	0x108
	.long	0x280
	.byte	0x30
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.value	0x10a
	.long	0x286
	.byte	0x34
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.value	0x10c
	.long	0x3a
	.byte	0x38
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.value	0x110
	.long	0x3a
	.byte	0x3c
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.value	0x112
	.long	0x81
	.byte	0x40
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.value	0x116
	.long	0x5a
	.byte	0x44
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.value	0x117
	.long	0x68
	.byte	0x46
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.value	0x118
	.long	0x28c
	.byte	0x47
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.value	0x11c
	.long	0x29c
	.byte	0x48
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.value	0x125
	.long	0x93
	.byte	0x4c
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.value	0x12d
	.long	0xb4
	.byte	0x54
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.value	0x12e
	.long	0xb4
	.byte	0x58
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.value	0x12f
	.long	0xb4
	.byte	0x5c
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.value	0x130
	.long	0xb4
	.byte	0x60
	.uleb128 0xa
	.long	.LASF43
	.byte	0x5
	.value	0x132
	.long	0x41
	.byte	0x64
	.uleb128 0xa
	.long	.LASF44
	.byte	0x5
	.value	0x133
	.long	0x3a
	.byte	0x68
	.uleb128 0xa
	.long	.LASF45
	.byte	0x5
	.value	0x135
	.long	0x2a2
	.byte	0x6c
	.byte	0
	.uleb128 0xb
	.long	.LASF80
	.byte	0x5
	.byte	0x9a
	.uleb128 0x8
	.long	.LASF47
	.byte	0xc
	.byte	0x5
	.byte	0xa0
	.long	0x280
	.uleb128 0x9
	.long	.LASF48
	.byte	0x5
	.byte	0xa1
	.long	0x280
	.byte	0
	.uleb128 0x9
	.long	.LASF49
	.byte	0x5
	.byte	0xa2
	.long	0x286
	.byte	0x4
	.uleb128 0x9
	.long	.LASF50
	.byte	0x5
	.byte	0xa6
	.long	0x3a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x24f
	.uleb128 0x6
	.byte	0x4
	.long	0xc8
	.uleb128 0xc
	.long	0xbc
	.long	0x29c
	.uleb128 0xd
	.long	0x4c
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x248
	.uleb128 0xc
	.long	0xbc
	.long	0x2b2
	.uleb128 0xd
	.long	0x4c
	.byte	0x27
	.byte	0
	.uleb128 0xe
	.long	.LASF81
	.uleb128 0xf
	.long	.LASF51
	.byte	0x5
	.value	0x13f
	.long	0x2b2
	.uleb128 0xf
	.long	.LASF52
	.byte	0x5
	.value	0x140
	.long	0x2b2
	.uleb128 0xf
	.long	.LASF53
	.byte	0x5
	.value	0x141
	.long	0x2b2
	.uleb128 0x6
	.byte	0x4
	.long	0xc3
	.uleb128 0x7
	.long	0x2db
	.uleb128 0x10
	.long	0x2db
	.uleb128 0x11
	.long	.LASF54
	.byte	0x6
	.byte	0x87
	.long	0x286
	.uleb128 0x11
	.long	.LASF55
	.byte	0x6
	.byte	0x88
	.long	0x286
	.uleb128 0x11
	.long	.LASF56
	.byte	0x6
	.byte	0x89
	.long	0x286
	.uleb128 0x11
	.long	.LASF57
	.byte	0x7
	.byte	0x1a
	.long	0x3a
	.uleb128 0xc
	.long	0x2e1
	.long	0x322
	.uleb128 0x12
	.byte	0
	.uleb128 0x7
	.long	0x317
	.uleb128 0x11
	.long	.LASF58
	.byte	0x7
	.byte	0x1b
	.long	0x322
	.uleb128 0x8
	.long	.LASF59
	.byte	0x8
	.byte	0x8
	.byte	0x8
	.long	0x357
	.uleb128 0x9
	.long	.LASF60
	.byte	0x8
	.byte	0xa
	.long	0x9e
	.byte	0
	.uleb128 0x9
	.long	.LASF61
	.byte	0x8
	.byte	0xb
	.long	0xa9
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	.LASF62
	.byte	0x8
	.byte	0x9
	.byte	0x34
	.long	0x37c
	.uleb128 0x9
	.long	.LASF63
	.byte	0x9
	.byte	0x36
	.long	0x3a
	.byte	0
	.uleb128 0x9
	.long	.LASF64
	.byte	0x9
	.byte	0x37
	.long	0x3a
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x357
	.uleb128 0x10
	.long	0x37c
	.uleb128 0x13
	.long	.LASF65
	.byte	0x1
	.byte	0x3
	.long	0x3a
	.uleb128 0x5
	.byte	0x3
	.long	cycle_1_h
	.uleb128 0x13
	.long	.LASF66
	.byte	0x1
	.byte	0x3
	.long	0x3a
	.uleb128 0x5
	.byte	0x3
	.long	cycle_1_l
	.uleb128 0x13
	.long	.LASF67
	.byte	0x1
	.byte	0x3
	.long	0x3a
	.uleb128 0x5
	.byte	0x3
	.long	cycle_2_h
	.uleb128 0x13
	.long	.LASF68
	.byte	0x1
	.byte	0x3
	.long	0x3a
	.uleb128 0x5
	.byte	0x3
	.long	cycle_2_l
	.uleb128 0x13
	.long	.LASF69
	.byte	0x1
	.byte	0x4
	.long	0x8c
	.uleb128 0x5
	.byte	0x3
	.long	time
	.uleb128 0x13
	.long	.LASF70
	.byte	0x1
	.byte	0x5
	.long	0x25
	.uleb128 0x5
	.byte	0x3
	.long	cycle_1
	.uleb128 0x13
	.long	.LASF71
	.byte	0x1
	.byte	0x5
	.long	0x25
	.uleb128 0x5
	.byte	0x3
	.long	cycle_2
	.uleb128 0x14
	.long	.LASF73
	.byte	0x1
	.byte	0x7
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x480
	.uleb128 0x15
	.string	"tv1"
	.byte	0x1
	.byte	0x8
	.long	0x332
	.uleb128 0x2
	.byte	0x75
	.sleb128 -44
	.uleb128 0x15
	.string	"tv2"
	.byte	0x1
	.byte	0x8
	.long	0x332
	.uleb128 0x2
	.byte	0x75
	.sleb128 -36
	.uleb128 0x16
	.long	.LASF72
	.byte	0x1
	.byte	0x9
	.long	0x33
	.long	.LLST0
	.uleb128 0x17
	.long	0x480
	.long	.LBB4
	.long	.LBE4-.LBB4
	.byte	0x1
	.byte	0x1c
	.long	0x464
	.uleb128 0x18
	.long	0x490
	.long	.LLST1
	.uleb128 0x19
	.long	.LVL5
	.long	0x49d
	.byte	0
	.uleb128 0x19
	.long	.LVL0
	.long	0x4a8
	.uleb128 0x19
	.long	.LVL1
	.long	0x4a8
	.uleb128 0x19
	.long	.LVL6
	.long	0x4b3
	.byte	0
	.uleb128 0x1a
	.long	.LASF74
	.byte	0x2
	.byte	0x66
	.long	0x3a
	.byte	0x3
	.long	0x49d
	.uleb128 0x1b
	.long	.LASF82
	.byte	0x2
	.byte	0x66
	.long	0x2e6
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1d
	.long	.LASF75
	.long	.LASF75
	.byte	0x2
	.byte	0x57
	.uleb128 0x1d
	.long	.LASF76
	.long	.LASF76
	.byte	0x9
	.byte	0x44
	.uleb128 0x1e
	.long	.LASF83
	.long	.LASF83
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x14
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
.LLST0:
	.long	.LVL2-.Ltext0
	.long	.LVL3-.Ltext0
	.value	0x18
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x2c
	.byte	0x75
	.sleb128 -72
	.byte	0xf6
	.byte	0x8
	.uleb128 0x2c
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x71
	.sleb128 0
	.byte	0xf7
	.uleb128 0x3a
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf7
	.uleb128 0x33
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL2-.Ltext0
	.long	.LVL5-.Ltext0
	.value	0x6
	.byte	0x3
	.long	.LC0
	.byte	0x9f
	.long	0
	.long	0
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
.LASF25:
	.string	"_IO_buf_end"
.LASF10:
	.string	"__quad_t"
.LASF33:
	.string	"_old_offset"
.LASF75:
	.string	"__printf_chk"
.LASF2:
	.string	"double"
.LASF60:
	.string	"tv_sec"
.LASF57:
	.string	"sys_nerr"
.LASF28:
	.string	"_IO_save_end"
.LASF8:
	.string	"short int"
.LASF9:
	.string	"size_t"
.LASF38:
	.string	"_offset"
.LASF72:
	.string	"cpufreq"
.LASF67:
	.string	"cycle_2_h"
.LASF22:
	.string	"_IO_write_ptr"
.LASF17:
	.string	"_flags"
.LASF24:
	.string	"_IO_buf_base"
.LASF29:
	.string	"_markers"
.LASF19:
	.string	"_IO_read_end"
.LASF62:
	.string	"timezone"
.LASF77:
	.string	"GNU C11 7.5.0 -m32 -mtune=generic -march=i686 -g -O -fstack-protector-strong"
.LASF63:
	.string	"tz_minuteswest"
.LASF56:
	.string	"stderr"
.LASF0:
	.string	"long long int"
.LASF37:
	.string	"_lock"
.LASF12:
	.string	"long int"
.LASF82:
	.string	"__fmt"
.LASF74:
	.string	"printf"
.LASF34:
	.string	"_cur_column"
.LASF53:
	.string	"_IO_2_1_stderr_"
.LASF64:
	.string	"tz_dsttime"
.LASF81:
	.string	"_IO_FILE_plus"
.LASF50:
	.string	"_pos"
.LASF49:
	.string	"_sbuf"
.LASF46:
	.string	"_IO_FILE"
.LASF4:
	.string	"unsigned char"
.LASF76:
	.string	"gettimeofday"
.LASF7:
	.string	"signed char"
.LASF1:
	.string	"long long unsigned int"
.LASF51:
	.string	"_IO_2_1_stdin_"
.LASF3:
	.string	"unsigned int"
.LASF47:
	.string	"_IO_marker"
.LASF36:
	.string	"_shortbuf"
.LASF39:
	.string	"__pad1"
.LASF21:
	.string	"_IO_write_base"
.LASF45:
	.string	"_unused2"
.LASF18:
	.string	"_IO_read_ptr"
.LASF5:
	.string	"short unsigned int"
.LASF16:
	.string	"char"
.LASF73:
	.string	"main"
.LASF83:
	.string	"__stack_chk_fail_local"
.LASF48:
	.string	"_next"
.LASF79:
	.string	"/home/landon/AssembleLangFinal/freq"
.LASF40:
	.string	"__pad2"
.LASF41:
	.string	"__pad3"
.LASF42:
	.string	"__pad4"
.LASF43:
	.string	"__pad5"
.LASF6:
	.string	"long unsigned int"
.LASF23:
	.string	"_IO_write_end"
.LASF68:
	.string	"cycle_2_l"
.LASF13:
	.string	"__off64_t"
.LASF11:
	.string	"__off_t"
.LASF30:
	.string	"_chain"
.LASF59:
	.string	"timeval"
.LASF14:
	.string	"__time_t"
.LASF61:
	.string	"tv_usec"
.LASF27:
	.string	"_IO_backup_base"
.LASF54:
	.string	"stdin"
.LASF32:
	.string	"_flags2"
.LASF44:
	.string	"_mode"
.LASF20:
	.string	"_IO_read_base"
.LASF65:
	.string	"cycle_1_h"
.LASF78:
	.string	"freq.c"
.LASF35:
	.string	"_vtable_offset"
.LASF66:
	.string	"cycle_1_l"
.LASF69:
	.string	"time"
.LASF26:
	.string	"_IO_save_base"
.LASF58:
	.string	"sys_errlist"
.LASF31:
	.string	"_fileno"
.LASF15:
	.string	"__suseconds_t"
.LASF70:
	.string	"cycle_1"
.LASF71:
	.string	"cycle_2"
.LASF55:
	.string	"stdout"
.LASF52:
	.string	"_IO_2_1_stdout_"
.LASF80:
	.string	"_IO_lock_t"
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
