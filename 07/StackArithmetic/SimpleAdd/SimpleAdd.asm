// line 1: // This file is part of www.nand2tetris.org
// line 2: // and the book "The Elements of Computing Systems"
// line 3: // by Nisan and Schocken, MIT Press.
// line 4: // File name: projects/07/StackArithmetic/SimpleAdd/SimpleAdd.vm
// line 5: 
// line 6: // Pushes and adds two constants.
// line 7: push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
// line 8: push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
// line 9: add
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
