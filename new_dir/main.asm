.global _start
.intel_syntax

.section .text
_start:
	mov %eax, 0x27 # mkdir
	lea %ebx, [foldername]
	mov %ecx, 777
	int 0x80

	mov %eax, 0x04 # write
	mov %ebx, 0x01 # stdout
	lea %ecx, [foldername]
	mov %edx, 0x05
	int 0x80

	mov %eax, 0x01
	mov %ebx, 0x03
	int 0x80

.section .data
	foldername:
		.ascii "test"
