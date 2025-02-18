; ModuleID = 'x264_src/common/mvpred.c'
source_filename = "x264_src/common/mvpred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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

@x264_scan8 = internal unnamed_addr constant [27 x i32] [i32 12, i32 13, i32 20, i32 21, i32 14, i32 15, i32 22, i32 23, i32 28, i32 29, i32 36, i32 37, i32 30, i32 31, i32 38, i32 39, i32 9, i32 10, i32 17, i32 18, i32 33, i32 34, i32 41, i32 42, i32 44, i32 46, i32 47], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @x264_mb_predict_mv(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !34
  %9 = sext i32 %1 to i64
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %9, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !38
  %13 = add nsw i32 %8, -1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %9, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !38
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %9, i64 %14
  %18 = add nsw i32 %8, -8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %9, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !38
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %9, i64 %19
  %23 = add nsw i32 %18, %3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %9, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !38
  %27 = and i32 %2, 3
  %28 = and i32 %3, 1
  %29 = or disjoint i32 %28, 2
  %30 = icmp uge i32 %27, %29
  %31 = icmp eq i8 %26, -2
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %5
  %34 = add nsw i32 %8, -9
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %9, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !38
  br label %38

38:                                               ; preds = %5, %33
  %39 = phi i64 [ %35, %33 ], [ %24, %5 ]
  %40 = phi i8 [ %37, %33 ], [ %26, %5 ]
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %9, i64 %39
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %43 = load i32, ptr %42, align 4, !tbaa !39
  switch i32 %43, label %64 [
    i32 14, label %44
    i32 15, label %54
  ]

44:                                               ; preds = %38
  %45 = icmp eq i32 %2, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  %47 = icmp eq i8 %21, %12
  br i1 %47, label %48, label %64

48:                                               ; preds = %46
  %49 = load i32, ptr %22, align 4, !tbaa !38
  store i32 %49, ptr %4, align 4, !tbaa !38
  br label %127

50:                                               ; preds = %44
  %51 = icmp eq i8 %16, %12
  br i1 %51, label %52, label %64

52:                                               ; preds = %50
  %53 = load i32, ptr %17, align 4, !tbaa !38
  store i32 %53, ptr %4, align 4, !tbaa !38
  br label %127

54:                                               ; preds = %38
  %55 = icmp eq i32 %2, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  %57 = icmp eq i8 %16, %12
  br i1 %57, label %58, label %64

58:                                               ; preds = %56
  %59 = load i32, ptr %17, align 4, !tbaa !38
  store i32 %59, ptr %4, align 4, !tbaa !38
  br label %127

60:                                               ; preds = %54
  %61 = icmp eq i8 %40, %12
  br i1 %61, label %62, label %64

62:                                               ; preds = %60
  %63 = load i32, ptr %41, align 4, !tbaa !38
  store i32 %63, ptr %4, align 4, !tbaa !38
  br label %127

64:                                               ; preds = %38, %60, %56, %46, %50
  %65 = icmp eq i8 %16, %12
  %66 = zext i1 %65 to i32
  %67 = icmp eq i8 %21, %12
  %68 = zext i1 %67 to i32
  %69 = add nuw nsw i32 %68, %66
  %70 = icmp eq i8 %40, %12
  %71 = zext i1 %70 to i32
  %72 = add nuw nsw i32 %69, %71
  %73 = icmp ugt i32 %72, 1
  br i1 %73, label %74, label %109

74:                                               ; preds = %119, %64
  %75 = load i16, ptr %17, align 2, !tbaa !66
  %76 = sext i16 %75 to i32
  %77 = load i16, ptr %22, align 2, !tbaa !66
  %78 = sext i16 %77 to i32
  %79 = load i16, ptr %41, align 2, !tbaa !66
  %80 = sext i16 %79 to i32
  %81 = sub nsw i32 %76, %78
  %82 = tail call i32 @llvm.smin.i32(i32 %81, i32 0)
  %83 = tail call i32 @llvm.smax.i32(i32 %76, i32 %78)
  %84 = add nsw i32 %82, %78
  %85 = tail call i32 @llvm.smax.i32(i32 %84, i32 %80)
  %86 = sub nsw i32 %83, %85
  %87 = tail call i32 @llvm.smin.i32(i32 %86, i32 0)
  %88 = add nsw i32 %87, %85
  %89 = trunc i32 %88 to i16
  store i16 %89, ptr %4, align 2, !tbaa !66
  %90 = getelementptr inbounds i16, ptr %17, i64 1
  %91 = load i16, ptr %90, align 2, !tbaa !66
  %92 = sext i16 %91 to i32
  %93 = getelementptr inbounds i16, ptr %22, i64 1
  %94 = load i16, ptr %93, align 2, !tbaa !66
  %95 = sext i16 %94 to i32
  %96 = getelementptr inbounds i16, ptr %41, i64 1
  %97 = load i16, ptr %96, align 2, !tbaa !66
  %98 = sext i16 %97 to i32
  %99 = sub nsw i32 %92, %95
  %100 = tail call i32 @llvm.smin.i32(i32 %99, i32 0)
  %101 = tail call i32 @llvm.smax.i32(i32 %92, i32 %95)
  %102 = add nsw i32 %100, %95
  %103 = tail call i32 @llvm.smax.i32(i32 %102, i32 %98)
  %104 = sub nsw i32 %101, %103
  %105 = tail call i32 @llvm.smin.i32(i32 %104, i32 0)
  %106 = add nsw i32 %105, %103
  %107 = trunc i32 %106 to i16
  %108 = getelementptr inbounds i16, ptr %4, i64 1
  store i16 %107, ptr %108, align 2, !tbaa !66
  br label %127

109:                                              ; preds = %64
  %110 = icmp eq i32 %72, 1
  br i1 %110, label %111, label %119

111:                                              ; preds = %109
  br i1 %65, label %112, label %114

112:                                              ; preds = %111
  %113 = load i32, ptr %17, align 4, !tbaa !38
  store i32 %113, ptr %4, align 4, !tbaa !38
  br label %127

114:                                              ; preds = %111
  br i1 %67, label %115, label %117

115:                                              ; preds = %114
  %116 = load i32, ptr %22, align 4, !tbaa !38
  store i32 %116, ptr %4, align 4, !tbaa !38
  br label %127

117:                                              ; preds = %114
  %118 = load i32, ptr %41, align 4, !tbaa !38
  store i32 %118, ptr %4, align 4, !tbaa !38
  br label %127

119:                                              ; preds = %109
  %120 = icmp eq i8 %21, -2
  %121 = icmp eq i8 %40, -2
  %122 = select i1 %120, i1 %121, i1 false
  %123 = icmp ne i8 %16, -2
  %124 = select i1 %122, i1 %123, i1 false
  br i1 %124, label %125, label %74

125:                                              ; preds = %119
  %126 = load i32, ptr %17, align 4, !tbaa !38
  store i32 %126, ptr %4, align 4, !tbaa !38
  br label %127

127:                                              ; preds = %74, %112, %117, %115, %125, %62, %58, %52, %48
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_mb_predict_mv_16x16(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #2 {
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %5, i64 11
  %7 = load i8, ptr %6, align 1, !tbaa !38
  %8 = sext i8 %7 to i32
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %5, i64 11
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %5, i64 4
  %11 = load i8, ptr %10, align 4, !tbaa !38
  %12 = sext i8 %11 to i32
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %5, i64 4
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %5, i64 8
  %15 = load i8, ptr %14, align 8, !tbaa !38
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %5, i64 8
  %17 = icmp eq i8 %15, -2
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %5, i64 3
  %20 = load i8, ptr %19, align 1, !tbaa !38
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %5, i64 3
  br label %22

22:                                               ; preds = %18, %4
  %23 = phi ptr [ %21, %18 ], [ %16, %4 ]
  %24 = phi i8 [ %20, %18 ], [ %15, %4 ]
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %8, %2
  %27 = zext i1 %26 to i32
  %28 = icmp eq i32 %12, %2
  %29 = zext i1 %28 to i32
  %30 = add nuw nsw i32 %29, %27
  %31 = icmp eq i32 %25, %2
  %32 = zext i1 %31 to i32
  %33 = add nuw nsw i32 %30, %32
  %34 = icmp ugt i32 %33, 1
  br i1 %34, label %35, label %70

35:                                               ; preds = %80, %22
  %36 = load i16, ptr %9, align 2, !tbaa !66
  %37 = sext i16 %36 to i32
  %38 = load i16, ptr %13, align 2, !tbaa !66
  %39 = sext i16 %38 to i32
  %40 = load i16, ptr %23, align 2, !tbaa !66
  %41 = sext i16 %40 to i32
  %42 = sub nsw i32 %37, %39
  %43 = tail call i32 @llvm.smin.i32(i32 %42, i32 0)
  %44 = tail call i32 @llvm.smax.i32(i32 %37, i32 %39)
  %45 = add nsw i32 %43, %39
  %46 = tail call i32 @llvm.smax.i32(i32 %45, i32 %41)
  %47 = sub nsw i32 %44, %46
  %48 = tail call i32 @llvm.smin.i32(i32 %47, i32 0)
  %49 = add nsw i32 %48, %46
  %50 = trunc i32 %49 to i16
  store i16 %50, ptr %3, align 2, !tbaa !66
  %51 = getelementptr inbounds i16, ptr %9, i64 1
  %52 = load i16, ptr %51, align 2, !tbaa !66
  %53 = sext i16 %52 to i32
  %54 = getelementptr inbounds i16, ptr %13, i64 1
  %55 = load i16, ptr %54, align 2, !tbaa !66
  %56 = sext i16 %55 to i32
  %57 = getelementptr inbounds i16, ptr %23, i64 1
  %58 = load i16, ptr %57, align 2, !tbaa !66
  %59 = sext i16 %58 to i32
  %60 = sub nsw i32 %53, %56
  %61 = tail call i32 @llvm.smin.i32(i32 %60, i32 0)
  %62 = tail call i32 @llvm.smax.i32(i32 %53, i32 %56)
  %63 = add nsw i32 %61, %56
  %64 = tail call i32 @llvm.smax.i32(i32 %63, i32 %59)
  %65 = sub nsw i32 %62, %64
  %66 = tail call i32 @llvm.smin.i32(i32 %65, i32 0)
  %67 = add nsw i32 %66, %64
  %68 = trunc i32 %67 to i16
  %69 = getelementptr inbounds i16, ptr %3, i64 1
  store i16 %68, ptr %69, align 2, !tbaa !66
  br label %88

70:                                               ; preds = %22
  %71 = icmp eq i32 %33, 1
  br i1 %71, label %72, label %80

72:                                               ; preds = %70
  br i1 %26, label %73, label %75

73:                                               ; preds = %72
  %74 = load i32, ptr %9, align 4, !tbaa !38
  store i32 %74, ptr %3, align 4, !tbaa !38
  br label %88

75:                                               ; preds = %72
  br i1 %28, label %76, label %78

76:                                               ; preds = %75
  %77 = load i32, ptr %13, align 4, !tbaa !38
  store i32 %77, ptr %3, align 4, !tbaa !38
  br label %88

78:                                               ; preds = %75
  %79 = load i32, ptr %23, align 4, !tbaa !38
  store i32 %79, ptr %3, align 4, !tbaa !38
  br label %88

80:                                               ; preds = %70
  %81 = icmp eq i8 %11, -2
  %82 = icmp eq i8 %24, -2
  %83 = and i1 %81, %82
  %84 = icmp ne i8 %7, -2
  %85 = select i1 %83, i1 %84, i1 false
  br i1 %85, label %86, label %35

86:                                               ; preds = %80
  %87 = load i32, ptr %9, align 4, !tbaa !38
  store i32 %87, ptr %3, align 4, !tbaa !38
  br label %88

88:                                               ; preds = %86, %76, %78, %73, %35
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_mb_predict_mv_pskip(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 11
  %4 = load i8, ptr %3, align 1, !tbaa !38
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 4
  %6 = load i8, ptr %5, align 4, !tbaa !38
  %7 = sext i8 %6 to i32
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 4
  %9 = icmp eq i8 %4, -2
  %10 = icmp eq i8 %6, -2
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = sext i8 %4 to i32
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 11
  %15 = load i32, ptr %14, align 4, !tbaa !38
  %16 = or i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = load i32, ptr %8, align 4, !tbaa !38
  %20 = or i32 %19, %7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %12, %2
  store i32 0, ptr %1, align 4, !tbaa !38
  br label %24

23:                                               ; preds = %18
  tail call void @x264_mb_predict_mv_16x16(ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef %1)
  br label %24

24:                                               ; preds = %23, %22
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @x264_mb_predict_mv_direct16x16(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #3 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x [2 x i16]], align 8
  %5 = alloca [2 x ptr], align 16
  %6 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !68
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %696, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 15
  %11 = load i32, ptr %10, align 8, !tbaa !69
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %312, label %13

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49
  %15 = load ptr, ptr %14, align 16, !tbaa !70
  %16 = getelementptr inbounds %struct.x264_frame, ptr %15, i64 0, i32 48
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 7
  %19 = load i32, ptr %18, align 4, !tbaa !71
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.x264_frame, ptr %15, i64 0, i32 48, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  %23 = getelementptr inbounds %struct.x264_frame, ptr %15, i64 0, i32 43
  %24 = load ptr, ptr %23, align 16, !tbaa !70
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 8
  %26 = load i32, ptr %25, align 16, !tbaa !72
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [2 x i16], ptr %24, i64 %27
  store ptr %28, ptr %5, align 16, !tbaa !70
  %29 = getelementptr inbounds ptr, ptr %5, i64 1
  %30 = getelementptr inbounds %struct.x264_frame, ptr %15, i64 0, i32 43, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !70
  %32 = getelementptr inbounds [2 x i16], ptr %31, i64 %27
  store ptr %32, ptr %29, align 8, !tbaa !70
  %33 = getelementptr inbounds %struct.x264_frame, ptr %15, i64 0, i32 41
  %34 = load ptr, ptr %33, align 16, !tbaa !73
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %36 = load i32, ptr %35, align 8, !tbaa !76
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %34, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !38
  %40 = getelementptr inbounds %struct.x264_frame, ptr %15, i64 0, i32 42
  %41 = load ptr, ptr %40, align 8, !tbaa !77
  %42 = getelementptr inbounds i8, ptr %41, i64 %37
  %43 = load i8, ptr %42, align 1, !tbaa !38
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  store i32 %44, ptr %45, align 4, !tbaa !39
  br label %52

46:                                               ; preds = %157
  %47 = getelementptr inbounds i8, ptr %17, i64 %20
  %48 = getelementptr inbounds i8, ptr %22, i64 %20
  %49 = load i16, ptr %3, align 2, !tbaa !38
  %50 = and i16 %49, -32640
  %51 = icmp eq i16 %50, -32640
  br i1 %51, label %162, label %171

52:                                               ; preds = %13, %157
  %53 = phi i64 [ 0, %13 ], [ %160, %157 ]
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %53, i64 11
  %55 = load i8, ptr %54, align 1, !tbaa !38
  %56 = sext i8 %55 to i32
  %57 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %53, i64 11
  %58 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %53, i64 4
  %59 = load i8, ptr %58, align 4, !tbaa !38
  %60 = sext i8 %59 to i32
  %61 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %53, i64 4
  %62 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %53, i64 8
  %63 = load i8, ptr %62, align 8, !tbaa !38
  %64 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %53, i64 8
  %65 = icmp eq i8 %63, -2
  br i1 %65, label %66, label %70

66:                                               ; preds = %52
  %67 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %53, i64 3
  %68 = load i8, ptr %67, align 1, !tbaa !38
  %69 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %53, i64 3
  br label %70

70:                                               ; preds = %66, %52
  %71 = phi ptr [ %69, %66 ], [ %64, %52 ]
  %72 = phi i8 [ %68, %66 ], [ %63, %52 ]
  %73 = sext i8 %72 to i32
  %74 = tail call i32 @llvm.umin.i32(i32 %60, i32 %73)
  %75 = tail call i32 @llvm.umin.i32(i32 %74, i32 %56)
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = getelementptr inbounds [2 x [2 x i16]], ptr %4, i64 0, i64 %53
  store i32 0, ptr %78, align 4, !tbaa !38
  br label %135

79:                                               ; preds = %70
  %80 = icmp uge i32 %74, %56
  %81 = zext i1 %80 to i32
  %82 = icmp eq i32 %75, %60
  %83 = zext i1 %82 to i32
  %84 = add nuw nsw i32 %83, %81
  %85 = icmp eq i32 %75, %73
  %86 = zext i1 %85 to i32
  %87 = add nuw nsw i32 %84, %86
  %88 = icmp ugt i32 %87, 1
  br i1 %88, label %89, label %125

89:                                               ; preds = %79
  %90 = getelementptr inbounds [2 x [2 x i16]], ptr %4, i64 0, i64 %53
  %91 = load i16, ptr %57, align 2, !tbaa !66
  %92 = sext i16 %91 to i32
  %93 = load i16, ptr %61, align 2, !tbaa !66
  %94 = sext i16 %93 to i32
  %95 = load i16, ptr %71, align 2, !tbaa !66
  %96 = sext i16 %95 to i32
  %97 = sub nsw i32 %92, %94
  %98 = tail call i32 @llvm.smin.i32(i32 %97, i32 0)
  %99 = tail call i32 @llvm.smax.i32(i32 %92, i32 %94)
  %100 = add nsw i32 %98, %94
  %101 = tail call i32 @llvm.smax.i32(i32 %100, i32 %96)
  %102 = sub nsw i32 %99, %101
  %103 = tail call i32 @llvm.smin.i32(i32 %102, i32 0)
  %104 = add nsw i32 %103, %101
  %105 = trunc i32 %104 to i16
  store i16 %105, ptr %90, align 4, !tbaa !66
  %106 = getelementptr inbounds i16, ptr %57, i64 1
  %107 = load i16, ptr %106, align 2, !tbaa !66
  %108 = sext i16 %107 to i32
  %109 = getelementptr inbounds i16, ptr %61, i64 1
  %110 = load i16, ptr %109, align 2, !tbaa !66
  %111 = sext i16 %110 to i32
  %112 = getelementptr inbounds i16, ptr %71, i64 1
  %113 = load i16, ptr %112, align 2, !tbaa !66
  %114 = sext i16 %113 to i32
  %115 = sub nsw i32 %108, %111
  %116 = tail call i32 @llvm.smin.i32(i32 %115, i32 0)
  %117 = tail call i32 @llvm.smax.i32(i32 %108, i32 %111)
  %118 = add nsw i32 %116, %111
  %119 = tail call i32 @llvm.smax.i32(i32 %118, i32 %114)
  %120 = sub nsw i32 %117, %119
  %121 = tail call i32 @llvm.smin.i32(i32 %120, i32 0)
  %122 = add nsw i32 %121, %119
  %123 = trunc i32 %122 to i16
  %124 = getelementptr inbounds i16, ptr %90, i64 1
  store i16 %123, ptr %124, align 2, !tbaa !66
  br label %135

125:                                              ; preds = %79
  br i1 %80, label %126, label %129

126:                                              ; preds = %125
  %127 = load i32, ptr %57, align 4, !tbaa !38
  %128 = getelementptr inbounds [2 x [2 x i16]], ptr %4, i64 0, i64 %53
  store i32 %127, ptr %128, align 4, !tbaa !38
  br label %135

129:                                              ; preds = %125
  %130 = getelementptr inbounds [2 x [2 x i16]], ptr %4, i64 0, i64 %53
  br i1 %82, label %131, label %133

131:                                              ; preds = %129
  %132 = load i32, ptr %61, align 4, !tbaa !38
  store i32 %132, ptr %130, align 4, !tbaa !38
  br label %135

133:                                              ; preds = %129
  %134 = load i32, ptr %71, align 4, !tbaa !38
  store i32 %134, ptr %130, align 4, !tbaa !38
  br label %135

135:                                              ; preds = %133, %131, %126, %89, %77
  %136 = phi i32 [ -1, %77 ], [ %75, %126 ], [ %75, %133 ], [ %75, %131 ], [ %75, %89 ]
  %137 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %53, i64 12
  %138 = and i32 %136, 255
  %139 = mul nuw i32 %138, 16843009
  store i32 %139, ptr %137, align 4, !tbaa !38
  %140 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %53, i64 20
  store i32 %139, ptr %140, align 4, !tbaa !38
  %141 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %53, i64 28
  store i32 %139, ptr %141, align 4, !tbaa !38
  %142 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %53, i64 36
  store i32 %139, ptr %142, align 4, !tbaa !38
  %143 = getelementptr inbounds [2 x [2 x i16]], ptr %4, i64 0, i64 %53
  %144 = load i32, ptr %143, align 4, !tbaa !38
  %145 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %53, i64 12
  %146 = zext i32 %144 to i64
  %147 = mul nuw i64 %146, 4294967297
  br label %148

148:                                              ; preds = %148, %135
  %149 = phi ptr [ %155, %148 ], [ %145, %135 ]
  %150 = phi i32 [ %154, %148 ], [ 4, %135 ]
  store i64 %147, ptr %149, align 8, !tbaa !38
  %151 = getelementptr inbounds i8, ptr %149, i64 8
  store i64 %147, ptr %151, align 8, !tbaa !38
  %152 = getelementptr inbounds i8, ptr %149, i64 32
  store i64 %147, ptr %152, align 8, !tbaa !38
  %153 = getelementptr inbounds i8, ptr %149, i64 40
  store i64 %147, ptr %153, align 8, !tbaa !38
  %154 = add nsw i32 %150, -2
  %155 = getelementptr inbounds i8, ptr %149, i64 64
  %156 = icmp eq i32 %154, 0
  br i1 %156, label %157, label %148, !llvm.loop !78

157:                                              ; preds = %148
  %158 = trunc i32 %136 to i8
  %159 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 %53
  store i8 %158, ptr %159, align 1, !tbaa !38
  %160 = add nuw nsw i64 %53, 1
  %161 = icmp eq i64 %53, 0
  br i1 %161, label %52, label %46, !llvm.loop !81

162:                                              ; preds = %46
  %163 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  store i32 0, ptr %163, align 4, !tbaa !38
  %164 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 20
  store i32 0, ptr %164, align 4, !tbaa !38
  %165 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 28
  store i32 0, ptr %165, align 4, !tbaa !38
  %166 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 36
  store i32 0, ptr %166, align 4, !tbaa !38
  %167 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 12
  store i32 0, ptr %167, align 4, !tbaa !38
  %168 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 20
  store i32 0, ptr %168, align 4, !tbaa !38
  %169 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 28
  store i32 0, ptr %169, align 4, !tbaa !38
  %170 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 36
  store i32 0, ptr %170, align 4, !tbaa !38
  br label %310

171:                                              ; preds = %46
  %172 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %173 = load i32, ptr %172, align 4, !tbaa !82
  %174 = icmp sgt i32 %173, 1
  br i1 %174, label %175, label %187

175:                                              ; preds = %171
  %176 = getelementptr inbounds [2 x i16], ptr %4, i64 0, i64 1
  %177 = load i16, ptr %176, align 2, !tbaa !66
  %178 = sext i16 %177 to i32
  %179 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21, i64 1
  %180 = load i32, ptr %179, align 4, !tbaa !34
  %181 = icmp slt i32 %180, %178
  %182 = getelementptr inbounds [2 x [2 x i16]], ptr %4, i64 0, i64 1, i64 1
  %183 = load i16, ptr %182, align 2
  %184 = sext i16 %183 to i32
  %185 = icmp slt i32 %180, %184
  %186 = select i1 %181, i1 true, i1 %185
  br i1 %186, label %310, label %187

187:                                              ; preds = %175, %171
  %188 = load i64, ptr %4, align 8, !tbaa !38
  %189 = icmp eq i64 %188, 0
  %190 = icmp eq i8 %39, 0
  %191 = select i1 %189, i1 true, i1 %190
  %192 = icmp eq i8 %39, 1
  %193 = select i1 %191, i1 true, i1 %192
  %194 = icmp eq i8 %39, 2
  %195 = select i1 %193, i1 true, i1 %194
  %196 = icmp eq i8 %39, 3
  %197 = select i1 %195, i1 true, i1 %196
  br i1 %197, label %310, label %198

198:                                              ; preds = %187
  %199 = load i8, ptr %3, align 2, !tbaa !38
  %200 = icmp ne i8 %199, 0
  %201 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  %202 = load i8, ptr %201, align 1
  %203 = icmp ne i8 %202, 0
  %204 = select i1 %200, i1 %203, i1 false
  br i1 %204, label %310, label %205

205:                                              ; preds = %198
  %206 = sub nsw i32 16, %44
  %207 = sub nsw i32 17, %44
  %208 = icmp eq i8 %43, 14
  %209 = select i1 %208, i32 2, i32 1
  %210 = ashr i32 %206, 1
  %211 = lshr i32 4, %210
  %212 = icmp ult i8 %43, 17
  br i1 %212, label %213, label %310

213:                                              ; preds = %205
  %214 = and i32 %206, 1
  %215 = lshr exact i32 4, %214
  %216 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 2
  %217 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 3
  %218 = icmp eq i8 %199, 0
  %219 = shl nuw nsw i32 %215, 2
  %220 = add nsw i32 %219, -2
  %221 = tail call i32 @llvm.fshl.i32(i32 2, i32 %220, i32 31)
  %222 = icmp eq i32 %210, 2
  %223 = icmp eq i32 %210, 1
  %224 = icmp eq i8 %202, 0
  %225 = shl nuw nsw i32 %215, 2
  %226 = add nsw i32 %225, -2
  %227 = tail call i32 @llvm.fshl.i32(i32 2, i32 %226, i32 31)
  %228 = icmp eq i32 %210, 2
  %229 = icmp eq i32 %210, 1
  br label %230

230:                                              ; preds = %213, %307
  %231 = phi i32 [ 0, %213 ], [ %308, %307 ]
  %232 = and i32 %231, 1
  %233 = lshr i32 %231, 1
  %234 = load i32, ptr %216, align 8, !tbaa !83
  %235 = mul nsw i32 %234, %233
  %236 = add nsw i32 %235, %232
  %237 = load i32, ptr %217, align 4, !tbaa !84
  %238 = mul nsw i32 %237, %233
  %239 = add nsw i32 %238, %232
  %240 = mul nsw i32 %239, 3
  %241 = sext i32 %236 to i64
  %242 = getelementptr inbounds i8, ptr %47, i64 %241
  %243 = load i8, ptr %242, align 1, !tbaa !38
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %251, label %245

245:                                              ; preds = %230
  %246 = icmp slt i8 %243, 0
  br i1 %246, label %247, label %307

247:                                              ; preds = %245
  %248 = getelementptr inbounds i8, ptr %48, i64 %241
  %249 = load i8, ptr %248, align 1, !tbaa !38
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %251, label %307

251:                                              ; preds = %247, %230
  %252 = phi i64 [ 0, %230 ], [ 1, %247 ]
  %253 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 %252
  %254 = load ptr, ptr %253, align 8, !tbaa !70
  %255 = sext i32 %240 to i64
  %256 = getelementptr inbounds [2 x i16], ptr %254, i64 %255
  %257 = load i16, ptr %256, align 2, !tbaa !66
  %258 = tail call i16 @llvm.abs.i16(i16 %257, i1 false)
  %259 = icmp ult i16 %258, 2
  br i1 %259, label %260, label %307

260:                                              ; preds = %251
  %261 = getelementptr inbounds [2 x i16], ptr %254, i64 %255, i64 1
  %262 = load i16, ptr %261, align 2, !tbaa !66
  %263 = tail call i16 @llvm.abs.i16(i16 %262, i1 false)
  %264 = icmp ult i16 %263, 2
  br i1 %264, label %265, label %307

265:                                              ; preds = %260
  br i1 %218, label %266, label %286

266:                                              ; preds = %265
  %267 = shl nuw nsw i32 %232, 1
  %268 = shl i32 %231, 3
  %269 = or disjoint i32 %267, %268
  %270 = or i32 %269, 12
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 %271
  switch i32 %221, label %286 [
    i32 7, label %279
    i32 3, label %273
  ]

273:                                              ; preds = %266
  store i64 0, ptr %272, align 8, !tbaa !38
  br i1 %222, label %286, label %274

274:                                              ; preds = %273
  %275 = getelementptr inbounds i8, ptr %272, i64 32
  store i64 0, ptr %275, align 8, !tbaa !38
  br i1 %223, label %286, label %276

276:                                              ; preds = %274
  %277 = getelementptr inbounds i8, ptr %272, i64 64
  store i64 0, ptr %277, align 8, !tbaa !38
  %278 = getelementptr inbounds i8, ptr %272, i64 96
  store i64 0, ptr %278, align 8, !tbaa !38
  br label %286

279:                                              ; preds = %266, %279
  %280 = phi ptr [ %284, %279 ], [ %272, %266 ]
  %281 = phi i32 [ %283, %279 ], [ %211, %266 ]
  %282 = getelementptr inbounds i8, ptr %280, i64 32
  %283 = add nsw i32 %281, -2
  %284 = getelementptr inbounds i8, ptr %280, i64 64
  %285 = icmp eq i32 %283, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %280, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %282, i8 0, i64 16, i1 false)
  br i1 %285, label %286, label %279, !llvm.loop !78

286:                                              ; preds = %279, %276, %274, %273, %266, %265
  br i1 %224, label %287, label %307

287:                                              ; preds = %286
  %288 = shl nuw nsw i32 %232, 1
  %289 = shl i32 %231, 3
  %290 = or disjoint i32 %288, %289
  %291 = or i32 %290, 12
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 %292
  switch i32 %227, label %307 [
    i32 7, label %300
    i32 3, label %294
  ]

294:                                              ; preds = %287
  store i64 0, ptr %293, align 8, !tbaa !38
  br i1 %228, label %307, label %295

295:                                              ; preds = %294
  %296 = getelementptr inbounds i8, ptr %293, i64 32
  store i64 0, ptr %296, align 8, !tbaa !38
  br i1 %229, label %307, label %297

297:                                              ; preds = %295
  %298 = getelementptr inbounds i8, ptr %293, i64 64
  store i64 0, ptr %298, align 8, !tbaa !38
  %299 = getelementptr inbounds i8, ptr %293, i64 96
  store i64 0, ptr %299, align 8, !tbaa !38
  br label %307

300:                                              ; preds = %287, %300
  %301 = phi ptr [ %305, %300 ], [ %293, %287 ]
  %302 = phi i32 [ %304, %300 ], [ %211, %287 ]
  %303 = getelementptr inbounds i8, ptr %301, i64 32
  %304 = add nsw i32 %302, -2
  %305 = getelementptr inbounds i8, ptr %301, i64 64
  %306 = icmp eq i32 %304, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %301, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %303, i8 0, i64 16, i1 false)
  br i1 %306, label %307, label %300, !llvm.loop !78

307:                                              ; preds = %300, %297, %295, %294, %287, %286, %260, %251, %247, %245
  %308 = add nuw nsw i32 %231, %209
  %309 = icmp slt i32 %308, %207
  br i1 %309, label %230, label %310, !llvm.loop !85

310:                                              ; preds = %307, %205, %162, %175, %187, %198
  %311 = phi i32 [ 1, %162 ], [ 0, %175 ], [ 1, %198 ], [ 1, %187 ], [ 1, %205 ], [ 1, %307 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  br label %539

312:                                              ; preds = %9
  %313 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  %314 = load i32, ptr %313, align 4, !tbaa !86
  %315 = shl nsw i32 %314, 4
  %316 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %317 = load i32, ptr %316, align 4, !tbaa !87
  %318 = mul nsw i32 %315, %317
  %319 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 4
  %320 = load i32, ptr %319, align 16, !tbaa !88
  %321 = shl nsw i32 %320, 2
  %322 = shl nsw i32 %314, 2
  %323 = mul nsw i32 %322, %317
  %324 = shl nsw i32 %320, 1
  %325 = add nsw i32 %324, %323
  %326 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49
  %327 = load ptr, ptr %326, align 16, !tbaa !70
  %328 = getelementptr inbounds %struct.x264_frame, ptr %327, i64 0, i32 41
  %329 = load ptr, ptr %328, align 16, !tbaa !73
  %330 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %331 = load i32, ptr %330, align 8, !tbaa !76
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i8, ptr %329, i64 %332
  %334 = load i8, ptr %333, align 1, !tbaa !38
  %335 = getelementptr inbounds %struct.x264_frame, ptr %327, i64 0, i32 42
  %336 = load ptr, ptr %335, align 8, !tbaa !77
  %337 = getelementptr inbounds i8, ptr %336, i64 %332
  %338 = load i8, ptr %337, align 1, !tbaa !38
  %339 = zext i8 %338 to i32
  %340 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 12
  store i32 0, ptr %340, align 4, !tbaa !38
  %341 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 20
  store i32 0, ptr %341, align 4, !tbaa !38
  %342 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 28
  store i32 0, ptr %342, align 4, !tbaa !38
  %343 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 36
  store i32 0, ptr %343, align 4, !tbaa !38
  %344 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  store i32 %339, ptr %344, align 4, !tbaa !39
  %345 = icmp ult i8 %334, 4
  br i1 %345, label %346, label %368

346:                                              ; preds = %312
  %347 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  store i32 0, ptr %347, align 4, !tbaa !38
  %348 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 20
  store i32 0, ptr %348, align 4, !tbaa !38
  %349 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 28
  store i32 0, ptr %349, align 4, !tbaa !38
  %350 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 36
  store i32 0, ptr %350, align 4, !tbaa !38
  %351 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 12
  br label %352

352:                                              ; preds = %352, %346
  %353 = phi ptr [ %357, %352 ], [ %351, %346 ]
  %354 = phi i32 [ %356, %352 ], [ 4, %346 ]
  %355 = getelementptr inbounds i8, ptr %353, i64 32
  %356 = add nsw i32 %354, -2
  %357 = getelementptr inbounds i8, ptr %353, i64 64
  %358 = icmp eq i32 %356, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %353, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %355, i8 0, i64 16, i1 false)
  br i1 %358, label %359, label %352, !llvm.loop !78

359:                                              ; preds = %352
  %360 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 12
  br label %361

361:                                              ; preds = %361, %359
  %362 = phi ptr [ %366, %361 ], [ %360, %359 ]
  %363 = phi i32 [ %365, %361 ], [ 4, %359 ]
  %364 = getelementptr inbounds i8, ptr %362, i64 32
  %365 = add nsw i32 %363, -2
  %366 = getelementptr inbounds i8, ptr %362, i64 64
  %367 = icmp eq i32 %365, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %362, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %364, i8 0, i64 16, i1 false)
  br i1 %367, label %539, label %361, !llvm.loop !78

368:                                              ; preds = %312
  %369 = sub nsw i32 16, %339
  %370 = sub nsw i32 17, %339
  %371 = icmp eq i8 %338, 14
  %372 = select i1 %371, i32 2, i32 1
  %373 = ashr i32 %369, 1
  %374 = lshr i32 4, %373
  %375 = icmp ugt i8 %338, 16
  br i1 %375, label %536, label %376

376:                                              ; preds = %368
  %377 = and i32 %369, 1
  %378 = lshr exact i32 4, %377
  %379 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 2
  %380 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %381 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 80
  %382 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 3
  %383 = add i32 %321, %318
  %384 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %385 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21, i64 1
  %386 = icmp eq i32 %373, 2
  %387 = icmp eq i32 %373, 1
  %388 = icmp eq i32 %373, 2
  %389 = icmp eq i32 %373, 1
  %390 = shl nuw nsw i32 %378, 2
  %391 = add nsw i32 %390, -2
  %392 = tail call i32 @llvm.fshl.i32(i32 2, i32 %391, i32 31)
  %393 = icmp eq i32 %373, 2
  %394 = icmp eq i32 %373, 1
  %395 = icmp eq i32 %373, 2
  %396 = icmp eq i32 %373, 1
  %397 = icmp eq i32 %377, 0
  br label %398

398:                                              ; preds = %376, %533
  %399 = phi i1 [ %375, %376 ], [ %535, %533 ]
  %400 = phi i32 [ 0, %376 ], [ %534, %533 ]
  %401 = and i32 %400, 1
  %402 = lshr i32 %400, 1
  %403 = or disjoint i32 %325, %401
  %404 = load i32, ptr %379, align 8, !tbaa !83
  %405 = mul nsw i32 %404, %402
  %406 = add nsw i32 %403, %405
  %407 = load ptr, ptr %326, align 16, !tbaa !70
  %408 = getelementptr inbounds %struct.x264_frame, ptr %407, i64 0, i32 48
  %409 = load ptr, ptr %408, align 8, !tbaa !70
  %410 = sext i32 %406 to i64
  %411 = getelementptr inbounds i8, ptr %409, i64 %410
  %412 = load i8, ptr %411, align 1, !tbaa !38
  %413 = sext i8 %412 to i32
  %414 = load i32, ptr %380, align 4, !tbaa !89
  %415 = ashr i32 %413, %414
  %416 = add nsw i32 %415, 2
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 83, i64 %417
  %419 = load i8, ptr %418, align 1, !tbaa !38
  %420 = sext i8 %419 to i32
  %421 = shl i32 %420, %414
  %422 = and i32 %414, %413
  %423 = add nsw i32 %421, %422
  %424 = icmp sgt i32 %423, -1
  br i1 %424, label %425, label %536

425:                                              ; preds = %398
  %426 = load ptr, ptr %381, align 8, !tbaa !90
  %427 = zext nneg i32 %423 to i64
  %428 = getelementptr inbounds [4 x i16], ptr %426, i64 %427
  %429 = load i16, ptr %428, align 2, !tbaa !66
  %430 = sext i16 %429 to i32
  %431 = getelementptr inbounds %struct.x264_frame, ptr %407, i64 0, i32 43
  %432 = load ptr, ptr %431, align 16, !tbaa !70
  %433 = load i32, ptr %382, align 4, !tbaa !84
  %434 = mul i32 %433, %402
  %435 = add i32 %434, %401
  %436 = mul i32 %435, 3
  %437 = add i32 %383, %436
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds [2 x i16], ptr %432, i64 %438
  %440 = load i16, ptr %439, align 2, !tbaa !66
  %441 = sext i16 %440 to i32
  %442 = mul nsw i32 %441, %430
  %443 = add nsw i32 %442, 128
  %444 = ashr i32 %443, 8
  %445 = getelementptr inbounds i16, ptr %439, i64 1
  %446 = load i16, ptr %445, align 2, !tbaa !66
  %447 = sext i16 %446 to i32
  %448 = mul nsw i32 %447, %430
  %449 = add nsw i32 %448, 128
  %450 = ashr i32 %449, 8
  %451 = load i32, ptr %384, align 4, !tbaa !82
  %452 = icmp sgt i32 %451, 1
  br i1 %452, label %453, label %459

453:                                              ; preds = %425
  %454 = load i32, ptr %385, align 4, !tbaa !34
  %455 = icmp sgt i32 %450, %454
  %456 = sub nsw i32 %450, %447
  %457 = icmp sgt i32 %456, %454
  %458 = select i1 %455, i1 true, i1 %457
  br i1 %458, label %536, label %459

459:                                              ; preds = %453, %425
  %460 = shl nuw nsw i32 %401, 1
  %461 = trunc i32 %423 to i16
  %462 = shl i32 %400, 3
  %463 = or disjoint i32 %460, %462
  %464 = or i32 %463, 12
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 %465
  %467 = and i32 %423, 255
  %468 = and i16 %461, 255
  %469 = mul nuw i16 %468, 257
  %470 = mul nuw i32 %467, 16843009
  br i1 %397, label %477, label %471

471:                                              ; preds = %459
  store i16 %469, ptr %466, align 2, !tbaa !38
  br i1 %388, label %483, label %472

472:                                              ; preds = %471
  %473 = getelementptr inbounds i8, ptr %466, i64 8
  store i16 %469, ptr %473, align 2, !tbaa !38
  br i1 %389, label %483, label %474

474:                                              ; preds = %472
  %475 = getelementptr inbounds i8, ptr %466, i64 16
  store i16 %469, ptr %475, align 2, !tbaa !38
  %476 = getelementptr inbounds i8, ptr %466, i64 24
  store i16 %469, ptr %476, align 2, !tbaa !38
  br label %483

477:                                              ; preds = %459
  store i32 %470, ptr %466, align 4, !tbaa !38
  br i1 %386, label %483, label %478

478:                                              ; preds = %477
  %479 = getelementptr inbounds i8, ptr %466, i64 8
  store i32 %470, ptr %479, align 4, !tbaa !38
  br i1 %387, label %483, label %480

480:                                              ; preds = %478
  %481 = getelementptr inbounds i8, ptr %466, i64 16
  store i32 %470, ptr %481, align 4, !tbaa !38
  %482 = getelementptr inbounds i8, ptr %466, i64 24
  store i32 %470, ptr %482, align 4, !tbaa !38
  br label %483

483:                                              ; preds = %480, %478, %477, %474, %472, %471
  %484 = and i32 %444, 65535
  %485 = shl i32 %450, 16
  %486 = or disjoint i32 %485, %484
  %487 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 %465
  %488 = zext i32 %486 to i64
  %489 = mul nuw i64 %488, 4294967297
  switch i32 %392, label %505 [
    i32 7, label %496
    i32 3, label %490
  ]

490:                                              ; preds = %483
  store i64 %489, ptr %487, align 8, !tbaa !38
  br i1 %393, label %505, label %491

491:                                              ; preds = %490
  %492 = getelementptr inbounds i8, ptr %487, i64 32
  store i64 %489, ptr %492, align 8, !tbaa !38
  br i1 %394, label %505, label %493

493:                                              ; preds = %491
  %494 = getelementptr inbounds i8, ptr %487, i64 64
  store i64 %489, ptr %494, align 8, !tbaa !38
  %495 = getelementptr inbounds i8, ptr %487, i64 96
  store i64 %489, ptr %495, align 8, !tbaa !38
  br label %505

496:                                              ; preds = %483, %496
  %497 = phi ptr [ %503, %496 ], [ %487, %483 ]
  %498 = phi i32 [ %502, %496 ], [ %374, %483 ]
  store i64 %489, ptr %497, align 8, !tbaa !38
  %499 = getelementptr inbounds i8, ptr %497, i64 8
  store i64 %489, ptr %499, align 8, !tbaa !38
  %500 = getelementptr inbounds i8, ptr %497, i64 32
  store i64 %489, ptr %500, align 8, !tbaa !38
  %501 = getelementptr inbounds i8, ptr %497, i64 40
  store i64 %489, ptr %501, align 8, !tbaa !38
  %502 = add nsw i32 %498, -2
  %503 = getelementptr inbounds i8, ptr %497, i64 64
  %504 = icmp eq i32 %502, 0
  br i1 %504, label %505, label %496, !llvm.loop !78

505:                                              ; preds = %496, %493, %491, %490, %483
  %506 = load i16, ptr %439, align 2, !tbaa !66
  %507 = load i16, ptr %445, align 2, !tbaa !66
  %508 = zext i16 %507 to i32
  %509 = sub nsw i32 %450, %508
  %510 = trunc i32 %444 to i16
  %511 = sub i16 %510, %506
  %512 = zext i16 %511 to i32
  %513 = shl i32 %509, 16
  %514 = or disjoint i32 %513, %512
  %515 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 %465
  %516 = zext i32 %514 to i64
  %517 = mul nuw i64 %516, 4294967297
  switch i32 %392, label %533 [
    i32 7, label %524
    i32 3, label %518
  ]

518:                                              ; preds = %505
  store i64 %517, ptr %515, align 8, !tbaa !38
  br i1 %395, label %533, label %519

519:                                              ; preds = %518
  %520 = getelementptr inbounds i8, ptr %515, i64 32
  store i64 %517, ptr %520, align 8, !tbaa !38
  br i1 %396, label %533, label %521

521:                                              ; preds = %519
  %522 = getelementptr inbounds i8, ptr %515, i64 64
  store i64 %517, ptr %522, align 8, !tbaa !38
  %523 = getelementptr inbounds i8, ptr %515, i64 96
  store i64 %517, ptr %523, align 8, !tbaa !38
  br label %533

524:                                              ; preds = %505, %524
  %525 = phi ptr [ %531, %524 ], [ %515, %505 ]
  %526 = phi i32 [ %530, %524 ], [ %374, %505 ]
  store i64 %517, ptr %525, align 8, !tbaa !38
  %527 = getelementptr inbounds i8, ptr %525, i64 8
  store i64 %517, ptr %527, align 8, !tbaa !38
  %528 = getelementptr inbounds i8, ptr %525, i64 32
  store i64 %517, ptr %528, align 8, !tbaa !38
  %529 = getelementptr inbounds i8, ptr %525, i64 40
  store i64 %517, ptr %529, align 8, !tbaa !38
  %530 = add nsw i32 %526, -2
  %531 = getelementptr inbounds i8, ptr %525, i64 64
  %532 = icmp eq i32 %530, 0
  br i1 %532, label %533, label %524, !llvm.loop !78

533:                                              ; preds = %524, %505, %518, %519, %521
  %534 = add nuw nsw i32 %400, %372
  %535 = icmp sge i32 %534, %370
  br i1 %535, label %536, label %398, !llvm.loop !91

536:                                              ; preds = %533, %398, %453, %368
  %537 = phi i1 [ %375, %368 ], [ %535, %533 ], [ %399, %398 ], [ %399, %453 ]
  %538 = zext i1 %537 to i32
  br label %539

539:                                              ; preds = %361, %536, %310
  %540 = phi i32 [ %311, %310 ], [ %538, %536 ], [ 1, %361 ]
  %541 = icmp ne ptr %1, null
  %542 = icmp ne i32 %540, 0
  %543 = and i1 %541, %542
  br i1 %543, label %544, label %663

544:                                              ; preds = %539
  %545 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7
  %546 = load i32, ptr %545, align 8, !tbaa !38
  %547 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 12
  %548 = load i32, ptr %547, align 4, !tbaa !38
  %549 = xor i32 %548, %546
  %550 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 1
  %551 = load i32, ptr %550, align 8, !tbaa !38
  %552 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 12
  %553 = load i32, ptr %552, align 4, !tbaa !38
  %554 = xor i32 %553, %551
  %555 = or i32 %554, %549
  %556 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8
  %557 = load i8, ptr %556, align 8, !tbaa !38
  %558 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %559 = load i8, ptr %558, align 1, !tbaa !38
  %560 = xor i8 %559, %557
  %561 = sext i8 %560 to i32
  %562 = or i32 %555, %561
  %563 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 1
  %564 = load i8, ptr %563, align 4, !tbaa !38
  %565 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 12
  %566 = load i8, ptr %565, align 1, !tbaa !38
  %567 = xor i8 %566, %564
  %568 = sext i8 %567 to i32
  %569 = or i32 %562, %568
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %571, label %601

571:                                              ; preds = %544
  %572 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %573 = load i32, ptr %572, align 4, !tbaa !39
  %574 = icmp eq i32 %573, 16
  br i1 %574, label %601, label %575

575:                                              ; preds = %571
  %576 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 0, i64 3
  %577 = load i32, ptr %576, align 4, !tbaa !38
  %578 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 30
  %579 = load i32, ptr %578, align 4, !tbaa !38
  %580 = xor i32 %579, %577
  %581 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 1, i64 3
  %582 = load i32, ptr %581, align 4, !tbaa !38
  %583 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 30
  %584 = load i32, ptr %583, align 4, !tbaa !38
  %585 = xor i32 %584, %582
  %586 = or i32 %585, %580
  %587 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 0, i64 3
  %588 = load i8, ptr %587, align 1, !tbaa !38
  %589 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 30
  %590 = load i8, ptr %589, align 1, !tbaa !38
  %591 = xor i8 %590, %588
  %592 = sext i8 %591 to i32
  %593 = or i32 %586, %592
  %594 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 1, i64 3
  %595 = load i8, ptr %594, align 1, !tbaa !38
  %596 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 30
  %597 = load i8, ptr %596, align 1, !tbaa !38
  %598 = xor i8 %597, %595
  %599 = sext i8 %598 to i32
  %600 = or i32 %593, %599
  br label %601

601:                                              ; preds = %575, %571, %544
  %602 = phi i32 [ %569, %544 ], [ %600, %575 ], [ 0, %571 ]
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %604, label %660

604:                                              ; preds = %601
  %605 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %606 = load i32, ptr %605, align 4, !tbaa !39
  %607 = icmp eq i32 %606, 13
  br i1 %607, label %608, label %660

608:                                              ; preds = %604
  %609 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 0, i64 1
  %610 = load i32, ptr %609, align 4, !tbaa !38
  %611 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 14
  %612 = load i32, ptr %611, align 4, !tbaa !38
  %613 = xor i32 %612, %610
  %614 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 1, i64 1
  %615 = load i32, ptr %614, align 4, !tbaa !38
  %616 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 14
  %617 = load i32, ptr %616, align 4, !tbaa !38
  %618 = xor i32 %617, %615
  %619 = or i32 %618, %613
  %620 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 0, i64 2
  %621 = load i32, ptr %620, align 8, !tbaa !38
  %622 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 28
  %623 = load i32, ptr %622, align 4, !tbaa !38
  %624 = xor i32 %623, %621
  %625 = or i32 %619, %624
  %626 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 1, i64 2
  %627 = load i32, ptr %626, align 8, !tbaa !38
  %628 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 28
  %629 = load i32, ptr %628, align 4, !tbaa !38
  %630 = xor i32 %629, %627
  %631 = or i32 %625, %630
  %632 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 0, i64 1
  %633 = load i8, ptr %632, align 1, !tbaa !38
  %634 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 14
  %635 = load i8, ptr %634, align 1, !tbaa !38
  %636 = xor i8 %635, %633
  %637 = sext i8 %636 to i32
  %638 = or i32 %631, %637
  %639 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 1, i64 1
  %640 = load i8, ptr %639, align 1, !tbaa !38
  %641 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 14
  %642 = load i8, ptr %641, align 1, !tbaa !38
  %643 = xor i8 %642, %640
  %644 = sext i8 %643 to i32
  %645 = or i32 %638, %644
  %646 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 0, i64 2
  %647 = load i8, ptr %646, align 2, !tbaa !38
  %648 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 28
  %649 = load i8, ptr %648, align 1, !tbaa !38
  %650 = xor i8 %649, %647
  %651 = sext i8 %650 to i32
  %652 = or i32 %645, %651
  %653 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 1, i64 2
  %654 = load i8, ptr %653, align 2, !tbaa !38
  %655 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 28
  %656 = load i8, ptr %655, align 1, !tbaa !38
  %657 = xor i8 %656, %654
  %658 = sext i8 %657 to i32
  %659 = or i32 %652, %658
  br label %660

660:                                              ; preds = %608, %604, %601
  %661 = phi i32 [ %602, %601 ], [ %659, %608 ], [ 0, %604 ]
  store i32 %661, ptr %1, align 4, !tbaa !34
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %696, label %664

663:                                              ; preds = %539
  br i1 %542, label %664, label %696

664:                                              ; preds = %663, %660
  %665 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %666 = load i32, ptr %665, align 4, !tbaa !39
  %667 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 9
  br label %668

668:                                              ; preds = %664, %668
  %669 = phi i64 [ 0, %664 ], [ %694, %668 ]
  %670 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %669, i64 12
  %671 = load i32, ptr %670, align 4, !tbaa !38
  %672 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 %669
  store i32 %671, ptr %672, align 8, !tbaa !38
  %673 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %669, i64 14
  %674 = load i32, ptr %673, align 4, !tbaa !38
  %675 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 %669, i64 1
  store i32 %674, ptr %675, align 4, !tbaa !38
  %676 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %669, i64 28
  %677 = load i32, ptr %676, align 4, !tbaa !38
  %678 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 %669, i64 2
  store i32 %677, ptr %678, align 8, !tbaa !38
  %679 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %669, i64 30
  %680 = load i32, ptr %679, align 4, !tbaa !38
  %681 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 %669, i64 3
  store i32 %680, ptr %681, align 4, !tbaa !38
  %682 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %669, i64 12
  %683 = load i8, ptr %682, align 1, !tbaa !38
  %684 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 %669
  store i8 %683, ptr %684, align 4, !tbaa !38
  %685 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %669, i64 14
  %686 = load i8, ptr %685, align 1, !tbaa !38
  %687 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 %669, i64 1
  store i8 %686, ptr %687, align 1, !tbaa !38
  %688 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %669, i64 28
  %689 = load i8, ptr %688, align 1, !tbaa !38
  %690 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 %669, i64 2
  store i8 %689, ptr %690, align 2, !tbaa !38
  %691 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %669, i64 30
  %692 = load i8, ptr %691, align 1, !tbaa !38
  %693 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 %669, i64 3
  store i8 %692, ptr %693, align 1, !tbaa !38
  store i32 %666, ptr %667, align 16, !tbaa !92
  %694 = add nuw nsw i64 %669, 1
  %695 = icmp eq i64 %669, 0
  br i1 %695, label %668, label %696, !llvm.loop !93

696:                                              ; preds = %668, %660, %663, %2
  %697 = phi i32 [ %540, %660 ], [ 0, %2 ], [ %540, %663 ], [ %540, %668 ]
  ret i32 %697
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_mb_predict_mv_ref16x16(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #2 {
  %6 = sext i32 %1 to i64
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 48, i64 %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %11 = load i32, ptr %10, align 16, !tbaa !94
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %21

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %6, i64 30
  %15 = load i8, ptr %14, align 1, !tbaa !38
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %6, i64 30
  %20 = load i32, ptr %19, align 4, !tbaa !38
  store i32 %20, ptr %3, align 4, !tbaa !38
  br label %21

21:                                               ; preds = %18, %13, %5
  %22 = phi i32 [ 1, %18 ], [ 0, %13 ], [ 0, %5 ]
  %23 = icmp eq i32 %2, 0
  br i1 %23, label %24, label %71

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 16
  %26 = load i32, ptr %25, align 16, !tbaa !95
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %71, label %28

28:                                               ; preds = %24
  %29 = icmp eq i32 %1, 0
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %31 = load ptr, ptr %30, align 8, !tbaa !96
  br i1 %29, label %43, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49
  %34 = load ptr, ptr %33, align 16, !tbaa !70
  %35 = getelementptr inbounds %struct.x264_frame, ptr %34, i64 0, i32 10
  %36 = load i32, ptr %35, align 8, !tbaa !97
  %37 = getelementptr inbounds %struct.x264_frame, ptr %31, i64 0, i32 10
  %38 = load i32, ptr %37, align 8, !tbaa !97
  %39 = xor i32 %38, -1
  %40 = add i32 %36, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.x264_frame, ptr %31, i64 0, i32 45, i64 1, i64 %41
  br label %55

43:                                               ; preds = %28
  %44 = getelementptr inbounds %struct.x264_frame, ptr %31, i64 0, i32 45
  %45 = getelementptr inbounds %struct.x264_frame, ptr %31, i64 0, i32 10
  %46 = load i32, ptr %45, align 8, !tbaa !97
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47
  %48 = load ptr, ptr %47, align 16, !tbaa !70
  %49 = getelementptr inbounds %struct.x264_frame, ptr %48, i64 0, i32 10
  %50 = load i32, ptr %49, align 8, !tbaa !97
  %51 = xor i32 %50, -1
  %52 = add i32 %46, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [17 x ptr], ptr %44, i64 0, i64 %53
  br label %55

55:                                               ; preds = %43, %32
  %56 = phi ptr [ %42, %32 ], [ %54, %43 ]
  %57 = load ptr, ptr %56, align 8, !tbaa !70
  %58 = load i16, ptr %57, align 2, !tbaa !66
  %59 = icmp eq i16 %58, 32767
  br i1 %59, label %71, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %62 = load i32, ptr %61, align 8, !tbaa !76
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x i16], ptr %57, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !38
  %66 = shl i32 %65, 1
  %67 = and i32 %66, -65538
  %68 = zext nneg i32 %22 to i64
  %69 = getelementptr inbounds [2 x i16], ptr %3, i64 %68
  store i32 %67, ptr %69, align 4, !tbaa !38
  %70 = add nuw nsw i32 %22, 1
  br label %71

71:                                               ; preds = %55, %60, %24, %21
  %72 = phi i32 [ %22, %24 ], [ %22, %21 ], [ %70, %60 ], [ %22, %55 ]
  %73 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 28
  %74 = load i32, ptr %73, align 16, !tbaa !98
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 34
  %79 = load i32, ptr %78, align 8, !tbaa !99
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [2 x i16], ptr %9, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !38
  %83 = zext nneg i32 %72 to i64
  %84 = getelementptr inbounds [2 x i16], ptr %3, i64 %83
  store i32 %82, ptr %84, align 4, !tbaa !38
  %85 = add nuw nsw i32 %72, 1
  br label %86

86:                                               ; preds = %77, %71
  %87 = phi i32 [ %85, %77 ], [ %72, %71 ]
  %88 = load i32, ptr %73, align 16, !tbaa !98
  %89 = and i32 %88, 2
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %126, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 35
  %93 = load i32, ptr %92, align 4, !tbaa !100
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [2 x i16], ptr %9, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !38
  %97 = sext i32 %87 to i64
  %98 = getelementptr inbounds [2 x i16], ptr %3, i64 %97
  store i32 %96, ptr %98, align 4, !tbaa !38
  %99 = add nsw i32 %87, 1
  %100 = load i32, ptr %73, align 16, !tbaa !98
  %101 = and i32 %100, 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %91
  %104 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 36
  %105 = load i32, ptr %104, align 16, !tbaa !101
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [2 x i16], ptr %9, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !38
  %109 = sext i32 %99 to i64
  %110 = getelementptr inbounds [2 x i16], ptr %3, i64 %109
  store i32 %108, ptr %110, align 4, !tbaa !38
  %111 = add nsw i32 %87, 2
  br label %112

112:                                              ; preds = %103, %91
  %113 = phi i32 [ %111, %103 ], [ %99, %91 ]
  %114 = load i32, ptr %73, align 16, !tbaa !98
  %115 = and i32 %114, 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 37
  %119 = load i32, ptr %118, align 4, !tbaa !102
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [2 x i16], ptr %9, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !38
  %123 = sext i32 %113 to i64
  %124 = getelementptr inbounds [2 x i16], ptr %3, i64 %123
  store i32 %122, ptr %124, align 4, !tbaa !38
  %125 = add nsw i32 %113, 1
  br label %126

126:                                              ; preds = %112, %117, %86
  %127 = phi i32 [ %125, %117 ], [ %113, %112 ], [ %87, %86 ]
  %128 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47
  %129 = load ptr, ptr %128, align 16, !tbaa !70
  %130 = getelementptr inbounds %struct.x264_frame, ptr %129, i64 0, i32 49
  %131 = load i32, ptr %130, align 8, !tbaa !34
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %259

133:                                              ; preds = %126
  %134 = icmp eq i32 %1, 0
  %135 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49
  %136 = select i1 %134, ptr %128, ptr %135
  %137 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %138 = load i32, ptr %137, align 4, !tbaa !87
  %139 = and i32 %138, 1
  %140 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %141 = load ptr, ptr %140, align 16, !tbaa !103
  %142 = load i32, ptr %141, align 16, !tbaa !104
  %143 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 12
  %144 = load i32, ptr %143, align 8, !tbaa !105
  %145 = mul nuw nsw i32 %144, %139
  %146 = add nsw i32 %145, %142
  %147 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %148 = load i32, ptr %147, align 4, !tbaa !89
  %149 = ashr i32 %2, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds ptr, ptr %136, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !70
  %153 = load i32, ptr %152, align 16, !tbaa !104
  %154 = icmp eq i32 %148, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %133
  %156 = xor i32 %138, %2
  %157 = and i32 %156, 1
  %158 = icmp eq i32 %157, 0
  %159 = select i1 %158, i32 0, i32 %144
  %160 = add nsw i32 %153, %159
  br label %161

161:                                              ; preds = %155, %133
  %162 = phi i32 [ %153, %133 ], [ %160, %155 ]
  %163 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %164 = load i32, ptr %163, align 8, !tbaa !76
  %165 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  %166 = sub i32 %146, %162
  %167 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %168 = load i32, ptr %167, align 4, !tbaa !106
  %169 = and i32 %168, %139
  %170 = zext nneg i32 %169 to i64
  %171 = getelementptr inbounds %struct.x264_frame, ptr %129, i64 0, i32 51, i64 %170
  %172 = load i16, ptr %171, align 2, !tbaa !66
  %173 = sext i16 %172 to i32
  %174 = mul nsw i32 %166, %173
  %175 = getelementptr inbounds %struct.x264_frame, ptr %129, i64 0, i32 44
  %176 = load ptr, ptr %175, align 16, !tbaa !107
  %177 = sext i32 %164 to i64
  %178 = getelementptr inbounds [2 x i16], ptr %176, i64 %177
  %179 = load i16, ptr %178, align 2, !tbaa !66
  %180 = sext i16 %179 to i32
  %181 = mul nsw i32 %174, %180
  %182 = add nsw i32 %181, 128
  %183 = lshr i32 %182, 8
  %184 = trunc i32 %183 to i16
  %185 = sext i32 %127 to i64
  %186 = getelementptr inbounds [2 x i16], ptr %3, i64 %185
  store i16 %184, ptr %186, align 2, !tbaa !66
  %187 = getelementptr inbounds [2 x i16], ptr %176, i64 %177, i64 1
  %188 = load i16, ptr %187, align 2, !tbaa !66
  %189 = sext i16 %188 to i32
  %190 = mul nsw i32 %174, %189
  %191 = add nsw i32 %190, 128
  %192 = lshr i32 %191, 8
  %193 = trunc i32 %192 to i16
  %194 = getelementptr inbounds [2 x i16], ptr %3, i64 %185, i64 1
  store i16 %193, ptr %194, align 2, !tbaa !66
  %195 = add nsw i32 %127, 1
  %196 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 4
  %197 = load i32, ptr %196, align 16, !tbaa !88
  %198 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %199 = load ptr, ptr %198, align 16, !tbaa !108
  %200 = getelementptr inbounds %struct.x264_sps_t, ptr %199, i64 0, i32 16
  %201 = load i32, ptr %200, align 4, !tbaa !109
  %202 = add nsw i32 %201, -1
  %203 = icmp slt i32 %197, %202
  br i1 %203, label %204, label %228

204:                                              ; preds = %161
  %205 = add nsw i32 %164, 1
  %206 = load i16, ptr %171, align 2, !tbaa !66
  %207 = sext i16 %206 to i32
  %208 = mul nsw i32 %166, %207
  %209 = sext i32 %205 to i64
  %210 = getelementptr inbounds [2 x i16], ptr %176, i64 %209
  %211 = load i16, ptr %210, align 2, !tbaa !66
  %212 = sext i16 %211 to i32
  %213 = mul nsw i32 %208, %212
  %214 = add nsw i32 %213, 128
  %215 = lshr i32 %214, 8
  %216 = trunc i32 %215 to i16
  %217 = sext i32 %195 to i64
  %218 = getelementptr inbounds [2 x i16], ptr %3, i64 %217
  store i16 %216, ptr %218, align 2, !tbaa !66
  %219 = getelementptr inbounds [2 x i16], ptr %176, i64 %209, i64 1
  %220 = load i16, ptr %219, align 2, !tbaa !66
  %221 = sext i16 %220 to i32
  %222 = mul nsw i32 %208, %221
  %223 = add nsw i32 %222, 128
  %224 = lshr i32 %223, 8
  %225 = trunc i32 %224 to i16
  %226 = getelementptr inbounds [2 x i16], ptr %3, i64 %217, i64 1
  store i16 %225, ptr %226, align 2, !tbaa !66
  %227 = add nsw i32 %127, 2
  br label %228

228:                                              ; preds = %204, %161
  %229 = phi i32 [ %227, %204 ], [ %195, %161 ]
  %230 = getelementptr inbounds %struct.x264_sps_t, ptr %199, i64 0, i32 17
  %231 = load i32, ptr %230, align 4, !tbaa !114
  %232 = add nsw i32 %231, -1
  %233 = icmp slt i32 %138, %232
  br i1 %233, label %234, label %259

234:                                              ; preds = %228
  %235 = load i32, ptr %165, align 4, !tbaa !86
  %236 = add nsw i32 %235, %164
  %237 = load i16, ptr %171, align 2, !tbaa !66
  %238 = sext i16 %237 to i32
  %239 = mul nsw i32 %166, %238
  %240 = sext i32 %236 to i64
  %241 = getelementptr inbounds [2 x i16], ptr %176, i64 %240
  %242 = load i16, ptr %241, align 2, !tbaa !66
  %243 = sext i16 %242 to i32
  %244 = mul nsw i32 %239, %243
  %245 = add nsw i32 %244, 128
  %246 = lshr i32 %245, 8
  %247 = trunc i32 %246 to i16
  %248 = sext i32 %229 to i64
  %249 = getelementptr inbounds [2 x i16], ptr %3, i64 %248
  store i16 %247, ptr %249, align 2, !tbaa !66
  %250 = getelementptr inbounds [2 x i16], ptr %176, i64 %240, i64 1
  %251 = load i16, ptr %250, align 2, !tbaa !66
  %252 = sext i16 %251 to i32
  %253 = mul nsw i32 %239, %252
  %254 = add nsw i32 %253, 128
  %255 = lshr i32 %254, 8
  %256 = trunc i32 %255 to i16
  %257 = getelementptr inbounds [2 x i16], ptr %3, i64 %248, i64 1
  store i16 %256, ptr %257, align 2, !tbaa !66
  %258 = add nsw i32 %229, 1
  br label %259

259:                                              ; preds = %228, %234, %126
  %260 = phi i32 [ %127, %126 ], [ %258, %234 ], [ %229, %228 ]
  store i32 %260, ptr %4, align 4, !tbaa !34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

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
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!36, !36, i64 0}
!39 = !{!40, !35, i64 17388}
!40 = !{!"x264_t", !41, i64 0, !36, i64 704, !35, i64 1736, !35, i64 1740, !35, i64 1744, !35, i64 1748, !35, i64 1752, !47, i64 1760, !43, i64 1832, !35, i64 1840, !35, i64 1844, !35, i64 1848, !35, i64 1852, !35, i64 1856, !35, i64 1860, !35, i64 1864, !35, i64 1868, !35, i64 1872, !35, i64 1876, !35, i64 1880, !35, i64 1884, !35, i64 1888, !35, i64 1892, !36, i64 1896, !43, i64 3200, !36, i64 3208, !43, i64 3328, !35, i64 3336, !35, i64 3340, !36, i64 3344, !36, i64 3376, !36, i64 3392, !36, i64 3424, !36, i64 3440, !36, i64 3472, !36, i64 3488, !36, i64 3520, !36, i64 3536, !36, i64 4272, !43, i64 7216, !50, i64 7232, !51, i64 13904, !52, i64 14416, !43, i64 14680, !43, i64 14688, !35, i64 14696, !36, i64 14704, !35, i64 14856, !36, i64 14864, !36, i64 15016, !35, i64 15024, !35, i64 15028, !49, i64 15032, !53, i64 15040, !54, i64 16368, !43, i64 26704, !57, i64 26712, !36, i64 30400, !36, i64 30912, !36, i64 31168, !43, i64 31176, !36, i64 31184, !36, i64 31232, !36, i64 31248, !36, i64 31304, !36, i64 31360, !36, i64 31456, !43, i64 31552, !60, i64 31560, !61, i64 32616, !62, i64 32912, !63, i64 33032, !64, i64 33080, !65, i64 33256, !43, i64 33328}
!41 = !{!"x264_param_t", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !42, i64 44, !35, i64 80, !35, i64 84, !35, i64 88, !35, i64 92, !35, i64 96, !35, i64 100, !35, i64 104, !35, i64 108, !35, i64 112, !35, i64 116, !35, i64 120, !35, i64 124, !35, i64 128, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !43, i64 152, !36, i64 160, !36, i64 176, !36, i64 192, !36, i64 208, !36, i64 224, !36, i64 288, !43, i64 352, !43, i64 360, !35, i64 368, !35, i64 372, !43, i64 376, !44, i64 384, !46, i64 488, !35, i64 632, !35, i64 636, !35, i64 640, !35, i64 644, !35, i64 648, !35, i64 652, !35, i64 656, !35, i64 660, !35, i64 664, !35, i64 668, !35, i64 672, !35, i64 676, !35, i64 680, !35, i64 684, !35, i64 688, !35, i64 692, !43, i64 696}
!42 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32}
!43 = !{!"any pointer", !36, i64 0}
!44 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !35, i64 60, !35, i64 64, !35, i64 68, !45, i64 72, !45, i64 76, !35, i64 80, !36, i64 84, !35, i64 92, !35, i64 96}
!45 = !{!"float", !36, i64 0}
!46 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !35, i64 36, !35, i64 40, !45, i64 44, !45, i64 48, !45, i64 52, !35, i64 56, !45, i64 60, !35, i64 64, !35, i64 68, !35, i64 72, !43, i64 80, !35, i64 88, !43, i64 96, !45, i64 104, !45, i64 108, !45, i64 112, !43, i64 120, !35, i64 128, !43, i64 136}
!47 = !{!"", !35, i64 0, !35, i64 4, !43, i64 8, !35, i64 16, !43, i64 24, !48, i64 32}
!48 = !{!"bs_s", !43, i64 0, !43, i64 8, !43, i64 16, !49, i64 24, !35, i64 32, !35, i64 36}
!49 = !{!"long", !36, i64 0}
!50 = !{!"", !43, i64 0, !43, i64 8, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !36, i64 60, !35, i64 68, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84, !35, i64 88, !35, i64 92, !36, i64 96, !36, i64 352, !35, i64 6496, !35, i64 6500, !36, i64 6504, !35, i64 6632, !35, i64 6636, !35, i64 6640, !35, i64 6644, !35, i64 6648, !35, i64 6652, !35, i64 6656, !35, i64 6660}
!51 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !43, i64 16, !43, i64 24, !43, i64 32, !35, i64 48, !36, i64 52}
!52 = !{!"", !43, i64 0, !36, i64 8, !43, i64 24, !36, i64 32, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !49, i64 208, !49, i64 216, !36, i64 224, !49, i64 240, !49, i64 248, !35, i64 256, !35, i64 260}
!53 = !{!"", !36, i64 0, !36, i64 32, !36, i64 48, !36, i64 560}
!54 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !35, i64 60, !35, i64 64, !35, i64 68, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !35, i64 120, !36, i64 124, !36, i64 140, !35, i64 204, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !35, i64 224, !35, i64 228, !35, i64 232, !35, i64 236, !35, i64 240, !35, i64 244, !43, i64 248, !43, i64 256, !43, i64 264, !43, i64 272, !43, i64 280, !43, i64 288, !43, i64 296, !36, i64 304, !36, i64 320, !36, i64 336, !36, i64 352, !43, i64 864, !43, i64 872, !43, i64 880, !36, i64 888, !35, i64 1016, !35, i64 1020, !36, i64 1024, !35, i64 1028, !35, i64 1032, !35, i64 1036, !35, i64 1040, !35, i64 1044, !35, i64 1048, !35, i64 1052, !35, i64 1056, !35, i64 1060, !55, i64 1072, !56, i64 8656, !35, i64 9424, !35, i64 9428, !35, i64 9432, !35, i64 9436, !35, i64 9440, !35, i64 9444, !35, i64 9448, !35, i64 9452, !36, i64 9456, !35, i64 9472, !35, i64 9476, !36, i64 9480, !43, i64 9992, !36, i64 10000, !43, i64 10256, !36, i64 10264, !35, i64 10284, !36, i64 10288}
!55 = !{!"", !36, i64 0, !36, i64 384, !36, i64 1248, !36, i64 1504, !36, i64 1760, !36, i64 2144, !36, i64 2624, !36, i64 2640, !35, i64 2656, !35, i64 2660, !36, i64 2672, !36, i64 3184, !36, i64 3696, !36, i64 3776, !36, i64 3904, !36, i64 3928, !36, i64 3952, !36, i64 3976, !36, i64 3984, !36, i64 7056, !36, i64 7312, !36, i64 7568}
!56 = !{!"", !36, i64 0, !36, i64 48, !36, i64 96, !36, i64 176, !36, i64 496, !36, i64 656, !36, i64 696, !36, i64 728, !35, i64 736, !36, i64 740, !35, i64 744, !35, i64 748, !35, i64 752, !35, i64 756}
!57 = !{!"", !58, i64 0, !36, i64 704, !36, i64 728, !36, i64 768, !36, i64 808, !36, i64 880, !36, i64 920, !36, i64 960, !36, i64 1000, !36, i64 1040, !36, i64 1080, !36, i64 1120, !36, i64 1880, !36, i64 2152, !36, i64 2168, !36, i64 3192, !36, i64 3240, !36, i64 3656, !36, i64 3664, !36, i64 3672}
!58 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !36, i64 12, !35, i64 88, !35, i64 92, !35, i64 96, !36, i64 100, !36, i64 108, !36, i64 364, !36, i64 432, !36, i64 456, !36, i64 664, !36, i64 672, !59, i64 696}
!59 = !{!"double", !36, i64 0}
!60 = !{!"", !36, i64 0, !36, i64 56, !36, i64 112, !36, i64 168, !36, i64 224, !36, i64 256, !36, i64 312, !36, i64 368, !36, i64 424, !36, i64 480, !36, i64 536, !43, i64 592, !36, i64 600, !36, i64 632, !43, i64 664, !43, i64 672, !36, i64 680, !36, i64 736, !36, i64 792, !36, i64 848, !36, i64 904, !43, i64 960, !43, i64 968, !43, i64 976, !43, i64 984, !43, i64 992, !43, i64 1000, !43, i64 1008, !43, i64 1016, !43, i64 1024, !43, i64 1032, !43, i64 1040, !43, i64 1048}
!61 = !{!"", !43, i64 0, !43, i64 8, !43, i64 16, !36, i64 24, !36, i64 104, !43, i64 160, !43, i64 168, !43, i64 176, !43, i64 184, !43, i64 192, !43, i64 200, !43, i64 208, !43, i64 216, !43, i64 224, !43, i64 232, !43, i64 240, !43, i64 248, !43, i64 256, !43, i64 264, !43, i64 272, !43, i64 280, !43, i64 288}
!62 = !{!"", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112}
!63 = !{!"", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40}
!64 = !{!"", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !36, i64 88, !36, i64 136}
!65 = !{!"", !36, i64 0, !36, i64 16, !36, i64 32, !36, i64 48, !43, i64 64}
!66 = !{!67, !67, i64 0}
!67 = !{!"short", !36, i64 0}
!68 = !{!40, !35, i64 404}
!69 = !{!40, !35, i64 7304}
!70 = !{!43, !43, i64 0}
!71 = !{!40, !35, i64 16396}
!72 = !{!40, !35, i64 16400}
!73 = !{!74, !43, i64 3536}
!74 = !{!"x264_frame", !35, i64 0, !35, i64 4, !35, i64 8, !49, i64 16, !49, i64 24, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !43, i64 48, !35, i64 56, !35, i64 60, !35, i64 64, !35, i64 68, !35, i64 72, !35, i64 76, !35, i64 80, !36, i64 84, !36, i64 85, !36, i64 86, !45, i64 88, !45, i64 92, !35, i64 96, !35, i64 100, !36, i64 104, !36, i64 116, !36, i64 128, !35, i64 140, !35, i64 144, !35, i64 148, !36, i64 152, !36, i64 176, !36, i64 208, !43, i64 240, !36, i64 248, !36, i64 280, !36, i64 320, !36, i64 3392, !35, i64 3520, !43, i64 3528, !43, i64 3536, !43, i64 3544, !36, i64 3552, !43, i64 3568, !36, i64 3576, !36, i64 3848, !36, i64 6440, !36, i64 6712, !36, i64 6728, !36, i64 6736, !36, i64 6864, !36, i64 6868, !36, i64 8164, !35, i64 9460, !36, i64 9464, !36, i64 9536, !43, i64 12128, !43, i64 12136, !43, i64 12144, !43, i64 12152, !43, i64 12160, !35, i64 12168, !43, i64 12176, !43, i64 12184, !43, i64 12192, !35, i64 12200, !36, i64 12204, !35, i64 12276, !49, i64 12280, !75, i64 12288, !36, i64 12320, !36, i64 12572, !36, i64 13576, !35, i64 15584, !35, i64 15588, !35, i64 15592, !35, i64 15596, !35, i64 15600, !35, i64 15604, !35, i64 15608, !45, i64 15612, !35, i64 15616, !35, i64 15620, !35, i64 15624}
!75 = !{!"", !59, i64 0, !59, i64 8, !59, i64 16, !59, i64 24}
!76 = !{!40, !35, i64 16392}
!77 = !{!74, !43, i64 3544}
!78 = distinct !{!78, !79, !80}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = distinct !{!81, !79, !80}
!82 = !{!40, !35, i64 4}
!83 = !{!40, !35, i64 16376}
!84 = !{!40, !35, i64 16380}
!85 = distinct !{!85, !79, !80}
!86 = !{!40, !35, i64 16372}
!87 = !{!40, !35, i64 16388}
!88 = !{!40, !35, i64 16384}
!89 = !{!40, !35, i64 7268}
!90 = !{!40, !43, i64 26360}
!91 = distinct !{!91, !79, !80}
!92 = !{!40, !35, i64 25760}
!93 = distinct !{!93, !79, !80}
!94 = !{!40, !35, i64 7248}
!95 = !{!40, !35, i64 14672}
!96 = !{!40, !43, i64 14680}
!97 = !{!74, !35, i64 56}
!98 = !{!40, !35, i64 16576}
!99 = !{!40, !35, i64 16600}
!100 = !{!40, !35, i64 16604}
!101 = !{!40, !35, i64 16608}
!102 = !{!40, !35, i64 16612}
!103 = !{!40, !43, i64 14688}
!104 = !{!74, !35, i64 0}
!105 = !{!40, !35, i64 7288}
!106 = !{!40, !35, i64 16436}
!107 = !{!74, !43, i64 3568}
!108 = !{!40, !43, i64 3200}
!109 = !{!110, !35, i64 1084}
!110 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !36, i64 52, !35, i64 1076, !35, i64 1080, !35, i64 1084, !35, i64 1088, !35, i64 1092, !35, i64 1096, !35, i64 1100, !35, i64 1104, !111, i64 1108, !35, i64 1124, !112, i64 1128, !35, i64 1296}
!111 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!112 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !35, i64 60, !35, i64 64, !35, i64 68, !35, i64 72, !35, i64 76, !35, i64 80, !113, i64 84, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164}
!113 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44}
!114 = !{!110, !35, i64 1088}
