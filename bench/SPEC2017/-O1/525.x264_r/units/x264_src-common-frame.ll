; ModuleID = 'x264_src/common/frame.c'
source_filename = "x264_src/common/frame.c"
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
%struct.x264_picture_t = type { i32, i32, i32, i32, i64, i64, ptr, %struct.x264_image_t, %struct.x264_hrd_t, ptr }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x ptr] }
%struct.x264_synch_frame_list_t = type { ptr, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Invalid input colorspace\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Input picture width is greater than stride\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @x264_frame_new(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %4 = load i32, ptr %3, align 16, !tbaa !34
  %5 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  %6 = load i32, ptr %5, align 8, !tbaa !64
  %7 = shl i32 32, %6
  %8 = load i32, ptr %0, align 16, !tbaa !65
  %9 = tail call ptr @x264_malloc(i32 noundef 15632) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %401, label %11

11:                                               ; preds = %2
  %12 = and i32 %8, 2
  %13 = icmp eq i32 %12, 0
  %14 = and i32 %8, 1
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 16, i32 32
  %17 = select i1 %13, i32 %16, i32 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(15632) %9, i8 0, i64 15632, i1 false)
  %18 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !66
  %20 = add nsw i32 %19, 15
  %21 = and i32 %20, -16
  %22 = add nsw i32 %17, -1
  %23 = add nuw nsw i32 %17, 63
  %24 = add i32 %23, %21
  %25 = sub nsw i32 0, %17
  %26 = and i32 %24, %25
  %27 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !67
  %29 = load i32, ptr %5, align 8, !tbaa !64
  %30 = shl i32 16, %29
  %31 = add i32 %28, -1
  %32 = add i32 %31, %30
  %33 = sub i32 0, %30
  %34 = and i32 %32, %33
  %35 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 23
  store i32 3, ptr %35, align 4, !tbaa !68
  br label %50

36:                                               ; preds = %50
  %37 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 24
  %38 = load i32, ptr %37, align 8, !tbaa !71
  %39 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 26
  %40 = load i32, ptr %39, align 16, !tbaa !71
  %41 = shl i32 64, %6
  %42 = add nsw i32 %40, %41
  %43 = mul nsw i32 %42, %38
  %44 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 24, i64 1
  %45 = load i32, ptr %44, align 4, !tbaa !71
  %46 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 26, i64 1
  %47 = load i32, ptr %46, align 4, !tbaa !71
  %48 = add nsw i32 %47, %41
  %49 = mul nsw i32 %48, %45
  br label %64

50:                                               ; preds = %11, %50
  %51 = phi i64 [ 0, %11 ], [ %62, %50 ]
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = ashr exact i32 %26, %53
  %55 = add nsw i32 %54, %22
  %56 = and i32 %55, %25
  %57 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 24, i64 %51
  store i32 %56, ptr %57, align 4, !tbaa !71
  %58 = ashr exact i32 %21, %53
  %59 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 25, i64 %51
  store i32 %58, ptr %59, align 4, !tbaa !71
  %60 = ashr exact i32 %34, %53
  %61 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 26, i64 %51
  store i32 %60, ptr %61, align 4, !tbaa !71
  %62 = add nuw nsw i64 %51, 1
  %63 = icmp eq i64 %62, 3
  br i1 %63, label %36, label %50, !llvm.loop !72

64:                                               ; preds = %36, %69
  %65 = phi i64 [ 1, %36 ], [ %78, %69 ]
  %66 = tail call ptr @x264_malloc(i32 noundef %49) #11
  %67 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 34, i64 %65
  store ptr %66, ptr %67, align 8, !tbaa !75
  %68 = icmp eq ptr %66, null
  br i1 %68, label %80, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 24, i64 %65
  %71 = load i32, ptr %70, align 4, !tbaa !71
  %72 = mul nsw i32 %71, %7
  %73 = add nsw i32 %72, 32
  %74 = ashr exact i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, ptr %66, i64 %75
  %77 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 30, i64 %65
  store ptr %76, ptr %77, align 8, !tbaa !75
  %78 = add nuw nsw i64 %65, 1
  %79 = icmp eq i64 %78, 3
  br i1 %79, label %80, label %64, !llvm.loop !76

80:                                               ; preds = %64, %69
  %81 = phi i32 [ 10, %69 ], [ 6, %64 ]
  switch i32 %81, label %402 [
    i32 10, label %82
    i32 6, label %401
  ]

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  %84 = load i32, ptr %83, align 4, !tbaa !77
  %85 = icmp sgt i32 %84, -2
  br i1 %85, label %86, label %114

86:                                               ; preds = %82
  %87 = ashr exact i32 %34, 2
  br label %93

88:                                               ; preds = %111
  %89 = add nuw nsw i64 %94, 1
  %90 = load i32, ptr %83, align 4, !tbaa !77
  %91 = sext i32 %90 to i64
  %92 = icmp sgt i64 %94, %91
  br i1 %92, label %114, label %93, !llvm.loop !78

93:                                               ; preds = %86, %88
  %94 = phi i64 [ 0, %86 ], [ %89, %88 ]
  %95 = load i32, ptr %83, align 4, !tbaa !77
  %96 = icmp sgt i32 %95, -2
  br i1 %96, label %97, label %111

97:                                               ; preds = %93
  %98 = tail call ptr @x264_malloc(i32 noundef %87) #11
  %99 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 56, i64 %94, i64 0
  store ptr %98, ptr %99, align 8, !tbaa !75
  %100 = icmp eq ptr %98, null
  br i1 %100, label %111, label %101

101:                                              ; preds = %97, %106
  %102 = phi i64 [ %107, %106 ], [ 0, %97 ]
  %103 = load i32, ptr %83, align 4, !tbaa !77
  %104 = sext i32 %103 to i64
  %105 = icmp sle i64 %102, %104
  br i1 %105, label %106, label %111, !llvm.loop !79

106:                                              ; preds = %101
  %107 = add nuw nsw i64 %102, 1
  %108 = tail call ptr @x264_malloc(i32 noundef %87) #11
  %109 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 56, i64 %94, i64 %107
  store ptr %108, ptr %109, align 8, !tbaa !75
  %110 = icmp eq ptr %108, null
  br i1 %110, label %111, label %101, !llvm.loop !79

111:                                              ; preds = %106, %101, %97, %93
  %112 = phi i1 [ %96, %93 ], [ %96, %97 ], [ %105, %101 ], [ %105, %106 ]
  %113 = phi i32 [ 18, %93 ], [ 6, %97 ], [ 18, %101 ], [ 6, %106 ]
  br i1 %112, label %114, label %88

114:                                              ; preds = %111, %88, %82
  %115 = phi i32 [ 15, %82 ], [ %113, %111 ], [ 15, %88 ]
  switch i32 %115, label %402 [
    i32 15, label %116
    i32 6, label %401
  ]

116:                                              ; preds = %114
  store i32 -1, ptr %9, align 16, !tbaa !80
  %117 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 1
  store i32 0, ptr %117, align 4, !tbaa !81
  %118 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 2
  store i32 0, ptr %118, align 8, !tbaa !82
  %119 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 3
  store i64 -1, ptr %119, align 16, !tbaa !83
  %120 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 10
  store i32 -1, ptr %120, align 8, !tbaa !84
  %121 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 13
  store i32 -1, ptr %121, align 4, !tbaa !85
  %122 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 76
  store i32 -1, ptr %122, align 8, !tbaa !86
  %123 = trunc i32 %1 to i8
  %124 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 17
  store i8 %123, ptr %124, align 4, !tbaa !87
  %125 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 15
  store i32 0, ptr %125, align 4, !tbaa !88
  %126 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 12
  store i32 -1, ptr %126, align 16, !tbaa !89
  %127 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 5
  %128 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 75
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %127, i8 0, i64 16, i1 false)
  store i32 -1, ptr %128, align 4, !tbaa !90
  %129 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 74
  store i32 -1, ptr %129, align 16, !tbaa !91
  %130 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 40
  store ptr %9, ptr %130, align 8, !tbaa !92
  %131 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  %132 = load i32, ptr %131, align 4, !tbaa !93
  %133 = icmp ne i32 %132, 0
  %134 = icmp ne i32 %1, 0
  %135 = and i1 %134, %133
  br i1 %135, label %136, label %160

136:                                              ; preds = %116
  %137 = shl nsw i32 %43, 2
  %138 = tail call ptr @x264_malloc(i32 noundef %137) #11
  %139 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 34
  store ptr %138, ptr %139, align 8, !tbaa !75
  %140 = icmp eq ptr %138, null
  br i1 %140, label %401, label %141

141:                                              ; preds = %136
  %142 = load i32, ptr %37, align 8, !tbaa !71
  %143 = mul nsw i32 %142, %7
  %144 = sext i32 %143 to i64
  %145 = sext i32 %43 to i64
  br label %150

146:                                              ; preds = %150
  %147 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 31
  %148 = load ptr, ptr %147, align 16, !tbaa !75
  %149 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 30
  store ptr %148, ptr %149, align 8, !tbaa !75
  br label %172

150:                                              ; preds = %141, %150
  %151 = phi i64 [ 0, %141 ], [ %158, %150 ]
  %152 = load ptr, ptr %139, align 8, !tbaa !75
  %153 = mul nsw i64 %151, %145
  %154 = getelementptr inbounds i8, ptr %152, i64 %153
  %155 = getelementptr inbounds i8, ptr %154, i64 %144
  %156 = getelementptr inbounds i8, ptr %155, i64 32
  %157 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 31, i64 %151
  store ptr %156, ptr %157, align 8, !tbaa !75
  %158 = add nuw nsw i64 %151, 1
  %159 = icmp eq i64 %158, 4
  br i1 %159, label %146, label %150, !llvm.loop !94

160:                                              ; preds = %116
  %161 = tail call ptr @x264_malloc(i32 noundef %43) #11
  %162 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 34
  store ptr %161, ptr %162, align 8, !tbaa !75
  %163 = icmp eq ptr %161, null
  br i1 %163, label %401, label %164

164:                                              ; preds = %160
  %165 = load i32, ptr %37, align 8, !tbaa !71
  %166 = mul nsw i32 %165, %7
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, ptr %161, i64 %167
  %169 = getelementptr inbounds i8, ptr %168, i64 32
  %170 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 30
  store ptr %169, ptr %170, align 8, !tbaa !75
  %171 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 31
  store ptr %169, ptr %171, align 16, !tbaa !75
  br label %172

172:                                              ; preds = %164, %146
  %173 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 39
  store i32 0, ptr %173, align 16, !tbaa !95
  br i1 %134, label %174, label %245

174:                                              ; preds = %172
  %175 = tail call ptr @x264_malloc(i32 noundef %4) #11
  %176 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 41
  store ptr %175, ptr %176, align 16, !tbaa !96
  %177 = icmp eq ptr %175, null
  br i1 %177, label %401, label %178

178:                                              ; preds = %174
  %179 = tail call ptr @x264_malloc(i32 noundef %4) #11
  %180 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 42
  store ptr %179, ptr %180, align 8, !tbaa !97
  %181 = icmp eq ptr %179, null
  br i1 %181, label %401, label %182

