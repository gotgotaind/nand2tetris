// Sys.vm:1: // Sys.vm for NestedCall test.    // cpu emulator line 0
// Sys.vm:2:     // cpu emulator line 0
// Sys.vm:3: // Sys.init()    // cpu emulator line 0
// Sys.vm:4: //    // cpu emulator line 0
// Sys.vm:5: // Calls Sys.main() and stores return value in temp 1.    // cpu emulator line 0
// Sys.vm:6: // Does not return.  (Enters infinite loop.)    // cpu emulator line 0
// Sys.vm:7:     // cpu emulator line 0
// Sys.vm:8: function Sys.init 0    // cpu emulator line 0
($Sys.init)    // cpu emulator line 0
// Sys.vm:9: push constant 4000	// test THIS and THAT context save    // cpu emulator line 0
@4000    // cpu emulator line 0
D=A    // cpu emulator line 1
@SP    // cpu emulator line 2
A=M    // cpu emulator line 3
M=D    // cpu emulator line 4
@SP    // cpu emulator line 5
M=M+1    // cpu emulator line 6
// Sys.vm:10: pop pointer 0    // cpu emulator line 7
@SP    // cpu emulator line 7
AM=M-1    // cpu emulator line 8
D=M    // cpu emulator line 9
@THIS    // cpu emulator line 10
M=D    // cpu emulator line 11
// Sys.vm:11: push constant 5000    // cpu emulator line 12
@5000    // cpu emulator line 12
D=A    // cpu emulator line 13
@SP    // cpu emulator line 14
A=M    // cpu emulator line 15
M=D    // cpu emulator line 16
@SP    // cpu emulator line 17
M=M+1    // cpu emulator line 18
// Sys.vm:12: pop pointer 1    // cpu emulator line 19
@SP    // cpu emulator line 19
AM=M-1    // cpu emulator line 20
D=M    // cpu emulator line 21
@THAT    // cpu emulator line 22
M=D    // cpu emulator line 23
// Sys.vm:13: call Sys.main 0    // cpu emulator line 24
//push return-address    // cpu emulator line 24
@Sys.vm:13$Sys.main$return-address    // cpu emulator line 24
D=A    // cpu emulator line 25
@SP    // cpu emulator line 26
A=M    // cpu emulator line 27
M=D    // cpu emulator line 28
@SP    // cpu emulator line 29
M=M+1    // cpu emulator line 30
//push LCL    // cpu emulator line 31
@LCL    // cpu emulator line 31
D=M    // cpu emulator line 32
@SP    // cpu emulator line 33
A=M    // cpu emulator line 34
M=D    // cpu emulator line 35
@SP    // cpu emulator line 36
M=M+1    // cpu emulator line 37
//push ARG    // cpu emulator line 38
@ARG    // cpu emulator line 38
D=M    // cpu emulator line 39
@SP    // cpu emulator line 40
A=M    // cpu emulator line 41
M=D    // cpu emulator line 42
@SP    // cpu emulator line 43
M=M+1    // cpu emulator line 44
//push THIS    // cpu emulator line 45
@THIS    // cpu emulator line 45
D=M    // cpu emulator line 46
@SP    // cpu emulator line 47
A=M    // cpu emulator line 48
M=D    // cpu emulator line 49
@SP    // cpu emulator line 50
M=M+1    // cpu emulator line 51
//push THAT    // cpu emulator line 52
@THAT    // cpu emulator line 52
D=M    // cpu emulator line 53
@SP    // cpu emulator line 54
A=M    // cpu emulator line 55
M=D    // cpu emulator line 56
@SP    // cpu emulator line 57
M=M+1    // cpu emulator line 58
//ARG = SP-n-5    // cpu emulator line 59
@SP    // cpu emulator line 59
D=M    // cpu emulator line 60
@0    // cpu emulator line 61
D=D-A    // cpu emulator line 62
@5    // cpu emulator line 63
D=D-A    // cpu emulator line 64
@ARG    // cpu emulator line 65
M=D    // cpu emulator line 66
//LCL = SP    // cpu emulator line 67
@SP    // cpu emulator line 67
D=M    // cpu emulator line 68
@LCL    // cpu emulator line 69
M=D    // cpu emulator line 70
//goto f    // cpu emulator line 71
@$Sys.main    // cpu emulator line 71
0;JMP    // cpu emulator line 72
//(return-address)    // cpu emulator line 73
(Sys.vm:13$Sys.main$return-address)    // cpu emulator line 73
// Sys.vm:14: pop temp 1    // cpu emulator line 73
    // cpu emulator line 73
