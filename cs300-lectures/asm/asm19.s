	.file	"asm19.c"
	.text
	.globl	_Z1fiii
	.type	_Z1fiii, @function
_Z1fiii:
.LFB0:
	imull	$1000, %edi, %edi
	imull	$-10000, %esi, %esi
	addl	%esi, %edi
	imull	$-100000, %edx, %eax
	addl	%edi, %eax
	ret
.LFE0:
	.size	_Z1fiii, .-_Z1fiii
	.ident	"GCC: (Ubuntu 8.4.0-3ubuntu2) 8.4.0"
	.section	.note.GNU-stack,"",@progbits
