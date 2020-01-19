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
// Class1.vm:1: // This file is part of www.nand2tetris.org    // cpu emulator line 53
// Class1.vm:2: // and the book "The Elements of Computing Systems"    // cpu emulator line 53
// Class1.vm:3: // by Nisan and Schocken, MIT Press.    // cpu emulator line 53
// Class1.vm:4: // File name: projects/08/FunctionCalls/StaticsTest/Class1.vm    // cpu emulator line 53
// Class1.vm:5:     // cpu emulator line 53
// Class1.vm:6: // Stores two supplied arguments in static[0] and static[1].    // cpu emulator line 53
// Class1.vm:7: function Class1.set 0    // cpu emulator line 53
($Class1.set)    // cpu emulator line 53
// Class1.vm:8: push argument 0    // cpu emulator line 53
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
// Class1.vm:9: pop static 0    // cpu emulator line 63
@SP    // cpu emulator line 63
AM=M-1    // cpu emulator line 64
D=M    // cpu emulator line 65
@Class1.0    // cpu emulator line 66
M=D    // cpu emulator line 67
// Class1.vm:10: push argument 1    // cpu emulator line 68
@ARG    // cpu emulator line 68
D=M    // cpu emulator line 69
@1    // cpu emulator line 70
A=D+A    // cpu emulator line 71
D=M    // cpu emulator line 72
@SP    // cpu emulator line 73
A=M    // cpu emulator line 74
M=D    // cpu emulator line 75
@SP    // cpu emulator line 76
M=M+1    // cpu emulator line 77
// Class1.vm:11: pop static 1    // cpu emulator line 78
@SP    // cpu emulator line 78
AM=M-1    // cpu emulator line 79
D=M    // cpu emulator line 80
@Class1.1    // cpu emulator line 81
M=D    // cpu emulator line 82
// Class1.vm:12: push constant 0    // cpu emulator line 83
@0    // cpu emulator line 83
D=A    // cpu emulator line 84
@SP    // cpu emulator line 85
A=M    // cpu emulator line 86
M=D    // cpu emulator line 87
@SP    // cpu emulator line 88
M=M+1    // cpu emulator line 89
// Class1.vm:13: return    // cpu emulator line 90
//FRAME=R13=LCL    // cpu emulator line 90
@LCL    // cpu emulator line 90
D=M    // cpu emulator line 91
@R13    // cpu emulator line 92
M=D    // cpu emulator line 93
//R14=RET=*(FRAME-5)    // cpu emulator line 94
@R13    // cpu emulator line 94
D=M    // cpu emulator line 95
@5    // cpu emulator line 96
A=D-A    // cpu emulator line 97
D=M    // cpu emulator line 98
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
// Class1.vm:14:     // cpu emulator line 143
// Class1.vm:15: // Returns static[0] - static[1].    // cpu emulator line 143
// Class1.vm:16: function Class1.get 0    // cpu emulator line 143
($Class1.get)    // cpu emulator line 143
// Class1.vm:17: push static 0    // cpu emulator line 143
@Class1.0    // cpu emulator line 143
D=M    // cpu emulator line 144
@SP    // cpu emulator line 145
A=M    // cpu emulator line 146
M=D    // cpu emulator line 147
@SP    // cpu emulator line 148
M=M+1    // cpu emulator line 149
// Class1.vm:18: push static 1    // cpu emulator line 150
@Class1.1    // cpu emulator line 150
D=M    // cpu emulator line 151
@SP    // cpu emulator line 152
A=M    // cpu emulator line 153
M=D    // cpu emulator line 154
@SP    // cpu emulator line 155
M=M+1    // cpu emulator line 156
// Class1.vm:19: sub    // cpu emulator line 157
@SP    // cpu emulator line 157
A=M-1    // cpu emulator line 158
D=M    // cpu emulator line 159
A=A-1    // cpu emulator line 160
D=M-D    // cpu emulator line 161
@SP    // cpu emulator line 162
M=M-1    // cpu emulator line 163
M=M-1    // cpu emulator line 164
A=M    // cpu emulator line 165
M=D    // cpu emulator line 166
@SP    // cpu emulator line 167
M=M+1    // cpu emulator line 168
// Class1.vm:20: return    // cpu emulator line 169
//FRAME=R13=LCL    // cpu emulator line 169
@LCL    // cpu emulator line 169
D=M    // cpu emulator line 170
@R13    // cpu emulator line 171
M=D    // cpu emulator line 172
//R14=RET=*(FRAME-5)    // cpu emulator line 173
@R13    // cpu emulator line 173
D=M    // cpu emulator line 174
@5    // cpu emulator line 175
A=D-A    // cpu emulator line 176
D=M    // cpu emulator line 177
@R14    // cpu emulator line 178
M=D    // cpu emulator line 179
//*arg=pop()    // cpu emulator line 180
@SP    // cpu emulator line 180
A=M-1    // cpu emulator line 181
D=M    // cpu emulator line 182
@ARG    // cpu emulator line 183
A=M    // cpu emulator line 184
M=D    // cpu emulator line 185
//SP=ARG+1    // cpu emulator line 186
@ARG    // cpu emulator line 186
D=M+1    // cpu emulator line 187
@SP    // cpu emulator line 188
M=D    // cpu emulator line 189
//THAT=*(FRAME-1)    // cpu emulator line 190
@R13    // cpu emulator line 190
A=M-1    // cpu emulator line 191
D=M    // cpu emulator line 192
@THAT    // cpu emulator line 193
M=D    // cpu emulator line 194
//THIS=*(FRAME-2)    // cpu emulator line 195
@R13    // cpu emulator line 195
D=M    // cpu emulator line 196
@2    // cpu emulator line 197
D=D-A    // cpu emulator line 198
A=D    // cpu emulator line 199
D=M    // cpu emulator line 200
@THIS    // cpu emulator line 201
M=D    // cpu emulator line 202
//ARG=*(FRAME-3)    // cpu emulator line 203
@R13    // cpu emulator line 203
D=M    // cpu emulator line 204
@3    // cpu emulator line 205
D=D-A    // cpu emulator line 206
A=D    // cpu emulator line 207
D=M    // cpu emulator line 208
@ARG    // cpu emulator line 209
M=D    // cpu emulator line 210
//LCL=*(FRAME-4)    // cpu emulator line 211
@R13    // cpu emulator line 211
D=M    // cpu emulator line 212
@4    // cpu emulator line 213
D=D-A    // cpu emulator line 214
A=D    // cpu emulator line 215
D=M    // cpu emulator line 216
@LCL    // cpu emulator line 217
M=D    // cpu emulator line 218
//goto RET    // cpu emulator line 219
@R14    // cpu emulator line 219
A=M    // cpu emulator line 220
0;JMP    // cpu emulator line 221
//Bootstrap code    // cpu emulator line 222
//SP=256    // cpu emulator line 222
@256    // cpu emulator line 222
D=A    // cpu emulator line 223
@SP    // cpu emulator line 224
M=D    // cpu emulator line 225
//call Sys.init    // cpu emulator line 226
//push return-address    // cpu emulator line 226
@Main.vm:1$Sys.init$return-address    // cpu emulator line 226
D=A    // cpu emulator line 227
@SP    // cpu emulator line 228
A=M    // cpu emulator line 229
M=D    // cpu emulator line 230
@SP    // cpu emulator line 231
M=M+1    // cpu emulator line 232
//push LCL    // cpu emulator line 233
@LCL    // cpu emulator line 233
D=M    // cpu emulator line 234
@SP    // cpu emulator line 235
A=M    // cpu emulator line 236
M=D    // cpu emulator line 237
@SP    // cpu emulator line 238
M=M+1    // cpu emulator line 239
//push ARG    // cpu emulator line 240
@ARG    // cpu emulator line 240
D=M    // cpu emulator line 241
@SP    // cpu emulator line 242
A=M    // cpu emulator line 243
M=D    // cpu emulator line 244
@SP    // cpu emulator line 245
M=M+1    // cpu emulator line 246
//push THIS    // cpu emulator line 247
@THIS    // cpu emulator line 247
D=M    // cpu emulator line 248
@SP    // cpu emulator line 249
A=M    // cpu emulator line 250
M=D    // cpu emulator line 251
@SP    // cpu emulator line 252
M=M+1    // cpu emulator line 253
//push THAT    // cpu emulator line 254
@THAT    // cpu emulator line 254
D=M    // cpu emulator line 255
@SP    // cpu emulator line 256
A=M    // cpu emulator line 257
M=D    // cpu emulator line 258
@SP    // cpu emulator line 259
M=M+1    // cpu emulator line 260
//ARG = SP-n-5    // cpu emulator line 261
@SP    // cpu emulator line 261
D=M    // cpu emulator line 262
@0    // cpu emulator line 263
D=D-A    // cpu emulator line 264
@5    // cpu emulator line 265
D=D-A    // cpu emulator line 266
@ARG    // cpu emulator line 267
M=D    // cpu emulator line 268
//LCL = SP    // cpu emulator line 269
@SP    // cpu emulator line 269
D=M    // cpu emulator line 270
@LCL    // cpu emulator line 271
M=D    // cpu emulator line 272
//goto f    // cpu emulator line 273
@$Sys.init    // cpu emulator line 273
0;JMP    // cpu emulator line 274
//(return-address)    // cpu emulator line 275
(Main.vm:1$Sys.init$return-address)    // cpu emulator line 275
// Class2.vm:1: // This file is part of www.nand2tetris.org    // cpu emulator line 275
// Class2.vm:2: // and the book "The Elements of Computing Systems"    // cpu emulator line 275
// Class2.vm:3: // by Nisan and Schocken, MIT Press.    // cpu emulator line 275
// Class2.vm:4: // File name: projects/08/FunctionCalls/StaticsTest/Class2.vm    // cpu emulator line 275
// Class2.vm:5:     // cpu emulator line 275
// Class2.vm:6: // Stores two supplied arguments in static[0] and static[1].    // cpu emulator line 275
// Class2.vm:7: function Class2.set 0    // cpu emulator line 275
($Class2.set)    // cpu emulator line 275
// Class2.vm:8: push argument 0    // cpu emulator line 275
@ARG    // cpu emulator line 275
D=M    // cpu emulator line 276
@0    // cpu emulator line 277
A=D+A    // cpu emulator line 278
D=M    // cpu emulator line 279
@SP    // cpu emulator line 280
A=M    // cpu emulator line 281
M=D    // cpu emulator line 282
@SP    // cpu emulator line 283
M=M+1    // cpu emulator line 284
// Class2.vm:9: pop static 0    // cpu emulator line 285
@SP    // cpu emulator line 285
AM=M-1    // cpu emulator line 286
D=M    // cpu emulator line 287
@Class2.0    // cpu emulator line 288
M=D    // cpu emulator line 289
// Class2.vm:10: push argument 1    // cpu emulator line 290
@ARG    // cpu emulator line 290
D=M    // cpu emulator line 291
@1    // cpu emulator line 292
A=D+A    // cpu emulator line 293
D=M    // cpu emulator line 294
@SP    // cpu emulator line 295
A=M    // cpu emulator line 296
M=D    // cpu emulator line 297
@SP    // cpu emulator line 298
M=M+1    // cpu emulator line 299
// Class2.vm:11: pop static 1    // cpu emulator line 300
@SP    // cpu emulator line 300
AM=M-1    // cpu emulator line 301
D=M    // cpu emulator line 302
@Class2.1    // cpu emulator line 303
M=D    // cpu emulator line 304
// Class2.vm:12: push constant 0    // cpu emulator line 305
@0    // cpu emulator line 305
D=A    // cpu emulator line 306
@SP    // cpu emulator line 307
A=M    // cpu emulator line 308
M=D    // cpu emulator line 309
@SP    // cpu emulator line 310
M=M+1    // cpu emulator line 311
// Class2.vm:13: return    // cpu emulator line 312
//FRAME=R13=LCL    // cpu emulator line 312
@LCL    // cpu emulator line 312
D=M    // cpu emulator line 313
@R13    // cpu emulator line 314
M=D    // cpu emulator line 315
//R14=RET=*(FRAME-5)    // cpu emulator line 316
@R13    // cpu emulator line 316
D=M    // cpu emulator line 317
@5    // cpu emulator line 318
A=D-A    // cpu emulator line 319
D=M    // cpu emulator line 320
@R14    // cpu emulator line 321
M=D    // cpu emulator line 322
//*arg=pop()    // cpu emulator line 323
@SP    // cpu emulator line 323
A=M-1    // cpu emulator line 324
D=M    // cpu emulator line 325
@ARG    // cpu emulator line 326
A=M    // cpu emulator line 327
M=D    // cpu emulator line 328
//SP=ARG+1    // cpu emulator line 329
@ARG    // cpu emulator line 329
D=M+1    // cpu emulator line 330
@SP    // cpu emulator line 331
M=D    // cpu emulator line 332
//THAT=*(FRAME-1)    // cpu emulator line 333
@R13    // cpu emulator line 333
A=M-1    // cpu emulator line 334
D=M    // cpu emulator line 335
@THAT    // cpu emulator line 336
M=D    // cpu emulator line 337
//THIS=*(FRAME-2)    // cpu emulator line 338
@R13    // cpu emulator line 338
D=M    // cpu emulator line 339
@2    // cpu emulator line 340
D=D-A    // cpu emulator line 341
A=D    // cpu emulator line 342
D=M    // cpu emulator line 343
@THIS    // cpu emulator line 344
M=D    // cpu emulator line 345
//ARG=*(FRAME-3)    // cpu emulator line 346
@R13    // cpu emulator line 346
D=M    // cpu emulator line 347
@3    // cpu emulator line 348
D=D-A    // cpu emulator line 349
A=D    // cpu emulator line 350
D=M    // cpu emulator line 351
@ARG    // cpu emulator line 352
M=D    // cpu emulator line 353
//LCL=*(FRAME-4)    // cpu emulator line 354
@R13    // cpu emulator line 354
D=M    // cpu emulator line 355
@4    // cpu emulator line 356
D=D-A    // cpu emulator line 357
A=D    // cpu emulator line 358
D=M    // cpu emulator line 359
@LCL    // cpu emulator line 360
M=D    // cpu emulator line 361
//goto RET    // cpu emulator line 362
@R14    // cpu emulator line 362
A=M    // cpu emulator line 363
0;JMP    // cpu emulator line 364
// Class2.vm:14:     // cpu emulator line 365
// Class2.vm:15: // Returns static[0] - static[1].    // cpu emulator line 365
// Class2.vm:16: function Class2.get 0    // cpu emulator line 365
($Class2.get)    // cpu emulator line 365
// Class2.vm:17: push static 0    // cpu emulator line 365
@Class2.0    // cpu emulator line 365
D=M    // cpu emulator line 366
@SP    // cpu emulator line 367
A=M    // cpu emulator line 368
M=D    // cpu emulator line 369
@SP    // cpu emulator line 370
M=M+1    // cpu emulator line 371
// Class2.vm:18: push static 1    // cpu emulator line 372
@Class2.1    // cpu emulator line 372
D=M    // cpu emulator line 373
@SP    // cpu emulator line 374
A=M    // cpu emulator line 375
M=D    // cpu emulator line 376
@SP    // cpu emulator line 377
M=M+1    // cpu emulator line 378
// Class2.vm:19: sub    // cpu emulator line 379
@SP    // cpu emulator line 379
A=M-1    // cpu emulator line 380
D=M    // cpu emulator line 381
A=A-1    // cpu emulator line 382
D=M-D    // cpu emulator line 383
@SP    // cpu emulator line 384
M=M-1    // cpu emulator line 385
M=M-1    // cpu emulator line 386
A=M    // cpu emulator line 387
M=D    // cpu emulator line 388
@SP    // cpu emulator line 389
M=M+1    // cpu emulator line 390
// Class2.vm:20: return    // cpu emulator line 391
//FRAME=R13=LCL    // cpu emulator line 391
@LCL    // cpu emulator line 391
D=M    // cpu emulator line 392
@R13    // cpu emulator line 393
M=D    // cpu emulator line 394
//R14=RET=*(FRAME-5)    // cpu emulator line 395
@R13    // cpu emulator line 395
D=M    // cpu emulator line 396
@5    // cpu emulator line 397
A=D-A    // cpu emulator line 398
D=M    // cpu emulator line 399
@R14    // cpu emulator line 400
M=D    // cpu emulator line 401
//*arg=pop()    // cpu emulator line 402
@SP    // cpu emulator line 402
A=M-1    // cpu emulator line 403
D=M    // cpu emulator line 404
@ARG    // cpu emulator line 405
A=M    // cpu emulator line 406
M=D    // cpu emulator line 407
//SP=ARG+1    // cpu emulator line 408
@ARG    // cpu emulator line 408
D=M+1    // cpu emulator line 409
@SP    // cpu emulator line 410
M=D    // cpu emulator line 411
//THAT=*(FRAME-1)    // cpu emulator line 412
@R13    // cpu emulator line 412
A=M-1    // cpu emulator line 413
D=M    // cpu emulator line 414
@THAT    // cpu emulator line 415
M=D    // cpu emulator line 416
//THIS=*(FRAME-2)    // cpu emulator line 417
@R13    // cpu emulator line 417
D=M    // cpu emulator line 418
@2    // cpu emulator line 419
D=D-A    // cpu emulator line 420
A=D    // cpu emulator line 421
D=M    // cpu emulator line 422
@THIS    // cpu emulator line 423
M=D    // cpu emulator line 424
//ARG=*(FRAME-3)    // cpu emulator line 425
@R13    // cpu emulator line 425
D=M    // cpu emulator line 426
@3    // cpu emulator line 427
D=D-A    // cpu emulator line 428
A=D    // cpu emulator line 429
D=M    // cpu emulator line 430
@ARG    // cpu emulator line 431
M=D    // cpu emulator line 432
//LCL=*(FRAME-4)    // cpu emulator line 433
@R13    // cpu emulator line 433
D=M    // cpu emulator line 434
@4    // cpu emulator line 435
D=D-A    // cpu emulator line 436
A=D    // cpu emulator line 437
D=M    // cpu emulator line 438
@LCL    // cpu emulator line 439
M=D    // cpu emulator line 440
//goto RET    // cpu emulator line 441
@R14    // cpu emulator line 441
A=M    // cpu emulator line 442
0;JMP    // cpu emulator line 443
//Bootstrap code    // cpu emulator line 444
//SP=256    // cpu emulator line 444
@256    // cpu emulator line 444
D=A    // cpu emulator line 445
@SP    // cpu emulator line 446
M=D    // cpu emulator line 447
//call Sys.init    // cpu emulator line 448
//push return-address    // cpu emulator line 448
@Main.vm:1$Sys.init$return-address    // cpu emulator line 448
D=A    // cpu emulator line 449
@SP    // cpu emulator line 450
A=M    // cpu emulator line 451
M=D    // cpu emulator line 452
@SP    // cpu emulator line 453
M=M+1    // cpu emulator line 454
//push LCL    // cpu emulator line 455
@LCL    // cpu emulator line 455
D=M    // cpu emulator line 456
@SP    // cpu emulator line 457
A=M    // cpu emulator line 458
M=D    // cpu emulator line 459
@SP    // cpu emulator line 460
M=M+1    // cpu emulator line 461
//push ARG    // cpu emulator line 462
@ARG    // cpu emulator line 462
D=M    // cpu emulator line 463
@SP    // cpu emulator line 464
A=M    // cpu emulator line 465
M=D    // cpu emulator line 466
@SP    // cpu emulator line 467
M=M+1    // cpu emulator line 468
//push THIS    // cpu emulator line 469
@THIS    // cpu emulator line 469
D=M    // cpu emulator line 470
@SP    // cpu emulator line 471
A=M    // cpu emulator line 472
M=D    // cpu emulator line 473
@SP    // cpu emulator line 474
M=M+1    // cpu emulator line 475
//push THAT    // cpu emulator line 476
@THAT    // cpu emulator line 476
D=M    // cpu emulator line 477
@SP    // cpu emulator line 478
A=M    // cpu emulator line 479
M=D    // cpu emulator line 480
@SP    // cpu emulator line 481
M=M+1    // cpu emulator line 482
//ARG = SP-n-5    // cpu emulator line 483
@SP    // cpu emulator line 483
D=M    // cpu emulator line 484
@0    // cpu emulator line 485
D=D-A    // cpu emulator line 486
@5    // cpu emulator line 487
D=D-A    // cpu emulator line 488
@ARG    // cpu emulator line 489
M=D    // cpu emulator line 490
//LCL = SP    // cpu emulator line 491
@SP    // cpu emulator line 491
D=M    // cpu emulator line 492
@LCL    // cpu emulator line 493
M=D    // cpu emulator line 494
//goto f    // cpu emulator line 495
@$Sys.init    // cpu emulator line 495
0;JMP    // cpu emulator line 496
//(return-address)    // cpu emulator line 497
(Main.vm:1$Sys.init$return-address)    // cpu emulator line 497
// Sys.vm:1: // This file is part of www.nand2tetris.org    // cpu emulator line 497
// Sys.vm:2: // and the book "The Elements of Computing Systems"    // cpu emulator line 497
// Sys.vm:3: // by Nisan and Schocken, MIT Press.    // cpu emulator line 497
// Sys.vm:4: // File name: projects/08/FunctionCalls/StaticsTest/Sys.vm    // cpu emulator line 497
// Sys.vm:5:     // cpu emulator line 497
// Sys.vm:6: // Tests that different functions, stored in two different    // cpu emulator line 497
// Sys.vm:7: // class files, manipulate the static segment correctly.    // cpu emulator line 497
// Sys.vm:8: function Sys.init 0    // cpu emulator line 497
($Sys.init)    // cpu emulator line 497
// Sys.vm:9: push constant 6    // cpu emulator line 497
@6    // cpu emulator line 497
D=A    // cpu emulator line 498
@SP    // cpu emulator line 499
A=M    // cpu emulator line 500
M=D    // cpu emulator line 501
@SP    // cpu emulator line 502
M=M+1    // cpu emulator line 503
// Sys.vm:10: push constant 8    // cpu emulator line 504
@8    // cpu emulator line 504
D=A    // cpu emulator line 505
@SP    // cpu emulator line 506
A=M    // cpu emulator line 507
M=D    // cpu emulator line 508
@SP    // cpu emulator line 509
M=M+1    // cpu emulator line 510
// Sys.vm:11: call Class1.set 2    // cpu emulator line 511
//push return-address    // cpu emulator line 511
@Sys.vm:11$Class1.set$return-address    // cpu emulator line 511
D=A    // cpu emulator line 512
@SP    // cpu emulator line 513
A=M    // cpu emulator line 514
M=D    // cpu emulator line 515
@SP    // cpu emulator line 516
M=M+1    // cpu emulator line 517
//push LCL    // cpu emulator line 518
@LCL    // cpu emulator line 518
D=M    // cpu emulator line 519
@SP    // cpu emulator line 520
A=M    // cpu emulator line 521
M=D    // cpu emulator line 522
@SP    // cpu emulator line 523
M=M+1    // cpu emulator line 524
//push ARG    // cpu emulator line 525
@ARG    // cpu emulator line 525
D=M    // cpu emulator line 526
@SP    // cpu emulator line 527
A=M    // cpu emulator line 528
M=D    // cpu emulator line 529
@SP    // cpu emulator line 530
M=M+1    // cpu emulator line 531
//push THIS    // cpu emulator line 532
@THIS    // cpu emulator line 532
D=M    // cpu emulator line 533
@SP    // cpu emulator line 534
A=M    // cpu emulator line 535
M=D    // cpu emulator line 536
@SP    // cpu emulator line 537
M=M+1    // cpu emulator line 538
//push THAT    // cpu emulator line 539
@THAT    // cpu emulator line 539
D=M    // cpu emulator line 540
@SP    // cpu emulator line 541
A=M    // cpu emulator line 542
M=D    // cpu emulator line 543
@SP    // cpu emulator line 544
M=M+1    // cpu emulator line 545
//ARG = SP-n-5    // cpu emulator line 546
@SP    // cpu emulator line 546
D=M    // cpu emulator line 547
@2    // cpu emulator line 548
D=D-A    // cpu emulator line 549
@5    // cpu emulator line 550
D=D-A    // cpu emulator line 551
@ARG    // cpu emulator line 552
M=D    // cpu emulator line 553
//LCL = SP    // cpu emulator line 554
@SP    // cpu emulator line 554
D=M    // cpu emulator line 555
@LCL    // cpu emulator line 556
M=D    // cpu emulator line 557
//goto f    // cpu emulator line 558
@$Class1.set    // cpu emulator line 558
0;JMP    // cpu emulator line 559
//(return-address)    // cpu emulator line 560
(Sys.vm:11$Class1.set$return-address)    // cpu emulator line 560
// Sys.vm:12: pop temp 0 // Dumps the return value    // cpu emulator line 560
    // cpu emulator line 560
