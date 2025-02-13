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
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 79
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %12 = load i32, ptr %11, align 4, !tbaa !47
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %31

14:                                               ; preds = %4
  %15 = sext i32 %3 to i64
  %16 = getelementptr inbounds ptr, ptr %10, i64 %15
  %17 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 78
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = getelementptr inbounds ptr, ptr %18, i64 %8
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = getelementptr inbounds ptr, ptr %20, i64 %15
  %22 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 77
  %23 = load ptr, ptr %22, align 8, !tbaa !49
  %24 = getelementptr inbounds ptr, ptr %23, i64 %8
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = getelementptr inbounds ptr, ptr %25, i64 %15
  %27 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !50
  %29 = getelementptr inbounds %struct.video_par, ptr %28, i64 0, i32 70, i64 %8
  %30 = load i32, ptr %29, align 4, !tbaa !51
  tail call fastcc void @recon8x8_lossless(ptr noundef %16, ptr noundef %21, ptr noundef %26, i32 noundef %30, i32 noundef %2) #5
  br label %48

31:                                               ; preds = %4
  tail call void @inverse8x8(ptr noundef %10, ptr noundef %10, i32 noundef %3, i32 noundef %2) #6
  %32 = sext i32 %3 to i64
  %33 = getelementptr inbounds ptr, ptr %10, i64 %32
  %34 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 78
  %35 = load ptr, ptr %34, align 8, !tbaa !48
  %36 = getelementptr inbounds ptr, ptr %35, i64 %8
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = getelementptr inbounds ptr, ptr %37, i64 %32
  %39 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 77
  %40 = load ptr, ptr %39, align 8, !tbaa !49
  %41 = getelementptr inbounds ptr, ptr %40, i64 %8
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  %43 = getelementptr inbounds ptr, ptr %42, i64 %32
  %44 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !50
  %46 = getelementptr inbounds %struct.video_par, ptr %45, i64 0, i32 70, i64 %8
  %47 = load i32, ptr %46, align 4, !tbaa !51
  tail call fastcc void @recon8x8(ptr noundef %33, ptr noundef %38, ptr noundef %43, i32 noundef %47, i32 noundef %2) #5
  br label %48

