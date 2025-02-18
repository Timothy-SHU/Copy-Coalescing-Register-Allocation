; ModuleID = 'x264_src/common/macroblock.c'
source_filename = "x264_src/common/macroblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.x264_weight_t = type { [8 x i16], [8 x i16], i32, i32, i32, ptr, [8 x i8] }
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
%struct.x264_frame = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, float, float, i32, i32, [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, [3 x ptr], [4 x ptr], [4 x ptr], ptr, [4 x ptr], [4 x ptr], [8 x i8], [16 x [3 x %struct.x264_weight_t]], [16 x ptr], i32, ptr, ptr, ptr, [2 x ptr], ptr, [2 x [17 x ptr]], [18 x [18 x ptr]], [2 x [17 x ptr]], [2 x ptr], [2 x i32], [2 x [16 x i32]], [2 x i16], [18 x [18 x i32]], [18 x [18 x i32]], i32, [18 x i32], [18 x [18 x ptr]], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [18 x float], i32, i64, %struct.x264_hrd_t, [251 x i8], [251 x i32], [251 x double], i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32 }
%struct.x264_hrd_t = type { double, double, double, double }

@x264_scan8 = internal unnamed_addr constant [27 x i32] [i32 12, i32 13, i32 20, i32 21, i32 14, i32 15, i32 22, i32 23, i32 28, i32 29, i32 36, i32 37, i32 30, i32 31, i32 38, i32 39, i32 9, i32 10, i32 17, i32 18, i32 33, i32 34, i32 41, i32 42, i32 44, i32 46, i32 47], align 16
@x264_mb_type_fix = internal unnamed_addr constant [19 x i8] c"\00\00\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12", align 16
@x264_mb_pred_mode8x8c_fix = internal unnamed_addr constant [7 x i8] c"\00\01\02\03\00\00\00", align 1
@x264_size2pixel = internal unnamed_addr constant [5 x [5 x i8]] [[5 x i8] zeroinitializer, [5 x i8] c"\00\06\04\00\00", [5 x i8] c"\00\05\03\00\01", [5 x i8] zeroinitializer, [5 x i8] c"\00\00\02\00\00"], align 16
@weight_none = external constant [3 x %struct.x264_weight_t], align 16

; Function Attrs: nounwind uwtable
define dso_local void @x264_mb_mc_8x8(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = shl i32 %1, 1
  %4 = and i32 %3, 2
  %5 = and i32 %1, -2
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %7 = load i32, ptr %6, align 16, !tbaa !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !64
  switch i8 %12, label %37 [
    i8 3, label %13
    i8 1, label %14
    i8 2, label %16
    i8 0, label %18
  ]

13:                                               ; preds = %9
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef %0, i32 noundef %4, i32 noundef %5, i32 noundef 2, i32 noundef 2)
  br label %37

14:                                               ; preds = %9
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef %0, i32 noundef %4, i32 noundef %5, i32 noundef 2, i32 noundef 1)
  %15 = or i32 %1, 1
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef %0, i32 noundef %4, i32 noundef %15, i32 noundef 2, i32 noundef 1)
  br label %37

16:                                               ; preds = %9
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef %0, i32 noundef %4, i32 noundef %5, i32 noundef 1, i32 noundef 2)
  %17 = or disjoint i32 %4, 1
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef %0, i32 noundef %17, i32 noundef %5, i32 noundef 1, i32 noundef 2)
  br label %37

18:                                               ; preds = %9
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef %0, i32 noundef %4, i32 noundef %5, i32 noundef 1, i32 noundef 1)
  %19 = or disjoint i32 %4, 1
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef %0, i32 noundef %19, i32 noundef %5, i32 noundef 1, i32 noundef 1)
  %20 = or i32 %1, 1
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef %0, i32 noundef %4, i32 noundef %20, i32 noundef 1, i32 noundef 1)
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef %0, i32 noundef %19, i32 noundef %20, i32 noundef 1, i32 noundef 1)
  br label %37

21:                                               ; preds = %2
  %22 = shl nsw i32 %1, 3
  %23 = or disjoint i32 %4, %22
  %24 = or i32 %23, 12
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds [40 x i8], ptr %25, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !64
  %29 = icmp sgt i8 %28, -1
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 %26
  %32 = load i8, ptr %31, align 1, !tbaa !64
  %33 = icmp sgt i8 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef %0, i32 noundef %4, i32 noundef %5, i32 noundef 2, i32 noundef 2)
  br label %37

35:                                               ; preds = %30
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef %0, i32 noundef %4, i32 noundef %5, i32 noundef 2, i32 noundef 2)
  br label %37

36:                                               ; preds = %21
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef %0, i32 noundef %4, i32 noundef %5, i32 noundef 2, i32 noundef 2)
  br label %37

37:                                               ; preds = %36, %35, %34, %13, %14, %16, %18, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @x264_mb_mc_0xywh(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = add nuw nsw i32 %1, 12
  %7 = shl nsw i32 %2, 3
  %8 = add nsw i32 %6, %7
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds [40 x i8], ptr %9, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !64
  %13 = sext i8 %12 to i32
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4
  %15 = getelementptr inbounds [40 x [2 x i16]], ptr %14, i64 0, i64 %10
  %16 = load i16, ptr %15, align 4, !tbaa !65
  %17 = sext i16 %16 to i32
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 18
  %19 = load i32, ptr %18, align 8, !tbaa !67
  %20 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 19
  %21 = load i32, ptr %20, align 16, !tbaa !67
  %22 = icmp sgt i32 %19, %17
  %23 = tail call i32 @llvm.smin.i32(i32 %17, i32 %21)
  %24 = select i1 %22, i32 %19, i32 %23
  %25 = shl nuw nsw i32 %1, 4
  %26 = add nsw i32 %24, %25
  %27 = getelementptr inbounds [40 x [2 x i16]], ptr %14, i64 0, i64 %10, i64 1
  %28 = load i16, ptr %27, align 2, !tbaa !65
  %29 = sext i16 %28 to i32
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 18, i64 1
  %31 = load i32, ptr %30, align 4, !tbaa !67
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 19, i64 1
  %33 = load i32, ptr %32, align 4, !tbaa !67
  %34 = icmp sgt i32 %31, %29
  %35 = tail call i32 @llvm.smin.i32(i32 %29, i32 %33)
  %36 = select i1 %34, i32 %31, i32 %35
  %37 = shl nsw i32 %2, 4
  %38 = add nsw i32 %36, %37
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70
  %40 = load ptr, ptr %39, align 8, !tbaa !68
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %42 = load ptr, ptr %41, align 16, !tbaa !69
  %43 = shl nsw i32 %2, 7
  %44 = shl nuw nsw i32 %1, 2
  %45 = add nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %42, i64 %46
  %48 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20
  %49 = sext i8 %12 to i64
  %50 = getelementptr inbounds [32 x [6 x ptr]], ptr %48, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23
  %52 = load i32, ptr %51, align 16, !tbaa !67
  %53 = shl nuw nsw i32 %3, 2
  %54 = shl nuw nsw i32 %4, 2
  %55 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 %49
  tail call void %40(ptr noundef %47, i32 noundef 32, ptr noundef nonnull %50, i32 noundef %52, i32 noundef %26, i32 noundef %38, i32 noundef %53, i32 noundef %54, ptr noundef nonnull %55) #13
  %56 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %57 = load i32, ptr %56, align 4, !tbaa !70
  %58 = and i32 %57, %13
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %5
  %61 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %62 = load i32, ptr %61, align 4, !tbaa !71
  %63 = shl i32 %62, 2
  %64 = and i32 %63, 4
  %65 = add i32 %38, -2
  %66 = add i32 %65, %64
  br label %67

67:                                               ; preds = %60, %5
  %68 = phi i32 [ %66, %60 ], [ %38, %5 ]
  %69 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !72
  %71 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !69
  %73 = shl nsw i32 %2, 6
  %74 = shl nuw nsw i32 %1, 1
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, ptr %72, i64 %76
  %78 = getelementptr inbounds [32 x [6 x ptr]], ptr %48, i64 0, i64 %49, i64 4
  %79 = load ptr, ptr %78, align 16, !tbaa !69
  %80 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23, i64 1
  %81 = load i32, ptr %80, align 4, !tbaa !67
  %82 = shl nuw nsw i32 %3, 1
  %83 = shl nuw nsw i32 %4, 1
  tail call void %70(ptr noundef %77, i32 noundef 32, ptr noundef %79, i32 noundef %81, i32 noundef %26, i32 noundef %68, i32 noundef %82, i32 noundef %83) #13
  %84 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 %49, i64 1, i32 5
  %85 = load ptr, ptr %84, align 16, !tbaa !73
  %86 = icmp eq ptr %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %67
  %88 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 %49, i64 1
  %89 = lshr i32 %3, 1
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds ptr, ptr %85, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !69
  %93 = load ptr, ptr %71, align 8, !tbaa !69
  %94 = getelementptr inbounds i8, ptr %93, i64 %76
  tail call void %92(ptr noundef %94, i32 noundef 32, ptr noundef %94, i32 noundef 32, ptr noundef nonnull %88, i32 noundef %83) #13
  br label %95

95:                                               ; preds = %87, %67
  %96 = load ptr, ptr %69, align 8, !tbaa !72
  %97 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %98 = load ptr, ptr %97, align 16, !tbaa !69
  %99 = getelementptr inbounds i8, ptr %98, i64 %76
  %100 = getelementptr inbounds [32 x [6 x ptr]], ptr %48, i64 0, i64 %49, i64 5
  %101 = load ptr, ptr %100, align 8, !tbaa !69
  %102 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23, i64 2
  %103 = load i32, ptr %102, align 8, !tbaa !67
  tail call void %96(ptr noundef %99, i32 noundef 32, ptr noundef %101, i32 noundef %103, i32 noundef %26, i32 noundef %68, i32 noundef %82, i32 noundef %83) #13
  %104 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 %49, i64 2, i32 5
  %105 = load ptr, ptr %104, align 16, !tbaa !73
  %106 = icmp eq ptr %105, null
  br i1 %106, label %115, label %107

107:                                              ; preds = %95
  %108 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 %49, i64 2
  %109 = lshr i32 %3, 1
  %110 = zext nneg i32 %109 to i64
  %111 = getelementptr inbounds ptr, ptr %105, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !69
  %113 = load ptr, ptr %97, align 16, !tbaa !69
  %114 = getelementptr inbounds i8, ptr %113, i64 %76
  tail call void %112(ptr noundef %114, i32 noundef 32, ptr noundef %114, i32 noundef 32, ptr noundef nonnull %108, i32 noundef %83) #13
  br label %115

115:                                              ; preds = %107, %95
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @x264_mb_mc_01xywh(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [256 x i8], align 16
  %9 = alloca [256 x i8], align 16
  %10 = add nuw nsw i32 %1, 12
  %11 = shl nsw i32 %2, 3
  %12 = add nsw i32 %10, %11
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds [40 x i8], ptr %13, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !64
  %17 = sext i8 %16 to i32
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 %14
  %19 = load i8, ptr %18, align 1, !tbaa !64
  %20 = sext i8 %19 to i32
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 82
  %22 = load ptr, ptr %21, align 16, !tbaa !75
  %23 = sext i8 %16 to i64
  %24 = sext i8 %19 to i64
  %25 = getelementptr inbounds [4 x i8], ptr %22, i64 %23, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !64
  %27 = sext i8 %26 to i32
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4
  %29 = getelementptr inbounds [40 x [2 x i16]], ptr %28, i64 0, i64 %14
  %30 = load i16, ptr %29, align 4, !tbaa !65
  %31 = sext i16 %30 to i32
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 18
  %33 = load i32, ptr %32, align 8, !tbaa !67
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 19
  %35 = load i32, ptr %34, align 16, !tbaa !67
  %36 = icmp sgt i32 %33, %31
  %37 = tail call i32 @llvm.smin.i32(i32 %31, i32 %35)
  %38 = select i1 %36, i32 %33, i32 %37
  %39 = shl nuw nsw i32 %1, 4
  %40 = add nsw i32 %38, %39
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 %14
  %42 = load i16, ptr %41, align 4, !tbaa !65
  %43 = sext i16 %42 to i32
  %44 = icmp sgt i32 %33, %43
  %45 = tail call i32 @llvm.smin.i32(i32 %43, i32 %35)
  %46 = select i1 %44, i32 %33, i32 %45
  %47 = add nsw i32 %46, %39
  %48 = getelementptr inbounds [40 x [2 x i16]], ptr %28, i64 0, i64 %14, i64 1
  %49 = load i16, ptr %48, align 2, !tbaa !65
  %50 = sext i16 %49 to i32
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 18, i64 1
  %52 = load i32, ptr %51, align 4, !tbaa !67
  %53 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 19, i64 1
  %54 = load i32, ptr %53, align 4, !tbaa !67
  %55 = icmp sgt i32 %52, %50
  %56 = tail call i32 @llvm.smin.i32(i32 %50, i32 %54)
  %57 = select i1 %55, i32 %52, i32 %56
  %58 = shl nsw i32 %2, 4
  %59 = add nsw i32 %57, %58
  %60 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 %14, i64 1
  %61 = load i16, ptr %60, align 2, !tbaa !65
  %62 = sext i16 %61 to i32
  %63 = icmp sgt i32 %52, %62
  %64 = tail call i32 @llvm.smin.i32(i32 %62, i32 %54)
  %65 = select i1 %63, i32 %52, i32 %64
  %66 = add nsw i32 %65, %58
  %67 = zext nneg i32 %4 to i64
  %68 = zext nneg i32 %3 to i64
  %69 = getelementptr inbounds [5 x [5 x i8]], ptr @x264_size2pixel, i64 0, i64 %67, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 16, ptr %6, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 16, ptr %7, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #13
  %71 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !76
  %73 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20
  %74 = getelementptr inbounds [32 x [6 x ptr]], ptr %73, i64 0, i64 %23
  %75 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23
  %76 = load i32, ptr %75, align 16, !tbaa !67
  %77 = shl nuw nsw i32 %3, 2
  %78 = shl nuw nsw i32 %4, 2
  %79 = call ptr %72(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %74, i32 noundef %76, i32 noundef %40, i32 noundef %59, i32 noundef %77, i32 noundef %78, ptr noundef nonnull @weight_none) #13
  %80 = load ptr, ptr %71, align 8, !tbaa !76
  %81 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20, i64 1, i64 %24
  %82 = load i32, ptr %75, align 16, !tbaa !67
  %83 = call ptr %80(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %81, i32 noundef %82, i32 noundef %47, i32 noundef %66, i32 noundef %77, i32 noundef %78, ptr noundef nonnull @weight_none) #13
  %84 = zext i8 %70 to i64
  %85 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 3, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !69
  %87 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %88 = load ptr, ptr %87, align 16, !tbaa !69
  %89 = shl nsw i32 %2, 7
  %90 = shl nuw nsw i32 %1, 2
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, ptr %88, i64 %92
  %94 = load i32, ptr %6, align 4, !tbaa !67
  %95 = load i32, ptr %7, align 4, !tbaa !67
  call void %86(ptr noundef %93, i32 noundef 32, ptr noundef %79, i32 noundef %94, ptr noundef %83, i32 noundef %95, i32 noundef %27) #13
  %96 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %97 = load i32, ptr %96, align 4, !tbaa !70
  %98 = and i32 %97, %17
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %5
  %101 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %102 = load i32, ptr %101, align 4, !tbaa !71
  %103 = shl i32 %102, 2
  %104 = and i32 %103, 4
  %105 = add i32 %59, -2
  %106 = add i32 %105, %104
  br label %107

107:                                              ; preds = %100, %5
  %108 = phi i32 [ %106, %100 ], [ %59, %5 ]
  %109 = and i32 %97, %20
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %113 = load i32, ptr %112, align 4, !tbaa !71
  %114 = shl i32 %113, 2
  %115 = and i32 %114, 4
  %116 = add i32 %66, -2
  %117 = add i32 %116, %115
  br label %118

118:                                              ; preds = %111, %107
  %119 = phi i32 [ %117, %111 ], [ %66, %107 ]
  %120 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !72
  %122 = getelementptr inbounds [32 x [6 x ptr]], ptr %73, i64 0, i64 %23, i64 4
  %123 = load ptr, ptr %122, align 16, !tbaa !69
  %124 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23, i64 1
  %125 = load i32, ptr %124, align 4, !tbaa !67
  %126 = shl nuw nsw i32 %3, 1
  %127 = shl nuw nsw i32 %4, 1
  call void %121(ptr noundef nonnull %8, i32 noundef 16, ptr noundef %123, i32 noundef %125, i32 noundef %40, i32 noundef %108, i32 noundef %126, i32 noundef %127) #13
  %128 = load ptr, ptr %120, align 8, !tbaa !72
  %129 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20, i64 1, i64 %24, i64 4
  %130 = load ptr, ptr %129, align 16, !tbaa !69
  %131 = load i32, ptr %124, align 4, !tbaa !67
  call void %128(ptr noundef nonnull %9, i32 noundef 16, ptr noundef %130, i32 noundef %131, i32 noundef %47, i32 noundef %119, i32 noundef %126, i32 noundef %127) #13
  %132 = add nuw nsw i64 %84, 3
  %133 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 3, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !69
  %135 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %136 = load ptr, ptr %135, align 8, !tbaa !69
  %137 = shl nsw i32 %2, 6
  %138 = shl nuw nsw i32 %1, 1
  %139 = add nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, ptr %136, i64 %140
  call void %134(ptr noundef %141, i32 noundef 32, ptr noundef nonnull %8, i32 noundef 16, ptr noundef nonnull %9, i32 noundef 16, i32 noundef %27) #13
  %142 = load ptr, ptr %120, align 8, !tbaa !72
  %143 = getelementptr inbounds [32 x [6 x ptr]], ptr %73, i64 0, i64 %23, i64 5
  %144 = load ptr, ptr %143, align 8, !tbaa !69
  %145 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23, i64 2
  %146 = load i32, ptr %145, align 8, !tbaa !67
  call void %142(ptr noundef nonnull %8, i32 noundef 16, ptr noundef %144, i32 noundef %146, i32 noundef %40, i32 noundef %108, i32 noundef %126, i32 noundef %127) #13
  %147 = load ptr, ptr %120, align 8, !tbaa !72
  %148 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20, i64 1, i64 %24, i64 5
  %149 = load ptr, ptr %148, align 8, !tbaa !69
  %150 = load i32, ptr %145, align 8, !tbaa !67
  call void %147(ptr noundef nonnull %9, i32 noundef 16, ptr noundef %149, i32 noundef %150, i32 noundef %47, i32 noundef %119, i32 noundef %126, i32 noundef %127) #13
  %151 = load ptr, ptr %133, align 8, !tbaa !69
  %152 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %153 = load ptr, ptr %152, align 16, !tbaa !69
  %154 = getelementptr inbounds i8, ptr %153, i64 %140
  call void %151(ptr noundef %154, i32 noundef 32, ptr noundef nonnull %8, i32 noundef 16, ptr noundef nonnull %9, i32 noundef 16, i32 noundef %27) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @x264_mb_mc_1xywh(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = add nuw nsw i32 %1, 12
  %7 = shl nsw i32 %2, 3
  %8 = add nsw i32 %6, %7
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !64
  %12 = sext i8 %11 to i32
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 %9
  %14 = load i16, ptr %13, align 4, !tbaa !65
  %15 = sext i16 %14 to i32
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 18
  %17 = load i32, ptr %16, align 8, !tbaa !67
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 19
  %19 = load i32, ptr %18, align 16, !tbaa !67
  %20 = icmp sgt i32 %17, %15
  %21 = tail call i32 @llvm.smin.i32(i32 %15, i32 %19)
  %22 = select i1 %20, i32 %17, i32 %21
  %23 = shl nuw nsw i32 %1, 4
  %24 = add nsw i32 %22, %23
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 %9, i64 1
  %26 = load i16, ptr %25, align 2, !tbaa !65
  %27 = sext i16 %26 to i32
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 18, i64 1
  %29 = load i32, ptr %28, align 4, !tbaa !67
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 19, i64 1
  %31 = load i32, ptr %30, align 4, !tbaa !67
  %32 = icmp sgt i32 %29, %27
  %33 = tail call i32 @llvm.smin.i32(i32 %27, i32 %31)
  %34 = select i1 %32, i32 %29, i32 %33
  %35 = shl nsw i32 %2, 4
  %36 = add nsw i32 %34, %35
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70
  %38 = load ptr, ptr %37, align 8, !tbaa !68
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %40 = load ptr, ptr %39, align 16, !tbaa !69
  %41 = shl nsw i32 %2, 7
  %42 = shl nuw nsw i32 %1, 2
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %40, i64 %44
  %46 = sext i8 %11 to i64
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20, i64 1, i64 %46
  %48 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23
  %49 = load i32, ptr %48, align 16, !tbaa !67
  %50 = shl nuw nsw i32 %3, 2
  %51 = shl nuw nsw i32 %4, 2
  tail call void %38(ptr noundef %45, i32 noundef 32, ptr noundef nonnull %47, i32 noundef %49, i32 noundef %24, i32 noundef %36, i32 noundef %50, i32 noundef %51, ptr noundef nonnull @weight_none) #13
  %52 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %53 = load i32, ptr %52, align 4, !tbaa !70
  %54 = and i32 %53, %12
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %5
  %57 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %58 = load i32, ptr %57, align 4, !tbaa !71
  %59 = shl i32 %58, 2
  %60 = and i32 %59, 4
  %61 = add i32 %36, -2
  %62 = add i32 %61, %60
  br label %63

63:                                               ; preds = %56, %5
  %64 = phi i32 [ %62, %56 ], [ %36, %5 ]
  %65 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !72
  %67 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !69
  %69 = shl nsw i32 %2, 6
  %70 = shl nuw nsw i32 %1, 1
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %68, i64 %72
  %74 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20, i64 1, i64 %46, i64 4
  %75 = load ptr, ptr %74, align 16, !tbaa !69
  %76 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23, i64 1
  %77 = load i32, ptr %76, align 4, !tbaa !67
  %78 = shl nuw nsw i32 %3, 1
  %79 = shl nuw nsw i32 %4, 1
  tail call void %66(ptr noundef %73, i32 noundef 32, ptr noundef %75, i32 noundef %77, i32 noundef %24, i32 noundef %64, i32 noundef %78, i32 noundef %79) #13
  %80 = load ptr, ptr %65, align 8, !tbaa !72
  %81 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %82 = load ptr, ptr %81, align 16, !tbaa !69
  %83 = getelementptr inbounds i8, ptr %82, i64 %72
  %84 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20, i64 1, i64 %46, i64 5
  %85 = load ptr, ptr %84, align 8, !tbaa !69
  %86 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23, i64 2
  %87 = load i32, ptr %86, align 8, !tbaa !67
  tail call void %80(ptr noundef %83, i32 noundef 32, ptr noundef %85, i32 noundef %87, i32 noundef %24, i32 noundef %64, i32 noundef %78, i32 noundef %79) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_mb_mc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %3 = load i32, ptr %2, align 4, !tbaa !77
  %4 = icmp eq i32 %3, 13
  br i1 %4, label %5, label %9

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %7, %5 ], [ 0, %1 ]
  tail call void @x264_mb_mc_8x8(ptr noundef %0, i32 noundef %6)
  %7 = add nuw nsw i32 %6, 1
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %53, label %5, !llvm.loop !78

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %11 = load i8, ptr %10, align 1, !tbaa !64
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 30
  %13 = load i8, ptr %12, align 1, !tbaa !64
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 12
  %15 = load i8, ptr %14, align 1, !tbaa !64
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 30
  %17 = load i8, ptr %16, align 1, !tbaa !64
  switch i32 %3, label %53 [
    i32 16, label %18
    i32 14, label %25
    i32 15, label %39
  ]

18:                                               ; preds = %9
  %19 = icmp sgt i8 %11, -1
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  %21 = icmp sgt i8 %15, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4)
  br label %53

23:                                               ; preds = %20
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4)
  br label %53

