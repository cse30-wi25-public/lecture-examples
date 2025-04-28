//
// CSE 30 ARM Assembly Template
// file header
        .arch armv6                  // armv6 architecture
        .arm                         // arm 32-bit instruction set
        .fpu vfp                     // floating point co-processor
        .syntax unified              // modern syntax


        // .extern                   // symbol import - external references
        // .section .rodata          // uncomment if needed


        .text                        // start of text segment
        // function header (change main to function name in 5 places below)
        .global add5                // make function global for linking to
        .type params, %function      // define as a function
        .equ FP_OFFSET, 12           // (#regs pushed -1) * 4 is distance from sp
        .equ EXIT_SUCCESS, 0         // return success (used by main)
        .equ EXIT_FAILURE, 1         // return failure (used by main)

        .equ IARG5, 4
        .equ IARG6, IARG5+4

add5:
        // function prologue
        push {r5-r6, fp, lr}
        add fp, sp, FP_OFFSET
        add r0, r0, r1
        add r0, r0, r2
        add r0, r0, r3
        ldr r4, [fp, IARG5]
        add r0, r0, r4

        sub sp, fp, FP_OFFSET
        pop {r4-r5, fp, lr}
        bx lr              // return(r0)



        // function footer
        .size add5, (. - add5)       // set size for function
        
        
        // file footer
        .section .note.GNU-stack, "", %progbits // stack/data non-exec
.end
