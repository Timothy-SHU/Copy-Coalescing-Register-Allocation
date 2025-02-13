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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_frame_init_lowres(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 30
  %4 = load ptr, ptr %3, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 24
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 26
  %8 = load i32, ptr %7, align 16, !tbaa !40
  %9 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 25
  %10 = load i32, ptr %9, align 4, !tbaa !40
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = sext i32 %6 to i64
  %14 = sext i32 %10 to i64
  %15 = zext nneg i32 %8 to i64
  %16 = sext i32 %10 to i64
  %17 = getelementptr i8, ptr %4, i64 %16
  %18 = getelementptr i8, ptr %17, i64 -1
  %19 = getelementptr i8, ptr %4, i64 %14
  br label %50

20:                                               ; preds = %50, %2
  %21 = mul nsw i32 %8, %6
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %4, i64 %22
  %24 = add nsw i32 %8, -1
  %25 = mul nsw i32 %24, %6
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %4, i64 %26
  %28 = add nsw i32 %10, 1
  %29 = sext i32 %28 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %23, ptr align 1 %27, i64 %29, i1 false)
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 16
  %31 = load ptr, ptr %30, align 8, !tbaa !42
  %32 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 32
  %33 = load ptr, ptr %32, align 16, !tbaa !36
  %34 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 32, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !36
  %36 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 32, i64 2
  %37 = load ptr, ptr %36, align 16, !tbaa !36
  %38 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 32, i64 3
  %39 = load ptr, ptr %38, align 8, !tbaa !36
  %40 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 27
  %41 = load i32, ptr %40, align 4, !tbaa !68
  %42 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 28
  %43 = load i32, ptr %42, align 16, !tbaa !71
  %44 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 29
  %45 = load i32, ptr %44, align 4, !tbaa !72
  tail call void %31(ptr noundef %4, ptr noundef %33, ptr noundef %35, ptr noundef %37, ptr noundef %39, i32 noundef %6, i32 noundef %41, i32 noundef %43, i32 noundef %45) #11
  tail call void @x264_frame_expand_border_lowres(ptr noundef %1) #11
  %46 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1296) %46, i8 -1, i64 1296, i1 false)
  %47 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  %48 = load i32, ptr %47, align 4, !tbaa !73
  %49 = icmp sgt i32 %48, -2
  br i1 %49, label %58, label %64

50:                                               ; preds = %12, %50
  %51 = phi i64 [ 0, %12 ], [ %56, %50 ]
  %52 = mul nsw i64 %51, %13
  %53 = getelementptr i8, ptr %18, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !74
  %55 = getelementptr i8, ptr %19, i64 %52
  store i8 %54, ptr %55, align 1, !tbaa !74
  %56 = add nuw nsw i64 %51, 1
  %57 = icmp eq i64 %56, %15
  br i1 %57, label %20, label %50, !llvm.loop !75

58:                                               ; preds = %20, %70
  %59 = phi i32 [ %72, %70 ], [ %48, %20 ]
  %60 = phi i64 [ %73, %70 ], [ 0, %20 ]
  %61 = icmp sgt i32 %59, -2
  br i1 %61, label %75, label %62

62:                                               ; preds = %58
  %63 = sext i32 %59 to i64
  br label %70

64:                                               ; preds = %70, %20
  %65 = phi i32 [ %48, %20 ], [ %72, %70 ]
  %66 = icmp ne i32 %65, 0
  %67 = icmp slt i32 %65, 0
  %68 = add i32 %65, 1
  %69 = zext i32 %68 to i64
  br label %83

70:                                               ; preds = %75, %62
  %71 = phi i64 [ %63, %62 ], [ %81, %75 ]
  %72 = phi i32 [ %59, %62 ], [ %80, %75 ]
  %73 = add nuw nsw i64 %60, 1
  %74 = icmp sgt i64 %60, %71
  br i1 %74, label %64, label %58, !llvm.loop !76

75:                                               ; preds = %58, %75
  %76 = phi i64 [ %79, %75 ], [ 0, %58 ]
  %77 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 56, i64 %60, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !36
  store i32 -1, ptr %78, align 4, !tbaa !40
  %79 = add nuw nsw i64 %76, 1
  %80 = load i32, ptr %47, align 4, !tbaa !73
  %81 = sext i32 %80 to i64
  %82 = icmp sgt i64 %76, %81
  br i1 %82, label %70, label %75, !llvm.loop !77

83:                                               ; preds = %64, %87
  %84 = phi i1 [ true, %64 ], [ false, %87 ]
  %85 = phi i64 [ 0, %64 ], [ 1, %87 ]
  br i1 %67, label %87, label %89

86:                                               ; preds = %87
  ret void

87:                                               ; preds = %89, %83
  %88 = and i1 %84, %66
  br i1 %88, label %83, label %86, !llvm.loop !78

89:                                               ; preds = %83, %89
  %90 = phi i64 [ %93, %89 ], [ 0, %83 ]
  %91 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 45, i64 %85, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !36
  store i16 32767, ptr %92, align 2, !tbaa !79
  %93 = add nuw nsw i64 %90, 1
  %94 = icmp eq i64 %93, %69
  br i1 %94, label %87, label %89, !llvm.loop !81
}

; Function Attrs: optsize
declare void @x264_frame_expand_border_lowres(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @x264_mc_init(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 {
  store ptr @mc_luma, ptr %1, align 8, !tbaa !82
  %3 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 1
  store ptr @get_ref, ptr %3, align 8, !tbaa !83
  %4 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 2
  store ptr @mc_chroma, ptr %4, align 8, !tbaa !84
  %5 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3
  store ptr @pixel_avg_16x16, ptr %5, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 1
  store ptr @pixel_avg_16x8, ptr %6, align 8, !tbaa !36
  %7 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 2
  store ptr @pixel_avg_8x16, ptr %7, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 3
  store ptr @pixel_avg_8x8, ptr %8, align 8, !tbaa !36
  %9 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 4
  store ptr @pixel_avg_8x4, ptr %9, align 8, !tbaa !36
  %10 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 5
  store ptr @pixel_avg_4x8, ptr %10, align 8, !tbaa !36
  %11 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 6
  store ptr @pixel_avg_4x4, ptr %11, align 8, !tbaa !36
  %12 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 7
  store ptr @pixel_avg_4x2, ptr %12, align 8, !tbaa !36
  %13 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 8
  store ptr @pixel_avg_2x4, ptr %13, align 8, !tbaa !36
  %14 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 3, i64 9
  store ptr @pixel_avg_2x2, ptr %14, align 8, !tbaa !36
  %15 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 17
  store ptr @x264_mc_weight_wtab, ptr %15, align 8, !tbaa !85
  %16 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 18
  store ptr @x264_mc_weight_wtab, ptr %16, align 8, !tbaa !86
  %17 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 19
  store ptr @x264_mc_weight_wtab, ptr %17, align 8, !tbaa !87
  %18 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 20
  store ptr @x264_weight_cache, ptr %18, align 8, !tbaa !88
  %19 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 5
  store ptr @mc_copy_w16, ptr %19, align 8, !tbaa !89
  %20 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 4
  store ptr @mc_copy_w16, ptr %20, align 8, !tbaa !36
  %21 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 4, i64 3
  store ptr @mc_copy_w8, ptr %21, align 8, !tbaa !36
  %22 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 4, i64 6
  store ptr @mc_copy_w4, ptr %22, align 8, !tbaa !36
  %23 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 6
  store ptr @x264_plane_copy_c, ptr %23, align 8, !tbaa !90
  %24 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 7
  store ptr @hpel_filter, ptr %24, align 8, !tbaa !91
  %25 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 8
  store ptr @prefetch_fenc_null, ptr %25, align 8, !tbaa !92
  %26 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 9
  store ptr @prefetch_ref_null, ptr %26, align 8, !tbaa !93
  %27 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 10
  store ptr @memcpy, ptr %27, align 8, !tbaa !94
  %28 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 11
  store ptr @memzero_aligned, ptr %28, align 8, !tbaa !95
  %29 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 16
  store ptr @frame_init_lowres_core, ptr %29, align 8, !tbaa !96
  %30 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 12
  store ptr @integral_init4h, ptr %30, align 8, !tbaa !97
  %31 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 13
  store ptr @integral_init8h, ptr %31, align 8, !tbaa !98
  %32 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 14
  store ptr @integral_init4v, ptr %32, align 8, !tbaa !99
  %33 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 15
  store ptr @integral_init8v, ptr %33, align 8, !tbaa !100
  %34 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %1, i64 0, i32 21
  store ptr @mbtree_propagate_cost, ptr %34, align 8, !tbaa !101
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_luma(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8) #0 !PGOFuncName !102 {
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
  %20 = load i8, ptr %19, align 1, !tbaa !74
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !36
  %24 = sext i32 %17 to i64
  %25 = getelementptr inbounds i8, ptr %23, i64 %24
  %26 = icmp eq i32 %10, 3
  %27 = select i1 %26, i32 %3, i32 0
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %25, i64 %28
  %30 = and i32 %13, 5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %9
  %33 = getelementptr inbounds [16 x i8], ptr @hpel_ref1, i64 0, i64 %18
  %34 = load i8, ptr %33, align 1, !tbaa !74
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %2, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !36
  %38 = getelementptr inbounds i8, ptr %37, i64 %24
  %39 = icmp eq i32 %12, 3
  %40 = zext i1 %39 to i64
  %41 = getelementptr inbounds i8, ptr %38, i64 %40
  tail call fastcc void @pixel_avg(ptr noundef %0, i32 noundef %1, ptr noundef %29, i32 noundef %3, ptr noundef %41, i32 noundef %3, i32 noundef %6, i32 noundef %7) #12
  %42 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 5
  %43 = load ptr, ptr %42, align 16, !tbaa !103
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %32
  tail call fastcc void @mc_weight(ptr noundef %0, i32 noundef %1, ptr noundef %0, i32 noundef %1, ptr noundef nonnull %8, i32 noundef %6, i32 noundef %7) #12
  br label %52

46:                                               ; preds = %9
  %47 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 5
  %48 = load ptr, ptr %47, align 16, !tbaa !103
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call fastcc void @mc_weight(ptr noundef %0, i32 noundef %1, ptr noundef %29, i32 noundef %3, ptr noundef nonnull %8, i32 noundef %6, i32 noundef %7) #12
  br label %52

51:                                               ; preds = %46
  tail call fastcc void @mc_copy(ptr noundef %29, i32 noundef %3, ptr noundef %0, i32 noundef %1, i32 noundef %6, i32 noundef %7) #12
  br label %52

52:                                               ; preds = %32, %45, %50, %51
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal ptr @get_ref(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef readonly %8) #0 !PGOFuncName !105 {
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
  %20 = load i8, ptr %19, align 1, !tbaa !74
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !36
  %24 = sext i32 %17 to i64
  %25 = getelementptr inbounds i8, ptr %23, i64 %24
  %26 = icmp eq i32 %10, 3
  %27 = select i1 %26, i32 %3, i32 0
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %25, i64 %28
  %30 = and i32 %13, 5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %9
  %33 = getelementptr inbounds [16 x i8], ptr @hpel_ref1, i64 0, i64 %18
  %34 = load i8, ptr %33, align 1, !tbaa !74
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %2, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !36
  %38 = getelementptr inbounds i8, ptr %37, i64 %24
  %39 = icmp eq i32 %12, 3
  %40 = zext i1 %39 to i64
  %41 = getelementptr inbounds i8, ptr %38, i64 %40
  %42 = load i32, ptr %1, align 4, !tbaa !40
  tail call fastcc void @pixel_avg(ptr noundef %0, i32 noundef %42, ptr noundef %29, i32 noundef %3, ptr noundef %41, i32 noundef %3, i32 noundef %6, i32 noundef %7) #12
  %43 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 5
  %44 = load ptr, ptr %43, align 16, !tbaa !103
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %32
  %47 = load i32, ptr %1, align 4, !tbaa !40
  tail call fastcc void @mc_weight(ptr noundef %0, i32 noundef %47, ptr noundef %0, i32 noundef %47, ptr noundef nonnull %8, i32 noundef %6, i32 noundef %7) #12
  br label %55

48:                                               ; preds = %9
  %49 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 5
  %50 = load ptr, ptr %49, align 16, !tbaa !103
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load i32, ptr %1, align 4, !tbaa !40
  tail call fastcc void @mc_weight(ptr noundef %0, i32 noundef %53, ptr noundef %29, i32 noundef %3, ptr noundef nonnull %8, i32 noundef %6, i32 noundef %7) #12
  br label %55

54:                                               ; preds = %48
  store i32 %3, ptr %1, align 4, !tbaa !40
  br label %55

55:                                               ; preds = %32, %46, %54, %52
  %56 = phi ptr [ %0, %52 ], [ %29, %54 ], [ %0, %46 ], [ %0, %32 ]
  ret ptr %56
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_chroma(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 !PGOFuncName !106 {
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
  br i1 %34, label %30, label %25, !llvm.loop !107

35:                                               ; preds = %25, %35
  %36 = phi i64 [ %41, %35 ], [ 0, %25 ]
  %37 = getelementptr inbounds i8, ptr %28, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !74
  %39 = zext i8 %38 to i32
  %40 = mul nuw nsw i32 %11, %39
  %41 = add nuw nsw i64 %36, 1
  %42 = getelementptr inbounds i8, ptr %28, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !74
  %44 = zext i8 %43 to i32
  %45 = mul nuw nsw i32 %9, %44
  %46 = getelementptr inbounds i8, ptr %29, i64 %36
  %47 = load i8, ptr %46, align 1, !tbaa !74
  %48 = zext i8 %47 to i32
  %49 = mul nuw nsw i32 %11, %48
  %50 = getelementptr inbounds i8, ptr %29, i64 %41
  %51 = load i8, ptr %50, align 1, !tbaa !74
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
  store i8 %61, ptr %62, align 1, !tbaa !74
  %63 = icmp eq i64 %41, %24
  br i1 %63, label %31, label %35, !llvm.loop !108
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_16x16(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #0 !PGOFuncName !109 {
  %8 = icmp eq i32 %6, 32
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call fastcc void @pixel_avg_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 16, i32 noundef 16) #12
  br label %11

10:                                               ; preds = %7
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 16, i32 noundef 16, i32 noundef %6) #12
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_16x8(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #0 !PGOFuncName !110 {
  %8 = icmp eq i32 %6, 32
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call fastcc void @pixel_avg_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 16, i32 noundef 8) #12
  br label %11

10:                                               ; preds = %7
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 16, i32 noundef 8, i32 noundef %6) #12
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_8x16(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #0 !PGOFuncName !111 {
  %8 = icmp eq i32 %6, 32
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call fastcc void @pixel_avg_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 8, i32 noundef 16) #12
  br label %11

10:                                               ; preds = %7
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 8, i32 noundef 16, i32 noundef %6) #12
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_8x8(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #0 !PGOFuncName !112 {
  %8 = icmp eq i32 %6, 32
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call fastcc void @pixel_avg_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 8, i32 noundef 8) #12
  br label %11

10:                                               ; preds = %7
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 8, i32 noundef 8, i32 noundef %6) #12
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_8x4(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #0 !PGOFuncName !113 {
  %8 = icmp eq i32 %6, 32
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call fastcc void @pixel_avg_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 8, i32 noundef 4) #12
  br label %11

10:                                               ; preds = %7
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 8, i32 noundef 4, i32 noundef %6) #12
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_4x8(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #0 !PGOFuncName !114 {
  %8 = icmp eq i32 %6, 32
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call fastcc void @pixel_avg_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 4, i32 noundef 8) #12
  br label %11

