; ModuleID = 'x264_src/encoder/macroblock.c'
source_filename = "x264_src/encoder/macroblock.c"
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

@block_idx_xy_fenc = internal unnamed_addr constant [16 x i8] c"\00\04@D\08\0CHL\80\84\C0\C4\88\8C\C8\CC", align 16
@block_idx_xy_fdec = internal unnamed_addr constant [16 x i16] [i16 0, i16 4, i16 128, i16 132, i16 8, i16 12, i16 136, i16 140, i16 256, i16 260, i16 384, i16 388, i16 264, i16 268, i16 392, i16 396], align 16
@x264_scan8 = internal unnamed_addr constant [27 x i32] [i32 12, i32 13, i32 20, i32 21, i32 14, i32 15, i32 22, i32 23, i32 28, i32 29, i32 36, i32 37, i32 30, i32 31, i32 38, i32 39, i32 9, i32 10, i32 17, i32 18, i32 33, i32 34, i32 41, i32 42, i32 44, i32 46, i32 47], align 16
@x264_lambda2_tab = external local_unnamed_addr constant [52 x i32], align 16
@block_idx_x = internal unnamed_addr constant [16 x i8] c"\00\01\00\01\02\03\02\03\00\01\00\01\02\03\02\03", align 16
@block_idx_y = internal unnamed_addr constant [16 x i8] c"\00\00\01\01\00\00\01\01\02\02\03\03\02\02\03\03", align 16
@x264_pred_i4x4_neighbors = internal unnamed_addr constant [12 x i8] c"\02\01\03\06\0B\0B\0B\06\01\01\02\00", align 1
@x264_dct8_weight2_tab = internal unnamed_addr constant [64 x i16] [i16 256, i16 227, i16 410, i16 227, i16 256, i16 227, i16 410, i16 227, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 410, i16 363, i16 656, i16 363, i16 410, i16 363, i16 656, i16 363, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 256, i16 227, i16 410, i16 227, i16 256, i16 227, i16 410, i16 227, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 410, i16 363, i16 656, i16 363, i16 410, i16 363, i16 656, i16 363, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201], align 16
@x264_dct4_weight2_tab = internal unnamed_addr constant [16 x i16] [i16 800, i16 320, i16 800, i16 320, i16 320, i16 128, i16 320, i16 128, i16 800, i16 320, i16 800, i16 320, i16 320, i16 128, i16 320, i16 128], align 16
@block_idx_yx_1d = internal unnamed_addr constant [16 x i8] c"\00\04\01\05\08\0C\09\0D\02\06\03\07\0A\0E\0B\0F", align 16
@block_idx_xy_1d = internal unnamed_addr constant [16 x i8] c"\00\01\04\05\02\03\06\07\08\09\0C\0D\0A\0B\0E\0F", align 16

; Function Attrs: nounwind uwtable
define dso_local void @x264_mb_encode_i4x4(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [16 x i16], align 16
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %6 = load ptr, ptr %5, align 16, !tbaa !34
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !38
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds i8, ptr %6, i64 %10
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %13 = load ptr, ptr %12, align 16, !tbaa !34
  %14 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %7
  %15 = load i16, ptr %14, align 2, !tbaa !39
  %16 = zext i16 %15 to i64
  %17 = getelementptr inbounds i8, ptr %13, i64 %16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #6
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %19 = load i32, ptr %18, align 4, !tbaa !41
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !68
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %7
  %25 = tail call i32 %23(ptr noundef nonnull %24, ptr noundef %11, ptr noundef %17) #6
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %7
  %28 = load i32, ptr %27, align 4, !tbaa !69
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %29
  store i8 %26, ptr %30, align 1, !tbaa !38
  %31 = ashr i32 %1, 2
  %32 = shl i32 %25, %31
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %34 = load i32, ptr %33, align 8, !tbaa !70
  %35 = or i32 %34, %32
  store i32 %35, ptr %33, align 8, !tbaa !70
  br label %78

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71
  %38 = load ptr, ptr %37, align 16, !tbaa !71
  call void %38(ptr noundef nonnull %4, ptr noundef %11, ptr noundef %17) #6
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %40 = load i32, ptr %39, align 16, !tbaa !72
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = call i32 @x264_quant_4x4_trellis(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0, i32 noundef %2, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef %1) #6
  br label %55

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !73
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 0
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = sext i32 %2 to i64
  %50 = getelementptr inbounds [16 x i16], ptr %48, i64 %49
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 0
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = getelementptr inbounds [16 x i16], ptr %52, i64 %49
  %54 = call i32 %46(ptr noundef nonnull %4, ptr noundef %50, ptr noundef %53) #6
  br label %55

55:                                               ; preds = %42, %44
  %56 = phi i32 [ %43, %42 ], [ %54, %44 ]
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %7
  %59 = load i32, ptr %58, align 4, !tbaa !69
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %60
  store i8 %57, ptr %61, align 1, !tbaa !38
  %62 = icmp eq i32 %56, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %55
  %64 = ashr i32 %1, 2
  %65 = shl nuw i32 1, %64
  %66 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %67 = load i32, ptr %66, align 8, !tbaa !70
  %68 = or i32 %67, %65
  store i32 %68, ptr %66, align 8, !tbaa !70
  %69 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !74
  %71 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %7
  call void %70(ptr noundef nonnull %71, ptr noundef nonnull %4) #6
  %72 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !75
  %74 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29
  %75 = load ptr, ptr %74, align 16, !tbaa !34
  call void %73(ptr noundef nonnull %4, ptr noundef %75, i32 noundef %2) #6
  %76 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !76
  call void %77(ptr noundef %17, ptr noundef nonnull %4) #6
  br label %78

78:                                               ; preds = %55, %63, %21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_mb_encode_i8x8(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [64 x i16], align 16
  %5 = shl i32 %1, 3
  %6 = and i32 %5, 8
  %7 = shl nsw i32 %1, 2
  %8 = and i32 %7, -8
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %10 = load ptr, ptr %9, align 16, !tbaa !34
  %11 = shl nsw i32 %8, 4
  %12 = or disjoint i32 %11, %6
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %10, i64 %13
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %16 = load ptr, ptr %15, align 16, !tbaa !34
  %17 = shl nsw i32 %8, 5
  %18 = or disjoint i32 %17, %6
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %16, i64 %19
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #6
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %22 = load i32, ptr %21, align 4, !tbaa !41
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %47, label %24

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !77
  %27 = sext i32 %1 to i64
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2, i64 %27
  %29 = tail call i32 %26(ptr noundef nonnull %28, ptr noundef %14, ptr noundef %20) #6
  %30 = trunc i32 %29 to i16
  %31 = mul i16 %30, 257
  %32 = sext i32 %7 to i64
  %33 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %32
  %34 = load i32, ptr %33, align 16, !tbaa !69
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %35
  store i16 %31, ptr %36, align 1, !tbaa !38
  %37 = or disjoint i32 %7, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %38
  %40 = load i32, ptr %39, align 8, !tbaa !69
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %41
  store i16 %31, ptr %42, align 1, !tbaa !38
  %43 = shl i32 %29, %1
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %45 = load i32, ptr %44, align 8, !tbaa !70
  %46 = or i32 %45, %43
  store i32 %46, ptr %44, align 8, !tbaa !70
  br label %107

47:                                               ; preds = %3
  %48 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 9
  %49 = load ptr, ptr %48, align 8, !tbaa !78
  call void %49(ptr noundef nonnull %4, ptr noundef %14, ptr noundef %20) #6
  %50 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %51 = load i32, ptr %50, align 16, !tbaa !72
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = call i32 @x264_quant_8x8_trellis(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0, i32 noundef %2, i32 noundef 1, i32 noundef %1) #6
  br label %66

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73
  %57 = load ptr, ptr %56, align 8, !tbaa !79
  %58 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 34, i64 0
  %59 = load ptr, ptr %58, align 8, !tbaa !34
  %60 = sext i32 %2 to i64
  %61 = getelementptr inbounds [64 x i16], ptr %59, i64 %60
  %62 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 36, i64 0
  %63 = load ptr, ptr %62, align 8, !tbaa !34
  %64 = getelementptr inbounds [64 x i16], ptr %63, i64 %60
  %65 = call i32 %57(ptr noundef nonnull %4, ptr noundef %61, ptr noundef %64) #6
  br label %66

66:                                               ; preds = %53, %55
  %67 = phi i32 [ %54, %53 ], [ %65, %55 ]
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %95, label %69

69:                                               ; preds = %66
  %70 = shl nuw i32 1, %1
  %71 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %72 = load i32, ptr %71, align 8, !tbaa !70
  %73 = or i32 %72, %70
  store i32 %73, ptr %71, align 8, !tbaa !70
  %74 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72
  %75 = load ptr, ptr %74, align 8, !tbaa !80
  %76 = sext i32 %1 to i64
  %77 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2, i64 %76
  call void %75(ptr noundef nonnull %77, ptr noundef nonnull %4) #6
  %78 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !81
  %80 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30
  %81 = load ptr, ptr %80, align 16, !tbaa !34
  call void %79(ptr noundef nonnull %4, ptr noundef %81, i32 noundef %2) #6
  %82 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 10
  %83 = load ptr, ptr %82, align 16, !tbaa !82
  call void %83(ptr noundef %20, ptr noundef nonnull %4) #6
  %84 = sext i32 %7 to i64
  %85 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %84
  %86 = load i32, ptr %85, align 16, !tbaa !69
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %87
  store i16 257, ptr %88, align 1, !tbaa !38
  %89 = or disjoint i32 %7, 2
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %90
  %92 = load i32, ptr %91, align 8, !tbaa !69
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %93
  store i16 257, ptr %94, align 1, !tbaa !38
  br label %107

95:                                               ; preds = %66
  %96 = sext i32 %7 to i64
  %97 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %96
  %98 = load i32, ptr %97, align 16, !tbaa !69
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %99
  store i16 0, ptr %100, align 1, !tbaa !38
  %101 = or disjoint i32 %7, 2
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %102
  %104 = load i32, ptr %103, align 8, !tbaa !69
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %105
  store i16 0, ptr %106, align 1, !tbaa !38
  br label %107

107:                                              ; preds = %69, %95, %24
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_mb_encode_8x8_chroma(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x i16], align 16
  %5 = alloca [2 x i32], align 4
  %6 = alloca [4 x [16 x i16]], align 16
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 14
  %10 = load i32, ptr %9, align 8, !tbaa !83
  %11 = icmp ne i32 %10, 0
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i1 [ false, %3 ], [ %11, %8 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  store i32 0, ptr %14, align 4, !tbaa !84
  br i1 %13, label %15, label %157

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %17 = load i32, ptr %16, align 16, !tbaa !72
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 18, i32 12
  %20 = icmp sgt i32 %19, %2
  br i1 %20, label %157, label %21

21:                                               ; preds = %15
  %22 = zext nneg i32 %2 to i64
  %23 = getelementptr inbounds [52 x i32], ptr @x264_lambda2_tab, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !69
  %25 = add nsw i32 %24, 32
  %26 = ashr i32 %25, 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 11
  %28 = load ptr, ptr %27, align 8, !tbaa !85
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = call i32 %28(ptr noundef %30, i32 noundef 16, ptr noundef %32, i32 noundef 32, ptr noundef nonnull %5) #6
  %34 = shl nsw i32 %26, 2
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %21
  %37 = load ptr, ptr %27, align 8, !tbaa !85
  %38 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 2
  %39 = load ptr, ptr %38, align 16, !tbaa !34
  %40 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %41 = load ptr, ptr %40, align 16, !tbaa !34
  %42 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  %43 = call i32 %37(ptr noundef %39, i32 noundef 16, ptr noundef %41, i32 noundef 32, ptr noundef nonnull %42) #6
  %44 = add nsw i32 %43, %33
  br label %45

45:                                               ; preds = %36, %21
  %46 = phi i32 [ %44, %36 ], [ %33, %21 ]
  %47 = icmp slt i32 %46, %34
  br i1 %47, label %48, label %156

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 9
  store i8 0, ptr %49, align 1, !tbaa !38
  %50 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 10
  store i8 0, ptr %50, align 1, !tbaa !38
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 17
  store i8 0, ptr %51, align 1, !tbaa !38
  %52 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 18
  store i8 0, ptr %52, align 1, !tbaa !38
  %53 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 33
  store i8 0, ptr %53, align 1, !tbaa !38
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 34
  store i8 0, ptr %54, align 1, !tbaa !38
  %55 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 41
  store i8 0, ptr %55, align 1, !tbaa !38
  %56 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 42
  store i8 0, ptr %56, align 1, !tbaa !38
  %57 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 46
  store i16 0, ptr %57, align 1, !tbaa !38
  %58 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 3
  %59 = add nsw i32 %1, 2
  %60 = zext i1 %7 to i32
  %61 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 3
  %62 = add nsw i32 %1, 2
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 %63
  %65 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 %63
  %66 = getelementptr inbounds i16, ptr %4, i64 2
  %67 = getelementptr inbounds i16, ptr %4, i64 1
  %68 = getelementptr inbounds i16, ptr %4, i64 3
  %69 = add nsw i32 %1, 2
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 %70
  %72 = srem i32 %2, 6
  %73 = sext i32 %72 to i64
  %74 = sdiv i32 %2, 6
  %75 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 5
  br label %76

76:                                               ; preds = %48, %152
  %77 = phi i64 [ 0, %48 ], [ %153, %152 ]
  %78 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !69
  %80 = icmp sgt i32 %79, %26
  br i1 %80, label %81, label %152

81:                                               ; preds = %76
  %82 = load ptr, ptr %58, align 8, !tbaa !86
  %83 = add nuw nsw i64 %77, 1
  %84 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !34
  %86 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 %83
  %87 = load ptr, ptr %86, align 8, !tbaa !34
  call void %82(ptr noundef nonnull %4, ptr noundef %85, ptr noundef %87) #6
  %88 = load i32, ptr %16, align 16, !tbaa !72
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %81
  %91 = call i32 @x264_quant_dc_trellis(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %59, i32 noundef %2, i32 noundef 3, i32 noundef %60, i32 noundef 1) #6
  br label %105

92:                                               ; preds = %81
  %93 = load ptr, ptr %61, align 8, !tbaa !87
  %94 = load ptr, ptr %64, align 8, !tbaa !34
  %95 = getelementptr inbounds [16 x i16], ptr %94, i64 %22
  %96 = load i16, ptr %95, align 2, !tbaa !39
  %97 = lshr i16 %96, 1
  %98 = zext nneg i16 %97 to i32
  %99 = load ptr, ptr %65, align 8, !tbaa !34
  %100 = getelementptr inbounds [16 x i16], ptr %99, i64 %22
  %101 = load i16, ptr %100, align 2, !tbaa !39
  %102 = zext i16 %101 to i32
  %103 = shl nuw nsw i32 %102, 1
  %104 = call i32 %93(ptr noundef nonnull %4, i32 noundef %98, i32 noundef %103) #6
  br label %105

105:                                              ; preds = %92, %90
  %106 = phi i32 [ %91, %90 ], [ %104, %92 ]
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %152, label %108

108:                                              ; preds = %105
  %109 = call fastcc i32 @x264_mb_optimize_chroma_dc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %4), !range !88
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %152, label %111

111:                                              ; preds = %108
  %112 = or disjoint i64 %77, 46
  %113 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %112
  store i8 1, ptr %113, align 1, !tbaa !38
  %114 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 1, i64 %77
  %115 = load i16, ptr %4, align 16, !tbaa !39
  store i16 %115, ptr %114, align 2, !tbaa !39
  %116 = load i16, ptr %66, align 4, !tbaa !39
  %117 = getelementptr inbounds i16, ptr %114, i64 1
  store i16 %116, ptr %117, align 2, !tbaa !39
  %118 = load i16, ptr %67, align 2, !tbaa !39
  %119 = getelementptr inbounds i16, ptr %114, i64 2
  store i16 %118, ptr %119, align 2, !tbaa !39
  %120 = load i16, ptr %68, align 2, !tbaa !39
  %121 = getelementptr inbounds i16, ptr %114, i64 3
  store i16 %120, ptr %121, align 2, !tbaa !39
  %122 = load ptr, ptr %71, align 8, !tbaa !34
  %123 = sext i16 %115 to i32
  %124 = sext i16 %118 to i32
  %125 = add nsw i32 %124, %123
  %126 = sext i16 %116 to i32
  %127 = sext i16 %120 to i32
  %128 = add nsw i32 %127, %126
  %129 = sub nsw i32 %123, %124
  %130 = sub nsw i32 %126, %127
  %131 = getelementptr inbounds [16 x i32], ptr %122, i64 %73
  %132 = load i32, ptr %131, align 4, !tbaa !69
  %133 = shl i32 %132, %74
  %134 = add nsw i32 %128, %125
  %135 = mul nsw i32 %133, %134
  %136 = lshr i32 %135, 5
  %137 = trunc i32 %136 to i16
  store i16 %137, ptr %4, align 16, !tbaa !39
  %138 = sub nsw i32 %125, %128
  %139 = mul nsw i32 %133, %138
  %140 = lshr i32 %139, 5
  %141 = trunc i32 %140 to i16
  store i16 %141, ptr %67, align 2, !tbaa !39
  %142 = add nsw i32 %130, %129
  %143 = mul nsw i32 %133, %142
  %144 = lshr i32 %143, 5
  %145 = trunc i32 %144 to i16
  store i16 %145, ptr %66, align 4, !tbaa !39
  %146 = sub nsw i32 %129, %130
  %147 = mul nsw i32 %133, %146
  %148 = lshr i32 %147, 5
  %149 = trunc i32 %148 to i16
  store i16 %149, ptr %68, align 2, !tbaa !39
  %150 = load ptr, ptr %75, align 8, !tbaa !89
  %151 = load ptr, ptr %86, align 8, !tbaa !34
  call void %150(ptr noundef %151, ptr noundef nonnull %4) #6
  store i32 1, ptr %14, align 4, !tbaa !84
  br label %152

152:                                              ; preds = %76, %111, %105, %108
  %153 = add nuw nsw i64 %77, 1
  %154 = icmp eq i64 %77, 0
  br i1 %154, label %76, label %155, !llvm.loop !90

155:                                              ; preds = %152
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  br label %452

156:                                              ; preds = %45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  br label %157

157:                                              ; preds = %156, %15, %12
  %158 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %159 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 4
  %160 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 2
  %161 = getelementptr inbounds [16 x i16], ptr %6, i64 1
  %162 = getelementptr inbounds [16 x i16], ptr %6, i64 2
  %163 = getelementptr inbounds [16 x i16], ptr %6, i64 3
  %164 = getelementptr inbounds i16, ptr %4, i64 2
  %165 = getelementptr inbounds i16, ptr %4, i64 1
  %166 = getelementptr inbounds i16, ptr %4, i64 3
  %167 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %168 = add nsw i32 %1, 2
  %169 = zext i1 %7 to i32
  %170 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 1
  %171 = add nsw i32 %1, 2
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 %172
  %174 = sext i32 %2 to i64
  %175 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 %172
  %176 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 1
  %177 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 5
  %178 = add nsw i32 %1, 2
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 %179
  %181 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 8
  %182 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %183 = add nsw i32 %1, 2
  %184 = zext i1 %7 to i32
  %185 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 3
  %186 = add nsw i32 %1, 2
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 %187
  %189 = sext i32 %2 to i64
  %190 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 %187
  %191 = xor i1 %13, true
  %192 = add nsw i32 %1, 2
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 %193
  %195 = srem i32 %2, 6
  %196 = sext i32 %195 to i64
  %197 = sdiv i32 %2, 6
  %198 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 5
  %199 = add nsw i32 %1, 2
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 %200
  %202 = srem i32 %2, 6
  %203 = sext i32 %202 to i64
  %204 = sdiv i32 %2, 6
  %205 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 4
  br label %214

206:                                              ; preds = %450
  %207 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 46
  %208 = load i16, ptr %207, align 1, !tbaa !38
  %209 = icmp ne i16 %208, 0
  %210 = zext i1 %209 to i32
  %211 = load i32, ptr %14, align 4, !tbaa !84
  %212 = or i32 %211, %210
  %213 = add nsw i32 %212, %211
  store i32 %213, ptr %14, align 4, !tbaa !84
  br label %452

214:                                              ; preds = %157, %450
  %215 = phi i64 [ 0, %157 ], [ %216, %450 ]
  %216 = add nuw nsw i64 %215, 1
  %217 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 %216
  %218 = load ptr, ptr %217, align 8, !tbaa !34
  %219 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 %216
  %220 = load ptr, ptr %219, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #6
  %221 = load i32, ptr %158, align 4, !tbaa !41
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %264, label %223

223:                                              ; preds = %214
  %224 = shl nuw nsw i64 %215, 2
  br label %232

225:                                              ; preds = %232
  %226 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 1, i64 %215
  %227 = load i64, ptr %226, align 8, !tbaa !38
  %228 = icmp ne i64 %227, 0
  %229 = zext i1 %228 to i8
  %230 = or disjoint i64 %215, 46
  %231 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %230
  store i8 %229, ptr %231, align 1, !tbaa !38
  br label %450

232:                                              ; preds = %223, %232
  %233 = phi i64 [ 0, %223 ], [ %262, %232 ]
  %234 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %233
  %235 = load i8, ptr %234, align 1, !tbaa !38
  %236 = zext i8 %235 to i32
  %237 = shl nuw nsw i32 %236, 2
  %238 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %233
  %239 = load i8, ptr %238, align 1, !tbaa !38
  %240 = zext i8 %239 to i32
  %241 = shl nuw nsw i32 %240, 6
  %242 = add nuw nsw i32 %241, %237
  %243 = shl nuw nsw i32 %240, 7
  %244 = add nuw nsw i32 %243, %237
  %245 = load ptr, ptr %159, align 8, !tbaa !93
  %246 = add nuw nsw i64 %233, %224
  %247 = add nuw nsw i64 %246, 16
  %248 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %247
  %249 = zext nneg i32 %242 to i64
  %250 = getelementptr inbounds i8, ptr %218, i64 %249
  %251 = zext nneg i32 %244 to i64
  %252 = getelementptr inbounds i8, ptr %220, i64 %251
  %253 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 1, i64 %215, i64 %233
  %254 = call i32 %245(ptr noundef nonnull %248, ptr noundef %250, ptr noundef %252, ptr noundef nonnull %253) #6
  %255 = trunc i32 %254 to i8
  %256 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %247
  %257 = load i32, ptr %256, align 4, !tbaa !69
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %258
  store i8 %255, ptr %259, align 1, !tbaa !38
  %260 = load i32, ptr %14, align 4, !tbaa !84
  %261 = or i32 %260, %254
  store i32 %261, ptr %14, align 4, !tbaa !84
  %262 = add nuw nsw i64 %233, 1
  %263 = icmp eq i64 %262, 4
  br i1 %263, label %225, label %232, !llvm.loop !94

264:                                              ; preds = %214
  %265 = load ptr, ptr %160, align 16, !tbaa !95
  call void %265(ptr noundef nonnull %6, ptr noundef %218, ptr noundef %220) #6
  %266 = load i16, ptr %6, align 16, !tbaa !39
  %267 = zext i16 %266 to i32
  %268 = load i16, ptr %161, align 16, !tbaa !39
  %269 = zext i16 %268 to i32
  %270 = add nuw nsw i32 %269, %267
  %271 = load i16, ptr %162, align 16, !tbaa !39
  %272 = zext i16 %271 to i32
  %273 = load i16, ptr %163, align 16, !tbaa !39
  %274 = zext i16 %273 to i32
  %275 = add nuw nsw i32 %274, %272
  %276 = sub nsw i32 %267, %269
  %277 = sub nsw i32 %272, %274
  %278 = add nuw nsw i32 %275, %270
  %279 = trunc i32 %278 to i16
  store i16 %279, ptr %4, align 16, !tbaa !39
  %280 = add nsw i32 %277, %276
  %281 = trunc i32 %280 to i16
  store i16 %281, ptr %164, align 4, !tbaa !39
  %282 = sub nsw i32 %270, %275
  %283 = trunc i32 %282 to i16
  store i16 %283, ptr %165, align 2, !tbaa !39
  %284 = sub nsw i32 %276, %277
  %285 = trunc i32 %284 to i16
  store i16 %285, ptr %166, align 2, !tbaa !39
  store i16 0, ptr %6, align 16, !tbaa !39
  store i16 0, ptr %161, align 16, !tbaa !39
  store i16 0, ptr %162, align 16, !tbaa !39
  store i16 0, ptr %163, align 16, !tbaa !39
  %286 = shl nuw nsw i64 %215, 2
  br label %290

287:                                              ; preds = %327
  %288 = load i32, ptr %182, align 16, !tbaa !72
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %334, label %332

290:                                              ; preds = %264, %327
  %291 = phi i64 [ 0, %264 ], [ %330, %327 ]
  %292 = phi i32 [ 0, %264 ], [ %329, %327 ]
  %293 = phi i32 [ 0, %264 ], [ %328, %327 ]
  %294 = load i32, ptr %167, align 16, !tbaa !72
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %299, label %296

296:                                              ; preds = %290
  %297 = getelementptr inbounds [4 x [16 x i16]], ptr %6, i64 0, i64 %291
  %298 = call i32 @x264_quant_4x4_trellis(ptr noundef %0, ptr noundef nonnull %297, i32 noundef %168, i32 noundef %2, i32 noundef 4, i32 noundef %169, i32 noundef 1, i32 noundef 0) #6
  br label %307

299:                                              ; preds = %290
  %300 = load ptr, ptr %170, align 8, !tbaa !73
  %301 = getelementptr inbounds [4 x [16 x i16]], ptr %6, i64 0, i64 %291
  %302 = load ptr, ptr %173, align 8, !tbaa !34
  %303 = getelementptr inbounds [16 x i16], ptr %302, i64 %174
  %304 = load ptr, ptr %175, align 8, !tbaa !34
  %305 = getelementptr inbounds [16 x i16], ptr %304, i64 %174
  %306 = call i32 %300(ptr noundef nonnull %301, ptr noundef %303, ptr noundef %305) #6
  br label %307

307:                                              ; preds = %299, %296
  %308 = phi i32 [ %298, %296 ], [ %306, %299 ]
  %309 = trunc i32 %308 to i8
  %310 = add nuw nsw i64 %291, %286
  %311 = add nuw nsw i64 %310, 16
  %312 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %311
  %313 = load i32, ptr %312, align 4, !tbaa !69
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %314
  store i8 %309, ptr %315, align 1, !tbaa !38
  %316 = icmp eq i32 %308, 0
  br i1 %316, label %327, label %317

317:                                              ; preds = %307
  %318 = load ptr, ptr %176, align 8, !tbaa !74
  %319 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %311
  %320 = getelementptr inbounds [4 x [16 x i16]], ptr %6, i64 0, i64 %291
  call void %318(ptr noundef nonnull %319, ptr noundef nonnull %320) #6
  %321 = load ptr, ptr %177, align 8, !tbaa !75
  %322 = load ptr, ptr %180, align 8, !tbaa !34
  call void %321(ptr noundef nonnull %320, ptr noundef %322, i32 noundef %2) #6
  br i1 %13, label %323, label %327

323:                                              ; preds = %317
  %324 = load ptr, ptr %181, align 8, !tbaa !96
  %325 = call i32 %324(ptr noundef nonnull %319) #6
  %326 = add nsw i32 %325, %293
  br label %327

327:                                              ; preds = %307, %323, %317
  %328 = phi i32 [ %326, %323 ], [ %293, %317 ], [ %293, %307 ]
  %329 = phi i32 [ 1, %323 ], [ 1, %317 ], [ %292, %307 ]
  %330 = add nuw nsw i64 %291, 1
  %331 = icmp eq i64 %330, 4
  br i1 %331, label %287, label %290, !llvm.loop !97

332:                                              ; preds = %287
  %333 = call i32 @x264_quant_dc_trellis(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %183, i32 noundef %2, i32 noundef 3, i32 noundef %184, i32 noundef 1) #6
  br label %347

334:                                              ; preds = %287
  %335 = load ptr, ptr %185, align 8, !tbaa !87
  %336 = load ptr, ptr %188, align 8, !tbaa !34
  %337 = getelementptr inbounds [16 x i16], ptr %336, i64 %189
  %338 = load i16, ptr %337, align 2, !tbaa !39
  %339 = lshr i16 %338, 1
  %340 = zext nneg i16 %339 to i32
  %341 = load ptr, ptr %190, align 8, !tbaa !34
  %342 = getelementptr inbounds [16 x i16], ptr %341, i64 %189
  %343 = load i16, ptr %342, align 2, !tbaa !39
  %344 = zext i16 %343 to i32
  %345 = shl nuw nsw i32 %344, 1
  %346 = call i32 %335(ptr noundef nonnull %4, i32 noundef %340, i32 noundef %345) #6
  br label %347

347:                                              ; preds = %334, %332
  %348 = phi i32 [ %333, %332 ], [ %346, %334 ]
  %349 = trunc i32 %348 to i8
  %350 = or disjoint i64 %215, 46
  %351 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %350
  store i8 %349, ptr %351, align 1, !tbaa !38
  %352 = icmp sgt i32 %328, 6
  %353 = select i1 %191, i1 true, i1 %352
  %354 = icmp ne i32 %329, 0
  %355 = select i1 %353, i1 %354, i1 false
  br i1 %355, label %409, label %356

356:                                              ; preds = %347
  %357 = mul nuw nsw i64 %215, 24
  %358 = add nuw nsw i64 %357, 9
  %359 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %358
  store i8 0, ptr %359, align 1, !tbaa !38
  %360 = add nuw nsw i64 %357, 10
  %361 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %360
  store i8 0, ptr %361, align 1, !tbaa !38
  %362 = add nuw nsw i64 %357, 17
  %363 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %362
  store i8 0, ptr %363, align 1, !tbaa !38
  %364 = add nuw nsw i64 %357, 18
  %365 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %364
  store i8 0, ptr %365, align 1, !tbaa !38
  %366 = icmp eq i32 %348, 0
  br i1 %366, label %450, label %367

367:                                              ; preds = %356
  %368 = call fastcc i32 @x264_mb_optimize_chroma_dc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %4), !range !88
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %371

370:                                              ; preds = %367
  store i8 0, ptr %351, align 1, !tbaa !38
  br label %450

371:                                              ; preds = %367
  %372 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 1, i64 %215
  %373 = load i16, ptr %4, align 16, !tbaa !39
  store i16 %373, ptr %372, align 2, !tbaa !39
  %374 = load i16, ptr %164, align 4, !tbaa !39
  %375 = getelementptr inbounds i16, ptr %372, i64 1
  store i16 %374, ptr %375, align 2, !tbaa !39
  %376 = load i16, ptr %165, align 2, !tbaa !39
  %377 = getelementptr inbounds i16, ptr %372, i64 2
  store i16 %376, ptr %377, align 2, !tbaa !39
  %378 = load i16, ptr %166, align 2, !tbaa !39
  %379 = getelementptr inbounds i16, ptr %372, i64 3
  store i16 %378, ptr %379, align 2, !tbaa !39
  %380 = load ptr, ptr %194, align 8, !tbaa !34
  %381 = sext i16 %373 to i32
  %382 = sext i16 %376 to i32
  %383 = add nsw i32 %382, %381
  %384 = sext i16 %374 to i32
  %385 = sext i16 %378 to i32
  %386 = add nsw i32 %385, %384
  %387 = sub nsw i32 %381, %382
  %388 = sub nsw i32 %384, %385
  %389 = getelementptr inbounds [16 x i32], ptr %380, i64 %196
  %390 = load i32, ptr %389, align 4, !tbaa !69
  %391 = shl i32 %390, %197
  %392 = add nsw i32 %386, %383
  %393 = mul nsw i32 %391, %392
  %394 = lshr i32 %393, 5
  %395 = trunc i32 %394 to i16
  store i16 %395, ptr %4, align 16, !tbaa !39
  %396 = sub nsw i32 %383, %386
  %397 = mul nsw i32 %391, %396
  %398 = lshr i32 %397, 5
  %399 = trunc i32 %398 to i16
  store i16 %399, ptr %165, align 2, !tbaa !39
  %400 = add nsw i32 %388, %387
  %401 = mul nsw i32 %391, %400
  %402 = lshr i32 %401, 5
  %403 = trunc i32 %402 to i16
  store i16 %403, ptr %164, align 4, !tbaa !39
  %404 = sub nsw i32 %387, %388
  %405 = mul nsw i32 %391, %404
  %406 = lshr i32 %405, 5
  %407 = trunc i32 %406 to i16
  store i16 %407, ptr %166, align 2, !tbaa !39
  %408 = load ptr, ptr %198, align 8, !tbaa !89
  call void %408(ptr noundef %220, ptr noundef nonnull %4) #6
  br label %450

409:                                              ; preds = %347
  store i32 1, ptr %14, align 4, !tbaa !84
  %410 = icmp eq i32 %348, 0
  br i1 %410, label %448, label %411

411:                                              ; preds = %409
  %412 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 1, i64 %215
  %413 = load i16, ptr %4, align 16, !tbaa !39
  store i16 %413, ptr %412, align 2, !tbaa !39
  %414 = load i16, ptr %164, align 4, !tbaa !39
  %415 = getelementptr inbounds i16, ptr %412, i64 1
  store i16 %414, ptr %415, align 2, !tbaa !39
  %416 = load i16, ptr %165, align 2, !tbaa !39
  %417 = getelementptr inbounds i16, ptr %412, i64 2
  store i16 %416, ptr %417, align 2, !tbaa !39
  %418 = load i16, ptr %166, align 2, !tbaa !39
  %419 = getelementptr inbounds i16, ptr %412, i64 3
  store i16 %418, ptr %419, align 2, !tbaa !39
  %420 = load ptr, ptr %201, align 8, !tbaa !34
  %421 = sext i16 %413 to i32
  %422 = sext i16 %416 to i32
  %423 = add nsw i32 %422, %421
  %424 = sext i16 %414 to i32
  %425 = sext i16 %418 to i32
  %426 = add nsw i32 %425, %424
  %427 = sub nsw i32 %421, %422
  %428 = sub nsw i32 %424, %425
  %429 = getelementptr inbounds [16 x i32], ptr %420, i64 %203
  %430 = load i32, ptr %429, align 4, !tbaa !69
  %431 = shl i32 %430, %204
  %432 = add nsw i32 %426, %423
  %433 = mul nsw i32 %431, %432
  %434 = lshr i32 %433, 5
  %435 = trunc i32 %434 to i16
  store i16 %435, ptr %6, align 16, !tbaa !39
  %436 = sub nsw i32 %423, %426
  %437 = mul nsw i32 %431, %436
  %438 = lshr i32 %437, 5
  %439 = trunc i32 %438 to i16
  store i16 %439, ptr %161, align 16, !tbaa !39
  %440 = add nsw i32 %428, %427
  %441 = mul nsw i32 %431, %440
  %442 = lshr i32 %441, 5
  %443 = trunc i32 %442 to i16
  store i16 %443, ptr %162, align 16, !tbaa !39
  %444 = sub nsw i32 %427, %428
  %445 = mul nsw i32 %431, %444
  %446 = lshr i32 %445, 5
  %447 = trunc i32 %446 to i16
  store i16 %447, ptr %163, align 16, !tbaa !39
  br label %448

448:                                              ; preds = %411, %409
  %449 = load ptr, ptr %205, align 16, !tbaa !98
  call void %449(ptr noundef %220, ptr noundef nonnull %6) #6
  br label %450

450:                                              ; preds = %371, %448, %356, %370, %225
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #6
  %451 = icmp eq i64 %215, 0
  br i1 %451, label %214, label %206, !llvm.loop !99

452:                                              ; preds = %155, %206
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  ret void
}

