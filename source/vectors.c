#include "uart.h"

static const char *except_strs[] =
{
	"From current EL SP_EL0 Sync",
	"From current EL SP_EL0 IRQ/vIRQ",
	"From current EL SP_EL0 FIQ/vFIQ",
	"From current EL SP_EL0 SError/vSError",
	"From current EL SP_ELx Sync",
	"From current EL SP_ELx IRQ/vIRQ",
	"From current EL SP_ELx FIQ/vFIQ",
	"From current EL SP_ELx SError/vSError",
	"From lower EL AArch64 Sync",
	"From lower EL AArch64 IRQ/vIRQ",
	"From lower EL AArch64 FIQ/vFIQ",
	"From lower EL AArch64 SError/vSerror",
	"From lower EL AArch32 Sync",
	"From lower EL AArch32 IRQ/vIRQ",
	"From lower EL AArch32 FIQ/vFIQ",
	"From lower EL AArch32 SError/vSerror"
};

void print_vect(int vect)
{
	print_uart(except_strs[vect]);
}
