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

; Function Attrs: nounwind uwtable
define internal noundef i32 @open_file(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  store ptr null, ptr %1, align 8, !tbaa !34
  %3 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %6 = tail call ptr @mk_create_writer(ptr noundef %0) #8
  store ptr %6, ptr %3, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @free(ptr noundef %3) #8
  br label %10

9:                                                ; preds = %5
  store ptr %3, ptr %1, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %2, %9, %8
  %11 = phi i32 [ 0, %9 ], [ -1, %8 ], [ -1, %2 ]
  ret i32 %11
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef i32 @set_param(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 48
  %4 = load i32, ptr %3, align 4, !tbaa !42
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 47
  %8 = load i32, ptr %7, align 8, !tbaa !48
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 49
  %12 = load i32, ptr %11, align 8, !tbaa !49
  %13 = zext i32 %12 to i64
  %14 = mul nuw nsw i64 %13, 1000000000
  %15 = zext i32 %4 to i64
  %16 = udiv i64 %14, %15
  br label %17

17:                                               ; preds = %2, %6, %10
  %18 = phi i64 [ %16, %10 ], [ 0, %6 ], [ 0, %2 ]
  %19 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 5
  store i64 %18, ptr %19, align 8, !tbaa !50
  %20 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 5
  %21 = load i32, ptr %20, align 4, !tbaa !51
  %22 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 1
  store i32 %21, ptr %22, align 8, !tbaa !52
  %23 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !53
  %25 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 2
  store i32 %24, ptr %25, align 4, !tbaa !54
  %26 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 11, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !55
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 11
  %31 = load i32, ptr %30, align 4, !tbaa !56
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
  br i1 %48, label %49, label %61

49:                                               ; preds = %43, %49
  %50 = phi i64 [ %55, %49 ], [ %45, %43 ]
  %51 = phi i64 [ %56, %49 ], [ %44, %43 ]
  %52 = phi i64 [ %57, %49 ], [ undef, %43 ]
  %53 = urem i64 %50, %51
  %54 = icmp eq i64 %53, 0
  %55 = select i1 %54, i64 %50, i64 %51
  %56 = select i1 %54, i64 %51, i64 %53
  %57 = select i1 %54, i64 %51, i64 %52
  br i1 %54, label %58, label %49

58:                                               ; preds = %49
  %59 = sdiv i64 %45, %57
  %60 = sdiv i64 %44, %57
  br label %61

61:                                               ; preds = %58, %43
  %62 = phi i64 [ %60, %58 ], [ %44, %43 ]
  %63 = phi i64 [ %59, %58 ], [ %45, %43 ]
  %64 = trunc i64 %63 to i32
  %65 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 3
  store i32 %64, ptr %65, align 8, !tbaa !57
  %66 = trunc i64 %62 to i32
  %67 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 4
  store i32 %66, ptr %67, align 4, !tbaa !58
  %68 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 50
  %69 = load i32, ptr %68, align 4, !tbaa !59
  %70 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 7
  store i32 %69, ptr %70, align 4, !tbaa !60
  %71 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 51
  %72 = load i32, ptr %71, align 8, !tbaa !61
  %73 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 8
  store i32 %72, ptr %73, align 8, !tbaa !62
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @write_headers(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.x264_nal_t, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !63
  %5 = add nsw i32 %4, -4
  %6 = getelementptr inbounds %struct.x264_nal_t, ptr %1, i64 1, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !63
  %8 = add nsw i32 %7, -4
  %9 = getelementptr inbounds %struct.x264_nal_t, ptr %1, i64 2, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct.x264_nal_t, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = getelementptr inbounds i8, ptr %12, i64 4
  %14 = getelementptr inbounds %struct.x264_nal_t, ptr %1, i64 1, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  %16 = getelementptr inbounds i8, ptr %15, i64 4
  %17 = getelementptr inbounds %struct.x264_nal_t, ptr %1, i64 2, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !65
  %19 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !52
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %91, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !54
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %91, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !57
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %91, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !58
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %91, label %34

34:                                               ; preds = %30
  %35 = add nsw i32 %4, 7
  %36 = add nsw i32 %35, %8
  %37 = sext i32 %36 to i64
  %38 = tail call noalias ptr @malloc(i64 noundef %37) #7
  %39 = icmp eq ptr %38, null
  br i1 %39, label %91, label %40

40:                                               ; preds = %34
  store i8 1, ptr %38, align 1, !tbaa !66
  %41 = getelementptr inbounds i8, ptr %12, i64 5
  %42 = load i8, ptr %41, align 1, !tbaa !66
  %43 = getelementptr inbounds i8, ptr %38, i64 1
  store i8 %42, ptr %43, align 1, !tbaa !66
  %44 = getelementptr inbounds i8, ptr %12, i64 6
  %45 = load i8, ptr %44, align 1, !tbaa !66
  %46 = getelementptr inbounds i8, ptr %38, i64 2
  store i8 %45, ptr %46, align 1, !tbaa !66
  %47 = getelementptr inbounds i8, ptr %12, i64 7
  %48 = load i8, ptr %47, align 1, !tbaa !66
  %49 = getelementptr inbounds i8, ptr %38, i64 3
  store i8 %48, ptr %49, align 1, !tbaa !66
  %50 = getelementptr inbounds i8, ptr %38, i64 4
  store i8 -1, ptr %50, align 1, !tbaa !66
  %51 = getelementptr inbounds i8, ptr %38, i64 5
  store i8 -31, ptr %51, align 1, !tbaa !66
  %52 = lshr i32 %5, 8
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds i8, ptr %38, i64 6
  store i8 %53, ptr %54, align 1, !tbaa !66
  %55 = trunc i32 %5 to i8
  %56 = getelementptr inbounds i8, ptr %38, i64 7
  store i8 %55, ptr %56, align 1, !tbaa !66
  %57 = getelementptr inbounds i8, ptr %38, i64 8
  %58 = sext i32 %5 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %57, ptr nonnull align 1 %13, i64 %58, i1 false)
  %59 = sext i32 %4 to i64
  %60 = getelementptr i8, ptr %38, i64 %59
  %61 = getelementptr i8, ptr %60, i64 4
  store i8 1, ptr %61, align 1, !tbaa !66
  %62 = lshr i32 %8, 8
  %63 = trunc i32 %62 to i8
  %64 = getelementptr i8, ptr %60, i64 5
  store i8 %63, ptr %64, align 1, !tbaa !66
  %65 = trunc i32 %8 to i8
  %66 = getelementptr i8, ptr %60, i64 6
  store i8 %65, ptr %66, align 1, !tbaa !66
  %67 = getelementptr inbounds i8, ptr %38, i64 11
  %68 = getelementptr inbounds i8, ptr %67, i64 %58
  %69 = sext i32 %8 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %68, ptr nonnull align 1 %16, i64 %69, i1 false)
  %70 = load ptr, ptr %0, align 8, !tbaa !38
  %71 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 5
  %72 = load i64, ptr %71, align 8, !tbaa !50
  %73 = tail call i32 @mk_writeHeader(ptr noundef %70, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %38, i32 noundef %36, i64 noundef %72, i64 noundef 50000, i32 noundef %20, i32 noundef %24, i32 noundef %28, i32 noundef %32) #8
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %91, label %75

75:                                               ; preds = %40
  tail call void @free(ptr noundef %38) #8
  %76 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 6
  %77 = load i8, ptr %76, align 8, !tbaa !67
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load ptr, ptr %0, align 8, !tbaa !38
  %81 = tail call i32 @mk_start_frame(ptr noundef %80) #8
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %79
  store i8 1, ptr %76, align 8, !tbaa !67
  br label %84

84:                                               ; preds = %83, %75
  %85 = load ptr, ptr %0, align 8, !tbaa !38
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

; Function Attrs: nounwind uwtable
define internal i32 @write_frame(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 6
  %6 = load i8, ptr %5, align 8, !tbaa !67
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !38
  %10 = tail call i32 @mk_start_frame(ptr noundef %9) #8
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %41, label %12

12:                                               ; preds = %8
  store i8 1, ptr %5, align 8, !tbaa !67
  br label %13

13:                                               ; preds = %12, %4
  %14 = load ptr, ptr %0, align 8, !tbaa !38
  %15 = tail call i32 @mk_add_frame_data(ptr noundef %14, ptr noundef %1, i32 noundef %2) #8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %41, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.x264_picture_t, ptr %3, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !68
  %20 = sitofp i64 %19 to double
  %21 = fmul double %20, 1.000000e+09
  %22 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 7
  %23 = load i32, ptr %22, align 4, !tbaa !60
  %24 = uitofp i32 %23 to double
  %25 = fmul double %21, %24
  %26 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 8
  %27 = load i32, ptr %26, align 8, !tbaa !62
  %28 = uitofp i32 %27 to double
  %29 = fdiv double %25, %28
  %30 = fadd double %29, 5.000000e-01
  %31 = fptosi double %30 to i64
  store i8 0, ptr %5, align 8, !tbaa !67
  %32 = load ptr, ptr %0, align 8, !tbaa !38
  %33 = getelementptr inbounds %struct.x264_picture_t, ptr %3, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !73
  %35 = load i32, ptr %3, align 8, !tbaa !74
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

; Function Attrs: nounwind uwtable
define internal i32 @close_file(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = sub nsw i64 %1, %2
  %5 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !60
  %7 = zext i32 %6 to i64
  %8 = mul nsw i64 %4, %7
  %9 = getelementptr inbounds %struct.mkv_hnd_t, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !62
  %11 = zext i32 %10 to i64
  %12 = sdiv i64 %8, %11
  %13 = sitofp i64 %12 to double
  %14 = fadd double %13, 5.000000e-01
  %15 = fptosi double %14 to i64
  %16 = load ptr, ptr %0, align 8, !tbaa !38
  %17 = tail call i32 @mk_close(ptr noundef %16, i64 noundef %15) #8
  tail call void @free(ptr noundef %0) #8
  ret i32 %17
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare ptr @mk_create_writer(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare i32 @mk_writeHeader(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @mk_start_frame(ptr noundef) local_unnamed_addr #4

declare i32 @mk_add_frame_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @mk_set_frame_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @mk_close(ptr noundef, i64 noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }

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
!38 = !{!39, !35, i64 0}
!39 = !{!"", !35, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !41, i64 24, !36, i64 32, !40, i64 36, !40, i64 40}
!40 = !{!"int", !36, i64 0}
!41 = !{!"long", !36, i64 0}
!42 = !{!43, !40, i64 652}
!43 = !{!"x264_param_t", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !44, i64 44, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !40, i64 136, !40, i64 140, !40, i64 144, !35, i64 152, !36, i64 160, !36, i64 176, !36, i64 192, !36, i64 208, !36, i64 224, !36, i64 288, !35, i64 352, !35, i64 360, !40, i64 368, !40, i64 372, !35, i64 376, !45, i64 384, !47, i64 488, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !40, i64 648, !40, i64 652, !40, i64 656, !40, i64 660, !40, i64 664, !40, i64 668, !40, i64 672, !40, i64 676, !40, i64 680, !40, i64 684, !40, i64 688, !40, i64 692, !35, i64 696}
!44 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32}
!45 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !46, i64 72, !46, i64 76, !40, i64 80, !36, i64 84, !40, i64 92, !40, i64 96}
!46 = !{!"float", !36, i64 0}
!47 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !46, i64 24, !46, i64 28, !46, i64 32, !40, i64 36, !40, i64 40, !46, i64 44, !46, i64 48, !46, i64 52, !40, i64 56, !46, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !35, i64 80, !40, i64 88, !35, i64 96, !46, i64 104, !46, i64 108, !46, i64 112, !35, i64 120, !40, i64 128, !35, i64 136}
!48 = !{!43, !40, i64 648}
!49 = !{!43, !40, i64 656}
!50 = !{!39, !41, i64 24}
!51 = !{!43, !40, i64 20}
!52 = !{!39, !40, i64 8}
!53 = !{!43, !40, i64 24}
!54 = !{!39, !40, i64 12}
!55 = !{!43, !40, i64 48}
!56 = !{!43, !40, i64 44}
!57 = !{!39, !40, i64 16}
!58 = !{!39, !40, i64 20}
!59 = !{!43, !40, i64 660}
!60 = !{!39, !40, i64 36}
!61 = !{!43, !40, i64 664}
!62 = !{!39, !40, i64 40}
!63 = !{!64, !40, i64 8}
!64 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !35, i64 16}
!65 = !{!64, !35, i64 16}
!66 = !{!36, !36, i64 0}
!67 = !{!39, !36, i64 32}
!68 = !{!69, !41, i64 16}
!69 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !41, i64 24, !35, i64 32, !70, i64 40, !71, i64 96, !35, i64 128}
!70 = !{!"", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 24}
!71 = !{!"", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24}
!72 = !{!"double", !36, i64 0}
!73 = !{!69, !40, i64 12}
!74 = !{!69, !40, i64 0}
