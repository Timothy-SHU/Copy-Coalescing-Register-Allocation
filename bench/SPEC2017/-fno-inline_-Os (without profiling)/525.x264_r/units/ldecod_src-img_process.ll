; ModuleID = 'ldecod_src/img_process.c'
source_filename = "ldecod_src/img_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.inp_par = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, i32, i32, i32, i32, %struct.frame_format, %struct.frame_format, i32, i32, %struct.video_data_file, %struct.video_data_file, %struct.video_data_file, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.video_data_file = type { [255 x i8], [255 x i8], [255 x i8], i32, i32, %struct.frame_format, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @init_process_image(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @clear_process_image(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @process_image(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.inp_par, ptr %1, i64 0, i32 11
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 109
  %6 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 110
  switch i32 %4, label %7 [
    i32 4, label %38
    i32 1, label %13
    i32 2, label %20
    i32 3, label %27
  ]

7:                                                ; preds = %2
  tail call fastcc void @CPImage(ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %8 = getelementptr inbounds %struct.inp_par, ptr %1, i64 0, i32 12
  %9 = load i32, ptr %8, align 4, !tbaa !14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %47, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114
  br label %45

13:                                               ; preds = %2
  tail call fastcc void @FilterImage(ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %14 = getelementptr inbounds %struct.inp_par, ptr %1, i64 0, i32 12
  %15 = load i32, ptr %14, align 4, !tbaa !14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %47, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113
  %19 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114
  tail call fastcc void @FilterImage(ptr noundef nonnull %18, ptr noundef nonnull %19) #7
  br label %45

20:                                               ; preds = %2
  tail call fastcc void @YV12toYUV(ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %21 = getelementptr inbounds %struct.inp_par, ptr %1, i64 0, i32 12
  %22 = load i32, ptr %21, align 4, !tbaa !14
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %47, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113
  %26 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114
  tail call fastcc void @YV12toYUV(ptr noundef nonnull %25, ptr noundef nonnull %26) #7
  br label %45

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 111
  %29 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 112
  tail call fastcc void @MuxImages(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %28, ptr noundef nonnull %29) #7
  %30 = getelementptr inbounds %struct.inp_par, ptr %1, i64 0, i32 12
  %31 = load i32, ptr %30, align 4, !tbaa !14
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113
  %35 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114
  %36 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 115
  %37 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 116
  tail call fastcc void @MuxImages(ptr noundef nonnull %34, ptr noundef nonnull %35, ptr noundef nonnull %36, ptr noundef nonnull %37) #7
  br label %45

38:                                               ; preds = %2
  tail call fastcc void @FilterImageSep(ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %39 = getelementptr inbounds %struct.inp_par, ptr %1, i64 0, i32 12
  %40 = load i32, ptr %39, align 4, !tbaa !14
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 114
  tail call fastcc void @FilterImageSep(ptr noundef nonnull %5, ptr noundef nonnull %43) #7
  %44 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 113
  br label %45

45:                                               ; preds = %11, %17, %24, %33, %42
  %46 = phi ptr [ %44, %42 ], [ %34, %33 ], [ %25, %24 ], [ %18, %17 ], [ %12, %11 ]
  tail call fastcc void @BlendImageLines(ptr noundef nonnull %5, ptr noundef nonnull %46) #7
  br label %47

47:                                               ; preds = %45, %38, %27, %20, %13, %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @CPImage(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.image_data, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.image_data, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !16
  %11 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = mul nsw i32 %12, %10
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %5, ptr align 2 %8, i64 %15, i1 false)
  %16 = load i32, ptr %1, align 8, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.image_data, ptr %0, i64 0, i32 1, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !15
  %21 = load ptr, ptr %20, align 8, !tbaa !15
  %22 = getelementptr inbounds %struct.image_data, ptr %1, i64 0, i32 1, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !15
  %24 = load ptr, ptr %23, align 8, !tbaa !15
  %25 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 4, i64 1
  %26 = load i32, ptr %25, align 4, !tbaa !16
  %27 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 3, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !16
  %29 = mul nsw i32 %28, %26
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %21, ptr align 2 %24, i64 %31, i1 false)
  %32 = getelementptr inbounds %struct.image_data, ptr %0, i64 0, i32 1, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !15
  %34 = load ptr, ptr %33, align 8, !tbaa !15
  %35 = getelementptr inbounds %struct.image_data, ptr %1, i64 0, i32 1, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !15
  %37 = load ptr, ptr %36, align 8, !tbaa !15
  %38 = load i32, ptr %25, align 4, !tbaa !16
  %39 = load i32, ptr %27, align 4, !tbaa !16
  %40 = mul nsw i32 %39, %38
  %41 = sext i32 %40 to i64
  %42 = shl nsw i64 %41, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %34, ptr align 2 %37, i64 %42, i1 false)
  br label %43

43:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @BlendImageLines(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !16
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.image_data, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %struct.image_data, ptr %1, i64 0, i32 1
  %9 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 3
  br label %10

10:                                               ; preds = %6, %10
  %11 = phi i64 [ 1, %6 ], [ %21, %10 ]
  %12 = load ptr, ptr %7, align 8, !tbaa !15
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = load ptr, ptr %8, align 8, !tbaa !15
  %16 = getelementptr inbounds ptr, ptr %15, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !15
  %18 = load i32, ptr %9, align 8, !tbaa !16
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %14, ptr align 2 %17, i64 %20, i1 false)
  %21 = add nuw nsw i64 %11, 2
  %22 = load i32, ptr %3, align 4, !tbaa !16
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %10, label %25, !llvm.loop !19

25:                                               ; preds = %10, %2
  %26 = load i32, ptr %1, align 8, !tbaa !17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %74, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 4, i64 1
  %30 = load i32, ptr %29, align 4, !tbaa !16
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.image_data, ptr %0, i64 0, i32 1, i64 1
  %34 = getelementptr inbounds %struct.image_data, ptr %1, i64 0, i32 1, i64 1
  %35 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 3, i64 1
  br label %44

36:                                               ; preds = %44, %28
  %37 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 4, i64 2
  %38 = load i32, ptr %37, align 4, !tbaa !16
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %74

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.image_data, ptr %0, i64 0, i32 1, i64 2
  %42 = getelementptr inbounds %struct.image_data, ptr %1, i64 0, i32 1, i64 2
  %43 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 3, i64 2
  br label %59

44:                                               ; preds = %32, %44
  %45 = phi i64 [ 1, %32 ], [ %55, %44 ]
  %46 = load ptr, ptr %33, align 8, !tbaa !15
  %47 = getelementptr inbounds ptr, ptr %46, i64 %45
  %48 = load ptr, ptr %47, align 8, !tbaa !15
  %49 = load ptr, ptr %34, align 8, !tbaa !15
  %50 = getelementptr inbounds ptr, ptr %49, i64 %45
  %51 = load ptr, ptr %50, align 8, !tbaa !15
  %52 = load i32, ptr %35, align 4, !tbaa !16
  %53 = sext i32 %52 to i64
  %54 = shl nsw i64 %53, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %48, ptr align 2 %51, i64 %54, i1 false)
  %55 = add nuw nsw i64 %45, 2
  %56 = load i32, ptr %29, align 4, !tbaa !16
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %55, %57
  br i1 %58, label %44, label %36, !llvm.loop !21

59:                                               ; preds = %40, %59
  %60 = phi i64 [ 1, %40 ], [ %70, %59 ]
  %61 = load ptr, ptr %41, align 8, !tbaa !15
  %62 = getelementptr inbounds ptr, ptr %61, i64 %60
  %63 = load ptr, ptr %62, align 8, !tbaa !15
  %64 = load ptr, ptr %42, align 8, !tbaa !15
  %65 = getelementptr inbounds ptr, ptr %64, i64 %60
  %66 = load ptr, ptr %65, align 8, !tbaa !15
  %67 = load i32, ptr %43, align 8, !tbaa !16
  %68 = sext i32 %67 to i64
  %69 = shl nsw i64 %68, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %63, ptr align 2 %66, i64 %69, i1 false)
  %70 = add nuw nsw i64 %60, 2
  %71 = load i32, ptr %37, align 4, !tbaa !16
  %72 = sext i32 %71 to i64
  %73 = icmp slt i64 %70, %72
  br i1 %73, label %59, label %74, !llvm.loop !22