@6    // cpu emulator line 74
D=A // D is now temp+value    // cpu emulator line 75
@SP    // cpu emulator line 76
A=M-1    // cpu emulator line 77
A=M // A has now the value of memory at mem(SP-1)    // cpu emulator line 78
D=D+A // this is to swap A and D    // cpu emulator line 79
A=D-A    // cpu emulator line 80
D=D-A // A and D are now swapped    // cpu emulator line 81
M=D    // cpu emulator line 82
@SP // this just decrements SP    // cpu emulator line 83
M=M-1    // cpu emulator line 84
// Sys.vm:15: label LOOP    // cpu emulator line 85
($Sys.main$LOOP)    // cpu emulator line 85
// Sys.vm:16: goto LOOP    // cpu emulator line 85
@$Sys.main$LOOP    // cpu emulator line 85
0;JMP    // cpu emulator line 86
// Sys.vm:17:     // cpu emulator line 87
// Sys.vm:18: // Sys.main()    // cpu emulator line 87
// Sys.vm:19: //    // cpu emulator line 87
// Sys.vm:20: // Sets locals 1, 2 and 3, leaving locals 0 and 4 unchanged to test    // cpu emulator line 87
// Sys.vm:21: // default local initialization to 0.  (RAM set to -1 by test setup.)    // cpu emulator line 87
// Sys.vm:22: // Calls Sys.add12(123) and stores return value (135) in temp 0.    // cpu emulator line 87
// Sys.vm:23: // Returns local 0 + local 1 + local 2 + local 3 + local 4 (456) to confirm    // cpu emulator line 87
// Sys.vm:24: // that locals were not mangled by function call.    // cpu emulator line 87
// Sys.vm:25:     // cpu emulator line 87
// Sys.vm:26: function Sys.main 5    // cpu emulator line 87
($Sys.main)    // cpu emulator line 87
@SP    // cpu emulator line 87
A=M    // cpu emulator line 88
M=0    // cpu emulator line 89
@SP    // cpu emulator line 90
M=M+1    // cpu emulator line 91
@SP    // cpu emulator line 92
A=M    // cpu emulator line 93
M=0    // cpu emulator line 94
@SP    // cpu emulator line 95
M=M+1    // cpu emulator line 96
@SP    // cpu emulator line 97
A=M    // cpu emulator line 98
M=0    // cpu emulator line 99
@SP    // cpu emulator line 100
M=M+1    // cpu emulator line 101
@SP    // cpu emulator line 102
A=M    // cpu emulator line 103
M=0    // cpu emulator line 104
@SP    // cpu emulator line 105
M=M+1    // cpu emulator line 106
@SP    // cpu emulator line 107
A=M    // cpu emulator line 108
M=0    // cpu emulator line 109
@SP    // cpu emulator line 110
M=M+1    // cpu emulator line 111
// Sys.vm:27: push constant 4001    // cpu emulator line 112
@4001    // cpu emulator line 112
D=A    // cpu emulator line 113
@SP    // cpu emulator line 114
A=M    // cpu emulator line 115
M=D    // cpu emulator line 116
@SP    // cpu emulator line 117
M=M+1    // cpu emulator line 118
// Sys.vm:28: pop pointer 0    // cpu emulator line 119
@SP    // cpu emulator line 119
AM=M-1    // cpu emulator line 120
D=M    // cpu emulator line 121
@THIS    // cpu emulator line 122
M=D    // cpu emulator line 123
// Sys.vm:29: push constant 5001    // cpu emulator line 124
@5001    // cpu emulator line 124
D=A    // cpu emulator line 125
@SP    // cpu emulator line 126
A=M    // cpu emulator line 127
M=D    // cpu emulator line 128
@SP    // cpu emulator line 129
M=M+1    // cpu emulator line 130
// Sys.vm:30: pop pointer 1    // cpu emulator line 131
@SP    // cpu emulator line 131
AM=M-1    // cpu emulator line 132
D=M    // cpu emulator line 133
@THAT    // cpu emulator line 134
M=D    // cpu emulator line 135
// Sys.vm:31: push constant 200    // cpu emulator line 136
@200    // cpu emulator line 136
D=A    // cpu emulator line 137
@SP    // cpu emulator line 138
A=M    // cpu emulator line 139
M=D    // cpu emulator line 140
@SP    // cpu emulator line 141
M=M+1    // cpu emulator line 142
// Sys.vm:32: pop local 1    // cpu emulator line 143
    // cpu emulator line 143
