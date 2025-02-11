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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_mb_mc_8x8(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = shl i32 %1, 1
  %4 = and i32 %3, 2
  %5 = and i32 %1, -2
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %7 = load i32, ptr %6, align 16, !tbaa !5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !35
  switch i8 %12, label %37 [
    i8 3, label %13
    i8 1, label %14
    i8 2, label %16
    i8 0, label %18
  ]

13:                                               ; preds = %9
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %0, i32 noundef %4, i32 noundef %5, i32 noundef 2, i32 noundef 2) #16
  br label %37

14:                                               ; preds = %9
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %0, i32 noundef %4, i32 noundef %5, i32 noundef 2, i32 noundef 1) #16
  %15 = or i32 %1, 1
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %0, i32 noundef %4, i32 noundef %15, i32 noundef 2, i32 noundef 1) #16
  br label %37

16:                                               ; preds = %9
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %0, i32 noundef %4, i32 noundef %5, i32 noundef 1, i32 noundef 2) #16
  %17 = or disjoint i32 %4, 1
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %0, i32 noundef %17, i32 noundef %5, i32 noundef 1, i32 noundef 2) #16
  br label %37

18:                                               ; preds = %9
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %0, i32 noundef %4, i32 noundef %5, i32 noundef 1, i32 noundef 1) #16
  %19 = or disjoint i32 %4, 1
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %0, i32 noundef %19, i32 noundef %5, i32 noundef 1, i32 noundef 1) #16
  %20 = or i32 %1, 1
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %0, i32 noundef %4, i32 noundef %20, i32 noundef 1, i32 noundef 1) #16
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %0, i32 noundef %19, i32 noundef %20, i32 noundef 1, i32 noundef 1) #16
  br label %37

21:                                               ; preds = %2
  %22 = shl nsw i32 %1, 3
  %23 = or disjoint i32 %4, %22
  %24 = or i32 %23, 12
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds [40 x i8], ptr %25, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !35
  %29 = icmp sgt i8 %28, -1
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 %26
  %32 = load i8, ptr %31, align 1, !tbaa !35
  %33 = icmp sgt i8 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef nonnull %0, i32 noundef %4, i32 noundef %5, i32 noundef 2, i32 noundef 2) #16
  br label %37

35:                                               ; preds = %30
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %0, i32 noundef %4, i32 noundef %5, i32 noundef 2, i32 noundef 2) #16
  br label %37

36:                                               ; preds = %21
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef nonnull %0, i32 noundef %4, i32 noundef %5, i32 noundef 2, i32 noundef 2) #16
  br label %37

37:                                               ; preds = %36, %35, %34, %13, %14, %16, %18, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_mb_mc_0xywh(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = add nuw nsw i32 %1, 12
  %7 = shl nsw i32 %2, 3
  %8 = add nsw i32 %6, %7
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds [40 x i8], ptr %9, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !35
  %13 = sext i8 %12 to i32
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4
  %15 = getelementptr inbounds [40 x [2 x i16]], ptr %14, i64 0, i64 %10
  %16 = load i16, ptr %15, align 4, !tbaa !36
  %17 = sext i16 %16 to i32
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 18
  %19 = load i32, ptr %18, align 8, !tbaa !38
  %20 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 19
  %21 = load i32, ptr %20, align 16, !tbaa !38
  %22 = tail call fastcc i32 @x264_clip3(i32 noundef %17, i32 noundef %19, i32 noundef %21) #16
  %23 = shl nuw nsw i32 %1, 4
  %24 = add nsw i32 %22, %23
  %25 = getelementptr inbounds [40 x [2 x i16]], ptr %14, i64 0, i64 %10, i64 1
  %26 = load i16, ptr %25, align 2, !tbaa !36
  %27 = sext i16 %26 to i32
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 18, i64 1
  %29 = load i32, ptr %28, align 4, !tbaa !38
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 19, i64 1
  %31 = load i32, ptr %30, align 4, !tbaa !38
  %32 = tail call fastcc i32 @x264_clip3(i32 noundef %27, i32 noundef %29, i32 noundef %31) #16
  %33 = shl nsw i32 %2, 4
  %34 = add nsw i32 %32, %33
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70
  %36 = load ptr, ptr %35, align 8, !tbaa !39
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %38 = load ptr, ptr %37, align 16, !tbaa !40
  %39 = shl nsw i32 %2, 7
  %40 = shl nuw nsw i32 %1, 2
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %38, i64 %42
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20
  %45 = sext i8 %12 to i64
  %46 = getelementptr inbounds [32 x [6 x ptr]], ptr %44, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23
  %48 = load i32, ptr %47, align 16, !tbaa !38
  %49 = shl nuw nsw i32 %3, 2
  %50 = shl nuw nsw i32 %4, 2
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 %45
  tail call void %36(ptr noundef %43, i32 noundef 32, ptr noundef nonnull %46, i32 noundef %48, i32 noundef %24, i32 noundef %34, i32 noundef %49, i32 noundef %50, ptr noundef nonnull %51) #17
  %52 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %53 = load i32, ptr %52, align 4, !tbaa !41
  %54 = and i32 %53, %13
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %5
  %57 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %58 = load i32, ptr %57, align 4, !tbaa !42
  %59 = shl i32 %58, 2
  %60 = and i32 %59, 4
  %61 = add i32 %34, -2
  %62 = add i32 %61, %60
  br label %63

63:                                               ; preds = %56, %5
  %64 = phi i32 [ %62, %56 ], [ %34, %5 ]
  %65 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !43
  %67 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %68 = load ptr, ptr %67, align 8, !tbaa !40
  %69 = shl nsw i32 %2, 6
  %70 = shl nuw nsw i32 %1, 1
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %68, i64 %72
  %74 = getelementptr inbounds [32 x [6 x ptr]], ptr %44, i64 0, i64 %45, i64 4
  %75 = load ptr, ptr %74, align 16, !tbaa !40
  %76 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23, i64 1
  %77 = load i32, ptr %76, align 4, !tbaa !38
  %78 = shl nuw nsw i32 %3, 1
  %79 = shl nuw nsw i32 %4, 1
  tail call void %66(ptr noundef %73, i32 noundef 32, ptr noundef %75, i32 noundef %77, i32 noundef %24, i32 noundef %64, i32 noundef %78, i32 noundef %79) #17
  %80 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 %45, i64 1, i32 5
  %81 = load ptr, ptr %80, align 16, !tbaa !44
  %82 = icmp eq ptr %81, null
  br i1 %82, label %91, label %83

83:                                               ; preds = %63
  %84 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 %45, i64 1
  %85 = lshr i32 %3, 1
  %86 = zext nneg i32 %85 to i64
  %87 = getelementptr inbounds ptr, ptr %81, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !40
  %89 = load ptr, ptr %67, align 8, !tbaa !40
  %90 = getelementptr inbounds i8, ptr %89, i64 %72
  tail call void %88(ptr noundef %90, i32 noundef 32, ptr noundef %90, i32 noundef 32, ptr noundef nonnull %84, i32 noundef %79) #17
  br label %91

91:                                               ; preds = %83, %63
  %92 = load ptr, ptr %65, align 8, !tbaa !43
  %93 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %94 = load ptr, ptr %93, align 16, !tbaa !40
  %95 = getelementptr inbounds i8, ptr %94, i64 %72
  %96 = getelementptr inbounds [32 x [6 x ptr]], ptr %44, i64 0, i64 %45, i64 5
  %97 = load ptr, ptr %96, align 8, !tbaa !40
  %98 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23, i64 2
  %99 = load i32, ptr %98, align 8, !tbaa !38
  tail call void %92(ptr noundef %95, i32 noundef 32, ptr noundef %97, i32 noundef %99, i32 noundef %24, i32 noundef %64, i32 noundef %78, i32 noundef %79) #17
  %100 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 %45, i64 2, i32 5
  %101 = load ptr, ptr %100, align 16, !tbaa !44
  %102 = icmp eq ptr %101, null
  br i1 %102, label %111, label %103

103:                                              ; preds = %91
  %104 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 %45, i64 2
  %105 = lshr i32 %3, 1
  %106 = zext nneg i32 %105 to i64
  %107 = getelementptr inbounds ptr, ptr %101, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !40
  %109 = load ptr, ptr %93, align 16, !tbaa !40
  %110 = getelementptr inbounds i8, ptr %109, i64 %72
  tail call void %108(ptr noundef %110, i32 noundef 32, ptr noundef %110, i32 noundef 32, ptr noundef nonnull %104, i32 noundef %79) #17
  br label %111

111:                                              ; preds = %103, %91
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %16 = load i8, ptr %15, align 1, !tbaa !35
  %17 = sext i8 %16 to i32
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 %14
  %19 = load i8, ptr %18, align 1, !tbaa !35
  %20 = sext i8 %19 to i32
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 82
  %22 = load ptr, ptr %21, align 16, !tbaa !46
  %23 = sext i8 %16 to i64
  %24 = sext i8 %19 to i64
  %25 = getelementptr inbounds [4 x i8], ptr %22, i64 %23, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !35
  %27 = sext i8 %26 to i32
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4
  %29 = getelementptr inbounds [40 x [2 x i16]], ptr %28, i64 0, i64 %14
  %30 = load i16, ptr %29, align 4, !tbaa !36
  %31 = sext i16 %30 to i32
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 18
  %33 = load i32, ptr %32, align 8, !tbaa !38
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 19
  %35 = load i32, ptr %34, align 16, !tbaa !38
  %36 = tail call fastcc i32 @x264_clip3(i32 noundef %31, i32 noundef %33, i32 noundef %35) #16
  %37 = shl nuw nsw i32 %1, 4
  %38 = add nsw i32 %36, %37
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 %14
  %40 = load i16, ptr %39, align 4, !tbaa !36
  %41 = sext i16 %40 to i32
  %42 = tail call fastcc i32 @x264_clip3(i32 noundef %41, i32 noundef %33, i32 noundef %35) #16
  %43 = add nsw i32 %42, %37
  %44 = getelementptr inbounds [40 x [2 x i16]], ptr %28, i64 0, i64 %14, i64 1
  %45 = load i16, ptr %44, align 2, !tbaa !36
  %46 = sext i16 %45 to i32
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 18, i64 1
  %48 = load i32, ptr %47, align 4, !tbaa !38
  %49 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 19, i64 1
  %50 = load i32, ptr %49, align 4, !tbaa !38
  %51 = tail call fastcc i32 @x264_clip3(i32 noundef %46, i32 noundef %48, i32 noundef %50) #16
  %52 = shl nsw i32 %2, 4
  %53 = add nsw i32 %51, %52
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 %14, i64 1
  %55 = load i16, ptr %54, align 2, !tbaa !36
  %56 = sext i16 %55 to i32
  %57 = tail call fastcc i32 @x264_clip3(i32 noundef %56, i32 noundef %48, i32 noundef %50) #16
  %58 = add nsw i32 %57, %52
  %59 = zext nneg i32 %4 to i64
  %60 = zext nneg i32 %3 to i64
  %61 = getelementptr inbounds [5 x [5 x i8]], ptr @x264_size2pixel, i64 0, i64 %59, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store i32 16, ptr %6, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  store i32 16, ptr %7, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #18
  %63 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !47
  %65 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20
  %66 = getelementptr inbounds [32 x [6 x ptr]], ptr %65, i64 0, i64 %23
  %67 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23
  %68 = load i32, ptr %67, align 16, !tbaa !38
  %69 = shl nuw nsw i32 %3, 2
  %70 = shl nuw nsw i32 %4, 2
  %71 = call ptr %64(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %66, i32 noundef %68, i32 noundef %38, i32 noundef %53, i32 noundef %69, i32 noundef %70, ptr noundef nonnull @weight_none) #17
  %72 = load ptr, ptr %63, align 8, !tbaa !47
  %73 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20, i64 1, i64 %24
  %74 = load i32, ptr %67, align 16, !tbaa !38
  %75 = call ptr %72(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %73, i32 noundef %74, i32 noundef %43, i32 noundef %58, i32 noundef %69, i32 noundef %70, ptr noundef nonnull @weight_none) #17
  %76 = zext i8 %62 to i64
  %77 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 3, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !40
  %79 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %80 = load ptr, ptr %79, align 16, !tbaa !40
  %81 = shl nsw i32 %2, 7
  %82 = shl nuw nsw i32 %1, 2
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %80, i64 %84
  %86 = load i32, ptr %6, align 4, !tbaa !38
  %87 = load i32, ptr %7, align 4, !tbaa !38
  call void %78(ptr noundef %85, i32 noundef 32, ptr noundef %71, i32 noundef %86, ptr noundef %75, i32 noundef %87, i32 noundef %27) #17
  %88 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %89 = load i32, ptr %88, align 4, !tbaa !41
  %90 = and i32 %89, %17
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %5
  %93 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %94 = load i32, ptr %93, align 4, !tbaa !42
  %95 = shl i32 %94, 2
  %96 = and i32 %95, 4
  %97 = add i32 %53, -2
  %98 = add i32 %97, %96
  br label %99

99:                                               ; preds = %92, %5
  %100 = phi i32 [ %98, %92 ], [ %53, %5 ]
  %101 = and i32 %89, %20
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %105 = load i32, ptr %104, align 4, !tbaa !42
  %106 = shl i32 %105, 2
  %107 = and i32 %106, 4
  %108 = add i32 %58, -2
  %109 = add i32 %108, %107
  br label %110

110:                                              ; preds = %103, %99
  %111 = phi i32 [ %109, %103 ], [ %58, %99 ]
  %112 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !43
  %114 = getelementptr inbounds [32 x [6 x ptr]], ptr %65, i64 0, i64 %23, i64 4
  %115 = load ptr, ptr %114, align 16, !tbaa !40
  %116 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23, i64 1
  %117 = load i32, ptr %116, align 4, !tbaa !38
  %118 = shl nuw nsw i32 %3, 1
  %119 = shl nuw nsw i32 %4, 1
  call void %113(ptr noundef nonnull %8, i32 noundef 16, ptr noundef %115, i32 noundef %117, i32 noundef %38, i32 noundef %100, i32 noundef %118, i32 noundef %119) #17
  %120 = load ptr, ptr %112, align 8, !tbaa !43
  %121 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20, i64 1, i64 %24, i64 4
  %122 = load ptr, ptr %121, align 16, !tbaa !40
  %123 = load i32, ptr %116, align 4, !tbaa !38
  call void %120(ptr noundef nonnull %9, i32 noundef 16, ptr noundef %122, i32 noundef %123, i32 noundef %43, i32 noundef %111, i32 noundef %118, i32 noundef %119) #17
  %124 = add nuw nsw i64 %76, 3
  %125 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 3, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !40
  %127 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %128 = load ptr, ptr %127, align 8, !tbaa !40
  %129 = shl nsw i32 %2, 6
  %130 = shl nuw nsw i32 %1, 1
  %131 = add nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, ptr %128, i64 %132
  call void %126(ptr noundef %133, i32 noundef 32, ptr noundef nonnull %8, i32 noundef 16, ptr noundef nonnull %9, i32 noundef 16, i32 noundef %27) #17
  %134 = load ptr, ptr %112, align 8, !tbaa !43
  %135 = getelementptr inbounds [32 x [6 x ptr]], ptr %65, i64 0, i64 %23, i64 5
  %136 = load ptr, ptr %135, align 8, !tbaa !40
  %137 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23, i64 2
  %138 = load i32, ptr %137, align 8, !tbaa !38
  call void %134(ptr noundef nonnull %8, i32 noundef 16, ptr noundef %136, i32 noundef %138, i32 noundef %38, i32 noundef %100, i32 noundef %118, i32 noundef %119) #17
  %139 = load ptr, ptr %112, align 8, !tbaa !43
  %140 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20, i64 1, i64 %24, i64 5
  %141 = load ptr, ptr %140, align 8, !tbaa !40
  %142 = load i32, ptr %137, align 8, !tbaa !38
  call void %139(ptr noundef nonnull %9, i32 noundef 16, ptr noundef %141, i32 noundef %142, i32 noundef %43, i32 noundef %111, i32 noundef %118, i32 noundef %119) #17
  %143 = load ptr, ptr %125, align 8, !tbaa !40
  %144 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %145 = load ptr, ptr %144, align 16, !tbaa !40
  %146 = getelementptr inbounds i8, ptr %145, i64 %132
  call void %143(ptr noundef %146, i32 noundef 32, ptr noundef nonnull %8, i32 noundef 16, ptr noundef nonnull %9, i32 noundef 16, i32 noundef %27) #17
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_mb_mc_1xywh(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = add nuw nsw i32 %1, 12
  %7 = shl nsw i32 %2, 3
  %8 = add nsw i32 %6, %7
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !35
  %12 = sext i8 %11 to i32
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 %9
  %14 = load i16, ptr %13, align 4, !tbaa !36
  %15 = sext i16 %14 to i32
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 18
  %17 = load i32, ptr %16, align 8, !tbaa !38
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 19
  %19 = load i32, ptr %18, align 16, !tbaa !38
  %20 = tail call fastcc i32 @x264_clip3(i32 noundef %15, i32 noundef %17, i32 noundef %19) #16
  %21 = shl nuw nsw i32 %1, 4
  %22 = add nsw i32 %20, %21
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 %9, i64 1
  %24 = load i16, ptr %23, align 2, !tbaa !36
  %25 = sext i16 %24 to i32
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 18, i64 1
  %27 = load i32, ptr %26, align 4, !tbaa !38
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 19, i64 1
  %29 = load i32, ptr %28, align 4, !tbaa !38
  %30 = tail call fastcc i32 @x264_clip3(i32 noundef %25, i32 noundef %27, i32 noundef %29) #16
  %31 = shl nsw i32 %2, 4
  %32 = add nsw i32 %30, %31
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70
  %34 = load ptr, ptr %33, align 8, !tbaa !39
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %36 = load ptr, ptr %35, align 16, !tbaa !40
  %37 = shl nsw i32 %2, 7
  %38 = shl nuw nsw i32 %1, 2
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %36, i64 %40
  %42 = sext i8 %11 to i64
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20, i64 1, i64 %42
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23
  %45 = load i32, ptr %44, align 16, !tbaa !38
  %46 = shl nuw nsw i32 %3, 2
  %47 = shl nuw nsw i32 %4, 2
  tail call void %34(ptr noundef %41, i32 noundef 32, ptr noundef nonnull %43, i32 noundef %45, i32 noundef %22, i32 noundef %32, i32 noundef %46, i32 noundef %47, ptr noundef nonnull @weight_none) #17
  %48 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %49 = load i32, ptr %48, align 4, !tbaa !41
  %50 = and i32 %49, %12
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %5
  %53 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %54 = load i32, ptr %53, align 4, !tbaa !42
  %55 = shl i32 %54, 2
  %56 = and i32 %55, 4
  %57 = add i32 %32, -2
  %58 = add i32 %57, %56
  br label %59

59:                                               ; preds = %52, %5
  %60 = phi i32 [ %58, %52 ], [ %32, %5 ]
  %61 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !43
  %63 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !40
  %65 = shl nsw i32 %2, 6
  %66 = shl nuw nsw i32 %1, 1
  %67 = add nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, ptr %64, i64 %68
  %70 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20, i64 1, i64 %42, i64 4
  %71 = load ptr, ptr %70, align 16, !tbaa !40
  %72 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23, i64 1
  %73 = load i32, ptr %72, align 4, !tbaa !38
  %74 = shl nuw nsw i32 %3, 1
  %75 = shl nuw nsw i32 %4, 1
  tail call void %62(ptr noundef %69, i32 noundef 32, ptr noundef %71, i32 noundef %73, i32 noundef %22, i32 noundef %60, i32 noundef %74, i32 noundef %75) #17
  %76 = load ptr, ptr %61, align 8, !tbaa !43
  %77 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %78 = load ptr, ptr %77, align 16, !tbaa !40
  %79 = getelementptr inbounds i8, ptr %78, i64 %68
  %80 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20, i64 1, i64 %42, i64 5
  %81 = load ptr, ptr %80, align 8, !tbaa !40
  %82 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23, i64 2
  %83 = load i32, ptr %82, align 8, !tbaa !38
  tail call void %76(ptr noundef %79, i32 noundef 32, ptr noundef %81, i32 noundef %83, i32 noundef %22, i32 noundef %60, i32 noundef %74, i32 noundef %75) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_mb_mc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %3 = load i32, ptr %2, align 4, !tbaa !48
  %4 = icmp eq i32 %3, 13
  br i1 %4, label %5, label %9

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %7, %5 ], [ 0, %1 ]
  tail call void @x264_mb_mc_8x8(ptr noundef %0, i32 noundef %6) #16
  %7 = add nuw nsw i32 %6, 1
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %53, label %5, !llvm.loop !49

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %11 = load i8, ptr %10, align 1, !tbaa !35
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 30
  %13 = load i8, ptr %12, align 1, !tbaa !35
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 12
  %15 = load i8, ptr %14, align 1, !tbaa !35
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 30
  %17 = load i8, ptr %16, align 1, !tbaa !35
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
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4) #16
  br label %53

