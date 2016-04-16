	.file	"MatrixMultiply.c"
	.intel_syntax noprefix
	.section	.rodata
	.align 8
.LC2:
	.string	"Array size = %dx%d, Tile size = %d, Total time = %f\n"
	.text
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 360
	mov	edi, 0
	call	time
	mov	edi, eax
	call	srand
	mov	DWORD PTR [rbp-52], 0
	jmp	.L2
.L5:
	cvtsi2sd	xmm0, DWORD PTR [rbp-52]
	movabs	rax, 4611686018427387904
	movapd	xmm1, xmm0
	mov	QWORD PTR [rbp-392], rax
	movsd	xmm0, QWORD PTR [rbp-392]
	call	pow
	cvttsd2si	eax, xmm0
	mov	DWORD PTR [rbp-60], eax
	mov	DWORD PTR [rbp-56], 0
	jmp	.L3
.L4:
	mov	rax, rsp
	mov	rbx, rax
	cvtsi2sd	xmm0, DWORD PTR [rbp-56]
	movabs	rax, 4611686018427387904
	movapd	xmm1, xmm0
	mov	QWORD PTR [rbp-392], rax
	movsd	xmm0, QWORD PTR [rbp-392]
	call	pow
	cvttsd2si	eax, xmm0
	mov	DWORD PTR [rbp-64], eax
	mov	eax, DWORD PTR [rbp-60]
	mov	DWORD PTR [rbp-68], eax
	mov	esi, DWORD PTR [rbp-68]
	mov	edi, DWORD PTR [rbp-68]
	movsx	rax, esi
	sub	rax, 1
	mov	QWORD PTR [rbp-80], rax
	movsx	rax, esi
	mov	QWORD PTR [rbp-352], rax
	mov	QWORD PTR [rbp-344], 0
	movsx	rax, edi
	sub	rax, 1
	mov	QWORD PTR [rbp-88], rax
	movsx	rax, esi
	mov	QWORD PTR [rbp-208], rax
	mov	QWORD PTR [rbp-200], 0
	movsx	rax, edi
	mov	QWORD PTR [rbp-224], rax
	mov	QWORD PTR [rbp-216], 0
	mov	r8, QWORD PTR [rbp-208]
	mov	r9, QWORD PTR [rbp-200]
	mov	rdx, r9
	mov	r10, QWORD PTR [rbp-224]
	mov	r11, QWORD PTR [rbp-216]
	imul	rdx, r10
	mov	rax, r11
	imul	rax, r8
	lea	rcx, [rdx+rax]
	mov	rax, r8
	mul	r10
	add	rcx, rdx
	mov	rdx, rcx
	movsx	rax, esi
	mov	QWORD PTR [rbp-240], rax
	mov	QWORD PTR [rbp-232], 0
	movsx	rax, edi
	mov	QWORD PTR [rbp-256], rax
	mov	QWORD PTR [rbp-248], 0
	mov	r8, QWORD PTR [rbp-240]
	mov	r9, QWORD PTR [rbp-232]
	mov	rdx, r9
	mov	r10, QWORD PTR [rbp-256]
	mov	r11, QWORD PTR [rbp-248]
	imul	rdx, r10
	mov	rax, r11
	imul	rax, r8
	lea	rcx, [rdx+rax]
	mov	rax, r8
	mul	r10
	add	rcx, rdx
	mov	rdx, rcx
	movsx	rdx, esi
	movsx	rax, edi
	imul	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+3]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	edi, 16
	mov	edx, 0
	div	rdi
	imul	rax, rax, 16
	sub	rsp, rax
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR [rbp-96], rax
	mov	rdx, QWORD PTR [rbp-96]
	mov	eax, DWORD PTR [rbp-68]
	movsx	rcx, eax
	mov	eax, DWORD PTR [rbp-68]
	cdqe
	mov	rsi, rcx
	mov	rdi, rax
	call	array_gen
	mov	esi, DWORD PTR [rbp-68]
	mov	edi, DWORD PTR [rbp-68]
	movsx	rax, esi
	sub	rax, 1
	mov	QWORD PTR [rbp-104], rax
	movsx	rax, esi
	mov	QWORD PTR [rbp-368], rax
	mov	QWORD PTR [rbp-360], 0
	movsx	rax, edi
	sub	rax, 1
	mov	QWORD PTR [rbp-112], rax
	movsx	rax, esi
	mov	QWORD PTR [rbp-272], rax
	mov	QWORD PTR [rbp-264], 0
	movsx	rax, edi
	mov	QWORD PTR [rbp-288], rax
	mov	QWORD PTR [rbp-280], 0
	mov	r8, QWORD PTR [rbp-272]
	mov	r9, QWORD PTR [rbp-264]
	mov	rdx, r9
	mov	r10, QWORD PTR [rbp-288]
	mov	r11, QWORD PTR [rbp-280]
	imul	rdx, r10
	mov	rax, r11
	imul	rax, r8
	lea	rcx, [rdx+rax]
	mov	rax, r8
	mul	r10
	add	rcx, rdx
	mov	rdx, rcx
	movsx	rax, esi
	mov	QWORD PTR [rbp-304], rax
	mov	QWORD PTR [rbp-296], 0
	movsx	rax, edi
	mov	QWORD PTR [rbp-320], rax
	mov	QWORD PTR [rbp-312], 0
	mov	r8, QWORD PTR [rbp-304]
	mov	r9, QWORD PTR [rbp-296]
	mov	rdx, r9
	mov	r10, QWORD PTR [rbp-320]
	mov	r11, QWORD PTR [rbp-312]
	imul	rdx, r10
	mov	rax, r11
	imul	rax, r8
	lea	rcx, [rdx+rax]
	mov	rax, r8
	mul	r10
	add	rcx, rdx
	mov	rdx, rcx
	movsx	rdx, esi
	movsx	rax, edi
	imul	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+3]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	edi, 16
	mov	edx, 0
	div	rdi
	imul	rax, rax, 16
	sub	rsp, rax
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR [rbp-120], rax
	mov	rdx, QWORD PTR [rbp-120]
	mov	eax, DWORD PTR [rbp-68]
	movsx	rcx, eax
	mov	eax, DWORD PTR [rbp-68]
	cdqe
	mov	rsi, rcx
	mov	rdi, rax
	call	array_gen
	call	clock
	mov	QWORD PTR [rbp-128], rax
	mov	esi, DWORD PTR [rbp-68]
	mov	edi, DWORD PTR [rbp-68]
	movsx	rax, esi
	sub	rax, 1
	mov	QWORD PTR [rbp-136], rax
	movsx	rax, esi
	mov	QWORD PTR [rbp-384], rax
	mov	QWORD PTR [rbp-376], 0
	movsx	rax, edi
	sub	rax, 1
	mov	QWORD PTR [rbp-144], rax
	movsx	rax, esi
	mov	QWORD PTR [rbp-336], rax
	mov	QWORD PTR [rbp-328], 0
	movsx	rax, edi
	mov	QWORD PTR [rbp-192], rax
	mov	QWORD PTR [rbp-184], 0
	mov	r9, QWORD PTR [rbp-336]
	mov	r10, QWORD PTR [rbp-328]
	mov	rdx, r10
	imul	rdx, QWORD PTR [rbp-192]
	mov	rax, QWORD PTR [rbp-184]
	imul	rax, r9
	lea	rcx, [rdx+rax]
	mov	rax, r9
	mul	QWORD PTR [rbp-192]
	add	rcx, rdx
	mov	rdx, rcx
	movsx	rax, esi
	mov	r14, rax
	mov	r15d, 0
	movsx	rax, edi
	mov	r12, rax
	mov	r13d, 0
	mov	rdx, r15
	imul	rdx, r12
	mov	rax, r13
	imul	rax, r14
	lea	rcx, [rdx+rax]
	mov	rax, r14
	mul	r12
	add	rcx, rdx
	mov	rdx, rcx
	movsx	rdx, esi
	movsx	rax, edi
	imul	rax, rdx
	sal	rax, 2
	lea	rdx, [rax+3]
	mov	eax, 16
	sub	rax, 1
	add	rax, rdx
	mov	esi, 16
	mov	edx, 0
	div	rsi
	imul	rax, rax, 16
	sub	rsp, rax
	mov	rax, rsp
	add	rax, 3
	shr	rax, 2
	sal	rax, 2
	mov	QWORD PTR [rbp-152], rax
	mov	rcx, QWORD PTR [rbp-152]
	mov	rdx, QWORD PTR [rbp-120]
	mov	rsi, QWORD PTR [rbp-96]
	mov	eax, DWORD PTR [rbp-68]
	movsx	rdi, eax
	mov	eax, DWORD PTR [rbp-64]
	mov	r8d, eax
	call	multiply_tiled
	call	clock
	mov	QWORD PTR [rbp-160], rax
	mov	rdx, QWORD PTR [rbp-128]
	mov	rax, QWORD PTR [rbp-160]
	sub	rax, rdx
	cvtsi2sd	xmm0, rax
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR [rbp-168], xmm0
	mov	rax, QWORD PTR [rbp-168]
	mov	ecx, DWORD PTR [rbp-64]
	mov	edx, DWORD PTR [rbp-60]
	mov	esi, DWORD PTR [rbp-60]
	mov	QWORD PTR [rbp-392], rax
	movsd	xmm0, QWORD PTR [rbp-392]
	mov	edi, OFFSET FLAT:.LC2
	mov	eax, 1
	call	printf
	mov	rsp, rbx
	add	DWORD PTR [rbp-56], 1
