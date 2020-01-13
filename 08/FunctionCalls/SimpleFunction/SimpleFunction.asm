// line 1: // This file is part of www.nand2tetris.org    //0
// line 2: // and the book "The Elements of Computing Systems"    //0
// line 3: // by Nisan and Schocken, MIT Press.    //0
// line 4: // File name: projects/08/FunctionCalls/SimpleFunction/SimpleFunction.vm    //0
// line 5:     //0
// line 6: // Performs a simple calculation and returns the result.    //0
// line 7: function SimpleFunction.test 2    //0
(SimpleFunction$SimpleFunction.test)    //0
@SP    //0
A=M    //1
M=0    //2
@SP    //3
M=M+1    //4
@SP    //5
A=M    //6
M=0    //7
@SP    //8
M=M+1    //9
// line 8: push local 0    //10
@LCL    //10
D=M    //11
@0    //12
A=D+A    //13
D=M    //14
@SP    //15
A=M    //16
M=D    //17
@SP    //18
M=M+1    //19
// line 9: push local 1    //20
@LCL    //20
D=M    //21
@1    //22
A=D+A    //23
D=M    //24
@SP    //25
A=M    //26
M=D    //27
@SP    //28
M=M+1    //29
// line 10: add    //30
@SP    //30
A=M-1    //31
D=M    //32
A=A-1    //33
D=M+D    //34
@SP    //35
M=M-1    //36
M=M-1    //37
A=M    //38
M=D    //39
@SP    //40
M=M+1    //41
// line 11: not    //42
@SP    //42
A=M-1    //43
D=M    //44
D=!D    //45
M=D    //46
// line 12: push argument 0    //47
@ARG    //47
D=M    //48
@0    //49
A=D+A    //50
D=M    //51
@SP    //52
A=M    //53
M=D    //54
@SP    //55
M=M+1    //56
// line 13: add    //57
@SP    //57
A=M-1    //58
D=M    //59
A=A-1    //60
D=M+D    //61
@SP    //62
M=M-1    //63
M=M-1    //64
A=M    //65
M=D    //66
@SP    //67
M=M+1    //68
// line 14: push argument 1    //69
@ARG    //69
D=M    //70
@1    //71
A=D+A    //72
D=M    //73
@SP    //74
A=M    //75
M=D    //76
@SP    //77
M=M+1    //78
// line 15: sub    //79
@SP    //79
A=M-1    //80
D=M    //81
A=A-1    //82
D=M-D    //83
@SP    //84
M=M-1    //85
M=M-1    //86
A=M    //87
M=D    //88
@SP    //89
M=M+1    //90
// line 16: return    //91
//FRAME=R13=LCL    //91
@LCL    //91
D=M    //92
@R13    //93
M=D    //94
//R14=RET=*(FRAME-5)    //95
@R13    //95
D=M    //96
@5    //97
D=D-A    //98
@R14    //99
M=D    //100
//*arg=pop()    //101
@SP    //101
A=M-1    //102
D=M    //103
@ARG    //104
A=M    //105
M=D    //106
//SP=ARG+1    //107
@ARG    //107
D=M+1    //108
@SP    //109
M=D    //110
//THAT=*(FRAME-1)    //111
@R13    //111
A=M-1    //112
D=M    //113
@THAT    //114
M=D    //115
//THIS=*(FRAME-2)    //116
@R13    //116
D=M    //117
@2    //118
D=D-A    //119
A=D    //120
D=M    //121
@THIS    //122
M=D    //123
//ARG=*(FRAME-3)    //124
@R13    //124
D=M    //125
@3    //126
D=D-A    //127
A=D    //128
D=M    //129
@ARG    //130
M=D    //131
//LCL=*(FRAME-4)    //132
@R13    //132
D=M    //133
@4    //134
D=D-A    //135
A=D    //136
D=M    //137
@LCL    //138
M=D    //139
//goto RET    //140
@R14    //140
A=M    //141
0;JMP    //142
