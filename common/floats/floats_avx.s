//go:build !noasm && amd64
// Code generated by GoAT. DO NOT EDIT.
// versions:
// 	clang   19.1.7 (++20250114103320+cd708029e0b2-1~exp1~20250114103432.75)
// 	objdump 2.38
// flags: -mavx -O3
// source: src/floats_avx.c

TEXT ·_mm256_mul_const_add_to(SB), $0-32
	MOVQ a+0(FP), DI
	MOVQ b+8(FP), SI
	MOVQ c+16(FP), DX
	MOVQ n+24(FP), CX
	BYTE $0x55                                 // pushq	%rbp
	WORD $0x8948; BYTE $0xe5                   // movq	%rsp, %rbp
	LONG $0xf8e48348                           // andq	$-8, %rsp
	LONG $0x07418d4c                           // leaq	7(%rcx), %r8
	WORD $0x8548; BYTE $0xc9                   // testq	%rcx, %rcx
	LONG $0xc1490f4c                           // cmovnsq	%rcx, %r8
	WORD $0x894c; BYTE $0xc0                   // movq	%r8, %rax
	LONG $0x03f8c148                           // sarq	$3, %rax
	LONG $0xf8e08349                           // andq	$-8, %r8
	WORD $0x294c; BYTE $0xc1                   // subq	%r8, %rcx
	WORD $0xc085                               // testl	%eax, %eax
	JLE  LBB0_6
	WORD $0xf883; BYTE $0x01                   // cmpl	$1, %eax
	JE   LBB0_4
	WORD $0x8941; BYTE $0xc0                   // movl	%eax, %r8d
	LONG $0xfee08141; WORD $0xffff; BYTE $0x7f // andl	$2147483646, %r8d               # imm = 0x7FFFFFFE

LBB0_3:
	LONG $0x187de2c4; BYTE $0x06 // vbroadcastss	(%rsi), %ymm0
	LONG $0x0759fcc5             // vmulps	(%rdi), %ymm0, %ymm0
	LONG $0x0258fcc5             // vaddps	(%rdx), %ymm0, %ymm0
	LONG $0x0211fcc5             // vmovups	%ymm0, (%rdx)
	LONG $0x187de2c4; BYTE $0x06 // vbroadcastss	(%rsi), %ymm0
	LONG $0x4759fcc5; BYTE $0x20 // vmulps	32(%rdi), %ymm0, %ymm0
	LONG $0x4258fcc5; BYTE $0x20 // vaddps	32(%rdx), %ymm0, %ymm0
	LONG $0x4211fcc5; BYTE $0x20 // vmovups	%ymm0, 32(%rdx)
	LONG $0x40c78348             // addq	$64, %rdi
	LONG $0x40c28348             // addq	$64, %rdx
	LONG $0xfec08341             // addl	$-2, %r8d
	JNE  LBB0_3

LBB0_4:
	WORD $0x01a8                 // testb	$1, %al
	JE   LBB0_6
	LONG $0x187de2c4; BYTE $0x06 // vbroadcastss	(%rsi), %ymm0
	LONG $0x0759fcc5             // vmulps	(%rdi), %ymm0, %ymm0
	LONG $0x0258fcc5             // vaddps	(%rdx), %ymm0, %ymm0
	LONG $0x0211fcc5             // vmovups	%ymm0, (%rdx)
	LONG $0x20c78348             // addq	$32, %rdi
	LONG $0x20c28348             // addq	$32, %rdx

LBB0_6:
	WORD $0x8548; BYTE $0xc9     // testq	%rcx, %rcx
	JLE  LBB0_14
	WORD $0xc889                 // movl	%ecx, %eax
	LONG $0x0710fac5             // vmovss	(%rdi), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	LONG $0x0659fac5             // vmulss	(%rsi), %xmm0, %xmm0
	LONG $0x0258fac5             // vaddss	(%rdx), %xmm0, %xmm0
	LONG $0x0211fac5             // vmovss	%xmm0, (%rdx)
	LONG $0x01f88348             // cmpq	$1, %rax
	JE   LBB0_14
	LONG $0x4710fac5; BYTE $0x04 // vmovss	4(%rdi), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	LONG $0x0659fac5             // vmulss	(%rsi), %xmm0, %xmm0
	LONG $0x4258fac5; BYTE $0x04 // vaddss	4(%rdx), %xmm0, %xmm0
	LONG $0x4211fac5; BYTE $0x04 // vmovss	%xmm0, 4(%rdx)
	WORD $0xf883; BYTE $0x02     // cmpl	$2, %eax
	JE   LBB0_14
	LONG $0x4710fac5; BYTE $0x08 // vmovss	8(%rdi), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	LONG $0x0659fac5             // vmulss	(%rsi), %xmm0, %xmm0
	LONG $0x4258fac5; BYTE $0x08 // vaddss	8(%rdx), %xmm0, %xmm0
	LONG $0x4211fac5; BYTE $0x08 // vmovss	%xmm0, 8(%rdx)
	WORD $0xf883; BYTE $0x03     // cmpl	$3, %eax
	JE   LBB0_14
	LONG $0x4710fac5; BYTE $0x0c // vmovss	12(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	LONG $0x0659fac5             // vmulss	(%rsi), %xmm0, %xmm0
	LONG $0x4258fac5; BYTE $0x0c // vaddss	12(%rdx), %xmm0, %xmm0
	LONG $0x4211fac5; BYTE $0x0c // vmovss	%xmm0, 12(%rdx)
	WORD $0xf883; BYTE $0x04     // cmpl	$4, %eax
	JE   LBB0_14
	LONG $0x4710fac5; BYTE $0x10 // vmovss	16(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	LONG $0x0659fac5             // vmulss	(%rsi), %xmm0, %xmm0
	LONG $0x4258fac5; BYTE $0x10 // vaddss	16(%rdx), %xmm0, %xmm0
	LONG $0x4211fac5; BYTE $0x10 // vmovss	%xmm0, 16(%rdx)
	WORD $0xf883; BYTE $0x05     // cmpl	$5, %eax
	JE   LBB0_14
	LONG $0x4710fac5; BYTE $0x14 // vmovss	20(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	LONG $0x0659fac5             // vmulss	(%rsi), %xmm0, %xmm0
	LONG $0x4258fac5; BYTE $0x14 // vaddss	20(%rdx), %xmm0, %xmm0
	LONG $0x4211fac5; BYTE $0x14 // vmovss	%xmm0, 20(%rdx)
	WORD $0xf883; BYTE $0x06     // cmpl	$6, %eax
	JE   LBB0_14
	LONG $0x4710fac5; BYTE $0x18 // vmovss	24(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	LONG $0x0659fac5             // vmulss	(%rsi), %xmm0, %xmm0
	LONG $0x4258fac5; BYTE $0x18 // vaddss	24(%rdx), %xmm0, %xmm0
	LONG $0x4211fac5; BYTE $0x18 // vmovss	%xmm0, 24(%rdx)

