//Bootstrap code    // cpu emulator line 0
//SP=256    // cpu emulator line 0
@256    // cpu emulator line 0
D=A    // cpu emulator line 1
@SP    // cpu emulator line 2
M=D    // cpu emulator line 3
//call Sys.init    // cpu emulator line 4
//push return-address    // cpu emulator line 4
@Main.vm:1$Sys.init$return-address    // cpu emulator line 4
D=A    // cpu emulator line 5
@SP    // cpu emulator line 6
A=M    // cpu emulator line 7
M=D    // cpu emulator line 8
@SP    // cpu emulator line 9
M=M+1    // cpu emulator line 10
//push LCL    // cpu emulator line 11
@LCL    // cpu emulator line 11
D=M    // cpu emulator line 12
@SP    // cpu emulator line 13
A=M    // cpu emulator line 14
M=D    // cpu emulator line 15
@SP    // cpu emulator line 16
M=M+1    // cpu emulator line 17
//push ARG    // cpu emulator line 18
@ARG    // cpu emulator line 18
D=M    // cpu emulator line 19
@SP    // cpu emulator line 20
A=M    // cpu emulator line 21
M=D    // cpu emulator line 22
@SP    // cpu emulator line 23
M=M+1    // cpu emulator line 24
//push THIS    // cpu emulator line 25
@THIS    // cpu emulator line 25
D=M    // cpu emulator line 26
@SP    // cpu emulator line 27
A=M    // cpu emulator line 28
M=D    // cpu emulator line 29
@SP    // cpu emulator line 30
M=M+1    // cpu emulator line 31
//push THAT    // cpu emulator line 32
@THAT    // cpu emulator line 32
D=M    // cpu emulator line 33
@SP    // cpu emulator line 34
A=M    // cpu emulator line 35
M=D    // cpu emulator line 36
@SP    // cpu emulator line 37
M=M+1    // cpu emulator line 38
//ARG = SP-n-5    // cpu emulator line 39
@SP    // cpu emulator line 39
D=M    // cpu emulator line 40
@0    // cpu emulator line 41
D=D-A    // cpu emulator line 42
@5    // cpu emulator line 43
D=D-A    // cpu emulator line 44
@ARG    // cpu emulator line 45
M=D    // cpu emulator line 46
//LCL = SP    // cpu emulator line 47
@SP    // cpu emulator line 47
D=M    // cpu emulator line 48
@LCL    // cpu emulator line 49
M=D    // cpu emulator line 50
//goto f    // cpu emulator line 51
@$Sys.init    // cpu emulator line 51
0;JMP    // cpu emulator line 52
//(return-address)    // cpu emulator line 53
(Main.vm:1$Sys.init$return-address)    // cpu emulator line 53
// Main.vm:1: // This file is part of www.nand2tetris.org    // cpu emulator line 53
// Main.vm:2: // and the book "The Elements of Computing Systems"    // cpu emulator line 53
// Main.vm:3: // by Nisan and Schocken, MIT Press.    // cpu emulator line 53
// Main.vm:4: // File name: projects/08/FunctionCalls/FibonacciElement/Main.vm    // cpu emulator line 53
// Main.vm:5:     // cpu emulator line 53
// Main.vm:6: // Computes the n'th element of the Fibonacci series, recursively.    // cpu emulator line 53
// Main.vm:7: // n is given in argument[0].  Called by the Sys.init function    // cpu emulator line 53
// Main.vm:8: // (part of the Sys.vm file), which also pushes the argument[0]    // cpu emulator line 53
// Main.vm:9: // parameter before this code starts running.    // cpu emulator line 53
// Main.vm:10:     // cpu emulator line 53
// Main.vm:11: function Main.fibonacci 0    // cpu emulator line 53
($Main.fibonacci)    // cpu emulator line 53
// Main.vm:12: push argument 0    // cpu emulator line 53
@ARG    // cpu emulator line 53
D=M    // cpu emulator line 54
@0    // cpu emulator line 55
A=D+A    // cpu emulator line 56
D=M    // cpu emulator line 57
@SP    // cpu emulator line 58
A=M    // cpu emulator line 59
M=D    // cpu emulator line 60
@SP    // cpu emulator line 61
M=M+1    // cpu emulator line 62
// Main.vm:13: push constant 2    // cpu emulator line 63
@2    // cpu emulator line 63
D=A    // cpu emulator line 64
@SP    // cpu emulator line 65
A=M    // cpu emulator line 66
M=D    // cpu emulator line 67
@SP    // cpu emulator line 68
M=M+1    // cpu emulator line 69
// Main.vm:14: lt                     // checks if n<2    // cpu emulator line 70
@SP    // cpu emulator line 70
A=M-1    // cpu emulator line 71
D=M    // cpu emulator line 72
A=A-1    // cpu emulator line 73
D=D-M    // cpu emulator line 74
@TRUE13    // cpu emulator line 75
D;JLE    // cpu emulator line 76
@FALSE13    // cpu emulator line 77
D;JGT    // cpu emulator line 78
(TRUE13)    // cpu emulator line 79
    @SP    // cpu emulator line 79
    AM=M-1    // cpu emulator line 80
    A=A-1    // cpu emulator line 81
    M=0    // cpu emulator line 82
    @END13    // cpu emulator line 83
    0;JMP    // cpu emulator line 84
