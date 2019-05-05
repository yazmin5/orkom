segment .data
stdout		db 'Hello x86', 10

segment .text
global main
main:
	mov eax, 4
	mov ebx, 1
	mov ecx, stdout
	mov edx, 10
	int 0x80
	
	;exit
	mov eax, 1
	mov ebx, 40
	int 0x80
