#include "uart.h"

void print_uart(const char* str)
{
	while (*str)
		*(unsigned int*)VIRT_UART = (unsigned int)*str++;
}


