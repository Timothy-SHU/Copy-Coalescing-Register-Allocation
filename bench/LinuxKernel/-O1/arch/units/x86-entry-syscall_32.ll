; ModuleID = 'arch/x86/entry/syscall_32.c'
source_filename = "arch/x86/entry/syscall_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @ia32_sys_call(ptr noundef %regs, i32 noundef %nr) #0 align 16 !dbg !11 {
entry:
  %retval = alloca i64, align 8
  %regs.addr = alloca ptr, align 8
  %nr.addr = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !79, metadata !DIExpression()), !dbg !81
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !80, metadata !DIExpression()), !dbg !82
  %0 = load i32, ptr %nr.addr, align 4, !dbg !83
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
    i32 4, label %sw.bb7
    i32 5, label %sw.bb9
    i32 6, label %sw.bb11
    i32 7, label %sw.bb13
    i32 8, label %sw.bb15
    i32 9, label %sw.bb17
    i32 10, label %sw.bb19
    i32 11, label %sw.bb21
    i32 12, label %sw.bb23
    i32 13, label %sw.bb25
    i32 14, label %sw.bb27
    i32 15, label %sw.bb29
    i32 16, label %sw.bb31
    i32 17, label %sw.bb33
    i32 18, label %sw.bb35
    i32 19, label %sw.bb37
    i32 20, label %sw.bb39
    i32 21, label %sw.bb41
    i32 22, label %sw.bb43
    i32 23, label %sw.bb45
    i32 24, label %sw.bb47
    i32 25, label %sw.bb49
    i32 26, label %sw.bb51
    i32 27, label %sw.bb53
    i32 28, label %sw.bb55
    i32 29, label %sw.bb57
    i32 30, label %sw.bb59
    i32 31, label %sw.bb61
    i32 32, label %sw.bb63
    i32 33, label %sw.bb65
    i32 34, label %sw.bb67
    i32 35, label %sw.bb69
    i32 36, label %sw.bb71
    i32 37, label %sw.bb73
    i32 38, label %sw.bb75
    i32 39, label %sw.bb77
    i32 40, label %sw.bb79
    i32 41, label %sw.bb81
    i32 42, label %sw.bb83
    i32 43, label %sw.bb85
    i32 44, label %sw.bb87
    i32 45, label %sw.bb89
    i32 46, label %sw.bb91
    i32 47, label %sw.bb93
    i32 48, label %sw.bb95
    i32 49, label %sw.bb97
    i32 50, label %sw.bb99
    i32 51, label %sw.bb101
    i32 52, label %sw.bb103
    i32 53, label %sw.bb105
    i32 54, label %sw.bb107
    i32 55, label %sw.bb109
    i32 56, label %sw.bb111
    i32 57, label %sw.bb113
    i32 58, label %sw.bb115
    i32 59, label %sw.bb117
    i32 60, label %sw.bb119
    i32 61, label %sw.bb121
    i32 62, label %sw.bb123
    i32 63, label %sw.bb125
    i32 64, label %sw.bb127
    i32 65, label %sw.bb129
    i32 66, label %sw.bb131
    i32 67, label %sw.bb133
    i32 68, label %sw.bb135
    i32 69, label %sw.bb137
    i32 70, label %sw.bb139
    i32 71, label %sw.bb141
    i32 72, label %sw.bb143
    i32 73, label %sw.bb145
    i32 74, label %sw.bb147
    i32 75, label %sw.bb149
    i32 76, label %sw.bb151
    i32 77, label %sw.bb153
    i32 78, label %sw.bb155
    i32 79, label %sw.bb157
    i32 80, label %sw.bb159
    i32 81, label %sw.bb161
    i32 82, label %sw.bb163
    i32 83, label %sw.bb165
    i32 84, label %sw.bb167
    i32 85, label %sw.bb169
    i32 86, label %sw.bb171
    i32 87, label %sw.bb173
    i32 88, label %sw.bb175
    i32 89, label %sw.bb177
    i32 90, label %sw.bb179
    i32 91, label %sw.bb181
    i32 92, label %sw.bb183
    i32 93, label %sw.bb185
    i32 94, label %sw.bb187
    i32 95, label %sw.bb189
    i32 96, label %sw.bb191
    i32 97, label %sw.bb193
    i32 98, label %sw.bb195
    i32 99, label %sw.bb197
    i32 100, label %sw.bb199
    i32 101, label %sw.bb201
    i32 102, label %sw.bb203
    i32 103, label %sw.bb205
    i32 104, label %sw.bb207
    i32 105, label %sw.bb209
    i32 106, label %sw.bb211
    i32 107, label %sw.bb213
    i32 108, label %sw.bb215
    i32 109, label %sw.bb217
    i32 110, label %sw.bb219
    i32 111, label %sw.bb221
    i32 112, label %sw.bb223
    i32 113, label %sw.bb225
    i32 114, label %sw.bb227
    i32 115, label %sw.bb229
    i32 116, label %sw.bb231
    i32 117, label %sw.bb233
    i32 118, label %sw.bb235
    i32 119, label %sw.bb237
    i32 120, label %sw.bb239
    i32 121, label %sw.bb241
    i32 122, label %sw.bb243
    i32 123, label %sw.bb245
    i32 124, label %sw.bb247
    i32 125, label %sw.bb249
    i32 126, label %sw.bb251
    i32 127, label %sw.bb253
    i32 128, label %sw.bb255
    i32 129, label %sw.bb257
    i32 130, label %sw.bb259
    i32 131, label %sw.bb261
    i32 132, label %sw.bb263
    i32 133, label %sw.bb265
    i32 134, label %sw.bb267
    i32 135, label %sw.bb269
    i32 136, label %sw.bb271
    i32 137, label %sw.bb273
    i32 138, label %sw.bb275
    i32 139, label %sw.bb277
    i32 140, label %sw.bb279
    i32 141, label %sw.bb281
    i32 142, label %sw.bb283
    i32 143, label %sw.bb285
    i32 144, label %sw.bb287
    i32 145, label %sw.bb289
    i32 146, label %sw.bb291
    i32 147, label %sw.bb293
    i32 148, label %sw.bb295
    i32 149, label %sw.bb297
    i32 150, label %sw.bb299
    i32 151, label %sw.bb301
    i32 152, label %sw.bb303
    i32 153, label %sw.bb305
    i32 154, label %sw.bb307
    i32 155, label %sw.bb309
    i32 156, label %sw.bb311
    i32 157, label %sw.bb313
    i32 158, label %sw.bb315
    i32 159, label %sw.bb317
    i32 160, label %sw.bb319
    i32 161, label %sw.bb321
    i32 162, label %sw.bb323
    i32 163, label %sw.bb325
    i32 164, label %sw.bb327
    i32 165, label %sw.bb329
    i32 166, label %sw.bb331
    i32 167, label %sw.bb333
    i32 168, label %sw.bb335
    i32 169, label %sw.bb337
    i32 170, label %sw.bb339
    i32 171, label %sw.bb341
    i32 172, label %sw.bb343
    i32 173, label %sw.bb345
    i32 174, label %sw.bb347
    i32 175, label %sw.bb349
    i32 176, label %sw.bb351
    i32 177, label %sw.bb353
    i32 178, label %sw.bb355
    i32 179, label %sw.bb357
    i32 180, label %sw.bb359
    i32 181, label %sw.bb361
    i32 182, label %sw.bb363
    i32 183, label %sw.bb365
    i32 184, label %sw.bb367
    i32 185, label %sw.bb369
    i32 186, label %sw.bb371
    i32 187, label %sw.bb373
    i32 188, label %sw.bb375
    i32 189, label %sw.bb377
    i32 190, label %sw.bb379
    i32 191, label %sw.bb381
    i32 192, label %sw.bb383
    i32 193, label %sw.bb385
    i32 194, label %sw.bb387
    i32 195, label %sw.bb389
    i32 196, label %sw.bb391
    i32 197, label %sw.bb393
    i32 198, label %sw.bb395
    i32 199, label %sw.bb397
    i32 200, label %sw.bb399
    i32 201, label %sw.bb401
    i32 202, label %sw.bb403
    i32 203, label %sw.bb405
    i32 204, label %sw.bb407
    i32 205, label %sw.bb409
    i32 206, label %sw.bb411
    i32 207, label %sw.bb413
    i32 208, label %sw.bb415
    i32 209, label %sw.bb417
    i32 210, label %sw.bb419
    i32 211, label %sw.bb421
    i32 212, label %sw.bb423
    i32 213, label %sw.bb425
    i32 214, label %sw.bb427
    i32 215, label %sw.bb429
    i32 216, label %sw.bb431
    i32 217, label %sw.bb433
    i32 218, label %sw.bb435
    i32 219, label %sw.bb437
    i32 220, label %sw.bb439
    i32 221, label %sw.bb441
    i32 222, label %sw.bb443
    i32 223, label %sw.bb445
    i32 224, label %sw.bb447
    i32 225, label %sw.bb449
    i32 226, label %sw.bb451
    i32 227, label %sw.bb453
    i32 228, label %sw.bb455
    i32 229, label %sw.bb457
    i32 230, label %sw.bb459
    i32 231, label %sw.bb461
    i32 232, label %sw.bb463
    i32 233, label %sw.bb465
    i32 234, label %sw.bb467
    i32 235, label %sw.bb469
    i32 236, label %sw.bb471
    i32 237, label %sw.bb473
    i32 238, label %sw.bb475
    i32 239, label %sw.bb477
    i32 240, label %sw.bb479
    i32 241, label %sw.bb481
    i32 242, label %sw.bb483
    i32 243, label %sw.bb485
    i32 244, label %sw.bb487
    i32 245, label %sw.bb489
    i32 246, label %sw.bb491
    i32 247, label %sw.bb493
    i32 248, label %sw.bb495
    i32 249, label %sw.bb497
    i32 250, label %sw.bb499
    i32 251, label %sw.bb501
    i32 252, label %sw.bb503
    i32 253, label %sw.bb505
    i32 254, label %sw.bb507
    i32 255, label %sw.bb509
    i32 256, label %sw.bb511
    i32 257, label %sw.bb513
    i32 258, label %sw.bb515
    i32 259, label %sw.bb517
    i32 260, label %sw.bb519
    i32 261, label %sw.bb521
    i32 262, label %sw.bb523
    i32 263, label %sw.bb525
    i32 264, label %sw.bb527
    i32 265, label %sw.bb529
    i32 266, label %sw.bb531
    i32 267, label %sw.bb533
    i32 268, label %sw.bb535
    i32 269, label %sw.bb537
    i32 270, label %sw.bb539
    i32 271, label %sw.bb541
    i32 272, label %sw.bb543
    i32 273, label %sw.bb545
    i32 274, label %sw.bb547
    i32 275, label %sw.bb549
    i32 276, label %sw.bb551
    i32 277, label %sw.bb553
    i32 278, label %sw.bb555
    i32 279, label %sw.bb557
    i32 280, label %sw.bb559
    i32 281, label %sw.bb561
    i32 282, label %sw.bb563
    i32 283, label %sw.bb565
    i32 284, label %sw.bb567
    i32 285, label %sw.bb569
    i32 286, label %sw.bb571
    i32 287, label %sw.bb573
    i32 288, label %sw.bb575
    i32 289, label %sw.bb577
    i32 290, label %sw.bb579
    i32 291, label %sw.bb581
    i32 292, label %sw.bb583
    i32 293, label %sw.bb585
    i32 294, label %sw.bb587
    i32 295, label %sw.bb589
    i32 296, label %sw.bb591
    i32 297, label %sw.bb593
    i32 298, label %sw.bb595
    i32 299, label %sw.bb597
    i32 300, label %sw.bb599
    i32 301, label %sw.bb601
    i32 302, label %sw.bb603
    i32 303, label %sw.bb605
    i32 304, label %sw.bb607
    i32 305, label %sw.bb609
    i32 306, label %sw.bb611
    i32 307, label %sw.bb613
    i32 308, label %sw.bb615
    i32 309, label %sw.bb617
    i32 310, label %sw.bb619
    i32 311, label %sw.bb621
    i32 312, label %sw.bb623
    i32 313, label %sw.bb625
    i32 314, label %sw.bb627
    i32 315, label %sw.bb629
    i32 316, label %sw.bb631
    i32 317, label %sw.bb633
    i32 318, label %sw.bb635
    i32 319, label %sw.bb637
    i32 320, label %sw.bb639
    i32 321, label %sw.bb641
    i32 322, label %sw.bb643
    i32 323, label %sw.bb645
    i32 324, label %sw.bb647
    i32 325, label %sw.bb649
    i32 326, label %sw.bb651
    i32 327, label %sw.bb653
    i32 328, label %sw.bb655
    i32 329, label %sw.bb657
    i32 330, label %sw.bb659
    i32 331, label %sw.bb661
    i32 332, label %sw.bb663
    i32 333, label %sw.bb665
    i32 334, label %sw.bb667
    i32 335, label %sw.bb669
    i32 336, label %sw.bb671
    i32 337, label %sw.bb673
    i32 338, label %sw.bb675
    i32 339, label %sw.bb677
    i32 340, label %sw.bb679
    i32 341, label %sw.bb681
    i32 342, label %sw.bb683
    i32 343, label %sw.bb685
    i32 344, label %sw.bb687
    i32 345, label %sw.bb689
    i32 346, label %sw.bb691
    i32 347, label %sw.bb693
    i32 348, label %sw.bb695
    i32 349, label %sw.bb697
    i32 350, label %sw.bb699
    i32 351, label %sw.bb701
    i32 352, label %sw.bb703
    i32 353, label %sw.bb705
    i32 354, label %sw.bb707
    i32 355, label %sw.bb709
    i32 356, label %sw.bb711
    i32 357, label %sw.bb713
    i32 358, label %sw.bb715
    i32 359, label %sw.bb717
    i32 360, label %sw.bb719
    i32 361, label %sw.bb721
    i32 362, label %sw.bb723
    i32 363, label %sw.bb725
    i32 364, label %sw.bb727
    i32 365, label %sw.bb729
    i32 366, label %sw.bb731
    i32 367, label %sw.bb733
    i32 368, label %sw.bb735
    i32 369, label %sw.bb737
    i32 370, label %sw.bb739
    i32 371, label %sw.bb741
    i32 372, label %sw.bb743
    i32 373, label %sw.bb745
    i32 374, label %sw.bb747
    i32 375, label %sw.bb749
    i32 376, label %sw.bb751
    i32 377, label %sw.bb753
    i32 378, label %sw.bb755
    i32 379, label %sw.bb757
    i32 380, label %sw.bb759
    i32 381, label %sw.bb761
    i32 382, label %sw.bb763
    i32 383, label %sw.bb765
    i32 384, label %sw.bb767
    i32 385, label %sw.bb769
    i32 386, label %sw.bb771
    i32 387, label %sw.bb773
    i32 388, label %sw.bb775
    i32 389, label %sw.bb777
    i32 390, label %sw.bb779
    i32 391, label %sw.bb781
    i32 392, label %sw.bb783
    i32 393, label %sw.bb785
    i32 394, label %sw.bb787
    i32 395, label %sw.bb789
    i32 396, label %sw.bb791
    i32 397, label %sw.bb793
    i32 398, label %sw.bb795
    i32 399, label %sw.bb797
    i32 400, label %sw.bb799
    i32 401, label %sw.bb801
    i32 402, label %sw.bb803
    i32 403, label %sw.bb805
    i32 404, label %sw.bb807
    i32 405, label %sw.bb809
    i32 406, label %sw.bb811
    i32 407, label %sw.bb813
    i32 408, label %sw.bb815
    i32 409, label %sw.bb817
    i32 410, label %sw.bb819
    i32 411, label %sw.bb821
    i32 412, label %sw.bb823
    i32 413, label %sw.bb825
    i32 414, label %sw.bb827
    i32 415, label %sw.bb829
    i32 416, label %sw.bb831
    i32 417, label %sw.bb833
    i32 418, label %sw.bb835
    i32 419, label %sw.bb837
    i32 420, label %sw.bb839
    i32 421, label %sw.bb841
    i32 422, label %sw.bb843
    i32 423, label %sw.bb845
    i32 424, label %sw.bb847
    i32 425, label %sw.bb849
    i32 426, label %sw.bb851
    i32 427, label %sw.bb853
    i32 428, label %sw.bb855
    i32 429, label %sw.bb857
    i32 430, label %sw.bb859
    i32 431, label %sw.bb861
    i32 432, label %sw.bb863
    i32 433, label %sw.bb865
    i32 434, label %sw.bb867
    i32 435, label %sw.bb869
    i32 436, label %sw.bb871
    i32 437, label %sw.bb873
    i32 438, label %sw.bb875
    i32 439, label %sw.bb877
    i32 440, label %sw.bb879
    i32 441, label %sw.bb881
    i32 442, label %sw.bb883
    i32 443, label %sw.bb885
    i32 444, label %sw.bb887
    i32 445, label %sw.bb889
    i32 446, label %sw.bb891
    i32 447, label %sw.bb893
    i32 448, label %sw.bb895
    i32 449, label %sw.bb897
    i32 450, label %sw.bb899
    i32 451, label %sw.bb901
    i32 452, label %sw.bb903
  ], !dbg !84

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !85
  %call = call i64 @__ia32_sys_restart_syscall(ptr noundef %1) #3, !dbg !85
  store i64 %call, ptr %retval, align 8, !dbg !85
  br label %return, !dbg !85

sw.bb1:                                           ; preds = %entry
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !89
  %call2 = call i64 @__ia32_sys_exit(ptr noundef %2) #3, !dbg !89
  store i64 %call2, ptr %retval, align 8, !dbg !89
  br label %return, !dbg !89

sw.bb3:                                           ; preds = %entry
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !90
  %call4 = call i64 @__ia32_sys_fork(ptr noundef %3) #3, !dbg !90
  store i64 %call4, ptr %retval, align 8, !dbg !90
  br label %return, !dbg !90

sw.bb5:                                           ; preds = %entry
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !91
  %call6 = call i64 @__ia32_sys_read(ptr noundef %4) #3, !dbg !91
  store i64 %call6, ptr %retval, align 8, !dbg !91
  br label %return, !dbg !91

sw.bb7:                                           ; preds = %entry
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !92
  %call8 = call i64 @__ia32_sys_write(ptr noundef %5) #3, !dbg !92
  store i64 %call8, ptr %retval, align 8, !dbg !92
  br label %return, !dbg !92

sw.bb9:                                           ; preds = %entry
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !93
  %call10 = call i64 @__ia32_compat_sys_open(ptr noundef %6) #3, !dbg !93
  store i64 %call10, ptr %retval, align 8, !dbg !93
  br label %return, !dbg !93

sw.bb11:                                          ; preds = %entry
  %7 = load ptr, ptr %regs.addr, align 8, !dbg !94
  %call12 = call i64 @__ia32_sys_close(ptr noundef %7) #3, !dbg !94
  store i64 %call12, ptr %retval, align 8, !dbg !94
  br label %return, !dbg !94

sw.bb13:                                          ; preds = %entry
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !95
  %call14 = call i64 @__ia32_sys_waitpid(ptr noundef %8) #3, !dbg !95
  store i64 %call14, ptr %retval, align 8, !dbg !95
  br label %return, !dbg !95

sw.bb15:                                          ; preds = %entry
  %9 = load ptr, ptr %regs.addr, align 8, !dbg !96
  %call16 = call i64 @__ia32_sys_creat(ptr noundef %9) #3, !dbg !96
  store i64 %call16, ptr %retval, align 8, !dbg !96
  br label %return, !dbg !96

sw.bb17:                                          ; preds = %entry
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !97
  %call18 = call i64 @__ia32_sys_link(ptr noundef %10) #3, !dbg !97
  store i64 %call18, ptr %retval, align 8, !dbg !97
  br label %return, !dbg !97

sw.bb19:                                          ; preds = %entry
  %11 = load ptr, ptr %regs.addr, align 8, !dbg !98
  %call20 = call i64 @__ia32_sys_unlink(ptr noundef %11) #3, !dbg !98
  store i64 %call20, ptr %retval, align 8, !dbg !98
  br label %return, !dbg !98

sw.bb21:                                          ; preds = %entry
  %12 = load ptr, ptr %regs.addr, align 8, !dbg !99
  %call22 = call i64 @__ia32_compat_sys_execve(ptr noundef %12) #3, !dbg !99
  store i64 %call22, ptr %retval, align 8, !dbg !99
  br label %return, !dbg !99

sw.bb23:                                          ; preds = %entry
  %13 = load ptr, ptr %regs.addr, align 8, !dbg !100
  %call24 = call i64 @__ia32_sys_chdir(ptr noundef %13) #3, !dbg !100
  store i64 %call24, ptr %retval, align 8, !dbg !100
  br label %return, !dbg !100

sw.bb25:                                          ; preds = %entry
  %14 = load ptr, ptr %regs.addr, align 8, !dbg !101
  %call26 = call i64 @__ia32_sys_time32(ptr noundef %14) #3, !dbg !101
  store i64 %call26, ptr %retval, align 8, !dbg !101
  br label %return, !dbg !101

sw.bb27:                                          ; preds = %entry
  %15 = load ptr, ptr %regs.addr, align 8, !dbg !102
  %call28 = call i64 @__ia32_sys_mknod(ptr noundef %15) #3, !dbg !102
  store i64 %call28, ptr %retval, align 8, !dbg !102
  br label %return, !dbg !102

sw.bb29:                                          ; preds = %entry
  %16 = load ptr, ptr %regs.addr, align 8, !dbg !103
  %call30 = call i64 @__ia32_sys_chmod(ptr noundef %16) #3, !dbg !103
  store i64 %call30, ptr %retval, align 8, !dbg !103
  br label %return, !dbg !103

sw.bb31:                                          ; preds = %entry
  %17 = load ptr, ptr %regs.addr, align 8, !dbg !104
  %call32 = call i64 @__ia32_sys_lchown16(ptr noundef %17) #3, !dbg !104
  store i64 %call32, ptr %retval, align 8, !dbg !104
  br label %return, !dbg !104

sw.bb33:                                          ; preds = %entry
  %18 = load ptr, ptr %regs.addr, align 8, !dbg !105
  %call34 = call i64 @__ia32_sys_ni_syscall(ptr noundef %18) #3, !dbg !105
  store i64 %call34, ptr %retval, align 8, !dbg !105
  br label %return, !dbg !105

sw.bb35:                                          ; preds = %entry
  %19 = load ptr, ptr %regs.addr, align 8, !dbg !106
  %call36 = call i64 @__ia32_sys_stat(ptr noundef %19) #3, !dbg !106
  store i64 %call36, ptr %retval, align 8, !dbg !106
  br label %return, !dbg !106

sw.bb37:                                          ; preds = %entry
  %20 = load ptr, ptr %regs.addr, align 8, !dbg !107
  %call38 = call i64 @__ia32_compat_sys_lseek(ptr noundef %20) #3, !dbg !107
  store i64 %call38, ptr %retval, align 8, !dbg !107
  br label %return, !dbg !107

sw.bb39:                                          ; preds = %entry
  %21 = load ptr, ptr %regs.addr, align 8, !dbg !108
  %call40 = call i64 @__ia32_sys_getpid(ptr noundef %21) #3, !dbg !108
  store i64 %call40, ptr %retval, align 8, !dbg !108
  br label %return, !dbg !108

sw.bb41:                                          ; preds = %entry
  %22 = load ptr, ptr %regs.addr, align 8, !dbg !109
  %call42 = call i64 @__ia32_sys_mount(ptr noundef %22) #3, !dbg !109
  store i64 %call42, ptr %retval, align 8, !dbg !109
  br label %return, !dbg !109

sw.bb43:                                          ; preds = %entry
  %23 = load ptr, ptr %regs.addr, align 8, !dbg !110
  %call44 = call i64 @__ia32_sys_oldumount(ptr noundef %23) #3, !dbg !110
  store i64 %call44, ptr %retval, align 8, !dbg !110
  br label %return, !dbg !110

sw.bb45:                                          ; preds = %entry
  %24 = load ptr, ptr %regs.addr, align 8, !dbg !111
  %call46 = call i64 @__ia32_sys_setuid16(ptr noundef %24) #3, !dbg !111
  store i64 %call46, ptr %retval, align 8, !dbg !111
  br label %return, !dbg !111

sw.bb47:                                          ; preds = %entry
  %25 = load ptr, ptr %regs.addr, align 8, !dbg !112
  %call48 = call i64 @__ia32_sys_getuid16(ptr noundef %25) #3, !dbg !112
  store i64 %call48, ptr %retval, align 8, !dbg !112
  br label %return, !dbg !112

sw.bb49:                                          ; preds = %entry
  %26 = load ptr, ptr %regs.addr, align 8, !dbg !113
  %call50 = call i64 @__ia32_sys_stime32(ptr noundef %26) #3, !dbg !113
  store i64 %call50, ptr %retval, align 8, !dbg !113
  br label %return, !dbg !113

sw.bb51:                                          ; preds = %entry
  %27 = load ptr, ptr %regs.addr, align 8, !dbg !114
  %call52 = call i64 @__ia32_compat_sys_ptrace(ptr noundef %27) #3, !dbg !114
  store i64 %call52, ptr %retval, align 8, !dbg !114
  br label %return, !dbg !114

sw.bb53:                                          ; preds = %entry
  %28 = load ptr, ptr %regs.addr, align 8, !dbg !115
  %call54 = call i64 @__ia32_sys_alarm(ptr noundef %28) #3, !dbg !115
  store i64 %call54, ptr %retval, align 8, !dbg !115
  br label %return, !dbg !115

sw.bb55:                                          ; preds = %entry
  %29 = load ptr, ptr %regs.addr, align 8, !dbg !116
  %call56 = call i64 @__ia32_sys_fstat(ptr noundef %29) #3, !dbg !116
  store i64 %call56, ptr %retval, align 8, !dbg !116
  br label %return, !dbg !116

sw.bb57:                                          ; preds = %entry
  %30 = load ptr, ptr %regs.addr, align 8, !dbg !117
  %call58 = call i64 @__ia32_sys_pause(ptr noundef %30) #3, !dbg !117
  store i64 %call58, ptr %retval, align 8, !dbg !117
  br label %return, !dbg !117

sw.bb59:                                          ; preds = %entry
  %31 = load ptr, ptr %regs.addr, align 8, !dbg !118
  %call60 = call i64 @__ia32_sys_utime32(ptr noundef %31) #3, !dbg !118
  store i64 %call60, ptr %retval, align 8, !dbg !118
  br label %return, !dbg !118

sw.bb61:                                          ; preds = %entry
  %32 = load ptr, ptr %regs.addr, align 8, !dbg !119
  %call62 = call i64 @__ia32_sys_ni_syscall(ptr noundef %32) #3, !dbg !119
  store i64 %call62, ptr %retval, align 8, !dbg !119
  br label %return, !dbg !119

sw.bb63:                                          ; preds = %entry
  %33 = load ptr, ptr %regs.addr, align 8, !dbg !120
  %call64 = call i64 @__ia32_sys_ni_syscall(ptr noundef %33) #3, !dbg !120
  store i64 %call64, ptr %retval, align 8, !dbg !120
  br label %return, !dbg !120

sw.bb65:                                          ; preds = %entry
  %34 = load ptr, ptr %regs.addr, align 8, !dbg !121
  %call66 = call i64 @__ia32_sys_access(ptr noundef %34) #3, !dbg !121
  store i64 %call66, ptr %retval, align 8, !dbg !121
  br label %return, !dbg !121

sw.bb67:                                          ; preds = %entry
  %35 = load ptr, ptr %regs.addr, align 8, !dbg !122
  %call68 = call i64 @__ia32_sys_nice(ptr noundef %35) #3, !dbg !122
  store i64 %call68, ptr %retval, align 8, !dbg !122
  br label %return, !dbg !122

sw.bb69:                                          ; preds = %entry
  %36 = load ptr, ptr %regs.addr, align 8, !dbg !123
  %call70 = call i64 @__ia32_sys_ni_syscall(ptr noundef %36) #3, !dbg !123
  store i64 %call70, ptr %retval, align 8, !dbg !123
  br label %return, !dbg !123

sw.bb71:                                          ; preds = %entry
  %37 = load ptr, ptr %regs.addr, align 8, !dbg !124
  %call72 = call i64 @__ia32_sys_sync(ptr noundef %37) #3, !dbg !124
  store i64 %call72, ptr %retval, align 8, !dbg !124
  br label %return, !dbg !124

sw.bb73:                                          ; preds = %entry
  %38 = load ptr, ptr %regs.addr, align 8, !dbg !125
  %call74 = call i64 @__ia32_sys_kill(ptr noundef %38) #3, !dbg !125
  store i64 %call74, ptr %retval, align 8, !dbg !125
  br label %return, !dbg !125

sw.bb75:                                          ; preds = %entry
  %39 = load ptr, ptr %regs.addr, align 8, !dbg !126
  %call76 = call i64 @__ia32_sys_rename(ptr noundef %39) #3, !dbg !126
  store i64 %call76, ptr %retval, align 8, !dbg !126
  br label %return, !dbg !126

sw.bb77:                                          ; preds = %entry
  %40 = load ptr, ptr %regs.addr, align 8, !dbg !127
  %call78 = call i64 @__ia32_sys_mkdir(ptr noundef %40) #3, !dbg !127
  store i64 %call78, ptr %retval, align 8, !dbg !127
  br label %return, !dbg !127

sw.bb79:                                          ; preds = %entry
  %41 = load ptr, ptr %regs.addr, align 8, !dbg !128
  %call80 = call i64 @__ia32_sys_rmdir(ptr noundef %41) #3, !dbg !128
  store i64 %call80, ptr %retval, align 8, !dbg !128
  br label %return, !dbg !128

sw.bb81:                                          ; preds = %entry
  %42 = load ptr, ptr %regs.addr, align 8, !dbg !129
  %call82 = call i64 @__ia32_sys_dup(ptr noundef %42) #3, !dbg !129
  store i64 %call82, ptr %retval, align 8, !dbg !129
  br label %return, !dbg !129

sw.bb83:                                          ; preds = %entry
  %43 = load ptr, ptr %regs.addr, align 8, !dbg !130
  %call84 = call i64 @__ia32_sys_pipe(ptr noundef %43) #3, !dbg !130
  store i64 %call84, ptr %retval, align 8, !dbg !130
  br label %return, !dbg !130

sw.bb85:                                          ; preds = %entry
  %44 = load ptr, ptr %regs.addr, align 8, !dbg !131
  %call86 = call i64 @__ia32_compat_sys_times(ptr noundef %44) #3, !dbg !131
  store i64 %call86, ptr %retval, align 8, !dbg !131
  br label %return, !dbg !131

sw.bb87:                                          ; preds = %entry
  %45 = load ptr, ptr %regs.addr, align 8, !dbg !132
  %call88 = call i64 @__ia32_sys_ni_syscall(ptr noundef %45) #3, !dbg !132
  store i64 %call88, ptr %retval, align 8, !dbg !132
  br label %return, !dbg !132

sw.bb89:                                          ; preds = %entry
  %46 = load ptr, ptr %regs.addr, align 8, !dbg !133
  %call90 = call i64 @__ia32_sys_brk(ptr noundef %46) #3, !dbg !133
  store i64 %call90, ptr %retval, align 8, !dbg !133
  br label %return, !dbg !133

sw.bb91:                                          ; preds = %entry
  %47 = load ptr, ptr %regs.addr, align 8, !dbg !134
  %call92 = call i64 @__ia32_sys_setgid16(ptr noundef %47) #3, !dbg !134
  store i64 %call92, ptr %retval, align 8, !dbg !134
  br label %return, !dbg !134

sw.bb93:                                          ; preds = %entry
  %48 = load ptr, ptr %regs.addr, align 8, !dbg !135
  %call94 = call i64 @__ia32_sys_getgid16(ptr noundef %48) #3, !dbg !135
  store i64 %call94, ptr %retval, align 8, !dbg !135
  br label %return, !dbg !135

sw.bb95:                                          ; preds = %entry
  %49 = load ptr, ptr %regs.addr, align 8, !dbg !136
  %call96 = call i64 @__ia32_sys_signal(ptr noundef %49) #3, !dbg !136
  store i64 %call96, ptr %retval, align 8, !dbg !136
  br label %return, !dbg !136

sw.bb97:                                          ; preds = %entry
  %50 = load ptr, ptr %regs.addr, align 8, !dbg !137
  %call98 = call i64 @__ia32_sys_geteuid16(ptr noundef %50) #3, !dbg !137
  store i64 %call98, ptr %retval, align 8, !dbg !137
  br label %return, !dbg !137

sw.bb99:                                          ; preds = %entry
  %51 = load ptr, ptr %regs.addr, align 8, !dbg !138
  %call100 = call i64 @__ia32_sys_getegid16(ptr noundef %51) #3, !dbg !138
  store i64 %call100, ptr %retval, align 8, !dbg !138
  br label %return, !dbg !138

sw.bb101:                                         ; preds = %entry
  %52 = load ptr, ptr %regs.addr, align 8, !dbg !139
  %call102 = call i64 @__ia32_sys_acct(ptr noundef %52) #3, !dbg !139
  store i64 %call102, ptr %retval, align 8, !dbg !139
  br label %return, !dbg !139

sw.bb103:                                         ; preds = %entry
  %53 = load ptr, ptr %regs.addr, align 8, !dbg !140
  %call104 = call i64 @__ia32_sys_umount(ptr noundef %53) #3, !dbg !140
  store i64 %call104, ptr %retval, align 8, !dbg !140
  br label %return, !dbg !140

sw.bb105:                                         ; preds = %entry
  %54 = load ptr, ptr %regs.addr, align 8, !dbg !141
  %call106 = call i64 @__ia32_sys_ni_syscall(ptr noundef %54) #3, !dbg !141
  store i64 %call106, ptr %retval, align 8, !dbg !141
  br label %return, !dbg !141

sw.bb107:                                         ; preds = %entry
  %55 = load ptr, ptr %regs.addr, align 8, !dbg !142
  %call108 = call i64 @__ia32_compat_sys_ioctl(ptr noundef %55) #3, !dbg !142
  store i64 %call108, ptr %retval, align 8, !dbg !142
  br label %return, !dbg !142

sw.bb109:                                         ; preds = %entry
  %56 = load ptr, ptr %regs.addr, align 8, !dbg !143
  %call110 = call i64 @__ia32_compat_sys_fcntl64(ptr noundef %56) #3, !dbg !143
  store i64 %call110, ptr %retval, align 8, !dbg !143
  br label %return, !dbg !143

sw.bb111:                                         ; preds = %entry
  %57 = load ptr, ptr %regs.addr, align 8, !dbg !144
  %call112 = call i64 @__ia32_sys_ni_syscall(ptr noundef %57) #3, !dbg !144
  store i64 %call112, ptr %retval, align 8, !dbg !144
  br label %return, !dbg !144

sw.bb113:                                         ; preds = %entry
  %58 = load ptr, ptr %regs.addr, align 8, !dbg !145
  %call114 = call i64 @__ia32_sys_setpgid(ptr noundef %58) #3, !dbg !145
  store i64 %call114, ptr %retval, align 8, !dbg !145
  br label %return, !dbg !145

sw.bb115:                                         ; preds = %entry
  %59 = load ptr, ptr %regs.addr, align 8, !dbg !146
  %call116 = call i64 @__ia32_sys_ni_syscall(ptr noundef %59) #3, !dbg !146
  store i64 %call116, ptr %retval, align 8, !dbg !146
  br label %return, !dbg !146

