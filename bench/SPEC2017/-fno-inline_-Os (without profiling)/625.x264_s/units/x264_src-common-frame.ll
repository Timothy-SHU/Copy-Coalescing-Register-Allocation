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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @x264_frame_new(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %4 = load i32, ptr %3, align 16, !tbaa !6
  %5 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  %6 = load i32, ptr %5, align 8, !tbaa !36
  %7 = shl i32 32, %6
  %8 = load i32, ptr %0, align 16, !tbaa !37
  %9 = tail call ptr @x264_malloc(i32 noundef 15632) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %372, label %11

11:                                               ; preds = %2
  %12 = and i32 %8, 2
  %13 = icmp eq i32 %12, 0
  %14 = and i32 %8, 1
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 16, i32 32
  %17 = select i1 %13, i32 %16, i32 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(15632) %9, i8 0, i64 15632, i1 false)
  %18 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !38
  %20 = add nsw i32 %19, 15
  %21 = and i32 %20, -16
  %22 = add nsw i32 %17, -1
  %23 = add nuw nsw i32 %17, 63
  %24 = add i32 %23, %21
  %25 = sub nsw i32 0, %17
  %26 = and i32 %24, %25
  %27 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !39
  %29 = load i32, ptr %5, align 8, !tbaa !36
  %30 = shl i32 16, %29
  %31 = add i32 %28, -1
  %32 = add i32 %31, %30
  %33 = sub i32 0, %30
  %34 = and i32 %32, %33
  %35 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 23
  store i32 3, ptr %35, align 4, !tbaa !40
  br label %50

36:                                               ; preds = %50
  %37 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 24
  %38 = load i32, ptr %37, align 8, !tbaa !43
  %39 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 26
  %40 = load i32, ptr %39, align 16, !tbaa !43
  %41 = shl i32 64, %6
  %42 = add nsw i32 %40, %41
  %43 = mul nsw i32 %42, %38
  %44 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 24, i64 1
  %45 = load i32, ptr %44, align 4, !tbaa !43
  %46 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 26, i64 1
  %47 = load i32, ptr %46, align 4, !tbaa !43
  %48 = add nsw i32 %47, %41
  %49 = mul nsw i32 %48, %45
  br label %70

50:                                               ; preds = %11, %50
  %51 = phi i64 [ 0, %11 ], [ %62, %50 ]
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = ashr exact i32 %26, %53
  %55 = add nsw i32 %54, %22
  %56 = and i32 %55, %25
  %57 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 24, i64 %51
  store i32 %56, ptr %57, align 4, !tbaa !43
  %58 = ashr exact i32 %21, %53
  %59 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 25, i64 %51
  store i32 %58, ptr %59, align 4, !tbaa !43
  %60 = ashr exact i32 %34, %53
  %61 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 26, i64 %51
  store i32 %60, ptr %61, align 4, !tbaa !43
  %62 = add nuw nsw i64 %51, 1
  %63 = icmp eq i64 %62, 3
  br i1 %63, label %36, label %50, !llvm.loop !44

64:                                               ; preds = %75
  %65 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  %66 = load i32, ptr %65, align 4, !tbaa !46
  %67 = icmp sgt i32 %66, -2
  br i1 %67, label %68, label %107

68:                                               ; preds = %64
  %69 = ashr exact i32 %34, 2
  br label %86

70:                                               ; preds = %36, %75
  %71 = phi i64 [ 1, %36 ], [ %84, %75 ]
  %72 = tail call ptr @x264_malloc(i32 noundef %49) #11
  %73 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 34, i64 %71
  store ptr %72, ptr %73, align 8, !tbaa !47
  %74 = icmp eq ptr %72, null
  br i1 %74, label %372, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 24, i64 %71
  %77 = load i32, ptr %76, align 4, !tbaa !43
  %78 = mul nsw i32 %77, %7
  %79 = add nsw i32 %78, 32
  %80 = ashr exact i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, ptr %72, i64 %81
  %83 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 30, i64 %71
  store ptr %82, ptr %83, align 8, !tbaa !47
  %84 = add nuw nsw i64 %71, 1
  %85 = icmp eq i64 %84, 3
  br i1 %85, label %64, label %70, !llvm.loop !48

86:                                               ; preds = %68, %102
  %87 = phi i32 [ %66, %68 ], [ %104, %102 ]
  %88 = phi i64 [ 0, %68 ], [ %105, %102 ]
  %89 = icmp sgt i32 %87, -2
  br i1 %89, label %97, label %90

90:                                               ; preds = %86
  %91 = sext i32 %87 to i64
  br label %102

92:                                               ; preds = %97
  %93 = add nuw nsw i64 %98, 1
  %94 = load i32, ptr %65, align 4, !tbaa !46
  %95 = sext i32 %94 to i64
  %96 = icmp sgt i64 %98, %95
  br i1 %96, label %102, label %97, !llvm.loop !49

97:                                               ; preds = %86, %92
  %98 = phi i64 [ %93, %92 ], [ 0, %86 ]
  %99 = tail call ptr @x264_malloc(i32 noundef %69) #11
  %100 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 56, i64 %88, i64 %98
  store ptr %99, ptr %100, align 8, !tbaa !47
  %101 = icmp eq ptr %99, null
  br i1 %101, label %372, label %92

102:                                              ; preds = %92, %90
  %103 = phi i64 [ %91, %90 ], [ %95, %92 ]
  %104 = phi i32 [ %87, %90 ], [ %94, %92 ]
  %105 = add nuw nsw i64 %88, 1
  %106 = icmp sgt i64 %88, %103
  br i1 %106, label %107, label %86, !llvm.loop !50

107:                                              ; preds = %102, %64
  store i32 -1, ptr %9, align 16, !tbaa !51
  %108 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 1
  store i32 0, ptr %108, align 4, !tbaa !52
  %109 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 2
  store i32 0, ptr %109, align 8, !tbaa !53
  %110 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 3
  store i64 -1, ptr %110, align 16, !tbaa !54
  %111 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 10
  store i32 -1, ptr %111, align 8, !tbaa !55
  %112 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 13
  store i32 -1, ptr %112, align 4, !tbaa !56
  %113 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 76
  store i32 -1, ptr %113, align 8, !tbaa !57
  %114 = trunc i32 %1 to i8
  %115 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 17
  store i8 %114, ptr %115, align 4, !tbaa !58
  %116 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 15
  store i32 0, ptr %116, align 4, !tbaa !59
  %117 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 12
  store i32 -1, ptr %117, align 16, !tbaa !60
  %118 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 5
  %119 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 75
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %118, i8 0, i64 16, i1 false)
  store i32 -1, ptr %119, align 4, !tbaa !61
  %120 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 74
  store i32 -1, ptr %120, align 16, !tbaa !62
  %121 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 40
  store ptr %9, ptr %121, align 8, !tbaa !63
  %122 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  %123 = load i32, ptr %122, align 4, !tbaa !64
  %124 = icmp ne i32 %123, 0
  %125 = icmp ne i32 %1, 0
  %126 = and i1 %125, %124
  br i1 %126, label %127, label %151

127:                                              ; preds = %107
  %128 = shl nsw i32 %43, 2
  %129 = tail call ptr @x264_malloc(i32 noundef %128) #11
  %130 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 34
  store ptr %129, ptr %130, align 8, !tbaa !47
  %131 = icmp eq ptr %129, null
  br i1 %131, label %372, label %132

132:                                              ; preds = %127
  %133 = load i32, ptr %37, align 8, !tbaa !43
  %134 = mul nsw i32 %133, %7
  %135 = sext i32 %134 to i64
  %136 = sext i32 %43 to i64
  br label %141

137:                                              ; preds = %141
  %138 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 31
  %139 = load ptr, ptr %138, align 16, !tbaa !47
  %140 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 30
  store ptr %139, ptr %140, align 8, !tbaa !47
  br label %163

141:                                              ; preds = %132, %141
  %142 = phi i64 [ 0, %132 ], [ %149, %141 ]
  %143 = load ptr, ptr %130, align 8, !tbaa !47
  %144 = mul nsw i64 %142, %136
  %145 = getelementptr inbounds i8, ptr %143, i64 %144
  %146 = getelementptr inbounds i8, ptr %145, i64 %135
  %147 = getelementptr inbounds i8, ptr %146, i64 32
  %148 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 31, i64 %142
  store ptr %147, ptr %148, align 8, !tbaa !47
  %149 = add nuw nsw i64 %142, 1
  %150 = icmp eq i64 %149, 4
  br i1 %150, label %137, label %141, !llvm.loop !65

151:                                              ; preds = %107
  %152 = tail call ptr @x264_malloc(i32 noundef %43) #11
  %153 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 34
  store ptr %152, ptr %153, align 8, !tbaa !47
  %154 = icmp eq ptr %152, null
  br i1 %154, label %372, label %155

