.global _start
.intel_syntax

.section .text
_start:

	# create folder "saves"
	mov %eax, 0x27 # syscall mkdir
	lea %ebx, [save_folder]
	mov %ecx, 0x309
	int 0x80

	# create file "file1.txt"
	mov %eax, 0x05 # syscall open
	lea %ebx, [save_file]
	mov %ecx, 0x309
	int 0x80

	# write to file "file1.txt"
	mov %eax, 0x04 # syscall write
	mov %ebx 0x01;
	lea %ecx, [to_save]
	mov %edx, 0x05 # Amount of chars in to_save
	int 0x80

	mov

	# exit syscall
	mov %eax, 0x01 # exit
	mov %ebx, 0x03 # exit code 3
	int 0x80

.section .data
	save_folder:
		.string "saves"
	save_file:
		.string "file1.txt"
	final_file:
		.string "saves/file1.txt"
	to_save:
		.string "boobs"
