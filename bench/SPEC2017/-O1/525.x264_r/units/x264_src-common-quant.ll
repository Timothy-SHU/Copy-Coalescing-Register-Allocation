; ModuleID = 'x264_src/common/quant.c'
source_filename = "x264_src/common/quant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.x264_quant_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [6 x ptr], [5 x ptr] }
%struct.x264_run_level_t = type { i32, [16 x i16], [16 x i8] }

@x264_decimate_table4 = dso_local local_unnamed_addr constant <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 3, i8 2, i8 2, i8 1, i8 1, i8 1, [10 x i8] zeroinitializer }>, align 16
@x264_decimate_table8 = dso_local local_unnamed_addr constant <{ [24 x i8], [40 x i8] }> <{ [24 x i8] c"\03\03\03\03\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01", [40 x i8] zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_quant_init(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  store ptr @quant_8x8, ptr %2, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 1
  store ptr @quant_4x4, ptr %4, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 2
  store ptr @quant_4x4_dc, ptr %5, align 8, !tbaa !40
  %6 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 3
  store ptr @quant_2x2_dc, ptr %6, align 8, !tbaa !41
  %7 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 5
  store ptr @dequant_4x4, ptr %7, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 6
  store ptr @dequant_4x4_dc, ptr %8, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 4
  store ptr @dequant_8x8, ptr %9, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 7
  store ptr @x264_denoise_dct, ptr %10, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 8
  store ptr @x264_decimate_score15, ptr %11, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 9
  store ptr @x264_decimate_score16, ptr %12, align 8, !tbaa !47
  %13 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 10
  store ptr @x264_decimate_score64, ptr %13, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 11
  %15 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 11, i64 3
  store ptr @x264_coeff_last4, ptr %15, align 8, !tbaa !49
  %16 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 11, i64 1
  store ptr @x264_coeff_last15, ptr %16, align 8, !tbaa !49
  %17 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 11, i64 2
  store ptr @x264_coeff_last16, ptr %17, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 11, i64 5
  store ptr @x264_coeff_last64, ptr %18, align 8, !tbaa !49
  %19 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 12
  %20 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 12, i64 3
  store ptr @x264_coeff_level_run4, ptr %20, align 8, !tbaa !49
  %21 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 12, i64 1
  store ptr @x264_coeff_level_run15, ptr %21, align 8, !tbaa !49
  %22 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 12, i64 2
  store ptr @x264_coeff_level_run16, ptr %22, align 8, !tbaa !49
  store ptr @x264_coeff_last16, ptr %14, align 8, !tbaa !49
  %23 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 11, i64 4
  store ptr @x264_coeff_last15, ptr %23, align 8, !tbaa !49
  store ptr @x264_coeff_level_run16, ptr %19, align 8, !tbaa !49
  %24 = getelementptr inbounds %struct.x264_quant_function_t, ptr %2, i64 0, i32 12, i64 4
  store ptr @x264_coeff_level_run15, ptr %24, align 8, !tbaa !49
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
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
  %11 = load i16, ptr %10, align 2, !tbaa !50
  %12 = sext i16 %11 to i32
  %13 = icmp sgt i16 %11, 0
  %14 = getelementptr inbounds i16, ptr %2, i64 %8
  %15 = load i16, ptr %14, align 2, !tbaa !50
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds i16, ptr %1, i64 %8
  %18 = load i16, ptr %17, align 2, !tbaa !50
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
  store i16 %32, ptr %10, align 2, !tbaa !50
  %33 = sext i16 %32 to i32
  %34 = or i32 %9, %33
  %35 = add nuw nsw i64 %8, 1
  %36 = icmp eq i64 %35, 64
  br i1 %36, label %4, label %7, !llvm.loop !52
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
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
  %11 = load i16, ptr %10, align 2, !tbaa !50
  %12 = sext i16 %11 to i32
  %13 = icmp sgt i16 %11, 0
  %14 = getelementptr inbounds i16, ptr %2, i64 %8
  %15 = load i16, ptr %14, align 2, !tbaa !50
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds i16, ptr %1, i64 %8
  %18 = load i16, ptr %17, align 2, !tbaa !50
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
  store i16 %32, ptr %10, align 2, !tbaa !50
  %33 = sext i16 %32 to i32
  %34 = or i32 %9, %33
  %35 = add nuw nsw i64 %8, 1
  %36 = icmp eq i64 %35, 16
  br i1 %36, label %4, label %7, !llvm.loop !55
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i32 @quant_4x4_dc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  br label %7

4:                                                ; preds = %25
  %5 = icmp ne i32 %28, 0
  %6 = zext i1 %5 to i32
  ret i32 %6

7:                                                ; preds = %3, %25
  %8 = phi i64 [ 0, %3 ], [ %29, %25 ]
  %9 = phi i32 [ 0, %3 ], [ %28, %25 ]
  %10 = getelementptr inbounds i16, ptr %0, i64 %8
  %11 = load i16, ptr %10, align 2, !tbaa !50
  %12 = sext i16 %11 to i32
  %13 = icmp sgt i16 %11, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = add nsw i32 %12, %2
  %16 = mul nsw i32 %15, %1
  %17 = lshr i32 %16, 16
  %18 = trunc i32 %17 to i16
  br label %25

19:                                               ; preds = %7
  %20 = sub nsw i32 %2, %12
  %21 = mul nsw i32 %20, %1
  %22 = lshr i32 %21, 16
  %23 = trunc i32 %22 to i16
  %24 = sub i16 0, %23
  br label %25

25:                                               ; preds = %19, %14
  %26 = phi i16 [ %24, %19 ], [ %18, %14 ]
  store i16 %26, ptr %10, align 2, !tbaa !50
  %27 = sext i16 %26 to i32
  %28 = or i32 %9, %27
  %29 = add nuw nsw i64 %8, 1
  %30 = icmp eq i64 %29, 16
  br i1 %30, label %4, label %7, !llvm.loop !56
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal i32 @quant_2x2_dc(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = load i16, ptr %0, align 2, !tbaa !50
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
  store i16 %19, ptr %0, align 2, !tbaa !50
  %20 = getelementptr inbounds i16, ptr %0, i64 1
  %21 = load i16, ptr %20, align 2, !tbaa !50
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
  store i16 %36, ptr %20, align 2, !tbaa !50
  %37 = getelementptr inbounds i16, ptr %0, i64 2
  %38 = load i16, ptr %37, align 2, !tbaa !50
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
  store i16 %53, ptr %37, align 2, !tbaa !50
  %54 = getelementptr inbounds i16, ptr %0, i64 3
  %55 = load i16, ptr %54, align 2, !tbaa !50
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
  store i16 %70, ptr %54, align 2, !tbaa !50
  %71 = or i16 %36, %19
  %72 = or i16 %71, %53
  %73 = or i16 %72, %70
  %74 = icmp ne i16 %73, 0
  %75 = zext i1 %74 to i32
  ret i32 %75
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @dequant_4x4(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = srem i32 %2, 6
  %5 = sdiv i32 %2, 6
  %6 = add nsw i32 %5, -4
  %7 = icmp sgt i32 %2, 23
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = zext nneg i32 %4 to i64
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %20, %10 ]
  %12 = getelementptr inbounds i16, ptr %0, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !50
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds [16 x i32], ptr %1, i64 %9, i64 %11
  %16 = load i32, ptr %15, align 4, !tbaa !57
  %17 = mul i32 %16, %14
  %18 = shl i32 %17, %6
  %19 = trunc i32 %18 to i16
  store i16 %19, ptr %12, align 2, !tbaa !50
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, 16
  br i1 %21, label %40, label %10, !llvm.loop !59

22:                                               ; preds = %3
  %23 = sub nsw i32 4, %5
  %24 = sub nsw i32 3, %5
  %25 = shl nuw i32 1, %24
  %26 = sext i32 %4 to i64
  br label %27

27:                                               ; preds = %22, %27
  %28 = phi i64 [ 0, %22 ], [ %38, %27 ]
  %29 = getelementptr inbounds i16, ptr %0, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !50
  %31 = sext i16 %30 to i32
  %32 = getelementptr inbounds [16 x i32], ptr %1, i64 %26, i64 %28
  %33 = load i32, ptr %32, align 4, !tbaa !57
  %34 = mul nsw i32 %33, %31
  %35 = add nsw i32 %34, %25
  %36 = ashr i32 %35, %23
  %37 = trunc i32 %36 to i16
  store i16 %37, ptr %29, align 2, !tbaa !50
  %38 = add nuw nsw i64 %28, 1
  %39 = icmp eq i64 %38, 16
  br i1 %39, label %40, label %27, !llvm.loop !60

40:                                               ; preds = %27, %10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @dequant_4x4_dc(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = sdiv i32 %2, 6
  %5 = srem i32 %2, 6
  %6 = icmp sgt i32 %2, 35
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = add nsw i32 %4, -6
  %9 = urem i32 %2, 6
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [16 x i32], ptr %1, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !57
  %13 = shl i32 %12, %8
  %14 = trunc i32 %13 to i16
  br label %15

15:                                               ; preds = %7, %15
  %16 = phi i64 [ 0, %7 ], [ %20, %15 ]
  %17 = getelementptr inbounds i16, ptr %0, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !50
  %19 = mul i16 %18, %14
  store i16 %19, ptr %17, align 2, !tbaa !50
  %20 = add nuw nsw i64 %16, 1
  %21 = icmp eq i64 %20, 16
  br i1 %21, label %40, label %15, !llvm.loop !61

22:                                               ; preds = %3
  %23 = sext i32 %5 to i64
  %24 = getelementptr inbounds [16 x i32], ptr %1, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !57
  %26 = sub nsw i32 6, %4
  %27 = sub nsw i32 5, %4
  %28 = shl nuw i32 1, %27
  br label %29

29:                                               ; preds = %22, %29
  %30 = phi i64 [ 0, %22 ], [ %38, %29 ]
  %31 = getelementptr inbounds i16, ptr %0, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !50
  %33 = sext i16 %32 to i32
  %34 = mul nsw i32 %25, %33
  %35 = add nsw i32 %34, %28
  %36 = ashr i32 %35, %26
  %37 = trunc i32 %36 to i16
  store i16 %37, ptr %31, align 2, !tbaa !50
  %38 = add nuw nsw i64 %30, 1
  %39 = icmp eq i64 %38, 16
  br i1 %39, label %40, label %29, !llvm.loop !62

40:                                               ; preds = %29, %15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @dequant_8x8(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = srem i32 %2, 6
  %5 = sdiv i32 %2, 6
  %6 = add nsw i32 %5, -6
  %7 = icmp sgt i32 %2, 35
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = zext nneg i32 %4 to i64
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %20, %10 ]
  %12 = getelementptr inbounds i16, ptr %0, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !50
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds [64 x i32], ptr %1, i64 %9, i64 %11
  %16 = load i32, ptr %15, align 4, !tbaa !57
  %17 = mul i32 %16, %14
  %18 = shl i32 %17, %6
  %19 = trunc i32 %18 to i16
  store i16 %19, ptr %12, align 2, !tbaa !50
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, 64
  br i1 %21, label %40, label %10, !llvm.loop !63

22:                                               ; preds = %3
  %23 = sub nsw i32 6, %5
  %24 = sub nsw i32 5, %5
  %25 = shl nuw i32 1, %24
  %26 = sext i32 %4 to i64
  br label %27

27:                                               ; preds = %22, %27
  %28 = phi i64 [ 0, %22 ], [ %38, %27 ]
  %29 = getelementptr inbounds i16, ptr %0, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !50
  %31 = sext i16 %30 to i32
  %32 = getelementptr inbounds [64 x i32], ptr %1, i64 %26, i64 %28
  %33 = load i32, ptr %32, align 4, !tbaa !57
  %34 = mul nsw i32 %33, %31
  %35 = add nsw i32 %34, %25
  %36 = ashr i32 %35, %23
  %37 = trunc i32 %36 to i16
  store i16 %37, ptr %29, align 2, !tbaa !50
  %38 = add nuw nsw i64 %28, 1
  %39 = icmp eq i64 %38, 64
  br i1 %39, label %40, label %27, !llvm.loop !64

40:                                               ; preds = %27, %10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
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
  %12 = load i16, ptr %11, align 2, !tbaa !50
  %13 = sext i16 %12 to i32
  %14 = ashr i32 %13, 15
  %15 = add nsw i32 %14, %13
  %16 = xor i32 %15, %14
  %17 = getelementptr inbounds i32, ptr %1, i64 %10
  %18 = load i32, ptr %17, align 4, !tbaa !57
  %19 = add i32 %16, %18
  store i32 %19, ptr %17, align 4, !tbaa !57
  %20 = getelementptr inbounds i16, ptr %2, i64 %10
  %21 = load i16, ptr %20, align 2, !tbaa !50
  %22 = zext i16 %21 to i32
  %23 = sub nsw i32 %16, %22
  %24 = icmp slt i32 %23, 0
  %25 = xor i32 %23, %14
  %26 = sub nsw i32 %25, %14
  %27 = trunc i32 %26 to i16
  %28 = select i1 %24, i16 0, i16 %27
  store i16 %28, ptr %11, align 2, !tbaa !50
  %29 = add nuw nsw i64 %10, 1
  %30 = icmp eq i64 %29, %7
  br i1 %30, label %8, label %9, !llvm.loop !65
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @x264_decimate_score15(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds i16, ptr %0, i64 1
  br label %3

3:                                                ; preds = %1, %10
  %4 = phi i32 [ 14, %1 ], [ %11, %10 ]
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr i16, ptr %2, i64 %5
  %7 = getelementptr i16, ptr %6, i64 -1
  %8 = load i32, ptr %7, align 4, !tbaa !66
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = add nsw i32 %4, -2
  %12 = icmp eq i32 %4, 0
  br i1 %12, label %18, label %3, !llvm.loop !67

13:                                               ; preds = %3
  %14 = load i16, ptr %6, align 2, !tbaa !50
  %15 = icmp eq i16 %14, 0
  %16 = sext i1 %15 to i32
  %17 = add nsw i32 %4, %16
  br label %18

18:                                               ; preds = %10, %13
  %19 = phi i32 [ %17, %13 ], [ -2, %10 ]
  br label %20

20:                                               ; preds = %18, %53
  %21 = phi i32 [ %54, %53 ], [ 0, %18 ]
  %22 = phi i32 [ %55, %53 ], [ %19, %18 ]
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %56

24:                                               ; preds = %20
  %25 = add nsw i32 %22, -1
  %26 = zext nneg i32 %22 to i64
  %27 = getelementptr inbounds i16, ptr %2, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !50
  %29 = sext i16 %28 to i32
  %30 = add nsw i32 %29, 1
  %31 = icmp ult i32 %30, 3
  br i1 %31, label %32, label %53

32:                                               ; preds = %24
  %33 = icmp eq i32 %22, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %32, %41
  %35 = phi i32 [ %43, %41 ], [ 0, %32 ]
  %36 = phi i32 [ %42, %41 ], [ %25, %32 ]
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds i16, ptr %2, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa !50
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = add nsw i32 %36, -1
  %43 = add nuw i32 %35, 1
  %44 = icmp eq i32 %43, %22
  br i1 %44, label %45, label %34, !llvm.loop !68

45:                                               ; preds = %41, %34, %32
  %46 = phi i32 [ %25, %32 ], [ -1, %41 ], [ %36, %34 ]
  %47 = phi i32 [ 0, %32 ], [ %22, %41 ], [ %35, %34 ]
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr @x264_decimate_table4, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !66
  %51 = zext i8 %50 to i32
  %52 = add nsw i32 %21, %51
  br label %53

53:                                               ; preds = %45, %24
  %54 = phi i32 [ %52, %45 ], [ %21, %24 ]
  %55 = phi i32 [ %46, %45 ], [ %25, %24 ]
  br i1 %31, label %20, label %56, !llvm.loop !69

56:                                               ; preds = %20, %53
  %57 = phi i32 [ 9, %53 ], [ %21, %20 ]
  ret i32 %57
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @x264_decimate_score16(ptr nocapture noundef readonly %0) #3 {
  br label %2

2:                                                ; preds = %1, %8
  %3 = phi i64 [ 15, %1 ], [ %9, %8 ]
  %4 = getelementptr i16, ptr %0, i64 %3
  %5 = getelementptr i16, ptr %4, i64 -1
  %6 = load i32, ptr %5, align 4, !tbaa !66
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = add nsw i64 %3, -2
  %10 = icmp ugt i64 %3, 1
  br i1 %10, label %2, label %17, !llvm.loop !67

11:                                               ; preds = %2
  %12 = trunc i64 %3 to i32
  %13 = load i16, ptr %4, align 2, !tbaa !50
  %14 = icmp eq i16 %13, 0
  %15 = sext i1 %14 to i32
  %16 = add nsw i32 %12, %15
  br label %17

17:                                               ; preds = %8, %11
  %18 = phi i32 [ %16, %11 ], [ -1, %8 ]
  br label %19

19:                                               ; preds = %17, %52
  %20 = phi i32 [ %53, %52 ], [ 0, %17 ]
  %21 = phi i32 [ %54, %52 ], [ %18, %17 ]
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %55

23:                                               ; preds = %19
  %24 = add nsw i32 %21, -1
  %25 = zext nneg i32 %21 to i64
  %26 = getelementptr inbounds i16, ptr %0, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !50
  %28 = sext i16 %27 to i32
  %29 = add nsw i32 %28, 1
  %30 = icmp ult i32 %29, 3
  br i1 %30, label %31, label %52

31:                                               ; preds = %23
  %32 = icmp eq i32 %21, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %31, %40
  %34 = phi i32 [ %42, %40 ], [ 0, %31 ]
  %35 = phi i32 [ %41, %40 ], [ %24, %31 ]
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds i16, ptr %0, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !50
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = add nsw i32 %35, -1
  %42 = add nuw i32 %34, 1
  %43 = icmp eq i32 %42, %21
  br i1 %43, label %44, label %33, !llvm.loop !68

44:                                               ; preds = %40, %33, %31
  %45 = phi i32 [ %24, %31 ], [ -1, %40 ], [ %35, %33 ]
  %46 = phi i32 [ 0, %31 ], [ %21, %40 ], [ %34, %33 ]
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr @x264_decimate_table4, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !66
  %50 = zext i8 %49 to i32
  %51 = add nsw i32 %20, %50
  br label %52

52:                                               ; preds = %44, %23
  %53 = phi i32 [ %51, %44 ], [ %20, %23 ]
  %54 = phi i32 [ %45, %44 ], [ %24, %23 ]
  br i1 %30, label %19, label %55, !llvm.loop !69

55:                                               ; preds = %19, %52
  %56 = phi i32 [ 9, %52 ], [ %20, %19 ]
  ret i32 %56
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @x264_decimate_score64(ptr nocapture noundef readonly %0) #3 {
  br label %2

2:                                                ; preds = %1, %8
  %3 = phi i64 [ 63, %1 ], [ %9, %8 ]
  %4 = getelementptr i16, ptr %0, i64 %3
  %5 = getelementptr i16, ptr %4, i64 -1
  %6 = load i32, ptr %5, align 4, !tbaa !66
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = add nsw i64 %3, -2
  %10 = icmp ugt i64 %3, 1
  br i1 %10, label %2, label %17, !llvm.loop !67

11:                                               ; preds = %2
  %12 = trunc i64 %3 to i32
  %13 = load i16, ptr %4, align 2, !tbaa !50
  %14 = icmp eq i16 %13, 0
  %15 = sext i1 %14 to i32
  %16 = add nsw i32 %12, %15
  br label %17

17:                                               ; preds = %8, %11
  %18 = phi i32 [ %16, %11 ], [ -1, %8 ]
  br label %19

19:                                               ; preds = %17, %52
  %20 = phi i32 [ %53, %52 ], [ 0, %17 ]
  %21 = phi i32 [ %54, %52 ], [ %18, %17 ]
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %55

23:                                               ; preds = %19
  %24 = add nsw i32 %21, -1
  %25 = zext nneg i32 %21 to i64
  %26 = getelementptr inbounds i16, ptr %0, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !50
  %28 = sext i16 %27 to i32
  %29 = add nsw i32 %28, 1
  %30 = icmp ult i32 %29, 3
  br i1 %30, label %31, label %52

31:                                               ; preds = %23
  %32 = icmp eq i32 %21, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %31, %40
  %34 = phi i32 [ %42, %40 ], [ 0, %31 ]
  %35 = phi i32 [ %41, %40 ], [ %24, %31 ]
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds i16, ptr %0, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !50
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = add nsw i32 %35, -1
  %42 = add nuw i32 %34, 1
  %43 = icmp eq i32 %42, %21
  br i1 %43, label %44, label %33, !llvm.loop !68

44:                                               ; preds = %40, %33, %31
  %45 = phi i32 [ %24, %31 ], [ -1, %40 ], [ %35, %33 ]
  %46 = phi i32 [ 0, %31 ], [ %21, %40 ], [ %34, %33 ]
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr @x264_decimate_table8, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !66
  %50 = zext i8 %49 to i32
  %51 = add nsw i32 %20, %50
  br label %52

52:                                               ; preds = %44, %23
  %53 = phi i32 [ %51, %44 ], [ %20, %23 ]
  %54 = phi i32 [ %45, %44 ], [ %24, %23 ]
  br i1 %30, label %19, label %55, !llvm.loop !69

55:                                               ; preds = %19, %52
  %56 = phi i32 [ 9, %52 ], [ %20, %19 ]
  ret i32 %56
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @x264_coeff_last4(ptr nocapture noundef readonly %0) #3 {
  %2 = load i64, ptr %0, align 8, !tbaa !66
  %3 = icmp eq i64 %2, 0
  %4 = select i1 %3, i32 -1, i32 3
  br i1 %3, label %14, label %5

5:                                                ; preds = %1, %11
  %6 = phi i32 [ %12, %11 ], [ %4, %1 ]
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds i16, ptr %0, i64 %7
  %9 = load i16, ptr %8, align 2, !tbaa !50
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = add nsw i32 %6, -1
  %13 = icmp sgt i32 %6, 0
  br i1 %13, label %5, label %14, !llvm.loop !70

14:                                               ; preds = %5, %11, %1
  %15 = phi i32 [ %4, %1 ], [ %6, %5 ], [ -1, %11 ]
  ret i32 %15
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @x264_coeff_last15(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i16, ptr %0, i64 -3
  br label %3

3:                                                ; preds = %1, %8
  %4 = phi i64 [ 14, %1 ], [ %9, %8 ]
  %5 = getelementptr i16, ptr %2, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !66
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = add nsw i64 %4, -4
  %10 = icmp ugt i64 %4, 6
  br i1 %10, label %3, label %13, !llvm.loop !71

11:                                               ; preds = %3
  %12 = trunc i64 %4 to i32
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi i32 [ %12, %11 ], [ 2, %8 ]
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %25

16:                                               ; preds = %13, %22
  %17 = phi i32 [ %23, %22 ], [ %14, %13 ]
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds i16, ptr %0, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !50
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = add nsw i32 %17, -1
  %24 = icmp sgt i32 %17, 0
  br i1 %24, label %16, label %25, !llvm.loop !70

25:                                               ; preds = %16, %22, %13
  %26 = phi i32 [ %14, %13 ], [ %17, %16 ], [ -1, %22 ]
  ret i32 %26
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @x264_coeff_last16(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i16, ptr %0, i64 -3
  br label %3

3:                                                ; preds = %1, %8
  %4 = phi i64 [ 15, %1 ], [ %9, %8 ]
  %5 = getelementptr i16, ptr %2, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !66
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = add nsw i64 %4, -4
  %10 = icmp ugt i64 %4, 6
  br i1 %10, label %3, label %13, !llvm.loop !71

11:                                               ; preds = %3
  %12 = trunc i64 %4 to i32
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi i32 [ %12, %11 ], [ -1, %8 ]
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %25

16:                                               ; preds = %13, %22
  %17 = phi i32 [ %23, %22 ], [ %14, %13 ]
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds i16, ptr %0, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !50
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = add nsw i32 %17, -1
  %24 = icmp sgt i32 %17, 0
  br i1 %24, label %16, label %25, !llvm.loop !70

25:                                               ; preds = %16, %22, %13
  %26 = phi i32 [ %14, %13 ], [ %17, %16 ], [ -1, %22 ]
  ret i32 %26
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @x264_coeff_last64(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i16, ptr %0, i64 -3
  br label %3

3:                                                ; preds = %1, %8
  %4 = phi i64 [ 63, %1 ], [ %9, %8 ]
  %5 = getelementptr i16, ptr %2, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !66
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = add nsw i64 %4, -4
  %10 = icmp ugt i64 %4, 6
  br i1 %10, label %3, label %13, !llvm.loop !71

11:                                               ; preds = %3
  %12 = trunc i64 %4 to i32
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi i32 [ %12, %11 ], [ -1, %8 ]
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %25

16:                                               ; preds = %13, %22
  %17 = phi i32 [ %23, %22 ], [ %14, %13 ]
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds i16, ptr %0, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !50
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = add nsw i32 %17, -1
  %24 = icmp sgt i32 %17, 0
  br i1 %24, label %16, label %25, !llvm.loop !70

25:                                               ; preds = %16, %22, %13
  %26 = phi i32 [ %14, %13 ], [ %17, %16 ], [ -1, %22 ]
  ret i32 %26
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i32 @x264_coeff_level_run4(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = load i64, ptr %0, align 8, !tbaa !66
  %4 = icmp eq i64 %3, 0
  %5 = select i1 %4, i32 -1, i32 3
  br i1 %4, label %15, label %6

6:                                                ; preds = %2, %12
  %7 = phi i32 [ %13, %12 ], [ %5, %2 ]
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds i16, ptr %0, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !50
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = add nsw i32 %7, -1
  %14 = icmp sgt i32 %7, 0
  br i1 %14, label %6, label %15, !llvm.loop !70

15:                                               ; preds = %6, %12, %2
  %16 = phi i32 [ %5, %2 ], [ %7, %6 ], [ -1, %12 ]
  store i32 %16, ptr %1, align 4, !tbaa !72
  br label %17

17:                                               ; preds = %46, %15
  %18 = phi i64 [ %51, %46 ], [ 0, %15 ]
  %19 = phi i32 [ %48, %46 ], [ %16, %15 ]
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i16, ptr %0, i64 %20
  %22 = load i16, ptr %21, align 2, !tbaa !50
  %23 = getelementptr inbounds %struct.x264_run_level_t, ptr %1, i64 0, i32 1, i64 %18
  store i16 %22, ptr %23, align 2, !tbaa !50
  %24 = add nsw i32 %19, -1
  %25 = icmp sgt i32 %19, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %17
  %27 = zext nneg i32 %24 to i64
  %28 = getelementptr inbounds i16, ptr %0, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !50
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %37, label %46

31:                                               ; preds = %37
  %32 = add nsw i32 %39, -1
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds i16, ptr %0, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !50
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %42, !llvm.loop !74

37:                                               ; preds = %26, %31
  %38 = phi i32 [ %40, %31 ], [ 0, %26 ]
  %39 = phi i32 [ %32, %31 ], [ %24, %26 ]
  %40 = add nuw i32 %38, 1
  %41 = icmp eq i32 %40, %19
  br i1 %41, label %42, label %31, !llvm.loop !74

42:                                               ; preds = %31, %37
  %43 = phi i32 [ %40, %31 ], [ %19, %37 ]
  %44 = phi i32 [ %32, %31 ], [ -1, %37 ]
  %45 = icmp sgt i32 %39, 0
  br label %46

46:                                               ; preds = %42, %26, %17
  %47 = phi i32 [ 0, %17 ], [ 0, %26 ], [ %43, %42 ]
  %48 = phi i32 [ %24, %17 ], [ %24, %26 ], [ %44, %42 ]
  %49 = phi i1 [ %25, %17 ], [ %25, %26 ], [ %45, %42 ]
  %50 = trunc i32 %47 to i8
  %51 = add nuw i64 %18, 1
  %52 = getelementptr inbounds %struct.x264_run_level_t, ptr %1, i64 0, i32 2, i64 %18
  store i8 %50, ptr %52, align 1, !tbaa !66
  br i1 %49, label %17, label %53, !llvm.loop !75

53:                                               ; preds = %46
  %54 = trunc i64 %51 to i32
  ret i32 %54
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i32 @x264_coeff_level_run15(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr i16, ptr %0, i64 -3
  br label %4

4:                                                ; preds = %2, %9
  %5 = phi i64 [ 14, %2 ], [ %10, %9 ]
  %6 = getelementptr i16, ptr %3, i64 %5
  %7 = load i64, ptr %6, align 8, !tbaa !66
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = add nsw i64 %5, -4
  %11 = icmp ugt i64 %5, 6
  br i1 %11, label %4, label %14, !llvm.loop !71

12:                                               ; preds = %4
  %13 = trunc i64 %5 to i32
  br label %14

14:                                               ; preds = %9, %12
  %15 = phi i32 [ %13, %12 ], [ 2, %9 ]
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %26

17:                                               ; preds = %14, %23
  %18 = phi i32 [ %24, %23 ], [ %15, %14 ]
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds i16, ptr %0, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !50
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = add nsw i32 %18, -1
  %25 = icmp sgt i32 %18, 0
  br i1 %25, label %17, label %26, !llvm.loop !70

26:                                               ; preds = %17, %23, %14
  %27 = phi i32 [ %15, %14 ], [ %18, %17 ], [ -1, %23 ]
  store i32 %27, ptr %1, align 4, !tbaa !72
  br label %28

28:                                               ; preds = %57, %26
  %29 = phi i64 [ %62, %57 ], [ 0, %26 ]
  %30 = phi i32 [ %59, %57 ], [ %27, %26 ]
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i16, ptr %0, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !50
  %34 = getelementptr inbounds %struct.x264_run_level_t, ptr %1, i64 0, i32 1, i64 %29
  store i16 %33, ptr %34, align 2, !tbaa !50
  %35 = add nsw i32 %30, -1
  %36 = icmp sgt i32 %30, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %28
  %38 = zext nneg i32 %35 to i64
  %39 = getelementptr inbounds i16, ptr %0, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !50
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %48, label %57

42:                                               ; preds = %48
  %43 = add nsw i32 %50, -1
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds i16, ptr %0, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !50
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %53, !llvm.loop !76

48:                                               ; preds = %37, %42
  %49 = phi i32 [ %51, %42 ], [ 0, %37 ]
  %50 = phi i32 [ %43, %42 ], [ %35, %37 ]
  %51 = add nuw i32 %49, 1
  %52 = icmp eq i32 %51, %30
  br i1 %52, label %53, label %42, !llvm.loop !76

53:                                               ; preds = %42, %48
  %54 = phi i32 [ %51, %42 ], [ %30, %48 ]
  %55 = phi i32 [ %43, %42 ], [ -1, %48 ]
  %56 = icmp sgt i32 %50, 0
  br label %57

57:                                               ; preds = %53, %37, %28
  %58 = phi i32 [ 0, %28 ], [ 0, %37 ], [ %54, %53 ]
  %59 = phi i32 [ %35, %28 ], [ %35, %37 ], [ %55, %53 ]
  %60 = phi i1 [ %36, %28 ], [ %36, %37 ], [ %56, %53 ]
  %61 = trunc i32 %58 to i8
  %62 = add nuw i64 %29, 1
  %63 = getelementptr inbounds %struct.x264_run_level_t, ptr %1, i64 0, i32 2, i64 %29
  store i8 %61, ptr %63, align 1, !tbaa !66
  br i1 %60, label %28, label %64, !llvm.loop !77

64:                                               ; preds = %57
  %65 = trunc i64 %62 to i32
  ret i32 %65
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i32 @x264_coeff_level_run16(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr i16, ptr %0, i64 -3
  br label %4

4:                                                ; preds = %2, %9
  %5 = phi i64 [ 15, %2 ], [ %10, %9 ]
  %6 = getelementptr i16, ptr %3, i64 %5
  %7 = load i64, ptr %6, align 8, !tbaa !66
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = add nsw i64 %5, -4
  %11 = icmp ugt i64 %5, 6
  br i1 %11, label %4, label %14, !llvm.loop !71

12:                                               ; preds = %4
  %13 = trunc i64 %5 to i32
  br label %14

14:                                               ; preds = %9, %12
  %15 = phi i32 [ %13, %12 ], [ -1, %9 ]
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %26

17:                                               ; preds = %14, %23
  %18 = phi i32 [ %24, %23 ], [ %15, %14 ]
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds i16, ptr %0, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !50
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = add nsw i32 %18, -1
  %25 = icmp sgt i32 %18, 0
  br i1 %25, label %17, label %26, !llvm.loop !70

26:                                               ; preds = %17, %23, %14
  %27 = phi i32 [ %15, %14 ], [ %18, %17 ], [ -1, %23 ]
  store i32 %27, ptr %1, align 4, !tbaa !72
  br label %28

28:                                               ; preds = %57, %26
  %29 = phi i64 [ %62, %57 ], [ 0, %26 ]
  %30 = phi i32 [ %59, %57 ], [ %27, %26 ]
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i16, ptr %0, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !50
  %34 = getelementptr inbounds %struct.x264_run_level_t, ptr %1, i64 0, i32 1, i64 %29
  store i16 %33, ptr %34, align 2, !tbaa !50
  %35 = add nsw i32 %30, -1
  %36 = icmp sgt i32 %30, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %28
  %38 = zext nneg i32 %35 to i64
  %39 = getelementptr inbounds i16, ptr %0, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !50
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %48, label %57

42:                                               ; preds = %48
  %43 = add nsw i32 %50, -1
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds i16, ptr %0, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !50
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %53, !llvm.loop !78

48:                                               ; preds = %37, %42
  %49 = phi i32 [ %51, %42 ], [ 0, %37 ]
  %50 = phi i32 [ %43, %42 ], [ %35, %37 ]
  %51 = add nuw i32 %49, 1
  %52 = icmp eq i32 %51, %30
  br i1 %52, label %53, label %42, !llvm.loop !78

53:                                               ; preds = %42, %48
  %54 = phi i32 [ %51, %42 ], [ %30, %48 ]
  %55 = phi i32 [ %43, %42 ], [ -1, %48 ]
  %56 = icmp sgt i32 %50, 0
  br label %57

57:                                               ; preds = %53, %37, %28
  %58 = phi i32 [ 0, %28 ], [ 0, %37 ], [ %54, %53 ]
  %59 = phi i32 [ %35, %28 ], [ %35, %37 ], [ %55, %53 ]
  %60 = phi i1 [ %36, %28 ], [ %36, %37 ], [ %56, %53 ]
  %61 = trunc i32 %58 to i8
  %62 = add nuw i64 %29, 1
  %63 = getelementptr inbounds %struct.x264_run_level_t, ptr %1, i64 0, i32 2, i64 %29
  store i8 %61, ptr %63, align 1, !tbaa !66
  br i1 %60, label %28, label %64, !llvm.loop !79

64:                                               ; preds = %57
  %65 = trunc i64 %62 to i32
  ret i32 %65
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 11233431}
!8 = !{!"MaxCount", i64 921600}
!9 = !{!"MaxInternalCount", i64 921600}
!10 = !{!"MaxFunctionCount", i64 921600}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 921600, i32 8}
!18 = !{i32 100000, i64 921600, i32 8}
!19 = !{i32 200000, i64 921600, i32 8}
!20 = !{i32 300000, i64 921600, i32 8}
!21 = !{i32 400000, i64 921600, i32 8}
!22 = !{i32 500000, i64 921600, i32 8}
!23 = !{i32 600000, i64 921600, i32 8}
!24 = !{i32 700000, i64 915762, i32 9}
!25 = !{i32 800000, i64 908579, i32 10}
!26 = !{i32 900000, i64 460800, i32 13}
!27 = !{i32 950000, i64 460800, i32 13}
!28 = !{i32 990000, i64 115200, i32 14}
!29 = !{i32 999000, i64 12790, i32 20}
!30 = !{i32 999900, i64 536, i32 29}
!31 = !{i32 999990, i64 90, i32 32}
!32 = !{i32 999999, i64 1, i32 66}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 0}
!35 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !37, i64 136}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!35, !36, i64 8}
!40 = !{!35, !36, i64 16}
!41 = !{!35, !36, i64 24}
!42 = !{!35, !36, i64 40}
!43 = !{!35, !36, i64 48}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 56}
!46 = !{!35, !36, i64 64}
!47 = !{!35, !36, i64 72}
!48 = !{!35, !36, i64 80}
!49 = !{!36, !36, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"short", !37, i64 0}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{!55, !53, !54}
!56 = distinct !{!56, !53, !54}
!57 = !{!58, !58, i64 0}
!58 = !{!"int", !37, i64 0}
!59 = distinct !{!59, !53, !54}
!60 = distinct !{!60, !53, !54}
!61 = distinct !{!61, !53, !54}
!62 = distinct !{!62, !53, !54}
!63 = distinct !{!63, !53, !54}
!64 = distinct !{!64, !53, !54}
!65 = distinct !{!65, !53, !54}
!66 = !{!37, !37, i64 0}
!67 = distinct !{!67, !53, !54}
!68 = distinct !{!68, !53, !54}
!69 = distinct !{!69, !53, !54}
!70 = distinct !{!70, !53, !54}
!71 = distinct !{!71, !53, !54}
!72 = !{!73, !58, i64 0}
!73 = !{!"", !58, i64 0, !37, i64 4, !37, i64 36}
!74 = distinct !{!74, !53, !54}
!75 = distinct !{!75, !53, !54}
!76 = distinct !{!76, !53, !54}
!77 = distinct !{!77, !53, !54}
!78 = distinct !{!78, !53, !54}
!79 = distinct !{!79, !53, !54}