24:                                               ; preds = %18
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4)
  br label %53

25:                                               ; preds = %9
  %26 = icmp sgt i8 %11, -1
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = icmp sgt i8 %15, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 2)
  br label %32

30:                                               ; preds = %27
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 2)
  br label %32

31:                                               ; preds = %25
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 2)
  br label %32

32:                                               ; preds = %29, %30, %31
  %33 = icmp sgt i8 %13, -1
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  %35 = icmp sgt i8 %17, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef 2)
  br label %53

37:                                               ; preds = %34
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef 2)
  br label %53

38:                                               ; preds = %32
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef 2)
  br label %53

39:                                               ; preds = %9
  %40 = icmp sgt i8 %11, -1
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = icmp sgt i8 %15, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 4)
  br label %46

44:                                               ; preds = %41
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 4)
  br label %46

45:                                               ; preds = %39
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 4)
  br label %46

46:                                               ; preds = %43, %44, %45
  %47 = icmp sgt i8 %13, -1
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  %49 = icmp sgt i8 %17, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef 2, i32 noundef 4)
  br label %53

51:                                               ; preds = %48
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef 2, i32 noundef 4)
  br label %53

52:                                               ; preds = %46
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef 2, i32 noundef 4)
  br label %53

53:                                               ; preds = %5, %22, %23, %24, %50, %51, %52, %38, %37, %36, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_macroblock_cache_allocate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %3 = load i32, ptr %2, align 16, !tbaa !81
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 16, !tbaa !82
  %6 = getelementptr inbounds %struct.x264_sps_t, ptr %5, i64 0, i32 16
  %7 = load i32, ptr %6, align 4, !tbaa !83
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  store i32 %7, ptr %8, align 4, !tbaa !88
  %9 = shl nsw i32 %7, 1
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 2
  store i32 %9, ptr %10, align 8, !tbaa !89
  %11 = shl nsw i32 %7, 2
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 3
  store i32 %11, ptr %12, align 4, !tbaa !90
  %13 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  %14 = load i32, ptr %13, align 8, !tbaa !91
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  store i32 %14, ptr %15, align 4, !tbaa !70
  %16 = tail call ptr @x264_malloc(i32 noundef %3) #13
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 40
  store ptr %16, ptr %17, align 8, !tbaa !92
  %18 = icmp eq ptr %16, null
  br i1 %18, label %212, label %19

19:                                               ; preds = %1
  %20 = sext i32 %3 to i64
  %21 = shl nsw i64 %20, 1
  %22 = trunc i64 %21 to i32
  %23 = tail call ptr @x264_malloc(i32 noundef %22) #13
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 41
  store ptr %23, ptr %24, align 16, !tbaa !93
  %25 = icmp eq ptr %23, null
  br i1 %25, label %212, label %26

26:                                               ; preds = %19
  %27 = tail call ptr @x264_malloc(i32 noundef %3) #13
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 49
  store ptr %27, ptr %28, align 16, !tbaa !94
  %29 = icmp eq ptr %27, null
  br i1 %29, label %212, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @x264_malloc(i32 noundef %3) #13
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 50
  store ptr %31, ptr %32, align 8, !tbaa !95
  %33 = icmp eq ptr %31, null
  br i1 %33, label %212, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @x264_malloc(i32 noundef %22) #13
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 51
  store ptr %35, ptr %36, align 16, !tbaa !96
  %37 = icmp eq ptr %35, null
  br i1 %37, label %212, label %38

38:                                               ; preds = %34
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %35, i8 -1, i64 %21, i1 false)
  %39 = shl nsw i32 %3, 3
  %40 = tail call ptr @x264_malloc(i32 noundef %39) #13
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 42
  store ptr %40, ptr %41, align 8, !tbaa !97
  %42 = icmp eq ptr %40, null
  br i1 %42, label %212, label %43

43:                                               ; preds = %38
  %44 = mul nsw i32 %3, 24
  %45 = tail call ptr @x264_malloc(i32 noundef %44) #13
  %46 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 43
  store ptr %45, ptr %46, align 16, !tbaa !98
  %47 = icmp eq ptr %45, null
  br i1 %47, label %212, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  %50 = load i32, ptr %49, align 16, !tbaa !99
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %48
  %53 = tail call ptr @x264_malloc(i32 noundef %3) #13
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 44
  store ptr %53, ptr %54, align 8, !tbaa !100
  %55 = icmp eq ptr %53, null
  br i1 %55, label %212, label %56

56:                                               ; preds = %52
  %57 = shl i32 %3, 4
  %58 = tail call ptr @x264_malloc(i32 noundef %57) #13
  %59 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 46
  store ptr %58, ptr %59, align 16, !tbaa !69
  %60 = icmp eq ptr %58, null
  br i1 %60, label %212, label %61

61:                                               ; preds = %56
  %62 = tail call ptr @x264_malloc(i32 noundef %57) #13
  %63 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 46, i64 1
  store ptr %62, ptr %63, align 8, !tbaa !69
  %64 = icmp eq ptr %62, null
  br i1 %64, label %212, label %65

65:                                               ; preds = %61, %48
  %66 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 20
  %67 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  %68 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 20
  %69 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  %70 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  %71 = shl i32 %3, 2
  br label %75

72:                                               ; preds = %128
  %73 = add nuw nsw i64 %76, 1
  %74 = icmp eq i64 %76, 0
  br i1 %74, label %75, label %131, !llvm.loop !101

75:                                               ; preds = %65, %72
  %76 = phi i64 [ 0, %65 ], [ %73, %72 ]
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load i32, ptr %66, align 16, !tbaa !102
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i32 1, i32 2
  br label %84

82:                                               ; preds = %75
  %83 = load i32, ptr %67, align 16, !tbaa !103
  br label %84

84:                                               ; preds = %82, %78
  %85 = phi i32 [ %81, %78 ], [ %83, %82 ]
  %86 = icmp sgt i32 %85, 16
  br i1 %86, label %94, label %87

87:                                               ; preds = %84
  br i1 %77, label %92, label %88

88:                                               ; preds = %87
  %89 = load i32, ptr %68, align 16, !tbaa !102
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %90, i32 1, i32 2
  br label %94

92:                                               ; preds = %87
  %93 = load i32, ptr %69, align 16, !tbaa !103
  br label %94

94:                                               ; preds = %88, %92, %84
  %95 = phi i32 [ 16, %84 ], [ %91, %88 ], [ %93, %92 ]
  %96 = load i32, ptr %13, align 8, !tbaa !91
  %97 = shl i32 %95, %96
  %98 = load i32, ptr %70, align 4, !tbaa !104
  switch i32 %98, label %105 [
    i32 2, label %99
    i32 1, label %102
  ]

99:                                               ; preds = %94
  %100 = tail call i32 @llvm.smin.i32(i32 %97, i32 14)
  %101 = add nsw i32 %100, 2
  br label %105

102:                                              ; preds = %94
  %103 = tail call i32 @llvm.smin.i32(i32 %97, i32 15)
  %104 = add nsw i32 %103, 1
  br label %105

105:                                              ; preds = %94, %102, %99
  %106 = phi i32 [ %101, %99 ], [ %104, %102 ], [ %97, %94 ]
  %107 = trunc i64 %76 to i32
  %108 = xor i32 %107, 1
  %109 = icmp slt i32 %108, %106
  br i1 %109, label %110, label %128

110:                                              ; preds = %105
  %111 = zext nneg i32 %108 to i64
  %112 = sext i32 %106 to i64
  %113 = zext i32 %106 to i64
  %114 = tail call ptr @x264_malloc(i32 noundef %71) #13
  %115 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 48, i64 %76, i64 %111
  store ptr %114, ptr %115, align 8, !tbaa !69
  %116 = icmp eq ptr %114, null
  br i1 %116, label %128, label %117

117:                                              ; preds = %110, %121
  %118 = phi i64 [ %119, %121 ], [ %111, %110 ]
  %119 = add nuw nsw i64 %118, 1
  %120 = icmp eq i64 %119, %113
  br i1 %120, label %125, label %121, !llvm.loop !105

121:                                              ; preds = %117
  %122 = tail call ptr @x264_malloc(i32 noundef %71) #13
  %123 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 48, i64 %76, i64 %119
  store ptr %122, ptr %123, align 8, !tbaa !69
  %124 = icmp eq ptr %122, null
  br i1 %124, label %125, label %117, !llvm.loop !105

125:                                              ; preds = %117, %121
  %126 = phi i32 [ 0, %117 ], [ 4, %121 ]
  %127 = icmp slt i64 %119, %112
  br label %128

128:                                              ; preds = %125, %110, %105
  %129 = phi i1 [ %109, %105 ], [ %109, %110 ], [ %127, %125 ]
  %130 = phi i32 [ 0, %105 ], [ 4, %110 ], [ %126, %125 ]
  br i1 %129, label %131, label %72

131:                                              ; preds = %72, %128
  %132 = phi i32 [ %130, %128 ], [ 23, %72 ]
  switch i32 %132, label %213 [
    i32 23, label %133
    i32 4, label %212
  ]

133:                                              ; preds = %131
  %134 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  %135 = load i32, ptr %134, align 4, !tbaa !104
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %213, label %137

137:                                              ; preds = %133
  %138 = load i32, ptr %13, align 8, !tbaa !91
  %139 = load i32, ptr %0, align 16, !tbaa !106
  %140 = and i32 %139, 2
  %141 = icmp eq i32 %140, 0
  %142 = and i32 %139, 1
  %143 = icmp eq i32 %142, 0
  %144 = select i1 %143, i32 16, i32 32
  %145 = select i1 %141, i32 %144, i32 64
  %146 = icmp eq i32 %135, -1
  br i1 %146, label %147, label %173

147:                                              ; preds = %137
  %148 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 4
  %149 = load i32, ptr %148, align 16, !tbaa !107
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %153 = load i32, ptr %152, align 4, !tbaa !108
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %154
  %156 = load ptr, ptr %155, align 8, !tbaa !69
  %157 = icmp eq ptr %156, %0
  br i1 %157, label %158, label %190

158:                                              ; preds = %151, %147
  %159 = load ptr, ptr %4, align 16, !tbaa !82
  %160 = getelementptr inbounds %struct.x264_sps_t, ptr %159, i64 0, i32 16
  %161 = load i32, ptr %160, align 4, !tbaa !83
  %162 = shl nsw i32 %161, 3
  %163 = add nuw nsw i32 %145, 63
  %164 = add i32 %163, %162
  %165 = sub nsw i32 0, %145
  %166 = and i32 %164, %165
  %167 = getelementptr inbounds %struct.x264_sps_t, ptr %159, i64 0, i32 17
  %168 = load i32, ptr %167, align 4, !tbaa !109
  %169 = shl nsw i32 %168, 3
  %170 = shl i32 64, %138
  %171 = add nsw i32 %169, %170
  %172 = mul nsw i32 %166, %171
  br label %190

173:                                              ; preds = %137
  %174 = load ptr, ptr %4, align 16, !tbaa !82
  %175 = getelementptr inbounds %struct.x264_sps_t, ptr %174, i64 0, i32 16
  %176 = load i32, ptr %175, align 4, !tbaa !83
  %177 = shl nsw i32 %176, 4
  %178 = add nuw nsw i32 %145, 63
  %179 = add i32 %178, %177
  %180 = sub nsw i32 0, %145
  %181 = and i32 %179, %180
  %182 = getelementptr inbounds %struct.x264_sps_t, ptr %174, i64 0, i32 17
  %183 = load i32, ptr %182, align 4, !tbaa !109
  %184 = shl nsw i32 %183, 4
  %185 = shl i32 64, %138
  %186 = add nsw i32 %184, %185
  %187 = mul nsw i32 %181, %186
  %188 = icmp eq i32 %135, 2
  %189 = select i1 %188, i32 2, i32 1
  br label %190

190:                                              ; preds = %173, %151, %158
  %191 = phi i32 [ %172, %158 ], [ 0, %151 ], [ %187, %173 ]
  %192 = phi i32 [ 1, %158 ], [ 0, %151 ], [ %189, %173 ]
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %213

194:                                              ; preds = %190
  %195 = zext nneg i32 %192 to i64
  %196 = zext nneg i32 %192 to i64
  %197 = tail call ptr @x264_malloc(i32 noundef %191) #13
  %198 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 52, i64 0
  store ptr %197, ptr %198, align 8, !tbaa !69
  %199 = icmp eq ptr %197, null
  br i1 %199, label %210, label %200

200:                                              ; preds = %194, %204
  %201 = phi i64 [ %202, %204 ], [ 0, %194 ]
  %202 = add nuw nsw i64 %201, 1
  %203 = icmp eq i64 %202, %196
  br i1 %203, label %213, label %204, !llvm.loop !110

204:                                              ; preds = %200
  %205 = tail call ptr @x264_malloc(i32 noundef %191) #13
  %206 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 52, i64 %202
  store ptr %205, ptr %206, align 8, !tbaa !69
  %207 = icmp eq ptr %205, null
  br i1 %207, label %208, label %200, !llvm.loop !110

208:                                              ; preds = %204
  %209 = icmp ult i64 %202, %195
  br label %210

210:                                              ; preds = %208, %194
  %211 = phi i1 [ %209, %208 ], [ %193, %194 ]
  br i1 %211, label %212, label %213

212:                                              ; preds = %210, %61, %56, %52, %43, %38, %34, %30, %26, %19, %1, %131
  br label %213

213:                                              ; preds = %200, %190, %133, %210, %212, %131
  %214 = phi i32 [ undef, %131 ], [ -1, %212 ], [ 0, %210 ], [ 0, %133 ], [ 0, %190 ], [ 0, %200 ]
  ret i32 %214
}

declare ptr @x264_malloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_cache_free(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %9
  %3 = phi i64 [ 0, %1 ], [ %10, %9 ]
  %4 = trunc i64 %3 to i32
  %5 = xor i32 %4, 1
  %6 = icmp ult i32 %5, 32
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = zext nneg i32 %5 to i64
  br label %12

9:                                                ; preds = %12, %2
  %10 = add nuw nsw i64 %3, 1
  %11 = icmp eq i64 %3, 0
  br i1 %11, label %2, label %22, !llvm.loop !111

12:                                               ; preds = %7, %12
  %13 = phi i64 [ %8, %7 ], [ %16, %12 ]
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 48, i64 %3, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !69
  tail call void @x264_free(ptr noundef %15) #13
  %16 = add nuw nsw i64 %13, 1
  %17 = icmp eq i64 %16, 32
  br i1 %17, label %9, label %12, !llvm.loop !112

18:                                               ; preds = %22
  %19 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  %20 = load i32, ptr %19, align 16, !tbaa !99
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %35, label %28

22:                                               ; preds = %9, %22
  %23 = phi i64 [ %26, %22 ], [ 0, %9 ]
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 52, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !69
  tail call void @x264_free(ptr noundef %25) #13
  %26 = add nuw nsw i64 %23, 1
  %27 = icmp eq i64 %26, 16
  br i1 %27, label %18, label %22, !llvm.loop !113

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 44
  %30 = load ptr, ptr %29, align 8, !tbaa !100
  tail call void @x264_free(ptr noundef %30) #13
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 46
  %32 = load ptr, ptr %31, align 16, !tbaa !69
  tail call void @x264_free(ptr noundef %32) #13
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 46, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !69
  tail call void @x264_free(ptr noundef %34) #13
  br label %35

35:                                               ; preds = %28, %18
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 51
  %37 = load ptr, ptr %36, align 16, !tbaa !96
  tail call void @x264_free(ptr noundef %37) #13
  %38 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 42
  %39 = load ptr, ptr %38, align 8, !tbaa !97
  tail call void @x264_free(ptr noundef %39) #13
  %40 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 43
  %41 = load ptr, ptr %40, align 16, !tbaa !98
  tail call void @x264_free(ptr noundef %41) #13
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 50
  %43 = load ptr, ptr %42, align 8, !tbaa !95
  tail call void @x264_free(ptr noundef %43) #13
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 49
  %45 = load ptr, ptr %44, align 16, !tbaa !94
  tail call void @x264_free(ptr noundef %45) #13
  %46 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 41
  %47 = load ptr, ptr %46, align 16, !tbaa !93
  tail call void @x264_free(ptr noundef %47) #13
  %48 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 40
  %49 = load ptr, ptr %48, align 8, !tbaa !92
  tail call void @x264_free(ptr noundef %49) #13
  ret void
}

declare void @x264_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @x264_macroblock_thread_allocate(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %115

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  %6 = load i32, ptr %5, align 8, !tbaa !91
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %64, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  br label %16

11:                                               ; preds = %55
  %12 = add nuw nsw i64 %17, 1
  %13 = load i32, ptr %5, align 8, !tbaa !91
  %14 = sext i32 %13 to i64
  %15 = icmp sge i64 %17, %14
  br i1 %15, label %64, label %16, !llvm.loop !114

16:                                               ; preds = %8, %11
  %17 = phi i64 [ 0, %8 ], [ %12, %11 ]
  %18 = phi i1 [ %7, %8 ], [ %15, %11 ]
  %19 = load ptr, ptr %9, align 16, !tbaa !82
  %20 = getelementptr inbounds %struct.x264_sps_t, ptr %19, i64 0, i32 16
  %21 = load i32, ptr %20, align 4, !tbaa !83
  %22 = shl nsw i32 %21, 4
  %23 = add nsw i32 %22, 32
  %24 = tail call ptr @x264_malloc(i32 noundef %23) #13
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 62, i64 %17, i64 0
  store ptr %24, ptr %25, align 8, !tbaa !69
  %26 = icmp eq ptr %24, null
  br i1 %26, label %63, label %37

27:                                               ; preds = %37
  %28 = load ptr, ptr %9, align 16, !tbaa !82
  %29 = getelementptr inbounds %struct.x264_sps_t, ptr %28, i64 0, i32 16
  %30 = load i32, ptr %29, align 4, !tbaa !83
  %31 = shl nsw i32 %30, 4
  %32 = add nsw i32 %31, 32
  %33 = ashr exact i32 %32, 1
  %34 = tail call ptr @x264_malloc(i32 noundef %33) #13
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 62, i64 %17, i64 %51
  store ptr %34, ptr %35, align 8, !tbaa !69
  %36 = icmp eq ptr %34, null
  br i1 %36, label %53, label %37, !llvm.loop !115

37:                                               ; preds = %16, %27
  %38 = phi ptr [ %35, %27 ], [ %25, %16 ]
  %39 = phi ptr [ %34, %27 ], [ %24, %16 ]
  %40 = phi i32 [ 1, %27 ], [ 0, %16 ]
  %41 = phi i64 [ %51, %27 ], [ 0, %16 ]
  %42 = load ptr, ptr %9, align 16, !tbaa !82
  %43 = getelementptr inbounds %struct.x264_sps_t, ptr %42, i64 0, i32 16
  %44 = load i32, ptr %43, align 4, !tbaa !83
  %45 = shl nsw i32 %44, 4
  %46 = add nsw i32 %45, 32
  %47 = ashr exact i32 %46, %40
  %48 = sext i32 %47 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %39, i8 0, i64 %48, i1 false)
  %49 = load ptr, ptr %38, align 8, !tbaa !69
  %50 = getelementptr inbounds i8, ptr %49, i64 8
  store ptr %50, ptr %38, align 8, !tbaa !69
  %51 = add nuw nsw i64 %41, 1
  %52 = icmp eq i64 %51, 3
  br i1 %52, label %55, label %27, !llvm.loop !115

