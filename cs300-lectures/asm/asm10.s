	.file	"asm10.c"
	.text
	.globl	_Z3sumv
	.type	_Z3sumv, @function
_Z3sumv:
.LFB0:
	movzwl	b(%rip), %eax
	addw	a(%rip), %ax
	ret
.LFE0:
	.size	_Z3sumv, .-_Z3sumv
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
