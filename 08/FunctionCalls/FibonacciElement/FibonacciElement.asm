//Bootstrap code    // cpu emulator line 0
//SP=256    // cpu emulator line 0
@256    // cpu emulator line 0
D=A    // cpu emulator line 1
@SP    // cpu emulator line 2
M=D    // cpu emulator line 3
//call Sys.init    // cpu emulator line 4
@Sys.init    // cpu emulator line 4
0;JMP    // cpu emulator line 5
// line 1: // This file is part of www.nand2tetris.org    // cpu emulator line 6
// line 2: // and the book "The Elements of Computing Systems"    // cpu emulator line 6
// line 3: // by Nisan and Schocken, MIT Press.    // cpu emulator line 6
// line 4: // File name: projects/08/FunctionCalls/FibonacciElement/Main.vm    // cpu emulator line 6
// line 5:     // cpu emulator line 6
// line 6: // Computes the n'th element of the Fibonacci series, recursively.    // cpu emulator line 6
// line 7: // n is given in argument[0].  Called by the Sys.init function    // cpu emulator line 6
// line 8: // (part of the Sys.vm file), which also pushes the argument[0]    // cpu emulator line 6
// line 9: // parameter before this code starts running.    // cpu emulator line 6
// line 10:     // cpu emulator line 6
// line 11: function Main.fibonacci 0    // cpu emulator line 6
(Main$Main.fibonacci)    // cpu emulator line 6
// line 12: push argument 0    // cpu emulator line 6
@ARG    // cpu emulator line 6
D=M    // cpu emulator line 7
@0    // cpu emulator line 8
A=D+A    // cpu emulator line 9
D=M    // cpu emulator line 10
@SP    // cpu emulator line 11
A=M    // cpu emulator line 12
M=D    // cpu emulator line 13
@SP    // cpu emulator line 14
M=M+1    // cpu emulator line 15
// line 13: push constant 2    // cpu emulator line 16
@2    // cpu emulator line 16
D=A    // cpu emulator line 17
@SP    // cpu emulator line 18
A=M    // cpu emulator line 19
M=D    // cpu emulator line 20
@SP    // cpu emulator line 21
M=M+1    // cpu emulator line 22
// line 14: lt                     // checks if n<2    // cpu emulator line 23
@SP    // cpu emulator line 23
A=M-1    // cpu emulator line 24
D=M    // cpu emulator line 25
A=A-1    // cpu emulator line 26
D=D-M
@TRUE13
D;JLE
@FALSE13
D;JGT
(TRUE13)
    @SP
    AM=M-1
    A=A-1
    M=0
    @END13
    0;JMP
(FALSE13)
    @SP
    AM=M-1
    A=A-1
    M=-1
