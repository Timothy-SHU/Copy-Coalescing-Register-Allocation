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
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = sext i32 %1 to i64
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %9, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !9
  %13 = add nsw i32 %8, -1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %9, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !9
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %9, i64 %14
  %18 = add nsw i32 %8, -8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %9, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !9
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %9, i64 %19
  %23 = add nsw i32 %18, %3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %9, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !9
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
  %37 = load i8, ptr %36, align 1, !tbaa !9
  br label %38

38:                                               ; preds = %5, %33
  %39 = phi i64 [ %35, %33 ], [ %24, %5 ]
  %40 = phi i8 [ %37, %33 ], [ %26, %5 ]
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %9, i64 %39
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %43 = load i32, ptr %42, align 4, !tbaa !10
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
  %49 = load i32, ptr %22, align 4, !tbaa !9
  store i32 %49, ptr %4, align 4, !tbaa !9
  br label %93

50:                                               ; preds = %44
  %51 = icmp eq i8 %16, %12
  br i1 %51, label %52, label %64

52:                                               ; preds = %50
  %53 = load i32, ptr %17, align 4, !tbaa !9
  store i32 %53, ptr %4, align 4, !tbaa !9
  br label %93

54:                                               ; preds = %38
  %55 = icmp eq i32 %2, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  %57 = icmp eq i8 %16, %12
  br i1 %57, label %58, label %64

58:                                               ; preds = %56
  %59 = load i32, ptr %17, align 4, !tbaa !9
  store i32 %59, ptr %4, align 4, !tbaa !9
  br label %93

60:                                               ; preds = %54
  %61 = icmp eq i8 %40, %12
  br i1 %61, label %62, label %64

62:                                               ; preds = %60
  %63 = load i32, ptr %41, align 4, !tbaa !9
  store i32 %63, ptr %4, align 4, !tbaa !9
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
  %79 = load i32, ptr %17, align 4, !tbaa !9
  store i32 %79, ptr %4, align 4, !tbaa !9
  br label %93

80:                                               ; preds = %77
  br i1 %67, label %81, label %83

81:                                               ; preds = %80
  %82 = load i32, ptr %22, align 4, !tbaa !9
  store i32 %82, ptr %4, align 4, !tbaa !9
  br label %93

83:                                               ; preds = %80
  %84 = load i32, ptr %41, align 4, !tbaa !9
  store i32 %84, ptr %4, align 4, !tbaa !9
  br label %93

85:                                               ; preds = %75
  %86 = icmp eq i8 %21, -2
  %87 = icmp eq i8 %40, -2
  %88 = select i1 %86, i1 %87, i1 false
  %89 = icmp ne i8 %16, -2
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %91, label %74

91:                                               ; preds = %85
  %92 = load i32, ptr %17, align 4, !tbaa !9
  store i32 %92, ptr %4, align 4, !tbaa !9
  br label %93