LBB0_14:
	WORD $0x8948; BYTE $0xec // movq	%rbp, %rsp
	BYTE $0x5d               // popq	%rbp
	WORD $0xf8c5; BYTE $0x77 // vzeroupper
	BYTE $0xc3               // retq

TEXT ·_mm256_mul_const_to(SB), $0-32
	MOVQ a+0(FP), DI
	MOVQ b+8(FP), SI
	MOVQ c+16(FP), DX
	MOVQ n+24(FP), CX
	BYTE $0x55                                 // pushq	%rbp
	WORD $0x8948; BYTE $0xe5                   // movq	%rsp, %rbp
	LONG $0xf8e48348                           // andq	$-8, %rsp
	LONG $0x07418d4c                           // leaq	7(%rcx), %r8
	WORD $0x8548; BYTE $0xc9                   // testq	%rcx, %rcx
	LONG $0xc1490f4c                           // cmovnsq	%rcx, %r8
	WORD $0x894c; BYTE $0xc0                   // movq	%r8, %rax
	LONG $0x03f8c148                           // sarq	$3, %rax
	LONG $0xf8e08349                           // andq	$-8, %r8
	WORD $0x294c; BYTE $0xc1                   // subq	%r8, %rcx
	WORD $0xc085                               // testl	%eax, %eax
	JLE  LBB1_6
	WORD $0xf883; BYTE $0x01                   // cmpl	$1, %eax
	JE   LBB1_4
	WORD $0x8941; BYTE $0xc0                   // movl	%eax, %r8d
	LONG $0xfee08141; WORD $0xffff; BYTE $0x7f // andl	$2147483646, %r8d               # imm = 0x7FFFFFFE

LBB1_3:
	LONG $0x187de2c4; BYTE $0x06 // vbroadcastss	(%rsi), %ymm0
	LONG $0x0759fcc5             // vmulps	(%rdi), %ymm0, %ymm0
	LONG $0x0211fcc5             // vmovups	%ymm0, (%rdx)
	LONG $0x187de2c4; BYTE $0x06 // vbroadcastss	(%rsi), %ymm0
	LONG $0x4759fcc5; BYTE $0x20 // vmulps	32(%rdi), %ymm0, %ymm0
	LONG $0x4211fcc5; BYTE $0x20 // vmovups	%ymm0, 32(%rdx)
	LONG $0x40c78348             // addq	$64, %rdi
	LONG $0x40c28348             // addq	$64, %rdx
	LONG $0xfec08341             // addl	$-2, %r8d
	JNE  LBB1_3

LBB1_4:
	WORD $0x01a8                 // testb	$1, %al
	JE   LBB1_6
	LONG $0x187de2c4; BYTE $0x06 // vbroadcastss	(%rsi), %ymm0
	LONG $0x0759fcc5             // vmulps	(%rdi), %ymm0, %ymm0
	LONG $0x0211fcc5             // vmovups	%ymm0, (%rdx)
	LONG $0x20c78348             // addq	$32, %rdi
	LONG $0x20c28348             // addq	$32, %rdx

