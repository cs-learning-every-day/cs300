	.file	"call01.c"
	.text
	.globl	_Z1fi
	.type	_Z1fi, @function
_Z1fi:
.LFB0:
	movl	%edi, -4(%rsp)
	movl	-4(%rsp), %eax
	ret
.LFE0:
	.size	_Z1fi, .-_Z1fi
	.ident	"GCC: (Ubuntu 8.4.0-3ubuntu2) 8.4.0"
	.section	.note.GNU-stack,"",@progbits
