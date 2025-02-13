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

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #9
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %19 = load i32, ptr %18, align 4, !tbaa !41
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %7
  br i1 %20, label %36, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !68
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %7
  %26 = tail call i32 %24(ptr noundef nonnull %25, ptr noundef %11, ptr noundef %17) #10
  %27 = trunc i32 %26 to i8
  %28 = load i32, ptr %21, align 4, !tbaa !69
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %29
  store i8 %27, ptr %30, align 1, !tbaa !38
  %31 = ashr i32 %1, 2
  %32 = shl i32 %26, %31
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %34 = load i32, ptr %33, align 8, !tbaa !70
  %35 = or i32 %34, %32
  store i32 %35, ptr %33, align 8, !tbaa !70
  br label %60

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71
  %38 = load ptr, ptr %37, align 16, !tbaa !71
  call void %38(ptr noundef nonnull %4, ptr noundef %11, ptr noundef %17) #10
  %39 = call fastcc i32 @x264_quant_4x4(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %2, i32 noundef 2, i32 noundef 1, i32 noundef %1) #11
  %40 = trunc i32 %39 to i8
  %41 = load i32, ptr %21, align 4, !tbaa !69
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %42
  store i8 %40, ptr %43, align 1, !tbaa !38
  %44 = icmp eq i32 %39, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %36
  %46 = ashr i32 %1, 2
  %47 = shl nuw i32 1, %46
  %48 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %49 = load i32, ptr %48, align 8, !tbaa !70
  %50 = or i32 %49, %47
  store i32 %50, ptr %48, align 8, !tbaa !70
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !72
  %53 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %7
  call void %52(ptr noundef nonnull %53, ptr noundef nonnull %4) #10
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !73
  %56 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29
  %57 = load ptr, ptr %56, align 16, !tbaa !34
  call void %55(ptr noundef nonnull %4, ptr noundef %57, i32 noundef %2) #10
  %58 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !74
  call void %59(ptr noundef %17, ptr noundef nonnull %4) #10
  br label %60

