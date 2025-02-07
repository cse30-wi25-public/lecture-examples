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
printfmt: .string "6 parms  %d %d %d %d %d\n"	 
        // .section .rodata          // uncomment if needed


        .text                        // start of text segment
        // function header (change main to function name in 5 places below)
        .global main              // make function global for linking to
        .type main, %function        // define as a function
        .equ FP_OFFSET, 28            // (#regs pushed -1) * 4 is distance from sp
        .equ EXIT_SUCCESS, 0         // return success (used by main)
        .equ EXIT_FAILURE, 1         // return failure (used by main)

	.equ OARG5, 0
	.equ OARG6, OARG5+4

	// example passing 6 parameters to a function

main:
        // function prologue
        push {r4-r9, fp, lr}
	add fp, sp, FP_OFFSET

	ldr r0, =printfmt	// print with 5 parameters
	mov r1, 11 		// .
	mov r2, 22              //
	mov r3, 33              //
	mov r4, 44		//
	str r4, [sp, OARG5]	//	
	mov r4, 55		//
	str r4, [sp, OARG6]	//	
	bl printf		// .

	sub sp, fp, FP_OFFSET
        pop {r4-r9, fp, lr}
        bx lr              // return(r0)



        // function footer
        .size main, (. - main)       // set size for function
        
        
        // file footer
        .section .note.GNU-stack, "", %progbits // stack/data non-exec
.end
