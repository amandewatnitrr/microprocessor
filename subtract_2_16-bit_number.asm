ORG 000H ; Intialize
MOV A, #62H ; Copy content of LSB of First number
MOV B, #96H ;  Copy content of LSB of Second Number
SUBB A, B ; Subtract LSB of Both the numbers
MOV R6, A ; Transfer the additon result from ACC to Reg 6
MOV 41H, R6 ; Store the result in given memory location
MOV A, #27H ; Copy content of MSB of First number
MOV R0, #12H ; Copy content of MSB of Second number
SUBB A, R0 ; Subtract the MSB of both the number
MOV R1, A ; Transfer result from Accumulator to Register R1
MOV 40H, R1 ; Store result in given memory location
END

/*Another Method*/
ORG 0000H
CLR C	  		;MAKE CY=0
MOV A,#20H		;LOWER BYTE OF OPERAND 1 IN A (replace 20 with lower operand of your subtractend)
SUBB A,#DEH	;SUBTRACT LOWER BYTE OF OPERAND 2 WITH A (replace DE with lower operand of your subtractor data)
MOV R1,A		;STORES LSB OF RESULT IN R1
MOV A,#65H		;HIGHER BYTE OF OPERAND 2 IN A  (replace 65 with higher operand of your subtractend)
SUBB A,#ABH	;SUBTRACT WITH HIGHER BYTE OF OPERAND 1  (replace AB with higher operand of your subtractor)
MOV R0,A		;STORES MSB OF RESULT IN R0
END