74:                                               ; preds = %59, %36, %25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @FilterImage(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.image_data, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.image_data, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !16
  %11 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = mul nsw i32 %12, %10
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %5, ptr align 2 %8, i64 %15, i1 false)
  %16 = load i32, ptr %1, align 8, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.image_data, ptr %0, i64 0, i32 1, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !15
  %21 = load ptr, ptr %20, align 8, !tbaa !15
  %22 = getelementptr inbounds %struct.image_data, ptr %1, i64 0, i32 1, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !15
  %24 = load ptr, ptr %23, align 8, !tbaa !15
  %25 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 4, i64 1
  %26 = load i32, ptr %25, align 4, !tbaa !16
  %27 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 3, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !16
  %29 = mul nsw i32 %28, %26
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %21, ptr align 2 %24, i64 %31, i1 false)
  %32 = getelementptr inbounds %struct.image_data, ptr %0, i64 0, i32 1, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !15
  %34 = load ptr, ptr %33, align 8, !tbaa !15
  %35 = getelementptr inbounds %struct.image_data, ptr %1, i64 0, i32 1, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !15
  %37 = load ptr, ptr %36, align 8, !tbaa !15
  %38 = load i32, ptr %25, align 4, !tbaa !16
  %39 = load i32, ptr %27, align 4, !tbaa !16
  %40 = mul nsw i32 %39, %38
  %41 = sext i32 %40 to i64
  %42 = shl nsw i64 %41, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %34, ptr align 2 %37, i64 %42, i1 false)
  br label %43

43:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @YV12toYUV(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.image_data, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.image_data, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !16
  %11 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = mul nsw i32 %12, %10
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %5, ptr align 2 %8, i64 %15, i1 false)
  %16 = load i32, ptr %1, align 8, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.image_data, ptr %0, i64 0, i32 1, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !15
  %21 = load ptr, ptr %20, align 8, !tbaa !15
  %22 = getelementptr inbounds %struct.image_data, ptr %1, i64 0, i32 1, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !15
  %24 = load ptr, ptr %23, align 8, !tbaa !15
  %25 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 4, i64 1
  %26 = load i32, ptr %25, align 4, !tbaa !16
  %27 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 3, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !16
  %29 = mul nsw i32 %28, %26
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %21, ptr align 2 %24, i64 %31, i1 false)
  %32 = getelementptr inbounds %struct.image_data, ptr %0, i64 0, i32 1, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !15
  %34 = load ptr, ptr %33, align 8, !tbaa !15
  %35 = getelementptr inbounds %struct.image_data, ptr %1, i64 0, i32 1, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !15
  %37 = load ptr, ptr %36, align 8, !tbaa !15
  %38 = load i32, ptr %25, align 4, !tbaa !16
  %39 = load i32, ptr %27, align 4, !tbaa !16
  %40 = mul nsw i32 %39, %38
  %41 = sext i32 %40 to i64
  %42 = shl nsw i64 %41, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %34, ptr align 2 %37, i64 %42, i1 false)
  br label %43

43:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @MuxImages(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.frame_format, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !16
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %60

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.frame_format, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !16
  %11 = icmp sgt i32 %10, 0
  %12 = getelementptr inbounds %struct.image_data, ptr %1, i64 0, i32 1
  %13 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 16
  %14 = getelementptr inbounds %struct.image_data, ptr %3, i64 0, i32 1
  %15 = getelementptr inbounds %struct.image_data, ptr %2, i64 0, i32 1
  %16 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 15
  %17 = getelementptr inbounds %struct.image_data, ptr %0, i64 0, i32 1
  %18 = zext nneg i32 %6 to i64
  %19 = zext nneg i32 %10 to i64
  br label %20

20:                                               ; preds = %8, %57
  %21 = phi i64 [ 0, %8 ], [ %58, %57 ]
  br i1 %11, label %22, label %57

22:                                               ; preds = %20
  %23 = load ptr, ptr %12, align 8, !tbaa !15
  %24 = getelementptr inbounds ptr, ptr %23, i64 %21
  %25 = load ptr, ptr %24, align 8, !tbaa !15
  %26 = load i32, ptr %13, align 4, !tbaa !16
  %27 = load ptr, ptr %14, align 8, !tbaa !15
  %28 = getelementptr inbounds ptr, ptr %27, i64 %21
  %29 = load ptr, ptr %28, align 8, !tbaa !15
  %30 = load ptr, ptr %15, align 8, !tbaa !15
  %31 = getelementptr inbounds ptr, ptr %30, i64 %21
  %32 = load ptr, ptr %31, align 8, !tbaa !15
  %33 = load i32, ptr %16, align 8, !tbaa !16
  %34 = load ptr, ptr %17, align 8, !tbaa !15
  %35 = getelementptr inbounds ptr, ptr %34, i64 %21
  %36 = load ptr, ptr %35, align 8, !tbaa !15
  br label %37

37:                                               ; preds = %22, %37
  %38 = phi i64 [ 0, %22 ], [ %55, %37 ]
  %39 = getelementptr inbounds i16, ptr %25, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !23
  %41 = zext i16 %40 to i32
  %42 = getelementptr inbounds i16, ptr %29, i64 %38
  %43 = load i16, ptr %42, align 2, !tbaa !23
  %44 = zext i16 %43 to i32
  %45 = sub nsw i32 %26, %44
  %46 = mul nsw i32 %45, %41
  %47 = getelementptr inbounds i16, ptr %32, i64 %38
  %48 = load i16, ptr %47, align 2, !tbaa !23
  %49 = zext i16 %48 to i32
  %50 = mul nuw nsw i32 %49, %44
  %51 = add nsw i32 %50, %46
  %52 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %51, i32 noundef %33) #7
  %53 = trunc i32 %52 to i16
  %54 = getelementptr inbounds i16, ptr %36, i64 %38
  store i16 %53, ptr %54, align 2, !tbaa !23
  %55 = add nuw nsw i64 %38, 1
  %56 = icmp eq i64 %55, %19
  br i1 %56, label %57, label %37, !llvm.loop !25

57:                                               ; preds = %37, %20
  %58 = add nuw nsw i64 %21, 1
  %59 = icmp eq i64 %58, %18
  br i1 %59, label %60, label %20, !llvm.loop !26

60:                                               ; preds = %57, %4
  %61 = load i32, ptr %0, align 8, !tbaa !17
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %124, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.frame_format, ptr %0, i64 0, i32 4, i64 1
  %65 = load i32, ptr %64, align 4, !tbaa !16
  %66 = icmp sgt i32 %65, 0
  %67 = getelementptr inbounds %struct.frame_format, ptr %0, i64 0, i32 3, i64 1
  %68 = zext nneg i32 %65 to i64
  br label %69

69:                                               ; preds = %63, %121
  %70 = phi i64 [ 1, %63 ], [ %122, %121 ]
  br i1 %66, label %71, label %121

71:                                               ; preds = %69
  %72 = load i32, ptr %67, align 4, !tbaa !16
  %73 = icmp sgt i32 %72, 0
  %74 = getelementptr inbounds %struct.image_data, ptr %1, i64 0, i32 1, i64 %70
  %75 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 16, i64 %70
  %76 = getelementptr inbounds %struct.image_data, ptr %3, i64 0, i32 1, i64 %70
  %77 = getelementptr inbounds %struct.image_data, ptr %2, i64 0, i32 1, i64 %70
  %78 = getelementptr inbounds %struct.frame_format, ptr %3, i64 0, i32 15, i64 %70
  %79 = getelementptr inbounds %struct.image_data, ptr %0, i64 0, i32 1, i64 %70
  %80 = zext nneg i32 %72 to i64
  br label %81

