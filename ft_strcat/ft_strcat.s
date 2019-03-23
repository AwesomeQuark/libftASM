section .text
	global _ft_strcat

_ft_strcat:
	push rbp
	mov rbp, rsp
	mov qword [rsp - 8], rax
	mov qword [rsp - 16], rcx
	jmp go_end_s1

go_end_s1:
	mov rax, qword [rsp - 8]
	cmp byte [rax], 0
	je go_end_s2
	mov rax, qword [rsp - 8]
	inc rax
	mov qword [rsp - 8], rax
	jmp go_end_s1

go_end_s2:
	mov rax, qword [rsp - 8]
	inc byte [rax]
	mov rax, qword [rsp - 16]
	cmp byte [rax], 0
	je end
	mov rcx, qword [rsp - 16]
	inc rcx
	mov qword [rsp - 16], rcx
	mov dl, byte [rax]
	mov rax, qword [rsp - 8]
	mov rcx, rax
	inc rcx
	mov qword [rsp - 16], rcx
	mov byte [rax], dl
	jmp go_end_s2

end:
	mov rax, qword [rsp - 8]
	mov byte [rax], 0
	pop rbp
	ret