10:                                               ; preds = %7
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 4, i32 noundef 8, i32 noundef %6) #12
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_4x4(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #0 !PGOFuncName !115 {
  %8 = icmp eq i32 %6, 32
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call fastcc void @pixel_avg_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 4, i32 noundef 4) #12
  br label %11

10:                                               ; preds = %7
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 4, i32 noundef 4, i32 noundef %6) #12
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_4x2(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #0 !PGOFuncName !116 {
  %8 = icmp eq i32 %6, 32
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call fastcc void @pixel_avg_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 4, i32 noundef 2) #12
  br label %11

10:                                               ; preds = %7
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 4, i32 noundef 2, i32 noundef %6) #12
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_2x4(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #0 !PGOFuncName !117 {
  %8 = icmp eq i32 %6, 32
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call fastcc void @pixel_avg_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 2, i32 noundef 4) #12
  br label %11

10:                                               ; preds = %7
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 2, i32 noundef 4, i32 noundef %6) #12
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @pixel_avg_2x2(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #0 !PGOFuncName !118 {
  %8 = icmp eq i32 %6, 32
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call fastcc void @pixel_avg_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 2, i32 noundef 2) #12
  br label %11

10:                                               ; preds = %7
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 2, i32 noundef 2, i32 noundef %6) #12
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @x264_weight_cache(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 !PGOFuncName !119 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.x264_weight_t, ptr %1, i64 0, i32 5
  store ptr %4, ptr %5, align 16, !tbaa !103
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_copy_w16(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 !PGOFuncName !121 {
  tail call fastcc void @mc_copy(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %1, i32 noundef 16, i32 noundef %4) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_copy_w8(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 !PGOFuncName !122 {
  tail call fastcc void @mc_copy(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %1, i32 noundef 8, i32 noundef %4) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_copy_w4(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 !PGOFuncName !123 {
  tail call fastcc void @mc_copy(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %1, i32 noundef 4, i32 noundef %4) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @hpel_filter(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef %7) #0 !PGOFuncName !124 {
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %8
  %11 = getelementptr i16, ptr %7, i64 2
  %12 = icmp sgt i32 %5, -5
  %13 = shl nsw i32 %4, 1
  %14 = mul nsw i32 %4, 3
  %15 = icmp sgt i32 %5, 0
  %16 = sext i32 %4 to i64
  %17 = sext i32 %13 to i64
  %18 = sext i32 %14 to i64
  %19 = add i32 %5, 2
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 -2)
  %21 = add i32 %20, 1
  %22 = zext nneg i32 %5 to i64
  %23 = zext nneg i32 %5 to i64
  br label %24

24:                                               ; preds = %10, %107
  %25 = phi ptr [ %0, %10 ], [ %108, %107 ]
  %26 = phi i32 [ 0, %10 ], [ %112, %107 ]
  %27 = phi ptr [ %1, %10 ], [ %109, %107 ]
  %28 = phi ptr [ %2, %10 ], [ %110, %107 ]
  %29 = phi ptr [ %3, %10 ], [ %111, %107 ]
  br i1 %12, label %32, label %107

30:                                               ; preds = %107, %8
  ret void

31:                                               ; preds = %32
  br i1 %15, label %74, label %107

32:                                               ; preds = %24, %32
  %33 = phi i64 [ %70, %32 ], [ -2, %24 ]
  %34 = sub nsw i64 %33, %17
  %35 = getelementptr inbounds i8, ptr %29, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !74
  %37 = zext i8 %36 to i32
  %38 = add nsw i64 %33, %18
  %39 = getelementptr inbounds i8, ptr %29, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !74
  %41 = zext i8 %40 to i32
  %42 = add nuw nsw i32 %41, %37
  %43 = sub nsw i64 %33, %16
  %44 = getelementptr inbounds i8, ptr %29, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !74
  %46 = zext i8 %45 to i32
  %47 = add nsw i64 %33, %17
  %48 = getelementptr inbounds i8, ptr %29, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !74
  %50 = zext i8 %49 to i32
  %51 = add nuw nsw i32 %50, %46
  %52 = mul nsw i32 %51, -5
  %53 = add nsw i32 %42, %52
  %54 = getelementptr inbounds i8, ptr %29, i64 %33
  %55 = load i8, ptr %54, align 1, !tbaa !74
  %56 = zext i8 %55 to i32
  %57 = add nsw i64 %33, %16
  %58 = getelementptr inbounds i8, ptr %29, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !74
  %60 = zext i8 %59 to i32
  %61 = add nuw nsw i32 %60, %56
  %62 = mul nuw nsw i32 %61, 20
  %63 = add nsw i32 %53, %62
  %64 = add nsw i32 %63, 16
  %65 = ashr i32 %64, 5
  %66 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %65) #12
  %67 = getelementptr inbounds i8, ptr %27, i64 %33
  store i8 %66, ptr %67, align 1, !tbaa !74
  %68 = trunc i32 %63 to i16
  %69 = getelementptr i16, ptr %11, i64 %33
  store i16 %68, ptr %69, align 2, !tbaa !79
  %70 = add nsw i64 %33, 1
  %71 = trunc i64 %70 to i32
  %72 = icmp eq i32 %21, %71
  br i1 %72, label %31, label %32, !llvm.loop !125

73:                                               ; preds = %74
  br i1 %15, label %114, label %107

74:                                               ; preds = %31, %74
  %75 = phi i64 [ %93, %74 ], [ 0, %31 ]
  %76 = getelementptr i16, ptr %11, i64 %75
  %77 = getelementptr i16, ptr %76, i64 -2
  %78 = load i16, ptr %77, align 2, !tbaa !79
  %79 = sext i16 %78 to i32
  %80 = getelementptr i16, ptr %76, i64 3
  %81 = load i16, ptr %80, align 2, !tbaa !79
  %82 = sext i16 %81 to i32
  %83 = getelementptr i16, ptr %76, i64 -1
  %84 = load i16, ptr %83, align 2, !tbaa !79
  %85 = sext i16 %84 to i32
  %86 = getelementptr i16, ptr %76, i64 2
  %87 = load i16, ptr %86, align 2, !tbaa !79
  %88 = sext i16 %87 to i32
  %89 = add nsw i32 %88, %85
  %90 = mul nsw i32 %89, -5
  %91 = load i16, ptr %76, align 2, !tbaa !79
  %92 = sext i16 %91 to i32
  %93 = add nuw nsw i64 %75, 1
  %94 = getelementptr inbounds i16, ptr %11, i64 %93
  %95 = load i16, ptr %94, align 2, !tbaa !79
  %96 = sext i16 %95 to i32
  %97 = add nsw i32 %96, %92
  %98 = mul nsw i32 %97, 20
  %99 = add nsw i32 %79, 512
  %100 = add nsw i32 %99, %82
  %101 = add nsw i32 %100, %90
  %102 = add nsw i32 %101, %98
  %103 = ashr i32 %102, 10
  %104 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %103) #12
  %105 = getelementptr inbounds i8, ptr %28, i64 %75
  store i8 %104, ptr %105, align 1, !tbaa !74
  %106 = icmp eq i64 %93, %22
  br i1 %106, label %73, label %74, !llvm.loop !126

107:                                              ; preds = %114, %24, %31, %73
  %108 = getelementptr inbounds i8, ptr %25, i64 %16
  %109 = getelementptr inbounds i8, ptr %27, i64 %16
  %110 = getelementptr inbounds i8, ptr %28, i64 %16
  %111 = getelementptr inbounds i8, ptr %29, i64 %16
  %112 = add nuw nsw i32 %26, 1
  %113 = icmp eq i32 %112, %6
  br i1 %113, label %30, label %24, !llvm.loop !127

114:                                              ; preds = %73, %114
  %115 = phi i64 [ %137, %114 ], [ 0, %73 ]
  %116 = add nsw i64 %115, -2
  %117 = getelementptr inbounds i8, ptr %29, i64 %116
  %118 = load i8, ptr %117, align 1, !tbaa !74
  %119 = zext i8 %118 to i32
  %120 = add nuw nsw i64 %115, 3
  %121 = getelementptr inbounds i8, ptr %29, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !74
  %123 = zext i8 %122 to i32
  %124 = add nsw i64 %115, -1
  %125 = getelementptr inbounds i8, ptr %29, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !74
  %127 = zext i8 %126 to i32
  %128 = add nuw nsw i64 %115, 2
  %129 = getelementptr inbounds i8, ptr %29, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !74
  %131 = zext i8 %130 to i32
  %132 = add nuw nsw i32 %131, %127
  %133 = mul nsw i32 %132, -5
  %134 = getelementptr inbounds i8, ptr %29, i64 %115
  %135 = load i8, ptr %134, align 1, !tbaa !74
  %136 = zext i8 %135 to i32
  %137 = add nuw nsw i64 %115, 1
  %138 = getelementptr inbounds i8, ptr %29, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !74
  %140 = zext i8 %139 to i32
  %141 = add nuw nsw i32 %140, %136
  %142 = mul nuw nsw i32 %141, 20
  %143 = add nuw nsw i32 %119, 16
  %144 = add nuw nsw i32 %143, %123
  %145 = add nsw i32 %144, %133
  %146 = add nsw i32 %145, %142
  %147 = ashr i32 %146, 5
  %148 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %147) #12
  %149 = getelementptr inbounds i8, ptr %25, i64 %115
  store i8 %148, ptr %149, align 1, !tbaa !74
  %150 = icmp eq i64 %137, %23
  br i1 %150, label %107, label %114, !llvm.loop !128
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @prefetch_fenc_null(ptr nocapture readnone %0, i32 %1, ptr nocapture readnone %2, i32 %3, i32 %4) #7 !PGOFuncName !129 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @prefetch_ref_null(ptr nocapture readnone %0, i32 %1, i32 %2) #7 !PGOFuncName !130 {
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @memcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @memzero_aligned(ptr nocapture noundef writeonly %0, i32 noundef %1) #5 !PGOFuncName !131 {
  %3 = sext i32 %1 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %3, i1 false)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @frame_init_lowres_core(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 !PGOFuncName !132 {
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
  br i1 %35, label %18, label %19, !llvm.loop !133

36:                                               ; preds = %19, %36
  %37 = phi i64 [ %126, %36 ], [ 0, %19 ]
  %38 = shl nuw nsw i64 %37, 1
  %39 = getelementptr inbounds i8, ptr %20, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !74
  %41 = zext i8 %40 to i16
  %42 = getelementptr inbounds i8, ptr %26, i64 %38
  %43 = load i8, ptr %42, align 1, !tbaa !74
  %44 = zext i8 %43 to i16
  %45 = add nuw nsw i16 %41, 1
  %46 = add nuw nsw i16 %45, %44
  %47 = lshr i16 %46, 1
  %48 = or disjoint i64 %38, 1
  %49 = getelementptr inbounds i8, ptr %20, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !74
  %51 = zext i8 %50 to i16
  %52 = getelementptr inbounds i8, ptr %26, i64 %48
  %53 = load i8, ptr %52, align 1, !tbaa !74
  %54 = zext i8 %53 to i16
  %55 = add nuw nsw i16 %51, 1
  %56 = add nuw nsw i16 %55, %54
  %57 = lshr i16 %56, 1
  %58 = add nuw nsw i16 %47, 1
  %59 = add nuw nsw i16 %58, %57
  %60 = lshr i16 %59, 1
  %61 = trunc i16 %60 to i8
  %62 = getelementptr inbounds i8, ptr %21, i64 %37
  store i8 %61, ptr %62, align 1, !tbaa !74
  %63 = load i8, ptr %49, align 1, !tbaa !74
  %64 = zext i8 %63 to i16
  %65 = load i8, ptr %52, align 1, !tbaa !74
  %66 = zext i8 %65 to i16
  %67 = add nuw nsw i16 %64, 1
  %68 = add nuw nsw i16 %67, %66
  %69 = lshr i16 %68, 1
  %70 = add nuw nsw i64 %38, 2
  %71 = getelementptr inbounds i8, ptr %20, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !74
  %73 = zext i8 %72 to i16
  %74 = getelementptr inbounds i8, ptr %26, i64 %70
  %75 = load i8, ptr %74, align 1, !tbaa !74
  %76 = zext i8 %75 to i16
  %77 = add nuw nsw i16 %73, 1
  %78 = add nuw nsw i16 %77, %76
  %79 = lshr i16 %78, 1
  %80 = add nuw nsw i16 %69, 1
  %81 = add nuw nsw i16 %80, %79
  %82 = lshr i16 %81, 1
  %83 = trunc i16 %82 to i8
  %84 = getelementptr inbounds i8, ptr %23, i64 %37
  store i8 %83, ptr %84, align 1, !tbaa !74
  %85 = load i8, ptr %42, align 1, !tbaa !74
  %86 = zext i8 %85 to i16
  %87 = getelementptr inbounds i8, ptr %27, i64 %38
  %88 = load i8, ptr %87, align 1, !tbaa !74
  %89 = zext i8 %88 to i16
  %90 = add nuw nsw i16 %86, 1
  %91 = add nuw nsw i16 %90, %89
  %92 = lshr i16 %91, 1
  %93 = load i8, ptr %52, align 1, !tbaa !74
  %94 = zext i8 %93 to i16
  %95 = getelementptr inbounds i8, ptr %27, i64 %48
  %96 = load i8, ptr %95, align 1, !tbaa !74
  %97 = zext i8 %96 to i16
  %98 = add nuw nsw i16 %94, 1
  %99 = add nuw nsw i16 %98, %97
  %100 = lshr i16 %99, 1
  %101 = add nuw nsw i16 %92, 1
  %102 = add nuw nsw i16 %101, %100
  %103 = lshr i16 %102, 1
  %104 = trunc i16 %103 to i8
  %105 = getelementptr inbounds i8, ptr %24, i64 %37
  store i8 %104, ptr %105, align 1, !tbaa !74
  %106 = load i8, ptr %52, align 1, !tbaa !74
  %107 = zext i8 %106 to i16
  %108 = load i8, ptr %95, align 1, !tbaa !74
  %109 = zext i8 %108 to i16
  %110 = add nuw nsw i16 %107, 1
  %111 = add nuw nsw i16 %110, %109
  %112 = lshr i16 %111, 1
  %113 = load i8, ptr %74, align 1, !tbaa !74
  %114 = zext i8 %113 to i16
  %115 = getelementptr inbounds i8, ptr %27, i64 %70
  %116 = load i8, ptr %115, align 1, !tbaa !74
  %117 = zext i8 %116 to i16
  %118 = add nuw nsw i16 %114, 1
  %119 = add nuw nsw i16 %118, %117
  %120 = lshr i16 %119, 1
  %121 = add nuw nsw i16 %112, 1
  %122 = add nuw nsw i16 %121, %120
  %123 = lshr i16 %122, 1
  %124 = trunc i16 %123 to i8
  %125 = getelementptr inbounds i8, ptr %25, i64 %37
  store i8 %124, ptr %125, align 1, !tbaa !74
  %126 = add nuw nsw i64 %37, 1
  %127 = icmp eq i64 %126, %17
  br i1 %127, label %28, label %36, !llvm.loop !134
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @integral_init4h(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #9 !PGOFuncName !135 {
  %4 = icmp sgt i32 %2, 4
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = add nsw i32 %2, -4
  %7 = load <4 x i8>, ptr %1, align 1, !tbaa !74
  %8 = zext <4 x i8> %7 to <4 x i16>
  %9 = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %8)
  %10 = zext nneg i32 %2 to i64
  %11 = zext nneg i32 %6 to i64
  br label %13

12:                                               ; preds = %13, %3
  ret void

13:                                               ; preds = %5, %13
  %14 = phi i64 [ 0, %5 ], [ %29, %13 ]
  %15 = phi i16 [ %9, %5 ], [ %28, %13 ]
  %16 = sub nsw i64 %14, %10
  %17 = getelementptr inbounds i16, ptr %0, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !79
  %19 = add i16 %18, %15
  %20 = getelementptr inbounds i16, ptr %0, i64 %14
  store i16 %19, ptr %20, align 2, !tbaa !79
  %21 = getelementptr i8, ptr %1, i64 %14
  %22 = getelementptr i8, ptr %21, i64 4
  %23 = load i8, ptr %22, align 1, !tbaa !74
  %24 = zext i8 %23 to i16
  %25 = load i8, ptr %21, align 1, !tbaa !74
  %26 = zext i8 %25 to i16
  %27 = add i16 %15, %24
  %28 = sub i16 %27, %26
  %29 = add nuw nsw i64 %14, 1
  %30 = icmp eq i64 %29, %11
  br i1 %30, label %12, label %13, !llvm.loop !136
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @integral_init8h(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #9 !PGOFuncName !137 {
  %4 = icmp sgt i32 %2, 8
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = add nsw i32 %2, -8
  %7 = load <8 x i8>, ptr %1, align 1, !tbaa !74
  %8 = zext <8 x i8> %7 to <8 x i16>
  %9 = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %8)
  %10 = zext nneg i32 %2 to i64
  %11 = zext nneg i32 %6 to i64
  br label %13

12:                                               ; preds = %13, %3
  ret void

13:                                               ; preds = %5, %13
  %14 = phi i64 [ 0, %5 ], [ %29, %13 ]
  %15 = phi i16 [ %9, %5 ], [ %28, %13 ]
  %16 = sub nsw i64 %14, %10
  %17 = getelementptr inbounds i16, ptr %0, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !79
  %19 = add i16 %18, %15
  %20 = getelementptr inbounds i16, ptr %0, i64 %14
  store i16 %19, ptr %20, align 2, !tbaa !79
  %21 = getelementptr i8, ptr %1, i64 %14
  %22 = getelementptr i8, ptr %21, i64 8
  %23 = load i8, ptr %22, align 1, !tbaa !74
  %24 = zext i8 %23 to i16
  %25 = load i8, ptr %21, align 1, !tbaa !74
  %26 = zext i8 %25 to i16
  %27 = add i16 %15, %24
  %28 = sub i16 %27, %26
  %29 = add nuw nsw i64 %14, 1
  %30 = icmp eq i64 %29, %11
  br i1 %30, label %12, label %13, !llvm.loop !138
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @integral_init4v(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #9 !PGOFuncName !139 {
  %4 = add i32 %2, -8
  %5 = icmp sgt i32 %2, 8
  br i1 %5, label %6, label %27

6:                                                ; preds = %3
  %7 = shl nsw i32 %2, 2
  %8 = zext nneg i32 %7 to i64
  %9 = zext nneg i32 %4 to i64
  %10 = getelementptr i16, ptr %0, i64 %8
  br label %17

11:                                               ; preds = %17
  br i1 %5, label %12, label %27

12:                                               ; preds = %11
  %13 = shl nsw i32 %2, 3
  %14 = zext nneg i32 %13 to i64
  %15 = zext nneg i32 %4 to i64
  %16 = getelementptr i16, ptr %0, i64 %14
  br label %28

17:                                               ; preds = %6, %17
  %18 = phi i64 [ 0, %6 ], [ %25, %17 ]
  %19 = getelementptr i16, ptr %10, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !79
  %21 = getelementptr inbounds i16, ptr %0, i64 %18
  %22 = load i16, ptr %21, align 2, !tbaa !79
  %23 = sub i16 %20, %22
  %24 = getelementptr inbounds i16, ptr %1, i64 %18
  store i16 %23, ptr %24, align 2, !tbaa !79
  %25 = add nuw nsw i64 %18, 1
  %26 = icmp eq i64 %25, %9
  br i1 %26, label %11, label %17, !llvm.loop !140

27:                                               ; preds = %28, %3, %11
  ret void

28:                                               ; preds = %12, %28
  %29 = phi i64 [ 0, %12 ], [ %41, %28 ]
  %30 = getelementptr i16, ptr %16, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !79
  %32 = getelementptr i16, ptr %30, i64 4
  %33 = load i16, ptr %32, align 2, !tbaa !79
  %34 = getelementptr inbounds i16, ptr %0, i64 %29
  %35 = load i16, ptr %34, align 2, !tbaa !79
  %36 = getelementptr i16, ptr %34, i64 4
  %37 = load i16, ptr %36, align 2, !tbaa !79
  %38 = add i16 %33, %31
  %39 = add i16 %35, %37
  %40 = sub i16 %38, %39
  store i16 %40, ptr %34, align 2, !tbaa !79
  %41 = add nuw nsw i64 %29, 1
  %42 = icmp eq i64 %41, %15
  br i1 %42, label %27, label %28, !llvm.loop !141
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @integral_init8v(ptr nocapture noundef %0, i32 noundef %1) #9 !PGOFuncName !142 {
  %3 = icmp sgt i32 %1, 8
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = add nsw i32 %1, -8
  %6 = shl nsw i32 %1, 3
  %7 = zext nneg i32 %6 to i64
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr i16, ptr %0, i64 %7
  br label %11

10:                                               ; preds = %11, %2
  ret void

11:                                               ; preds = %4, %11
  %12 = phi i64 [ 0, %4 ], [ %18, %11 ]
  %13 = getelementptr i16, ptr %9, i64 %12
  %14 = load i16, ptr %13, align 2, !tbaa !79
  %15 = getelementptr inbounds i16, ptr %0, i64 %12
  %16 = load i16, ptr %15, align 2, !tbaa !79
  %17 = sub i16 %14, %16
  store i16 %17, ptr %15, align 2, !tbaa !79
  %18 = add nuw nsw i64 %12, 1
  %19 = icmp eq i64 %18, %8
  br i1 %19, label %10, label %11, !llvm.loop !143
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @mbtree_propagate_cost(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5) #9 !PGOFuncName !144 {
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
  %14 = load i16, ptr %13, align 2, !tbaa !79
  %15 = zext i16 %14 to i32
  %16 = getelementptr inbounds i16, ptr %2, i64 %12
  %17 = load i16, ptr %16, align 2, !tbaa !79
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds i16, ptr %4, i64 %12
  %20 = load i16, ptr %19, align 2, !tbaa !79
  %21 = zext i16 %20 to i32
  %22 = mul nuw nsw i32 %21, %18
  %23 = add nuw nsw i32 %22, 128
  %24 = lshr i32 %23, 8
  %25 = add nuw nsw i32 %24, %15
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds i16, ptr %3, i64 %12
  %28 = load i16, ptr %27, align 2, !tbaa !79
  %29 = and i16 %28, 16383
  %30 = zext nneg i16 %29 to i32
  %31 = sub nsw i32 %18, %30
  %32 = sext i32 %31 to i64
  %33 = mul nsw i64 %26, %32
  %34 = zext i16 %17 to i64
  %35 = sdiv i64 %33, %34
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds i32, ptr %0, i64 %12
  store i32 %36, ptr %37, align 4, !tbaa !40
  %38 = add nuw nsw i64 %12, 1
  %39 = icmp eq i64 %38, %9
  br i1 %39, label %10, label %11, !llvm.loop !145
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_frame_filter(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !146
  %7 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 24
  %8 = load i32, ptr %7, align 8, !tbaa !40
  %9 = shl i32 %8, %6
  %10 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 25
  %11 = load i32, ptr %10, align 4, !tbaa !40
  %12 = shl nsw i32 %2, 4
  %13 = ashr i32 %12, %6
  %14 = add nsw i32 %13, -8
  %15 = icmp eq i32 %3, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 26
  %18 = load i32, ptr %17, align 16, !tbaa !40
  %19 = ashr i32 %18, %6
  br label %20

20:                                               ; preds = %4, %16
  %21 = phi i32 [ %13, %4 ], [ %19, %16 ]
  %22 = add nsw i32 %21, 8
  %23 = and i32 %6, %2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %120

25:                                               ; preds = %20
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
  %40 = load ptr, ptr %39, align 16, !tbaa !147
  %41 = icmp eq ptr %40, null
  br i1 %41, label %120, label %60

42:                                               ; preds = %27, %42
  %43 = phi i32 [ 0, %27 ], [ %56, %42 ]
  %44 = phi i32 [ %29, %27 ], [ %58, %42 ]
  %45 = load ptr, ptr %30, align 8, !tbaa !148
  %46 = load ptr, ptr %31, align 8, !tbaa !36
  %47 = sext i32 %44 to i64
  %48 = getelementptr inbounds i8, ptr %46, i64 %47
  %49 = load ptr, ptr %32, align 16, !tbaa !36
  %50 = getelementptr inbounds i8, ptr %49, i64 %47
  %51 = load ptr, ptr %33, align 8, !tbaa !36
  %52 = getelementptr inbounds i8, ptr %51, i64 %47
  %53 = load ptr, ptr %34, align 8, !tbaa !36
  %54 = getelementptr inbounds i8, ptr %53, i64 %47
  %55 = load ptr, ptr %37, align 8, !tbaa !149
  tail call void %45(ptr noundef %48, ptr noundef %50, ptr noundef %52, ptr noundef %54, i32 noundef %9, i32 noundef %35, i32 noundef %36, ptr noundef %55) #11
  %56 = add nuw i32 %43, 1
  %57 = load i32, ptr %7, align 8, !tbaa !40
  %58 = add nsw i32 %57, %44
  %59 = icmp eq i32 %43, %6
  br i1 %59, label %38, label %42, !llvm.loop !150

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
  br i1 %74, label %75, label %120

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
  %86 = sext i32 %71 to i64
  %87 = sext i32 %9 to i64
  br label %88

88:                                               ; preds = %75, %117
  %89 = phi i64 [ %86, %75 ], [ %95, %117 ]
  %90 = load ptr, ptr %76, align 8, !tbaa !36
  %91 = mul nsw i64 %89, %87
  %92 = getelementptr inbounds i8, ptr %90, i64 %91
  %93 = getelementptr inbounds i8, ptr %92, i64 -32
  %94 = load ptr, ptr %39, align 16, !tbaa !147
  %95 = add nsw i64 %89, 1
  %96 = mul nsw i64 %95, %87
  %97 = getelementptr inbounds i16, ptr %94, i64 %96
  %98 = getelementptr inbounds i16, ptr %97, i64 -32
  %99 = load i32, ptr %77, align 4, !tbaa !151
  %100 = icmp eq i32 %99, 0
  %101 = icmp sgt i64 %89, -25
  br i1 %100, label %112, label %102

102:                                              ; preds = %88
  %103 = load ptr, ptr %78, align 8, !tbaa !152
  tail call void %103(ptr noundef nonnull %98, ptr noundef nonnull %93, i32 noundef %9) #11
  br i1 %101, label %104, label %117

104:                                              ; preds = %102
  %105 = getelementptr inbounds i16, ptr %98, i64 %81
  %106 = load i32, ptr %82, align 16, !tbaa !40
  %107 = add nsw i32 %106, 64
  %108 = mul nsw i32 %107, %9
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i16, ptr %105, i64 %109
  %111 = load ptr, ptr %83, align 8, !tbaa !153
  tail call void %111(ptr noundef nonnull %105, ptr noundef nonnull %110, i32 noundef %9) #11
  br label %117

112:                                              ; preds = %88
  %113 = load ptr, ptr %84, align 8, !tbaa !154
  tail call void %113(ptr noundef nonnull %98, ptr noundef nonnull %93, i32 noundef %9) #11
  br i1 %101, label %114, label %117

114:                                              ; preds = %112
  %115 = load ptr, ptr %85, align 8, !tbaa !155
  %116 = getelementptr inbounds i16, ptr %98, i64 %81
  tail call void %115(ptr noundef nonnull %116, i32 noundef %9) #11
  br label %117

117:                                              ; preds = %112, %114, %102, %104
  %118 = trunc i64 %95 to i32
  %119 = icmp eq i32 %73, %118
  br i1 %119, label %120, label %88, !llvm.loop !156

120:                                              ; preds = %117, %70, %38, %20
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @pixel_avg(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 !PGOFuncName !157 {
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %8
  %11 = icmp sgt i32 %6, 0
  %12 = sext i32 %1 to i64
  %13 = sext i32 %3 to i64
  %14 = sext i32 %5 to i64
  %15 = zext nneg i32 %6 to i64
  br label %16

16:                                               ; preds = %10, %22
  %17 = phi i32 [ 0, %10 ], [ %26, %22 ]
  %18 = phi ptr [ %0, %10 ], [ %23, %22 ]
  %19 = phi ptr [ %2, %10 ], [ %24, %22 ]
  %20 = phi ptr [ %4, %10 ], [ %25, %22 ]
  br i1 %11, label %28, label %22

21:                                               ; preds = %22, %8
  ret void

22:                                               ; preds = %28, %16
  %23 = getelementptr inbounds i8, ptr %18, i64 %12
  %24 = getelementptr inbounds i8, ptr %19, i64 %13
  %25 = getelementptr inbounds i8, ptr %20, i64 %14
  %26 = add nuw nsw i32 %17, 1
  %27 = icmp eq i32 %26, %7
  br i1 %27, label %21, label %16, !llvm.loop !158

28:                                               ; preds = %16, %28
  %29 = phi i64 [ %41, %28 ], [ 0, %16 ]
  %30 = getelementptr inbounds i8, ptr %19, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !74
  %32 = zext i8 %31 to i16
  %33 = getelementptr inbounds i8, ptr %20, i64 %29
  %34 = load i8, ptr %33, align 1, !tbaa !74
  %35 = zext i8 %34 to i16
  %36 = add nuw nsw i16 %32, 1
  %37 = add nuw nsw i16 %36, %35
  %38 = lshr i16 %37, 1
  %39 = trunc i16 %38 to i8
  %40 = getelementptr inbounds i8, ptr %18, i64 %29
  store i8 %39, ptr %40, align 1, !tbaa !74
  %41 = add nuw nsw i64 %29, 1
  %42 = icmp eq i64 %41, %15
  br i1 %42, label %22, label %28, !llvm.loop !159
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @mc_weight(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 !PGOFuncName !160 {
  %8 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 2
  %9 = load i32, ptr %8, align 16, !tbaa !161
  %10 = icmp sgt i32 %9, 0
  %11 = icmp sgt i32 %6, 0
  br i1 %10, label %20, label %12

12:                                               ; preds = %7
  br i1 %11, label %13, label %77

13:                                               ; preds = %12
  %14 = icmp sgt i32 %5, 0
  %15 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 3
  %16 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 4
  %17 = sext i32 %1 to i64
  %18 = sext i32 %3 to i64
  %19 = zext nneg i32 %5 to i64
  br label %55

20:                                               ; preds = %7
  br i1 %11, label %21, label %77

21:                                               ; preds = %20
  %22 = icmp sgt i32 %5, 0
  %23 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 3
  %24 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 4
  %25 = sext i32 %1 to i64
  %26 = sext i32 %3 to i64
  %27 = zext nneg i32 %5 to i64
  br label %28

28:                                               ; preds = %21, %32
  %29 = phi i32 [ 0, %21 ], [ %33, %32 ]
  %30 = phi ptr [ %0, %21 ], [ %34, %32 ]
  %31 = phi ptr [ %2, %21 ], [ %35, %32 ]
  br i1 %22, label %37, label %32

32:                                               ; preds = %37, %28
  %33 = add nuw nsw i32 %29, 1
  %34 = getelementptr inbounds i8, ptr %30, i64 %25
  %35 = getelementptr inbounds i8, ptr %31, i64 %26
  %36 = icmp eq i32 %33, %6
  br i1 %36, label %77, label %28, !llvm.loop !162

37:                                               ; preds = %28, %37
  %38 = phi i64 [ %53, %37 ], [ 0, %28 ]
  %39 = getelementptr inbounds i8, ptr %31, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !74
  %41 = zext i8 %40 to i32
  %42 = load i32, ptr %23, align 4, !tbaa !163
  %43 = mul nsw i32 %42, %41
  %44 = load i32, ptr %8, align 16, !tbaa !161
  %45 = add nsw i32 %44, -1
  %46 = shl nuw i32 1, %45
  %47 = add nsw i32 %46, %43
  %48 = ashr i32 %47, %44
  %49 = load i32, ptr %24, align 8, !tbaa !164
  %50 = add nsw i32 %48, %49
  %51 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %50) #12
  %52 = getelementptr inbounds i8, ptr %30, i64 %38
  store i8 %51, ptr %52, align 1, !tbaa !74
  %53 = add nuw nsw i64 %38, 1
  %54 = icmp eq i64 %53, %27
  br i1 %54, label %32, label %37, !llvm.loop !165

55:                                               ; preds = %13, %59
  %56 = phi i32 [ 0, %13 ], [ %60, %59 ]
  %57 = phi ptr [ %0, %13 ], [ %61, %59 ]
  %58 = phi ptr [ %2, %13 ], [ %62, %59 ]
  br i1 %14, label %64, label %59

59:                                               ; preds = %64, %55
  %60 = add nuw nsw i32 %56, 1
  %61 = getelementptr inbounds i8, ptr %57, i64 %17
  %62 = getelementptr inbounds i8, ptr %58, i64 %18
  %63 = icmp eq i32 %60, %6
  br i1 %63, label %77, label %55, !llvm.loop !166

64:                                               ; preds = %55, %64
  %65 = phi i64 [ %75, %64 ], [ 0, %55 ]
  %66 = getelementptr inbounds i8, ptr %58, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !74
  %68 = zext i8 %67 to i32
  %69 = load i32, ptr %15, align 4, !tbaa !163
  %70 = mul nsw i32 %69, %68
  %71 = load i32, ptr %16, align 8, !tbaa !164
  %72 = add nsw i32 %70, %71
  %73 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %72) #12
  %74 = getelementptr inbounds i8, ptr %57, i64 %65
  store i8 %73, ptr %74, align 1, !tbaa !74
  %75 = add nuw nsw i64 %65, 1
  %76 = icmp eq i64 %75, %19
  br i1 %76, label %59, label %64, !llvm.loop !167

77:                                               ; preds = %59, %32, %12, %20
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @mc_copy(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !168 {
  %7 = icmp sgt i32 %5, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = sext i32 %4 to i64
  %10 = sext i32 %1 to i64
  %11 = sext i32 %3 to i64
  br label %13

12:                                               ; preds = %13, %6
  ret void

13:                                               ; preds = %8, %13
  %14 = phi i32 [ 0, %8 ], [ %19, %13 ]
  %15 = phi ptr [ %0, %8 ], [ %17, %13 ]
  %16 = phi ptr [ %2, %8 ], [ %18, %13 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %15, i64 %9, i1 false)
  %17 = getelementptr inbounds i8, ptr %15, i64 %10
  %18 = getelementptr inbounds i8, ptr %16, i64 %11
  %19 = add nuw nsw i32 %14, 1
  %20 = icmp eq i32 %19, %5
  br i1 %20, label %12, label %13, !llvm.loop !169
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @x264_clip_uint8(i32 noundef %0) unnamed_addr #7 !PGOFuncName !170 {
  %2 = icmp ult i32 %0, 256
  %3 = icmp sgt i32 %0, 0
  %4 = sext i1 %3 to i32
  %5 = select i1 %2, i32 %0, i32 %4
  %6 = trunc i32 %5 to i8
  ret i8 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @pixel_avg_wxh(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 !PGOFuncName !171 {
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %8
  %11 = icmp sgt i32 %6, 0
  %12 = sext i32 %3 to i64
  %13 = sext i32 %5 to i64
  %14 = sext i32 %1 to i64
  %15 = zext nneg i32 %6 to i64
  br label %16

16:                                               ; preds = %10, %22
  %17 = phi i32 [ 0, %10 ], [ %26, %22 ]
  %18 = phi ptr [ %0, %10 ], [ %25, %22 ]
  %19 = phi ptr [ %2, %10 ], [ %23, %22 ]
  %20 = phi ptr [ %4, %10 ], [ %24, %22 ]
  br i1 %11, label %28, label %22

21:                                               ; preds = %22, %8
  ret void

22:                                               ; preds = %28, %16
  %23 = getelementptr inbounds i8, ptr %19, i64 %12
  %24 = getelementptr inbounds i8, ptr %20, i64 %13
  %25 = getelementptr inbounds i8, ptr %18, i64 %14
  %26 = add nuw nsw i32 %17, 1
  %27 = icmp eq i32 %26, %7
  br i1 %27, label %21, label %16, !llvm.loop !172

28:                                               ; preds = %16, %28
  %29 = phi i64 [ %41, %28 ], [ 0, %16 ]
  %30 = getelementptr inbounds i8, ptr %19, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !74
  %32 = zext i8 %31 to i16
  %33 = getelementptr inbounds i8, ptr %20, i64 %29
  %34 = load i8, ptr %33, align 1, !tbaa !74
  %35 = zext i8 %34 to i16
  %36 = add nuw nsw i16 %32, 1
  %37 = add nuw nsw i16 %36, %35
  %38 = lshr i16 %37, 1
  %39 = trunc i16 %38 to i8
  %40 = getelementptr inbounds i8, ptr %18, i64 %29
  store i8 %39, ptr %40, align 1, !tbaa !74
  %41 = add nuw nsw i64 %29, 1
  %42 = icmp eq i64 %41, %15
  br i1 %42, label %22, label %28, !llvm.loop !173
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @pixel_avg_weight_wxh(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 !PGOFuncName !174 {
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

19:                                               ; preds = %233, %9
  ret void

20:                                               ; preds = %12, %233
  %21 = phi i32 [ 0, %12 ], [ %234, %233 ]
  %22 = phi ptr [ %0, %12 ], [ %235, %233 ]
  %23 = phi ptr [ %2, %12 ], [ %236, %233 ]
  %24 = phi ptr [ %4, %12 ], [ %237, %233 ]
  %25 = load i8, ptr %23, align 1, !tbaa !74
  %26 = zext i8 %25 to i32
  %27 = mul nsw i32 %26, %8
  %28 = load i8, ptr %24, align 1, !tbaa !74
  %29 = zext i8 %28 to i32
  %30 = mul nsw i32 %10, %29
  %31 = add i32 %27, 32
  %32 = add i32 %31, %30
  %33 = ashr i32 %32, 6
  %34 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %33) #12
  store i8 %34, ptr %22, align 1, !tbaa !74
  %35 = getelementptr inbounds i8, ptr %23, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !74
  %37 = zext i8 %36 to i32
  %38 = mul nsw i32 %37, %8
  %39 = getelementptr inbounds i8, ptr %24, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !74
  %41 = zext i8 %40 to i32
  %42 = mul nsw i32 %10, %41
  %43 = add i32 %38, 32
  %44 = add i32 %43, %42
  %45 = ashr i32 %44, 6
  %46 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %45) #12
  %47 = getelementptr inbounds i8, ptr %22, i64 1
  store i8 %46, ptr %47, align 1, !tbaa !74
  br i1 %13, label %233, label %48

48:                                               ; preds = %20
  %49 = getelementptr inbounds i8, ptr %23, i64 2
  %50 = load i8, ptr %49, align 1, !tbaa !74
  %51 = zext i8 %50 to i32
  %52 = mul nsw i32 %51, %8
  %53 = getelementptr inbounds i8, ptr %24, i64 2
  %54 = load i8, ptr %53, align 1, !tbaa !74
  %55 = zext i8 %54 to i32
  %56 = mul nsw i32 %10, %55
  %57 = add i32 %52, 32
  %58 = add i32 %57, %56
  %59 = ashr i32 %58, 6
  %60 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %59) #12
  %61 = getelementptr inbounds i8, ptr %22, i64 2
  store i8 %60, ptr %61, align 1, !tbaa !74
  %62 = getelementptr inbounds i8, ptr %23, i64 3
  %63 = load i8, ptr %62, align 1, !tbaa !74
  %64 = zext i8 %63 to i32
  %65 = mul nsw i32 %64, %8
  %66 = getelementptr inbounds i8, ptr %24, i64 3
  %67 = load i8, ptr %66, align 1, !tbaa !74
  %68 = zext i8 %67 to i32
  %69 = mul nsw i32 %10, %68
  %70 = add i32 %65, 32
  %71 = add i32 %70, %69
  %72 = ashr i32 %71, 6
  %73 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %72) #12
  %74 = getelementptr inbounds i8, ptr %22, i64 3
  store i8 %73, ptr %74, align 1, !tbaa !74
  br i1 %14, label %233, label %75

75:                                               ; preds = %48
  %76 = getelementptr inbounds i8, ptr %23, i64 4
  %77 = load i8, ptr %76, align 1, !tbaa !74
  %78 = zext i8 %77 to i32
  %79 = mul nsw i32 %78, %8
  %80 = getelementptr inbounds i8, ptr %24, i64 4
  %81 = load i8, ptr %80, align 1, !tbaa !74
  %82 = zext i8 %81 to i32
  %83 = mul nsw i32 %10, %82
  %84 = add i32 %79, 32
  %85 = add i32 %84, %83
  %86 = ashr i32 %85, 6
  %87 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %86) #12
  %88 = getelementptr inbounds i8, ptr %22, i64 4
  store i8 %87, ptr %88, align 1, !tbaa !74
  %89 = getelementptr inbounds i8, ptr %23, i64 5
  %90 = load i8, ptr %89, align 1, !tbaa !74
  %91 = zext i8 %90 to i32
  %92 = mul nsw i32 %91, %8
  %93 = getelementptr inbounds i8, ptr %24, i64 5
  %94 = load i8, ptr %93, align 1, !tbaa !74
  %95 = zext i8 %94 to i32
  %96 = mul nsw i32 %10, %95
  %97 = add i32 %92, 32
  %98 = add i32 %97, %96
  %99 = ashr i32 %98, 6
  %100 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %99) #12
  %101 = getelementptr inbounds i8, ptr %22, i64 5
  store i8 %100, ptr %101, align 1, !tbaa !74
  %102 = getelementptr inbounds i8, ptr %23, i64 6
  %103 = load i8, ptr %102, align 1, !tbaa !74
  %104 = zext i8 %103 to i32
  %105 = mul nsw i32 %104, %8
  %106 = getelementptr inbounds i8, ptr %24, i64 6
  %107 = load i8, ptr %106, align 1, !tbaa !74
  %108 = zext i8 %107 to i32
  %109 = mul nsw i32 %10, %108
  %110 = add i32 %105, 32
  %111 = add i32 %110, %109
  %112 = ashr i32 %111, 6
  %113 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %112) #12
  %114 = getelementptr inbounds i8, ptr %22, i64 6
  store i8 %113, ptr %114, align 1, !tbaa !74
  %115 = getelementptr inbounds i8, ptr %23, i64 7
  %116 = load i8, ptr %115, align 1, !tbaa !74
  %117 = zext i8 %116 to i32
  %118 = mul nsw i32 %117, %8
  %119 = getelementptr inbounds i8, ptr %24, i64 7
  %120 = load i8, ptr %119, align 1, !tbaa !74
  %121 = zext i8 %120 to i32
  %122 = mul nsw i32 %10, %121
  %123 = add i32 %118, 32
  %124 = add i32 %123, %122
  %125 = ashr i32 %124, 6
  %126 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %125) #12
  %127 = getelementptr inbounds i8, ptr %22, i64 7
  store i8 %126, ptr %127, align 1, !tbaa !74
  br i1 %15, label %233, label %128

128:                                              ; preds = %75
  %129 = getelementptr inbounds i8, ptr %23, i64 8
  %130 = load i8, ptr %129, align 1, !tbaa !74
  %131 = zext i8 %130 to i32
  %132 = mul nsw i32 %131, %8
  %133 = getelementptr inbounds i8, ptr %24, i64 8
  %134 = load i8, ptr %133, align 1, !tbaa !74
  %135 = zext i8 %134 to i32
  %136 = mul nsw i32 %10, %135
  %137 = add i32 %132, 32
  %138 = add i32 %137, %136
  %139 = ashr i32 %138, 6
  %140 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %139) #12
  %141 = getelementptr inbounds i8, ptr %22, i64 8
  store i8 %140, ptr %141, align 1, !tbaa !74
  %142 = getelementptr inbounds i8, ptr %23, i64 9
  %143 = load i8, ptr %142, align 1, !tbaa !74
  %144 = zext i8 %143 to i32
  %145 = mul nsw i32 %144, %8
  %146 = getelementptr inbounds i8, ptr %24, i64 9
  %147 = load i8, ptr %146, align 1, !tbaa !74
  %148 = zext i8 %147 to i32
  %149 = mul nsw i32 %10, %148
  %150 = add i32 %145, 32
  %151 = add i32 %150, %149
  %152 = ashr i32 %151, 6
  %153 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %152) #12
  %154 = getelementptr inbounds i8, ptr %22, i64 9
  store i8 %153, ptr %154, align 1, !tbaa !74
  %155 = getelementptr inbounds i8, ptr %23, i64 10
  %156 = load i8, ptr %155, align 1, !tbaa !74
  %157 = zext i8 %156 to i32
  %158 = mul nsw i32 %157, %8
  %159 = getelementptr inbounds i8, ptr %24, i64 10
  %160 = load i8, ptr %159, align 1, !tbaa !74
  %161 = zext i8 %160 to i32
  %162 = mul nsw i32 %10, %161
  %163 = add i32 %158, 32
  %164 = add i32 %163, %162
  %165 = ashr i32 %164, 6
  %166 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %165) #12
  %167 = getelementptr inbounds i8, ptr %22, i64 10
  store i8 %166, ptr %167, align 1, !tbaa !74
  %168 = getelementptr inbounds i8, ptr %23, i64 11
  %169 = load i8, ptr %168, align 1, !tbaa !74
  %170 = zext i8 %169 to i32
  %171 = mul nsw i32 %170, %8
  %172 = getelementptr inbounds i8, ptr %24, i64 11
  %173 = load i8, ptr %172, align 1, !tbaa !74
  %174 = zext i8 %173 to i32
  %175 = mul nsw i32 %10, %174
  %176 = add i32 %171, 32
  %177 = add i32 %176, %175
  %178 = ashr i32 %177, 6
  %179 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %178) #12
  %180 = getelementptr inbounds i8, ptr %22, i64 11
  store i8 %179, ptr %180, align 1, !tbaa !74
  %181 = getelementptr inbounds i8, ptr %23, i64 12
  %182 = load i8, ptr %181, align 1, !tbaa !74
  %183 = zext i8 %182 to i32
  %184 = mul nsw i32 %183, %8
  %185 = getelementptr inbounds i8, ptr %24, i64 12
  %186 = load i8, ptr %185, align 1, !tbaa !74
  %187 = zext i8 %186 to i32
  %188 = mul nsw i32 %10, %187
  %189 = add i32 %184, 32
  %190 = add i32 %189, %188
  %191 = ashr i32 %190, 6
  %192 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %191) #12
  %193 = getelementptr inbounds i8, ptr %22, i64 12
  store i8 %192, ptr %193, align 1, !tbaa !74
  %194 = getelementptr inbounds i8, ptr %23, i64 13
  %195 = load i8, ptr %194, align 1, !tbaa !74
  %196 = zext i8 %195 to i32
  %197 = mul nsw i32 %196, %8
  %198 = getelementptr inbounds i8, ptr %24, i64 13
  %199 = load i8, ptr %198, align 1, !tbaa !74
  %200 = zext i8 %199 to i32
  %201 = mul nsw i32 %10, %200
  %202 = add i32 %197, 32
  %203 = add i32 %202, %201
  %204 = ashr i32 %203, 6
  %205 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %204) #12
  %206 = getelementptr inbounds i8, ptr %22, i64 13
  store i8 %205, ptr %206, align 1, !tbaa !74
  %207 = getelementptr inbounds i8, ptr %23, i64 14
  %208 = load i8, ptr %207, align 1, !tbaa !74
  %209 = zext i8 %208 to i32
  %210 = mul nsw i32 %209, %8
  %211 = getelementptr inbounds i8, ptr %24, i64 14
  %212 = load i8, ptr %211, align 1, !tbaa !74
  %213 = zext i8 %212 to i32
  %214 = mul nsw i32 %10, %213
  %215 = add i32 %210, 32
  %216 = add i32 %215, %214
  %217 = ashr i32 %216, 6
  %218 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %217) #12
  %219 = getelementptr inbounds i8, ptr %22, i64 14
  store i8 %218, ptr %219, align 1, !tbaa !74
  %220 = getelementptr inbounds i8, ptr %23, i64 15
  %221 = load i8, ptr %220, align 1, !tbaa !74
  %222 = zext i8 %221 to i32
  %223 = mul nsw i32 %222, %8
  %224 = getelementptr inbounds i8, ptr %24, i64 15
  %225 = load i8, ptr %224, align 1, !tbaa !74
  %226 = zext i8 %225 to i32
  %227 = mul nsw i32 %10, %226
  %228 = add i32 %223, 32
  %229 = add i32 %228, %227
  %230 = ashr i32 %229, 6
  %231 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %230) #12
  %232 = getelementptr inbounds i8, ptr %22, i64 15
  store i8 %231, ptr %232, align 1, !tbaa !74
  br label %233