53:                                               ; preds = %27
  %54 = icmp ugt i64 %41, 1
  br i1 %54, label %55, label %63

55:                                               ; preds = %37, %53
  %56 = load ptr, ptr %10, align 16, !tbaa !82
  %57 = getelementptr inbounds %struct.x264_sps_t, ptr %56, i64 0, i32 16
  %58 = load i32, ptr %57, align 4, !tbaa !83
  %59 = shl i32 %58, 5
  %60 = tail call ptr @x264_malloc(i32 noundef %59) #13
  %61 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 63, i64 %17
  store ptr %60, ptr %61, align 8, !tbaa !69
  %62 = icmp eq ptr %60, null
  br i1 %62, label %63, label %11

63:                                               ; preds = %16, %55, %53
  br i1 %18, label %64, label %131

64:                                               ; preds = %11, %4, %63
  br i1 %3, label %65, label %115

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1
  %67 = load ptr, ptr %66, align 16, !tbaa !69
  %68 = getelementptr inbounds %struct.x264_t, ptr %67, i64 0, i32 45
  %69 = load ptr, ptr %68, align 16, !tbaa !116
  %70 = getelementptr inbounds %struct.x264_frame, ptr %69, i64 0, i32 25
  %71 = load i32, ptr %70, align 4, !tbaa !67
  %72 = shl i32 %71, 1
  %73 = add i32 %72, 96
  %74 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 23
  %75 = load i32, ptr %74, align 16, !tbaa !117
  %76 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %77 = load i32, ptr %76, align 4, !tbaa !118
  %78 = sdiv i32 %77, 4
  %79 = add nsw i32 %78, 3
  %80 = shl i32 %75, 5
  %81 = mul i32 %80, %79
  %82 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 8
  %83 = load i32, ptr %82, align 16, !tbaa !119
  %84 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 9
  %85 = load i32, ptr %84, align 4, !tbaa !120
  %86 = tail call i32 @llvm.smin.i32(i32 %83, i32 %85)
  %87 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  %88 = load i32, ptr %87, align 4, !tbaa !121
  %89 = icmp sgt i32 %88, 2
  %90 = shl i32 %86, 2
  %91 = add i32 %90, 36
  %92 = add nsw i32 %86, 4
  %93 = shl i32 %86, 5
  %94 = add i32 %93, 32
  %95 = mul i32 %94, %92
  %96 = add i32 %91, %95
  %97 = select i1 %89, i32 %96, i32 0
  %98 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  %99 = load i32, ptr %98, align 16, !tbaa !99
  %100 = icmp eq i32 %99, 0
  %101 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  %102 = load ptr, ptr %101, align 16, !tbaa !122
  %103 = getelementptr inbounds %struct.x264_pps_t, ptr %102, i64 0, i32 15
  %104 = load i32, ptr %103, align 4, !tbaa !123
  %105 = shl i32 %104, 6
  %106 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %107 = load ptr, ptr %106, align 16, !tbaa !82
  %108 = getelementptr inbounds %struct.x264_sps_t, ptr %107, i64 0, i32 16
  %109 = load i32, ptr %108, align 4, !tbaa !83
  %110 = select i1 %100, i32 %105, i32 0
  %111 = mul i32 %110, %109
  %112 = tail call i32 @llvm.smax.i32(i32 %97, i32 %111)
  %113 = tail call i32 @llvm.smax.i32(i32 %81, i32 %112)
  %114 = tail call i32 @llvm.smax.i32(i32 %73, i32 %113)
  br label %115

115:                                              ; preds = %2, %65, %64
  %116 = phi i32 [ 0, %64 ], [ %114, %65 ], [ 0, %2 ]
  %117 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  %118 = load i32, ptr %117, align 8, !tbaa !125
  %119 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %120 = load ptr, ptr %119, align 16, !tbaa !82
  %121 = getelementptr inbounds %struct.x264_sps_t, ptr %120, i64 0, i32 16
  %122 = load i32, ptr %121, align 4, !tbaa !83
  %123 = add nsw i32 %122, 3
  %124 = and i32 %123, 1073741820
  %125 = shl i32 %118, 2
  %126 = mul i32 %125, %124
  %127 = tail call i32 @llvm.smax.i32(i32 %116, i32 %126)
  %128 = tail call ptr @x264_malloc(i32 noundef %127) #13
  %129 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 61
  store ptr %128, ptr %129, align 8, !tbaa !126
  %130 = icmp eq ptr %128, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %63, %115
  br label %132

132:                                              ; preds = %115, %131
  %133 = phi i32 [ -1, %131 ], [ 0, %115 ]
  ret i32 %133
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_thread_free(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %24

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  %6 = load i32, ptr %5, align 8, !tbaa !91
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %4, %12
  %9 = phi i64 [ %13, %12 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 63, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  tail call void @x264_free(ptr noundef %11) #13
  br label %17

12:                                               ; preds = %17
  %13 = add nuw nsw i64 %9, 1
  %14 = load i32, ptr %5, align 8, !tbaa !91
  %15 = sext i32 %14 to i64
  %16 = icmp slt i64 %9, %15
  br i1 %16, label %8, label %24, !llvm.loop !127

17:                                               ; preds = %8, %17
  %18 = phi i64 [ 0, %8 ], [ %22, %17 ]
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 62, i64 %9, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !69
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  tail call void @x264_free(ptr noundef nonnull %21) #13
  %22 = add nuw nsw i64 %18, 1
  %23 = icmp eq i64 %22, 3
  br i1 %23, label %12, label %17, !llvm.loop !128

24:                                               ; preds = %12, %4, %2
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 61
  %26 = load ptr, ptr %25, align 8, !tbaa !126
  tail call void @x264_free(ptr noundef %26) #13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_slice_init(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %3 = load ptr, ptr %2, align 16, !tbaa !116
  %4 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 43
  %5 = load ptr, ptr %4, align 16, !tbaa !69
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 45
  store ptr %5, ptr %6, align 16, !tbaa !69
  %7 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 43, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 45, i64 1
  store ptr %8, ptr %9, align 8, !tbaa !69
  %10 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 44
  %11 = load ptr, ptr %10, align 16, !tbaa !129
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 48
  store ptr %11, ptr %12, align 16, !tbaa !69
  %13 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !69
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 47
  store ptr %14, ptr %15, align 16, !tbaa !69
  %16 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 48, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !69
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 47, i64 1
  store ptr %17, ptr %18, align 8, !tbaa !69
  %19 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 41
  %20 = load ptr, ptr %19, align 16, !tbaa !132
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 38
  store ptr %20, ptr %21, align 8, !tbaa !133
  %22 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 42
  %23 = load ptr, ptr %22, align 8, !tbaa !134
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 39
  store ptr %23, ptr %24, align 16, !tbaa !135
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46
  %26 = load i32, ptr %25, align 8, !tbaa !136
  %27 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 49
  store i32 %26, ptr %27, align 8, !tbaa !67
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 48
  %29 = load i32, ptr %28, align 8, !tbaa !137
  %30 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 49, i64 1
  store i32 %29, ptr %30, align 4, !tbaa !67
  %31 = load i32, ptr %25, align 8, !tbaa !136
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 50
  br label %42

35:                                               ; preds = %42, %1
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %37 = load i32, ptr %36, align 16, !tbaa !34
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %97

39:                                               ; preds = %35
  %40 = load i32, ptr %28, align 8, !tbaa !137
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %65, label %52

42:                                               ; preds = %33, %42
  %43 = phi i64 [ 0, %33 ], [ %48, %42 ]
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !69
  %46 = load i32, ptr %45, align 16, !tbaa !138
  %47 = getelementptr inbounds [16 x i32], ptr %34, i64 0, i64 %43
  store i32 %46, ptr %47, align 4, !tbaa !67
  %48 = add nuw nsw i64 %43, 1
  %49 = load i32, ptr %25, align 8, !tbaa !136
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %42, label %35, !llvm.loop !139

52:                                               ; preds = %65, %39
  %53 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 83
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 83, i64 1
  store i8 -1, ptr %54, align 1, !tbaa !64
  store i8 -2, ptr %53, align 8, !tbaa !64
  %55 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49
  %56 = load ptr, ptr %55, align 16, !tbaa !69
  %57 = getelementptr inbounds %struct.x264_frame, ptr %56, i64 0, i32 49
  %58 = load i32, ptr %57, align 8, !tbaa !67
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %97

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.x264_frame, ptr %56, i64 0, i32 50
  %62 = load i32, ptr %25, align 8, !tbaa !136
  %63 = icmp sgt i32 %62, 0
  %64 = zext nneg i32 %62 to i64
  br label %75

65:                                               ; preds = %39, %65
  %66 = phi i64 [ %71, %65 ], [ 0, %39 ]
  %67 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !69
  %69 = load i32, ptr %68, align 16, !tbaa !138
  %70 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 50, i64 1, i64 %66
  store i32 %69, ptr %70, align 4, !tbaa !67
  %71 = add nuw nsw i64 %66, 1
  %72 = load i32, ptr %28, align 8, !tbaa !137
  %73 = sext i32 %72 to i64
  %74 = icmp slt i64 %71, %73
  br i1 %74, label %65, label %52, !llvm.loop !140

75:                                               ; preds = %60, %92
  %76 = phi i64 [ 0, %60 ], [ %93, %92 ]
  %77 = getelementptr inbounds [16 x i32], ptr %61, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !67
  %79 = add nuw nsw i64 %76, 2
  %80 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 83, i64 %79
  store i8 -2, ptr %80, align 1, !tbaa !64
  br i1 %63, label %81, label %92

81:                                               ; preds = %75, %89
  %82 = phi i64 [ %90, %89 ], [ 0, %75 ]
  %83 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !69
  %85 = load i32, ptr %84, align 16, !tbaa !138
  %86 = icmp eq i32 %85, %78
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = trunc i64 %82 to i8
  store i8 %88, ptr %80, align 1, !tbaa !64
  br label %92

89:                                               ; preds = %81
  %90 = add nuw nsw i64 %82, 1
  %91 = icmp eq i64 %90, %64
  br i1 %91, label %92, label %81, !llvm.loop !141

92:                                               ; preds = %89, %75, %87
  %93 = add nuw nsw i64 %76, 1
  %94 = load i32, ptr %57, align 8, !tbaa !67
  %95 = sext i32 %94 to i64
  %96 = icmp slt i64 %93, %95
  br i1 %96, label %75, label %97, !llvm.loop !142

97:                                               ; preds = %92, %52, %35
  %98 = load i32, ptr %36, align 16, !tbaa !34
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %101, i8 0, i64 40, i1 false)
  br label %102

102:                                              ; preds = %100, %97
  %103 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %103, i8 -2, i64 80, i1 false)
  %104 = load i32, ptr %25, align 8, !tbaa !136
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %137

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %108 = load i32, ptr %107, align 4, !tbaa !143
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %137, label %110

110:                                              ; preds = %106
  %111 = load i32, ptr %3, align 16, !tbaa !138
  %112 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 12
  %113 = load i32, ptr %112, align 8, !tbaa !144
  %114 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47
  %115 = load ptr, ptr %114, align 16, !tbaa !69
  %116 = load i32, ptr %115, align 16, !tbaa !138
  %117 = icmp ne i32 %108, 0
  %118 = add nuw i32 %108, 1
  %119 = zext i32 %118 to i64
  br label %120

120:                                              ; preds = %110, %120
  %121 = phi i64 [ 0, %110 ], [ %135, %120 ]
  %122 = icmp ne i64 %121, 0
  %123 = and i1 %122, %117
  %124 = select i1 %123, i32 %113, i32 0
  %125 = trunc i64 %121 to i32
  %126 = mul i32 %113, %125
  %127 = add i32 %126, %111
  %128 = add i32 %124, %116
  %129 = sub i32 %127, %128
  %130 = sdiv i32 %129, 2
  %131 = add nsw i32 %130, 256
  %132 = sdiv i32 %131, %129
  %133 = trunc i32 %132 to i16
  %134 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 51, i64 %121
  store i16 %133, ptr %134, align 2, !tbaa !65
  %135 = add nuw nsw i64 %121, 1
  %136 = icmp eq i64 %135, %119
  br i1 %136, label %137, label %120, !llvm.loop !145

137:                                              ; preds = %120, %106, %102
  %138 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 85
  store i8 -2, ptr %138, align 16, !tbaa !64
  %139 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 85, i64 1
  store i8 -1, ptr %139, align 1, !tbaa !64
  %140 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %141 = load i32, ptr %140, align 4, !tbaa !143
  %142 = shl i32 %104, %141
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %146 = load i32, ptr %145, align 4, !tbaa !70
  %147 = icmp eq i32 %146, 0
  %148 = zext nneg i32 %142 to i64
  br label %160

149:                                              ; preds = %182, %137
  %150 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 14
  store i32 15, ptr %150, align 4, !tbaa !67
  %151 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 12
  store i32 15, ptr %151, align 4, !tbaa !67
  %152 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 9
  store i32 15, ptr %152, align 4, !tbaa !67
  %153 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 6
  store i32 15, ptr %153, align 4, !tbaa !67
  %154 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 25, i64 3
  store i32 11, ptr %154, align 4, !tbaa !67
  %155 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 15
  store i32 11, ptr %155, align 4, !tbaa !67
  %156 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 13
  store i32 11, ptr %156, align 4, !tbaa !67
  %157 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 11
  store i32 11, ptr %157, align 4, !tbaa !67
  %158 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 7
  store i32 11, ptr %158, align 4, !tbaa !67
  %159 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 3
  store i32 11, ptr %159, align 4, !tbaa !67
  ret void

160:                                              ; preds = %144, %182
  %161 = phi i64 [ 0, %144 ], [ %186, %182 ]
  br i1 %147, label %162, label %169

162:                                              ; preds = %160
  %163 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %161
  %164 = load ptr, ptr %163, align 8, !tbaa !69
  %165 = getelementptr inbounds %struct.x264_frame, ptr %164, i64 0, i32 13
  %166 = load i32, ptr %165, align 4, !tbaa !146
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 63
  br label %182

169:                                              ; preds = %160
  %170 = lshr i64 %161, 1
  %171 = and i64 %170, 2147483647
  %172 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !69
  %174 = getelementptr inbounds %struct.x264_frame, ptr %173, i64 0, i32 13
  %175 = load i32, ptr %174, align 4, !tbaa !146
  %176 = shl i32 %175, 1
  %177 = and i32 %176, 126
  %178 = trunc i64 %161 to i32
  %179 = and i32 %178, 1
  %180 = or disjoint i32 %177, %179
  %181 = trunc i32 %180 to i8
  br label %182

