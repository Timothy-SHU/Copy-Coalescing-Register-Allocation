; ModuleID = 'blender/extern/wcwidth/wcwidth.c'
source_filename = "blender/extern/wcwidth/wcwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.interval = type { i32, i32 }

@mk_wcwidth.combining = internal unnamed_addr constant [142 x %struct.interval] [%struct.interval { i32 768, i32 879 }, %struct.interval { i32 1155, i32 1158 }, %struct.interval { i32 1160, i32 1161 }, %struct.interval { i32 1425, i32 1469 }, %struct.interval { i32 1471, i32 1471 }, %struct.interval { i32 1473, i32 1474 }, %struct.interval { i32 1476, i32 1477 }, %struct.interval { i32 1479, i32 1479 }, %struct.interval { i32 1536, i32 1539 }, %struct.interval { i32 1552, i32 1557 }, %struct.interval { i32 1611, i32 1630 }, %struct.interval { i32 1648, i32 1648 }, %struct.interval { i32 1750, i32 1764 }, %struct.interval { i32 1767, i32 1768 }, %struct.interval { i32 1770, i32 1773 }, %struct.interval { i32 1807, i32 1807 }, %struct.interval { i32 1809, i32 1809 }, %struct.interval { i32 1840, i32 1866 }, %struct.interval { i32 1958, i32 1968 }, %struct.interval { i32 2027, i32 2035 }, %struct.interval { i32 2305, i32 2306 }, %struct.interval { i32 2364, i32 2364 }, %struct.interval { i32 2369, i32 2376 }, %struct.interval { i32 2381, i32 2381 }, %struct.interval { i32 2385, i32 2388 }, %struct.interval { i32 2402, i32 2403 }, %struct.interval { i32 2433, i32 2433 }, %struct.interval { i32 2492, i32 2492 }, %struct.interval { i32 2497, i32 2500 }, %struct.interval { i32 2509, i32 2509 }, %struct.interval { i32 2530, i32 2531 }, %struct.interval { i32 2561, i32 2562 }, %struct.interval { i32 2620, i32 2620 }, %struct.interval { i32 2625, i32 2626 }, %struct.interval { i32 2631, i32 2632 }, %struct.interval { i32 2635, i32 2637 }, %struct.interval { i32 2672, i32 2673 }, %struct.interval { i32 2689, i32 2690 }, %struct.interval { i32 2748, i32 2748 }, %struct.interval { i32 2753, i32 2757 }, %struct.interval { i32 2759, i32 2760 }, %struct.interval { i32 2765, i32 2765 }, %struct.interval { i32 2786, i32 2787 }, %struct.interval { i32 2817, i32 2817 }, %struct.interval { i32 2876, i32 2876 }, %struct.interval { i32 2879, i32 2879 }, %struct.interval { i32 2881, i32 2883 }, %struct.interval { i32 2893, i32 2893 }, %struct.interval { i32 2902, i32 2902 }, %struct.interval { i32 2946, i32 2946 }, %struct.interval { i32 3008, i32 3008 }, %struct.interval { i32 3021, i32 3021 }, %struct.interval { i32 3134, i32 3136 }, %struct.interval { i32 3142, i32 3144 }, %struct.interval { i32 3146, i32 3149 }, %struct.interval { i32 3157, i32 3158 }, %struct.interval { i32 3260, i32 3260 }, %struct.interval { i32 3263, i32 3263 }, %struct.interval { i32 3270, i32 3270 }, %struct.interval { i32 3276, i32 3277 }, %struct.interval { i32 3298, i32 3299 }, %struct.interval { i32 3393, i32 3395 }, %struct.interval { i32 3405, i32 3405 }, %struct.interval { i32 3530, i32 3530 }, %struct.interval { i32 3538, i32 3540 }, %struct.interval { i32 3542, i32 3542 }, %struct.interval { i32 3633, i32 3633 }, %struct.interval { i32 3636, i32 3642 }, %struct.interval { i32 3655, i32 3662 }, %struct.interval { i32 3761, i32 3761 }, %struct.interval { i32 3764, i32 3769 }, %struct.interval { i32 3771, i32 3772 }, %struct.interval { i32 3784, i32 3789 }, %struct.interval { i32 3864, i32 3865 }, %struct.interval { i32 3893, i32 3893 }, %struct.interval { i32 3895, i32 3895 }, %struct.interval { i32 3897, i32 3897 }, %struct.interval { i32 3953, i32 3966 }, %struct.interval { i32 3968, i32 3972 }, %struct.interval { i32 3974, i32 3975 }, %struct.interval { i32 3984, i32 3991 }, %struct.interval { i32 3993, i32 4028 }, %struct.interval { i32 4038, i32 4038 }, %struct.interval { i32 4141, i32 4144 }, %struct.interval { i32 4146, i32 4146 }, %struct.interval { i32 4150, i32 4151 }, %struct.interval { i32 4153, i32 4153 }, %struct.interval { i32 4184, i32 4185 }, %struct.interval { i32 4448, i32 4607 }, %struct.interval { i32 4959, i32 4959 }, %struct.interval { i32 5906, i32 5908 }, %struct.interval { i32 5938, i32 5940 }, %struct.interval { i32 5970, i32 5971 }, %struct.interval { i32 6002, i32 6003 }, %struct.interval { i32 6068, i32 6069 }, %struct.interval { i32 6071, i32 6077 }, %struct.interval { i32 6086, i32 6086 }, %struct.interval { i32 6089, i32 6099 }, %struct.interval { i32 6109, i32 6109 }, %struct.interval { i32 6155, i32 6157 }, %struct.interval { i32 6313, i32 6313 }, %struct.interval { i32 6432, i32 6434 }, %struct.interval { i32 6439, i32 6440 }, %struct.interval { i32 6450, i32 6450 }, %struct.interval { i32 6457, i32 6459 }, %struct.interval { i32 6679, i32 6680 }, %struct.interval { i32 6912, i32 6915 }, %struct.interval { i32 6964, i32 6964 }, %struct.interval { i32 6966, i32 6970 }, %struct.interval { i32 6972, i32 6972 }, %struct.interval { i32 6978, i32 6978 }, %struct.interval { i32 7019, i32 7027 }, %struct.interval { i32 7616, i32 7626 }, %struct.interval { i32 7678, i32 7679 }, %struct.interval { i32 8203, i32 8207 }, %struct.interval { i32 8234, i32 8238 }, %struct.interval { i32 8288, i32 8291 }, %struct.interval { i32 8298, i32 8303 }, %struct.interval { i32 8400, i32 8431 }, %struct.interval { i32 12330, i32 12335 }, %struct.interval { i32 12441, i32 12442 }, %struct.interval { i32 43014, i32 43014 }, %struct.interval { i32 43019, i32 43019 }, %struct.interval { i32 43045, i32 43046 }, %struct.interval { i32 64286, i32 64286 }, %struct.interval { i32 65024, i32 65039 }, %struct.interval { i32 65056, i32 65059 }, %struct.interval { i32 65279, i32 65279 }, %struct.interval { i32 65529, i32 65531 }, %struct.interval { i32 68097, i32 68099 }, %struct.interval { i32 68101, i32 68102 }, %struct.interval { i32 68108, i32 68111 }, %struct.interval { i32 68152, i32 68154 }, %struct.interval { i32 68159, i32 68159 }, %struct.interval { i32 119143, i32 119145 }, %struct.interval { i32 119155, i32 119170 }, %struct.interval { i32 119173, i32 119179 }, %struct.interval { i32 119210, i32 119213 }, %struct.interval { i32 119362, i32 119364 }, %struct.interval { i32 917505, i32 917505 }, %struct.interval { i32 917536, i32 917631 }, %struct.interval { i32 917760, i32 917999 }], align 16
@mk_wcwidth_cjk.ambiguous = internal unnamed_addr constant [156 x %struct.interval] [%struct.interval { i32 161, i32 161 }, %struct.interval { i32 164, i32 164 }, %struct.interval { i32 167, i32 168 }, %struct.interval { i32 170, i32 170 }, %struct.interval { i32 174, i32 174 }, %struct.interval { i32 176, i32 180 }, %struct.interval { i32 182, i32 186 }, %struct.interval { i32 188, i32 191 }, %struct.interval { i32 198, i32 198 }, %struct.interval { i32 208, i32 208 }, %struct.interval { i32 215, i32 216 }, %struct.interval { i32 222, i32 225 }, %struct.interval { i32 230, i32 230 }, %struct.interval { i32 232, i32 234 }, %struct.interval { i32 236, i32 237 }, %struct.interval { i32 240, i32 240 }, %struct.interval { i32 242, i32 243 }, %struct.interval { i32 247, i32 250 }, %struct.interval { i32 252, i32 252 }, %struct.interval { i32 254, i32 254 }, %struct.interval { i32 257, i32 257 }, %struct.interval { i32 273, i32 273 }, %struct.interval { i32 275, i32 275 }, %struct.interval { i32 283, i32 283 }, %struct.interval { i32 294, i32 295 }, %struct.interval { i32 299, i32 299 }, %struct.interval { i32 305, i32 307 }, %struct.interval { i32 312, i32 312 }, %struct.interval { i32 319, i32 322 }, %struct.interval { i32 324, i32 324 }, %struct.interval { i32 328, i32 331 }, %struct.interval { i32 333, i32 333 }, %struct.interval { i32 338, i32 339 }, %struct.interval { i32 358, i32 359 }, %struct.interval { i32 363, i32 363 }, %struct.interval { i32 462, i32 462 }, %struct.interval { i32 464, i32 464 }, %struct.interval { i32 466, i32 466 }, %struct.interval { i32 468, i32 468 }, %struct.interval { i32 470, i32 470 }, %struct.interval { i32 472, i32 472 }, %struct.interval { i32 474, i32 474 }, %struct.interval { i32 476, i32 476 }, %struct.interval { i32 593, i32 593 }, %struct.interval { i32 609, i32 609 }, %struct.interval { i32 708, i32 708 }, %struct.interval { i32 711, i32 711 }, %struct.interval { i32 713, i32 715 }, %struct.interval { i32 717, i32 717 }, %struct.interval { i32 720, i32 720 }, %struct.interval { i32 728, i32 731 }, %struct.interval { i32 733, i32 733 }, %struct.interval { i32 735, i32 735 }, %struct.interval { i32 913, i32 929 }, %struct.interval { i32 931, i32 937 }, %struct.interval { i32 945, i32 961 }, %struct.interval { i32 963, i32 969 }, %struct.interval { i32 1025, i32 1025 }, %struct.interval { i32 1040, i32 1103 }, %struct.interval { i32 1105, i32 1105 }, %struct.interval { i32 8208, i32 8208 }, %struct.interval { i32 8211, i32 8214 }, %struct.interval { i32 8216, i32 8217 }, %struct.interval { i32 8220, i32 8221 }, %struct.interval { i32 8224, i32 8226 }, %struct.interval { i32 8228, i32 8231 }, %struct.interval { i32 8240, i32 8240 }, %struct.interval { i32 8242, i32 8243 }, %struct.interval { i32 8245, i32 8245 }, %struct.interval { i32 8251, i32 8251 }, %struct.interval { i32 8254, i32 8254 }, %struct.interval { i32 8308, i32 8308 }, %struct.interval { i32 8319, i32 8319 }, %struct.interval { i32 8321, i32 8324 }, %struct.interval { i32 8364, i32 8364 }, %struct.interval { i32 8451, i32 8451 }, %struct.interval { i32 8453, i32 8453 }, %struct.interval { i32 8457, i32 8457 }, %struct.interval { i32 8467, i32 8467 }, %struct.interval { i32 8470, i32 8470 }, %struct.interval { i32 8481, i32 8482 }, %struct.interval { i32 8486, i32 8486 }, %struct.interval { i32 8491, i32 8491 }, %struct.interval { i32 8531, i32 8532 }, %struct.interval { i32 8539, i32 8542 }, %struct.interval { i32 8544, i32 8555 }, %struct.interval { i32 8560, i32 8569 }, %struct.interval { i32 8592, i32 8601 }, %struct.interval { i32 8632, i32 8633 }, %struct.interval { i32 8658, i32 8658 }, %struct.interval { i32 8660, i32 8660 }, %struct.interval { i32 8679, i32 8679 }, %struct.interval { i32 8704, i32 8704 }, %struct.interval { i32 8706, i32 8707 }, %struct.interval { i32 8711, i32 8712 }, %struct.interval { i32 8715, i32 8715 }, %struct.interval { i32 8719, i32 8719 }, %struct.interval { i32 8721, i32 8721 }, %struct.interval { i32 8725, i32 8725 }, %struct.interval { i32 8730, i32 8730 }, %struct.interval { i32 8733, i32 8736 }, %struct.interval { i32 8739, i32 8739 }, %struct.interval { i32 8741, i32 8741 }, %struct.interval { i32 8743, i32 8748 }, %struct.interval { i32 8750, i32 8750 }, %struct.interval { i32 8756, i32 8759 }, %struct.interval { i32 8764, i32 8765 }, %struct.interval { i32 8776, i32 8776 }, %struct.interval { i32 8780, i32 8780 }, %struct.interval { i32 8786, i32 8786 }, %struct.interval { i32 8800, i32 8801 }, %struct.interval { i32 8804, i32 8807 }, %struct.interval { i32 8810, i32 8811 }, %struct.interval { i32 8814, i32 8815 }, %struct.interval { i32 8834, i32 8835 }, %struct.interval { i32 8838, i32 8839 }, %struct.interval { i32 8853, i32 8853 }, %struct.interval { i32 8857, i32 8857 }, %struct.interval { i32 8869, i32 8869 }, %struct.interval { i32 8895, i32 8895 }, %struct.interval { i32 8978, i32 8978 }, %struct.interval { i32 9312, i32 9449 }, %struct.interval { i32 9451, i32 9547 }, %struct.interval { i32 9552, i32 9587 }, %struct.interval { i32 9600, i32 9615 }, %struct.interval { i32 9618, i32 9621 }, %struct.interval { i32 9632, i32 9633 }, %struct.interval { i32 9635, i32 9641 }, %struct.interval { i32 9650, i32 9651 }, %struct.interval { i32 9654, i32 9655 }, %struct.interval { i32 9660, i32 9661 }, %struct.interval { i32 9664, i32 9665 }, %struct.interval { i32 9670, i32 9672 }, %struct.interval { i32 9675, i32 9675 }, %struct.interval { i32 9678, i32 9681 }, %struct.interval { i32 9698, i32 9701 }, %struct.interval { i32 9711, i32 9711 }, %struct.interval { i32 9733, i32 9734 }, %struct.interval { i32 9737, i32 9737 }, %struct.interval { i32 9742, i32 9743 }, %struct.interval { i32 9748, i32 9749 }, %struct.interval { i32 9756, i32 9756 }, %struct.interval { i32 9758, i32 9758 }, %struct.interval { i32 9792, i32 9792 }, %struct.interval { i32 9794, i32 9794 }, %struct.interval { i32 9824, i32 9825 }, %struct.interval { i32 9827, i32 9829 }, %struct.interval { i32 9831, i32 9834 }, %struct.interval { i32 9836, i32 9837 }, %struct.interval { i32 9839, i32 9839 }, %struct.interval { i32 10045, i32 10045 }, %struct.interval { i32 10102, i32 10111 }, %struct.interval { i32 57344, i32 63743 }, %struct.interval { i32 65533, i32 65533 }, %struct.interval { i32 983040, i32 1048573 }, %struct.interval { i32 1048576, i32 1114109 }], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @mk_wcwidth(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %69, label %3

3:                                                ; preds = %1
  %4 = icmp slt i32 %0, 32
  %5 = add nsw i32 %0, -127
  %6 = icmp ult i32 %5, 33
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %69, label %8

8:                                                ; preds = %3
  %9 = add i32 %0, -918000
  %10 = icmp ult i32 %9, -917232
  br i1 %10, label %32, label %11

11:                                               ; preds = %8, %28
  %12 = phi i32 [ %30, %28 ], [ 0, %8 ]
  %13 = phi i32 [ %29, %28 ], [ 141, %8 ]
  %14 = add nsw i32 %12, %13
  %15 = sdiv i32 %14, 2
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.interval, ptr @mk_wcwidth.combining, i64 %16, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !34
  %19 = icmp slt i32 %18, %0
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = add nsw i32 %15, 1
  br label %28

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.interval, ptr @mk_wcwidth.combining, i64 %16
  %24 = load i32, ptr %23, align 8, !tbaa !39
  %25 = icmp sgt i32 %24, %0
  br i1 %25, label %26, label %69

26:                                               ; preds = %22
  %27 = add nsw i32 %15, -1
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi i32 [ %13, %20 ], [ %27, %26 ]
  %30 = phi i32 [ %21, %20 ], [ %12, %26 ]
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %11, !llvm.loop !40

32:                                               ; preds = %28, %8
  %33 = icmp sgt i32 %0, 4351
  br i1 %33, label %34, label %69

34:                                               ; preds = %32
  %35 = icmp slt i32 %0, 4448
  %36 = add nsw i32 %0, -9001
  %37 = icmp ult i32 %36, 2
  %38 = or i1 %35, %37
  br i1 %38, label %69, label %39

39:                                               ; preds = %34
  %40 = add nsw i32 %0, -11904
  %41 = icmp ult i32 %40, 30288
  %42 = icmp ne i32 %0, 12351
  %43 = and i1 %42, %41
  %44 = add nsw i32 %0, -44032
  %45 = icmp ult i32 %44, 11172
  %46 = select i1 %43, i1 true, i1 %45
  %47 = add nsw i32 %0, -63744
  %48 = icmp ult i32 %47, 512
  %49 = select i1 %46, i1 true, i1 %48
  %50 = add nsw i32 %0, -65040
  %51 = icmp ult i32 %50, 10
  %52 = select i1 %49, i1 true, i1 %51
  %53 = add nsw i32 %0, -65072
  %54 = icmp ult i32 %53, 64
  %55 = select i1 %52, i1 true, i1 %54
  %56 = add nsw i32 %0, -65280
  %57 = icmp ult i32 %56, 97
  %58 = select i1 %55, i1 true, i1 %57
  %59 = add nsw i32 %0, -65504
  %60 = icmp ult i32 %59, 7
  %61 = select i1 %58, i1 true, i1 %60
  %62 = add nsw i32 %0, -131072
  %63 = icmp ult i32 %62, 65534
  %64 = select i1 %61, i1 true, i1 %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %39
  %66 = add nsw i32 %0, -196608
  %67 = icmp ult i32 %66, 65534
  %68 = select i1 %67, i32 2, i32 1
  br label %69

69:                                               ; preds = %22, %32, %39, %65, %34, %3, %1
  %70 = phi i32 [ 0, %1 ], [ -1, %3 ], [ 1, %32 ], [ 2, %34 ], [ %68, %65 ], [ 2, %39 ], [ 0, %22 ]
  ret i32 %70
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mk_wcswidth(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 4, !tbaa !43
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
  %13 = tail call i32 @mk_wcwidth(i32 noundef %6), !range !44
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = add nuw nsw i32 %13, %7
  %17 = getelementptr inbounds i32, ptr %9, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !43
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %5, !llvm.loop !45

20:                                               ; preds = %12, %15, %5, %2
  %21 = phi i32 [ 0, %2 ], [ -1, %12 ], [ %16, %15 ], [ %7, %5 ]
  ret i32 %21
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @mk_wcwidth_cjk(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, -1114110
  %3 = icmp ult i32 %2, -1113949
  br i1 %3, label %25, label %4

4:                                                ; preds = %1, %21
  %5 = phi i32 [ %23, %21 ], [ 0, %1 ]
  %6 = phi i32 [ %22, %21 ], [ 155, %1 ]
  %7 = add nsw i32 %5, %6
  %8 = sdiv i32 %7, 2
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.interval, ptr @mk_wcwidth_cjk.ambiguous, i64 %9, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !34
  %12 = icmp slt i32 %11, %0
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = add nsw i32 %8, 1
  br label %21

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.interval, ptr @mk_wcwidth_cjk.ambiguous, i64 %9
  %17 = load i32, ptr %16, align 8, !tbaa !39
  %18 = icmp sgt i32 %17, %0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = add nsw i32 %8, -1
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi i32 [ %6, %13 ], [ %20, %19 ]
  %23 = phi i32 [ %14, %13 ], [ %5, %19 ]
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %4, !llvm.loop !40

25:                                               ; preds = %21, %1
  %26 = tail call i32 @mk_wcwidth(i32 noundef %0), !range !44
  br label %27

27:                                               ; preds = %15, %25
  %28 = phi i32 [ %26, %25 ], [ 2, %15 ]
  ret i32 %28
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @mk_wcswidth_cjk(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 4, !tbaa !43
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %46, label %5

5:                                                ; preds = %2, %41
  %6 = phi i32 [ %44, %41 ], [ %3, %2 ]
  %7 = phi i32 [ %42, %41 ], [ 0, %2 ]
  %8 = phi i64 [ %10, %41 ], [ %1, %2 ]
  %9 = phi ptr [ %43, %41 ], [ %0, %2 ]
  %10 = add i64 %8, -1
  %11 = icmp eq i64 %8, 0
  br i1 %11, label %46, label %12

12:                                               ; preds = %5
  %13 = add i32 %6, -1114110
  %14 = icmp ult i32 %13, -1113949
  br i1 %14, label %36, label %15

15:                                               ; preds = %12, %32
  %16 = phi i32 [ %34, %32 ], [ 0, %12 ]
  %17 = phi i32 [ %33, %32 ], [ 155, %12 ]
  %18 = add nsw i32 %17, %16
  %19 = sdiv i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.interval, ptr @mk_wcwidth_cjk.ambiguous, i64 %20, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !34
  %23 = icmp slt i32 %22, %6
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = add nsw i32 %19, 1
  br label %32

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.interval, ptr @mk_wcwidth_cjk.ambiguous, i64 %20
  %28 = load i32, ptr %27, align 8, !tbaa !39
  %29 = icmp sgt i32 %28, %6
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = add nsw i32 %19, -1
  br label %32

32:                                               ; preds = %30, %24
  %33 = phi i32 [ %17, %24 ], [ %31, %30 ]
  %34 = phi i32 [ %25, %24 ], [ %16, %30 ]
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %15, !llvm.loop !40

36:                                               ; preds = %32, %12
  %37 = tail call i32 @mk_wcwidth(i32 noundef %6), !range !44
  br label %38

38:                                               ; preds = %26, %36
  %39 = phi i32 [ %37, %36 ], [ 2, %26 ]
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = add nuw nsw i32 %39, %7
  %43 = getelementptr inbounds i32, ptr %9, i64 1
  %44 = load i32, ptr %43, align 4, !tbaa !43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %5, !llvm.loop !46

46:                                               ; preds = %38, %41, %5, %2
  %47 = phi i32 [ 0, %2 ], [ -1, %38 ], [ %42, %41 ], [ %7, %5 ]
  ret i32 %47
}

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 4}
!35 = !{!"interval", !36, i64 0, !36, i64 4}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!35, !36, i64 0}
!40 = distinct !{!40, !41, !42}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !{!36, !36, i64 0}
!44 = !{i32 -1, i32 3}
!45 = distinct !{!45, !41, !42}
!46 = distinct !{!46, !41, !42}