233:                                              ; preds = %75, %48, %20, %128
  %234 = add nuw nsw i32 %21, 1
  %235 = getelementptr inbounds i8, ptr %22, i64 %16
  %236 = getelementptr inbounds i8, ptr %23, i64 %17
  %237 = getelementptr inbounds i8, ptr %24, i64 %18
  %238 = icmp eq i32 %234, %7
  br i1 %238, label %19, label %20, !llvm.loop !175
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_weight_w2(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) #0 !PGOFuncName !176 {
  %7 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 16, !tbaa !161
  %9 = icmp sgt i32 %8, 0
  %10 = icmp sgt i32 %5, 0
  br i1 %9, label %17, label %11

11:                                               ; preds = %6
  br i1 %10, label %12, label %73

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 3
  %14 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 4
  %15 = sext i32 %1 to i64
  %16 = sext i32 %3 to i64
  br label %49

17:                                               ; preds = %6
  br i1 %10, label %18, label %73

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
  br i1 %31, label %73, label %23, !llvm.loop !177

32:                                               ; preds = %23, %32
  %33 = phi i1 [ true, %23 ], [ false, %32 ]
  %34 = phi i64 [ 0, %23 ], [ 1, %32 ]
  %35 = getelementptr inbounds i8, ptr %26, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !74
  %37 = zext i8 %36 to i32
  %38 = load i32, ptr %19, align 4, !tbaa !163
  %39 = mul nsw i32 %38, %37
  %40 = load i32, ptr %7, align 16, !tbaa !161
  %41 = add nsw i32 %40, -1
  %42 = shl nuw i32 1, %41
  %43 = add nsw i32 %42, %39
  %44 = ashr i32 %43, %40
  %45 = load i32, ptr %20, align 8, !tbaa !164
  %46 = add nsw i32 %44, %45
  %47 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %46) #12
  %48 = getelementptr inbounds i8, ptr %25, i64 %34
  store i8 %47, ptr %48, align 1, !tbaa !74
  br i1 %33, label %32, label %27, !llvm.loop !178