sw.bb117:                                         ; preds = %entry
  %60 = load ptr, ptr %regs.addr, align 8, !dbg !147
  %call118 = call i64 @__ia32_sys_olduname(ptr noundef %60) #3, !dbg !147
  store i64 %call118, ptr %retval, align 8, !dbg !147
  br label %return, !dbg !147

sw.bb119:                                         ; preds = %entry
  %61 = load ptr, ptr %regs.addr, align 8, !dbg !148
  %call120 = call i64 @__ia32_sys_umask(ptr noundef %61) #3, !dbg !148
  store i64 %call120, ptr %retval, align 8, !dbg !148
  br label %return, !dbg !148

sw.bb121:                                         ; preds = %entry
  %62 = load ptr, ptr %regs.addr, align 8, !dbg !149
  %call122 = call i64 @__ia32_sys_chroot(ptr noundef %62) #3, !dbg !149
  store i64 %call122, ptr %retval, align 8, !dbg !149
  br label %return, !dbg !149

sw.bb123:                                         ; preds = %entry
  %63 = load ptr, ptr %regs.addr, align 8, !dbg !150
  %call124 = call i64 @__ia32_compat_sys_ustat(ptr noundef %63) #3, !dbg !150
  store i64 %call124, ptr %retval, align 8, !dbg !150
  br label %return, !dbg !150

sw.bb125:                                         ; preds = %entry
  %64 = load ptr, ptr %regs.addr, align 8, !dbg !151
  %call126 = call i64 @__ia32_sys_dup2(ptr noundef %64) #3, !dbg !151
  store i64 %call126, ptr %retval, align 8, !dbg !151
  br label %return, !dbg !151

sw.bb127:                                         ; preds = %entry
  %65 = load ptr, ptr %regs.addr, align 8, !dbg !152
  %call128 = call i64 @__ia32_sys_getppid(ptr noundef %65) #3, !dbg !152
  store i64 %call128, ptr %retval, align 8, !dbg !152
  br label %return, !dbg !152

sw.bb129:                                         ; preds = %entry
  %66 = load ptr, ptr %regs.addr, align 8, !dbg !153
  %call130 = call i64 @__ia32_sys_getpgrp(ptr noundef %66) #3, !dbg !153
  store i64 %call130, ptr %retval, align 8, !dbg !153
  br label %return, !dbg !153

sw.bb131:                                         ; preds = %entry
  %67 = load ptr, ptr %regs.addr, align 8, !dbg !154
  %call132 = call i64 @__ia32_sys_setsid(ptr noundef %67) #3, !dbg !154
  store i64 %call132, ptr %retval, align 8, !dbg !154
  br label %return, !dbg !154

sw.bb133:                                         ; preds = %entry
  %68 = load ptr, ptr %regs.addr, align 8, !dbg !155
  %call134 = call i64 @__ia32_compat_sys_sigaction(ptr noundef %68) #3, !dbg !155
  store i64 %call134, ptr %retval, align 8, !dbg !155
  br label %return, !dbg !155

sw.bb135:                                         ; preds = %entry
  %69 = load ptr, ptr %regs.addr, align 8, !dbg !156
  %call136 = call i64 @__ia32_sys_sgetmask(ptr noundef %69) #3, !dbg !156
  store i64 %call136, ptr %retval, align 8, !dbg !156
  br label %return, !dbg !156

sw.bb137:                                         ; preds = %entry
  %70 = load ptr, ptr %regs.addr, align 8, !dbg !157
  %call138 = call i64 @__ia32_sys_ssetmask(ptr noundef %70) #3, !dbg !157
  store i64 %call138, ptr %retval, align 8, !dbg !157
  br label %return, !dbg !157

sw.bb139:                                         ; preds = %entry
  %71 = load ptr, ptr %regs.addr, align 8, !dbg !158
  %call140 = call i64 @__ia32_sys_setreuid16(ptr noundef %71) #3, !dbg !158
  store i64 %call140, ptr %retval, align 8, !dbg !158
  br label %return, !dbg !158

sw.bb141:                                         ; preds = %entry
  %72 = load ptr, ptr %regs.addr, align 8, !dbg !159
  %call142 = call i64 @__ia32_sys_setregid16(ptr noundef %72) #3, !dbg !159
  store i64 %call142, ptr %retval, align 8, !dbg !159
  br label %return, !dbg !159

sw.bb143:                                         ; preds = %entry
  %73 = load ptr, ptr %regs.addr, align 8, !dbg !160
  %call144 = call i64 @__ia32_sys_sigsuspend(ptr noundef %73) #3, !dbg !160
  store i64 %call144, ptr %retval, align 8, !dbg !160
  br label %return, !dbg !160

sw.bb145:                                         ; preds = %entry
  %74 = load ptr, ptr %regs.addr, align 8, !dbg !161
  %call146 = call i64 @__ia32_compat_sys_sigpending(ptr noundef %74) #3, !dbg !161
  store i64 %call146, ptr %retval, align 8, !dbg !161
  br label %return, !dbg !161

sw.bb147:                                         ; preds = %entry
  %75 = load ptr, ptr %regs.addr, align 8, !dbg !162
  %call148 = call i64 @__ia32_sys_sethostname(ptr noundef %75) #3, !dbg !162
  store i64 %call148, ptr %retval, align 8, !dbg !162
  br label %return, !dbg !162

sw.bb149:                                         ; preds = %entry
  %76 = load ptr, ptr %regs.addr, align 8, !dbg !163
  %call150 = call i64 @__ia32_compat_sys_setrlimit(ptr noundef %76) #3, !dbg !163
  store i64 %call150, ptr %retval, align 8, !dbg !163
  br label %return, !dbg !163

sw.bb151:                                         ; preds = %entry
  %77 = load ptr, ptr %regs.addr, align 8, !dbg !164
  %call152 = call i64 @__ia32_compat_sys_old_getrlimit(ptr noundef %77) #3, !dbg !164
  store i64 %call152, ptr %retval, align 8, !dbg !164
  br label %return, !dbg !164

sw.bb153:                                         ; preds = %entry
  %78 = load ptr, ptr %regs.addr, align 8, !dbg !165
  %call154 = call i64 @__ia32_compat_sys_getrusage(ptr noundef %78) #3, !dbg !165
  store i64 %call154, ptr %retval, align 8, !dbg !165
  br label %return, !dbg !165

sw.bb155:                                         ; preds = %entry
  %79 = load ptr, ptr %regs.addr, align 8, !dbg !166
  %call156 = call i64 @__ia32_compat_sys_gettimeofday(ptr noundef %79) #3, !dbg !166
  store i64 %call156, ptr %retval, align 8, !dbg !166
  br label %return, !dbg !166

sw.bb157:                                         ; preds = %entry
  %80 = load ptr, ptr %regs.addr, align 8, !dbg !167
  %call158 = call i64 @__ia32_compat_sys_settimeofday(ptr noundef %80) #3, !dbg !167
  store i64 %call158, ptr %retval, align 8, !dbg !167
  br label %return, !dbg !167

sw.bb159:                                         ; preds = %entry
  %81 = load ptr, ptr %regs.addr, align 8, !dbg !168
  %call160 = call i64 @__ia32_sys_getgroups16(ptr noundef %81) #3, !dbg !168
  store i64 %call160, ptr %retval, align 8, !dbg !168
  br label %return, !dbg !168

sw.bb161:                                         ; preds = %entry
  %82 = load ptr, ptr %regs.addr, align 8, !dbg !169
  %call162 = call i64 @__ia32_sys_setgroups16(ptr noundef %82) #3, !dbg !169
  store i64 %call162, ptr %retval, align 8, !dbg !169
  br label %return, !dbg !169

sw.bb163:                                         ; preds = %entry
  %83 = load ptr, ptr %regs.addr, align 8, !dbg !170
  %call164 = call i64 @__ia32_compat_sys_old_select(ptr noundef %83) #3, !dbg !170
  store i64 %call164, ptr %retval, align 8, !dbg !170
  br label %return, !dbg !170

sw.bb165:                                         ; preds = %entry
  %84 = load ptr, ptr %regs.addr, align 8, !dbg !171
  %call166 = call i64 @__ia32_sys_symlink(ptr noundef %84) #3, !dbg !171
  store i64 %call166, ptr %retval, align 8, !dbg !171
  br label %return, !dbg !171

sw.bb167:                                         ; preds = %entry
  %85 = load ptr, ptr %regs.addr, align 8, !dbg !172
  %call168 = call i64 @__ia32_sys_lstat(ptr noundef %85) #3, !dbg !172
  store i64 %call168, ptr %retval, align 8, !dbg !172
  br label %return, !dbg !172

sw.bb169:                                         ; preds = %entry
  %86 = load ptr, ptr %regs.addr, align 8, !dbg !173
  %call170 = call i64 @__ia32_sys_readlink(ptr noundef %86) #3, !dbg !173
  store i64 %call170, ptr %retval, align 8, !dbg !173
  br label %return, !dbg !173

sw.bb171:                                         ; preds = %entry
  %87 = load ptr, ptr %regs.addr, align 8, !dbg !174
  %call172 = call i64 @__ia32_sys_uselib(ptr noundef %87) #3, !dbg !174
  store i64 %call172, ptr %retval, align 8, !dbg !174
  br label %return, !dbg !174

sw.bb173:                                         ; preds = %entry
  %88 = load ptr, ptr %regs.addr, align 8, !dbg !175
  %call174 = call i64 @__ia32_sys_swapon(ptr noundef %88) #3, !dbg !175
  store i64 %call174, ptr %retval, align 8, !dbg !175
  br label %return, !dbg !175

sw.bb175:                                         ; preds = %entry
  %89 = load ptr, ptr %regs.addr, align 8, !dbg !176
  %call176 = call i64 @__ia32_sys_reboot(ptr noundef %89) #3, !dbg !176
  store i64 %call176, ptr %retval, align 8, !dbg !176
  br label %return, !dbg !176

sw.bb177:                                         ; preds = %entry
  %90 = load ptr, ptr %regs.addr, align 8, !dbg !177
  %call178 = call i64 @__ia32_compat_sys_old_readdir(ptr noundef %90) #3, !dbg !177
  store i64 %call178, ptr %retval, align 8, !dbg !177
  br label %return, !dbg !177

sw.bb179:                                         ; preds = %entry
  %91 = load ptr, ptr %regs.addr, align 8, !dbg !178
  %call180 = call i64 @__ia32_compat_sys_ia32_mmap(ptr noundef %91) #3, !dbg !178
  store i64 %call180, ptr %retval, align 8, !dbg !178
  br label %return, !dbg !178

sw.bb181:                                         ; preds = %entry
  %92 = load ptr, ptr %regs.addr, align 8, !dbg !179
  %call182 = call i64 @__ia32_sys_munmap(ptr noundef %92) #3, !dbg !179
  store i64 %call182, ptr %retval, align 8, !dbg !179
  br label %return, !dbg !179

sw.bb183:                                         ; preds = %entry
  %93 = load ptr, ptr %regs.addr, align 8, !dbg !180
  %call184 = call i64 @__ia32_compat_sys_truncate(ptr noundef %93) #3, !dbg !180
  store i64 %call184, ptr %retval, align 8, !dbg !180
  br label %return, !dbg !180

sw.bb185:                                         ; preds = %entry
  %94 = load ptr, ptr %regs.addr, align 8, !dbg !181
  %call186 = call i64 @__ia32_compat_sys_ftruncate(ptr noundef %94) #3, !dbg !181
  store i64 %call186, ptr %retval, align 8, !dbg !181
  br label %return, !dbg !181

sw.bb187:                                         ; preds = %entry
  %95 = load ptr, ptr %regs.addr, align 8, !dbg !182
  %call188 = call i64 @__ia32_sys_fchmod(ptr noundef %95) #3, !dbg !182
  store i64 %call188, ptr %retval, align 8, !dbg !182
  br label %return, !dbg !182

sw.bb189:                                         ; preds = %entry
  %96 = load ptr, ptr %regs.addr, align 8, !dbg !183
  %call190 = call i64 @__ia32_sys_fchown16(ptr noundef %96) #3, !dbg !183
  store i64 %call190, ptr %retval, align 8, !dbg !183
  br label %return, !dbg !183

sw.bb191:                                         ; preds = %entry
  %97 = load ptr, ptr %regs.addr, align 8, !dbg !184
  %call192 = call i64 @__ia32_sys_getpriority(ptr noundef %97) #3, !dbg !184
  store i64 %call192, ptr %retval, align 8, !dbg !184
  br label %return, !dbg !184

sw.bb193:                                         ; preds = %entry
  %98 = load ptr, ptr %regs.addr, align 8, !dbg !185
  %call194 = call i64 @__ia32_sys_setpriority(ptr noundef %98) #3, !dbg !185
  store i64 %call194, ptr %retval, align 8, !dbg !185
  br label %return, !dbg !185

sw.bb195:                                         ; preds = %entry
  %99 = load ptr, ptr %regs.addr, align 8, !dbg !186
  %call196 = call i64 @__ia32_sys_ni_syscall(ptr noundef %99) #3, !dbg !186
  store i64 %call196, ptr %retval, align 8, !dbg !186
  br label %return, !dbg !186

sw.bb197:                                         ; preds = %entry
  %100 = load ptr, ptr %regs.addr, align 8, !dbg !187
  %call198 = call i64 @__ia32_compat_sys_statfs(ptr noundef %100) #3, !dbg !187
  store i64 %call198, ptr %retval, align 8, !dbg !187
  br label %return, !dbg !187

sw.bb199:                                         ; preds = %entry
  %101 = load ptr, ptr %regs.addr, align 8, !dbg !188
  %call200 = call i64 @__ia32_compat_sys_fstatfs(ptr noundef %101) #3, !dbg !188
  store i64 %call200, ptr %retval, align 8, !dbg !188
  br label %return, !dbg !188

sw.bb201:                                         ; preds = %entry
  %102 = load ptr, ptr %regs.addr, align 8, !dbg !189
  %call202 = call i64 @__ia32_sys_ioperm(ptr noundef %102) #3, !dbg !189
  store i64 %call202, ptr %retval, align 8, !dbg !189
  br label %return, !dbg !189

sw.bb203:                                         ; preds = %entry
  %103 = load ptr, ptr %regs.addr, align 8, !dbg !190
  %call204 = call i64 @__ia32_compat_sys_socketcall(ptr noundef %103) #3, !dbg !190
  store i64 %call204, ptr %retval, align 8, !dbg !190
  br label %return, !dbg !190

sw.bb205:                                         ; preds = %entry
  %104 = load ptr, ptr %regs.addr, align 8, !dbg !191
  %call206 = call i64 @__ia32_sys_syslog(ptr noundef %104) #3, !dbg !191
  store i64 %call206, ptr %retval, align 8, !dbg !191
  br label %return, !dbg !191

sw.bb207:                                         ; preds = %entry
  %105 = load ptr, ptr %regs.addr, align 8, !dbg !192
  %call208 = call i64 @__ia32_compat_sys_setitimer(ptr noundef %105) #3, !dbg !192
  store i64 %call208, ptr %retval, align 8, !dbg !192
  br label %return, !dbg !192

sw.bb209:                                         ; preds = %entry
  %106 = load ptr, ptr %regs.addr, align 8, !dbg !193
  %call210 = call i64 @__ia32_compat_sys_getitimer(ptr noundef %106) #3, !dbg !193
  store i64 %call210, ptr %retval, align 8, !dbg !193
  br label %return, !dbg !193

sw.bb211:                                         ; preds = %entry
  %107 = load ptr, ptr %regs.addr, align 8, !dbg !194
  %call212 = call i64 @__ia32_compat_sys_newstat(ptr noundef %107) #3, !dbg !194
  store i64 %call212, ptr %retval, align 8, !dbg !194
  br label %return, !dbg !194

sw.bb213:                                         ; preds = %entry
  %108 = load ptr, ptr %regs.addr, align 8, !dbg !195
  %call214 = call i64 @__ia32_compat_sys_newlstat(ptr noundef %108) #3, !dbg !195
  store i64 %call214, ptr %retval, align 8, !dbg !195
  br label %return, !dbg !195

sw.bb215:                                         ; preds = %entry
  %109 = load ptr, ptr %regs.addr, align 8, !dbg !196
  %call216 = call i64 @__ia32_compat_sys_newfstat(ptr noundef %109) #3, !dbg !196
  store i64 %call216, ptr %retval, align 8, !dbg !196
  br label %return, !dbg !196

sw.bb217:                                         ; preds = %entry
  %110 = load ptr, ptr %regs.addr, align 8, !dbg !197
  %call218 = call i64 @__ia32_sys_uname(ptr noundef %110) #3, !dbg !197
  store i64 %call218, ptr %retval, align 8, !dbg !197
  br label %return, !dbg !197

sw.bb219:                                         ; preds = %entry
  %111 = load ptr, ptr %regs.addr, align 8, !dbg !198
  %call220 = call i64 @__ia32_sys_iopl(ptr noundef %111) #3, !dbg !198
  store i64 %call220, ptr %retval, align 8, !dbg !198
  br label %return, !dbg !198

sw.bb221:                                         ; preds = %entry
  %112 = load ptr, ptr %regs.addr, align 8, !dbg !199
  %call222 = call i64 @__ia32_sys_vhangup(ptr noundef %112) #3, !dbg !199
  store i64 %call222, ptr %retval, align 8, !dbg !199
  br label %return, !dbg !199

sw.bb223:                                         ; preds = %entry
  %113 = load ptr, ptr %regs.addr, align 8, !dbg !200
  %call224 = call i64 @__ia32_sys_ni_syscall(ptr noundef %113) #3, !dbg !200
  store i64 %call224, ptr %retval, align 8, !dbg !200
  br label %return, !dbg !200

sw.bb225:                                         ; preds = %entry
  %114 = load ptr, ptr %regs.addr, align 8, !dbg !201
  %call226 = call i64 @__ia32_sys_ni_syscall(ptr noundef %114) #3, !dbg !201
  store i64 %call226, ptr %retval, align 8, !dbg !201
  br label %return, !dbg !201

sw.bb227:                                         ; preds = %entry
  %115 = load ptr, ptr %regs.addr, align 8, !dbg !202
  %call228 = call i64 @__ia32_compat_sys_wait4(ptr noundef %115) #3, !dbg !202
  store i64 %call228, ptr %retval, align 8, !dbg !202
  br label %return, !dbg !202

sw.bb229:                                         ; preds = %entry
  %116 = load ptr, ptr %regs.addr, align 8, !dbg !203
  %call230 = call i64 @__ia32_sys_swapoff(ptr noundef %116) #3, !dbg !203
  store i64 %call230, ptr %retval, align 8, !dbg !203
  br label %return, !dbg !203

sw.bb231:                                         ; preds = %entry
  %117 = load ptr, ptr %regs.addr, align 8, !dbg !204
  %call232 = call i64 @__ia32_compat_sys_sysinfo(ptr noundef %117) #3, !dbg !204
  store i64 %call232, ptr %retval, align 8, !dbg !204
  br label %return, !dbg !204

sw.bb233:                                         ; preds = %entry
  %118 = load ptr, ptr %regs.addr, align 8, !dbg !205
  %call234 = call i64 @__ia32_compat_sys_ipc(ptr noundef %118) #3, !dbg !205
  store i64 %call234, ptr %retval, align 8, !dbg !205
  br label %return, !dbg !205

sw.bb235:                                         ; preds = %entry
  %119 = load ptr, ptr %regs.addr, align 8, !dbg !206
  %call236 = call i64 @__ia32_sys_fsync(ptr noundef %119) #3, !dbg !206
  store i64 %call236, ptr %retval, align 8, !dbg !206
  br label %return, !dbg !206

sw.bb237:                                         ; preds = %entry
  %120 = load ptr, ptr %regs.addr, align 8, !dbg !207
  %call238 = call i64 @__ia32_compat_sys_sigreturn(ptr noundef %120) #3, !dbg !207
  store i64 %call238, ptr %retval, align 8, !dbg !207
  br label %return, !dbg !207

sw.bb239:                                         ; preds = %entry
  %121 = load ptr, ptr %regs.addr, align 8, !dbg !208
  %call240 = call i64 @__ia32_compat_sys_ia32_clone(ptr noundef %121) #3, !dbg !208
  store i64 %call240, ptr %retval, align 8, !dbg !208
  br label %return, !dbg !208

sw.bb241:                                         ; preds = %entry
  %122 = load ptr, ptr %regs.addr, align 8, !dbg !209
  %call242 = call i64 @__ia32_sys_setdomainname(ptr noundef %122) #3, !dbg !209
  store i64 %call242, ptr %retval, align 8, !dbg !209
  br label %return, !dbg !209

sw.bb243:                                         ; preds = %entry
  %123 = load ptr, ptr %regs.addr, align 8, !dbg !210
  %call244 = call i64 @__ia32_sys_newuname(ptr noundef %123) #3, !dbg !210
  store i64 %call244, ptr %retval, align 8, !dbg !210
  br label %return, !dbg !210

sw.bb245:                                         ; preds = %entry
  %124 = load ptr, ptr %regs.addr, align 8, !dbg !211
  %call246 = call i64 @__ia32_sys_modify_ldt(ptr noundef %124) #3, !dbg !211
  store i64 %call246, ptr %retval, align 8, !dbg !211
  br label %return, !dbg !211

sw.bb247:                                         ; preds = %entry
  %125 = load ptr, ptr %regs.addr, align 8, !dbg !212
  %call248 = call i64 @__ia32_sys_adjtimex_time32(ptr noundef %125) #3, !dbg !212
  store i64 %call248, ptr %retval, align 8, !dbg !212
  br label %return, !dbg !212

sw.bb249:                                         ; preds = %entry
  %126 = load ptr, ptr %regs.addr, align 8, !dbg !213
  %call250 = call i64 @__ia32_sys_mprotect(ptr noundef %126) #3, !dbg !213
  store i64 %call250, ptr %retval, align 8, !dbg !213
  br label %return, !dbg !213

sw.bb251:                                         ; preds = %entry
  %127 = load ptr, ptr %regs.addr, align 8, !dbg !214
  %call252 = call i64 @__ia32_compat_sys_sigprocmask(ptr noundef %127) #3, !dbg !214
  store i64 %call252, ptr %retval, align 8, !dbg !214
  br label %return, !dbg !214

sw.bb253:                                         ; preds = %entry
  %128 = load ptr, ptr %regs.addr, align 8, !dbg !215
  %call254 = call i64 @__ia32_sys_ni_syscall(ptr noundef %128) #3, !dbg !215
  store i64 %call254, ptr %retval, align 8, !dbg !215
  br label %return, !dbg !215

sw.bb255:                                         ; preds = %entry
  %129 = load ptr, ptr %regs.addr, align 8, !dbg !216
  %call256 = call i64 @__ia32_sys_init_module(ptr noundef %129) #3, !dbg !216
  store i64 %call256, ptr %retval, align 8, !dbg !216
  br label %return, !dbg !216

sw.bb257:                                         ; preds = %entry
  %130 = load ptr, ptr %regs.addr, align 8, !dbg !217
  %call258 = call i64 @__ia32_sys_delete_module(ptr noundef %130) #3, !dbg !217
  store i64 %call258, ptr %retval, align 8, !dbg !217
  br label %return, !dbg !217

sw.bb259:                                         ; preds = %entry
  %131 = load ptr, ptr %regs.addr, align 8, !dbg !218
  %call260 = call i64 @__ia32_sys_ni_syscall(ptr noundef %131) #3, !dbg !218
  store i64 %call260, ptr %retval, align 8, !dbg !218
  br label %return, !dbg !218

sw.bb261:                                         ; preds = %entry
  %132 = load ptr, ptr %regs.addr, align 8, !dbg !219
  %call262 = call i64 @__ia32_sys_quotactl(ptr noundef %132) #3, !dbg !219
  store i64 %call262, ptr %retval, align 8, !dbg !219
  br label %return, !dbg !219

sw.bb263:                                         ; preds = %entry
  %133 = load ptr, ptr %regs.addr, align 8, !dbg !220
  %call264 = call i64 @__ia32_sys_getpgid(ptr noundef %133) #3, !dbg !220
  store i64 %call264, ptr %retval, align 8, !dbg !220
  br label %return, !dbg !220

sw.bb265:                                         ; preds = %entry
  %134 = load ptr, ptr %regs.addr, align 8, !dbg !221
  %call266 = call i64 @__ia32_sys_fchdir(ptr noundef %134) #3, !dbg !221
  store i64 %call266, ptr %retval, align 8, !dbg !221
  br label %return, !dbg !221

sw.bb267:                                         ; preds = %entry
  %135 = load ptr, ptr %regs.addr, align 8, !dbg !222
  %call268 = call i64 @__ia32_sys_ni_syscall(ptr noundef %135) #3, !dbg !222
  store i64 %call268, ptr %retval, align 8, !dbg !222
  br label %return, !dbg !222

sw.bb269:                                         ; preds = %entry
  %136 = load ptr, ptr %regs.addr, align 8, !dbg !223
  %call270 = call i64 @__ia32_sys_sysfs(ptr noundef %136) #3, !dbg !223
  store i64 %call270, ptr %retval, align 8, !dbg !223
  br label %return, !dbg !223

sw.bb271:                                         ; preds = %entry
  %137 = load ptr, ptr %regs.addr, align 8, !dbg !224
  %call272 = call i64 @__ia32_sys_personality(ptr noundef %137) #3, !dbg !224
  store i64 %call272, ptr %retval, align 8, !dbg !224
  br label %return, !dbg !224

sw.bb273:                                         ; preds = %entry
  %138 = load ptr, ptr %regs.addr, align 8, !dbg !225
  %call274 = call i64 @__ia32_sys_ni_syscall(ptr noundef %138) #3, !dbg !225
  store i64 %call274, ptr %retval, align 8, !dbg !225
  br label %return, !dbg !225

sw.bb275:                                         ; preds = %entry
  %139 = load ptr, ptr %regs.addr, align 8, !dbg !226
  %call276 = call i64 @__ia32_sys_setfsuid16(ptr noundef %139) #3, !dbg !226
  store i64 %call276, ptr %retval, align 8, !dbg !226
  br label %return, !dbg !226

sw.bb277:                                         ; preds = %entry
  %140 = load ptr, ptr %regs.addr, align 8, !dbg !227
  %call278 = call i64 @__ia32_sys_setfsgid16(ptr noundef %140) #3, !dbg !227
  store i64 %call278, ptr %retval, align 8, !dbg !227
  br label %return, !dbg !227

sw.bb279:                                         ; preds = %entry
  %141 = load ptr, ptr %regs.addr, align 8, !dbg !228
  %call280 = call i64 @__ia32_sys_llseek(ptr noundef %141) #3, !dbg !228
  store i64 %call280, ptr %retval, align 8, !dbg !228
  br label %return, !dbg !228

sw.bb281:                                         ; preds = %entry
  %142 = load ptr, ptr %regs.addr, align 8, !dbg !229
  %call282 = call i64 @__ia32_compat_sys_getdents(ptr noundef %142) #3, !dbg !229
  store i64 %call282, ptr %retval, align 8, !dbg !229
  br label %return, !dbg !229

sw.bb283:                                         ; preds = %entry
  %143 = load ptr, ptr %regs.addr, align 8, !dbg !230
  %call284 = call i64 @__ia32_compat_sys_select(ptr noundef %143) #3, !dbg !230
  store i64 %call284, ptr %retval, align 8, !dbg !230
  br label %return, !dbg !230

sw.bb285:                                         ; preds = %entry
  %144 = load ptr, ptr %regs.addr, align 8, !dbg !231
  %call286 = call i64 @__ia32_sys_flock(ptr noundef %144) #3, !dbg !231
  store i64 %call286, ptr %retval, align 8, !dbg !231
  br label %return, !dbg !231

sw.bb287:                                         ; preds = %entry
  %145 = load ptr, ptr %regs.addr, align 8, !dbg !232
  %call288 = call i64 @__ia32_sys_msync(ptr noundef %145) #3, !dbg !232
  store i64 %call288, ptr %retval, align 8, !dbg !232
  br label %return, !dbg !232

sw.bb289:                                         ; preds = %entry
  %146 = load ptr, ptr %regs.addr, align 8, !dbg !233
  %call290 = call i64 @__ia32_sys_readv(ptr noundef %146) #3, !dbg !233
  store i64 %call290, ptr %retval, align 8, !dbg !233
  br label %return, !dbg !233

sw.bb291:                                         ; preds = %entry
  %147 = load ptr, ptr %regs.addr, align 8, !dbg !234
  %call292 = call i64 @__ia32_sys_writev(ptr noundef %147) #3, !dbg !234
  store i64 %call292, ptr %retval, align 8, !dbg !234
  br label %return, !dbg !234

sw.bb293:                                         ; preds = %entry
  %148 = load ptr, ptr %regs.addr, align 8, !dbg !235
  %call294 = call i64 @__ia32_sys_getsid(ptr noundef %148) #3, !dbg !235
  store i64 %call294, ptr %retval, align 8, !dbg !235
  br label %return, !dbg !235

sw.bb295:                                         ; preds = %entry
  %149 = load ptr, ptr %regs.addr, align 8, !dbg !236
  %call296 = call i64 @__ia32_sys_fdatasync(ptr noundef %149) #3, !dbg !236
  store i64 %call296, ptr %retval, align 8, !dbg !236
  br label %return, !dbg !236

sw.bb297:                                         ; preds = %entry
  %150 = load ptr, ptr %regs.addr, align 8, !dbg !237
  %call298 = call i64 @__ia32_sys_ni_syscall(ptr noundef %150) #3, !dbg !237
  store i64 %call298, ptr %retval, align 8, !dbg !237
  br label %return, !dbg !237

sw.bb299:                                         ; preds = %entry
  %151 = load ptr, ptr %regs.addr, align 8, !dbg !238
  %call300 = call i64 @__ia32_sys_mlock(ptr noundef %151) #3, !dbg !238
  store i64 %call300, ptr %retval, align 8, !dbg !238
  br label %return, !dbg !238

sw.bb301:                                         ; preds = %entry
  %152 = load ptr, ptr %regs.addr, align 8, !dbg !239
  %call302 = call i64 @__ia32_sys_munlock(ptr noundef %152) #3, !dbg !239
  store i64 %call302, ptr %retval, align 8, !dbg !239
  br label %return, !dbg !239

sw.bb303:                                         ; preds = %entry
  %153 = load ptr, ptr %regs.addr, align 8, !dbg !240
  %call304 = call i64 @__ia32_sys_mlockall(ptr noundef %153) #3, !dbg !240
  store i64 %call304, ptr %retval, align 8, !dbg !240
  br label %return, !dbg !240

sw.bb305:                                         ; preds = %entry
  %154 = load ptr, ptr %regs.addr, align 8, !dbg !241
  %call306 = call i64 @__ia32_sys_munlockall(ptr noundef %154) #3, !dbg !241
  store i64 %call306, ptr %retval, align 8, !dbg !241
  br label %return, !dbg !241

sw.bb307:                                         ; preds = %entry
  %155 = load ptr, ptr %regs.addr, align 8, !dbg !242
  %call308 = call i64 @__ia32_sys_sched_setparam(ptr noundef %155) #3, !dbg !242
  store i64 %call308, ptr %retval, align 8, !dbg !242
  br label %return, !dbg !242

sw.bb309:                                         ; preds = %entry
  %156 = load ptr, ptr %regs.addr, align 8, !dbg !243
  %call310 = call i64 @__ia32_sys_sched_getparam(ptr noundef %156) #3, !dbg !243
  store i64 %call310, ptr %retval, align 8, !dbg !243
  br label %return, !dbg !243

sw.bb311:                                         ; preds = %entry
  %157 = load ptr, ptr %regs.addr, align 8, !dbg !244
  %call312 = call i64 @__ia32_sys_sched_setscheduler(ptr noundef %157) #3, !dbg !244
  store i64 %call312, ptr %retval, align 8, !dbg !244
  br label %return, !dbg !244

sw.bb313:                                         ; preds = %entry
  %158 = load ptr, ptr %regs.addr, align 8, !dbg !245
  %call314 = call i64 @__ia32_sys_sched_getscheduler(ptr noundef %158) #3, !dbg !245
  store i64 %call314, ptr %retval, align 8, !dbg !245
  br label %return, !dbg !245

sw.bb315:                                         ; preds = %entry
  %159 = load ptr, ptr %regs.addr, align 8, !dbg !246
  %call316 = call i64 @__ia32_sys_sched_yield(ptr noundef %159) #3, !dbg !246
  store i64 %call316, ptr %retval, align 8, !dbg !246
  br label %return, !dbg !246

sw.bb317:                                         ; preds = %entry
  %160 = load ptr, ptr %regs.addr, align 8, !dbg !247
  %call318 = call i64 @__ia32_sys_sched_get_priority_max(ptr noundef %160) #3, !dbg !247
  store i64 %call318, ptr %retval, align 8, !dbg !247
  br label %return, !dbg !247

sw.bb319:                                         ; preds = %entry
  %161 = load ptr, ptr %regs.addr, align 8, !dbg !248
  %call320 = call i64 @__ia32_sys_sched_get_priority_min(ptr noundef %161) #3, !dbg !248
  store i64 %call320, ptr %retval, align 8, !dbg !248
  br label %return, !dbg !248

sw.bb321:                                         ; preds = %entry
  %162 = load ptr, ptr %regs.addr, align 8, !dbg !249
  %call322 = call i64 @__ia32_sys_sched_rr_get_interval_time32(ptr noundef %162) #3, !dbg !249
  store i64 %call322, ptr %retval, align 8, !dbg !249
  br label %return, !dbg !249

sw.bb323:                                         ; preds = %entry
  %163 = load ptr, ptr %regs.addr, align 8, !dbg !250
  %call324 = call i64 @__ia32_sys_nanosleep_time32(ptr noundef %163) #3, !dbg !250
  store i64 %call324, ptr %retval, align 8, !dbg !250
  br label %return, !dbg !250

sw.bb325:                                         ; preds = %entry
  %164 = load ptr, ptr %regs.addr, align 8, !dbg !251
  %call326 = call i64 @__ia32_sys_mremap(ptr noundef %164) #3, !dbg !251
  store i64 %call326, ptr %retval, align 8, !dbg !251
  br label %return, !dbg !251

sw.bb327:                                         ; preds = %entry
  %165 = load ptr, ptr %regs.addr, align 8, !dbg !252
  %call328 = call i64 @__ia32_sys_setresuid16(ptr noundef %165) #3, !dbg !252
  store i64 %call328, ptr %retval, align 8, !dbg !252
  br label %return, !dbg !252

sw.bb329:                                         ; preds = %entry
  %166 = load ptr, ptr %regs.addr, align 8, !dbg !253
  %call330 = call i64 @__ia32_sys_getresuid16(ptr noundef %166) #3, !dbg !253
  store i64 %call330, ptr %retval, align 8, !dbg !253
  br label %return, !dbg !253

sw.bb331:                                         ; preds = %entry
  %167 = load ptr, ptr %regs.addr, align 8, !dbg !254
  %call332 = call i64 @__ia32_sys_ni_syscall(ptr noundef %167) #3, !dbg !254
  store i64 %call332, ptr %retval, align 8, !dbg !254
  br label %return, !dbg !254

