	.file	"MatrixMultiply.c"
	.section	.rodata
	.align 8
.LC2:
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
	subq	$360, %rsp
	movl	$0, %edi
	call	time
	movl	%eax, %edi
	call	srand
	movl	$0, -52(%rbp)
	jmp	.L2
.L5:
	cvtsi2sd	-52(%rbp), %xmm0
	movabsq	$4611686018427387904, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, -392(%rbp)
	movsd	-392(%rbp), %xmm0
	call	pow
	cvttsd2si	%xmm0, %eax
	movl	%eax, -60(%rbp)
	movl	$0, -56(%rbp)
	jmp	.L3
.L4:
	movq	%rsp, %rax
	movq	%rax, %rbx
	cvtsi2sd	-56(%rbp), %xmm0
	movabsq	$4611686018427387904, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, -392(%rbp)
	movsd	-392(%rbp), %xmm0
	call	pow
	cvttsd2si	%xmm0, %eax
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %esi
	movl	-68(%rbp), %edi
	movslq	%esi, %rax
	subq	$1, %rax
	movq	%rax, -80(%rbp)
	movslq	%esi, %rax
	movq	%rax, -352(%rbp)
	movq	$0, -344(%rbp)
	movslq	%edi, %rax
	subq	$1, %rax
	movq	%rax, -88(%rbp)
	movslq	%esi, %rax
	movq	%rax, -208(%rbp)
	movq	$0, -200(%rbp)
	movslq	%edi, %rax
	movq	%rax, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	-208(%rbp), %r8
	movq	-200(%rbp), %r9
	movq	%r9, %rdx
	movq	-224(%rbp), %r10
	movq	-216(%rbp), %r11
	imulq	%r10, %rdx
	movq	%r11, %rax
	imulq	%r8, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r8, %rax
	mulq	%r10
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movslq	%esi, %rax
	movq	%rax, -240(%rbp)
	movq	$0, -232(%rbp)
	movslq	%edi, %rax
	movq	%rax, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	-240(%rbp), %r8
	movq	-232(%rbp), %r9
	movq	%r9, %rdx
	movq	-256(%rbp), %r10
	movq	-248(%rbp), %r11
	imulq	%r10, %rdx
	movq	%r11, %rax
	imulq	%r8, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r8, %rax
	mulq	%r10
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
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdx
	movl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movl	-68(%rbp), %eax
	cltq
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	array_gen
	movl	-68(%rbp), %esi
	movl	-68(%rbp), %edi
	movslq	%esi, %rax
	subq	$1, %rax
	movq	%rax, -104(%rbp)
	movslq	%esi, %rax
	movq	%rax, -368(%rbp)
	movq	$0, -360(%rbp)
	movslq	%edi, %rax
	subq	$1, %rax
	movq	%rax, -112(%rbp)
	movslq	%esi, %rax
	movq	%rax, -272(%rbp)
	movq	$0, -264(%rbp)
	movslq	%edi, %rax
	movq	%rax, -288(%rbp)
	movq	$0, -280(%rbp)
	movq	-272(%rbp), %r8
	movq	-264(%rbp), %r9
	movq	%r9, %rdx
	movq	-288(%rbp), %r10
	movq	-280(%rbp), %r11
	imulq	%r10, %rdx
	movq	%r11, %rax
	imulq	%r8, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r8, %rax
	mulq	%r10
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movslq	%esi, %rax
	movq	%rax, -304(%rbp)
	movq	$0, -296(%rbp)
	movslq	%edi, %rax
	movq	%rax, -320(%rbp)
	movq	$0, -312(%rbp)
	movq	-304(%rbp), %r8
	movq	-296(%rbp), %r9
	movq	%r9, %rdx
	movq	-320(%rbp), %r10
	movq	-312(%rbp), %r11
	imulq	%r10, %rdx
	movq	%r11, %rax
	imulq	%r8, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r8, %rax
	mulq	%r10
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
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdx
	movl	-68(%rbp), %eax
	movslq	%eax, %rcx
	movl	-68(%rbp), %eax
	cltq
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	array_gen
	call	clock
	movq	%rax, -128(%rbp)
	movl	-68(%rbp), %esi
	movl	-68(%rbp), %edi
	movslq	%esi, %rax
	subq	$1, %rax
	movq	%rax, -136(%rbp)
	movslq	%esi, %rax
	movq	%rax, -384(%rbp)
	movq	$0, -376(%rbp)
	movslq	%edi, %rax
	subq	$1, %rax
	movq	%rax, -144(%rbp)
	movslq	%esi, %rax
	movq	%rax, -336(%rbp)
	movq	$0, -328(%rbp)
	movslq	%edi, %rax
	movq	%rax, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	-336(%rbp), %r9
	movq	-328(%rbp), %r10
	movq	%r10, %rdx
	imulq	-192(%rbp), %rdx
	movq	-184(%rbp), %rax
	imulq	%r9, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r9, %rax
	mulq	-192(%rbp)
	addq	%rdx, %rcx
	movq	%rcx, %rdx
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
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movl	-68(%rbp), %eax
	movslq	%eax, %rdi
	movl	-64(%rbp), %eax
	movl	%eax, %r8d
	call	multiply_tiled
	call	clock
	movq	%rax, -160(%rbp)
	movq	-128(%rbp), %rdx
	movq	-160(%rbp), %rax
	subq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -168(%rbp)
	movq	-168(%rbp), %rax
	movl	-64(%rbp), %ecx
	movl	-60(%rbp), %edx
	movl	-60(%rbp), %esi
	movq	%rax, -392(%rbp)
	movsd	-392(%rbp), %xmm0
	movl	$.LC2, %edi
	movl	$1, %eax
	call	printf
	movq	%rbx, %rsp
	addl	$1, -56(%rbp)