(END13)    // cpu emulator line 27
// line 15: if-goto IF_TRUE    // cpu emulator line 28
@SP    // cpu emulator line 28
AM=M-1    // cpu emulator line 29
D=M    // cpu emulator line 30
@Main$Main.fibonacci$IF_TRUE    // cpu emulator line 31
D;JNE    // cpu emulator line 32
// line 16: goto IF_FALSE    // cpu emulator line 33
@Main$Main.fibonacci$IF_FALSE    // cpu emulator line 33
0;JMP    // cpu emulator line 34
// line 17: label IF_TRUE          // if n<2, return n    // cpu emulator line 35
(Main$Main.fibonacci$IF_TRUE)    // cpu emulator line 35
// line 18: push argument 0    // cpu emulator line 35
@ARG    // cpu emulator line 35
D=M    // cpu emulator line 36
@0    // cpu emulator line 37
A=D+A    // cpu emulator line 38
D=M    // cpu emulator line 39
@SP    // cpu emulator line 40
A=M    // cpu emulator line 41
M=D    // cpu emulator line 42
@SP    // cpu emulator line 43
M=M+1    // cpu emulator line 44
// line 19: return    // cpu emulator line 45
//FRAME=R13=LCL    // cpu emulator line 45
@LCL    // cpu emulator line 45
D=M    // cpu emulator line 46
@R13    // cpu emulator line 47
M=D    // cpu emulator line 48
//R14=RET=*(FRAME-5)    // cpu emulator line 49
@R13    // cpu emulator line 49
D=M    // cpu emulator line 50
@5    // cpu emulator line 51
D=D-A    // cpu emulator line 52
@R14    // cpu emulator line 53
M=D    // cpu emulator line 54
//*arg=pop()    // cpu emulator line 55
@SP    // cpu emulator line 55
A=M-1    // cpu emulator line 56
D=M    // cpu emulator line 57
@ARG    // cpu emulator line 58
A=M    // cpu emulator line 59
M=D    // cpu emulator line 60
//SP=ARG+1    // cpu emulator line 61
@ARG    // cpu emulator line 61
D=M+1    // cpu emulator line 62
@SP    // cpu emulator line 63
M=D    // cpu emulator line 64
//THAT=*(FRAME-1)    // cpu emulator line 65
@R13    // cpu emulator line 65
A=M-1    // cpu emulator line 66
D=M    // cpu emulator line 67
@THAT    // cpu emulator line 68
M=D    // cpu emulator line 69
//THIS=*(FRAME-2)    // cpu emulator line 70
@R13    // cpu emulator line 70
D=M    // cpu emulator line 71
@2    // cpu emulator line 72
D=D-A    // cpu emulator line 73
A=D    // cpu emulator line 74
D=M    // cpu emulator line 75
@THIS    // cpu emulator line 76
M=D    // cpu emulator line 77
//ARG=*(FRAME-3)    // cpu emulator line 78
@R13    // cpu emulator line 78
D=M    // cpu emulator line 79
@3    // cpu emulator line 80
D=D-A    // cpu emulator line 81
A=D    // cpu emulator line 82
D=M    // cpu emulator line 83
@ARG    // cpu emulator line 84
M=D    // cpu emulator line 85
//LCL=*(FRAME-4)    // cpu emulator line 86
@R13    // cpu emulator line 86
D=M    // cpu emulator line 87
@4    // cpu emulator line 88
D=D-A    // cpu emulator line 89
A=D    // cpu emulator line 90
D=M    // cpu emulator line 91
@LCL    // cpu emulator line 92
M=D    // cpu emulator line 93
//goto RET    // cpu emulator line 94
@R14    // cpu emulator line 94
A=M    // cpu emulator line 95
0;JMP    // cpu emulator line 96
// line 20: label IF_FALSE         // if n>=2, returns fib(n-2)+fib(n-1)    // cpu emulator line 97
(Main$Main.fibonacci$IF_FALSE)    // cpu emulator line 97
// line 21: push argument 0    // cpu emulator line 97
@ARG    // cpu emulator line 97
D=M    // cpu emulator line 98
@0    // cpu emulator line 99
A=D+A    // cpu emulator line 100
D=M    // cpu emulator line 101
@SP    // cpu emulator line 102
A=M    // cpu emulator line 103
M=D    // cpu emulator line 104
@SP    // cpu emulator line 105
M=M+1    // cpu emulator line 106
// line 22: push constant 2    // cpu emulator line 107
@2    // cpu emulator line 107
D=A    // cpu emulator line 108
@SP    // cpu emulator line 109
A=M    // cpu emulator line 110
M=D    // cpu emulator line 111
@SP    // cpu emulator line 112
M=M+1    // cpu emulator line 113
// line 23: sub    // cpu emulator line 114
@SP    // cpu emulator line 114
A=M-1    // cpu emulator line 115
D=M    // cpu emulator line 116
A=A-1    // cpu emulator line 117
D=M-D    // cpu emulator line 118
@SP    // cpu emulator line 119
M=M-1    // cpu emulator line 120
M=M-1    // cpu emulator line 121
A=M    // cpu emulator line 122
M=D    // cpu emulator line 123
@SP    // cpu emulator line 124
M=M+1    // cpu emulator line 125
// line 24: call Main.fibonacci 1  // computes fib(n-2)    // cpu emulator line 126
//push return-address    // cpu emulator line 126
@Main$Main.fibonacci$return-address    // cpu emulator line 126
D=A    // cpu emulator line 127
@SP    // cpu emulator line 128
A=M    // cpu emulator line 129
M=D    // cpu emulator line 130
@SP    // cpu emulator line 131
M=M+1    // cpu emulator line 132
//push LCL    // cpu emulator line 133
@LCL    // cpu emulator line 133
D=M    // cpu emulator line 134
@SP    // cpu emulator line 135
A=M    // cpu emulator line 136
M=D    // cpu emulator line 137
@SP    // cpu emulator line 138
M=M+1    // cpu emulator line 139
//push ARG    // cpu emulator line 140
@ARG    // cpu emulator line 140
D=M    // cpu emulator line 141
@SP    // cpu emulator line 142
A=M    // cpu emulator line 143
M=D    // cpu emulator line 144
@SP    // cpu emulator line 145
M=M+1    // cpu emulator line 146
//push THIS    // cpu emulator line 147
@THIS    // cpu emulator line 147
D=M    // cpu emulator line 148
@SP    // cpu emulator line 149
A=M    // cpu emulator line 150
M=D    // cpu emulator line 151
@SP    // cpu emulator line 152
M=M+1    // cpu emulator line 153
//push THAT    // cpu emulator line 154
@THAT    // cpu emulator line 154
D=M    // cpu emulator line 155
@SP    // cpu emulator line 156
A=M    // cpu emulator line 157
M=D    // cpu emulator line 158
@SP    // cpu emulator line 159
M=M+1    // cpu emulator line 160
//ARG = SP-n-5    // cpu emulator line 161
@SP    // cpu emulator line 161
D=M    // cpu emulator line 162
@1    // cpu emulator line 163
D=D-A    // cpu emulator line 164
@5    // cpu emulator line 165
D=D-A    // cpu emulator line 166
@ARG    // cpu emulator line 167
M=D    // cpu emulator line 168
//LCL = SP    // cpu emulator line 169
@SP    // cpu emulator line 169
D=M    // cpu emulator line 170
@LCL    // cpu emulator line 171
M=D    // cpu emulator line 172
//goto f    // cpu emulator line 173
@Main$Main.fibonacci    // cpu emulator line 173
0;JMP    // cpu emulator line 174
//(return-address)    // cpu emulator line 175
(Main$Main.fibonacci$return-address)    // cpu emulator line 175
// line 25: push argument 0    // cpu emulator line 175
@ARG    // cpu emulator line 175
D=M    // cpu emulator line 176
@0    // cpu emulator line 177
A=D+A    // cpu emulator line 178
D=M    // cpu emulator line 179
@SP    // cpu emulator line 180
A=M    // cpu emulator line 181
M=D    // cpu emulator line 182
@SP    // cpu emulator line 183
M=M+1    // cpu emulator line 184
// line 26: push constant 1    // cpu emulator line 185
@1    // cpu emulator line 185
D=A    // cpu emulator line 186
@SP    // cpu emulator line 187
A=M    // cpu emulator line 188
M=D    // cpu emulator line 189
@SP    // cpu emulator line 190
M=M+1    // cpu emulator line 191
// line 27: sub    // cpu emulator line 192
@SP    // cpu emulator line 192
A=M-1    // cpu emulator line 193
D=M    // cpu emulator line 194
A=A-1    // cpu emulator line 195
D=M-D    // cpu emulator line 196
@SP    // cpu emulator line 197
M=M-1    // cpu emulator line 198
M=M-1    // cpu emulator line 199
A=M    // cpu emulator line 200
M=D    // cpu emulator line 201
@SP    // cpu emulator line 202
M=M+1    // cpu emulator line 203
// line 28: call Main.fibonacci 1  // computes fib(n-1)    // cpu emulator line 204
//push return-address    // cpu emulator line 204
@Main$Main.fibonacci$return-address    // cpu emulator line 204
D=A    // cpu emulator line 205
@SP    // cpu emulator line 206
A=M    // cpu emulator line 207
M=D    // cpu emulator line 208
@SP    // cpu emulator line 209
M=M+1    // cpu emulator line 210
//push LCL    // cpu emulator line 211
@LCL    // cpu emulator line 211
D=M    // cpu emulator line 212
@SP    // cpu emulator line 213
A=M    // cpu emulator line 214
M=D    // cpu emulator line 215
@SP    // cpu emulator line 216
M=M+1    // cpu emulator line 217
//push ARG    // cpu emulator line 218
@ARG    // cpu emulator line 218
D=M    // cpu emulator line 219
@SP    // cpu emulator line 220
A=M    // cpu emulator line 221
M=D    // cpu emulator line 222
@SP    // cpu emulator line 223
M=M+1    // cpu emulator line 224
//push THIS    // cpu emulator line 225
@THIS    // cpu emulator line 225
D=M    // cpu emulator line 226
@SP    // cpu emulator line 227
A=M    // cpu emulator line 228
M=D    // cpu emulator line 229
@SP    // cpu emulator line 230
M=M+1    // cpu emulator line 231
//push THAT    // cpu emulator line 232
@THAT    // cpu emulator line 232
D=M    // cpu emulator line 233
@SP    // cpu emulator line 234
A=M    // cpu emulator line 235
M=D    // cpu emulator line 236
@SP    // cpu emulator line 237
M=M+1    // cpu emulator line 238
//ARG = SP-n-5    // cpu emulator line 239
@SP    // cpu emulator line 239
D=M    // cpu emulator line 240
@1    // cpu emulator line 241
D=D-A    // cpu emulator line 242
@5    // cpu emulator line 243
D=D-A    // cpu emulator line 244
@ARG    // cpu emulator line 245
M=D    // cpu emulator line 246
//LCL = SP    // cpu emulator line 247
@SP    // cpu emulator line 247
D=M    // cpu emulator line 248
@LCL    // cpu emulator line 249
M=D    // cpu emulator line 250
//goto f    // cpu emulator line 251
@Main$Main.fibonacci    // cpu emulator line 251
0;JMP    // cpu emulator line 252
//(return-address)    // cpu emulator line 253
(Main$Main.fibonacci$return-address)    // cpu emulator line 253
// line 29: add                    // returns fib(n-1) + fib(n-2)    // cpu emulator line 253
@SP    // cpu emulator line 253
A=M-1    // cpu emulator line 254
D=M    // cpu emulator line 255
A=A-1    // cpu emulator line 256
D=M+D    // cpu emulator line 257
@SP    // cpu emulator line 258
M=M-1    // cpu emulator line 259
M=M-1    // cpu emulator line 260
A=M    // cpu emulator line 261
M=D    // cpu emulator line 262
@SP    // cpu emulator line 263
M=M+1    // cpu emulator line 264
// line 30: return    // cpu emulator line 265
//FRAME=R13=LCL    // cpu emulator line 265
@LCL    // cpu emulator line 265
D=M    // cpu emulator line 266
@R13    // cpu emulator line 267
M=D    // cpu emulator line 268
//R14=RET=*(FRAME-5)    // cpu emulator line 269
@R13    // cpu emulator line 269
D=M    // cpu emulator line 270
@5    // cpu emulator line 271
D=D-A    // cpu emulator line 272
@R14    // cpu emulator line 273
M=D    // cpu emulator line 274
//*arg=pop()    // cpu emulator line 275
@SP    // cpu emulator line 275
A=M-1    // cpu emulator line 276
D=M    // cpu emulator line 277
@ARG    // cpu emulator line 278
A=M    // cpu emulator line 279
M=D    // cpu emulator line 280
//SP=ARG+1    // cpu emulator line 281
@ARG    // cpu emulator line 281
D=M+1    // cpu emulator line 282
@SP    // cpu emulator line 283
M=D    // cpu emulator line 284
//THAT=*(FRAME-1)    // cpu emulator line 285
@R13    // cpu emulator line 285
A=M-1    // cpu emulator line 286
D=M    // cpu emulator line 287
@THAT    // cpu emulator line 288
M=D    // cpu emulator line 289
//THIS=*(FRAME-2)    // cpu emulator line 290
@R13    // cpu emulator line 290
D=M    // cpu emulator line 291
@2    // cpu emulator line 292
D=D-A    // cpu emulator line 293
A=D    // cpu emulator line 294
D=M    // cpu emulator line 295
@THIS    // cpu emulator line 296
M=D    // cpu emulator line 297
//ARG=*(FRAME-3)    // cpu emulator line 298
@R13    // cpu emulator line 298
D=M    // cpu emulator line 299
@3    // cpu emulator line 300
D=D-A    // cpu emulator line 301
A=D    // cpu emulator line 302
D=M    // cpu emulator line 303
@ARG    // cpu emulator line 304
M=D    // cpu emulator line 305
//LCL=*(FRAME-4)    // cpu emulator line 306
@R13    // cpu emulator line 306
D=M    // cpu emulator line 307
@4    // cpu emulator line 308
D=D-A    // cpu emulator line 309
A=D    // cpu emulator line 310
D=M    // cpu emulator line 311
@LCL    // cpu emulator line 312
M=D    // cpu emulator line 313
//goto RET    // cpu emulator line 314
@R14    // cpu emulator line 314
A=M    // cpu emulator line 315
0;JMP    // cpu emulator line 316
//Bootstrap code    // cpu emulator line 317
//SP=256    // cpu emulator line 317
@256    // cpu emulator line 317
D=A    // cpu emulator line 318
@SP    // cpu emulator line 319
M=D    // cpu emulator line 320
//call Sys.init    // cpu emulator line 321
@Sys.init    // cpu emulator line 321
0;JMP    // cpu emulator line 322
// line 1: // This file is part of www.nand2tetris.org    // cpu emulator line 323
// line 2: // and the book "The Elements of Computing Systems"    // cpu emulator line 323
// line 3: // by Nisan and Schocken, MIT Press.    // cpu emulator line 323
// line 4: // File name: projects/08/FunctionCalls/FibonacciElement/Sys.vm    // cpu emulator line 323
// line 5:     // cpu emulator line 323
// line 6: // Pushes a constant, say n, onto the stack, and calls the Main.fibonacii    // cpu emulator line 323
// line 7: // function, which computes the n'th element of the Fibonacci series.    // cpu emulator line 323
// line 8: // Note that by convention, the Sys.init function is called "automatically"    // cpu emulator line 323
// line 9: // by the bootstrap code.    // cpu emulator line 323
// line 10:     // cpu emulator line 323
// line 11: function Sys.init 0    // cpu emulator line 323
(Sys$Sys.init)    // cpu emulator line 323
// line 12: push constant 4    // cpu emulator line 323
@4    // cpu emulator line 323
D=A    // cpu emulator line 324
@SP    // cpu emulator line 325
A=M    // cpu emulator line 326
M=D    // cpu emulator line 327
@SP    // cpu emulator line 328
M=M+1    // cpu emulator line 329
// line 13: call Main.fibonacci 1   // computes the 4'th fibonacci element    // cpu emulator line 330
//push return-address    // cpu emulator line 330
@Sys$Main.fibonacci$return-address    // cpu emulator line 330
D=A    // cpu emulator line 331
@SP    // cpu emulator line 332
A=M    // cpu emulator line 333
M=D    // cpu emulator line 334
@SP    // cpu emulator line 335
M=M+1    // cpu emulator line 336
//push LCL    // cpu emulator line 337
@LCL    // cpu emulator line 337
D=M    // cpu emulator line 338
@SP    // cpu emulator line 339
A=M    // cpu emulator line 340
M=D    // cpu emulator line 341
@SP    // cpu emulator line 342
M=M+1    // cpu emulator line 343
//push ARG    // cpu emulator line 344
@ARG    // cpu emulator line 344
D=M    // cpu emulator line 345
@SP    // cpu emulator line 346
A=M    // cpu emulator line 347
M=D    // cpu emulator line 348
@SP    // cpu emulator line 349
M=M+1    // cpu emulator line 350
//push THIS    // cpu emulator line 351
@THIS    // cpu emulator line 351
D=M    // cpu emulator line 352
@SP    // cpu emulator line 353
A=M    // cpu emulator line 354
M=D    // cpu emulator line 355
@SP    // cpu emulator line 356
M=M+1    // cpu emulator line 357
//push THAT    // cpu emulator line 358
@THAT    // cpu emulator line 358
D=M    // cpu emulator line 359
@SP    // cpu emulator line 360
A=M    // cpu emulator line 361
M=D    // cpu emulator line 362
@SP    // cpu emulator line 363
M=M+1    // cpu emulator line 364
//ARG = SP-n-5    // cpu emulator line 365
@SP    // cpu emulator line 365
D=M    // cpu emulator line 366
@1    // cpu emulator line 367
D=D-A    // cpu emulator line 368
@5    // cpu emulator line 369
D=D-A    // cpu emulator line 370
@ARG    // cpu emulator line 371
M=D    // cpu emulator line 372
//LCL = SP    // cpu emulator line 373
@SP    // cpu emulator line 373
D=M    // cpu emulator line 374
@LCL    // cpu emulator line 375
M=D    // cpu emulator line 376
//goto f    // cpu emulator line 377
@Sys$Main.fibonacci    // cpu emulator line 377
0;JMP    // cpu emulator line 378
//(return-address)    // cpu emulator line 379
(Sys$Main.fibonacci$return-address)    // cpu emulator line 379
// line 14: label WHILE    // cpu emulator line 379
(Sys$Main.fibonacci$WHILE)    // cpu emulator line 379
// line 15: goto WHILE              // loops infinitely    // cpu emulator line 379
@Sys$Main.fibonacci$WHILE    // cpu emulator line 379
0;JMP    // cpu emulator line 380