155:                                              ; preds = %151
  %156 = load i32, ptr %37, align 8, !tbaa !43
  %157 = mul nsw i32 %156, %7
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, ptr %152, i64 %158
  %160 = getelementptr inbounds i8, ptr %159, i64 32
  %161 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 30
  store ptr %160, ptr %161, align 8, !tbaa !47
  %162 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 31
  store ptr %160, ptr %162, align 16, !tbaa !47
  br label %163

163:                                              ; preds = %155, %137
  %164 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 39
  store i32 0, ptr %164, align 16, !tbaa !66
  br i1 %125, label %165, label %236

165:                                              ; preds = %163
  %166 = tail call ptr @x264_malloc(i32 noundef %4) #11
  %167 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 41
  store ptr %166, ptr %167, align 16, !tbaa !67
  %168 = icmp eq ptr %166, null
  br i1 %168, label %372, label %169

169:                                              ; preds = %165
  %170 = tail call ptr @x264_malloc(i32 noundef %4) #11
  %171 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 42
  store ptr %170, ptr %171, align 8, !tbaa !68
  %172 = icmp eq ptr %170, null
  br i1 %172, label %372, label %173

173:                                              ; preds = %169
  %174 = shl i32 %4, 6
  %175 = tail call ptr @x264_malloc(i32 noundef %174) #11
  %176 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 43
  store ptr %175, ptr %176, align 16, !tbaa !47
  %177 = icmp eq ptr %175, null
  br i1 %177, label %372, label %178

178:                                              ; preds = %173
  %179 = shl i32 %4, 2
  %180 = tail call ptr @x264_malloc(i32 noundef %179) #11
  %181 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 44
  store ptr %180, ptr %181, align 16, !tbaa !69
  %182 = icmp eq ptr %180, null
  br i1 %182, label %372, label %183

183:                                              ; preds = %178
  %184 = tail call ptr @x264_malloc(i32 noundef %179) #11
  %185 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 48
  store ptr %184, ptr %185, align 8, !tbaa !47
  %186 = icmp eq ptr %184, null
  br i1 %186, label %372, label %187

187:                                              ; preds = %183
  %188 = load i32, ptr %65, align 4, !tbaa !46
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %198, label %190

190:                                              ; preds = %187
  %191 = tail call ptr @x264_malloc(i32 noundef %174) #11
  %192 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 43, i64 1
  store ptr %191, ptr %192, align 8, !tbaa !47
  %193 = icmp eq ptr %191, null
  br i1 %193, label %372, label %194

194:                                              ; preds = %190
  %195 = tail call ptr @x264_malloc(i32 noundef %179) #11
  %196 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 48, i64 1
  store ptr %195, ptr %196, align 8, !tbaa !47
  %197 = icmp eq ptr %195, null
  br i1 %197, label %372, label %201

198:                                              ; preds = %187
  %199 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 43, i64 1
  store ptr null, ptr %199, align 8, !tbaa !47
  %200 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 48, i64 1
  store ptr null, ptr %200, align 8, !tbaa !47
  br label %201

201:                                              ; preds = %198, %194
  %202 = ashr exact i32 %34, 2
  %203 = tail call ptr @x264_malloc(i32 noundef %202) #11
  %204 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 58
  store ptr %203, ptr %204, align 8, !tbaa !70
  %205 = icmp eq ptr %203, null
  br i1 %205, label %372, label %206

206:                                              ; preds = %201
  %207 = tail call ptr @x264_malloc(i32 noundef %202) #11
  %208 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 59
  store ptr %207, ptr %208, align 16, !tbaa !71
  %209 = icmp eq ptr %207, null
  br i1 %209, label %372, label %210

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  %212 = load i32, ptr %211, align 4, !tbaa !72
  %213 = icmp sgt i32 %212, 2
  br i1 %213, label %214, label %373

214:                                              ; preds = %210
  %215 = load i32, ptr %37, align 8, !tbaa !43
  %216 = load i32, ptr %39, align 16, !tbaa !43
  %217 = add nsw i32 %216, %41
  %218 = mul nsw i32 %217, %215
  %219 = sext i32 %218 to i64
  %220 = shl nsw i64 %219, 1
  %221 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 17
  %222 = load i32, ptr %221, align 4, !tbaa !73
  %223 = zext nneg i32 %222 to i64
  %224 = shl i64 %220, %223
  %225 = trunc i64 %224 to i32
  %226 = tail call ptr @x264_malloc(i32 noundef %225) #11
  %227 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 34, i64 3
  store ptr %226, ptr %227, align 8, !tbaa !47
  %228 = icmp eq ptr %226, null
  br i1 %228, label %372, label %229

229:                                              ; preds = %214
  %230 = load i32, ptr %37, align 8, !tbaa !43
  %231 = mul nsw i32 %230, %7
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i16, ptr %226, i64 %232
  %234 = getelementptr inbounds i16, ptr %233, i64 32
  %235 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 33
  store ptr %234, ptr %235, align 16, !tbaa !74
  br label %373

236:                                              ; preds = %163
  %237 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 16
  %238 = load i32, ptr %237, align 16, !tbaa !75
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %341, label %240

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 25
  %242 = load i32, ptr %241, align 4, !tbaa !43
  %243 = sdiv i32 %242, 2
  %244 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 28
  store i32 %243, ptr %244, align 16, !tbaa !76
  %245 = add nsw i32 %23, %243
  %246 = and i32 %245, %25
  %247 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 27
  store i32 %246, ptr %247, align 4, !tbaa !77
  %248 = load i32, ptr %39, align 16, !tbaa !43
  %249 = sdiv i32 %248, 2
  %250 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 29
  store i32 %249, ptr %250, align 4, !tbaa !78
  %251 = add nsw i32 %249, 64
  %252 = mul nsw i32 %251, %246
  %253 = shl nsw i32 %252, 2
  %254 = tail call ptr @x264_malloc(i32 noundef %253) #11
  %255 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 35
  store ptr %254, ptr %255, align 8, !tbaa !47
  %256 = icmp eq ptr %254, null
  br i1 %256, label %372, label %257

257:                                              ; preds = %240
  %258 = load i32, ptr %247, align 4, !tbaa !77
  %259 = shl nsw i32 %258, 5
  %260 = sext i32 %259 to i64
  %261 = sext i32 %252 to i64
  br label %264

262:                                              ; preds = %264
  %263 = load i32, ptr %65, align 4, !tbaa !46
  br label %274

264:                                              ; preds = %257, %264
  %265 = phi i64 [ 0, %257 ], [ %272, %264 ]
  %266 = load ptr, ptr %255, align 8, !tbaa !47
  %267 = getelementptr i8, ptr %266, i64 %260
  %268 = getelementptr i8, ptr %267, i64 32
  %269 = mul nsw i64 %265, %261
  %270 = getelementptr inbounds i8, ptr %268, i64 %269
  %271 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 32, i64 %265
  store ptr %270, ptr %271, align 8, !tbaa !47
  %272 = add nuw nsw i64 %265, 1
  %273 = icmp eq i64 %272, 4
  br i1 %273, label %262, label %264, !llvm.loop !79

274:                                              ; preds = %262, %301
  %275 = phi i32 [ %263, %262 ], [ %302, %301 ]
  %276 = phi i1 [ true, %262 ], [ false, %301 ]
  %277 = phi i64 [ 0, %262 ], [ 1, %301 ]
  %278 = icmp slt i32 %275, 0
  br i1 %278, label %301, label %284

279:                                              ; preds = %291
  %280 = add nuw nsw i64 %285, 1
  %281 = load i32, ptr %65, align 4, !tbaa !46
  %282 = sext i32 %281 to i64
  %283 = icmp slt i64 %285, %282
  br i1 %283, label %284, label %301, !llvm.loop !80

284:                                              ; preds = %274, %279
  %285 = phi i64 [ %280, %279 ], [ 0, %274 ]
  %286 = load i32, ptr %3, align 16, !tbaa !6
  %287 = shl i32 %286, 2
  %288 = tail call ptr @x264_malloc(i32 noundef %287) #11
  %289 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 45, i64 %277, i64 %285
  store ptr %288, ptr %289, align 8, !tbaa !47
  %290 = icmp eq ptr %288, null
  br i1 %290, label %372, label %291

291:                                              ; preds = %284
  %292 = load i32, ptr %3, align 16, !tbaa !6
  %293 = shl nsw i32 %292, 1
  %294 = sext i32 %293 to i64
  %295 = shl nsw i64 %294, 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %288, i8 0, i64 %295, i1 false)
  %296 = load i32, ptr %3, align 16, !tbaa !6
  %297 = shl i32 %296, 2
  %298 = tail call ptr @x264_malloc(i32 noundef %297) #11
  %299 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 47, i64 %277, i64 %285
  store ptr %298, ptr %299, align 8, !tbaa !47
  %300 = icmp eq ptr %298, null
  br i1 %300, label %372, label %279