.L3:
	cvtsi2sd	xmm0, DWORD PTR [rbp-56]
	movabs	rax, 4611686018427387904
	movapd	xmm1, xmm0
	mov	QWORD PTR [rbp-392], rax
	movsd	xmm0, QWORD PTR [rbp-392]
	call	pow
	cvtsi2sd	xmm1, DWORD PTR [rbp-60]
	ucomisd	xmm1, xmm0
	jae	.L4
	add	DWORD PTR [rbp-52], 1
.L2:
	cvtsi2sd	xmm0, DWORD PTR [rbp-52]
	movabs	rax, 4611686018427387904
	movapd	xmm1, xmm0
	mov	QWORD PTR [rbp-392], rax
	movsd	xmm0, QWORD PTR [rbp-392]
	call	pow
	movsd	xmm1, QWORD PTR .LC3[rip]
	ucomisd	xmm1, xmm0
	jae	.L5
	mov	eax, 0
	lea	rsp, [rbp-40]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
	.size	main, .-main
	.globl	array_gen
	.type	array_gen, @function
array_gen:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 72
	mov	QWORD PTR [rbp-56], rdi
	mov	QWORD PTR [rbp-64], rsi
	mov	QWORD PTR [rbp-72], rdx
	mov	rbx, QWORD PTR [rbp-64]
	mov	rax, rbx
	sub	rax, 1
	mov	QWORD PTR [rbp-32], rax
	mov	r8, rbx
	mov	r9d, 0
	mov	DWORD PTR [rbp-20], 0
	jmp	.L8