@LCL    // cpu emulator line 144
D=M    // cpu emulator line 145
@1    // cpu emulator line 146
D=D+A // D is now @segment+value    // cpu emulator line 147
@SP    // cpu emulator line 148
A=M-1    // cpu emulator line 149
A=M // A has now the value of memory at mem(SP-1)    // cpu emulator line 150
D=D+A // this is to swap A and D    // cpu emulator line 151
A=D-A    // cpu emulator line 152
D=D-A // A and D are now swapped    // cpu emulator line 153
M=D    // cpu emulator line 154
@SP // this just decrements SP    // cpu emulator line 155
M=M-1    // cpu emulator line 156
// Sys.vm:33: push constant 40    // cpu emulator line 157
@40    // cpu emulator line 157
D=A    // cpu emulator line 158
@SP    // cpu emulator line 159
A=M    // cpu emulator line 160
M=D    // cpu emulator line 161
@SP    // cpu emulator line 162
M=M+1    // cpu emulator line 163
// Sys.vm:34: pop local 2    // cpu emulator line 164
    // cpu emulator line 164
@LCL    // cpu emulator line 165
D=M    // cpu emulator line 166
@2    // cpu emulator line 167
D=D+A // D is now @segment+value    // cpu emulator line 168
@SP    // cpu emulator line 169
A=M-1    // cpu emulator line 170
A=M // A has now the value of memory at mem(SP-1)    // cpu emulator line 171
D=D+A // this is to swap A and D    // cpu emulator line 172
A=D-A    // cpu emulator line 173
D=D-A // A and D are now swapped    // cpu emulator line 174
M=D    // cpu emulator line 175
@SP // this just decrements SP    // cpu emulator line 176
M=M-1    // cpu emulator line 177
// Sys.vm:35: push constant 6    // cpu emulator line 178
@6    // cpu emulator line 178
D=A    // cpu emulator line 179
@SP    // cpu emulator line 180
A=M    // cpu emulator line 181
M=D    // cpu emulator line 182
@SP    // cpu emulator line 183
M=M+1    // cpu emulator line 184
// Sys.vm:36: pop local 3    // cpu emulator line 185
    // cpu emulator line 185