182:                                              ; preds = %162, %169
  %183 = phi i8 [ %168, %162 ], [ %181, %169 ]
  %184 = add nuw nsw i64 %161, 2
  %185 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 85, i64 %184
  store i8 %183, ptr %185, align 1, !tbaa !64
  %186 = add nuw nsw i64 %161, 1
  %187 = icmp eq i64 %186, %148
  br i1 %187, label %149, label %160, !llvm.loop !147
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @x264_macroblock_thread_init(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !121
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 9
  store i32 %3, ptr %4, align 4, !tbaa !148
  %5 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  %6 = load i32, ptr %5, align 4, !tbaa !149
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 10
  store i32 %6, ptr %7, align 8, !tbaa !150
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %9 = load i32, ptr %8, align 16, !tbaa !34
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  switch i32 %6, label %14 [
    i32 6, label %12
    i32 8, label %12
  ]

12:                                               ; preds = %11, %11
  %13 = add nsw i32 %6, -1
  store i32 %13, ptr %7, align 8, !tbaa !150
  br label %14

14:                                               ; preds = %11, %12, %1
  %15 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 12
  %16 = load i32, ptr %15, align 16, !tbaa !151
  %17 = icmp ne i32 %16, 0
  %18 = icmp eq i32 %9, 0
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, ptr %7, align 8, !tbaa !150
  %22 = icmp sgt i32 %21, 4
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %20, %14
  %25 = phi i32 [ 0, %14 ], [ %23, %20 ]
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 11
  store i32 %25, ptr %26, align 4, !tbaa !152
  br i1 %10, label %34, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 16
  %29 = load i32, ptr %28, align 16, !tbaa !153
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = icmp ne i32 %9, 2
  %33 = zext i1 %32 to i32
  br label %34

34:                                               ; preds = %27, %31, %24
  %35 = phi i32 [ 1, %24 ], [ 0, %27 ], [ %33, %31 ]
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 14
  store i32 %35, ptr %36, align 8, !tbaa !154
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66
  %38 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  store ptr %37, ptr %38, align 16, !tbaa !69
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 0, i64 256
  %40 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 1
  store ptr %39, ptr %40, align 8, !tbaa !69
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 0, i64 264
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 2
  store ptr %41, ptr %42, align 16, !tbaa !69
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 1, i64 64
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  store ptr %43, ptr %44, align 16, !tbaa !69
  %45 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 1, i64 608
  %46 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  store ptr %45, ptr %46, align 8, !tbaa !69
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 1, i64 624
  %48 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  store ptr %47, ptr %48, align 16, !tbaa !69
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_prefetch_fenc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 24
  %6 = load i32, ptr %5, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 24, i64 1
  %8 = load i32, ptr %7, align 4, !tbaa !67
  %9 = mul nsw i32 %6, %3
  %10 = add nsw i32 %9, %2
  %11 = shl nsw i32 %10, 4
  %12 = mul nsw i32 %8, %3
  %13 = add nsw i32 %12, %2
  %14 = shl nsw i32 %13, 3
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !155
  %17 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 30
  %18 = load ptr, ptr %17, align 8, !tbaa !69
  %19 = sext i32 %11 to i64
  %20 = getelementptr inbounds i8, ptr %18, i64 %19
  %21 = and i32 %2, 1
  %22 = add nuw nsw i32 %21, 1
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 30, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !69
  %26 = sext i32 %14 to i64
  %27 = getelementptr inbounds i8, ptr %25, i64 %26
  tail call void %16(ptr noundef %20, i32 noundef %6, ptr noundef %27, i32 noundef %8, i32 noundef %2) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_cache_load(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %5 = load i32, ptr %4, align 4, !tbaa !70
  %6 = shl nsw i32 -1, %5
  %7 = add i32 %6, %2
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !88
  %10 = mul nsw i32 %7, %9
  %11 = add nsw i32 %10, %1
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 4
  store i32 %1, ptr %12, align 16, !tbaa !156
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  store i32 %2, ptr %13, align 4, !tbaa !71
  %14 = mul nsw i32 %9, %2
  %15 = add nsw i32 %14, %1
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  store i32 %15, ptr %16, align 8, !tbaa !157
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !89
  %19 = mul nsw i32 %18, %2
  %20 = add nsw i32 %19, %1
  %21 = shl nsw i32 %20, 1
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 7
  store i32 %21, ptr %22, align 4, !tbaa !158
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !90
  %25 = mul nsw i32 %24, %2
  %26 = add nsw i32 %25, %1
  %27 = shl nsw i32 %26, 2
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 8
  store i32 %27, ptr %28, align 16, !tbaa !159
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 24
  store i32 0, ptr %29, align 8, !tbaa !160
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 27
  store i32 0, ptr %30, align 4, !tbaa !161
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 28
  store i32 0, ptr %31, align 16, !tbaa !162
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 35
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 34
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 36
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 37
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 29
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 31
  %38 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 32
  %39 = icmp sgt i32 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %36, i8 -1, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, i8 -1, i64 16, i1 false)
  br i1 %39, label %40, label %59

40:                                               ; preds = %3
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 30
  store i32 1, ptr %31, align 16, !tbaa !162
  %42 = add nsw i32 %15, -1
  store i32 %42, ptr %33, align 8, !tbaa !163
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 38
  %44 = load ptr, ptr %43, align 8, !tbaa !133
  %45 = sext i32 %42 to i64
  %46 = getelementptr inbounds i8, ptr %44, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !64
  %48 = sext i8 %47 to i32
  store i32 %48, ptr %41, align 8, !tbaa !164
  %49 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 3
  %50 = load i32, ptr %49, align 4, !tbaa !165
  %51 = icmp sgt i32 %15, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %40
  store i32 1, ptr %29, align 8, !tbaa !160
  %53 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 27
  %54 = load i32, ptr %53, align 4, !tbaa !166
  %55 = icmp eq i32 %54, 0
  %56 = icmp ult i8 %47, 4
  %57 = select i1 %55, i1 true, i1 %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 1, ptr %30, align 4, !tbaa !161
  br label %59

59:                                               ; preds = %52, %58, %40, %3
  %60 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 5
  %61 = load i32, ptr %60, align 4, !tbaa !167
  %62 = ashr i32 %61, %5
  %63 = ashr i32 %2, %5
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %166, label %65

65:                                               ; preds = %59
  %66 = icmp sgt i32 %11, -1
  br i1 %66, label %67, label %106

67:                                               ; preds = %65
  %68 = load i32, ptr %31, align 16, !tbaa !162
  %69 = or i32 %68, 2
  store i32 %69, ptr %31, align 16, !tbaa !162
  store i32 %11, ptr %32, align 4, !tbaa !168
  %70 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 38
  %71 = load ptr, ptr %70, align 8, !tbaa !133
  %72 = zext nneg i32 %11 to i64
  %73 = getelementptr inbounds i8, ptr %71, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !64
  %75 = sext i8 %74 to i32
  store i32 %75, ptr %36, align 4, !tbaa !169
  %76 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 3
  %77 = load i32, ptr %76, align 4, !tbaa !165
  %78 = icmp slt i32 %11, %77
  br i1 %78, label %106, label %79

79:                                               ; preds = %67
  %80 = load i32, ptr %29, align 8, !tbaa !160
  %81 = or i32 %80, 2
  store i32 %81, ptr %29, align 8, !tbaa !160
  %82 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 27
  %83 = load i32, ptr %82, align 4, !tbaa !166
  %84 = icmp eq i32 %83, 0
  %85 = icmp ult i8 %74, 4
  %86 = select i1 %84, i1 true, i1 %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, ptr %30, align 4, !tbaa !161
  %89 = or i32 %88, 2
  store i32 %89, ptr %30, align 4, !tbaa !161
  br label %90

90:                                               ; preds = %79, %87
  %91 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 41
  %92 = load ptr, ptr %91, align 16, !tbaa !93
  %93 = getelementptr inbounds i16, ptr %92, i64 %72
  tail call void @llvm.prefetch.p0(ptr %93, i32 0, i32 3, i32 1)
  %94 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 42
  %95 = load ptr, ptr %94, align 8, !tbaa !97
  %96 = getelementptr inbounds [8 x i8], ptr %95, i64 %72
  tail call void @llvm.prefetch.p0(ptr %96, i32 0, i32 3, i32 1)
  %97 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 43
  %98 = load ptr, ptr %97, align 16, !tbaa !98
  %99 = getelementptr inbounds [24 x i8], ptr %98, i64 %72, i64 12
  tail call void @llvm.prefetch.p0(ptr nonnull %99, i32 0, i32 3, i32 1)
  %100 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 50
  %101 = load ptr, ptr %100, align 8, !tbaa !95
  %102 = getelementptr inbounds i8, ptr %101, i64 %72
  tail call void @llvm.prefetch.p0(ptr %102, i32 0, i32 3, i32 1)
  %103 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 49
  %104 = load ptr, ptr %103, align 16, !tbaa !94
  %105 = getelementptr inbounds i8, ptr %104, i64 %72
  tail call void @llvm.prefetch.p0(ptr %105, i32 0, i32 3, i32 1)
  br label %106

106:                                              ; preds = %90, %67, %65
  %107 = icmp sgt i32 %11, 0
  %108 = select i1 %39, i1 %107, i1 false
  br i1 %108, label %109, label %133

109:                                              ; preds = %106
  %110 = add nsw i32 %11, -1
  %111 = load i32, ptr %31, align 16, !tbaa !162
  %112 = or i32 %111, 8
  store i32 %112, ptr %31, align 16, !tbaa !162
  store i32 %110, ptr %34, align 16, !tbaa !170
  %113 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 38
  %114 = load ptr, ptr %113, align 8, !tbaa !133
  %115 = zext nneg i32 %110 to i64
  %116 = getelementptr inbounds i8, ptr %114, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !64
  %118 = sext i8 %117 to i32
  store i32 %118, ptr %37, align 4, !tbaa !171
  %119 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 3
  %120 = load i32, ptr %119, align 4, !tbaa !165
  %121 = icmp sgt i32 %11, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %109
  %123 = load i32, ptr %29, align 8, !tbaa !160
  %124 = or i32 %123, 8
  store i32 %124, ptr %29, align 8, !tbaa !160
  %125 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 27
  %126 = load i32, ptr %125, align 4, !tbaa !166
  %127 = icmp eq i32 %126, 0
  %128 = icmp ult i8 %117, 4
  %129 = select i1 %127, i1 true, i1 %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %122
  %131 = load i32, ptr %30, align 4, !tbaa !161
  %132 = or i32 %131, 8
  store i32 %132, ptr %30, align 4, !tbaa !161
  br label %133

133:                                              ; preds = %122, %130, %109, %106
  %134 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %135 = load ptr, ptr %134, align 16, !tbaa !82
  %136 = getelementptr inbounds %struct.x264_sps_t, ptr %135, i64 0, i32 16
  %137 = load i32, ptr %136, align 4, !tbaa !83
  %138 = add nsw i32 %137, -1
  %139 = icmp sgt i32 %138, %1
  %140 = icmp sgt i32 %11, -2
  %141 = select i1 %139, i1 %140, i1 false
  br i1 %141, label %142, label %166

142:                                              ; preds = %133
  %143 = add nsw i32 %11, 1
  %144 = load i32, ptr %31, align 16, !tbaa !162
  %145 = or i32 %144, 4
  store i32 %145, ptr %31, align 16, !tbaa !162
  store i32 %143, ptr %35, align 4, !tbaa !172
  %146 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 38
  %147 = load ptr, ptr %146, align 8, !tbaa !133
  %148 = zext nneg i32 %143 to i64
  %149 = getelementptr inbounds i8, ptr %147, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !64
  %151 = sext i8 %150 to i32
  store i32 %151, ptr %38, align 16, !tbaa !173
  %152 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 3
  %153 = load i32, ptr %152, align 4, !tbaa !165
  %154 = icmp slt i32 %143, %153
  br i1 %154, label %166, label %155

155:                                              ; preds = %142
  %156 = load i32, ptr %29, align 8, !tbaa !160
  %157 = or i32 %156, 4
  store i32 %157, ptr %29, align 8, !tbaa !160
  %158 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 27
  %159 = load i32, ptr %158, align 4, !tbaa !166
  %160 = icmp eq i32 %159, 0
  %161 = icmp ult i8 %150, 4
  %162 = select i1 %160, i1 true, i1 %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %155
  %164 = load i32, ptr %30, align 4, !tbaa !161
  %165 = or i32 %164, 4
  store i32 %165, ptr %30, align 4, !tbaa !161
  br label %166

166:                                              ; preds = %155, %59, %133, %142, %163
  %167 = load i32, ptr %33, align 8, !tbaa !163
  %168 = load i32, ptr %32, align 4, !tbaa !168
  %169 = load i32, ptr %4, align 4, !tbaa !70
  %170 = shl nsw i32 -1, %169
  %171 = add i32 %170, %2
  %172 = shl nsw i32 %171, 1
  %173 = or disjoint i32 %172, 1
  %174 = load i32, ptr %17, align 8, !tbaa !89
  %175 = mul nsw i32 %173, %174
  %176 = shl nsw i32 %1, 1
  %177 = add nsw i32 %175, %176
  %178 = shl nsw i32 %171, 2
  %179 = or disjoint i32 %178, 3
  %180 = load i32, ptr %23, align 4, !tbaa !90
  %181 = mul nsw i32 %179, %180
  %182 = shl nsw i32 %1, 2
  %183 = add nsw i32 %181, %182
  %184 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 42
  %185 = load ptr, ptr %184, align 8, !tbaa !97
  %186 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 43
  %187 = load ptr, ptr %186, align 16, !tbaa !98
  %188 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 41
  %189 = load ptr, ptr %188, align 16, !tbaa !93
  %190 = load i32, ptr %29, align 8, !tbaa !160
  %191 = and i32 %190, 2
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %214, label %193

193:                                              ; preds = %166
  %194 = sext i32 %168 to i64
  %195 = getelementptr inbounds i16, ptr %189, i64 %194
  %196 = load i16, ptr %195, align 2, !tbaa !65
  %197 = sext i16 %196 to i32
  %198 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 13
  store i32 %197, ptr %198, align 16, !tbaa !174
  %199 = getelementptr inbounds [8 x i8], ptr %185, i64 %194
  %200 = load i32, ptr %199, align 4, !tbaa !64
  %201 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 0, i64 4
  store i32 %200, ptr %201, align 1, !tbaa !64
  %202 = getelementptr inbounds [24 x i8], ptr %187, i64 %194, i64 12
  %203 = load i32, ptr %202, align 4, !tbaa !64
  %204 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2
  %205 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 4
  store i32 %203, ptr %205, align 1, !tbaa !64
  %206 = getelementptr inbounds [24 x i8], ptr %187, i64 %194, i64 18
  %207 = load i16, ptr %206, align 2, !tbaa !64
  %208 = zext i16 %207 to i32
  %209 = shl nuw nsw i32 %208, 8
  store i32 %209, ptr %204, align 1, !tbaa !64
  %210 = getelementptr inbounds [24 x i8], ptr %187, i64 %194, i64 22
  %211 = load i16, ptr %210, align 2, !tbaa !64
  %212 = zext i16 %211 to i32
  %213 = shl nuw nsw i32 %212, 8
  br label %219

214:                                              ; preds = %166
  %215 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 13
  store i32 -1, ptr %215, align 16, !tbaa !174
  %216 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 0, i64 4
  store i32 -1, ptr %216, align 1, !tbaa !64
  %217 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2
  %218 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 4
  store i32 -2139062144, ptr %218, align 1, !tbaa !64
  store i32 -2139062144, ptr %217, align 1, !tbaa !64
  br label %219

219:                                              ; preds = %214, %193
  %220 = phi i32 [ -2139062144, %214 ], [ %213, %193 ]
  %221 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 24
  store i32 %220, ptr %221, align 1, !tbaa !64
  %222 = and i32 %190, 1
  %223 = icmp eq i32 %222, 0
  %224 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 0, i64 11
  br i1 %223, label %291, label %225

225:                                              ; preds = %219
  %226 = sext i32 %167 to i64
  %227 = getelementptr inbounds i16, ptr %189, i64 %226
  %228 = load i16, ptr %227, align 2, !tbaa !65
  %229 = sext i16 %228 to i32
  %230 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 14
  store i32 %229, ptr %230, align 4, !tbaa !175
  %231 = getelementptr inbounds [8 x i8], ptr %185, i64 %226, i64 4
  %232 = load i8, ptr %231, align 1, !tbaa !64
  store i8 %232, ptr %224, align 1, !tbaa !64
  %233 = getelementptr inbounds [8 x i8], ptr %185, i64 %226, i64 5
  %234 = load i8, ptr %233, align 1, !tbaa !64
  %235 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 0, i64 19
  store i8 %234, ptr %235, align 1, !tbaa !64
  %236 = getelementptr inbounds [8 x i8], ptr %185, i64 %226, i64 6
  %237 = load i8, ptr %236, align 1, !tbaa !64
  %238 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 0, i64 27
  store i8 %237, ptr %238, align 1, !tbaa !64
  %239 = getelementptr inbounds [8 x i8], ptr %185, i64 %226, i64 3
  %240 = load i8, ptr %239, align 1, !tbaa !64
  %241 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 0, i64 35
  store i8 %240, ptr %241, align 1, !tbaa !64
  %242 = getelementptr inbounds [24 x i8], ptr %187, i64 %226, i64 3
  %243 = load i8, ptr %242, align 1, !tbaa !64
  %244 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 11
  store i8 %243, ptr %244, align 1, !tbaa !64
  %245 = getelementptr inbounds [24 x i8], ptr %187, i64 %226, i64 7
  %246 = load i8, ptr %245, align 1, !tbaa !64
  %247 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 19
  store i8 %246, ptr %247, align 1, !tbaa !64
  %248 = getelementptr inbounds [24 x i8], ptr %187, i64 %226, i64 11
  %249 = load i8, ptr %248, align 1, !tbaa !64
  %250 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 27
  store i8 %249, ptr %250, align 1, !tbaa !64
  %251 = getelementptr inbounds [24 x i8], ptr %187, i64 %226, i64 15
  %252 = load i8, ptr %251, align 1, !tbaa !64
  %253 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 35
  store i8 %252, ptr %253, align 1, !tbaa !64
  %254 = getelementptr inbounds [24 x i8], ptr %187, i64 %226, i64 17
  %255 = load i8, ptr %254, align 1, !tbaa !64
  %256 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 8
  store i8 %255, ptr %256, align 1, !tbaa !64
  %257 = getelementptr inbounds [24 x i8], ptr %187, i64 %226, i64 19
  %258 = load i8, ptr %257, align 1, !tbaa !64
  %259 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 16
  store i8 %258, ptr %259, align 1, !tbaa !64
  %260 = getelementptr inbounds [24 x i8], ptr %187, i64 %226, i64 21
  %261 = load i8, ptr %260, align 1, !tbaa !64
  %262 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 32
  store i8 %261, ptr %262, align 1, !tbaa !64
  %263 = getelementptr inbounds [24 x i8], ptr %187, i64 %226, i64 23
  %264 = load i8, ptr %263, align 1, !tbaa !64
  %265 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 40
  store i8 %264, ptr %265, align 1, !tbaa !64
  %266 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %267 = load i32, ptr %266, align 16, !tbaa !34
  %268 = icmp eq i32 %267, 2
  br i1 %268, label %304, label %269

269:                                              ; preds = %225
  %270 = icmp eq i32 %267, 1
  %271 = sext i32 %183 to i64
  %272 = sext i32 %177 to i64
  %273 = sext i32 %168 to i64
  br label %274

274:                                              ; preds = %269, %274
  %275 = phi i64 [ 0, %269 ], [ %288, %274 ]
  %276 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 45, i64 %275
  %277 = load ptr, ptr %276, align 8, !tbaa !69
  %278 = getelementptr [2 x i16], ptr %277, i64 %271
  %279 = getelementptr [2 x i16], ptr %278, i64 -1
  tail call void @llvm.prefetch.p0(ptr %279, i32 0, i32 3, i32 1)
  %280 = getelementptr [2 x i16], ptr %278, i64 4
  tail call void @llvm.prefetch.p0(ptr %280, i32 0, i32 3, i32 1)
  %281 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 47, i64 %275
  %282 = load ptr, ptr %281, align 8, !tbaa !69
  %283 = getelementptr i8, ptr %282, i64 %272
  %284 = getelementptr i8, ptr %283, i64 -1
  tail call void @llvm.prefetch.p0(ptr %284, i32 0, i32 3, i32 1)
  %285 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 46, i64 %275
  %286 = load ptr, ptr %285, align 8, !tbaa !69
  %287 = getelementptr inbounds [8 x [2 x i8]], ptr %286, i64 %273
  tail call void @llvm.prefetch.p0(ptr %287, i32 0, i32 3, i32 1)
  %288 = add nuw nsw i64 %275, 1
  %289 = icmp eq i64 %275, 0
  %290 = and i1 %270, %289
  br i1 %290, label %274, label %304, !llvm.loop !176

291:                                              ; preds = %219
  %292 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 14
  store i32 -1, ptr %292, align 4, !tbaa !175
  %293 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 0, i64 35
  store i8 -1, ptr %293, align 1, !tbaa !64
  %294 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 0, i64 27
  store i8 -1, ptr %294, align 1, !tbaa !64
  %295 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 0, i64 19
  store i8 -1, ptr %295, align 1, !tbaa !64
  store i8 -1, ptr %224, align 1, !tbaa !64
  %296 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 40
  store i8 -128, ptr %296, align 1, !tbaa !64
  %297 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 32
  store i8 -128, ptr %297, align 1, !tbaa !64
  %298 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 16
  store i8 -128, ptr %298, align 1, !tbaa !64
  %299 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 8
  store i8 -128, ptr %299, align 1, !tbaa !64
  %300 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 35
  store i8 -128, ptr %300, align 1, !tbaa !64
  %301 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 27
  store i8 -128, ptr %301, align 1, !tbaa !64
  %302 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 19
  store i8 -128, ptr %302, align 1, !tbaa !64
  %303 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 11
  store i8 -128, ptr %303, align 1, !tbaa !64
  br label %304

304:                                              ; preds = %274, %225, %291
  %305 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  %306 = load ptr, ptr %305, align 16, !tbaa !122
  %307 = getelementptr inbounds %struct.x264_pps_t, ptr %306, i64 0, i32 15
  %308 = load i32, ptr %307, align 4, !tbaa !123
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %333, label %310

310:                                              ; preds = %304
  br i1 %223, label %319, label %311

311:                                              ; preds = %310
  %312 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 50
  %313 = load ptr, ptr %312, align 8, !tbaa !95
  %314 = sext i32 %167 to i64
  %315 = getelementptr inbounds i8, ptr %313, i64 %314
  %316 = load i8, ptr %315, align 1, !tbaa !64
  %317 = icmp ne i8 %316, 0
  %318 = zext i1 %317 to i32
  br label %319

319:                                              ; preds = %311, %310
  %320 = phi i32 [ 0, %310 ], [ %318, %311 ]
  br i1 %192, label %329, label %321

321:                                              ; preds = %319
  %322 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 50
  %323 = load ptr, ptr %322, align 8, !tbaa !95
  %324 = sext i32 %168 to i64
  %325 = getelementptr inbounds i8, ptr %323, i64 %324
  %326 = load i8, ptr %325, align 1, !tbaa !64
  %327 = icmp ne i8 %326, 0
  %328 = zext i1 %327 to i32
  br label %329

329:                                              ; preds = %321, %319
  %330 = phi i32 [ 0, %319 ], [ %328, %321 ]
  %331 = add nuw nsw i32 %330, %320
  %332 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 11
  store i32 %331, ptr %332, align 8, !tbaa !177
  br label %333

333:                                              ; preds = %329, %304
  %334 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %335 = load i32, ptr %334, align 4, !tbaa !143
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %350, label %337

337:                                              ; preds = %333
  %338 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46
  %339 = load i32, ptr %338, align 8, !tbaa !136
  %340 = shl i32 %339, %169
  %341 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  store i32 %340, ptr %341, align 8, !tbaa !67
  %342 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 48
  %343 = load i32, ptr %342, align 8, !tbaa !137
  %344 = shl i32 %343, %169
  %345 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19, i64 1
  store i32 %344, ptr %345, align 4, !tbaa !67
  %346 = lshr i32 %190, 1
  %347 = and i32 %346, 1
  %348 = add nuw nsw i32 %347, %222
  %349 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 12
  store i32 %348, ptr %349, align 4, !tbaa !178
  br label %350

350:                                              ; preds = %337, %333
  %351 = icmp eq i32 %169, 0
  br i1 %351, label %352, label %403

352:                                              ; preds = %350
  %353 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %354 = load ptr, ptr %353, align 16, !tbaa !69
  %355 = getelementptr inbounds i8, ptr %354, i64 127
  %356 = getelementptr inbounds i8, ptr %354, i64 143
  br label %357

357:                                              ; preds = %352, %357
  %358 = phi i64 [ -4, %352 ], [ %363, %357 ]
  %359 = shl nsw i64 %358, 5
  %360 = getelementptr inbounds i8, ptr %356, i64 %359
  %361 = load i8, ptr %360, align 1, !tbaa !64
  %362 = getelementptr inbounds i8, ptr %355, i64 %359
  store i8 %361, ptr %362, align 1, !tbaa !64
  %363 = add nsw i64 %358, 1
  %364 = icmp eq i64 %363, 4
  br i1 %364, label %365, label %357, !llvm.loop !179

365:                                              ; preds = %357
  %366 = load ptr, ptr %353, align 16, !tbaa !69
  %367 = getelementptr inbounds i8, ptr %366, i64 383
  %368 = getelementptr inbounds i8, ptr %366, i64 399
  br label %369

369:                                              ; preds = %365, %369
  %370 = phi i64 [ -4, %365 ], [ %375, %369 ]
  %371 = shl nsw i64 %370, 5
  %372 = getelementptr inbounds i8, ptr %368, i64 %371
  %373 = load i8, ptr %372, align 1, !tbaa !64
  %374 = getelementptr inbounds i8, ptr %367, i64 %371
  store i8 %373, ptr %374, align 1, !tbaa !64
  %375 = add nsw i64 %370, 1
  %376 = icmp eq i64 %375, 4
  br i1 %376, label %377, label %369, !llvm.loop !179

377:                                              ; preds = %369
  %378 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %379 = load ptr, ptr %378, align 8, !tbaa !69
  %380 = getelementptr inbounds i8, ptr %379, i64 127
  %381 = getelementptr inbounds i8, ptr %379, i64 135
  br label %382

382:                                              ; preds = %377, %382
  %383 = phi i64 [ -4, %377 ], [ %388, %382 ]
  %384 = shl nsw i64 %383, 5
  %385 = getelementptr inbounds i8, ptr %381, i64 %384
  %386 = load i8, ptr %385, align 1, !tbaa !64
  %387 = getelementptr inbounds i8, ptr %380, i64 %384
  store i8 %386, ptr %387, align 1, !tbaa !64
  %388 = add nsw i64 %383, 1
  %389 = icmp eq i64 %388, 4
  br i1 %389, label %390, label %382, !llvm.loop !179

390:                                              ; preds = %382
  %391 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %392 = load ptr, ptr %391, align 16, !tbaa !69
  %393 = getelementptr inbounds i8, ptr %392, i64 127
  %394 = getelementptr inbounds i8, ptr %392, i64 135
  br label %395

395:                                              ; preds = %390, %395
  %396 = phi i64 [ -4, %390 ], [ %401, %395 ]
  %397 = shl nsw i64 %396, 5
  %398 = getelementptr inbounds i8, ptr %394, i64 %397
  %399 = load i8, ptr %398, align 1, !tbaa !64
  %400 = getelementptr inbounds i8, ptr %393, i64 %397
  store i8 %399, ptr %400, align 1, !tbaa !64
  %401 = add nsw i64 %396, 1
  %402 = icmp eq i64 %401, 4
  br i1 %402, label %403, label %395, !llvm.loop !179

403:                                              ; preds = %395, %350
  tail call fastcc void @x264_macroblock_load_pic_pointers(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 0)
  tail call fastcc void @x264_macroblock_load_pic_pointers(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 1)
  tail call fastcc void @x264_macroblock_load_pic_pointers(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 2)
  %404 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %405 = load ptr, ptr %404, align 16, !tbaa !116
  %406 = getelementptr inbounds %struct.x264_frame, ptr %405, i64 0, i32 33
  %407 = load ptr, ptr %406, align 16, !tbaa !180
  %408 = icmp eq ptr %407, null
  br i1 %408, label %449, label %409

409:                                              ; preds = %403
  %410 = getelementptr inbounds %struct.x264_frame, ptr %405, i64 0, i32 24
  %411 = load i32, ptr %410, align 8, !tbaa !67
  %412 = mul nsw i32 %411, %2
  %413 = add nsw i32 %412, %1
  %414 = shl nsw i32 %413, 4
  %415 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  %416 = load i32, ptr %415, align 8, !tbaa !67
  %417 = icmp sgt i32 %416, 0
  br i1 %417, label %418, label %422

418:                                              ; preds = %409
  %419 = sext i32 %414 to i64
  %420 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 22
  %421 = zext nneg i32 %416 to i64
  br label %429

422:                                              ; preds = %429, %409
  %423 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19, i64 1
  %424 = load i32, ptr %423, align 4, !tbaa !67
  %425 = icmp sgt i32 %424, 0
  br i1 %425, label %426, label %449

426:                                              ; preds = %422
  %427 = sext i32 %414 to i64
  %428 = zext nneg i32 %424 to i64
  br label %439

429:                                              ; preds = %418, %429
  %430 = phi i64 [ 0, %418 ], [ %437, %429 ]
  %431 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %430
  %432 = load ptr, ptr %431, align 8, !tbaa !69
  %433 = getelementptr inbounds %struct.x264_frame, ptr %432, i64 0, i32 33
  %434 = load ptr, ptr %433, align 16, !tbaa !180
  %435 = getelementptr inbounds i16, ptr %434, i64 %419
  %436 = getelementptr inbounds [16 x ptr], ptr %420, i64 0, i64 %430
  store ptr %435, ptr %436, align 8, !tbaa !69
  %437 = add nuw nsw i64 %430, 1
  %438 = icmp eq i64 %437, %421
  br i1 %438, label %422, label %429, !llvm.loop !181

439:                                              ; preds = %426, %439
  %440 = phi i64 [ 0, %426 ], [ %447, %439 ]
  %441 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49, i64 %440
  %442 = load ptr, ptr %441, align 8, !tbaa !69
  %443 = getelementptr inbounds %struct.x264_frame, ptr %442, i64 0, i32 33
  %444 = load ptr, ptr %443, align 16, !tbaa !180
  %445 = getelementptr inbounds i16, ptr %444, i64 %427
  %446 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 22, i64 1, i64 %440
  store ptr %445, ptr %446, align 8, !tbaa !69
  %447 = add nuw nsw i64 %440, 1
  %448 = icmp eq i64 %447, %428
  br i1 %448, label %449, label %439, !llvm.loop !182

449:                                              ; preds = %439, %422, %403
  %450 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %451 = load ptr, ptr %450, align 8, !tbaa !183
  %452 = getelementptr inbounds %struct.x264_frame, ptr %451, i64 0, i32 24
  %453 = load i32, ptr %452, align 8, !tbaa !67
  %454 = getelementptr inbounds %struct.x264_frame, ptr %451, i64 0, i32 24, i64 1
  %455 = load i32, ptr %454, align 4, !tbaa !67
  %456 = mul nsw i32 %453, %2
  %457 = add nsw i32 %456, %1
  %458 = shl nsw i32 %457, 4
  %459 = mul nsw i32 %455, %2
  %460 = add nsw i32 %459, %1
  %461 = shl nsw i32 %460, 3
  %462 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 8
  %463 = load ptr, ptr %462, align 8, !tbaa !155
  %464 = getelementptr inbounds %struct.x264_frame, ptr %451, i64 0, i32 30
  %465 = load ptr, ptr %464, align 8, !tbaa !69
  %466 = sext i32 %458 to i64
  %467 = getelementptr inbounds i8, ptr %465, i64 %466
  %468 = and i32 %1, 1
  %469 = add nuw nsw i32 %468, 1
  %470 = zext nneg i32 %469 to i64
  %471 = getelementptr inbounds %struct.x264_frame, ptr %451, i64 0, i32 30, i64 %470
  %472 = load ptr, ptr %471, align 8, !tbaa !69
  %473 = sext i32 %461 to i64
  %474 = getelementptr inbounds i8, ptr %472, i64 %473
  tail call void %463(ptr noundef %467, i32 noundef %453, ptr noundef %474, i32 noundef %455, i32 noundef %1) #13
  %475 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %476 = load i32, ptr %475, align 16, !tbaa !34
  %477 = icmp eq i32 %476, 2
  br i1 %477, label %678, label %478

478:                                              ; preds = %449
  %479 = load i32, ptr %17, align 8, !tbaa !89
  %480 = load i32, ptr %23, align 4, !tbaa !90
  %481 = icmp eq i32 %476, 1
  %482 = load i32, ptr %29, align 8, !tbaa !160
  %483 = and i32 %482, 8
  %484 = icmp eq i32 %483, 0
  %485 = and i32 %482, 2
  %486 = icmp eq i32 %485, 0
  %487 = and i32 %482, 4
  %488 = icmp eq i32 %487, 0
  %489 = and i32 %482, 1
  %490 = icmp eq i32 %489, 0
  %491 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  %492 = load i32, ptr %491, align 16, !tbaa !99
  %493 = icmp eq i32 %492, 0
  %494 = sext i32 %177 to i64
  %495 = sext i32 %183 to i64
  %496 = sext i32 %177 to i64
  %497 = sext i32 %183 to i64
  %498 = sext i32 %177 to i64
  %499 = sext i32 %183 to i64
  %500 = shl nsw i32 %480, 1
  %501 = mul nsw i32 %480, 3
  %502 = sext i32 %168 to i64
  %503 = sext i32 %167 to i64
  br label %505

504:                                              ; preds = %624
  br i1 %481, label %628, label %674

505:                                              ; preds = %478, %624
  %506 = phi i64 [ 0, %478 ], [ %625, %624 ]
  %507 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 45, i64 %506
  %508 = load ptr, ptr %507, align 8, !tbaa !69
  %509 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 47, i64 %506
  %510 = load ptr, ptr %509, align 8, !tbaa !69
  br i1 %484, label %519, label %511

511:                                              ; preds = %505
  %512 = getelementptr i8, ptr %510, i64 %494
  %513 = getelementptr i8, ptr %512, i64 -1
  %514 = load i8, ptr %513, align 1, !tbaa !64
  %515 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %506, i64 3
  store i8 %514, ptr %515, align 1, !tbaa !64
  %516 = getelementptr [2 x i16], ptr %508, i64 %495
  %517 = getelementptr [2 x i16], ptr %516, i64 -1
  %518 = load i32, ptr %517, align 4, !tbaa !64
  br label %521

519:                                              ; preds = %505
  %520 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %506, i64 3
  store i8 -2, ptr %520, align 1, !tbaa !64
  br label %521

521:                                              ; preds = %519, %511
  %522 = phi i32 [ 0, %519 ], [ %518, %511 ]
  %523 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %506, i64 3
  store i32 %522, ptr %523, align 4, !tbaa !64
  br i1 %486, label %535, label %524

524:                                              ; preds = %521
  %525 = getelementptr inbounds i8, ptr %510, i64 %496
  %526 = load i8, ptr %525, align 1, !tbaa !64
  %527 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %506, i64 5
  store i8 %526, ptr %527, align 1, !tbaa !64
  %528 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %506, i64 4
  store i8 %526, ptr %528, align 1, !tbaa !64
  %529 = getelementptr i8, ptr %525, i64 1
  %530 = load i8, ptr %529, align 1, !tbaa !64
  %531 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %506, i64 7
  store i8 %530, ptr %531, align 1, !tbaa !64
  %532 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %506, i64 6
  store i8 %530, ptr %532, align 1, !tbaa !64
  %533 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %506, i64 4
  %534 = getelementptr inbounds [2 x i16], ptr %508, i64 %497
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %533, ptr noundef nonnull align 8 dereferenceable(16) %534, i64 16, i1 false), !tbaa.struct !184
  br label %538

