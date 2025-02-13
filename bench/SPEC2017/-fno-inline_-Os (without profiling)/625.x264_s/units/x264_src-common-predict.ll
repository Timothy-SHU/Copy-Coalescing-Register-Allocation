; ModuleID = 'x264_src/common/predict.c'
source_filename = "x264_src/common/predict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @x264_predict_16x16_init(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  store ptr @predict_16x16_v, ptr %1, align 8, !tbaa !6
  %3 = getelementptr inbounds ptr, ptr %1, i64 1
  store ptr @predict_16x16_h, ptr %3, align 8, !tbaa !6
  %4 = getelementptr inbounds ptr, ptr %1, i64 2
  store ptr @predict_16x16_dc, ptr %4, align 8, !tbaa !6
  %5 = getelementptr inbounds ptr, ptr %1, i64 3
  store ptr @predict_16x16_p, ptr %5, align 8, !tbaa !6
  %6 = getelementptr inbounds ptr, ptr %1, i64 4
  store ptr @predict_16x16_dc_left, ptr %6, align 8, !tbaa !6
  %7 = getelementptr inbounds ptr, ptr %1, i64 5
  store ptr @predict_16x16_dc_top, ptr %7, align 8, !tbaa !6
  %8 = getelementptr inbounds ptr, ptr %1, i64 6
  store ptr @predict_16x16_dc_128, ptr %8, align 8, !tbaa !6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_16x16_v(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  %3 = load <4 x i32>, ptr %2, align 4, !tbaa !10
  br label %5

4:                                                ; preds = %5
  ret void

5:                                                ; preds = %1, %5
  %6 = phi i32 [ 0, %1 ], [ %9, %5 ]
  %7 = phi ptr [ %0, %1 ], [ %8, %5 ]
  store <4 x i32> %3, ptr %7, align 4, !tbaa !10
  %8 = getelementptr inbounds i8, ptr %7, i64 32
  %9 = add nuw nsw i32 %6, 1
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %4, label %5, !llvm.loop !11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @predict_16x16_h(ptr nocapture noundef %0) #2 {
  br label %3

2:                                                ; preds = %3
  ret void

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %0, %1 ], [ %12, %3 ]
  %5 = phi i32 [ 0, %1 ], [ %13, %3 ]
  %6 = getelementptr inbounds i8, ptr %4, i64 -1
  %7 = load i8, ptr %6, align 1, !tbaa !10
  %8 = zext i8 %7 to i32
  %9 = mul nuw nsw i32 %8, 16843009
  %10 = insertelement <4 x i32> poison, i32 %9, i64 0
  %11 = shufflevector <4 x i32> %10, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %11, ptr %4, align 4, !tbaa !10
  %12 = getelementptr inbounds i8, ptr %4, i64 32
  %13 = add nuw nsw i32 %5, 1
  %14 = icmp eq i32 %13, 16
  br i1 %14, label %2, label %3, !llvm.loop !13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_16x16_dc(ptr nocapture noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i64 -1
  br label %9

3:                                                ; preds = %9
  %4 = add i32 %21, 16
  %5 = lshr i32 %4, 5
  %6 = mul i32 %5, 16843009
  %7 = insertelement <4 x i32> poison, i32 %6, i64 0
  %8 = shufflevector <4 x i32> %7, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %25

9:                                                ; preds = %1, %9
  %10 = phi i64 [ 0, %1 ], [ %22, %9 ]
  %11 = phi i32 [ 0, %1 ], [ %21, %9 ]
  %12 = shl nuw nsw i64 %10, 5
  %13 = getelementptr i8, ptr %2, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !10
  %15 = zext i8 %14 to i32
  %16 = add i32 %11, %15
  %17 = or disjoint i64 %10, -32
  %18 = getelementptr inbounds i8, ptr %0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !10
  %20 = zext i8 %19 to i32
  %21 = add i32 %16, %20
  %22 = add nuw nsw i64 %10, 1
  %23 = icmp eq i64 %22, 16
  br i1 %23, label %3, label %9, !llvm.loop !14

24:                                               ; preds = %25
  ret void

25:                                               ; preds = %3, %25
  %26 = phi i32 [ 0, %3 ], [ %29, %25 ]
  %27 = phi ptr [ %0, %3 ], [ %28, %25 ]
  store <4 x i32> %8, ptr %27, align 4, !tbaa !10
  %28 = getelementptr inbounds i8, ptr %27, i64 32
  %29 = add nuw nsw i32 %26, 1
  %30 = icmp eq i32 %29, 16
  br i1 %30, label %24, label %25, !llvm.loop !15
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_16x16_p(ptr nocapture noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i64 255
  br label %22

3:                                                ; preds = %22
  %4 = getelementptr inbounds i8, ptr %0, i64 479
  %5 = load i8, ptr %4, align 1, !tbaa !10
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds i8, ptr %0, i64 -17
  %8 = load i8, ptr %7, align 1, !tbaa !10
  %9 = zext i8 %8 to i32
  %10 = add nuw nsw i32 %9, %6
  %11 = shl nuw nsw i32 %10, 4
  %12 = mul nsw i32 %38, 5
  %13 = add nsw i32 %12, 32
  %14 = ashr i32 %13, 6
  %15 = mul nsw i32 %49, 5
  %16 = add nsw i32 %15, 32
  %17 = ashr i32 %16, 6
  %18 = add nsw i32 %14, %17
  %19 = mul nsw i32 %18, -7
  %20 = add nsw i32 %19, 16
  %21 = add nsw i32 %20, %11
  br label %51

22:                                               ; preds = %1, %22
  %23 = phi i64 [ 0, %1 ], [ %26, %22 ]
  %24 = phi i32 [ 0, %1 ], [ %38, %22 ]
  %25 = phi i32 [ 0, %1 ], [ %49, %22 ]
  %26 = add nuw nsw i64 %23, 1
  %27 = or disjoint i64 %23, -24
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !10
  %30 = zext i8 %29 to i32
  %31 = sub nuw nsw i64 -26, %23
  %32 = getelementptr inbounds i8, ptr %0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !10
  %34 = zext i8 %33 to i32
  %35 = sub nsw i32 %30, %34
  %36 = trunc i64 %26 to i32
  %37 = mul nsw i32 %35, %36
  %38 = add nsw i32 %37, %24
  %39 = shl nuw nsw i64 %23, 5
  %40 = getelementptr i8, ptr %2, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !10
  %42 = zext i8 %41 to i32
  %43 = sub nsw i64 191, %39
  %44 = getelementptr inbounds i8, ptr %0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !10
  %46 = zext i8 %45 to i32
  %47 = sub nsw i32 %42, %46
  %48 = mul nsw i32 %47, %36
  %49 = add nsw i32 %48, %25
  %50 = icmp eq i64 %26, 8
  br i1 %50, label %3, label %22, !llvm.loop !16

51:                                               ; preds = %3, %56
  %52 = phi i32 [ 0, %3 ], [ %59, %56 ]
  %53 = phi i32 [ %21, %3 ], [ %58, %56 ]
  %54 = phi ptr [ %0, %3 ], [ %57, %56 ]
  br label %61

55:                                               ; preds = %56
  ret void

56:                                               ; preds = %61
  %57 = getelementptr inbounds i8, ptr %54, i64 32
  %58 = add nsw i32 %53, %17
  %59 = add nuw nsw i32 %52, 1
  %60 = icmp eq i32 %59, 16
  br i1 %60, label %55, label %51, !llvm.loop !17

61:                                               ; preds = %51, %61
  %62 = phi i64 [ 0, %51 ], [ %68, %61 ]
  %63 = phi i32 [ %53, %51 ], [ %67, %61 ]
  %64 = ashr i32 %63, 5
  %65 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %64) #10
  %66 = getelementptr inbounds i8, ptr %54, i64 %62
  store i8 %65, ptr %66, align 1, !tbaa !10
  %67 = add nsw i32 %63, %14
  %68 = add nuw nsw i64 %62, 1
  %69 = icmp eq i64 %68, 16
  br i1 %69, label %56, label %61, !llvm.loop !18
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_16x16_dc_left(ptr nocapture noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i64 -1
  br label %9

3:                                                ; preds = %9
  %4 = add i32 %16, 8
  %5 = lshr i32 %4, 4
  %6 = mul i32 %5, 16843009
  %7 = insertelement <4 x i32> poison, i32 %6, i64 0
  %8 = shufflevector <4 x i32> %7, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %20

9:                                                ; preds = %1, %9
  %10 = phi i64 [ 0, %1 ], [ %17, %9 ]
  %11 = phi i32 [ 0, %1 ], [ %16, %9 ]
  %12 = shl nuw nsw i64 %10, 5
  %13 = getelementptr i8, ptr %2, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !10
  %15 = zext i8 %14 to i32
  %16 = add i32 %11, %15
  %17 = add nuw nsw i64 %10, 1
  %18 = icmp eq i64 %17, 16
  br i1 %18, label %3, label %9, !llvm.loop !19

19:                                               ; preds = %20
  ret void

20:                                               ; preds = %3, %20
  %21 = phi i32 [ 0, %3 ], [ %24, %20 ]
  %22 = phi ptr [ %0, %3 ], [ %23, %20 ]
  store <4 x i32> %8, ptr %22, align 4, !tbaa !10
  %23 = getelementptr inbounds i8, ptr %22, i64 32
  %24 = add nuw nsw i32 %21, 1
  %25 = icmp eq i32 %24, 16
  br i1 %25, label %19, label %20, !llvm.loop !20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_16x16_dc_top(ptr nocapture noundef %0) #1 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %10, %2 ]
  %4 = phi <4 x i32> [ zeroinitializer, %1 ], [ %9, %2 ]
  %5 = or disjoint i64 %3, -32
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = load <4 x i8>, ptr %6, align 1, !tbaa !10
  %8 = zext <4 x i8> %7 to <4 x i32>
  %9 = add <4 x i32> %4, %8
  %10 = add nuw i64 %3, 4
  %11 = icmp eq i64 %10, 16
  br i1 %11, label %12, label %2, !llvm.loop !21

12:                                               ; preds = %2
  %13 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %9)
  %14 = add i32 %13, 8
  %15 = lshr i32 %14, 4
  %16 = mul i32 %15, 16843009
  %17 = insertelement <4 x i32> poison, i32 %16, i64 0
  %18 = shufflevector <4 x i32> %17, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %20

19:                                               ; preds = %20
  ret void

20:                                               ; preds = %12, %20
  %21 = phi i32 [ 0, %12 ], [ %24, %20 ]
  %22 = phi ptr [ %0, %12 ], [ %23, %20 ]
  store <4 x i32> %18, ptr %22, align 4, !tbaa !10
  %23 = getelementptr inbounds i8, ptr %22, i64 32
  %24 = add nuw nsw i32 %21, 1
  %25 = icmp eq i32 %24, 16
  br i1 %25, label %19, label %20, !llvm.loop !24
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
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
  br i1 %8, label %2, label %3, !llvm.loop !25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @x264_clip_uint8(i32 noundef %0) unnamed_addr #4 {
  %2 = icmp ult i32 %0, 256
  %3 = icmp sgt i32 %0, 0
  %4 = sext i1 %3 to i32
  %5 = select i1 %2, i32 %0, i32 %4
  %6 = trunc i32 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @x264_predict_8x8c_init(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds ptr, ptr %1, i64 2
  store ptr @predict_8x8c_v, ptr %3, align 8, !tbaa !6
  %4 = getelementptr inbounds ptr, ptr %1, i64 1
  store ptr @predict_8x8c_h, ptr %4, align 8, !tbaa !6
  store ptr @predict_8x8c_dc, ptr %1, align 8, !tbaa !6
  %5 = getelementptr inbounds ptr, ptr %1, i64 3
  store ptr @predict_8x8c_p, ptr %5, align 8, !tbaa !6
  %6 = getelementptr inbounds ptr, ptr %1, i64 4
  store ptr @predict_8x8c_dc_left, ptr %6, align 8, !tbaa !6
  %7 = getelementptr inbounds ptr, ptr %1, i64 5
  store ptr @predict_8x8c_dc_top, ptr %7, align 8, !tbaa !6
  %8 = getelementptr inbounds ptr, ptr %1, i64 6
  store ptr @predict_8x8c_dc_128, ptr %8, align 8, !tbaa !6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8c_v(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  %3 = load <2 x i32>, ptr %2, align 4, !tbaa !10
  br label %5

4:                                                ; preds = %5
  ret void

5:                                                ; preds = %1, %5
  %6 = phi i32 [ 0, %1 ], [ %9, %5 ]
  %7 = phi ptr [ %0, %1 ], [ %8, %5 ]
  store <2 x i32> %3, ptr %7, align 4, !tbaa !10
  %8 = getelementptr inbounds i8, ptr %7, i64 32
  %9 = add nuw nsw i32 %6, 1
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %4, label %5, !llvm.loop !26
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8c_h(ptr nocapture noundef %0) #2 {
  br label %3

2:                                                ; preds = %3
  ret void

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %0, %1 ], [ %11, %3 ]
  %5 = phi i32 [ 0, %1 ], [ %12, %3 ]
  %6 = getelementptr inbounds i8, ptr %4, i64 -1
  %7 = load i8, ptr %6, align 1, !tbaa !10
  %8 = zext i8 %7 to i32
  %9 = mul nuw nsw i32 %8, 16843009
  store i32 %9, ptr %4, align 4, !tbaa !10
  %10 = getelementptr inbounds i8, ptr %4, i64 4
  store i32 %9, ptr %10, align 4, !tbaa !10
  %11 = getelementptr inbounds i8, ptr %4, i64 32
  %12 = add nuw nsw i32 %5, 1
  %13 = icmp eq i32 %12, 8
  br i1 %13, label %2, label %3, !llvm.loop !27
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8c_dc(ptr nocapture noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i64 127
  %3 = load i8, ptr %2, align 1, !tbaa !10
  %4 = insertelement <4 x i8> poison, i8 %3, i64 0
  %5 = getelementptr i8, ptr %0, i64 159
  %6 = load i8, ptr %5, align 1, !tbaa !10
  %7 = insertelement <4 x i8> %4, i8 %6, i64 1
  %8 = getelementptr i8, ptr %0, i64 191
  %9 = load i8, ptr %8, align 1, !tbaa !10
  %10 = insertelement <4 x i8> %7, i8 %9, i64 2
  %11 = getelementptr i8, ptr %0, i64 223
  %12 = load i8, ptr %11, align 1, !tbaa !10
  %13 = insertelement <4 x i8> %10, i8 %12, i64 3
  %14 = zext <4 x i8> %13 to <4 x i32>
  %15 = getelementptr i8, ptr %0, i64 -1
  %16 = load i8, ptr %15, align 1, !tbaa !10
  %17 = insertelement <4 x i8> poison, i8 %16, i64 0
  %18 = getelementptr i8, ptr %0, i64 31
  %19 = load i8, ptr %18, align 1, !tbaa !10
  %20 = insertelement <4 x i8> %17, i8 %19, i64 1
  %21 = getelementptr i8, ptr %0, i64 63
  %22 = load i8, ptr %21, align 1, !tbaa !10
  %23 = insertelement <4 x i8> %20, i8 %22, i64 2
  %24 = getelementptr i8, ptr %0, i64 95
  %25 = load i8, ptr %24, align 1, !tbaa !10
  %26 = insertelement <4 x i8> %23, i8 %25, i64 3
  %27 = zext <4 x i8> %26 to <4 x i32>
  %28 = getelementptr inbounds i8, ptr %0, i64 -28
  %29 = load <4 x i8>, ptr %28, align 1, !tbaa !10
  %30 = zext <4 x i8> %29 to <4 x i32>
  %31 = getelementptr inbounds i8, ptr %0, i64 -32
  %32 = load <4 x i8>, ptr %31, align 1, !tbaa !10
  %33 = zext <4 x i8> %32 to <4 x i32>
  %34 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %33)
  %35 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %30)
  %36 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %27)
  %37 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %14)
  %38 = add nuw i32 %36, 4
  %39 = add nuw i32 %38, %34
  %40 = lshr i32 %39, 3
  %41 = mul nsw i32 %40, 16843009
  %42 = add nuw nsw i32 %35, 2
  %43 = lshr i32 %42, 2
  %44 = mul nsw i32 %43, 16843009
  %45 = add nuw nsw i32 %37, 2
  %46 = lshr i32 %45, 2
  %47 = add nuw i32 %37, 4
  %48 = add nuw i32 %47, %35
  %49 = lshr i32 %48, 3
  br label %50

50:                                               ; preds = %1, %50
  %51 = phi i32 [ 0, %1 ], [ %55, %50 ]
  %52 = phi ptr [ %0, %1 ], [ %54, %50 ]
  store i32 %41, ptr %52, align 4, !tbaa !10
  %53 = getelementptr inbounds i8, ptr %52, i64 4
  store i32 %44, ptr %53, align 4, !tbaa !10
  %54 = getelementptr inbounds i8, ptr %52, i64 32
  %55 = add nuw nsw i32 %51, 1
  %56 = icmp eq i32 %55, 4
  br i1 %56, label %57, label %50, !llvm.loop !28

57:                                               ; preds = %50
  %58 = mul nsw i32 %46, 16843009
  %59 = mul nsw i32 %49, 16843009
  br label %61

60:                                               ; preds = %61
  ret void

61:                                               ; preds = %57, %61
  %62 = phi i32 [ %66, %61 ], [ 0, %57 ]
  %63 = phi ptr [ %65, %61 ], [ %54, %57 ]
  store i32 %58, ptr %63, align 4, !tbaa !10
  %64 = getelementptr inbounds i8, ptr %63, i64 4
  store i32 %59, ptr %64, align 4, !tbaa !10
  %65 = getelementptr inbounds i8, ptr %63, i64 32
  %66 = add nuw nsw i32 %62, 1
  %67 = icmp eq i32 %66, 4
  br i1 %67, label %60, label %61, !llvm.loop !29
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8c_p(ptr nocapture noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i64 127
  br label %22

3:                                                ; preds = %22
  %4 = getelementptr inbounds i8, ptr %0, i64 223
  %5 = load i8, ptr %4, align 1, !tbaa !10
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds i8, ptr %0, i64 -25
  %8 = load i8, ptr %7, align 1, !tbaa !10
  %9 = zext i8 %8 to i32
  %10 = add nuw nsw i32 %9, %6
  %11 = shl nuw nsw i32 %10, 4
  %12 = mul nsw i32 %38, 17
  %13 = add nsw i32 %12, 16
  %14 = ashr i32 %13, 5
  %15 = mul nsw i32 %49, 17
  %16 = add nsw i32 %15, 16
  %17 = ashr i32 %16, 5
  %18 = add nsw i32 %14, %17
  %19 = mul nsw i32 %18, -3
  %20 = add nsw i32 %19, 16
  %21 = add nsw i32 %20, %11
  br label %51

22:                                               ; preds = %1, %22
  %23 = phi i64 [ 0, %1 ], [ %26, %22 ]
  %24 = phi i32 [ 0, %1 ], [ %38, %22 ]
  %25 = phi i32 [ 0, %1 ], [ %49, %22 ]
  %26 = add nuw nsw i64 %23, 1
  %27 = or disjoint i64 %23, -28
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !10
  %30 = zext i8 %29 to i32
  %31 = sub nuw nsw i64 -30, %23
  %32 = getelementptr inbounds i8, ptr %0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !10
  %34 = zext i8 %33 to i32
  %35 = sub nsw i32 %30, %34
  %36 = trunc i64 %26 to i32
  %37 = mul nsw i32 %35, %36
  %38 = add nsw i32 %37, %24
  %39 = shl nuw nsw i64 %23, 5
  %40 = getelementptr i8, ptr %2, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !10
  %42 = zext i8 %41 to i32
  %43 = sub nsw i64 63, %39
  %44 = getelementptr inbounds i8, ptr %0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !10
  %46 = zext i8 %45 to i32
  %47 = sub nsw i32 %42, %46
  %48 = mul nsw i32 %47, %36
  %49 = add nsw i32 %48, %25
  %50 = icmp eq i64 %26, 4
  br i1 %50, label %3, label %22, !llvm.loop !30

51:                                               ; preds = %3, %56
  %52 = phi i32 [ 0, %3 ], [ %59, %56 ]
  %53 = phi i32 [ %21, %3 ], [ %58, %56 ]
  %54 = phi ptr [ %0, %3 ], [ %57, %56 ]
  br label %61

55:                                               ; preds = %56
  ret void

56:                                               ; preds = %61
  %57 = getelementptr inbounds i8, ptr %54, i64 32
  %58 = add nsw i32 %53, %17
  %59 = add nuw nsw i32 %52, 1
  %60 = icmp eq i32 %59, 8
  br i1 %60, label %55, label %51, !llvm.loop !31

61:                                               ; preds = %51, %61
  %62 = phi i64 [ 0, %51 ], [ %68, %61 ]
  %63 = phi i32 [ %53, %51 ], [ %67, %61 ]
  %64 = ashr i32 %63, 5
  %65 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %64) #10
  %66 = getelementptr inbounds i8, ptr %54, i64 %62
  store i8 %65, ptr %66, align 1, !tbaa !10
  %67 = add nsw i32 %63, %14
  %68 = add nuw nsw i64 %62, 1
  %69 = icmp eq i64 %68, 8
  br i1 %69, label %56, label %61, !llvm.loop !32
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
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
  %15 = load i8, ptr %14, align 1, !tbaa !10
  %16 = zext i8 %15 to i32
  %17 = add i32 %11, %16
  %18 = getelementptr i8, ptr %13, i64 127
  %19 = load i8, ptr %18, align 1, !tbaa !10
  %20 = zext i8 %19 to i32
  %21 = add i32 %10, %20
  %22 = add nuw nsw i64 %9, 1
  %23 = icmp eq i64 %22, 4
  br i1 %23, label %2, label %8, !llvm.loop !33