@LCL    // cpu emulator line 186
D=M    // cpu emulator line 187
@3    // cpu emulator line 188
D=D+A // D is now @segment+value    // cpu emulator line 189
@SP    // cpu emulator line 190
A=M-1    // cpu emulator line 191
A=M // A has now the value of memory at mem(SP-1)    // cpu emulator line 192
D=D+A // this is to swap A and D    // cpu emulator line 193
A=D-A    // cpu emulator line 194
D=D-A // A and D are now swapped    // cpu emulator line 195
M=D    // cpu emulator line 196
@SP // this just decrements SP    // cpu emulator line 197
M=M-1    // cpu emulator line 198
// Sys.vm:37: push constant 123    // cpu emulator line 199
@123    // cpu emulator line 199
D=A    // cpu emulator line 200
@SP    // cpu emulator line 201
A=M    // cpu emulator line 202
M=D    // cpu emulator line 203
@SP    // cpu emulator line 204
M=M+1    // cpu emulator line 205
// Sys.vm:38: call Sys.add12 1    // cpu emulator line 206
//push return-address    // cpu emulator line 206
@Sys.vm:38$Sys.add12$return-address    // cpu emulator line 206
D=A    // cpu emulator line 207
@SP    // cpu emulator line 208
A=M    // cpu emulator line 209
M=D    // cpu emulator line 210
@SP    // cpu emulator line 211
M=M+1    // cpu emulator line 212
//push LCL    // cpu emulator line 213
@LCL    // cpu emulator line 213
D=M    // cpu emulator line 214
@SP    // cpu emulator line 215
A=M    // cpu emulator line 216
M=D    // cpu emulator line 217
@SP    // cpu emulator line 218
M=M+1    // cpu emulator line 219
//push ARG    // cpu emulator line 220
@ARG    // cpu emulator line 220
D=M    // cpu emulator line 221
@SP    // cpu emulator line 222
A=M    // cpu emulator line 223
M=D    // cpu emulator line 224
@SP    // cpu emulator line 225
M=M+1    // cpu emulator line 226
//push THIS    // cpu emulator line 227
@THIS    // cpu emulator line 227
D=M    // cpu emulator line 228
@SP    // cpu emulator line 229
A=M    // cpu emulator line 230
M=D    // cpu emulator line 231
@SP    // cpu emulator line 232
M=M+1    // cpu emulator line 233
//push THAT    // cpu emulator line 234
@THAT    // cpu emulator line 234
D=M    // cpu emulator line 235
@SP    // cpu emulator line 236
A=M    // cpu emulator line 237
M=D    // cpu emulator line 238
@SP    // cpu emulator line 239
M=M+1    // cpu emulator line 240
//ARG = SP-n-5    // cpu emulator line 241
@SP    // cpu emulator line 241
D=M    // cpu emulator line 242
@1    // cpu emulator line 243
D=D-A    // cpu emulator line 244
@5    // cpu emulator line 245
D=D-A    // cpu emulator line 246
@ARG    // cpu emulator line 247
M=D    // cpu emulator line 248
//LCL = SP    // cpu emulator line 249
@SP    // cpu emulator line 249
D=M    // cpu emulator line 250
@LCL    // cpu emulator line 251
M=D    // cpu emulator line 252
//goto f    // cpu emulator line 253
@$Sys.add12    // cpu emulator line 253
0;JMP    // cpu emulator line 254
//(return-address)    // cpu emulator line 255
(Sys.vm:38$Sys.add12$return-address)    // cpu emulator line 255
@SP    // cpu emulator line 255
A=M-1    // cpu emulator line 256
D=M    // cpu emulator line 257
A=A-1    // cpu emulator line 258
D=M+D    // cpu emulator line 259
@SP    // cpu emulator line 260
M=M-1    // cpu emulator line 261
M=M-1    // cpu emulator line 262
A=M    // cpu emulator line 263
M=D    // cpu emulator line 264
@SP    // cpu emulator line 265
M=M+1    // cpu emulator line 266
// Sys.vm:39: pop temp 0    // cpu emulator line 267
    // cpu emulator line 267
