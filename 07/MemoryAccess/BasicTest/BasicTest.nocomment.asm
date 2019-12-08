@10
D=A
@SP
A=M
M=D
@SP
M=M+1

@LCL
D=M
@0
D=D+A // D is now @segment+value
@SP
A=M-1
A=M // A has now the value of memory at mem(SP-1)
D=D+A // this is to swap A and D
A=D-A
D=D-A // A and D are now swapped
M=D
@SP // this just decrements SP
M=M-1
@21
D=A
@SP
A=M
M=D
@SP
M=M+1
@22
D=A
@SP
A=M
M=D
@SP
M=M+1

@ARG
D=M
@2
D=D+A // D is now @segment+value
@SP
A=M-1
A=M // A has now the value of memory at mem(SP-1)
D=D+A // this is to swap A and D
A=D-A
D=D-A // A and D are now swapped
M=D
@SP // this just decrements SP
M=M-1

@ARG
D=M
@1
D=D+A // D is now @segment+value
@SP
A=M-1
A=M // A has now the value of memory at mem(SP-1)
D=D+A // this is to swap A and D
A=D-A
D=D-A // A and D are now swapped
M=D
@SP // this just decrements SP
M=M-1
@36
D=A
@SP
A=M
M=D
@SP
M=M+1

@THIS
D=M
@6
D=D+A // D is now @segment+value
@SP
A=M-1
A=M // A has now the value of memory at mem(SP-1)
D=D+A // this is to swap A and D
A=D-A
D=D-A // A and D are now swapped
M=D
@SP // this just decrements SP
M=M-1
@42
D=A
@SP
A=M
M=D
@SP
M=M+1
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

@THAT
D=M
@5
D=D+A // D is now @segment+value
@SP
A=M-1
A=M // A has now the value of memory at mem(SP-1)
D=D+A // this is to swap A and D
A=D-A
D=D-A // A and D are now swapped
M=D
@SP // this just decrements SP
M=M-1

@THAT
D=M
@2
D=D+A // D is now @segment+value
@SP
A=M-1
A=M // A has now the value of memory at mem(SP-1)
D=D+A // this is to swap A and D
A=D-A
D=D-A // A and D are now swapped
M=D
@SP // this just decrements SP
M=M-1
@510
D=A
@SP
A=M
M=D
@SP
M=M+1

@11
D=A // D is now temp+value
@SP
A=M-1
A=M // A has now the value of memory at mem(SP-1)
D=D+A // this is to swap A and D
A=D-A
D=D-A // A and D are now swapped
M=D
@SP // this just decrements SP
M=M-1
@LCL
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M-1
D=M
A=A-1
D=M+D
@SP
M=M-1
M=M-1
A=M
M=D
@SP
M=M+1
@ARG
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M-1
D=M
A=A-1
D=M-D
@SP
M=M-1
M=M-1
A=M
M=D
@SP
M=M+1
@THIS
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M-1
D=M
A=A-1
D=M+D
@SP
M=M-1
M=M-1
A=M
M=D
@SP
M=M+1
@SP
A=M-1
D=M
A=A-1
D=M-D
@SP
M=M-1
M=M-1
A=M
M=D
@SP
M=M+1
@11 // temp starts at 5
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M-1
D=M
A=A-1
D=M+D
@SP
M=M-1
M=M-1
A=M
M=D
@SP
M=M+1
