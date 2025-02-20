	.arch armv6
	.arm
	.fpu vfp
	.syntax unified
	.align 4
	.bss
	.data
	.text
	.global sum
	.type sum, %function
sum:	.word 0xe0800001	
	.word 0xe12fff1e