declare i32 @x264_quant_dc_trellis(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @x264_mb_optimize_chroma_dc(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #3 {
  %5 = add nsw i32 %1, 2
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = srem i32 %2, 6
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [16 x i32], ptr %8, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !69
  %13 = sdiv i32 %2, 6
  %14 = shl i32 %12, %13
  %15 = icmp sgt i32 %14, 2048
  br i1 %15, label %131, label %16

16:                                               ; preds = %4
  %17 = load i16, ptr %3, align 2, !tbaa !39
  %18 = sext i16 %17 to i32
  %19 = getelementptr inbounds i16, ptr %3, i64 1
  %20 = load i16, ptr %19, align 2, !tbaa !39
  %21 = sext i16 %20 to i32
  %22 = add nsw i32 %21, %18
  %23 = getelementptr inbounds i16, ptr %3, i64 2
  %24 = load i16, ptr %23, align 2, !tbaa !39
  %25 = sext i16 %24 to i32
  %26 = getelementptr inbounds i16, ptr %3, i64 3
  %27 = load i16, ptr %26, align 2, !tbaa !39
  %28 = sext i16 %27 to i32
  %29 = add nsw i32 %28, %25
  %30 = sub nsw i32 %18, %21
  %31 = sub nsw i32 %25, %28
  %32 = add nsw i32 %29, %22
  %33 = mul nsw i32 %32, %14
  %34 = lshr i32 %33, 5
  %35 = trunc i32 %34 to i16
  %36 = sub nsw i32 %22, %29
  %37 = mul nsw i32 %36, %14
  %38 = lshr i32 %37, 5
  %39 = trunc i32 %38 to i16
  %40 = add nsw i32 %31, %30
  %41 = mul nsw i32 %40, %14
  %42 = lshr i32 %41, 5
  %43 = trunc i32 %42 to i16
  %44 = sub nsw i32 %30, %31
  %45 = mul nsw i32 %44, %14
  %46 = lshr i32 %45, 5
  %47 = trunc i32 %46 to i16
  %48 = add i16 %35, 32
  %49 = add i16 %39, 32
  %50 = add i16 %43, 32
  %51 = add i16 %47, 32
  %52 = or i16 %48, %49
  %53 = or i16 %52, %50
  %54 = or i16 %53, %51
  %55 = icmp ult i16 %54, 64
  br i1 %55, label %131, label %56

56:                                               ; preds = %16
  %57 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 11, i64 3
  %58 = load ptr, ptr %57, align 8, !tbaa !34
  %59 = tail call i32 %58(ptr noundef nonnull %3) #6
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %61, label %131

61:                                               ; preds = %56
  %62 = sext i16 %48 to i32
  %63 = sext i16 %49 to i32
  %64 = sext i16 %50 to i32
  %65 = sext i16 %51 to i32
  %66 = zext nneg i32 %59 to i64
  br label %67

67:                                               ; preds = %61, %127
  %68 = phi i64 [ %66, %61 ], [ %129, %127 ]
  %69 = phi i32 [ 0, %61 ], [ %128, %127 ]
  %70 = getelementptr inbounds i16, ptr %3, i64 %68
  %71 = load i16, ptr %70, align 2, !tbaa !39
  %72 = sext i16 %71 to i32
  %73 = ashr i32 %72, 31
  %74 = or i32 %73, 1
  br label %75

75:                                               ; preds = %78, %67
  %76 = phi i32 [ %72, %67 ], [ %79, %78 ]
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %127, label %78

78:                                               ; preds = %75
  %79 = sub nsw i32 %76, %74
  %80 = trunc i32 %79 to i16
  store i16 %80, ptr %70, align 2, !tbaa !39
  %81 = load ptr, ptr %7, align 8, !tbaa !34
  %82 = load i16, ptr %3, align 2, !tbaa !39
  %83 = sext i16 %82 to i32
  %84 = load i16, ptr %19, align 2, !tbaa !39
  %85 = sext i16 %84 to i32
  %86 = add nsw i32 %85, %83
  %87 = load i16, ptr %23, align 2, !tbaa !39
  %88 = sext i16 %87 to i32
  %89 = load i16, ptr %26, align 2, !tbaa !39
  %90 = sext i16 %89 to i32
  %91 = add nsw i32 %90, %88
  %92 = sub nsw i32 %83, %85
  %93 = sub nsw i32 %88, %90
  %94 = getelementptr inbounds [16 x i32], ptr %81, i64 %10
  %95 = load i32, ptr %94, align 4, !tbaa !69
  %96 = shl i32 %95, %13
  %97 = add nsw i32 %91, %86
  %98 = sub nsw i32 %86, %91
  %99 = add nsw i32 %93, %92
  %100 = sub nsw i32 %92, %93
  %101 = shl i32 %96, 11
  %102 = mul i32 %101, %97
  %103 = ashr i32 %102, 16
  %104 = add nsw i32 %103, 32
  %105 = xor i32 %104, %62
  %106 = shl i32 %96, 11
  %107 = mul i32 %106, %98
  %108 = ashr i32 %107, 16
  %109 = add nsw i32 %108, 32
  %110 = xor i32 %109, %63
  %111 = or i32 %105, %110
  %112 = shl i32 %96, 11
  %113 = mul i32 %112, %99
  %114 = ashr i32 %113, 16
  %115 = add nsw i32 %114, 32
  %116 = xor i32 %115, %64
  %117 = or i32 %111, %116
  %118 = shl i32 %96, 11
  %119 = mul i32 %118, %100
  %120 = ashr i32 %119, 16
  %121 = add nsw i32 %120, 32
  %122 = xor i32 %121, %65
  %123 = or i32 %117, %122
  %124 = icmp ult i32 %123, 64
  br i1 %124, label %75, label %125, !llvm.loop !100

125:                                              ; preds = %78
  %126 = trunc i32 %76 to i16
  store i16 %126, ptr %70, align 2, !tbaa !39
  br label %127

127:                                              ; preds = %75, %125
  %128 = phi i32 [ 1, %125 ], [ %69, %75 ]
  %129 = add nsw i64 %68, -1
  %130 = icmp sgt i64 %68, 0
  br i1 %130, label %67, label %131, !llvm.loop !101

131:                                              ; preds = %127, %56, %16, %4
  %132 = phi i32 [ 1, %4 ], [ 0, %16 ], [ 0, %56 ], [ %128, %127 ]
  ret i32 %132
}

declare i32 @x264_quant_4x4_trellis(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @x264_predict_lossless_8x8_chroma(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %4 = load ptr, ptr %3, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.x264_frame, ptr %4, i64 0, i32 24, i64 1
  %6 = load i32, ptr %5, align 4, !tbaa !69
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %8 = load i32, ptr %7, align 4, !tbaa !103
  %9 = shl i32 %6, %8
  switch i32 %1, label %40 [
    i32 2, label %10
    i32 1, label %26
  ]

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 3
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 17, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = sext i32 %9 to i64
  %18 = sub nsw i64 0, %17
  %19 = getelementptr inbounds i8, ptr %16, i64 %18
  tail call void %12(ptr noundef %14, i32 noundef 32, ptr noundef %19, i32 noundef %9, i32 noundef 8) #6
  %20 = load ptr, ptr %11, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %22 = load ptr, ptr %21, align 16, !tbaa !34
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 17, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds i8, ptr %24, i64 %18
  tail call void %20(ptr noundef %22, i32 noundef 32, ptr noundef %25, i32 noundef %9, i32 noundef 8) #6
  br label %49

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 3
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 17, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = getelementptr inbounds i8, ptr %32, i64 -1
  tail call void %28(ptr noundef %30, i32 noundef 32, ptr noundef nonnull %33, i32 noundef %9, i32 noundef 8) #6
  %34 = load ptr, ptr %27, align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %36 = load ptr, ptr %35, align 16, !tbaa !34
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 17, i64 2
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  %39 = getelementptr inbounds i8, ptr %38, i64 -1
  tail call void %34(ptr noundef %36, i32 noundef 32, ptr noundef nonnull %39, i32 noundef %9, i32 noundef 8) #6
  br label %49

40:                                               ; preds = %2
  %41 = sext i32 %1 to i64
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 65, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  tail call void %43(ptr noundef %45) #6
  %46 = load ptr, ptr %42, align 8, !tbaa !34
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %48 = load ptr, ptr %47, align 16, !tbaa !34
  tail call void %46(ptr noundef %48) #6
  br label %49

49:                                               ; preds = %26, %40, %10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_predict_lossless_4x4(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = getelementptr inbounds %struct.x264_frame, ptr %6, i64 0, i32 24
  %8 = load i32, ptr %7, align 8, !tbaa !69
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %10 = load i32, ptr %9, align 4, !tbaa !103
  %11 = shl i32 %8, %10
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = sext i32 %2 to i64
  %15 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !38
  %17 = zext i8 %16 to i64
  %18 = shl nuw nsw i64 %17, 2
  %19 = getelementptr inbounds i8, ptr %13, i64 %18
  %20 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %14
  %21 = load i8, ptr %20, align 1, !tbaa !38
  %22 = zext i8 %21 to i32
  %23 = shl i32 %11, 2
  %24 = mul i32 %23, %22
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %19, i64 %25
  switch i32 %3, label %37 [
    i32 0, label %27
    i32 1, label %33
  ]

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 6
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = sext i32 %11 to i64
  %31 = sub nsw i64 0, %30
  %32 = getelementptr inbounds i8, ptr %26, i64 %31
  tail call void %29(ptr noundef %1, i32 noundef 32, ptr noundef %32, i32 noundef %11, i32 noundef 4) #6
  br label %41

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 6
  %35 = load ptr, ptr %34, align 8, !tbaa !34
  %36 = getelementptr inbounds i8, ptr %26, i64 -1
  tail call void %35(ptr noundef %1, i32 noundef 32, ptr noundef nonnull %36, i32 noundef %11, i32 noundef 4) #6
  br label %41

37:                                               ; preds = %4
  %38 = sext i32 %3 to i64
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 67, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !34
  tail call void %40(ptr noundef %1) #6
  br label %41

41:                                               ; preds = %33, %37, %27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_predict_lossless_8x8(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = getelementptr inbounds %struct.x264_frame, ptr %7, i64 0, i32 24
  %9 = load i32, ptr %8, align 8, !tbaa !69
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %11 = load i32, ptr %10, align 4, !tbaa !103
  %12 = shl i32 %9, %11
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 17
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = shl i32 %2, 3
  %16 = and i32 %15, 8
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %14, i64 %17
  %19 = shl nsw i32 %2, 2
  %20 = and i32 %19, -8
  %21 = mul nsw i32 %12, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %18, i64 %22
  switch i32 %3, label %34 [
    i32 0, label %24
    i32 1, label %30
  ]

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 3
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = sext i32 %12 to i64
  %28 = sub nsw i64 0, %27
  %29 = getelementptr inbounds i8, ptr %23, i64 %28
  tail call void %26(ptr noundef %1, i32 noundef 32, ptr noundef %29, i32 noundef %12, i32 noundef 8) #6
  br label %38

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 3
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = getelementptr inbounds i8, ptr %23, i64 -1
  tail call void %32(ptr noundef %1, i32 noundef 32, ptr noundef nonnull %33, i32 noundef %12, i32 noundef 8) #6
  br label %38

34:                                               ; preds = %5
  %35 = sext i32 %3 to i64
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 66, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  tail call void %37(ptr noundef %1, ptr noundef %4) #6
  br label %38

38:                                               ; preds = %30, %34, %24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_predict_lossless_16x16(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %4 = load ptr, ptr %3, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.x264_frame, ptr %4, i64 0, i32 24
  %6 = load i32, ptr %5, align 8, !tbaa !69
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %8 = load i32, ptr %7, align 4, !tbaa !103
  %9 = shl i32 %6, %8
  switch i32 %1, label %28 [
    i32 0, label %10
    i32 1, label %20
  ]

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %14 = load ptr, ptr %13, align 16, !tbaa !34
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = sext i32 %9 to i64
  %18 = sub nsw i64 0, %17
  %19 = getelementptr inbounds i8, ptr %16, i64 %18
  tail call void %12(ptr noundef %14, i32 noundef 32, ptr noundef %19, i32 noundef %9, i32 noundef 16) #6
  br label %34

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !104
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %24 = load ptr, ptr %23, align 16, !tbaa !34
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = getelementptr inbounds i8, ptr %26, i64 -1
  tail call void %22(ptr noundef %24, i32 noundef 32, ptr noundef nonnull %27, i32 noundef %9, i32 noundef 16) #6
  br label %34

28:                                               ; preds = %2
  %29 = sext i32 %1 to i64
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 64, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %33 = load ptr, ptr %32, align 16, !tbaa !34
  tail call void %31(ptr noundef %33) #6
  br label %34

34:                                               ; preds = %20, %28, %10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_encode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [16 x [16 x i16]], align 16
  %3 = alloca [16 x i16], align 16
  %4 = alloca [33 x i8], align 16
  %5 = alloca [4 x [64 x i16]], align 16
  %6 = alloca [16 x [16 x i16]], align 16
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 68
  %8 = load i32, ptr %7, align 16, !tbaa !105
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 14
  %10 = load i32, ptr %9, align 8, !tbaa !83
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  store i32 0, ptr %11, align 8, !tbaa !70
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 44
  store i8 0, ptr %13, align 1, !tbaa !38
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 53
  %15 = load i32, ptr %14, align 8, !tbaa !106
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %35

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %21 = load ptr, ptr %20, align 16, !tbaa !34
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %23 = load ptr, ptr %22, align 16, !tbaa !34
  tail call void %19(ptr noundef %21, i32 noundef 32, ptr noundef %23, i32 noundef 16, i32 noundef 16) #6
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 3
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  tail call void %25(ptr noundef %27, i32 noundef 32, ptr noundef %29, i32 noundef 16, i32 noundef 8) #6
  %30 = load ptr, ptr %24, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %32 = load ptr, ptr %31, align 16, !tbaa !34
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 2
  %34 = load ptr, ptr %33, align 16, !tbaa !34
  tail call void %30(ptr noundef %32, i32 noundef 32, ptr noundef %34, i32 noundef 16, i32 noundef 8) #6
  br label %1067

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %37 = load i32, ptr %36, align 4, !tbaa !107
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %41 = load i32, ptr %40, align 8, !tbaa !108
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !109
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !110
  %46 = add nsw i32 %45, %43
  %47 = icmp eq i32 %41, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 38
  %50 = load ptr, ptr %49, align 8, !tbaa !111
  %51 = sext i32 %43 to i64
  %52 = getelementptr inbounds i8, ptr %50, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !38
  switch i8 %53, label %58 [
    i8 6, label %54
    i8 18, label %54
  ]

54:                                               ; preds = %48, %48
  switch i32 %15, label %58 [
    i32 6, label %56
    i32 18, label %55
  ]

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %54, %55
  %57 = phi i32 [ 7, %55 ], [ 4, %54 ]
  store i32 %57, ptr %14, align 8, !tbaa !106
  br label %58

58:                                               ; preds = %56, %54, %48, %39, %35
  %59 = phi i1 [ true, %39 ], [ true, %35 ], [ true, %48 ], [ false, %54 ], [ false, %56 ]
  %60 = load i32, ptr %14, align 8, !tbaa !106
  switch i32 %60, label %627 [
    i32 6, label %61
    i32 18, label %160
    i32 2, label %186
    i32 1, label %413
    i32 0, label %519
  ]

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 62
  %63 = load i32, ptr %62, align 4, !tbaa !112
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %139

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 12
  %67 = load i16, ptr %66, align 4, !tbaa !39
  %68 = sext i16 %67 to i32
  %69 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 18
  %70 = load i32, ptr %69, align 8, !tbaa !69
  %71 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 19
  %72 = load i32, ptr %71, align 16, !tbaa !69
  %73 = icmp sgt i32 %70, %68
  %74 = tail call i32 @llvm.smin.i32(i32 %68, i32 %72)
  %75 = select i1 %73, i32 %70, i32 %74
  %76 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 12, i64 1
  %77 = load i16, ptr %76, align 2, !tbaa !39
  %78 = sext i16 %77 to i32
  %79 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 18, i64 1
  %80 = load i32, ptr %79, align 4, !tbaa !69
  %81 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 19, i64 1
  %82 = load i32, ptr %81, align 4, !tbaa !69
  %83 = icmp sgt i32 %80, %78
  %84 = tail call i32 @llvm.smin.i32(i32 %78, i32 %82)
  %85 = select i1 %83, i32 %80, i32 %84
  %86 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70
  %87 = load ptr, ptr %86, align 8, !tbaa !113
  %88 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %89 = load ptr, ptr %88, align 16, !tbaa !34
  %90 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20
  %91 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23
  %92 = load i32, ptr %91, align 16, !tbaa !69
  %93 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22
  tail call void %87(ptr noundef %89, i32 noundef 32, ptr noundef nonnull %90, i32 noundef %92, i32 noundef %75, i32 noundef %85, i32 noundef 16, i32 noundef 16, ptr noundef nonnull %93) #6
  %94 = or i32 %85, %75
  %95 = icmp eq i32 %94, 0
  %96 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !34
  %98 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20, i64 0, i64 0, i64 4
  %99 = load ptr, ptr %98, align 16, !tbaa !34
  %100 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23, i64 1
  %101 = load i32, ptr %100, align 4, !tbaa !69
  %102 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %103 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20, i64 0, i64 0, i64 5
  %104 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23, i64 2
  br i1 %95, label %112, label %105

105:                                              ; preds = %65
  %106 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !114
  tail call void %107(ptr noundef %97, i32 noundef 32, ptr noundef %99, i32 noundef %101, i32 noundef %75, i32 noundef %85, i32 noundef 8, i32 noundef 8) #6
  %108 = load ptr, ptr %106, align 8, !tbaa !114
  %109 = load ptr, ptr %102, align 16, !tbaa !34
  %110 = load ptr, ptr %103, align 8, !tbaa !34
  %111 = load i32, ptr %104, align 8, !tbaa !69
  tail call void %108(ptr noundef %109, i32 noundef 32, ptr noundef %110, i32 noundef %111, i32 noundef %75, i32 noundef %85, i32 noundef 8, i32 noundef 8) #6
  br label %119

112:                                              ; preds = %65
  %113 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 3
  %114 = load ptr, ptr %113, align 8, !tbaa !34
  tail call void %114(ptr noundef %97, i32 noundef 32, ptr noundef %99, i32 noundef %101, i32 noundef 8) #6
  %115 = load ptr, ptr %113, align 8, !tbaa !34
  %116 = load ptr, ptr %102, align 16, !tbaa !34
  %117 = load ptr, ptr %103, align 8, !tbaa !34
  %118 = load i32, ptr %104, align 8, !tbaa !69
  tail call void %115(ptr noundef %116, i32 noundef 32, ptr noundef %117, i32 noundef %118, i32 noundef 8) #6
  br label %119

119:                                              ; preds = %112, %105
  %120 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 0, i64 1, i32 5
  %121 = load ptr, ptr %120, align 16, !tbaa !115
  %122 = icmp eq ptr %121, null
  br i1 %122, label %129, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 0, i64 1
  %125 = getelementptr inbounds ptr, ptr %121, i64 2
  %126 = load ptr, ptr %125, align 8, !tbaa !34
  %127 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %128 = load ptr, ptr %127, align 8, !tbaa !34
  tail call void %126(ptr noundef %128, i32 noundef 32, ptr noundef %128, i32 noundef 32, ptr noundef nonnull %124, i32 noundef 8) #6
  br label %129

129:                                              ; preds = %123, %119
  %130 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 0, i64 2, i32 5
  %131 = load ptr, ptr %130, align 16, !tbaa !115
  %132 = icmp eq ptr %131, null
  br i1 %132, label %139, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 0, i64 2
  %135 = getelementptr inbounds ptr, ptr %131, i64 2
  %136 = load ptr, ptr %135, align 8, !tbaa !34
  %137 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %138 = load ptr, ptr %137, align 16, !tbaa !34
  tail call void %136(ptr noundef %138, i32 noundef 32, ptr noundef %138, i32 noundef 32, ptr noundef nonnull %134, i32 noundef 8) #6
  br label %139

139:                                              ; preds = %133, %129, %61
  %140 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 12
  store i32 0, ptr %140, align 1, !tbaa !38
  %141 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 20
  store i32 0, ptr %141, align 1, !tbaa !38
  %142 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 28
  store i32 0, ptr %142, align 1, !tbaa !38
  %143 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 36
  store i32 0, ptr %143, align 1, !tbaa !38
  br label %144

144:                                              ; preds = %139, %144
  %145 = phi i64 [ 16, %139 ], [ %150, %144 ]
  %146 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %145
  %147 = load i32, ptr %146, align 4, !tbaa !69
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %148
  store i8 0, ptr %149, align 1, !tbaa !38
  %150 = add nuw nsw i64 %145, 1
  %151 = icmp eq i64 %150, 24
  br i1 %151, label %152, label %144, !llvm.loop !117

152:                                              ; preds = %144
  store i32 0, ptr %11, align 8, !tbaa !70
  %153 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  store i32 0, ptr %153, align 4, !tbaa !84
  %154 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 41
  %155 = load ptr, ptr %154, align 16, !tbaa !118
  %156 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %157 = load i32, ptr %156, align 8, !tbaa !108
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i16, ptr %155, i64 %158
  store i16 0, ptr %159, align 2, !tbaa !39
  br label %1067

160:                                              ; preds = %58
  %161 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 62
  %162 = load i32, ptr %161, align 4, !tbaa !112
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  tail call void @x264_mb_mc(ptr noundef %0) #6
  br label %165

165:                                              ; preds = %164, %160
  %166 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 12
  store i32 0, ptr %166, align 1, !tbaa !38
  %167 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 20
  store i32 0, ptr %167, align 1, !tbaa !38
  %168 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 28
  store i32 0, ptr %168, align 1, !tbaa !38
  %169 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 36
  store i32 0, ptr %169, align 1, !tbaa !38
  br label %170

170:                                              ; preds = %165, %170
  %171 = phi i64 [ 16, %165 ], [ %176, %170 ]
  %172 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %171
  %173 = load i32, ptr %172, align 4, !tbaa !69
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %174
  store i8 0, ptr %175, align 1, !tbaa !38
  %176 = add nuw nsw i64 %171, 1
  %177 = icmp eq i64 %176, 24
  br i1 %177, label %178, label %170, !llvm.loop !117

178:                                              ; preds = %170
  store i32 0, ptr %11, align 8, !tbaa !70
  %179 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  store i32 0, ptr %179, align 4, !tbaa !84
  %180 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 41
  %181 = load ptr, ptr %180, align 16, !tbaa !118
  %182 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %183 = load i32, ptr %182, align 8, !tbaa !108
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i16, ptr %181, i64 %184
  store i16 0, ptr %185, align 2, !tbaa !39
  br label %1067

186:                                              ; preds = %58
  %187 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 59
  %188 = load i32, ptr %187, align 16, !tbaa !119
  %189 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  store i32 0, ptr %189, align 4, !tbaa !120
  %190 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %191 = load i32, ptr %190, align 4, !tbaa !41
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %225, label %193

193:                                              ; preds = %186
  %194 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %195 = load ptr, ptr %194, align 8, !tbaa !102
  %196 = getelementptr inbounds %struct.x264_frame, ptr %195, i64 0, i32 24
  %197 = load i32, ptr %196, align 8, !tbaa !69
  %198 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %199 = load i32, ptr %198, align 4, !tbaa !103
  %200 = shl i32 %197, %199
  switch i32 %188, label %219 [
    i32 0, label %201
    i32 1, label %211
  ]

201:                                              ; preds = %193
  %202 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4
  %203 = load ptr, ptr %202, align 8, !tbaa !34
  %204 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %205 = load ptr, ptr %204, align 16, !tbaa !34
  %206 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 17
  %207 = load ptr, ptr %206, align 8, !tbaa !34
  %208 = sext i32 %200 to i64
  %209 = sub nsw i64 0, %208
  %210 = getelementptr inbounds i8, ptr %207, i64 %209
  tail call void %203(ptr noundef %205, i32 noundef 32, ptr noundef %210, i32 noundef %200, i32 noundef 16) #6
  br label %231

211:                                              ; preds = %193
  %212 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 5
  %213 = load ptr, ptr %212, align 8, !tbaa !104
  %214 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %215 = load ptr, ptr %214, align 16, !tbaa !34
  %216 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 17
  %217 = load ptr, ptr %216, align 8, !tbaa !34
  %218 = getelementptr inbounds i8, ptr %217, i64 -1
  tail call void %213(ptr noundef %215, i32 noundef 32, ptr noundef nonnull %218, i32 noundef %200, i32 noundef 16) #6
  br label %231

219:                                              ; preds = %193
  %220 = sext i32 %188 to i64
  %221 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 64, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !34
  %223 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %224 = load ptr, ptr %223, align 16, !tbaa !34
  tail call void %222(ptr noundef %224) #6
  br label %231

225:                                              ; preds = %186
  %226 = sext i32 %188 to i64
  %227 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 64, i64 %226
  %228 = load ptr, ptr %227, align 8, !tbaa !34
  %229 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %230 = load ptr, ptr %229, align 16, !tbaa !34
  tail call void %228(ptr noundef %230) #6
  br label %231

231:                                              ; preds = %219, %211, %201, %225
  %232 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %233 = load ptr, ptr %232, align 16, !tbaa !34
  %234 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %235 = load ptr, ptr %234, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #6
  %236 = load i32, ptr %190, align 4, !tbaa !41
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %284, label %238

238:                                              ; preds = %231
  %239 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 4
  br label %258

240:                                              ; preds = %258
  %241 = load i32, ptr %11, align 8, !tbaa !70
  %242 = mul nsw i32 %241, 15
  store i32 %242, ptr %11, align 8, !tbaa !70
  %243 = load i64, ptr %3, align 16, !tbaa !38
  %244 = getelementptr inbounds i16, ptr %3, i64 4
  %245 = load i64, ptr %244, align 8, !tbaa !38
  %246 = or i64 %245, %243
  %247 = getelementptr inbounds i16, ptr %3, i64 8
  %248 = load i64, ptr %247, align 16, !tbaa !38
  %249 = or i64 %246, %248
  %250 = getelementptr inbounds i16, ptr %3, i64 12
  %251 = load i64, ptr %250, align 8, !tbaa !38
  %252 = or i64 %249, %251
  %253 = icmp ne i64 %252, 0
  %254 = zext i1 %253 to i8
  store i8 %254, ptr %13, align 1, !tbaa !38
  %255 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 1
  %256 = load ptr, ptr %255, align 8, !tbaa !74
  %257 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54
  call void %256(ptr noundef nonnull %257, ptr noundef nonnull %3) #6
  br label %412

258:                                              ; preds = %238, %258
  %259 = phi i64 [ 0, %238 ], [ %282, %258 ]
  %260 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %259
  %261 = load i8, ptr %260, align 1, !tbaa !38
  %262 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %259
  %263 = load i16, ptr %262, align 2, !tbaa !39
  %264 = load ptr, ptr %239, align 8, !tbaa !93
  %265 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %259
  %266 = zext i8 %261 to i64
  %267 = getelementptr inbounds i8, ptr %233, i64 %266
  %268 = zext i16 %263 to i64
  %269 = getelementptr inbounds i8, ptr %235, i64 %268
  %270 = getelementptr inbounds [16 x i8], ptr @block_idx_yx_1d, i64 0, i64 %259
  %271 = load i8, ptr %270, align 1, !tbaa !38
  %272 = zext i8 %271 to i64
  %273 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 %272
  %274 = call i32 %264(ptr noundef nonnull %265, ptr noundef %267, ptr noundef %269, ptr noundef nonnull %273) #6
  %275 = trunc i32 %274 to i8
  %276 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %259
  %277 = load i32, ptr %276, align 4, !tbaa !69
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %278
  store i8 %275, ptr %279, align 1, !tbaa !38
  %280 = load i32, ptr %11, align 8, !tbaa !70
  %281 = or i32 %280, %274
  store i32 %281, ptr %11, align 8, !tbaa !70
  %282 = add nuw nsw i64 %259, 1
  %283 = icmp eq i64 %282, 16
  br i1 %283, label %240, label %258, !llvm.loop !121

284:                                              ; preds = %231
  %285 = load i32, ptr %9, align 8, !tbaa !83
  %286 = icmp eq i32 %285, 0
  %287 = select i1 %286, i32 9, i32 0
  %288 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 6
  %289 = load ptr, ptr %288, align 16, !tbaa !122
  call void %289(ptr noundef nonnull %2, ptr noundef %233, ptr noundef %235) #6
  %290 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %291 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 1
  %292 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 0
  %293 = sext i32 %8 to i64
  %294 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 0
  %295 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 1
  %296 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 5
  %297 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29
  %298 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 8
  br label %301

299:                                              ; preds = %342
  %300 = icmp slt i32 %343, 6
  br i1 %300, label %346, label %351

301:                                              ; preds = %284, %342
  %302 = phi i64 [ 0, %284 ], [ %344, %342 ]
  %303 = phi i32 [ %287, %284 ], [ %343, %342 ]
  %304 = getelementptr inbounds [16 x [16 x i16]], ptr %2, i64 0, i64 %302
  %305 = load i16, ptr %304, align 16, !tbaa !39
  %306 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_1d, i64 0, i64 %302
  %307 = load i8, ptr %306, align 1, !tbaa !38
  %308 = zext i8 %307 to i64
  %309 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 %308
  store i16 %305, ptr %309, align 2, !tbaa !39
  store i16 0, ptr %304, align 16, !tbaa !39
  %310 = load i32, ptr %290, align 16, !tbaa !72
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %315, label %312

312:                                              ; preds = %301
  %313 = trunc i64 %302 to i32
  %314 = call i32 @x264_quant_4x4_trellis(ptr noundef %0, ptr noundef nonnull %304, i32 noundef 0, i32 noundef %8, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef %313) #6
  br label %322

315:                                              ; preds = %301
  %316 = load ptr, ptr %291, align 8, !tbaa !73
  %317 = load ptr, ptr %292, align 8, !tbaa !34
  %318 = getelementptr inbounds [16 x i16], ptr %317, i64 %293
  %319 = load ptr, ptr %294, align 8, !tbaa !34
  %320 = getelementptr inbounds [16 x i16], ptr %319, i64 %293
  %321 = call i32 %316(ptr noundef nonnull %304, ptr noundef %318, ptr noundef %320) #6
  br label %322

322:                                              ; preds = %315, %312
  %323 = phi i32 [ %314, %312 ], [ %321, %315 ]
  %324 = trunc i32 %323 to i8
  %325 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %302
  %326 = load i32, ptr %325, align 4, !tbaa !69
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %327
  store i8 %324, ptr %328, align 1, !tbaa !38
  %329 = icmp eq i32 %323, 0
  br i1 %329, label %342, label %330

330:                                              ; preds = %322
  %331 = load ptr, ptr %295, align 8, !tbaa !74
  %332 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %302
  call void %331(ptr noundef nonnull %332, ptr noundef nonnull %304) #6
  %333 = load ptr, ptr %296, align 8, !tbaa !75
  %334 = load ptr, ptr %297, align 16, !tbaa !34
  call void %333(ptr noundef nonnull %304, ptr noundef %334, i32 noundef %8) #6
  %335 = icmp slt i32 %303, 6
  br i1 %335, label %336, label %340

336:                                              ; preds = %330
  %337 = load ptr, ptr %298, align 8, !tbaa !96
  %338 = call i32 %337(ptr noundef nonnull %332) #6
  %339 = add nsw i32 %338, %303
  br label %340

340:                                              ; preds = %336, %330
  %341 = phi i32 [ %339, %336 ], [ %303, %330 ]
  store i32 15, ptr %11, align 8, !tbaa !70
  br label %342

342:                                              ; preds = %340, %322
  %343 = phi i32 [ %341, %340 ], [ %303, %322 ]
  %344 = add nuw nsw i64 %302, 1
  %345 = icmp eq i64 %344, 16
  br i1 %345, label %299, label %301, !llvm.loop !123

346:                                              ; preds = %299
  store i32 0, ptr %11, align 8, !tbaa !70
  %347 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 12
  store i32 0, ptr %347, align 1, !tbaa !38
  %348 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 20
  store i32 0, ptr %348, align 1, !tbaa !38
  %349 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 28
  store i32 0, ptr %349, align 1, !tbaa !38
  %350 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 36
  store i32 0, ptr %350, align 1, !tbaa !38
  br label %351

351:                                              ; preds = %346, %299
  %352 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 13
  %353 = load ptr, ptr %352, align 8, !tbaa !124
  call void %353(ptr noundef nonnull %3) #6
  %354 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %355 = load i32, ptr %354, align 16, !tbaa !72
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %359, label %357

357:                                              ; preds = %351
  %358 = call i32 @x264_quant_dc_trellis(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0, i32 noundef %8, i32 noundef 0, i32 noundef 1, i32 noundef 0) #6
  br label %376

359:                                              ; preds = %351
  %360 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 2
  %361 = load ptr, ptr %360, align 8, !tbaa !125
  %362 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33
  %363 = load ptr, ptr %362, align 16, !tbaa !34
  %364 = sext i32 %8 to i64
  %365 = getelementptr inbounds [16 x i16], ptr %363, i64 %364
  %366 = load i16, ptr %365, align 2, !tbaa !39
  %367 = lshr i16 %366, 1
  %368 = zext nneg i16 %367 to i32
  %369 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35
  %370 = load ptr, ptr %369, align 16, !tbaa !34
  %371 = getelementptr inbounds [16 x i16], ptr %370, i64 %364
  %372 = load i16, ptr %371, align 2, !tbaa !39
  %373 = zext i16 %372 to i32
  %374 = shl nuw nsw i32 %373, 1
  %375 = call i32 %361(ptr noundef nonnull %3, i32 noundef %368, i32 noundef %374) #6
  br label %376

376:                                              ; preds = %359, %357
  %377 = phi i32 [ %358, %357 ], [ %375, %359 ]
  %378 = trunc i32 %377 to i8
  store i8 %378, ptr %13, align 1, !tbaa !38
  %379 = icmp eq i32 %377, 0
  br i1 %379, label %402, label %380

380:                                              ; preds = %376
  %381 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 1
  %382 = load ptr, ptr %381, align 8, !tbaa !74
  %383 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54
  call void %382(ptr noundef nonnull %383, ptr noundef nonnull %3) #6
  %384 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 14
  %385 = load ptr, ptr %384, align 16, !tbaa !126
  call void %385(ptr noundef nonnull %3) #6
  %386 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 6
  %387 = load ptr, ptr %386, align 8, !tbaa !127
  %388 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29
  %389 = load ptr, ptr %388, align 16, !tbaa !34
  call void %387(ptr noundef nonnull %3, ptr noundef %389, i32 noundef %8) #6
  %390 = load i32, ptr %11, align 8, !tbaa !70
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %402, label %392

392:                                              ; preds = %380, %392
  %393 = phi i64 [ %400, %392 ], [ 0, %380 ]
  %394 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_1d, i64 0, i64 %393
  %395 = load i8, ptr %394, align 1, !tbaa !38
  %396 = zext i8 %395 to i64
  %397 = getelementptr inbounds [16 x i16], ptr %3, i64 0, i64 %396
  %398 = load i16, ptr %397, align 2, !tbaa !39
  %399 = getelementptr inbounds [16 x [16 x i16]], ptr %2, i64 0, i64 %393
  store i16 %398, ptr %399, align 16, !tbaa !39
  %400 = add nuw nsw i64 %393, 1
  %401 = icmp eq i64 %400, 16
  br i1 %401, label %402, label %392, !llvm.loop !128

402:                                              ; preds = %392, %380, %376
  %403 = load i32, ptr %11, align 8, !tbaa !70
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %408, label %405

405:                                              ; preds = %402
  %406 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 7
  %407 = load ptr, ptr %406, align 8, !tbaa !129
  call void %407(ptr noundef %235, ptr noundef nonnull %2) #6
  br label %412

408:                                              ; preds = %402
  br i1 %379, label %412, label %409

409:                                              ; preds = %408
  %410 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 8
  %411 = load ptr, ptr %410, align 16, !tbaa !130
  call void %411(ptr noundef %235, ptr noundef nonnull %3) #6
  br label %412

412:                                              ; preds = %240, %405, %408, %409
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %2) #6
  br label %982

413:                                              ; preds = %58
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %4) #6
  %414 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  store i32 1, ptr %414, align 4, !tbaa !120
  %415 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 61
  %416 = load i32, ptr %415, align 8, !tbaa !131
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %446, label %418

418:                                              ; preds = %413
  %419 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4
  %420 = load ptr, ptr %419, align 8, !tbaa !34
  %421 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %422 = load ptr, ptr %421, align 16, !tbaa !34
  %423 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 3
  tail call void %420(ptr noundef %422, i32 noundef 32, ptr noundef nonnull %423, i32 noundef 16, i32 noundef 16) #6
  %424 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 7
  %425 = load i32, ptr %424, align 16, !tbaa !69
  %426 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 12
  store i32 %425, ptr %426, align 1, !tbaa !38
  %427 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 7, i64 1
  %428 = load i32, ptr %427, align 4, !tbaa !69
  %429 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 20
  store i32 %428, ptr %429, align 1, !tbaa !38
  %430 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 7, i64 2
  %431 = load i32, ptr %430, align 8, !tbaa !69
  %432 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 28
  store i32 %431, ptr %432, align 1, !tbaa !38
  %433 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 7, i64 3
  %434 = load i32, ptr %433, align 4, !tbaa !69
  %435 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 36
  store i32 %434, ptr %435, align 1, !tbaa !38
  %436 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 9
  %437 = load i32, ptr %436, align 4, !tbaa !132
  store i32 %437, ptr %11, align 8, !tbaa !70
  %438 = load i32, ptr %415, align 8, !tbaa !131
  %439 = icmp eq i32 %438, 2
  br i1 %439, label %440, label %446

440:                                              ; preds = %418
  %441 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 10
  %442 = load ptr, ptr %441, align 8, !tbaa !133
  %443 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2
  %444 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 4
  %445 = tail call ptr %442(ptr noundef nonnull %443, ptr noundef nonnull %444, i64 noundef 384) #6
  br label %446

446:                                              ; preds = %418, %440, %413
  %447 = load i32, ptr %415, align 8, !tbaa !131
  %448 = icmp eq i32 %447, 0
  %449 = select i1 %448, i64 0, i64 3
  %450 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %451 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 68
  %452 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %453 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %454 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %455 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 17
  %456 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 3
  %457 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 3
  br label %459

458:                                              ; preds = %515
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %4) #6
  br label %982

459:                                              ; preds = %446, %515
  %460 = phi i64 [ %449, %446 ], [ %517, %515 ]
  %461 = load ptr, ptr %450, align 16, !tbaa !34
  %462 = trunc i64 %460 to i32
  %463 = shl i32 %462, 3
  %464 = and i32 %463, 8
  %465 = trunc i64 %460 to i32
  %466 = shl i32 %465, 7
  %467 = and i32 %466, 256
  %468 = or disjoint i32 %464, %467
  %469 = zext nneg i32 %468 to i64
  %470 = getelementptr inbounds i8, ptr %461, i64 %469
  %471 = shl nuw nsw i64 %460, 2
  %472 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %471
  %473 = load i32, ptr %472, align 16, !tbaa !69
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds [40 x i8], ptr %12, i64 0, i64 %474
  %476 = load i8, ptr %475, align 1, !tbaa !38
  %477 = load ptr, ptr %451, align 16, !tbaa !134
  %478 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 25, i64 %460
  %479 = load i32, ptr %478, align 4, !tbaa !69
  %480 = sext i8 %476 to i64
  %481 = getelementptr inbounds [12 x i8], ptr @x264_pred_i4x4_neighbors, i64 0, i64 %480
  %482 = load i8, ptr %481, align 1, !tbaa !38
  %483 = zext i8 %482 to i32
  call void %477(ptr noundef %470, ptr noundef nonnull %4, i32 noundef %479, i32 noundef %483) #6
  %484 = load i32, ptr %452, align 4, !tbaa !41
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %512, label %486

486:                                              ; preds = %459
  %487 = load ptr, ptr %453, align 8, !tbaa !102
  %488 = getelementptr inbounds %struct.x264_frame, ptr %487, i64 0, i32 24
  %489 = load i32, ptr %488, align 8, !tbaa !69
  %490 = load i32, ptr %454, align 4, !tbaa !103
  %491 = shl i32 %489, %490
  %492 = load ptr, ptr %455, align 8, !tbaa !34
  %493 = zext nneg i32 %464 to i64
  %494 = getelementptr inbounds i8, ptr %492, i64 %493
  %495 = trunc i64 %471 to i32
  %496 = and i32 %495, 8
  %497 = mul nsw i32 %491, %496
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i8, ptr %494, i64 %498
  switch i8 %476, label %508 [
    i8 0, label %500
    i8 1, label %505
  ]

500:                                              ; preds = %486
  %501 = load ptr, ptr %457, align 8, !tbaa !34
  %502 = sext i32 %491 to i64
  %503 = sub nsw i64 0, %502
  %504 = getelementptr inbounds i8, ptr %499, i64 %503
  call void %501(ptr noundef %470, i32 noundef 32, ptr noundef %504, i32 noundef %491, i32 noundef 8) #6
  br label %515

505:                                              ; preds = %486
  %506 = load ptr, ptr %456, align 8, !tbaa !34
  %507 = getelementptr inbounds i8, ptr %499, i64 -1
  call void %506(ptr noundef %470, i32 noundef 32, ptr noundef nonnull %507, i32 noundef %491, i32 noundef 8) #6
  br label %515

508:                                              ; preds = %486
  %509 = sext i8 %476 to i64
  %510 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 66, i64 %509
  %511 = load ptr, ptr %510, align 8, !tbaa !34
  call void %511(ptr noundef %470, ptr noundef nonnull %4) #6
  br label %515

512:                                              ; preds = %459
  %513 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 66, i64 %480
  %514 = load ptr, ptr %513, align 8, !tbaa !34
  call void %514(ptr noundef %470, ptr noundef nonnull %4) #6
  br label %515

515:                                              ; preds = %508, %505, %500, %512
  %516 = trunc i64 %460 to i32
  call void @x264_mb_encode_i8x8(ptr noundef %0, i32 noundef %516, i32 noundef %8)
  %517 = add nuw nsw i64 %460, 1
  %518 = icmp eq i64 %517, 4
  br i1 %518, label %458, label %459, !llvm.loop !135

519:                                              ; preds = %58
  %520 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  store i32 0, ptr %520, align 4, !tbaa !120
  %521 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 61
  %522 = load i32, ptr %521, align 8, !tbaa !131
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %552, label %524

524:                                              ; preds = %519
  %525 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4
  %526 = load ptr, ptr %525, align 8, !tbaa !34
  %527 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %528 = load ptr, ptr %527, align 16, !tbaa !34
  %529 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 2
  tail call void %526(ptr noundef %528, i32 noundef 32, ptr noundef nonnull %529, i32 noundef 16, i32 noundef 16) #6
  %530 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 6
  %531 = load i32, ptr %530, align 16, !tbaa !69
  %532 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 12
  store i32 %531, ptr %532, align 1, !tbaa !38
  %533 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 6, i64 1
  %534 = load i32, ptr %533, align 4, !tbaa !69
  %535 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 20
  store i32 %534, ptr %535, align 1, !tbaa !38
  %536 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 6, i64 2
  %537 = load i32, ptr %536, align 8, !tbaa !69
  %538 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 28
  store i32 %537, ptr %538, align 1, !tbaa !38
  %539 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 6, i64 3
  %540 = load i32, ptr %539, align 4, !tbaa !69
  %541 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 36
  store i32 %540, ptr %541, align 1, !tbaa !38
  %542 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 8
  %543 = load i32, ptr %542, align 16, !tbaa !136
  store i32 %543, ptr %11, align 8, !tbaa !70
  %544 = load i32, ptr %521, align 8, !tbaa !131
  %545 = icmp eq i32 %544, 2
  br i1 %545, label %546, label %552

546:                                              ; preds = %524
  %547 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 10
  %548 = load ptr, ptr %547, align 8, !tbaa !133
  %549 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3
  %550 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 5
  %551 = tail call ptr %548(ptr noundef nonnull %549, ptr noundef nonnull %550, i64 noundef 480) #6
  br label %552

552:                                              ; preds = %524, %546, %519
  %553 = load i32, ptr %521, align 8, !tbaa !131
  %554 = icmp eq i32 %553, 0
  %555 = select i1 %554, i64 0, i64 15
  %556 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %557 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %558 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %559 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %560 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 17
  %561 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 6
  %562 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 6
  br label %563

563:                                              ; preds = %552, %623
  %564 = phi i64 [ %555, %552 ], [ %625, %623 ]
  %565 = load ptr, ptr %556, align 16, !tbaa !34
  %566 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %564
  %567 = load i16, ptr %566, align 2, !tbaa !39
  %568 = zext i16 %567 to i64
  %569 = getelementptr inbounds i8, ptr %565, i64 %568
  %570 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %564
  %571 = load i32, ptr %570, align 4, !tbaa !69
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds [40 x i8], ptr %12, i64 0, i64 %572
  %574 = load i8, ptr %573, align 1, !tbaa !38
  %575 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 %564
  %576 = load i32, ptr %575, align 4, !tbaa !69
  %577 = and i32 %576, 6
  %578 = icmp eq i32 %577, 2
  br i1 %578, label %579, label %585

579:                                              ; preds = %563
  %580 = getelementptr inbounds i8, ptr %569, i64 -29
  %581 = load i8, ptr %580, align 1, !tbaa !38
  %582 = zext i8 %581 to i32
  %583 = mul nuw i32 %582, 16843009
  %584 = getelementptr inbounds i8, ptr %569, i64 -28
  store i32 %583, ptr %584, align 4, !tbaa !38
  br label %585

585:                                              ; preds = %579, %563
  %586 = load i32, ptr %557, align 4, !tbaa !41
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %619, label %588

588:                                              ; preds = %585
  %589 = load ptr, ptr %558, align 8, !tbaa !102
  %590 = getelementptr inbounds %struct.x264_frame, ptr %589, i64 0, i32 24
  %591 = load i32, ptr %590, align 8, !tbaa !69
  %592 = load i32, ptr %559, align 4, !tbaa !103
  %593 = shl i32 %591, %592
  %594 = load ptr, ptr %560, align 8, !tbaa !34
  %595 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %564
  %596 = load i8, ptr %595, align 1, !tbaa !38
  %597 = zext i8 %596 to i64
  %598 = shl nuw nsw i64 %597, 2
  %599 = getelementptr inbounds i8, ptr %594, i64 %598
  %600 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %564
  %601 = load i8, ptr %600, align 1, !tbaa !38
  %602 = zext i8 %601 to i32
  %603 = shl i32 %593, 2
  %604 = mul i32 %603, %602
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds i8, ptr %599, i64 %605
  switch i8 %574, label %615 [
    i8 0, label %607
    i8 1, label %612
  ]

607:                                              ; preds = %588
  %608 = load ptr, ptr %562, align 8, !tbaa !34
  %609 = sext i32 %593 to i64
  %610 = sub nsw i64 0, %609
  %611 = getelementptr inbounds i8, ptr %606, i64 %610
  tail call void %608(ptr noundef %569, i32 noundef 32, ptr noundef %611, i32 noundef %593, i32 noundef 4) #6
  br label %623

612:                                              ; preds = %588
  %613 = load ptr, ptr %561, align 8, !tbaa !34
  %614 = getelementptr inbounds i8, ptr %606, i64 -1
  tail call void %613(ptr noundef %569, i32 noundef 32, ptr noundef nonnull %614, i32 noundef %593, i32 noundef 4) #6
  br label %623

615:                                              ; preds = %588
  %616 = sext i8 %574 to i64
  %617 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 67, i64 %616
  %618 = load ptr, ptr %617, align 8, !tbaa !34
  tail call void %618(ptr noundef %569) #6
  br label %623

619:                                              ; preds = %585
  %620 = sext i8 %574 to i64
  %621 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 67, i64 %620
  %622 = load ptr, ptr %621, align 8, !tbaa !34
  tail call void %622(ptr noundef %569) #6
  br label %623

623:                                              ; preds = %615, %612, %607, %619
  %624 = trunc i64 %564 to i32
  tail call void @x264_mb_encode_i4x4(ptr noundef %0, i32 noundef %624, i32 noundef %8)
  %625 = add nuw nsw i64 %564, 1
  %626 = icmp eq i64 %625, 16
  br i1 %626, label %982, label %563, !llvm.loop !137

627:                                              ; preds = %58
  %628 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 62
  %629 = load i32, ptr %628, align 4, !tbaa !112
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %631, label %632

631:                                              ; preds = %627
  tail call void @x264_mb_mc(ptr noundef %0) #6
  br label %632

632:                                              ; preds = %631, %627
  %633 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %634 = load i32, ptr %633, align 4, !tbaa !41
  %635 = icmp eq i32 %634, 0
  %636 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  %637 = load i32, ptr %636, align 4, !tbaa !120
  %638 = icmp eq i32 %637, 0
  br i1 %635, label %710, label %639

639:                                              ; preds = %632
  %640 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %641 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  br i1 %638, label %644, label %642

642:                                              ; preds = %639
  %643 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 2
  br label %646

644:                                              ; preds = %639
  %645 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 3
  br label %683

646:                                              ; preds = %642, %646
  %647 = phi i64 [ 0, %642 ], [ %681, %646 ]
  %648 = shl i64 %647, 3
  %649 = and i64 %648, 8
  %650 = shl nuw nsw i64 %647, 2
  %651 = trunc i64 %650 to i32
  %652 = and i32 %651, 8
  %653 = load ptr, ptr %643, align 8, !tbaa !77
  %654 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2, i64 %647
  %655 = load ptr, ptr %640, align 16, !tbaa !34
  %656 = getelementptr inbounds i8, ptr %655, i64 %649
  %657 = shl nuw nsw i32 %652, 4
  %658 = zext nneg i32 %657 to i64
  %659 = getelementptr inbounds i8, ptr %656, i64 %658
  %660 = load ptr, ptr %641, align 16, !tbaa !34
  %661 = getelementptr inbounds i8, ptr %660, i64 %649
  %662 = shl nuw nsw i32 %652, 5
  %663 = zext nneg i32 %662 to i64
  %664 = getelementptr inbounds i8, ptr %661, i64 %663
  %665 = tail call i32 %653(ptr noundef nonnull %654, ptr noundef %659, ptr noundef %664) #6
  %666 = trunc i32 %665 to i16
  %667 = mul i16 %666, 257
  %668 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %650
  %669 = load i32, ptr %668, align 16, !tbaa !69
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %670
  store i16 %667, ptr %671, align 1, !tbaa !38
  %672 = or disjoint i64 %650, 2
  %673 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %672
  %674 = load i32, ptr %673, align 8, !tbaa !69
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %675
  store i16 %667, ptr %676, align 1, !tbaa !38
  %677 = trunc i64 %647 to i32
  %678 = shl i32 %665, %677
  %679 = load i32, ptr %11, align 8, !tbaa !70
  %680 = or i32 %679, %678
  store i32 %680, ptr %11, align 8, !tbaa !70
  %681 = add nuw nsw i64 %647, 1
  %682 = icmp eq i64 %681, 4
  br i1 %682, label %982, label %646, !llvm.loop !138

683:                                              ; preds = %644, %683
  %684 = phi i64 [ 0, %644 ], [ %708, %683 ]
  %685 = load ptr, ptr %645, align 8, !tbaa !68
  %686 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %684
  %687 = load ptr, ptr %640, align 16, !tbaa !34
  %688 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %684
  %689 = load i8, ptr %688, align 1, !tbaa !38
  %690 = zext i8 %689 to i64
  %691 = getelementptr inbounds i8, ptr %687, i64 %690
  %692 = load ptr, ptr %641, align 16, !tbaa !34
  %693 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %684
  %694 = load i16, ptr %693, align 2, !tbaa !39
  %695 = zext i16 %694 to i64
  %696 = getelementptr inbounds i8, ptr %692, i64 %695
  %697 = tail call i32 %685(ptr noundef nonnull %686, ptr noundef %691, ptr noundef %696) #6
  %698 = trunc i32 %697 to i8
  %699 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %684
  %700 = load i32, ptr %699, align 4, !tbaa !69
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %701
  store i8 %698, ptr %702, align 1, !tbaa !38
  %703 = trunc i64 %684 to i32
  %704 = lshr i32 %703, 2
  %705 = shl i32 %697, %704
  %706 = load i32, ptr %11, align 8, !tbaa !70
  %707 = or i32 %706, %705
  store i32 %707, ptr %11, align 8, !tbaa !70
  %708 = add nuw nsw i64 %684, 1
  %709 = icmp eq i64 %708, 16
  br i1 %709, label %982, label %683, !llvm.loop !139

710:                                              ; preds = %632
  br i1 %638, label %829, label %711

711:                                              ; preds = %710
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #6
  %712 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %713 = load i32, ptr %712, align 16, !tbaa !72
  %714 = icmp eq i32 %713, 0
  %715 = and i32 %10, 1
  %716 = select i1 %714, i32 %715, i32 0
  %717 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 11
  %718 = load ptr, ptr %717, align 8, !tbaa !140
  %719 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %720 = load ptr, ptr %719, align 16, !tbaa !34
  %721 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %722 = load ptr, ptr %721, align 16, !tbaa !34
  call void %718(ptr noundef nonnull %5, ptr noundef %720, ptr noundef %722) #6
  %723 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 13
  %724 = load i32, ptr %723, align 4, !tbaa !141
  %725 = shl nsw i32 %724, 2
  %726 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 60, i64 1
  %727 = load i32, ptr %726, align 4, !tbaa !69
  %728 = add i32 %727, %725
  store i32 %728, ptr %726, align 4, !tbaa !69
  %729 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 7
  %730 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 58, i64 1
  %731 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 59, i64 1
  %732 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73
  %733 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 34, i64 1
  %734 = sext i32 %8 to i64
  %735 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 36, i64 1
  %736 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72
  %737 = icmp eq i32 %716, 0
  %738 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 10
  br label %747

739:                                              ; preds = %786
  %740 = icmp slt i32 %787, 6
  %741 = icmp ne i32 %716, 0
  %742 = select i1 %740, i1 %741, i1 false
  br i1 %742, label %790, label %743

743:                                              ; preds = %739
  %744 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 4
  %745 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 1
  %746 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 10
  br label %795

747:                                              ; preds = %711, %786
  %748 = phi i64 [ 0, %711 ], [ %788, %786 ]
  %749 = phi i32 [ 0, %711 ], [ %787, %786 ]
  %750 = load i32, ptr %723, align 4, !tbaa !141
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %755, label %752

752:                                              ; preds = %747
  %753 = load ptr, ptr %729, align 8, !tbaa !142
  %754 = getelementptr inbounds [4 x [64 x i16]], ptr %5, i64 0, i64 %748
  call void %753(ptr noundef nonnull %754, ptr noundef nonnull %730, ptr noundef nonnull %731, i32 noundef 64) #6
  br label %755

755:                                              ; preds = %752, %747
  %756 = getelementptr inbounds [4 x [64 x i16]], ptr %5, i64 0, i64 %748
  %757 = load i32, ptr %712, align 16, !tbaa !72
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %762, label %759

759:                                              ; preds = %755
  %760 = trunc i64 %748 to i32
  %761 = call i32 @x264_quant_8x8_trellis(ptr noundef %0, ptr noundef nonnull %756, i32 noundef 1, i32 noundef %8, i32 noundef 0, i32 noundef %760) #6
  br label %769

762:                                              ; preds = %755
  %763 = load ptr, ptr %732, align 8, !tbaa !79
  %764 = load ptr, ptr %733, align 8, !tbaa !34
  %765 = getelementptr inbounds [64 x i16], ptr %764, i64 %734
  %766 = load ptr, ptr %735, align 8, !tbaa !34
  %767 = getelementptr inbounds [64 x i16], ptr %766, i64 %734
  %768 = call i32 %763(ptr noundef nonnull %756, ptr noundef %765, ptr noundef %767) #6
  br label %769

769:                                              ; preds = %759, %762
  %770 = phi i32 [ %761, %759 ], [ %768, %762 ]
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %786, label %772

772:                                              ; preds = %769
  %773 = load ptr, ptr %736, align 8, !tbaa !80
  %774 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2, i64 %748
  call void %773(ptr noundef nonnull %774, ptr noundef nonnull %756) #6
  br i1 %737, label %780, label %775

775:                                              ; preds = %772
  %776 = load ptr, ptr %738, align 8, !tbaa !143
  %777 = call i32 %776(ptr noundef nonnull %774) #6
  %778 = add nsw i32 %777, %749
  %779 = icmp sgt i32 %777, 3
  br i1 %779, label %780, label %786

780:                                              ; preds = %772, %775
  %781 = phi i32 [ %778, %775 ], [ %749, %772 ]
  %782 = trunc i64 %748 to i32
  %783 = shl nuw nsw i32 1, %782
  %784 = load i32, ptr %11, align 8, !tbaa !70
  %785 = or i32 %784, %783
  store i32 %785, ptr %11, align 8, !tbaa !70
  br label %786

786:                                              ; preds = %780, %775, %769
  %787 = phi i32 [ %749, %769 ], [ %778, %775 ], [ %781, %780 ]
  %788 = add nuw nsw i64 %748, 1
  %789 = icmp eq i64 %788, 4
  br i1 %789, label %739, label %747, !llvm.loop !144

790:                                              ; preds = %739
  store i32 0, ptr %11, align 8, !tbaa !70
  %791 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 12
  store i32 0, ptr %791, align 1, !tbaa !38
  %792 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 20
  store i32 0, ptr %792, align 1, !tbaa !38
  %793 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 28
  store i32 0, ptr %793, align 1, !tbaa !38
  %794 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 36
  store i32 0, ptr %794, align 1, !tbaa !38
  br label %828

795:                                              ; preds = %743, %814
  %796 = phi i64 [ 0, %743 ], [ %826, %814 ]
  %797 = load i32, ptr %11, align 8, !tbaa !70
  %798 = trunc i64 %796 to i32
  %799 = shl nuw nsw i32 1, %798
  %800 = and i32 %797, %799
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %814, label %802

802:                                              ; preds = %795
  %803 = load ptr, ptr %744, align 8, !tbaa !81
  %804 = getelementptr inbounds [4 x [64 x i16]], ptr %5, i64 0, i64 %796
  %805 = load ptr, ptr %745, align 8, !tbaa !34
  call void %803(ptr noundef nonnull %804, ptr noundef %805, i32 noundef %8) #6
  %806 = load ptr, ptr %746, align 16, !tbaa !82
  %807 = load ptr, ptr %721, align 16, !tbaa !34
  %808 = shl i64 %796, 3
  %809 = and i64 %808, 8
  %810 = shl i64 %796, 7
  %811 = and i64 %810, 256
  %812 = or disjoint i64 %809, %811
  %813 = getelementptr inbounds i8, ptr %807, i64 %812
  call void %806(ptr noundef %813, ptr noundef nonnull %804) #6
  br label %814

814:                                              ; preds = %795, %802
  %815 = phi i16 [ 257, %802 ], [ 0, %795 ]
  %816 = shl nuw nsw i64 %796, 2
  %817 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %816
  %818 = load i32, ptr %817, align 16, !tbaa !69
  %819 = sext i32 %818 to i64
  %820 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %819
  store i16 %815, ptr %820, align 1, !tbaa !38
  %821 = or disjoint i64 %816, 2
  %822 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %821
  %823 = load i32, ptr %822, align 8, !tbaa !69
  %824 = sext i32 %823 to i64
  %825 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %824
  store i16 %815, ptr %825, align 1, !tbaa !38
  %826 = add nuw nsw i64 %796, 1
  %827 = icmp eq i64 %826, 4
  br i1 %827, label %828, label %795, !llvm.loop !145

828:                                              ; preds = %814, %790
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #6
  br label %982

829:                                              ; preds = %710
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %6) #6
  %830 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 6
  %831 = load ptr, ptr %830, align 16, !tbaa !122
  %832 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %833 = load ptr, ptr %832, align 16, !tbaa !34
  %834 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %835 = load ptr, ptr %834, align 16, !tbaa !34
  call void %831(ptr noundef nonnull %6, ptr noundef %833, ptr noundef %835) #6
  %836 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 13
  %837 = load i32, ptr %836, align 4, !tbaa !141
  %838 = shl nsw i32 %837, 4
  %839 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 60
  %840 = load i32, ptr %839, align 16, !tbaa !69
  %841 = add i32 %840, %838
  store i32 %841, ptr %839, align 16, !tbaa !69
  %842 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 7
  %843 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 58
  %844 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 59
  %845 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %846 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 1
  %847 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 1
  %848 = sext i32 %8 to i64
  %849 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 1
  %850 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 1
  %851 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 5
  %852 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 1
  %853 = icmp ne i32 %10, 0
  %854 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 9
  %855 = icmp eq i32 %10, 0
  %856 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 4
  br label %857

857:                                              ; preds = %829, %948
  %858 = phi i64 [ 0, %829 ], [ %949, %948 ]
  %859 = phi i32 [ 0, %829 ], [ %864, %948 ]
  %860 = shl nuw nsw i64 %858, 2
  br label %865

861:                                              ; preds = %948
  %862 = icmp eq i32 %10, 0
  br i1 %862, label %981, label %951

863:                                              ; preds = %908
  %864 = add nsw i32 %909, %859
  br i1 %855, label %931, label %913

865:                                              ; preds = %857, %908
  %866 = phi i64 [ 0, %857 ], [ %911, %908 ]
  %867 = phi i32 [ 0, %857 ], [ %910, %908 ]
  %868 = phi i32 [ 0, %857 ], [ %909, %908 ]
  %869 = add nuw nsw i64 %866, %860
  %870 = load i32, ptr %836, align 4, !tbaa !141
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %875, label %872

872:                                              ; preds = %865
  %873 = load ptr, ptr %842, align 8, !tbaa !142
  %874 = getelementptr inbounds [16 x [16 x i16]], ptr %6, i64 0, i64 %869
  call void %873(ptr noundef nonnull %874, ptr noundef nonnull %843, ptr noundef nonnull %844, i32 noundef 16) #6
  br label %875

875:                                              ; preds = %872, %865
  %876 = getelementptr inbounds [16 x [16 x i16]], ptr %6, i64 0, i64 %869
  %877 = load i32, ptr %845, align 16, !tbaa !72
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %882, label %879

879:                                              ; preds = %875
  %880 = trunc i64 %869 to i32
  %881 = call i32 @x264_quant_4x4_trellis(ptr noundef %0, ptr noundef nonnull %876, i32 noundef 1, i32 noundef %8, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %880) #6
  br label %889

882:                                              ; preds = %875
  %883 = load ptr, ptr %846, align 8, !tbaa !73
  %884 = load ptr, ptr %847, align 8, !tbaa !34
  %885 = getelementptr inbounds [16 x i16], ptr %884, i64 %848
  %886 = load ptr, ptr %849, align 8, !tbaa !34
  %887 = getelementptr inbounds [16 x i16], ptr %886, i64 %848
  %888 = call i32 %883(ptr noundef nonnull %876, ptr noundef %885, ptr noundef %887) #6
  br label %889

889:                                              ; preds = %879, %882
  %890 = phi i32 [ %881, %879 ], [ %888, %882 ]
  %891 = trunc i32 %890 to i8
  %892 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %869
  %893 = load i32, ptr %892, align 4, !tbaa !69
  %894 = sext i32 %893 to i64
  %895 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %894
  store i8 %891, ptr %895, align 1, !tbaa !38
  %896 = icmp eq i32 %890, 0
  br i1 %896, label %908, label %897

897:                                              ; preds = %889
  %898 = load ptr, ptr %850, align 8, !tbaa !74
  %899 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %869
  call void %898(ptr noundef nonnull %899, ptr noundef nonnull %876) #6
  %900 = load ptr, ptr %851, align 8, !tbaa !75
  %901 = load ptr, ptr %852, align 8, !tbaa !34
  call void %900(ptr noundef nonnull %876, ptr noundef %901, i32 noundef %8) #6
  %902 = icmp slt i32 %868, 6
  %903 = select i1 %853, i1 %902, i1 false
  br i1 %903, label %904, label %908

904:                                              ; preds = %897
  %905 = load ptr, ptr %854, align 8, !tbaa !146
  %906 = call i32 %905(ptr noundef nonnull %899) #6
  %907 = add nsw i32 %906, %868
  br label %908

908:                                              ; preds = %897, %904, %889
  %909 = phi i32 [ %868, %889 ], [ %907, %904 ], [ %868, %897 ]
  %910 = phi i32 [ %867, %889 ], [ 1, %904 ], [ 1, %897 ]
  %911 = add nuw nsw i64 %866, 1
  %912 = icmp eq i64 %911, 4
  br i1 %912, label %863, label %865, !llvm.loop !147

913:                                              ; preds = %863
  %914 = icmp slt i32 %909, 4
  br i1 %914, label %915, label %926

915:                                              ; preds = %913
  %916 = shl nuw nsw i64 %858, 2
  %917 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %916
  %918 = load i32, ptr %917, align 16, !tbaa !69
  %919 = sext i32 %918 to i64
  %920 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %919
  store i16 0, ptr %920, align 1, !tbaa !38
  %921 = or disjoint i64 %916, 2
  %922 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %921
  %923 = load i32, ptr %922, align 8, !tbaa !69
  %924 = sext i32 %923 to i64
  %925 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %924
  store i16 0, ptr %925, align 1, !tbaa !38
  br label %948

926:                                              ; preds = %913
  %927 = trunc i64 %858 to i32
  %928 = shl nuw nsw i32 1, %927
  %929 = load i32, ptr %11, align 8, !tbaa !70
  %930 = or i32 %929, %928
  store i32 %930, ptr %11, align 8, !tbaa !70
  br label %948

931:                                              ; preds = %863
  %932 = icmp eq i32 %910, 0
  br i1 %932, label %948, label %933

933:                                              ; preds = %931
  %934 = load ptr, ptr %856, align 16, !tbaa !98
  %935 = load ptr, ptr %834, align 16, !tbaa !34
  %936 = shl i64 %858, 3
  %937 = and i64 %936, 8
  %938 = shl i64 %858, 7
  %939 = and i64 %938, 256
  %940 = or disjoint i64 %937, %939
  %941 = getelementptr inbounds i8, ptr %935, i64 %940
  %942 = shl nuw nsw i64 %858, 2
  %943 = getelementptr inbounds [16 x [16 x i16]], ptr %6, i64 0, i64 %942
  call void %934(ptr noundef %941, ptr noundef nonnull %943) #6
  %944 = trunc i64 %858 to i32
  %945 = shl nuw nsw i32 1, %944
  %946 = load i32, ptr %11, align 8, !tbaa !70
  %947 = or i32 %946, %945
  store i32 %947, ptr %11, align 8, !tbaa !70
  br label %948

948:                                              ; preds = %931, %933, %915, %926
  %949 = add nuw nsw i64 %858, 1
  %950 = icmp eq i64 %949, 4
  br i1 %950, label %861, label %857, !llvm.loop !148

951:                                              ; preds = %861
  %952 = icmp slt i32 %864, 6
  br i1 %952, label %955, label %953

953:                                              ; preds = %951
  %954 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 4
  br label %960

955:                                              ; preds = %951
  store i32 0, ptr %11, align 8, !tbaa !70
  %956 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 12
  store i32 0, ptr %956, align 1, !tbaa !38
  %957 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 20
  store i32 0, ptr %957, align 1, !tbaa !38
  %958 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 28
  store i32 0, ptr %958, align 1, !tbaa !38
  %959 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 36
  store i32 0, ptr %959, align 1, !tbaa !38
  br label %981

960:                                              ; preds = %953, %978
  %961 = phi i64 [ 0, %953 ], [ %979, %978 ]
  %962 = load i32, ptr %11, align 8, !tbaa !70
  %963 = trunc i64 %961 to i32
  %964 = shl nuw nsw i32 1, %963
  %965 = and i32 %962, %964
  %966 = icmp eq i32 %965, 0
  br i1 %966, label %978, label %967

967:                                              ; preds = %960
  %968 = load ptr, ptr %954, align 16, !tbaa !98
  %969 = load ptr, ptr %834, align 16, !tbaa !34
  %970 = shl i64 %961, 3
  %971 = and i64 %970, 8
  %972 = shl i64 %961, 7
  %973 = and i64 %972, 256
  %974 = or disjoint i64 %971, %973
  %975 = getelementptr inbounds i8, ptr %969, i64 %974
  %976 = shl nuw nsw i64 %961, 2
  %977 = getelementptr inbounds [16 x [16 x i16]], ptr %6, i64 0, i64 %976
  call void %968(ptr noundef %975, ptr noundef nonnull %977) #6
  br label %978

978:                                              ; preds = %960, %967
  %979 = add nuw nsw i64 %961, 1
  %980 = icmp eq i64 %979, 4
  br i1 %980, label %981, label %960, !llvm.loop !149

981:                                              ; preds = %978, %955, %861
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #6
  br label %982

982:                                              ; preds = %623, %646, %683, %981, %828, %458, %412
  %983 = load i32, ptr %14, align 8, !tbaa !106
  %984 = icmp ult i32 %983, 4
  br i1 %984, label %985, label %1001

985:                                              ; preds = %982
  %986 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 60
  %987 = load i32, ptr %986, align 4, !tbaa !150
  %988 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %989 = load i32, ptr %988, align 4, !tbaa !41
  %990 = icmp eq i32 %989, 0
  br i1 %990, label %992, label %991

991:                                              ; preds = %985
  call void @x264_predict_lossless_8x8_chroma(ptr noundef %0, i32 noundef %987)
  br label %1001

992:                                              ; preds = %985
  %993 = sext i32 %987 to i64
  %994 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 65, i64 %993
  %995 = load ptr, ptr %994, align 8, !tbaa !34
  %996 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %997 = load ptr, ptr %996, align 8, !tbaa !34
  call void %995(ptr noundef %997) #6
  %998 = load ptr, ptr %994, align 8, !tbaa !34
  %999 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %1000 = load ptr, ptr %999, align 16, !tbaa !34
  call void %998(ptr noundef %1000) #6
  br label %1001

1001:                                             ; preds = %982, %991, %992
  %1002 = load i32, ptr %14, align 8, !tbaa !106
  %1003 = icmp ugt i32 %1002, 3
  %1004 = zext i1 %1003 to i32
  %1005 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 69
  %1006 = load i32, ptr %1005, align 4, !tbaa !151
  call void @x264_mb_encode_8x8_chroma(ptr noundef %0, i32 noundef %1004, i32 noundef %1006)
  %1007 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  %1008 = load i32, ptr %1007, align 4, !tbaa !84
  %1009 = shl i32 %1008, 4
  %1010 = load i32, ptr %11, align 8, !tbaa !70
  %1011 = or i32 %1009, %1010
  %1012 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  %1013 = load i32, ptr %1012, align 16, !tbaa !152
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1030, label %1015

1015:                                             ; preds = %1001
  %1016 = load i8, ptr %13, align 1, !tbaa !38
  %1017 = zext i8 %1016 to i32
  %1018 = shl nuw nsw i32 %1017, 8
  %1019 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 46
  %1020 = load i8, ptr %1019, align 1, !tbaa !38
  %1021 = zext i8 %1020 to i32
  %1022 = shl nuw nsw i32 %1021, 9
  %1023 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 47
  %1024 = load i8, ptr %1023, align 1, !tbaa !38
  %1025 = zext i8 %1024 to i32
  %1026 = shl nuw nsw i32 %1025, 10
  %1027 = or i32 %1018, %1022
  %1028 = or i32 %1027, %1026
  %1029 = or i32 %1028, %1011
  br label %1030

1030:                                             ; preds = %1015, %1001
  %1031 = phi i32 [ %1029, %1015 ], [ %1011, %1001 ]
  %1032 = trunc i32 %1031 to i16
  %1033 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 41
  %1034 = load ptr, ptr %1033, align 16, !tbaa !118
  %1035 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %1036 = load i32, ptr %1035, align 8, !tbaa !108
  %1037 = sext i32 %1036 to i64
  %1038 = getelementptr inbounds i16, ptr %1034, i64 %1037
  store i16 %1032, ptr %1038, align 2, !tbaa !39
  br i1 %59, label %1039, label %1067

1039:                                             ; preds = %1030
  %1040 = load i32, ptr %14, align 8, !tbaa !106
  %1041 = icmp eq i32 %1040, 4
  br i1 %1041, label %1042, label %1060

1042:                                             ; preds = %1039
  %1043 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %1044 = load i32, ptr %1043, align 4, !tbaa !153
  %1045 = icmp eq i32 %1044, 16
  %1046 = or i32 %1010, %1008
  %1047 = icmp eq i32 %1046, 0
  %1048 = select i1 %1045, i1 %1047, i1 false
  br i1 %1048, label %1049, label %1060

1049:                                             ; preds = %1042
  %1050 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 12
  %1051 = load i32, ptr %1050, align 4, !tbaa !38
  %1052 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 10
  %1053 = load i32, ptr %1052, align 4, !tbaa !38
  %1054 = icmp eq i32 %1051, %1053
  br i1 %1054, label %1055, label %1060

1055:                                             ; preds = %1049
  %1056 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %1057 = load i8, ptr %1056, align 1, !tbaa !38
  %1058 = icmp eq i8 %1057, 0
  br i1 %1058, label %1059, label %1060

1059:                                             ; preds = %1055
  store i32 6, ptr %14, align 8, !tbaa !106
  br label %1060

1060:                                             ; preds = %1059, %1055, %1049, %1042, %1039
  %1061 = load i32, ptr %14, align 8, !tbaa !106
  %1062 = icmp eq i32 %1061, 7
  %1063 = or i32 %1010, %1008
  %1064 = icmp eq i32 %1063, 0
  %1065 = select i1 %1062, i1 %1064, i1 false
  br i1 %1065, label %1066, label %1067

1066:                                             ; preds = %1060
  store i32 18, ptr %14, align 8, !tbaa !106
  br label %1067

1067:                                             ; preds = %1030, %1066, %1060, %178, %152, %17
  ret void
}

declare void @x264_mb_mc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @x264_macroblock_probe_skip(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x [16 x i16]], align 16
  %4 = alloca [4 x i16], align 16
  %5 = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #6
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 68
  %7 = load i32, ptr %6, align 16, !tbaa !105
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 10
  %11 = load i16, ptr %10, align 4, !tbaa !39
  %12 = sext i16 %11 to i32
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 18
  %14 = load i32, ptr %13, align 8, !tbaa !69
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 19
  %16 = load i32, ptr %15, align 16, !tbaa !69
  %17 = icmp sgt i32 %14, %12
  %18 = tail call i32 @llvm.smin.i32(i32 %12, i32 %16)
  %19 = select i1 %17, i32 %14, i32 %18
  %20 = trunc i32 %19 to i16
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 10, i64 1
  %22 = load i16, ptr %21, align 2, !tbaa !39
  %23 = sext i16 %22 to i32
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 18, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !69
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 19, i64 1
  %27 = load i32, ptr %26, align 4, !tbaa !69
  %28 = icmp sgt i32 %25, %23
  %29 = tail call i32 @llvm.smin.i32(i32 %23, i32 %27)
  %30 = select i1 %28, i32 %25, i32 %29
  %31 = trunc i32 %30 to i16
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70
  %33 = load ptr, ptr %32, align 8, !tbaa !113
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %35 = load ptr, ptr %34, align 16, !tbaa !34
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23
  %38 = load i32, ptr %37, align 16, !tbaa !69
  %39 = shl i32 %19, 16
  %40 = ashr exact i32 %39, 16
  %41 = shl i32 %30, 16
  %42 = ashr exact i32 %41, 16
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22
  tail call void %33(ptr noundef %35, i32 noundef 32, ptr noundef nonnull %36, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef 16, i32 noundef 16, ptr noundef nonnull %43) #6
  br label %44

44:                                               ; preds = %9, %2
  %45 = phi i16 [ undef, %2 ], [ %20, %9 ]
  %46 = phi i16 [ undef, %2 ], [ %31, %9 ]
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 2
  %48 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %49 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %50 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 1
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 1
  %52 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 1
  %53 = sext i32 %7 to i64
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 1
  %55 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 9
  br label %59

56:                                               ; preds = %99
  %57 = add nuw nsw i32 %61, 1
  %58 = icmp eq i32 %57, 4
  br i1 %58, label %102, label %59, !llvm.loop !154

59:                                               ; preds = %44, %56
  %60 = phi i32 [ 0, %44 ], [ %101, %56 ]
  %61 = phi i32 [ 0, %44 ], [ %57, %56 ]
  %62 = shl nuw nsw i32 %61, 3
  %63 = and i32 %62, 8
  %64 = lshr i32 %61, 1
  %65 = shl nuw nsw i32 %64, 7
  %66 = or disjoint i32 %63, %65
  %67 = shl nuw nsw i32 %64, 8
  %68 = or disjoint i32 %63, %67
  %69 = load ptr, ptr %47, align 16, !tbaa !95
  %70 = load ptr, ptr %48, align 16, !tbaa !34
  %71 = zext nneg i32 %66 to i64
  %72 = getelementptr inbounds i8, ptr %70, i64 %71
  %73 = load ptr, ptr %49, align 16, !tbaa !34
  %74 = zext nneg i32 %68 to i64
  %75 = getelementptr inbounds i8, ptr %73, i64 %74
  call void %69(ptr noundef nonnull %3, ptr noundef %72, ptr noundef %75) #6
  br label %76

76:                                               ; preds = %59, %94
  %77 = phi i64 [ 0, %59 ], [ %96, %94 ]
  %78 = phi i1 [ false, %59 ], [ %97, %94 ]
  %79 = phi i32 [ %60, %59 ], [ %95, %94 ]
  %80 = load ptr, ptr %51, align 8, !tbaa !73
  %81 = getelementptr inbounds [4 x [16 x i16]], ptr %3, i64 0, i64 %77
  %82 = load ptr, ptr %52, align 8, !tbaa !34
  %83 = getelementptr inbounds [16 x i16], ptr %82, i64 %53
  %84 = load ptr, ptr %54, align 8, !tbaa !34
  %85 = getelementptr inbounds [16 x i16], ptr %84, i64 %53
  %86 = call i32 %80(ptr noundef nonnull %81, ptr noundef %83, ptr noundef %85) #6
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %76
  %89 = load ptr, ptr %50, align 8, !tbaa !74
  call void %89(ptr noundef nonnull %5, ptr noundef nonnull %81) #6
  %90 = load ptr, ptr %55, align 8, !tbaa !146
  %91 = call i32 %90(ptr noundef nonnull %5) #6
  %92 = add nsw i32 %91, %79
  %93 = icmp sgt i32 %92, 5
  br i1 %93, label %99, label %94

94:                                               ; preds = %88, %76
  %95 = phi i32 [ %92, %88 ], [ %79, %76 ]
  %96 = add nuw nsw i64 %77, 1
  %97 = icmp ugt i64 %77, 2
  %98 = icmp eq i64 %96, 4
  br i1 %98, label %99, label %76, !llvm.loop !155

99:                                               ; preds = %88, %94
  %100 = phi i1 [ %78, %88 ], [ %97, %94 ]
  %101 = phi i32 [ %92, %88 ], [ %95, %94 ]
  br i1 %100, label %56, label %210

102:                                              ; preds = %56
  %103 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 69
  %104 = load i32, ptr %103, align 4, !tbaa !151
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [52 x i32], ptr @x264_lambda2_tab, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !69
  %108 = add nsw i32 %107, 32
  %109 = ashr i32 %108, 6
  %110 = zext i16 %46 to i32
  %111 = shl nuw i32 %110, 16
  %112 = zext i16 %45 to i32
  %113 = or disjoint i32 %111, %112
  %114 = icmp eq i32 %113, 0
  %115 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %116 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20
  %117 = sext i16 %45 to i32
  %118 = sext i16 %46 to i32
  %119 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 3
  %120 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20
  %121 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22
  %122 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 1, i64 3
  %123 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 3
  %124 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 3
  %125 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 3
  %126 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 3
  %127 = shl nsw i32 %109, 2
  %128 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 2
  %129 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 1
  %130 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 1
  %131 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 8
  br label %132

132:                                              ; preds = %102, %206
  %133 = phi i64 [ 0, %102 ], [ %134, %206 ]
  %134 = add nuw nsw i64 %133, 1
  %135 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !34
  %137 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 %134
  %138 = load ptr, ptr %137, align 8, !tbaa !34
  br i1 %8, label %139, label %160

139:                                              ; preds = %132
  %140 = or disjoint i64 %133, 4
  %141 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23, i64 %134
  %142 = load i32, ptr %141, align 4, !tbaa !69
  br i1 %114, label %147, label %143

143:                                              ; preds = %139
  %144 = load ptr, ptr %115, align 8, !tbaa !114
  %145 = getelementptr inbounds [6 x ptr], ptr %116, i64 0, i64 %140
  %146 = load ptr, ptr %145, align 8, !tbaa !34
  call void %144(ptr noundef %138, i32 noundef 32, ptr noundef %146, i32 noundef %142, i32 noundef %117, i32 noundef %118, i32 noundef 8, i32 noundef 8) #6
  br label %151

147:                                              ; preds = %139
  %148 = load ptr, ptr %119, align 8, !tbaa !34
  %149 = getelementptr inbounds [6 x ptr], ptr %120, i64 0, i64 %140
  %150 = load ptr, ptr %149, align 8, !tbaa !34
  call void %148(ptr noundef %138, i32 noundef 32, ptr noundef %150, i32 noundef %142, i32 noundef 8) #6
  br label %151

151:                                              ; preds = %147, %143
  %152 = getelementptr inbounds [3 x %struct.x264_weight_t], ptr %121, i64 0, i64 %134, i32 5
  %153 = load ptr, ptr %152, align 16, !tbaa !115
  %154 = icmp eq ptr %153, null
  br i1 %154, label %160, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds [3 x %struct.x264_weight_t], ptr %121, i64 0, i64 %134
  %157 = getelementptr inbounds ptr, ptr %153, i64 2
  %158 = load ptr, ptr %157, align 8, !tbaa !34
  %159 = load ptr, ptr %137, align 8, !tbaa !34
  call void %158(ptr noundef %159, i32 noundef 32, ptr noundef %159, i32 noundef 32, ptr noundef nonnull %156, i32 noundef 8) #6
  br label %160

160:                                              ; preds = %151, %155, %132
  %161 = load ptr, ptr %122, align 8, !tbaa !34
  %162 = call i32 %161(ptr noundef %138, i32 noundef 32, ptr noundef %136, i32 noundef 16) #6
  %163 = icmp slt i32 %162, %109
  br i1 %163, label %204, label %164

164:                                              ; preds = %160
  %165 = load ptr, ptr %123, align 8, !tbaa !86
  call void %165(ptr noundef nonnull %4, ptr noundef %136, ptr noundef %138) #6
  %166 = load ptr, ptr %124, align 8, !tbaa !87
  %167 = load ptr, ptr %125, align 8, !tbaa !34
  %168 = getelementptr inbounds [16 x i16], ptr %167, i64 %105
  %169 = load i16, ptr %168, align 2, !tbaa !39
  %170 = lshr i16 %169, 1
  %171 = zext nneg i16 %170 to i32
  %172 = load ptr, ptr %126, align 8, !tbaa !34
  %173 = getelementptr inbounds [16 x i16], ptr %172, i64 %105
  %174 = load i16, ptr %173, align 2, !tbaa !39
  %175 = zext i16 %174 to i32
  %176 = shl nuw nsw i32 %175, 1
  %177 = call i32 %166(ptr noundef nonnull %4, i32 noundef %171, i32 noundef %176) #6
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %204

179:                                              ; preds = %164
  %180 = icmp slt i32 %162, %127
  br i1 %180, label %204, label %181

181:                                              ; preds = %179
  %182 = load ptr, ptr %128, align 16, !tbaa !95
  call void %182(ptr noundef nonnull %3, ptr noundef %136, ptr noundef %138) #6
  br label %183

183:                                              ; preds = %181, %200
  %184 = phi i64 [ 0, %181 ], [ %202, %200 ]
  %185 = phi i32 [ 0, %181 ], [ %201, %200 ]
  %186 = getelementptr inbounds [4 x [16 x i16]], ptr %3, i64 0, i64 %184
  store i16 0, ptr %186, align 16, !tbaa !39
  %187 = load ptr, ptr %130, align 8, !tbaa !73
  %188 = load ptr, ptr %125, align 8, !tbaa !34
  %189 = getelementptr inbounds [16 x i16], ptr %188, i64 %105
  %190 = load ptr, ptr %126, align 8, !tbaa !34
  %191 = getelementptr inbounds [16 x i16], ptr %190, i64 %105
  %192 = call i32 %187(ptr noundef nonnull %186, ptr noundef %189, ptr noundef %191) #6
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %200, label %194

194:                                              ; preds = %183
  %195 = load ptr, ptr %129, align 8, !tbaa !74
  call void %195(ptr noundef nonnull %5, ptr noundef nonnull %186) #6
  %196 = load ptr, ptr %131, align 8, !tbaa !96
  %197 = call i32 %196(ptr noundef nonnull %5) #6
  %198 = add nsw i32 %197, %185
  %199 = icmp sgt i32 %198, 6
  br i1 %199, label %204, label %200

200:                                              ; preds = %194, %183
  %201 = phi i32 [ %198, %194 ], [ %185, %183 ]
  %202 = add nuw nsw i64 %184, 1
  %203 = icmp eq i64 %202, 4
  br i1 %203, label %204, label %183, !llvm.loop !156

204:                                              ; preds = %200, %194, %179, %164, %160
  %205 = phi i32 [ 10, %160 ], [ 1, %164 ], [ 10, %179 ], [ 0, %200 ], [ 1, %194 ]
  switch i32 %205, label %210 [
    i32 0, label %206
    i32 10, label %206
  ]

206:                                              ; preds = %204, %204
  %207 = icmp eq i64 %133, 0
  br i1 %207, label %132, label %208, !llvm.loop !157

208:                                              ; preds = %206
  %209 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 62
  store i32 1, ptr %209, align 4, !tbaa !112
  br label %210

210:                                              ; preds = %99, %204, %208
  %211 = phi i32 [ 1, %208 ], [ 0, %204 ], [ 0, %99 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #6
  ret i32 %211
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @x264_noise_reduction_update(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 17
  %3 = load i32, ptr %2, align 4, !tbaa !158
  %4 = sext i32 %3 to i64
  br label %6

5:                                                ; preds = %32
  ret void

6:                                                ; preds = %1, %32
  %7 = phi i64 [ 0, %1 ], [ %33, %32 ]
  %8 = icmp eq i64 %7, 0
  %9 = select i1 %8, i32 16, i32 64
  %10 = select i1 %8, ptr @x264_dct4_weight2_tab, ptr @x264_dct8_weight2_tab
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 60, i64 %7
  %12 = load i32, ptr %11, align 4, !tbaa !69
  %13 = select i1 %8, i32 262144, i32 65536
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %6
  %16 = zext nneg i32 %9 to i64
  br label %20

17:                                               ; preds = %20
  %18 = load i32, ptr %11, align 4, !tbaa !69
  %19 = lshr i32 %18, 1
  store i32 %19, ptr %11, align 4, !tbaa !69
  br label %27

20:                                               ; preds = %15, %20
  %21 = phi i64 [ 0, %15 ], [ %25, %20 ]
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 58, i64 %7, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !69
  %24 = lshr i32 %23, 1
  store i32 %24, ptr %22, align 4, !tbaa !69
  %25 = add nuw nsw i64 %21, 1
  %26 = icmp eq i64 %25, %16
  br i1 %26, label %17, label %20, !llvm.loop !159

27:                                               ; preds = %17, %6
  %28 = load i32, ptr %11, align 4, !tbaa !69
  %29 = zext i32 %28 to i64
  %30 = mul nsw i64 %29, %4
  %31 = zext nneg i32 %9 to i64
  br label %35

32:                                               ; preds = %35
  %33 = add nuw nsw i64 %7, 1
  %34 = icmp eq i64 %7, 0
  br i1 %34, label %6, label %5, !llvm.loop !160

35:                                               ; preds = %27, %35
  %36 = phi i64 [ 0, %27 ], [ %52, %35 ]
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 58, i64 %7, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !69
  %39 = lshr i32 %38, 1
  %40 = zext nneg i32 %39 to i64
  %41 = add nsw i64 %30, %40
  %42 = zext i32 %38 to i64
  %43 = getelementptr inbounds i16, ptr %10, i64 %36
  %44 = load i16, ptr %43, align 2, !tbaa !39
  %45 = zext i16 %44 to i64
  %46 = mul nuw nsw i64 %45, %42
  %47 = lshr i64 %46, 8
  %48 = add nuw nsw i64 %47, 1
  %49 = udiv i64 %41, %48
  %50 = trunc i64 %49 to i16
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 59, i64 %7, i64 %36
  store i16 %50, ptr %51, align 2, !tbaa !39
  %52 = add nuw nsw i64 %36, 1
  %53 = icmp eq i64 %52, %31
  br i1 %53, label %32, label %35, !llvm.loop !161
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_encode_p8x8(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  %4 = alloca [64 x i16], align 16
  %5 = alloca [4 x [16 x i16]], align 16
  %6 = alloca [16 x i16], align 16
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 68
  %8 = load i32, ptr %7, align 16, !tbaa !105
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %10 = load ptr, ptr %9, align 16, !tbaa !34
  %11 = and i32 %1, 1
  %12 = shl nuw nsw i32 %11, 3
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %10, i64 %13
  %15 = ashr i32 %1, 1
  %16 = shl nsw i32 %15, 7
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %14, i64 %17
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %20 = load ptr, ptr %19, align 16, !tbaa !34
  %21 = getelementptr inbounds i8, ptr %20, i64 %13
  %22 = shl nsw i32 %15, 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %21, i64 %23
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 14
  %26 = load i32, ptr %25, align 8, !tbaa !83
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 62
  %28 = load i32, ptr %27, align 4, !tbaa !112
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  tail call void @x264_mb_mc_8x8(ptr noundef %0, i32 noundef %1) #6
  br label %31

31:                                               ; preds = %30, %2
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %33 = load i32, ptr %32, align 4, !tbaa !41
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  %36 = load i32, ptr %35, align 4, !tbaa !120
  %37 = icmp eq i32 %36, 0
  br i1 %34, label %120, label %38

38:                                               ; preds = %31
  br i1 %37, label %59, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !77
  %42 = sext i32 %1 to i64
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2, i64 %42
  %44 = tail call i32 %41(ptr noundef nonnull %43, ptr noundef %18, ptr noundef %24) #6
  %45 = trunc i32 %44 to i16
  %46 = mul i16 %45, 257
  %47 = shl nsw i32 %1, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %48
  %50 = load i32, ptr %49, align 16, !tbaa !69
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %51
  store i16 %46, ptr %52, align 1, !tbaa !38
  %53 = or disjoint i32 %47, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %54
  %56 = load i32, ptr %55, align 8, !tbaa !69
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %57
  store i16 %46, ptr %58, align 1, !tbaa !38
  br label %89

59:                                               ; preds = %38
  %60 = shl i32 %1, 2
  %61 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 3
  %62 = sext i32 %60 to i64
  %63 = add i32 %60, 4
  br label %64

64:                                               ; preds = %59, %64
  %65 = phi i64 [ %62, %59 ], [ %86, %64 ]
  %66 = phi i32 [ 0, %59 ], [ %85, %64 ]
  %67 = load ptr, ptr %61, align 8, !tbaa !68
  %68 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %65
  %69 = load ptr, ptr %9, align 16, !tbaa !34
  %70 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %65
  %71 = load i8, ptr %70, align 1, !tbaa !38
  %72 = zext i8 %71 to i64
  %73 = getelementptr inbounds i8, ptr %69, i64 %72
  %74 = load ptr, ptr %19, align 16, !tbaa !34
  %75 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %65
  %76 = load i16, ptr %75, align 2, !tbaa !39
  %77 = zext i16 %76 to i64
  %78 = getelementptr inbounds i8, ptr %74, i64 %77
  %79 = tail call i32 %67(ptr noundef nonnull %68, ptr noundef %73, ptr noundef %78) #6
  %80 = trunc i32 %79 to i8
  %81 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %65
  %82 = load i32, ptr %81, align 4, !tbaa !69
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %83
  store i8 %80, ptr %84, align 1, !tbaa !38
  %85 = or i32 %79, %66
  %86 = add nsw i64 %65, 1
  %87 = trunc i64 %86 to i32
  %88 = icmp eq i32 %63, %87
  br i1 %88, label %89, label %64, !llvm.loop !162

89:                                               ; preds = %64, %39
  %90 = phi i32 [ %44, %39 ], [ %85, %64 ]
  %91 = shl nuw nsw i32 %11, 2
  %92 = zext nneg i32 %91 to i64
  %93 = shl nsw i32 %15, 6
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 4
  %96 = add nsw i32 %1, 16
  %97 = sext i32 %96 to i64
  br label %98

98:                                               ; preds = %89, %98
  %99 = phi i64 [ 0, %89 ], [ %100, %98 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  %100 = add nuw nsw i64 %99, 1
  %101 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !34
  %103 = getelementptr inbounds i8, ptr %102, i64 %92
  %104 = getelementptr inbounds i8, ptr %103, i64 %94
  %105 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 %100
  %106 = load ptr, ptr %105, align 8, !tbaa !34
  %107 = getelementptr inbounds i8, ptr %106, i64 %92
  %108 = getelementptr inbounds i8, ptr %107, i64 %17
  %109 = load ptr, ptr %95, align 8, !tbaa !93
  %110 = shl nuw nsw i64 %99, 2
  %111 = add nsw i64 %110, %97
  %112 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %111
  %113 = call i32 %109(ptr noundef nonnull %112, ptr noundef %104, ptr noundef %108, ptr noundef nonnull %3) #6
  %114 = trunc i32 %113 to i8
  %115 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %111
  %116 = load i32, ptr %115, align 4, !tbaa !69
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %117
  store i8 %114, ptr %118, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  %119 = icmp eq i64 %99, 0
  br i1 %119, label %98, label %322, !llvm.loop !163

120:                                              ; preds = %31
  br i1 %37, label %183, label %121

121:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #6
  %122 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 9
  %123 = load ptr, ptr %122, align 8, !tbaa !78
  call void %123(ptr noundef nonnull %4, ptr noundef %18, ptr noundef %24) #6
  %124 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %125 = load i32, ptr %124, align 16, !tbaa !72
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %121
  %128 = call i32 @x264_quant_8x8_trellis(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 1, i32 noundef %8, i32 noundef 0, i32 noundef %1) #6
  br label %140

129:                                              ; preds = %121
  %130 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73
  %131 = load ptr, ptr %130, align 8, !tbaa !79
  %132 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 34, i64 1
  %133 = load ptr, ptr %132, align 8, !tbaa !34
  %134 = sext i32 %8 to i64
  %135 = getelementptr inbounds [64 x i16], ptr %133, i64 %134
  %136 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 36, i64 1
  %137 = load ptr, ptr %136, align 8, !tbaa !34
  %138 = getelementptr inbounds [64 x i16], ptr %137, i64 %134
  %139 = call i32 %131(ptr noundef nonnull %4, ptr noundef %135, ptr noundef %138) #6
  br label %140

140:                                              ; preds = %127, %129
  %141 = phi i32 [ %128, %127 ], [ %139, %129 ]
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %168, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72
  %145 = load ptr, ptr %144, align 8, !tbaa !80
  %146 = sext i32 %1 to i64
  %147 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2, i64 %146
  call void %145(ptr noundef nonnull %147, ptr noundef nonnull %4) #6
  %148 = icmp eq i32 %26, 0
  br i1 %148, label %158, label %149

149:                                              ; preds = %143
  %150 = load i32, ptr %124, align 16, !tbaa !72
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 10
  %154 = load ptr, ptr %153, align 8, !tbaa !143
  %155 = call i32 %154(ptr noundef nonnull %147) #6
  %156 = icmp sgt i32 %155, 3
  %157 = zext i1 %156 to i32
  br label %158

158:                                              ; preds = %152, %149, %143
  %159 = phi i32 [ %141, %149 ], [ %157, %152 ], [ %141, %143 ]
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 4
  %163 = load ptr, ptr %162, align 8, !tbaa !81
  %164 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 1
  %165 = load ptr, ptr %164, align 8, !tbaa !34
  call void %163(ptr noundef nonnull %4, ptr noundef %165, i32 noundef %8) #6
  %166 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 10
  %167 = load ptr, ptr %166, align 16, !tbaa !82
  call void %167(ptr noundef %24, ptr noundef nonnull %4) #6
  br label %168

168:                                              ; preds = %140, %158, %161
  %169 = phi i16 [ 257, %161 ], [ 0, %158 ], [ 0, %140 ]
  %170 = phi i32 [ %159, %161 ], [ 0, %158 ], [ 0, %140 ]
  %171 = shl nsw i32 %1, 2
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %172
  %174 = load i32, ptr %173, align 16, !tbaa !69
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %175
  store i16 %169, ptr %176, align 1, !tbaa !38
  %177 = or disjoint i32 %171, 2
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %178
  %180 = load i32, ptr %179, align 8, !tbaa !69
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %181
  store i16 %169, ptr %182, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #6
  br label %261

183:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #6
  %184 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 2
  %185 = load ptr, ptr %184, align 16, !tbaa !95
  call void %185(ptr noundef nonnull %5, ptr noundef %18, ptr noundef %24) #6
  %186 = shl nsw i32 %1, 2
  %187 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %188 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 1
  %189 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 1
  %190 = sext i32 %8 to i64
  %191 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 1
  %192 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 1
  %193 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 5
  %194 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 1
  %195 = icmp eq i32 %26, 0
  %196 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 9
  %197 = sext i32 %186 to i64
  br label %204

198:                                              ; preds = %239
  %199 = icmp ne i32 %26, 0
  %200 = icmp slt i32 %241, 4
  %201 = select i1 %199, i1 %200, i1 false
  %202 = select i1 %201, i32 0, i32 %240
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %247, label %244

204:                                              ; preds = %183, %239
  %205 = phi i64 [ 0, %183 ], [ %242, %239 ]
  %206 = phi i32 [ 0, %183 ], [ %241, %239 ]
  %207 = phi i32 [ 0, %183 ], [ %240, %239 ]
  %208 = getelementptr inbounds [4 x [16 x i16]], ptr %5, i64 0, i64 %205
  %209 = add nuw nsw i64 %205, %197
  %210 = load i32, ptr %187, align 16, !tbaa !72
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %204
  %213 = trunc i64 %209 to i32
  %214 = call i32 @x264_quant_4x4_trellis(ptr noundef %0, ptr noundef nonnull %208, i32 noundef 1, i32 noundef %8, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %213) #6
  br label %222

215:                                              ; preds = %204
  %216 = load ptr, ptr %188, align 8, !tbaa !73
  %217 = load ptr, ptr %189, align 8, !tbaa !34
  %218 = getelementptr inbounds [16 x i16], ptr %217, i64 %190
  %219 = load ptr, ptr %191, align 8, !tbaa !34
  %220 = getelementptr inbounds [16 x i16], ptr %219, i64 %190
  %221 = call i32 %216(ptr noundef nonnull %208, ptr noundef %218, ptr noundef %220) #6
  br label %222

222:                                              ; preds = %212, %215
  %223 = phi i32 [ %214, %212 ], [ %221, %215 ]
  %224 = trunc i32 %223 to i8
  %225 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %209
  %226 = load i32, ptr %225, align 4, !tbaa !69
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %227
  store i8 %224, ptr %228, align 1, !tbaa !38
  %229 = icmp eq i32 %223, 0
  br i1 %229, label %239, label %230

230:                                              ; preds = %222
  %231 = load ptr, ptr %192, align 8, !tbaa !74
  %232 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %209
  call void %231(ptr noundef nonnull %232, ptr noundef nonnull %208) #6
  %233 = load ptr, ptr %193, align 8, !tbaa !75
  %234 = load ptr, ptr %194, align 8, !tbaa !34
  call void %233(ptr noundef nonnull %208, ptr noundef %234, i32 noundef %8) #6
  br i1 %195, label %239, label %235

235:                                              ; preds = %230
  %236 = load ptr, ptr %196, align 8, !tbaa !146
  %237 = call i32 %236(ptr noundef nonnull %232) #6
  %238 = add nsw i32 %237, %206
  br label %239

239:                                              ; preds = %230, %235, %222
  %240 = phi i32 [ %207, %222 ], [ 1, %235 ], [ 1, %230 ]
  %241 = phi i32 [ %206, %222 ], [ %238, %235 ], [ %206, %230 ]
  %242 = add nuw nsw i64 %205, 1
  %243 = icmp eq i64 %242, 4
  br i1 %243, label %198, label %204, !llvm.loop !164

244:                                              ; preds = %198
  %245 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 4
  %246 = load ptr, ptr %245, align 16, !tbaa !98
  call void %246(ptr noundef %24, ptr noundef nonnull %5) #6
  br label %260

247:                                              ; preds = %198
  %248 = shl nsw i32 %1, 2
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %249
  %251 = load i32, ptr %250, align 16, !tbaa !69
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %252
  store i16 0, ptr %253, align 1, !tbaa !38
  %254 = or disjoint i32 %248, 2
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %255
  %257 = load i32, ptr %256, align 8, !tbaa !69
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %258
  store i16 0, ptr %259, align 1, !tbaa !38
  br label %260

260:                                              ; preds = %247, %244
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #6
  br label %261

261:                                              ; preds = %260, %168
  %262 = phi i32 [ %170, %168 ], [ %202, %260 ]
  %263 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 69
  %264 = load i32, ptr %263, align 4, !tbaa !151
  %265 = shl nuw nsw i32 %11, 2
  %266 = zext nneg i32 %265 to i64
  %267 = shl nsw i32 %15, 6
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71
  %270 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %271 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 1
  %272 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 3
  %273 = sext i32 %264 to i64
  %274 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 3
  %275 = add nsw i32 %1, 16
  %276 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 1
  %277 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 5
  %278 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 3
  %279 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 1
  %280 = sext i32 %275 to i64
  br label %281

281:                                              ; preds = %261, %320
  %282 = phi i64 [ 0, %261 ], [ %283, %320 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #6
  %283 = add nuw nsw i64 %282, 1
  %284 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 %283
  %285 = load ptr, ptr %284, align 8, !tbaa !34
  %286 = getelementptr inbounds i8, ptr %285, i64 %266
  %287 = getelementptr inbounds i8, ptr %286, i64 %268
  %288 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 %283
  %289 = load ptr, ptr %288, align 8, !tbaa !34
  %290 = getelementptr inbounds i8, ptr %289, i64 %266
  %291 = getelementptr inbounds i8, ptr %290, i64 %17
  %292 = load ptr, ptr %269, align 16, !tbaa !71
  call void %292(ptr noundef nonnull %6, ptr noundef %287, ptr noundef %291) #6
  store i16 0, ptr %6, align 16, !tbaa !39
  %293 = load i32, ptr %270, align 16, !tbaa !72
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %297, label %295

295:                                              ; preds = %281
  %296 = call i32 @x264_quant_4x4_trellis(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 3, i32 noundef %264, i32 noundef 4, i32 noundef 0, i32 noundef 1, i32 noundef 0) #6
  br label %304

297:                                              ; preds = %281
  %298 = load ptr, ptr %271, align 8, !tbaa !73
  %299 = load ptr, ptr %272, align 8, !tbaa !34
  %300 = getelementptr inbounds [16 x i16], ptr %299, i64 %273
  %301 = load ptr, ptr %274, align 8, !tbaa !34
  %302 = getelementptr inbounds [16 x i16], ptr %301, i64 %273
  %303 = call i32 %298(ptr noundef nonnull %6, ptr noundef %300, ptr noundef %302) #6
  br label %304

304:                                              ; preds = %297, %295
  %305 = phi i32 [ %296, %295 ], [ %303, %297 ]
  %306 = trunc i32 %305 to i8
  %307 = shl nuw nsw i64 %282, 2
  %308 = add nsw i64 %307, %280
  %309 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %308
  %310 = load i32, ptr %309, align 4, !tbaa !69
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %311
  store i8 %306, ptr %312, align 1, !tbaa !38
  %313 = icmp eq i32 %305, 0
  br i1 %313, label %320, label %314

314:                                              ; preds = %304
  %315 = load ptr, ptr %276, align 8, !tbaa !74
  %316 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %308
  call void %315(ptr noundef nonnull %316, ptr noundef nonnull %6) #6
  %317 = load ptr, ptr %277, align 8, !tbaa !75
  %318 = load ptr, ptr %278, align 8, !tbaa !34
  call void %317(ptr noundef nonnull %6, ptr noundef %318, i32 noundef %264) #6
  %319 = load ptr, ptr %279, align 8, !tbaa !76
  call void %319(ptr noundef %291, ptr noundef nonnull %6) #6
  br label %320

320:                                              ; preds = %314, %304
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #6
  %321 = icmp eq i64 %282, 0
  br i1 %321, label %281, label %322, !llvm.loop !165

322:                                              ; preds = %98, %320
  %323 = phi i32 [ %262, %320 ], [ %90, %98 ]
  %324 = shl nuw i32 1, %1
  %325 = xor i32 %324, -1
  %326 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %327 = load i32, ptr %326, align 8, !tbaa !70
  %328 = and i32 %327, %325
  %329 = shl i32 %323, %1
  %330 = or i32 %328, %329
  store i32 %330, ptr %326, align 8, !tbaa !70
  %331 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  store i32 2, ptr %331, align 4, !tbaa !84
  ret void
}

declare void @x264_mb_mc_8x8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_encode_p4x4(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [16 x i16], align 16
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 68
  %5 = load i32, ptr %4, align 16, !tbaa !105
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %7 = load ptr, ptr %6, align 16, !tbaa !34
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !38
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds i8, ptr %7, i64 %11
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %14 = load ptr, ptr %13, align 16, !tbaa !34
  %15 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %8
  %16 = load i16, ptr %15, align 2, !tbaa !39
  %17 = zext i16 %16 to i64
  %18 = getelementptr inbounds i8, ptr %14, i64 %17
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %20 = load i32, ptr %19, align 4, !tbaa !41
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !68
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %8
  %26 = tail call i32 %24(ptr noundef nonnull %25, ptr noundef %12, ptr noundef %18) #6
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %8
  %29 = load i32, ptr %28, align 4, !tbaa !69
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %30
  store i8 %27, ptr %31, align 1, !tbaa !38
  br label %70

32:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #6
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71
  %34 = load ptr, ptr %33, align 16, !tbaa !71
  call void %34(ptr noundef nonnull %3, ptr noundef %12, ptr noundef %18) #6
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %36 = load i32, ptr %35, align 16, !tbaa !72
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = call i32 @x264_quant_4x4_trellis(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %5, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef %1) #6
  br label %51

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !73
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = sext i32 %5 to i64
  %46 = getelementptr inbounds [16 x i16], ptr %44, i64 %45
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = getelementptr inbounds [16 x i16], ptr %48, i64 %45
  %50 = call i32 %42(ptr noundef nonnull %3, ptr noundef %46, ptr noundef %49) #6
  br label %51

51:                                               ; preds = %38, %40
  %52 = phi i32 [ %39, %38 ], [ %50, %40 ]
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %8
  %55 = load i32, ptr %54, align 4, !tbaa !69
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %56
  store i8 %53, ptr %57, align 1, !tbaa !38
  %58 = icmp eq i32 %52, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !74
  %62 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %8
  call void %61(ptr noundef nonnull %62, ptr noundef nonnull %3) #6
  %63 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 5
  %64 = load ptr, ptr %63, align 8, !tbaa !75
  %65 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !34
  call void %64(ptr noundef nonnull %3, ptr noundef %66, i32 noundef %5) #6
  %67 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !76
  call void %68(ptr noundef %18, ptr noundef nonnull %3) #6
  br label %69

69:                                               ; preds = %59, %51
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #6
  br label %70

70:                                               ; preds = %69, %22
  ret void
}

declare i32 @x264_quant_8x8_trellis(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!36, !36, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"short", !36, i64 0}
!41 = !{!42, !44, i64 25812}
!42 = !{!"x264_t", !43, i64 0, !36, i64 704, !44, i64 1736, !44, i64 1740, !44, i64 1744, !44, i64 1748, !44, i64 1752, !49, i64 1760, !35, i64 1832, !44, i64 1840, !44, i64 1844, !44, i64 1848, !44, i64 1852, !44, i64 1856, !44, i64 1860, !44, i64 1864, !44, i64 1868, !44, i64 1872, !44, i64 1876, !44, i64 1880, !44, i64 1884, !44, i64 1888, !44, i64 1892, !36, i64 1896, !35, i64 3200, !36, i64 3208, !35, i64 3328, !44, i64 3336, !44, i64 3340, !36, i64 3344, !36, i64 3376, !36, i64 3392, !36, i64 3424, !36, i64 3440, !36, i64 3472, !36, i64 3488, !36, i64 3520, !36, i64 3536, !36, i64 4272, !35, i64 7216, !52, i64 7232, !53, i64 13904, !54, i64 14416, !35, i64 14680, !35, i64 14688, !44, i64 14696, !36, i64 14704, !44, i64 14856, !36, i64 14864, !36, i64 15016, !44, i64 15024, !44, i64 15028, !51, i64 15032, !55, i64 15040, !56, i64 16368, !35, i64 26704, !59, i64 26712, !36, i64 30400, !36, i64 30912, !36, i64 31168, !35, i64 31176, !36, i64 31184, !36, i64 31232, !36, i64 31248, !36, i64 31304, !36, i64 31360, !36, i64 31456, !35, i64 31552, !62, i64 31560, !63, i64 32616, !64, i64 32912, !65, i64 33032, !66, i64 33080, !67, i64 33256, !35, i64 33328}
!43 = !{!"x264_param_t", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !45, i64 44, !44, i64 80, !44, i64 84, !44, i64 88, !44, i64 92, !44, i64 96, !44, i64 100, !44, i64 104, !44, i64 108, !44, i64 112, !44, i64 116, !44, i64 120, !44, i64 124, !44, i64 128, !44, i64 132, !44, i64 136, !44, i64 140, !44, i64 144, !35, i64 152, !36, i64 160, !36, i64 176, !36, i64 192, !36, i64 208, !36, i64 224, !36, i64 288, !35, i64 352, !35, i64 360, !44, i64 368, !44, i64 372, !35, i64 376, !46, i64 384, !48, i64 488, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !44, i64 648, !44, i64 652, !44, i64 656, !44, i64 660, !44, i64 664, !44, i64 668, !44, i64 672, !44, i64 676, !44, i64 680, !44, i64 684, !44, i64 688, !44, i64 692, !35, i64 696}
!44 = !{!"int", !36, i64 0}
!45 = !{!"", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32}
!46 = !{!"", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !44, i64 64, !44, i64 68, !47, i64 72, !47, i64 76, !44, i64 80, !36, i64 84, !44, i64 92, !44, i64 96}
!47 = !{!"float", !36, i64 0}
!48 = !{!"", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !44, i64 36, !44, i64 40, !47, i64 44, !47, i64 48, !47, i64 52, !44, i64 56, !47, i64 60, !44, i64 64, !44, i64 68, !44, i64 72, !35, i64 80, !44, i64 88, !35, i64 96, !47, i64 104, !47, i64 108, !47, i64 112, !35, i64 120, !44, i64 128, !35, i64 136}
!49 = !{!"", !44, i64 0, !44, i64 4, !35, i64 8, !44, i64 16, !35, i64 24, !50, i64 32}
!50 = !{!"bs_s", !35, i64 0, !35, i64 8, !35, i64 16, !51, i64 24, !44, i64 32, !44, i64 36}
!51 = !{!"long", !36, i64 0}
!52 = !{!"", !35, i64 0, !35, i64 8, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !36, i64 60, !44, i64 68, !44, i64 72, !44, i64 76, !44, i64 80, !44, i64 84, !44, i64 88, !44, i64 92, !36, i64 96, !36, i64 352, !44, i64 6496, !44, i64 6500, !36, i64 6504, !44, i64 6632, !44, i64 6636, !44, i64 6640, !44, i64 6644, !44, i64 6648, !44, i64 6652, !44, i64 6656, !44, i64 6660}
!53 = !{!"", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !35, i64 16, !35, i64 24, !35, i64 32, !44, i64 48, !36, i64 52}
!54 = !{!"", !35, i64 0, !36, i64 8, !35, i64 24, !36, i64 32, !44, i64 176, !44, i64 180, !44, i64 184, !44, i64 188, !44, i64 192, !44, i64 196, !44, i64 200, !51, i64 208, !51, i64 216, !36, i64 224, !51, i64 240, !51, i64 248, !44, i64 256, !44, i64 260}
!55 = !{!"", !36, i64 0, !36, i64 32, !36, i64 48, !36, i64 560}
!56 = !{!"", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !44, i64 64, !44, i64 68, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !44, i64 120, !36, i64 124, !36, i64 140, !44, i64 204, !44, i64 208, !44, i64 212, !44, i64 216, !44, i64 220, !44, i64 224, !44, i64 228, !44, i64 232, !44, i64 236, !44, i64 240, !44, i64 244, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !36, i64 304, !36, i64 320, !36, i64 336, !36, i64 352, !35, i64 864, !35, i64 872, !35, i64 880, !36, i64 888, !44, i64 1016, !44, i64 1020, !36, i64 1024, !44, i64 1028, !44, i64 1032, !44, i64 1036, !44, i64 1040, !44, i64 1044, !44, i64 1048, !44, i64 1052, !44, i64 1056, !44, i64 1060, !57, i64 1072, !58, i64 8656, !44, i64 9424, !44, i64 9428, !44, i64 9432, !44, i64 9436, !44, i64 9440, !44, i64 9444, !44, i64 9448, !44, i64 9452, !36, i64 9456, !44, i64 9472, !44, i64 9476, !36, i64 9480, !35, i64 9992, !36, i64 10000, !35, i64 10256, !36, i64 10264, !44, i64 10284, !36, i64 10288}
!57 = !{!"", !36, i64 0, !36, i64 384, !36, i64 1248, !36, i64 1504, !36, i64 1760, !36, i64 2144, !36, i64 2624, !36, i64 2640, !44, i64 2656, !44, i64 2660, !36, i64 2672, !36, i64 3184, !36, i64 3696, !36, i64 3776, !36, i64 3904, !36, i64 3928, !36, i64 3952, !36, i64 3976, !36, i64 3984, !36, i64 7056, !36, i64 7312, !36, i64 7568}
!58 = !{!"", !36, i64 0, !36, i64 48, !36, i64 96, !36, i64 176, !36, i64 496, !36, i64 656, !36, i64 696, !36, i64 728, !44, i64 736, !36, i64 740, !44, i64 744, !44, i64 748, !44, i64 752, !44, i64 756}
!59 = !{!"", !60, i64 0, !36, i64 704, !36, i64 728, !36, i64 768, !36, i64 808, !36, i64 880, !36, i64 920, !36, i64 960, !36, i64 1000, !36, i64 1040, !36, i64 1080, !36, i64 1120, !36, i64 1880, !36, i64 2152, !36, i64 2168, !36, i64 3192, !36, i64 3240, !36, i64 3656, !36, i64 3664, !36, i64 3672}
!60 = !{!"", !44, i64 0, !44, i64 4, !44, i64 8, !36, i64 12, !44, i64 88, !44, i64 92, !44, i64 96, !36, i64 100, !36, i64 108, !36, i64 364, !36, i64 432, !36, i64 456, !36, i64 664, !36, i64 672, !61, i64 696}
!61 = !{!"double", !36, i64 0}
!62 = !{!"", !36, i64 0, !36, i64 56, !36, i64 112, !36, i64 168, !36, i64 224, !36, i64 256, !36, i64 312, !36, i64 368, !36, i64 424, !36, i64 480, !36, i64 536, !35, i64 592, !36, i64 600, !36, i64 632, !35, i64 664, !35, i64 672, !36, i64 680, !36, i64 736, !36, i64 792, !36, i64 848, !36, i64 904, !35, i64 960, !35, i64 968, !35, i64 976, !35, i64 984, !35, i64 992, !35, i64 1000, !35, i64 1008, !35, i64 1016, !35, i64 1024, !35, i64 1032, !35, i64 1040, !35, i64 1048}
!63 = !{!"", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 104, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !35, i64 200, !35, i64 208, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288}
!64 = !{!"", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112}
!65 = !{!"", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40}
!66 = !{!"", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !36, i64 88, !36, i64 136}
!67 = !{!"", !36, i64 0, !36, i64 16, !36, i64 32, !36, i64 48, !35, i64 64}
!68 = !{!42, !35, i64 33056}
!69 = !{!44, !44, i64 0}
!70 = !{!42, !44, i64 17400}
!71 = !{!42, !35, i64 32912}
!72 = !{!42, !44, i64 16416}
!73 = !{!42, !35, i64 33088}
!74 = !{!42, !35, i64 33040}
!75 = !{!42, !35, i64 33120}
!76 = !{!42, !35, i64 32920}
!77 = !{!42, !35, i64 33048}
!78 = !{!42, !35, i64 32984}
!79 = !{!42, !35, i64 33080}
!80 = !{!42, !35, i64 33032}
!81 = !{!42, !35, i64 33112}
!82 = !{!42, !35, i64 32992}
!83 = !{!42, !44, i64 16424}
!84 = !{!42, !44, i64 17404}
!85 = !{!42, !35, i64 32152}
!86 = !{!42, !35, i64 32936}
!87 = !{!42, !35, i64 33104}
!88 = !{i32 0, i32 2}
!89 = !{!42, !35, i64 32952}
!90 = distinct !{!90, !91, !92}
!91 = !{!"llvm.loop.mustprogress"}
!92 = !{!"llvm.loop.unroll.disable"}
!93 = !{!42, !35, i64 33064}
!94 = distinct !{!94, !91, !92}
!95 = !{!42, !35, i64 32928}
!96 = !{!42, !35, i64 33144}
!97 = distinct !{!97, !91, !92}
!98 = !{!42, !35, i64 32944}
!99 = distinct !{!99, !91, !92}
!100 = distinct !{!100, !91, !92}
!101 = distinct !{!101, !91, !92}
!102 = !{!42, !35, i64 14680}
!103 = !{!42, !44, i64 16436}
!104 = !{!42, !35, i64 32776}
!105 = !{!42, !44, i64 25792}
!106 = !{!42, !44, i64 17384}
!107 = !{!42, !44, i64 7268}
!108 = !{!42, !44, i64 16392}
!109 = !{!42, !44, i64 7252}
!110 = !{!42, !44, i64 16372}
!111 = !{!42, !35, i64 16616}
!112 = !{!42, !44, i64 17420}
!113 = !{!42, !35, i64 32616}
!114 = !{!42, !35, i64 32632}
!115 = !{!116, !35, i64 48}
!116 = !{!"x264_weight_t", !36, i64 0, !36, i64 16, !44, i64 32, !44, i64 36, !44, i64 40, !35, i64 48}
!117 = distinct !{!117, !91, !92}
!118 = !{!42, !35, i64 16640}
!119 = !{!42, !44, i64 17408}
!120 = !{!42, !44, i64 17396}
!121 = distinct !{!121, !91, !92}
!122 = !{!42, !35, i64 32960}
!123 = distinct !{!123, !91, !92}
!124 = !{!42, !35, i64 33016}
!125 = !{!42, !35, i64 33096}
!126 = !{!42, !35, i64 33024}
!127 = !{!42, !35, i64 33128}
!128 = distinct !{!128, !91, !92}
!129 = !{!42, !35, i64 32968}
!130 = !{!42, !35, i64 32976}
!131 = !{!42, !44, i64 17416}
!132 = !{!42, !44, i64 20100}
!133 = !{!42, !35, i64 32816}
!134 = !{!42, !35, i64 31552}
!135 = distinct !{!135, !91, !92}
!136 = !{!42, !44, i64 20096}
!137 = distinct !{!137, !91, !92}
!138 = distinct !{!138, !91, !92}
!139 = distinct !{!139, !91, !92}
!140 = !{!42, !35, i64 33000}
!141 = !{!42, !44, i64 16420}
!142 = !{!42, !35, i64 33136}
!143 = !{!42, !35, i64 33160}
!144 = distinct !{!144, !91, !92}
!145 = distinct !{!145, !91, !92}
!146 = !{!42, !35, i64 33152}
!147 = distinct !{!147, !91, !92}
!148 = distinct !{!148, !91, !92}
!149 = distinct !{!149, !91, !92}
!150 = !{!42, !44, i64 17412}
!151 = !{!42, !44, i64 25796}
!152 = !{!42, !44, i64 128}
!153 = !{!42, !44, i64 17388}
!154 = distinct !{!154, !91, !92}
!155 = distinct !{!155, !91, !92}
!156 = distinct !{!156, !91, !92}
!157 = distinct !{!157, !91, !92}
!158 = !{!42, !44, i64 452}
!159 = distinct !{!159, !91, !92}
!160 = distinct !{!160, !91, !92}
!161 = distinct !{!161, !91, !92}
!162 = distinct !{!162, !91, !92}
!163 = distinct !{!163, !91, !92}
!164 = distinct !{!164, !91, !92}
!165 = distinct !{!165, !91, !92}
