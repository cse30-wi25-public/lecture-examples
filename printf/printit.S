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
        .section .rodata          // uncomment if needed
mesg:	 .string "Hello from the Wizard!\n"
mesgd:	 .string "This magic number is %d\n"

        .text                        // start of text segment
        // function header (change main to function name in 5 places below)
        .global printit              // make function global for linking to
        .type printit, %function     // define as a function
        .equ FP_OFFSET, 12            // (#regs pushed -1) * 4 is distance from sp
        .equ EXIT_SUCCESS, 0         // return success (used by main)
        .equ EXIT_FAILURE, 1         // return failure (used by main)
printit:
        // function prologue
        push {r4-r5, fp, lr}                // stack register save minimum: fp,lr (push in pairs!)
        add fp, sp, FP_OFFSET        // set frame pointer to frame base
        //
        // your code here
        //
	mov r4, r0
	ldr r0, =mesg
	bl  printf

	ldr r0, =mesgd
	mov r1, r4
	bl  printf

        // function epilogue
        sub sp, fp, FP_OFFSET        // restore stack frame top
        pop {r4-r5, fp, lr}                 // remove frame and restore registers
        bx lr                        // return to caller
        // function footer
        .size printit, (. - printit)       // set size for function
        
        
        // file footer
        .section .note.GNU-stack, "", %progbits // stack/data non-exec
.end
