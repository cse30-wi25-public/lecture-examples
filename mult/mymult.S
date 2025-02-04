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
        .global mymult              // make function global for linking to
        .type mymult, %function        // define as a function
        .equ FP_OFFSET, 4            // (#regs pushed -1) * 4 is distance from sp
        .equ EXIT_SUCCESS, 0         // return success (used by main)
        .equ EXIT_FAILURE, 1         // return failure (used by main)
mymult:
        // function prologue
        push {fp, lr}                // stack register save minimum: fp,lr (push in pairs!)
        add fp, sp, FP_OFFSET        // set frame pointer to frame base
        //
        // your code here
        //

	mov r2, 0
.LLabel:
	add r2, r2, r1
	sub r0, r0, 1
	cmp r0, 0
	bne .LLabel

	mov r0, r2

        // function epilogue
        sub sp, fp, FP_OFFSET        // restore stack frame top
        pop {fp, lr}                 // remove frame and restore registers
        bx lr                        // return to caller
        // function footer
        .size mymult, (. - mymult)       // set size for function
        
        
        // file footer
        .section .note.GNU-stack, "", %progbits // stack/data non-exec
.end