LBB1_6:
	WORD $0x8548; BYTE $0xc9     // testq	%rcx, %rcx
	JLE  LBB1_14
	WORD $0xc889                 // movl	%ecx, %eax
	LONG $0x0710fac5             // vmovss	(%rdi), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	LONG $0x0659fac5             // vmulss	(%rsi), %xmm0, %xmm0
	LONG $0x0211fac5             // vmovss	%xmm0, (%rdx)
	LONG $0x01f88348             // cmpq	$1, %rax
	JE   LBB1_14
	LONG $0x4710fac5; BYTE $0x04 // vmovss	4(%rdi), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	LONG $0x0659fac5             // vmulss	(%rsi), %xmm0, %xmm0
	LONG $0x4211fac5; BYTE $0x04 // vmovss	%xmm0, 4(%rdx)
	WORD $0xf883; BYTE $0x02     // cmpl	$2, %eax
	JE   LBB1_14
	LONG $0x4710fac5; BYTE $0x08 // vmovss	8(%rdi), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	LONG $0x0659fac5             // vmulss	(%rsi), %xmm0, %xmm0
	LONG $0x4211fac5; BYTE $0x08 // vmovss	%xmm0, 8(%rdx)
	WORD $0xf883; BYTE $0x03     // cmpl	$3, %eax
	JE   LBB1_14
	LONG $0x4710fac5; BYTE $0x0c // vmovss	12(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	LONG $0x0659fac5             // vmulss	(%rsi), %xmm0, %xmm0
	LONG $0x4211fac5; BYTE $0x0c // vmovss	%xmm0, 12(%rdx)
	WORD $0xf883; BYTE $0x04     // cmpl	$4, %eax
	JE   LBB1_14
	LONG $0x4710fac5; BYTE $0x10 // vmovss	16(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	LONG $0x0659fac5             // vmulss	(%rsi), %xmm0, %xmm0
	LONG $0x4211fac5; BYTE $0x10 // vmovss	%xmm0, 16(%rdx)
	WORD $0xf883; BYTE $0x05     // cmpl	$5, %eax
	JE   LBB1_14
	LONG $0x4710fac5; BYTE $0x14 // vmovss	20(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	LONG $0x0659fac5             // vmulss	(%rsi), %xmm0, %xmm0
	LONG $0x4211fac5; BYTE $0x14 // vmovss	%xmm0, 20(%rdx)
	WORD $0xf883; BYTE $0x06     // cmpl	$6, %eax
	JE   LBB1_14
	LONG $0x4710fac5; BYTE $0x18 // vmovss	24(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	LONG $0x0659fac5             // vmulss	(%rsi), %xmm0, %xmm0
	LONG $0x4211fac5; BYTE $0x18 // vmovss	%xmm0, 24(%rdx)

LBB1_14:
	WORD $0x8948; BYTE $0xec // movq	%rbp, %rsp
	BYTE $0x5d               // popq	%rbp
	WORD $0xf8c5; BYTE $0x77 // vzeroupper
	BYTE $0xc3               // retq

TEXT ·_mm256_mul_const(SB), $0-24
	MOVQ a+0(FP), DI
	MOVQ b+8(FP), SI
	MOVQ n+16(FP), DX
	BYTE $0x55                     // pushq	%rbp
	WORD $0x8948; BYTE $0xe5       // movq	%rsp, %rbp
	LONG $0xf8e48348               // andq	$-8, %rsp
	LONG $0x074a8d48               // leaq	7(%rdx), %rcx
	WORD $0x8548; BYTE $0xd2       // testq	%rdx, %rdx
	LONG $0xca490f48               // cmovnsq	%rdx, %rcx
	WORD $0x8948; BYTE $0xc8       // movq	%rcx, %rax
	LONG $0x03f8c148               // sarq	$3, %rax
	LONG $0xf8e18348               // andq	$-8, %rcx
	WORD $0x2948; BYTE $0xca       // subq	%rcx, %rdx
	WORD $0xc085                   // testl	%eax, %eax
	JLE  LBB2_6
	WORD $0xf883; BYTE $0x01       // cmpl	$1, %eax
	JE   LBB2_4
	WORD $0xc189                   // movl	%eax, %ecx
	LONG $0xfffee181; WORD $0x7fff // andl	$2147483646, %ecx               # imm = 0x7FFFFFFE

LBB2_3:
	LONG $0x187de2c4; BYTE $0x06 // vbroadcastss	(%rsi), %ymm0
	LONG $0x0759fcc5             // vmulps	(%rdi), %ymm0, %ymm0
	LONG $0x0711fcc5             // vmovups	%ymm0, (%rdi)
	LONG $0x187de2c4; BYTE $0x06 // vbroadcastss	(%rsi), %ymm0
	LONG $0x4759fcc5; BYTE $0x20 // vmulps	32(%rdi), %ymm0, %ymm0
	LONG $0x4711fcc5; BYTE $0x20 // vmovups	%ymm0, 32(%rdi)
	LONG $0x40c78348             // addq	$64, %rdi
	WORD $0xc183; BYTE $0xfe     // addl	$-2, %ecx
	JNE  LBB2_3

LBB2_4:
	WORD $0x01a8                 // testb	$1, %al
	JE   LBB2_6
	LONG $0x187de2c4; BYTE $0x06 // vbroadcastss	(%rsi), %ymm0
	LONG $0x0759fcc5             // vmulps	(%rdi), %ymm0, %ymm0
	LONG $0x0711fcc5             // vmovups	%ymm0, (%rdi)
	LONG $0x20c78348             // addq	$32, %rdi

