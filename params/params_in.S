//
// CSE 30 ARM Assembly Template
// file header
        .arch armv6                  // armv6 architecture
        .arm                         // arm 32-bit instruction set
        .fpu vfp                     // floating point co-processor
        .syntax unified              // modern syntax


        // .extern                   // symbol import - external references
        // .equ                      // file level definitions
        // .bss                      // uncomment if needed
        .data                     // uncomment if needed
printfmt: .string "The %d-th paramenter is %d\n"	 
        // .section .rodata          // uncomment if needed


        .text                        // start of text segment
        // function header (change main to function name in 5 places below)
        .global params              // make function global for linking to
        .type params, %function        // define as a function
        .equ FP_OFFSET, 28            // (#regs pushed -1) * 4 is distance from sp
        .equ EXIT_SUCCESS, 0         // return success (used by main)
        .equ EXIT_FAILURE, 1         // return failure (used by main)

	.equ IARG5, 4
	.equ IARG6, IARG5+4

params:
        // function prologue
        push {r4-r9, fp, lr}
	add fp, sp, FP_OFFSET

	ldr r0, =printfmt	// print the 5th paramenter
	mov r1, 5		// .
	ldr r2, [fp, IARG5]	// .
	bl printf		// .

	ldr r0, =printfmt	// print the 6th paramenter
	mov r1, 6		// .
	ldr r2, [fp, IARG6]	// .
	bl printf		// .

	sub sp, fp, FP_OFFSET
        pop {r4-r9, fp, lr}
        bx lr              // return(r0)



        // function footer
        .size params, (. - params)       // set size for function
        
        
        // file footer
        .section .note.GNU-stack, "", %progbits // stack/data non-exec
.end
