; ModuleID = 'x264_src/common/mc.c'
source_filename = "x264_src/common/mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.x264_weight_t = type { [8 x i16], [8 x i16], i32, i32, i32, ptr, [8 x i8] }
%struct.x264_frame = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, float, float, i32, i32, [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, [3 x ptr], [4 x ptr], [4 x ptr], ptr, [4 x ptr], [4 x ptr], [8 x i8], [16 x [3 x %struct.x264_weight_t]], [16 x ptr], i32, ptr, ptr, ptr, [2 x ptr], ptr, [2 x [17 x ptr]], [18 x [18 x ptr]], [2 x [17 x ptr]], [2 x ptr], [2 x i32], [2 x [16 x i32]], [2 x i16], [18 x [18 x i32]], [18 x [18 x i32]], i32, [18 x i32], [18 x [18 x ptr]], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [18 x float], i32, i64, %struct.x264_hrd_t, [251 x i8], [251 x i32], [251 x double], i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32 }
%struct.x264_hrd_t = type { double, double, double, double }
%struct.x264_t = type { %struct.x264_param_t, [129 x ptr], i32, i32, i32, i32, i32, %struct.anon.2, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.x264_sps_t], ptr, [1 x %struct.x264_pps_t], ptr, i32, i32, [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [92 x ptr], [92 x [4 x ptr]], ptr, [8 x i8], %struct.x264_slice_header_t, %struct.x264_cabac_t, %struct.anon.8, ptr, ptr, i32, [19 x ptr], i32, [19 x ptr], [2 x i32], i32, i32, i64, %struct.anon.9, %struct.anon.10, ptr, %struct.anon.13, [2 x [64 x i32]], [2 x [64 x i16]], [2 x i32], ptr, [2 x [3 x ptr]], [2 x ptr], [7 x ptr], [7 x ptr], [12 x ptr], [12 x ptr], ptr, %struct.x264_pixel_function_t, %struct.x264_mc_functions_t, %struct.x264_dct_function_t, %struct.x264_zigzag_function_t, %struct.x264_quant_function_t, %struct.x264_deblock_function_t, ptr, [8 x i8] }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], ptr, ptr, i32, i32, ptr, %struct.anon.0, %struct.anon.1, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, float, float, float, i32, float, i32, i32, i32, ptr, i32, ptr, float, float, float, ptr, i32, ptr }
%struct.anon.2 = type { i32, i32, ptr, i32, ptr, %struct.bs_s }
%struct.bs_s = type { ptr, ptr, ptr, i64, i32, i32 }
%struct.x264_sps_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.3, i32, %struct.anon.4, i32 }
%struct.anon.3 = type { i32, i32, i32, i32 }
%struct.anon.4 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.5, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.5 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_pps_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x ptr] }
%struct.x264_slice_header_t = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, [2 x [16 x %struct.anon.6]], [32 x [3 x %struct.x264_weight_t]], i32, i32, [16 x %struct.anon.7], i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.anon.6 = type { i32, i32 }
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

@weight_none = dso_local local_unnamed_addr constant [3 x %struct.x264_weight_t] [%struct.x264_weight_t { [8 x i16] zeroinitializer, [8 x i16] zeroinitializer, i32 0, i32 0, i32 0, ptr null, [8 x i8] undef }, %struct.x264_weight_t zeroinitializer, %struct.x264_weight_t zeroinitializer], align 16
@x264_mc_weight_wtab = internal global [6 x ptr] [ptr @mc_weight_w2, ptr @mc_weight_w4, ptr @mc_weight_w8, ptr @mc_weight_w12, ptr @mc_weight_w16, ptr @mc_weight_w20], align 16
@hpel_ref0 = internal unnamed_addr constant [16 x i8] c"\00\01\01\01\00\01\01\01\02\03\03\03\00\01\01\01", align 16
@hpel_ref1 = internal unnamed_addr constant [16 x i8] c"\00\00\00\00\02\02\03\02\02\02\03\02\02\02\03\02", align 16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_plane_copy_c(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %6
  %9 = sext i32 %4 to i64
  %10 = sext i32 %1 to i64
  %11 = sext i32 %3 to i64
  br label %12

12:                                               ; preds = %8, %12
  %13 = phi i32 [ %5, %8 ], [ %16, %12 ]
  %14 = phi ptr [ %0, %8 ], [ %17, %12 ]
  %15 = phi ptr [ %2, %8 ], [ %18, %12 ]
  %16 = add nsw i32 %13, -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %15, i64 %9, i1 false)
  %17 = getelementptr inbounds i8, ptr %14, i64 %10
  %18 = getelementptr inbounds i8, ptr %15, i64 %11
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %20, label %12, !llvm.loop !34

20:                                               ; preds = %12, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_frame_init_lowres(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 30
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  %5 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 24
  %6 = load i32, ptr %5, align 8, !tbaa !41
  %7 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 26
  %8 = load i32, ptr %7, align 16, !tbaa !41
  %9 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 25
  %10 = load i32, ptr %9, align 4, !tbaa !41
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = sext i32 %6 to i64
  %14 = sext i32 %10 to i64
  %15 = zext nneg i32 %8 to i64
  %16 = icmp eq i32 %6, 1
  br i1 %16, label %30, label %17

17:                                               ; preds = %12
  %18 = sext i32 %10 to i64
  %19 = getelementptr i8, ptr %4, i64 %18
  %20 = getelementptr i8, ptr %19, i64 -1
  %21 = getelementptr i8, ptr %4, i64 %14
  br label %22

22:                                               ; preds = %17, %22
  %23 = phi i64 [ %28, %22 ], [ 0, %17 ]
  %24 = mul nsw i64 %23, %13
  %25 = getelementptr i8, ptr %20, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !43
  %27 = getelementptr i8, ptr %21, i64 %24
  store i8 %26, ptr %27, align 1, !tbaa !43
  %28 = add nuw nsw i64 %23, 1
  %29 = icmp eq i64 %28, %15
  br i1 %29, label %35, label %22, !llvm.loop !44

30:                                               ; preds = %12
  %31 = getelementptr i8, ptr %4, i64 %14
  %32 = getelementptr i8, ptr %31, i64 -1
  %33 = load i8, ptr %32, align 1
  %34 = getelementptr i8, ptr %4, i64 %14
  br label %65

35:                                               ; preds = %22, %65, %2
  %36 = mul nsw i32 %8, %6
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %4, i64 %37
  %39 = add nsw i32 %8, -1
  %40 = mul nsw i32 %39, %6
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %4, i64 %41
  %43 = add nsw i32 %10, 1
  %44 = sext i32 %43 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %38, ptr align 1 %42, i64 %44, i1 false)
  %45 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 16
  %46 = load ptr, ptr %45, align 8, !tbaa !45
  %47 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 32
  %48 = load ptr, ptr %47, align 16, !tbaa !37
  %49 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 32, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !37
  %51 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 32, i64 2
  %52 = load ptr, ptr %51, align 16, !tbaa !37
  %53 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 32, i64 3
  %54 = load ptr, ptr %53, align 8, !tbaa !37
  %55 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 27
  %56 = load i32, ptr %55, align 4, !tbaa !71
  %57 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 28
  %58 = load i32, ptr %57, align 16, !tbaa !74
  %59 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 29
  %60 = load i32, ptr %59, align 4, !tbaa !75
  tail call void %46(ptr noundef %4, ptr noundef %48, ptr noundef %50, ptr noundef %52, ptr noundef %54, i32 noundef %6, i32 noundef %56, i32 noundef %58, i32 noundef %60) #12
  tail call void @x264_frame_expand_border_lowres(ptr noundef %1) #12
  %61 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1296) %61, i8 -1, i64 1296, i1 false)
  %62 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  %63 = load i32, ptr %62, align 4, !tbaa !76
  %64 = icmp sgt i32 %63, -2
  br i1 %64, label %71, label %75

65:                                               ; preds = %30, %65
  %66 = phi i64 [ 0, %30 ], [ %69, %65 ]
  %67 = mul nuw nsw i64 %66, %13
  %68 = getelementptr i8, ptr %34, i64 %67
  store i8 %33, ptr %68, align 1, !tbaa !43
  %69 = add nuw nsw i64 %66, 1
  %70 = icmp eq i64 %69, %15
  br i1 %70, label %35, label %65, !llvm.loop !44

71:                                               ; preds = %35, %81
  %72 = phi i64 [ %82, %81 ], [ 0, %35 ]
  %73 = load i32, ptr %62, align 4, !tbaa !76
  %74 = icmp sgt i32 %73, -2
  br i1 %74, label %86, label %81

75:                                               ; preds = %81, %35
  %76 = phi i32 [ %63, %35 ], [ %83, %81 ]
  %77 = icmp ne i32 %76, 0
  %78 = icmp slt i32 %76, 0
  %79 = add i32 %76, 1
  %80 = zext i32 %79 to i64
  br label %94

81:                                               ; preds = %86, %71
  %82 = add nuw nsw i64 %72, 1
  %83 = load i32, ptr %62, align 4, !tbaa !76
  %84 = sext i32 %83 to i64
  %85 = icmp sgt i64 %72, %84
  br i1 %85, label %75, label %71, !llvm.loop !77

86:                                               ; preds = %71, %86
  %87 = phi i64 [ %90, %86 ], [ 0, %71 ]
  %88 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 56, i64 %72, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !37
  store i32 -1, ptr %89, align 4, !tbaa !41
  %90 = add nuw nsw i64 %87, 1
  %91 = load i32, ptr %62, align 4, !tbaa !76
  %92 = sext i32 %91 to i64
  %93 = icmp sgt i64 %87, %92
  br i1 %93, label %81, label %86, !llvm.loop !78

94:                                               ; preds = %75, %97
  %95 = phi i64 [ 0, %75 ], [ %98, %97 ]
  br i1 %78, label %97, label %101

96:                                               ; preds = %97
  ret void

97:                                               ; preds = %101, %94
  %98 = add nuw nsw i64 %95, 1
  %99 = icmp eq i64 %95, 0
  %100 = and i1 %99, %77
  br i1 %100, label %94, label %96, !llvm.loop !79

101:                                              ; preds = %94, %101
  %102 = phi i64 [ %105, %101 ], [ 0, %94 ]
  %103 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 45, i64 %95, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !37
  store i16 32767, ptr %104, align 2, !tbaa !80
  %105 = add nuw nsw i64 %102, 1
  %106 = icmp eq i64 %105, %80
  br i1 %106, label %97, label %101, !llvm.loop !82
}