.L11:
	mov	DWORD PTR [rbp-24], 0
	jmp	.L9
.L10:
	call	rand
	cvtsi2ss	xmm0, eax
	movss	xmm1, DWORD PTR .LC4[rip]
	divss	xmm0, xmm1
	movss	DWORD PTR [rbp-36], xmm0
	mov	eax, DWORD PTR [rbp-20]
	cdqe
	imul	rax, rbx
	lea	rdx, [0+rax*4]
	mov	rax, QWORD PTR [rbp-72]
	lea	rcx, [rdx+rax]
	mov	eax, DWORD PTR [rbp-24]
	movsx	rdx, eax
	mov	eax, DWORD PTR [rbp-36]
	mov	DWORD PTR [rcx+rdx*4], eax
	add	DWORD PTR [rbp-24], 1
.L9:
	mov	eax, DWORD PTR [rbp-24]
	cdqe
	cmp	rax, QWORD PTR [rbp-64]
	jb	.L10
	add	DWORD PTR [rbp-20], 1
.L8:
	mov	eax, DWORD PTR [rbp-20]
	cdqe
	cmp	rax, QWORD PTR [rbp-56]
	jb	.L11
	add	rsp, 72
	pop	rbx
	pop	rbp
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
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 40
	mov	DWORD PTR [rbp-36], edi
	mov	DWORD PTR [rbp-40], esi
	mov	QWORD PTR [rbp-48], rdx
	mov	ebx, DWORD PTR [rbp-40]
	movsx	rax, ebx
	sub	rax, 1
	mov	QWORD PTR [rbp-32], rax
	movsx	rax, ebx
	mov	r8, rax
	mov	r9d, 0
	mov	edx, DWORD PTR [rbp-40]
	mov	eax, DWORD PTR [rbp-36]
	mov	esi, eax
	mov	edi, OFFSET FLAT:.LC5
	mov	eax, 0
	call	printf
	mov	DWORD PTR [rbp-20], 0
	jmp	.L13