81:                                               ; preds = %71, %118
  %82 = phi i64 [ 0, %71 ], [ %119, %118 ]
  br i1 %73, label %83, label %118

83:                                               ; preds = %81
  %84 = load ptr, ptr %74, align 8, !tbaa !15
  %85 = getelementptr inbounds ptr, ptr %84, i64 %82
  %86 = load ptr, ptr %85, align 8, !tbaa !15
  %87 = load i32, ptr %75, align 4, !tbaa !16
  %88 = load ptr, ptr %76, align 8, !tbaa !15
  %89 = getelementptr inbounds ptr, ptr %88, i64 %82
  %90 = load ptr, ptr %89, align 8, !tbaa !15
  %91 = load ptr, ptr %77, align 8, !tbaa !15
  %92 = getelementptr inbounds ptr, ptr %91, i64 %82
  %93 = load ptr, ptr %92, align 8, !tbaa !15
  %94 = load i32, ptr %78, align 4, !tbaa !16
  %95 = load ptr, ptr %79, align 8, !tbaa !15
  %96 = getelementptr inbounds ptr, ptr %95, i64 %82
  %97 = load ptr, ptr %96, align 8, !tbaa !15
  br label %98

98:                                               ; preds = %83, %98
  %99 = phi i64 [ 0, %83 ], [ %116, %98 ]
  %100 = getelementptr inbounds i16, ptr %86, i64 %99
  %101 = load i16, ptr %100, align 2, !tbaa !23
  %102 = zext i16 %101 to i32
  %103 = getelementptr inbounds i16, ptr %90, i64 %99
  %104 = load i16, ptr %103, align 2, !tbaa !23
  %105 = zext i16 %104 to i32
  %106 = sub nsw i32 %87, %105
  %107 = mul nsw i32 %106, %102
  %108 = getelementptr inbounds i16, ptr %93, i64 %99
  %109 = load i16, ptr %108, align 2, !tbaa !23
  %110 = zext i16 %109 to i32
  %111 = mul nuw nsw i32 %110, %105
  %112 = add nsw i32 %111, %107
  %113 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %112, i32 noundef %94) #7
  %114 = trunc i32 %113 to i16
  %115 = getelementptr inbounds i16, ptr %97, i64 %99
  store i16 %114, ptr %115, align 2, !tbaa !23
  %116 = add nuw nsw i64 %99, 1
  %117 = icmp eq i64 %116, %80
  br i1 %117, label %118, label %98, !llvm.loop !27

118:                                              ; preds = %98, %81
  %119 = add nuw nsw i64 %82, 1
  %120 = icmp eq i64 %119, %68
  br i1 %120, label %121, label %81, !llvm.loop !28

121:                                              ; preds = %118, %69
  %122 = add nuw nsw i64 %70, 1
  %123 = icmp eq i64 %122, 3
  br i1 %123, label %124, label %69, !llvm.loop !29