LBB2_6:
	WORD $0x8548; BYTE $0xd2     // testq	%rdx, %rdx
	JLE  LBB2_14
	WORD $0xd089                 // movl	%edx, %eax
	LONG $0x0610fac5             // vmovss	(%rsi), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	LONG $0x0759fac5             // vmulss	(%rdi), %xmm0, %xmm0
	LONG $0x0711fac5             // vmovss	%xmm0, (%rdi)
	LONG $0x01f88348             // cmpq	$1, %rax
	JE   LBB2_14
	LONG $0x0610fac5             // vmovss	(%rsi), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	LONG $0x4759fac5; BYTE $0x04 // vmulss	4(%rdi), %xmm0, %xmm0
	LONG $0x4711fac5; BYTE $0x04 // vmovss	%xmm0, 4(%rdi)
	WORD $0xf883; BYTE $0x02     // cmpl	$2, %eax
	JE   LBB2_14
	LONG $0x0610fac5             // vmovss	(%rsi), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	LONG $0x4759fac5; BYTE $0x08 // vmulss	8(%rdi), %xmm0, %xmm0
	LONG $0x4711fac5; BYTE $0x08 // vmovss	%xmm0, 8(%rdi)
	WORD $0xf883; BYTE $0x03     // cmpl	$3, %eax
	JE   LBB2_14
	LONG $0x0610fac5             // vmovss	(%rsi), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	LONG $0x4759fac5; BYTE $0x0c // vmulss	12(%rdi), %xmm0, %xmm0
	LONG $0x4711fac5; BYTE $0x0c // vmovss	%xmm0, 12(%rdi)
	WORD $0xf883; BYTE $0x04     // cmpl	$4, %eax
	JE   LBB2_14
	LONG $0x0610fac5             // vmovss	(%rsi), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	LONG $0x4759fac5; BYTE $0x10 // vmulss	16(%rdi), %xmm0, %xmm0
	LONG $0x4711fac5; BYTE $0x10 // vmovss	%xmm0, 16(%rdi)
	WORD $0xf883; BYTE $0x05     // cmpl	$5, %eax
	JE   LBB2_14
	LONG $0x0610fac5             // vmovss	(%rsi), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	LONG $0x4759fac5; BYTE $0x14 // vmulss	20(%rdi), %xmm0, %xmm0
	LONG $0x4711fac5; BYTE $0x14 // vmovss	%xmm0, 20(%rdi)
	WORD $0xf883; BYTE $0x06     // cmpl	$6, %eax
	JE   LBB2_14
	LONG $0x0610fac5             // vmovss	(%rsi), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	LONG $0x4759fac5; BYTE $0x18 // vmulss	24(%rdi), %xmm0, %xmm0
	LONG $0x4711fac5; BYTE $0x18 // vmovss	%xmm0, 24(%rdi)

LBB2_14:
	WORD $0x8948; BYTE $0xec // movq	%rbp, %rsp
	BYTE $0x5d               // popq	%rbp
	WORD $0xf8c5; BYTE $0x77 // vzeroupper
	BYTE $0xc3               // retq

TEXT ·_mm256_mul_to(SB), $0-32
	MOVQ a+0(FP), DI
	MOVQ b+8(FP), SI
	MOVQ c+16(FP), DX
	MOVQ n+24(FP), CX
	BYTE $0x55                                 // pushq	%rbp
	WORD $0x8948; BYTE $0xe5                   // movq	%rsp, %rbp
	LONG $0xf8e48348                           // andq	$-8, %rsp
	LONG $0x07418d48                           // leaq	7(%rcx), %rax
	WORD $0x8548; BYTE $0xc9                   // testq	%rcx, %rcx
	LONG $0xc1490f48                           // cmovnsq	%rcx, %rax
	WORD $0x8949; BYTE $0xc0                   // movq	%rax, %r8
	LONG $0x03f8c149                           // sarq	$3, %r8
	LONG $0xf8e08348                           // andq	$-8, %rax
	WORD $0x2948; BYTE $0xc1                   // subq	%rax, %rcx
	WORD $0x8545; BYTE $0xc0                   // testl	%r8d, %r8d
	JLE  LBB3_6
	WORD $0x8944; BYTE $0xc0                   // movl	%r8d, %eax
	WORD $0xe083; BYTE $0x03                   // andl	$3, %eax
	LONG $0x04f88341                           // cmpl	$4, %r8d
	JB   LBB3_4
	LONG $0xfce08141; WORD $0xffff; BYTE $0x7f // andl	$2147483644, %r8d               # imm = 0x7FFFFFFC

LBB3_3:
	LONG $0x0710fcc5             // vmovups	(%rdi), %ymm0
	LONG $0x0659fcc5             // vmulps	(%rsi), %ymm0, %ymm0
	LONG $0x0211fcc5             // vmovups	%ymm0, (%rdx)
	LONG $0x4710fcc5; BYTE $0x20 // vmovups	32(%rdi), %ymm0
	LONG $0x4659fcc5; BYTE $0x20 // vmulps	32(%rsi), %ymm0, %ymm0
	LONG $0x4211fcc5; BYTE $0x20 // vmovups	%ymm0, 32(%rdx)
	LONG $0x4710fcc5; BYTE $0x40 // vmovups	64(%rdi), %ymm0
	LONG $0x4659fcc5; BYTE $0x40 // vmulps	64(%rsi), %ymm0, %ymm0
	LONG $0x4211fcc5; BYTE $0x40 // vmovups	%ymm0, 64(%rdx)
	LONG $0x4710fcc5; BYTE $0x60 // vmovups	96(%rdi), %ymm0
	LONG $0x4659fcc5; BYTE $0x60 // vmulps	96(%rsi), %ymm0, %ymm0
	LONG $0x4211fcc5; BYTE $0x60 // vmovups	%ymm0, 96(%rdx)
	LONG $0x80ef8348             // subq	$-128, %rdi
	LONG $0x80ee8348             // subq	$-128, %rsi
	LONG $0x80ea8348             // subq	$-128, %rdx
	LONG $0xfcc08341             // addl	$-4, %r8d
	JNE  LBB3_3

