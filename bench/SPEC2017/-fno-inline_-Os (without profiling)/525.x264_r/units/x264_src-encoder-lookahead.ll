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
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = zext nneg i32 %7 to i64
  br label %19

11:                                               ; preds = %19, %5
  %12 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 13
  %13 = load i32, ptr %12, align 4, !tbaa !35
  %14 = sub nsw i32 0, %13
  %15 = getelementptr inbounds %struct.x264_lookahead_t, ptr %3, i64 0, i32 3
  store i32 %14, ptr %15, align 4, !tbaa !36
  %16 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  %17 = load i32, ptr %16, align 8, !tbaa !39
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %34

19:                                               ; preds = %9, %19
  %20 = phi i64 [ 0, %9 ], [ %24, %19 ]
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !40
  %23 = getelementptr inbounds %struct.x264_t, ptr %22, i64 0, i32 75
  store ptr %3, ptr %23, align 16, !tbaa !41
  %24 = add nuw nsw i64 %20, 1
  %25 = icmp eq i64 %24, %10
  br i1 %25, label %11, label %19, !llvm.loop !42

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 10
  %28 = load i32, ptr %27, align 8, !tbaa !44
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  %32 = load i32, ptr %31, align 4, !tbaa !45
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30, %11
  %35 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  %36 = load i32, ptr %35, align 8, !tbaa !46
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i8
  br label %39

39:                                               ; preds = %34, %30, %26
  %40 = phi i8 [ 0, %30 ], [ 0, %26 ], [ %38, %34 ]
  %41 = getelementptr inbounds %struct.x264_lookahead_t, ptr %3, i64 0, i32 2
  store i8 %40, ptr %41, align 2, !tbaa !47
  %42 = getelementptr inbounds %struct.x264_lookahead_t, ptr %3, i64 0, i32 4
  store i32 %1, ptr %42, align 8, !tbaa !48
  %43 = getelementptr inbounds %struct.x264_lookahead_t, ptr %3, i64 0, i32 6
  %44 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 4
  %45 = load i32, ptr %44, align 16, !tbaa !49
  %46 = add nsw i32 %45, 3
  %47 = tail call i32 @x264_synch_frame_list_init(ptr noundef nonnull %43, i32 noundef %46) #5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.x264_lookahead_t, ptr %3, i64 0, i32 7
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 9
  %52 = load i32, ptr %51, align 4, !tbaa !50
  %53 = add nsw i32 %52, 3
  %54 = tail call i32 @x264_synch_frame_list_init(ptr noundef nonnull %50, i32 noundef %53) #5
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.x264_lookahead_t, ptr %3, i64 0, i32 8
  %58 = load i32, ptr %51, align 4, !tbaa !50
  %59 = add nsw i32 %58, 3
  %60 = tail call i32 @x264_synch_frame_list_init(ptr noundef nonnull %57, i32 noundef %59) #5
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %56
  %63 = load i32, ptr %44, align 16, !tbaa !49
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr %6, align 4, !tbaa !5
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(33344) %69, ptr noundef nonnull align 16 dereferenceable(33344) %0, i64 33344, i1 false), !tbaa.struct !51
  %70 = tail call i32 @x264_macroblock_cache_allocate(ptr noundef %69) #5
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = tail call i32 @x264_macroblock_thread_allocate(ptr noundef nonnull %69, i32 noundef 1) #5
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.x264_lookahead_t, ptr %3, i64 0, i32 1
  store i8 1, ptr %76, align 1, !tbaa !57
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
  %3 = load i32, ptr %2, align 16, !tbaa !49
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 75
  %7 = load ptr, ptr %6, align 16, !tbaa !41
  store volatile i8 1, ptr %7, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !5
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  tail call void @x264_macroblock_cache_free(ptr noundef %12) #5
  %13 = load i32, ptr %8, align 4, !tbaa !5
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !40
  tail call void @x264_macroblock_thread_free(ptr noundef %16, i32 noundef 1) #5
  %17 = load i32, ptr %8, align 4, !tbaa !5
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !40
  tail call void @x264_free(ptr noundef %20) #5
  br label %21

21:                                               ; preds = %5, %1
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 75
  %23 = load ptr, ptr %22, align 16, !tbaa !41
  %24 = getelementptr inbounds %struct.x264_lookahead_t, ptr %23, i64 0, i32 6
  tail call void @x264_synch_frame_list_delete(ptr noundef nonnull %24) #5
  %25 = load ptr, ptr %22, align 16, !tbaa !41
  %26 = getelementptr inbounds %struct.x264_lookahead_t, ptr %25, i64 0, i32 7
  tail call void @x264_synch_frame_list_delete(ptr noundef nonnull %26) #5
  %27 = load ptr, ptr %22, align 16, !tbaa !41
  %28 = getelementptr inbounds %struct.x264_lookahead_t, ptr %27, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !59
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %21
  tail call void @x264_frame_push_unused(ptr noundef nonnull %0, ptr noundef nonnull %29) #5
  %32 = load ptr, ptr %22, align 16, !tbaa !41
  br label %33

