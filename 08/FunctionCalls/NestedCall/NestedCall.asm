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
// Sys.vm:1: // Sys.vm for NestedCall test.    // cpu emulator line 53
// Sys.vm:2:     // cpu emulator line 53
// Sys.vm:3: // Sys.init()    // cpu emulator line 53
// Sys.vm:4: //    // cpu emulator line 53
// Sys.vm:5: // Calls Sys.main() and stores return value in temp 1.    // cpu emulator line 53
// Sys.vm:6: // Does not return.  (Enters infinite loop.)    // cpu emulator line 53
// Sys.vm:7:     // cpu emulator line 53
// Sys.vm:8: function Sys.init 0    // cpu emulator line 53
($Sys.init)    // cpu emulator line 53
// Sys.vm:9: push constant 4000	// test THIS and THAT context save    // cpu emulator line 53
@4000    // cpu emulator line 53
D=A    // cpu emulator line 54
@SP    // cpu emulator line 55
A=M    // cpu emulator line 56
M=D    // cpu emulator line 57
@SP    // cpu emulator line 58
M=M+1    // cpu emulator line 59
// Sys.vm:10: pop pointer 0    // cpu emulator line 60
@SP    // cpu emulator line 60
AM=M-1    // cpu emulator line 61
D=M    // cpu emulator line 62
@THIS    // cpu emulator line 63
M=D    // cpu emulator line 64
// Sys.vm:11: push constant 5000    // cpu emulator line 65
@5000    // cpu emulator line 65
D=A    // cpu emulator line 66
@SP    // cpu emulator line 67
A=M    // cpu emulator line 68
M=D    // cpu emulator line 69
@SP    // cpu emulator line 70
M=M+1    // cpu emulator line 71
// Sys.vm:12: pop pointer 1    // cpu emulator line 72
@SP    // cpu emulator line 72
AM=M-1    // cpu emulator line 73
D=M    // cpu emulator line 74
@THAT    // cpu emulator line 75
M=D    // cpu emulator line 76
// Sys.vm:13: call Sys.main 0    // cpu emulator line 77
//push return-address    // cpu emulator line 77
@Sys.vm:13$Sys.main$return-address    // cpu emulator line 77
D=A    // cpu emulator line 78
@SP    // cpu emulator line 79
A=M    // cpu emulator line 80
M=D    // cpu emulator line 81
@SP    // cpu emulator line 82
M=M+1    // cpu emulator line 83
//push LCL    // cpu emulator line 84
@LCL    // cpu emulator line 84
D=M    // cpu emulator line 85
@SP    // cpu emulator line 86
A=M    // cpu emulator line 87
M=D    // cpu emulator line 88
@SP    // cpu emulator line 89
M=M+1    // cpu emulator line 90
//push ARG    // cpu emulator line 91
@ARG    // cpu emulator line 91
D=M    // cpu emulator line 92
@SP    // cpu emulator line 93
A=M    // cpu emulator line 94
M=D    // cpu emulator line 95
@SP    // cpu emulator line 96
M=M+1    // cpu emulator line 97
//push THIS    // cpu emulator line 98
@THIS    // cpu emulator line 98
D=M    // cpu emulator line 99
@SP    // cpu emulator line 100
A=M    // cpu emulator line 101
M=D    // cpu emulator line 102
@SP    // cpu emulator line 103
M=M+1    // cpu emulator line 104
//push THAT    // cpu emulator line 105
@THAT    // cpu emulator line 105
D=M    // cpu emulator line 106
@SP    // cpu emulator line 107
A=M    // cpu emulator line 108
M=D    // cpu emulator line 109
@SP    // cpu emulator line 110
M=M+1    // cpu emulator line 111
//ARG = SP-n-5    // cpu emulator line 112
@SP    // cpu emulator line 112
D=M    // cpu emulator line 113
@0    // cpu emulator line 114
D=D-A    // cpu emulator line 115
@5    // cpu emulator line 116
D=D-A    // cpu emulator line 117
@ARG    // cpu emulator line 118
M=D    // cpu emulator line 119
//LCL = SP    // cpu emulator line 120
@SP    // cpu emulator line 120
D=M    // cpu emulator line 121
@LCL    // cpu emulator line 122
M=D    // cpu emulator line 123
//goto f    // cpu emulator line 124
@$Sys.main    // cpu emulator line 124
0;JMP    // cpu emulator line 125
//(return-address)    // cpu emulator line 126
(Sys.vm:13$Sys.main$return-address)    // cpu emulator line 126
// Sys.vm:14: pop temp 1    // cpu emulator line 126
    // cpu emulator line 126
