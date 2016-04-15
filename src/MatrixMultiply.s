	.file	"MatrixMultiply.c"
	.section	.rodata
	.align 8
.LC2:
	.string	"Array size = %d, Tile size = %d, Total time = %f\n"
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
	subq	$376, %rsp
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
	movq	%rax, -408(%rbp)
	movsd	-408(%rbp), %xmm0
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
	movq	%rax, -408(%rbp)
	movsd	-408(%rbp), %xmm0
	call	pow
	cvttsd2si	%xmm0, %eax
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-72(%rbp), %esi
	movl	-68(%rbp), %edi
	movslq	%esi, %rax
	subq	$1, %rax
	movq	%rax, -88(%rbp)
	movslq	%esi, %rax
	movq	%rax, -368(%rbp)
	movq	$0, -360(%rbp)
	movslq	%edi, %rax
	subq	$1, %rax
	movq	%rax, -96(%rbp)
	movslq	%esi, %rax
	movq	%rax, -208(%rbp)
	movq	$0, -200(%rbp)
	movslq	%edi, %rax
	movq	%rax, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	-208(%rbp), %r10
	movq	-200(%rbp), %r11
	movq	%r11, %rdx
	movq	-224(%rbp), %r8
	movq	-216(%rbp), %r9
	imulq	%r8, %rdx
	movq	%r9, %rax
	imulq	%r10, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r10, %rax
	mulq	%r8
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
	leaq	8(%rsp), %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdx
	movl	-72(%rbp), %eax
	movslq	%eax, %rcx
	movl	-68(%rbp), %eax
	cltq
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	array_gen
	movl	-72(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	-76(%rbp), %esi
	movl	-108(%rbp), %edi
	movslq	%esi, %rax
	subq	$1, %rax
	movq	%rax, -120(%rbp)
	movslq	%esi, %rax
	movq	%rax, -384(%rbp)
	movq	$0, -376(%rbp)
	movslq	%edi, %rax
	subq	$1, %rax
	movq	%rax, -128(%rbp)
	movslq	%esi, %rax
	movq	%rax, -272(%rbp)
	movq	$0, -264(%rbp)
	movslq	%edi, %rax
	movq	%rax, -288(%rbp)
	movq	$0, -280(%rbp)
	movq	-272(%rbp), %r10
	movq	-264(%rbp), %r11
	movq	%r11, %rdx
	movq	-288(%rbp), %r8
	movq	-280(%rbp), %r9
	imulq	%r8, %rdx
	movq	%r9, %rax
	imulq	%r10, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r10, %rax
	mulq	%r8
	addq	%rdx, %rcx
	movq	%rcx, %rdx
	movslq	%esi, %rax
	movq	%rax, -304(%rbp)
	movq	$0, -296(%rbp)
	movslq	%edi, %rax
	movq	%rax, -320(%rbp)
	movq	$0, -312(%rbp)
	movq	-304(%rbp), %r10
	movq	-296(%rbp), %r11
	movq	%r11, %rdx
	movq	-320(%rbp), %r8
	movq	-312(%rbp), %r9
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
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	leaq	8(%rsp), %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdx
	movl	-76(%rbp), %eax
	movslq	%eax, %rcx
	movl	-108(%rbp), %eax
	cltq
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	array_gen
	call	clock
	movq	%rax, -144(%rbp)
	movl	-76(%rbp), %esi
	movl	-68(%rbp), %edi
	movslq	%esi, %rax
	subq	$1, %rax
	movq	%rax, -152(%rbp)
	movslq	%esi, %rax
	movq	%rax, -400(%rbp)
	movq	$0, -392(%rbp)
	movslq	%edi, %rax
	subq	$1, %rax
	movq	%rax, -160(%rbp)
	movslq	%esi, %rax
	movq	%rax, -336(%rbp)
	movq	$0, -328(%rbp)
	movslq	%edi, %rax
	movq	%rax, -352(%rbp)
	movq	$0, -344(%rbp)
	movq	-336(%rbp), %r10
	movq	-328(%rbp), %r11
	movq	%r11, %rdx
	movq	-352(%rbp), %r8
	movq	-344(%rbp), %r9
	imulq	%r8, %rdx
	movq	%r9, %rax
	imulq	%r10, %rax
	leaq	(%rdx,%rax), %rcx
	movq	%r10, %rax
	mulq	%r8
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
	leaq	8(%rsp), %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %r9
	movq	-136(%rbp), %r8
	movq	-104(%rbp), %rcx
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	movl	-108(%rbp), %eax
	movslq	%eax, %rsi
	movl	-68(%rbp), %eax
	movslq	%eax, %rdi
	movl	-64(%rbp), %eax
	movl	%eax, (%rsp)
	call	multiply_tiled
	call	clock
	movq	%rax, -176(%rbp)
	movq	-144(%rbp), %rdx
	movq	-176(%rbp), %rax
	subq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -184(%rbp)
	movq	-184(%rbp), %rax
	movl	-64(%rbp), %edx
	movl	-60(%rbp), %ecx
	movq	%rax, -408(%rbp)
	movsd	-408(%rbp), %xmm0
	movl	%ecx, %esi
	movl	$.LC2, %edi
	movl	$1, %eax
	call	printf
	movq	%rbx, %rsp
	addl	$1, -56(%rbp)
.L3:
	cvtsi2sd	-56(%rbp), %xmm0
	movabsq	$4611686018427387904, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, -408(%rbp)
	movsd	-408(%rbp), %xmm0
	call	pow
	cvtsi2sd	-60(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.L4
	addl	$1, -52(%rbp)
.L2:
	cvtsi2sd	-52(%rbp), %xmm0
	movabsq	$4611686018427387904, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, -408(%rbp)
	movsd	-408(%rbp), %xmm0
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
	.section	.rodata
.LC4:
	.string	"%s=%i\n"
	.text
	.globl	num_gen
	.type	num_gen, @function
num_gen:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	call	rand
	cltd
	idivl	-20(%rbp)
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movl	-4(%rbp), %eax
	leave
	ret
	.size	num_gen, .-num_gen
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
	jmp	.L10
.L13:
	movl	$0, -24(%rbp)
	jmp	.L11
.L12:
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
.L11:
	movl	-24(%rbp), %eax
	cltq
	cmpq	-64(%rbp), %rax
	jb	.L12
	addl	$1, -20(%rbp)
.L10:
	movl	-20(%rbp), %eax
	cltq
	cmpq	-56(%rbp), %rax
	jb	.L13
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
	jmp	.L15
.L18:
	movl	$0, -24(%rbp)
	jmp	.L16
.L17:
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
.L16:
	movl	-24(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L17
	movl	$10, %edi
	call	putchar
	addl	$1, -20(%rbp)
.L15:
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L18
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdx
	subq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movq	%rax, %r14
	movl	$0, %r15d
	movq	-104(%rbp), %rdx
	movq	%rdx, %rcx
	subq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movq	%rdx, %r12
	movl	$0, %r13d
	movq	-104(%rbp), %rcx
	movq	%rcx, %rsi
	subq	$1, %rsi
	movq	%rsi, -72(%rbp)
	movq	%rcx, %r10
	movl	$0, %r11d
	movl	.LC8(%rip), %esi
	movl	%esi, -36(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L20
.L25:
	movl	$0, -44(%rbp)
	jmp	.L21
.L24:
	movl	$0, -48(%rbp)
	jmp	.L22
.L23:
	movl	-40(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	leaq	0(,%rsi,4), %rdi
	movq	-112(%rbp), %rsi
	addq	%rsi, %rdi
	movl	-48(%rbp), %esi
	movslq	%esi, %rsi
	movss	(%rdi,%rsi,4), %xmm1
	movl	-48(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rdx, %rsi
	leaq	0(,%rsi,4), %rdi
	movq	-120(%rbp), %rsi
	addq	%rsi, %rdi
	movl	-44(%rbp), %esi
	movslq	%esi, %rsi
	movss	(%rdi,%rsi,4), %xmm0
	mulss	%xmm1, %xmm0
	movss	-36(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	addl	$1, -48(%rbp)
.L22:
	movl	-48(%rbp), %esi
	movslq	%esi, %rsi
	cmpq	-104(%rbp), %rsi
	jb	.L23
	movl	-40(%rbp), %esi
	movslq	%esi, %rsi
	imulq	%rcx, %rsi
	leaq	0(,%rsi,4), %rdi
	movq	-128(%rbp), %rsi
	leaq	(%rdi,%rsi), %r8
	movl	-44(%rbp), %esi
	movslq	%esi, %rdi
	movl	-36(%rbp), %esi
	movl	%esi, (%r8,%rdi,4)
	movl	.LC8(%rip), %esi
	movl	%esi, -36(%rbp)
	addl	$1, -44(%rbp)
.L21:
	movl	-44(%rbp), %esi
	movslq	%esi, %rsi
	cmpq	-96(%rbp), %rsi
	jb	.L24
	addl	$1, -40(%rbp)
.L20:
	movl	-40(%rbp), %esi
	movslq	%esi, %rsi
	cmpq	-88(%rbp), %rsi
	jb	.L25
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
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
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movq	-96(%rbp), %rbx
	movq	%rbx, %rax
	subq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	%rbx, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	-104(%rbp), %r12
	movq	%r12, %rax
	subq	$1, %rax
	movq	%rax, -72(%rbp)
	movq	%r12, %r13
	movl	$0, %r14d
	movq	-104(%rbp), %r13
	movq	%r13, %rax
	subq	$1, %rax
	movq	%rax, -80(%rbp)
	movq	%r13, %r10
	movl	$0, %r11d
	movl	.LC8(%rip), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L27
.L40:
	movl	$0, -52(%rbp)
	jmp	.L28
.L39:
	movl	-44(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.L29
.L38:
	movl	-52(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.L30
.L35:
	movl	$0, -56(%rbp)
	jmp	.L31
.L32:
	movl	-40(%rbp), %eax
	cltq
	imulq	%rbx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-112(%rbp), %rax
	addq	%rax, %rdx
	movl	-56(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm1
	movl	-56(%rbp), %eax
	cltq
	imulq	%r12, %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movl	-48(%rbp), %eax
	cltq
	movss	(%rdx,%rax,4), %xmm0
	mulss	%xmm1, %xmm0
	movss	-36(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -36(%rbp)
	addl	$1, -56(%rbp)
.L31:
	movl	-56(%rbp), %eax
	cltq
	cmpq	-96(%rbp), %rax
	jb	.L32
	movl	-40(%rbp), %eax
	cltq
	imulq	%r13, %rax
	leaq	0(,%rax,4), %rdx
	movq	-128(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-48(%rbp), %eax
	movslq	%eax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, (%rcx,%rdx,4)
	movl	.LC8(%rip), %eax
	movl	%eax, -36(%rbp)
	addl	$1, -48(%rbp)
.L30:
	cvtsi2sd	-48(%rbp), %xmm3
	movsd	%xmm3, -144(%rbp)
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	js	.L33
	cvtsi2sdq	%rax, %xmm0
	jmp	.L34
.L33:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L34:
	movl	16(%rbp), %eax
	movl	-52(%rbp), %edx
	addl	%edx, %eax
	subl	$1, %eax
	cvtsi2sd	%eax, %xmm2
	movapd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	call	fmin
	ucomisd	-144(%rbp), %xmm0
	ja	.L35
	addl	$1, -40(%rbp)
.L29:
	cvtsi2sd	-40(%rbp), %xmm4
	movsd	%xmm4, -144(%rbp)
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	js	.L36
	cvtsi2sdq	%rax, %xmm0
	jmp	.L37
.L36:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L37:
	movl	16(%rbp), %eax
	movl	-44(%rbp), %edx
	addl	%edx, %eax
	subl	$1, %eax
	cvtsi2sd	%eax, %xmm2
	movapd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	call	fmin
	ucomisd	-144(%rbp), %xmm0
	ja	.L38
	movl	16(%rbp), %eax
	addl	%eax, -52(%rbp)
.L28:
	movl	-52(%rbp), %eax
	cltq
	cmpq	-104(%rbp), %rax
	jb	.L39
	movl	16(%rbp), %eax
	addl	%eax, -44(%rbp)
.L27:
	movl	-44(%rbp), %eax
	cltq
	cmpq	-88(%rbp), %rax
	jb	.L40
	addq	$112, %rsp
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
.LC5:
	.long	1325400064
	.align 4
.LC8:
	.long	0
	.ident	"GCC: (GNU) 4.8.3 20140911 (Red Hat 4.8.3-9)"
	.section	.note.GNU-stack,"",@progbits