49:                                               ; preds = %12, %49
  %50 = phi i32 [ 0, %12 ], [ %69, %49 ]
  %51 = phi ptr [ %0, %12 ], [ %70, %49 ]
  %52 = phi ptr [ %2, %12 ], [ %71, %49 ]
  %53 = load i8, ptr %52, align 1, !tbaa !74
  %54 = zext i8 %53 to i32
  %55 = load i32, ptr %13, align 4, !tbaa !163
  %56 = mul nsw i32 %55, %54
  %57 = load i32, ptr %14, align 8, !tbaa !164
  %58 = add nsw i32 %56, %57
  %59 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %58) #12
  store i8 %59, ptr %51, align 1, !tbaa !74
  %60 = getelementptr inbounds i8, ptr %52, i64 1
  %61 = load i8, ptr %60, align 1, !tbaa !74
  %62 = zext i8 %61 to i32
  %63 = load i32, ptr %13, align 4, !tbaa !163
  %64 = mul nsw i32 %63, %62
  %65 = load i32, ptr %14, align 8, !tbaa !164
  %66 = add nsw i32 %64, %65
  %67 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %66) #12
  %68 = getelementptr inbounds i8, ptr %51, i64 1
  store i8 %67, ptr %68, align 1, !tbaa !74
  %69 = add nuw nsw i32 %50, 1
  %70 = getelementptr inbounds i8, ptr %51, i64 %15
  %71 = getelementptr inbounds i8, ptr %52, i64 %16
  %72 = icmp eq i32 %69, %5
  br i1 %72, label %73, label %49, !llvm.loop !179