33:                                               ; preds = %31, %21
  %34 = phi ptr [ %32, %31 ], [ %27, %21 ]
  %35 = getelementptr inbounds %struct.x264_lookahead_t, ptr %34, i64 0, i32 8
  tail call void @x264_synch_frame_list_delete(ptr noundef nonnull %35) #5
  %36 = load ptr, ptr %22, align 16, !tbaa !41
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
  %4 = load i32, ptr %3, align 16, !tbaa !49
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 75
  %7 = load ptr, ptr %6, align 16, !tbaa !41
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
  %3 = load ptr, ptr %2, align 16, !tbaa !41
  %4 = getelementptr inbounds %struct.x264_lookahead_t, ptr %3, i64 0, i32 7, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !60
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.x264_lookahead_t, ptr %3, i64 0, i32 8, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !61
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
  %3 = load i32, ptr %2, align 16, !tbaa !49
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 75
  %7 = load ptr, ptr %6, align 16, !tbaa !41
  %8 = getelementptr inbounds %struct.x264_lookahead_t, ptr %7, i64 0, i32 8, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !61
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %53

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.x264_lookahead_t, ptr %7, i64 0, i32 1
  %13 = load i8, ptr %12, align 1, !tbaa !57
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %53, label %15, !llvm.loop !62

15:                                               ; preds = %11, %15
  br label %15

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43
  %18 = load ptr, ptr %17, align 16, !tbaa !63
  %19 = load ptr, ptr %18, align 8, !tbaa !40
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %54

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 75
  %23 = load ptr, ptr %22, align 16, !tbaa !41
  %24 = getelementptr inbounds %struct.x264_lookahead_t, ptr %23, i64 0, i32 7, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !60
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %54, label %27

