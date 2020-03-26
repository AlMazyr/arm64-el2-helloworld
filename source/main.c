// platform memory map is at qemu/hw/arm/virt.c
#define VIRT_UART	0x09000000

void print_uart(const char* str)
{
	while (*str)
		*(unsigned int*)VIRT_UART = (unsigned int)*str++;
}

void main()
{
	print_uart("Hello, world!\n");
}
