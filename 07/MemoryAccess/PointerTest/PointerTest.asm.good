// line 1: // This file is part of www.nand2tetris.org
// line 2: // and the book "The Elements of Computing Systems"
// line 3: // by Nisan and Schocken, MIT Press.
// line 4: // File name: projects/07/MemoryAccess/PointerTest/PointerTest.vm
// line 5: 
// line 6: // Executes pop and push commands using the
// line 7: // pointer, this, and that segments.
// line 8: push constant 3030
@3030
D=A
@SP
A=M
M=D
@SP
M=M+1
// line 9: pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// line 10: push constant 3040
@3040
D=A
@SP
A=M
M=D
@SP
M=M+1
// line 11: pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// line 12: push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
// line 13: pop this 2

@THIS
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
// line 14: push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1
// line 15: pop that 6

@THAT
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
// line 16: push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
// line 17: push pointer 1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
// line 18: add
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
// line 19: push this 2
@THIS
D=M
@2
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// line 20: sub
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
// line 21: push that 6
@THAT
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// line 22: add
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
