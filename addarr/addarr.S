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
        .global addarr               // make function global for linking to
        .type myswap, %function        // define as a function
        .equ FP_OFFSET, 4            // (#regs pushed -1) * 4 is distance from sp
        .equ EXIT_SUCCESS, 0         // return success (used by main)
        .equ EXIT_FAILURE, 1         // return failure (used by main)

addarr: push {fp, lr}
        add fp, sp, FP_OFFSET

        mov r2, 0
        cmp r2, 400       // for (i=0; i<400; i++){
        bge .Lexit        // .
.Lloop: ldr r3, [r0, r2]  // .
        add r3, r3, 4     //   B[i] = A[i] + 4
        str r3, [r1, r2]  //   .
        add r2, r2, 4     //   i++
        cmp r2, 400       // .
        blt .Lloop        // }

        // function epilogue
.Lexit: sub sp, fp, FP_OFFSET        // restore stack frame top
        pop {fp, lr}                 // remove frame and restore registers
        bx lr                        // return to caller
        // function footer
        .size addarr, (. - addarr)       // set size for function
        
        
        // file footer
        .section .note.GNU-stack, "", %progbits // stack/data non-exec
.end