24:                                               ; preds = %2, %24
  %25 = phi i32 [ 0, %2 ], [ %29, %24 ]
  %26 = phi ptr [ %0, %2 ], [ %28, %24 ]
  store i32 %5, ptr %26, align 4, !tbaa !10
  %27 = getelementptr inbounds i8, ptr %26, i64 4
  store i32 %5, ptr %27, align 4, !tbaa !10
  %28 = getelementptr inbounds i8, ptr %26, i64 32
  %29 = add nuw nsw i32 %25, 1
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %31, label %24, !llvm.loop !34

31:                                               ; preds = %24
  %32 = mul i32 %7, 16843009
  br label %34

33:                                               ; preds = %34
  ret void

34:                                               ; preds = %31, %34
  %35 = phi i32 [ %39, %34 ], [ 0, %31 ]
  %36 = phi ptr [ %38, %34 ], [ %28, %31 ]
  store i32 %32, ptr %36, align 4, !tbaa !10
  %37 = getelementptr inbounds i8, ptr %36, i64 4
  store i32 %32, ptr %37, align 4, !tbaa !10
  %38 = getelementptr inbounds i8, ptr %36, i64 32
  %39 = add nuw nsw i32 %35, 1
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %33, label %34, !llvm.loop !35
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8c_dc_top(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -28
  %3 = load <4 x i8>, ptr %2, align 1, !tbaa !10
  %4 = zext <4 x i8> %3 to <4 x i32>
  %5 = getelementptr inbounds i8, ptr %0, i64 -32
  %6 = load <4 x i8>, ptr %5, align 1, !tbaa !10
  %7 = zext <4 x i8> %6 to <4 x i32>
  %8 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %4)
  %9 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %7)
  %10 = add i32 %9, 2
  %11 = lshr i32 %10, 2
  %12 = mul i32 %11, 16843009
  %13 = add i32 %8, 2
  %14 = lshr i32 %13, 2
  %15 = mul i32 %14, 16843009
  br label %17

16:                                               ; preds = %17
  ret void

17:                                               ; preds = %1, %17
  %18 = phi i32 [ 0, %1 ], [ %22, %17 ]
  %19 = phi ptr [ %0, %1 ], [ %21, %17 ]
  store i32 %12, ptr %19, align 4, !tbaa !10
  %20 = getelementptr inbounds i8, ptr %19, i64 4
  store i32 %15, ptr %20, align 4, !tbaa !10
  %21 = getelementptr inbounds i8, ptr %19, i64 32
  %22 = add nuw nsw i32 %18, 1
  %23 = icmp eq i32 %22, 8
  br i1 %23, label %16, label %17, !llvm.loop !36
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define internal void @predict_8x8c_dc_128(ptr nocapture noundef writeonly %0) #3 {
  br label %3

2:                                                ; preds = %3
  ret void

