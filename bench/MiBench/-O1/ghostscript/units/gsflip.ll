; ModuleID = 'gsflip.c'
source_filename = "gsflip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@flip3x1.tab3x1 = internal unnamed_addr constant [256 x i32] [i32 0, i32 4, i32 32, i32 36, i32 256, i32 260, i32 288, i32 292, i32 2048, i32 2052, i32 2080, i32 2084, i32 2304, i32 2308, i32 2336, i32 2340, i32 16384, i32 16388, i32 16416, i32 16420, i32 16640, i32 16644, i32 16672, i32 16676, i32 18432, i32 18436, i32 18464, i32 18468, i32 18688, i32 18692, i32 18720, i32 18724, i32 131072, i32 131076, i32 131104, i32 131108, i32 131328, i32 131332, i32 131360, i32 131364, i32 133120, i32 133124, i32 133152, i32 133156, i32 133376, i32 133380, i32 133408, i32 133412, i32 147456, i32 147460, i32 147488, i32 147492, i32 147712, i32 147716, i32 147744, i32 147748, i32 149504, i32 149508, i32 149536, i32 149540, i32 149760, i32 149764, i32 149792, i32 149796, i32 1048576, i32 1048580, i32 1048608, i32 1048612, i32 1048832, i32 1048836, i32 1048864, i32 1048868, i32 1050624, i32 1050628, i32 1050656, i32 1050660, i32 1050880, i32 1050884, i32 1050912, i32 1050916, i32 1064960, i32 1064964, i32 1064992, i32 1064996, i32 1065216, i32 1065220, i32 1065248, i32 1065252, i32 1067008, i32 1067012, i32 1067040, i32 1067044, i32 1067264, i32 1067268, i32 1067296, i32 1067300, i32 1179648, i32 1179652, i32 1179680, i32 1179684, i32 1179904, i32 1179908, i32 1179936, i32 1179940, i32 1181696, i32 1181700, i32 1181728, i32 1181732, i32 1181952, i32 1181956, i32 1181984, i32 1181988, i32 1196032, i32 1196036, i32 1196064, i32 1196068, i32 1196288, i32 1196292, i32 1196320, i32 1196324, i32 1198080, i32 1198084, i32 1198112, i32 1198116, i32 1198336, i32 1198340, i32 1198368, i32 1198372, i32 8388608, i32 8388612, i32 8388640, i32 8388644, i32 8388864, i32 8388868, i32 8388896, i32 8388900, i32 8390656, i32 8390660, i32 8390688, i32 8390692, i32 8390912, i32 8390916, i32 8390944, i32 8390948, i32 8404992, i32 8404996, i32 8405024, i32 8405028, i32 8405248, i32 8405252, i32 8405280, i32 8405284, i32 8407040, i32 8407044, i32 8407072, i32 8407076, i32 8407296, i32 8407300, i32 8407328, i32 8407332, i32 8519680, i32 8519684, i32 8519712, i32 8519716, i32 8519936, i32 8519940, i32 8519968, i32 8519972, i32 8521728, i32 8521732, i32 8521760, i32 8521764, i32 8521984, i32 8521988, i32 8522016, i32 8522020, i32 8536064, i32 8536068, i32 8536096, i32 8536100, i32 8536320, i32 8536324, i32 8536352, i32 8536356, i32 8538112, i32 8538116, i32 8538144, i32 8538148, i32 8538368, i32 8538372, i32 8538400, i32 8538404, i32 9437184, i32 9437188, i32 9437216, i32 9437220, i32 9437440, i32 9437444, i32 9437472, i32 9437476, i32 9439232, i32 9439236, i32 9439264, i32 9439268, i32 9439488, i32 9439492, i32 9439520, i32 9439524, i32 9453568, i32 9453572, i32 9453600, i32 9453604, i32 9453824, i32 9453828, i32 9453856, i32 9453860, i32 9455616, i32 9455620, i32 9455648, i32 9455652, i32 9455872, i32 9455876, i32 9455904, i32 9455908, i32 9568256, i32 9568260, i32 9568288, i32 9568292, i32 9568512, i32 9568516, i32 9568544, i32 9568548, i32 9570304, i32 9570308, i32 9570336, i32 9570340, i32 9570560, i32 9570564, i32 9570592, i32 9570596, i32 9584640, i32 9584644, i32 9584672, i32 9584676, i32 9584896, i32 9584900, i32 9584928, i32 9584932, i32 9586688, i32 9586692, i32 9586720, i32 9586724, i32 9586944, i32 9586948, i32 9586976, i32 9586980], align 16
@flip3x2.tab3x2 = internal unnamed_addr constant [256 x i32] [i32 0, i32 16, i32 32, i32 48, i32 1024, i32 1040, i32 1056, i32 1072, i32 2048, i32 2064, i32 2080, i32 2096, i32 3072, i32 3088, i32 3104, i32 3120, i32 65536, i32 65552, i32 65568, i32 65584, i32 66560, i32 66576, i32 66592, i32 66608, i32 67584, i32 67600, i32 67616, i32 67632, i32 68608, i32 68624, i32 68640, i32 68656, i32 131072, i32 131088, i32 131104, i32 131120, i32 132096, i32 132112, i32 132128, i32 132144, i32 133120, i32 133136, i32 133152, i32 133168, i32 134144, i32 134160, i32 134176, i32 134192, i32 196608, i32 196624, i32 196640, i32 196656, i32 197632, i32 197648, i32 197664, i32 197680, i32 198656, i32 198672, i32 198688, i32 198704, i32 199680, i32 199696, i32 199712, i32 199728, i32 4194304, i32 4194320, i32 4194336, i32 4194352, i32 4195328, i32 4195344, i32 4195360, i32 4195376, i32 4196352, i32 4196368, i32 4196384, i32 4196400, i32 4197376, i32 4197392, i32 4197408, i32 4197424, i32 4259840, i32 4259856, i32 4259872, i32 4259888, i32 4260864, i32 4260880, i32 4260896, i32 4260912, i32 4261888, i32 4261904, i32 4261920, i32 4261936, i32 4262912, i32 4262928, i32 4262944, i32 4262960, i32 4325376, i32 4325392, i32 4325408, i32 4325424, i32 4326400, i32 4326416, i32 4326432, i32 4326448, i32 4327424, i32 4327440, i32 4327456, i32 4327472, i32 4328448, i32 4328464, i32 4328480, i32 4328496, i32 4390912, i32 4390928, i32 4390944, i32 4390960, i32 4391936, i32 4391952, i32 4391968, i32 4391984, i32 4392960, i32 4392976, i32 4392992, i32 4393008, i32 4393984, i32 4394000, i32 4394016, i32 4394032, i32 8388608, i32 8388624, i32 8388640, i32 8388656, i32 8389632, i32 8389648, i32 8389664, i32 8389680, i32 8390656, i32 8390672, i32 8390688, i32 8390704, i32 8391680, i32 8391696, i32 8391712, i32 8391728, i32 8454144, i32 8454160, i32 8454176, i32 8454192, i32 8455168, i32 8455184, i32 8455200, i32 8455216, i32 8456192, i32 8456208, i32 8456224, i32 8456240, i32 8457216, i32 8457232, i32 8457248, i32 8457264, i32 8519680, i32 8519696, i32 8519712, i32 8519728, i32 8520704, i32 8520720, i32 8520736, i32 8520752, i32 8521728, i32 8521744, i32 8521760, i32 8521776, i32 8522752, i32 8522768, i32 8522784, i32 8522800, i32 8585216, i32 8585232, i32 8585248, i32 8585264, i32 8586240, i32 8586256, i32 8586272, i32 8586288, i32 8587264, i32 8587280, i32 8587296, i32 8587312, i32 8588288, i32 8588304, i32 8588320, i32 8588336, i32 12582912, i32 12582928, i32 12582944, i32 12582960, i32 12583936, i32 12583952, i32 12583968, i32 12583984, i32 12584960, i32 12584976, i32 12584992, i32 12585008, i32 12585984, i32 12586000, i32 12586016, i32 12586032, i32 12648448, i32 12648464, i32 12648480, i32 12648496, i32 12649472, i32 12649488, i32 12649504, i32 12649520, i32 12650496, i32 12650512, i32 12650528, i32 12650544, i32 12651520, i32 12651536, i32 12651552, i32 12651568, i32 12713984, i32 12714000, i32 12714016, i32 12714032, i32 12715008, i32 12715024, i32 12715040, i32 12715056, i32 12716032, i32 12716048, i32 12716064, i32 12716080, i32 12717056, i32 12717072, i32 12717088, i32 12717104, i32 12779520, i32 12779536, i32 12779552, i32 12779568, i32 12780544, i32 12780560, i32 12780576, i32 12780592, i32 12781568, i32 12781584, i32 12781600, i32 12781616, i32 12782592, i32 12782608, i32 12782624, i32 12782640], align 16
@image_flip_procs = dso_local local_unnamed_addr global [2 x [13 x ptr]] [[13 x ptr] [ptr null, ptr @flip3x1, ptr @flip3x2, ptr null, ptr @flip3x4, ptr null, ptr null, ptr null, ptr @flip3x8, ptr null, ptr null, ptr null, ptr @flip3x12], [13 x ptr] [ptr null, ptr @flip4x1, ptr @flip4x2, ptr null, ptr @flip4x4, ptr null, ptr null, ptr null, ptr @flip4x8, ptr null, ptr null, ptr null, ptr @flip4x12]], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @flip3x1(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %51, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds ptr, ptr %1, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  %11 = getelementptr inbounds ptr, ptr %1, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds i8, ptr %12, i64 %9
  %14 = load ptr, ptr %1, align 8, !tbaa !5
  %15 = getelementptr inbounds i8, ptr %14, i64 %9
  br label %16

16:                                               ; preds = %6, %16
  %17 = phi ptr [ %45, %16 ], [ %0, %6 ]
  %18 = phi i32 [ %49, %16 ], [ %3, %6 ]
  %19 = phi ptr [ %48, %16 ], [ %10, %6 ]
  %20 = phi ptr [ %47, %16 ], [ %13, %6 ]
  %21 = phi ptr [ %46, %16 ], [ %15, %6 ]
  %22 = load i8, ptr %21, align 1, !tbaa !9
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds [256 x i32], ptr @flip3x1.tab3x1, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !10
  %26 = load i8, ptr %20, align 1, !tbaa !9
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds [256 x i32], ptr @flip3x1.tab3x1, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !10
  %30 = lshr i32 %29, 1
  %31 = or i32 %30, %25
  %32 = load i8, ptr %19, align 1, !tbaa !9
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds [256 x i32], ptr @flip3x1.tab3x1, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !10
  %36 = lshr i32 %35, 2
  %37 = or i32 %31, %36
  %38 = lshr i32 %37, 16
  %39 = trunc i32 %38 to i8
  store i8 %39, ptr %17, align 1, !tbaa !9
  %40 = lshr i32 %37, 8
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 %41, ptr %42, align 1, !tbaa !9
  %43 = trunc i32 %37 to i8
  %44 = getelementptr inbounds i8, ptr %17, i64 2
  store i8 %43, ptr %44, align 1, !tbaa !9
  %45 = getelementptr inbounds i8, ptr %17, i64 3
  %46 = getelementptr inbounds i8, ptr %21, i64 1
  %47 = getelementptr inbounds i8, ptr %20, i64 1
  %48 = getelementptr inbounds i8, ptr %19, i64 1
  %49 = add i32 %18, -1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %16, !llvm.loop !12

51:                                               ; preds = %16, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @flip3x2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %51, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds ptr, ptr %1, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  %11 = getelementptr inbounds ptr, ptr %1, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds i8, ptr %12, i64 %9
  %14 = load ptr, ptr %1, align 8, !tbaa !5
  %15 = getelementptr inbounds i8, ptr %14, i64 %9
  br label %16

16:                                               ; preds = %6, %16
  %17 = phi ptr [ %45, %16 ], [ %0, %6 ]
  %18 = phi i32 [ %49, %16 ], [ %3, %6 ]
  %19 = phi ptr [ %48, %16 ], [ %10, %6 ]
  %20 = phi ptr [ %47, %16 ], [ %13, %6 ]
  %21 = phi ptr [ %46, %16 ], [ %15, %6 ]
  %22 = load i8, ptr %21, align 1, !tbaa !9
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds [256 x i32], ptr @flip3x2.tab3x2, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !10
  %26 = load i8, ptr %20, align 1, !tbaa !9
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds [256 x i32], ptr @flip3x2.tab3x2, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !10
  %30 = lshr i32 %29, 2
  %31 = or i32 %30, %25
  %32 = load i8, ptr %19, align 1, !tbaa !9
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds [256 x i32], ptr @flip3x2.tab3x2, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !10
  %36 = lshr i32 %35, 4
  %37 = or i32 %31, %36
  %38 = lshr i32 %37, 16
  %39 = trunc i32 %38 to i8
  store i8 %39, ptr %17, align 1, !tbaa !9
  %40 = lshr i32 %37, 8
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 %41, ptr %42, align 1, !tbaa !9
  %43 = trunc i32 %37 to i8
  %44 = getelementptr inbounds i8, ptr %17, i64 2
  store i8 %43, ptr %44, align 1, !tbaa !9
  %45 = getelementptr inbounds i8, ptr %17, i64 3
  %46 = getelementptr inbounds i8, ptr %21, i64 1
  %47 = getelementptr inbounds i8, ptr %20, i64 1
  %48 = getelementptr inbounds i8, ptr %19, i64 1
  %49 = add i32 %18, -1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %16, !llvm.loop !14

51:                                               ; preds = %16, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @flip3x4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds ptr, ptr %1, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  %11 = getelementptr inbounds ptr, ptr %1, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds i8, ptr %12, i64 %9
  %14 = load ptr, ptr %1, align 8, !tbaa !5
  %15 = getelementptr inbounds i8, ptr %14, i64 %9
  br label %16

16:                                               ; preds = %6, %16
  %17 = phi ptr [ %36, %16 ], [ %0, %6 ]
  %18 = phi ptr [ %37, %16 ], [ %15, %6 ]
  %19 = phi ptr [ %38, %16 ], [ %13, %6 ]
  %20 = phi i32 [ %40, %16 ], [ %3, %6 ]
  %21 = phi ptr [ %39, %16 ], [ %10, %6 ]
  %22 = load i8, ptr %18, align 1, !tbaa !9
  %23 = load i8, ptr %19, align 1, !tbaa !9
  %24 = load i8, ptr %21, align 1, !tbaa !9
  %25 = and i8 %22, -16
  %26 = lshr i8 %23, 4
  %27 = or disjoint i8 %26, %25
  store i8 %27, ptr %17, align 1, !tbaa !9
  %28 = and i8 %24, -16
  %29 = and i8 %22, 15
  %30 = or disjoint i8 %28, %29
  %31 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 %30, ptr %31, align 1, !tbaa !9
  %32 = shl i8 %23, 4
  %33 = and i8 %24, 15
  %34 = or disjoint i8 %33, %32
  %35 = getelementptr inbounds i8, ptr %17, i64 2
  store i8 %34, ptr %35, align 1, !tbaa !9
  %36 = getelementptr inbounds i8, ptr %17, i64 3
  %37 = getelementptr inbounds i8, ptr %18, i64 1
  %38 = getelementptr inbounds i8, ptr %19, i64 1
  %39 = getelementptr inbounds i8, ptr %21, i64 1
  %40 = add i32 %20, -1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %16, !llvm.loop !15

42:                                               ; preds = %16, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @flip3x8(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %33, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds ptr, ptr %1, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  %11 = getelementptr inbounds ptr, ptr %1, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds i8, ptr %12, i64 %9
  %14 = load ptr, ptr %1, align 8, !tbaa !5
  %15 = getelementptr inbounds i8, ptr %14, i64 %9
  br label %16

16:                                               ; preds = %6, %16
  %17 = phi i32 [ %31, %16 ], [ %3, %6 ]
  %18 = phi ptr [ %30, %16 ], [ %10, %6 ]
  %19 = phi ptr [ %29, %16 ], [ %13, %6 ]
  %20 = phi ptr [ %28, %16 ], [ %15, %6 ]
  %21 = phi ptr [ %27, %16 ], [ %0, %6 ]
  %22 = load i8, ptr %20, align 1, !tbaa !9
  store i8 %22, ptr %21, align 1, !tbaa !9
  %23 = load i8, ptr %19, align 1, !tbaa !9
  %24 = getelementptr inbounds i8, ptr %21, i64 1
  store i8 %23, ptr %24, align 1, !tbaa !9
  %25 = load i8, ptr %18, align 1, !tbaa !9
  %26 = getelementptr inbounds i8, ptr %21, i64 2
  store i8 %25, ptr %26, align 1, !tbaa !9
  %27 = getelementptr inbounds i8, ptr %21, i64 3
  %28 = getelementptr inbounds i8, ptr %20, i64 1
  %29 = getelementptr inbounds i8, ptr %19, i64 1
  %30 = getelementptr inbounds i8, ptr %18, i64 1
  %31 = add i32 %17, -1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %16, !llvm.loop !16

33:                                               ; preds = %16, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @flip3x12(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %62, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds ptr, ptr %1, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  %11 = getelementptr inbounds ptr, ptr %1, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds i8, ptr %12, i64 %9
  %14 = load ptr, ptr %1, align 8, !tbaa !5
  %15 = getelementptr inbounds i8, ptr %14, i64 %9
  br label %16

16:                                               ; preds = %6, %16
  %17 = phi ptr [ %56, %16 ], [ %0, %6 ]
  %18 = phi ptr [ %57, %16 ], [ %15, %6 ]
  %19 = phi ptr [ %58, %16 ], [ %13, %6 ]
  %20 = phi ptr [ %59, %16 ], [ %10, %6 ]
  %21 = phi i32 [ %60, %16 ], [ %3, %6 ]
  %22 = getelementptr inbounds i8, ptr %18, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !9
  %24 = load i8, ptr %19, align 1, !tbaa !9
  %25 = getelementptr inbounds i8, ptr %19, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !9
  %27 = getelementptr inbounds i8, ptr %19, i64 2
  %28 = load i8, ptr %27, align 1, !tbaa !9
  %29 = getelementptr inbounds i8, ptr %20, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !9
  %31 = load i8, ptr %18, align 1, !tbaa !9
  store i8 %31, ptr %17, align 1, !tbaa !9
  %32 = and i8 %23, -16
  %33 = lshr i8 %24, 4
  %34 = or disjoint i8 %33, %32
  %35 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 %34, ptr %35, align 1, !tbaa !9
  %36 = tail call i8 @llvm.fshl.i8(i8 %24, i8 %26, i8 4)
  %37 = getelementptr inbounds i8, ptr %17, i64 2
  store i8 %36, ptr %37, align 1, !tbaa !9
  %38 = load i8, ptr %20, align 1, !tbaa !9
  %39 = getelementptr inbounds i8, ptr %17, i64 3
  store i8 %38, ptr %39, align 1, !tbaa !9
  %40 = and i8 %30, -16
  %41 = and i8 %23, 15
  %42 = or disjoint i8 %40, %41
  %43 = getelementptr inbounds i8, ptr %17, i64 4
  store i8 %42, ptr %43, align 1, !tbaa !9
  %44 = getelementptr inbounds i8, ptr %18, i64 2
  %45 = load i8, ptr %44, align 1, !tbaa !9
  %46 = getelementptr inbounds i8, ptr %17, i64 5
  store i8 %45, ptr %46, align 1, !tbaa !9
  %47 = tail call i8 @llvm.fshl.i8(i8 %26, i8 %28, i8 4)
  %48 = getelementptr inbounds i8, ptr %17, i64 6
  store i8 %47, ptr %48, align 1, !tbaa !9
  %49 = shl i8 %28, 4
  %50 = and i8 %30, 15
  %51 = or disjoint i8 %50, %49
  %52 = getelementptr inbounds i8, ptr %17, i64 7
  store i8 %51, ptr %52, align 1, !tbaa !9
  %53 = getelementptr inbounds i8, ptr %20, i64 2
  %54 = load i8, ptr %53, align 1, !tbaa !9
  %55 = getelementptr inbounds i8, ptr %17, i64 8
  store i8 %54, ptr %55, align 1, !tbaa !9
  %56 = getelementptr inbounds i8, ptr %17, i64 9
  %57 = getelementptr inbounds i8, ptr %18, i64 3
  %58 = getelementptr inbounds i8, ptr %19, i64 3
  %59 = getelementptr inbounds i8, ptr %20, i64 3
  %60 = add i32 %21, -3
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %16, !llvm.loop !17

62:                                               ; preds = %16, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @flip4x1(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %76, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds ptr, ptr %1, i64 3
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  %11 = getelementptr inbounds ptr, ptr %1, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds i8, ptr %12, i64 %9
  %14 = getelementptr inbounds ptr, ptr %1, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = getelementptr inbounds i8, ptr %15, i64 %9
  %17 = load ptr, ptr %1, align 8, !tbaa !5
  %18 = getelementptr inbounds i8, ptr %17, i64 %9
  br label %19

19:                                               ; preds = %6, %19
  %20 = phi ptr [ %69, %19 ], [ %0, %6 ]
  %21 = phi ptr [ %70, %19 ], [ %18, %6 ]
  %22 = phi ptr [ %71, %19 ], [ %16, %6 ]
  %23 = phi ptr [ %72, %19 ], [ %13, %6 ]
  %24 = phi ptr [ %73, %19 ], [ %10, %6 ]
  %25 = phi i32 [ %74, %19 ], [ %3, %6 ]
  %26 = load i8, ptr %21, align 1, !tbaa !9
  %27 = load i8, ptr %22, align 1, !tbaa !9
  %28 = load i8, ptr %23, align 1, !tbaa !9
  %29 = load i8, ptr %24, align 1, !tbaa !9
  %30 = shl i8 %27, 1
  %31 = xor i8 %30, %26
  %32 = and i8 %31, 85
  %33 = xor i8 %32, %26
  %34 = lshr i8 %32, 1
  %35 = xor i8 %34, %27
  %36 = shl i8 %29, 1
  %37 = xor i8 %36, %28
  %38 = and i8 %37, 85
  %39 = xor i8 %38, %28
  %40 = lshr i8 %38, 1
  %41 = xor i8 %40, %29
  %42 = shl i8 %39, 2
  %43 = xor i8 %42, %33
  %44 = and i8 %43, 51
  %45 = xor i8 %44, %33
  %46 = lshr i8 %44, 2
  %47 = xor i8 %46, %39
  %48 = shl i8 %41, 2
  %49 = xor i8 %48, %35
  %50 = and i8 %49, 51
  %51 = xor i8 %50, %35
  %52 = lshr i8 %50, 2
  %53 = and i8 %45, -16
  %54 = lshr i8 %51, 4
  %55 = or disjoint i8 %54, %53
  store i8 %55, ptr %20, align 1, !tbaa !9
  %56 = and i8 %39, -16
  %57 = lshr i8 %41, 4
  %58 = or disjoint i8 %57, %56
  %59 = getelementptr inbounds i8, ptr %20, i64 1
  store i8 %58, ptr %59, align 1, !tbaa !9
  %60 = shl i8 %45, 4
  %61 = and i8 %51, 15
  %62 = or disjoint i8 %61, %60
  %63 = getelementptr inbounds i8, ptr %20, i64 2
  store i8 %62, ptr %63, align 1, !tbaa !9
  %64 = shl i8 %47, 4
  %65 = and i8 %41, 15
  %66 = xor i8 %52, %65
  %67 = or disjoint i8 %64, %66
  %68 = getelementptr inbounds i8, ptr %20, i64 3
  store i8 %67, ptr %68, align 1, !tbaa !9
  %69 = getelementptr inbounds i8, ptr %20, i64 4
  %70 = getelementptr inbounds i8, ptr %21, i64 1
  %71 = getelementptr inbounds i8, ptr %22, i64 1
  %72 = getelementptr inbounds i8, ptr %23, i64 1
  %73 = getelementptr inbounds i8, ptr %24, i64 1
  %74 = add i32 %25, -1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %19, !llvm.loop !18

76:                                               ; preds = %19, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @flip4x2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %51, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds ptr, ptr %1, i64 3
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  %11 = getelementptr inbounds ptr, ptr %1, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds i8, ptr %12, i64 %9
  %14 = getelementptr inbounds ptr, ptr %1, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = getelementptr inbounds i8, ptr %15, i64 %9
  %17 = load ptr, ptr %1, align 8, !tbaa !5
  %18 = getelementptr inbounds i8, ptr %17, i64 %9
  br label %19

19:                                               ; preds = %6, %19
  %20 = phi ptr [ %44, %19 ], [ %0, %6 ]
  %21 = phi ptr [ %45, %19 ], [ %18, %6 ]
  %22 = phi ptr [ %46, %19 ], [ %16, %6 ]
  %23 = phi ptr [ %47, %19 ], [ %13, %6 ]
  %24 = phi ptr [ %48, %19 ], [ %10, %6 ]
  %25 = phi i32 [ %49, %19 ], [ %3, %6 ]
  %26 = load i8, ptr %21, align 1, !tbaa !9
  %27 = load i8, ptr %22, align 1, !tbaa !9
  %28 = load i8, ptr %23, align 1, !tbaa !9
  %29 = load i8, ptr %24, align 1, !tbaa !9
  %30 = and i8 %27, -16
  %31 = and i8 %26, -64
  %32 = lshr i8 %26, 2
  %33 = and i8 %32, 12
  %34 = or disjoint i8 %30, %33
  %35 = shl i8 %29, 2
  %36 = xor i8 %35, %28
  %37 = and i8 %36, 51
  %38 = xor i8 %37, %28
  %39 = lshr i8 %37, 2
  %40 = xor i8 %39, %29
  store i8 %31, ptr %20, align 1, !tbaa !9
  %41 = getelementptr inbounds i8, ptr %20, i64 1
  store i8 %34, ptr %41, align 1, !tbaa !9
  %42 = getelementptr inbounds i8, ptr %20, i64 2
  store i8 %38, ptr %42, align 1, !tbaa !9
  %43 = getelementptr inbounds i8, ptr %20, i64 3
  store i8 %40, ptr %43, align 1, !tbaa !9
  %44 = getelementptr inbounds i8, ptr %20, i64 4
  %45 = getelementptr inbounds i8, ptr %21, i64 1
  %46 = getelementptr inbounds i8, ptr %22, i64 1
  %47 = getelementptr inbounds i8, ptr %23, i64 1
  %48 = getelementptr inbounds i8, ptr %24, i64 1
  %49 = add i32 %25, -1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %19, !llvm.loop !19

51:                                               ; preds = %19, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @flip4x4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %52, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds ptr, ptr %1, i64 3
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  %11 = getelementptr inbounds ptr, ptr %1, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds i8, ptr %12, i64 %9
  %14 = getelementptr inbounds ptr, ptr %1, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = getelementptr inbounds i8, ptr %15, i64 %9
  %17 = load ptr, ptr %1, align 8, !tbaa !5
  %18 = getelementptr inbounds i8, ptr %17, i64 %9
  br label %19

19:                                               ; preds = %6, %19
  %20 = phi ptr [ %45, %19 ], [ %0, %6 ]
  %21 = phi ptr [ %46, %19 ], [ %18, %6 ]
  %22 = phi ptr [ %47, %19 ], [ %16, %6 ]
  %23 = phi ptr [ %48, %19 ], [ %13, %6 ]
  %24 = phi i32 [ %50, %19 ], [ %3, %6 ]
  %25 = phi ptr [ %49, %19 ], [ %10, %6 ]
  %26 = load i8, ptr %21, align 1, !tbaa !9
  %27 = load i8, ptr %22, align 1, !tbaa !9
  %28 = load i8, ptr %23, align 1, !tbaa !9
  %29 = load i8, ptr %25, align 1, !tbaa !9
  %30 = and i8 %26, -16
  %31 = lshr i8 %27, 4
  %32 = or disjoint i8 %31, %30
  store i8 %32, ptr %20, align 1, !tbaa !9
  %33 = and i8 %28, -16
  %34 = lshr i8 %29, 4
  %35 = or disjoint i8 %34, %33
  %36 = getelementptr inbounds i8, ptr %20, i64 1
  store i8 %35, ptr %36, align 1, !tbaa !9
  %37 = shl i8 %26, 4
  %38 = and i8 %27, 15
  %39 = or disjoint i8 %38, %37
  %40 = getelementptr inbounds i8, ptr %20, i64 2
  store i8 %39, ptr %40, align 1, !tbaa !9
  %41 = shl i8 %28, 4
  %42 = and i8 %29, 15
  %43 = or disjoint i8 %42, %41
  %44 = getelementptr inbounds i8, ptr %20, i64 3
  store i8 %43, ptr %44, align 1, !tbaa !9
  %45 = getelementptr inbounds i8, ptr %20, i64 4
  %46 = getelementptr inbounds i8, ptr %21, i64 1
  %47 = getelementptr inbounds i8, ptr %22, i64 1
  %48 = getelementptr inbounds i8, ptr %23, i64 1
  %49 = getelementptr inbounds i8, ptr %25, i64 1
  %50 = add i32 %24, -1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %19, !llvm.loop !20

52:                                               ; preds = %19, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @flip4x8(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %40, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds ptr, ptr %1, i64 3
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  %11 = getelementptr inbounds ptr, ptr %1, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds i8, ptr %12, i64 %9
  %14 = getelementptr inbounds ptr, ptr %1, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = getelementptr inbounds i8, ptr %15, i64 %9
  %17 = load ptr, ptr %1, align 8, !tbaa !5
  %18 = getelementptr inbounds i8, ptr %17, i64 %9
  br label %19

19:                                               ; preds = %6, %19
  %20 = phi i32 [ %38, %19 ], [ %3, %6 ]
  %21 = phi ptr [ %37, %19 ], [ %10, %6 ]
  %22 = phi ptr [ %36, %19 ], [ %13, %6 ]
  %23 = phi ptr [ %35, %19 ], [ %16, %6 ]
  %24 = phi ptr [ %34, %19 ], [ %18, %6 ]
  %25 = phi ptr [ %33, %19 ], [ %0, %6 ]
  %26 = load i8, ptr %24, align 1, !tbaa !9
  store i8 %26, ptr %25, align 1, !tbaa !9
  %27 = load i8, ptr %23, align 1, !tbaa !9
  %28 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 %27, ptr %28, align 1, !tbaa !9
  %29 = load i8, ptr %22, align 1, !tbaa !9
  %30 = getelementptr inbounds i8, ptr %25, i64 2
  store i8 %29, ptr %30, align 1, !tbaa !9
  %31 = load i8, ptr %21, align 1, !tbaa !9
  %32 = getelementptr inbounds i8, ptr %25, i64 3
  store i8 %31, ptr %32, align 1, !tbaa !9
  %33 = getelementptr inbounds i8, ptr %25, i64 4
  %34 = getelementptr inbounds i8, ptr %24, i64 1
  %35 = getelementptr inbounds i8, ptr %23, i64 1
  %36 = getelementptr inbounds i8, ptr %22, i64 1
  %37 = getelementptr inbounds i8, ptr %21, i64 1
  %38 = add i32 %20, -1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %19, !llvm.loop !21

40:                                               ; preds = %19, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @flip4x12(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %80, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds ptr, ptr %1, i64 3
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  %11 = getelementptr inbounds ptr, ptr %1, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds i8, ptr %12, i64 %9
  %14 = getelementptr inbounds ptr, ptr %1, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = getelementptr inbounds i8, ptr %15, i64 %9
  %17 = load ptr, ptr %1, align 8, !tbaa !5
  %18 = getelementptr inbounds i8, ptr %17, i64 %9
  br label %19

19:                                               ; preds = %6, %19
  %20 = phi ptr [ %73, %19 ], [ %0, %6 ]
  %21 = phi ptr [ %74, %19 ], [ %18, %6 ]
  %22 = phi ptr [ %75, %19 ], [ %16, %6 ]
  %23 = phi ptr [ %76, %19 ], [ %13, %6 ]
  %24 = phi ptr [ %77, %19 ], [ %10, %6 ]
  %25 = phi i32 [ %78, %19 ], [ %3, %6 ]
  %26 = getelementptr inbounds i8, ptr %21, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !9
  %28 = getelementptr inbounds i8, ptr %22, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !9
  %30 = getelementptr inbounds i8, ptr %23, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !9
  %32 = getelementptr inbounds i8, ptr %24, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !9
  %34 = load i8, ptr %21, align 1, !tbaa !9
  store i8 %34, ptr %20, align 1, !tbaa !9
  %35 = load i8, ptr %22, align 1, !tbaa !9
  %36 = and i8 %27, -16
  %37 = lshr i8 %35, 4
  %38 = or disjoint i8 %37, %36
  %39 = getelementptr inbounds i8, ptr %20, i64 1
  store i8 %38, ptr %39, align 1, !tbaa !9
  %40 = tail call i8 @llvm.fshl.i8(i8 %35, i8 %29, i8 4)
  %41 = getelementptr inbounds i8, ptr %20, i64 2
  store i8 %40, ptr %41, align 1, !tbaa !9
  %42 = load i8, ptr %23, align 1, !tbaa !9
  %43 = getelementptr inbounds i8, ptr %20, i64 3
  store i8 %42, ptr %43, align 1, !tbaa !9
  %44 = load i8, ptr %24, align 1, !tbaa !9
  %45 = and i8 %31, -16
  %46 = lshr i8 %44, 4
  %47 = or disjoint i8 %46, %45
  %48 = getelementptr inbounds i8, ptr %20, i64 4
  store i8 %47, ptr %48, align 1, !tbaa !9
  %49 = tail call i8 @llvm.fshl.i8(i8 %44, i8 %33, i8 4)
  %50 = getelementptr inbounds i8, ptr %20, i64 5
  store i8 %49, ptr %50, align 1, !tbaa !9
  %51 = getelementptr inbounds i8, ptr %21, i64 2
  %52 = load i8, ptr %51, align 1, !tbaa !9
  %53 = tail call i8 @llvm.fshl.i8(i8 %27, i8 %52, i8 4)
  %54 = getelementptr inbounds i8, ptr %20, i64 6
  store i8 %53, ptr %54, align 1, !tbaa !9
  %55 = shl i8 %52, 4
  %56 = and i8 %29, 15
  %57 = or disjoint i8 %55, %56
  %58 = getelementptr inbounds i8, ptr %20, i64 7
  store i8 %57, ptr %58, align 1, !tbaa !9
  %59 = getelementptr inbounds i8, ptr %22, i64 2
  %60 = load i8, ptr %59, align 1, !tbaa !9
  %61 = getelementptr inbounds i8, ptr %20, i64 8
  store i8 %60, ptr %61, align 1, !tbaa !9
  %62 = getelementptr inbounds i8, ptr %23, i64 2
  %63 = load i8, ptr %62, align 1, !tbaa !9
  %64 = tail call i8 @llvm.fshl.i8(i8 %31, i8 %63, i8 4)
  %65 = getelementptr inbounds i8, ptr %20, i64 9
  store i8 %64, ptr %65, align 1, !tbaa !9
  %66 = shl i8 %63, 4
  %67 = and i8 %33, 15
  %68 = or disjoint i8 %66, %67
  %69 = getelementptr inbounds i8, ptr %20, i64 10
  store i8 %68, ptr %69, align 1, !tbaa !9
  %70 = getelementptr inbounds i8, ptr %24, i64 2
  %71 = load i8, ptr %70, align 1, !tbaa !9
  %72 = getelementptr inbounds i8, ptr %20, i64 11
  store i8 %71, ptr %72, align 1, !tbaa !9
  %73 = getelementptr inbounds i8, ptr %20, i64 12
  %74 = getelementptr inbounds i8, ptr %21, i64 3
  %75 = getelementptr inbounds i8, ptr %22, i64 3
  %76 = getelementptr inbounds i8, ptr %23, i64 3
  %77 = getelementptr inbounds i8, ptr %24, i64 3
  %78 = add i32 %25, -3
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %19, !llvm.loop !22

80:                                               ; preds = %19, %4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #1

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
