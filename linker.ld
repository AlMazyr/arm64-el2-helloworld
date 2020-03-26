
ENTRY(entry2)

SECTIONS
{
	. = 0x40000000;

	.stack (): {
		. = . + 16K;
	}

	_stack_start = .;

	.text : {
		out/entry2.o(.text);
		*(.text);
	}

	.data : { 
		*(.data);
	}

	.bss : {
		*(.bss);
	}
}