LBB3_4:
	WORD $0xc085 // testl	%eax, %eax
	JE   LBB3_6

LBB3_5:
	LONG $0x0710fcc5 // vmovups	(%rdi), %ymm0
	LONG $0x0659fcc5 // vmulps	(%rsi), %ymm0, %ymm0
	LONG $0x0211fcc5 // vmovups	%ymm0, (%rdx)
	LONG $0x20c78348 // addq	$32, %rdi
	LONG $0x20c68348 // addq	$32, %rsi
	LONG $0x20c28348 // addq	$32, %rdx
	WORD $0xc8ff     // decl	%eax
	JNE  LBB3_5

LBB3_6:
	WORD $0x8548; BYTE $0xc9     // testq	%rcx, %rcx
	JLE  LBB3_14
	WORD $0xc889                 // movl	%ecx, %eax
	LONG $0x0710fac5             // vmovss	(%rdi), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	LONG $0x0659fac5             // vmulss	(%rsi), %xmm0, %xmm0
	LONG $0x0211fac5             // vmovss	%xmm0, (%rdx)
	LONG $0x01f88348             // cmpq	$1, %rax
	JE   LBB3_14
	LONG $0x4710fac5; BYTE $0x04 // vmovss	4(%rdi), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	LONG $0x4659fac5; BYTE $0x04 // vmulss	4(%rsi), %xmm0, %xmm0
	LONG $0x4211fac5; BYTE $0x04 // vmovss	%xmm0, 4(%rdx)
	WORD $0xf883; BYTE $0x02     // cmpl	$2, %eax
	JE   LBB3_14
	LONG $0x4710fac5; BYTE $0x08 // vmovss	8(%rdi), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	LONG $0x4659fac5; BYTE $0x08 // vmulss	8(%rsi), %xmm0, %xmm0
	LONG $0x4211fac5; BYTE $0x08 // vmovss	%xmm0, 8(%rdx)
	WORD $0xf883; BYTE $0x03     // cmpl	$3, %eax
	JE   LBB3_14
	LONG $0x4710fac5; BYTE $0x0c // vmovss	12(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	LONG $0x4659fac5; BYTE $0x0c // vmulss	12(%rsi), %xmm0, %xmm0
	LONG $0x4211fac5; BYTE $0x0c // vmovss	%xmm0, 12(%rdx)
	WORD $0xf883; BYTE $0x04     // cmpl	$4, %eax
	JE   LBB3_14
	LONG $0x4710fac5; BYTE $0x10 // vmovss	16(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	LONG $0x4659fac5; BYTE $0x10 // vmulss	16(%rsi), %xmm0, %xmm0
	LONG $0x4211fac5; BYTE $0x10 // vmovss	%xmm0, 16(%rdx)
	WORD $0xf883; BYTE $0x05     // cmpl	$5, %eax
	JE   LBB3_14
	LONG $0x4710fac5; BYTE $0x14 // vmovss	20(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	LONG $0x4659fac5; BYTE $0x14 // vmulss	20(%rsi), %xmm0, %xmm0
	LONG $0x4211fac5; BYTE $0x14 // vmovss	%xmm0, 20(%rdx)
	WORD $0xf883; BYTE $0x06     // cmpl	$6, %eax
	JE   LBB3_14
	LONG $0x4710fac5; BYTE $0x18 // vmovss	24(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	LONG $0x4659fac5; BYTE $0x18 // vmulss	24(%rsi), %xmm0, %xmm0
	LONG $0x4211fac5; BYTE $0x18 // vmovss	%xmm0, 24(%rdx)

LBB3_14:
	WORD $0x8948; BYTE $0xec // movq	%rbp, %rsp
	BYTE $0x5d               // popq	%rbp
	WORD $0xf8c5; BYTE $0x77 // vzeroupper
	BYTE $0xc3               // retq

TEXT ·_mm256_dot(SB), $8-32
	MOVQ a+0(FP), DI
	MOVQ b+8(FP), SI
	MOVQ n+16(FP), DX
	BYTE $0x55               // pushq	%rbp
	WORD $0x8948; BYTE $0xe5 // movq	%rsp, %rbp
	LONG $0xf8e48348         // andq	$-8, %rsp
	LONG $0x07428d48         // leaq	7(%rdx), %rax
	WORD $0x8548; BYTE $0xd2 // testq	%rdx, %rdx
	LONG $0xc2490f48         // cmovnsq	%rdx, %rax
	WORD $0x8949; BYTE $0xc0 // movq	%rax, %r8
	LONG $0x03f8c149         // sarq	$3, %r8
	LONG $0xf8e08348         // andq	$-8, %rax
	WORD $0x2948; BYTE $0xc2 // subq	%rax, %rdx
	WORD $0x8545; BYTE $0xc0 // testl	%r8d, %r8d
	JLE  LBB4_1
	LONG $0x0710fcc5         // vmovups	(%rdi), %ymm0
	LONG $0x0659fcc5         // vmulps	(%rsi), %ymm0, %ymm0
	LONG $0x20c78348         // addq	$32, %rdi
	LONG $0x20c68348         // addq	$32, %rsi
	LONG $0x01f88341         // cmpl	$1, %r8d
	JE   LBB4_8
	LONG $0xff488d41         // leal	-1(%r8), %ecx
	LONG $0xfec08341         // addl	$-2, %r8d
	WORD $0xc889             // movl	%ecx, %eax
	WORD $0xe083; BYTE $0x03 // andl	$3, %eax
	LONG $0x03f88341         // cmpl	$3, %r8d
	JB   LBB4_6
	WORD $0xe183; BYTE $0xfc // andl	$-4, %ecx