124:                                              ; preds = %121, %60
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @FilterImageSep(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.frame_format, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !16
  %5 = add nsw i32 %4, -1
  %6 = getelementptr inbounds %struct.frame_format, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !16
  %8 = add nsw i32 %7, -1
  %9 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !16
  %11 = getelementptr inbounds %struct.frame_format, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !16
  %13 = tail call ptr @new_mem2Dint(i32 noundef %10, i32 noundef %12) #8
  %14 = load i32, ptr %6, align 4, !tbaa !16
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %175

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.image_data, ptr %1, i64 0, i32 1
  %18 = load i32, ptr %3, align 8, !tbaa !16
  br label %19

19:                                               ; preds = %16, %95
  %20 = phi i32 [ %14, %16 ], [ %96, %95 ]
  %21 = phi i32 [ %18, %16 ], [ %97, %95 ]
  %22 = phi i64 [ 0, %16 ], [ %98, %95 ]
  %23 = icmp sgt i32 %21, 0
  br i1 %23, label %24, label %95

24:                                               ; preds = %19
  %25 = load ptr, ptr %17, align 8, !tbaa !15
  %26 = getelementptr inbounds ptr, ptr %25, i64 %22
  %27 = load ptr, ptr %26, align 8, !tbaa !15
  %28 = getelementptr inbounds ptr, ptr %13, i64 %22
  %29 = load ptr, ptr %28, align 8, !tbaa !15
  br label %39

30:                                               ; preds = %95
  %31 = icmp sgt i32 %96, 0
  br i1 %31, label %32, label %175

32:                                               ; preds = %30
  %33 = load i32, ptr %3, align 8, !tbaa !16
  %34 = icmp sgt i32 %33, 0
  %35 = getelementptr inbounds %struct.frame_format, ptr %0, i64 0, i32 16
  %36 = getelementptr inbounds %struct.image_data, ptr %0, i64 0, i32 1
  %37 = zext nneg i32 %96 to i64
  %38 = zext nneg i32 %33 to i64
  br label %101

39:                                               ; preds = %24, %39
  %40 = phi i64 [ 0, %24 ], [ %61, %39 ]
  %41 = trunc i64 %40 to i32
  %42 = add i32 %41, -2
  %43 = tail call fastcc i32 @iClip3(i32 noundef %5, i32 noundef %42) #7
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i16, ptr %27, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !23
  %47 = zext i16 %46 to i32
  %48 = trunc i64 %40 to i32
  %49 = add i32 %48, -1
  %50 = tail call fastcc i32 @iClip3(i32 noundef %5, i32 noundef %49) #7
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i16, ptr %27, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !23
  %54 = zext i16 %53 to i32
  %55 = trunc i64 %40 to i32
  %56 = tail call fastcc i32 @iClip3(i32 noundef %5, i32 noundef %55) #7
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i16, ptr %27, i64 %57
  %59 = load i16, ptr %58, align 2, !tbaa !23
  %60 = zext i16 %59 to i32
  %61 = add nuw nsw i64 %40, 1
  %62 = trunc i64 %61 to i32
  %63 = tail call fastcc i32 @iClip3(i32 noundef %5, i32 noundef %62) #7
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i16, ptr %27, i64 %64
  %66 = load i16, ptr %65, align 2, !tbaa !23
  %67 = zext i16 %66 to i32
  %68 = trunc i64 %40 to i32
  %69 = add i32 %68, 2
  %70 = tail call fastcc i32 @iClip3(i32 noundef %5, i32 noundef %69) #7
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i16, ptr %27, i64 %71
  %73 = load i16, ptr %72, align 2, !tbaa !23
  %74 = zext i16 %73 to i32
  %75 = trunc i64 %40 to i32
  %76 = add i32 %75, 3
  %77 = tail call fastcc i32 @iClip3(i32 noundef %5, i32 noundef %76) #7
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i16, ptr %27, i64 %78
  %80 = load i16, ptr %79, align 2, !tbaa !23
  %81 = zext i16 %80 to i32
  %82 = add nuw nsw i32 %67, %60
  %83 = mul nuw nsw i32 %82, 20
  %84 = add nuw nsw i32 %74, %54
  %85 = mul nsw i32 %84, -5
  %86 = add nuw nsw i32 %83, %47
  %87 = add nuw nsw i32 %86, %81
  %88 = add nsw i32 %87, %85
  %89 = getelementptr inbounds i32, ptr %29, i64 %40
  store i32 %88, ptr %89, align 4, !tbaa !16
  %90 = load i32, ptr %3, align 8, !tbaa !16
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %61, %91
  br i1 %92, label %39, label %93, !llvm.loop !30

93:                                               ; preds = %39
  %94 = load i32, ptr %6, align 4, !tbaa !16
  br label %95

95:                                               ; preds = %93, %19
  %96 = phi i32 [ %94, %93 ], [ %20, %19 ]
  %97 = phi i32 [ %90, %93 ], [ %21, %19 ]
  %98 = add nuw nsw i64 %22, 1
  %99 = sext i32 %96 to i64
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %19, label %30, !llvm.loop !31

101:                                              ; preds = %32, %172
  %102 = phi i64 [ 0, %32 ], [ %173, %172 ]
  br i1 %34, label %105, label %103

103:                                              ; preds = %101
  %104 = add nuw nsw i64 %102, 1
  br label %172

105:                                              ; preds = %101
  %106 = load i32, ptr %35, align 4, !tbaa !16
  %107 = trunc i64 %102 to i32
  %108 = add i32 %107, -2
  %109 = tail call fastcc i32 @iClip3(i32 noundef %8, i32 noundef %108) #7
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds ptr, ptr %13, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !15
  %113 = trunc i64 %102 to i32
  %114 = add i32 %113, -1
  %115 = tail call fastcc i32 @iClip3(i32 noundef %8, i32 noundef %114) #7
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds ptr, ptr %13, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !15
  %119 = trunc i64 %102 to i32
  %120 = tail call fastcc i32 @iClip3(i32 noundef %8, i32 noundef %119) #7
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds ptr, ptr %13, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !15
  %124 = add nuw nsw i64 %102, 1
  %125 = trunc i64 %124 to i32
  %126 = tail call fastcc i32 @iClip3(i32 noundef %8, i32 noundef %125) #7
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds ptr, ptr %13, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !15
  %130 = trunc i64 %102 to i32
  %131 = add i32 %130, 2
  %132 = tail call fastcc i32 @iClip3(i32 noundef %8, i32 noundef %131) #7
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds ptr, ptr %13, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !15
  %136 = trunc i64 %102 to i32
  %137 = add i32 %136, 3
  %138 = tail call fastcc i32 @iClip3(i32 noundef %8, i32 noundef %137) #7
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds ptr, ptr %13, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !15
  %142 = load ptr, ptr %36, align 8, !tbaa !15
  %143 = getelementptr inbounds ptr, ptr %142, i64 %102
  %144 = load ptr, ptr %143, align 8, !tbaa !15
  br label %145

145:                                              ; preds = %105, %145
  %146 = phi i64 [ 0, %105 ], [ %170, %145 ]
  %147 = getelementptr inbounds i32, ptr %112, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !16
  %149 = getelementptr inbounds i32, ptr %118, i64 %146
  %150 = load i32, ptr %149, align 4, !tbaa !16
  %151 = getelementptr inbounds i32, ptr %123, i64 %146
  %152 = load i32, ptr %151, align 4, !tbaa !16
  %153 = getelementptr inbounds i32, ptr %129, i64 %146
  %154 = load i32, ptr %153, align 4, !tbaa !16
  %155 = getelementptr inbounds i32, ptr %135, i64 %146
  %156 = load i32, ptr %155, align 4, !tbaa !16
  %157 = getelementptr inbounds i32, ptr %141, i64 %146
  %158 = load i32, ptr %157, align 4, !tbaa !16
  %159 = add i32 %154, %152
  %160 = mul i32 %159, 20
  %161 = add i32 %156, %150
  %162 = mul i32 %161, -5
  %163 = add i32 %160, %148
  %164 = add i32 %163, %162
  %165 = add i32 %164, %158
  %166 = tail call fastcc i32 @rshift_rnd_sign(i32 noundef %165) #7
  %167 = tail call fastcc i32 @iClip3(i32 noundef %106, i32 noundef %166) #7
  %168 = trunc i32 %167 to i16
  %169 = getelementptr inbounds i16, ptr %144, i64 %146
  store i16 %168, ptr %169, align 2, !tbaa !23
  %170 = add nuw nsw i64 %146, 1
  %171 = icmp eq i64 %170, %38
  br i1 %171, label %172, label %145, !llvm.loop !32

172:                                              ; preds = %145, %103
  %173 = phi i64 [ %104, %103 ], [ %124, %145 ]
  %174 = icmp eq i64 %173, %37
  br i1 %174, label %175, label %101, !llvm.loop !33

175:                                              ; preds = %172, %2, %30
  %176 = load i32, ptr %0, align 8, !tbaa !17
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %358, label %178

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.frame_format, ptr %0, i64 0, i32 3, i64 1
  %180 = load i32, ptr %179, align 4, !tbaa !16
  %181 = add nsw i32 %180, -1
  %182 = getelementptr inbounds %struct.frame_format, ptr %0, i64 0, i32 4, i64 1
  %183 = load i32, ptr %182, align 4, !tbaa !16
  %184 = add nsw i32 %183, -1
  br label %185

185:                                              ; preds = %178, %351
  %186 = phi i32 [ %180, %178 ], [ %354, %351 ]
  %187 = phi i32 [ %183, %178 ], [ %353, %351 ]
  %188 = phi i32 [ %180, %178 ], [ %355, %351 ]
  %189 = phi i32 [ %183, %178 ], [ %352, %351 ]
  %190 = phi i64 [ 1, %178 ], [ %356, %351 ]
  %191 = icmp sgt i32 %189, 0
  br i1 %191, label %192, label %351

192:                                              ; preds = %185
  %193 = getelementptr inbounds %struct.image_data, ptr %1, i64 0, i32 1, i64 %190
  br label %202

194:                                              ; preds = %270
  %195 = icmp sgt i32 %272, 0
  br i1 %195, label %196, label %351

196:                                              ; preds = %194
  %197 = icmp sgt i32 %271, 0
  %198 = getelementptr inbounds %struct.frame_format, ptr %0, i64 0, i32 16, i64 %190
  %199 = getelementptr inbounds %struct.image_data, ptr %0, i64 0, i32 1, i64 %190
  %200 = zext nneg i32 %272 to i64
  %201 = zext nneg i32 %271 to i64
  br label %277

202:                                              ; preds = %192, %270
  %203 = phi i32 [ %186, %192 ], [ %271, %270 ]
  %204 = phi i32 [ %187, %192 ], [ %272, %270 ]
  %205 = phi i32 [ %188, %192 ], [ %273, %270 ]
  %206 = phi i64 [ 0, %192 ], [ %274, %270 ]
  %207 = icmp sgt i32 %205, 0
  br i1 %207, label %208, label %270

208:                                              ; preds = %202
  %209 = load ptr, ptr %193, align 8, !tbaa !15
  %210 = getelementptr inbounds ptr, ptr %209, i64 %206
  %211 = load ptr, ptr %210, align 8, !tbaa !15
  %212 = getelementptr inbounds ptr, ptr %13, i64 %206
  %213 = load ptr, ptr %212, align 8, !tbaa !15
  br label %214

214:                                              ; preds = %208, %214
  %215 = phi i64 [ 0, %208 ], [ %236, %214 ]
  %216 = trunc i64 %215 to i32
  %217 = add i32 %216, -2
  %218 = tail call fastcc i32 @iClip3(i32 noundef %181, i32 noundef %217) #7
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i16, ptr %211, i64 %219
  %221 = load i16, ptr %220, align 2, !tbaa !23
  %222 = zext i16 %221 to i32
  %223 = trunc i64 %215 to i32
  %224 = add i32 %223, -1
  %225 = tail call fastcc i32 @iClip3(i32 noundef %181, i32 noundef %224) #7
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i16, ptr %211, i64 %226
  %228 = load i16, ptr %227, align 2, !tbaa !23
  %229 = zext i16 %228 to i32
  %230 = trunc i64 %215 to i32
  %231 = tail call fastcc i32 @iClip3(i32 noundef %181, i32 noundef %230) #7
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i16, ptr %211, i64 %232
  %234 = load i16, ptr %233, align 2, !tbaa !23
  %235 = zext i16 %234 to i32
  %236 = add nuw nsw i64 %215, 1
  %237 = trunc i64 %236 to i32
  %238 = tail call fastcc i32 @iClip3(i32 noundef %181, i32 noundef %237) #7
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i16, ptr %211, i64 %239
  %241 = load i16, ptr %240, align 2, !tbaa !23
  %242 = zext i16 %241 to i32
  %243 = trunc i64 %215 to i32
  %244 = add i32 %243, 2
  %245 = tail call fastcc i32 @iClip3(i32 noundef %181, i32 noundef %244) #7
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i16, ptr %211, i64 %246
  %248 = load i16, ptr %247, align 2, !tbaa !23
  %249 = zext i16 %248 to i32
  %250 = trunc i64 %215 to i32
  %251 = add i32 %250, 3
  %252 = tail call fastcc i32 @iClip3(i32 noundef %181, i32 noundef %251) #7
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i16, ptr %211, i64 %253
  %255 = load i16, ptr %254, align 2, !tbaa !23
  %256 = zext i16 %255 to i32
  %257 = add nuw nsw i32 %242, %235
  %258 = mul nuw nsw i32 %257, 20
  %259 = add nuw nsw i32 %249, %229
  %260 = mul nsw i32 %259, -5
  %261 = add nuw nsw i32 %258, %222
  %262 = add nuw nsw i32 %261, %256
  %263 = add nsw i32 %262, %260
  %264 = getelementptr inbounds i32, ptr %213, i64 %215
  store i32 %263, ptr %264, align 4, !tbaa !16
  %265 = load i32, ptr %179, align 4, !tbaa !16
  %266 = sext i32 %265 to i64
  %267 = icmp slt i64 %236, %266
  br i1 %267, label %214, label %268, !llvm.loop !34

268:                                              ; preds = %214
  %269 = load i32, ptr %182, align 4, !tbaa !16
  br label %270

270:                                              ; preds = %268, %202
  %271 = phi i32 [ %265, %268 ], [ %203, %202 ]
  %272 = phi i32 [ %269, %268 ], [ %204, %202 ]
  %273 = phi i32 [ %265, %268 ], [ %205, %202 ]
  %274 = add nuw nsw i64 %206, 1
  %275 = sext i32 %272 to i64
  %276 = icmp slt i64 %274, %275
  br i1 %276, label %202, label %194, !llvm.loop !35

277:                                              ; preds = %196, %348
  %278 = phi i64 [ 0, %196 ], [ %349, %348 ]
  br i1 %197, label %281, label %279

279:                                              ; preds = %277
  %280 = add nuw nsw i64 %278, 1
  br label %348

281:                                              ; preds = %277
  %282 = load i32, ptr %198, align 4, !tbaa !16
  %283 = trunc i64 %278 to i32
  %284 = add i32 %283, -2
  %285 = tail call fastcc i32 @iClip3(i32 noundef %184, i32 noundef %284) #7
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds ptr, ptr %13, i64 %286
  %288 = load ptr, ptr %287, align 8, !tbaa !15
  %289 = trunc i64 %278 to i32
  %290 = add i32 %289, -1
  %291 = tail call fastcc i32 @iClip3(i32 noundef %184, i32 noundef %290) #7
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds ptr, ptr %13, i64 %292
  %294 = load ptr, ptr %293, align 8, !tbaa !15
  %295 = trunc i64 %278 to i32
  %296 = tail call fastcc i32 @iClip3(i32 noundef %184, i32 noundef %295) #7
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds ptr, ptr %13, i64 %297
  %299 = load ptr, ptr %298, align 8, !tbaa !15
  %300 = add nuw nsw i64 %278, 1
  %301 = trunc i64 %300 to i32
  %302 = tail call fastcc i32 @iClip3(i32 noundef %184, i32 noundef %301) #7
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds ptr, ptr %13, i64 %303
  %305 = load ptr, ptr %304, align 8, !tbaa !15
  %306 = trunc i64 %278 to i32
  %307 = add i32 %306, 2
  %308 = tail call fastcc i32 @iClip3(i32 noundef %184, i32 noundef %307) #7
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds ptr, ptr %13, i64 %309
  %311 = load ptr, ptr %310, align 8, !tbaa !15
  %312 = trunc i64 %278 to i32
  %313 = add i32 %312, 3
  %314 = tail call fastcc i32 @iClip3(i32 noundef %184, i32 noundef %313) #7
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds ptr, ptr %13, i64 %315
  %317 = load ptr, ptr %316, align 8, !tbaa !15
  %318 = load ptr, ptr %199, align 8, !tbaa !15
  %319 = getelementptr inbounds ptr, ptr %318, i64 %278
  %320 = load ptr, ptr %319, align 8, !tbaa !15
  br label %321

321:                                              ; preds = %281, %321
  %322 = phi i64 [ 0, %281 ], [ %346, %321 ]
  %323 = getelementptr inbounds i32, ptr %288, i64 %322
  %324 = load i32, ptr %323, align 4, !tbaa !16
  %325 = getelementptr inbounds i32, ptr %294, i64 %322
  %326 = load i32, ptr %325, align 4, !tbaa !16
  %327 = getelementptr inbounds i32, ptr %299, i64 %322
  %328 = load i32, ptr %327, align 4, !tbaa !16
  %329 = getelementptr inbounds i32, ptr %305, i64 %322
  %330 = load i32, ptr %329, align 4, !tbaa !16
  %331 = getelementptr inbounds i32, ptr %311, i64 %322
  %332 = load i32, ptr %331, align 4, !tbaa !16
  %333 = getelementptr inbounds i32, ptr %317, i64 %322
  %334 = load i32, ptr %333, align 4, !tbaa !16
  %335 = add i32 %330, %328
  %336 = mul i32 %335, 20
  %337 = add i32 %332, %326
  %338 = mul i32 %337, -5
  %339 = add i32 %336, %324
  %340 = add i32 %339, %338
  %341 = add i32 %340, %334
  %342 = tail call fastcc i32 @rshift_rnd_sign(i32 noundef %341) #7
  %343 = tail call fastcc i32 @iClip3(i32 noundef %282, i32 noundef %342) #7
  %344 = trunc i32 %343 to i16
  %345 = getelementptr inbounds i16, ptr %320, i64 %322
  store i16 %344, ptr %345, align 2, !tbaa !23
  %346 = add nuw nsw i64 %322, 1
  %347 = icmp eq i64 %346, %201
  br i1 %347, label %348, label %321, !llvm.loop !36

348:                                              ; preds = %321, %279
  %349 = phi i64 [ %280, %279 ], [ %300, %321 ]
  %350 = icmp eq i64 %349, %200
  br i1 %350, label %351, label %277, !llvm.loop !37

351:                                              ; preds = %348, %185, %194
  %352 = phi i32 [ %272, %194 ], [ %189, %185 ], [ %272, %348 ]
  %353 = phi i32 [ %272, %194 ], [ %187, %185 ], [ %272, %348 ]
  %354 = phi i32 [ %271, %194 ], [ %186, %185 ], [ %271, %348 ]
  %355 = phi i32 [ %273, %194 ], [ %188, %185 ], [ %271, %348 ]
  %356 = add nuw nsw i64 %190, 1
  %357 = icmp eq i64 %356, 3
  br i1 %357, label %358, label %185, !llvm.loop !38

358:                                              ; preds = %351, %175
  tail call void @free_mem2Dint(ptr noundef %13) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @rshift_rnd_sf(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = add nsw i32 %1, -1
  %4 = shl nuw i32 1, %3
  %5 = add nsw i32 %4, %0
  %6 = ashr i32 %5, %1
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @new_mem2Dint(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @iClip3(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @imax(i32 noundef %1) #7
  %4 = tail call fastcc i32 @imin(i32 noundef %3, i32 noundef %0) #7
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @rshift_rnd_sign(i32 noundef %0) unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = add nuw nsw i32 %0, 512
  %5 = lshr i32 %4, 10
  br label %11

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @iabs(i32 noundef %0) #7
  %8 = add nsw i32 %7, 512
  %9 = ashr i32 %8, 10
  %10 = sub nsw i32 0, %9
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i32 [ %5, %3 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: optsize
declare void @free_mem2Dint(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imax(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imin(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iabs(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  ret i32 %2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !9, i64 1064}
!6 = !{!"inp_par", !7, i64 0, !7, i64 255, !7, i64 510, !9, i64 768, !9, i64 772, !9, i64 776, !9, i64 780, !9, i64 784, !9, i64 788, !10, i64 792, !10, i64 928, !9, i64 1064, !9, i64 1068, !12, i64 1072, !12, i64 2040, !12, i64 3008, !9, i64 3976, !9, i64 3980, !9, i64 3984, !9, i64 3988, !9, i64 3992, !9, i64 3996, !9, i64 4000, !9, i64 4004, !9, i64 4008, !9, i64 4012}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"frame_format", !9, i64 0, !9, i64 4, !11, i64 8, !7, i64 16, !7, i64 28, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !7, i64 72, !9, i64 84, !7, i64 88, !7, i64 100, !7, i64 112, !9, i64 124, !9, i64 128}
!11 = !{!"double", !7, i64 0}
!12 = !{!"video_data_file", !7, i64 0, !7, i64 255, !7, i64 510, !9, i64 768, !9, i64 772, !10, i64 776, !9, i64 912, !9, i64 916, !9, i64 920, !9, i64 924, !9, i64 928, !9, i64 932, !9, i64 936, !9, i64 940, !9, i64 944, !9, i64 948, !9, i64 952, !13, i64 960}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!6, !9, i64 1068}
!15 = !{!13, !13, i64 0}
!16 = !{!9, !9, i64 0}
!17 = !{!18, !9, i64 0}
!18 = !{!"image_data", !10, i64 0, !7, i64 136, !7, i64 160, !7, i64 184, !7, i64 208, !7, i64 232, !7, i64 256, !7, i64 280, !7, i64 292, !7, i64 304}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20}
!23 = !{!24, !24, i64 0}
!24 = !{!"short", !7, i64 0}
!25 = distinct !{!25, !20}
!26 = distinct !{!26, !20}
!27 = distinct !{!27, !20}
!28 = distinct !{!28, !20}
!29 = distinct !{!29, !20}
!30 = distinct !{!30, !20}
!31 = distinct !{!31, !20}
!32 = distinct !{!32, !20}
!33 = distinct !{!33, !20}
!34 = distinct !{!34, !20}
!35 = distinct !{!35, !20}
!36 = distinct !{!36, !20}
!37 = distinct !{!37, !20}
!38 = distinct !{!38, !20}