93:                                               ; preds = %74, %78, %83, %81, %91, %62, %58, %52, %48
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @x264_median_mv(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = load i16, ptr %1, align 2, !tbaa !37
  %6 = sext i16 %5 to i32
  %7 = load i16, ptr %2, align 2, !tbaa !37
  %8 = sext i16 %7 to i32
  %9 = load i16, ptr %3, align 2, !tbaa !37
  %10 = sext i16 %9 to i32
  %11 = tail call fastcc i32 @x264_median(i32 noundef %6, i32 noundef %8, i32 noundef %10) #8
  %12 = trunc i32 %11 to i16
  store i16 %12, ptr %0, align 2, !tbaa !37
  %13 = getelementptr inbounds i16, ptr %1, i64 1
  %14 = load i16, ptr %13, align 2, !tbaa !37
  %15 = sext i16 %14 to i32
  %16 = getelementptr inbounds i16, ptr %2, i64 1
  %17 = load i16, ptr %16, align 2, !tbaa !37
  %18 = sext i16 %17 to i32
  %19 = getelementptr inbounds i16, ptr %3, i64 1
  %20 = load i16, ptr %19, align 2, !tbaa !37
  %21 = sext i16 %20 to i32
  %22 = tail call fastcc i32 @x264_median(i32 noundef %15, i32 noundef %18, i32 noundef %21) #8
  %23 = trunc i32 %22 to i16
  %24 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %23, ptr %24, align 2, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_mb_predict_mv_16x16(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #2 {
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %5, i64 11
  %7 = load i8, ptr %6, align 1, !tbaa !9
  %8 = sext i8 %7 to i32
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %5, i64 11
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %5, i64 4
  %11 = load i8, ptr %10, align 4, !tbaa !9
  %12 = sext i8 %11 to i32
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %5, i64 4
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %5, i64 8
  %15 = load i8, ptr %14, align 8, !tbaa !9
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %5, i64 8
  %17 = icmp eq i8 %15, -2
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %5, i64 3
  %20 = load i8, ptr %19, align 1, !tbaa !9
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
  %40 = load i32, ptr %9, align 4, !tbaa !9
  store i32 %40, ptr %3, align 4, !tbaa !9
  br label %54

41:                                               ; preds = %38
  br i1 %28, label %42, label %44

42:                                               ; preds = %41
  %43 = load i32, ptr %13, align 4, !tbaa !9
  store i32 %43, ptr %3, align 4, !tbaa !9
  br label %54

44:                                               ; preds = %41
  %45 = load i32, ptr %23, align 4, !tbaa !9
  store i32 %45, ptr %3, align 4, !tbaa !9
  br label %54

46:                                               ; preds = %36
  %47 = icmp eq i8 %11, -2
  %48 = icmp eq i8 %24, -2
  %49 = and i1 %47, %48
  %50 = icmp ne i8 %7, -2
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %35

52:                                               ; preds = %46
  %53 = load i32, ptr %9, align 4, !tbaa !9
  store i32 %53, ptr %3, align 4, !tbaa !9
  br label %54

54:                                               ; preds = %52, %42, %44, %39, %35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_mb_predict_mv_pskip(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 11
  %4 = load i8, ptr %3, align 1, !tbaa !9
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 4
  %6 = load i8, ptr %5, align 4, !tbaa !9
  %7 = sext i8 %6 to i32
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 4
  %9 = icmp eq i8 %4, -2
  %10 = icmp eq i8 %6, -2
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = sext i8 %4 to i32
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 11
  %15 = load i32, ptr %14, align 4, !tbaa !9
  %16 = or i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = load i32, ptr %8, align 4, !tbaa !9
  %20 = or i32 %19, %7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %12, %2
  store i32 0, ptr %1, align 4, !tbaa !9
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
  %4 = load i32, ptr %3, align 4, !tbaa !39
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %168, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 15
  %8 = load i32, ptr %7, align 8, !tbaa !40
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc i32 @x264_mb_predict_mv_direct16x16_spatial(ptr noundef nonnull %0) #8, !range !41
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
  %21 = load i32, ptr %20, align 8, !tbaa !9
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 12
  %23 = load i32, ptr %22, align 4, !tbaa !9
  %24 = xor i32 %23, %21
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 1
  %26 = load i32, ptr %25, align 8, !tbaa !9
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 12
  %28 = load i32, ptr %27, align 4, !tbaa !9
  %29 = xor i32 %28, %26
  %30 = or i32 %29, %24
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8
  %32 = load i8, ptr %31, align 8, !tbaa !9
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %34 = load i8, ptr %33, align 1, !tbaa !9
  %35 = xor i8 %34, %32
  %36 = sext i8 %35 to i32
  %37 = or i32 %30, %36
  %38 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 1
  %39 = load i8, ptr %38, align 4, !tbaa !9
  %40 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 12
  %41 = load i8, ptr %40, align 1, !tbaa !9
  %42 = xor i8 %41, %39
  %43 = sext i8 %42 to i32
  %44 = or i32 %37, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %80

46:                                               ; preds = %19
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %48 = load i32, ptr %47, align 4, !tbaa !10
  %49 = icmp eq i32 %48, 16
  br i1 %49, label %79, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 0, i64 3
  %52 = load i32, ptr %51, align 4, !tbaa !9
  %53 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 30
  %54 = load i32, ptr %53, align 4, !tbaa !9
  %55 = xor i32 %54, %52
  %56 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 1, i64 3
  %57 = load i32, ptr %56, align 4, !tbaa !9
  %58 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 30
  %59 = load i32, ptr %58, align 4, !tbaa !9
  %60 = xor i32 %59, %57
  %61 = or i32 %60, %55
  %62 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 0, i64 3
  %63 = load i8, ptr %62, align 1, !tbaa !9
  %64 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 30
  %65 = load i8, ptr %64, align 1, !tbaa !9
  %66 = xor i8 %65, %63
  %67 = sext i8 %66 to i32
  %68 = or i32 %61, %67
  %69 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 1, i64 3
  %70 = load i8, ptr %69, align 1, !tbaa !9
  %71 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 30
  %72 = load i8, ptr %71, align 1, !tbaa !9
  %73 = xor i8 %72, %70
  %74 = sext i8 %73 to i32
  %75 = or i32 %68, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %50
  %78 = icmp eq i32 %48, 13
  br i1 %78, label %82, label %79

79:                                               ; preds = %46, %77
  store i32 0, ptr %1, align 4, !tbaa !5
  br label %168

80:                                               ; preds = %50, %19
  %81 = phi i32 [ %44, %19 ], [ %75, %50 ]
  store i32 %81, ptr %1, align 4, !tbaa !5
  br label %136

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 0, i64 1
  %84 = load i32, ptr %83, align 4, !tbaa !9
  %85 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 14
  %86 = load i32, ptr %85, align 4, !tbaa !9
  %87 = xor i32 %86, %84
  %88 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 1, i64 1
  %89 = load i32, ptr %88, align 4, !tbaa !9
  %90 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 14
  %91 = load i32, ptr %90, align 4, !tbaa !9
  %92 = xor i32 %91, %89
  %93 = or i32 %92, %87
  %94 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 0, i64 2
  %95 = load i32, ptr %94, align 8, !tbaa !9
  %96 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 28
  %97 = load i32, ptr %96, align 4, !tbaa !9
  %98 = xor i32 %97, %95
  %99 = or i32 %93, %98
  %100 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 1, i64 2
  %101 = load i32, ptr %100, align 8, !tbaa !9
  %102 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 28
  %103 = load i32, ptr %102, align 4, !tbaa !9
  %104 = xor i32 %103, %101
  %105 = or i32 %99, %104
  %106 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 0, i64 1
  %107 = load i8, ptr %106, align 1, !tbaa !9
  %108 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 14
  %109 = load i8, ptr %108, align 1, !tbaa !9
  %110 = xor i8 %109, %107
  %111 = sext i8 %110 to i32
  %112 = or i32 %105, %111
  %113 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 1, i64 1
  %114 = load i8, ptr %113, align 1, !tbaa !9
  %115 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 14
  %116 = load i8, ptr %115, align 1, !tbaa !9
  %117 = xor i8 %116, %114
  %118 = sext i8 %117 to i32
  %119 = or i32 %112, %118
  %120 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 0, i64 2
  %121 = load i8, ptr %120, align 2, !tbaa !9
  %122 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 28
  %123 = load i8, ptr %122, align 1, !tbaa !9
  %124 = xor i8 %123, %121
  %125 = sext i8 %124 to i32
  %126 = or i32 %119, %125
  %127 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 1, i64 2
  %128 = load i8, ptr %127, align 2, !tbaa !9
  %129 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 28
  %130 = load i8, ptr %129, align 1, !tbaa !9
  %131 = xor i8 %130, %128
  %132 = sext i8 %131 to i32
  %133 = or i32 %126, %132
  store i32 %133, ptr %1, align 4, !tbaa !5
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %168, label %136

135:                                              ; preds = %14
  br i1 %17, label %136, label %168

136:                                              ; preds = %80, %135, %82
  %137 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %138 = load i32, ptr %137, align 4, !tbaa !10
  %139 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 9
  br label %140

140:                                              ; preds = %136, %140
  %141 = phi i1 [ true, %136 ], [ false, %140 ]
  %142 = phi i64 [ 0, %136 ], [ 1, %140 ]
  %143 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %142, i64 12
  %144 = load i32, ptr %143, align 4, !tbaa !9
  %145 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 %142
  store i32 %144, ptr %145, align 8, !tbaa !9
  %146 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %142, i64 14
  %147 = load i32, ptr %146, align 4, !tbaa !9
  %148 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 %142, i64 1
  store i32 %147, ptr %148, align 4, !tbaa !9
  %149 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %142, i64 28
  %150 = load i32, ptr %149, align 4, !tbaa !9
  %151 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 %142, i64 2
  store i32 %150, ptr %151, align 8, !tbaa !9
  %152 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %142, i64 30
  %153 = load i32, ptr %152, align 4, !tbaa !9
  %154 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 7, i64 %142, i64 3
  store i32 %153, ptr %154, align 4, !tbaa !9
  %155 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %142, i64 12
  %156 = load i8, ptr %155, align 1, !tbaa !9
  %157 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 %142
  store i8 %156, ptr %157, align 4, !tbaa !9
  %158 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %142, i64 14
  %159 = load i8, ptr %158, align 1, !tbaa !9
  %160 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 %142, i64 1
  store i8 %159, ptr %160, align 1, !tbaa !9
  %161 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %142, i64 28
  %162 = load i8, ptr %161, align 1, !tbaa !9
  %163 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 %142, i64 2
  store i8 %162, ptr %163, align 2, !tbaa !9
  %164 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %142, i64 30
  %165 = load i8, ptr %164, align 1, !tbaa !9
  %166 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 8, i64 %142, i64 3
  store i8 %165, ptr %166, align 1, !tbaa !9
  br i1 %141, label %140, label %167, !llvm.loop !42

167:                                              ; preds = %140
  store i32 %138, ptr %139, align 16, !tbaa !44
  br label %168

168:                                              ; preds = %167, %79, %82, %135, %2
  %169 = phi i32 [ %15, %82 ], [ 0, %2 ], [ 0, %135 ], [ %15, %79 ], [ %15, %167 ]
  ret i32 %169
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @x264_mb_predict_mv_direct16x16_spatial(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x [2 x i16]], align 8
  %4 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49
  %6 = load ptr, ptr %5, align 16, !tbaa !45
  %7 = getelementptr inbounds %struct.x264_frame, ptr %6, i64 0, i32 48
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 7
  %10 = load i32, ptr %9, align 4, !tbaa !46
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.x264_frame, ptr %6, i64 0, i32 48, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %14 = getelementptr inbounds %struct.x264_frame, ptr %6, i64 0, i32 43
  %15 = load ptr, ptr %14, align 16, !tbaa !45
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 8
  %17 = load i32, ptr %16, align 16, !tbaa !47
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [2 x i16], ptr %15, i64 %18
  store ptr %19, ptr %4, align 16, !tbaa !45
  %20 = getelementptr inbounds ptr, ptr %4, i64 1
  %21 = getelementptr inbounds %struct.x264_frame, ptr %6, i64 0, i32 43, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = getelementptr inbounds [2 x i16], ptr %22, i64 %18
  store ptr %23, ptr %20, align 8, !tbaa !45
  %24 = getelementptr inbounds %struct.x264_frame, ptr %6, i64 0, i32 41
  %25 = load ptr, ptr %24, align 16, !tbaa !48
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !51
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %25, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !9
  %31 = getelementptr inbounds %struct.x264_frame, ptr %6, i64 0, i32 42
  %32 = load ptr, ptr %31, align 8, !tbaa !52
  %33 = getelementptr inbounds i8, ptr %32, i64 %28
  %34 = load i8, ptr %33, align 1, !tbaa !9
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  store i32 %35, ptr %36, align 4, !tbaa !10
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
  %50 = load i8, ptr %49, align 1, !tbaa !9
  %51 = sext i8 %50 to i32
  %52 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %48, i64 11
  %53 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %48, i64 4
  %54 = load i8, ptr %53, align 4, !tbaa !9
  %55 = sext i8 %54 to i32
  %56 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %48, i64 4
  %57 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %48, i64 8
  %58 = load i8, ptr %57, align 8, !tbaa !9
  %59 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %48, i64 8
  %60 = icmp eq i8 %58, -2
  br i1 %60, label %61, label %65

61:                                               ; preds = %46
  %62 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %48, i64 3
  %63 = load i8, ptr %62, align 1, !tbaa !9
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
  store i32 0, ptr %73, align 4, !tbaa !9
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
  %88 = load i32, ptr %52, align 4, !tbaa !9
  %89 = getelementptr inbounds [2 x [2 x i16]], ptr %3, i64 0, i64 %48
  store i32 %88, ptr %89, align 4, !tbaa !9
  br label %96

90:                                               ; preds = %86
  %91 = getelementptr inbounds [2 x [2 x i16]], ptr %3, i64 0, i64 %48
  br i1 %77, label %92, label %94

92:                                               ; preds = %90
  %93 = load i32, ptr %56, align 4, !tbaa !9
  store i32 %93, ptr %91, align 4, !tbaa !9
  br label %96

94:                                               ; preds = %90
  %95 = load i32, ptr %66, align 4, !tbaa !9
  store i32 %95, ptr %91, align 4, !tbaa !9
  br label %96

96:                                               ; preds = %84, %92, %94, %87, %72
  %97 = phi i32 [ -1, %72 ], [ %70, %87 ], [ %70, %94 ], [ %55, %92 ], [ %70, %84 ]
  %98 = trunc i32 %97 to i8
  %99 = trunc i64 %48 to i32
  tail call fastcc void @x264_macroblock_cache_ref(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4, i32 noundef %99, i8 noundef zeroext %98) #8
  %100 = getelementptr inbounds [2 x [2 x i16]], ptr %3, i64 0, i64 %48
  %101 = load i32, ptr %100, align 4, !tbaa !9
  tail call fastcc void @x264_macroblock_cache_mv(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4, i32 noundef %99, i32 noundef %101) #8
  %102 = getelementptr inbounds [2 x i8], ptr %2, i64 0, i64 %48
  store i8 %98, ptr %102, align 1, !tbaa !9
  br i1 %47, label %46, label %37, !llvm.loop !53

103:                                              ; preds = %37
  tail call fastcc void @x264_macroblock_cache_ref(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4, i32 noundef 0, i8 noundef zeroext 0) #8
  tail call fastcc void @x264_macroblock_cache_ref(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4, i32 noundef 1, i8 noundef zeroext 0) #8
  br label %195

104:                                              ; preds = %37
  %105 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %106 = load i32, ptr %105, align 4, !tbaa !54
  %107 = icmp sgt i32 %106, 1
  br i1 %107, label %108, label %120

108:                                              ; preds = %104
  %109 = getelementptr inbounds [2 x i16], ptr %3, i64 0, i64 1
  %110 = load i16, ptr %109, align 2, !tbaa !37
  %111 = sext i16 %110 to i32
  %112 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21, i64 1
  %113 = load i32, ptr %112, align 4, !tbaa !5
  %114 = icmp slt i32 %113, %111
  %115 = getelementptr inbounds [2 x [2 x i16]], ptr %3, i64 0, i64 1, i64 1
  %116 = load i16, ptr %115, align 2
  %117 = sext i16 %116 to i32
  %118 = icmp slt i32 %113, %117
  %119 = select i1 %114, i1 true, i1 %118
  br i1 %119, label %195, label %120

120:                                              ; preds = %108, %104
  %121 = load i64, ptr %3, align 8, !tbaa !9
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
  %153 = load i32, ptr %145, align 8, !tbaa !55
  %154 = mul nsw i32 %153, %152
  %155 = add nsw i32 %154, %151
  %156 = load i32, ptr %146, align 4, !tbaa !56
  %157 = mul nsw i32 %156, %152
  %158 = add nsw i32 %157, %151
  %159 = mul nsw i32 %158, 3
  %160 = sext i32 %155 to i64
  %161 = getelementptr inbounds i8, ptr %38, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !9
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %149
  %165 = icmp slt i8 %162, 0
  br i1 %165, label %166, label %192

166:                                              ; preds = %164
  %167 = getelementptr inbounds i8, ptr %39, i64 %160
  %168 = load i8, ptr %167, align 1, !tbaa !9
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %192

170:                                              ; preds = %166, %149
  %171 = phi i64 [ 0, %149 ], [ 1, %166 ]
  %172 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !45
  %174 = sext i32 %159 to i64
  %175 = getelementptr inbounds [2 x i16], ptr %173, i64 %174
  %176 = load i16, ptr %175, align 2, !tbaa !37
  %177 = tail call i16 @llvm.abs.i16(i16 %176, i1 false)
  %178 = icmp ult i16 %177, 2
  br i1 %178, label %179, label %192

179:                                              ; preds = %170
  %180 = getelementptr inbounds [2 x i16], ptr %173, i64 %174, i64 1
  %181 = load i16, ptr %180, align 2, !tbaa !37
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
  br i1 %194, label %149, label %195, !llvm.loop !57

195:                                              ; preds = %192, %134, %120, %130, %108, %103
  %196 = phi i32 [ 1, %103 ], [ 0, %108 ], [ 1, %130 ], [ 1, %120 ], [ 1, %134 ], [ 1, %192 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  ret i32 %196
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @x264_mb_predict_mv_direct16x16_temporal(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !58
  %4 = shl nsw i32 %3, 4
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !59
  %7 = mul nsw i32 %4, %6
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 4
  %9 = load i32, ptr %8, align 16, !tbaa !60
  %10 = shl nsw i32 %9, 2
  %11 = shl nsw i32 %3, 2
  %12 = mul nsw i32 %11, %6
  %13 = shl nsw i32 %9, 1
  %14 = add nsw i32 %13, %12
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49
  %16 = load ptr, ptr %15, align 16, !tbaa !45
  %17 = getelementptr inbounds %struct.x264_frame, ptr %16, i64 0, i32 41
  %18 = load ptr, ptr %17, align 16, !tbaa !48
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !51
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %18, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !9
  %24 = getelementptr inbounds %struct.x264_frame, ptr %16, i64 0, i32 42
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = getelementptr inbounds i8, ptr %25, i64 %21
  %27 = load i8, ptr %26, align 1, !tbaa !9
  %28 = zext i8 %27 to i32
  tail call fastcc void @x264_macroblock_cache_ref(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4, i32 noundef 1, i8 noundef zeroext 0) #8
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  store i32 %28, ptr %29, align 4, !tbaa !10
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
  %55 = load i32, ptr %43, align 8, !tbaa !55
  %56 = mul nsw i32 %55, %53
  %57 = add nsw i32 %54, %56
  %58 = load ptr, ptr %15, align 16, !tbaa !45
  %59 = getelementptr inbounds %struct.x264_frame, ptr %58, i64 0, i32 48
  %60 = load ptr, ptr %59, align 8, !tbaa !45
  %61 = sext i32 %57 to i64
  %62 = getelementptr inbounds i8, ptr %60, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !9
  %64 = sext i8 %63 to i32
  %65 = load i32, ptr %44, align 4, !tbaa !61
  %66 = ashr i32 %64, %65
  %67 = add nsw i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 83, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !9
  %71 = sext i8 %70 to i32
  %72 = shl i32 %71, %65
  %73 = and i32 %65, %64
  %74 = add nsw i32 %72, %73
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %76, label %124

76:                                               ; preds = %50
  %77 = load ptr, ptr %45, align 8, !tbaa !62
  %78 = zext nneg i32 %74 to i64
  %79 = getelementptr inbounds [4 x i16], ptr %77, i64 %78
  %80 = load i16, ptr %79, align 2, !tbaa !37
  %81 = sext i16 %80 to i32
  %82 = getelementptr inbounds %struct.x264_frame, ptr %58, i64 0, i32 43
  %83 = load ptr, ptr %82, align 16, !tbaa !45
  %84 = load i32, ptr %46, align 4, !tbaa !56
  %85 = mul i32 %84, %53
  %86 = add i32 %85, %52
  %87 = mul i32 %86, 3
  %88 = add i32 %47, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [2 x i16], ptr %83, i64 %89
  %91 = load i16, ptr %90, align 2, !tbaa !37
  %92 = sext i16 %91 to i32
  %93 = mul nsw i32 %92, %81
  %94 = add nsw i32 %93, 128
  %95 = ashr i32 %94, 8
  %96 = getelementptr inbounds i16, ptr %90, i64 1
  %97 = load i16, ptr %96, align 2, !tbaa !37
  %98 = sext i16 %97 to i32
  %99 = mul nsw i32 %98, %81
  %100 = add nsw i32 %99, 128
  %101 = ashr i32 %100, 8
  %102 = load i32, ptr %48, align 4, !tbaa !54
  %103 = icmp sgt i32 %102, 1
  br i1 %103, label %104, label %110

104:                                              ; preds = %76
  %105 = load i32, ptr %49, align 4, !tbaa !5
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
  %115 = load i16, ptr %90, align 2, !tbaa !37
  %116 = sext i16 %115 to i32
  %117 = sub nsw i32 %95, %116
  %118 = load i16, ptr %96, align 2, !tbaa !37
  %119 = sext i16 %118 to i32
  %120 = sub nsw i32 %101, %119
  %121 = tail call fastcc i32 @pack16to32_mask(i32 noundef %117, i32 noundef %120) #8
  tail call fastcc void @x264_macroblock_cache_mv(ptr noundef nonnull %0, i32 noundef %111, i32 noundef %112, i32 noundef %38, i32 noundef %40, i32 noundef 1, i32 noundef %121) #8
  %122 = add nuw nsw i32 %51, %36
  %123 = icmp slt i32 %122, %34
  br i1 %123, label %50, label %124, !llvm.loop !63

124:                                              ; preds = %50, %104, %110, %32, %31
  %125 = phi i32 [ 1, %31 ], [ 1, %32 ], [ 0, %50 ], [ 0, %104 ], [ 1, %110 ]
  ret i32 %125
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_mb_predict_mv_ref16x16(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #4 {
  %6 = sext i32 %1 to i64
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 48, i64 %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %11 = load i32, ptr %10, align 16, !tbaa !64
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %21

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %6, i64 30
  %15 = load i8, ptr %14, align 1, !tbaa !9
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %6, i64 30
  %20 = load i32, ptr %19, align 4, !tbaa !9
  store i32 %20, ptr %3, align 4, !tbaa !9
  br label %21

21:                                               ; preds = %18, %13, %5
  %22 = phi i32 [ 1, %18 ], [ 0, %13 ], [ 0, %5 ]
  %23 = icmp eq i32 %2, 0
  br i1 %23, label %24, label %71

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 16
  %26 = load i32, ptr %25, align 16, !tbaa !65
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %71, label %28

28:                                               ; preds = %24
  %29 = icmp eq i32 %1, 0
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %31 = load ptr, ptr %30, align 8, !tbaa !66
  br i1 %29, label %43, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49
  %34 = load ptr, ptr %33, align 16, !tbaa !45
  %35 = getelementptr inbounds %struct.x264_frame, ptr %34, i64 0, i32 10
  %36 = load i32, ptr %35, align 8, !tbaa !67
  %37 = getelementptr inbounds %struct.x264_frame, ptr %31, i64 0, i32 10
  %38 = load i32, ptr %37, align 8, !tbaa !67
  %39 = xor i32 %38, -1
  %40 = add i32 %36, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.x264_frame, ptr %31, i64 0, i32 45, i64 1, i64 %41
  br label %55

43:                                               ; preds = %28
  %44 = getelementptr inbounds %struct.x264_frame, ptr %31, i64 0, i32 45
  %45 = getelementptr inbounds %struct.x264_frame, ptr %31, i64 0, i32 10
  %46 = load i32, ptr %45, align 8, !tbaa !67
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47
  %48 = load ptr, ptr %47, align 16, !tbaa !45
  %49 = getelementptr inbounds %struct.x264_frame, ptr %48, i64 0, i32 10
  %50 = load i32, ptr %49, align 8, !tbaa !67
  %51 = xor i32 %50, -1
  %52 = add i32 %46, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [17 x ptr], ptr %44, i64 0, i64 %53
  br label %55

55:                                               ; preds = %43, %32
  %56 = phi ptr [ %42, %32 ], [ %54, %43 ]
  %57 = load ptr, ptr %56, align 8, !tbaa !45
  %58 = load i16, ptr %57, align 2, !tbaa !37
  %59 = icmp eq i16 %58, 32767
  br i1 %59, label %71, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %62 = load i32, ptr %61, align 8, !tbaa !51
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x i16], ptr %57, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !9
  %66 = shl i32 %65, 1
  %67 = and i32 %66, -65538
  %68 = zext nneg i32 %22 to i64
  %69 = getelementptr inbounds [2 x i16], ptr %3, i64 %68
  store i32 %67, ptr %69, align 4, !tbaa !9
  %70 = add nuw nsw i32 %22, 1
  br label %71

71:                                               ; preds = %55, %60, %24, %21
  %72 = phi i32 [ %22, %24 ], [ %22, %21 ], [ %70, %60 ], [ %22, %55 ]
  %73 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 28
  %74 = load i32, ptr %73, align 16, !tbaa !68
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 34
  %79 = load i32, ptr %78, align 8, !tbaa !69
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [2 x i16], ptr %9, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !9
  %83 = zext nneg i32 %72 to i64
  %84 = getelementptr inbounds [2 x i16], ptr %3, i64 %83
  store i32 %82, ptr %84, align 4, !tbaa !9
  %85 = add nuw nsw i32 %72, 1
  %86 = load i32, ptr %73, align 16, !tbaa !68
  br label %87

87:                                               ; preds = %77, %71
  %88 = phi i32 [ %86, %77 ], [ %74, %71 ]
  %89 = phi i32 [ %85, %77 ], [ %72, %71 ]
  %90 = and i32 %88, 2
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %128, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 35
  %94 = load i32, ptr %93, align 4, !tbaa !70
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [2 x i16], ptr %9, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !9
  %98 = zext nneg i32 %89 to i64
  %99 = getelementptr inbounds [2 x i16], ptr %3, i64 %98
  store i32 %97, ptr %99, align 4, !tbaa !9
  %100 = add nuw nsw i32 %89, 1
  %101 = load i32, ptr %73, align 16, !tbaa !68
  %102 = and i32 %101, 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %92
  %105 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 36
  %106 = load i32, ptr %105, align 16, !tbaa !71
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [2 x i16], ptr %9, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !9
  %110 = zext nneg i32 %100 to i64
  %111 = getelementptr inbounds [2 x i16], ptr %3, i64 %110
  store i32 %109, ptr %111, align 4, !tbaa !9
  %112 = add nuw nsw i32 %89, 2
  %113 = load i32, ptr %73, align 16, !tbaa !68
  br label %114

114:                                              ; preds = %104, %92
  %115 = phi i32 [ %113, %104 ], [ %101, %92 ]
  %116 = phi i32 [ %112, %104 ], [ %100, %92 ]
  %117 = and i32 %115, 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 37
  %121 = load i32, ptr %120, align 4, !tbaa !72
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [2 x i16], ptr %9, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !9
  %125 = zext nneg i32 %116 to i64
  %126 = getelementptr inbounds [2 x i16], ptr %3, i64 %125
  store i32 %124, ptr %126, align 4, !tbaa !9
  %127 = add nuw nsw i32 %116, 1
  br label %128

128:                                              ; preds = %114, %119, %87
  %129 = phi i32 [ %127, %119 ], [ %116, %114 ], [ %89, %87 ]
  %130 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47
  %131 = load ptr, ptr %130, align 16, !tbaa !45
  %132 = getelementptr inbounds %struct.x264_frame, ptr %131, i64 0, i32 49
  %133 = load i32, ptr %132, align 8, !tbaa !5
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %261

135:                                              ; preds = %128
  %136 = icmp eq i32 %1, 0
  %137 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49
  %138 = select i1 %136, ptr %130, ptr %137
  %139 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %140 = load i32, ptr %139, align 4, !tbaa !59
  %141 = and i32 %140, 1
  %142 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %143 = load ptr, ptr %142, align 16, !tbaa !73
  %144 = load i32, ptr %143, align 16, !tbaa !74
  %145 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 12
  %146 = load i32, ptr %145, align 8, !tbaa !75
  %147 = mul nuw nsw i32 %146, %141
  %148 = add nsw i32 %147, %144
  %149 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %150 = load i32, ptr %149, align 4, !tbaa !61
  %151 = ashr i32 %2, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds ptr, ptr %138, i64 %152
  %154 = load ptr, ptr %153, align 8, !tbaa !45
  %155 = load i32, ptr %154, align 16, !tbaa !74
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
  %166 = load i32, ptr %165, align 8, !tbaa !51
  %167 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  %168 = sub i32 %148, %164
  %169 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %170 = load i32, ptr %169, align 4, !tbaa !76
  %171 = and i32 %170, %141
  %172 = zext nneg i32 %171 to i64
  %173 = getelementptr inbounds %struct.x264_frame, ptr %131, i64 0, i32 51, i64 %172
  %174 = load i16, ptr %173, align 2, !tbaa !37
  %175 = sext i16 %174 to i32
  %176 = mul nsw i32 %168, %175
  %177 = getelementptr inbounds %struct.x264_frame, ptr %131, i64 0, i32 44
  %178 = load ptr, ptr %177, align 16, !tbaa !77
  %179 = sext i32 %166 to i64
  %180 = getelementptr inbounds [2 x i16], ptr %178, i64 %179
  %181 = load i16, ptr %180, align 2, !tbaa !37
  %182 = sext i16 %181 to i32
  %183 = mul nsw i32 %176, %182
  %184 = add nsw i32 %183, 128
  %185 = lshr i32 %184, 8
  %186 = trunc i32 %185 to i16
  %187 = zext nneg i32 %129 to i64
  %188 = getelementptr inbounds [2 x i16], ptr %3, i64 %187
  store i16 %186, ptr %188, align 2, !tbaa !37
  %189 = getelementptr inbounds [2 x i16], ptr %178, i64 %179, i64 1
  %190 = load i16, ptr %189, align 2, !tbaa !37
  %191 = sext i16 %190 to i32
  %192 = mul nsw i32 %176, %191
  %193 = add nsw i32 %192, 128
  %194 = lshr i32 %193, 8
  %195 = trunc i32 %194 to i16
  %196 = getelementptr inbounds [2 x i16], ptr %3, i64 %187, i64 1
  store i16 %195, ptr %196, align 2, !tbaa !37
  %197 = add nuw nsw i32 %129, 1
  %198 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 4
  %199 = load i32, ptr %198, align 16, !tbaa !60
  %200 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %201 = load ptr, ptr %200, align 16, !tbaa !78
  %202 = getelementptr inbounds %struct.x264_sps_t, ptr %201, i64 0, i32 16
  %203 = load i32, ptr %202, align 4, !tbaa !79
  %204 = add nsw i32 %203, -1
  %205 = icmp slt i32 %199, %204
  br i1 %205, label %206, label %230

206:                                              ; preds = %163
  %207 = add nsw i32 %166, 1
  %208 = load i16, ptr %173, align 2, !tbaa !37
  %209 = sext i16 %208 to i32
  %210 = mul nsw i32 %168, %209
  %211 = sext i32 %207 to i64
  %212 = getelementptr inbounds [2 x i16], ptr %178, i64 %211
  %213 = load i16, ptr %212, align 2, !tbaa !37
  %214 = sext i16 %213 to i32
  %215 = mul nsw i32 %210, %214
  %216 = add nsw i32 %215, 128
  %217 = lshr i32 %216, 8
  %218 = trunc i32 %217 to i16
  %219 = zext nneg i32 %197 to i64
  %220 = getelementptr inbounds [2 x i16], ptr %3, i64 %219
  store i16 %218, ptr %220, align 2, !tbaa !37
  %221 = getelementptr inbounds [2 x i16], ptr %178, i64 %211, i64 1
  %222 = load i16, ptr %221, align 2, !tbaa !37
  %223 = sext i16 %222 to i32
  %224 = mul nsw i32 %210, %223
  %225 = add nsw i32 %224, 128
  %226 = lshr i32 %225, 8
  %227 = trunc i32 %226 to i16
  %228 = getelementptr inbounds [2 x i16], ptr %3, i64 %219, i64 1
  store i16 %227, ptr %228, align 2, !tbaa !37
  %229 = add nuw nsw i32 %129, 2
  br label %230

230:                                              ; preds = %206, %163
  %231 = phi i32 [ %229, %206 ], [ %197, %163 ]
  %232 = getelementptr inbounds %struct.x264_sps_t, ptr %201, i64 0, i32 17
  %233 = load i32, ptr %232, align 4, !tbaa !84
  %234 = add nsw i32 %233, -1
  %235 = icmp slt i32 %140, %234
  br i1 %235, label %236, label %261

236:                                              ; preds = %230
  %237 = load i32, ptr %167, align 4, !tbaa !58
  %238 = add nsw i32 %237, %166
  %239 = load i16, ptr %173, align 2, !tbaa !37
  %240 = sext i16 %239 to i32
  %241 = mul nsw i32 %168, %240
  %242 = sext i32 %238 to i64
  %243 = getelementptr inbounds [2 x i16], ptr %178, i64 %242
  %244 = load i16, ptr %243, align 2, !tbaa !37
  %245 = sext i16 %244 to i32
  %246 = mul nsw i32 %241, %245
  %247 = add nsw i32 %246, 128
  %248 = lshr i32 %247, 8
  %249 = trunc i32 %248 to i16
  %250 = zext nneg i32 %231 to i64
  %251 = getelementptr inbounds [2 x i16], ptr %3, i64 %250
  store i16 %249, ptr %251, align 2, !tbaa !37
  %252 = getelementptr inbounds [2 x i16], ptr %178, i64 %242, i64 1
  %253 = load i16, ptr %252, align 2, !tbaa !37
  %254 = sext i16 %253 to i32
  %255 = mul nsw i32 %241, %254
  %256 = add nsw i32 %255, 128
  %257 = lshr i32 %256, 8
  %258 = trunc i32 %257 to i16
  %259 = getelementptr inbounds [2 x i16], ptr %3, i64 %250, i64 1
  store i16 %258, ptr %259, align 2, !tbaa !37
  %260 = add nuw nsw i32 %231, 1
  br label %261

261:                                              ; preds = %230, %236, %128
  %262 = phi i32 [ %129, %128 ], [ %260, %236 ], [ %231, %230 ]
  store i32 %262, ptr %4, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @x264_median(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
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
define internal fastcc void @x264_macroblock_cache_ref(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6) unnamed_addr #6 {
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
define internal fastcc void @x264_macroblock_cache_mv(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #6 {
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
define internal fastcc void @x264_macroblock_cache_rect(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #6 {
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
  store i16 %9, ptr %0, align 2, !tbaa !9
  %24 = icmp eq i32 %2, 1
  br i1 %24, label %71, label %25

25:                                               ; preds = %23
  %26 = zext nneg i32 %16 to i64
  %27 = getelementptr inbounds i8, ptr %0, i64 %26
  store i16 %9, ptr %27, align 2, !tbaa !9
  %28 = icmp eq i32 %2, 2
  br i1 %28, label %71, label %29

29:                                               ; preds = %25
  %30 = shl nuw nsw i32 %3, 4
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds i8, ptr %0, i64 %31
  store i16 %9, ptr %32, align 2, !tbaa !9
  %33 = mul nuw nsw i32 %3, 24
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %0, i64 %34
  store i16 %9, ptr %35, align 2, !tbaa !9
  br label %71

36:                                               ; preds = %5
  store i32 %13, ptr %0, align 4, !tbaa !9
  %37 = icmp eq i32 %2, 1
  br i1 %37, label %71, label %38

38:                                               ; preds = %36
  %39 = zext nneg i32 %16 to i64
  %40 = getelementptr inbounds i8, ptr %0, i64 %39
  store i32 %13, ptr %40, align 4, !tbaa !9
  %41 = icmp eq i32 %2, 2
  br i1 %41, label %71, label %42

42:                                               ; preds = %38
  %43 = shl nuw nsw i32 %3, 4
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %0, i64 %44
  store i32 %13, ptr %45, align 4, !tbaa !9
  %46 = mul nuw nsw i32 %3, 24
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %0, i64 %47
  store i32 %13, ptr %48, align 4, !tbaa !9
  br label %71

49:                                               ; preds = %5
  store i64 %15, ptr %0, align 8, !tbaa !9
  %50 = icmp eq i32 %2, 1
  br i1 %50, label %71, label %51

51:                                               ; preds = %49
  %52 = zext nneg i32 %16 to i64
  %53 = getelementptr inbounds i8, ptr %0, i64 %52
  store i64 %15, ptr %53, align 8, !tbaa !9
  %54 = icmp eq i32 %2, 2
  br i1 %54, label %71, label %55

55:                                               ; preds = %51
  %56 = shl nuw nsw i32 %3, 4
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %0, i64 %57
  store i64 %15, ptr %58, align 8, !tbaa !9
  %59 = mul nuw nsw i32 %3, 24
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %0, i64 %60
  store i64 %15, ptr %61, align 8, !tbaa !9
  br label %71

62:                                               ; preds = %19, %62
  %63 = phi ptr [ %69, %62 ], [ %0, %19 ]
  %64 = phi i32 [ %68, %62 ], [ %2, %19 ]
  store i64 %15, ptr %63, align 8, !tbaa !9
  %65 = getelementptr inbounds i8, ptr %63, i64 8
  store i64 %15, ptr %65, align 8, !tbaa !9
  %66 = getelementptr inbounds i8, ptr %63, i64 %20
  store i64 %15, ptr %66, align 8, !tbaa !9
  %67 = getelementptr inbounds i8, ptr %66, i64 8
  store i64 %15, ptr %67, align 8, !tbaa !9
  %68 = add nsw i32 %64, -2
  %69 = getelementptr inbounds i8, ptr %63, i64 %22
  %70 = icmp eq i32 %68, 0
  br i1 %70, label %71, label %62, !llvm.loop !85

71:                                               ; preds = %62, %29, %55, %42, %5, %51, %49, %38, %36, %25, %23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @pack16to32_mask(i32 noundef %0, i32 noundef %1) unnamed_addr #5 {
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !6, i64 17388}
!11 = !{!"x264_t", !12, i64 0, !7, i64 704, !6, i64 1736, !6, i64 1740, !6, i64 1744, !6, i64 1748, !6, i64 1752, !18, i64 1760, !14, i64 1832, !6, i64 1840, !6, i64 1844, !6, i64 1848, !6, i64 1852, !6, i64 1856, !6, i64 1860, !6, i64 1864, !6, i64 1868, !6, i64 1872, !6, i64 1876, !6, i64 1880, !6, i64 1884, !6, i64 1888, !6, i64 1892, !7, i64 1896, !14, i64 3200, !7, i64 3208, !14, i64 3328, !6, i64 3336, !6, i64 3340, !7, i64 3344, !7, i64 3376, !7, i64 3392, !7, i64 3424, !7, i64 3440, !7, i64 3472, !7, i64 3488, !7, i64 3520, !7, i64 3536, !7, i64 4272, !14, i64 7216, !21, i64 7232, !22, i64 13904, !23, i64 14416, !14, i64 14680, !14, i64 14688, !6, i64 14696, !7, i64 14704, !6, i64 14856, !7, i64 14864, !7, i64 15016, !6, i64 15024, !6, i64 15028, !20, i64 15032, !24, i64 15040, !25, i64 16368, !14, i64 26704, !28, i64 26712, !7, i64 30400, !7, i64 30912, !7, i64 31168, !14, i64 31176, !7, i64 31184, !7, i64 31232, !7, i64 31248, !7, i64 31304, !7, i64 31360, !7, i64 31456, !14, i64 31552, !31, i64 31560, !32, i64 32616, !33, i64 32912, !34, i64 33032, !35, i64 33080, !36, i64 33256, !14, i64 33328}
!12 = !{!"x264_param_t", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !13, i64 44, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !14, i64 152, !7, i64 160, !7, i64 176, !7, i64 192, !7, i64 208, !7, i64 224, !7, i64 288, !14, i64 352, !14, i64 360, !6, i64 368, !6, i64 372, !14, i64 376, !15, i64 384, !17, i64 488, !6, i64 632, !6, i64 636, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !6, i64 668, !6, i64 672, !6, i64 676, !6, i64 680, !6, i64 684, !6, i64 688, !6, i64 692, !14, i64 696}
!13 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !16, i64 72, !16, i64 76, !6, i64 80, !7, i64 84, !6, i64 92, !6, i64 96}
!16 = !{!"float", !7, i64 0}
!17 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !6, i64 36, !6, i64 40, !16, i64 44, !16, i64 48, !16, i64 52, !6, i64 56, !16, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !14, i64 80, !6, i64 88, !14, i64 96, !16, i64 104, !16, i64 108, !16, i64 112, !14, i64 120, !6, i64 128, !14, i64 136}
!18 = !{!"", !6, i64 0, !6, i64 4, !14, i64 8, !6, i64 16, !14, i64 24, !19, i64 32}
!19 = !{!"bs_s", !14, i64 0, !14, i64 8, !14, i64 16, !20, i64 24, !6, i64 32, !6, i64 36}
!20 = !{!"long", !7, i64 0}
!21 = !{!"", !14, i64 0, !14, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !7, i64 60, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !7, i64 96, !7, i64 352, !6, i64 6496, !6, i64 6500, !7, i64 6504, !6, i64 6632, !6, i64 6636, !6, i64 6640, !6, i64 6644, !6, i64 6648, !6, i64 6652, !6, i64 6656, !6, i64 6660}
!22 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !14, i64 16, !14, i64 24, !14, i64 32, !6, i64 48, !7, i64 52}
!23 = !{!"", !14, i64 0, !7, i64 8, !14, i64 24, !7, i64 32, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !20, i64 208, !20, i64 216, !7, i64 224, !20, i64 240, !20, i64 248, !6, i64 256, !6, i64 260}
!24 = !{!"", !7, i64 0, !7, i64 32, !7, i64 48, !7, i64 560}
!25 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !6, i64 120, !7, i64 124, !7, i64 140, !6, i64 204, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !7, i64 304, !7, i64 320, !7, i64 336, !7, i64 352, !14, i64 864, !14, i64 872, !14, i64 880, !7, i64 888, !6, i64 1016, !6, i64 1020, !7, i64 1024, !6, i64 1028, !6, i64 1032, !6, i64 1036, !6, i64 1040, !6, i64 1044, !6, i64 1048, !6, i64 1052, !6, i64 1056, !6, i64 1060, !26, i64 1072, !27, i64 8656, !6, i64 9424, !6, i64 9428, !6, i64 9432, !6, i64 9436, !6, i64 9440, !6, i64 9444, !6, i64 9448, !6, i64 9452, !7, i64 9456, !6, i64 9472, !6, i64 9476, !7, i64 9480, !14, i64 9992, !7, i64 10000, !14, i64 10256, !7, i64 10264, !6, i64 10284, !7, i64 10288}
!26 = !{!"", !7, i64 0, !7, i64 384, !7, i64 1248, !7, i64 1504, !7, i64 1760, !7, i64 2144, !7, i64 2624, !7, i64 2640, !6, i64 2656, !6, i64 2660, !7, i64 2672, !7, i64 3184, !7, i64 3696, !7, i64 3776, !7, i64 3904, !7, i64 3928, !7, i64 3952, !7, i64 3976, !7, i64 3984, !7, i64 7056, !7, i64 7312, !7, i64 7568}
!27 = !{!"", !7, i64 0, !7, i64 48, !7, i64 96, !7, i64 176, !7, i64 496, !7, i64 656, !7, i64 696, !7, i64 728, !6, i64 736, !7, i64 740, !6, i64 744, !6, i64 748, !6, i64 752, !6, i64 756}
!28 = !{!"", !29, i64 0, !7, i64 704, !7, i64 728, !7, i64 768, !7, i64 808, !7, i64 880, !7, i64 920, !7, i64 960, !7, i64 1000, !7, i64 1040, !7, i64 1080, !7, i64 1120, !7, i64 1880, !7, i64 2152, !7, i64 2168, !7, i64 3192, !7, i64 3240, !7, i64 3656, !7, i64 3664, !7, i64 3672}
!29 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !7, i64 12, !6, i64 88, !6, i64 92, !6, i64 96, !7, i64 100, !7, i64 108, !7, i64 364, !7, i64 432, !7, i64 456, !7, i64 664, !7, i64 672, !30, i64 696}
!30 = !{!"double", !7, i64 0}
!31 = !{!"", !7, i64 0, !7, i64 56, !7, i64 112, !7, i64 168, !7, i64 224, !7, i64 256, !7, i64 312, !7, i64 368, !7, i64 424, !7, i64 480, !7, i64 536, !14, i64 592, !7, i64 600, !7, i64 632, !14, i64 664, !14, i64 672, !7, i64 680, !7, i64 736, !7, i64 792, !7, i64 848, !7, i64 904, !14, i64 960, !14, i64 968, !14, i64 976, !14, i64 984, !14, i64 992, !14, i64 1000, !14, i64 1008, !14, i64 1016, !14, i64 1024, !14, i64 1032, !14, i64 1040, !14, i64 1048}
!32 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !7, i64 24, !7, i64 104, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288}
!33 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112}
!34 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40}
!35 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !7, i64 88, !7, i64 136}
!36 = !{!"", !7, i64 0, !7, i64 16, !7, i64 32, !7, i64 48, !14, i64 64}
!37 = !{!38, !38, i64 0}
!38 = !{!"short", !7, i64 0}
!39 = !{!11, !6, i64 404}
!40 = !{!11, !6, i64 7304}
!41 = !{i32 0, i32 2}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!11, !6, i64 25760}
!45 = !{!14, !14, i64 0}
!46 = !{!11, !6, i64 16396}
!47 = !{!11, !6, i64 16400}
!48 = !{!49, !14, i64 3536}
!49 = !{!"x264_frame", !6, i64 0, !6, i64 4, !6, i64 8, !20, i64 16, !20, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !14, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !7, i64 84, !7, i64 85, !7, i64 86, !16, i64 88, !16, i64 92, !6, i64 96, !6, i64 100, !7, i64 104, !7, i64 116, !7, i64 128, !6, i64 140, !6, i64 144, !6, i64 148, !7, i64 152, !7, i64 176, !7, i64 208, !14, i64 240, !7, i64 248, !7, i64 280, !7, i64 320, !7, i64 3392, !6, i64 3520, !14, i64 3528, !14, i64 3536, !14, i64 3544, !7, i64 3552, !14, i64 3568, !7, i64 3576, !7, i64 3848, !7, i64 6440, !7, i64 6712, !7, i64 6728, !7, i64 6736, !7, i64 6864, !7, i64 6868, !7, i64 8164, !6, i64 9460, !7, i64 9464, !7, i64 9536, !14, i64 12128, !14, i64 12136, !14, i64 12144, !14, i64 12152, !14, i64 12160, !6, i64 12168, !14, i64 12176, !14, i64 12184, !14, i64 12192, !6, i64 12200, !7, i64 12204, !6, i64 12276, !20, i64 12280, !50, i64 12288, !7, i64 12320, !7, i64 12572, !7, i64 13576, !6, i64 15584, !6, i64 15588, !6, i64 15592, !6, i64 15596, !6, i64 15600, !6, i64 15604, !6, i64 15608, !16, i64 15612, !6, i64 15616, !6, i64 15620, !6, i64 15624}
!50 = !{!"", !30, i64 0, !30, i64 8, !30, i64 16, !30, i64 24}
!51 = !{!11, !6, i64 16392}
!52 = !{!49, !14, i64 3544}
!53 = distinct !{!53, !43}
!54 = !{!11, !6, i64 4}
!55 = !{!11, !6, i64 16376}
!56 = !{!11, !6, i64 16380}
!57 = distinct !{!57, !43}
!58 = !{!11, !6, i64 16372}
!59 = !{!11, !6, i64 16388}
!60 = !{!11, !6, i64 16384}
!61 = !{!11, !6, i64 7268}
!62 = !{!11, !14, i64 26360}
!63 = distinct !{!63, !43}
!64 = !{!11, !6, i64 7248}
!65 = !{!11, !6, i64 14672}
!66 = !{!11, !14, i64 14680}
!67 = !{!49, !6, i64 56}
!68 = !{!11, !6, i64 16576}
!69 = !{!11, !6, i64 16600}
!70 = !{!11, !6, i64 16604}
!71 = !{!11, !6, i64 16608}
!72 = !{!11, !6, i64 16612}
!73 = !{!11, !14, i64 14688}
!74 = !{!49, !6, i64 0}
!75 = !{!11, !6, i64 7288}
!76 = !{!11, !6, i64 16436}
!77 = !{!49, !14, i64 3568}
!78 = !{!11, !14, i64 3200}
!79 = !{!80, !6, i64 1084}
!80 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !7, i64 52, !6, i64 1076, !6, i64 1080, !6, i64 1084, !6, i64 1088, !6, i64 1092, !6, i64 1096, !6, i64 1100, !6, i64 1104, !81, i64 1108, !6, i64 1124, !82, i64 1128, !6, i64 1296}
!81 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!82 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !83, i64 84, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164}
!83 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44}
!84 = !{!80, !6, i64 1088}
!85 = distinct !{!85, !43}