301:                                              ; preds = %279, %274
  %302 = phi i32 [ %275, %274 ], [ %281, %279 ]
  %303 = icmp ne i32 %302, 0
  %304 = and i1 %276, %303
  br i1 %304, label %274, label %305, !llvm.loop !81

305:                                              ; preds = %301
  %306 = add nsw i32 %4, 3
  %307 = sext i32 %306 to i64
  %308 = shl nsw i64 %307, 1
  %309 = trunc i64 %308 to i32
  %310 = tail call ptr @x264_malloc(i32 noundef %309) #11
  %311 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 64
  store ptr %310, ptr %311, align 8, !tbaa !82
  %312 = icmp eq ptr %310, null
  br i1 %312, label %372, label %313

313:                                              ; preds = %305
  %314 = load i32, ptr %65, align 4, !tbaa !46
  %315 = icmp slt i32 %314, -1
  br i1 %315, label %337, label %316

316:                                              ; preds = %313, %332
  %317 = phi i32 [ %334, %332 ], [ %314, %313 ]
  %318 = phi i64 [ %335, %332 ], [ 0, %313 ]
  %319 = icmp slt i32 %317, -1
  br i1 %319, label %320, label %327

320:                                              ; preds = %316
  %321 = sext i32 %317 to i64
  br label %332

322:                                              ; preds = %327
  %323 = add nuw nsw i64 %328, 1
  %324 = load i32, ptr %65, align 4, !tbaa !46
  %325 = sext i32 %324 to i64
  %326 = icmp sgt i64 %328, %325
  br i1 %326, label %332, label %327, !llvm.loop !83

327:                                              ; preds = %316, %322
  %328 = phi i64 [ %323, %322 ], [ 0, %316 ]
  %329 = tail call ptr @x264_malloc(i32 noundef %309) #11
  %330 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 46, i64 %318, i64 %328
  store ptr %329, ptr %330, align 8, !tbaa !47
  %331 = icmp eq ptr %329, null
  br i1 %331, label %372, label %322

332:                                              ; preds = %322, %320
  %333 = phi i64 [ %321, %320 ], [ %325, %322 ]
  %334 = phi i32 [ %317, %320 ], [ %324, %322 ]
  %335 = add nuw nsw i64 %318, 1
  %336 = icmp sgt i64 %318, %333
  br i1 %336, label %337, label %316, !llvm.loop !84

337:                                              ; preds = %332, %313
  %338 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 46
  %339 = load ptr, ptr %338, align 8, !tbaa !47
  %340 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 63
  store ptr %339, ptr %340, align 16, !tbaa !85
  tail call void @llvm.memset.p0.i64(ptr align 2 %339, i8 -1, i64 %308, i1 false)
  br label %341

341:                                              ; preds = %337, %236
  %342 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 14
  %343 = load i32, ptr %342, align 8, !tbaa !86
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %373, label %345

345:                                              ; preds = %341
  %346 = load i32, ptr %3, align 16, !tbaa !6
  %347 = shl i32 %346, 2
  %348 = tail call ptr @x264_malloc(i32 noundef %347) #11
  %349 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 60
  store ptr %348, ptr %349, align 8, !tbaa !87
  %350 = icmp eq ptr %348, null
  br i1 %350, label %372, label %351

351:                                              ; preds = %345
  %352 = load i32, ptr %3, align 16, !tbaa !6
  %353 = shl i32 %352, 2
  %354 = tail call ptr @x264_malloc(i32 noundef %353) #11
  %355 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 61
  store ptr %354, ptr %355, align 16, !tbaa !88
  %356 = icmp eq ptr %354, null
  br i1 %356, label %372, label %357

357:                                              ; preds = %351
  %358 = load i32, ptr %237, align 16, !tbaa !75
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %373, label %360

360:                                              ; preds = %357
  %361 = load i32, ptr %3, align 16, !tbaa !6
  %362 = shl i32 %361, 1
  %363 = add i32 %362, 6
  %364 = tail call ptr @x264_malloc(i32 noundef %363) #11
  %365 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 65
  store ptr %364, ptr %365, align 16, !tbaa !89
  %366 = icmp eq ptr %364, null
  br i1 %366, label %372, label %367

367:                                              ; preds = %360
  %368 = load i32, ptr %3, align 16, !tbaa !6
  %369 = add nsw i32 %368, 3
  %370 = sext i32 %369 to i64
  %371 = shl nsw i64 %370, 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %364, i8 0, i64 %371, i1 false)
  br label %373

372:                                              ; preds = %70, %97, %284, %291, %327, %360, %351, %345, %305, %240, %214, %206, %201, %194, %190, %183, %178, %173, %169, %165, %151, %127, %2
  tail call void @x264_free(ptr noundef %9) #11
  br label %373

373:                                              ; preds = %229, %210, %357, %367, %341, %372
  %374 = phi ptr [ null, %372 ], [ %9, %341 ], [ %9, %367 ], [ %9, %357 ], [ %9, %210 ], [ %9, %229 ]
  ret ptr %374
}

; Function Attrs: optsize
declare ptr @x264_malloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare void @x264_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_frame_delete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 39
  %3 = load i32, ptr %2, align 16, !tbaa !66
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %79

5:                                                ; preds = %1, %5
  %6 = phi i64 [ %9, %5 ], [ 0, %1 ]
  %7 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 34, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call void @x264_free(ptr noundef %8) #11
  %9 = add nuw nsw i64 %6, 1
  %10 = icmp eq i64 %9, 4
  br i1 %10, label %11, label %5, !llvm.loop !90

11:                                               ; preds = %5, %11
  %12 = phi i64 [ %15, %11 ], [ 0, %5 ]
  %13 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 35, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  tail call void @x264_free(ptr noundef %14) #11
  %15 = add nuw nsw i64 %12, 1
  %16 = icmp eq i64 %15, 4
  br i1 %16, label %17, label %11, !llvm.loop !91

17:                                               ; preds = %11, %19
  %18 = phi i64 [ %20, %19 ], [ 0, %11 ]
  br label %22

19:                                               ; preds = %22
  %20 = add nuw nsw i64 %18, 1
  %21 = icmp eq i64 %20, 18
  br i1 %21, label %28, label %17, !llvm.loop !92

22:                                               ; preds = %17, %22
  %23 = phi i64 [ 0, %17 ], [ %26, %22 ]
  %24 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 56, i64 %18, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  tail call void @x264_free(ptr noundef %25) #11
  %26 = add nuw nsw i64 %23, 1
  %27 = icmp eq i64 %26, 18
  br i1 %27, label %19, label %22, !llvm.loop !93

28:                                               ; preds = %19, %34
  %29 = phi i1 [ false, %34 ], [ true, %19 ]
  %30 = phi i64 [ 1, %34 ], [ 0, %19 ]
  br label %35

31:                                               ; preds = %34
  %32 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 64
  %33 = load ptr, ptr %32, align 8, !tbaa !82
  tail call void @x264_free(ptr noundef %33) #11
  br label %43

34:                                               ; preds = %35
  br i1 %29, label %28, label %31, !llvm.loop !94

35:                                               ; preds = %28, %35
  %36 = phi i64 [ 0, %28 ], [ %41, %35 ]
  %37 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 45, i64 %30, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !47
  tail call void @x264_free(ptr noundef %38) #11
  %39 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 47, i64 %30, i64 %36
  %40 = load ptr, ptr %39, align 8, !tbaa !47
  tail call void @x264_free(ptr noundef %40) #11
  %41 = add nuw nsw i64 %36, 1
  %42 = icmp eq i64 %41, 17
  br i1 %42, label %34, label %35, !llvm.loop !95

43:                                               ; preds = %31, %70
  %44 = phi i64 [ 0, %31 ], [ %71, %70 ]
  br label %73

45:                                               ; preds = %70
  %46 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 60
  %47 = load ptr, ptr %46, align 8, !tbaa !87
  tail call void @x264_free(ptr noundef %47) #11
  %48 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 61
  %49 = load ptr, ptr %48, align 16, !tbaa !88
  tail call void @x264_free(ptr noundef %49) #11
  %50 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 65
  %51 = load ptr, ptr %50, align 16, !tbaa !89
  tail call void @x264_free(ptr noundef %51) #11
  %52 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 58
  %53 = load ptr, ptr %52, align 8, !tbaa !70
  tail call void @x264_free(ptr noundef %53) #11
  %54 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 59
  %55 = load ptr, ptr %54, align 16, !tbaa !71
  tail call void @x264_free(ptr noundef %55) #11
  %56 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 41
  %57 = load ptr, ptr %56, align 16, !tbaa !67
  tail call void @x264_free(ptr noundef %57) #11
  %58 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 42
  %59 = load ptr, ptr %58, align 8, !tbaa !68
  tail call void @x264_free(ptr noundef %59) #11
  %60 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 43
  %61 = load ptr, ptr %60, align 16, !tbaa !47
  tail call void @x264_free(ptr noundef %61) #11
  %62 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 43, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !47
  tail call void @x264_free(ptr noundef %63) #11
  %64 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 44
  %65 = load ptr, ptr %64, align 16, !tbaa !69
  tail call void @x264_free(ptr noundef %65) #11
  %66 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 48
  %67 = load ptr, ptr %66, align 8, !tbaa !47
  tail call void @x264_free(ptr noundef %67) #11
  %68 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 48, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !47
  tail call void @x264_free(ptr noundef %69) #11
  br label %79