.L16:
	mov	DWORD PTR [rbp-24], 0
	jmp	.L14
.L15:
	mov	eax, DWORD PTR [rbp-20]
	movsx	rdx, eax
	movsx	rax, ebx
	imul	rax, rdx
	lea	rdx, [0+rax*4]
	mov	rax, QWORD PTR [rbp-48]
	add	rdx, rax
	mov	eax, DWORD PTR [rbp-24]
	cdqe
	movss	xmm0, DWORD PTR [rdx+rax*4]
	unpcklps	xmm0, xmm0
	cvtps2pd	xmm0, xmm0
	mov	edi, OFFSET FLAT:.LC6
	mov	eax, 1
	call	printf
	add	DWORD PTR [rbp-24], 1
.L14:
	mov	eax, DWORD PTR [rbp-24]
	cmp	eax, DWORD PTR [rbp-40]
	jl	.L15
	mov	edi, 10
	call	putchar
	add	DWORD PTR [rbp-20], 1
.L13:
	mov	eax, DWORD PTR [rbp-20]
	cmp	eax, DWORD PTR [rbp-36]
	jl	.L16
	add	rsp, 40
	pop	rbx
	pop	rbp
	ret
	.size	array_print, .-array_print
	.globl	multiply_basic
	.type	multiply_basic, @function
multiply_basic:
	push	rbp
	mov	rbp, rsp
	push	r13
	push	r12
	mov	QWORD PTR [rbp-72], rdi
	mov	QWORD PTR [rbp-80], rsi
	mov	QWORD PTR [rbp-88], rdx
	mov	QWORD PTR [rbp-96], rcx
	mov	rax, QWORD PTR [rbp-72]
	mov	rdx, rax
	sub	rdx, 1
	mov	QWORD PTR [rbp-40], rdx
	mov	r12, rax
	mov	r13d, 0
	mov	rdx, QWORD PTR [rbp-72]
	mov	rcx, rdx
	sub	rcx, 1
	mov	QWORD PTR [rbp-48], rcx
	mov	r10, rdx
	mov	r11d, 0
	mov	rcx, QWORD PTR [rbp-72]
	mov	rsi, rcx
	sub	rsi, 1
	mov	QWORD PTR [rbp-56], rsi
	mov	r8, rcx
	mov	r9d, 0
	mov	esi, DWORD PTR .LC7[rip]
	mov	DWORD PTR [rbp-20], esi
	mov	DWORD PTR [rbp-24], 0
	jmp	.L18
.L23:
	mov	DWORD PTR [rbp-28], 0
	jmp	.L19
.L22:
	mov	DWORD PTR [rbp-32], 0
	jmp	.L20