@6    // cpu emulator line 127
D=A // D is now temp+value    // cpu emulator line 128
@SP    // cpu emulator line 129
A=M-1    // cpu emulator line 130
A=M // A has now the value of memory at mem(SP-1)    // cpu emulator line 131
D=D+A // this is to swap A and D    // cpu emulator line 132
A=D-A    // cpu emulator line 133
D=D-A // A and D are now swapped    // cpu emulator line 134
M=D    // cpu emulator line 135
@SP // this just decrements SP    // cpu emulator line 136
M=M-1    // cpu emulator line 137
// Sys.vm:15: label LOOP    // cpu emulator line 138
($Sys.main$LOOP)    // cpu emulator line 138
// Sys.vm:16: goto LOOP    // cpu emulator line 138
@$Sys.main$LOOP    // cpu emulator line 138
0;JMP    // cpu emulator line 139
// Sys.vm:17:     // cpu emulator line 140
// Sys.vm:18: // Sys.main()    // cpu emulator line 140
// Sys.vm:19: //    // cpu emulator line 140
// Sys.vm:20: // Sets locals 1, 2 and 3, leaving locals 0 and 4 unchanged to test    // cpu emulator line 140
// Sys.vm:21: // default local initialization to 0.  (RAM set to -1 by test setup.)    // cpu emulator line 140
// Sys.vm:22: // Calls Sys.add12(123) and stores return value (135) in temp 0.    // cpu emulator line 140
// Sys.vm:23: // Returns local 0 + local 1 + local 2 + local 3 + local 4 (456) to confirm    // cpu emulator line 140
// Sys.vm:24: // that locals were not mangled by function call.    // cpu emulator line 140
// Sys.vm:25:     // cpu emulator line 140
// Sys.vm:26: function Sys.main 5    // cpu emulator line 140
($Sys.main)    // cpu emulator line 140
@SP    // cpu emulator line 140
A=M    // cpu emulator line 141
M=0    // cpu emulator line 142
@SP    // cpu emulator line 143
M=M+1    // cpu emulator line 144
@SP    // cpu emulator line 145
A=M    // cpu emulator line 146
M=0    // cpu emulator line 147
@SP    // cpu emulator line 148
M=M+1    // cpu emulator line 149
@SP    // cpu emulator line 150
A=M    // cpu emulator line 151
M=0    // cpu emulator line 152
@SP    // cpu emulator line 153
M=M+1    // cpu emulator line 154
@SP    // cpu emulator line 155
A=M    // cpu emulator line 156
M=0    // cpu emulator line 157
@SP    // cpu emulator line 158
M=M+1    // cpu emulator line 159
@SP    // cpu emulator line 160
A=M    // cpu emulator line 161
M=0    // cpu emulator line 162
@SP    // cpu emulator line 163
M=M+1    // cpu emulator line 164
// Sys.vm:27: push constant 4001    // cpu emulator line 165
@4001    // cpu emulator line 165
D=A    // cpu emulator line 166
@SP    // cpu emulator line 167
A=M    // cpu emulator line 168
M=D    // cpu emulator line 169
@SP    // cpu emulator line 170
M=M+1    // cpu emulator line 171
// Sys.vm:28: pop pointer 0    // cpu emulator line 172
@SP    // cpu emulator line 172
AM=M-1    // cpu emulator line 173
D=M    // cpu emulator line 174
@THIS    // cpu emulator line 175
M=D    // cpu emulator line 176
// Sys.vm:29: push constant 5001    // cpu emulator line 177
@5001    // cpu emulator line 177
D=A    // cpu emulator line 178
@SP    // cpu emulator line 179
A=M    // cpu emulator line 180
M=D    // cpu emulator line 181
@SP    // cpu emulator line 182
M=M+1    // cpu emulator line 183
// Sys.vm:30: pop pointer 1    // cpu emulator line 184
@SP    // cpu emulator line 184
AM=M-1    // cpu emulator line 185
D=M    // cpu emulator line 186
@THAT    // cpu emulator line 187
M=D    // cpu emulator line 188
// Sys.vm:31: push constant 200    // cpu emulator line 189
@200    // cpu emulator line 189
D=A    // cpu emulator line 190
@SP    // cpu emulator line 191
A=M    // cpu emulator line 192
M=D    // cpu emulator line 193
@SP    // cpu emulator line 194
M=M+1    // cpu emulator line 195
// Sys.vm:32: pop local 1    // cpu emulator line 196
    // cpu emulator line 196
