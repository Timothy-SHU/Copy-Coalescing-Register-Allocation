; ModuleID = 'x264_src/common/predict.c'
source_filename = "x264_src/common/predict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_predict_16x16_init(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  store ptr @predict_16x16_v, ptr %1, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %1, i64 1
  store ptr @predict_16x16_h, ptr %3, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %1, i64 2
  store ptr @predict_16x16_dc, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %1, i64 3
  store ptr @predict_16x16_p, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds ptr, ptr %1, i64 4
  store ptr @predict_16x16_dc_left, ptr %6, align 8, !tbaa !34
  %7 = getelementptr inbounds ptr, ptr %1, i64 5
  store ptr @predict_16x16_dc_top, ptr %7, align 8, !tbaa !34
  %8 = getelementptr inbounds ptr, ptr %1, i64 6
  store ptr @predict_16x16_dc_128, ptr %8, align 8, !tbaa !34
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_16x16_v(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  %3 = load i32, ptr %2, align 4, !tbaa !38
  %4 = getelementptr inbounds i8, ptr %0, i64 -28
  %5 = load i32, ptr %4, align 4, !tbaa !38
  %6 = getelementptr inbounds i8, ptr %0, i64 -24
  %7 = load i32, ptr %6, align 4, !tbaa !38
  %8 = getelementptr inbounds i8, ptr %0, i64 -20
  %9 = load i32, ptr %8, align 4, !tbaa !38
  br label %11

10:                                               ; preds = %11
  ret void

11:                                               ; preds = %1, %11
  %12 = phi i32 [ 0, %1 ], [ %18, %11 ]
  %13 = phi ptr [ %0, %1 ], [ %17, %11 ]
  store i32 %3, ptr %13, align 4, !tbaa !38
  %14 = getelementptr inbounds i8, ptr %13, i64 4
  store i32 %5, ptr %14, align 4, !tbaa !38
  %15 = getelementptr inbounds i8, ptr %13, i64 8
  store i32 %7, ptr %15, align 4, !tbaa !38
  %16 = getelementptr inbounds i8, ptr %13, i64 12
  store i32 %9, ptr %16, align 4, !tbaa !38
  %17 = getelementptr inbounds i8, ptr %13, i64 32
  %18 = add nuw nsw i32 %12, 1
  %19 = icmp eq i32 %18, 16
  br i1 %19, label %10, label %11, !llvm.loop !39
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @predict_16x16_h(ptr nocapture noundef %0) #2 {
  br label %3

2:                                                ; preds = %3
  ret void

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %0, %1 ], [ %13, %3 ]
  %5 = phi i32 [ 0, %1 ], [ %14, %3 ]
  %6 = getelementptr inbounds i8, ptr %4, i64 -1
  %7 = load i8, ptr %6, align 1, !tbaa !38
  %8 = zext i8 %7 to i32
  %9 = mul nuw nsw i32 %8, 16843009
  store i32 %9, ptr %4, align 4, !tbaa !38
  %10 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %9, ptr %10, align 4, !tbaa !38
  %11 = getelementptr inbounds i8, ptr %4, i64 8
  store i32 %9, ptr %11, align 4, !tbaa !38
  %12 = getelementptr inbounds i8, ptr %4, i64 12
  store i32 %9, ptr %12, align 4, !tbaa !38
  %13 = getelementptr inbounds i8, ptr %4, i64 32
  %14 = add nuw nsw i32 %5, 1
  %15 = icmp eq i32 %14, 16
  br i1 %15, label %2, label %3, !llvm.loop !42
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_16x16_dc(ptr nocapture noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i64 -1
  br label %7

3:                                                ; preds = %7
  %4 = add i32 %19, 16
  %5 = lshr i32 %4, 5
  %6 = mul i32 %5, 16843009
  br label %23

7:                                                ; preds = %1, %7
  %8 = phi i64 [ 0, %1 ], [ %20, %7 ]
  %9 = phi i32 [ 0, %1 ], [ %19, %7 ]
  %10 = shl nuw nsw i64 %8, 5
  %11 = getelementptr i8, ptr %2, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !38
  %13 = zext i8 %12 to i32
  %14 = add i32 %9, %13
  %15 = or disjoint i64 %8, -32
  %16 = getelementptr inbounds i8, ptr %0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !38
  %18 = zext i8 %17 to i32
  %19 = add i32 %14, %18
  %20 = add nuw nsw i64 %8, 1
  %21 = icmp eq i64 %20, 16
  br i1 %21, label %3, label %7, !llvm.loop !43

22:                                               ; preds = %23
  ret void

23:                                               ; preds = %3, %23
  %24 = phi i32 [ 0, %3 ], [ %30, %23 ]
  %25 = phi ptr [ %0, %3 ], [ %29, %23 ]
  store i32 %6, ptr %25, align 4, !tbaa !38
  %26 = getelementptr inbounds i8, ptr %25, i64 4
  store i32 %6, ptr %26, align 4, !tbaa !38
  %27 = getelementptr inbounds i8, ptr %25, i64 8
  store i32 %6, ptr %27, align 4, !tbaa !38
  %28 = getelementptr inbounds i8, ptr %25, i64 12
  store i32 %6, ptr %28, align 4, !tbaa !38
  %29 = getelementptr inbounds i8, ptr %25, i64 32
  %30 = add nuw nsw i32 %24, 1
  %31 = icmp eq i32 %30, 16
  br i1 %31, label %22, label %23, !llvm.loop !44
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_16x16_p(ptr nocapture noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i64 255
  br label %22

3:                                                ; preds = %22
  %4 = getelementptr inbounds i8, ptr %0, i64 479
  %5 = load i8, ptr %4, align 1, !tbaa !38
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds i8, ptr %0, i64 -17
  %8 = load i8, ptr %7, align 1, !tbaa !38
  %9 = zext i8 %8 to i32
  %10 = add nuw nsw i32 %9, %6
  %11 = shl nuw nsw i32 %10, 4
  %12 = mul nsw i32 %38, 5
  %13 = add nsw i32 %12, 32
  %14 = ashr i32 %13, 6
  %15 = mul nsw i32 %50, 5
  %16 = add nsw i32 %15, 32
  %17 = ashr i32 %16, 6
  %18 = add nsw i32 %14, %17
  %19 = mul nsw i32 %18, -7
  %20 = add nsw i32 %19, 16
  %21 = add nsw i32 %20, %11
  br label %52

22:                                               ; preds = %1, %22
  %23 = phi i64 [ 0, %1 ], [ %26, %22 ]
  %24 = phi i32 [ 0, %1 ], [ %38, %22 ]
  %25 = phi i32 [ 0, %1 ], [ %50, %22 ]
  %26 = add nuw nsw i64 %23, 1
  %27 = or disjoint i64 %23, -24
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !38
  %30 = zext i8 %29 to i32
  %31 = sub nuw nsw i64 -26, %23
  %32 = getelementptr inbounds i8, ptr %0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !38
  %34 = zext i8 %33 to i32
  %35 = sub nsw i32 %30, %34
  %36 = trunc i64 %26 to i32
  %37 = mul nsw i32 %35, %36
  %38 = add nsw i32 %37, %24
  %39 = shl nuw nsw i64 %23, 5
  %40 = getelementptr i8, ptr %2, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !38
  %42 = zext i8 %41 to i32
  %43 = sub nsw i64 191, %39
  %44 = getelementptr inbounds i8, ptr %0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !38
  %46 = zext i8 %45 to i32
  %47 = sub nsw i32 %42, %46
  %48 = trunc i64 %26 to i32
  %49 = mul nsw i32 %47, %48
  %50 = add nsw i32 %49, %25
  %51 = icmp eq i64 %26, 8
  br i1 %51, label %3, label %22, !llvm.loop !45

52:                                               ; preds = %3, %57
  %53 = phi i32 [ 0, %3 ], [ %60, %57 ]
  %54 = phi i32 [ %21, %3 ], [ %59, %57 ]
  %55 = phi ptr [ %0, %3 ], [ %58, %57 ]
  br label %62

56:                                               ; preds = %57
  ret void

57:                                               ; preds = %62
  %58 = getelementptr inbounds i8, ptr %55, i64 32
  %59 = add nsw i32 %54, %17
  %60 = add nuw nsw i32 %53, 1
  %61 = icmp eq i32 %60, 16
  br i1 %61, label %56, label %52, !llvm.loop !46

62:                                               ; preds = %52, %62
  %63 = phi i64 [ 0, %52 ], [ %73, %62 ]
  %64 = phi i32 [ %54, %52 ], [ %72, %62 ]
  %65 = ashr i32 %64, 5
  %66 = icmp ult i32 %65, 256
  %67 = icmp sgt i32 %65, 0
  %68 = sext i1 %67 to i32
  %69 = select i1 %66, i32 %65, i32 %68
  %70 = trunc i32 %69 to i8
  %71 = getelementptr inbounds i8, ptr %55, i64 %63
  store i8 %70, ptr %71, align 1, !tbaa !38
  %72 = add nsw i32 %64, %14
  %73 = add nuw nsw i64 %63, 1
  %74 = icmp eq i64 %73, 16
  br i1 %74, label %57, label %62, !llvm.loop !47
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_16x16_dc_left(ptr nocapture noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i64 -1
  br label %7

3:                                                ; preds = %7
  %4 = add i32 %14, 8
  %5 = lshr i32 %4, 4
  %6 = mul i32 %5, 16843009
  br label %18

7:                                                ; preds = %1, %7
  %8 = phi i64 [ 0, %1 ], [ %15, %7 ]
  %9 = phi i32 [ 0, %1 ], [ %14, %7 ]
  %10 = shl nuw nsw i64 %8, 5
  %11 = getelementptr i8, ptr %2, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !38
  %13 = zext i8 %12 to i32
  %14 = add i32 %9, %13
  %15 = add nuw nsw i64 %8, 1
  %16 = icmp eq i64 %15, 16
  br i1 %16, label %3, label %7, !llvm.loop !48

17:                                               ; preds = %18
  ret void

18:                                               ; preds = %3, %18
  %19 = phi i32 [ 0, %3 ], [ %25, %18 ]
  %20 = phi ptr [ %0, %3 ], [ %24, %18 ]
  store i32 %6, ptr %20, align 4, !tbaa !38
  %21 = getelementptr inbounds i8, ptr %20, i64 4
  store i32 %6, ptr %21, align 4, !tbaa !38
  %22 = getelementptr inbounds i8, ptr %20, i64 8
  store i32 %6, ptr %22, align 4, !tbaa !38
  %23 = getelementptr inbounds i8, ptr %20, i64 12
  store i32 %6, ptr %23, align 4, !tbaa !38
  %24 = getelementptr inbounds i8, ptr %20, i64 32
  %25 = add nuw nsw i32 %19, 1
  %26 = icmp eq i32 %25, 16
  br i1 %26, label %17, label %18, !llvm.loop !49
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_16x16_dc_top(ptr nocapture noundef %0) #1 {
  br label %6

2:                                                ; preds = %6
  %3 = add i32 %13, 8
  %4 = lshr i32 %3, 4
  %5 = mul i32 %4, 16843009
  br label %17

6:                                                ; preds = %1, %6
  %7 = phi i64 [ 0, %1 ], [ %14, %6 ]
  %8 = phi i32 [ 0, %1 ], [ %13, %6 ]
  %9 = or disjoint i64 %7, -32
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !38
  %12 = zext i8 %11 to i32
  %13 = add i32 %8, %12
  %14 = add nuw nsw i64 %7, 1
  %15 = icmp eq i64 %14, 16
  br i1 %15, label %2, label %6, !llvm.loop !50

16:                                               ; preds = %17
  ret void

17:                                               ; preds = %2, %17
  %18 = phi i32 [ 0, %2 ], [ %24, %17 ]
  %19 = phi ptr [ %0, %2 ], [ %23, %17 ]
  store i32 %5, ptr %19, align 4, !tbaa !38
  %20 = getelementptr inbounds i8, ptr %19, i64 4
  store i32 %5, ptr %20, align 4, !tbaa !38
  %21 = getelementptr inbounds i8, ptr %19, i64 8
  store i32 %5, ptr %21, align 4, !tbaa !38
  %22 = getelementptr inbounds i8, ptr %19, i64 12
  store i32 %5, ptr %22, align 4, !tbaa !38
  %23 = getelementptr inbounds i8, ptr %19, i64 32
  %24 = add nuw nsw i32 %18, 1
  %25 = icmp eq i32 %24, 16
  br i1 %25, label %16, label %17, !llvm.loop !51
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define internal void @predict_16x16_dc_128(ptr nocapture noundef writeonly %0) #3 {
  br label %3

2:                                                ; preds = %3
  ret void

3:                                                ; preds = %1, %3
  %4 = phi i32 [ 0, %1 ], [ %7, %3 ]
  %5 = phi ptr [ %0, %1 ], [ %6, %3 ]
  %6 = getelementptr inbounds i8, ptr %5, i64 32
  %7 = add nuw nsw i32 %4, 1
  %8 = icmp eq i32 %7, 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 -128, i64 16, i1 false)
  br i1 %8, label %2, label %3, !llvm.loop !52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_predict_8x8c_init(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds ptr, ptr %1, i64 2
  store ptr @predict_8x8c_v, ptr %3, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %1, i64 1
  store ptr @predict_8x8c_h, ptr %4, align 8, !tbaa !34
  store ptr @predict_8x8c_dc, ptr %1, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %1, i64 3
  store ptr @predict_8x8c_p, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds ptr, ptr %1, i64 4
  store ptr @predict_8x8c_dc_left, ptr %6, align 8, !tbaa !34
  %7 = getelementptr inbounds ptr, ptr %1, i64 5
  store ptr @predict_8x8c_dc_top, ptr %7, align 8, !tbaa !34
  %8 = getelementptr inbounds ptr, ptr %1, i64 6
  store ptr @predict_8x8c_dc_128, ptr %8, align 8, !tbaa !34
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8c_v(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  %3 = load i32, ptr %2, align 4, !tbaa !38
  %4 = getelementptr inbounds i8, ptr %0, i64 -28
  %5 = load i32, ptr %4, align 4, !tbaa !38
  br label %7

6:                                                ; preds = %7
  ret void

7:                                                ; preds = %1, %7
  %8 = phi i32 [ 0, %1 ], [ %12, %7 ]
  %9 = phi ptr [ %0, %1 ], [ %11, %7 ]
  store i32 %3, ptr %9, align 4, !tbaa !38
  %10 = getelementptr inbounds i8, ptr %9, i64 4
  store i32 %5, ptr %10, align 4, !tbaa !38
  %11 = getelementptr inbounds i8, ptr %9, i64 32
  %12 = add nuw nsw i32 %8, 1
  %13 = icmp eq i32 %12, 8
  br i1 %13, label %6, label %7, !llvm.loop !53
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8c_h(ptr nocapture noundef %0) #2 {
  br label %3

2:                                                ; preds = %3
  ret void

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %0, %1 ], [ %11, %3 ]
  %5 = phi i32 [ 0, %1 ], [ %12, %3 ]
  %6 = getelementptr inbounds i8, ptr %4, i64 -1
  %7 = load i8, ptr %6, align 1, !tbaa !38
  %8 = zext i8 %7 to i32
  %9 = mul nuw nsw i32 %8, 16843009
  store i32 %9, ptr %4, align 4, !tbaa !38
  %10 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %9, ptr %10, align 4, !tbaa !38
  %11 = getelementptr inbounds i8, ptr %4, i64 32
  %12 = add nuw nsw i32 %5, 1
  %13 = icmp eq i32 %12, 8
  br i1 %13, label %2, label %3, !llvm.loop !54
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8c_dc(ptr nocapture noundef %0) #1 {
  br label %15

2:                                                ; preds = %15
  %3 = add nuw i32 %36, 4
  %4 = add nuw i32 %3, %25
  %5 = lshr i32 %4, 3
  %6 = mul nsw i32 %5, 16843009
  %7 = add nuw nsw i32 %30, 2
  %8 = lshr i32 %7, 2
  %9 = mul nsw i32 %8, 16843009
  %10 = add nuw nsw i32 %40, 2
  %11 = lshr i32 %10, 2
  %12 = add nuw i32 %40, 4
  %13 = add nuw i32 %12, %30
  %14 = lshr i32 %13, 3
  br label %43

15:                                               ; preds = %1, %15
  %16 = phi i64 [ 0, %1 ], [ %41, %15 ]
  %17 = phi i32 [ 0, %1 ], [ %25, %15 ]
  %18 = phi i32 [ 0, %1 ], [ %30, %15 ]
  %19 = phi i32 [ 0, %1 ], [ %36, %15 ]
  %20 = phi i32 [ 0, %1 ], [ %40, %15 ]
  %21 = or disjoint i64 %16, -32
  %22 = getelementptr inbounds i8, ptr %0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !38
  %24 = zext i8 %23 to i32
  %25 = add nuw nsw i32 %17, %24
  %26 = or disjoint i64 %16, -28
  %27 = getelementptr inbounds i8, ptr %0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !38
  %29 = zext i8 %28 to i32
  %30 = add nuw nsw i32 %18, %29
  %31 = shl nuw nsw i64 %16, 5
  %32 = getelementptr i8, ptr %0, i64 %31
  %33 = getelementptr i8, ptr %32, i64 -1
  %34 = load i8, ptr %33, align 1, !tbaa !38
  %35 = zext i8 %34 to i32
  %36 = add nuw nsw i32 %19, %35
  %37 = getelementptr i8, ptr %32, i64 127
  %38 = load i8, ptr %37, align 1, !tbaa !38
  %39 = zext i8 %38 to i32
  %40 = add nuw nsw i32 %20, %39
  %41 = add nuw nsw i64 %16, 1
  %42 = icmp eq i64 %41, 4
  br i1 %42, label %2, label %15, !llvm.loop !55

43:                                               ; preds = %2, %43
  %44 = phi i32 [ 0, %2 ], [ %48, %43 ]
  %45 = phi ptr [ %0, %2 ], [ %47, %43 ]
  store i32 %6, ptr %45, align 4, !tbaa !38
  %46 = getelementptr inbounds i8, ptr %45, i64 4
  store i32 %9, ptr %46, align 4, !tbaa !38
  %47 = getelementptr inbounds i8, ptr %45, i64 32
  %48 = add nuw nsw i32 %44, 1
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %50, label %43, !llvm.loop !56

50:                                               ; preds = %43
  %51 = mul nsw i32 %11, 16843009
  %52 = mul nsw i32 %14, 16843009
  br label %54

53:                                               ; preds = %54
  ret void

54:                                               ; preds = %50, %54
  %55 = phi i32 [ %59, %54 ], [ 0, %50 ]
  %56 = phi ptr [ %58, %54 ], [ %47, %50 ]
  store i32 %51, ptr %56, align 4, !tbaa !38
  %57 = getelementptr inbounds i8, ptr %56, i64 4
  store i32 %52, ptr %57, align 4, !tbaa !38
  %58 = getelementptr inbounds i8, ptr %56, i64 32
  %59 = add nuw nsw i32 %55, 1
  %60 = icmp eq i32 %59, 4
  br i1 %60, label %53, label %54, !llvm.loop !57
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8c_p(ptr nocapture noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i64 127
  br label %22

3:                                                ; preds = %22
  %4 = getelementptr inbounds i8, ptr %0, i64 223
  %5 = load i8, ptr %4, align 1, !tbaa !38
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds i8, ptr %0, i64 -25
  %8 = load i8, ptr %7, align 1, !tbaa !38
  %9 = zext i8 %8 to i32
  %10 = add nuw nsw i32 %9, %6
  %11 = shl nuw nsw i32 %10, 4
  %12 = mul nsw i32 %38, 17
  %13 = add nsw i32 %12, 16
  %14 = ashr i32 %13, 5
  %15 = mul nsw i32 %50, 17
  %16 = add nsw i32 %15, 16
  %17 = ashr i32 %16, 5
  %18 = add nsw i32 %14, %17
  %19 = mul nsw i32 %18, -3
  %20 = add nsw i32 %19, 16
  %21 = add nsw i32 %20, %11
  br label %52

22:                                               ; preds = %1, %22
  %23 = phi i64 [ 0, %1 ], [ %26, %22 ]
  %24 = phi i32 [ 0, %1 ], [ %38, %22 ]
  %25 = phi i32 [ 0, %1 ], [ %50, %22 ]
  %26 = add nuw nsw i64 %23, 1
  %27 = or disjoint i64 %23, -28
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !38
  %30 = zext i8 %29 to i32
  %31 = sub nuw nsw i64 -30, %23
  %32 = getelementptr inbounds i8, ptr %0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !38
  %34 = zext i8 %33 to i32
  %35 = sub nsw i32 %30, %34
  %36 = trunc i64 %26 to i32
  %37 = mul nsw i32 %35, %36
  %38 = add nsw i32 %37, %24
  %39 = shl nuw nsw i64 %23, 5
  %40 = getelementptr i8, ptr %2, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !38
  %42 = zext i8 %41 to i32
  %43 = sub nsw i64 63, %39
  %44 = getelementptr inbounds i8, ptr %0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !38
  %46 = zext i8 %45 to i32
  %47 = sub nsw i32 %42, %46
  %48 = trunc i64 %26 to i32
  %49 = mul nsw i32 %47, %48
  %50 = add nsw i32 %49, %25
  %51 = icmp eq i64 %26, 4
  br i1 %51, label %3, label %22, !llvm.loop !58

52:                                               ; preds = %3, %57
  %53 = phi i32 [ 0, %3 ], [ %60, %57 ]
  %54 = phi i32 [ %21, %3 ], [ %59, %57 ]
  %55 = phi ptr [ %0, %3 ], [ %58, %57 ]
  br label %62

56:                                               ; preds = %57
  ret void

57:                                               ; preds = %62
  %58 = getelementptr inbounds i8, ptr %55, i64 32
  %59 = add nsw i32 %54, %17
  %60 = add nuw nsw i32 %53, 1
  %61 = icmp eq i32 %60, 8
  br i1 %61, label %56, label %52, !llvm.loop !59

62:                                               ; preds = %52, %62
  %63 = phi i64 [ 0, %52 ], [ %73, %62 ]
  %64 = phi i32 [ %54, %52 ], [ %72, %62 ]
  %65 = ashr i32 %64, 5
  %66 = icmp ult i32 %65, 256
  %67 = icmp sgt i32 %65, 0
  %68 = sext i1 %67 to i32
  %69 = select i1 %66, i32 %65, i32 %68
  %70 = trunc i32 %69 to i8
  %71 = getelementptr inbounds i8, ptr %55, i64 %63
  store i8 %70, ptr %71, align 1, !tbaa !38
  %72 = add nsw i32 %64, %14
  %73 = add nuw nsw i64 %63, 1
  %74 = icmp eq i64 %73, 8
  br i1 %74, label %57, label %62, !llvm.loop !60
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8c_dc_left(ptr nocapture noundef %0) #1 {
  br label %8

2:                                                ; preds = %8
  %3 = add i32 %17, 2
  %4 = lshr i32 %3, 2
  %5 = mul i32 %4, 16843009
  %6 = add i32 %21, 2
  %7 = lshr i32 %6, 2
  br label %24

8:                                                ; preds = %1, %8
  %9 = phi i64 [ 0, %1 ], [ %22, %8 ]
  %10 = phi i32 [ 0, %1 ], [ %21, %8 ]
  %11 = phi i32 [ 0, %1 ], [ %17, %8 ]
  %12 = shl nuw nsw i64 %9, 5
  %13 = getelementptr i8, ptr %0, i64 %12
  %14 = getelementptr i8, ptr %13, i64 -1
  %15 = load i8, ptr %14, align 1, !tbaa !38
  %16 = zext i8 %15 to i32
  %17 = add i32 %11, %16
  %18 = getelementptr i8, ptr %13, i64 127
  %19 = load i8, ptr %18, align 1, !tbaa !38
  %20 = zext i8 %19 to i32
  %21 = add i32 %10, %20
  %22 = add nuw nsw i64 %9, 1
  %23 = icmp eq i64 %22, 4
  br i1 %23, label %2, label %8, !llvm.loop !61

24:                                               ; preds = %2, %24
  %25 = phi i32 [ 0, %2 ], [ %29, %24 ]
  %26 = phi ptr [ %0, %2 ], [ %28, %24 ]
  store i32 %5, ptr %26, align 4, !tbaa !38
  %27 = getelementptr inbounds i8, ptr %26, i64 4
  store i32 %5, ptr %27, align 4, !tbaa !38
  %28 = getelementptr inbounds i8, ptr %26, i64 32
  %29 = add nuw nsw i32 %25, 1
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %31, label %24, !llvm.loop !62

31:                                               ; preds = %24
  %32 = mul i32 %7, 16843009
  br label %34

33:                                               ; preds = %34
  ret void

34:                                               ; preds = %31, %34
  %35 = phi i32 [ %39, %34 ], [ 0, %31 ]
  %36 = phi ptr [ %38, %34 ], [ %28, %31 ]
  store i32 %32, ptr %36, align 4, !tbaa !38
  %37 = getelementptr inbounds i8, ptr %36, i64 4
  store i32 %32, ptr %37, align 4, !tbaa !38
  %38 = getelementptr inbounds i8, ptr %36, i64 32
  %39 = add nuw nsw i32 %35, 1
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %33, label %34, !llvm.loop !63
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8c_dc_top(ptr nocapture noundef %0) #1 {
  br label %9

2:                                                ; preds = %9
  %3 = add i32 %17, 2
  %4 = lshr i32 %3, 2
  %5 = mul i32 %4, 16843009
  %6 = add i32 %22, 2
  %7 = lshr i32 %6, 2
  %8 = mul i32 %7, 16843009
  br label %26

9:                                                ; preds = %1, %9
  %10 = phi i64 [ 0, %1 ], [ %23, %9 ]
  %11 = phi i32 [ 0, %1 ], [ %22, %9 ]
  %12 = phi i32 [ 0, %1 ], [ %17, %9 ]
  %13 = or disjoint i64 %10, -32
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !38
  %16 = zext i8 %15 to i32
  %17 = add i32 %12, %16
  %18 = or disjoint i64 %10, -28
  %19 = getelementptr inbounds i8, ptr %0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !38
  %21 = zext i8 %20 to i32
  %22 = add i32 %11, %21
  %23 = add nuw nsw i64 %10, 1
  %24 = icmp eq i64 %23, 4
  br i1 %24, label %2, label %9, !llvm.loop !64

25:                                               ; preds = %26
  ret void

26:                                               ; preds = %2, %26
  %27 = phi i32 [ 0, %2 ], [ %31, %26 ]
  %28 = phi ptr [ %0, %2 ], [ %30, %26 ]
  store i32 %5, ptr %28, align 4, !tbaa !38
  %29 = getelementptr inbounds i8, ptr %28, i64 4
  store i32 %8, ptr %29, align 4, !tbaa !38
  %30 = getelementptr inbounds i8, ptr %28, i64 32
  %31 = add nuw nsw i32 %27, 1
  %32 = icmp eq i32 %31, 8
  br i1 %32, label %25, label %26, !llvm.loop !65
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define internal void @predict_8x8c_dc_128(ptr nocapture noundef writeonly %0) #3 {
  br label %3

2:                                                ; preds = %3
  ret void

3:                                                ; preds = %1, %3
  %4 = phi i32 [ 0, %1 ], [ %8, %3 ]
  %5 = phi ptr [ %0, %1 ], [ %7, %3 ]
  store i32 -2139062144, ptr %5, align 4, !tbaa !38
  %6 = getelementptr inbounds i8, ptr %5, i64 4
  store i32 -2139062144, ptr %6, align 4, !tbaa !38
  %7 = getelementptr inbounds i8, ptr %5, i64 32
  %8 = add nuw nsw i32 %4, 1
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %2, label %3, !llvm.loop !66
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_predict_8x8_init(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  store ptr @predict_8x8_v, ptr %1, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %1, i64 1
  store ptr @predict_8x8_h, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %1, i64 2
  store ptr @predict_8x8_dc, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds ptr, ptr %1, i64 3
  store ptr @predict_8x8_ddl, ptr %6, align 8, !tbaa !34
  %7 = getelementptr inbounds ptr, ptr %1, i64 4
  store ptr @predict_8x8_ddr, ptr %7, align 8, !tbaa !34
  %8 = getelementptr inbounds ptr, ptr %1, i64 5
  store ptr @predict_8x8_vr, ptr %8, align 8, !tbaa !34
  %9 = getelementptr inbounds ptr, ptr %1, i64 6
  store ptr @predict_8x8_hd, ptr %9, align 8, !tbaa !34
  %10 = getelementptr inbounds ptr, ptr %1, i64 7
  store ptr @predict_8x8_vl, ptr %10, align 8, !tbaa !34
  %11 = getelementptr inbounds ptr, ptr %1, i64 8
  store ptr @predict_8x8_hu, ptr %11, align 8, !tbaa !34
  %12 = getelementptr inbounds ptr, ptr %1, i64 9
  store ptr @predict_8x8_dc_left, ptr %12, align 8, !tbaa !34
  %13 = getelementptr inbounds ptr, ptr %1, i64 10
  store ptr @predict_8x8_dc_top, ptr %13, align 8, !tbaa !34
  %14 = getelementptr inbounds ptr, ptr %1, i64 11
  store ptr @predict_8x8_dc_128, ptr %14, align 8, !tbaa !34
  store ptr @predict_8x8_filter, ptr %2, align 8, !tbaa !34
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @predict_8x8_v(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load i64, ptr %3, align 8, !tbaa !38
  br label %6

5:                                                ; preds = %6
  ret void

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %10, %6 ]
  %8 = shl nuw nsw i64 %7, 5
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  store i64 %4, ptr %9, align 8, !tbaa !38
  %10 = add nuw nsw i64 %7, 1
  %11 = icmp eq i64 %10, 8
  br i1 %11, label %5, label %6, !llvm.loop !67
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_h(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds i8, ptr %1, i64 14
  %4 = load i8, ptr %3, align 1, !tbaa !38
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds i8, ptr %1, i64 13
  %7 = load i8, ptr %6, align 1, !tbaa !38
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds i8, ptr %1, i64 12
  %10 = load i8, ptr %9, align 1, !tbaa !38
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds i8, ptr %1, i64 11
  %13 = load i8, ptr %12, align 1, !tbaa !38
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds i8, ptr %1, i64 10
  %16 = load i8, ptr %15, align 1, !tbaa !38
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds i8, ptr %1, i64 9
  %19 = load i8, ptr %18, align 1, !tbaa !38
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds i8, ptr %1, i64 8
  %22 = load i8, ptr %21, align 1, !tbaa !38
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %1, i64 7
  %25 = load i8, ptr %24, align 1, !tbaa !38
  %26 = zext i8 %25 to i32
  %27 = mul nuw i32 %5, 16843009
  %28 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %27, ptr %28, align 4, !tbaa !38
  store i32 %27, ptr %0, align 4, !tbaa !38
  %29 = mul nuw i32 %8, 16843009
  %30 = getelementptr inbounds i8, ptr %0, i64 32
  %31 = getelementptr inbounds i8, ptr %0, i64 36
  store i32 %29, ptr %31, align 4, !tbaa !38
  store i32 %29, ptr %30, align 4, !tbaa !38
  %32 = mul nuw i32 %11, 16843009
  %33 = getelementptr inbounds i8, ptr %0, i64 64
  %34 = getelementptr inbounds i8, ptr %0, i64 68
  store i32 %32, ptr %34, align 4, !tbaa !38
  store i32 %32, ptr %33, align 4, !tbaa !38
  %35 = mul nuw i32 %14, 16843009
  %36 = getelementptr inbounds i8, ptr %0, i64 96
  %37 = getelementptr inbounds i8, ptr %0, i64 100
  store i32 %35, ptr %37, align 4, !tbaa !38
  store i32 %35, ptr %36, align 4, !tbaa !38
  %38 = mul nuw i32 %17, 16843009
  %39 = getelementptr inbounds i8, ptr %0, i64 128
  %40 = getelementptr inbounds i8, ptr %0, i64 132
  store i32 %38, ptr %40, align 4, !tbaa !38
  store i32 %38, ptr %39, align 4, !tbaa !38
  %41 = mul nuw i32 %20, 16843009
  %42 = getelementptr inbounds i8, ptr %0, i64 160
  %43 = getelementptr inbounds i8, ptr %0, i64 164
  store i32 %41, ptr %43, align 4, !tbaa !38
  store i32 %41, ptr %42, align 4, !tbaa !38
  %44 = mul nuw i32 %23, 16843009
  %45 = getelementptr inbounds i8, ptr %0, i64 192
  %46 = getelementptr inbounds i8, ptr %0, i64 196
  store i32 %44, ptr %46, align 4, !tbaa !38
  store i32 %44, ptr %45, align 4, !tbaa !38
  %47 = mul nuw i32 %26, 16843009
  %48 = getelementptr inbounds i8, ptr %0, i64 224
  %49 = getelementptr inbounds i8, ptr %0, i64 228
  store i32 %47, ptr %49, align 4, !tbaa !38
  store i32 %47, ptr %48, align 4, !tbaa !38
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8_dc(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds i8, ptr %1, i64 14
  %4 = load i8, ptr %3, align 1, !tbaa !38
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds i8, ptr %1, i64 13
  %7 = load i8, ptr %6, align 1, !tbaa !38
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds i8, ptr %1, i64 12
  %10 = load i8, ptr %9, align 1, !tbaa !38
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds i8, ptr %1, i64 11
  %13 = load i8, ptr %12, align 1, !tbaa !38
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds i8, ptr %1, i64 10
  %16 = load i8, ptr %15, align 1, !tbaa !38
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds i8, ptr %1, i64 9
  %19 = load i8, ptr %18, align 1, !tbaa !38
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds i8, ptr %1, i64 8
  %22 = load i8, ptr %21, align 1, !tbaa !38
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %1, i64 7
  %25 = load i8, ptr %24, align 1, !tbaa !38
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds i8, ptr %1, i64 16
  %28 = load i8, ptr %27, align 1, !tbaa !38
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds i8, ptr %1, i64 17
  %31 = load i8, ptr %30, align 1, !tbaa !38
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds i8, ptr %1, i64 18
  %34 = load i8, ptr %33, align 1, !tbaa !38
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds i8, ptr %1, i64 19
  %37 = load i8, ptr %36, align 1, !tbaa !38
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds i8, ptr %1, i64 20
  %40 = load i8, ptr %39, align 1, !tbaa !38
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds i8, ptr %1, i64 21
  %43 = load i8, ptr %42, align 1, !tbaa !38
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds i8, ptr %1, i64 22
  %46 = load i8, ptr %45, align 1, !tbaa !38
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds i8, ptr %1, i64 23
  %49 = load i8, ptr %48, align 1, !tbaa !38
  %50 = zext i8 %49 to i32
  %51 = add nuw nsw i32 %5, 8
  %52 = add nuw nsw i32 %51, %8
  %53 = add nuw nsw i32 %52, %11
  %54 = add nuw nsw i32 %53, %14
  %55 = add nuw nsw i32 %54, %17
  %56 = add nuw nsw i32 %55, %20
  %57 = add nuw nsw i32 %56, %23
  %58 = add nuw nsw i32 %57, %26
  %59 = add nuw nsw i32 %58, %29
  %60 = add nuw nsw i32 %59, %32
  %61 = add nuw nsw i32 %60, %35
  %62 = add nuw nsw i32 %61, %38
  %63 = add nuw nsw i32 %62, %41
  %64 = add nuw nsw i32 %63, %44
  %65 = add nuw nsw i32 %64, %47
  %66 = add nuw nsw i32 %65, %50
  %67 = lshr i32 %66, 4
  %68 = mul nuw nsw i32 %67, 16843009
  br label %70

69:                                               ; preds = %70
  ret void

70:                                               ; preds = %2, %70
  %71 = phi i32 [ 0, %2 ], [ %75, %70 ]
  %72 = phi ptr [ %0, %2 ], [ %74, %70 ]
  store i32 %68, ptr %72, align 4, !tbaa !38
  %73 = getelementptr inbounds i8, ptr %72, i64 4
  store i32 %68, ptr %73, align 4, !tbaa !38
  %74 = getelementptr inbounds i8, ptr %72, i64 32
  %75 = add nuw nsw i32 %71, 1
  %76 = icmp eq i32 %75, 8
  br i1 %76, label %69, label %70, !llvm.loop !68
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_ddl(ptr noundef writeonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load i8, ptr %3, align 1, !tbaa !38
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds i8, ptr %1, i64 17
  %7 = load i8, ptr %6, align 1, !tbaa !38
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds i8, ptr %1, i64 18
  %10 = load i8, ptr %9, align 1, !tbaa !38
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds i8, ptr %1, i64 19
  %13 = load i8, ptr %12, align 1, !tbaa !38
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds i8, ptr %1, i64 20
  %16 = load i8, ptr %15, align 1, !tbaa !38
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds i8, ptr %1, i64 21
  %19 = load i8, ptr %18, align 1, !tbaa !38
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds i8, ptr %1, i64 22
  %22 = load i8, ptr %21, align 1, !tbaa !38
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %1, i64 23
  %25 = load i8, ptr %24, align 1, !tbaa !38
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds i8, ptr %1, i64 24
  %28 = load i8, ptr %27, align 1, !tbaa !38
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds i8, ptr %1, i64 25
  %31 = load i8, ptr %30, align 1, !tbaa !38
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds i8, ptr %1, i64 26
  %34 = load i8, ptr %33, align 1, !tbaa !38
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds i8, ptr %1, i64 27
  %37 = load i8, ptr %36, align 1, !tbaa !38
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds i8, ptr %1, i64 28
  %40 = load i8, ptr %39, align 1, !tbaa !38
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds i8, ptr %1, i64 29
  %43 = load i8, ptr %42, align 1, !tbaa !38
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds i8, ptr %1, i64 30
  %46 = load i8, ptr %45, align 1, !tbaa !38
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds i8, ptr %1, i64 31
  %49 = load i8, ptr %48, align 1, !tbaa !38
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %8, 1
  %52 = add nuw nsw i32 %11, 2
  %53 = add nuw nsw i32 %52, %5
  %54 = add nuw nsw i32 %53, %51
  %55 = lshr i32 %54, 2
  %56 = trunc i32 %55 to i8
  store i8 %56, ptr %0, align 1, !tbaa !38
  %57 = shl nuw nsw i32 %11, 1
  %58 = add nuw nsw i32 %14, 2
  %59 = add nuw nsw i32 %58, %8
  %60 = add nuw nsw i32 %59, %57
  %61 = lshr i32 %60, 2
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %62, ptr %63, align 1, !tbaa !38
  %64 = getelementptr inbounds i8, ptr %0, i64 32
  store i8 %62, ptr %64, align 1, !tbaa !38
  %65 = shl nuw nsw i32 %14, 1
  %66 = add nuw nsw i32 %11, 2
  %67 = add nuw nsw i32 %66, %65
  %68 = add nuw nsw i32 %67, %17
  %69 = lshr i32 %68, 2
  %70 = trunc i32 %69 to i8
  %71 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %70, ptr %71, align 1, !tbaa !38
  %72 = getelementptr inbounds i8, ptr %0, i64 33
  store i8 %70, ptr %72, align 1, !tbaa !38
  %73 = getelementptr inbounds i8, ptr %0, i64 64
  store i8 %70, ptr %73, align 1, !tbaa !38
  %74 = shl nuw nsw i32 %17, 1
  %75 = add nuw nsw i32 %14, 2
  %76 = add nuw nsw i32 %75, %74
  %77 = add nuw nsw i32 %76, %20
  %78 = lshr i32 %77, 2
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %79, ptr %80, align 1, !tbaa !38
  %81 = getelementptr inbounds i8, ptr %0, i64 34
  store i8 %79, ptr %81, align 1, !tbaa !38
  %82 = getelementptr inbounds i8, ptr %0, i64 65
  store i8 %79, ptr %82, align 1, !tbaa !38
  %83 = getelementptr inbounds i8, ptr %0, i64 96
  store i8 %79, ptr %83, align 1, !tbaa !38
  %84 = shl nuw nsw i32 %20, 1
  %85 = add nuw nsw i32 %17, 2
  %86 = add nuw nsw i32 %85, %84
  %87 = add nuw nsw i32 %86, %23
  %88 = lshr i32 %87, 2
  %89 = trunc i32 %88 to i8
  %90 = getelementptr inbounds i8, ptr %0, i64 4
  store i8 %89, ptr %90, align 1, !tbaa !38
  %91 = getelementptr inbounds i8, ptr %0, i64 35
  store i8 %89, ptr %91, align 1, !tbaa !38
  %92 = getelementptr inbounds i8, ptr %0, i64 66
  store i8 %89, ptr %92, align 1, !tbaa !38
  %93 = getelementptr inbounds i8, ptr %0, i64 97
  store i8 %89, ptr %93, align 1, !tbaa !38
  %94 = getelementptr inbounds i8, ptr %0, i64 128
  store i8 %89, ptr %94, align 1, !tbaa !38
  %95 = shl nuw nsw i32 %23, 1
  %96 = add nuw nsw i32 %20, 2
  %97 = add nuw nsw i32 %96, %95
  %98 = add nuw nsw i32 %97, %26
  %99 = lshr i32 %98, 2
  %100 = trunc i32 %99 to i8
  %101 = getelementptr inbounds i8, ptr %0, i64 5
  store i8 %100, ptr %101, align 1, !tbaa !38
  %102 = getelementptr inbounds i8, ptr %0, i64 36
  store i8 %100, ptr %102, align 1, !tbaa !38
  %103 = getelementptr inbounds i8, ptr %0, i64 67
  store i8 %100, ptr %103, align 1, !tbaa !38
  %104 = getelementptr inbounds i8, ptr %0, i64 98
  store i8 %100, ptr %104, align 1, !tbaa !38
  %105 = getelementptr inbounds i8, ptr %0, i64 129
  store i8 %100, ptr %105, align 1, !tbaa !38
  %106 = getelementptr inbounds i8, ptr %0, i64 160
  store i8 %100, ptr %106, align 1, !tbaa !38
  %107 = shl nuw nsw i32 %26, 1
  %108 = add nuw nsw i32 %23, 2
  %109 = add nuw nsw i32 %108, %107
  %110 = add nuw nsw i32 %109, %29
  %111 = lshr i32 %110, 2
  %112 = trunc i32 %111 to i8
  %113 = getelementptr inbounds i8, ptr %0, i64 6
  store i8 %112, ptr %113, align 1, !tbaa !38
  %114 = getelementptr inbounds i8, ptr %0, i64 37
  store i8 %112, ptr %114, align 1, !tbaa !38
  %115 = getelementptr inbounds i8, ptr %0, i64 68
  store i8 %112, ptr %115, align 1, !tbaa !38
  %116 = getelementptr inbounds i8, ptr %0, i64 99
  store i8 %112, ptr %116, align 1, !tbaa !38
  %117 = getelementptr inbounds i8, ptr %0, i64 130
  store i8 %112, ptr %117, align 1, !tbaa !38
  %118 = getelementptr inbounds i8, ptr %0, i64 161
  store i8 %112, ptr %118, align 1, !tbaa !38
  %119 = getelementptr inbounds i8, ptr %0, i64 192
  store i8 %112, ptr %119, align 1, !tbaa !38
  %120 = shl nuw nsw i32 %29, 1
  %121 = add nuw nsw i32 %26, 2
  %122 = add nuw nsw i32 %121, %120
  %123 = add nuw nsw i32 %122, %32
  %124 = lshr i32 %123, 2
  %125 = trunc i32 %124 to i8
  %126 = getelementptr inbounds i8, ptr %0, i64 7
  store i8 %125, ptr %126, align 1, !tbaa !38
  %127 = getelementptr inbounds i8, ptr %0, i64 38
  store i8 %125, ptr %127, align 1, !tbaa !38
  %128 = getelementptr inbounds i8, ptr %0, i64 69
  store i8 %125, ptr %128, align 1, !tbaa !38
  %129 = getelementptr inbounds i8, ptr %0, i64 100
  store i8 %125, ptr %129, align 1, !tbaa !38
  %130 = getelementptr inbounds i8, ptr %0, i64 131
  store i8 %125, ptr %130, align 1, !tbaa !38
  %131 = getelementptr inbounds i8, ptr %0, i64 162
  store i8 %125, ptr %131, align 1, !tbaa !38
  %132 = getelementptr inbounds i8, ptr %0, i64 193
  store i8 %125, ptr %132, align 1, !tbaa !38
  %133 = getelementptr inbounds i8, ptr %0, i64 224
  store i8 %125, ptr %133, align 1, !tbaa !38
  %134 = shl nuw nsw i32 %32, 1
  %135 = add nuw nsw i32 %29, 2
  %136 = add nuw nsw i32 %135, %134
  %137 = add nuw nsw i32 %136, %35
  %138 = lshr i32 %137, 2
  %139 = trunc i32 %138 to i8
  %140 = getelementptr inbounds i8, ptr %0, i64 39
  store i8 %139, ptr %140, align 1, !tbaa !38
  %141 = getelementptr inbounds i8, ptr %0, i64 70
  store i8 %139, ptr %141, align 1, !tbaa !38
  %142 = getelementptr inbounds i8, ptr %0, i64 101
  store i8 %139, ptr %142, align 1, !tbaa !38
  %143 = getelementptr inbounds i8, ptr %0, i64 132
  store i8 %139, ptr %143, align 1, !tbaa !38
  %144 = getelementptr inbounds i8, ptr %0, i64 163
  store i8 %139, ptr %144, align 1, !tbaa !38
  %145 = getelementptr inbounds i8, ptr %0, i64 194
  store i8 %139, ptr %145, align 1, !tbaa !38
  %146 = getelementptr inbounds i8, ptr %0, i64 225
  store i8 %139, ptr %146, align 1, !tbaa !38
  %147 = shl nuw nsw i32 %35, 1
  %148 = add nuw nsw i32 %32, 2
  %149 = add nuw nsw i32 %148, %147
  %150 = add nuw nsw i32 %149, %38
  %151 = lshr i32 %150, 2
  %152 = trunc i32 %151 to i8
  %153 = getelementptr inbounds i8, ptr %0, i64 71
  store i8 %152, ptr %153, align 1, !tbaa !38
  %154 = getelementptr inbounds i8, ptr %0, i64 102
  store i8 %152, ptr %154, align 1, !tbaa !38
  %155 = getelementptr inbounds i8, ptr %0, i64 133
  store i8 %152, ptr %155, align 1, !tbaa !38
  %156 = getelementptr inbounds i8, ptr %0, i64 164
  store i8 %152, ptr %156, align 1, !tbaa !38
  %157 = getelementptr inbounds i8, ptr %0, i64 195
  store i8 %152, ptr %157, align 1, !tbaa !38
  %158 = getelementptr inbounds i8, ptr %0, i64 226
  store i8 %152, ptr %158, align 1, !tbaa !38
  %159 = shl nuw nsw i32 %38, 1
  %160 = add nuw nsw i32 %35, 2
  %161 = add nuw nsw i32 %160, %159
  %162 = add nuw nsw i32 %161, %41
  %163 = lshr i32 %162, 2
  %164 = trunc i32 %163 to i8
  %165 = getelementptr inbounds i8, ptr %0, i64 103
  store i8 %164, ptr %165, align 1, !tbaa !38
  %166 = getelementptr inbounds i8, ptr %0, i64 134
  store i8 %164, ptr %166, align 1, !tbaa !38
  %167 = getelementptr inbounds i8, ptr %0, i64 165
  store i8 %164, ptr %167, align 1, !tbaa !38
  %168 = getelementptr inbounds i8, ptr %0, i64 196
  store i8 %164, ptr %168, align 1, !tbaa !38
  %169 = getelementptr inbounds i8, ptr %0, i64 227
  store i8 %164, ptr %169, align 1, !tbaa !38
  %170 = shl nuw nsw i32 %41, 1
  %171 = add nuw nsw i32 %38, 2
  %172 = add nuw nsw i32 %171, %170
  %173 = add nuw nsw i32 %172, %44
  %174 = lshr i32 %173, 2
  %175 = trunc i32 %174 to i8
  %176 = getelementptr inbounds i8, ptr %0, i64 135
  store i8 %175, ptr %176, align 1, !tbaa !38
  %177 = getelementptr inbounds i8, ptr %0, i64 166
  store i8 %175, ptr %177, align 1, !tbaa !38
  %178 = getelementptr inbounds i8, ptr %0, i64 197
  store i8 %175, ptr %178, align 1, !tbaa !38
  %179 = getelementptr inbounds i8, ptr %0, i64 228
  store i8 %175, ptr %179, align 1, !tbaa !38
  %180 = shl nuw nsw i32 %44, 1
  %181 = add nuw nsw i32 %41, 2
  %182 = add nuw nsw i32 %181, %180
  %183 = add nuw nsw i32 %182, %47
  %184 = lshr i32 %183, 2
  %185 = trunc i32 %184 to i8
  %186 = getelementptr inbounds i8, ptr %0, i64 167
  store i8 %185, ptr %186, align 1, !tbaa !38
  %187 = getelementptr inbounds i8, ptr %0, i64 198
  store i8 %185, ptr %187, align 1, !tbaa !38
  %188 = getelementptr inbounds i8, ptr %0, i64 229
  store i8 %185, ptr %188, align 1, !tbaa !38
  %189 = shl nuw nsw i32 %47, 1
  %190 = add nuw nsw i32 %44, 2
  %191 = add nuw nsw i32 %190, %189
  %192 = add nuw nsw i32 %191, %50
  %193 = lshr i32 %192, 2
  %194 = trunc i32 %193 to i8
  %195 = getelementptr inbounds i8, ptr %0, i64 199
  store i8 %194, ptr %195, align 1, !tbaa !38
  %196 = getelementptr inbounds i8, ptr %0, i64 230
  store i8 %194, ptr %196, align 1, !tbaa !38
  %197 = shl nuw nsw i32 %50, 1
  %198 = add nuw nsw i32 %47, 2
  %199 = add nuw nsw i32 %198, %50
  %200 = add nuw nsw i32 %199, %197
  %201 = lshr i32 %200, 2
  %202 = trunc i32 %201 to i8
  %203 = getelementptr inbounds i8, ptr %0, i64 231
  store i8 %202, ptr %203, align 1, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_ddr(ptr noundef writeonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load i8, ptr %3, align 1, !tbaa !38
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds i8, ptr %1, i64 17
  %7 = load i8, ptr %6, align 1, !tbaa !38
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds i8, ptr %1, i64 18
  %10 = load i8, ptr %9, align 1, !tbaa !38
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds i8, ptr %1, i64 19
  %13 = load i8, ptr %12, align 1, !tbaa !38
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds i8, ptr %1, i64 20
  %16 = load i8, ptr %15, align 1, !tbaa !38
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds i8, ptr %1, i64 21
  %19 = load i8, ptr %18, align 1, !tbaa !38
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds i8, ptr %1, i64 22
  %22 = load i8, ptr %21, align 1, !tbaa !38
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %1, i64 23
  %25 = load i8, ptr %24, align 1, !tbaa !38
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds i8, ptr %1, i64 14
  %28 = load i8, ptr %27, align 1, !tbaa !38
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds i8, ptr %1, i64 13
  %31 = load i8, ptr %30, align 1, !tbaa !38
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds i8, ptr %1, i64 12
  %34 = load i8, ptr %33, align 1, !tbaa !38
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds i8, ptr %1, i64 11
  %37 = load i8, ptr %36, align 1, !tbaa !38
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds i8, ptr %1, i64 10
  %40 = load i8, ptr %39, align 1, !tbaa !38
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds i8, ptr %1, i64 9
  %43 = load i8, ptr %42, align 1, !tbaa !38
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds i8, ptr %1, i64 8
  %46 = load i8, ptr %45, align 1, !tbaa !38
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds i8, ptr %1, i64 7
  %49 = load i8, ptr %48, align 1, !tbaa !38
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds i8, ptr %1, i64 15
  %52 = load i8, ptr %51, align 1, !tbaa !38
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %47, 1
  %55 = add nuw nsw i32 %44, 2
  %56 = add nuw nsw i32 %55, %50
  %57 = add nuw nsw i32 %56, %54
  %58 = lshr i32 %57, 2
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds i8, ptr %0, i64 224
  store i8 %59, ptr %60, align 1, !tbaa !38
  %61 = shl nuw nsw i32 %44, 1
  %62 = add nuw nsw i32 %41, 2
  %63 = add nuw nsw i32 %62, %47
  %64 = add nuw nsw i32 %63, %61
  %65 = lshr i32 %64, 2
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds i8, ptr %0, i64 225
  store i8 %66, ptr %67, align 1, !tbaa !38
  %68 = getelementptr inbounds i8, ptr %0, i64 192
  store i8 %66, ptr %68, align 1, !tbaa !38
  %69 = shl nuw nsw i32 %41, 1
  %70 = add nuw nsw i32 %38, 2
  %71 = add nuw nsw i32 %70, %44
  %72 = add nuw nsw i32 %71, %69
  %73 = lshr i32 %72, 2
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds i8, ptr %0, i64 226
  store i8 %74, ptr %75, align 1, !tbaa !38
  %76 = getelementptr inbounds i8, ptr %0, i64 193
  store i8 %74, ptr %76, align 1, !tbaa !38
  %77 = getelementptr inbounds i8, ptr %0, i64 160
  store i8 %74, ptr %77, align 1, !tbaa !38
  %78 = shl nuw nsw i32 %38, 1
  %79 = add nuw nsw i32 %35, 2
  %80 = add nuw nsw i32 %79, %41
  %81 = add nuw nsw i32 %80, %78
  %82 = lshr i32 %81, 2
  %83 = trunc i32 %82 to i8
  %84 = getelementptr inbounds i8, ptr %0, i64 227
  store i8 %83, ptr %84, align 1, !tbaa !38
  %85 = getelementptr inbounds i8, ptr %0, i64 194
  store i8 %83, ptr %85, align 1, !tbaa !38
  %86 = getelementptr inbounds i8, ptr %0, i64 161
  store i8 %83, ptr %86, align 1, !tbaa !38
  %87 = getelementptr inbounds i8, ptr %0, i64 128
  store i8 %83, ptr %87, align 1, !tbaa !38
  %88 = shl nuw nsw i32 %35, 1
  %89 = add nuw nsw i32 %32, 2
  %90 = add nuw nsw i32 %89, %38
  %91 = add nuw nsw i32 %90, %88
  %92 = lshr i32 %91, 2
  %93 = trunc i32 %92 to i8
  %94 = getelementptr inbounds i8, ptr %0, i64 228
  store i8 %93, ptr %94, align 1, !tbaa !38
  %95 = getelementptr inbounds i8, ptr %0, i64 195
  store i8 %93, ptr %95, align 1, !tbaa !38
  %96 = getelementptr inbounds i8, ptr %0, i64 162
  store i8 %93, ptr %96, align 1, !tbaa !38
  %97 = getelementptr inbounds i8, ptr %0, i64 129
  store i8 %93, ptr %97, align 1, !tbaa !38
  %98 = getelementptr inbounds i8, ptr %0, i64 96
  store i8 %93, ptr %98, align 1, !tbaa !38
  %99 = shl nuw nsw i32 %32, 1
  %100 = add nuw nsw i32 %29, 2
  %101 = add nuw nsw i32 %100, %35
  %102 = add nuw nsw i32 %101, %99
  %103 = lshr i32 %102, 2
  %104 = trunc i32 %103 to i8
  %105 = getelementptr inbounds i8, ptr %0, i64 229
  store i8 %104, ptr %105, align 1, !tbaa !38
  %106 = getelementptr inbounds i8, ptr %0, i64 196
  store i8 %104, ptr %106, align 1, !tbaa !38
  %107 = getelementptr inbounds i8, ptr %0, i64 163
  store i8 %104, ptr %107, align 1, !tbaa !38
  %108 = getelementptr inbounds i8, ptr %0, i64 130
  store i8 %104, ptr %108, align 1, !tbaa !38
  %109 = getelementptr inbounds i8, ptr %0, i64 97
  store i8 %104, ptr %109, align 1, !tbaa !38
  %110 = getelementptr inbounds i8, ptr %0, i64 64
  store i8 %104, ptr %110, align 1, !tbaa !38
  %111 = shl nuw nsw i32 %29, 1
  %112 = add nuw nsw i32 %32, 2
  %113 = add nuw nsw i32 %112, %111
  %114 = add nuw nsw i32 %113, %53
  %115 = lshr i32 %114, 2
  %116 = trunc i32 %115 to i8
  %117 = getelementptr inbounds i8, ptr %0, i64 230
  store i8 %116, ptr %117, align 1, !tbaa !38
  %118 = getelementptr inbounds i8, ptr %0, i64 197
  store i8 %116, ptr %118, align 1, !tbaa !38
  %119 = getelementptr inbounds i8, ptr %0, i64 164
  store i8 %116, ptr %119, align 1, !tbaa !38
  %120 = getelementptr inbounds i8, ptr %0, i64 131
  store i8 %116, ptr %120, align 1, !tbaa !38
  %121 = getelementptr inbounds i8, ptr %0, i64 98
  store i8 %116, ptr %121, align 1, !tbaa !38
  %122 = getelementptr inbounds i8, ptr %0, i64 65
  store i8 %116, ptr %122, align 1, !tbaa !38
  %123 = getelementptr inbounds i8, ptr %0, i64 32
  store i8 %116, ptr %123, align 1, !tbaa !38
  %124 = shl nuw nsw i32 %53, 1
  %125 = add nuw nsw i32 %5, 2
  %126 = add nuw nsw i32 %125, %29
  %127 = add nuw nsw i32 %126, %124
  %128 = lshr i32 %127, 2
  %129 = trunc i32 %128 to i8
  %130 = getelementptr inbounds i8, ptr %0, i64 231
  store i8 %129, ptr %130, align 1, !tbaa !38
  %131 = getelementptr inbounds i8, ptr %0, i64 198
  store i8 %129, ptr %131, align 1, !tbaa !38
  %132 = getelementptr inbounds i8, ptr %0, i64 165
  store i8 %129, ptr %132, align 1, !tbaa !38
  %133 = getelementptr inbounds i8, ptr %0, i64 132
  store i8 %129, ptr %133, align 1, !tbaa !38
  %134 = getelementptr inbounds i8, ptr %0, i64 99
  store i8 %129, ptr %134, align 1, !tbaa !38
  %135 = getelementptr inbounds i8, ptr %0, i64 66
  store i8 %129, ptr %135, align 1, !tbaa !38
  %136 = getelementptr inbounds i8, ptr %0, i64 33
  store i8 %129, ptr %136, align 1, !tbaa !38
  store i8 %129, ptr %0, align 1, !tbaa !38
  %137 = shl nuw nsw i32 %5, 1
  %138 = add nuw nsw i32 %8, 2
  %139 = add nuw nsw i32 %138, %137
  %140 = add nuw nsw i32 %139, %53
  %141 = lshr i32 %140, 2
  %142 = trunc i32 %141 to i8
  %143 = getelementptr inbounds i8, ptr %0, i64 199
  store i8 %142, ptr %143, align 1, !tbaa !38
  %144 = getelementptr inbounds i8, ptr %0, i64 166
  store i8 %142, ptr %144, align 1, !tbaa !38
  %145 = getelementptr inbounds i8, ptr %0, i64 133
  store i8 %142, ptr %145, align 1, !tbaa !38
  %146 = getelementptr inbounds i8, ptr %0, i64 100
  store i8 %142, ptr %146, align 1, !tbaa !38
  %147 = getelementptr inbounds i8, ptr %0, i64 67
  store i8 %142, ptr %147, align 1, !tbaa !38
  %148 = getelementptr inbounds i8, ptr %0, i64 34
  store i8 %142, ptr %148, align 1, !tbaa !38
  %149 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %142, ptr %149, align 1, !tbaa !38
  %150 = shl nuw nsw i32 %8, 1
  %151 = add nuw nsw i32 %5, 2
  %152 = add nuw nsw i32 %151, %150
  %153 = add nuw nsw i32 %152, %11
  %154 = lshr i32 %153, 2
  %155 = trunc i32 %154 to i8
  %156 = getelementptr inbounds i8, ptr %0, i64 167
  store i8 %155, ptr %156, align 1, !tbaa !38
  %157 = getelementptr inbounds i8, ptr %0, i64 134
  store i8 %155, ptr %157, align 1, !tbaa !38
  %158 = getelementptr inbounds i8, ptr %0, i64 101
  store i8 %155, ptr %158, align 1, !tbaa !38
  %159 = getelementptr inbounds i8, ptr %0, i64 68
  store i8 %155, ptr %159, align 1, !tbaa !38
  %160 = getelementptr inbounds i8, ptr %0, i64 35
  store i8 %155, ptr %160, align 1, !tbaa !38
  %161 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %155, ptr %161, align 1, !tbaa !38
  %162 = shl nuw nsw i32 %11, 1
  %163 = add nuw nsw i32 %8, 2
  %164 = add nuw nsw i32 %163, %162
  %165 = add nuw nsw i32 %164, %14
  %166 = lshr i32 %165, 2
  %167 = trunc i32 %166 to i8
  %168 = getelementptr inbounds i8, ptr %0, i64 135
  store i8 %167, ptr %168, align 1, !tbaa !38
  %169 = getelementptr inbounds i8, ptr %0, i64 102
  store i8 %167, ptr %169, align 1, !tbaa !38
  %170 = getelementptr inbounds i8, ptr %0, i64 69
  store i8 %167, ptr %170, align 1, !tbaa !38
  %171 = getelementptr inbounds i8, ptr %0, i64 36
  store i8 %167, ptr %171, align 1, !tbaa !38
  %172 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %167, ptr %172, align 1, !tbaa !38
  %173 = shl nuw nsw i32 %14, 1
  %174 = add nuw nsw i32 %11, 2
  %175 = add nuw nsw i32 %174, %173
  %176 = add nuw nsw i32 %175, %17
  %177 = lshr i32 %176, 2
  %178 = trunc i32 %177 to i8
  %179 = getelementptr inbounds i8, ptr %0, i64 103
  store i8 %178, ptr %179, align 1, !tbaa !38
  %180 = getelementptr inbounds i8, ptr %0, i64 70
  store i8 %178, ptr %180, align 1, !tbaa !38
  %181 = getelementptr inbounds i8, ptr %0, i64 37
  store i8 %178, ptr %181, align 1, !tbaa !38
  %182 = getelementptr inbounds i8, ptr %0, i64 4
  store i8 %178, ptr %182, align 1, !tbaa !38
  %183 = shl nuw nsw i32 %17, 1
  %184 = add nuw nsw i32 %14, 2
  %185 = add nuw nsw i32 %184, %183
  %186 = add nuw nsw i32 %185, %20
  %187 = lshr i32 %186, 2
  %188 = trunc i32 %187 to i8
  %189 = getelementptr inbounds i8, ptr %0, i64 71
  store i8 %188, ptr %189, align 1, !tbaa !38
  %190 = getelementptr inbounds i8, ptr %0, i64 38
  store i8 %188, ptr %190, align 1, !tbaa !38
  %191 = getelementptr inbounds i8, ptr %0, i64 5
  store i8 %188, ptr %191, align 1, !tbaa !38
  %192 = shl nuw nsw i32 %20, 1
  %193 = add nuw nsw i32 %17, 2
  %194 = add nuw nsw i32 %193, %192
  %195 = add nuw nsw i32 %194, %23
  %196 = lshr i32 %195, 2
  %197 = trunc i32 %196 to i8
  %198 = getelementptr inbounds i8, ptr %0, i64 39
  store i8 %197, ptr %198, align 1, !tbaa !38
  %199 = getelementptr inbounds i8, ptr %0, i64 6
  store i8 %197, ptr %199, align 1, !tbaa !38
  %200 = shl nuw nsw i32 %23, 1
  %201 = add nuw nsw i32 %20, 2
  %202 = add nuw nsw i32 %201, %200
  %203 = add nuw nsw i32 %202, %26
  %204 = lshr i32 %203, 2
  %205 = trunc i32 %204 to i8
  %206 = getelementptr inbounds i8, ptr %0, i64 7
  store i8 %205, ptr %206, align 1, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_vr(ptr noundef writeonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load i8, ptr %3, align 1, !tbaa !38
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds i8, ptr %1, i64 17
  %7 = load i8, ptr %6, align 1, !tbaa !38
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds i8, ptr %1, i64 18
  %10 = load i8, ptr %9, align 1, !tbaa !38
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds i8, ptr %1, i64 19
  %13 = load i8, ptr %12, align 1, !tbaa !38
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds i8, ptr %1, i64 20
  %16 = load i8, ptr %15, align 1, !tbaa !38
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds i8, ptr %1, i64 21
  %19 = load i8, ptr %18, align 1, !tbaa !38
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds i8, ptr %1, i64 22
  %22 = load i8, ptr %21, align 1, !tbaa !38
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %1, i64 23
  %25 = load i8, ptr %24, align 1, !tbaa !38
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds i8, ptr %1, i64 14
  %28 = load i8, ptr %27, align 1, !tbaa !38
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds i8, ptr %1, i64 13
  %31 = load i8, ptr %30, align 1, !tbaa !38
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds i8, ptr %1, i64 12
  %34 = load i8, ptr %33, align 1, !tbaa !38
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds i8, ptr %1, i64 11
  %37 = load i8, ptr %36, align 1, !tbaa !38
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds i8, ptr %1, i64 10
  %40 = load i8, ptr %39, align 1, !tbaa !38
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds i8, ptr %1, i64 9
  %43 = load i8, ptr %42, align 1, !tbaa !38
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds i8, ptr %1, i64 8
  %46 = load i8, ptr %45, align 1, !tbaa !38
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds i8, ptr %1, i64 15
  %49 = load i8, ptr %48, align 1, !tbaa !38
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %41, 1
  %52 = add nuw nsw i32 %38, 2
  %53 = add nuw nsw i32 %52, %44
  %54 = add nuw nsw i32 %53, %51
  %55 = lshr i32 %54, 2
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds i8, ptr %0, i64 192
  store i8 %56, ptr %57, align 1, !tbaa !38
  %58 = shl nuw nsw i32 %44, 1
  %59 = add nuw nsw i32 %41, 2
  %60 = add nuw nsw i32 %59, %47
  %61 = add nuw nsw i32 %60, %58
  %62 = lshr i32 %61, 2
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds i8, ptr %0, i64 224
  store i8 %63, ptr %64, align 1, !tbaa !38
  %65 = shl nuw nsw i32 %35, 1
  %66 = add nuw nsw i32 %32, 2
  %67 = add nuw nsw i32 %66, %38
  %68 = add nuw nsw i32 %67, %65
  %69 = lshr i32 %68, 2
  %70 = trunc i32 %69 to i8
  %71 = getelementptr inbounds i8, ptr %0, i64 193
  store i8 %70, ptr %71, align 1, !tbaa !38
  %72 = getelementptr inbounds i8, ptr %0, i64 128
  store i8 %70, ptr %72, align 1, !tbaa !38
  %73 = shl nuw nsw i32 %38, 1
  %74 = add nuw nsw i32 %35, 2
  %75 = add nuw nsw i32 %74, %41
  %76 = add nuw nsw i32 %75, %73
  %77 = lshr i32 %76, 2
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds i8, ptr %0, i64 225
  store i8 %78, ptr %79, align 1, !tbaa !38
  %80 = getelementptr inbounds i8, ptr %0, i64 160
  store i8 %78, ptr %80, align 1, !tbaa !38
  %81 = shl nuw nsw i32 %29, 1
  %82 = add nuw nsw i32 %32, 2
  %83 = add nuw nsw i32 %82, %81
  %84 = add nuw nsw i32 %83, %50
  %85 = lshr i32 %84, 2
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds i8, ptr %0, i64 194
  store i8 %86, ptr %87, align 1, !tbaa !38
  %88 = getelementptr inbounds i8, ptr %0, i64 129
  store i8 %86, ptr %88, align 1, !tbaa !38
  %89 = getelementptr inbounds i8, ptr %0, i64 64
  store i8 %86, ptr %89, align 1, !tbaa !38
  %90 = shl nuw nsw i32 %32, 1
  %91 = add nuw nsw i32 %29, 2
  %92 = add nuw nsw i32 %91, %35
  %93 = add nuw nsw i32 %92, %90
  %94 = lshr i32 %93, 2
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds i8, ptr %0, i64 226
  store i8 %95, ptr %96, align 1, !tbaa !38
  %97 = getelementptr inbounds i8, ptr %0, i64 161
  store i8 %95, ptr %97, align 1, !tbaa !38
  %98 = getelementptr inbounds i8, ptr %0, i64 96
  store i8 %95, ptr %98, align 1, !tbaa !38
  %99 = shl nuw nsw i32 %50, 1
  %100 = add nuw nsw i32 %5, 2
  %101 = add nuw nsw i32 %100, %29
  %102 = add nuw nsw i32 %101, %99
  %103 = lshr i32 %102, 2
  %104 = trunc i32 %103 to i8
  %105 = getelementptr inbounds i8, ptr %0, i64 227
  store i8 %104, ptr %105, align 1, !tbaa !38
  %106 = getelementptr inbounds i8, ptr %0, i64 162
  store i8 %104, ptr %106, align 1, !tbaa !38
  %107 = getelementptr inbounds i8, ptr %0, i64 97
  store i8 %104, ptr %107, align 1, !tbaa !38
  %108 = getelementptr inbounds i8, ptr %0, i64 32
  store i8 %104, ptr %108, align 1, !tbaa !38
  %109 = add nuw nsw i32 %5, 1
  %110 = add nuw nsw i32 %109, %50
  %111 = lshr i32 %110, 1
  %112 = trunc i32 %111 to i8
  %113 = getelementptr inbounds i8, ptr %0, i64 195
  store i8 %112, ptr %113, align 1, !tbaa !38
  %114 = getelementptr inbounds i8, ptr %0, i64 130
  store i8 %112, ptr %114, align 1, !tbaa !38
  %115 = getelementptr inbounds i8, ptr %0, i64 65
  store i8 %112, ptr %115, align 1, !tbaa !38
  store i8 %112, ptr %0, align 1, !tbaa !38
  %116 = shl nuw nsw i32 %5, 1
  %117 = add nuw nsw i32 %8, 2
  %118 = add nuw nsw i32 %117, %116
  %119 = add nuw nsw i32 %118, %50
  %120 = lshr i32 %119, 2
  %121 = trunc i32 %120 to i8
  %122 = getelementptr inbounds i8, ptr %0, i64 228
  store i8 %121, ptr %122, align 1, !tbaa !38
  %123 = getelementptr inbounds i8, ptr %0, i64 163
  store i8 %121, ptr %123, align 1, !tbaa !38
  %124 = getelementptr inbounds i8, ptr %0, i64 98
  store i8 %121, ptr %124, align 1, !tbaa !38
  %125 = getelementptr inbounds i8, ptr %0, i64 33
  store i8 %121, ptr %125, align 1, !tbaa !38
  %126 = add nuw nsw i32 %5, 1
  %127 = add nuw nsw i32 %126, %8
  %128 = lshr i32 %127, 1
  %129 = trunc i32 %128 to i8
  %130 = getelementptr inbounds i8, ptr %0, i64 196
  store i8 %129, ptr %130, align 1, !tbaa !38
  %131 = getelementptr inbounds i8, ptr %0, i64 131
  store i8 %129, ptr %131, align 1, !tbaa !38
  %132 = getelementptr inbounds i8, ptr %0, i64 66
  store i8 %129, ptr %132, align 1, !tbaa !38
  %133 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %129, ptr %133, align 1, !tbaa !38
  %134 = shl nuw nsw i32 %8, 1
  %135 = add nuw nsw i32 %5, 2
  %136 = add nuw nsw i32 %135, %134
  %137 = add nuw nsw i32 %136, %11
  %138 = lshr i32 %137, 2
  %139 = trunc i32 %138 to i8
  %140 = getelementptr inbounds i8, ptr %0, i64 229
  store i8 %139, ptr %140, align 1, !tbaa !38
  %141 = getelementptr inbounds i8, ptr %0, i64 164
  store i8 %139, ptr %141, align 1, !tbaa !38
  %142 = getelementptr inbounds i8, ptr %0, i64 99
  store i8 %139, ptr %142, align 1, !tbaa !38
  %143 = getelementptr inbounds i8, ptr %0, i64 34
  store i8 %139, ptr %143, align 1, !tbaa !38
  %144 = add nuw nsw i32 %8, 1
  %145 = add nuw nsw i32 %144, %11
  %146 = lshr i32 %145, 1
  %147 = trunc i32 %146 to i8
  %148 = getelementptr inbounds i8, ptr %0, i64 197
  store i8 %147, ptr %148, align 1, !tbaa !38
  %149 = getelementptr inbounds i8, ptr %0, i64 132
  store i8 %147, ptr %149, align 1, !tbaa !38
  %150 = getelementptr inbounds i8, ptr %0, i64 67
  store i8 %147, ptr %150, align 1, !tbaa !38
  %151 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %147, ptr %151, align 1, !tbaa !38
  %152 = shl nuw nsw i32 %11, 1
  %153 = add nuw nsw i32 %8, 2
  %154 = add nuw nsw i32 %153, %152
  %155 = add nuw nsw i32 %154, %14
  %156 = lshr i32 %155, 2
  %157 = trunc i32 %156 to i8
  %158 = getelementptr inbounds i8, ptr %0, i64 230
  store i8 %157, ptr %158, align 1, !tbaa !38
  %159 = getelementptr inbounds i8, ptr %0, i64 165
  store i8 %157, ptr %159, align 1, !tbaa !38
  %160 = getelementptr inbounds i8, ptr %0, i64 100
  store i8 %157, ptr %160, align 1, !tbaa !38
  %161 = getelementptr inbounds i8, ptr %0, i64 35
  store i8 %157, ptr %161, align 1, !tbaa !38
  %162 = add nuw nsw i32 %11, 1
  %163 = add nuw nsw i32 %162, %14
  %164 = lshr i32 %163, 1
  %165 = trunc i32 %164 to i8
  %166 = getelementptr inbounds i8, ptr %0, i64 198
  store i8 %165, ptr %166, align 1, !tbaa !38
  %167 = getelementptr inbounds i8, ptr %0, i64 133
  store i8 %165, ptr %167, align 1, !tbaa !38
  %168 = getelementptr inbounds i8, ptr %0, i64 68
  store i8 %165, ptr %168, align 1, !tbaa !38
  %169 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %165, ptr %169, align 1, !tbaa !38
  %170 = shl nuw nsw i32 %14, 1
  %171 = add nuw nsw i32 %11, 2
  %172 = add nuw nsw i32 %171, %170
  %173 = add nuw nsw i32 %172, %17
  %174 = lshr i32 %173, 2
  %175 = trunc i32 %174 to i8
  %176 = getelementptr inbounds i8, ptr %0, i64 231
  store i8 %175, ptr %176, align 1, !tbaa !38
  %177 = getelementptr inbounds i8, ptr %0, i64 166
  store i8 %175, ptr %177, align 1, !tbaa !38
  %178 = getelementptr inbounds i8, ptr %0, i64 101
  store i8 %175, ptr %178, align 1, !tbaa !38
  %179 = getelementptr inbounds i8, ptr %0, i64 36
  store i8 %175, ptr %179, align 1, !tbaa !38
  %180 = add nuw nsw i32 %14, 1
  %181 = add nuw nsw i32 %180, %17
  %182 = lshr i32 %181, 1
  %183 = trunc i32 %182 to i8
  %184 = getelementptr inbounds i8, ptr %0, i64 199
  store i8 %183, ptr %184, align 1, !tbaa !38
  %185 = getelementptr inbounds i8, ptr %0, i64 134
  store i8 %183, ptr %185, align 1, !tbaa !38
  %186 = getelementptr inbounds i8, ptr %0, i64 69
  store i8 %183, ptr %186, align 1, !tbaa !38
  %187 = getelementptr inbounds i8, ptr %0, i64 4
  store i8 %183, ptr %187, align 1, !tbaa !38
  %188 = shl nuw nsw i32 %17, 1
  %189 = add nuw nsw i32 %14, 2
  %190 = add nuw nsw i32 %189, %188
  %191 = add nuw nsw i32 %190, %20
  %192 = lshr i32 %191, 2
  %193 = trunc i32 %192 to i8
  %194 = getelementptr inbounds i8, ptr %0, i64 167
  store i8 %193, ptr %194, align 1, !tbaa !38
  %195 = getelementptr inbounds i8, ptr %0, i64 102
  store i8 %193, ptr %195, align 1, !tbaa !38
  %196 = getelementptr inbounds i8, ptr %0, i64 37
  store i8 %193, ptr %196, align 1, !tbaa !38
  %197 = add nuw nsw i32 %17, 1
  %198 = add nuw nsw i32 %197, %20
  %199 = lshr i32 %198, 1
  %200 = trunc i32 %199 to i8
  %201 = getelementptr inbounds i8, ptr %0, i64 135
  store i8 %200, ptr %201, align 1, !tbaa !38
  %202 = getelementptr inbounds i8, ptr %0, i64 70
  store i8 %200, ptr %202, align 1, !tbaa !38
  %203 = getelementptr inbounds i8, ptr %0, i64 5
  store i8 %200, ptr %203, align 1, !tbaa !38
  %204 = shl nuw nsw i32 %20, 1
  %205 = add nuw nsw i32 %17, 2
  %206 = add nuw nsw i32 %205, %204
  %207 = add nuw nsw i32 %206, %23
  %208 = lshr i32 %207, 2
  %209 = trunc i32 %208 to i8
  %210 = getelementptr inbounds i8, ptr %0, i64 103
  store i8 %209, ptr %210, align 1, !tbaa !38
  %211 = getelementptr inbounds i8, ptr %0, i64 38
  store i8 %209, ptr %211, align 1, !tbaa !38
  %212 = add nuw nsw i32 %20, 1
  %213 = add nuw nsw i32 %212, %23
  %214 = lshr i32 %213, 1
  %215 = trunc i32 %214 to i8
  %216 = getelementptr inbounds i8, ptr %0, i64 71
  store i8 %215, ptr %216, align 1, !tbaa !38
  %217 = getelementptr inbounds i8, ptr %0, i64 6
  store i8 %215, ptr %217, align 1, !tbaa !38
  %218 = shl nuw nsw i32 %23, 1
  %219 = add nuw nsw i32 %20, 2
  %220 = add nuw nsw i32 %219, %218
  %221 = add nuw nsw i32 %220, %26
  %222 = lshr i32 %221, 2
  %223 = trunc i32 %222 to i8
  %224 = getelementptr inbounds i8, ptr %0, i64 39
  store i8 %223, ptr %224, align 1, !tbaa !38
  %225 = add nuw nsw i32 %23, 1
  %226 = add nuw nsw i32 %225, %26
  %227 = lshr i32 %226, 1
  %228 = trunc i32 %227 to i8
  %229 = getelementptr inbounds i8, ptr %0, i64 7
  store i8 %228, ptr %229, align 1, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_hd(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load i8, ptr %3, align 1, !tbaa !38
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds i8, ptr %1, i64 17
  %7 = load i8, ptr %6, align 1, !tbaa !38
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds i8, ptr %1, i64 18
  %10 = load i8, ptr %9, align 1, !tbaa !38
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds i8, ptr %1, i64 19
  %13 = load i8, ptr %12, align 1, !tbaa !38
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds i8, ptr %1, i64 20
  %16 = load i8, ptr %15, align 1, !tbaa !38
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds i8, ptr %1, i64 21
  %19 = load i8, ptr %18, align 1, !tbaa !38
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds i8, ptr %1, i64 22
  %22 = load i8, ptr %21, align 1, !tbaa !38
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %1, i64 14
  %25 = load i8, ptr %24, align 1, !tbaa !38
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds i8, ptr %1, i64 13
  %28 = load i8, ptr %27, align 1, !tbaa !38
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds i8, ptr %1, i64 12
  %31 = load i8, ptr %30, align 1, !tbaa !38
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds i8, ptr %1, i64 11
  %34 = load i8, ptr %33, align 1, !tbaa !38
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds i8, ptr %1, i64 10
  %37 = load i8, ptr %36, align 1, !tbaa !38
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds i8, ptr %1, i64 9
  %40 = load i8, ptr %39, align 1, !tbaa !38
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds i8, ptr %1, i64 8
  %43 = load i8, ptr %42, align 1, !tbaa !38
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds i8, ptr %1, i64 7
  %46 = load i8, ptr %45, align 1, !tbaa !38
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds i8, ptr %1, i64 15
  %49 = load i8, ptr %48, align 1, !tbaa !38
  %50 = zext i8 %49 to i32
  %51 = add nuw nsw i32 %44, 1
  %52 = add nuw nsw i32 %51, %47
  %53 = lshr i32 %52, 1
  %54 = shl nuw nsw i32 %44, 1
  %55 = add nuw nsw i32 %54, %41
  %56 = add nuw nsw i32 %55, %47
  %57 = shl nuw nsw i32 %56, 6
  %58 = add nuw nsw i32 %57, 128
  %59 = and i32 %58, 2147483392
  %60 = add nuw nsw i32 %59, %53
  %61 = add nuw nsw i32 %41, 1
  %62 = add nuw nsw i32 %61, %44
  %63 = lshr i32 %62, 1
  %64 = shl nuw nsw i32 %41, 1
  %65 = add nuw nsw i32 %64, %38
  %66 = add nuw nsw i32 %65, %44
  %67 = shl nuw nsw i32 %66, 6
  %68 = add nuw nsw i32 %67, 128
  %69 = and i32 %68, 2147483392
  %70 = add nuw nsw i32 %69, %63
  %71 = add nuw nsw i32 %38, 1
  %72 = add nuw nsw i32 %71, %41
  %73 = lshr i32 %72, 1
  %74 = shl nuw nsw i32 %38, 1
  %75 = add nuw nsw i32 %74, %35
  %76 = add nuw nsw i32 %75, %41
  %77 = shl nuw nsw i32 %76, 6
  %78 = add nuw nsw i32 %77, 128
  %79 = and i32 %78, 2147483392
  %80 = add nuw nsw i32 %79, %73
  %81 = add nuw nsw i32 %35, 1
  %82 = add nuw nsw i32 %81, %38
  %83 = lshr i32 %82, 1
  %84 = shl nuw nsw i32 %35, 1
  %85 = add nuw nsw i32 %84, %32
  %86 = add nuw nsw i32 %85, %38
  %87 = shl nuw nsw i32 %86, 6
  %88 = add nuw nsw i32 %87, 128
  %89 = and i32 %88, 2147483392
  %90 = add nuw nsw i32 %89, %83
  %91 = add nuw nsw i32 %32, 1
  %92 = add nuw nsw i32 %91, %35
  %93 = lshr i32 %92, 1
  %94 = shl nuw nsw i32 %32, 1
  %95 = add nuw nsw i32 %94, %29
  %96 = add nuw nsw i32 %95, %35
  %97 = shl nuw nsw i32 %96, 6
  %98 = add nuw nsw i32 %97, 128
  %99 = and i32 %98, 2147483392
  %100 = add nuw nsw i32 %99, %93
  %101 = add nuw nsw i32 %29, 1
  %102 = add nuw nsw i32 %101, %32
  %103 = lshr i32 %102, 1
  %104 = shl nuw nsw i32 %29, 1
  %105 = add nuw nsw i32 %104, %26
  %106 = add nuw nsw i32 %105, %32
  %107 = shl nuw nsw i32 %106, 6
  %108 = add nuw nsw i32 %107, 128
  %109 = and i32 %108, 2147483392
  %110 = add nuw nsw i32 %109, %103
  %111 = add nuw nsw i32 %26, 1
  %112 = add nuw nsw i32 %111, %29
  %113 = lshr i32 %112, 1
  %114 = shl nuw nsw i32 %26, 1
  %115 = add nuw nsw i32 %114, %29
  %116 = add nuw nsw i32 %115, %50
  %117 = shl nuw nsw i32 %116, 6
  %118 = add nuw nsw i32 %117, 128
  %119 = and i32 %118, 2147483392
  %120 = add nuw nsw i32 %119, %113
  %121 = add nuw nsw i32 %26, 1
  %122 = add nuw nsw i32 %121, %50
  %123 = lshr i32 %122, 1
  %124 = add nuw nsw i32 %26, %5
  %125 = shl nuw nsw i32 %50, 7
  %126 = shl nuw nsw i32 %124, 6
  %127 = add nuw nsw i32 %125, %126
  %128 = add nuw nsw i32 %127, 128
  %129 = and i32 %128, 130816
  %130 = add nuw nsw i32 %129, %123
  %131 = shl nuw nsw i32 %5, 1
  %132 = add nuw nsw i32 %8, 2
  %133 = add nuw nsw i32 %132, %131
  %134 = add nuw nsw i32 %133, %50
  %135 = lshr i32 %134, 2
  %136 = add nuw nsw i32 %11, %5
  %137 = shl nuw nsw i32 %8, 7
  %138 = shl nuw nsw i32 %136, 6
  %139 = add nuw nsw i32 %137, %138
  %140 = add nuw nsw i32 %139, 128
  %141 = and i32 %140, 130816
  %142 = add nuw nsw i32 %135, %141
  %143 = shl nuw nsw i32 %11, 1
  %144 = add nuw nsw i32 %8, 2
  %145 = add nuw nsw i32 %144, %14
  %146 = add nuw nsw i32 %145, %143
  %147 = lshr i32 %146, 2
  %148 = add nuw nsw i32 %17, %11
  %149 = shl nuw nsw i32 %14, 7
  %150 = shl nuw nsw i32 %148, 6
  %151 = add nuw nsw i32 %149, %150
  %152 = add nuw nsw i32 %151, 128
  %153 = and i32 %152, 130816
  %154 = add nuw nsw i32 %153, %147
  %155 = shl nuw nsw i32 %17, 1
  %156 = add nuw nsw i32 %14, 2
  %157 = add nuw nsw i32 %156, %20
  %158 = add nuw nsw i32 %157, %155
  %159 = lshr i32 %158, 2
  %160 = add nuw nsw i32 %23, %17
  %161 = shl nuw nsw i32 %20, 7
  %162 = shl nuw nsw i32 %160, 6
  %163 = add nuw nsw i32 %161, %162
  %164 = add nuw nsw i32 %163, 128
  %165 = and i32 %164, 130816
  %166 = add nuw nsw i32 %165, %159
  %167 = shl nuw i32 %70, 16
  %168 = add nuw nsw i32 %60, %167
  %169 = getelementptr inbounds i8, ptr %0, i64 224
  store i32 %168, ptr %169, align 4, !tbaa !38
  %170 = shl nuw i32 %80, 16
  %171 = add nuw nsw i32 %170, %70
  %172 = getelementptr inbounds i8, ptr %0, i64 192
  store i32 %171, ptr %172, align 4, !tbaa !38
  %173 = shl nuw i32 %90, 16
  %174 = add nuw nsw i32 %173, %80
  %175 = getelementptr inbounds i8, ptr %0, i64 160
  store i32 %174, ptr %175, align 4, !tbaa !38
  %176 = getelementptr inbounds i8, ptr %0, i64 228
  store i32 %174, ptr %176, align 4, !tbaa !38
  %177 = shl nuw i32 %100, 16
  %178 = add nuw nsw i32 %177, %90
  %179 = getelementptr inbounds i8, ptr %0, i64 128
  store i32 %178, ptr %179, align 4, !tbaa !38
  %180 = getelementptr inbounds i8, ptr %0, i64 196
  store i32 %178, ptr %180, align 4, !tbaa !38
  %181 = shl nuw i32 %110, 16
  %182 = add nuw nsw i32 %181, %100
  %183 = getelementptr inbounds i8, ptr %0, i64 96
  store i32 %182, ptr %183, align 4, !tbaa !38
  %184 = getelementptr inbounds i8, ptr %0, i64 164
  store i32 %182, ptr %184, align 4, !tbaa !38
  %185 = shl nuw i32 %120, 16
  %186 = add nuw nsw i32 %185, %110
  %187 = getelementptr inbounds i8, ptr %0, i64 64
  store i32 %186, ptr %187, align 4, !tbaa !38
  %188 = getelementptr inbounds i8, ptr %0, i64 132
  store i32 %186, ptr %188, align 4, !tbaa !38
  %189 = shl nuw i32 %130, 16
  %190 = add nuw nsw i32 %189, %120
  %191 = getelementptr inbounds i8, ptr %0, i64 32
  store i32 %190, ptr %191, align 4, !tbaa !38
  %192 = getelementptr inbounds i8, ptr %0, i64 100
  store i32 %190, ptr %192, align 4, !tbaa !38
  %193 = shl nuw i32 %142, 16
  %194 = add nuw nsw i32 %130, %193
  store i32 %194, ptr %0, align 4, !tbaa !38
  %195 = getelementptr inbounds i8, ptr %0, i64 68
  store i32 %194, ptr %195, align 4, !tbaa !38
  %196 = shl nuw i32 %154, 16
  %197 = add nuw nsw i32 %142, %196
  %198 = getelementptr inbounds i8, ptr %0, i64 36
  store i32 %197, ptr %198, align 4, !tbaa !38
  %199 = shl nuw i32 %166, 16
  %200 = add nuw nsw i32 %199, %154
  %201 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %200, ptr %201, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_vl(ptr noundef writeonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load i8, ptr %3, align 1, !tbaa !38
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds i8, ptr %1, i64 17
  %7 = load i8, ptr %6, align 1, !tbaa !38
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds i8, ptr %1, i64 18
  %10 = load i8, ptr %9, align 1, !tbaa !38
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds i8, ptr %1, i64 19
  %13 = load i8, ptr %12, align 1, !tbaa !38
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds i8, ptr %1, i64 20
  %16 = load i8, ptr %15, align 1, !tbaa !38
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds i8, ptr %1, i64 21
  %19 = load i8, ptr %18, align 1, !tbaa !38
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds i8, ptr %1, i64 22
  %22 = load i8, ptr %21, align 1, !tbaa !38
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %1, i64 23
  %25 = load i8, ptr %24, align 1, !tbaa !38
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds i8, ptr %1, i64 24
  %28 = load i8, ptr %27, align 1, !tbaa !38
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds i8, ptr %1, i64 25
  %31 = load i8, ptr %30, align 1, !tbaa !38
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds i8, ptr %1, i64 26
  %34 = load i8, ptr %33, align 1, !tbaa !38
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds i8, ptr %1, i64 27
  %37 = load i8, ptr %36, align 1, !tbaa !38
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds i8, ptr %1, i64 28
  %40 = load i8, ptr %39, align 1, !tbaa !38
  %41 = zext i8 %40 to i32
  %42 = add nuw nsw i32 %8, 1
  %43 = add nuw nsw i32 %42, %5
  %44 = lshr i32 %43, 1
  %45 = trunc i32 %44 to i8
  store i8 %45, ptr %0, align 1, !tbaa !38
  %46 = shl nuw nsw i32 %8, 1
  %47 = add nuw nsw i32 %11, 2
  %48 = add nuw nsw i32 %47, %5
  %49 = add nuw nsw i32 %48, %46
  %50 = lshr i32 %49, 2
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds i8, ptr %0, i64 32
  store i8 %51, ptr %52, align 1, !tbaa !38
  %53 = add nuw nsw i32 %8, 1
  %54 = add nuw nsw i32 %53, %11
  %55 = lshr i32 %54, 1
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %56, ptr %57, align 1, !tbaa !38
  %58 = getelementptr inbounds i8, ptr %0, i64 64
  store i8 %56, ptr %58, align 1, !tbaa !38
  %59 = shl nuw nsw i32 %11, 1
  %60 = add nuw nsw i32 %14, 2
  %61 = add nuw nsw i32 %60, %8
  %62 = add nuw nsw i32 %61, %59
  %63 = lshr i32 %62, 2
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds i8, ptr %0, i64 33
  store i8 %64, ptr %65, align 1, !tbaa !38
  %66 = getelementptr inbounds i8, ptr %0, i64 96
  store i8 %64, ptr %66, align 1, !tbaa !38
  %67 = add nuw nsw i32 %11, 1
  %68 = add nuw nsw i32 %67, %14
  %69 = lshr i32 %68, 1
  %70 = trunc i32 %69 to i8
  %71 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %70, ptr %71, align 1, !tbaa !38
  %72 = getelementptr inbounds i8, ptr %0, i64 65
  store i8 %70, ptr %72, align 1, !tbaa !38
  %73 = getelementptr inbounds i8, ptr %0, i64 128
  store i8 %70, ptr %73, align 1, !tbaa !38
  %74 = shl nuw nsw i32 %14, 1
  %75 = add nuw nsw i32 %11, 2
  %76 = add nuw nsw i32 %75, %74
  %77 = add nuw nsw i32 %76, %17
  %78 = lshr i32 %77, 2
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds i8, ptr %0, i64 34
  store i8 %79, ptr %80, align 1, !tbaa !38
  %81 = getelementptr inbounds i8, ptr %0, i64 97
  store i8 %79, ptr %81, align 1, !tbaa !38
  %82 = getelementptr inbounds i8, ptr %0, i64 160
  store i8 %79, ptr %82, align 1, !tbaa !38
  %83 = add nuw nsw i32 %14, 1
  %84 = add nuw nsw i32 %83, %17
  %85 = lshr i32 %84, 1
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %86, ptr %87, align 1, !tbaa !38
  %88 = getelementptr inbounds i8, ptr %0, i64 66
  store i8 %86, ptr %88, align 1, !tbaa !38
  %89 = getelementptr inbounds i8, ptr %0, i64 129
  store i8 %86, ptr %89, align 1, !tbaa !38
  %90 = getelementptr inbounds i8, ptr %0, i64 192
  store i8 %86, ptr %90, align 1, !tbaa !38
  %91 = shl nuw nsw i32 %17, 1
  %92 = add nuw nsw i32 %14, 2
  %93 = add nuw nsw i32 %92, %91
  %94 = add nuw nsw i32 %93, %20
  %95 = lshr i32 %94, 2
  %96 = trunc i32 %95 to i8
  %97 = getelementptr inbounds i8, ptr %0, i64 35
  store i8 %96, ptr %97, align 1, !tbaa !38
  %98 = getelementptr inbounds i8, ptr %0, i64 98
  store i8 %96, ptr %98, align 1, !tbaa !38
  %99 = getelementptr inbounds i8, ptr %0, i64 161
  store i8 %96, ptr %99, align 1, !tbaa !38
  %100 = getelementptr inbounds i8, ptr %0, i64 224
  store i8 %96, ptr %100, align 1, !tbaa !38
  %101 = add nuw nsw i32 %17, 1
  %102 = add nuw nsw i32 %101, %20
  %103 = lshr i32 %102, 1
  %104 = trunc i32 %103 to i8
  %105 = getelementptr inbounds i8, ptr %0, i64 4
  store i8 %104, ptr %105, align 1, !tbaa !38
  %106 = getelementptr inbounds i8, ptr %0, i64 67
  store i8 %104, ptr %106, align 1, !tbaa !38
  %107 = getelementptr inbounds i8, ptr %0, i64 130
  store i8 %104, ptr %107, align 1, !tbaa !38
  %108 = getelementptr inbounds i8, ptr %0, i64 193
  store i8 %104, ptr %108, align 1, !tbaa !38
  %109 = shl nuw nsw i32 %20, 1
  %110 = add nuw nsw i32 %17, 2
  %111 = add nuw nsw i32 %110, %109
  %112 = add nuw nsw i32 %111, %23
  %113 = lshr i32 %112, 2
  %114 = trunc i32 %113 to i8
  %115 = getelementptr inbounds i8, ptr %0, i64 36
  store i8 %114, ptr %115, align 1, !tbaa !38
  %116 = getelementptr inbounds i8, ptr %0, i64 99
  store i8 %114, ptr %116, align 1, !tbaa !38
  %117 = getelementptr inbounds i8, ptr %0, i64 162
  store i8 %114, ptr %117, align 1, !tbaa !38
  %118 = getelementptr inbounds i8, ptr %0, i64 225
  store i8 %114, ptr %118, align 1, !tbaa !38
  %119 = add nuw nsw i32 %20, 1
  %120 = add nuw nsw i32 %119, %23
  %121 = lshr i32 %120, 1
  %122 = trunc i32 %121 to i8
  %123 = getelementptr inbounds i8, ptr %0, i64 5
  store i8 %122, ptr %123, align 1, !tbaa !38
  %124 = getelementptr inbounds i8, ptr %0, i64 68
  store i8 %122, ptr %124, align 1, !tbaa !38
  %125 = getelementptr inbounds i8, ptr %0, i64 131
  store i8 %122, ptr %125, align 1, !tbaa !38
  %126 = getelementptr inbounds i8, ptr %0, i64 194
  store i8 %122, ptr %126, align 1, !tbaa !38
  %127 = shl nuw nsw i32 %23, 1
  %128 = add nuw nsw i32 %20, 2
  %129 = add nuw nsw i32 %128, %127
  %130 = add nuw nsw i32 %129, %26
  %131 = lshr i32 %130, 2
  %132 = trunc i32 %131 to i8
  %133 = getelementptr inbounds i8, ptr %0, i64 37
  store i8 %132, ptr %133, align 1, !tbaa !38
  %134 = getelementptr inbounds i8, ptr %0, i64 100
  store i8 %132, ptr %134, align 1, !tbaa !38
  %135 = getelementptr inbounds i8, ptr %0, i64 163
  store i8 %132, ptr %135, align 1, !tbaa !38
  %136 = getelementptr inbounds i8, ptr %0, i64 226
  store i8 %132, ptr %136, align 1, !tbaa !38
  %137 = add nuw nsw i32 %23, 1
  %138 = add nuw nsw i32 %137, %26
  %139 = lshr i32 %138, 1
  %140 = trunc i32 %139 to i8
  %141 = getelementptr inbounds i8, ptr %0, i64 6
  store i8 %140, ptr %141, align 1, !tbaa !38
  %142 = getelementptr inbounds i8, ptr %0, i64 69
  store i8 %140, ptr %142, align 1, !tbaa !38
  %143 = getelementptr inbounds i8, ptr %0, i64 132
  store i8 %140, ptr %143, align 1, !tbaa !38
  %144 = getelementptr inbounds i8, ptr %0, i64 195
  store i8 %140, ptr %144, align 1, !tbaa !38
  %145 = shl nuw nsw i32 %26, 1
  %146 = add nuw nsw i32 %23, 2
  %147 = add nuw nsw i32 %146, %145
  %148 = add nuw nsw i32 %147, %29
  %149 = lshr i32 %148, 2
  %150 = trunc i32 %149 to i8
  %151 = getelementptr inbounds i8, ptr %0, i64 38
  store i8 %150, ptr %151, align 1, !tbaa !38
  %152 = getelementptr inbounds i8, ptr %0, i64 101
  store i8 %150, ptr %152, align 1, !tbaa !38
  %153 = getelementptr inbounds i8, ptr %0, i64 164
  store i8 %150, ptr %153, align 1, !tbaa !38
  %154 = getelementptr inbounds i8, ptr %0, i64 227
  store i8 %150, ptr %154, align 1, !tbaa !38
  %155 = add nuw nsw i32 %26, 1
  %156 = add nuw nsw i32 %155, %29
  %157 = lshr i32 %156, 1
  %158 = trunc i32 %157 to i8
  %159 = getelementptr inbounds i8, ptr %0, i64 7
  store i8 %158, ptr %159, align 1, !tbaa !38
  %160 = getelementptr inbounds i8, ptr %0, i64 70
  store i8 %158, ptr %160, align 1, !tbaa !38
  %161 = getelementptr inbounds i8, ptr %0, i64 133
  store i8 %158, ptr %161, align 1, !tbaa !38
  %162 = getelementptr inbounds i8, ptr %0, i64 196
  store i8 %158, ptr %162, align 1, !tbaa !38
  %163 = shl nuw nsw i32 %29, 1
  %164 = add nuw nsw i32 %26, 2
  %165 = add nuw nsw i32 %164, %163
  %166 = add nuw nsw i32 %165, %32
  %167 = lshr i32 %166, 2
  %168 = trunc i32 %167 to i8
  %169 = getelementptr inbounds i8, ptr %0, i64 39
  store i8 %168, ptr %169, align 1, !tbaa !38
  %170 = getelementptr inbounds i8, ptr %0, i64 102
  store i8 %168, ptr %170, align 1, !tbaa !38
  %171 = getelementptr inbounds i8, ptr %0, i64 165
  store i8 %168, ptr %171, align 1, !tbaa !38
  %172 = getelementptr inbounds i8, ptr %0, i64 228
  store i8 %168, ptr %172, align 1, !tbaa !38
  %173 = add nuw nsw i32 %29, 1
  %174 = add nuw nsw i32 %173, %32
  %175 = lshr i32 %174, 1
  %176 = trunc i32 %175 to i8
  %177 = getelementptr inbounds i8, ptr %0, i64 71
  store i8 %176, ptr %177, align 1, !tbaa !38
  %178 = getelementptr inbounds i8, ptr %0, i64 134
  store i8 %176, ptr %178, align 1, !tbaa !38
  %179 = getelementptr inbounds i8, ptr %0, i64 197
  store i8 %176, ptr %179, align 1, !tbaa !38
  %180 = shl nuw nsw i32 %32, 1
  %181 = add nuw nsw i32 %29, 2
  %182 = add nuw nsw i32 %181, %180
  %183 = add nuw nsw i32 %182, %35
  %184 = lshr i32 %183, 2
  %185 = trunc i32 %184 to i8
  %186 = getelementptr inbounds i8, ptr %0, i64 103
  store i8 %185, ptr %186, align 1, !tbaa !38
  %187 = getelementptr inbounds i8, ptr %0, i64 166
  store i8 %185, ptr %187, align 1, !tbaa !38
  %188 = getelementptr inbounds i8, ptr %0, i64 229
  store i8 %185, ptr %188, align 1, !tbaa !38
  %189 = add nuw nsw i32 %32, 1
  %190 = add nuw nsw i32 %189, %35
  %191 = lshr i32 %190, 1
  %192 = trunc i32 %191 to i8
  %193 = getelementptr inbounds i8, ptr %0, i64 135
  store i8 %192, ptr %193, align 1, !tbaa !38
  %194 = getelementptr inbounds i8, ptr %0, i64 198
  store i8 %192, ptr %194, align 1, !tbaa !38
  %195 = shl nuw nsw i32 %35, 1
  %196 = add nuw nsw i32 %32, 2
  %197 = add nuw nsw i32 %196, %195
  %198 = add nuw nsw i32 %197, %38
  %199 = lshr i32 %198, 2
  %200 = trunc i32 %199 to i8
  %201 = getelementptr inbounds i8, ptr %0, i64 167
  store i8 %200, ptr %201, align 1, !tbaa !38
  %202 = getelementptr inbounds i8, ptr %0, i64 230
  store i8 %200, ptr %202, align 1, !tbaa !38
  %203 = add nuw nsw i32 %35, 1
  %204 = add nuw nsw i32 %203, %38
  %205 = lshr i32 %204, 1
  %206 = trunc i32 %205 to i8
  %207 = getelementptr inbounds i8, ptr %0, i64 199
  store i8 %206, ptr %207, align 1, !tbaa !38
  %208 = shl nuw nsw i32 %38, 1
  %209 = add nuw nsw i32 %35, 2
  %210 = add nuw nsw i32 %209, %208
  %211 = add nuw nsw i32 %210, %41
  %212 = lshr i32 %211, 2
  %213 = trunc i32 %212 to i8
  %214 = getelementptr inbounds i8, ptr %0, i64 231
  store i8 %213, ptr %214, align 1, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_hu(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds i8, ptr %1, i64 14
  %4 = load i8, ptr %3, align 1, !tbaa !38
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds i8, ptr %1, i64 13
  %7 = load i8, ptr %6, align 1, !tbaa !38
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds i8, ptr %1, i64 12
  %10 = load i8, ptr %9, align 1, !tbaa !38
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds i8, ptr %1, i64 11
  %13 = load i8, ptr %12, align 1, !tbaa !38
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds i8, ptr %1, i64 10
  %16 = load i8, ptr %15, align 1, !tbaa !38
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds i8, ptr %1, i64 9
  %19 = load i8, ptr %18, align 1, !tbaa !38
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds i8, ptr %1, i64 8
  %22 = load i8, ptr %21, align 1, !tbaa !38
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %1, i64 7
  %25 = load i8, ptr %24, align 1, !tbaa !38
  %26 = zext i8 %25 to i32
  %27 = add nuw nsw i32 %8, 1
  %28 = add nuw nsw i32 %27, %5
  %29 = lshr i32 %28, 1
  %30 = shl nuw nsw i32 %8, 1
  %31 = add nuw nsw i32 %30, %5
  %32 = add nuw nsw i32 %31, %11
  %33 = shl nuw nsw i32 %32, 6
  %34 = add nuw nsw i32 %33, 128
  %35 = and i32 %34, 2147483392
  %36 = add nuw nsw i32 %35, %29
  %37 = add nuw nsw i32 %8, 1
  %38 = add nuw nsw i32 %37, %11
  %39 = lshr i32 %38, 1
  %40 = shl nuw nsw i32 %11, 1
  %41 = add nuw nsw i32 %40, %8
  %42 = add nuw nsw i32 %41, %14
  %43 = shl nuw nsw i32 %42, 6
  %44 = add nuw nsw i32 %43, 128
  %45 = and i32 %44, 2147483392
  %46 = add nuw nsw i32 %45, %39
  %47 = add nuw nsw i32 %11, 1
  %48 = add nuw nsw i32 %47, %14
  %49 = lshr i32 %48, 1
  %50 = shl nuw nsw i32 %14, 1
  %51 = add nuw nsw i32 %50, %11
  %52 = add nuw nsw i32 %51, %17
  %53 = shl nuw nsw i32 %52, 6
  %54 = add nuw nsw i32 %53, 128
  %55 = and i32 %54, 2147483392
  %56 = add nuw nsw i32 %55, %49
  %57 = add nuw nsw i32 %14, 1
  %58 = add nuw nsw i32 %57, %17
  %59 = lshr i32 %58, 1
  %60 = shl nuw nsw i32 %17, 1
  %61 = add nuw nsw i32 %60, %14
  %62 = add nuw nsw i32 %61, %20
  %63 = shl nuw nsw i32 %62, 6
  %64 = add nuw nsw i32 %63, 128
  %65 = and i32 %64, 2147483392
  %66 = add nuw nsw i32 %65, %59
  %67 = add nuw nsw i32 %17, 1
  %68 = add nuw nsw i32 %67, %20
  %69 = lshr i32 %68, 1
  %70 = shl nuw nsw i32 %20, 1
  %71 = add nuw nsw i32 %70, %17
  %72 = add nuw nsw i32 %71, %23
  %73 = shl nuw nsw i32 %72, 6
  %74 = add nuw nsw i32 %73, 128
  %75 = and i32 %74, 2147483392
  %76 = add nuw nsw i32 %75, %69
  %77 = add nuw nsw i32 %20, 1
  %78 = add nuw nsw i32 %77, %23
  %79 = lshr i32 %78, 1
  %80 = shl nuw nsw i32 %23, 1
  %81 = add nuw nsw i32 %80, %20
  %82 = add nuw nsw i32 %81, %26
  %83 = shl nuw nsw i32 %82, 6
  %84 = add nuw nsw i32 %83, 128
  %85 = and i32 %84, 2147483392
  %86 = add nuw nsw i32 %85, %79
  %87 = add nuw nsw i32 %23, 1
  %88 = add nuw nsw i32 %87, %26
  %89 = lshr i32 %88, 1
  %90 = add nuw nsw i32 %26, %23
  %91 = shl nuw nsw i32 %26, 7
  %92 = shl nuw nsw i32 %90, 6
  %93 = add nuw nsw i32 %91, %92
  %94 = add nuw nsw i32 %93, 128
  %95 = and i32 %94, 130816
  %96 = add nuw nsw i32 %95, %89
  %97 = shl nuw i32 %46, 16
  %98 = add nuw nsw i32 %36, %97
  store i32 %98, ptr %0, align 4, !tbaa !38
  %99 = shl nuw i32 %56, 16
  %100 = add nuw nsw i32 %99, %46
  %101 = getelementptr inbounds i8, ptr %0, i64 32
  store i32 %100, ptr %101, align 4, !tbaa !38
  %102 = shl nuw i32 %66, 16
  %103 = add nuw nsw i32 %102, %56
  %104 = getelementptr inbounds i8, ptr %0, i64 64
  store i32 %103, ptr %104, align 4, !tbaa !38
  %105 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %103, ptr %105, align 4, !tbaa !38
  %106 = shl nuw i32 %76, 16
  %107 = add nuw nsw i32 %106, %66
  %108 = getelementptr inbounds i8, ptr %0, i64 96
  store i32 %107, ptr %108, align 4, !tbaa !38
  %109 = getelementptr inbounds i8, ptr %0, i64 36
  store i32 %107, ptr %109, align 4, !tbaa !38
  %110 = shl nuw i32 %86, 16
  %111 = add nuw nsw i32 %110, %76
  %112 = getelementptr inbounds i8, ptr %0, i64 128
  store i32 %111, ptr %112, align 4, !tbaa !38
  %113 = getelementptr inbounds i8, ptr %0, i64 68
  store i32 %111, ptr %113, align 4, !tbaa !38
  %114 = shl nuw i32 %96, 16
  %115 = add nuw nsw i32 %114, %86
  %116 = getelementptr inbounds i8, ptr %0, i64 160
  store i32 %115, ptr %116, align 4, !tbaa !38
  %117 = getelementptr inbounds i8, ptr %0, i64 100
  store i32 %115, ptr %117, align 4, !tbaa !38
  %118 = mul nuw i32 %26, 16842752
  %119 = add nuw nsw i32 %96, %118
  %120 = getelementptr inbounds i8, ptr %0, i64 192
  store i32 %119, ptr %120, align 4, !tbaa !38
  %121 = getelementptr inbounds i8, ptr %0, i64 132
  store i32 %119, ptr %121, align 4, !tbaa !38
  %122 = mul nuw i32 %26, 16843009
  %123 = getelementptr inbounds i8, ptr %0, i64 228
  store i32 %122, ptr %123, align 4, !tbaa !38
  %124 = getelementptr inbounds i8, ptr %0, i64 224
  store i32 %122, ptr %124, align 4, !tbaa !38
  %125 = getelementptr inbounds i8, ptr %0, i64 196
  store i32 %122, ptr %125, align 4, !tbaa !38
  %126 = getelementptr inbounds i8, ptr %0, i64 164
  store i32 %122, ptr %126, align 4, !tbaa !38
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8_dc_left(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds i8, ptr %1, i64 14
  %4 = load i8, ptr %3, align 1, !tbaa !38
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds i8, ptr %1, i64 13
  %7 = load i8, ptr %6, align 1, !tbaa !38
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds i8, ptr %1, i64 12
  %10 = load i8, ptr %9, align 1, !tbaa !38
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds i8, ptr %1, i64 11
  %13 = load i8, ptr %12, align 1, !tbaa !38
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds i8, ptr %1, i64 10
  %16 = load i8, ptr %15, align 1, !tbaa !38
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds i8, ptr %1, i64 9
  %19 = load i8, ptr %18, align 1, !tbaa !38
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds i8, ptr %1, i64 8
  %22 = load i8, ptr %21, align 1, !tbaa !38
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %1, i64 7
  %25 = load i8, ptr %24, align 1, !tbaa !38
  %26 = zext i8 %25 to i32
  %27 = add nuw nsw i32 %5, 4
  %28 = add nuw nsw i32 %27, %8
  %29 = add nuw nsw i32 %28, %11
  %30 = add nuw nsw i32 %29, %14
  %31 = add nuw nsw i32 %30, %17
  %32 = add nuw nsw i32 %31, %20
  %33 = add nuw nsw i32 %32, %23
  %34 = add nuw nsw i32 %33, %26
  %35 = lshr i32 %34, 3
  %36 = mul nuw nsw i32 %35, 16843009
  br label %38

37:                                               ; preds = %38
  ret void

38:                                               ; preds = %2, %38
  %39 = phi i32 [ 0, %2 ], [ %43, %38 ]
  %40 = phi ptr [ %0, %2 ], [ %42, %38 ]
  store i32 %36, ptr %40, align 4, !tbaa !38
  %41 = getelementptr inbounds i8, ptr %40, i64 4
  store i32 %36, ptr %41, align 4, !tbaa !38
  %42 = getelementptr inbounds i8, ptr %40, i64 32
  %43 = add nuw nsw i32 %39, 1
  %44 = icmp eq i32 %43, 8
  br i1 %44, label %37, label %38, !llvm.loop !69
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8_dc_top(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load i8, ptr %3, align 1, !tbaa !38
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds i8, ptr %1, i64 17
  %7 = load i8, ptr %6, align 1, !tbaa !38
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds i8, ptr %1, i64 18
  %10 = load i8, ptr %9, align 1, !tbaa !38
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds i8, ptr %1, i64 19
  %13 = load i8, ptr %12, align 1, !tbaa !38
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds i8, ptr %1, i64 20
  %16 = load i8, ptr %15, align 1, !tbaa !38
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds i8, ptr %1, i64 21
  %19 = load i8, ptr %18, align 1, !tbaa !38
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds i8, ptr %1, i64 22
  %22 = load i8, ptr %21, align 1, !tbaa !38
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %1, i64 23
  %25 = load i8, ptr %24, align 1, !tbaa !38
  %26 = zext i8 %25 to i32
  %27 = add nuw nsw i32 %5, 4
  %28 = add nuw nsw i32 %27, %8
  %29 = add nuw nsw i32 %28, %11
  %30 = add nuw nsw i32 %29, %14
  %31 = add nuw nsw i32 %30, %17
  %32 = add nuw nsw i32 %31, %20
  %33 = add nuw nsw i32 %32, %23
  %34 = add nuw nsw i32 %33, %26
  %35 = lshr i32 %34, 3
  %36 = mul nuw nsw i32 %35, 16843009
  br label %38

37:                                               ; preds = %38
  ret void

38:                                               ; preds = %2, %38
  %39 = phi i32 [ 0, %2 ], [ %43, %38 ]
  %40 = phi ptr [ %0, %2 ], [ %42, %38 ]
  store i32 %36, ptr %40, align 4, !tbaa !38
  %41 = getelementptr inbounds i8, ptr %40, i64 4
  store i32 %36, ptr %41, align 4, !tbaa !38
  %42 = getelementptr inbounds i8, ptr %40, i64 32
  %43 = add nuw nsw i32 %39, 1
  %44 = icmp eq i32 %43, 8
  br i1 %44, label %37, label %38, !llvm.loop !70
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define internal void @predict_8x8_dc_128(ptr nocapture noundef writeonly %0, ptr nocapture readnone %1) #3 {
  br label %4

3:                                                ; preds = %4
  ret void

4:                                                ; preds = %2, %4
  %5 = phi i32 [ 0, %2 ], [ %9, %4 ]
  %6 = phi ptr [ %0, %2 ], [ %8, %4 ]
  store i32 -2139062144, ptr %6, align 4, !tbaa !38
  %7 = getelementptr inbounds i8, ptr %6, i64 4
  store i32 -2139062144, ptr %7, align 4, !tbaa !38
  %8 = getelementptr inbounds i8, ptr %6, i64 32
  %9 = add nuw nsw i32 %5, 1
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %3, label %4, !llvm.loop !71
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8_filter(ptr noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #6 {
  %5 = and i32 %2, 8
  %6 = and i32 %3, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %135, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, ptr %0, i64 -32
  %10 = load i8, ptr %9, align 1, !tbaa !38
  %11 = zext i8 %10 to i16
  %12 = getelementptr inbounds i8, ptr %0, i64 -33
  %13 = load i8, ptr %12, align 1, !tbaa !38
  %14 = zext i8 %13 to i16
  %15 = shl nuw nsw i16 %14, 1
  %16 = getelementptr inbounds i8, ptr %0, i64 -1
  %17 = load i8, ptr %16, align 1, !tbaa !38
  %18 = zext i8 %17 to i16
  %19 = add nuw nsw i16 %11, 2
  %20 = add nuw nsw i16 %19, %15
  %21 = add nuw nsw i16 %20, %18
  %22 = lshr i16 %21, 2
  %23 = trunc i16 %22 to i8
  %24 = getelementptr inbounds i8, ptr %1, i64 15
  store i8 %23, ptr %24, align 1, !tbaa !38
  %25 = icmp eq i32 %5, 0
  %26 = load i8, ptr %16, align 1
  %27 = load i8, ptr %12, align 1
  %28 = select i1 %25, i8 %26, i8 %27
  %29 = zext i8 %28 to i16
  %30 = zext i8 %26 to i16
  %31 = shl nuw nsw i16 %30, 1
  %32 = getelementptr inbounds i8, ptr %0, i64 31
  %33 = load i8, ptr %32, align 1, !tbaa !38
  %34 = zext i8 %33 to i16
  %35 = add nuw nsw i16 %31, 2
  %36 = add nuw nsw i16 %35, %29
  %37 = add nuw nsw i16 %36, %34
  %38 = lshr i16 %37, 2
  %39 = trunc i16 %38 to i8
  %40 = getelementptr inbounds i8, ptr %1, i64 14
  store i8 %39, ptr %40, align 1, !tbaa !38
  %41 = load i8, ptr %16, align 1, !tbaa !38
  %42 = zext i8 %41 to i16
  %43 = load i8, ptr %32, align 1, !tbaa !38
  %44 = zext i8 %43 to i16
  %45 = shl nuw nsw i16 %44, 1
  %46 = getelementptr inbounds i8, ptr %0, i64 63
  %47 = load i8, ptr %46, align 1, !tbaa !38
  %48 = zext i8 %47 to i16
  %49 = add nuw nsw i16 %42, 2
  %50 = add nuw nsw i16 %49, %45
  %51 = add nuw nsw i16 %50, %48
  %52 = lshr i16 %51, 2
  %53 = trunc i16 %52 to i8
  %54 = getelementptr inbounds i8, ptr %1, i64 13
  store i8 %53, ptr %54, align 1, !tbaa !38
  %55 = load i8, ptr %32, align 1, !tbaa !38
  %56 = zext i8 %55 to i16
  %57 = load i8, ptr %46, align 1, !tbaa !38
  %58 = zext i8 %57 to i16
  %59 = shl nuw nsw i16 %58, 1
  %60 = getelementptr inbounds i8, ptr %0, i64 95
  %61 = load i8, ptr %60, align 1, !tbaa !38
  %62 = zext i8 %61 to i16
  %63 = add nuw nsw i16 %56, 2
  %64 = add nuw nsw i16 %63, %59
  %65 = add nuw nsw i16 %64, %62
  %66 = lshr i16 %65, 2
  %67 = trunc i16 %66 to i8
  %68 = getelementptr inbounds i8, ptr %1, i64 12
  store i8 %67, ptr %68, align 1, !tbaa !38
  %69 = load i8, ptr %46, align 1, !tbaa !38
  %70 = zext i8 %69 to i16
  %71 = load i8, ptr %60, align 1, !tbaa !38
  %72 = zext i8 %71 to i16
  %73 = shl nuw nsw i16 %72, 1
  %74 = getelementptr inbounds i8, ptr %0, i64 127
  %75 = load i8, ptr %74, align 1, !tbaa !38
  %76 = zext i8 %75 to i16
  %77 = add nuw nsw i16 %70, 2
  %78 = add nuw nsw i16 %77, %73
  %79 = add nuw nsw i16 %78, %76
  %80 = lshr i16 %79, 2
  %81 = trunc i16 %80 to i8
  %82 = getelementptr inbounds i8, ptr %1, i64 11
  store i8 %81, ptr %82, align 1, !tbaa !38
  %83 = load i8, ptr %60, align 1, !tbaa !38
  %84 = zext i8 %83 to i16
  %85 = load i8, ptr %74, align 1, !tbaa !38
  %86 = zext i8 %85 to i16
  %87 = shl nuw nsw i16 %86, 1
  %88 = getelementptr inbounds i8, ptr %0, i64 159
  %89 = load i8, ptr %88, align 1, !tbaa !38
  %90 = zext i8 %89 to i16
  %91 = add nuw nsw i16 %84, 2
  %92 = add nuw nsw i16 %91, %87
  %93 = add nuw nsw i16 %92, %90
  %94 = lshr i16 %93, 2
  %95 = trunc i16 %94 to i8
  %96 = getelementptr inbounds i8, ptr %1, i64 10
  store i8 %95, ptr %96, align 1, !tbaa !38
  %97 = load i8, ptr %74, align 1, !tbaa !38
  %98 = zext i8 %97 to i16
  %99 = load i8, ptr %88, align 1, !tbaa !38
  %100 = zext i8 %99 to i16
  %101 = shl nuw nsw i16 %100, 1
  %102 = getelementptr inbounds i8, ptr %0, i64 191
  %103 = load i8, ptr %102, align 1, !tbaa !38
  %104 = zext i8 %103 to i16
  %105 = add nuw nsw i16 %98, 2
  %106 = add nuw nsw i16 %105, %101
  %107 = add nuw nsw i16 %106, %104
  %108 = lshr i16 %107, 2
  %109 = trunc i16 %108 to i8
  %110 = getelementptr inbounds i8, ptr %1, i64 9
  store i8 %109, ptr %110, align 1, !tbaa !38
  %111 = load i8, ptr %88, align 1, !tbaa !38
  %112 = zext i8 %111 to i16
  %113 = load i8, ptr %102, align 1, !tbaa !38
  %114 = zext i8 %113 to i16
  %115 = shl nuw nsw i16 %114, 1
  %116 = getelementptr inbounds i8, ptr %0, i64 223
  %117 = load i8, ptr %116, align 1, !tbaa !38
  %118 = zext i8 %117 to i16
  %119 = add nuw nsw i16 %112, 2
  %120 = add nuw nsw i16 %119, %115
  %121 = add nuw nsw i16 %120, %118
  %122 = lshr i16 %121, 2
  %123 = trunc i16 %122 to i8
  %124 = getelementptr inbounds i8, ptr %1, i64 8
  store i8 %123, ptr %124, align 1, !tbaa !38
  %125 = load i8, ptr %102, align 1, !tbaa !38
  %126 = zext i8 %125 to i16
  %127 = load i8, ptr %116, align 1, !tbaa !38
  %128 = zext i8 %127 to i16
  %129 = mul nuw nsw i16 %128, 3
  %130 = add nuw nsw i16 %126, 2
  %131 = add nuw nsw i16 %130, %129
  %132 = lshr i16 %131, 2
  %133 = trunc i16 %132 to i8
  %134 = getelementptr inbounds i8, ptr %1, i64 7
  store i8 %133, ptr %134, align 1, !tbaa !38
  br label %135

135:                                              ; preds = %8, %4
  %136 = and i32 %3, 2
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %382, label %138

138:                                              ; preds = %135
  %139 = and i32 %2, 4
  %140 = icmp eq i32 %5, 0
  %141 = getelementptr inbounds i8, ptr %0, i64 -33
  %142 = getelementptr inbounds i8, ptr %0, i64 -32
  %143 = select i1 %140, ptr %142, ptr %141
  %144 = load i8, ptr %143, align 1, !tbaa !38
  %145 = zext i8 %144 to i16
  %146 = load i8, ptr %142, align 1, !tbaa !38
  %147 = zext i8 %146 to i16
  %148 = shl nuw nsw i16 %147, 1
  %149 = getelementptr inbounds i8, ptr %0, i64 -31
  %150 = load i8, ptr %149, align 1, !tbaa !38
  %151 = zext i8 %150 to i16
  %152 = add nuw nsw i16 %145, 2
  %153 = add nuw nsw i16 %152, %148
  %154 = add nuw nsw i16 %153, %151
  %155 = lshr i16 %154, 2
  %156 = trunc i16 %155 to i8
  %157 = getelementptr inbounds i8, ptr %1, i64 16
  store i8 %156, ptr %157, align 1, !tbaa !38
  %158 = load i8, ptr %142, align 1, !tbaa !38
  %159 = zext i8 %158 to i16
  %160 = load i8, ptr %149, align 1, !tbaa !38
  %161 = zext i8 %160 to i16
  %162 = shl nuw nsw i16 %161, 1
  %163 = getelementptr inbounds i8, ptr %0, i64 -30
  %164 = load i8, ptr %163, align 1, !tbaa !38
  %165 = zext i8 %164 to i16
  %166 = add nuw nsw i16 %159, 2
  %167 = add nuw nsw i16 %166, %162
  %168 = add nuw nsw i16 %167, %165
  %169 = lshr i16 %168, 2
  %170 = trunc i16 %169 to i8
  %171 = getelementptr inbounds i8, ptr %1, i64 17
  store i8 %170, ptr %171, align 1, !tbaa !38
  %172 = load i8, ptr %149, align 1, !tbaa !38
  %173 = zext i8 %172 to i16
  %174 = load i8, ptr %163, align 1, !tbaa !38
  %175 = zext i8 %174 to i16
  %176 = shl nuw nsw i16 %175, 1
  %177 = getelementptr inbounds i8, ptr %0, i64 -29
  %178 = load i8, ptr %177, align 1, !tbaa !38
  %179 = zext i8 %178 to i16
  %180 = add nuw nsw i16 %173, 2
  %181 = add nuw nsw i16 %180, %176
  %182 = add nuw nsw i16 %181, %179
  %183 = lshr i16 %182, 2
  %184 = trunc i16 %183 to i8
  %185 = getelementptr inbounds i8, ptr %1, i64 18
  store i8 %184, ptr %185, align 1, !tbaa !38
  %186 = load i8, ptr %163, align 1, !tbaa !38
  %187 = zext i8 %186 to i16
  %188 = load i8, ptr %177, align 1, !tbaa !38
  %189 = zext i8 %188 to i16
  %190 = shl nuw nsw i16 %189, 1
  %191 = getelementptr inbounds i8, ptr %0, i64 -28
  %192 = load i8, ptr %191, align 1, !tbaa !38
  %193 = zext i8 %192 to i16
  %194 = add nuw nsw i16 %187, 2
  %195 = add nuw nsw i16 %194, %190
  %196 = add nuw nsw i16 %195, %193
  %197 = lshr i16 %196, 2
  %198 = trunc i16 %197 to i8
  %199 = getelementptr inbounds i8, ptr %1, i64 19
  store i8 %198, ptr %199, align 1, !tbaa !38
  %200 = load i8, ptr %177, align 1, !tbaa !38
  %201 = zext i8 %200 to i16
  %202 = load i8, ptr %191, align 1, !tbaa !38
  %203 = zext i8 %202 to i16
  %204 = shl nuw nsw i16 %203, 1
  %205 = getelementptr inbounds i8, ptr %0, i64 -27
  %206 = load i8, ptr %205, align 1, !tbaa !38
  %207 = zext i8 %206 to i16
  %208 = add nuw nsw i16 %201, 2
  %209 = add nuw nsw i16 %208, %204
  %210 = add nuw nsw i16 %209, %207
  %211 = lshr i16 %210, 2
  %212 = trunc i16 %211 to i8
  %213 = getelementptr inbounds i8, ptr %1, i64 20
  store i8 %212, ptr %213, align 1, !tbaa !38
  %214 = load i8, ptr %191, align 1, !tbaa !38
  %215 = zext i8 %214 to i16
  %216 = load i8, ptr %205, align 1, !tbaa !38
  %217 = zext i8 %216 to i16
  %218 = shl nuw nsw i16 %217, 1
  %219 = getelementptr inbounds i8, ptr %0, i64 -26
  %220 = load i8, ptr %219, align 1, !tbaa !38
  %221 = zext i8 %220 to i16
  %222 = add nuw nsw i16 %215, 2
  %223 = add nuw nsw i16 %222, %218
  %224 = add nuw nsw i16 %223, %221
  %225 = lshr i16 %224, 2
  %226 = trunc i16 %225 to i8
  %227 = getelementptr inbounds i8, ptr %1, i64 21
  store i8 %226, ptr %227, align 1, !tbaa !38
  %228 = load i8, ptr %205, align 1, !tbaa !38
  %229 = zext i8 %228 to i16
  %230 = load i8, ptr %219, align 1, !tbaa !38
  %231 = zext i8 %230 to i16
  %232 = shl nuw nsw i16 %231, 1
  %233 = getelementptr inbounds i8, ptr %0, i64 -25
  %234 = load i8, ptr %233, align 1, !tbaa !38
  %235 = zext i8 %234 to i16
  %236 = add nuw nsw i16 %229, 2
  %237 = add nuw nsw i16 %236, %232
  %238 = add nuw nsw i16 %237, %235
  %239 = lshr i16 %238, 2
  %240 = trunc i16 %239 to i8
  %241 = getelementptr inbounds i8, ptr %1, i64 22
  store i8 %240, ptr %241, align 1, !tbaa !38
  %242 = load i8, ptr %219, align 1, !tbaa !38
  %243 = zext i8 %242 to i32
  %244 = load i8, ptr %233, align 1, !tbaa !38
  %245 = zext i8 %244 to i32
  %246 = shl nuw nsw i32 %245, 1
  %247 = icmp eq i32 %139, 0
  br i1 %247, label %252, label %248

248:                                              ; preds = %138
  %249 = getelementptr inbounds i8, ptr %0, i64 -24
  %250 = load i8, ptr %249, align 1, !tbaa !38
  %251 = zext i8 %250 to i32
  br label %252

252:                                              ; preds = %138, %248
  %253 = phi i32 [ %251, %248 ], [ %245, %138 ]
  %254 = add nuw nsw i32 %243, 2
  %255 = add nuw nsw i32 %254, %246
  %256 = add nuw nsw i32 %255, %253
  %257 = lshr i32 %256, 2
  %258 = trunc i32 %257 to i8
  %259 = getelementptr inbounds i8, ptr %1, i64 23
  store i8 %258, ptr %259, align 1, !tbaa !38
  %260 = and i32 %3, 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %382, label %262

262:                                              ; preds = %252
  %263 = load i8, ptr %233, align 1, !tbaa !38
  br i1 %247, label %373, label %264

264:                                              ; preds = %262
  %265 = zext i8 %263 to i16
  %266 = getelementptr inbounds i8, ptr %0, i64 -24
  %267 = load i8, ptr %266, align 1, !tbaa !38
  %268 = zext i8 %267 to i16
  %269 = shl nuw nsw i16 %268, 1
  %270 = getelementptr inbounds i8, ptr %0, i64 -23
  %271 = load i8, ptr %270, align 1, !tbaa !38
  %272 = zext i8 %271 to i16
  %273 = add nuw nsw i16 %265, 2
  %274 = add nuw nsw i16 %273, %269
  %275 = add nuw nsw i16 %274, %272
  %276 = lshr i16 %275, 2
  %277 = trunc i16 %276 to i8
  %278 = getelementptr inbounds i8, ptr %1, i64 24
  store i8 %277, ptr %278, align 1, !tbaa !38
  %279 = load i8, ptr %266, align 1, !tbaa !38
  %280 = zext i8 %279 to i16
  %281 = load i8, ptr %270, align 1, !tbaa !38
  %282 = zext i8 %281 to i16
  %283 = shl nuw nsw i16 %282, 1
  %284 = getelementptr inbounds i8, ptr %0, i64 -22
  %285 = load i8, ptr %284, align 1, !tbaa !38
  %286 = zext i8 %285 to i16
  %287 = add nuw nsw i16 %280, 2
  %288 = add nuw nsw i16 %287, %283
  %289 = add nuw nsw i16 %288, %286
  %290 = lshr i16 %289, 2
  %291 = trunc i16 %290 to i8
  %292 = getelementptr inbounds i8, ptr %1, i64 25
  store i8 %291, ptr %292, align 1, !tbaa !38
  %293 = load i8, ptr %270, align 1, !tbaa !38
  %294 = zext i8 %293 to i16
  %295 = load i8, ptr %284, align 1, !tbaa !38
  %296 = zext i8 %295 to i16
  %297 = shl nuw nsw i16 %296, 1
  %298 = getelementptr inbounds i8, ptr %0, i64 -21
  %299 = load i8, ptr %298, align 1, !tbaa !38
  %300 = zext i8 %299 to i16
  %301 = add nuw nsw i16 %294, 2
  %302 = add nuw nsw i16 %301, %297
  %303 = add nuw nsw i16 %302, %300
  %304 = lshr i16 %303, 2
  %305 = trunc i16 %304 to i8
  %306 = getelementptr inbounds i8, ptr %1, i64 26
  store i8 %305, ptr %306, align 1, !tbaa !38
  %307 = load i8, ptr %284, align 1, !tbaa !38
  %308 = zext i8 %307 to i16
  %309 = load i8, ptr %298, align 1, !tbaa !38
  %310 = zext i8 %309 to i16
  %311 = shl nuw nsw i16 %310, 1
  %312 = getelementptr inbounds i8, ptr %0, i64 -20
  %313 = load i8, ptr %312, align 1, !tbaa !38
  %314 = zext i8 %313 to i16
  %315 = add nuw nsw i16 %308, 2
  %316 = add nuw nsw i16 %315, %311
  %317 = add nuw nsw i16 %316, %314
  %318 = lshr i16 %317, 2
  %319 = trunc i16 %318 to i8
  %320 = getelementptr inbounds i8, ptr %1, i64 27
  store i8 %319, ptr %320, align 1, !tbaa !38
  %321 = load i8, ptr %298, align 1, !tbaa !38
  %322 = zext i8 %321 to i16
  %323 = load i8, ptr %312, align 1, !tbaa !38
  %324 = zext i8 %323 to i16
  %325 = shl nuw nsw i16 %324, 1
  %326 = getelementptr inbounds i8, ptr %0, i64 -19
  %327 = load i8, ptr %326, align 1, !tbaa !38
  %328 = zext i8 %327 to i16
  %329 = add nuw nsw i16 %322, 2
  %330 = add nuw nsw i16 %329, %325
  %331 = add nuw nsw i16 %330, %328
  %332 = lshr i16 %331, 2
  %333 = trunc i16 %332 to i8
  %334 = getelementptr inbounds i8, ptr %1, i64 28
  store i8 %333, ptr %334, align 1, !tbaa !38
  %335 = load i8, ptr %312, align 1, !tbaa !38
  %336 = zext i8 %335 to i16
  %337 = load i8, ptr %326, align 1, !tbaa !38
  %338 = zext i8 %337 to i16
  %339 = shl nuw nsw i16 %338, 1
  %340 = getelementptr inbounds i8, ptr %0, i64 -18
  %341 = load i8, ptr %340, align 1, !tbaa !38
  %342 = zext i8 %341 to i16
  %343 = add nuw nsw i16 %336, 2
  %344 = add nuw nsw i16 %343, %339
  %345 = add nuw nsw i16 %344, %342
  %346 = lshr i16 %345, 2
  %347 = trunc i16 %346 to i8
  %348 = getelementptr inbounds i8, ptr %1, i64 29
  store i8 %347, ptr %348, align 1, !tbaa !38
  %349 = load i8, ptr %326, align 1, !tbaa !38
  %350 = zext i8 %349 to i16
  %351 = load i8, ptr %340, align 1, !tbaa !38
  %352 = zext i8 %351 to i16
  %353 = shl nuw nsw i16 %352, 1
  %354 = getelementptr inbounds i8, ptr %0, i64 -17
  %355 = load i8, ptr %354, align 1, !tbaa !38
  %356 = zext i8 %355 to i16
  %357 = add nuw nsw i16 %350, 2
  %358 = add nuw nsw i16 %357, %353
  %359 = add nuw nsw i16 %358, %356
  %360 = lshr i16 %359, 2
  %361 = trunc i16 %360 to i8
  %362 = getelementptr inbounds i8, ptr %1, i64 30
  store i8 %361, ptr %362, align 1, !tbaa !38
  %363 = load i8, ptr %340, align 1, !tbaa !38
  %364 = zext i8 %363 to i16
  %365 = load i8, ptr %354, align 1, !tbaa !38
  %366 = zext i8 %365 to i16
  %367 = mul nuw nsw i16 %366, 3
  %368 = add nuw nsw i16 %364, 2
  %369 = add nuw nsw i16 %368, %367
  %370 = lshr i16 %369, 2
  %371 = trunc i16 %370 to i8
  %372 = getelementptr inbounds i8, ptr %1, i64 32
  store i8 %371, ptr %372, align 1, !tbaa !38
  br label %378

373:                                              ; preds = %262
  %374 = zext i8 %263 to i64
  %375 = mul nuw i64 %374, 72340172838076673
  %376 = getelementptr inbounds i8, ptr %1, i64 24
  store i64 %375, ptr %376, align 8, !tbaa !38
  %377 = load i8, ptr %233, align 1, !tbaa !38
  br label %378

378:                                              ; preds = %264, %373
  %379 = phi i64 [ 32, %373 ], [ 31, %264 ]
  %380 = phi i8 [ %377, %373 ], [ %371, %264 ]
  %381 = getelementptr inbounds i8, ptr %1, i64 %379
  store i8 %380, ptr %381, align 1, !tbaa !38
  br label %382

382:                                              ; preds = %378, %252, %135
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_predict_4x4_init(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  store ptr @predict_4x4_v, ptr %1, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %1, i64 1
  store ptr @predict_4x4_h, ptr %3, align 8, !tbaa !34
  %4 = getelementptr inbounds ptr, ptr %1, i64 2
  store ptr @predict_4x4_dc, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds ptr, ptr %1, i64 3
  store ptr @predict_4x4_ddl, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds ptr, ptr %1, i64 4
  store ptr @predict_4x4_ddr, ptr %6, align 8, !tbaa !34
  %7 = getelementptr inbounds ptr, ptr %1, i64 5
  store ptr @predict_4x4_vr, ptr %7, align 8, !tbaa !34
  %8 = getelementptr inbounds ptr, ptr %1, i64 6
  store ptr @predict_4x4_hd, ptr %8, align 8, !tbaa !34
  %9 = getelementptr inbounds ptr, ptr %1, i64 7
  store ptr @predict_4x4_vl, ptr %9, align 8, !tbaa !34
  %10 = getelementptr inbounds ptr, ptr %1, i64 8
  store ptr @predict_4x4_hu, ptr %10, align 8, !tbaa !34
  %11 = getelementptr inbounds ptr, ptr %1, i64 9
  store ptr @predict_4x4_dc_left, ptr %11, align 8, !tbaa !34
  %12 = getelementptr inbounds ptr, ptr %1, i64 10
  store ptr @predict_4x4_dc_top, ptr %12, align 8, !tbaa !34
  %13 = getelementptr inbounds ptr, ptr %1, i64 11
  store ptr @predict_4x4_dc_128, ptr %13, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_v(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  %3 = load i32, ptr %2, align 4, !tbaa !38
  %4 = getelementptr inbounds i8, ptr %0, i64 96
  store i32 %3, ptr %4, align 4, !tbaa !38
  %5 = getelementptr inbounds i8, ptr %0, i64 64
  store i32 %3, ptr %5, align 4, !tbaa !38
  %6 = getelementptr inbounds i8, ptr %0, i64 32
  store i32 %3, ptr %6, align 4, !tbaa !38
  store i32 %3, ptr %0, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_h(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -1
  %3 = load i8, ptr %2, align 1, !tbaa !38
  %4 = zext i8 %3 to i32
  %5 = mul nuw nsw i32 %4, 16843009
  store i32 %5, ptr %0, align 4, !tbaa !38
  %6 = getelementptr inbounds i8, ptr %0, i64 31
  %7 = load i8, ptr %6, align 1, !tbaa !38
  %8 = zext i8 %7 to i32
  %9 = mul nuw nsw i32 %8, 16843009
  %10 = getelementptr inbounds i8, ptr %0, i64 32
  store i32 %9, ptr %10, align 4, !tbaa !38
  %11 = getelementptr inbounds i8, ptr %0, i64 63
  %12 = load i8, ptr %11, align 1, !tbaa !38
  %13 = zext i8 %12 to i32
  %14 = mul nuw nsw i32 %13, 16843009
  %15 = getelementptr inbounds i8, ptr %0, i64 64
  store i32 %14, ptr %15, align 4, !tbaa !38
  %16 = getelementptr inbounds i8, ptr %0, i64 95
  %17 = load i8, ptr %16, align 1, !tbaa !38
  %18 = zext i8 %17 to i32
  %19 = mul nuw nsw i32 %18, 16843009
  %20 = getelementptr inbounds i8, ptr %0, i64 96
  store i32 %19, ptr %20, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_dc(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -1
  %3 = load i8, ptr %2, align 1, !tbaa !38
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds i8, ptr %0, i64 31
  %6 = load i8, ptr %5, align 1, !tbaa !38
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds i8, ptr %0, i64 63
  %9 = load i8, ptr %8, align 1, !tbaa !38
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds i8, ptr %0, i64 95
  %12 = load i8, ptr %11, align 1, !tbaa !38
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds i8, ptr %0, i64 -32
  %15 = load i8, ptr %14, align 1, !tbaa !38
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds i8, ptr %0, i64 -31
  %18 = load i8, ptr %17, align 1, !tbaa !38
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds i8, ptr %0, i64 -30
  %21 = load i8, ptr %20, align 1, !tbaa !38
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds i8, ptr %0, i64 -29
  %24 = load i8, ptr %23, align 1, !tbaa !38
  %25 = zext i8 %24 to i32
  %26 = add nuw nsw i32 %4, 4
  %27 = add nuw nsw i32 %26, %7
  %28 = add nuw nsw i32 %27, %10
  %29 = add nuw nsw i32 %28, %13
  %30 = add nuw nsw i32 %29, %16
  %31 = add nuw nsw i32 %30, %19
  %32 = add nuw nsw i32 %31, %22
  %33 = add nuw nsw i32 %32, %25
  %34 = lshr i32 %33, 3
  %35 = mul nuw nsw i32 %34, 16843009
  %36 = getelementptr inbounds i8, ptr %0, i64 96
  store i32 %35, ptr %36, align 4, !tbaa !38
  %37 = getelementptr inbounds i8, ptr %0, i64 64
  store i32 %35, ptr %37, align 4, !tbaa !38
  %38 = getelementptr inbounds i8, ptr %0, i64 32
  store i32 %35, ptr %38, align 4, !tbaa !38
  store i32 %35, ptr %0, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_ddl(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  %3 = load i8, ptr %2, align 1, !tbaa !38
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds i8, ptr %0, i64 -31
  %6 = load i8, ptr %5, align 1, !tbaa !38
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds i8, ptr %0, i64 -30
  %9 = load i8, ptr %8, align 1, !tbaa !38
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds i8, ptr %0, i64 -29
  %12 = load i8, ptr %11, align 1, !tbaa !38
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds i8, ptr %0, i64 -28
  %15 = load i8, ptr %14, align 1, !tbaa !38
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds i8, ptr %0, i64 -27
  %18 = load i8, ptr %17, align 1, !tbaa !38
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds i8, ptr %0, i64 -26
  %21 = load i8, ptr %20, align 1, !tbaa !38
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds i8, ptr %0, i64 -25
  %24 = load i8, ptr %23, align 1, !tbaa !38
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %7, 1
  %27 = add nuw nsw i32 %10, 2
  %28 = add nuw nsw i32 %27, %4
  %29 = add nuw nsw i32 %28, %26
  %30 = lshr i32 %29, 2
  %31 = trunc i32 %30 to i8
  store i8 %31, ptr %0, align 1, !tbaa !38
  %32 = shl nuw nsw i32 %10, 1
  %33 = add nuw nsw i32 %13, 2
  %34 = add nuw nsw i32 %33, %7
  %35 = add nuw nsw i32 %34, %32
  %36 = lshr i32 %35, 2
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds i8, ptr %0, i64 32
  store i8 %37, ptr %38, align 1, !tbaa !38
  %39 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %37, ptr %39, align 1, !tbaa !38
  %40 = shl nuw nsw i32 %13, 1
  %41 = add nuw nsw i32 %10, 2
  %42 = add nuw nsw i32 %41, %40
  %43 = add nuw nsw i32 %42, %16
  %44 = lshr i32 %43, 2
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds i8, ptr %0, i64 64
  store i8 %45, ptr %46, align 1, !tbaa !38
  %47 = getelementptr inbounds i8, ptr %0, i64 33
  store i8 %45, ptr %47, align 1, !tbaa !38
  %48 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %45, ptr %48, align 1, !tbaa !38
  %49 = shl nuw nsw i32 %16, 1
  %50 = add nuw nsw i32 %13, 2
  %51 = add nuw nsw i32 %50, %49
  %52 = add nuw nsw i32 %51, %19
  %53 = lshr i32 %52, 2
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds i8, ptr %0, i64 96
  store i8 %54, ptr %55, align 1, !tbaa !38
  %56 = getelementptr inbounds i8, ptr %0, i64 65
  store i8 %54, ptr %56, align 1, !tbaa !38
  %57 = getelementptr inbounds i8, ptr %0, i64 34
  store i8 %54, ptr %57, align 1, !tbaa !38
  %58 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %54, ptr %58, align 1, !tbaa !38
  %59 = shl nuw nsw i32 %19, 1
  %60 = add nuw nsw i32 %16, 2
  %61 = add nuw nsw i32 %60, %59
  %62 = add nuw nsw i32 %61, %22
  %63 = lshr i32 %62, 2
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds i8, ptr %0, i64 97
  store i8 %64, ptr %65, align 1, !tbaa !38
  %66 = getelementptr inbounds i8, ptr %0, i64 66
  store i8 %64, ptr %66, align 1, !tbaa !38
  %67 = getelementptr inbounds i8, ptr %0, i64 35
  store i8 %64, ptr %67, align 1, !tbaa !38
  %68 = shl nuw nsw i32 %22, 1
  %69 = add nuw nsw i32 %19, 2
  %70 = add nuw nsw i32 %69, %68
  %71 = add nuw nsw i32 %70, %25
  %72 = lshr i32 %71, 2
  %73 = trunc i32 %72 to i8
  %74 = getelementptr inbounds i8, ptr %0, i64 98
  store i8 %73, ptr %74, align 1, !tbaa !38
  %75 = getelementptr inbounds i8, ptr %0, i64 67
  store i8 %73, ptr %75, align 1, !tbaa !38
  %76 = shl nuw nsw i32 %25, 1
  %77 = add nuw nsw i32 %22, 2
  %78 = add nuw nsw i32 %77, %25
  %79 = add nuw nsw i32 %78, %76
  %80 = lshr i32 %79, 2
  %81 = trunc i32 %80 to i8
  %82 = getelementptr inbounds i8, ptr %0, i64 99
  store i8 %81, ptr %82, align 1, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_ddr(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -33
  %3 = load i8, ptr %2, align 1, !tbaa !38
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds i8, ptr %0, i64 -1
  %6 = load i8, ptr %5, align 1, !tbaa !38
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds i8, ptr %0, i64 31
  %9 = load i8, ptr %8, align 1, !tbaa !38
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds i8, ptr %0, i64 63
  %12 = load i8, ptr %11, align 1, !tbaa !38
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds i8, ptr %0, i64 95
  %15 = load i8, ptr %14, align 1, !tbaa !38
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds i8, ptr %0, i64 -32
  %18 = load i8, ptr %17, align 1, !tbaa !38
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds i8, ptr %0, i64 -31
  %21 = load i8, ptr %20, align 1, !tbaa !38
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds i8, ptr %0, i64 -30
  %24 = load i8, ptr %23, align 1, !tbaa !38
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds i8, ptr %0, i64 -29
  %27 = load i8, ptr %26, align 1, !tbaa !38
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %25, 1
  %30 = add nuw nsw i32 %22, 2
  %31 = add nuw nsw i32 %30, %28
  %32 = add nuw nsw i32 %31, %29
  %33 = lshr i32 %32, 2
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %34, ptr %35, align 1, !tbaa !38
  %36 = shl nuw nsw i32 %22, 1
  %37 = add nuw nsw i32 %19, 2
  %38 = add nuw nsw i32 %37, %25
  %39 = add nuw nsw i32 %38, %36
  %40 = lshr i32 %39, 2
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds i8, ptr %0, i64 35
  store i8 %41, ptr %42, align 1, !tbaa !38
  %43 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %41, ptr %43, align 1, !tbaa !38
  %44 = shl nuw nsw i32 %19, 1
  %45 = add nuw nsw i32 %4, 2
  %46 = add nuw nsw i32 %45, %22
  %47 = add nuw nsw i32 %46, %44
  %48 = lshr i32 %47, 2
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds i8, ptr %0, i64 67
  store i8 %49, ptr %50, align 1, !tbaa !38
  %51 = getelementptr inbounds i8, ptr %0, i64 34
  store i8 %49, ptr %51, align 1, !tbaa !38
  %52 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %49, ptr %52, align 1, !tbaa !38
  %53 = shl nuw nsw i32 %4, 1
  %54 = add nuw nsw i32 %7, 2
  %55 = add nuw nsw i32 %54, %53
  %56 = add nuw nsw i32 %55, %19
  %57 = lshr i32 %56, 2
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds i8, ptr %0, i64 99
  store i8 %58, ptr %59, align 1, !tbaa !38
  %60 = getelementptr inbounds i8, ptr %0, i64 66
  store i8 %58, ptr %60, align 1, !tbaa !38
  %61 = getelementptr inbounds i8, ptr %0, i64 33
  store i8 %58, ptr %61, align 1, !tbaa !38
  store i8 %58, ptr %0, align 1, !tbaa !38
  %62 = shl nuw nsw i32 %7, 1
  %63 = add nuw nsw i32 %4, 2
  %64 = add nuw nsw i32 %63, %62
  %65 = add nuw nsw i32 %64, %10
  %66 = lshr i32 %65, 2
  %67 = trunc i32 %66 to i8
  %68 = getelementptr inbounds i8, ptr %0, i64 98
  store i8 %67, ptr %68, align 1, !tbaa !38
  %69 = getelementptr inbounds i8, ptr %0, i64 65
  store i8 %67, ptr %69, align 1, !tbaa !38
  %70 = getelementptr inbounds i8, ptr %0, i64 32
  store i8 %67, ptr %70, align 1, !tbaa !38
  %71 = shl nuw nsw i32 %10, 1
  %72 = add nuw nsw i32 %7, 2
  %73 = add nuw nsw i32 %72, %71
  %74 = add nuw nsw i32 %73, %13
  %75 = lshr i32 %74, 2
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds i8, ptr %0, i64 97
  store i8 %76, ptr %77, align 1, !tbaa !38
  %78 = getelementptr inbounds i8, ptr %0, i64 64
  store i8 %76, ptr %78, align 1, !tbaa !38
  %79 = shl nuw nsw i32 %13, 1
  %80 = add nuw nsw i32 %10, 2
  %81 = add nuw nsw i32 %80, %79
  %82 = add nuw nsw i32 %81, %16
  %83 = lshr i32 %82, 2
  %84 = trunc i32 %83 to i8
  %85 = getelementptr inbounds i8, ptr %0, i64 96
  store i8 %84, ptr %85, align 1, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_vr(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -33
  %3 = load i8, ptr %2, align 1, !tbaa !38
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds i8, ptr %0, i64 -1
  %6 = load i8, ptr %5, align 1, !tbaa !38
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds i8, ptr %0, i64 31
  %9 = load i8, ptr %8, align 1, !tbaa !38
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds i8, ptr %0, i64 63
  %12 = load i8, ptr %11, align 1, !tbaa !38
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds i8, ptr %0, i64 -32
  %15 = load i8, ptr %14, align 1, !tbaa !38
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds i8, ptr %0, i64 -31
  %18 = load i8, ptr %17, align 1, !tbaa !38
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds i8, ptr %0, i64 -30
  %21 = load i8, ptr %20, align 1, !tbaa !38
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds i8, ptr %0, i64 -29
  %24 = load i8, ptr %23, align 1, !tbaa !38
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %10, 1
  %27 = add nuw nsw i32 %7, 2
  %28 = add nuw nsw i32 %27, %13
  %29 = add nuw nsw i32 %28, %26
  %30 = lshr i32 %29, 2
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds i8, ptr %0, i64 96
  store i8 %31, ptr %32, align 1, !tbaa !38
  %33 = shl nuw nsw i32 %7, 1
  %34 = add nuw nsw i32 %4, 2
  %35 = add nuw nsw i32 %34, %10
  %36 = add nuw nsw i32 %35, %33
  %37 = lshr i32 %36, 2
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds i8, ptr %0, i64 64
  store i8 %38, ptr %39, align 1, !tbaa !38
  %40 = shl nuw nsw i32 %4, 1
  %41 = add nuw nsw i32 %7, 2
  %42 = add nuw nsw i32 %41, %40
  %43 = add nuw nsw i32 %42, %16
  %44 = lshr i32 %43, 2
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds i8, ptr %0, i64 97
  store i8 %45, ptr %46, align 1, !tbaa !38
  %47 = getelementptr inbounds i8, ptr %0, i64 32
  store i8 %45, ptr %47, align 1, !tbaa !38
  %48 = add nuw nsw i32 %16, 1
  %49 = add nuw nsw i32 %48, %4
  %50 = lshr i32 %49, 1
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds i8, ptr %0, i64 65
  store i8 %51, ptr %52, align 1, !tbaa !38
  store i8 %51, ptr %0, align 1, !tbaa !38
  %53 = shl nuw nsw i32 %16, 1
  %54 = add nuw nsw i32 %4, 2
  %55 = add nuw nsw i32 %54, %53
  %56 = add nuw nsw i32 %55, %19
  %57 = lshr i32 %56, 2
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds i8, ptr %0, i64 98
  store i8 %58, ptr %59, align 1, !tbaa !38
  %60 = getelementptr inbounds i8, ptr %0, i64 33
  store i8 %58, ptr %60, align 1, !tbaa !38
  %61 = add nuw nsw i32 %16, 1
  %62 = add nuw nsw i32 %61, %19
  %63 = lshr i32 %62, 1
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds i8, ptr %0, i64 66
  store i8 %64, ptr %65, align 1, !tbaa !38
  %66 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %64, ptr %66, align 1, !tbaa !38
  %67 = shl nuw nsw i32 %19, 1
  %68 = add nuw nsw i32 %16, 2
  %69 = add nuw nsw i32 %68, %67
  %70 = add nuw nsw i32 %69, %22
  %71 = lshr i32 %70, 2
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds i8, ptr %0, i64 99
  store i8 %72, ptr %73, align 1, !tbaa !38
  %74 = getelementptr inbounds i8, ptr %0, i64 34
  store i8 %72, ptr %74, align 1, !tbaa !38
  %75 = add nuw nsw i32 %19, 1
  %76 = add nuw nsw i32 %75, %22
  %77 = lshr i32 %76, 1
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds i8, ptr %0, i64 67
  store i8 %78, ptr %79, align 1, !tbaa !38
  %80 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %78, ptr %80, align 1, !tbaa !38
  %81 = shl nuw nsw i32 %22, 1
  %82 = add nuw nsw i32 %19, 2
  %83 = add nuw nsw i32 %82, %81
  %84 = add nuw nsw i32 %83, %25
  %85 = lshr i32 %84, 2
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds i8, ptr %0, i64 35
  store i8 %86, ptr %87, align 1, !tbaa !38
  %88 = add nuw nsw i32 %22, 1
  %89 = add nuw nsw i32 %88, %25
  %90 = lshr i32 %89, 1
  %91 = trunc i32 %90 to i8
  %92 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %91, ptr %92, align 1, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_hd(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -33
  %3 = load i8, ptr %2, align 1, !tbaa !38
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds i8, ptr %0, i64 -1
  %6 = load i8, ptr %5, align 1, !tbaa !38
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds i8, ptr %0, i64 31
  %9 = load i8, ptr %8, align 1, !tbaa !38
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds i8, ptr %0, i64 63
  %12 = load i8, ptr %11, align 1, !tbaa !38
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds i8, ptr %0, i64 95
  %15 = load i8, ptr %14, align 1, !tbaa !38
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds i8, ptr %0, i64 -32
  %18 = load i8, ptr %17, align 1, !tbaa !38
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds i8, ptr %0, i64 -31
  %21 = load i8, ptr %20, align 1, !tbaa !38
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds i8, ptr %0, i64 -30
  %24 = load i8, ptr %23, align 1, !tbaa !38
  %25 = zext i8 %24 to i32
  %26 = add nuw nsw i32 %13, 1
  %27 = add nuw nsw i32 %26, %16
  %28 = lshr i32 %27, 1
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds i8, ptr %0, i64 96
  store i8 %29, ptr %30, align 1, !tbaa !38
  %31 = shl nuw nsw i32 %13, 1
  %32 = add nuw nsw i32 %10, 2
  %33 = add nuw nsw i32 %32, %31
  %34 = add nuw nsw i32 %33, %16
  %35 = lshr i32 %34, 2
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds i8, ptr %0, i64 97
  store i8 %36, ptr %37, align 1, !tbaa !38
  %38 = add nuw nsw i32 %10, 1
  %39 = add nuw nsw i32 %38, %13
  %40 = lshr i32 %39, 1
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds i8, ptr %0, i64 98
  store i8 %41, ptr %42, align 1, !tbaa !38
  %43 = getelementptr inbounds i8, ptr %0, i64 64
  store i8 %41, ptr %43, align 1, !tbaa !38
  %44 = shl nuw nsw i32 %10, 1
  %45 = add nuw nsw i32 %7, 2
  %46 = add nuw nsw i32 %45, %44
  %47 = add nuw nsw i32 %46, %13
  %48 = lshr i32 %47, 2
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds i8, ptr %0, i64 99
  store i8 %49, ptr %50, align 1, !tbaa !38
  %51 = getelementptr inbounds i8, ptr %0, i64 65
  store i8 %49, ptr %51, align 1, !tbaa !38
  %52 = add nuw nsw i32 %7, 1
  %53 = add nuw nsw i32 %52, %10
  %54 = lshr i32 %53, 1
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds i8, ptr %0, i64 66
  store i8 %55, ptr %56, align 1, !tbaa !38
  %57 = getelementptr inbounds i8, ptr %0, i64 32
  store i8 %55, ptr %57, align 1, !tbaa !38
  %58 = shl nuw nsw i32 %7, 1
  %59 = add nuw nsw i32 %4, 2
  %60 = add nuw nsw i32 %59, %58
  %61 = add nuw nsw i32 %60, %10
  %62 = lshr i32 %61, 2
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds i8, ptr %0, i64 67
  store i8 %63, ptr %64, align 1, !tbaa !38
  %65 = getelementptr inbounds i8, ptr %0, i64 33
  store i8 %63, ptr %65, align 1, !tbaa !38
  %66 = add nuw nsw i32 %7, 1
  %67 = add nuw nsw i32 %66, %4
  %68 = lshr i32 %67, 1
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds i8, ptr %0, i64 34
  store i8 %69, ptr %70, align 1, !tbaa !38
  store i8 %69, ptr %0, align 1, !tbaa !38
  %71 = shl nuw nsw i32 %4, 1
  %72 = add nuw nsw i32 %7, 2
  %73 = add nuw nsw i32 %72, %71
  %74 = add nuw nsw i32 %73, %19
  %75 = lshr i32 %74, 2
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds i8, ptr %0, i64 35
  store i8 %76, ptr %77, align 1, !tbaa !38
  %78 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %76, ptr %78, align 1, !tbaa !38
  %79 = shl nuw nsw i32 %19, 1
  %80 = add nuw nsw i32 %4, 2
  %81 = add nuw nsw i32 %80, %22
  %82 = add nuw nsw i32 %81, %79
  %83 = lshr i32 %82, 2
  %84 = trunc i32 %83 to i8
  %85 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %84, ptr %85, align 1, !tbaa !38
  %86 = shl nuw nsw i32 %22, 1
  %87 = add nuw nsw i32 %19, 2
  %88 = add nuw nsw i32 %87, %25
  %89 = add nuw nsw i32 %88, %86
  %90 = lshr i32 %89, 2
  %91 = trunc i32 %90 to i8
  %92 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %91, ptr %92, align 1, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_vl(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  %3 = load i8, ptr %2, align 1, !tbaa !38
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds i8, ptr %0, i64 -31
  %6 = load i8, ptr %5, align 1, !tbaa !38
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds i8, ptr %0, i64 -30
  %9 = load i8, ptr %8, align 1, !tbaa !38
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds i8, ptr %0, i64 -29
  %12 = load i8, ptr %11, align 1, !tbaa !38
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds i8, ptr %0, i64 -28
  %15 = load i8, ptr %14, align 1, !tbaa !38
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds i8, ptr %0, i64 -27
  %18 = load i8, ptr %17, align 1, !tbaa !38
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds i8, ptr %0, i64 -26
  %21 = load i8, ptr %20, align 1, !tbaa !38
  %22 = zext i8 %21 to i32
  %23 = add nuw nsw i32 %7, 1
  %24 = add nuw nsw i32 %23, %4
  %25 = lshr i32 %24, 1
  %26 = trunc i32 %25 to i8
  store i8 %26, ptr %0, align 1, !tbaa !38
  %27 = shl nuw nsw i32 %7, 1
  %28 = add nuw nsw i32 %10, 2
  %29 = add nuw nsw i32 %28, %4
  %30 = add nuw nsw i32 %29, %27
  %31 = lshr i32 %30, 2
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds i8, ptr %0, i64 32
  store i8 %32, ptr %33, align 1, !tbaa !38
  %34 = add nuw nsw i32 %7, 1
  %35 = add nuw nsw i32 %34, %10
  %36 = lshr i32 %35, 1
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds i8, ptr %0, i64 64
  store i8 %37, ptr %38, align 1, !tbaa !38
  %39 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %37, ptr %39, align 1, !tbaa !38
  %40 = shl nuw nsw i32 %10, 1
  %41 = add nuw nsw i32 %13, 2
  %42 = add nuw nsw i32 %41, %7
  %43 = add nuw nsw i32 %42, %40
  %44 = lshr i32 %43, 2
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds i8, ptr %0, i64 96
  store i8 %45, ptr %46, align 1, !tbaa !38
  %47 = getelementptr inbounds i8, ptr %0, i64 33
  store i8 %45, ptr %47, align 1, !tbaa !38
  %48 = add nuw nsw i32 %10, 1
  %49 = add nuw nsw i32 %48, %13
  %50 = lshr i32 %49, 1
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds i8, ptr %0, i64 65
  store i8 %51, ptr %52, align 1, !tbaa !38
  %53 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %51, ptr %53, align 1, !tbaa !38
  %54 = shl nuw nsw i32 %13, 1
  %55 = add nuw nsw i32 %10, 2
  %56 = add nuw nsw i32 %55, %54
  %57 = add nuw nsw i32 %56, %16
  %58 = lshr i32 %57, 2
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds i8, ptr %0, i64 97
  store i8 %59, ptr %60, align 1, !tbaa !38
  %61 = getelementptr inbounds i8, ptr %0, i64 34
  store i8 %59, ptr %61, align 1, !tbaa !38
  %62 = add nuw nsw i32 %13, 1
  %63 = add nuw nsw i32 %62, %16
  %64 = lshr i32 %63, 1
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds i8, ptr %0, i64 66
  store i8 %65, ptr %66, align 1, !tbaa !38
  %67 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %65, ptr %67, align 1, !tbaa !38
  %68 = shl nuw nsw i32 %16, 1
  %69 = add nuw nsw i32 %13, 2
  %70 = add nuw nsw i32 %69, %68
  %71 = add nuw nsw i32 %70, %19
  %72 = lshr i32 %71, 2
  %73 = trunc i32 %72 to i8
  %74 = getelementptr inbounds i8, ptr %0, i64 98
  store i8 %73, ptr %74, align 1, !tbaa !38
  %75 = getelementptr inbounds i8, ptr %0, i64 35
  store i8 %73, ptr %75, align 1, !tbaa !38
  %76 = add nuw nsw i32 %16, 1
  %77 = add nuw nsw i32 %76, %19
  %78 = lshr i32 %77, 1
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds i8, ptr %0, i64 67
  store i8 %79, ptr %80, align 1, !tbaa !38
  %81 = shl nuw nsw i32 %19, 1
  %82 = add nuw nsw i32 %16, 2
  %83 = add nuw nsw i32 %82, %81
  %84 = add nuw nsw i32 %83, %22
  %85 = lshr i32 %84, 2
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds i8, ptr %0, i64 99
  store i8 %86, ptr %87, align 1, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_hu(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -1
  %3 = load i8, ptr %2, align 1, !tbaa !38
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds i8, ptr %0, i64 31
  %6 = load i8, ptr %5, align 1, !tbaa !38
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds i8, ptr %0, i64 63
  %9 = load i8, ptr %8, align 1, !tbaa !38
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds i8, ptr %0, i64 95
  %12 = load i8, ptr %11, align 1, !tbaa !38
  %13 = zext i8 %12 to i32
  %14 = add nuw nsw i32 %7, 1
  %15 = add nuw nsw i32 %14, %4
  %16 = lshr i32 %15, 1
  %17 = trunc i32 %16 to i8
  store i8 %17, ptr %0, align 1, !tbaa !38
  %18 = shl nuw nsw i32 %7, 1
  %19 = add nuw nsw i32 %10, 2
  %20 = add nuw nsw i32 %19, %4
  %21 = add nuw nsw i32 %20, %18
  %22 = lshr i32 %21, 2
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %23, ptr %24, align 1, !tbaa !38
  %25 = add nuw nsw i32 %7, 1
  %26 = add nuw nsw i32 %25, %10
  %27 = lshr i32 %26, 1
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds i8, ptr %0, i64 32
  store i8 %28, ptr %29, align 1, !tbaa !38
  %30 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %28, ptr %30, align 1, !tbaa !38
  %31 = shl nuw nsw i32 %10, 1
  %32 = add nuw nsw i32 %13, 2
  %33 = add nuw nsw i32 %32, %7
  %34 = add nuw nsw i32 %33, %31
  %35 = lshr i32 %34, 2
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds i8, ptr %0, i64 33
  store i8 %36, ptr %37, align 1, !tbaa !38
  %38 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %36, ptr %38, align 1, !tbaa !38
  %39 = add nuw nsw i32 %10, 1
  %40 = add nuw nsw i32 %39, %13
  %41 = lshr i32 %40, 1
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds i8, ptr %0, i64 64
  store i8 %42, ptr %43, align 1, !tbaa !38
  %44 = getelementptr inbounds i8, ptr %0, i64 34
  store i8 %42, ptr %44, align 1, !tbaa !38
  %45 = shl nuw nsw i32 %13, 1
  %46 = add nuw nsw i32 %10, 2
  %47 = add nuw nsw i32 %46, %13
  %48 = add nuw nsw i32 %47, %45
  %49 = lshr i32 %48, 2
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds i8, ptr %0, i64 65
  store i8 %50, ptr %51, align 1, !tbaa !38
  %52 = getelementptr inbounds i8, ptr %0, i64 35
  store i8 %50, ptr %52, align 1, !tbaa !38
  %53 = getelementptr inbounds i8, ptr %0, i64 99
  store i8 %12, ptr %53, align 1, !tbaa !38
  %54 = getelementptr inbounds i8, ptr %0, i64 98
  store i8 %12, ptr %54, align 1, !tbaa !38
  %55 = getelementptr inbounds i8, ptr %0, i64 66
  store i8 %12, ptr %55, align 1, !tbaa !38
  %56 = getelementptr inbounds i8, ptr %0, i64 96
  store i8 %12, ptr %56, align 1, !tbaa !38
  %57 = getelementptr inbounds i8, ptr %0, i64 97
  store i8 %12, ptr %57, align 1, !tbaa !38
  %58 = getelementptr inbounds i8, ptr %0, i64 67
  store i8 %12, ptr %58, align 1, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_dc_left(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -1
  %3 = load i8, ptr %2, align 1, !tbaa !38
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds i8, ptr %0, i64 31
  %6 = load i8, ptr %5, align 1, !tbaa !38
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds i8, ptr %0, i64 63
  %9 = load i8, ptr %8, align 1, !tbaa !38
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds i8, ptr %0, i64 95
  %12 = load i8, ptr %11, align 1, !tbaa !38
  %13 = zext i8 %12 to i32
  %14 = add nuw nsw i32 %4, 2
  %15 = add nuw nsw i32 %14, %7
  %16 = add nuw nsw i32 %15, %10
  %17 = add nuw nsw i32 %16, %13
  %18 = lshr i32 %17, 2
  %19 = mul nuw nsw i32 %18, 16843009
  %20 = getelementptr inbounds i8, ptr %0, i64 96
  store i32 %19, ptr %20, align 4, !tbaa !38
  %21 = getelementptr inbounds i8, ptr %0, i64 64
  store i32 %19, ptr %21, align 4, !tbaa !38
  %22 = getelementptr inbounds i8, ptr %0, i64 32
  store i32 %19, ptr %22, align 4, !tbaa !38
  store i32 %19, ptr %0, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_dc_top(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  %3 = load i8, ptr %2, align 1, !tbaa !38
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds i8, ptr %0, i64 -31
  %6 = load i8, ptr %5, align 1, !tbaa !38
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds i8, ptr %0, i64 -30
  %9 = load i8, ptr %8, align 1, !tbaa !38
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds i8, ptr %0, i64 -29
  %12 = load i8, ptr %11, align 1, !tbaa !38
  %13 = zext i8 %12 to i32
  %14 = add nuw nsw i32 %4, 2
  %15 = add nuw nsw i32 %14, %7
  %16 = add nuw nsw i32 %15, %10
  %17 = add nuw nsw i32 %16, %13
  %18 = lshr i32 %17, 2
  %19 = mul nuw nsw i32 %18, 16843009
  %20 = getelementptr inbounds i8, ptr %0, i64 96
  store i32 %19, ptr %20, align 4, !tbaa !38
  %21 = getelementptr inbounds i8, ptr %0, i64 64
  store i32 %19, ptr %21, align 4, !tbaa !38
  %22 = getelementptr inbounds i8, ptr %0, i64 32
  store i32 %19, ptr %22, align 4, !tbaa !38
  store i32 %19, ptr %0, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @predict_4x4_dc_128(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 96
  store i32 -2139062144, ptr %2, align 4, !tbaa !38
  %3 = getelementptr inbounds i8, ptr %0, i64 64
  store i32 -2139062144, ptr %3, align 4, !tbaa !38
  %4 = getelementptr inbounds i8, ptr %0, i64 32
  store i32 -2139062144, ptr %4, align 4, !tbaa !38
  store i32 -2139062144, ptr %0, align 4, !tbaa !38
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!36, !36, i64 0}
!39 = distinct !{!39, !40, !41}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = distinct !{!42, !40, !41}
!43 = distinct !{!43, !40, !41}
!44 = distinct !{!44, !40, !41}
!45 = distinct !{!45, !40, !41}
!46 = distinct !{!46, !40, !41}
!47 = distinct !{!47, !40, !41}
!48 = distinct !{!48, !40, !41}
!49 = distinct !{!49, !40, !41}
!50 = distinct !{!50, !40, !41}
!51 = distinct !{!51, !40, !41}
!52 = distinct !{!52, !40, !41}
!53 = distinct !{!53, !40, !41}
!54 = distinct !{!54, !40, !41}
!55 = distinct !{!55, !40, !41}
!56 = distinct !{!56, !40, !41}
!57 = distinct !{!57, !40, !41}
!58 = distinct !{!58, !40, !41}
!59 = distinct !{!59, !40, !41}
!60 = distinct !{!60, !40, !41}
!61 = distinct !{!61, !40, !41}
!62 = distinct !{!62, !40, !41}
!63 = distinct !{!63, !40, !41}
!64 = distinct !{!64, !40, !41}
!65 = distinct !{!65, !40, !41}
!66 = distinct !{!66, !40, !41}
!67 = distinct !{!67, !40, !41}
!68 = distinct !{!68, !40, !41}
!69 = distinct !{!69, !40, !41}
!70 = distinct !{!70, !40, !41}
!71 = distinct !{!71, !40, !41}