.L21:
	mov	esi, DWORD PTR [rbp-24]
	movsx	rsi, esi
	imul	rsi, rax
	lea	rdi, [0+rsi*4]
	mov	rsi, QWORD PTR [rbp-80]
	add	rdi, rsi
	mov	esi, DWORD PTR [rbp-32]
	movsx	rsi, esi
	movss	xmm1, DWORD PTR [rdi+rsi*4]
	mov	esi, DWORD PTR [rbp-32]
	movsx	rsi, esi
	imul	rsi, rdx
	lea	rdi, [0+rsi*4]
	mov	rsi, QWORD PTR [rbp-88]
	add	rdi, rsi
	mov	esi, DWORD PTR [rbp-28]
	movsx	rsi, esi
	movss	xmm0, DWORD PTR [rdi+rsi*4]
	mulss	xmm0, xmm1
	movss	xmm1, DWORD PTR [rbp-20]
	addss	xmm0, xmm1
	movss	DWORD PTR [rbp-20], xmm0
	add	DWORD PTR [rbp-32], 1
.L20:
	mov	esi, DWORD PTR [rbp-32]
	movsx	rsi, esi
	cmp	rsi, QWORD PTR [rbp-72]
	jb	.L21
	mov	esi, DWORD PTR [rbp-24]
	movsx	rsi, esi
	imul	rsi, rcx
	lea	rdi, [0+rsi*4]
	mov	rsi, QWORD PTR [rbp-96]
	lea	r8, [rdi+rsi]
	mov	esi, DWORD PTR [rbp-28]
	movsx	rdi, esi
	mov	esi, DWORD PTR [rbp-20]
	mov	DWORD PTR [r8+rdi*4], esi
	mov	esi, DWORD PTR .LC7[rip]
	mov	DWORD PTR [rbp-20], esi
	add	DWORD PTR [rbp-28], 1
.L19:
	mov	esi, DWORD PTR [rbp-28]
	movsx	rsi, esi
	cmp	rsi, QWORD PTR [rbp-72]
	jb	.L22
	add	DWORD PTR [rbp-24], 1
.L18:
	mov	esi, DWORD PTR [rbp-24]
	movsx	rsi, esi
	cmp	rsi, QWORD PTR [rbp-72]
	jb	.L23
	pop	r12
	pop	r13
	pop	rbp
	ret
	.size	multiply_basic, .-multiply_basic
	.globl	multiply_tiled
	.type	multiply_tiled, @function
multiply_tiled:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 96
	mov	QWORD PTR [rbp-88], rdi
	mov	QWORD PTR [rbp-96], rsi
	mov	QWORD PTR [rbp-104], rdx
	mov	QWORD PTR [rbp-112], rcx
	mov	DWORD PTR [rbp-116], r8d
	mov	rbx, QWORD PTR [rbp-88]
	mov	rax, rbx
	sub	rax, 1
	mov	QWORD PTR [rbp-64], rax
	mov	r11, rbx
	mov	r12d, 0
	mov	r12, QWORD PTR [rbp-88]
	mov	rax, r12
	sub	rax, 1
	mov	QWORD PTR [rbp-72], rax
	mov	r13, r12
	mov	r14d, 0
	mov	r13, QWORD PTR [rbp-88]
	mov	rax, r13
	sub	rax, 1
	mov	QWORD PTR [rbp-80], rax
	mov	r9, r13
	mov	r10d, 0
	mov	eax, DWORD PTR .LC7[rip]
	mov	DWORD PTR [rbp-36], eax
	mov	DWORD PTR [rbp-44], 0
	jmp	.L25
.L38:
	mov	DWORD PTR [rbp-52], 0
	jmp	.L26
.L37:
	mov	eax, DWORD PTR [rbp-44]
	mov	DWORD PTR [rbp-40], eax
	jmp	.L27
.L36:
	mov	eax, DWORD PTR [rbp-52]
	mov	DWORD PTR [rbp-48], eax
	jmp	.L28
.L33:
	mov	DWORD PTR [rbp-56], 0
	jmp	.L29
