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
sum:	cmp r0, 3	
	beq .Llab
	add r0, r0, r1
	add r0, r0, r2
	add r0, r0, r3
	add r0, r0, r1
	add r0, r0, r2
.Llab:  mov r0, 0
	bx lr
	

        // function footer
        .size sum, (. - sum)       // set size for function
        
        
        // file footer
        .section .note.GNU-stack, "", %progbits // stack/data non-exec
.end