73:                                               ; preds = %49, %27, %11, %17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_weight_w4(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) #0 !PGOFuncName !180 {
  %7 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 16, !tbaa !161
  %9 = icmp sgt i32 %8, 0
  %10 = icmp sgt i32 %5, 0
  br i1 %9, label %17, label %11

11:                                               ; preds = %6
  br i1 %10, label %12, label %72

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 3
  %14 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 4
  %15 = sext i32 %1 to i64
  %16 = sext i32 %3 to i64
  br label %50

17:                                               ; preds = %6
  br i1 %10, label %18, label %72

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
  br i1 %31, label %72, label %23, !llvm.loop !181

32:                                               ; preds = %23, %32
  %33 = phi i64 [ 0, %23 ], [ %48, %32 ]
  %34 = getelementptr inbounds i8, ptr %26, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !74
  %36 = zext i8 %35 to i32
  %37 = load i32, ptr %19, align 4, !tbaa !163
  %38 = mul nsw i32 %37, %36
  %39 = load i32, ptr %7, align 16, !tbaa !161
  %40 = add nsw i32 %39, -1
  %41 = shl nuw i32 1, %40
  %42 = add nsw i32 %41, %38
  %43 = ashr i32 %42, %39
  %44 = load i32, ptr %20, align 8, !tbaa !164
  %45 = add nsw i32 %43, %44
  %46 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %45) #12
  %47 = getelementptr inbounds i8, ptr %25, i64 %33
  store i8 %46, ptr %47, align 1, !tbaa !74
  %48 = add nuw nsw i64 %33, 1
  %49 = icmp eq i64 %48, 4
  br i1 %49, label %27, label %32, !llvm.loop !182

