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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
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
  br label %93

50:                                               ; preds = %44
  %51 = icmp eq i8 %16, %12
  br i1 %51, label %52, label %64

52:                                               ; preds = %50
  %53 = load i32, ptr %17, align 4, !tbaa !38
  store i32 %53, ptr %4, align 4, !tbaa !38
  br label %93

54:                                               ; preds = %38
  %55 = icmp eq i32 %2, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  %57 = icmp eq i8 %16, %12
  br i1 %57, label %58, label %64

58:                                               ; preds = %56
  %59 = load i32, ptr %17, align 4, !tbaa !38
  store i32 %59, ptr %4, align 4, !tbaa !38
  br label %93

60:                                               ; preds = %54
  %61 = icmp eq i8 %40, %12
  br i1 %61, label %62, label %64

62:                                               ; preds = %60
  %63 = load i32, ptr %41, align 4, !tbaa !38
  store i32 %63, ptr %4, align 4, !tbaa !38
  br label %93

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
  br i1 %73, label %74, label %75

74:                                               ; preds = %85, %64
  tail call fastcc void @x264_median_mv(ptr noundef %4, ptr noundef nonnull %17, ptr noundef nonnull %22, ptr noundef nonnull %41) #8
  br label %93

75:                                               ; preds = %64
  %76 = icmp eq i32 %72, 1
  br i1 %76, label %77, label %85

77:                                               ; preds = %75
  br i1 %65, label %78, label %80

78:                                               ; preds = %77
  %79 = load i32, ptr %17, align 4, !tbaa !38
  store i32 %79, ptr %4, align 4, !tbaa !38
  br label %93

80:                                               ; preds = %77
  br i1 %67, label %81, label %83

81:                                               ; preds = %80
  %82 = load i32, ptr %22, align 4, !tbaa !38
  store i32 %82, ptr %4, align 4, !tbaa !38
  br label %93

83:                                               ; preds = %80
  %84 = load i32, ptr %41, align 4, !tbaa !38
  store i32 %84, ptr %4, align 4, !tbaa !38
  br label %93

85:                                               ; preds = %75
  %86 = icmp eq i8 %21, -2
  %87 = icmp eq i8 %40, -2
  %88 = select i1 %86, i1 %87, i1 false
  %89 = icmp ne i8 %16, -2
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %91, label %74

91:                                               ; preds = %85
  %92 = load i32, ptr %17, align 4, !tbaa !38
  store i32 %92, ptr %4, align 4, !tbaa !38
  br label %93