27:                                               ; preds = %21
  tail call void @x264_slicetype_decide(ptr noundef nonnull %0) #5
  %28 = load ptr, ptr %22, align 16, !tbaa !41
  %29 = getelementptr inbounds %struct.x264_lookahead_t, ptr %28, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !64
  %31 = load ptr, ptr %30, align 8, !tbaa !40
  tail call fastcc void @x264_lookahead_update_last_nonb(ptr noundef nonnull %0, ptr noundef %31) #6
  %32 = load ptr, ptr %22, align 16, !tbaa !41
  %33 = getelementptr inbounds %struct.x264_lookahead_t, ptr %32, i64 0, i32 8
  %34 = getelementptr inbounds %struct.x264_lookahead_t, ptr %32, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !64
  %36 = load ptr, ptr %35, align 8, !tbaa !40
  %37 = getelementptr inbounds %struct.x264_frame, ptr %36, i64 0, i32 19
  %38 = load i8, ptr %37, align 2, !tbaa !65
  %39 = zext i8 %38 to i32
  %40 = add nuw nsw i32 %39, 1
  tail call fastcc void @x264_lookahead_shift(ptr noundef nonnull %33, ptr noundef nonnull %34, i32 noundef %40) #6
  %41 = load ptr, ptr %22, align 16, !tbaa !41
  %42 = getelementptr inbounds %struct.x264_lookahead_t, ptr %41, i64 0, i32 2
  %43 = load i8, ptr %42, align 2, !tbaa !47
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %27
  %46 = getelementptr inbounds %struct.x264_lookahead_t, ptr %41, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !59
  %48 = getelementptr inbounds %struct.x264_frame, ptr %47, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !68
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
define internal fastcc void @x264_lookahead_encoder_shift(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 75
  %3 = load ptr, ptr %2, align 16, !tbaa !41
  %4 = getelementptr inbounds %struct.x264_lookahead_t, ptr %3, i64 0, i32 8, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !61
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.x264_lookahead_t, ptr %3, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = getelementptr inbounds %struct.x264_frame, ptr %10, i64 0, i32 19
  %12 = load i8, ptr %11, align 2, !tbaa !65
  %13 = zext i8 %12 to i32
  %14 = add nuw nsw i32 %13, 1
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43
  br label %16

16:                                               ; preds = %7, %16
  %17 = phi ptr [ %3, %7 ], [ %24, %16 ]
  %18 = phi i32 [ %14, %7 ], [ %19, %16 ]
  %19 = add nsw i32 %18, -1
  %20 = load ptr, ptr %15, align 16, !tbaa !63
  %21 = getelementptr inbounds %struct.x264_lookahead_t, ptr %17, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !69
  %23 = tail call ptr @x264_frame_shift(ptr noundef %22) #5
  tail call void @x264_frame_push(ptr noundef %20, ptr noundef %23) #5
  %24 = load ptr, ptr %2, align 16, !tbaa !41
  %25 = getelementptr inbounds %struct.x264_lookahead_t, ptr %24, i64 0, i32 8, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !61
  %27 = add nsw i32 %26, -1
  store i32 %27, ptr %25, align 4, !tbaa !61
  %28 = icmp eq i32 %19, 0
  br i1 %28, label %29, label %16, !llvm.loop !70

29:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: optsize
declare void @x264_slicetype_decide(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_lookahead_update_last_nonb(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 75
  %4 = load ptr, ptr %3, align 16, !tbaa !41
  %5 = getelementptr inbounds %struct.x264_lookahead_t, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  tail call void @x264_frame_push_unused(ptr noundef nonnull %0, ptr noundef nonnull %6) #5
  %9 = load ptr, ptr %3, align 16, !tbaa !41
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi ptr [ %9, %8 ], [ %4, %2 ]
  %12 = getelementptr inbounds %struct.x264_lookahead_t, ptr %11, i64 0, i32 5
  store ptr %1, ptr %12, align 8, !tbaa !59
  %13 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 78
  %14 = load i32, ptr %13, align 16, !tbaa !71
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %13, align 16, !tbaa !71
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_lookahead_shift(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.x264_synch_frame_list_t, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %struct.x264_synch_frame_list_t, ptr %1, i64 0, i32 2
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i32 [ %2, %5 ], [ %10, %8 ]
  %10 = add nsw i32 %9, -1
  %11 = load ptr, ptr %1, align 8, !tbaa !72
  %12 = tail call ptr @x264_frame_shift(ptr noundef %11) #5
  %13 = load ptr, ptr %0, align 8, !tbaa !72
  %14 = load i32, ptr %6, align 4, !tbaa !73
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %6, align 4, !tbaa !73
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds ptr, ptr %13, i64 %16
  store ptr %12, ptr %17, align 8, !tbaa !40
  %18 = load i32, ptr %7, align 4, !tbaa !73
  %19 = add nsw i32 %18, -1
  store i32 %19, ptr %7, align 4, !tbaa !73
  %20 = icmp eq i32 %10, 0
  br i1 %20, label %21, label %8, !llvm.loop !74

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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 4}
!6 = !{!"x264_t", !7, i64 0, !9, i64 704, !8, i64 1736, !8, i64 1740, !8, i64 1744, !8, i64 1748, !8, i64 1752, !16, i64 1760, !12, i64 1832, !8, i64 1840, !8, i64 1844, !8, i64 1848, !8, i64 1852, !8, i64 1856, !8, i64 1860, !8, i64 1864, !8, i64 1868, !8, i64 1872, !8, i64 1876, !8, i64 1880, !8, i64 1884, !8, i64 1888, !8, i64 1892, !9, i64 1896, !12, i64 3200, !9, i64 3208, !12, i64 3328, !8, i64 3336, !8, i64 3340, !9, i64 3344, !9, i64 3376, !9, i64 3392, !9, i64 3424, !9, i64 3440, !9, i64 3472, !9, i64 3488, !9, i64 3520, !9, i64 3536, !9, i64 4272, !12, i64 7216, !19, i64 7232, !20, i64 13904, !21, i64 14416, !12, i64 14680, !12, i64 14688, !8, i64 14696, !9, i64 14704, !8, i64 14856, !9, i64 14864, !9, i64 15016, !8, i64 15024, !8, i64 15028, !18, i64 15032, !22, i64 15040, !23, i64 16368, !12, i64 26704, !26, i64 26712, !9, i64 30400, !9, i64 30912, !9, i64 31168, !12, i64 31176, !9, i64 31184, !9, i64 31232, !9, i64 31248, !9, i64 31304, !9, i64 31360, !9, i64 31456, !12, i64 31552, !29, i64 31560, !30, i64 32616, !31, i64 32912, !32, i64 33032, !33, i64 33080, !34, i64 33256, !12, i64 33328}
!7 = !{!"x264_param_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !11, i64 44, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !12, i64 152, !9, i64 160, !9, i64 176, !9, i64 192, !9, i64 208, !9, i64 224, !9, i64 288, !12, i64 352, !12, i64 360, !8, i64 368, !8, i64 372, !12, i64 376, !13, i64 384, !15, i64 488, !8, i64 632, !8, i64 636, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !8, i64 656, !8, i64 660, !8, i64 664, !8, i64 668, !8, i64 672, !8, i64 676, !8, i64 680, !8, i64 684, !8, i64 688, !8, i64 692, !12, i64 696}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !14, i64 72, !14, i64 76, !8, i64 80, !9, i64 84, !8, i64 92, !8, i64 96}
!14 = !{!"float", !9, i64 0}
!15 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !8, i64 36, !8, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !8, i64 56, !14, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !12, i64 80, !8, i64 88, !12, i64 96, !14, i64 104, !14, i64 108, !14, i64 112, !12, i64 120, !8, i64 128, !12, i64 136}
!16 = !{!"", !8, i64 0, !8, i64 4, !12, i64 8, !8, i64 16, !12, i64 24, !17, i64 32}
!17 = !{!"bs_s", !12, i64 0, !12, i64 8, !12, i64 16, !18, i64 24, !8, i64 32, !8, i64 36}
!18 = !{!"long", !9, i64 0}
!19 = !{!"", !12, i64 0, !12, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !9, i64 60, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !9, i64 96, !9, i64 352, !8, i64 6496, !8, i64 6500, !9, i64 6504, !8, i64 6632, !8, i64 6636, !8, i64 6640, !8, i64 6644, !8, i64 6648, !8, i64 6652, !8, i64 6656, !8, i64 6660}
!20 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !12, i64 16, !12, i64 24, !12, i64 32, !8, i64 48, !9, i64 52}
!21 = !{!"", !12, i64 0, !9, i64 8, !12, i64 24, !9, i64 32, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !18, i64 208, !18, i64 216, !9, i64 224, !18, i64 240, !18, i64 248, !8, i64 256, !8, i64 260}
!22 = !{!"", !9, i64 0, !9, i64 32, !9, i64 48, !9, i64 560}
!23 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !8, i64 120, !9, i64 124, !9, i64 140, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !8, i64 228, !8, i64 232, !8, i64 236, !8, i64 240, !8, i64 244, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !9, i64 304, !9, i64 320, !9, i64 336, !9, i64 352, !12, i64 864, !12, i64 872, !12, i64 880, !9, i64 888, !8, i64 1016, !8, i64 1020, !9, i64 1024, !8, i64 1028, !8, i64 1032, !8, i64 1036, !8, i64 1040, !8, i64 1044, !8, i64 1048, !8, i64 1052, !8, i64 1056, !8, i64 1060, !24, i64 1072, !25, i64 8656, !8, i64 9424, !8, i64 9428, !8, i64 9432, !8, i64 9436, !8, i64 9440, !8, i64 9444, !8, i64 9448, !8, i64 9452, !9, i64 9456, !8, i64 9472, !8, i64 9476, !9, i64 9480, !12, i64 9992, !9, i64 10000, !12, i64 10256, !9, i64 10264, !8, i64 10284, !9, i64 10288}
!24 = !{!"", !9, i64 0, !9, i64 384, !9, i64 1248, !9, i64 1504, !9, i64 1760, !9, i64 2144, !9, i64 2624, !9, i64 2640, !8, i64 2656, !8, i64 2660, !9, i64 2672, !9, i64 3184, !9, i64 3696, !9, i64 3776, !9, i64 3904, !9, i64 3928, !9, i64 3952, !9, i64 3976, !9, i64 3984, !9, i64 7056, !9, i64 7312, !9, i64 7568}
!25 = !{!"", !9, i64 0, !9, i64 48, !9, i64 96, !9, i64 176, !9, i64 496, !9, i64 656, !9, i64 696, !9, i64 728, !8, i64 736, !9, i64 740, !8, i64 744, !8, i64 748, !8, i64 752, !8, i64 756}
!26 = !{!"", !27, i64 0, !9, i64 704, !9, i64 728, !9, i64 768, !9, i64 808, !9, i64 880, !9, i64 920, !9, i64 960, !9, i64 1000, !9, i64 1040, !9, i64 1080, !9, i64 1120, !9, i64 1880, !9, i64 2152, !9, i64 2168, !9, i64 3192, !9, i64 3240, !9, i64 3656, !9, i64 3664, !9, i64 3672}
!27 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !9, i64 12, !8, i64 88, !8, i64 92, !8, i64 96, !9, i64 100, !9, i64 108, !9, i64 364, !9, i64 432, !9, i64 456, !9, i64 664, !9, i64 672, !28, i64 696}
!28 = !{!"double", !9, i64 0}
!29 = !{!"", !9, i64 0, !9, i64 56, !9, i64 112, !9, i64 168, !9, i64 224, !9, i64 256, !9, i64 312, !9, i64 368, !9, i64 424, !9, i64 480, !9, i64 536, !12, i64 592, !9, i64 600, !9, i64 632, !12, i64 664, !12, i64 672, !9, i64 680, !9, i64 736, !9, i64 792, !9, i64 848, !9, i64 904, !12, i64 960, !12, i64 968, !12, i64 976, !12, i64 984, !12, i64 992, !12, i64 1000, !12, i64 1008, !12, i64 1016, !12, i64 1024, !12, i64 1032, !12, i64 1040, !12, i64 1048}
!30 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !9, i64 24, !9, i64 104, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288}
!31 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112}
!32 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!33 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !9, i64 88, !9, i64 136}
!34 = !{!"", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 48, !12, i64 64}
!35 = !{!6, !8, i64 84}
!36 = !{!37, !8, i64 4}
!37 = !{!"x264_lookahead_t", !9, i64 0, !9, i64 1, !9, i64 2, !8, i64 4, !8, i64 8, !12, i64 16, !38, i64 24, !38, i64 56, !38, i64 88}
!38 = !{!"", !12, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24}
!39 = !{!6, !8, i64 552}
!40 = !{!12, !12, i64 0}
!41 = !{!6, !12, i64 33328}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!6, !8, i64 528}
!45 = !{!6, !8, i64 556}
!46 = !{!6, !8, i64 576}
!47 = !{!37, !9, i64 2}
!48 = !{!37, !8, i64 8}
!49 = !{!6, !8, i64 16}
!50 = !{!6, !8, i64 14612}
!51 = !{i64 0, i64 4, !52, i64 4, i64 4, !52, i64 8, i64 4, !52, i64 12, i64 4, !52, i64 16, i64 4, !52, i64 20, i64 4, !52, i64 24, i64 4, !52, i64 28, i64 4, !52, i64 32, i64 4, !52, i64 36, i64 4, !52, i64 40, i64 4, !52, i64 44, i64 4, !52, i64 48, i64 4, !52, i64 52, i64 4, !52, i64 56, i64 4, !52, i64 60, i64 4, !52, i64 64, i64 4, !52, i64 68, i64 4, !52, i64 72, i64 4, !52, i64 76, i64 4, !52, i64 80, i64 4, !52, i64 84, i64 4, !52, i64 88, i64 4, !52, i64 92, i64 4, !52, i64 96, i64 4, !52, i64 100, i64 4, !52, i64 104, i64 4, !52, i64 108, i64 4, !52, i64 112, i64 4, !52, i64 116, i64 4, !52, i64 120, i64 4, !52, i64 124, i64 4, !52, i64 128, i64 4, !52, i64 132, i64 4, !52, i64 136, i64 4, !52, i64 140, i64 4, !52, i64 144, i64 4, !52, i64 152, i64 8, !40, i64 160, i64 16, !53, i64 176, i64 16, !53, i64 192, i64 16, !53, i64 208, i64 16, !53, i64 224, i64 64, !53, i64 288, i64 64, !53, i64 352, i64 8, !40, i64 360, i64 8, !40, i64 368, i64 4, !52, i64 372, i64 4, !52, i64 376, i64 8, !40, i64 384, i64 4, !52, i64 388, i64 4, !52, i64 392, i64 4, !52, i64 396, i64 4, !52, i64 400, i64 4, !52, i64 404, i64 4, !52, i64 408, i64 4, !52, i64 412, i64 4, !52, i64 416, i64 4, !52, i64 420, i64 4, !52, i64 424, i64 4, !52, i64 428, i64 4, !52, i64 432, i64 4, !52, i64 436, i64 4, !52, i64 440, i64 4, !52, i64 444, i64 4, !52, i64 448, i64 4, !52, i64 452, i64 4, !52, i64 456, i64 4, !54, i64 460, i64 4, !54, i64 464, i64 4, !52, i64 468, i64 8, !53, i64 476, i64 4, !52, i64 480, i64 4, !52, i64 488, i64 4, !52, i64 492, i64 4, !52, i64 496, i64 4, !52, i64 500, i64 4, !52, i64 504, i64 4, !52, i64 508, i64 4, !52, i64 512, i64 4, !54, i64 516, i64 4, !54, i64 520, i64 4, !54, i64 524, i64 4, !52, i64 528, i64 4, !52, i64 532, i64 4, !54, i64 536, i64 4, !54, i64 540, i64 4, !54, i64 544, i64 4, !52, i64 548, i64 4, !54, i64 552, i64 4, !52, i64 556, i64 4, !52, i64 560, i64 4, !52, i64 568, i64 8, !40, i64 576, i64 4, !52, i64 584, i64 8, !40, i64 592, i64 4, !54, i64 596, i64 4, !54, i64 600, i64 4, !54, i64 608, i64 8, !40, i64 616, i64 4, !52, i64 624, i64 8, !40, i64 632, i64 4, !52, i64 636, i64 4, !52, i64 640, i64 4, !52, i64 644, i64 4, !52, i64 648, i64 4, !52, i64 652, i64 4, !52, i64 656, i64 4, !52, i64 660, i64 4, !52, i64 664, i64 4, !52, i64 668, i64 4, !52, i64 672, i64 4, !52, i64 676, i64 4, !52, i64 680, i64 4, !52, i64 684, i64 4, !52, i64 688, i64 4, !52, i64 692, i64 4, !52, i64 696, i64 8, !40, i64 704, i64 1032, !53, i64 1736, i64 4, !52, i64 1740, i64 4, !52, i64 1744, i64 4, !52, i64 1748, i64 4, !52, i64 1752, i64 4, !52, i64 1760, i64 4, !52, i64 1764, i64 4, !52, i64 1768, i64 8, !40, i64 1776, i64 4, !52, i64 1784, i64 8, !40, i64 1792, i64 8, !40, i64 1800, i64 8, !40, i64 1808, i64 8, !40, i64 1816, i64 8, !55, i64 1824, i64 4, !52, i64 1828, i64 4, !52, i64 1832, i64 8, !40, i64 1840, i64 4, !52, i64 1844, i64 4, !52, i64 1848, i64 4, !52, i64 1852, i64 4, !52, i64 1856, i64 4, !52, i64 1860, i64 4, !52, i64 1864, i64 4, !52, i64 1868, i64 4, !52, i64 1872, i64 4, !52, i64 1876, i64 4, !52, i64 1880, i64 4, !52, i64 1884, i64 4, !52, i64 1888, i64 4, !52, i64 1892, i64 4, !52, i64 1896, i64 1300, !53, i64 3200, i64 8, !40, i64 3208, i64 120, !53, i64 3328, i64 8, !40, i64 3336, i64 4, !52, i64 3340, i64 4, !52, i64 3344, i64 32, !53, i64 3376, i64 16, !53, i64 3392, i64 32, !53, i64 3424, i64 16, !53, i64 3440, i64 32, !53, i64 3472, i64 16, !53, i64 3488, i64 32, !53, i64 3520, i64 16, !53, i64 3536, i64 736, !53, i64 4272, i64 2944, !53, i64 7216, i64 8, !40, i64 7232, i64 8, !40, i64 7240, i64 8, !40, i64 7248, i64 4, !52, i64 7252, i64 4, !52, i64 7256, i64 4, !52, i64 7260, i64 4, !52, i64 7264, i64 4, !52, i64 7268, i64 4, !52, i64 7272, i64 4, !52, i64 7276, i64 4, !52, i64 7280, i64 4, !52, i64 7284, i64 4, !52, i64 7288, i64 4, !52, i64 7292, i64 8, !53, i64 7300, i64 4, !52, i64 7304, i64 4, !52, i64 7308, i64 4, !52, i64 7312, i64 4, !52, i64 7316, i64 4, !52, i64 7320, i64 4, !52, i64 7324, i64 4, !52, i64 7328, i64 256, !53, i64 7584, i64 6144, !53, i64 13728, i64 4, !52, i64 13732, i64 4, !52, i64 13736, i64 128, !53, i64 13864, i64 4, !52, i64 13868, i64 4, !52, i64 13872, i64 4, !52, i64 13876, i64 4, !52, i64 13880, i64 4, !52, i64 13884, i64 4, !52, i64 13888, i64 4, !52, i64 13892, i64 4, !52, i64 13904, i64 4, !52, i64 13908, i64 4, !52, i64 13912, i64 4, !52, i64 13916, i64 4, !52, i64 13920, i64 8, !40, i64 13928, i64 8, !40, i64 13936, i64 8, !40, i64 13952, i64 4, !52, i64 13956, i64 460, !53, i64 14416, i64 8, !40, i64 14424, i64 16, !53, i64 14440, i64 8, !40, i64 14448, i64 144, !53, i64 14592, i64 4, !52, i64 14596, i64 4, !52, i64 14600, i64 4, !52, i64 14604, i64 4, !52, i64 14608, i64 4, !52, i64 14612, i64 4, !52, i64 14616, i64 4, !52, i64 14624, i64 8, !55, i64 14632, i64 8, !55, i64 14640, i64 16, !53, i64 14656, i64 8, !55, i64 14664, i64 8, !55, i64 14672, i64 4, !52, i64 14676, i64 4, !52, i64 14680, i64 8, !40, i64 14688, i64 8, !40, i64 14696, i64 4, !52, i64 14704, i64 152, !53, i64 14856, i64 4, !52, i64 14864, i64 152, !53, i64 15016, i64 8, !53, i64 15024, i64 4, !52, i64 15028, i64 4, !52, i64 15032, i64 8, !55, i64 15040, i64 32, !53, i64 15072, i64 16, !53, i64 15088, i64 512, !53, i64 15600, i64 768, !53, i64 16368, i64 4, !52, i64 16372, i64 4, !52, i64 16376, i64 4, !52, i64 16380, i64 4, !52, i64 16384, i64 4, !52, i64 16388, i64 4, !52, i64 16392, i64 4, !52, i64 16396, i64 4, !52, i64 16400, i64 4, !52, i64 16404, i64 4, !52, i64 16408, i64 4, !52, i64 16412, i64 4, !52, i64 16416, i64 4, !52, i64 16420, i64 4, !52, i64 16424, i64 4, !52, i64 16428, i64 4, !52, i64 16432, i64 4, !52, i64 16436, i64 4, !52, i64 16440, i64 8, !53, i64 16448, i64 8, !53, i64 16456, i64 8, !53, i64 16464, i64 8, !53, i64 16472, i64 8, !53, i64 16480, i64 8, !53, i64 16488, i64 4, !52, i64 16492, i64 16, !53, i64 16508, i64 64, !53, i64 16572, i64 4, !52, i64 16576, i64 4, !52, i64 16580, i64 4, !52, i64 16584, i64 4, !52, i64 16588, i64 4, !52, i64 16592, i64 4, !52, i64 16596, i64 4, !52, i64 16600, i64 4, !52, i64 16604, i64 4, !52, i64 16608, i64 4, !52, i64 16612, i64 4, !52, i64 16616, i64 8, !40, i64 16624, i64 8, !40, i64 16632, i64 8, !40, i64 16640, i64 8, !40, i64 16648, i64 8, !40, i64 16656, i64 8, !40, i64 16664, i64 8, !40, i64 16672, i64 16, !53, i64 16688, i64 16, !53, i64 16704, i64 16, !53, i64 16720, i64 512, !53, i64 17232, i64 8, !40, i64 17240, i64 8, !40, i64 17248, i64 8, !40, i64 17256, i64 128, !53, i64 17384, i64 4, !52, i64 17388, i64 4, !52, i64 17392, i64 4, !53, i64 17396, i64 4, !52, i64 17400, i64 4, !52, i64 17404, i64 4, !52, i64 17408, i64 4, !52, i64 17412, i64 4, !52, i64 17416, i64 4, !52, i64 17420, i64 4, !52, i64 17424, i64 4, !52, i64 17428, i64 4, !52, i64 17440, i64 384, !53, i64 17824, i64 864, !53, i64 18688, i64 256, !53, i64 18944, i64 256, !53, i64 19200, i64 384, !53, i64 19584, i64 480, !53, i64 20064, i64 16, !53, i64 20080, i64 16, !53, i64 20096, i64 4, !52, i64 20100, i64 4, !52, i64 20112, i64 512, !53, i64 20624, i64 512, !53, i64 21136, i64 72, !53, i64 21216, i64 128, !53, i64 21344, i64 24, !53, i64 21368, i64 24, !53, i64 21392, i64 24, !53, i64 21416, i64 8, !53, i64 21424, i64 3072, !53, i64 24496, i64 256, !53, i64 24752, i64 256, !53, i64 25008, i64 12, !53, i64 25024, i64 40, !53, i64 25072, i64 48, !53, i64 25120, i64 80, !53, i64 25200, i64 320, !53, i64 25520, i64 160, !53, i64 25680, i64 40, !53, i64 25720, i64 32, !53, i64 25752, i64 8, !53, i64 25760, i64 4, !52, i64 25764, i64 4, !53, i64 25768, i64 4, !52, i64 25772, i64 4, !52, i64 25776, i64 4, !52, i64 25780, i64 4, !52, i64 25792, i64 4, !52, i64 25796, i64 4, !52, i64 25800, i64 4, !52, i64 25804, i64 4, !52, i64 25808, i64 4, !52, i64 25812, i64 4, !52, i64 25816, i64 4, !52, i64 25820, i64 4, !52, i64 25824, i64 16, !53, i64 25840, i64 4, !52, i64 25844, i64 4, !52, i64 25848, i64 512, !53, i64 26360, i64 8, !40, i64 26368, i64 256, !53, i64 26624, i64 8, !40, i64 26632, i64 18, !53, i64 26652, i64 4, !52, i64 26656, i64 34, !53, i64 26704, i64 8, !40, i64 26712, i64 4, !52, i64 26716, i64 4, !52, i64 26720, i64 4, !52, i64 26724, i64 76, !53, i64 26800, i64 4, !52, i64 26804, i64 4, !52, i64 26808, i64 4, !52, i64 26812, i64 8, !53, i64 26820, i64 256, !53, i64 27076, i64 68, !53, i64 27144, i64 24, !53, i64 27168, i64 208, !53, i64 27376, i64 8, !53, i64 27384, i64 24, !53, i64 27408, i64 8, !56, i64 27416, i64 20, !53, i64 27440, i64 40, !53, i64 27480, i64 40, !53, i64 27520, i64 68, !53, i64 27592, i64 40, !53, i64 27632, i64 40, !53, i64 27672, i64 40, !53, i64 27712, i64 40, !53, i64 27752, i64 40, !53, i64 27792, i64 40, !53, i64 27832, i64 760, !53, i64 28592, i64 272, !53, i64 28864, i64 16, !53, i64 28880, i64 1024, !53, i64 29904, i64 48, !53, i64 29952, i64 416, !53, i64 30368, i64 8, !53, i64 30376, i64 8, !53, i64 30384, i64 12, !53, i64 30400, i64 512, !53, i64 30912, i64 256, !53, i64 31168, i64 8, !53, i64 31176, i64 8, !40, i64 31184, i64 48, !53, i64 31232, i64 16, !53, i64 31248, i64 56, !53, i64 31304, i64 56, !53, i64 31360, i64 96, !53, i64 31456, i64 96, !53, i64 31552, i64 8, !40, i64 31560, i64 56, !53, i64 31616, i64 56, !53, i64 31672, i64 56, !53, i64 31728, i64 56, !53, i64 31784, i64 32, !53, i64 31816, i64 56, !53, i64 31872, i64 56, !53, i64 31928, i64 56, !53, i64 31984, i64 56, !53, i64 32040, i64 56, !53, i64 32096, i64 56, !53, i64 32152, i64 8, !40, i64 32160, i64 32, !53, i64 32192, i64 32, !53, i64 32224, i64 8, !40, i64 32232, i64 8, !40, i64 32240, i64 56, !53, i64 32296, i64 56, !53, i64 32352, i64 56, !53, i64 32408, i64 56, !53, i64 32464, i64 56, !53, i64 32520, i64 8, !40, i64 32528, i64 8, !40, i64 32536, i64 8, !40, i64 32544, i64 8, !40, i64 32552, i64 8, !40, i64 32560, i64 8, !40, i64 32568, i64 8, !40, i64 32576, i64 8, !40, i64 32584, i64 8, !40, i64 32592, i64 8, !40, i64 32600, i64 8, !40, i64 32608, i64 8, !40, i64 32616, i64 8, !40, i64 32624, i64 8, !40, i64 32632, i64 8, !40, i64 32640, i64 80, !53, i64 32720, i64 56, !53, i64 32776, i64 8, !40, i64 32784, i64 8, !40, i64 32792, i64 8, !40, i64 32800, i64 8, !40, i64 32808, i64 8, !40, i64 32816, i64 8, !40, i64 32824, i64 8, !40, i64 32832, i64 8, !40, i64 32840, i64 8, !40, i64 32848, i64 8, !40, i64 32856, i64 8, !40, i64 32864, i64 8, !40, i64 32872, i64 8, !40, i64 32880, i64 8, !40, i64 32888, i64 8, !40, i64 32896, i64 8, !40, i64 32904, i64 8, !40, i64 32912, i64 8, !40, i64 32920, i64 8, !40, i64 32928, i64 8, !40, i64 32936, i64 8, !40, i64 32944, i64 8, !40, i64 32952, i64 8, !40, i64 32960, i64 8, !40, i64 32968, i64 8, !40, i64 32976, i64 8, !40, i64 32984, i64 8, !40, i64 32992, i64 8, !40, i64 33000, i64 8, !40, i64 33008, i64 8, !40, i64 33016, i64 8, !40, i64 33024, i64 8, !40, i64 33032, i64 8, !40, i64 33040, i64 8, !40, i64 33048, i64 8, !40, i64 33056, i64 8, !40, i64 33064, i64 8, !40, i64 33072, i64 8, !40, i64 33080, i64 8, !40, i64 33088, i64 8, !40, i64 33096, i64 8, !40, i64 33104, i64 8, !40, i64 33112, i64 8, !40, i64 33120, i64 8, !40, i64 33128, i64 8, !40, i64 33136, i64 8, !40, i64 33144, i64 8, !40, i64 33152, i64 8, !40, i64 33160, i64 8, !40, i64 33168, i64 48, !53, i64 33216, i64 40, !53, i64 33256, i64 16, !53, i64 33272, i64 16, !53, i64 33288, i64 16, !53, i64 33304, i64 16, !53, i64 33320, i64 8, !40, i64 33328, i64 8, !40}
!52 = !{!8, !8, i64 0}
!53 = !{!9, !9, i64 0}
!54 = !{!14, !14, i64 0}
!55 = !{!18, !18, i64 0}
!56 = !{!28, !28, i64 0}
!57 = !{!37, !9, i64 1}
!58 = !{!37, !9, i64 0}
!59 = !{!37, !12, i64 16}
!60 = !{!37, !8, i64 68}
!61 = !{!37, !8, i64 100}
!62 = distinct !{!62, !43}
!63 = !{!6, !12, i64 14416}
!64 = !{!37, !12, i64 56}
!65 = !{!66, !9, i64 86}
!66 = !{!"x264_frame", !8, i64 0, !8, i64 4, !8, i64 8, !18, i64 16, !18, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !12, i64 48, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !9, i64 84, !9, i64 85, !9, i64 86, !14, i64 88, !14, i64 92, !8, i64 96, !8, i64 100, !9, i64 104, !9, i64 116, !9, i64 128, !8, i64 140, !8, i64 144, !8, i64 148, !9, i64 152, !9, i64 176, !9, i64 208, !12, i64 240, !9, i64 248, !9, i64 280, !9, i64 320, !9, i64 3392, !8, i64 3520, !12, i64 3528, !12, i64 3536, !12, i64 3544, !9, i64 3552, !12, i64 3568, !9, i64 3576, !9, i64 3848, !9, i64 6440, !9, i64 6712, !9, i64 6728, !9, i64 6736, !9, i64 6864, !9, i64 6868, !9, i64 8164, !8, i64 9460, !9, i64 9464, !9, i64 9536, !12, i64 12128, !12, i64 12136, !12, i64 12144, !12, i64 12152, !12, i64 12160, !8, i64 12168, !12, i64 12176, !12, i64 12184, !12, i64 12192, !8, i64 12200, !9, i64 12204, !8, i64 12276, !18, i64 12280, !67, i64 12288, !9, i64 12320, !9, i64 12572, !9, i64 13576, !8, i64 15584, !8, i64 15588, !8, i64 15592, !8, i64 15596, !8, i64 15600, !8, i64 15604, !8, i64 15608, !14, i64 15612, !8, i64 15616, !8, i64 15620, !8, i64 15624}
!67 = !{!"", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24}
!68 = !{!66, !8, i64 4}
!69 = !{!37, !12, i64 88}
!70 = distinct !{!70, !43}
!71 = !{!66, !8, i64 15600}
!72 = !{!38, !12, i64 0}
!73 = !{!38, !8, i64 12}
!74 = distinct !{!74, !43}
