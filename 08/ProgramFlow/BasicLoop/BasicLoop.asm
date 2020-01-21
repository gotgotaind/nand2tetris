// BasicLoop.vm:1: // This file is part of www.nand2tetris.org    // cpu emulator line 0
// BasicLoop.vm:2: // and the book "The Elements of Computing Systems"    // cpu emulator line 0
// BasicLoop.vm:3: // by Nisan and Schocken, MIT Press.    // cpu emulator line 0
// BasicLoop.vm:4: // File name: projects/08/ProgramFlow/BasicLoop/BasicLoop.vm    // cpu emulator line 0
// BasicLoop.vm:5:     // cpu emulator line 0
// BasicLoop.vm:6: // Computes the sum 1 + 2 + ... + argument[0] and pushes the    // cpu emulator line 0
// BasicLoop.vm:7: // result onto the stack. Argument[0] is initialized by the test    // cpu emulator line 0
// BasicLoop.vm:8: // script before this code starts running.    // cpu emulator line 0
// BasicLoop.vm:9: push constant 0    // cpu emulator line 0
@0    // cpu emulator line 0
D=A    // cpu emulator line 1
@SP    // cpu emulator line 2
A=M    // cpu emulator line 3
M=D    // cpu emulator line 4
@SP    // cpu emulator line 5
M=M+1    // cpu emulator line 6
// BasicLoop.vm:10: pop local 0         // initializes sum = 0    // cpu emulator line 7
    // cpu emulator line 7
@LCL    // cpu emulator line 8
D=M    // cpu emulator line 9
@0    // cpu emulator line 10
D=D+A // D is now @segment+value    // cpu emulator line 11
@SP    // cpu emulator line 12
A=M-1    // cpu emulator line 13
A=M // A has now the value of memory at mem(SP-1)    // cpu emulator line 14
D=D+A // this is to swap A and D    // cpu emulator line 15
A=D-A    // cpu emulator line 16
D=D-A // A and D are now swapped    // cpu emulator line 17
M=D    // cpu emulator line 18
@SP // this just decrements SP    // cpu emulator line 19
M=M-1    // cpu emulator line 20
// BasicLoop.vm:11: label LOOP_START    // cpu emulator line 21
($$LOOP_START)    // cpu emulator line 21
// BasicLoop.vm:12: push argument 0    // cpu emulator line 21
@ARG    // cpu emulator line 21
D=M    // cpu emulator line 22
@0    // cpu emulator line 23
A=D+A    // cpu emulator line 24
D=M    // cpu emulator line 25
@SP    // cpu emulator line 26
A=M    // cpu emulator line 27
M=D    // cpu emulator line 28
@SP    // cpu emulator line 29
M=M+1    // cpu emulator line 30
// BasicLoop.vm:13: push local 0    // cpu emulator line 31
@LCL    // cpu emulator line 31
D=M    // cpu emulator line 32
@0    // cpu emulator line 33
A=D+A    // cpu emulator line 34
D=M    // cpu emulator line 35
@SP    // cpu emulator line 36
A=M    // cpu emulator line 37
M=D    // cpu emulator line 38
@SP    // cpu emulator line 39
M=M+1    // cpu emulator line 40
// BasicLoop.vm:14: add    // cpu emulator line 41
@SP    // cpu emulator line 41
A=M-1    // cpu emulator line 42
D=M    // cpu emulator line 43
A=A-1    // cpu emulator line 44
D=M+D    // cpu emulator line 45
@SP    // cpu emulator line 46
M=M-1    // cpu emulator line 47
M=M-1    // cpu emulator line 48
A=M    // cpu emulator line 49
M=D    // cpu emulator line 50
@SP    // cpu emulator line 51
M=M+1    // cpu emulator line 52
// BasicLoop.vm:15: pop local 0	        // sum = sum + counter    // cpu emulator line 53
    // cpu emulator line 53
