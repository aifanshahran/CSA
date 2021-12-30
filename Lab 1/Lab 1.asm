;calculates the sum of all the gaps between array elements

INCLUDE Irvine32.inc

.data
array WORD 0,2,5,9,10 ;word which mean 2 byte
result WORD 0
.code
main PROC

mov ecx, LENGTHOF array ;move length of array which is 5 to ecx

mov ESI, WORD PTR OFFSET array   ;cast array with 16bit word first
                                 ;move position of array starting from array[0]
                                 ;getting the address location of array

  L1:
 MOV AX,[ESI]  ;move value 0,2,5,9,10 to eax but one at a time
                ;with bracket, register will point to the memory location instead of moving
                ;the value of esi

 MOV BX,[ESI+2] ;move the next address location to ebx, example if first 0, it will take the next
                 ;value in the array which is 2
                 ; plus 2 because it is word

 SUB BX,AX     ;ebx-eax to get the gap value

 ADD result,BX  ;continue add result until loop finish

 ADD ESI, TYPE array ;move to next position of array according to the type of array which is DWORD
                     ;so it will add 2 to esi 
                     ;getting the next address location of array

  Loop L1        ;looping until ecx become 0
                 ;the length of array, ecx,  will decrease to 0
                 ;when 0 it will stop looping

invoke ExitProcess,0
main ENDP
END main