declare void @x264_frame_expand_border_lowres(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_mc_init(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 {
  store ptr @mc_luma, ptr %1, align 8, !tbaa !83
  %3 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 1
  store ptr @get_ref, ptr %3, align 8, !tbaa !84
  %4 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 2
  store ptr @mc_chroma, ptr %4, align 8, !tbaa !85
  %5 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3
  store ptr @pixel_avg_16x16, ptr %5, align 8, !tbaa !37
  %6 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 1
  store ptr @pixel_avg_16x8, ptr %6, align 8, !tbaa !37
  %7 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 2
  store ptr @pixel_avg_8x16, ptr %7, align 8, !tbaa !37
  %8 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 3
  store ptr @pixel_avg_8x8, ptr %8, align 8, !tbaa !37
  %9 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 4
  store ptr @pixel_avg_8x4, ptr %9, align 8, !tbaa !37
  %10 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 5
  store ptr @pixel_avg_4x8, ptr %10, align 8, !tbaa !37
  %11 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 6
  store ptr @pixel_avg_4x4, ptr %11, align 8, !tbaa !37
  %12 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 7
  store ptr @pixel_avg_4x2, ptr %12, align 8, !tbaa !37
  %13 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 8
  store ptr @pixel_avg_2x4, ptr %13, align 8, !tbaa !37
  %14 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 9
  store ptr @pixel_avg_2x2, ptr %14, align 8, !tbaa !37
  %15 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 17
  store ptr @x264_mc_weight_wtab, ptr %15, align 8, !tbaa !86
  %16 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 18
  store ptr @x264_mc_weight_wtab, ptr %16, align 8, !tbaa !87
  %17 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 19
  store ptr @x264_mc_weight_wtab, ptr %17, align 8, !tbaa !88
  %18 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 20
  store ptr @x264_weight_cache, ptr %18, align 8, !tbaa !89
  %19 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 5
  store ptr @mc_copy_w16, ptr %19, align 8, !tbaa !90
  %20 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 4
  store ptr @mc_copy_w16, ptr %20, align 8, !tbaa !37
  %21 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 4, i64 3
  store ptr @mc_copy_w8, ptr %21, align 8, !tbaa !37
  %22 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 4, i64 6
  store ptr @mc_copy_w4, ptr %22, align 8, !tbaa !37
  %23 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 6
  store ptr @x264_plane_copy_c, ptr %23, align 8, !tbaa !91
  %24 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 7
  store ptr @hpel_filter, ptr %24, align 8, !tbaa !92
  %25 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 8
  store ptr @prefetch_fenc_null, ptr %25, align 8, !tbaa !93
  %26 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 9
  store ptr @prefetch_ref_null, ptr %26, align 8, !tbaa !94
  %27 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 10
  store ptr @memcpy, ptr %27, align 8, !tbaa !95
  %28 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 11
  store ptr @memzero_aligned, ptr %28, align 8, !tbaa !96
  %29 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 16
  store ptr @frame_init_lowres_core, ptr %29, align 8, !tbaa !97
  %30 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 12
  store ptr @integral_init4h, ptr %30, align 8, !tbaa !98
  %31 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 13
  store ptr @integral_init8h, ptr %31, align 8, !tbaa !99
  %32 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 14
  store ptr @integral_init4v, ptr %32, align 8, !tbaa !100
  %33 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 15
  store ptr @integral_init8v, ptr %33, align 8, !tbaa !101
  %34 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 21
  store ptr @mbtree_propagate_cost, ptr %34, align 8, !tbaa !102
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_luma(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8) #0 {
  %10 = and i32 %5, 3
  %11 = shl nuw nsw i32 %10, 2
  %12 = and i32 %4, 3
  %13 = or disjoint i32 %11, %12
  %14 = ashr i32 %5, 2
  %15 = mul nsw i32 %14, %3
  %16 = ashr i32 %4, 2
  %17 = add nsw i32 %15, %16
  %18 = zext nneg i32 %13 to i64
  %19 = getelementptr inbounds [16 x i8], ptr @hpel_ref0, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !43
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !37
  %24 = sext i32 %17 to i64
  %25 = getelementptr inbounds i8, ptr %23, i64 %24
  %26 = icmp eq i32 %10, 3
  %27 = select i1 %26, i32 %3, i32 0
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %25, i64 %28
  %30 = and i32 %13, 5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %150, label %32

32:                                               ; preds = %9
  %33 = icmp sgt i32 %7, 0
  br i1 %33, label %34, label %74

34:                                               ; preds = %32
  %35 = getelementptr inbounds [16 x i8], ptr @hpel_ref1, i64 0, i64 %18
  %36 = load i8, ptr %35, align 1, !tbaa !43
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %2, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !37
  %40 = getelementptr inbounds i8, ptr %39, i64 %24
  %41 = icmp eq i32 %12, 3
  %42 = zext i1 %41 to i64
  %43 = getelementptr inbounds i8, ptr %40, i64 %42
  %44 = icmp sgt i32 %6, 0
  %45 = sext i32 %1 to i64
  %46 = sext i32 %3 to i64
  %47 = zext nneg i32 %6 to i64
  br label %48

48:                                               ; preds = %34, %53
  %49 = phi i32 [ 0, %34 ], [ %57, %53 ]
  %50 = phi ptr [ %0, %34 ], [ %54, %53 ]
  %51 = phi ptr [ %29, %34 ], [ %55, %53 ]
  %52 = phi ptr [ %43, %34 ], [ %56, %53 ]
  br i1 %44, label %59, label %53

53:                                               ; preds = %59, %48
  %54 = getelementptr inbounds i8, ptr %50, i64 %45
  %55 = getelementptr inbounds i8, ptr %51, i64 %46
  %56 = getelementptr inbounds i8, ptr %52, i64 %46
  %57 = add nuw nsw i32 %49, 1
  %58 = icmp eq i32 %57, %7
  br i1 %58, label %74, label %48, !llvm.loop !103

59:                                               ; preds = %48, %59
  %60 = phi i64 [ %72, %59 ], [ 0, %48 ]
  %61 = getelementptr inbounds i8, ptr %51, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !43
  %63 = zext i8 %62 to i16
  %64 = getelementptr inbounds i8, ptr %52, i64 %60
  %65 = load i8, ptr %64, align 1, !tbaa !43
  %66 = zext i8 %65 to i16
  %67 = add nuw nsw i16 %63, 1
  %68 = add nuw nsw i16 %67, %66
  %69 = lshr i16 %68, 1
  %70 = trunc i16 %69 to i8
  %71 = getelementptr inbounds i8, ptr %50, i64 %60
  store i8 %70, ptr %71, align 1, !tbaa !43
  %72 = add nuw nsw i64 %60, 1
  %73 = icmp eq i64 %72, %47
  br i1 %73, label %53, label %59, !llvm.loop !104

74:                                               ; preds = %53, %32
  %75 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 5
  %76 = load ptr, ptr %75, align 16, !tbaa !105
  %77 = icmp eq ptr %76, null
  br i1 %77, label %246, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 2
  %80 = load i32, ptr %79, align 16, !tbaa !107
  %81 = icmp sgt i32 %80, 0
  %82 = icmp sgt i32 %7, 0
  br i1 %81, label %90, label %83

83:                                               ; preds = %78
  br i1 %82, label %84, label %246

84:                                               ; preds = %83
  %85 = icmp sgt i32 %6, 0
  %86 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 3
  %87 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 4
  %88 = sext i32 %1 to i64
  %89 = zext nneg i32 %6 to i64
  br label %126

90:                                               ; preds = %78
  br i1 %82, label %91, label %246

91:                                               ; preds = %90
  %92 = icmp sgt i32 %6, 0
  %93 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 3
  %94 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 4
  %95 = sext i32 %1 to i64
  %96 = zext nneg i32 %6 to i64
  br label %97

97:                                               ; preds = %91, %100
  %98 = phi i32 [ 0, %91 ], [ %101, %100 ]
  %99 = phi ptr [ %0, %91 ], [ %102, %100 ]
  br i1 %92, label %104, label %100

100:                                              ; preds = %104, %97
  %101 = add nuw nsw i32 %98, 1
  %102 = getelementptr i8, ptr %99, i64 %95
  %103 = icmp eq i32 %101, %7
  br i1 %103, label %246, label %97, !llvm.loop !108

104:                                              ; preds = %97, %104
  %105 = phi i64 [ %124, %104 ], [ 0, %97 ]
  %106 = getelementptr inbounds i8, ptr %99, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !43
  %108 = zext i8 %107 to i32
  %109 = load i32, ptr %93, align 4, !tbaa !109
  %110 = mul nsw i32 %109, %108
  %111 = load i32, ptr %79, align 16, !tbaa !107
  %112 = add nsw i32 %111, -1
  %113 = shl nuw i32 1, %112
  %114 = add nsw i32 %113, %110
  %115 = ashr i32 %114, %111
  %116 = load i32, ptr %94, align 8, !tbaa !110
  %117 = add nsw i32 %115, %116
  %118 = icmp ult i32 %117, 256
  %119 = icmp sgt i32 %117, 0
  %120 = sext i1 %119 to i32
  %121 = select i1 %118, i32 %117, i32 %120
  %122 = trunc i32 %121 to i8
  %123 = getelementptr inbounds i8, ptr %99, i64 %105
  store i8 %122, ptr %123, align 1, !tbaa !43
  %124 = add nuw nsw i64 %105, 1
  %125 = icmp eq i64 %124, %96
  br i1 %125, label %100, label %104, !llvm.loop !111

126:                                              ; preds = %84, %129
  %127 = phi i32 [ 0, %84 ], [ %130, %129 ]
  %128 = phi ptr [ %0, %84 ], [ %131, %129 ]
  br i1 %85, label %133, label %129

129:                                              ; preds = %133, %126
  %130 = add nuw nsw i32 %127, 1
  %131 = getelementptr i8, ptr %128, i64 %88
  %132 = icmp eq i32 %130, %7
  br i1 %132, label %246, label %126, !llvm.loop !112

133:                                              ; preds = %126, %133
  %134 = phi i64 [ %148, %133 ], [ 0, %126 ]
  %135 = getelementptr inbounds i8, ptr %128, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !43
  %137 = zext i8 %136 to i32
  %138 = load i32, ptr %86, align 4, !tbaa !109
  %139 = mul nsw i32 %138, %137
  %140 = load i32, ptr %87, align 8, !tbaa !110
  %141 = add nsw i32 %139, %140
  %142 = icmp ult i32 %141, 256
  %143 = icmp sgt i32 %141, 0
  %144 = sext i1 %143 to i32
  %145 = select i1 %142, i32 %141, i32 %144
  %146 = trunc i32 %145 to i8
  %147 = getelementptr inbounds i8, ptr %128, i64 %134
  store i8 %146, ptr %147, align 1, !tbaa !43
  %148 = add nuw nsw i64 %134, 1
  %149 = icmp eq i64 %148, %89
  br i1 %149, label %129, label %133, !llvm.loop !113

150:                                              ; preds = %9
  %151 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 5
  %152 = load ptr, ptr %151, align 16, !tbaa !105
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %160

154:                                              ; preds = %150
  %155 = icmp sgt i32 %7, 0
  br i1 %155, label %156, label %246

156:                                              ; preds = %154
  %157 = sext i32 %6 to i64
  %158 = sext i32 %3 to i64
  %159 = sext i32 %1 to i64
  br label %238

160:                                              ; preds = %150
  %161 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 2
  %162 = load i32, ptr %161, align 16, !tbaa !107
  %163 = icmp sgt i32 %162, 0
  %164 = icmp sgt i32 %7, 0
  br i1 %163, label %173, label %165

165:                                              ; preds = %160
  br i1 %164, label %166, label %246

166:                                              ; preds = %165
  %167 = icmp sgt i32 %6, 0
  %168 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 3
  %169 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 4
  %170 = sext i32 %1 to i64
  %171 = sext i32 %3 to i64
  %172 = zext nneg i32 %6 to i64
  br label %212

173:                                              ; preds = %160
  br i1 %164, label %174, label %246

174:                                              ; preds = %173
  %175 = icmp sgt i32 %6, 0
  %176 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 3
  %177 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 4
  %178 = sext i32 %1 to i64
  %179 = sext i32 %3 to i64
  %180 = zext nneg i32 %6 to i64
  br label %181

181:                                              ; preds = %174, %185
  %182 = phi i32 [ 0, %174 ], [ %186, %185 ]
  %183 = phi ptr [ %0, %174 ], [ %187, %185 ]
  %184 = phi ptr [ %29, %174 ], [ %188, %185 ]
  br i1 %175, label %190, label %185

185:                                              ; preds = %190, %181
  %186 = add nuw nsw i32 %182, 1
  %187 = getelementptr inbounds i8, ptr %183, i64 %178
  %188 = getelementptr inbounds i8, ptr %184, i64 %179
  %189 = icmp eq i32 %186, %7
  br i1 %189, label %246, label %181, !llvm.loop !108

190:                                              ; preds = %181, %190
  %191 = phi i64 [ %210, %190 ], [ 0, %181 ]
  %192 = getelementptr inbounds i8, ptr %184, i64 %191
  %193 = load i8, ptr %192, align 1, !tbaa !43
  %194 = zext i8 %193 to i32
  %195 = load i32, ptr %176, align 4, !tbaa !109
  %196 = mul nsw i32 %195, %194
  %197 = load i32, ptr %161, align 16, !tbaa !107
  %198 = add nsw i32 %197, -1
  %199 = shl nuw i32 1, %198
  %200 = add nsw i32 %199, %196
  %201 = ashr i32 %200, %197
  %202 = load i32, ptr %177, align 8, !tbaa !110
  %203 = add nsw i32 %201, %202
  %204 = icmp ult i32 %203, 256
  %205 = icmp sgt i32 %203, 0
  %206 = sext i1 %205 to i32
  %207 = select i1 %204, i32 %203, i32 %206
  %208 = trunc i32 %207 to i8
  %209 = getelementptr inbounds i8, ptr %183, i64 %191
  store i8 %208, ptr %209, align 1, !tbaa !43
  %210 = add nuw nsw i64 %191, 1
  %211 = icmp eq i64 %210, %180
  br i1 %211, label %185, label %190, !llvm.loop !111

212:                                              ; preds = %166, %216
  %213 = phi i32 [ 0, %166 ], [ %217, %216 ]
  %214 = phi ptr [ %0, %166 ], [ %218, %216 ]
  %215 = phi ptr [ %29, %166 ], [ %219, %216 ]
  br i1 %167, label %221, label %216

216:                                              ; preds = %221, %212
  %217 = add nuw nsw i32 %213, 1
  %218 = getelementptr inbounds i8, ptr %214, i64 %170
  %219 = getelementptr inbounds i8, ptr %215, i64 %171
  %220 = icmp eq i32 %217, %7
  br i1 %220, label %246, label %212, !llvm.loop !112

221:                                              ; preds = %212, %221
  %222 = phi i64 [ %236, %221 ], [ 0, %212 ]
  %223 = getelementptr inbounds i8, ptr %215, i64 %222
  %224 = load i8, ptr %223, align 1, !tbaa !43
  %225 = zext i8 %224 to i32
  %226 = load i32, ptr %168, align 4, !tbaa !109
  %227 = mul nsw i32 %226, %225
  %228 = load i32, ptr %169, align 8, !tbaa !110
  %229 = add nsw i32 %227, %228
  %230 = icmp ult i32 %229, 256
  %231 = icmp sgt i32 %229, 0
  %232 = sext i1 %231 to i32
  %233 = select i1 %230, i32 %229, i32 %232
  %234 = trunc i32 %233 to i8
  %235 = getelementptr inbounds i8, ptr %214, i64 %222
  store i8 %234, ptr %235, align 1, !tbaa !43
  %236 = add nuw nsw i64 %222, 1
  %237 = icmp eq i64 %236, %172
  br i1 %237, label %216, label %221, !llvm.loop !113

238:                                              ; preds = %156, %238
  %239 = phi i32 [ 0, %156 ], [ %244, %238 ]
  %240 = phi ptr [ %29, %156 ], [ %242, %238 ]
  %241 = phi ptr [ %0, %156 ], [ %243, %238 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %241, ptr align 1 %240, i64 %157, i1 false)
  %242 = getelementptr inbounds i8, ptr %240, i64 %158
  %243 = getelementptr inbounds i8, ptr %241, i64 %159
  %244 = add nuw nsw i32 %239, 1
  %245 = icmp eq i32 %244, %7
  br i1 %245, label %246, label %238, !llvm.loop !114

246:                                              ; preds = %129, %100, %216, %185, %238, %83, %90, %165, %173, %154, %74
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal ptr @get_ref(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8) #0 {
  %10 = and i32 %5, 3
  %11 = shl nuw nsw i32 %10, 2
  %12 = and i32 %4, 3
  %13 = or disjoint i32 %11, %12
  %14 = ashr i32 %5, 2
  %15 = mul nsw i32 %14, %3
  %16 = ashr i32 %4, 2
  %17 = add nsw i32 %15, %16
  %18 = zext nneg i32 %13 to i64
  %19 = getelementptr inbounds [16 x i8], ptr @hpel_ref0, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !43
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !37
  %24 = sext i32 %17 to i64
  %25 = getelementptr inbounds i8, ptr %23, i64 %24
  %26 = icmp eq i32 %10, 3
  %27 = select i1 %26, i32 %3, i32 0
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %25, i64 %28
  %30 = and i32 %13, 5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %152, label %32

32:                                               ; preds = %9
  %33 = icmp sgt i32 %7, 0
  br i1 %33, label %34, label %75

34:                                               ; preds = %32
  %35 = load i32, ptr %1, align 4, !tbaa !41
  %36 = getelementptr inbounds [16 x i8], ptr @hpel_ref1, i64 0, i64 %18
  %37 = load i8, ptr %36, align 1, !tbaa !43
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %2, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !37
  %41 = getelementptr inbounds i8, ptr %40, i64 %24
  %42 = icmp eq i32 %12, 3
  %43 = zext i1 %42 to i64
  %44 = getelementptr inbounds i8, ptr %41, i64 %43
  %45 = icmp sgt i32 %6, 0
  %46 = sext i32 %35 to i64
  %47 = sext i32 %3 to i64
  %48 = zext nneg i32 %6 to i64
  br label %49

49:                                               ; preds = %34, %54
  %50 = phi i32 [ 0, %34 ], [ %58, %54 ]
  %51 = phi ptr [ %0, %34 ], [ %55, %54 ]
  %52 = phi ptr [ %29, %34 ], [ %56, %54 ]
  %53 = phi ptr [ %44, %34 ], [ %57, %54 ]
  br i1 %45, label %60, label %54

54:                                               ; preds = %60, %49
  %55 = getelementptr inbounds i8, ptr %51, i64 %46
  %56 = getelementptr inbounds i8, ptr %52, i64 %47
  %57 = getelementptr inbounds i8, ptr %53, i64 %47
  %58 = add nuw nsw i32 %50, 1
  %59 = icmp eq i32 %58, %7
  br i1 %59, label %75, label %49, !llvm.loop !103

60:                                               ; preds = %49, %60
  %61 = phi i64 [ %73, %60 ], [ 0, %49 ]
  %62 = getelementptr inbounds i8, ptr %52, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !43
  %64 = zext i8 %63 to i16
  %65 = getelementptr inbounds i8, ptr %53, i64 %61
  %66 = load i8, ptr %65, align 1, !tbaa !43
  %67 = zext i8 %66 to i16
  %68 = add nuw nsw i16 %64, 1
  %69 = add nuw nsw i16 %68, %67
  %70 = lshr i16 %69, 1
  %71 = trunc i16 %70 to i8
  %72 = getelementptr inbounds i8, ptr %51, i64 %61
  store i8 %71, ptr %72, align 1, !tbaa !43
  %73 = add nuw nsw i64 %61, 1
  %74 = icmp eq i64 %73, %48
  br i1 %74, label %54, label %60, !llvm.loop !104

75:                                               ; preds = %54, %32
  %76 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 5
  %77 = load ptr, ptr %76, align 16, !tbaa !105
  %78 = icmp eq ptr %77, null
  br i1 %78, label %236, label %79

79:                                               ; preds = %75
  %80 = load i32, ptr %1, align 4, !tbaa !41
  %81 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 2
  %82 = load i32, ptr %81, align 16, !tbaa !107
  %83 = icmp sgt i32 %82, 0
  %84 = icmp sgt i32 %7, 0
  br i1 %83, label %92, label %85

85:                                               ; preds = %79
  br i1 %84, label %86, label %236

86:                                               ; preds = %85
  %87 = icmp sgt i32 %6, 0
  %88 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 3
  %89 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 4
  %90 = sext i32 %80 to i64
  %91 = zext nneg i32 %6 to i64
  br label %128

92:                                               ; preds = %79
  br i1 %84, label %93, label %236

93:                                               ; preds = %92
  %94 = icmp sgt i32 %6, 0
  %95 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 3
  %96 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 4
  %97 = sext i32 %80 to i64
  %98 = zext nneg i32 %6 to i64
  br label %99

99:                                               ; preds = %93, %102
  %100 = phi i32 [ 0, %93 ], [ %103, %102 ]
  %101 = phi ptr [ %0, %93 ], [ %104, %102 ]
  br i1 %94, label %106, label %102

102:                                              ; preds = %106, %99
  %103 = add nuw nsw i32 %100, 1
  %104 = getelementptr i8, ptr %101, i64 %97
  %105 = icmp eq i32 %103, %7
  br i1 %105, label %236, label %99, !llvm.loop !108

106:                                              ; preds = %99, %106
  %107 = phi i64 [ %126, %106 ], [ 0, %99 ]
  %108 = getelementptr inbounds i8, ptr %101, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !43
  %110 = zext i8 %109 to i32
  %111 = load i32, ptr %95, align 4, !tbaa !109
  %112 = mul nsw i32 %111, %110
  %113 = load i32, ptr %81, align 16, !tbaa !107
  %114 = add nsw i32 %113, -1
  %115 = shl nuw i32 1, %114
  %116 = add nsw i32 %115, %112
  %117 = ashr i32 %116, %113
  %118 = load i32, ptr %96, align 8, !tbaa !110
  %119 = add nsw i32 %117, %118
  %120 = icmp ult i32 %119, 256
  %121 = icmp sgt i32 %119, 0
  %122 = sext i1 %121 to i32
  %123 = select i1 %120, i32 %119, i32 %122
  %124 = trunc i32 %123 to i8
  %125 = getelementptr inbounds i8, ptr %101, i64 %107
  store i8 %124, ptr %125, align 1, !tbaa !43
  %126 = add nuw nsw i64 %107, 1
  %127 = icmp eq i64 %126, %98
  br i1 %127, label %102, label %106, !llvm.loop !111

128:                                              ; preds = %86, %131
  %129 = phi i32 [ 0, %86 ], [ %132, %131 ]
  %130 = phi ptr [ %0, %86 ], [ %133, %131 ]
  br i1 %87, label %135, label %131

131:                                              ; preds = %135, %128
  %132 = add nuw nsw i32 %129, 1
  %133 = getelementptr i8, ptr %130, i64 %90
  %134 = icmp eq i32 %132, %7
  br i1 %134, label %236, label %128, !llvm.loop !112

135:                                              ; preds = %128, %135
  %136 = phi i64 [ %150, %135 ], [ 0, %128 ]
  %137 = getelementptr inbounds i8, ptr %130, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !43
  %139 = zext i8 %138 to i32
  %140 = load i32, ptr %88, align 4, !tbaa !109
  %141 = mul nsw i32 %140, %139
  %142 = load i32, ptr %89, align 8, !tbaa !110
  %143 = add nsw i32 %141, %142
  %144 = icmp ult i32 %143, 256
  %145 = icmp sgt i32 %143, 0
  %146 = sext i1 %145 to i32
  %147 = select i1 %144, i32 %143, i32 %146
  %148 = trunc i32 %147 to i8
  %149 = getelementptr inbounds i8, ptr %130, i64 %136
  store i8 %148, ptr %149, align 1, !tbaa !43
  %150 = add nuw nsw i64 %136, 1
  %151 = icmp eq i64 %150, %91
  br i1 %151, label %131, label %135, !llvm.loop !113

152:                                              ; preds = %9
  %153 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 5
  %154 = load ptr, ptr %153, align 16, !tbaa !105
  %155 = icmp eq ptr %154, null
  br i1 %155, label %235, label %156

156:                                              ; preds = %152
  %157 = load i32, ptr %1, align 4, !tbaa !41
  %158 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 2
  %159 = load i32, ptr %158, align 16, !tbaa !107
  %160 = icmp sgt i32 %159, 0
  %161 = icmp sgt i32 %7, 0
  br i1 %160, label %170, label %162

162:                                              ; preds = %156
  br i1 %161, label %163, label %236

163:                                              ; preds = %162
  %164 = icmp sgt i32 %6, 0
  %165 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 3
  %166 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 4
  %167 = sext i32 %157 to i64
  %168 = sext i32 %3 to i64
  %169 = zext nneg i32 %6 to i64
  br label %209

170:                                              ; preds = %156
  br i1 %161, label %171, label %236

171:                                              ; preds = %170
  %172 = icmp sgt i32 %6, 0
  %173 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 3
  %174 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 4
  %175 = sext i32 %157 to i64
  %176 = sext i32 %3 to i64
  %177 = zext nneg i32 %6 to i64
  br label %178

178:                                              ; preds = %171, %182
  %179 = phi i32 [ 0, %171 ], [ %183, %182 ]
  %180 = phi ptr [ %0, %171 ], [ %184, %182 ]
  %181 = phi ptr [ %29, %171 ], [ %185, %182 ]
  br i1 %172, label %187, label %182

182:                                              ; preds = %187, %178
  %183 = add nuw nsw i32 %179, 1
  %184 = getelementptr inbounds i8, ptr %180, i64 %175
  %185 = getelementptr inbounds i8, ptr %181, i64 %176
  %186 = icmp eq i32 %183, %7
  br i1 %186, label %236, label %178, !llvm.loop !108

187:                                              ; preds = %178, %187
  %188 = phi i64 [ %207, %187 ], [ 0, %178 ]
  %189 = getelementptr inbounds i8, ptr %181, i64 %188
  %190 = load i8, ptr %189, align 1, !tbaa !43
  %191 = zext i8 %190 to i32
  %192 = load i32, ptr %173, align 4, !tbaa !109
  %193 = mul nsw i32 %192, %191
  %194 = load i32, ptr %158, align 16, !tbaa !107
  %195 = add nsw i32 %194, -1
  %196 = shl nuw i32 1, %195
  %197 = add nsw i32 %196, %193
  %198 = ashr i32 %197, %194
  %199 = load i32, ptr %174, align 8, !tbaa !110
  %200 = add nsw i32 %198, %199
  %201 = icmp ult i32 %200, 256
  %202 = icmp sgt i32 %200, 0
  %203 = sext i1 %202 to i32
  %204 = select i1 %201, i32 %200, i32 %203
  %205 = trunc i32 %204 to i8
  %206 = getelementptr inbounds i8, ptr %180, i64 %188
  store i8 %205, ptr %206, align 1, !tbaa !43
  %207 = add nuw nsw i64 %188, 1
  %208 = icmp eq i64 %207, %177
  br i1 %208, label %182, label %187, !llvm.loop !111

209:                                              ; preds = %163, %213
  %210 = phi i32 [ 0, %163 ], [ %214, %213 ]
  %211 = phi ptr [ %0, %163 ], [ %215, %213 ]
  %212 = phi ptr [ %29, %163 ], [ %216, %213 ]
  br i1 %164, label %218, label %213

213:                                              ; preds = %218, %209
  %214 = add nuw nsw i32 %210, 1
  %215 = getelementptr inbounds i8, ptr %211, i64 %167
  %216 = getelementptr inbounds i8, ptr %212, i64 %168
  %217 = icmp eq i32 %214, %7
  br i1 %217, label %236, label %209, !llvm.loop !112

218:                                              ; preds = %209, %218
  %219 = phi i64 [ %233, %218 ], [ 0, %209 ]
  %220 = getelementptr inbounds i8, ptr %212, i64 %219
  %221 = load i8, ptr %220, align 1, !tbaa !43
  %222 = zext i8 %221 to i32
  %223 = load i32, ptr %165, align 4, !tbaa !109
  %224 = mul nsw i32 %223, %222
  %225 = load i32, ptr %166, align 8, !tbaa !110
  %226 = add nsw i32 %224, %225
  %227 = icmp ult i32 %226, 256
  %228 = icmp sgt i32 %226, 0
  %229 = sext i1 %228 to i32
  %230 = select i1 %227, i32 %226, i32 %229
  %231 = trunc i32 %230 to i8
  %232 = getelementptr inbounds i8, ptr %211, i64 %219
  store i8 %231, ptr %232, align 1, !tbaa !43
  %233 = add nuw nsw i64 %219, 1
  %234 = icmp eq i64 %233, %169
  br i1 %234, label %213, label %218, !llvm.loop !113

235:                                              ; preds = %152
  store i32 %3, ptr %1, align 4, !tbaa !41
  br label %236

236:                                              ; preds = %131, %102, %213, %182, %85, %92, %162, %170, %75, %235
  %237 = phi ptr [ %29, %235 ], [ %0, %75 ], [ %0, %170 ], [ %0, %162 ], [ %0, %92 ], [ %0, %85 ], [ %0, %182 ], [ %0, %213 ], [ %0, %102 ], [ %0, %131 ]
  ret ptr %237
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_chroma(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = and i32 %4, 7
  %10 = and i32 %5, 7
  %11 = sub nuw nsw i32 8, %9
  %12 = sub nuw nsw i32 8, %10
  %13 = sext i32 %3 to i64
  %14 = icmp sgt i32 %7, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %8
  %16 = ashr i32 %5, 3
  %17 = mul nsw i32 %16, %3
  %18 = ashr i32 %4, 3
  %19 = add nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %2, i64 %20
  %22 = icmp sgt i32 %6, 0
  %23 = sext i32 %1 to i64
  %24 = zext nneg i32 %6 to i64
  br label %25

25:                                               ; preds = %15, %31
  %26 = phi i32 [ 0, %15 ], [ %33, %31 ]
  %27 = phi ptr [ %0, %15 ], [ %32, %31 ]
  %28 = phi ptr [ %21, %15 ], [ %29, %31 ]
  %29 = getelementptr inbounds i8, ptr %28, i64 %13
  br i1 %22, label %35, label %31

30:                                               ; preds = %31, %8
  ret void

31:                                               ; preds = %35, %25
  %32 = getelementptr inbounds i8, ptr %27, i64 %23
  %33 = add nuw nsw i32 %26, 1
  %34 = icmp eq i32 %33, %7
  br i1 %34, label %30, label %25, !llvm.loop !115

35:                                               ; preds = %25, %35
  %36 = phi i64 [ %41, %35 ], [ 0, %25 ]
  %37 = getelementptr inbounds i8, ptr %28, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !43
  %39 = zext i8 %38 to i32
  %40 = mul nuw nsw i32 %11, %39
  %41 = add nuw nsw i64 %36, 1
  %42 = getelementptr inbounds i8, ptr %28, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !43
  %44 = zext i8 %43 to i32
  %45 = mul nuw nsw i32 %9, %44
  %46 = getelementptr inbounds i8, ptr %29, i64 %36
  %47 = load i8, ptr %46, align 1, !tbaa !43
  %48 = zext i8 %47 to i32
  %49 = mul nuw nsw i32 %11, %48
  %50 = getelementptr inbounds i8, ptr %29, i64 %41
  %51 = load i8, ptr %50, align 1, !tbaa !43
  %52 = zext i8 %51 to i32
  %53 = mul nuw nsw i32 %9, %52
  %54 = add nuw nsw i32 %53, %49
  %55 = mul nuw nsw i32 %54, %10
  %56 = add nuw nsw i32 %45, %40
  %57 = mul nuw nsw i32 %56, %12
  %58 = add nuw nsw i32 %57, 32
  %59 = add nuw nsw i32 %58, %55
  %60 = lshr i32 %59, 6
  %61 = trunc i32 %60 to i8
  %62 = getelementptr inbounds i8, ptr %27, i64 %36
  store i8 %61, ptr %62, align 1, !tbaa !43
  %63 = icmp eq i64 %41, %24
  br i1 %63, label %31, label %35, !llvm.loop !116
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_16x16(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = icmp eq i32 %6, 32
  br i1 %8, label %9, label %39

9:                                                ; preds = %7
  %10 = sext i32 %3 to i64
  %11 = sext i32 %5 to i64
  %12 = sext i32 %1 to i64
  br label %13

13:                                               ; preds = %9, %18
  %14 = phi i32 [ 0, %9 ], [ %22, %18 ]
  %15 = phi ptr [ %0, %9 ], [ %21, %18 ]
  %16 = phi ptr [ %2, %9 ], [ %19, %18 ]
  %17 = phi ptr [ %4, %9 ], [ %20, %18 ]
  br label %24

18:                                               ; preds = %24
  %19 = getelementptr inbounds i8, ptr %16, i64 %10
  %20 = getelementptr inbounds i8, ptr %17, i64 %11
  %21 = getelementptr inbounds i8, ptr %15, i64 %12
  %22 = add nuw nsw i32 %14, 1
  %23 = icmp eq i32 %22, 16
  br i1 %23, label %40, label %13, !llvm.loop !117

24:                                               ; preds = %13, %24
  %25 = phi i64 [ 0, %13 ], [ %37, %24 ]
  %26 = getelementptr inbounds i8, ptr %16, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !43
  %28 = zext i8 %27 to i16
  %29 = getelementptr inbounds i8, ptr %17, i64 %25
  %30 = load i8, ptr %29, align 1, !tbaa !43
  %31 = zext i8 %30 to i16
  %32 = add nuw nsw i16 %28, 1
  %33 = add nuw nsw i16 %32, %31
  %34 = lshr i16 %33, 1
  %35 = trunc i16 %34 to i8
  %36 = getelementptr inbounds i8, ptr %15, i64 %25
  store i8 %35, ptr %36, align 1, !tbaa !43
  %37 = add nuw nsw i64 %25, 1
  %38 = icmp eq i64 %37, 16
  br i1 %38, label %18, label %24, !llvm.loop !118

39:                                               ; preds = %7
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 16, i32 noundef 16, i32 noundef %6)
  br label %40

40:                                               ; preds = %18, %39
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_16x8(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = icmp eq i32 %6, 32
  br i1 %8, label %9, label %39

9:                                                ; preds = %7
  %10 = sext i32 %3 to i64
  %11 = sext i32 %5 to i64
  %12 = sext i32 %1 to i64
  br label %13

13:                                               ; preds = %9, %18
  %14 = phi i32 [ 0, %9 ], [ %22, %18 ]
  %15 = phi ptr [ %0, %9 ], [ %21, %18 ]
  %16 = phi ptr [ %2, %9 ], [ %19, %18 ]
  %17 = phi ptr [ %4, %9 ], [ %20, %18 ]
  br label %24

18:                                               ; preds = %24
  %19 = getelementptr inbounds i8, ptr %16, i64 %10
  %20 = getelementptr inbounds i8, ptr %17, i64 %11
  %21 = getelementptr inbounds i8, ptr %15, i64 %12
  %22 = add nuw nsw i32 %14, 1
  %23 = icmp eq i32 %22, 8
  br i1 %23, label %40, label %13, !llvm.loop !117

24:                                               ; preds = %13, %24
  %25 = phi i64 [ 0, %13 ], [ %37, %24 ]
  %26 = getelementptr inbounds i8, ptr %16, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !43
  %28 = zext i8 %27 to i16
  %29 = getelementptr inbounds i8, ptr %17, i64 %25
  %30 = load i8, ptr %29, align 1, !tbaa !43
  %31 = zext i8 %30 to i16
  %32 = add nuw nsw i16 %28, 1
  %33 = add nuw nsw i16 %32, %31
  %34 = lshr i16 %33, 1
  %35 = trunc i16 %34 to i8
  %36 = getelementptr inbounds i8, ptr %15, i64 %25
  store i8 %35, ptr %36, align 1, !tbaa !43
  %37 = add nuw nsw i64 %25, 1
  %38 = icmp eq i64 %37, 16
  br i1 %38, label %18, label %24, !llvm.loop !118

39:                                               ; preds = %7
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 16, i32 noundef 8, i32 noundef %6)
  br label %40

40:                                               ; preds = %18, %39
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_8x16(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = icmp eq i32 %6, 32
  br i1 %8, label %9, label %39

9:                                                ; preds = %7
  %10 = sext i32 %3 to i64
  %11 = sext i32 %5 to i64
  %12 = sext i32 %1 to i64
  br label %13

13:                                               ; preds = %9, %18
  %14 = phi i32 [ 0, %9 ], [ %22, %18 ]
  %15 = phi ptr [ %0, %9 ], [ %21, %18 ]
  %16 = phi ptr [ %2, %9 ], [ %19, %18 ]
  %17 = phi ptr [ %4, %9 ], [ %20, %18 ]
  br label %24

18:                                               ; preds = %24
  %19 = getelementptr inbounds i8, ptr %16, i64 %10
  %20 = getelementptr inbounds i8, ptr %17, i64 %11
  %21 = getelementptr inbounds i8, ptr %15, i64 %12
  %22 = add nuw nsw i32 %14, 1
  %23 = icmp eq i32 %22, 16
  br i1 %23, label %40, label %13, !llvm.loop !117

24:                                               ; preds = %13, %24
  %25 = phi i64 [ 0, %13 ], [ %37, %24 ]
  %26 = getelementptr inbounds i8, ptr %16, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !43
  %28 = zext i8 %27 to i16
  %29 = getelementptr inbounds i8, ptr %17, i64 %25
  %30 = load i8, ptr %29, align 1, !tbaa !43
  %31 = zext i8 %30 to i16
  %32 = add nuw nsw i16 %28, 1
  %33 = add nuw nsw i16 %32, %31
  %34 = lshr i16 %33, 1
  %35 = trunc i16 %34 to i8
  %36 = getelementptr inbounds i8, ptr %15, i64 %25
  store i8 %35, ptr %36, align 1, !tbaa !43
  %37 = add nuw nsw i64 %25, 1
  %38 = icmp eq i64 %37, 8
  br i1 %38, label %18, label %24, !llvm.loop !118

39:                                               ; preds = %7
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 8, i32 noundef 16, i32 noundef %6)
  br label %40

40:                                               ; preds = %18, %39
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_8x8(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = icmp eq i32 %6, 32
  br i1 %8, label %9, label %39

9:                                                ; preds = %7
  %10 = sext i32 %3 to i64
  %11 = sext i32 %5 to i64
  %12 = sext i32 %1 to i64
  br label %13

13:                                               ; preds = %9, %18
  %14 = phi i32 [ 0, %9 ], [ %22, %18 ]
  %15 = phi ptr [ %0, %9 ], [ %21, %18 ]
  %16 = phi ptr [ %2, %9 ], [ %19, %18 ]
  %17 = phi ptr [ %4, %9 ], [ %20, %18 ]
  br label %24

18:                                               ; preds = %24
  %19 = getelementptr inbounds i8, ptr %16, i64 %10
  %20 = getelementptr inbounds i8, ptr %17, i64 %11
  %21 = getelementptr inbounds i8, ptr %15, i64 %12
  %22 = add nuw nsw i32 %14, 1
  %23 = icmp eq i32 %22, 8
  br i1 %23, label %40, label %13, !llvm.loop !117

24:                                               ; preds = %13, %24
  %25 = phi i64 [ 0, %13 ], [ %37, %24 ]
  %26 = getelementptr inbounds i8, ptr %16, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !43
  %28 = zext i8 %27 to i16
  %29 = getelementptr inbounds i8, ptr %17, i64 %25
  %30 = load i8, ptr %29, align 1, !tbaa !43
  %31 = zext i8 %30 to i16
  %32 = add nuw nsw i16 %28, 1
  %33 = add nuw nsw i16 %32, %31
  %34 = lshr i16 %33, 1
  %35 = trunc i16 %34 to i8
  %36 = getelementptr inbounds i8, ptr %15, i64 %25
  store i8 %35, ptr %36, align 1, !tbaa !43
  %37 = add nuw nsw i64 %25, 1
  %38 = icmp eq i64 %37, 8
  br i1 %38, label %18, label %24, !llvm.loop !118

39:                                               ; preds = %7
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 8, i32 noundef 8, i32 noundef %6)
  br label %40

40:                                               ; preds = %18, %39
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_8x4(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = icmp eq i32 %6, 32
  br i1 %8, label %9, label %39

9:                                                ; preds = %7
  %10 = sext i32 %3 to i64
  %11 = sext i32 %5 to i64
  %12 = sext i32 %1 to i64
  br label %13

13:                                               ; preds = %9, %18
  %14 = phi i32 [ 0, %9 ], [ %22, %18 ]
  %15 = phi ptr [ %0, %9 ], [ %21, %18 ]
  %16 = phi ptr [ %2, %9 ], [ %19, %18 ]
  %17 = phi ptr [ %4, %9 ], [ %20, %18 ]
  br label %24

18:                                               ; preds = %24
  %19 = getelementptr inbounds i8, ptr %16, i64 %10
  %20 = getelementptr inbounds i8, ptr %17, i64 %11
  %21 = getelementptr inbounds i8, ptr %15, i64 %12
  %22 = add nuw nsw i32 %14, 1
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %40, label %13, !llvm.loop !117

24:                                               ; preds = %13, %24
  %25 = phi i64 [ 0, %13 ], [ %37, %24 ]
  %26 = getelementptr inbounds i8, ptr %16, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !43
  %28 = zext i8 %27 to i16
  %29 = getelementptr inbounds i8, ptr %17, i64 %25
  %30 = load i8, ptr %29, align 1, !tbaa !43
  %31 = zext i8 %30 to i16
  %32 = add nuw nsw i16 %28, 1
  %33 = add nuw nsw i16 %32, %31
  %34 = lshr i16 %33, 1
  %35 = trunc i16 %34 to i8
  %36 = getelementptr inbounds i8, ptr %15, i64 %25
  store i8 %35, ptr %36, align 1, !tbaa !43
  %37 = add nuw nsw i64 %25, 1
  %38 = icmp eq i64 %37, 8
  br i1 %38, label %18, label %24, !llvm.loop !118

39:                                               ; preds = %7
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 8, i32 noundef 4, i32 noundef %6)
  br label %40

40:                                               ; preds = %18, %39
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_4x8(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = icmp eq i32 %6, 32
  br i1 %8, label %9, label %39

9:                                                ; preds = %7
  %10 = sext i32 %3 to i64
  %11 = sext i32 %5 to i64
  %12 = sext i32 %1 to i64
  br label %13

13:                                               ; preds = %9, %18
  %14 = phi i32 [ 0, %9 ], [ %22, %18 ]
  %15 = phi ptr [ %0, %9 ], [ %21, %18 ]
  %16 = phi ptr [ %2, %9 ], [ %19, %18 ]
  %17 = phi ptr [ %4, %9 ], [ %20, %18 ]
  br label %24

18:                                               ; preds = %24
  %19 = getelementptr inbounds i8, ptr %16, i64 %10
  %20 = getelementptr inbounds i8, ptr %17, i64 %11
  %21 = getelementptr inbounds i8, ptr %15, i64 %12
  %22 = add nuw nsw i32 %14, 1
  %23 = icmp eq i32 %22, 8
  br i1 %23, label %119, label %13, !llvm.loop !117

24:                                               ; preds = %13, %24
  %25 = phi i64 [ 0, %13 ], [ %37, %24 ]
  %26 = getelementptr inbounds i8, ptr %16, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !43
  %28 = zext i8 %27 to i16
  %29 = getelementptr inbounds i8, ptr %17, i64 %25
  %30 = load i8, ptr %29, align 1, !tbaa !43
  %31 = zext i8 %30 to i16
  %32 = add nuw nsw i16 %28, 1
  %33 = add nuw nsw i16 %32, %31
  %34 = lshr i16 %33, 1
  %35 = trunc i16 %34 to i8
  %36 = getelementptr inbounds i8, ptr %15, i64 %25
  store i8 %35, ptr %36, align 1, !tbaa !43
  %37 = add nuw nsw i64 %25, 1
  %38 = icmp eq i64 %37, 4
  br i1 %38, label %18, label %24, !llvm.loop !118

39:                                               ; preds = %7
  %40 = sub nsw i32 64, %6
  %41 = sext i32 %1 to i64
  %42 = sext i32 %3 to i64
  %43 = sext i32 %5 to i64
  br label %44

44:                                               ; preds = %39, %44
  %45 = phi i32 [ 0, %39 ], [ %114, %44 ]
  %46 = phi ptr [ %0, %39 ], [ %115, %44 ]
  %47 = phi ptr [ %2, %39 ], [ %116, %44 ]
  %48 = phi ptr [ %4, %39 ], [ %117, %44 ]
  %49 = load i8, ptr %47, align 1, !tbaa !43
  %50 = zext i8 %49 to i32
  %51 = mul nsw i32 %50, %6
  %52 = load i8, ptr %48, align 1, !tbaa !43
  %53 = zext i8 %52 to i32
  %54 = mul nsw i32 %40, %53
  %55 = add i32 %51, 32
  %56 = add i32 %55, %54
  %57 = ashr i32 %56, 6
  %58 = icmp ult i32 %57, 256
  %59 = icmp sgt i32 %57, 0
  %60 = sext i1 %59 to i32
  %61 = select i1 %58, i32 %57, i32 %60
  %62 = trunc i32 %61 to i8
  store i8 %62, ptr %46, align 1, !tbaa !43
  %63 = getelementptr inbounds i8, ptr %47, i64 1
  %64 = load i8, ptr %63, align 1, !tbaa !43
  %65 = zext i8 %64 to i32
  %66 = mul nsw i32 %65, %6
  %67 = getelementptr inbounds i8, ptr %48, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !43
  %69 = zext i8 %68 to i32
  %70 = mul nsw i32 %40, %69
  %71 = add i32 %66, 32
  %72 = add i32 %71, %70
  %73 = ashr i32 %72, 6
  %74 = icmp ult i32 %73, 256
  %75 = icmp sgt i32 %73, 0
  %76 = sext i1 %75 to i32
  %77 = select i1 %74, i32 %73, i32 %76
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds i8, ptr %46, i64 1
  store i8 %78, ptr %79, align 1, !tbaa !43
  %80 = getelementptr inbounds i8, ptr %47, i64 2
  %81 = load i8, ptr %80, align 1, !tbaa !43
  %82 = zext i8 %81 to i32
  %83 = mul nsw i32 %82, %6
  %84 = getelementptr inbounds i8, ptr %48, i64 2
  %85 = load i8, ptr %84, align 1, !tbaa !43
  %86 = zext i8 %85 to i32
  %87 = mul nsw i32 %40, %86
  %88 = add i32 %83, 32
  %89 = add i32 %88, %87
  %90 = ashr i32 %89, 6
  %91 = icmp ult i32 %90, 256
  %92 = icmp sgt i32 %90, 0
  %93 = sext i1 %92 to i32
  %94 = select i1 %91, i32 %90, i32 %93
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds i8, ptr %46, i64 2
  store i8 %95, ptr %96, align 1, !tbaa !43
  %97 = getelementptr inbounds i8, ptr %47, i64 3
  %98 = load i8, ptr %97, align 1, !tbaa !43
  %99 = zext i8 %98 to i32
  %100 = mul nsw i32 %99, %6
  %101 = getelementptr inbounds i8, ptr %48, i64 3
  %102 = load i8, ptr %101, align 1, !tbaa !43
  %103 = zext i8 %102 to i32
  %104 = mul nsw i32 %40, %103
  %105 = add i32 %100, 32
  %106 = add i32 %105, %104
  %107 = ashr i32 %106, 6
  %108 = icmp ult i32 %107, 256
  %109 = icmp sgt i32 %107, 0
  %110 = sext i1 %109 to i32
  %111 = select i1 %108, i32 %107, i32 %110
  %112 = trunc i32 %111 to i8
  %113 = getelementptr inbounds i8, ptr %46, i64 3
  store i8 %112, ptr %113, align 1, !tbaa !43
  %114 = add nuw nsw i32 %45, 1
  %115 = getelementptr inbounds i8, ptr %46, i64 %41
  %116 = getelementptr inbounds i8, ptr %47, i64 %42
  %117 = getelementptr inbounds i8, ptr %48, i64 %43
  %118 = icmp eq i32 %114, 8
  br i1 %118, label %119, label %44, !llvm.loop !119

119:                                              ; preds = %44, %18
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_4x4(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = icmp eq i32 %6, 32
  br i1 %8, label %9, label %39

9:                                                ; preds = %7
  %10 = sext i32 %3 to i64
  %11 = sext i32 %5 to i64
  %12 = sext i32 %1 to i64
  br label %13

13:                                               ; preds = %9, %18
  %14 = phi i32 [ 0, %9 ], [ %22, %18 ]
  %15 = phi ptr [ %0, %9 ], [ %21, %18 ]
  %16 = phi ptr [ %2, %9 ], [ %19, %18 ]
  %17 = phi ptr [ %4, %9 ], [ %20, %18 ]
  br label %24

18:                                               ; preds = %24
  %19 = getelementptr inbounds i8, ptr %16, i64 %10
  %20 = getelementptr inbounds i8, ptr %17, i64 %11
  %21 = getelementptr inbounds i8, ptr %15, i64 %12
  %22 = add nuw nsw i32 %14, 1
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %119, label %13, !llvm.loop !117

24:                                               ; preds = %13, %24
  %25 = phi i64 [ 0, %13 ], [ %37, %24 ]
  %26 = getelementptr inbounds i8, ptr %16, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !43
  %28 = zext i8 %27 to i16
  %29 = getelementptr inbounds i8, ptr %17, i64 %25
  %30 = load i8, ptr %29, align 1, !tbaa !43
  %31 = zext i8 %30 to i16
  %32 = add nuw nsw i16 %28, 1
  %33 = add nuw nsw i16 %32, %31
  %34 = lshr i16 %33, 1
  %35 = trunc i16 %34 to i8
  %36 = getelementptr inbounds i8, ptr %15, i64 %25
  store i8 %35, ptr %36, align 1, !tbaa !43
  %37 = add nuw nsw i64 %25, 1
  %38 = icmp eq i64 %37, 4
  br i1 %38, label %18, label %24, !llvm.loop !118

39:                                               ; preds = %7
  %40 = sub nsw i32 64, %6
  %41 = sext i32 %1 to i64
  %42 = sext i32 %3 to i64
  %43 = sext i32 %5 to i64
  br label %44

44:                                               ; preds = %39, %44
  %45 = phi i32 [ 0, %39 ], [ %114, %44 ]
  %46 = phi ptr [ %0, %39 ], [ %115, %44 ]
  %47 = phi ptr [ %2, %39 ], [ %116, %44 ]
  %48 = phi ptr [ %4, %39 ], [ %117, %44 ]
  %49 = load i8, ptr %47, align 1, !tbaa !43
  %50 = zext i8 %49 to i32
  %51 = mul nsw i32 %50, %6
  %52 = load i8, ptr %48, align 1, !tbaa !43
  %53 = zext i8 %52 to i32
  %54 = mul nsw i32 %40, %53
  %55 = add i32 %51, 32
  %56 = add i32 %55, %54
  %57 = ashr i32 %56, 6
  %58 = icmp ult i32 %57, 256
  %59 = icmp sgt i32 %57, 0
  %60 = sext i1 %59 to i32
  %61 = select i1 %58, i32 %57, i32 %60
  %62 = trunc i32 %61 to i8
  store i8 %62, ptr %46, align 1, !tbaa !43
  %63 = getelementptr inbounds i8, ptr %47, i64 1
  %64 = load i8, ptr %63, align 1, !tbaa !43
  %65 = zext i8 %64 to i32
  %66 = mul nsw i32 %65, %6
  %67 = getelementptr inbounds i8, ptr %48, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !43
  %69 = zext i8 %68 to i32
  %70 = mul nsw i32 %40, %69
  %71 = add i32 %66, 32
  %72 = add i32 %71, %70
  %73 = ashr i32 %72, 6
  %74 = icmp ult i32 %73, 256
  %75 = icmp sgt i32 %73, 0
  %76 = sext i1 %75 to i32
  %77 = select i1 %74, i32 %73, i32 %76
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds i8, ptr %46, i64 1
  store i8 %78, ptr %79, align 1, !tbaa !43
  %80 = getelementptr inbounds i8, ptr %47, i64 2
  %81 = load i8, ptr %80, align 1, !tbaa !43
  %82 = zext i8 %81 to i32
  %83 = mul nsw i32 %82, %6
  %84 = getelementptr inbounds i8, ptr %48, i64 2
  %85 = load i8, ptr %84, align 1, !tbaa !43
  %86 = zext i8 %85 to i32
  %87 = mul nsw i32 %40, %86
  %88 = add i32 %83, 32
  %89 = add i32 %88, %87
  %90 = ashr i32 %89, 6
  %91 = icmp ult i32 %90, 256
  %92 = icmp sgt i32 %90, 0
  %93 = sext i1 %92 to i32
  %94 = select i1 %91, i32 %90, i32 %93
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds i8, ptr %46, i64 2
  store i8 %95, ptr %96, align 1, !tbaa !43
  %97 = getelementptr inbounds i8, ptr %47, i64 3
  %98 = load i8, ptr %97, align 1, !tbaa !43
  %99 = zext i8 %98 to i32
  %100 = mul nsw i32 %99, %6
  %101 = getelementptr inbounds i8, ptr %48, i64 3
  %102 = load i8, ptr %101, align 1, !tbaa !43
  %103 = zext i8 %102 to i32
  %104 = mul nsw i32 %40, %103
  %105 = add i32 %100, 32
  %106 = add i32 %105, %104
  %107 = ashr i32 %106, 6
  %108 = icmp ult i32 %107, 256
  %109 = icmp sgt i32 %107, 0
  %110 = sext i1 %109 to i32
  %111 = select i1 %108, i32 %107, i32 %110
  %112 = trunc i32 %111 to i8
  %113 = getelementptr inbounds i8, ptr %46, i64 3
  store i8 %112, ptr %113, align 1, !tbaa !43
  %114 = add nuw nsw i32 %45, 1
  %115 = getelementptr inbounds i8, ptr %46, i64 %41
  %116 = getelementptr inbounds i8, ptr %47, i64 %42
  %117 = getelementptr inbounds i8, ptr %48, i64 %43
  %118 = icmp eq i32 %114, 4
  br i1 %118, label %119, label %44, !llvm.loop !119

119:                                              ; preds = %44, %18
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_4x2(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = icmp eq i32 %6, 32
  br i1 %8, label %9, label %39

9:                                                ; preds = %7
  %10 = sext i32 %3 to i64
  %11 = sext i32 %5 to i64
  %12 = sext i32 %1 to i64
  br label %13

13:                                               ; preds = %9, %18
  %14 = phi i32 [ 0, %9 ], [ %22, %18 ]
  %15 = phi ptr [ %0, %9 ], [ %21, %18 ]
  %16 = phi ptr [ %2, %9 ], [ %19, %18 ]
  %17 = phi ptr [ %4, %9 ], [ %20, %18 ]
  br label %24

18:                                               ; preds = %24
  %19 = getelementptr inbounds i8, ptr %16, i64 %10
  %20 = getelementptr inbounds i8, ptr %17, i64 %11
  %21 = getelementptr inbounds i8, ptr %15, i64 %12
  %22 = add nuw nsw i32 %14, 1
  %23 = icmp eq i32 %14, 0
  br i1 %23, label %13, label %119, !llvm.loop !117

24:                                               ; preds = %13, %24
  %25 = phi i64 [ 0, %13 ], [ %37, %24 ]
  %26 = getelementptr inbounds i8, ptr %16, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !43
  %28 = zext i8 %27 to i16
  %29 = getelementptr inbounds i8, ptr %17, i64 %25
  %30 = load i8, ptr %29, align 1, !tbaa !43
  %31 = zext i8 %30 to i16
  %32 = add nuw nsw i16 %28, 1
  %33 = add nuw nsw i16 %32, %31
  %34 = lshr i16 %33, 1
  %35 = trunc i16 %34 to i8
  %36 = getelementptr inbounds i8, ptr %15, i64 %25
  store i8 %35, ptr %36, align 1, !tbaa !43
  %37 = add nuw nsw i64 %25, 1
  %38 = icmp eq i64 %37, 4
  br i1 %38, label %18, label %24, !llvm.loop !118

39:                                               ; preds = %7
  %40 = sub nsw i32 64, %6
  %41 = sext i32 %1 to i64
  %42 = sext i32 %3 to i64
  %43 = sext i32 %5 to i64
  br label %44

44:                                               ; preds = %39, %44
  %45 = phi i32 [ 0, %39 ], [ %114, %44 ]
  %46 = phi ptr [ %0, %39 ], [ %115, %44 ]
  %47 = phi ptr [ %2, %39 ], [ %116, %44 ]
  %48 = phi ptr [ %4, %39 ], [ %117, %44 ]
  %49 = load i8, ptr %47, align 1, !tbaa !43
  %50 = zext i8 %49 to i32
  %51 = mul nsw i32 %50, %6
  %52 = load i8, ptr %48, align 1, !tbaa !43
  %53 = zext i8 %52 to i32
  %54 = mul nsw i32 %40, %53
  %55 = add i32 %51, 32
  %56 = add i32 %55, %54
  %57 = ashr i32 %56, 6
  %58 = icmp ult i32 %57, 256
  %59 = icmp sgt i32 %57, 0
  %60 = sext i1 %59 to i32
  %61 = select i1 %58, i32 %57, i32 %60
  %62 = trunc i32 %61 to i8
  store i8 %62, ptr %46, align 1, !tbaa !43
  %63 = getelementptr inbounds i8, ptr %47, i64 1
  %64 = load i8, ptr %63, align 1, !tbaa !43
  %65 = zext i8 %64 to i32
  %66 = mul nsw i32 %65, %6
  %67 = getelementptr inbounds i8, ptr %48, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !43
  %69 = zext i8 %68 to i32
  %70 = mul nsw i32 %40, %69
  %71 = add i32 %66, 32
  %72 = add i32 %71, %70
  %73 = ashr i32 %72, 6
  %74 = icmp ult i32 %73, 256
  %75 = icmp sgt i32 %73, 0
  %76 = sext i1 %75 to i32
  %77 = select i1 %74, i32 %73, i32 %76
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds i8, ptr %46, i64 1
  store i8 %78, ptr %79, align 1, !tbaa !43
  %80 = getelementptr inbounds i8, ptr %47, i64 2
  %81 = load i8, ptr %80, align 1, !tbaa !43
  %82 = zext i8 %81 to i32
  %83 = mul nsw i32 %82, %6
  %84 = getelementptr inbounds i8, ptr %48, i64 2
  %85 = load i8, ptr %84, align 1, !tbaa !43
  %86 = zext i8 %85 to i32
  %87 = mul nsw i32 %40, %86
  %88 = add i32 %83, 32
  %89 = add i32 %88, %87
  %90 = ashr i32 %89, 6
  %91 = icmp ult i32 %90, 256
  %92 = icmp sgt i32 %90, 0
  %93 = sext i1 %92 to i32
  %94 = select i1 %91, i32 %90, i32 %93
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds i8, ptr %46, i64 2
  store i8 %95, ptr %96, align 1, !tbaa !43
  %97 = getelementptr inbounds i8, ptr %47, i64 3
  %98 = load i8, ptr %97, align 1, !tbaa !43
  %99 = zext i8 %98 to i32
  %100 = mul nsw i32 %99, %6
  %101 = getelementptr inbounds i8, ptr %48, i64 3
  %102 = load i8, ptr %101, align 1, !tbaa !43
  %103 = zext i8 %102 to i32
  %104 = mul nsw i32 %40, %103
  %105 = add i32 %100, 32
  %106 = add i32 %105, %104
  %107 = ashr i32 %106, 6
  %108 = icmp ult i32 %107, 256
  %109 = icmp sgt i32 %107, 0
  %110 = sext i1 %109 to i32
  %111 = select i1 %108, i32 %107, i32 %110
  %112 = trunc i32 %111 to i8
  %113 = getelementptr inbounds i8, ptr %46, i64 3
  store i8 %112, ptr %113, align 1, !tbaa !43
  %114 = add nuw nsw i32 %45, 1
  %115 = getelementptr inbounds i8, ptr %46, i64 %41
  %116 = getelementptr inbounds i8, ptr %47, i64 %42
  %117 = getelementptr inbounds i8, ptr %48, i64 %43
  %118 = icmp eq i32 %45, 0
  br i1 %118, label %44, label %119, !llvm.loop !119

119:                                              ; preds = %44, %18
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_2x4(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = icmp eq i32 %6, 32
  br i1 %8, label %9, label %39

9:                                                ; preds = %7
  %10 = sext i32 %3 to i64
  %11 = sext i32 %5 to i64
  %12 = sext i32 %1 to i64
  br label %13

13:                                               ; preds = %9, %18
  %14 = phi i32 [ 0, %9 ], [ %22, %18 ]
  %15 = phi ptr [ %0, %9 ], [ %21, %18 ]
  %16 = phi ptr [ %2, %9 ], [ %19, %18 ]
  %17 = phi ptr [ %4, %9 ], [ %20, %18 ]
  br label %24

18:                                               ; preds = %24
  %19 = getelementptr inbounds i8, ptr %16, i64 %10
  %20 = getelementptr inbounds i8, ptr %17, i64 %11
  %21 = getelementptr inbounds i8, ptr %15, i64 %12
  %22 = add nuw nsw i32 %14, 1
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %85, label %13, !llvm.loop !117

24:                                               ; preds = %13, %24
  %25 = phi i64 [ 0, %13 ], [ %37, %24 ]
  %26 = getelementptr inbounds i8, ptr %16, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !43
  %28 = zext i8 %27 to i16
  %29 = getelementptr inbounds i8, ptr %17, i64 %25
  %30 = load i8, ptr %29, align 1, !tbaa !43
  %31 = zext i8 %30 to i16
  %32 = add nuw nsw i16 %28, 1
  %33 = add nuw nsw i16 %32, %31
  %34 = lshr i16 %33, 1
  %35 = trunc i16 %34 to i8
  %36 = getelementptr inbounds i8, ptr %15, i64 %25
  store i8 %35, ptr %36, align 1, !tbaa !43
  %37 = add nuw nsw i64 %25, 1
  %38 = icmp eq i64 %25, 0
  br i1 %38, label %24, label %18, !llvm.loop !118

39:                                               ; preds = %7
  %40 = sub nsw i32 64, %6
  %41 = sext i32 %1 to i64
  %42 = sext i32 %3 to i64
  %43 = sext i32 %5 to i64
  br label %44

44:                                               ; preds = %39, %44
  %45 = phi i32 [ 0, %39 ], [ %80, %44 ]
  %46 = phi ptr [ %0, %39 ], [ %81, %44 ]
  %47 = phi ptr [ %2, %39 ], [ %82, %44 ]
  %48 = phi ptr [ %4, %39 ], [ %83, %44 ]
  %49 = load i8, ptr %47, align 1, !tbaa !43
  %50 = zext i8 %49 to i32
  %51 = mul nsw i32 %50, %6
  %52 = load i8, ptr %48, align 1, !tbaa !43
  %53 = zext i8 %52 to i32
  %54 = mul nsw i32 %40, %53
  %55 = add i32 %51, 32
  %56 = add i32 %55, %54
  %57 = ashr i32 %56, 6
  %58 = icmp ult i32 %57, 256
  %59 = icmp sgt i32 %57, 0
  %60 = sext i1 %59 to i32
  %61 = select i1 %58, i32 %57, i32 %60
  %62 = trunc i32 %61 to i8
  store i8 %62, ptr %46, align 1, !tbaa !43
  %63 = getelementptr inbounds i8, ptr %47, i64 1
  %64 = load i8, ptr %63, align 1, !tbaa !43
  %65 = zext i8 %64 to i32
  %66 = mul nsw i32 %65, %6
  %67 = getelementptr inbounds i8, ptr %48, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !43
  %69 = zext i8 %68 to i32
  %70 = mul nsw i32 %40, %69
  %71 = add i32 %66, 32
  %72 = add i32 %71, %70
  %73 = ashr i32 %72, 6
  %74 = icmp ult i32 %73, 256
  %75 = icmp sgt i32 %73, 0
  %76 = sext i1 %75 to i32
  %77 = select i1 %74, i32 %73, i32 %76
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds i8, ptr %46, i64 1
  store i8 %78, ptr %79, align 1, !tbaa !43
  %80 = add nuw nsw i32 %45, 1
  %81 = getelementptr inbounds i8, ptr %46, i64 %41
  %82 = getelementptr inbounds i8, ptr %47, i64 %42
  %83 = getelementptr inbounds i8, ptr %48, i64 %43
  %84 = icmp eq i32 %80, 4
  br i1 %84, label %85, label %44, !llvm.loop !119

85:                                               ; preds = %44, %18
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_2x2(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = icmp eq i32 %6, 32
  br i1 %8, label %9, label %39

9:                                                ; preds = %7
  %10 = sext i32 %3 to i64
  %11 = sext i32 %5 to i64
  %12 = sext i32 %1 to i64
  br label %13

13:                                               ; preds = %9, %18
  %14 = phi i32 [ 0, %9 ], [ %22, %18 ]
  %15 = phi ptr [ %0, %9 ], [ %21, %18 ]
  %16 = phi ptr [ %2, %9 ], [ %19, %18 ]
  %17 = phi ptr [ %4, %9 ], [ %20, %18 ]
  br label %24

18:                                               ; preds = %24
  %19 = getelementptr inbounds i8, ptr %16, i64 %10
  %20 = getelementptr inbounds i8, ptr %17, i64 %11
  %21 = getelementptr inbounds i8, ptr %15, i64 %12
  %22 = add nuw nsw i32 %14, 1
  %23 = icmp eq i32 %14, 0
  br i1 %23, label %13, label %85, !llvm.loop !117

24:                                               ; preds = %13, %24
  %25 = phi i64 [ 0, %13 ], [ %37, %24 ]
  %26 = getelementptr inbounds i8, ptr %16, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !43
  %28 = zext i8 %27 to i16
  %29 = getelementptr inbounds i8, ptr %17, i64 %25
  %30 = load i8, ptr %29, align 1, !tbaa !43
  %31 = zext i8 %30 to i16
  %32 = add nuw nsw i16 %28, 1
  %33 = add nuw nsw i16 %32, %31
  %34 = lshr i16 %33, 1
  %35 = trunc i16 %34 to i8
  %36 = getelementptr inbounds i8, ptr %15, i64 %25
  store i8 %35, ptr %36, align 1, !tbaa !43
  %37 = add nuw nsw i64 %25, 1
  %38 = icmp eq i64 %25, 0
  br i1 %38, label %24, label %18, !llvm.loop !118

39:                                               ; preds = %7
  %40 = sub nsw i32 64, %6
  %41 = sext i32 %1 to i64
  %42 = sext i32 %3 to i64
  %43 = sext i32 %5 to i64
  br label %44

44:                                               ; preds = %39, %44
  %45 = phi i32 [ 0, %39 ], [ %80, %44 ]
  %46 = phi ptr [ %0, %39 ], [ %81, %44 ]
  %47 = phi ptr [ %2, %39 ], [ %82, %44 ]
  %48 = phi ptr [ %4, %39 ], [ %83, %44 ]
  %49 = load i8, ptr %47, align 1, !tbaa !43
  %50 = zext i8 %49 to i32
  %51 = mul nsw i32 %50, %6
  %52 = load i8, ptr %48, align 1, !tbaa !43
  %53 = zext i8 %52 to i32
  %54 = mul nsw i32 %40, %53
  %55 = add i32 %51, 32
  %56 = add i32 %55, %54
  %57 = ashr i32 %56, 6
  %58 = icmp ult i32 %57, 256
  %59 = icmp sgt i32 %57, 0
  %60 = sext i1 %59 to i32
  %61 = select i1 %58, i32 %57, i32 %60
  %62 = trunc i32 %61 to i8
  store i8 %62, ptr %46, align 1, !tbaa !43
  %63 = getelementptr inbounds i8, ptr %47, i64 1
  %64 = load i8, ptr %63, align 1, !tbaa !43
  %65 = zext i8 %64 to i32
  %66 = mul nsw i32 %65, %6
  %67 = getelementptr inbounds i8, ptr %48, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !43
  %69 = zext i8 %68 to i32
  %70 = mul nsw i32 %40, %69
  %71 = add i32 %66, 32
  %72 = add i32 %71, %70
  %73 = ashr i32 %72, 6
  %74 = icmp ult i32 %73, 256
  %75 = icmp sgt i32 %73, 0
  %76 = sext i1 %75 to i32
  %77 = select i1 %74, i32 %73, i32 %76
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds i8, ptr %46, i64 1
  store i8 %78, ptr %79, align 1, !tbaa !43
  %80 = add nuw nsw i32 %45, 1
  %81 = getelementptr inbounds i8, ptr %46, i64 %41
  %82 = getelementptr inbounds i8, ptr %47, i64 %42
  %83 = getelementptr inbounds i8, ptr %48, i64 %43
  %84 = icmp eq i32 %45, 0
  br i1 %84, label %44, label %85, !llvm.loop !119

85:                                               ; preds = %44, %18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @x264_weight_cache(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.x264_weight_t, ptr %1, i64 0, i32 5
  store ptr %4, ptr %5, align 16, !tbaa !105
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_copy_w16(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %5
  %8 = sext i32 %3 to i64
  %9 = sext i32 %1 to i64
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi i32 [ 0, %7 ], [ %16, %10 ]
  %12 = phi ptr [ %2, %7 ], [ %14, %10 ]
  %13 = phi ptr [ %0, %7 ], [ %15, %10 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %13, ptr noundef nonnull align 1 dereferenceable(16) %12, i64 16, i1 false)
  %14 = getelementptr inbounds i8, ptr %12, i64 %8
  %15 = getelementptr inbounds i8, ptr %13, i64 %9
  %16 = add nuw nsw i32 %11, 1
  %17 = icmp eq i32 %16, %4
  br i1 %17, label %18, label %10, !llvm.loop !114

18:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_copy_w8(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %5
  %8 = sext i32 %3 to i64
  %9 = sext i32 %1 to i64
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi i32 [ 0, %7 ], [ %17, %10 ]
  %12 = phi ptr [ %2, %7 ], [ %15, %10 ]
  %13 = phi ptr [ %0, %7 ], [ %16, %10 ]
  %14 = load i64, ptr %12, align 1
  store i64 %14, ptr %13, align 1
  %15 = getelementptr inbounds i8, ptr %12, i64 %8
  %16 = getelementptr inbounds i8, ptr %13, i64 %9
  %17 = add nuw nsw i32 %11, 1
  %18 = icmp eq i32 %17, %4
  br i1 %18, label %19, label %10, !llvm.loop !114

19:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_copy_w4(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %5
  %8 = sext i32 %3 to i64
  %9 = sext i32 %1 to i64
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi i32 [ 0, %7 ], [ %17, %10 ]
  %12 = phi ptr [ %2, %7 ], [ %15, %10 ]
  %13 = phi ptr [ %0, %7 ], [ %16, %10 ]
  %14 = load i32, ptr %12, align 1
  store i32 %14, ptr %13, align 1
  %15 = getelementptr inbounds i8, ptr %12, i64 %8
  %16 = getelementptr inbounds i8, ptr %13, i64 %9
  %17 = add nuw nsw i32 %11, 1
  %18 = icmp eq i32 %17, %4
  br i1 %18, label %19, label %10, !llvm.loop !114

19:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @hpel_filter(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef %7) #0 {
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %8
  %11 = getelementptr i16, ptr %7, i64 2
  %12 = icmp sgt i32 %5, -5
  %13 = shl nsw i32 %4, 1
  %14 = mul nsw i32 %4, 3
  %15 = icmp sgt i32 %5, 0
  %16 = getelementptr inbounds i16, ptr %7, i64 2
  %17 = icmp sgt i32 %5, 0
  %18 = sext i32 %4 to i64
  %19 = sext i32 %13 to i64
  %20 = sext i32 %14 to i64
  %21 = sext i32 %4 to i64
  %22 = sext i32 %13 to i64
  %23 = sext i32 %4 to i64
  %24 = add i32 %5, 2
  %25 = tail call i32 @llvm.smax.i32(i32 %24, i32 -2)
  %26 = add i32 %25, 1
  %27 = zext nneg i32 %5 to i64
  %28 = zext nneg i32 %5 to i64
  br label %29

29:                                               ; preds = %10, %120
  %30 = phi ptr [ %0, %10 ], [ %121, %120 ]
  %31 = phi i32 [ 0, %10 ], [ %125, %120 ]
  %32 = phi ptr [ %1, %10 ], [ %122, %120 ]
  %33 = phi ptr [ %2, %10 ], [ %123, %120 ]
  %34 = phi ptr [ %3, %10 ], [ %124, %120 ]
  br i1 %12, label %37, label %36

35:                                               ; preds = %120, %8
  ret void

36:                                               ; preds = %37, %29
  br i1 %15, label %83, label %82

37:                                               ; preds = %29, %37
  %38 = phi i64 [ %79, %37 ], [ -2, %29 ]
  %39 = sub nsw i64 %38, %19
  %40 = getelementptr inbounds i8, ptr %34, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !43
  %42 = zext i8 %41 to i32
  %43 = add nsw i64 %38, %20
  %44 = getelementptr inbounds i8, ptr %34, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !43
  %46 = zext i8 %45 to i32
  %47 = add nuw nsw i32 %46, %42
  %48 = sub nsw i64 %38, %21
  %49 = getelementptr inbounds i8, ptr %34, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !43
  %51 = zext i8 %50 to i32
  %52 = add nsw i64 %38, %22
  %53 = getelementptr inbounds i8, ptr %34, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !43
  %55 = zext i8 %54 to i32
  %56 = add nuw nsw i32 %55, %51
  %57 = mul nsw i32 %56, -5
  %58 = add nsw i32 %47, %57
  %59 = getelementptr inbounds i8, ptr %34, i64 %38
  %60 = load i8, ptr %59, align 1, !tbaa !43
  %61 = zext i8 %60 to i32
  %62 = add nsw i64 %38, %23
  %63 = getelementptr inbounds i8, ptr %34, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !43
  %65 = zext i8 %64 to i32
  %66 = add nuw nsw i32 %65, %61
  %67 = mul nuw nsw i32 %66, 20
  %68 = add nsw i32 %58, %67
  %69 = add nsw i32 %68, 16
  %70 = ashr i32 %69, 5
  %71 = icmp ult i32 %70, 256
  %72 = icmp sgt i32 %70, 0
  %73 = sext i1 %72 to i32
  %74 = select i1 %71, i32 %70, i32 %73
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds i8, ptr %32, i64 %38
  store i8 %75, ptr %76, align 1, !tbaa !43
  %77 = trunc i32 %68 to i16
  %78 = getelementptr i16, ptr %11, i64 %38
  store i16 %77, ptr %78, align 2, !tbaa !80
  %79 = add nsw i64 %38, 1
  %80 = trunc i64 %79 to i32
  %81 = icmp eq i32 %26, %80
  br i1 %81, label %36, label %37, !llvm.loop !121

82:                                               ; preds = %83, %36
  br i1 %17, label %127, label %120

83:                                               ; preds = %36, %83
  %84 = phi i64 [ %102, %83 ], [ 0, %36 ]
  %85 = getelementptr i16, ptr %16, i64 %84
  %86 = getelementptr i16, ptr %85, i64 -2
  %87 = load i16, ptr %86, align 2, !tbaa !80
  %88 = sext i16 %87 to i32
  %89 = getelementptr i16, ptr %85, i64 3
  %90 = load i16, ptr %89, align 2, !tbaa !80
  %91 = sext i16 %90 to i32
  %92 = getelementptr i16, ptr %85, i64 -1
  %93 = load i16, ptr %92, align 2, !tbaa !80
  %94 = sext i16 %93 to i32
  %95 = getelementptr i16, ptr %85, i64 2
  %96 = load i16, ptr %95, align 2, !tbaa !80
  %97 = sext i16 %96 to i32
  %98 = add nsw i32 %97, %94
  %99 = mul nsw i32 %98, -5
  %100 = load i16, ptr %85, align 2, !tbaa !80
  %101 = sext i16 %100 to i32
  %102 = add nuw nsw i64 %84, 1
  %103 = getelementptr inbounds i16, ptr %16, i64 %102
  %104 = load i16, ptr %103, align 2, !tbaa !80
  %105 = sext i16 %104 to i32
  %106 = add nsw i32 %105, %101
  %107 = mul nsw i32 %106, 20
  %108 = add nsw i32 %88, 512
  %109 = add nsw i32 %108, %91
  %110 = add nsw i32 %109, %99
  %111 = add nsw i32 %110, %107
  %112 = ashr i32 %111, 10
  %113 = icmp ult i32 %112, 256
  %114 = icmp sgt i32 %112, 0
  %115 = sext i1 %114 to i32
  %116 = select i1 %113, i32 %112, i32 %115
  %117 = trunc i32 %116 to i8
  %118 = getelementptr inbounds i8, ptr %33, i64 %84
  store i8 %117, ptr %118, align 1, !tbaa !43
  %119 = icmp eq i64 %102, %27
  br i1 %119, label %82, label %83, !llvm.loop !122

120:                                              ; preds = %127, %82
  %121 = getelementptr inbounds i8, ptr %30, i64 %18
  %122 = getelementptr inbounds i8, ptr %32, i64 %18
  %123 = getelementptr inbounds i8, ptr %33, i64 %18
  %124 = getelementptr inbounds i8, ptr %34, i64 %18
  %125 = add nuw nsw i32 %31, 1
  %126 = icmp eq i32 %125, %6
  br i1 %126, label %35, label %29, !llvm.loop !123

127:                                              ; preds = %82, %127
  %128 = phi i64 [ %150, %127 ], [ 0, %82 ]
  %129 = add nsw i64 %128, -2
  %130 = getelementptr inbounds i8, ptr %34, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !43
  %132 = zext i8 %131 to i32
  %133 = add nuw nsw i64 %128, 3
  %134 = getelementptr inbounds i8, ptr %34, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !43
  %136 = zext i8 %135 to i32
  %137 = add nsw i64 %128, -1
  %138 = getelementptr inbounds i8, ptr %34, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !43
  %140 = zext i8 %139 to i32
  %141 = add nuw nsw i64 %128, 2
  %142 = getelementptr inbounds i8, ptr %34, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !43
  %144 = zext i8 %143 to i32
  %145 = add nuw nsw i32 %144, %140
  %146 = mul nsw i32 %145, -5
  %147 = getelementptr inbounds i8, ptr %34, i64 %128
  %148 = load i8, ptr %147, align 1, !tbaa !43
  %149 = zext i8 %148 to i32
  %150 = add nuw nsw i64 %128, 1
  %151 = getelementptr inbounds i8, ptr %34, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !43
  %153 = zext i8 %152 to i32
  %154 = add nuw nsw i32 %153, %149
  %155 = mul nuw nsw i32 %154, 20
  %156 = add nuw nsw i32 %132, 16
  %157 = add nuw nsw i32 %156, %136
  %158 = add nsw i32 %157, %146
  %159 = add nsw i32 %158, %155
  %160 = ashr i32 %159, 5
  %161 = icmp ult i32 %160, 256
  %162 = icmp sgt i32 %160, 0
  %163 = sext i1 %162 to i32
  %164 = select i1 %161, i32 %160, i32 %163
  %165 = trunc i32 %164 to i8
  %166 = getelementptr inbounds i8, ptr %30, i64 %128
  store i8 %165, ptr %166, align 1, !tbaa !43
  %167 = icmp eq i64 %150, %28
  br i1 %167, label %120, label %127, !llvm.loop !124
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @prefetch_fenc_null(ptr nocapture readnone %0, i32 %1, ptr nocapture readnone %2, i32 %3, i32 %4) #7 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @prefetch_ref_null(ptr nocapture readnone %0, i32 %1, i32 %2) #7 {
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @memcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @memzero_aligned(ptr nocapture noundef writeonly %0, i32 noundef %1) #5 {
  %3 = sext i32 %1 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %3, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @frame_init_lowres_core(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 {
  %10 = icmp sgt i32 %8, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %9
  %12 = sext i32 %5 to i64
  %13 = icmp sgt i32 %7, 0
  %14 = shl nsw i32 %5, 1
  %15 = sext i32 %14 to i64
  %16 = sext i32 %6 to i64
  %17 = zext nneg i32 %7 to i64
  br label %19

18:                                               ; preds = %28, %9
  ret void

19:                                               ; preds = %11, %28
  %20 = phi ptr [ %0, %11 ], [ %29, %28 ]
  %21 = phi ptr [ %1, %11 ], [ %30, %28 ]
  %22 = phi i32 [ 0, %11 ], [ %34, %28 ]
  %23 = phi ptr [ %2, %11 ], [ %31, %28 ]
  %24 = phi ptr [ %3, %11 ], [ %32, %28 ]
  %25 = phi ptr [ %4, %11 ], [ %33, %28 ]
  %26 = getelementptr inbounds i8, ptr %20, i64 %12
  %27 = getelementptr inbounds i8, ptr %26, i64 %12
  br i1 %13, label %36, label %28

28:                                               ; preds = %36, %19
  %29 = getelementptr inbounds i8, ptr %20, i64 %15
  %30 = getelementptr inbounds i8, ptr %21, i64 %16
  %31 = getelementptr inbounds i8, ptr %23, i64 %16
  %32 = getelementptr inbounds i8, ptr %24, i64 %16
  %33 = getelementptr inbounds i8, ptr %25, i64 %16
  %34 = add nuw nsw i32 %22, 1
  %35 = icmp eq i32 %34, %8
  br i1 %35, label %18, label %19, !llvm.loop !125

36:                                               ; preds = %19, %36
  %37 = phi i64 [ %126, %36 ], [ 0, %19 ]
  %38 = shl nuw nsw i64 %37, 1
  %39 = getelementptr inbounds i8, ptr %20, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !43
  %41 = zext i8 %40 to i16
  %42 = getelementptr inbounds i8, ptr %26, i64 %38
  %43 = load i8, ptr %42, align 1, !tbaa !43
  %44 = zext i8 %43 to i16
  %45 = add nuw nsw i16 %41, 1
  %46 = add nuw nsw i16 %45, %44
  %47 = lshr i16 %46, 1
  %48 = or disjoint i64 %38, 1
  %49 = getelementptr inbounds i8, ptr %20, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !43
  %51 = zext i8 %50 to i16
  %52 = getelementptr inbounds i8, ptr %26, i64 %48
  %53 = load i8, ptr %52, align 1, !tbaa !43
  %54 = zext i8 %53 to i16
  %55 = add nuw nsw i16 %51, 1
  %56 = add nuw nsw i16 %55, %54
  %57 = lshr i16 %56, 1
  %58 = add nuw nsw i16 %47, 1
  %59 = add nuw nsw i16 %58, %57
  %60 = lshr i16 %59, 1
  %61 = trunc i16 %60 to i8
  %62 = getelementptr inbounds i8, ptr %21, i64 %37
  store i8 %61, ptr %62, align 1, !tbaa !43
  %63 = load i8, ptr %49, align 1, !tbaa !43
  %64 = zext i8 %63 to i16
  %65 = load i8, ptr %52, align 1, !tbaa !43
  %66 = zext i8 %65 to i16
  %67 = add nuw nsw i16 %64, 1
  %68 = add nuw nsw i16 %67, %66
  %69 = lshr i16 %68, 1
  %70 = add nuw nsw i64 %38, 2
  %71 = getelementptr inbounds i8, ptr %20, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !43
  %73 = zext i8 %72 to i16
  %74 = getelementptr inbounds i8, ptr %26, i64 %70
  %75 = load i8, ptr %74, align 1, !tbaa !43
  %76 = zext i8 %75 to i16
  %77 = add nuw nsw i16 %73, 1
  %78 = add nuw nsw i16 %77, %76
  %79 = lshr i16 %78, 1
  %80 = add nuw nsw i16 %69, 1
  %81 = add nuw nsw i16 %80, %79
  %82 = lshr i16 %81, 1
  %83 = trunc i16 %82 to i8
  %84 = getelementptr inbounds i8, ptr %23, i64 %37
  store i8 %83, ptr %84, align 1, !tbaa !43
  %85 = load i8, ptr %42, align 1, !tbaa !43
  %86 = zext i8 %85 to i16
  %87 = getelementptr inbounds i8, ptr %27, i64 %38
  %88 = load i8, ptr %87, align 1, !tbaa !43
  %89 = zext i8 %88 to i16
  %90 = add nuw nsw i16 %86, 1
  %91 = add nuw nsw i16 %90, %89
  %92 = lshr i16 %91, 1
  %93 = load i8, ptr %52, align 1, !tbaa !43
  %94 = zext i8 %93 to i16
  %95 = getelementptr inbounds i8, ptr %27, i64 %48
  %96 = load i8, ptr %95, align 1, !tbaa !43
  %97 = zext i8 %96 to i16
  %98 = add nuw nsw i16 %94, 1
  %99 = add nuw nsw i16 %98, %97
  %100 = lshr i16 %99, 1
  %101 = add nuw nsw i16 %92, 1
  %102 = add nuw nsw i16 %101, %100
  %103 = lshr i16 %102, 1
  %104 = trunc i16 %103 to i8
  %105 = getelementptr inbounds i8, ptr %24, i64 %37
  store i8 %104, ptr %105, align 1, !tbaa !43
  %106 = load i8, ptr %52, align 1, !tbaa !43
  %107 = zext i8 %106 to i16
  %108 = load i8, ptr %95, align 1, !tbaa !43
  %109 = zext i8 %108 to i16
  %110 = add nuw nsw i16 %107, 1
  %111 = add nuw nsw i16 %110, %109
  %112 = lshr i16 %111, 1
  %113 = load i8, ptr %74, align 1, !tbaa !43
  %114 = zext i8 %113 to i16
  %115 = getelementptr inbounds i8, ptr %27, i64 %70
  %116 = load i8, ptr %115, align 1, !tbaa !43
  %117 = zext i8 %116 to i16
  %118 = add nuw nsw i16 %114, 1
  %119 = add nuw nsw i16 %118, %117
  %120 = lshr i16 %119, 1
  %121 = add nuw nsw i16 %112, 1
  %122 = add nuw nsw i16 %121, %120
  %123 = lshr i16 %122, 1
  %124 = trunc i16 %123 to i8
  %125 = getelementptr inbounds i8, ptr %25, i64 %37
  store i8 %124, ptr %125, align 1, !tbaa !43
  %126 = add nuw nsw i64 %37, 1
  %127 = icmp eq i64 %126, %17
  br i1 %127, label %28, label %36, !llvm.loop !126
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @integral_init4h(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #9 {
  %4 = icmp sgt i32 %2, 4
  br i1 %4, label %5, label %23

5:                                                ; preds = %3
  %6 = add nsw i32 %2, -4
  %7 = getelementptr inbounds i8, ptr %1, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !43
  %9 = zext i8 %8 to i32
  %10 = load i8, ptr %1, align 1, !tbaa !43
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %9, %11
  %13 = getelementptr inbounds i8, ptr %1, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !43
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %12, %15
  %17 = getelementptr inbounds i8, ptr %1, i64 3
  %18 = load i8, ptr %17, align 1, !tbaa !43
  %19 = zext i8 %18 to i32
  %20 = add nuw nsw i32 %16, %19
  %21 = zext nneg i32 %2 to i64
  %22 = zext i32 %6 to i64
  br label %24

23:                                               ; preds = %24, %3
  ret void

24:                                               ; preds = %5, %24
  %25 = phi i64 [ 0, %5 ], [ %41, %24 ]
  %26 = phi i32 [ %20, %5 ], [ %40, %24 ]
  %27 = sub nsw i64 %25, %21
  %28 = getelementptr inbounds i16, ptr %0, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !80
  %30 = trunc i32 %26 to i16
  %31 = add i16 %29, %30
  %32 = getelementptr inbounds i16, ptr %0, i64 %25
  store i16 %31, ptr %32, align 2, !tbaa !80
  %33 = getelementptr i8, ptr %1, i64 %25
  %34 = getelementptr i8, ptr %33, i64 4
  %35 = load i8, ptr %34, align 1, !tbaa !43
  %36 = zext i8 %35 to i32
  %37 = load i8, ptr %33, align 1, !tbaa !43
  %38 = zext i8 %37 to i32
  %39 = add i32 %26, %36
  %40 = sub i32 %39, %38
  %41 = add nuw nsw i64 %25, 1
  %42 = icmp eq i64 %41, %22
  br i1 %42, label %23, label %24, !llvm.loop !127
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @integral_init8h(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #9 {
  %4 = icmp sgt i32 %2, 8
  br i1 %4, label %5, label %39

5:                                                ; preds = %3
  %6 = add nsw i32 %2, -8
  %7 = getelementptr inbounds i8, ptr %1, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !43
  %9 = zext i8 %8 to i32
  %10 = load i8, ptr %1, align 1, !tbaa !43
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %9, %11
  %13 = getelementptr inbounds i8, ptr %1, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !43
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %12, %15
  %17 = getelementptr inbounds i8, ptr %1, i64 3
  %18 = load i8, ptr %17, align 1, !tbaa !43
  %19 = zext i8 %18 to i32
  %20 = add nuw nsw i32 %16, %19
  %21 = getelementptr inbounds i8, ptr %1, i64 4
  %22 = load i8, ptr %21, align 1, !tbaa !43
  %23 = zext i8 %22 to i32
  %24 = add nuw nsw i32 %20, %23
  %25 = getelementptr inbounds i8, ptr %1, i64 5
  %26 = load i8, ptr %25, align 1, !tbaa !43
  %27 = zext i8 %26 to i32
  %28 = add nuw nsw i32 %24, %27
  %29 = getelementptr inbounds i8, ptr %1, i64 6
  %30 = load i8, ptr %29, align 1, !tbaa !43
  %31 = zext i8 %30 to i32
  %32 = add nuw nsw i32 %28, %31
  %33 = getelementptr inbounds i8, ptr %1, i64 7
  %34 = load i8, ptr %33, align 1, !tbaa !43
  %35 = zext i8 %34 to i32
  %36 = add nuw nsw i32 %32, %35
  %37 = zext nneg i32 %2 to i64
  %38 = zext i32 %6 to i64
  br label %40

39:                                               ; preds = %40, %3
  ret void

40:                                               ; preds = %5, %40
  %41 = phi i64 [ 0, %5 ], [ %57, %40 ]
  %42 = phi i32 [ %36, %5 ], [ %56, %40 ]
  %43 = sub nsw i64 %41, %37
  %44 = getelementptr inbounds i16, ptr %0, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !80
  %46 = trunc i32 %42 to i16
  %47 = add i16 %45, %46
  %48 = getelementptr inbounds i16, ptr %0, i64 %41
  store i16 %47, ptr %48, align 2, !tbaa !80
  %49 = getelementptr i8, ptr %1, i64 %41
  %50 = getelementptr i8, ptr %49, i64 8
  %51 = load i8, ptr %50, align 1, !tbaa !43
  %52 = zext i8 %51 to i32
  %53 = load i8, ptr %49, align 1, !tbaa !43
  %54 = zext i8 %53 to i32
  %55 = add i32 %42, %52
  %56 = sub i32 %55, %54
  %57 = add nuw nsw i64 %41, 1
  %58 = icmp eq i64 %57, %38
  br i1 %58, label %39, label %40, !llvm.loop !128
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @integral_init4v(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #9 {
  %4 = add i32 %2, -8
  %5 = icmp sgt i32 %2, 8
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = shl nsw i32 %2, 2
  %8 = zext nneg i32 %7 to i64
  %9 = zext i32 %4 to i64
  %10 = getelementptr i16, ptr %0, i64 %8
  br label %18

11:                                               ; preds = %18, %3
  %12 = icmp sgt i32 %2, 8
  br i1 %12, label %13, label %28

13:                                               ; preds = %11
  %14 = shl nsw i32 %2, 3
  %15 = zext nneg i32 %14 to i64
  %16 = zext i32 %4 to i64
  %17 = getelementptr i16, ptr %0, i64 %15
  br label %29

18:                                               ; preds = %6, %18
  %19 = phi i64 [ 0, %6 ], [ %26, %18 ]
  %20 = getelementptr i16, ptr %10, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !80
  %22 = getelementptr inbounds i16, ptr %0, i64 %19
  %23 = load i16, ptr %22, align 2, !tbaa !80
  %24 = sub i16 %21, %23
  %25 = getelementptr inbounds i16, ptr %1, i64 %19
  store i16 %24, ptr %25, align 2, !tbaa !80
  %26 = add nuw nsw i64 %19, 1
  %27 = icmp eq i64 %26, %9
  br i1 %27, label %11, label %18, !llvm.loop !129

28:                                               ; preds = %29, %11
  ret void

29:                                               ; preds = %13, %29
  %30 = phi i64 [ 0, %13 ], [ %42, %29 ]
  %31 = getelementptr i16, ptr %17, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !80
  %33 = getelementptr i16, ptr %31, i64 4
  %34 = load i16, ptr %33, align 2, !tbaa !80
  %35 = getelementptr inbounds i16, ptr %0, i64 %30
  %36 = load i16, ptr %35, align 2, !tbaa !80
  %37 = getelementptr i16, ptr %35, i64 4
  %38 = load i16, ptr %37, align 2, !tbaa !80
  %39 = add i16 %34, %32
  %40 = add i16 %36, %38
  %41 = sub i16 %39, %40
  store i16 %41, ptr %35, align 2, !tbaa !80
  %42 = add nuw nsw i64 %30, 1
  %43 = icmp eq i64 %42, %16
  br i1 %43, label %28, label %29, !llvm.loop !130
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @integral_init8v(ptr nocapture noundef %0, i32 noundef %1) #9 {
  %3 = icmp sgt i32 %1, 8
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = add nsw i32 %1, -8
  %6 = shl nsw i32 %1, 3
  %7 = zext nneg i32 %6 to i64
  %8 = zext i32 %5 to i64
  %9 = getelementptr i16, ptr %0, i64 %7
  br label %11

10:                                               ; preds = %11, %2
  ret void

11:                                               ; preds = %4, %11
  %12 = phi i64 [ 0, %4 ], [ %18, %11 ]
  %13 = getelementptr i16, ptr %9, i64 %12
  %14 = load i16, ptr %13, align 2, !tbaa !80
  %15 = getelementptr inbounds i16, ptr %0, i64 %12
  %16 = load i16, ptr %15, align 2, !tbaa !80
  %17 = sub i16 %14, %16
  store i16 %17, ptr %15, align 2, !tbaa !80
  %18 = add nuw nsw i64 %12, 1
  %19 = icmp eq i64 %18, %8
  br i1 %19, label %10, label %11, !llvm.loop !131
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @mbtree_propagate_cost(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5) #9 {
  %7 = icmp sgt i32 %5, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = zext nneg i32 %5 to i64
  br label %11

10:                                               ; preds = %11, %6
  ret void

11:                                               ; preds = %8, %11
  %12 = phi i64 [ 0, %8 ], [ %38, %11 ]
  %13 = getelementptr inbounds i16, ptr %1, i64 %12
  %14 = load i16, ptr %13, align 2, !tbaa !80
  %15 = zext i16 %14 to i32
  %16 = getelementptr inbounds i16, ptr %2, i64 %12
  %17 = load i16, ptr %16, align 2, !tbaa !80
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds i16, ptr %4, i64 %12
  %20 = load i16, ptr %19, align 2, !tbaa !80
  %21 = zext i16 %20 to i32
  %22 = mul nuw nsw i32 %21, %18
  %23 = add nuw nsw i32 %22, 128
  %24 = lshr i32 %23, 8
  %25 = add nuw nsw i32 %24, %15
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds i16, ptr %3, i64 %12
  %28 = load i16, ptr %27, align 2, !tbaa !80
  %29 = and i16 %28, 16383
  %30 = zext nneg i16 %29 to i32
  %31 = sub nsw i32 %18, %30
  %32 = sext i32 %31 to i64
  %33 = mul nsw i64 %26, %32
  %34 = zext i16 %17 to i64
  %35 = sdiv i64 %33, %34
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds i32, ptr %0, i64 %12
  store i32 %36, ptr %37, align 4, !tbaa !41
  %38 = add nuw nsw i64 %12, 1
  %39 = icmp eq i64 %38, %9
  br i1 %39, label %10, label %11, !llvm.loop !132
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_frame_filter(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !133
  %7 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 24
  %8 = load i32, ptr %7, align 8, !tbaa !41
  %9 = shl i32 %8, %6
  %10 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 25
  %11 = load i32, ptr %10, align 4, !tbaa !41
  %12 = shl nsw i32 %2, 4
  %13 = ashr i32 %12, %6
  %14 = add nsw i32 %13, -8
  %15 = icmp eq i32 %3, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 26
  %18 = load i32, ptr %17, align 16, !tbaa !41
  br label %19

19:                                               ; preds = %4, %16
  %20 = phi i32 [ %18, %16 ], [ %12, %4 ]
  %21 = ashr i32 %20, %6
  %22 = add nsw i32 %21, 8
  %23 = and i32 %6, %2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %124

25:                                               ; preds = %19
  %26 = icmp slt i32 %6, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %25
  %28 = mul nsw i32 %14, %9
  %29 = add nsw i32 %28, -8
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 7
  %31 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 31, i64 1
  %32 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 31, i64 2
  %33 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 31, i64 3
  %34 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 30
  %35 = add nsw i32 %11, 16
  %36 = sub nsw i32 %22, %14
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 61
  br label %42

38:                                               ; preds = %42, %25
  %39 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 33
  %40 = load ptr, ptr %39, align 16, !tbaa !134
  %41 = icmp eq ptr %40, null
  br i1 %41, label %124, label %60

42:                                               ; preds = %27, %42
  %43 = phi i32 [ 0, %27 ], [ %56, %42 ]
  %44 = phi i32 [ %29, %27 ], [ %58, %42 ]
  %45 = load ptr, ptr %30, align 8, !tbaa !135
  %46 = load ptr, ptr %31, align 8, !tbaa !37
  %47 = sext i32 %44 to i64
  %48 = getelementptr inbounds i8, ptr %46, i64 %47
  %49 = load ptr, ptr %32, align 16, !tbaa !37
  %50 = getelementptr inbounds i8, ptr %49, i64 %47
  %51 = load ptr, ptr %33, align 8, !tbaa !37
  %52 = getelementptr inbounds i8, ptr %51, i64 %47
  %53 = load ptr, ptr %34, align 8, !tbaa !37
  %54 = getelementptr inbounds i8, ptr %53, i64 %47
  %55 = load ptr, ptr %37, align 8, !tbaa !136
  tail call void %45(ptr noundef %48, ptr noundef %50, ptr noundef %52, ptr noundef %54, i32 noundef %9, i32 noundef %35, i32 noundef %36, ptr noundef %55) #12
  %56 = add nuw i32 %43, 1
  %57 = load i32, ptr %7, align 8, !tbaa !41
  %58 = add nsw i32 %57, %44
  %59 = icmp eq i32 %43, %6
  br i1 %59, label %38, label %42, !llvm.loop !137

60:                                               ; preds = %38
  %61 = icmp slt i32 %13, 8
  br i1 %61, label %62, label %70

62:                                               ; preds = %60
  %63 = shl nsw i32 %9, 5
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 0, %64
  %66 = getelementptr inbounds i16, ptr %40, i64 %65
  %67 = getelementptr inbounds i16, ptr %66, i64 -32
  %68 = sext i32 %9 to i64
  %69 = shl nsw i64 %68, 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %67, i8 0, i64 %69, i1 false)
  br label %70

70:                                               ; preds = %62, %60
  %71 = phi i32 [ -32, %62 ], [ %14, %60 ]
  %72 = add nsw i32 %21, 31
  %73 = select i1 %15, i32 %22, i32 %72
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %124

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 30
  %77 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 17
  %78 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 12
  %79 = shl nsw i32 %9, 3
  %80 = sext i32 %79 to i64
  %81 = sub nsw i64 0, %80
  %82 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 26
  %83 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 14
  %84 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 13
  %85 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 15
  %86 = shl nsw i32 %9, 3
  %87 = sext i32 %86 to i64
  %88 = sub nsw i64 0, %87
  %89 = sext i32 %71 to i64
  %90 = sext i32 %9 to i64
  %91 = sext i32 %9 to i64
  br label %92

92:                                               ; preds = %75, %121
  %93 = phi i64 [ %89, %75 ], [ %99, %121 ]
  %94 = load ptr, ptr %76, align 8, !tbaa !37
  %95 = mul nsw i64 %93, %90
  %96 = getelementptr inbounds i8, ptr %94, i64 %95
  %97 = getelementptr inbounds i8, ptr %96, i64 -32
  %98 = load ptr, ptr %39, align 16, !tbaa !134
  %99 = add nsw i64 %93, 1
  %100 = mul nsw i64 %99, %91
  %101 = getelementptr inbounds i16, ptr %98, i64 %100
  %102 = getelementptr inbounds i16, ptr %101, i64 -32
  %103 = load i32, ptr %77, align 4, !tbaa !138
  %104 = icmp eq i32 %103, 0
  %105 = icmp sgt i64 %93, -25
  br i1 %104, label %116, label %106

106:                                              ; preds = %92
  %107 = load ptr, ptr %78, align 8, !tbaa !139
  tail call void %107(ptr noundef nonnull %102, ptr noundef nonnull %97, i32 noundef %9) #12
  br i1 %105, label %108, label %121

108:                                              ; preds = %106
  %109 = getelementptr inbounds i16, ptr %102, i64 %81
  %110 = load i32, ptr %82, align 16, !tbaa !41
  %111 = add nsw i32 %110, 64
  %112 = mul nsw i32 %111, %9
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i16, ptr %109, i64 %113
  %115 = load ptr, ptr %83, align 8, !tbaa !140
  tail call void %115(ptr noundef nonnull %109, ptr noundef nonnull %114, i32 noundef %9) #12
  br label %121

116:                                              ; preds = %92
  %117 = load ptr, ptr %84, align 8, !tbaa !141
  tail call void %117(ptr noundef nonnull %102, ptr noundef nonnull %97, i32 noundef %9) #12
  br i1 %105, label %118, label %121

118:                                              ; preds = %116
  %119 = load ptr, ptr %85, align 8, !tbaa !142
  %120 = getelementptr inbounds i16, ptr %102, i64 %88
  tail call void %119(ptr noundef nonnull %120, i32 noundef %9) #12
  br label %121

121:                                              ; preds = %116, %118, %106, %108
  %122 = trunc i64 %99 to i32
  %123 = icmp eq i32 %73, %122
  br i1 %123, label %124, label %92, !llvm.loop !143

124:                                              ; preds = %121, %70, %38, %19
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @pixel_avg_weight_wxh(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #10 {
  %10 = sub nsw i32 64, %8
  %11 = icmp sgt i32 %7, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = icmp eq i32 %6, 2
  %14 = icmp eq i32 %6, 4
  %15 = icmp eq i32 %6, 8
  %16 = sext i32 %1 to i64
  %17 = sext i32 %3 to i64
  %18 = sext i32 %5 to i64
  br label %20

19:                                               ; preds = %297, %9
  ret void

20:                                               ; preds = %12, %297
  %21 = phi i32 [ 0, %12 ], [ %298, %297 ]
  %22 = phi ptr [ %0, %12 ], [ %299, %297 ]
  %23 = phi ptr [ %2, %12 ], [ %300, %297 ]
  %24 = phi ptr [ %4, %12 ], [ %301, %297 ]
  %25 = load i8, ptr %23, align 1, !tbaa !43
  %26 = zext i8 %25 to i32
  %27 = mul nsw i32 %26, %8
  %28 = load i8, ptr %24, align 1, !tbaa !43
  %29 = zext i8 %28 to i32
  %30 = mul nsw i32 %10, %29
  %31 = add i32 %27, 32
  %32 = add i32 %31, %30
  %33 = ashr i32 %32, 6
  %34 = icmp ult i32 %33, 256
  %35 = icmp sgt i32 %33, 0
  %36 = sext i1 %35 to i32
  %37 = select i1 %34, i32 %33, i32 %36
  %38 = trunc i32 %37 to i8
  store i8 %38, ptr %22, align 1, !tbaa !43
  %39 = getelementptr inbounds i8, ptr %23, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !43
  %41 = zext i8 %40 to i32
  %42 = mul nsw i32 %41, %8
  %43 = getelementptr inbounds i8, ptr %24, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !43
  %45 = zext i8 %44 to i32
  %46 = mul nsw i32 %10, %45
  %47 = add i32 %42, 32
  %48 = add i32 %47, %46
  %49 = ashr i32 %48, 6
  %50 = icmp ult i32 %49, 256
  %51 = icmp sgt i32 %49, 0
  %52 = sext i1 %51 to i32
  %53 = select i1 %50, i32 %49, i32 %52
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds i8, ptr %22, i64 1
  store i8 %54, ptr %55, align 1, !tbaa !43
  br i1 %13, label %297, label %56

56:                                               ; preds = %20
  %57 = getelementptr inbounds i8, ptr %23, i64 2
  %58 = load i8, ptr %57, align 1, !tbaa !43
  %59 = zext i8 %58 to i32
  %60 = mul nsw i32 %59, %8
  %61 = getelementptr inbounds i8, ptr %24, i64 2
  %62 = load i8, ptr %61, align 1, !tbaa !43
  %63 = zext i8 %62 to i32
  %64 = mul nsw i32 %10, %63
  %65 = add i32 %60, 32
  %66 = add i32 %65, %64
  %67 = ashr i32 %66, 6
  %68 = icmp ult i32 %67, 256
  %69 = icmp sgt i32 %67, 0
  %70 = sext i1 %69 to i32
  %71 = select i1 %68, i32 %67, i32 %70
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds i8, ptr %22, i64 2
  store i8 %72, ptr %73, align 1, !tbaa !43
  %74 = getelementptr inbounds i8, ptr %23, i64 3
  %75 = load i8, ptr %74, align 1, !tbaa !43
  %76 = zext i8 %75 to i32
  %77 = mul nsw i32 %76, %8
  %78 = getelementptr inbounds i8, ptr %24, i64 3
  %79 = load i8, ptr %78, align 1, !tbaa !43
  %80 = zext i8 %79 to i32
  %81 = mul nsw i32 %10, %80
  %82 = add i32 %77, 32
  %83 = add i32 %82, %81
  %84 = ashr i32 %83, 6
  %85 = icmp ult i32 %84, 256
  %86 = icmp sgt i32 %84, 0
  %87 = sext i1 %86 to i32
  %88 = select i1 %85, i32 %84, i32 %87
  %89 = trunc i32 %88 to i8
  %90 = getelementptr inbounds i8, ptr %22, i64 3
  store i8 %89, ptr %90, align 1, !tbaa !43
  br i1 %14, label %297, label %91

91:                                               ; preds = %56
  %92 = getelementptr inbounds i8, ptr %23, i64 4
  %93 = load i8, ptr %92, align 1, !tbaa !43
  %94 = zext i8 %93 to i32
  %95 = mul nsw i32 %94, %8
  %96 = getelementptr inbounds i8, ptr %24, i64 4
  %97 = load i8, ptr %96, align 1, !tbaa !43
  %98 = zext i8 %97 to i32
  %99 = mul nsw i32 %10, %98
  %100 = add i32 %95, 32
  %101 = add i32 %100, %99
  %102 = ashr i32 %101, 6
  %103 = icmp ult i32 %102, 256
  %104 = icmp sgt i32 %102, 0
  %105 = sext i1 %104 to i32
  %106 = select i1 %103, i32 %102, i32 %105
  %107 = trunc i32 %106 to i8
  %108 = getelementptr inbounds i8, ptr %22, i64 4
  store i8 %107, ptr %108, align 1, !tbaa !43
  %109 = getelementptr inbounds i8, ptr %23, i64 5
  %110 = load i8, ptr %109, align 1, !tbaa !43
  %111 = zext i8 %110 to i32
  %112 = mul nsw i32 %111, %8
  %113 = getelementptr inbounds i8, ptr %24, i64 5
  %114 = load i8, ptr %113, align 1, !tbaa !43
  %115 = zext i8 %114 to i32
  %116 = mul nsw i32 %10, %115
  %117 = add i32 %112, 32
  %118 = add i32 %117, %116
  %119 = ashr i32 %118, 6
  %120 = icmp ult i32 %119, 256
  %121 = icmp sgt i32 %119, 0
  %122 = sext i1 %121 to i32
  %123 = select i1 %120, i32 %119, i32 %122
  %124 = trunc i32 %123 to i8
  %125 = getelementptr inbounds i8, ptr %22, i64 5
  store i8 %124, ptr %125, align 1, !tbaa !43
  %126 = getelementptr inbounds i8, ptr %23, i64 6
  %127 = load i8, ptr %126, align 1, !tbaa !43
  %128 = zext i8 %127 to i32
  %129 = mul nsw i32 %128, %8
  %130 = getelementptr inbounds i8, ptr %24, i64 6
  %131 = load i8, ptr %130, align 1, !tbaa !43
  %132 = zext i8 %131 to i32
  %133 = mul nsw i32 %10, %132
  %134 = add i32 %129, 32
  %135 = add i32 %134, %133
  %136 = ashr i32 %135, 6
  %137 = icmp ult i32 %136, 256
  %138 = icmp sgt i32 %136, 0
  %139 = sext i1 %138 to i32
  %140 = select i1 %137, i32 %136, i32 %139
  %141 = trunc i32 %140 to i8
  %142 = getelementptr inbounds i8, ptr %22, i64 6
  store i8 %141, ptr %142, align 1, !tbaa !43
  %143 = getelementptr inbounds i8, ptr %23, i64 7
  %144 = load i8, ptr %143, align 1, !tbaa !43
  %145 = zext i8 %144 to i32
  %146 = mul nsw i32 %145, %8
  %147 = getelementptr inbounds i8, ptr %24, i64 7
  %148 = load i8, ptr %147, align 1, !tbaa !43
  %149 = zext i8 %148 to i32
  %150 = mul nsw i32 %10, %149
  %151 = add i32 %146, 32
  %152 = add i32 %151, %150
  %153 = ashr i32 %152, 6
  %154 = icmp ult i32 %153, 256
  %155 = icmp sgt i32 %153, 0
  %156 = sext i1 %155 to i32
  %157 = select i1 %154, i32 %153, i32 %156
  %158 = trunc i32 %157 to i8
  %159 = getelementptr inbounds i8, ptr %22, i64 7
  store i8 %158, ptr %159, align 1, !tbaa !43
  br i1 %15, label %297, label %160

160:                                              ; preds = %91
  %161 = getelementptr inbounds i8, ptr %23, i64 8
  %162 = load i8, ptr %161, align 1, !tbaa !43
  %163 = zext i8 %162 to i32
  %164 = mul nsw i32 %163, %8
  %165 = getelementptr inbounds i8, ptr %24, i64 8
  %166 = load i8, ptr %165, align 1, !tbaa !43
  %167 = zext i8 %166 to i32
  %168 = mul nsw i32 %10, %167
  %169 = add i32 %164, 32
  %170 = add i32 %169, %168
  %171 = ashr i32 %170, 6
  %172 = icmp ult i32 %171, 256
  %173 = icmp sgt i32 %171, 0
  %174 = sext i1 %173 to i32
  %175 = select i1 %172, i32 %171, i32 %174
  %176 = trunc i32 %175 to i8
  %177 = getelementptr inbounds i8, ptr %22, i64 8
  store i8 %176, ptr %177, align 1, !tbaa !43
  %178 = getelementptr inbounds i8, ptr %23, i64 9
  %179 = load i8, ptr %178, align 1, !tbaa !43
  %180 = zext i8 %179 to i32
  %181 = mul nsw i32 %180, %8
  %182 = getelementptr inbounds i8, ptr %24, i64 9
  %183 = load i8, ptr %182, align 1, !tbaa !43
  %184 = zext i8 %183 to i32
  %185 = mul nsw i32 %10, %184
  %186 = add i32 %181, 32
  %187 = add i32 %186, %185
  %188 = ashr i32 %187, 6
  %189 = icmp ult i32 %188, 256
  %190 = icmp sgt i32 %188, 0
  %191 = sext i1 %190 to i32
  %192 = select i1 %189, i32 %188, i32 %191
  %193 = trunc i32 %192 to i8
  %194 = getelementptr inbounds i8, ptr %22, i64 9
  store i8 %193, ptr %194, align 1, !tbaa !43
  %195 = getelementptr inbounds i8, ptr %23, i64 10
  %196 = load i8, ptr %195, align 1, !tbaa !43
  %197 = zext i8 %196 to i32
  %198 = mul nsw i32 %197, %8
  %199 = getelementptr inbounds i8, ptr %24, i64 10
  %200 = load i8, ptr %199, align 1, !tbaa !43
  %201 = zext i8 %200 to i32
  %202 = mul nsw i32 %10, %201
  %203 = add i32 %198, 32
  %204 = add i32 %203, %202
  %205 = ashr i32 %204, 6
  %206 = icmp ult i32 %205, 256
  %207 = icmp sgt i32 %205, 0
  %208 = sext i1 %207 to i32
  %209 = select i1 %206, i32 %205, i32 %208
  %210 = trunc i32 %209 to i8
  %211 = getelementptr inbounds i8, ptr %22, i64 10
  store i8 %210, ptr %211, align 1, !tbaa !43
  %212 = getelementptr inbounds i8, ptr %23, i64 11
  %213 = load i8, ptr %212, align 1, !tbaa !43
  %214 = zext i8 %213 to i32
  %215 = mul nsw i32 %214, %8
  %216 = getelementptr inbounds i8, ptr %24, i64 11
  %217 = load i8, ptr %216, align 1, !tbaa !43
  %218 = zext i8 %217 to i32
  %219 = mul nsw i32 %10, %218
  %220 = add i32 %215, 32
  %221 = add i32 %220, %219
  %222 = ashr i32 %221, 6
  %223 = icmp ult i32 %222, 256
  %224 = icmp sgt i32 %222, 0
  %225 = sext i1 %224 to i32
  %226 = select i1 %223, i32 %222, i32 %225
  %227 = trunc i32 %226 to i8
  %228 = getelementptr inbounds i8, ptr %22, i64 11
  store i8 %227, ptr %228, align 1, !tbaa !43
  %229 = getelementptr inbounds i8, ptr %23, i64 12
  %230 = load i8, ptr %229, align 1, !tbaa !43
  %231 = zext i8 %230 to i32
  %232 = mul nsw i32 %231, %8
  %233 = getelementptr inbounds i8, ptr %24, i64 12
  %234 = load i8, ptr %233, align 1, !tbaa !43
  %235 = zext i8 %234 to i32
  %236 = mul nsw i32 %10, %235
  %237 = add i32 %232, 32
  %238 = add i32 %237, %236
  %239 = ashr i32 %238, 6
  %240 = icmp ult i32 %239, 256
  %241 = icmp sgt i32 %239, 0
  %242 = sext i1 %241 to i32
  %243 = select i1 %240, i32 %239, i32 %242
  %244 = trunc i32 %243 to i8
  %245 = getelementptr inbounds i8, ptr %22, i64 12
  store i8 %244, ptr %245, align 1, !tbaa !43
  %246 = getelementptr inbounds i8, ptr %23, i64 13
  %247 = load i8, ptr %246, align 1, !tbaa !43
  %248 = zext i8 %247 to i32
  %249 = mul nsw i32 %248, %8
  %250 = getelementptr inbounds i8, ptr %24, i64 13
  %251 = load i8, ptr %250, align 1, !tbaa !43
  %252 = zext i8 %251 to i32
  %253 = mul nsw i32 %10, %252
  %254 = add i32 %249, 32
  %255 = add i32 %254, %253
  %256 = ashr i32 %255, 6
  %257 = icmp ult i32 %256, 256
  %258 = icmp sgt i32 %256, 0
  %259 = sext i1 %258 to i32
  %260 = select i1 %257, i32 %256, i32 %259
  %261 = trunc i32 %260 to i8
  %262 = getelementptr inbounds i8, ptr %22, i64 13
  store i8 %261, ptr %262, align 1, !tbaa !43
  %263 = getelementptr inbounds i8, ptr %23, i64 14
  %264 = load i8, ptr %263, align 1, !tbaa !43
  %265 = zext i8 %264 to i32
  %266 = mul nsw i32 %265, %8
  %267 = getelementptr inbounds i8, ptr %24, i64 14
  %268 = load i8, ptr %267, align 1, !tbaa !43
  %269 = zext i8 %268 to i32
  %270 = mul nsw i32 %10, %269
  %271 = add i32 %266, 32
  %272 = add i32 %271, %270
  %273 = ashr i32 %272, 6
  %274 = icmp ult i32 %273, 256
  %275 = icmp sgt i32 %273, 0
  %276 = sext i1 %275 to i32
  %277 = select i1 %274, i32 %273, i32 %276
  %278 = trunc i32 %277 to i8
  %279 = getelementptr inbounds i8, ptr %22, i64 14
  store i8 %278, ptr %279, align 1, !tbaa !43
  %280 = getelementptr inbounds i8, ptr %23, i64 15
  %281 = load i8, ptr %280, align 1, !tbaa !43
  %282 = zext i8 %281 to i32
  %283 = mul nsw i32 %282, %8
  %284 = getelementptr inbounds i8, ptr %24, i64 15
  %285 = load i8, ptr %284, align 1, !tbaa !43
  %286 = zext i8 %285 to i32
  %287 = mul nsw i32 %10, %286
  %288 = add i32 %283, 32
  %289 = add i32 %288, %287
  %290 = ashr i32 %289, 6
  %291 = icmp ult i32 %290, 256
  %292 = icmp sgt i32 %290, 0
  %293 = sext i1 %292 to i32
  %294 = select i1 %291, i32 %290, i32 %293
  %295 = trunc i32 %294 to i8
  %296 = getelementptr inbounds i8, ptr %22, i64 15
  store i8 %295, ptr %296, align 1, !tbaa !43
  br label %297

297:                                              ; preds = %91, %56, %20, %160
  %298 = add nuw nsw i32 %21, 1
  %299 = getelementptr inbounds i8, ptr %22, i64 %16
  %300 = getelementptr inbounds i8, ptr %23, i64 %17
  %301 = getelementptr inbounds i8, ptr %24, i64 %18
  %302 = icmp eq i32 %298, %7
  br i1 %302, label %19, label %20, !llvm.loop !119
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_weight_w2(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 16, !tbaa !107
  %9 = icmp sgt i32 %8, 0
  %10 = icmp sgt i32 %5, 0
  br i1 %9, label %17, label %11

11:                                               ; preds = %6
  br i1 %10, label %12, label %80

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 3
  %14 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 4
  %15 = sext i32 %1 to i64
  %16 = sext i32 %3 to i64
  br label %54

17:                                               ; preds = %6
  br i1 %10, label %18, label %80

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 3
  %20 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 4
  %21 = sext i32 %1 to i64
  %22 = sext i32 %3 to i64
  br label %23

23:                                               ; preds = %18, %27
  %24 = phi i32 [ 0, %18 ], [ %28, %27 ]
  %25 = phi ptr [ %0, %18 ], [ %29, %27 ]
  %26 = phi ptr [ %2, %18 ], [ %30, %27 ]
  br label %32

27:                                               ; preds = %32
  %28 = add nuw nsw i32 %24, 1
  %29 = getelementptr inbounds i8, ptr %25, i64 %21
  %30 = getelementptr inbounds i8, ptr %26, i64 %22
  %31 = icmp eq i32 %28, %5
  br i1 %31, label %80, label %23, !llvm.loop !144

32:                                               ; preds = %23, %32
  %33 = phi i64 [ 0, %23 ], [ %52, %32 ]
  %34 = getelementptr inbounds i8, ptr %26, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !43
  %36 = zext i8 %35 to i32
  %37 = load i32, ptr %19, align 4, !tbaa !109
  %38 = mul nsw i32 %37, %36
  %39 = load i32, ptr %7, align 16, !tbaa !107
  %40 = add nsw i32 %39, -1
  %41 = shl nuw i32 1, %40
  %42 = add nsw i32 %41, %38
  %43 = ashr i32 %42, %39
  %44 = load i32, ptr %20, align 8, !tbaa !110
  %45 = add nsw i32 %43, %44
  %46 = icmp ult i32 %45, 256
  %47 = icmp sgt i32 %45, 0
  %48 = sext i1 %47 to i32
  %49 = select i1 %46, i32 %45, i32 %48
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds i8, ptr %25, i64 %33
  store i8 %50, ptr %51, align 1, !tbaa !43
  %52 = add nuw nsw i64 %33, 1
  %53 = icmp eq i64 %33, 0
  br i1 %53, label %32, label %27, !llvm.loop !145

54:                                               ; preds = %12, %58
  %55 = phi i32 [ 0, %12 ], [ %59, %58 ]
  %56 = phi ptr [ %0, %12 ], [ %60, %58 ]
  %57 = phi ptr [ %2, %12 ], [ %61, %58 ]
  br label %63

58:                                               ; preds = %63
  %59 = add nuw nsw i32 %55, 1
  %60 = getelementptr inbounds i8, ptr %56, i64 %15
  %61 = getelementptr inbounds i8, ptr %57, i64 %16
  %62 = icmp eq i32 %59, %5
  br i1 %62, label %80, label %54, !llvm.loop !146

63:                                               ; preds = %54, %63
  %64 = phi i64 [ 0, %54 ], [ %78, %63 ]
  %65 = getelementptr inbounds i8, ptr %57, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !43
  %67 = zext i8 %66 to i32
  %68 = load i32, ptr %13, align 4, !tbaa !109
  %69 = mul nsw i32 %68, %67
  %70 = load i32, ptr %14, align 8, !tbaa !110
  %71 = add nsw i32 %69, %70
  %72 = icmp ult i32 %71, 256
  %73 = icmp sgt i32 %71, 0
  %74 = sext i1 %73 to i32
  %75 = select i1 %72, i32 %71, i32 %74
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds i8, ptr %56, i64 %64
  store i8 %76, ptr %77, align 1, !tbaa !43
  %78 = add nuw nsw i64 %64, 1
  %79 = icmp eq i64 %64, 0
  br i1 %79, label %63, label %58, !llvm.loop !147

80:                                               ; preds = %58, %27, %11, %17
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_weight_w4(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 16, !tbaa !107
  %9 = icmp sgt i32 %8, 0
  %10 = icmp sgt i32 %5, 0
  br i1 %9, label %17, label %11

11:                                               ; preds = %6
  br i1 %10, label %12, label %80

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 3
  %14 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 4
  %15 = sext i32 %1 to i64
  %16 = sext i32 %3 to i64
  br label %54

17:                                               ; preds = %6
  br i1 %10, label %18, label %80

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 3
  %20 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 4
  %21 = sext i32 %1 to i64
  %22 = sext i32 %3 to i64
  br label %23

23:                                               ; preds = %18, %27
  %24 = phi i32 [ 0, %18 ], [ %28, %27 ]
  %25 = phi ptr [ %0, %18 ], [ %29, %27 ]
  %26 = phi ptr [ %2, %18 ], [ %30, %27 ]
  br label %32

27:                                               ; preds = %32
  %28 = add nuw nsw i32 %24, 1
  %29 = getelementptr inbounds i8, ptr %25, i64 %21
  %30 = getelementptr inbounds i8, ptr %26, i64 %22
  %31 = icmp eq i32 %28, %5
  br i1 %31, label %80, label %23, !llvm.loop !148

32:                                               ; preds = %23, %32
  %33 = phi i64 [ 0, %23 ], [ %52, %32 ]
  %34 = getelementptr inbounds i8, ptr %26, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !43
  %36 = zext i8 %35 to i32
  %37 = load i32, ptr %19, align 4, !tbaa !109
  %38 = mul nsw i32 %37, %36
  %39 = load i32, ptr %7, align 16, !tbaa !107
  %40 = add nsw i32 %39, -1
  %41 = shl nuw i32 1, %40
  %42 = add nsw i32 %41, %38
  %43 = ashr i32 %42, %39
  %44 = load i32, ptr %20, align 8, !tbaa !110
  %45 = add nsw i32 %43, %44
  %46 = icmp ult i32 %45, 256
  %47 = icmp sgt i32 %45, 0
  %48 = sext i1 %47 to i32
  %49 = select i1 %46, i32 %45, i32 %48
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds i8, ptr %25, i64 %33
  store i8 %50, ptr %51, align 1, !tbaa !43
  %52 = add nuw nsw i64 %33, 1
  %53 = icmp eq i64 %52, 4
  br i1 %53, label %27, label %32, !llvm.loop !149

54:                                               ; preds = %12, %58
  %55 = phi i32 [ 0, %12 ], [ %59, %58 ]
  %56 = phi ptr [ %0, %12 ], [ %60, %58 ]
  %57 = phi ptr [ %2, %12 ], [ %61, %58 ]
  br label %63

58:                                               ; preds = %63
  %59 = add nuw nsw i32 %55, 1
  %60 = getelementptr inbounds i8, ptr %56, i64 %15
  %61 = getelementptr inbounds i8, ptr %57, i64 %16
  %62 = icmp eq i32 %59, %5
  br i1 %62, label %80, label %54, !llvm.loop !150

63:                                               ; preds = %54, %63
  %64 = phi i64 [ 0, %54 ], [ %78, %63 ]
  %65 = getelementptr inbounds i8, ptr %57, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !43
  %67 = zext i8 %66 to i32
  %68 = load i32, ptr %13, align 4, !tbaa !109
  %69 = mul nsw i32 %68, %67
  %70 = load i32, ptr %14, align 8, !tbaa !110
  %71 = add nsw i32 %69, %70
  %72 = icmp ult i32 %71, 256
  %73 = icmp sgt i32 %71, 0
  %74 = sext i1 %73 to i32
  %75 = select i1 %72, i32 %71, i32 %74
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds i8, ptr %56, i64 %64
  store i8 %76, ptr %77, align 1, !tbaa !43
  %78 = add nuw nsw i64 %64, 1
  %79 = icmp eq i64 %78, 4
  br i1 %79, label %58, label %63, !llvm.loop !151

80:                                               ; preds = %58, %27, %11, %17
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_weight_w8(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 16, !tbaa !107
  %9 = icmp sgt i32 %8, 0
  %10 = icmp sgt i32 %5, 0
  br i1 %9, label %17, label %11

11:                                               ; preds = %6
  br i1 %10, label %12, label %80

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 3
  %14 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 4
  %15 = sext i32 %1 to i64
  %16 = sext i32 %3 to i64
  br label %54

17:                                               ; preds = %6
  br i1 %10, label %18, label %80

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 3
  %20 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 4
  %21 = sext i32 %1 to i64
  %22 = sext i32 %3 to i64
  br label %23

23:                                               ; preds = %18, %27
  %24 = phi i32 [ 0, %18 ], [ %28, %27 ]
  %25 = phi ptr [ %0, %18 ], [ %29, %27 ]
  %26 = phi ptr [ %2, %18 ], [ %30, %27 ]
  br label %32

27:                                               ; preds = %32
  %28 = add nuw nsw i32 %24, 1
  %29 = getelementptr inbounds i8, ptr %25, i64 %21
  %30 = getelementptr inbounds i8, ptr %26, i64 %22
  %31 = icmp eq i32 %28, %5
  br i1 %31, label %80, label %23, !llvm.loop !152

32:                                               ; preds = %23, %32
  %33 = phi i64 [ 0, %23 ], [ %52, %32 ]
  %34 = getelementptr inbounds i8, ptr %26, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !43
  %36 = zext i8 %35 to i32
  %37 = load i32, ptr %19, align 4, !tbaa !109
  %38 = mul nsw i32 %37, %36
  %39 = load i32, ptr %7, align 16, !tbaa !107
  %40 = add nsw i32 %39, -1
  %41 = shl nuw i32 1, %40
  %42 = add nsw i32 %41, %38
  %43 = ashr i32 %42, %39
  %44 = load i32, ptr %20, align 8, !tbaa !110
  %45 = add nsw i32 %43, %44
  %46 = icmp ult i32 %45, 256
  %47 = icmp sgt i32 %45, 0
  %48 = sext i1 %47 to i32
  %49 = select i1 %46, i32 %45, i32 %48
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds i8, ptr %25, i64 %33
  store i8 %50, ptr %51, align 1, !tbaa !43
  %52 = add nuw nsw i64 %33, 1
  %53 = icmp eq i64 %52, 8
  br i1 %53, label %27, label %32, !llvm.loop !153

54:                                               ; preds = %12, %58
  %55 = phi i32 [ 0, %12 ], [ %59, %58 ]
  %56 = phi ptr [ %0, %12 ], [ %60, %58 ]
  %57 = phi ptr [ %2, %12 ], [ %61, %58 ]
  br label %63

58:                                               ; preds = %63
  %59 = add nuw nsw i32 %55, 1
  %60 = getelementptr inbounds i8, ptr %56, i64 %15
  %61 = getelementptr inbounds i8, ptr %57, i64 %16
  %62 = icmp eq i32 %59, %5
  br i1 %62, label %80, label %54, !llvm.loop !154

63:                                               ; preds = %54, %63
  %64 = phi i64 [ 0, %54 ], [ %78, %63 ]
  %65 = getelementptr inbounds i8, ptr %57, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !43
  %67 = zext i8 %66 to i32
  %68 = load i32, ptr %13, align 4, !tbaa !109
  %69 = mul nsw i32 %68, %67
  %70 = load i32, ptr %14, align 8, !tbaa !110
  %71 = add nsw i32 %69, %70
  %72 = icmp ult i32 %71, 256
  %73 = icmp sgt i32 %71, 0
  %74 = sext i1 %73 to i32
  %75 = select i1 %72, i32 %71, i32 %74
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds i8, ptr %56, i64 %64
  store i8 %76, ptr %77, align 1, !tbaa !43
  %78 = add nuw nsw i64 %64, 1
  %79 = icmp eq i64 %78, 8
  br i1 %79, label %58, label %63, !llvm.loop !155

80:                                               ; preds = %58, %27, %11, %17
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_weight_w12(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 16, !tbaa !107
  %9 = icmp sgt i32 %8, 0
  %10 = icmp sgt i32 %5, 0
  br i1 %9, label %17, label %11

11:                                               ; preds = %6
  br i1 %10, label %12, label %80

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 3
  %14 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 4
  %15 = sext i32 %1 to i64
  %16 = sext i32 %3 to i64
  br label %54

17:                                               ; preds = %6
  br i1 %10, label %18, label %80

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 3
  %20 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 4
  %21 = sext i32 %1 to i64
  %22 = sext i32 %3 to i64
  br label %23

23:                                               ; preds = %18, %27
  %24 = phi i32 [ 0, %18 ], [ %28, %27 ]
  %25 = phi ptr [ %0, %18 ], [ %29, %27 ]
  %26 = phi ptr [ %2, %18 ], [ %30, %27 ]
  br label %32

27:                                               ; preds = %32
  %28 = add nuw nsw i32 %24, 1
  %29 = getelementptr inbounds i8, ptr %25, i64 %21
  %30 = getelementptr inbounds i8, ptr %26, i64 %22
  %31 = icmp eq i32 %28, %5
  br i1 %31, label %80, label %23, !llvm.loop !156

32:                                               ; preds = %23, %32
  %33 = phi i64 [ 0, %23 ], [ %52, %32 ]
  %34 = getelementptr inbounds i8, ptr %26, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !43
  %36 = zext i8 %35 to i32
  %37 = load i32, ptr %19, align 4, !tbaa !109
  %38 = mul nsw i32 %37, %36
  %39 = load i32, ptr %7, align 16, !tbaa !107
  %40 = add nsw i32 %39, -1
  %41 = shl nuw i32 1, %40
  %42 = add nsw i32 %41, %38
  %43 = ashr i32 %42, %39
  %44 = load i32, ptr %20, align 8, !tbaa !110
  %45 = add nsw i32 %43, %44
  %46 = icmp ult i32 %45, 256
  %47 = icmp sgt i32 %45, 0
  %48 = sext i1 %47 to i32
  %49 = select i1 %46, i32 %45, i32 %48
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds i8, ptr %25, i64 %33
  store i8 %50, ptr %51, align 1, !tbaa !43
  %52 = add nuw nsw i64 %33, 1
  %53 = icmp eq i64 %52, 12
  br i1 %53, label %27, label %32, !llvm.loop !157

54:                                               ; preds = %12, %58
  %55 = phi i32 [ 0, %12 ], [ %59, %58 ]
  %56 = phi ptr [ %0, %12 ], [ %60, %58 ]
  %57 = phi ptr [ %2, %12 ], [ %61, %58 ]
  br label %63

58:                                               ; preds = %63
  %59 = add nuw nsw i32 %55, 1
  %60 = getelementptr inbounds i8, ptr %56, i64 %15
  %61 = getelementptr inbounds i8, ptr %57, i64 %16
  %62 = icmp eq i32 %59, %5
  br i1 %62, label %80, label %54, !llvm.loop !158

63:                                               ; preds = %54, %63
  %64 = phi i64 [ 0, %54 ], [ %78, %63 ]
  %65 = getelementptr inbounds i8, ptr %57, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !43
  %67 = zext i8 %66 to i32
  %68 = load i32, ptr %13, align 4, !tbaa !109
  %69 = mul nsw i32 %68, %67
  %70 = load i32, ptr %14, align 8, !tbaa !110
  %71 = add nsw i32 %69, %70
  %72 = icmp ult i32 %71, 256
  %73 = icmp sgt i32 %71, 0
  %74 = sext i1 %73 to i32
  %75 = select i1 %72, i32 %71, i32 %74
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds i8, ptr %56, i64 %64
  store i8 %76, ptr %77, align 1, !tbaa !43
  %78 = add nuw nsw i64 %64, 1
  %79 = icmp eq i64 %78, 12
  br i1 %79, label %58, label %63, !llvm.loop !159

80:                                               ; preds = %58, %27, %11, %17
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_weight_w16(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 16, !tbaa !107
  %9 = icmp sgt i32 %8, 0
  %10 = icmp sgt i32 %5, 0
  br i1 %9, label %17, label %11

11:                                               ; preds = %6
  br i1 %10, label %12, label %80

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 3
  %14 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 4
  %15 = sext i32 %1 to i64
  %16 = sext i32 %3 to i64
  br label %54

17:                                               ; preds = %6
  br i1 %10, label %18, label %80

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 3
  %20 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 4
  %21 = sext i32 %1 to i64
  %22 = sext i32 %3 to i64
  br label %23

23:                                               ; preds = %18, %27
  %24 = phi i32 [ 0, %18 ], [ %28, %27 ]
  %25 = phi ptr [ %0, %18 ], [ %29, %27 ]
  %26 = phi ptr [ %2, %18 ], [ %30, %27 ]
  br label %32

27:                                               ; preds = %32
  %28 = add nuw nsw i32 %24, 1
  %29 = getelementptr inbounds i8, ptr %25, i64 %21
  %30 = getelementptr inbounds i8, ptr %26, i64 %22
  %31 = icmp eq i32 %28, %5
  br i1 %31, label %80, label %23, !llvm.loop !160

32:                                               ; preds = %23, %32
  %33 = phi i64 [ 0, %23 ], [ %52, %32 ]
  %34 = getelementptr inbounds i8, ptr %26, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !43
  %36 = zext i8 %35 to i32
  %37 = load i32, ptr %19, align 4, !tbaa !109
  %38 = mul nsw i32 %37, %36
  %39 = load i32, ptr %7, align 16, !tbaa !107
  %40 = add nsw i32 %39, -1
  %41 = shl nuw i32 1, %40
  %42 = add nsw i32 %41, %38
  %43 = ashr i32 %42, %39
  %44 = load i32, ptr %20, align 8, !tbaa !110
  %45 = add nsw i32 %43, %44
  %46 = icmp ult i32 %45, 256
  %47 = icmp sgt i32 %45, 0
  %48 = sext i1 %47 to i32
  %49 = select i1 %46, i32 %45, i32 %48
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds i8, ptr %25, i64 %33
  store i8 %50, ptr %51, align 1, !tbaa !43
  %52 = add nuw nsw i64 %33, 1
  %53 = icmp eq i64 %52, 16
  br i1 %53, label %27, label %32, !llvm.loop !161

54:                                               ; preds = %12, %58
  %55 = phi i32 [ 0, %12 ], [ %59, %58 ]
  %56 = phi ptr [ %0, %12 ], [ %60, %58 ]
  %57 = phi ptr [ %2, %12 ], [ %61, %58 ]
  br label %63

58:                                               ; preds = %63
  %59 = add nuw nsw i32 %55, 1
  %60 = getelementptr inbounds i8, ptr %56, i64 %15
  %61 = getelementptr inbounds i8, ptr %57, i64 %16
  %62 = icmp eq i32 %59, %5
  br i1 %62, label %80, label %54, !llvm.loop !162

63:                                               ; preds = %54, %63
  %64 = phi i64 [ 0, %54 ], [ %78, %63 ]
  %65 = getelementptr inbounds i8, ptr %57, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !43
  %67 = zext i8 %66 to i32
  %68 = load i32, ptr %13, align 4, !tbaa !109
  %69 = mul nsw i32 %68, %67
  %70 = load i32, ptr %14, align 8, !tbaa !110
  %71 = add nsw i32 %69, %70
  %72 = icmp ult i32 %71, 256
  %73 = icmp sgt i32 %71, 0
  %74 = sext i1 %73 to i32
  %75 = select i1 %72, i32 %71, i32 %74
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds i8, ptr %56, i64 %64
  store i8 %76, ptr %77, align 1, !tbaa !43
  %78 = add nuw nsw i64 %64, 1
  %79 = icmp eq i64 %78, 16
  br i1 %79, label %58, label %63, !llvm.loop !163

80:                                               ; preds = %58, %27, %11, %17
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_weight_w20(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 16, !tbaa !107
  %9 = icmp sgt i32 %8, 0
  %10 = icmp sgt i32 %5, 0
  br i1 %9, label %17, label %11

11:                                               ; preds = %6
  br i1 %10, label %12, label %80

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 3
  %14 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 4
  %15 = sext i32 %1 to i64
  %16 = sext i32 %3 to i64
  br label %54

17:                                               ; preds = %6
  br i1 %10, label %18, label %80

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 3
  %20 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 4
  %21 = sext i32 %1 to i64
  %22 = sext i32 %3 to i64
  br label %23

23:                                               ; preds = %18, %27
  %24 = phi i32 [ 0, %18 ], [ %28, %27 ]
  %25 = phi ptr [ %0, %18 ], [ %29, %27 ]
  %26 = phi ptr [ %2, %18 ], [ %30, %27 ]
  br label %32

27:                                               ; preds = %32
  %28 = add nuw nsw i32 %24, 1
  %29 = getelementptr inbounds i8, ptr %25, i64 %21
  %30 = getelementptr inbounds i8, ptr %26, i64 %22
  %31 = icmp eq i32 %28, %5
  br i1 %31, label %80, label %23, !llvm.loop !164

32:                                               ; preds = %23, %32
  %33 = phi i64 [ 0, %23 ], [ %52, %32 ]
  %34 = getelementptr inbounds i8, ptr %26, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !43
  %36 = zext i8 %35 to i32
  %37 = load i32, ptr %19, align 4, !tbaa !109
  %38 = mul nsw i32 %37, %36
  %39 = load i32, ptr %7, align 16, !tbaa !107
  %40 = add nsw i32 %39, -1
  %41 = shl nuw i32 1, %40
  %42 = add nsw i32 %41, %38
  %43 = ashr i32 %42, %39
  %44 = load i32, ptr %20, align 8, !tbaa !110
  %45 = add nsw i32 %43, %44
  %46 = icmp ult i32 %45, 256
  %47 = icmp sgt i32 %45, 0
  %48 = sext i1 %47 to i32
  %49 = select i1 %46, i32 %45, i32 %48
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds i8, ptr %25, i64 %33
  store i8 %50, ptr %51, align 1, !tbaa !43
  %52 = add nuw nsw i64 %33, 1
  %53 = icmp eq i64 %52, 20
  br i1 %53, label %27, label %32, !llvm.loop !165

54:                                               ; preds = %12, %58
  %55 = phi i32 [ 0, %12 ], [ %59, %58 ]
  %56 = phi ptr [ %0, %12 ], [ %60, %58 ]
  %57 = phi ptr [ %2, %12 ], [ %61, %58 ]
  br label %63

58:                                               ; preds = %63
  %59 = add nuw nsw i32 %55, 1
  %60 = getelementptr inbounds i8, ptr %56, i64 %15
  %61 = getelementptr inbounds i8, ptr %57, i64 %16
  %62 = icmp eq i32 %59, %5
  br i1 %62, label %80, label %54, !llvm.loop !166

63:                                               ; preds = %54, %63
  %64 = phi i64 [ 0, %54 ], [ %78, %63 ]
  %65 = getelementptr inbounds i8, ptr %57, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !43
  %67 = zext i8 %66 to i32
  %68 = load i32, ptr %13, align 4, !tbaa !109
  %69 = mul nsw i32 %68, %67
  %70 = load i32, ptr %14, align 8, !tbaa !110
  %71 = add nsw i32 %69, %70
  %72 = icmp ult i32 %71, 256
  %73 = icmp sgt i32 %71, 0
  %74 = sext i1 %73 to i32
  %75 = select i1 %72, i32 %71, i32 %74
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds i8, ptr %56, i64 %64
  store i8 %76, ptr %77, align 1, !tbaa !43
  %78 = add nuw nsw i64 %64, 1
  %79 = icmp eq i64 %78, 20
  br i1 %79, label %58, label %63, !llvm.loop !167

80:                                               ; preds = %58, %27, %11, %17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }

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
!34 = distinct !{!34, !35, !36}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = !{!38, !38, i64 0}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !39, i64 0}
!43 = !{!39, !39, i64 0}
!44 = distinct !{!44, !35, !36}
!45 = !{!46, !38, i64 32864}
!46 = !{!"x264_t", !47, i64 0, !39, i64 704, !42, i64 1736, !42, i64 1740, !42, i64 1744, !42, i64 1748, !42, i64 1752, !52, i64 1760, !38, i64 1832, !42, i64 1840, !42, i64 1844, !42, i64 1848, !42, i64 1852, !42, i64 1856, !42, i64 1860, !42, i64 1864, !42, i64 1868, !42, i64 1872, !42, i64 1876, !42, i64 1880, !42, i64 1884, !42, i64 1888, !42, i64 1892, !39, i64 1896, !38, i64 3200, !39, i64 3208, !38, i64 3328, !42, i64 3336, !42, i64 3340, !39, i64 3344, !39, i64 3376, !39, i64 3392, !39, i64 3424, !39, i64 3440, !39, i64 3472, !39, i64 3488, !39, i64 3520, !39, i64 3536, !39, i64 4272, !38, i64 7216, !55, i64 7232, !56, i64 13904, !57, i64 14416, !38, i64 14680, !38, i64 14688, !42, i64 14696, !39, i64 14704, !42, i64 14856, !39, i64 14864, !39, i64 15016, !42, i64 15024, !42, i64 15028, !54, i64 15032, !58, i64 15040, !59, i64 16368, !38, i64 26704, !62, i64 26712, !39, i64 30400, !39, i64 30912, !39, i64 31168, !38, i64 31176, !39, i64 31184, !39, i64 31232, !39, i64 31248, !39, i64 31304, !39, i64 31360, !39, i64 31456, !38, i64 31552, !65, i64 31560, !66, i64 32616, !67, i64 32912, !68, i64 33032, !69, i64 33080, !70, i64 33256, !38, i64 33328}
!47 = !{!"x264_param_t", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !48, i64 44, !42, i64 80, !42, i64 84, !42, i64 88, !42, i64 92, !42, i64 96, !42, i64 100, !42, i64 104, !42, i64 108, !42, i64 112, !42, i64 116, !42, i64 120, !42, i64 124, !42, i64 128, !42, i64 132, !42, i64 136, !42, i64 140, !42, i64 144, !38, i64 152, !39, i64 160, !39, i64 176, !39, i64 192, !39, i64 208, !39, i64 224, !39, i64 288, !38, i64 352, !38, i64 360, !42, i64 368, !42, i64 372, !38, i64 376, !49, i64 384, !51, i64 488, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !42, i64 648, !42, i64 652, !42, i64 656, !42, i64 660, !42, i64 664, !42, i64 668, !42, i64 672, !42, i64 676, !42, i64 680, !42, i64 684, !42, i64 688, !42, i64 692, !38, i64 696}
!48 = !{!"", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32}
!49 = !{!"", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !42, i64 64, !42, i64 68, !50, i64 72, !50, i64 76, !42, i64 80, !39, i64 84, !42, i64 92, !42, i64 96}
!50 = !{!"float", !39, i64 0}
!51 = !{!"", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !50, i64 24, !50, i64 28, !50, i64 32, !42, i64 36, !42, i64 40, !50, i64 44, !50, i64 48, !50, i64 52, !42, i64 56, !50, i64 60, !42, i64 64, !42, i64 68, !42, i64 72, !38, i64 80, !42, i64 88, !38, i64 96, !50, i64 104, !50, i64 108, !50, i64 112, !38, i64 120, !42, i64 128, !38, i64 136}
!52 = !{!"", !42, i64 0, !42, i64 4, !38, i64 8, !42, i64 16, !38, i64 24, !53, i64 32}
!53 = !{!"bs_s", !38, i64 0, !38, i64 8, !38, i64 16, !54, i64 24, !42, i64 32, !42, i64 36}
!54 = !{!"long", !39, i64 0}
!55 = !{!"", !38, i64 0, !38, i64 8, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !39, i64 60, !42, i64 68, !42, i64 72, !42, i64 76, !42, i64 80, !42, i64 84, !42, i64 88, !42, i64 92, !39, i64 96, !39, i64 352, !42, i64 6496, !42, i64 6500, !39, i64 6504, !42, i64 6632, !42, i64 6636, !42, i64 6640, !42, i64 6644, !42, i64 6648, !42, i64 6652, !42, i64 6656, !42, i64 6660}
!56 = !{!"", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !38, i64 16, !38, i64 24, !38, i64 32, !42, i64 48, !39, i64 52}
!57 = !{!"", !38, i64 0, !39, i64 8, !38, i64 24, !39, i64 32, !42, i64 176, !42, i64 180, !42, i64 184, !42, i64 188, !42, i64 192, !42, i64 196, !42, i64 200, !54, i64 208, !54, i64 216, !39, i64 224, !54, i64 240, !54, i64 248, !42, i64 256, !42, i64 260}
!58 = !{!"", !39, i64 0, !39, i64 32, !39, i64 48, !39, i64 560}
!59 = !{!"", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !42, i64 64, !42, i64 68, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !39, i64 112, !42, i64 120, !39, i64 124, !39, i64 140, !42, i64 204, !42, i64 208, !42, i64 212, !42, i64 216, !42, i64 220, !42, i64 224, !42, i64 228, !42, i64 232, !42, i64 236, !42, i64 240, !42, i64 244, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288, !38, i64 296, !39, i64 304, !39, i64 320, !39, i64 336, !39, i64 352, !38, i64 864, !38, i64 872, !38, i64 880, !39, i64 888, !42, i64 1016, !42, i64 1020, !39, i64 1024, !42, i64 1028, !42, i64 1032, !42, i64 1036, !42, i64 1040, !42, i64 1044, !42, i64 1048, !42, i64 1052, !42, i64 1056, !42, i64 1060, !60, i64 1072, !61, i64 8656, !42, i64 9424, !42, i64 9428, !42, i64 9432, !42, i64 9436, !42, i64 9440, !42, i64 9444, !42, i64 9448, !42, i64 9452, !39, i64 9456, !42, i64 9472, !42, i64 9476, !39, i64 9480, !38, i64 9992, !39, i64 10000, !38, i64 10256, !39, i64 10264, !42, i64 10284, !39, i64 10288}
!60 = !{!"", !39, i64 0, !39, i64 384, !39, i64 1248, !39, i64 1504, !39, i64 1760, !39, i64 2144, !39, i64 2624, !39, i64 2640, !42, i64 2656, !42, i64 2660, !39, i64 2672, !39, i64 3184, !39, i64 3696, !39, i64 3776, !39, i64 3904, !39, i64 3928, !39, i64 3952, !39, i64 3976, !39, i64 3984, !39, i64 7056, !39, i64 7312, !39, i64 7568}
!61 = !{!"", !39, i64 0, !39, i64 48, !39, i64 96, !39, i64 176, !39, i64 496, !39, i64 656, !39, i64 696, !39, i64 728, !42, i64 736, !39, i64 740, !42, i64 744, !42, i64 748, !42, i64 752, !42, i64 756}
!62 = !{!"", !63, i64 0, !39, i64 704, !39, i64 728, !39, i64 768, !39, i64 808, !39, i64 880, !39, i64 920, !39, i64 960, !39, i64 1000, !39, i64 1040, !39, i64 1080, !39, i64 1120, !39, i64 1880, !39, i64 2152, !39, i64 2168, !39, i64 3192, !39, i64 3240, !39, i64 3656, !39, i64 3664, !39, i64 3672}
!63 = !{!"", !42, i64 0, !42, i64 4, !42, i64 8, !39, i64 12, !42, i64 88, !42, i64 92, !42, i64 96, !39, i64 100, !39, i64 108, !39, i64 364, !39, i64 432, !39, i64 456, !39, i64 664, !39, i64 672, !64, i64 696}
!64 = !{!"double", !39, i64 0}
!65 = !{!"", !39, i64 0, !39, i64 56, !39, i64 112, !39, i64 168, !39, i64 224, !39, i64 256, !39, i64 312, !39, i64 368, !39, i64 424, !39, i64 480, !39, i64 536, !38, i64 592, !39, i64 600, !39, i64 632, !38, i64 664, !38, i64 672, !39, i64 680, !39, i64 736, !39, i64 792, !39, i64 848, !39, i64 904, !38, i64 960, !38, i64 968, !38, i64 976, !38, i64 984, !38, i64 992, !38, i64 1000, !38, i64 1008, !38, i64 1016, !38, i64 1024, !38, i64 1032, !38, i64 1040, !38, i64 1048}
!66 = !{!"", !38, i64 0, !38, i64 8, !38, i64 16, !39, i64 24, !39, i64 104, !38, i64 160, !38, i64 168, !38, i64 176, !38, i64 184, !38, i64 192, !38, i64 200, !38, i64 208, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !38, i64 248, !38, i64 256, !38, i64 264, !38, i64 272, !38, i64 280, !38, i64 288}
!67 = !{!"", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !38, i64 112}
!68 = !{!"", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40}
!69 = !{!"", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !39, i64 88, !39, i64 136}
!70 = !{!"", !39, i64 0, !39, i64 16, !39, i64 32, !39, i64 48, !38, i64 64}
!71 = !{!72, !42, i64 140}
!72 = !{!"x264_frame", !42, i64 0, !42, i64 4, !42, i64 8, !54, i64 16, !54, i64 24, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !38, i64 48, !42, i64 56, !42, i64 60, !42, i64 64, !42, i64 68, !42, i64 72, !42, i64 76, !42, i64 80, !39, i64 84, !39, i64 85, !39, i64 86, !50, i64 88, !50, i64 92, !42, i64 96, !42, i64 100, !39, i64 104, !39, i64 116, !39, i64 128, !42, i64 140, !42, i64 144, !42, i64 148, !39, i64 152, !39, i64 176, !39, i64 208, !38, i64 240, !39, i64 248, !39, i64 280, !39, i64 320, !39, i64 3392, !42, i64 3520, !38, i64 3528, !38, i64 3536, !38, i64 3544, !39, i64 3552, !38, i64 3568, !39, i64 3576, !39, i64 3848, !39, i64 6440, !39, i64 6712, !39, i64 6728, !39, i64 6736, !39, i64 6864, !39, i64 6868, !39, i64 8164, !42, i64 9460, !39, i64 9464, !39, i64 9536, !38, i64 12128, !38, i64 12136, !38, i64 12144, !38, i64 12152, !38, i64 12160, !42, i64 12168, !38, i64 12176, !38, i64 12184, !38, i64 12192, !42, i64 12200, !39, i64 12204, !42, i64 12276, !54, i64 12280, !73, i64 12288, !39, i64 12320, !39, i64 12572, !39, i64 13576, !42, i64 15584, !42, i64 15588, !42, i64 15592, !42, i64 15596, !42, i64 15600, !42, i64 15604, !42, i64 15608, !50, i64 15612, !42, i64 15616, !42, i64 15620, !42, i64 15624}
!73 = !{!"", !64, i64 0, !64, i64 8, !64, i64 16, !64, i64 24}
!74 = !{!72, !42, i64 144}
!75 = !{!72, !42, i64 148}
!76 = !{!46, !42, i64 100}
!77 = distinct !{!77, !35, !36}
!78 = distinct !{!78, !35, !36}
!79 = distinct !{!79, !35, !36}
!80 = !{!81, !81, i64 0}
!81 = !{!"short", !39, i64 0}
!82 = distinct !{!82, !35, !36}
!83 = !{!66, !38, i64 0}
!84 = !{!66, !38, i64 8}
!85 = !{!66, !38, i64 16}
!86 = !{!66, !38, i64 256}
!87 = !{!66, !38, i64 264}
!88 = !{!66, !38, i64 272}
!89 = !{!66, !38, i64 280}
!90 = !{!66, !38, i64 160}
!91 = !{!66, !38, i64 168}
!92 = !{!66, !38, i64 176}
!93 = !{!66, !38, i64 184}
!94 = !{!66, !38, i64 192}
!95 = !{!66, !38, i64 200}
!96 = !{!66, !38, i64 208}
!97 = !{!66, !38, i64 248}
!98 = !{!66, !38, i64 216}
!99 = !{!66, !38, i64 224}
!100 = !{!66, !38, i64 232}
!101 = !{!66, !38, i64 240}
!102 = !{!66, !38, i64 288}
!103 = distinct !{!103, !35, !36}
!104 = distinct !{!104, !35, !36}
!105 = !{!106, !38, i64 48}
!106 = !{!"x264_weight_t", !39, i64 0, !39, i64 16, !42, i64 32, !42, i64 36, !42, i64 40, !38, i64 48}
!107 = !{!106, !42, i64 32}
!108 = distinct !{!108, !35, !36}
!109 = !{!106, !42, i64 36}
!110 = !{!106, !42, i64 40}
!111 = distinct !{!111, !35, !36}
!112 = distinct !{!112, !35, !36}
!113 = distinct !{!113, !35, !36}
!114 = distinct !{!114, !35, !36}
!115 = distinct !{!115, !35, !36}
!116 = distinct !{!116, !35, !36}
!117 = distinct !{!117, !35, !36}
!118 = distinct !{!118, !35, !36}
!119 = distinct !{!119, !35, !36}
!120 = !{!46, !38, i64 32872}
!121 = distinct !{!121, !35, !36}
!122 = distinct !{!122, !35, !36}
!123 = distinct !{!123, !35, !36}
!124 = distinct !{!124, !35, !36}
!125 = distinct !{!125, !35, !36}
!126 = distinct !{!126, !35, !36}
!127 = distinct !{!127, !35, !36}
!128 = distinct !{!128, !35, !36}
!129 = distinct !{!129, !35, !36}
!130 = distinct !{!130, !35, !36}
!131 = distinct !{!131, !35, !36}
!132 = distinct !{!132, !35, !36}
!133 = !{!46, !42, i64 7268}
!134 = !{!72, !38, i64 240}
!135 = !{!46, !38, i64 32792}
!136 = !{!46, !38, i64 31176}
!137 = distinct !{!137, !35, !36}
!138 = !{!46, !42, i64 14676}
!139 = !{!46, !38, i64 32832}
!140 = !{!46, !38, i64 32848}
!141 = !{!46, !38, i64 32840}
!142 = !{!46, !38, i64 32856}
!143 = distinct !{!143, !35, !36}
!144 = distinct !{!144, !35, !36}
!145 = distinct !{!145, !35, !36}
!146 = distinct !{!146, !35, !36}
!147 = distinct !{!147, !35, !36}
!148 = distinct !{!148, !35, !36}
!149 = distinct !{!149, !35, !36}
!150 = distinct !{!150, !35, !36}
!151 = distinct !{!151, !35, !36}
!152 = distinct !{!152, !35, !36}
!153 = distinct !{!153, !35, !36}
!154 = distinct !{!154, !35, !36}
!155 = distinct !{!155, !35, !36}
!156 = distinct !{!156, !35, !36}
!157 = distinct !{!157, !35, !36}
!158 = distinct !{!158, !35, !36}
!159 = distinct !{!159, !35, !36}
!160 = distinct !{!160, !35, !36}
!161 = distinct !{!161, !35, !36}
!162 = distinct !{!162, !35, !36}
!163 = distinct !{!163, !35, !36}
!164 = distinct !{!164, !35, !36}
!165 = distinct !{!165, !35, !36}
!166 = distinct !{!166, !35, !36}
!167 = distinct !{!167, !35, !36}
