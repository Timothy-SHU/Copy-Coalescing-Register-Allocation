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
@block_idx_yx_1d = internal unnamed_addr constant [16 x i8] c"\00\04\01\05\08\0C\09\0D\02\06\03\07\0A\0E\0B\0F", align 16
@block_idx_xy_1d = internal unnamed_addr constant [16 x i8] c"\00\01\04\05\02\03\06\07\08\09\0C\0D\0A\0B\0E\0F", align 16
@x264_dct8_weight2_tab = internal unnamed_addr constant [64 x i16] [i16 256, i16 227, i16 410, i16 227, i16 256, i16 227, i16 410, i16 227, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 410, i16 363, i16 656, i16 363, i16 410, i16 363, i16 656, i16 363, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 256, i16 227, i16 410, i16 227, i16 256, i16 227, i16 410, i16 227, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 410, i16 363, i16 656, i16 363, i16 410, i16 363, i16 656, i16 363, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201], align 16
@x264_dct4_weight2_tab = internal unnamed_addr constant [16 x i16] [i16 800, i16 320, i16 800, i16 320, i16 320, i16 128, i16 320, i16 128, i16 800, i16 320, i16 800, i16 320, i16 320, i16 128, i16 320, i16 128], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_mb_encode_i4x4(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [16 x i16], align 16
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %6 = load ptr, ptr %5, align 16, !tbaa !6
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !10
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds i8, ptr %6, i64 %10
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %13 = load ptr, ptr %12, align 16, !tbaa !6
  %14 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %7
  %15 = load i16, ptr %14, align 2, !tbaa !11
  %16 = zext i16 %15 to i64
  %17 = getelementptr inbounds i8, ptr %13, i64 %16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #9
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %19 = load i32, ptr %18, align 4, !tbaa !13
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %7
  br i1 %20, label %36, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !40
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %7
  %26 = tail call i32 %24(ptr noundef nonnull %25, ptr noundef %11, ptr noundef %17) #10
  %27 = trunc i32 %26 to i8
  %28 = load i32, ptr %21, align 4, !tbaa !41
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %29
  store i8 %27, ptr %30, align 1, !tbaa !10
  %31 = ashr i32 %1, 2
  %32 = shl i32 %26, %31
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %34 = load i32, ptr %33, align 8, !tbaa !42
  %35 = or i32 %34, %32
  store i32 %35, ptr %33, align 8, !tbaa !42
  br label %60

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71
  %38 = load ptr, ptr %37, align 16, !tbaa !43
  call void %38(ptr noundef nonnull %4, ptr noundef %11, ptr noundef %17) #10
  %39 = call fastcc i32 @x264_quant_4x4(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %2, i32 noundef 2, i32 noundef 1, i32 noundef %1) #11
  %40 = trunc i32 %39 to i8
  %41 = load i32, ptr %21, align 4, !tbaa !41
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %42
  store i8 %40, ptr %43, align 1, !tbaa !10
  %44 = icmp eq i32 %39, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %36
  %46 = ashr i32 %1, 2
  %47 = shl nuw i32 1, %46
  %48 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %49 = load i32, ptr %48, align 8, !tbaa !42
  %50 = or i32 %49, %47
  store i32 %50, ptr %48, align 8, !tbaa !42
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !44
  %53 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %7
  call void %52(ptr noundef nonnull %53, ptr noundef nonnull %4) #10
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !45
  %56 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29
  %57 = load ptr, ptr %56, align 16, !tbaa !6
  call void %55(ptr noundef nonnull %4, ptr noundef %57, i32 noundef %2) #10
  %58 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !46
  call void %59(ptr noundef %17, ptr noundef nonnull %4) #10
  br label %60

60:                                               ; preds = %36, %45, %22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @x264_quant_4x4(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = icmp eq i32 %4, 0
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %9 = load i32, ptr %8, align 16, !tbaa !47
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = zext i1 %7 to i32
  %13 = tail call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %12, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef %5) #10
  br label %26

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  %17 = zext i1 %7 to i64
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = sext i32 %2 to i64
  %21 = getelementptr inbounds [16 x i16], ptr %19, i64 %20
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 %17
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = getelementptr inbounds [16 x i16], ptr %23, i64 %20
  %25 = tail call i32 %16(ptr noundef %1, ptr noundef %21, ptr noundef %24) #10
  br label %26

26:                                               ; preds = %14, %11
  %27 = phi i32 [ %13, %11 ], [ %25, %14 ]
  ret i32 %27
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @x264_quant_4x4_trellis(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_mb_encode_i8x8(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [64 x i16], align 16
  %5 = shl i32 %1, 3
  %6 = and i32 %5, 8
  %7 = shl nsw i32 %1, 2
  %8 = and i32 %7, -8
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %10 = load ptr, ptr %9, align 16, !tbaa !6
  %11 = shl nsw i32 %8, 4
  %12 = or disjoint i32 %11, %6
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %10, i64 %13
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %16 = load ptr, ptr %15, align 16, !tbaa !6
  %17 = shl nsw i32 %8, 5
  %18 = or disjoint i32 %17, %6
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %16, i64 %19
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #9
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %22 = load i32, ptr %21, align 4, !tbaa !13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %47, label %24

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !49
  %27 = sext i32 %1 to i64
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2, i64 %27
  %29 = tail call i32 %26(ptr noundef nonnull %28, ptr noundef %14, ptr noundef %20) #10
  %30 = trunc i32 %29 to i16
  %31 = mul i16 %30, 257
  %32 = sext i32 %7 to i64
  %33 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %32
  %34 = load i32, ptr %33, align 16, !tbaa !41
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %35
  store i16 %31, ptr %36, align 1, !tbaa !10
  %37 = or disjoint i32 %7, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %38
  %40 = load i32, ptr %39, align 8, !tbaa !41
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %41
  store i16 %31, ptr %42, align 1, !tbaa !10
  %43 = shl i32 %29, %1
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %45 = load i32, ptr %44, align 8, !tbaa !42
  %46 = or i32 %45, %43
  store i32 %46, ptr %44, align 8, !tbaa !42
  br label %90

47:                                               ; preds = %3
  %48 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 9
  %49 = load ptr, ptr %48, align 8, !tbaa !50
  call void %49(ptr noundef nonnull %4, ptr noundef %14, ptr noundef %20) #10
  %50 = call fastcc i32 @x264_quant_8x8(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %2, i32 noundef 1, i32 noundef %1) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %78, label %52

52:                                               ; preds = %47
  %53 = shl nuw i32 1, %1
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %55 = load i32, ptr %54, align 8, !tbaa !42
  %56 = or i32 %55, %53
  store i32 %56, ptr %54, align 8, !tbaa !42
  %57 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72
  %58 = load ptr, ptr %57, align 8, !tbaa !51
  %59 = sext i32 %1 to i64
  %60 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2, i64 %59
  call void %58(ptr noundef nonnull %60, ptr noundef nonnull %4) #10
  %61 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !52
  %63 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30
  %64 = load ptr, ptr %63, align 16, !tbaa !6
  call void %62(ptr noundef nonnull %4, ptr noundef %64, i32 noundef %2) #10
  %65 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 10
  %66 = load ptr, ptr %65, align 16, !tbaa !53
  call void %66(ptr noundef %20, ptr noundef nonnull %4) #10
  %67 = sext i32 %7 to i64
  %68 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %67
  %69 = load i32, ptr %68, align 16, !tbaa !41
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %70
  store i16 257, ptr %71, align 1, !tbaa !10
  %72 = or disjoint i32 %7, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %73
  %75 = load i32, ptr %74, align 8, !tbaa !41
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %76
  store i16 257, ptr %77, align 1, !tbaa !10
  br label %90

78:                                               ; preds = %47
  %79 = sext i32 %7 to i64
  %80 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %79
  %81 = load i32, ptr %80, align 16, !tbaa !41
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %82
  store i16 0, ptr %83, align 1, !tbaa !10
  %84 = or disjoint i32 %7, 2
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %85
  %87 = load i32, ptr %86, align 8, !tbaa !41
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %88
  store i16 0, ptr %89, align 1, !tbaa !10
  br label %90

90:                                               ; preds = %52, %78, %24
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @x264_quant_8x8(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = icmp eq i32 %3, 0
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %8 = load i32, ptr %7, align 16, !tbaa !47
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = zext i1 %6 to i32
  %12 = tail call i32 @x264_quant_8x8_trellis(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %11, i32 noundef %2, i32 noundef %3, i32 noundef %4) #10
  br label %25

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = zext i1 %6 to i64
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 34, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = sext i32 %2 to i64
  %20 = getelementptr inbounds [64 x i16], ptr %18, i64 %19
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 36, i64 %16
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = getelementptr inbounds [64 x i16], ptr %22, i64 %19
  %24 = tail call i32 %15(ptr noundef %1, ptr noundef %20, ptr noundef %23) #10
  br label %25

25:                                               ; preds = %13, %10
  %26 = phi i32 [ %12, %10 ], [ %24, %13 ]
  ret i32 %26
}

; Function Attrs: optsize
declare i32 @x264_quant_8x8_trellis(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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
  store i32 0, ptr %9, align 4, !tbaa !55
  br label %115

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 14
  %12 = load i32, ptr %11, align 8, !tbaa !56
  %13 = icmp eq i32 %12, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  store i32 0, ptr %14, align 4, !tbaa !55
  br i1 %13, label %115, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %17 = load i32, ptr %16, align 16, !tbaa !47
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 18, i32 12
  %20 = icmp sgt i32 %19, %2
  br i1 %20, label %115, label %21

21:                                               ; preds = %15
  %22 = zext nneg i32 %2 to i64
  %23 = getelementptr inbounds [52 x i32], ptr @x264_lambda2_tab, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !41
  %25 = add nsw i32 %24, 32
  %26 = ashr i32 %25, 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 11
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = call i32 %28(ptr noundef %30, i32 noundef 16, ptr noundef %32, i32 noundef 32, ptr noundef nonnull %5) #10
  %34 = shl nsw i32 %26, 2
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %21
  %37 = load ptr, ptr %27, align 8, !tbaa !57
  %38 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 2
  %39 = load ptr, ptr %38, align 16, !tbaa !6
  %40 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %41 = load ptr, ptr %40, align 16, !tbaa !6
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
  store i8 0, ptr %49, align 1, !tbaa !10
  %50 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 10
  store i8 0, ptr %50, align 1, !tbaa !10
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 17
  store i8 0, ptr %51, align 1, !tbaa !10
  %52 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 18
  store i8 0, ptr %52, align 1, !tbaa !10
  %53 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 33
  store i8 0, ptr %53, align 1, !tbaa !10
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 34
  store i8 0, ptr %54, align 1, !tbaa !10
  %55 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 41
  store i8 0, ptr %55, align 1, !tbaa !10
  %56 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 42
  store i8 0, ptr %56, align 1, !tbaa !10
  %57 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 46
  store i16 0, ptr %57, align 1, !tbaa !10
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
  %69 = load i32, ptr %68, align 4, !tbaa !41
  %70 = icmp sgt i32 %69, %26
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = add nuw nsw i64 %67, 1
  br label %110

73:                                               ; preds = %66
  %74 = load ptr, ptr %58, align 8, !tbaa !58
  %75 = add nuw nsw i64 %67, 1
  %76 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !6
  %78 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 %75
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  call void %74(ptr noundef nonnull %4, ptr noundef %77, ptr noundef %79) #10
  %80 = load i32, ptr %16, align 16, !tbaa !47
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %73
  %83 = call i32 @x264_quant_dc_trellis(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %59, i32 noundef %2, i32 noundef 3, i32 noundef 0, i32 noundef 1) #10
  br label %97

84:                                               ; preds = %73
  %85 = load ptr, ptr %60, align 8, !tbaa !59
  %86 = load ptr, ptr %62, align 8, !tbaa !6
  %87 = getelementptr inbounds [16 x i16], ptr %86, i64 %22
  %88 = load i16, ptr %87, align 2, !tbaa !11
  %89 = lshr i16 %88, 1
  %90 = zext nneg i16 %89 to i32
  %91 = load ptr, ptr %63, align 8, !tbaa !6
  %92 = getelementptr inbounds [16 x i16], ptr %91, i64 %22
  %93 = load i16, ptr %92, align 2, !tbaa !11
  %94 = zext i16 %93 to i32
  %95 = shl nuw nsw i32 %94, 1
  %96 = call i32 %85(ptr noundef nonnull %4, i32 noundef %90, i32 noundef %95) #10
  br label %97

97:                                               ; preds = %84, %82
  %98 = phi i32 [ %83, %82 ], [ %96, %84 ]
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %97
  %101 = call fastcc i32 @x264_mb_optimize_chroma_dc(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %4) #11, !range !60
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %100
  %104 = or disjoint i64 %67, 46
  %105 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %104
  store i8 1, ptr %105, align 1, !tbaa !10
  %106 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 1, i64 %67
  call fastcc void @zigzag_scan_2x2_dc(ptr noundef nonnull %106, ptr noundef nonnull %4) #11
  %107 = load ptr, ptr %64, align 8, !tbaa !6
  call fastcc void @idct_dequant_2x2_dconly(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %107, i32 noundef %2) #11
  %108 = load ptr, ptr %65, align 8, !tbaa !61
  %109 = load ptr, ptr %78, align 8, !tbaa !6
  call void %108(ptr noundef %109, ptr noundef nonnull %4) #10
  store i32 1, ptr %14, align 4, !tbaa !55
  br label %110

110:                                              ; preds = %71, %103, %97, %100
  %111 = phi i64 [ %72, %71 ], [ %75, %103 ], [ %75, %97 ], [ %75, %100 ]
  %112 = icmp eq i64 %67, 0
  br i1 %112, label %66, label %113, !llvm.loop !62

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
  %139 = load i16, ptr %138, align 1, !tbaa !10
  %140 = icmp ne i16 %139, 0
  %141 = zext i1 %140 to i32
  %142 = load i32, ptr %116, align 4, !tbaa !55
  %143 = or i32 %142, %141
  %144 = add nsw i32 %143, %142
  store i32 %144, ptr %116, align 4, !tbaa !55
  br label %294

145:                                              ; preds = %115, %293
  %146 = phi i1 [ true, %115 ], [ false, %293 ]
  %147 = phi i64 [ 0, %115 ], [ 1, %293 ]
  %148 = add nuw nsw i64 %147, 1
  %149 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !6
  %151 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 %148
  %152 = load ptr, ptr %151, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #9
  %153 = load i32, ptr %118, align 4, !tbaa !13
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %195, label %155

155:                                              ; preds = %145
  %156 = shl nuw nsw i64 %147, 2
  br label %163

157:                                              ; preds = %163
  %158 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 1, i64 %147
  %159 = call fastcc i32 @array_non_zero_int(ptr noundef nonnull %158, i32 noundef 8) #11, !range !60
  %160 = trunc i32 %159 to i8
  %161 = or disjoint i64 %147, 46
  %162 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %161
  store i8 %160, ptr %162, align 1, !tbaa !10
  br label %293

163:                                              ; preds = %155, %163
  %164 = phi i64 [ 0, %155 ], [ %193, %163 ]
  %165 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %164
  %166 = load i8, ptr %165, align 1, !tbaa !10
  %167 = zext i8 %166 to i32
  %168 = shl nuw nsw i32 %167, 2
  %169 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %164
  %170 = load i8, ptr %169, align 1, !tbaa !10
  %171 = zext i8 %170 to i32
  %172 = shl nuw nsw i32 %171, 6
  %173 = add nuw nsw i32 %172, %168
  %174 = shl nuw nsw i32 %171, 7
  %175 = add nuw nsw i32 %174, %168
  %176 = load ptr, ptr %119, align 8, !tbaa !64
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
  %188 = load i32, ptr %187, align 4, !tbaa !41
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %189
  store i8 %186, ptr %190, align 1, !tbaa !10
  %191 = load i32, ptr %116, align 4, !tbaa !55
  %192 = or i32 %191, %185
  store i32 %192, ptr %116, align 4, !tbaa !55
  %193 = add nuw nsw i64 %164, 1
  %194 = icmp eq i64 %193, 4
  br i1 %194, label %157, label %163, !llvm.loop !65

195:                                              ; preds = %145
  %196 = load ptr, ptr %120, align 16, !tbaa !66
  call void %196(ptr noundef nonnull %6, ptr noundef %150, ptr noundef %152) #10
  call fastcc void @dct2x2dc(ptr noundef nonnull %4, ptr noundef nonnull %6) #11
  %197 = shl nuw nsw i64 %147, 2
  br label %201

198:                                              ; preds = %238
  %199 = load i32, ptr %121, align 16, !tbaa !47
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %245, label %243

201:                                              ; preds = %195, %238
  %202 = phi i64 [ 0, %195 ], [ %241, %238 ]
  %203 = phi i32 [ 0, %195 ], [ %240, %238 ]
  %204 = phi i32 [ 0, %195 ], [ %239, %238 ]
  %205 = load i32, ptr %121, align 16, !tbaa !47
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %201
  %208 = getelementptr inbounds [4 x [16 x i16]], ptr %6, i64 0, i64 %202
  %209 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef nonnull %208, i32 noundef %122, i32 noundef %2, i32 noundef 4, i32 noundef %123, i32 noundef 1, i32 noundef 0) #10
  br label %218

210:                                              ; preds = %201
  %211 = load ptr, ptr %124, align 8, !tbaa !48
  %212 = getelementptr inbounds [4 x [16 x i16]], ptr %6, i64 0, i64 %202
  %213 = load ptr, ptr %126, align 8, !tbaa !6
  %214 = getelementptr inbounds [16 x i16], ptr %213, i64 %127
  %215 = load ptr, ptr %128, align 8, !tbaa !6
  %216 = getelementptr inbounds [16 x i16], ptr %215, i64 %127
  %217 = call i32 %211(ptr noundef nonnull %212, ptr noundef %214, ptr noundef %216) #10
  br label %218

218:                                              ; preds = %210, %207
  %219 = phi i32 [ %209, %207 ], [ %217, %210 ]
  %220 = trunc i32 %219 to i8
  %221 = add nuw nsw i64 %202, %197
  %222 = add nuw nsw i64 %221, 16
  %223 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %222
  %224 = load i32, ptr %223, align 4, !tbaa !41
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %225
  store i8 %220, ptr %226, align 1, !tbaa !10
  %227 = icmp eq i32 %219, 0
  br i1 %227, label %238, label %228

228:                                              ; preds = %218
  %229 = load ptr, ptr %129, align 8, !tbaa !44
  %230 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %222
  %231 = getelementptr inbounds [4 x [16 x i16]], ptr %6, i64 0, i64 %202
  call void %229(ptr noundef nonnull %230, ptr noundef nonnull %231) #10
  %232 = load ptr, ptr %130, align 8, !tbaa !45
  %233 = load ptr, ptr %131, align 8, !tbaa !6
  call void %232(ptr noundef nonnull %231, ptr noundef %233, i32 noundef %2) #10
  br i1 %117, label %234, label %238

234:                                              ; preds = %228
  %235 = load ptr, ptr %132, align 8, !tbaa !67
  %236 = call i32 %235(ptr noundef nonnull %230) #10
  %237 = add nsw i32 %236, %204
  br label %238

238:                                              ; preds = %218, %234, %228
  %239 = phi i32 [ %237, %234 ], [ %204, %228 ], [ %204, %218 ]
  %240 = phi i32 [ 1, %234 ], [ 1, %228 ], [ %203, %218 ]
  %241 = add nuw nsw i64 %202, 1
  %242 = icmp eq i64 %241, 4
  br i1 %242, label %198, label %201, !llvm.loop !68

243:                                              ; preds = %198
  %244 = call i32 @x264_quant_dc_trellis(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %122, i32 noundef %2, i32 noundef 3, i32 noundef %123, i32 noundef 1) #10
  br label %258

245:                                              ; preds = %198
  %246 = load ptr, ptr %133, align 8, !tbaa !59
  %247 = load ptr, ptr %126, align 8, !tbaa !6
  %248 = getelementptr inbounds [16 x i16], ptr %247, i64 %127
  %249 = load i16, ptr %248, align 2, !tbaa !11
  %250 = lshr i16 %249, 1
  %251 = zext nneg i16 %250 to i32
  %252 = load ptr, ptr %128, align 8, !tbaa !6
  %253 = getelementptr inbounds [16 x i16], ptr %252, i64 %127
  %254 = load i16, ptr %253, align 2, !tbaa !11
  %255 = zext i16 %254 to i32
  %256 = shl nuw nsw i32 %255, 1
  %257 = call i32 %246(ptr noundef nonnull %4, i32 noundef %251, i32 noundef %256) #10
  br label %258

258:                                              ; preds = %245, %243
  %259 = phi i32 [ %244, %243 ], [ %257, %245 ]
  %260 = trunc i32 %259 to i8
  %261 = or disjoint i64 %147, 46
  %262 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %261
  store i8 %260, ptr %262, align 1, !tbaa !10
  %263 = icmp sgt i32 %239, 6
  %264 = select i1 %134, i1 true, i1 %263
  %265 = icmp ne i32 %240, 0
  %266 = select i1 %264, i1 %265, i1 false
  br i1 %266, label %286, label %267

267:                                              ; preds = %258
  %268 = mul nuw nsw i64 %147, 24
  %269 = add nuw nsw i64 %268, 9
  %270 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %269
  store i8 0, ptr %270, align 1, !tbaa !10
  %271 = add nuw nsw i64 %268, 10
  %272 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %271
  store i8 0, ptr %272, align 1, !tbaa !10
  %273 = add nuw nsw i64 %268, 17
  %274 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %273
  store i8 0, ptr %274, align 1, !tbaa !10
  %275 = add nuw nsw i64 %268, 18
  %276 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %275
  store i8 0, ptr %276, align 1, !tbaa !10
  %277 = icmp eq i32 %259, 0
  br i1 %277, label %293, label %278

278:                                              ; preds = %267
  %279 = call fastcc i32 @x264_mb_optimize_chroma_dc(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %4) #11, !range !60
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %278
  store i8 0, ptr %262, align 1, !tbaa !10
  br label %293

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 1, i64 %147
  call fastcc void @zigzag_scan_2x2_dc(ptr noundef nonnull %283, ptr noundef nonnull %4) #11
  %284 = load ptr, ptr %131, align 8, !tbaa !6
  call fastcc void @idct_dequant_2x2_dconly(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %284, i32 noundef %2) #11
  %285 = load ptr, ptr %135, align 8, !tbaa !61
  call void %285(ptr noundef %152, ptr noundef nonnull %4) #10
  br label %293

286:                                              ; preds = %258
  store i32 1, ptr %116, align 4, !tbaa !55
  %287 = icmp eq i32 %259, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %286
  %289 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 1, i64 %147
  call fastcc void @zigzag_scan_2x2_dc(ptr noundef nonnull %289, ptr noundef nonnull %4) #11
  %290 = load ptr, ptr %131, align 8, !tbaa !6
  call fastcc void @idct_dequant_2x2_dc(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef %290, i32 noundef %2) #11
  br label %291

291:                                              ; preds = %288, %286
  %292 = load ptr, ptr %136, align 16, !tbaa !69
  call void %292(ptr noundef %152, ptr noundef nonnull %6) #10
  br label %293

293:                                              ; preds = %282, %291, %267, %281, %157
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #9
  br i1 %146, label %145, label %137, !llvm.loop !70

294:                                              ; preds = %113, %137
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret void
}

; Function Attrs: optsize
declare i32 @x264_quant_dc_trellis(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @x264_mb_optimize_chroma_dc(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [4 x i16], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %6 = add nsw i32 %1, 2
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = srem i32 %2, 6
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [16 x i32], ptr %9, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !41
  %14 = sdiv i32 %2, 6
  %15 = shl i32 %13, %14
  %16 = icmp sgt i32 %15, 2048
  br i1 %16, label %52, label %17

17:                                               ; preds = %4
  call fastcc void @idct_dequant_2x2_dconly(ptr noundef nonnull %5, ptr noundef %3, ptr noundef nonnull %9, i32 noundef %2) #11
  %18 = load <4 x i16>, ptr %5, align 8, !tbaa !11
  %19 = add <4 x i16> %18, <i16 32, i16 32, i16 32, i16 32>
  store <4 x i16> %19, ptr %5, align 8, !tbaa !11
  %20 = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %19)
  %21 = icmp ult i16 %20, 64
  br i1 %21, label %52, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 11, i64 3
  %24 = load ptr, ptr %23, align 8, !tbaa !6
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
  %33 = load i16, ptr %32, align 2, !tbaa !11
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
  store i16 %42, ptr %32, align 2, !tbaa !11
  %43 = load ptr, ptr %8, align 8, !tbaa !6
  %44 = call fastcc i32 @idct_dequant_round_2x2_dc(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %43, i32 noundef %2) #11, !range !71
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %37, label %46, !llvm.loop !72

46:                                               ; preds = %40
  %47 = trunc i32 %38 to i16
  store i16 %47, ptr %32, align 2, !tbaa !11
  br label %48

48:                                               ; preds = %37, %46
  %49 = phi i32 [ 1, %46 ], [ %31, %37 ]
  %50 = add nsw i64 %30, -1
  %51 = icmp sgt i64 %30, 0
  br i1 %51, label %29, label %52, !llvm.loop !73

52:                                               ; preds = %48, %22, %17, %4
  %53 = phi i32 [ 1, %4 ], [ 0, %17 ], [ 0, %22 ], [ %49, %48 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  ret i32 %53
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @zigzag_scan_2x2_dc(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load i16, ptr %1, align 2, !tbaa !11
  store i16 %3, ptr %0, align 2, !tbaa !11
  %4 = getelementptr inbounds i16, ptr %1, i64 2
  %5 = load i16, ptr %4, align 2, !tbaa !11
  %6 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %5, ptr %6, align 2, !tbaa !11
  %7 = getelementptr inbounds i16, ptr %1, i64 1
  %8 = load i16, ptr %7, align 2, !tbaa !11
  %9 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %8, ptr %9, align 2, !tbaa !11
  %10 = getelementptr inbounds i16, ptr %1, i64 3
  %11 = load i16, ptr %10, align 2, !tbaa !11
  %12 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %11, ptr %12, align 2, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @idct_dequant_2x2_dconly(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = load i16, ptr %1, align 2, !tbaa !11
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds i16, ptr %1, i64 1
  %8 = load i16, ptr %7, align 2, !tbaa !11
  %9 = sext i16 %8 to i32
  %10 = add nsw i32 %9, %6
  %11 = getelementptr inbounds i16, ptr %1, i64 2
  %12 = load i16, ptr %11, align 2, !tbaa !11
  %13 = sext i16 %12 to i32
  %14 = getelementptr inbounds i16, ptr %1, i64 3
  %15 = load i16, ptr %14, align 2, !tbaa !11
  %16 = sext i16 %15 to i32
  %17 = add nsw i32 %16, %13
  %18 = sub nsw i32 %6, %9
  %19 = sub nsw i32 %13, %16
  %20 = srem i32 %3, 6
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [16 x i32], ptr %2, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !41
  %24 = sdiv i32 %3, 6
  %25 = shl i32 %23, %24
  %26 = add nsw i32 %17, %10
  %27 = mul nsw i32 %26, %25
  %28 = lshr i32 %27, 5
  %29 = trunc i32 %28 to i16
  store i16 %29, ptr %0, align 2, !tbaa !11
  %30 = sub nsw i32 %10, %17
  %31 = mul nsw i32 %30, %25
  %32 = lshr i32 %31, 5
  %33 = trunc i32 %32 to i16
  %34 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %33, ptr %34, align 2, !tbaa !11
  %35 = add nsw i32 %19, %18
  %36 = mul nsw i32 %35, %25
  %37 = lshr i32 %36, 5
  %38 = trunc i32 %37 to i16
  %39 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %38, ptr %39, align 2, !tbaa !11
  %40 = sub nsw i32 %18, %19
  %41 = mul nsw i32 %40, %25
  %42 = lshr i32 %41, 5
  %43 = trunc i32 %42 to i16
  %44 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %43, ptr %44, align 2, !tbaa !11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @array_non_zero_int(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  switch i32 %1, label %3 [
    i32 8, label %5
    i32 16, label %8
    i32 32, label %14
  ]

3:                                                ; preds = %2
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %18, label %27

5:                                                ; preds = %2
  %6 = load i64, ptr %0, align 8, !tbaa !10
  %7 = icmp ne i64 %6, 0
  br label %27

8:                                                ; preds = %2
  %9 = load i64, ptr %0, align 8, !tbaa !10
  %10 = getelementptr inbounds i16, ptr %0, i64 4
  %11 = load i64, ptr %10, align 8, !tbaa !10
  %12 = or i64 %11, %9
  %13 = icmp ne i64 %12, 0
  br label %27

14:                                               ; preds = %2
  %15 = load <4 x i64>, ptr %0, align 8, !tbaa !10
  %16 = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %15)
  %17 = icmp ne i64 %16, 0
  br label %27

18:                                               ; preds = %3, %18
  %19 = phi i64 [ %23, %18 ], [ 0, %3 ]
  %20 = getelementptr inbounds i16, ptr %0, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !10
  %22 = icmp ne i64 %21, 0
  %23 = add nuw i64 %19, 4
  %24 = trunc i64 %23 to i32
  %25 = icmp sge i32 %24, %1
  %26 = select i1 %22, i1 true, i1 %25
  br i1 %26, label %27, label %18, !llvm.loop !74

27:                                               ; preds = %18, %3, %14, %8, %5
  %28 = phi i1 [ %7, %5 ], [ %13, %8 ], [ %17, %14 ], [ false, %3 ], [ %22, %18 ]
  %29 = zext i1 %28 to i32
  ret i32 %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @dct2x2dc(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1) unnamed_addr #3 {
  %3 = load i16, ptr %1, align 2, !tbaa !11
  %4 = zext i16 %3 to i32
  %5 = getelementptr inbounds [16 x i16], ptr %1, i64 1
  %6 = load i16, ptr %5, align 2, !tbaa !11
  %7 = zext i16 %6 to i32
  %8 = add nuw nsw i32 %7, %4
  %9 = getelementptr inbounds [16 x i16], ptr %1, i64 2
  %10 = load i16, ptr %9, align 2, !tbaa !11
  %11 = zext i16 %10 to i32
  %12 = getelementptr inbounds [16 x i16], ptr %1, i64 3
  %13 = load i16, ptr %12, align 2, !tbaa !11
  %14 = zext i16 %13 to i32
  %15 = add nuw nsw i32 %14, %11
  %16 = sub nsw i32 %4, %7
  %17 = sub nsw i32 %11, %14
  %18 = add nuw nsw i32 %15, %8
  %19 = trunc i32 %18 to i16
  store i16 %19, ptr %0, align 2, !tbaa !11
  %20 = add nsw i32 %17, %16
  %21 = trunc i32 %20 to i16
  %22 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %21, ptr %22, align 2, !tbaa !11
  %23 = sub nsw i32 %8, %15
  %24 = trunc i32 %23 to i16
  %25 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %24, ptr %25, align 2, !tbaa !11
  %26 = sub nsw i32 %16, %17
  %27 = trunc i32 %26 to i16
  %28 = getelementptr inbounds i16, ptr %0, i64 3
  store i16 %27, ptr %28, align 2, !tbaa !11
  store i16 0, ptr %1, align 2, !tbaa !11
  store i16 0, ptr %5, align 2, !tbaa !11
  store i16 0, ptr %9, align 2, !tbaa !11
  store i16 0, ptr %12, align 2, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @idct_dequant_2x2_dc(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = load i16, ptr %0, align 2, !tbaa !11
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds i16, ptr %0, i64 1
  %8 = load i16, ptr %7, align 2, !tbaa !11
  %9 = sext i16 %8 to i32
  %10 = add nsw i32 %9, %6
  %11 = getelementptr inbounds i16, ptr %0, i64 2
  %12 = load i16, ptr %11, align 2, !tbaa !11
  %13 = sext i16 %12 to i32
  %14 = getelementptr inbounds i16, ptr %0, i64 3
  %15 = load i16, ptr %14, align 2, !tbaa !11
  %16 = sext i16 %15 to i32
  %17 = add nsw i32 %16, %13
  %18 = sub nsw i32 %6, %9
  %19 = sub nsw i32 %13, %16
  %20 = srem i32 %3, 6
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [16 x i32], ptr %2, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !41
  %24 = sdiv i32 %3, 6
  %25 = shl i32 %23, %24
  %26 = add nsw i32 %17, %10
  %27 = mul nsw i32 %26, %25
  %28 = lshr i32 %27, 5
  %29 = trunc i32 %28 to i16
  store i16 %29, ptr %1, align 2, !tbaa !11
  %30 = sub nsw i32 %10, %17
  %31 = mul nsw i32 %30, %25
  %32 = lshr i32 %31, 5
  %33 = trunc i32 %32 to i16
  %34 = getelementptr inbounds [16 x i16], ptr %1, i64 1
  store i16 %33, ptr %34, align 2, !tbaa !11
  %35 = add nsw i32 %19, %18
  %36 = mul nsw i32 %35, %25
  %37 = lshr i32 %36, 5
  %38 = trunc i32 %37 to i16
  %39 = getelementptr inbounds [16 x i16], ptr %1, i64 2
  store i16 %38, ptr %39, align 2, !tbaa !11
  %40 = sub nsw i32 %18, %19
  %41 = mul nsw i32 %40, %25
  %42 = lshr i32 %41, 5
  %43 = trunc i32 %42 to i16
  %44 = getelementptr inbounds [16 x i16], ptr %1, i64 3
  store i16 %43, ptr %44, align 2, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @idct_dequant_round_2x2_dc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #3 {
  %5 = alloca [4 x i16], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call fastcc void @idct_dequant_2x2_dconly(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i32 noundef %3) #11
  %6 = load <4 x i16>, ptr %0, align 2, !tbaa !11
  %7 = sext <4 x i16> %6 to <4 x i32>
  %8 = load <4 x i16>, ptr %5, align 8, !tbaa !11
  %9 = sext <4 x i16> %8 to <4 x i32>
  %10 = add nsw <4 x i32> %9, <i32 32, i32 32, i32 32, i32 32>
  %11 = xor <4 x i32> %10, %7
  %12 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %11)
  %13 = ashr i32 %12, 6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_predict_lossless_8x8_chroma(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.x264_frame, ptr %4, i64 0, i32 24, i64 1
  %6 = load i32, ptr %5, align 4, !tbaa !41
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %8 = load i32, ptr %7, align 4, !tbaa !76
  %9 = shl i32 %6, %8
  switch i32 %1, label %40 [
    i32 2, label %10
    i32 1, label %26
  ]

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 3
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 17, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = sext i32 %9 to i64
  %18 = sub nsw i64 0, %17
  %19 = getelementptr inbounds i8, ptr %16, i64 %18
  tail call void %12(ptr noundef %14, i32 noundef 32, ptr noundef %19, i32 noundef %9, i32 noundef 8) #10
  %20 = load ptr, ptr %11, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %22 = load ptr, ptr %21, align 16, !tbaa !6
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 17, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = getelementptr inbounds i8, ptr %24, i64 %18
  tail call void %20(ptr noundef %22, i32 noundef 32, ptr noundef %25, i32 noundef %9, i32 noundef 8) #10
  br label %49

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 3
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 17, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = getelementptr inbounds i8, ptr %32, i64 -1
  tail call void %28(ptr noundef %30, i32 noundef 32, ptr noundef nonnull %33, i32 noundef %9, i32 noundef 8) #10
  %34 = load ptr, ptr %27, align 8, !tbaa !6
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %36 = load ptr, ptr %35, align 16, !tbaa !6
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 17, i64 2
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = getelementptr inbounds i8, ptr %38, i64 -1
  tail call void %34(ptr noundef %36, i32 noundef 32, ptr noundef nonnull %39, i32 noundef %9, i32 noundef 8) #10
  br label %49

40:                                               ; preds = %2
  %41 = sext i32 %1 to i64
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 65, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  tail call void %43(ptr noundef %45) #10
  %46 = load ptr, ptr %42, align 8, !tbaa !6
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %48 = load ptr, ptr %47, align 16, !tbaa !6
  tail call void %46(ptr noundef %48) #10
  br label %49

49:                                               ; preds = %26, %40, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_predict_lossless_4x4(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.x264_frame, ptr %6, i64 0, i32 24
  %8 = load i32, ptr %7, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %10 = load i32, ptr %9, align 4, !tbaa !76
  %11 = shl i32 %8, %10
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = sext i32 %2 to i64
  %15 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !10
  %17 = zext i8 %16 to i64
  %18 = shl nuw nsw i64 %17, 2
  %19 = getelementptr inbounds i8, ptr %13, i64 %18
  %20 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %14
  %21 = load i8, ptr %20, align 1, !tbaa !10
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
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = sext i32 %11 to i64
  %31 = sub nsw i64 0, %30
  %32 = getelementptr inbounds i8, ptr %26, i64 %31
  tail call void %29(ptr noundef %1, i32 noundef 32, ptr noundef %32, i32 noundef %11, i32 noundef 4) #10
  br label %41

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 6
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = getelementptr inbounds i8, ptr %26, i64 -1
  tail call void %35(ptr noundef %1, i32 noundef 32, ptr noundef nonnull %36, i32 noundef %11, i32 noundef 4) #10
  br label %41

37:                                               ; preds = %4
  %38 = sext i32 %3 to i64
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 67, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  tail call void %40(ptr noundef %1) #10
  br label %41

41:                                               ; preds = %33, %37, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_predict_lossless_8x8(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = getelementptr inbounds %struct.x264_frame, ptr %7, i64 0, i32 24
  %9 = load i32, ptr %8, align 8, !tbaa !41
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %11 = load i32, ptr %10, align 4, !tbaa !76
  %12 = shl i32 %9, %11
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 17
  %14 = load ptr, ptr %13, align 8, !tbaa !6
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
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = sext i32 %12 to i64
  %28 = sub nsw i64 0, %27
  %29 = getelementptr inbounds i8, ptr %23, i64 %28
  tail call void %26(ptr noundef %1, i32 noundef 32, ptr noundef %29, i32 noundef %12, i32 noundef 8) #10
  br label %38

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 3
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = getelementptr inbounds i8, ptr %23, i64 -1
  tail call void %32(ptr noundef %1, i32 noundef 32, ptr noundef nonnull %33, i32 noundef %12, i32 noundef 8) #10
  br label %38

34:                                               ; preds = %5
  %35 = sext i32 %3 to i64
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 66, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  tail call void %37(ptr noundef %1, ptr noundef %4) #10
  br label %38

38:                                               ; preds = %30, %34, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_predict_lossless_16x16(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.x264_frame, ptr %4, i64 0, i32 24
  %6 = load i32, ptr %5, align 8, !tbaa !41
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %8 = load i32, ptr %7, align 4, !tbaa !76
  %9 = shl i32 %6, %8
  switch i32 %1, label %28 [
    i32 0, label %10
    i32 1, label %20
  ]

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %14 = load ptr, ptr %13, align 16, !tbaa !6
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = sext i32 %9 to i64
  %18 = sub nsw i64 0, %17
  %19 = getelementptr inbounds i8, ptr %16, i64 %18
  tail call void %12(ptr noundef %14, i32 noundef 32, ptr noundef %19, i32 noundef %9, i32 noundef 16) #10
  br label %34

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !77
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %24 = load ptr, ptr %23, align 16, !tbaa !6
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = getelementptr inbounds i8, ptr %26, i64 -1
  tail call void %22(ptr noundef %24, i32 noundef 32, ptr noundef nonnull %27, i32 noundef %9, i32 noundef 16) #10
  br label %34

28:                                               ; preds = %2
  %29 = sext i32 %1 to i64
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 64, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %33 = load ptr, ptr %32, align 16, !tbaa !6
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
  %6 = load i32, ptr %5, align 16, !tbaa !78
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !56
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  store i32 0, ptr %9, align 8, !tbaa !42
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 44
  store i8 0, ptr %11, align 1, !tbaa !10
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 53
  %13 = load i32, ptr %12, align 8, !tbaa !79
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %19 = load ptr, ptr %18, align 16, !tbaa !6
  %20 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %21 = load ptr, ptr %20, align 16, !tbaa !6
  tail call void %17(ptr noundef %19, i32 noundef 32, ptr noundef %21, i32 noundef 16, i32 noundef 16) #10
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 3
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  tail call void %23(ptr noundef %25, i32 noundef 32, ptr noundef %27, i32 noundef 16, i32 noundef 8) #10
  %28 = load ptr, ptr %22, align 8, !tbaa !6
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %30 = load ptr, ptr %29, align 16, !tbaa !6
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 2
  %32 = load ptr, ptr %31, align 16, !tbaa !6
  tail call void %28(ptr noundef %30, i32 noundef 32, ptr noundef %32, i32 noundef 16, i32 noundef 8) #10
  br label %642

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %35 = load i32, ptr %34, align 4, !tbaa !80
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %39 = load i32, ptr %38, align 8, !tbaa !81
  %40 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !82
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !83
  %44 = add nsw i32 %43, %41
  %45 = icmp eq i32 %39, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 38
  %48 = load ptr, ptr %47, align 8, !tbaa !84
  %49 = sext i32 %41 to i64
  %50 = getelementptr inbounds i8, ptr %48, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !10
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
  %59 = load i32, ptr %58, align 4, !tbaa !85
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
  %65 = load i32, ptr %64, align 16, !tbaa !86
  %66 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  store i32 0, ptr %66, align 4, !tbaa !87
  %67 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %68 = load i32, ptr %67, align 4, !tbaa !13
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  tail call void @x264_predict_lossless_16x16(ptr noundef nonnull %0, i32 noundef %65) #11
  br label %77

71:                                               ; preds = %63
  %72 = sext i32 %65 to i64
  %73 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 64, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !6
  %75 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %76 = load ptr, ptr %75, align 16, !tbaa !6
  tail call void %74(ptr noundef %76) #10
  br label %77

77:                                               ; preds = %71, %70
  tail call fastcc void @x264_mb_encode_i16x16(ptr noundef nonnull %0, i32 noundef %6) #11
  br label %557

78:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %2) #9
  %79 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  store i32 1, ptr %79, align 4, !tbaa !87
  %80 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 61
  %81 = load i32, ptr %80, align 8, !tbaa !88
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %116, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  %86 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %87 = load ptr, ptr %86, align 16, !tbaa !6
  %88 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 3
  tail call void %85(ptr noundef %87, i32 noundef 32, ptr noundef nonnull %88, i32 noundef 16, i32 noundef 16) #10
  %89 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 7
  %90 = load i32, ptr %89, align 16, !tbaa !41
  %91 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 12
  store i32 %90, ptr %91, align 1, !tbaa !10
  %92 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 7, i64 1
  %93 = load i32, ptr %92, align 4, !tbaa !41
  %94 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 20
  store i32 %93, ptr %94, align 1, !tbaa !10
  %95 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 7, i64 2
  %96 = load i32, ptr %95, align 8, !tbaa !41
  %97 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 28
  store i32 %96, ptr %97, align 1, !tbaa !10
  %98 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 7, i64 3
  %99 = load i32, ptr %98, align 4, !tbaa !41
  %100 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 36
  store i32 %99, ptr %100, align 1, !tbaa !10
  %101 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 9
  %102 = load i32, ptr %101, align 4, !tbaa !89
  store i32 %102, ptr %9, align 8, !tbaa !42
  %103 = load i32, ptr %80, align 8, !tbaa !88
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %105, label %112

105:                                              ; preds = %83
  %106 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 10
  %107 = load ptr, ptr %106, align 8, !tbaa !90
  %108 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2
  %109 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 4
  %110 = tail call ptr %107(ptr noundef nonnull %108, ptr noundef nonnull %109, i64 noundef 384) #10
  %111 = load i32, ptr %80, align 8, !tbaa !88
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
  %125 = load ptr, ptr %119, align 16, !tbaa !6
  %126 = shl i64 %124, 3
  %127 = and i64 %126, 8
  %128 = shl i64 %124, 7
  %129 = and i64 %128, 256
  %130 = or disjoint i64 %127, %129
  %131 = getelementptr inbounds i8, ptr %125, i64 %130
  %132 = shl nuw nsw i64 %124, 2
  %133 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %132
  %134 = load i32, ptr %133, align 16, !tbaa !41
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [40 x i8], ptr %10, i64 0, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !10
  %138 = load ptr, ptr %120, align 16, !tbaa !91
  %139 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 25, i64 %124
  %140 = load i32, ptr %139, align 4, !tbaa !41
  %141 = sext i8 %137 to i64
  %142 = getelementptr inbounds [12 x i8], ptr @x264_pred_i4x4_neighbors, i64 0, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !10
  %144 = zext i8 %143 to i32
  call void %138(ptr noundef %131, ptr noundef nonnull %2, i32 noundef %140, i32 noundef %144) #10
  %145 = load i32, ptr %121, align 4, !tbaa !13
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %123
  %148 = sext i8 %137 to i32
  %149 = trunc i64 %124 to i32
  call void @x264_predict_lossless_8x8(ptr noundef nonnull %0, ptr noundef %131, i32 noundef %149, i32 noundef %148, ptr noundef nonnull %2) #11
  br label %154

150:                                              ; preds = %123
  %151 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 66, i64 %141
  %152 = load ptr, ptr %151, align 8, !tbaa !6
  call void %152(ptr noundef %131, ptr noundef nonnull %2) #10
  %153 = trunc i64 %124 to i32
  br label %154

154:                                              ; preds = %150, %147
  %155 = phi i32 [ %153, %150 ], [ %149, %147 ]
  call void @x264_mb_encode_i8x8(ptr noundef nonnull %0, i32 noundef %155, i32 noundef %6) #11
  %156 = add nuw nsw i64 %124, 1
  %157 = icmp eq i64 %156, 4
  br i1 %157, label %122, label %123, !llvm.loop !92

158:                                              ; preds = %54
  %159 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  store i32 0, ptr %159, align 4, !tbaa !87
  %160 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 61
  %161 = load i32, ptr %160, align 8, !tbaa !88
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %196, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4
  %165 = load ptr, ptr %164, align 8, !tbaa !6
  %166 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %167 = load ptr, ptr %166, align 16, !tbaa !6
  %168 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 2
  tail call void %165(ptr noundef %167, i32 noundef 32, ptr noundef nonnull %168, i32 noundef 16, i32 noundef 16) #10
  %169 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 6
  %170 = load i32, ptr %169, align 16, !tbaa !41
  %171 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 12
  store i32 %170, ptr %171, align 1, !tbaa !10
  %172 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 6, i64 1
  %173 = load i32, ptr %172, align 4, !tbaa !41
  %174 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 20
  store i32 %173, ptr %174, align 1, !tbaa !10
  %175 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 6, i64 2
  %176 = load i32, ptr %175, align 8, !tbaa !41
  %177 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 28
  store i32 %176, ptr %177, align 1, !tbaa !10
  %178 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 6, i64 3
  %179 = load i32, ptr %178, align 4, !tbaa !41
  %180 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 36
  store i32 %179, ptr %180, align 1, !tbaa !10
  %181 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 8
  %182 = load i32, ptr %181, align 16, !tbaa !93
  store i32 %182, ptr %9, align 8, !tbaa !42
  %183 = load i32, ptr %160, align 8, !tbaa !88
  %184 = icmp eq i32 %183, 2
  br i1 %184, label %185, label %192

185:                                              ; preds = %163
  %186 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 10
  %187 = load ptr, ptr %186, align 8, !tbaa !90
  %188 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3
  %189 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 5
  %190 = tail call ptr %187(ptr noundef nonnull %188, ptr noundef nonnull %189, i64 noundef 480) #10
  %191 = load i32, ptr %160, align 8, !tbaa !88
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
  %203 = load ptr, ptr %199, align 16, !tbaa !6
  %204 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %202
  %205 = load i16, ptr %204, align 2, !tbaa !11
  %206 = zext i16 %205 to i64
  %207 = getelementptr inbounds i8, ptr %203, i64 %206
  %208 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %202
  %209 = load i32, ptr %208, align 4, !tbaa !41
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [40 x i8], ptr %10, i64 0, i64 %210
  %212 = load i8, ptr %211, align 1, !tbaa !10
  %213 = sext i8 %212 to i32
  %214 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 26, i64 %202
  %215 = load i32, ptr %214, align 4, !tbaa !41
  %216 = and i32 %215, 6
  %217 = icmp eq i32 %216, 2
  br i1 %217, label %218, label %224

218:                                              ; preds = %201
  %219 = getelementptr inbounds i8, ptr %207, i64 -29
  %220 = load i8, ptr %219, align 1, !tbaa !10
  %221 = zext i8 %220 to i32
  %222 = mul nuw i32 %221, 16843009
  %223 = getelementptr inbounds i8, ptr %207, i64 -28
  store i32 %222, ptr %223, align 4, !tbaa !10
  br label %224

224:                                              ; preds = %218, %201
  %225 = load i32, ptr %200, align 4, !tbaa !13
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %224
  %228 = trunc i64 %202 to i32
  tail call void @x264_predict_lossless_4x4(ptr noundef nonnull %0, ptr noundef %207, i32 noundef %228, i32 noundef %213) #11
  br label %234

229:                                              ; preds = %224
  %230 = sext i8 %212 to i64
  %231 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 67, i64 %230
  %232 = load ptr, ptr %231, align 8, !tbaa !6
  tail call void %232(ptr noundef %207) #10
  %233 = trunc i64 %202 to i32
  br label %234

234:                                              ; preds = %229, %227
  %235 = phi i32 [ %233, %229 ], [ %228, %227 ]
  tail call void @x264_mb_encode_i4x4(ptr noundef nonnull %0, i32 noundef %235, i32 noundef %6) #11
  %236 = add nuw nsw i64 %202, 1
  %237 = icmp eq i64 %236, 16
  br i1 %237, label %557, label %201, !llvm.loop !94

238:                                              ; preds = %52, %53
  %239 = phi i32 [ 7, %53 ], [ 4, %52 ]
  store i32 %239, ptr %12, align 8, !tbaa !79
  br label %240

240:                                              ; preds = %238, %54
  %241 = phi i1 [ %55, %54 ], [ false, %238 ]
  %242 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 62
  %243 = load i32, ptr %242, align 4, !tbaa !85
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %240
  tail call void @x264_mb_mc(ptr noundef nonnull %0) #10
  br label %246

246:                                              ; preds = %245, %240
  %247 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %248 = load i32, ptr %247, align 4, !tbaa !13
  %249 = icmp eq i32 %248, 0
  %250 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  %251 = load i32, ptr %250, align 4, !tbaa !87
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
  %267 = load ptr, ptr %257, align 8, !tbaa !49
  %268 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2, i64 %261
  %269 = load ptr, ptr %254, align 16, !tbaa !6
  %270 = getelementptr inbounds i8, ptr %269, i64 %263
  %271 = shl nuw nsw i32 %266, 4
  %272 = zext nneg i32 %271 to i64
  %273 = getelementptr inbounds i8, ptr %270, i64 %272
  %274 = load ptr, ptr %255, align 16, !tbaa !6
  %275 = getelementptr inbounds i8, ptr %274, i64 %263
  %276 = shl nuw nsw i32 %266, 5
  %277 = zext nneg i32 %276 to i64
  %278 = getelementptr inbounds i8, ptr %275, i64 %277
  %279 = tail call i32 %267(ptr noundef nonnull %268, ptr noundef %273, ptr noundef %278) #10
  %280 = trunc i32 %279 to i16
  %281 = mul i16 %280, 257
  %282 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %264
  %283 = load i32, ptr %282, align 16, !tbaa !41
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %284
  store i16 %281, ptr %285, align 1, !tbaa !10
  %286 = or disjoint i64 %264, 2
  %287 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %286
  %288 = load i32, ptr %287, align 8, !tbaa !41
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %289
  store i16 %281, ptr %290, align 1, !tbaa !10
  %291 = trunc i64 %261 to i32
  %292 = shl i32 %279, %291
  %293 = load i32, ptr %9, align 8, !tbaa !42
  %294 = or i32 %293, %292
  store i32 %294, ptr %9, align 8, !tbaa !42
  %295 = add nuw nsw i64 %261, 1
  %296 = icmp eq i64 %295, 4
  br i1 %296, label %557, label %260, !llvm.loop !95

297:                                              ; preds = %258, %297
  %298 = phi i64 [ 0, %258 ], [ %322, %297 ]
  %299 = load ptr, ptr %259, align 8, !tbaa !40
  %300 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %298
  %301 = load ptr, ptr %254, align 16, !tbaa !6
  %302 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %298
  %303 = load i8, ptr %302, align 1, !tbaa !10
  %304 = zext i8 %303 to i64
  %305 = getelementptr inbounds i8, ptr %301, i64 %304
  %306 = load ptr, ptr %255, align 16, !tbaa !6
  %307 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %298
  %308 = load i16, ptr %307, align 2, !tbaa !11
  %309 = zext i16 %308 to i64
  %310 = getelementptr inbounds i8, ptr %306, i64 %309
  %311 = tail call i32 %299(ptr noundef nonnull %300, ptr noundef %305, ptr noundef %310) #10
  %312 = trunc i32 %311 to i8
  %313 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %298
  %314 = load i32, ptr %313, align 4, !tbaa !41
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %315
  store i8 %312, ptr %316, align 1, !tbaa !10
  %317 = trunc i64 %298 to i32
  %318 = lshr i32 %317, 2
  %319 = shl i32 %311, %318
  %320 = load i32, ptr %9, align 8, !tbaa !42
  %321 = or i32 %320, %319
  store i32 %321, ptr %9, align 8, !tbaa !42
  %322 = add nuw nsw i64 %298, 1
  %323 = icmp eq i64 %322, 16
  br i1 %323, label %557, label %297, !llvm.loop !96

324:                                              ; preds = %246
  br i1 %252, label %426, label %325

325:                                              ; preds = %324
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %3) #9
  %326 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %327 = load i32, ptr %326, align 16, !tbaa !47
  %328 = icmp eq i32 %327, 0
  %329 = and i32 %8, 1
  %330 = select i1 %328, i32 %329, i32 0
  %331 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 11
  %332 = load ptr, ptr %331, align 8, !tbaa !97
  %333 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %334 = load ptr, ptr %333, align 16, !tbaa !6
  %335 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %336 = load ptr, ptr %335, align 16, !tbaa !6
  call void %332(ptr noundef nonnull %3, ptr noundef %334, ptr noundef %336) #10
  %337 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 13
  %338 = load i32, ptr %337, align 4, !tbaa !98
  %339 = shl nsw i32 %338, 2
  %340 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 60, i64 1
  %341 = load i32, ptr %340, align 4, !tbaa !41
  %342 = add i32 %341, %339
  store i32 %342, ptr %340, align 4, !tbaa !41
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
  %360 = load i32, ptr %337, align 4, !tbaa !98
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %365, label %362

362:                                              ; preds = %357
  %363 = load ptr, ptr %343, align 8, !tbaa !99
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
  %371 = load ptr, ptr %346, align 8, !tbaa !51
  %372 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2, i64 %358
  call void %371(ptr noundef nonnull %372, ptr noundef nonnull %366) #10
  br i1 %347, label %378, label %373

373:                                              ; preds = %370
  %374 = load ptr, ptr %348, align 8, !tbaa !100
  %375 = call i32 %374(ptr noundef nonnull %372) #10
  %376 = add nsw i32 %375, %359
  %377 = icmp sgt i32 %375, 3
  br i1 %377, label %378, label %383

378:                                              ; preds = %370, %373
  %379 = phi i32 [ %376, %373 ], [ %359, %370 ]
  %380 = shl nuw nsw i32 1, %367
  %381 = load i32, ptr %9, align 8, !tbaa !42
  %382 = or i32 %381, %380
  store i32 %382, ptr %9, align 8, !tbaa !42
  br label %383

383:                                              ; preds = %378, %373, %365
  %384 = phi i32 [ %359, %365 ], [ %376, %373 ], [ %379, %378 ]
  %385 = add nuw nsw i64 %358, 1
  %386 = icmp eq i64 %385, 4
  br i1 %386, label %349, label %357, !llvm.loop !101

387:                                              ; preds = %349
  store i32 0, ptr %9, align 8, !tbaa !42
  %388 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 12
  store i32 0, ptr %388, align 1, !tbaa !10
  %389 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 20
  store i32 0, ptr %389, align 1, !tbaa !10
  %390 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 28
  store i32 0, ptr %390, align 1, !tbaa !10
  %391 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 36
  store i32 0, ptr %391, align 1, !tbaa !10
  br label %425

392:                                              ; preds = %353, %411
  %393 = phi i64 [ 0, %353 ], [ %423, %411 ]
  %394 = load i32, ptr %9, align 8, !tbaa !42
  %395 = trunc i64 %393 to i32
  %396 = shl nuw nsw i32 1, %395
  %397 = and i32 %394, %396
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %411, label %399

399:                                              ; preds = %392
  %400 = load ptr, ptr %354, align 8, !tbaa !52
  %401 = getelementptr inbounds [4 x [64 x i16]], ptr %3, i64 0, i64 %393
  %402 = load ptr, ptr %355, align 8, !tbaa !6
  call void %400(ptr noundef nonnull %401, ptr noundef %402, i32 noundef %6) #10
  %403 = load ptr, ptr %356, align 16, !tbaa !53
  %404 = load ptr, ptr %335, align 16, !tbaa !6
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
  %415 = load i32, ptr %414, align 16, !tbaa !41
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %416
  store i16 %412, ptr %417, align 1, !tbaa !10
  %418 = or disjoint i64 %413, 2
  %419 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %418
  %420 = load i32, ptr %419, align 8, !tbaa !41
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %421
  store i16 %412, ptr %422, align 1, !tbaa !10
  %423 = add nuw nsw i64 %393, 1
  %424 = icmp eq i64 %423, 4
  br i1 %424, label %425, label %392, !llvm.loop !102

425:                                              ; preds = %411, %387
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %3) #9
  br label %557

426:                                              ; preds = %324
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #9
  %427 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 6
  %428 = load ptr, ptr %427, align 16, !tbaa !103
  %429 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %430 = load ptr, ptr %429, align 16, !tbaa !6
  %431 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %432 = load ptr, ptr %431, align 16, !tbaa !6
  call void %428(ptr noundef nonnull %4, ptr noundef %430, ptr noundef %432) #10
  %433 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 13
  %434 = load i32, ptr %433, align 4, !tbaa !98
  %435 = shl nsw i32 %434, 4
  %436 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 60
  %437 = load i32, ptr %436, align 16, !tbaa !41
  %438 = add i32 %437, %435
  store i32 %438, ptr %436, align 16, !tbaa !41
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
  %461 = load i32, ptr %433, align 4, !tbaa !98
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %466, label %463

463:                                              ; preds = %456
  %464 = load ptr, ptr %439, align 8, !tbaa !99
  %465 = getelementptr inbounds [16 x [16 x i16]], ptr %4, i64 0, i64 %460
  call void %464(ptr noundef nonnull %465, ptr noundef nonnull %440, ptr noundef nonnull %441, i32 noundef 16) #10
  br label %466

466:                                              ; preds = %463, %456
  %467 = getelementptr inbounds [16 x [16 x i16]], ptr %4, i64 0, i64 %460
  %468 = trunc i64 %460 to i32
  %469 = call fastcc i32 @x264_quant_4x4(ptr noundef nonnull %0, ptr noundef nonnull %467, i32 noundef %6, i32 noundef 2, i32 noundef 0, i32 noundef %468) #11
  %470 = trunc i32 %469 to i8
  %471 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %460
  %472 = load i32, ptr %471, align 4, !tbaa !41
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %473
  store i8 %470, ptr %474, align 1, !tbaa !10
  %475 = icmp eq i32 %469, 0
  br i1 %475, label %487, label %476

476:                                              ; preds = %466
  %477 = load ptr, ptr %442, align 8, !tbaa !44
  %478 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %460
  call void %477(ptr noundef nonnull %478, ptr noundef nonnull %467) #10
  %479 = load ptr, ptr %443, align 8, !tbaa !45
  %480 = load ptr, ptr %444, align 8, !tbaa !6
  call void %479(ptr noundef nonnull %467, ptr noundef %480, i32 noundef %6) #10
  %481 = icmp slt i32 %459, 6
  %482 = select i1 %445, i1 %481, i1 false
  br i1 %482, label %483, label %487

483:                                              ; preds = %476
  %484 = load ptr, ptr %446, align 8, !tbaa !104
  %485 = call i32 %484(ptr noundef nonnull %478) #10
  %486 = add nsw i32 %485, %459
  br label %487

487:                                              ; preds = %476, %483, %466
  %488 = phi i32 [ %459, %466 ], [ %486, %483 ], [ %459, %476 ]
  %489 = phi i32 [ %458, %466 ], [ 1, %483 ], [ 1, %476 ]
  %490 = add nuw nsw i64 %457, 1
  %491 = icmp eq i64 %490, 4
  br i1 %491, label %454, label %456, !llvm.loop !105

492:                                              ; preds = %454
  %493 = icmp slt i32 %488, 4
  br i1 %493, label %494, label %504

494:                                              ; preds = %492
  %495 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %452
  %496 = load i32, ptr %495, align 16, !tbaa !41
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %497
  store i16 0, ptr %498, align 1, !tbaa !10
  %499 = or disjoint i64 %452, 2
  %500 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %499
  %501 = load i32, ptr %500, align 8, !tbaa !41
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %502
  store i16 0, ptr %503, align 1, !tbaa !10
  br label %525

504:                                              ; preds = %492
  %505 = trunc i64 %450 to i32
  %506 = shl nuw nsw i32 1, %505
  %507 = load i32, ptr %9, align 8, !tbaa !42
  %508 = or i32 %507, %506
  store i32 %508, ptr %9, align 8, !tbaa !42
  br label %525

509:                                              ; preds = %454
  %510 = icmp eq i32 %489, 0
  br i1 %510, label %525, label %511

511:                                              ; preds = %509
  %512 = load ptr, ptr %448, align 16, !tbaa !69
  %513 = load ptr, ptr %431, align 16, !tbaa !6
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
  %523 = load i32, ptr %9, align 8, !tbaa !42
  %524 = or i32 %523, %522
  store i32 %524, ptr %9, align 8, !tbaa !42
  br label %525

525:                                              ; preds = %509, %511, %494, %504
  %526 = add nuw nsw i64 %450, 1
  %527 = icmp eq i64 %526, 4
  br i1 %527, label %453, label %449, !llvm.loop !106

528:                                              ; preds = %453
  %529 = icmp slt i32 %455, 6
  br i1 %529, label %530, label %535

530:                                              ; preds = %528
  store i32 0, ptr %9, align 8, !tbaa !42
  %531 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 12
  store i32 0, ptr %531, align 1, !tbaa !10
  %532 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 20
  store i32 0, ptr %532, align 1, !tbaa !10
  %533 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 28
  store i32 0, ptr %533, align 1, !tbaa !10
  %534 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 36
  store i32 0, ptr %534, align 1, !tbaa !10
  br label %556

535:                                              ; preds = %528, %553
  %536 = phi i64 [ %554, %553 ], [ 0, %528 ]
  %537 = load i32, ptr %9, align 8, !tbaa !42
  %538 = trunc i64 %536 to i32
  %539 = shl nuw nsw i32 1, %538
  %540 = and i32 %537, %539
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %553, label %542

542:                                              ; preds = %535
  %543 = load ptr, ptr %448, align 16, !tbaa !69
  %544 = load ptr, ptr %431, align 16, !tbaa !6
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
  br i1 %555, label %556, label %535, !llvm.loop !107

556:                                              ; preds = %553, %530, %453
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #9
  br label %557

557:                                              ; preds = %234, %260, %297, %556, %425, %122, %77
  %558 = phi i1 [ %241, %556 ], [ %241, %425 ], [ %55, %122 ], [ %55, %77 ], [ %241, %297 ], [ %241, %260 ], [ %55, %234 ]
  %559 = load i32, ptr %12, align 8, !tbaa !79
  %560 = icmp ult i32 %559, 4
  br i1 %560, label %561, label %577

561:                                              ; preds = %557
  %562 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 60
  %563 = load i32, ptr %562, align 4, !tbaa !108
  %564 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %565 = load i32, ptr %564, align 4, !tbaa !13
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %568, label %567

567:                                              ; preds = %561
  call void @x264_predict_lossless_8x8_chroma(ptr noundef nonnull %0, i32 noundef %563) #11
  br label %577

568:                                              ; preds = %561
  %569 = sext i32 %563 to i64
  %570 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 65, i64 %569
  %571 = load ptr, ptr %570, align 8, !tbaa !6
  %572 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %573 = load ptr, ptr %572, align 8, !tbaa !6
  call void %571(ptr noundef %573) #10
  %574 = load ptr, ptr %570, align 8, !tbaa !6
  %575 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %576 = load ptr, ptr %575, align 16, !tbaa !6
  call void %574(ptr noundef %576) #10
  br label %577

577:                                              ; preds = %557, %567, %568
  %578 = load i32, ptr %12, align 8, !tbaa !79
  %579 = icmp ugt i32 %578, 3
  %580 = zext i1 %579 to i32
  %581 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 69
  %582 = load i32, ptr %581, align 4, !tbaa !109
  call void @x264_mb_encode_8x8_chroma(ptr noundef nonnull %0, i32 noundef %580, i32 noundef %582) #11
  %583 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  %584 = load i32, ptr %583, align 4, !tbaa !55
  %585 = shl i32 %584, 4
  %586 = load i32, ptr %9, align 8, !tbaa !42
  %587 = or i32 %585, %586
  %588 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  %589 = load i32, ptr %588, align 16, !tbaa !110
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %606, label %591

591:                                              ; preds = %577
  %592 = load i8, ptr %11, align 1, !tbaa !10
  %593 = zext i8 %592 to i32
  %594 = shl nuw nsw i32 %593, 8
  %595 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 46
  %596 = load i8, ptr %595, align 1, !tbaa !10
  %597 = zext i8 %596 to i32
  %598 = shl nuw nsw i32 %597, 9
  %599 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 47
  %600 = load i8, ptr %599, align 1, !tbaa !10
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
  %610 = load ptr, ptr %609, align 16, !tbaa !111
  %611 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %612 = load i32, ptr %611, align 8, !tbaa !81
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds i16, ptr %610, i64 %613
  store i16 %608, ptr %614, align 2, !tbaa !11
  br i1 %558, label %615, label %642

615:                                              ; preds = %606
  %616 = load i32, ptr %12, align 8, !tbaa !79
  %617 = icmp eq i32 %616, 4
  br i1 %617, label %618, label %636

618:                                              ; preds = %615
  %619 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %620 = load i32, ptr %619, align 4, !tbaa !112
  %621 = icmp eq i32 %620, 16
  %622 = or i32 %586, %584
  %623 = icmp eq i32 %622, 0
  %624 = select i1 %621, i1 %623, i1 false
  br i1 %624, label %625, label %642

625:                                              ; preds = %618
  %626 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 12
  %627 = load i32, ptr %626, align 4, !tbaa !10
  %628 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 10
  %629 = load i32, ptr %628, align 4, !tbaa !10
  %630 = icmp eq i32 %627, %629
  br i1 %630, label %631, label %642

631:                                              ; preds = %625
  %632 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %633 = load i8, ptr %632, align 1, !tbaa !10
  %634 = icmp eq i8 %633, 0
  br i1 %634, label %635, label %642

635:                                              ; preds = %631
  store i32 6, ptr %12, align 8, !tbaa !79
  br label %642

636:                                              ; preds = %615
  %637 = or i32 %586, %584
  %638 = icmp eq i32 %616, 7
  %639 = icmp eq i32 %637, 0
  %640 = select i1 %638, i1 %639, i1 false
  br i1 %640, label %641, label %642

641:                                              ; preds = %636
  store i32 18, ptr %12, align 8, !tbaa !79
  br label %642

642:                                              ; preds = %618, %625, %631, %635, %606, %641, %636, %62, %56, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_macroblock_encode_pskip(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 62
  %3 = load i32, ptr %2, align 4, !tbaa !85
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %75

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 12
  %7 = load i16, ptr %6, align 4, !tbaa !11
  %8 = sext i16 %7 to i32
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 18
  %10 = load i32, ptr %9, align 8, !tbaa !41
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 19
  %12 = load i32, ptr %11, align 16, !tbaa !41
  %13 = tail call fastcc i32 @x264_clip3(i32 noundef %8, i32 noundef %10, i32 noundef %12) #11
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 12, i64 1
  %15 = load i16, ptr %14, align 2, !tbaa !11
  %16 = sext i16 %15 to i32
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 18, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !41
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 19, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !41
  %21 = tail call fastcc i32 @x264_clip3(i32 noundef %16, i32 noundef %18, i32 noundef %20) #11
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70
  %23 = load ptr, ptr %22, align 8, !tbaa !113
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %25 = load ptr, ptr %24, align 16, !tbaa !6
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23
  %28 = load i32, ptr %27, align 16, !tbaa !41
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22
  tail call void %23(ptr noundef %25, i32 noundef 32, ptr noundef nonnull %26, i32 noundef %28, i32 noundef %13, i32 noundef %21, i32 noundef 16, i32 noundef 16, ptr noundef nonnull %29) #10
  %30 = or i32 %21, %13
  %31 = icmp eq i32 %30, 0
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20, i64 0, i64 0, i64 4
  %35 = load ptr, ptr %34, align 16, !tbaa !6
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23, i64 1
  %37 = load i32, ptr %36, align 4, !tbaa !41
  %38 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20, i64 0, i64 0, i64 5
  %40 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23, i64 2
  br i1 %31, label %48, label %41

41:                                               ; preds = %5
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !114
  tail call void %43(ptr noundef %33, i32 noundef 32, ptr noundef %35, i32 noundef %37, i32 noundef %13, i32 noundef %21, i32 noundef 8, i32 noundef 8) #10
  %44 = load ptr, ptr %42, align 8, !tbaa !114
  %45 = load ptr, ptr %38, align 16, !tbaa !6
  %46 = load ptr, ptr %39, align 8, !tbaa !6
  %47 = load i32, ptr %40, align 8, !tbaa !41
  tail call void %44(ptr noundef %45, i32 noundef 32, ptr noundef %46, i32 noundef %47, i32 noundef %13, i32 noundef %21, i32 noundef 8, i32 noundef 8) #10
  br label %55

48:                                               ; preds = %5
  %49 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 4, i64 3
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  tail call void %50(ptr noundef %33, i32 noundef 32, ptr noundef %35, i32 noundef %37, i32 noundef 8) #10
  %51 = load ptr, ptr %49, align 8, !tbaa !6
  %52 = load ptr, ptr %38, align 16, !tbaa !6
  %53 = load ptr, ptr %39, align 8, !tbaa !6
  %54 = load i32, ptr %40, align 8, !tbaa !41
  tail call void %51(ptr noundef %52, i32 noundef 32, ptr noundef %53, i32 noundef %54, i32 noundef 8) #10
  br label %55

55:                                               ; preds = %48, %41
  %56 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 0, i64 1, i32 5
  %57 = load ptr, ptr %56, align 16, !tbaa !115
  %58 = icmp eq ptr %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 0, i64 1
  %61 = getelementptr inbounds ptr, ptr %57, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  %63 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  tail call void %62(ptr noundef %64, i32 noundef 32, ptr noundef %64, i32 noundef 32, ptr noundef nonnull %60, i32 noundef 8) #10
  br label %65

65:                                               ; preds = %59, %55
  %66 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 0, i64 2, i32 5
  %67 = load ptr, ptr %66, align 16, !tbaa !115
  %68 = icmp eq ptr %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 0, i64 2
  %71 = getelementptr inbounds ptr, ptr %67, i64 2
  %72 = load ptr, ptr %71, align 8, !tbaa !6
  %73 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %74 = load ptr, ptr %73, align 16, !tbaa !6
  tail call void %72(ptr noundef %74, i32 noundef 32, ptr noundef %74, i32 noundef 32, ptr noundef nonnull %70, i32 noundef 8) #10
  br label %75

75:                                               ; preds = %65, %69, %1
  tail call fastcc void @x264_macroblock_encode_skip(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: optsize
declare void @x264_mb_mc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @x264_macroblock_encode_skip(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 12
  store i32 0, ptr %2, align 1, !tbaa !10
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 20
  store i32 0, ptr %3, align 1, !tbaa !10
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 28
  store i32 0, ptr %4, align 1, !tbaa !10
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 36
  store i32 0, ptr %5, align 1, !tbaa !10
  br label %15

6:                                                ; preds = %15
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  store i32 0, ptr %7, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  store i32 0, ptr %8, align 4, !tbaa !55
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 41
  %10 = load ptr, ptr %9, align 16, !tbaa !111
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !81
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i16, ptr %10, i64 %13
  store i16 0, ptr %14, align 2, !tbaa !11
  ret void

15:                                               ; preds = %1, %15
  %16 = phi i64 [ 16, %1 ], [ %21, %15 ]
  %17 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !41
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %19
  store i8 0, ptr %20, align 1, !tbaa !10
  %21 = add nuw nsw i64 %16, 1
  %22 = icmp eq i64 %21, 24
  br i1 %22, label %6, label %15, !llvm.loop !117
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_mb_encode_i16x16(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [16 x [16 x i16]], align 16
  %4 = alloca [16 x i16], align 16
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %6 = load ptr, ptr %5, align 16, !tbaa !6
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %8 = load ptr, ptr %7, align 16, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #9
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %10 = load i32, ptr %9, align 4, !tbaa !13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %49, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 4
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  br label %23

15:                                               ; preds = %23
  %16 = mul nsw i32 %46, 15
  store i32 %16, ptr %14, align 8, !tbaa !42
  %17 = call fastcc i32 @array_non_zero_int(ptr noundef nonnull %4, i32 noundef 32) #11, !range !60
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 44
  store i8 %18, ptr %19, align 1, !tbaa !10
  %20 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54
  call void %21(ptr noundef nonnull %22, ptr noundef nonnull %4) #10
  br label %160

23:                                               ; preds = %12, %23
  %24 = phi i64 [ 0, %12 ], [ %47, %23 ]
  %25 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !10
  %27 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %24
  %28 = load i16, ptr %27, align 2, !tbaa !11
  %29 = load ptr, ptr %13, align 8, !tbaa !64
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %24
  %31 = zext i8 %26 to i64
  %32 = getelementptr inbounds i8, ptr %6, i64 %31
  %33 = zext i16 %28 to i64
  %34 = getelementptr inbounds i8, ptr %8, i64 %33
  %35 = getelementptr inbounds [16 x i8], ptr @block_idx_yx_1d, i64 0, i64 %24
  %36 = load i8, ptr %35, align 1, !tbaa !10
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %37
  %39 = call i32 %29(ptr noundef nonnull %30, ptr noundef %32, ptr noundef %34, ptr noundef nonnull %38) #10
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %24
  %42 = load i32, ptr %41, align 4, !tbaa !41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %43
  store i8 %40, ptr %44, align 1, !tbaa !10
  %45 = load i32, ptr %14, align 8, !tbaa !42
  %46 = or i32 %45, %39
  store i32 %46, ptr %14, align 8, !tbaa !42
  %47 = add nuw nsw i64 %24, 1
  %48 = icmp eq i64 %47, 16
  br i1 %48, label %15, label %23, !llvm.loop !118

49:                                               ; preds = %2
  %50 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 14
  %51 = load i32, ptr %50, align 8, !tbaa !56
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 9, i32 0
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 6
  %55 = load ptr, ptr %54, align 16, !tbaa !103
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
  %67 = load i16, ptr %66, align 16, !tbaa !11
  %68 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_1d, i64 0, i64 %64
  %69 = load i8, ptr %68, align 1, !tbaa !10
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %70
  store i16 %67, ptr %71, align 2, !tbaa !11
  store i16 0, ptr %66, align 16, !tbaa !11
  %72 = trunc i64 %64 to i32
  %73 = call fastcc i32 @x264_quant_4x4(ptr noundef nonnull %0, ptr noundef nonnull %66, i32 noundef %1, i32 noundef 1, i32 noundef 1, i32 noundef %72) #11
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %64
  %76 = load i32, ptr %75, align 4, !tbaa !41
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %77
  store i8 %74, ptr %78, align 1, !tbaa !10
  %79 = icmp eq i32 %73, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %63
  %81 = load ptr, ptr %56, align 8, !tbaa !44
  %82 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %64
  call void %81(ptr noundef nonnull %82, ptr noundef nonnull %66) #10
  %83 = load ptr, ptr %57, align 8, !tbaa !45
  %84 = load ptr, ptr %58, align 16, !tbaa !6
  call void %83(ptr noundef nonnull %66, ptr noundef %84, i32 noundef %1) #10
  %85 = icmp slt i32 %65, 6
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load ptr, ptr %59, align 8, !tbaa !67
  %88 = call i32 %87(ptr noundef nonnull %82) #10
  %89 = add nsw i32 %88, %65
  br label %90

90:                                               ; preds = %86, %80
  %91 = phi i32 [ %89, %86 ], [ %65, %80 ]
  store i32 15, ptr %60, align 8, !tbaa !42
  br label %92

92:                                               ; preds = %63, %90
  %93 = phi i32 [ %91, %90 ], [ %65, %63 ]
  %94 = add nuw nsw i64 %64, 1
  %95 = icmp eq i64 %94, 16
  br i1 %95, label %61, label %63, !llvm.loop !119

96:                                               ; preds = %61
  store i32 0, ptr %60, align 8, !tbaa !42
  %97 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 12
  store i32 0, ptr %97, align 1, !tbaa !10
  %98 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 20
  store i32 0, ptr %98, align 1, !tbaa !10
  %99 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 28
  store i32 0, ptr %99, align 1, !tbaa !10
  %100 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 36
  store i32 0, ptr %100, align 1, !tbaa !10
  br label %101

101:                                              ; preds = %96, %61
  %102 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 13
  %103 = load ptr, ptr %102, align 8, !tbaa !120
  call void %103(ptr noundef nonnull %4) #10
  %104 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %105 = load i32, ptr %104, align 16, !tbaa !47
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %101
  %108 = call i32 @x264_quant_dc_trellis(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 0, i32 noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 0) #10
  br label %126

109:                                              ; preds = %101
  %110 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !121
  %112 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33
  %113 = load ptr, ptr %112, align 16, !tbaa !6
  %114 = sext i32 %1 to i64
  %115 = getelementptr inbounds [16 x i16], ptr %113, i64 %114
  %116 = load i16, ptr %115, align 2, !tbaa !11
  %117 = lshr i16 %116, 1
  %118 = zext nneg i16 %117 to i32
  %119 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35
  %120 = load ptr, ptr %119, align 16, !tbaa !6
  %121 = getelementptr inbounds [16 x i16], ptr %120, i64 %114
  %122 = load i16, ptr %121, align 2, !tbaa !11
  %123 = zext i16 %122 to i32
  %124 = shl nuw nsw i32 %123, 1
  %125 = call i32 %111(ptr noundef nonnull %4, i32 noundef %118, i32 noundef %124) #10
  br label %126

126:                                              ; preds = %109, %107
  %127 = phi i32 [ %108, %107 ], [ %125, %109 ]
  %128 = trunc i32 %127 to i8
  %129 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 44
  store i8 %128, ptr %129, align 1, !tbaa !10
  %130 = icmp eq i32 %127, 0
  br i1 %130, label %151, label %131

131:                                              ; preds = %126
  %132 = load ptr, ptr %56, align 8, !tbaa !44
  %133 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54
  call void %132(ptr noundef nonnull %133, ptr noundef nonnull %4) #10
  %134 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 14
  %135 = load ptr, ptr %134, align 16, !tbaa !122
  call void %135(ptr noundef nonnull %4) #10
  %136 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 6
  %137 = load ptr, ptr %136, align 8, !tbaa !123
  %138 = load ptr, ptr %58, align 16, !tbaa !6
  call void %137(ptr noundef nonnull %4, ptr noundef %138, i32 noundef %1) #10
  %139 = load i32, ptr %60, align 8, !tbaa !42
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %157, label %141

141:                                              ; preds = %131, %141
  %142 = phi i64 [ %149, %141 ], [ 0, %131 ]
  %143 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_1d, i64 0, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !10
  %145 = zext i8 %144 to i64
  %146 = getelementptr inbounds [16 x i16], ptr %4, i64 0, i64 %145
  %147 = load i16, ptr %146, align 2, !tbaa !11
  %148 = getelementptr inbounds [16 x [16 x i16]], ptr %3, i64 0, i64 %142
  store i16 %147, ptr %148, align 16, !tbaa !11
  %149 = add nuw nsw i64 %142, 1
  %150 = icmp eq i64 %149, 16
  br i1 %150, label %154, label %141, !llvm.loop !124

151:                                              ; preds = %126
  %152 = load i32, ptr %60, align 8, !tbaa !42
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %141, %151
  %155 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 7
  %156 = load ptr, ptr %155, align 8, !tbaa !125
  call void %156(ptr noundef %8, ptr noundef nonnull %3) #10
  br label %160

157:                                              ; preds = %131
  %158 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 8
  %159 = load ptr, ptr %158, align 16, !tbaa !126
  call void %159(ptr noundef %8, ptr noundef nonnull %4) #10
  br label %160

160:                                              ; preds = %151, %154, %157, %15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %3) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @x264_clip3(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = icmp slt i32 %0, %1
  %5 = tail call i32 @llvm.smin.i32(i32 %0, i32 %2)
  %6 = select i1 %4, i32 %1, i32 %5
  ret i32 %6
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
  %7 = load i32, ptr %6, align 16, !tbaa !78
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 10
  %11 = load i16, ptr %10, align 4, !tbaa !11
  %12 = sext i16 %11 to i32
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 18
  %14 = load i32, ptr %13, align 8, !tbaa !41
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 19
  %16 = load i32, ptr %15, align 16, !tbaa !41
  %17 = tail call fastcc i32 @x264_clip3(i32 noundef %12, i32 noundef %14, i32 noundef %16) #11
  %18 = trunc i32 %17 to i16
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 10, i64 1
  %20 = load i16, ptr %19, align 2, !tbaa !11
  %21 = sext i16 %20 to i32
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 18, i64 1
  %23 = load i32, ptr %22, align 4, !tbaa !41
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 19, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !41
  %26 = tail call fastcc i32 @x264_clip3(i32 noundef %21, i32 noundef %23, i32 noundef %25) #11
  %27 = trunc i32 %26 to i16
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70
  %29 = load ptr, ptr %28, align 8, !tbaa !113
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %31 = load ptr, ptr %30, align 16, !tbaa !6
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 20
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23
  %34 = load i32, ptr %33, align 16, !tbaa !41
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
  %62 = load ptr, ptr %43, align 16, !tbaa !66
  %63 = load ptr, ptr %44, align 16, !tbaa !6
  %64 = zext nneg i32 %59 to i64
  %65 = getelementptr inbounds i8, ptr %63, i64 %64
  %66 = load ptr, ptr %45, align 16, !tbaa !6
  %67 = zext nneg i32 %61 to i64
  %68 = getelementptr inbounds i8, ptr %66, i64 %67
  call void %62(ptr noundef nonnull %3, ptr noundef %65, ptr noundef %68) #10
  br label %69

69:                                               ; preds = %52, %86
  %70 = phi i64 [ 0, %52 ], [ %88, %86 ]
  %71 = phi i32 [ %53, %52 ], [ %87, %86 ]
  %72 = load ptr, ptr %46, align 8, !tbaa !48
  %73 = getelementptr inbounds [4 x [16 x i16]], ptr %3, i64 0, i64 %70
  %74 = load ptr, ptr %47, align 8, !tbaa !6
  %75 = getelementptr inbounds [16 x i16], ptr %74, i64 %48
  %76 = load ptr, ptr %49, align 8, !tbaa !6
  %77 = getelementptr inbounds [16 x i16], ptr %76, i64 %48
  %78 = call i32 %72(ptr noundef nonnull %73, ptr noundef %75, ptr noundef %77) #10
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %69
  %81 = load ptr, ptr %50, align 8, !tbaa !44
  call void %81(ptr noundef nonnull %5, ptr noundef nonnull %73) #10
  %82 = load ptr, ptr %51, align 8, !tbaa !104
  %83 = call i32 %82(ptr noundef nonnull %5) #10
  %84 = add nsw i32 %83, %71
  %85 = icmp sgt i32 %84, 5
  br i1 %85, label %193, label %86

86:                                               ; preds = %80, %69
  %87 = phi i32 [ %84, %80 ], [ %71, %69 ]
  %88 = add nuw nsw i64 %70, 1
  %89 = icmp eq i64 %88, 4
  br i1 %89, label %90, label %69, !llvm.loop !127

90:                                               ; preds = %86
  %91 = add nuw nsw i32 %54, 1
  %92 = icmp eq i32 %91, 4
  br i1 %92, label %93, label %52, !llvm.loop !128

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 69
  %95 = load i32, ptr %94, align 4, !tbaa !109
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [52 x i32], ptr @x264_lambda2_tab, i64 0, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !41
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
  %124 = load ptr, ptr %123, align 8, !tbaa !6
  %125 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 %122
  %126 = load ptr, ptr %125, align 8, !tbaa !6
  br i1 %8, label %127, label %146

127:                                              ; preds = %119
  %128 = or disjoint i64 %121, 4
  %129 = getelementptr inbounds [6 x ptr], ptr %107, i64 0, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !6
  %131 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 23, i64 %122
  %132 = load i32, ptr %131, align 4, !tbaa !41
  br i1 %105, label %135, label %133

133:                                              ; preds = %127
  %134 = load ptr, ptr %106, align 8, !tbaa !114
  call void %134(ptr noundef %126, i32 noundef 32, ptr noundef %130, i32 noundef %132, i32 noundef %108, i32 noundef %109, i32 noundef 8, i32 noundef 8) #10
  br label %137

135:                                              ; preds = %127
  %136 = load ptr, ptr %110, align 8, !tbaa !6
  call void %136(ptr noundef %126, i32 noundef 32, ptr noundef %130, i32 noundef %132, i32 noundef 8) #10
  br label %137

137:                                              ; preds = %135, %133
  %138 = getelementptr inbounds [3 x %struct.x264_weight_t], ptr %111, i64 0, i64 %122, i32 5
  %139 = load ptr, ptr %138, align 16, !tbaa !115
  %140 = icmp eq ptr %139, null
  br i1 %140, label %146, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds [3 x %struct.x264_weight_t], ptr %111, i64 0, i64 %122
  %143 = getelementptr inbounds ptr, ptr %139, i64 2
  %144 = load ptr, ptr %143, align 8, !tbaa !6
  %145 = load ptr, ptr %125, align 8, !tbaa !6
  call void %144(ptr noundef %145, i32 noundef 32, ptr noundef %145, i32 noundef 32, ptr noundef nonnull %142, i32 noundef 8) #10
  br label %146

146:                                              ; preds = %137, %141, %119
  %147 = load ptr, ptr %112, align 8, !tbaa !6
  %148 = call i32 %147(ptr noundef %126, i32 noundef 32, ptr noundef %124, i32 noundef 16) #10
  %149 = icmp slt i32 %148, %100
  br i1 %149, label %190, label %150

150:                                              ; preds = %146
  %151 = load ptr, ptr %113, align 8, !tbaa !58
  call void %151(ptr noundef nonnull %4, ptr noundef %124, ptr noundef %126) #10
  %152 = load ptr, ptr %114, align 8, !tbaa !59
  %153 = load ptr, ptr %115, align 8, !tbaa !6
  %154 = getelementptr inbounds [16 x i16], ptr %153, i64 %96
  %155 = load i16, ptr %154, align 2, !tbaa !11
  %156 = lshr i16 %155, 1
  %157 = zext nneg i16 %156 to i32
  %158 = load ptr, ptr %116, align 8, !tbaa !6
  %159 = getelementptr inbounds [16 x i16], ptr %158, i64 %96
  %160 = load i16, ptr %159, align 2, !tbaa !11
  %161 = zext i16 %160 to i32
  %162 = shl nuw nsw i32 %161, 1
  %163 = call i32 %152(ptr noundef nonnull %4, i32 noundef %157, i32 noundef %162) #10
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %193

165:                                              ; preds = %150
  %166 = icmp slt i32 %148, %117
  br i1 %166, label %190, label %167

167:                                              ; preds = %165
  %168 = load ptr, ptr %43, align 16, !tbaa !66
  call void %168(ptr noundef nonnull %3, ptr noundef %124, ptr noundef %126) #10
  br label %169

169:                                              ; preds = %167, %186
  %170 = phi i64 [ 0, %167 ], [ %188, %186 ]
  %171 = phi i32 [ 0, %167 ], [ %187, %186 ]
  %172 = getelementptr inbounds [4 x [16 x i16]], ptr %3, i64 0, i64 %170
  store i16 0, ptr %172, align 16, !tbaa !11
  %173 = load ptr, ptr %46, align 8, !tbaa !48
  %174 = load ptr, ptr %115, align 8, !tbaa !6
  %175 = getelementptr inbounds [16 x i16], ptr %174, i64 %96
  %176 = load ptr, ptr %116, align 8, !tbaa !6
  %177 = getelementptr inbounds [16 x i16], ptr %176, i64 %96
  %178 = call i32 %173(ptr noundef nonnull %172, ptr noundef %175, ptr noundef %177) #10
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %169
  %181 = load ptr, ptr %50, align 8, !tbaa !44
  call void %181(ptr noundef nonnull %5, ptr noundef nonnull %172) #10
  %182 = load ptr, ptr %118, align 8, !tbaa !67
  %183 = call i32 %182(ptr noundef nonnull %5) #10
  %184 = add nsw i32 %183, %171
  %185 = icmp sgt i32 %184, 6
  br i1 %185, label %193, label %186

186:                                              ; preds = %180, %169
  %187 = phi i32 [ %184, %180 ], [ %171, %169 ]
  %188 = add nuw nsw i64 %170, 1
  %189 = icmp eq i64 %188, 4
  br i1 %189, label %190, label %169, !llvm.loop !129

190:                                              ; preds = %186, %146, %165
  br i1 %120, label %119, label %191, !llvm.loop !130

191:                                              ; preds = %190
  %192 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 62
  store i32 1, ptr %192, align 4, !tbaa !85
  br label %193

193:                                              ; preds = %80, %150, %180, %191
  %194 = phi i32 [ 1, %191 ], [ 0, %180 ], [ 0, %150 ], [ 0, %80 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #9
  ret i32 %194
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @x264_noise_reduction_update(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 17
  %3 = load i32, ptr %2, align 4, !tbaa !131
  %4 = sext i32 %3 to i64
  br label %6

5:                                                ; preds = %29
  ret void

6:                                                ; preds = %1, %29
  %7 = phi i1 [ true, %1 ], [ false, %29 ]
  %8 = phi i64 [ 0, %1 ], [ 1, %29 ]
  %9 = select i1 %7, ptr @x264_dct4_weight2_tab, ptr @x264_dct8_weight2_tab
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 60, i64 %8
  %11 = load i32, ptr %10, align 4, !tbaa !41
  %12 = select i1 %7, i32 262144, i32 65536
  %13 = icmp ugt i32 %11, %12
  %14 = select i1 %7, i64 16, i64 64
  br i1 %13, label %15, label %25

15:                                               ; preds = %6, %15
  %16 = phi i64 [ %20, %15 ], [ 0, %6 ]
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 58, i64 %8, i64 %16
  %18 = load <4 x i32>, ptr %17, align 4, !tbaa !41
  %19 = lshr <4 x i32> %18, <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %19, ptr %17, align 4, !tbaa !41
  %20 = add nuw i64 %16, 4
  %21 = icmp eq i64 %20, %14
  br i1 %21, label %22, label %15, !llvm.loop !132

22:                                               ; preds = %15
  %23 = load i32, ptr %10, align 4, !tbaa !41
  %24 = lshr i32 %23, 1
  store i32 %24, ptr %10, align 4, !tbaa !41
  br label %25

25:                                               ; preds = %6, %22
  %26 = phi i32 [ %24, %22 ], [ %11, %6 ]
  %27 = zext nneg i32 %26 to i64
  %28 = mul nsw i64 %27, %4
  br label %30

29:                                               ; preds = %30
  br i1 %7, label %6, label %5, !llvm.loop !135

30:                                               ; preds = %25, %30
  %31 = phi i64 [ 0, %25 ], [ %47, %30 ]
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 58, i64 %8, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !41
  %34 = lshr i32 %33, 1
  %35 = zext nneg i32 %34 to i64
  %36 = add nsw i64 %28, %35
  %37 = zext i32 %33 to i64
  %38 = getelementptr inbounds i16, ptr %9, i64 %31
  %39 = load i16, ptr %38, align 2, !tbaa !11
  %40 = zext i16 %39 to i64
  %41 = mul nuw nsw i64 %40, %37
  %42 = lshr i64 %41, 8
  %43 = add nuw nsw i64 %42, 1
  %44 = udiv i64 %36, %43
  %45 = trunc i64 %44 to i16
  %46 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 59, i64 %8, i64 %31
  store i16 %45, ptr %46, align 2, !tbaa !11
  %47 = add nuw nsw i64 %31, 1
  %48 = icmp eq i64 %47, %14
  br i1 %48, label %29, label %30, !llvm.loop !136
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_macroblock_encode_p8x8(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  %4 = alloca [64 x i16], align 16
  %5 = alloca [4 x [16 x i16]], align 16
  %6 = alloca [16 x i16], align 16
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 68
  %8 = load i32, ptr %7, align 16, !tbaa !78
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %10 = load ptr, ptr %9, align 16, !tbaa !6
  %11 = and i32 %1, 1
  %12 = shl nuw nsw i32 %11, 3
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %10, i64 %13
  %15 = ashr i32 %1, 1
  %16 = shl nsw i32 %15, 7
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %14, i64 %17
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %20 = load ptr, ptr %19, align 16, !tbaa !6
  %21 = getelementptr inbounds i8, ptr %20, i64 %13
  %22 = shl nsw i32 %15, 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %21, i64 %23
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 14
  %26 = load i32, ptr %25, align 8, !tbaa !56
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 62
  %28 = load i32, ptr %27, align 4, !tbaa !85
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  tail call void @x264_mb_mc_8x8(ptr noundef nonnull %0, i32 noundef %1) #10
  br label %31

31:                                               ; preds = %30, %2
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %33 = load i32, ptr %32, align 4, !tbaa !13
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  %36 = load i32, ptr %35, align 4, !tbaa !87
  %37 = icmp eq i32 %36, 0
  br i1 %34, label %120, label %38

38:                                               ; preds = %31
  br i1 %37, label %59, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !49
  %42 = sext i32 %1 to i64
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2, i64 %42
  %44 = tail call i32 %41(ptr noundef nonnull %43, ptr noundef %18, ptr noundef %24) #10
  %45 = trunc i32 %44 to i16
  %46 = mul i16 %45, 257
  %47 = shl nsw i32 %1, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %48
  %50 = load i32, ptr %49, align 16, !tbaa !41
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %51
  store i16 %46, ptr %52, align 1, !tbaa !10
  %53 = or disjoint i32 %47, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %54
  %56 = load i32, ptr %55, align 8, !tbaa !41
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %57
  store i16 %46, ptr %58, align 1, !tbaa !10
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
  %67 = load ptr, ptr %61, align 8, !tbaa !40
  %68 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %65
  %69 = load ptr, ptr %9, align 16, !tbaa !6
  %70 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %65
  %71 = load i8, ptr %70, align 1, !tbaa !10
  %72 = zext i8 %71 to i64
  %73 = getelementptr inbounds i8, ptr %69, i64 %72
  %74 = load ptr, ptr %19, align 16, !tbaa !6
  %75 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %65
  %76 = load i16, ptr %75, align 2, !tbaa !11
  %77 = zext i16 %76 to i64
  %78 = getelementptr inbounds i8, ptr %74, i64 %77
  %79 = tail call i32 %67(ptr noundef nonnull %68, ptr noundef %73, ptr noundef %78) #10
  %80 = trunc i32 %79 to i8
  %81 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %65
  %82 = load i32, ptr %81, align 4, !tbaa !41
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %83
  store i8 %80, ptr %84, align 1, !tbaa !10
  %85 = or i32 %79, %66
  %86 = add nsw i64 %65, 1
  %87 = trunc i64 %86 to i32
  %88 = icmp eq i32 %63, %87
  br i1 %88, label %89, label %64, !llvm.loop !137

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
  %103 = load ptr, ptr %102, align 8, !tbaa !6
  %104 = getelementptr inbounds i8, ptr %103, i64 %92
  %105 = getelementptr inbounds i8, ptr %104, i64 %94
  %106 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 %101
  %107 = load ptr, ptr %106, align 8, !tbaa !6
  %108 = getelementptr inbounds i8, ptr %107, i64 %92
  %109 = getelementptr inbounds i8, ptr %108, i64 %17
  %110 = load ptr, ptr %95, align 8, !tbaa !64
  %111 = shl nuw nsw i64 %100, 2
  %112 = add nsw i64 %111, %97
  %113 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %112
  %114 = call i32 %110(ptr noundef nonnull %113, ptr noundef %105, ptr noundef %109, ptr noundef nonnull %3) #10
  %115 = trunc i32 %114 to i8
  %116 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %112
  %117 = load i32, ptr %116, align 4, !tbaa !41
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %118
  store i8 %115, ptr %119, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br i1 %99, label %98, label %284, !llvm.loop !138

120:                                              ; preds = %31
  br i1 %37, label %164, label %121

121:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #9
  %122 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 9
  %123 = load ptr, ptr %122, align 8, !tbaa !50
  call void %123(ptr noundef nonnull %4, ptr noundef %18, ptr noundef %24) #10
  %124 = call fastcc i32 @x264_quant_8x8(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %8, i32 noundef 0, i32 noundef %1) #11
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %149, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72
  %128 = load ptr, ptr %127, align 8, !tbaa !51
  %129 = sext i32 %1 to i64
  %130 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2, i64 %129
  call void %128(ptr noundef nonnull %130, ptr noundef nonnull %4) #10
  %131 = icmp eq i32 %26, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 12
  %134 = load i32, ptr %133, align 16, !tbaa !47
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 10
  %138 = load ptr, ptr %137, align 8, !tbaa !100
  %139 = call i32 %138(ptr noundef nonnull %130) #10
  %140 = icmp slt i32 %139, 4
  br i1 %140, label %149, label %141

141:                                              ; preds = %126, %132, %136
  %142 = phi i32 [ 1, %136 ], [ %124, %132 ], [ %124, %126 ]
  %143 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 4
  %144 = load ptr, ptr %143, align 8, !tbaa !52
  %145 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 1
  %146 = load ptr, ptr %145, align 8, !tbaa !6
  call void %144(ptr noundef nonnull %4, ptr noundef %146, i32 noundef %8) #10
  %147 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 10
  %148 = load ptr, ptr %147, align 16, !tbaa !53
  call void %148(ptr noundef %24, ptr noundef nonnull %4) #10
  br label %149

149:                                              ; preds = %121, %136, %141
  %150 = phi i16 [ 257, %141 ], [ 0, %136 ], [ 0, %121 ]
  %151 = phi i32 [ %142, %141 ], [ 0, %136 ], [ 0, %121 ]
  %152 = shl nsw i32 %1, 2
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %153
  %155 = load i32, ptr %154, align 16, !tbaa !41
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %156
  store i16 %150, ptr %157, align 1, !tbaa !10
  %158 = or disjoint i32 %152, 2
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %159
  %161 = load i32, ptr %160, align 8, !tbaa !41
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %162
  store i16 %150, ptr %163, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #9
  br label %223

164:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #9
  %165 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 2
  %166 = load ptr, ptr %165, align 16, !tbaa !66
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
  %190 = load i32, ptr %189, align 4, !tbaa !41
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %191
  store i8 %188, ptr %192, align 1, !tbaa !10
  %193 = icmp eq i32 %187, 0
  br i1 %193, label %203, label %194

194:                                              ; preds = %180
  %195 = load ptr, ptr %168, align 8, !tbaa !44
  %196 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %185
  call void %195(ptr noundef nonnull %196, ptr noundef nonnull %184) #10
  %197 = load ptr, ptr %169, align 8, !tbaa !45
  %198 = load ptr, ptr %170, align 8, !tbaa !6
  call void %197(ptr noundef nonnull %184, ptr noundef %198, i32 noundef %8) #10
  br i1 %171, label %203, label %199

199:                                              ; preds = %194
  %200 = load ptr, ptr %172, align 8, !tbaa !104
  %201 = call i32 %200(ptr noundef nonnull %196) #10
  %202 = add nsw i32 %201, %182
  br label %203

203:                                              ; preds = %194, %199, %180
  %204 = phi i32 [ %183, %180 ], [ 1, %199 ], [ 1, %194 ]
  %205 = phi i32 [ %182, %180 ], [ %202, %199 ], [ %182, %194 ]
  %206 = add nuw nsw i64 %181, 1
  %207 = icmp eq i64 %206, 4
  br i1 %207, label %174, label %180, !llvm.loop !139

208:                                              ; preds = %174
  %209 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 4
  %210 = load ptr, ptr %209, align 16, !tbaa !69
  call void %210(ptr noundef %24, ptr noundef nonnull %5) #10
  br label %222

211:                                              ; preds = %174
  %212 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %173
  %213 = load i32, ptr %212, align 16, !tbaa !41
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %214
  store i16 0, ptr %215, align 1, !tbaa !10
  %216 = or disjoint i32 %167, 2
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %217
  %219 = load i32, ptr %218, align 8, !tbaa !41
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %220
  store i16 0, ptr %221, align 1, !tbaa !10
  br label %222

222:                                              ; preds = %211, %208
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #9
  br label %223

223:                                              ; preds = %222, %149
  %224 = phi i32 [ %151, %149 ], [ %178, %222 ]
  %225 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 69
  %226 = load i32, ptr %225, align 4, !tbaa !109
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
  %248 = load ptr, ptr %247, align 8, !tbaa !6
  %249 = getelementptr inbounds i8, ptr %248, i64 %228
  %250 = getelementptr inbounds i8, ptr %249, i64 %230
  %251 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 %246
  %252 = load ptr, ptr %251, align 8, !tbaa !6
  %253 = getelementptr inbounds i8, ptr %252, i64 %228
  %254 = getelementptr inbounds i8, ptr %253, i64 %17
  %255 = load ptr, ptr %231, align 16, !tbaa !43
  call void %255(ptr noundef nonnull %6, ptr noundef %250, ptr noundef %254) #10
  store i16 0, ptr %6, align 16, !tbaa !11
  %256 = load i32, ptr %232, align 16, !tbaa !47
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %260, label %258

258:                                              ; preds = %243
  %259 = call i32 @x264_quant_4x4_trellis(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 3, i32 noundef %226, i32 noundef 4, i32 noundef 0, i32 noundef 1, i32 noundef 0) #10
  br label %267

260:                                              ; preds = %243
  %261 = load ptr, ptr %233, align 8, !tbaa !48
  %262 = load ptr, ptr %234, align 8, !tbaa !6
  %263 = getelementptr inbounds [16 x i16], ptr %262, i64 %235
  %264 = load ptr, ptr %236, align 8, !tbaa !6
  %265 = getelementptr inbounds [16 x i16], ptr %264, i64 %235
  %266 = call i32 %261(ptr noundef nonnull %6, ptr noundef %263, ptr noundef %265) #10
  br label %267

267:                                              ; preds = %260, %258
  %268 = phi i32 [ %259, %258 ], [ %266, %260 ]
  %269 = trunc i32 %268 to i8
  %270 = shl nuw nsw i64 %245, 2
  %271 = add nsw i64 %270, %242
  %272 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %271
  %273 = load i32, ptr %272, align 4, !tbaa !41
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %274
  store i8 %269, ptr %275, align 1, !tbaa !10
  %276 = icmp eq i32 %268, 0
  br i1 %276, label %283, label %277

277:                                              ; preds = %267
  %278 = load ptr, ptr %238, align 8, !tbaa !44
  %279 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %271
  call void %278(ptr noundef nonnull %279, ptr noundef nonnull %6) #10
  %280 = load ptr, ptr %239, align 8, !tbaa !45
  %281 = load ptr, ptr %240, align 8, !tbaa !6
  call void %280(ptr noundef nonnull %6, ptr noundef %281, i32 noundef %226) #10
  %282 = load ptr, ptr %241, align 8, !tbaa !46
  call void %282(ptr noundef %254, ptr noundef nonnull %6) #10
  br label %283

283:                                              ; preds = %277, %267
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  br i1 %244, label %243, label %284, !llvm.loop !140

284:                                              ; preds = %98, %283
  %285 = phi i32 [ %224, %283 ], [ %90, %98 ]
  %286 = shl nuw i32 1, %1
  %287 = xor i32 %286, -1
  %288 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %289 = load i32, ptr %288, align 8, !tbaa !42
  %290 = and i32 %289, %287
  %291 = shl i32 %285, %1
  %292 = or i32 %290, %291
  store i32 %292, ptr %288, align 8, !tbaa !42
  %293 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  store i32 2, ptr %293, align 4, !tbaa !55
  ret void
}

; Function Attrs: optsize
declare void @x264_mb_mc_8x8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_macroblock_encode_p4x4(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [16 x i16], align 16
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 68
  %5 = load i32, ptr %4, align 16, !tbaa !78
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %7 = load ptr, ptr %6, align 16, !tbaa !6
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds [16 x i8], ptr @block_idx_xy_fenc, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !10
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds i8, ptr %7, i64 %11
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %14 = load ptr, ptr %13, align 16, !tbaa !6
  %15 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %8
  %16 = load i16, ptr %15, align 2, !tbaa !11
  %17 = zext i16 %16 to i64
  %18 = getelementptr inbounds i8, ptr %14, i64 %17
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %20 = load i32, ptr %19, align 4, !tbaa !13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !40
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %8
  %26 = tail call i32 %24(ptr noundef nonnull %25, ptr noundef %12, ptr noundef %18) #10
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %8
  %29 = load i32, ptr %28, align 4, !tbaa !41
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %30
  store i8 %27, ptr %31, align 1, !tbaa !10
  br label %53

32:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71
  %34 = load ptr, ptr %33, align 16, !tbaa !43
  call void %34(ptr noundef nonnull %3, ptr noundef %12, ptr noundef %18) #10
  %35 = call fastcc i32 @x264_quant_4x4(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %5, i32 noundef 2, i32 noundef 0, i32 noundef %1) #11
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %8
  %38 = load i32, ptr %37, align 4, !tbaa !41
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %39
  store i8 %36, ptr %40, align 1, !tbaa !10
  %41 = icmp eq i32 %35, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !44
  %45 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %8
  call void %44(ptr noundef nonnull %45, ptr noundef nonnull %3) #10
  %46 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !45
  %48 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !6
  call void %47(ptr noundef nonnull %3, ptr noundef %49, i32 noundef %5) #10
  %50 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 71, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  call void %51(ptr noundef %18, ptr noundef nonnull %3) #10
  br label %52

52:                                               ; preds = %42, %32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  br label %53

53:                                               ; preds = %52, %22
  ret void
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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !16, i64 25812}
!14 = !{!"x264_t", !15, i64 0, !8, i64 704, !16, i64 1736, !16, i64 1740, !16, i64 1744, !16, i64 1748, !16, i64 1752, !21, i64 1760, !7, i64 1832, !16, i64 1840, !16, i64 1844, !16, i64 1848, !16, i64 1852, !16, i64 1856, !16, i64 1860, !16, i64 1864, !16, i64 1868, !16, i64 1872, !16, i64 1876, !16, i64 1880, !16, i64 1884, !16, i64 1888, !16, i64 1892, !8, i64 1896, !7, i64 3200, !8, i64 3208, !7, i64 3328, !16, i64 3336, !16, i64 3340, !8, i64 3344, !8, i64 3376, !8, i64 3392, !8, i64 3424, !8, i64 3440, !8, i64 3472, !8, i64 3488, !8, i64 3520, !8, i64 3536, !8, i64 4272, !7, i64 7216, !24, i64 7232, !25, i64 13904, !26, i64 14416, !7, i64 14680, !7, i64 14688, !16, i64 14696, !8, i64 14704, !16, i64 14856, !8, i64 14864, !8, i64 15016, !16, i64 15024, !16, i64 15028, !23, i64 15032, !27, i64 15040, !28, i64 16368, !7, i64 26704, !31, i64 26712, !8, i64 30400, !8, i64 30912, !8, i64 31168, !7, i64 31176, !8, i64 31184, !8, i64 31232, !8, i64 31248, !8, i64 31304, !8, i64 31360, !8, i64 31456, !7, i64 31552, !34, i64 31560, !35, i64 32616, !36, i64 32912, !37, i64 33032, !38, i64 33080, !39, i64 33256, !7, i64 33328}
!15 = !{!"x264_param_t", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !16, i64 40, !17, i64 44, !16, i64 80, !16, i64 84, !16, i64 88, !16, i64 92, !16, i64 96, !16, i64 100, !16, i64 104, !16, i64 108, !16, i64 112, !16, i64 116, !16, i64 120, !16, i64 124, !16, i64 128, !16, i64 132, !16, i64 136, !16, i64 140, !16, i64 144, !7, i64 152, !8, i64 160, !8, i64 176, !8, i64 192, !8, i64 208, !8, i64 224, !8, i64 288, !7, i64 352, !7, i64 360, !16, i64 368, !16, i64 372, !7, i64 376, !18, i64 384, !20, i64 488, !16, i64 632, !16, i64 636, !16, i64 640, !16, i64 644, !16, i64 648, !16, i64 652, !16, i64 656, !16, i64 660, !16, i64 664, !16, i64 668, !16, i64 672, !16, i64 676, !16, i64 680, !16, i64 684, !16, i64 688, !16, i64 692, !7, i64 696}
!16 = !{!"int", !8, i64 0}
!17 = !{!"", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32}
!18 = !{!"", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !16, i64 40, !16, i64 44, !16, i64 48, !16, i64 52, !16, i64 56, !16, i64 60, !16, i64 64, !16, i64 68, !19, i64 72, !19, i64 76, !16, i64 80, !8, i64 84, !16, i64 92, !16, i64 96}
!19 = !{!"float", !8, i64 0}
!20 = !{!"", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !19, i64 24, !19, i64 28, !19, i64 32, !16, i64 36, !16, i64 40, !19, i64 44, !19, i64 48, !19, i64 52, !16, i64 56, !19, i64 60, !16, i64 64, !16, i64 68, !16, i64 72, !7, i64 80, !16, i64 88, !7, i64 96, !19, i64 104, !19, i64 108, !19, i64 112, !7, i64 120, !16, i64 128, !7, i64 136}
!21 = !{!"", !16, i64 0, !16, i64 4, !7, i64 8, !16, i64 16, !7, i64 24, !22, i64 32}
!22 = !{!"bs_s", !7, i64 0, !7, i64 8, !7, i64 16, !23, i64 24, !16, i64 32, !16, i64 36}
!23 = !{!"long", !8, i64 0}
!24 = !{!"", !7, i64 0, !7, i64 8, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !16, i64 40, !16, i64 44, !16, i64 48, !16, i64 52, !16, i64 56, !8, i64 60, !16, i64 68, !16, i64 72, !16, i64 76, !16, i64 80, !16, i64 84, !16, i64 88, !16, i64 92, !8, i64 96, !8, i64 352, !16, i64 6496, !16, i64 6500, !8, i64 6504, !16, i64 6632, !16, i64 6636, !16, i64 6640, !16, i64 6644, !16, i64 6648, !16, i64 6652, !16, i64 6656, !16, i64 6660}
!25 = !{!"", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !7, i64 16, !7, i64 24, !7, i64 32, !16, i64 48, !8, i64 52}
!26 = !{!"", !7, i64 0, !8, i64 8, !7, i64 24, !8, i64 32, !16, i64 176, !16, i64 180, !16, i64 184, !16, i64 188, !16, i64 192, !16, i64 196, !16, i64 200, !23, i64 208, !23, i64 216, !8, i64 224, !23, i64 240, !23, i64 248, !16, i64 256, !16, i64 260}
!27 = !{!"", !8, i64 0, !8, i64 32, !8, i64 48, !8, i64 560}
!28 = !{!"", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !16, i64 40, !16, i64 44, !16, i64 48, !16, i64 52, !16, i64 56, !16, i64 60, !16, i64 64, !16, i64 68, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !16, i64 120, !8, i64 124, !8, i64 140, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !16, i64 240, !16, i64 244, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !8, i64 304, !8, i64 320, !8, i64 336, !8, i64 352, !7, i64 864, !7, i64 872, !7, i64 880, !8, i64 888, !16, i64 1016, !16, i64 1020, !8, i64 1024, !16, i64 1028, !16, i64 1032, !16, i64 1036, !16, i64 1040, !16, i64 1044, !16, i64 1048, !16, i64 1052, !16, i64 1056, !16, i64 1060, !29, i64 1072, !30, i64 8656, !16, i64 9424, !16, i64 9428, !16, i64 9432, !16, i64 9436, !16, i64 9440, !16, i64 9444, !16, i64 9448, !16, i64 9452, !8, i64 9456, !16, i64 9472, !16, i64 9476, !8, i64 9480, !7, i64 9992, !8, i64 10000, !7, i64 10256, !8, i64 10264, !16, i64 10284, !8, i64 10288}
!29 = !{!"", !8, i64 0, !8, i64 384, !8, i64 1248, !8, i64 1504, !8, i64 1760, !8, i64 2144, !8, i64 2624, !8, i64 2640, !16, i64 2656, !16, i64 2660, !8, i64 2672, !8, i64 3184, !8, i64 3696, !8, i64 3776, !8, i64 3904, !8, i64 3928, !8, i64 3952, !8, i64 3976, !8, i64 3984, !8, i64 7056, !8, i64 7312, !8, i64 7568}
!30 = !{!"", !8, i64 0, !8, i64 48, !8, i64 96, !8, i64 176, !8, i64 496, !8, i64 656, !8, i64 696, !8, i64 728, !16, i64 736, !8, i64 740, !16, i64 744, !16, i64 748, !16, i64 752, !16, i64 756}
!31 = !{!"", !32, i64 0, !8, i64 704, !8, i64 728, !8, i64 768, !8, i64 808, !8, i64 880, !8, i64 920, !8, i64 960, !8, i64 1000, !8, i64 1040, !8, i64 1080, !8, i64 1120, !8, i64 1880, !8, i64 2152, !8, i64 2168, !8, i64 3192, !8, i64 3240, !8, i64 3656, !8, i64 3664, !8, i64 3672}
!32 = !{!"", !16, i64 0, !16, i64 4, !16, i64 8, !8, i64 12, !16, i64 88, !16, i64 92, !16, i64 96, !8, i64 100, !8, i64 108, !8, i64 364, !8, i64 432, !8, i64 456, !8, i64 664, !8, i64 672, !33, i64 696}
!33 = !{!"double", !8, i64 0}
!34 = !{!"", !8, i64 0, !8, i64 56, !8, i64 112, !8, i64 168, !8, i64 224, !8, i64 256, !8, i64 312, !8, i64 368, !8, i64 424, !8, i64 480, !8, i64 536, !7, i64 592, !8, i64 600, !8, i64 632, !7, i64 664, !7, i64 672, !8, i64 680, !8, i64 736, !8, i64 792, !8, i64 848, !8, i64 904, !7, i64 960, !7, i64 968, !7, i64 976, !7, i64 984, !7, i64 992, !7, i64 1000, !7, i64 1008, !7, i64 1016, !7, i64 1024, !7, i64 1032, !7, i64 1040, !7, i64 1048}
!35 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !8, i64 104, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!36 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112}
!37 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!38 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !8, i64 88, !8, i64 136}
!39 = !{!"", !8, i64 0, !8, i64 16, !8, i64 32, !8, i64 48, !7, i64 64}
!40 = !{!14, !7, i64 33056}
!41 = !{!16, !16, i64 0}
!42 = !{!14, !16, i64 17400}
!43 = !{!14, !7, i64 32912}
!44 = !{!14, !7, i64 33040}
!45 = !{!14, !7, i64 33120}
!46 = !{!14, !7, i64 32920}
!47 = !{!14, !16, i64 16416}
!48 = !{!14, !7, i64 33088}
!49 = !{!14, !7, i64 33048}
!50 = !{!14, !7, i64 32984}
!51 = !{!14, !7, i64 33032}
!52 = !{!14, !7, i64 33112}
!53 = !{!14, !7, i64 32992}
!54 = !{!14, !7, i64 33080}
!55 = !{!14, !16, i64 17404}
!56 = !{!14, !16, i64 16424}
!57 = !{!14, !7, i64 32152}
!58 = !{!14, !7, i64 32936}
!59 = !{!14, !7, i64 33104}
!60 = !{i32 0, i32 2}
!61 = !{!14, !7, i64 32952}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!14, !7, i64 33064}
!65 = distinct !{!65, !63}
!66 = !{!14, !7, i64 32928}
!67 = !{!14, !7, i64 33144}
!68 = distinct !{!68, !63}
!69 = !{!14, !7, i64 32944}
!70 = distinct !{!70, !63}
!71 = !{i32 -33554432, i32 33554432}
!72 = distinct !{!72, !63}
!73 = distinct !{!73, !63}
!74 = distinct !{!74, !63}
!75 = !{!14, !7, i64 14680}
!76 = !{!14, !16, i64 16436}
!77 = !{!14, !7, i64 32776}
!78 = !{!14, !16, i64 25792}
!79 = !{!14, !16, i64 17384}
!80 = !{!14, !16, i64 7268}
!81 = !{!14, !16, i64 16392}
!82 = !{!14, !16, i64 7252}
!83 = !{!14, !16, i64 16372}
!84 = !{!14, !7, i64 16616}
!85 = !{!14, !16, i64 17420}
!86 = !{!14, !16, i64 17408}
!87 = !{!14, !16, i64 17396}
!88 = !{!14, !16, i64 17416}
!89 = !{!14, !16, i64 20100}
!90 = !{!14, !7, i64 32816}
!91 = !{!14, !7, i64 31552}
!92 = distinct !{!92, !63}
!93 = !{!14, !16, i64 20096}
!94 = distinct !{!94, !63}
!95 = distinct !{!95, !63}
!96 = distinct !{!96, !63}
!97 = !{!14, !7, i64 33000}
!98 = !{!14, !16, i64 16420}
!99 = !{!14, !7, i64 33136}
!100 = !{!14, !7, i64 33160}
!101 = distinct !{!101, !63}
!102 = distinct !{!102, !63}
!103 = !{!14, !7, i64 32960}
!104 = !{!14, !7, i64 33152}
!105 = distinct !{!105, !63}
!106 = distinct !{!106, !63}
!107 = distinct !{!107, !63}
!108 = !{!14, !16, i64 17412}
!109 = !{!14, !16, i64 25796}
!110 = !{!14, !16, i64 128}
!111 = !{!14, !7, i64 16640}
!112 = !{!14, !16, i64 17388}
!113 = !{!14, !7, i64 32616}
!114 = !{!14, !7, i64 32632}
!115 = !{!116, !7, i64 48}
!116 = !{!"x264_weight_t", !8, i64 0, !8, i64 16, !16, i64 32, !16, i64 36, !16, i64 40, !7, i64 48}
!117 = distinct !{!117, !63}
!118 = distinct !{!118, !63}
!119 = distinct !{!119, !63}
!120 = !{!14, !7, i64 33016}
!121 = !{!14, !7, i64 33096}
!122 = !{!14, !7, i64 33024}
!123 = !{!14, !7, i64 33128}
!124 = distinct !{!124, !63}
!125 = !{!14, !7, i64 32968}
!126 = !{!14, !7, i64 32976}
!127 = distinct !{!127, !63}
!128 = distinct !{!128, !63}
!129 = distinct !{!129, !63}
!130 = distinct !{!130, !63}
!131 = !{!14, !16, i64 452}
!132 = distinct !{!132, !63, !133, !134}
!133 = !{!"llvm.loop.isvectorized", i32 1}
!134 = !{!"llvm.loop.unroll.runtime.disable"}
!135 = distinct !{!135, !63}
!136 = distinct !{!136, !63}
!137 = distinct !{!137, !63}
!138 = distinct !{!138, !63}
!139 = distinct !{!139, !63}
!140 = distinct !{!140, !63}
