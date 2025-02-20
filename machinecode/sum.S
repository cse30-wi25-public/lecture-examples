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

        // function footer
        .size sum, (. - sum)       // set size for function
        
        
        // file footer
        .section .note.GNU-stack, "", %progbits // stack/data non-exec
.end