48:                                               ; preds = %31, %14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @recon8x8_lossless(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 !PGOFuncName !52 {
  %6 = sext i32 %4 to i64
  %7 = add nsw i32 %4, 7
  %8 = sext i32 %7 to i64
  br label %9

9:                                                ; preds = %5, %30
  %10 = phi i32 [ 0, %5 ], [ %34, %30 ]
  %11 = phi ptr [ %0, %5 ], [ %32, %30 ]
  %12 = phi ptr [ %1, %5 ], [ %31, %30 ]
  %13 = phi ptr [ %2, %5 ], [ %33, %30 ]
  %14 = load ptr, ptr %11, align 8, !tbaa !46
  %15 = load ptr, ptr %13, align 8, !tbaa !46
  %16 = load ptr, ptr %12, align 8, !tbaa !46
  br label %17

17:                                               ; preds = %9, %17
  %18 = phi i64 [ %6, %9 ], [ %28, %17 ]
  %19 = getelementptr inbounds i32, ptr %14, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !51
  %21 = getelementptr inbounds i16, ptr %15, i64 %18
  %22 = load i16, ptr %21, align 2, !tbaa !53
  %23 = zext i16 %22 to i32
  %24 = add i32 %20, %23
  %25 = tail call fastcc i32 @iClip1(i32 noundef %3, i32 noundef %24) #5
  %26 = trunc i32 %25 to i16
  %27 = getelementptr inbounds i16, ptr %16, i64 %18
  store i16 %26, ptr %27, align 2, !tbaa !53
  %28 = add nsw i64 %18, 1
  %29 = icmp slt i64 %18, %8
  br i1 %29, label %17, label %30, !llvm.loop !54

30:                                               ; preds = %17
  %31 = getelementptr inbounds ptr, ptr %12, i64 1
  %32 = getelementptr inbounds ptr, ptr %11, i64 1
  %33 = getelementptr inbounds ptr, ptr %13, i64 1
  %34 = add nuw nsw i32 %10, 1
  %35 = icmp eq i32 %34, 8
  br i1 %35, label %36, label %9, !llvm.loop !56

36:                                               ; preds = %30
  ret void
}

; Function Attrs: optsize
declare void @inverse8x8(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @recon8x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 !PGOFuncName !57 {
  %6 = sext i32 %4 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i32 [ 0, %5 ], [ %98, %7 ]
  %9 = phi ptr [ %0, %5 ], [ %12, %7 ]
  %10 = phi ptr [ %1, %5 ], [ %15, %7 ]
  %11 = phi ptr [ %2, %5 ], [ %18, %7 ]
  %12 = getelementptr inbounds ptr, ptr %9, i64 1
  %13 = load ptr, ptr %9, align 8, !tbaa !46
  %14 = getelementptr inbounds i32, ptr %13, i64 %6
  %15 = getelementptr inbounds ptr, ptr %10, i64 1
  %16 = load ptr, ptr %10, align 8, !tbaa !46
  %17 = getelementptr inbounds i16, ptr %16, i64 %6
  %18 = getelementptr inbounds ptr, ptr %11, i64 1
  %19 = load ptr, ptr %11, align 8, !tbaa !46
  %20 = getelementptr inbounds i16, ptr %19, i64 %6
  %21 = getelementptr inbounds i16, ptr %20, i64 1
  %22 = load i16, ptr %20, align 2, !tbaa !53
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds i32, ptr %14, i64 1
  %25 = load i32, ptr %14, align 4, !tbaa !51
  %26 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %25) #5
  %27 = add nsw i32 %26, %23
  %28 = tail call fastcc i32 @iClip1(i32 noundef %3, i32 noundef %27) #5
  %29 = trunc i32 %28 to i16
  %30 = getelementptr inbounds i16, ptr %17, i64 1
  store i16 %29, ptr %17, align 2, !tbaa !53
  %31 = getelementptr inbounds i16, ptr %20, i64 2
  %32 = load i16, ptr %21, align 2, !tbaa !53
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds i32, ptr %14, i64 2
  %35 = load i32, ptr %24, align 4, !tbaa !51
  %36 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %35) #5
  %37 = add nsw i32 %36, %33
  %38 = tail call fastcc i32 @iClip1(i32 noundef %3, i32 noundef %37) #5
  %39 = trunc i32 %38 to i16
  %40 = getelementptr inbounds i16, ptr %17, i64 2
  store i16 %39, ptr %30, align 2, !tbaa !53
  %41 = getelementptr inbounds i16, ptr %20, i64 3
  %42 = load i16, ptr %31, align 2, !tbaa !53
  %43 = zext i16 %42 to i32
  %44 = getelementptr inbounds i32, ptr %14, i64 3
  %45 = load i32, ptr %34, align 4, !tbaa !51
  %46 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %45) #5
  %47 = add nsw i32 %46, %43
  %48 = tail call fastcc i32 @iClip1(i32 noundef %3, i32 noundef %47) #5
  %49 = trunc i32 %48 to i16
  %50 = getelementptr inbounds i16, ptr %17, i64 3
  store i16 %49, ptr %40, align 2, !tbaa !53
  %51 = getelementptr inbounds i16, ptr %20, i64 4
  %52 = load i16, ptr %41, align 2, !tbaa !53
  %53 = zext i16 %52 to i32
  %54 = getelementptr inbounds i32, ptr %14, i64 4
  %55 = load i32, ptr %44, align 4, !tbaa !51
  %56 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %55) #5
  %57 = add nsw i32 %56, %53
  %58 = tail call fastcc i32 @iClip1(i32 noundef %3, i32 noundef %57) #5
  %59 = trunc i32 %58 to i16
  %60 = getelementptr inbounds i16, ptr %17, i64 4
  store i16 %59, ptr %50, align 2, !tbaa !53
  %61 = getelementptr inbounds i16, ptr %20, i64 5
  %62 = load i16, ptr %51, align 2, !tbaa !53
  %63 = zext i16 %62 to i32
  %64 = getelementptr inbounds i32, ptr %14, i64 5
  %65 = load i32, ptr %54, align 4, !tbaa !51
  %66 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %65) #5
  %67 = add nsw i32 %66, %63
  %68 = tail call fastcc i32 @iClip1(i32 noundef %3, i32 noundef %67) #5
  %69 = trunc i32 %68 to i16
  %70 = getelementptr inbounds i16, ptr %17, i64 5
  store i16 %69, ptr %60, align 2, !tbaa !53
  %71 = getelementptr inbounds i16, ptr %20, i64 6
  %72 = load i16, ptr %61, align 2, !tbaa !53
  %73 = zext i16 %72 to i32
  %74 = getelementptr inbounds i32, ptr %14, i64 6
  %75 = load i32, ptr %64, align 4, !tbaa !51
  %76 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %75) #5
  %77 = add nsw i32 %76, %73
  %78 = tail call fastcc i32 @iClip1(i32 noundef %3, i32 noundef %77) #5
  %79 = trunc i32 %78 to i16
  %80 = getelementptr inbounds i16, ptr %17, i64 6
  store i16 %79, ptr %70, align 2, !tbaa !53
  %81 = getelementptr inbounds i16, ptr %20, i64 7
  %82 = load i16, ptr %71, align 2, !tbaa !53
  %83 = zext i16 %82 to i32
  %84 = getelementptr inbounds i32, ptr %14, i64 7
  %85 = load i32, ptr %74, align 4, !tbaa !51
  %86 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %85) #5
  %87 = add nsw i32 %86, %83
  %88 = tail call fastcc i32 @iClip1(i32 noundef %3, i32 noundef %87) #5
  %89 = trunc i32 %88 to i16
  %90 = getelementptr inbounds i16, ptr %17, i64 7
  store i16 %89, ptr %80, align 2, !tbaa !53
  %91 = load i16, ptr %81, align 2, !tbaa !53
  %92 = zext i16 %91 to i32
  %93 = load i32, ptr %84, align 4, !tbaa !51
  %94 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %93) #5
  %95 = add nsw i32 %94, %92
  %96 = tail call fastcc i32 @iClip1(i32 noundef %3, i32 noundef %95) #5
  %97 = trunc i32 %96 to i16
  store i16 %97, ptr %90, align 2, !tbaa !53
  %98 = add nuw nsw i32 %8, 1
  %99 = icmp eq i32 %98, 8
  br i1 %99, label %100, label %7, !llvm.loop !58

