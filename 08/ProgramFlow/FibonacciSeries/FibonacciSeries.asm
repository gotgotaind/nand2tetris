// line 1: // This file is part of www.nand2tetris.org
// line 2: // and the book "The Elements of Computing Systems"
// line 3: // by Nisan and Schocken, MIT Press.
// line 4: // File name: projects/08/ProgramFlow/FibonacciSeries/FibonacciSeries.vm
// line 5: 
// line 6: // Puts the first argument[0] elements of the Fibonacci series
// line 7: // in the memory, starting in the address given in argument[1].
// line 8: // Argument[0] and argument[1] are initialized by the test script
// line 9: // before this code starts running.
// line 10: 
// line 11: push argument 1
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
// line 12: pop pointer 1           // that = argument[1]
@SP
AM=M-1
D=M
@THAT
M=D
// line 13: 
// line 14: push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// line 15: pop that 0              // first element in the series = 0

@THAT
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
// line 16: push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// line 17: pop that 1              // second element in the series = 1

@THAT
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
// line 18: 
// line 19: push argument 0
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
// line 20: push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
// line 21: sub
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
// line 22: pop argument 0          // num_of_elements -= 2 (first 2 elements are set)

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
// line 23: 
// line 24: label MAIN_LOOP_START
(FibonacciSeries$$MAIN_LOOP_START)
// line 25: 
// line 26: push argument 0
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
// line 27: if-goto COMPUTE_ELEMENT // if num_of_elements > 0, goto COMPUTE_ELEMENT
@SP
AM=M-1
D=M
@FibonacciSeries$$COMPUTE_ELEMENT
D;JNE
// line 28: goto END_PROGRAM        // otherwise, goto END_PROGRAM
@FibonacciSeries$$END_PROGRAM
0;JMP
// line 29: 
// line 30: label COMPUTE_ELEMENT
(FibonacciSeries$$COMPUTE_ELEMENT)
// line 31: 
// line 32: push that 0
@THAT
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// line 33: push that 1
@THAT
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
// line 34: add
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
// line 35: pop that 2              // that[2] = that[0] + that[1]

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
// line 36: 
// line 37: push pointer 1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
// line 38: push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// line 39: add
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
// line 40: pop pointer 1           // that += 1
@SP
AM=M-1
D=M
@THAT
M=D
// line 41: 
// line 42: push argument 0
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
// line 43: push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// line 44: sub
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
// line 45: pop argument 0          // num_of_elements--

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
// line 46: 
// line 47: goto MAIN_LOOP_START
@FibonacciSeries$$MAIN_LOOP_START
0;JMP
// line 48: 
// line 49: label END_PROGRAM
(FibonacciSeries$$END_PROGRAM)