@LCL    // cpu emulator line 54
D=M    // cpu emulator line 55
@0    // cpu emulator line 56
D=D+A // D is now @segment+value    // cpu emulator line 57
@SP    // cpu emulator line 58
A=M-1    // cpu emulator line 59
A=M // A has now the value of memory at mem(SP-1)    // cpu emulator line 60
D=D+A // this is to swap A and D    // cpu emulator line 61
A=D-A    // cpu emulator line 62
D=D-A // A and D are now swapped    // cpu emulator line 63
M=D    // cpu emulator line 64
@SP // this just decrements SP    // cpu emulator line 65
M=M-1    // cpu emulator line 66
// BasicLoop.vm:16: push argument 0    // cpu emulator line 67
@ARG    // cpu emulator line 67
D=M    // cpu emulator line 68
@0    // cpu emulator line 69
A=D+A    // cpu emulator line 70
D=M    // cpu emulator line 71
@SP    // cpu emulator line 72
A=M    // cpu emulator line 73
M=D    // cpu emulator line 74
@SP    // cpu emulator line 75
M=M+1    // cpu emulator line 76
// BasicLoop.vm:17: push constant 1    // cpu emulator line 77
@1    // cpu emulator line 77
D=A    // cpu emulator line 78
@SP    // cpu emulator line 79
A=M    // cpu emulator line 80
M=D    // cpu emulator line 81
@SP    // cpu emulator line 82
M=M+1    // cpu emulator line 83
// BasicLoop.vm:18: sub    // cpu emulator line 84
@SP    // cpu emulator line 84
A=M-1    // cpu emulator line 85
D=M    // cpu emulator line 86
A=A-1    // cpu emulator line 87
D=M-D    // cpu emulator line 88
@SP    // cpu emulator line 89
M=M-1    // cpu emulator line 90
M=M-1    // cpu emulator line 91
A=M    // cpu emulator line 92
M=D    // cpu emulator line 93
@SP    // cpu emulator line 94
M=M+1    // cpu emulator line 95
// BasicLoop.vm:19: pop argument 0      // counter--    // cpu emulator line 96
    // cpu emulator line 96
@ARG    // cpu emulator line 97
D=M    // cpu emulator line 98
@0    // cpu emulator line 99
D=D+A // D is now @segment+value    // cpu emulator line 100
@SP    // cpu emulator line 101
A=M-1    // cpu emulator line 102
A=M // A has now the value of memory at mem(SP-1)    // cpu emulator line 103
D=D+A // this is to swap A and D    // cpu emulator line 104
A=D-A    // cpu emulator line 105
D=D-A // A and D are now swapped    // cpu emulator line 106
M=D    // cpu emulator line 107
@SP // this just decrements SP    // cpu emulator line 108
M=M-1    // cpu emulator line 109
// BasicLoop.vm:20: push argument 0    // cpu emulator line 110
@ARG    // cpu emulator line 110
D=M    // cpu emulator line 111
@0    // cpu emulator line 112
A=D+A    // cpu emulator line 113
D=M    // cpu emulator line 114
@SP    // cpu emulator line 115
A=M    // cpu emulator line 116
M=D    // cpu emulator line 117
@SP    // cpu emulator line 118
M=M+1    // cpu emulator line 119
// BasicLoop.vm:21: if-goto LOOP_START  // If counter > 0, goto LOOP_START    // cpu emulator line 120
@SP    // cpu emulator line 120
AM=M-1    // cpu emulator line 121
D=M    // cpu emulator line 122
@$$LOOP_START    // cpu emulator line 123
D;JNE    // cpu emulator line 124
// BasicLoop.vm:22: push local 0    // cpu emulator line 125
@LCL    // cpu emulator line 125
D=M    // cpu emulator line 126
@0    // cpu emulator line 127
A=D+A    // cpu emulator line 128
D=M    // cpu emulator line 129
@SP    // cpu emulator line 130
A=M    // cpu emulator line 131
M=D    // cpu emulator line 132
@SP    // cpu emulator line 133
M=M+1    // cpu emulator line 134