93:                                               ; preds = %74, %78, %83, %81, %91, %62, %58, %52, %48
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @x264_median_mv(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !66 {
  %5 = load i16, ptr %1, align 2, !tbaa !67
  %6 = sext i16 %5 to i32
  %7 = load i16, ptr %2, align 2, !tbaa !67
  %8 = sext i16 %7 to i32
  %9 = load i16, ptr %3, align 2, !tbaa !67
  %10 = sext i16 %9 to i32
  %11 = tail call fastcc i32 @x264_median(i32 noundef %6, i32 noundef %8, i32 noundef %10) #8
  %12 = trunc i32 %11 to i16
  store i16 %12, ptr %0, align 2, !tbaa !67
  %13 = getelementptr inbounds i16, ptr %1, i64 1
  %14 = load i16, ptr %13, align 2, !tbaa !67
  %15 = sext i16 %14 to i32
  %16 = getelementptr inbounds i16, ptr %2, i64 1
  %17 = load i16, ptr %16, align 2, !tbaa !67
  %18 = sext i16 %17 to i32
  %19 = getelementptr inbounds i16, ptr %3, i64 1
  %20 = load i16, ptr %19, align 2, !tbaa !67
  %21 = sext i16 %20 to i32
  %22 = tail call fastcc i32 @x264_median(i32 noundef %15, i32 noundef %18, i32 noundef %21) #8
  %23 = trunc i32 %22 to i16
  %24 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %23, ptr %24, align 2, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
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
  br i1 %34, label %35, label %36

35:                                               ; preds = %46, %22
  tail call fastcc void @x264_median_mv(ptr noundef %3, ptr noundef nonnull %9, ptr noundef nonnull %13, ptr noundef nonnull %23) #8
  br label %54

36:                                               ; preds = %22
  %37 = icmp eq i32 %33, 1
  br i1 %37, label %38, label %46

38:                                               ; preds = %36
  br i1 %26, label %39, label %41

39:                                               ; preds = %38
  %40 = load i32, ptr %9, align 4, !tbaa !38
  store i32 %40, ptr %3, align 4, !tbaa !38
  br label %54

41:                                               ; preds = %38
  br i1 %28, label %42, label %44

42:                                               ; preds = %41
  %43 = load i32, ptr %13, align 4, !tbaa !38
  store i32 %43, ptr %3, align 4, !tbaa !38
  br label %54

44:                                               ; preds = %41
  %45 = load i32, ptr %23, align 4, !tbaa !38
  store i32 %45, ptr %3, align 4, !tbaa !38
  br label %54

46:                                               ; preds = %36
  %47 = icmp eq i8 %11, -2
  %48 = icmp eq i8 %24, -2
  %49 = and i1 %47, %48
  %50 = icmp ne i8 %7, -2
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %35

52:                                               ; preds = %46
  %53 = load i32, ptr %9, align 4, !tbaa !38
  store i32 %53, ptr %3, align 4, !tbaa !38
  br label %54

54:                                               ; preds = %52, %42, %44, %39, %35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
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
  tail call void @x264_mb_predict_mv_16x16(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, ptr noundef %1) #8
  br label %24

24:                                               ; preds = %23, %22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @x264_mb_predict_mv_direct16x16(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !69
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %168, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 15
  %8 = load i32, ptr %7, align 8, !tbaa !70
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc i32 @x264_mb_predict_mv_direct16x16_spatial(ptr noundef nonnull %0) #8, !range !71
  br label %14

12:                                               ; preds = %6
  %13 = tail call fastcc i32 @x264_mb_predict_mv_direct16x16_temporal(ptr noundef nonnull %0) #8
  br label %14

14:                                               ; preds = %10, %12
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  %16 = icmp ne ptr %1, null
  %17 = icmp ne i32 %15, 0
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %135

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !38
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 12
  %23 = load i32, ptr %22, align 4, !tbaa !38
  %24 = xor i32 %23, %21
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 1
  %26 = load i32, ptr %25, align 8, !tbaa !38
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 12
  %28 = load i32, ptr %27, align 4, !tbaa !38
  %29 = xor i32 %28, %26
  %30 = or i32 %29, %24
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8
  %32 = load i8, ptr %31, align 8, !tbaa !38
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %34 = load i8, ptr %33, align 1, !tbaa !38
  %35 = xor i8 %34, %32
  %36 = sext i8 %35 to i32
  %37 = or i32 %30, %36
  %38 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 1
  %39 = load i8, ptr %38, align 4, !tbaa !38
  %40 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 12
  %41 = load i8, ptr %40, align 1, !tbaa !38
  %42 = xor i8 %41, %39
  %43 = sext i8 %42 to i32
  %44 = or i32 %37, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %80

46:                                               ; preds = %19
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %48 = load i32, ptr %47, align 4, !tbaa !39
  %49 = icmp eq i32 %48, 16
  br i1 %49, label %79, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 0, i64 3
  %52 = load i32, ptr %51, align 4, !tbaa !38
  %53 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 30
  %54 = load i32, ptr %53, align 4, !tbaa !38
  %55 = xor i32 %54, %52
  %56 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 1, i64 3
  %57 = load i32, ptr %56, align 4, !tbaa !38
  %58 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 30
  %59 = load i32, ptr %58, align 4, !tbaa !38
  %60 = xor i32 %59, %57
  %61 = or i32 %60, %55
  %62 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 0, i64 3
  %63 = load i8, ptr %62, align 1, !tbaa !38
  %64 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 30
  %65 = load i8, ptr %64, align 1, !tbaa !38
  %66 = xor i8 %65, %63
  %67 = sext i8 %66 to i32
  %68 = or i32 %61, %67
  %69 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 1, i64 3
  %70 = load i8, ptr %69, align 1, !tbaa !38
  %71 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 30
  %72 = load i8, ptr %71, align 1, !tbaa !38
  %73 = xor i8 %72, %70
  %74 = sext i8 %73 to i32
  %75 = or i32 %68, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %50
  %78 = icmp eq i32 %48, 13
  br i1 %78, label %82, label %79

79:                                               ; preds = %46, %77
  store i32 0, ptr %1, align 4, !tbaa !34
  br label %168

80:                                               ; preds = %50, %19
  %81 = phi i32 [ %44, %19 ], [ %75, %50 ]
  store i32 %81, ptr %1, align 4, !tbaa !34
  br label %136

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 0, i64 1
  %84 = load i32, ptr %83, align 4, !tbaa !38
  %85 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 14
  %86 = load i32, ptr %85, align 4, !tbaa !38
  %87 = xor i32 %86, %84
  %88 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 1, i64 1
  %89 = load i32, ptr %88, align 4, !tbaa !38
  %90 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 14
  %91 = load i32, ptr %90, align 4, !tbaa !38
  %92 = xor i32 %91, %89
  %93 = or i32 %92, %87
  %94 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 0, i64 2
  %95 = load i32, ptr %94, align 8, !tbaa !38
  %96 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 28
  %97 = load i32, ptr %96, align 4, !tbaa !38
  %98 = xor i32 %97, %95
  %99 = or i32 %93, %98
  %100 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 1, i64 2
  %101 = load i32, ptr %100, align 8, !tbaa !38
  %102 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 28
  %103 = load i32, ptr %102, align 4, !tbaa !38
  %104 = xor i32 %103, %101
  %105 = or i32 %99, %104
  %106 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 0, i64 1
  %107 = load i8, ptr %106, align 1, !tbaa !38
  %108 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 14
  %109 = load i8, ptr %108, align 1, !tbaa !38
  %110 = xor i8 %109, %107
  %111 = sext i8 %110 to i32
  %112 = or i32 %105, %111
  %113 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 1, i64 1
  %114 = load i8, ptr %113, align 1, !tbaa !38
  %115 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 14
  %116 = load i8, ptr %115, align 1, !tbaa !38
  %117 = xor i8 %116, %114
  %118 = sext i8 %117 to i32
  %119 = or i32 %112, %118
  %120 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 0, i64 2
  %121 = load i8, ptr %120, align 2, !tbaa !38
  %122 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 28
  %123 = load i8, ptr %122, align 1, !tbaa !38
  %124 = xor i8 %123, %121
  %125 = sext i8 %124 to i32
  %126 = or i32 %119, %125
  %127 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 1, i64 2
  %128 = load i8, ptr %127, align 2, !tbaa !38
  %129 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 28
  %130 = load i8, ptr %129, align 1, !tbaa !38
  %131 = xor i8 %130, %128
  %132 = sext i8 %131 to i32
  %133 = or i32 %126, %132
  store i32 %133, ptr %1, align 4, !tbaa !34
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %168, label %136

135:                                              ; preds = %14
  br i1 %17, label %136, label %168

136:                                              ; preds = %80, %135, %82
  %137 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %138 = load i32, ptr %137, align 4, !tbaa !39
  %139 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 9
  br label %140

140:                                              ; preds = %136, %140
  %141 = phi i1 [ true, %136 ], [ false, %140 ]
  %142 = phi i64 [ 0, %136 ], [ 1, %140 ]
  %143 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %142, i64 12
  %144 = load i32, ptr %143, align 4, !tbaa !38
  %145 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 %142
  store i32 %144, ptr %145, align 8, !tbaa !38
  %146 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %142, i64 14
  %147 = load i32, ptr %146, align 4, !tbaa !38
  %148 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 %142, i64 1
  store i32 %147, ptr %148, align 4, !tbaa !38
  %149 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %142, i64 28
  %150 = load i32, ptr %149, align 4, !tbaa !38
  %151 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 %142, i64 2
  store i32 %150, ptr %151, align 8, !tbaa !38
  %152 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %142, i64 30
  %153 = load i32, ptr %152, align 4, !tbaa !38
  %154 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 %142, i64 3
  store i32 %153, ptr %154, align 4, !tbaa !38
  %155 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %142, i64 12
  %156 = load i8, ptr %155, align 1, !tbaa !38
  %157 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 %142
  store i8 %156, ptr %157, align 4, !tbaa !38
  %158 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %142, i64 14
  %159 = load i8, ptr %158, align 1, !tbaa !38
  %160 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 %142, i64 1
  store i8 %159, ptr %160, align 1, !tbaa !38
  %161 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %142, i64 28
  %162 = load i8, ptr %161, align 1, !tbaa !38
  %163 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 %142, i64 2
  store i8 %162, ptr %163, align 2, !tbaa !38
  %164 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %142, i64 30
  %165 = load i8, ptr %164, align 1, !tbaa !38
  %166 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 %142, i64 3
  store i8 %165, ptr %166, align 1, !tbaa !38
  br i1 %141, label %140, label %167, !llvm.loop !72

167:                                              ; preds = %140
  store i32 %138, ptr %139, align 16, !tbaa !74
  br label %168

168:                                              ; preds = %167, %79, %82, %135, %2
  %169 = phi i32 [ %15, %82 ], [ 0, %2 ], [ 0, %135 ], [ %15, %79 ], [ %15, %167 ]
  ret i32 %169
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @x264_mb_predict_mv_direct16x16_spatial(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !75 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x [2 x i16]], align 8
  %4 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49
  %6 = load ptr, ptr %5, align 16, !tbaa !76
  %7 = getelementptr inbounds %struct.x264_frame, ptr %6, i64 0, i32 48
  %8 = load ptr, ptr %7, align 8, !tbaa !76
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 7
  %10 = load i32, ptr %9, align 4, !tbaa !77
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.x264_frame, ptr %6, i64 0, i32 48, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %14 = getelementptr inbounds %struct.x264_frame, ptr %6, i64 0, i32 43
  %15 = load ptr, ptr %14, align 16, !tbaa !76
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 8
  %17 = load i32, ptr %16, align 16, !tbaa !78
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [2 x i16], ptr %15, i64 %18
  store ptr %19, ptr %4, align 16, !tbaa !76
  %20 = getelementptr inbounds ptr, ptr %4, i64 1
  %21 = getelementptr inbounds %struct.x264_frame, ptr %6, i64 0, i32 43, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !76
  %23 = getelementptr inbounds [2 x i16], ptr %22, i64 %18
  store ptr %23, ptr %20, align 8, !tbaa !76
  %24 = getelementptr inbounds %struct.x264_frame, ptr %6, i64 0, i32 41
  %25 = load ptr, ptr %24, align 16, !tbaa !79
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !82
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %25, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !38
  %31 = getelementptr inbounds %struct.x264_frame, ptr %6, i64 0, i32 42
  %32 = load ptr, ptr %31, align 8, !tbaa !83
  %33 = getelementptr inbounds i8, ptr %32, i64 %28
  %34 = load i8, ptr %33, align 1, !tbaa !38
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  store i32 %35, ptr %36, align 4, !tbaa !39
  br label %46

37:                                               ; preds = %96
  %38 = getelementptr inbounds i8, ptr %8, i64 %11
  %39 = getelementptr inbounds i8, ptr %13, i64 %11
  %40 = load i16, ptr %2, align 2
  %41 = and i16 %40, -32640
  %42 = icmp eq i16 %41, -32640
  %43 = trunc i16 %40 to i8
  %44 = lshr i16 %40, 8
  %45 = trunc i16 %44 to i8
  br i1 %42, label %103, label %104

46:                                               ; preds = %1, %96
  %47 = phi i1 [ true, %1 ], [ false, %96 ]
  %48 = phi i64 [ 0, %1 ], [ 1, %96 ]
  %49 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %48, i64 11
  %50 = load i8, ptr %49, align 1, !tbaa !38
  %51 = sext i8 %50 to i32
  %52 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %48, i64 11
  %53 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %48, i64 4
  %54 = load i8, ptr %53, align 4, !tbaa !38
  %55 = sext i8 %54 to i32
  %56 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %48, i64 4
  %57 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %48, i64 8
  %58 = load i8, ptr %57, align 8, !tbaa !38
  %59 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %48, i64 8
  %60 = icmp eq i8 %58, -2
  br i1 %60, label %61, label %65

61:                                               ; preds = %46
  %62 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %48, i64 3
  %63 = load i8, ptr %62, align 1, !tbaa !38
  %64 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %48, i64 3
  br label %65

65:                                               ; preds = %61, %46
  %66 = phi ptr [ %64, %61 ], [ %59, %46 ]
  %67 = phi i8 [ %63, %61 ], [ %58, %46 ]
  %68 = sext i8 %67 to i32
  %69 = tail call i32 @llvm.umin.i32(i32 %55, i32 %68)
  %70 = tail call i32 @llvm.umin.i32(i32 %69, i32 %51)
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = getelementptr inbounds [2 x [2 x i16]], ptr %3, i64 0, i64 %48
  store i32 0, ptr %73, align 4, !tbaa !38
  br label %96

74:                                               ; preds = %65
  %75 = icmp uge i32 %69, %51
  %76 = zext i1 %75 to i32
  %77 = icmp eq i32 %70, %55
  %78 = zext i1 %77 to i32
  %79 = add nuw nsw i32 %78, %76
  %80 = icmp eq i32 %70, %68
  %81 = zext i1 %80 to i32
  %82 = add nuw nsw i32 %79, %81
  %83 = icmp ugt i32 %82, 1
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = getelementptr inbounds [2 x [2 x i16]], ptr %3, i64 0, i64 %48
  call fastcc void @x264_median_mv(ptr noundef nonnull %85, ptr noundef nonnull %52, ptr noundef nonnull %56, ptr noundef nonnull %66) #8
  br label %96

86:                                               ; preds = %74
  br i1 %75, label %87, label %90

87:                                               ; preds = %86
  %88 = load i32, ptr %52, align 4, !tbaa !38
  %89 = getelementptr inbounds [2 x [2 x i16]], ptr %3, i64 0, i64 %48
  store i32 %88, ptr %89, align 4, !tbaa !38
  br label %96

90:                                               ; preds = %86
  %91 = getelementptr inbounds [2 x [2 x i16]], ptr %3, i64 0, i64 %48
  br i1 %77, label %92, label %94

92:                                               ; preds = %90
  %93 = load i32, ptr %56, align 4, !tbaa !38
  store i32 %93, ptr %91, align 4, !tbaa !38
  br label %96

94:                                               ; preds = %90
  %95 = load i32, ptr %66, align 4, !tbaa !38
  store i32 %95, ptr %91, align 4, !tbaa !38
  br label %96

96:                                               ; preds = %84, %92, %94, %87, %72
  %97 = phi i32 [ -1, %72 ], [ %70, %87 ], [ %70, %94 ], [ %55, %92 ], [ %70, %84 ]
  %98 = trunc i32 %97 to i8
  %99 = trunc i64 %48 to i32
  tail call fastcc void @x264_macroblock_cache_ref(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4, i32 noundef %99, i8 noundef zeroext %98) #8
  %100 = getelementptr inbounds [2 x [2 x i16]], ptr %3, i64 0, i64 %48
  %101 = load i32, ptr %100, align 4, !tbaa !38
  tail call fastcc void @x264_macroblock_cache_mv(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4, i32 noundef %99, i32 noundef %101) #8
  %102 = getelementptr inbounds [2 x i8], ptr %2, i64 0, i64 %48
  store i8 %98, ptr %102, align 1, !tbaa !38
  br i1 %47, label %46, label %37, !llvm.loop !84

103:                                              ; preds = %37
  tail call fastcc void @x264_macroblock_cache_ref(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4, i32 noundef 0, i8 noundef zeroext 0) #8
  tail call fastcc void @x264_macroblock_cache_ref(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4, i32 noundef 1, i8 noundef zeroext 0) #8
  br label %195

104:                                              ; preds = %37
  %105 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %106 = load i32, ptr %105, align 4, !tbaa !85
  %107 = icmp sgt i32 %106, 1
  br i1 %107, label %108, label %120

108:                                              ; preds = %104
  %109 = getelementptr inbounds [2 x i16], ptr %3, i64 0, i64 1
  %110 = load i16, ptr %109, align 2, !tbaa !67
  %111 = sext i16 %110 to i32
  %112 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21, i64 1
  %113 = load i32, ptr %112, align 4, !tbaa !34
  %114 = icmp slt i32 %113, %111
  %115 = getelementptr inbounds [2 x [2 x i16]], ptr %3, i64 0, i64 1, i64 1
  %116 = load i16, ptr %115, align 2
  %117 = sext i16 %116 to i32
  %118 = icmp slt i32 %113, %117
  %119 = select i1 %114, i1 true, i1 %118
  br i1 %119, label %195, label %120

120:                                              ; preds = %108, %104
  %121 = load i64, ptr %3, align 8, !tbaa !38
  %122 = icmp eq i64 %121, 0
  %123 = insertelement <4 x i8> poison, i8 %30, i64 0
  %124 = shufflevector <4 x i8> %123, <4 x i8> poison, <4 x i32> zeroinitializer
  %125 = freeze <4 x i8> %124
  %126 = icmp eq <4 x i8> %125, <i8 0, i8 1, i8 2, i8 3>
  %127 = bitcast <4 x i1> %126 to i4
  %128 = icmp ne i4 %127, 0
  %129 = or i1 %122, %128
  br i1 %129, label %195, label %130

130:                                              ; preds = %120
  %131 = icmp ne i8 %43, 0
  %132 = icmp ne i8 %45, 0
  %133 = and i1 %131, %132
  br i1 %133, label %195, label %134

134:                                              ; preds = %130
  %135 = sub nsw i32 16, %35
  %136 = sub nsw i32 17, %35
  %137 = icmp eq i8 %34, 14
  %138 = select i1 %137, i32 2, i32 1
  %139 = and i32 %135, 1
  %140 = lshr exact i32 4, %139
  %141 = ashr i32 %135, 1
  %142 = lshr i32 4, %141
  %143 = icmp ult i8 %34, 17
  br i1 %143, label %144, label %195

144:                                              ; preds = %134
  %145 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 2
  %146 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 3
  %147 = icmp eq i8 %43, 0
  %148 = icmp eq i8 %45, 0
  br label %149

149:                                              ; preds = %144, %192
  %150 = phi i32 [ 0, %144 ], [ %193, %192 ]
  %151 = and i32 %150, 1
  %152 = lshr i32 %150, 1
  %153 = load i32, ptr %145, align 8, !tbaa !86
  %154 = mul nsw i32 %153, %152
  %155 = add nsw i32 %154, %151
  %156 = load i32, ptr %146, align 4, !tbaa !87
  %157 = mul nsw i32 %156, %152
  %158 = add nsw i32 %157, %151
  %159 = mul nsw i32 %158, 3
  %160 = sext i32 %155 to i64
  %161 = getelementptr inbounds i8, ptr %38, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !38
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %149
  %165 = icmp slt i8 %162, 0
  br i1 %165, label %166, label %192

166:                                              ; preds = %164
  %167 = getelementptr inbounds i8, ptr %39, i64 %160
  %168 = load i8, ptr %167, align 1, !tbaa !38
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %192

170:                                              ; preds = %166, %149
  %171 = phi i64 [ 0, %149 ], [ 1, %166 ]
  %172 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !76
  %174 = sext i32 %159 to i64
  %175 = getelementptr inbounds [2 x i16], ptr %173, i64 %174
  %176 = load i16, ptr %175, align 2, !tbaa !67
  %177 = tail call i16 @llvm.abs.i16(i16 %176, i1 false)
  %178 = icmp ult i16 %177, 2
  br i1 %178, label %179, label %192

179:                                              ; preds = %170
  %180 = getelementptr inbounds [2 x i16], ptr %173, i64 %174, i64 1
  %181 = load i16, ptr %180, align 2, !tbaa !67
  %182 = tail call i16 @llvm.abs.i16(i16 %181, i1 false)
  %183 = icmp ult i16 %182, 2
  br i1 %183, label %184, label %192

184:                                              ; preds = %179
  br i1 %147, label %185, label %188

185:                                              ; preds = %184
  %186 = shl nuw nsw i32 %151, 1
  %187 = and i32 %150, 2147483646
  tail call fastcc void @x264_macroblock_cache_mv(ptr noundef nonnull %0, i32 noundef %186, i32 noundef %187, i32 noundef %140, i32 noundef %142, i32 noundef 0, i32 noundef 0) #8
  br label %188

188:                                              ; preds = %185, %184
  br i1 %148, label %189, label %192

189:                                              ; preds = %188
  %190 = shl nuw nsw i32 %151, 1
  %191 = and i32 %150, 2147483646
  tail call fastcc void @x264_macroblock_cache_mv(ptr noundef nonnull %0, i32 noundef %190, i32 noundef %191, i32 noundef %140, i32 noundef %142, i32 noundef 1, i32 noundef 0) #8
  br label %192

192:                                              ; preds = %170, %179, %189, %188, %164, %166
  %193 = add nuw nsw i32 %150, %138
  %194 = icmp slt i32 %193, %136
  br i1 %194, label %149, label %195, !llvm.loop !88

195:                                              ; preds = %192, %134, %120, %130, %108, %103
  %196 = phi i32 [ 1, %103 ], [ 0, %108 ], [ 1, %130 ], [ 1, %120 ], [ 1, %134 ], [ 1, %192 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  ret i32 %196
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @x264_mb_predict_mv_direct16x16_temporal(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !89 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !90
  %4 = shl nsw i32 %3, 4
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !91
  %7 = mul nsw i32 %4, %6
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 4
  %9 = load i32, ptr %8, align 16, !tbaa !92
  %10 = shl nsw i32 %9, 2
  %11 = shl nsw i32 %3, 2
  %12 = mul nsw i32 %11, %6
  %13 = shl nsw i32 %9, 1
  %14 = add nsw i32 %13, %12
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49
  %16 = load ptr, ptr %15, align 16, !tbaa !76
  %17 = getelementptr inbounds %struct.x264_frame, ptr %16, i64 0, i32 41
  %18 = load ptr, ptr %17, align 16, !tbaa !79
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !82
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %18, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !38
  %24 = getelementptr inbounds %struct.x264_frame, ptr %16, i64 0, i32 42
  %25 = load ptr, ptr %24, align 8, !tbaa !83
  %26 = getelementptr inbounds i8, ptr %25, i64 %21
  %27 = load i8, ptr %26, align 1, !tbaa !38
  %28 = zext i8 %27 to i32
  tail call fastcc void @x264_macroblock_cache_ref(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4, i32 noundef 1, i8 noundef zeroext 0) #8
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  store i32 %28, ptr %29, align 4, !tbaa !39
  %30 = icmp ult i8 %23, 4
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  tail call fastcc void @x264_macroblock_cache_ref(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4, i32 noundef 0, i8 noundef zeroext 0) #8
  tail call fastcc void @x264_macroblock_cache_mv(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4, i32 noundef 0, i32 noundef 0) #8
  tail call fastcc void @x264_macroblock_cache_mv(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4, i32 noundef 1, i32 noundef 0) #8
  br label %124

32:                                               ; preds = %1
  %33 = sub nsw i32 16, %28
  %34 = sub nsw i32 17, %28
  %35 = icmp eq i8 %27, 14
  %36 = select i1 %35, i32 2, i32 1
  %37 = and i32 %33, 1
  %38 = lshr exact i32 4, %37
  %39 = ashr i32 %33, 1
  %40 = lshr i32 4, %39
  %41 = icmp ugt i8 %27, 16
  br i1 %41, label %124, label %42

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 2
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %45 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 80
  %46 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 3
  %47 = add i32 %10, %7
  %48 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %49 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21, i64 1
  br label %50

50:                                               ; preds = %42, %110
  %51 = phi i32 [ 0, %42 ], [ %122, %110 ]
  %52 = and i32 %51, 1
  %53 = lshr i32 %51, 1
  %54 = or disjoint i32 %14, %52
  %55 = load i32, ptr %43, align 8, !tbaa !86
  %56 = mul nsw i32 %55, %53
  %57 = add nsw i32 %54, %56
  %58 = load ptr, ptr %15, align 16, !tbaa !76
  %59 = getelementptr inbounds %struct.x264_frame, ptr %58, i64 0, i32 48
  %60 = load ptr, ptr %59, align 8, !tbaa !76
  %61 = sext i32 %57 to i64
  %62 = getelementptr inbounds i8, ptr %60, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !38
  %64 = sext i8 %63 to i32
  %65 = load i32, ptr %44, align 4, !tbaa !93
  %66 = ashr i32 %64, %65
  %67 = add nsw i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 83, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !38
  %71 = sext i8 %70 to i32
  %72 = shl i32 %71, %65
  %73 = and i32 %65, %64
  %74 = add nsw i32 %72, %73
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %76, label %124

76:                                               ; preds = %50
  %77 = load ptr, ptr %45, align 8, !tbaa !94
  %78 = zext nneg i32 %74 to i64
  %79 = getelementptr inbounds [4 x i16], ptr %77, i64 %78
  %80 = load i16, ptr %79, align 2, !tbaa !67
  %81 = sext i16 %80 to i32
  %82 = getelementptr inbounds %struct.x264_frame, ptr %58, i64 0, i32 43
  %83 = load ptr, ptr %82, align 16, !tbaa !76
  %84 = load i32, ptr %46, align 4, !tbaa !87
  %85 = mul i32 %84, %53
  %86 = add i32 %85, %52
  %87 = mul i32 %86, 3
  %88 = add i32 %47, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [2 x i16], ptr %83, i64 %89
  %91 = load i16, ptr %90, align 2, !tbaa !67
  %92 = sext i16 %91 to i32
  %93 = mul nsw i32 %92, %81
  %94 = add nsw i32 %93, 128
  %95 = ashr i32 %94, 8
  %96 = getelementptr inbounds i16, ptr %90, i64 1
  %97 = load i16, ptr %96, align 2, !tbaa !67
  %98 = sext i16 %97 to i32
  %99 = mul nsw i32 %98, %81
  %100 = add nsw i32 %99, 128
  %101 = ashr i32 %100, 8
  %102 = load i32, ptr %48, align 4, !tbaa !85
  %103 = icmp sgt i32 %102, 1
  br i1 %103, label %104, label %110

104:                                              ; preds = %76
  %105 = load i32, ptr %49, align 4, !tbaa !34
  %106 = icmp sgt i32 %101, %105
  %107 = sub nsw i32 %101, %98
  %108 = icmp sgt i32 %107, %105
  %109 = select i1 %106, i1 true, i1 %108
  br i1 %109, label %124, label %110

110:                                              ; preds = %104, %76
  %111 = shl nuw nsw i32 %52, 1
  %112 = and i32 %51, 2147483646
  %113 = trunc i32 %74 to i8
  tail call fastcc void @x264_macroblock_cache_ref(ptr noundef nonnull %0, i32 noundef %111, i32 noundef %112, i32 noundef %38, i32 noundef %40, i32 noundef 0, i8 noundef zeroext %113) #8
  %114 = tail call fastcc i32 @pack16to32_mask(i32 noundef %95, i32 noundef %101) #8
  tail call fastcc void @x264_macroblock_cache_mv(ptr noundef nonnull %0, i32 noundef %111, i32 noundef %112, i32 noundef %38, i32 noundef %40, i32 noundef 0, i32 noundef %114) #8
  %115 = load i16, ptr %90, align 2, !tbaa !67
  %116 = sext i16 %115 to i32
  %117 = sub nsw i32 %95, %116
  %118 = load i16, ptr %96, align 2, !tbaa !67
  %119 = sext i16 %118 to i32
  %120 = sub nsw i32 %101, %119
  %121 = tail call fastcc i32 @pack16to32_mask(i32 noundef %117, i32 noundef %120) #8
  tail call fastcc void @x264_macroblock_cache_mv(ptr noundef nonnull %0, i32 noundef %111, i32 noundef %112, i32 noundef %38, i32 noundef %40, i32 noundef 1, i32 noundef %121) #8
  %122 = add nuw nsw i32 %51, %36
  %123 = icmp slt i32 %122, %34
  br i1 %123, label %50, label %124, !llvm.loop !95

124:                                              ; preds = %50, %104, %110, %32, %31
  %125 = phi i32 [ 1, %31 ], [ 1, %32 ], [ 0, %50 ], [ 0, %104 ], [ 1, %110 ]
  ret i32 %125
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_mb_predict_mv_ref16x16(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #4 {
  %6 = sext i32 %1 to i64
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 48, i64 %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %11 = load i32, ptr %10, align 16, !tbaa !96
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
  %26 = load i32, ptr %25, align 16, !tbaa !97
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %71, label %28

28:                                               ; preds = %24
  %29 = icmp eq i32 %1, 0
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %31 = load ptr, ptr %30, align 8, !tbaa !98
  br i1 %29, label %43, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49
  %34 = load ptr, ptr %33, align 16, !tbaa !76
  %35 = getelementptr inbounds %struct.x264_frame, ptr %34, i64 0, i32 10
  %36 = load i32, ptr %35, align 8, !tbaa !99
  %37 = getelementptr inbounds %struct.x264_frame, ptr %31, i64 0, i32 10
  %38 = load i32, ptr %37, align 8, !tbaa !99
  %39 = xor i32 %38, -1
  %40 = add i32 %36, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.x264_frame, ptr %31, i64 0, i32 45, i64 1, i64 %41
  br label %55

43:                                               ; preds = %28
  %44 = getelementptr inbounds %struct.x264_frame, ptr %31, i64 0, i32 45
  %45 = getelementptr inbounds %struct.x264_frame, ptr %31, i64 0, i32 10
  %46 = load i32, ptr %45, align 8, !tbaa !99
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47
  %48 = load ptr, ptr %47, align 16, !tbaa !76
  %49 = getelementptr inbounds %struct.x264_frame, ptr %48, i64 0, i32 10
  %50 = load i32, ptr %49, align 8, !tbaa !99
  %51 = xor i32 %50, -1
  %52 = add i32 %46, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [17 x ptr], ptr %44, i64 0, i64 %53
  br label %55

55:                                               ; preds = %43, %32
  %56 = phi ptr [ %42, %32 ], [ %54, %43 ]
  %57 = load ptr, ptr %56, align 8, !tbaa !76
  %58 = load i16, ptr %57, align 2, !tbaa !67
  %59 = icmp eq i16 %58, 32767
  br i1 %59, label %71, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %62 = load i32, ptr %61, align 8, !tbaa !82
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
  %74 = load i32, ptr %73, align 16, !tbaa !100
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 34
  %79 = load i32, ptr %78, align 8, !tbaa !101
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [2 x i16], ptr %9, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !38
  %83 = zext nneg i32 %72 to i64
  %84 = getelementptr inbounds [2 x i16], ptr %3, i64 %83
  store i32 %82, ptr %84, align 4, !tbaa !38
  %85 = add nuw nsw i32 %72, 1
  %86 = load i32, ptr %73, align 16, !tbaa !100
  br label %87

87:                                               ; preds = %77, %71
  %88 = phi i32 [ %86, %77 ], [ %74, %71 ]
  %89 = phi i32 [ %85, %77 ], [ %72, %71 ]
  %90 = and i32 %88, 2
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %128, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 35
  %94 = load i32, ptr %93, align 4, !tbaa !102
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [2 x i16], ptr %9, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !38
  %98 = zext nneg i32 %89 to i64
  %99 = getelementptr inbounds [2 x i16], ptr %3, i64 %98
  store i32 %97, ptr %99, align 4, !tbaa !38
  %100 = add nuw nsw i32 %89, 1
  %101 = load i32, ptr %73, align 16, !tbaa !100
  %102 = and i32 %101, 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %92
  %105 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 36
  %106 = load i32, ptr %105, align 16, !tbaa !103
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [2 x i16], ptr %9, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !38
  %110 = zext nneg i32 %100 to i64
  %111 = getelementptr inbounds [2 x i16], ptr %3, i64 %110
  store i32 %109, ptr %111, align 4, !tbaa !38
  %112 = add nuw nsw i32 %89, 2
  %113 = load i32, ptr %73, align 16, !tbaa !100
  br label %114

114:                                              ; preds = %104, %92
  %115 = phi i32 [ %113, %104 ], [ %101, %92 ]
  %116 = phi i32 [ %112, %104 ], [ %100, %92 ]
  %117 = and i32 %115, 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 37
  %121 = load i32, ptr %120, align 4, !tbaa !104
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [2 x i16], ptr %9, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !38
  %125 = zext nneg i32 %116 to i64
  %126 = getelementptr inbounds [2 x i16], ptr %3, i64 %125
  store i32 %124, ptr %126, align 4, !tbaa !38
  %127 = add nuw nsw i32 %116, 1
  br label %128

128:                                              ; preds = %114, %119, %87
  %129 = phi i32 [ %127, %119 ], [ %116, %114 ], [ %89, %87 ]
  %130 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47
  %131 = load ptr, ptr %130, align 16, !tbaa !76
  %132 = getelementptr inbounds %struct.x264_frame, ptr %131, i64 0, i32 49
  %133 = load i32, ptr %132, align 8, !tbaa !34
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %261

135:                                              ; preds = %128
  %136 = icmp eq i32 %1, 0
  %137 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49
  %138 = select i1 %136, ptr %130, ptr %137
  %139 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %140 = load i32, ptr %139, align 4, !tbaa !91
  %141 = and i32 %140, 1
  %142 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %143 = load ptr, ptr %142, align 16, !tbaa !105
  %144 = load i32, ptr %143, align 16, !tbaa !106
  %145 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 12
  %146 = load i32, ptr %145, align 8, !tbaa !107
  %147 = mul nuw nsw i32 %146, %141
  %148 = add nsw i32 %147, %144
  %149 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %150 = load i32, ptr %149, align 4, !tbaa !93
  %151 = ashr i32 %2, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds ptr, ptr %138, i64 %152
  %154 = load ptr, ptr %153, align 8, !tbaa !76
  %155 = load i32, ptr %154, align 16, !tbaa !106
  %156 = icmp eq i32 %150, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %135
  %158 = xor i32 %140, %2
  %159 = and i32 %158, 1
  %160 = icmp eq i32 %159, 0
  %161 = select i1 %160, i32 0, i32 %146
  %162 = add nsw i32 %155, %161
  br label %163

163:                                              ; preds = %157, %135
  %164 = phi i32 [ %155, %135 ], [ %162, %157 ]
  %165 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %166 = load i32, ptr %165, align 8, !tbaa !82
  %167 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  %168 = sub i32 %148, %164
  %169 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %170 = load i32, ptr %169, align 4, !tbaa !108
  %171 = and i32 %170, %141
  %172 = zext nneg i32 %171 to i64
  %173 = getelementptr inbounds %struct.x264_frame, ptr %131, i64 0, i32 51, i64 %172
  %174 = load i16, ptr %173, align 2, !tbaa !67
  %175 = sext i16 %174 to i32
  %176 = mul nsw i32 %168, %175
  %177 = getelementptr inbounds %struct.x264_frame, ptr %131, i64 0, i32 44
  %178 = load ptr, ptr %177, align 16, !tbaa !109
  %179 = sext i32 %166 to i64
  %180 = getelementptr inbounds [2 x i16], ptr %178, i64 %179
  %181 = load i16, ptr %180, align 2, !tbaa !67
  %182 = sext i16 %181 to i32
  %183 = mul nsw i32 %176, %182
  %184 = add nsw i32 %183, 128
  %185 = lshr i32 %184, 8
  %186 = trunc i32 %185 to i16
  %187 = zext nneg i32 %129 to i64
  %188 = getelementptr inbounds [2 x i16], ptr %3, i64 %187
  store i16 %186, ptr %188, align 2, !tbaa !67
  %189 = getelementptr inbounds [2 x i16], ptr %178, i64 %179, i64 1
  %190 = load i16, ptr %189, align 2, !tbaa !67
  %191 = sext i16 %190 to i32
  %192 = mul nsw i32 %176, %191
  %193 = add nsw i32 %192, 128
  %194 = lshr i32 %193, 8
  %195 = trunc i32 %194 to i16
  %196 = getelementptr inbounds [2 x i16], ptr %3, i64 %187, i64 1
  store i16 %195, ptr %196, align 2, !tbaa !67
  %197 = add nuw nsw i32 %129, 1
  %198 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 4
  %199 = load i32, ptr %198, align 16, !tbaa !92
  %200 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %201 = load ptr, ptr %200, align 16, !tbaa !110
  %202 = getelementptr inbounds %struct.x264_sps_t, ptr %201, i64 0, i32 16
  %203 = load i32, ptr %202, align 4, !tbaa !111
  %204 = add nsw i32 %203, -1
  %205 = icmp slt i32 %199, %204
  br i1 %205, label %206, label %230

206:                                              ; preds = %163
  %207 = add nsw i32 %166, 1
  %208 = load i16, ptr %173, align 2, !tbaa !67
  %209 = sext i16 %208 to i32
  %210 = mul nsw i32 %168, %209
  %211 = sext i32 %207 to i64
  %212 = getelementptr inbounds [2 x i16], ptr %178, i64 %211
  %213 = load i16, ptr %212, align 2, !tbaa !67
  %214 = sext i16 %213 to i32
  %215 = mul nsw i32 %210, %214
  %216 = add nsw i32 %215, 128
  %217 = lshr i32 %216, 8
  %218 = trunc i32 %217 to i16
  %219 = zext nneg i32 %197 to i64
  %220 = getelementptr inbounds [2 x i16], ptr %3, i64 %219
  store i16 %218, ptr %220, align 2, !tbaa !67
  %221 = getelementptr inbounds [2 x i16], ptr %178, i64 %211, i64 1
  %222 = load i16, ptr %221, align 2, !tbaa !67
  %223 = sext i16 %222 to i32
  %224 = mul nsw i32 %210, %223
  %225 = add nsw i32 %224, 128
  %226 = lshr i32 %225, 8
  %227 = trunc i32 %226 to i16
  %228 = getelementptr inbounds [2 x i16], ptr %3, i64 %219, i64 1
  store i16 %227, ptr %228, align 2, !tbaa !67
  %229 = add nuw nsw i32 %129, 2
  br label %230

230:                                              ; preds = %206, %163
  %231 = phi i32 [ %229, %206 ], [ %197, %163 ]
  %232 = getelementptr inbounds %struct.x264_sps_t, ptr %201, i64 0, i32 17
  %233 = load i32, ptr %232, align 4, !tbaa !116
  %234 = add nsw i32 %233, -1
  %235 = icmp slt i32 %140, %234
  br i1 %235, label %236, label %261

236:                                              ; preds = %230
  %237 = load i32, ptr %167, align 4, !tbaa !90
  %238 = add nsw i32 %237, %166
  %239 = load i16, ptr %173, align 2, !tbaa !67
  %240 = sext i16 %239 to i32
  %241 = mul nsw i32 %168, %240
  %242 = sext i32 %238 to i64
  %243 = getelementptr inbounds [2 x i16], ptr %178, i64 %242
  %244 = load i16, ptr %243, align 2, !tbaa !67
  %245 = sext i16 %244 to i32
  %246 = mul nsw i32 %241, %245
  %247 = add nsw i32 %246, 128
  %248 = lshr i32 %247, 8
  %249 = trunc i32 %248 to i16
  %250 = zext nneg i32 %231 to i64
  %251 = getelementptr inbounds [2 x i16], ptr %3, i64 %250
  store i16 %249, ptr %251, align 2, !tbaa !67
  %252 = getelementptr inbounds [2 x i16], ptr %178, i64 %242, i64 1
  %253 = load i16, ptr %252, align 2, !tbaa !67
  %254 = sext i16 %253 to i32
  %255 = mul nsw i32 %241, %254
  %256 = add nsw i32 %255, 128
  %257 = lshr i32 %256, 8
  %258 = trunc i32 %257 to i16
  %259 = getelementptr inbounds [2 x i16], ptr %3, i64 %250, i64 1
  store i16 %258, ptr %259, align 2, !tbaa !67
  %260 = add nuw nsw i32 %231, 1
  br label %261

261:                                              ; preds = %230, %236, %128
  %262 = phi i32 [ %129, %128 ], [ %260, %236 ], [ %231, %230 ]
  store i32 %262, ptr %4, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @x264_median(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 !PGOFuncName !117 {
  %4 = sub nsw i32 %0, %1
  %5 = tail call i32 @llvm.smin.i32(i32 %4, i32 0)
  %6 = tail call i32 @llvm.smax.i32(i32 %0, i32 %1)
  %7 = add nsw i32 %5, %1
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 %2)
  %9 = sub nsw i32 %6, %8
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 0)
  %11 = add nsw i32 %10, %8
  ret i32 %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define internal fastcc void @x264_macroblock_cache_ref(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6) unnamed_addr #6 !PGOFuncName !118 {
  %8 = zext nneg i32 %5 to i64
  %9 = add nuw nsw i32 %1, 12
  %10 = shl nsw i32 %2, 3
  %11 = add nsw i32 %9, %10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %8, i64 %12
  %14 = zext i8 %6 to i32
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef nonnull %13, i32 noundef %3, i32 noundef %4, i32 noundef 1, i32 noundef %14) #8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define internal fastcc void @x264_macroblock_cache_mv(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #6 !PGOFuncName !119 {
  %8 = zext nneg i32 %5 to i64
  %9 = add nuw nsw i32 %1, 12
  %10 = shl nsw i32 %2, 3
  %11 = add nsw i32 %9, %10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %8, i64 %12
  %14 = shl nuw nsw i32 %3, 2
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef nonnull %13, i32 noundef %14, i32 noundef %4, i32 noundef 4, i32 noundef %6) #8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define internal fastcc void @x264_macroblock_cache_rect(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #6 !PGOFuncName !120 {
  %6 = icmp eq i32 %3, 2
  %7 = mul i32 %4, 257
  %8 = select i1 %6, i32 %4, i32 %7
  %9 = trunc i32 %8 to i16
  %10 = icmp eq i32 %3, 4
  %11 = select i1 %6, i32 65537, i32 16843009
  %12 = select i1 %10, i32 1, i32 %11
  %13 = mul i32 %12, %4
  %14 = zext i32 %13 to i64
  %15 = mul nuw i64 %14, 4294967297
  %16 = shl nuw nsw i32 %3, 3
  %17 = add i32 %1, -2
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 31)
  switch i32 %18, label %71 [
    i32 0, label %23
    i32 1, label %36
    i32 3, label %49
    i32 7, label %19
  ]

19:                                               ; preds = %5
  %20 = zext nneg i32 %16 to i64
  %21 = shl nuw nsw i32 %3, 4
  %22 = zext nneg i32 %21 to i64
  br label %62

23:                                               ; preds = %5
  store i16 %9, ptr %0, align 2, !tbaa !38
  %24 = icmp eq i32 %2, 1
  br i1 %24, label %71, label %25

25:                                               ; preds = %23
  %26 = zext nneg i32 %16 to i64
  %27 = getelementptr inbounds i8, ptr %0, i64 %26
  store i16 %9, ptr %27, align 2, !tbaa !38
  %28 = icmp eq i32 %2, 2
  br i1 %28, label %71, label %29

29:                                               ; preds = %25
  %30 = shl nuw nsw i32 %3, 4
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds i8, ptr %0, i64 %31
  store i16 %9, ptr %32, align 2, !tbaa !38
  %33 = mul nuw nsw i32 %3, 24
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %0, i64 %34
  store i16 %9, ptr %35, align 2, !tbaa !38
  br label %71

36:                                               ; preds = %5
  store i32 %13, ptr %0, align 4, !tbaa !38
  %37 = icmp eq i32 %2, 1
  br i1 %37, label %71, label %38

38:                                               ; preds = %36
  %39 = zext nneg i32 %16 to i64
  %40 = getelementptr inbounds i8, ptr %0, i64 %39
  store i32 %13, ptr %40, align 4, !tbaa !38
  %41 = icmp eq i32 %2, 2
  br i1 %41, label %71, label %42

42:                                               ; preds = %38
  %43 = shl nuw nsw i32 %3, 4
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %0, i64 %44
  store i32 %13, ptr %45, align 4, !tbaa !38
  %46 = mul nuw nsw i32 %3, 24
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %0, i64 %47
  store i32 %13, ptr %48, align 4, !tbaa !38
  br label %71

49:                                               ; preds = %5
  store i64 %15, ptr %0, align 8, !tbaa !38
  %50 = icmp eq i32 %2, 1
  br i1 %50, label %71, label %51

51:                                               ; preds = %49
  %52 = zext nneg i32 %16 to i64
  %53 = getelementptr inbounds i8, ptr %0, i64 %52
  store i64 %15, ptr %53, align 8, !tbaa !38
  %54 = icmp eq i32 %2, 2
  br i1 %54, label %71, label %55

55:                                               ; preds = %51
  %56 = shl nuw nsw i32 %3, 4
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %0, i64 %57
  store i64 %15, ptr %58, align 8, !tbaa !38
  %59 = mul nuw nsw i32 %3, 24
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %0, i64 %60
  store i64 %15, ptr %61, align 8, !tbaa !38
  br label %71

62:                                               ; preds = %19, %62
  %63 = phi ptr [ %69, %62 ], [ %0, %19 ]
  %64 = phi i32 [ %68, %62 ], [ %2, %19 ]
  store i64 %15, ptr %63, align 8, !tbaa !38
  %65 = getelementptr inbounds i8, ptr %63, i64 8
  store i64 %15, ptr %65, align 8, !tbaa !38
  %66 = getelementptr inbounds i8, ptr %63, i64 %20
  store i64 %15, ptr %66, align 8, !tbaa !38
  %67 = getelementptr inbounds i8, ptr %66, i64 8
  store i64 %15, ptr %67, align 8, !tbaa !38
  %68 = add nsw i32 %64, -2
  %69 = getelementptr inbounds i8, ptr %63, i64 %22
  %70 = icmp eq i32 %68, 0
  br i1 %70, label %71, label %62, !llvm.loop !121

71:                                               ; preds = %62, %29, %55, %42, %5, %51, %49, %38, %36, %25, %23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @pack16to32_mask(i32 noundef %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !122 {
  %3 = and i32 %0, 65535
  %4 = shl i32 %1, 16
  %5 = or disjoint i32 %4, %3
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { optsize }
attributes #9 = { nounwind }

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
!66 = !{!"mvpred.c:x264_median_mv"}
!67 = !{!68, !68, i64 0}
!68 = !{!"short", !36, i64 0}
!69 = !{!40, !35, i64 404}
!70 = !{!40, !35, i64 7304}
!71 = !{i32 0, i32 2}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!40, !35, i64 25760}
!75 = !{!"mvpred.c:x264_mb_predict_mv_direct16x16_spatial"}
!76 = !{!43, !43, i64 0}
!77 = !{!40, !35, i64 16396}
!78 = !{!40, !35, i64 16400}
!79 = !{!80, !43, i64 3536}
!80 = !{!"x264_frame", !35, i64 0, !35, i64 4, !35, i64 8, !49, i64 16, !49, i64 24, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !43, i64 48, !35, i64 56, !35, i64 60, !35, i64 64, !35, i64 68, !35, i64 72, !35, i64 76, !35, i64 80, !36, i64 84, !36, i64 85, !36, i64 86, !45, i64 88, !45, i64 92, !35, i64 96, !35, i64 100, !36, i64 104, !36, i64 116, !36, i64 128, !35, i64 140, !35, i64 144, !35, i64 148, !36, i64 152, !36, i64 176, !36, i64 208, !43, i64 240, !36, i64 248, !36, i64 280, !36, i64 320, !36, i64 3392, !35, i64 3520, !43, i64 3528, !43, i64 3536, !43, i64 3544, !36, i64 3552, !43, i64 3568, !36, i64 3576, !36, i64 3848, !36, i64 6440, !36, i64 6712, !36, i64 6728, !36, i64 6736, !36, i64 6864, !36, i64 6868, !36, i64 8164, !35, i64 9460, !36, i64 9464, !36, i64 9536, !43, i64 12128, !43, i64 12136, !43, i64 12144, !43, i64 12152, !43, i64 12160, !35, i64 12168, !43, i64 12176, !43, i64 12184, !43, i64 12192, !35, i64 12200, !36, i64 12204, !35, i64 12276, !49, i64 12280, !81, i64 12288, !36, i64 12320, !36, i64 12572, !36, i64 13576, !35, i64 15584, !35, i64 15588, !35, i64 15592, !35, i64 15596, !35, i64 15600, !35, i64 15604, !35, i64 15608, !45, i64 15612, !35, i64 15616, !35, i64 15620, !35, i64 15624}
!81 = !{!"", !59, i64 0, !59, i64 8, !59, i64 16, !59, i64 24}
!82 = !{!40, !35, i64 16392}
!83 = !{!80, !43, i64 3544}
!84 = distinct !{!84, !73}
!85 = !{!40, !35, i64 4}
!86 = !{!40, !35, i64 16376}
!87 = !{!40, !35, i64 16380}
!88 = distinct !{!88, !73}
!89 = !{!"mvpred.c:x264_mb_predict_mv_direct16x16_temporal"}
!90 = !{!40, !35, i64 16372}
!91 = !{!40, !35, i64 16388}
!92 = !{!40, !35, i64 16384}
!93 = !{!40, !35, i64 7268}
!94 = !{!40, !43, i64 26360}
!95 = distinct !{!95, !73}
!96 = !{!40, !35, i64 7248}
!97 = !{!40, !35, i64 14672}
!98 = !{!40, !43, i64 14680}
!99 = !{!80, !35, i64 56}
!100 = !{!40, !35, i64 16576}
!101 = !{!40, !35, i64 16600}
!102 = !{!40, !35, i64 16604}
!103 = !{!40, !35, i64 16608}
!104 = !{!40, !35, i64 16612}
!105 = !{!40, !43, i64 14688}
!106 = !{!80, !35, i64 0}
!107 = !{!40, !35, i64 7288}
!108 = !{!40, !35, i64 16436}
!109 = !{!80, !43, i64 3568}
!110 = !{!40, !43, i64 3200}
!111 = !{!112, !35, i64 1084}
!112 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !36, i64 52, !35, i64 1076, !35, i64 1080, !35, i64 1084, !35, i64 1088, !35, i64 1092, !35, i64 1096, !35, i64 1100, !35, i64 1104, !113, i64 1108, !35, i64 1124, !114, i64 1128, !35, i64 1296}
!113 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!114 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !35, i64 60, !35, i64 64, !35, i64 68, !35, i64 72, !35, i64 76, !35, i64 80, !115, i64 84, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164}
!115 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44}
!116 = !{!112, !35, i64 1088}
!117 = !{!"mvpred.c:x264_median"}
!118 = !{!"mvpred.c:x264_macroblock_cache_ref"}
!119 = !{!"mvpred.c:x264_macroblock_cache_mv"}
!120 = !{!"mvpred.c:x264_macroblock_cache_rect"}
!121 = distinct !{!121, !73}
!122 = !{!"mvpred.c:pack16to32_mask"}