LBB4_5:
	LONG $0x0f10fcc5             // vmovups	(%rdi), %ymm1
	LONG $0x5710fcc5; BYTE $0x20 // vmovups	32(%rdi), %ymm2
	LONG $0x5f10fcc5; BYTE $0x40 // vmovups	64(%rdi), %ymm3
	LONG $0x6710fcc5; BYTE $0x60 // vmovups	96(%rdi), %ymm4
	LONG $0x0e59f4c5             // vmulps	(%rsi), %ymm1, %ymm1
	LONG $0xc158fcc5             // vaddps	%ymm1, %ymm0, %ymm0
	LONG $0x4e59ecc5; BYTE $0x20 // vmulps	32(%rsi), %ymm2, %ymm1
	LONG $0x5659e4c5; BYTE $0x40 // vmulps	64(%rsi), %ymm3, %ymm2
	LONG $0xc158fcc5             // vaddps	%ymm1, %ymm0, %ymm0
	LONG $0xc258fcc5             // vaddps	%ymm2, %ymm0, %ymm0
	LONG $0x4e59dcc5; BYTE $0x60 // vmulps	96(%rsi), %ymm4, %ymm1
	LONG $0xc158fcc5             // vaddps	%ymm1, %ymm0, %ymm0
	LONG $0x80ef8348             // subq	$-128, %rdi
	LONG $0x80ee8348             // subq	$-128, %rsi
	WORD $0xc183; BYTE $0xfc     // addl	$-4, %ecx
	JNE  LBB4_5

LBB4_6:
	WORD $0xc085 // testl	%eax, %eax
	JE   LBB4_8

LBB4_7:
	LONG $0x0f10fcc5 // vmovups	(%rdi), %ymm1
	LONG $0x0e59f4c5 // vmulps	(%rsi), %ymm1, %ymm1
	LONG $0xc158fcc5 // vaddps	%ymm1, %ymm0, %ymm0
	LONG $0x20c78348 // addq	$32, %rdi
	LONG $0x20c68348 // addq	$32, %rsi
	WORD $0xc8ff     // decl	%eax
	JNE  LBB4_7
	JMP  LBB4_8

LBB4_1:
	LONG $0xc057f8c5 // vxorps	%xmm0, %xmm0, %xmm0

LBB4_8:
	LONG $0x197de3c4; WORD $0x01c1 // vextractf128	$1, %ymm0, %xmm1
	LONG $0xc058f0c5               // vaddps	%xmm0, %xmm1, %xmm0
	LONG $0xc8c6f9c5; BYTE $0x01   // vshufpd	$1, %xmm0, %xmm0, %xmm1         # xmm1 = xmm0[1,0]
	LONG $0xc158f8c5               // vaddps	%xmm1, %xmm0, %xmm0
	LONG $0xc816fac5               // vmovshdup	%xmm0, %xmm1            # xmm1 = xmm0[1,1,3,3]
	LONG $0xc158fac5               // vaddss	%xmm1, %xmm0, %xmm0
	WORD $0x8548; BYTE $0xd2       // testq	%rdx, %rdx
	JLE  LBB4_16
	WORD $0xd089                   // movl	%edx, %eax
	LONG $0x0f10fac5               // vmovss	(%rdi), %xmm1                   # xmm1 = mem[0],zero,zero,zero
	LONG $0x0e59f2c5               // vmulss	(%rsi), %xmm1, %xmm1
	LONG $0xc058f2c5               // vaddss	%xmm0, %xmm1, %xmm0
	LONG $0x01f88348               // cmpq	$1, %rax
	JE   LBB4_16
	LONG $0x4f10fac5; BYTE $0x04   // vmovss	4(%rdi), %xmm1                  # xmm1 = mem[0],zero,zero,zero
	LONG $0x4e59f2c5; BYTE $0x04   // vmulss	4(%rsi), %xmm1, %xmm1
	LONG $0xc058f2c5               // vaddss	%xmm0, %xmm1, %xmm0
	WORD $0xf883; BYTE $0x02       // cmpl	$2, %eax
	JE   LBB4_16
	LONG $0x4f10fac5; BYTE $0x08   // vmovss	8(%rdi), %xmm1                  # xmm1 = mem[0],zero,zero,zero
	LONG $0x4e59f2c5; BYTE $0x08   // vmulss	8(%rsi), %xmm1, %xmm1
	LONG $0xc058f2c5               // vaddss	%xmm0, %xmm1, %xmm0
	WORD $0xf883; BYTE $0x03       // cmpl	$3, %eax
	JE   LBB4_16
	LONG $0x4f10fac5; BYTE $0x0c   // vmovss	12(%rdi), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	LONG $0x4e59f2c5; BYTE $0x0c   // vmulss	12(%rsi), %xmm1, %xmm1
	LONG $0xc058f2c5               // vaddss	%xmm0, %xmm1, %xmm0
	WORD $0xf883; BYTE $0x04       // cmpl	$4, %eax
	JE   LBB4_16
	LONG $0x4f10fac5; BYTE $0x10   // vmovss	16(%rdi), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	LONG $0x4e59f2c5; BYTE $0x10   // vmulss	16(%rsi), %xmm1, %xmm1
	LONG $0xc058f2c5               // vaddss	%xmm0, %xmm1, %xmm0
	WORD $0xf883; BYTE $0x05       // cmpl	$5, %eax
	JE   LBB4_16
	LONG $0x4f10fac5; BYTE $0x14   // vmovss	20(%rdi), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	LONG $0x4e59f2c5; BYTE $0x14   // vmulss	20(%rsi), %xmm1, %xmm1
	LONG $0xc058f2c5               // vaddss	%xmm0, %xmm1, %xmm0
	WORD $0xf883; BYTE $0x06       // cmpl	$6, %eax
	JE   LBB4_16
	LONG $0x4f10fac5; BYTE $0x18   // vmovss	24(%rdi), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	LONG $0x4e59f2c5; BYTE $0x18   // vmulss	24(%rsi), %xmm1, %xmm1
	LONG $0xc058f2c5               // vaddss	%xmm0, %xmm1, %xmm0