535:                                              ; preds = %521
  %536 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %506, i64 4
  %537 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %506, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %536, i8 0, i64 16, i1 false)
  store i32 -16843010, ptr %537, align 1, !tbaa !64
  br label %538

538:                                              ; preds = %535, %524
  br i1 %488, label %548, label %539

539:                                              ; preds = %538
  %540 = getelementptr i8, ptr %510, i64 %498
  %541 = getelementptr i8, ptr %540, i64 2
  %542 = load i8, ptr %541, align 1, !tbaa !64
  %543 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %506, i64 8
  store i8 %542, ptr %543, align 1, !tbaa !64
  %544 = getelementptr [2 x i16], ptr %508, i64 %499
  %545 = getelementptr [2 x i16], ptr %544, i64 4
  %546 = load i32, ptr %545, align 4, !tbaa !64
  %547 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %506, i64 8
  store i32 %546, ptr %547, align 4, !tbaa !64
  br label %550

548:                                              ; preds = %538
  %549 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %506, i64 8
  store i8 -2, ptr %549, align 1, !tbaa !64
  br label %550

550:                                              ; preds = %548, %539
  br i1 %490, label %586, label %551

551:                                              ; preds = %550
  %552 = load i32, ptr %22, align 4, !tbaa !158
  %553 = add nsw i32 %552, -1
  %554 = load i32, ptr %28, align 16, !tbaa !159
  %555 = add nsw i32 %554, -1
  %556 = sext i32 %553 to i64
  %557 = getelementptr inbounds i8, ptr %510, i64 %556
  %558 = load i8, ptr %557, align 1, !tbaa !64
  %559 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %506, i64 19
  store i8 %558, ptr %559, align 1, !tbaa !64
  %560 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %506, i64 11
  store i8 %558, ptr %560, align 1, !tbaa !64
  %561 = add nsw i32 %553, %479
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i8, ptr %510, i64 %562
  %564 = load i8, ptr %563, align 1, !tbaa !64
  %565 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %506, i64 35
  store i8 %564, ptr %565, align 1, !tbaa !64
  %566 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %506, i64 27
  store i8 %564, ptr %566, align 1, !tbaa !64
  %567 = sext i32 %555 to i64
  %568 = getelementptr inbounds [2 x i16], ptr %508, i64 %567
  %569 = load i32, ptr %568, align 4, !tbaa !64
  %570 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %506, i64 11
  store i32 %569, ptr %570, align 4, !tbaa !64
  %571 = add nsw i32 %555, %480
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds [2 x i16], ptr %508, i64 %572
  %574 = load i32, ptr %573, align 4, !tbaa !64
  %575 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %506, i64 19
  store i32 %574, ptr %575, align 4, !tbaa !64
  %576 = add nsw i32 %555, %500
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds [2 x i16], ptr %508, i64 %577
  %579 = load i32, ptr %578, align 4, !tbaa !64
  %580 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %506, i64 27
  store i32 %579, ptr %580, align 4, !tbaa !64
  %581 = add nsw i32 %555, %501
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds [2 x i16], ptr %508, i64 %582
  %584 = load i32, ptr %583, align 4, !tbaa !64
  %585 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %506, i64 35
  store i32 %584, ptr %585, align 4, !tbaa !64
  br label %594

586:                                              ; preds = %550, %586
  %587 = phi i64 [ %592, %586 ], [ 0, %550 ]
  %588 = shl nuw nsw i64 %587, 3
  %589 = add nuw nsw i64 %588, 11
  %590 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %506, i64 %589
  store i8 -2, ptr %590, align 1, !tbaa !64
  %591 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %506, i64 %589
  store i32 0, ptr %591, align 4, !tbaa !64
  %592 = add nuw nsw i64 %587, 1
  %593 = icmp eq i64 %592, 4
  br i1 %593, label %594, label %586, !llvm.loop !185

594:                                              ; preds = %586, %551
  br i1 %493, label %624, label %595

595:                                              ; preds = %594
  %596 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 46, i64 %506
  %597 = load ptr, ptr %596, align 8, !tbaa !69
  br i1 %486, label %601, label %598

598:                                              ; preds = %595
  %599 = getelementptr inbounds [8 x [2 x i8]], ptr %597, i64 %502
  %600 = load i64, ptr %599, align 8, !tbaa !64
  br label %601

601:                                              ; preds = %595, %598
  %602 = phi i64 [ %600, %598 ], [ 0, %595 ]
  %603 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %506, i64 4
  store i64 %602, ptr %603, align 2, !tbaa !64
  br i1 %490, label %617, label %604

604:                                              ; preds = %601
  %605 = getelementptr inbounds [8 x [2 x i8]], ptr %597, i64 %503, i64 4
  %606 = load i16, ptr %605, align 2, !tbaa !64
  %607 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %506, i64 11
  store i16 %606, ptr %607, align 2, !tbaa !64
  %608 = getelementptr inbounds [8 x [2 x i8]], ptr %597, i64 %503, i64 5
  %609 = load i16, ptr %608, align 2, !tbaa !64
  %610 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %506, i64 19
  store i16 %609, ptr %610, align 2, !tbaa !64
  %611 = getelementptr inbounds [8 x [2 x i8]], ptr %597, i64 %503, i64 6
  %612 = load i16, ptr %611, align 2, !tbaa !64
  %613 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %506, i64 27
  store i16 %612, ptr %613, align 2, !tbaa !64
  %614 = getelementptr inbounds [8 x [2 x i8]], ptr %597, i64 %503, i64 3
  %615 = load i16, ptr %614, align 2, !tbaa !64
  %616 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %506, i64 35
  store i16 %615, ptr %616, align 2, !tbaa !64
  br label %624

617:                                              ; preds = %601, %617
  %618 = phi i64 [ %622, %617 ], [ 0, %601 ]
  %619 = shl nuw nsw i64 %618, 3
  %620 = add nuw nsw i64 %619, 11
  %621 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %506, i64 %620
  store i16 0, ptr %621, align 2, !tbaa !64
  %622 = add nuw nsw i64 %618, 1
  %623 = icmp eq i64 %622, 4
  br i1 %623, label %624, label %617, !llvm.loop !186

624:                                              ; preds = %617, %604, %594
  %625 = add nuw nsw i64 %506, 1
  %626 = icmp eq i64 %506, 0
  %627 = and i1 %481, %626
  br i1 %627, label %505, label %504, !llvm.loop !187

628:                                              ; preds = %504
  %629 = load i32, ptr %4, align 4, !tbaa !70
  %630 = and i32 %2, 1
  %631 = and i32 %630, %629
  %632 = zext nneg i32 %631 to i64
  %633 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 81, i64 %632
  %634 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 82
  store ptr %633, ptr %634, align 16, !tbaa !75
  %635 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 79, i64 %632
  %636 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 80
  store ptr %635, ptr %636, align 8, !tbaa !188
  %637 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  %638 = load i32, ptr %637, align 16, !tbaa !99
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %674, label %640

640:                                              ; preds = %628
  %641 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 12
  store i32 0, ptr %641, align 4, !tbaa !64
  %642 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 20
  store i32 0, ptr %642, align 4, !tbaa !64
  %643 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 28
  store i32 0, ptr %643, align 4, !tbaa !64
  %644 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 36
  store i32 0, ptr %644, align 4, !tbaa !64
  %645 = load i32, ptr %29, align 8, !tbaa !160
  %646 = and i32 %645, 1
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %654, label %648

648:                                              ; preds = %640
  %649 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 49
  %650 = load ptr, ptr %649, align 16, !tbaa !94
  %651 = sext i32 %167 to i64
  %652 = getelementptr inbounds i8, ptr %650, i64 %651
  %653 = load i8, ptr %652, align 1, !tbaa !64
  br label %654

654:                                              ; preds = %640, %648
  %655 = phi i8 [ %653, %648 ], [ 0, %640 ]
  %656 = and i8 %655, 2
  %657 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 11
  store i8 %656, ptr %657, align 1, !tbaa !64
  %658 = and i8 %655, 8
  %659 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 27
  store i8 %658, ptr %659, align 1, !tbaa !64
  %660 = and i32 %645, 2
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %668, label %662

662:                                              ; preds = %654
  %663 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 49
  %664 = load ptr, ptr %663, align 16, !tbaa !94
  %665 = sext i32 %168 to i64
  %666 = getelementptr inbounds i8, ptr %664, i64 %665
  %667 = load i8, ptr %666, align 1, !tbaa !64
  br label %668

668:                                              ; preds = %654, %662
  %669 = phi i8 [ %667, %662 ], [ 0, %654 ]
  %670 = and i8 %669, 4
  %671 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 4
  store i8 %670, ptr %671, align 1, !tbaa !64
  %672 = and i8 %669, 8
  %673 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 6
  store i8 %672, ptr %673, align 1, !tbaa !64
  br label %674

674:                                              ; preds = %628, %668, %504
  %675 = icmp eq i32 %476, 0
  br i1 %675, label %676, label %678

676:                                              ; preds = %674
  %677 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 10
  tail call void @x264_mb_predict_mv_pskip(ptr noundef %0, ptr noundef nonnull %677) #13
  br label %678