sw.bb333:                                         ; preds = %entry
  %168 = load ptr, ptr %regs.addr, align 8, !dbg !255
  %call334 = call i64 @__ia32_sys_ni_syscall(ptr noundef %168) #3, !dbg !255
  store i64 %call334, ptr %retval, align 8, !dbg !255
  br label %return, !dbg !255

sw.bb335:                                         ; preds = %entry
  %169 = load ptr, ptr %regs.addr, align 8, !dbg !256
  %call336 = call i64 @__ia32_sys_poll(ptr noundef %169) #3, !dbg !256
  store i64 %call336, ptr %retval, align 8, !dbg !256
  br label %return, !dbg !256

sw.bb337:                                         ; preds = %entry
  %170 = load ptr, ptr %regs.addr, align 8, !dbg !257
  %call338 = call i64 @__ia32_sys_ni_syscall(ptr noundef %170) #3, !dbg !257
  store i64 %call338, ptr %retval, align 8, !dbg !257
  br label %return, !dbg !257

sw.bb339:                                         ; preds = %entry
  %171 = load ptr, ptr %regs.addr, align 8, !dbg !258
  %call340 = call i64 @__ia32_sys_setresgid16(ptr noundef %171) #3, !dbg !258
  store i64 %call340, ptr %retval, align 8, !dbg !258
  br label %return, !dbg !258

sw.bb341:                                         ; preds = %entry
  %172 = load ptr, ptr %regs.addr, align 8, !dbg !259
  %call342 = call i64 @__ia32_sys_getresgid16(ptr noundef %172) #3, !dbg !259
  store i64 %call342, ptr %retval, align 8, !dbg !259
  br label %return, !dbg !259

sw.bb343:                                         ; preds = %entry
  %173 = load ptr, ptr %regs.addr, align 8, !dbg !260
  %call344 = call i64 @__ia32_sys_prctl(ptr noundef %173) #3, !dbg !260
  store i64 %call344, ptr %retval, align 8, !dbg !260
  br label %return, !dbg !260

sw.bb345:                                         ; preds = %entry
  %174 = load ptr, ptr %regs.addr, align 8, !dbg !261
  %call346 = call i64 @__ia32_compat_sys_rt_sigreturn(ptr noundef %174) #3, !dbg !261
  store i64 %call346, ptr %retval, align 8, !dbg !261
  br label %return, !dbg !261

sw.bb347:                                         ; preds = %entry
  %175 = load ptr, ptr %regs.addr, align 8, !dbg !262
  %call348 = call i64 @__ia32_compat_sys_rt_sigaction(ptr noundef %175) #3, !dbg !262
  store i64 %call348, ptr %retval, align 8, !dbg !262
  br label %return, !dbg !262

sw.bb349:                                         ; preds = %entry
  %176 = load ptr, ptr %regs.addr, align 8, !dbg !263
  %call350 = call i64 @__ia32_compat_sys_rt_sigprocmask(ptr noundef %176) #3, !dbg !263
  store i64 %call350, ptr %retval, align 8, !dbg !263
  br label %return, !dbg !263

sw.bb351:                                         ; preds = %entry
  %177 = load ptr, ptr %regs.addr, align 8, !dbg !264
  %call352 = call i64 @__ia32_compat_sys_rt_sigpending(ptr noundef %177) #3, !dbg !264
  store i64 %call352, ptr %retval, align 8, !dbg !264
  br label %return, !dbg !264

sw.bb353:                                         ; preds = %entry
  %178 = load ptr, ptr %regs.addr, align 8, !dbg !265
  %call354 = call i64 @__ia32_compat_sys_rt_sigtimedwait_time32(ptr noundef %178) #3, !dbg !265
  store i64 %call354, ptr %retval, align 8, !dbg !265
  br label %return, !dbg !265

sw.bb355:                                         ; preds = %entry
  %179 = load ptr, ptr %regs.addr, align 8, !dbg !266
  %call356 = call i64 @__ia32_compat_sys_rt_sigqueueinfo(ptr noundef %179) #3, !dbg !266
  store i64 %call356, ptr %retval, align 8, !dbg !266
  br label %return, !dbg !266

sw.bb357:                                         ; preds = %entry
  %180 = load ptr, ptr %regs.addr, align 8, !dbg !267
  %call358 = call i64 @__ia32_compat_sys_rt_sigsuspend(ptr noundef %180) #3, !dbg !267
  store i64 %call358, ptr %retval, align 8, !dbg !267
  br label %return, !dbg !267

sw.bb359:                                         ; preds = %entry
  %181 = load ptr, ptr %regs.addr, align 8, !dbg !268
  %call360 = call i64 @__ia32_sys_ia32_pread64(ptr noundef %181) #3, !dbg !268
  store i64 %call360, ptr %retval, align 8, !dbg !268
  br label %return, !dbg !268

sw.bb361:                                         ; preds = %entry
  %182 = load ptr, ptr %regs.addr, align 8, !dbg !269
  %call362 = call i64 @__ia32_sys_ia32_pwrite64(ptr noundef %182) #3, !dbg !269
  store i64 %call362, ptr %retval, align 8, !dbg !269
  br label %return, !dbg !269

sw.bb363:                                         ; preds = %entry
  %183 = load ptr, ptr %regs.addr, align 8, !dbg !270
  %call364 = call i64 @__ia32_sys_chown16(ptr noundef %183) #3, !dbg !270
  store i64 %call364, ptr %retval, align 8, !dbg !270
  br label %return, !dbg !270

sw.bb365:                                         ; preds = %entry
  %184 = load ptr, ptr %regs.addr, align 8, !dbg !271
  %call366 = call i64 @__ia32_sys_getcwd(ptr noundef %184) #3, !dbg !271
  store i64 %call366, ptr %retval, align 8, !dbg !271
  br label %return, !dbg !271

sw.bb367:                                         ; preds = %entry
  %185 = load ptr, ptr %regs.addr, align 8, !dbg !272
  %call368 = call i64 @__ia32_sys_capget(ptr noundef %185) #3, !dbg !272
  store i64 %call368, ptr %retval, align 8, !dbg !272
  br label %return, !dbg !272

sw.bb369:                                         ; preds = %entry
  %186 = load ptr, ptr %regs.addr, align 8, !dbg !273
  %call370 = call i64 @__ia32_sys_capset(ptr noundef %186) #3, !dbg !273
  store i64 %call370, ptr %retval, align 8, !dbg !273
  br label %return, !dbg !273

sw.bb371:                                         ; preds = %entry
  %187 = load ptr, ptr %regs.addr, align 8, !dbg !274
  %call372 = call i64 @__ia32_compat_sys_sigaltstack(ptr noundef %187) #3, !dbg !274
  store i64 %call372, ptr %retval, align 8, !dbg !274
  br label %return, !dbg !274

sw.bb373:                                         ; preds = %entry
  %188 = load ptr, ptr %regs.addr, align 8, !dbg !275
  %call374 = call i64 @__ia32_compat_sys_sendfile(ptr noundef %188) #3, !dbg !275
  store i64 %call374, ptr %retval, align 8, !dbg !275
  br label %return, !dbg !275

sw.bb375:                                         ; preds = %entry
  %189 = load ptr, ptr %regs.addr, align 8, !dbg !276
  %call376 = call i64 @__ia32_sys_ni_syscall(ptr noundef %189) #3, !dbg !276
  store i64 %call376, ptr %retval, align 8, !dbg !276
  br label %return, !dbg !276

sw.bb377:                                         ; preds = %entry
  %190 = load ptr, ptr %regs.addr, align 8, !dbg !277
  %call378 = call i64 @__ia32_sys_ni_syscall(ptr noundef %190) #3, !dbg !277
  store i64 %call378, ptr %retval, align 8, !dbg !277
  br label %return, !dbg !277

sw.bb379:                                         ; preds = %entry
  %191 = load ptr, ptr %regs.addr, align 8, !dbg !278
  %call380 = call i64 @__ia32_sys_vfork(ptr noundef %191) #3, !dbg !278
  store i64 %call380, ptr %retval, align 8, !dbg !278
  br label %return, !dbg !278

sw.bb381:                                         ; preds = %entry
  %192 = load ptr, ptr %regs.addr, align 8, !dbg !279
  %call382 = call i64 @__ia32_compat_sys_getrlimit(ptr noundef %192) #3, !dbg !279
  store i64 %call382, ptr %retval, align 8, !dbg !279
  br label %return, !dbg !279

sw.bb383:                                         ; preds = %entry
  %193 = load ptr, ptr %regs.addr, align 8, !dbg !280
  %call384 = call i64 @__ia32_sys_mmap_pgoff(ptr noundef %193) #3, !dbg !280
  store i64 %call384, ptr %retval, align 8, !dbg !280
  br label %return, !dbg !280

sw.bb385:                                         ; preds = %entry
  %194 = load ptr, ptr %regs.addr, align 8, !dbg !281
  %call386 = call i64 @__ia32_sys_ia32_truncate64(ptr noundef %194) #3, !dbg !281
  store i64 %call386, ptr %retval, align 8, !dbg !281
  br label %return, !dbg !281

sw.bb387:                                         ; preds = %entry
  %195 = load ptr, ptr %regs.addr, align 8, !dbg !282
  %call388 = call i64 @__ia32_sys_ia32_ftruncate64(ptr noundef %195) #3, !dbg !282
  store i64 %call388, ptr %retval, align 8, !dbg !282
  br label %return, !dbg !282

sw.bb389:                                         ; preds = %entry
  %196 = load ptr, ptr %regs.addr, align 8, !dbg !283
  %call390 = call i64 @__ia32_compat_sys_ia32_stat64(ptr noundef %196) #3, !dbg !283
  store i64 %call390, ptr %retval, align 8, !dbg !283
  br label %return, !dbg !283

sw.bb391:                                         ; preds = %entry
  %197 = load ptr, ptr %regs.addr, align 8, !dbg !284
  %call392 = call i64 @__ia32_compat_sys_ia32_lstat64(ptr noundef %197) #3, !dbg !284
  store i64 %call392, ptr %retval, align 8, !dbg !284
  br label %return, !dbg !284

sw.bb393:                                         ; preds = %entry
  %198 = load ptr, ptr %regs.addr, align 8, !dbg !285
  %call394 = call i64 @__ia32_compat_sys_ia32_fstat64(ptr noundef %198) #3, !dbg !285
  store i64 %call394, ptr %retval, align 8, !dbg !285
  br label %return, !dbg !285

sw.bb395:                                         ; preds = %entry
  %199 = load ptr, ptr %regs.addr, align 8, !dbg !286
  %call396 = call i64 @__ia32_sys_lchown(ptr noundef %199) #3, !dbg !286
  store i64 %call396, ptr %retval, align 8, !dbg !286
  br label %return, !dbg !286

sw.bb397:                                         ; preds = %entry
  %200 = load ptr, ptr %regs.addr, align 8, !dbg !287
  %call398 = call i64 @__ia32_sys_getuid(ptr noundef %200) #3, !dbg !287
  store i64 %call398, ptr %retval, align 8, !dbg !287
  br label %return, !dbg !287

sw.bb399:                                         ; preds = %entry
  %201 = load ptr, ptr %regs.addr, align 8, !dbg !288
  %call400 = call i64 @__ia32_sys_getgid(ptr noundef %201) #3, !dbg !288
  store i64 %call400, ptr %retval, align 8, !dbg !288
  br label %return, !dbg !288

sw.bb401:                                         ; preds = %entry
  %202 = load ptr, ptr %regs.addr, align 8, !dbg !289
  %call402 = call i64 @__ia32_sys_geteuid(ptr noundef %202) #3, !dbg !289
  store i64 %call402, ptr %retval, align 8, !dbg !289
  br label %return, !dbg !289

sw.bb403:                                         ; preds = %entry
  %203 = load ptr, ptr %regs.addr, align 8, !dbg !290
  %call404 = call i64 @__ia32_sys_getegid(ptr noundef %203) #3, !dbg !290
  store i64 %call404, ptr %retval, align 8, !dbg !290
  br label %return, !dbg !290

sw.bb405:                                         ; preds = %entry
  %204 = load ptr, ptr %regs.addr, align 8, !dbg !291
  %call406 = call i64 @__ia32_sys_setreuid(ptr noundef %204) #3, !dbg !291
  store i64 %call406, ptr %retval, align 8, !dbg !291
  br label %return, !dbg !291

sw.bb407:                                         ; preds = %entry
  %205 = load ptr, ptr %regs.addr, align 8, !dbg !292
  %call408 = call i64 @__ia32_sys_setregid(ptr noundef %205) #3, !dbg !292
  store i64 %call408, ptr %retval, align 8, !dbg !292
  br label %return, !dbg !292

sw.bb409:                                         ; preds = %entry
  %206 = load ptr, ptr %regs.addr, align 8, !dbg !293
  %call410 = call i64 @__ia32_sys_getgroups(ptr noundef %206) #3, !dbg !293
  store i64 %call410, ptr %retval, align 8, !dbg !293
  br label %return, !dbg !293

sw.bb411:                                         ; preds = %entry
  %207 = load ptr, ptr %regs.addr, align 8, !dbg !294
  %call412 = call i64 @__ia32_sys_setgroups(ptr noundef %207) #3, !dbg !294
  store i64 %call412, ptr %retval, align 8, !dbg !294
  br label %return, !dbg !294

sw.bb413:                                         ; preds = %entry
  %208 = load ptr, ptr %regs.addr, align 8, !dbg !295
  %call414 = call i64 @__ia32_sys_fchown(ptr noundef %208) #3, !dbg !295
  store i64 %call414, ptr %retval, align 8, !dbg !295
  br label %return, !dbg !295

sw.bb415:                                         ; preds = %entry
  %209 = load ptr, ptr %regs.addr, align 8, !dbg !296
  %call416 = call i64 @__ia32_sys_setresuid(ptr noundef %209) #3, !dbg !296
  store i64 %call416, ptr %retval, align 8, !dbg !296
  br label %return, !dbg !296

sw.bb417:                                         ; preds = %entry
  %210 = load ptr, ptr %regs.addr, align 8, !dbg !297
  %call418 = call i64 @__ia32_sys_getresuid(ptr noundef %210) #3, !dbg !297
  store i64 %call418, ptr %retval, align 8, !dbg !297
  br label %return, !dbg !297

sw.bb419:                                         ; preds = %entry
  %211 = load ptr, ptr %regs.addr, align 8, !dbg !298
  %call420 = call i64 @__ia32_sys_setresgid(ptr noundef %211) #3, !dbg !298
  store i64 %call420, ptr %retval, align 8, !dbg !298
  br label %return, !dbg !298

sw.bb421:                                         ; preds = %entry
  %212 = load ptr, ptr %regs.addr, align 8, !dbg !299
  %call422 = call i64 @__ia32_sys_getresgid(ptr noundef %212) #3, !dbg !299
  store i64 %call422, ptr %retval, align 8, !dbg !299
  br label %return, !dbg !299

sw.bb423:                                         ; preds = %entry
  %213 = load ptr, ptr %regs.addr, align 8, !dbg !300
  %call424 = call i64 @__ia32_sys_chown(ptr noundef %213) #3, !dbg !300
  store i64 %call424, ptr %retval, align 8, !dbg !300
  br label %return, !dbg !300

sw.bb425:                                         ; preds = %entry
  %214 = load ptr, ptr %regs.addr, align 8, !dbg !301
  %call426 = call i64 @__ia32_sys_setuid(ptr noundef %214) #3, !dbg !301
  store i64 %call426, ptr %retval, align 8, !dbg !301
  br label %return, !dbg !301

sw.bb427:                                         ; preds = %entry
  %215 = load ptr, ptr %regs.addr, align 8, !dbg !302
  %call428 = call i64 @__ia32_sys_setgid(ptr noundef %215) #3, !dbg !302
  store i64 %call428, ptr %retval, align 8, !dbg !302
  br label %return, !dbg !302

sw.bb429:                                         ; preds = %entry
  %216 = load ptr, ptr %regs.addr, align 8, !dbg !303
  %call430 = call i64 @__ia32_sys_setfsuid(ptr noundef %216) #3, !dbg !303
  store i64 %call430, ptr %retval, align 8, !dbg !303
  br label %return, !dbg !303

sw.bb431:                                         ; preds = %entry
  %217 = load ptr, ptr %regs.addr, align 8, !dbg !304
  %call432 = call i64 @__ia32_sys_setfsgid(ptr noundef %217) #3, !dbg !304
  store i64 %call432, ptr %retval, align 8, !dbg !304
  br label %return, !dbg !304

sw.bb433:                                         ; preds = %entry
  %218 = load ptr, ptr %regs.addr, align 8, !dbg !305
  %call434 = call i64 @__ia32_sys_pivot_root(ptr noundef %218) #3, !dbg !305
  store i64 %call434, ptr %retval, align 8, !dbg !305
  br label %return, !dbg !305

sw.bb435:                                         ; preds = %entry
  %219 = load ptr, ptr %regs.addr, align 8, !dbg !306
  %call436 = call i64 @__ia32_sys_mincore(ptr noundef %219) #3, !dbg !306
  store i64 %call436, ptr %retval, align 8, !dbg !306
  br label %return, !dbg !306

sw.bb437:                                         ; preds = %entry
  %220 = load ptr, ptr %regs.addr, align 8, !dbg !307
  %call438 = call i64 @__ia32_sys_madvise(ptr noundef %220) #3, !dbg !307
  store i64 %call438, ptr %retval, align 8, !dbg !307
  br label %return, !dbg !307

sw.bb439:                                         ; preds = %entry
  %221 = load ptr, ptr %regs.addr, align 8, !dbg !308
  %call440 = call i64 @__ia32_sys_getdents64(ptr noundef %221) #3, !dbg !308
  store i64 %call440, ptr %retval, align 8, !dbg !308
  br label %return, !dbg !308

sw.bb441:                                         ; preds = %entry
  %222 = load ptr, ptr %regs.addr, align 8, !dbg !309
  %call442 = call i64 @__ia32_compat_sys_fcntl64(ptr noundef %222) #3, !dbg !309
  store i64 %call442, ptr %retval, align 8, !dbg !309
  br label %return, !dbg !309

sw.bb443:                                         ; preds = %entry
  %223 = load ptr, ptr %regs.addr, align 8, !dbg !310
  %call444 = call i64 @__ia32_sys_ni_syscall(ptr noundef %223) #3, !dbg !310
  store i64 %call444, ptr %retval, align 8, !dbg !310
  br label %return, !dbg !310

sw.bb445:                                         ; preds = %entry
  %224 = load ptr, ptr %regs.addr, align 8, !dbg !311
  %call446 = call i64 @__ia32_sys_ni_syscall(ptr noundef %224) #3, !dbg !311
  store i64 %call446, ptr %retval, align 8, !dbg !311
  br label %return, !dbg !311

sw.bb447:                                         ; preds = %entry
  %225 = load ptr, ptr %regs.addr, align 8, !dbg !312
  %call448 = call i64 @__ia32_sys_gettid(ptr noundef %225) #3, !dbg !312
  store i64 %call448, ptr %retval, align 8, !dbg !312
  br label %return, !dbg !312

sw.bb449:                                         ; preds = %entry
  %226 = load ptr, ptr %regs.addr, align 8, !dbg !313
  %call450 = call i64 @__ia32_sys_ia32_readahead(ptr noundef %226) #3, !dbg !313
  store i64 %call450, ptr %retval, align 8, !dbg !313
  br label %return, !dbg !313

sw.bb451:                                         ; preds = %entry
  %227 = load ptr, ptr %regs.addr, align 8, !dbg !314
  %call452 = call i64 @__ia32_sys_setxattr(ptr noundef %227) #3, !dbg !314
  store i64 %call452, ptr %retval, align 8, !dbg !314
  br label %return, !dbg !314

sw.bb453:                                         ; preds = %entry
  %228 = load ptr, ptr %regs.addr, align 8, !dbg !315
  %call454 = call i64 @__ia32_sys_lsetxattr(ptr noundef %228) #3, !dbg !315
  store i64 %call454, ptr %retval, align 8, !dbg !315
  br label %return, !dbg !315

sw.bb455:                                         ; preds = %entry
  %229 = load ptr, ptr %regs.addr, align 8, !dbg !316
  %call456 = call i64 @__ia32_sys_fsetxattr(ptr noundef %229) #3, !dbg !316
  store i64 %call456, ptr %retval, align 8, !dbg !316
  br label %return, !dbg !316

sw.bb457:                                         ; preds = %entry
  %230 = load ptr, ptr %regs.addr, align 8, !dbg !317
  %call458 = call i64 @__ia32_sys_getxattr(ptr noundef %230) #3, !dbg !317
  store i64 %call458, ptr %retval, align 8, !dbg !317
  br label %return, !dbg !317

sw.bb459:                                         ; preds = %entry
  %231 = load ptr, ptr %regs.addr, align 8, !dbg !318
  %call460 = call i64 @__ia32_sys_lgetxattr(ptr noundef %231) #3, !dbg !318
  store i64 %call460, ptr %retval, align 8, !dbg !318
  br label %return, !dbg !318

sw.bb461:                                         ; preds = %entry
  %232 = load ptr, ptr %regs.addr, align 8, !dbg !319
  %call462 = call i64 @__ia32_sys_fgetxattr(ptr noundef %232) #3, !dbg !319
  store i64 %call462, ptr %retval, align 8, !dbg !319
  br label %return, !dbg !319

sw.bb463:                                         ; preds = %entry
  %233 = load ptr, ptr %regs.addr, align 8, !dbg !320
  %call464 = call i64 @__ia32_sys_listxattr(ptr noundef %233) #3, !dbg !320
  store i64 %call464, ptr %retval, align 8, !dbg !320
  br label %return, !dbg !320

sw.bb465:                                         ; preds = %entry
  %234 = load ptr, ptr %regs.addr, align 8, !dbg !321
  %call466 = call i64 @__ia32_sys_llistxattr(ptr noundef %234) #3, !dbg !321
  store i64 %call466, ptr %retval, align 8, !dbg !321
  br label %return, !dbg !321

sw.bb467:                                         ; preds = %entry
  %235 = load ptr, ptr %regs.addr, align 8, !dbg !322
  %call468 = call i64 @__ia32_sys_flistxattr(ptr noundef %235) #3, !dbg !322
  store i64 %call468, ptr %retval, align 8, !dbg !322
  br label %return, !dbg !322

sw.bb469:                                         ; preds = %entry
  %236 = load ptr, ptr %regs.addr, align 8, !dbg !323
  %call470 = call i64 @__ia32_sys_removexattr(ptr noundef %236) #3, !dbg !323
  store i64 %call470, ptr %retval, align 8, !dbg !323
  br label %return, !dbg !323

sw.bb471:                                         ; preds = %entry
  %237 = load ptr, ptr %regs.addr, align 8, !dbg !324
  %call472 = call i64 @__ia32_sys_lremovexattr(ptr noundef %237) #3, !dbg !324
  store i64 %call472, ptr %retval, align 8, !dbg !324
  br label %return, !dbg !324

sw.bb473:                                         ; preds = %entry
  %238 = load ptr, ptr %regs.addr, align 8, !dbg !325
  %call474 = call i64 @__ia32_sys_fremovexattr(ptr noundef %238) #3, !dbg !325
  store i64 %call474, ptr %retval, align 8, !dbg !325
  br label %return, !dbg !325

sw.bb475:                                         ; preds = %entry
  %239 = load ptr, ptr %regs.addr, align 8, !dbg !326
  %call476 = call i64 @__ia32_sys_tkill(ptr noundef %239) #3, !dbg !326
  store i64 %call476, ptr %retval, align 8, !dbg !326
  br label %return, !dbg !326

sw.bb477:                                         ; preds = %entry
  %240 = load ptr, ptr %regs.addr, align 8, !dbg !327
  %call478 = call i64 @__ia32_sys_sendfile64(ptr noundef %240) #3, !dbg !327
  store i64 %call478, ptr %retval, align 8, !dbg !327
  br label %return, !dbg !327

sw.bb479:                                         ; preds = %entry
  %241 = load ptr, ptr %regs.addr, align 8, !dbg !328
  %call480 = call i64 @__ia32_sys_futex_time32(ptr noundef %241) #3, !dbg !328
  store i64 %call480, ptr %retval, align 8, !dbg !328
  br label %return, !dbg !328

sw.bb481:                                         ; preds = %entry
  %242 = load ptr, ptr %regs.addr, align 8, !dbg !329
  %call482 = call i64 @__ia32_compat_sys_sched_setaffinity(ptr noundef %242) #3, !dbg !329
  store i64 %call482, ptr %retval, align 8, !dbg !329
  br label %return, !dbg !329

sw.bb483:                                         ; preds = %entry
  %243 = load ptr, ptr %regs.addr, align 8, !dbg !330
  %call484 = call i64 @__ia32_compat_sys_sched_getaffinity(ptr noundef %243) #3, !dbg !330
  store i64 %call484, ptr %retval, align 8, !dbg !330
  br label %return, !dbg !330

sw.bb485:                                         ; preds = %entry
  %244 = load ptr, ptr %regs.addr, align 8, !dbg !331
  %call486 = call i64 @__ia32_sys_set_thread_area(ptr noundef %244) #3, !dbg !331
  store i64 %call486, ptr %retval, align 8, !dbg !331
  br label %return, !dbg !331

sw.bb487:                                         ; preds = %entry
  %245 = load ptr, ptr %regs.addr, align 8, !dbg !332
  %call488 = call i64 @__ia32_sys_get_thread_area(ptr noundef %245) #3, !dbg !332
  store i64 %call488, ptr %retval, align 8, !dbg !332
  br label %return, !dbg !332

sw.bb489:                                         ; preds = %entry
  %246 = load ptr, ptr %regs.addr, align 8, !dbg !333
  %call490 = call i64 @__ia32_compat_sys_io_setup(ptr noundef %246) #3, !dbg !333
  store i64 %call490, ptr %retval, align 8, !dbg !333
  br label %return, !dbg !333

sw.bb491:                                         ; preds = %entry
  %247 = load ptr, ptr %regs.addr, align 8, !dbg !334
  %call492 = call i64 @__ia32_sys_io_destroy(ptr noundef %247) #3, !dbg !334
  store i64 %call492, ptr %retval, align 8, !dbg !334
  br label %return, !dbg !334

sw.bb493:                                         ; preds = %entry
  %248 = load ptr, ptr %regs.addr, align 8, !dbg !335
  %call494 = call i64 @__ia32_sys_io_getevents_time32(ptr noundef %248) #3, !dbg !335
  store i64 %call494, ptr %retval, align 8, !dbg !335
  br label %return, !dbg !335

sw.bb495:                                         ; preds = %entry
  %249 = load ptr, ptr %regs.addr, align 8, !dbg !336
  %call496 = call i64 @__ia32_compat_sys_io_submit(ptr noundef %249) #3, !dbg !336
  store i64 %call496, ptr %retval, align 8, !dbg !336
  br label %return, !dbg !336

sw.bb497:                                         ; preds = %entry
  %250 = load ptr, ptr %regs.addr, align 8, !dbg !337
  %call498 = call i64 @__ia32_sys_io_cancel(ptr noundef %250) #3, !dbg !337
  store i64 %call498, ptr %retval, align 8, !dbg !337
  br label %return, !dbg !337

sw.bb499:                                         ; preds = %entry
  %251 = load ptr, ptr %regs.addr, align 8, !dbg !338
  %call500 = call i64 @__ia32_sys_ia32_fadvise64(ptr noundef %251) #3, !dbg !338
  store i64 %call500, ptr %retval, align 8, !dbg !338
  br label %return, !dbg !338

sw.bb501:                                         ; preds = %entry
  %252 = load ptr, ptr %regs.addr, align 8, !dbg !339
  %call502 = call i64 @__ia32_sys_ni_syscall(ptr noundef %252) #3, !dbg !339
  store i64 %call502, ptr %retval, align 8, !dbg !339
  br label %return, !dbg !339

sw.bb503:                                         ; preds = %entry
  %253 = load ptr, ptr %regs.addr, align 8, !dbg !340
  %call504 = call i64 @__ia32_sys_exit_group(ptr noundef %253) #3, !dbg !340
  store i64 %call504, ptr %retval, align 8, !dbg !340
  br label %return, !dbg !340

sw.bb505:                                         ; preds = %entry
  %254 = load ptr, ptr %regs.addr, align 8, !dbg !341
  %call506 = call i64 @__ia32_compat_sys_lookup_dcookie(ptr noundef %254) #3, !dbg !341
  store i64 %call506, ptr %retval, align 8, !dbg !341
  br label %return, !dbg !341

sw.bb507:                                         ; preds = %entry
  %255 = load ptr, ptr %regs.addr, align 8, !dbg !342
  %call508 = call i64 @__ia32_sys_epoll_create(ptr noundef %255) #3, !dbg !342
  store i64 %call508, ptr %retval, align 8, !dbg !342
  br label %return, !dbg !342

sw.bb509:                                         ; preds = %entry
  %256 = load ptr, ptr %regs.addr, align 8, !dbg !343
  %call510 = call i64 @__ia32_sys_epoll_ctl(ptr noundef %256) #3, !dbg !343
  store i64 %call510, ptr %retval, align 8, !dbg !343
  br label %return, !dbg !343

sw.bb511:                                         ; preds = %entry
  %257 = load ptr, ptr %regs.addr, align 8, !dbg !344
  %call512 = call i64 @__ia32_sys_epoll_wait(ptr noundef %257) #3, !dbg !344
  store i64 %call512, ptr %retval, align 8, !dbg !344
  br label %return, !dbg !344

sw.bb513:                                         ; preds = %entry
  %258 = load ptr, ptr %regs.addr, align 8, !dbg !345
  %call514 = call i64 @__ia32_sys_remap_file_pages(ptr noundef %258) #3, !dbg !345
  store i64 %call514, ptr %retval, align 8, !dbg !345
  br label %return, !dbg !345

sw.bb515:                                         ; preds = %entry
  %259 = load ptr, ptr %regs.addr, align 8, !dbg !346
  %call516 = call i64 @__ia32_sys_set_tid_address(ptr noundef %259) #3, !dbg !346
  store i64 %call516, ptr %retval, align 8, !dbg !346
  br label %return, !dbg !346

sw.bb517:                                         ; preds = %entry
  %260 = load ptr, ptr %regs.addr, align 8, !dbg !347
  %call518 = call i64 @__ia32_compat_sys_timer_create(ptr noundef %260) #3, !dbg !347
  store i64 %call518, ptr %retval, align 8, !dbg !347
  br label %return, !dbg !347

sw.bb519:                                         ; preds = %entry
  %261 = load ptr, ptr %regs.addr, align 8, !dbg !348
  %call520 = call i64 @__ia32_sys_timer_settime32(ptr noundef %261) #3, !dbg !348
  store i64 %call520, ptr %retval, align 8, !dbg !348
  br label %return, !dbg !348

sw.bb521:                                         ; preds = %entry
  %262 = load ptr, ptr %regs.addr, align 8, !dbg !349
  %call522 = call i64 @__ia32_sys_timer_gettime32(ptr noundef %262) #3, !dbg !349
  store i64 %call522, ptr %retval, align 8, !dbg !349
  br label %return, !dbg !349

sw.bb523:                                         ; preds = %entry
  %263 = load ptr, ptr %regs.addr, align 8, !dbg !350
  %call524 = call i64 @__ia32_sys_timer_getoverrun(ptr noundef %263) #3, !dbg !350
  store i64 %call524, ptr %retval, align 8, !dbg !350
  br label %return, !dbg !350

sw.bb525:                                         ; preds = %entry
  %264 = load ptr, ptr %regs.addr, align 8, !dbg !351
  %call526 = call i64 @__ia32_sys_timer_delete(ptr noundef %264) #3, !dbg !351
  store i64 %call526, ptr %retval, align 8, !dbg !351
  br label %return, !dbg !351

sw.bb527:                                         ; preds = %entry
  %265 = load ptr, ptr %regs.addr, align 8, !dbg !352
  %call528 = call i64 @__ia32_sys_clock_settime32(ptr noundef %265) #3, !dbg !352
  store i64 %call528, ptr %retval, align 8, !dbg !352
  br label %return, !dbg !352

sw.bb529:                                         ; preds = %entry
  %266 = load ptr, ptr %regs.addr, align 8, !dbg !353
  %call530 = call i64 @__ia32_sys_clock_gettime32(ptr noundef %266) #3, !dbg !353
  store i64 %call530, ptr %retval, align 8, !dbg !353
  br label %return, !dbg !353

sw.bb531:                                         ; preds = %entry
  %267 = load ptr, ptr %regs.addr, align 8, !dbg !354
  %call532 = call i64 @__ia32_sys_clock_getres_time32(ptr noundef %267) #3, !dbg !354
  store i64 %call532, ptr %retval, align 8, !dbg !354
  br label %return, !dbg !354

sw.bb533:                                         ; preds = %entry
  %268 = load ptr, ptr %regs.addr, align 8, !dbg !355
  %call534 = call i64 @__ia32_sys_clock_nanosleep_time32(ptr noundef %268) #3, !dbg !355
  store i64 %call534, ptr %retval, align 8, !dbg !355
  br label %return, !dbg !355

sw.bb535:                                         ; preds = %entry
  %269 = load ptr, ptr %regs.addr, align 8, !dbg !356
  %call536 = call i64 @__ia32_compat_sys_statfs64(ptr noundef %269) #3, !dbg !356
  store i64 %call536, ptr %retval, align 8, !dbg !356
  br label %return, !dbg !356

sw.bb537:                                         ; preds = %entry
  %270 = load ptr, ptr %regs.addr, align 8, !dbg !357
  %call538 = call i64 @__ia32_compat_sys_fstatfs64(ptr noundef %270) #3, !dbg !357
  store i64 %call538, ptr %retval, align 8, !dbg !357
  br label %return, !dbg !357

sw.bb539:                                         ; preds = %entry
  %271 = load ptr, ptr %regs.addr, align 8, !dbg !358
  %call540 = call i64 @__ia32_sys_tgkill(ptr noundef %271) #3, !dbg !358
  store i64 %call540, ptr %retval, align 8, !dbg !358
  br label %return, !dbg !358

sw.bb541:                                         ; preds = %entry
  %272 = load ptr, ptr %regs.addr, align 8, !dbg !359
  %call542 = call i64 @__ia32_sys_utimes_time32(ptr noundef %272) #3, !dbg !359
  store i64 %call542, ptr %retval, align 8, !dbg !359
  br label %return, !dbg !359

sw.bb543:                                         ; preds = %entry
  %273 = load ptr, ptr %regs.addr, align 8, !dbg !360
  %call544 = call i64 @__ia32_sys_ia32_fadvise64_64(ptr noundef %273) #3, !dbg !360
  store i64 %call544, ptr %retval, align 8, !dbg !360
  br label %return, !dbg !360

sw.bb545:                                         ; preds = %entry
  %274 = load ptr, ptr %regs.addr, align 8, !dbg !361
  %call546 = call i64 @__ia32_sys_ni_syscall(ptr noundef %274) #3, !dbg !361
  store i64 %call546, ptr %retval, align 8, !dbg !361
  br label %return, !dbg !361

sw.bb547:                                         ; preds = %entry
  %275 = load ptr, ptr %regs.addr, align 8, !dbg !362
  %call548 = call i64 @__ia32_sys_mbind(ptr noundef %275) #3, !dbg !362
  store i64 %call548, ptr %retval, align 8, !dbg !362
  br label %return, !dbg !362