70:                                               ; preds = %73
  %71 = add nuw nsw i64 %44, 1
  %72 = icmp eq i64 %71, 18
  br i1 %72, label %45, label %43, !llvm.loop !96

73:                                               ; preds = %43, %73
  %74 = phi i64 [ 0, %43 ], [ %77, %73 ]
  %75 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 46, i64 %44, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !47
  tail call void @x264_free(ptr noundef %76) #11
  %77 = add nuw nsw i64 %74, 1
  %78 = icmp eq i64 %77, 18
  br i1 %78, label %70, label %73, !llvm.loop !97

79:                                               ; preds = %45, %1
  tail call void @x264_free(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @x264_frame_copy_picture(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.x264_picture_t, ptr %2, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !98
  %6 = trunc i32 %5 to i8
  switch i8 %6, label %7 [
    i8 4, label %8
    i8 1, label %8
  ]

7:                                                ; preds = %3
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str) #11
  br label %77

8:                                                ; preds = %3, %3
  %9 = and i32 %5, 255
  %10 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 1
  %11 = load <2 x i32>, ptr %2, align 8, !tbaa !43
  store <2 x i32> %11, ptr %10, align 4, !tbaa !43
  %12 = getelementptr inbounds %struct.x264_picture_t, ptr %2, i64 0, i32 4
  %13 = load i64, ptr %12, align 8, !tbaa !101
  %14 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 4
  store i64 %13, ptr %14, align 8, !tbaa !102
  %15 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 3
  store i64 %13, ptr %15, align 16, !tbaa !54
  %16 = getelementptr inbounds %struct.x264_picture_t, ptr %2, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !103
  %18 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 9
  store ptr %17, ptr %18, align 16, !tbaa !104
  %19 = getelementptr inbounds %struct.x264_picture_t, ptr %2, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !105
  %21 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 15
  store i32 %20, ptr %21, align 4, !tbaa !59
  %22 = icmp eq i32 %9, 4
  %23 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %24 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 6
  %26 = getelementptr inbounds %struct.x264_picture_t, ptr %2, i64 0, i32 7, i32 2, i64 0
  %27 = load i32, ptr %26, align 4, !tbaa !43
  %28 = load i32, ptr %23, align 4, !tbaa !38
  %29 = tail call i32 @llvm.abs.i32(i32 %27, i1 true)
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %43, label %45

31:                                               ; preds = %45
  %32 = xor i64 %70, 3
  %33 = select i1 %22, i64 %32, i64 %70
  %34 = and i64 %33, 4294967295
  %35 = getelementptr inbounds %struct.x264_picture_t, ptr %2, i64 0, i32 7, i32 2, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !43
  %37 = load i32, ptr %23, align 4, !tbaa !38
  %38 = ashr i32 %37, 1
  %39 = tail call i32 @llvm.abs.i32(i32 %36, i1 true)
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %45, !llvm.loop !106

41:                                               ; preds = %31
  %42 = icmp ult i64 %50, 2
  br label %43

43:                                               ; preds = %41, %8
  %44 = phi i1 [ true, %8 ], [ %42, %41 ]
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.1) #11
  br label %74

45:                                               ; preds = %8, %31
  %46 = phi i32 [ %38, %31 ], [ %28, %8 ]
  %47 = phi i32 [ 1, %31 ], [ 0, %8 ]
  %48 = phi i32 [ %36, %31 ], [ %27, %8 ]
  %49 = phi i64 [ %34, %31 ], [ 0, %8 ]
  %50 = phi i64 [ %70, %31 ], [ 0, %8 ]
  %51 = load i32, ptr %4, align 8, !tbaa !98
  %52 = and i32 %51, 4096
  %53 = icmp eq i32 %52, 0
  %54 = sub nsw i32 0, %48
  %55 = select i1 %53, i32 %48, i32 %54
  %56 = getelementptr inbounds %struct.x264_picture_t, ptr %2, i64 0, i32 7, i32 3, i64 %49
  %57 = load ptr, ptr %56, align 8, !tbaa !47
  %58 = load i32, ptr %24, align 8, !tbaa !39
  %59 = ashr i32 %58, %47
  %60 = add nsw i32 %59, -1
  %61 = mul nsw i32 %60, %48
  %62 = select i1 %53, i32 0, i32 %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %57, i64 %63
  %65 = load ptr, ptr %25, align 8, !tbaa !107
  %66 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 30, i64 %50
  %67 = load ptr, ptr %66, align 8, !tbaa !47
  %68 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 24, i64 %50
  %69 = load i32, ptr %68, align 4, !tbaa !43
  tail call void %65(ptr noundef %67, i32 noundef %69, ptr noundef %64, i32 noundef %55, i32 noundef %46, i32 noundef %59) #11
  %70 = add nuw nsw i64 %50, 1
  %71 = icmp eq i64 %70, 3
  br i1 %71, label %72, label %31, !llvm.loop !106

72:                                               ; preds = %45
  %73 = icmp ult i64 %50, 2
  br label %74

74:                                               ; preds = %72, %43
  %75 = phi i1 [ %44, %43 ], [ %73, %72 ]
  %76 = sext i1 %75 to i32
  br label %77

77:                                               ; preds = %74, %7
  %78 = phi i32 [ -1, %7 ], [ %76, %74 ]
  ret i32 %78
}