60:                                               ; preds = %36, %45, %22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @x264_quant_4x4(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !75 {
  %7 = icmp eq i32 %4, 0
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %9 = load i32, ptr %8, align 16, !tbaa !76
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = zext i1 %7 to i32
  %13 = tail call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %12, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef %5) #10
  br label %26

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !77
  %17 = zext i1 %7 to i64
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = sext i32 %2 to i64
  %21 = getelementptr inbounds [16 x i16], ptr %19, i64 %20
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 %17
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = getelementptr inbounds [16 x i16], ptr %23, i64 %20
  %25 = tail call i32 %16(ptr noundef %1, ptr noundef %21, ptr noundef %24) #10
  br label %26

26:                                               ; preds = %14, %11
  %27 = phi i32 [ %13, %11 ], [ %25, %14 ]
  ret i32 %27
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #9
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %22 = load i32, ptr %21, align 4, !tbaa !41
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %47, label %24

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !78
  %27 = sext i32 %1 to i64
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2, i64 %27
  %29 = tail call i32 %26(ptr noundef nonnull %28, ptr noundef %14, ptr noundef %20) #10
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
  br label %90

47:                                               ; preds = %3
  %48 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 9
  %49 = load ptr, ptr %48, align 8, !tbaa !79
  call void %49(ptr noundef nonnull %4, ptr noundef %14, ptr noundef %20) #10
  %50 = call fastcc i32 @x264_quant_8x8(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %2, i32 noundef 1, i32 noundef %1) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %78, label %52

52:                                               ; preds = %47
  %53 = shl nuw i32 1, %1
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %55 = load i32, ptr %54, align 8, !tbaa !70
  %56 = or i32 %55, %53
  store i32 %56, ptr %54, align 8, !tbaa !70
  %57 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72
  %58 = load ptr, ptr %57, align 8, !tbaa !80
  %59 = sext i32 %1 to i64
  %60 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2, i64 %59
  call void %58(ptr noundef nonnull %60, ptr noundef nonnull %4) #10
  %61 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !81
  %63 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30
  %64 = load ptr, ptr %63, align 16, !tbaa !34
  call void %62(ptr noundef nonnull %4, ptr noundef %64, i32 noundef %2) #10
  %65 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 10
  %66 = load ptr, ptr %65, align 16, !tbaa !82
  call void %66(ptr noundef %20, ptr noundef nonnull %4) #10
  %67 = sext i32 %7 to i64
  %68 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %67
  %69 = load i32, ptr %68, align 16, !tbaa !69
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %70
  store i16 257, ptr %71, align 1, !tbaa !38
  %72 = or disjoint i32 %7, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %73
  %75 = load i32, ptr %74, align 8, !tbaa !69
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %76
  store i16 257, ptr %77, align 1, !tbaa !38
  br label %90

78:                                               ; preds = %47
  %79 = sext i32 %7 to i64
  %80 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %79
  %81 = load i32, ptr %80, align 16, !tbaa !69
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %82
  store i16 0, ptr %83, align 1, !tbaa !38
  %84 = or disjoint i32 %7, 2
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %85
  %87 = load i32, ptr %86, align 8, !tbaa !69
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %88
  store i16 0, ptr %89, align 1, !tbaa !38
  br label %90

90:                                               ; preds = %52, %78, %24
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @x264_quant_8x8(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !83 {
  %6 = icmp eq i32 %3, 0
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %8 = load i32, ptr %7, align 16, !tbaa !76
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = zext i1 %6 to i32
  %12 = tail call i32 @x264_quant_8x8_trellis(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %11, i32 noundef %2, i32 noundef %3, i32 noundef %4) #10
  br label %25

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73
  %15 = load ptr, ptr %14, align 8, !tbaa !84
  %16 = zext i1 %6 to i64
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 34, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = sext i32 %2 to i64
  %20 = getelementptr inbounds [64 x i16], ptr %18, i64 %19
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 36, i64 %16
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = getelementptr inbounds [64 x i16], ptr %22, i64 %19
  %24 = tail call i32 %15(ptr noundef %1, ptr noundef %20, ptr noundef %23) #10
  br label %25

25:                                               ; preds = %13, %10
  %26 = phi i32 [ %12, %10 ], [ %24, %13 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_mb_encode_8x8_chroma(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x i16], align 16
  %5 = alloca [2 x i32], align 4
  %6 = alloca [4 x [16 x i16]], align 16
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  store i32 0, ptr %9, align 4, !tbaa !85
  br label %115

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 14
  %12 = load i32, ptr %11, align 8, !tbaa !86
  %13 = icmp eq i32 %12, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  store i32 0, ptr %14, align 4, !tbaa !85
  br i1 %13, label %115, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %17 = load i32, ptr %16, align 16, !tbaa !76
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 18, i32 12
  %20 = icmp sgt i32 %19, %2
  br i1 %20, label %115, label %21

21:                                               ; preds = %15
  %22 = zext nneg i32 %2 to i64
  %23 = getelementptr inbounds [52 x i32], ptr @x264_lambda2_tab, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !69
  %25 = add nsw i32 %24, 32
  %26 = ashr i32 %25, 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 11
  %28 = load ptr, ptr %27, align 8, !tbaa !87
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = call i32 %28(ptr noundef %30, i32 noundef 16, ptr noundef %32, i32 noundef 32, ptr noundef nonnull %5) #10
  %34 = shl nsw i32 %26, 2
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %21
  %37 = load ptr, ptr %27, align 8, !tbaa !87
  %38 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 2
  %39 = load ptr, ptr %38, align 16, !tbaa !34
  %40 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %41 = load ptr, ptr %40, align 16, !tbaa !34
  %42 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  %43 = call i32 %37(ptr noundef %39, i32 noundef 16, ptr noundef %41, i32 noundef 32, ptr noundef nonnull %42) #10
  %44 = add nsw i32 %43, %33
  br label %45

45:                                               ; preds = %36, %21
  %46 = phi i32 [ %44, %36 ], [ %33, %21 ]
  %47 = icmp slt i32 %46, %34
  br i1 %47, label %48, label %114

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
  %60 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 3
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 %61
  %63 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 %61
  %64 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 %61
  %65 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 5
  br label %66

66:                                               ; preds = %48, %110
  %67 = phi i64 [ 0, %48 ], [ %111, %110 ]
  %68 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !69
  %70 = icmp sgt i32 %69, %26
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = add nuw nsw i64 %67, 1
  br label %110

73:                                               ; preds = %66
  %74 = load ptr, ptr %58, align 8, !tbaa !88
  %75 = add nuw nsw i64 %67, 1
  %76 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !34
  %78 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 %75
  %79 = load ptr, ptr %78, align 8, !tbaa !34
  call void %74(ptr noundef nonnull %4, ptr noundef %77, ptr noundef %79) #10
  %80 = load i32, ptr %16, align 16, !tbaa !76
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %73
  %83 = call i32 @x264_quant_dc_trellis(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %59, i32 noundef %2, i32 noundef 3, i32 noundef 0, i32 noundef 1) #10
  br label %97

84:                                               ; preds = %73
  %85 = load ptr, ptr %60, align 8, !tbaa !89
  %86 = load ptr, ptr %62, align 8, !tbaa !34
  %87 = getelementptr inbounds [16 x i16], ptr %86, i64 %22
  %88 = load i16, ptr %87, align 2, !tbaa !39
  %89 = lshr i16 %88, 1
  %90 = zext nneg i16 %89 to i32
  %91 = load ptr, ptr %63, align 8, !tbaa !34
  %92 = getelementptr inbounds [16 x i16], ptr %91, i64 %22
  %93 = load i16, ptr %92, align 2, !tbaa !39
  %94 = zext i16 %93 to i32
  %95 = shl nuw nsw i32 %94, 1
  %96 = call i32 %85(ptr noundef nonnull %4, i32 noundef %90, i32 noundef %95) #10
  br label %97

97:                                               ; preds = %84, %82
  %98 = phi i32 [ %83, %82 ], [ %96, %84 ]
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %97
  %101 = call fastcc i32 @x264_mb_optimize_chroma_dc(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %4) #11, !range !90
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %100
  %104 = or disjoint i64 %67, 46
  %105 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %104
  store i8 1, ptr %105, align 1, !tbaa !38
  %106 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 1, i64 %67
  call fastcc void @zigzag_scan_2x2_dc(ptr noundef nonnull %106, ptr noundef nonnull %4) #11
  %107 = load ptr, ptr %64, align 8, !tbaa !34
  call fastcc void @idct_dequant_2x2_dconly(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %107, i32 noundef %2) #11
  %108 = load ptr, ptr %65, align 8, !tbaa !91
  %109 = load ptr, ptr %78, align 8, !tbaa !34
  call void %108(ptr noundef %109, ptr noundef nonnull %4) #10
  store i32 1, ptr %14, align 4, !tbaa !85
  br label %110

110:                                              ; preds = %71, %103, %97, %100
  %111 = phi i64 [ %72, %71 ], [ %75, %103 ], [ %75, %97 ], [ %75, %100 ]
  %112 = icmp eq i64 %67, 0
  br i1 %112, label %66, label %113, !llvm.loop !92

113:                                              ; preds = %110
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %294

114:                                              ; preds = %45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %115

115:                                              ; preds = %8, %114, %15, %10
  %116 = phi ptr [ %9, %8 ], [ %14, %114 ], [ %14, %15 ], [ %14, %10 ]
  %117 = phi i1 [ false, %8 ], [ true, %114 ], [ true, %15 ], [ false, %10 ]
  %118 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %119 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 4
  %120 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 2
  %121 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %122 = add nsw i32 %1, 2
  %123 = zext i1 %7 to i32
  %124 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 1
  %125 = sext i32 %122 to i64
  %126 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 %125
  %127 = sext i32 %2 to i64
  %128 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 %125
  %129 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 1
  %130 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 5
  %131 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 %125
  %132 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 8
  %133 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 3
  %134 = xor i1 %117, true
  %135 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 5
  %136 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 4
  br label %145

137:                                              ; preds = %293
  %138 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 46
  %139 = load i16, ptr %138, align 1, !tbaa !38
  %140 = icmp ne i16 %139, 0
  %141 = zext i1 %140 to i32
  %142 = load i32, ptr %116, align 4, !tbaa !85
  %143 = or i32 %142, %141
  %144 = add nsw i32 %143, %142
  store i32 %144, ptr %116, align 4, !tbaa !85
  br label %294

145:                                              ; preds = %115, %293
  %146 = phi i1 [ true, %115 ], [ false, %293 ]
  %147 = phi i64 [ 0, %115 ], [ 1, %293 ]
  %148 = add nuw nsw i64 %147, 1
  %149 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !34
  %151 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 %148
  %152 = load ptr, ptr %151, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #9
  %153 = load i32, ptr %118, align 4, !tbaa !41
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %195, label %155

155:                                              ; preds = %145
  %156 = shl nuw nsw i64 %147, 2
  br label %163

157:                                              ; preds = %163
  %158 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 1, i64 %147
  %159 = call fastcc i32 @array_non_zero_int(ptr noundef nonnull %158, i32 noundef 8) #11, !range !90
  %160 = trunc i32 %159 to i8
  %161 = or disjoint i64 %147, 46
  %162 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %161
  store i8 %160, ptr %162, align 1, !tbaa !38
  br label %293

163:                                              ; preds = %155, %163
  %164 = phi i64 [ 0, %155 ], [ %193, %163 ]
  %165 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %164
  %166 = load i8, ptr %165, align 1, !tbaa !38
  %167 = zext i8 %166 to i32
  %168 = shl nuw nsw i32 %167, 2
  %169 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %164
  %170 = load i8, ptr %169, align 1, !tbaa !38
  %171 = zext i8 %170 to i32
  %172 = shl nuw nsw i32 %171, 6
  %173 = add nuw nsw i32 %172, %168
  %174 = shl nuw nsw i32 %171, 7
  %175 = add nuw nsw i32 %174, %168
  %176 = load ptr, ptr %119, align 8, !tbaa !94
  %177 = add nuw nsw i64 %164, %156
  %178 = add nuw nsw i64 %177, 16
  %179 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %178
  %180 = zext nneg i32 %173 to i64
  %181 = getelementptr inbounds i8, ptr %150, i64 %180
  %182 = zext nneg i32 %175 to i64
  %183 = getelementptr inbounds i8, ptr %152, i64 %182
  %184 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 1, i64 %147, i64 %164
  %185 = call i32 %176(ptr noundef nonnull %179, ptr noundef %181, ptr noundef %183, ptr noundef nonnull %184) #10
  %186 = trunc i32 %185 to i8
  %187 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %178
  %188 = load i32, ptr %187, align 4, !tbaa !69
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %189
  store i8 %186, ptr %190, align 1, !tbaa !38
  %191 = load i32, ptr %116, align 4, !tbaa !85
  %192 = or i32 %191, %185
  store i32 %192, ptr %116, align 4, !tbaa !85
  %193 = add nuw nsw i64 %164, 1
  %194 = icmp eq i64 %193, 4
  br i1 %194, label %157, label %163, !llvm.loop !95

195:                                              ; preds = %145
  %196 = load ptr, ptr %120, align 16, !tbaa !96
  call void %196(ptr noundef nonnull %6, ptr noundef %150, ptr noundef %152) #10
  call fastcc void @dct2x2dc(ptr noundef nonnull %4, ptr noundef nonnull %6) #11
  %197 = shl nuw nsw i64 %147, 2
  br label %201

198:                                              ; preds = %238
  %199 = load i32, ptr %121, align 16, !tbaa !76
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %245, label %243

201:                                              ; preds = %195, %238
  %202 = phi i64 [ 0, %195 ], [ %241, %238 ]
  %203 = phi i32 [ 0, %195 ], [ %240, %238 ]
  %204 = phi i32 [ 0, %195 ], [ %239, %238 ]
  %205 = load i32, ptr %121, align 16, !tbaa !76
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %201
  %208 = getelementptr inbounds [4 x [16 x i16]], ptr %6, i64 0, i64 %202
  %209 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef nonnull %208, i32 noundef %122, i32 noundef %2, i32 noundef 4, i32 noundef %123, i32 noundef 1, i32 noundef 0) #10
  br label %218

210:                                              ; preds = %201
  %211 = load ptr, ptr %124, align 8, !tbaa !77
  %212 = getelementptr inbounds [4 x [16 x i16]], ptr %6, i64 0, i64 %202
  %213 = load ptr, ptr %126, align 8, !tbaa !34
  %214 = getelementptr inbounds [16 x i16], ptr %213, i64 %127
  %215 = load ptr, ptr %128, align 8, !tbaa !34
  %216 = getelementptr inbounds [16 x i16], ptr %215, i64 %127
  %217 = call i32 %211(ptr noundef nonnull %212, ptr noundef %214, ptr noundef %216) #10
  br label %218

218:                                              ; preds = %210, %207
  %219 = phi i32 [ %209, %207 ], [ %217, %210 ]
  %220 = trunc i32 %219 to i8
  %221 = add nuw nsw i64 %202, %197
  %222 = add nuw nsw i64 %221, 16
  %223 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %222
  %224 = load i32, ptr %223, align 4, !tbaa !69
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %225
  store i8 %220, ptr %226, align 1, !tbaa !38
  %227 = icmp eq i32 %219, 0
  br i1 %227, label %238, label %228

228:                                              ; preds = %218
  %229 = load ptr, ptr %129, align 8, !tbaa !72
  %230 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %222
  %231 = getelementptr inbounds [4 x [16 x i16]], ptr %6, i64 0, i64 %202
  call void %229(ptr noundef nonnull %230, ptr noundef nonnull %231) #10
  %232 = load ptr, ptr %130, align 8, !tbaa !73
  %233 = load ptr, ptr %131, align 8, !tbaa !34
  call void %232(ptr noundef nonnull %231, ptr noundef %233, i32 noundef %2) #10
  br i1 %117, label %234, label %238

234:                                              ; preds = %228
  %235 = load ptr, ptr %132, align 8, !tbaa !97
  %236 = call i32 %235(ptr noundef nonnull %230) #10
  %237 = add nsw i32 %236, %204
  br label %238

238:                                              ; preds = %218, %234, %228
  %239 = phi i32 [ %237, %234 ], [ %204, %228 ], [ %204, %218 ]
  %240 = phi i32 [ 1, %234 ], [ 1, %228 ], [ %203, %218 ]
  %241 = add nuw nsw i64 %202, 1
  %242 = icmp eq i64 %241, 4
  br i1 %242, label %198, label %201, !llvm.loop !98

243:                                              ; preds = %198
  %244 = call i32 @x264_quant_dc_trellis(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %122, i32 noundef %2, i32 noundef 3, i32 noundef %123, i32 noundef 1) #10
  br label %258

245:                                              ; preds = %198
  %246 = load ptr, ptr %133, align 8, !tbaa !89
  %247 = load ptr, ptr %126, align 8, !tbaa !34
  %248 = getelementptr inbounds [16 x i16], ptr %247, i64 %127
  %249 = load i16, ptr %248, align 2, !tbaa !39
  %250 = lshr i16 %249, 1
  %251 = zext nneg i16 %250 to i32
  %252 = load ptr, ptr %128, align 8, !tbaa !34
  %253 = getelementptr inbounds [16 x i16], ptr %252, i64 %127
  %254 = load i16, ptr %253, align 2, !tbaa !39
  %255 = zext i16 %254 to i32
  %256 = shl nuw nsw i32 %255, 1
  %257 = call i32 %246(ptr noundef nonnull %4, i32 noundef %251, i32 noundef %256) #10
  br label %258

258:                                              ; preds = %245, %243
  %259 = phi i32 [ %244, %243 ], [ %257, %245 ]
  %260 = trunc i32 %259 to i8
  %261 = or disjoint i64 %147, 46
  %262 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %261
  store i8 %260, ptr %262, align 1, !tbaa !38
  %263 = icmp sgt i32 %239, 6
  %264 = select i1 %134, i1 true, i1 %263
  %265 = icmp ne i32 %240, 0
  %266 = select i1 %264, i1 %265, i1 false
  br i1 %266, label %286, label %267

267:                                              ; preds = %258
  %268 = mul nuw nsw i64 %147, 24
  %269 = add nuw nsw i64 %268, 9
  %270 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %269
  store i8 0, ptr %270, align 1, !tbaa !38
  %271 = add nuw nsw i64 %268, 10
  %272 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %271
  store i8 0, ptr %272, align 1, !tbaa !38
  %273 = add nuw nsw i64 %268, 17
  %274 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %273
  store i8 0, ptr %274, align 1, !tbaa !38
  %275 = add nuw nsw i64 %268, 18
  %276 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %275
  store i8 0, ptr %276, align 1, !tbaa !38
  %277 = icmp eq i32 %259, 0
  br i1 %277, label %293, label %278

278:                                              ; preds = %267
  %279 = call fastcc i32 @x264_mb_optimize_chroma_dc(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %4) #11, !range !90
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %278
  store i8 0, ptr %262, align 1, !tbaa !38
  br label %293

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 1, i64 %147
  call fastcc void @zigzag_scan_2x2_dc(ptr noundef nonnull %283, ptr noundef nonnull %4) #11
  %284 = load ptr, ptr %131, align 8, !tbaa !34
  call fastcc void @idct_dequant_2x2_dconly(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %284, i32 noundef %2) #11
  %285 = load ptr, ptr %135, align 8, !tbaa !91
  call void %285(ptr noundef %152, ptr noundef nonnull %4) #10
  br label %293

286:                                              ; preds = %258
  store i32 1, ptr %116, align 4, !tbaa !85
  %287 = icmp eq i32 %259, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %286
  %289 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 1, i64 %147
  call fastcc void @zigzag_scan_2x2_dc(ptr noundef nonnull %289, ptr noundef nonnull %4) #11
  %290 = load ptr, ptr %131, align 8, !tbaa !34
  call fastcc void @idct_dequant_2x2_dc(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef %290, i32 noundef %2) #11
  br label %291

291:                                              ; preds = %288, %286
  %292 = load ptr, ptr %136, align 16, !tbaa !99
  call void %292(ptr noundef %152, ptr noundef nonnull %6) #10
  br label %293

293:                                              ; preds = %282, %291, %267, %281, %157
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #9
  br i1 %146, label %145, label %137, !llvm.loop !100

294:                                              ; preds = %113, %137
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret void
}

; Function Attrs: optsize
declare i32 @x264_quant_dc_trellis(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @x264_mb_optimize_chroma_dc(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !101 {
  %5 = alloca [4 x i16], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %6 = add nsw i32 %1, 2
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = srem i32 %2, 6
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [16 x i32], ptr %9, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !69
  %14 = sdiv i32 %2, 6
  %15 = shl i32 %13, %14
  %16 = icmp sgt i32 %15, 2048
  br i1 %16, label %52, label %17

17:                                               ; preds = %4
  call fastcc void @idct_dequant_2x2_dconly(ptr noundef nonnull %5, ptr noundef %3, ptr noundef nonnull %9, i32 noundef %2) #11
  %18 = load <4 x i16>, ptr %5, align 8, !tbaa !39
  %19 = add <4 x i16> %18, <i16 32, i16 32, i16 32, i16 32>
  store <4 x i16> %19, ptr %5, align 8, !tbaa !39
  %20 = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %19)
  %21 = icmp ult i16 %20, 64
  br i1 %21, label %52, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 11, i64 3
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = tail call i32 %24(ptr noundef %3) #10
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %52

27:                                               ; preds = %22
  %28 = zext nneg i32 %25 to i64
  br label %29

29:                                               ; preds = %27, %48
  %30 = phi i64 [ %28, %27 ], [ %50, %48 ]
  %31 = phi i32 [ 0, %27 ], [ %49, %48 ]
  %32 = getelementptr inbounds i16, ptr %3, i64 %30
  %33 = load i16, ptr %32, align 2, !tbaa !39
  %34 = sext i16 %33 to i32
  %35 = ashr i32 %34, 31
  %36 = or i32 %35, 1
  br label %37

37:                                               ; preds = %40, %29
  %38 = phi i32 [ %34, %29 ], [ %41, %40 ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %37
  %41 = sub nsw i32 %38, %36
  %42 = trunc i32 %41 to i16
  store i16 %42, ptr %32, align 2, !tbaa !39
  %43 = load ptr, ptr %8, align 8, !tbaa !34
  %44 = call fastcc i32 @idct_dequant_round_2x2_dc(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %43, i32 noundef %2) #11, !range !102
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %37, label %46, !llvm.loop !103

46:                                               ; preds = %40
  %47 = trunc i32 %38 to i16
  store i16 %47, ptr %32, align 2, !tbaa !39
  br label %48

48:                                               ; preds = %37, %46
  %49 = phi i32 [ 1, %46 ], [ %31, %37 ]
  %50 = add nsw i64 %30, -1
  %51 = icmp sgt i64 %30, 0
  br i1 %51, label %29, label %52, !llvm.loop !104

52:                                               ; preds = %48, %22, %17, %4
  %53 = phi i32 [ 1, %4 ], [ 0, %17 ], [ 0, %22 ], [ %49, %48 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  ret i32 %53
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @zigzag_scan_2x2_dc(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !105 {
  %3 = load i16, ptr %1, align 2, !tbaa !39
  store i16 %3, ptr %0, align 2, !tbaa !39
  %4 = getelementptr inbounds i16, ptr %1, i64 2
  %5 = load i16, ptr %4, align 2, !tbaa !39
  %6 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %5, ptr %6, align 2, !tbaa !39
  %7 = getelementptr inbounds i16, ptr %1, i64 1
  %8 = load i16, ptr %7, align 2, !tbaa !39
  %9 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %8, ptr %9, align 2, !tbaa !39
  %10 = getelementptr inbounds i16, ptr %1, i64 3
  %11 = load i16, ptr %10, align 2, !tbaa !39
  %12 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %11, ptr %12, align 2, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @idct_dequant_2x2_dconly(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 !PGOFuncName !106 {
  %5 = load i16, ptr %1, align 2, !tbaa !39
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds i16, ptr %1, i64 1
  %8 = load i16, ptr %7, align 2, !tbaa !39
  %9 = sext i16 %8 to i32
  %10 = add nsw i32 %9, %6
  %11 = getelementptr inbounds i16, ptr %1, i64 2
  %12 = load i16, ptr %11, align 2, !tbaa !39
  %13 = sext i16 %12 to i32
  %14 = getelementptr inbounds i16, ptr %1, i64 3
  %15 = load i16, ptr %14, align 2, !tbaa !39
  %16 = sext i16 %15 to i32
  %17 = add nsw i32 %16, %13
  %18 = sub nsw i32 %6, %9
  %19 = sub nsw i32 %13, %16
  %20 = srem i32 %3, 6
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [16 x i32], ptr %2, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !69
  %24 = sdiv i32 %3, 6
  %25 = shl i32 %23, %24
  %26 = add nsw i32 %17, %10
  %27 = mul nsw i32 %26, %25
  %28 = lshr i32 %27, 5
  %29 = trunc i32 %28 to i16
  store i16 %29, ptr %0, align 2, !tbaa !39
  %30 = sub nsw i32 %10, %17
  %31 = mul nsw i32 %30, %25
  %32 = lshr i32 %31, 5
  %33 = trunc i32 %32 to i16
  %34 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %33, ptr %34, align 2, !tbaa !39
  %35 = add nsw i32 %19, %18
  %36 = mul nsw i32 %35, %25
  %37 = lshr i32 %36, 5
  %38 = trunc i32 %37 to i16
  %39 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %38, ptr %39, align 2, !tbaa !39
  %40 = sub nsw i32 %18, %19
  %41 = mul nsw i32 %40, %25
  %42 = lshr i32 %41, 5
  %43 = trunc i32 %42 to i16
  %44 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %43, ptr %44, align 2, !tbaa !39
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @array_non_zero_int(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !107 {
  switch i32 %1, label %3 [
    i32 8, label %5
    i32 16, label %8
    i32 32, label %14
  ]

3:                                                ; preds = %2
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %18, label %27

5:                                                ; preds = %2
  %6 = load i64, ptr %0, align 8, !tbaa !38
  %7 = icmp ne i64 %6, 0
  br label %27

8:                                                ; preds = %2
  %9 = load i64, ptr %0, align 8, !tbaa !38
  %10 = getelementptr inbounds i16, ptr %0, i64 4
  %11 = load i64, ptr %10, align 8, !tbaa !38
  %12 = or i64 %11, %9
  %13 = icmp ne i64 %12, 0
  br label %27

14:                                               ; preds = %2
  %15 = load <4 x i64>, ptr %0, align 8, !tbaa !38
  %16 = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %15)
  %17 = icmp ne i64 %16, 0
  br label %27

18:                                               ; preds = %3, %18
  %19 = phi i64 [ %23, %18 ], [ 0, %3 ]
  %20 = getelementptr inbounds i16, ptr %0, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !38
  %22 = icmp ne i64 %21, 0
  %23 = add nuw i64 %19, 4
  %24 = trunc i64 %23 to i32
  %25 = icmp sge i32 %24, %1
  %26 = select i1 %22, i1 true, i1 %25
  br i1 %26, label %27, label %18, !llvm.loop !108

27:                                               ; preds = %18, %3, %14, %8, %5
  %28 = phi i1 [ %7, %5 ], [ %13, %8 ], [ %17, %14 ], [ false, %3 ], [ %22, %18 ]
  %29 = zext i1 %28 to i32
  ret i32 %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @dct2x2dc(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1) unnamed_addr #3 !PGOFuncName !109 {
  %3 = load i16, ptr %1, align 2, !tbaa !39
  %4 = zext i16 %3 to i32
  %5 = getelementptr inbounds [16 x i16], ptr %1, i64 1
  %6 = load i16, ptr %5, align 2, !tbaa !39
  %7 = zext i16 %6 to i32
  %8 = add nuw nsw i32 %7, %4
  %9 = getelementptr inbounds [16 x i16], ptr %1, i64 2
  %10 = load i16, ptr %9, align 2, !tbaa !39
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds [16 x i16], ptr %1, i64 3
  %13 = load i16, ptr %12, align 2, !tbaa !39
  %14 = zext i16 %13 to i32
  %15 = add nuw nsw i32 %14, %11
  %16 = sub nsw i32 %4, %7
  %17 = sub nsw i32 %11, %14
  %18 = add nuw nsw i32 %15, %8
  %19 = trunc i32 %18 to i16
  store i16 %19, ptr %0, align 2, !tbaa !39
  %20 = add nsw i32 %17, %16
  %21 = trunc i32 %20 to i16
  %22 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %21, ptr %22, align 2, !tbaa !39
  %23 = sub nsw i32 %8, %15
  %24 = trunc i32 %23 to i16
  %25 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %24, ptr %25, align 2, !tbaa !39
  %26 = sub nsw i32 %16, %17
  %27 = trunc i32 %26 to i16
  %28 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %27, ptr %28, align 2, !tbaa !39
  store i16 0, ptr %1, align 2, !tbaa !39
  store i16 0, ptr %5, align 2, !tbaa !39
  store i16 0, ptr %9, align 2, !tbaa !39
  store i16 0, ptr %12, align 2, !tbaa !39
  ret void
}

; Function Attrs: optsize
declare i32 @x264_quant_4x4_trellis(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @idct_dequant_2x2_dc(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 !PGOFuncName !110 {
  %5 = load i16, ptr %0, align 2, !tbaa !39
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds i16, ptr %0, i64 1
  %8 = load i16, ptr %7, align 2, !tbaa !39
  %9 = sext i16 %8 to i32
  %10 = add nsw i32 %9, %6
  %11 = getelementptr inbounds i16, ptr %0, i64 2
  %12 = load i16, ptr %11, align 2, !tbaa !39
  %13 = sext i16 %12 to i32
  %14 = getelementptr inbounds i16, ptr %0, i64 3
  %15 = load i16, ptr %14, align 2, !tbaa !39
  %16 = sext i16 %15 to i32
  %17 = add nsw i32 %16, %13
  %18 = sub nsw i32 %6, %9
  %19 = sub nsw i32 %13, %16
  %20 = srem i32 %3, 6
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [16 x i32], ptr %2, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !69
  %24 = sdiv i32 %3, 6
  %25 = shl i32 %23, %24
  %26 = add nsw i32 %17, %10
  %27 = mul nsw i32 %26, %25
  %28 = lshr i32 %27, 5
  %29 = trunc i32 %28 to i16
  store i16 %29, ptr %1, align 2, !tbaa !39
  %30 = sub nsw i32 %10, %17
  %31 = mul nsw i32 %30, %25
  %32 = lshr i32 %31, 5
  %33 = trunc i32 %32 to i16
  %34 = getelementptr inbounds [16 x i16], ptr %1, i64 1
  store i16 %33, ptr %34, align 2, !tbaa !39
  %35 = add nsw i32 %19, %18
  %36 = mul nsw i32 %35, %25
  %37 = lshr i32 %36, 5
  %38 = trunc i32 %37 to i16
  %39 = getelementptr inbounds [16 x i16], ptr %1, i64 2
  store i16 %38, ptr %39, align 2, !tbaa !39
  %40 = sub nsw i32 %18, %19
  %41 = mul nsw i32 %40, %25
  %42 = lshr i32 %41, 5
  %43 = trunc i32 %42 to i16
  %44 = getelementptr inbounds [16 x i16], ptr %1, i64 3
  store i16 %43, ptr %44, align 2, !tbaa !39
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_predict_lossless_8x8_chroma(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %4 = load ptr, ptr %3, align 8, !tbaa !111
  %5 = getelementptr inbounds %struct.x264_frame, ptr %4, i64 0, i32 24, i64 1
  %6 = load i32, ptr %5, align 4, !tbaa !69
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %8 = load i32, ptr %7, align 4, !tbaa !112
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
  tail call void %12(ptr noundef %14, i32 noundef 32, ptr noundef %19, i32 noundef %9, i32 noundef 8) #10
  %20 = load ptr, ptr %11, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %22 = load ptr, ptr %21, align 16, !tbaa !34
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 17, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds i8, ptr %24, i64 %18
  tail call void %20(ptr noundef %22, i32 noundef 32, ptr noundef %25, i32 noundef %9, i32 noundef 8) #10
  br label %49

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 3
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 17, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = getelementptr inbounds i8, ptr %32, i64 -1
  tail call void %28(ptr noundef %30, i32 noundef 32, ptr noundef nonnull %33, i32 noundef %9, i32 noundef 8) #10
  %34 = load ptr, ptr %27, align 8, !tbaa !34
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %36 = load ptr, ptr %35, align 16, !tbaa !34
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 17, i64 2
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  %39 = getelementptr inbounds i8, ptr %38, i64 -1
  tail call void %34(ptr noundef %36, i32 noundef 32, ptr noundef nonnull %39, i32 noundef %9, i32 noundef 8) #10
  br label %49

40:                                               ; preds = %2
  %41 = sext i32 %1 to i64
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 65, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  tail call void %43(ptr noundef %45) #10
  %46 = load ptr, ptr %42, align 8, !tbaa !34
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %48 = load ptr, ptr %47, align 16, !tbaa !34
  tail call void %46(ptr noundef %48) #10
  br label %49

49:                                               ; preds = %26, %40, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_predict_lossless_4x4(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %6 = load ptr, ptr %5, align 8, !tbaa !111
  %7 = getelementptr inbounds %struct.x264_frame, ptr %6, i64 0, i32 24
  %8 = load i32, ptr %7, align 8, !tbaa !69
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %10 = load i32, ptr %9, align 4, !tbaa !112
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
  tail call void %29(ptr noundef %1, i32 noundef 32, ptr noundef %32, i32 noundef %11, i32 noundef 4) #10
  br label %41

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 6
  %35 = load ptr, ptr %34, align 8, !tbaa !34
  %36 = getelementptr inbounds i8, ptr %26, i64 -1
  tail call void %35(ptr noundef %1, i32 noundef 32, ptr noundef nonnull %36, i32 noundef %11, i32 noundef 4) #10
  br label %41

37:                                               ; preds = %4
  %38 = sext i32 %3 to i64
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 67, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !34
  tail call void %40(ptr noundef %1) #10
  br label %41

41:                                               ; preds = %33, %37, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_predict_lossless_8x8(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = getelementptr inbounds %struct.x264_frame, ptr %7, i64 0, i32 24
  %9 = load i32, ptr %8, align 8, !tbaa !69
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %11 = load i32, ptr %10, align 4, !tbaa !112
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
  tail call void %26(ptr noundef %1, i32 noundef 32, ptr noundef %29, i32 noundef %12, i32 noundef 8) #10
  br label %38

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 3
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = getelementptr inbounds i8, ptr %23, i64 -1
  tail call void %32(ptr noundef %1, i32 noundef 32, ptr noundef nonnull %33, i32 noundef %12, i32 noundef 8) #10
  br label %38

34:                                               ; preds = %5
  %35 = sext i32 %3 to i64
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 66, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  tail call void %37(ptr noundef %1, ptr noundef %4) #10
  br label %38

38:                                               ; preds = %30, %34, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_predict_lossless_16x16(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %4 = load ptr, ptr %3, align 8, !tbaa !111
  %5 = getelementptr inbounds %struct.x264_frame, ptr %4, i64 0, i32 24
  %6 = load i32, ptr %5, align 8, !tbaa !69
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %8 = load i32, ptr %7, align 4, !tbaa !112
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
  tail call void %12(ptr noundef %14, i32 noundef 32, ptr noundef %19, i32 noundef %9, i32 noundef 16) #10
  br label %34

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !113
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %24 = load ptr, ptr %23, align 16, !tbaa !34
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = getelementptr inbounds i8, ptr %26, i64 -1
  tail call void %22(ptr noundef %24, i32 noundef 32, ptr noundef nonnull %27, i32 noundef %9, i32 noundef 16) #10
  br label %34

28:                                               ; preds = %2
  %29 = sext i32 %1 to i64
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 64, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %33 = load ptr, ptr %32, align 16, !tbaa !34
  tail call void %31(ptr noundef %33) #10
  br label %34

34:                                               ; preds = %20, %28, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_macroblock_encode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [33 x i8], align 16
  %3 = alloca [4 x [64 x i16]], align 16
  %4 = alloca [16 x [16 x i16]], align 16
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 68
  %6 = load i32, ptr %5, align 16, !tbaa !114
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !86
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  store i32 0, ptr %9, align 8, !tbaa !70
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 44
  store i8 0, ptr %11, align 1, !tbaa !38
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 53
  %13 = load i32, ptr %12, align 8, !tbaa !115
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %19 = load ptr, ptr %18, align 16, !tbaa !34
  %20 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %21 = load ptr, ptr %20, align 16, !tbaa !34
  tail call void %17(ptr noundef %19, i32 noundef 32, ptr noundef %21, i32 noundef 16, i32 noundef 16) #10
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 3
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  tail call void %23(ptr noundef %25, i32 noundef 32, ptr noundef %27, i32 noundef 16, i32 noundef 8) #10
  %28 = load ptr, ptr %22, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %30 = load ptr, ptr %29, align 16, !tbaa !34
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 2
  %32 = load ptr, ptr %31, align 16, !tbaa !34
  tail call void %28(ptr noundef %30, i32 noundef 32, ptr noundef %32, i32 noundef 16, i32 noundef 8) #10
  br label %642

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %35 = load i32, ptr %34, align 4, !tbaa !116
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %39 = load i32, ptr %38, align 8, !tbaa !117
  %40 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !118
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !119
  %44 = add nsw i32 %43, %41
  %45 = icmp eq i32 %39, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 38
  %48 = load ptr, ptr %47, align 8, !tbaa !120
  %49 = sext i32 %41 to i64
  %50 = getelementptr inbounds i8, ptr %48, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !38
  switch i8 %51, label %54 [
    i8 6, label %52
    i8 18, label %52
  ]

52:                                               ; preds = %46, %46
  switch i32 %13, label %54 [
    i32 6, label %238
    i32 18, label %53
  ]

53:                                               ; preds = %52
  br label %238

54:                                               ; preds = %52, %46, %37, %33
  %55 = phi i1 [ false, %52 ], [ true, %46 ], [ true, %33 ], [ true, %37 ]
  switch i32 %13, label %240 [
    i32 6, label %56
    i32 18, label %57
    i32 2, label %63
    i32 1, label %78
    i32 0, label %158
  ]

56:                                               ; preds = %54
  tail call fastcc void @x264_macroblock_encode_pskip(ptr noundef nonnull %0) #11
  br label %642

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 62
  %59 = load i32, ptr %58, align 4, !tbaa !121
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  tail call void @x264_mb_mc(ptr noundef nonnull %0) #10
  br label %62

62:                                               ; preds = %61, %57
  tail call fastcc void @x264_macroblock_encode_skip(ptr noundef nonnull %0) #11
  br label %642

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 59
  %65 = load i32, ptr %64, align 16, !tbaa !122
  %66 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  store i32 0, ptr %66, align 4, !tbaa !123
  %67 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %68 = load i32, ptr %67, align 4, !tbaa !41
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  tail call void @x264_predict_lossless_16x16(ptr noundef nonnull %0, i32 noundef %65) #11
  br label %77

71:                                               ; preds = %63
  %72 = sext i32 %65 to i64
  %73 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 64, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !34
  %75 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %76 = load ptr, ptr %75, align 16, !tbaa !34
  tail call void %74(ptr noundef %76) #10
  br label %77

77:                                               ; preds = %71, %70
  tail call fastcc void @x264_mb_encode_i16x16(ptr noundef nonnull %0, i32 noundef %6) #11
  br label %557

78:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %2) #9
  %79 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  store i32 1, ptr %79, align 4, !tbaa !123
  %80 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 61
  %81 = load i32, ptr %80, align 8, !tbaa !124
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %116, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !34
  %86 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %87 = load ptr, ptr %86, align 16, !tbaa !34
  %88 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 3
  tail call void %85(ptr noundef %87, i32 noundef 32, ptr noundef nonnull %88, i32 noundef 16, i32 noundef 16) #10
  %89 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 7
  %90 = load i32, ptr %89, align 16, !tbaa !69
  %91 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 12
  store i32 %90, ptr %91, align 1, !tbaa !38
  %92 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 7, i64 1
  %93 = load i32, ptr %92, align 4, !tbaa !69
  %94 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 20
  store i32 %93, ptr %94, align 1, !tbaa !38
  %95 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 7, i64 2
  %96 = load i32, ptr %95, align 8, !tbaa !69
  %97 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 28
  store i32 %96, ptr %97, align 1, !tbaa !38
  %98 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 7, i64 3
  %99 = load i32, ptr %98, align 4, !tbaa !69
  %100 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 36
  store i32 %99, ptr %100, align 1, !tbaa !38
  %101 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 9
  %102 = load i32, ptr %101, align 4, !tbaa !125
  store i32 %102, ptr %9, align 8, !tbaa !70
  %103 = load i32, ptr %80, align 8, !tbaa !124
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %105, label %112

105:                                              ; preds = %83
  %106 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 10
  %107 = load ptr, ptr %106, align 8, !tbaa !126
  %108 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2
  %109 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 4
  %110 = tail call ptr %107(ptr noundef nonnull %108, ptr noundef nonnull %109, i64 noundef 384) #10
  %111 = load i32, ptr %80, align 8, !tbaa !124
  br label %112

112:                                              ; preds = %83, %105
  %113 = phi i32 [ %103, %83 ], [ %111, %105 ]
  %114 = freeze i32 %113
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %78, %112
  br label %117

117:                                              ; preds = %112, %116
  %118 = phi i64 [ 0, %116 ], [ 3, %112 ]
  %119 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %120 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 68
  %121 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  br label %123

122:                                              ; preds = %154
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %2) #9
  br label %557

123:                                              ; preds = %117, %154
  %124 = phi i64 [ %118, %117 ], [ %156, %154 ]
  %125 = load ptr, ptr %119, align 16, !tbaa !34
  %126 = shl i64 %124, 3
  %127 = and i64 %126, 8
  %128 = shl i64 %124, 7
  %129 = and i64 %128, 256
  %130 = or disjoint i64 %127, %129
  %131 = getelementptr inbounds i8, ptr %125, i64 %130
  %132 = shl nuw nsw i64 %124, 2
  %133 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %132
  %134 = load i32, ptr %133, align 16, !tbaa !69
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [40 x i8], ptr %10, i64 0, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !38
  %138 = load ptr, ptr %120, align 16, !tbaa !127
  %139 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 25, i64 %124
  %140 = load i32, ptr %139, align 4, !tbaa !69
  %141 = sext i8 %137 to i64
  %142 = getelementptr inbounds [12 x i8], ptr @x264_pred_i4x4_neighbors, i64 0, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !38
  %144 = zext i8 %143 to i32
  call void %138(ptr noundef %131, ptr noundef nonnull %2, i32 noundef %140, i32 noundef %144) #10
  %145 = load i32, ptr %121, align 4, !tbaa !41
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %123
  %148 = sext i8 %137 to i32
  %149 = trunc i64 %124 to i32
  call void @x264_predict_lossless_8x8(ptr noundef nonnull %0, ptr noundef %131, i32 noundef %149, i32 noundef %148, ptr noundef nonnull %2) #11
  br label %154

150:                                              ; preds = %123
  %151 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 66, i64 %141
  %152 = load ptr, ptr %151, align 8, !tbaa !34
  call void %152(ptr noundef %131, ptr noundef nonnull %2) #10
  %153 = trunc i64 %124 to i32
  br label %154

154:                                              ; preds = %150, %147
  %155 = phi i32 [ %153, %150 ], [ %149, %147 ]
  call void @x264_mb_encode_i8x8(ptr noundef nonnull %0, i32 noundef %155, i32 noundef %6) #11
  %156 = add nuw nsw i64 %124, 1
  %157 = icmp eq i64 %156, 4
  br i1 %157, label %122, label %123, !llvm.loop !128

158:                                              ; preds = %54
  %159 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  store i32 0, ptr %159, align 4, !tbaa !123
  %160 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 61
  %161 = load i32, ptr %160, align 8, !tbaa !124
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %196, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4
  %165 = load ptr, ptr %164, align 8, !tbaa !34
  %166 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %167 = load ptr, ptr %166, align 16, !tbaa !34
  %168 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 2
  tail call void %165(ptr noundef %167, i32 noundef 32, ptr noundef nonnull %168, i32 noundef 16, i32 noundef 16) #10
  %169 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 6
  %170 = load i32, ptr %169, align 16, !tbaa !69
  %171 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 12
  store i32 %170, ptr %171, align 1, !tbaa !38
  %172 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 6, i64 1
  %173 = load i32, ptr %172, align 4, !tbaa !69
  %174 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 20
  store i32 %173, ptr %174, align 1, !tbaa !38
  %175 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 6, i64 2
  %176 = load i32, ptr %175, align 8, !tbaa !69
  %177 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 28
  store i32 %176, ptr %177, align 1, !tbaa !38
  %178 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 6, i64 3
  %179 = load i32, ptr %178, align 4, !tbaa !69
  %180 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 36
  store i32 %179, ptr %180, align 1, !tbaa !38
  %181 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 8
  %182 = load i32, ptr %181, align 16, !tbaa !129
  store i32 %182, ptr %9, align 8, !tbaa !70
  %183 = load i32, ptr %160, align 8, !tbaa !124
  %184 = icmp eq i32 %183, 2
  br i1 %184, label %185, label %192

185:                                              ; preds = %163
  %186 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 10
  %187 = load ptr, ptr %186, align 8, !tbaa !126
  %188 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3
  %189 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 5
  %190 = tail call ptr %187(ptr noundef nonnull %188, ptr noundef nonnull %189, i64 noundef 480) #10
  %191 = load i32, ptr %160, align 8, !tbaa !124
  br label %192

192:                                              ; preds = %163, %185
  %193 = phi i32 [ %183, %163 ], [ %191, %185 ]
  %194 = freeze i32 %193
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %158, %192
  br label %197

197:                                              ; preds = %192, %196
  %198 = phi i64 [ 0, %196 ], [ 15, %192 ]
  %199 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %200 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  br label %201

201:                                              ; preds = %197, %234
  %202 = phi i64 [ %198, %197 ], [ %236, %234 ]
  %203 = load ptr, ptr %199, align 16, !tbaa !34
  %204 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %202
  %205 = load i16, ptr %204, align 2, !tbaa !39
  %206 = zext i16 %205 to i64
  %207 = getelementptr inbounds i8, ptr %203, i64 %206
  %208 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %202
  %209 = load i32, ptr %208, align 4, !tbaa !69
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [40 x i8], ptr %10, i64 0, i64 %210
  %212 = load i8, ptr %211, align 1, !tbaa !38
  %213 = sext i8 %212 to i32
  %214 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 %202
  %215 = load i32, ptr %214, align 4, !tbaa !69
  %216 = and i32 %215, 6
  %217 = icmp eq i32 %216, 2
  br i1 %217, label %218, label %224

218:                                              ; preds = %201
  %219 = getelementptr inbounds i8, ptr %207, i64 -29
  %220 = load i8, ptr %219, align 1, !tbaa !38
  %221 = zext i8 %220 to i32
  %222 = mul nuw i32 %221, 16843009
  %223 = getelementptr inbounds i8, ptr %207, i64 -28
  store i32 %222, ptr %223, align 4, !tbaa !38
  br label %224

224:                                              ; preds = %218, %201
  %225 = load i32, ptr %200, align 4, !tbaa !41
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %224
  %228 = trunc i64 %202 to i32
  tail call void @x264_predict_lossless_4x4(ptr noundef nonnull %0, ptr noundef %207, i32 noundef %228, i32 noundef %213) #11
  br label %234

229:                                              ; preds = %224
  %230 = sext i8 %212 to i64
  %231 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 67, i64 %230
  %232 = load ptr, ptr %231, align 8, !tbaa !34
  tail call void %232(ptr noundef %207) #10
  %233 = trunc i64 %202 to i32
  br label %234

234:                                              ; preds = %229, %227
  %235 = phi i32 [ %233, %229 ], [ %228, %227 ]
  tail call void @x264_mb_encode_i4x4(ptr noundef nonnull %0, i32 noundef %235, i32 noundef %6) #11
  %236 = add nuw nsw i64 %202, 1
  %237 = icmp eq i64 %236, 16
  br i1 %237, label %557, label %201, !llvm.loop !130

238:                                              ; preds = %52, %53
  %239 = phi i32 [ 7, %53 ], [ 4, %52 ]
  store i32 %239, ptr %12, align 8, !tbaa !115
  br label %240

240:                                              ; preds = %238, %54
  %241 = phi i1 [ %55, %54 ], [ false, %238 ]
  %242 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 62
  %243 = load i32, ptr %242, align 4, !tbaa !121
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %240
  tail call void @x264_mb_mc(ptr noundef nonnull %0) #10
  br label %246

246:                                              ; preds = %245, %240
  %247 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %248 = load i32, ptr %247, align 4, !tbaa !41
  %249 = icmp eq i32 %248, 0
  %250 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  %251 = load i32, ptr %250, align 4, !tbaa !123
  %252 = icmp eq i32 %251, 0
  br i1 %249, label %324, label %253

253:                                              ; preds = %246
  %254 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %255 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  br i1 %252, label %258, label %256

256:                                              ; preds = %253
  %257 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 2
  br label %260

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 3
  br label %297

260:                                              ; preds = %256, %260
  %261 = phi i64 [ 0, %256 ], [ %295, %260 ]
  %262 = shl i64 %261, 3
  %263 = and i64 %262, 8
  %264 = shl nuw nsw i64 %261, 2
  %265 = trunc i64 %264 to i32
  %266 = and i32 %265, 8
  %267 = load ptr, ptr %257, align 8, !tbaa !78
  %268 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2, i64 %261
  %269 = load ptr, ptr %254, align 16, !tbaa !34
  %270 = getelementptr inbounds i8, ptr %269, i64 %263
  %271 = shl nuw nsw i32 %266, 4
  %272 = zext nneg i32 %271 to i64
  %273 = getelementptr inbounds i8, ptr %270, i64 %272
  %274 = load ptr, ptr %255, align 16, !tbaa !34
  %275 = getelementptr inbounds i8, ptr %274, i64 %263
  %276 = shl nuw nsw i32 %266, 5
  %277 = zext nneg i32 %276 to i64
  %278 = getelementptr inbounds i8, ptr %275, i64 %277
  %279 = tail call i32 %267(ptr noundef nonnull %268, ptr noundef %273, ptr noundef %278) #10
  %280 = trunc i32 %279 to i16
  %281 = mul i16 %280, 257
  %282 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %264
  %283 = load i32, ptr %282, align 16, !tbaa !69
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %284
  store i16 %281, ptr %285, align 1, !tbaa !38
  %286 = or disjoint i64 %264, 2
  %287 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %286
  %288 = load i32, ptr %287, align 8, !tbaa !69
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %289
  store i16 %281, ptr %290, align 1, !tbaa !38
  %291 = trunc i64 %261 to i32
  %292 = shl i32 %279, %291
  %293 = load i32, ptr %9, align 8, !tbaa !70
  %294 = or i32 %293, %292
  store i32 %294, ptr %9, align 8, !tbaa !70
  %295 = add nuw nsw i64 %261, 1
  %296 = icmp eq i64 %295, 4
  br i1 %296, label %557, label %260, !llvm.loop !131

297:                                              ; preds = %258, %297
  %298 = phi i64 [ 0, %258 ], [ %322, %297 ]
  %299 = load ptr, ptr %259, align 8, !tbaa !68
  %300 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %298
  %301 = load ptr, ptr %254, align 16, !tbaa !34
  %302 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %298
  %303 = load i8, ptr %302, align 1, !tbaa !38
  %304 = zext i8 %303 to i64
  %305 = getelementptr inbounds i8, ptr %301, i64 %304
  %306 = load ptr, ptr %255, align 16, !tbaa !34
  %307 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %298
  %308 = load i16, ptr %307, align 2, !tbaa !39
  %309 = zext i16 %308 to i64
  %310 = getelementptr inbounds i8, ptr %306, i64 %309
  %311 = tail call i32 %299(ptr noundef nonnull %300, ptr noundef %305, ptr noundef %310) #10
  %312 = trunc i32 %311 to i8
  %313 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %298
  %314 = load i32, ptr %313, align 4, !tbaa !69
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %315
  store i8 %312, ptr %316, align 1, !tbaa !38
  %317 = trunc i64 %298 to i32
  %318 = lshr i32 %317, 2
  %319 = shl i32 %311, %318
  %320 = load i32, ptr %9, align 8, !tbaa !70
  %321 = or i32 %320, %319
  store i32 %321, ptr %9, align 8, !tbaa !70
  %322 = add nuw nsw i64 %298, 1
  %323 = icmp eq i64 %322, 16
  br i1 %323, label %557, label %297, !llvm.loop !132

324:                                              ; preds = %246
  br i1 %252, label %426, label %325

325:                                              ; preds = %324
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %3) #9
  %326 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %327 = load i32, ptr %326, align 16, !tbaa !76
  %328 = icmp eq i32 %327, 0
  %329 = and i32 %8, 1
  %330 = select i1 %328, i32 %329, i32 0
  %331 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 11
  %332 = load ptr, ptr %331, align 8, !tbaa !133
  %333 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %334 = load ptr, ptr %333, align 16, !tbaa !34
  %335 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %336 = load ptr, ptr %335, align 16, !tbaa !34
  call void %332(ptr noundef nonnull %3, ptr noundef %334, ptr noundef %336) #10
  %337 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 13
  %338 = load i32, ptr %337, align 4, !tbaa !134
  %339 = shl nsw i32 %338, 2
  %340 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 60, i64 1
  %341 = load i32, ptr %340, align 4, !tbaa !69
  %342 = add i32 %341, %339
  store i32 %342, ptr %340, align 4, !tbaa !69
  %343 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 7
  %344 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 58, i64 1
  %345 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 59, i64 1
  %346 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72
  %347 = icmp eq i32 %330, 0
  %348 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 10
  br label %357

349:                                              ; preds = %383
  %350 = icmp slt i32 %384, 6
  %351 = icmp ne i32 %330, 0
  %352 = select i1 %350, i1 %351, i1 false
  br i1 %352, label %387, label %353

353:                                              ; preds = %349
  %354 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 4
  %355 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 1
  %356 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 10
  br label %392

357:                                              ; preds = %325, %383
  %358 = phi i64 [ 0, %325 ], [ %385, %383 ]
  %359 = phi i32 [ 0, %325 ], [ %384, %383 ]
  %360 = load i32, ptr %337, align 4, !tbaa !134
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %365, label %362

362:                                              ; preds = %357
  %363 = load ptr, ptr %343, align 8, !tbaa !135
  %364 = getelementptr inbounds [4 x [64 x i16]], ptr %3, i64 0, i64 %358
  call void %363(ptr noundef nonnull %364, ptr noundef nonnull %344, ptr noundef nonnull %345, i32 noundef 64) #10
  br label %365

365:                                              ; preds = %362, %357
  %366 = getelementptr inbounds [4 x [64 x i16]], ptr %3, i64 0, i64 %358
  %367 = trunc i64 %358 to i32
  %368 = call fastcc i32 @x264_quant_8x8(ptr noundef nonnull %0, ptr noundef nonnull %366, i32 noundef %6, i32 noundef 0, i32 noundef %367) #11
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %383, label %370

370:                                              ; preds = %365
  %371 = load ptr, ptr %346, align 8, !tbaa !80
  %372 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2, i64 %358
  call void %371(ptr noundef nonnull %372, ptr noundef nonnull %366) #10
  br i1 %347, label %378, label %373

373:                                              ; preds = %370
  %374 = load ptr, ptr %348, align 8, !tbaa !136
  %375 = call i32 %374(ptr noundef nonnull %372) #10
  %376 = add nsw i32 %375, %359
  %377 = icmp sgt i32 %375, 3
  br i1 %377, label %378, label %383

378:                                              ; preds = %370, %373
  %379 = phi i32 [ %376, %373 ], [ %359, %370 ]
  %380 = shl nuw nsw i32 1, %367
  %381 = load i32, ptr %9, align 8, !tbaa !70
  %382 = or i32 %381, %380
  store i32 %382, ptr %9, align 8, !tbaa !70
  br label %383

383:                                              ; preds = %378, %373, %365
  %384 = phi i32 [ %359, %365 ], [ %376, %373 ], [ %379, %378 ]
  %385 = add nuw nsw i64 %358, 1
  %386 = icmp eq i64 %385, 4
  br i1 %386, label %349, label %357, !llvm.loop !137

387:                                              ; preds = %349
  store i32 0, ptr %9, align 8, !tbaa !70
  %388 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 12
  store i32 0, ptr %388, align 1, !tbaa !38
  %389 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 20
  store i32 0, ptr %389, align 1, !tbaa !38
  %390 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 28
  store i32 0, ptr %390, align 1, !tbaa !38
  %391 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 36
  store i32 0, ptr %391, align 1, !tbaa !38
  br label %425

392:                                              ; preds = %353, %411
  %393 = phi i64 [ 0, %353 ], [ %423, %411 ]
  %394 = load i32, ptr %9, align 8, !tbaa !70
  %395 = trunc i64 %393 to i32
  %396 = shl nuw nsw i32 1, %395
  %397 = and i32 %394, %396
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %411, label %399

399:                                              ; preds = %392
  %400 = load ptr, ptr %354, align 8, !tbaa !81
  %401 = getelementptr inbounds [4 x [64 x i16]], ptr %3, i64 0, i64 %393
  %402 = load ptr, ptr %355, align 8, !tbaa !34
  call void %400(ptr noundef nonnull %401, ptr noundef %402, i32 noundef %6) #10
  %403 = load ptr, ptr %356, align 16, !tbaa !82
  %404 = load ptr, ptr %335, align 16, !tbaa !34
  %405 = shl i64 %393, 3
  %406 = and i64 %405, 8
  %407 = shl i64 %393, 7
  %408 = and i64 %407, 256
  %409 = or disjoint i64 %406, %408
  %410 = getelementptr inbounds i8, ptr %404, i64 %409
  call void %403(ptr noundef %410, ptr noundef nonnull %401) #10
  br label %411

411:                                              ; preds = %392, %399
  %412 = phi i16 [ 257, %399 ], [ 0, %392 ]
  %413 = shl nuw nsw i64 %393, 2
  %414 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %413
  %415 = load i32, ptr %414, align 16, !tbaa !69
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %416
  store i16 %412, ptr %417, align 1, !tbaa !38
  %418 = or disjoint i64 %413, 2
  %419 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %418
  %420 = load i32, ptr %419, align 8, !tbaa !69
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %421
  store i16 %412, ptr %422, align 1, !tbaa !38
  %423 = add nuw nsw i64 %393, 1
  %424 = icmp eq i64 %423, 4
  br i1 %424, label %425, label %392, !llvm.loop !138

425:                                              ; preds = %411, %387
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %3) #9
  br label %557

426:                                              ; preds = %324
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #9
  %427 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 6
  %428 = load ptr, ptr %427, align 16, !tbaa !139
  %429 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %430 = load ptr, ptr %429, align 16, !tbaa !34
  %431 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %432 = load ptr, ptr %431, align 16, !tbaa !34
  call void %428(ptr noundef nonnull %4, ptr noundef %430, ptr noundef %432) #10
  %433 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 13
  %434 = load i32, ptr %433, align 4, !tbaa !134
  %435 = shl nsw i32 %434, 4
  %436 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 60
  %437 = load i32, ptr %436, align 16, !tbaa !69
  %438 = add i32 %437, %435
  store i32 %438, ptr %436, align 16, !tbaa !69
  %439 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 7
  %440 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 58
  %441 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 59
  %442 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 1
  %443 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 5
  %444 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 1
  %445 = icmp ne i32 %8, 0
  %446 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 9
  %447 = icmp eq i32 %8, 0
  %448 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 4
  br label %449

449:                                              ; preds = %426, %525
  %450 = phi i64 [ 0, %426 ], [ %526, %525 ]
  %451 = phi i32 [ 0, %426 ], [ %455, %525 ]
  %452 = shl nuw nsw i64 %450, 2
  br label %456

453:                                              ; preds = %525
  br i1 %447, label %556, label %528

454:                                              ; preds = %487
  %455 = add nsw i32 %488, %451
  br i1 %447, label %509, label %492

456:                                              ; preds = %449, %487
  %457 = phi i64 [ 0, %449 ], [ %490, %487 ]
  %458 = phi i32 [ 0, %449 ], [ %489, %487 ]
  %459 = phi i32 [ 0, %449 ], [ %488, %487 ]
  %460 = add nuw nsw i64 %457, %452
  %461 = load i32, ptr %433, align 4, !tbaa !134
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %466, label %463

463:                                              ; preds = %456
  %464 = load ptr, ptr %439, align 8, !tbaa !135
  %465 = getelementptr inbounds [16 x [16 x i16]], ptr %4, i64 0, i64 %460
  call void %464(ptr noundef nonnull %465, ptr noundef nonnull %440, ptr noundef nonnull %441, i32 noundef 16) #10
  br label %466

466:                                              ; preds = %463, %456
  %467 = getelementptr inbounds [16 x [16 x i16]], ptr %4, i64 0, i64 %460
  %468 = trunc i64 %460 to i32
  %469 = call fastcc i32 @x264_quant_4x4(ptr noundef nonnull %0, ptr noundef nonnull %467, i32 noundef %6, i32 noundef 2, i32 noundef 0, i32 noundef %468) #11
  %470 = trunc i32 %469 to i8
  %471 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %460
  %472 = load i32, ptr %471, align 4, !tbaa !69
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %473
  store i8 %470, ptr %474, align 1, !tbaa !38
  %475 = icmp eq i32 %469, 0
  br i1 %475, label %487, label %476

476:                                              ; preds = %466
  %477 = load ptr, ptr %442, align 8, !tbaa !72
  %478 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %460
  call void %477(ptr noundef nonnull %478, ptr noundef nonnull %467) #10
  %479 = load ptr, ptr %443, align 8, !tbaa !73
  %480 = load ptr, ptr %444, align 8, !tbaa !34
  call void %479(ptr noundef nonnull %467, ptr noundef %480, i32 noundef %6) #10
  %481 = icmp slt i32 %459, 6
  %482 = select i1 %445, i1 %481, i1 false
  br i1 %482, label %483, label %487

483:                                              ; preds = %476
  %484 = load ptr, ptr %446, align 8, !tbaa !140
  %485 = call i32 %484(ptr noundef nonnull %478) #10
  %486 = add nsw i32 %485, %459
  br label %487

487:                                              ; preds = %476, %483, %466
  %488 = phi i32 [ %459, %466 ], [ %486, %483 ], [ %459, %476 ]
  %489 = phi i32 [ %458, %466 ], [ 1, %483 ], [ 1, %476 ]
  %490 = add nuw nsw i64 %457, 1
  %491 = icmp eq i64 %490, 4
  br i1 %491, label %454, label %456, !llvm.loop !141

492:                                              ; preds = %454
  %493 = icmp slt i32 %488, 4
  br i1 %493, label %494, label %504

494:                                              ; preds = %492
  %495 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %452
  %496 = load i32, ptr %495, align 16, !tbaa !69
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %497
  store i16 0, ptr %498, align 1, !tbaa !38
  %499 = or disjoint i64 %452, 2
  %500 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %499
  %501 = load i32, ptr %500, align 8, !tbaa !69
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %502
  store i16 0, ptr %503, align 1, !tbaa !38
  br label %525

504:                                              ; preds = %492
  %505 = trunc i64 %450 to i32
  %506 = shl nuw nsw i32 1, %505
  %507 = load i32, ptr %9, align 8, !tbaa !70
  %508 = or i32 %507, %506
  store i32 %508, ptr %9, align 8, !tbaa !70
  br label %525

509:                                              ; preds = %454
  %510 = icmp eq i32 %489, 0
  br i1 %510, label %525, label %511

511:                                              ; preds = %509
  %512 = load ptr, ptr %448, align 16, !tbaa !99
  %513 = load ptr, ptr %431, align 16, !tbaa !34
  %514 = shl i64 %450, 3
  %515 = and i64 %514, 8
  %516 = shl i64 %450, 7
  %517 = and i64 %516, 256
  %518 = or disjoint i64 %515, %517
  %519 = getelementptr inbounds i8, ptr %513, i64 %518
  %520 = getelementptr inbounds [16 x [16 x i16]], ptr %4, i64 0, i64 %452
  call void %512(ptr noundef %519, ptr noundef nonnull %520) #10
  %521 = trunc i64 %450 to i32
  %522 = shl nuw nsw i32 1, %521
  %523 = load i32, ptr %9, align 8, !tbaa !70
  %524 = or i32 %523, %522
  store i32 %524, ptr %9, align 8, !tbaa !70
  br label %525

525:                                              ; preds = %509, %511, %494, %504
  %526 = add nuw nsw i64 %450, 1
  %527 = icmp eq i64 %526, 4
  br i1 %527, label %453, label %449, !llvm.loop !142

528:                                              ; preds = %453
  %529 = icmp slt i32 %455, 6
  br i1 %529, label %530, label %535

530:                                              ; preds = %528
  store i32 0, ptr %9, align 8, !tbaa !70
  %531 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 12
  store i32 0, ptr %531, align 1, !tbaa !38
  %532 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 20
  store i32 0, ptr %532, align 1, !tbaa !38
  %533 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 28
  store i32 0, ptr %533, align 1, !tbaa !38
  %534 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 36
  store i32 0, ptr %534, align 1, !tbaa !38
  br label %556

535:                                              ; preds = %528, %553
  %536 = phi i64 [ %554, %553 ], [ 0, %528 ]
  %537 = load i32, ptr %9, align 8, !tbaa !70
  %538 = trunc i64 %536 to i32
  %539 = shl nuw nsw i32 1, %538
  %540 = and i32 %537, %539
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %553, label %542

542:                                              ; preds = %535
  %543 = load ptr, ptr %448, align 16, !tbaa !99
  %544 = load ptr, ptr %431, align 16, !tbaa !34
  %545 = shl i64 %536, 3
  %546 = and i64 %545, 8
  %547 = shl i64 %536, 7
  %548 = and i64 %547, 256
  %549 = or disjoint i64 %546, %548
  %550 = getelementptr inbounds i8, ptr %544, i64 %549
  %551 = shl nuw nsw i64 %536, 2
  %552 = getelementptr inbounds [16 x [16 x i16]], ptr %4, i64 0, i64 %551
  call void %543(ptr noundef %550, ptr noundef nonnull %552) #10
  br label %553

553:                                              ; preds = %535, %542
  %554 = add nuw nsw i64 %536, 1
  %555 = icmp eq i64 %554, 4
  br i1 %555, label %556, label %535, !llvm.loop !143

556:                                              ; preds = %553, %530, %453
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #9
  br label %557

557:                                              ; preds = %234, %260, %297, %556, %425, %122, %77
  %558 = phi i1 [ %241, %556 ], [ %241, %425 ], [ %55, %122 ], [ %55, %77 ], [ %241, %297 ], [ %241, %260 ], [ %55, %234 ]
  %559 = load i32, ptr %12, align 8, !tbaa !115
  %560 = icmp ult i32 %559, 4
  br i1 %560, label %561, label %577

561:                                              ; preds = %557
  %562 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 60
  %563 = load i32, ptr %562, align 4, !tbaa !144
  %564 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %565 = load i32, ptr %564, align 4, !tbaa !41
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %568, label %567

567:                                              ; preds = %561
  call void @x264_predict_lossless_8x8_chroma(ptr noundef nonnull %0, i32 noundef %563) #11
  br label %577

568:                                              ; preds = %561
  %569 = sext i32 %563 to i64
  %570 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 65, i64 %569
  %571 = load ptr, ptr %570, align 8, !tbaa !34
  %572 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %573 = load ptr, ptr %572, align 8, !tbaa !34
  call void %571(ptr noundef %573) #10
  %574 = load ptr, ptr %570, align 8, !tbaa !34
  %575 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %576 = load ptr, ptr %575, align 16, !tbaa !34
  call void %574(ptr noundef %576) #10
  br label %577

577:                                              ; preds = %557, %567, %568
  %578 = load i32, ptr %12, align 8, !tbaa !115
  %579 = icmp ugt i32 %578, 3
  %580 = zext i1 %579 to i32
  %581 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 69
  %582 = load i32, ptr %581, align 4, !tbaa !145
  call void @x264_mb_encode_8x8_chroma(ptr noundef nonnull %0, i32 noundef %580, i32 noundef %582) #11
  %583 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  %584 = load i32, ptr %583, align 4, !tbaa !85
  %585 = shl i32 %584, 4
  %586 = load i32, ptr %9, align 8, !tbaa !70
  %587 = or i32 %585, %586
  %588 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  %589 = load i32, ptr %588, align 16, !tbaa !146
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %606, label %591

591:                                              ; preds = %577
  %592 = load i8, ptr %11, align 1, !tbaa !38
  %593 = zext i8 %592 to i32
  %594 = shl nuw nsw i32 %593, 8
  %595 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 46
  %596 = load i8, ptr %595, align 1, !tbaa !38
  %597 = zext i8 %596 to i32
  %598 = shl nuw nsw i32 %597, 9
  %599 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 47
  %600 = load i8, ptr %599, align 1, !tbaa !38
  %601 = zext i8 %600 to i32
  %602 = shl nuw nsw i32 %601, 10
  %603 = or i32 %594, %598
  %604 = or i32 %603, %602
  %605 = or i32 %604, %587
  br label %606

606:                                              ; preds = %591, %577
  %607 = phi i32 [ %605, %591 ], [ %587, %577 ]
  %608 = trunc i32 %607 to i16
  %609 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 41
  %610 = load ptr, ptr %609, align 16, !tbaa !147
  %611 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %612 = load i32, ptr %611, align 8, !tbaa !117
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds i16, ptr %610, i64 %613
  store i16 %608, ptr %614, align 2, !tbaa !39
  br i1 %558, label %615, label %642

615:                                              ; preds = %606
  %616 = load i32, ptr %12, align 8, !tbaa !115
  %617 = icmp eq i32 %616, 4
  br i1 %617, label %618, label %636

618:                                              ; preds = %615
  %619 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %620 = load i32, ptr %619, align 4, !tbaa !148
  %621 = icmp eq i32 %620, 16
  %622 = or i32 %586, %584
  %623 = icmp eq i32 %622, 0
  %624 = select i1 %621, i1 %623, i1 false
  br i1 %624, label %625, label %642

625:                                              ; preds = %618
  %626 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 12
  %627 = load i32, ptr %626, align 4, !tbaa !38
  %628 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 10
  %629 = load i32, ptr %628, align 4, !tbaa !38
  %630 = icmp eq i32 %627, %629
  br i1 %630, label %631, label %642

631:                                              ; preds = %625
  %632 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %633 = load i8, ptr %632, align 1, !tbaa !38
  %634 = icmp eq i8 %633, 0
  br i1 %634, label %635, label %642

635:                                              ; preds = %631
  store i32 6, ptr %12, align 8, !tbaa !115
  br label %642

636:                                              ; preds = %615
  %637 = or i32 %586, %584
  %638 = icmp eq i32 %616, 7
  %639 = icmp eq i32 %637, 0
  %640 = select i1 %638, i1 %639, i1 false
  br i1 %640, label %641, label %642

641:                                              ; preds = %636
  store i32 18, ptr %12, align 8, !tbaa !115
  br label %642

642:                                              ; preds = %618, %625, %631, %635, %606, %641, %636, %62, %56, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_macroblock_encode_pskip(ptr noundef %0) unnamed_addr #0 !PGOFuncName !149 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 62
  %3 = load i32, ptr %2, align 4, !tbaa !121
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %75

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 12
  %7 = load i16, ptr %6, align 4, !tbaa !39
  %8 = sext i16 %7 to i32
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 18
  %10 = load i32, ptr %9, align 8, !tbaa !69
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 19
  %12 = load i32, ptr %11, align 16, !tbaa !69
  %13 = tail call fastcc i32 @x264_clip3(i32 noundef %8, i32 noundef %10, i32 noundef %12) #11
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 12, i64 1
  %15 = load i16, ptr %14, align 2, !tbaa !39
  %16 = sext i16 %15 to i32
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 18, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !69
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 19, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !69
  %21 = tail call fastcc i32 @x264_clip3(i32 noundef %16, i32 noundef %18, i32 noundef %20) #11
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70
  %23 = load ptr, ptr %22, align 8, !tbaa !150
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %25 = load ptr, ptr %24, align 16, !tbaa !34
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23
  %28 = load i32, ptr %27, align 16, !tbaa !69
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22
  tail call void %23(ptr noundef %25, i32 noundef 32, ptr noundef nonnull %26, i32 noundef %28, i32 noundef %13, i32 noundef %21, i32 noundef 16, i32 noundef 16, ptr noundef nonnull %29) #10
  %30 = or i32 %21, %13
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20, i64 0, i64 0, i64 4
  %35 = load ptr, ptr %34, align 16, !tbaa !34
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23, i64 1
  %37 = load i32, ptr %36, align 4, !tbaa !69
  %38 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20, i64 0, i64 0, i64 5
  %40 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23, i64 2
  br i1 %31, label %48, label %41

41:                                               ; preds = %5
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !151
  tail call void %43(ptr noundef %33, i32 noundef 32, ptr noundef %35, i32 noundef %37, i32 noundef %13, i32 noundef %21, i32 noundef 8, i32 noundef 8) #10
  %44 = load ptr, ptr %42, align 8, !tbaa !151
  %45 = load ptr, ptr %38, align 16, !tbaa !34
  %46 = load ptr, ptr %39, align 8, !tbaa !34
  %47 = load i32, ptr %40, align 8, !tbaa !69
  tail call void %44(ptr noundef %45, i32 noundef 32, ptr noundef %46, i32 noundef %47, i32 noundef %13, i32 noundef %21, i32 noundef 8, i32 noundef 8) #10
  br label %55

48:                                               ; preds = %5
  %49 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 3
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  tail call void %50(ptr noundef %33, i32 noundef 32, ptr noundef %35, i32 noundef %37, i32 noundef 8) #10
  %51 = load ptr, ptr %49, align 8, !tbaa !34
  %52 = load ptr, ptr %38, align 16, !tbaa !34
  %53 = load ptr, ptr %39, align 8, !tbaa !34
  %54 = load i32, ptr %40, align 8, !tbaa !69
  tail call void %51(ptr noundef %52, i32 noundef 32, ptr noundef %53, i32 noundef %54, i32 noundef 8) #10
  br label %55

55:                                               ; preds = %48, %41
  %56 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 0, i64 1, i32 5
  %57 = load ptr, ptr %56, align 16, !tbaa !152
  %58 = icmp eq ptr %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 0, i64 1
  %61 = getelementptr inbounds ptr, ptr %57, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !34
  %63 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !34
  tail call void %62(ptr noundef %64, i32 noundef 32, ptr noundef %64, i32 noundef 32, ptr noundef nonnull %60, i32 noundef 8) #10
  br label %65

65:                                               ; preds = %59, %55
  %66 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 0, i64 2, i32 5
  %67 = load ptr, ptr %66, align 16, !tbaa !152
  %68 = icmp eq ptr %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 0, i64 2
  %71 = getelementptr inbounds ptr, ptr %67, i64 2
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  %73 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %74 = load ptr, ptr %73, align 16, !tbaa !34
  tail call void %72(ptr noundef %74, i32 noundef 32, ptr noundef %74, i32 noundef 32, ptr noundef nonnull %70, i32 noundef 8) #10
  br label %75

75:                                               ; preds = %65, %69, %1
  tail call fastcc void @x264_macroblock_encode_skip(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: optsize
declare void @x264_mb_mc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @x264_macroblock_encode_skip(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !154 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 12
  store i32 0, ptr %2, align 1, !tbaa !38
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 20
  store i32 0, ptr %3, align 1, !tbaa !38
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 28
  store i32 0, ptr %4, align 1, !tbaa !38
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 36
  store i32 0, ptr %5, align 1, !tbaa !38
  br label %15

6:                                                ; preds = %15
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  store i32 0, ptr %7, align 8, !tbaa !70
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  store i32 0, ptr %8, align 4, !tbaa !85
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 41
  %10 = load ptr, ptr %9, align 16, !tbaa !147
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !117
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i16, ptr %10, i64 %13
  store i16 0, ptr %14, align 2, !tbaa !39
  ret void

15:                                               ; preds = %1, %15
  %16 = phi i64 [ 16, %1 ], [ %21, %15 ]
  %17 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !69
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %19
  store i8 0, ptr %20, align 1, !tbaa !38
  %21 = add nuw nsw i64 %16, 1
  %22 = icmp eq i64 %21, 24
  br i1 %22, label %6, label %15, !llvm.loop !155
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_mb_encode_i16x16(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !156 {
  %3 = alloca [16 x [16 x i16]], align 16
  %4 = alloca [16 x i16], align 16
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %6 = load ptr, ptr %5, align 16, !tbaa !34
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %8 = load ptr, ptr %7, align 16, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #9
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %10 = load i32, ptr %9, align 4, !tbaa !41
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %49, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 4
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  br label %23

15:                                               ; preds = %23
  %16 = mul nsw i32 %46, 15
  store i32 %16, ptr %14, align 8, !tbaa !70
  %17 = call fastcc i32 @array_non_zero_int(ptr noundef nonnull %4, i32 noundef 32) #11, !range !90
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 44
  store i8 %18, ptr %19, align 1, !tbaa !38
  %20 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !72
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54
  call void %21(ptr noundef nonnull %22, ptr noundef nonnull %4) #10
  br label %160

23:                                               ; preds = %12, %23
  %24 = phi i64 [ 0, %12 ], [ %47, %23 ]
  %25 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !38
  %27 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %24
  %28 = load i16, ptr %27, align 2, !tbaa !39
  %29 = load ptr, ptr %13, align 8, !tbaa !94
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %24
  %31 = zext i8 %26 to i64
  %32 = getelementptr inbounds i8, ptr %6, i64 %31
  %33 = zext i16 %28 to i64
  %34 = getelementptr inbounds i8, ptr %8, i64 %33
  %35 = getelementptr inbounds [16 x i8], ptr @block_idx_yx_1d, i64 0, i64 %24
  %36 = load i8, ptr %35, align 1, !tbaa !38
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %37
  %39 = call i32 %29(ptr noundef nonnull %30, ptr noundef %32, ptr noundef %34, ptr noundef nonnull %38) #10
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %24
  %42 = load i32, ptr %41, align 4, !tbaa !69
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %43
  store i8 %40, ptr %44, align 1, !tbaa !38
  %45 = load i32, ptr %14, align 8, !tbaa !70
  %46 = or i32 %45, %39
  store i32 %46, ptr %14, align 8, !tbaa !70
  %47 = add nuw nsw i64 %24, 1
  %48 = icmp eq i64 %47, 16
  br i1 %48, label %15, label %23, !llvm.loop !157

49:                                               ; preds = %2
  %50 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 14
  %51 = load i32, ptr %50, align 8, !tbaa !86
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 9, i32 0
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 6
  %55 = load ptr, ptr %54, align 16, !tbaa !139
  call void %55(ptr noundef nonnull %3, ptr noundef %6, ptr noundef %8) #10
  %56 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 1
  %57 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 5
  %58 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29
  %59 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 8
  %60 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  br label %63

61:                                               ; preds = %92
  %62 = icmp slt i32 %93, 6
  br i1 %62, label %96, label %101

63:                                               ; preds = %49, %92
  %64 = phi i64 [ 0, %49 ], [ %94, %92 ]
  %65 = phi i32 [ %53, %49 ], [ %93, %92 ]
  %66 = getelementptr inbounds [16 x [16 x i16]], ptr %3, i64 0, i64 %64
  %67 = load i16, ptr %66, align 16, !tbaa !39
  %68 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_1d, i64 0, i64 %64
  %69 = load i8, ptr %68, align 1, !tbaa !38
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %70
  store i16 %67, ptr %71, align 2, !tbaa !39
  store i16 0, ptr %66, align 16, !tbaa !39
  %72 = trunc i64 %64 to i32
  %73 = call fastcc i32 @x264_quant_4x4(ptr noundef nonnull %0, ptr noundef nonnull %66, i32 noundef %1, i32 noundef 1, i32 noundef 1, i32 noundef %72) #11
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %64
  %76 = load i32, ptr %75, align 4, !tbaa !69
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %77
  store i8 %74, ptr %78, align 1, !tbaa !38
  %79 = icmp eq i32 %73, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %63
  %81 = load ptr, ptr %56, align 8, !tbaa !72
  %82 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %64
  call void %81(ptr noundef nonnull %82, ptr noundef nonnull %66) #10
  %83 = load ptr, ptr %57, align 8, !tbaa !73
  %84 = load ptr, ptr %58, align 16, !tbaa !34
  call void %83(ptr noundef nonnull %66, ptr noundef %84, i32 noundef %1) #10
  %85 = icmp slt i32 %65, 6
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load ptr, ptr %59, align 8, !tbaa !97
  %88 = call i32 %87(ptr noundef nonnull %82) #10
  %89 = add nsw i32 %88, %65
  br label %90

90:                                               ; preds = %86, %80
  %91 = phi i32 [ %89, %86 ], [ %65, %80 ]
  store i32 15, ptr %60, align 8, !tbaa !70
  br label %92

92:                                               ; preds = %63, %90
  %93 = phi i32 [ %91, %90 ], [ %65, %63 ]
  %94 = add nuw nsw i64 %64, 1
  %95 = icmp eq i64 %94, 16
  br i1 %95, label %61, label %63, !llvm.loop !158

96:                                               ; preds = %61
  store i32 0, ptr %60, align 8, !tbaa !70
  %97 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 12
  store i32 0, ptr %97, align 1, !tbaa !38
  %98 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 20
  store i32 0, ptr %98, align 1, !tbaa !38
  %99 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 28
  store i32 0, ptr %99, align 1, !tbaa !38
  %100 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 36
  store i32 0, ptr %100, align 1, !tbaa !38
  br label %101

101:                                              ; preds = %96, %61
  %102 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 13
  %103 = load ptr, ptr %102, align 8, !tbaa !159
  call void %103(ptr noundef nonnull %4) #10
  %104 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %105 = load i32, ptr %104, align 16, !tbaa !76
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %101
  %108 = call i32 @x264_quant_dc_trellis(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 0, i32 noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 0) #10
  br label %126

109:                                              ; preds = %101
  %110 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !160
  %112 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33
  %113 = load ptr, ptr %112, align 16, !tbaa !34
  %114 = sext i32 %1 to i64
  %115 = getelementptr inbounds [16 x i16], ptr %113, i64 %114
  %116 = load i16, ptr %115, align 2, !tbaa !39
  %117 = lshr i16 %116, 1
  %118 = zext nneg i16 %117 to i32
  %119 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35
  %120 = load ptr, ptr %119, align 16, !tbaa !34
  %121 = getelementptr inbounds [16 x i16], ptr %120, i64 %114
  %122 = load i16, ptr %121, align 2, !tbaa !39
  %123 = zext i16 %122 to i32
  %124 = shl nuw nsw i32 %123, 1
  %125 = call i32 %111(ptr noundef nonnull %4, i32 noundef %118, i32 noundef %124) #10
  br label %126

126:                                              ; preds = %109, %107
  %127 = phi i32 [ %108, %107 ], [ %125, %109 ]
  %128 = trunc i32 %127 to i8
  %129 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 44
  store i8 %128, ptr %129, align 1, !tbaa !38
  %130 = icmp eq i32 %127, 0
  br i1 %130, label %151, label %131

131:                                              ; preds = %126
  %132 = load ptr, ptr %56, align 8, !tbaa !72
  %133 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54
  call void %132(ptr noundef nonnull %133, ptr noundef nonnull %4) #10
  %134 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 14
  %135 = load ptr, ptr %134, align 16, !tbaa !161
  call void %135(ptr noundef nonnull %4) #10
  %136 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 6
  %137 = load ptr, ptr %136, align 8, !tbaa !162
  %138 = load ptr, ptr %58, align 16, !tbaa !34
  call void %137(ptr noundef nonnull %4, ptr noundef %138, i32 noundef %1) #10
  %139 = load i32, ptr %60, align 8, !tbaa !70
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %157, label %141

141:                                              ; preds = %131, %141
  %142 = phi i64 [ %149, %141 ], [ 0, %131 ]
  %143 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_1d, i64 0, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !38
  %145 = zext i8 %144 to i64
  %146 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %145
  %147 = load i16, ptr %146, align 2, !tbaa !39
  %148 = getelementptr inbounds [16 x [16 x i16]], ptr %3, i64 0, i64 %142
  store i16 %147, ptr %148, align 16, !tbaa !39
  %149 = add nuw nsw i64 %142, 1
  %150 = icmp eq i64 %149, 16
  br i1 %150, label %154, label %141, !llvm.loop !163

151:                                              ; preds = %126
  %152 = load i32, ptr %60, align 8, !tbaa !70
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %141, %151
  %155 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 7
  %156 = load ptr, ptr %155, align 8, !tbaa !164
  call void %156(ptr noundef %8, ptr noundef nonnull %3) #10
  br label %160

157:                                              ; preds = %131
  %158 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 8
  %159 = load ptr, ptr %158, align 16, !tbaa !165
  call void %159(ptr noundef %8, ptr noundef nonnull %4) #10
  br label %160

160:                                              ; preds = %151, %154, %157, %15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %3) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @x264_macroblock_probe_skip(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x [16 x i16]], align 16
  %4 = alloca [4 x i16], align 16
  %5 = alloca [16 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 68
  %7 = load i32, ptr %6, align 16, !tbaa !114
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 10
  %11 = load i16, ptr %10, align 4, !tbaa !39
  %12 = sext i16 %11 to i32
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 18
  %14 = load i32, ptr %13, align 8, !tbaa !69
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 19
  %16 = load i32, ptr %15, align 16, !tbaa !69
  %17 = tail call fastcc i32 @x264_clip3(i32 noundef %12, i32 noundef %14, i32 noundef %16) #11
  %18 = trunc i32 %17 to i16
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 10, i64 1
  %20 = load i16, ptr %19, align 2, !tbaa !39
  %21 = sext i16 %20 to i32
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 18, i64 1
  %23 = load i32, ptr %22, align 4, !tbaa !69
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 19, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !69
  %26 = tail call fastcc i32 @x264_clip3(i32 noundef %21, i32 noundef %23, i32 noundef %25) #11
  %27 = trunc i32 %26 to i16
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70
  %29 = load ptr, ptr %28, align 8, !tbaa !150
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %31 = load ptr, ptr %30, align 16, !tbaa !34
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23
  %34 = load i32, ptr %33, align 16, !tbaa !69
  %35 = shl i32 %17, 16
  %36 = ashr exact i32 %35, 16
  %37 = shl i32 %26, 16
  %38 = ashr exact i32 %37, 16
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22
  tail call void %29(ptr noundef %31, i32 noundef 32, ptr noundef nonnull %32, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef 16, i32 noundef 16, ptr noundef nonnull %39) #10
  br label %40

40:                                               ; preds = %9, %2
  %41 = phi i16 [ undef, %2 ], [ %18, %9 ]
  %42 = phi i16 [ undef, %2 ], [ %27, %9 ]
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 2
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %45 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %46 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 1
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 1
  %48 = sext i32 %7 to i64
  %49 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 1
  %50 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 1
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 9
  br label %52

52:                                               ; preds = %40, %90
  %53 = phi i32 [ 0, %40 ], [ %87, %90 ]
  %54 = phi i32 [ 0, %40 ], [ %91, %90 ]
  %55 = shl nuw nsw i32 %54, 3
  %56 = and i32 %55, 8
  %57 = lshr i32 %54, 1
  %58 = shl nuw nsw i32 %57, 7
  %59 = or disjoint i32 %56, %58
  %60 = shl nuw nsw i32 %57, 8
  %61 = or disjoint i32 %56, %60
  %62 = load ptr, ptr %43, align 16, !tbaa !96
  %63 = load ptr, ptr %44, align 16, !tbaa !34
  %64 = zext nneg i32 %59 to i64
  %65 = getelementptr inbounds i8, ptr %63, i64 %64
  %66 = load ptr, ptr %45, align 16, !tbaa !34
  %67 = zext nneg i32 %61 to i64
  %68 = getelementptr inbounds i8, ptr %66, i64 %67
  call void %62(ptr noundef nonnull %3, ptr noundef %65, ptr noundef %68) #10
  br label %69

69:                                               ; preds = %52, %86
  %70 = phi i64 [ 0, %52 ], [ %88, %86 ]
  %71 = phi i32 [ %53, %52 ], [ %87, %86 ]
  %72 = load ptr, ptr %46, align 8, !tbaa !77
  %73 = getelementptr inbounds [4 x [16 x i16]], ptr %3, i64 0, i64 %70
  %74 = load ptr, ptr %47, align 8, !tbaa !34
  %75 = getelementptr inbounds [16 x i16], ptr %74, i64 %48
  %76 = load ptr, ptr %49, align 8, !tbaa !34
  %77 = getelementptr inbounds [16 x i16], ptr %76, i64 %48
  %78 = call i32 %72(ptr noundef nonnull %73, ptr noundef %75, ptr noundef %77) #10
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %69
  %81 = load ptr, ptr %50, align 8, !tbaa !72
  call void %81(ptr noundef nonnull %5, ptr noundef nonnull %73) #10
  %82 = load ptr, ptr %51, align 8, !tbaa !140
  %83 = call i32 %82(ptr noundef nonnull %5) #10
  %84 = add nsw i32 %83, %71
  %85 = icmp sgt i32 %84, 5
  br i1 %85, label %193, label %86

86:                                               ; preds = %80, %69
  %87 = phi i32 [ %84, %80 ], [ %71, %69 ]
  %88 = add nuw nsw i64 %70, 1
  %89 = icmp eq i64 %88, 4
  br i1 %89, label %90, label %69, !llvm.loop !166

90:                                               ; preds = %86
  %91 = add nuw nsw i32 %54, 1
  %92 = icmp eq i32 %91, 4
  br i1 %92, label %93, label %52, !llvm.loop !167

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 69
  %95 = load i32, ptr %94, align 4, !tbaa !145
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [52 x i32], ptr @x264_lambda2_tab, i64 0, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !69
  %99 = add nsw i32 %98, 32
  %100 = ashr i32 %99, 6
  %101 = zext i16 %42 to i32
  %102 = shl nuw i32 %101, 16
  %103 = zext i16 %41 to i32
  %104 = or disjoint i32 %102, %103
  %105 = icmp eq i32 %104, 0
  %106 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %107 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20
  %108 = sext i16 %41 to i32
  %109 = sext i16 %42 to i32
  %110 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 3
  %111 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22
  %112 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 1, i64 3
  %113 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 3
  %114 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 3
  %115 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 3
  %116 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 3
  %117 = shl nsw i32 %100, 2
  %118 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 8
  br label %119

119:                                              ; preds = %93, %190
  %120 = phi i1 [ true, %93 ], [ false, %190 ]
  %121 = phi i64 [ 0, %93 ], [ 1, %190 ]
  %122 = add nuw nsw i64 %121, 1
  %123 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !34
  %125 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 %122
  %126 = load ptr, ptr %125, align 8, !tbaa !34
  br i1 %8, label %127, label %146

127:                                              ; preds = %119
  %128 = or disjoint i64 %121, 4
  %129 = getelementptr inbounds [6 x ptr], ptr %107, i64 0, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !34
  %131 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23, i64 %122
  %132 = load i32, ptr %131, align 4, !tbaa !69
  br i1 %105, label %135, label %133

133:                                              ; preds = %127
  %134 = load ptr, ptr %106, align 8, !tbaa !151
  call void %134(ptr noundef %126, i32 noundef 32, ptr noundef %130, i32 noundef %132, i32 noundef %108, i32 noundef %109, i32 noundef 8, i32 noundef 8) #10
  br label %137

135:                                              ; preds = %127
  %136 = load ptr, ptr %110, align 8, !tbaa !34
  call void %136(ptr noundef %126, i32 noundef 32, ptr noundef %130, i32 noundef %132, i32 noundef 8) #10
  br label %137

137:                                              ; preds = %135, %133
  %138 = getelementptr inbounds [3 x %struct.x264_weight_t], ptr %111, i64 0, i64 %122, i32 5
  %139 = load ptr, ptr %138, align 16, !tbaa !152
  %140 = icmp eq ptr %139, null
  br i1 %140, label %146, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds [3 x %struct.x264_weight_t], ptr %111, i64 0, i64 %122
  %143 = getelementptr inbounds ptr, ptr %139, i64 2
  %144 = load ptr, ptr %143, align 8, !tbaa !34
  %145 = load ptr, ptr %125, align 8, !tbaa !34
  call void %144(ptr noundef %145, i32 noundef 32, ptr noundef %145, i32 noundef 32, ptr noundef nonnull %142, i32 noundef 8) #10
  br label %146

146:                                              ; preds = %137, %141, %119
  %147 = load ptr, ptr %112, align 8, !tbaa !34
  %148 = call i32 %147(ptr noundef %126, i32 noundef 32, ptr noundef %124, i32 noundef 16) #10
  %149 = icmp slt i32 %148, %100
  br i1 %149, label %190, label %150

150:                                              ; preds = %146
  %151 = load ptr, ptr %113, align 8, !tbaa !88
  call void %151(ptr noundef nonnull %4, ptr noundef %124, ptr noundef %126) #10
  %152 = load ptr, ptr %114, align 8, !tbaa !89
  %153 = load ptr, ptr %115, align 8, !tbaa !34
  %154 = getelementptr inbounds [16 x i16], ptr %153, i64 %96
  %155 = load i16, ptr %154, align 2, !tbaa !39
  %156 = lshr i16 %155, 1
  %157 = zext nneg i16 %156 to i32
  %158 = load ptr, ptr %116, align 8, !tbaa !34
  %159 = getelementptr inbounds [16 x i16], ptr %158, i64 %96
  %160 = load i16, ptr %159, align 2, !tbaa !39
  %161 = zext i16 %160 to i32
  %162 = shl nuw nsw i32 %161, 1
  %163 = call i32 %152(ptr noundef nonnull %4, i32 noundef %157, i32 noundef %162) #10
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %193

165:                                              ; preds = %150
  %166 = icmp slt i32 %148, %117
  br i1 %166, label %190, label %167

167:                                              ; preds = %165
  %168 = load ptr, ptr %43, align 16, !tbaa !96
  call void %168(ptr noundef nonnull %3, ptr noundef %124, ptr noundef %126) #10
  br label %169

169:                                              ; preds = %167, %186
  %170 = phi i64 [ 0, %167 ], [ %188, %186 ]
  %171 = phi i32 [ 0, %167 ], [ %187, %186 ]
  %172 = getelementptr inbounds [4 x [16 x i16]], ptr %3, i64 0, i64 %170
  store i16 0, ptr %172, align 16, !tbaa !39
  %173 = load ptr, ptr %46, align 8, !tbaa !77
  %174 = load ptr, ptr %115, align 8, !tbaa !34
  %175 = getelementptr inbounds [16 x i16], ptr %174, i64 %96
  %176 = load ptr, ptr %116, align 8, !tbaa !34
  %177 = getelementptr inbounds [16 x i16], ptr %176, i64 %96
  %178 = call i32 %173(ptr noundef nonnull %172, ptr noundef %175, ptr noundef %177) #10
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %169
  %181 = load ptr, ptr %50, align 8, !tbaa !72
  call void %181(ptr noundef nonnull %5, ptr noundef nonnull %172) #10
  %182 = load ptr, ptr %118, align 8, !tbaa !97
  %183 = call i32 %182(ptr noundef nonnull %5) #10
  %184 = add nsw i32 %183, %171
  %185 = icmp sgt i32 %184, 6
  br i1 %185, label %193, label %186

186:                                              ; preds = %180, %169
  %187 = phi i32 [ %184, %180 ], [ %171, %169 ]
  %188 = add nuw nsw i64 %170, 1
  %189 = icmp eq i64 %188, 4
  br i1 %189, label %190, label %169, !llvm.loop !168

190:                                              ; preds = %186, %146, %165
  br i1 %120, label %119, label %191, !llvm.loop !169

191:                                              ; preds = %190
  %192 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 62
  store i32 1, ptr %192, align 4, !tbaa !121
  br label %193

193:                                              ; preds = %80, %150, %180, %191
  %194 = phi i32 [ 1, %191 ], [ 0, %180 ], [ 0, %150 ], [ 0, %80 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #9
  ret i32 %194
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @x264_clip3(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 !PGOFuncName !170 {
  %4 = icmp slt i32 %0, %1
  %5 = tail call i32 @llvm.smin.i32(i32 %0, i32 %2)
  %6 = select i1 %4, i32 %1, i32 %5
  ret i32 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @x264_noise_reduction_update(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 17
  %3 = load i32, ptr %2, align 4, !tbaa !171
  %4 = sext i32 %3 to i64
  br label %6

5:                                                ; preds = %29
  ret void

6:                                                ; preds = %1, %29
  %7 = phi i1 [ true, %1 ], [ false, %29 ]
  %8 = phi i64 [ 0, %1 ], [ 1, %29 ]
  %9 = select i1 %7, ptr @x264_dct4_weight2_tab, ptr @x264_dct8_weight2_tab
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 60, i64 %8
  %11 = load i32, ptr %10, align 4, !tbaa !69
  %12 = select i1 %7, i32 262144, i32 65536
  %13 = icmp ugt i32 %11, %12
  %14 = select i1 %7, i64 16, i64 64
  br i1 %13, label %15, label %25

15:                                               ; preds = %6, %15
  %16 = phi i64 [ %20, %15 ], [ 0, %6 ]
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 58, i64 %8, i64 %16
  %18 = load <4 x i32>, ptr %17, align 4, !tbaa !69
  %19 = lshr <4 x i32> %18, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %19, ptr %17, align 4, !tbaa !69
  %20 = add nuw i64 %16, 4
  %21 = icmp eq i64 %20, %14
  br i1 %21, label %22, label %15, !llvm.loop !172

22:                                               ; preds = %15
  %23 = load i32, ptr %10, align 4, !tbaa !69
  %24 = lshr i32 %23, 1
  store i32 %24, ptr %10, align 4, !tbaa !69
  br label %25

25:                                               ; preds = %6, %22
  %26 = phi i32 [ %24, %22 ], [ %11, %6 ]
  %27 = zext nneg i32 %26 to i64
  %28 = mul nsw i64 %27, %4
  br label %30

29:                                               ; preds = %30
  br i1 %7, label %6, label %5, !llvm.loop !175

30:                                               ; preds = %25, %30
  %31 = phi i64 [ 0, %25 ], [ %47, %30 ]
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 58, i64 %8, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !69
  %34 = lshr i32 %33, 1
  %35 = zext nneg i32 %34 to i64
  %36 = add nsw i64 %28, %35
  %37 = zext i32 %33 to i64
  %38 = getelementptr inbounds i16, ptr %9, i64 %31
  %39 = load i16, ptr %38, align 2, !tbaa !39
  %40 = zext i16 %39 to i64
  %41 = mul nuw nsw i64 %40, %37
  %42 = lshr i64 %41, 8
  %43 = add nuw nsw i64 %42, 1
  %44 = udiv i64 %36, %43
  %45 = trunc i64 %44 to i16
  %46 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 59, i64 %8, i64 %31
  store i16 %45, ptr %46, align 2, !tbaa !39
  %47 = add nuw nsw i64 %31, 1
  %48 = icmp eq i64 %47, %14
  br i1 %48, label %29, label %30, !llvm.loop !176
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_macroblock_encode_p8x8(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  %4 = alloca [64 x i16], align 16
  %5 = alloca [4 x [16 x i16]], align 16
  %6 = alloca [16 x i16], align 16
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 68
  %8 = load i32, ptr %7, align 16, !tbaa !114
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
  %26 = load i32, ptr %25, align 8, !tbaa !86
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 62
  %28 = load i32, ptr %27, align 4, !tbaa !121
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  tail call void @x264_mb_mc_8x8(ptr noundef nonnull %0, i32 noundef %1) #10
  br label %31

31:                                               ; preds = %30, %2
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %33 = load i32, ptr %32, align 4, !tbaa !41
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  %36 = load i32, ptr %35, align 4, !tbaa !123
  %37 = icmp eq i32 %36, 0
  br i1 %34, label %120, label %38

38:                                               ; preds = %31
  br i1 %37, label %59, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !78
  %42 = sext i32 %1 to i64
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2, i64 %42
  %44 = tail call i32 %41(ptr noundef nonnull %43, ptr noundef %18, ptr noundef %24) #10
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
  %79 = tail call i32 %67(ptr noundef nonnull %68, ptr noundef %73, ptr noundef %78) #10
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
  br i1 %88, label %89, label %64, !llvm.loop !177

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
  %99 = phi i1 [ true, %89 ], [ false, %98 ]
  %100 = phi i64 [ 0, %89 ], [ 1, %98 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  %101 = add nuw nsw i64 %100, 1
  %102 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !34
  %104 = getelementptr inbounds i8, ptr %103, i64 %92
  %105 = getelementptr inbounds i8, ptr %104, i64 %94
  %106 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 %101
  %107 = load ptr, ptr %106, align 8, !tbaa !34
  %108 = getelementptr inbounds i8, ptr %107, i64 %92
  %109 = getelementptr inbounds i8, ptr %108, i64 %17
  %110 = load ptr, ptr %95, align 8, !tbaa !94
  %111 = shl nuw nsw i64 %100, 2
  %112 = add nsw i64 %111, %97
  %113 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %112
  %114 = call i32 %110(ptr noundef nonnull %113, ptr noundef %105, ptr noundef %109, ptr noundef nonnull %3) #10
  %115 = trunc i32 %114 to i8
  %116 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %112
  %117 = load i32, ptr %116, align 4, !tbaa !69
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %118
  store i8 %115, ptr %119, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br i1 %99, label %98, label %284, !llvm.loop !178

120:                                              ; preds = %31
  br i1 %37, label %164, label %121

121:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #9
  %122 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 9
  %123 = load ptr, ptr %122, align 8, !tbaa !79
  call void %123(ptr noundef nonnull %4, ptr noundef %18, ptr noundef %24) #10
  %124 = call fastcc i32 @x264_quant_8x8(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %8, i32 noundef 0, i32 noundef %1) #11
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %149, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72
  %128 = load ptr, ptr %127, align 8, !tbaa !80
  %129 = sext i32 %1 to i64
  %130 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2, i64 %129
  call void %128(ptr noundef nonnull %130, ptr noundef nonnull %4) #10
  %131 = icmp eq i32 %26, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %134 = load i32, ptr %133, align 16, !tbaa !76
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 10
  %138 = load ptr, ptr %137, align 8, !tbaa !136
  %139 = call i32 %138(ptr noundef nonnull %130) #10
  %140 = icmp slt i32 %139, 4
  br i1 %140, label %149, label %141

141:                                              ; preds = %126, %132, %136
  %142 = phi i32 [ 1, %136 ], [ %124, %132 ], [ %124, %126 ]
  %143 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 4
  %144 = load ptr, ptr %143, align 8, !tbaa !81
  %145 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 1
  %146 = load ptr, ptr %145, align 8, !tbaa !34
  call void %144(ptr noundef nonnull %4, ptr noundef %146, i32 noundef %8) #10
  %147 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 10
  %148 = load ptr, ptr %147, align 16, !tbaa !82
  call void %148(ptr noundef %24, ptr noundef nonnull %4) #10
  br label %149

149:                                              ; preds = %121, %136, %141
  %150 = phi i16 [ 257, %141 ], [ 0, %136 ], [ 0, %121 ]
  %151 = phi i32 [ %142, %141 ], [ 0, %136 ], [ 0, %121 ]
  %152 = shl nsw i32 %1, 2
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %153
  %155 = load i32, ptr %154, align 16, !tbaa !69
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %156
  store i16 %150, ptr %157, align 1, !tbaa !38
  %158 = or disjoint i32 %152, 2
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %159
  %161 = load i32, ptr %160, align 8, !tbaa !69
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %162
  store i16 %150, ptr %163, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #9
  br label %223

164:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #9
  %165 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 2
  %166 = load ptr, ptr %165, align 16, !tbaa !96
  call void %166(ptr noundef nonnull %5, ptr noundef %18, ptr noundef %24) #10
  %167 = shl nsw i32 %1, 2
  %168 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 1
  %169 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 5
  %170 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 1
  %171 = icmp eq i32 %26, 0
  %172 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 9
  %173 = sext i32 %167 to i64
  br label %180

174:                                              ; preds = %203
  %175 = icmp ne i32 %26, 0
  %176 = icmp slt i32 %205, 4
  %177 = select i1 %175, i1 %176, i1 false
  %178 = select i1 %177, i32 0, i32 %204
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %211, label %208

180:                                              ; preds = %164, %203
  %181 = phi i64 [ 0, %164 ], [ %206, %203 ]
  %182 = phi i32 [ 0, %164 ], [ %205, %203 ]
  %183 = phi i32 [ 0, %164 ], [ %204, %203 ]
  %184 = getelementptr inbounds [4 x [16 x i16]], ptr %5, i64 0, i64 %181
  %185 = add nuw nsw i64 %181, %173
  %186 = trunc i64 %185 to i32
  %187 = call fastcc i32 @x264_quant_4x4(ptr noundef nonnull %0, ptr noundef nonnull %184, i32 noundef %8, i32 noundef 2, i32 noundef 0, i32 noundef %186) #11
  %188 = trunc i32 %187 to i8
  %189 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %185
  %190 = load i32, ptr %189, align 4, !tbaa !69
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %191
  store i8 %188, ptr %192, align 1, !tbaa !38
  %193 = icmp eq i32 %187, 0
  br i1 %193, label %203, label %194

194:                                              ; preds = %180
  %195 = load ptr, ptr %168, align 8, !tbaa !72
  %196 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %185
  call void %195(ptr noundef nonnull %196, ptr noundef nonnull %184) #10
  %197 = load ptr, ptr %169, align 8, !tbaa !73
  %198 = load ptr, ptr %170, align 8, !tbaa !34
  call void %197(ptr noundef nonnull %184, ptr noundef %198, i32 noundef %8) #10
  br i1 %171, label %203, label %199

199:                                              ; preds = %194
  %200 = load ptr, ptr %172, align 8, !tbaa !140
  %201 = call i32 %200(ptr noundef nonnull %196) #10
  %202 = add nsw i32 %201, %182
  br label %203

203:                                              ; preds = %194, %199, %180
  %204 = phi i32 [ %183, %180 ], [ 1, %199 ], [ 1, %194 ]
  %205 = phi i32 [ %182, %180 ], [ %202, %199 ], [ %182, %194 ]
  %206 = add nuw nsw i64 %181, 1
  %207 = icmp eq i64 %206, 4
  br i1 %207, label %174, label %180, !llvm.loop !179

208:                                              ; preds = %174
  %209 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 4
  %210 = load ptr, ptr %209, align 16, !tbaa !99
  call void %210(ptr noundef %24, ptr noundef nonnull %5) #10
  br label %222

211:                                              ; preds = %174
  %212 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %173
  %213 = load i32, ptr %212, align 16, !tbaa !69
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %214
  store i16 0, ptr %215, align 1, !tbaa !38
  %216 = or disjoint i32 %167, 2
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %217
  %219 = load i32, ptr %218, align 8, !tbaa !69
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %220
  store i16 0, ptr %221, align 1, !tbaa !38
  br label %222

222:                                              ; preds = %211, %208
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #9
  br label %223

223:                                              ; preds = %222, %149
  %224 = phi i32 [ %151, %149 ], [ %178, %222 ]
  %225 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 69
  %226 = load i32, ptr %225, align 4, !tbaa !145
  %227 = shl nuw nsw i32 %11, 2
  %228 = zext nneg i32 %227 to i64
  %229 = shl nsw i32 %15, 6
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71
  %232 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %233 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 1
  %234 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 3
  %235 = sext i32 %226 to i64
  %236 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 3
  %237 = add nsw i32 %1, 16
  %238 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 1
  %239 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 5
  %240 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 3
  %241 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 1
  %242 = sext i32 %237 to i64
  br label %243

243:                                              ; preds = %223, %283
  %244 = phi i1 [ true, %223 ], [ false, %283 ]
  %245 = phi i64 [ 0, %223 ], [ 1, %283 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #9
  %246 = add nuw nsw i64 %245, 1
  %247 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 %246
  %248 = load ptr, ptr %247, align 8, !tbaa !34
  %249 = getelementptr inbounds i8, ptr %248, i64 %228
  %250 = getelementptr inbounds i8, ptr %249, i64 %230
  %251 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 %246
  %252 = load ptr, ptr %251, align 8, !tbaa !34
  %253 = getelementptr inbounds i8, ptr %252, i64 %228
  %254 = getelementptr inbounds i8, ptr %253, i64 %17
  %255 = load ptr, ptr %231, align 16, !tbaa !71
  call void %255(ptr noundef nonnull %6, ptr noundef %250, ptr noundef %254) #10
  store i16 0, ptr %6, align 16, !tbaa !39
  %256 = load i32, ptr %232, align 16, !tbaa !76
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %260, label %258

258:                                              ; preds = %243
  %259 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 3, i32 noundef %226, i32 noundef 4, i32 noundef 0, i32 noundef 1, i32 noundef 0) #10
  br label %267

260:                                              ; preds = %243
  %261 = load ptr, ptr %233, align 8, !tbaa !77
  %262 = load ptr, ptr %234, align 8, !tbaa !34
  %263 = getelementptr inbounds [16 x i16], ptr %262, i64 %235
  %264 = load ptr, ptr %236, align 8, !tbaa !34
  %265 = getelementptr inbounds [16 x i16], ptr %264, i64 %235
  %266 = call i32 %261(ptr noundef nonnull %6, ptr noundef %263, ptr noundef %265) #10
  br label %267

267:                                              ; preds = %260, %258
  %268 = phi i32 [ %259, %258 ], [ %266, %260 ]
  %269 = trunc i32 %268 to i8
  %270 = shl nuw nsw i64 %245, 2
  %271 = add nsw i64 %270, %242
  %272 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %271
  %273 = load i32, ptr %272, align 4, !tbaa !69
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %274
  store i8 %269, ptr %275, align 1, !tbaa !38
  %276 = icmp eq i32 %268, 0
  br i1 %276, label %283, label %277

277:                                              ; preds = %267
  %278 = load ptr, ptr %238, align 8, !tbaa !72
  %279 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %271
  call void %278(ptr noundef nonnull %279, ptr noundef nonnull %6) #10
  %280 = load ptr, ptr %239, align 8, !tbaa !73
  %281 = load ptr, ptr %240, align 8, !tbaa !34
  call void %280(ptr noundef nonnull %6, ptr noundef %281, i32 noundef %226) #10
  %282 = load ptr, ptr %241, align 8, !tbaa !74
  call void %282(ptr noundef %254, ptr noundef nonnull %6) #10
  br label %283

283:                                              ; preds = %277, %267
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  br i1 %244, label %243, label %284, !llvm.loop !180

284:                                              ; preds = %98, %283
  %285 = phi i32 [ %224, %283 ], [ %90, %98 ]
  %286 = shl nuw i32 1, %1
  %287 = xor i32 %286, -1
  %288 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %289 = load i32, ptr %288, align 8, !tbaa !70
  %290 = and i32 %289, %287
  %291 = shl i32 %285, %1
  %292 = or i32 %290, %291
  store i32 %292, ptr %288, align 8, !tbaa !70
  %293 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  store i32 2, ptr %293, align 4, !tbaa !85
  ret void
}

; Function Attrs: optsize
declare void @x264_mb_mc_8x8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_macroblock_encode_p4x4(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [16 x i16], align 16
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 68
  %5 = load i32, ptr %4, align 16, !tbaa !114
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
  %26 = tail call i32 %24(ptr noundef nonnull %25, ptr noundef %12, ptr noundef %18) #10
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %8
  %29 = load i32, ptr %28, align 4, !tbaa !69
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %30
  store i8 %27, ptr %31, align 1, !tbaa !38
  br label %53

32:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71
  %34 = load ptr, ptr %33, align 16, !tbaa !71
  call void %34(ptr noundef nonnull %3, ptr noundef %12, ptr noundef %18) #10
  %35 = call fastcc i32 @x264_quant_4x4(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %5, i32 noundef 2, i32 noundef 0, i32 noundef %1) #11
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %8
  %38 = load i32, ptr %37, align 4, !tbaa !69
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %39
  store i8 %36, ptr %40, align 1, !tbaa !38
  %41 = icmp eq i32 %35, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !72
  %45 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %8
  call void %44(ptr noundef nonnull %45, ptr noundef nonnull %3) #10
  %46 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !73
  %48 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !34
  call void %47(ptr noundef nonnull %3, ptr noundef %49, i32 noundef %5) #10
  %50 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !74
  call void %51(ptr noundef %18, ptr noundef nonnull %3) #10
  br label %52

52:                                               ; preds = %42, %32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  br label %53

53:                                               ; preds = %52, %22
  ret void
}

; Function Attrs: optsize
declare i32 @x264_quant_8x8_trellis(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @idct_dequant_round_2x2_dc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 !PGOFuncName !181 {
  %5 = alloca [4 x i16], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call fastcc void @idct_dequant_2x2_dconly(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i32 noundef %3) #11
  %6 = load <4 x i16>, ptr %0, align 2, !tbaa !39
  %7 = sext <4 x i16> %6 to <4 x i32>
  %8 = load <4 x i16>, ptr %5, align 8, !tbaa !39
  %9 = sext <4 x i16> %8 to <4 x i32>
  %10 = add nsw <4 x i32> %9, <i32 32, i32 32, i32 32, i32 32>
  %11 = xor <4 x i32> %10, %7
  %12 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %11)
  %13 = ashr i32 %12, 6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  ret i32 %13
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v4i16(<4 x i16>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }

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
!72 = !{!42, !35, i64 33040}
!73 = !{!42, !35, i64 33120}
!74 = !{!42, !35, i64 32920}
!75 = !{!"macroblock.c:x264_quant_4x4"}
!76 = !{!42, !44, i64 16416}
!77 = !{!42, !35, i64 33088}
!78 = !{!42, !35, i64 33048}
!79 = !{!42, !35, i64 32984}
!80 = !{!42, !35, i64 33032}
!81 = !{!42, !35, i64 33112}
!82 = !{!42, !35, i64 32992}
!83 = !{!"macroblock.c:x264_quant_8x8"}
!84 = !{!42, !35, i64 33080}
!85 = !{!42, !44, i64 17404}
!86 = !{!42, !44, i64 16424}
!87 = !{!42, !35, i64 32152}
!88 = !{!42, !35, i64 32936}
!89 = !{!42, !35, i64 33104}
!90 = !{i32 0, i32 2}
!91 = !{!42, !35, i64 32952}
!92 = distinct !{!92, !93}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!42, !35, i64 33064}
!95 = distinct !{!95, !93}
!96 = !{!42, !35, i64 32928}
!97 = !{!42, !35, i64 33144}
!98 = distinct !{!98, !93}
!99 = !{!42, !35, i64 32944}
!100 = distinct !{!100, !93}
!101 = !{!"macroblock.c:x264_mb_optimize_chroma_dc"}
!102 = !{i32 -33554432, i32 33554432}
!103 = distinct !{!103, !93}
!104 = distinct !{!104, !93}
!105 = !{!"macroblock.c:zigzag_scan_2x2_dc"}
!106 = !{!"macroblock.c:idct_dequant_2x2_dconly"}
!107 = !{!"macroblock.c:array_non_zero_int"}
!108 = distinct !{!108, !93}
!109 = !{!"macroblock.c:dct2x2dc"}
!110 = !{!"macroblock.c:idct_dequant_2x2_dc"}
!111 = !{!42, !35, i64 14680}
!112 = !{!42, !44, i64 16436}
!113 = !{!42, !35, i64 32776}
!114 = !{!42, !44, i64 25792}
!115 = !{!42, !44, i64 17384}
!116 = !{!42, !44, i64 7268}
!117 = !{!42, !44, i64 16392}
!118 = !{!42, !44, i64 7252}
!119 = !{!42, !44, i64 16372}
!120 = !{!42, !35, i64 16616}
!121 = !{!42, !44, i64 17420}
!122 = !{!42, !44, i64 17408}
!123 = !{!42, !44, i64 17396}
!124 = !{!42, !44, i64 17416}
!125 = !{!42, !44, i64 20100}
!126 = !{!42, !35, i64 32816}
!127 = !{!42, !35, i64 31552}
!128 = distinct !{!128, !93}
!129 = !{!42, !44, i64 20096}
!130 = distinct !{!130, !93}
!131 = distinct !{!131, !93}
!132 = distinct !{!132, !93}
!133 = !{!42, !35, i64 33000}
!134 = !{!42, !44, i64 16420}
!135 = !{!42, !35, i64 33136}
!136 = !{!42, !35, i64 33160}
!137 = distinct !{!137, !93}
!138 = distinct !{!138, !93}
!139 = !{!42, !35, i64 32960}
!140 = !{!42, !35, i64 33152}
!141 = distinct !{!141, !93}
!142 = distinct !{!142, !93}
!143 = distinct !{!143, !93}
!144 = !{!42, !44, i64 17412}
!145 = !{!42, !44, i64 25796}
!146 = !{!42, !44, i64 128}
!147 = !{!42, !35, i64 16640}
!148 = !{!42, !44, i64 17388}
!149 = !{!"macroblock.c:x264_macroblock_encode_pskip"}
!150 = !{!42, !35, i64 32616}
!151 = !{!42, !35, i64 32632}
!152 = !{!153, !35, i64 48}
!153 = !{!"x264_weight_t", !36, i64 0, !36, i64 16, !44, i64 32, !44, i64 36, !44, i64 40, !35, i64 48}
!154 = !{!"macroblock.c:x264_macroblock_encode_skip"}
!155 = distinct !{!155, !93}
!156 = !{!"macroblock.c:x264_mb_encode_i16x16"}
!157 = distinct !{!157, !93}
!158 = distinct !{!158, !93}
!159 = !{!42, !35, i64 33016}
!160 = !{!42, !35, i64 33096}
!161 = !{!42, !35, i64 33024}
!162 = !{!42, !35, i64 33128}
!163 = distinct !{!163, !93}
!164 = !{!42, !35, i64 32968}
!165 = !{!42, !35, i64 32976}
!166 = distinct !{!166, !93}
!167 = distinct !{!167, !93}
!168 = distinct !{!168, !93}
!169 = distinct !{!169, !93}
!170 = !{!"macroblock.c:x264_clip3"}
!171 = !{!42, !44, i64 452}
!172 = distinct !{!172, !93, !173, !174}
!173 = !{!"llvm.loop.isvectorized", i32 1}
!174 = !{!"llvm.loop.unroll.runtime.disable"}
!175 = distinct !{!175, !93}
!176 = distinct !{!176, !93}
!177 = distinct !{!177, !93}
!178 = distinct !{!178, !93}
!179 = distinct !{!179, !93}
!180 = distinct !{!180, !93}
!181 = !{!"macroblock.c:idct_dequant_round_2x2_dc"}