100:                                              ; preds = %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @iClip1(i32 noundef %0, i32 noundef %1) unnamed_addr #3 !PGOFuncName !59 {
  %3 = tail call fastcc i32 @imax(i32 noundef %1) #5
  %4 = tail call fastcc i32 @imin(i32 noundef %3, i32 noundef %0) #5
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imax(i32 noundef %0) unnamed_addr #3 !PGOFuncName !60 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imin(i32 noundef %0, i32 noundef %1) unnamed_addr #3 !PGOFuncName !61 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @rshift_rnd_sf(i32 noundef %0) unnamed_addr #3 !PGOFuncName !62 {
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 5602379}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 2}
!14 = !{i32 100000, i64 1843200, i32 2}
!15 = !{i32 200000, i64 1843200, i32 2}
!16 = !{i32 300000, i64 1843200, i32 2}
!17 = !{i32 400000, i64 1843200, i32 2}
!18 = !{i32 500000, i64 1843200, i32 2}
!19 = !{i32 600000, i64 1843200, i32 2}
!20 = !{i32 700000, i64 921600, i32 4}
!21 = !{i32 800000, i64 921600, i32 4}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 720, i32 8}
!27 = !{i32 999990, i64 21, i32 9}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!36, !37, i64 0}
!36 = !{!"macroblock", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !41, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !38, i64 72, !38, i64 80, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !42, i64 108, !38, i64 110, !38, i64 111, !42, i64 112, !42, i64 114, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !42, i64 152, !38, i64 154, !40, i64 284, !38, i64 288, !38, i64 312, !38, i64 336, !40, i64 360, !38, i64 364, !38, i64 368, !38, i64 372, !38, i64 373, !38, i64 374, !42, i64 376, !42, i64 378, !42, i64 380, !40, i64 384, !40, i64 388, !40, i64 392, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !40, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !37, i64 432, !37, i64 440, !37, i64 448, !37, i64 456, !37, i64 464, !38, i64 472}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"", !42, i64 0, !42, i64 2}
!42 = !{!"short", !38, i64 0}
!43 = !{!44, !37, i64 1264}
!44 = !{!"slice", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !40, i64 32, !37, i64 40, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !38, i64 88, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !42, i64 116, !40, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !38, i64 136, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !38, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !37, i64 248, !38, i64 256, !38, i64 264, !37, i64 312, !37, i64 320, !37, i64 328, !38, i64 336, !38, i64 1104, !38, i64 1112, !38, i64 1128, !38, i64 1144, !38, i64 1160, !40, i64 1176, !40, i64 1180, !40, i64 1184, !45, i64 1188, !42, i64 1220, !42, i64 1222, !42, i64 1224, !40, i64 1228, !40, i64 1232, !40, i64 1236, !40, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !38, i64 1288, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !38, i64 1392, !38, i64 2544, !38, i64 3696, !38, i64 8304, !38, i64 12912, !38, i64 13008, !40, i64 13264, !40, i64 13268, !42, i64 13272, !42, i64 13274, !42, i64 13276, !42, i64 13278, !37, i64 13280, !37, i64 13288, !37, i64 13296, !42, i64 13304, !42, i64 13306, !40, i64 13308, !40, i64 13312, !37, i64 13320, !37, i64 13328, !40, i64 13336, !38, i64 13340, !37, i64 13408, !37, i64 13416, !37, i64 13424, !37, i64 13432, !37, i64 13440, !37, i64 13448, !37, i64 13456, !37, i64 13464, !37, i64 13472, !37, i64 13480, !37, i64 13488, !37, i64 13496, !40, i64 13504, !37, i64 13512, !37, i64 13520, !37, i64 13528, !37, i64 13536, !37, i64 13544, !38, i64 13552}
!45 = !{!"nalunitheadermvcext_tag", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28}
!46 = !{!37, !37, i64 0}
!47 = !{!36, !40, i64 92}
!48 = !{!44, !37, i64 1256}
!49 = !{!44, !37, i64 1248}
!50 = !{!36, !37, i64 8}
!51 = !{!40, !40, i64 0}
!52 = !{!"transform8x8.c:recon8x8_lossless"}
!53 = !{!42, !42, i64 0}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = distinct !{!56, !55}
!57 = !{!"transform8x8.c:recon8x8"}
!58 = distinct !{!58, !55}
!59 = !{!"transform8x8.c:iClip1"}
!60 = !{!"transform8x8.c:imax"}
!61 = !{!"transform8x8.c:imin"}
!62 = !{!"transform8x8.c:rshift_rnd_sf"}
