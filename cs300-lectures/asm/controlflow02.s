	.file	"controlflow02.c"
	.text
	.globl	_Z1fPKii
	.type	_Z1fPKii, @function
_Z1fPKii:
.LFB0:
	testl	%esi, %esi
	jle	.L4
	movq	%rdi, %rdx
	leal	-1(%rsi), %eax
	leaq	4(%rdi,%rax,4), %rsi
	movl	$0, %eax
.L3:
	movsbq	(%rdx), %rcx
	addq	%rcx, %rax
	addq	$4, %rdx
	cmpq	%rsi, %rdx
	jne	.L3
	ret
.L4:
	movl	$0, %eax
	ret
.LFE0:
	.size	_Z1fPKii, .-_Z1fPKii
	.ident	"GCC: (Ubuntu 8.4.0-3ubuntu2) 8.4.0"
	.section	.note.GNU-stack,"",@progbits
