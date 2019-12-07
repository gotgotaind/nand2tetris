// line 1: // This file is part of www.nand2tetris.org
// line 2: // and the book "The Elements of Computing Systems"
// line 3: // by Nisan and Schocken, MIT Press.
// line 4: // File name: projects/07/MemoryAccess/BasicTest/BasicTest.vm
// line 5: 
// line 6: // Executes pop and push commands using the virtual memory segments.
// line 7: push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
// line 8: pop local 0

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
// line 9: push constant 21
@21
D=A
@SP
A=M
M=D
@SP
M=M+1
// line 10: push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1
// line 11: pop argument 2

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
// line 12: pop argument 1

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
// line 13: push constant 36
@36
D=A
@SP
A=M
M=D
@SP
M=M+1
// line 14: pop this 6

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
// line 15: push constant 42
@42
D=A
@SP
A=M
M=D
@SP
M=M+1
// line 16: push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
// line 17: pop that 5

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
// line 18: pop that 2

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
// line 19: push constant 510
@510
D=A
@SP
A=M
M=D
@SP
M=M+1
// line 20: pop temp 6

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
// line 21: push local 0
@LCL
A=M
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// line 22: push that 5
@THAT
A=M
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// line 23: add
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
// line 24: push argument 1
@ARG
A=M
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// line 25: sub
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
// line 26: push this 6
@THIS
A=M
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// line 27: push this 6
@THIS
A=M
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// line 28: add
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
// line 29: sub
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
// line 30: push temp 6
@11 // temp starts at 5
D=M
@SP
A=M
M=D
@SP
M=M+1
// line 31: add
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