678:                                              ; preds = %674, %676, %449
  %679 = load i32, ptr %30, align 4, !tbaa !161
  %680 = and i32 %679, 11
  %681 = shl i32 %679, 1
  %682 = and i32 %681, 4
  %683 = or disjoint i32 %682, %680
  %684 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 25
  store i32 %683, ptr %684, align 4, !tbaa !67
  %685 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26
  store i32 %683, ptr %685, align 4, !tbaa !67
  %686 = and i32 %679, 2
  %687 = icmp eq i32 %686, 0
  %688 = select i1 %687, i32 1, i32 15
  %689 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 1
  store i32 %688, ptr %689, align 4, !tbaa !67
  %690 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 4
  store i32 %688, ptr %690, align 4, !tbaa !67
  %691 = and i32 %679, 1
  %692 = icmp eq i32 %691, 0
  %693 = select i1 %692, i32 6, i32 15
  %694 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 25, i64 2
  store i32 %693, ptr %694, align 4, !tbaa !67
  %695 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 10
  store i32 %693, ptr %695, align 4, !tbaa !67
  %696 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 8
  store i32 %693, ptr %696, align 4, !tbaa !67
  %697 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 2
  store i32 %693, ptr %697, align 4, !tbaa !67
  %698 = and i32 %679, 4
  %699 = select i1 %687, i32 0, i32 10
  %700 = or disjoint i32 %698, %699
  %701 = or disjoint i32 %700, 1
  %702 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 25, i64 1
  store i32 %701, ptr %702, align 4, !tbaa !67
  %703 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 5
  store i32 %701, ptr %703, align 4, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #6

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @x264_macroblock_load_pic_pointers(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #7 {
  %5 = alloca [2 x i32], align 4
  %6 = icmp eq i32 %3, 0
  %7 = select i1 %6, i32 16, i32 8
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %9 = load ptr, ptr %8, align 16, !tbaa !116
  %10 = icmp ne i32 %3, 0
  %11 = zext i1 %10 to i32
  %12 = zext i1 %10 to i64
  %13 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 24, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !67
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %16 = load i32, ptr %15, align 4, !tbaa !70
  %17 = shl i32 %14, %16
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %4
  %20 = and i32 %2, -2
  %21 = mul nsw i32 %14, %20
  %22 = add nsw i32 %21, %1
  %23 = select i1 %6, i32 4, i32 3
  %24 = shl i32 %22, %23
  %25 = and i32 %2, 1
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 0, i32 %14
  %28 = add nsw i32 %24, %27
  br label %34

29:                                               ; preds = %4
  %30 = mul nsw i32 %14, %2
  %31 = add nsw i32 %30, %1
  %32 = select i1 %6, i32 4, i32 3
  %33 = shl i32 %31, %32
  br label %34

34:                                               ; preds = %29, %19
  %35 = phi i32 [ %28, %19 ], [ %33, %29 ]
  %36 = zext nneg i32 %3 to i64
  %37 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 30, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !69
  %39 = sext i32 %35 to i64
  %40 = getelementptr inbounds i8, ptr %38, i64 %39
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %42 = load i32, ptr %41, align 4, !tbaa !143
  %43 = and i32 %42, %2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 62, i64 %44, i64 %36
  %46 = load ptr, ptr %45, align 8, !tbaa !69
  %47 = shl nsw i32 %1, 4
  %48 = ashr exact i32 %47, %11
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, ptr %46, i64 %49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store i32 %35, ptr %5, align 4, !tbaa !67
  %51 = getelementptr inbounds i32, ptr %5, i64 1
  %52 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47
  %53 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49
  br i1 %18, label %60, label %54

54:                                               ; preds = %34
  %55 = shl i32 %2, 1
  %56 = and i32 %55, 2
  %57 = sub nsw i32 1, %56
  %58 = mul nsw i32 %14, %57
  %59 = add nsw i32 %35, %58
  br label %60

60:                                               ; preds = %54, %34
  %61 = phi i32 [ %59, %54 ], [ %35, %34 ]
  store i32 %61, ptr %51, align 4, !tbaa !67
  %62 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23, i64 %36
  store i32 %17, ptr %62, align 4, !tbaa !67
  %63 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %64 = load ptr, ptr %63, align 8, !tbaa !183
  %65 = getelementptr inbounds %struct.x264_frame, ptr %64, i64 0, i32 30, i64 %36
  %66 = load ptr, ptr %65, align 8, !tbaa !69
  %67 = getelementptr inbounds i8, ptr %66, i64 %39
  %68 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 17, i64 %36
  store ptr %67, ptr %68, align 8, !tbaa !69
  %69 = select i1 %10, i64 3, i64 0
  %70 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !69
  %72 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 %36
  %73 = load ptr, ptr %72, align 8, !tbaa !69
  tail call void %71(ptr noundef %73, i32 noundef 16, ptr noundef %67, i32 noundef %17, i32 noundef %7) #13
  %74 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 %36
  %75 = load ptr, ptr %74, align 8, !tbaa !69
  %76 = getelementptr inbounds i8, ptr %75, i64 -33
  %77 = getelementptr inbounds i8, ptr %50, i64 -1
  %78 = select i1 %6, i64 25, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %76, ptr noundef nonnull align 1 dereferenceable(13) %77, i64 %78, i1 false)
  %79 = load i32, ptr %15, align 4, !tbaa !70
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %96, label %81

81:                                               ; preds = %60
  %82 = getelementptr i8, ptr %40, i64 -1
  %83 = sext i32 %17 to i64
  %84 = zext nneg i32 %7 to i64
  br label %85

85:                                               ; preds = %81, %85
  %86 = phi i64 [ 0, %81 ], [ %94, %85 ]
  %87 = mul nsw i64 %86, %83
  %88 = getelementptr i8, ptr %82, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !64
  %90 = load ptr, ptr %74, align 8, !tbaa !69
  %91 = shl nsw i64 %86, 5
  %92 = getelementptr i8, ptr %90, i64 %91
  %93 = getelementptr i8, ptr %92, i64 -1
  store i8 %89, ptr %93, align 1, !tbaa !64
  %94 = add nuw nsw i64 %86, 1
  %95 = icmp eq i64 %94, %84
  br i1 %95, label %96, label %85, !llvm.loop !189

96:                                               ; preds = %85, %60
  %97 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  %98 = load i32, ptr %97, align 8, !tbaa !67
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load i32, ptr %15, align 4, !tbaa !70
  %102 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20
  %103 = add nuw nsw i32 %3, 3
  %104 = select i1 %6, i32 0, i32 %103
  %105 = zext nneg i32 %104 to i64
  %106 = zext nneg i32 %98 to i64
  br label %121

107:                                              ; preds = %160, %96
  %108 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %109 = load i32, ptr %108, align 16, !tbaa !34
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %190

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19, i64 1
  %113 = load i32, ptr %112, align 4, !tbaa !67
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %190

115:                                              ; preds = %111
  %116 = load i32, ptr %15, align 4, !tbaa !70
  %117 = add nuw nsw i32 %3, 3
  %118 = select i1 %6, i32 0, i32 %117
  %119 = zext nneg i32 %118 to i64
  %120 = zext nneg i32 %113 to i64
  br label %163

121:                                              ; preds = %100, %160
  %122 = phi i64 [ 0, %100 ], [ %161, %160 ]
  %123 = trunc i64 %122 to i32
  %124 = lshr i32 %123, %101
  %125 = zext nneg i32 %124 to i64
  %126 = getelementptr inbounds ptr, ptr %52, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !69
  %128 = getelementptr inbounds %struct.x264_frame, ptr %127, i64 0, i32 30, i64 %36
  %129 = load ptr, ptr %128, align 8, !tbaa !69
  %130 = and i64 %122, 1
  %131 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !67
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, ptr %129, i64 %133
  %135 = getelementptr inbounds [32 x [6 x ptr]], ptr %102, i64 0, i64 %122
  %136 = getelementptr inbounds [32 x [6 x ptr]], ptr %102, i64 0, i64 %122, i64 %105
  store ptr %134, ptr %136, align 8, !tbaa !69
  br i1 %6, label %141, label %160

137:                                              ; preds = %141
  %138 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 %122, i64 0, i32 5
  %139 = load ptr, ptr %138, align 16, !tbaa !73
  %140 = icmp eq ptr %139, null
  br i1 %140, label %155, label %150

141:                                              ; preds = %121, %141
  %142 = phi i64 [ %148, %141 ], [ 1, %121 ]
  %143 = load ptr, ptr %126, align 8, !tbaa !69
  %144 = getelementptr inbounds %struct.x264_frame, ptr %143, i64 0, i32 31, i64 %142
  %145 = load ptr, ptr %144, align 8, !tbaa !69
  %146 = getelementptr inbounds i8, ptr %145, i64 %133
  %147 = getelementptr inbounds [32 x [6 x ptr]], ptr %102, i64 0, i64 %122, i64 %142
  store ptr %146, ptr %147, align 8, !tbaa !69
  %148 = add nuw nsw i64 %142, 1
  %149 = icmp eq i64 %148, 4
  br i1 %149, label %137, label %141, !llvm.loop !190

150:                                              ; preds = %137
  %151 = load ptr, ptr %63, align 8, !tbaa !183
  %152 = getelementptr inbounds %struct.x264_frame, ptr %151, i64 0, i32 38, i64 %125
  %153 = load ptr, ptr %152, align 8, !tbaa !69
  %154 = getelementptr inbounds i8, ptr %153, i64 %133
  br label %157

155:                                              ; preds = %137
  %156 = load ptr, ptr %135, align 16, !tbaa !69
  br label %157

157:                                              ; preds = %150, %155
  %158 = phi ptr [ %156, %155 ], [ %154, %150 ]
  %159 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 21, i64 %122
  store ptr %158, ptr %159, align 8, !tbaa !69
  br label %160

160:                                              ; preds = %157, %121
  %161 = add nuw nsw i64 %122, 1
  %162 = icmp eq i64 %161, %106
  br i1 %162, label %107, label %121, !llvm.loop !191

163:                                              ; preds = %115, %187
  %164 = phi i64 [ 0, %115 ], [ %188, %187 ]
  %165 = trunc i64 %164 to i32
  %166 = lshr i32 %165, %116
  %167 = zext nneg i32 %166 to i64
  %168 = getelementptr inbounds ptr, ptr %53, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !69
  %170 = getelementptr inbounds %struct.x264_frame, ptr %169, i64 0, i32 30, i64 %36
  %171 = load ptr, ptr %170, align 8, !tbaa !69
  %172 = and i64 %164, 1
  %173 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !67
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, ptr %171, i64 %175
  %177 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20, i64 1, i64 %164, i64 %119
  store ptr %176, ptr %177, align 8, !tbaa !69
  br i1 %6, label %178, label %187

178:                                              ; preds = %163, %178
  %179 = phi i64 [ %185, %178 ], [ 1, %163 ]
  %180 = load ptr, ptr %168, align 8, !tbaa !69
  %181 = getelementptr inbounds %struct.x264_frame, ptr %180, i64 0, i32 31, i64 %179
  %182 = load ptr, ptr %181, align 8, !tbaa !69
  %183 = getelementptr inbounds i8, ptr %182, i64 %175
  %184 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20, i64 1, i64 %164, i64 %179
  store ptr %183, ptr %184, align 8, !tbaa !69
  %185 = add nuw nsw i64 %179, 1
  %186 = icmp eq i64 %185, 4
  br i1 %186, label %187, label %178, !llvm.loop !192

187:                                              ; preds = %178, %163
  %188 = add nuw nsw i64 %164, 1
  %189 = icmp eq i64 %188, %120
  br i1 %189, label %190, label %163, !llvm.loop !193

