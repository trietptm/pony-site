	.file	"ifelse.c"
	.version	"01.01"
gcc2_compiled.:
	nop
.section	.rodata
.LC0:
	.string	"A is less than 0\n"
	.align 32
.LC1:
	.string	"A is greater than or equal to 0\n"
.LC2:
	.string	"Leaving main\n"
.text
	.align 4
.globl main
	.type	 main,@function
main:
	pushl %ebp
	movl %esp,%ebp
	subl $8,%esp
.data
	.align 4
.LP1:
	.long 0
.text
	movl $.LP1,%edx
	call mcount
	testl %eax,%eax
	jge .L18
	addl $-12,%esp
	pushl $.LC0
	jmp .L20
	.p2align 4,,7
.L18:
	addl $-12,%esp
	pushl $.LC1
.L20:
	call printf
	addl $16,%esp
	addl $-12,%esp
	pushl $.LC2
	call printf
	leave
	ret
.Lfe1:
	.size	 main,.Lfe1-main
	.ident	"GCC: (GNU) 2.95.4  (Debian prerelease)"
