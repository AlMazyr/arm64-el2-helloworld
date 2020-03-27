// vector table entry must be aligned to 0x1000
.align 12
.global el2_vectors
el2_vectors:
.align 7 // align to 0x80
el2_c_sp0_sync:
	mov x0, 0
	bl print_vect
	b .
.align 7
el2_c_sp0_irq:
	mov x0, 1
	bl print_vect
	b .
.align 7
el2_c_sp0_fiq:
	mov x0, 2
	bl print_vect
	b .
.align 7
el2_c_sp0_serror:
	mov x0, 3
	bl print_vect
	b .
.align 7
el2_c_spx_sync:
	mov x0, 4
	bl print_vect
	b .
.align 7
el2_c_spx_irq:
	mov x0, 5
	bl print_vect
	b .
.align 7
el2_c_spx_fiq:
	mov x0, 6
	bl print_vect
	b .
.align 7
el2_c_spx_serror:
	mov x0, 7
	bl print_vect
	b .
.align 7
el2_64_sync:
	mov x0, 8
	bl print_vect
	b .
.align 7
el2_64_irq:
	mov x0, 9
	bl print_vect
	b .
.align 7
el2_64_fiq:
	mov x0, 10
	bl print_vect
	b .
.align 7
el2_64_serror:
	mov x0, 11
	bl print_vect
	b .
.align 7
el2_32_sync:
	mov x0, 12
	bl print_vect
	b .
.align 7
el2_32_irq:
	mov x0, 13
	bl print_vect
	b .
.align 7
el2_32_fiq:
	mov x0, 14
	bl print_vect
	b .
.align 7
el2_32_serror:
	mov x0, 15
	bl print_vect
	b .