LBB4_16:
	WORD  $0x8948; BYTE $0xec // movq	%rbp, %rsp
	BYTE  $0x5d               // popq	%rbp
	WORD  $0xf8c5; BYTE $0x77 // vzeroupper
	MOVSS X0, result+24(FP)
	RET

TEXT ·_mm256_euclidean(SB), $8-32
	MOVQ a+0(FP), DI
	MOVQ b+8(FP), SI
	MOVQ n+16(FP), DX
	BYTE $0x55               // pushq	%rbp
	WORD $0x8948; BYTE $0xe5 // movq	%rsp, %rbp
	LONG $0xf8e48348         // andq	$-8, %rsp
	LONG $0x07428d48         // leaq	7(%rdx), %rax
	WORD $0x8548; BYTE $0xd2 // testq	%rdx, %rdx
	LONG $0xc2490f48         // cmovnsq	%rdx, %rax
	WORD $0x8949; BYTE $0xc0 // movq	%rax, %r8
	LONG $0x03f8c149         // sarq	$3, %r8
	LONG $0xf8e08348         // andq	$-8, %rax
	WORD $0x2948; BYTE $0xc2 // subq	%rax, %rdx
	WORD $0x8545; BYTE $0xc0 // testl	%r8d, %r8d
	JLE  LBB5_1
	LONG $0x0710fcc5         // vmovups	(%rdi), %ymm0
	LONG $0x065cfcc5         // vsubps	(%rsi), %ymm0, %ymm0
	LONG $0xc059fcc5         // vmulps	%ymm0, %ymm0, %ymm0
	LONG $0x20c78348         // addq	$32, %rdi
	LONG $0x20c68348         // addq	$32, %rsi
	LONG $0x01f88341         // cmpl	$1, %r8d
	JE   LBB5_8
	LONG $0xff488d41         // leal	-1(%r8), %ecx
	LONG $0xfec08341         // addl	$-2, %r8d
	WORD $0xc889             // movl	%ecx, %eax
	WORD $0xe083; BYTE $0x03 // andl	$3, %eax
	LONG $0x03f88341         // cmpl	$3, %r8d
	JB   LBB5_6
	WORD $0xe183; BYTE $0xfc // andl	$-4, %ecx

LBB5_5:
	LONG $0x0f10fcc5             // vmovups	(%rdi), %ymm1
	LONG $0x5710fcc5; BYTE $0x20 // vmovups	32(%rdi), %ymm2
	LONG $0x5f10fcc5; BYTE $0x40 // vmovups	64(%rdi), %ymm3
	LONG $0x6710fcc5; BYTE $0x60 // vmovups	96(%rdi), %ymm4
	LONG $0x0e5cf4c5             // vsubps	(%rsi), %ymm1, %ymm1
	LONG $0xc959f4c5             // vmulps	%ymm1, %ymm1, %ymm1
	LONG $0xc158fcc5             // vaddps	%ymm1, %ymm0, %ymm0
	LONG $0x4e5cecc5; BYTE $0x20 // vsubps	32(%rsi), %ymm2, %ymm1
	LONG $0xc959f4c5             // vmulps	%ymm1, %ymm1, %ymm1
	LONG $0xc158fcc5             // vaddps	%ymm1, %ymm0, %ymm0
	LONG $0x4e5ce4c5; BYTE $0x40 // vsubps	64(%rsi), %ymm3, %ymm1
	LONG $0xc959f4c5             // vmulps	%ymm1, %ymm1, %ymm1
	LONG $0xc158fcc5             // vaddps	%ymm1, %ymm0, %ymm0
	LONG $0x4e5cdcc5; BYTE $0x60 // vsubps	96(%rsi), %ymm4, %ymm1
	LONG $0xc959f4c5             // vmulps	%ymm1, %ymm1, %ymm1
	LONG $0xc158fcc5             // vaddps	%ymm1, %ymm0, %ymm0
	LONG $0x80ef8348             // subq	$-128, %rdi
	LONG $0x80ee8348             // subq	$-128, %rsi
	WORD $0xc183; BYTE $0xfc     // addl	$-4, %ecx
	JNE  LBB5_5

LBB5_6:
	WORD $0xc085 // testl	%eax, %eax
	JE   LBB5_8