190:                                              ; preds = %187, %111, %107
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare void @x264_mb_predict_mv_pskip(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_load_neighbours_deblock(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 {
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 31
  %5 = load i32, ptr %4, align 4, !tbaa !194
  %6 = icmp eq i32 %5, 2
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %8 = load i32, ptr %7, align 4, !tbaa !70
  %9 = shl nsw i32 -1, %8
  %10 = add i32 %9, %2
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !88
  %13 = mul nsw i32 %10, %12
  %14 = add nsw i32 %13, %1
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 24
  store i32 0, ptr %15, align 8, !tbaa !160
  %16 = mul nsw i32 %12, %2
  %17 = add nsw i32 %16, %1
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  store i32 %17, ptr %18, align 8, !tbaa !157
  %19 = icmp sgt i32 %1, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = add nsw i32 %17, -1
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 34
  store i32 %21, ptr %22, align 8, !tbaa !163
  br i1 %6, label %23, label %33

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 51
  %25 = load ptr, ptr %24, align 16, !tbaa !96
  %26 = sext i32 %21 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !65
  %29 = sext i32 %17 to i64
  %30 = getelementptr inbounds i16, ptr %25, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !65
  %32 = icmp eq i16 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23, %20
  store i32 1, ptr %15, align 8, !tbaa !160
  br label %34

34:                                               ; preds = %23, %33, %3
  %35 = icmp sgt i32 %14, -1
  br i1 %35, label %36, label %51

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 35
  store i32 %14, ptr %37, align 4, !tbaa !168
  br i1 %6, label %38, label %48

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 51
  %40 = load ptr, ptr %39, align 16, !tbaa !96
  %41 = zext nneg i32 %14 to i64
  %42 = getelementptr inbounds i16, ptr %40, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !65
  %44 = sext i32 %17 to i64
  %45 = getelementptr inbounds i16, ptr %40, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !65
  %47 = icmp eq i16 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %38, %36
  %49 = load i32, ptr %15, align 8, !tbaa !160
  %50 = or i32 %49, 2
  store i32 %50, ptr %15, align 8, !tbaa !160
  br label %51

51:                                               ; preds = %38, %48, %34
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_load_deblock(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 38
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !157
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %3, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !64
  %9 = icmp ult i8 %8, 4
  br i1 %9, label %235, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !165
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %162, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 31
  %16 = load i32, ptr %15, align 4, !tbaa !194
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %162, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 24
  %20 = load i32, ptr %19, align 8, !tbaa !160
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 4
  %22 = load i32, ptr %21, align 16, !tbaa !156
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !71
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %26 = load i32, ptr %25, align 4, !tbaa !70
  %27 = shl nsw i32 -1, %26
  %28 = add i32 %27, %24
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !88
  %31 = mul nsw i32 %28, %30
  %32 = add nsw i32 %31, %22
  store i32 0, ptr %19, align 8, !tbaa !160
  %33 = mul nsw i32 %30, %24
  %34 = add nsw i32 %33, %22
  store i32 %34, ptr %4, align 8, !tbaa !157
  %35 = icmp sgt i32 %22, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %18
  %37 = add nsw i32 %34, -1
  %38 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 34
  store i32 %37, ptr %38, align 8, !tbaa !163
  store i32 1, ptr %19, align 8, !tbaa !160
  br label %39

39:                                               ; preds = %36, %18
  %40 = icmp sgt i32 %32, -1
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 35
  store i32 %32, ptr %42, align 4, !tbaa !168
  %43 = load i32, ptr %19, align 8, !tbaa !160
  %44 = or i32 %43, 2
  store i32 %44, ptr %19, align 8, !tbaa !160
  br label %45

45:                                               ; preds = %39, %41
  %46 = xor i32 %20, -1
  %47 = load i32, ptr %19, align 8, !tbaa !160
  %48 = and i32 %47, %46
  store i32 %48, ptr %19, align 8, !tbaa !160
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %162, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 34
  %52 = load i32, ptr %51, align 8, !tbaa !163
  %53 = shl nsw i32 %28, 1
  %54 = or disjoint i32 %53, 1
  %55 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !89
  %57 = mul nsw i32 %56, %54
  %58 = shl nsw i32 %22, 1
  %59 = add nsw i32 %57, %58
  %60 = shl nsw i32 %28, 2
  %61 = or disjoint i32 %60, 3
  %62 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 3
  %63 = load i32, ptr %62, align 4, !tbaa !90
  %64 = mul nsw i32 %63, %61
  %65 = shl nsw i32 %22, 2
  %66 = add nsw i32 %64, %65
  %67 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 43
  %68 = load ptr, ptr %67, align 16, !tbaa !98
  %69 = and i32 %48, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %50
  %72 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 35
  %73 = load i32, ptr %72, align 4, !tbaa !168
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [24 x i8], ptr %68, i64 %74, i64 12
  %76 = load i32, ptr %75, align 4, !tbaa !64
  %77 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 4
  store i32 %76, ptr %77, align 1, !tbaa !64
  br label %78

78:                                               ; preds = %71, %50
  %79 = and i32 %48, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %78
  %82 = sext i32 %52 to i64
  %83 = getelementptr inbounds [24 x i8], ptr %68, i64 %82, i64 3
  %84 = load i8, ptr %83, align 1, !tbaa !64
  %85 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 11
  store i8 %84, ptr %85, align 1, !tbaa !64
  %86 = getelementptr inbounds [24 x i8], ptr %68, i64 %82, i64 7
  %87 = load i8, ptr %86, align 1, !tbaa !64
  %88 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 19
  store i8 %87, ptr %88, align 1, !tbaa !64
  %89 = getelementptr inbounds [24 x i8], ptr %68, i64 %82, i64 11
  %90 = load i8, ptr %89, align 1, !tbaa !64
  %91 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 27
  store i8 %90, ptr %91, align 1, !tbaa !64
  %92 = getelementptr inbounds [24 x i8], ptr %68, i64 %82, i64 15
  %93 = load i8, ptr %92, align 1, !tbaa !64
  %94 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 35
  store i8 %93, ptr %94, align 1, !tbaa !64
  br label %95

95:                                               ; preds = %81, %78
  %96 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %97 = load i32, ptr %96, align 16, !tbaa !34
  %98 = icmp eq i32 %97, 1
  %99 = sext i32 %59 to i64
  %100 = sext i32 %66 to i64
  %101 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 7
  %102 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 8
  %103 = shl nsw i32 %63, 1
  %104 = mul nsw i32 %63, 3
  br label %105

105:                                              ; preds = %95, %158
  %106 = phi i64 [ 0, %95 ], [ %159, %158 ]
  %107 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 45, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !69
  %109 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 47, i64 %106
  %110 = load ptr, ptr %109, align 8, !tbaa !69
  br i1 %70, label %122, label %111

111:                                              ; preds = %105
  %112 = getelementptr inbounds i8, ptr %110, i64 %99
  %113 = load i8, ptr %112, align 1, !tbaa !64
  %114 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %106, i64 5
  store i8 %113, ptr %114, align 1, !tbaa !64
  %115 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %106, i64 4
  store i8 %113, ptr %115, align 1, !tbaa !64
  %116 = getelementptr i8, ptr %112, i64 1
  %117 = load i8, ptr %116, align 1, !tbaa !64
  %118 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %106, i64 7
  store i8 %117, ptr %118, align 1, !tbaa !64
  %119 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %106, i64 6
  store i8 %117, ptr %119, align 1, !tbaa !64
  %120 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %106, i64 4
  %121 = getelementptr inbounds [2 x i16], ptr %108, i64 %100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %120, ptr noundef nonnull align 8 dereferenceable(16) %121, i64 16, i1 false), !tbaa.struct !184
  br label %122

122:                                              ; preds = %111, %105
  br i1 %80, label %158, label %123

123:                                              ; preds = %122
  %124 = load i32, ptr %101, align 4, !tbaa !158
  %125 = add nsw i32 %124, -1
  %126 = load i32, ptr %102, align 16, !tbaa !159
  %127 = add nsw i32 %126, -1
  %128 = sext i32 %125 to i64
  %129 = getelementptr inbounds i8, ptr %110, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !64
  %131 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %106, i64 19
  store i8 %130, ptr %131, align 1, !tbaa !64
  %132 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %106, i64 11
  store i8 %130, ptr %132, align 1, !tbaa !64
  %133 = add nsw i32 %125, %56
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, ptr %110, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !64
  %137 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %106, i64 35
  store i8 %136, ptr %137, align 1, !tbaa !64
  %138 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %106, i64 27
  store i8 %136, ptr %138, align 1, !tbaa !64
  %139 = sext i32 %127 to i64
  %140 = getelementptr inbounds [2 x i16], ptr %108, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !64
  %142 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %106, i64 11
  store i32 %141, ptr %142, align 4, !tbaa !64
  %143 = add nsw i32 %127, %63
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [2 x i16], ptr %108, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !64
  %147 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %106, i64 19
  store i32 %146, ptr %147, align 4, !tbaa !64
  %148 = add nsw i32 %127, %103
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [2 x i16], ptr %108, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !64
  %152 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %106, i64 27
  store i32 %151, ptr %152, align 4, !tbaa !64
  %153 = add nsw i32 %127, %104
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [2 x i16], ptr %108, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !64
  %157 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %106, i64 35
  store i32 %156, ptr %157, align 4, !tbaa !64
  br label %158

158:                                              ; preds = %123, %122
  %159 = add nuw nsw i64 %106, 1
  %160 = icmp eq i64 %106, 0
  %161 = and i1 %160, %98
  br i1 %161, label %105, label %162, !llvm.loop !195

162:                                              ; preds = %158, %45, %14, %10
  %163 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  %164 = load i32, ptr %163, align 4, !tbaa !104
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %235, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %168 = load i32, ptr %167, align 16, !tbaa !34
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %235

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 4
  %172 = load i8, ptr %171, align 1, !tbaa !64
  %173 = sext i8 %172 to i64
  %174 = add nsw i64 %173, 2
  %175 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 85, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !64
  %177 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 5
  store i8 %176, ptr %177, align 1, !tbaa !64
  store i8 %176, ptr %171, align 1, !tbaa !64
  %178 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 6
  %179 = load i8, ptr %178, align 1, !tbaa !64
  %180 = sext i8 %179 to i64
  %181 = add nsw i64 %180, 2
  %182 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 85, i64 %181
  %183 = load i8, ptr %182, align 1, !tbaa !64
  %184 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 7
  store i8 %183, ptr %184, align 1, !tbaa !64
  store i8 %183, ptr %178, align 1, !tbaa !64
  %185 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 11
  %186 = load i8, ptr %185, align 1, !tbaa !64
  %187 = sext i8 %186 to i64
  %188 = add nsw i64 %187, 2
  %189 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 85, i64 %188
  %190 = load i8, ptr %189, align 1, !tbaa !64
  %191 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 19
  store i8 %190, ptr %191, align 1, !tbaa !64
  store i8 %190, ptr %185, align 1, !tbaa !64
  %192 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 27
  %193 = load i8, ptr %192, align 1, !tbaa !64
  %194 = sext i8 %193 to i64
  %195 = add nsw i64 %194, 2
  %196 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 85, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !64
  %198 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 35
  store i8 %197, ptr %198, align 1, !tbaa !64
  store i8 %197, ptr %192, align 1, !tbaa !64
  %199 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %200 = load i8, ptr %199, align 1, !tbaa !64
  %201 = sext i8 %200 to i64
  %202 = add nsw i64 %201, 2
  %203 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 85, i64 %202
  %204 = load i8, ptr %203, align 1, !tbaa !64
  %205 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 14
  %206 = load i8, ptr %205, align 1, !tbaa !64
  %207 = sext i8 %206 to i64
  %208 = add nsw i64 %207, 2
  %209 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 85, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !64
  %211 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 28
  %212 = load i8, ptr %211, align 1, !tbaa !64
  %213 = sext i8 %212 to i64
  %214 = add nsw i64 %213, 2
  %215 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 85, i64 %214
  %216 = load i8, ptr %215, align 1, !tbaa !64
  %217 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 30
  %218 = load i8, ptr %217, align 1, !tbaa !64
  %219 = sext i8 %218 to i64
  %220 = add nsw i64 %219, 2
  %221 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 85, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !64
  %223 = zext i8 %204 to i32
  %224 = zext i8 %210 to i32
  %225 = shl nuw nsw i32 %224, 16
  %226 = or disjoint i32 %225, %223
  %227 = mul nuw i32 %226, 257
  %228 = zext i8 %216 to i32
  %229 = zext i8 %222 to i32
  %230 = shl nuw nsw i32 %229, 16
  %231 = or disjoint i32 %230, %228
  %232 = mul nuw i32 %231, 257
  store i32 %227, ptr %199, align 1, !tbaa !64
  %233 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 20
  store i32 %227, ptr %233, align 1, !tbaa !64
  store i32 %232, ptr %211, align 1, !tbaa !64
  %234 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 36
  store i32 %232, ptr %234, align 1, !tbaa !64
  br label %235

235:                                              ; preds = %1, %170, %166, %162
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_cache_save(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !157
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 53
  %5 = load i32, ptr %4, align 8, !tbaa !196
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [19 x i8], ptr @x264_mb_type_fix, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !64
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !89
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !90
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 8
  %14 = load i32, ptr %13, align 16, !tbaa !159
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 7
  %16 = load i32, ptr %15, align 4, !tbaa !158
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 42
  %18 = load ptr, ptr %17, align 8, !tbaa !97
  %19 = sext i32 %3 to i64
  %20 = getelementptr inbounds [8 x i8], ptr %18, i64 %19
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 43
  %22 = load ptr, ptr %21, align 16, !tbaa !98
  %23 = getelementptr inbounds [24 x i8], ptr %22, i64 %19
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %25 = load ptr, ptr %24, align 16, !tbaa !116
  %26 = getelementptr inbounds %struct.x264_frame, ptr %25, i64 0, i32 24, i64 0
  %27 = load i32, ptr %26, align 4, !tbaa !67
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %29 = load i32, ptr %28, align 4, !tbaa !70
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 4
  %32 = load i32, ptr %31, align 16, !tbaa !156
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %34 = load i32, ptr %33, align 4, !tbaa !71
  br i1 %30, label %44, label %35

35:                                               ; preds = %1
  %36 = and i32 %34, 268435454
  %37 = mul i32 %36, %27
  %38 = add i32 %37, %32
  %39 = shl i32 %38, 4
  %40 = and i32 %34, 1
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 0, i32 %27
  %43 = add nsw i32 %39, %42
  br label %48

44:                                               ; preds = %1
  %45 = mul nsw i32 %34, %27
  %46 = add nsw i32 %45, %32
  %47 = shl i32 %46, 4
  br label %48

48:                                               ; preds = %35, %44
  %49 = phi i32 [ %43, %35 ], [ %47, %44 ]
  %50 = shl i32 %27, %29
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 0
  %52 = load ptr, ptr %51, align 8, !tbaa !69
  %53 = getelementptr inbounds %struct.x264_frame, ptr %25, i64 0, i32 30, i64 0
  %54 = load ptr, ptr %53, align 8, !tbaa !69
  %55 = sext i32 %49 to i64
  %56 = getelementptr inbounds i8, ptr %54, i64 %55
  %57 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 0
  %58 = load ptr, ptr %57, align 8, !tbaa !69
  tail call void %52(ptr noundef %56, i32 noundef %50, ptr noundef %58, i32 noundef 32, i32 noundef 16) #13
  %59 = load ptr, ptr %24, align 16, !tbaa !116
  %60 = getelementptr inbounds %struct.x264_frame, ptr %59, i64 0, i32 24, i64 1
  %61 = load i32, ptr %60, align 4, !tbaa !67
  %62 = load i32, ptr %28, align 4, !tbaa !70
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 4
  %65 = load i32, ptr %64, align 16, !tbaa !156
  %66 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %67 = load i32, ptr %66, align 4, !tbaa !71
  br i1 %63, label %77, label %68

68:                                               ; preds = %48
  %69 = and i32 %67, 536870910
  %70 = mul i32 %69, %61
  %71 = add i32 %70, %65
  %72 = shl i32 %71, 3
  %73 = and i32 %67, 1
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, i32 0, i32 %61
  %76 = add nsw i32 %72, %75
  br label %81

77:                                               ; preds = %48
  %78 = mul nsw i32 %67, %61
  %79 = add nsw i32 %78, %65
  %80 = shl i32 %79, 3
  br label %81

81:                                               ; preds = %68, %77
  %82 = phi i32 [ %76, %68 ], [ %80, %77 ]
  %83 = shl i32 %61, %62
  %84 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 3
  %85 = load ptr, ptr %84, align 8, !tbaa !69
  %86 = getelementptr inbounds %struct.x264_frame, ptr %59, i64 0, i32 30, i64 1
  %87 = load ptr, ptr %86, align 8, !tbaa !69
  %88 = sext i32 %82 to i64
  %89 = getelementptr inbounds i8, ptr %87, i64 %88
  %90 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !69
  tail call void %85(ptr noundef %89, i32 noundef %83, ptr noundef %91, i32 noundef 32, i32 noundef 8) #13
  %92 = load ptr, ptr %24, align 16, !tbaa !116
  %93 = getelementptr inbounds %struct.x264_frame, ptr %92, i64 0, i32 24, i64 1
  %94 = load i32, ptr %93, align 4, !tbaa !67
  %95 = load i32, ptr %28, align 4, !tbaa !70
  %96 = icmp eq i32 %95, 0
  %97 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 4
  %98 = load i32, ptr %97, align 16, !tbaa !156
  %99 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %100 = load i32, ptr %99, align 4, !tbaa !71
  br i1 %96, label %110, label %101

101:                                              ; preds = %81
  %102 = and i32 %100, 536870910
  %103 = mul i32 %102, %94
  %104 = add i32 %103, %98
  %105 = shl i32 %104, 3
  %106 = and i32 %100, 1
  %107 = icmp eq i32 %106, 0
  %108 = select i1 %107, i32 0, i32 %94
  %109 = add nsw i32 %105, %108
  br label %114

110:                                              ; preds = %81
  %111 = mul nsw i32 %100, %94
  %112 = add nsw i32 %111, %98
  %113 = shl i32 %112, 3
  br label %114

114:                                              ; preds = %101, %110
  %115 = phi i32 [ %109, %101 ], [ %113, %110 ]
  %116 = shl i32 %94, %95
  %117 = load ptr, ptr %84, align 8, !tbaa !69
  %118 = getelementptr inbounds %struct.x264_frame, ptr %92, i64 0, i32 30, i64 2
  %119 = load ptr, ptr %118, align 8, !tbaa !69
  %120 = sext i32 %115 to i64
  %121 = getelementptr inbounds i8, ptr %119, i64 %120
  %122 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %123 = load ptr, ptr %122, align 8, !tbaa !69
  tail call void %117(ptr noundef %121, i32 noundef %116, ptr noundef %123, i32 noundef 32, i32 noundef 8) #13
  %124 = load ptr, ptr %24, align 16, !tbaa !116
  %125 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 4
  %126 = load i32, ptr %125, align 16, !tbaa !156
  %127 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %128 = load i32, ptr %127, align 4, !tbaa !71
  %129 = getelementptr inbounds %struct.x264_frame, ptr %124, i64 0, i32 24
  %130 = load i32, ptr %129, align 8, !tbaa !67
  %131 = getelementptr inbounds %struct.x264_frame, ptr %124, i64 0, i32 24, i64 1
  %132 = load i32, ptr %131, align 4, !tbaa !67
  %133 = mul nsw i32 %130, %128
  %134 = add nsw i32 %133, %126
  %135 = shl nsw i32 %134, 4
  %136 = mul nsw i32 %132, %128
  %137 = add nsw i32 %136, %126
  %138 = shl nsw i32 %137, 3
  %139 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 8
  %140 = load ptr, ptr %139, align 8, !tbaa !155
  %141 = getelementptr inbounds %struct.x264_frame, ptr %124, i64 0, i32 30
  %142 = load ptr, ptr %141, align 8, !tbaa !69
  %143 = sext i32 %135 to i64
  %144 = getelementptr inbounds i8, ptr %142, i64 %143
  %145 = and i32 %126, 1
  %146 = add nuw nsw i32 %145, 1
  %147 = zext nneg i32 %146 to i64
  %148 = getelementptr inbounds %struct.x264_frame, ptr %124, i64 0, i32 30, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !69
  %150 = sext i32 %138 to i64
  %151 = getelementptr inbounds i8, ptr %149, i64 %150
  tail call void %140(ptr noundef %144, i32 noundef %130, ptr noundef %151, i32 noundef %132, i32 noundef %126) #13
  %152 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 38
  %153 = load ptr, ptr %152, align 8, !tbaa !133
  %154 = getelementptr inbounds i8, ptr %153, i64 %19
  store i8 %8, ptr %154, align 1, !tbaa !64
  %155 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 3
  %156 = load i32, ptr %155, align 4, !tbaa !165
  %157 = trunc i32 %156 to i16
  %158 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 51
  %159 = load ptr, ptr %158, align 16, !tbaa !96
  %160 = getelementptr inbounds i16, ptr %159, i64 %19
  store i16 %157, ptr %160, align 2, !tbaa !65
  %161 = icmp ult i32 %5, 2
  %162 = icmp eq i32 %5, 3
  %163 = icmp ult i32 %5, 4
  br i1 %163, label %167, label %164

164:                                              ; preds = %114
  %165 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %166 = load i32, ptr %165, align 4, !tbaa !77
  br label %167

167:                                              ; preds = %114, %164
  %168 = phi i32 [ %166, %164 ], [ 16, %114 ]
  %169 = trunc i32 %168 to i8
  %170 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 39
  %171 = load ptr, ptr %170, align 16, !tbaa !135
  %172 = getelementptr inbounds i8, ptr %171, i64 %19
  store i8 %169, ptr %172, align 1, !tbaa !64
  %173 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 33
  store i32 %3, ptr %173, align 4, !tbaa !197
  br i1 %161, label %174, label %191

174:                                              ; preds = %167
  %175 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 0, i64 36
  %176 = load i32, ptr %175, align 1, !tbaa !64
  store i32 %176, ptr %20, align 4, !tbaa !64
  %177 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 0, i64 15
  %178 = load i8, ptr %177, align 1, !tbaa !64
  %179 = sext i8 %178 to i32
  %180 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 0, i64 23
  %181 = load i8, ptr %180, align 1, !tbaa !64
  %182 = sext i8 %181 to i32
  %183 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 0, i64 31
  %184 = load i8, ptr %183, align 1, !tbaa !64
  %185 = sext i8 %184 to i32
  %186 = shl nsw i32 %182, 8
  %187 = add nsw i32 %186, %179
  %188 = shl nsw i32 %185, 16
  %189 = add nsw i32 %187, %188
  %190 = getelementptr inbounds i8, ptr %20, i64 4
  store i32 %189, ptr %190, align 4, !tbaa !64
  br label %200

191:                                              ; preds = %167
  %192 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 27
  %193 = load i32, ptr %192, align 4, !tbaa !166
  %194 = icmp eq i32 %193, 0
  %195 = and i32 %5, -2
  %196 = icmp eq i32 %195, 2
  %197 = or i1 %196, %194
  br i1 %197, label %198, label %199

198:                                              ; preds = %191
  store i64 144680345676153346, ptr %20, align 8, !tbaa !64
  br label %200

199:                                              ; preds = %191
  store i64 -1, ptr %20, align 8, !tbaa !64
  br label %200

200:                                              ; preds = %198, %199, %174
  br i1 %162, label %201, label %220

201:                                              ; preds = %200
  %202 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 40
  %203 = load ptr, ptr %202, align 8, !tbaa !92
  %204 = getelementptr inbounds i8, ptr %203, i64 %19
  store i8 0, ptr %204, align 1, !tbaa !64
  %205 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 71
  store i32 0, ptr %205, align 4, !tbaa !198
  %206 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  store i32 2, ptr %206, align 4, !tbaa !199
  %207 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  store i32 15, ptr %207, align 8, !tbaa !200
  %208 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 41
  %209 = load ptr, ptr %208, align 16, !tbaa !93
  %210 = getelementptr inbounds i16, ptr %209, i64 %19
  store i16 1839, ptr %210, align 2, !tbaa !65
  %211 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  store i32 0, ptr %211, align 4, !tbaa !201
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %23, i8 16, i64 24, i1 false)
  br label %212

212:                                              ; preds = %201, %212
  %213 = phi i64 [ 0, %201 ], [ %218, %212 ]
  %214 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %213
  %215 = load i32, ptr %214, align 4, !tbaa !67
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %216
  store i8 16, ptr %217, align 1, !tbaa !64
  %218 = add nuw nsw i64 %213, 1
  %219 = icmp eq i64 %218, 24
  br i1 %219, label %278, label %212, !llvm.loop !202

220:                                              ; preds = %200
  %221 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 12
  %222 = load i32, ptr %221, align 1, !tbaa !64
  store i32 %222, ptr %23, align 4, !tbaa !64
  %223 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 20
  %224 = load i32, ptr %223, align 1, !tbaa !64
  %225 = getelementptr inbounds i8, ptr %23, i64 4
  store i32 %224, ptr %225, align 4, !tbaa !64
  %226 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 28
  %227 = load i32, ptr %226, align 1, !tbaa !64
  %228 = getelementptr inbounds i8, ptr %23, i64 8
  store i32 %227, ptr %228, align 4, !tbaa !64
  %229 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 36
  %230 = load i32, ptr %229, align 1, !tbaa !64
  %231 = getelementptr inbounds i8, ptr %23, i64 12
  store i32 %230, ptr %231, align 4, !tbaa !64
  %232 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 8
  %233 = load i32, ptr %232, align 1, !tbaa !64
  %234 = lshr i32 %233, 8
  %235 = trunc i32 %234 to i16
  %236 = getelementptr inbounds i8, ptr %23, i64 16
  store i16 %235, ptr %236, align 2, !tbaa !64
  %237 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 16
  %238 = load i32, ptr %237, align 1, !tbaa !64
  %239 = lshr i32 %238, 8
  %240 = trunc i32 %239 to i16
  %241 = getelementptr inbounds i8, ptr %23, i64 18
  store i16 %240, ptr %241, align 2, !tbaa !64
  %242 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 32
  %243 = load i32, ptr %242, align 1, !tbaa !64
  %244 = lshr i32 %243, 8
  %245 = trunc i32 %244 to i16
  %246 = getelementptr inbounds i8, ptr %23, i64 20
  store i16 %245, ptr %246, align 2, !tbaa !64
  %247 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 40
  %248 = load i32, ptr %247, align 1, !tbaa !64
  %249 = lshr i32 %248, 8
  %250 = trunc i32 %249 to i16
  %251 = getelementptr inbounds i8, ptr %23, i64 22
  store i16 %250, ptr %251, align 2, !tbaa !64
  %252 = load i32, ptr %4, align 8, !tbaa !196
  %253 = icmp eq i32 %252, 2
  br i1 %253, label %266, label %254

254:                                              ; preds = %220
  %255 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %256 = load i32, ptr %255, align 8, !tbaa !200
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %266

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  %260 = load i32, ptr %259, align 4, !tbaa !199
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %258
  %263 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 70
  %264 = load i32, ptr %263, align 8, !tbaa !203
  %265 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 68
  store i32 %264, ptr %265, align 16, !tbaa !204
  br label %266

266:                                              ; preds = %262, %258, %254, %220
  %267 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 68
  %268 = load i32, ptr %267, align 16, !tbaa !204
  %269 = trunc i32 %268 to i8
  %270 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 40
  %271 = load ptr, ptr %270, align 8, !tbaa !92
  %272 = getelementptr inbounds i8, ptr %271, i64 %19
  store i8 %269, ptr %272, align 1, !tbaa !64
  %273 = load i32, ptr %267, align 16, !tbaa !204
  %274 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 70
  %275 = load i32, ptr %274, align 8, !tbaa !203
  %276 = sub nsw i32 %273, %275
  %277 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 71
  store i32 %276, ptr %277, align 4, !tbaa !198
  store i32 %273, ptr %274, align 8, !tbaa !203
  br label %278

278:                                              ; preds = %212, %266
  %279 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %280 = load i32, ptr %279, align 8, !tbaa !200
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %278
  %283 = load i32, ptr %4, align 8, !tbaa !196
  %284 = icmp eq i32 %283, 1
  br i1 %284, label %287, label %285

285:                                              ; preds = %282
  %286 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  store i32 0, ptr %286, align 4, !tbaa !201
  br label %287

287:                                              ; preds = %285, %282, %278
  %288 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  %289 = load i32, ptr %288, align 4, !tbaa !201
  %290 = trunc i32 %289 to i8
  %291 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 50
  %292 = load ptr, ptr %291, align 8, !tbaa !95
  %293 = getelementptr inbounds i8, ptr %292, i64 %19
  store i8 %290, ptr %293, align 1, !tbaa !64
  %294 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %295 = load i32, ptr %294, align 16, !tbaa !34
  %296 = icmp eq i32 %295, 2
  br i1 %296, label %378, label %297

297:                                              ; preds = %287
  %298 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 45
  %299 = load ptr, ptr %298, align 16, !tbaa !69
  %300 = sext i32 %14 to i64
  %301 = getelementptr inbounds [2 x i16], ptr %299, i64 %300
  %302 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 45, i64 1
  %303 = load ptr, ptr %302, align 8, !tbaa !69
  %304 = getelementptr inbounds [2 x i16], ptr %303, i64 %300
  %305 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 47
  %306 = load ptr, ptr %305, align 16, !tbaa !69
  %307 = sext i32 %16 to i64
  %308 = getelementptr inbounds i8, ptr %306, i64 %307
  %309 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 47, i64 1
  %310 = load ptr, ptr %309, align 8, !tbaa !69
  %311 = getelementptr inbounds i8, ptr %310, i64 %307
  br i1 %163, label %360, label %312

312:                                              ; preds = %297
  %313 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %314 = load i8, ptr %313, align 1, !tbaa !64
  store i8 %314, ptr %308, align 1, !tbaa !64
  %315 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 14
  %316 = load i8, ptr %315, align 1, !tbaa !64
  %317 = getelementptr inbounds i8, ptr %308, i64 1
  store i8 %316, ptr %317, align 1, !tbaa !64
  %318 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 28
  %319 = load i8, ptr %318, align 1, !tbaa !64
  %320 = sext i32 %10 to i64
  %321 = getelementptr inbounds i8, ptr %308, i64 %320
  store i8 %319, ptr %321, align 1, !tbaa !64
  %322 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 30
  %323 = load i8, ptr %322, align 1, !tbaa !64
  %324 = add nsw i32 %10, 1
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8, ptr %308, i64 %325
  store i8 %323, ptr %326, align 1, !tbaa !64
  %327 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %301, ptr noundef nonnull align 4 dereferenceable(16) %327, i64 16, i1 false), !tbaa.struct !184
  %328 = sext i32 %12 to i64
  %329 = getelementptr inbounds [2 x i16], ptr %301, i64 %328
  %330 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %329, ptr noundef nonnull align 4 dereferenceable(16) %330, i64 16, i1 false), !tbaa.struct !184
  %331 = shl nsw i32 %12, 1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [2 x i16], ptr %301, i64 %332
  %334 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %333, ptr noundef nonnull align 4 dereferenceable(16) %334, i64 16, i1 false), !tbaa.struct !184
  %335 = mul nsw i32 %12, 3
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [2 x i16], ptr %301, i64 %336
  %338 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %337, ptr noundef nonnull align 4 dereferenceable(16) %338, i64 16, i1 false), !tbaa.struct !184
  %339 = load i32, ptr %294, align 16, !tbaa !34
  %340 = icmp eq i32 %339, 1
  br i1 %340, label %341, label %378

341:                                              ; preds = %312
  %342 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 12
  %343 = load i8, ptr %342, align 1, !tbaa !64
  store i8 %343, ptr %311, align 1, !tbaa !64
  %344 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 14
  %345 = load i8, ptr %344, align 1, !tbaa !64
  %346 = getelementptr inbounds i8, ptr %311, i64 1
  store i8 %345, ptr %346, align 1, !tbaa !64
  %347 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 28
  %348 = load i8, ptr %347, align 1, !tbaa !64
  %349 = getelementptr inbounds i8, ptr %311, i64 %320
  store i8 %348, ptr %349, align 1, !tbaa !64
  %350 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 30
  %351 = load i8, ptr %350, align 1, !tbaa !64
  %352 = getelementptr inbounds i8, ptr %311, i64 %325
  store i8 %351, ptr %352, align 1, !tbaa !64
  %353 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %304, ptr noundef nonnull align 4 dereferenceable(16) %353, i64 16, i1 false), !tbaa.struct !184
  %354 = getelementptr inbounds [2 x i16], ptr %304, i64 %328
  %355 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %354, ptr noundef nonnull align 4 dereferenceable(16) %355, i64 16, i1 false), !tbaa.struct !184
  %356 = getelementptr inbounds [2 x i16], ptr %304, i64 %332
  %357 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %356, ptr noundef nonnull align 4 dereferenceable(16) %357, i64 16, i1 false), !tbaa.struct !184
  %358 = getelementptr inbounds [2 x i16], ptr %304, i64 %336
  %359 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %358, ptr noundef nonnull align 4 dereferenceable(16) %359, i64 16, i1 false), !tbaa.struct !184
  br label %378

