ORG 0000H
MOV A,#45H ; Moving Hexadeciaml Data to the Accumulator
MOV B,#86H ; Moving Hexadecimal data to register B
ADD A,B ; The Addition of A and B is updated in the Accumulator A the same statement can aslo be written as (ADD B)
END ; Ends the program

/* ------------------------------------------------------------ 
   Another method
*/

MOV R0,#20H;set source address 20H to R0
MOV R1,#30H;set destination address 30H to R1
MOV A,R0; take the value from source to register A
MOV R5,A; Move the value from A to R5
MOV R4,#00H; Clear register R4 to store carry
ADD A,R1;Add R5 with A and store to register A
JNC SAVE
INC R4; Increment R4 to get carry
MOV B,R4;Get carry to register B
MOV R1,B; Store the carry first
INC R1; Increase R1 to point to the next address
SAVE:   MOV R1,A;Store the result  
END ;Stop the program