@5    // cpu emulator line 561
D=A // D is now temp+value    // cpu emulator line 562
@SP    // cpu emulator line 563
A=M-1    // cpu emulator line 564
A=M // A has now the value of memory at mem(SP-1)    // cpu emulator line 565
D=D+A // this is to swap A and D    // cpu emulator line 566
A=D-A    // cpu emulator line 567
D=D-A // A and D are now swapped    // cpu emulator line 568
M=D    // cpu emulator line 569
@SP // this just decrements SP    // cpu emulator line 570
M=M-1    // cpu emulator line 571
// Sys.vm:13: push constant 23    // cpu emulator line 572
@23    // cpu emulator line 572
D=A    // cpu emulator line 573
@SP    // cpu emulator line 574
A=M    // cpu emulator line 575
M=D    // cpu emulator line 576
@SP    // cpu emulator line 577
M=M+1    // cpu emulator line 578
// Sys.vm:14: push constant 15    // cpu emulator line 579
@15    // cpu emulator line 579
D=A    // cpu emulator line 580
@SP    // cpu emulator line 581
A=M    // cpu emulator line 582
M=D    // cpu emulator line 583
@SP    // cpu emulator line 584
M=M+1    // cpu emulator line 585
// Sys.vm:15: call Class2.set 2    // cpu emulator line 586
//push return-address    // cpu emulator line 586
@Sys.vm:15$Class2.set$return-address    // cpu emulator line 586
D=A    // cpu emulator line 587
@SP    // cpu emulator line 588
A=M    // cpu emulator line 589
M=D    // cpu emulator line 590
@SP    // cpu emulator line 591
M=M+1    // cpu emulator line 592
//push LCL    // cpu emulator line 593
@LCL    // cpu emulator line 593
D=M    // cpu emulator line 594
@SP    // cpu emulator line 595
A=M    // cpu emulator line 596
M=D    // cpu emulator line 597
@SP    // cpu emulator line 598
M=M+1    // cpu emulator line 599
//push ARG    // cpu emulator line 600
@ARG    // cpu emulator line 600
D=M    // cpu emulator line 601
@SP    // cpu emulator line 602
A=M    // cpu emulator line 603
M=D    // cpu emulator line 604
@SP    // cpu emulator line 605
M=M+1    // cpu emulator line 606
//push THIS    // cpu emulator line 607
@THIS    // cpu emulator line 607
D=M    // cpu emulator line 608
@SP    // cpu emulator line 609
A=M    // cpu emulator line 610
M=D    // cpu emulator line 611
@SP    // cpu emulator line 612
M=M+1    // cpu emulator line 613
//push THAT    // cpu emulator line 614
@THAT    // cpu emulator line 614
D=M    // cpu emulator line 615
@SP    // cpu emulator line 616
A=M    // cpu emulator line 617
M=D    // cpu emulator line 618
@SP    // cpu emulator line 619
M=M+1    // cpu emulator line 620
//ARG = SP-n-5    // cpu emulator line 621
@SP    // cpu emulator line 621
D=M    // cpu emulator line 622
@2    // cpu emulator line 623
D=D-A    // cpu emulator line 624
@5    // cpu emulator line 625
D=D-A    // cpu emulator line 626
@ARG    // cpu emulator line 627
M=D    // cpu emulator line 628
//LCL = SP    // cpu emulator line 629
@SP    // cpu emulator line 629
D=M    // cpu emulator line 630
@LCL    // cpu emulator line 631
M=D    // cpu emulator line 632
//goto f    // cpu emulator line 633
@$Class2.set    // cpu emulator line 633
0;JMP    // cpu emulator line 634
//(return-address)    // cpu emulator line 635
(Sys.vm:15$Class2.set$return-address)    // cpu emulator line 635
// Sys.vm:16: pop temp 0 // Dumps the return value    // cpu emulator line 635
    // cpu emulator line 635