23:                                               ; preds = %20
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4) #16
  br label %53

24:                                               ; preds = %18
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4) #16
  br label %53

25:                                               ; preds = %9
  %26 = icmp sgt i8 %11, -1
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = icmp sgt i8 %15, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 2) #16
  br label %32

30:                                               ; preds = %27
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 2) #16
  br label %32

31:                                               ; preds = %25
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 2) #16
  br label %32

32:                                               ; preds = %29, %30, %31
  %33 = icmp sgt i8 %13, -1
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  %35 = icmp sgt i8 %17, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef 2) #16
  br label %53

37:                                               ; preds = %34
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef 2) #16
  br label %53

38:                                               ; preds = %32
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef 2) #16
  br label %53

39:                                               ; preds = %9
  %40 = icmp sgt i8 %11, -1
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = icmp sgt i8 %15, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 4) #16
  br label %46

44:                                               ; preds = %41
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 4) #16
  br label %46

45:                                               ; preds = %39
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 4) #16
  br label %46

46:                                               ; preds = %43, %44, %45
  %47 = icmp sgt i8 %13, -1
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  %49 = icmp sgt i8 %17, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 0, i32 noundef 2, i32 noundef 4) #16
  br label %53

51:                                               ; preds = %48
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 0, i32 noundef 2, i32 noundef 4) #16
  br label %53

52:                                               ; preds = %46
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 0, i32 noundef 2, i32 noundef 4) #16
  br label %53

53:                                               ; preds = %5, %22, %23, %24, %50, %51, %52, %38, %37, %36, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @x264_macroblock_cache_allocate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %3 = load i32, ptr %2, align 16, !tbaa !51
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 16, !tbaa !52
  %6 = getelementptr inbounds %struct.x264_sps_t, ptr %5, i64 0, i32 16
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  store i32 %7, ptr %8, align 4, !tbaa !58
  %9 = shl nsw i32 %7, 1
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 2
  store i32 %9, ptr %10, align 8, !tbaa !59
  %11 = shl nsw i32 %7, 2
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 3
  store i32 %11, ptr %12, align 4, !tbaa !60
  %13 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  %14 = load i32, ptr %13, align 8, !tbaa !61
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  store i32 %14, ptr %15, align 4, !tbaa !41
  %16 = tail call ptr @x264_malloc(i32 noundef %3) #17
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 40
  store ptr %16, ptr %17, align 8, !tbaa !62
  %18 = icmp eq ptr %16, null
  br i1 %18, label %175, label %19

19:                                               ; preds = %1
  %20 = sext i32 %3 to i64
  %21 = shl nsw i64 %20, 1
  %22 = trunc i64 %21 to i32
  %23 = tail call ptr @x264_malloc(i32 noundef %22) #17
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 41
  store ptr %23, ptr %24, align 16, !tbaa !63
  %25 = icmp eq ptr %23, null
  br i1 %25, label %175, label %26

26:                                               ; preds = %19
  %27 = tail call ptr @x264_malloc(i32 noundef %3) #17
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 49
  store ptr %27, ptr %28, align 16, !tbaa !64
  %29 = icmp eq ptr %27, null
  br i1 %29, label %175, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @x264_malloc(i32 noundef %3) #17
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 50
  store ptr %31, ptr %32, align 8, !tbaa !65
  %33 = icmp eq ptr %31, null
  br i1 %33, label %175, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @x264_malloc(i32 noundef %22) #17
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 51
  store ptr %35, ptr %36, align 16, !tbaa !66
  %37 = icmp eq ptr %35, null
  br i1 %37, label %175, label %38

38:                                               ; preds = %34
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %35, i8 -1, i64 %21, i1 false)
  %39 = shl nsw i32 %3, 3
  %40 = tail call ptr @x264_malloc(i32 noundef %39) #17
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 42
  store ptr %40, ptr %41, align 8, !tbaa !67
  %42 = icmp eq ptr %40, null
  br i1 %42, label %175, label %43

43:                                               ; preds = %38
  %44 = mul nsw i32 %3, 24
  %45 = tail call ptr @x264_malloc(i32 noundef %44) #17
  %46 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 43
  store ptr %45, ptr %46, align 16, !tbaa !68
  %47 = icmp eq ptr %45, null
  br i1 %47, label %175, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  %50 = load i32, ptr %49, align 16, !tbaa !69
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %48
  %53 = tail call ptr @x264_malloc(i32 noundef %3) #17
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 44
  store ptr %53, ptr %54, align 8, !tbaa !70
  %55 = icmp eq ptr %53, null
  br i1 %55, label %175, label %56

56:                                               ; preds = %52
  %57 = shl i32 %3, 4
  %58 = tail call ptr @x264_malloc(i32 noundef %57) #17
  %59 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 46
  store ptr %58, ptr %59, align 16, !tbaa !40
  %60 = icmp eq ptr %58, null
  br i1 %60, label %175, label %61

61:                                               ; preds = %56
  %62 = tail call ptr @x264_malloc(i32 noundef %57) #17
  %63 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 46, i64 1
  store ptr %62, ptr %63, align 8, !tbaa !40
  %64 = icmp eq ptr %62, null
  br i1 %64, label %175, label %65

65:                                               ; preds = %61, %48
  %66 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  %67 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 20
  %68 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  %69 = shl i32 %3, 2
  br label %70

70:                                               ; preds = %65, %107
  %71 = phi i1 [ true, %65 ], [ false, %107 ]
  %72 = phi i64 [ 0, %65 ], [ 1, %107 ]
  br i1 %71, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, ptr %68, align 16, !tbaa !71
  %75 = tail call i32 @llvm.smin.i32(i32 %74, i32 16)
  br label %80

76:                                               ; preds = %70
  %77 = load i32, ptr %67, align 16, !tbaa !72
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i32 1, i32 2
  br label %80

80:                                               ; preds = %73, %76
  %81 = phi i32 [ %79, %76 ], [ %75, %73 ]
  %82 = load i32, ptr %13, align 8, !tbaa !61
  %83 = shl i32 %81, %82
  %84 = load i32, ptr %66, align 4, !tbaa !73
  switch i32 %84, label %91 [
    i32 2, label %85
    i32 1, label %88
  ]

85:                                               ; preds = %80
  %86 = tail call i32 @llvm.smin.i32(i32 %83, i32 14)
  %87 = add nsw i32 %86, 2
  br label %91

88:                                               ; preds = %80
  %89 = tail call i32 @llvm.smin.i32(i32 %83, i32 15)
  %90 = add nsw i32 %89, 1
  br label %91

91:                                               ; preds = %80, %88, %85
  %92 = phi i32 [ %87, %85 ], [ %90, %88 ], [ %83, %80 ]
  %93 = trunc i64 %72 to i32
  %94 = xor i32 %93, 1
  %95 = icmp slt i32 %94, %92
  br i1 %95, label %96, label %107

96:                                               ; preds = %91
  %97 = zext nneg i32 %94 to i64
  %98 = zext nneg i32 %92 to i64
  br label %102

99:                                               ; preds = %102
  %100 = add nuw nsw i64 %103, 1
  %101 = icmp eq i64 %100, %98
  br i1 %101, label %107, label %102, !llvm.loop !74

102:                                              ; preds = %96, %99
  %103 = phi i64 [ %97, %96 ], [ %100, %99 ]
  %104 = tail call ptr @x264_malloc(i32 noundef %69) #17
  %105 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 48, i64 %72, i64 %103
  store ptr %104, ptr %105, align 8, !tbaa !40
  %106 = icmp eq ptr %104, null
  br i1 %106, label %175, label %99

107:                                              ; preds = %99, %91
  br i1 %71, label %70, label %108, !llvm.loop !75

108:                                              ; preds = %107
  %109 = load i32, ptr %66, align 4, !tbaa !73
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %175, label %111

111:                                              ; preds = %108
  %112 = load i32, ptr %13, align 8, !tbaa !61
  %113 = load i32, ptr %0, align 16, !tbaa !76
  %114 = and i32 %113, 2
  %115 = icmp eq i32 %114, 0
  %116 = and i32 %113, 1
  %117 = icmp eq i32 %116, 0
  %118 = select i1 %117, i32 16, i32 32
  %119 = select i1 %115, i32 %118, i32 64
  %120 = icmp eq i32 %109, -1
  br i1 %120, label %121, label %147

121:                                              ; preds = %111
  %122 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 4
  %123 = load i32, ptr %122, align 16, !tbaa !77
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %127 = load i32, ptr %126, align 4, !tbaa !78
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !40
  %131 = icmp eq ptr %130, %0
  br i1 %131, label %132, label %175

132:                                              ; preds = %125, %121
  %133 = load ptr, ptr %4, align 16, !tbaa !52
  %134 = getelementptr inbounds %struct.x264_sps_t, ptr %133, i64 0, i32 16
  %135 = load i32, ptr %134, align 4, !tbaa !53
  %136 = shl nsw i32 %135, 3
  %137 = add nuw nsw i32 %119, 63
  %138 = add i32 %137, %136
  %139 = sub nsw i32 0, %119
  %140 = and i32 %138, %139
  %141 = getelementptr inbounds %struct.x264_sps_t, ptr %133, i64 0, i32 17
  %142 = load i32, ptr %141, align 4, !tbaa !79
  %143 = shl nsw i32 %142, 3
  %144 = shl i32 64, %112
  %145 = add nsw i32 %143, %144
  %146 = mul nsw i32 %140, %145
  br label %164

147:                                              ; preds = %111
  %148 = load ptr, ptr %4, align 16, !tbaa !52
  %149 = getelementptr inbounds %struct.x264_sps_t, ptr %148, i64 0, i32 16
  %150 = load i32, ptr %149, align 4, !tbaa !53
  %151 = shl nsw i32 %150, 4
  %152 = add nuw nsw i32 %119, 63
  %153 = add i32 %152, %151
  %154 = sub nsw i32 0, %119
  %155 = and i32 %153, %154
  %156 = getelementptr inbounds %struct.x264_sps_t, ptr %148, i64 0, i32 17
  %157 = load i32, ptr %156, align 4, !tbaa !79
  %158 = shl nsw i32 %157, 4
  %159 = shl i32 64, %112
  %160 = add nsw i32 %158, %159
  %161 = mul nsw i32 %155, %160
  %162 = icmp eq i32 %109, 2
  %163 = select i1 %162, i64 2, i64 1
  br label %164

164:                                              ; preds = %132, %147
  %165 = phi i32 [ %161, %147 ], [ %146, %132 ]
  %166 = phi i64 [ %163, %147 ], [ 1, %132 ]
  br label %170

167:                                              ; preds = %170
  %168 = add nuw nsw i64 %171, 1
  %169 = icmp eq i64 %168, %166
  br i1 %169, label %175, label %170, !llvm.loop !80

170:                                              ; preds = %164, %167
  %171 = phi i64 [ 0, %164 ], [ %168, %167 ]
  %172 = tail call ptr @x264_malloc(i32 noundef %165) #17
  %173 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 52, i64 %171
  store ptr %172, ptr %173, align 8, !tbaa !40
  %174 = icmp eq ptr %172, null
  br i1 %174, label %175, label %167

175:                                              ; preds = %102, %170, %167, %125, %1, %19, %26, %30, %34, %38, %43, %52, %56, %61, %108
  %176 = phi i32 [ 0, %108 ], [ -1, %61 ], [ -1, %56 ], [ -1, %52 ], [ -1, %43 ], [ -1, %38 ], [ -1, %34 ], [ -1, %30 ], [ -1, %26 ], [ -1, %19 ], [ -1, %1 ], [ 0, %125 ], [ -1, %170 ], [ 0, %167 ], [ -1, %102 ]
  ret i32 %176
}

; Function Attrs: optsize
declare ptr @x264_malloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_macroblock_cache_free(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %6
  %3 = phi i1 [ true, %1 ], [ false, %6 ]
  %4 = phi i64 [ 0, %1 ], [ 1, %6 ]
  %5 = xor i64 %4, 1
  br label %7

6:                                                ; preds = %7
  br i1 %3, label %2, label %17, !llvm.loop !81

7:                                                ; preds = %2, %7
  %8 = phi i64 [ %5, %2 ], [ %11, %7 ]
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 48, i64 %4, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  tail call void @x264_free(ptr noundef %10) #17
  %11 = add nuw nsw i64 %8, 1
  %12 = icmp eq i64 %11, 32
  br i1 %12, label %6, label %7, !llvm.loop !82

13:                                               ; preds = %17
  %14 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  %15 = load i32, ptr %14, align 16, !tbaa !69
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %30, label %23

17:                                               ; preds = %6, %17
  %18 = phi i64 [ %21, %17 ], [ 0, %6 ]
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 52, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !40
  tail call void @x264_free(ptr noundef %20) #17
  %21 = add nuw nsw i64 %18, 1
  %22 = icmp eq i64 %21, 16
  br i1 %22, label %13, label %17, !llvm.loop !83

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 44
  %25 = load ptr, ptr %24, align 8, !tbaa !70
  tail call void @x264_free(ptr noundef %25) #17
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 46
  %27 = load ptr, ptr %26, align 16, !tbaa !40
  tail call void @x264_free(ptr noundef %27) #17
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 46, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !40
  tail call void @x264_free(ptr noundef %29) #17
  br label %30

30:                                               ; preds = %23, %13
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 51
  %32 = load ptr, ptr %31, align 16, !tbaa !66
  tail call void @x264_free(ptr noundef %32) #17
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 42
  %34 = load ptr, ptr %33, align 8, !tbaa !67
  tail call void @x264_free(ptr noundef %34) #17
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 43
  %36 = load ptr, ptr %35, align 16, !tbaa !68
  tail call void @x264_free(ptr noundef %36) #17
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 50
  %38 = load ptr, ptr %37, align 8, !tbaa !65
  tail call void @x264_free(ptr noundef %38) #17
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 49
  %40 = load ptr, ptr %39, align 16, !tbaa !64
  tail call void @x264_free(ptr noundef %40) #17
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 41
  %42 = load ptr, ptr %41, align 16, !tbaa !63
  tail call void @x264_free(ptr noundef %42) #17
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 40
  %44 = load ptr, ptr %43, align 8, !tbaa !62
  tail call void @x264_free(ptr noundef %44) #17
  ret void
}

; Function Attrs: optsize
declare void @x264_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @x264_macroblock_thread_allocate(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %6 = load ptr, ptr %5, align 16, !tbaa !52
  %7 = getelementptr inbounds %struct.x264_sps_t, ptr %6, i64 0, i32 16
  %8 = load i32, ptr %7, align 4, !tbaa !53
  br label %105

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  %11 = load i32, ptr %10, align 8, !tbaa !61
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %55, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  br label %20

15:                                               ; preds = %47
  %16 = add nuw nsw i64 %21, 1
  %17 = load i32, ptr %10, align 8, !tbaa !61
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %21, %18
  br i1 %19, label %20, label %55, !llvm.loop !84

20:                                               ; preds = %13, %15
  %21 = phi i64 [ 0, %13 ], [ %16, %15 ]
  br label %22

22:                                               ; preds = %20, %35
  %23 = phi i64 [ 0, %20 ], [ %45, %35 ]
  %24 = load ptr, ptr %14, align 16, !tbaa !52
  %25 = getelementptr inbounds %struct.x264_sps_t, ptr %24, i64 0, i32 16
  %26 = load i32, ptr %25, align 4, !tbaa !53
  %27 = shl nsw i32 %26, 4
  %28 = add nsw i32 %27, 32
  %29 = icmp ne i64 %23, 0
  %30 = zext i1 %29 to i32
  %31 = ashr exact i32 %28, %30
  %32 = tail call ptr @x264_malloc(i32 noundef %31) #17
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 62, i64 %21, i64 %23
  store ptr %32, ptr %33, align 8, !tbaa !40
  %34 = icmp eq ptr %32, null
  br i1 %34, label %118, label %35

35:                                               ; preds = %22
  %36 = load ptr, ptr %14, align 16, !tbaa !52
  %37 = getelementptr inbounds %struct.x264_sps_t, ptr %36, i64 0, i32 16
  %38 = load i32, ptr %37, align 4, !tbaa !53
  %39 = shl nsw i32 %38, 4
  %40 = add nsw i32 %39, 32
  %41 = ashr exact i32 %40, %30
  %42 = sext i32 %41 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %32, i8 0, i64 %42, i1 false)
  %43 = load ptr, ptr %33, align 8, !tbaa !40
  %44 = getelementptr inbounds i8, ptr %43, i64 8
  store ptr %44, ptr %33, align 8, !tbaa !40
  %45 = add nuw nsw i64 %23, 1
  %46 = icmp eq i64 %45, 3
  br i1 %46, label %47, label %22, !llvm.loop !85

47:                                               ; preds = %35
  %48 = load ptr, ptr %14, align 16, !tbaa !52
  %49 = getelementptr inbounds %struct.x264_sps_t, ptr %48, i64 0, i32 16
  %50 = load i32, ptr %49, align 4, !tbaa !53
  %51 = shl i32 %50, 5
  %52 = tail call ptr @x264_malloc(i32 noundef %51) #17
  %53 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 63, i64 %21
  store ptr %52, ptr %53, align 8, !tbaa !40
  %54 = icmp eq ptr %52, null
  br i1 %54, label %118, label %15

55:                                               ; preds = %15, %9
  %56 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1
  %57 = load ptr, ptr %56, align 16, !tbaa !40
  %58 = getelementptr inbounds %struct.x264_t, ptr %57, i64 0, i32 45
  %59 = load ptr, ptr %58, align 16, !tbaa !86
  %60 = getelementptr inbounds %struct.x264_frame, ptr %59, i64 0, i32 25
  %61 = load i32, ptr %60, align 4, !tbaa !38
  %62 = shl i32 %61, 1
  %63 = add i32 %62, 96
  %64 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 23
  %65 = load i32, ptr %64, align 16, !tbaa !87
  %66 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %67 = load i32, ptr %66, align 4, !tbaa !88
  %68 = sdiv i32 %67, 4
  %69 = add nsw i32 %68, 3
  %70 = shl i32 %65, 5
  %71 = mul i32 %70, %69
  %72 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 8
  %73 = load i32, ptr %72, align 16, !tbaa !89
  %74 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 9
  %75 = load i32, ptr %74, align 4, !tbaa !90
  %76 = tail call i32 @llvm.smin.i32(i32 %73, i32 %75)
  %77 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  %78 = load i32, ptr %77, align 4, !tbaa !91
  %79 = icmp sgt i32 %78, 2
  %80 = shl i32 %76, 2
  %81 = add i32 %80, 36
  %82 = add nsw i32 %76, 4
  %83 = shl i32 %76, 5
  %84 = add i32 %83, 32
  %85 = mul i32 %84, %82
  %86 = add i32 %81, %85
  %87 = select i1 %79, i32 %86, i32 0
  %88 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  %89 = load i32, ptr %88, align 16, !tbaa !69
  %90 = icmp eq i32 %89, 0
  %91 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  %92 = load ptr, ptr %91, align 16, !tbaa !92
  %93 = getelementptr inbounds %struct.x264_pps_t, ptr %92, i64 0, i32 15
  %94 = load i32, ptr %93, align 4, !tbaa !93
  %95 = shl i32 %94, 6
  %96 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %97 = load ptr, ptr %96, align 16, !tbaa !52
  %98 = getelementptr inbounds %struct.x264_sps_t, ptr %97, i64 0, i32 16
  %99 = load i32, ptr %98, align 4, !tbaa !53
  %100 = select i1 %90, i32 %95, i32 0
  %101 = mul i32 %100, %99
  %102 = tail call i32 @llvm.smax.i32(i32 %87, i32 %101)
  %103 = tail call i32 @llvm.smax.i32(i32 %71, i32 %102)
  %104 = tail call i32 @llvm.smax.i32(i32 %63, i32 %103)
  br label %105