.L30:
	mov	eax, DWORD PTR [rbp-40]
	cdqe
	imul	rax, rbx
	lea	rdx, [0+rax*4]
	mov	rax, QWORD PTR [rbp-96]
	add	rdx, rax
	mov	eax, DWORD PTR [rbp-56]
	cdqe
	movss	xmm1, DWORD PTR [rdx+rax*4]
	mov	eax, DWORD PTR [rbp-56]
	cdqe
	imul	rax, r12
	lea	rdx, [0+rax*4]
	mov	rax, QWORD PTR [rbp-104]
	add	rdx, rax
	mov	eax, DWORD PTR [rbp-48]
	cdqe
	movss	xmm0, DWORD PTR [rdx+rax*4]
	mulss	xmm0, xmm1
	movss	xmm1, DWORD PTR [rbp-36]
	addss	xmm0, xmm1
	movss	DWORD PTR [rbp-36], xmm0
	add	DWORD PTR [rbp-56], 1
.L29:
	mov	eax, DWORD PTR [rbp-56]
	cdqe
	cmp	rax, QWORD PTR [rbp-88]
	jb	.L30
	mov	eax, DWORD PTR [rbp-40]
	cdqe
	imul	rax, r13
	lea	rdx, [0+rax*4]
	mov	rax, QWORD PTR [rbp-112]
	lea	rcx, [rdx+rax]
	mov	eax, DWORD PTR [rbp-48]
	movsx	rdx, eax
	mov	eax, DWORD PTR [rbp-36]
	mov	DWORD PTR [rcx+rdx*4], eax
	mov	eax, DWORD PTR .LC7[rip]
	mov	DWORD PTR [rbp-36], eax
	add	DWORD PTR [rbp-48], 1
.L28:
	cvtsi2sd	xmm3, DWORD PTR [rbp-48]
	movsd	QWORD PTR [rbp-128], xmm3
	mov	rax, QWORD PTR [rbp-88]
	test	rax, rax
	js	.L31
	cvtsi2sd	xmm0, rax
	jmp	.L32
.L31:
	mov	rdx, rax
	shr	rdx
	and	eax, 1
	or	rdx, rax
	cvtsi2sd	xmm0, rdx
	addsd	xmm0, xmm0
.L32:
	mov	eax, DWORD PTR [rbp-116]
	mov	edx, DWORD PTR [rbp-52]
	add	eax, edx
	sub	eax, 1
	cvtsi2sd	xmm2, eax
	movapd	xmm1, xmm0
	movapd	xmm0, xmm2
	call	fmin
	ucomisd	xmm0, QWORD PTR [rbp-128]
	ja	.L33
	add	DWORD PTR [rbp-40], 1
.L27:
	cvtsi2sd	xmm4, DWORD PTR [rbp-40]
	movsd	QWORD PTR [rbp-128], xmm4
	mov	rax, QWORD PTR [rbp-88]
	test	rax, rax
	js	.L34
	cvtsi2sd	xmm0, rax
	jmp	.L35
.L34:
	mov	rdx, rax
	shr	rdx
	and	eax, 1
	or	rdx, rax
	cvtsi2sd	xmm0, rdx
	addsd	xmm0, xmm0
.L35:
	mov	eax, DWORD PTR [rbp-116]
	mov	edx, DWORD PTR [rbp-44]
	add	eax, edx
	sub	eax, 1
	cvtsi2sd	xmm2, eax
	movapd	xmm1, xmm0
	movapd	xmm0, xmm2
	call	fmin
	ucomisd	xmm0, QWORD PTR [rbp-128]
	ja	.L36
	mov	eax, DWORD PTR [rbp-116]
	add	DWORD PTR [rbp-52], eax
.L26:
	mov	eax, DWORD PTR [rbp-52]
	cdqe
	cmp	rax, QWORD PTR [rbp-88]
	jb	.L37
	mov	eax, DWORD PTR [rbp-116]
	add	DWORD PTR [rbp-44], eax
.L25:
	mov	eax, DWORD PTR [rbp-44]
	cdqe
	cmp	rax, QWORD PTR [rbp-88]
	jb	.L38
	add	rsp, 96
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	rbp
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