@LCL    // cpu emulator line 197
D=M    // cpu emulator line 198
@1    // cpu emulator line 199
D=D+A // D is now @segment+value    // cpu emulator line 200
@SP    // cpu emulator line 201
A=M-1    // cpu emulator line 202
A=M // A has now the value of memory at mem(SP-1)    // cpu emulator line 203
D=D+A // this is to swap A and D    // cpu emulator line 204
A=D-A    // cpu emulator line 205
D=D-A // A and D are now swapped    // cpu emulator line 206
M=D    // cpu emulator line 207
@SP // this just decrements SP    // cpu emulator line 208
M=M-1    // cpu emulator line 209
// Sys.vm:33: push constant 40    // cpu emulator line 210
@40    // cpu emulator line 210
D=A    // cpu emulator line 211
@SP    // cpu emulator line 212
A=M    // cpu emulator line 213
M=D    // cpu emulator line 214
@SP    // cpu emulator line 215
M=M+1    // cpu emulator line 216
// Sys.vm:34: pop local 2    // cpu emulator line 217
    // cpu emulator line 217
@LCL    // cpu emulator line 218
D=M    // cpu emulator line 219
@2    // cpu emulator line 220
D=D+A // D is now @segment+value    // cpu emulator line 221
@SP    // cpu emulator line 222
A=M-1    // cpu emulator line 223
A=M // A has now the value of memory at mem(SP-1)    // cpu emulator line 224
D=D+A // this is to swap A and D    // cpu emulator line 225
A=D-A    // cpu emulator line 226
D=D-A // A and D are now swapped    // cpu emulator line 227
M=D    // cpu emulator line 228
@SP // this just decrements SP    // cpu emulator line 229
M=M-1    // cpu emulator line 230
// Sys.vm:35: push constant 6    // cpu emulator line 231
@6    // cpu emulator line 231
D=A    // cpu emulator line 232
@SP    // cpu emulator line 233
A=M    // cpu emulator line 234
M=D    // cpu emulator line 235
@SP    // cpu emulator line 236
M=M+1    // cpu emulator line 237
// Sys.vm:36: pop local 3    // cpu emulator line 238
    // cpu emulator line 238
