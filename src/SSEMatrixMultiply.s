	.file	"SSEMatrixMultiply.c"
	.intel_syntax noprefix
	.section	.rodata
	.align 8
.LC1:
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
	sub	rsp, 328
	mov	rax, rsp
	mov	rbx, rax
	mov	edi, 0
	call	time
	mov	edi, eax
	call	srand
	mov	DWORD PTR [rbp-52], 4
	mov	DWORD PTR [rbp-56], 1
	mov	eax, DWORD PTR [rbp-52]
	mov	DWORD PTR [rbp-60], eax
	mov	esi, DWORD PTR [rbp-60]
	mov	edi, DWORD PTR [rbp-60]
	movsx	rax, esi
	sub	rax, 1
	mov	QWORD PTR [rbp-72], rax
	movsx	rax, esi
	mov	QWORD PTR [rbp-336], rax
	mov	QWORD PTR [rbp-328], 0
	movsx	rax, edi
	sub	rax, 1
	mov	QWORD PTR [rbp-80], rax
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
	movsx	rax, esi
	mov	QWORD PTR [rbp-176], rax
	mov	QWORD PTR [rbp-168], 0
	movsx	rax, edi
	mov	QWORD PTR [rbp-192], rax
	mov	QWORD PTR [rbp-184], 0
	mov	r8, QWORD PTR [rbp-176]
	mov	r9, QWORD PTR [rbp-168]
	mov	rdx, r9
	mov	r14, QWORD PTR [rbp-192]
	mov	r15, QWORD PTR [rbp-184]
	imul	rdx, r14
	mov	rax, r15
	imul	rax, r8
	lea	rcx, [rdx+rax]
	mov	rax, r8
	mul	r14
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
	mov	QWORD PTR [rbp-88], rax
	mov	rdx, QWORD PTR [rbp-88]
	mov	eax, DWORD PTR [rbp-60]
	movsx	rcx, eax
	mov	eax, DWORD PTR [rbp-60]
	cdqe
	mov	rsi, rcx
	mov	rdi, rax
	call	array_gen
	mov	esi, DWORD PTR [rbp-60]
	mov	edi, DWORD PTR [rbp-60]
	movsx	rax, esi
	sub	rax, 1
	mov	QWORD PTR [rbp-96], rax
	movsx	rax, esi
	mov	QWORD PTR [rbp-352], rax
	mov	QWORD PTR [rbp-344], 0
	movsx	rax, edi
	sub	rax, 1
	mov	QWORD PTR [rbp-104], rax
	movsx	rax, esi
	mov	QWORD PTR [rbp-208], rax
	mov	QWORD PTR [rbp-200], 0
	movsx	rax, edi
	mov	QWORD PTR [rbp-224], rax
	mov	QWORD PTR [rbp-216], 0
	mov	r14, QWORD PTR [rbp-208]
	mov	r15, QWORD PTR [rbp-200]
	mov	rdx, r15
	mov	r10, QWORD PTR [rbp-224]
	mov	r11, QWORD PTR [rbp-216]
	imul	rdx, r10
	mov	rax, r11
	imul	rax, r14
	lea	rcx, [rdx+rax]
	mov	rax, r14
	mul	r10
	add	rcx, rdx
	mov	rdx, rcx
	movsx	rax, esi
	mov	QWORD PTR [rbp-240], rax
	mov	QWORD PTR [rbp-232], 0
	movsx	rax, edi
	mov	QWORD PTR [rbp-256], rax
	mov	QWORD PTR [rbp-248], 0
	mov	r10, QWORD PTR [rbp-240]
	mov	r11, QWORD PTR [rbp-232]
	mov	rdx, r11
	mov	r8, QWORD PTR [rbp-256]
	mov	r9, QWORD PTR [rbp-248]
	imul	rdx, r8
	mov	rax, r9
	imul	rax, r10
	lea	rcx, [rdx+rax]
	mov	rax, r10
	mul	r8
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
	mov	QWORD PTR [rbp-112], rax
	mov	rdx, QWORD PTR [rbp-112]
	mov	eax, DWORD PTR [rbp-60]
	movsx	rcx, eax
	mov	eax, DWORD PTR [rbp-60]
	cdqe
	mov	rsi, rcx
	mov	rdi, rax
	call	array_gen
	call	clock
	mov	QWORD PTR [rbp-120], rax
	mov	ecx, DWORD PTR [rbp-60]
	mov	esi, DWORD PTR [rbp-60]
	movsx	rax, ecx
	sub	rax, 1
	mov	QWORD PTR [rbp-128], rax
	movsx	rax, ecx
	mov	QWORD PTR [rbp-368], rax
	mov	QWORD PTR [rbp-360], 0
	movsx	rax, esi
	sub	rax, 1
	mov	QWORD PTR [rbp-136], rax
	movsx	rax, ecx
	mov	QWORD PTR [rbp-272], rax
	mov	QWORD PTR [rbp-264], 0
	movsx	rax, esi
	mov	QWORD PTR [rbp-288], rax
	mov	QWORD PTR [rbp-280], 0
	mov	r8, QWORD PTR [rbp-272]
	mov	r9, QWORD PTR [rbp-264]
	mov	rdx, r9
	mov	r14, QWORD PTR [rbp-288]
	mov	r15, QWORD PTR [rbp-280]
	imul	rdx, r14
	mov	rax, r15
	imul	rax, r8
	lea	rdi, [rdx+rax]
	mov	rax, r8
	mul	r14
	add	rdi, rdx
	mov	rdx, rdi
	movsx	rax, ecx
	mov	QWORD PTR [rbp-304], rax
	mov	QWORD PTR [rbp-296], 0
	movsx	rax, esi
	mov	QWORD PTR [rbp-320], rax
	mov	QWORD PTR [rbp-312], 0
	mov	r9, QWORD PTR [rbp-304]
	mov	r10, QWORD PTR [rbp-296]
	mov	rdx, r10
	mov	r11, QWORD PTR [rbp-320]
	mov	r12, QWORD PTR [rbp-312]
	imul	rdx, r11
	mov	rax, r12
	imul	rax, r9
	lea	rdi, [rdx+rax]
	mov	rax, r9
	mul	r11
	add	rdi, rdx
	mov	rdx, rdi
	movsx	rdx, ecx
	movsx	rax, esi
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
	mov	QWORD PTR [rbp-144], rax
	mov	rcx, QWORD PTR [rbp-144]
	mov	rdx, QWORD PTR [rbp-112]
	mov	rsi, QWORD PTR [rbp-88]
	mov	eax, DWORD PTR [rbp-60]
	cdqe
	mov	edi, DWORD PTR [rbp-56]
	mov	r8d, edi
	mov	rdi, rax
	call	multiply_tiled
	call	clock
	mov	QWORD PTR [rbp-152], rax
	mov	rax, QWORD PTR [rbp-120]
	mov	rdx, QWORD PTR [rbp-152]
	sub	rdx, rax
	mov	rax, rdx
	cvtsi2sd	xmm0, rax
	movsd	xmm1, QWORD PTR .LC0[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR [rbp-160], xmm0
	mov	rax, QWORD PTR [rbp-160]
	mov	ecx, DWORD PTR [rbp-56]
	mov	edx, DWORD PTR [rbp-52]
	mov	esi, DWORD PTR [rbp-52]
	mov	QWORD PTR [rbp-176], rax
	movsd	xmm0, QWORD PTR [rbp-176]
	mov	edi, OFFSET FLAT:.LC1
	mov	eax, 1
	call	printf
	mov	eax, 0
	mov	rsp, rbx
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
	jmp	.L4
.L7:
	mov	DWORD PTR [rbp-24], 0
	jmp	.L5
.L6:
	call	rand
	cvtsi2ss	xmm0, eax
	movss	xmm1, DWORD PTR .LC2[rip]
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
.L5:
	mov	eax, DWORD PTR [rbp-24]
	cdqe
	cmp	rax, QWORD PTR [rbp-64]
	jb	.L6
	add	DWORD PTR [rbp-20], 1
.L4:
	mov	eax, DWORD PTR [rbp-20]
	cdqe
	cmp	rax, QWORD PTR [rbp-56]
	jb	.L7
	add	rsp, 72
	pop	rbx
	pop	rbp
	ret
	.size	array_gen, .-array_gen
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
	mov	eax, DWORD PTR .LC3[rip]
	mov	DWORD PTR [rbp-36], eax
	mov	DWORD PTR [rbp-44], 0
	jmp	.L9
.L22:
	mov	DWORD PTR [rbp-52], 0
	jmp	.L10
.L21:
	mov	eax, DWORD PTR [rbp-44]
	mov	DWORD PTR [rbp-40], eax
	jmp	.L11
.L20:
	mov	eax, DWORD PTR [rbp-52]
	mov	DWORD PTR [rbp-48], eax
	jmp	.L12
.L17:
	mov	DWORD PTR [rbp-56], 0
	jmp	.L13
.L14:
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
.L13:
	mov	eax, DWORD PTR [rbp-56]
	cdqe
	cmp	rax, QWORD PTR [rbp-88]
	jb	.L14
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
	mov	eax, DWORD PTR .LC3[rip]
	mov	DWORD PTR [rbp-36], eax
	add	DWORD PTR [rbp-48], 1
.L12:
	cvtsi2sd	xmm3, DWORD PTR [rbp-48]
	movsd	QWORD PTR [rbp-128], xmm3
	mov	rax, QWORD PTR [rbp-88]
	test	rax, rax
	js	.L15
	cvtsi2sd	xmm0, rax
	jmp	.L16
.L15:
	mov	rdx, rax
	shr	rdx
	and	eax, 1
	or	rdx, rax
	cvtsi2sd	xmm0, rdx
	addsd	xmm0, xmm0
.L16:
	mov	eax, DWORD PTR [rbp-116]
	mov	edx, DWORD PTR [rbp-52]
	add	eax, edx
	sub	eax, 1
	cvtsi2sd	xmm2, eax
	movapd	xmm1, xmm0
	movapd	xmm0, xmm2
	call	fmin
	ucomisd	xmm0, QWORD PTR [rbp-128]
	ja	.L17
	add	DWORD PTR [rbp-40], 1
.L11:
	cvtsi2sd	xmm4, DWORD PTR [rbp-40]
	movsd	QWORD PTR [rbp-128], xmm4
	mov	rax, QWORD PTR [rbp-88]
	test	rax, rax
	js	.L18
	cvtsi2sd	xmm0, rax
	jmp	.L19
.L18:
	mov	rdx, rax
	shr	rdx
	and	eax, 1
	or	rdx, rax
	cvtsi2sd	xmm0, rdx
	addsd	xmm0, xmm0
.L19:
	mov	eax, DWORD PTR [rbp-116]
	mov	edx, DWORD PTR [rbp-44]
	add	eax, edx
	sub	eax, 1
	cvtsi2sd	xmm2, eax
	movapd	xmm1, xmm0
	movapd	xmm0, xmm2
	call	fmin
	ucomisd	xmm0, QWORD PTR [rbp-128]
	ja	.L20
	mov	eax, DWORD PTR [rbp-116]
	add	DWORD PTR [rbp-52], eax
.L10:
	mov	eax, DWORD PTR [rbp-52]
	cdqe
	cmp	rax, QWORD PTR [rbp-88]
	jb	.L21
	mov	eax, DWORD PTR [rbp-116]
	add	DWORD PTR [rbp-44], eax
.L9:
	mov	eax, DWORD PTR [rbp-44]
	cdqe
	cmp	rax, QWORD PTR [rbp-88]
	jb	.L22
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
