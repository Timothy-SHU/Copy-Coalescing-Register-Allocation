; ModuleID = 'blender/extern/wcwidth/wcwidth.c'
source_filename = "blender/extern/wcwidth/wcwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.interval = type { i32, i32 }

@mk_wcwidth.combining = internal constant [142 x %struct.interval] [%struct.interval { i32 768, i32 879 }, %struct.interval { i32 1155, i32 1158 }, %struct.interval { i32 1160, i32 1161 }, %struct.interval { i32 1425, i32 1469 }, %struct.interval { i32 1471, i32 1471 }, %struct.interval { i32 1473, i32 1474 }, %struct.interval { i32 1476, i32 1477 }, %struct.interval { i32 1479, i32 1479 }, %struct.interval { i32 1536, i32 1539 }, %struct.interval { i32 1552, i32 1557 }, %struct.interval { i32 1611, i32 1630 }, %struct.interval { i32 1648, i32 1648 }, %struct.interval { i32 1750, i32 1764 }, %struct.interval { i32 1767, i32 1768 }, %struct.interval { i32 1770, i32 1773 }, %struct.interval { i32 1807, i32 1807 }, %struct.interval { i32 1809, i32 1809 }, %struct.interval { i32 1840, i32 1866 }, %struct.interval { i32 1958, i32 1968 }, %struct.interval { i32 2027, i32 2035 }, %struct.interval { i32 2305, i32 2306 }, %struct.interval { i32 2364, i32 2364 }, %struct.interval { i32 2369, i32 2376 }, %struct.interval { i32 2381, i32 2381 }, %struct.interval { i32 2385, i32 2388 }, %struct.interval { i32 2402, i32 2403 }, %struct.interval { i32 2433, i32 2433 }, %struct.interval { i32 2492, i32 2492 }, %struct.interval { i32 2497, i32 2500 }, %struct.interval { i32 2509, i32 2509 }, %struct.interval { i32 2530, i32 2531 }, %struct.interval { i32 2561, i32 2562 }, %struct.interval { i32 2620, i32 2620 }, %struct.interval { i32 2625, i32 2626 }, %struct.interval { i32 2631, i32 2632 }, %struct.interval { i32 2635, i32 2637 }, %struct.interval { i32 2672, i32 2673 }, %struct.interval { i32 2689, i32 2690 }, %struct.interval { i32 2748, i32 2748 }, %struct.interval { i32 2753, i32 2757 }, %struct.interval { i32 2759, i32 2760 }, %struct.interval { i32 2765, i32 2765 }, %struct.interval { i32 2786, i32 2787 }, %struct.interval { i32 2817, i32 2817 }, %struct.interval { i32 2876, i32 2876 }, %struct.interval { i32 2879, i32 2879 }, %struct.interval { i32 2881, i32 2883 }, %struct.interval { i32 2893, i32 2893 }, %struct.interval { i32 2902, i32 2902 }, %struct.interval { i32 2946, i32 2946 }, %struct.interval { i32 3008, i32 3008 }, %struct.interval { i32 3021, i32 3021 }, %struct.interval { i32 3134, i32 3136 }, %struct.interval { i32 3142, i32 3144 }, %struct.interval { i32 3146, i32 3149 }, %struct.interval { i32 3157, i32 3158 }, %struct.interval { i32 3260, i32 3260 }, %struct.interval { i32 3263, i32 3263 }, %struct.interval { i32 3270, i32 3270 }, %struct.interval { i32 3276, i32 3277 }, %struct.interval { i32 3298, i32 3299 }, %struct.interval { i32 3393, i32 3395 }, %struct.interval { i32 3405, i32 3405 }, %struct.interval { i32 3530, i32 3530 }, %struct.interval { i32 3538, i32 3540 }, %struct.interval { i32 3542, i32 3542 }, %struct.interval { i32 3633, i32 3633 }, %struct.interval { i32 3636, i32 3642 }, %struct.interval { i32 3655, i32 3662 }, %struct.interval { i32 3761, i32 3761 }, %struct.interval { i32 3764, i32 3769 }, %struct.interval { i32 3771, i32 3772 }, %struct.interval { i32 3784, i32 3789 }, %struct.interval { i32 3864, i32 3865 }, %struct.interval { i32 3893, i32 3893 }, %struct.interval { i32 3895, i32 3895 }, %struct.interval { i32 3897, i32 3897 }, %struct.interval { i32 3953, i32 3966 }, %struct.interval { i32 3968, i32 3972 }, %struct.interval { i32 3974, i32 3975 }, %struct.interval { i32 3984, i32 3991 }, %struct.interval { i32 3993, i32 4028 }, %struct.interval { i32 4038, i32 4038 }, %struct.interval { i32 4141, i32 4144 }, %struct.interval { i32 4146, i32 4146 }, %struct.interval { i32 4150, i32 4151 }, %struct.interval { i32 4153, i32 4153 }, %struct.interval { i32 4184, i32 4185 }, %struct.interval { i32 4448, i32 4607 }, %struct.interval { i32 4959, i32 4959 }, %struct.interval { i32 5906, i32 5908 }, %struct.interval { i32 5938, i32 5940 }, %struct.interval { i32 5970, i32 5971 }, %struct.interval { i32 6002, i32 6003 }, %struct.interval { i32 6068, i32 6069 }, %struct.interval { i32 6071, i32 6077 }, %struct.interval { i32 6086, i32 6086 }, %struct.interval { i32 6089, i32 6099 }, %struct.interval { i32 6109, i32 6109 }, %struct.interval { i32 6155, i32 6157 }, %struct.interval { i32 6313, i32 6313 }, %struct.interval { i32 6432, i32 6434 }, %struct.interval { i32 6439, i32 6440 }, %struct.interval { i32 6450, i32 6450 }, %struct.interval { i32 6457, i32 6459 }, %struct.interval { i32 6679, i32 6680 }, %struct.interval { i32 6912, i32 6915 }, %struct.interval { i32 6964, i32 6964 }, %struct.interval { i32 6966, i32 6970 }, %struct.interval { i32 6972, i32 6972 }, %struct.interval { i32 6978, i32 6978 }, %struct.interval { i32 7019, i32 7027 }, %struct.interval { i32 7616, i32 7626 }, %struct.interval { i32 7678, i32 7679 }, %struct.interval { i32 8203, i32 8207 }, %struct.interval { i32 8234, i32 8238 }, %struct.interval { i32 8288, i32 8291 }, %struct.interval { i32 8298, i32 8303 }, %struct.interval { i32 8400, i32 8431 }, %struct.interval { i32 12330, i32 12335 }, %struct.interval { i32 12441, i32 12442 }, %struct.interval { i32 43014, i32 43014 }, %struct.interval { i32 43019, i32 43019 }, %struct.interval { i32 43045, i32 43046 }, %struct.interval { i32 64286, i32 64286 }, %struct.interval { i32 65024, i32 65039 }, %struct.interval { i32 65056, i32 65059 }, %struct.interval { i32 65279, i32 65279 }, %struct.interval { i32 65529, i32 65531 }, %struct.interval { i32 68097, i32 68099 }, %struct.interval { i32 68101, i32 68102 }, %struct.interval { i32 68108, i32 68111 }, %struct.interval { i32 68152, i32 68154 }, %struct.interval { i32 68159, i32 68159 }, %struct.interval { i32 119143, i32 119145 }, %struct.interval { i32 119155, i32 119170 }, %struct.interval { i32 119173, i32 119179 }, %struct.interval { i32 119210, i32 119213 }, %struct.interval { i32 119362, i32 119364 }, %struct.interval { i32 917505, i32 917505 }, %struct.interval { i32 917536, i32 917631 }, %struct.interval { i32 917760, i32 917999 }], align 16
@mk_wcwidth_cjk.ambiguous = internal constant [156 x %struct.interval] [%struct.interval { i32 161, i32 161 }, %struct.interval { i32 164, i32 164 }, %struct.interval { i32 167, i32 168 }, %struct.interval { i32 170, i32 170 }, %struct.interval { i32 174, i32 174 }, %struct.interval { i32 176, i32 180 }, %struct.interval { i32 182, i32 186 }, %struct.interval { i32 188, i32 191 }, %struct.interval { i32 198, i32 198 }, %struct.interval { i32 208, i32 208 }, %struct.interval { i32 215, i32 216 }, %struct.interval { i32 222, i32 225 }, %struct.interval { i32 230, i32 230 }, %struct.interval { i32 232, i32 234 }, %struct.interval { i32 236, i32 237 }, %struct.interval { i32 240, i32 240 }, %struct.interval { i32 242, i32 243 }, %struct.interval { i32 247, i32 250 }, %struct.interval { i32 252, i32 252 }, %struct.interval { i32 254, i32 254 }, %struct.interval { i32 257, i32 257 }, %struct.interval { i32 273, i32 273 }, %struct.interval { i32 275, i32 275 }, %struct.interval { i32 283, i32 283 }, %struct.interval { i32 294, i32 295 }, %struct.interval { i32 299, i32 299 }, %struct.interval { i32 305, i32 307 }, %struct.interval { i32 312, i32 312 }, %struct.interval { i32 319, i32 322 }, %struct.interval { i32 324, i32 324 }, %struct.interval { i32 328, i32 331 }, %struct.interval { i32 333, i32 333 }, %struct.interval { i32 338, i32 339 }, %struct.interval { i32 358, i32 359 }, %struct.interval { i32 363, i32 363 }, %struct.interval { i32 462, i32 462 }, %struct.interval { i32 464, i32 464 }, %struct.interval { i32 466, i32 466 }, %struct.interval { i32 468, i32 468 }, %struct.interval { i32 470, i32 470 }, %struct.interval { i32 472, i32 472 }, %struct.interval { i32 474, i32 474 }, %struct.interval { i32 476, i32 476 }, %struct.interval { i32 593, i32 593 }, %struct.interval { i32 609, i32 609 }, %struct.interval { i32 708, i32 708 }, %struct.interval { i32 711, i32 711 }, %struct.interval { i32 713, i32 715 }, %struct.interval { i32 717, i32 717 }, %struct.interval { i32 720, i32 720 }, %struct.interval { i32 728, i32 731 }, %struct.interval { i32 733, i32 733 }, %struct.interval { i32 735, i32 735 }, %struct.interval { i32 913, i32 929 }, %struct.interval { i32 931, i32 937 }, %struct.interval { i32 945, i32 961 }, %struct.interval { i32 963, i32 969 }, %struct.interval { i32 1025, i32 1025 }, %struct.interval { i32 1040, i32 1103 }, %struct.interval { i32 1105, i32 1105 }, %struct.interval { i32 8208, i32 8208 }, %struct.interval { i32 8211, i32 8214 }, %struct.interval { i32 8216, i32 8217 }, %struct.interval { i32 8220, i32 8221 }, %struct.interval { i32 8224, i32 8226 }, %struct.interval { i32 8228, i32 8231 }, %struct.interval { i32 8240, i32 8240 }, %struct.interval { i32 8242, i32 8243 }, %struct.interval { i32 8245, i32 8245 }, %struct.interval { i32 8251, i32 8251 }, %struct.interval { i32 8254, i32 8254 }, %struct.interval { i32 8308, i32 8308 }, %struct.interval { i32 8319, i32 8319 }, %struct.interval { i32 8321, i32 8324 }, %struct.interval { i32 8364, i32 8364 }, %struct.interval { i32 8451, i32 8451 }, %struct.interval { i32 8453, i32 8453 }, %struct.interval { i32 8457, i32 8457 }, %struct.interval { i32 8467, i32 8467 }, %struct.interval { i32 8470, i32 8470 }, %struct.interval { i32 8481, i32 8482 }, %struct.interval { i32 8486, i32 8486 }, %struct.interval { i32 8491, i32 8491 }, %struct.interval { i32 8531, i32 8532 }, %struct.interval { i32 8539, i32 8542 }, %struct.interval { i32 8544, i32 8555 }, %struct.interval { i32 8560, i32 8569 }, %struct.interval { i32 8592, i32 8601 }, %struct.interval { i32 8632, i32 8633 }, %struct.interval { i32 8658, i32 8658 }, %struct.interval { i32 8660, i32 8660 }, %struct.interval { i32 8679, i32 8679 }, %struct.interval { i32 8704, i32 8704 }, %struct.interval { i32 8706, i32 8707 }, %struct.interval { i32 8711, i32 8712 }, %struct.interval { i32 8715, i32 8715 }, %struct.interval { i32 8719, i32 8719 }, %struct.interval { i32 8721, i32 8721 }, %struct.interval { i32 8725, i32 8725 }, %struct.interval { i32 8730, i32 8730 }, %struct.interval { i32 8733, i32 8736 }, %struct.interval { i32 8739, i32 8739 }, %struct.interval { i32 8741, i32 8741 }, %struct.interval { i32 8743, i32 8748 }, %struct.interval { i32 8750, i32 8750 }, %struct.interval { i32 8756, i32 8759 }, %struct.interval { i32 8764, i32 8765 }, %struct.interval { i32 8776, i32 8776 }, %struct.interval { i32 8780, i32 8780 }, %struct.interval { i32 8786, i32 8786 }, %struct.interval { i32 8800, i32 8801 }, %struct.interval { i32 8804, i32 8807 }, %struct.interval { i32 8810, i32 8811 }, %struct.interval { i32 8814, i32 8815 }, %struct.interval { i32 8834, i32 8835 }, %struct.interval { i32 8838, i32 8839 }, %struct.interval { i32 8853, i32 8853 }, %struct.interval { i32 8857, i32 8857 }, %struct.interval { i32 8869, i32 8869 }, %struct.interval { i32 8895, i32 8895 }, %struct.interval { i32 8978, i32 8978 }, %struct.interval { i32 9312, i32 9449 }, %struct.interval { i32 9451, i32 9547 }, %struct.interval { i32 9552, i32 9587 }, %struct.interval { i32 9600, i32 9615 }, %struct.interval { i32 9618, i32 9621 }, %struct.interval { i32 9632, i32 9633 }, %struct.interval { i32 9635, i32 9641 }, %struct.interval { i32 9650, i32 9651 }, %struct.interval { i32 9654, i32 9655 }, %struct.interval { i32 9660, i32 9661 }, %struct.interval { i32 9664, i32 9665 }, %struct.interval { i32 9670, i32 9672 }, %struct.interval { i32 9675, i32 9675 }, %struct.interval { i32 9678, i32 9681 }, %struct.interval { i32 9698, i32 9701 }, %struct.interval { i32 9711, i32 9711 }, %struct.interval { i32 9733, i32 9734 }, %struct.interval { i32 9737, i32 9737 }, %struct.interval { i32 9742, i32 9743 }, %struct.interval { i32 9748, i32 9749 }, %struct.interval { i32 9756, i32 9756 }, %struct.interval { i32 9758, i32 9758 }, %struct.interval { i32 9792, i32 9792 }, %struct.interval { i32 9794, i32 9794 }, %struct.interval { i32 9824, i32 9825 }, %struct.interval { i32 9827, i32 9829 }, %struct.interval { i32 9831, i32 9834 }, %struct.interval { i32 9836, i32 9837 }, %struct.interval { i32 9839, i32 9839 }, %struct.interval { i32 10045, i32 10045 }, %struct.interval { i32 10102, i32 10111 }, %struct.interval { i32 57344, i32 63743 }, %struct.interval { i32 65533, i32 65533 }, %struct.interval { i32 983040, i32 1048573 }, %struct.interval { i32 1048576, i32 1114109 }], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define dso_local i32 @mk_wcwidth(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %44, label %3

3:                                                ; preds = %1
  %4 = icmp slt i32 %0, 32
  %5 = add nsw i32 %0, -127
  %6 = icmp ult i32 %5, 33
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %44, label %8

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @bisearch(i32 noundef %0, ptr noundef nonnull @mk_wcwidth.combining, i32 noundef 141) #3, !range !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %8
  %12 = icmp ugt i32 %0, 4351
  br i1 %12, label %13, label %44

13:                                               ; preds = %11
  %14 = icmp ult i32 %0, 4448
  %15 = add nsw i32 %0, -9001
  %16 = icmp ult i32 %15, 2
  %17 = or i1 %14, %16
  br i1 %17, label %44, label %18

18:                                               ; preds = %13
  %19 = add nsw i32 %0, -11904
  %20 = icmp ult i32 %19, 30288
  %21 = icmp ne i32 %0, 12351
  %22 = and i1 %21, %20
  %23 = insertelement <4 x i32> poison, i32 %0, i64 0
  %24 = shufflevector <4 x i32> %23, <4 x i32> poison, <4 x i32> zeroinitializer
  %25 = freeze <4 x i32> %24
  %26 = add <4 x i32> %25, <i32 -44032, i32 -63744, i32 -65040, i32 -65072>
  %27 = icmp ult <4 x i32> %26, <i32 11172, i32 512, i32 10, i32 64>
  %28 = add i32 %0, -65280
  %29 = icmp ult i32 %28, 97
  %30 = add i32 %0, -65504
  %31 = icmp ult i32 %30, 7
  %32 = add nsw i32 %0, -131072
  %33 = icmp ult i32 %32, 65534
  %34 = bitcast <4 x i1> %27 to i4
  %35 = icmp ne i4 %34, 0
  %36 = or i1 %35, %29
  %37 = or i1 %36, %31
  %38 = or i1 %22, %37
  %39 = select i1 %38, i1 true, i1 %33
  br i1 %39, label %44, label %40

40:                                               ; preds = %18
  %41 = add nsw i32 %0, -196608
  %42 = icmp ult i32 %41, 65534
  %43 = select i1 %42, i32 2, i32 1
  br label %44

44:                                               ; preds = %11, %18, %40, %13, %8, %3, %1
  %45 = phi i32 [ 0, %1 ], [ -1, %3 ], [ 0, %8 ], [ 1, %11 ], [ 2, %13 ], [ %43, %40 ], [ 2, %18 ]
  ret i32 %45
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc noundef i32 @bisearch(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 !PGOFuncName !35 {
  %4 = load i32, ptr %1, align 4, !tbaa !36
  %5 = icmp sgt i32 %4, %0
  br i1 %5, label %34, label %6

6:                                                ; preds = %3
  %7 = zext nneg i32 %2 to i64
  %8 = getelementptr inbounds %struct.interval, ptr %1, i64 %7, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !41
  %10 = icmp slt i32 %9, %0
  %11 = icmp slt i32 %2, 0
  %12 = or i1 %10, %11
  br i1 %12, label %34, label %13

13:                                               ; preds = %6, %30
  %14 = phi i32 [ %32, %30 ], [ 0, %6 ]
  %15 = phi i32 [ %31, %30 ], [ %2, %6 ]
  %16 = add nsw i32 %14, %15
  %17 = sdiv i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.interval, ptr %1, i64 %18, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !41
  %21 = icmp slt i32 %20, %0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = add nsw i32 %17, 1
  br label %30

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.interval, ptr %1, i64 %18
  %26 = load i32, ptr %25, align 4, !tbaa !36
  %27 = icmp sgt i32 %26, %0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = add nsw i32 %17, -1
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi i32 [ %15, %22 ], [ %29, %28 ]
  %32 = phi i32 [ %23, %22 ], [ %14, %28 ]
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %13, !llvm.loop !42

34:                                               ; preds = %24, %30, %3, %6
  %35 = phi i32 [ 0, %6 ], [ 0, %3 ], [ 1, %24 ], [ 0, %30 ]
  ret i32 %35
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mk_wcswidth(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = load i32, ptr %0, align 4, !tbaa !44
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %2, %15
  %6 = phi i32 [ %18, %15 ], [ %3, %2 ]
  %7 = phi i32 [ %16, %15 ], [ 0, %2 ]
  %8 = phi i64 [ %10, %15 ], [ %1, %2 ]
  %9 = phi ptr [ %17, %15 ], [ %0, %2 ]
  %10 = add i64 %8, -1
  %11 = icmp eq i64 %8, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %5
  %13 = tail call i32 @mk_wcwidth(i32 noundef %6) #3, !range !45
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = add nuw nsw i32 %13, %7
  %17 = getelementptr inbounds i32, ptr %9, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !44
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %5, !llvm.loop !46

20:                                               ; preds = %12, %15, %5, %2
  %21 = phi i32 [ 0, %2 ], [ %7, %5 ], [ %16, %15 ], [ -1, %12 ]
  ret i32 %21
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define dso_local i32 @mk_wcwidth_cjk(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @bisearch(i32 noundef %0, ptr noundef nonnull @mk_wcwidth_cjk.ambiguous, i32 noundef 155) #3, !range !34
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @mk_wcwidth(i32 noundef %0) #3, !range !45
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 2, %1 ]
  ret i32 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mk_wcswidth_cjk(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = load i32, ptr %0, align 4, !tbaa !44
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %2, %15
  %6 = phi i32 [ %18, %15 ], [ %3, %2 ]
  %7 = phi i32 [ %16, %15 ], [ 0, %2 ]
  %8 = phi i64 [ %10, %15 ], [ %1, %2 ]
  %9 = phi ptr [ %17, %15 ], [ %0, %2 ]
  %10 = add i64 %8, -1
  %11 = icmp eq i64 %8, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %5
  %13 = tail call i32 @mk_wcwidth_cjk(i32 noundef %6) #3, !range !45
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = add nuw nsw i32 %13, %7
  %17 = getelementptr inbounds i32, ptr %9, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !44
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %5, !llvm.loop !47

20:                                               ; preds = %12, %15, %5, %2
  %21 = phi i32 [ 0, %2 ], [ %7, %5 ], [ %16, %15 ], [ -1, %12 ]
  ret i32 %21
}

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{i32 0, i32 2}
!35 = !{!"wcwidth.c:bisearch"}
!36 = !{!37, !38, i64 0}
!37 = !{!"interval", !38, i64 0, !38, i64 4}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!37, !38, i64 4}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!38, !38, i64 0}
!45 = !{i32 -1, i32 3}
!46 = distinct !{!46, !43}
!47 = distinct !{!47, !43}
