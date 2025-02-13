; ModuleID = 'ldecod_src/transform8x8.c'
source_filename = "ldecod_src/transform8x8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }
%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @itrans8x8(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 79
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %12 = load i32, ptr %11, align 4, !tbaa !18
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %31

14:                                               ; preds = %4
  %15 = sext i32 %3 to i64
  %16 = getelementptr inbounds ptr, ptr %10, i64 %15
  %17 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 78
  %18 = load ptr, ptr %17, align 8, !tbaa !19
  %19 = getelementptr inbounds ptr, ptr %18, i64 %8
  %20 = load ptr, ptr %19, align 8, !tbaa !17
  %21 = getelementptr inbounds ptr, ptr %20, i64 %15
  %22 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 77
  %23 = load ptr, ptr %22, align 8, !tbaa !20
  %24 = getelementptr inbounds ptr, ptr %23, i64 %8
  %25 = load ptr, ptr %24, align 8, !tbaa !17
  %26 = getelementptr inbounds ptr, ptr %25, i64 %15
  %27 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !21
  %29 = getelementptr inbounds %struct.video_par, ptr %28, i64 0, i32 70, i64 %8
  %30 = load i32, ptr %29, align 4, !tbaa !22
  tail call fastcc void @recon8x8_lossless(ptr noundef %16, ptr noundef %21, ptr noundef %26, i32 noundef %30, i32 noundef %2) #5
  br label %48

31:                                               ; preds = %4
  tail call void @inverse8x8(ptr noundef %10, ptr noundef %10, i32 noundef %3, i32 noundef %2) #6
  %32 = sext i32 %3 to i64
  %33 = getelementptr inbounds ptr, ptr %10, i64 %32
  %34 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 78
  %35 = load ptr, ptr %34, align 8, !tbaa !19
  %36 = getelementptr inbounds ptr, ptr %35, i64 %8
  %37 = load ptr, ptr %36, align 8, !tbaa !17
  %38 = getelementptr inbounds ptr, ptr %37, i64 %32
  %39 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 77
  %40 = load ptr, ptr %39, align 8, !tbaa !20
  %41 = getelementptr inbounds ptr, ptr %40, i64 %8
  %42 = load ptr, ptr %41, align 8, !tbaa !17
  %43 = getelementptr inbounds ptr, ptr %42, i64 %32
  %44 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !21
  %46 = getelementptr inbounds %struct.video_par, ptr %45, i64 0, i32 70, i64 %8
  %47 = load i32, ptr %46, align 4, !tbaa !22
  tail call fastcc void @recon8x8(ptr noundef %33, ptr noundef %38, ptr noundef %43, i32 noundef %47, i32 noundef %2) #5
  br label %48

48:                                               ; preds = %31, %14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @recon8x8_lossless(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
  %6 = sext i32 %4 to i64
  %7 = add nsw i32 %4, 7
  %8 = sext i32 %7 to i64
  br label %9

9:                                                ; preds = %5, %30
  %10 = phi i32 [ 0, %5 ], [ %34, %30 ]
  %11 = phi ptr [ %0, %5 ], [ %32, %30 ]
  %12 = phi ptr [ %1, %5 ], [ %31, %30 ]
  %13 = phi ptr [ %2, %5 ], [ %33, %30 ]
  %14 = load ptr, ptr %11, align 8, !tbaa !17
  %15 = load ptr, ptr %13, align 8, !tbaa !17
  %16 = load ptr, ptr %12, align 8, !tbaa !17
  br label %17

17:                                               ; preds = %9, %17
  %18 = phi i64 [ %6, %9 ], [ %28, %17 ]
  %19 = getelementptr inbounds i32, ptr %14, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !22
  %21 = getelementptr inbounds i16, ptr %15, i64 %18
  %22 = load i16, ptr %21, align 2, !tbaa !23
  %23 = zext i16 %22 to i32
  %24 = add i32 %20, %23
  %25 = tail call fastcc i32 @iClip1(i32 noundef %3, i32 noundef %24) #5
  %26 = trunc i32 %25 to i16
  %27 = getelementptr inbounds i16, ptr %16, i64 %18
  store i16 %26, ptr %27, align 2, !tbaa !23
  %28 = add nsw i64 %18, 1
  %29 = icmp slt i64 %18, %8
  br i1 %29, label %17, label %30, !llvm.loop !24

30:                                               ; preds = %17
  %31 = getelementptr inbounds ptr, ptr %12, i64 1
  %32 = getelementptr inbounds ptr, ptr %11, i64 1
  %33 = getelementptr inbounds ptr, ptr %13, i64 1
  %34 = add nuw nsw i32 %10, 1
  %35 = icmp eq i32 %34, 8
  br i1 %35, label %36, label %9, !llvm.loop !26

36:                                               ; preds = %30
  ret void
}

; Function Attrs: optsize
declare void @inverse8x8(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @recon8x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
  %6 = sext i32 %4 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i32 [ 0, %5 ], [ %98, %7 ]
  %9 = phi ptr [ %0, %5 ], [ %12, %7 ]
  %10 = phi ptr [ %1, %5 ], [ %15, %7 ]
  %11 = phi ptr [ %2, %5 ], [ %18, %7 ]
  %12 = getelementptr inbounds ptr, ptr %9, i64 1
  %13 = load ptr, ptr %9, align 8, !tbaa !17
  %14 = getelementptr inbounds i32, ptr %13, i64 %6
  %15 = getelementptr inbounds ptr, ptr %10, i64 1
  %16 = load ptr, ptr %10, align 8, !tbaa !17
  %17 = getelementptr inbounds i16, ptr %16, i64 %6
  %18 = getelementptr inbounds ptr, ptr %11, i64 1
  %19 = load ptr, ptr %11, align 8, !tbaa !17
  %20 = getelementptr inbounds i16, ptr %19, i64 %6
  %21 = getelementptr inbounds i16, ptr %20, i64 1
  %22 = load i16, ptr %20, align 2, !tbaa !23
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds i32, ptr %14, i64 1
  %25 = load i32, ptr %14, align 4, !tbaa !22
  %26 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %25) #5
  %27 = add nsw i32 %26, %23
  %28 = tail call fastcc i32 @iClip1(i32 noundef %3, i32 noundef %27) #5
  %29 = trunc i32 %28 to i16
  %30 = getelementptr inbounds i16, ptr %17, i64 1
  store i16 %29, ptr %17, align 2, !tbaa !23
  %31 = getelementptr inbounds i16, ptr %20, i64 2
  %32 = load i16, ptr %21, align 2, !tbaa !23
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds i32, ptr %14, i64 2
  %35 = load i32, ptr %24, align 4, !tbaa !22
  %36 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %35) #5
  %37 = add nsw i32 %36, %33
  %38 = tail call fastcc i32 @iClip1(i32 noundef %3, i32 noundef %37) #5
  %39 = trunc i32 %38 to i16
  %40 = getelementptr inbounds i16, ptr %17, i64 2
  store i16 %39, ptr %30, align 2, !tbaa !23
  %41 = getelementptr inbounds i16, ptr %20, i64 3
  %42 = load i16, ptr %31, align 2, !tbaa !23
  %43 = zext i16 %42 to i32
  %44 = getelementptr inbounds i32, ptr %14, i64 3
  %45 = load i32, ptr %34, align 4, !tbaa !22
  %46 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %45) #5
  %47 = add nsw i32 %46, %43
  %48 = tail call fastcc i32 @iClip1(i32 noundef %3, i32 noundef %47) #5
  %49 = trunc i32 %48 to i16
  %50 = getelementptr inbounds i16, ptr %17, i64 3
  store i16 %49, ptr %40, align 2, !tbaa !23
  %51 = getelementptr inbounds i16, ptr %20, i64 4
  %52 = load i16, ptr %41, align 2, !tbaa !23
  %53 = zext i16 %52 to i32
  %54 = getelementptr inbounds i32, ptr %14, i64 4
  %55 = load i32, ptr %44, align 4, !tbaa !22
  %56 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %55) #5
  %57 = add nsw i32 %56, %53
  %58 = tail call fastcc i32 @iClip1(i32 noundef %3, i32 noundef %57) #5
  %59 = trunc i32 %58 to i16
  %60 = getelementptr inbounds i16, ptr %17, i64 4
  store i16 %59, ptr %50, align 2, !tbaa !23
  %61 = getelementptr inbounds i16, ptr %20, i64 5
  %62 = load i16, ptr %51, align 2, !tbaa !23
  %63 = zext i16 %62 to i32
  %64 = getelementptr inbounds i32, ptr %14, i64 5
  %65 = load i32, ptr %54, align 4, !tbaa !22
  %66 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %65) #5
  %67 = add nsw i32 %66, %63
  %68 = tail call fastcc i32 @iClip1(i32 noundef %3, i32 noundef %67) #5
  %69 = trunc i32 %68 to i16
  %70 = getelementptr inbounds i16, ptr %17, i64 5
  store i16 %69, ptr %60, align 2, !tbaa !23
  %71 = getelementptr inbounds i16, ptr %20, i64 6
  %72 = load i16, ptr %61, align 2, !tbaa !23
  %73 = zext i16 %72 to i32
  %74 = getelementptr inbounds i32, ptr %14, i64 6
  %75 = load i32, ptr %64, align 4, !tbaa !22
  %76 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %75) #5
  %77 = add nsw i32 %76, %73
  %78 = tail call fastcc i32 @iClip1(i32 noundef %3, i32 noundef %77) #5
  %79 = trunc i32 %78 to i16
  %80 = getelementptr inbounds i16, ptr %17, i64 6
  store i16 %79, ptr %70, align 2, !tbaa !23
  %81 = getelementptr inbounds i16, ptr %20, i64 7
  %82 = load i16, ptr %71, align 2, !tbaa !23
  %83 = zext i16 %82 to i32
  %84 = getelementptr inbounds i32, ptr %14, i64 7
  %85 = load i32, ptr %74, align 4, !tbaa !22
  %86 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %85) #5
  %87 = add nsw i32 %86, %83
  %88 = tail call fastcc i32 @iClip1(i32 noundef %3, i32 noundef %87) #5
  %89 = trunc i32 %88 to i16
  %90 = getelementptr inbounds i16, ptr %17, i64 7
  store i16 %89, ptr %80, align 2, !tbaa !23
  %91 = load i16, ptr %81, align 2, !tbaa !23
  %92 = zext i16 %91 to i32
  %93 = load i32, ptr %84, align 4, !tbaa !22
  %94 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %93) #5
  %95 = add nsw i32 %94, %92
  %96 = tail call fastcc i32 @iClip1(i32 noundef %3, i32 noundef %95) #5
  %97 = trunc i32 %96 to i16
  store i16 %97, ptr %90, align 2, !tbaa !23
  %98 = add nuw nsw i32 %8, 1
  %99 = icmp eq i32 %98, 8
  br i1 %99, label %100, label %7, !llvm.loop !27

