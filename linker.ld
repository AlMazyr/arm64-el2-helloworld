
ENTRY(entry2)

SECTIONS
{
	. = 0x40000000;

	_stack_end = .;

	.stack (): {
		. = . + 16K;
	}

	_stack_start = .;

	.text : {
		*(.text);
	}

	.data : { 
		*(.data);
	}

	.bss : {
		*(.bss);
	}
}