50:                                               ; preds = %12, %54
  %51 = phi i32 [ 0, %12 ], [ %55, %54 ]
  %52 = phi ptr [ %0, %12 ], [ %56, %54 ]
  %53 = phi ptr [ %2, %12 ], [ %57, %54 ]
  br label %59

54:                                               ; preds = %59
  %55 = add nuw nsw i32 %51, 1
  %56 = getelementptr inbounds i8, ptr %52, i64 %15
  %57 = getelementptr inbounds i8, ptr %53, i64 %16
  %58 = icmp eq i32 %55, %5
  br i1 %58, label %72, label %50, !llvm.loop !183

59:                                               ; preds = %50, %59
  %60 = phi i64 [ 0, %50 ], [ %70, %59 ]
  %61 = getelementptr inbounds i8, ptr %53, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !74
  %63 = zext i8 %62 to i32
  %64 = load i32, ptr %13, align 4, !tbaa !163
  %65 = mul nsw i32 %64, %63
  %66 = load i32, ptr %14, align 8, !tbaa !164
  %67 = add nsw i32 %65, %66
  %68 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %67) #12
  %69 = getelementptr inbounds i8, ptr %52, i64 %60
  store i8 %68, ptr %69, align 1, !tbaa !74
  %70 = add nuw nsw i64 %60, 1
  %71 = icmp eq i64 %70, 4
  br i1 %71, label %54, label %59, !llvm.loop !184

72:                                               ; preds = %54, %27, %11, %17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_weight_w8(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) #0 !PGOFuncName !185 {
  %7 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 16, !tbaa !161
  %9 = icmp sgt i32 %8, 0
  %10 = icmp sgt i32 %5, 0
  br i1 %9, label %17, label %11

11:                                               ; preds = %6
  br i1 %10, label %12, label %72

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 3
  %14 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 4
  %15 = sext i32 %1 to i64
  %16 = sext i32 %3 to i64
  br label %50

17:                                               ; preds = %6
  br i1 %10, label %18, label %72

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
  br i1 %31, label %72, label %23, !llvm.loop !186

32:                                               ; preds = %23, %32
  %33 = phi i64 [ 0, %23 ], [ %48, %32 ]
  %34 = getelementptr inbounds i8, ptr %26, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !74
  %36 = zext i8 %35 to i32
  %37 = load i32, ptr %19, align 4, !tbaa !163
  %38 = mul nsw i32 %37, %36
  %39 = load i32, ptr %7, align 16, !tbaa !161
  %40 = add nsw i32 %39, -1
  %41 = shl nuw i32 1, %40
  %42 = add nsw i32 %41, %38
  %43 = ashr i32 %42, %39
  %44 = load i32, ptr %20, align 8, !tbaa !164
  %45 = add nsw i32 %43, %44
  %46 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %45) #12
  %47 = getelementptr inbounds i8, ptr %25, i64 %33
  store i8 %46, ptr %47, align 1, !tbaa !74
  %48 = add nuw nsw i64 %33, 1
  %49 = icmp eq i64 %48, 8
  br i1 %49, label %27, label %32, !llvm.loop !187

50:                                               ; preds = %12, %54
  %51 = phi i32 [ 0, %12 ], [ %55, %54 ]
  %52 = phi ptr [ %0, %12 ], [ %56, %54 ]
  %53 = phi ptr [ %2, %12 ], [ %57, %54 ]
  br label %59

54:                                               ; preds = %59
  %55 = add nuw nsw i32 %51, 1
  %56 = getelementptr inbounds i8, ptr %52, i64 %15
  %57 = getelementptr inbounds i8, ptr %53, i64 %16
  %58 = icmp eq i32 %55, %5
  br i1 %58, label %72, label %50, !llvm.loop !188

59:                                               ; preds = %50, %59
  %60 = phi i64 [ 0, %50 ], [ %70, %59 ]
  %61 = getelementptr inbounds i8, ptr %53, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !74
  %63 = zext i8 %62 to i32
  %64 = load i32, ptr %13, align 4, !tbaa !163
  %65 = mul nsw i32 %64, %63
  %66 = load i32, ptr %14, align 8, !tbaa !164
  %67 = add nsw i32 %65, %66
  %68 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %67) #12
  %69 = getelementptr inbounds i8, ptr %52, i64 %60
  store i8 %68, ptr %69, align 1, !tbaa !74
  %70 = add nuw nsw i64 %60, 1
  %71 = icmp eq i64 %70, 8
  br i1 %71, label %54, label %59, !llvm.loop !189