3:                                                ; preds = %1, %3
  %4 = phi i32 [ 0, %1 ], [ %8, %3 ]
  %5 = phi ptr [ %0, %1 ], [ %7, %3 ]
  store i32 -2139062144, ptr %5, align 4, !tbaa !10
  %6 = getelementptr inbounds i8, ptr %5, i64 4
  store i32 -2139062144, ptr %6, align 4, !tbaa !10
  %7 = getelementptr inbounds i8, ptr %5, i64 32
  %8 = add nuw nsw i32 %4, 1
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %2, label %3, !llvm.loop !37
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @x264_predict_8x8_init(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  store ptr @predict_8x8_v, ptr %1, align 8, !tbaa !6
  %4 = getelementptr inbounds ptr, ptr %1, i64 1
  store ptr @predict_8x8_h, ptr %4, align 8, !tbaa !6
  %5 = getelementptr inbounds ptr, ptr %1, i64 2
  store ptr @predict_8x8_dc, ptr %5, align 8, !tbaa !6
  %6 = getelementptr inbounds ptr, ptr %1, i64 3
  store ptr @predict_8x8_ddl, ptr %6, align 8, !tbaa !6
  %7 = getelementptr inbounds ptr, ptr %1, i64 4
  store ptr @predict_8x8_ddr, ptr %7, align 8, !tbaa !6
  %8 = getelementptr inbounds ptr, ptr %1, i64 5
  store ptr @predict_8x8_vr, ptr %8, align 8, !tbaa !6
  %9 = getelementptr inbounds ptr, ptr %1, i64 6
  store ptr @predict_8x8_hd, ptr %9, align 8, !tbaa !6
  %10 = getelementptr inbounds ptr, ptr %1, i64 7
  store ptr @predict_8x8_vl, ptr %10, align 8, !tbaa !6
  %11 = getelementptr inbounds ptr, ptr %1, i64 8
  store ptr @predict_8x8_hu, ptr %11, align 8, !tbaa !6
  %12 = getelementptr inbounds ptr, ptr %1, i64 9
  store ptr @predict_8x8_dc_left, ptr %12, align 8, !tbaa !6
  %13 = getelementptr inbounds ptr, ptr %1, i64 10
  store ptr @predict_8x8_dc_top, ptr %13, align 8, !tbaa !6
  %14 = getelementptr inbounds ptr, ptr %1, i64 11
  store ptr @predict_8x8_dc_128, ptr %14, align 8, !tbaa !6
  store ptr @predict_8x8_filter, ptr %2, align 8, !tbaa !6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @predict_8x8_v(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load i64, ptr %3, align 8, !tbaa !10
  br label %6

5:                                                ; preds = %6
  ret void

6:                                                ; preds = %2, %6
  %7 = phi i64 [ 0, %2 ], [ %10, %6 ]
  %8 = shl nuw nsw i64 %7, 5
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  store i64 %4, ptr %9, align 8, !tbaa !10
  %10 = add nuw nsw i64 %7, 1
  %11 = icmp eq i64 %10, 8
  br i1 %11, label %5, label %6, !llvm.loop !38
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_h(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds i8, ptr %1, i64 14
  %4 = load i8, ptr %3, align 1, !tbaa !10
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds i8, ptr %1, i64 13
  %7 = load i8, ptr %6, align 1, !tbaa !10
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds i8, ptr %1, i64 12
  %10 = load i8, ptr %9, align 1, !tbaa !10
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds i8, ptr %1, i64 11
  %13 = load i8, ptr %12, align 1, !tbaa !10
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds i8, ptr %1, i64 10
  %16 = load i8, ptr %15, align 1, !tbaa !10
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds i8, ptr %1, i64 9
  %19 = load i8, ptr %18, align 1, !tbaa !10
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds i8, ptr %1, i64 8
  %22 = load i8, ptr %21, align 1, !tbaa !10
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %1, i64 7
  %25 = load i8, ptr %24, align 1, !tbaa !10
  %26 = zext i8 %25 to i32
  %27 = mul nuw i32 %5, 16843009
  %28 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %27, ptr %28, align 4, !tbaa !10
  store i32 %27, ptr %0, align 4, !tbaa !10
  %29 = mul nuw i32 %8, 16843009
  %30 = getelementptr inbounds i8, ptr %0, i64 32
  %31 = getelementptr inbounds i8, ptr %0, i64 36
  store i32 %29, ptr %31, align 4, !tbaa !10
  store i32 %29, ptr %30, align 4, !tbaa !10
  %32 = mul nuw i32 %11, 16843009
  %33 = getelementptr inbounds i8, ptr %0, i64 64
  %34 = getelementptr inbounds i8, ptr %0, i64 68
  store i32 %32, ptr %34, align 4, !tbaa !10
  store i32 %32, ptr %33, align 4, !tbaa !10
  %35 = mul nuw i32 %14, 16843009
  %36 = getelementptr inbounds i8, ptr %0, i64 96
  %37 = getelementptr inbounds i8, ptr %0, i64 100
  store i32 %35, ptr %37, align 4, !tbaa !10
  store i32 %35, ptr %36, align 4, !tbaa !10
  %38 = mul nuw i32 %17, 16843009
  %39 = getelementptr inbounds i8, ptr %0, i64 128
  %40 = getelementptr inbounds i8, ptr %0, i64 132
  store i32 %38, ptr %40, align 4, !tbaa !10
  store i32 %38, ptr %39, align 4, !tbaa !10
  %41 = mul nuw i32 %20, 16843009
  %42 = getelementptr inbounds i8, ptr %0, i64 160
  %43 = getelementptr inbounds i8, ptr %0, i64 164
  store i32 %41, ptr %43, align 4, !tbaa !10
  store i32 %41, ptr %42, align 4, !tbaa !10
  %44 = mul nuw i32 %23, 16843009
  %45 = getelementptr inbounds i8, ptr %0, i64 192
  %46 = getelementptr inbounds i8, ptr %0, i64 196
  store i32 %44, ptr %46, align 4, !tbaa !10
  store i32 %44, ptr %45, align 4, !tbaa !10
  %47 = mul nuw i32 %26, 16843009
  %48 = getelementptr inbounds i8, ptr %0, i64 224
  %49 = getelementptr inbounds i8, ptr %0, i64 228
  store i32 %47, ptr %49, align 4, !tbaa !10
  store i32 %47, ptr %48, align 4, !tbaa !10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8_dc(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds i8, ptr %1, i64 14
  %4 = load i8, ptr %3, align 1, !tbaa !10
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds i8, ptr %1, i64 13
  %7 = load i8, ptr %6, align 1, !tbaa !10
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds i8, ptr %1, i64 12
  %10 = load i8, ptr %9, align 1, !tbaa !10
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds i8, ptr %1, i64 11
  %13 = load i8, ptr %12, align 1, !tbaa !10
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds i8, ptr %1, i64 10
  %16 = load i8, ptr %15, align 1, !tbaa !10
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds i8, ptr %1, i64 9
  %19 = load i8, ptr %18, align 1, !tbaa !10
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds i8, ptr %1, i64 8
  %22 = load i8, ptr %21, align 1, !tbaa !10
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %1, i64 7
  %25 = load i8, ptr %24, align 1, !tbaa !10
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds i8, ptr %1, i64 16
  %28 = load i8, ptr %27, align 1, !tbaa !10
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds i8, ptr %1, i64 17
  %31 = load i8, ptr %30, align 1, !tbaa !10
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds i8, ptr %1, i64 18
  %34 = load i8, ptr %33, align 1, !tbaa !10
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds i8, ptr %1, i64 19
  %37 = load i8, ptr %36, align 1, !tbaa !10
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds i8, ptr %1, i64 20
  %40 = load i8, ptr %39, align 1, !tbaa !10
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds i8, ptr %1, i64 21
  %43 = load i8, ptr %42, align 1, !tbaa !10
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds i8, ptr %1, i64 22
  %46 = load i8, ptr %45, align 1, !tbaa !10
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds i8, ptr %1, i64 23
  %49 = load i8, ptr %48, align 1, !tbaa !10
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
  store i32 %68, ptr %72, align 4, !tbaa !10
  %73 = getelementptr inbounds i8, ptr %72, i64 4
  store i32 %68, ptr %73, align 4, !tbaa !10
  %74 = getelementptr inbounds i8, ptr %72, i64 32
  %75 = add nuw nsw i32 %71, 1
  %76 = icmp eq i32 %75, 8
  br i1 %76, label %69, label %70, !llvm.loop !39
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_ddl(ptr noundef writeonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load i8, ptr %3, align 1, !tbaa !10
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds i8, ptr %1, i64 17
  %7 = load i8, ptr %6, align 1, !tbaa !10
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds i8, ptr %1, i64 18
  %10 = load i8, ptr %9, align 1, !tbaa !10
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds i8, ptr %1, i64 19
  %13 = load i8, ptr %12, align 1, !tbaa !10
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds i8, ptr %1, i64 20
  %16 = getelementptr inbounds i8, ptr %1, i64 28
  %17 = load <2 x i8>, ptr %16, align 1, !tbaa !10
  %18 = zext <2 x i8> %17 to <2 x i32>
  %19 = getelementptr inbounds i8, ptr %1, i64 30
  %20 = load i8, ptr %19, align 1, !tbaa !10
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds i8, ptr %1, i64 31
  %23 = load i8, ptr %22, align 1, !tbaa !10
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %8, 1
  %26 = add nuw nsw i32 %11, 2
  %27 = add nuw nsw i32 %26, %5
  %28 = add nuw nsw i32 %27, %25
  %29 = lshr i32 %28, 2
  %30 = trunc i32 %29 to i8
  %31 = shl nuw nsw i32 %11, 1
  %32 = add nuw nsw i32 %14, 2
  %33 = add nuw nsw i32 %32, %8
  %34 = add nuw nsw i32 %33, %31
  %35 = lshr i32 %34, 2
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds i8, ptr %0, i64 1
  %38 = getelementptr inbounds i8, ptr %0, i64 32
  %39 = shl nuw nsw i32 %14, 1
  %40 = add nuw nsw i32 %26, %39
  %41 = getelementptr inbounds i8, ptr %0, i64 2
  %42 = getelementptr inbounds i8, ptr %0, i64 33
  %43 = getelementptr inbounds i8, ptr %0, i64 64
  %44 = getelementptr inbounds i8, ptr %0, i64 3
  %45 = getelementptr inbounds i8, ptr %0, i64 34
  %46 = getelementptr inbounds i8, ptr %0, i64 65
  %47 = getelementptr inbounds i8, ptr %0, i64 96
  %48 = getelementptr inbounds i8, ptr %0, i64 4
  %49 = getelementptr inbounds i8, ptr %0, i64 35
  %50 = getelementptr inbounds i8, ptr %0, i64 66
  %51 = getelementptr inbounds i8, ptr %0, i64 97
  %52 = getelementptr inbounds i8, ptr %0, i64 128
  %53 = getelementptr inbounds i8, ptr %0, i64 5
  %54 = getelementptr inbounds i8, ptr %0, i64 36
  %55 = getelementptr inbounds i8, ptr %0, i64 67
  %56 = getelementptr inbounds i8, ptr %0, i64 98
  %57 = getelementptr inbounds i8, ptr %0, i64 160
  %58 = getelementptr inbounds i8, ptr %0, i64 6
  %59 = getelementptr inbounds i8, ptr %0, i64 37
  %60 = getelementptr inbounds i8, ptr %0, i64 68
  %61 = getelementptr inbounds i8, ptr %0, i64 99
  %62 = getelementptr inbounds i8, ptr %0, i64 161
  %63 = getelementptr inbounds i8, ptr %0, i64 192
  %64 = getelementptr inbounds i8, ptr %0, i64 7
  %65 = getelementptr inbounds i8, ptr %0, i64 38
  %66 = getelementptr inbounds i8, ptr %0, i64 69
  %67 = getelementptr inbounds i8, ptr %0, i64 100
  %68 = getelementptr inbounds i8, ptr %0, i64 162
  %69 = getelementptr inbounds i8, ptr %0, i64 193
  %70 = getelementptr inbounds i8, ptr %0, i64 224
  %71 = getelementptr inbounds i8, ptr %0, i64 39
  %72 = getelementptr inbounds i8, ptr %0, i64 70
  %73 = getelementptr inbounds i8, ptr %0, i64 101
  %74 = getelementptr inbounds i8, ptr %0, i64 163
  %75 = getelementptr inbounds i8, ptr %0, i64 194
  %76 = getelementptr inbounds i8, ptr %0, i64 225
  %77 = getelementptr inbounds i8, ptr %0, i64 71
  %78 = getelementptr inbounds i8, ptr %0, i64 102
  %79 = getelementptr inbounds i8, ptr %0, i64 164
  %80 = getelementptr inbounds i8, ptr %0, i64 195
  %81 = getelementptr inbounds i8, ptr %0, i64 226
  %82 = getelementptr inbounds i8, ptr %0, i64 103
  %83 = getelementptr inbounds i8, ptr %0, i64 165
  %84 = getelementptr inbounds i8, ptr %0, i64 196
  %85 = getelementptr inbounds i8, ptr %0, i64 227
  %86 = load <8 x i8>, ptr %15, align 1, !tbaa !10
  %87 = zext <8 x i8> %86 to <8 x i32>
  store i8 %30, ptr %0, align 1, !tbaa !10
  store i8 %36, ptr %37, align 1, !tbaa !10
  store i8 %36, ptr %38, align 1, !tbaa !10
  %88 = extractelement <8 x i32> %87, i64 0
  %89 = add nuw nsw i32 %40, %88
  %90 = lshr i32 %89, 2
  %91 = trunc i32 %90 to i8
  store i8 %91, ptr %41, align 1, !tbaa !10
  store i8 %91, ptr %42, align 1, !tbaa !10
  store i8 %91, ptr %43, align 1, !tbaa !10
  %92 = shl nuw nsw i32 %88, 1
  %93 = add nuw nsw i32 %32, %92
  %94 = extractelement <8 x i32> %87, i64 1
  %95 = add nuw nsw i32 %93, %94
  %96 = lshr i32 %95, 2
  %97 = trunc i32 %96 to i8
  store i8 %97, ptr %44, align 1, !tbaa !10
  store i8 %97, ptr %45, align 1, !tbaa !10
  store i8 %97, ptr %46, align 1, !tbaa !10
  store i8 %97, ptr %47, align 1, !tbaa !10
  %98 = shufflevector <8 x i32> %87, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison>
  %99 = shufflevector <2 x i32> %18, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %100 = shufflevector <8 x i32> %98, <8 x i32> %99, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>
  %101 = shl nuw nsw <8 x i32> %100, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %102 = add nuw nsw <8 x i32> %87, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %103 = add nuw nsw <8 x i32> %102, %101
  %104 = shufflevector <8 x i32> %87, <8 x i32> %100, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 13, i32 14, i32 poison, i32 poison>
  %105 = shufflevector <8 x i32> %104, <8 x i32> %99, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %106 = add nuw nsw <8 x i32> %103, %105
  %107 = lshr <8 x i32> %106, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %108 = trunc <8 x i32> %107 to <8 x i8>
  %109 = extractelement <8 x i8> %108, i64 0
  store i8 %109, ptr %48, align 1, !tbaa !10
  store i8 %109, ptr %49, align 1, !tbaa !10
  store i8 %109, ptr %50, align 1, !tbaa !10
  store i8 %109, ptr %51, align 1, !tbaa !10
  %110 = extractelement <8 x i8> %108, i64 1
  store i8 %110, ptr %53, align 1, !tbaa !10
  store i8 %110, ptr %54, align 1, !tbaa !10
  store i8 %110, ptr %55, align 1, !tbaa !10
  store i8 %110, ptr %56, align 1, !tbaa !10
  store i8 %110, ptr %57, align 1, !tbaa !10
  %111 = extractelement <8 x i8> %108, i64 2
  store i8 %111, ptr %58, align 1, !tbaa !10
  store i8 %111, ptr %59, align 1, !tbaa !10
  store i8 %111, ptr %60, align 1, !tbaa !10
  store i8 %111, ptr %61, align 1, !tbaa !10
  store i8 %111, ptr %62, align 1, !tbaa !10
  store i8 %111, ptr %63, align 1, !tbaa !10
  %112 = extractelement <8 x i8> %108, i64 3
  store i8 %112, ptr %64, align 1, !tbaa !10
  store i8 %112, ptr %65, align 1, !tbaa !10
  store i8 %112, ptr %66, align 1, !tbaa !10
  store i8 %112, ptr %67, align 1, !tbaa !10
  store i8 %112, ptr %68, align 1, !tbaa !10
  store i8 %112, ptr %69, align 1, !tbaa !10
  store i8 %112, ptr %70, align 1, !tbaa !10
  %113 = extractelement <8 x i8> %108, i64 4
  store i8 %113, ptr %71, align 1, !tbaa !10
  store i8 %113, ptr %72, align 1, !tbaa !10
  store i8 %113, ptr %73, align 1, !tbaa !10
  store i8 %113, ptr %74, align 1, !tbaa !10
  store i8 %113, ptr %75, align 1, !tbaa !10
  store i8 %113, ptr %76, align 1, !tbaa !10
  %114 = extractelement <8 x i8> %108, i64 5
  store i8 %114, ptr %77, align 1, !tbaa !10
  store i8 %114, ptr %78, align 1, !tbaa !10
  store i8 %114, ptr %79, align 1, !tbaa !10
  store i8 %114, ptr %80, align 1, !tbaa !10
  store i8 %114, ptr %81, align 1, !tbaa !10
  %115 = extractelement <8 x i8> %108, i64 6
  store i8 %115, ptr %82, align 1, !tbaa !10
  store i8 %115, ptr %83, align 1, !tbaa !10
  store i8 %115, ptr %84, align 1, !tbaa !10
  store i8 %115, ptr %85, align 1, !tbaa !10
  store <8 x i8> %108, ptr %52, align 1, !tbaa !10
  %116 = getelementptr inbounds i8, ptr %0, i64 166
  %117 = extractelement <8 x i8> %108, i64 7
  store i8 %117, ptr %116, align 1, !tbaa !10
  %118 = getelementptr inbounds i8, ptr %0, i64 197
  store i8 %117, ptr %118, align 1, !tbaa !10
  %119 = getelementptr inbounds i8, ptr %0, i64 228
  store i8 %117, ptr %119, align 1, !tbaa !10
  %120 = extractelement <2 x i32> %18, i64 1
  %121 = shl nuw nsw i32 %120, 1
  %122 = extractelement <2 x i32> %18, i64 0
  %123 = add nuw nsw i32 %122, 2
  %124 = add nuw nsw i32 %123, %121
  %125 = add nuw nsw i32 %124, %21
  %126 = lshr i32 %125, 2
  %127 = trunc i32 %126 to i8
  %128 = getelementptr inbounds i8, ptr %0, i64 167
  store i8 %127, ptr %128, align 1, !tbaa !10
  %129 = getelementptr inbounds i8, ptr %0, i64 198
  store i8 %127, ptr %129, align 1, !tbaa !10
  %130 = getelementptr inbounds i8, ptr %0, i64 229
  store i8 %127, ptr %130, align 1, !tbaa !10
  %131 = shl nuw nsw i32 %21, 1
  %132 = add nuw nsw i32 %120, 2
  %133 = add nuw nsw i32 %132, %131
  %134 = add nuw nsw i32 %133, %24
  %135 = lshr i32 %134, 2
  %136 = trunc i32 %135 to i8
  %137 = getelementptr inbounds i8, ptr %0, i64 199
  store i8 %136, ptr %137, align 1, !tbaa !10
  %138 = getelementptr inbounds i8, ptr %0, i64 230
  store i8 %136, ptr %138, align 1, !tbaa !10
  %139 = shl nuw nsw i32 %24, 1
  %140 = add nuw nsw i32 %21, 2
  %141 = add nuw nsw i32 %140, %24
  %142 = add nuw nsw i32 %141, %139
  %143 = lshr i32 %142, 2
  %144 = trunc i32 %143 to i8
  %145 = getelementptr inbounds i8, ptr %0, i64 231
  store i8 %144, ptr %145, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_ddr(ptr noundef writeonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load i8, ptr %3, align 1, !tbaa !10
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds i8, ptr %1, i64 17
  %7 = load i8, ptr %6, align 1, !tbaa !10
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds i8, ptr %1, i64 18
  %10 = load i8, ptr %9, align 1, !tbaa !10
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds i8, ptr %1, i64 19
  %13 = load i8, ptr %12, align 1, !tbaa !10
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds i8, ptr %1, i64 20
  %16 = load i8, ptr %15, align 1, !tbaa !10
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds i8, ptr %1, i64 21
  %19 = load i8, ptr %18, align 1, !tbaa !10
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds i8, ptr %1, i64 22
  %22 = load i8, ptr %21, align 1, !tbaa !10
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %1, i64 23
  %25 = load i8, ptr %24, align 1, !tbaa !10
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds i8, ptr %1, i64 14
  %28 = load i8, ptr %27, align 1, !tbaa !10
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds i8, ptr %1, i64 13
  %31 = load i8, ptr %30, align 1, !tbaa !10
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds i8, ptr %1, i64 12
  %34 = load i8, ptr %33, align 1, !tbaa !10
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds i8, ptr %1, i64 11
  %37 = load i8, ptr %36, align 1, !tbaa !10
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds i8, ptr %1, i64 10
  %40 = load i8, ptr %39, align 1, !tbaa !10
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds i8, ptr %1, i64 9
  %43 = load i8, ptr %42, align 1, !tbaa !10
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds i8, ptr %1, i64 8
  %46 = load i8, ptr %45, align 1, !tbaa !10
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds i8, ptr %1, i64 7
  %49 = load i8, ptr %48, align 1, !tbaa !10
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds i8, ptr %1, i64 15
  %52 = load i8, ptr %51, align 1, !tbaa !10
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %47, 1
  %55 = add nuw nsw i32 %44, 2
  %56 = add nuw nsw i32 %55, %50
  %57 = add nuw nsw i32 %56, %54
  %58 = lshr i32 %57, 2
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds i8, ptr %0, i64 224
  store i8 %59, ptr %60, align 1, !tbaa !10
  %61 = shl nuw nsw i32 %44, 1
  %62 = add nuw nsw i32 %41, 2
  %63 = add nuw nsw i32 %62, %47
  %64 = add nuw nsw i32 %63, %61
  %65 = lshr i32 %64, 2
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds i8, ptr %0, i64 225
  store i8 %66, ptr %67, align 1, !tbaa !10
  %68 = getelementptr inbounds i8, ptr %0, i64 192
  store i8 %66, ptr %68, align 1, !tbaa !10
  %69 = shl nuw nsw i32 %41, 1
  %70 = add nuw nsw i32 %38, 2
  %71 = add nuw nsw i32 %70, %44
  %72 = add nuw nsw i32 %71, %69
  %73 = lshr i32 %72, 2
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds i8, ptr %0, i64 226
  store i8 %74, ptr %75, align 1, !tbaa !10
  %76 = getelementptr inbounds i8, ptr %0, i64 193
  store i8 %74, ptr %76, align 1, !tbaa !10
  %77 = getelementptr inbounds i8, ptr %0, i64 160
  store i8 %74, ptr %77, align 1, !tbaa !10
  %78 = shl nuw nsw i32 %38, 1
  %79 = add nuw nsw i32 %35, 2
  %80 = add nuw nsw i32 %79, %41
  %81 = add nuw nsw i32 %80, %78
  %82 = lshr i32 %81, 2
  %83 = trunc i32 %82 to i8
  %84 = getelementptr inbounds i8, ptr %0, i64 227
  store i8 %83, ptr %84, align 1, !tbaa !10
  %85 = getelementptr inbounds i8, ptr %0, i64 194
  store i8 %83, ptr %85, align 1, !tbaa !10
  %86 = getelementptr inbounds i8, ptr %0, i64 161
  store i8 %83, ptr %86, align 1, !tbaa !10
  %87 = getelementptr inbounds i8, ptr %0, i64 128
  store i8 %83, ptr %87, align 1, !tbaa !10
  %88 = shl nuw nsw i32 %35, 1
  %89 = add nuw nsw i32 %32, 2
  %90 = add nuw nsw i32 %89, %38
  %91 = add nuw nsw i32 %90, %88
  %92 = lshr i32 %91, 2
  %93 = trunc i32 %92 to i8
  %94 = getelementptr inbounds i8, ptr %0, i64 228
  store i8 %93, ptr %94, align 1, !tbaa !10
  %95 = getelementptr inbounds i8, ptr %0, i64 195
  store i8 %93, ptr %95, align 1, !tbaa !10
  %96 = getelementptr inbounds i8, ptr %0, i64 162
  store i8 %93, ptr %96, align 1, !tbaa !10
  %97 = getelementptr inbounds i8, ptr %0, i64 129
  store i8 %93, ptr %97, align 1, !tbaa !10
  %98 = getelementptr inbounds i8, ptr %0, i64 96
  store i8 %93, ptr %98, align 1, !tbaa !10
  %99 = shl nuw nsw i32 %32, 1
  %100 = add nuw nsw i32 %29, 2
  %101 = add nuw nsw i32 %100, %35
  %102 = add nuw nsw i32 %101, %99
  %103 = lshr i32 %102, 2
  %104 = trunc i32 %103 to i8
  %105 = getelementptr inbounds i8, ptr %0, i64 229
  store i8 %104, ptr %105, align 1, !tbaa !10
  %106 = getelementptr inbounds i8, ptr %0, i64 196
  store i8 %104, ptr %106, align 1, !tbaa !10
  %107 = getelementptr inbounds i8, ptr %0, i64 163
  store i8 %104, ptr %107, align 1, !tbaa !10
  %108 = getelementptr inbounds i8, ptr %0, i64 130
  store i8 %104, ptr %108, align 1, !tbaa !10
  %109 = getelementptr inbounds i8, ptr %0, i64 97
  store i8 %104, ptr %109, align 1, !tbaa !10
  %110 = getelementptr inbounds i8, ptr %0, i64 64
  store i8 %104, ptr %110, align 1, !tbaa !10
  %111 = shl nuw nsw i32 %29, 1
  %112 = add nuw nsw i32 %89, %111
  %113 = add nuw nsw i32 %112, %53
  %114 = lshr i32 %113, 2
  %115 = trunc i32 %114 to i8
  %116 = getelementptr inbounds i8, ptr %0, i64 230
  store i8 %115, ptr %116, align 1, !tbaa !10
  %117 = getelementptr inbounds i8, ptr %0, i64 197
  store i8 %115, ptr %117, align 1, !tbaa !10
  %118 = getelementptr inbounds i8, ptr %0, i64 164
  store i8 %115, ptr %118, align 1, !tbaa !10
  %119 = getelementptr inbounds i8, ptr %0, i64 131
  store i8 %115, ptr %119, align 1, !tbaa !10
  %120 = getelementptr inbounds i8, ptr %0, i64 98
  store i8 %115, ptr %120, align 1, !tbaa !10
  %121 = getelementptr inbounds i8, ptr %0, i64 65
  store i8 %115, ptr %121, align 1, !tbaa !10
  %122 = getelementptr inbounds i8, ptr %0, i64 32
  store i8 %115, ptr %122, align 1, !tbaa !10
  %123 = shl nuw nsw i32 %53, 1
  %124 = add nuw nsw i32 %5, 2
  %125 = add nuw nsw i32 %124, %29
  %126 = add nuw nsw i32 %125, %123
  %127 = lshr i32 %126, 2
  %128 = trunc i32 %127 to i8
  %129 = getelementptr inbounds i8, ptr %0, i64 231
  store i8 %128, ptr %129, align 1, !tbaa !10
  %130 = getelementptr inbounds i8, ptr %0, i64 198
  store i8 %128, ptr %130, align 1, !tbaa !10
  %131 = getelementptr inbounds i8, ptr %0, i64 165
  store i8 %128, ptr %131, align 1, !tbaa !10
  %132 = getelementptr inbounds i8, ptr %0, i64 132
  store i8 %128, ptr %132, align 1, !tbaa !10
  %133 = getelementptr inbounds i8, ptr %0, i64 99
  store i8 %128, ptr %133, align 1, !tbaa !10
  %134 = getelementptr inbounds i8, ptr %0, i64 66
  store i8 %128, ptr %134, align 1, !tbaa !10
  %135 = getelementptr inbounds i8, ptr %0, i64 33
  store i8 %128, ptr %135, align 1, !tbaa !10
  store i8 %128, ptr %0, align 1, !tbaa !10
  %136 = shl nuw nsw i32 %5, 1
  %137 = add nuw nsw i32 %8, 2
  %138 = add nuw nsw i32 %137, %136
  %139 = add nuw nsw i32 %138, %53
  %140 = lshr i32 %139, 2
  %141 = trunc i32 %140 to i8
  %142 = getelementptr inbounds i8, ptr %0, i64 199
  store i8 %141, ptr %142, align 1, !tbaa !10
  %143 = getelementptr inbounds i8, ptr %0, i64 166
  store i8 %141, ptr %143, align 1, !tbaa !10
  %144 = getelementptr inbounds i8, ptr %0, i64 133
  store i8 %141, ptr %144, align 1, !tbaa !10
  %145 = getelementptr inbounds i8, ptr %0, i64 100
  store i8 %141, ptr %145, align 1, !tbaa !10
  %146 = getelementptr inbounds i8, ptr %0, i64 67
  store i8 %141, ptr %146, align 1, !tbaa !10
  %147 = getelementptr inbounds i8, ptr %0, i64 34
  store i8 %141, ptr %147, align 1, !tbaa !10
  %148 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %141, ptr %148, align 1, !tbaa !10
  %149 = shl nuw nsw i32 %8, 1
  %150 = add nuw nsw i32 %124, %149
  %151 = add nuw nsw i32 %150, %11
  %152 = lshr i32 %151, 2
  %153 = trunc i32 %152 to i8
  %154 = getelementptr inbounds i8, ptr %0, i64 167
  store i8 %153, ptr %154, align 1, !tbaa !10
  %155 = getelementptr inbounds i8, ptr %0, i64 134
  store i8 %153, ptr %155, align 1, !tbaa !10
  %156 = getelementptr inbounds i8, ptr %0, i64 101
  store i8 %153, ptr %156, align 1, !tbaa !10
  %157 = getelementptr inbounds i8, ptr %0, i64 68
  store i8 %153, ptr %157, align 1, !tbaa !10
  %158 = getelementptr inbounds i8, ptr %0, i64 35
  store i8 %153, ptr %158, align 1, !tbaa !10
  %159 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %153, ptr %159, align 1, !tbaa !10
  %160 = shl nuw nsw i32 %11, 1
  %161 = add nuw nsw i32 %137, %160
  %162 = add nuw nsw i32 %161, %14
  %163 = lshr i32 %162, 2
  %164 = trunc i32 %163 to i8
  %165 = getelementptr inbounds i8, ptr %0, i64 135
  store i8 %164, ptr %165, align 1, !tbaa !10
  %166 = getelementptr inbounds i8, ptr %0, i64 102
  store i8 %164, ptr %166, align 1, !tbaa !10
  %167 = getelementptr inbounds i8, ptr %0, i64 69
  store i8 %164, ptr %167, align 1, !tbaa !10
  %168 = getelementptr inbounds i8, ptr %0, i64 36
  store i8 %164, ptr %168, align 1, !tbaa !10
  %169 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %164, ptr %169, align 1, !tbaa !10
  %170 = shl nuw nsw i32 %14, 1
  %171 = add nuw nsw i32 %11, 2
  %172 = add nuw nsw i32 %171, %170
  %173 = add nuw nsw i32 %172, %17
  %174 = lshr i32 %173, 2
  %175 = trunc i32 %174 to i8
  %176 = getelementptr inbounds i8, ptr %0, i64 103
  store i8 %175, ptr %176, align 1, !tbaa !10
  %177 = getelementptr inbounds i8, ptr %0, i64 70
  store i8 %175, ptr %177, align 1, !tbaa !10
  %178 = getelementptr inbounds i8, ptr %0, i64 37
  store i8 %175, ptr %178, align 1, !tbaa !10
  %179 = getelementptr inbounds i8, ptr %0, i64 4
  store i8 %175, ptr %179, align 1, !tbaa !10
  %180 = shl nuw nsw i32 %17, 1
  %181 = add nuw nsw i32 %14, 2
  %182 = add nuw nsw i32 %181, %180
  %183 = add nuw nsw i32 %182, %20
  %184 = lshr i32 %183, 2
  %185 = trunc i32 %184 to i8
  %186 = getelementptr inbounds i8, ptr %0, i64 71
  store i8 %185, ptr %186, align 1, !tbaa !10
  %187 = getelementptr inbounds i8, ptr %0, i64 38
  store i8 %185, ptr %187, align 1, !tbaa !10
  %188 = getelementptr inbounds i8, ptr %0, i64 5
  store i8 %185, ptr %188, align 1, !tbaa !10
  %189 = shl nuw nsw i32 %20, 1
  %190 = add nuw nsw i32 %17, 2
  %191 = add nuw nsw i32 %190, %189
  %192 = add nuw nsw i32 %191, %23
  %193 = lshr i32 %192, 2
  %194 = trunc i32 %193 to i8
  %195 = getelementptr inbounds i8, ptr %0, i64 39
  store i8 %194, ptr %195, align 1, !tbaa !10
  %196 = getelementptr inbounds i8, ptr %0, i64 6
  store i8 %194, ptr %196, align 1, !tbaa !10
  %197 = shl nuw nsw i32 %23, 1
  %198 = add nuw nsw i32 %20, 2
  %199 = add nuw nsw i32 %198, %197
  %200 = add nuw nsw i32 %199, %26
  %201 = lshr i32 %200, 2
  %202 = trunc i32 %201 to i8
  %203 = getelementptr inbounds i8, ptr %0, i64 7
  store i8 %202, ptr %203, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_vr(ptr noundef writeonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load i8, ptr %3, align 1, !tbaa !10
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds i8, ptr %1, i64 17
  %7 = load i8, ptr %6, align 1, !tbaa !10
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds i8, ptr %1, i64 18
  %10 = load i8, ptr %9, align 1, !tbaa !10
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds i8, ptr %1, i64 19
  %13 = load i8, ptr %12, align 1, !tbaa !10
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds i8, ptr %1, i64 20
  %16 = load i8, ptr %15, align 1, !tbaa !10
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds i8, ptr %1, i64 21
  %19 = load i8, ptr %18, align 1, !tbaa !10
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds i8, ptr %1, i64 22
  %22 = load i8, ptr %21, align 1, !tbaa !10
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %1, i64 23
  %25 = load i8, ptr %24, align 1, !tbaa !10
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds i8, ptr %1, i64 14
  %28 = load i8, ptr %27, align 1, !tbaa !10
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds i8, ptr %1, i64 13
  %31 = load i8, ptr %30, align 1, !tbaa !10
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds i8, ptr %1, i64 12
  %34 = load i8, ptr %33, align 1, !tbaa !10
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds i8, ptr %1, i64 11
  %37 = load i8, ptr %36, align 1, !tbaa !10
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds i8, ptr %1, i64 10
  %40 = load i8, ptr %39, align 1, !tbaa !10
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds i8, ptr %1, i64 9
  %43 = load i8, ptr %42, align 1, !tbaa !10
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds i8, ptr %1, i64 8
  %46 = load i8, ptr %45, align 1, !tbaa !10
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds i8, ptr %1, i64 15
  %49 = load i8, ptr %48, align 1, !tbaa !10
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %41, 1
  %52 = add nuw nsw i32 %38, 2
  %53 = add nuw nsw i32 %52, %44
  %54 = add nuw nsw i32 %53, %51
  %55 = lshr i32 %54, 2
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds i8, ptr %0, i64 192
  store i8 %56, ptr %57, align 1, !tbaa !10
  %58 = shl nuw nsw i32 %44, 1
  %59 = add nuw nsw i32 %41, 2
  %60 = add nuw nsw i32 %59, %47
  %61 = add nuw nsw i32 %60, %58
  %62 = lshr i32 %61, 2
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds i8, ptr %0, i64 224
  store i8 %63, ptr %64, align 1, !tbaa !10
  %65 = shl nuw nsw i32 %35, 1
  %66 = add nuw nsw i32 %32, 2
  %67 = add nuw nsw i32 %66, %38
  %68 = add nuw nsw i32 %67, %65
  %69 = lshr i32 %68, 2
  %70 = trunc i32 %69 to i8
  %71 = getelementptr inbounds i8, ptr %0, i64 193
  store i8 %70, ptr %71, align 1, !tbaa !10
  %72 = getelementptr inbounds i8, ptr %0, i64 128
  store i8 %70, ptr %72, align 1, !tbaa !10
  %73 = shl nuw nsw i32 %38, 1
  %74 = add nuw nsw i32 %35, 2
  %75 = add nuw nsw i32 %74, %41
  %76 = add nuw nsw i32 %75, %73
  %77 = lshr i32 %76, 2
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds i8, ptr %0, i64 225
  store i8 %78, ptr %79, align 1, !tbaa !10
  %80 = getelementptr inbounds i8, ptr %0, i64 160
  store i8 %78, ptr %80, align 1, !tbaa !10
  %81 = shl nuw nsw i32 %29, 1
  %82 = add nuw nsw i32 %66, %81
  %83 = add nuw nsw i32 %82, %50
  %84 = lshr i32 %83, 2
  %85 = trunc i32 %84 to i8
  %86 = getelementptr inbounds i8, ptr %0, i64 194
  store i8 %85, ptr %86, align 1, !tbaa !10
  %87 = getelementptr inbounds i8, ptr %0, i64 129
  store i8 %85, ptr %87, align 1, !tbaa !10
  %88 = getelementptr inbounds i8, ptr %0, i64 64
  store i8 %85, ptr %88, align 1, !tbaa !10
  %89 = shl nuw nsw i32 %32, 1
  %90 = add nuw nsw i32 %29, 2
  %91 = add nuw nsw i32 %90, %35
  %92 = add nuw nsw i32 %91, %89
  %93 = lshr i32 %92, 2
  %94 = trunc i32 %93 to i8
  %95 = getelementptr inbounds i8, ptr %0, i64 226
  store i8 %94, ptr %95, align 1, !tbaa !10
  %96 = getelementptr inbounds i8, ptr %0, i64 161
  store i8 %94, ptr %96, align 1, !tbaa !10
  %97 = getelementptr inbounds i8, ptr %0, i64 96
  store i8 %94, ptr %97, align 1, !tbaa !10
  %98 = shl nuw nsw i32 %50, 1
  %99 = add nuw nsw i32 %5, 2
  %100 = add nuw nsw i32 %99, %29
  %101 = add nuw nsw i32 %100, %98
  %102 = lshr i32 %101, 2
  %103 = trunc i32 %102 to i8
  %104 = getelementptr inbounds i8, ptr %0, i64 227
  store i8 %103, ptr %104, align 1, !tbaa !10
  %105 = getelementptr inbounds i8, ptr %0, i64 162
  store i8 %103, ptr %105, align 1, !tbaa !10
  %106 = getelementptr inbounds i8, ptr %0, i64 97
  store i8 %103, ptr %106, align 1, !tbaa !10
  %107 = getelementptr inbounds i8, ptr %0, i64 32
  store i8 %103, ptr %107, align 1, !tbaa !10
  %108 = add nuw nsw i32 %5, 1
  %109 = add nuw nsw i32 %108, %50
  %110 = lshr i32 %109, 1
  %111 = trunc i32 %110 to i8
  %112 = getelementptr inbounds i8, ptr %0, i64 195
  store i8 %111, ptr %112, align 1, !tbaa !10
  %113 = getelementptr inbounds i8, ptr %0, i64 130
  store i8 %111, ptr %113, align 1, !tbaa !10
  %114 = getelementptr inbounds i8, ptr %0, i64 65
  store i8 %111, ptr %114, align 1, !tbaa !10
  store i8 %111, ptr %0, align 1, !tbaa !10
  %115 = shl nuw nsw i32 %5, 1
  %116 = add nuw nsw i32 %8, 2
  %117 = add nuw nsw i32 %116, %115
  %118 = add nuw nsw i32 %117, %50
  %119 = lshr i32 %118, 2
  %120 = trunc i32 %119 to i8
  %121 = getelementptr inbounds i8, ptr %0, i64 228
  store i8 %120, ptr %121, align 1, !tbaa !10
  %122 = getelementptr inbounds i8, ptr %0, i64 163
  store i8 %120, ptr %122, align 1, !tbaa !10
  %123 = getelementptr inbounds i8, ptr %0, i64 98
  store i8 %120, ptr %123, align 1, !tbaa !10
  %124 = getelementptr inbounds i8, ptr %0, i64 33
  store i8 %120, ptr %124, align 1, !tbaa !10
  %125 = add nuw nsw i32 %108, %8
  %126 = lshr i32 %125, 1
  %127 = trunc i32 %126 to i8
  %128 = getelementptr inbounds i8, ptr %0, i64 196
  store i8 %127, ptr %128, align 1, !tbaa !10
  %129 = getelementptr inbounds i8, ptr %0, i64 131
  store i8 %127, ptr %129, align 1, !tbaa !10
  %130 = getelementptr inbounds i8, ptr %0, i64 66
  store i8 %127, ptr %130, align 1, !tbaa !10
  %131 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %127, ptr %131, align 1, !tbaa !10
  %132 = shl nuw nsw i32 %8, 1
  %133 = add nuw nsw i32 %99, %132
  %134 = add nuw nsw i32 %133, %11
  %135 = lshr i32 %134, 2
  %136 = trunc i32 %135 to i8
  %137 = getelementptr inbounds i8, ptr %0, i64 229
  store i8 %136, ptr %137, align 1, !tbaa !10
  %138 = getelementptr inbounds i8, ptr %0, i64 164
  store i8 %136, ptr %138, align 1, !tbaa !10
  %139 = getelementptr inbounds i8, ptr %0, i64 99
  store i8 %136, ptr %139, align 1, !tbaa !10
  %140 = getelementptr inbounds i8, ptr %0, i64 34
  store i8 %136, ptr %140, align 1, !tbaa !10
  %141 = add nuw nsw i32 %8, 1
  %142 = add nuw nsw i32 %141, %11
  %143 = lshr i32 %142, 1
  %144 = trunc i32 %143 to i8
  %145 = getelementptr inbounds i8, ptr %0, i64 197
  store i8 %144, ptr %145, align 1, !tbaa !10
  %146 = getelementptr inbounds i8, ptr %0, i64 132
  store i8 %144, ptr %146, align 1, !tbaa !10
  %147 = getelementptr inbounds i8, ptr %0, i64 67
  store i8 %144, ptr %147, align 1, !tbaa !10
  %148 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %144, ptr %148, align 1, !tbaa !10
  %149 = shl nuw nsw i32 %11, 1
  %150 = add nuw nsw i32 %116, %149
  %151 = add nuw nsw i32 %150, %14
  %152 = lshr i32 %151, 2
  %153 = trunc i32 %152 to i8
  %154 = getelementptr inbounds i8, ptr %0, i64 230
  store i8 %153, ptr %154, align 1, !tbaa !10
  %155 = getelementptr inbounds i8, ptr %0, i64 165
  store i8 %153, ptr %155, align 1, !tbaa !10
  %156 = getelementptr inbounds i8, ptr %0, i64 100
  store i8 %153, ptr %156, align 1, !tbaa !10
  %157 = getelementptr inbounds i8, ptr %0, i64 35
  store i8 %153, ptr %157, align 1, !tbaa !10
  %158 = add nuw nsw i32 %11, 1
  %159 = add nuw nsw i32 %158, %14
  %160 = lshr i32 %159, 1
  %161 = trunc i32 %160 to i8
  %162 = getelementptr inbounds i8, ptr %0, i64 198
  store i8 %161, ptr %162, align 1, !tbaa !10
  %163 = getelementptr inbounds i8, ptr %0, i64 133
  store i8 %161, ptr %163, align 1, !tbaa !10
  %164 = getelementptr inbounds i8, ptr %0, i64 68
  store i8 %161, ptr %164, align 1, !tbaa !10
  %165 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %161, ptr %165, align 1, !tbaa !10
  %166 = shl nuw nsw i32 %14, 1
  %167 = add nuw nsw i32 %11, 2
  %168 = add nuw nsw i32 %167, %166
  %169 = add nuw nsw i32 %168, %17
  %170 = lshr i32 %169, 2
  %171 = trunc i32 %170 to i8
  %172 = getelementptr inbounds i8, ptr %0, i64 231
  store i8 %171, ptr %172, align 1, !tbaa !10
  %173 = getelementptr inbounds i8, ptr %0, i64 166
  store i8 %171, ptr %173, align 1, !tbaa !10
  %174 = getelementptr inbounds i8, ptr %0, i64 101
  store i8 %171, ptr %174, align 1, !tbaa !10
  %175 = getelementptr inbounds i8, ptr %0, i64 36
  store i8 %171, ptr %175, align 1, !tbaa !10
  %176 = add nuw nsw i32 %14, 1
  %177 = add nuw nsw i32 %176, %17
  %178 = lshr i32 %177, 1
  %179 = trunc i32 %178 to i8
  %180 = getelementptr inbounds i8, ptr %0, i64 199
  store i8 %179, ptr %180, align 1, !tbaa !10
  %181 = getelementptr inbounds i8, ptr %0, i64 134
  store i8 %179, ptr %181, align 1, !tbaa !10
  %182 = getelementptr inbounds i8, ptr %0, i64 69
  store i8 %179, ptr %182, align 1, !tbaa !10
  %183 = getelementptr inbounds i8, ptr %0, i64 4
  store i8 %179, ptr %183, align 1, !tbaa !10
  %184 = shl nuw nsw i32 %17, 1
  %185 = add nuw nsw i32 %14, 2
  %186 = add nuw nsw i32 %185, %184
  %187 = add nuw nsw i32 %186, %20
  %188 = lshr i32 %187, 2
  %189 = trunc i32 %188 to i8
  %190 = getelementptr inbounds i8, ptr %0, i64 167
  store i8 %189, ptr %190, align 1, !tbaa !10
  %191 = getelementptr inbounds i8, ptr %0, i64 102
  store i8 %189, ptr %191, align 1, !tbaa !10
  %192 = getelementptr inbounds i8, ptr %0, i64 37
  store i8 %189, ptr %192, align 1, !tbaa !10
  %193 = add nuw nsw i32 %17, 1
  %194 = add nuw nsw i32 %193, %20
  %195 = lshr i32 %194, 1
  %196 = trunc i32 %195 to i8
  %197 = getelementptr inbounds i8, ptr %0, i64 135
  store i8 %196, ptr %197, align 1, !tbaa !10
  %198 = getelementptr inbounds i8, ptr %0, i64 70
  store i8 %196, ptr %198, align 1, !tbaa !10
  %199 = getelementptr inbounds i8, ptr %0, i64 5
  store i8 %196, ptr %199, align 1, !tbaa !10
  %200 = shl nuw nsw i32 %20, 1
  %201 = add nuw nsw i32 %17, 2
  %202 = add nuw nsw i32 %201, %200
  %203 = add nuw nsw i32 %202, %23
  %204 = lshr i32 %203, 2
  %205 = trunc i32 %204 to i8
  %206 = getelementptr inbounds i8, ptr %0, i64 103
  store i8 %205, ptr %206, align 1, !tbaa !10
  %207 = getelementptr inbounds i8, ptr %0, i64 38
  store i8 %205, ptr %207, align 1, !tbaa !10
  %208 = add nuw nsw i32 %20, 1
  %209 = add nuw nsw i32 %208, %23
  %210 = lshr i32 %209, 1
  %211 = trunc i32 %210 to i8
  %212 = getelementptr inbounds i8, ptr %0, i64 71
  store i8 %211, ptr %212, align 1, !tbaa !10
  %213 = getelementptr inbounds i8, ptr %0, i64 6
  store i8 %211, ptr %213, align 1, !tbaa !10
  %214 = shl nuw nsw i32 %23, 1
  %215 = add nuw nsw i32 %20, 2
  %216 = add nuw nsw i32 %215, %214
  %217 = add nuw nsw i32 %216, %26
  %218 = lshr i32 %217, 2
  %219 = trunc i32 %218 to i8
  %220 = getelementptr inbounds i8, ptr %0, i64 39
  store i8 %219, ptr %220, align 1, !tbaa !10
  %221 = add nuw nsw i32 %23, 1
  %222 = add nuw nsw i32 %221, %26
  %223 = lshr i32 %222, 1
  %224 = trunc i32 %223 to i8
  %225 = getelementptr inbounds i8, ptr %0, i64 7
  store i8 %224, ptr %225, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_hd(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load i8, ptr %3, align 1, !tbaa !10
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds i8, ptr %1, i64 17
  %7 = load i8, ptr %6, align 1, !tbaa !10
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds i8, ptr %1, i64 18
  %10 = load i8, ptr %9, align 1, !tbaa !10
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds i8, ptr %1, i64 19
  %13 = load i8, ptr %12, align 1, !tbaa !10
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds i8, ptr %1, i64 20
  %16 = load i8, ptr %15, align 1, !tbaa !10
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds i8, ptr %1, i64 21
  %19 = load i8, ptr %18, align 1, !tbaa !10
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds i8, ptr %1, i64 22
  %22 = load i8, ptr %21, align 1, !tbaa !10
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %1, i64 14
  %25 = load i8, ptr %24, align 1, !tbaa !10
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds i8, ptr %1, i64 13
  %28 = load i8, ptr %27, align 1, !tbaa !10
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds i8, ptr %1, i64 12
  %31 = load i8, ptr %30, align 1, !tbaa !10
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds i8, ptr %1, i64 11
  %34 = load i8, ptr %33, align 1, !tbaa !10
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds i8, ptr %1, i64 10
  %37 = load i8, ptr %36, align 1, !tbaa !10
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds i8, ptr %1, i64 9
  %40 = load i8, ptr %39, align 1, !tbaa !10
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds i8, ptr %1, i64 8
  %43 = load i8, ptr %42, align 1, !tbaa !10
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds i8, ptr %1, i64 7
  %46 = load i8, ptr %45, align 1, !tbaa !10
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds i8, ptr %1, i64 15
  %49 = load i8, ptr %48, align 1, !tbaa !10
  %50 = zext i8 %49 to i32
  %51 = add nuw nsw i32 %44, 1
  %52 = add nuw nsw i32 %51, %47
  %53 = lshr i32 %52, 1
  %54 = shl nuw nsw i32 %44, 1
  %55 = add nuw nsw i32 %41, 2
  %56 = add nuw nsw i32 %55, %54
  %57 = add nuw nsw i32 %56, %47
  %58 = lshr i32 %57, 2
  %59 = tail call fastcc i32 @pack8to16(i32 noundef %53, i32 noundef %58) #10, !range !40
  %60 = add nuw nsw i32 %41, 1
  %61 = add nuw nsw i32 %60, %44
  %62 = lshr i32 %61, 1
  %63 = shl nuw nsw i32 %41, 1
  %64 = add nuw nsw i32 %38, 2
  %65 = add nuw nsw i32 %64, %63
  %66 = add nuw nsw i32 %65, %44
  %67 = lshr i32 %66, 2
  %68 = tail call fastcc i32 @pack8to16(i32 noundef %62, i32 noundef %67) #10, !range !40
  %69 = add nuw nsw i32 %38, 1
  %70 = add nuw nsw i32 %69, %41
  %71 = lshr i32 %70, 1
  %72 = shl nuw nsw i32 %38, 1
  %73 = add nuw nsw i32 %35, 2
  %74 = add nuw nsw i32 %73, %72
  %75 = add nuw nsw i32 %74, %41
  %76 = lshr i32 %75, 2
  %77 = tail call fastcc i32 @pack8to16(i32 noundef %71, i32 noundef %76) #10, !range !40
  %78 = add nuw nsw i32 %35, 1
  %79 = add nuw nsw i32 %78, %38
  %80 = lshr i32 %79, 1
  %81 = shl nuw nsw i32 %35, 1
  %82 = add nuw nsw i32 %32, 2
  %83 = add nuw nsw i32 %82, %81
  %84 = add nuw nsw i32 %83, %38
  %85 = lshr i32 %84, 2
  %86 = tail call fastcc i32 @pack8to16(i32 noundef %80, i32 noundef %85) #10, !range !40
  %87 = add nuw nsw i32 %32, 1
  %88 = add nuw nsw i32 %87, %35
  %89 = lshr i32 %88, 1
  %90 = shl nuw nsw i32 %32, 1
  %91 = add nuw nsw i32 %29, 2
  %92 = add nuw nsw i32 %91, %90
  %93 = add nuw nsw i32 %92, %35
  %94 = lshr i32 %93, 2
  %95 = tail call fastcc i32 @pack8to16(i32 noundef %89, i32 noundef %94) #10, !range !40
  %96 = add nuw nsw i32 %29, 1
  %97 = add nuw nsw i32 %96, %32
  %98 = lshr i32 %97, 1
  %99 = shl nuw nsw i32 %29, 1
  %100 = add nuw nsw i32 %26, 2
  %101 = add nuw nsw i32 %100, %99
  %102 = add nuw nsw i32 %101, %32
  %103 = lshr i32 %102, 2
  %104 = tail call fastcc i32 @pack8to16(i32 noundef %98, i32 noundef %103) #10, !range !40
  %105 = add nuw nsw i32 %26, 1
  %106 = add nuw nsw i32 %105, %29
  %107 = lshr i32 %106, 1
  %108 = shl nuw nsw i32 %26, 1
  %109 = add nuw nsw i32 %91, %108
  %110 = add nuw nsw i32 %109, %50
  %111 = lshr i32 %110, 2
  %112 = tail call fastcc i32 @pack8to16(i32 noundef %107, i32 noundef %111) #10, !range !40
  %113 = add nuw nsw i32 %105, %50
  %114 = lshr i32 %113, 1
  %115 = shl nuw nsw i32 %50, 1
  %116 = add nuw nsw i32 %5, 2
  %117 = add nuw nsw i32 %116, %26
  %118 = add nuw nsw i32 %117, %115
  %119 = lshr i32 %118, 2
  %120 = tail call fastcc i32 @pack8to16(i32 noundef %114, i32 noundef %119) #10, !range !40
  %121 = shl nuw nsw i32 %5, 1
  %122 = add nuw nsw i32 %8, 2
  %123 = add nuw nsw i32 %122, %121
  %124 = add nuw nsw i32 %123, %50
  %125 = lshr i32 %124, 2
  %126 = shl nuw nsw i32 %8, 1
  %127 = add nuw nsw i32 %116, %11
  %128 = add nuw nsw i32 %127, %126
  %129 = lshr i32 %128, 2
  %130 = tail call fastcc i32 @pack8to16(i32 noundef %125, i32 noundef %129) #10, !range !40
  %131 = shl nuw nsw i32 %11, 1
  %132 = add nuw nsw i32 %122, %14
  %133 = add nuw nsw i32 %132, %131
  %134 = lshr i32 %133, 2
  %135 = shl nuw nsw i32 %14, 1
  %136 = add nuw nsw i32 %11, 2
  %137 = add nuw nsw i32 %136, %17
  %138 = add nuw nsw i32 %137, %135
  %139 = lshr i32 %138, 2
  %140 = tail call fastcc i32 @pack8to16(i32 noundef %134, i32 noundef %139) #10, !range !40
  %141 = shl nuw nsw i32 %17, 1
  %142 = add nuw nsw i32 %14, 2
  %143 = add nuw nsw i32 %142, %20
  %144 = add nuw nsw i32 %143, %141
  %145 = lshr i32 %144, 2
  %146 = shl nuw nsw i32 %20, 1
  %147 = add nuw nsw i32 %17, 2
  %148 = add nuw nsw i32 %147, %23
  %149 = add nuw nsw i32 %148, %146
  %150 = lshr i32 %149, 2
  %151 = tail call fastcc i32 @pack8to16(i32 noundef %145, i32 noundef %150) #10, !range !40
  %152 = tail call fastcc i32 @pack16to32(i32 noundef %59, i32 noundef %68) #10
  %153 = getelementptr inbounds i8, ptr %0, i64 224
  store i32 %152, ptr %153, align 4, !tbaa !10
  %154 = tail call fastcc i32 @pack16to32(i32 noundef %68, i32 noundef %77) #10
  %155 = getelementptr inbounds i8, ptr %0, i64 192
  store i32 %154, ptr %155, align 4, !tbaa !10
  %156 = tail call fastcc i32 @pack16to32(i32 noundef %77, i32 noundef %86) #10
  %157 = getelementptr inbounds i8, ptr %0, i64 160
  store i32 %156, ptr %157, align 4, !tbaa !10
  %158 = getelementptr inbounds i8, ptr %0, i64 228
  store i32 %156, ptr %158, align 4, !tbaa !10
  %159 = tail call fastcc i32 @pack16to32(i32 noundef %86, i32 noundef %95) #10
  %160 = getelementptr inbounds i8, ptr %0, i64 128
  store i32 %159, ptr %160, align 4, !tbaa !10
  %161 = getelementptr inbounds i8, ptr %0, i64 196
  store i32 %159, ptr %161, align 4, !tbaa !10
  %162 = tail call fastcc i32 @pack16to32(i32 noundef %95, i32 noundef %104) #10
  %163 = getelementptr inbounds i8, ptr %0, i64 96
  store i32 %162, ptr %163, align 4, !tbaa !10
  %164 = getelementptr inbounds i8, ptr %0, i64 164
  store i32 %162, ptr %164, align 4, !tbaa !10
  %165 = tail call fastcc i32 @pack16to32(i32 noundef %104, i32 noundef %112) #10
  %166 = getelementptr inbounds i8, ptr %0, i64 64
  store i32 %165, ptr %166, align 4, !tbaa !10
  %167 = getelementptr inbounds i8, ptr %0, i64 132
  store i32 %165, ptr %167, align 4, !tbaa !10
  %168 = tail call fastcc i32 @pack16to32(i32 noundef %112, i32 noundef %120) #10
  %169 = getelementptr inbounds i8, ptr %0, i64 32
  store i32 %168, ptr %169, align 4, !tbaa !10
  %170 = getelementptr inbounds i8, ptr %0, i64 100
  store i32 %168, ptr %170, align 4, !tbaa !10
  %171 = tail call fastcc i32 @pack16to32(i32 noundef %120, i32 noundef %130) #10
  store i32 %171, ptr %0, align 4, !tbaa !10
  %172 = getelementptr inbounds i8, ptr %0, i64 68
  store i32 %171, ptr %172, align 4, !tbaa !10
  %173 = tail call fastcc i32 @pack16to32(i32 noundef %130, i32 noundef %140) #10
  %174 = getelementptr inbounds i8, ptr %0, i64 36
  store i32 %173, ptr %174, align 4, !tbaa !10
  %175 = tail call fastcc i32 @pack16to32(i32 noundef %140, i32 noundef %151) #10
  %176 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %175, ptr %176, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_vl(ptr noundef writeonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load i8, ptr %3, align 1, !tbaa !10
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds i8, ptr %1, i64 17
  %7 = load i8, ptr %6, align 1, !tbaa !10
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds i8, ptr %1, i64 18
  %10 = load i8, ptr %9, align 1, !tbaa !10
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds i8, ptr %1, i64 19
  %13 = load i8, ptr %12, align 1, !tbaa !10
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds i8, ptr %1, i64 20
  %16 = load i8, ptr %15, align 1, !tbaa !10
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds i8, ptr %1, i64 21
  %19 = load i8, ptr %18, align 1, !tbaa !10
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds i8, ptr %1, i64 22
  %22 = load i8, ptr %21, align 1, !tbaa !10
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %1, i64 23
  %25 = load i8, ptr %24, align 1, !tbaa !10
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds i8, ptr %1, i64 24
  %28 = load i8, ptr %27, align 1, !tbaa !10
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds i8, ptr %1, i64 25
  %31 = load i8, ptr %30, align 1, !tbaa !10
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds i8, ptr %1, i64 26
  %34 = load i8, ptr %33, align 1, !tbaa !10
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds i8, ptr %1, i64 27
  %37 = load i8, ptr %36, align 1, !tbaa !10
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds i8, ptr %1, i64 28
  %40 = load i8, ptr %39, align 1, !tbaa !10
  %41 = zext i8 %40 to i32
  %42 = add nuw nsw i32 %8, 1
  %43 = add nuw nsw i32 %42, %5
  %44 = lshr i32 %43, 1
  %45 = trunc i32 %44 to i8
  store i8 %45, ptr %0, align 1, !tbaa !10
  %46 = shl nuw nsw i32 %8, 1
  %47 = add nuw nsw i32 %11, 2
  %48 = add nuw nsw i32 %47, %5
  %49 = add nuw nsw i32 %48, %46
  %50 = lshr i32 %49, 2
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds i8, ptr %0, i64 32
  store i8 %51, ptr %52, align 1, !tbaa !10
  %53 = add nuw nsw i32 %42, %11
  %54 = lshr i32 %53, 1
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %55, ptr %56, align 1, !tbaa !10
  %57 = getelementptr inbounds i8, ptr %0, i64 64
  store i8 %55, ptr %57, align 1, !tbaa !10
  %58 = shl nuw nsw i32 %11, 1
  %59 = add nuw nsw i32 %14, 2
  %60 = add nuw nsw i32 %59, %8
  %61 = add nuw nsw i32 %60, %58
  %62 = lshr i32 %61, 2
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds i8, ptr %0, i64 33
  store i8 %63, ptr %64, align 1, !tbaa !10
  %65 = getelementptr inbounds i8, ptr %0, i64 96
  store i8 %63, ptr %65, align 1, !tbaa !10
  %66 = add nuw nsw i32 %11, 1
  %67 = add nuw nsw i32 %66, %14
  %68 = lshr i32 %67, 1
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %69, ptr %70, align 1, !tbaa !10
  %71 = getelementptr inbounds i8, ptr %0, i64 65
  store i8 %69, ptr %71, align 1, !tbaa !10
  %72 = getelementptr inbounds i8, ptr %0, i64 128
  store i8 %69, ptr %72, align 1, !tbaa !10
  %73 = shl nuw nsw i32 %14, 1
  %74 = add nuw nsw i32 %47, %73
  %75 = add nuw nsw i32 %74, %17
  %76 = lshr i32 %75, 2
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds i8, ptr %0, i64 34
  store i8 %77, ptr %78, align 1, !tbaa !10
  %79 = getelementptr inbounds i8, ptr %0, i64 97
  store i8 %77, ptr %79, align 1, !tbaa !10
  %80 = getelementptr inbounds i8, ptr %0, i64 160
  store i8 %77, ptr %80, align 1, !tbaa !10
  %81 = add nuw nsw i32 %14, 1
  %82 = add nuw nsw i32 %81, %17
  %83 = lshr i32 %82, 1
  %84 = trunc i32 %83 to i8
  %85 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %84, ptr %85, align 1, !tbaa !10
  %86 = getelementptr inbounds i8, ptr %0, i64 66
  store i8 %84, ptr %86, align 1, !tbaa !10
  %87 = getelementptr inbounds i8, ptr %0, i64 129
  store i8 %84, ptr %87, align 1, !tbaa !10
  %88 = getelementptr inbounds i8, ptr %0, i64 192
  store i8 %84, ptr %88, align 1, !tbaa !10
  %89 = shl nuw nsw i32 %17, 1
  %90 = add nuw nsw i32 %59, %89
  %91 = add nuw nsw i32 %90, %20
  %92 = lshr i32 %91, 2
  %93 = trunc i32 %92 to i8
  %94 = getelementptr inbounds i8, ptr %0, i64 35
  store i8 %93, ptr %94, align 1, !tbaa !10
  %95 = getelementptr inbounds i8, ptr %0, i64 98
  store i8 %93, ptr %95, align 1, !tbaa !10
  %96 = getelementptr inbounds i8, ptr %0, i64 161
  store i8 %93, ptr %96, align 1, !tbaa !10
  %97 = getelementptr inbounds i8, ptr %0, i64 224
  store i8 %93, ptr %97, align 1, !tbaa !10
  %98 = add nuw nsw i32 %17, 1
  %99 = add nuw nsw i32 %98, %20
  %100 = lshr i32 %99, 1
  %101 = trunc i32 %100 to i8
  %102 = getelementptr inbounds i8, ptr %0, i64 4
  store i8 %101, ptr %102, align 1, !tbaa !10
  %103 = getelementptr inbounds i8, ptr %0, i64 67
  store i8 %101, ptr %103, align 1, !tbaa !10
  %104 = getelementptr inbounds i8, ptr %0, i64 130
  store i8 %101, ptr %104, align 1, !tbaa !10
  %105 = getelementptr inbounds i8, ptr %0, i64 193
  store i8 %101, ptr %105, align 1, !tbaa !10
  %106 = shl nuw nsw i32 %20, 1
  %107 = add nuw nsw i32 %17, 2
  %108 = add nuw nsw i32 %107, %106
  %109 = add nuw nsw i32 %108, %23
  %110 = lshr i32 %109, 2
  %111 = trunc i32 %110 to i8
  %112 = getelementptr inbounds i8, ptr %0, i64 36
  store i8 %111, ptr %112, align 1, !tbaa !10
  %113 = getelementptr inbounds i8, ptr %0, i64 99
  store i8 %111, ptr %113, align 1, !tbaa !10
  %114 = getelementptr inbounds i8, ptr %0, i64 162
  store i8 %111, ptr %114, align 1, !tbaa !10
  %115 = getelementptr inbounds i8, ptr %0, i64 225
  store i8 %111, ptr %115, align 1, !tbaa !10
  %116 = add nuw nsw i32 %20, 1
  %117 = add nuw nsw i32 %116, %23
  %118 = lshr i32 %117, 1
  %119 = trunc i32 %118 to i8
  %120 = getelementptr inbounds i8, ptr %0, i64 5
  store i8 %119, ptr %120, align 1, !tbaa !10
  %121 = getelementptr inbounds i8, ptr %0, i64 68
  store i8 %119, ptr %121, align 1, !tbaa !10
  %122 = getelementptr inbounds i8, ptr %0, i64 131
  store i8 %119, ptr %122, align 1, !tbaa !10
  %123 = getelementptr inbounds i8, ptr %0, i64 194
  store i8 %119, ptr %123, align 1, !tbaa !10
  %124 = shl nuw nsw i32 %23, 1
  %125 = add nuw nsw i32 %20, 2
  %126 = add nuw nsw i32 %125, %124
  %127 = add nuw nsw i32 %126, %26
  %128 = lshr i32 %127, 2
  %129 = trunc i32 %128 to i8
  %130 = getelementptr inbounds i8, ptr %0, i64 37
  store i8 %129, ptr %130, align 1, !tbaa !10
  %131 = getelementptr inbounds i8, ptr %0, i64 100
  store i8 %129, ptr %131, align 1, !tbaa !10
  %132 = getelementptr inbounds i8, ptr %0, i64 163
  store i8 %129, ptr %132, align 1, !tbaa !10
  %133 = getelementptr inbounds i8, ptr %0, i64 226
  store i8 %129, ptr %133, align 1, !tbaa !10
  %134 = add nuw nsw i32 %23, 1
  %135 = add nuw nsw i32 %134, %26
  %136 = lshr i32 %135, 1
  %137 = trunc i32 %136 to i8
  %138 = getelementptr inbounds i8, ptr %0, i64 6
  store i8 %137, ptr %138, align 1, !tbaa !10
  %139 = getelementptr inbounds i8, ptr %0, i64 69
  store i8 %137, ptr %139, align 1, !tbaa !10
  %140 = getelementptr inbounds i8, ptr %0, i64 132
  store i8 %137, ptr %140, align 1, !tbaa !10
  %141 = getelementptr inbounds i8, ptr %0, i64 195
  store i8 %137, ptr %141, align 1, !tbaa !10
  %142 = shl nuw nsw i32 %26, 1
  %143 = add nuw nsw i32 %23, 2
  %144 = add nuw nsw i32 %143, %142
  %145 = add nuw nsw i32 %144, %29
  %146 = lshr i32 %145, 2
  %147 = trunc i32 %146 to i8
  %148 = getelementptr inbounds i8, ptr %0, i64 38
  store i8 %147, ptr %148, align 1, !tbaa !10
  %149 = getelementptr inbounds i8, ptr %0, i64 101
  store i8 %147, ptr %149, align 1, !tbaa !10
  %150 = getelementptr inbounds i8, ptr %0, i64 164
  store i8 %147, ptr %150, align 1, !tbaa !10
  %151 = getelementptr inbounds i8, ptr %0, i64 227
  store i8 %147, ptr %151, align 1, !tbaa !10
  %152 = add nuw nsw i32 %26, 1
  %153 = add nuw nsw i32 %152, %29
  %154 = lshr i32 %153, 1
  %155 = trunc i32 %154 to i8
  %156 = getelementptr inbounds i8, ptr %0, i64 7
  store i8 %155, ptr %156, align 1, !tbaa !10
  %157 = getelementptr inbounds i8, ptr %0, i64 70
  store i8 %155, ptr %157, align 1, !tbaa !10
  %158 = getelementptr inbounds i8, ptr %0, i64 133
  store i8 %155, ptr %158, align 1, !tbaa !10
  %159 = getelementptr inbounds i8, ptr %0, i64 196
  store i8 %155, ptr %159, align 1, !tbaa !10
  %160 = shl nuw nsw i32 %29, 1
  %161 = add nuw nsw i32 %26, 2
  %162 = add nuw nsw i32 %161, %160
  %163 = add nuw nsw i32 %162, %32
  %164 = lshr i32 %163, 2
  %165 = trunc i32 %164 to i8
  %166 = getelementptr inbounds i8, ptr %0, i64 39
  store i8 %165, ptr %166, align 1, !tbaa !10
  %167 = getelementptr inbounds i8, ptr %0, i64 102
  store i8 %165, ptr %167, align 1, !tbaa !10
  %168 = getelementptr inbounds i8, ptr %0, i64 165
  store i8 %165, ptr %168, align 1, !tbaa !10
  %169 = getelementptr inbounds i8, ptr %0, i64 228
  store i8 %165, ptr %169, align 1, !tbaa !10
  %170 = add nuw nsw i32 %29, 1
  %171 = add nuw nsw i32 %170, %32
  %172 = lshr i32 %171, 1
  %173 = trunc i32 %172 to i8
  %174 = getelementptr inbounds i8, ptr %0, i64 71
  store i8 %173, ptr %174, align 1, !tbaa !10
  %175 = getelementptr inbounds i8, ptr %0, i64 134
  store i8 %173, ptr %175, align 1, !tbaa !10
  %176 = getelementptr inbounds i8, ptr %0, i64 197
  store i8 %173, ptr %176, align 1, !tbaa !10
  %177 = shl nuw nsw i32 %32, 1
  %178 = add nuw nsw i32 %29, 2
  %179 = add nuw nsw i32 %178, %177
  %180 = add nuw nsw i32 %179, %35
  %181 = lshr i32 %180, 2
  %182 = trunc i32 %181 to i8
  %183 = getelementptr inbounds i8, ptr %0, i64 103
  store i8 %182, ptr %183, align 1, !tbaa !10
  %184 = getelementptr inbounds i8, ptr %0, i64 166
  store i8 %182, ptr %184, align 1, !tbaa !10
  %185 = getelementptr inbounds i8, ptr %0, i64 229
  store i8 %182, ptr %185, align 1, !tbaa !10
  %186 = add nuw nsw i32 %32, 1
  %187 = add nuw nsw i32 %186, %35
  %188 = lshr i32 %187, 1
  %189 = trunc i32 %188 to i8
  %190 = getelementptr inbounds i8, ptr %0, i64 135
  store i8 %189, ptr %190, align 1, !tbaa !10
  %191 = getelementptr inbounds i8, ptr %0, i64 198
  store i8 %189, ptr %191, align 1, !tbaa !10
  %192 = shl nuw nsw i32 %35, 1
  %193 = add nuw nsw i32 %32, 2
  %194 = add nuw nsw i32 %193, %192
  %195 = add nuw nsw i32 %194, %38
  %196 = lshr i32 %195, 2
  %197 = trunc i32 %196 to i8
  %198 = getelementptr inbounds i8, ptr %0, i64 167
  store i8 %197, ptr %198, align 1, !tbaa !10
  %199 = getelementptr inbounds i8, ptr %0, i64 230
  store i8 %197, ptr %199, align 1, !tbaa !10
  %200 = add nuw nsw i32 %35, 1
  %201 = add nuw nsw i32 %200, %38
  %202 = lshr i32 %201, 1
  %203 = trunc i32 %202 to i8
  %204 = getelementptr inbounds i8, ptr %0, i64 199
  store i8 %203, ptr %204, align 1, !tbaa !10
  %205 = shl nuw nsw i32 %38, 1
  %206 = add nuw nsw i32 %35, 2
  %207 = add nuw nsw i32 %206, %205
  %208 = add nuw nsw i32 %207, %41
  %209 = lshr i32 %208, 2
  %210 = trunc i32 %209 to i8
  %211 = getelementptr inbounds i8, ptr %0, i64 231
  store i8 %210, ptr %211, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @predict_8x8_hu(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds i8, ptr %1, i64 14
  %4 = load i8, ptr %3, align 1, !tbaa !10
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds i8, ptr %1, i64 13
  %7 = load i8, ptr %6, align 1, !tbaa !10
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds i8, ptr %1, i64 12
  %10 = load i8, ptr %9, align 1, !tbaa !10
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds i8, ptr %1, i64 11
  %13 = load i8, ptr %12, align 1, !tbaa !10
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds i8, ptr %1, i64 10
  %16 = load i8, ptr %15, align 1, !tbaa !10
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds i8, ptr %1, i64 9
  %19 = load i8, ptr %18, align 1, !tbaa !10
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds i8, ptr %1, i64 8
  %22 = load i8, ptr %21, align 1, !tbaa !10
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %1, i64 7
  %25 = load i8, ptr %24, align 1, !tbaa !10
  %26 = zext i8 %25 to i32
  %27 = add nuw nsw i32 %8, 1
  %28 = add nuw nsw i32 %27, %5
  %29 = lshr i32 %28, 1
  %30 = shl nuw nsw i32 %8, 1
  %31 = add nuw nsw i32 %11, 2
  %32 = add nuw nsw i32 %31, %5
  %33 = add nuw nsw i32 %32, %30
  %34 = lshr i32 %33, 2
  %35 = tail call fastcc i32 @pack8to16(i32 noundef %29, i32 noundef %34) #10, !range !40
  %36 = add nuw nsw i32 %27, %11
  %37 = lshr i32 %36, 1
  %38 = shl nuw nsw i32 %11, 1
  %39 = add nuw nsw i32 %14, 2
  %40 = add nuw nsw i32 %39, %8
  %41 = add nuw nsw i32 %40, %38
  %42 = lshr i32 %41, 2
  %43 = tail call fastcc i32 @pack8to16(i32 noundef %37, i32 noundef %42) #10, !range !40
  %44 = add nuw nsw i32 %11, 1
  %45 = add nuw nsw i32 %44, %14
  %46 = lshr i32 %45, 1
  %47 = shl nuw nsw i32 %14, 1
  %48 = add nuw nsw i32 %31, %47
  %49 = add nuw nsw i32 %48, %17
  %50 = lshr i32 %49, 2
  %51 = tail call fastcc i32 @pack8to16(i32 noundef %46, i32 noundef %50) #10, !range !40
  %52 = add nuw nsw i32 %14, 1
  %53 = add nuw nsw i32 %52, %17
  %54 = lshr i32 %53, 1
  %55 = shl nuw nsw i32 %17, 1
  %56 = add nuw nsw i32 %39, %55
  %57 = add nuw nsw i32 %56, %20
  %58 = lshr i32 %57, 2
  %59 = tail call fastcc i32 @pack8to16(i32 noundef %54, i32 noundef %58) #10, !range !40
  %60 = add nuw nsw i32 %17, 1
  %61 = add nuw nsw i32 %60, %20
  %62 = lshr i32 %61, 1
  %63 = shl nuw nsw i32 %20, 1
  %64 = add nuw nsw i32 %17, 2
  %65 = add nuw nsw i32 %64, %63
  %66 = add nuw nsw i32 %65, %23
  %67 = lshr i32 %66, 2
  %68 = tail call fastcc i32 @pack8to16(i32 noundef %62, i32 noundef %67) #10, !range !40
  %69 = add nuw nsw i32 %20, 1
  %70 = add nuw nsw i32 %69, %23
  %71 = lshr i32 %70, 1
  %72 = shl nuw nsw i32 %23, 1
  %73 = add nuw nsw i32 %20, 2
  %74 = add nuw nsw i32 %73, %72
  %75 = add nuw nsw i32 %74, %26
  %76 = lshr i32 %75, 2
  %77 = tail call fastcc i32 @pack8to16(i32 noundef %71, i32 noundef %76) #10, !range !40
  %78 = add nuw nsw i32 %23, 1
  %79 = add nuw nsw i32 %78, %26
  %80 = lshr i32 %79, 1
  %81 = shl nuw nsw i32 %26, 1
  %82 = add nuw nsw i32 %23, 2
  %83 = add nuw nsw i32 %82, %26
  %84 = add nuw nsw i32 %83, %81
  %85 = lshr i32 %84, 2
  %86 = tail call fastcc i32 @pack8to16(i32 noundef %80, i32 noundef %85) #10, !range !40
  %87 = tail call fastcc i32 @pack8to16(i32 noundef %26, i32 noundef %26) #10, !range !40
  %88 = tail call fastcc i32 @pack16to32(i32 noundef %35, i32 noundef %43) #10
  store i32 %88, ptr %0, align 4, !tbaa !10
  %89 = tail call fastcc i32 @pack16to32(i32 noundef %43, i32 noundef %51) #10
  %90 = getelementptr inbounds i8, ptr %0, i64 32
  store i32 %89, ptr %90, align 4, !tbaa !10
  %91 = tail call fastcc i32 @pack16to32(i32 noundef %51, i32 noundef %59) #10
  %92 = getelementptr inbounds i8, ptr %0, i64 64
  store i32 %91, ptr %92, align 4, !tbaa !10
  %93 = getelementptr inbounds i8, ptr %0, i64 4
  store i32 %91, ptr %93, align 4, !tbaa !10
  %94 = tail call fastcc i32 @pack16to32(i32 noundef %59, i32 noundef %68) #10
  %95 = getelementptr inbounds i8, ptr %0, i64 96
  store i32 %94, ptr %95, align 4, !tbaa !10
  %96 = getelementptr inbounds i8, ptr %0, i64 36
  store i32 %94, ptr %96, align 4, !tbaa !10
  %97 = tail call fastcc i32 @pack16to32(i32 noundef %68, i32 noundef %77) #10
  %98 = getelementptr inbounds i8, ptr %0, i64 128
  store i32 %97, ptr %98, align 4, !tbaa !10
  %99 = getelementptr inbounds i8, ptr %0, i64 68
  store i32 %97, ptr %99, align 4, !tbaa !10
  %100 = tail call fastcc i32 @pack16to32(i32 noundef %77, i32 noundef %86) #10
  %101 = getelementptr inbounds i8, ptr %0, i64 160
  store i32 %100, ptr %101, align 4, !tbaa !10
  %102 = getelementptr inbounds i8, ptr %0, i64 100
  store i32 %100, ptr %102, align 4, !tbaa !10
  %103 = tail call fastcc i32 @pack16to32(i32 noundef %86, i32 noundef %87) #10
  %104 = getelementptr inbounds i8, ptr %0, i64 192
  store i32 %103, ptr %104, align 4, !tbaa !10
  %105 = getelementptr inbounds i8, ptr %0, i64 132
  store i32 %103, ptr %105, align 4, !tbaa !10
  %106 = tail call fastcc i32 @pack16to32(i32 noundef %87, i32 noundef %87) #10
  %107 = getelementptr inbounds i8, ptr %0, i64 228
  store i32 %106, ptr %107, align 4, !tbaa !10
  %108 = getelementptr inbounds i8, ptr %0, i64 224
  store i32 %106, ptr %108, align 4, !tbaa !10
  %109 = getelementptr inbounds i8, ptr %0, i64 196
  store i32 %106, ptr %109, align 4, !tbaa !10
  %110 = getelementptr inbounds i8, ptr %0, i64 164
  store i32 %106, ptr %110, align 4, !tbaa !10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8_dc_left(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds i8, ptr %1, i64 14
  %4 = load i8, ptr %3, align 1, !tbaa !10
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds i8, ptr %1, i64 13
  %7 = load i8, ptr %6, align 1, !tbaa !10
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds i8, ptr %1, i64 12
  %10 = load i8, ptr %9, align 1, !tbaa !10
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds i8, ptr %1, i64 11
  %13 = load i8, ptr %12, align 1, !tbaa !10
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds i8, ptr %1, i64 10
  %16 = load i8, ptr %15, align 1, !tbaa !10
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds i8, ptr %1, i64 9
  %19 = load i8, ptr %18, align 1, !tbaa !10
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds i8, ptr %1, i64 8
  %22 = load i8, ptr %21, align 1, !tbaa !10
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %1, i64 7
  %25 = load i8, ptr %24, align 1, !tbaa !10
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
  store i32 %36, ptr %40, align 4, !tbaa !10
  %41 = getelementptr inbounds i8, ptr %40, i64 4
  store i32 %36, ptr %41, align 4, !tbaa !10
  %42 = getelementptr inbounds i8, ptr %40, i64 32
  %43 = add nuw nsw i32 %39, 1
  %44 = icmp eq i32 %43, 8
  br i1 %44, label %37, label %38, !llvm.loop !41
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8_dc_top(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds i8, ptr %1, i64 16
  %4 = load i8, ptr %3, align 1, !tbaa !10
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds i8, ptr %1, i64 17
  %7 = load i8, ptr %6, align 1, !tbaa !10
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds i8, ptr %1, i64 18
  %10 = load i8, ptr %9, align 1, !tbaa !10
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds i8, ptr %1, i64 19
  %13 = load i8, ptr %12, align 1, !tbaa !10
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds i8, ptr %1, i64 20
  %16 = load i8, ptr %15, align 1, !tbaa !10
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds i8, ptr %1, i64 21
  %19 = load i8, ptr %18, align 1, !tbaa !10
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds i8, ptr %1, i64 22
  %22 = load i8, ptr %21, align 1, !tbaa !10
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %1, i64 23
  %25 = load i8, ptr %24, align 1, !tbaa !10
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
  store i32 %36, ptr %40, align 4, !tbaa !10
  %41 = getelementptr inbounds i8, ptr %40, i64 4
  store i32 %36, ptr %41, align 4, !tbaa !10
  %42 = getelementptr inbounds i8, ptr %40, i64 32
  %43 = add nuw nsw i32 %39, 1
  %44 = icmp eq i32 %43, 8
  br i1 %44, label %37, label %38, !llvm.loop !42
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define internal void @predict_8x8_dc_128(ptr nocapture noundef writeonly %0, ptr nocapture readnone %1) #3 {
  br label %4

3:                                                ; preds = %4
  ret void

4:                                                ; preds = %2, %4
  %5 = phi i32 [ 0, %2 ], [ %9, %4 ]
  %6 = phi ptr [ %0, %2 ], [ %8, %4 ]
  store i32 -2139062144, ptr %6, align 4, !tbaa !10
  %7 = getelementptr inbounds i8, ptr %6, i64 4
  store i32 -2139062144, ptr %7, align 4, !tbaa !10
  %8 = getelementptr inbounds i8, ptr %6, i64 32
  %9 = add nuw nsw i32 %5, 1
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %3, label %4, !llvm.loop !43
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @predict_8x8_filter(ptr noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #7 {
  %5 = and i32 %2, 8
  %6 = and i32 %3, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %135, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, ptr %0, i64 -32
  %10 = load i8, ptr %9, align 1, !tbaa !10
  %11 = zext i8 %10 to i16
  %12 = getelementptr inbounds i8, ptr %0, i64 -33
  %13 = load i8, ptr %12, align 1, !tbaa !10
  %14 = zext i8 %13 to i16
  %15 = shl nuw nsw i16 %14, 1
  %16 = getelementptr inbounds i8, ptr %0, i64 -1
  %17 = load i8, ptr %16, align 1, !tbaa !10
  %18 = zext i8 %17 to i16
  %19 = add nuw nsw i16 %11, 2
  %20 = add nuw nsw i16 %19, %15
  %21 = add nuw nsw i16 %20, %18
  %22 = lshr i16 %21, 2
  %23 = trunc i16 %22 to i8
  %24 = getelementptr inbounds i8, ptr %1, i64 15
  store i8 %23, ptr %24, align 1, !tbaa !10
  %25 = icmp eq i32 %5, 0
  %26 = load i8, ptr %16, align 1
  %27 = load i8, ptr %12, align 1
  %28 = select i1 %25, i8 %26, i8 %27
  %29 = zext i8 %28 to i16
  %30 = zext i8 %26 to i16
  %31 = shl nuw nsw i16 %30, 1
  %32 = getelementptr inbounds i8, ptr %0, i64 31
  %33 = load i8, ptr %32, align 1, !tbaa !10
  %34 = zext i8 %33 to i16
  %35 = add nuw nsw i16 %31, 2
  %36 = add nuw nsw i16 %35, %29
  %37 = add nuw nsw i16 %36, %34
  %38 = lshr i16 %37, 2
  %39 = trunc i16 %38 to i8
  %40 = getelementptr inbounds i8, ptr %1, i64 14
  store i8 %39, ptr %40, align 1, !tbaa !10
  %41 = load i8, ptr %16, align 1, !tbaa !10
  %42 = zext i8 %41 to i16
  %43 = load i8, ptr %32, align 1, !tbaa !10
  %44 = zext i8 %43 to i16
  %45 = shl nuw nsw i16 %44, 1
  %46 = getelementptr inbounds i8, ptr %0, i64 63
  %47 = load i8, ptr %46, align 1, !tbaa !10
  %48 = zext i8 %47 to i16
  %49 = add nuw nsw i16 %42, 2
  %50 = add nuw nsw i16 %49, %45
  %51 = add nuw nsw i16 %50, %48
  %52 = lshr i16 %51, 2
  %53 = trunc i16 %52 to i8
  %54 = getelementptr inbounds i8, ptr %1, i64 13
  store i8 %53, ptr %54, align 1, !tbaa !10
  %55 = load i8, ptr %32, align 1, !tbaa !10
  %56 = zext i8 %55 to i16
  %57 = load i8, ptr %46, align 1, !tbaa !10
  %58 = zext i8 %57 to i16
  %59 = shl nuw nsw i16 %58, 1
  %60 = getelementptr inbounds i8, ptr %0, i64 95
  %61 = load i8, ptr %60, align 1, !tbaa !10
  %62 = zext i8 %61 to i16
  %63 = add nuw nsw i16 %56, 2
  %64 = add nuw nsw i16 %63, %59
  %65 = add nuw nsw i16 %64, %62
  %66 = lshr i16 %65, 2
  %67 = trunc i16 %66 to i8
  %68 = getelementptr inbounds i8, ptr %1, i64 12
  store i8 %67, ptr %68, align 1, !tbaa !10
  %69 = load i8, ptr %46, align 1, !tbaa !10
  %70 = zext i8 %69 to i16
  %71 = load i8, ptr %60, align 1, !tbaa !10
  %72 = zext i8 %71 to i16
  %73 = shl nuw nsw i16 %72, 1
  %74 = getelementptr inbounds i8, ptr %0, i64 127
  %75 = load i8, ptr %74, align 1, !tbaa !10
  %76 = zext i8 %75 to i16
  %77 = add nuw nsw i16 %70, 2
  %78 = add nuw nsw i16 %77, %73
  %79 = add nuw nsw i16 %78, %76
  %80 = lshr i16 %79, 2
  %81 = trunc i16 %80 to i8
  %82 = getelementptr inbounds i8, ptr %1, i64 11
  store i8 %81, ptr %82, align 1, !tbaa !10
  %83 = load i8, ptr %60, align 1, !tbaa !10
  %84 = zext i8 %83 to i16
  %85 = load i8, ptr %74, align 1, !tbaa !10
  %86 = zext i8 %85 to i16
  %87 = shl nuw nsw i16 %86, 1
  %88 = getelementptr inbounds i8, ptr %0, i64 159
  %89 = load i8, ptr %88, align 1, !tbaa !10
  %90 = zext i8 %89 to i16
  %91 = add nuw nsw i16 %84, 2
  %92 = add nuw nsw i16 %91, %87
  %93 = add nuw nsw i16 %92, %90
  %94 = lshr i16 %93, 2
  %95 = trunc i16 %94 to i8
  %96 = getelementptr inbounds i8, ptr %1, i64 10
  store i8 %95, ptr %96, align 1, !tbaa !10
  %97 = load i8, ptr %74, align 1, !tbaa !10
  %98 = zext i8 %97 to i16
  %99 = load i8, ptr %88, align 1, !tbaa !10
  %100 = zext i8 %99 to i16
  %101 = shl nuw nsw i16 %100, 1
  %102 = getelementptr inbounds i8, ptr %0, i64 191
  %103 = load i8, ptr %102, align 1, !tbaa !10
  %104 = zext i8 %103 to i16
  %105 = add nuw nsw i16 %98, 2
  %106 = add nuw nsw i16 %105, %101
  %107 = add nuw nsw i16 %106, %104
  %108 = lshr i16 %107, 2
  %109 = trunc i16 %108 to i8
  %110 = getelementptr inbounds i8, ptr %1, i64 9
  store i8 %109, ptr %110, align 1, !tbaa !10
  %111 = load i8, ptr %88, align 1, !tbaa !10
  %112 = zext i8 %111 to i16
  %113 = load i8, ptr %102, align 1, !tbaa !10
  %114 = zext i8 %113 to i16
  %115 = shl nuw nsw i16 %114, 1
  %116 = getelementptr inbounds i8, ptr %0, i64 223
  %117 = load i8, ptr %116, align 1, !tbaa !10
  %118 = zext i8 %117 to i16
  %119 = add nuw nsw i16 %112, 2
  %120 = add nuw nsw i16 %119, %115
  %121 = add nuw nsw i16 %120, %118
  %122 = lshr i16 %121, 2
  %123 = trunc i16 %122 to i8
  %124 = getelementptr inbounds i8, ptr %1, i64 8
  store i8 %123, ptr %124, align 1, !tbaa !10
  %125 = load i8, ptr %102, align 1, !tbaa !10
  %126 = zext i8 %125 to i16
  %127 = load i8, ptr %116, align 1, !tbaa !10
  %128 = zext i8 %127 to i16
  %129 = mul nuw nsw i16 %128, 3
  %130 = add nuw nsw i16 %126, 2
  %131 = add nuw nsw i16 %130, %129
  %132 = lshr i16 %131, 2
  %133 = trunc i16 %132 to i8
  %134 = getelementptr inbounds i8, ptr %1, i64 7
  store i8 %133, ptr %134, align 1, !tbaa !10
  br label %135

135:                                              ; preds = %8, %4
  %136 = and i32 %3, 2
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %387, label %138

138:                                              ; preds = %135
  %139 = and i32 %2, 4
  %140 = icmp eq i32 %5, 0
  %141 = getelementptr inbounds i8, ptr %0, i64 -33
  %142 = getelementptr inbounds i8, ptr %0, i64 -32
  %143 = select i1 %140, ptr %142, ptr %141
  %144 = load i8, ptr %143, align 1, !tbaa !10
  %145 = zext i8 %144 to i16
  %146 = load i8, ptr %142, align 1, !tbaa !10
  %147 = zext i8 %146 to i16
  %148 = shl nuw nsw i16 %147, 1
  %149 = getelementptr inbounds i8, ptr %0, i64 -31
  %150 = load i8, ptr %149, align 1, !tbaa !10
  %151 = zext i8 %150 to i16
  %152 = add nuw nsw i16 %145, 2
  %153 = add nuw nsw i16 %152, %148
  %154 = add nuw nsw i16 %153, %151
  %155 = lshr i16 %154, 2
  %156 = trunc i16 %155 to i8
  %157 = getelementptr inbounds i8, ptr %1, i64 16
  store i8 %156, ptr %157, align 1, !tbaa !10
  %158 = load i8, ptr %142, align 1, !tbaa !10
  %159 = zext i8 %158 to i16
  %160 = load i8, ptr %149, align 1, !tbaa !10
  %161 = zext i8 %160 to i16
  %162 = shl nuw nsw i16 %161, 1
  %163 = getelementptr inbounds i8, ptr %0, i64 -30
  %164 = load i8, ptr %163, align 1, !tbaa !10
  %165 = zext i8 %164 to i16
  %166 = add nuw nsw i16 %159, 2
  %167 = add nuw nsw i16 %166, %162
  %168 = add nuw nsw i16 %167, %165
  %169 = lshr i16 %168, 2
  %170 = trunc i16 %169 to i8
  %171 = getelementptr inbounds i8, ptr %1, i64 17
  store i8 %170, ptr %171, align 1, !tbaa !10
  %172 = load i8, ptr %149, align 1, !tbaa !10
  %173 = zext i8 %172 to i16
  %174 = load i8, ptr %163, align 1, !tbaa !10
  %175 = zext i8 %174 to i16
  %176 = shl nuw nsw i16 %175, 1
  %177 = getelementptr inbounds i8, ptr %0, i64 -29
  %178 = load i8, ptr %177, align 1, !tbaa !10
  %179 = zext i8 %178 to i16
  %180 = add nuw nsw i16 %173, 2
  %181 = add nuw nsw i16 %180, %176
  %182 = add nuw nsw i16 %181, %179
  %183 = lshr i16 %182, 2
  %184 = trunc i16 %183 to i8
  %185 = getelementptr inbounds i8, ptr %1, i64 18
  store i8 %184, ptr %185, align 1, !tbaa !10
  %186 = load i8, ptr %163, align 1, !tbaa !10
  %187 = zext i8 %186 to i16
  %188 = load i8, ptr %177, align 1, !tbaa !10
  %189 = zext i8 %188 to i16
  %190 = shl nuw nsw i16 %189, 1
  %191 = getelementptr inbounds i8, ptr %0, i64 -28
  %192 = load i8, ptr %191, align 1, !tbaa !10
  %193 = zext i8 %192 to i16
  %194 = add nuw nsw i16 %187, 2
  %195 = add nuw nsw i16 %194, %190
  %196 = add nuw nsw i16 %195, %193
  %197 = lshr i16 %196, 2
  %198 = trunc i16 %197 to i8
  %199 = getelementptr inbounds i8, ptr %1, i64 19
  store i8 %198, ptr %199, align 1, !tbaa !10
  %200 = load i8, ptr %177, align 1, !tbaa !10
  %201 = zext i8 %200 to i16
  %202 = load i8, ptr %191, align 1, !tbaa !10
  %203 = zext i8 %202 to i16
  %204 = shl nuw nsw i16 %203, 1
  %205 = getelementptr inbounds i8, ptr %0, i64 -27
  %206 = load i8, ptr %205, align 1, !tbaa !10
  %207 = zext i8 %206 to i16
  %208 = add nuw nsw i16 %201, 2
  %209 = add nuw nsw i16 %208, %204
  %210 = add nuw nsw i16 %209, %207
  %211 = lshr i16 %210, 2
  %212 = trunc i16 %211 to i8
  %213 = getelementptr inbounds i8, ptr %1, i64 20
  store i8 %212, ptr %213, align 1, !tbaa !10
  %214 = load i8, ptr %191, align 1, !tbaa !10
  %215 = zext i8 %214 to i16
  %216 = load i8, ptr %205, align 1, !tbaa !10
  %217 = zext i8 %216 to i16
  %218 = shl nuw nsw i16 %217, 1
  %219 = getelementptr inbounds i8, ptr %0, i64 -26
  %220 = load i8, ptr %219, align 1, !tbaa !10
  %221 = zext i8 %220 to i16
  %222 = add nuw nsw i16 %215, 2
  %223 = add nuw nsw i16 %222, %218
  %224 = add nuw nsw i16 %223, %221
  %225 = lshr i16 %224, 2
  %226 = trunc i16 %225 to i8
  %227 = getelementptr inbounds i8, ptr %1, i64 21
  store i8 %226, ptr %227, align 1, !tbaa !10
  %228 = load i8, ptr %205, align 1, !tbaa !10
  %229 = zext i8 %228 to i16
  %230 = load i8, ptr %219, align 1, !tbaa !10
  %231 = zext i8 %230 to i16
  %232 = shl nuw nsw i16 %231, 1
  %233 = getelementptr inbounds i8, ptr %0, i64 -25
  %234 = load i8, ptr %233, align 1, !tbaa !10
  %235 = zext i8 %234 to i16
  %236 = add nuw nsw i16 %229, 2
  %237 = add nuw nsw i16 %236, %232
  %238 = add nuw nsw i16 %237, %235
  %239 = lshr i16 %238, 2
  %240 = trunc i16 %239 to i8
  %241 = getelementptr inbounds i8, ptr %1, i64 22
  store i8 %240, ptr %241, align 1, !tbaa !10
  %242 = load i8, ptr %219, align 1, !tbaa !10
  %243 = zext i8 %242 to i32
  %244 = load i8, ptr %233, align 1, !tbaa !10
  %245 = zext i8 %244 to i32
  %246 = shl nuw nsw i32 %245, 1
  %247 = add nuw nsw i32 %246, %243
  %248 = icmp eq i32 %139, 0
  br i1 %248, label %249, label %257

249:                                              ; preds = %138
  %250 = add nuw nsw i32 %247, 2
  %251 = add nuw nsw i32 %250, %245
  %252 = lshr i32 %251, 2
  %253 = trunc i32 %252 to i8
  %254 = getelementptr inbounds i8, ptr %1, i64 23
  store i8 %253, ptr %254, align 1, !tbaa !10
  %255 = and i32 %3, 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %387, label %377

257:                                              ; preds = %138
  %258 = getelementptr inbounds i8, ptr %0, i64 -24
  %259 = load i8, ptr %258, align 1, !tbaa !10
  %260 = zext i8 %259 to i32
  %261 = add nuw nsw i32 %247, 2
  %262 = add nuw nsw i32 %261, %260
  %263 = lshr i32 %262, 2
  %264 = trunc i32 %263 to i8
  %265 = getelementptr inbounds i8, ptr %1, i64 23
  store i8 %264, ptr %265, align 1, !tbaa !10
  %266 = and i32 %3, 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %387, label %268

268:                                              ; preds = %257
  %269 = load i8, ptr %233, align 1, !tbaa !10
  %270 = zext i8 %269 to i16
  %271 = load i8, ptr %258, align 1, !tbaa !10
  %272 = zext i8 %271 to i16
  %273 = shl nuw nsw i16 %272, 1
  %274 = getelementptr inbounds i8, ptr %0, i64 -23
  %275 = load i8, ptr %274, align 1, !tbaa !10
  %276 = zext i8 %275 to i16
  %277 = add nuw nsw i16 %270, 2
  %278 = add nuw nsw i16 %277, %273
  %279 = add nuw nsw i16 %278, %276
  %280 = lshr i16 %279, 2
  %281 = trunc i16 %280 to i8
  %282 = getelementptr inbounds i8, ptr %1, i64 24
  store i8 %281, ptr %282, align 1, !tbaa !10
  %283 = load i8, ptr %258, align 1, !tbaa !10
  %284 = zext i8 %283 to i16
  %285 = load i8, ptr %274, align 1, !tbaa !10
  %286 = zext i8 %285 to i16
  %287 = shl nuw nsw i16 %286, 1
  %288 = getelementptr inbounds i8, ptr %0, i64 -22
  %289 = load i8, ptr %288, align 1, !tbaa !10
  %290 = zext i8 %289 to i16
  %291 = add nuw nsw i16 %284, 2
  %292 = add nuw nsw i16 %291, %287
  %293 = add nuw nsw i16 %292, %290
  %294 = lshr i16 %293, 2
  %295 = trunc i16 %294 to i8
  %296 = getelementptr inbounds i8, ptr %1, i64 25
  store i8 %295, ptr %296, align 1, !tbaa !10
  %297 = load i8, ptr %274, align 1, !tbaa !10
  %298 = zext i8 %297 to i16
  %299 = load i8, ptr %288, align 1, !tbaa !10
  %300 = zext i8 %299 to i16
  %301 = shl nuw nsw i16 %300, 1
  %302 = getelementptr inbounds i8, ptr %0, i64 -21
  %303 = load i8, ptr %302, align 1, !tbaa !10
  %304 = zext i8 %303 to i16
  %305 = add nuw nsw i16 %298, 2
  %306 = add nuw nsw i16 %305, %301
  %307 = add nuw nsw i16 %306, %304
  %308 = lshr i16 %307, 2
  %309 = trunc i16 %308 to i8
  %310 = getelementptr inbounds i8, ptr %1, i64 26
  store i8 %309, ptr %310, align 1, !tbaa !10
  %311 = load i8, ptr %288, align 1, !tbaa !10
  %312 = zext i8 %311 to i16
  %313 = load i8, ptr %302, align 1, !tbaa !10
  %314 = zext i8 %313 to i16
  %315 = shl nuw nsw i16 %314, 1
  %316 = getelementptr inbounds i8, ptr %0, i64 -20
  %317 = load i8, ptr %316, align 1, !tbaa !10
  %318 = zext i8 %317 to i16
  %319 = add nuw nsw i16 %312, 2
  %320 = add nuw nsw i16 %319, %315
  %321 = add nuw nsw i16 %320, %318
  %322 = lshr i16 %321, 2
  %323 = trunc i16 %322 to i8
  %324 = getelementptr inbounds i8, ptr %1, i64 27
  store i8 %323, ptr %324, align 1, !tbaa !10
  %325 = load i8, ptr %302, align 1, !tbaa !10
  %326 = zext i8 %325 to i16
  %327 = load i8, ptr %316, align 1, !tbaa !10
  %328 = zext i8 %327 to i16
  %329 = shl nuw nsw i16 %328, 1
  %330 = getelementptr inbounds i8, ptr %0, i64 -19
  %331 = load i8, ptr %330, align 1, !tbaa !10
  %332 = zext i8 %331 to i16
  %333 = add nuw nsw i16 %326, 2
  %334 = add nuw nsw i16 %333, %329
  %335 = add nuw nsw i16 %334, %332
  %336 = lshr i16 %335, 2
  %337 = trunc i16 %336 to i8
  %338 = getelementptr inbounds i8, ptr %1, i64 28
  store i8 %337, ptr %338, align 1, !tbaa !10
  %339 = load i8, ptr %316, align 1, !tbaa !10
  %340 = zext i8 %339 to i16
  %341 = load i8, ptr %330, align 1, !tbaa !10
  %342 = zext i8 %341 to i16
  %343 = shl nuw nsw i16 %342, 1
  %344 = getelementptr inbounds i8, ptr %0, i64 -18
  %345 = load i8, ptr %344, align 1, !tbaa !10
  %346 = zext i8 %345 to i16
  %347 = add nuw nsw i16 %340, 2
  %348 = add nuw nsw i16 %347, %343
  %349 = add nuw nsw i16 %348, %346
  %350 = lshr i16 %349, 2
  %351 = trunc i16 %350 to i8
  %352 = getelementptr inbounds i8, ptr %1, i64 29
  store i8 %351, ptr %352, align 1, !tbaa !10
  %353 = load i8, ptr %330, align 1, !tbaa !10
  %354 = zext i8 %353 to i16
  %355 = load i8, ptr %344, align 1, !tbaa !10
  %356 = zext i8 %355 to i16
  %357 = shl nuw nsw i16 %356, 1
  %358 = getelementptr inbounds i8, ptr %0, i64 -17
  %359 = load i8, ptr %358, align 1, !tbaa !10
  %360 = zext i8 %359 to i16
  %361 = add nuw nsw i16 %354, 2
  %362 = add nuw nsw i16 %361, %357
  %363 = add nuw nsw i16 %362, %360
  %364 = lshr i16 %363, 2
  %365 = trunc i16 %364 to i8
  %366 = getelementptr inbounds i8, ptr %1, i64 30
  store i8 %365, ptr %366, align 1, !tbaa !10
  %367 = load i8, ptr %344, align 1, !tbaa !10
  %368 = zext i8 %367 to i16
  %369 = load i8, ptr %358, align 1, !tbaa !10
  %370 = zext i8 %369 to i16
  %371 = mul nuw nsw i16 %370, 3
  %372 = add nuw nsw i16 %368, 2
  %373 = add nuw nsw i16 %372, %371
  %374 = lshr i16 %373, 2
  %375 = trunc i16 %374 to i8
  %376 = getelementptr inbounds i8, ptr %1, i64 32
  store i8 %375, ptr %376, align 1, !tbaa !10
  br label %383

377:                                              ; preds = %249
  %378 = load i8, ptr %233, align 1, !tbaa !10
  %379 = zext i8 %378 to i64
  %380 = mul nuw i64 %379, 72340172838076673
  %381 = getelementptr inbounds i8, ptr %1, i64 24
  store i64 %380, ptr %381, align 8, !tbaa !10
  %382 = load i8, ptr %233, align 1, !tbaa !10
  br label %383

383:                                              ; preds = %268, %377
  %384 = phi i64 [ 32, %377 ], [ 31, %268 ]
  %385 = phi i8 [ %382, %377 ], [ %375, %268 ]
  %386 = getelementptr inbounds i8, ptr %1, i64 %384
  store i8 %385, ptr %386, align 1, !tbaa !10
  br label %387

387:                                              ; preds = %383, %257, %249, %135
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @pack8to16(i32 noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = shl nuw nsw i32 %1, 8
  %4 = add nuw nsw i32 %3, %0
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @pack16to32(i32 noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = shl nuw i32 %1, 16
  %4 = add nuw nsw i32 %3, %0
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @x264_predict_4x4_init(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  store ptr @predict_4x4_v, ptr %1, align 8, !tbaa !6
  %3 = getelementptr inbounds ptr, ptr %1, i64 1
  store ptr @predict_4x4_h, ptr %3, align 8, !tbaa !6
  %4 = getelementptr inbounds ptr, ptr %1, i64 2
  store ptr @predict_4x4_dc, ptr %4, align 8, !tbaa !6
  %5 = getelementptr inbounds ptr, ptr %1, i64 3
  store ptr @predict_4x4_ddl, ptr %5, align 8, !tbaa !6
  %6 = getelementptr inbounds ptr, ptr %1, i64 4
  store ptr @predict_4x4_ddr, ptr %6, align 8, !tbaa !6
  %7 = getelementptr inbounds ptr, ptr %1, i64 5
  store ptr @predict_4x4_vr, ptr %7, align 8, !tbaa !6
  %8 = getelementptr inbounds ptr, ptr %1, i64 6
  store ptr @predict_4x4_hd, ptr %8, align 8, !tbaa !6
  %9 = getelementptr inbounds ptr, ptr %1, i64 7
  store ptr @predict_4x4_vl, ptr %9, align 8, !tbaa !6
  %10 = getelementptr inbounds ptr, ptr %1, i64 8
  store ptr @predict_4x4_hu, ptr %10, align 8, !tbaa !6
  %11 = getelementptr inbounds ptr, ptr %1, i64 9
  store ptr @predict_4x4_dc_left, ptr %11, align 8, !tbaa !6
  %12 = getelementptr inbounds ptr, ptr %1, i64 10
  store ptr @predict_4x4_dc_top, ptr %12, align 8, !tbaa !6
  %13 = getelementptr inbounds ptr, ptr %1, i64 11
  store ptr @predict_4x4_dc_128, ptr %13, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_v(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  %3 = load i32, ptr %2, align 4, !tbaa !10
  %4 = getelementptr inbounds i8, ptr %0, i64 96
  store i32 %3, ptr %4, align 4, !tbaa !10
  %5 = getelementptr inbounds i8, ptr %0, i64 64
  store i32 %3, ptr %5, align 4, !tbaa !10
  %6 = getelementptr inbounds i8, ptr %0, i64 32
  store i32 %3, ptr %6, align 4, !tbaa !10
  store i32 %3, ptr %0, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_h(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -1
  %3 = load i8, ptr %2, align 1, !tbaa !10
  %4 = zext i8 %3 to i32
  %5 = mul nuw nsw i32 %4, 16843009
  store i32 %5, ptr %0, align 4, !tbaa !10
  %6 = getelementptr inbounds i8, ptr %0, i64 31
  %7 = load i8, ptr %6, align 1, !tbaa !10
  %8 = zext i8 %7 to i32
  %9 = mul nuw nsw i32 %8, 16843009
  %10 = getelementptr inbounds i8, ptr %0, i64 32
  store i32 %9, ptr %10, align 4, !tbaa !10
  %11 = getelementptr inbounds i8, ptr %0, i64 63
  %12 = load i8, ptr %11, align 1, !tbaa !10
  %13 = zext i8 %12 to i32
  %14 = mul nuw nsw i32 %13, 16843009
  %15 = getelementptr inbounds i8, ptr %0, i64 64
  store i32 %14, ptr %15, align 4, !tbaa !10
  %16 = getelementptr inbounds i8, ptr %0, i64 95
  %17 = load i8, ptr %16, align 1, !tbaa !10
  %18 = zext i8 %17 to i32
  %19 = mul nuw nsw i32 %18, 16843009
  %20 = getelementptr inbounds i8, ptr %0, i64 96
  store i32 %19, ptr %20, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_dc(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -1
  %3 = load i8, ptr %2, align 1, !tbaa !10
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds i8, ptr %0, i64 31
  %6 = load i8, ptr %5, align 1, !tbaa !10
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds i8, ptr %0, i64 63
  %9 = load i8, ptr %8, align 1, !tbaa !10
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds i8, ptr %0, i64 95
  %12 = load i8, ptr %11, align 1, !tbaa !10
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds i8, ptr %0, i64 -32
  %15 = load i8, ptr %14, align 1, !tbaa !10
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds i8, ptr %0, i64 -31
  %18 = load i8, ptr %17, align 1, !tbaa !10
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds i8, ptr %0, i64 -30
  %21 = load i8, ptr %20, align 1, !tbaa !10
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds i8, ptr %0, i64 -29
  %24 = load i8, ptr %23, align 1, !tbaa !10
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
  store i32 %35, ptr %36, align 4, !tbaa !10
  %37 = getelementptr inbounds i8, ptr %0, i64 64
  store i32 %35, ptr %37, align 4, !tbaa !10
  %38 = getelementptr inbounds i8, ptr %0, i64 32
  store i32 %35, ptr %38, align 4, !tbaa !10
  store i32 %35, ptr %0, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_ddl(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  %3 = load i8, ptr %2, align 1, !tbaa !10
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds i8, ptr %0, i64 -31
  %6 = load i8, ptr %5, align 1, !tbaa !10
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds i8, ptr %0, i64 -30
  %9 = load i8, ptr %8, align 1, !tbaa !10
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds i8, ptr %0, i64 -29
  %12 = load i8, ptr %11, align 1, !tbaa !10
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds i8, ptr %0, i64 -28
  %15 = load i8, ptr %14, align 1, !tbaa !10
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds i8, ptr %0, i64 -27
  %18 = load i8, ptr %17, align 1, !tbaa !10
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds i8, ptr %0, i64 -26
  %21 = load i8, ptr %20, align 1, !tbaa !10
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds i8, ptr %0, i64 -25
  %24 = load i8, ptr %23, align 1, !tbaa !10
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %7, 1
  %27 = add nuw nsw i32 %10, 2
  %28 = add nuw nsw i32 %27, %4
  %29 = add nuw nsw i32 %28, %26
  %30 = lshr i32 %29, 2
  %31 = trunc i32 %30 to i8
  store i8 %31, ptr %0, align 1, !tbaa !10
  %32 = shl nuw nsw i32 %10, 1
  %33 = add nuw nsw i32 %13, 2
  %34 = add nuw nsw i32 %33, %7
  %35 = add nuw nsw i32 %34, %32
  %36 = lshr i32 %35, 2
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds i8, ptr %0, i64 32
  store i8 %37, ptr %38, align 1, !tbaa !10
  %39 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %37, ptr %39, align 1, !tbaa !10
  %40 = shl nuw nsw i32 %13, 1
  %41 = add nuw nsw i32 %27, %40
  %42 = add nuw nsw i32 %41, %16
  %43 = lshr i32 %42, 2
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds i8, ptr %0, i64 64
  store i8 %44, ptr %45, align 1, !tbaa !10
  %46 = getelementptr inbounds i8, ptr %0, i64 33
  store i8 %44, ptr %46, align 1, !tbaa !10
  %47 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %44, ptr %47, align 1, !tbaa !10
  %48 = shl nuw nsw i32 %16, 1
  %49 = add nuw nsw i32 %33, %48
  %50 = add nuw nsw i32 %49, %19
  %51 = lshr i32 %50, 2
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds i8, ptr %0, i64 96
  store i8 %52, ptr %53, align 1, !tbaa !10
  %54 = getelementptr inbounds i8, ptr %0, i64 65
  store i8 %52, ptr %54, align 1, !tbaa !10
  %55 = getelementptr inbounds i8, ptr %0, i64 34
  store i8 %52, ptr %55, align 1, !tbaa !10
  %56 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %52, ptr %56, align 1, !tbaa !10
  %57 = shl nuw nsw i32 %19, 1
  %58 = add nuw nsw i32 %16, 2
  %59 = add nuw nsw i32 %58, %57
  %60 = add nuw nsw i32 %59, %22
  %61 = lshr i32 %60, 2
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds i8, ptr %0, i64 97
  store i8 %62, ptr %63, align 1, !tbaa !10
  %64 = getelementptr inbounds i8, ptr %0, i64 66
  store i8 %62, ptr %64, align 1, !tbaa !10
  %65 = getelementptr inbounds i8, ptr %0, i64 35
  store i8 %62, ptr %65, align 1, !tbaa !10
  %66 = shl nuw nsw i32 %22, 1
  %67 = add nuw nsw i32 %19, 2
  %68 = add nuw nsw i32 %67, %66
  %69 = add nuw nsw i32 %68, %25
  %70 = lshr i32 %69, 2
  %71 = trunc i32 %70 to i8
  %72 = getelementptr inbounds i8, ptr %0, i64 98
  store i8 %71, ptr %72, align 1, !tbaa !10
  %73 = getelementptr inbounds i8, ptr %0, i64 67
  store i8 %71, ptr %73, align 1, !tbaa !10
  %74 = shl nuw nsw i32 %25, 1
  %75 = add nuw nsw i32 %22, 2
  %76 = add nuw nsw i32 %75, %25
  %77 = add nuw nsw i32 %76, %74
  %78 = lshr i32 %77, 2
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds i8, ptr %0, i64 99
  store i8 %79, ptr %80, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_ddr(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -33
  %3 = load i8, ptr %2, align 1, !tbaa !10
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds i8, ptr %0, i64 -1
  %6 = load i8, ptr %5, align 1, !tbaa !10
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds i8, ptr %0, i64 31
  %9 = load i8, ptr %8, align 1, !tbaa !10
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds i8, ptr %0, i64 63
  %12 = load i8, ptr %11, align 1, !tbaa !10
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds i8, ptr %0, i64 95
  %15 = load i8, ptr %14, align 1, !tbaa !10
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds i8, ptr %0, i64 -32
  %18 = load i8, ptr %17, align 1, !tbaa !10
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds i8, ptr %0, i64 -31
  %21 = load i8, ptr %20, align 1, !tbaa !10
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds i8, ptr %0, i64 -30
  %24 = load i8, ptr %23, align 1, !tbaa !10
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds i8, ptr %0, i64 -29
  %27 = load i8, ptr %26, align 1, !tbaa !10
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %25, 1
  %30 = add nuw nsw i32 %22, 2
  %31 = add nuw nsw i32 %30, %28
  %32 = add nuw nsw i32 %31, %29
  %33 = lshr i32 %32, 2
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %34, ptr %35, align 1, !tbaa !10
  %36 = shl nuw nsw i32 %22, 1
  %37 = add nuw nsw i32 %19, 2
  %38 = add nuw nsw i32 %37, %25
  %39 = add nuw nsw i32 %38, %36
  %40 = lshr i32 %39, 2
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds i8, ptr %0, i64 35
  store i8 %41, ptr %42, align 1, !tbaa !10
  %43 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %41, ptr %43, align 1, !tbaa !10
  %44 = shl nuw nsw i32 %19, 1
  %45 = add nuw nsw i32 %4, 2
  %46 = add nuw nsw i32 %45, %22
  %47 = add nuw nsw i32 %46, %44
  %48 = lshr i32 %47, 2
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds i8, ptr %0, i64 67
  store i8 %49, ptr %50, align 1, !tbaa !10
  %51 = getelementptr inbounds i8, ptr %0, i64 34
  store i8 %49, ptr %51, align 1, !tbaa !10
  %52 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %49, ptr %52, align 1, !tbaa !10
  %53 = shl nuw nsw i32 %4, 1
  %54 = add nuw nsw i32 %7, 2
  %55 = add nuw nsw i32 %54, %53
  %56 = add nuw nsw i32 %55, %19
  %57 = lshr i32 %56, 2
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds i8, ptr %0, i64 99
  store i8 %58, ptr %59, align 1, !tbaa !10
  %60 = getelementptr inbounds i8, ptr %0, i64 66
  store i8 %58, ptr %60, align 1, !tbaa !10
  %61 = getelementptr inbounds i8, ptr %0, i64 33
  store i8 %58, ptr %61, align 1, !tbaa !10
  store i8 %58, ptr %0, align 1, !tbaa !10
  %62 = shl nuw nsw i32 %7, 1
  %63 = add nuw nsw i32 %45, %62
  %64 = add nuw nsw i32 %63, %10
  %65 = lshr i32 %64, 2
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds i8, ptr %0, i64 98
  store i8 %66, ptr %67, align 1, !tbaa !10
  %68 = getelementptr inbounds i8, ptr %0, i64 65
  store i8 %66, ptr %68, align 1, !tbaa !10
  %69 = getelementptr inbounds i8, ptr %0, i64 32
  store i8 %66, ptr %69, align 1, !tbaa !10
  %70 = shl nuw nsw i32 %10, 1
  %71 = add nuw nsw i32 %54, %70
  %72 = add nuw nsw i32 %71, %13
  %73 = lshr i32 %72, 2
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds i8, ptr %0, i64 97
  store i8 %74, ptr %75, align 1, !tbaa !10
  %76 = getelementptr inbounds i8, ptr %0, i64 64
  store i8 %74, ptr %76, align 1, !tbaa !10
  %77 = shl nuw nsw i32 %13, 1
  %78 = add nuw nsw i32 %10, 2
  %79 = add nuw nsw i32 %78, %77
  %80 = add nuw nsw i32 %79, %16
  %81 = lshr i32 %80, 2
  %82 = trunc i32 %81 to i8
  %83 = getelementptr inbounds i8, ptr %0, i64 96
  store i8 %82, ptr %83, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_vr(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -33
  %3 = load i8, ptr %2, align 1, !tbaa !10
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds i8, ptr %0, i64 -1
  %6 = load i8, ptr %5, align 1, !tbaa !10
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds i8, ptr %0, i64 31
  %9 = load i8, ptr %8, align 1, !tbaa !10
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds i8, ptr %0, i64 63
  %12 = load i8, ptr %11, align 1, !tbaa !10
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds i8, ptr %0, i64 -32
  %15 = load i8, ptr %14, align 1, !tbaa !10
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds i8, ptr %0, i64 -31
  %18 = load i8, ptr %17, align 1, !tbaa !10
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds i8, ptr %0, i64 -30
  %21 = load i8, ptr %20, align 1, !tbaa !10
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds i8, ptr %0, i64 -29
  %24 = load i8, ptr %23, align 1, !tbaa !10
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %10, 1
  %27 = add nuw nsw i32 %7, 2
  %28 = add nuw nsw i32 %27, %13
  %29 = add nuw nsw i32 %28, %26
  %30 = lshr i32 %29, 2
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds i8, ptr %0, i64 96
  store i8 %31, ptr %32, align 1, !tbaa !10
  %33 = shl nuw nsw i32 %7, 1
  %34 = add nuw nsw i32 %4, 2
  %35 = add nuw nsw i32 %34, %10
  %36 = add nuw nsw i32 %35, %33
  %37 = lshr i32 %36, 2
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds i8, ptr %0, i64 64
  store i8 %38, ptr %39, align 1, !tbaa !10
  %40 = shl nuw nsw i32 %4, 1
  %41 = add nuw nsw i32 %27, %40
  %42 = add nuw nsw i32 %41, %16
  %43 = lshr i32 %42, 2
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds i8, ptr %0, i64 97
  store i8 %44, ptr %45, align 1, !tbaa !10
  %46 = getelementptr inbounds i8, ptr %0, i64 32
  store i8 %44, ptr %46, align 1, !tbaa !10
  %47 = add nuw nsw i32 %16, 1
  %48 = add nuw nsw i32 %47, %4
  %49 = lshr i32 %48, 1
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds i8, ptr %0, i64 65
  store i8 %50, ptr %51, align 1, !tbaa !10
  store i8 %50, ptr %0, align 1, !tbaa !10
  %52 = shl nuw nsw i32 %16, 1
  %53 = add nuw nsw i32 %34, %52
  %54 = add nuw nsw i32 %53, %19
  %55 = lshr i32 %54, 2
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds i8, ptr %0, i64 98
  store i8 %56, ptr %57, align 1, !tbaa !10
  %58 = getelementptr inbounds i8, ptr %0, i64 33
  store i8 %56, ptr %58, align 1, !tbaa !10
  %59 = add nuw nsw i32 %47, %19
  %60 = lshr i32 %59, 1
  %61 = trunc i32 %60 to i8
  %62 = getelementptr inbounds i8, ptr %0, i64 66
  store i8 %61, ptr %62, align 1, !tbaa !10
  %63 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %61, ptr %63, align 1, !tbaa !10
  %64 = shl nuw nsw i32 %19, 1
  %65 = add nuw nsw i32 %16, 2
  %66 = add nuw nsw i32 %65, %64
  %67 = add nuw nsw i32 %66, %22
  %68 = lshr i32 %67, 2
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds i8, ptr %0, i64 99
  store i8 %69, ptr %70, align 1, !tbaa !10
  %71 = getelementptr inbounds i8, ptr %0, i64 34
  store i8 %69, ptr %71, align 1, !tbaa !10
  %72 = add nuw nsw i32 %19, 1
  %73 = add nuw nsw i32 %72, %22
  %74 = lshr i32 %73, 1
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds i8, ptr %0, i64 67
  store i8 %75, ptr %76, align 1, !tbaa !10
  %77 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %75, ptr %77, align 1, !tbaa !10
  %78 = shl nuw nsw i32 %22, 1
  %79 = add nuw nsw i32 %19, 2
  %80 = add nuw nsw i32 %79, %78
  %81 = add nuw nsw i32 %80, %25
  %82 = lshr i32 %81, 2
  %83 = trunc i32 %82 to i8
  %84 = getelementptr inbounds i8, ptr %0, i64 35
  store i8 %83, ptr %84, align 1, !tbaa !10
  %85 = add nuw nsw i32 %22, 1
  %86 = add nuw nsw i32 %85, %25
  %87 = lshr i32 %86, 1
  %88 = trunc i32 %87 to i8
  %89 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %88, ptr %89, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_hd(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -33
  %3 = load i8, ptr %2, align 1, !tbaa !10
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds i8, ptr %0, i64 -1
  %6 = load i8, ptr %5, align 1, !tbaa !10
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds i8, ptr %0, i64 31
  %9 = load i8, ptr %8, align 1, !tbaa !10
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds i8, ptr %0, i64 63
  %12 = load i8, ptr %11, align 1, !tbaa !10
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds i8, ptr %0, i64 95
  %15 = load i8, ptr %14, align 1, !tbaa !10
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds i8, ptr %0, i64 -32
  %18 = load i8, ptr %17, align 1, !tbaa !10
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds i8, ptr %0, i64 -31
  %21 = load i8, ptr %20, align 1, !tbaa !10
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds i8, ptr %0, i64 -30
  %24 = load i8, ptr %23, align 1, !tbaa !10
  %25 = zext i8 %24 to i32
  %26 = add nuw nsw i32 %13, 1
  %27 = add nuw nsw i32 %26, %16
  %28 = lshr i32 %27, 1
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds i8, ptr %0, i64 96
  store i8 %29, ptr %30, align 1, !tbaa !10
  %31 = shl nuw nsw i32 %13, 1
  %32 = add nuw nsw i32 %10, 2
  %33 = add nuw nsw i32 %32, %31
  %34 = add nuw nsw i32 %33, %16
  %35 = lshr i32 %34, 2
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds i8, ptr %0, i64 97
  store i8 %36, ptr %37, align 1, !tbaa !10
  %38 = add nuw nsw i32 %10, 1
  %39 = add nuw nsw i32 %38, %13
  %40 = lshr i32 %39, 1
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds i8, ptr %0, i64 98
  store i8 %41, ptr %42, align 1, !tbaa !10
  %43 = getelementptr inbounds i8, ptr %0, i64 64
  store i8 %41, ptr %43, align 1, !tbaa !10
  %44 = shl nuw nsw i32 %10, 1
  %45 = add nuw nsw i32 %7, 2
  %46 = add nuw nsw i32 %45, %44
  %47 = add nuw nsw i32 %46, %13
  %48 = lshr i32 %47, 2
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds i8, ptr %0, i64 99
  store i8 %49, ptr %50, align 1, !tbaa !10
  %51 = getelementptr inbounds i8, ptr %0, i64 65
  store i8 %49, ptr %51, align 1, !tbaa !10
  %52 = add nuw nsw i32 %7, 1
  %53 = add nuw nsw i32 %52, %10
  %54 = lshr i32 %53, 1
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds i8, ptr %0, i64 66
  store i8 %55, ptr %56, align 1, !tbaa !10
  %57 = getelementptr inbounds i8, ptr %0, i64 32
  store i8 %55, ptr %57, align 1, !tbaa !10
  %58 = shl nuw nsw i32 %7, 1
  %59 = add nuw nsw i32 %4, 2
  %60 = add nuw nsw i32 %59, %58
  %61 = add nuw nsw i32 %60, %10
  %62 = lshr i32 %61, 2
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds i8, ptr %0, i64 67
  store i8 %63, ptr %64, align 1, !tbaa !10
  %65 = getelementptr inbounds i8, ptr %0, i64 33
  store i8 %63, ptr %65, align 1, !tbaa !10
  %66 = add nuw nsw i32 %52, %4
  %67 = lshr i32 %66, 1
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds i8, ptr %0, i64 34
  store i8 %68, ptr %69, align 1, !tbaa !10
  store i8 %68, ptr %0, align 1, !tbaa !10
  %70 = shl nuw nsw i32 %4, 1
  %71 = add nuw nsw i32 %45, %70
  %72 = add nuw nsw i32 %71, %19
  %73 = lshr i32 %72, 2
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds i8, ptr %0, i64 35
  store i8 %74, ptr %75, align 1, !tbaa !10
  %76 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %74, ptr %76, align 1, !tbaa !10
  %77 = shl nuw nsw i32 %19, 1
  %78 = add nuw nsw i32 %59, %22
  %79 = add nuw nsw i32 %78, %77
  %80 = lshr i32 %79, 2
  %81 = trunc i32 %80 to i8
  %82 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %81, ptr %82, align 1, !tbaa !10
  %83 = shl nuw nsw i32 %22, 1
  %84 = add nuw nsw i32 %19, 2
  %85 = add nuw nsw i32 %84, %25
  %86 = add nuw nsw i32 %85, %83
  %87 = lshr i32 %86, 2
  %88 = trunc i32 %87 to i8
  %89 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %88, ptr %89, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_vl(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  %3 = load i8, ptr %2, align 1, !tbaa !10
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds i8, ptr %0, i64 -31
  %6 = load i8, ptr %5, align 1, !tbaa !10
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds i8, ptr %0, i64 -30
  %9 = load i8, ptr %8, align 1, !tbaa !10
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds i8, ptr %0, i64 -29
  %12 = load i8, ptr %11, align 1, !tbaa !10
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds i8, ptr %0, i64 -28
  %15 = load i8, ptr %14, align 1, !tbaa !10
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds i8, ptr %0, i64 -27
  %18 = load i8, ptr %17, align 1, !tbaa !10
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds i8, ptr %0, i64 -26
  %21 = load i8, ptr %20, align 1, !tbaa !10
  %22 = zext i8 %21 to i32
  %23 = add nuw nsw i32 %7, 1
  %24 = add nuw nsw i32 %23, %4
  %25 = lshr i32 %24, 1
  %26 = trunc i32 %25 to i8
  store i8 %26, ptr %0, align 1, !tbaa !10
  %27 = shl nuw nsw i32 %7, 1
  %28 = add nuw nsw i32 %10, 2
  %29 = add nuw nsw i32 %28, %4
  %30 = add nuw nsw i32 %29, %27
  %31 = lshr i32 %30, 2
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds i8, ptr %0, i64 32
  store i8 %32, ptr %33, align 1, !tbaa !10
  %34 = add nuw nsw i32 %23, %10
  %35 = lshr i32 %34, 1
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds i8, ptr %0, i64 64
  store i8 %36, ptr %37, align 1, !tbaa !10
  %38 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %36, ptr %38, align 1, !tbaa !10
  %39 = shl nuw nsw i32 %10, 1
  %40 = add nuw nsw i32 %13, 2
  %41 = add nuw nsw i32 %40, %7
  %42 = add nuw nsw i32 %41, %39
  %43 = lshr i32 %42, 2
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds i8, ptr %0, i64 96
  store i8 %44, ptr %45, align 1, !tbaa !10
  %46 = getelementptr inbounds i8, ptr %0, i64 33
  store i8 %44, ptr %46, align 1, !tbaa !10
  %47 = add nuw nsw i32 %10, 1
  %48 = add nuw nsw i32 %47, %13
  %49 = lshr i32 %48, 1
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds i8, ptr %0, i64 65
  store i8 %50, ptr %51, align 1, !tbaa !10
  %52 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %50, ptr %52, align 1, !tbaa !10
  %53 = shl nuw nsw i32 %13, 1
  %54 = add nuw nsw i32 %28, %53
  %55 = add nuw nsw i32 %54, %16
  %56 = lshr i32 %55, 2
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds i8, ptr %0, i64 97
  store i8 %57, ptr %58, align 1, !tbaa !10
  %59 = getelementptr inbounds i8, ptr %0, i64 34
  store i8 %57, ptr %59, align 1, !tbaa !10
  %60 = add nuw nsw i32 %13, 1
  %61 = add nuw nsw i32 %60, %16
  %62 = lshr i32 %61, 1
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds i8, ptr %0, i64 66
  store i8 %63, ptr %64, align 1, !tbaa !10
  %65 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %63, ptr %65, align 1, !tbaa !10
  %66 = shl nuw nsw i32 %16, 1
  %67 = add nuw nsw i32 %40, %66
  %68 = add nuw nsw i32 %67, %19
  %69 = lshr i32 %68, 2
  %70 = trunc i32 %69 to i8
  %71 = getelementptr inbounds i8, ptr %0, i64 98
  store i8 %70, ptr %71, align 1, !tbaa !10
  %72 = getelementptr inbounds i8, ptr %0, i64 35
  store i8 %70, ptr %72, align 1, !tbaa !10
  %73 = add nuw nsw i32 %16, 1
  %74 = add nuw nsw i32 %73, %19
  %75 = lshr i32 %74, 1
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds i8, ptr %0, i64 67
  store i8 %76, ptr %77, align 1, !tbaa !10
  %78 = shl nuw nsw i32 %19, 1
  %79 = add nuw nsw i32 %16, 2
  %80 = add nuw nsw i32 %79, %78
  %81 = add nuw nsw i32 %80, %22
  %82 = lshr i32 %81, 2
  %83 = trunc i32 %82 to i8
  %84 = getelementptr inbounds i8, ptr %0, i64 99
  store i8 %83, ptr %84, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_hu(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -1
  %3 = load i8, ptr %2, align 1, !tbaa !10
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds i8, ptr %0, i64 31
  %6 = load i8, ptr %5, align 1, !tbaa !10
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds i8, ptr %0, i64 63
  %9 = load i8, ptr %8, align 1, !tbaa !10
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds i8, ptr %0, i64 95
  %12 = load i8, ptr %11, align 1, !tbaa !10
  %13 = zext i8 %12 to i32
  %14 = add nuw nsw i32 %7, 1
  %15 = add nuw nsw i32 %14, %4
  %16 = lshr i32 %15, 1
  %17 = trunc i32 %16 to i8
  store i8 %17, ptr %0, align 1, !tbaa !10
  %18 = shl nuw nsw i32 %7, 1
  %19 = add nuw nsw i32 %10, 2
  %20 = add nuw nsw i32 %19, %4
  %21 = add nuw nsw i32 %20, %18
  %22 = lshr i32 %21, 2
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %23, ptr %24, align 1, !tbaa !10
  %25 = add nuw nsw i32 %14, %10
  %26 = lshr i32 %25, 1
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds i8, ptr %0, i64 32
  store i8 %27, ptr %28, align 1, !tbaa !10
  %29 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %27, ptr %29, align 1, !tbaa !10
  %30 = shl nuw nsw i32 %10, 1
  %31 = add nuw nsw i32 %13, 2
  %32 = add nuw nsw i32 %31, %7
  %33 = add nuw nsw i32 %32, %30
  %34 = lshr i32 %33, 2
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds i8, ptr %0, i64 33
  store i8 %35, ptr %36, align 1, !tbaa !10
  %37 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %35, ptr %37, align 1, !tbaa !10
  %38 = add nuw nsw i32 %10, 1
  %39 = add nuw nsw i32 %38, %13
  %40 = lshr i32 %39, 1
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds i8, ptr %0, i64 64
  store i8 %41, ptr %42, align 1, !tbaa !10
  %43 = getelementptr inbounds i8, ptr %0, i64 34
  store i8 %41, ptr %43, align 1, !tbaa !10
  %44 = shl nuw nsw i32 %13, 1
  %45 = add nuw nsw i32 %19, %13
  %46 = add nuw nsw i32 %45, %44
  %47 = lshr i32 %46, 2
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds i8, ptr %0, i64 65
  store i8 %48, ptr %49, align 1, !tbaa !10
  %50 = getelementptr inbounds i8, ptr %0, i64 35
  store i8 %48, ptr %50, align 1, !tbaa !10
  %51 = getelementptr inbounds i8, ptr %0, i64 66
  store i8 %12, ptr %51, align 1, !tbaa !10
  %52 = getelementptr inbounds i8, ptr %0, i64 96
  %53 = insertelement <4 x i8> poison, i8 %12, i64 0
  %54 = shufflevector <4 x i8> %53, <4 x i8> poison, <4 x i32> zeroinitializer
  store <4 x i8> %54, ptr %52, align 1, !tbaa !10
  %55 = getelementptr inbounds i8, ptr %0, i64 67
  store i8 %12, ptr %55, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_dc_left(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -1
  %3 = load i8, ptr %2, align 1, !tbaa !10
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds i8, ptr %0, i64 31
  %6 = load i8, ptr %5, align 1, !tbaa !10
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds i8, ptr %0, i64 63
  %9 = load i8, ptr %8, align 1, !tbaa !10
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds i8, ptr %0, i64 95
  %12 = load i8, ptr %11, align 1, !tbaa !10
  %13 = zext i8 %12 to i32
  %14 = add nuw nsw i32 %4, 2
  %15 = add nuw nsw i32 %14, %7
  %16 = add nuw nsw i32 %15, %10
  %17 = add nuw nsw i32 %16, %13
  %18 = lshr i32 %17, 2
  %19 = mul nuw nsw i32 %18, 16843009
  %20 = getelementptr inbounds i8, ptr %0, i64 96
  store i32 %19, ptr %20, align 4, !tbaa !10
  %21 = getelementptr inbounds i8, ptr %0, i64 64
  store i32 %19, ptr %21, align 4, !tbaa !10
  %22 = getelementptr inbounds i8, ptr %0, i64 32
  store i32 %19, ptr %22, align 4, !tbaa !10
  store i32 %19, ptr %0, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @predict_4x4_dc_top(ptr nocapture noundef %0) #6 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  %3 = load i8, ptr %2, align 1, !tbaa !10
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds i8, ptr %0, i64 -31
  %6 = load i8, ptr %5, align 1, !tbaa !10
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds i8, ptr %0, i64 -30
  %9 = load i8, ptr %8, align 1, !tbaa !10
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds i8, ptr %0, i64 -29
  %12 = load i8, ptr %11, align 1, !tbaa !10
  %13 = zext i8 %12 to i32
  %14 = add nuw nsw i32 %4, 2
  %15 = add nuw nsw i32 %14, %7
  %16 = add nuw nsw i32 %15, %10
  %17 = add nuw nsw i32 %16, %13
  %18 = lshr i32 %17, 2
  %19 = mul nuw nsw i32 %18, 16843009
  %20 = getelementptr inbounds i8, ptr %0, i64 96
  store i32 %19, ptr %20, align 4, !tbaa !10
  %21 = getelementptr inbounds i8, ptr %0, i64 64
  store i32 %19, ptr %21, align 4, !tbaa !10
  %22 = getelementptr inbounds i8, ptr %0, i64 32
  store i32 %19, ptr %22, align 4, !tbaa !10
  store i32 %19, ptr %0, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @predict_4x4_dc_128(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 96
  store i32 -2139062144, ptr %2, align 4, !tbaa !10
  %3 = getelementptr inbounds i8, ptr %0, i64 64
  store i32 -2139062144, ptr %3, align 4, !tbaa !10
  %4 = getelementptr inbounds i8, ptr %0, i64 32
  store i32 -2139062144, ptr %4, align 4, !tbaa !10
  store i32 -2139062144, ptr %0, align 4, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12, !22, !23}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12}
!40 = !{i32 0, i32 65536}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