105:                                              ; preds = %4, %55
  %106 = phi i32 [ %99, %55 ], [ %8, %4 ]
  %107 = phi i32 [ %104, %55 ], [ 0, %4 ]
  %108 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  %109 = load i32, ptr %108, align 8, !tbaa !95
  %110 = add nsw i32 %106, 3
  %111 = and i32 %110, 1073741820
  %112 = shl i32 %109, 2
  %113 = mul i32 %112, %111
  %114 = tail call i32 @llvm.smax.i32(i32 %107, i32 %113)
  %115 = tail call ptr @x264_malloc(i32 noundef %114) #17
  %116 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 61
  store ptr %115, ptr %116, align 8, !tbaa !96
  %117 = icmp eq ptr %115, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %47, %22, %105
  br label %119

119:                                              ; preds = %105, %118
  %120 = phi i32 [ -1, %118 ], [ 0, %105 ]
  ret i32 %120
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_macroblock_thread_free(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %24

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  %6 = load i32, ptr %5, align 8, !tbaa !61
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %4, %12
  %9 = phi i64 [ %13, %12 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 63, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  tail call void @x264_free(ptr noundef %11) #17
  br label %17

12:                                               ; preds = %17
  %13 = add nuw nsw i64 %9, 1
  %14 = load i32, ptr %5, align 8, !tbaa !61
  %15 = sext i32 %14 to i64
  %16 = icmp slt i64 %9, %15
  br i1 %16, label %8, label %24, !llvm.loop !97

17:                                               ; preds = %8, %17
  %18 = phi i64 [ 0, %8 ], [ %22, %17 ]
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 62, i64 %9, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !40
  %21 = getelementptr inbounds i8, ptr %20, i64 -8
  tail call void @x264_free(ptr noundef nonnull %21) #17
  %22 = add nuw nsw i64 %18, 1
  %23 = icmp eq i64 %22, 3
  br i1 %23, label %12, label %17, !llvm.loop !98

24:                                               ; preds = %12, %4, %2
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 61
  %26 = load ptr, ptr %25, align 8, !tbaa !96
  tail call void @x264_free(ptr noundef %26) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_slice_init(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %3 = load ptr, ptr %2, align 16, !tbaa !86
  %4 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 43
  %5 = load ptr, ptr %4, align 16, !tbaa !40
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 45
  store ptr %5, ptr %6, align 16, !tbaa !40
  %7 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 43, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 45, i64 1
  store ptr %8, ptr %9, align 8, !tbaa !40
  %10 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 44
  %11 = load ptr, ptr %10, align 16, !tbaa !99
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 48
  store ptr %11, ptr %12, align 16, !tbaa !40
  %13 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 48
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 47
  store ptr %14, ptr %15, align 16, !tbaa !40
  %16 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 48, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !40
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 47, i64 1
  store ptr %17, ptr %18, align 8, !tbaa !40
  %19 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 41
  %20 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 38
  %21 = load <2 x ptr>, ptr %19, align 16, !tbaa !40
  store <2 x ptr> %21, ptr %20, align 8, !tbaa !40
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46
  %23 = load i32, ptr %22, align 8, !tbaa !102
  %24 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 49
  store i32 %23, ptr %24, align 8, !tbaa !38
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 48
  %26 = load i32, ptr %25, align 8, !tbaa !103
  %27 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 49, i64 1
  store i32 %26, ptr %27, align 4, !tbaa !38
  %28 = load i32, ptr %22, align 8, !tbaa !102
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 50
  br label %39

32:                                               ; preds = %39, %1
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %34 = load i32, ptr %33, align 16, !tbaa !5
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %96

36:                                               ; preds = %32
  %37 = load i32, ptr %25, align 8, !tbaa !103
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %62, label %49

39:                                               ; preds = %30, %39
  %40 = phi i64 [ 0, %30 ], [ %45, %39 ]
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !40
  %43 = load i32, ptr %42, align 16, !tbaa !104
  %44 = getelementptr inbounds [16 x i32], ptr %31, i64 0, i64 %40
  store i32 %43, ptr %44, align 4, !tbaa !38
  %45 = add nuw nsw i64 %40, 1
  %46 = load i32, ptr %22, align 8, !tbaa !102
  %47 = sext i32 %46 to i64
  %48 = icmp slt i64 %45, %47
  br i1 %48, label %39, label %32, !llvm.loop !105

49:                                               ; preds = %62, %36
  %50 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 83
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 83, i64 1
  store i8 -1, ptr %51, align 1, !tbaa !35
  store i8 -2, ptr %50, align 8, !tbaa !35
  %52 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49
  %53 = load ptr, ptr %52, align 16, !tbaa !40
  %54 = getelementptr inbounds %struct.x264_frame, ptr %53, i64 0, i32 49
  %55 = load i32, ptr %54, align 8, !tbaa !38
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %94

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.x264_frame, ptr %53, i64 0, i32 50
  %59 = load i32, ptr %22, align 8, !tbaa !102
  %60 = icmp sgt i32 %59, 0
  %61 = zext nneg i32 %59 to i64
  br label %72

62:                                               ; preds = %36, %62
  %63 = phi i64 [ %68, %62 ], [ 0, %36 ]
  %64 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !40
  %66 = load i32, ptr %65, align 16, !tbaa !104
  %67 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 50, i64 1, i64 %63
  store i32 %66, ptr %67, align 4, !tbaa !38
  %68 = add nuw nsw i64 %63, 1
  %69 = load i32, ptr %25, align 8, !tbaa !103
  %70 = sext i32 %69 to i64
  %71 = icmp slt i64 %68, %70
  br i1 %71, label %62, label %49, !llvm.loop !106

72:                                               ; preds = %57, %89
  %73 = phi i64 [ 0, %57 ], [ %90, %89 ]
  %74 = getelementptr inbounds [16 x i32], ptr %58, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !38
  %76 = add nuw nsw i64 %73, 2
  %77 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 83, i64 %76
  store i8 -2, ptr %77, align 1, !tbaa !35
  br i1 %60, label %78, label %89

78:                                               ; preds = %72, %86
  %79 = phi i64 [ %87, %86 ], [ 0, %72 ]
  %80 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !40
  %82 = load i32, ptr %81, align 16, !tbaa !104
  %83 = icmp eq i32 %82, %75
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = trunc i64 %79 to i8
  store i8 %85, ptr %77, align 1, !tbaa !35
  br label %89

86:                                               ; preds = %78
  %87 = add nuw nsw i64 %79, 1
  %88 = icmp eq i64 %87, %61
  br i1 %88, label %89, label %78, !llvm.loop !107

89:                                               ; preds = %86, %72, %84
  %90 = add nuw nsw i64 %73, 1
  %91 = load i32, ptr %54, align 8, !tbaa !38
  %92 = sext i32 %91 to i64
  %93 = icmp slt i64 %90, %92
  br i1 %93, label %72, label %94, !llvm.loop !108

94:                                               ; preds = %89, %49
  %95 = load i32, ptr %33, align 16, !tbaa !5
  br label %96

96:                                               ; preds = %94, %32
  %97 = phi i32 [ %95, %94 ], [ %34, %32 ]
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %100, i8 0, i64 40, i1 false)
  br label %101

101:                                              ; preds = %99, %96
  %102 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %102, i8 -2, i64 80, i1 false)
  %103 = load i32, ptr %22, align 8, !tbaa !102
  %104 = icmp slt i32 %103, 1
  %105 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %106 = load i32, ptr %105, align 4, !tbaa !109
  %107 = icmp slt i32 %106, 0
  %108 = select i1 %104, i1 true, i1 %107
  br i1 %108, label %221, label %109

109:                                              ; preds = %101
  %110 = add nuw i32 %106, 1
  %111 = zext i32 %110 to i64
  %112 = icmp ne i32 %106, 0
  %113 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47
  %114 = load ptr, ptr %113, align 16, !tbaa !40
  %115 = load i32, ptr %114, align 16, !tbaa !104
  %116 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 12
  %117 = load i32, ptr %116, align 8, !tbaa !110
  %118 = load i32, ptr %3, align 16, !tbaa !104
  %119 = add nuw nsw i64 %111, 7
  %120 = and i64 %119, 8589934584
  %121 = add nsw i64 %111, -1
  %122 = insertelement <8 x i64> poison, i64 %121, i64 0
  %123 = shufflevector <8 x i64> %122, <8 x i64> poison, <8 x i32> zeroinitializer
  %124 = insertelement <8 x i1> poison, i1 %112, i64 0
  %125 = shufflevector <8 x i1> %124, <8 x i1> poison, <8 x i32> zeroinitializer
  %126 = insertelement <8 x i32> poison, i32 %117, i64 0
  %127 = shufflevector <8 x i32> %126, <8 x i32> poison, <8 x i32> zeroinitializer
  %128 = insertelement <8 x i32> poison, i32 %118, i64 0
  %129 = shufflevector <8 x i32> %128, <8 x i32> poison, <8 x i32> zeroinitializer
  %130 = insertelement <8 x i32> poison, i32 %115, i64 0
  %131 = shufflevector <8 x i32> %130, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %132

132:                                              ; preds = %216, %109
  %133 = phi i64 [ 0, %109 ], [ %217, %216 ]
  %134 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %109 ], [ %218, %216 ]
  %135 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %109 ], [ %219, %216 ]
  %136 = icmp ule <8 x i64> %134, %123
  %137 = icmp ne <8 x i64> %134, zeroinitializer
  %138 = and <8 x i1> %137, %125
  %139 = select <8 x i1> %138, <8 x i32> %127, <8 x i32> zeroinitializer
  %140 = mul <8 x i32> %127, %135
  %141 = add <8 x i32> %140, %129
  %142 = add <8 x i32> %139, %131
  %143 = sub <8 x i32> %141, %142
  %144 = sdiv <8 x i32> %143, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %145 = add nsw <8 x i32> %144, <i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256, i32 256>
  %146 = extractelement <8 x i1> %136, i64 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %132
  %148 = extractelement <8 x i32> %145, i64 0
  %149 = extractelement <8 x i32> %143, i64 0
  %150 = sdiv i32 %148, %149
  %151 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 51, i64 %133
  %152 = trunc i32 %150 to i16
  store i16 %152, ptr %151, align 2, !tbaa !36
  br label %153

153:                                              ; preds = %147, %132
  %154 = extractelement <8 x i1> %136, i64 1
  br i1 %154, label %155, label %162

155:                                              ; preds = %153
  %156 = extractelement <8 x i32> %145, i64 1
  %157 = extractelement <8 x i32> %143, i64 1
  %158 = sdiv i32 %156, %157
  %159 = or disjoint i64 %133, 1
  %160 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 51, i64 %159
  %161 = trunc i32 %158 to i16
  store i16 %161, ptr %160, align 2, !tbaa !36
  br label %162

162:                                              ; preds = %155, %153
  %163 = extractelement <8 x i1> %136, i64 2
  br i1 %163, label %164, label %171

164:                                              ; preds = %162
  %165 = extractelement <8 x i32> %145, i64 2
  %166 = extractelement <8 x i32> %143, i64 2
  %167 = sdiv i32 %165, %166
  %168 = or disjoint i64 %133, 2
  %169 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 51, i64 %168
  %170 = trunc i32 %167 to i16
  store i16 %170, ptr %169, align 2, !tbaa !36
  br label %171

171:                                              ; preds = %164, %162
  %172 = extractelement <8 x i1> %136, i64 3
  br i1 %172, label %173, label %180

173:                                              ; preds = %171
  %174 = extractelement <8 x i32> %145, i64 3
  %175 = extractelement <8 x i32> %143, i64 3
  %176 = sdiv i32 %174, %175
  %177 = or disjoint i64 %133, 3
  %178 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 51, i64 %177
  %179 = trunc i32 %176 to i16
  store i16 %179, ptr %178, align 2, !tbaa !36
  br label %180

180:                                              ; preds = %173, %171
  %181 = extractelement <8 x i1> %136, i64 4
  br i1 %181, label %182, label %189

182:                                              ; preds = %180
  %183 = extractelement <8 x i32> %145, i64 4
  %184 = extractelement <8 x i32> %143, i64 4
  %185 = sdiv i32 %183, %184
  %186 = or disjoint i64 %133, 4
  %187 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 51, i64 %186
  %188 = trunc i32 %185 to i16
  store i16 %188, ptr %187, align 2, !tbaa !36
  br label %189

189:                                              ; preds = %182, %180
  %190 = extractelement <8 x i1> %136, i64 5
  br i1 %190, label %191, label %198

191:                                              ; preds = %189
  %192 = extractelement <8 x i32> %145, i64 5
  %193 = extractelement <8 x i32> %143, i64 5
  %194 = sdiv i32 %192, %193
  %195 = or disjoint i64 %133, 5
  %196 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 51, i64 %195
  %197 = trunc i32 %194 to i16
  store i16 %197, ptr %196, align 2, !tbaa !36
  br label %198

198:                                              ; preds = %191, %189
  %199 = extractelement <8 x i1> %136, i64 6
  br i1 %199, label %200, label %207

200:                                              ; preds = %198
  %201 = extractelement <8 x i32> %145, i64 6
  %202 = extractelement <8 x i32> %143, i64 6
  %203 = sdiv i32 %201, %202
  %204 = or disjoint i64 %133, 6
  %205 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 51, i64 %204
  %206 = trunc i32 %203 to i16
  store i16 %206, ptr %205, align 2, !tbaa !36
  br label %207

207:                                              ; preds = %200, %198
  %208 = extractelement <8 x i1> %136, i64 7
  br i1 %208, label %209, label %216

209:                                              ; preds = %207
  %210 = extractelement <8 x i32> %145, i64 7
  %211 = extractelement <8 x i32> %143, i64 7
  %212 = sdiv i32 %210, %211
  %213 = or disjoint i64 %133, 7
  %214 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 51, i64 %213
  %215 = trunc i32 %212 to i16
  store i16 %215, ptr %214, align 2, !tbaa !36
  br label %216

216:                                              ; preds = %209, %207
  %217 = add i64 %133, 8
  %218 = add <8 x i64> %134, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %219 = add <8 x i32> %135, <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %220 = icmp eq i64 %217, %120
  br i1 %220, label %221, label %132, !llvm.loop !111

221:                                              ; preds = %216, %101
  %222 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 85
  store i8 -2, ptr %222, align 16, !tbaa !35
  %223 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 85, i64 1
  store i8 -1, ptr %223, align 1, !tbaa !35
  %224 = shl i32 %103, %106
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %228 = load i32, ptr %227, align 4, !tbaa !41
  %229 = icmp eq i32 %228, 0
  %230 = zext nneg i32 %224 to i64
  br label %239

231:                                              ; preds = %261, %221
  %232 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 9
  store i32 15, ptr %232, align 4, !tbaa !38
  %233 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 6
  store i32 15, ptr %233, align 4, !tbaa !38
  %234 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 25, i64 3
  store i32 11, ptr %234, align 4, !tbaa !38
  %235 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 15
  store i32 11, ptr %235, align 4, !tbaa !38
  %236 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 11
  store <4 x i32> <i32 11, i32 15, i32 11, i32 15>, ptr %236, align 4, !tbaa !38
  %237 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 7
  store i32 11, ptr %237, align 4, !tbaa !38
  %238 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 3
  store i32 11, ptr %238, align 4, !tbaa !38
  ret void

239:                                              ; preds = %226, %261
  %240 = phi i64 [ 0, %226 ], [ %265, %261 ]
  br i1 %229, label %241, label %248

241:                                              ; preds = %239
  %242 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %240
  %243 = load ptr, ptr %242, align 8, !tbaa !40
  %244 = getelementptr inbounds %struct.x264_frame, ptr %243, i64 0, i32 13
  %245 = load i32, ptr %244, align 4, !tbaa !114
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 63
  br label %261

248:                                              ; preds = %239
  %249 = trunc i64 %240 to i32
  %250 = lshr i64 %240, 1
  %251 = and i64 %250, 2147483647
  %252 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %251
  %253 = load ptr, ptr %252, align 8, !tbaa !40
  %254 = getelementptr inbounds %struct.x264_frame, ptr %253, i64 0, i32 13
  %255 = load i32, ptr %254, align 4, !tbaa !114
  %256 = shl i32 %255, 1
  %257 = and i32 %256, 126
  %258 = and i32 %249, 1
  %259 = or disjoint i32 %257, %258
  %260 = trunc i32 %259 to i8
  br label %261