182:                                              ; preds = %178
  %183 = shl i32 %4, 6
  %184 = tail call ptr @x264_malloc(i32 noundef %183) #11
  %185 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 43
  store ptr %184, ptr %185, align 16, !tbaa !75
  %186 = icmp eq ptr %184, null
  br i1 %186, label %401, label %187

187:                                              ; preds = %182
  %188 = shl i32 %4, 2
  %189 = tail call ptr @x264_malloc(i32 noundef %188) #11
  %190 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 44
  store ptr %189, ptr %190, align 16, !tbaa !98
  %191 = icmp eq ptr %189, null
  br i1 %191, label %401, label %192

192:                                              ; preds = %187
  %193 = tail call ptr @x264_malloc(i32 noundef %188) #11
  %194 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 48
  store ptr %193, ptr %194, align 8, !tbaa !75
  %195 = icmp eq ptr %193, null
  br i1 %195, label %401, label %196

196:                                              ; preds = %192
  %197 = load i32, ptr %83, align 4, !tbaa !77
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %207, label %199

199:                                              ; preds = %196
  %200 = tail call ptr @x264_malloc(i32 noundef %183) #11
  %201 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 43, i64 1
  store ptr %200, ptr %201, align 8, !tbaa !75
  %202 = icmp eq ptr %200, null
  br i1 %202, label %401, label %203

203:                                              ; preds = %199
  %204 = tail call ptr @x264_malloc(i32 noundef %188) #11
  %205 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 48, i64 1
  store ptr %204, ptr %205, align 8, !tbaa !75
  %206 = icmp eq ptr %204, null
  br i1 %206, label %401, label %210

207:                                              ; preds = %196
  %208 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 43, i64 1
  store ptr null, ptr %208, align 8, !tbaa !75
  %209 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 48, i64 1
  store ptr null, ptr %209, align 8, !tbaa !75
  br label %210

210:                                              ; preds = %207, %203
  %211 = ashr exact i32 %34, 2
  %212 = tail call ptr @x264_malloc(i32 noundef %211) #11
  %213 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 58
  store ptr %212, ptr %213, align 8, !tbaa !99
  %214 = icmp eq ptr %212, null
  br i1 %214, label %401, label %215

215:                                              ; preds = %210
  %216 = tail call ptr @x264_malloc(i32 noundef %211) #11
  %217 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 59
  store ptr %216, ptr %217, align 16, !tbaa !100
  %218 = icmp eq ptr %216, null
  br i1 %218, label %401, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  %221 = load i32, ptr %220, align 4, !tbaa !101
  %222 = icmp sgt i32 %221, 2
  br i1 %222, label %223, label %402

223:                                              ; preds = %219
  %224 = load i32, ptr %37, align 8, !tbaa !71
  %225 = load i32, ptr %39, align 16, !tbaa !71
  %226 = add nsw i32 %225, %41
  %227 = mul nsw i32 %226, %224
  %228 = sext i32 %227 to i64
  %229 = shl nsw i64 %228, 1
  %230 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 17
  %231 = load i32, ptr %230, align 4, !tbaa !102
  %232 = zext nneg i32 %231 to i64
  %233 = shl i64 %229, %232
  %234 = trunc i64 %233 to i32
  %235 = tail call ptr @x264_malloc(i32 noundef %234) #11
  %236 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 34, i64 3
  store ptr %235, ptr %236, align 8, !tbaa !75
  %237 = icmp eq ptr %235, null
  br i1 %237, label %401, label %238

238:                                              ; preds = %223
  %239 = load i32, ptr %37, align 8, !tbaa !71
  %240 = mul nsw i32 %239, %7
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i16, ptr %235, i64 %241
  %243 = getelementptr inbounds i16, ptr %242, i64 32
  %244 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 33
  store ptr %243, ptr %244, align 16, !tbaa !103
  br label %402

245:                                              ; preds = %172
  %246 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 16
  %247 = load i32, ptr %246, align 16, !tbaa !104
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %370, label %249

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 25
  %251 = load i32, ptr %250, align 4, !tbaa !71
  %252 = sdiv i32 %251, 2
  %253 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 28
  store i32 %252, ptr %253, align 16, !tbaa !105
  %254 = add nuw nsw i32 %17, 63
  %255 = add nsw i32 %254, %252
  %256 = and i32 %255, %25
  %257 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 27
  store i32 %256, ptr %257, align 4, !tbaa !106
  %258 = load i32, ptr %39, align 16, !tbaa !71
  %259 = sdiv i32 %258, 2
  %260 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 29
  store i32 %259, ptr %260, align 4, !tbaa !107
  %261 = add nsw i32 %259, 64
  %262 = mul nsw i32 %261, %256
  %263 = shl nsw i32 %262, 2
  %264 = tail call ptr @x264_malloc(i32 noundef %263) #11
  %265 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 35
  store ptr %264, ptr %265, align 8, !tbaa !75
  %266 = icmp eq ptr %264, null
  br i1 %266, label %401, label %267

267:                                              ; preds = %249
  %268 = load i32, ptr %257, align 4, !tbaa !106
  %269 = shl nsw i32 %268, 5
  %270 = sext i32 %269 to i64
  %271 = sext i32 %262 to i64
  br label %272

272:                                              ; preds = %267, %272
  %273 = phi i64 [ 0, %267 ], [ %280, %272 ]
  %274 = load ptr, ptr %265, align 8, !tbaa !75
  %275 = getelementptr i8, ptr %274, i64 %270
  %276 = getelementptr i8, ptr %275, i64 32
  %277 = mul nsw i64 %273, %271
  %278 = getelementptr inbounds i8, ptr %276, i64 %277
  %279 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 32, i64 %273
  store ptr %278, ptr %279, align 8, !tbaa !75
  %280 = add nuw nsw i64 %273, 1
  %281 = icmp eq i64 %280, 4
  br i1 %281, label %288, label %272, !llvm.loop !108

282:                                              ; preds = %322
  %283 = add nuw nsw i64 %289, 1
  %284 = load i32, ptr %83, align 4, !tbaa !77
  %285 = icmp ne i32 %284, 0
  %286 = icmp eq i64 %289, 0
  %287 = and i1 %286, %285
  br i1 %287, label %288, label %325, !llvm.loop !109

288:                                              ; preds = %272, %282
  %289 = phi i64 [ %283, %282 ], [ 0, %272 ]
  %290 = load i32, ptr %83, align 4, !tbaa !77
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %322, label %292

292:                                              ; preds = %288
  %293 = load i32, ptr %3, align 16, !tbaa !34
  %294 = shl i32 %293, 2
  %295 = tail call ptr @x264_malloc(i32 noundef %294) #11
  %296 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 45, i64 %289, i64 0
  store ptr %295, ptr %296, align 8, !tbaa !75
  %297 = icmp eq ptr %295, null
  br i1 %297, label %322, label %309

298:                                              ; preds = %309
  %299 = load i32, ptr %83, align 4, !tbaa !77
  %300 = sext i32 %299 to i64
  %301 = icmp sge i64 %312, %300
  br i1 %301, label %322, label %302, !llvm.loop !110

302:                                              ; preds = %298
  %303 = add nuw nsw i64 %312, 1
  %304 = load i32, ptr %3, align 16, !tbaa !34
  %305 = shl i32 %304, 2
  %306 = tail call ptr @x264_malloc(i32 noundef %305) #11
  %307 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 45, i64 %289, i64 %303
  store ptr %306, ptr %307, align 8, !tbaa !75
  %308 = icmp eq ptr %306, null
  br i1 %308, label %322, label %309, !llvm.loop !110

309:                                              ; preds = %292, %302
  %310 = phi ptr [ %306, %302 ], [ %295, %292 ]
  %311 = phi i1 [ %301, %302 ], [ %291, %292 ]
  %312 = phi i64 [ %303, %302 ], [ 0, %292 ]
  %313 = load i32, ptr %3, align 16, !tbaa !34
  %314 = shl nsw i32 %313, 1
  %315 = sext i32 %314 to i64
  %316 = shl nsw i64 %315, 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %310, i8 0, i64 %316, i1 false)
  %317 = load i32, ptr %3, align 16, !tbaa !34
  %318 = shl i32 %317, 2
  %319 = tail call ptr @x264_malloc(i32 noundef %318) #11
  %320 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 47, i64 %289, i64 %312
  store ptr %319, ptr %320, align 8, !tbaa !75
  %321 = icmp eq ptr %319, null
  br i1 %321, label %322, label %298

322:                                              ; preds = %309, %302, %298, %292, %288
  %323 = phi i1 [ %291, %288 ], [ %291, %292 ], [ %301, %298 ], [ %301, %302 ], [ %311, %309 ]
  %324 = phi i32 [ 58, %288 ], [ 6, %292 ], [ 58, %298 ], [ 6, %302 ], [ 6, %309 ]
  br i1 %323, label %282, label %325

325:                                              ; preds = %282, %322
  %326 = phi i32 [ %324, %322 ], [ 55, %282 ]
  switch i32 %326, label %402 [
    i32 55, label %327
    i32 6, label %401
  ]

327:                                              ; preds = %325
  %328 = add nsw i32 %4, 3
  %329 = sext i32 %328 to i64
  %330 = shl nsw i64 %329, 1
  %331 = trunc i64 %330 to i32
  %332 = tail call ptr @x264_malloc(i32 noundef %331) #11
  %333 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 64
  store ptr %332, ptr %333, align 8, !tbaa !111
  %334 = icmp eq ptr %332, null
  br i1 %334, label %401, label %335

335:                                              ; preds = %327
  %336 = load i32, ptr %83, align 4, !tbaa !77
  %337 = icmp slt i32 %336, -1
  br i1 %337, label %364, label %343

338:                                              ; preds = %361
  %339 = add nuw nsw i64 %344, 1
  %340 = load i32, ptr %83, align 4, !tbaa !77
  %341 = sext i32 %340 to i64
  %342 = icmp sgt i64 %344, %341
  br i1 %342, label %364, label %343, !llvm.loop !112

343:                                              ; preds = %335, %338
  %344 = phi i64 [ %339, %338 ], [ 0, %335 ]
  %345 = load i32, ptr %83, align 4, !tbaa !77
  %346 = icmp slt i32 %345, -1
  br i1 %346, label %361, label %347

347:                                              ; preds = %343
  %348 = tail call ptr @x264_malloc(i32 noundef %331) #11
  %349 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 46, i64 %344, i64 0
  store ptr %348, ptr %349, align 8, !tbaa !75
  %350 = icmp eq ptr %348, null
  br i1 %350, label %361, label %351

351:                                              ; preds = %347, %356
  %352 = phi i64 [ %357, %356 ], [ 0, %347 ]
  %353 = load i32, ptr %83, align 4, !tbaa !77
  %354 = sext i32 %353 to i64
  %355 = icmp sgt i64 %352, %354
  br i1 %355, label %361, label %356, !llvm.loop !113

