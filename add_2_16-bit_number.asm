ORG 0000H
CLR C     ;MAKE CY=0
MOV A,#20H  ;LOWER BYTE OF OPERAND 1 IN A
ADD A,#DEH  ;ADD LOWER BYTE OF OPERAND 2 WITH A
MOV R1,A  ;STORES LSB OF RESULT IN R1
MOV A,#65H  ;HIGHER BYTE OF OPERAND 2 IN A
ADDC A,#ABH ; ADD WITH HIGHER BYTE OF OPERAND 1
MOV R0,A  ;STORES MSB OF RESULT IN R0
END

/*Another Method*/

ORG 0000H      
CLR C ; Make Cy=0
; SAY R7 HAS LOWER BYTE 34
; R6 HAS HIGHER BYTE 24
; MAKING NUMBER 2434
MOV R7, #34H   ;
MOV R6, #24H   ;
; ANOTHER NUMBER SAY 3345
; WITH R5 LOWER BYTE 45
; R4 HIGHER BYTE 33
MOV R5,#45H    
MOV R4, #33H   ; NOW ADDING
MOV A, R5      ; MOVING LOWER BYTE OF ONE NUMBER
ADD A , R7     ; ADDING LOWER BYTE TO LOWER BYTE OF OTHER NUMBER
MOV R3, A      ; R3 BEING LOWER BYTE OF ANSWER
MOV A, R6      ; BRINGING IN HIGHER BIT OF ONE OF NUMBER TO ACCUMULATOR
ADDC A, R4     ; NOW ADD WITH CARRY TO THE HIGHER BIT OF OTHER NBUMBER
MOV R2,A       ; R2 NOW CONTAINS THE HIGHER BITS
END ; STOP THE PROGRAM OUTPUT IS R2R3
