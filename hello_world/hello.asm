; Hello World!

.global _start
.intel_syntax

.section .text
_start:	
	mov %eax, 0x04
	mov %ebx, 0x01 # STDOUT
	lea %ecx, [message] # load content for the memory address of "message"
	mov %edx, 15 # size of "message"
	int 0x80

# Exitting syscall
	mov %eax, 0x01 # (0x01 = exit)
	mov %ebx, 0x03 # (0x03 = unreserved)
	int 0x80

.section .data
	message:
		.ascii "Hello, World!\n"