@5    // cpu emulator line 268
D=A // D is now temp+value    // cpu emulator line 269
@SP    // cpu emulator line 270
A=M-1    // cpu emulator line 271
A=M // A has now the value of memory at mem(SP-1)    // cpu emulator line 272
D=D+A // this is to swap A and D    // cpu emulator line 273
A=D-A    // cpu emulator line 274
D=D-A // A and D are now swapped    // cpu emulator line 275
M=D    // cpu emulator line 276
@SP // this just decrements SP    // cpu emulator line 277
M=M-1    // cpu emulator line 278
// Sys.vm:40: push local 0    // cpu emulator line 279
@LCL    // cpu emulator line 279
D=M    // cpu emulator line 280
@0    // cpu emulator line 281
A=D+A    // cpu emulator line 282
D=M    // cpu emulator line 283
@SP    // cpu emulator line 284
A=M    // cpu emulator line 285
M=D    // cpu emulator line 286
@SP    // cpu emulator line 287
M=M+1    // cpu emulator line 288
// Sys.vm:41: push local 1    // cpu emulator line 289
@LCL    // cpu emulator line 289
D=M    // cpu emulator line 290
@1    // cpu emulator line 291
A=D+A    // cpu emulator line 292
D=M    // cpu emulator line 293
@SP    // cpu emulator line 294
A=M    // cpu emulator line 295
M=D    // cpu emulator line 296
@SP    // cpu emulator line 297
M=M+1    // cpu emulator line 298
// Sys.vm:42: push local 2    // cpu emulator line 299
@LCL    // cpu emulator line 299
D=M    // cpu emulator line 300
@2    // cpu emulator line 301
A=D+A    // cpu emulator line 302
D=M    // cpu emulator line 303
@SP    // cpu emulator line 304
A=M    // cpu emulator line 305
M=D    // cpu emulator line 306
@SP    // cpu emulator line 307
M=M+1    // cpu emulator line 308
// Sys.vm:43: push local 3    // cpu emulator line 309
@LCL    // cpu emulator line 309
D=M    // cpu emulator line 310
@3    // cpu emulator line 311
A=D+A    // cpu emulator line 312
D=M    // cpu emulator line 313
@SP    // cpu emulator line 314
A=M    // cpu emulator line 315
M=D    // cpu emulator line 316
@SP    // cpu emulator line 317
M=M+1    // cpu emulator line 318
// Sys.vm:44: push local 4    // cpu emulator line 319
@LCL    // cpu emulator line 319
D=M    // cpu emulator line 320
@4    // cpu emulator line 321
A=D+A    // cpu emulator line 322
D=M    // cpu emulator line 323
@SP    // cpu emulator line 324
A=M    // cpu emulator line 325
M=D    // cpu emulator line 326
@SP    // cpu emulator line 327
M=M+1    // cpu emulator line 328
// Sys.vm:45: add    // cpu emulator line 329
@SP    // cpu emulator line 329
A=M-1    // cpu emulator line 330
D=M    // cpu emulator line 331
A=A-1    // cpu emulator line 332
D=M+D    // cpu emulator line 333
@SP    // cpu emulator line 334
M=M-1    // cpu emulator line 335
M=M-1    // cpu emulator line 336
A=M    // cpu emulator line 337
M=D    // cpu emulator line 338
@SP    // cpu emulator line 339
M=M+1    // cpu emulator line 340
// Sys.vm:46: add    // cpu emulator line 341
@SP    // cpu emulator line 341
A=M-1    // cpu emulator line 342
D=M    // cpu emulator line 343
A=A-1    // cpu emulator line 344
D=M+D    // cpu emulator line 345
@SP    // cpu emulator line 346
M=M-1    // cpu emulator line 347
M=M-1    // cpu emulator line 348
A=M    // cpu emulator line 349
M=D    // cpu emulator line 350
@SP    // cpu emulator line 351
M=M+1    // cpu emulator line 352
// Sys.vm:47: add    // cpu emulator line 353
@SP    // cpu emulator line 353
A=M-1    // cpu emulator line 354
D=M    // cpu emulator line 355
A=A-1    // cpu emulator line 356
D=M+D    // cpu emulator line 357
@SP    // cpu emulator line 358
M=M-1    // cpu emulator line 359
M=M-1    // cpu emulator line 360
A=M    // cpu emulator line 361
M=D    // cpu emulator line 362
@SP    // cpu emulator line 363
M=M+1    // cpu emulator line 364
// Sys.vm:48: add    // cpu emulator line 365
@SP    // cpu emulator line 365
A=M-1    // cpu emulator line 366
D=M    // cpu emulator line 367
A=A-1    // cpu emulator line 368
D=M+D    // cpu emulator line 369
@SP    // cpu emulator line 370
M=M-1    // cpu emulator line 371
M=M-1    // cpu emulator line 372
A=M    // cpu emulator line 373
M=D    // cpu emulator line 374
@SP    // cpu emulator line 375
M=M+1    // cpu emulator line 376
// Sys.vm:49: return    // cpu emulator line 377
//FRAME=R13=LCL    // cpu emulator line 377
@LCL    // cpu emulator line 377
D=M    // cpu emulator line 378
@R13    // cpu emulator line 379
M=D    // cpu emulator line 380
//R14=RET=*(FRAME-5)    // cpu emulator line 381
@R13    // cpu emulator line 381
D=M    // cpu emulator line 382
@5    // cpu emulator line 383
A=D-A    // cpu emulator line 384
D=M    // cpu emulator line 385
@R14    // cpu emulator line 386
M=D    // cpu emulator line 387
//*arg=pop()    // cpu emulator line 388
@SP    // cpu emulator line 388
A=M-1    // cpu emulator line 389
D=M    // cpu emulator line 390
@ARG    // cpu emulator line 391
A=M    // cpu emulator line 392
M=D    // cpu emulator line 393
//SP=ARG+1    // cpu emulator line 394
@ARG    // cpu emulator line 394
D=M+1    // cpu emulator line 395
@SP    // cpu emulator line 396
M=D    // cpu emulator line 397
//THAT=*(FRAME-1)    // cpu emulator line 398
@R13    // cpu emulator line 398
A=M-1    // cpu emulator line 399
D=M    // cpu emulator line 400
@THAT    // cpu emulator line 401
M=D    // cpu emulator line 402
//THIS=*(FRAME-2)    // cpu emulator line 403
@R13    // cpu emulator line 403
D=M    // cpu emulator line 404
@2    // cpu emulator line 405
D=D-A    // cpu emulator line 406
A=D    // cpu emulator line 407
D=M    // cpu emulator line 408
@THIS    // cpu emulator line 409
M=D    // cpu emulator line 410
//ARG=*(FRAME-3)    // cpu emulator line 411
@R13    // cpu emulator line 411
D=M    // cpu emulator line 412
@3    // cpu emulator line 413
D=D-A    // cpu emulator line 414
A=D    // cpu emulator line 415
D=M    // cpu emulator line 416
@ARG    // cpu emulator line 417
M=D    // cpu emulator line 418
//LCL=*(FRAME-4)    // cpu emulator line 419
@R13    // cpu emulator line 419
D=M    // cpu emulator line 420
@4    // cpu emulator line 421
D=D-A    // cpu emulator line 422
A=D    // cpu emulator line 423
D=M    // cpu emulator line 424
@LCL    // cpu emulator line 425
M=D    // cpu emulator line 426
//goto RET    // cpu emulator line 427
@R14    // cpu emulator line 427
A=M    // cpu emulator line 428
0;JMP    // cpu emulator line 429
// Sys.vm:50:     // cpu emulator line 430
// Sys.vm:51: // Sys.add12(int n)    // cpu emulator line 430
// Sys.vm:52: //    // cpu emulator line 430
// Sys.vm:53: // Returns n+12.    // cpu emulator line 430
// Sys.vm:54:     // cpu emulator line 430
// Sys.vm:55: function Sys.add12 0    // cpu emulator line 430
($Sys.add12)    // cpu emulator line 430
@SP    // cpu emulator line 430
A=M-1    // cpu emulator line 431
D=M    // cpu emulator line 432
A=A-1    // cpu emulator line 433
D=M+D    // cpu emulator line 434
@SP    // cpu emulator line 435
M=M-1    // cpu emulator line 436
M=M-1    // cpu emulator line 437
A=M    // cpu emulator line 438
M=D    // cpu emulator line 439
@SP    // cpu emulator line 440
M=M+1    // cpu emulator line 441
// Sys.vm:56: push constant 4002    // cpu emulator line 442
@4002    // cpu emulator line 442
D=A    // cpu emulator line 443
@SP    // cpu emulator line 444
A=M    // cpu emulator line 445
M=D    // cpu emulator line 446
@SP    // cpu emulator line 447
M=M+1    // cpu emulator line 448
// Sys.vm:57: pop pointer 0    // cpu emulator line 449
@SP    // cpu emulator line 449
AM=M-1    // cpu emulator line 450
D=M    // cpu emulator line 451
@THIS    // cpu emulator line 452
M=D    // cpu emulator line 453
// Sys.vm:58: push constant 5002    // cpu emulator line 454
@5002    // cpu emulator line 454
D=A    // cpu emulator line 455
@SP    // cpu emulator line 456
A=M    // cpu emulator line 457
M=D    // cpu emulator line 458
@SP    // cpu emulator line 459
M=M+1    // cpu emulator line 460
// Sys.vm:59: pop pointer 1    // cpu emulator line 461
@SP    // cpu emulator line 461
AM=M-1    // cpu emulator line 462
D=M    // cpu emulator line 463
@THAT    // cpu emulator line 464
M=D    // cpu emulator line 465
// Sys.vm:60: push argument 0    // cpu emulator line 466
@ARG    // cpu emulator line 466
D=M    // cpu emulator line 467
@0    // cpu emulator line 468
A=D+A    // cpu emulator line 469
D=M    // cpu emulator line 470
@SP    // cpu emulator line 471
A=M    // cpu emulator line 472
M=D    // cpu emulator line 473
@SP    // cpu emulator line 474
M=M+1    // cpu emulator line 475
// Sys.vm:61: push constant 12    // cpu emulator line 476
@12    // cpu emulator line 476
D=A    // cpu emulator line 477
@SP    // cpu emulator line 478
A=M    // cpu emulator line 479
M=D    // cpu emulator line 480
@SP    // cpu emulator line 481
M=M+1    // cpu emulator line 482
// Sys.vm:62: add    // cpu emulator line 483
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
// Sys.vm:63: return    // cpu emulator line 495
//FRAME=R13=LCL    // cpu emulator line 495
@LCL    // cpu emulator line 495
D=M    // cpu emulator line 496
@R13    // cpu emulator line 497
M=D    // cpu emulator line 498
//R14=RET=*(FRAME-5)    // cpu emulator line 499
@R13    // cpu emulator line 499
D=M    // cpu emulator line 500
@5    // cpu emulator line 501
A=D-A    // cpu emulator line 502
D=M    // cpu emulator line 503
@R14    // cpu emulator line 504
M=D    // cpu emulator line 505
//*arg=pop()    // cpu emulator line 506
@SP    // cpu emulator line 506
A=M-1    // cpu emulator line 507
D=M    // cpu emulator line 508
@ARG    // cpu emulator line 509
A=M    // cpu emulator line 510
M=D    // cpu emulator line 511
//SP=ARG+1    // cpu emulator line 512
@ARG    // cpu emulator line 512
D=M+1    // cpu emulator line 513
@SP    // cpu emulator line 514
M=D    // cpu emulator line 515
//THAT=*(FRAME-1)    // cpu emulator line 516
@R13    // cpu emulator line 516
A=M-1    // cpu emulator line 517
D=M    // cpu emulator line 518
@THAT    // cpu emulator line 519
M=D    // cpu emulator line 520
//THIS=*(FRAME-2)    // cpu emulator line 521
@R13    // cpu emulator line 521
D=M    // cpu emulator line 522
@2    // cpu emulator line 523
D=D-A    // cpu emulator line 524
A=D    // cpu emulator line 525
D=M    // cpu emulator line 526
@THIS    // cpu emulator line 527
M=D    // cpu emulator line 528
//ARG=*(FRAME-3)    // cpu emulator line 529
@R13    // cpu emulator line 529
D=M    // cpu emulator line 530
@3    // cpu emulator line 531
D=D-A    // cpu emulator line 532
A=D    // cpu emulator line 533
D=M    // cpu emulator line 534
@ARG    // cpu emulator line 535
M=D    // cpu emulator line 536
//LCL=*(FRAME-4)    // cpu emulator line 537
@R13    // cpu emulator line 537
D=M    // cpu emulator line 538
@4    // cpu emulator line 539
D=D-A    // cpu emulator line 540
A=D    // cpu emulator line 541
D=M    // cpu emulator line 542
@LCL    // cpu emulator line 543
M=D    // cpu emulator line 544
//goto RET    // cpu emulator line 545
@R14    // cpu emulator line 545
A=M    // cpu emulator line 546
0;JMP    // cpu emulator line 547