261:                                              ; preds = %241, %248
  %262 = phi i8 [ %247, %241 ], [ %260, %248 ]
  %263 = add nuw nsw i64 %240, 2
  %264 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 85, i64 %263
  store i8 %262, ptr %264, align 1, !tbaa !35
  %265 = add nuw nsw i64 %240, 1
  %266 = icmp eq i64 %265, %230
  br i1 %266, label %231, label %239, !llvm.loop !115
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @x264_macroblock_thread_init(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !91
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 9
  store i32 %3, ptr %4, align 4, !tbaa !116
  %5 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  %6 = load i32, ptr %5, align 4, !tbaa !117
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 10
  store i32 %6, ptr %7, align 8, !tbaa !118
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %9 = load i32, ptr %8, align 16, !tbaa !5
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  switch i32 %6, label %14 [
    i32 6, label %12
    i32 8, label %12
  ]

12:                                               ; preds = %11, %11
  %13 = add nsw i32 %6, -1
  store i32 %13, ptr %7, align 8, !tbaa !118
  br label %14

14:                                               ; preds = %12, %11
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 11
  store i32 0, ptr %15, align 4, !tbaa !119
  br label %32

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 12
  %18 = load i32, ptr %17, align 16, !tbaa !120
  %19 = icmp ne i32 %18, 0
  %20 = icmp eq i32 %9, 0
  %21 = and i1 %20, %19
  %22 = icmp sgt i32 %6, 4
  %23 = select i1 %21, i1 %22, i1 false
  %24 = zext i1 %23 to i32
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 11
  store i32 %24, ptr %25, align 4, !tbaa !119
  %26 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 16
  %27 = load i32, ptr %26, align 16, !tbaa !121
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %16
  %30 = icmp ne i32 %9, 2
  %31 = zext i1 %30 to i32
  br label %32

32:                                               ; preds = %14, %16, %29
  %33 = phi i32 [ 0, %16 ], [ %31, %29 ], [ 1, %14 ]
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 14
  store i32 %33, ptr %34, align 8, !tbaa !122
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  store ptr %35, ptr %36, align 16, !tbaa !40
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 0, i64 256
  %38 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 1
  store ptr %37, ptr %38, align 8, !tbaa !40
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 0, i64 264
  %40 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 2
  store ptr %39, ptr %40, align 16, !tbaa !40
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 1, i64 64
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  store ptr %41, ptr %42, align 16, !tbaa !40
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 1, i64 608
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  store ptr %43, ptr %44, align 8, !tbaa !40
  %45 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 1, i64 624
  %46 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  store ptr %45, ptr %46, align 16, !tbaa !40
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_prefetch_fenc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 24
  %6 = load i32, ptr %5, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 24, i64 1
  %8 = load i32, ptr %7, align 4, !tbaa !38
  %9 = mul nsw i32 %6, %3
  %10 = add nsw i32 %9, %2
  %11 = shl nsw i32 %10, 4
  %12 = mul nsw i32 %8, %3
  %13 = add nsw i32 %12, %2
  %14 = shl nsw i32 %13, 3
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !123
  %17 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 30
  %18 = load ptr, ptr %17, align 8, !tbaa !40
  %19 = sext i32 %11 to i64
  %20 = getelementptr inbounds i8, ptr %18, i64 %19
  %21 = and i32 %2, 1
  %22 = add nuw nsw i32 %21, 1
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 30, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !40
  %26 = sext i32 %14 to i64
  %27 = getelementptr inbounds i8, ptr %25, i64 %26
  tail call void %16(ptr noundef %20, i32 noundef %6, ptr noundef %27, i32 noundef %8, i32 noundef %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_macroblock_cache_load(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @x264_macroblock_cache_load_neighbours(ptr noundef %0, i32 noundef %1, i32 noundef %2) #16
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 34
  %5 = load i32, ptr %4, align 8, !tbaa !124
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 35
  %7 = load i32, ptr %6, align 4, !tbaa !125
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %9 = load i32, ptr %8, align 4, !tbaa !41
  %10 = shl nsw i32 -1, %9
  %11 = add i32 %10, %2
  %12 = shl nsw i32 %11, 1
  %13 = or disjoint i32 %12, 1
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !59
  %16 = mul nsw i32 %13, %15
  %17 = shl nsw i32 %1, 1
  %18 = add nsw i32 %16, %17
  %19 = shl nsw i32 %11, 2
  %20 = or disjoint i32 %19, 3
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !60
  %23 = mul nsw i32 %20, %22
  %24 = shl nsw i32 %1, 2
  %25 = add nsw i32 %23, %24
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 42
  %27 = load ptr, ptr %26, align 8, !tbaa !67
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 43
  %29 = load ptr, ptr %28, align 16, !tbaa !68
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 41
  %31 = load ptr, ptr %30, align 16, !tbaa !63
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 24
  %33 = load i32, ptr %32, align 8, !tbaa !126
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %3
  %37 = sext i32 %7 to i64
  %38 = getelementptr inbounds i16, ptr %31, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa !36
  %40 = sext i16 %39 to i32
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 13
  store i32 %40, ptr %41, align 16, !tbaa !127
  %42 = getelementptr inbounds [8 x i8], ptr %27, i64 %37
  %43 = load i32, ptr %42, align 4, !tbaa !35
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 0, i64 4
  store i32 %43, ptr %44, align 1, !tbaa !35
  %45 = getelementptr inbounds [24 x i8], ptr %29, i64 %37, i64 12
  %46 = load i32, ptr %45, align 4, !tbaa !35
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2
  %48 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 4
  store i32 %46, ptr %48, align 1, !tbaa !35
  %49 = getelementptr inbounds [24 x i8], ptr %29, i64 %37, i64 18
  %50 = load i16, ptr %49, align 2, !tbaa !35
  %51 = zext i16 %50 to i32
  %52 = shl nuw nsw i32 %51, 8
  store i32 %52, ptr %47, align 1, !tbaa !35
  %53 = getelementptr inbounds [24 x i8], ptr %29, i64 %37, i64 22
  %54 = load i16, ptr %53, align 2, !tbaa !35
  %55 = zext i16 %54 to i32
  %56 = shl nuw nsw i32 %55, 8
  br label %62

57:                                               ; preds = %3
  %58 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 13
  store i32 -1, ptr %58, align 16, !tbaa !127
  %59 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 0, i64 4
  store i32 -1, ptr %59, align 1, !tbaa !35
  %60 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2
  %61 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 4
  store i32 -2139062144, ptr %61, align 1, !tbaa !35
  store i32 -2139062144, ptr %60, align 1, !tbaa !35
  br label %62

62:                                               ; preds = %57, %36
  %63 = phi i32 [ -2139062144, %57 ], [ %56, %36 ]
  %64 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 24
  store i32 %63, ptr %64, align 1
  %65 = and i32 %33, 1
  %66 = icmp eq i32 %65, 0
  %67 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 0, i64 11
  br i1 %66, label %139, label %68

68:                                               ; preds = %62
  %69 = sext i32 %5 to i64
  %70 = getelementptr inbounds i16, ptr %31, i64 %69
  %71 = load i16, ptr %70, align 2, !tbaa !36
  %72 = sext i16 %71 to i32
  %73 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 14
  store i32 %72, ptr %73, align 4, !tbaa !128
  %74 = getelementptr inbounds [8 x i8], ptr %27, i64 %69, i64 4
  %75 = load i8, ptr %74, align 1, !tbaa !35
  store i8 %75, ptr %67, align 1, !tbaa !35
  %76 = getelementptr inbounds [8 x i8], ptr %27, i64 %69, i64 5
  %77 = load i8, ptr %76, align 1, !tbaa !35
  %78 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 0, i64 19
  store i8 %77, ptr %78, align 1, !tbaa !35
  %79 = getelementptr inbounds [8 x i8], ptr %27, i64 %69, i64 6
  %80 = load i8, ptr %79, align 1, !tbaa !35
  %81 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 0, i64 27
  store i8 %80, ptr %81, align 1, !tbaa !35
  %82 = getelementptr inbounds [8 x i8], ptr %27, i64 %69, i64 3
  %83 = load i8, ptr %82, align 1, !tbaa !35
  %84 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 0, i64 35
  store i8 %83, ptr %84, align 1, !tbaa !35
  %85 = getelementptr inbounds [24 x i8], ptr %29, i64 %69, i64 3
  %86 = load i8, ptr %85, align 1, !tbaa !35
  %87 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 11
  store i8 %86, ptr %87, align 1, !tbaa !35
  %88 = getelementptr inbounds [24 x i8], ptr %29, i64 %69, i64 7
  %89 = load i8, ptr %88, align 1, !tbaa !35
  %90 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 19
  store i8 %89, ptr %90, align 1, !tbaa !35
  %91 = getelementptr inbounds [24 x i8], ptr %29, i64 %69, i64 11
  %92 = load i8, ptr %91, align 1, !tbaa !35
  %93 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 27
  store i8 %92, ptr %93, align 1, !tbaa !35
  %94 = getelementptr inbounds [24 x i8], ptr %29, i64 %69, i64 15
  %95 = load i8, ptr %94, align 1, !tbaa !35
  %96 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 35
  store i8 %95, ptr %96, align 1, !tbaa !35
  %97 = getelementptr inbounds [24 x i8], ptr %29, i64 %69, i64 17
  %98 = load i8, ptr %97, align 1, !tbaa !35
  %99 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 8
  store i8 %98, ptr %99, align 1, !tbaa !35
  %100 = getelementptr inbounds [24 x i8], ptr %29, i64 %69, i64 19
  %101 = load i8, ptr %100, align 1, !tbaa !35
  %102 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 16
  store i8 %101, ptr %102, align 1, !tbaa !35
  %103 = getelementptr inbounds [24 x i8], ptr %29, i64 %69, i64 21
  %104 = load i8, ptr %103, align 1, !tbaa !35
  %105 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 32
  store i8 %104, ptr %105, align 1, !tbaa !35
  %106 = getelementptr inbounds [24 x i8], ptr %29, i64 %69, i64 23
  %107 = load i8, ptr %106, align 1, !tbaa !35
  %108 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 40
  store i8 %107, ptr %108, align 1, !tbaa !35
  %109 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %110 = load i32, ptr %109, align 16, !tbaa !5
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %157, label %112

112:                                              ; preds = %68
  %113 = icmp eq i32 %110, 1
  %114 = sext i32 %25 to i64
  %115 = sext i32 %18 to i64
  %116 = sext i32 %7 to i64
  br label %117

117:                                              ; preds = %112, %117
  %118 = phi i1 [ true, %112 ], [ false, %117 ]
  %119 = phi i64 [ 0, %112 ], [ 1, %117 ]
  %120 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 45, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !40
  %122 = getelementptr [2 x i16], ptr %121, i64 %114
  %123 = getelementptr [2 x i16], ptr %122, i64 -1
  tail call void @llvm.prefetch.p0(ptr %123, i32 0, i32 3, i32 1)
  %124 = getelementptr [2 x i16], ptr %122, i64 4
  tail call void @llvm.prefetch.p0(ptr %124, i32 0, i32 3, i32 1)
  %125 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 47, i64 %119
  %126 = load ptr, ptr %125, align 8, !tbaa !40
  %127 = getelementptr i8, ptr %126, i64 %115
  %128 = getelementptr i8, ptr %127, i64 -1
  tail call void @llvm.prefetch.p0(ptr %128, i32 0, i32 3, i32 1)
  %129 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 46, i64 %119
  %130 = load ptr, ptr %129, align 8, !tbaa !40
  %131 = getelementptr inbounds [8 x [2 x i8]], ptr %130, i64 %116
  tail call void @llvm.prefetch.p0(ptr %131, i32 0, i32 3, i32 1)
  %132 = and i1 %113, %118
  br i1 %132, label %117, label %133, !llvm.loop !129

133:                                              ; preds = %117
  %134 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  %135 = load ptr, ptr %134, align 16, !tbaa !92
  %136 = getelementptr inbounds %struct.x264_pps_t, ptr %135, i64 0, i32 15
  %137 = load i32, ptr %136, align 4, !tbaa !93
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %184, label %163

139:                                              ; preds = %62
  %140 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 14
  store i32 -1, ptr %140, align 4, !tbaa !128
  %141 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 0, i64 35
  store i8 -1, ptr %141, align 1, !tbaa !35
  %142 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 0, i64 27
  store i8 -1, ptr %142, align 1, !tbaa !35
  %143 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 0, i64 19
  store i8 -1, ptr %143, align 1, !tbaa !35
  store i8 -1, ptr %67, align 1, !tbaa !35
  %144 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 40
  store i8 -128, ptr %144, align 1, !tbaa !35
  %145 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 32
  store i8 -128, ptr %145, align 1, !tbaa !35
  %146 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 16
  store i8 -128, ptr %146, align 1, !tbaa !35
  %147 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 8
  store i8 -128, ptr %147, align 1, !tbaa !35
  %148 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 35
  store i8 -128, ptr %148, align 1, !tbaa !35
  %149 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 27
  store i8 -128, ptr %149, align 1, !tbaa !35
  %150 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 19
  store i8 -128, ptr %150, align 1, !tbaa !35
  %151 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 11
  store i8 -128, ptr %151, align 1, !tbaa !35
  %152 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  %153 = load ptr, ptr %152, align 16, !tbaa !92
  %154 = getelementptr inbounds %struct.x264_pps_t, ptr %153, i64 0, i32 15
  %155 = load i32, ptr %154, align 4, !tbaa !93
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %184, label %170

157:                                              ; preds = %68
  %158 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  %159 = load ptr, ptr %158, align 16, !tbaa !92
  %160 = getelementptr inbounds %struct.x264_pps_t, ptr %159, i64 0, i32 15
  %161 = load i32, ptr %160, align 4, !tbaa !93
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %184, label %163

163:                                              ; preds = %133, %157
  %164 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 50
  %165 = load ptr, ptr %164, align 8, !tbaa !65
  %166 = getelementptr inbounds i8, ptr %165, i64 %69
  %167 = load i8, ptr %166, align 1, !tbaa !35
  %168 = icmp ne i8 %167, 0
  %169 = zext i1 %168 to i32
  br label %170

170:                                              ; preds = %139, %163
  %171 = phi i32 [ %169, %163 ], [ 0, %139 ]
  br i1 %35, label %180, label %172

172:                                              ; preds = %170
  %173 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 50
  %174 = load ptr, ptr %173, align 8, !tbaa !65
  %175 = sext i32 %7 to i64
  %176 = getelementptr inbounds i8, ptr %174, i64 %175
  %177 = load i8, ptr %176, align 1, !tbaa !35
  %178 = icmp ne i8 %177, 0
  %179 = zext i1 %178 to i32
  br label %180

180:                                              ; preds = %172, %170
  %181 = phi i32 [ 0, %170 ], [ %179, %172 ]
  %182 = add nuw nsw i32 %181, %171
  %183 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 11
  store i32 %182, ptr %183, align 8, !tbaa !130
  br label %184

184:                                              ; preds = %139, %157, %180, %133
  %185 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %186 = load i32, ptr %185, align 4, !tbaa !109
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %201, label %188

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46
  %190 = load i32, ptr %189, align 8, !tbaa !102
  %191 = shl i32 %190, %9
  %192 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  store i32 %191, ptr %192, align 8, !tbaa !38
  %193 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 48
  %194 = load i32, ptr %193, align 8, !tbaa !103
  %195 = shl i32 %194, %9
  %196 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19, i64 1
  store i32 %195, ptr %196, align 4, !tbaa !38
  %197 = lshr i32 %33, 1
  %198 = and i32 %197, 1
  %199 = add nuw nsw i32 %198, %65
  %200 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 12
  store i32 %199, ptr %200, align 4, !tbaa !131
  br label %201

201:                                              ; preds = %188, %184
  %202 = icmp eq i32 %9, 0
  br i1 %202, label %203, label %219

203:                                              ; preds = %201
  %204 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %205 = load ptr, ptr %204, align 16, !tbaa !40
  %206 = getelementptr inbounds i8, ptr %205, i64 127
  %207 = getelementptr inbounds i8, ptr %205, i64 143
  tail call fastcc void @copy_column8(ptr noundef nonnull %206, ptr noundef nonnull %207) #16
  %208 = load ptr, ptr %204, align 16, !tbaa !40
  %209 = getelementptr inbounds i8, ptr %208, i64 383
  %210 = getelementptr inbounds i8, ptr %208, i64 399
  tail call fastcc void @copy_column8(ptr noundef nonnull %209, ptr noundef nonnull %210) #16
  %211 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %212 = load ptr, ptr %211, align 8, !tbaa !40
  %213 = getelementptr inbounds i8, ptr %212, i64 127
  %214 = getelementptr inbounds i8, ptr %212, i64 135
  tail call fastcc void @copy_column8(ptr noundef nonnull %213, ptr noundef nonnull %214) #16
  %215 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %216 = load ptr, ptr %215, align 16, !tbaa !40
  %217 = getelementptr inbounds i8, ptr %216, i64 127
  %218 = getelementptr inbounds i8, ptr %216, i64 135
  tail call fastcc void @copy_column8(ptr noundef nonnull %217, ptr noundef nonnull %218) #16
  br label %219

219:                                              ; preds = %203, %201
  tail call fastcc void @x264_macroblock_load_pic_pointers(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef 0) #16
  tail call fastcc void @x264_macroblock_load_pic_pointers(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef 1) #16
  tail call fastcc void @x264_macroblock_load_pic_pointers(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef 2) #16
  %220 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %221 = load ptr, ptr %220, align 16, !tbaa !86
  %222 = getelementptr inbounds %struct.x264_frame, ptr %221, i64 0, i32 33
  %223 = load ptr, ptr %222, align 16, !tbaa !132
  %224 = icmp eq ptr %223, null
  br i1 %224, label %265, label %225

225:                                              ; preds = %219
  %226 = getelementptr inbounds %struct.x264_frame, ptr %221, i64 0, i32 24
  %227 = load i32, ptr %226, align 8, !tbaa !38
  %228 = mul nsw i32 %227, %2
  %229 = add nsw i32 %228, %1
  %230 = shl nsw i32 %229, 4
  %231 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  %232 = load i32, ptr %231, align 8, !tbaa !38
  %233 = icmp sgt i32 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %225
  %235 = sext i32 %230 to i64
  %236 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 22
  %237 = zext nneg i32 %232 to i64
  br label %245

238:                                              ; preds = %245, %225
  %239 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19, i64 1
  %240 = load i32, ptr %239, align 4, !tbaa !38
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %265

242:                                              ; preds = %238
  %243 = sext i32 %230 to i64
  %244 = zext nneg i32 %240 to i64
  br label %255

245:                                              ; preds = %234, %245
  %246 = phi i64 [ 0, %234 ], [ %253, %245 ]
  %247 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %246
  %248 = load ptr, ptr %247, align 8, !tbaa !40
  %249 = getelementptr inbounds %struct.x264_frame, ptr %248, i64 0, i32 33
  %250 = load ptr, ptr %249, align 16, !tbaa !132
  %251 = getelementptr inbounds i16, ptr %250, i64 %235
  %252 = getelementptr inbounds [16 x ptr], ptr %236, i64 0, i64 %246
  store ptr %251, ptr %252, align 8, !tbaa !40
  %253 = add nuw nsw i64 %246, 1
  %254 = icmp eq i64 %253, %237
  br i1 %254, label %238, label %245, !llvm.loop !133

255:                                              ; preds = %242, %255
  %256 = phi i64 [ 0, %242 ], [ %263, %255 ]
  %257 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49, i64 %256
  %258 = load ptr, ptr %257, align 8, !tbaa !40
  %259 = getelementptr inbounds %struct.x264_frame, ptr %258, i64 0, i32 33
  %260 = load ptr, ptr %259, align 16, !tbaa !132
  %261 = getelementptr inbounds i16, ptr %260, i64 %243
  %262 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 22, i64 1, i64 %256
  store ptr %261, ptr %262, align 8, !tbaa !40
  %263 = add nuw nsw i64 %256, 1
  %264 = icmp eq i64 %263, %244
  br i1 %264, label %265, label %255, !llvm.loop !134

265:                                              ; preds = %255, %238, %219
  %266 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %267 = load ptr, ptr %266, align 8, !tbaa !135
  tail call void @x264_prefetch_fenc(ptr noundef nonnull %0, ptr noundef %267, i32 noundef %1, i32 noundef %2) #16
  %268 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %269 = load i32, ptr %268, align 16, !tbaa !5
  %270 = icmp eq i32 %269, 2
  br i1 %270, label %462, label %271

271:                                              ; preds = %265
  %272 = load i32, ptr %14, align 8, !tbaa !59
  %273 = load i32, ptr %21, align 4, !tbaa !60
  %274 = icmp eq i32 %269, 1
  %275 = load i32, ptr %32, align 8, !tbaa !126
  %276 = insertelement <4 x i32> poison, i32 %275, i64 0
  %277 = shufflevector <4 x i32> %276, <4 x i32> poison, <4 x i32> zeroinitializer
  %278 = and <4 x i32> %277, <i32 1, i32 4, i32 2, i32 8>
  %279 = icmp eq <4 x i32> %278, zeroinitializer
  %280 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  %281 = load i32, ptr %280, align 16, !tbaa !69
  %282 = icmp eq i32 %281, 0
  %283 = sext i32 %18 to i64
  %284 = sext i32 %25 to i64
  %285 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 7
  %286 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 8
  %287 = shl nsw i32 %273, 1
  %288 = mul nsw i32 %273, 3
  %289 = sext i32 %7 to i64
  %290 = sext i32 %5 to i64
  %291 = extractelement <4 x i1> %279, i64 0
  %292 = extractelement <4 x i1> %279, i64 1
  %293 = extractelement <4 x i1> %279, i64 2
  %294 = extractelement <4 x i1> %279, i64 3
  br label %296

295:                                              ; preds = %416
  br i1 %274, label %418, label %457

296:                                              ; preds = %271, %416
  %297 = phi i1 [ true, %271 ], [ false, %416 ]
  %298 = phi i64 [ 0, %271 ], [ 1, %416 ]
  %299 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 45, i64 %298
  %300 = load ptr, ptr %299, align 8, !tbaa !40
  %301 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 47, i64 %298
  %302 = load ptr, ptr %301, align 8, !tbaa !40
  br i1 %294, label %311, label %303

303:                                              ; preds = %296
  %304 = getelementptr i8, ptr %302, i64 %283
  %305 = getelementptr i8, ptr %304, i64 -1
  %306 = load i8, ptr %305, align 1, !tbaa !35
  %307 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %298, i64 3
  store i8 %306, ptr %307, align 1, !tbaa !35
  %308 = getelementptr [2 x i16], ptr %300, i64 %284
  %309 = getelementptr [2 x i16], ptr %308, i64 -1
  %310 = load i32, ptr %309, align 4, !tbaa !35
  br label %313

311:                                              ; preds = %296
  %312 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %298, i64 3
  store i8 -2, ptr %312, align 1, !tbaa !35
  br label %313

313:                                              ; preds = %311, %303
  %314 = phi i32 [ 0, %311 ], [ %310, %303 ]
  %315 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %298, i64 3
  store i32 %314, ptr %315, align 4
  br i1 %293, label %327, label %316

316:                                              ; preds = %313
  %317 = getelementptr inbounds i8, ptr %302, i64 %283
  %318 = load i8, ptr %317, align 1, !tbaa !35
  %319 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %298, i64 5
  store i8 %318, ptr %319, align 1, !tbaa !35
  %320 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %298, i64 4
  store i8 %318, ptr %320, align 1, !tbaa !35
  %321 = getelementptr i8, ptr %317, i64 1
  %322 = load i8, ptr %321, align 1, !tbaa !35
  %323 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %298, i64 7
  store i8 %322, ptr %323, align 1, !tbaa !35
  %324 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %298, i64 6
  store i8 %322, ptr %324, align 1, !tbaa !35
  %325 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %298, i64 4
  %326 = getelementptr inbounds [2 x i16], ptr %300, i64 %284
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %325, ptr noundef nonnull align 8 dereferenceable(16) %326, i64 16, i1 false), !tbaa.struct !136
  br label %330

327:                                              ; preds = %313
  %328 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %298, i64 4
  %329 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %298, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %328, i8 0, i64 16, i1 false)
  store i32 -16843010, ptr %329, align 1, !tbaa !35
  br label %330

330:                                              ; preds = %327, %316
  br i1 %292, label %340, label %331

331:                                              ; preds = %330
  %332 = getelementptr i8, ptr %302, i64 %283
  %333 = getelementptr i8, ptr %332, i64 2
  %334 = load i8, ptr %333, align 1, !tbaa !35
  %335 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %298, i64 8
  store i8 %334, ptr %335, align 1, !tbaa !35
  %336 = getelementptr [2 x i16], ptr %300, i64 %284
  %337 = getelementptr [2 x i16], ptr %336, i64 4
  %338 = load i32, ptr %337, align 4, !tbaa !35
  %339 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %298, i64 8
  store i32 %338, ptr %339, align 4, !tbaa !35
  br label %342

340:                                              ; preds = %330
  %341 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %298, i64 8
  store i8 -2, ptr %341, align 1, !tbaa !35
  br label %342

342:                                              ; preds = %340, %331
  br i1 %291, label %378, label %343

343:                                              ; preds = %342
  %344 = load i32, ptr %285, align 4, !tbaa !137
  %345 = add nsw i32 %344, -1
  %346 = load i32, ptr %286, align 16, !tbaa !138
  %347 = add nsw i32 %346, -1
  %348 = sext i32 %345 to i64
  %349 = getelementptr inbounds i8, ptr %302, i64 %348
  %350 = load i8, ptr %349, align 1, !tbaa !35
  %351 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %298, i64 19
  store i8 %350, ptr %351, align 1, !tbaa !35
  %352 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %298, i64 11
  store i8 %350, ptr %352, align 1, !tbaa !35
  %353 = add nsw i32 %345, %272
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i8, ptr %302, i64 %354
  %356 = load i8, ptr %355, align 1, !tbaa !35
  %357 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %298, i64 35
  store i8 %356, ptr %357, align 1, !tbaa !35
  %358 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %298, i64 27
  store i8 %356, ptr %358, align 1, !tbaa !35
  %359 = sext i32 %347 to i64
  %360 = getelementptr inbounds [2 x i16], ptr %300, i64 %359
  %361 = load i32, ptr %360, align 4, !tbaa !35
  %362 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %298, i64 11
  store i32 %361, ptr %362, align 4, !tbaa !35
  %363 = add nsw i32 %347, %273
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [2 x i16], ptr %300, i64 %364
  %366 = load i32, ptr %365, align 4, !tbaa !35
  %367 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %298, i64 19
  store i32 %366, ptr %367, align 4, !tbaa !35
  %368 = add nsw i32 %347, %287
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [2 x i16], ptr %300, i64 %369
  %371 = load i32, ptr %370, align 4, !tbaa !35
  %372 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %298, i64 27
  store i32 %371, ptr %372, align 4, !tbaa !35
  %373 = add nsw i32 %347, %288
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [2 x i16], ptr %300, i64 %374
  %376 = load i32, ptr %375, align 4, !tbaa !35
  %377 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %298, i64 35
  store i32 %376, ptr %377, align 4, !tbaa !35
  br label %386

378:                                              ; preds = %342, %378
  %379 = phi i64 [ %384, %378 ], [ 0, %342 ]
  %380 = shl nuw nsw i64 %379, 3
  %381 = add nuw nsw i64 %380, 11
  %382 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %298, i64 %381
  store i8 -2, ptr %382, align 1, !tbaa !35
  %383 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %298, i64 %381
  store i32 0, ptr %383, align 4, !tbaa !35
  %384 = add nuw nsw i64 %379, 1
  %385 = icmp eq i64 %384, 4
  br i1 %385, label %386, label %378, !llvm.loop !139

386:                                              ; preds = %378, %343
  br i1 %282, label %416, label %387

387:                                              ; preds = %386
  %388 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 46, i64 %298
  %389 = load ptr, ptr %388, align 8, !tbaa !40
  br i1 %293, label %393, label %390

390:                                              ; preds = %387
  %391 = getelementptr inbounds [8 x [2 x i8]], ptr %389, i64 %289
  %392 = load i64, ptr %391, align 8, !tbaa !35
  br label %393

393:                                              ; preds = %387, %390
  %394 = phi i64 [ %392, %390 ], [ 0, %387 ]
  %395 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %298, i64 4
  store i64 %394, ptr %395, align 2
  br i1 %291, label %409, label %396

396:                                              ; preds = %393
  %397 = getelementptr inbounds [8 x [2 x i8]], ptr %389, i64 %290, i64 4
  %398 = load i16, ptr %397, align 2, !tbaa !35
  %399 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %298, i64 11
  store i16 %398, ptr %399, align 2, !tbaa !35
  %400 = getelementptr inbounds [8 x [2 x i8]], ptr %389, i64 %290, i64 5
  %401 = load i16, ptr %400, align 2, !tbaa !35
  %402 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %298, i64 19
  store i16 %401, ptr %402, align 2, !tbaa !35
  %403 = getelementptr inbounds [8 x [2 x i8]], ptr %389, i64 %290, i64 6
  %404 = load i16, ptr %403, align 2, !tbaa !35
  %405 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %298, i64 27
  store i16 %404, ptr %405, align 2, !tbaa !35
  %406 = getelementptr inbounds [8 x [2 x i8]], ptr %389, i64 %290, i64 3
  %407 = load i16, ptr %406, align 2, !tbaa !35
  %408 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %298, i64 35
  store i16 %407, ptr %408, align 2, !tbaa !35
  br label %416

409:                                              ; preds = %393, %409
  %410 = phi i64 [ %414, %409 ], [ 0, %393 ]
  %411 = shl nuw nsw i64 %410, 3
  %412 = add nuw nsw i64 %411, 11
  %413 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %298, i64 %412
  store i16 0, ptr %413, align 2, !tbaa !35
  %414 = add nuw nsw i64 %410, 1
  %415 = icmp eq i64 %414, 4
  br i1 %415, label %416, label %409, !llvm.loop !140

416:                                              ; preds = %409, %396, %386
  %417 = and i1 %274, %297
  br i1 %417, label %296, label %295, !llvm.loop !141

418:                                              ; preds = %295
  %419 = load i32, ptr %8, align 4, !tbaa !41
  %420 = and i32 %2, 1
  %421 = and i32 %420, %419
  %422 = zext nneg i32 %421 to i64
  %423 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 81, i64 %422
  %424 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 82
  store ptr %423, ptr %424, align 16, !tbaa !46
  %425 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 79, i64 %422
  %426 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 80
  store ptr %425, ptr %426, align 8, !tbaa !142
  %427 = load i32, ptr %280, align 16, !tbaa !69
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %457, label %429

429:                                              ; preds = %418
  tail call fastcc void @x264_macroblock_cache_skip(ptr noundef nonnull %0) #16
  %430 = load i32, ptr %32, align 8, !tbaa !126
  %431 = and i32 %430, 1
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %438, label %433

433:                                              ; preds = %429
  %434 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 49
  %435 = load ptr, ptr %434, align 16, !tbaa !64
  %436 = getelementptr inbounds i8, ptr %435, i64 %290
  %437 = load i8, ptr %436, align 1, !tbaa !35
  br label %438

438:                                              ; preds = %429, %433
  %439 = phi i8 [ %437, %433 ], [ 0, %429 ]
  %440 = and i8 %439, 2
  %441 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 11
  store i8 %440, ptr %441, align 1, !tbaa !35
  %442 = and i8 %439, 8
  %443 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 27
  store i8 %442, ptr %443, align 1, !tbaa !35
  %444 = and i32 %430, 2
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %451, label %446

446:                                              ; preds = %438
  %447 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 49
  %448 = load ptr, ptr %447, align 16, !tbaa !64
  %449 = getelementptr inbounds i8, ptr %448, i64 %289
  %450 = load i8, ptr %449, align 1, !tbaa !35
  br label %451

451:                                              ; preds = %438, %446
  %452 = phi i8 [ %450, %446 ], [ 0, %438 ]
  %453 = and i8 %452, 4
  %454 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 4
  store i8 %453, ptr %454, align 1, !tbaa !35
  %455 = and i8 %452, 8
  %456 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 6
  store i8 %455, ptr %456, align 1, !tbaa !35
  br label %457

457:                                              ; preds = %418, %451, %295
  %458 = load i32, ptr %268, align 16, !tbaa !5
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %460, label %462

460:                                              ; preds = %457
  %461 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 10
  tail call void @x264_mb_predict_mv_pskip(ptr noundef nonnull %0, ptr noundef nonnull %461) #17
  br label %462

462:                                              ; preds = %457, %460, %265
  %463 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 27
  %464 = load i32, ptr %463, align 4, !tbaa !143
  %465 = and i32 %464, 11
  %466 = shl i32 %464, 1
  %467 = and i32 %466, 4
  %468 = or disjoint i32 %467, %465
  %469 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 25
  store i32 %468, ptr %469, align 4, !tbaa !38
  %470 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26
  store i32 %468, ptr %470, align 4, !tbaa !38
  %471 = and i32 %464, 2
  %472 = icmp eq i32 %471, 0
  %473 = select i1 %472, i32 1, i32 15
  %474 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 1
  store i32 %473, ptr %474, align 4, !tbaa !38
  %475 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 4
  store i32 %473, ptr %475, align 4, !tbaa !38
  %476 = and i32 %464, 1
  %477 = icmp eq i32 %476, 0
  %478 = select i1 %477, i32 6, i32 15
  %479 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 25, i64 2
  store i32 %478, ptr %479, align 4, !tbaa !38
  %480 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 10
  store i32 %478, ptr %480, align 4, !tbaa !38
  %481 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 8
  store i32 %478, ptr %481, align 4, !tbaa !38
  %482 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 2
  store i32 %478, ptr %482, align 4, !tbaa !38
  %483 = and i32 %464, 4
  %484 = select i1 %472, i32 0, i32 10
  %485 = or disjoint i32 %483, %484
  %486 = or disjoint i32 %485, 1
  %487 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 25, i64 1
  store i32 %486, ptr %487, align 4, !tbaa !38
  %488 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 5
  store i32 %486, ptr %488, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn uwtable
define internal fastcc void @x264_macroblock_cache_load_neighbours(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = shl nsw i32 -1, %5
  %7 = add i32 %6, %2
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !58
  %10 = mul nsw i32 %7, %9
  %11 = add nsw i32 %10, %1
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 4
  store i32 %1, ptr %12, align 16, !tbaa !144
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  store i32 %2, ptr %13, align 4, !tbaa !42
  %14 = mul nsw i32 %9, %2
  %15 = add nsw i32 %14, %1
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  store i32 %15, ptr %16, align 8, !tbaa !145
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !59
  %19 = mul nsw i32 %18, %2
  %20 = add nsw i32 %19, %1
  %21 = shl nsw i32 %20, 1
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 7
  store i32 %21, ptr %22, align 4, !tbaa !137
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !60
  %25 = mul nsw i32 %24, %2
  %26 = add nsw i32 %25, %1
  %27 = shl nsw i32 %26, 2
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 8
  store i32 %27, ptr %28, align 16, !tbaa !138
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 24
  store i32 0, ptr %29, align 8, !tbaa !126
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 27
  store i32 0, ptr %30, align 4, !tbaa !143
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 28
  store i32 0, ptr %31, align 16, !tbaa !146
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
  store i32 1, ptr %31, align 16, !tbaa !146
  %42 = add nsw i32 %15, -1
  store i32 %42, ptr %33, align 8, !tbaa !124
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 38
  %44 = load ptr, ptr %43, align 8, !tbaa !147
  %45 = sext i32 %42 to i64
  %46 = getelementptr inbounds i8, ptr %44, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !35
  %48 = sext i8 %47 to i32
  store i32 %48, ptr %41, align 8, !tbaa !148
  %49 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 3
  %50 = load i32, ptr %49, align 4, !tbaa !149
  %51 = icmp sgt i32 %15, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %40
  store i32 1, ptr %29, align 8, !tbaa !126
  %53 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 27
  %54 = load i32, ptr %53, align 4, !tbaa !150
  %55 = icmp eq i32 %54, 0
  %56 = icmp ult i8 %47, 4
  %57 = select i1 %55, i1 true, i1 %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 1, ptr %30, align 4, !tbaa !143
  br label %59

59:                                               ; preds = %52, %40, %58, %3
  %60 = phi i32 [ 0, %52 ], [ 0, %40 ], [ 1, %58 ], [ 0, %3 ]
  %61 = phi i32 [ 1, %52 ], [ 0, %40 ], [ 1, %58 ], [ 0, %3 ]
  %62 = phi i32 [ 1, %52 ], [ 1, %40 ], [ 1, %58 ], [ 0, %3 ]
  %63 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 5
  %64 = load i32, ptr %63, align 4, !tbaa !151
  %65 = ashr i32 %64, %5
  %66 = ashr i32 %2, %5
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %162, label %68

68:                                               ; preds = %59
  %69 = icmp sgt i32 %11, -1
  br i1 %69, label %70, label %129

70:                                               ; preds = %68
  %71 = or disjoint i32 %62, 2
  store i32 %71, ptr %31, align 16, !tbaa !146
  store i32 %11, ptr %32, align 4, !tbaa !125
  %72 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 38
  %73 = load ptr, ptr %72, align 8, !tbaa !147
  %74 = zext nneg i32 %11 to i64
  %75 = getelementptr inbounds i8, ptr %73, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !35
  %77 = sext i8 %76 to i32
  store i32 %77, ptr %36, align 4, !tbaa !152
  %78 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 3
  %79 = load i32, ptr %78, align 4, !tbaa !149
  %80 = icmp slt i32 %11, %79
  br i1 %80, label %107, label %81

81:                                               ; preds = %70
  %82 = or disjoint i32 %61, 2
  store i32 %82, ptr %29, align 8, !tbaa !126
  %83 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 27
  %84 = load i32, ptr %83, align 4, !tbaa !150
  %85 = icmp eq i32 %84, 0
  %86 = icmp ult i8 %76, 4
  %87 = select i1 %85, i1 true, i1 %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = or disjoint i32 %60, 2
  store i32 %89, ptr %30, align 4, !tbaa !143
  br label %90

90:                                               ; preds = %81, %88
  %91 = phi i32 [ %60, %81 ], [ %89, %88 ]
  %92 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 41
  %93 = load ptr, ptr %92, align 16, !tbaa !63
  %94 = getelementptr inbounds i16, ptr %93, i64 %74
  tail call void @llvm.prefetch.p0(ptr %94, i32 0, i32 3, i32 1)
  %95 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 42
  %96 = load ptr, ptr %95, align 8, !tbaa !67
  %97 = getelementptr inbounds [8 x i8], ptr %96, i64 %74
  tail call void @llvm.prefetch.p0(ptr %97, i32 0, i32 3, i32 1)
  %98 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 43
  %99 = load ptr, ptr %98, align 16, !tbaa !68
  %100 = getelementptr inbounds [24 x i8], ptr %99, i64 %74, i64 12
  tail call void @llvm.prefetch.p0(ptr nonnull %100, i32 0, i32 3, i32 1)
  %101 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 50
  %102 = load ptr, ptr %101, align 8, !tbaa !65
  %103 = getelementptr inbounds i8, ptr %102, i64 %74
  tail call void @llvm.prefetch.p0(ptr %103, i32 0, i32 3, i32 1)
  %104 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 49
  %105 = load ptr, ptr %104, align 16, !tbaa !64
  %106 = getelementptr inbounds i8, ptr %105, i64 %74
  tail call void @llvm.prefetch.p0(ptr %106, i32 0, i32 3, i32 1)
  br label %107

107:                                              ; preds = %70, %90
  %108 = phi i32 [ %60, %70 ], [ %91, %90 ]
  %109 = phi i32 [ %61, %70 ], [ %82, %90 ]
  %110 = icmp ne i32 %11, 0
  %111 = select i1 %39, i1 %110, i1 false
  br i1 %111, label %112, label %129

112:                                              ; preds = %107
  %113 = add nsw i32 %11, -1
  %114 = or disjoint i32 %62, 10
  store i32 %114, ptr %31, align 16, !tbaa !146
  store i32 %113, ptr %34, align 16, !tbaa !153
  %115 = zext nneg i32 %113 to i64
  %116 = getelementptr inbounds i8, ptr %73, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !35
  %118 = sext i8 %117 to i32
  store i32 %118, ptr %37, align 4, !tbaa !154
  %119 = icmp sgt i32 %11, %79
  br i1 %119, label %120, label %129

120:                                              ; preds = %112
  %121 = or i32 %109, 8
  store i32 %121, ptr %29, align 8, !tbaa !126
  %122 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 27
  %123 = load i32, ptr %122, align 4, !tbaa !150
  %124 = icmp eq i32 %123, 0
  %125 = icmp ult i8 %117, 4
  %126 = select i1 %124, i1 true, i1 %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = or i32 %108, 8
  store i32 %128, ptr %30, align 4, !tbaa !143
  br label %129

129:                                              ; preds = %120, %68, %112, %127, %107
  %130 = phi i32 [ %108, %120 ], [ %60, %68 ], [ %108, %112 ], [ %128, %127 ], [ %108, %107 ]
  %131 = phi i32 [ %121, %120 ], [ %61, %68 ], [ %109, %112 ], [ %121, %127 ], [ %109, %107 ]
  %132 = phi i32 [ %114, %120 ], [ %62, %68 ], [ %114, %112 ], [ %114, %127 ], [ %71, %107 ]
  %133 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %134 = load ptr, ptr %133, align 16, !tbaa !52
  %135 = getelementptr inbounds %struct.x264_sps_t, ptr %134, i64 0, i32 16
  %136 = load i32, ptr %135, align 4, !tbaa !53
  %137 = add nsw i32 %136, -1
  %138 = icmp sgt i32 %137, %1
  %139 = icmp sgt i32 %11, -2
  %140 = select i1 %138, i1 %139, i1 false
  br i1 %140, label %141, label %162

141:                                              ; preds = %129
  %142 = add nsw i32 %11, 1
  %143 = or i32 %132, 4
  store i32 %143, ptr %31, align 16, !tbaa !146
  store i32 %142, ptr %35, align 4, !tbaa !155
  %144 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 38
  %145 = load ptr, ptr %144, align 8, !tbaa !147
  %146 = zext nneg i32 %142 to i64
  %147 = getelementptr inbounds i8, ptr %145, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !35
  %149 = sext i8 %148 to i32
  store i32 %149, ptr %38, align 16, !tbaa !156
  %150 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 3
  %151 = load i32, ptr %150, align 4, !tbaa !149
  %152 = icmp slt i32 %142, %151
  br i1 %152, label %162, label %153

153:                                              ; preds = %141
  %154 = or i32 %131, 4
  store i32 %154, ptr %29, align 8, !tbaa !126
  %155 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 27
  %156 = load i32, ptr %155, align 4, !tbaa !150
  %157 = icmp eq i32 %156, 0
  %158 = icmp ult i8 %148, 4
  %159 = select i1 %157, i1 true, i1 %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %153
  %161 = or i32 %130, 4
  store i32 %161, ptr %30, align 4, !tbaa !143
  br label %162

162:                                              ; preds = %153, %129, %160, %141, %59
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32 immarg) #7

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @copy_column8(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 {
  br label %4

3:                                                ; preds = %4
  ret void

4:                                                ; preds = %2, %4
  %5 = phi i64 [ -4, %2 ], [ %10, %4 ]
  %6 = shl nsw i64 %5, 5
  %7 = getelementptr inbounds i8, ptr %1, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !35
  %9 = getelementptr inbounds i8, ptr %0, i64 %6
  store i8 %8, ptr %9, align 1, !tbaa !35
  %10 = add nsw i64 %5, 1
  %11 = icmp eq i64 %10, 4
  br i1 %11, label %3, label %4, !llvm.loop !157
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_macroblock_load_pic_pointers(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x i32], align 4
  %6 = icmp eq i32 %3, 0
  %7 = select i1 %6, i32 16, i32 8
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %9 = load ptr, ptr %8, align 16, !tbaa !86
  %10 = icmp ne i32 %3, 0
  %11 = zext i1 %10 to i32
  %12 = zext i1 %10 to i64
  %13 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 24, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !38
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %16 = load i32, ptr %15, align 4, !tbaa !41
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
  %38 = load ptr, ptr %37, align 8, !tbaa !40
  %39 = sext i32 %35 to i64
  %40 = getelementptr inbounds i8, ptr %38, i64 %39
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %42 = load i32, ptr %41, align 4, !tbaa !109
  %43 = and i32 %42, %2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 62, i64 %44, i64 %36
  %46 = load ptr, ptr %45, align 8, !tbaa !40
  %47 = shl nsw i32 %1, 4
  %48 = ashr exact i32 %47, %11
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, ptr %46, i64 %49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  store i32 %35, ptr %5, align 4, !tbaa !38
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
  store i32 %61, ptr %51, align 4, !tbaa !38
  %62 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23, i64 %36
  store i32 %17, ptr %62, align 4, !tbaa !38
  %63 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %64 = load ptr, ptr %63, align 8, !tbaa !135
  %65 = getelementptr inbounds %struct.x264_frame, ptr %64, i64 0, i32 30, i64 %36
  %66 = load ptr, ptr %65, align 8, !tbaa !40
  %67 = getelementptr inbounds i8, ptr %66, i64 %39
  %68 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 17, i64 %36
  store ptr %67, ptr %68, align 8, !tbaa !40
  %69 = select i1 %10, i64 3, i64 0
  %70 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !40
  %72 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 %36
  %73 = load ptr, ptr %72, align 8, !tbaa !40
  tail call void %71(ptr noundef %73, i32 noundef 16, ptr noundef %67, i32 noundef %17, i32 noundef %7) #17
  %74 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 %36
  %75 = load ptr, ptr %74, align 8, !tbaa !40
  %76 = getelementptr inbounds i8, ptr %75, i64 -33
  %77 = getelementptr inbounds i8, ptr %50, i64 -1
  %78 = select i1 %6, i64 25, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %76, ptr noundef nonnull align 1 dereferenceable(13) %77, i64 %78, i1 false)
  %79 = load i32, ptr %15, align 4, !tbaa !41
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
  %89 = load i8, ptr %88, align 1, !tbaa !35
  %90 = load ptr, ptr %74, align 8, !tbaa !40
  %91 = shl nsw i64 %86, 5
  %92 = getelementptr i8, ptr %90, i64 %91
  %93 = getelementptr i8, ptr %92, i64 -1
  store i8 %89, ptr %93, align 1, !tbaa !35
  %94 = add nuw nsw i64 %86, 1
  %95 = icmp eq i64 %94, %84
  br i1 %95, label %96, label %85, !llvm.loop !158

96:                                               ; preds = %85, %60
  %97 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  %98 = load i32, ptr %97, align 8, !tbaa !38
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load i32, ptr %15, align 4, !tbaa !41
  %102 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20
  %103 = add nuw nsw i32 %3, 3
  %104 = select i1 %6, i32 0, i32 %103
  %105 = zext nneg i32 %104 to i64
  %106 = zext nneg i32 %98 to i64
  br label %121

107:                                              ; preds = %160, %96
  %108 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %109 = load i32, ptr %108, align 16, !tbaa !5
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %190

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19, i64 1
  %113 = load i32, ptr %112, align 4, !tbaa !38
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %190

115:                                              ; preds = %111
  %116 = load i32, ptr %15, align 4, !tbaa !41
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
  %127 = load ptr, ptr %126, align 8, !tbaa !40
  %128 = getelementptr inbounds %struct.x264_frame, ptr %127, i64 0, i32 30, i64 %36
  %129 = load ptr, ptr %128, align 8, !tbaa !40
  %130 = and i64 %122, 1
  %131 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !38
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, ptr %129, i64 %133
  %135 = getelementptr inbounds [32 x [6 x ptr]], ptr %102, i64 0, i64 %122
  %136 = getelementptr inbounds [32 x [6 x ptr]], ptr %102, i64 0, i64 %122, i64 %105
  store ptr %134, ptr %136, align 8, !tbaa !40
  br i1 %6, label %141, label %160

137:                                              ; preds = %141
  %138 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 %122, i64 0, i32 5
  %139 = load ptr, ptr %138, align 16, !tbaa !44
  %140 = icmp eq ptr %139, null
  br i1 %140, label %155, label %150

141:                                              ; preds = %121, %141
  %142 = phi i64 [ %148, %141 ], [ 1, %121 ]
  %143 = load ptr, ptr %126, align 8, !tbaa !40
  %144 = getelementptr inbounds %struct.x264_frame, ptr %143, i64 0, i32 31, i64 %142
  %145 = load ptr, ptr %144, align 8, !tbaa !40
  %146 = getelementptr inbounds i8, ptr %145, i64 %133
  %147 = getelementptr inbounds [32 x [6 x ptr]], ptr %102, i64 0, i64 %122, i64 %142
  store ptr %146, ptr %147, align 8, !tbaa !40
  %148 = add nuw nsw i64 %142, 1
  %149 = icmp eq i64 %148, 4
  br i1 %149, label %137, label %141, !llvm.loop !159

150:                                              ; preds = %137
  %151 = load ptr, ptr %63, align 8, !tbaa !135
  %152 = getelementptr inbounds %struct.x264_frame, ptr %151, i64 0, i32 38, i64 %125
  %153 = load ptr, ptr %152, align 8, !tbaa !40
  %154 = getelementptr inbounds i8, ptr %153, i64 %133
  br label %157

155:                                              ; preds = %137
  %156 = load ptr, ptr %135, align 16, !tbaa !40
  br label %157

157:                                              ; preds = %150, %155
  %158 = phi ptr [ %156, %155 ], [ %154, %150 ]
  %159 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 21, i64 %122
  store ptr %158, ptr %159, align 8, !tbaa !40
  br label %160

160:                                              ; preds = %157, %121
  %161 = add nuw nsw i64 %122, 1
  %162 = icmp eq i64 %161, %106
  br i1 %162, label %107, label %121, !llvm.loop !160

163:                                              ; preds = %115, %187
  %164 = phi i64 [ 0, %115 ], [ %188, %187 ]
  %165 = trunc i64 %164 to i32
  %166 = lshr i32 %165, %116
  %167 = zext nneg i32 %166 to i64
  %168 = getelementptr inbounds ptr, ptr %53, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !40
  %170 = getelementptr inbounds %struct.x264_frame, ptr %169, i64 0, i32 30, i64 %36
  %171 = load ptr, ptr %170, align 8, !tbaa !40
  %172 = and i64 %164, 1
  %173 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !38
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, ptr %171, i64 %175
  %177 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20, i64 1, i64 %164, i64 %119
  store ptr %176, ptr %177, align 8, !tbaa !40
  br i1 %6, label %178, label %187

178:                                              ; preds = %163, %178
  %179 = phi i64 [ %185, %178 ], [ 1, %163 ]
  %180 = load ptr, ptr %168, align 8, !tbaa !40
  %181 = getelementptr inbounds %struct.x264_frame, ptr %180, i64 0, i32 31, i64 %179
  %182 = load ptr, ptr %181, align 8, !tbaa !40
  %183 = getelementptr inbounds i8, ptr %182, i64 %175
  %184 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20, i64 1, i64 %164, i64 %179
  store ptr %183, ptr %184, align 8, !tbaa !40
  %185 = add nuw nsw i64 %179, 1
  %186 = icmp eq i64 %185, 4
  br i1 %186, label %187, label %178, !llvm.loop !161

187:                                              ; preds = %178, %163
  %188 = add nuw nsw i64 %164, 1
  %189 = icmp eq i64 %188, %120
  br i1 %189, label %190, label %163, !llvm.loop !162

190:                                              ; preds = %187, %111, %107
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @x264_macroblock_cache_skip(ptr nocapture noundef writeonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 12
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef nonnull %2) #16
  ret void
}

; Function Attrs: optsize
declare void @x264_mb_predict_mv_pskip(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_load_neighbours_deblock(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 {
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 31
  %5 = load i32, ptr %4, align 4, !tbaa !163
  %6 = icmp eq i32 %5, 2
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %8 = load i32, ptr %7, align 4, !tbaa !41
  %9 = shl nsw i32 -1, %8
  %10 = add i32 %9, %2
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !58
  %13 = mul nsw i32 %10, %12
  %14 = add nsw i32 %13, %1
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 24
  store i32 0, ptr %15, align 8, !tbaa !126
  %16 = mul nsw i32 %12, %2
  %17 = add nsw i32 %16, %1
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  store i32 %17, ptr %18, align 8, !tbaa !145
  %19 = icmp sgt i32 %1, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = add nsw i32 %17, -1
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 34
  store i32 %21, ptr %22, align 8, !tbaa !124
  br i1 %6, label %23, label %33

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 51
  %25 = load ptr, ptr %24, align 16, !tbaa !66
  %26 = sext i32 %21 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !36
  %29 = sext i32 %17 to i64
  %30 = getelementptr inbounds i16, ptr %25, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !36
  %32 = icmp eq i16 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %23, %20
  store i32 1, ptr %15, align 8, !tbaa !126
  br label %34

34:                                               ; preds = %33, %3
  %35 = phi i32 [ 1, %33 ], [ 0, %3 ]
  %36 = icmp sgt i32 %14, -1
  br i1 %36, label %41, label %60

37:                                               ; preds = %23
  %38 = icmp sgt i32 %14, -1
  br i1 %38, label %39, label %60

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 35
  store i32 %14, ptr %40, align 4, !tbaa !125
  br label %49

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 35
  store i32 %14, ptr %42, align 4, !tbaa !125
  br i1 %6, label %43, label %57

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 51
  %45 = load ptr, ptr %44, align 16, !tbaa !66
  %46 = sext i32 %17 to i64
  %47 = getelementptr inbounds i16, ptr %45, i64 %46
  %48 = load i16, ptr %47, align 2, !tbaa !36
  br label %49

49:                                               ; preds = %43, %39
  %50 = phi i16 [ %48, %43 ], [ %31, %39 ]
  %51 = phi i32 [ %35, %43 ], [ 0, %39 ]
  %52 = phi ptr [ %45, %43 ], [ %25, %39 ]
  %53 = zext nneg i32 %14 to i64
  %54 = getelementptr inbounds i16, ptr %52, i64 %53
  %55 = load i16, ptr %54, align 2, !tbaa !36
  %56 = icmp eq i16 %55, %50
  br i1 %56, label %57, label %60

57:                                               ; preds = %49, %41
  %58 = phi i32 [ %51, %49 ], [ %35, %41 ]
  %59 = or i32 %58, 2
  store i32 %59, ptr %15, align 8, !tbaa !126
  br label %60

60:                                               ; preds = %37, %49, %57, %34
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_cache_load_deblock(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 38
  %3 = load ptr, ptr %2, align 8, !tbaa !147
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !145
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %3, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !35
  %9 = icmp ult i8 %8, 4
  br i1 %9, label %215, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !149
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %144, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 31
  %16 = load i32, ptr %15, align 4, !tbaa !163
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %144, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 24
  %20 = load i32, ptr %19, align 8, !tbaa !126
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 4
  %22 = load i32, ptr %21, align 16, !tbaa !144
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !42
  tail call void @x264_macroblock_cache_load_neighbours_deblock(ptr noundef nonnull %0, i32 noundef %22, i32 noundef %24) #16
  %25 = xor i32 %20, -1
  %26 = load i32, ptr %19, align 8, !tbaa !126
  %27 = and i32 %26, %25
  store i32 %27, ptr %19, align 8, !tbaa !126
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %144, label %29

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 34
  %31 = load i32, ptr %30, align 8, !tbaa !124
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %33 = load i32, ptr %32, align 4, !tbaa !41
  %34 = shl nsw i32 -1, %33
  %35 = add i32 %34, %24
  %36 = shl nsw i32 %35, 1
  %37 = or disjoint i32 %36, 1
  %38 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !59
  %40 = mul nsw i32 %37, %39
  %41 = shl nsw i32 %22, 1
  %42 = add nsw i32 %40, %41
  %43 = shl nsw i32 %35, 2
  %44 = or disjoint i32 %43, 3
  %45 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 3
  %46 = load i32, ptr %45, align 4, !tbaa !60
  %47 = mul nsw i32 %44, %46
  %48 = shl nsw i32 %22, 2
  %49 = add nsw i32 %47, %48
  %50 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 43
  %51 = load ptr, ptr %50, align 16, !tbaa !68
  %52 = and i32 %27, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %29
  %55 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 35
  %56 = load i32, ptr %55, align 4, !tbaa !125
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [24 x i8], ptr %51, i64 %57, i64 12
  %59 = load i32, ptr %58, align 4, !tbaa !35
  %60 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 4
  store i32 %59, ptr %60, align 1, !tbaa !35
  br label %61

61:                                               ; preds = %54, %29
  %62 = and i32 %27, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %61
  %65 = sext i32 %31 to i64
  %66 = getelementptr inbounds [24 x i8], ptr %51, i64 %65, i64 3
  %67 = load i8, ptr %66, align 1, !tbaa !35
  %68 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 11
  store i8 %67, ptr %68, align 1, !tbaa !35
  %69 = getelementptr inbounds [24 x i8], ptr %51, i64 %65, i64 7
  %70 = load i8, ptr %69, align 1, !tbaa !35
  %71 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 19
  store i8 %70, ptr %71, align 1, !tbaa !35
  %72 = getelementptr inbounds [24 x i8], ptr %51, i64 %65, i64 11
  %73 = load i8, ptr %72, align 1, !tbaa !35
  %74 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 27
  store i8 %73, ptr %74, align 1, !tbaa !35
  %75 = getelementptr inbounds [24 x i8], ptr %51, i64 %65, i64 15
  %76 = load i8, ptr %75, align 1, !tbaa !35
  %77 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 35
  store i8 %76, ptr %77, align 1, !tbaa !35
  br label %78

78:                                               ; preds = %64, %61
  %79 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %80 = load i32, ptr %79, align 16, !tbaa !5
  %81 = icmp eq i32 %80, 1
  %82 = sext i32 %42 to i64
  %83 = sext i32 %49 to i64
  %84 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 7
  %85 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 8
  %86 = shl nsw i32 %46, 1
  %87 = mul nsw i32 %46, 3
  br label %88

88:                                               ; preds = %78, %142
  %89 = phi i1 [ true, %78 ], [ false, %142 ]
  %90 = phi i64 [ 0, %78 ], [ 1, %142 ]
  %91 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 45, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !40
  %93 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 47, i64 %90
  %94 = load ptr, ptr %93, align 8, !tbaa !40
  br i1 %53, label %106, label %95

95:                                               ; preds = %88
  %96 = getelementptr inbounds i8, ptr %94, i64 %82
  %97 = load i8, ptr %96, align 1, !tbaa !35
  %98 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %90, i64 5
  store i8 %97, ptr %98, align 1, !tbaa !35
  %99 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %90, i64 4
  store i8 %97, ptr %99, align 1, !tbaa !35
  %100 = getelementptr i8, ptr %96, i64 1
  %101 = load i8, ptr %100, align 1, !tbaa !35
  %102 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %90, i64 7
  store i8 %101, ptr %102, align 1, !tbaa !35
  %103 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %90, i64 6
  store i8 %101, ptr %103, align 1, !tbaa !35
  %104 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %90, i64 4
  %105 = getelementptr inbounds [2 x i16], ptr %92, i64 %83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %104, ptr noundef nonnull align 8 dereferenceable(16) %105, i64 16, i1 false), !tbaa.struct !136
  br label %106

106:                                              ; preds = %95, %88
  br i1 %63, label %142, label %107

107:                                              ; preds = %106
  %108 = load i32, ptr %84, align 4, !tbaa !137
  %109 = add nsw i32 %108, -1
  %110 = load i32, ptr %85, align 16, !tbaa !138
  %111 = add nsw i32 %110, -1
  %112 = sext i32 %109 to i64
  %113 = getelementptr inbounds i8, ptr %94, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !35
  %115 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %90, i64 19
  store i8 %114, ptr %115, align 1, !tbaa !35
  %116 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %90, i64 11
  store i8 %114, ptr %116, align 1, !tbaa !35
  %117 = add nsw i32 %109, %39
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, ptr %94, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !35
  %121 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %90, i64 35
  store i8 %120, ptr %121, align 1, !tbaa !35
  %122 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %90, i64 27
  store i8 %120, ptr %122, align 1, !tbaa !35
  %123 = sext i32 %111 to i64
  %124 = getelementptr inbounds [2 x i16], ptr %92, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !35
  %126 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %90, i64 11
  store i32 %125, ptr %126, align 4, !tbaa !35
  %127 = add nsw i32 %111, %46
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [2 x i16], ptr %92, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !35
  %131 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %90, i64 19
  store i32 %130, ptr %131, align 4, !tbaa !35
  %132 = add nsw i32 %111, %86
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [2 x i16], ptr %92, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !35
  %136 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %90, i64 27
  store i32 %135, ptr %136, align 4, !tbaa !35
  %137 = add nsw i32 %111, %87
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [2 x i16], ptr %92, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !35
  %141 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %90, i64 35
  store i32 %140, ptr %141, align 4, !tbaa !35
  br label %142

142:                                              ; preds = %107, %106
  %143 = and i1 %89, %81
  br i1 %143, label %88, label %144, !llvm.loop !164

144:                                              ; preds = %142, %18, %14, %10
  %145 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  %146 = load i32, ptr %145, align 4, !tbaa !73
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %215, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %150 = load i32, ptr %149, align 16, !tbaa !5
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %215

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 4
  %154 = load i8, ptr %153, align 1, !tbaa !35
  %155 = sext i8 %154 to i64
  %156 = add nsw i64 %155, 2
  %157 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 85, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !35
  %159 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 5
  store i8 %158, ptr %159, align 1, !tbaa !35
  store i8 %158, ptr %153, align 1, !tbaa !35
  %160 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 6
  %161 = load i8, ptr %160, align 1, !tbaa !35
  %162 = sext i8 %161 to i64
  %163 = add nsw i64 %162, 2
  %164 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 85, i64 %163
  %165 = load i8, ptr %164, align 1, !tbaa !35
  %166 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 7
  store i8 %165, ptr %166, align 1, !tbaa !35
  store i8 %165, ptr %160, align 1, !tbaa !35
  %167 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 11
  %168 = load i8, ptr %167, align 1, !tbaa !35
  %169 = sext i8 %168 to i64
  %170 = add nsw i64 %169, 2
  %171 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 85, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !35
  %173 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 19
  store i8 %172, ptr %173, align 1, !tbaa !35
  store i8 %172, ptr %167, align 1, !tbaa !35
  %174 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 27
  %175 = load i8, ptr %174, align 1, !tbaa !35
  %176 = sext i8 %175 to i64
  %177 = add nsw i64 %176, 2
  %178 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 85, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !35
  %180 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 35
  store i8 %179, ptr %180, align 1, !tbaa !35
  store i8 %179, ptr %174, align 1, !tbaa !35
  %181 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %182 = load i8, ptr %181, align 1, !tbaa !35
  %183 = sext i8 %182 to i64
  %184 = add nsw i64 %183, 2
  %185 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 85, i64 %184
  %186 = load i8, ptr %185, align 1, !tbaa !35
  %187 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 14
  %188 = load i8, ptr %187, align 1, !tbaa !35
  %189 = sext i8 %188 to i64
  %190 = add nsw i64 %189, 2
  %191 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 85, i64 %190
  %192 = load i8, ptr %191, align 1, !tbaa !35
  %193 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 28
  %194 = load i8, ptr %193, align 1, !tbaa !35
  %195 = sext i8 %194 to i64
  %196 = add nsw i64 %195, 2
  %197 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 85, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !35
  %199 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 30
  %200 = load i8, ptr %199, align 1, !tbaa !35
  %201 = sext i8 %200 to i64
  %202 = add nsw i64 %201, 2
  %203 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 85, i64 %202
  %204 = load i8, ptr %203, align 1, !tbaa !35
  %205 = zext i8 %186 to i32
  %206 = zext i8 %192 to i32
  %207 = tail call fastcc i32 @pack16to32(i32 noundef %205, i32 noundef %206) #16, !range !165
  %208 = mul nuw i32 %207, 257
  %209 = zext i8 %198 to i32
  %210 = zext i8 %204 to i32
  %211 = tail call fastcc i32 @pack16to32(i32 noundef %209, i32 noundef %210) #16, !range !165
  %212 = mul nuw i32 %211, 257
  store i32 %208, ptr %181, align 1, !tbaa !35
  %213 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 20
  store i32 %208, ptr %213, align 1, !tbaa !35
  store i32 %212, ptr %193, align 1, !tbaa !35
  %214 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 36
  store i32 %212, ptr %214, align 1, !tbaa !35
  br label %215

215:                                              ; preds = %1, %152, %148, %144
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @pack16to32(i32 noundef %0, i32 noundef %1) unnamed_addr #12 {
  %3 = shl nuw nsw i32 %1, 16
  %4 = add nuw nsw i32 %3, %0
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_macroblock_cache_save(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !145
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 53
  %5 = load i32, ptr %4, align 8, !tbaa !166
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [19 x i8], ptr @x264_mb_type_fix, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !35
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !59
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !60
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 8
  %14 = load i32, ptr %13, align 16, !tbaa !138
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 7
  %16 = load i32, ptr %15, align 4, !tbaa !137
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 42
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  %19 = sext i32 %3 to i64
  %20 = getelementptr inbounds [8 x i8], ptr %18, i64 %19
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 43
  %22 = load ptr, ptr %21, align 16, !tbaa !68
  %23 = getelementptr inbounds [24 x i8], ptr %22, i64 %19
  tail call fastcc void @x264_macroblock_store_pic(ptr noundef %0, i32 noundef 0) #16
  tail call fastcc void @x264_macroblock_store_pic(ptr noundef %0, i32 noundef 1) #16
  tail call fastcc void @x264_macroblock_store_pic(ptr noundef %0, i32 noundef 2) #16
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %25 = load ptr, ptr %24, align 16, !tbaa !86
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 4
  %27 = load i32, ptr %26, align 16, !tbaa !144
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %29 = load i32, ptr %28, align 4, !tbaa !42
  tail call void @x264_prefetch_fenc(ptr noundef %0, ptr noundef %25, i32 noundef %27, i32 noundef %29) #16
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 38
  %31 = load ptr, ptr %30, align 8, !tbaa !147
  %32 = getelementptr inbounds i8, ptr %31, i64 %19
  store i8 %8, ptr %32, align 1, !tbaa !35
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !149
  %35 = trunc i32 %34 to i16
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 51
  %37 = load ptr, ptr %36, align 16, !tbaa !66
  %38 = getelementptr inbounds i16, ptr %37, i64 %19
  store i16 %35, ptr %38, align 2, !tbaa !36
  %39 = icmp eq i32 %5, 3
  %40 = icmp ult i32 %5, 4
  br i1 %40, label %49, label %41

41:                                               ; preds = %1
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %43 = load i32, ptr %42, align 4, !tbaa !48
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 39
  %46 = load ptr, ptr %45, align 16, !tbaa !167
  %47 = getelementptr inbounds i8, ptr %46, i64 %19
  store i8 %44, ptr %47, align 1, !tbaa !35
  %48 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 33
  store i32 %3, ptr %48, align 4, !tbaa !168
  br label %69

49:                                               ; preds = %1
  %50 = icmp ult i32 %5, 2
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 39
  %52 = load ptr, ptr %51, align 16, !tbaa !167
  %53 = getelementptr inbounds i8, ptr %52, i64 %19
  store i8 16, ptr %53, align 1, !tbaa !35
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 33
  store i32 %3, ptr %54, align 4, !tbaa !168
  br i1 %50, label %55, label %69

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 0, i64 36
  %57 = load i32, ptr %56, align 1, !tbaa !35
  store i32 %57, ptr %20, align 4, !tbaa !35
  %58 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 0, i64 15
  %59 = load i8, ptr %58, align 1, !tbaa !35
  %60 = sext i8 %59 to i32
  %61 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 0, i64 23
  %62 = load i8, ptr %61, align 1, !tbaa !35
  %63 = sext i8 %62 to i32
  %64 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 0, i64 31
  %65 = load i8, ptr %64, align 1, !tbaa !35
  %66 = sext i8 %65 to i32
  %67 = tail call fastcc i32 @pack8to32(i32 noundef %60, i32 noundef %63, i32 noundef %66) #16
  %68 = getelementptr inbounds i8, ptr %20, i64 4
  store i32 %67, ptr %68, align 4, !tbaa !35
  br label %96

69:                                               ; preds = %41, %49
  %70 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 27
  %71 = load i32, ptr %70, align 4, !tbaa !150
  %72 = icmp eq i32 %71, 0
  %73 = and i32 %5, -2
  %74 = icmp eq i32 %73, 2
  %75 = or i1 %74, %72
  %76 = select i1 %75, i64 144680345676153346, i64 -1
  store i64 %76, ptr %20, align 8, !tbaa !35
  br i1 %39, label %77, label %96

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 40
  %79 = load ptr, ptr %78, align 8, !tbaa !62
  %80 = getelementptr inbounds i8, ptr %79, i64 %19
  store i8 0, ptr %80, align 1, !tbaa !35
  %81 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 71
  store i32 0, ptr %81, align 4, !tbaa !169
  %82 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  store i32 2, ptr %82, align 4, !tbaa !170
  %83 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  store i32 15, ptr %83, align 8, !tbaa !171
  %84 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 41
  %85 = load ptr, ptr %84, align 16, !tbaa !63
  %86 = getelementptr inbounds i16, ptr %85, i64 %19
  store i16 1839, ptr %86, align 2, !tbaa !36
  %87 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  store i32 0, ptr %87, align 4, !tbaa !172
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %23, i8 16, i64 24, i1 false)
  br label %88

88:                                               ; preds = %77, %88
  %89 = phi i64 [ 0, %77 ], [ %94, %88 ]
  %90 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !38
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %92
  store i8 16, ptr %93, align 1, !tbaa !35
  %94 = add nuw nsw i64 %89, 1
  %95 = icmp eq i64 %94, 24
  br i1 %95, label %154, label %88, !llvm.loop !173

96:                                               ; preds = %55, %69
  %97 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 12
  %98 = load i32, ptr %97, align 1, !tbaa !35
  store i32 %98, ptr %23, align 4, !tbaa !35
  %99 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 20
  %100 = load i32, ptr %99, align 1, !tbaa !35
  %101 = getelementptr inbounds i8, ptr %23, i64 4
  store i32 %100, ptr %101, align 4, !tbaa !35
  %102 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 28
  %103 = load i32, ptr %102, align 1, !tbaa !35
  %104 = getelementptr inbounds i8, ptr %23, i64 8
  store i32 %103, ptr %104, align 4, !tbaa !35
  %105 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 36
  %106 = load i32, ptr %105, align 1, !tbaa !35
  %107 = getelementptr inbounds i8, ptr %23, i64 12
  store i32 %106, ptr %107, align 4, !tbaa !35
  %108 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 8
  %109 = load i32, ptr %108, align 1, !tbaa !35
  %110 = lshr i32 %109, 8
  %111 = trunc i32 %110 to i16
  %112 = getelementptr inbounds i8, ptr %23, i64 16
  store i16 %111, ptr %112, align 2, !tbaa !35
  %113 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 16
  %114 = load i32, ptr %113, align 1, !tbaa !35
  %115 = lshr i32 %114, 8
  %116 = trunc i32 %115 to i16
  %117 = getelementptr inbounds i8, ptr %23, i64 18
  store i16 %116, ptr %117, align 2, !tbaa !35
  %118 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 32
  %119 = load i32, ptr %118, align 1, !tbaa !35
  %120 = lshr i32 %119, 8
  %121 = trunc i32 %120 to i16
  %122 = getelementptr inbounds i8, ptr %23, i64 20
  store i16 %121, ptr %122, align 2, !tbaa !35
  %123 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 40
  %124 = load i32, ptr %123, align 1, !tbaa !35
  %125 = lshr i32 %124, 8
  %126 = trunc i32 %125 to i16
  %127 = getelementptr inbounds i8, ptr %23, i64 22
  store i16 %126, ptr %127, align 2, !tbaa !35
  %128 = load i32, ptr %4, align 8, !tbaa !166
  %129 = icmp eq i32 %128, 2
  br i1 %129, label %142, label %130

130:                                              ; preds = %96
  %131 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %132 = load i32, ptr %131, align 8, !tbaa !171
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  %136 = load i32, ptr %135, align 4, !tbaa !170
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 70
  %140 = load i32, ptr %139, align 8, !tbaa !174
  %141 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 68
  store i32 %140, ptr %141, align 16, !tbaa !175
  br label %142

142:                                              ; preds = %138, %134, %130, %96
  %143 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 68
  %144 = load i32, ptr %143, align 16, !tbaa !175
  %145 = trunc i32 %144 to i8
  %146 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 40
  %147 = load ptr, ptr %146, align 8, !tbaa !62
  %148 = getelementptr inbounds i8, ptr %147, i64 %19
  store i8 %145, ptr %148, align 1, !tbaa !35
  %149 = load i32, ptr %143, align 16, !tbaa !175
  %150 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 70
  %151 = load i32, ptr %150, align 8, !tbaa !174
  %152 = sub nsw i32 %149, %151
  %153 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 71
  store i32 %152, ptr %153, align 4, !tbaa !169
  store i32 %149, ptr %150, align 8, !tbaa !174
  br label %154

154:                                              ; preds = %88, %142
  %155 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %156 = load i32, ptr %155, align 8, !tbaa !171
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load i32, ptr %4, align 8, !tbaa !166
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %163, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  store i32 0, ptr %162, align 4, !tbaa !172
  br label %163

163:                                              ; preds = %161, %158, %154
  %164 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  %165 = load i32, ptr %164, align 4, !tbaa !172
  %166 = trunc i32 %165 to i8
  %167 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 50
  %168 = load ptr, ptr %167, align 8, !tbaa !65
  %169 = getelementptr inbounds i8, ptr %168, i64 %19
  store i8 %166, ptr %169, align 1, !tbaa !35
  %170 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %171 = load i32, ptr %170, align 16, !tbaa !5
  %172 = icmp eq i32 %171, 2
  br i1 %172, label %254, label %173

173:                                              ; preds = %163
  %174 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 45
  %175 = load ptr, ptr %174, align 16, !tbaa !40
  %176 = sext i32 %14 to i64
  %177 = getelementptr inbounds [2 x i16], ptr %175, i64 %176
  %178 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 45, i64 1
  %179 = load ptr, ptr %178, align 8, !tbaa !40
  %180 = getelementptr inbounds [2 x i16], ptr %179, i64 %176
  %181 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 47
  %182 = load ptr, ptr %181, align 16, !tbaa !40
  %183 = sext i32 %16 to i64
  %184 = getelementptr inbounds i8, ptr %182, i64 %183
  %185 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 47, i64 1
  %186 = load ptr, ptr %185, align 8, !tbaa !40
  %187 = getelementptr inbounds i8, ptr %186, i64 %183
  br i1 %40, label %236, label %188

188:                                              ; preds = %173
  %189 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %190 = load i8, ptr %189, align 1, !tbaa !35
  store i8 %190, ptr %184, align 1, !tbaa !35
  %191 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 14
  %192 = load i8, ptr %191, align 1, !tbaa !35
  %193 = getelementptr inbounds i8, ptr %184, i64 1
  store i8 %192, ptr %193, align 1, !tbaa !35
  %194 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 28
  %195 = load i8, ptr %194, align 1, !tbaa !35
  %196 = sext i32 %10 to i64
  %197 = getelementptr inbounds i8, ptr %184, i64 %196
  store i8 %195, ptr %197, align 1, !tbaa !35
  %198 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 30
  %199 = load i8, ptr %198, align 1, !tbaa !35
  %200 = add nsw i32 %10, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, ptr %184, i64 %201
  store i8 %199, ptr %202, align 1, !tbaa !35
  %203 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %177, ptr noundef nonnull align 4 dereferenceable(16) %203, i64 16, i1 false), !tbaa.struct !136
  %204 = sext i32 %12 to i64
  %205 = getelementptr inbounds [2 x i16], ptr %177, i64 %204
  %206 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %205, ptr noundef nonnull align 4 dereferenceable(16) %206, i64 16, i1 false), !tbaa.struct !136
  %207 = shl nsw i32 %12, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [2 x i16], ptr %177, i64 %208
  %210 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %209, ptr noundef nonnull align 4 dereferenceable(16) %210, i64 16, i1 false), !tbaa.struct !136
  %211 = mul nsw i32 %12, 3
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [2 x i16], ptr %177, i64 %212
  %214 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %213, ptr noundef nonnull align 4 dereferenceable(16) %214, i64 16, i1 false), !tbaa.struct !136
  %215 = load i32, ptr %170, align 16, !tbaa !5
  %216 = icmp eq i32 %215, 1
  br i1 %216, label %217, label %254

