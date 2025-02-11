; ModuleID = 'x264_src/common/quant.c'
source_filename = "x264_src/common/quant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.x264_quant_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [6 x ptr], [5 x ptr] }
%struct.x264_run_level_t = type { i32, [16 x i16], [16 x i8] }

@x264_decimate_table4 = dso_local local_unnamed_addr constant <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 3, i8 2, i8 2, i8 1, i8 1, i8 1, [10 x i8] zeroinitializer }>, align 16
@x264_decimate_table8 = dso_local local_unnamed_addr constant <{ [24 x i8], [40 x i8] }> <{ [24 x i8] c"\03\03\03\03\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01", [40 x i8] zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @x264_quant_init(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  store ptr @quant_8x8, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 1
  store ptr @quant_4x4, ptr %4, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 2
  store ptr @quant_4x4_dc, ptr %5, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 3
  store ptr @quant_2x2_dc, ptr %6, align 8, !tbaa !12
  %7 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 5
  store ptr @dequant_4x4, ptr %7, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 6
  store ptr @dequant_4x4_dc, ptr %8, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 4
  store ptr @dequant_8x8, ptr %9, align 8, !tbaa !15
  %10 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 7
  store ptr @x264_denoise_dct, ptr %10, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 8
  store ptr @x264_decimate_score15, ptr %11, align 8, !tbaa !17
  %12 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 9
  store ptr @x264_decimate_score16, ptr %12, align 8, !tbaa !18
  %13 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 10
  store ptr @x264_decimate_score64, ptr %13, align 8, !tbaa !19
  %14 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 11
  %15 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 11, i64 3
  store ptr @x264_coeff_last4, ptr %15, align 8, !tbaa !20
  %16 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 11, i64 1
  store ptr @x264_coeff_last15, ptr %16, align 8, !tbaa !20
  %17 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 11, i64 2
  store ptr @x264_coeff_last16, ptr %17, align 8, !tbaa !20
  %18 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 11, i64 5
  store ptr @x264_coeff_last64, ptr %18, align 8, !tbaa !20
  %19 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 12
  %20 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 12, i64 3
  store ptr @x264_coeff_level_run4, ptr %20, align 8, !tbaa !20
  %21 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 12, i64 1
  store ptr @x264_coeff_level_run15, ptr %21, align 8, !tbaa !20
  %22 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 12, i64 2
  store ptr @x264_coeff_level_run16, ptr %22, align 8, !tbaa !20
  store ptr @x264_coeff_last16, ptr %14, align 8, !tbaa !20
  %23 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 11, i64 4
  store ptr @x264_coeff_last15, ptr %23, align 8, !tbaa !20
  store ptr @x264_coeff_level_run16, ptr %19, align 8, !tbaa !20
  %24 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 12, i64 4
  store ptr @x264_coeff_level_run15, ptr %24, align 8, !tbaa !20
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal i32 @quant_8x8(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  br label %7

4:                                                ; preds = %31
  %5 = icmp ne i32 %34, 0
  %6 = zext i1 %5 to i32
  ret i32 %6

7:                                                ; preds = %3, %31
  %8 = phi i64 [ 0, %3 ], [ %35, %31 ]
  %9 = phi i32 [ 0, %3 ], [ %34, %31 ]
  %10 = getelementptr inbounds i16, ptr %0, i64 %8
  %11 = load i16, ptr %10, align 2, !tbaa !21
  %12 = sext i16 %11 to i32
  %13 = icmp sgt i16 %11, 0
  %14 = getelementptr inbounds i16, ptr %2, i64 %8
  %15 = load i16, ptr %14, align 2, !tbaa !21
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds i16, ptr %1, i64 %8
  %18 = load i16, ptr %17, align 2, !tbaa !21
  %19 = zext i16 %18 to i32
  br i1 %13, label %20, label %25

20:                                               ; preds = %7
  %21 = add nuw nsw i32 %16, %12
  %22 = mul nsw i32 %21, %19
  %23 = lshr i32 %22, 16
  %24 = trunc i32 %23 to i16
  br label %31

25:                                               ; preds = %7
  %26 = sub nsw i32 %16, %12
  %27 = mul nsw i32 %26, %19
  %28 = lshr i32 %27, 16
  %29 = trunc i32 %28 to i16
  %30 = sub i16 0, %29
  br label %31

31:                                               ; preds = %25, %20
  %32 = phi i16 [ %30, %25 ], [ %24, %20 ]
  store i16 %32, ptr %10, align 2, !tbaa !21
  %33 = sext i16 %32 to i32
  %34 = or i32 %9, %33
  %35 = add nuw nsw i64 %8, 1
  %36 = icmp eq i64 %35, 64
  br i1 %36, label %4, label %7, !llvm.loop !23
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal i32 @quant_4x4(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #1 {
  br label %7

4:                                                ; preds = %31
  %5 = icmp ne i32 %34, 0
  %6 = zext i1 %5 to i32
  ret i32 %6

7:                                                ; preds = %3, %31
  %8 = phi i64 [ 0, %3 ], [ %35, %31 ]
  %9 = phi i32 [ 0, %3 ], [ %34, %31 ]
  %10 = getelementptr inbounds i16, ptr %0, i64 %8
  %11 = load i16, ptr %10, align 2, !tbaa !21
  %12 = sext i16 %11 to i32
  %13 = icmp sgt i16 %11, 0
  %14 = getelementptr inbounds i16, ptr %2, i64 %8
  %15 = load i16, ptr %14, align 2, !tbaa !21
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds i16, ptr %1, i64 %8
  %18 = load i16, ptr %17, align 2, !tbaa !21
  %19 = zext i16 %18 to i32
  br i1 %13, label %20, label %25

20:                                               ; preds = %7
  %21 = add nuw nsw i32 %16, %12
  %22 = mul nsw i32 %21, %19
  %23 = lshr i32 %22, 16
  %24 = trunc i32 %23 to i16
  br label %31

25:                                               ; preds = %7
  %26 = sub nsw i32 %16, %12
  %27 = mul nsw i32 %26, %19
  %28 = lshr i32 %27, 16
  %29 = trunc i32 %28 to i16
  %30 = sub i16 0, %29
  br label %31

31:                                               ; preds = %25, %20
  %32 = phi i16 [ %30, %25 ], [ %24, %20 ]
  store i16 %32, ptr %10, align 2, !tbaa !21
  %33 = sext i16 %32 to i32
  %34 = or i32 %9, %33
  %35 = add nuw nsw i64 %8, 1
  %36 = icmp eq i64 %35, 16
  br i1 %36, label %4, label %7, !llvm.loop !25
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal i32 @quant_4x4_dc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = insertelement <4 x i32> poison, i32 %2, i64 0
  %5 = shufflevector <4 x i32> %4, <4 x i32> poison, <4 x i32> zeroinitializer
  %6 = insertelement <4 x i32> poison, i32 %1, i64 0
  %7 = shufflevector <4 x i32> %6, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %8

8:                                                ; preds = %8, %3
  %9 = phi i64 [ 0, %3 ], [ %27, %8 ]
  %10 = phi <4 x i32> [ zeroinitializer, %3 ], [ %26, %8 ]
  %11 = getelementptr inbounds i16, ptr %0, i64 %9
  %12 = load <4 x i16>, ptr %11, align 2, !tbaa !21
  %13 = sext <4 x i16> %12 to <4 x i32>
  %14 = icmp sgt <4 x i16> %12, zeroinitializer
  %15 = sub nsw <4 x i32> %5, %13
  %16 = mul nsw <4 x i32> %15, %7
  %17 = lshr <4 x i32> %16, <i32 16, i32 16, i32 16, i32 16>
  %18 = trunc <4 x i32> %17 to <4 x i16>
  %19 = sub <4 x i16> zeroinitializer, %18
  %20 = add nsw <4 x i32> %5, %13
  %21 = mul nsw <4 x i32> %20, %7
  %22 = lshr <4 x i32> %21, <i32 16, i32 16, i32 16, i32 16>
  %23 = trunc <4 x i32> %22 to <4 x i16>
  %24 = select <4 x i1> %14, <4 x i16> %23, <4 x i16> %19
  store <4 x i16> %24, ptr %11, align 2, !tbaa !21
  %25 = sext <4 x i16> %24 to <4 x i32>
  %26 = or <4 x i32> %10, %25
  %27 = add nuw i64 %9, 4
  %28 = icmp eq i64 %27, 16
  br i1 %28, label %29, label %8, !llvm.loop !26

29:                                               ; preds = %8
  %30 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %26)
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal i32 @quant_2x2_dc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = load i16, ptr %0, align 2, !tbaa !21
  %5 = sext i16 %4 to i32
  %6 = icmp sgt i16 %4, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = add nsw i32 %5, %2
  %9 = mul nsw i32 %8, %1
  %10 = lshr i32 %9, 16
  %11 = trunc i32 %10 to i16
  br label %18

12:                                               ; preds = %3
  %13 = sub nsw i32 %2, %5
  %14 = mul nsw i32 %13, %1
  %15 = lshr i32 %14, 16
  %16 = trunc i32 %15 to i16
  %17 = sub i16 0, %16
  br label %18

18:                                               ; preds = %12, %7
  %19 = phi i16 [ %17, %12 ], [ %11, %7 ]
  store i16 %19, ptr %0, align 2, !tbaa !21
  %20 = getelementptr inbounds i16, ptr %0, i64 1
  %21 = load i16, ptr %20, align 2, !tbaa !21
  %22 = sext i16 %21 to i32
  %23 = icmp sgt i16 %21, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = add nsw i32 %22, %2
  %26 = mul nsw i32 %25, %1
  %27 = lshr i32 %26, 16
  %28 = trunc i32 %27 to i16
  br label %35

29:                                               ; preds = %18
  %30 = sub nsw i32 %2, %22
  %31 = mul nsw i32 %30, %1
  %32 = lshr i32 %31, 16
  %33 = trunc i32 %32 to i16
  %34 = sub i16 0, %33
  br label %35

35:                                               ; preds = %29, %24
  %36 = phi i16 [ %34, %29 ], [ %28, %24 ]
  store i16 %36, ptr %20, align 2, !tbaa !21
  %37 = getelementptr inbounds i16, ptr %0, i64 2
  %38 = load i16, ptr %37, align 2, !tbaa !21
  %39 = sext i16 %38 to i32
  %40 = icmp sgt i16 %38, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = add nsw i32 %39, %2
  %43 = mul nsw i32 %42, %1
  %44 = lshr i32 %43, 16
  %45 = trunc i32 %44 to i16
  br label %52

46:                                               ; preds = %35
  %47 = sub nsw i32 %2, %39
  %48 = mul nsw i32 %47, %1
  %49 = lshr i32 %48, 16
  %50 = trunc i32 %49 to i16
  %51 = sub i16 0, %50
  br label %52

52:                                               ; preds = %46, %41
  %53 = phi i16 [ %51, %46 ], [ %45, %41 ]
  store i16 %53, ptr %37, align 2, !tbaa !21
  %54 = getelementptr inbounds i16, ptr %0, i64 3
  %55 = load i16, ptr %54, align 2, !tbaa !21
  %56 = sext i16 %55 to i32
  %57 = icmp sgt i16 %55, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = add nsw i32 %56, %2
  %60 = mul nsw i32 %59, %1
  %61 = lshr i32 %60, 16
  %62 = trunc i32 %61 to i16
  br label %69

63:                                               ; preds = %52
  %64 = sub nsw i32 %2, %56
  %65 = mul nsw i32 %64, %1
  %66 = lshr i32 %65, 16
  %67 = trunc i32 %66 to i16
  %68 = sub i16 0, %67
  br label %69

69:                                               ; preds = %63, %58
  %70 = phi i16 [ %68, %63 ], [ %62, %58 ]
  store i16 %70, ptr %54, align 2, !tbaa !21
  %71 = or i16 %36, %19
  %72 = or i16 %71, %53
  %73 = or i16 %72, %70
  %74 = icmp ne i16 %73, 0
  %75 = zext i1 %74 to i32
  ret i32 %75
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @dequant_4x4(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = srem i32 %2, 6
  %5 = sdiv i32 %2, 6
  %6 = icmp sgt i32 %2, 23
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = add nsw i32 %5, -4
  %9 = zext nneg i32 %4 to i64
  %10 = insertelement <4 x i32> poison, i32 %8, i64 0
  %11 = shufflevector <4 x i32> %10, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %12

12:                                               ; preds = %12, %7
  %13 = phi i64 [ 0, %7 ], [ %22, %12 ]
  %14 = getelementptr inbounds i16, ptr %0, i64 %13
  %15 = load <4 x i16>, ptr %14, align 2, !tbaa !21
  %16 = zext <4 x i16> %15 to <4 x i32>
  %17 = getelementptr inbounds [16 x i32], ptr %1, i64 %9, i64 %13
  %18 = load <4 x i32>, ptr %17, align 4, !tbaa !29
  %19 = mul <4 x i32> %18, %16
  %20 = shl <4 x i32> %19, %11
  %21 = trunc <4 x i32> %20 to <4 x i16>
  store <4 x i16> %21, ptr %14, align 2, !tbaa !21
  %22 = add nuw i64 %13, 4
  %23 = icmp eq i64 %22, 16
  br i1 %23, label %46, label %12, !llvm.loop !31

24:                                               ; preds = %3
  %25 = sext i32 %4 to i64
  %26 = sub nsw i32 3, %5
  %27 = shl nuw i32 1, %26
  %28 = sub nsw i32 4, %5
  %29 = insertelement <4 x i32> poison, i32 %27, i64 0
  %30 = shufflevector <4 x i32> %29, <4 x i32> poison, <4 x i32> zeroinitializer
  %31 = insertelement <4 x i32> poison, i32 %28, i64 0
  %32 = shufflevector <4 x i32> %31, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %33

33:                                               ; preds = %33, %24
  %34 = phi i64 [ 0, %24 ], [ %44, %33 ]
  %35 = getelementptr inbounds i16, ptr %0, i64 %34
  %36 = load <4 x i16>, ptr %35, align 2, !tbaa !21
  %37 = sext <4 x i16> %36 to <4 x i32>
  %38 = getelementptr inbounds [16 x i32], ptr %1, i64 %25, i64 %34
  %39 = load <4 x i32>, ptr %38, align 4, !tbaa !29
  %40 = mul nsw <4 x i32> %39, %37
  %41 = add nsw <4 x i32> %40, %30
  %42 = ashr <4 x i32> %41, %32
  %43 = trunc <4 x i32> %42 to <4 x i16>
  store <4 x i16> %43, ptr %35, align 2, !tbaa !21
  %44 = add nuw i64 %34, 4
  %45 = icmp eq i64 %44, 16
  br i1 %45, label %46, label %33, !llvm.loop !32

46:                                               ; preds = %33, %12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @dequant_4x4_dc(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = sdiv i32 %2, 6
  %5 = srem i32 %2, 6
  %6 = icmp sgt i32 %2, 35
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = urem i32 %2, 6
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [16 x i32], ptr %1, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !29
  %12 = add nsw i32 %4, -6
  %13 = shl i32 %11, %12
  %14 = trunc i32 %13 to i16
  %15 = insertelement <8 x i16> poison, i16 %14, i64 0
  %16 = shufflevector <8 x i16> %15, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %17

17:                                               ; preds = %17, %7
  %18 = phi i64 [ 0, %7 ], [ %22, %17 ]
  %19 = getelementptr inbounds i16, ptr %0, i64 %18
  %20 = load <8 x i16>, ptr %19, align 2, !tbaa !21
  %21 = mul <8 x i16> %20, %16
  store <8 x i16> %21, ptr %19, align 2, !tbaa !21
  %22 = add nuw i64 %18, 8
  %23 = icmp eq i64 %22, 16
  br i1 %23, label %48, label %17, !llvm.loop !33

24:                                               ; preds = %3
  %25 = sub nsw i32 5, %4
  %26 = shl nuw i32 1, %25
  %27 = sub nsw i32 6, %4
  %28 = sext i32 %5 to i64
  %29 = getelementptr inbounds [16 x i32], ptr %1, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !29
  %31 = insertelement <8 x i32> poison, i32 %30, i64 0
  %32 = shufflevector <8 x i32> %31, <8 x i32> poison, <8 x i32> zeroinitializer
  %33 = insertelement <8 x i32> poison, i32 %26, i64 0
  %34 = shufflevector <8 x i32> %33, <8 x i32> poison, <8 x i32> zeroinitializer
  %35 = insertelement <8 x i32> poison, i32 %27, i64 0
  %36 = shufflevector <8 x i32> %35, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %37

37:                                               ; preds = %37, %24
  %38 = phi i64 [ 0, %24 ], [ %46, %37 ]
  %39 = getelementptr inbounds i16, ptr %0, i64 %38
  %40 = load <8 x i16>, ptr %39, align 2, !tbaa !21
  %41 = sext <8 x i16> %40 to <8 x i32>
  %42 = mul nsw <8 x i32> %32, %41
  %43 = add nsw <8 x i32> %42, %34
  %44 = ashr <8 x i32> %43, %36
  %45 = trunc <8 x i32> %44 to <8 x i16>
  store <8 x i16> %45, ptr %39, align 2, !tbaa !21
  %46 = add nuw i64 %38, 8
  %47 = icmp eq i64 %46, 16
  br i1 %47, label %48, label %37, !llvm.loop !34

48:                                               ; preds = %37, %17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @dequant_8x8(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = srem i32 %2, 6
  %5 = sdiv i32 %2, 6
  %6 = icmp sgt i32 %2, 35
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = add nsw i32 %5, -6
  %9 = zext nneg i32 %4 to i64
  %10 = insertelement <4 x i32> poison, i32 %8, i64 0
  %11 = shufflevector <4 x i32> %10, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %12

12:                                               ; preds = %12, %7
  %13 = phi i64 [ 0, %7 ], [ %22, %12 ]
  %14 = getelementptr inbounds i16, ptr %0, i64 %13
  %15 = load <4 x i16>, ptr %14, align 2, !tbaa !21
  %16 = zext <4 x i16> %15 to <4 x i32>
  %17 = getelementptr inbounds [64 x i32], ptr %1, i64 %9, i64 %13
  %18 = load <4 x i32>, ptr %17, align 4, !tbaa !29
  %19 = mul <4 x i32> %18, %16
  %20 = shl <4 x i32> %19, %11
  %21 = trunc <4 x i32> %20 to <4 x i16>
  store <4 x i16> %21, ptr %14, align 2, !tbaa !21
  %22 = add nuw i64 %13, 4
  %23 = icmp eq i64 %22, 64
  br i1 %23, label %46, label %12, !llvm.loop !35

24:                                               ; preds = %3
  %25 = sext i32 %4 to i64
  %26 = sub nsw i32 5, %5
  %27 = shl nuw i32 1, %26
  %28 = sub nsw i32 6, %5
  %29 = insertelement <4 x i32> poison, i32 %27, i64 0
  %30 = shufflevector <4 x i32> %29, <4 x i32> poison, <4 x i32> zeroinitializer
  %31 = insertelement <4 x i32> poison, i32 %28, i64 0
  %32 = shufflevector <4 x i32> %31, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %33

33:                                               ; preds = %33, %24
  %34 = phi i64 [ 0, %24 ], [ %44, %33 ]
  %35 = getelementptr inbounds i16, ptr %0, i64 %34
  %36 = load <4 x i16>, ptr %35, align 2, !tbaa !21
  %37 = sext <4 x i16> %36 to <4 x i32>
  %38 = getelementptr inbounds [64 x i32], ptr %1, i64 %25, i64 %34
  %39 = load <4 x i32>, ptr %38, align 4, !tbaa !29
  %40 = mul nsw <4 x i32> %39, %37
  %41 = add nsw <4 x i32> %40, %30
  %42 = ashr <4 x i32> %41, %32
  %43 = trunc <4 x i32> %42 to <4 x i16>
  store <4 x i16> %43, ptr %35, align 2, !tbaa !21
  %44 = add nuw i64 %34, 4
  %45 = icmp eq i64 %44, 64
  br i1 %45, label %46, label %33, !llvm.loop !36

46:                                               ; preds = %33, %12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @x264_denoise_dct(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #1 {
  %5 = icmp sgt i32 %3, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = zext nneg i32 %3 to i64
  br label %9

8:                                                ; preds = %9, %4
  ret void

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 1, %6 ], [ %29, %9 ]
  %11 = getelementptr inbounds i16, ptr %0, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !21
  %13 = sext i16 %12 to i32
  %14 = ashr i32 %13, 15
  %15 = add nsw i32 %14, %13
  %16 = xor i32 %15, %14
  %17 = getelementptr inbounds i32, ptr %1, i64 %10
  %18 = load i32, ptr %17, align 4, !tbaa !29
  %19 = add i32 %16, %18
  store i32 %19, ptr %17, align 4, !tbaa !29
  %20 = getelementptr inbounds i16, ptr %2, i64 %10
  %21 = load i16, ptr %20, align 2, !tbaa !21
  %22 = zext i16 %21 to i32
  %23 = sub nsw i32 %16, %22
  %24 = icmp slt i32 %23, 0
  %25 = xor i32 %23, %14
  %26 = sub nsw i32 %25, %14
  %27 = trunc i32 %26 to i16
  %28 = select i1 %24, i16 0, i16 %27
  store i16 %28, ptr %11, align 2, !tbaa !21
  %29 = add nuw nsw i64 %10, 1
  %30 = icmp eq i64 %29, %7
  br i1 %30, label %8, label %9, !llvm.loop !37
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal i32 @x264_decimate_score15(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds i16, ptr %0, i64 1
  %3 = tail call fastcc i32 @x264_decimate_score_internal(ptr noundef nonnull %2, i32 noundef 15) #5
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal i32 @x264_decimate_score16(ptr nocapture noundef readonly %0) #3 {
  %2 = tail call fastcc i32 @x264_decimate_score_internal(ptr noundef %0, i32 noundef 16) #5
  ret i32 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal i32 @x264_decimate_score64(ptr nocapture noundef readonly %0) #3 {
  %2 = tail call fastcc i32 @x264_decimate_score_internal(ptr noundef %0, i32 noundef 64) #5
  ret i32 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal i32 @x264_coeff_last4(ptr nocapture noundef readonly %0) #3 {
  %2 = tail call fastcc i32 @x264_coeff_last_internal(ptr noundef %0, i32 noundef 4) #5, !range !38
  ret i32 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal i32 @x264_coeff_last15(ptr nocapture noundef readonly %0) #3 {
  %2 = tail call fastcc i32 @x264_coeff_last_internal(ptr noundef %0, i32 noundef 15) #5, !range !38
  ret i32 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal i32 @x264_coeff_last16(ptr nocapture noundef readonly %0) #3 {
  %2 = tail call fastcc i32 @x264_coeff_last_internal(ptr noundef %0, i32 noundef 16) #5, !range !38
  ret i32 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal i32 @x264_coeff_last64(ptr nocapture noundef readonly %0) #3 {
  %2 = tail call fastcc i32 @x264_coeff_last_internal(ptr noundef %0, i32 noundef 64) #5, !range !38
  ret i32 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal i32 @x264_coeff_level_run4(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = tail call i32 @x264_coeff_last4(ptr noundef %0) #5, !range !38
  store i32 %3, ptr %1, align 4, !tbaa !39
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i16, ptr %0, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !21
  %7 = getelementptr inbounds %struct.x264_run_level_t, ptr %1, i64 0, i32 1, i64 0
  store i16 %6, ptr %7, align 2, !tbaa !21
  %8 = icmp sgt i32 %3, 0
  br i1 %8, label %9, label %42

9:                                                ; preds = %2, %25
  %10 = phi i64 [ %29, %25 ], [ 0, %2 ]
  %11 = phi i32 [ %26, %25 ], [ %3, %2 ]
  %12 = zext i32 %11 to i64
  %13 = tail call i32 @llvm.smax.i32(i32 %11, i32 1)
  br label %14

14:                                               ; preds = %9, %22
  %15 = phi i64 [ %12, %9 ], [ %17, %22 ]
  %16 = phi i32 [ 0, %9 ], [ %23, %22 ]
  %17 = add nsw i64 %15, -1
  %18 = and i64 %17, 4294967295
  %19 = getelementptr inbounds i16, ptr %0, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !21
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = add nuw nsw i32 %16, 1
  %24 = icmp eq i32 %23, %13
  br i1 %24, label %37, label %14, !llvm.loop !41

25:                                               ; preds = %14
  %26 = trunc i64 %17 to i32
  %27 = trunc i64 %15 to i32
  %28 = trunc i32 %16 to i8
  %29 = add nuw i64 %10, 1
  %30 = getelementptr inbounds %struct.x264_run_level_t, ptr %1, i64 0, i32 2, i64 %10
  store i8 %28, ptr %30, align 1, !tbaa !42
  %31 = shl i64 %17, 32
  %32 = ashr exact i64 %31, 32
  %33 = getelementptr inbounds i16, ptr %0, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !21
  %35 = getelementptr inbounds %struct.x264_run_level_t, ptr %1, i64 0, i32 1, i64 %29
  store i16 %34, ptr %35, align 2, !tbaa !21
  %36 = icmp sgt i32 %27, 1
  br i1 %36, label %9, label %40, !llvm.loop !43

37:                                               ; preds = %22
  %38 = trunc i64 %10 to i32
  %39 = trunc i32 %13 to i8
  br label %42

40:                                               ; preds = %25
  %41 = trunc i64 %29 to i32
  br label %42

42:                                               ; preds = %40, %37, %2
  %43 = phi i32 [ 0, %2 ], [ %38, %37 ], [ %41, %40 ]
  %44 = phi i64 [ 0, %2 ], [ %10, %37 ], [ %29, %40 ]
  %45 = phi i8 [ 0, %2 ], [ %39, %37 ], [ 0, %40 ]
  %46 = add nuw nsw i32 %43, 1
  %47 = getelementptr inbounds %struct.x264_run_level_t, ptr %1, i64 0, i32 2, i64 %44
  store i8 %45, ptr %47, align 1, !tbaa !42
  ret i32 %46
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal i32 @x264_coeff_level_run15(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = tail call i32 @x264_coeff_last15(ptr noundef %0) #5, !range !38
  store i32 %3, ptr %1, align 4, !tbaa !39
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i16, ptr %0, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !21
  %7 = getelementptr inbounds %struct.x264_run_level_t, ptr %1, i64 0, i32 1, i64 0
  store i16 %6, ptr %7, align 2, !tbaa !21
  %8 = icmp sgt i32 %3, 0
  br i1 %8, label %9, label %42

9:                                                ; preds = %2, %25
  %10 = phi i64 [ %29, %25 ], [ 0, %2 ]
  %11 = phi i32 [ %26, %25 ], [ %3, %2 ]
  %12 = zext i32 %11 to i64
  %13 = tail call i32 @llvm.smax.i32(i32 %11, i32 1)
  br label %14

14:                                               ; preds = %9, %22
  %15 = phi i64 [ %12, %9 ], [ %17, %22 ]
  %16 = phi i32 [ 0, %9 ], [ %23, %22 ]
  %17 = add nsw i64 %15, -1
  %18 = and i64 %17, 4294967295
  %19 = getelementptr inbounds i16, ptr %0, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !21
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = add nuw nsw i32 %16, 1
  %24 = icmp eq i32 %23, %13
  br i1 %24, label %37, label %14, !llvm.loop !44

25:                                               ; preds = %14
  %26 = trunc i64 %17 to i32
  %27 = trunc i64 %15 to i32
  %28 = trunc i32 %16 to i8
  %29 = add nuw i64 %10, 1
  %30 = getelementptr inbounds %struct.x264_run_level_t, ptr %1, i64 0, i32 2, i64 %10
  store i8 %28, ptr %30, align 1, !tbaa !42
  %31 = shl i64 %17, 32
  %32 = ashr exact i64 %31, 32
  %33 = getelementptr inbounds i16, ptr %0, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !21
  %35 = getelementptr inbounds %struct.x264_run_level_t, ptr %1, i64 0, i32 1, i64 %29
  store i16 %34, ptr %35, align 2, !tbaa !21
  %36 = icmp sgt i32 %27, 1
  br i1 %36, label %9, label %40, !llvm.loop !45

37:                                               ; preds = %22
  %38 = trunc i64 %10 to i32
  %39 = trunc i32 %13 to i8
  br label %42

40:                                               ; preds = %25
  %41 = trunc i64 %29 to i32
  br label %42

42:                                               ; preds = %40, %37, %2
  %43 = phi i32 [ 0, %2 ], [ %38, %37 ], [ %41, %40 ]
  %44 = phi i64 [ 0, %2 ], [ %10, %37 ], [ %29, %40 ]
  %45 = phi i8 [ 0, %2 ], [ %39, %37 ], [ 0, %40 ]
  %46 = add nuw nsw i32 %43, 1
  %47 = getelementptr inbounds %struct.x264_run_level_t, ptr %1, i64 0, i32 2, i64 %44
  store i8 %45, ptr %47, align 1, !tbaa !42
  ret i32 %46
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal i32 @x264_coeff_level_run16(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = tail call i32 @x264_coeff_last16(ptr noundef %0) #5, !range !38
  store i32 %3, ptr %1, align 4, !tbaa !39
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i16, ptr %0, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !21
  %7 = getelementptr inbounds %struct.x264_run_level_t, ptr %1, i64 0, i32 1, i64 0
  store i16 %6, ptr %7, align 2, !tbaa !21
  %8 = icmp sgt i32 %3, 0
  br i1 %8, label %9, label %42

9:                                                ; preds = %2, %25
  %10 = phi i64 [ %29, %25 ], [ 0, %2 ]
  %11 = phi i32 [ %26, %25 ], [ %3, %2 ]
  %12 = zext i32 %11 to i64
  %13 = tail call i32 @llvm.smax.i32(i32 %11, i32 1)
  br label %14

14:                                               ; preds = %9, %22
  %15 = phi i64 [ %12, %9 ], [ %17, %22 ]
  %16 = phi i32 [ 0, %9 ], [ %23, %22 ]
  %17 = add nsw i64 %15, -1
  %18 = and i64 %17, 4294967295
  %19 = getelementptr inbounds i16, ptr %0, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !21
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = add nuw nsw i32 %16, 1
  %24 = icmp eq i32 %23, %13
  br i1 %24, label %37, label %14, !llvm.loop !46

25:                                               ; preds = %14
  %26 = trunc i64 %17 to i32
  %27 = trunc i64 %15 to i32
  %28 = trunc i32 %16 to i8
  %29 = add nuw i64 %10, 1
  %30 = getelementptr inbounds %struct.x264_run_level_t, ptr %1, i64 0, i32 2, i64 %10
  store i8 %28, ptr %30, align 1, !tbaa !42
  %31 = shl i64 %17, 32
  %32 = ashr exact i64 %31, 32
  %33 = getelementptr inbounds i16, ptr %0, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !21
  %35 = getelementptr inbounds %struct.x264_run_level_t, ptr %1, i64 0, i32 1, i64 %29
  store i16 %34, ptr %35, align 2, !tbaa !21
  %36 = icmp sgt i32 %27, 1
  br i1 %36, label %9, label %40, !llvm.loop !47

37:                                               ; preds = %22
  %38 = trunc i64 %10 to i32
  %39 = trunc i32 %13 to i8
  br label %42

40:                                               ; preds = %25
  %41 = trunc i64 %29 to i32
  br label %42

42:                                               ; preds = %40, %37, %2
  %43 = phi i32 [ 0, %2 ], [ %38, %37 ], [ %41, %40 ]
  %44 = phi i64 [ 0, %2 ], [ %10, %37 ], [ %29, %40 ]
  %45 = phi i8 [ 0, %2 ], [ %39, %37 ], [ 0, %40 ]
  %46 = add nuw nsw i32 %43, 1
  %47 = getelementptr inbounds %struct.x264_run_level_t, ptr %1, i64 0, i32 2, i64 %44
  store i8 %45, ptr %47, align 1, !tbaa !42
  ret i32 %46
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @x264_decimate_score_internal(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = icmp eq i32 %1, 64
  %4 = select i1 %3, ptr @x264_decimate_table8, ptr @x264_decimate_table4
  %5 = add nsw i32 %1, -1
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = getelementptr i16, ptr %0, i64 -1
  br label %9

9:                                                ; preds = %7, %15
  %10 = phi i32 [ %16, %15 ], [ %5, %7 ]
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr i16, ptr %8, i64 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = add nsw i32 %10, -2
  %17 = icmp sgt i32 %10, 1
  br i1 %17, label %9, label %22, !llvm.loop !48

18:                                               ; preds = %9
  %19 = icmp ult i32 %13, 65536
  %20 = sext i1 %19 to i32
  %21 = add nsw i32 %10, %20
  br label %22

22:                                               ; preds = %15, %2, %18
  %23 = phi i32 [ %21, %18 ], [ %5, %2 ], [ %16, %15 ]
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %25, label %56

25:                                               ; preds = %22, %47
  %26 = phi i32 [ %49, %47 ], [ %23, %22 ]
  %27 = phi i32 [ %54, %47 ], [ 0, %22 ]
  %28 = zext nneg i32 %26 to i64
  %29 = getelementptr inbounds i16, ptr %0, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !21
  %31 = sext i16 %30 to i32
  %32 = add nsw i32 %31, 1
  %33 = icmp ult i32 %32, 3
  br i1 %33, label %34, label %56

34:                                               ; preds = %25
  %35 = icmp eq i32 %26, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %34, %44
  %37 = phi i32 [ %39, %44 ], [ %26, %34 ]
  %38 = phi i32 [ %45, %44 ], [ 0, %34 ]
  %39 = add nsw i32 %37, -1
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds i16, ptr %0, i64 %40
  %42 = load i16, ptr %41, align 2, !tbaa !21
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = add nuw i32 %38, 1
  %46 = icmp eq i32 %45, %26
  br i1 %46, label %47, label %36, !llvm.loop !49

47:                                               ; preds = %44, %36, %34
  %48 = phi i32 [ 0, %34 ], [ %38, %36 ], [ %26, %44 ]
  %49 = phi i32 [ -1, %34 ], [ %39, %36 ], [ -1, %44 ]
  %50 = zext nneg i32 %48 to i64
  %51 = getelementptr inbounds i8, ptr %4, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !42
  %53 = zext i8 %52 to i32
  %54 = add nuw nsw i32 %27, %53
  %55 = icmp sgt i32 %49, -1
  br i1 %55, label %25, label %56

56:                                               ; preds = %47, %25, %22
  %57 = phi i32 [ 0, %22 ], [ %54, %47 ], [ 9, %25 ]
  ret i32 %57
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @x264_coeff_last_internal(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = add nsw i32 %1, -1
  %4 = getelementptr i16, ptr %0, i64 -3
  %5 = icmp sgt i32 %1, 3
  br i1 %5, label %6, label %15

6:                                                ; preds = %2, %12
  %7 = phi i32 [ %13, %12 ], [ %3, %2 ]
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr i16, ptr %4, i64 %8
  %10 = load i64, ptr %9, align 8, !tbaa !42
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = add nsw i32 %7, -4
  %14 = icmp sgt i32 %7, 6
  br i1 %14, label %6, label %15, !llvm.loop !50

15:                                               ; preds = %12, %2
  %16 = phi i32 [ %3, %2 ], [ %13, %12 ]
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %29

18:                                               ; preds = %6, %15
  %19 = phi i32 [ %16, %15 ], [ %7, %6 ]
  br label %20

20:                                               ; preds = %18, %26
  %21 = phi i32 [ %27, %26 ], [ %19, %18 ]
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds i16, ptr %0, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !21
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = add nsw i32 %21, -1
  %28 = icmp sgt i32 %21, 0
  br i1 %28, label %20, label %29, !llvm.loop !51

29:                                               ; preds = %20, %26, %15
  %30 = phi i32 [ %16, %15 ], [ -1, %26 ], [ %21, %20 ]
  ret i32 %30
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !8, i64 88, !8, i64 136}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = !{!6, !7, i64 16}
!12 = !{!6, !7, i64 24}
!13 = !{!6, !7, i64 40}
!14 = !{!6, !7, i64 48}
!15 = !{!6, !7, i64 32}
!16 = !{!6, !7, i64 56}
!17 = !{!6, !7, i64 64}
!18 = !{!6, !7, i64 72}
!19 = !{!6, !7, i64 80}
!20 = !{!7, !7, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"short", !8, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = distinct !{!25, !24}
!26 = distinct !{!26, !24, !27, !28}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!30, !30, i64 0}
!30 = !{!"int", !8, i64 0}
!31 = distinct !{!31, !24, !27, !28}
!32 = distinct !{!32, !24, !27, !28}
!33 = distinct !{!33, !24, !27, !28}
!34 = distinct !{!34, !24, !27, !28}
!35 = distinct !{!35, !24, !27, !28}
!36 = distinct !{!36, !24, !27, !28}
!37 = distinct !{!37, !24}
!38 = !{i32 -1, i32 64}
!39 = !{!40, !30, i64 0}
!40 = !{!"", !30, i64 0, !8, i64 4, !8, i64 36}
!41 = distinct !{!41, !24}
!42 = !{!8, !8, i64 0}
!43 = distinct !{!43, !24}
!44 = distinct !{!44, !24}
!45 = distinct !{!45, !24}
!46 = distinct !{!46, !24}
!47 = distinct !{!47, !24}
!48 = distinct !{!48, !24}
!49 = distinct !{!49, !24}
!50 = distinct !{!50, !24}
!51 = distinct !{!51, !24}