356:                                              ; preds = %351
  %357 = add nuw nsw i64 %352, 1
  %358 = tail call ptr @x264_malloc(i32 noundef %331) #11
  %359 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 46, i64 %344, i64 %357
  store ptr %358, ptr %359, align 8, !tbaa !75
  %360 = icmp eq ptr %358, null
  br i1 %360, label %361, label %351, !llvm.loop !113

361:                                              ; preds = %356, %351, %347, %343
  %362 = phi i1 [ %346, %343 ], [ %346, %347 ], [ %355, %351 ], [ %355, %356 ]
  %363 = phi i32 [ 72, %343 ], [ 6, %347 ], [ 72, %351 ], [ 6, %356 ]
  br i1 %362, label %338, label %364

364:                                              ; preds = %361, %338, %335
  %365 = phi i32 [ 69, %335 ], [ %363, %361 ], [ 69, %338 ]
  switch i32 %365, label %402 [
    i32 69, label %366
    i32 6, label %401
  ]

366:                                              ; preds = %364
  %367 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 46
  %368 = load ptr, ptr %367, align 8, !tbaa !75
  %369 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 63
  store ptr %368, ptr %369, align 16, !tbaa !114
  tail call void @llvm.memset.p0.i64(ptr align 2 %368, i8 -1, i64 %330, i1 false)
  br label %370

370:                                              ; preds = %366, %245
  %371 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 14
  %372 = load i32, ptr %371, align 8, !tbaa !115
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %402, label %374

374:                                              ; preds = %370
  %375 = load i32, ptr %3, align 16, !tbaa !34
  %376 = shl i32 %375, 2
  %377 = tail call ptr @x264_malloc(i32 noundef %376) #11
  %378 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 60
  store ptr %377, ptr %378, align 8, !tbaa !116
  %379 = icmp eq ptr %377, null
  br i1 %379, label %401, label %380

380:                                              ; preds = %374
  %381 = load i32, ptr %3, align 16, !tbaa !34
  %382 = shl i32 %381, 2
  %383 = tail call ptr @x264_malloc(i32 noundef %382) #11
  %384 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 61
  store ptr %383, ptr %384, align 16, !tbaa !117
  %385 = icmp eq ptr %383, null
  br i1 %385, label %401, label %386

386:                                              ; preds = %380
  %387 = load i32, ptr %246, align 16, !tbaa !104
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %402, label %389

389:                                              ; preds = %386
  %390 = load i32, ptr %3, align 16, !tbaa !34
  %391 = shl i32 %390, 1
  %392 = add i32 %391, 6
  %393 = tail call ptr @x264_malloc(i32 noundef %392) #11
  %394 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 65
  store ptr %393, ptr %394, align 16, !tbaa !118
  %395 = icmp eq ptr %393, null
  br i1 %395, label %401, label %396

396:                                              ; preds = %389
  %397 = load i32, ptr %3, align 16, !tbaa !34
  %398 = add nsw i32 %397, 3
  %399 = sext i32 %398 to i64
  %400 = shl nsw i64 %399, 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %393, i8 0, i64 %400, i1 false)
  br label %402

401:                                              ; preds = %389, %380, %374, %327, %249, %223, %215, %210, %203, %199, %192, %187, %182, %178, %174, %160, %136, %2, %364, %325, %114, %80
  tail call void @x264_free(ptr noundef %9) #11
  br label %402

402:                                              ; preds = %238, %219, %386, %396, %370, %401, %364, %325, %114, %80
  %403 = phi ptr [ undef, %80 ], [ null, %401 ], [ undef, %114 ], [ undef, %325 ], [ undef, %364 ], [ %9, %370 ], [ %9, %396 ], [ %9, %386 ], [ %9, %219 ], [ %9, %238 ]
  ret ptr %403
}

declare ptr @x264_malloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare void @x264_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_frame_delete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 39
  %3 = load i32, ptr %2, align 16, !tbaa !95
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %80

5:                                                ; preds = %1, %5
  %6 = phi i64 [ %9, %5 ], [ 0, %1 ]
  %7 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 34, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  tail call void @x264_free(ptr noundef %8) #11
  %9 = add nuw nsw i64 %6, 1
  %10 = icmp eq i64 %9, 4
  br i1 %10, label %11, label %5, !llvm.loop !119

11:                                               ; preds = %5, %11
  %12 = phi i64 [ %15, %11 ], [ 0, %5 ]
  %13 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 35, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !75
  tail call void @x264_free(ptr noundef %14) #11
  %15 = add nuw nsw i64 %12, 1
  %16 = icmp eq i64 %15, 4
  br i1 %16, label %17, label %11, !llvm.loop !120

17:                                               ; preds = %11, %19
  %18 = phi i64 [ %20, %19 ], [ 0, %11 ]
  br label %22

19:                                               ; preds = %22
  %20 = add nuw nsw i64 %18, 1
  %21 = icmp eq i64 %20, 18
  br i1 %21, label %28, label %17, !llvm.loop !121

22:                                               ; preds = %17, %22
  %23 = phi i64 [ 0, %17 ], [ %26, %22 ]
  %24 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 56, i64 %18, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !75
  tail call void @x264_free(ptr noundef %25) #11
  %26 = add nuw nsw i64 %23, 1
  %27 = icmp eq i64 %26, 18
  br i1 %27, label %19, label %22, !llvm.loop !122

28:                                               ; preds = %19, %33
  %29 = phi i64 [ %34, %33 ], [ 0, %19 ]
  br label %36

30:                                               ; preds = %33
  %31 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 64
  %32 = load ptr, ptr %31, align 8, !tbaa !111
  tail call void @x264_free(ptr noundef %32) #11
  br label %44

33:                                               ; preds = %36
  %34 = add nuw nsw i64 %29, 1
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %28, label %30, !llvm.loop !123

36:                                               ; preds = %28, %36
  %37 = phi i64 [ 0, %28 ], [ %42, %36 ]
  %38 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 45, i64 %29, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !75
  tail call void @x264_free(ptr noundef %39) #11
  %40 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 47, i64 %29, i64 %37
  %41 = load ptr, ptr %40, align 8, !tbaa !75
  tail call void @x264_free(ptr noundef %41) #11
  %42 = add nuw nsw i64 %37, 1
  %43 = icmp eq i64 %42, 17
  br i1 %43, label %33, label %36, !llvm.loop !124

44:                                               ; preds = %30, %71
  %45 = phi i64 [ 0, %30 ], [ %72, %71 ]
  br label %74

46:                                               ; preds = %71
  %47 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 60
  %48 = load ptr, ptr %47, align 8, !tbaa !116
  tail call void @x264_free(ptr noundef %48) #11
  %49 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 61
  %50 = load ptr, ptr %49, align 16, !tbaa !117
  tail call void @x264_free(ptr noundef %50) #11
  %51 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 65
  %52 = load ptr, ptr %51, align 16, !tbaa !118
  tail call void @x264_free(ptr noundef %52) #11
  %53 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 58
  %54 = load ptr, ptr %53, align 8, !tbaa !99
  tail call void @x264_free(ptr noundef %54) #11
  %55 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 59
  %56 = load ptr, ptr %55, align 16, !tbaa !100
  tail call void @x264_free(ptr noundef %56) #11
  %57 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 41
  %58 = load ptr, ptr %57, align 16, !tbaa !96
  tail call void @x264_free(ptr noundef %58) #11
  %59 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 42
  %60 = load ptr, ptr %59, align 8, !tbaa !97
  tail call void @x264_free(ptr noundef %60) #11
  %61 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 43
  %62 = load ptr, ptr %61, align 16, !tbaa !75
  tail call void @x264_free(ptr noundef %62) #11
  %63 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 43, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !75
  tail call void @x264_free(ptr noundef %64) #11
  %65 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 44
  %66 = load ptr, ptr %65, align 16, !tbaa !98
  tail call void @x264_free(ptr noundef %66) #11
  %67 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 48
  %68 = load ptr, ptr %67, align 8, !tbaa !75
  tail call void @x264_free(ptr noundef %68) #11
  %69 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 48, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !75
  tail call void @x264_free(ptr noundef %70) #11
  br label %80

71:                                               ; preds = %74
  %72 = add nuw nsw i64 %45, 1
  %73 = icmp eq i64 %72, 18
  br i1 %73, label %46, label %44, !llvm.loop !125

74:                                               ; preds = %44, %74
  %75 = phi i64 [ 0, %44 ], [ %78, %74 ]
  %76 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 46, i64 %45, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !75
  tail call void @x264_free(ptr noundef %77) #11
  %78 = add nuw nsw i64 %75, 1
  %79 = icmp eq i64 %78, 18
  br i1 %79, label %71, label %74, !llvm.loop !126

80:                                               ; preds = %46, %1
  tail call void @x264_free(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_frame_copy_picture(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.x264_picture_t, ptr %2, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !127
  %6 = trunc i32 %5 to i8
  switch i8 %6, label %7 [
    i8 4, label %8
    i8 1, label %8
  ]

7:                                                ; preds = %3
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str) #11
  br label %73

8:                                                ; preds = %3, %3
  %9 = and i32 %5, 255
  %10 = load i32, ptr %2, align 8, !tbaa !130
  %11 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 1
  store i32 %10, ptr %11, align 4, !tbaa !81
  %12 = getelementptr inbounds %struct.x264_picture_t, ptr %2, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !131
  %14 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 2
  store i32 %13, ptr %14, align 8, !tbaa !82
  %15 = getelementptr inbounds %struct.x264_picture_t, ptr %2, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !132
  %17 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 4
  store i64 %16, ptr %17, align 8, !tbaa !133
  %18 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 3
  store i64 %16, ptr %18, align 16, !tbaa !83
  %19 = getelementptr inbounds %struct.x264_picture_t, ptr %2, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !134
  %21 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 9
  store ptr %20, ptr %21, align 16, !tbaa !135
  %22 = getelementptr inbounds %struct.x264_picture_t, ptr %2, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !136
  %24 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 15
  store i32 %23, ptr %24, align 4, !tbaa !88
  %25 = icmp eq i32 %9, 4
  %26 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %27 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 6
  br label %33

29:                                               ; preds = %69
  %30 = add nuw nsw i64 %34, 1
  %31 = icmp ult i64 %34, 2
  %32 = icmp eq i64 %30, 3
  br i1 %32, label %70, label %33, !llvm.loop !137

33:                                               ; preds = %8, %29
  %34 = phi i64 [ 0, %8 ], [ %30, %29 ]
  %35 = phi i1 [ true, %8 ], [ %31, %29 ]
  %36 = icmp ne i64 %34, 0
  %37 = and i1 %25, %36
  %38 = xor i64 %34, 3
  %39 = select i1 %37, i64 %38, i64 %34
  %40 = and i64 %39, 4294967295
  %41 = getelementptr inbounds %struct.x264_picture_t, ptr %2, i64 0, i32 7, i32 2, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !71
  %43 = load i32, ptr %26, align 4, !tbaa !66
  %44 = zext i1 %36 to i32
  %45 = ashr i32 %43, %44
  %46 = tail call i32 @llvm.abs.i32(i32 %42, i1 true)
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.1) #11
  br label %69