@LCL    // cpu emulator line 239
D=M    // cpu emulator line 240
@3    // cpu emulator line 241
D=D+A // D is now @segment+value    // cpu emulator line 242
@SP    // cpu emulator line 243
A=M-1    // cpu emulator line 244
A=M // A has now the value of memory at mem(SP-1)    // cpu emulator line 245
D=D+A // this is to swap A and D    // cpu emulator line 246
A=D-A    // cpu emulator line 247
D=D-A // A and D are now swapped    // cpu emulator line 248
M=D    // cpu emulator line 249
@SP // this just decrements SP    // cpu emulator line 250
M=M-1    // cpu emulator line 251
// Sys.vm:37: push constant 123    // cpu emulator line 252
@123    // cpu emulator line 252
D=A    // cpu emulator line 253
@SP    // cpu emulator line 254
A=M    // cpu emulator line 255
M=D    // cpu emulator line 256
@SP    // cpu emulator line 257
M=M+1    // cpu emulator line 258
// Sys.vm:38: call Sys.add12 1    // cpu emulator line 259
//push return-address    // cpu emulator line 259
@Sys.vm:38$Sys.add12$return-address    // cpu emulator line 259
D=A    // cpu emulator line 260
@SP    // cpu emulator line 261
A=M    // cpu emulator line 262
M=D    // cpu emulator line 263
@SP    // cpu emulator line 264
M=M+1    // cpu emulator line 265
//push LCL    // cpu emulator line 266
@LCL    // cpu emulator line 266
D=M    // cpu emulator line 267
@SP    // cpu emulator line 268
A=M    // cpu emulator line 269
M=D    // cpu emulator line 270
@SP    // cpu emulator line 271
M=M+1    // cpu emulator line 272
//push ARG    // cpu emulator line 273
@ARG    // cpu emulator line 273
D=M    // cpu emulator line 274
@SP    // cpu emulator line 275
A=M    // cpu emulator line 276
M=D    // cpu emulator line 277
@SP    // cpu emulator line 278
M=M+1    // cpu emulator line 279
//push THIS    // cpu emulator line 280
@THIS    // cpu emulator line 280
D=M    // cpu emulator line 281
@SP    // cpu emulator line 282
A=M    // cpu emulator line 283
M=D    // cpu emulator line 284
@SP    // cpu emulator line 285
M=M+1    // cpu emulator line 286
//push THAT    // cpu emulator line 287
@THAT    // cpu emulator line 287
D=M    // cpu emulator line 288
@SP    // cpu emulator line 289
A=M    // cpu emulator line 290
M=D    // cpu emulator line 291
@SP    // cpu emulator line 292
M=M+1    // cpu emulator line 293
//ARG = SP-n-5    // cpu emulator line 294
@SP    // cpu emulator line 294
D=M    // cpu emulator line 295
@1    // cpu emulator line 296
D=D-A    // cpu emulator line 297
@5    // cpu emulator line 298
D=D-A    // cpu emulator line 299
@ARG    // cpu emulator line 300
M=D    // cpu emulator line 301
//LCL = SP    // cpu emulator line 302
@SP    // cpu emulator line 302
D=M    // cpu emulator line 303
@LCL    // cpu emulator line 304
M=D    // cpu emulator line 305
//goto f    // cpu emulator line 306
@$Sys.add12    // cpu emulator line 306
0;JMP    // cpu emulator line 307
//(return-address)    // cpu emulator line 308
(Sys.vm:38$Sys.add12$return-address)    // cpu emulator line 308
@SP    // cpu emulator line 308
A=M-1    // cpu emulator line 309
D=M    // cpu emulator line 310
A=A-1    // cpu emulator line 311
D=M+D    // cpu emulator line 312
@SP    // cpu emulator line 313
M=M-1    // cpu emulator line 314
M=M-1    // cpu emulator line 315
A=M    // cpu emulator line 316
M=D    // cpu emulator line 317
@SP    // cpu emulator line 318
M=M+1    // cpu emulator line 319
// Sys.vm:39: pop temp 0    // cpu emulator line 320
    // cpu emulator line 320