217:                                              ; preds = %188
  %218 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 12
  %219 = load i8, ptr %218, align 1, !tbaa !35
  store i8 %219, ptr %187, align 1, !tbaa !35
  %220 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 14
  %221 = load i8, ptr %220, align 1, !tbaa !35
  %222 = getelementptr inbounds i8, ptr %187, i64 1
  store i8 %221, ptr %222, align 1, !tbaa !35
  %223 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 28
  %224 = load i8, ptr %223, align 1, !tbaa !35
  %225 = getelementptr inbounds i8, ptr %187, i64 %196
  store i8 %224, ptr %225, align 1, !tbaa !35
  %226 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 30
  %227 = load i8, ptr %226, align 1, !tbaa !35
  %228 = getelementptr inbounds i8, ptr %187, i64 %201
  store i8 %227, ptr %228, align 1, !tbaa !35
  %229 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %180, ptr noundef nonnull align 4 dereferenceable(16) %229, i64 16, i1 false), !tbaa.struct !136
  %230 = getelementptr inbounds [2 x i16], ptr %180, i64 %204
  %231 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %230, ptr noundef nonnull align 4 dereferenceable(16) %231, i64 16, i1 false), !tbaa.struct !136
  %232 = getelementptr inbounds [2 x i16], ptr %180, i64 %208
  %233 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %232, ptr noundef nonnull align 4 dereferenceable(16) %233, i64 16, i1 false), !tbaa.struct !136
  %234 = getelementptr inbounds [2 x i16], ptr %180, i64 %212
  %235 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %234, ptr noundef nonnull align 4 dereferenceable(16) %235, i64 16, i1 false), !tbaa.struct !136
  br label %254