sw.bb549:                                         ; preds = %entry
  %276 = load ptr, ptr %regs.addr, align 8, !dbg !363
  %call550 = call i64 @__ia32_sys_get_mempolicy(ptr noundef %276) #3, !dbg !363
  store i64 %call550, ptr %retval, align 8, !dbg !363
  br label %return, !dbg !363

sw.bb551:                                         ; preds = %entry
  %277 = load ptr, ptr %regs.addr, align 8, !dbg !364
  %call552 = call i64 @__ia32_sys_set_mempolicy(ptr noundef %277) #3, !dbg !364
  store i64 %call552, ptr %retval, align 8, !dbg !364
  br label %return, !dbg !364

sw.bb553:                                         ; preds = %entry
  %278 = load ptr, ptr %regs.addr, align 8, !dbg !365
  %call554 = call i64 @__ia32_compat_sys_mq_open(ptr noundef %278) #3, !dbg !365
  store i64 %call554, ptr %retval, align 8, !dbg !365
  br label %return, !dbg !365

sw.bb555:                                         ; preds = %entry
  %279 = load ptr, ptr %regs.addr, align 8, !dbg !366
  %call556 = call i64 @__ia32_sys_mq_unlink(ptr noundef %279) #3, !dbg !366
  store i64 %call556, ptr %retval, align 8, !dbg !366
  br label %return, !dbg !366

sw.bb557:                                         ; preds = %entry
  %280 = load ptr, ptr %regs.addr, align 8, !dbg !367
  %call558 = call i64 @__ia32_sys_mq_timedsend_time32(ptr noundef %280) #3, !dbg !367
  store i64 %call558, ptr %retval, align 8, !dbg !367
  br label %return, !dbg !367

sw.bb559:                                         ; preds = %entry
  %281 = load ptr, ptr %regs.addr, align 8, !dbg !368
  %call560 = call i64 @__ia32_sys_mq_timedreceive_time32(ptr noundef %281) #3, !dbg !368
  store i64 %call560, ptr %retval, align 8, !dbg !368
  br label %return, !dbg !368

sw.bb561:                                         ; preds = %entry
  %282 = load ptr, ptr %regs.addr, align 8, !dbg !369
  %call562 = call i64 @__ia32_compat_sys_mq_notify(ptr noundef %282) #3, !dbg !369
  store i64 %call562, ptr %retval, align 8, !dbg !369
  br label %return, !dbg !369

sw.bb563:                                         ; preds = %entry
  %283 = load ptr, ptr %regs.addr, align 8, !dbg !370
  %call564 = call i64 @__ia32_compat_sys_mq_getsetattr(ptr noundef %283) #3, !dbg !370
  store i64 %call564, ptr %retval, align 8, !dbg !370
  br label %return, !dbg !370

sw.bb565:                                         ; preds = %entry
  %284 = load ptr, ptr %regs.addr, align 8, !dbg !371
  %call566 = call i64 @__ia32_compat_sys_kexec_load(ptr noundef %284) #3, !dbg !371
  store i64 %call566, ptr %retval, align 8, !dbg !371
  br label %return, !dbg !371

sw.bb567:                                         ; preds = %entry
  %285 = load ptr, ptr %regs.addr, align 8, !dbg !372
  %call568 = call i64 @__ia32_compat_sys_waitid(ptr noundef %285) #3, !dbg !372
  store i64 %call568, ptr %retval, align 8, !dbg !372
  br label %return, !dbg !372

sw.bb569:                                         ; preds = %entry
  %286 = load ptr, ptr %regs.addr, align 8, !dbg !373
  %call570 = call i64 @__ia32_sys_ni_syscall(ptr noundef %286) #3, !dbg !373
  store i64 %call570, ptr %retval, align 8, !dbg !373
  br label %return, !dbg !373

sw.bb571:                                         ; preds = %entry
  %287 = load ptr, ptr %regs.addr, align 8, !dbg !374
  %call572 = call i64 @__ia32_sys_add_key(ptr noundef %287) #3, !dbg !374
  store i64 %call572, ptr %retval, align 8, !dbg !374
  br label %return, !dbg !374

sw.bb573:                                         ; preds = %entry
  %288 = load ptr, ptr %regs.addr, align 8, !dbg !375
  %call574 = call i64 @__ia32_sys_request_key(ptr noundef %288) #3, !dbg !375
  store i64 %call574, ptr %retval, align 8, !dbg !375
  br label %return, !dbg !375

sw.bb575:                                         ; preds = %entry
  %289 = load ptr, ptr %regs.addr, align 8, !dbg !376
  %call576 = call i64 @__ia32_compat_sys_keyctl(ptr noundef %289) #3, !dbg !376
  store i64 %call576, ptr %retval, align 8, !dbg !376
  br label %return, !dbg !376

sw.bb577:                                         ; preds = %entry
  %290 = load ptr, ptr %regs.addr, align 8, !dbg !377
  %call578 = call i64 @__ia32_sys_ioprio_set(ptr noundef %290) #3, !dbg !377
  store i64 %call578, ptr %retval, align 8, !dbg !377
  br label %return, !dbg !377

sw.bb579:                                         ; preds = %entry
  %291 = load ptr, ptr %regs.addr, align 8, !dbg !378
  %call580 = call i64 @__ia32_sys_ioprio_get(ptr noundef %291) #3, !dbg !378
  store i64 %call580, ptr %retval, align 8, !dbg !378
  br label %return, !dbg !378

sw.bb581:                                         ; preds = %entry
  %292 = load ptr, ptr %regs.addr, align 8, !dbg !379
  %call582 = call i64 @__ia32_sys_inotify_init(ptr noundef %292) #3, !dbg !379
  store i64 %call582, ptr %retval, align 8, !dbg !379
  br label %return, !dbg !379

sw.bb583:                                         ; preds = %entry
  %293 = load ptr, ptr %regs.addr, align 8, !dbg !380
  %call584 = call i64 @__ia32_sys_inotify_add_watch(ptr noundef %293) #3, !dbg !380
  store i64 %call584, ptr %retval, align 8, !dbg !380
  br label %return, !dbg !380

sw.bb585:                                         ; preds = %entry
  %294 = load ptr, ptr %regs.addr, align 8, !dbg !381
  %call586 = call i64 @__ia32_sys_inotify_rm_watch(ptr noundef %294) #3, !dbg !381
  store i64 %call586, ptr %retval, align 8, !dbg !381
  br label %return, !dbg !381

sw.bb587:                                         ; preds = %entry
  %295 = load ptr, ptr %regs.addr, align 8, !dbg !382
  %call588 = call i64 @__ia32_sys_migrate_pages(ptr noundef %295) #3, !dbg !382
  store i64 %call588, ptr %retval, align 8, !dbg !382
  br label %return, !dbg !382

sw.bb589:                                         ; preds = %entry
  %296 = load ptr, ptr %regs.addr, align 8, !dbg !383
  %call590 = call i64 @__ia32_compat_sys_openat(ptr noundef %296) #3, !dbg !383
  store i64 %call590, ptr %retval, align 8, !dbg !383
  br label %return, !dbg !383

sw.bb591:                                         ; preds = %entry
  %297 = load ptr, ptr %regs.addr, align 8, !dbg !384
  %call592 = call i64 @__ia32_sys_mkdirat(ptr noundef %297) #3, !dbg !384
  store i64 %call592, ptr %retval, align 8, !dbg !384
  br label %return, !dbg !384

sw.bb593:                                         ; preds = %entry
  %298 = load ptr, ptr %regs.addr, align 8, !dbg !385
  %call594 = call i64 @__ia32_sys_mknodat(ptr noundef %298) #3, !dbg !385
  store i64 %call594, ptr %retval, align 8, !dbg !385
  br label %return, !dbg !385

sw.bb595:                                         ; preds = %entry
  %299 = load ptr, ptr %regs.addr, align 8, !dbg !386
  %call596 = call i64 @__ia32_sys_fchownat(ptr noundef %299) #3, !dbg !386
  store i64 %call596, ptr %retval, align 8, !dbg !386
  br label %return, !dbg !386

sw.bb597:                                         ; preds = %entry
  %300 = load ptr, ptr %regs.addr, align 8, !dbg !387
  %call598 = call i64 @__ia32_sys_futimesat_time32(ptr noundef %300) #3, !dbg !387
  store i64 %call598, ptr %retval, align 8, !dbg !387
  br label %return, !dbg !387

sw.bb599:                                         ; preds = %entry
  %301 = load ptr, ptr %regs.addr, align 8, !dbg !388
  %call600 = call i64 @__ia32_compat_sys_ia32_fstatat64(ptr noundef %301) #3, !dbg !388
  store i64 %call600, ptr %retval, align 8, !dbg !388
  br label %return, !dbg !388

sw.bb601:                                         ; preds = %entry
  %302 = load ptr, ptr %regs.addr, align 8, !dbg !389
  %call602 = call i64 @__ia32_sys_unlinkat(ptr noundef %302) #3, !dbg !389
  store i64 %call602, ptr %retval, align 8, !dbg !389
  br label %return, !dbg !389

sw.bb603:                                         ; preds = %entry
  %303 = load ptr, ptr %regs.addr, align 8, !dbg !390
  %call604 = call i64 @__ia32_sys_renameat(ptr noundef %303) #3, !dbg !390
  store i64 %call604, ptr %retval, align 8, !dbg !390
  br label %return, !dbg !390

sw.bb605:                                         ; preds = %entry
  %304 = load ptr, ptr %regs.addr, align 8, !dbg !391
  %call606 = call i64 @__ia32_sys_linkat(ptr noundef %304) #3, !dbg !391
  store i64 %call606, ptr %retval, align 8, !dbg !391
  br label %return, !dbg !391

sw.bb607:                                         ; preds = %entry
  %305 = load ptr, ptr %regs.addr, align 8, !dbg !392
  %call608 = call i64 @__ia32_sys_symlinkat(ptr noundef %305) #3, !dbg !392
  store i64 %call608, ptr %retval, align 8, !dbg !392
  br label %return, !dbg !392

sw.bb609:                                         ; preds = %entry
  %306 = load ptr, ptr %regs.addr, align 8, !dbg !393
  %call610 = call i64 @__ia32_sys_readlinkat(ptr noundef %306) #3, !dbg !393
  store i64 %call610, ptr %retval, align 8, !dbg !393
  br label %return, !dbg !393

sw.bb611:                                         ; preds = %entry
  %307 = load ptr, ptr %regs.addr, align 8, !dbg !394
  %call612 = call i64 @__ia32_sys_fchmodat(ptr noundef %307) #3, !dbg !394
  store i64 %call612, ptr %retval, align 8, !dbg !394
  br label %return, !dbg !394

sw.bb613:                                         ; preds = %entry
  %308 = load ptr, ptr %regs.addr, align 8, !dbg !395
  %call614 = call i64 @__ia32_sys_faccessat(ptr noundef %308) #3, !dbg !395
  store i64 %call614, ptr %retval, align 8, !dbg !395
  br label %return, !dbg !395

sw.bb615:                                         ; preds = %entry
  %309 = load ptr, ptr %regs.addr, align 8, !dbg !396
  %call616 = call i64 @__ia32_compat_sys_pselect6_time32(ptr noundef %309) #3, !dbg !396
  store i64 %call616, ptr %retval, align 8, !dbg !396
  br label %return, !dbg !396

sw.bb617:                                         ; preds = %entry
  %310 = load ptr, ptr %regs.addr, align 8, !dbg !397
  %call618 = call i64 @__ia32_compat_sys_ppoll_time32(ptr noundef %310) #3, !dbg !397
  store i64 %call618, ptr %retval, align 8, !dbg !397
  br label %return, !dbg !397

sw.bb619:                                         ; preds = %entry
  %311 = load ptr, ptr %regs.addr, align 8, !dbg !398
  %call620 = call i64 @__ia32_sys_unshare(ptr noundef %311) #3, !dbg !398
  store i64 %call620, ptr %retval, align 8, !dbg !398
  br label %return, !dbg !398

sw.bb621:                                         ; preds = %entry
  %312 = load ptr, ptr %regs.addr, align 8, !dbg !399
  %call622 = call i64 @__ia32_compat_sys_set_robust_list(ptr noundef %312) #3, !dbg !399
  store i64 %call622, ptr %retval, align 8, !dbg !399
  br label %return, !dbg !399

sw.bb623:                                         ; preds = %entry
  %313 = load ptr, ptr %regs.addr, align 8, !dbg !400
  %call624 = call i64 @__ia32_compat_sys_get_robust_list(ptr noundef %313) #3, !dbg !400
  store i64 %call624, ptr %retval, align 8, !dbg !400
  br label %return, !dbg !400

sw.bb625:                                         ; preds = %entry
  %314 = load ptr, ptr %regs.addr, align 8, !dbg !401
  %call626 = call i64 @__ia32_sys_splice(ptr noundef %314) #3, !dbg !401
  store i64 %call626, ptr %retval, align 8, !dbg !401
  br label %return, !dbg !401

sw.bb627:                                         ; preds = %entry
  %315 = load ptr, ptr %regs.addr, align 8, !dbg !402
  %call628 = call i64 @__ia32_sys_ia32_sync_file_range(ptr noundef %315) #3, !dbg !402
  store i64 %call628, ptr %retval, align 8, !dbg !402
  br label %return, !dbg !402

sw.bb629:                                         ; preds = %entry
  %316 = load ptr, ptr %regs.addr, align 8, !dbg !403
  %call630 = call i64 @__ia32_sys_tee(ptr noundef %316) #3, !dbg !403
  store i64 %call630, ptr %retval, align 8, !dbg !403
  br label %return, !dbg !403

sw.bb631:                                         ; preds = %entry
  %317 = load ptr, ptr %regs.addr, align 8, !dbg !404
  %call632 = call i64 @__ia32_sys_vmsplice(ptr noundef %317) #3, !dbg !404
  store i64 %call632, ptr %retval, align 8, !dbg !404
  br label %return, !dbg !404

sw.bb633:                                         ; preds = %entry
  %318 = load ptr, ptr %regs.addr, align 8, !dbg !405
  %call634 = call i64 @__ia32_sys_move_pages(ptr noundef %318) #3, !dbg !405
  store i64 %call634, ptr %retval, align 8, !dbg !405
  br label %return, !dbg !405

sw.bb635:                                         ; preds = %entry
  %319 = load ptr, ptr %regs.addr, align 8, !dbg !406
  %call636 = call i64 @__ia32_sys_getcpu(ptr noundef %319) #3, !dbg !406
  store i64 %call636, ptr %retval, align 8, !dbg !406
  br label %return, !dbg !406

sw.bb637:                                         ; preds = %entry
  %320 = load ptr, ptr %regs.addr, align 8, !dbg !407
  %call638 = call i64 @__ia32_sys_epoll_pwait(ptr noundef %320) #3, !dbg !407
  store i64 %call638, ptr %retval, align 8, !dbg !407
  br label %return, !dbg !407

sw.bb639:                                         ; preds = %entry
  %321 = load ptr, ptr %regs.addr, align 8, !dbg !408
  %call640 = call i64 @__ia32_sys_utimensat_time32(ptr noundef %321) #3, !dbg !408
  store i64 %call640, ptr %retval, align 8, !dbg !408
  br label %return, !dbg !408

sw.bb641:                                         ; preds = %entry
  %322 = load ptr, ptr %regs.addr, align 8, !dbg !409
  %call642 = call i64 @__ia32_compat_sys_signalfd(ptr noundef %322) #3, !dbg !409
  store i64 %call642, ptr %retval, align 8, !dbg !409
  br label %return, !dbg !409

sw.bb643:                                         ; preds = %entry
  %323 = load ptr, ptr %regs.addr, align 8, !dbg !410
  %call644 = call i64 @__ia32_sys_timerfd_create(ptr noundef %323) #3, !dbg !410
  store i64 %call644, ptr %retval, align 8, !dbg !410
  br label %return, !dbg !410

sw.bb645:                                         ; preds = %entry
  %324 = load ptr, ptr %regs.addr, align 8, !dbg !411
  %call646 = call i64 @__ia32_sys_eventfd(ptr noundef %324) #3, !dbg !411
  store i64 %call646, ptr %retval, align 8, !dbg !411
  br label %return, !dbg !411

sw.bb647:                                         ; preds = %entry
  %325 = load ptr, ptr %regs.addr, align 8, !dbg !412
  %call648 = call i64 @__ia32_sys_ia32_fallocate(ptr noundef %325) #3, !dbg !412
  store i64 %call648, ptr %retval, align 8, !dbg !412
  br label %return, !dbg !412

sw.bb649:                                         ; preds = %entry
  %326 = load ptr, ptr %regs.addr, align 8, !dbg !413
  %call650 = call i64 @__ia32_sys_timerfd_settime32(ptr noundef %326) #3, !dbg !413
  store i64 %call650, ptr %retval, align 8, !dbg !413
  br label %return, !dbg !413

sw.bb651:                                         ; preds = %entry
  %327 = load ptr, ptr %regs.addr, align 8, !dbg !414
  %call652 = call i64 @__ia32_sys_timerfd_gettime32(ptr noundef %327) #3, !dbg !414
  store i64 %call652, ptr %retval, align 8, !dbg !414
  br label %return, !dbg !414

sw.bb653:                                         ; preds = %entry
  %328 = load ptr, ptr %regs.addr, align 8, !dbg !415
  %call654 = call i64 @__ia32_compat_sys_signalfd4(ptr noundef %328) #3, !dbg !415
  store i64 %call654, ptr %retval, align 8, !dbg !415
  br label %return, !dbg !415

sw.bb655:                                         ; preds = %entry
  %329 = load ptr, ptr %regs.addr, align 8, !dbg !416
  %call656 = call i64 @__ia32_sys_eventfd2(ptr noundef %329) #3, !dbg !416
  store i64 %call656, ptr %retval, align 8, !dbg !416
  br label %return, !dbg !416

sw.bb657:                                         ; preds = %entry
  %330 = load ptr, ptr %regs.addr, align 8, !dbg !417
  %call658 = call i64 @__ia32_sys_epoll_create1(ptr noundef %330) #3, !dbg !417
  store i64 %call658, ptr %retval, align 8, !dbg !417
  br label %return, !dbg !417

sw.bb659:                                         ; preds = %entry
  %331 = load ptr, ptr %regs.addr, align 8, !dbg !418
  %call660 = call i64 @__ia32_sys_dup3(ptr noundef %331) #3, !dbg !418
  store i64 %call660, ptr %retval, align 8, !dbg !418
  br label %return, !dbg !418

sw.bb661:                                         ; preds = %entry
  %332 = load ptr, ptr %regs.addr, align 8, !dbg !419
  %call662 = call i64 @__ia32_sys_pipe2(ptr noundef %332) #3, !dbg !419
  store i64 %call662, ptr %retval, align 8, !dbg !419
  br label %return, !dbg !419

sw.bb663:                                         ; preds = %entry
  %333 = load ptr, ptr %regs.addr, align 8, !dbg !420
  %call664 = call i64 @__ia32_sys_inotify_init1(ptr noundef %333) #3, !dbg !420
  store i64 %call664, ptr %retval, align 8, !dbg !420
  br label %return, !dbg !420

sw.bb665:                                         ; preds = %entry
  %334 = load ptr, ptr %regs.addr, align 8, !dbg !421
  %call666 = call i64 @__ia32_compat_sys_preadv(ptr noundef %334) #3, !dbg !421
  store i64 %call666, ptr %retval, align 8, !dbg !421
  br label %return, !dbg !421

sw.bb667:                                         ; preds = %entry
  %335 = load ptr, ptr %regs.addr, align 8, !dbg !422
  %call668 = call i64 @__ia32_compat_sys_pwritev(ptr noundef %335) #3, !dbg !422
  store i64 %call668, ptr %retval, align 8, !dbg !422
  br label %return, !dbg !422

sw.bb669:                                         ; preds = %entry
  %336 = load ptr, ptr %regs.addr, align 8, !dbg !423
  %call670 = call i64 @__ia32_compat_sys_rt_tgsigqueueinfo(ptr noundef %336) #3, !dbg !423
  store i64 %call670, ptr %retval, align 8, !dbg !423
  br label %return, !dbg !423

sw.bb671:                                         ; preds = %entry
  %337 = load ptr, ptr %regs.addr, align 8, !dbg !424
  %call672 = call i64 @__ia32_sys_perf_event_open(ptr noundef %337) #3, !dbg !424
  store i64 %call672, ptr %retval, align 8, !dbg !424
  br label %return, !dbg !424

sw.bb673:                                         ; preds = %entry
  %338 = load ptr, ptr %regs.addr, align 8, !dbg !425
  %call674 = call i64 @__ia32_compat_sys_recvmmsg_time32(ptr noundef %338) #3, !dbg !425
  store i64 %call674, ptr %retval, align 8, !dbg !425
  br label %return, !dbg !425

sw.bb675:                                         ; preds = %entry
  %339 = load ptr, ptr %regs.addr, align 8, !dbg !426
  %call676 = call i64 @__ia32_sys_fanotify_init(ptr noundef %339) #3, !dbg !426
  store i64 %call676, ptr %retval, align 8, !dbg !426
  br label %return, !dbg !426

sw.bb677:                                         ; preds = %entry
  %340 = load ptr, ptr %regs.addr, align 8, !dbg !427
  %call678 = call i64 @__ia32_compat_sys_fanotify_mark(ptr noundef %340) #3, !dbg !427
  store i64 %call678, ptr %retval, align 8, !dbg !427
  br label %return, !dbg !427

sw.bb679:                                         ; preds = %entry
  %341 = load ptr, ptr %regs.addr, align 8, !dbg !428
  %call680 = call i64 @__ia32_sys_prlimit64(ptr noundef %341) #3, !dbg !428
  store i64 %call680, ptr %retval, align 8, !dbg !428
  br label %return, !dbg !428

sw.bb681:                                         ; preds = %entry
  %342 = load ptr, ptr %regs.addr, align 8, !dbg !429
  %call682 = call i64 @__ia32_sys_name_to_handle_at(ptr noundef %342) #3, !dbg !429
  store i64 %call682, ptr %retval, align 8, !dbg !429
  br label %return, !dbg !429

sw.bb683:                                         ; preds = %entry
  %343 = load ptr, ptr %regs.addr, align 8, !dbg !430
  %call684 = call i64 @__ia32_compat_sys_open_by_handle_at(ptr noundef %343) #3, !dbg !430
  store i64 %call684, ptr %retval, align 8, !dbg !430
  br label %return, !dbg !430

sw.bb685:                                         ; preds = %entry
  %344 = load ptr, ptr %regs.addr, align 8, !dbg !431
  %call686 = call i64 @__ia32_sys_clock_adjtime32(ptr noundef %344) #3, !dbg !431
  store i64 %call686, ptr %retval, align 8, !dbg !431
  br label %return, !dbg !431

sw.bb687:                                         ; preds = %entry
  %345 = load ptr, ptr %regs.addr, align 8, !dbg !432
  %call688 = call i64 @__ia32_sys_syncfs(ptr noundef %345) #3, !dbg !432
  store i64 %call688, ptr %retval, align 8, !dbg !432
  br label %return, !dbg !432

sw.bb689:                                         ; preds = %entry
  %346 = load ptr, ptr %regs.addr, align 8, !dbg !433
  %call690 = call i64 @__ia32_compat_sys_sendmmsg(ptr noundef %346) #3, !dbg !433
  store i64 %call690, ptr %retval, align 8, !dbg !433
  br label %return, !dbg !433

sw.bb691:                                         ; preds = %entry
  %347 = load ptr, ptr %regs.addr, align 8, !dbg !434
  %call692 = call i64 @__ia32_sys_setns(ptr noundef %347) #3, !dbg !434
  store i64 %call692, ptr %retval, align 8, !dbg !434
  br label %return, !dbg !434

sw.bb693:                                         ; preds = %entry
  %348 = load ptr, ptr %regs.addr, align 8, !dbg !435
  %call694 = call i64 @__ia32_sys_process_vm_readv(ptr noundef %348) #3, !dbg !435
  store i64 %call694, ptr %retval, align 8, !dbg !435
  br label %return, !dbg !435

sw.bb695:                                         ; preds = %entry
  %349 = load ptr, ptr %regs.addr, align 8, !dbg !436
  %call696 = call i64 @__ia32_sys_process_vm_writev(ptr noundef %349) #3, !dbg !436
  store i64 %call696, ptr %retval, align 8, !dbg !436
  br label %return, !dbg !436

sw.bb697:                                         ; preds = %entry
  %350 = load ptr, ptr %regs.addr, align 8, !dbg !437
  %call698 = call i64 @__ia32_sys_kcmp(ptr noundef %350) #3, !dbg !437
  store i64 %call698, ptr %retval, align 8, !dbg !437
  br label %return, !dbg !437

sw.bb699:                                         ; preds = %entry
  %351 = load ptr, ptr %regs.addr, align 8, !dbg !438
  %call700 = call i64 @__ia32_sys_finit_module(ptr noundef %351) #3, !dbg !438
  store i64 %call700, ptr %retval, align 8, !dbg !438
  br label %return, !dbg !438

sw.bb701:                                         ; preds = %entry
  %352 = load ptr, ptr %regs.addr, align 8, !dbg !439
  %call702 = call i64 @__ia32_sys_sched_setattr(ptr noundef %352) #3, !dbg !439
  store i64 %call702, ptr %retval, align 8, !dbg !439
  br label %return, !dbg !439

sw.bb703:                                         ; preds = %entry
  %353 = load ptr, ptr %regs.addr, align 8, !dbg !440
  %call704 = call i64 @__ia32_sys_sched_getattr(ptr noundef %353) #3, !dbg !440
  store i64 %call704, ptr %retval, align 8, !dbg !440
  br label %return, !dbg !440

sw.bb705:                                         ; preds = %entry
  %354 = load ptr, ptr %regs.addr, align 8, !dbg !441
  %call706 = call i64 @__ia32_sys_renameat2(ptr noundef %354) #3, !dbg !441
  store i64 %call706, ptr %retval, align 8, !dbg !441
  br label %return, !dbg !441

sw.bb707:                                         ; preds = %entry
  %355 = load ptr, ptr %regs.addr, align 8, !dbg !442
  %call708 = call i64 @__ia32_sys_seccomp(ptr noundef %355) #3, !dbg !442
  store i64 %call708, ptr %retval, align 8, !dbg !442
  br label %return, !dbg !442

sw.bb709:                                         ; preds = %entry
  %356 = load ptr, ptr %regs.addr, align 8, !dbg !443
  %call710 = call i64 @__ia32_sys_getrandom(ptr noundef %356) #3, !dbg !443
  store i64 %call710, ptr %retval, align 8, !dbg !443
  br label %return, !dbg !443

sw.bb711:                                         ; preds = %entry
  %357 = load ptr, ptr %regs.addr, align 8, !dbg !444
  %call712 = call i64 @__ia32_sys_memfd_create(ptr noundef %357) #3, !dbg !444
  store i64 %call712, ptr %retval, align 8, !dbg !444
  br label %return, !dbg !444

sw.bb713:                                         ; preds = %entry
  %358 = load ptr, ptr %regs.addr, align 8, !dbg !445
  %call714 = call i64 @__ia32_sys_bpf(ptr noundef %358) #3, !dbg !445
  store i64 %call714, ptr %retval, align 8, !dbg !445
  br label %return, !dbg !445

sw.bb715:                                         ; preds = %entry
  %359 = load ptr, ptr %regs.addr, align 8, !dbg !446
  %call716 = call i64 @__ia32_compat_sys_execveat(ptr noundef %359) #3, !dbg !446
  store i64 %call716, ptr %retval, align 8, !dbg !446
  br label %return, !dbg !446

sw.bb717:                                         ; preds = %entry
  %360 = load ptr, ptr %regs.addr, align 8, !dbg !447
  %call718 = call i64 @__ia32_sys_socket(ptr noundef %360) #3, !dbg !447
  store i64 %call718, ptr %retval, align 8, !dbg !447
  br label %return, !dbg !447

sw.bb719:                                         ; preds = %entry
  %361 = load ptr, ptr %regs.addr, align 8, !dbg !448
  %call720 = call i64 @__ia32_sys_socketpair(ptr noundef %361) #3, !dbg !448
  store i64 %call720, ptr %retval, align 8, !dbg !448
  br label %return, !dbg !448

sw.bb721:                                         ; preds = %entry
  %362 = load ptr, ptr %regs.addr, align 8, !dbg !449
  %call722 = call i64 @__ia32_sys_bind(ptr noundef %362) #3, !dbg !449
  store i64 %call722, ptr %retval, align 8, !dbg !449
  br label %return, !dbg !449

sw.bb723:                                         ; preds = %entry
  %363 = load ptr, ptr %regs.addr, align 8, !dbg !450
  %call724 = call i64 @__ia32_sys_connect(ptr noundef %363) #3, !dbg !450
  store i64 %call724, ptr %retval, align 8, !dbg !450
  br label %return, !dbg !450

sw.bb725:                                         ; preds = %entry
  %364 = load ptr, ptr %regs.addr, align 8, !dbg !451
  %call726 = call i64 @__ia32_sys_listen(ptr noundef %364) #3, !dbg !451
  store i64 %call726, ptr %retval, align 8, !dbg !451
  br label %return, !dbg !451

sw.bb727:                                         ; preds = %entry
  %365 = load ptr, ptr %regs.addr, align 8, !dbg !452
  %call728 = call i64 @__ia32_sys_accept4(ptr noundef %365) #3, !dbg !452
  store i64 %call728, ptr %retval, align 8, !dbg !452
  br label %return, !dbg !452

sw.bb729:                                         ; preds = %entry
  %366 = load ptr, ptr %regs.addr, align 8, !dbg !453
  %call730 = call i64 @__ia32_sys_getsockopt(ptr noundef %366) #3, !dbg !453
  store i64 %call730, ptr %retval, align 8, !dbg !453
  br label %return, !dbg !453

sw.bb731:                                         ; preds = %entry
  %367 = load ptr, ptr %regs.addr, align 8, !dbg !454
  %call732 = call i64 @__ia32_sys_setsockopt(ptr noundef %367) #3, !dbg !454
  store i64 %call732, ptr %retval, align 8, !dbg !454
  br label %return, !dbg !454

sw.bb733:                                         ; preds = %entry
  %368 = load ptr, ptr %regs.addr, align 8, !dbg !455
  %call734 = call i64 @__ia32_sys_getsockname(ptr noundef %368) #3, !dbg !455
  store i64 %call734, ptr %retval, align 8, !dbg !455
  br label %return, !dbg !455

sw.bb735:                                         ; preds = %entry
  %369 = load ptr, ptr %regs.addr, align 8, !dbg !456
  %call736 = call i64 @__ia32_sys_getpeername(ptr noundef %369) #3, !dbg !456
  store i64 %call736, ptr %retval, align 8, !dbg !456
  br label %return, !dbg !456

sw.bb737:                                         ; preds = %entry
  %370 = load ptr, ptr %regs.addr, align 8, !dbg !457
  %call738 = call i64 @__ia32_sys_sendto(ptr noundef %370) #3, !dbg !457
  store i64 %call738, ptr %retval, align 8, !dbg !457
  br label %return, !dbg !457

sw.bb739:                                         ; preds = %entry
  %371 = load ptr, ptr %regs.addr, align 8, !dbg !458
  %call740 = call i64 @__ia32_compat_sys_sendmsg(ptr noundef %371) #3, !dbg !458
  store i64 %call740, ptr %retval, align 8, !dbg !458
  br label %return, !dbg !458

sw.bb741:                                         ; preds = %entry
  %372 = load ptr, ptr %regs.addr, align 8, !dbg !459
  %call742 = call i64 @__ia32_compat_sys_recvfrom(ptr noundef %372) #3, !dbg !459
  store i64 %call742, ptr %retval, align 8, !dbg !459
  br label %return, !dbg !459

sw.bb743:                                         ; preds = %entry
  %373 = load ptr, ptr %regs.addr, align 8, !dbg !460
  %call744 = call i64 @__ia32_compat_sys_recvmsg(ptr noundef %373) #3, !dbg !460
  store i64 %call744, ptr %retval, align 8, !dbg !460
  br label %return, !dbg !460

sw.bb745:                                         ; preds = %entry
  %374 = load ptr, ptr %regs.addr, align 8, !dbg !461
  %call746 = call i64 @__ia32_sys_shutdown(ptr noundef %374) #3, !dbg !461
  store i64 %call746, ptr %retval, align 8, !dbg !461
  br label %return, !dbg !461

sw.bb747:                                         ; preds = %entry
  %375 = load ptr, ptr %regs.addr, align 8, !dbg !462
  %call748 = call i64 @__ia32_sys_userfaultfd(ptr noundef %375) #3, !dbg !462
  store i64 %call748, ptr %retval, align 8, !dbg !462
  br label %return, !dbg !462

sw.bb749:                                         ; preds = %entry
  %376 = load ptr, ptr %regs.addr, align 8, !dbg !463
  %call750 = call i64 @__ia32_sys_membarrier(ptr noundef %376) #3, !dbg !463
  store i64 %call750, ptr %retval, align 8, !dbg !463
  br label %return, !dbg !463

sw.bb751:                                         ; preds = %entry
  %377 = load ptr, ptr %regs.addr, align 8, !dbg !464
  %call752 = call i64 @__ia32_sys_mlock2(ptr noundef %377) #3, !dbg !464
  store i64 %call752, ptr %retval, align 8, !dbg !464
  br label %return, !dbg !464

sw.bb753:                                         ; preds = %entry
  %378 = load ptr, ptr %regs.addr, align 8, !dbg !465
  %call754 = call i64 @__ia32_sys_copy_file_range(ptr noundef %378) #3, !dbg !465
  store i64 %call754, ptr %retval, align 8, !dbg !465
  br label %return, !dbg !465

sw.bb755:                                         ; preds = %entry
  %379 = load ptr, ptr %regs.addr, align 8, !dbg !466
  %call756 = call i64 @__ia32_compat_sys_preadv2(ptr noundef %379) #3, !dbg !466
  store i64 %call756, ptr %retval, align 8, !dbg !466
  br label %return, !dbg !466

sw.bb757:                                         ; preds = %entry
  %380 = load ptr, ptr %regs.addr, align 8, !dbg !467
  %call758 = call i64 @__ia32_compat_sys_pwritev2(ptr noundef %380) #3, !dbg !467
  store i64 %call758, ptr %retval, align 8, !dbg !467
  br label %return, !dbg !467

sw.bb759:                                         ; preds = %entry
  %381 = load ptr, ptr %regs.addr, align 8, !dbg !468
  %call760 = call i64 @__ia32_sys_pkey_mprotect(ptr noundef %381) #3, !dbg !468
  store i64 %call760, ptr %retval, align 8, !dbg !468
  br label %return, !dbg !468

sw.bb761:                                         ; preds = %entry
  %382 = load ptr, ptr %regs.addr, align 8, !dbg !469
  %call762 = call i64 @__ia32_sys_pkey_alloc(ptr noundef %382) #3, !dbg !469
  store i64 %call762, ptr %retval, align 8, !dbg !469
  br label %return, !dbg !469

sw.bb763:                                         ; preds = %entry
  %383 = load ptr, ptr %regs.addr, align 8, !dbg !470
  %call764 = call i64 @__ia32_sys_pkey_free(ptr noundef %383) #3, !dbg !470
  store i64 %call764, ptr %retval, align 8, !dbg !470
  br label %return, !dbg !470