49:                                               ; preds = %33
  %50 = load i32, ptr %4, align 8, !tbaa !127
  %51 = and i32 %50, 4096
  %52 = icmp eq i32 %51, 0
  %53 = sub nsw i32 0, %42
  %54 = select i1 %52, i32 %42, i32 %53
  %55 = getelementptr inbounds %struct.x264_picture_t, ptr %2, i64 0, i32 7, i32 3, i64 %40
  %56 = load ptr, ptr %55, align 8, !tbaa !75
  %57 = load i32, ptr %27, align 8, !tbaa !67
  %58 = ashr i32 %57, %44
  %59 = add nsw i32 %58, -1
  %60 = mul nsw i32 %59, %42
  %61 = select i1 %52, i32 0, i32 %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %56, i64 %62
  %64 = load ptr, ptr %28, align 8, !tbaa !138
  %65 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 30, i64 %34
  %66 = load ptr, ptr %65, align 8, !tbaa !75
  %67 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 24, i64 %34
  %68 = load i32, ptr %67, align 4, !tbaa !71
  tail call void %64(ptr noundef %66, i32 noundef %68, ptr noundef %63, i32 noundef %54, i32 noundef %45, i32 noundef %58) #11
  br label %69

69:                                               ; preds = %49, %48
  br i1 %47, label %70, label %29

70:                                               ; preds = %29, %69
  %71 = phi i1 [ %31, %29 ], [ %35, %69 ]
  %72 = sext i1 %71 to i32
  br label %73

73:                                               ; preds = %70, %7
  %74 = phi i32 [ -1, %7 ], [ %72, %70 ]
  ret i32 %74
}

declare void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_expand_border(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = icmp eq i32 %2, 0
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %7 = load i32, ptr %6, align 4, !tbaa !139
  %8 = and i32 %7, %2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %253

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 23
  %12 = load i32, ptr %11, align 4, !tbaa !68
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %253

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %16 = icmp eq i32 %3, 0
  %17 = shl nsw i32 %2, 4
  %18 = add nsw i32 %17, -4
  %19 = or i1 %5, %16
  %20 = icmp eq i32 %3, 0
  %21 = icmp eq i32 %3, 0
  br label %22

22:                                               ; preds = %14, %248
  %23 = phi i64 [ 0, %14 ], [ %249, %248 ]
  %24 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 24, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !71
  %26 = load ptr, ptr %15, align 16, !tbaa !140
  %27 = getelementptr inbounds %struct.x264_sps_t, ptr %26, i64 0, i32 16
  %28 = load i32, ptr %27, align 4, !tbaa !141
  %29 = shl nsw i32 %28, 4
  %30 = icmp ne i64 %23, 0
  %31 = zext i1 %30 to i32
  %32 = ashr exact i32 %29, %31
  br i1 %16, label %40, label %33

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.x264_sps_t, ptr %26, i64 0, i32 17
  %35 = load i32, ptr %34, align 4, !tbaa !146
  %36 = sub nsw i32 %35, %2
  %37 = shl nsw i32 %36, 4
  %38 = load i32, ptr %6, align 4, !tbaa !139
  %39 = ashr i32 %37, %38
  br label %40

40:                                               ; preds = %22, %33
  %41 = phi i32 [ %39, %33 ], [ 16, %22 ]
  %42 = ashr i32 %41, %31
  %43 = lshr exact i32 32, %31
  %44 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 30, i64 %23
  %45 = load ptr, ptr %44, align 8, !tbaa !75
  %46 = mul nsw i32 %25, %18
  %47 = ashr exact i32 %46, %31
  %48 = tail call i32 @llvm.smax.i32(i32 %47, i32 0)
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds i8, ptr %45, i64 %49
  br i1 %19, label %56, label %51

51:                                               ; preds = %40
  %52 = load i32, ptr %6, align 4, !tbaa !139
  %53 = add nsw i32 %52, %31
  %54 = lshr i32 4, %53
  %55 = add nsw i32 %54, %42
  br label %56

56:                                               ; preds = %51, %40
  %57 = phi i32 [ %42, %40 ], [ %55, %51 ]
  %58 = load i32, ptr %6, align 4, !tbaa !139
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %186, label %60

60:                                               ; preds = %56
  %61 = shl nsw i32 %25, 1
  %62 = icmp sgt i32 %57, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = sub nsw i32 0, %43
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %50, i64 %65
  %67 = zext nneg i32 %43 to i64
  %68 = sext i32 %32 to i64
  %69 = getelementptr i8, ptr %50, i64 %68
  %70 = getelementptr i8, ptr %69, i64 -1
  %71 = sext i32 %61 to i64
  %72 = zext nneg i32 %57 to i64
  br label %83

73:                                               ; preds = %83, %60
  br i1 %5, label %74, label %101

74:                                               ; preds = %73
  %75 = sub nsw i32 0, %43
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, ptr %50, i64 %76
  %78 = shl nuw nsw i32 %43, 1
  %79 = add nsw i32 %32, %78
  %80 = sext i32 %79 to i64
  %81 = sext i32 %61 to i64
  %82 = zext nneg i32 %43 to i64
  br label %94

83:                                               ; preds = %83, %63
  %84 = phi i64 [ 0, %63 ], [ %92, %83 ]
  %85 = mul nsw i64 %84, %71
  %86 = getelementptr inbounds i8, ptr %66, i64 %85
  %87 = getelementptr inbounds i8, ptr %50, i64 %85
  %88 = load i8, ptr %87, align 1, !tbaa !147
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %86, i8 %88, i64 %67, i1 false)
  %89 = getelementptr inbounds i8, ptr %69, i64 %85
  %90 = getelementptr inbounds i8, ptr %70, i64 %85
  %91 = load i8, ptr %90, align 1, !tbaa !147
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %89, i8 %91, i64 %67, i1 false)
  %92 = add nuw nsw i64 %84, 1
  %93 = icmp eq i64 %92, %72
  br i1 %93, label %73, label %83, !llvm.loop !148

94:                                               ; preds = %94, %74
  %95 = phi i64 [ 0, %74 ], [ %99, %94 ]
  %96 = xor i64 %95, -1
  %97 = mul nsw i64 %96, %81
  %98 = getelementptr inbounds i8, ptr %77, i64 %97
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %98, ptr nonnull align 1 %77, i64 %80, i1 false)
  %99 = add nuw nsw i64 %95, 1
  %100 = icmp eq i64 %99, %82
  br i1 %100, label %101, label %94, !llvm.loop !149

101:                                              ; preds = %94, %73
  br i1 %20, label %123, label %102

102:                                              ; preds = %101
  %103 = sub nsw i32 0, %43
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, ptr %50, i64 %104
  %106 = add nsw i32 %57, -1
  %107 = mul nsw i32 %106, %61
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, ptr %105, i64 %108
  %110 = shl nuw nsw i32 %43, 1
  %111 = add nsw i32 %32, %110
  %112 = sext i32 %111 to i64
  %113 = sext i32 %57 to i64
  %114 = sext i32 %61 to i64
  %115 = zext nneg i32 %43 to i64
  br label %116

116:                                              ; preds = %116, %102
  %117 = phi i64 [ 0, %102 ], [ %121, %116 ]
  %118 = add nsw i64 %117, %113
  %119 = mul nsw i64 %118, %114
  %120 = getelementptr inbounds i8, ptr %105, i64 %119
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %120, ptr nonnull align 1 %109, i64 %112, i1 false)
  %121 = add nuw nsw i64 %117, 1
  %122 = icmp eq i64 %121, %115
  br i1 %122, label %123, label %116, !llvm.loop !150

123:                                              ; preds = %116, %101
  %124 = sext i32 %25 to i64
  %125 = getelementptr inbounds i8, ptr %50, i64 %124
  br i1 %62, label %126, label %136

126:                                              ; preds = %123
  %127 = sub nsw i32 0, %43
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, ptr %125, i64 %128
  %130 = zext nneg i32 %43 to i64
  %131 = sext i32 %32 to i64
  %132 = getelementptr i8, ptr %125, i64 %131
  %133 = getelementptr i8, ptr %132, i64 -1
  %134 = sext i32 %61 to i64
  %135 = zext nneg i32 %57 to i64
  br label %146

136:                                              ; preds = %146, %123
  br i1 %5, label %137, label %164

137:                                              ; preds = %136
  %138 = sub nsw i32 0, %43
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, ptr %125, i64 %139
  %141 = shl nuw nsw i32 %43, 1
  %142 = add nsw i32 %32, %141
  %143 = sext i32 %142 to i64
  %144 = sext i32 %61 to i64
  %145 = zext nneg i32 %43 to i64
  br label %157

146:                                              ; preds = %146, %126
  %147 = phi i64 [ 0, %126 ], [ %155, %146 ]
  %148 = mul nsw i64 %147, %134
  %149 = getelementptr inbounds i8, ptr %129, i64 %148
  %150 = getelementptr inbounds i8, ptr %125, i64 %148
  %151 = load i8, ptr %150, align 1, !tbaa !147
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %149, i8 %151, i64 %130, i1 false)
  %152 = getelementptr inbounds i8, ptr %132, i64 %148
  %153 = getelementptr inbounds i8, ptr %133, i64 %148
  %154 = load i8, ptr %153, align 1, !tbaa !147
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %152, i8 %154, i64 %130, i1 false)
  %155 = add nuw nsw i64 %147, 1
  %156 = icmp eq i64 %155, %135
  br i1 %156, label %136, label %146, !llvm.loop !148

157:                                              ; preds = %157, %137
  %158 = phi i64 [ 0, %137 ], [ %162, %157 ]
  %159 = xor i64 %158, -1
  %160 = mul nsw i64 %159, %144
  %161 = getelementptr inbounds i8, ptr %140, i64 %160
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %161, ptr nonnull align 1 %140, i64 %143, i1 false)
  %162 = add nuw nsw i64 %158, 1
  %163 = icmp eq i64 %162, %145
  br i1 %163, label %164, label %157, !llvm.loop !149

164:                                              ; preds = %157, %136
  br i1 %20, label %248, label %165

165:                                              ; preds = %164
  %166 = sub nsw i32 0, %43
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, ptr %125, i64 %167
  %169 = add nsw i32 %57, -1
  %170 = mul nsw i32 %169, %61
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, ptr %168, i64 %171
  %173 = shl nuw nsw i32 %43, 1
  %174 = add nsw i32 %32, %173
  %175 = sext i32 %174 to i64
  %176 = sext i32 %57 to i64
  %177 = sext i32 %61 to i64
  %178 = zext nneg i32 %43 to i64
  br label %179

179:                                              ; preds = %179, %165
  %180 = phi i64 [ 0, %165 ], [ %184, %179 ]
  %181 = add nsw i64 %180, %176
  %182 = mul nsw i64 %181, %177
  %183 = getelementptr inbounds i8, ptr %168, i64 %182
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %183, ptr nonnull align 1 %172, i64 %175, i1 false)
  %184 = add nuw nsw i64 %180, 1
  %185 = icmp eq i64 %184, %178
  br i1 %185, label %248, label %179, !llvm.loop !150