LBB5_7:
	LONG $0x0f10fcc5 // vmovups	(%rdi), %ymm1
	LONG $0x0e5cf4c5 // vsubps	(%rsi), %ymm1, %ymm1
	LONG $0xc959f4c5 // vmulps	%ymm1, %ymm1, %ymm1
	LONG $0xc158fcc5 // vaddps	%ymm1, %ymm0, %ymm0
	LONG $0x20c78348 // addq	$32, %rdi
	LONG $0x20c68348 // addq	$32, %rsi
	WORD $0xc8ff     // decl	%eax
	JNE  LBB5_7
	JMP  LBB5_8

LBB5_1:
	LONG $0xc057f8c5 // vxorps	%xmm0, %xmm0, %xmm0

LBB5_8:
	LONG $0x197de3c4; WORD $0x01c1 // vextractf128	$1, %ymm0, %xmm1
	LONG $0xc058f0c5               // vaddps	%xmm0, %xmm1, %xmm0
	LONG $0xc8c6f9c5; BYTE $0x01   // vshufpd	$1, %xmm0, %xmm0, %xmm1         # xmm1 = xmm0[1,0]
	LONG $0xc158f8c5               // vaddps	%xmm1, %xmm0, %xmm0
	LONG $0xc816fac5               // vmovshdup	%xmm0, %xmm1            # xmm1 = xmm0[1,1,3,3]
	LONG $0xc158fac5               // vaddss	%xmm1, %xmm0, %xmm0
	WORD $0x8548; BYTE $0xd2       // testq	%rdx, %rdx
	JLE  LBB5_16
	LONG $0x0f10fac5               // vmovss	(%rdi), %xmm1                   # xmm1 = mem[0],zero,zero,zero
	LONG $0x0e5cf2c5               // vsubss	(%rsi), %xmm1, %xmm1
	WORD $0xd089                   // movl	%edx, %eax
	LONG $0xc959f2c5               // vmulss	%xmm1, %xmm1, %xmm1
	LONG $0xc058f2c5               // vaddss	%xmm0, %xmm1, %xmm0
	LONG $0x01f88348               // cmpq	$1, %rax
	JE   LBB5_16
	LONG $0x4f10fac5; BYTE $0x04   // vmovss	4(%rdi), %xmm1                  # xmm1 = mem[0],zero,zero,zero
	LONG $0x4e5cf2c5; BYTE $0x04   // vsubss	4(%rsi), %xmm1, %xmm1
	LONG $0xc959f2c5               // vmulss	%xmm1, %xmm1, %xmm1
	LONG $0xc058f2c5               // vaddss	%xmm0, %xmm1, %xmm0
	WORD $0xf883; BYTE $0x02       // cmpl	$2, %eax
	JE   LBB5_16
	LONG $0x4f10fac5; BYTE $0x08   // vmovss	8(%rdi), %xmm1                  # xmm1 = mem[0],zero,zero,zero
	LONG $0x4e5cf2c5; BYTE $0x08   // vsubss	8(%rsi), %xmm1, %xmm1
	LONG $0xc959f2c5               // vmulss	%xmm1, %xmm1, %xmm1
	LONG $0xc058f2c5               // vaddss	%xmm0, %xmm1, %xmm0
	WORD $0xf883; BYTE $0x03       // cmpl	$3, %eax
	JE   LBB5_16
	LONG $0x4f10fac5; BYTE $0x0c   // vmovss	12(%rdi), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	LONG $0x4e5cf2c5; BYTE $0x0c   // vsubss	12(%rsi), %xmm1, %xmm1
	LONG $0xc959f2c5               // vmulss	%xmm1, %xmm1, %xmm1
	LONG $0xc058f2c5               // vaddss	%xmm0, %xmm1, %xmm0
	WORD $0xf883; BYTE $0x04       // cmpl	$4, %eax
	JE   LBB5_16
	LONG $0x4f10fac5; BYTE $0x10   // vmovss	16(%rdi), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	LONG $0x4e5cf2c5; BYTE $0x10   // vsubss	16(%rsi), %xmm1, %xmm1
	LONG $0xc959f2c5               // vmulss	%xmm1, %xmm1, %xmm1
	LONG $0xc058f2c5               // vaddss	%xmm0, %xmm1, %xmm0
	WORD $0xf883; BYTE $0x05       // cmpl	$5, %eax
	JE   LBB5_16
	LONG $0x4f10fac5; BYTE $0x14   // vmovss	20(%rdi), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	LONG $0x4e5cf2c5; BYTE $0x14   // vsubss	20(%rsi), %xmm1, %xmm1
	LONG $0xc959f2c5               // vmulss	%xmm1, %xmm1, %xmm1
	LONG $0xc058f2c5               // vaddss	%xmm0, %xmm1, %xmm0
	WORD $0xf883; BYTE $0x06       // cmpl	$6, %eax
	JE   LBB5_16
	LONG $0x4f10fac5; BYTE $0x18   // vmovss	24(%rdi), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	LONG $0x4e5cf2c5; BYTE $0x18   // vsubss	24(%rsi), %xmm1, %xmm1
	LONG $0xc959f2c5               // vmulss	%xmm1, %xmm1, %xmm1
	LONG $0xc058f2c5               // vaddss	%xmm0, %xmm1, %xmm0

LBB5_16:
	LONG  $0xc051fac5         // vsqrtss	%xmm0, %xmm0, %xmm0
	WORD  $0x8948; BYTE $0xec // movq	%rbp, %rsp
	BYTE  $0x5d               // popq	%rbp
	WORD  $0xf8c5; BYTE $0x77 // vzeroupper
	MOVSS X0, result+24(FP)
	RET