sw.bb765:                                         ; preds = %entry
  %384 = load ptr, ptr %regs.addr, align 8, !dbg !471
  %call766 = call i64 @__ia32_sys_statx(ptr noundef %384) #3, !dbg !471
  store i64 %call766, ptr %retval, align 8, !dbg !471
  br label %return, !dbg !471

sw.bb767:                                         ; preds = %entry
  %385 = load ptr, ptr %regs.addr, align 8, !dbg !472
  %call768 = call i64 @__ia32_compat_sys_arch_prctl(ptr noundef %385) #3, !dbg !472
  store i64 %call768, ptr %retval, align 8, !dbg !472
  br label %return, !dbg !472

sw.bb769:                                         ; preds = %entry
  %386 = load ptr, ptr %regs.addr, align 8, !dbg !473
  %call770 = call i64 @__ia32_compat_sys_io_pgetevents(ptr noundef %386) #3, !dbg !473
  store i64 %call770, ptr %retval, align 8, !dbg !473
  br label %return, !dbg !473

sw.bb771:                                         ; preds = %entry
  %387 = load ptr, ptr %regs.addr, align 8, !dbg !474
  %call772 = call i64 @__ia32_sys_rseq(ptr noundef %387) #3, !dbg !474
  store i64 %call772, ptr %retval, align 8, !dbg !474
  br label %return, !dbg !474

sw.bb773:                                         ; preds = %entry
  %388 = load ptr, ptr %regs.addr, align 8, !dbg !475
  %call774 = call i64 @__ia32_sys_ni_syscall(ptr noundef %388) #3, !dbg !475
  store i64 %call774, ptr %retval, align 8, !dbg !475
  br label %return, !dbg !475

sw.bb775:                                         ; preds = %entry
  %389 = load ptr, ptr %regs.addr, align 8, !dbg !476
  %call776 = call i64 @__ia32_sys_ni_syscall(ptr noundef %389) #3, !dbg !476
  store i64 %call776, ptr %retval, align 8, !dbg !476
  br label %return, !dbg !476

sw.bb777:                                         ; preds = %entry
  %390 = load ptr, ptr %regs.addr, align 8, !dbg !477
  %call778 = call i64 @__ia32_sys_ni_syscall(ptr noundef %390) #3, !dbg !477
  store i64 %call778, ptr %retval, align 8, !dbg !477
  br label %return, !dbg !477

sw.bb779:                                         ; preds = %entry
  %391 = load ptr, ptr %regs.addr, align 8, !dbg !478
  %call780 = call i64 @__ia32_sys_ni_syscall(ptr noundef %391) #3, !dbg !478
  store i64 %call780, ptr %retval, align 8, !dbg !478
  br label %return, !dbg !478

sw.bb781:                                         ; preds = %entry
  %392 = load ptr, ptr %regs.addr, align 8, !dbg !479
  %call782 = call i64 @__ia32_sys_ni_syscall(ptr noundef %392) #3, !dbg !479
  store i64 %call782, ptr %retval, align 8, !dbg !479
  br label %return, !dbg !479

sw.bb783:                                         ; preds = %entry
  %393 = load ptr, ptr %regs.addr, align 8, !dbg !480
  %call784 = call i64 @__ia32_sys_ni_syscall(ptr noundef %393) #3, !dbg !480
  store i64 %call784, ptr %retval, align 8, !dbg !480
  br label %return, !dbg !480

sw.bb785:                                         ; preds = %entry
  %394 = load ptr, ptr %regs.addr, align 8, !dbg !481
  %call786 = call i64 @__ia32_sys_semget(ptr noundef %394) #3, !dbg !481
  store i64 %call786, ptr %retval, align 8, !dbg !481
  br label %return, !dbg !481

sw.bb787:                                         ; preds = %entry
  %395 = load ptr, ptr %regs.addr, align 8, !dbg !482
  %call788 = call i64 @__ia32_compat_sys_semctl(ptr noundef %395) #3, !dbg !482
  store i64 %call788, ptr %retval, align 8, !dbg !482
  br label %return, !dbg !482

sw.bb789:                                         ; preds = %entry
  %396 = load ptr, ptr %regs.addr, align 8, !dbg !483
  %call790 = call i64 @__ia32_sys_shmget(ptr noundef %396) #3, !dbg !483
  store i64 %call790, ptr %retval, align 8, !dbg !483
  br label %return, !dbg !483

sw.bb791:                                         ; preds = %entry
  %397 = load ptr, ptr %regs.addr, align 8, !dbg !484
  %call792 = call i64 @__ia32_compat_sys_shmctl(ptr noundef %397) #3, !dbg !484
  store i64 %call792, ptr %retval, align 8, !dbg !484
  br label %return, !dbg !484

sw.bb793:                                         ; preds = %entry
  %398 = load ptr, ptr %regs.addr, align 8, !dbg !485
  %call794 = call i64 @__ia32_compat_sys_shmat(ptr noundef %398) #3, !dbg !485
  store i64 %call794, ptr %retval, align 8, !dbg !485
  br label %return, !dbg !485

sw.bb795:                                         ; preds = %entry
  %399 = load ptr, ptr %regs.addr, align 8, !dbg !486
  %call796 = call i64 @__ia32_sys_shmdt(ptr noundef %399) #3, !dbg !486
  store i64 %call796, ptr %retval, align 8, !dbg !486
  br label %return, !dbg !486

sw.bb797:                                         ; preds = %entry
  %400 = load ptr, ptr %regs.addr, align 8, !dbg !487
  %call798 = call i64 @__ia32_sys_msgget(ptr noundef %400) #3, !dbg !487
  store i64 %call798, ptr %retval, align 8, !dbg !487
  br label %return, !dbg !487

sw.bb799:                                         ; preds = %entry
  %401 = load ptr, ptr %regs.addr, align 8, !dbg !488
  %call800 = call i64 @__ia32_compat_sys_msgsnd(ptr noundef %401) #3, !dbg !488
  store i64 %call800, ptr %retval, align 8, !dbg !488
  br label %return, !dbg !488

sw.bb801:                                         ; preds = %entry
  %402 = load ptr, ptr %regs.addr, align 8, !dbg !489
  %call802 = call i64 @__ia32_compat_sys_msgrcv(ptr noundef %402) #3, !dbg !489
  store i64 %call802, ptr %retval, align 8, !dbg !489
  br label %return, !dbg !489

sw.bb803:                                         ; preds = %entry
  %403 = load ptr, ptr %regs.addr, align 8, !dbg !490
  %call804 = call i64 @__ia32_compat_sys_msgctl(ptr noundef %403) #3, !dbg !490
  store i64 %call804, ptr %retval, align 8, !dbg !490
  br label %return, !dbg !490

sw.bb805:                                         ; preds = %entry
  %404 = load ptr, ptr %regs.addr, align 8, !dbg !491
  %call806 = call i64 @__ia32_sys_clock_gettime(ptr noundef %404) #3, !dbg !491
  store i64 %call806, ptr %retval, align 8, !dbg !491
  br label %return, !dbg !491

sw.bb807:                                         ; preds = %entry
  %405 = load ptr, ptr %regs.addr, align 8, !dbg !492
  %call808 = call i64 @__ia32_sys_clock_settime(ptr noundef %405) #3, !dbg !492
  store i64 %call808, ptr %retval, align 8, !dbg !492
  br label %return, !dbg !492

sw.bb809:                                         ; preds = %entry
  %406 = load ptr, ptr %regs.addr, align 8, !dbg !493
  %call810 = call i64 @__ia32_sys_clock_adjtime(ptr noundef %406) #3, !dbg !493
  store i64 %call810, ptr %retval, align 8, !dbg !493
  br label %return, !dbg !493

sw.bb811:                                         ; preds = %entry
  %407 = load ptr, ptr %regs.addr, align 8, !dbg !494
  %call812 = call i64 @__ia32_sys_clock_getres(ptr noundef %407) #3, !dbg !494
  store i64 %call812, ptr %retval, align 8, !dbg !494
  br label %return, !dbg !494

sw.bb813:                                         ; preds = %entry
  %408 = load ptr, ptr %regs.addr, align 8, !dbg !495
  %call814 = call i64 @__ia32_sys_clock_nanosleep(ptr noundef %408) #3, !dbg !495
  store i64 %call814, ptr %retval, align 8, !dbg !495
  br label %return, !dbg !495

sw.bb815:                                         ; preds = %entry
  %409 = load ptr, ptr %regs.addr, align 8, !dbg !496
  %call816 = call i64 @__ia32_sys_timer_gettime(ptr noundef %409) #3, !dbg !496
  store i64 %call816, ptr %retval, align 8, !dbg !496
  br label %return, !dbg !496

sw.bb817:                                         ; preds = %entry
  %410 = load ptr, ptr %regs.addr, align 8, !dbg !497
  %call818 = call i64 @__ia32_sys_timer_settime(ptr noundef %410) #3, !dbg !497
  store i64 %call818, ptr %retval, align 8, !dbg !497
  br label %return, !dbg !497

sw.bb819:                                         ; preds = %entry
  %411 = load ptr, ptr %regs.addr, align 8, !dbg !498
  %call820 = call i64 @__ia32_sys_timerfd_gettime(ptr noundef %411) #3, !dbg !498
  store i64 %call820, ptr %retval, align 8, !dbg !498
  br label %return, !dbg !498

sw.bb821:                                         ; preds = %entry
  %412 = load ptr, ptr %regs.addr, align 8, !dbg !499
  %call822 = call i64 @__ia32_sys_timerfd_settime(ptr noundef %412) #3, !dbg !499
  store i64 %call822, ptr %retval, align 8, !dbg !499
  br label %return, !dbg !499

sw.bb823:                                         ; preds = %entry
  %413 = load ptr, ptr %regs.addr, align 8, !dbg !500
  %call824 = call i64 @__ia32_sys_utimensat(ptr noundef %413) #3, !dbg !500
  store i64 %call824, ptr %retval, align 8, !dbg !500
  br label %return, !dbg !500

sw.bb825:                                         ; preds = %entry
  %414 = load ptr, ptr %regs.addr, align 8, !dbg !501
  %call826 = call i64 @__ia32_compat_sys_pselect6_time64(ptr noundef %414) #3, !dbg !501
  store i64 %call826, ptr %retval, align 8, !dbg !501
  br label %return, !dbg !501

sw.bb827:                                         ; preds = %entry
  %415 = load ptr, ptr %regs.addr, align 8, !dbg !502
  %call828 = call i64 @__ia32_compat_sys_ppoll_time64(ptr noundef %415) #3, !dbg !502
  store i64 %call828, ptr %retval, align 8, !dbg !502
  br label %return, !dbg !502

sw.bb829:                                         ; preds = %entry
  %416 = load ptr, ptr %regs.addr, align 8, !dbg !503
  %call830 = call i64 @__ia32_sys_ni_syscall(ptr noundef %416) #3, !dbg !503
  store i64 %call830, ptr %retval, align 8, !dbg !503
  br label %return, !dbg !503

sw.bb831:                                         ; preds = %entry
  %417 = load ptr, ptr %regs.addr, align 8, !dbg !504
  %call832 = call i64 @__ia32_compat_sys_io_pgetevents_time64(ptr noundef %417) #3, !dbg !504
  store i64 %call832, ptr %retval, align 8, !dbg !504
  br label %return, !dbg !504

sw.bb833:                                         ; preds = %entry
  %418 = load ptr, ptr %regs.addr, align 8, !dbg !505
  %call834 = call i64 @__ia32_compat_sys_recvmmsg_time64(ptr noundef %418) #3, !dbg !505
  store i64 %call834, ptr %retval, align 8, !dbg !505
  br label %return, !dbg !505

sw.bb835:                                         ; preds = %entry
  %419 = load ptr, ptr %regs.addr, align 8, !dbg !506
  %call836 = call i64 @__ia32_sys_mq_timedsend(ptr noundef %419) #3, !dbg !506
  store i64 %call836, ptr %retval, align 8, !dbg !506
  br label %return, !dbg !506

sw.bb837:                                         ; preds = %entry
  %420 = load ptr, ptr %regs.addr, align 8, !dbg !507
  %call838 = call i64 @__ia32_sys_mq_timedreceive(ptr noundef %420) #3, !dbg !507
  store i64 %call838, ptr %retval, align 8, !dbg !507
  br label %return, !dbg !507

sw.bb839:                                         ; preds = %entry
  %421 = load ptr, ptr %regs.addr, align 8, !dbg !508
  %call840 = call i64 @__ia32_sys_semtimedop(ptr noundef %421) #3, !dbg !508
  store i64 %call840, ptr %retval, align 8, !dbg !508
  br label %return, !dbg !508

sw.bb841:                                         ; preds = %entry
  %422 = load ptr, ptr %regs.addr, align 8, !dbg !509
  %call842 = call i64 @__ia32_compat_sys_rt_sigtimedwait_time64(ptr noundef %422) #3, !dbg !509
  store i64 %call842, ptr %retval, align 8, !dbg !509
  br label %return, !dbg !509

sw.bb843:                                         ; preds = %entry
  %423 = load ptr, ptr %regs.addr, align 8, !dbg !510
  %call844 = call i64 @__ia32_sys_futex(ptr noundef %423) #3, !dbg !510
  store i64 %call844, ptr %retval, align 8, !dbg !510
  br label %return, !dbg !510

sw.bb845:                                         ; preds = %entry
  %424 = load ptr, ptr %regs.addr, align 8, !dbg !511
  %call846 = call i64 @__ia32_sys_sched_rr_get_interval(ptr noundef %424) #3, !dbg !511
  store i64 %call846, ptr %retval, align 8, !dbg !511
  br label %return, !dbg !511

sw.bb847:                                         ; preds = %entry
  %425 = load ptr, ptr %regs.addr, align 8, !dbg !512
  %call848 = call i64 @__ia32_sys_pidfd_send_signal(ptr noundef %425) #3, !dbg !512
  store i64 %call848, ptr %retval, align 8, !dbg !512
  br label %return, !dbg !512

sw.bb849:                                         ; preds = %entry
  %426 = load ptr, ptr %regs.addr, align 8, !dbg !513
  %call850 = call i64 @__ia32_sys_io_uring_setup(ptr noundef %426) #3, !dbg !513
  store i64 %call850, ptr %retval, align 8, !dbg !513
  br label %return, !dbg !513

sw.bb851:                                         ; preds = %entry
  %427 = load ptr, ptr %regs.addr, align 8, !dbg !514
  %call852 = call i64 @__ia32_sys_io_uring_enter(ptr noundef %427) #3, !dbg !514
  store i64 %call852, ptr %retval, align 8, !dbg !514
  br label %return, !dbg !514

sw.bb853:                                         ; preds = %entry
  %428 = load ptr, ptr %regs.addr, align 8, !dbg !515
  %call854 = call i64 @__ia32_sys_io_uring_register(ptr noundef %428) #3, !dbg !515
  store i64 %call854, ptr %retval, align 8, !dbg !515
  br label %return, !dbg !515

sw.bb855:                                         ; preds = %entry
  %429 = load ptr, ptr %regs.addr, align 8, !dbg !516
  %call856 = call i64 @__ia32_sys_open_tree(ptr noundef %429) #3, !dbg !516
  store i64 %call856, ptr %retval, align 8, !dbg !516
  br label %return, !dbg !516

sw.bb857:                                         ; preds = %entry
  %430 = load ptr, ptr %regs.addr, align 8, !dbg !517
  %call858 = call i64 @__ia32_sys_move_mount(ptr noundef %430) #3, !dbg !517
  store i64 %call858, ptr %retval, align 8, !dbg !517
  br label %return, !dbg !517

sw.bb859:                                         ; preds = %entry
  %431 = load ptr, ptr %regs.addr, align 8, !dbg !518
  %call860 = call i64 @__ia32_sys_fsopen(ptr noundef %431) #3, !dbg !518
  store i64 %call860, ptr %retval, align 8, !dbg !518
  br label %return, !dbg !518

sw.bb861:                                         ; preds = %entry
  %432 = load ptr, ptr %regs.addr, align 8, !dbg !519
  %call862 = call i64 @__ia32_sys_fsconfig(ptr noundef %432) #3, !dbg !519
  store i64 %call862, ptr %retval, align 8, !dbg !519
  br label %return, !dbg !519

sw.bb863:                                         ; preds = %entry
  %433 = load ptr, ptr %regs.addr, align 8, !dbg !520
  %call864 = call i64 @__ia32_sys_fsmount(ptr noundef %433) #3, !dbg !520
  store i64 %call864, ptr %retval, align 8, !dbg !520
  br label %return, !dbg !520

sw.bb865:                                         ; preds = %entry
  %434 = load ptr, ptr %regs.addr, align 8, !dbg !521
  %call866 = call i64 @__ia32_sys_fspick(ptr noundef %434) #3, !dbg !521
  store i64 %call866, ptr %retval, align 8, !dbg !521
  br label %return, !dbg !521

sw.bb867:                                         ; preds = %entry
  %435 = load ptr, ptr %regs.addr, align 8, !dbg !522
  %call868 = call i64 @__ia32_sys_pidfd_open(ptr noundef %435) #3, !dbg !522
  store i64 %call868, ptr %retval, align 8, !dbg !522
  br label %return, !dbg !522

sw.bb869:                                         ; preds = %entry
  %436 = load ptr, ptr %regs.addr, align 8, !dbg !523
  %call870 = call i64 @__ia32_sys_clone3(ptr noundef %436) #3, !dbg !523
  store i64 %call870, ptr %retval, align 8, !dbg !523
  br label %return, !dbg !523

sw.bb871:                                         ; preds = %entry
  %437 = load ptr, ptr %regs.addr, align 8, !dbg !524
  %call872 = call i64 @__ia32_sys_close_range(ptr noundef %437) #3, !dbg !524
  store i64 %call872, ptr %retval, align 8, !dbg !524
  br label %return, !dbg !524

sw.bb873:                                         ; preds = %entry
  %438 = load ptr, ptr %regs.addr, align 8, !dbg !525
  %call874 = call i64 @__ia32_sys_openat2(ptr noundef %438) #3, !dbg !525
  store i64 %call874, ptr %retval, align 8, !dbg !525
  br label %return, !dbg !525

sw.bb875:                                         ; preds = %entry
  %439 = load ptr, ptr %regs.addr, align 8, !dbg !526
  %call876 = call i64 @__ia32_sys_pidfd_getfd(ptr noundef %439) #3, !dbg !526
  store i64 %call876, ptr %retval, align 8, !dbg !526
  br label %return, !dbg !526

sw.bb877:                                         ; preds = %entry
  %440 = load ptr, ptr %regs.addr, align 8, !dbg !527
  %call878 = call i64 @__ia32_sys_faccessat2(ptr noundef %440) #3, !dbg !527
  store i64 %call878, ptr %retval, align 8, !dbg !527
  br label %return, !dbg !527

sw.bb879:                                         ; preds = %entry
  %441 = load ptr, ptr %regs.addr, align 8, !dbg !528
  %call880 = call i64 @__ia32_sys_process_madvise(ptr noundef %441) #3, !dbg !528
  store i64 %call880, ptr %retval, align 8, !dbg !528
  br label %return, !dbg !528

sw.bb881:                                         ; preds = %entry
  %442 = load ptr, ptr %regs.addr, align 8, !dbg !529
  %call882 = call i64 @__ia32_compat_sys_epoll_pwait2(ptr noundef %442) #3, !dbg !529
  store i64 %call882, ptr %retval, align 8, !dbg !529
  br label %return, !dbg !529

sw.bb883:                                         ; preds = %entry
  %443 = load ptr, ptr %regs.addr, align 8, !dbg !530
  %call884 = call i64 @__ia32_sys_mount_setattr(ptr noundef %443) #3, !dbg !530
  store i64 %call884, ptr %retval, align 8, !dbg !530
  br label %return, !dbg !530

sw.bb885:                                         ; preds = %entry
  %444 = load ptr, ptr %regs.addr, align 8, !dbg !531
  %call886 = call i64 @__ia32_sys_quotactl_fd(ptr noundef %444) #3, !dbg !531
  store i64 %call886, ptr %retval, align 8, !dbg !531
  br label %return, !dbg !531

sw.bb887:                                         ; preds = %entry
  %445 = load ptr, ptr %regs.addr, align 8, !dbg !532
  %call888 = call i64 @__ia32_sys_landlock_create_ruleset(ptr noundef %445) #3, !dbg !532
  store i64 %call888, ptr %retval, align 8, !dbg !532
  br label %return, !dbg !532

sw.bb889:                                         ; preds = %entry
  %446 = load ptr, ptr %regs.addr, align 8, !dbg !533
  %call890 = call i64 @__ia32_sys_landlock_add_rule(ptr noundef %446) #3, !dbg !533
  store i64 %call890, ptr %retval, align 8, !dbg !533
  br label %return, !dbg !533

sw.bb891:                                         ; preds = %entry
  %447 = load ptr, ptr %regs.addr, align 8, !dbg !534
  %call892 = call i64 @__ia32_sys_landlock_restrict_self(ptr noundef %447) #3, !dbg !534
  store i64 %call892, ptr %retval, align 8, !dbg !534
  br label %return, !dbg !534

sw.bb893:                                         ; preds = %entry
  %448 = load ptr, ptr %regs.addr, align 8, !dbg !535
  %call894 = call i64 @__ia32_sys_memfd_secret(ptr noundef %448) #3, !dbg !535
  store i64 %call894, ptr %retval, align 8, !dbg !535
  br label %return, !dbg !535

sw.bb895:                                         ; preds = %entry
  %449 = load ptr, ptr %regs.addr, align 8, !dbg !536
  %call896 = call i64 @__ia32_sys_process_mrelease(ptr noundef %449) #3, !dbg !536
  store i64 %call896, ptr %retval, align 8, !dbg !536
  br label %return, !dbg !536

sw.bb897:                                         ; preds = %entry
  %450 = load ptr, ptr %regs.addr, align 8, !dbg !537
  %call898 = call i64 @__ia32_sys_futex_waitv(ptr noundef %450) #3, !dbg !537
  store i64 %call898, ptr %retval, align 8, !dbg !537
  br label %return, !dbg !537

sw.bb899:                                         ; preds = %entry
  %451 = load ptr, ptr %regs.addr, align 8, !dbg !538
  %call900 = call i64 @__ia32_sys_set_mempolicy_home_node(ptr noundef %451) #3, !dbg !538
  store i64 %call900, ptr %retval, align 8, !dbg !538
  br label %return, !dbg !538

sw.bb901:                                         ; preds = %entry
  %452 = load ptr, ptr %regs.addr, align 8, !dbg !539
  %call902 = call i64 @__ia32_sys_cachestat(ptr noundef %452) #3, !dbg !539
  store i64 %call902, ptr %retval, align 8, !dbg !539
  br label %return, !dbg !539

sw.bb903:                                         ; preds = %entry
  %453 = load ptr, ptr %regs.addr, align 8, !dbg !540
  %call904 = call i64 @__ia32_sys_fchmodat2(ptr noundef %453) #3, !dbg !540
  store i64 %call904, ptr %retval, align 8, !dbg !540
  br label %return, !dbg !540

sw.default:                                       ; preds = %entry
  %454 = load ptr, ptr %regs.addr, align 8, !dbg !541
  %call905 = call i64 @__ia32_sys_ni_syscall(ptr noundef %454) #3, !dbg !543
  store i64 %call905, ptr %retval, align 8, !dbg !544
  br label %return, !dbg !544

