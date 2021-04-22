ORG 000H
MOV R1, #40H ;Move Hexadecimal value 40 to R1 Register
MOV R2, #30H ;Move Hexadecimal value 40 to R1 Register
MOV A, R1 ;Move Subtractend to Accumulator
SUBB A, R2 ;Subtract Subtractor from the Subtractend
END

/*Another method*/

ORG 000H
MOV R0,#20H;set  20H to R0
MOV R1,#30H;set destination address 30H to R1
MOV A,R0;take the value from source to register A
MOV R5,A; Move the value from A to R5
MOV R4,#00H; Clear register R4 to store borrow
MOV A,R0; take the value from source to register A
MOV R3,A; store second byte
MOV A,R5;get back the first operand
SUBB A,R1; Subtract R3 from A
JNC SAVE
INC R4; Increment R4 to get borrow
MOV B,R4;Get borrow to register B
MOV R1,B; Store the borrow first

SAVE:  MOV R1,A; Store the result
END