72:                                               ; preds = %54, %27, %11, %17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_weight_w12(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) #0 !PGOFuncName !190 {
  %7 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 16, !tbaa !161
  %9 = icmp sgt i32 %8, 0
  %10 = icmp sgt i32 %5, 0
  br i1 %9, label %17, label %11

11:                                               ; preds = %6
  br i1 %10, label %12, label %72

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 3
  %14 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 4
  %15 = sext i32 %1 to i64
  %16 = sext i32 %3 to i64
  br label %50

17:                                               ; preds = %6
  br i1 %10, label %18, label %72

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
  br i1 %31, label %72, label %23, !llvm.loop !191

32:                                               ; preds = %23, %32
  %33 = phi i64 [ 0, %23 ], [ %48, %32 ]
  %34 = getelementptr inbounds i8, ptr %26, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !74
  %36 = zext i8 %35 to i32
  %37 = load i32, ptr %19, align 4, !tbaa !163
  %38 = mul nsw i32 %37, %36
  %39 = load i32, ptr %7, align 16, !tbaa !161
  %40 = add nsw i32 %39, -1
  %41 = shl nuw i32 1, %40
  %42 = add nsw i32 %41, %38
  %43 = ashr i32 %42, %39
  %44 = load i32, ptr %20, align 8, !tbaa !164
  %45 = add nsw i32 %43, %44
  %46 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %45) #12
  %47 = getelementptr inbounds i8, ptr %25, i64 %33
  store i8 %46, ptr %47, align 1, !tbaa !74
  %48 = add nuw nsw i64 %33, 1
  %49 = icmp eq i64 %48, 12
  br i1 %49, label %27, label %32, !llvm.loop !192

50:                                               ; preds = %12, %54
  %51 = phi i32 [ 0, %12 ], [ %55, %54 ]
  %52 = phi ptr [ %0, %12 ], [ %56, %54 ]
  %53 = phi ptr [ %2, %12 ], [ %57, %54 ]
  br label %59

54:                                               ; preds = %59
  %55 = add nuw nsw i32 %51, 1
  %56 = getelementptr inbounds i8, ptr %52, i64 %15
  %57 = getelementptr inbounds i8, ptr %53, i64 %16
  %58 = icmp eq i32 %55, %5
  br i1 %58, label %72, label %50, !llvm.loop !193

59:                                               ; preds = %50, %59
  %60 = phi i64 [ 0, %50 ], [ %70, %59 ]
  %61 = getelementptr inbounds i8, ptr %53, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !74
  %63 = zext i8 %62 to i32
  %64 = load i32, ptr %13, align 4, !tbaa !163
  %65 = mul nsw i32 %64, %63
  %66 = load i32, ptr %14, align 8, !tbaa !164
  %67 = add nsw i32 %65, %66
  %68 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %67) #12
  %69 = getelementptr inbounds i8, ptr %52, i64 %60
  store i8 %68, ptr %69, align 1, !tbaa !74
  %70 = add nuw nsw i64 %60, 1
  %71 = icmp eq i64 %70, 12
  br i1 %71, label %54, label %59, !llvm.loop !194

72:                                               ; preds = %54, %27, %11, %17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_weight_w16(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) #0 !PGOFuncName !195 {
  %7 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 16, !tbaa !161
  %9 = icmp sgt i32 %8, 0
  %10 = icmp sgt i32 %5, 0
  br i1 %9, label %17, label %11

11:                                               ; preds = %6
  br i1 %10, label %12, label %72

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 3
  %14 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 4
  %15 = sext i32 %1 to i64
  %16 = sext i32 %3 to i64
  br label %50

17:                                               ; preds = %6
  br i1 %10, label %18, label %72

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
  br i1 %31, label %72, label %23, !llvm.loop !196

32:                                               ; preds = %23, %32
  %33 = phi i64 [ 0, %23 ], [ %48, %32 ]
  %34 = getelementptr inbounds i8, ptr %26, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !74
  %36 = zext i8 %35 to i32
  %37 = load i32, ptr %19, align 4, !tbaa !163
  %38 = mul nsw i32 %37, %36
  %39 = load i32, ptr %7, align 16, !tbaa !161
  %40 = add nsw i32 %39, -1
  %41 = shl nuw i32 1, %40
  %42 = add nsw i32 %41, %38
  %43 = ashr i32 %42, %39
  %44 = load i32, ptr %20, align 8, !tbaa !164
  %45 = add nsw i32 %43, %44
  %46 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %45) #12
  %47 = getelementptr inbounds i8, ptr %25, i64 %33
  store i8 %46, ptr %47, align 1, !tbaa !74
  %48 = add nuw nsw i64 %33, 1
  %49 = icmp eq i64 %48, 16
  br i1 %49, label %27, label %32, !llvm.loop !197

50:                                               ; preds = %12, %54
  %51 = phi i32 [ 0, %12 ], [ %55, %54 ]
  %52 = phi ptr [ %0, %12 ], [ %56, %54 ]
  %53 = phi ptr [ %2, %12 ], [ %57, %54 ]
  br label %59

54:                                               ; preds = %59
  %55 = add nuw nsw i32 %51, 1
  %56 = getelementptr inbounds i8, ptr %52, i64 %15
  %57 = getelementptr inbounds i8, ptr %53, i64 %16
  %58 = icmp eq i32 %55, %5
  br i1 %58, label %72, label %50, !llvm.loop !198

59:                                               ; preds = %50, %59
  %60 = phi i64 [ 0, %50 ], [ %70, %59 ]
  %61 = getelementptr inbounds i8, ptr %53, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !74
  %63 = zext i8 %62 to i32
  %64 = load i32, ptr %13, align 4, !tbaa !163
  %65 = mul nsw i32 %64, %63
  %66 = load i32, ptr %14, align 8, !tbaa !164
  %67 = add nsw i32 %65, %66
  %68 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %67) #12
  %69 = getelementptr inbounds i8, ptr %52, i64 %60
  store i8 %68, ptr %69, align 1, !tbaa !74
  %70 = add nuw nsw i64 %60, 1
  %71 = icmp eq i64 %70, 16
  br i1 %71, label %54, label %59, !llvm.loop !199

72:                                               ; preds = %54, %27, %11, %17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @mc_weight_w20(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) #0 !PGOFuncName !200 {
  %7 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 16, !tbaa !161
  %9 = icmp sgt i32 %8, 0
  %10 = icmp sgt i32 %5, 0
  br i1 %9, label %17, label %11

11:                                               ; preds = %6
  br i1 %10, label %12, label %72

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 3
  %14 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 4
  %15 = sext i32 %1 to i64
  %16 = sext i32 %3 to i64
  br label %50

17:                                               ; preds = %6
  br i1 %10, label %18, label %72

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
  br i1 %31, label %72, label %23, !llvm.loop !201

32:                                               ; preds = %23, %32
  %33 = phi i64 [ 0, %23 ], [ %48, %32 ]
  %34 = getelementptr inbounds i8, ptr %26, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !74
  %36 = zext i8 %35 to i32
  %37 = load i32, ptr %19, align 4, !tbaa !163
  %38 = mul nsw i32 %37, %36
  %39 = load i32, ptr %7, align 16, !tbaa !161
  %40 = add nsw i32 %39, -1
  %41 = shl nuw i32 1, %40
  %42 = add nsw i32 %41, %38
  %43 = ashr i32 %42, %39
  %44 = load i32, ptr %20, align 8, !tbaa !164
  %45 = add nsw i32 %43, %44
  %46 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %45) #12
  %47 = getelementptr inbounds i8, ptr %25, i64 %33
  store i8 %46, ptr %47, align 1, !tbaa !74
  %48 = add nuw nsw i64 %33, 1
  %49 = icmp eq i64 %48, 20
  br i1 %49, label %27, label %32, !llvm.loop !202

50:                                               ; preds = %12, %54
  %51 = phi i32 [ 0, %12 ], [ %55, %54 ]
  %52 = phi ptr [ %0, %12 ], [ %56, %54 ]
  %53 = phi ptr [ %2, %12 ], [ %57, %54 ]
  br label %59

54:                                               ; preds = %59
  %55 = add nuw nsw i32 %51, 1
  %56 = getelementptr inbounds i8, ptr %52, i64 %15
  %57 = getelementptr inbounds i8, ptr %53, i64 %16
  %58 = icmp eq i32 %55, %5
  br i1 %58, label %72, label %50, !llvm.loop !203

59:                                               ; preds = %50, %59
  %60 = phi i64 [ 0, %50 ], [ %70, %59 ]
  %61 = getelementptr inbounds i8, ptr %53, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !74
  %63 = zext i8 %62 to i32
  %64 = load i32, ptr %13, align 4, !tbaa !163
  %65 = mul nsw i32 %64, %63
  %66 = load i32, ptr %14, align 8, !tbaa !164
  %67 = add nsw i32 %65, %66
  %68 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %67) #12
  %69 = getelementptr inbounds i8, ptr %52, i64 %60
  store i8 %68, ptr %69, align 1, !tbaa !74
  %70 = add nuw nsw i64 %60, 1
  %71 = icmp eq i64 %70, 20
  br i1 %71, label %54, label %59, !llvm.loop !204