; Function Attrs: optsize
declare void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_expand_border(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = icmp eq i32 %2, 0
  %6 = zext i1 %5 to i32
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !108
  %9 = and i32 %8, %2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %66

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 23
  %13 = load i32, ptr %12, align 4, !tbaa !40
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %66

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %17 = icmp eq i32 %3, 0
  %18 = shl nsw i32 %2, 4
  %19 = add nsw i32 %18, -4
  %20 = or i1 %5, %17
  br label %21

21:                                               ; preds = %15, %61
  %22 = phi i64 [ 0, %15 ], [ %62, %61 ]
  %23 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 24, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !43
  %25 = load ptr, ptr %16, align 16, !tbaa !109
  %26 = getelementptr inbounds %struct.x264_sps_t, ptr %25, i64 0, i32 16
  %27 = load i32, ptr %26, align 4, !tbaa !110
  %28 = shl nsw i32 %27, 4
  %29 = icmp ne i64 %22, 0
  %30 = zext i1 %29 to i32
  %31 = ashr exact i32 %28, %30
  br i1 %17, label %39, label %32

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.x264_sps_t, ptr %25, i64 0, i32 17
  %34 = load i32, ptr %33, align 4, !tbaa !115
  %35 = sub nsw i32 %34, %2
  %36 = shl nsw i32 %35, 4
  %37 = load i32, ptr %7, align 4, !tbaa !108
  %38 = ashr i32 %36, %37
  br label %39

39:                                               ; preds = %21, %32
  %40 = phi i32 [ %38, %32 ], [ 16, %21 ]
  %41 = ashr i32 %40, %30
  %42 = lshr exact i32 32, %30
  %43 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 30, i64 %22
  %44 = load ptr, ptr %43, align 8, !tbaa !47
  %45 = mul nsw i32 %24, %19
  %46 = ashr exact i32 %45, %30
  %47 = tail call i32 @llvm.smax.i32(i32 %46, i32 0)
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %44, i64 %48
  %50 = load i32, ptr %7, align 4, !tbaa !108
  %51 = add nsw i32 %50, %30
  %52 = lshr i32 4, %51
  %53 = select i1 %20, i32 0, i32 %52
  %54 = add nsw i32 %41, %53
  %55 = icmp eq i32 %50, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %39
  %57 = shl nsw i32 %24, 1
  tail call fastcc void @plane_expand_border(ptr noundef %49, i32 noundef %57, i32 noundef %31, i32 noundef %54, i32 noundef %42, i32 noundef %42, i32 noundef %6, i32 noundef %3) #12
  %58 = sext i32 %24 to i64
  %59 = getelementptr inbounds i8, ptr %49, i64 %58
  tail call fastcc void @plane_expand_border(ptr noundef %59, i32 noundef %57, i32 noundef %31, i32 noundef %54, i32 noundef %42, i32 noundef %42, i32 noundef %6, i32 noundef %3) #12
  br label %61

60:                                               ; preds = %39
  tail call fastcc void @plane_expand_border(ptr noundef %49, i32 noundef %24, i32 noundef %31, i32 noundef %54, i32 noundef %42, i32 noundef %42, i32 noundef %6, i32 noundef %3) #12
  br label %61

61:                                               ; preds = %60, %56
  %62 = add nuw nsw i64 %22, 1
  %63 = load i32, ptr %12, align 4, !tbaa !40
  %64 = sext i32 %63 to i64
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %21, label %66, !llvm.loop !116

66:                                               ; preds = %61, %11, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @plane_expand_border(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #5 {
  %9 = icmp sgt i32 %3, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %8
  %11 = sub nsw i32 0, %4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %0, i64 %12
  %14 = zext nneg i32 %4 to i64
  %15 = sext i32 %2 to i64
  %16 = getelementptr i8, ptr %0, i64 %15
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = sext i32 %1 to i64
  %19 = zext nneg i32 %3 to i64
  br label %33

20:                                               ; preds = %33, %8
  %21 = icmp ne i32 %6, 0
  %22 = icmp sgt i32 %5, 0
  %23 = and i1 %21, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %20
  %25 = sub nsw i32 0, %4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %0, i64 %26
  %28 = shl nuw nsw i32 %4, 1
  %29 = add nsw i32 %28, %2
  %30 = sext i32 %29 to i64
  %31 = sext i32 %1 to i64
  %32 = zext nneg i32 %5 to i64
  br label %44

33:                                               ; preds = %10, %33
  %34 = phi i64 [ 0, %10 ], [ %42, %33 ]
  %35 = mul nsw i64 %34, %18
  %36 = getelementptr inbounds i8, ptr %13, i64 %35
  %37 = getelementptr inbounds i8, ptr %0, i64 %35
  %38 = load i8, ptr %37, align 1, !tbaa !117
  tail call void @llvm.memset.p0.i64(ptr align 1 %36, i8 %38, i64 %14, i1 false)
  %39 = getelementptr inbounds i8, ptr %16, i64 %35
  %40 = getelementptr inbounds i8, ptr %17, i64 %35
  %41 = load i8, ptr %40, align 1, !tbaa !117
  tail call void @llvm.memset.p0.i64(ptr align 1 %39, i8 %41, i64 %14, i1 false)
  %42 = add nuw nsw i64 %34, 1
  %43 = icmp eq i64 %42, %19
  br i1 %43, label %20, label %33, !llvm.loop !118

44:                                               ; preds = %24, %44
  %45 = phi i64 [ 0, %24 ], [ %49, %44 ]
  %46 = xor i64 %45, -1
  %47 = mul nsw i64 %46, %31
  %48 = getelementptr inbounds i8, ptr %27, i64 %47
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %48, ptr align 1 %27, i64 %30, i1 false)
  %49 = add nuw nsw i64 %45, 1
  %50 = icmp eq i64 %49, %32
  br i1 %50, label %51, label %44, !llvm.loop !119

51:                                               ; preds = %44, %20
  %52 = icmp ne i32 %7, 0
  %53 = and i1 %52, %22
  br i1 %53, label %54, label %75

54:                                               ; preds = %51
  %55 = sub nsw i32 0, %4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %0, i64 %56
  %58 = add nsw i32 %3, -1
  %59 = mul nsw i32 %58, %1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %57, i64 %60
  %62 = shl nuw nsw i32 %4, 1
  %63 = add nsw i32 %62, %2
  %64 = sext i32 %63 to i64
  %65 = sext i32 %3 to i64
  %66 = sext i32 %1 to i64
  %67 = zext nneg i32 %5 to i64
  br label %68

68:                                               ; preds = %54, %68
  %69 = phi i64 [ 0, %54 ], [ %73, %68 ]
  %70 = add nsw i64 %69, %65
  %71 = mul nsw i64 %70, %66
  %72 = getelementptr inbounds i8, ptr %57, i64 %71
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %72, ptr align 1 %61, i64 %64, i1 false)
  %73 = add nuw nsw i64 %69, 1
  %74 = icmp eq i64 %73, %67
  br i1 %74, label %75, label %68, !llvm.loop !120

