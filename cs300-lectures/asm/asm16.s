	.file	"asm16.c"
	.text
	.globl	_Z3sumii
	.type	_Z3sumii, @function
_Z3sumii:
.LFB0:
	leal	(%rdi,%rsi), %eax
	ret
.LFE0:
	.size	_Z3sumii, .-_Z3sumii
	.ident	"GCC: (Ubuntu 8.4.0-3ubuntu2) 8.4.0"
	.section	.note.GNU-stack,"",@progbits