return:                                           ; preds = %sw.default, %sw.bb903, %sw.bb901, %sw.bb899, %sw.bb897, %sw.bb895, %sw.bb893, %sw.bb891, %sw.bb889, %sw.bb887, %sw.bb885, %sw.bb883, %sw.bb881, %sw.bb879, %sw.bb877, %sw.bb875, %sw.bb873, %sw.bb871, %sw.bb869, %sw.bb867, %sw.bb865, %sw.bb863, %sw.bb861, %sw.bb859, %sw.bb857, %sw.bb855, %sw.bb853, %sw.bb851, %sw.bb849, %sw.bb847, %sw.bb845, %sw.bb843, %sw.bb841, %sw.bb839, %sw.bb837, %sw.bb835, %sw.bb833, %sw.bb831, %sw.bb829, %sw.bb827, %sw.bb825, %sw.bb823, %sw.bb821, %sw.bb819, %sw.bb817, %sw.bb815, %sw.bb813, %sw.bb811, %sw.bb809, %sw.bb807, %sw.bb805, %sw.bb803, %sw.bb801, %sw.bb799, %sw.bb797, %sw.bb795, %sw.bb793, %sw.bb791, %sw.bb789, %sw.bb787, %sw.bb785, %sw.bb783, %sw.bb781, %sw.bb779, %sw.bb777, %sw.bb775, %sw.bb773, %sw.bb771, %sw.bb769, %sw.bb767, %sw.bb765, %sw.bb763, %sw.bb761, %sw.bb759, %sw.bb757, %sw.bb755, %sw.bb753, %sw.bb751, %sw.bb749, %sw.bb747, %sw.bb745, %sw.bb743, %sw.bb741, %sw.bb739, %sw.bb737, %sw.bb735, %sw.bb733, %sw.bb731, %sw.bb729, %sw.bb727, %sw.bb725, %sw.bb723, %sw.bb721, %sw.bb719, %sw.bb717, %sw.bb715, %sw.bb713, %sw.bb711, %sw.bb709, %sw.bb707, %sw.bb705, %sw.bb703, %sw.bb701, %sw.bb699, %sw.bb697, %sw.bb695, %sw.bb693, %sw.bb691, %sw.bb689, %sw.bb687, %sw.bb685, %sw.bb683, %sw.bb681, %sw.bb679, %sw.bb677, %sw.bb675, %sw.bb673, %sw.bb671, %sw.bb669, %sw.bb667, %sw.bb665, %sw.bb663, %sw.bb661, %sw.bb659, %sw.bb657, %sw.bb655, %sw.bb653, %sw.bb651, %sw.bb649, %sw.bb647, %sw.bb645, %sw.bb643, %sw.bb641, %sw.bb639, %sw.bb637, %sw.bb635, %sw.bb633, %sw.bb631, %sw.bb629, %sw.bb627, %sw.bb625, %sw.bb623, %sw.bb621, %sw.bb619, %sw.bb617, %sw.bb615, %sw.bb613, %sw.bb611, %sw.bb609, %sw.bb607, %sw.bb605, %sw.bb603, %sw.bb601, %sw.bb599, %sw.bb597, %sw.bb595, %sw.bb593, %sw.bb591, %sw.bb589, %sw.bb587, %sw.bb585, %sw.bb583, %sw.bb581, %sw.bb579, %sw.bb577, %sw.bb575, %sw.bb573, %sw.bb571, %sw.bb569, %sw.bb567, %sw.bb565, %sw.bb563, %sw.bb561, %sw.bb559, %sw.bb557, %sw.bb555, %sw.bb553, %sw.bb551, %sw.bb549, %sw.bb547, %sw.bb545, %sw.bb543, %sw.bb541, %sw.bb539, %sw.bb537, %sw.bb535, %sw.bb533, %sw.bb531, %sw.bb529, %sw.bb527, %sw.bb525, %sw.bb523, %sw.bb521, %sw.bb519, %sw.bb517, %sw.bb515, %sw.bb513, %sw.bb511, %sw.bb509, %sw.bb507, %sw.bb505, %sw.bb503, %sw.bb501, %sw.bb499, %sw.bb497, %sw.bb495, %sw.bb493, %sw.bb491, %sw.bb489, %sw.bb487, %sw.bb485, %sw.bb483, %sw.bb481, %sw.bb479, %sw.bb477, %sw.bb475, %sw.bb473, %sw.bb471, %sw.bb469, %sw.bb467, %sw.bb465, %sw.bb463, %sw.bb461, %sw.bb459, %sw.bb457, %sw.bb455, %sw.bb453, %sw.bb451, %sw.bb449, %sw.bb447, %sw.bb445, %sw.bb443, %sw.bb441, %sw.bb439, %sw.bb437, %sw.bb435, %sw.bb433, %sw.bb431, %sw.bb429, %sw.bb427, %sw.bb425, %sw.bb423, %sw.bb421, %sw.bb419, %sw.bb417, %sw.bb415, %sw.bb413, %sw.bb411, %sw.bb409, %sw.bb407, %sw.bb405, %sw.bb403, %sw.bb401, %sw.bb399, %sw.bb397, %sw.bb395, %sw.bb393, %sw.bb391, %sw.bb389, %sw.bb387, %sw.bb385, %sw.bb383, %sw.bb381, %sw.bb379, %sw.bb377, %sw.bb375, %sw.bb373, %sw.bb371, %sw.bb369, %sw.bb367, %sw.bb365, %sw.bb363, %sw.bb361, %sw.bb359, %sw.bb357, %sw.bb355, %sw.bb353, %sw.bb351, %sw.bb349, %sw.bb347, %sw.bb345, %sw.bb343, %sw.bb341, %sw.bb339, %sw.bb337, %sw.bb335, %sw.bb333, %sw.bb331, %sw.bb329, %sw.bb327, %sw.bb325, %sw.bb323, %sw.bb321, %sw.bb319, %sw.bb317, %sw.bb315, %sw.bb313, %sw.bb311, %sw.bb309, %sw.bb307, %sw.bb305, %sw.bb303, %sw.bb301, %sw.bb299, %sw.bb297, %sw.bb295, %sw.bb293, %sw.bb291, %sw.bb289, %sw.bb287, %sw.bb285, %sw.bb283, %sw.bb281, %sw.bb279, %sw.bb277, %sw.bb275, %sw.bb273, %sw.bb271, %sw.bb269, %sw.bb267, %sw.bb265, %sw.bb263, %sw.bb261, %sw.bb259, %sw.bb257, %sw.bb255, %sw.bb253, %sw.bb251, %sw.bb249, %sw.bb247, %sw.bb245, %sw.bb243, %sw.bb241, %sw.bb239, %sw.bb237, %sw.bb235, %sw.bb233, %sw.bb231, %sw.bb229, %sw.bb227, %sw.bb225, %sw.bb223, %sw.bb221, %sw.bb219, %sw.bb217, %sw.bb215, %sw.bb213, %sw.bb211, %sw.bb209, %sw.bb207, %sw.bb205, %sw.bb203, %sw.bb201, %sw.bb199, %sw.bb197, %sw.bb195, %sw.bb193, %sw.bb191, %sw.bb189, %sw.bb187, %sw.bb185, %sw.bb183, %sw.bb181, %sw.bb179, %sw.bb177, %sw.bb175, %sw.bb173, %sw.bb171, %sw.bb169, %sw.bb167, %sw.bb165, %sw.bb163, %sw.bb161, %sw.bb159, %sw.bb157, %sw.bb155, %sw.bb153, %sw.bb151, %sw.bb149, %sw.bb147, %sw.bb145, %sw.bb143, %sw.bb141, %sw.bb139, %sw.bb137, %sw.bb135, %sw.bb133, %sw.bb131, %sw.bb129, %sw.bb127, %sw.bb125, %sw.bb123, %sw.bb121, %sw.bb119, %sw.bb117, %sw.bb115, %sw.bb113, %sw.bb111, %sw.bb109, %sw.bb107, %sw.bb105, %sw.bb103, %sw.bb101, %sw.bb99, %sw.bb97, %sw.bb95, %sw.bb93, %sw.bb91, %sw.bb89, %sw.bb87, %sw.bb85, %sw.bb83, %sw.bb81, %sw.bb79, %sw.bb77, %sw.bb75, %sw.bb73, %sw.bb71, %sw.bb69, %sw.bb67, %sw.bb65, %sw.bb63, %sw.bb61, %sw.bb59, %sw.bb57, %sw.bb55, %sw.bb53, %sw.bb51, %sw.bb49, %sw.bb47, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %455 = load i64, ptr %retval, align 8, !dbg !545
  ret i64 %455, !dbg !545
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !546 dso_local i64 @__ia32_sys_restart_syscall(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !549 dso_local i64 @__ia32_sys_exit(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !550 dso_local i64 @__ia32_sys_fork(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !551 dso_local i64 @__ia32_sys_read(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !552 dso_local i64 @__ia32_sys_write(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !553 dso_local i64 @__ia32_compat_sys_open(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !554 dso_local i64 @__ia32_sys_close(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !555 dso_local i64 @__ia32_sys_waitpid(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !556 dso_local i64 @__ia32_sys_creat(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !557 dso_local i64 @__ia32_sys_link(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !558 dso_local i64 @__ia32_sys_unlink(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !559 dso_local i64 @__ia32_compat_sys_execve(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !560 dso_local i64 @__ia32_sys_chdir(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !561 dso_local i64 @__ia32_sys_time32(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !562 dso_local i64 @__ia32_sys_mknod(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !563 dso_local i64 @__ia32_sys_chmod(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !564 dso_local i64 @__ia32_sys_lchown16(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !565 dso_local i64 @__ia32_sys_ni_syscall(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !566 dso_local i64 @__ia32_sys_stat(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !567 dso_local i64 @__ia32_compat_sys_lseek(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !568 dso_local i64 @__ia32_sys_getpid(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !569 dso_local i64 @__ia32_sys_mount(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !570 dso_local i64 @__ia32_sys_oldumount(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !571 dso_local i64 @__ia32_sys_setuid16(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !572 dso_local i64 @__ia32_sys_getuid16(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !573 dso_local i64 @__ia32_sys_stime32(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !574 dso_local i64 @__ia32_compat_sys_ptrace(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !575 dso_local i64 @__ia32_sys_alarm(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !576 dso_local i64 @__ia32_sys_fstat(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !577 dso_local i64 @__ia32_sys_pause(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !578 dso_local i64 @__ia32_sys_utime32(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !579 dso_local i64 @__ia32_sys_access(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !580 dso_local i64 @__ia32_sys_nice(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !581 dso_local i64 @__ia32_sys_sync(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !582 dso_local i64 @__ia32_sys_kill(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !583 dso_local i64 @__ia32_sys_rename(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !584 dso_local i64 @__ia32_sys_mkdir(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !585 dso_local i64 @__ia32_sys_rmdir(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !586 dso_local i64 @__ia32_sys_dup(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !587 dso_local i64 @__ia32_sys_pipe(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !588 dso_local i64 @__ia32_compat_sys_times(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !589 dso_local i64 @__ia32_sys_brk(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !590 dso_local i64 @__ia32_sys_setgid16(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !591 dso_local i64 @__ia32_sys_getgid16(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !592 dso_local i64 @__ia32_sys_signal(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !593 dso_local i64 @__ia32_sys_geteuid16(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !594 dso_local i64 @__ia32_sys_getegid16(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !595 dso_local i64 @__ia32_sys_acct(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !596 dso_local i64 @__ia32_sys_umount(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !597 dso_local i64 @__ia32_compat_sys_ioctl(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !598 dso_local i64 @__ia32_compat_sys_fcntl64(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !599 dso_local i64 @__ia32_sys_setpgid(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !600 dso_local i64 @__ia32_sys_olduname(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !601 dso_local i64 @__ia32_sys_umask(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !602 dso_local i64 @__ia32_sys_chroot(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !603 dso_local i64 @__ia32_compat_sys_ustat(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !604 dso_local i64 @__ia32_sys_dup2(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !605 dso_local i64 @__ia32_sys_getppid(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !606 dso_local i64 @__ia32_sys_getpgrp(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !607 dso_local i64 @__ia32_sys_setsid(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !608 dso_local i64 @__ia32_compat_sys_sigaction(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !609 dso_local i64 @__ia32_sys_sgetmask(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !610 dso_local i64 @__ia32_sys_ssetmask(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !611 dso_local i64 @__ia32_sys_setreuid16(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !612 dso_local i64 @__ia32_sys_setregid16(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !613 dso_local i64 @__ia32_sys_sigsuspend(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !614 dso_local i64 @__ia32_compat_sys_sigpending(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !615 dso_local i64 @__ia32_sys_sethostname(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !616 dso_local i64 @__ia32_compat_sys_setrlimit(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !617 dso_local i64 @__ia32_compat_sys_old_getrlimit(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !618 dso_local i64 @__ia32_compat_sys_getrusage(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !619 dso_local i64 @__ia32_compat_sys_gettimeofday(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !620 dso_local i64 @__ia32_compat_sys_settimeofday(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !621 dso_local i64 @__ia32_sys_getgroups16(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !622 dso_local i64 @__ia32_sys_setgroups16(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !623 dso_local i64 @__ia32_compat_sys_old_select(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !624 dso_local i64 @__ia32_sys_symlink(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !625 dso_local i64 @__ia32_sys_lstat(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !626 dso_local i64 @__ia32_sys_readlink(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !627 dso_local i64 @__ia32_sys_uselib(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !628 dso_local i64 @__ia32_sys_swapon(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !629 dso_local i64 @__ia32_sys_reboot(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !630 dso_local i64 @__ia32_compat_sys_old_readdir(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !631 dso_local i64 @__ia32_compat_sys_ia32_mmap(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !632 dso_local i64 @__ia32_sys_munmap(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !633 dso_local i64 @__ia32_compat_sys_truncate(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !634 dso_local i64 @__ia32_compat_sys_ftruncate(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !635 dso_local i64 @__ia32_sys_fchmod(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !636 dso_local i64 @__ia32_sys_fchown16(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !637 dso_local i64 @__ia32_sys_getpriority(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !638 dso_local i64 @__ia32_sys_setpriority(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !639 dso_local i64 @__ia32_compat_sys_statfs(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !640 dso_local i64 @__ia32_compat_sys_fstatfs(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !641 dso_local i64 @__ia32_sys_ioperm(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !642 dso_local i64 @__ia32_compat_sys_socketcall(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !643 dso_local i64 @__ia32_sys_syslog(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !644 dso_local i64 @__ia32_compat_sys_setitimer(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !645 dso_local i64 @__ia32_compat_sys_getitimer(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !646 dso_local i64 @__ia32_compat_sys_newstat(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !647 dso_local i64 @__ia32_compat_sys_newlstat(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !648 dso_local i64 @__ia32_compat_sys_newfstat(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !649 dso_local i64 @__ia32_sys_uname(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !650 dso_local i64 @__ia32_sys_iopl(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !651 dso_local i64 @__ia32_sys_vhangup(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !652 dso_local i64 @__ia32_compat_sys_wait4(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !653 dso_local i64 @__ia32_sys_swapoff(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !654 dso_local i64 @__ia32_compat_sys_sysinfo(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !655 dso_local i64 @__ia32_compat_sys_ipc(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !656 dso_local i64 @__ia32_sys_fsync(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !657 dso_local i64 @__ia32_compat_sys_sigreturn(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !658 dso_local i64 @__ia32_compat_sys_ia32_clone(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !659 dso_local i64 @__ia32_sys_setdomainname(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !660 dso_local i64 @__ia32_sys_newuname(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !661 dso_local i64 @__ia32_sys_modify_ldt(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !662 dso_local i64 @__ia32_sys_adjtimex_time32(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !663 dso_local i64 @__ia32_sys_mprotect(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !664 dso_local i64 @__ia32_compat_sys_sigprocmask(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !665 dso_local i64 @__ia32_sys_init_module(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !666 dso_local i64 @__ia32_sys_delete_module(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !667 dso_local i64 @__ia32_sys_quotactl(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !668 dso_local i64 @__ia32_sys_getpgid(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !669 dso_local i64 @__ia32_sys_fchdir(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !670 dso_local i64 @__ia32_sys_sysfs(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !671 dso_local i64 @__ia32_sys_personality(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !672 dso_local i64 @__ia32_sys_setfsuid16(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !673 dso_local i64 @__ia32_sys_setfsgid16(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !674 dso_local i64 @__ia32_sys_llseek(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !675 dso_local i64 @__ia32_compat_sys_getdents(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !676 dso_local i64 @__ia32_compat_sys_select(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !677 dso_local i64 @__ia32_sys_flock(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !678 dso_local i64 @__ia32_sys_msync(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !679 dso_local i64 @__ia32_sys_readv(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !680 dso_local i64 @__ia32_sys_writev(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !681 dso_local i64 @__ia32_sys_getsid(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !682 dso_local i64 @__ia32_sys_fdatasync(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !683 dso_local i64 @__ia32_sys_mlock(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !684 dso_local i64 @__ia32_sys_munlock(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !685 dso_local i64 @__ia32_sys_mlockall(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !686 dso_local i64 @__ia32_sys_munlockall(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !687 dso_local i64 @__ia32_sys_sched_setparam(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !688 dso_local i64 @__ia32_sys_sched_getparam(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !689 dso_local i64 @__ia32_sys_sched_setscheduler(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !690 dso_local i64 @__ia32_sys_sched_getscheduler(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !691 dso_local i64 @__ia32_sys_sched_yield(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !692 dso_local i64 @__ia32_sys_sched_get_priority_max(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !693 dso_local i64 @__ia32_sys_sched_get_priority_min(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !694 dso_local i64 @__ia32_sys_sched_rr_get_interval_time32(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !695 dso_local i64 @__ia32_sys_nanosleep_time32(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !696 dso_local i64 @__ia32_sys_mremap(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !697 dso_local i64 @__ia32_sys_setresuid16(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !698 dso_local i64 @__ia32_sys_getresuid16(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !699 dso_local i64 @__ia32_sys_poll(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !700 dso_local i64 @__ia32_sys_setresgid16(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !701 dso_local i64 @__ia32_sys_getresgid16(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !702 dso_local i64 @__ia32_sys_prctl(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !703 dso_local i64 @__ia32_compat_sys_rt_sigreturn(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !704 dso_local i64 @__ia32_compat_sys_rt_sigaction(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !705 dso_local i64 @__ia32_compat_sys_rt_sigprocmask(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !706 dso_local i64 @__ia32_compat_sys_rt_sigpending(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !707 dso_local i64 @__ia32_compat_sys_rt_sigtimedwait_time32(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !708 dso_local i64 @__ia32_compat_sys_rt_sigqueueinfo(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !709 dso_local i64 @__ia32_compat_sys_rt_sigsuspend(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !710 dso_local i64 @__ia32_sys_ia32_pread64(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !711 dso_local i64 @__ia32_sys_ia32_pwrite64(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !712 dso_local i64 @__ia32_sys_chown16(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !713 dso_local i64 @__ia32_sys_getcwd(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !714 dso_local i64 @__ia32_sys_capget(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !715 dso_local i64 @__ia32_sys_capset(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !716 dso_local i64 @__ia32_compat_sys_sigaltstack(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !717 dso_local i64 @__ia32_compat_sys_sendfile(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !718 dso_local i64 @__ia32_sys_vfork(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !719 dso_local i64 @__ia32_compat_sys_getrlimit(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !720 dso_local i64 @__ia32_sys_mmap_pgoff(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !721 dso_local i64 @__ia32_sys_ia32_truncate64(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !722 dso_local i64 @__ia32_sys_ia32_ftruncate64(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !723 dso_local i64 @__ia32_compat_sys_ia32_stat64(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !724 dso_local i64 @__ia32_compat_sys_ia32_lstat64(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !725 dso_local i64 @__ia32_compat_sys_ia32_fstat64(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !726 dso_local i64 @__ia32_sys_lchown(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !727 dso_local i64 @__ia32_sys_getuid(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !728 dso_local i64 @__ia32_sys_getgid(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !729 dso_local i64 @__ia32_sys_geteuid(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !730 dso_local i64 @__ia32_sys_getegid(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !731 dso_local i64 @__ia32_sys_setreuid(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !732 dso_local i64 @__ia32_sys_setregid(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !733 dso_local i64 @__ia32_sys_getgroups(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !734 dso_local i64 @__ia32_sys_setgroups(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !735 dso_local i64 @__ia32_sys_fchown(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !736 dso_local i64 @__ia32_sys_setresuid(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !737 dso_local i64 @__ia32_sys_getresuid(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !738 dso_local i64 @__ia32_sys_setresgid(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !739 dso_local i64 @__ia32_sys_getresgid(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !740 dso_local i64 @__ia32_sys_chown(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !741 dso_local i64 @__ia32_sys_setuid(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !742 dso_local i64 @__ia32_sys_setgid(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !743 dso_local i64 @__ia32_sys_setfsuid(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !744 dso_local i64 @__ia32_sys_setfsgid(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !745 dso_local i64 @__ia32_sys_pivot_root(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !746 dso_local i64 @__ia32_sys_mincore(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !747 dso_local i64 @__ia32_sys_madvise(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !748 dso_local i64 @__ia32_sys_getdents64(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !749 dso_local i64 @__ia32_sys_gettid(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !750 dso_local i64 @__ia32_sys_ia32_readahead(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !751 dso_local i64 @__ia32_sys_setxattr(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !752 dso_local i64 @__ia32_sys_lsetxattr(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !753 dso_local i64 @__ia32_sys_fsetxattr(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !754 dso_local i64 @__ia32_sys_getxattr(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !755 dso_local i64 @__ia32_sys_lgetxattr(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !756 dso_local i64 @__ia32_sys_fgetxattr(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !757 dso_local i64 @__ia32_sys_listxattr(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !758 dso_local i64 @__ia32_sys_llistxattr(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !759 dso_local i64 @__ia32_sys_flistxattr(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !760 dso_local i64 @__ia32_sys_removexattr(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !761 dso_local i64 @__ia32_sys_lremovexattr(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !762 dso_local i64 @__ia32_sys_fremovexattr(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !763 dso_local i64 @__ia32_sys_tkill(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !764 dso_local i64 @__ia32_sys_sendfile64(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !765 dso_local i64 @__ia32_sys_futex_time32(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !766 dso_local i64 @__ia32_compat_sys_sched_setaffinity(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !767 dso_local i64 @__ia32_compat_sys_sched_getaffinity(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !768 dso_local i64 @__ia32_sys_set_thread_area(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !769 dso_local i64 @__ia32_sys_get_thread_area(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !770 dso_local i64 @__ia32_compat_sys_io_setup(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !771 dso_local i64 @__ia32_sys_io_destroy(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !772 dso_local i64 @__ia32_sys_io_getevents_time32(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !773 dso_local i64 @__ia32_compat_sys_io_submit(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !774 dso_local i64 @__ia32_sys_io_cancel(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !775 dso_local i64 @__ia32_sys_ia32_fadvise64(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !776 dso_local i64 @__ia32_sys_exit_group(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !777 dso_local i64 @__ia32_compat_sys_lookup_dcookie(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !778 dso_local i64 @__ia32_sys_epoll_create(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !779 dso_local i64 @__ia32_sys_epoll_ctl(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !780 dso_local i64 @__ia32_sys_epoll_wait(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !781 dso_local i64 @__ia32_sys_remap_file_pages(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !782 dso_local i64 @__ia32_sys_set_tid_address(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !783 dso_local i64 @__ia32_compat_sys_timer_create(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !784 dso_local i64 @__ia32_sys_timer_settime32(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !785 dso_local i64 @__ia32_sys_timer_gettime32(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !786 dso_local i64 @__ia32_sys_timer_getoverrun(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !787 dso_local i64 @__ia32_sys_timer_delete(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !788 dso_local i64 @__ia32_sys_clock_settime32(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !789 dso_local i64 @__ia32_sys_clock_gettime32(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !790 dso_local i64 @__ia32_sys_clock_getres_time32(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !791 dso_local i64 @__ia32_sys_clock_nanosleep_time32(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !792 dso_local i64 @__ia32_compat_sys_statfs64(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !793 dso_local i64 @__ia32_compat_sys_fstatfs64(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !794 dso_local i64 @__ia32_sys_tgkill(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !795 dso_local i64 @__ia32_sys_utimes_time32(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !796 dso_local i64 @__ia32_sys_ia32_fadvise64_64(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !797 dso_local i64 @__ia32_sys_mbind(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !798 dso_local i64 @__ia32_sys_get_mempolicy(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !799 dso_local i64 @__ia32_sys_set_mempolicy(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !800 dso_local i64 @__ia32_compat_sys_mq_open(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !801 dso_local i64 @__ia32_sys_mq_unlink(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !802 dso_local i64 @__ia32_sys_mq_timedsend_time32(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !803 dso_local i64 @__ia32_sys_mq_timedreceive_time32(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !804 dso_local i64 @__ia32_compat_sys_mq_notify(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !805 dso_local i64 @__ia32_compat_sys_mq_getsetattr(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !806 dso_local i64 @__ia32_compat_sys_kexec_load(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !807 dso_local i64 @__ia32_compat_sys_waitid(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !808 dso_local i64 @__ia32_sys_add_key(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !809 dso_local i64 @__ia32_sys_request_key(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !810 dso_local i64 @__ia32_compat_sys_keyctl(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !811 dso_local i64 @__ia32_sys_ioprio_set(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !812 dso_local i64 @__ia32_sys_ioprio_get(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !813 dso_local i64 @__ia32_sys_inotify_init(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !814 dso_local i64 @__ia32_sys_inotify_add_watch(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !815 dso_local i64 @__ia32_sys_inotify_rm_watch(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !816 dso_local i64 @__ia32_sys_migrate_pages(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !817 dso_local i64 @__ia32_compat_sys_openat(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !818 dso_local i64 @__ia32_sys_mkdirat(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !819 dso_local i64 @__ia32_sys_mknodat(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !820 dso_local i64 @__ia32_sys_fchownat(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !821 dso_local i64 @__ia32_sys_futimesat_time32(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !822 dso_local i64 @__ia32_compat_sys_ia32_fstatat64(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !823 dso_local i64 @__ia32_sys_unlinkat(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !824 dso_local i64 @__ia32_sys_renameat(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !825 dso_local i64 @__ia32_sys_linkat(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !826 dso_local i64 @__ia32_sys_symlinkat(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !827 dso_local i64 @__ia32_sys_readlinkat(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !828 dso_local i64 @__ia32_sys_fchmodat(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !829 dso_local i64 @__ia32_sys_faccessat(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !830 dso_local i64 @__ia32_compat_sys_pselect6_time32(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !831 dso_local i64 @__ia32_compat_sys_ppoll_time32(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !832 dso_local i64 @__ia32_sys_unshare(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !833 dso_local i64 @__ia32_compat_sys_set_robust_list(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !834 dso_local i64 @__ia32_compat_sys_get_robust_list(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !835 dso_local i64 @__ia32_sys_splice(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !836 dso_local i64 @__ia32_sys_ia32_sync_file_range(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !837 dso_local i64 @__ia32_sys_tee(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !838 dso_local i64 @__ia32_sys_vmsplice(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !839 dso_local i64 @__ia32_sys_move_pages(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !840 dso_local i64 @__ia32_sys_getcpu(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !841 dso_local i64 @__ia32_sys_epoll_pwait(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !842 dso_local i64 @__ia32_sys_utimensat_time32(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !843 dso_local i64 @__ia32_compat_sys_signalfd(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !844 dso_local i64 @__ia32_sys_timerfd_create(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !845 dso_local i64 @__ia32_sys_eventfd(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !846 dso_local i64 @__ia32_sys_ia32_fallocate(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !847 dso_local i64 @__ia32_sys_timerfd_settime32(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !848 dso_local i64 @__ia32_sys_timerfd_gettime32(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !849 dso_local i64 @__ia32_compat_sys_signalfd4(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !850 dso_local i64 @__ia32_sys_eventfd2(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !851 dso_local i64 @__ia32_sys_epoll_create1(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !852 dso_local i64 @__ia32_sys_dup3(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !853 dso_local i64 @__ia32_sys_pipe2(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !854 dso_local i64 @__ia32_sys_inotify_init1(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !855 dso_local i64 @__ia32_compat_sys_preadv(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !856 dso_local i64 @__ia32_compat_sys_pwritev(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !857 dso_local i64 @__ia32_compat_sys_rt_tgsigqueueinfo(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !858 dso_local i64 @__ia32_sys_perf_event_open(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !859 dso_local i64 @__ia32_compat_sys_recvmmsg_time32(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !860 dso_local i64 @__ia32_sys_fanotify_init(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !861 dso_local i64 @__ia32_compat_sys_fanotify_mark(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !862 dso_local i64 @__ia32_sys_prlimit64(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !863 dso_local i64 @__ia32_sys_name_to_handle_at(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !864 dso_local i64 @__ia32_compat_sys_open_by_handle_at(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !865 dso_local i64 @__ia32_sys_clock_adjtime32(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !866 dso_local i64 @__ia32_sys_syncfs(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !867 dso_local i64 @__ia32_compat_sys_sendmmsg(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !868 dso_local i64 @__ia32_sys_setns(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !869 dso_local i64 @__ia32_sys_process_vm_readv(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !870 dso_local i64 @__ia32_sys_process_vm_writev(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !871 dso_local i64 @__ia32_sys_kcmp(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !872 dso_local i64 @__ia32_sys_finit_module(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !873 dso_local i64 @__ia32_sys_sched_setattr(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !874 dso_local i64 @__ia32_sys_sched_getattr(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !875 dso_local i64 @__ia32_sys_renameat2(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !876 dso_local i64 @__ia32_sys_seccomp(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !877 dso_local i64 @__ia32_sys_getrandom(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !878 dso_local i64 @__ia32_sys_memfd_create(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !879 dso_local i64 @__ia32_sys_bpf(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !880 dso_local i64 @__ia32_compat_sys_execveat(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !881 dso_local i64 @__ia32_sys_socket(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !882 dso_local i64 @__ia32_sys_socketpair(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !883 dso_local i64 @__ia32_sys_bind(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !884 dso_local i64 @__ia32_sys_connect(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !885 dso_local i64 @__ia32_sys_listen(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !886 dso_local i64 @__ia32_sys_accept4(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !887 dso_local i64 @__ia32_sys_getsockopt(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !888 dso_local i64 @__ia32_sys_setsockopt(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !889 dso_local i64 @__ia32_sys_getsockname(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !890 dso_local i64 @__ia32_sys_getpeername(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !891 dso_local i64 @__ia32_sys_sendto(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !892 dso_local i64 @__ia32_compat_sys_sendmsg(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !893 dso_local i64 @__ia32_compat_sys_recvfrom(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !894 dso_local i64 @__ia32_compat_sys_recvmsg(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !895 dso_local i64 @__ia32_sys_shutdown(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !896 dso_local i64 @__ia32_sys_userfaultfd(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !897 dso_local i64 @__ia32_sys_membarrier(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !898 dso_local i64 @__ia32_sys_mlock2(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !899 dso_local i64 @__ia32_sys_copy_file_range(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !900 dso_local i64 @__ia32_compat_sys_preadv2(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !901 dso_local i64 @__ia32_compat_sys_pwritev2(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !902 dso_local i64 @__ia32_sys_pkey_mprotect(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !903 dso_local i64 @__ia32_sys_pkey_alloc(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !904 dso_local i64 @__ia32_sys_pkey_free(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !905 dso_local i64 @__ia32_sys_statx(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !906 dso_local i64 @__ia32_compat_sys_arch_prctl(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !907 dso_local i64 @__ia32_compat_sys_io_pgetevents(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !908 dso_local i64 @__ia32_sys_rseq(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !909 dso_local i64 @__ia32_sys_semget(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !910 dso_local i64 @__ia32_compat_sys_semctl(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !911 dso_local i64 @__ia32_sys_shmget(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !912 dso_local i64 @__ia32_compat_sys_shmctl(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !913 dso_local i64 @__ia32_compat_sys_shmat(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !914 dso_local i64 @__ia32_sys_shmdt(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !915 dso_local i64 @__ia32_sys_msgget(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !916 dso_local i64 @__ia32_compat_sys_msgsnd(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !917 dso_local i64 @__ia32_compat_sys_msgrcv(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !918 dso_local i64 @__ia32_compat_sys_msgctl(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !919 dso_local i64 @__ia32_sys_clock_gettime(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !920 dso_local i64 @__ia32_sys_clock_settime(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !921 dso_local i64 @__ia32_sys_clock_adjtime(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !922 dso_local i64 @__ia32_sys_clock_getres(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !923 dso_local i64 @__ia32_sys_clock_nanosleep(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !924 dso_local i64 @__ia32_sys_timer_gettime(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !925 dso_local i64 @__ia32_sys_timer_settime(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !926 dso_local i64 @__ia32_sys_timerfd_gettime(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !927 dso_local i64 @__ia32_sys_timerfd_settime(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !928 dso_local i64 @__ia32_sys_utimensat(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !929 dso_local i64 @__ia32_compat_sys_pselect6_time64(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !930 dso_local i64 @__ia32_compat_sys_ppoll_time64(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !931 dso_local i64 @__ia32_compat_sys_io_pgetevents_time64(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !932 dso_local i64 @__ia32_compat_sys_recvmmsg_time64(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !933 dso_local i64 @__ia32_sys_mq_timedsend(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !934 dso_local i64 @__ia32_sys_mq_timedreceive(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !935 dso_local i64 @__ia32_sys_semtimedop(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !936 dso_local i64 @__ia32_compat_sys_rt_sigtimedwait_time64(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !937 dso_local i64 @__ia32_sys_futex(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !938 dso_local i64 @__ia32_sys_sched_rr_get_interval(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !939 dso_local i64 @__ia32_sys_pidfd_send_signal(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !940 dso_local i64 @__ia32_sys_io_uring_setup(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !941 dso_local i64 @__ia32_sys_io_uring_enter(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !942 dso_local i64 @__ia32_sys_io_uring_register(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !943 dso_local i64 @__ia32_sys_open_tree(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !944 dso_local i64 @__ia32_sys_move_mount(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !945 dso_local i64 @__ia32_sys_fsopen(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !946 dso_local i64 @__ia32_sys_fsconfig(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !947 dso_local i64 @__ia32_sys_fsmount(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !948 dso_local i64 @__ia32_sys_fspick(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !949 dso_local i64 @__ia32_sys_pidfd_open(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !950 dso_local i64 @__ia32_sys_clone3(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !951 dso_local i64 @__ia32_sys_close_range(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !952 dso_local i64 @__ia32_sys_openat2(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !953 dso_local i64 @__ia32_sys_pidfd_getfd(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !954 dso_local i64 @__ia32_sys_faccessat2(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !955 dso_local i64 @__ia32_sys_process_madvise(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !956 dso_local i64 @__ia32_compat_sys_epoll_pwait2(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !957 dso_local i64 @__ia32_sys_mount_setattr(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !958 dso_local i64 @__ia32_sys_quotactl_fd(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !959 dso_local i64 @__ia32_sys_landlock_create_ruleset(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !960 dso_local i64 @__ia32_sys_landlock_add_rule(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !961 dso_local i64 @__ia32_sys_landlock_restrict_self(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !962 dso_local i64 @__ia32_sys_memfd_secret(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !963 dso_local i64 @__ia32_sys_process_mrelease(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !964 dso_local i64 @__ia32_sys_futex_waitv(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !965 dso_local i64 @__ia32_sys_set_mempolicy_home_node(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !966 dso_local i64 @__ia32_sys_cachestat(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !967 dso_local i64 @__ia32_sys_fchmodat2(ptr noundef) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/entry/.syscall_32.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/entry/syscall_32\22 -D KBUILD_BASENAME=\22syscall_32\22 -D KBUILD_MODNAME=\22syscall_32\22 -D __KBUILD_MODNAME=kmod_syscall_32 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/entry/syscall_32.ll arch/x86/entry/syscall_32.c", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "arch/x86/entry/syscall_32.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2965c0dad63b32a55c65c50fb1763e99")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 8, !"cf-protection-branch", i32 1}
!6 = !{i32 4, !"function_return_thunk_extern", i32 1}
!7 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!8 = !{i32 1, !"Code Model", i32 2}
!9 = !{i32 1, !"override-stack-alignment", i32 8}
!10 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!11 = distinct !DISubprogram(name: "ia32_sys_call", scope: !1, file: !1, line: 36, type: !12, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !78)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15, !77}
!14 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !18, line: 103, size: 1344, elements: !19)
!18 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!19 = !{!20, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !57, !58, !59}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !17, file: !18, line: 109, baseType: !21, size: 64)
!21 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !17, file: !18, line: 110, baseType: !21, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !17, file: !18, line: 111, baseType: !21, size: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !17, file: !18, line: 112, baseType: !21, size: 64, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !17, file: !18, line: 113, baseType: !21, size: 64, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !17, file: !18, line: 114, baseType: !21, size: 64, offset: 320)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !17, file: !18, line: 117, baseType: !21, size: 64, offset: 384)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !17, file: !18, line: 118, baseType: !21, size: 64, offset: 448)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !17, file: !18, line: 119, baseType: !21, size: 64, offset: 512)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !17, file: !18, line: 120, baseType: !21, size: 64, offset: 576)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !17, file: !18, line: 121, baseType: !21, size: 64, offset: 640)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !17, file: !18, line: 122, baseType: !21, size: 64, offset: 704)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !17, file: !18, line: 123, baseType: !21, size: 64, offset: 768)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !17, file: !18, line: 124, baseType: !21, size: 64, offset: 832)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !17, file: !18, line: 125, baseType: !21, size: 64, offset: 896)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !17, file: !18, line: 139, baseType: !21, size: 64, offset: 960)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !17, file: !18, line: 142, baseType: !21, size: 64, offset: 1024)
!38 = !DIDerivedType(tag: DW_TAG_member, scope: !17, file: !18, line: 144, baseType: !39, size: 64, offset: 1088)
!39 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !17, file: !18, line: 144, size: 64, elements: !40)
!40 = !{!41, !47, !51}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !39, file: !18, line: 146, baseType: !42, size: 16)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !43, line: 19, baseType: !44)
!43 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !45, line: 24, baseType: !46)
!45 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !39, file: !18, line: 148, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !43, line: 23, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !45, line: 31, baseType: !50)
!50 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !39, file: !18, line: 150, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !18, line: 59, size: 64, elements: !53)
!53 = !{!54, !55, !56}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !52, file: !18, line: 61, baseType: !48, size: 16, flags: DIFlagBitField, extraData: i64 0)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !52, file: !18, line: 63, baseType: !48, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !52, file: !18, line: 65, baseType: !48, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !17, file: !18, line: 153, baseType: !21, size: 64, offset: 1152)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !17, file: !18, line: 154, baseType: !21, size: 64, offset: 1216)
!59 = !DIDerivedType(tag: DW_TAG_member, scope: !17, file: !18, line: 156, baseType: !60, size: 64, offset: 1280)
!60 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !17, file: !18, line: 156, size: 64, elements: !61)
!61 = !{!62, !63, !64}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !60, file: !18, line: 158, baseType: !42, size: 16)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !60, file: !18, line: 160, baseType: !48, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !60, file: !18, line: 162, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !18, line: 69, size: 64, elements: !66)
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !65, file: !18, line: 71, baseType: !48, size: 16, flags: DIFlagBitField, extraData: i64 0)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !65, file: !18, line: 73, baseType: !48, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !65, file: !18, line: 75, baseType: !48, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !65, file: !18, line: 77, baseType: !48, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !65, file: !18, line: 80, baseType: !48, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !65, file: !18, line: 83, baseType: !48, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !65, file: !18, line: 86, baseType: !48, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !65, file: !18, line: 88, baseType: !48, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !65, file: !18, line: 93, baseType: !48, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !65, file: !18, line: 100, baseType: !48, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!77 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!78 = !{!79, !80}
!79 = !DILocalVariable(name: "regs", arg: 1, scope: !11, file: !1, line: 36, type: !15)
!80 = !DILocalVariable(name: "nr", arg: 2, scope: !11, file: !1, line: 36, type: !77)
!81 = !DILocation(line: 36, column: 42, scope: !11)
!82 = !DILocation(line: 36, column: 61, scope: !11)
!83 = !DILocation(line: 38, column: 10, scope: !11)
!84 = !DILocation(line: 38, column: 2, scope: !11)
!85 = !DILocation(line: 1, column: 1, scope: !86)
!86 = !DILexicalBlockFile(scope: !88, file: !87, discriminator: 0)
!87 = !DIFile(filename: "./arch/x86/include/generated/asm/syscalls_32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "73e91922d6ef95fc96ee83b375e45648")
!88 = distinct !DILexicalBlock(scope: !11, file: !1, line: 38, column: 14)
!89 = !DILocation(line: 2, column: 1, scope: !86)
!90 = !DILocation(line: 3, column: 1, scope: !86)
!91 = !DILocation(line: 4, column: 1, scope: !86)
!92 = !DILocation(line: 5, column: 1, scope: !86)
!93 = !DILocation(line: 6, column: 1, scope: !86)
!94 = !DILocation(line: 7, column: 1, scope: !86)
!95 = !DILocation(line: 8, column: 1, scope: !86)
!96 = !DILocation(line: 9, column: 1, scope: !86)
!97 = !DILocation(line: 10, column: 1, scope: !86)
!98 = !DILocation(line: 11, column: 1, scope: !86)
!99 = !DILocation(line: 12, column: 1, scope: !86)
!100 = !DILocation(line: 13, column: 1, scope: !86)
!101 = !DILocation(line: 14, column: 1, scope: !86)
!102 = !DILocation(line: 15, column: 1, scope: !86)
!103 = !DILocation(line: 16, column: 1, scope: !86)
!104 = !DILocation(line: 17, column: 1, scope: !86)
!105 = !DILocation(line: 18, column: 1, scope: !86)
!106 = !DILocation(line: 19, column: 1, scope: !86)
!107 = !DILocation(line: 20, column: 1, scope: !86)
!108 = !DILocation(line: 21, column: 1, scope: !86)
!109 = !DILocation(line: 22, column: 1, scope: !86)
!110 = !DILocation(line: 23, column: 1, scope: !86)
!111 = !DILocation(line: 24, column: 1, scope: !86)
!112 = !DILocation(line: 25, column: 1, scope: !86)
!113 = !DILocation(line: 26, column: 1, scope: !86)
!114 = !DILocation(line: 27, column: 1, scope: !86)
!115 = !DILocation(line: 28, column: 1, scope: !86)
!116 = !DILocation(line: 29, column: 1, scope: !86)
!117 = !DILocation(line: 30, column: 1, scope: !86)
!118 = !DILocation(line: 31, column: 1, scope: !86)
!119 = !DILocation(line: 32, column: 1, scope: !86)
!120 = !DILocation(line: 33, column: 1, scope: !86)
!121 = !DILocation(line: 34, column: 1, scope: !86)
!122 = !DILocation(line: 35, column: 1, scope: !86)
!123 = !DILocation(line: 36, column: 1, scope: !86)
!124 = !DILocation(line: 37, column: 1, scope: !86)
!125 = !DILocation(line: 38, column: 1, scope: !86)
!126 = !DILocation(line: 39, column: 1, scope: !86)
!127 = !DILocation(line: 40, column: 1, scope: !86)
!128 = !DILocation(line: 41, column: 1, scope: !86)
!129 = !DILocation(line: 42, column: 1, scope: !86)
!130 = !DILocation(line: 43, column: 1, scope: !86)
!131 = !DILocation(line: 44, column: 1, scope: !86)
!132 = !DILocation(line: 45, column: 1, scope: !86)
!133 = !DILocation(line: 46, column: 1, scope: !86)
!134 = !DILocation(line: 47, column: 1, scope: !86)
!135 = !DILocation(line: 48, column: 1, scope: !86)
!136 = !DILocation(line: 49, column: 1, scope: !86)
!137 = !DILocation(line: 50, column: 1, scope: !86)
!138 = !DILocation(line: 51, column: 1, scope: !86)
!139 = !DILocation(line: 52, column: 1, scope: !86)
!140 = !DILocation(line: 53, column: 1, scope: !86)
!141 = !DILocation(line: 54, column: 1, scope: !86)
!142 = !DILocation(line: 55, column: 1, scope: !86)
!143 = !DILocation(line: 56, column: 1, scope: !86)
!144 = !DILocation(line: 57, column: 1, scope: !86)
!145 = !DILocation(line: 58, column: 1, scope: !86)
!146 = !DILocation(line: 59, column: 1, scope: !86)
!147 = !DILocation(line: 60, column: 1, scope: !86)
!148 = !DILocation(line: 61, column: 1, scope: !86)
!149 = !DILocation(line: 62, column: 1, scope: !86)
!150 = !DILocation(line: 63, column: 1, scope: !86)
!151 = !DILocation(line: 64, column: 1, scope: !86)
!152 = !DILocation(line: 65, column: 1, scope: !86)
!153 = !DILocation(line: 66, column: 1, scope: !86)
!154 = !DILocation(line: 67, column: 1, scope: !86)
!155 = !DILocation(line: 68, column: 1, scope: !86)
!156 = !DILocation(line: 69, column: 1, scope: !86)
!157 = !DILocation(line: 70, column: 1, scope: !86)
!158 = !DILocation(line: 71, column: 1, scope: !86)
!159 = !DILocation(line: 72, column: 1, scope: !86)
!160 = !DILocation(line: 73, column: 1, scope: !86)
!161 = !DILocation(line: 74, column: 1, scope: !86)
!162 = !DILocation(line: 75, column: 1, scope: !86)
!163 = !DILocation(line: 76, column: 1, scope: !86)
!164 = !DILocation(line: 77, column: 1, scope: !86)
!165 = !DILocation(line: 78, column: 1, scope: !86)
!166 = !DILocation(line: 79, column: 1, scope: !86)
!167 = !DILocation(line: 80, column: 1, scope: !86)
!168 = !DILocation(line: 81, column: 1, scope: !86)
!169 = !DILocation(line: 82, column: 1, scope: !86)
!170 = !DILocation(line: 83, column: 1, scope: !86)
!171 = !DILocation(line: 84, column: 1, scope: !86)
!172 = !DILocation(line: 85, column: 1, scope: !86)
!173 = !DILocation(line: 86, column: 1, scope: !86)
!174 = !DILocation(line: 87, column: 1, scope: !86)
!175 = !DILocation(line: 88, column: 1, scope: !86)
!176 = !DILocation(line: 89, column: 1, scope: !86)
!177 = !DILocation(line: 90, column: 1, scope: !86)
!178 = !DILocation(line: 91, column: 1, scope: !86)
!179 = !DILocation(line: 92, column: 1, scope: !86)
!180 = !DILocation(line: 93, column: 1, scope: !86)
!181 = !DILocation(line: 94, column: 1, scope: !86)
!182 = !DILocation(line: 95, column: 1, scope: !86)
!183 = !DILocation(line: 96, column: 1, scope: !86)
!184 = !DILocation(line: 97, column: 1, scope: !86)
!185 = !DILocation(line: 98, column: 1, scope: !86)
!186 = !DILocation(line: 99, column: 1, scope: !86)
!187 = !DILocation(line: 100, column: 1, scope: !86)
!188 = !DILocation(line: 101, column: 1, scope: !86)
!189 = !DILocation(line: 102, column: 1, scope: !86)
!190 = !DILocation(line: 103, column: 1, scope: !86)
!191 = !DILocation(line: 104, column: 1, scope: !86)
!192 = !DILocation(line: 105, column: 1, scope: !86)
!193 = !DILocation(line: 106, column: 1, scope: !86)
!194 = !DILocation(line: 107, column: 1, scope: !86)
!195 = !DILocation(line: 108, column: 1, scope: !86)
!196 = !DILocation(line: 109, column: 1, scope: !86)
!197 = !DILocation(line: 110, column: 1, scope: !86)
!198 = !DILocation(line: 111, column: 1, scope: !86)
!199 = !DILocation(line: 112, column: 1, scope: !86)
!200 = !DILocation(line: 113, column: 1, scope: !86)
!201 = !DILocation(line: 114, column: 1, scope: !86)
!202 = !DILocation(line: 115, column: 1, scope: !86)
!203 = !DILocation(line: 116, column: 1, scope: !86)
!204 = !DILocation(line: 117, column: 1, scope: !86)
!205 = !DILocation(line: 118, column: 1, scope: !86)
!206 = !DILocation(line: 119, column: 1, scope: !86)
!207 = !DILocation(line: 120, column: 1, scope: !86)
!208 = !DILocation(line: 121, column: 1, scope: !86)
!209 = !DILocation(line: 122, column: 1, scope: !86)
!210 = !DILocation(line: 123, column: 1, scope: !86)
!211 = !DILocation(line: 124, column: 1, scope: !86)
!212 = !DILocation(line: 125, column: 1, scope: !86)
!213 = !DILocation(line: 126, column: 1, scope: !86)
!214 = !DILocation(line: 127, column: 1, scope: !86)
!215 = !DILocation(line: 128, column: 1, scope: !86)
!216 = !DILocation(line: 129, column: 1, scope: !86)
!217 = !DILocation(line: 130, column: 1, scope: !86)
!218 = !DILocation(line: 131, column: 1, scope: !86)
!219 = !DILocation(line: 132, column: 1, scope: !86)
!220 = !DILocation(line: 133, column: 1, scope: !86)
!221 = !DILocation(line: 134, column: 1, scope: !86)
!222 = !DILocation(line: 135, column: 1, scope: !86)
!223 = !DILocation(line: 136, column: 1, scope: !86)
!224 = !DILocation(line: 137, column: 1, scope: !86)
!225 = !DILocation(line: 138, column: 1, scope: !86)
!226 = !DILocation(line: 139, column: 1, scope: !86)
!227 = !DILocation(line: 140, column: 1, scope: !86)
!228 = !DILocation(line: 141, column: 1, scope: !86)
!229 = !DILocation(line: 142, column: 1, scope: !86)
!230 = !DILocation(line: 143, column: 1, scope: !86)
!231 = !DILocation(line: 144, column: 1, scope: !86)
!232 = !DILocation(line: 145, column: 1, scope: !86)
!233 = !DILocation(line: 146, column: 1, scope: !86)
!234 = !DILocation(line: 147, column: 1, scope: !86)
!235 = !DILocation(line: 148, column: 1, scope: !86)
!236 = !DILocation(line: 149, column: 1, scope: !86)
!237 = !DILocation(line: 150, column: 1, scope: !86)
!238 = !DILocation(line: 151, column: 1, scope: !86)
!239 = !DILocation(line: 152, column: 1, scope: !86)
!240 = !DILocation(line: 153, column: 1, scope: !86)
!241 = !DILocation(line: 154, column: 1, scope: !86)
!242 = !DILocation(line: 155, column: 1, scope: !86)
!243 = !DILocation(line: 156, column: 1, scope: !86)
!244 = !DILocation(line: 157, column: 1, scope: !86)
!245 = !DILocation(line: 158, column: 1, scope: !86)
!246 = !DILocation(line: 159, column: 1, scope: !86)
!247 = !DILocation(line: 160, column: 1, scope: !86)
!248 = !DILocation(line: 161, column: 1, scope: !86)
!249 = !DILocation(line: 162, column: 1, scope: !86)
!250 = !DILocation(line: 163, column: 1, scope: !86)
!251 = !DILocation(line: 164, column: 1, scope: !86)
!252 = !DILocation(line: 165, column: 1, scope: !86)
!253 = !DILocation(line: 166, column: 1, scope: !86)
!254 = !DILocation(line: 167, column: 1, scope: !86)
!255 = !DILocation(line: 168, column: 1, scope: !86)
!256 = !DILocation(line: 169, column: 1, scope: !86)
!257 = !DILocation(line: 170, column: 1, scope: !86)
!258 = !DILocation(line: 171, column: 1, scope: !86)
!259 = !DILocation(line: 172, column: 1, scope: !86)
!260 = !DILocation(line: 173, column: 1, scope: !86)
!261 = !DILocation(line: 174, column: 1, scope: !86)
!262 = !DILocation(line: 175, column: 1, scope: !86)
!263 = !DILocation(line: 176, column: 1, scope: !86)
!264 = !DILocation(line: 177, column: 1, scope: !86)
!265 = !DILocation(line: 178, column: 1, scope: !86)
!266 = !DILocation(line: 179, column: 1, scope: !86)
!267 = !DILocation(line: 180, column: 1, scope: !86)
!268 = !DILocation(line: 181, column: 1, scope: !86)
!269 = !DILocation(line: 182, column: 1, scope: !86)
!270 = !DILocation(line: 183, column: 1, scope: !86)
!271 = !DILocation(line: 184, column: 1, scope: !86)
!272 = !DILocation(line: 185, column: 1, scope: !86)
!273 = !DILocation(line: 186, column: 1, scope: !86)
!274 = !DILocation(line: 187, column: 1, scope: !86)
!275 = !DILocation(line: 188, column: 1, scope: !86)
!276 = !DILocation(line: 189, column: 1, scope: !86)
!277 = !DILocation(line: 190, column: 1, scope: !86)
!278 = !DILocation(line: 191, column: 1, scope: !86)
!279 = !DILocation(line: 192, column: 1, scope: !86)
!280 = !DILocation(line: 193, column: 1, scope: !86)
!281 = !DILocation(line: 194, column: 1, scope: !86)
!282 = !DILocation(line: 195, column: 1, scope: !86)
!283 = !DILocation(line: 196, column: 1, scope: !86)
!284 = !DILocation(line: 197, column: 1, scope: !86)
!285 = !DILocation(line: 198, column: 1, scope: !86)
!286 = !DILocation(line: 199, column: 1, scope: !86)
!287 = !DILocation(line: 200, column: 1, scope: !86)
!288 = !DILocation(line: 201, column: 1, scope: !86)
!289 = !DILocation(line: 202, column: 1, scope: !86)
!290 = !DILocation(line: 203, column: 1, scope: !86)
!291 = !DILocation(line: 204, column: 1, scope: !86)
!292 = !DILocation(line: 205, column: 1, scope: !86)
!293 = !DILocation(line: 206, column: 1, scope: !86)
!294 = !DILocation(line: 207, column: 1, scope: !86)
!295 = !DILocation(line: 208, column: 1, scope: !86)
!296 = !DILocation(line: 209, column: 1, scope: !86)
!297 = !DILocation(line: 210, column: 1, scope: !86)
!298 = !DILocation(line: 211, column: 1, scope: !86)
!299 = !DILocation(line: 212, column: 1, scope: !86)
!300 = !DILocation(line: 213, column: 1, scope: !86)
!301 = !DILocation(line: 214, column: 1, scope: !86)
!302 = !DILocation(line: 215, column: 1, scope: !86)
!303 = !DILocation(line: 216, column: 1, scope: !86)
!304 = !DILocation(line: 217, column: 1, scope: !86)
!305 = !DILocation(line: 218, column: 1, scope: !86)
!306 = !DILocation(line: 219, column: 1, scope: !86)
!307 = !DILocation(line: 220, column: 1, scope: !86)
!308 = !DILocation(line: 221, column: 1, scope: !86)
!309 = !DILocation(line: 222, column: 1, scope: !86)
!310 = !DILocation(line: 223, column: 1, scope: !86)
!311 = !DILocation(line: 224, column: 1, scope: !86)
!312 = !DILocation(line: 225, column: 1, scope: !86)
!313 = !DILocation(line: 226, column: 1, scope: !86)
!314 = !DILocation(line: 227, column: 1, scope: !86)
!315 = !DILocation(line: 228, column: 1, scope: !86)
!316 = !DILocation(line: 229, column: 1, scope: !86)
!317 = !DILocation(line: 230, column: 1, scope: !86)
!318 = !DILocation(line: 231, column: 1, scope: !86)
!319 = !DILocation(line: 232, column: 1, scope: !86)
!320 = !DILocation(line: 233, column: 1, scope: !86)
!321 = !DILocation(line: 234, column: 1, scope: !86)
!322 = !DILocation(line: 235, column: 1, scope: !86)
!323 = !DILocation(line: 236, column: 1, scope: !86)
!324 = !DILocation(line: 237, column: 1, scope: !86)
!325 = !DILocation(line: 238, column: 1, scope: !86)
!326 = !DILocation(line: 239, column: 1, scope: !86)
!327 = !DILocation(line: 240, column: 1, scope: !86)
!328 = !DILocation(line: 241, column: 1, scope: !86)
!329 = !DILocation(line: 242, column: 1, scope: !86)
!330 = !DILocation(line: 243, column: 1, scope: !86)
!331 = !DILocation(line: 244, column: 1, scope: !86)
!332 = !DILocation(line: 245, column: 1, scope: !86)
!333 = !DILocation(line: 246, column: 1, scope: !86)
!334 = !DILocation(line: 247, column: 1, scope: !86)
!335 = !DILocation(line: 248, column: 1, scope: !86)
!336 = !DILocation(line: 249, column: 1, scope: !86)
!337 = !DILocation(line: 250, column: 1, scope: !86)
!338 = !DILocation(line: 251, column: 1, scope: !86)
!339 = !DILocation(line: 252, column: 1, scope: !86)
!340 = !DILocation(line: 253, column: 1, scope: !86)
!341 = !DILocation(line: 254, column: 1, scope: !86)
!342 = !DILocation(line: 255, column: 1, scope: !86)
!343 = !DILocation(line: 256, column: 1, scope: !86)
!344 = !DILocation(line: 257, column: 1, scope: !86)
!345 = !DILocation(line: 258, column: 1, scope: !86)
!346 = !DILocation(line: 259, column: 1, scope: !86)
!347 = !DILocation(line: 260, column: 1, scope: !86)
!348 = !DILocation(line: 261, column: 1, scope: !86)
!349 = !DILocation(line: 262, column: 1, scope: !86)
!350 = !DILocation(line: 263, column: 1, scope: !86)
!351 = !DILocation(line: 264, column: 1, scope: !86)
!352 = !DILocation(line: 265, column: 1, scope: !86)
!353 = !DILocation(line: 266, column: 1, scope: !86)
!354 = !DILocation(line: 267, column: 1, scope: !86)
!355 = !DILocation(line: 268, column: 1, scope: !86)
!356 = !DILocation(line: 269, column: 1, scope: !86)
!357 = !DILocation(line: 270, column: 1, scope: !86)
!358 = !DILocation(line: 271, column: 1, scope: !86)
!359 = !DILocation(line: 272, column: 1, scope: !86)
!360 = !DILocation(line: 273, column: 1, scope: !86)
!361 = !DILocation(line: 274, column: 1, scope: !86)
!362 = !DILocation(line: 275, column: 1, scope: !86)
!363 = !DILocation(line: 276, column: 1, scope: !86)
!364 = !DILocation(line: 277, column: 1, scope: !86)
!365 = !DILocation(line: 278, column: 1, scope: !86)
!366 = !DILocation(line: 279, column: 1, scope: !86)
!367 = !DILocation(line: 280, column: 1, scope: !86)
!368 = !DILocation(line: 281, column: 1, scope: !86)
!369 = !DILocation(line: 282, column: 1, scope: !86)
!370 = !DILocation(line: 283, column: 1, scope: !86)
!371 = !DILocation(line: 284, column: 1, scope: !86)
!372 = !DILocation(line: 285, column: 1, scope: !86)
!373 = !DILocation(line: 286, column: 1, scope: !86)
!374 = !DILocation(line: 287, column: 1, scope: !86)
!375 = !DILocation(line: 288, column: 1, scope: !86)
!376 = !DILocation(line: 289, column: 1, scope: !86)
!377 = !DILocation(line: 290, column: 1, scope: !86)
!378 = !DILocation(line: 291, column: 1, scope: !86)
!379 = !DILocation(line: 292, column: 1, scope: !86)
!380 = !DILocation(line: 293, column: 1, scope: !86)
!381 = !DILocation(line: 294, column: 1, scope: !86)
!382 = !DILocation(line: 295, column: 1, scope: !86)
!383 = !DILocation(line: 296, column: 1, scope: !86)
!384 = !DILocation(line: 297, column: 1, scope: !86)
!385 = !DILocation(line: 298, column: 1, scope: !86)
!386 = !DILocation(line: 299, column: 1, scope: !86)
!387 = !DILocation(line: 300, column: 1, scope: !86)
!388 = !DILocation(line: 301, column: 1, scope: !86)
!389 = !DILocation(line: 302, column: 1, scope: !86)
!390 = !DILocation(line: 303, column: 1, scope: !86)
!391 = !DILocation(line: 304, column: 1, scope: !86)
!392 = !DILocation(line: 305, column: 1, scope: !86)
!393 = !DILocation(line: 306, column: 1, scope: !86)
!394 = !DILocation(line: 307, column: 1, scope: !86)
!395 = !DILocation(line: 308, column: 1, scope: !86)
!396 = !DILocation(line: 309, column: 1, scope: !86)
!397 = !DILocation(line: 310, column: 1, scope: !86)
!398 = !DILocation(line: 311, column: 1, scope: !86)
!399 = !DILocation(line: 312, column: 1, scope: !86)
!400 = !DILocation(line: 313, column: 1, scope: !86)
!401 = !DILocation(line: 314, column: 1, scope: !86)
!402 = !DILocation(line: 315, column: 1, scope: !86)
!403 = !DILocation(line: 316, column: 1, scope: !86)
!404 = !DILocation(line: 317, column: 1, scope: !86)
!405 = !DILocation(line: 318, column: 1, scope: !86)
!406 = !DILocation(line: 319, column: 1, scope: !86)
!407 = !DILocation(line: 320, column: 1, scope: !86)
!408 = !DILocation(line: 321, column: 1, scope: !86)
!409 = !DILocation(line: 322, column: 1, scope: !86)
!410 = !DILocation(line: 323, column: 1, scope: !86)
!411 = !DILocation(line: 324, column: 1, scope: !86)
!412 = !DILocation(line: 325, column: 1, scope: !86)
!413 = !DILocation(line: 326, column: 1, scope: !86)
!414 = !DILocation(line: 327, column: 1, scope: !86)
!415 = !DILocation(line: 328, column: 1, scope: !86)
!416 = !DILocation(line: 329, column: 1, scope: !86)
!417 = !DILocation(line: 330, column: 1, scope: !86)
!418 = !DILocation(line: 331, column: 1, scope: !86)
!419 = !DILocation(line: 332, column: 1, scope: !86)
!420 = !DILocation(line: 333, column: 1, scope: !86)
!421 = !DILocation(line: 334, column: 1, scope: !86)
!422 = !DILocation(line: 335, column: 1, scope: !86)
!423 = !DILocation(line: 336, column: 1, scope: !86)
!424 = !DILocation(line: 337, column: 1, scope: !86)
!425 = !DILocation(line: 338, column: 1, scope: !86)
!426 = !DILocation(line: 339, column: 1, scope: !86)
!427 = !DILocation(line: 340, column: 1, scope: !86)
!428 = !DILocation(line: 341, column: 1, scope: !86)
!429 = !DILocation(line: 342, column: 1, scope: !86)
!430 = !DILocation(line: 343, column: 1, scope: !86)
!431 = !DILocation(line: 344, column: 1, scope: !86)
!432 = !DILocation(line: 345, column: 1, scope: !86)
!433 = !DILocation(line: 346, column: 1, scope: !86)
!434 = !DILocation(line: 347, column: 1, scope: !86)
!435 = !DILocation(line: 348, column: 1, scope: !86)
!436 = !DILocation(line: 349, column: 1, scope: !86)
!437 = !DILocation(line: 350, column: 1, scope: !86)
!438 = !DILocation(line: 351, column: 1, scope: !86)
!439 = !DILocation(line: 352, column: 1, scope: !86)
!440 = !DILocation(line: 353, column: 1, scope: !86)
!441 = !DILocation(line: 354, column: 1, scope: !86)
!442 = !DILocation(line: 355, column: 1, scope: !86)
!443 = !DILocation(line: 356, column: 1, scope: !86)
!444 = !DILocation(line: 357, column: 1, scope: !86)
!445 = !DILocation(line: 358, column: 1, scope: !86)
!446 = !DILocation(line: 359, column: 1, scope: !86)
!447 = !DILocation(line: 360, column: 1, scope: !86)
!448 = !DILocation(line: 361, column: 1, scope: !86)
!449 = !DILocation(line: 362, column: 1, scope: !86)
!450 = !DILocation(line: 363, column: 1, scope: !86)
!451 = !DILocation(line: 364, column: 1, scope: !86)
!452 = !DILocation(line: 365, column: 1, scope: !86)
!453 = !DILocation(line: 366, column: 1, scope: !86)
!454 = !DILocation(line: 367, column: 1, scope: !86)
!455 = !DILocation(line: 368, column: 1, scope: !86)
!456 = !DILocation(line: 369, column: 1, scope: !86)
!457 = !DILocation(line: 370, column: 1, scope: !86)
!458 = !DILocation(line: 371, column: 1, scope: !86)
!459 = !DILocation(line: 372, column: 1, scope: !86)
!460 = !DILocation(line: 373, column: 1, scope: !86)
!461 = !DILocation(line: 374, column: 1, scope: !86)
!462 = !DILocation(line: 375, column: 1, scope: !86)
!463 = !DILocation(line: 376, column: 1, scope: !86)
!464 = !DILocation(line: 377, column: 1, scope: !86)
!465 = !DILocation(line: 378, column: 1, scope: !86)
!466 = !DILocation(line: 379, column: 1, scope: !86)
!467 = !DILocation(line: 380, column: 1, scope: !86)
!468 = !DILocation(line: 381, column: 1, scope: !86)
!469 = !DILocation(line: 382, column: 1, scope: !86)
!470 = !DILocation(line: 383, column: 1, scope: !86)
!471 = !DILocation(line: 384, column: 1, scope: !86)
!472 = !DILocation(line: 385, column: 1, scope: !86)
!473 = !DILocation(line: 386, column: 1, scope: !86)
!474 = !DILocation(line: 387, column: 1, scope: !86)
!475 = !DILocation(line: 388, column: 1, scope: !86)
!476 = !DILocation(line: 389, column: 1, scope: !86)
!477 = !DILocation(line: 390, column: 1, scope: !86)
!478 = !DILocation(line: 391, column: 1, scope: !86)
!479 = !DILocation(line: 392, column: 1, scope: !86)
!480 = !DILocation(line: 393, column: 1, scope: !86)
!481 = !DILocation(line: 394, column: 1, scope: !86)
!482 = !DILocation(line: 395, column: 1, scope: !86)
!483 = !DILocation(line: 396, column: 1, scope: !86)
!484 = !DILocation(line: 397, column: 1, scope: !86)
!485 = !DILocation(line: 398, column: 1, scope: !86)
!486 = !DILocation(line: 399, column: 1, scope: !86)
!487 = !DILocation(line: 400, column: 1, scope: !86)
!488 = !DILocation(line: 401, column: 1, scope: !86)
!489 = !DILocation(line: 402, column: 1, scope: !86)
!490 = !DILocation(line: 403, column: 1, scope: !86)
!491 = !DILocation(line: 404, column: 1, scope: !86)
!492 = !DILocation(line: 405, column: 1, scope: !86)
!493 = !DILocation(line: 406, column: 1, scope: !86)
!494 = !DILocation(line: 407, column: 1, scope: !86)
!495 = !DILocation(line: 408, column: 1, scope: !86)
!496 = !DILocation(line: 409, column: 1, scope: !86)
!497 = !DILocation(line: 410, column: 1, scope: !86)
!498 = !DILocation(line: 411, column: 1, scope: !86)
!499 = !DILocation(line: 412, column: 1, scope: !86)
!500 = !DILocation(line: 413, column: 1, scope: !86)
!501 = !DILocation(line: 414, column: 1, scope: !86)
!502 = !DILocation(line: 415, column: 1, scope: !86)
!503 = !DILocation(line: 416, column: 1, scope: !86)
!504 = !DILocation(line: 417, column: 1, scope: !86)
!505 = !DILocation(line: 418, column: 1, scope: !86)
!506 = !DILocation(line: 419, column: 1, scope: !86)
!507 = !DILocation(line: 420, column: 1, scope: !86)
!508 = !DILocation(line: 421, column: 1, scope: !86)
!509 = !DILocation(line: 422, column: 1, scope: !86)
!510 = !DILocation(line: 423, column: 1, scope: !86)
!511 = !DILocation(line: 424, column: 1, scope: !86)
!512 = !DILocation(line: 425, column: 1, scope: !86)
!513 = !DILocation(line: 426, column: 1, scope: !86)
!514 = !DILocation(line: 427, column: 1, scope: !86)
!515 = !DILocation(line: 428, column: 1, scope: !86)
!516 = !DILocation(line: 429, column: 1, scope: !86)
!517 = !DILocation(line: 430, column: 1, scope: !86)
!518 = !DILocation(line: 431, column: 1, scope: !86)
!519 = !DILocation(line: 432, column: 1, scope: !86)
!520 = !DILocation(line: 433, column: 1, scope: !86)
!521 = !DILocation(line: 434, column: 1, scope: !86)
!522 = !DILocation(line: 435, column: 1, scope: !86)
!523 = !DILocation(line: 436, column: 1, scope: !86)
!524 = !DILocation(line: 437, column: 1, scope: !86)
!525 = !DILocation(line: 438, column: 1, scope: !86)
!526 = !DILocation(line: 439, column: 1, scope: !86)
!527 = !DILocation(line: 440, column: 1, scope: !86)
!528 = !DILocation(line: 441, column: 1, scope: !86)
!529 = !DILocation(line: 442, column: 1, scope: !86)
!530 = !DILocation(line: 443, column: 1, scope: !86)
!531 = !DILocation(line: 444, column: 1, scope: !86)
!532 = !DILocation(line: 445, column: 1, scope: !86)
!533 = !DILocation(line: 446, column: 1, scope: !86)
!534 = !DILocation(line: 447, column: 1, scope: !86)
!535 = !DILocation(line: 448, column: 1, scope: !86)
!536 = !DILocation(line: 449, column: 1, scope: !86)
!537 = !DILocation(line: 450, column: 1, scope: !86)
!538 = !DILocation(line: 451, column: 1, scope: !86)
!539 = !DILocation(line: 452, column: 1, scope: !86)
!540 = !DILocation(line: 453, column: 1, scope: !86)
!541 = !DILocation(line: 40, column: 40, scope: !542)
!542 = !DILexicalBlockFile(scope: !88, file: !1, discriminator: 0)
!543 = !DILocation(line: 40, column: 18, scope: !542)
!544 = !DILocation(line: 40, column: 11, scope: !542)
!545 = !DILocation(line: 42, column: 1, scope: !11)
!546 = !DISubprogram(name: "__ia32_sys_restart_syscall", scope: !87, file: !87, line: 1, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!547 = !DISubroutineType(types: !548)
!548 = !{!14, !15}
!549 = !DISubprogram(name: "__ia32_sys_exit", scope: !87, file: !87, line: 2, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!550 = !DISubprogram(name: "__ia32_sys_fork", scope: !87, file: !87, line: 3, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!551 = !DISubprogram(name: "__ia32_sys_read", scope: !87, file: !87, line: 4, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!552 = !DISubprogram(name: "__ia32_sys_write", scope: !87, file: !87, line: 5, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!553 = !DISubprogram(name: "__ia32_compat_sys_open", scope: !87, file: !87, line: 6, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!554 = !DISubprogram(name: "__ia32_sys_close", scope: !87, file: !87, line: 7, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!555 = !DISubprogram(name: "__ia32_sys_waitpid", scope: !87, file: !87, line: 8, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!556 = !DISubprogram(name: "__ia32_sys_creat", scope: !87, file: !87, line: 9, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!557 = !DISubprogram(name: "__ia32_sys_link", scope: !87, file: !87, line: 10, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!558 = !DISubprogram(name: "__ia32_sys_unlink", scope: !87, file: !87, line: 11, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!559 = !DISubprogram(name: "__ia32_compat_sys_execve", scope: !87, file: !87, line: 12, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!560 = !DISubprogram(name: "__ia32_sys_chdir", scope: !87, file: !87, line: 13, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!561 = !DISubprogram(name: "__ia32_sys_time32", scope: !87, file: !87, line: 14, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!562 = !DISubprogram(name: "__ia32_sys_mknod", scope: !87, file: !87, line: 15, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!563 = !DISubprogram(name: "__ia32_sys_chmod", scope: !87, file: !87, line: 16, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!564 = !DISubprogram(name: "__ia32_sys_lchown16", scope: !87, file: !87, line: 17, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!565 = !DISubprogram(name: "__ia32_sys_ni_syscall", scope: !87, file: !87, line: 416, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!566 = !DISubprogram(name: "__ia32_sys_stat", scope: !87, file: !87, line: 19, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!567 = !DISubprogram(name: "__ia32_compat_sys_lseek", scope: !87, file: !87, line: 20, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!568 = !DISubprogram(name: "__ia32_sys_getpid", scope: !87, file: !87, line: 21, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!569 = !DISubprogram(name: "__ia32_sys_mount", scope: !87, file: !87, line: 22, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!570 = !DISubprogram(name: "__ia32_sys_oldumount", scope: !87, file: !87, line: 23, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!571 = !DISubprogram(name: "__ia32_sys_setuid16", scope: !87, file: !87, line: 24, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!572 = !DISubprogram(name: "__ia32_sys_getuid16", scope: !87, file: !87, line: 25, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!573 = !DISubprogram(name: "__ia32_sys_stime32", scope: !87, file: !87, line: 26, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!574 = !DISubprogram(name: "__ia32_compat_sys_ptrace", scope: !87, file: !87, line: 27, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!575 = !DISubprogram(name: "__ia32_sys_alarm", scope: !87, file: !87, line: 28, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!576 = !DISubprogram(name: "__ia32_sys_fstat", scope: !87, file: !87, line: 29, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!577 = !DISubprogram(name: "__ia32_sys_pause", scope: !87, file: !87, line: 30, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!578 = !DISubprogram(name: "__ia32_sys_utime32", scope: !87, file: !87, line: 31, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!579 = !DISubprogram(name: "__ia32_sys_access", scope: !87, file: !87, line: 34, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!580 = !DISubprogram(name: "__ia32_sys_nice", scope: !87, file: !87, line: 35, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!581 = !DISubprogram(name: "__ia32_sys_sync", scope: !87, file: !87, line: 37, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!582 = !DISubprogram(name: "__ia32_sys_kill", scope: !87, file: !87, line: 38, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!583 = !DISubprogram(name: "__ia32_sys_rename", scope: !87, file: !87, line: 39, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!584 = !DISubprogram(name: "__ia32_sys_mkdir", scope: !87, file: !87, line: 40, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!585 = !DISubprogram(name: "__ia32_sys_rmdir", scope: !87, file: !87, line: 41, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!586 = !DISubprogram(name: "__ia32_sys_dup", scope: !87, file: !87, line: 42, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!587 = !DISubprogram(name: "__ia32_sys_pipe", scope: !87, file: !87, line: 43, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!588 = !DISubprogram(name: "__ia32_compat_sys_times", scope: !87, file: !87, line: 44, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!589 = !DISubprogram(name: "__ia32_sys_brk", scope: !87, file: !87, line: 46, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!590 = !DISubprogram(name: "__ia32_sys_setgid16", scope: !87, file: !87, line: 47, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!591 = !DISubprogram(name: "__ia32_sys_getgid16", scope: !87, file: !87, line: 48, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!592 = !DISubprogram(name: "__ia32_sys_signal", scope: !87, file: !87, line: 49, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!593 = !DISubprogram(name: "__ia32_sys_geteuid16", scope: !87, file: !87, line: 50, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!594 = !DISubprogram(name: "__ia32_sys_getegid16", scope: !87, file: !87, line: 51, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!595 = !DISubprogram(name: "__ia32_sys_acct", scope: !87, file: !87, line: 52, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!596 = !DISubprogram(name: "__ia32_sys_umount", scope: !87, file: !87, line: 53, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!597 = !DISubprogram(name: "__ia32_compat_sys_ioctl", scope: !87, file: !87, line: 55, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!598 = !DISubprogram(name: "__ia32_compat_sys_fcntl64", scope: !87, file: !87, line: 222, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!599 = !DISubprogram(name: "__ia32_sys_setpgid", scope: !87, file: !87, line: 58, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!600 = !DISubprogram(name: "__ia32_sys_olduname", scope: !87, file: !87, line: 60, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!601 = !DISubprogram(name: "__ia32_sys_umask", scope: !87, file: !87, line: 61, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!602 = !DISubprogram(name: "__ia32_sys_chroot", scope: !87, file: !87, line: 62, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!603 = !DISubprogram(name: "__ia32_compat_sys_ustat", scope: !87, file: !87, line: 63, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!604 = !DISubprogram(name: "__ia32_sys_dup2", scope: !87, file: !87, line: 64, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!605 = !DISubprogram(name: "__ia32_sys_getppid", scope: !87, file: !87, line: 65, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!606 = !DISubprogram(name: "__ia32_sys_getpgrp", scope: !87, file: !87, line: 66, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!607 = !DISubprogram(name: "__ia32_sys_setsid", scope: !87, file: !87, line: 67, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!608 = !DISubprogram(name: "__ia32_compat_sys_sigaction", scope: !87, file: !87, line: 68, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!609 = !DISubprogram(name: "__ia32_sys_sgetmask", scope: !87, file: !87, line: 69, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!610 = !DISubprogram(name: "__ia32_sys_ssetmask", scope: !87, file: !87, line: 70, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!611 = !DISubprogram(name: "__ia32_sys_setreuid16", scope: !87, file: !87, line: 71, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!612 = !DISubprogram(name: "__ia32_sys_setregid16", scope: !87, file: !87, line: 72, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!613 = !DISubprogram(name: "__ia32_sys_sigsuspend", scope: !87, file: !87, line: 73, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!614 = !DISubprogram(name: "__ia32_compat_sys_sigpending", scope: !87, file: !87, line: 74, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!615 = !DISubprogram(name: "__ia32_sys_sethostname", scope: !87, file: !87, line: 75, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!616 = !DISubprogram(name: "__ia32_compat_sys_setrlimit", scope: !87, file: !87, line: 76, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!617 = !DISubprogram(name: "__ia32_compat_sys_old_getrlimit", scope: !87, file: !87, line: 77, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!618 = !DISubprogram(name: "__ia32_compat_sys_getrusage", scope: !87, file: !87, line: 78, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!619 = !DISubprogram(name: "__ia32_compat_sys_gettimeofday", scope: !87, file: !87, line: 79, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!620 = !DISubprogram(name: "__ia32_compat_sys_settimeofday", scope: !87, file: !87, line: 80, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!621 = !DISubprogram(name: "__ia32_sys_getgroups16", scope: !87, file: !87, line: 81, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!622 = !DISubprogram(name: "__ia32_sys_setgroups16", scope: !87, file: !87, line: 82, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!623 = !DISubprogram(name: "__ia32_compat_sys_old_select", scope: !87, file: !87, line: 83, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!624 = !DISubprogram(name: "__ia32_sys_symlink", scope: !87, file: !87, line: 84, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!625 = !DISubprogram(name: "__ia32_sys_lstat", scope: !87, file: !87, line: 85, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!626 = !DISubprogram(name: "__ia32_sys_readlink", scope: !87, file: !87, line: 86, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!627 = !DISubprogram(name: "__ia32_sys_uselib", scope: !87, file: !87, line: 87, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!628 = !DISubprogram(name: "__ia32_sys_swapon", scope: !87, file: !87, line: 88, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!629 = !DISubprogram(name: "__ia32_sys_reboot", scope: !87, file: !87, line: 89, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!630 = !DISubprogram(name: "__ia32_compat_sys_old_readdir", scope: !87, file: !87, line: 90, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!631 = !DISubprogram(name: "__ia32_compat_sys_ia32_mmap", scope: !87, file: !87, line: 91, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!632 = !DISubprogram(name: "__ia32_sys_munmap", scope: !87, file: !87, line: 92, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!633 = !DISubprogram(name: "__ia32_compat_sys_truncate", scope: !87, file: !87, line: 93, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!634 = !DISubprogram(name: "__ia32_compat_sys_ftruncate", scope: !87, file: !87, line: 94, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!635 = !DISubprogram(name: "__ia32_sys_fchmod", scope: !87, file: !87, line: 95, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!636 = !DISubprogram(name: "__ia32_sys_fchown16", scope: !87, file: !87, line: 96, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!637 = !DISubprogram(name: "__ia32_sys_getpriority", scope: !87, file: !87, line: 97, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!638 = !DISubprogram(name: "__ia32_sys_setpriority", scope: !87, file: !87, line: 98, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!639 = !DISubprogram(name: "__ia32_compat_sys_statfs", scope: !87, file: !87, line: 100, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!640 = !DISubprogram(name: "__ia32_compat_sys_fstatfs", scope: !87, file: !87, line: 101, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!641 = !DISubprogram(name: "__ia32_sys_ioperm", scope: !87, file: !87, line: 102, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!642 = !DISubprogram(name: "__ia32_compat_sys_socketcall", scope: !87, file: !87, line: 103, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!643 = !DISubprogram(name: "__ia32_sys_syslog", scope: !87, file: !87, line: 104, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!644 = !DISubprogram(name: "__ia32_compat_sys_setitimer", scope: !87, file: !87, line: 105, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!645 = !DISubprogram(name: "__ia32_compat_sys_getitimer", scope: !87, file: !87, line: 106, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!646 = !DISubprogram(name: "__ia32_compat_sys_newstat", scope: !87, file: !87, line: 107, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!647 = !DISubprogram(name: "__ia32_compat_sys_newlstat", scope: !87, file: !87, line: 108, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!648 = !DISubprogram(name: "__ia32_compat_sys_newfstat", scope: !87, file: !87, line: 109, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!649 = !DISubprogram(name: "__ia32_sys_uname", scope: !87, file: !87, line: 110, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!650 = !DISubprogram(name: "__ia32_sys_iopl", scope: !87, file: !87, line: 111, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!651 = !DISubprogram(name: "__ia32_sys_vhangup", scope: !87, file: !87, line: 112, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!652 = !DISubprogram(name: "__ia32_compat_sys_wait4", scope: !87, file: !87, line: 115, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!653 = !DISubprogram(name: "__ia32_sys_swapoff", scope: !87, file: !87, line: 116, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!654 = !DISubprogram(name: "__ia32_compat_sys_sysinfo", scope: !87, file: !87, line: 117, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!655 = !DISubprogram(name: "__ia32_compat_sys_ipc", scope: !87, file: !87, line: 118, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!656 = !DISubprogram(name: "__ia32_sys_fsync", scope: !87, file: !87, line: 119, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!657 = !DISubprogram(name: "__ia32_compat_sys_sigreturn", scope: !87, file: !87, line: 120, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!658 = !DISubprogram(name: "__ia32_compat_sys_ia32_clone", scope: !87, file: !87, line: 121, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!659 = !DISubprogram(name: "__ia32_sys_setdomainname", scope: !87, file: !87, line: 122, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!660 = !DISubprogram(name: "__ia32_sys_newuname", scope: !87, file: !87, line: 123, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!661 = !DISubprogram(name: "__ia32_sys_modify_ldt", scope: !87, file: !87, line: 124, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!662 = !DISubprogram(name: "__ia32_sys_adjtimex_time32", scope: !87, file: !87, line: 125, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!663 = !DISubprogram(name: "__ia32_sys_mprotect", scope: !87, file: !87, line: 126, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!664 = !DISubprogram(name: "__ia32_compat_sys_sigprocmask", scope: !87, file: !87, line: 127, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!665 = !DISubprogram(name: "__ia32_sys_init_module", scope: !87, file: !87, line: 129, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!666 = !DISubprogram(name: "__ia32_sys_delete_module", scope: !87, file: !87, line: 130, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!667 = !DISubprogram(name: "__ia32_sys_quotactl", scope: !87, file: !87, line: 132, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!668 = !DISubprogram(name: "__ia32_sys_getpgid", scope: !87, file: !87, line: 133, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!669 = !DISubprogram(name: "__ia32_sys_fchdir", scope: !87, file: !87, line: 134, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!670 = !DISubprogram(name: "__ia32_sys_sysfs", scope: !87, file: !87, line: 136, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!671 = !DISubprogram(name: "__ia32_sys_personality", scope: !87, file: !87, line: 137, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!672 = !DISubprogram(name: "__ia32_sys_setfsuid16", scope: !87, file: !87, line: 139, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!673 = !DISubprogram(name: "__ia32_sys_setfsgid16", scope: !87, file: !87, line: 140, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!674 = !DISubprogram(name: "__ia32_sys_llseek", scope: !87, file: !87, line: 141, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!675 = !DISubprogram(name: "__ia32_compat_sys_getdents", scope: !87, file: !87, line: 142, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!676 = !DISubprogram(name: "__ia32_compat_sys_select", scope: !87, file: !87, line: 143, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!677 = !DISubprogram(name: "__ia32_sys_flock", scope: !87, file: !87, line: 144, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!678 = !DISubprogram(name: "__ia32_sys_msync", scope: !87, file: !87, line: 145, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!679 = !DISubprogram(name: "__ia32_sys_readv", scope: !87, file: !87, line: 146, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!680 = !DISubprogram(name: "__ia32_sys_writev", scope: !87, file: !87, line: 147, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!681 = !DISubprogram(name: "__ia32_sys_getsid", scope: !87, file: !87, line: 148, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!682 = !DISubprogram(name: "__ia32_sys_fdatasync", scope: !87, file: !87, line: 149, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!683 = !DISubprogram(name: "__ia32_sys_mlock", scope: !87, file: !87, line: 151, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!684 = !DISubprogram(name: "__ia32_sys_munlock", scope: !87, file: !87, line: 152, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!685 = !DISubprogram(name: "__ia32_sys_mlockall", scope: !87, file: !87, line: 153, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!686 = !DISubprogram(name: "__ia32_sys_munlockall", scope: !87, file: !87, line: 154, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!687 = !DISubprogram(name: "__ia32_sys_sched_setparam", scope: !87, file: !87, line: 155, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!688 = !DISubprogram(name: "__ia32_sys_sched_getparam", scope: !87, file: !87, line: 156, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!689 = !DISubprogram(name: "__ia32_sys_sched_setscheduler", scope: !87, file: !87, line: 157, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!690 = !DISubprogram(name: "__ia32_sys_sched_getscheduler", scope: !87, file: !87, line: 158, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!691 = !DISubprogram(name: "__ia32_sys_sched_yield", scope: !87, file: !87, line: 159, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!692 = !DISubprogram(name: "__ia32_sys_sched_get_priority_max", scope: !87, file: !87, line: 160, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!693 = !DISubprogram(name: "__ia32_sys_sched_get_priority_min", scope: !87, file: !87, line: 161, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!694 = !DISubprogram(name: "__ia32_sys_sched_rr_get_interval_time32", scope: !87, file: !87, line: 162, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!695 = !DISubprogram(name: "__ia32_sys_nanosleep_time32", scope: !87, file: !87, line: 163, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!696 = !DISubprogram(name: "__ia32_sys_mremap", scope: !87, file: !87, line: 164, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!697 = !DISubprogram(name: "__ia32_sys_setresuid16", scope: !87, file: !87, line: 165, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!698 = !DISubprogram(name: "__ia32_sys_getresuid16", scope: !87, file: !87, line: 166, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!699 = !DISubprogram(name: "__ia32_sys_poll", scope: !87, file: !87, line: 169, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!700 = !DISubprogram(name: "__ia32_sys_setresgid16", scope: !87, file: !87, line: 171, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!701 = !DISubprogram(name: "__ia32_sys_getresgid16", scope: !87, file: !87, line: 172, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!702 = !DISubprogram(name: "__ia32_sys_prctl", scope: !87, file: !87, line: 173, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!703 = !DISubprogram(name: "__ia32_compat_sys_rt_sigreturn", scope: !87, file: !87, line: 174, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!704 = !DISubprogram(name: "__ia32_compat_sys_rt_sigaction", scope: !87, file: !87, line: 175, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!705 = !DISubprogram(name: "__ia32_compat_sys_rt_sigprocmask", scope: !87, file: !87, line: 176, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!706 = !DISubprogram(name: "__ia32_compat_sys_rt_sigpending", scope: !87, file: !87, line: 177, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!707 = !DISubprogram(name: "__ia32_compat_sys_rt_sigtimedwait_time32", scope: !87, file: !87, line: 178, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!708 = !DISubprogram(name: "__ia32_compat_sys_rt_sigqueueinfo", scope: !87, file: !87, line: 179, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!709 = !DISubprogram(name: "__ia32_compat_sys_rt_sigsuspend", scope: !87, file: !87, line: 180, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!710 = !DISubprogram(name: "__ia32_sys_ia32_pread64", scope: !87, file: !87, line: 181, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!711 = !DISubprogram(name: "__ia32_sys_ia32_pwrite64", scope: !87, file: !87, line: 182, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!712 = !DISubprogram(name: "__ia32_sys_chown16", scope: !87, file: !87, line: 183, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!713 = !DISubprogram(name: "__ia32_sys_getcwd", scope: !87, file: !87, line: 184, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!714 = !DISubprogram(name: "__ia32_sys_capget", scope: !87, file: !87, line: 185, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!715 = !DISubprogram(name: "__ia32_sys_capset", scope: !87, file: !87, line: 186, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!716 = !DISubprogram(name: "__ia32_compat_sys_sigaltstack", scope: !87, file: !87, line: 187, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!717 = !DISubprogram(name: "__ia32_compat_sys_sendfile", scope: !87, file: !87, line: 188, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!718 = !DISubprogram(name: "__ia32_sys_vfork", scope: !87, file: !87, line: 191, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!719 = !DISubprogram(name: "__ia32_compat_sys_getrlimit", scope: !87, file: !87, line: 192, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!720 = !DISubprogram(name: "__ia32_sys_mmap_pgoff", scope: !87, file: !87, line: 193, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!721 = !DISubprogram(name: "__ia32_sys_ia32_truncate64", scope: !87, file: !87, line: 194, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!722 = !DISubprogram(name: "__ia32_sys_ia32_ftruncate64", scope: !87, file: !87, line: 195, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!723 = !DISubprogram(name: "__ia32_compat_sys_ia32_stat64", scope: !87, file: !87, line: 196, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!724 = !DISubprogram(name: "__ia32_compat_sys_ia32_lstat64", scope: !87, file: !87, line: 197, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!725 = !DISubprogram(name: "__ia32_compat_sys_ia32_fstat64", scope: !87, file: !87, line: 198, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!726 = !DISubprogram(name: "__ia32_sys_lchown", scope: !87, file: !87, line: 199, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!727 = !DISubprogram(name: "__ia32_sys_getuid", scope: !87, file: !87, line: 200, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!728 = !DISubprogram(name: "__ia32_sys_getgid", scope: !87, file: !87, line: 201, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!729 = !DISubprogram(name: "__ia32_sys_geteuid", scope: !87, file: !87, line: 202, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!730 = !DISubprogram(name: "__ia32_sys_getegid", scope: !87, file: !87, line: 203, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!731 = !DISubprogram(name: "__ia32_sys_setreuid", scope: !87, file: !87, line: 204, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!732 = !DISubprogram(name: "__ia32_sys_setregid", scope: !87, file: !87, line: 205, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!733 = !DISubprogram(name: "__ia32_sys_getgroups", scope: !87, file: !87, line: 206, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!734 = !DISubprogram(name: "__ia32_sys_setgroups", scope: !87, file: !87, line: 207, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!735 = !DISubprogram(name: "__ia32_sys_fchown", scope: !87, file: !87, line: 208, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!736 = !DISubprogram(name: "__ia32_sys_setresuid", scope: !87, file: !87, line: 209, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!737 = !DISubprogram(name: "__ia32_sys_getresuid", scope: !87, file: !87, line: 210, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!738 = !DISubprogram(name: "__ia32_sys_setresgid", scope: !87, file: !87, line: 211, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!739 = !DISubprogram(name: "__ia32_sys_getresgid", scope: !87, file: !87, line: 212, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!740 = !DISubprogram(name: "__ia32_sys_chown", scope: !87, file: !87, line: 213, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!741 = !DISubprogram(name: "__ia32_sys_setuid", scope: !87, file: !87, line: 214, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!742 = !DISubprogram(name: "__ia32_sys_setgid", scope: !87, file: !87, line: 215, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!743 = !DISubprogram(name: "__ia32_sys_setfsuid", scope: !87, file: !87, line: 216, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!744 = !DISubprogram(name: "__ia32_sys_setfsgid", scope: !87, file: !87, line: 217, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!745 = !DISubprogram(name: "__ia32_sys_pivot_root", scope: !87, file: !87, line: 218, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!746 = !DISubprogram(name: "__ia32_sys_mincore", scope: !87, file: !87, line: 219, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!747 = !DISubprogram(name: "__ia32_sys_madvise", scope: !87, file: !87, line: 220, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!748 = !DISubprogram(name: "__ia32_sys_getdents64", scope: !87, file: !87, line: 221, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!749 = !DISubprogram(name: "__ia32_sys_gettid", scope: !87, file: !87, line: 225, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!750 = !DISubprogram(name: "__ia32_sys_ia32_readahead", scope: !87, file: !87, line: 226, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!751 = !DISubprogram(name: "__ia32_sys_setxattr", scope: !87, file: !87, line: 227, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!752 = !DISubprogram(name: "__ia32_sys_lsetxattr", scope: !87, file: !87, line: 228, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!753 = !DISubprogram(name: "__ia32_sys_fsetxattr", scope: !87, file: !87, line: 229, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!754 = !DISubprogram(name: "__ia32_sys_getxattr", scope: !87, file: !87, line: 230, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!755 = !DISubprogram(name: "__ia32_sys_lgetxattr", scope: !87, file: !87, line: 231, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!756 = !DISubprogram(name: "__ia32_sys_fgetxattr", scope: !87, file: !87, line: 232, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!757 = !DISubprogram(name: "__ia32_sys_listxattr", scope: !87, file: !87, line: 233, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!758 = !DISubprogram(name: "__ia32_sys_llistxattr", scope: !87, file: !87, line: 234, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!759 = !DISubprogram(name: "__ia32_sys_flistxattr", scope: !87, file: !87, line: 235, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!760 = !DISubprogram(name: "__ia32_sys_removexattr", scope: !87, file: !87, line: 236, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!761 = !DISubprogram(name: "__ia32_sys_lremovexattr", scope: !87, file: !87, line: 237, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!762 = !DISubprogram(name: "__ia32_sys_fremovexattr", scope: !87, file: !87, line: 238, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!763 = !DISubprogram(name: "__ia32_sys_tkill", scope: !87, file: !87, line: 239, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!764 = !DISubprogram(name: "__ia32_sys_sendfile64", scope: !87, file: !87, line: 240, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!765 = !DISubprogram(name: "__ia32_sys_futex_time32", scope: !87, file: !87, line: 241, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!766 = !DISubprogram(name: "__ia32_compat_sys_sched_setaffinity", scope: !87, file: !87, line: 242, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!767 = !DISubprogram(name: "__ia32_compat_sys_sched_getaffinity", scope: !87, file: !87, line: 243, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!768 = !DISubprogram(name: "__ia32_sys_set_thread_area", scope: !87, file: !87, line: 244, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!769 = !DISubprogram(name: "__ia32_sys_get_thread_area", scope: !87, file: !87, line: 245, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!770 = !DISubprogram(name: "__ia32_compat_sys_io_setup", scope: !87, file: !87, line: 246, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!771 = !DISubprogram(name: "__ia32_sys_io_destroy", scope: !87, file: !87, line: 247, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!772 = !DISubprogram(name: "__ia32_sys_io_getevents_time32", scope: !87, file: !87, line: 248, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!773 = !DISubprogram(name: "__ia32_compat_sys_io_submit", scope: !87, file: !87, line: 249, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!774 = !DISubprogram(name: "__ia32_sys_io_cancel", scope: !87, file: !87, line: 250, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!775 = !DISubprogram(name: "__ia32_sys_ia32_fadvise64", scope: !87, file: !87, line: 251, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!776 = !DISubprogram(name: "__ia32_sys_exit_group", scope: !87, file: !87, line: 253, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!777 = !DISubprogram(name: "__ia32_compat_sys_lookup_dcookie", scope: !87, file: !87, line: 254, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!778 = !DISubprogram(name: "__ia32_sys_epoll_create", scope: !87, file: !87, line: 255, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!779 = !DISubprogram(name: "__ia32_sys_epoll_ctl", scope: !87, file: !87, line: 256, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!780 = !DISubprogram(name: "__ia32_sys_epoll_wait", scope: !87, file: !87, line: 257, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!781 = !DISubprogram(name: "__ia32_sys_remap_file_pages", scope: !87, file: !87, line: 258, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!782 = !DISubprogram(name: "__ia32_sys_set_tid_address", scope: !87, file: !87, line: 259, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!783 = !DISubprogram(name: "__ia32_compat_sys_timer_create", scope: !87, file: !87, line: 260, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!784 = !DISubprogram(name: "__ia32_sys_timer_settime32", scope: !87, file: !87, line: 261, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!785 = !DISubprogram(name: "__ia32_sys_timer_gettime32", scope: !87, file: !87, line: 262, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!786 = !DISubprogram(name: "__ia32_sys_timer_getoverrun", scope: !87, file: !87, line: 263, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!787 = !DISubprogram(name: "__ia32_sys_timer_delete", scope: !87, file: !87, line: 264, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!788 = !DISubprogram(name: "__ia32_sys_clock_settime32", scope: !87, file: !87, line: 265, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!789 = !DISubprogram(name: "__ia32_sys_clock_gettime32", scope: !87, file: !87, line: 266, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!790 = !DISubprogram(name: "__ia32_sys_clock_getres_time32", scope: !87, file: !87, line: 267, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!791 = !DISubprogram(name: "__ia32_sys_clock_nanosleep_time32", scope: !87, file: !87, line: 268, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!792 = !DISubprogram(name: "__ia32_compat_sys_statfs64", scope: !87, file: !87, line: 269, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!793 = !DISubprogram(name: "__ia32_compat_sys_fstatfs64", scope: !87, file: !87, line: 270, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!794 = !DISubprogram(name: "__ia32_sys_tgkill", scope: !87, file: !87, line: 271, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!795 = !DISubprogram(name: "__ia32_sys_utimes_time32", scope: !87, file: !87, line: 272, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!796 = !DISubprogram(name: "__ia32_sys_ia32_fadvise64_64", scope: !87, file: !87, line: 273, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!797 = !DISubprogram(name: "__ia32_sys_mbind", scope: !87, file: !87, line: 275, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!798 = !DISubprogram(name: "__ia32_sys_get_mempolicy", scope: !87, file: !87, line: 276, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!799 = !DISubprogram(name: "__ia32_sys_set_mempolicy", scope: !87, file: !87, line: 277, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!800 = !DISubprogram(name: "__ia32_compat_sys_mq_open", scope: !87, file: !87, line: 278, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!801 = !DISubprogram(name: "__ia32_sys_mq_unlink", scope: !87, file: !87, line: 279, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!802 = !DISubprogram(name: "__ia32_sys_mq_timedsend_time32", scope: !87, file: !87, line: 280, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!803 = !DISubprogram(name: "__ia32_sys_mq_timedreceive_time32", scope: !87, file: !87, line: 281, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!804 = !DISubprogram(name: "__ia32_compat_sys_mq_notify", scope: !87, file: !87, line: 282, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!805 = !DISubprogram(name: "__ia32_compat_sys_mq_getsetattr", scope: !87, file: !87, line: 283, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!806 = !DISubprogram(name: "__ia32_compat_sys_kexec_load", scope: !87, file: !87, line: 284, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!807 = !DISubprogram(name: "__ia32_compat_sys_waitid", scope: !87, file: !87, line: 285, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!808 = !DISubprogram(name: "__ia32_sys_add_key", scope: !87, file: !87, line: 287, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!809 = !DISubprogram(name: "__ia32_sys_request_key", scope: !87, file: !87, line: 288, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!810 = !DISubprogram(name: "__ia32_compat_sys_keyctl", scope: !87, file: !87, line: 289, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!811 = !DISubprogram(name: "__ia32_sys_ioprio_set", scope: !87, file: !87, line: 290, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!812 = !DISubprogram(name: "__ia32_sys_ioprio_get", scope: !87, file: !87, line: 291, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!813 = !DISubprogram(name: "__ia32_sys_inotify_init", scope: !87, file: !87, line: 292, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!814 = !DISubprogram(name: "__ia32_sys_inotify_add_watch", scope: !87, file: !87, line: 293, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!815 = !DISubprogram(name: "__ia32_sys_inotify_rm_watch", scope: !87, file: !87, line: 294, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!816 = !DISubprogram(name: "__ia32_sys_migrate_pages", scope: !87, file: !87, line: 295, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!817 = !DISubprogram(name: "__ia32_compat_sys_openat", scope: !87, file: !87, line: 296, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!818 = !DISubprogram(name: "__ia32_sys_mkdirat", scope: !87, file: !87, line: 297, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!819 = !DISubprogram(name: "__ia32_sys_mknodat", scope: !87, file: !87, line: 298, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!820 = !DISubprogram(name: "__ia32_sys_fchownat", scope: !87, file: !87, line: 299, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!821 = !DISubprogram(name: "__ia32_sys_futimesat_time32", scope: !87, file: !87, line: 300, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!822 = !DISubprogram(name: "__ia32_compat_sys_ia32_fstatat64", scope: !87, file: !87, line: 301, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!823 = !DISubprogram(name: "__ia32_sys_unlinkat", scope: !87, file: !87, line: 302, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!824 = !DISubprogram(name: "__ia32_sys_renameat", scope: !87, file: !87, line: 303, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!825 = !DISubprogram(name: "__ia32_sys_linkat", scope: !87, file: !87, line: 304, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!826 = !DISubprogram(name: "__ia32_sys_symlinkat", scope: !87, file: !87, line: 305, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!827 = !DISubprogram(name: "__ia32_sys_readlinkat", scope: !87, file: !87, line: 306, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!828 = !DISubprogram(name: "__ia32_sys_fchmodat", scope: !87, file: !87, line: 307, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!829 = !DISubprogram(name: "__ia32_sys_faccessat", scope: !87, file: !87, line: 308, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!830 = !DISubprogram(name: "__ia32_compat_sys_pselect6_time32", scope: !87, file: !87, line: 309, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!831 = !DISubprogram(name: "__ia32_compat_sys_ppoll_time32", scope: !87, file: !87, line: 310, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!832 = !DISubprogram(name: "__ia32_sys_unshare", scope: !87, file: !87, line: 311, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!833 = !DISubprogram(name: "__ia32_compat_sys_set_robust_list", scope: !87, file: !87, line: 312, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!834 = !DISubprogram(name: "__ia32_compat_sys_get_robust_list", scope: !87, file: !87, line: 313, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!835 = !DISubprogram(name: "__ia32_sys_splice", scope: !87, file: !87, line: 314, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!836 = !DISubprogram(name: "__ia32_sys_ia32_sync_file_range", scope: !87, file: !87, line: 315, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!837 = !DISubprogram(name: "__ia32_sys_tee", scope: !87, file: !87, line: 316, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!838 = !DISubprogram(name: "__ia32_sys_vmsplice", scope: !87, file: !87, line: 317, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!839 = !DISubprogram(name: "__ia32_sys_move_pages", scope: !87, file: !87, line: 318, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!840 = !DISubprogram(name: "__ia32_sys_getcpu", scope: !87, file: !87, line: 319, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!841 = !DISubprogram(name: "__ia32_sys_epoll_pwait", scope: !87, file: !87, line: 320, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!842 = !DISubprogram(name: "__ia32_sys_utimensat_time32", scope: !87, file: !87, line: 321, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!843 = !DISubprogram(name: "__ia32_compat_sys_signalfd", scope: !87, file: !87, line: 322, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!844 = !DISubprogram(name: "__ia32_sys_timerfd_create", scope: !87, file: !87, line: 323, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!845 = !DISubprogram(name: "__ia32_sys_eventfd", scope: !87, file: !87, line: 324, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!846 = !DISubprogram(name: "__ia32_sys_ia32_fallocate", scope: !87, file: !87, line: 325, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!847 = !DISubprogram(name: "__ia32_sys_timerfd_settime32", scope: !87, file: !87, line: 326, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!848 = !DISubprogram(name: "__ia32_sys_timerfd_gettime32", scope: !87, file: !87, line: 327, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!849 = !DISubprogram(name: "__ia32_compat_sys_signalfd4", scope: !87, file: !87, line: 328, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!850 = !DISubprogram(name: "__ia32_sys_eventfd2", scope: !87, file: !87, line: 329, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!851 = !DISubprogram(name: "__ia32_sys_epoll_create1", scope: !87, file: !87, line: 330, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!852 = !DISubprogram(name: "__ia32_sys_dup3", scope: !87, file: !87, line: 331, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!853 = !DISubprogram(name: "__ia32_sys_pipe2", scope: !87, file: !87, line: 332, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!854 = !DISubprogram(name: "__ia32_sys_inotify_init1", scope: !87, file: !87, line: 333, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!855 = !DISubprogram(name: "__ia32_compat_sys_preadv", scope: !87, file: !87, line: 334, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!856 = !DISubprogram(name: "__ia32_compat_sys_pwritev", scope: !87, file: !87, line: 335, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!857 = !DISubprogram(name: "__ia32_compat_sys_rt_tgsigqueueinfo", scope: !87, file: !87, line: 336, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!858 = !DISubprogram(name: "__ia32_sys_perf_event_open", scope: !87, file: !87, line: 337, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!859 = !DISubprogram(name: "__ia32_compat_sys_recvmmsg_time32", scope: !87, file: !87, line: 338, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!860 = !DISubprogram(name: "__ia32_sys_fanotify_init", scope: !87, file: !87, line: 339, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!861 = !DISubprogram(name: "__ia32_compat_sys_fanotify_mark", scope: !87, file: !87, line: 340, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!862 = !DISubprogram(name: "__ia32_sys_prlimit64", scope: !87, file: !87, line: 341, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!863 = !DISubprogram(name: "__ia32_sys_name_to_handle_at", scope: !87, file: !87, line: 342, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!864 = !DISubprogram(name: "__ia32_compat_sys_open_by_handle_at", scope: !87, file: !87, line: 343, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!865 = !DISubprogram(name: "__ia32_sys_clock_adjtime32", scope: !87, file: !87, line: 344, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!866 = !DISubprogram(name: "__ia32_sys_syncfs", scope: !87, file: !87, line: 345, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!867 = !DISubprogram(name: "__ia32_compat_sys_sendmmsg", scope: !87, file: !87, line: 346, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!868 = !DISubprogram(name: "__ia32_sys_setns", scope: !87, file: !87, line: 347, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!869 = !DISubprogram(name: "__ia32_sys_process_vm_readv", scope: !87, file: !87, line: 348, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!870 = !DISubprogram(name: "__ia32_sys_process_vm_writev", scope: !87, file: !87, line: 349, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!871 = !DISubprogram(name: "__ia32_sys_kcmp", scope: !87, file: !87, line: 350, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!872 = !DISubprogram(name: "__ia32_sys_finit_module", scope: !87, file: !87, line: 351, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!873 = !DISubprogram(name: "__ia32_sys_sched_setattr", scope: !87, file: !87, line: 352, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!874 = !DISubprogram(name: "__ia32_sys_sched_getattr", scope: !87, file: !87, line: 353, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!875 = !DISubprogram(name: "__ia32_sys_renameat2", scope: !87, file: !87, line: 354, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!876 = !DISubprogram(name: "__ia32_sys_seccomp", scope: !87, file: !87, line: 355, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!877 = !DISubprogram(name: "__ia32_sys_getrandom", scope: !87, file: !87, line: 356, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!878 = !DISubprogram(name: "__ia32_sys_memfd_create", scope: !87, file: !87, line: 357, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!879 = !DISubprogram(name: "__ia32_sys_bpf", scope: !87, file: !87, line: 358, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!880 = !DISubprogram(name: "__ia32_compat_sys_execveat", scope: !87, file: !87, line: 359, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!881 = !DISubprogram(name: "__ia32_sys_socket", scope: !87, file: !87, line: 360, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!882 = !DISubprogram(name: "__ia32_sys_socketpair", scope: !87, file: !87, line: 361, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!883 = !DISubprogram(name: "__ia32_sys_bind", scope: !87, file: !87, line: 362, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!884 = !DISubprogram(name: "__ia32_sys_connect", scope: !87, file: !87, line: 363, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!885 = !DISubprogram(name: "__ia32_sys_listen", scope: !87, file: !87, line: 364, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!886 = !DISubprogram(name: "__ia32_sys_accept4", scope: !87, file: !87, line: 365, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!887 = !DISubprogram(name: "__ia32_sys_getsockopt", scope: !87, file: !87, line: 366, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!888 = !DISubprogram(name: "__ia32_sys_setsockopt", scope: !87, file: !87, line: 367, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!889 = !DISubprogram(name: "__ia32_sys_getsockname", scope: !87, file: !87, line: 368, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!890 = !DISubprogram(name: "__ia32_sys_getpeername", scope: !87, file: !87, line: 369, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!891 = !DISubprogram(name: "__ia32_sys_sendto", scope: !87, file: !87, line: 370, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!892 = !DISubprogram(name: "__ia32_compat_sys_sendmsg", scope: !87, file: !87, line: 371, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!893 = !DISubprogram(name: "__ia32_compat_sys_recvfrom", scope: !87, file: !87, line: 372, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!894 = !DISubprogram(name: "__ia32_compat_sys_recvmsg", scope: !87, file: !87, line: 373, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!895 = !DISubprogram(name: "__ia32_sys_shutdown", scope: !87, file: !87, line: 374, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!896 = !DISubprogram(name: "__ia32_sys_userfaultfd", scope: !87, file: !87, line: 375, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!897 = !DISubprogram(name: "__ia32_sys_membarrier", scope: !87, file: !87, line: 376, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!898 = !DISubprogram(name: "__ia32_sys_mlock2", scope: !87, file: !87, line: 377, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!899 = !DISubprogram(name: "__ia32_sys_copy_file_range", scope: !87, file: !87, line: 378, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!900 = !DISubprogram(name: "__ia32_compat_sys_preadv2", scope: !87, file: !87, line: 379, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!901 = !DISubprogram(name: "__ia32_compat_sys_pwritev2", scope: !87, file: !87, line: 380, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!902 = !DISubprogram(name: "__ia32_sys_pkey_mprotect", scope: !87, file: !87, line: 381, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!903 = !DISubprogram(name: "__ia32_sys_pkey_alloc", scope: !87, file: !87, line: 382, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!904 = !DISubprogram(name: "__ia32_sys_pkey_free", scope: !87, file: !87, line: 383, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!905 = !DISubprogram(name: "__ia32_sys_statx", scope: !87, file: !87, line: 384, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!906 = !DISubprogram(name: "__ia32_compat_sys_arch_prctl", scope: !87, file: !87, line: 385, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!907 = !DISubprogram(name: "__ia32_compat_sys_io_pgetevents", scope: !87, file: !87, line: 386, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!908 = !DISubprogram(name: "__ia32_sys_rseq", scope: !87, file: !87, line: 387, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!909 = !DISubprogram(name: "__ia32_sys_semget", scope: !87, file: !87, line: 394, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!910 = !DISubprogram(name: "__ia32_compat_sys_semctl", scope: !87, file: !87, line: 395, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!911 = !DISubprogram(name: "__ia32_sys_shmget", scope: !87, file: !87, line: 396, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!912 = !DISubprogram(name: "__ia32_compat_sys_shmctl", scope: !87, file: !87, line: 397, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!913 = !DISubprogram(name: "__ia32_compat_sys_shmat", scope: !87, file: !87, line: 398, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!914 = !DISubprogram(name: "__ia32_sys_shmdt", scope: !87, file: !87, line: 399, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!915 = !DISubprogram(name: "__ia32_sys_msgget", scope: !87, file: !87, line: 400, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!916 = !DISubprogram(name: "__ia32_compat_sys_msgsnd", scope: !87, file: !87, line: 401, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!917 = !DISubprogram(name: "__ia32_compat_sys_msgrcv", scope: !87, file: !87, line: 402, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!918 = !DISubprogram(name: "__ia32_compat_sys_msgctl", scope: !87, file: !87, line: 403, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!919 = !DISubprogram(name: "__ia32_sys_clock_gettime", scope: !87, file: !87, line: 404, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!920 = !DISubprogram(name: "__ia32_sys_clock_settime", scope: !87, file: !87, line: 405, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!921 = !DISubprogram(name: "__ia32_sys_clock_adjtime", scope: !87, file: !87, line: 406, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!922 = !DISubprogram(name: "__ia32_sys_clock_getres", scope: !87, file: !87, line: 407, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!923 = !DISubprogram(name: "__ia32_sys_clock_nanosleep", scope: !87, file: !87, line: 408, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!924 = !DISubprogram(name: "__ia32_sys_timer_gettime", scope: !87, file: !87, line: 409, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!925 = !DISubprogram(name: "__ia32_sys_timer_settime", scope: !87, file: !87, line: 410, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!926 = !DISubprogram(name: "__ia32_sys_timerfd_gettime", scope: !87, file: !87, line: 411, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!927 = !DISubprogram(name: "__ia32_sys_timerfd_settime", scope: !87, file: !87, line: 412, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!928 = !DISubprogram(name: "__ia32_sys_utimensat", scope: !87, file: !87, line: 413, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!929 = !DISubprogram(name: "__ia32_compat_sys_pselect6_time64", scope: !87, file: !87, line: 414, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!930 = !DISubprogram(name: "__ia32_compat_sys_ppoll_time64", scope: !87, file: !87, line: 415, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!931 = !DISubprogram(name: "__ia32_compat_sys_io_pgetevents_time64", scope: !87, file: !87, line: 417, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!932 = !DISubprogram(name: "__ia32_compat_sys_recvmmsg_time64", scope: !87, file: !87, line: 418, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!933 = !DISubprogram(name: "__ia32_sys_mq_timedsend", scope: !87, file: !87, line: 419, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!934 = !DISubprogram(name: "__ia32_sys_mq_timedreceive", scope: !87, file: !87, line: 420, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!935 = !DISubprogram(name: "__ia32_sys_semtimedop", scope: !87, file: !87, line: 421, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!936 = !DISubprogram(name: "__ia32_compat_sys_rt_sigtimedwait_time64", scope: !87, file: !87, line: 422, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!937 = !DISubprogram(name: "__ia32_sys_futex", scope: !87, file: !87, line: 423, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!938 = !DISubprogram(name: "__ia32_sys_sched_rr_get_interval", scope: !87, file: !87, line: 424, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!939 = !DISubprogram(name: "__ia32_sys_pidfd_send_signal", scope: !87, file: !87, line: 425, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!940 = !DISubprogram(name: "__ia32_sys_io_uring_setup", scope: !87, file: !87, line: 426, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!941 = !DISubprogram(name: "__ia32_sys_io_uring_enter", scope: !87, file: !87, line: 427, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!942 = !DISubprogram(name: "__ia32_sys_io_uring_register", scope: !87, file: !87, line: 428, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!943 = !DISubprogram(name: "__ia32_sys_open_tree", scope: !87, file: !87, line: 429, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!944 = !DISubprogram(name: "__ia32_sys_move_mount", scope: !87, file: !87, line: 430, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!945 = !DISubprogram(name: "__ia32_sys_fsopen", scope: !87, file: !87, line: 431, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!946 = !DISubprogram(name: "__ia32_sys_fsconfig", scope: !87, file: !87, line: 432, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!947 = !DISubprogram(name: "__ia32_sys_fsmount", scope: !87, file: !87, line: 433, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!948 = !DISubprogram(name: "__ia32_sys_fspick", scope: !87, file: !87, line: 434, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!949 = !DISubprogram(name: "__ia32_sys_pidfd_open", scope: !87, file: !87, line: 435, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!950 = !DISubprogram(name: "__ia32_sys_clone3", scope: !87, file: !87, line: 436, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!951 = !DISubprogram(name: "__ia32_sys_close_range", scope: !87, file: !87, line: 437, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!952 = !DISubprogram(name: "__ia32_sys_openat2", scope: !87, file: !87, line: 438, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!953 = !DISubprogram(name: "__ia32_sys_pidfd_getfd", scope: !87, file: !87, line: 439, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!954 = !DISubprogram(name: "__ia32_sys_faccessat2", scope: !87, file: !87, line: 440, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!955 = !DISubprogram(name: "__ia32_sys_process_madvise", scope: !87, file: !87, line: 441, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!956 = !DISubprogram(name: "__ia32_compat_sys_epoll_pwait2", scope: !87, file: !87, line: 442, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!957 = !DISubprogram(name: "__ia32_sys_mount_setattr", scope: !87, file: !87, line: 443, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!958 = !DISubprogram(name: "__ia32_sys_quotactl_fd", scope: !87, file: !87, line: 444, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!959 = !DISubprogram(name: "__ia32_sys_landlock_create_ruleset", scope: !87, file: !87, line: 445, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!960 = !DISubprogram(name: "__ia32_sys_landlock_add_rule", scope: !87, file: !87, line: 446, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!961 = !DISubprogram(name: "__ia32_sys_landlock_restrict_self", scope: !87, file: !87, line: 447, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!962 = !DISubprogram(name: "__ia32_sys_memfd_secret", scope: !87, file: !87, line: 448, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!963 = !DISubprogram(name: "__ia32_sys_process_mrelease", scope: !87, file: !87, line: 449, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!964 = !DISubprogram(name: "__ia32_sys_futex_waitv", scope: !87, file: !87, line: 450, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!965 = !DISubprogram(name: "__ia32_sys_set_mempolicy_home_node", scope: !87, file: !87, line: 451, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!966 = !DISubprogram(name: "__ia32_sys_cachestat", scope: !87, file: !87, line: 452, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!967 = !DISubprogram(name: "__ia32_sys_fchmodat2", scope: !87, file: !87, line: 453, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
