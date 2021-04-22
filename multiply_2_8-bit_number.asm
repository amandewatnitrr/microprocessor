ORG 0000H
CLR C     ;MAKE CY=0
MOV A, #25H; Move one of the data you want to multiply to the Accumulator
MOV B, #25H; Move the another data to be multiplied to Register B
MUL AB ; MUltiply A and B, After this operation Accumulator will contain the lower bits of the result and higher bits will be stored in Register B
MOV R3,A ; Lower Bits will be stored in R3
MOV R4,B ; Higher Bits will be stored in R4
END

/*Another Method*/

ORG 000H
CLR C; Clear Cy=0
MOV R0,#25H;set 20H to R0, Also data is in Hexadecimal form (Replace 20H with your data as per convinence) 
MOV R1,#25H;set 30H to R1, Also data is in hexadecimal form (Replace 20H with your data as per convinence)
MOV A,R0;take the first operand from source to register A
MOV B,R1;take the second operand from source to register B
MUL AB ;Multiply A and B
MOV R1,B; Store higher order byte to 30H
MOV R1, A;Store lower order byte to 31H
END
