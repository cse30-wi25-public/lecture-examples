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
        .global fact              // make function global for linking to
        .type fact, %function        // define as a function
        .equ FP_OFFSET, 4            // (#regs pushed -1) * 4 is distance from sp
        .equ EXIT_SUCCESS, 0         // return success (used by main)
        .equ EXIT_FAILURE, 1         // return failure (used by main)
fact:
        // function prologue
        push {r4-r5, fp, lr}
        cmp r0, 1          // if (n > 1) {
        ble .Lret_one      // .
        mov r4, r0         //     r4 <= r0/n
        sub r0, r0, 1      //     r0/n <= r0/n - 1
        bl fact            //     r0/n = r4 * fact(r0/n)
        mul r0, r0, r4     //     . 
        b .Lend            // }else{
.Lret_one: mov r0, #1       //     r0/n <= 1
.Lend:                      // }
        pop {r4-r5, fp, lr}
        bx lr              // return(r0)



        // function footer
        .size fact, (. - fact)       // set size for function
        
        
        // file footer
        .section .note.GNU-stack, "", %progbits // stack/data non-exec
.end