186:                                              ; preds = %56
  %187 = icmp sgt i32 %57, 0
  br i1 %187, label %188, label %198

188:                                              ; preds = %186
  %189 = sub nsw i32 0, %43
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, ptr %50, i64 %190
  %192 = zext nneg i32 %43 to i64
  %193 = sext i32 %32 to i64
  %194 = getelementptr i8, ptr %50, i64 %193
  %195 = getelementptr i8, ptr %194, i64 -1
  %196 = sext i32 %25 to i64
  %197 = zext nneg i32 %57 to i64
  br label %208

198:                                              ; preds = %208, %186
  br i1 %5, label %199, label %226

199:                                              ; preds = %198
  %200 = sub nsw i32 0, %43
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, ptr %50, i64 %201
  %203 = shl nuw nsw i32 %43, 1
  %204 = add nsw i32 %32, %203
  %205 = sext i32 %204 to i64
  %206 = sext i32 %25 to i64
  %207 = zext nneg i32 %43 to i64
  br label %219

208:                                              ; preds = %208, %188
  %209 = phi i64 [ 0, %188 ], [ %217, %208 ]
  %210 = mul nsw i64 %209, %196
  %211 = getelementptr inbounds i8, ptr %191, i64 %210
  %212 = getelementptr inbounds i8, ptr %50, i64 %210
  %213 = load i8, ptr %212, align 1, !tbaa !147
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %211, i8 %213, i64 %192, i1 false)
  %214 = getelementptr inbounds i8, ptr %194, i64 %210
  %215 = getelementptr inbounds i8, ptr %195, i64 %210
  %216 = load i8, ptr %215, align 1, !tbaa !147
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %214, i8 %216, i64 %192, i1 false)
  %217 = add nuw nsw i64 %209, 1
  %218 = icmp eq i64 %217, %197
  br i1 %218, label %198, label %208, !llvm.loop !148

219:                                              ; preds = %219, %199
  %220 = phi i64 [ 0, %199 ], [ %224, %219 ]
  %221 = xor i64 %220, -1
  %222 = mul nsw i64 %221, %206
  %223 = getelementptr inbounds i8, ptr %202, i64 %222
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %223, ptr nonnull align 1 %202, i64 %205, i1 false)
  %224 = add nuw nsw i64 %220, 1
  %225 = icmp eq i64 %224, %207
  br i1 %225, label %226, label %219, !llvm.loop !149

226:                                              ; preds = %219, %198
  br i1 %21, label %248, label %227

227:                                              ; preds = %226
  %228 = sub nsw i32 0, %43
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, ptr %50, i64 %229
  %231 = add nsw i32 %57, -1
  %232 = mul nsw i32 %231, %25
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, ptr %230, i64 %233
  %235 = shl nuw nsw i32 %43, 1
  %236 = add nsw i32 %32, %235
  %237 = sext i32 %236 to i64
  %238 = sext i32 %57 to i64
  %239 = sext i32 %25 to i64
  %240 = zext nneg i32 %43 to i64
  br label %241

241:                                              ; preds = %241, %227
  %242 = phi i64 [ 0, %227 ], [ %246, %241 ]
  %243 = add nsw i64 %242, %238
  %244 = mul nsw i64 %243, %239
  %245 = getelementptr inbounds i8, ptr %230, i64 %244
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %245, ptr nonnull align 1 %234, i64 %237, i1 false)
  %246 = add nuw nsw i64 %242, 1
  %247 = icmp eq i64 %246, %240
  br i1 %247, label %248, label %241, !llvm.loop !150

248:                                              ; preds = %179, %241, %226, %164
  %249 = add nuw nsw i64 %23, 1
  %250 = load i32, ptr %11, align 4, !tbaa !68
  %251 = sext i32 %250 to i64
  %252 = icmp slt i64 %249, %251
  br i1 %252, label %22, label %253, !llvm.loop !151

253:                                              ; preds = %248, %10, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_expand_border_filtered(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = icmp eq i32 %2, 0
  %6 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 24
  %7 = load i32, ptr %6, align 8, !tbaa !71
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 16, !tbaa !140
  %10 = getelementptr inbounds %struct.x264_sps_t, ptr %9, i64 0, i32 16
  %11 = load i32, ptr %10, align 4, !tbaa !141
  %12 = shl nsw i32 %11, 4
  %13 = or disjoint i32 %12, 8
  %14 = icmp eq i32 %3, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.x264_sps_t, ptr %9, i64 0, i32 17
  %17 = load i32, ptr %16, align 4, !tbaa !146
  %18 = sub nsw i32 %17, %2
  %19 = shl nsw i32 %18, 4
  %20 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %21 = load i32, ptr %20, align 4, !tbaa !139
  %22 = ashr i32 %19, %21
  %23 = add nsw i32 %22, 16
  br label %24

24:                                               ; preds = %4, %15
  %25 = phi i32 [ %23, %15 ], [ 16, %4 ]
  %26 = shl nsw i32 %2, 4
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %28 = shl nsw i32 %7, 1
  %29 = icmp sgt i32 %25, 0
  %30 = sext i32 %13 to i64
  %31 = sext i32 %28 to i64
  %32 = zext nneg i32 %25 to i64
  %33 = add i32 %12, 64
  %34 = sext i32 %33 to i64
  %35 = sext i32 %28 to i64
  %36 = icmp eq i32 %3, 0
  %37 = add nsw i32 %25, -1
  %38 = mul nsw i32 %37, %28
  %39 = sext i32 %38 to i64
  %40 = add i32 %12, 64
  %41 = sext i32 %40 to i64
  %42 = sext i32 %25 to i64
  %43 = sext i32 %28 to i64
  %44 = sext i32 %7 to i64
  %45 = sext i32 %13 to i64
  %46 = sext i32 %28 to i64
  %47 = zext nneg i32 %25 to i64
  %48 = add i32 %12, 64
  %49 = sext i32 %48 to i64
  %50 = sext i32 %28 to i64
  %51 = add nsw i32 %25, -1
  %52 = mul nsw i32 %51, %28
  %53 = sext i32 %52 to i64
  %54 = add i32 %12, 64
  %55 = sext i32 %54 to i64
  %56 = sext i32 %25 to i64
  %57 = sext i32 %28 to i64
  %58 = icmp sgt i32 %25, 0
  %59 = sext i32 %13 to i64
  %60 = sext i32 %7 to i64
  %61 = zext nneg i32 %25 to i64
  %62 = add i32 %12, 64
  %63 = sext i32 %62 to i64
  %64 = sext i32 %7 to i64
  %65 = icmp eq i32 %3, 0
  %66 = add nsw i32 %25, -1
  %67 = mul nsw i32 %66, %7
  %68 = sext i32 %67 to i64
  %69 = add i32 %12, 64
  %70 = sext i32 %69 to i64
  %71 = sext i32 %25 to i64
  %72 = sext i32 %7 to i64
  br label %74

73:                                               ; preds = %198
  ret void

74:                                               ; preds = %24, %198
  %75 = phi i64 [ 1, %24 ], [ %199, %198 ]
  %76 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 31, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !75
  %78 = load i32, ptr %27, align 4, !tbaa !139
  %79 = shl i32 -8, %78
  %80 = add i32 %79, %26
  %81 = mul nsw i32 %80, %7
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, ptr %77, i64 %82
  %84 = getelementptr inbounds i8, ptr %83, i64 -4
  %85 = icmp eq i32 %78, 0
  br i1 %85, label %161, label %86

86:                                               ; preds = %74
  br i1 %29, label %87, label %91

87:                                               ; preds = %86
  %88 = getelementptr inbounds i8, ptr %83, i64 -32
  %89 = getelementptr i8, ptr %84, i64 %30
  %90 = getelementptr i8, ptr %89, i64 -1
  br label %94

91:                                               ; preds = %94, %86
  br i1 %5, label %92, label %112

92:                                               ; preds = %91
  %93 = getelementptr inbounds i8, ptr %83, i64 -32
  br label %105

94:                                               ; preds = %94, %87
  %95 = phi i64 [ 0, %87 ], [ %103, %94 ]
  %96 = mul nsw i64 %95, %31
  %97 = getelementptr inbounds i8, ptr %88, i64 %96
  %98 = getelementptr inbounds i8, ptr %84, i64 %96
  %99 = load i8, ptr %98, align 1, !tbaa !147
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %97, i8 %99, i64 28, i1 false)
  %100 = getelementptr inbounds i8, ptr %89, i64 %96
  %101 = getelementptr inbounds i8, ptr %90, i64 %96
  %102 = load i8, ptr %101, align 1, !tbaa !147
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %100, i8 %102, i64 28, i1 false)
  %103 = add nuw nsw i64 %95, 1
  %104 = icmp eq i64 %103, %32
  br i1 %104, label %91, label %94, !llvm.loop !148

105:                                              ; preds = %105, %92
  %106 = phi i64 [ 0, %92 ], [ %110, %105 ]
  %107 = xor i64 %106, -1
  %108 = mul nsw i64 %107, %35
  %109 = getelementptr inbounds i8, ptr %93, i64 %108
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %109, ptr nonnull align 1 %93, i64 %34, i1 false)
  %110 = add nuw nsw i64 %106, 1
  %111 = icmp eq i64 %110, 24
  br i1 %111, label %112, label %105, !llvm.loop !149

112:                                              ; preds = %105, %91
  br i1 %36, label %123, label %113

113:                                              ; preds = %112
  %114 = getelementptr inbounds i8, ptr %83, i64 -32
  %115 = getelementptr inbounds i8, ptr %114, i64 %39
  br label %116

116:                                              ; preds = %116, %113
  %117 = phi i64 [ 0, %113 ], [ %121, %116 ]
  %118 = add nsw i64 %117, %42
  %119 = mul nsw i64 %118, %43
  %120 = getelementptr inbounds i8, ptr %114, i64 %119
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %120, ptr nonnull align 1 %115, i64 %41, i1 false)
  %121 = add nuw nsw i64 %117, 1
  %122 = icmp eq i64 %121, 24
  br i1 %122, label %123, label %116, !llvm.loop !150

123:                                              ; preds = %116, %112
  %124 = getelementptr inbounds i8, ptr %84, i64 %44
  br i1 %29, label %125, label %129

125:                                              ; preds = %123
  %126 = getelementptr inbounds i8, ptr %124, i64 -28
  %127 = getelementptr i8, ptr %124, i64 %45
  %128 = getelementptr i8, ptr %127, i64 -1
  br label %132

129:                                              ; preds = %132, %123
  br i1 %5, label %130, label %150

130:                                              ; preds = %129
  %131 = getelementptr inbounds i8, ptr %124, i64 -28
  br label %143

132:                                              ; preds = %132, %125
  %133 = phi i64 [ 0, %125 ], [ %141, %132 ]
  %134 = mul nsw i64 %133, %46
  %135 = getelementptr inbounds i8, ptr %126, i64 %134
  %136 = getelementptr inbounds i8, ptr %124, i64 %134
  %137 = load i8, ptr %136, align 1, !tbaa !147
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %135, i8 %137, i64 28, i1 false)
  %138 = getelementptr inbounds i8, ptr %127, i64 %134
  %139 = getelementptr inbounds i8, ptr %128, i64 %134
  %140 = load i8, ptr %139, align 1, !tbaa !147
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %138, i8 %140, i64 28, i1 false)
  %141 = add nuw nsw i64 %133, 1
  %142 = icmp eq i64 %141, %47
  br i1 %142, label %129, label %132, !llvm.loop !148

