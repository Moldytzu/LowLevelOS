OUTPUT_FORMAT(elf64-x86-64)
ENTRY(llosMain)

SECTIONS
{
	.text : ALIGN(0x1000)
	{
		*(.text)
	}
	.data : ALIGN(0x1000)
	{
		*(.data)
	}
	.rodata : ALIGN(0x1000)
	{
		*(.rodata)
	}
	_BssStart = .;
	.bss : ALIGN(0x1000)
	{
		*(COMMON)
		*(.bss)
	}
	_BssEnd = .;
}