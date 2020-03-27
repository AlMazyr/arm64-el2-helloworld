#include "asm.h"

globalfunc entry2
	ldr	x0, =el2_vectors
	msr	vbar_el2, x0
	adrp	x0, _stack_start // setup stack pointer for c code
	mov	sp, x0
	smc	#10
	bl	main
	b	. // infinite loop
endfunc entry2