236:                                              ; preds = %173
  store i16 -1, ptr %184, align 2, !tbaa !35
  %237 = sext i32 %10 to i64
  %238 = getelementptr inbounds i8, ptr %184, i64 %237
  store i16 -1, ptr %238, align 2, !tbaa !35
  %239 = sext i32 %12 to i64
  %240 = getelementptr inbounds [2 x i16], ptr %177, i64 %239
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %177, i8 0, i64 16, i1 false)
  %241 = shl nsw i32 %12, 1
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [2 x i16], ptr %177, i64 %242
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %240, i8 0, i64 16, i1 false)
  %244 = mul nsw i32 %12, 3
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [2 x i16], ptr %177, i64 %245
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %243, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %246, i8 0, i64 16, i1 false)
  %247 = load i32, ptr %170, align 16, !tbaa !5
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %249, label %254

249:                                              ; preds = %236
  store i16 -1, ptr %187, align 2, !tbaa !35
  %250 = getelementptr inbounds i8, ptr %187, i64 %237
  store i16 -1, ptr %250, align 2, !tbaa !35
  %251 = getelementptr inbounds [2 x i16], ptr %180, i64 %239
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %180, i8 0, i64 16, i1 false)
  %252 = getelementptr inbounds [2 x i16], ptr %180, i64 %242
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %251, i8 0, i64 16, i1 false)
  %253 = getelementptr inbounds [2 x i16], ptr %180, i64 %245
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %252, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %253, i8 0, i64 16, i1 false)
  br label %254

