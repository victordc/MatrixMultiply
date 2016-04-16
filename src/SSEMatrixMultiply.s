	.file	"SSEMatrixMultiply.c"
	.section	.rodata
	.align 8
.LC1:
	.string	"Array size = %dx%d, Tile size = %d, Total time = %f\n"
	.text
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$328, %rsp
	movq	%rsp, %rax
	movq	%rax, %rbx
	movl	$0, %edi
	call	time
	movl	%eax, %edi
	call	srand
	movl	$512, -52(%rbp)
	movl	$1, -56(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %esi
	movl	-60(%rbp), %edi
	movslq	%esi, %rax
	subq	$1, %rax
	movq	%rax, -72(%rbp)
	movslq	%esi, %rax
	movq	%rax, -336(%rbp)
	movq	$0, -328(%rbp)
	movslq	%edi, %rax
	subq	$1, %rax
	movq	%rax, -80(%rbp)
	movslq	%esi, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	movslq	%edi, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movq	%r15, %rdx
	imulq	%r12, %rdx
	movq	%r13, %rax
	imulq	%r14, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r14, %rax
	mulq	%r12
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movslq	%esi, %rax
	movq	%rax, -176(%rbp)
	movq	$0, -168(%rbp)
	movslq	%edi, %rax
	movq	%rax, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	-176(%rbp), %r8
	movq	-168(%rbp), %r9
	movq	%r9, %rdx
	movq	-192(%rbp), %r14
	movq	-184(%rbp), %r15
	imulq	%r14, %rdx
	movq	%r15, %rax
	imulq	%r8, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r8, %rax
	mulq	%r14
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movslq	%esi, %rdx
	movslq	%edi, %rax
	imulq	%rdx, %rax
	salq	$2, %rax
	leaq	3(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdx
	movl	-60(%rbp), %eax
	movslq	%eax, %rcx
	movl	-60(%rbp), %eax
	cltq
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	array_gen
	movl	-60(%rbp), %esi
	movl	-60(%rbp), %edi
	movslq	%esi, %rax
	subq	$1, %rax
	movq	%rax, -96(%rbp)
	movslq	%esi, %rax
	movq	%rax, -352(%rbp)
	movq	$0, -344(%rbp)
	movslq	%edi, %rax
	subq	$1, %rax
	movq	%rax, -104(%rbp)
	movslq	%esi, %rax
	movq	%rax, -208(%rbp)
	movq	$0, -200(%rbp)
	movslq	%edi, %rax
	movq	%rax, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	-208(%rbp), %r14
	movq	-200(%rbp), %r15
	movq	%r15, %rdx
	movq	-224(%rbp), %r10
	movq	-216(%rbp), %r11
	imulq	%r10, %rdx
	movq	%r11, %rax
	imulq	%r14, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r14, %rax
	mulq	%r10
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movslq	%esi, %rax
	movq	%rax, -240(%rbp)
	movq	$0, -232(%rbp)
	movslq	%edi, %rax
	movq	%rax, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	-240(%rbp), %r10
	movq	-232(%rbp), %r11
	movq	%r11, %rdx
	movq	-256(%rbp), %r8
	movq	-248(%rbp), %r9
	imulq	%r8, %rdx
	movq	%r9, %rax
	imulq	%r10, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r10, %rax
	mulq	%r8
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movslq	%esi, %rdx
	movslq	%edi, %rax
	imulq	%rdx, %rax
	salq	$2, %rax
	leaq	3(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdx
	movl	-60(%rbp), %eax
	movslq	%eax, %rcx
	movl	-60(%rbp), %eax
	cltq
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	array_gen
	call	clock
	movq	%rax, -120(%rbp)
	movl	-60(%rbp), %ecx
	movl	-60(%rbp), %esi
	movslq	%ecx, %rax
	subq	$1, %rax
	movq	%rax, -128(%rbp)
	movslq	%ecx, %rax
	movq	%rax, -368(%rbp)
	movq	$0, -360(%rbp)
	movslq	%esi, %rax
	subq	$1, %rax
	movq	%rax, -136(%rbp)
	movslq	%ecx, %rax
	movq	%rax, -272(%rbp)
	movq	$0, -264(%rbp)
	movslq	%esi, %rax
	movq	%rax, -288(%rbp)
	movq	$0, -280(%rbp)
	movq	-272(%rbp), %r8
	movq	-264(%rbp), %r9
	movq	%r9, %rdx
	movq	-288(%rbp), %r14
	movq	-280(%rbp), %r15
	imulq	%r14, %rdx
	movq	%r15, %rax
	imulq	%r8, %rax
	leaq	(%rdx,%rax), %rdi
	movq	%r8, %rax
	mulq	%r14
	addq	%rdx, %rdi
	movq	%rdi, %rdx
	movslq	%ecx, %rax
	movq	%rax, -304(%rbp)
	movq	$0, -296(%rbp)
	movslq	%esi, %rax
	movq	%rax, -320(%rbp)
	movq	$0, -312(%rbp)
	movq	-304(%rbp), %r9
	movq	-296(%rbp), %r10
	movq	%r10, %rdx
	movq	-320(%rbp), %r11
	movq	-312(%rbp), %r12
	imulq	%r11, %rdx
	movq	%r12, %rax
	imulq	%r9, %rax
	leaq	(%rdx,%rax), %rdi
	movq	%r9, %rax
	mulq	%r11
	addq	%rdx, %rdi
	movq	%rdi, %rdx
	movslq	%ecx, %rdx
	movslq	%esi, %rax
	imulq	%rdx, %rax
	salq	$2, %rax
	leaq	3(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-88(%rbp), %rsi
	movl	-60(%rbp), %eax
	cltq
	movl	-56(%rbp), %edi
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	multiply_tiled
	call	clock
	movq	%rax, -152(%rbp)
	movq	-120(%rbp), %rax
	movq	-152(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC0(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -160(%rbp)
	movq	-160(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	-52(%rbp), %edx
	movl	-52(%rbp), %esi
	movq	%rax, -176(%rbp)
	movsd	-176(%rbp), %xmm0
	movl	$.LC1, %edi
	movl	$1, %eax
	call	printf
	movl	$0, %eax
	movq	%rbx, %rsp
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.size	main, .-main
	.globl	array_gen
	.type	array_gen, @function
array_gen:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-64(%rbp), %rbx
	movq	%rbx, %rax
	subq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	%rbx, %r8
	movl	$0, %r9d
	movl	$0, -20(%rbp)
	jmp	.L4
.L7:
	movl	$0, -24(%rbp)
	jmp	.L5
.L6:
	call	rand
	cvtsi2ss	%eax, %xmm0
	movss	.LC2(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	movl	-20(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, (%rcx,%rdx,4)
	addl	$1, -24(%rbp)
.L5:
	movl	-24(%rbp), %eax
	cltq
	cmpq	-64(%rbp), %rax
	jb	.L6
	addl	$1, -20(%rbp)
.L4:
	movl	-20(%rbp), %eax
	cltq
	cmpq	-56(%rbp), %rax
	jb	.L7
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	array_gen, .-array_gen
	.globl	multiply_tiled
	.type	multiply_tiled, @function
multiply_tiled:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movl	%r8d, -116(%rbp)
	movq	-88(%rbp), %rbx
	movq	%rbx, %rax
	subq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	%rbx, %r11
	movl	$0, %r12d
	movq	-88(%rbp), %r12
	movq	%r12, %rax
	subq	$1, %rax
	movq	%rax, -72(%rbp)
	movq	%r12, %r13
	movl	$0, %r14d
	movq	-88(%rbp), %r13
	movq	%r13, %rax
	subq	$1, %rax
	movq	%rax, -80(%rbp)
	movq	%r13, %r9
	movl	$0, %r10d
	movl	.LC3(%rip), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L9
.L22:
	movl	$0, -52(%rbp)
	jmp	.L10
.L21:
	movl	-44(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.L11
.L20:
	movl	-52(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.L12
.L17:
	movl	$0, -56(%rbp)
	jmp	.L13
.L14:
	movl	-40(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movl	-56(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm1
	movl	-56(%rbp), %eax
	cltq
	imulq	%r12, %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movl	-48(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm0
	mulss	%xmm1, %xmm0
	movss	-36(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	addl	$1, -56(%rbp)
.L13:
	movl	-56(%rbp), %eax
	cltq
	cmpq	-88(%rbp), %rax
	jb	.L14
	movl	-40(%rbp), %eax
	cltq
	imulq	%r13, %rax
	leaq	0(,%rax,4), %rdx
	movq	-112(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, (%rcx,%rdx,4)
	movl	.LC3(%rip), %eax
	movl	%eax, -36(%rbp)
	addl	$1, -48(%rbp)
.L12:
	cvtsi2sd	-48(%rbp), %xmm3
	movsd	%xmm3, -128(%rbp)
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	js	.L15
	cvtsi2sdq	%rax, %xmm0
	jmp	.L16
.L15:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L16:
	movl	-116(%rbp), %eax
	movl	-52(%rbp), %edx
	addl	%edx, %eax
	subl	$1, %eax
	cvtsi2sd	%eax, %xmm2
	movapd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	call	fmin
	ucomisd	-128(%rbp), %xmm0
	ja	.L17
	addl	$1, -40(%rbp)
.L11:
	cvtsi2sd	-40(%rbp), %xmm4
	movsd	%xmm4, -128(%rbp)
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	js	.L18
	cvtsi2sdq	%rax, %xmm0
	jmp	.L19
.L18:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L19:
	movl	-116(%rbp), %eax
	movl	-44(%rbp), %edx
	addl	%edx, %eax
	subl	$1, %eax
	cvtsi2sd	%eax, %xmm2
	movapd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	call	fmin
	ucomisd	-128(%rbp), %xmm0
	ja	.L20
	movl	-116(%rbp), %eax
	addl	%eax, -52(%rbp)
.L10:
	movl	-52(%rbp), %eax
	cltq
	cmpq	-88(%rbp), %rax
	jb	.L21
	movl	-116(%rbp), %eax
	addl	%eax, -44(%rbp)
.L9:
	movl	-44(%rbp), %eax
	cltq
	cmpq	-88(%rbp), %rax
	jb	.L22
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	ret
	.size	multiply_tiled, .-multiply_tiled
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1093567616
	.align 4
.LC2:
	.long	1325400064
	.align 4
.LC3:
	.long	0
	.ident	"GCC: (GNU) 4.8.3 20140911 (Red Hat 4.8.3-9)"
	.section	.note.GNU-stack,"",@progbits