100:                                              ; preds = %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @iClip1(i32 noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = tail call fastcc i32 @imax(i32 noundef %1) #5
  %4 = tail call fastcc i32 @imin(i32 noundef %3, i32 noundef %0) #5
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imax(i32 noundef %0) unnamed_addr #3 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imin(i32 noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @rshift_rnd_sf(i32 noundef %0) unnamed_addr #3 {
  %2 = add nsw i32 %0, 32
  %3 = ashr i32 %2, 6
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"macroblock", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !12, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !9, i64 72, !9, i64 80, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !13, i64 108, !9, i64 110, !9, i64 111, !13, i64 112, !13, i64 114, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !13, i64 152, !9, i64 154, !11, i64 284, !9, i64 288, !9, i64 312, !9, i64 336, !11, i64 360, !9, i64 364, !9, i64 368, !9, i64 372, !9, i64 373, !9, i64 374, !13, i64 376, !13, i64 378, !13, i64 380, !11, i64 384, !11, i64 388, !11, i64 392, !11, i64 396, !11, i64 400, !11, i64 404, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !9, i64 472}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"", !13, i64 0, !13, i64 2}
!13 = !{!"short", !9, i64 0}
!14 = !{!15, !8, i64 1264}
!15 = !{!"slice", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !9, i64 88, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !13, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !9, i64 136, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !11, i64 168, !11, i64 172, !11, i64 176, !9, i64 180, !11, i64 184, !11, i64 188, !11, i64 192, !11, i64 196, !11, i64 200, !11, i64 204, !11, i64 208, !11, i64 212, !11, i64 216, !11, i64 220, !11, i64 224, !11, i64 228, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !8, i64 248, !9, i64 256, !9, i64 264, !8, i64 312, !8, i64 320, !8, i64 328, !9, i64 336, !9, i64 1104, !9, i64 1112, !9, i64 1128, !9, i64 1144, !9, i64 1160, !11, i64 1176, !11, i64 1180, !11, i64 1184, !16, i64 1188, !13, i64 1220, !13, i64 1222, !13, i64 1224, !11, i64 1228, !11, i64 1232, !11, i64 1236, !11, i64 1240, !8, i64 1248, !8, i64 1256, !8, i64 1264, !8, i64 1272, !8, i64 1280, !9, i64 1288, !8, i64 1352, !8, i64 1360, !8, i64 1368, !8, i64 1376, !8, i64 1384, !9, i64 1392, !9, i64 2544, !9, i64 3696, !9, i64 8304, !9, i64 12912, !9, i64 13008, !11, i64 13264, !11, i64 13268, !13, i64 13272, !13, i64 13274, !13, i64 13276, !13, i64 13278, !8, i64 13280, !8, i64 13288, !8, i64 13296, !13, i64 13304, !13, i64 13306, !11, i64 13308, !11, i64 13312, !8, i64 13320, !8, i64 13328, !11, i64 13336, !9, i64 13340, !8, i64 13408, !8, i64 13416, !8, i64 13424, !8, i64 13432, !8, i64 13440, !8, i64 13448, !8, i64 13456, !8, i64 13464, !8, i64 13472, !8, i64 13480, !8, i64 13488, !8, i64 13496, !11, i64 13504, !8, i64 13512, !8, i64 13520, !8, i64 13528, !8, i64 13536, !8, i64 13544, !9, i64 13552}
!16 = !{!"nalunitheadermvcext_tag", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28}
!17 = !{!8, !8, i64 0}
!18 = !{!7, !11, i64 92}
!19 = !{!15, !8, i64 1256}
!20 = !{!15, !8, i64 1248}
!21 = !{!7, !8, i64 8}
!22 = !{!11, !11, i64 0}
!23 = !{!13, !13, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = distinct !{!26, !25}
!27 = distinct !{!27, !25}
