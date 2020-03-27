#ifndef _UART_H
#define _UART_H

// platform memory map is at qemu/hw/arm/virt.c
#define VIRT_UART	0x09000000

void print_uart(const char *str);

#endif //_UART_H
