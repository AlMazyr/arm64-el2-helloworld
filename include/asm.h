#ifndef H_ASM_DEFINED
#define H_ASM_DEFINED


.macro staticfunc name
    .section .text.\name, "ax"
    .type \name, @function
    .func \name
\name:
.endm


.macro globalfunc name
    .global \name
    staticfunc \name
.endm


.macro endfunc name
    .endfunc
    .size \name, .-\name
.endm


#endif /* H_ASM_DEFINED */