254:                                              ; preds = %217, %188, %249, %236, %163
  %255 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  %256 = load i32, ptr %255, align 16, !tbaa !69
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %332, label %258

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 46
  %260 = load ptr, ptr %259, align 16, !tbaa !40
  %261 = getelementptr inbounds [8 x [2 x i8]], ptr %260, i64 %19
  %262 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 46, i64 1
  %263 = load ptr, ptr %262, align 8, !tbaa !40
  %264 = getelementptr inbounds [8 x [2 x i8]], ptr %263, i64 %19
  %265 = icmp ult i32 %5, 3
  br i1 %265, label %266, label %272

266:                                              ; preds = %258
  %267 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 60
  %268 = load i32, ptr %267, align 4, !tbaa !176
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode8x8c_fix, i64 0, i64 %269
  %271 = load i8, ptr %270, align 1, !tbaa !35
  br label %272

272:                                              ; preds = %258, %266
  %273 = phi i8 [ %271, %266 ], [ 0, %258 ]
  %274 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 44
  %275 = load ptr, ptr %274, align 8, !tbaa !70
  %276 = getelementptr inbounds i8, ptr %275, i64 %19
  store i8 %273, ptr %276, align 1, !tbaa !35
  switch i32 %5, label %277 [
    i32 18, label %303
    i32 7, label %303
    i32 6, label %303
    i32 3, label %303
    i32 2, label %303
    i32 1, label %303
    i32 0, label %303
  ]

