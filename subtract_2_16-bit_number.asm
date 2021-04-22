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
