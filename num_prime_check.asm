BITS 32                                                     

extern scanf
extern printf


section .data


	print: db "%d",0
	prime:db"number is prime",10,0
	not_prime:db"not prime ",10,0
section .text
	
	global main
	main:
	push ebp
	mov ebp,esp
	sub esp,0x14

	lea eax,[ebp-0x4]
	push eax
	push print
	call scanf

	mov eax,DWORD[ebp-0x4]
	mov ecx,eax
	dec ecx
	mov dword[ebp-0x8],ecx
	mov ebx,2

	cmp eax,2
	je abd
	jg hitman
	hitman:
		mov ecx,DWORD[ebp-0x4]
		mov edx,0
		div ebx
		cmp edx,0
		je msd
		cmp ebx,dword[ebp-0x8]
		je abd
		inc ebx


	abd:
		push prime
		call printf
		leave 
		ret
	msd:
		push not_prime
		call printf
		leave
		ret

