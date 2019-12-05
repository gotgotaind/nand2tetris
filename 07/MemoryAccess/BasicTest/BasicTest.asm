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

@SP
AM=M-1
D+M
@LCL
A=M
M=D
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

@SP
AM=M-1
D+M
@ARG
A=M
M=D
// line 12: pop argument 1

@SP
AM=M-1
D+M
@ARG
A=M
M=D
// line 13: push constant 36
@36
D=A
@SP
A=M
M=D
@SP
M=M+1
// line 14: pop this 6

@SP
AM=M-1
D+M
@THIS
A=M
M=D
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

@SP
AM=M-1
D+M
@THAT
A=M
M=D
// line 18: pop that 2

@SP
AM=M-1
D+M
@THAT
A=M
M=D
// line 19: push constant 510
@510
D=A
@SP
A=M
M=D
@SP
M=M+1
// line 20: pop temp 6

@SP
AM=M-1
D+M
@TEMP
A=M
M=D
// line 21: push local 0
@LCL
A=M
D=M
@{value}
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
@{value}
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
@{value}
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
@{value}
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
@{value}
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
@TEMP
A=M
D=M
@{value}
A=D+A
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
