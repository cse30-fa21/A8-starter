	// file header
	.arch armv6           		// armv6 architecture
	.arm		      		// arm 32-bit instruction set
	.fpu vfp	      		// floating point co-processor
	.syntax unified	      		// modern syntax

	// .data // uncomment if needed

	.text 				// start of text segment
	// ======
	

        .global asm_doCol
	// ====== DO NOT EDIT ANYTHING ABOVE THIS LINE ======
        // !!! SET FP_OFFSET TO THE NUMBER OF (SAVED REGISTERS -1 * 4)
        // definitions that apply to the entire source file
        .equ 	FP_OFFSET, // TODO	// (# of saved regs - 1) * 4
	
	// asm_doCol(belem *dest,	// r0
	//           belem *src,	// r1
	//           size_t rows,	// r2
	//           size_t cols)	// r3

asm_doCol:	
	push {/* TODO save preserved registers as needed */, fp, lr}
	add fp, sp, FP_OFFSET		// DO NOT EDIT THIS LINE

	// TODO Implement doCol here

exit:	
	sub sp, fp, #FP_OFFSET		// DO NOT EDIT THIS LINE
	pop {/* TODO restore preserved registers as needed */, fp, lr}
	bx lr				// DO NOT EDIT THIS LINE
	
