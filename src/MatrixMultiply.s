	.file	"MatrixMultiply.c"
	.section	.rodata
	.align 8
.LC3:
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
.L9:
	cvtsi2sd	-52(%rbp), %xmm0
	movabsq	$4611686018427387904, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, -392(%rbp)
	movsd	-392(%rbp), %xmm0
	call	pow
	cvttsd2si	%xmm0, %eax
	movl	%eax, -68(%rbp)
	movl	$0, -56(%rbp)
	jmp	.L3
.L8:
	movq	%rsp, %rax
	movq	%rax, %rbx
	cvtsi2sd	-56(%rbp), %xmm0
	movabsq	$4611686018427387904, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, -392(%rbp)
	movsd	-392(%rbp), %xmm0
	call	pow
	cvttsd2si	%xmm0, %eax
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %esi
	movl	-76(%rbp), %edi
	movslq	%esi, %rax
	subq	$1, %rax
	movq	%rax, -88(%rbp)
	movslq	%esi, %rax
	movq	%rax, -352(%rbp)
	movq	$0, -344(%rbp)
	movslq	%edi, %rax
	subq	$1, %rax
	movq	%rax, -96(%rbp)
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
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdx
	movl	-76(%rbp), %eax
	movslq	%eax, %rcx
	movl	-76(%rbp), %eax
	cltq
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	array_gen
	movl	-76(%rbp), %esi
	movl	-76(%rbp), %edi
	movslq	%esi, %rax
	subq	$1, %rax
	movq	%rax, -112(%rbp)
	movslq	%esi, %rax
	movq	%rax, -368(%rbp)
	movq	$0, -360(%rbp)
	movslq	%edi, %rax
	subq	$1, %rax
	movq	%rax, -120(%rbp)
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
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdx
	movl	-76(%rbp), %eax
	movslq	%eax, %rcx
	movl	-76(%rbp), %eax
	cltq
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	array_gen
	movl	-76(%rbp), %esi
	movl	-76(%rbp), %edi
	movslq	%esi, %rax
	subq	$1, %rax
	movq	%rax, -136(%rbp)
	movslq	%esi, %rax
	movq	%rax, -384(%rbp)
	movq	$0, -376(%rbp)
	movslq	%esi, %rax
	leaq	0(,%rax,4), %r8
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
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -152(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L4
.L7:
	movl	$0, -64(%rbp)
	jmp	.L5
.L6:
	movq	%r8, %rsi
	shrq	$2, %rsi
	movq	-152(%rbp), %rcx
	movl	-64(%rbp), %eax
	movslq	%eax, %rdx
	movl	-60(%rbp), %eax
	cltq
	imulq	%rsi, %rax
	addq	%rax, %rdx
	movl	.LC1(%rip), %eax
	movl	%eax, (%rcx,%rdx,4)
	addl	$1, -64(%rbp)
.L5:
	movl	-64(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L6
	addl	$1, -60(%rbp)
.L4:
	movl	-60(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L7
	call	clock
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movl	-76(%rbp), %eax
	movslq	%eax, %rdi
	movl	-72(%rbp), %eax
	movl	%eax, %r8d
	call	multiply_tiled
	call	clock
	movq	%rax, -168(%rbp)
	movq	-160(%rbp), %rdx
	movq	-168(%rbp), %rax
	subq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC2(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -176(%rbp)
	movq	-176(%rbp), %rax
	movl	-72(%rbp), %ecx
	movl	-68(%rbp), %edx
	movl	-68(%rbp), %esi
	movq	%rax, -392(%rbp)
	movsd	-392(%rbp), %xmm0
	movl	$.LC3, %edi
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
	cvtsi2sd	-68(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.L8
	addl	$1, -52(%rbp)
.L2:
	cvtsi2sd	-52(%rbp), %xmm0
	movabsq	$4611686018427387904, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, -392(%rbp)
	movsd	-392(%rbp), %xmm0
	call	pow
	movsd	.LC4(%rip), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.L9
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
	jmp	.L12
.L15:
	movl	$0, -24(%rbp)
	jmp	.L13
.L14:
	call	rand
	cvtsi2ss	%eax, %xmm0
	movss	.LC5(%rip), %xmm1
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
.L13:
	movl	-24(%rbp), %eax
	cltq
	cmpq	-64(%rbp), %rax
	jb	.L14
	addl	$1, -20(%rbp)
.L12:
	movl	-20(%rbp), %eax
	cltq
	cmpq	-56(%rbp), %rax
	jb	.L15
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.size	array_gen, .-array_gen
	.section	.rodata
.LC6:
	.string	"Matrix[%i][%i]\n"
.LC7:
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
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	movl	$0, -20(%rbp)
	jmp	.L17
.L20:
	movl	$0, -24(%rbp)
	jmp	.L18
.L19:
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
	movl	$.LC7, %edi
	movl	$1, %eax
	call	printf
	addl	$1, -24(%rbp)
.L18:
	movl	-24(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L19
	movl	$10, %edi
	call	putchar
	addl	$1, -20(%rbp)
.L17:
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L20
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
	movl	.LC1(%rip), %esi
	movl	%esi, -20(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L22
.L27:
	movl	$0, -28(%rbp)
	jmp	.L23
.L26:
	movl	$0, -32(%rbp)
	jmp	.L24
.L25:
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
.L24:
	movl	-32(%rbp), %esi
	movslq	%esi, %rsi
	cmpq	-72(%rbp), %rsi
	jb	.L25
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
	movl	.LC1(%rip), %esi
	movl	%esi, -20(%rbp)
	addl	$1, -28(%rbp)
.L23:
	movl	-28(%rbp), %esi
	movslq	%esi, %rsi
	cmpq	-72(%rbp), %rsi
	jb	.L26
	addl	$1, -24(%rbp)
.L22:
	movl	-24(%rbp), %esi
	movslq	%esi, %rsi
	cmpq	-72(%rbp), %rsi
	jb	.L27
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
	movl	.LC1(%rip), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -48(%rbp)
	jmp	.L29
.L42:
	movl	$0, -56(%rbp)
	jmp	.L30
.L41:
	movl	$0, -40(%rbp)
	jmp	.L31
.L40:
	movl	-48(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.L32
.L39:
	movl	-56(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.L33
.L36:
	movl	-40(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm1
	movl	-52(%rbp), %eax
	cltq
	imulq	%r12, %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movl	-44(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm0
	mulss	%xmm1, %xmm0
	movss	-36(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	addl	$1, -52(%rbp)
.L33:
	cvtsi2sd	-52(%rbp), %xmm3
	movsd	%xmm3, -128(%rbp)
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
	movl	-56(%rbp), %edx
	addl	%edx, %eax
	cvtsi2sd	%eax, %xmm2
	movapd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	call	fmin
	ucomisd	-128(%rbp), %xmm0
	ja	.L36
	movl	-40(%rbp), %eax
	cltq
	imulq	%r13, %rax
	leaq	0(,%rax,4), %rdx
	movq	-112(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, (%rcx,%rdx,4)
	movl	.LC1(%rip), %eax
	movl	%eax, -36(%rbp)
	addl	$1, -44(%rbp)
.L32:
	cvtsi2sd	-44(%rbp), %xmm4
	movsd	%xmm4, -128(%rbp)
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	js	.L37
	cvtsi2sdq	%rax, %xmm0
	jmp	.L38
.L37:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L38:
	movl	-116(%rbp), %eax
	movl	-48(%rbp), %edx
	addl	%edx, %eax
	cvtsi2sd	%eax, %xmm2
	movapd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	call	fmin
	ucomisd	-128(%rbp), %xmm0
	ja	.L39
	addl	$1, -40(%rbp)
.L31:
	movl	-40(%rbp), %eax
	cltq
	cmpq	-88(%rbp), %rax
	jb	.L40
	movl	-116(%rbp), %eax
	addl	%eax, -56(%rbp)
.L30:
	movl	-56(%rbp), %eax
	cltq
	cmpq	-88(%rbp), %rax
	jb	.L41
	movl	-116(%rbp), %eax
	addl	%eax, -48(%rbp)
.L29:
	movl	-48(%rbp), %eax
	cltq
	cmpq	-88(%rbp), %rax
	jb	.L42
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	ret
	.size	multiply_tiled, .-multiply_tiled
	.section	.rodata
	.align 4
.LC1:
	.long	0
	.align 8
.LC2:
	.long	0
	.long	1093567616
	.align 8
.LC4:
	.long	0
	.long	1082130432
	.align 4
.LC5:
	.long	1325400064
	.ident	"GCC: (GNU) 4.8.3 20140911 (Red Hat 4.8.3-9)"
	.section	.note.GNU-stack,"",@progbits
