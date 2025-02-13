; ModuleID = 'x264_src/output/matroska.c'
source_filename = "x264_src/output/matroska.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cli_output_t = type { ptr, ptr, ptr, ptr, ptr }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], ptr, ptr, i32, i32, ptr, %struct.anon.0, %struct.anon.1, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, float, float, float, i32, float, i32, i32, i32, ptr, i32, ptr, float, float, float, ptr, i32, ptr }
%struct.mkv_hnd_t = type { ptr, i32, i32, i32, i32, i64, i8, i32, i32 }
%struct.x264_nal_t = type { i32, i32, i32, ptr }
%struct.x264_picture_t = type { i32, i32, i32, i32, i64, i64, ptr, %struct.x264_image_t, %struct.x264_hrd_t, ptr }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x ptr] }
%struct.x264_hrd_t = type { double, double, double, double }

@mkv_output = dso_local local_unnamed_addr constant %struct.cli_output_t { ptr @open_file, ptr @set_param, ptr @write_headers, ptr @write_frame, ptr @close_file }, align 8
@.str = private unnamed_addr constant [5 x i8] c"x264\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"V_MPEG4/ISO/AVC\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @open_file(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  store ptr null, ptr %1, align 8, !tbaa !6
  %3 = tail call dereferenceable_or_null(48) ptr @calloc(i64 1, i64 48)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @mk_create_writer(ptr noundef %0) #8
  store ptr %6, ptr %3, align 8, !tbaa !10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @free(ptr noundef nonnull %3) #8
  br label %10

9:                                                ; preds = %5
  store ptr %3, ptr %1, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %2, %9, %8
  %11 = phi i32 [ 0, %9 ], [ -1, %8 ], [ -1, %2 ]
  ret i32 %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal noundef i32 @set_param(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 48
  %4 = load i32, ptr %3, align 4, !tbaa !14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 47
  %8 = load i32, ptr %7, align 8, !tbaa !20
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 49
  %12 = load i32, ptr %11, align 8, !tbaa !21
  %13 = zext i32 %12 to i64
  %14 = mul nuw nsw i64 %13, 1000000000
  %15 = zext i32 %4 to i64
  %16 = udiv i64 %14, %15
  br label %17

17:                                               ; preds = %2, %6, %10
  %18 = phi i64 [ %16, %10 ], [ 0, %6 ], [ 0, %2 ]
  %19 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 5
  store i64 %18, ptr %19, align 8, !tbaa !22
  %20 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 5
  %21 = load i32, ptr %20, align 4, !tbaa !23
  %22 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 1
  store i32 %21, ptr %22, align 8, !tbaa !24
  %23 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !25
  %25 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 2
  store i32 %24, ptr %25, align 4, !tbaa !26
  %26 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 11, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !27
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 11
  %31 = load i32, ptr %30, align 4, !tbaa !28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = sext i32 %21 to i64
  %35 = sext i32 %27 to i64
  %36 = mul nsw i64 %35, %34
  %37 = sext i32 %24 to i64
  %38 = sext i32 %31 to i64
  %39 = mul nsw i64 %38, %37
  br label %43

40:                                               ; preds = %29, %17
  %41 = sext i32 %21 to i64
  %42 = sext i32 %24 to i64
  br label %43

43:                                               ; preds = %40, %33
  %44 = phi i64 [ %39, %33 ], [ %42, %40 ]
  %45 = phi i64 [ %36, %33 ], [ %41, %40 ]
  %46 = icmp sgt i64 %45, 0
  %47 = icmp sgt i64 %44, 0
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = tail call fastcc i64 @gcd(i64 noundef %45, i64 noundef %44) #9
  %51 = sdiv i64 %45, %50
  %52 = sdiv i64 %44, %50
  br label %53

53:                                               ; preds = %49, %43
  %54 = phi i64 [ %52, %49 ], [ %44, %43 ]
  %55 = phi i64 [ %51, %49 ], [ %45, %43 ]
  %56 = trunc i64 %55 to i32
  %57 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 3
  store i32 %56, ptr %57, align 8, !tbaa !29
  %58 = trunc i64 %54 to i32
  %59 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 4
  store i32 %58, ptr %59, align 4, !tbaa !30
  %60 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 50
  %61 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 7
  %62 = load <2 x i32>, ptr %60, align 4, !tbaa !31
  store <2 x i32> %62, ptr %61, align 4, !tbaa !31
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @write_headers(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.x264_nal_t, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !32
  %5 = add nsw i32 %4, -4
  %6 = getelementptr inbounds %struct.x264_nal_t, ptr %1, i64 1, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !32
  %8 = add nsw i32 %7, -4
  %9 = getelementptr inbounds %struct.x264_nal_t, ptr %1, i64 2, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !32
  %11 = getelementptr inbounds %struct.x264_nal_t, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds i8, ptr %12, i64 4
  %14 = getelementptr inbounds %struct.x264_nal_t, ptr %1, i64 1, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds i8, ptr %15, i64 4
  %17 = getelementptr inbounds %struct.x264_nal_t, ptr %1, i64 2, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !24
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %91, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !26
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %91, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !29
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %91, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !30
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %91, label %34

34:                                               ; preds = %30
  %35 = add nsw i32 %4, 7
  %36 = add nsw i32 %35, %8
  %37 = sext i32 %36 to i64
  %38 = tail call noalias ptr @malloc(i64 noundef %37) #10
  %39 = icmp eq ptr %38, null
  br i1 %39, label %91, label %40

40:                                               ; preds = %34
  store i8 1, ptr %38, align 1, !tbaa !35
  %41 = getelementptr inbounds i8, ptr %12, i64 5
  %42 = load i8, ptr %41, align 1, !tbaa !35
  %43 = getelementptr inbounds i8, ptr %38, i64 1
  store i8 %42, ptr %43, align 1, !tbaa !35
  %44 = getelementptr inbounds i8, ptr %12, i64 6
  %45 = load i8, ptr %44, align 1, !tbaa !35
  %46 = getelementptr inbounds i8, ptr %38, i64 2
  store i8 %45, ptr %46, align 1, !tbaa !35
  %47 = getelementptr inbounds i8, ptr %12, i64 7
  %48 = load i8, ptr %47, align 1, !tbaa !35
  %49 = getelementptr inbounds i8, ptr %38, i64 3
  store i8 %48, ptr %49, align 1, !tbaa !35
  %50 = getelementptr inbounds i8, ptr %38, i64 4
  store i8 -1, ptr %50, align 1, !tbaa !35
  %51 = getelementptr inbounds i8, ptr %38, i64 5
  store i8 -31, ptr %51, align 1, !tbaa !35
  %52 = lshr i32 %5, 8
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds i8, ptr %38, i64 6
  store i8 %53, ptr %54, align 1, !tbaa !35
  %55 = trunc i32 %5 to i8
  %56 = getelementptr inbounds i8, ptr %38, i64 7
  store i8 %55, ptr %56, align 1, !tbaa !35
  %57 = getelementptr inbounds i8, ptr %38, i64 8
  %58 = sext i32 %5 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %57, ptr nonnull align 1 %13, i64 %58, i1 false)
  %59 = sext i32 %4 to i64
  %60 = getelementptr i8, ptr %38, i64 %59
  %61 = getelementptr i8, ptr %60, i64 4
  store i8 1, ptr %61, align 1, !tbaa !35
  %62 = lshr i32 %8, 8
  %63 = trunc i32 %62 to i8
  %64 = getelementptr i8, ptr %60, i64 5
  store i8 %63, ptr %64, align 1, !tbaa !35
  %65 = trunc i32 %8 to i8
  %66 = getelementptr i8, ptr %60, i64 6
  store i8 %65, ptr %66, align 1, !tbaa !35
  %67 = getelementptr inbounds i8, ptr %38, i64 11
  %68 = getelementptr inbounds i8, ptr %67, i64 %58
  %69 = sext i32 %8 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %68, ptr nonnull align 1 %16, i64 %69, i1 false)
  %70 = load ptr, ptr %0, align 8, !tbaa !10
  %71 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 5
  %72 = load i64, ptr %71, align 8, !tbaa !22
  %73 = tail call i32 @mk_writeHeader(ptr noundef %70, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %38, i32 noundef %36, i64 noundef %72, i64 noundef 50000, i32 noundef %20, i32 noundef %24, i32 noundef %28, i32 noundef %32) #8
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %91, label %75

75:                                               ; preds = %40
  tail call void @free(ptr noundef nonnull %38) #8
  %76 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 6
  %77 = load i8, ptr %76, align 8, !tbaa !36
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load ptr, ptr %0, align 8, !tbaa !10
  %81 = tail call i32 @mk_start_frame(ptr noundef %80) #8
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %79
  store i8 1, ptr %76, align 8, !tbaa !36
  br label %84

84:                                               ; preds = %83, %75
  %85 = load ptr, ptr %0, align 8, !tbaa !10
  %86 = tail call i32 @mk_add_frame_data(ptr noundef %85, ptr noundef %18, i32 noundef %10) #8
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = add nsw i32 %10, %5
  %90 = add nsw i32 %89, %8
  br label %91

91:                                               ; preds = %84, %79, %40, %34, %2, %22, %26, %30, %88
  %92 = phi i32 [ %90, %88 ], [ -1, %30 ], [ -1, %26 ], [ -1, %22 ], [ -1, %2 ], [ -1, %34 ], [ %73, %40 ], [ -1, %79 ], [ -1, %84 ]
  ret i32 %92
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @write_frame(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 6
  %6 = load i8, ptr %5, align 8, !tbaa !36
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !10
  %10 = tail call i32 @mk_start_frame(ptr noundef %9) #8
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %41, label %12

12:                                               ; preds = %8
  store i8 1, ptr %5, align 8, !tbaa !36
  br label %13

13:                                               ; preds = %12, %4
  %14 = load ptr, ptr %0, align 8, !tbaa !10
  %15 = tail call i32 @mk_add_frame_data(ptr noundef %14, ptr noundef %1, i32 noundef %2) #8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %41, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.x264_picture_t, ptr %3, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !37
  %20 = sitofp i64 %19 to double
  %21 = fmul double %20, 1.000000e+09
  %22 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 7
  %23 = load i32, ptr %22, align 4, !tbaa !42
  %24 = uitofp i32 %23 to double
  %25 = fmul double %21, %24
  %26 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 8
  %27 = load i32, ptr %26, align 8, !tbaa !43
  %28 = uitofp i32 %27 to double
  %29 = fdiv double %25, %28
  %30 = fadd double %29, 5.000000e-01
  %31 = fptosi double %30 to i64
  store i8 0, ptr %5, align 8, !tbaa !36
  %32 = load ptr, ptr %0, align 8, !tbaa !10
  %33 = getelementptr inbounds %struct.x264_picture_t, ptr %3, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !44
  %35 = load i32, ptr %3, align 8, !tbaa !45
  %36 = icmp eq i32 %35, 5
  %37 = zext i1 %36 to i32
  %38 = tail call i32 @mk_set_frame_flags(ptr noundef %32, i64 noundef %31, i32 noundef %34, i32 noundef %37) #8
  %39 = icmp sgt i32 %38, -1
  %40 = select i1 %39, i32 %2, i32 -1
  br label %41

41:                                               ; preds = %13, %8, %17
  %42 = phi i32 [ %40, %17 ], [ -1, %8 ], [ -1, %13 ]
  ret i32 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @close_file(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = sub nsw i64 %1, %2
  %5 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !42
  %7 = zext i32 %6 to i64
  %8 = mul nsw i64 %4, %7
  %9 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !43
  %11 = zext i32 %10 to i64
  %12 = sdiv i64 %8, %11
  %13 = sitofp i64 %12 to double
  %14 = fadd double %13, 5.000000e-01
  %15 = fptosi double %14 to i64
  %16 = load ptr, ptr %0, align 8, !tbaa !10
  %17 = tail call i32 @mk_close(ptr noundef %16, i64 noundef %15) #8
  tail call void @free(ptr noundef %0) #8
  ret i32 %17
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @mk_create_writer(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i64 @gcd(i64 noundef %0, i64 noundef %1) unnamed_addr #5 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i64 [ %0, %2 ], [ %5, %3 ]
  %5 = phi i64 [ %1, %2 ], [ %6, %3 ]
  %6 = urem i64 %4, %5
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %3

8:                                                ; preds = %3
  ret i64 %5
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare i32 @mk_writeHeader(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @mk_start_frame(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @mk_add_frame_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @mk_set_frame_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @mk_close(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize allocsize(0) }

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
!10 = !{!11, !7, i64 0}
!11 = !{!"", !7, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !13, i64 24, !8, i64 32, !12, i64 36, !12, i64 40}
!12 = !{!"int", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!15, !12, i64 652}
!15 = !{!"x264_param_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !16, i64 44, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !12, i64 128, !12, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !7, i64 152, !8, i64 160, !8, i64 176, !8, i64 192, !8, i64 208, !8, i64 224, !8, i64 288, !7, i64 352, !7, i64 360, !12, i64 368, !12, i64 372, !7, i64 376, !17, i64 384, !19, i64 488, !12, i64 632, !12, i64 636, !12, i64 640, !12, i64 644, !12, i64 648, !12, i64 652, !12, i64 656, !12, i64 660, !12, i64 664, !12, i64 668, !12, i64 672, !12, i64 676, !12, i64 680, !12, i64 684, !12, i64 688, !12, i64 692, !7, i64 696}
!16 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32}
!17 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !18, i64 72, !18, i64 76, !12, i64 80, !8, i64 84, !12, i64 92, !12, i64 96}
!18 = !{!"float", !8, i64 0}
!19 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !18, i64 24, !18, i64 28, !18, i64 32, !12, i64 36, !12, i64 40, !18, i64 44, !18, i64 48, !18, i64 52, !12, i64 56, !18, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !7, i64 80, !12, i64 88, !7, i64 96, !18, i64 104, !18, i64 108, !18, i64 112, !7, i64 120, !12, i64 128, !7, i64 136}
!20 = !{!15, !12, i64 648}
!21 = !{!15, !12, i64 656}
!22 = !{!11, !13, i64 24}
!23 = !{!15, !12, i64 20}
!24 = !{!11, !12, i64 8}
!25 = !{!15, !12, i64 24}
!26 = !{!11, !12, i64 12}
!27 = !{!15, !12, i64 48}
!28 = !{!15, !12, i64 44}
!29 = !{!11, !12, i64 16}
!30 = !{!11, !12, i64 20}
!31 = !{!12, !12, i64 0}
!32 = !{!33, !12, i64 8}
!33 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !7, i64 16}
!34 = !{!33, !7, i64 16}
!35 = !{!8, !8, i64 0}
!36 = !{!11, !8, i64 32}
!37 = !{!38, !13, i64 16}
!38 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !13, i64 16, !13, i64 24, !7, i64 32, !39, i64 40, !40, i64 96, !7, i64 128}
!39 = !{!"", !12, i64 0, !12, i64 4, !8, i64 8, !8, i64 24}
!40 = !{!"", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24}
!41 = !{!"double", !8, i64 0}
!42 = !{!11, !12, i64 36}
!43 = !{!11, !12, i64 40}
!44 = !{!38, !12, i64 12}
!45 = !{!38, !12, i64 0}
