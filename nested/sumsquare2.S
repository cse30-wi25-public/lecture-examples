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
        // .data                     // uncomment if needed
        // .section .rodata          // uncomment if needed


        .text                        // start of text segment
        // function header (change main to function name in 5 places below)
        .global sumsquare              // make function global for linking to
        .type sumsquare, %function        // define as a function
        .equ FP_OFFSET, 4            // (#regs pushed -1) * 4 is distance from sp
        .equ EXIT_SUCCESS, 0         // return success (used by main)
        .equ EXIT_FAILURE, 1         // return failure (used by main)
sumsquare:
        // function prologue
        //
        // your code here
        //
	push {r4, lr}
	mov r4, r1	// 
	mov r1, r0
	bl mult
	add r0, r0, r4
	pop {r4, lr}
.Lfin:  bx lr                        // return to caller
        // function footer
        .size sumsquare, (. - sumsquare)       // set size for function
        
        
        // file footer
        .section .note.GNU-stack, "", %progbits // stack/data non-exec
.end
