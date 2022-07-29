	.file	"controlflow01.c"
	.text
	.globl	_Z1fv
	.type	_Z1fv, @function
_Z1fv:
.LFB0:
	movl	a(%rip), %eax
	cmpl	b(%rip), %eax
	jge	.L1
	movl	$0, %eax
.L1:
	ret
.LFE0:
	.size	_Z1fv, .-_Z1fv
	.ident	"GCC: (Ubuntu 8.4.0-3ubuntu2) 8.4.0"
	.section	.note.GNU-stack,"",@progbits
