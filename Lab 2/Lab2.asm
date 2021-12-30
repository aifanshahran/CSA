INCLUDE Irvine32.inc

.data
val    dword   8
counter	dword  1


.code
main PROC

	mov eax,0

	mov ebx,val

	mov ecx,val

L1:

  mov eax,counter

  push ecx

  mov ecx,ebx

	L2:
	call WriteInt
	inc eax
	loop L2

		pop ecx
		call crlf
		dec ebx
		inc counter

  Loop L1        ;looping 

exit
main ENDP
END main