@5    // cpu emulator line 321
D=A // D is now temp+value    // cpu emulator line 322
@SP    // cpu emulator line 323
A=M-1    // cpu emulator line 324
A=M // A has now the value of memory at mem(SP-1)    // cpu emulator line 325
D=D+A // this is to swap A and D    // cpu emulator line 326
A=D-A    // cpu emulator line 327
D=D-A // A and D are now swapped    // cpu emulator line 328
M=D    // cpu emulator line 329
@SP // this just decrements SP    // cpu emulator line 330
M=M-1    // cpu emulator line 331
// Sys.vm:40: push local 0    // cpu emulator line 332
@LCL    // cpu emulator line 332
D=M    // cpu emulator line 333
@0    // cpu emulator line 334
A=D+A    // cpu emulator line 335
D=M    // cpu emulator line 336
@SP    // cpu emulator line 337
A=M    // cpu emulator line 338
M=D    // cpu emulator line 339
@SP    // cpu emulator line 340
M=M+1    // cpu emulator line 341
// Sys.vm:41: push local 1    // cpu emulator line 342
@LCL    // cpu emulator line 342
D=M    // cpu emulator line 343
@1    // cpu emulator line 344
A=D+A    // cpu emulator line 345
D=M    // cpu emulator line 346
@SP    // cpu emulator line 347
A=M    // cpu emulator line 348
M=D    // cpu emulator line 349
@SP    // cpu emulator line 350
M=M+1    // cpu emulator line 351
// Sys.vm:42: push local 2    // cpu emulator line 352
@LCL    // cpu emulator line 352
D=M    // cpu emulator line 353
@2    // cpu emulator line 354
A=D+A    // cpu emulator line 355
D=M    // cpu emulator line 356
@SP    // cpu emulator line 357
A=M    // cpu emulator line 358
M=D    // cpu emulator line 359
@SP    // cpu emulator line 360
M=M+1    // cpu emulator line 361
// Sys.vm:43: push local 3    // cpu emulator line 362
@LCL    // cpu emulator line 362
D=M    // cpu emulator line 363
@3    // cpu emulator line 364
A=D+A    // cpu emulator line 365
D=M    // cpu emulator line 366
@SP    // cpu emulator line 367
A=M    // cpu emulator line 368
M=D    // cpu emulator line 369
@SP    // cpu emulator line 370
M=M+1    // cpu emulator line 371
// Sys.vm:44: push local 4    // cpu emulator line 372
@LCL    // cpu emulator line 372
D=M    // cpu emulator line 373
@4    // cpu emulator line 374
A=D+A    // cpu emulator line 375
D=M    // cpu emulator line 376
@SP    // cpu emulator line 377
A=M    // cpu emulator line 378
M=D    // cpu emulator line 379
@SP    // cpu emulator line 380
M=M+1    // cpu emulator line 381
// Sys.vm:45: add    // cpu emulator line 382
@SP    // cpu emulator line 382
A=M-1    // cpu emulator line 383
D=M    // cpu emulator line 384
A=A-1    // cpu emulator line 385
D=M+D    // cpu emulator line 386
@SP    // cpu emulator line 387
M=M-1    // cpu emulator line 388
M=M-1    // cpu emulator line 389
A=M    // cpu emulator line 390
M=D    // cpu emulator line 391
@SP    // cpu emulator line 392
M=M+1    // cpu emulator line 393
// Sys.vm:46: add    // cpu emulator line 394
@SP    // cpu emulator line 394
A=M-1    // cpu emulator line 395
D=M    // cpu emulator line 396
A=A-1    // cpu emulator line 397
D=M+D    // cpu emulator line 398
@SP    // cpu emulator line 399
M=M-1    // cpu emulator line 400
M=M-1    // cpu emulator line 401
A=M    // cpu emulator line 402
M=D    // cpu emulator line 403
@SP    // cpu emulator line 404
M=M+1    // cpu emulator line 405
// Sys.vm:47: add    // cpu emulator line 406
@SP    // cpu emulator line 406
A=M-1    // cpu emulator line 407
D=M    // cpu emulator line 408
A=A-1    // cpu emulator line 409
D=M+D    // cpu emulator line 410
@SP    // cpu emulator line 411
M=M-1    // cpu emulator line 412
M=M-1    // cpu emulator line 413
A=M    // cpu emulator line 414
M=D    // cpu emulator line 415
@SP    // cpu emulator line 416
M=M+1    // cpu emulator line 417
// Sys.vm:48: add    // cpu emulator line 418
@SP    // cpu emulator line 418
A=M-1    // cpu emulator line 419
D=M    // cpu emulator line 420
A=A-1    // cpu emulator line 421
D=M+D    // cpu emulator line 422
@SP    // cpu emulator line 423
M=M-1    // cpu emulator line 424
M=M-1    // cpu emulator line 425
A=M    // cpu emulator line 426
M=D    // cpu emulator line 427
@SP    // cpu emulator line 428
M=M+1    // cpu emulator line 429
// Sys.vm:49: return    // cpu emulator line 430
//FRAME=R13=LCL    // cpu emulator line 430
@LCL    // cpu emulator line 430
D=M    // cpu emulator line 431
@R13    // cpu emulator line 432
M=D    // cpu emulator line 433
//R14=RET=*(FRAME-5)    // cpu emulator line 434
@R13    // cpu emulator line 434
D=M    // cpu emulator line 435
@5    // cpu emulator line 436
A=D-A    // cpu emulator line 437
D=M    // cpu emulator line 438
@R14    // cpu emulator line 439
M=D    // cpu emulator line 440
//*arg=pop()    // cpu emulator line 441
@SP    // cpu emulator line 441
A=M-1    // cpu emulator line 442
D=M    // cpu emulator line 443
@ARG    // cpu emulator line 444
A=M    // cpu emulator line 445
M=D    // cpu emulator line 446
//SP=ARG+1    // cpu emulator line 447
@ARG    // cpu emulator line 447
D=M+1    // cpu emulator line 448
@SP    // cpu emulator line 449
M=D    // cpu emulator line 450
//THAT=*(FRAME-1)    // cpu emulator line 451
@R13    // cpu emulator line 451
A=M-1    // cpu emulator line 452
D=M    // cpu emulator line 453
@THAT    // cpu emulator line 454
M=D    // cpu emulator line 455
//THIS=*(FRAME-2)    // cpu emulator line 456
@R13    // cpu emulator line 456
D=M    // cpu emulator line 457
@2    // cpu emulator line 458
D=D-A    // cpu emulator line 459
A=D    // cpu emulator line 460
D=M    // cpu emulator line 461
@THIS    // cpu emulator line 462
M=D    // cpu emulator line 463
//ARG=*(FRAME-3)    // cpu emulator line 464
@R13    // cpu emulator line 464
D=M    // cpu emulator line 465
@3    // cpu emulator line 466
D=D-A    // cpu emulator line 467
A=D    // cpu emulator line 468
D=M    // cpu emulator line 469
@ARG    // cpu emulator line 470
M=D    // cpu emulator line 471
//LCL=*(FRAME-4)    // cpu emulator line 472
@R13    // cpu emulator line 472
D=M    // cpu emulator line 473
@4    // cpu emulator line 474
D=D-A    // cpu emulator line 475
A=D    // cpu emulator line 476
D=M    // cpu emulator line 477
@LCL    // cpu emulator line 478
M=D    // cpu emulator line 479
//goto RET    // cpu emulator line 480
@R14    // cpu emulator line 480
A=M    // cpu emulator line 481
0;JMP    // cpu emulator line 482
// Sys.vm:50:     // cpu emulator line 483
// Sys.vm:51: // Sys.add12(int n)    // cpu emulator line 483
// Sys.vm:52: //    // cpu emulator line 483
// Sys.vm:53: // Returns n+12.    // cpu emulator line 483
// Sys.vm:54:     // cpu emulator line 483
// Sys.vm:55: function Sys.add12 0    // cpu emulator line 483
($Sys.add12)    // cpu emulator line 483
@SP    // cpu emulator line 483
A=M-1    // cpu emulator line 484
D=M    // cpu emulator line 485
A=A-1    // cpu emulator line 486
D=M+D    // cpu emulator line 487
@SP    // cpu emulator line 488
M=M-1    // cpu emulator line 489
M=M-1    // cpu emulator line 490
A=M    // cpu emulator line 491
M=D    // cpu emulator line 492
@SP    // cpu emulator line 493
M=M+1    // cpu emulator line 494
// Sys.vm:56: push constant 4002    // cpu emulator line 495
@4002    // cpu emulator line 495
D=A    // cpu emulator line 496
@SP    // cpu emulator line 497
A=M    // cpu emulator line 498
M=D    // cpu emulator line 499
@SP    // cpu emulator line 500
M=M+1    // cpu emulator line 501
// Sys.vm:57: pop pointer 0    // cpu emulator line 502
@SP    // cpu emulator line 502
AM=M-1    // cpu emulator line 503
D=M    // cpu emulator line 504
@THIS    // cpu emulator line 505
M=D    // cpu emulator line 506
// Sys.vm:58: push constant 5002    // cpu emulator line 507
@5002    // cpu emulator line 507
D=A    // cpu emulator line 508
@SP    // cpu emulator line 509
A=M    // cpu emulator line 510
M=D    // cpu emulator line 511
@SP    // cpu emulator line 512
M=M+1    // cpu emulator line 513
// Sys.vm:59: pop pointer 1    // cpu emulator line 514
@SP    // cpu emulator line 514
AM=M-1    // cpu emulator line 515
D=M    // cpu emulator line 516
@THAT    // cpu emulator line 517
M=D    // cpu emulator line 518
// Sys.vm:60: push argument 0    // cpu emulator line 519
@ARG    // cpu emulator line 519
D=M    // cpu emulator line 520
@0    // cpu emulator line 521
A=D+A    // cpu emulator line 522
D=M    // cpu emulator line 523
@SP    // cpu emulator line 524
A=M    // cpu emulator line 525
M=D    // cpu emulator line 526
@SP    // cpu emulator line 527
M=M+1    // cpu emulator line 528
// Sys.vm:61: push constant 12    // cpu emulator line 529
@12    // cpu emulator line 529
D=A    // cpu emulator line 530
@SP    // cpu emulator line 531
A=M    // cpu emulator line 532
M=D    // cpu emulator line 533
@SP    // cpu emulator line 534
M=M+1    // cpu emulator line 535
// Sys.vm:62: add    // cpu emulator line 536
@SP    // cpu emulator line 536
A=M-1    // cpu emulator line 537
D=M    // cpu emulator line 538
A=A-1    // cpu emulator line 539
D=M+D    // cpu emulator line 540
@SP    // cpu emulator line 541
M=M-1    // cpu emulator line 542
M=M-1    // cpu emulator line 543
A=M    // cpu emulator line 544
M=D    // cpu emulator line 545
@SP    // cpu emulator line 546
M=M+1    // cpu emulator line 547
// Sys.vm:63: return    // cpu emulator line 548
//FRAME=R13=LCL    // cpu emulator line 548
@LCL    // cpu emulator line 548
D=M    // cpu emulator line 549
@R13    // cpu emulator line 550
M=D    // cpu emulator line 551
//R14=RET=*(FRAME-5)    // cpu emulator line 552
@R13    // cpu emulator line 552
D=M    // cpu emulator line 553
@5    // cpu emulator line 554
A=D-A    // cpu emulator line 555
D=M    // cpu emulator line 556
@R14    // cpu emulator line 557
M=D    // cpu emulator line 558
//*arg=pop()    // cpu emulator line 559
@SP    // cpu emulator line 559
A=M-1    // cpu emulator line 560
D=M    // cpu emulator line 561
@ARG    // cpu emulator line 562
A=M    // cpu emulator line 563
M=D    // cpu emulator line 564
//SP=ARG+1    // cpu emulator line 565
@ARG    // cpu emulator line 565
D=M+1    // cpu emulator line 566
@SP    // cpu emulator line 567
M=D    // cpu emulator line 568
//THAT=*(FRAME-1)    // cpu emulator line 569
@R13    // cpu emulator line 569
A=M-1    // cpu emulator line 570
D=M    // cpu emulator line 571
@THAT    // cpu emulator line 572
M=D    // cpu emulator line 573
//THIS=*(FRAME-2)    // cpu emulator line 574
@R13    // cpu emulator line 574
D=M    // cpu emulator line 575
@2    // cpu emulator line 576
D=D-A    // cpu emulator line 577
A=D    // cpu emulator line 578
D=M    // cpu emulator line 579
@THIS    // cpu emulator line 580
M=D    // cpu emulator line 581
//ARG=*(FRAME-3)    // cpu emulator line 582
@R13    // cpu emulator line 582
D=M    // cpu emulator line 583
@3    // cpu emulator line 584
D=D-A    // cpu emulator line 585
A=D    // cpu emulator line 586
D=M    // cpu emulator line 587
@ARG    // cpu emulator line 588
M=D    // cpu emulator line 589
//LCL=*(FRAME-4)    // cpu emulator line 590
@R13    // cpu emulator line 590
D=M    // cpu emulator line 591
@4    // cpu emulator line 592
D=D-A    // cpu emulator line 593
A=D    // cpu emulator line 594
D=M    // cpu emulator line 595
@LCL    // cpu emulator line 596
M=D    // cpu emulator line 597
//goto RET    // cpu emulator line 598
@R14    // cpu emulator line 598
A=M    // cpu emulator line 599
0;JMP    // cpu emulator line 600