143:                                              ; preds = %143, %130
  %144 = phi i64 [ 0, %130 ], [ %148, %143 ]
  %145 = xor i64 %144, -1
  %146 = mul nsw i64 %145, %50
  %147 = getelementptr inbounds i8, ptr %131, i64 %146
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %147, ptr nonnull align 1 %131, i64 %49, i1 false)
  %148 = add nuw nsw i64 %144, 1
  %149 = icmp eq i64 %148, 24
  br i1 %149, label %150, label %143, !llvm.loop !149

150:                                              ; preds = %143, %129
  br i1 %36, label %198, label %151

151:                                              ; preds = %150
  %152 = getelementptr inbounds i8, ptr %124, i64 -28
  %153 = getelementptr inbounds i8, ptr %152, i64 %53
  br label %154

154:                                              ; preds = %154, %151
  %155 = phi i64 [ 0, %151 ], [ %159, %154 ]
  %156 = add nsw i64 %155, %56
  %157 = mul nsw i64 %156, %57
  %158 = getelementptr inbounds i8, ptr %152, i64 %157
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %158, ptr nonnull align 1 %153, i64 %55, i1 false)
  %159 = add nuw nsw i64 %155, 1
  %160 = icmp eq i64 %159, 24
  br i1 %160, label %198, label %154, !llvm.loop !150

161:                                              ; preds = %74
  br i1 %58, label %162, label %166

162:                                              ; preds = %161
  %163 = getelementptr inbounds i8, ptr %83, i64 -32
  %164 = getelementptr i8, ptr %84, i64 %59
  %165 = getelementptr i8, ptr %164, i64 -1
  br label %169

166:                                              ; preds = %169, %161
  br i1 %5, label %167, label %187

167:                                              ; preds = %166
  %168 = getelementptr inbounds i8, ptr %83, i64 -32
  br label %180

169:                                              ; preds = %169, %162
  %170 = phi i64 [ 0, %162 ], [ %178, %169 ]
  %171 = mul nsw i64 %170, %60
  %172 = getelementptr inbounds i8, ptr %163, i64 %171
  %173 = getelementptr inbounds i8, ptr %84, i64 %171
  %174 = load i8, ptr %173, align 1, !tbaa !147
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %172, i8 %174, i64 28, i1 false)
  %175 = getelementptr inbounds i8, ptr %164, i64 %171
  %176 = getelementptr inbounds i8, ptr %165, i64 %171
  %177 = load i8, ptr %176, align 1, !tbaa !147
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %175, i8 %177, i64 28, i1 false)
  %178 = add nuw nsw i64 %170, 1
  %179 = icmp eq i64 %178, %61
  br i1 %179, label %166, label %169, !llvm.loop !148

180:                                              ; preds = %180, %167
  %181 = phi i64 [ 0, %167 ], [ %185, %180 ]
  %182 = xor i64 %181, -1
  %183 = mul nsw i64 %182, %64
  %184 = getelementptr inbounds i8, ptr %168, i64 %183
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %184, ptr nonnull align 1 %168, i64 %63, i1 false)
  %185 = add nuw nsw i64 %181, 1
  %186 = icmp eq i64 %185, 24
  br i1 %186, label %187, label %180, !llvm.loop !149

187:                                              ; preds = %180, %166
  br i1 %65, label %198, label %188

188:                                              ; preds = %187
  %189 = getelementptr inbounds i8, ptr %83, i64 -32
  %190 = getelementptr inbounds i8, ptr %189, i64 %68
  br label %191

191:                                              ; preds = %191, %188
  %192 = phi i64 [ 0, %188 ], [ %196, %191 ]
  %193 = add nsw i64 %192, %71
  %194 = mul nsw i64 %193, %72
  %195 = getelementptr inbounds i8, ptr %189, i64 %194
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %195, ptr nonnull align 1 %190, i64 %70, i1 false)
  %196 = add nuw nsw i64 %192, 1
  %197 = icmp eq i64 %196, 24
  br i1 %197, label %198, label %191, !llvm.loop !150

198:                                              ; preds = %154, %191, %187, %150
  %199 = add nuw nsw i64 %75, 1
  %200 = icmp eq i64 %199, 4
  br i1 %200, label %73, label %74, !llvm.loop !152
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_expand_border_lowres(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 27
  %3 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 28
  %4 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 29
  br label %6

5:                                                ; preds = %57
  ret void

6:                                                ; preds = %1, %57
  %7 = phi i64 [ 0, %1 ], [ %58, %57 ]
  %8 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 32, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = load i32, ptr %2, align 4, !tbaa !106
  %11 = load i32, ptr %3, align 16, !tbaa !105
  %12 = load i32, ptr %4, align 4, !tbaa !107
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %6
  %15 = getelementptr inbounds i8, ptr %9, i64 -32
  %16 = sext i32 %11 to i64
  %17 = getelementptr i8, ptr %9, i64 %16
  %18 = getelementptr i8, ptr %17, i64 -1
  %19 = sext i32 %10 to i64
  %20 = zext nneg i32 %12 to i64
  br label %26

21:                                               ; preds = %26, %6
  %22 = getelementptr inbounds i8, ptr %9, i64 -32
  %23 = add nsw i32 %11, 64
  %24 = sext i32 %23 to i64
  %25 = sext i32 %10 to i64
  br label %37

26:                                               ; preds = %26, %14
  %27 = phi i64 [ 0, %14 ], [ %35, %26 ]
  %28 = mul nsw i64 %27, %19
  %29 = getelementptr inbounds i8, ptr %15, i64 %28
  %30 = getelementptr inbounds i8, ptr %9, i64 %28
  %31 = load i8, ptr %30, align 1, !tbaa !147
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %29, i8 %31, i64 32, i1 false)
  %32 = getelementptr inbounds i8, ptr %17, i64 %28
  %33 = getelementptr inbounds i8, ptr %18, i64 %28
  %34 = load i8, ptr %33, align 1, !tbaa !147
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %32, i8 %34, i64 32, i1 false)
  %35 = add nuw nsw i64 %27, 1
  %36 = icmp eq i64 %35, %20
  br i1 %36, label %21, label %26, !llvm.loop !148

37:                                               ; preds = %37, %21
  %38 = phi i64 [ 0, %21 ], [ %42, %37 ]
  %39 = xor i64 %38, -1
  %40 = mul nsw i64 %39, %25
  %41 = getelementptr inbounds i8, ptr %22, i64 %40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %41, ptr nonnull align 1 %22, i64 %24, i1 false)
  %42 = add nuw nsw i64 %38, 1
  %43 = icmp eq i64 %42, 32
  br i1 %43, label %44, label %37, !llvm.loop !149

44:                                               ; preds = %37
  %45 = add nsw i32 %12, -1
  %46 = mul nsw i32 %45, %10
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %22, i64 %47
  %49 = sext i32 %12 to i64
  br label %50

50:                                               ; preds = %50, %44
  %51 = phi i64 [ 0, %44 ], [ %55, %50 ]
  %52 = add nsw i64 %51, %49
  %53 = mul nsw i64 %52, %25
  %54 = getelementptr inbounds i8, ptr %22, i64 %53
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %54, ptr nonnull align 1 %48, i64 %24, i1 false)
  %55 = add nuw nsw i64 %51, 1
  %56 = icmp eq i64 %55, 32
  br i1 %56, label %57, label %50, !llvm.loop !150

57:                                               ; preds = %50
  %58 = add nuw nsw i64 %7, 1
  %59 = icmp eq i64 %58, 4
  br i1 %59, label %5, label %6, !llvm.loop !153
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_expand_border_mod16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 23
  %4 = load i32, ptr %3, align 4, !tbaa !68
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %10 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  br label %12

11:                                               ; preds = %76, %2
  ret void

12:                                               ; preds = %6, %76
  %13 = phi i64 [ 0, %6 ], [ %77, %76 ]
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = load i32, ptr %7, align 4, !tbaa !66
  %17 = ashr i32 %16, %15
  %18 = load i32, ptr %8, align 8, !tbaa !67
  %19 = ashr i32 %18, %15
  %20 = load ptr, ptr %9, align 16, !tbaa !140
  %21 = getelementptr inbounds %struct.x264_sps_t, ptr %20, i64 0, i32 16
  %22 = load i32, ptr %21, align 4, !tbaa !141
  %23 = shl nsw i32 %22, 4
  %24 = sub nsw i32 %23, %16
  %25 = ashr i32 %24, %15
  %26 = getelementptr inbounds %struct.x264_sps_t, ptr %20, i64 0, i32 17
  %27 = load i32, ptr %26, align 4, !tbaa !146
  %28 = shl nsw i32 %27, 4
  %29 = sub nsw i32 %28, %18
  %30 = ashr i32 %29, %15
  %31 = icmp ne i32 %25, 0
  %32 = icmp sgt i32 %19, 0
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %50

34:                                               ; preds = %12
  %35 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 30, i64 %13
  %36 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 24, i64 %13
  %37 = sext i32 %25 to i64
  br label %38

38:                                               ; preds = %34, %38
  %39 = phi i32 [ 0, %34 ], [ %48, %38 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !75
  %41 = load i32, ptr %36, align 4, !tbaa !71
  %42 = mul nsw i32 %41, %39
  %43 = add nsw i32 %42, %17
  %44 = sext i32 %43 to i64
  %45 = getelementptr i8, ptr %40, i64 %44
  %46 = getelementptr i8, ptr %45, i64 -1
  %47 = load i8, ptr %46, align 1, !tbaa !147
  tail call void @llvm.memset.p0.i64(ptr align 1 %45, i8 %47, i64 %37, i1 false)
  %48 = add nuw nsw i32 %39, 1
  %49 = icmp eq i32 %48, %19
  br i1 %49, label %50, label %38, !llvm.loop !154

50:                                               ; preds = %38, %12
  %51 = icmp eq i32 %30, 0
  br i1 %51, label %76, label %52

52:                                               ; preds = %50
  %53 = add nsw i32 %30, %19
  %54 = icmp sgt i32 %30, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 30, i64 %13
  %57 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 24, i64 %13
  %58 = add nsw i32 %25, %17
  %59 = sext i32 %58 to i64
  br label %60

60:                                               ; preds = %55, %60
  %61 = phi i32 [ %19, %55 ], [ %74, %60 ]
  %62 = load ptr, ptr %56, align 8, !tbaa !75
  %63 = load i32, ptr %57, align 4, !tbaa !71
  %64 = mul nsw i32 %63, %61
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %62, i64 %65
  %67 = load i32, ptr %10, align 8, !tbaa !64
  %68 = xor i32 %67, -1
  %69 = or i32 %61, %68
  %70 = add i32 %69, %19
  %71 = mul nsw i32 %70, %63
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %62, i64 %72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %66, ptr align 1 %73, i64 %59, i1 false)
  %74 = add nsw i32 %61, 1
  %75 = icmp slt i32 %74, %53
  br i1 %75, label %60, label %76, !llvm.loop !155