.L3:
	cvtsi2sd	-56(%rbp), %xmm0
	movabsq	$4611686018427387904, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, -392(%rbp)
	movsd	-392(%rbp), %xmm0
	call	pow
	cvtsi2sd	-60(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.L4
	addl	$1, -52(%rbp)
.L2:
	cvtsi2sd	-52(%rbp), %xmm0
	movabsq	$4611686018427387904, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, -392(%rbp)
	movsd	-392(%rbp), %xmm0
	call	pow
	movsd	.LC3(%rip), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.L5
	movl	$0, %eax
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
	jmp	.L8
.L11:
	movl	$0, -24(%rbp)
	jmp	.L9
.L10:
	call	rand
	cvtsi2ss	%eax, %xmm0
	movss	.LC4(%rip), %xmm1
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
.L9:
	movl	-24(%rbp), %eax
	cltq
	cmpq	-64(%rbp), %rax
	jb	.L10
	addl	$1, -20(%rbp)
.L8:
	movl	-20(%rbp), %eax
	cltq
	cmpq	-56(%rbp), %rax
	jb	.L11
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	array_gen, .-array_gen
	.section	.rodata
.LC5:
	.string	"Matrix[%i][%i]\n"
.LC6:
	.string	"%f\t"
	.text
	.globl	array_print
	.type	array_print, @function
array_print:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movl	-40(%rbp), %ebx
	movslq	%ebx, %rax
	subq	$1, %rax
	movq	%rax, -32(%rbp)
	movslq	%ebx, %rax
	movq	%rax, %r8
	movl	$0, %r9d
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	movl	$0, -20(%rbp)
	jmp	.L13
.L16:
	movl	$0, -24(%rbp)
	jmp	.L14
.L15:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movslq	%ebx, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movl	-24(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	movl	$.LC6, %edi
	movl	$1, %eax
	call	printf
	addl	$1, -24(%rbp)
.L14:
	movl	-24(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L15
	movl	$10, %edi
	call	putchar
	addl	$1, -20(%rbp)
.L13:
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L16
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	array_print, .-array_print
	.globl	multiply_basic
	.type	multiply_basic, @function
multiply_basic:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r13
	pushq	%r12
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	subq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movq	%rax, %r12
	movl	$0, %r13d
	movq	-72(%rbp), %rdx
	movq	%rdx, %rcx
	subq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movq	%rdx, %r10
	movl	$0, %r11d
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	subq	$1, %rsi
	movq	%rsi, -56(%rbp)
	movq	%rcx, %r8
	movl	$0, %r9d
	movl	.LC7(%rip), %esi
	movl	%esi, -20(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L18
.L23:
	movl	$0, -28(%rbp)
	jmp	.L19
.L22:
	movl	$0, -32(%rbp)
	jmp	.L20
.L21:
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	0(,%rsi,4), %rdi
	movq	-80(%rbp), %rsi
	addq	%rsi, %rdi
	movl	-32(%rbp), %esi
	movslq	%esi, %rsi
	movss	(%rdi,%rsi,4), %xmm1
	movl	-32(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rdx, %rsi
	leaq	0(,%rsi,4), %rdi
	movq	-88(%rbp), %rsi
	addq	%rsi, %rdi
	movl	-28(%rbp), %esi
	movslq	%esi, %rsi
	movss	(%rdi,%rsi,4), %xmm0
	mulss	%xmm1, %xmm0
	movss	-20(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	addl	$1, -32(%rbp)
.L20:
	movl	-32(%rbp), %esi
	movslq	%esi, %rsi
	cmpq	-72(%rbp), %rsi
	jb	.L21
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rcx, %rsi
	leaq	0(,%rsi,4), %rdi
	movq	-96(%rbp), %rsi
	leaq	(%rdi,%rsi), %r8
	movl	-28(%rbp), %esi
	movslq	%esi, %rdi
	movl	-20(%rbp), %esi
	movl	%esi, (%r8,%rdi,4)
	movl	.LC7(%rip), %esi
	movl	%esi, -20(%rbp)
	addl	$1, -28(%rbp)
.L19:
	movl	-28(%rbp), %esi
	movslq	%esi, %rsi
	cmpq	-72(%rbp), %rsi
	jb	.L22
	addl	$1, -24(%rbp)
.L18:
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	cmpq	-72(%rbp), %rsi
	jb	.L23
	popq	%r12
	popq	%r13
	popq	%rbp
	ret
	.size	multiply_basic, .-multiply_basic
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
	movl	.LC7(%rip), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L25
.L38:
	movl	$0, -52(%rbp)
	jmp	.L26
.L37:
	movl	-44(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.L27
.L36:
	movl	-52(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.L28
.L33:
	movl	$0, -56(%rbp)
	jmp	.L29
.L30:
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
.L29:
	movl	-56(%rbp), %eax
	cltq
	cmpq	-88(%rbp), %rax
	jb	.L30
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
	movl	.LC7(%rip), %eax
	movl	%eax, -36(%rbp)
	addl	$1, -48(%rbp)
.L28:
	cvtsi2sd	-48(%rbp), %xmm3
	movsd	%xmm3, -128(%rbp)
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	js	.L31
	cvtsi2sdq	%rax, %xmm0
	jmp	.L32
.L31:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L32:
	movl	-116(%rbp), %eax
	movl	-52(%rbp), %edx
	addl	%edx, %eax
	subl	$1, %eax
	cvtsi2sd	%eax, %xmm2
	movapd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	call	fmin
	ucomisd	-128(%rbp), %xmm0
	ja	.L33
	addl	$1, -40(%rbp)
.L27:
	cvtsi2sd	-40(%rbp), %xmm4
	movsd	%xmm4, -128(%rbp)
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	js	.L34
	cvtsi2sdq	%rax, %xmm0
	jmp	.L35
.L34:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L35:
	movl	-116(%rbp), %eax
	movl	-44(%rbp), %edx
	addl	%edx, %eax
	subl	$1, %eax
	cvtsi2sd	%eax, %xmm2
	movapd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	call	fmin
	ucomisd	-128(%rbp), %xmm0
	ja	.L36
	movl	-116(%rbp), %eax
	addl	%eax, -52(%rbp)
.L26:
	movl	-52(%rbp), %eax
	cltq
	cmpq	-88(%rbp), %rax
	jb	.L37
	movl	-116(%rbp), %eax
	addl	%eax, -44(%rbp)
.L25:
	movl	-44(%rbp), %eax
	cltq
	cmpq	-88(%rbp), %rax
	jb	.L38
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
.LC1:
	.long	0
	.long	1093567616
	.align 8
.LC3:
	.long	0
	.long	1082130432
	.align 4
.LC4:
	.long	1325400064
	.align 4
.LC7:
	.long	0
	.ident	"GCC: (GNU) 4.8.3 20140911 (Red Hat 4.8.3-9)"
	.section	.note.GNU-stack,"",@progbits