72:                                               ; preds = %54, %27, %11, %17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v4i16(<4 x i16>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v8i16(<8 x i16>) #10

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }

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
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!37, !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!43, !37, i64 32864}
!43 = !{!"x264_t", !44, i64 0, !38, i64 704, !41, i64 1736, !41, i64 1740, !41, i64 1744, !41, i64 1748, !41, i64 1752, !49, i64 1760, !37, i64 1832, !41, i64 1840, !41, i64 1844, !41, i64 1848, !41, i64 1852, !41, i64 1856, !41, i64 1860, !41, i64 1864, !41, i64 1868, !41, i64 1872, !41, i64 1876, !41, i64 1880, !41, i64 1884, !41, i64 1888, !41, i64 1892, !38, i64 1896, !37, i64 3200, !38, i64 3208, !37, i64 3328, !41, i64 3336, !41, i64 3340, !38, i64 3344, !38, i64 3376, !38, i64 3392, !38, i64 3424, !38, i64 3440, !38, i64 3472, !38, i64 3488, !38, i64 3520, !38, i64 3536, !38, i64 4272, !37, i64 7216, !52, i64 7232, !53, i64 13904, !54, i64 14416, !37, i64 14680, !37, i64 14688, !41, i64 14696, !38, i64 14704, !41, i64 14856, !38, i64 14864, !38, i64 15016, !41, i64 15024, !41, i64 15028, !51, i64 15032, !55, i64 15040, !56, i64 16368, !37, i64 26704, !59, i64 26712, !38, i64 30400, !38, i64 30912, !38, i64 31168, !37, i64 31176, !38, i64 31184, !38, i64 31232, !38, i64 31248, !38, i64 31304, !38, i64 31360, !38, i64 31456, !37, i64 31552, !62, i64 31560, !63, i64 32616, !64, i64 32912, !65, i64 33032, !66, i64 33080, !67, i64 33256, !37, i64 33328}
!44 = !{!"x264_param_t", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !45, i64 44, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !37, i64 152, !38, i64 160, !38, i64 176, !38, i64 192, !38, i64 208, !38, i64 224, !38, i64 288, !37, i64 352, !37, i64 360, !41, i64 368, !41, i64 372, !37, i64 376, !46, i64 384, !48, i64 488, !41, i64 632, !41, i64 636, !41, i64 640, !41, i64 644, !41, i64 648, !41, i64 652, !41, i64 656, !41, i64 660, !41, i64 664, !41, i64 668, !41, i64 672, !41, i64 676, !41, i64 680, !41, i64 684, !41, i64 688, !41, i64 692, !37, i64 696}
!45 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32}
!46 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !47, i64 72, !47, i64 76, !41, i64 80, !38, i64 84, !41, i64 92, !41, i64 96}
!47 = !{!"float", !38, i64 0}
!48 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !41, i64 36, !41, i64 40, !47, i64 44, !47, i64 48, !47, i64 52, !41, i64 56, !47, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !37, i64 80, !41, i64 88, !37, i64 96, !47, i64 104, !47, i64 108, !47, i64 112, !37, i64 120, !41, i64 128, !37, i64 136}
!49 = !{!"", !41, i64 0, !41, i64 4, !37, i64 8, !41, i64 16, !37, i64 24, !50, i64 32}
!50 = !{!"bs_s", !37, i64 0, !37, i64 8, !37, i64 16, !51, i64 24, !41, i64 32, !41, i64 36}
!51 = !{!"long", !38, i64 0}
!52 = !{!"", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !38, i64 60, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !38, i64 96, !38, i64 352, !41, i64 6496, !41, i64 6500, !38, i64 6504, !41, i64 6632, !41, i64 6636, !41, i64 6640, !41, i64 6644, !41, i64 6648, !41, i64 6652, !41, i64 6656, !41, i64 6660}
!53 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !37, i64 16, !37, i64 24, !37, i64 32, !41, i64 48, !38, i64 52}
!54 = !{!"", !37, i64 0, !38, i64 8, !37, i64 24, !38, i64 32, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !51, i64 208, !51, i64 216, !38, i64 224, !51, i64 240, !51, i64 248, !41, i64 256, !41, i64 260}
!55 = !{!"", !38, i64 0, !38, i64 32, !38, i64 48, !38, i64 560}
!56 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !38, i64 72, !38, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !38, i64 112, !41, i64 120, !38, i64 124, !38, i64 140, !41, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !38, i64 304, !38, i64 320, !38, i64 336, !38, i64 352, !37, i64 864, !37, i64 872, !37, i64 880, !38, i64 888, !41, i64 1016, !41, i64 1020, !38, i64 1024, !41, i64 1028, !41, i64 1032, !41, i64 1036, !41, i64 1040, !41, i64 1044, !41, i64 1048, !41, i64 1052, !41, i64 1056, !41, i64 1060, !57, i64 1072, !58, i64 8656, !41, i64 9424, !41, i64 9428, !41, i64 9432, !41, i64 9436, !41, i64 9440, !41, i64 9444, !41, i64 9448, !41, i64 9452, !38, i64 9456, !41, i64 9472, !41, i64 9476, !38, i64 9480, !37, i64 9992, !38, i64 10000, !37, i64 10256, !38, i64 10264, !41, i64 10284, !38, i64 10288}
!57 = !{!"", !38, i64 0, !38, i64 384, !38, i64 1248, !38, i64 1504, !38, i64 1760, !38, i64 2144, !38, i64 2624, !38, i64 2640, !41, i64 2656, !41, i64 2660, !38, i64 2672, !38, i64 3184, !38, i64 3696, !38, i64 3776, !38, i64 3904, !38, i64 3928, !38, i64 3952, !38, i64 3976, !38, i64 3984, !38, i64 7056, !38, i64 7312, !38, i64 7568}
!58 = !{!"", !38, i64 0, !38, i64 48, !38, i64 96, !38, i64 176, !38, i64 496, !38, i64 656, !38, i64 696, !38, i64 728, !41, i64 736, !38, i64 740, !41, i64 744, !41, i64 748, !41, i64 752, !41, i64 756}
!59 = !{!"", !60, i64 0, !38, i64 704, !38, i64 728, !38, i64 768, !38, i64 808, !38, i64 880, !38, i64 920, !38, i64 960, !38, i64 1000, !38, i64 1040, !38, i64 1080, !38, i64 1120, !38, i64 1880, !38, i64 2152, !38, i64 2168, !38, i64 3192, !38, i64 3240, !38, i64 3656, !38, i64 3664, !38, i64 3672}
!60 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !38, i64 12, !41, i64 88, !41, i64 92, !41, i64 96, !38, i64 100, !38, i64 108, !38, i64 364, !38, i64 432, !38, i64 456, !38, i64 664, !38, i64 672, !61, i64 696}
!61 = !{!"double", !38, i64 0}
!62 = !{!"", !38, i64 0, !38, i64 56, !38, i64 112, !38, i64 168, !38, i64 224, !38, i64 256, !38, i64 312, !38, i64 368, !38, i64 424, !38, i64 480, !38, i64 536, !37, i64 592, !38, i64 600, !38, i64 632, !37, i64 664, !37, i64 672, !38, i64 680, !38, i64 736, !38, i64 792, !38, i64 848, !38, i64 904, !37, i64 960, !37, i64 968, !37, i64 976, !37, i64 984, !37, i64 992, !37, i64 1000, !37, i64 1008, !37, i64 1016, !37, i64 1024, !37, i64 1032, !37, i64 1040, !37, i64 1048}
!63 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 104, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288}
!64 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112}
!65 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40}
!66 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !38, i64 88, !38, i64 136}
!67 = !{!"", !38, i64 0, !38, i64 16, !38, i64 32, !38, i64 48, !37, i64 64}
!68 = !{!69, !41, i64 140}
!69 = !{!"x264_frame", !41, i64 0, !41, i64 4, !41, i64 8, !51, i64 16, !51, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !37, i64 48, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !38, i64 84, !38, i64 85, !38, i64 86, !47, i64 88, !47, i64 92, !41, i64 96, !41, i64 100, !38, i64 104, !38, i64 116, !38, i64 128, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !38, i64 176, !38, i64 208, !37, i64 240, !38, i64 248, !38, i64 280, !38, i64 320, !38, i64 3392, !41, i64 3520, !37, i64 3528, !37, i64 3536, !37, i64 3544, !38, i64 3552, !37, i64 3568, !38, i64 3576, !38, i64 3848, !38, i64 6440, !38, i64 6712, !38, i64 6728, !38, i64 6736, !38, i64 6864, !38, i64 6868, !38, i64 8164, !41, i64 9460, !38, i64 9464, !38, i64 9536, !37, i64 12128, !37, i64 12136, !37, i64 12144, !37, i64 12152, !37, i64 12160, !41, i64 12168, !37, i64 12176, !37, i64 12184, !37, i64 12192, !41, i64 12200, !38, i64 12204, !41, i64 12276, !51, i64 12280, !70, i64 12288, !38, i64 12320, !38, i64 12572, !38, i64 13576, !41, i64 15584, !41, i64 15588, !41, i64 15592, !41, i64 15596, !41, i64 15600, !41, i64 15604, !41, i64 15608, !47, i64 15612, !41, i64 15616, !41, i64 15620, !41, i64 15624}
!70 = !{!"", !61, i64 0, !61, i64 8, !61, i64 16, !61, i64 24}
!71 = !{!69, !41, i64 144}
!72 = !{!69, !41, i64 148}
!73 = !{!43, !41, i64 100}
!74 = !{!38, !38, i64 0}
!75 = distinct !{!75, !35}
!76 = distinct !{!76, !35}
!77 = distinct !{!77, !35}
!78 = distinct !{!78, !35}
!79 = !{!80, !80, i64 0}
!80 = !{!"short", !38, i64 0}
!81 = distinct !{!81, !35}
!82 = !{!63, !37, i64 0}
!83 = !{!63, !37, i64 8}
!84 = !{!63, !37, i64 16}
!85 = !{!63, !37, i64 256}
!86 = !{!63, !37, i64 264}
!87 = !{!63, !37, i64 272}
!88 = !{!63, !37, i64 280}
!89 = !{!63, !37, i64 160}
!90 = !{!63, !37, i64 168}
!91 = !{!63, !37, i64 176}
!92 = !{!63, !37, i64 184}
!93 = !{!63, !37, i64 192}
!94 = !{!63, !37, i64 200}
!95 = !{!63, !37, i64 208}
!96 = !{!63, !37, i64 248}
!97 = !{!63, !37, i64 216}
!98 = !{!63, !37, i64 224}
!99 = !{!63, !37, i64 232}
!100 = !{!63, !37, i64 240}
!101 = !{!63, !37, i64 288}
!102 = !{!"mc.c:mc_luma"}
!103 = !{!104, !37, i64 48}
!104 = !{!"x264_weight_t", !38, i64 0, !38, i64 16, !41, i64 32, !41, i64 36, !41, i64 40, !37, i64 48}
!105 = !{!"mc.c:get_ref"}
!106 = !{!"mc.c:mc_chroma"}
!107 = distinct !{!107, !35}
!108 = distinct !{!108, !35}
!109 = !{!"mc.c:pixel_avg_16x16"}
!110 = !{!"mc.c:pixel_avg_16x8"}
!111 = !{!"mc.c:pixel_avg_8x16"}
!112 = !{!"mc.c:pixel_avg_8x8"}
!113 = !{!"mc.c:pixel_avg_8x4"}
!114 = !{!"mc.c:pixel_avg_4x8"}
!115 = !{!"mc.c:pixel_avg_4x4"}
!116 = !{!"mc.c:pixel_avg_4x2"}
!117 = !{!"mc.c:pixel_avg_2x4"}
!118 = !{!"mc.c:pixel_avg_2x2"}
!119 = !{!"mc.c:x264_weight_cache"}
!120 = !{!43, !37, i64 32872}
!121 = !{!"mc.c:mc_copy_w16"}
!122 = !{!"mc.c:mc_copy_w8"}
!123 = !{!"mc.c:mc_copy_w4"}
!124 = !{!"mc.c:hpel_filter"}
!125 = distinct !{!125, !35}
!126 = distinct !{!126, !35}
!127 = distinct !{!127, !35}
!128 = distinct !{!128, !35}
!129 = !{!"mc.c:prefetch_fenc_null"}
!130 = !{!"mc.c:prefetch_ref_null"}
!131 = !{!"mc.c:memzero_aligned"}
!132 = !{!"mc.c:frame_init_lowres_core"}
!133 = distinct !{!133, !35}
!134 = distinct !{!134, !35}
!135 = !{!"mc.c:integral_init4h"}
!136 = distinct !{!136, !35}
!137 = !{!"mc.c:integral_init8h"}
!138 = distinct !{!138, !35}
!139 = !{!"mc.c:integral_init4v"}
!140 = distinct !{!140, !35}
!141 = distinct !{!141, !35}
!142 = !{!"mc.c:integral_init8v"}
!143 = distinct !{!143, !35}
!144 = !{!"mc.c:mbtree_propagate_cost"}
!145 = distinct !{!145, !35}
!146 = !{!43, !41, i64 7268}
!147 = !{!69, !37, i64 240}
!148 = !{!43, !37, i64 32792}
!149 = !{!43, !37, i64 31176}
!150 = distinct !{!150, !35}
!151 = !{!43, !41, i64 14676}
!152 = !{!43, !37, i64 32832}
!153 = !{!43, !37, i64 32848}
!154 = !{!43, !37, i64 32840}
!155 = !{!43, !37, i64 32856}
!156 = distinct !{!156, !35}
!157 = !{!"mc.c:pixel_avg"}
!158 = distinct !{!158, !35}
!159 = distinct !{!159, !35}
!160 = !{!"mc.c:mc_weight"}
!161 = !{!104, !41, i64 32}
!162 = distinct !{!162, !35}
!163 = !{!104, !41, i64 36}
!164 = !{!104, !41, i64 40}
!165 = distinct !{!165, !35}
!166 = distinct !{!166, !35}
!167 = distinct !{!167, !35}
!168 = !{!"mc.c:mc_copy"}
!169 = distinct !{!169, !35}
!170 = !{!"mc.c:x264_clip_uint8"}
!171 = !{!"mc.c:pixel_avg_wxh"}
!172 = distinct !{!172, !35}
!173 = distinct !{!173, !35}
!174 = !{!"mc.c:pixel_avg_weight_wxh"}
!175 = distinct !{!175, !35}
!176 = !{!"mc.c:mc_weight_w2"}
!177 = distinct !{!177, !35}
!178 = distinct !{!178, !35}
!179 = distinct !{!179, !35}
!180 = !{!"mc.c:mc_weight_w4"}
!181 = distinct !{!181, !35}
!182 = distinct !{!182, !35}
!183 = distinct !{!183, !35}
!184 = distinct !{!184, !35}
!185 = !{!"mc.c:mc_weight_w8"}
!186 = distinct !{!186, !35}
!187 = distinct !{!187, !35}
!188 = distinct !{!188, !35}
!189 = distinct !{!189, !35}
!190 = !{!"mc.c:mc_weight_w12"}
!191 = distinct !{!191, !35}
!192 = distinct !{!192, !35}
!193 = distinct !{!193, !35}
!194 = distinct !{!194, !35}
!195 = !{!"mc.c:mc_weight_w16"}
!196 = distinct !{!196, !35}
!197 = distinct !{!197, !35}
!198 = distinct !{!198, !35}
!199 = distinct !{!199, !35}
!200 = !{!"mc.c:mc_weight_w20"}
!201 = distinct !{!201, !35}
!202 = distinct !{!202, !35}
!203 = distinct !{!203, !35}
!204 = distinct !{!204, !35}
