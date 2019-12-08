// line 1: // This file is part of www.nand2tetris.org
// line 2: // and the book "The Elements of Computing Systems"
// line 3: // by Nisan and Schocken, MIT Press.
// line 4: // File name: projects/07/MemoryAccess/StaticTest/StaticTest.vm
// line 5: 
// line 6: // Executes pop and push commands using the static segment.
// line 7: push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1
// line 8: push constant 333
@333
D=A
@SP
A=M
M=D
@SP
M=M+1
// line 9: push constant 888
@888
D=A
@SP
A=M
M=D
@SP
M=M+1
// line 10: pop static 8
@SP
AM=M-1
D=M
@StaticTest.vm.8
M=D
// line 11: pop static 3
@SP
AM=M-1
D=M
@StaticTest.vm.3
M=D
// line 12: pop static 1
@SP
AM=M-1
D=M
@StaticTest.vm.1
M=D
// line 13: push static 3
@StaticTest.vm.3
D=M
@SP
A=M
M=D
@SP
M=M+1
// line 14: push static 1
@StaticTest.vm.1
D=M
@SP
A=M
M=D
@SP
M=M+1
// line 15: sub
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
// line 16: push static 8
@StaticTest.vm.8
D=M
@SP
A=M
M=D
@SP
M=M+1
// line 17: add
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
