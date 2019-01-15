%define MACH_SYSCALL(nb)    0x2000000 | nb
%define WRITE               4
%define STDOUT              1

section .data
string:
	.hello db "Hello World !", 10
	.len_hello equ $ - string.hello
	.bye db "Goodbye !", 10
	.len_bye equ $ - string.bye

section .text
	global start
	global _main

start:
	call _main
	ret

_main:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov rdi, STDOUT
	mov rdx, string.len_hello + string.len_bye
	mov rax, MACH_SYSCALL(WRITE)
	lea rsi, [rel string.hello]
	syscall
	lea rsi, [rel string.bye]
	syscall
	leave
	ret