@5    // cpu emulator line 636
D=A // D is now temp+value    // cpu emulator line 637
@SP    // cpu emulator line 638
A=M-1    // cpu emulator line 639
A=M // A has now the value of memory at mem(SP-1)    // cpu emulator line 640
D=D+A // this is to swap A and D    // cpu emulator line 641
A=D-A    // cpu emulator line 642
D=D-A // A and D are now swapped    // cpu emulator line 643
M=D    // cpu emulator line 644
@SP // this just decrements SP    // cpu emulator line 645
M=M-1    // cpu emulator line 646
// Sys.vm:17: call Class1.get 0    // cpu emulator line 647
//push return-address    // cpu emulator line 647
@Sys.vm:17$Class1.get$return-address    // cpu emulator line 647
D=A    // cpu emulator line 648
@SP    // cpu emulator line 649
A=M    // cpu emulator line 650
M=D    // cpu emulator line 651
@SP    // cpu emulator line 652
M=M+1    // cpu emulator line 653
//push LCL    // cpu emulator line 654
@LCL    // cpu emulator line 654
D=M    // cpu emulator line 655
@SP    // cpu emulator line 656
A=M    // cpu emulator line 657
M=D    // cpu emulator line 658
@SP    // cpu emulator line 659
M=M+1    // cpu emulator line 660
//push ARG    // cpu emulator line 661
@ARG    // cpu emulator line 661
D=M    // cpu emulator line 662
@SP    // cpu emulator line 663
A=M    // cpu emulator line 664
M=D    // cpu emulator line 665
@SP    // cpu emulator line 666
M=M+1    // cpu emulator line 667
//push THIS    // cpu emulator line 668
@THIS    // cpu emulator line 668
D=M    // cpu emulator line 669
@SP    // cpu emulator line 670
A=M    // cpu emulator line 671
M=D    // cpu emulator line 672
@SP    // cpu emulator line 673
M=M+1    // cpu emulator line 674
//push THAT    // cpu emulator line 675
@THAT    // cpu emulator line 675
D=M    // cpu emulator line 676
@SP    // cpu emulator line 677
A=M    // cpu emulator line 678
M=D    // cpu emulator line 679
@SP    // cpu emulator line 680
M=M+1    // cpu emulator line 681
//ARG = SP-n-5    // cpu emulator line 682
@SP    // cpu emulator line 682
D=M    // cpu emulator line 683
@0    // cpu emulator line 684
D=D-A    // cpu emulator line 685
@5    // cpu emulator line 686
D=D-A    // cpu emulator line 687
@ARG    // cpu emulator line 688
M=D    // cpu emulator line 689
//LCL = SP    // cpu emulator line 690
@SP    // cpu emulator line 690
D=M    // cpu emulator line 691
@LCL    // cpu emulator line 692
M=D    // cpu emulator line 693
//goto f    // cpu emulator line 694
@$Class1.get    // cpu emulator line 694
0;JMP    // cpu emulator line 695
//(return-address)    // cpu emulator line 696
(Sys.vm:17$Class1.get$return-address)    // cpu emulator line 696
// Sys.vm:18: call Class2.get 0    // cpu emulator line 696
//push return-address    // cpu emulator line 696
@Sys.vm:18$Class2.get$return-address    // cpu emulator line 696
D=A    // cpu emulator line 697
@SP    // cpu emulator line 698
A=M    // cpu emulator line 699
M=D    // cpu emulator line 700
@SP    // cpu emulator line 701
M=M+1    // cpu emulator line 702
//push LCL    // cpu emulator line 703
@LCL    // cpu emulator line 703
D=M    // cpu emulator line 704
@SP    // cpu emulator line 705
A=M    // cpu emulator line 706
M=D    // cpu emulator line 707
@SP    // cpu emulator line 708
M=M+1    // cpu emulator line 709
//push ARG    // cpu emulator line 710
@ARG    // cpu emulator line 710
D=M    // cpu emulator line 711
@SP    // cpu emulator line 712
A=M    // cpu emulator line 713
M=D    // cpu emulator line 714
@SP    // cpu emulator line 715
M=M+1    // cpu emulator line 716
//push THIS    // cpu emulator line 717
@THIS    // cpu emulator line 717
D=M    // cpu emulator line 718
@SP    // cpu emulator line 719
A=M    // cpu emulator line 720
M=D    // cpu emulator line 721
@SP    // cpu emulator line 722
M=M+1    // cpu emulator line 723
//push THAT    // cpu emulator line 724
@THAT    // cpu emulator line 724
D=M    // cpu emulator line 725
@SP    // cpu emulator line 726
A=M    // cpu emulator line 727
M=D    // cpu emulator line 728
@SP    // cpu emulator line 729
M=M+1    // cpu emulator line 730
//ARG = SP-n-5    // cpu emulator line 731
@SP    // cpu emulator line 731
D=M    // cpu emulator line 732
@0    // cpu emulator line 733
D=D-A    // cpu emulator line 734
@5    // cpu emulator line 735
D=D-A    // cpu emulator line 736
@ARG    // cpu emulator line 737
M=D    // cpu emulator line 738
//LCL = SP    // cpu emulator line 739
@SP    // cpu emulator line 739
D=M    // cpu emulator line 740
@LCL    // cpu emulator line 741
M=D    // cpu emulator line 742
//goto f    // cpu emulator line 743
@$Class2.get    // cpu emulator line 743
0;JMP    // cpu emulator line 744
//(return-address)    // cpu emulator line 745
(Sys.vm:18$Class2.get$return-address)    // cpu emulator line 745
// Sys.vm:19: label WHILE    // cpu emulator line 745
($Class2.get$WHILE)    // cpu emulator line 745
// Sys.vm:20: goto WHILE    // cpu emulator line 745
@$Class2.get$WHILE    // cpu emulator line 745
0;JMP    // cpu emulator line 746