(FALSE13)    // cpu emulator line 85
    @SP    // cpu emulator line 85
    AM=M-1    // cpu emulator line 86
    A=A-1    // cpu emulator line 87
    M=-1    // cpu emulator line 88
(END13)    // cpu emulator line 89
// Main.vm:15: if-goto IF_TRUE    // cpu emulator line 89
@SP    // cpu emulator line 89
AM=M-1    // cpu emulator line 90
D=M    // cpu emulator line 91
@$Main.fibonacci$IF_TRUE    // cpu emulator line 92
D;JNE    // cpu emulator line 93
// Main.vm:16: goto IF_FALSE    // cpu emulator line 94
@$Main.fibonacci$IF_FALSE    // cpu emulator line 94
0;JMP    // cpu emulator line 95
// Main.vm:17: label IF_TRUE          // if n<2, return n    // cpu emulator line 96
($Main.fibonacci$IF_TRUE)    // cpu emulator line 96
// Main.vm:18: push argument 0    // cpu emulator line 96
@ARG    // cpu emulator line 96
D=M    // cpu emulator line 97
@0    // cpu emulator line 98
A=D+A    // cpu emulator line 99
D=M    // cpu emulator line 100
@SP    // cpu emulator line 101
A=M    // cpu emulator line 102
M=D    // cpu emulator line 103
@SP    // cpu emulator line 104
M=M+1    // cpu emulator line 105
// Main.vm:19: return    // cpu emulator line 106
//FRAME=R13=LCL    // cpu emulator line 106
@LCL    // cpu emulator line 106
D=M    // cpu emulator line 107
@R13    // cpu emulator line 108
M=D    // cpu emulator line 109
//R14=RET=*(FRAME-5)    // cpu emulator line 110
@R13    // cpu emulator line 110
D=M    // cpu emulator line 111
@5    // cpu emulator line 112
A=D-A    // cpu emulator line 113
D=M    // cpu emulator line 114
@R14    // cpu emulator line 115
M=D    // cpu emulator line 116
//*arg=pop()    // cpu emulator line 117
@SP    // cpu emulator line 117
A=M-1    // cpu emulator line 118
D=M    // cpu emulator line 119
@ARG    // cpu emulator line 120
A=M    // cpu emulator line 121
M=D    // cpu emulator line 122
//SP=ARG+1    // cpu emulator line 123
@ARG    // cpu emulator line 123
D=M+1    // cpu emulator line 124
@SP    // cpu emulator line 125
M=D    // cpu emulator line 126
//THAT=*(FRAME-1)    // cpu emulator line 127
@R13    // cpu emulator line 127
A=M-1    // cpu emulator line 128
D=M    // cpu emulator line 129
@THAT    // cpu emulator line 130
M=D    // cpu emulator line 131
//THIS=*(FRAME-2)    // cpu emulator line 132
@R13    // cpu emulator line 132
D=M    // cpu emulator line 133
@2    // cpu emulator line 134
D=D-A    // cpu emulator line 135
A=D    // cpu emulator line 136
D=M    // cpu emulator line 137
@THIS    // cpu emulator line 138
M=D    // cpu emulator line 139
//ARG=*(FRAME-3)    // cpu emulator line 140
@R13    // cpu emulator line 140
D=M    // cpu emulator line 141
@3    // cpu emulator line 142
D=D-A    // cpu emulator line 143
A=D    // cpu emulator line 144
D=M    // cpu emulator line 145
@ARG    // cpu emulator line 146
M=D    // cpu emulator line 147
//LCL=*(FRAME-4)    // cpu emulator line 148
@R13    // cpu emulator line 148
D=M    // cpu emulator line 149
@4    // cpu emulator line 150
D=D-A    // cpu emulator line 151
A=D    // cpu emulator line 152
D=M    // cpu emulator line 153
@LCL    // cpu emulator line 154
M=D    // cpu emulator line 155
//goto RET    // cpu emulator line 156
@R14    // cpu emulator line 156
A=M    // cpu emulator line 157
0;JMP    // cpu emulator line 158
// Main.vm:20: label IF_FALSE         // if n>=2, returns fib(n-2)+fib(n-1)    // cpu emulator line 159
($Main.fibonacci$IF_FALSE)    // cpu emulator line 159
// Main.vm:21: push argument 0    // cpu emulator line 159
@ARG    // cpu emulator line 159
D=M    // cpu emulator line 160
@0    // cpu emulator line 161
A=D+A    // cpu emulator line 162
D=M    // cpu emulator line 163
@SP    // cpu emulator line 164
A=M    // cpu emulator line 165
M=D    // cpu emulator line 166
@SP    // cpu emulator line 167
M=M+1    // cpu emulator line 168
// Main.vm:22: push constant 2    // cpu emulator line 169
@2    // cpu emulator line 169
D=A    // cpu emulator line 170
@SP    // cpu emulator line 171
A=M    // cpu emulator line 172
M=D    // cpu emulator line 173
@SP    // cpu emulator line 174
M=M+1    // cpu emulator line 175
// Main.vm:23: sub    // cpu emulator line 176
@SP    // cpu emulator line 176
A=M-1    // cpu emulator line 177
D=M    // cpu emulator line 178
A=A-1    // cpu emulator line 179
D=M-D    // cpu emulator line 180
@SP    // cpu emulator line 181
M=M-1    // cpu emulator line 182
M=M-1    // cpu emulator line 183
A=M    // cpu emulator line 184
M=D    // cpu emulator line 185
@SP    // cpu emulator line 186
M=M+1    // cpu emulator line 187
// Main.vm:24: call Main.fibonacci 1  // computes fib(n-2)    // cpu emulator line 188
//push return-address    // cpu emulator line 188
@Main.vm:24$Main.fibonacci$return-address    // cpu emulator line 188
D=A    // cpu emulator line 189
@SP    // cpu emulator line 190
A=M    // cpu emulator line 191
M=D    // cpu emulator line 192
@SP    // cpu emulator line 193
M=M+1    // cpu emulator line 194
//push LCL    // cpu emulator line 195
@LCL    // cpu emulator line 195
D=M    // cpu emulator line 196
@SP    // cpu emulator line 197
A=M    // cpu emulator line 198
M=D    // cpu emulator line 199
@SP    // cpu emulator line 200
M=M+1    // cpu emulator line 201
//push ARG    // cpu emulator line 202
@ARG    // cpu emulator line 202
D=M    // cpu emulator line 203
@SP    // cpu emulator line 204
A=M    // cpu emulator line 205
M=D    // cpu emulator line 206
@SP    // cpu emulator line 207
M=M+1    // cpu emulator line 208
//push THIS    // cpu emulator line 209
@THIS    // cpu emulator line 209
D=M    // cpu emulator line 210
@SP    // cpu emulator line 211
A=M    // cpu emulator line 212
M=D    // cpu emulator line 213
@SP    // cpu emulator line 214
M=M+1    // cpu emulator line 215
//push THAT    // cpu emulator line 216
@THAT    // cpu emulator line 216
D=M    // cpu emulator line 217
@SP    // cpu emulator line 218
A=M    // cpu emulator line 219
M=D    // cpu emulator line 220
@SP    // cpu emulator line 221
M=M+1    // cpu emulator line 222
//ARG = SP-n-5    // cpu emulator line 223
@SP    // cpu emulator line 223
D=M    // cpu emulator line 224
@1    // cpu emulator line 225
D=D-A    // cpu emulator line 226
@5    // cpu emulator line 227
D=D-A    // cpu emulator line 228
@ARG    // cpu emulator line 229
M=D    // cpu emulator line 230
//LCL = SP    // cpu emulator line 231
@SP    // cpu emulator line 231
D=M    // cpu emulator line 232
@LCL    // cpu emulator line 233
M=D    // cpu emulator line 234
//goto f    // cpu emulator line 235
@$Main.fibonacci    // cpu emulator line 235
0;JMP    // cpu emulator line 236
//(return-address)    // cpu emulator line 237
(Main.vm:24$Main.fibonacci$return-address)    // cpu emulator line 237
// Main.vm:25: push argument 0    // cpu emulator line 237
@ARG    // cpu emulator line 237
D=M    // cpu emulator line 238
@0    // cpu emulator line 239
A=D+A    // cpu emulator line 240
D=M    // cpu emulator line 241
@SP    // cpu emulator line 242
A=M    // cpu emulator line 243
M=D    // cpu emulator line 244
@SP    // cpu emulator line 245
M=M+1    // cpu emulator line 246
// Main.vm:26: push constant 1    // cpu emulator line 247
@1    // cpu emulator line 247
D=A    // cpu emulator line 248
@SP    // cpu emulator line 249
A=M    // cpu emulator line 250
M=D    // cpu emulator line 251
@SP    // cpu emulator line 252
M=M+1    // cpu emulator line 253
// Main.vm:27: sub    // cpu emulator line 254
@SP    // cpu emulator line 254
A=M-1    // cpu emulator line 255
D=M    // cpu emulator line 256
A=A-1    // cpu emulator line 257
D=M-D    // cpu emulator line 258
@SP    // cpu emulator line 259
M=M-1    // cpu emulator line 260
M=M-1    // cpu emulator line 261
A=M    // cpu emulator line 262
M=D    // cpu emulator line 263
@SP    // cpu emulator line 264
M=M+1    // cpu emulator line 265
// Main.vm:28: call Main.fibonacci 1  // computes fib(n-1)    // cpu emulator line 266
//push return-address    // cpu emulator line 266
@Main.vm:28$Main.fibonacci$return-address    // cpu emulator line 266
D=A    // cpu emulator line 267
@SP    // cpu emulator line 268
A=M    // cpu emulator line 269
M=D    // cpu emulator line 270
@SP    // cpu emulator line 271
M=M+1    // cpu emulator line 272
//push LCL    // cpu emulator line 273
@LCL    // cpu emulator line 273
D=M    // cpu emulator line 274
@SP    // cpu emulator line 275
A=M    // cpu emulator line 276
M=D    // cpu emulator line 277
@SP    // cpu emulator line 278
M=M+1    // cpu emulator line 279
//push ARG    // cpu emulator line 280
@ARG    // cpu emulator line 280
D=M    // cpu emulator line 281
@SP    // cpu emulator line 282
A=M    // cpu emulator line 283
M=D    // cpu emulator line 284
@SP    // cpu emulator line 285
M=M+1    // cpu emulator line 286
//push THIS    // cpu emulator line 287
@THIS    // cpu emulator line 287
D=M    // cpu emulator line 288
@SP    // cpu emulator line 289
A=M    // cpu emulator line 290
M=D    // cpu emulator line 291
@SP    // cpu emulator line 292
M=M+1    // cpu emulator line 293
//push THAT    // cpu emulator line 294
@THAT    // cpu emulator line 294
D=M    // cpu emulator line 295
@SP    // cpu emulator line 296
A=M    // cpu emulator line 297
M=D    // cpu emulator line 298
@SP    // cpu emulator line 299
M=M+1    // cpu emulator line 300
//ARG = SP-n-5    // cpu emulator line 301
@SP    // cpu emulator line 301
D=M    // cpu emulator line 302
@1    // cpu emulator line 303
D=D-A    // cpu emulator line 304
@5    // cpu emulator line 305
D=D-A    // cpu emulator line 306
@ARG    // cpu emulator line 307
M=D    // cpu emulator line 308
//LCL = SP    // cpu emulator line 309
@SP    // cpu emulator line 309
D=M    // cpu emulator line 310
@LCL    // cpu emulator line 311
M=D    // cpu emulator line 312
//goto f    // cpu emulator line 313
@$Main.fibonacci    // cpu emulator line 313
0;JMP    // cpu emulator line 314
//(return-address)    // cpu emulator line 315
(Main.vm:28$Main.fibonacci$return-address)    // cpu emulator line 315
// Main.vm:29: add                    // returns fib(n-1) + fib(n-2)    // cpu emulator line 315
@SP    // cpu emulator line 315
A=M-1    // cpu emulator line 316
D=M    // cpu emulator line 317
A=A-1    // cpu emulator line 318
D=M+D    // cpu emulator line 319
@SP    // cpu emulator line 320
M=M-1    // cpu emulator line 321
M=M-1    // cpu emulator line 322
A=M    // cpu emulator line 323
M=D    // cpu emulator line 324
@SP    // cpu emulator line 325
M=M+1    // cpu emulator line 326
// Main.vm:30: return    // cpu emulator line 327
//FRAME=R13=LCL    // cpu emulator line 327
@LCL    // cpu emulator line 327
D=M    // cpu emulator line 328
@R13    // cpu emulator line 329
M=D    // cpu emulator line 330
//R14=RET=*(FRAME-5)    // cpu emulator line 331
@R13    // cpu emulator line 331
D=M    // cpu emulator line 332
@5    // cpu emulator line 333
A=D-A    // cpu emulator line 334
D=M    // cpu emulator line 335
@R14    // cpu emulator line 336
M=D    // cpu emulator line 337
//*arg=pop()    // cpu emulator line 338
@SP    // cpu emulator line 338
A=M-1    // cpu emulator line 339
D=M    // cpu emulator line 340
@ARG    // cpu emulator line 341
A=M    // cpu emulator line 342
M=D    // cpu emulator line 343
//SP=ARG+1    // cpu emulator line 344
@ARG    // cpu emulator line 344
D=M+1    // cpu emulator line 345
@SP    // cpu emulator line 346
M=D    // cpu emulator line 347
//THAT=*(FRAME-1)    // cpu emulator line 348
@R13    // cpu emulator line 348
A=M-1    // cpu emulator line 349
D=M    // cpu emulator line 350
@THAT    // cpu emulator line 351
M=D    // cpu emulator line 352
//THIS=*(FRAME-2)    // cpu emulator line 353
@R13    // cpu emulator line 353
D=M    // cpu emulator line 354
@2    // cpu emulator line 355
D=D-A    // cpu emulator line 356
A=D    // cpu emulator line 357
D=M    // cpu emulator line 358
@THIS    // cpu emulator line 359
M=D    // cpu emulator line 360
//ARG=*(FRAME-3)    // cpu emulator line 361
@R13    // cpu emulator line 361
D=M    // cpu emulator line 362
@3    // cpu emulator line 363
D=D-A    // cpu emulator line 364
A=D    // cpu emulator line 365
D=M    // cpu emulator line 366
@ARG    // cpu emulator line 367
M=D    // cpu emulator line 368
//LCL=*(FRAME-4)    // cpu emulator line 369
@R13    // cpu emulator line 369
D=M    // cpu emulator line 370
@4    // cpu emulator line 371
D=D-A    // cpu emulator line 372
A=D    // cpu emulator line 373
D=M    // cpu emulator line 374
@LCL    // cpu emulator line 375
M=D    // cpu emulator line 376
//goto RET    // cpu emulator line 377
@R14    // cpu emulator line 377
A=M    // cpu emulator line 378
0;JMP    // cpu emulator line 379
//Bootstrap code    // cpu emulator line 380
//SP=256    // cpu emulator line 380
@256    // cpu emulator line 380
D=A    // cpu emulator line 381
@SP    // cpu emulator line 382
M=D    // cpu emulator line 383
//call Sys.init    // cpu emulator line 384
//push return-address    // cpu emulator line 384
@Main.vm:1$Sys.init$return-address    // cpu emulator line 384
D=A    // cpu emulator line 385
@SP    // cpu emulator line 386
A=M    // cpu emulator line 387
M=D    // cpu emulator line 388
@SP    // cpu emulator line 389
M=M+1    // cpu emulator line 390
//push LCL    // cpu emulator line 391
@LCL    // cpu emulator line 391
D=M    // cpu emulator line 392
@SP    // cpu emulator line 393
A=M    // cpu emulator line 394
M=D    // cpu emulator line 395
@SP    // cpu emulator line 396
M=M+1    // cpu emulator line 397
//push ARG    // cpu emulator line 398
@ARG    // cpu emulator line 398
D=M    // cpu emulator line 399
@SP    // cpu emulator line 400
A=M    // cpu emulator line 401
M=D    // cpu emulator line 402
@SP    // cpu emulator line 403
M=M+1    // cpu emulator line 404
//push THIS    // cpu emulator line 405
@THIS    // cpu emulator line 405
D=M    // cpu emulator line 406
@SP    // cpu emulator line 407
A=M    // cpu emulator line 408
M=D    // cpu emulator line 409
@SP    // cpu emulator line 410
M=M+1    // cpu emulator line 411
//push THAT    // cpu emulator line 412
@THAT    // cpu emulator line 412
D=M    // cpu emulator line 413
@SP    // cpu emulator line 414
A=M    // cpu emulator line 415
M=D    // cpu emulator line 416
@SP    // cpu emulator line 417
M=M+1    // cpu emulator line 418
//ARG = SP-n-5    // cpu emulator line 419
@SP    // cpu emulator line 419
D=M    // cpu emulator line 420
@0    // cpu emulator line 421
D=D-A    // cpu emulator line 422
@5    // cpu emulator line 423
D=D-A    // cpu emulator line 424
@ARG    // cpu emulator line 425
M=D    // cpu emulator line 426
//LCL = SP    // cpu emulator line 427
@SP    // cpu emulator line 427
D=M    // cpu emulator line 428
@LCL    // cpu emulator line 429
M=D    // cpu emulator line 430
//goto f    // cpu emulator line 431
@$Sys.init    // cpu emulator line 431
0;JMP    // cpu emulator line 432
//(return-address)    // cpu emulator line 433
(Main.vm:1$Sys.init$return-address)    // cpu emulator line 433
// Sys.vm:1: // This file is part of www.nand2tetris.org    // cpu emulator line 433
// Sys.vm:2: // and the book "The Elements of Computing Systems"    // cpu emulator line 433
// Sys.vm:3: // by Nisan and Schocken, MIT Press.    // cpu emulator line 433
// Sys.vm:4: // File name: projects/08/FunctionCalls/FibonacciElement/Sys.vm    // cpu emulator line 433
// Sys.vm:5:     // cpu emulator line 433
// Sys.vm:6: // Pushes a constant, say n, onto the stack, and calls the Main.fibonacii    // cpu emulator line 433
// Sys.vm:7: // function, which computes the n'th element of the Fibonacci series.    // cpu emulator line 433
// Sys.vm:8: // Note that by convention, the Sys.init function is called "automatically"    // cpu emulator line 433
// Sys.vm:9: // by the bootstrap code.    // cpu emulator line 433
// Sys.vm:10:     // cpu emulator line 433
// Sys.vm:11: function Sys.init 0    // cpu emulator line 433
($Sys.init)    // cpu emulator line 433
// Sys.vm:12: //push constant 4    // cpu emulator line 433
// Sys.vm:13: push constant 4    // cpu emulator line 433
@4    // cpu emulator line 433
D=A    // cpu emulator line 434
@SP    // cpu emulator line 435
A=M    // cpu emulator line 436
M=D    // cpu emulator line 437
@SP    // cpu emulator line 438
M=M+1    // cpu emulator line 439
// Sys.vm:14: call Main.fibonacci 1   // computes the 4'th fibonacci element    // cpu emulator line 440
//push return-address    // cpu emulator line 440
@Sys.vm:14$Main.fibonacci$return-address    // cpu emulator line 440
D=A    // cpu emulator line 441
@SP    // cpu emulator line 442
A=M    // cpu emulator line 443
M=D    // cpu emulator line 444
@SP    // cpu emulator line 445
M=M+1    // cpu emulator line 446
//push LCL    // cpu emulator line 447
@LCL    // cpu emulator line 447
D=M    // cpu emulator line 448
@SP    // cpu emulator line 449
A=M    // cpu emulator line 450
M=D    // cpu emulator line 451
@SP    // cpu emulator line 452
M=M+1    // cpu emulator line 453
//push ARG    // cpu emulator line 454
@ARG    // cpu emulator line 454
D=M    // cpu emulator line 455
@SP    // cpu emulator line 456
A=M    // cpu emulator line 457
M=D    // cpu emulator line 458
@SP    // cpu emulator line 459
M=M+1    // cpu emulator line 460
//push THIS    // cpu emulator line 461
@THIS    // cpu emulator line 461
D=M    // cpu emulator line 462
@SP    // cpu emulator line 463
A=M    // cpu emulator line 464
M=D    // cpu emulator line 465
@SP    // cpu emulator line 466
M=M+1    // cpu emulator line 467
//push THAT    // cpu emulator line 468
@THAT    // cpu emulator line 468
D=M    // cpu emulator line 469
@SP    // cpu emulator line 470
A=M    // cpu emulator line 471
M=D    // cpu emulator line 472
@SP    // cpu emulator line 473
M=M+1    // cpu emulator line 474
//ARG = SP-n-5    // cpu emulator line 475
@SP    // cpu emulator line 475
D=M    // cpu emulator line 476
@1    // cpu emulator line 477
D=D-A    // cpu emulator line 478
@5    // cpu emulator line 479
D=D-A    // cpu emulator line 480
@ARG    // cpu emulator line 481
M=D    // cpu emulator line 482
//LCL = SP    // cpu emulator line 483
@SP    // cpu emulator line 483
D=M    // cpu emulator line 484
@LCL    // cpu emulator line 485
M=D    // cpu emulator line 486
//goto f    // cpu emulator line 487
@$Main.fibonacci    // cpu emulator line 487
0;JMP    // cpu emulator line 488
//(return-address)    // cpu emulator line 489
(Sys.vm:14$Main.fibonacci$return-address)    // cpu emulator line 489
// Sys.vm:15: label WHILE    // cpu emulator line 489
($Main.fibonacci$WHILE)    // cpu emulator line 489
// Sys.vm:16: goto WHILE              // loops infinitely    // cpu emulator line 489
@$Main.fibonacci$WHILE    // cpu emulator line 489
0;JMP    // cpu emulator line 490