360:                                              ; preds = %297
  store i16 -1, ptr %308, align 2, !tbaa !64
  %361 = sext i32 %10 to i64
  %362 = getelementptr inbounds i8, ptr %308, i64 %361
  store i16 -1, ptr %362, align 2, !tbaa !64
  %363 = sext i32 %12 to i64
  %364 = getelementptr inbounds [2 x i16], ptr %301, i64 %363
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %301, i8 0, i64 16, i1 false)
  %365 = shl nsw i32 %12, 1
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds [2 x i16], ptr %301, i64 %366
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %364, i8 0, i64 16, i1 false)
  %368 = mul nsw i32 %12, 3
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [2 x i16], ptr %301, i64 %369
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %367, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %370, i8 0, i64 16, i1 false)
  %371 = load i32, ptr %294, align 16, !tbaa !34
  %372 = icmp eq i32 %371, 1
  br i1 %372, label %373, label %378

373:                                              ; preds = %360
  store i16 -1, ptr %311, align 2, !tbaa !64
  %374 = getelementptr inbounds i8, ptr %311, i64 %361
  store i16 -1, ptr %374, align 2, !tbaa !64
  %375 = getelementptr inbounds [2 x i16], ptr %304, i64 %363
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %304, i8 0, i64 16, i1 false)
  %376 = getelementptr inbounds [2 x i16], ptr %304, i64 %366
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %375, i8 0, i64 16, i1 false)
  %377 = getelementptr inbounds [2 x i16], ptr %304, i64 %369
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %376, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %377, i8 0, i64 16, i1 false)
  br label %378

378:                                              ; preds = %341, %312, %373, %360, %287
  %379 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  %380 = load i32, ptr %379, align 16, !tbaa !99
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %461, label %382

382:                                              ; preds = %378
  %383 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 46
  %384 = load ptr, ptr %383, align 16, !tbaa !69
  %385 = getelementptr inbounds [8 x [2 x i8]], ptr %384, i64 %19
  %386 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 46, i64 1
  %387 = load ptr, ptr %386, align 8, !tbaa !69
  %388 = getelementptr inbounds [8 x [2 x i8]], ptr %387, i64 %19
  %389 = icmp ult i32 %5, 3
  br i1 %389, label %390, label %396

390:                                              ; preds = %382
  %391 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 60
  %392 = load i32, ptr %391, align 4, !tbaa !205
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode8x8c_fix, i64 0, i64 %393
  %395 = load i8, ptr %394, align 1, !tbaa !64
  br label %396

396:                                              ; preds = %382, %390
  %397 = phi i8 [ %395, %390 ], [ 0, %382 ]
  %398 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 44
  %399 = load ptr, ptr %398, align 8, !tbaa !100
  %400 = getelementptr inbounds i8, ptr %399, i64 %19
  store i8 %397, ptr %400, align 1, !tbaa !64
  switch i32 %5, label %401 [
    i32 18, label %427
    i32 7, label %427
    i32 6, label %427
    i32 3, label %427
    i32 2, label %427
    i32 1, label %427
    i32 0, label %427
  ]

401:                                              ; preds = %396
  %402 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 36
  %403 = load i64, ptr %402, align 2, !tbaa !64
  store i64 %403, ptr %385, align 8, !tbaa !64
  %404 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 15
  %405 = load i16, ptr %404, align 2, !tbaa !64
  %406 = getelementptr inbounds [2 x i8], ptr %385, i64 4
  store i16 %405, ptr %406, align 2, !tbaa !64
  %407 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 23
  %408 = load i16, ptr %407, align 2, !tbaa !64
  %409 = getelementptr inbounds [2 x i8], ptr %385, i64 5
  store i16 %408, ptr %409, align 2, !tbaa !64
  %410 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 31
  %411 = load i16, ptr %410, align 2, !tbaa !64
  %412 = getelementptr inbounds [2 x i8], ptr %385, i64 6
  store i16 %411, ptr %412, align 2, !tbaa !64
  %413 = load i32, ptr %294, align 16, !tbaa !34
  %414 = icmp eq i32 %413, 1
  br i1 %414, label %415, label %431

415:                                              ; preds = %401
  %416 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 1, i64 36
  %417 = load i64, ptr %416, align 2, !tbaa !64
  store i64 %417, ptr %388, align 8, !tbaa !64
  %418 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 1, i64 15
  %419 = load i16, ptr %418, align 2, !tbaa !64
  %420 = getelementptr inbounds [2 x i8], ptr %388, i64 4
  store i16 %419, ptr %420, align 2, !tbaa !64
  %421 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 1, i64 23
  %422 = load i16, ptr %421, align 2, !tbaa !64
  %423 = getelementptr inbounds [2 x i8], ptr %388, i64 5
  store i16 %422, ptr %423, align 2, !tbaa !64
  %424 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 1, i64 31
  %425 = load i16, ptr %424, align 2, !tbaa !64
  %426 = getelementptr inbounds [2 x i8], ptr %388, i64 6
  store i16 %425, ptr %426, align 2, !tbaa !64
  br label %431

427:                                              ; preds = %396, %396, %396, %396, %396, %396, %396
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %385, i8 0, i64 16, i1 false)
  %428 = load i32, ptr %294, align 16, !tbaa !34
  %429 = icmp eq i32 %428, 1
  br i1 %429, label %430, label %431

430:                                              ; preds = %427
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %388, i8 0, i64 16, i1 false)
  br label %431

431:                                              ; preds = %427, %430, %401, %415
  %432 = load i32, ptr %294, align 16, !tbaa !34
  %433 = icmp eq i32 %432, 1
  br i1 %433, label %434, label %461

434:                                              ; preds = %431
  switch i32 %5, label %455 [
    i32 18, label %456
    i32 7, label %456
    i32 17, label %435
  ]

435:                                              ; preds = %434
  %436 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55
  %437 = load i8, ptr %436, align 16, !tbaa !64
  %438 = icmp eq i8 %437, 12
  %439 = zext i1 %438 to i8
  %440 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 1
  %441 = load i8, ptr %440, align 1, !tbaa !64
  %442 = icmp eq i8 %441, 12
  %443 = select i1 %442, i8 2, i8 0
  %444 = or disjoint i8 %443, %439
  %445 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 2
  %446 = load i8, ptr %445, align 2, !tbaa !64
  %447 = icmp eq i8 %446, 12
  %448 = select i1 %447, i8 4, i8 0
  %449 = or disjoint i8 %444, %448
  %450 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 3
  %451 = load i8, ptr %450, align 1, !tbaa !64
  %452 = icmp eq i8 %451, 12
  %453 = select i1 %452, i8 8, i8 0
  %454 = or disjoint i8 %449, %453
  br label %456

455:                                              ; preds = %434
  br label %456

456:                                              ; preds = %434, %434, %455, %435
  %457 = phi i8 [ %454, %435 ], [ 0, %455 ], [ 15, %434 ], [ 15, %434 ]
  %458 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 49
  %459 = load ptr, ptr %458, align 16, !tbaa !94
  %460 = getelementptr inbounds i8, ptr %459, i64 %19
  store i8 %457, ptr %460, align 1, !tbaa !64
  br label %461

461:                                              ; preds = %456, %431, %378
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_bipred_init(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !143
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46
  %7 = load i32, ptr %6, align 8, !tbaa !136
  %8 = shl i32 %7, %3
  %9 = icmp sgt i32 %8, 0
  %10 = icmp eq i32 %3, 0
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 12
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 48
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 12
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 12
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %16 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 4
  %17 = add nuw i32 %3, 1
  %18 = zext i32 %17 to i64
  %19 = zext nneg i32 %8 to i64
  br label %20

20:                                               ; preds = %5, %29
  %21 = phi i64 [ 0, %5 ], [ %30, %29 ]
  br i1 %9, label %22, label %29

22:                                               ; preds = %20
  %23 = load i32, ptr %12, align 8, !tbaa !137
  %24 = shl i32 %23, %3
  %25 = icmp sgt i32 %24, 0
  %26 = zext nneg i32 %24 to i64
  %27 = trunc i64 %21 to i32
  br label %32

28:                                               ; preds = %29, %1
  ret void

29:                                               ; preds = %51, %20
  %30 = add nuw nsw i64 %21, 1
  %31 = icmp eq i64 %30, %18
  br i1 %31, label %28, label %20, !llvm.loop !206

32:                                               ; preds = %22, %51
  %33 = phi i64 [ 0, %22 ], [ %52, %51 ]
  %34 = trunc i64 %33 to i32
  %35 = lshr i32 %34, %3
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !69
  %39 = load i32, ptr %38, align 16, !tbaa !138
  %40 = and i64 %33, 1
  %41 = icmp eq i64 %21, %40
  %42 = or i1 %10, %41
  br i1 %42, label %46, label %43

43:                                               ; preds = %32
  %44 = load i32, ptr %11, align 8, !tbaa !144
  %45 = add nsw i32 %44, %39
  br label %46

46:                                               ; preds = %43, %32
  %47 = phi i32 [ %45, %43 ], [ %39, %32 ]
  br i1 %25, label %48, label %51

48:                                               ; preds = %46
  %49 = load i32, ptr %16, align 16, !tbaa !207
  %50 = icmp ne i32 %49, 0
  br label %54

51:                                               ; preds = %92, %46
  %52 = add nuw nsw i64 %33, 1
  %53 = icmp eq i64 %52, %19
  br i1 %53, label %29, label %32, !llvm.loop !208

54:                                               ; preds = %48, %92
  %55 = phi i64 [ 0, %48 ], [ %105, %92 ]
  %56 = trunc i64 %55 to i32
  %57 = lshr i32 %56, %3
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !69
  %61 = load i32, ptr %60, align 16, !tbaa !138
  %62 = and i64 %55, 1
  %63 = icmp eq i64 %21, %62
  %64 = or i1 %10, %63
  br i1 %64, label %68, label %65

65:                                               ; preds = %54
  %66 = load i32, ptr %13, align 8, !tbaa !144
  %67 = add nsw i32 %66, %61
  br label %68

68:                                               ; preds = %65, %54
  %69 = phi i32 [ %67, %65 ], [ %61, %54 ]
  %70 = icmp eq i32 %69, %47
  br i1 %70, label %92, label %71

71:                                               ; preds = %68
  %72 = sub nsw i32 %69, %47
  %73 = tail call i32 @llvm.smin.i32(i32 %72, i32 127)
  %74 = tail call i32 @llvm.smax.i32(i32 %73, i32 -128)
  %75 = load i32, ptr %14, align 8, !tbaa !144
  %76 = load ptr, ptr %15, align 16, !tbaa !116
  %77 = load i32, ptr %76, align 16, !tbaa !138
  %78 = mul nsw i32 %75, %27
  %79 = sub i32 %78, %47
  %80 = add i32 %79, %77
  %81 = tail call i32 @llvm.smin.i32(i32 %80, i32 127)
  %82 = tail call i32 @llvm.smax.i32(i32 %81, i32 -128)
  %83 = tail call i32 @llvm.abs.i32(i32 %74, i1 true)
  %84 = lshr i32 %83, 1
  %85 = add nuw nsw i32 %84, 16384
  %86 = sdiv i32 %85, %74
  %87 = mul nsw i32 %82, %86
  %88 = add nsw i32 %87, 32
  %89 = ashr i32 %88, 6
  %90 = tail call i32 @llvm.smin.i32(i32 %89, i32 1023)
  %91 = tail call i32 @llvm.smax.i32(i32 %90, i32 -1024)
  br label %92

92:                                               ; preds = %68, %71
  %93 = phi i32 [ %91, %71 ], [ 256, %68 ]
  %94 = trunc i32 %93 to i16
  %95 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 79, i64 %21, i64 %33, i64 %55
  store i16 %94, ptr %95, align 2, !tbaa !65
  %96 = ashr i32 %93, 2
  %97 = icmp sgt i32 %96, -65
  %98 = select i1 %50, i1 %97, i1 false
  %99 = icmp slt i32 %96, 129
  %100 = select i1 %98, i1 %99, i1 false
  %101 = trunc i32 %96 to i8
  %102 = sub i8 64, %101
  %103 = select i1 %100, i8 %102, i8 32
  %104 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 81, i64 %21, i64 %33, i64 %55
  store i8 %103, ptr %104, align 1, !tbaa !64
  %105 = add nuw nsw i64 %55, 1
  %106 = icmp eq i64 %105, %26
  br i1 %106, label %51, label %54, !llvm.loop !209
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }

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
!34 = !{!35, !37, i64 7248}
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
!64 = !{!38, !38, i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"short", !38, i64 0}
!67 = !{!37, !37, i64 0}
!68 = !{!35, !41, i64 32616}
!69 = !{!41, !41, i64 0}
!70 = !{!35, !37, i64 16436}
!71 = !{!35, !37, i64 16388}
!72 = !{!35, !41, i64 32632}
!73 = !{!74, !41, i64 48}
!74 = !{!"x264_weight_t", !38, i64 0, !38, i64 16, !37, i64 32, !37, i64 36, !37, i64 40, !41, i64 48}
!75 = !{!35, !41, i64 26624}
!76 = !{!35, !41, i64 32624}
!77 = !{!35, !37, i64 17388}
!78 = distinct !{!78, !79, !80}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !{!35, !37, i64 16368}
!82 = !{!35, !41, i64 3200}
!83 = !{!84, !37, i64 1084}
!84 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !38, i64 52, !37, i64 1076, !37, i64 1080, !37, i64 1084, !37, i64 1088, !37, i64 1092, !37, i64 1096, !37, i64 1100, !37, i64 1104, !85, i64 1108, !37, i64 1124, !86, i64 1128, !37, i64 1296}
!85 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12}
!86 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !37, i64 56, !37, i64 60, !37, i64 64, !37, i64 68, !37, i64 72, !37, i64 76, !37, i64 80, !87, i64 84, !37, i64 132, !37, i64 136, !37, i64 140, !37, i64 144, !37, i64 148, !37, i64 152, !37, i64 156, !37, i64 160, !37, i64 164}
!87 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44}
!88 = !{!35, !37, i64 16372}
!89 = !{!35, !37, i64 16376}
!90 = !{!35, !37, i64 16380}
!91 = !{!35, !37, i64 136}
!92 = !{!35, !41, i64 16632}
!93 = !{!35, !41, i64 16640}
!94 = !{!35, !41, i64 17232}
!95 = !{!35, !41, i64 17240}
!96 = !{!35, !41, i64 17248}
!97 = !{!35, !41, i64 16648}
!98 = !{!35, !41, i64 16656}
!99 = !{!35, !37, i64 128}
!100 = !{!35, !41, i64 16664}
!101 = distinct !{!101, !79, !80}
!102 = !{!35, !37, i64 112}
!103 = !{!35, !37, i64 80}
!104 = !{!35, !37, i64 396}
!105 = distinct !{!105, !79, !80}
!106 = !{!35, !37, i64 0}
!107 = !{!35, !37, i64 16}
!108 = !{!35, !37, i64 4}
!109 = !{!84, !37, i64 1088}
!110 = distinct !{!110, !79, !80}
!111 = distinct !{!111, !79, !80}
!112 = distinct !{!112, !79, !80}
!113 = distinct !{!113, !79, !80}
!114 = distinct !{!114, !79, !80}
!115 = distinct !{!115, !79, !80}
!116 = !{!35, !41, i64 14688}
!117 = !{!35, !37, i64 480}
!118 = !{!35, !37, i64 20}
!119 = !{!35, !37, i64 416}
!120 = !{!35, !37, i64 420}
!121 = !{!35, !37, i64 412}
!122 = !{!35, !41, i64 3328}
!123 = !{!124, !37, i64 60}
!124 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !37, i64 56, !37, i64 60, !37, i64 64, !38, i64 72}
!125 = !{!35, !37, i64 552}
!126 = !{!35, !41, i64 31176}
!127 = distinct !{!127, !79, !80}
!128 = distinct !{!128, !79, !80}
!129 = !{!130, !41, i64 3568}
!130 = !{!"x264_frame", !37, i64 0, !37, i64 4, !37, i64 8, !47, i64 16, !47, i64 24, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !41, i64 48, !37, i64 56, !37, i64 60, !37, i64 64, !37, i64 68, !37, i64 72, !37, i64 76, !37, i64 80, !38, i64 84, !38, i64 85, !38, i64 86, !43, i64 88, !43, i64 92, !37, i64 96, !37, i64 100, !38, i64 104, !38, i64 116, !38, i64 128, !37, i64 140, !37, i64 144, !37, i64 148, !38, i64 152, !38, i64 176, !38, i64 208, !41, i64 240, !38, i64 248, !38, i64 280, !38, i64 320, !38, i64 3392, !37, i64 3520, !41, i64 3528, !41, i64 3536, !41, i64 3544, !38, i64 3552, !41, i64 3568, !38, i64 3576, !38, i64 3848, !38, i64 6440, !38, i64 6712, !38, i64 6728, !38, i64 6736, !38, i64 6864, !38, i64 6868, !38, i64 8164, !37, i64 9460, !38, i64 9464, !38, i64 9536, !41, i64 12128, !41, i64 12136, !41, i64 12144, !41, i64 12152, !41, i64 12160, !37, i64 12168, !41, i64 12176, !41, i64 12184, !41, i64 12192, !37, i64 12200, !38, i64 12204, !37, i64 12276, !47, i64 12280, !131, i64 12288, !38, i64 12320, !38, i64 12572, !38, i64 13576, !37, i64 15584, !37, i64 15588, !37, i64 15592, !37, i64 15596, !37, i64 15600, !37, i64 15604, !37, i64 15608, !43, i64 15612, !37, i64 15616, !37, i64 15620, !37, i64 15624}
!131 = !{!"", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24}
!132 = !{!130, !41, i64 3536}
!133 = !{!35, !41, i64 16616}
!134 = !{!130, !41, i64 3544}
!135 = !{!35, !41, i64 16624}
!136 = !{!35, !37, i64 14696}
!137 = !{!35, !37, i64 14856}
!138 = !{!130, !37, i64 0}
!139 = distinct !{!139, !79, !80}
!140 = distinct !{!140, !79, !80}
!141 = distinct !{!141, !79, !80}
!142 = distinct !{!142, !79, !80}
!143 = !{!35, !37, i64 7268}
!144 = !{!35, !37, i64 7288}
!145 = distinct !{!145, !79, !80}
!146 = !{!130, !37, i64 68}
!147 = distinct !{!147, !79, !80}
!148 = !{!35, !37, i64 16404}
!149 = !{!35, !37, i64 428}
!150 = !{!35, !37, i64 16408}
!151 = !{!35, !37, i64 432}
!152 = !{!35, !37, i64 16412}
!153 = !{!35, !37, i64 448}
!154 = !{!35, !37, i64 16424}
!155 = !{!35, !41, i64 32800}
!156 = !{!35, !37, i64 16384}
!157 = !{!35, !37, i64 16392}
!158 = !{!35, !37, i64 16396}
!159 = !{!35, !37, i64 16400}
!160 = !{!35, !37, i64 16488}
!161 = !{!35, !37, i64 16572}
!162 = !{!35, !37, i64 16576}
!163 = !{!35, !37, i64 16600}
!164 = !{!35, !37, i64 16584}
!165 = !{!35, !37, i64 7252}
!166 = !{!35, !37, i64 140}
!167 = !{!35, !37, i64 1748}
!168 = !{!35, !37, i64 16604}
!169 = !{!35, !37, i64 16580}
!170 = !{!35, !37, i64 16608}
!171 = !{!35, !37, i64 16588}
!172 = !{!35, !37, i64 16612}
!173 = !{!35, !37, i64 16592}
!174 = !{!35, !37, i64 25776}
!175 = !{!35, !37, i64 25780}
!176 = distinct !{!176, !79, !80}
!177 = !{!35, !37, i64 25768}
!178 = !{!35, !37, i64 25772}
!179 = distinct !{!179, !79, !80}
!180 = !{!130, !41, i64 240}
!181 = distinct !{!181, !79, !80}
!182 = distinct !{!182, !79, !80}
!183 = !{!35, !41, i64 14680}
!184 = !{i64 0, i64 16, !64}
!185 = distinct !{!185, !79, !80}
!186 = distinct !{!186, !79, !80}
!187 = distinct !{!187, !79, !80}
!188 = !{!35, !41, i64 26360}
!189 = distinct !{!189, !79, !80}
!190 = distinct !{!190, !79, !80}
!191 = distinct !{!191, !79, !80}
!192 = distinct !{!192, !79, !80}
!193 = distinct !{!193, !79, !80}
!194 = !{!35, !37, i64 13884}
!195 = distinct !{!195, !79, !80}
!196 = !{!35, !37, i64 17384}
!197 = !{!35, !37, i64 16596}
!198 = !{!35, !37, i64 25804}
!199 = !{!35, !37, i64 17404}
!200 = !{!35, !37, i64 17400}
!201 = !{!35, !37, i64 17396}
!202 = distinct !{!202, !79, !80}
!203 = !{!35, !37, i64 25800}
!204 = !{!35, !37, i64 25792}
!205 = !{!35, !37, i64 17412}
!206 = distinct !{!206, !79, !80}
!207 = !{!35, !37, i64 400}
!208 = distinct !{!208, !79, !80}
!209 = distinct !{!209, !79, !80}