277:                                              ; preds = %272
  %278 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 36
  %279 = load i64, ptr %278, align 2, !tbaa !35
  store i64 %279, ptr %261, align 8, !tbaa !35
  %280 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 15
  %281 = load i16, ptr %280, align 2, !tbaa !35
  %282 = getelementptr inbounds [2 x i8], ptr %261, i64 4
  store i16 %281, ptr %282, align 2, !tbaa !35
  %283 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 23
  %284 = load i16, ptr %283, align 2, !tbaa !35
  %285 = getelementptr inbounds [2 x i8], ptr %261, i64 5
  store i16 %284, ptr %285, align 2, !tbaa !35
  %286 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 31
  %287 = load i16, ptr %286, align 2, !tbaa !35
  %288 = getelementptr inbounds [2 x i8], ptr %261, i64 6
  store i16 %287, ptr %288, align 2, !tbaa !35
  %289 = load i32, ptr %170, align 16, !tbaa !5
  %290 = icmp eq i32 %289, 1
  br i1 %290, label %291, label %332

291:                                              ; preds = %277
  %292 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 1, i64 36
  %293 = load i64, ptr %292, align 2, !tbaa !35
  store i64 %293, ptr %264, align 8, !tbaa !35
  %294 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 1, i64 15
  %295 = load i16, ptr %294, align 2, !tbaa !35
  %296 = getelementptr inbounds [2 x i8], ptr %264, i64 4
  store i16 %295, ptr %296, align 2, !tbaa !35
  %297 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 1, i64 23
  %298 = load i16, ptr %297, align 2, !tbaa !35
  %299 = getelementptr inbounds [2 x i8], ptr %264, i64 5
  store i16 %298, ptr %299, align 2, !tbaa !35
  %300 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 1, i64 31
  %301 = load i16, ptr %300, align 2, !tbaa !35
  %302 = getelementptr inbounds [2 x i8], ptr %264, i64 6
  store i16 %301, ptr %302, align 2, !tbaa !35
  br label %307

303:                                              ; preds = %272, %272, %272, %272, %272, %272, %272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %261, i8 0, i64 16, i1 false)
  %304 = load i32, ptr %170, align 16, !tbaa !5
  %305 = icmp eq i32 %304, 1
  br i1 %305, label %306, label %332

306:                                              ; preds = %303
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %264, i8 0, i64 16, i1 false)
  br label %307

307:                                              ; preds = %306, %291
  %308 = load i32, ptr %170, align 16, !tbaa !5
  %309 = icmp eq i32 %308, 1
  br i1 %309, label %310, label %332

310:                                              ; preds = %307
  switch i32 %5, label %326 [
    i32 18, label %327
    i32 7, label %327
    i32 17, label %311
  ]

311:                                              ; preds = %310
  %312 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55
  %313 = load <4 x i8>, ptr %312, align 16, !tbaa !35
  %314 = icmp eq <4 x i8> %313, <i8 12, i8 12, i8 12, i8 12>
  %315 = extractelement <4 x i1> %314, i64 0
  %316 = zext i1 %315 to i8
  %317 = extractelement <4 x i1> %314, i64 1
  %318 = select i1 %317, i8 2, i8 0
  %319 = or disjoint i8 %318, %316
  %320 = extractelement <4 x i1> %314, i64 2
  %321 = select i1 %320, i8 4, i8 0
  %322 = or disjoint i8 %319, %321
  %323 = extractelement <4 x i1> %314, i64 3
  %324 = select i1 %323, i8 8, i8 0
  %325 = or disjoint i8 %322, %324
  br label %327

326:                                              ; preds = %310
  br label %327

327:                                              ; preds = %310, %310, %326, %311
  %328 = phi i8 [ %325, %311 ], [ 0, %326 ], [ 15, %310 ], [ 15, %310 ]
  %329 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 49
  %330 = load ptr, ptr %329, align 16, !tbaa !64
  %331 = getelementptr inbounds i8, ptr %330, i64 %19
  store i8 %328, ptr %331, align 1, !tbaa !35
  br label %332

332:                                              ; preds = %327, %277, %303, %307, %254
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_macroblock_store_pic(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp ne i32 %1, 0
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %5 = load ptr, ptr %4, align 16, !tbaa !86
  %6 = zext i1 %3 to i64
  %7 = getelementptr inbounds %struct.x264_frame, ptr %5, i64 0, i32 24, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !38
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %10 = load i32, ptr %9, align 4, !tbaa !41
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 4
  %13 = load i32, ptr %12, align 16, !tbaa !144
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !42
  br i1 %11, label %26, label %16

16:                                               ; preds = %2
  %17 = and i32 %15, -2
  %18 = mul nsw i32 %17, %8
  %19 = add nsw i32 %18, %13
  %20 = select i1 %3, i32 3, i32 4
  %21 = shl i32 %19, %20
  %22 = and i32 %15, 1
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 0, i32 %8
  %25 = add nsw i32 %21, %24
  br label %31

26:                                               ; preds = %2
  %27 = mul nsw i32 %15, %8
  %28 = add nsw i32 %27, %13
  %29 = select i1 %3, i32 3, i32 4
  %30 = shl i32 %28, %29
  br label %31

31:                                               ; preds = %26, %16
  %32 = phi i32 [ %25, %16 ], [ %30, %26 ]
  %33 = select i1 %3, i32 8, i32 16
  %34 = shl i32 %8, %10
  %35 = select i1 %3, i64 3, i64 0
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !40
  %38 = zext nneg i32 %1 to i64
  %39 = getelementptr inbounds %struct.x264_frame, ptr %5, i64 0, i32 30, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !40
  %41 = sext i32 %32 to i64
  %42 = getelementptr inbounds i8, ptr %40, i64 %41
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 %38
  %44 = load ptr, ptr %43, align 8, !tbaa !40
  tail call void %37(ptr noundef %42, i32 noundef %34, ptr noundef %44, i32 noundef 32, i32 noundef %33) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @pack8to32(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #12 {
  %4 = shl nsw i32 %1, 8
  %5 = add nsw i32 %4, %0
  %6 = shl nsw i32 %2, 16
  %7 = add nsw i32 %5, %6
  ret i32 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_macroblock_bipred_init(ptr nocapture noundef %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !109
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46
  %7 = load i32, ptr %6, align 8, !tbaa !102
  %8 = shl i32 %7, %3
  %9 = icmp sgt i32 %8, 0
  %10 = icmp eq i32 %3, 0
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 12
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 48
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %14 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 4
  %15 = add nuw i32 %3, 1
  %16 = zext i32 %15 to i64
  %17 = zext nneg i32 %8 to i64
  br label %18

18:                                               ; preds = %5, %27
  %19 = phi i64 [ 0, %5 ], [ %28, %27 ]
  br i1 %9, label %20, label %27

20:                                               ; preds = %18
  %21 = load i32, ptr %12, align 8, !tbaa !103
  %22 = shl i32 %21, %3
  %23 = icmp sgt i32 %22, 0
  %24 = zext nneg i32 %22 to i64
  %25 = trunc i64 %19 to i32
  br label %30

26:                                               ; preds = %27, %1
  ret void

27:                                               ; preds = %49, %18
  %28 = add nuw nsw i64 %19, 1
  %29 = icmp eq i64 %28, %16
  br i1 %29, label %26, label %18, !llvm.loop !177

30:                                               ; preds = %20, %49
  %31 = phi i64 [ 0, %20 ], [ %50, %49 ]
  %32 = trunc i64 %31 to i32
  %33 = lshr i32 %32, %3
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !40
  %37 = load i32, ptr %36, align 16, !tbaa !104
  %38 = and i64 %31, 1
  %39 = icmp eq i64 %19, %38
  %40 = or i1 %10, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %30
  %42 = load i32, ptr %11, align 8, !tbaa !110
  %43 = add nsw i32 %42, %37
  br label %44

44:                                               ; preds = %41, %30
  %45 = phi i32 [ %43, %41 ], [ %37, %30 ]
  br i1 %23, label %46, label %49

46:                                               ; preds = %44
  %47 = load i32, ptr %14, align 16, !tbaa !178
  %48 = icmp ne i32 %47, 0
  br label %52

49:                                               ; preds = %87, %44
  %50 = add nuw nsw i64 %31, 1
  %51 = icmp eq i64 %50, %17
  br i1 %51, label %27, label %30, !llvm.loop !179

52:                                               ; preds = %46, %87
  %53 = phi i64 [ 0, %46 ], [ %99, %87 ]
  %54 = trunc i64 %53 to i32
  %55 = lshr i32 %54, %3
  %56 = zext nneg i32 %55 to i64
  %57 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !40
  %59 = load i32, ptr %58, align 16, !tbaa !104
  %60 = and i64 %53, 1
  %61 = icmp eq i64 %19, %60
  %62 = or i1 %10, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %52
  %64 = load i32, ptr %11, align 8, !tbaa !110
  %65 = add nsw i32 %64, %59
  br label %66

66:                                               ; preds = %63, %52
  %67 = phi i32 [ %65, %63 ], [ %59, %52 ]
  %68 = sub nsw i32 %67, %45
  %69 = tail call fastcc i32 @x264_clip3(i32 noundef %68, i32 noundef -128, i32 noundef 127) #16
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %66
  %72 = load i32, ptr %11, align 8, !tbaa !110
  %73 = load ptr, ptr %13, align 16, !tbaa !86
  %74 = load i32, ptr %73, align 16, !tbaa !104
  %75 = mul nsw i32 %72, %25
  %76 = sub i32 %75, %45
  %77 = add i32 %76, %74
  %78 = tail call fastcc i32 @x264_clip3(i32 noundef %77, i32 noundef -128, i32 noundef 127) #16
  %79 = tail call i32 @llvm.abs.i32(i32 %69, i1 true)
  %80 = lshr i32 %79, 1
  %81 = add nuw nsw i32 %80, 16384
  %82 = sdiv i32 %81, %69
  %83 = mul nsw i32 %82, %78
  %84 = add nsw i32 %83, 32
  %85 = ashr i32 %84, 6
  %86 = tail call fastcc i32 @x264_clip3(i32 noundef %85, i32 noundef -1024, i32 noundef 1023) #16
  br label %87

87:                                               ; preds = %66, %71
  %88 = phi i32 [ %86, %71 ], [ 256, %66 ]
  %89 = trunc i32 %88 to i16
  %90 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 79, i64 %19, i64 %31, i64 %53
  store i16 %89, ptr %90, align 2, !tbaa !36
  %91 = ashr i32 %88, 2
  %92 = add nsw i32 %91, 64
  %93 = icmp ult i32 %92, 193
  %94 = and i1 %48, %93
  %95 = trunc i32 %91 to i8
  %96 = sub i8 64, %95
  %97 = select i1 %94, i8 %96, i8 32
  %98 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 81, i64 %19, i64 %31, i64 %53
  store i8 %97, ptr %98, align 1
  %99 = add nuw nsw i64 %53, 1
  %100 = icmp eq i64 %99, %24
  br i1 %100, label %49, label %52, !llvm.loop !180
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @x264_clip3(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #12 {
  %4 = icmp slt i32 %0, %1
  %5 = tail call i32 @llvm.smin.i32(i32 %0, i32 %2)
  %6 = select i1 %4, i32 %1, i32 %5
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @x264_macroblock_cache_rect(ptr nocapture noundef writeonly %0) unnamed_addr #10 {
  store i32 0, ptr %0, align 4, !tbaa !35
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 0, ptr %2, align 4, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store i32 0, ptr %3, align 4, !tbaa !35
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  store i32 0, ptr %4, align 4, !tbaa !35
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 7248}
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
!35 = !{!9, !9, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"short", !9, i64 0}
!38 = !{!8, !8, i64 0}
!39 = !{!6, !12, i64 32616}
!40 = !{!12, !12, i64 0}
!41 = !{!6, !8, i64 16436}
!42 = !{!6, !8, i64 16388}
!43 = !{!6, !12, i64 32632}
!44 = !{!45, !12, i64 48}
!45 = !{!"x264_weight_t", !9, i64 0, !9, i64 16, !8, i64 32, !8, i64 36, !8, i64 40, !12, i64 48}
!46 = !{!6, !12, i64 26624}
!47 = !{!6, !12, i64 32624}
!48 = !{!6, !8, i64 17388}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!6, !8, i64 16368}
!52 = !{!6, !12, i64 3200}
!53 = !{!54, !8, i64 1084}
!54 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !9, i64 52, !8, i64 1076, !8, i64 1080, !8, i64 1084, !8, i64 1088, !8, i64 1092, !8, i64 1096, !8, i64 1100, !8, i64 1104, !55, i64 1108, !8, i64 1124, !56, i64 1128, !8, i64 1296}
!55 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!56 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !57, i64 84, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164}
!57 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44}
!58 = !{!6, !8, i64 16372}
!59 = !{!6, !8, i64 16376}
!60 = !{!6, !8, i64 16380}
!61 = !{!6, !8, i64 136}
!62 = !{!6, !12, i64 16632}
!63 = !{!6, !12, i64 16640}
!64 = !{!6, !12, i64 17232}
!65 = !{!6, !12, i64 17240}
!66 = !{!6, !12, i64 17248}
!67 = !{!6, !12, i64 16648}
!68 = !{!6, !12, i64 16656}
!69 = !{!6, !8, i64 128}
!70 = !{!6, !12, i64 16664}
!71 = !{!6, !8, i64 80}
!72 = !{!6, !8, i64 112}
!73 = !{!6, !8, i64 396}
!74 = distinct !{!74, !50}
!75 = distinct !{!75, !50}
!76 = !{!6, !8, i64 0}
!77 = !{!6, !8, i64 16}
!78 = !{!6, !8, i64 4}
!79 = !{!54, !8, i64 1088}
!80 = distinct !{!80, !50}
!81 = distinct !{!81, !50}
!82 = distinct !{!82, !50}
!83 = distinct !{!83, !50}
!84 = distinct !{!84, !50}
!85 = distinct !{!85, !50}
!86 = !{!6, !12, i64 14688}
!87 = !{!6, !8, i64 480}
!88 = !{!6, !8, i64 20}
!89 = !{!6, !8, i64 416}
!90 = !{!6, !8, i64 420}
!91 = !{!6, !8, i64 412}
!92 = !{!6, !12, i64 3328}
!93 = !{!94, !8, i64 60}
!94 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !9, i64 72}
!95 = !{!6, !8, i64 552}
!96 = !{!6, !12, i64 31176}
!97 = distinct !{!97, !50}
!98 = distinct !{!98, !50}
!99 = !{!100, !12, i64 3568}
!100 = !{!"x264_frame", !8, i64 0, !8, i64 4, !8, i64 8, !18, i64 16, !18, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !12, i64 48, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !9, i64 84, !9, i64 85, !9, i64 86, !14, i64 88, !14, i64 92, !8, i64 96, !8, i64 100, !9, i64 104, !9, i64 116, !9, i64 128, !8, i64 140, !8, i64 144, !8, i64 148, !9, i64 152, !9, i64 176, !9, i64 208, !12, i64 240, !9, i64 248, !9, i64 280, !9, i64 320, !9, i64 3392, !8, i64 3520, !12, i64 3528, !12, i64 3536, !12, i64 3544, !9, i64 3552, !12, i64 3568, !9, i64 3576, !9, i64 3848, !9, i64 6440, !9, i64 6712, !9, i64 6728, !9, i64 6736, !9, i64 6864, !9, i64 6868, !9, i64 8164, !8, i64 9460, !9, i64 9464, !9, i64 9536, !12, i64 12128, !12, i64 12136, !12, i64 12144, !12, i64 12152, !12, i64 12160, !8, i64 12168, !12, i64 12176, !12, i64 12184, !12, i64 12192, !8, i64 12200, !9, i64 12204, !8, i64 12276, !18, i64 12280, !101, i64 12288, !9, i64 12320, !9, i64 12572, !9, i64 13576, !8, i64 15584, !8, i64 15588, !8, i64 15592, !8, i64 15596, !8, i64 15600, !8, i64 15604, !8, i64 15608, !14, i64 15612, !8, i64 15616, !8, i64 15620, !8, i64 15624}
!101 = !{!"", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24}
!102 = !{!6, !8, i64 14696}
!103 = !{!6, !8, i64 14856}
!104 = !{!100, !8, i64 0}
!105 = distinct !{!105, !50}
!106 = distinct !{!106, !50}
!107 = distinct !{!107, !50}
!108 = distinct !{!108, !50}
!109 = !{!6, !8, i64 7268}
!110 = !{!6, !8, i64 7288}
!111 = distinct !{!111, !50, !112, !113}
!112 = !{!"llvm.loop.isvectorized", i32 1}
!113 = !{!"llvm.loop.unroll.runtime.disable"}
!114 = !{!100, !8, i64 68}
!115 = distinct !{!115, !50}
!116 = !{!6, !8, i64 16404}
!117 = !{!6, !8, i64 428}
!118 = !{!6, !8, i64 16408}
!119 = !{!6, !8, i64 16412}
!120 = !{!6, !8, i64 432}
!121 = !{!6, !8, i64 448}
!122 = !{!6, !8, i64 16424}
!123 = !{!6, !12, i64 32800}
!124 = !{!6, !8, i64 16600}
!125 = !{!6, !8, i64 16604}
!126 = !{!6, !8, i64 16488}
!127 = !{!6, !8, i64 25776}
!128 = !{!6, !8, i64 25780}
!129 = distinct !{!129, !50}
!130 = !{!6, !8, i64 25768}
!131 = !{!6, !8, i64 25772}
!132 = !{!100, !12, i64 240}
!133 = distinct !{!133, !50}
!134 = distinct !{!134, !50}
!135 = !{!6, !12, i64 14680}
!136 = !{i64 0, i64 16, !35}
!137 = !{!6, !8, i64 16396}
!138 = !{!6, !8, i64 16400}
!139 = distinct !{!139, !50}
!140 = distinct !{!140, !50}
!141 = distinct !{!141, !50}
!142 = !{!6, !12, i64 26360}
!143 = !{!6, !8, i64 16572}
!144 = !{!6, !8, i64 16384}
!145 = !{!6, !8, i64 16392}
!146 = !{!6, !8, i64 16576}
!147 = !{!6, !12, i64 16616}
!148 = !{!6, !8, i64 16584}
!149 = !{!6, !8, i64 7252}
!150 = !{!6, !8, i64 140}
!151 = !{!6, !8, i64 1748}
!152 = !{!6, !8, i64 16580}
!153 = !{!6, !8, i64 16608}
!154 = !{!6, !8, i64 16588}
!155 = !{!6, !8, i64 16612}
!156 = !{!6, !8, i64 16592}
!157 = distinct !{!157, !50}
!158 = distinct !{!158, !50}
!159 = distinct !{!159, !50}
!160 = distinct !{!160, !50}
!161 = distinct !{!161, !50}
!162 = distinct !{!162, !50}
!163 = !{!6, !8, i64 13884}
!164 = distinct !{!164, !50}
!165 = !{i32 0, i32 16711936}
!166 = !{!6, !8, i64 17384}
!167 = !{!6, !12, i64 16624}
!168 = !{!6, !8, i64 16596}
!169 = !{!6, !8, i64 25804}
!170 = !{!6, !8, i64 17404}
!171 = !{!6, !8, i64 17400}
!172 = !{!6, !8, i64 17396}
!173 = distinct !{!173, !50}
!174 = !{!6, !8, i64 25800}
!175 = !{!6, !8, i64 25792}
!176 = !{!6, !8, i64 17412}
!177 = distinct !{!177, !50}
!178 = !{!6, !8, i64 400}
!179 = distinct !{!179, !50}
!180 = distinct !{!180, !50}
