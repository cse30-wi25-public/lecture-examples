//
// CSE 30 ARM Assembly Template
// file header
        .arch armv6                  // armv6 architecture
        .arm                         // arm 32-bit instruction set
        .syntax unified              // modern syntax

        .text                        // start of text segment
        .global sum                  // make function global for linking to

sum:	add r0, r0, r1
	bx lr
        .section .note.GNU-stack, "", %progbits // stack/data non-exec
