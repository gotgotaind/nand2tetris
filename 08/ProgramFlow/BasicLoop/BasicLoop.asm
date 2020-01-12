// line 1: // This file is part of www.nand2tetris.org
// line 2: // and the book "The Elements of Computing Systems"
// line 3: // by Nisan and Schocken, MIT Press.
// line 4: // File name: projects/08/ProgramFlow/BasicLoop/BasicLoop.vm
// line 5: 
// line 6: // Computes the sum 1 + 2 + ... + argument[0] and pushes the
// line 7: // result onto the stack. Argument[0] is initialized by the test
// line 8: // script before this code starts running.
// line 9: push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// line 10: pop local 0         // initializes sum = 0

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
// line 11: label LOOP_START
(BasicLoop$$LOOP_START)
// line 12: push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// line 13: push local 0
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
// line 14: add
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
// line 15: pop local 0	        // sum = sum + counter

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
// line 16: push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// line 17: push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// line 18: sub
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
// line 19: pop argument 0      // counter--

@ARG
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
// line 20: push argument 0
@ARG
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// line 21: if-goto LOOP_START  // If counter > 0, goto LOOP_START
@SP
AM=M-1
D=M
@BasicLoop$$LOOP_START
D;JNE
// line 22: push local 0
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
