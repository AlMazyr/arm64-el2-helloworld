#include "asm.h"

globalfunc entry2
	adrp	x0, _stack_start // setup stack pointer for c code
	mov	sp, x0
	bl	main
	b	. // infinite loop
endfunc entry2