76:                                               ; preds = %60, %52, %50
  %77 = add nuw nsw i64 %13, 1
  %78 = load i32, ptr %3, align 4, !tbaa !68
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %12, label %11, !llvm.loop !156
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_frame_cond_broadcast(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 76
  store i32 %1, ptr %3, align 8, !tbaa !86
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local void @x264_frame_cond_wait(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 76
  %4 = load i32, ptr %3, align 8, !tbaa !86
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %6, label %7, !llvm.loop !157

6:                                                ; preds = %2, %6
  br label %6

7:                                                ; preds = %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @x264_frame_push(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #8 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i64 [ %8, %3 ], [ 0, %2 ]
  %5 = getelementptr inbounds ptr, ptr %0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp eq ptr %6, null
  %8 = add nuw i64 %4, 1
  br i1 %7, label %9, label %3, !llvm.loop !158

9:                                                ; preds = %3
  %10 = getelementptr inbounds ptr, ptr %0, i64 %4
  store ptr %1, ptr %10, align 8, !tbaa !75
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local ptr @x264_frame_pop(ptr nocapture noundef %0) local_unnamed_addr #8 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ %4, %2 ], [ 0, %1 ]
  %4 = add nuw nsw i64 %3, 1
  %5 = getelementptr inbounds ptr, ptr %0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %2, !llvm.loop !159

8:                                                ; preds = %2
  %9 = and i64 %3, 4294967295
  %10 = getelementptr inbounds ptr, ptr %0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  store ptr null, ptr %10, align 8, !tbaa !75
  ret ptr %11
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @x264_frame_unshift(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #8 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i64 [ %8, %3 ], [ 0, %2 ]
  %5 = getelementptr inbounds ptr, ptr %0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp eq ptr %6, null
  %8 = add nuw i64 %4, 1
  br i1 %7, label %9, label %3, !llvm.loop !160

9:                                                ; preds = %3
  %10 = and i64 %4, 4294967295
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ %14, %12 ], [ %4, %9 ]
  %14 = add nsw i64 %13, -1
  %15 = getelementptr inbounds ptr, ptr %0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !75
  %17 = getelementptr inbounds ptr, ptr %0, i64 %13
  store ptr %16, ptr %17, align 8, !tbaa !75
  %18 = icmp eq i64 %14, 0
  br i1 %18, label %19, label %12, !llvm.loop !161

19:                                               ; preds = %12, %9
  store ptr %1, ptr %0, align 8, !tbaa !75
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @x264_frame_shift(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !75
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1, %4
  %5 = phi i64 [ %7, %4 ], [ 0, %1 ]
  %6 = phi ptr [ %10, %4 ], [ %0, %1 ]
  %7 = add nuw nsw i64 %5, 1
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  store ptr %9, ptr %6, align 8, !tbaa !75
  %10 = getelementptr inbounds ptr, ptr %0, i64 %7
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !llvm.loop !162

13:                                               ; preds = %4, %1
  ret ptr %2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_push_unused(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 78
  %4 = load i32, ptr %3, align 16, !tbaa !163
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr %3, align 16, !tbaa !163
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 17
  %9 = load i8, ptr %8, align 4, !tbaa !87
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 1, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !75
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi i64 [ %18, %13 ], [ 0, %7 ]
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !75
  %17 = icmp eq ptr %16, null
  %18 = add nuw i64 %14, 1
  br i1 %17, label %19, label %13, !llvm.loop !158

19:                                               ; preds = %13
  %20 = getelementptr inbounds ptr, ptr %12, i64 %14
  store ptr %1, ptr %20, align 8, !tbaa !75
  br label %21

21:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @x264_frame_pop_unused(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 1, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %2, %8
  %9 = phi i64 [ %10, %8 ], [ 0, %2 ]
  %10 = add nuw nsw i64 %9, 1
  %11 = getelementptr inbounds ptr, ptr %5, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !75
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %8, !llvm.loop !159

14:                                               ; preds = %8
  %15 = and i64 %9, 4294967295
  %16 = getelementptr inbounds ptr, ptr %5, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  store ptr null, ptr %16, align 8, !tbaa !75
  br label %20

18:                                               ; preds = %2
  %19 = tail call ptr @x264_frame_new(ptr noundef %0, i32 noundef %1)
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi ptr [ %17, %14 ], [ %19, %18 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.x264_frame, ptr %21, i64 0, i32 18
  store i8 0, ptr %24, align 1, !tbaa !164
  %25 = getelementptr inbounds %struct.x264_frame, ptr %21, i64 0, i32 78
  store i32 1, ptr %25, align 16, !tbaa !163
  %26 = getelementptr inbounds %struct.x264_frame, ptr %21, i64 0, i32 62
  store i32 0, ptr %26, align 8, !tbaa !165
  %27 = getelementptr inbounds %struct.x264_frame, ptr %21, i64 0, i32 66
  store i32 1, ptr %27, align 8, !tbaa !166
  %28 = getelementptr inbounds %struct.x264_frame, ptr %21, i64 0, i32 16
  store i32 0, ptr %28, align 16, !tbaa !167
  %29 = getelementptr inbounds %struct.x264_frame, ptr %21, i64 0, i32 37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3072) %29, i8 0, i64 3072, i1 false)
  %30 = getelementptr inbounds %struct.x264_frame, ptr %21, i64 0, i32 67
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %30, i8 0, i64 72, i1 false)
  br label %31

31:                                               ; preds = %20, %23
  %32 = phi ptr [ %21, %23 ], [ null, %20 ]
  ret ptr %32
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_push_blank_unused(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 78
  %4 = load i32, ptr %3, align 16, !tbaa !163
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr %3, align 16, !tbaa !163
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !168
  br label %10

10:                                               ; preds = %10, %7
  %11 = phi i64 [ %15, %10 ], [ 0, %7 ]
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !75
  %14 = icmp eq ptr %13, null
  %15 = add nuw i64 %11, 1
  br i1 %14, label %16, label %10, !llvm.loop !158

16:                                               ; preds = %10
  %17 = getelementptr inbounds ptr, ptr %9, i64 %11
  store ptr %1, ptr %17, align 8, !tbaa !75
  br label %18

18:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @x264_frame_pop_blank_unused(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !168
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %1, %6
  %7 = phi i64 [ %8, %6 ], [ 0, %1 ]
  %8 = add nuw nsw i64 %7, 1
  %9 = getelementptr inbounds ptr, ptr %3, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !75
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %6, !llvm.loop !159

12:                                               ; preds = %6
  %13 = and i64 %7, 4294967295
  %14 = getelementptr inbounds ptr, ptr %3, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !75
  store ptr null, ptr %14, align 8, !tbaa !75
  br label %18

16:                                               ; preds = %1
  %17 = tail call ptr @x264_malloc(i32 noundef 15632) #11
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi ptr [ %15, %12 ], [ %17, %16 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.x264_frame, ptr %19, i64 0, i32 39
  store i32 1, ptr %22, align 16, !tbaa !95
  %23 = getelementptr inbounds %struct.x264_frame, ptr %19, i64 0, i32 78
  store i32 1, ptr %23, align 16, !tbaa !163
  br label %24

24:                                               ; preds = %18, %21
  %25 = phi ptr [ %19, %21 ], [ null, %18 ]
  ret ptr %25
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_sort(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds ptr, ptr %0, i64 1
  %4 = icmp eq i32 %1, 0
  br label %5

5:                                                ; preds = %8, %2
  %6 = load ptr, ptr %3, align 8, !tbaa !75
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %39, %5
  %9 = phi i32 [ 1, %5 ], [ %40, %39 ]
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %5, label %46, !llvm.loop !169

11:                                               ; preds = %5, %39
  %12 = phi i64 [ %45, %39 ], [ 0, %5 ]
  %13 = phi i64 [ %41, %39 ], [ 1, %5 ]
  %14 = phi ptr [ %43, %39 ], [ %6, %5 ]
  %15 = phi ptr [ %42, %39 ], [ %3, %5 ]
  %16 = phi i32 [ %40, %39 ], [ 1, %5 ]
  %17 = getelementptr inbounds ptr, ptr %0, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  %19 = getelementptr inbounds %struct.x264_frame, ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !81
  %21 = getelementptr inbounds %struct.x264_frame, ptr %14, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !81
  %23 = getelementptr inbounds %struct.x264_frame, ptr %18, i64 0, i32 10
  %24 = load i32, ptr %23, align 8, !tbaa !84
  %25 = getelementptr inbounds %struct.x264_frame, ptr %14, i64 0, i32 10
  %26 = load i32, ptr %25, align 8, !tbaa !84
  %27 = sub nsw i32 %24, %26
  br i1 %4, label %34, label %28

28:                                               ; preds = %11
  %29 = icmp sgt i32 %20, %22
  br i1 %29, label %38, label %30

30:                                               ; preds = %28
  %31 = icmp eq i32 %20, %22
  %32 = icmp sgt i32 %27, 0
  %33 = select i1 %31, i1 %32, i1 false
  br label %36

34:                                               ; preds = %11
  %35 = icmp sgt i32 %27, 0
  br label %36

36:                                               ; preds = %30, %34
  %37 = phi i1 [ %35, %34 ], [ %33, %30 ]
  br i1 %37, label %38, label %39

38:                                               ; preds = %28, %36
  store ptr %14, ptr %17, align 8, !tbaa !75
  store ptr %18, ptr %15, align 8, !tbaa !75
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ 0, %38 ], [ %16, %36 ]
  %41 = add nuw nsw i64 %13, 1
  %42 = getelementptr inbounds ptr, ptr %0, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !75
  %44 = icmp eq ptr %43, null
  %45 = add nuw nsw i64 %12, 1
  br i1 %44, label %8, label %11, !llvm.loop !170

46:                                               ; preds = %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_weight_scale_plane(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %8
  %11 = icmp sgt i32 %5, 0
  %12 = getelementptr inbounds %struct.x264_weight_t, ptr %7, i64 0, i32 5
  %13 = shl nsw i32 %2, 4
  %14 = sext i32 %13 to i64
  %15 = shl nsw i32 %4, 4
  %16 = sext i32 %15 to i64
  br label %17

17:                                               ; preds = %10, %23
  %18 = phi ptr [ %1, %10 ], [ %25, %23 ]
  %19 = phi i32 [ %6, %10 ], [ %24, %23 ]
  %20 = phi ptr [ %3, %10 ], [ %26, %23 ]
  br i1 %11, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call i32 @llvm.smin.i32(i32 %19, i32 16)
  br label %28

23:                                               ; preds = %28, %17
  %24 = add nsw i32 %19, -16
  %25 = getelementptr inbounds i8, ptr %18, i64 %14
  %26 = getelementptr inbounds i8, ptr %20, i64 %16
  %27 = icmp sgt i32 %19, 16
  br i1 %27, label %17, label %38, !llvm.loop !171

28:                                               ; preds = %21, %28
  %29 = phi i64 [ 0, %21 ], [ %35, %28 ]
  %30 = load ptr, ptr %12, align 16, !tbaa !172
  %31 = getelementptr inbounds ptr, ptr %30, i64 4
  %32 = load ptr, ptr %31, align 8, !tbaa !75
  %33 = getelementptr inbounds i8, ptr %18, i64 %29
  %34 = getelementptr inbounds i8, ptr %20, i64 %29
  tail call void %32(ptr noundef %33, i32 noundef %2, ptr noundef %34, i32 noundef %4, ptr noundef %7, i32 noundef %22) #11
  %35 = add nuw i64 %29, 16
  %36 = trunc i64 %35 to i32
  %37 = icmp slt i32 %36, %5
  br i1 %37, label %28, label %23, !llvm.loop !174

38:                                               ; preds = %23, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_frame_delete_list(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !75
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3, %6
  %7 = phi i64 [ %9, %6 ], [ 0, %3 ]
  %8 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %9 = add nuw i64 %7, 1
  tail call void @x264_frame_delete(ptr noundef nonnull %8)
  %10 = getelementptr inbounds ptr, ptr %0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !175

13:                                               ; preds = %6, %3
  tail call void @x264_free(ptr noundef nonnull %0) #11
  br label %14

14:                                               ; preds = %1, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @x264_synch_frame_list_init(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.x264_synch_frame_list_t, ptr %0, i64 0, i32 1
  store i32 %1, ptr %5, align 8, !tbaa !176
  %6 = getelementptr inbounds %struct.x264_synch_frame_list_t, ptr %0, i64 0, i32 2
  store i32 0, ptr %6, align 4, !tbaa !178
  %7 = add nuw nsw i32 %1, 1
  %8 = zext nneg i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = trunc i64 %9 to i32
  %11 = tail call ptr @x264_malloc(i32 noundef %10) #11
  store ptr %11, ptr %0, align 8, !tbaa !179
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %11, i8 0, i64 %9, i1 false)
  br label %14

14:                                               ; preds = %4, %2, %13
  %15 = phi i32 [ 0, %13 ], [ -1, %2 ], [ -1, %4 ]
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_synch_frame_list_delete(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !179
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !75
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4, %7
  %8 = phi i64 [ %10, %7 ], [ 0, %4 ]
  %9 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %10 = add nuw i64 %8, 1
  tail call void @x264_frame_delete(ptr noundef nonnull %9)
  %11 = getelementptr inbounds ptr, ptr %2, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !75
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %7, !llvm.loop !175

14:                                               ; preds = %7, %4
  tail call void @x264_free(ptr noundef nonnull %2) #11
  br label %15

15:                                               ; preds = %1, %14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_synch_frame_list_push(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.x264_synch_frame_list_t, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !178
  %5 = getelementptr inbounds %struct.x264_synch_frame_list_t, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !176
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %9, !llvm.loop !180

8:                                                ; preds = %2, %8
  br label %8

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.x264_synch_frame_list_t, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %0, align 8, !tbaa !179
  %12 = add nsw i32 %4, 1
  store i32 %12, ptr %10, align 4, !tbaa !178
  %13 = sext i32 %4 to i64
  %14 = getelementptr inbounds ptr, ptr %11, i64 %13
  store ptr %1, ptr %14, align 8, !tbaa !75
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

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
!34 = !{!35, !37, i64 16368}
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
!64 = !{!35, !37, i64 136}
!65 = !{!35, !37, i64 0}
!66 = !{!35, !37, i64 20}
!67 = !{!35, !37, i64 24}
!68 = !{!69, !37, i64 100}
!69 = !{!"x264_frame", !37, i64 0, !37, i64 4, !37, i64 8, !47, i64 16, !47, i64 24, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !41, i64 48, !37, i64 56, !37, i64 60, !37, i64 64, !37, i64 68, !37, i64 72, !37, i64 76, !37, i64 80, !38, i64 84, !38, i64 85, !38, i64 86, !43, i64 88, !43, i64 92, !37, i64 96, !37, i64 100, !38, i64 104, !38, i64 116, !38, i64 128, !37, i64 140, !37, i64 144, !37, i64 148, !38, i64 152, !38, i64 176, !38, i64 208, !41, i64 240, !38, i64 248, !38, i64 280, !38, i64 320, !38, i64 3392, !37, i64 3520, !41, i64 3528, !41, i64 3536, !41, i64 3544, !38, i64 3552, !41, i64 3568, !38, i64 3576, !38, i64 3848, !38, i64 6440, !38, i64 6712, !38, i64 6728, !38, i64 6736, !38, i64 6864, !38, i64 6868, !38, i64 8164, !37, i64 9460, !38, i64 9464, !38, i64 9536, !41, i64 12128, !41, i64 12136, !41, i64 12144, !41, i64 12152, !41, i64 12160, !37, i64 12168, !41, i64 12176, !41, i64 12184, !41, i64 12192, !37, i64 12200, !38, i64 12204, !37, i64 12276, !47, i64 12280, !70, i64 12288, !38, i64 12320, !38, i64 12572, !38, i64 13576, !37, i64 15584, !37, i64 15588, !37, i64 15592, !37, i64 15596, !37, i64 15600, !37, i64 15604, !37, i64 15608, !43, i64 15612, !37, i64 15616, !37, i64 15620, !37, i64 15624}
!70 = !{!"", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24}
!71 = !{!37, !37, i64 0}
!72 = distinct !{!72, !73, !74}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"llvm.loop.unroll.disable"}
!75 = !{!41, !41, i64 0}
!76 = distinct !{!76, !73, !74}
!77 = !{!35, !37, i64 100}
!78 = distinct !{!78, !73, !74}
!79 = distinct !{!79, !73, !74}
!80 = !{!69, !37, i64 0}
!81 = !{!69, !37, i64 4}
!82 = !{!69, !37, i64 8}
!83 = !{!69, !47, i64 16}
!84 = !{!69, !37, i64 56}
!85 = !{!69, !37, i64 68}
!86 = !{!69, !37, i64 15592}
!87 = !{!69, !38, i64 84}
!88 = !{!69, !37, i64 76}
!89 = !{!69, !37, i64 64}
!90 = !{!69, !37, i64 15588}
!91 = !{!69, !37, i64 15584}
!92 = !{!69, !41, i64 3528}
!93 = !{!35, !37, i64 428}
!94 = distinct !{!94, !73, !74}
!95 = !{!69, !37, i64 3520}
!96 = !{!69, !41, i64 3536}
!97 = !{!69, !41, i64 3544}
!98 = !{!69, !41, i64 3568}
!99 = !{!69, !41, i64 12136}
!100 = !{!69, !41, i64 12144}
!101 = !{!35, !37, i64 412}
!102 = !{!35, !37, i64 14676}
!103 = !{!69, !41, i64 240}
!104 = !{!35, !37, i64 14672}
!105 = !{!69, !37, i64 144}
!106 = !{!69, !37, i64 140}
!107 = !{!69, !37, i64 148}
!108 = distinct !{!108, !73, !74}
!109 = distinct !{!109, !73, !74}
!110 = distinct !{!110, !73, !74}
!111 = !{!69, !41, i64 12184}
!112 = distinct !{!112, !73, !74}
!113 = distinct !{!113, !73, !74}
!114 = !{!69, !41, i64 12176}
!115 = !{!35, !37, i64 544}
!116 = !{!69, !41, i64 12152}
!117 = !{!69, !41, i64 12160}
!118 = !{!69, !41, i64 12192}
!119 = distinct !{!119, !73, !74}
!120 = distinct !{!120, !73, !74}
!121 = distinct !{!121, !73, !74}
!122 = distinct !{!122, !73, !74}
!123 = distinct !{!123, !73, !74}
!124 = distinct !{!124, !73, !74}
!125 = distinct !{!125, !73, !74}
!126 = distinct !{!126, !73, !74}
!127 = !{!128, !37, i64 40}
!128 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !47, i64 16, !47, i64 24, !41, i64 32, !129, i64 40, !70, i64 96, !41, i64 128}
!129 = !{!"", !37, i64 0, !37, i64 4, !38, i64 8, !38, i64 24}
!130 = !{!128, !37, i64 0}
!131 = !{!128, !37, i64 4}
!132 = !{!128, !47, i64 16}
!133 = !{!69, !47, i64 24}
!134 = !{!128, !41, i64 32}
!135 = !{!69, !41, i64 48}
!136 = !{!128, !37, i64 8}
!137 = distinct !{!137, !73, !74}
!138 = !{!35, !41, i64 32784}
!139 = !{!35, !37, i64 7268}
!140 = !{!35, !41, i64 3200}
!141 = !{!142, !37, i64 1084}
!142 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !38, i64 52, !37, i64 1076, !37, i64 1080, !37, i64 1084, !37, i64 1088, !37, i64 1092, !37, i64 1096, !37, i64 1100, !37, i64 1104, !143, i64 1108, !37, i64 1124, !144, i64 1128, !37, i64 1296}
!143 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12}
!144 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !37, i64 56, !37, i64 60, !37, i64 64, !37, i64 68, !37, i64 72, !37, i64 76, !37, i64 80, !145, i64 84, !37, i64 132, !37, i64 136, !37, i64 140, !37, i64 144, !37, i64 148, !37, i64 152, !37, i64 156, !37, i64 160, !37, i64 164}
!145 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44}
!146 = !{!142, !37, i64 1088}
!147 = !{!38, !38, i64 0}
!148 = distinct !{!148, !73, !74}
!149 = distinct !{!149, !73, !74}
!150 = distinct !{!150, !73, !74}
!151 = distinct !{!151, !73, !74}
!152 = distinct !{!152, !73, !74}
!153 = distinct !{!153, !73, !74}
!154 = distinct !{!154, !73, !74}
!155 = distinct !{!155, !73, !74}
!156 = distinct !{!156, !73, !74}
!157 = distinct !{!157, !73, !74}
!158 = distinct !{!158, !73, !74}
!159 = distinct !{!159, !73, !74}
!160 = distinct !{!160, !73, !74}
!161 = distinct !{!161, !73, !74}
!162 = distinct !{!162, !73, !74}
!163 = !{!69, !37, i64 15600}
!164 = !{!69, !38, i64 85}
!165 = !{!69, !37, i64 12168}
!166 = !{!69, !37, i64 12200}
!167 = !{!69, !37, i64 80}
!168 = !{!35, !41, i64 14440}
!169 = distinct !{!169, !73, !74}
!170 = distinct !{!170, !73, !74}
!171 = distinct !{!171, !73, !74}
!172 = !{!173, !41, i64 48}
!173 = !{!"x264_weight_t", !38, i64 0, !38, i64 16, !37, i64 32, !37, i64 36, !37, i64 40, !41, i64 48}
!174 = distinct !{!174, !73, !74}
!175 = distinct !{!175, !73, !74}
!176 = !{!177, !37, i64 8}
!177 = !{!"", !41, i64 0, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24}
!178 = !{!177, !37, i64 12}
!179 = !{!177, !41, i64 0}
!180 = distinct !{!180, !73, !74}
