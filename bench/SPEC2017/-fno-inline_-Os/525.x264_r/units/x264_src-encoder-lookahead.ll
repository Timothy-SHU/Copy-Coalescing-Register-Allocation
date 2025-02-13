; ModuleID = 'x264_src/encoder/lookahead.c'
source_filename = "x264_src/encoder/lookahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], ptr, ptr, i32, i32, ptr, %struct.anon.0, %struct.anon.1, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, float, float, float, i32, float, i32, i32, i32, ptr, i32, ptr, float, float, float, ptr, i32, ptr }
%struct.x264_lookahead_t = type { i8, i8, i8, i32, i32, ptr, %struct.x264_synch_frame_list_t, %struct.x264_synch_frame_list_t, %struct.x264_synch_frame_list_t }
%struct.x264_synch_frame_list_t = type { ptr, i32, i32, i32, i32, i32 }
%struct.x264_t = type { %struct.x264_param_t, [129 x ptr], i32, i32, i32, i32, i32, %struct.anon.2, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.x264_sps_t], ptr, [1 x %struct.x264_pps_t], ptr, i32, i32, [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [92 x ptr], [92 x [4 x ptr]], ptr, [8 x i8], %struct.x264_slice_header_t, %struct.x264_cabac_t, %struct.anon.8, ptr, ptr, i32, [19 x ptr], i32, [19 x ptr], [2 x i32], i32, i32, i64, %struct.anon.9, %struct.anon.10, ptr, %struct.anon.13, [2 x [64 x i32]], [2 x [64 x i16]], [2 x i32], ptr, [2 x [3 x ptr]], [2 x ptr], [7 x ptr], [7 x ptr], [12 x ptr], [12 x ptr], ptr, %struct.x264_pixel_function_t, %struct.x264_mc_functions_t, %struct.x264_dct_function_t, %struct.x264_zigzag_function_t, %struct.x264_quant_function_t, %struct.x264_deblock_function_t, ptr, [8 x i8] }
%struct.anon.2 = type { i32, i32, ptr, i32, ptr, %struct.bs_s }
%struct.bs_s = type { ptr, ptr, ptr, i64, i32, i32 }
%struct.x264_sps_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.3, i32, %struct.anon.4, i32 }
%struct.anon.3 = type { i32, i32, i32, i32 }
%struct.anon.4 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.5, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.5 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_pps_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x ptr] }
%struct.x264_slice_header_t = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, [2 x [16 x %struct.anon.6]], [32 x [3 x %struct.x264_weight_t]], i32, i32, [16 x %struct.anon.7], i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.anon.6 = type { i32, i32 }
%struct.x264_weight_t = type { [8 x i16], [8 x i16], i32, i32, i32, ptr, [8 x i8] }
%struct.anon.7 = type { i32, i32 }
%struct.x264_cabac_t = type { i32, i32, i32, i32, ptr, ptr, ptr, [8 x i8], i32, [460 x i8] }
%struct.anon.8 = type { ptr, [2 x ptr], ptr, [18 x ptr], i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], i64, i64, i32, i32 }
%struct.anon.9 = type { [16 x i16], [2 x [4 x i16]], [4 x [64 x i16]], [24 x [16 x i16]] }
%struct.anon.10 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [4 x i32], [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [2 x ptr], [2 x ptr], [2 x [32 x ptr]], ptr, ptr, ptr, [16 x ptr], i32, i32, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8], %struct.anon.11, %struct.anon.12, i32, i32, i32, i32, i32, i32, i32, i32, [2 x [2 x i32]], i32, i32, [2 x [32 x [4 x i16]]], ptr, [2 x [32 x [4 x i8]]], ptr, [18 x i8], i32, [34 x i8], [14 x i8] }
%struct.anon.11 = type { [384 x i8], [864 x i8], [256 x i8], [256 x i8], [3 x [64 x i16]], [15 x [16 x i16]], [4 x i32], [4 x i32], i32, i32, [8 x i8], [4 x [64 x i16]], [16 x [16 x i16]], [9 x i64], [8 x i8], [32 x i32], [3 x ptr], [3 x ptr], [3 x ptr], [2 x i32], [2 x [32 x [6 x ptr]]], [32 x ptr], [2 x [16 x ptr]], [3 x i32] }
%struct.anon.12 = type { [40 x i8], [8 x i8], [48 x i8], [2 x [40 x i8]], [2 x [40 x [2 x i16]]], [2 x [40 x [2 x i8]]], [40 x i8], [2 x [4 x [2 x i16]]], [2 x [4 x i8]], i32, [2 x i16], i32, i32, i32, i32, [8 x i8] }
%struct.anon.13 = type { %struct.anon.14, [5 x i32], [5 x i64], [5 x double], [17 x i32], [5 x i64], [5 x double], [5 x double], [5 x double], [5 x double], [5 x double], [5 x [19 x i64]], [2 x [17 x i64]], [2 x i64], [2 x [2 x [32 x i64]]], [6 x i64], [4 x [13 x i64]], [2 x i32], [2 x i32], [3 x i32] }
%struct.anon.14 = type { i32, i32, i32, [19 x i32], i32, i32, i32, [2 x i32], [2 x [32 x i32]], [17 x i32], [6 x i32], [4 x [13 x i32]], [2 x i32], [3 x i64], double }
%struct.x264_pixel_function_t = type { [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [4 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], ptr, [4 x ptr], [4 x ptr], ptr, ptr, [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_mc_functions_t = type { ptr, ptr, ptr, [10 x ptr], [7 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_dct_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_zigzag_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_quant_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [6 x ptr], [5 x ptr] }
%struct.x264_deblock_function_t = type { [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], ptr }
%struct.x264_frame = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, float, float, i32, i32, [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, [3 x ptr], [4 x ptr], [4 x ptr], ptr, [4 x ptr], [4 x ptr], [8 x i8], [16 x [3 x %struct.x264_weight_t]], [16 x ptr], i32, ptr, ptr, ptr, [2 x ptr], ptr, [2 x [17 x ptr]], [18 x [18 x ptr]], [2 x [17 x ptr]], [2 x ptr], [2 x i32], [2 x [16 x i32]], [2 x i16], [18 x [18 x i32]], [18 x [18 x i32]], i32, [18 x i32], [18 x [18 x ptr]], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [18 x float], i32, i64, %struct.x264_hrd_t, [251 x i8], [251 x i32], [251 x double], i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32 }
%struct.x264_hrd_t = type { double, double, double, double }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @x264_lookahead_init(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @x264_malloc(i32 noundef 120) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %77, label %5

5:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %3, i8 0, i64 120, i1 false)
  %6 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = zext nneg i32 %7 to i64
  br label %19

11:                                               ; preds = %19, %5
  %12 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 13
  %13 = load i32, ptr %12, align 4, !tbaa !64
  %14 = sub nsw i32 0, %13
  %15 = getelementptr inbounds %struct.x264_lookahead_t, ptr %3, i64 0, i32 3
  store i32 %14, ptr %15, align 4, !tbaa !65
  %16 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  %17 = load i32, ptr %16, align 8, !tbaa !68
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %34

19:                                               ; preds = %9, %19
  %20 = phi i64 [ 0, %9 ], [ %24, %19 ]
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !69
  %23 = getelementptr inbounds %struct.x264_t, ptr %22, i64 0, i32 75
  store ptr %3, ptr %23, align 16, !tbaa !70
  %24 = add nuw nsw i64 %20, 1
  %25 = icmp eq i64 %24, %10
  br i1 %25, label %11, label %19, !llvm.loop !71

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 10
  %28 = load i32, ptr %27, align 8, !tbaa !73
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  %32 = load i32, ptr %31, align 4, !tbaa !74
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30, %11
  %35 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  %36 = load i32, ptr %35, align 8, !tbaa !75
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i8
  br label %39

39:                                               ; preds = %34, %30, %26
  %40 = phi i8 [ 0, %30 ], [ 0, %26 ], [ %38, %34 ]
  %41 = getelementptr inbounds %struct.x264_lookahead_t, ptr %3, i64 0, i32 2
  store i8 %40, ptr %41, align 2, !tbaa !76
  %42 = getelementptr inbounds %struct.x264_lookahead_t, ptr %3, i64 0, i32 4
  store i32 %1, ptr %42, align 8, !tbaa !77
  %43 = getelementptr inbounds %struct.x264_lookahead_t, ptr %3, i64 0, i32 6
  %44 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 4
  %45 = load i32, ptr %44, align 16, !tbaa !78
  %46 = add nsw i32 %45, 3
  %47 = tail call i32 @x264_synch_frame_list_init(ptr noundef nonnull %43, i32 noundef %46) #5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.x264_lookahead_t, ptr %3, i64 0, i32 7
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 9
  %52 = load i32, ptr %51, align 4, !tbaa !79
  %53 = add nsw i32 %52, 3
  %54 = tail call i32 @x264_synch_frame_list_init(ptr noundef nonnull %50, i32 noundef %53) #5
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.x264_lookahead_t, ptr %3, i64 0, i32 8
  %58 = load i32, ptr %51, align 4, !tbaa !79
  %59 = add nsw i32 %58, 3
  %60 = tail call i32 @x264_synch_frame_list_init(ptr noundef nonnull %57, i32 noundef %59) #5
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %56
  %63 = load i32, ptr %44, align 16, !tbaa !78
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr %6, align 4, !tbaa !34
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !69
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(33344) %69, ptr noundef nonnull align 16 dereferenceable(33344) %0, i64 33344, i1 false), !tbaa.struct !80
  %70 = tail call i32 @x264_macroblock_cache_allocate(ptr noundef %69) #5
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = tail call i32 @x264_macroblock_thread_allocate(ptr noundef nonnull %69, i32 noundef 1) #5
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.x264_lookahead_t, ptr %3, i64 0, i32 1
  store i8 1, ptr %76, align 1, !tbaa !86
  br label %78

77:                                               ; preds = %72, %65, %39, %49, %56, %2
  tail call void @x264_free(ptr noundef %3) #5
  br label %78

78:                                               ; preds = %62, %77, %75
  %79 = phi i32 [ -1, %77 ], [ 0, %75 ], [ 0, %62 ]
  ret i32 %79
}

; Function Attrs: optsize
declare ptr @x264_malloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare i32 @x264_synch_frame_list_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare i32 @x264_macroblock_cache_allocate(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @x264_macroblock_thread_allocate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @x264_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_lookahead_delete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 16, !tbaa !78
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 75
  %7 = load ptr, ptr %6, align 16, !tbaa !70
  store volatile i8 1, ptr %7, align 8, !tbaa !87
  %8 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !34
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !69
  tail call void @x264_macroblock_cache_free(ptr noundef %12) #5
  %13 = load i32, ptr %8, align 4, !tbaa !34
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !69
  tail call void @x264_macroblock_thread_free(ptr noundef %16, i32 noundef 1) #5
  %17 = load i32, ptr %8, align 4, !tbaa !34
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !69
  tail call void @x264_free(ptr noundef %20) #5
  br label %21

21:                                               ; preds = %5, %1
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 75
  %23 = load ptr, ptr %22, align 16, !tbaa !70
  %24 = getelementptr inbounds %struct.x264_lookahead_t, ptr %23, i64 0, i32 6
  tail call void @x264_synch_frame_list_delete(ptr noundef nonnull %24) #5
  %25 = load ptr, ptr %22, align 16, !tbaa !70
  %26 = getelementptr inbounds %struct.x264_lookahead_t, ptr %25, i64 0, i32 7
  tail call void @x264_synch_frame_list_delete(ptr noundef nonnull %26) #5
  %27 = load ptr, ptr %22, align 16, !tbaa !70
  %28 = getelementptr inbounds %struct.x264_lookahead_t, ptr %27, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !88
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %21
  tail call void @x264_frame_push_unused(ptr noundef nonnull %0, ptr noundef nonnull %29) #5
  %32 = load ptr, ptr %22, align 16, !tbaa !70
  br label %33

33:                                               ; preds = %31, %21
  %34 = phi ptr [ %32, %31 ], [ %27, %21 ]
  %35 = getelementptr inbounds %struct.x264_lookahead_t, ptr %34, i64 0, i32 8
  tail call void @x264_synch_frame_list_delete(ptr noundef nonnull %35) #5
  %36 = load ptr, ptr %22, align 16, !tbaa !70
  tail call void @x264_free(ptr noundef %36) #5
  ret void
}

; Function Attrs: optsize
declare void @x264_macroblock_cache_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @x264_macroblock_thread_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @x264_synch_frame_list_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @x264_frame_push_unused(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_lookahead_put_frame(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 16, !tbaa !78
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 75
  %7 = load ptr, ptr %6, align 16, !tbaa !70
  %8 = getelementptr inbounds %struct.x264_lookahead_t, ptr %7, i64 0, i32 7
  %9 = getelementptr inbounds %struct.x264_lookahead_t, ptr %7, i64 0, i32 6
  %10 = select i1 %5, ptr %8, ptr %9
  tail call void @x264_synch_frame_list_push(ptr noundef nonnull %10, ptr noundef %1) #5
  ret void
}

; Function Attrs: optsize
declare void @x264_synch_frame_list_push(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @x264_lookahead_is_empty(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 75
  %3 = load ptr, ptr %2, align 16, !tbaa !70
  %4 = getelementptr inbounds %struct.x264_lookahead_t, ptr %3, i64 0, i32 7, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !89
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.x264_lookahead_t, ptr %3, i64 0, i32 8, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !90
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i32 [ 0, %1 ], [ %11, %7 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_lookahead_get_frames(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 16, !tbaa !78
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 75
  %7 = load ptr, ptr %6, align 16, !tbaa !70
  %8 = getelementptr inbounds %struct.x264_lookahead_t, ptr %7, i64 0, i32 8, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !90
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %53

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.x264_lookahead_t, ptr %7, i64 0, i32 1
  %13 = load i8, ptr %12, align 1, !tbaa !86
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %53, label %15, !llvm.loop !91

15:                                               ; preds = %11, %15
  br label %15

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43
  %18 = load ptr, ptr %17, align 16, !tbaa !92
  %19 = load ptr, ptr %18, align 8, !tbaa !69
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %54

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 75
  %23 = load ptr, ptr %22, align 16, !tbaa !70
  %24 = getelementptr inbounds %struct.x264_lookahead_t, ptr %23, i64 0, i32 7, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !89
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %54, label %27

27:                                               ; preds = %21
  tail call void @x264_slicetype_decide(ptr noundef nonnull %0) #5
  %28 = load ptr, ptr %22, align 16, !tbaa !70
  %29 = getelementptr inbounds %struct.x264_lookahead_t, ptr %28, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !93
  %31 = load ptr, ptr %30, align 8, !tbaa !69
  tail call fastcc void @x264_lookahead_update_last_nonb(ptr noundef nonnull %0, ptr noundef %31) #6
  %32 = load ptr, ptr %22, align 16, !tbaa !70
  %33 = getelementptr inbounds %struct.x264_lookahead_t, ptr %32, i64 0, i32 8
  %34 = getelementptr inbounds %struct.x264_lookahead_t, ptr %32, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !93
  %36 = load ptr, ptr %35, align 8, !tbaa !69
  %37 = getelementptr inbounds %struct.x264_frame, ptr %36, i64 0, i32 19
  %38 = load i8, ptr %37, align 2, !tbaa !94
  %39 = zext i8 %38 to i32
  %40 = add nuw nsw i32 %39, 1
  tail call fastcc void @x264_lookahead_shift(ptr noundef nonnull %33, ptr noundef nonnull %34, i32 noundef %40) #6
  %41 = load ptr, ptr %22, align 16, !tbaa !70
  %42 = getelementptr inbounds %struct.x264_lookahead_t, ptr %41, i64 0, i32 2
  %43 = load i8, ptr %42, align 2, !tbaa !76
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %27
  %46 = getelementptr inbounds %struct.x264_lookahead_t, ptr %41, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !88
  %48 = getelementptr inbounds %struct.x264_frame, ptr %47, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !97
  %50 = add i32 %49, -1
  %51 = icmp ult i32 %50, 2
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  tail call void @x264_slicetype_analyse(ptr noundef nonnull %0, i32 noundef 1) #5
  br label %53

53:                                               ; preds = %27, %52, %45, %5, %11
  tail call fastcc void @x264_lookahead_encoder_shift(ptr noundef nonnull %0) #6
  br label %54

54:                                               ; preds = %53, %16, %21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_lookahead_encoder_shift(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !98 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 75
  %3 = load ptr, ptr %2, align 16, !tbaa !70
  %4 = getelementptr inbounds %struct.x264_lookahead_t, ptr %3, i64 0, i32 8, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !90
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.x264_lookahead_t, ptr %3, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !99
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  %11 = getelementptr inbounds %struct.x264_frame, ptr %10, i64 0, i32 19
  %12 = load i8, ptr %11, align 2, !tbaa !94
  %13 = zext i8 %12 to i32
  %14 = add nuw nsw i32 %13, 1
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43
  br label %16

16:                                               ; preds = %7, %16
  %17 = phi ptr [ %3, %7 ], [ %24, %16 ]
  %18 = phi i32 [ %14, %7 ], [ %19, %16 ]
  %19 = add nsw i32 %18, -1
  %20 = load ptr, ptr %15, align 16, !tbaa !92
  %21 = getelementptr inbounds %struct.x264_lookahead_t, ptr %17, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !99
  %23 = tail call ptr @x264_frame_shift(ptr noundef %22) #5
  tail call void @x264_frame_push(ptr noundef %20, ptr noundef %23) #5
  %24 = load ptr, ptr %2, align 16, !tbaa !70
  %25 = getelementptr inbounds %struct.x264_lookahead_t, ptr %24, i64 0, i32 8, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !90
  %27 = add nsw i32 %26, -1
  store i32 %27, ptr %25, align 4, !tbaa !90
  %28 = icmp eq i32 %19, 0
  br i1 %28, label %29, label %16, !llvm.loop !100

29:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: optsize
declare void @x264_slicetype_decide(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_lookahead_update_last_nonb(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !101 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 75
  %4 = load ptr, ptr %3, align 16, !tbaa !70
  %5 = getelementptr inbounds %struct.x264_lookahead_t, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  tail call void @x264_frame_push_unused(ptr noundef nonnull %0, ptr noundef nonnull %6) #5
  %9 = load ptr, ptr %3, align 16, !tbaa !70
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi ptr [ %9, %8 ], [ %4, %2 ]
  %12 = getelementptr inbounds %struct.x264_lookahead_t, ptr %11, i64 0, i32 5
  store ptr %1, ptr %12, align 8, !tbaa !88
  %13 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 78
  %14 = load i32, ptr %13, align 16, !tbaa !102
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %13, align 16, !tbaa !102
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_lookahead_shift(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !103 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.x264_synch_frame_list_t, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.x264_synch_frame_list_t, ptr %1, i64 0, i32 2
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i32 [ %2, %5 ], [ %10, %8 ]
  %10 = add nsw i32 %9, -1
  %11 = load ptr, ptr %1, align 8, !tbaa !104
  %12 = tail call ptr @x264_frame_shift(ptr noundef %11) #5
  %13 = load ptr, ptr %0, align 8, !tbaa !104
  %14 = load i32, ptr %6, align 4, !tbaa !105
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %6, align 4, !tbaa !105
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds ptr, ptr %13, i64 %16
  store ptr %12, ptr %17, align 8, !tbaa !69
  %18 = load i32, ptr %7, align 4, !tbaa !105
  %19 = add nsw i32 %18, -1
  store i32 %19, ptr %7, align 4, !tbaa !105
  %20 = icmp eq i32 %10, 0
  br i1 %20, label %21, label %8, !llvm.loop !106

21:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: optsize
declare void @x264_slicetype_analyse(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @x264_frame_push(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @x264_frame_shift(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !37, i64 4}
!35 = !{!"x264_t", !36, i64 0, !38, i64 704, !37, i64 1736, !37, i64 1740, !37, i64 1744, !37, i64 1748, !37, i64 1752, !45, i64 1760, !41, i64 1832, !37, i64 1840, !37, i64 1844, !37, i64 1848, !37, i64 1852, !37, i64 1856, !37, i64 1860, !37, i64 1864, !37, i64 1868, !37, i64 1872, !37, i64 1876, !37, i64 1880, !37, i64 1884, !37, i64 1888, !37, i64 1892, !38, i64 1896, !41, i64 3200, !38, i64 3208, !41, i64 3328, !37, i64 3336, !37, i64 3340, !38, i64 3344, !38, i64 3376, !38, i64 3392, !38, i64 3424, !38, i64 3440, !38, i64 3472, !38, i64 3488, !38, i64 3520, !38, i64 3536, !38, i64 4272, !41, i64 7216, !48, i64 7232, !49, i64 13904, !50, i64 14416, !41, i64 14680, !41, i64 14688, !37, i64 14696, !38, i64 14704, !37, i64 14856, !38, i64 14864, !38, i64 15016, !37, i64 15024, !37, i64 15028, !47, i64 15032, !51, i64 15040, !52, i64 16368, !41, i64 26704, !55, i64 26712, !38, i64 30400, !38, i64 30912, !38, i64 31168, !41, i64 31176, !38, i64 31184, !38, i64 31232, !38, i64 31248, !38, i64 31304, !38, i64 31360, !38, i64 31456, !41, i64 31552, !58, i64 31560, !59, i64 32616, !60, i64 32912, !61, i64 33032, !62, i64 33080, !63, i64 33256, !41, i64 33328}
!36 = !{!"x264_param_t", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !40, i64 44, !37, i64 80, !37, i64 84, !37, i64 88, !37, i64 92, !37, i64 96, !37, i64 100, !37, i64 104, !37, i64 108, !37, i64 112, !37, i64 116, !37, i64 120, !37, i64 124, !37, i64 128, !37, i64 132, !37, i64 136, !37, i64 140, !37, i64 144, !41, i64 152, !38, i64 160, !38, i64 176, !38, i64 192, !38, i64 208, !38, i64 224, !38, i64 288, !41, i64 352, !41, i64 360, !37, i64 368, !37, i64 372, !41, i64 376, !42, i64 384, !44, i64 488, !37, i64 632, !37, i64 636, !37, i64 640, !37, i64 644, !37, i64 648, !37, i64 652, !37, i64 656, !37, i64 660, !37, i64 664, !37, i64 668, !37, i64 672, !37, i64 676, !37, i64 680, !37, i64 684, !37, i64 688, !37, i64 692, !41, i64 696}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32}
!41 = !{!"any pointer", !38, i64 0}
!42 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !37, i64 56, !37, i64 60, !37, i64 64, !37, i64 68, !43, i64 72, !43, i64 76, !37, i64 80, !38, i64 84, !37, i64 92, !37, i64 96}
!43 = !{!"float", !38, i64 0}
!44 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !37, i64 36, !37, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !37, i64 56, !43, i64 60, !37, i64 64, !37, i64 68, !37, i64 72, !41, i64 80, !37, i64 88, !41, i64 96, !43, i64 104, !43, i64 108, !43, i64 112, !41, i64 120, !37, i64 128, !41, i64 136}
!45 = !{!"", !37, i64 0, !37, i64 4, !41, i64 8, !37, i64 16, !41, i64 24, !46, i64 32}
!46 = !{!"bs_s", !41, i64 0, !41, i64 8, !41, i64 16, !47, i64 24, !37, i64 32, !37, i64 36}
!47 = !{!"long", !38, i64 0}
!48 = !{!"", !41, i64 0, !41, i64 8, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !37, i64 56, !38, i64 60, !37, i64 68, !37, i64 72, !37, i64 76, !37, i64 80, !37, i64 84, !37, i64 88, !37, i64 92, !38, i64 96, !38, i64 352, !37, i64 6496, !37, i64 6500, !38, i64 6504, !37, i64 6632, !37, i64 6636, !37, i64 6640, !37, i64 6644, !37, i64 6648, !37, i64 6652, !37, i64 6656, !37, i64 6660}
!49 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !41, i64 16, !41, i64 24, !41, i64 32, !37, i64 48, !38, i64 52}
!50 = !{!"", !41, i64 0, !38, i64 8, !41, i64 24, !38, i64 32, !37, i64 176, !37, i64 180, !37, i64 184, !37, i64 188, !37, i64 192, !37, i64 196, !37, i64 200, !47, i64 208, !47, i64 216, !38, i64 224, !47, i64 240, !47, i64 248, !37, i64 256, !37, i64 260}
!51 = !{!"", !38, i64 0, !38, i64 32, !38, i64 48, !38, i64 560}
!52 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !37, i64 56, !37, i64 60, !37, i64 64, !37, i64 68, !38, i64 72, !38, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !38, i64 112, !37, i64 120, !38, i64 124, !38, i64 140, !37, i64 204, !37, i64 208, !37, i64 212, !37, i64 216, !37, i64 220, !37, i64 224, !37, i64 228, !37, i64 232, !37, i64 236, !37, i64 240, !37, i64 244, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288, !41, i64 296, !38, i64 304, !38, i64 320, !38, i64 336, !38, i64 352, !41, i64 864, !41, i64 872, !41, i64 880, !38, i64 888, !37, i64 1016, !37, i64 1020, !38, i64 1024, !37, i64 1028, !37, i64 1032, !37, i64 1036, !37, i64 1040, !37, i64 1044, !37, i64 1048, !37, i64 1052, !37, i64 1056, !37, i64 1060, !53, i64 1072, !54, i64 8656, !37, i64 9424, !37, i64 9428, !37, i64 9432, !37, i64 9436, !37, i64 9440, !37, i64 9444, !37, i64 9448, !37, i64 9452, !38, i64 9456, !37, i64 9472, !37, i64 9476, !38, i64 9480, !41, i64 9992, !38, i64 10000, !41, i64 10256, !38, i64 10264, !37, i64 10284, !38, i64 10288}
!53 = !{!"", !38, i64 0, !38, i64 384, !38, i64 1248, !38, i64 1504, !38, i64 1760, !38, i64 2144, !38, i64 2624, !38, i64 2640, !37, i64 2656, !37, i64 2660, !38, i64 2672, !38, i64 3184, !38, i64 3696, !38, i64 3776, !38, i64 3904, !38, i64 3928, !38, i64 3952, !38, i64 3976, !38, i64 3984, !38, i64 7056, !38, i64 7312, !38, i64 7568}
!54 = !{!"", !38, i64 0, !38, i64 48, !38, i64 96, !38, i64 176, !38, i64 496, !38, i64 656, !38, i64 696, !38, i64 728, !37, i64 736, !38, i64 740, !37, i64 744, !37, i64 748, !37, i64 752, !37, i64 756}
!55 = !{!"", !56, i64 0, !38, i64 704, !38, i64 728, !38, i64 768, !38, i64 808, !38, i64 880, !38, i64 920, !38, i64 960, !38, i64 1000, !38, i64 1040, !38, i64 1080, !38, i64 1120, !38, i64 1880, !38, i64 2152, !38, i64 2168, !38, i64 3192, !38, i64 3240, !38, i64 3656, !38, i64 3664, !38, i64 3672}
!56 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !38, i64 12, !37, i64 88, !37, i64 92, !37, i64 96, !38, i64 100, !38, i64 108, !38, i64 364, !38, i64 432, !38, i64 456, !38, i64 664, !38, i64 672, !57, i64 696}
!57 = !{!"double", !38, i64 0}
!58 = !{!"", !38, i64 0, !38, i64 56, !38, i64 112, !38, i64 168, !38, i64 224, !38, i64 256, !38, i64 312, !38, i64 368, !38, i64 424, !38, i64 480, !38, i64 536, !41, i64 592, !38, i64 600, !38, i64 632, !41, i64 664, !41, i64 672, !38, i64 680, !38, i64 736, !38, i64 792, !38, i64 848, !38, i64 904, !41, i64 960, !41, i64 968, !41, i64 976, !41, i64 984, !41, i64 992, !41, i64 1000, !41, i64 1008, !41, i64 1016, !41, i64 1024, !41, i64 1032, !41, i64 1040, !41, i64 1048}
!59 = !{!"", !41, i64 0, !41, i64 8, !41, i64 16, !38, i64 24, !38, i64 104, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288}
!60 = !{!"", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112}
!61 = !{!"", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40}
!62 = !{!"", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !38, i64 88, !38, i64 136}
!63 = !{!"", !38, i64 0, !38, i64 16, !38, i64 32, !38, i64 48, !41, i64 64}
!64 = !{!35, !37, i64 84}
!65 = !{!66, !37, i64 4}
!66 = !{!"x264_lookahead_t", !38, i64 0, !38, i64 1, !38, i64 2, !37, i64 4, !37, i64 8, !41, i64 16, !67, i64 24, !67, i64 56, !67, i64 88}
!67 = !{!"", !41, i64 0, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24}
!68 = !{!35, !37, i64 552}
!69 = !{!41, !41, i64 0}
!70 = !{!35, !41, i64 33328}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!35, !37, i64 528}
!74 = !{!35, !37, i64 556}
!75 = !{!35, !37, i64 576}
!76 = !{!66, !38, i64 2}
!77 = !{!66, !37, i64 8}
!78 = !{!35, !37, i64 16}
!79 = !{!35, !37, i64 14612}
!80 = !{i64 0, i64 4, !81, i64 4, i64 4, !81, i64 8, i64 4, !81, i64 12, i64 4, !81, i64 16, i64 4, !81, i64 20, i64 4, !81, i64 24, i64 4, !81, i64 28, i64 4, !81, i64 32, i64 4, !81, i64 36, i64 4, !81, i64 40, i64 4, !81, i64 44, i64 4, !81, i64 48, i64 4, !81, i64 52, i64 4, !81, i64 56, i64 4, !81, i64 60, i64 4, !81, i64 64, i64 4, !81, i64 68, i64 4, !81, i64 72, i64 4, !81, i64 76, i64 4, !81, i64 80, i64 4, !81, i64 84, i64 4, !81, i64 88, i64 4, !81, i64 92, i64 4, !81, i64 96, i64 4, !81, i64 100, i64 4, !81, i64 104, i64 4, !81, i64 108, i64 4, !81, i64 112, i64 4, !81, i64 116, i64 4, !81, i64 120, i64 4, !81, i64 124, i64 4, !81, i64 128, i64 4, !81, i64 132, i64 4, !81, i64 136, i64 4, !81, i64 140, i64 4, !81, i64 144, i64 4, !81, i64 152, i64 8, !69, i64 160, i64 16, !82, i64 176, i64 16, !82, i64 192, i64 16, !82, i64 208, i64 16, !82, i64 224, i64 64, !82, i64 288, i64 64, !82, i64 352, i64 8, !69, i64 360, i64 8, !69, i64 368, i64 4, !81, i64 372, i64 4, !81, i64 376, i64 8, !69, i64 384, i64 4, !81, i64 388, i64 4, !81, i64 392, i64 4, !81, i64 396, i64 4, !81, i64 400, i64 4, !81, i64 404, i64 4, !81, i64 408, i64 4, !81, i64 412, i64 4, !81, i64 416, i64 4, !81, i64 420, i64 4, !81, i64 424, i64 4, !81, i64 428, i64 4, !81, i64 432, i64 4, !81, i64 436, i64 4, !81, i64 440, i64 4, !81, i64 444, i64 4, !81, i64 448, i64 4, !81, i64 452, i64 4, !81, i64 456, i64 4, !83, i64 460, i64 4, !83, i64 464, i64 4, !81, i64 468, i64 8, !82, i64 476, i64 4, !81, i64 480, i64 4, !81, i64 488, i64 4, !81, i64 492, i64 4, !81, i64 496, i64 4, !81, i64 500, i64 4, !81, i64 504, i64 4, !81, i64 508, i64 4, !81, i64 512, i64 4, !83, i64 516, i64 4, !83, i64 520, i64 4, !83, i64 524, i64 4, !81, i64 528, i64 4, !81, i64 532, i64 4, !83, i64 536, i64 4, !83, i64 540, i64 4, !83, i64 544, i64 4, !81, i64 548, i64 4, !83, i64 552, i64 4, !81, i64 556, i64 4, !81, i64 560, i64 4, !81, i64 568, i64 8, !69, i64 576, i64 4, !81, i64 584, i64 8, !69, i64 592, i64 4, !83, i64 596, i64 4, !83, i64 600, i64 4, !83, i64 608, i64 8, !69, i64 616, i64 4, !81, i64 624, i64 8, !69, i64 632, i64 4, !81, i64 636, i64 4, !81, i64 640, i64 4, !81, i64 644, i64 4, !81, i64 648, i64 4, !81, i64 652, i64 4, !81, i64 656, i64 4, !81, i64 660, i64 4, !81, i64 664, i64 4, !81, i64 668, i64 4, !81, i64 672, i64 4, !81, i64 676, i64 4, !81, i64 680, i64 4, !81, i64 684, i64 4, !81, i64 688, i64 4, !81, i64 692, i64 4, !81, i64 696, i64 8, !69, i64 704, i64 1032, !82, i64 1736, i64 4, !81, i64 1740, i64 4, !81, i64 1744, i64 4, !81, i64 1748, i64 4, !81, i64 1752, i64 4, !81, i64 1760, i64 4, !81, i64 1764, i64 4, !81, i64 1768, i64 8, !69, i64 1776, i64 4, !81, i64 1784, i64 8, !69, i64 1792, i64 8, !69, i64 1800, i64 8, !69, i64 1808, i64 8, !69, i64 1816, i64 8, !84, i64 1824, i64 4, !81, i64 1828, i64 4, !81, i64 1832, i64 8, !69, i64 1840, i64 4, !81, i64 1844, i64 4, !81, i64 1848, i64 4, !81, i64 1852, i64 4, !81, i64 1856, i64 4, !81, i64 1860, i64 4, !81, i64 1864, i64 4, !81, i64 1868, i64 4, !81, i64 1872, i64 4, !81, i64 1876, i64 4, !81, i64 1880, i64 4, !81, i64 1884, i64 4, !81, i64 1888, i64 4, !81, i64 1892, i64 4, !81, i64 1896, i64 1300, !82, i64 3200, i64 8, !69, i64 3208, i64 120, !82, i64 3328, i64 8, !69, i64 3336, i64 4, !81, i64 3340, i64 4, !81, i64 3344, i64 32, !82, i64 3376, i64 16, !82, i64 3392, i64 32, !82, i64 3424, i64 16, !82, i64 3440, i64 32, !82, i64 3472, i64 16, !82, i64 3488, i64 32, !82, i64 3520, i64 16, !82, i64 3536, i64 736, !82, i64 4272, i64 2944, !82, i64 7216, i64 8, !69, i64 7232, i64 8, !69, i64 7240, i64 8, !69, i64 7248, i64 4, !81, i64 7252, i64 4, !81, i64 7256, i64 4, !81, i64 7260, i64 4, !81, i64 7264, i64 4, !81, i64 7268, i64 4, !81, i64 7272, i64 4, !81, i64 7276, i64 4, !81, i64 7280, i64 4, !81, i64 7284, i64 4, !81, i64 7288, i64 4, !81, i64 7292, i64 8, !82, i64 7300, i64 4, !81, i64 7304, i64 4, !81, i64 7308, i64 4, !81, i64 7312, i64 4, !81, i64 7316, i64 4, !81, i64 7320, i64 4, !81, i64 7324, i64 4, !81, i64 7328, i64 256, !82, i64 7584, i64 6144, !82, i64 13728, i64 4, !81, i64 13732, i64 4, !81, i64 13736, i64 128, !82, i64 13864, i64 4, !81, i64 13868, i64 4, !81, i64 13872, i64 4, !81, i64 13876, i64 4, !81, i64 13880, i64 4, !81, i64 13884, i64 4, !81, i64 13888, i64 4, !81, i64 13892, i64 4, !81, i64 13904, i64 4, !81, i64 13908, i64 4, !81, i64 13912, i64 4, !81, i64 13916, i64 4, !81, i64 13920, i64 8, !69, i64 13928, i64 8, !69, i64 13936, i64 8, !69, i64 13952, i64 4, !81, i64 13956, i64 460, !82, i64 14416, i64 8, !69, i64 14424, i64 16, !82, i64 14440, i64 8, !69, i64 14448, i64 144, !82, i64 14592, i64 4, !81, i64 14596, i64 4, !81, i64 14600, i64 4, !81, i64 14604, i64 4, !81, i64 14608, i64 4, !81, i64 14612, i64 4, !81, i64 14616, i64 4, !81, i64 14624, i64 8, !84, i64 14632, i64 8, !84, i64 14640, i64 16, !82, i64 14656, i64 8, !84, i64 14664, i64 8, !84, i64 14672, i64 4, !81, i64 14676, i64 4, !81, i64 14680, i64 8, !69, i64 14688, i64 8, !69, i64 14696, i64 4, !81, i64 14704, i64 152, !82, i64 14856, i64 4, !81, i64 14864, i64 152, !82, i64 15016, i64 8, !82, i64 15024, i64 4, !81, i64 15028, i64 4, !81, i64 15032, i64 8, !84, i64 15040, i64 32, !82, i64 15072, i64 16, !82, i64 15088, i64 512, !82, i64 15600, i64 768, !82, i64 16368, i64 4, !81, i64 16372, i64 4, !81, i64 16376, i64 4, !81, i64 16380, i64 4, !81, i64 16384, i64 4, !81, i64 16388, i64 4, !81, i64 16392, i64 4, !81, i64 16396, i64 4, !81, i64 16400, i64 4, !81, i64 16404, i64 4, !81, i64 16408, i64 4, !81, i64 16412, i64 4, !81, i64 16416, i64 4, !81, i64 16420, i64 4, !81, i64 16424, i64 4, !81, i64 16428, i64 4, !81, i64 16432, i64 4, !81, i64 16436, i64 4, !81, i64 16440, i64 8, !82, i64 16448, i64 8, !82, i64 16456, i64 8, !82, i64 16464, i64 8, !82, i64 16472, i64 8, !82, i64 16480, i64 8, !82, i64 16488, i64 4, !81, i64 16492, i64 16, !82, i64 16508, i64 64, !82, i64 16572, i64 4, !81, i64 16576, i64 4, !81, i64 16580, i64 4, !81, i64 16584, i64 4, !81, i64 16588, i64 4, !81, i64 16592, i64 4, !81, i64 16596, i64 4, !81, i64 16600, i64 4, !81, i64 16604, i64 4, !81, i64 16608, i64 4, !81, i64 16612, i64 4, !81, i64 16616, i64 8, !69, i64 16624, i64 8, !69, i64 16632, i64 8, !69, i64 16640, i64 8, !69, i64 16648, i64 8, !69, i64 16656, i64 8, !69, i64 16664, i64 8, !69, i64 16672, i64 16, !82, i64 16688, i64 16, !82, i64 16704, i64 16, !82, i64 16720, i64 512, !82, i64 17232, i64 8, !69, i64 17240, i64 8, !69, i64 17248, i64 8, !69, i64 17256, i64 128, !82, i64 17384, i64 4, !81, i64 17388, i64 4, !81, i64 17392, i64 4, !82, i64 17396, i64 4, !81, i64 17400, i64 4, !81, i64 17404, i64 4, !81, i64 17408, i64 4, !81, i64 17412, i64 4, !81, i64 17416, i64 4, !81, i64 17420, i64 4, !81, i64 17424, i64 4, !81, i64 17428, i64 4, !81, i64 17440, i64 384, !82, i64 17824, i64 864, !82, i64 18688, i64 256, !82, i64 18944, i64 256, !82, i64 19200, i64 384, !82, i64 19584, i64 480, !82, i64 20064, i64 16, !82, i64 20080, i64 16, !82, i64 20096, i64 4, !81, i64 20100, i64 4, !81, i64 20112, i64 512, !82, i64 20624, i64 512, !82, i64 21136, i64 72, !82, i64 21216, i64 128, !82, i64 21344, i64 24, !82, i64 21368, i64 24, !82, i64 21392, i64 24, !82, i64 21416, i64 8, !82, i64 21424, i64 3072, !82, i64 24496, i64 256, !82, i64 24752, i64 256, !82, i64 25008, i64 12, !82, i64 25024, i64 40, !82, i64 25072, i64 48, !82, i64 25120, i64 80, !82, i64 25200, i64 320, !82, i64 25520, i64 160, !82, i64 25680, i64 40, !82, i64 25720, i64 32, !82, i64 25752, i64 8, !82, i64 25760, i64 4, !81, i64 25764, i64 4, !82, i64 25768, i64 4, !81, i64 25772, i64 4, !81, i64 25776, i64 4, !81, i64 25780, i64 4, !81, i64 25792, i64 4, !81, i64 25796, i64 4, !81, i64 25800, i64 4, !81, i64 25804, i64 4, !81, i64 25808, i64 4, !81, i64 25812, i64 4, !81, i64 25816, i64 4, !81, i64 25820, i64 4, !81, i64 25824, i64 16, !82, i64 25840, i64 4, !81, i64 25844, i64 4, !81, i64 25848, i64 512, !82, i64 26360, i64 8, !69, i64 26368, i64 256, !82, i64 26624, i64 8, !69, i64 26632, i64 18, !82, i64 26652, i64 4, !81, i64 26656, i64 34, !82, i64 26704, i64 8, !69, i64 26712, i64 4, !81, i64 26716, i64 4, !81, i64 26720, i64 4, !81, i64 26724, i64 76, !82, i64 26800, i64 4, !81, i64 26804, i64 4, !81, i64 26808, i64 4, !81, i64 26812, i64 8, !82, i64 26820, i64 256, !82, i64 27076, i64 68, !82, i64 27144, i64 24, !82, i64 27168, i64 208, !82, i64 27376, i64 8, !82, i64 27384, i64 24, !82, i64 27408, i64 8, !85, i64 27416, i64 20, !82, i64 27440, i64 40, !82, i64 27480, i64 40, !82, i64 27520, i64 68, !82, i64 27592, i64 40, !82, i64 27632, i64 40, !82, i64 27672, i64 40, !82, i64 27712, i64 40, !82, i64 27752, i64 40, !82, i64 27792, i64 40, !82, i64 27832, i64 760, !82, i64 28592, i64 272, !82, i64 28864, i64 16, !82, i64 28880, i64 1024, !82, i64 29904, i64 48, !82, i64 29952, i64 416, !82, i64 30368, i64 8, !82, i64 30376, i64 8, !82, i64 30384, i64 12, !82, i64 30400, i64 512, !82, i64 30912, i64 256, !82, i64 31168, i64 8, !82, i64 31176, i64 8, !69, i64 31184, i64 48, !82, i64 31232, i64 16, !82, i64 31248, i64 56, !82, i64 31304, i64 56, !82, i64 31360, i64 96, !82, i64 31456, i64 96, !82, i64 31552, i64 8, !69, i64 31560, i64 56, !82, i64 31616, i64 56, !82, i64 31672, i64 56, !82, i64 31728, i64 56, !82, i64 31784, i64 32, !82, i64 31816, i64 56, !82, i64 31872, i64 56, !82, i64 31928, i64 56, !82, i64 31984, i64 56, !82, i64 32040, i64 56, !82, i64 32096, i64 56, !82, i64 32152, i64 8, !69, i64 32160, i64 32, !82, i64 32192, i64 32, !82, i64 32224, i64 8, !69, i64 32232, i64 8, !69, i64 32240, i64 56, !82, i64 32296, i64 56, !82, i64 32352, i64 56, !82, i64 32408, i64 56, !82, i64 32464, i64 56, !82, i64 32520, i64 8, !69, i64 32528, i64 8, !69, i64 32536, i64 8, !69, i64 32544, i64 8, !69, i64 32552, i64 8, !69, i64 32560, i64 8, !69, i64 32568, i64 8, !69, i64 32576, i64 8, !69, i64 32584, i64 8, !69, i64 32592, i64 8, !69, i64 32600, i64 8, !69, i64 32608, i64 8, !69, i64 32616, i64 8, !69, i64 32624, i64 8, !69, i64 32632, i64 8, !69, i64 32640, i64 80, !82, i64 32720, i64 56, !82, i64 32776, i64 8, !69, i64 32784, i64 8, !69, i64 32792, i64 8, !69, i64 32800, i64 8, !69, i64 32808, i64 8, !69, i64 32816, i64 8, !69, i64 32824, i64 8, !69, i64 32832, i64 8, !69, i64 32840, i64 8, !69, i64 32848, i64 8, !69, i64 32856, i64 8, !69, i64 32864, i64 8, !69, i64 32872, i64 8, !69, i64 32880, i64 8, !69, i64 32888, i64 8, !69, i64 32896, i64 8, !69, i64 32904, i64 8, !69, i64 32912, i64 8, !69, i64 32920, i64 8, !69, i64 32928, i64 8, !69, i64 32936, i64 8, !69, i64 32944, i64 8, !69, i64 32952, i64 8, !69, i64 32960, i64 8, !69, i64 32968, i64 8, !69, i64 32976, i64 8, !69, i64 32984, i64 8, !69, i64 32992, i64 8, !69, i64 33000, i64 8, !69, i64 33008, i64 8, !69, i64 33016, i64 8, !69, i64 33024, i64 8, !69, i64 33032, i64 8, !69, i64 33040, i64 8, !69, i64 33048, i64 8, !69, i64 33056, i64 8, !69, i64 33064, i64 8, !69, i64 33072, i64 8, !69, i64 33080, i64 8, !69, i64 33088, i64 8, !69, i64 33096, i64 8, !69, i64 33104, i64 8, !69, i64 33112, i64 8, !69, i64 33120, i64 8, !69, i64 33128, i64 8, !69, i64 33136, i64 8, !69, i64 33144, i64 8, !69, i64 33152, i64 8, !69, i64 33160, i64 8, !69, i64 33168, i64 48, !82, i64 33216, i64 40, !82, i64 33256, i64 16, !82, i64 33272, i64 16, !82, i64 33288, i64 16, !82, i64 33304, i64 16, !82, i64 33320, i64 8, !69, i64 33328, i64 8, !69}
!81 = !{!37, !37, i64 0}
!82 = !{!38, !38, i64 0}
!83 = !{!43, !43, i64 0}
!84 = !{!47, !47, i64 0}
!85 = !{!57, !57, i64 0}
!86 = !{!66, !38, i64 1}
!87 = !{!66, !38, i64 0}
!88 = !{!66, !41, i64 16}
!89 = !{!66, !37, i64 68}
!90 = !{!66, !37, i64 100}
!91 = distinct !{!91, !72}
!92 = !{!35, !41, i64 14416}
!93 = !{!66, !41, i64 56}
!94 = !{!95, !38, i64 86}
!95 = !{!"x264_frame", !37, i64 0, !37, i64 4, !37, i64 8, !47, i64 16, !47, i64 24, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !41, i64 48, !37, i64 56, !37, i64 60, !37, i64 64, !37, i64 68, !37, i64 72, !37, i64 76, !37, i64 80, !38, i64 84, !38, i64 85, !38, i64 86, !43, i64 88, !43, i64 92, !37, i64 96, !37, i64 100, !38, i64 104, !38, i64 116, !38, i64 128, !37, i64 140, !37, i64 144, !37, i64 148, !38, i64 152, !38, i64 176, !38, i64 208, !41, i64 240, !38, i64 248, !38, i64 280, !38, i64 320, !38, i64 3392, !37, i64 3520, !41, i64 3528, !41, i64 3536, !41, i64 3544, !38, i64 3552, !41, i64 3568, !38, i64 3576, !38, i64 3848, !38, i64 6440, !38, i64 6712, !38, i64 6728, !38, i64 6736, !38, i64 6864, !38, i64 6868, !38, i64 8164, !37, i64 9460, !38, i64 9464, !38, i64 9536, !41, i64 12128, !41, i64 12136, !41, i64 12144, !41, i64 12152, !41, i64 12160, !37, i64 12168, !41, i64 12176, !41, i64 12184, !41, i64 12192, !37, i64 12200, !38, i64 12204, !37, i64 12276, !47, i64 12280, !96, i64 12288, !38, i64 12320, !38, i64 12572, !38, i64 13576, !37, i64 15584, !37, i64 15588, !37, i64 15592, !37, i64 15596, !37, i64 15600, !37, i64 15604, !37, i64 15608, !43, i64 15612, !37, i64 15616, !37, i64 15620, !37, i64 15624}
!96 = !{!"", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24}
!97 = !{!95, !37, i64 4}
!98 = !{!"lookahead.c:x264_lookahead_encoder_shift"}
!99 = !{!66, !41, i64 88}
!100 = distinct !{!100, !72}
!101 = !{!"lookahead.c:x264_lookahead_update_last_nonb"}
!102 = !{!95, !37, i64 15600}
!103 = !{!"lookahead.c:x264_lookahead_shift"}
!104 = !{!67, !41, i64 0}
!105 = !{!67, !37, i64 12}
!106 = distinct !{!106, !72}
