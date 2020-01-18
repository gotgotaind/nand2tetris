// line 1: // This file is part of www.nand2tetris.org    // cpu emulator line 0
// line 2: // and the book "The Elements of Computing Systems"    // cpu emulator line 0
// line 3: // by Nisan and Schocken, MIT Press.    // cpu emulator line 0
// line 4: // File name: projects/08/FunctionCalls/SimpleFunction/SimpleFunction.vm    // cpu emulator line 0
// line 5:     // cpu emulator line 0
// line 6: // Performs a simple calculation and returns the result.    // cpu emulator line 0
// line 7: function SimpleFunction.test 2    // cpu emulator line 0
($SimpleFunction.test)    // cpu emulator line 0
@SP    // cpu emulator line 0
A=M    // cpu emulator line 1
M=0    // cpu emulator line 2
@SP    // cpu emulator line 3
M=M+1    // cpu emulator line 4
@SP    // cpu emulator line 5
A=M    // cpu emulator line 6
M=0    // cpu emulator line 7
@SP    // cpu emulator line 8
M=M+1    // cpu emulator line 9
// line 8: push local 0    // cpu emulator line 10
@LCL    // cpu emulator line 10
D=M    // cpu emulator line 11
@0    // cpu emulator line 12
A=D+A    // cpu emulator line 13
D=M    // cpu emulator line 14
@SP    // cpu emulator line 15
A=M    // cpu emulator line 16
M=D    // cpu emulator line 17
@SP    // cpu emulator line 18
M=M+1    // cpu emulator line 19
// line 9: push local 1    // cpu emulator line 20
@LCL    // cpu emulator line 20
D=M    // cpu emulator line 21
@1    // cpu emulator line 22
A=D+A    // cpu emulator line 23
D=M    // cpu emulator line 24
@SP    // cpu emulator line 25
A=M    // cpu emulator line 26
M=D    // cpu emulator line 27
@SP    // cpu emulator line 28
M=M+1    // cpu emulator line 29
// line 10: add    // cpu emulator line 30
@SP    // cpu emulator line 30
A=M-1    // cpu emulator line 31
D=M    // cpu emulator line 32
A=A-1    // cpu emulator line 33
D=M+D    // cpu emulator line 34
@SP    // cpu emulator line 35
M=M-1    // cpu emulator line 36
M=M-1    // cpu emulator line 37
A=M    // cpu emulator line 38
M=D    // cpu emulator line 39
@SP    // cpu emulator line 40
M=M+1    // cpu emulator line 41
// line 11: not    // cpu emulator line 42
@SP    // cpu emulator line 42
A=M-1    // cpu emulator line 43
D=M    // cpu emulator line 44
D=!D    // cpu emulator line 45
M=D    // cpu emulator line 46
// line 12: push argument 0    // cpu emulator line 47
@ARG    // cpu emulator line 47
D=M    // cpu emulator line 48
@0    // cpu emulator line 49
A=D+A    // cpu emulator line 50
D=M    // cpu emulator line 51
@SP    // cpu emulator line 52
A=M    // cpu emulator line 53
M=D    // cpu emulator line 54
@SP    // cpu emulator line 55
M=M+1    // cpu emulator line 56
// line 13: add    // cpu emulator line 57
@SP    // cpu emulator line 57
A=M-1    // cpu emulator line 58
D=M    // cpu emulator line 59
A=A-1    // cpu emulator line 60
D=M+D    // cpu emulator line 61
@SP    // cpu emulator line 62
M=M-1    // cpu emulator line 63
M=M-1    // cpu emulator line 64
A=M    // cpu emulator line 65
M=D    // cpu emulator line 66
@SP    // cpu emulator line 67
M=M+1    // cpu emulator line 68
// line 14: push argument 1    // cpu emulator line 69
@ARG    // cpu emulator line 69
D=M    // cpu emulator line 70
@1    // cpu emulator line 71
A=D+A    // cpu emulator line 72
D=M    // cpu emulator line 73
@SP    // cpu emulator line 74
A=M    // cpu emulator line 75
M=D    // cpu emulator line 76
@SP    // cpu emulator line 77
M=M+1    // cpu emulator line 78
// line 15: sub    // cpu emulator line 79
@SP    // cpu emulator line 79
A=M-1    // cpu emulator line 80
D=M    // cpu emulator line 81
A=A-1    // cpu emulator line 82
D=M-D    // cpu emulator line 83
@SP    // cpu emulator line 84
M=M-1    // cpu emulator line 85
M=M-1    // cpu emulator line 86
A=M    // cpu emulator line 87
M=D    // cpu emulator line 88
@SP    // cpu emulator line 89
M=M+1    // cpu emulator line 90
// line 16: return    // cpu emulator line 91
//FRAME=R13=LCL    // cpu emulator line 91
@LCL    // cpu emulator line 91
D=M    // cpu emulator line 92
@R13    // cpu emulator line 93
M=D    // cpu emulator line 94
//R14=RET=*(FRAME-5)    // cpu emulator line 95
@R13    // cpu emulator line 95
D=M    // cpu emulator line 96
@5    // cpu emulator line 97
D=D-A    // cpu emulator line 98
@R14    // cpu emulator line 99
M=D    // cpu emulator line 100
//*arg=pop()    // cpu emulator line 101
@SP    // cpu emulator line 101
A=M-1    // cpu emulator line 102
D=M    // cpu emulator line 103
@ARG    // cpu emulator line 104
A=M    // cpu emulator line 105
M=D    // cpu emulator line 106
//SP=ARG+1    // cpu emulator line 107
@ARG    // cpu emulator line 107
D=M+1    // cpu emulator line 108
@SP    // cpu emulator line 109
M=D    // cpu emulator line 110
//THAT=*(FRAME-1)    // cpu emulator line 111
@R13    // cpu emulator line 111
A=M-1    // cpu emulator line 112
D=M    // cpu emulator line 113
@THAT    // cpu emulator line 114
M=D    // cpu emulator line 115
//THIS=*(FRAME-2)    // cpu emulator line 116
@R13    // cpu emulator line 116
D=M    // cpu emulator line 117
@2    // cpu emulator line 118
D=D-A    // cpu emulator line 119
A=D    // cpu emulator line 120
D=M    // cpu emulator line 121
@THIS    // cpu emulator line 122
M=D    // cpu emulator line 123
//ARG=*(FRAME-3)    // cpu emulator line 124
@R13    // cpu emulator line 124
D=M    // cpu emulator line 125
@3    // cpu emulator line 126
D=D-A    // cpu emulator line 127
A=D    // cpu emulator line 128
D=M    // cpu emulator line 129
@ARG    // cpu emulator line 130
M=D    // cpu emulator line 131
//LCL=*(FRAME-4)    // cpu emulator line 132
@R13    // cpu emulator line 132
D=M    // cpu emulator line 133
@4    // cpu emulator line 134
D=D-A    // cpu emulator line 135
A=D    // cpu emulator line 136
D=M    // cpu emulator line 137
@LCL    // cpu emulator line 138
M=D    // cpu emulator line 139
//goto RET    // cpu emulator line 140
@R14    // cpu emulator line 140
A=M    // cpu emulator line 141
0;JMP    // cpu emulator line 142