75:                                               ; preds = %68, %51
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_expand_border_filtered(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
  %5 = icmp eq i32 %2, 0
  %6 = zext i1 %5 to i32
  %7 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 24
  %8 = load i32, ptr %7, align 8, !tbaa !43
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %10 = load ptr, ptr %9, align 16, !tbaa !109
  %11 = getelementptr inbounds %struct.x264_sps_t, ptr %10, i64 0, i32 16
  %12 = load i32, ptr %11, align 4, !tbaa !110
  %13 = shl nsw i32 %12, 4
  %14 = or disjoint i32 %13, 8
  %15 = icmp eq i32 %3, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.x264_sps_t, ptr %10, i64 0, i32 17
  %18 = load i32, ptr %17, align 4, !tbaa !115
  %19 = sub nsw i32 %18, %2
  %20 = shl nsw i32 %19, 4
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %22 = load i32, ptr %21, align 4, !tbaa !108
  %23 = ashr i32 %20, %22
  %24 = add nsw i32 %23, 16
  br label %25

25:                                               ; preds = %4, %16
  %26 = phi i32 [ %24, %16 ], [ 16, %4 ]
  %27 = shl nsw i32 %2, 4
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %29 = shl nsw i32 %8, 1
  %30 = sext i32 %8 to i64
  br label %32

31:                                               ; preds = %47
  ret void

32:                                               ; preds = %25, %47
  %33 = phi i64 [ 1, %25 ], [ %48, %47 ]
  %34 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 31, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !47
  %36 = load i32, ptr %28, align 4, !tbaa !108
  %37 = shl i32 -8, %36
  %38 = add i32 %37, %27
  %39 = mul nsw i32 %38, %8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %35, i64 %40
  %42 = getelementptr inbounds i8, ptr %41, i64 -4
  %43 = icmp eq i32 %36, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %32
  tail call fastcc void @plane_expand_border(ptr noundef nonnull %42, i32 noundef %29, i32 noundef %14, i32 noundef %26, i32 noundef 28, i32 noundef 24, i32 noundef %6, i32 noundef %3) #12
  %45 = getelementptr inbounds i8, ptr %42, i64 %30
  tail call fastcc void @plane_expand_border(ptr noundef nonnull %45, i32 noundef %29, i32 noundef %14, i32 noundef %26, i32 noundef 28, i32 noundef 24, i32 noundef %6, i32 noundef %3) #12
  br label %47

46:                                               ; preds = %32
  tail call fastcc void @plane_expand_border(ptr noundef nonnull %42, i32 noundef %8, i32 noundef %14, i32 noundef %26, i32 noundef 28, i32 noundef 24, i32 noundef %6, i32 noundef %3) #12
  br label %47

47:                                               ; preds = %46, %44
  %48 = add nuw nsw i64 %33, 1
  %49 = icmp eq i64 %48, 4
  br i1 %49, label %31, label %32, !llvm.loop !121
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_expand_border_lowres(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 27
  %3 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 28
  %4 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 29
  br label %6

5:                                                ; preds = %6
  ret void

6:                                                ; preds = %1, %6
  %7 = phi i64 [ 0, %1 ], [ %13, %6 ]
  %8 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 32, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = load i32, ptr %2, align 4, !tbaa !77
  %11 = load i32, ptr %3, align 16, !tbaa !76
  %12 = load i32, ptr %4, align 4, !tbaa !78
  tail call fastcc void @plane_expand_border(ptr noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef 32, i32 noundef 32, i32 noundef 1, i32 noundef 1) #12
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, 4
  br i1 %14, label %5, label %6, !llvm.loop !122
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_expand_border_mod16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 23
  %4 = load i32, ptr %3, align 4, !tbaa !40
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
  %16 = load i32, ptr %7, align 4, !tbaa !38
  %17 = ashr i32 %16, %15
  %18 = load i32, ptr %8, align 8, !tbaa !39
  %19 = ashr i32 %18, %15
  %20 = load ptr, ptr %9, align 16, !tbaa !109
  %21 = getelementptr inbounds %struct.x264_sps_t, ptr %20, i64 0, i32 16
  %22 = load i32, ptr %21, align 4, !tbaa !110
  %23 = shl nsw i32 %22, 4
  %24 = sub nsw i32 %23, %16
  %25 = ashr i32 %24, %15
  %26 = getelementptr inbounds %struct.x264_sps_t, ptr %20, i64 0, i32 17
  %27 = load i32, ptr %26, align 4, !tbaa !115
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
  %40 = load ptr, ptr %35, align 8, !tbaa !47
  %41 = load i32, ptr %36, align 4, !tbaa !43
  %42 = mul nsw i32 %41, %39
  %43 = add nsw i32 %42, %17
  %44 = sext i32 %43 to i64
  %45 = getelementptr i8, ptr %40, i64 %44
  %46 = getelementptr i8, ptr %45, i64 -1
  %47 = load i8, ptr %46, align 1, !tbaa !117
  tail call void @llvm.memset.p0.i64(ptr align 1 %45, i8 %47, i64 %37, i1 false)
  %48 = add nuw nsw i32 %39, 1
  %49 = icmp eq i32 %48, %19
  br i1 %49, label %50, label %38, !llvm.loop !123

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
  %62 = load ptr, ptr %56, align 8, !tbaa !47
  %63 = load i32, ptr %57, align 4, !tbaa !43
  %64 = mul nsw i32 %63, %61
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %62, i64 %65
  %67 = load i32, ptr %10, align 8, !tbaa !36
  %68 = xor i32 %67, -1
  %69 = or i32 %61, %68
  %70 = add i32 %69, %19
  %71 = mul nsw i32 %70, %63
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %62, i64 %72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %66, ptr align 1 %73, i64 %59, i1 false)
  %74 = add nsw i32 %61, 1
  %75 = icmp slt i32 %74, %53
  br i1 %75, label %60, label %76, !llvm.loop !124

76:                                               ; preds = %60, %52, %50
  %77 = add nuw nsw i64 %13, 1
  %78 = load i32, ptr %3, align 4, !tbaa !40
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %12, label %11, !llvm.loop !125
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @x264_frame_cond_broadcast(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 76
  store i32 %1, ptr %3, align 8, !tbaa !57
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local void @x264_frame_cond_wait(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 76
  %4 = load i32, ptr %3, align 8, !tbaa !57
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %6, label %7, !llvm.loop !126

6:                                                ; preds = %2, %6
  br label %6

7:                                                ; preds = %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @x264_frame_push(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i64 [ %8, %3 ], [ 0, %2 ]
  %5 = getelementptr inbounds ptr, ptr %0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  %8 = add nuw i64 %4, 1
  br i1 %7, label %9, label %3, !llvm.loop !127

9:                                                ; preds = %3
  %10 = getelementptr inbounds ptr, ptr %0, i64 %4
  store ptr %1, ptr %10, align 8, !tbaa !47
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local ptr @x264_frame_pop(ptr nocapture noundef %0) local_unnamed_addr #5 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ %4, %2 ], [ 0, %1 ]
  %4 = add nuw nsw i64 %3, 1
  %5 = getelementptr inbounds ptr, ptr %0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %2, !llvm.loop !128

8:                                                ; preds = %2
  %9 = and i64 %3, 4294967295
  %10 = getelementptr inbounds ptr, ptr %0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  store ptr null, ptr %10, align 8, !tbaa !47
  ret ptr %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @x264_frame_unshift(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i64 [ %8, %3 ], [ 0, %2 ]
  %5 = getelementptr inbounds ptr, ptr %0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  %8 = add nuw i64 %4, 1
  br i1 %7, label %9, label %3, !llvm.loop !129

9:                                                ; preds = %3
  %10 = and i64 %4, 4294967295
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ %14, %12 ], [ %4, %9 ]
  %14 = add nsw i64 %13, -1
  %15 = getelementptr inbounds ptr, ptr %0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = getelementptr inbounds ptr, ptr %0, i64 %13
  store ptr %16, ptr %17, align 8, !tbaa !47
  %18 = icmp eq i64 %14, 0
  br i1 %18, label %19, label %12, !llvm.loop !130

19:                                               ; preds = %12, %9
  store ptr %1, ptr %0, align 8, !tbaa !47
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @x264_frame_shift(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !47
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1, %4
  %5 = phi i64 [ %7, %4 ], [ 0, %1 ]
  %6 = phi ptr [ %8, %4 ], [ %0, %1 ]
  %7 = add nuw nsw i64 %5, 1
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  store ptr %9, ptr %6, align 8, !tbaa !47
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !llvm.loop !131

11:                                               ; preds = %4, %1
  ret ptr %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_push_unused(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 78
  %4 = load i32, ptr %3, align 16, !tbaa !132
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr %3, align 16, !tbaa !132
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 17
  %9 = load i8, ptr %8, align 4, !tbaa !58
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 1, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  tail call void @x264_frame_push(ptr noundef %12, ptr noundef nonnull %1) #12
  br label %13

13:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @x264_frame_pop_unused(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 1, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @x264_frame_pop(ptr noundef nonnull %5) #12
  br label %12

10:                                               ; preds = %2
  %11 = tail call ptr @x264_frame_new(ptr noundef nonnull %0, i32 noundef %1) #12
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %9, %8 ], [ %11, %10 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.x264_frame, ptr %13, i64 0, i32 18
  store i8 0, ptr %16, align 1, !tbaa !133
  %17 = getelementptr inbounds %struct.x264_frame, ptr %13, i64 0, i32 78
  store i32 1, ptr %17, align 16, !tbaa !132
  %18 = getelementptr inbounds %struct.x264_frame, ptr %13, i64 0, i32 62
  store i32 0, ptr %18, align 8, !tbaa !134
  %19 = getelementptr inbounds %struct.x264_frame, ptr %13, i64 0, i32 66
  store i32 1, ptr %19, align 8, !tbaa !135
  %20 = getelementptr inbounds %struct.x264_frame, ptr %13, i64 0, i32 16
  store i32 0, ptr %20, align 16, !tbaa !136
  %21 = getelementptr inbounds %struct.x264_frame, ptr %13, i64 0, i32 37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3072) %21, i8 0, i64 3072, i1 false)
  %22 = getelementptr inbounds %struct.x264_frame, ptr %13, i64 0, i32 67
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %22, i8 0, i64 72, i1 false)
  br label %23

23:                                               ; preds = %12, %15
  ret ptr %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_push_blank_unused(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 78
  %4 = load i32, ptr %3, align 16, !tbaa !132
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr %3, align 16, !tbaa !132
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !137
  tail call void @x264_frame_push(ptr noundef %9, ptr noundef nonnull %1) #12
  br label %10

10:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @x264_frame_pop_blank_unused(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !137
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @x264_frame_pop(ptr noundef nonnull %3) #12
  br label %10

8:                                                ; preds = %1
  %9 = tail call ptr @x264_malloc(i32 noundef 15632) #11
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %7, %6 ], [ %9, %8 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.x264_frame, ptr %11, i64 0, i32 39
  store i32 1, ptr %14, align 16, !tbaa !66
  %15 = getelementptr inbounds %struct.x264_frame, ptr %11, i64 0, i32 78
  store i32 1, ptr %15, align 16, !tbaa !132
  br label %16

16:                                               ; preds = %10, %13
  ret ptr %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_frame_sort(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds ptr, ptr %0, i64 1
  %4 = icmp eq i32 %1, 0
  br label %5

5:                                                ; preds = %8, %2
  %6 = load ptr, ptr %3, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %43, label %10

8:                                                ; preds = %36
  %9 = icmp eq i32 %37, 0
  br i1 %9, label %5, label %43, !llvm.loop !138

10:                                               ; preds = %5, %36
  %11 = phi i64 [ %42, %36 ], [ 0, %5 ]
  %12 = phi i64 [ %38, %36 ], [ 1, %5 ]
  %13 = phi ptr [ %40, %36 ], [ %6, %5 ]
  %14 = phi ptr [ %39, %36 ], [ %3, %5 ]
  %15 = phi i32 [ %37, %36 ], [ 1, %5 ]
  %16 = getelementptr inbounds ptr, ptr %0, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = getelementptr inbounds %struct.x264_frame, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !52
  %20 = getelementptr inbounds %struct.x264_frame, ptr %13, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !52
  %22 = getelementptr inbounds %struct.x264_frame, ptr %17, i64 0, i32 10
  %23 = load i32, ptr %22, align 8, !tbaa !55
  %24 = getelementptr inbounds %struct.x264_frame, ptr %13, i64 0, i32 10
  %25 = load i32, ptr %24, align 8, !tbaa !55
  %26 = sub nsw i32 %23, %25
  br i1 %4, label %29, label %27

27:                                               ; preds = %10
  %28 = icmp sgt i32 %19, %21
  br i1 %28, label %35, label %31

29:                                               ; preds = %10
  %30 = icmp sgt i32 %26, 0
  br i1 %30, label %35, label %36

31:                                               ; preds = %27
  %32 = icmp eq i32 %19, %21
  %33 = icmp sgt i32 %26, 0
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %27, %31
  store ptr %13, ptr %16, align 8, !tbaa !47
  store ptr %17, ptr %14, align 8, !tbaa !47
  br label %36

36:                                               ; preds = %29, %35, %31
  %37 = phi i32 [ 0, %35 ], [ %15, %31 ], [ %15, %29 ]
  %38 = add nuw nsw i64 %12, 1
  %39 = getelementptr inbounds ptr, ptr %0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !47
  %41 = icmp eq ptr %40, null
  %42 = add nuw nsw i64 %11, 1
  br i1 %41, label %8, label %10, !llvm.loop !139

43:                                               ; preds = %5, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  br i1 %27, label %17, label %38, !llvm.loop !140

28:                                               ; preds = %21, %28
  %29 = phi i64 [ 0, %21 ], [ %35, %28 ]
  %30 = load ptr, ptr %12, align 16, !tbaa !141
  %31 = getelementptr inbounds ptr, ptr %30, i64 4
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  %33 = getelementptr inbounds i8, ptr %18, i64 %29
  %34 = getelementptr inbounds i8, ptr %20, i64 %29
  tail call void %32(ptr noundef %33, i32 noundef %2, ptr noundef %34, i32 noundef %4, ptr noundef %7, i32 noundef %22) #11
  %35 = add nuw i64 %29, 16
  %36 = trunc i64 %35 to i32
  %37 = icmp slt i32 %36, %5
  br i1 %37, label %28, label %23, !llvm.loop !143

38:                                               ; preds = %23, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_frame_delete_list(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3, %6
  %7 = phi i64 [ %9, %6 ], [ 0, %3 ]
  %8 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %9 = add nuw i64 %7, 1
  tail call void @x264_frame_delete(ptr noundef nonnull %8) #12
  %10 = getelementptr inbounds ptr, ptr %0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !144

13:                                               ; preds = %6, %3
  tail call void @x264_free(ptr noundef nonnull %0) #11
  br label %14

14:                                               ; preds = %1, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @x264_synch_frame_list_init(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.x264_synch_frame_list_t, ptr %0, i64 0, i32 1
  store i32 %1, ptr %5, align 8, !tbaa !145
  %6 = getelementptr inbounds %struct.x264_synch_frame_list_t, ptr %0, i64 0, i32 2
  store i32 0, ptr %6, align 4, !tbaa !147
  %7 = add nuw nsw i32 %1, 1
  %8 = zext nneg i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = trunc i64 %9 to i32
  %11 = tail call ptr @x264_malloc(i32 noundef %10) #11
  store ptr %11, ptr %0, align 8, !tbaa !148
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %11, i8 0, i64 %9, i1 false)
  br label %14

14:                                               ; preds = %4, %2, %13
  %15 = phi i32 [ 0, %13 ], [ -1, %2 ], [ -1, %4 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_synch_frame_list_delete(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !148
  tail call void @x264_frame_delete_list(ptr noundef %2) #12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_synch_frame_list_push(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.x264_synch_frame_list_t, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !147
  %5 = getelementptr inbounds %struct.x264_synch_frame_list_t, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !145
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %9, !llvm.loop !149

8:                                                ; preds = %2, %8
  br label %8

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !148
  %11 = add nsw i32 %4, 1
  store i32 %11, ptr %3, align 4, !tbaa !147
  %12 = sext i32 %4 to i64
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  store ptr %1, ptr %13, align 8, !tbaa !47
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !9, i64 16368}
!7 = !{!"x264_t", !8, i64 0, !10, i64 704, !9, i64 1736, !9, i64 1740, !9, i64 1744, !9, i64 1748, !9, i64 1752, !17, i64 1760, !13, i64 1832, !9, i64 1840, !9, i64 1844, !9, i64 1848, !9, i64 1852, !9, i64 1856, !9, i64 1860, !9, i64 1864, !9, i64 1868, !9, i64 1872, !9, i64 1876, !9, i64 1880, !9, i64 1884, !9, i64 1888, !9, i64 1892, !10, i64 1896, !13, i64 3200, !10, i64 3208, !13, i64 3328, !9, i64 3336, !9, i64 3340, !10, i64 3344, !10, i64 3376, !10, i64 3392, !10, i64 3424, !10, i64 3440, !10, i64 3472, !10, i64 3488, !10, i64 3520, !10, i64 3536, !10, i64 4272, !13, i64 7216, !20, i64 7232, !21, i64 13904, !22, i64 14416, !13, i64 14680, !13, i64 14688, !9, i64 14696, !10, i64 14704, !9, i64 14856, !10, i64 14864, !10, i64 15016, !9, i64 15024, !9, i64 15028, !19, i64 15032, !23, i64 15040, !24, i64 16368, !13, i64 26704, !27, i64 26712, !10, i64 30400, !10, i64 30912, !10, i64 31168, !13, i64 31176, !10, i64 31184, !10, i64 31232, !10, i64 31248, !10, i64 31304, !10, i64 31360, !10, i64 31456, !13, i64 31552, !30, i64 31560, !31, i64 32616, !32, i64 32912, !33, i64 33032, !34, i64 33080, !35, i64 33256, !13, i64 33328}
!8 = !{!"x264_param_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !12, i64 44, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !13, i64 152, !10, i64 160, !10, i64 176, !10, i64 192, !10, i64 208, !10, i64 224, !10, i64 288, !13, i64 352, !13, i64 360, !9, i64 368, !9, i64 372, !13, i64 376, !14, i64 384, !16, i64 488, !9, i64 632, !9, i64 636, !9, i64 640, !9, i64 644, !9, i64 648, !9, i64 652, !9, i64 656, !9, i64 660, !9, i64 664, !9, i64 668, !9, i64 672, !9, i64 676, !9, i64 680, !9, i64 684, !9, i64 688, !9, i64 692, !13, i64 696}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32}
!13 = !{!"any pointer", !10, i64 0}
!14 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !15, i64 72, !15, i64 76, !9, i64 80, !10, i64 84, !9, i64 92, !9, i64 96}
!15 = !{!"float", !10, i64 0}
!16 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !9, i64 36, !9, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !9, i64 56, !15, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !13, i64 80, !9, i64 88, !13, i64 96, !15, i64 104, !15, i64 108, !15, i64 112, !13, i64 120, !9, i64 128, !13, i64 136}
!17 = !{!"", !9, i64 0, !9, i64 4, !13, i64 8, !9, i64 16, !13, i64 24, !18, i64 32}
!18 = !{!"bs_s", !13, i64 0, !13, i64 8, !13, i64 16, !19, i64 24, !9, i64 32, !9, i64 36}
!19 = !{!"long", !10, i64 0}
!20 = !{!"", !13, i64 0, !13, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !10, i64 60, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !10, i64 96, !10, i64 352, !9, i64 6496, !9, i64 6500, !10, i64 6504, !9, i64 6632, !9, i64 6636, !9, i64 6640, !9, i64 6644, !9, i64 6648, !9, i64 6652, !9, i64 6656, !9, i64 6660}
!21 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !13, i64 16, !13, i64 24, !13, i64 32, !9, i64 48, !10, i64 52}
!22 = !{!"", !13, i64 0, !10, i64 8, !13, i64 24, !10, i64 32, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188, !9, i64 192, !9, i64 196, !9, i64 200, !19, i64 208, !19, i64 216, !10, i64 224, !19, i64 240, !19, i64 248, !9, i64 256, !9, i64 260}
!23 = !{!"", !10, i64 0, !10, i64 32, !10, i64 48, !10, i64 560}
!24 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !9, i64 120, !10, i64 124, !10, i64 140, !9, i64 204, !9, i64 208, !9, i64 212, !9, i64 216, !9, i64 220, !9, i64 224, !9, i64 228, !9, i64 232, !9, i64 236, !9, i64 240, !9, i64 244, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !10, i64 304, !10, i64 320, !10, i64 336, !10, i64 352, !13, i64 864, !13, i64 872, !13, i64 880, !10, i64 888, !9, i64 1016, !9, i64 1020, !10, i64 1024, !9, i64 1028, !9, i64 1032, !9, i64 1036, !9, i64 1040, !9, i64 1044, !9, i64 1048, !9, i64 1052, !9, i64 1056, !9, i64 1060, !25, i64 1072, !26, i64 8656, !9, i64 9424, !9, i64 9428, !9, i64 9432, !9, i64 9436, !9, i64 9440, !9, i64 9444, !9, i64 9448, !9, i64 9452, !10, i64 9456, !9, i64 9472, !9, i64 9476, !10, i64 9480, !13, i64 9992, !10, i64 10000, !13, i64 10256, !10, i64 10264, !9, i64 10284, !10, i64 10288}
!25 = !{!"", !10, i64 0, !10, i64 384, !10, i64 1248, !10, i64 1504, !10, i64 1760, !10, i64 2144, !10, i64 2624, !10, i64 2640, !9, i64 2656, !9, i64 2660, !10, i64 2672, !10, i64 3184, !10, i64 3696, !10, i64 3776, !10, i64 3904, !10, i64 3928, !10, i64 3952, !10, i64 3976, !10, i64 3984, !10, i64 7056, !10, i64 7312, !10, i64 7568}
!26 = !{!"", !10, i64 0, !10, i64 48, !10, i64 96, !10, i64 176, !10, i64 496, !10, i64 656, !10, i64 696, !10, i64 728, !9, i64 736, !10, i64 740, !9, i64 744, !9, i64 748, !9, i64 752, !9, i64 756}
!27 = !{!"", !28, i64 0, !10, i64 704, !10, i64 728, !10, i64 768, !10, i64 808, !10, i64 880, !10, i64 920, !10, i64 960, !10, i64 1000, !10, i64 1040, !10, i64 1080, !10, i64 1120, !10, i64 1880, !10, i64 2152, !10, i64 2168, !10, i64 3192, !10, i64 3240, !10, i64 3656, !10, i64 3664, !10, i64 3672}
!28 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !10, i64 12, !9, i64 88, !9, i64 92, !9, i64 96, !10, i64 100, !10, i64 108, !10, i64 364, !10, i64 432, !10, i64 456, !10, i64 664, !10, i64 672, !29, i64 696}
!29 = !{!"double", !10, i64 0}
!30 = !{!"", !10, i64 0, !10, i64 56, !10, i64 112, !10, i64 168, !10, i64 224, !10, i64 256, !10, i64 312, !10, i64 368, !10, i64 424, !10, i64 480, !10, i64 536, !13, i64 592, !10, i64 600, !10, i64 632, !13, i64 664, !13, i64 672, !10, i64 680, !10, i64 736, !10, i64 792, !10, i64 848, !10, i64 904, !13, i64 960, !13, i64 968, !13, i64 976, !13, i64 984, !13, i64 992, !13, i64 1000, !13, i64 1008, !13, i64 1016, !13, i64 1024, !13, i64 1032, !13, i64 1040, !13, i64 1048}
!31 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !10, i64 24, !10, i64 104, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288}
!32 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112}
!33 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40}
!34 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !10, i64 88, !10, i64 136}
!35 = !{!"", !10, i64 0, !10, i64 16, !10, i64 32, !10, i64 48, !13, i64 64}
!36 = !{!7, !9, i64 136}
!37 = !{!7, !9, i64 0}
!38 = !{!7, !9, i64 20}
!39 = !{!7, !9, i64 24}
!40 = !{!41, !9, i64 100}
!41 = !{!"x264_frame", !9, i64 0, !9, i64 4, !9, i64 8, !19, i64 16, !19, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !13, i64 48, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !10, i64 84, !10, i64 85, !10, i64 86, !15, i64 88, !15, i64 92, !9, i64 96, !9, i64 100, !10, i64 104, !10, i64 116, !10, i64 128, !9, i64 140, !9, i64 144, !9, i64 148, !10, i64 152, !10, i64 176, !10, i64 208, !13, i64 240, !10, i64 248, !10, i64 280, !10, i64 320, !10, i64 3392, !9, i64 3520, !13, i64 3528, !13, i64 3536, !13, i64 3544, !10, i64 3552, !13, i64 3568, !10, i64 3576, !10, i64 3848, !10, i64 6440, !10, i64 6712, !10, i64 6728, !10, i64 6736, !10, i64 6864, !10, i64 6868, !10, i64 8164, !9, i64 9460, !10, i64 9464, !10, i64 9536, !13, i64 12128, !13, i64 12136, !13, i64 12144, !13, i64 12152, !13, i64 12160, !9, i64 12168, !13, i64 12176, !13, i64 12184, !13, i64 12192, !9, i64 12200, !10, i64 12204, !9, i64 12276, !19, i64 12280, !42, i64 12288, !10, i64 12320, !10, i64 12572, !10, i64 13576, !9, i64 15584, !9, i64 15588, !9, i64 15592, !9, i64 15596, !9, i64 15600, !9, i64 15604, !9, i64 15608, !15, i64 15612, !9, i64 15616, !9, i64 15620, !9, i64 15624}
!42 = !{!"", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24}
!43 = !{!9, !9, i64 0}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!7, !9, i64 100}
!47 = !{!13, !13, i64 0}
!48 = distinct !{!48, !45}
!49 = distinct !{!49, !45}
!50 = distinct !{!50, !45}
!51 = !{!41, !9, i64 0}
!52 = !{!41, !9, i64 4}
!53 = !{!41, !9, i64 8}
!54 = !{!41, !19, i64 16}
!55 = !{!41, !9, i64 56}
!56 = !{!41, !9, i64 68}
!57 = !{!41, !9, i64 15592}
!58 = !{!41, !10, i64 84}
!59 = !{!41, !9, i64 76}
!60 = !{!41, !9, i64 64}
!61 = !{!41, !9, i64 15588}
!62 = !{!41, !9, i64 15584}
!63 = !{!41, !13, i64 3528}
!64 = !{!7, !9, i64 428}
!65 = distinct !{!65, !45}
!66 = !{!41, !9, i64 3520}
!67 = !{!41, !13, i64 3536}
!68 = !{!41, !13, i64 3544}
!69 = !{!41, !13, i64 3568}
!70 = !{!41, !13, i64 12136}
!71 = !{!41, !13, i64 12144}
!72 = !{!7, !9, i64 412}
!73 = !{!7, !9, i64 14676}
!74 = !{!41, !13, i64 240}
!75 = !{!7, !9, i64 14672}
!76 = !{!41, !9, i64 144}
!77 = !{!41, !9, i64 140}
!78 = !{!41, !9, i64 148}
!79 = distinct !{!79, !45}
!80 = distinct !{!80, !45}
!81 = distinct !{!81, !45}
!82 = !{!41, !13, i64 12184}
!83 = distinct !{!83, !45}
!84 = distinct !{!84, !45}
!85 = !{!41, !13, i64 12176}
!86 = !{!7, !9, i64 544}
!87 = !{!41, !13, i64 12152}
!88 = !{!41, !13, i64 12160}
!89 = !{!41, !13, i64 12192}
!90 = distinct !{!90, !45}
!91 = distinct !{!91, !45}
!92 = distinct !{!92, !45}
!93 = distinct !{!93, !45}
!94 = distinct !{!94, !45}
!95 = distinct !{!95, !45}
!96 = distinct !{!96, !45}
!97 = distinct !{!97, !45}
!98 = !{!99, !9, i64 40}
!99 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !19, i64 16, !19, i64 24, !13, i64 32, !100, i64 40, !42, i64 96, !13, i64 128}
!100 = !{!"", !9, i64 0, !9, i64 4, !10, i64 8, !10, i64 24}
!101 = !{!99, !19, i64 16}
!102 = !{!41, !19, i64 24}
!103 = !{!99, !13, i64 32}
!104 = !{!41, !13, i64 48}
!105 = !{!99, !9, i64 8}
!106 = distinct !{!106, !45}
!107 = !{!7, !13, i64 32784}
!108 = !{!7, !9, i64 7268}
!109 = !{!7, !13, i64 3200}
!110 = !{!111, !9, i64 1084}
!111 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !10, i64 52, !9, i64 1076, !9, i64 1080, !9, i64 1084, !9, i64 1088, !9, i64 1092, !9, i64 1096, !9, i64 1100, !9, i64 1104, !112, i64 1108, !9, i64 1124, !113, i64 1128, !9, i64 1296}
!112 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!113 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !114, i64 84, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164}
!114 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44}
!115 = !{!111, !9, i64 1088}
!116 = distinct !{!116, !45}
!117 = !{!10, !10, i64 0}
!118 = distinct !{!118, !45}
!119 = distinct !{!119, !45}
!120 = distinct !{!120, !45}
!121 = distinct !{!121, !45}
!122 = distinct !{!122, !45}
!123 = distinct !{!123, !45}
!124 = distinct !{!124, !45}
!125 = distinct !{!125, !45}
!126 = distinct !{!126, !45}
!127 = distinct !{!127, !45}
!128 = distinct !{!128, !45}
!129 = distinct !{!129, !45}
!130 = distinct !{!130, !45}
!131 = distinct !{!131, !45}
!132 = !{!41, !9, i64 15600}
!133 = !{!41, !10, i64 85}
!134 = !{!41, !9, i64 12168}
!135 = !{!41, !9, i64 12200}
!136 = !{!41, !9, i64 80}
!137 = !{!7, !13, i64 14440}
!138 = distinct !{!138, !45}
!139 = distinct !{!139, !45}
!140 = distinct !{!140, !45}
!141 = !{!142, !13, i64 48}
!142 = !{!"x264_weight_t", !10, i64 0, !10, i64 16, !9, i64 32, !9, i64 36, !9, i64 40, !13, i64 48}
!143 = distinct !{!143, !45}
!144 = distinct !{!144, !45}
!145 = !{!146, !9, i64 8}
!146 = !{!"", !13, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24}
!147 = !{!146, !9, i64 12}
!148 = !{!146, !13, i64 0}
!149 = distinct !{!149, !45}
