; ModuleID = 'x264_src/encoder/cabac.c'
source_filename = "x264_src/encoder/cabac.c"
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

@x264_mb_pred_mode4x4_fix = internal unnamed_addr constant [13 x i8] c"\FF\00\01\02\03\04\05\06\07\08\02\02\02", align 1
@x264_scan8 = internal unnamed_addr constant [27 x i32] [i32 12, i32 13, i32 20, i32 21, i32 14, i32 15, i32 22, i32 23, i32 28, i32 29, i32 36, i32 37, i32 30, i32 31, i32 38, i32 39, i32 9, i32 10, i32 17, i32 18, i32 33, i32 34, i32 41, i32 42, i32 44, i32 46, i32 47], align 16
@block_idx_x = internal unnamed_addr constant [16 x i8] c"\00\01\00\01\02\03\02\03\00\01\00\01\02\03\02\03", align 16
@block_idx_y = internal unnamed_addr constant [16 x i8] c"\00\00\01\01\00\00\01\01\02\02\03\03\02\02\03\03", align 16
@x264_mb_partition_listX_table = internal unnamed_addr constant [2 x [17 x i8]] [[17 x i8] c"\01\01\01\01\00\00\00\00\01\01\01\01\00\00\00\00\00", [17 x i8] c"\00\00\00\00\01\01\01\01\01\01\01\01\00\00\00\00\00"], align 16
@x264_mb_type_list_table = internal unnamed_addr constant [19 x [2 x [2 x i8]]] [[2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\00\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\00\01"], [2 x [2 x i8]] [[2 x i8] c"\00\01", [2 x i8] c"\01\00"], [2 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\00\01", [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\00"], [2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\01"], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer], align 16
@x264_cabac_mb_type.i_mb_bits = internal unnamed_addr constant [27 x i8] c"1)\045-\00Cc\00=/\009%\06Ss\00Kk\00[{\00Gg!", align 16
@x264_mb_pred_mode16x16_fix = internal unnamed_addr constant [7 x i8] c"\00\01\02\03\02\02\02", align 1
@x264_cabac_mb_mvd_cpn.ctxes = internal unnamed_addr constant [8 x i8] c"\03\04\05\06\06\06\06\06", align 1
@x264_mb_transform_8x8_allowed.partition_tab = internal unnamed_addr constant [19 x i8] c"\00\00\00\00\01\02\00\01\01\01\01\01\01\01\01\01\01\01\00", align 16
@significant_coeff_flag_offset = internal unnamed_addr constant [2 x [6 x i16]] [[6 x i16] [i16 105, i16 120, i16 134, i16 149, i16 152, i16 402], [6 x i16] [i16 277, i16 292, i16 306, i16 321, i16 324, i16 436]], align 16
@last_coeff_flag_offset = internal unnamed_addr constant [2 x [6 x i16]] [[6 x i16] [i16 166, i16 181, i16 195, i16 210, i16 213, i16 417], [6 x i16] [i16 338, i16 353, i16 367, i16 382, i16 385, i16 451]], align 16
@coeff_abs_level_m1_offset = internal unnamed_addr constant [6 x i16] [i16 227, i16 237, i16 247, i16 257, i16 266, i16 426], align 2
@significant_coeff_flag_offset_8x8 = internal unnamed_addr constant [2 x [63 x i8]] [[63 x i8] c"\00\01\02\03\04\05\05\04\04\03\03\04\04\04\05\05\04\04\04\04\03\03\06\07\07\07\08\09\0A\09\08\07\07\06\0B\0C\0D\0B\06\07\08\09\0E\0A\09\08\06\0B\0C\0D\0B\06\09\0E\0A\09\0B\0C\0D\0B\0E\0A\0C", [63 x i8] c"\00\01\01\02\02\03\03\04\05\06\07\07\07\08\04\05\06\09\0A\0A\08\0B\0C\0B\09\09\0A\0A\08\0B\0C\0B\09\09\0A\0A\08\0B\0C\0B\09\09\0A\0A\08\0D\0D\09\09\0A\0A\08\0D\0D\09\09\0A\0A\0E\0E\0E\0E\0E"], align 16
@last_coeff_flag_offset_8x8 = internal unnamed_addr constant [63 x i8] c"\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\06\06\06\06\07\07\07\07\08\08\08", align 16
@count_cat_m1 = internal unnamed_addr constant [5 x i8] c"\0F\0E\0F\03\0E", align 1
@coeff_abs_level1_ctx = internal unnamed_addr constant [8 x i8] c"\01\02\03\04\00\00\00\00", align 1
@coeff_abs_levelgt1_ctx = internal unnamed_addr constant [8 x i8] c"\05\05\05\05\06\07\08\09", align 1
@coeff_abs_level_transition = internal unnamed_addr constant [2 x [8 x i8]] [[8 x i8] c"\01\02\03\03\04\05\06\07", [8 x i8] c"\04\04\04\04\05\06\07\07"], align 16

; Function Attrs: nounwind uwtable
define dso_local void @x264_cabac_mb_skip(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 24
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 30
  %9 = load i32, ptr %8, align 8, !tbaa !64
  %10 = icmp ne i32 %9, 6
  %11 = icmp ne i32 %9, 18
  %12 = and i1 %10, %11
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %7, %2
  %15 = phi i32 [ 0, %2 ], [ %13, %7 ]
  %16 = and i32 %4, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 29
  %20 = load i32, ptr %19, align 4, !tbaa !65
  %21 = icmp ne i32 %20, 6
  %22 = icmp ne i32 %20, 18
  %23 = and i1 %21, %22
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %18, %14
  %26 = phi i32 [ 0, %14 ], [ %24, %18 ]
  %27 = add nuw nsw i32 %26, %15
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %29 = load i32, ptr %28, align 16, !tbaa !66
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 11, i32 24
  %32 = add nuw nsw i32 %27, %31
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 42
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %33, i32 noundef %32, i32 noundef %1) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @x264_cabac_encode_decision_c(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_write_cabac(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i16], align 4
  %4 = alloca [2 x i16], align 4
  %5 = alloca [2 x i16], align 4
  %6 = alloca [2 x i16], align 4
  %7 = alloca [2 x i16], align 4
  %8 = alloca [2 x i16], align 4
  %9 = alloca [2 x i16], align 4
  %10 = alloca [2 x i16], align 4
  %11 = alloca [2 x i16], align 4
  %12 = alloca [2 x i16], align 4
  %13 = alloca [2 x i16], align 4
  %14 = alloca [2 x i16], align 4
  %15 = alloca [2 x i16], align 4
  %16 = alloca [2 x i16], align 4
  %17 = alloca [2 x i16], align 4
  %18 = alloca [2 x i16], align 4
  %19 = alloca [2 x i16], align 4
  %20 = alloca [2 x i16], align 4
  %21 = alloca [2 x i16], align 4
  %22 = alloca [2 x i16], align 4
  %23 = alloca [2 x i16], align 4
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 53
  %25 = load i32, ptr %24, align 8, !tbaa !67
  %26 = getelementptr inbounds %struct.x264_cabac_t, ptr %1, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !68
  %28 = getelementptr inbounds %struct.x264_cabac_t, ptr %1, i64 0, i32 4
  %29 = load ptr, ptr %28, align 16, !tbaa !69
  %30 = ptrtoint ptr %27 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %31, %30
  %33 = getelementptr inbounds %struct.x264_cabac_t, ptr %1, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !70
  %35 = getelementptr inbounds %struct.x264_cabac_t, ptr %1, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !71
  %37 = trunc i64 %32 to i32
  %38 = sub i32 %37, %34
  %39 = shl i32 %38, 3
  %40 = sub i32 %39, %36
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %42 = load i32, ptr %41, align 4, !tbaa !72
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %66, label %44

44:                                               ; preds = %2
  %45 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %46 = load i32, ptr %45, align 4, !tbaa !73
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 38
  %51 = load ptr, ptr %50, align 8, !tbaa !74
  %52 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %53 = load i32, ptr %52, align 8, !tbaa !75
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !76
  %56 = sub nsw i32 %53, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %51, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !77
  switch i8 %59, label %66 [
    i8 6, label %60
    i8 18, label %60
  ]

60:                                               ; preds = %49, %49, %44
  %61 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 12
  %62 = load i32, ptr %61, align 4, !tbaa !78
  %63 = add nsw i32 %62, 70
  %64 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %65 = load i32, ptr %64, align 4, !tbaa !79
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %63, i32 noundef %65) #7
  br label %66

66:                                               ; preds = %60, %49, %2
  %67 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %68 = load i32, ptr %67, align 16, !tbaa !66
  switch i32 %68, label %105 [
    i32 2, label %69
    i32 0, label %92
  ]

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 24
  %71 = load i32, ptr %70, align 8, !tbaa !34
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 30
  %76 = load i32, ptr %75, align 8, !tbaa !64
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i32
  br label %79

79:                                               ; preds = %74, %69
  %80 = phi i32 [ 0, %69 ], [ %78, %74 ]
  %81 = and i32 %71, 2
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 29
  %85 = load i32, ptr %84, align 4, !tbaa !65
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = add nuw nsw i32 %80, %87
  br label %89

89:                                               ; preds = %83, %79
  %90 = phi i32 [ %80, %79 ], [ %88, %83 ]
  %91 = add nuw nsw i32 %90, 3
  tail call fastcc void @x264_cabac_mb_type_intra(ptr noundef %0, ptr noundef %1, i32 noundef %25, i32 noundef %91, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10)
  br label %163

92:                                               ; preds = %66
  switch i32 %25, label %104 [
    i32 4, label %93
    i32 5, label %103
  ]

93:                                               ; preds = %92
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 14, i32 noundef 0) #7
  %94 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %95 = load i32, ptr %94, align 4, !tbaa !80
  %96 = icmp ne i32 %95, 16
  %97 = zext i1 %96 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 15, i32 noundef %97) #7
  %98 = load i32, ptr %94, align 4, !tbaa !80
  %99 = icmp eq i32 %98, 16
  %100 = select i1 %99, i32 16, i32 17
  %101 = icmp eq i32 %98, 14
  %102 = zext i1 %101 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %100, i32 noundef %102) #7
  br label %163

103:                                              ; preds = %92
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 14, i32 noundef 0) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 15, i32 noundef 0) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 16, i32 noundef 1) #7
  br label %163

104:                                              ; preds = %92
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 14, i32 noundef 1) #7
  tail call fastcc void @x264_cabac_mb_type_intra(ptr noundef %0, ptr noundef %1, i32 noundef %25, i32 noundef 17, i32 noundef 18, i32 noundef 19, i32 noundef 19, i32 noundef 20, i32 noundef 20)
  br label %163

105:                                              ; preds = %66
  %106 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 24
  %107 = load i32, ptr %106, align 8, !tbaa !34
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 30
  %112 = load i32, ptr %111, align 8, !tbaa !64
  %113 = icmp ne i32 %112, 18
  %114 = icmp ne i32 %112, 7
  %115 = and i1 %113, %114
  %116 = zext i1 %115 to i32
  br label %117

117:                                              ; preds = %110, %105
  %118 = phi i32 [ 0, %105 ], [ %116, %110 ]
  %119 = and i32 %107, 2
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 29
  %123 = load i32, ptr %122, align 4, !tbaa !65
  switch i32 %123, label %124 [
    i32 18, label %126
    i32 7, label %126
  ]

124:                                              ; preds = %121
  %125 = add nuw nsw i32 %118, 1
  br label %126

126:                                              ; preds = %124, %121, %121, %117
  %127 = phi i32 [ %125, %124 ], [ %118, %121 ], [ %118, %117 ], [ %118, %121 ]
  %128 = icmp eq i32 %25, 7
  %129 = add nuw nsw i32 %127, 27
  br i1 %128, label %130, label %131

130:                                              ; preds = %126
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %129, i32 noundef 0) #7
  br label %163

131:                                              ; preds = %126
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %129, i32 noundef 1) #7
  %132 = icmp eq i32 %25, 17
  br i1 %132, label %133, label %134

133:                                              ; preds = %131
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 30, i32 noundef 1) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 31, i32 noundef 1) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 32, i32 noundef 1) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 32, i32 noundef 1) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 32, i32 noundef 1) #7
  br label %163

134:                                              ; preds = %131
  %135 = icmp ult i32 %25, 4
  br i1 %135, label %136, label %137

136:                                              ; preds = %134
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 30, i32 noundef 1) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 31, i32 noundef 1) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 32, i32 noundef 1) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 32, i32 noundef 0) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 32, i32 noundef 1) #7
  tail call fastcc void @x264_cabac_mb_type_intra(ptr noundef %0, ptr noundef %1, i32 noundef %25, i32 noundef 32, i32 noundef 33, i32 noundef 34, i32 noundef 34, i32 noundef 35, i32 noundef 35)
  br label %163

137:                                              ; preds = %134
  %138 = mul i32 %25, 3
  %139 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %140 = load i32, ptr %139, align 4, !tbaa !80
  %141 = add i32 %138, -38
  %142 = add i32 %141, %140
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [27 x i8], ptr @x264_cabac_mb_type.i_mb_bits, i64 0, i64 %143
  %145 = load i8, ptr %144, align 1, !tbaa !77
  %146 = zext i8 %145 to i32
  %147 = and i32 %146, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 30, i32 noundef %147) #7
  %148 = sub nuw nsw i32 32, %147
  %149 = lshr i32 %146, 1
  %150 = and i32 %149, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %148, i32 noundef %150) #7
  %151 = lshr i32 %146, 2
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %163, label %153

153:                                              ; preds = %137
  %154 = and i32 %151, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 32, i32 noundef %154) #7
  %155 = lshr i32 %146, 3
  %156 = and i32 %155, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 32, i32 noundef %156) #7
  %157 = lshr i32 %146, 4
  %158 = and i32 %157, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 32, i32 noundef %158) #7
  %159 = lshr i32 %146, 5
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %163, label %161

161:                                              ; preds = %153
  %162 = and i32 %159, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 32, i32 noundef %162) #7
  br label %163

163:                                              ; preds = %89, %93, %103, %104, %130, %133, %136, %137, %153, %161
  %164 = icmp eq i32 %25, 3
  br i1 %164, label %165, label %230

165:                                              ; preds = %163
  %166 = load ptr, ptr %26, align 8, !tbaa !68
  %167 = load ptr, ptr %28, align 16, !tbaa !69
  %168 = ptrtoint ptr %166 to i64
  %169 = ptrtoint ptr %167 to i64
  %170 = sub i64 %168, %169
  %171 = load i32, ptr %33, align 4, !tbaa !70
  %172 = load i32, ptr %35, align 8, !tbaa !71
  %173 = trunc i64 %170 to i32
  %174 = add i32 %171, %173
  %175 = shl i32 %174, 3
  %176 = add i32 %175, %172
  %177 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57
  %178 = load i32, ptr %177, align 8, !tbaa !81
  %179 = add i32 %178, %40
  %180 = add i32 %179, %176
  store i32 %180, ptr %177, align 8, !tbaa !81
  %181 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %182 = load ptr, ptr %181, align 16, !tbaa !82
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %166, ptr noundef nonnull align 1 dereferenceable(256) %182, i64 256, i1 false)
  %183 = load ptr, ptr %26, align 8, !tbaa !68
  %184 = getelementptr inbounds i8, ptr %183, i64 256
  store ptr %184, ptr %26, align 8, !tbaa !68
  %185 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 1
  br label %190

186:                                              ; preds = %190
  %187 = load ptr, ptr %26, align 8, !tbaa !68
  %188 = getelementptr inbounds i8, ptr %187, i64 64
  store ptr %188, ptr %26, align 8, !tbaa !68
  %189 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 2
  br label %219

190:                                              ; preds = %165, %190
  %191 = phi i64 [ 0, %165 ], [ %199, %190 ]
  %192 = load ptr, ptr %26, align 8, !tbaa !68
  %193 = shl nuw nsw i64 %191, 3
  %194 = getelementptr inbounds i8, ptr %192, i64 %193
  %195 = load ptr, ptr %185, align 8, !tbaa !82
  %196 = shl nuw nsw i64 %191, 4
  %197 = getelementptr inbounds i8, ptr %195, i64 %196
  %198 = load i64, ptr %197, align 1
  store i64 %198, ptr %194, align 1
  %199 = add nuw nsw i64 %191, 1
  %200 = icmp eq i64 %199, 8
  br i1 %200, label %186, label %190, !llvm.loop !83

201:                                              ; preds = %219
  %202 = load ptr, ptr %26, align 8, !tbaa !68
  %203 = getelementptr inbounds i8, ptr %202, i64 64
  store ptr %203, ptr %26, align 8, !tbaa !68
  tail call void @x264_cabac_encode_init_core(ptr noundef %1) #7
  %204 = load ptr, ptr %26, align 8, !tbaa !68
  %205 = load ptr, ptr %28, align 16, !tbaa !69
  %206 = ptrtoint ptr %204 to i64
  %207 = ptrtoint ptr %205 to i64
  %208 = sub i64 %206, %207
  %209 = load i32, ptr %33, align 4, !tbaa !70
  %210 = load i32, ptr %35, align 8, !tbaa !71
  %211 = trunc i64 %208 to i32
  %212 = add i32 %209, %211
  %213 = shl i32 %212, 3
  %214 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 1
  %215 = load i32, ptr %214, align 4, !tbaa !86
  %216 = sub i32 %210, %176
  %217 = add i32 %216, %215
  %218 = add i32 %217, %213
  store i32 %218, ptr %214, align 4, !tbaa !86
  br label %2653

219:                                              ; preds = %186, %219
  %220 = phi i64 [ 0, %186 ], [ %228, %219 ]
  %221 = load ptr, ptr %26, align 8, !tbaa !68
  %222 = shl nuw nsw i64 %220, 3
  %223 = getelementptr inbounds i8, ptr %221, i64 %222
  %224 = load ptr, ptr %189, align 16, !tbaa !82
  %225 = shl nuw nsw i64 %220, 4
  %226 = getelementptr inbounds i8, ptr %224, i64 %225
  %227 = load i64, ptr %226, align 1
  store i64 %227, ptr %223, align 1
  %228 = add nuw nsw i64 %220, 1
  %229 = icmp eq i64 %228, 8
  br i1 %229, label %201, label %219, !llvm.loop !87

230:                                              ; preds = %163
  %231 = icmp eq i32 %25, 2
  %232 = icmp ult i32 %25, 3
  br i1 %232, label %233, label %344

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  %235 = load ptr, ptr %234, align 16, !tbaa !88
  %236 = getelementptr inbounds %struct.x264_pps_t, ptr %235, i64 0, i32 15
  %237 = load i32, ptr %236, align 4, !tbaa !89
  %238 = icmp ne i32 %237, 0
  %239 = icmp ne i32 %25, 2
  %240 = select i1 %238, i1 %239, i1 false
  br i1 %240, label %241, label %247

241:                                              ; preds = %233
  %242 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 11
  %243 = load i32, ptr %242, align 8, !tbaa !91
  %244 = add nsw i32 %243, 399
  %245 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  %246 = load i32, ptr %245, align 4, !tbaa !92
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %244, i32 noundef %246) #7
  br label %247

247:                                              ; preds = %241, %233
  br i1 %239, label %248, label %298

248:                                              ; preds = %247
  %249 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  %250 = load i32, ptr %249, align 4, !tbaa !92
  %251 = icmp eq i32 %250, 0
  %252 = select i1 %251, i64 1, i64 4
  %253 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67
  br label %254

254:                                              ; preds = %248, %295
  %255 = phi i64 [ 0, %248 ], [ %296, %295 ]
  %256 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %255
  %257 = load i32, ptr %256, align 4, !tbaa !93
  %258 = add nsw i32 %257, -1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [40 x i8], ptr %253, i64 0, i64 %259
  %261 = load i8, ptr %260, align 1, !tbaa !77
  %262 = sext i8 %261 to i64
  %263 = add nsw i32 %257, -8
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [40 x i8], ptr %253, i64 0, i64 %264
  %266 = load i8, ptr %265, align 1, !tbaa !77
  %267 = sext i8 %266 to i64
  %268 = add nsw i64 %262, 1
  %269 = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %268
  %270 = load i8, ptr %269, align 1, !tbaa !77
  %271 = add nsw i64 %267, 1
  %272 = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %271
  %273 = load i8, ptr %272, align 1, !tbaa !77
  %274 = tail call i8 @llvm.smin.i8(i8 %270, i8 %273)
  %275 = icmp slt i8 %274, 0
  %276 = select i1 %275, i8 2, i8 %274
  %277 = sext i32 %257 to i64
  %278 = getelementptr inbounds [40 x i8], ptr %253, i64 0, i64 %277
  %279 = load i8, ptr %278, align 1, !tbaa !77
  %280 = sext i8 %279 to i64
  %281 = add nsw i64 %280, 1
  %282 = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %281
  %283 = load i8, ptr %282, align 1, !tbaa !77
  %284 = icmp eq i8 %276, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %254
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 68, i32 noundef 1) #7
  br label %295

286:                                              ; preds = %254
  %287 = sext i8 %283 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 68, i32 noundef 0) #7
  %288 = icmp sgt i8 %283, %276
  %289 = sext i1 %288 to i32
  %290 = add nsw i32 %289, %287
  %291 = and i32 %290, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 69, i32 noundef %291) #7
  %292 = lshr i32 %290, 1
  %293 = and i32 %292, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 69, i32 noundef %293) #7
  %294 = ashr i32 %290, 2
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 69, i32 noundef %294) #7
  br label %295

295:                                              ; preds = %285, %286
  %296 = add i64 %255, %252
  %297 = icmp ult i64 %296, 16
  br i1 %297, label %254, label %298, !llvm.loop !94

298:                                              ; preds = %295, %247
  %299 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 60
  %300 = load i32, ptr %299, align 4, !tbaa !95
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 24
  %303 = load i32, ptr %302, align 8, !tbaa !34
  %304 = and i32 %303, 1
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %316, label %306

306:                                              ; preds = %298
  %307 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 44
  %308 = load ptr, ptr %307, align 8, !tbaa !96
  %309 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 34
  %310 = load i32, ptr %309, align 8, !tbaa !97
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i8, ptr %308, i64 %311
  %313 = load i8, ptr %312, align 1, !tbaa !77
  %314 = icmp ne i8 %313, 0
  %315 = zext i1 %314 to i32
  br label %316

316:                                              ; preds = %306, %298
  %317 = phi i32 [ 0, %298 ], [ %315, %306 ]
  %318 = and i32 %303, 2
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %331, label %320

320:                                              ; preds = %316
  %321 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 44
  %322 = load ptr, ptr %321, align 8, !tbaa !96
  %323 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 35
  %324 = load i32, ptr %323, align 4, !tbaa !98
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8, ptr %322, i64 %325
  %327 = load i8, ptr %326, align 1, !tbaa !77
  %328 = icmp ne i8 %327, 0
  %329 = zext i1 %328 to i32
  %330 = add nuw nsw i32 %317, %329
  br label %331

331:                                              ; preds = %320, %316
  %332 = phi i32 [ %317, %316 ], [ %330, %320 ]
  %333 = add nuw nsw i32 %332, 64
  %334 = add nsw i64 %301, -1
  %335 = icmp ult i64 %334, 3
  %336 = zext i1 %335 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %333, i32 noundef %336) #7
  br i1 %335, label %337, label %2275

337:                                              ; preds = %331
  %338 = and i32 %300, -2
  %339 = icmp eq i32 %338, 2
  %340 = zext i1 %339 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 67, i32 noundef %340) #7
  br i1 %339, label %341, label %2275

341:                                              ; preds = %337
  %342 = icmp eq i32 %300, 3
  %343 = zext i1 %342 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 67, i32 noundef %343) #7
  br label %2275

344:                                              ; preds = %230
  switch i32 %25, label %1802 [
    i32 4, label %345
    i32 5, label %782
    i32 17, label %1517
    i32 7, label %2275
  ]

345:                                              ; preds = %344
  %346 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %347 = load i32, ptr %346, align 4, !tbaa !80
  %348 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  %349 = load i32, ptr %348, align 8, !tbaa !93
  %350 = icmp sgt i32 %349, 1
  switch i32 %347, label %607 [
    i32 16, label %351
    i32 14, label %439
  ]

351:                                              ; preds = %345
  br i1 %350, label %352, label %390

352:                                              ; preds = %351
  %353 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 11
  %354 = load i8, ptr %353, align 1, !tbaa !77
  %355 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 4
  %356 = load i8, ptr %355, align 1, !tbaa !77
  %357 = icmp sgt i8 %354, 0
  br i1 %357, label %358, label %363

358:                                              ; preds = %352
  %359 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 11
  %360 = load i8, ptr %359, align 1, !tbaa !77
  %361 = icmp eq i8 %360, 0
  %362 = zext i1 %361 to i32
  br label %363

363:                                              ; preds = %358, %352
  %364 = phi i32 [ 0, %352 ], [ %362, %358 ]
  %365 = icmp sgt i8 %356, 0
  br i1 %365, label %366, label %372

366:                                              ; preds = %363
  %367 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 4
  %368 = load i8, ptr %367, align 1, !tbaa !77
  %369 = icmp eq i8 %368, 0
  %370 = or disjoint i32 %364, 2
  %371 = select i1 %369, i32 %370, i32 %364
  br label %372

372:                                              ; preds = %366, %363
  %373 = phi i32 [ %364, %363 ], [ %371, %366 ]
  %374 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %375 = load i8, ptr %374, align 1, !tbaa !77
  %376 = icmp sgt i8 %375, 0
  br i1 %376, label %377, label %387

377:                                              ; preds = %372
  %378 = zext nneg i8 %375 to i32
  br label %379

379:                                              ; preds = %379, %377
  %380 = phi i32 [ %385, %379 ], [ %378, %377 ]
  %381 = phi i32 [ %384, %379 ], [ %373, %377 ]
  %382 = add nuw nsw i32 %381, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %382, i32 noundef 1) #7
  %383 = lshr i32 %381, 2
  %384 = add nuw nsw i32 %383, 4
  %385 = add nsw i32 %380, -1
  %386 = icmp sgt i32 %380, 1
  br i1 %386, label %379, label %387, !llvm.loop !99

387:                                              ; preds = %379, %372
  %388 = phi i32 [ %373, %372 ], [ %384, %379 ]
  %389 = add nuw nsw i32 %388, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %389, i32 noundef 0) #7
  br label %390

390:                                              ; preds = %351, %387
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #7
  call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %23) #7
  %391 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 12
  %392 = load i16, ptr %391, align 4, !tbaa !100
  %393 = sext i16 %392 to i32
  %394 = load i16, ptr %23, align 4, !tbaa !100
  %395 = sext i16 %394 to i32
  %396 = sub nsw i32 %393, %395
  %397 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 12, i64 1
  %398 = load i16, ptr %397, align 2, !tbaa !100
  %399 = sext i16 %398 to i32
  %400 = getelementptr inbounds [2 x i16], ptr %23, i64 0, i64 1
  %401 = load i16, ptr %400, align 2, !tbaa !100
  %402 = sext i16 %401 to i32
  %403 = sub nsw i32 %399, %402
  %404 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 11
  %405 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 4
  %406 = load i8, ptr %404, align 1, !tbaa !77
  %407 = zext i8 %406 to i32
  %408 = load i8, ptr %405, align 1, !tbaa !77
  %409 = zext i8 %408 to i32
  %410 = add nuw nsw i32 %409, %407
  %411 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 11, i64 1
  %412 = load i8, ptr %411, align 1, !tbaa !77
  %413 = zext i8 %412 to i32
  %414 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 4, i64 1
  %415 = load i8, ptr %414, align 1, !tbaa !77
  %416 = zext i8 %415 to i32
  %417 = add nuw nsw i32 %416, %413
  %418 = icmp ugt i32 %410, 2
  %419 = zext i1 %418 to i32
  %420 = icmp ugt i32 %410, 32
  %421 = zext i1 %420 to i32
  %422 = add nuw nsw i32 %419, %421
  %423 = icmp ugt i32 %417, 2
  %424 = zext i1 %423 to i32
  %425 = icmp ugt i32 %417, 32
  %426 = zext i1 %425 to i32
  %427 = add nuw nsw i32 %424, %426
  %428 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 0, i32 noundef %396, i32 noundef %422)
  %429 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 1, i32 noundef %403, i32 noundef %427)
  %430 = shl nuw nsw i32 %429, 8
  %431 = add nuw nsw i32 %430, %428
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #7
  %432 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 12
  %433 = and i32 %431, 65535
  %434 = zext nneg i32 %433 to i64
  %435 = mul nuw i64 %434, 281479271743489
  store i64 %435, ptr %432, align 8, !tbaa !77
  %436 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 20
  store i64 %435, ptr %436, align 8, !tbaa !77
  %437 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 28
  store i64 %435, ptr %437, align 8, !tbaa !77
  %438 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 36
  store i64 %435, ptr %438, align 8, !tbaa !77
  br label %2275

439:                                              ; preds = %345
  br i1 %350, label %440, label %515

440:                                              ; preds = %439
  %441 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 11
  %442 = load i8, ptr %441, align 1, !tbaa !77
  %443 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 4
  %444 = load i8, ptr %443, align 1, !tbaa !77
  %445 = icmp sgt i8 %442, 0
  br i1 %445, label %446, label %451

446:                                              ; preds = %440
  %447 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 11
  %448 = load i8, ptr %447, align 1, !tbaa !77
  %449 = icmp eq i8 %448, 0
  %450 = zext i1 %449 to i32
  br label %451

451:                                              ; preds = %446, %440
  %452 = phi i32 [ 0, %440 ], [ %450, %446 ]
  %453 = icmp sgt i8 %444, 0
  br i1 %453, label %454, label %460

454:                                              ; preds = %451
  %455 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 4
  %456 = load i8, ptr %455, align 1, !tbaa !77
  %457 = icmp eq i8 %456, 0
  %458 = or disjoint i32 %452, 2
  %459 = select i1 %457, i32 %458, i32 %452
  br label %460

460:                                              ; preds = %454, %451
  %461 = phi i32 [ %452, %451 ], [ %459, %454 ]
  %462 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %463 = load i8, ptr %462, align 1, !tbaa !77
  %464 = icmp sgt i8 %463, 0
  br i1 %464, label %465, label %475

465:                                              ; preds = %460
  %466 = zext nneg i8 %463 to i32
  br label %467

467:                                              ; preds = %467, %465
  %468 = phi i32 [ %473, %467 ], [ %466, %465 ]
  %469 = phi i32 [ %472, %467 ], [ %461, %465 ]
  %470 = add nuw nsw i32 %469, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %470, i32 noundef 1) #7
  %471 = lshr i32 %469, 2
  %472 = add nuw nsw i32 %471, 4
  %473 = add nsw i32 %468, -1
  %474 = icmp sgt i32 %468, 1
  br i1 %474, label %467, label %475, !llvm.loop !99

475:                                              ; preds = %467, %460
  %476 = phi i32 [ %461, %460 ], [ %472, %467 ]
  %477 = add nuw nsw i32 %476, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %477, i32 noundef 0) #7
  %478 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 27
  %479 = load i8, ptr %478, align 1, !tbaa !77
  %480 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 20
  %481 = load i8, ptr %480, align 1, !tbaa !77
  %482 = icmp sgt i8 %479, 0
  br i1 %482, label %483, label %488

483:                                              ; preds = %475
  %484 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 27
  %485 = load i8, ptr %484, align 1, !tbaa !77
  %486 = icmp eq i8 %485, 0
  %487 = zext i1 %486 to i32
  br label %488

488:                                              ; preds = %483, %475
  %489 = phi i32 [ 0, %475 ], [ %487, %483 ]
  %490 = icmp sgt i8 %481, 0
  br i1 %490, label %491, label %497

491:                                              ; preds = %488
  %492 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 20
  %493 = load i8, ptr %492, align 1, !tbaa !77
  %494 = icmp eq i8 %493, 0
  %495 = or disjoint i32 %489, 2
  %496 = select i1 %494, i32 %495, i32 %489
  br label %497

497:                                              ; preds = %491, %488
  %498 = phi i32 [ %489, %488 ], [ %496, %491 ]
  %499 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 28
  %500 = load i8, ptr %499, align 1, !tbaa !77
  %501 = icmp sgt i8 %500, 0
  br i1 %501, label %502, label %512

502:                                              ; preds = %497
  %503 = zext nneg i8 %500 to i32
  br label %504

504:                                              ; preds = %504, %502
  %505 = phi i32 [ %510, %504 ], [ %503, %502 ]
  %506 = phi i32 [ %509, %504 ], [ %498, %502 ]
  %507 = add nuw nsw i32 %506, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %507, i32 noundef 1) #7
  %508 = lshr i32 %506, 2
  %509 = add nuw nsw i32 %508, 4
  %510 = add nsw i32 %505, -1
  %511 = icmp sgt i32 %505, 1
  br i1 %511, label %504, label %512, !llvm.loop !99

512:                                              ; preds = %504, %497
  %513 = phi i32 [ %498, %497 ], [ %509, %504 ]
  %514 = add nuw nsw i32 %513, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %514, i32 noundef 0) #7
  br label %515

515:                                              ; preds = %439, %512
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #7
  call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %22) #7
  %516 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 12
  %517 = load i16, ptr %516, align 4, !tbaa !100
  %518 = sext i16 %517 to i32
  %519 = load i16, ptr %22, align 4, !tbaa !100
  %520 = sext i16 %519 to i32
  %521 = sub nsw i32 %518, %520
  %522 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 12, i64 1
  %523 = load i16, ptr %522, align 2, !tbaa !100
  %524 = sext i16 %523 to i32
  %525 = getelementptr inbounds [2 x i16], ptr %22, i64 0, i64 1
  %526 = load i16, ptr %525, align 2, !tbaa !100
  %527 = sext i16 %526 to i32
  %528 = sub nsw i32 %524, %527
  %529 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 11
  %530 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 4
  %531 = load i8, ptr %529, align 1, !tbaa !77
  %532 = zext i8 %531 to i32
  %533 = load i8, ptr %530, align 1, !tbaa !77
  %534 = zext i8 %533 to i32
  %535 = add nuw nsw i32 %534, %532
  %536 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 11, i64 1
  %537 = load i8, ptr %536, align 1, !tbaa !77
  %538 = zext i8 %537 to i32
  %539 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 4, i64 1
  %540 = load i8, ptr %539, align 1, !tbaa !77
  %541 = zext i8 %540 to i32
  %542 = add nuw nsw i32 %541, %538
  %543 = icmp ugt i32 %535, 2
  %544 = zext i1 %543 to i32
  %545 = icmp ugt i32 %535, 32
  %546 = zext i1 %545 to i32
  %547 = add nuw nsw i32 %544, %546
  %548 = icmp ugt i32 %542, 2
  %549 = zext i1 %548 to i32
  %550 = icmp ugt i32 %542, 32
  %551 = zext i1 %550 to i32
  %552 = add nuw nsw i32 %549, %551
  %553 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 0, i32 noundef %521, i32 noundef %547)
  %554 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 1, i32 noundef %528, i32 noundef %552)
  %555 = shl nuw nsw i32 %554, 8
  %556 = add nuw nsw i32 %555, %553
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #7
  %557 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 12
  %558 = and i32 %556, 65535
  %559 = zext nneg i32 %558 to i64
  %560 = mul nuw i64 %559, 281479271743489
  store i64 %560, ptr %557, align 8, !tbaa !77
  %561 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 20
  store i64 %560, ptr %561, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #7
  call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef 0, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %21) #7
  %562 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 28
  %563 = load i16, ptr %562, align 4, !tbaa !100
  %564 = sext i16 %563 to i32
  %565 = load i16, ptr %21, align 4, !tbaa !100
  %566 = sext i16 %565 to i32
  %567 = sub nsw i32 %564, %566
  %568 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 28, i64 1
  %569 = load i16, ptr %568, align 2, !tbaa !100
  %570 = sext i16 %569 to i32
  %571 = getelementptr inbounds [2 x i16], ptr %21, i64 0, i64 1
  %572 = load i16, ptr %571, align 2, !tbaa !100
  %573 = sext i16 %572 to i32
  %574 = sub nsw i32 %570, %573
  %575 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 27
  %576 = load i8, ptr %575, align 1, !tbaa !77
  %577 = zext i8 %576 to i32
  %578 = load i8, ptr %561, align 1, !tbaa !77
  %579 = zext i8 %578 to i32
  %580 = add nuw nsw i32 %579, %577
  %581 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 27, i64 1
  %582 = load i8, ptr %581, align 1, !tbaa !77
  %583 = zext i8 %582 to i32
  %584 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 20, i64 1
  %585 = load i8, ptr %584, align 1, !tbaa !77
  %586 = zext i8 %585 to i32
  %587 = add nuw nsw i32 %586, %583
  %588 = icmp ugt i32 %580, 2
  %589 = zext i1 %588 to i32
  %590 = icmp ugt i32 %580, 32
  %591 = zext i1 %590 to i32
  %592 = add nuw nsw i32 %589, %591
  %593 = icmp ugt i32 %587, 2
  %594 = zext i1 %593 to i32
  %595 = icmp ugt i32 %587, 32
  %596 = zext i1 %595 to i32
  %597 = add nuw nsw i32 %594, %596
  %598 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 0, i32 noundef %567, i32 noundef %592)
  %599 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 1, i32 noundef %574, i32 noundef %597)
  %600 = shl nuw nsw i32 %599, 8
  %601 = add nuw nsw i32 %600, %598
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #7
  %602 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 28
  %603 = and i32 %601, 65535
  %604 = zext nneg i32 %603 to i64
  %605 = mul nuw i64 %604, 281479271743489
  store i64 %605, ptr %602, align 8, !tbaa !77
  %606 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 36
  store i64 %605, ptr %606, align 8, !tbaa !77
  br label %2275

607:                                              ; preds = %345
  br i1 %350, label %608, label %683

608:                                              ; preds = %607
  %609 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 11
  %610 = load i8, ptr %609, align 1, !tbaa !77
  %611 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 4
  %612 = load i8, ptr %611, align 1, !tbaa !77
  %613 = icmp sgt i8 %610, 0
  br i1 %613, label %614, label %619

614:                                              ; preds = %608
  %615 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 11
  %616 = load i8, ptr %615, align 1, !tbaa !77
  %617 = icmp eq i8 %616, 0
  %618 = zext i1 %617 to i32
  br label %619

619:                                              ; preds = %614, %608
  %620 = phi i32 [ 0, %608 ], [ %618, %614 ]
  %621 = icmp sgt i8 %612, 0
  br i1 %621, label %622, label %628

622:                                              ; preds = %619
  %623 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 4
  %624 = load i8, ptr %623, align 1, !tbaa !77
  %625 = icmp eq i8 %624, 0
  %626 = or disjoint i32 %620, 2
  %627 = select i1 %625, i32 %626, i32 %620
  br label %628

628:                                              ; preds = %622, %619
  %629 = phi i32 [ %620, %619 ], [ %627, %622 ]
  %630 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %631 = load i8, ptr %630, align 1, !tbaa !77
  %632 = icmp sgt i8 %631, 0
  br i1 %632, label %633, label %643

633:                                              ; preds = %628
  %634 = zext nneg i8 %631 to i32
  br label %635

635:                                              ; preds = %635, %633
  %636 = phi i32 [ %641, %635 ], [ %634, %633 ]
  %637 = phi i32 [ %640, %635 ], [ %629, %633 ]
  %638 = add nuw nsw i32 %637, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %638, i32 noundef 1) #7
  %639 = lshr i32 %637, 2
  %640 = add nuw nsw i32 %639, 4
  %641 = add nsw i32 %636, -1
  %642 = icmp sgt i32 %636, 1
  br i1 %642, label %635, label %643, !llvm.loop !99

643:                                              ; preds = %635, %628
  %644 = phi i32 [ %629, %628 ], [ %640, %635 ]
  %645 = add nuw nsw i32 %644, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %645, i32 noundef 0) #7
  %646 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 13
  %647 = load i8, ptr %646, align 1, !tbaa !77
  %648 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 6
  %649 = load i8, ptr %648, align 1, !tbaa !77
  %650 = icmp sgt i8 %647, 0
  br i1 %650, label %651, label %656

651:                                              ; preds = %643
  %652 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 13
  %653 = load i8, ptr %652, align 1, !tbaa !77
  %654 = icmp eq i8 %653, 0
  %655 = zext i1 %654 to i32
  br label %656

656:                                              ; preds = %651, %643
  %657 = phi i32 [ 0, %643 ], [ %655, %651 ]
  %658 = icmp sgt i8 %649, 0
  br i1 %658, label %659, label %665

659:                                              ; preds = %656
  %660 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 6
  %661 = load i8, ptr %660, align 1, !tbaa !77
  %662 = icmp eq i8 %661, 0
  %663 = or disjoint i32 %657, 2
  %664 = select i1 %662, i32 %663, i32 %657
  br label %665

665:                                              ; preds = %659, %656
  %666 = phi i32 [ %657, %656 ], [ %664, %659 ]
  %667 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 14
  %668 = load i8, ptr %667, align 1, !tbaa !77
  %669 = icmp sgt i8 %668, 0
  br i1 %669, label %670, label %680

670:                                              ; preds = %665
  %671 = zext nneg i8 %668 to i32
  br label %672

672:                                              ; preds = %672, %670
  %673 = phi i32 [ %678, %672 ], [ %671, %670 ]
  %674 = phi i32 [ %677, %672 ], [ %666, %670 ]
  %675 = add nuw nsw i32 %674, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %675, i32 noundef 1) #7
  %676 = lshr i32 %674, 2
  %677 = add nuw nsw i32 %676, 4
  %678 = add nsw i32 %673, -1
  %679 = icmp sgt i32 %673, 1
  br i1 %679, label %672, label %680, !llvm.loop !99

680:                                              ; preds = %672, %665
  %681 = phi i32 [ %666, %665 ], [ %677, %672 ]
  %682 = add nuw nsw i32 %681, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %682, i32 noundef 0) #7
  br label %683

683:                                              ; preds = %607, %680
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #7
  call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %20) #7
  %684 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 12
  %685 = load i16, ptr %684, align 4, !tbaa !100
  %686 = sext i16 %685 to i32
  %687 = load i16, ptr %20, align 4, !tbaa !100
  %688 = sext i16 %687 to i32
  %689 = sub nsw i32 %686, %688
  %690 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 12, i64 1
  %691 = load i16, ptr %690, align 2, !tbaa !100
  %692 = sext i16 %691 to i32
  %693 = getelementptr inbounds [2 x i16], ptr %20, i64 0, i64 1
  %694 = load i16, ptr %693, align 2, !tbaa !100
  %695 = sext i16 %694 to i32
  %696 = sub nsw i32 %692, %695
  %697 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 11
  %698 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 4
  %699 = load i8, ptr %697, align 1, !tbaa !77
  %700 = zext i8 %699 to i32
  %701 = load i8, ptr %698, align 1, !tbaa !77
  %702 = zext i8 %701 to i32
  %703 = add nuw nsw i32 %702, %700
  %704 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 11, i64 1
  %705 = load i8, ptr %704, align 1, !tbaa !77
  %706 = zext i8 %705 to i32
  %707 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 4, i64 1
  %708 = load i8, ptr %707, align 1, !tbaa !77
  %709 = zext i8 %708 to i32
  %710 = add nuw nsw i32 %709, %706
  %711 = icmp ugt i32 %703, 2
  %712 = zext i1 %711 to i32
  %713 = icmp ugt i32 %703, 32
  %714 = zext i1 %713 to i32
  %715 = add nuw nsw i32 %712, %714
  %716 = icmp ugt i32 %710, 2
  %717 = zext i1 %716 to i32
  %718 = icmp ugt i32 %710, 32
  %719 = zext i1 %718 to i32
  %720 = add nuw nsw i32 %717, %719
  %721 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 0, i32 noundef %689, i32 noundef %715)
  %722 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 1, i32 noundef %696, i32 noundef %720)
  %723 = shl nuw nsw i32 %722, 8
  %724 = add nuw nsw i32 %723, %721
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #7
  %725 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 12
  %726 = and i32 %724, 65535
  %727 = mul nuw i32 %726, 65537
  store i32 %727, ptr %725, align 4, !tbaa !77
  %728 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 20
  store i32 %727, ptr %728, align 4, !tbaa !77
  %729 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 28
  store i32 %727, ptr %729, align 4, !tbaa !77
  %730 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 36
  store i32 %727, ptr %730, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #7
  call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %19) #7
  %731 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 14
  %732 = load i16, ptr %731, align 4, !tbaa !100
  %733 = sext i16 %732 to i32
  %734 = load i16, ptr %19, align 4, !tbaa !100
  %735 = sext i16 %734 to i32
  %736 = sub nsw i32 %733, %735
  %737 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 14, i64 1
  %738 = load i16, ptr %737, align 2, !tbaa !100
  %739 = sext i16 %738 to i32
  %740 = getelementptr inbounds [2 x i16], ptr %19, i64 0, i64 1
  %741 = load i16, ptr %740, align 2, !tbaa !100
  %742 = sext i16 %741 to i32
  %743 = sub nsw i32 %739, %742
  %744 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 13
  %745 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 6
  %746 = load i8, ptr %744, align 1, !tbaa !77
  %747 = zext i8 %746 to i32
  %748 = load i8, ptr %745, align 1, !tbaa !77
  %749 = zext i8 %748 to i32
  %750 = add nuw nsw i32 %749, %747
  %751 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 13, i64 1
  %752 = load i8, ptr %751, align 1, !tbaa !77
  %753 = zext i8 %752 to i32
  %754 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 6, i64 1
  %755 = load i8, ptr %754, align 1, !tbaa !77
  %756 = zext i8 %755 to i32
  %757 = add nuw nsw i32 %756, %753
  %758 = icmp ugt i32 %750, 2
  %759 = zext i1 %758 to i32
  %760 = icmp ugt i32 %750, 32
  %761 = zext i1 %760 to i32
  %762 = add nuw nsw i32 %759, %761
  %763 = icmp ugt i32 %757, 2
  %764 = zext i1 %763 to i32
  %765 = icmp ugt i32 %757, 32
  %766 = zext i1 %765 to i32
  %767 = add nuw nsw i32 %764, %766
  %768 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 0, i32 noundef %736, i32 noundef %762)
  %769 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 1, i32 noundef %743, i32 noundef %767)
  %770 = shl nuw nsw i32 %769, 8
  %771 = add nuw nsw i32 %770, %768
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #7
  %772 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 14
  %773 = and i32 %771, 65535
  %774 = mul nuw i32 %773, 65537
  store i32 %774, ptr %772, align 4, !tbaa !77
  %775 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 22
  store i32 %774, ptr %775, align 4, !tbaa !77
  %776 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 30
  store i32 %774, ptr %776, align 4, !tbaa !77
  %777 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 38
  store i32 %774, ptr %777, align 4, !tbaa !77
  br label %2275

778:                                              ; preds = %794
  %779 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  %780 = load i32, ptr %779, align 8, !tbaa !93
  %781 = icmp sgt i32 %780, 1
  br i1 %781, label %797, label %946

782:                                              ; preds = %344, %794
  %783 = phi i64 [ %795, %794 ], [ 0, %344 ]
  %784 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %783
  %785 = load i8, ptr %784, align 1, !tbaa !77
  %786 = icmp eq i8 %785, 3
  br i1 %786, label %787, label %788

787:                                              ; preds = %782
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 21, i32 noundef 1) #7
  br label %794

788:                                              ; preds = %782
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 21, i32 noundef 0) #7
  %789 = icmp eq i8 %785, 1
  br i1 %789, label %790, label %791

790:                                              ; preds = %788
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 22, i32 noundef 0) #7
  br label %794

791:                                              ; preds = %788
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 22, i32 noundef 1) #7
  %792 = icmp eq i8 %785, 2
  %793 = zext i1 %792 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 23, i32 noundef %793) #7
  br label %794

794:                                              ; preds = %787, %790, %791
  %795 = add nuw nsw i64 %783, 1
  %796 = icmp eq i64 %795, 4
  br i1 %796, label %778, label %782, !llvm.loop !102

797:                                              ; preds = %778
  %798 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 11
  %799 = load i8, ptr %798, align 1, !tbaa !77
  %800 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 4
  %801 = load i8, ptr %800, align 1, !tbaa !77
  %802 = icmp sgt i8 %799, 0
  br i1 %802, label %803, label %808

803:                                              ; preds = %797
  %804 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 11
  %805 = load i8, ptr %804, align 1, !tbaa !77
  %806 = icmp eq i8 %805, 0
  %807 = zext i1 %806 to i32
  br label %808

808:                                              ; preds = %803, %797
  %809 = phi i32 [ 0, %797 ], [ %807, %803 ]
  %810 = icmp sgt i8 %801, 0
  br i1 %810, label %811, label %817

811:                                              ; preds = %808
  %812 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 4
  %813 = load i8, ptr %812, align 1, !tbaa !77
  %814 = icmp eq i8 %813, 0
  %815 = or disjoint i32 %809, 2
  %816 = select i1 %814, i32 %815, i32 %809
  br label %817

817:                                              ; preds = %811, %808
  %818 = phi i32 [ %809, %808 ], [ %816, %811 ]
  %819 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %820 = load i8, ptr %819, align 1, !tbaa !77
  %821 = icmp sgt i8 %820, 0
  br i1 %821, label %822, label %832

822:                                              ; preds = %817
  %823 = zext nneg i8 %820 to i32
  br label %824

824:                                              ; preds = %824, %822
  %825 = phi i32 [ %830, %824 ], [ %823, %822 ]
  %826 = phi i32 [ %829, %824 ], [ %818, %822 ]
  %827 = add nuw nsw i32 %826, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %827, i32 noundef 1) #7
  %828 = lshr i32 %826, 2
  %829 = add nuw nsw i32 %828, 4
  %830 = add nsw i32 %825, -1
  %831 = icmp sgt i32 %825, 1
  br i1 %831, label %824, label %832, !llvm.loop !99

832:                                              ; preds = %824, %817
  %833 = phi i32 [ %818, %817 ], [ %829, %824 ]
  %834 = add nuw nsw i32 %833, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %834, i32 noundef 0) #7
  %835 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 13
  %836 = load i8, ptr %835, align 1, !tbaa !77
  %837 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 6
  %838 = load i8, ptr %837, align 1, !tbaa !77
  %839 = icmp sgt i8 %836, 0
  br i1 %839, label %840, label %845

840:                                              ; preds = %832
  %841 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 13
  %842 = load i8, ptr %841, align 1, !tbaa !77
  %843 = icmp eq i8 %842, 0
  %844 = zext i1 %843 to i32
  br label %845

845:                                              ; preds = %840, %832
  %846 = phi i32 [ 0, %832 ], [ %844, %840 ]
  %847 = icmp sgt i8 %838, 0
  br i1 %847, label %848, label %854

848:                                              ; preds = %845
  %849 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 6
  %850 = load i8, ptr %849, align 1, !tbaa !77
  %851 = icmp eq i8 %850, 0
  %852 = or disjoint i32 %846, 2
  %853 = select i1 %851, i32 %852, i32 %846
  br label %854

854:                                              ; preds = %848, %845
  %855 = phi i32 [ %846, %845 ], [ %853, %848 ]
  %856 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 14
  %857 = load i8, ptr %856, align 1, !tbaa !77
  %858 = icmp sgt i8 %857, 0
  br i1 %858, label %859, label %869

859:                                              ; preds = %854
  %860 = zext nneg i8 %857 to i32
  br label %861

861:                                              ; preds = %861, %859
  %862 = phi i32 [ %867, %861 ], [ %860, %859 ]
  %863 = phi i32 [ %866, %861 ], [ %855, %859 ]
  %864 = add nuw nsw i32 %863, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %864, i32 noundef 1) #7
  %865 = lshr i32 %863, 2
  %866 = add nuw nsw i32 %865, 4
  %867 = add nsw i32 %862, -1
  %868 = icmp sgt i32 %862, 1
  br i1 %868, label %861, label %869, !llvm.loop !99

869:                                              ; preds = %861, %854
  %870 = phi i32 [ %855, %854 ], [ %866, %861 ]
  %871 = add nuw nsw i32 %870, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %871, i32 noundef 0) #7
  %872 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 27
  %873 = load i8, ptr %872, align 1, !tbaa !77
  %874 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 20
  %875 = load i8, ptr %874, align 1, !tbaa !77
  %876 = icmp sgt i8 %873, 0
  br i1 %876, label %877, label %882

877:                                              ; preds = %869
  %878 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 27
  %879 = load i8, ptr %878, align 1, !tbaa !77
  %880 = icmp eq i8 %879, 0
  %881 = zext i1 %880 to i32
  br label %882

882:                                              ; preds = %877, %869
  %883 = phi i32 [ 0, %869 ], [ %881, %877 ]
  %884 = icmp sgt i8 %875, 0
  br i1 %884, label %885, label %891

885:                                              ; preds = %882
  %886 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 20
  %887 = load i8, ptr %886, align 1, !tbaa !77
  %888 = icmp eq i8 %887, 0
  %889 = or disjoint i32 %883, 2
  %890 = select i1 %888, i32 %889, i32 %883
  br label %891

891:                                              ; preds = %885, %882
  %892 = phi i32 [ %883, %882 ], [ %890, %885 ]
  %893 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 28
  %894 = load i8, ptr %893, align 1, !tbaa !77
  %895 = icmp sgt i8 %894, 0
  br i1 %895, label %896, label %906

896:                                              ; preds = %891
  %897 = zext nneg i8 %894 to i32
  br label %898

898:                                              ; preds = %898, %896
  %899 = phi i32 [ %904, %898 ], [ %897, %896 ]
  %900 = phi i32 [ %903, %898 ], [ %892, %896 ]
  %901 = add nuw nsw i32 %900, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %901, i32 noundef 1) #7
  %902 = lshr i32 %900, 2
  %903 = add nuw nsw i32 %902, 4
  %904 = add nsw i32 %899, -1
  %905 = icmp sgt i32 %899, 1
  br i1 %905, label %898, label %906, !llvm.loop !99

906:                                              ; preds = %898, %891
  %907 = phi i32 [ %892, %891 ], [ %903, %898 ]
  %908 = add nuw nsw i32 %907, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %908, i32 noundef 0) #7
  %909 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 29
  %910 = load i8, ptr %909, align 1, !tbaa !77
  %911 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 22
  %912 = load i8, ptr %911, align 1, !tbaa !77
  %913 = icmp sgt i8 %910, 0
  br i1 %913, label %914, label %919

914:                                              ; preds = %906
  %915 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 29
  %916 = load i8, ptr %915, align 1, !tbaa !77
  %917 = icmp eq i8 %916, 0
  %918 = zext i1 %917 to i32
  br label %919

919:                                              ; preds = %914, %906
  %920 = phi i32 [ 0, %906 ], [ %918, %914 ]
  %921 = icmp sgt i8 %912, 0
  br i1 %921, label %922, label %928

922:                                              ; preds = %919
  %923 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 22
  %924 = load i8, ptr %923, align 1, !tbaa !77
  %925 = icmp eq i8 %924, 0
  %926 = or disjoint i32 %920, 2
  %927 = select i1 %925, i32 %926, i32 %920
  br label %928

928:                                              ; preds = %922, %919
  %929 = phi i32 [ %920, %919 ], [ %927, %922 ]
  %930 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 30
  %931 = load i8, ptr %930, align 1, !tbaa !77
  %932 = icmp sgt i8 %931, 0
  br i1 %932, label %933, label %943

933:                                              ; preds = %928
  %934 = zext nneg i8 %931 to i32
  br label %935

935:                                              ; preds = %935, %933
  %936 = phi i32 [ %941, %935 ], [ %934, %933 ]
  %937 = phi i32 [ %940, %935 ], [ %929, %933 ]
  %938 = add nuw nsw i32 %937, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %938, i32 noundef 1) #7
  %939 = lshr i32 %937, 2
  %940 = add nuw nsw i32 %939, 4
  %941 = add nsw i32 %936, -1
  %942 = icmp sgt i32 %936, 1
  br i1 %942, label %935, label %943, !llvm.loop !99

943:                                              ; preds = %935, %928
  %944 = phi i32 [ %929, %928 ], [ %940, %935 ]
  %945 = add nuw nsw i32 %944, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %945, i32 noundef 0) #7
  br label %946

946:                                              ; preds = %943, %778
  %947 = getelementptr inbounds [2 x i16], ptr %13, i64 0, i64 1
  %948 = getelementptr inbounds [2 x i16], ptr %12, i64 0, i64 1
  %949 = getelementptr inbounds [2 x i16], ptr %11, i64 0, i64 1
  %950 = getelementptr inbounds [2 x i16], ptr %10, i64 0, i64 1
  %951 = getelementptr inbounds [2 x i16], ptr %15, i64 0, i64 1
  %952 = getelementptr inbounds [2 x i16], ptr %14, i64 0, i64 1
  %953 = getelementptr inbounds [2 x i16], ptr %17, i64 0, i64 1
  %954 = getelementptr inbounds [2 x i16], ptr %16, i64 0, i64 1
  %955 = getelementptr inbounds [2 x i16], ptr %18, i64 0, i64 1
  br label %956

956:                                              ; preds = %946, %1510
  %957 = phi i64 [ 0, %946 ], [ %1511, %1510 ]
  %958 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %957
  %959 = load i8, ptr %958, align 1, !tbaa !77
  switch i8 %959, label %1510 [
    i8 3, label %960
    i8 1, label %1023
    i8 2, label %1146
    i8 0, label %1269
  ]

960:                                              ; preds = %956
  %961 = shl nuw nsw i64 %957, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #7
  %962 = trunc i64 %961 to i32
  call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef 0, i32 noundef %962, i32 noundef 2, ptr noundef nonnull %18) #7
  %963 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %961
  %964 = load i32, ptr %963, align 16, !tbaa !93
  %965 = sext i32 %964 to i64
  %966 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 %965
  %967 = load i16, ptr %966, align 4, !tbaa !100
  %968 = sext i16 %967 to i32
  %969 = load i16, ptr %18, align 4, !tbaa !100
  %970 = sext i16 %969 to i32
  %971 = sub nsw i32 %968, %970
  %972 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 %965, i64 1
  %973 = load i16, ptr %972, align 2, !tbaa !100
  %974 = sext i16 %973 to i32
  %975 = load i16, ptr %955, align 2, !tbaa !100
  %976 = sext i16 %975 to i32
  %977 = sub nsw i32 %974, %976
  %978 = add nsw i32 %964, -1
  %979 = sext i32 %978 to i64
  %980 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %979
  %981 = add nsw i32 %964, -8
  %982 = sext i32 %981 to i64
  %983 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %982
  %984 = load i8, ptr %980, align 1, !tbaa !77
  %985 = zext i8 %984 to i32
  %986 = load i8, ptr %983, align 1, !tbaa !77
  %987 = zext i8 %986 to i32
  %988 = add nuw nsw i32 %987, %985
  %989 = getelementptr inbounds i8, ptr %980, i64 1
  %990 = load i8, ptr %989, align 1, !tbaa !77
  %991 = zext i8 %990 to i32
  %992 = getelementptr inbounds i8, ptr %983, i64 1
  %993 = load i8, ptr %992, align 1, !tbaa !77
  %994 = zext i8 %993 to i32
  %995 = add nuw nsw i32 %994, %991
  %996 = icmp ugt i32 %988, 2
  %997 = zext i1 %996 to i32
  %998 = icmp ugt i32 %988, 32
  %999 = zext i1 %998 to i32
  %1000 = add nuw nsw i32 %997, %999
  %1001 = icmp ugt i32 %995, 2
  %1002 = zext i1 %1001 to i32
  %1003 = icmp ugt i32 %995, 32
  %1004 = zext i1 %1003 to i32
  %1005 = add nuw nsw i32 %1002, %1004
  %1006 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 0, i32 noundef %971, i32 noundef %1000)
  %1007 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 1, i32 noundef %977, i32 noundef %1005)
  %1008 = shl nuw nsw i32 %1007, 8
  %1009 = add nuw nsw i32 %1008, %1006
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #7
  %1010 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %961
  %1011 = load i8, ptr %1010, align 4, !tbaa !77
  %1012 = zext i8 %1011 to i64
  %1013 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %961
  %1014 = load i8, ptr %1013, align 4, !tbaa !77
  %1015 = zext i8 %1014 to i64
  %1016 = add nuw nsw i64 %1012, 12
  %1017 = shl nuw nsw i64 %1015, 3
  %1018 = add nuw nsw i64 %1016, %1017
  %1019 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1018
  %1020 = and i32 %1009, 65535
  %1021 = mul nuw i32 %1020, 65537
  store i32 %1021, ptr %1019, align 4, !tbaa !77
  %1022 = getelementptr inbounds i8, ptr %1019, i64 16
  store i32 %1021, ptr %1022, align 4, !tbaa !77
  br label %1510

1023:                                             ; preds = %956
  %1024 = shl nuw nsw i64 %957, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #7
  %1025 = trunc i64 %1024 to i32
  call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef 0, i32 noundef %1025, i32 noundef 2, ptr noundef nonnull %17) #7
  %1026 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %1024
  %1027 = load i32, ptr %1026, align 16, !tbaa !93
  %1028 = sext i32 %1027 to i64
  %1029 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 %1028
  %1030 = load i16, ptr %1029, align 4, !tbaa !100
  %1031 = sext i16 %1030 to i32
  %1032 = load i16, ptr %17, align 4, !tbaa !100
  %1033 = sext i16 %1032 to i32
  %1034 = sub nsw i32 %1031, %1033
  %1035 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 %1028, i64 1
  %1036 = load i16, ptr %1035, align 2, !tbaa !100
  %1037 = sext i16 %1036 to i32
  %1038 = load i16, ptr %953, align 2, !tbaa !100
  %1039 = sext i16 %1038 to i32
  %1040 = sub nsw i32 %1037, %1039
  %1041 = add nsw i32 %1027, -1
  %1042 = sext i32 %1041 to i64
  %1043 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1042
  %1044 = add nsw i32 %1027, -8
  %1045 = sext i32 %1044 to i64
  %1046 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1045
  %1047 = load i8, ptr %1043, align 1, !tbaa !77
  %1048 = zext i8 %1047 to i32
  %1049 = load i8, ptr %1046, align 1, !tbaa !77
  %1050 = zext i8 %1049 to i32
  %1051 = add nuw nsw i32 %1050, %1048
  %1052 = getelementptr inbounds i8, ptr %1043, i64 1
  %1053 = load i8, ptr %1052, align 1, !tbaa !77
  %1054 = zext i8 %1053 to i32
  %1055 = getelementptr inbounds i8, ptr %1046, i64 1
  %1056 = load i8, ptr %1055, align 1, !tbaa !77
  %1057 = zext i8 %1056 to i32
  %1058 = add nuw nsw i32 %1057, %1054
  %1059 = icmp ugt i32 %1051, 2
  %1060 = zext i1 %1059 to i32
  %1061 = icmp ugt i32 %1051, 32
  %1062 = zext i1 %1061 to i32
  %1063 = add nuw nsw i32 %1060, %1062
  %1064 = icmp ugt i32 %1058, 2
  %1065 = zext i1 %1064 to i32
  %1066 = icmp ugt i32 %1058, 32
  %1067 = zext i1 %1066 to i32
  %1068 = add nuw nsw i32 %1065, %1067
  %1069 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 0, i32 noundef %1034, i32 noundef %1063)
  %1070 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 1, i32 noundef %1040, i32 noundef %1068)
  %1071 = shl nuw nsw i32 %1070, 8
  %1072 = add nuw nsw i32 %1071, %1069
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #7
  %1073 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %1024
  %1074 = load i8, ptr %1073, align 4, !tbaa !77
  %1075 = zext i8 %1074 to i64
  %1076 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %1024
  %1077 = load i8, ptr %1076, align 4, !tbaa !77
  %1078 = zext i8 %1077 to i64
  %1079 = add nuw nsw i64 %1075, 12
  %1080 = shl nuw nsw i64 %1078, 3
  %1081 = add nuw nsw i64 %1079, %1080
  %1082 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1081
  %1083 = and i32 %1072, 65535
  %1084 = mul nuw i32 %1083, 65537
  store i32 %1084, ptr %1082, align 4, !tbaa !77
  %1085 = or disjoint i64 %1024, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #7
  %1086 = trunc i64 %1085 to i32
  call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef 0, i32 noundef %1086, i32 noundef 2, ptr noundef nonnull %16) #7
  %1087 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %1085
  %1088 = load i32, ptr %1087, align 8, !tbaa !93
  %1089 = sext i32 %1088 to i64
  %1090 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 %1089
  %1091 = load i16, ptr %1090, align 4, !tbaa !100
  %1092 = sext i16 %1091 to i32
  %1093 = load i16, ptr %16, align 4, !tbaa !100
  %1094 = sext i16 %1093 to i32
  %1095 = sub nsw i32 %1092, %1094
  %1096 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 %1089, i64 1
  %1097 = load i16, ptr %1096, align 2, !tbaa !100
  %1098 = sext i16 %1097 to i32
  %1099 = load i16, ptr %954, align 2, !tbaa !100
  %1100 = sext i16 %1099 to i32
  %1101 = sub nsw i32 %1098, %1100
  %1102 = add nsw i32 %1088, -1
  %1103 = sext i32 %1102 to i64
  %1104 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1103
  %1105 = add nsw i32 %1088, -8
  %1106 = sext i32 %1105 to i64
  %1107 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1106
  %1108 = load i8, ptr %1104, align 1, !tbaa !77
  %1109 = zext i8 %1108 to i32
  %1110 = load i8, ptr %1107, align 1, !tbaa !77
  %1111 = zext i8 %1110 to i32
  %1112 = add nuw nsw i32 %1111, %1109
  %1113 = getelementptr inbounds i8, ptr %1104, i64 1
  %1114 = load i8, ptr %1113, align 1, !tbaa !77
  %1115 = zext i8 %1114 to i32
  %1116 = getelementptr inbounds i8, ptr %1107, i64 1
  %1117 = load i8, ptr %1116, align 1, !tbaa !77
  %1118 = zext i8 %1117 to i32
  %1119 = add nuw nsw i32 %1118, %1115
  %1120 = icmp ugt i32 %1112, 2
  %1121 = zext i1 %1120 to i32
  %1122 = icmp ugt i32 %1112, 32
  %1123 = zext i1 %1122 to i32
  %1124 = add nuw nsw i32 %1121, %1123
  %1125 = icmp ugt i32 %1119, 2
  %1126 = zext i1 %1125 to i32
  %1127 = icmp ugt i32 %1119, 32
  %1128 = zext i1 %1127 to i32
  %1129 = add nuw nsw i32 %1126, %1128
  %1130 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 0, i32 noundef %1095, i32 noundef %1124)
  %1131 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 1, i32 noundef %1101, i32 noundef %1129)
  %1132 = shl nuw nsw i32 %1131, 8
  %1133 = add nuw nsw i32 %1132, %1130
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #7
  %1134 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %1085
  %1135 = load i8, ptr %1134, align 2, !tbaa !77
  %1136 = zext i8 %1135 to i64
  %1137 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %1085
  %1138 = load i8, ptr %1137, align 2, !tbaa !77
  %1139 = zext i8 %1138 to i64
  %1140 = add nuw nsw i64 %1136, 12
  %1141 = shl nuw nsw i64 %1139, 3
  %1142 = add nuw nsw i64 %1140, %1141
  %1143 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1142
  %1144 = and i32 %1133, 65535
  %1145 = mul nuw i32 %1144, 65537
  store i32 %1145, ptr %1143, align 4, !tbaa !77
  br label %1510

1146:                                             ; preds = %956
  %1147 = shl nuw nsw i64 %957, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #7
  %1148 = trunc i64 %1147 to i32
  call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef 0, i32 noundef %1148, i32 noundef 1, ptr noundef nonnull %15) #7
  %1149 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %1147
  %1150 = load i32, ptr %1149, align 16, !tbaa !93
  %1151 = sext i32 %1150 to i64
  %1152 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 %1151
  %1153 = load i16, ptr %1152, align 4, !tbaa !100
  %1154 = sext i16 %1153 to i32
  %1155 = load i16, ptr %15, align 4, !tbaa !100
  %1156 = sext i16 %1155 to i32
  %1157 = sub nsw i32 %1154, %1156
  %1158 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 %1151, i64 1
  %1159 = load i16, ptr %1158, align 2, !tbaa !100
  %1160 = sext i16 %1159 to i32
  %1161 = load i16, ptr %951, align 2, !tbaa !100
  %1162 = sext i16 %1161 to i32
  %1163 = sub nsw i32 %1160, %1162
  %1164 = add nsw i32 %1150, -1
  %1165 = sext i32 %1164 to i64
  %1166 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1165
  %1167 = add nsw i32 %1150, -8
  %1168 = sext i32 %1167 to i64
  %1169 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1168
  %1170 = load i8, ptr %1166, align 1, !tbaa !77
  %1171 = zext i8 %1170 to i32
  %1172 = load i8, ptr %1169, align 1, !tbaa !77
  %1173 = zext i8 %1172 to i32
  %1174 = add nuw nsw i32 %1173, %1171
  %1175 = getelementptr inbounds i8, ptr %1166, i64 1
  %1176 = load i8, ptr %1175, align 1, !tbaa !77
  %1177 = zext i8 %1176 to i32
  %1178 = getelementptr inbounds i8, ptr %1169, i64 1
  %1179 = load i8, ptr %1178, align 1, !tbaa !77
  %1180 = zext i8 %1179 to i32
  %1181 = add nuw nsw i32 %1180, %1177
  %1182 = icmp ugt i32 %1174, 2
  %1183 = zext i1 %1182 to i32
  %1184 = icmp ugt i32 %1174, 32
  %1185 = zext i1 %1184 to i32
  %1186 = add nuw nsw i32 %1183, %1185
  %1187 = icmp ugt i32 %1181, 2
  %1188 = zext i1 %1187 to i32
  %1189 = icmp ugt i32 %1181, 32
  %1190 = zext i1 %1189 to i32
  %1191 = add nuw nsw i32 %1188, %1190
  %1192 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 0, i32 noundef %1157, i32 noundef %1186)
  %1193 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 1, i32 noundef %1163, i32 noundef %1191)
  %1194 = shl nuw nsw i32 %1193, 8
  %1195 = add nuw nsw i32 %1194, %1192
  %1196 = trunc i32 %1195 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #7
  %1197 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %1147
  %1198 = load i8, ptr %1197, align 4, !tbaa !77
  %1199 = zext i8 %1198 to i64
  %1200 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %1147
  %1201 = load i8, ptr %1200, align 4, !tbaa !77
  %1202 = zext i8 %1201 to i64
  %1203 = add nuw nsw i64 %1199, 12
  %1204 = shl nuw nsw i64 %1202, 3
  %1205 = add nuw nsw i64 %1203, %1204
  %1206 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1205
  store i16 %1196, ptr %1206, align 2, !tbaa !77
  %1207 = getelementptr inbounds i8, ptr %1206, i64 16
  store i16 %1196, ptr %1207, align 2, !tbaa !77
  %1208 = or disjoint i64 %1147, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #7
  %1209 = trunc i64 %1208 to i32
  call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef 0, i32 noundef %1209, i32 noundef 1, ptr noundef nonnull %14) #7
  %1210 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %1208
  %1211 = load i32, ptr %1210, align 4, !tbaa !93
  %1212 = sext i32 %1211 to i64
  %1213 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 %1212
  %1214 = load i16, ptr %1213, align 4, !tbaa !100
  %1215 = sext i16 %1214 to i32
  %1216 = load i16, ptr %14, align 4, !tbaa !100
  %1217 = sext i16 %1216 to i32
  %1218 = sub nsw i32 %1215, %1217
  %1219 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 %1212, i64 1
  %1220 = load i16, ptr %1219, align 2, !tbaa !100
  %1221 = sext i16 %1220 to i32
  %1222 = load i16, ptr %952, align 2, !tbaa !100
  %1223 = sext i16 %1222 to i32
  %1224 = sub nsw i32 %1221, %1223
  %1225 = add nsw i32 %1211, -1
  %1226 = sext i32 %1225 to i64
  %1227 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1226
  %1228 = add nsw i32 %1211, -8
  %1229 = sext i32 %1228 to i64
  %1230 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1229
  %1231 = load i8, ptr %1227, align 1, !tbaa !77
  %1232 = zext i8 %1231 to i32
  %1233 = load i8, ptr %1230, align 1, !tbaa !77
  %1234 = zext i8 %1233 to i32
  %1235 = add nuw nsw i32 %1234, %1232
  %1236 = getelementptr inbounds i8, ptr %1227, i64 1
  %1237 = load i8, ptr %1236, align 1, !tbaa !77
  %1238 = zext i8 %1237 to i32
  %1239 = getelementptr inbounds i8, ptr %1230, i64 1
  %1240 = load i8, ptr %1239, align 1, !tbaa !77
  %1241 = zext i8 %1240 to i32
  %1242 = add nuw nsw i32 %1241, %1238
  %1243 = icmp ugt i32 %1235, 2
  %1244 = zext i1 %1243 to i32
  %1245 = icmp ugt i32 %1235, 32
  %1246 = zext i1 %1245 to i32
  %1247 = add nuw nsw i32 %1244, %1246
  %1248 = icmp ugt i32 %1242, 2
  %1249 = zext i1 %1248 to i32
  %1250 = icmp ugt i32 %1242, 32
  %1251 = zext i1 %1250 to i32
  %1252 = add nuw nsw i32 %1249, %1251
  %1253 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 0, i32 noundef %1218, i32 noundef %1247)
  %1254 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 1, i32 noundef %1224, i32 noundef %1252)
  %1255 = shl nuw nsw i32 %1254, 8
  %1256 = add nuw nsw i32 %1255, %1253
  %1257 = trunc i32 %1256 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #7
  %1258 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %1208
  %1259 = load i8, ptr %1258, align 1, !tbaa !77
  %1260 = zext i8 %1259 to i64
  %1261 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %1208
  %1262 = load i8, ptr %1261, align 1, !tbaa !77
  %1263 = zext i8 %1262 to i64
  %1264 = add nuw nsw i64 %1260, 12
  %1265 = shl nuw nsw i64 %1263, 3
  %1266 = add nuw nsw i64 %1264, %1265
  %1267 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1266
  store i16 %1257, ptr %1267, align 2, !tbaa !77
  %1268 = getelementptr inbounds i8, ptr %1267, i64 16
  store i16 %1257, ptr %1268, align 2, !tbaa !77
  br label %1510

1269:                                             ; preds = %956
  %1270 = shl nuw nsw i64 %957, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #7
  %1271 = trunc i64 %1270 to i32
  call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef 0, i32 noundef %1271, i32 noundef 1, ptr noundef nonnull %13) #7
  %1272 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %1270
  %1273 = load i32, ptr %1272, align 16, !tbaa !93
  %1274 = sext i32 %1273 to i64
  %1275 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 %1274
  %1276 = load i16, ptr %1275, align 4, !tbaa !100
  %1277 = sext i16 %1276 to i32
  %1278 = load i16, ptr %13, align 4, !tbaa !100
  %1279 = sext i16 %1278 to i32
  %1280 = sub nsw i32 %1277, %1279
  %1281 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 %1274, i64 1
  %1282 = load i16, ptr %1281, align 2, !tbaa !100
  %1283 = sext i16 %1282 to i32
  %1284 = load i16, ptr %947, align 2, !tbaa !100
  %1285 = sext i16 %1284 to i32
  %1286 = sub nsw i32 %1283, %1285
  %1287 = add nsw i32 %1273, -1
  %1288 = sext i32 %1287 to i64
  %1289 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1288
  %1290 = add nsw i32 %1273, -8
  %1291 = sext i32 %1290 to i64
  %1292 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1291
  %1293 = load i8, ptr %1289, align 1, !tbaa !77
  %1294 = zext i8 %1293 to i32
  %1295 = load i8, ptr %1292, align 1, !tbaa !77
  %1296 = zext i8 %1295 to i32
  %1297 = add nuw nsw i32 %1296, %1294
  %1298 = getelementptr inbounds i8, ptr %1289, i64 1
  %1299 = load i8, ptr %1298, align 1, !tbaa !77
  %1300 = zext i8 %1299 to i32
  %1301 = getelementptr inbounds i8, ptr %1292, i64 1
  %1302 = load i8, ptr %1301, align 1, !tbaa !77
  %1303 = zext i8 %1302 to i32
  %1304 = add nuw nsw i32 %1303, %1300
  %1305 = icmp ugt i32 %1297, 2
  %1306 = zext i1 %1305 to i32
  %1307 = icmp ugt i32 %1297, 32
  %1308 = zext i1 %1307 to i32
  %1309 = add nuw nsw i32 %1306, %1308
  %1310 = icmp ugt i32 %1304, 2
  %1311 = zext i1 %1310 to i32
  %1312 = icmp ugt i32 %1304, 32
  %1313 = zext i1 %1312 to i32
  %1314 = add nuw nsw i32 %1311, %1313
  %1315 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 0, i32 noundef %1280, i32 noundef %1309)
  %1316 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 1, i32 noundef %1286, i32 noundef %1314)
  %1317 = shl nuw nsw i32 %1316, 8
  %1318 = add nuw nsw i32 %1317, %1315
  %1319 = trunc i32 %1318 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #7
  %1320 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %1270
  %1321 = load i8, ptr %1320, align 4, !tbaa !77
  %1322 = zext i8 %1321 to i64
  %1323 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %1270
  %1324 = load i8, ptr %1323, align 4, !tbaa !77
  %1325 = zext i8 %1324 to i64
  %1326 = add nuw nsw i64 %1322, 12
  %1327 = shl nuw nsw i64 %1325, 3
  %1328 = add nuw nsw i64 %1326, %1327
  %1329 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1328
  store i16 %1319, ptr %1329, align 2, !tbaa !77
  %1330 = or disjoint i64 %1270, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #7
  %1331 = trunc i64 %1330 to i32
  call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef 0, i32 noundef %1331, i32 noundef 1, ptr noundef nonnull %12) #7
  %1332 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %1330
  %1333 = load i32, ptr %1332, align 4, !tbaa !93
  %1334 = sext i32 %1333 to i64
  %1335 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 %1334
  %1336 = load i16, ptr %1335, align 4, !tbaa !100
  %1337 = sext i16 %1336 to i32
  %1338 = load i16, ptr %12, align 4, !tbaa !100
  %1339 = sext i16 %1338 to i32
  %1340 = sub nsw i32 %1337, %1339
  %1341 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 %1334, i64 1
  %1342 = load i16, ptr %1341, align 2, !tbaa !100
  %1343 = sext i16 %1342 to i32
  %1344 = load i16, ptr %948, align 2, !tbaa !100
  %1345 = sext i16 %1344 to i32
  %1346 = sub nsw i32 %1343, %1345
  %1347 = add nsw i32 %1333, -1
  %1348 = sext i32 %1347 to i64
  %1349 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1348
  %1350 = add nsw i32 %1333, -8
  %1351 = sext i32 %1350 to i64
  %1352 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1351
  %1353 = load i8, ptr %1349, align 1, !tbaa !77
  %1354 = zext i8 %1353 to i32
  %1355 = load i8, ptr %1352, align 1, !tbaa !77
  %1356 = zext i8 %1355 to i32
  %1357 = add nuw nsw i32 %1356, %1354
  %1358 = getelementptr inbounds i8, ptr %1349, i64 1
  %1359 = load i8, ptr %1358, align 1, !tbaa !77
  %1360 = zext i8 %1359 to i32
  %1361 = getelementptr inbounds i8, ptr %1352, i64 1
  %1362 = load i8, ptr %1361, align 1, !tbaa !77
  %1363 = zext i8 %1362 to i32
  %1364 = add nuw nsw i32 %1363, %1360
  %1365 = icmp ugt i32 %1357, 2
  %1366 = zext i1 %1365 to i32
  %1367 = icmp ugt i32 %1357, 32
  %1368 = zext i1 %1367 to i32
  %1369 = add nuw nsw i32 %1366, %1368
  %1370 = icmp ugt i32 %1364, 2
  %1371 = zext i1 %1370 to i32
  %1372 = icmp ugt i32 %1364, 32
  %1373 = zext i1 %1372 to i32
  %1374 = add nuw nsw i32 %1371, %1373
  %1375 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 0, i32 noundef %1340, i32 noundef %1369)
  %1376 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 1, i32 noundef %1346, i32 noundef %1374)
  %1377 = shl nuw nsw i32 %1376, 8
  %1378 = add nuw nsw i32 %1377, %1375
  %1379 = trunc i32 %1378 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #7
  %1380 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %1330
  %1381 = load i8, ptr %1380, align 1, !tbaa !77
  %1382 = zext i8 %1381 to i64
  %1383 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %1330
  %1384 = load i8, ptr %1383, align 1, !tbaa !77
  %1385 = zext i8 %1384 to i64
  %1386 = add nuw nsw i64 %1382, 12
  %1387 = shl nuw nsw i64 %1385, 3
  %1388 = add nuw nsw i64 %1386, %1387
  %1389 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1388
  store i16 %1379, ptr %1389, align 2, !tbaa !77
  %1390 = or disjoint i64 %1270, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #7
  %1391 = trunc i64 %1390 to i32
  call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef 0, i32 noundef %1391, i32 noundef 1, ptr noundef nonnull %11) #7
  %1392 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %1390
  %1393 = load i32, ptr %1392, align 8, !tbaa !93
  %1394 = sext i32 %1393 to i64
  %1395 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 %1394
  %1396 = load i16, ptr %1395, align 4, !tbaa !100
  %1397 = sext i16 %1396 to i32
  %1398 = load i16, ptr %11, align 4, !tbaa !100
  %1399 = sext i16 %1398 to i32
  %1400 = sub nsw i32 %1397, %1399
  %1401 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 %1394, i64 1
  %1402 = load i16, ptr %1401, align 2, !tbaa !100
  %1403 = sext i16 %1402 to i32
  %1404 = load i16, ptr %949, align 2, !tbaa !100
  %1405 = sext i16 %1404 to i32
  %1406 = sub nsw i32 %1403, %1405
  %1407 = add nsw i32 %1393, -1
  %1408 = sext i32 %1407 to i64
  %1409 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1408
  %1410 = add nsw i32 %1393, -8
  %1411 = sext i32 %1410 to i64
  %1412 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1411
  %1413 = load i8, ptr %1409, align 1, !tbaa !77
  %1414 = zext i8 %1413 to i32
  %1415 = load i8, ptr %1412, align 1, !tbaa !77
  %1416 = zext i8 %1415 to i32
  %1417 = add nuw nsw i32 %1416, %1414
  %1418 = getelementptr inbounds i8, ptr %1409, i64 1
  %1419 = load i8, ptr %1418, align 1, !tbaa !77
  %1420 = zext i8 %1419 to i32
  %1421 = getelementptr inbounds i8, ptr %1412, i64 1
  %1422 = load i8, ptr %1421, align 1, !tbaa !77
  %1423 = zext i8 %1422 to i32
  %1424 = add nuw nsw i32 %1423, %1420
  %1425 = icmp ugt i32 %1417, 2
  %1426 = zext i1 %1425 to i32
  %1427 = icmp ugt i32 %1417, 32
  %1428 = zext i1 %1427 to i32
  %1429 = add nuw nsw i32 %1426, %1428
  %1430 = icmp ugt i32 %1424, 2
  %1431 = zext i1 %1430 to i32
  %1432 = icmp ugt i32 %1424, 32
  %1433 = zext i1 %1432 to i32
  %1434 = add nuw nsw i32 %1431, %1433
  %1435 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 0, i32 noundef %1400, i32 noundef %1429)
  %1436 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 1, i32 noundef %1406, i32 noundef %1434)
  %1437 = shl nuw nsw i32 %1436, 8
  %1438 = add nuw nsw i32 %1437, %1435
  %1439 = trunc i32 %1438 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #7
  %1440 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %1390
  %1441 = load i8, ptr %1440, align 2, !tbaa !77
  %1442 = zext i8 %1441 to i64
  %1443 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %1390
  %1444 = load i8, ptr %1443, align 2, !tbaa !77
  %1445 = zext i8 %1444 to i64
  %1446 = add nuw nsw i64 %1442, 12
  %1447 = shl nuw nsw i64 %1445, 3
  %1448 = add nuw nsw i64 %1446, %1447
  %1449 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1448
  store i16 %1439, ptr %1449, align 2, !tbaa !77
  %1450 = or disjoint i64 %1270, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  %1451 = trunc i64 %1450 to i32
  call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef 0, i32 noundef %1451, i32 noundef 1, ptr noundef nonnull %10) #7
  %1452 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %1450
  %1453 = load i32, ptr %1452, align 4, !tbaa !93
  %1454 = sext i32 %1453 to i64
  %1455 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 %1454
  %1456 = load i16, ptr %1455, align 4, !tbaa !100
  %1457 = sext i16 %1456 to i32
  %1458 = load i16, ptr %10, align 4, !tbaa !100
  %1459 = sext i16 %1458 to i32
  %1460 = sub nsw i32 %1457, %1459
  %1461 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 %1454, i64 1
  %1462 = load i16, ptr %1461, align 2, !tbaa !100
  %1463 = sext i16 %1462 to i32
  %1464 = load i16, ptr %950, align 2, !tbaa !100
  %1465 = sext i16 %1464 to i32
  %1466 = sub nsw i32 %1463, %1465
  %1467 = add nsw i32 %1453, -1
  %1468 = sext i32 %1467 to i64
  %1469 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1468
  %1470 = add nsw i32 %1453, -8
  %1471 = sext i32 %1470 to i64
  %1472 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1471
  %1473 = load i8, ptr %1469, align 1, !tbaa !77
  %1474 = zext i8 %1473 to i32
  %1475 = load i8, ptr %1472, align 1, !tbaa !77
  %1476 = zext i8 %1475 to i32
  %1477 = add nuw nsw i32 %1476, %1474
  %1478 = getelementptr inbounds i8, ptr %1469, i64 1
  %1479 = load i8, ptr %1478, align 1, !tbaa !77
  %1480 = zext i8 %1479 to i32
  %1481 = getelementptr inbounds i8, ptr %1472, i64 1
  %1482 = load i8, ptr %1481, align 1, !tbaa !77
  %1483 = zext i8 %1482 to i32
  %1484 = add nuw nsw i32 %1483, %1480
  %1485 = icmp ugt i32 %1477, 2
  %1486 = zext i1 %1485 to i32
  %1487 = icmp ugt i32 %1477, 32
  %1488 = zext i1 %1487 to i32
  %1489 = add nuw nsw i32 %1486, %1488
  %1490 = icmp ugt i32 %1484, 2
  %1491 = zext i1 %1490 to i32
  %1492 = icmp ugt i32 %1484, 32
  %1493 = zext i1 %1492 to i32
  %1494 = add nuw nsw i32 %1491, %1493
  %1495 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 0, i32 noundef %1460, i32 noundef %1489)
  %1496 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 1, i32 noundef %1466, i32 noundef %1494)
  %1497 = shl nuw nsw i32 %1496, 8
  %1498 = add nuw nsw i32 %1497, %1495
  %1499 = trunc i32 %1498 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  %1500 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %1450
  %1501 = load i8, ptr %1500, align 1, !tbaa !77
  %1502 = zext i8 %1501 to i64
  %1503 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %1450
  %1504 = load i8, ptr %1503, align 1, !tbaa !77
  %1505 = zext i8 %1504 to i64
  %1506 = add nuw nsw i64 %1502, 12
  %1507 = shl nuw nsw i64 %1505, 3
  %1508 = add nuw nsw i64 %1506, %1507
  %1509 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1508
  store i16 %1499, ptr %1509, align 2, !tbaa !77
  br label %1510

1510:                                             ; preds = %956, %960, %1023, %1146, %1269
  %1511 = add nuw nsw i64 %957, 1
  %1512 = icmp eq i64 %1511, 4
  br i1 %1512, label %2275, label %956, !llvm.loop !103

1513:                                             ; preds = %1529
  %1514 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  %1515 = load i32, ptr %1514, align 8, !tbaa !93
  %1516 = icmp sgt i32 %1515, 1
  br i1 %1516, label %1532, label %1589

1517:                                             ; preds = %344, %1529
  %1518 = phi i64 [ %1530, %1529 ], [ 0, %344 ]
  %1519 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %1518
  %1520 = load i8, ptr %1519, align 1, !tbaa !77
  %1521 = icmp eq i8 %1520, 12
  br i1 %1521, label %1522, label %1523

1522:                                             ; preds = %1517
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 36, i32 noundef 0) #7
  br label %1529

1523:                                             ; preds = %1517
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 36, i32 noundef 1) #7
  %1524 = icmp eq i8 %1520, 11
  br i1 %1524, label %1525, label %1526

1525:                                             ; preds = %1523
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 37, i32 noundef 1) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 38, i32 noundef 0) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 39, i32 noundef 0) #7
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 39, i32 noundef 0) #7
  br label %1529

1526:                                             ; preds = %1523
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 37, i32 noundef 0) #7
  %1527 = icmp eq i8 %1520, 7
  %1528 = zext i1 %1527 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 39, i32 noundef %1528) #7
  br label %1529

1529:                                             ; preds = %1522, %1525, %1526
  %1530 = add nuw nsw i64 %1518, 1
  %1531 = icmp eq i64 %1530, 4
  br i1 %1531, label %1513, label %1517, !llvm.loop !104

1532:                                             ; preds = %1513, %1586
  %1533 = phi i64 [ %1587, %1586 ], [ 0, %1513 ]
  %1534 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %1533
  %1535 = load i8, ptr %1534, align 1, !tbaa !77
  %1536 = zext i8 %1535 to i64
  %1537 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %1536
  %1538 = load i8, ptr %1537, align 1, !tbaa !77
  %1539 = icmp eq i8 %1538, 0
  br i1 %1539, label %1586, label %1540

1540:                                             ; preds = %1532
  %1541 = shl nuw nsw i64 %1533, 2
  %1542 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %1541
  %1543 = load i32, ptr %1542, align 16, !tbaa !93
  %1544 = add nsw i32 %1543, -1
  %1545 = sext i32 %1544 to i64
  %1546 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 %1545
  %1547 = load i8, ptr %1546, align 1, !tbaa !77
  %1548 = add nsw i32 %1543, -8
  %1549 = sext i32 %1548 to i64
  %1550 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 %1549
  %1551 = load i8, ptr %1550, align 1, !tbaa !77
  %1552 = icmp sgt i8 %1547, 0
  br i1 %1552, label %1553, label %1558

1553:                                             ; preds = %1540
  %1554 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 %1545
  %1555 = load i8, ptr %1554, align 1, !tbaa !77
  %1556 = icmp eq i8 %1555, 0
  %1557 = zext i1 %1556 to i32
  br label %1558

1558:                                             ; preds = %1553, %1540
  %1559 = phi i32 [ 0, %1540 ], [ %1557, %1553 ]
  %1560 = icmp sgt i8 %1551, 0
  br i1 %1560, label %1561, label %1567

1561:                                             ; preds = %1558
  %1562 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 %1549
  %1563 = load i8, ptr %1562, align 1, !tbaa !77
  %1564 = icmp eq i8 %1563, 0
  %1565 = or disjoint i32 %1559, 2
  %1566 = select i1 %1564, i32 %1565, i32 %1559
  br label %1567

1567:                                             ; preds = %1561, %1558
  %1568 = phi i32 [ %1559, %1558 ], [ %1566, %1561 ]
  %1569 = sext i32 %1543 to i64
  %1570 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 %1569
  %1571 = load i8, ptr %1570, align 1, !tbaa !77
  %1572 = icmp sgt i8 %1571, 0
  br i1 %1572, label %1573, label %1583

1573:                                             ; preds = %1567
  %1574 = zext nneg i8 %1571 to i32
  br label %1575

1575:                                             ; preds = %1575, %1573
  %1576 = phi i32 [ %1581, %1575 ], [ %1574, %1573 ]
  %1577 = phi i32 [ %1580, %1575 ], [ %1568, %1573 ]
  %1578 = add nuw nsw i32 %1577, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %1578, i32 noundef 1) #7
  %1579 = lshr i32 %1577, 2
  %1580 = add nuw nsw i32 %1579, 4
  %1581 = add nsw i32 %1576, -1
  %1582 = icmp sgt i32 %1576, 1
  br i1 %1582, label %1575, label %1583, !llvm.loop !99

1583:                                             ; preds = %1575, %1567
  %1584 = phi i32 [ %1568, %1567 ], [ %1580, %1575 ]
  %1585 = add nuw nsw i32 %1584, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %1585, i32 noundef 0) #7
  br label %1586

1586:                                             ; preds = %1532, %1583
  %1587 = add nuw nsw i64 %1533, 1
  %1588 = icmp eq i64 %1587, 4
  br i1 %1588, label %1589, label %1532, !llvm.loop !105

1589:                                             ; preds = %1586, %1513
  %1590 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19, i64 1
  %1591 = load i32, ptr %1590, align 4, !tbaa !93
  %1592 = icmp sgt i32 %1591, 1
  br i1 %1592, label %1593, label %1650

1593:                                             ; preds = %1589, %1647
  %1594 = phi i64 [ %1648, %1647 ], [ 0, %1589 ]
  %1595 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %1594
  %1596 = load i8, ptr %1595, align 1, !tbaa !77
  %1597 = zext i8 %1596 to i64
  %1598 = getelementptr inbounds [2 x [17 x i8]], ptr @x264_mb_partition_listX_table, i64 0, i64 1, i64 %1597
  %1599 = load i8, ptr %1598, align 1, !tbaa !77
  %1600 = icmp eq i8 %1599, 0
  br i1 %1600, label %1647, label %1601

1601:                                             ; preds = %1593
  %1602 = shl nuw nsw i64 %1594, 2
  %1603 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %1602
  %1604 = load i32, ptr %1603, align 16, !tbaa !93
  %1605 = add nsw i32 %1604, -1
  %1606 = sext i32 %1605 to i64
  %1607 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 %1606
  %1608 = load i8, ptr %1607, align 1, !tbaa !77
  %1609 = add nsw i32 %1604, -8
  %1610 = sext i32 %1609 to i64
  %1611 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 %1610
  %1612 = load i8, ptr %1611, align 1, !tbaa !77
  %1613 = icmp sgt i8 %1608, 0
  br i1 %1613, label %1614, label %1619

1614:                                             ; preds = %1601
  %1615 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 %1606
  %1616 = load i8, ptr %1615, align 1, !tbaa !77
  %1617 = icmp eq i8 %1616, 0
  %1618 = zext i1 %1617 to i32
  br label %1619

1619:                                             ; preds = %1614, %1601
  %1620 = phi i32 [ 0, %1601 ], [ %1618, %1614 ]
  %1621 = icmp sgt i8 %1612, 0
  br i1 %1621, label %1622, label %1628

1622:                                             ; preds = %1619
  %1623 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 %1610
  %1624 = load i8, ptr %1623, align 1, !tbaa !77
  %1625 = icmp eq i8 %1624, 0
  %1626 = or disjoint i32 %1620, 2
  %1627 = select i1 %1625, i32 %1626, i32 %1620
  br label %1628

1628:                                             ; preds = %1622, %1619
  %1629 = phi i32 [ %1620, %1619 ], [ %1627, %1622 ]
  %1630 = sext i32 %1604 to i64
  %1631 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 %1630
  %1632 = load i8, ptr %1631, align 1, !tbaa !77
  %1633 = icmp sgt i8 %1632, 0
  br i1 %1633, label %1634, label %1644

1634:                                             ; preds = %1628
  %1635 = zext nneg i8 %1632 to i32
  br label %1636

1636:                                             ; preds = %1636, %1634
  %1637 = phi i32 [ %1642, %1636 ], [ %1635, %1634 ]
  %1638 = phi i32 [ %1641, %1636 ], [ %1629, %1634 ]
  %1639 = add nuw nsw i32 %1638, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %1639, i32 noundef 1) #7
  %1640 = lshr i32 %1638, 2
  %1641 = add nuw nsw i32 %1640, 4
  %1642 = add nsw i32 %1637, -1
  %1643 = icmp sgt i32 %1637, 1
  br i1 %1643, label %1636, label %1644, !llvm.loop !99

1644:                                             ; preds = %1636, %1628
  %1645 = phi i32 [ %1629, %1628 ], [ %1641, %1636 ]
  %1646 = add nuw nsw i32 %1645, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %1646, i32 noundef 0) #7
  br label %1647

1647:                                             ; preds = %1593, %1644
  %1648 = add nuw nsw i64 %1594, 1
  %1649 = icmp eq i64 %1648, 4
  br i1 %1649, label %1650, label %1593, !llvm.loop !106

1650:                                             ; preds = %1647, %1589
  %1651 = getelementptr inbounds [2 x i16], ptr %9, i64 0, i64 1
  br label %1654

1652:                                             ; preds = %1725
  %1653 = getelementptr inbounds [2 x i16], ptr %8, i64 0, i64 1
  br label %1728

1654:                                             ; preds = %1650, %1725
  %1655 = phi i64 [ 0, %1650 ], [ %1726, %1725 ]
  %1656 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %1655
  %1657 = load i8, ptr %1656, align 1, !tbaa !77
  %1658 = zext i8 %1657 to i64
  %1659 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %1658
  %1660 = load i8, ptr %1659, align 1, !tbaa !77
  %1661 = icmp eq i8 %1660, 0
  br i1 %1661, label %1725, label %1662

1662:                                             ; preds = %1654
  %1663 = shl nuw nsw i64 %1655, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  %1664 = trunc i64 %1663 to i32
  call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef 0, i32 noundef %1664, i32 noundef 2, ptr noundef nonnull %9) #7
  %1665 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %1663
  %1666 = load i32, ptr %1665, align 16, !tbaa !93
  %1667 = sext i32 %1666 to i64
  %1668 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 %1667
  %1669 = load i16, ptr %1668, align 4, !tbaa !100
  %1670 = sext i16 %1669 to i32
  %1671 = load i16, ptr %9, align 4, !tbaa !100
  %1672 = sext i16 %1671 to i32
  %1673 = sub nsw i32 %1670, %1672
  %1674 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 %1667, i64 1
  %1675 = load i16, ptr %1674, align 2, !tbaa !100
  %1676 = sext i16 %1675 to i32
  %1677 = load i16, ptr %1651, align 2, !tbaa !100
  %1678 = sext i16 %1677 to i32
  %1679 = sub nsw i32 %1676, %1678
  %1680 = add nsw i32 %1666, -1
  %1681 = sext i32 %1680 to i64
  %1682 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1681
  %1683 = add nsw i32 %1666, -8
  %1684 = sext i32 %1683 to i64
  %1685 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1684
  %1686 = load i8, ptr %1682, align 1, !tbaa !77
  %1687 = zext i8 %1686 to i32
  %1688 = load i8, ptr %1685, align 1, !tbaa !77
  %1689 = zext i8 %1688 to i32
  %1690 = add nuw nsw i32 %1689, %1687
  %1691 = getelementptr inbounds i8, ptr %1682, i64 1
  %1692 = load i8, ptr %1691, align 1, !tbaa !77
  %1693 = zext i8 %1692 to i32
  %1694 = getelementptr inbounds i8, ptr %1685, i64 1
  %1695 = load i8, ptr %1694, align 1, !tbaa !77
  %1696 = zext i8 %1695 to i32
  %1697 = add nuw nsw i32 %1696, %1693
  %1698 = icmp ugt i32 %1690, 2
  %1699 = zext i1 %1698 to i32
  %1700 = icmp ugt i32 %1690, 32
  %1701 = zext i1 %1700 to i32
  %1702 = add nuw nsw i32 %1699, %1701
  %1703 = icmp ugt i32 %1697, 2
  %1704 = zext i1 %1703 to i32
  %1705 = icmp ugt i32 %1697, 32
  %1706 = zext i1 %1705 to i32
  %1707 = add nuw nsw i32 %1704, %1706
  %1708 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 0, i32 noundef %1673, i32 noundef %1702)
  %1709 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 1, i32 noundef %1679, i32 noundef %1707)
  %1710 = shl nuw nsw i32 %1709, 8
  %1711 = add nuw nsw i32 %1710, %1708
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  %1712 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %1663
  %1713 = load i8, ptr %1712, align 4, !tbaa !77
  %1714 = zext i8 %1713 to i64
  %1715 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %1663
  %1716 = load i8, ptr %1715, align 4, !tbaa !77
  %1717 = zext i8 %1716 to i64
  %1718 = add nuw nsw i64 %1714, 12
  %1719 = shl nuw nsw i64 %1717, 3
  %1720 = add nuw nsw i64 %1718, %1719
  %1721 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %1720
  %1722 = and i32 %1711, 65535
  %1723 = mul nuw i32 %1722, 65537
  store i32 %1723, ptr %1721, align 4, !tbaa !77
  %1724 = getelementptr inbounds i8, ptr %1721, i64 16
  store i32 %1723, ptr %1724, align 4, !tbaa !77
  br label %1725

1725:                                             ; preds = %1654, %1662
  %1726 = add nuw nsw i64 %1655, 1
  %1727 = icmp eq i64 %1726, 4
  br i1 %1727, label %1652, label %1654, !llvm.loop !107

1728:                                             ; preds = %1652, %1799
  %1729 = phi i64 [ 0, %1652 ], [ %1800, %1799 ]
  %1730 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %1729
  %1731 = load i8, ptr %1730, align 1, !tbaa !77
  %1732 = zext i8 %1731 to i64
  %1733 = getelementptr inbounds [2 x [17 x i8]], ptr @x264_mb_partition_listX_table, i64 0, i64 1, i64 %1732
  %1734 = load i8, ptr %1733, align 1, !tbaa !77
  %1735 = icmp eq i8 %1734, 0
  br i1 %1735, label %1799, label %1736

1736:                                             ; preds = %1728
  %1737 = shl nuw nsw i64 %1729, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  %1738 = trunc i64 %1737 to i32
  call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef 1, i32 noundef %1738, i32 noundef 2, ptr noundef nonnull %8) #7
  %1739 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %1737
  %1740 = load i32, ptr %1739, align 16, !tbaa !93
  %1741 = sext i32 %1740 to i64
  %1742 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 %1741
  %1743 = load i16, ptr %1742, align 4, !tbaa !100
  %1744 = sext i16 %1743 to i32
  %1745 = load i16, ptr %8, align 4, !tbaa !100
  %1746 = sext i16 %1745 to i32
  %1747 = sub nsw i32 %1744, %1746
  %1748 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 %1741, i64 1
  %1749 = load i16, ptr %1748, align 2, !tbaa !100
  %1750 = sext i16 %1749 to i32
  %1751 = load i16, ptr %1653, align 2, !tbaa !100
  %1752 = sext i16 %1751 to i32
  %1753 = sub nsw i32 %1750, %1752
  %1754 = add nsw i32 %1740, -1
  %1755 = sext i32 %1754 to i64
  %1756 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 1, i64 %1755
  %1757 = add nsw i32 %1740, -8
  %1758 = sext i32 %1757 to i64
  %1759 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 1, i64 %1758
  %1760 = load i8, ptr %1756, align 1, !tbaa !77
  %1761 = zext i8 %1760 to i32
  %1762 = load i8, ptr %1759, align 1, !tbaa !77
  %1763 = zext i8 %1762 to i32
  %1764 = add nuw nsw i32 %1763, %1761
  %1765 = getelementptr inbounds i8, ptr %1756, i64 1
  %1766 = load i8, ptr %1765, align 1, !tbaa !77
  %1767 = zext i8 %1766 to i32
  %1768 = getelementptr inbounds i8, ptr %1759, i64 1
  %1769 = load i8, ptr %1768, align 1, !tbaa !77
  %1770 = zext i8 %1769 to i32
  %1771 = add nuw nsw i32 %1770, %1767
  %1772 = icmp ugt i32 %1764, 2
  %1773 = zext i1 %1772 to i32
  %1774 = icmp ugt i32 %1764, 32
  %1775 = zext i1 %1774 to i32
  %1776 = add nuw nsw i32 %1773, %1775
  %1777 = icmp ugt i32 %1771, 2
  %1778 = zext i1 %1777 to i32
  %1779 = icmp ugt i32 %1771, 32
  %1780 = zext i1 %1779 to i32
  %1781 = add nuw nsw i32 %1778, %1780
  %1782 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 0, i32 noundef %1747, i32 noundef %1776)
  %1783 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 1, i32 noundef %1753, i32 noundef %1781)
  %1784 = shl nuw nsw i32 %1783, 8
  %1785 = add nuw nsw i32 %1784, %1782
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  %1786 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %1737
  %1787 = load i8, ptr %1786, align 4, !tbaa !77
  %1788 = zext i8 %1787 to i64
  %1789 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %1737
  %1790 = load i8, ptr %1789, align 4, !tbaa !77
  %1791 = zext i8 %1790 to i64
  %1792 = add nuw nsw i64 %1788, 12
  %1793 = shl nuw nsw i64 %1791, 3
  %1794 = add nuw nsw i64 %1792, %1793
  %1795 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 1, i64 %1794
  %1796 = and i32 %1785, 65535
  %1797 = mul nuw i32 %1796, 65537
  store i32 %1797, ptr %1795, align 4, !tbaa !77
  %1798 = getelementptr inbounds i8, ptr %1795, i64 16
  store i32 %1797, ptr %1798, align 4, !tbaa !77
  br label %1799

1799:                                             ; preds = %1728, %1736
  %1800 = add nuw nsw i64 %1729, 1
  %1801 = icmp eq i64 %1800, 4
  br i1 %1801, label %2275, label %1728, !llvm.loop !108

1802:                                             ; preds = %344
  %1803 = sext i32 %25 to i64
  %1804 = getelementptr inbounds [19 x [2 x [2 x i8]]], ptr @x264_mb_type_list_table, i64 0, i64 %1803
  %1805 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  %1806 = load i32, ptr %1805, align 8, !tbaa !93
  %1807 = icmp sgt i32 %1806, 1
  br i1 %1807, label %1808, label %1906

1808:                                             ; preds = %1802
  %1809 = load i8, ptr %1804, align 4, !tbaa !77
  %1810 = icmp eq i8 %1809, 0
  br i1 %1810, label %1849, label %1811

1811:                                             ; preds = %1808
  %1812 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 11
  %1813 = load i8, ptr %1812, align 1, !tbaa !77
  %1814 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 4
  %1815 = load i8, ptr %1814, align 1, !tbaa !77
  %1816 = icmp sgt i8 %1813, 0
  br i1 %1816, label %1817, label %1822

1817:                                             ; preds = %1811
  %1818 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 11
  %1819 = load i8, ptr %1818, align 1, !tbaa !77
  %1820 = icmp eq i8 %1819, 0
  %1821 = zext i1 %1820 to i32
  br label %1822

1822:                                             ; preds = %1817, %1811
  %1823 = phi i32 [ 0, %1811 ], [ %1821, %1817 ]
  %1824 = icmp sgt i8 %1815, 0
  br i1 %1824, label %1825, label %1831

1825:                                             ; preds = %1822
  %1826 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 4
  %1827 = load i8, ptr %1826, align 1, !tbaa !77
  %1828 = icmp eq i8 %1827, 0
  %1829 = or disjoint i32 %1823, 2
  %1830 = select i1 %1828, i32 %1829, i32 %1823
  br label %1831

1831:                                             ; preds = %1825, %1822
  %1832 = phi i32 [ %1823, %1822 ], [ %1830, %1825 ]
  %1833 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %1834 = load i8, ptr %1833, align 1, !tbaa !77
  %1835 = icmp sgt i8 %1834, 0
  br i1 %1835, label %1836, label %1846

1836:                                             ; preds = %1831
  %1837 = zext nneg i8 %1834 to i32
  br label %1838

1838:                                             ; preds = %1838, %1836
  %1839 = phi i32 [ %1844, %1838 ], [ %1837, %1836 ]
  %1840 = phi i32 [ %1843, %1838 ], [ %1832, %1836 ]
  %1841 = add nuw nsw i32 %1840, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %1841, i32 noundef 1) #7
  %1842 = lshr i32 %1840, 2
  %1843 = add nuw nsw i32 %1842, 4
  %1844 = add nsw i32 %1839, -1
  %1845 = icmp sgt i32 %1839, 1
  br i1 %1845, label %1838, label %1846, !llvm.loop !99

1846:                                             ; preds = %1838, %1831
  %1847 = phi i32 [ %1832, %1831 ], [ %1843, %1838 ]
  %1848 = add nuw nsw i32 %1847, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %1848, i32 noundef 0) #7
  br label %1849

1849:                                             ; preds = %1846, %1808
  %1850 = getelementptr inbounds [2 x i8], ptr %1804, i64 0, i64 1
  %1851 = load i8, ptr %1850, align 1, !tbaa !77
  %1852 = icmp eq i8 %1851, 0
  br i1 %1852, label %1906, label %1853

1853:                                             ; preds = %1849
  %1854 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %1855 = load i32, ptr %1854, align 4, !tbaa !80
  %1856 = icmp eq i32 %1855, 16
  br i1 %1856, label %1906, label %1857

1857:                                             ; preds = %1853
  %1858 = icmp eq i32 %1855, 15
  %1859 = zext i1 %1858 to i32
  %1860 = lshr exact i32 8, %1859
  %1861 = zext nneg i32 %1860 to i64
  %1862 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %1861
  %1863 = load i32, ptr %1862, align 16, !tbaa !93
  %1864 = add nsw i32 %1863, -1
  %1865 = sext i32 %1864 to i64
  %1866 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 %1865
  %1867 = load i8, ptr %1866, align 1, !tbaa !77
  %1868 = add nsw i32 %1863, -8
  %1869 = sext i32 %1868 to i64
  %1870 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 %1869
  %1871 = load i8, ptr %1870, align 1, !tbaa !77
  %1872 = icmp sgt i8 %1867, 0
  br i1 %1872, label %1873, label %1878

1873:                                             ; preds = %1857
  %1874 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 %1865
  %1875 = load i8, ptr %1874, align 1, !tbaa !77
  %1876 = icmp eq i8 %1875, 0
  %1877 = zext i1 %1876 to i32
  br label %1878

1878:                                             ; preds = %1873, %1857
  %1879 = phi i32 [ 0, %1857 ], [ %1877, %1873 ]
  %1880 = icmp sgt i8 %1871, 0
  br i1 %1880, label %1881, label %1887

1881:                                             ; preds = %1878
  %1882 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 %1869
  %1883 = load i8, ptr %1882, align 1, !tbaa !77
  %1884 = icmp eq i8 %1883, 0
  %1885 = or disjoint i32 %1879, 2
  %1886 = select i1 %1884, i32 %1885, i32 %1879
  br label %1887

1887:                                             ; preds = %1881, %1878
  %1888 = phi i32 [ %1879, %1878 ], [ %1886, %1881 ]
  %1889 = sext i32 %1863 to i64
  %1890 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 %1889
  %1891 = load i8, ptr %1890, align 1, !tbaa !77
  %1892 = icmp sgt i8 %1891, 0
  br i1 %1892, label %1893, label %1903

1893:                                             ; preds = %1887
  %1894 = zext nneg i8 %1891 to i32
  br label %1895

1895:                                             ; preds = %1895, %1893
  %1896 = phi i32 [ %1901, %1895 ], [ %1894, %1893 ]
  %1897 = phi i32 [ %1900, %1895 ], [ %1888, %1893 ]
  %1898 = add nuw nsw i32 %1897, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %1898, i32 noundef 1) #7
  %1899 = lshr i32 %1897, 2
  %1900 = add nuw nsw i32 %1899, 4
  %1901 = add nsw i32 %1896, -1
  %1902 = icmp sgt i32 %1896, 1
  br i1 %1902, label %1895, label %1903, !llvm.loop !99

1903:                                             ; preds = %1895, %1887
  %1904 = phi i32 [ %1888, %1887 ], [ %1900, %1895 ]
  %1905 = add nuw nsw i32 %1904, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %1905, i32 noundef 0) #7
  br label %1906

1906:                                             ; preds = %1849, %1853, %1903, %1802
  %1907 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19, i64 1
  %1908 = load i32, ptr %1907, align 4, !tbaa !93
  %1909 = icmp sgt i32 %1908, 1
  br i1 %1909, label %1910, label %2009

1910:                                             ; preds = %1906
  %1911 = getelementptr inbounds [2 x i8], ptr %1804, i64 1
  %1912 = load i8, ptr %1911, align 2, !tbaa !77
  %1913 = icmp eq i8 %1912, 0
  br i1 %1913, label %1952, label %1914

1914:                                             ; preds = %1910
  %1915 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 11
  %1916 = load i8, ptr %1915, align 1, !tbaa !77
  %1917 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 4
  %1918 = load i8, ptr %1917, align 1, !tbaa !77
  %1919 = icmp sgt i8 %1916, 0
  br i1 %1919, label %1920, label %1925

1920:                                             ; preds = %1914
  %1921 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 11
  %1922 = load i8, ptr %1921, align 1, !tbaa !77
  %1923 = icmp eq i8 %1922, 0
  %1924 = zext i1 %1923 to i32
  br label %1925

1925:                                             ; preds = %1920, %1914
  %1926 = phi i32 [ 0, %1914 ], [ %1924, %1920 ]
  %1927 = icmp sgt i8 %1918, 0
  br i1 %1927, label %1928, label %1934

1928:                                             ; preds = %1925
  %1929 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 4
  %1930 = load i8, ptr %1929, align 1, !tbaa !77
  %1931 = icmp eq i8 %1930, 0
  %1932 = or disjoint i32 %1926, 2
  %1933 = select i1 %1931, i32 %1932, i32 %1926
  br label %1934

1934:                                             ; preds = %1928, %1925
  %1935 = phi i32 [ %1926, %1925 ], [ %1933, %1928 ]
  %1936 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 12
  %1937 = load i8, ptr %1936, align 1, !tbaa !77
  %1938 = icmp sgt i8 %1937, 0
  br i1 %1938, label %1939, label %1949

1939:                                             ; preds = %1934
  %1940 = zext nneg i8 %1937 to i32
  br label %1941

1941:                                             ; preds = %1941, %1939
  %1942 = phi i32 [ %1947, %1941 ], [ %1940, %1939 ]
  %1943 = phi i32 [ %1946, %1941 ], [ %1935, %1939 ]
  %1944 = add nuw nsw i32 %1943, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %1944, i32 noundef 1) #7
  %1945 = lshr i32 %1943, 2
  %1946 = add nuw nsw i32 %1945, 4
  %1947 = add nsw i32 %1942, -1
  %1948 = icmp sgt i32 %1942, 1
  br i1 %1948, label %1941, label %1949, !llvm.loop !99

1949:                                             ; preds = %1941, %1934
  %1950 = phi i32 [ %1935, %1934 ], [ %1946, %1941 ]
  %1951 = add nuw nsw i32 %1950, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %1951, i32 noundef 0) #7
  br label %1952

1952:                                             ; preds = %1949, %1910
  %1953 = getelementptr inbounds [2 x i8], ptr %1804, i64 1, i64 1
  %1954 = load i8, ptr %1953, align 1, !tbaa !77
  %1955 = icmp eq i8 %1954, 0
  br i1 %1955, label %2009, label %1956

1956:                                             ; preds = %1952
  %1957 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %1958 = load i32, ptr %1957, align 4, !tbaa !80
  %1959 = icmp eq i32 %1958, 16
  br i1 %1959, label %2009, label %1960

1960:                                             ; preds = %1956
  %1961 = icmp eq i32 %1958, 15
  %1962 = zext i1 %1961 to i32
  %1963 = lshr exact i32 8, %1962
  %1964 = zext nneg i32 %1963 to i64
  %1965 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %1964
  %1966 = load i32, ptr %1965, align 16, !tbaa !93
  %1967 = add nsw i32 %1966, -1
  %1968 = sext i32 %1967 to i64
  %1969 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 %1968
  %1970 = load i8, ptr %1969, align 1, !tbaa !77
  %1971 = add nsw i32 %1966, -8
  %1972 = sext i32 %1971 to i64
  %1973 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 %1972
  %1974 = load i8, ptr %1973, align 1, !tbaa !77
  %1975 = icmp sgt i8 %1970, 0
  br i1 %1975, label %1976, label %1981

1976:                                             ; preds = %1960
  %1977 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 %1968
  %1978 = load i8, ptr %1977, align 1, !tbaa !77
  %1979 = icmp eq i8 %1978, 0
  %1980 = zext i1 %1979 to i32
  br label %1981

1981:                                             ; preds = %1976, %1960
  %1982 = phi i32 [ 0, %1960 ], [ %1980, %1976 ]
  %1983 = icmp sgt i8 %1974, 0
  br i1 %1983, label %1984, label %1990

1984:                                             ; preds = %1981
  %1985 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 %1972
  %1986 = load i8, ptr %1985, align 1, !tbaa !77
  %1987 = icmp eq i8 %1986, 0
  %1988 = or disjoint i32 %1982, 2
  %1989 = select i1 %1987, i32 %1988, i32 %1982
  br label %1990

1990:                                             ; preds = %1984, %1981
  %1991 = phi i32 [ %1982, %1981 ], [ %1989, %1984 ]
  %1992 = sext i32 %1966 to i64
  %1993 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 %1992
  %1994 = load i8, ptr %1993, align 1, !tbaa !77
  %1995 = icmp sgt i8 %1994, 0
  br i1 %1995, label %1996, label %2006

1996:                                             ; preds = %1990
  %1997 = zext nneg i8 %1994 to i32
  br label %1998

1998:                                             ; preds = %1998, %1996
  %1999 = phi i32 [ %2004, %1998 ], [ %1997, %1996 ]
  %2000 = phi i32 [ %2003, %1998 ], [ %1991, %1996 ]
  %2001 = add nuw nsw i32 %2000, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %2001, i32 noundef 1) #7
  %2002 = lshr i32 %2000, 2
  %2003 = add nuw nsw i32 %2002, 4
  %2004 = add nsw i32 %1999, -1
  %2005 = icmp sgt i32 %1999, 1
  br i1 %2005, label %1998, label %2006, !llvm.loop !99

2006:                                             ; preds = %1998, %1990
  %2007 = phi i32 [ %1991, %1990 ], [ %2003, %1998 ]
  %2008 = add nuw nsw i32 %2007, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %2008, i32 noundef 0) #7
  br label %2009

2009:                                             ; preds = %1952, %1956, %2006, %1906
  %2010 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %2011 = getelementptr inbounds [2 x i16], ptr %6, i64 0, i64 1
  %2012 = getelementptr inbounds [2 x i16], ptr %5, i64 0, i64 1
  %2013 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1
  %2014 = getelementptr inbounds [2 x i16], ptr %4, i64 0, i64 1
  %2015 = getelementptr inbounds [2 x i16], ptr %3, i64 0, i64 1
  br label %2016

2016:                                             ; preds = %2009, %2272
  %2017 = phi i64 [ 0, %2009 ], [ %2273, %2272 ]
  %2018 = load i32, ptr %2010, align 4, !tbaa !80
  %2019 = getelementptr inbounds [2 x i8], ptr %1804, i64 %2017
  %2020 = load i8, ptr %2019, align 2, !tbaa !77
  %2021 = icmp eq i8 %2020, 0
  switch i32 %2018, label %2171 [
    i32 16, label %2022
    i32 14, label %2072
  ]

2022:                                             ; preds = %2016
  br i1 %2021, label %2272, label %2023

2023:                                             ; preds = %2022
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  %2024 = trunc i64 %2017 to i32
  call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef %2024, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %7) #7
  %2025 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %2017, i64 12
  %2026 = load i16, ptr %2025, align 4, !tbaa !100
  %2027 = sext i16 %2026 to i32
  %2028 = load i16, ptr %7, align 4, !tbaa !100
  %2029 = sext i16 %2028 to i32
  %2030 = sub nsw i32 %2027, %2029
  %2031 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %2017, i64 12, i64 1
  %2032 = load i16, ptr %2031, align 2, !tbaa !100
  %2033 = sext i16 %2032 to i32
  %2034 = load i16, ptr %2013, align 2, !tbaa !100
  %2035 = sext i16 %2034 to i32
  %2036 = sub nsw i32 %2033, %2035
  %2037 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %2017, i64 11
  %2038 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %2017, i64 4
  %2039 = load i8, ptr %2037, align 1, !tbaa !77
  %2040 = zext i8 %2039 to i32
  %2041 = load i8, ptr %2038, align 1, !tbaa !77
  %2042 = zext i8 %2041 to i32
  %2043 = add nuw nsw i32 %2042, %2040
  %2044 = getelementptr inbounds i8, ptr %2037, i64 1
  %2045 = load i8, ptr %2044, align 1, !tbaa !77
  %2046 = zext i8 %2045 to i32
  %2047 = getelementptr inbounds i8, ptr %2038, i64 1
  %2048 = load i8, ptr %2047, align 1, !tbaa !77
  %2049 = zext i8 %2048 to i32
  %2050 = add nuw nsw i32 %2049, %2046
  %2051 = icmp ugt i32 %2043, 2
  %2052 = zext i1 %2051 to i32
  %2053 = icmp ugt i32 %2043, 32
  %2054 = zext i1 %2053 to i32
  %2055 = add nuw nsw i32 %2052, %2054
  %2056 = icmp ugt i32 %2050, 2
  %2057 = zext i1 %2056 to i32
  %2058 = icmp ugt i32 %2050, 32
  %2059 = zext i1 %2058 to i32
  %2060 = add nuw nsw i32 %2057, %2059
  %2061 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 0, i32 noundef %2030, i32 noundef %2055)
  %2062 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 1, i32 noundef %2036, i32 noundef %2060)
  %2063 = shl nuw nsw i32 %2062, 8
  %2064 = add nuw nsw i32 %2063, %2061
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  %2065 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %2017, i64 12
  %2066 = and i32 %2064, 65535
  %2067 = zext nneg i32 %2066 to i64
  %2068 = mul nuw i64 %2067, 281479271743489
  store i64 %2068, ptr %2065, align 8, !tbaa !77
  %2069 = getelementptr inbounds i8, ptr %2065, i64 16
  store i64 %2068, ptr %2069, align 8, !tbaa !77
  %2070 = getelementptr inbounds i8, ptr %2065, i64 32
  store i64 %2068, ptr %2070, align 8, !tbaa !77
  %2071 = getelementptr inbounds i8, ptr %2065, i64 48
  store i64 %2068, ptr %2071, align 8, !tbaa !77
  br label %2272

2072:                                             ; preds = %2016
  br i1 %2021, label %2120, label %2073

2073:                                             ; preds = %2072
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  %2074 = trunc i64 %2017 to i32
  call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef %2074, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %6) #7
  %2075 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %2017, i64 12
  %2076 = load i16, ptr %2075, align 4, !tbaa !100
  %2077 = sext i16 %2076 to i32
  %2078 = load i16, ptr %6, align 4, !tbaa !100
  %2079 = sext i16 %2078 to i32
  %2080 = sub nsw i32 %2077, %2079
  %2081 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %2017, i64 12, i64 1
  %2082 = load i16, ptr %2081, align 2, !tbaa !100
  %2083 = sext i16 %2082 to i32
  %2084 = load i16, ptr %2011, align 2, !tbaa !100
  %2085 = sext i16 %2084 to i32
  %2086 = sub nsw i32 %2083, %2085
  %2087 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %2017, i64 11
  %2088 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %2017, i64 4
  %2089 = load i8, ptr %2087, align 1, !tbaa !77
  %2090 = zext i8 %2089 to i32
  %2091 = load i8, ptr %2088, align 1, !tbaa !77
  %2092 = zext i8 %2091 to i32
  %2093 = add nuw nsw i32 %2092, %2090
  %2094 = getelementptr inbounds i8, ptr %2087, i64 1
  %2095 = load i8, ptr %2094, align 1, !tbaa !77
  %2096 = zext i8 %2095 to i32
  %2097 = getelementptr inbounds i8, ptr %2088, i64 1
  %2098 = load i8, ptr %2097, align 1, !tbaa !77
  %2099 = zext i8 %2098 to i32
  %2100 = add nuw nsw i32 %2099, %2096
  %2101 = icmp ugt i32 %2093, 2
  %2102 = zext i1 %2101 to i32
  %2103 = icmp ugt i32 %2093, 32
  %2104 = zext i1 %2103 to i32
  %2105 = add nuw nsw i32 %2102, %2104
  %2106 = icmp ugt i32 %2100, 2
  %2107 = zext i1 %2106 to i32
  %2108 = icmp ugt i32 %2100, 32
  %2109 = zext i1 %2108 to i32
  %2110 = add nuw nsw i32 %2107, %2109
  %2111 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 0, i32 noundef %2080, i32 noundef %2105)
  %2112 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 1, i32 noundef %2086, i32 noundef %2110)
  %2113 = shl nuw nsw i32 %2112, 8
  %2114 = add nuw nsw i32 %2113, %2111
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  %2115 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %2017, i64 12
  %2116 = and i32 %2114, 65535
  %2117 = zext nneg i32 %2116 to i64
  %2118 = mul nuw i64 %2117, 281479271743489
  store i64 %2118, ptr %2115, align 8, !tbaa !77
  %2119 = getelementptr inbounds i8, ptr %2115, i64 16
  store i64 %2118, ptr %2119, align 8, !tbaa !77
  br label %2120

2120:                                             ; preds = %2073, %2072
  %2121 = getelementptr inbounds [2 x i8], ptr %1804, i64 %2017, i64 1
  %2122 = load i8, ptr %2121, align 1, !tbaa !77
  %2123 = icmp eq i8 %2122, 0
  br i1 %2123, label %2272, label %2124

2124:                                             ; preds = %2120
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  %2125 = trunc i64 %2017 to i32
  call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef %2125, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %5) #7
  %2126 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %2017, i64 28
  %2127 = load i16, ptr %2126, align 4, !tbaa !100
  %2128 = sext i16 %2127 to i32
  %2129 = load i16, ptr %5, align 4, !tbaa !100
  %2130 = sext i16 %2129 to i32
  %2131 = sub nsw i32 %2128, %2130
  %2132 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %2017, i64 28, i64 1
  %2133 = load i16, ptr %2132, align 2, !tbaa !100
  %2134 = sext i16 %2133 to i32
  %2135 = load i16, ptr %2012, align 2, !tbaa !100
  %2136 = sext i16 %2135 to i32
  %2137 = sub nsw i32 %2134, %2136
  %2138 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %2017, i64 27
  %2139 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %2017, i64 20
  %2140 = load i8, ptr %2138, align 1, !tbaa !77
  %2141 = zext i8 %2140 to i32
  %2142 = load i8, ptr %2139, align 1, !tbaa !77
  %2143 = zext i8 %2142 to i32
  %2144 = add nuw nsw i32 %2143, %2141
  %2145 = getelementptr inbounds i8, ptr %2138, i64 1
  %2146 = load i8, ptr %2145, align 1, !tbaa !77
  %2147 = zext i8 %2146 to i32
  %2148 = getelementptr inbounds i8, ptr %2139, i64 1
  %2149 = load i8, ptr %2148, align 1, !tbaa !77
  %2150 = zext i8 %2149 to i32
  %2151 = add nuw nsw i32 %2150, %2147
  %2152 = icmp ugt i32 %2144, 2
  %2153 = zext i1 %2152 to i32
  %2154 = icmp ugt i32 %2144, 32
  %2155 = zext i1 %2154 to i32
  %2156 = add nuw nsw i32 %2153, %2155
  %2157 = icmp ugt i32 %2151, 2
  %2158 = zext i1 %2157 to i32
  %2159 = icmp ugt i32 %2151, 32
  %2160 = zext i1 %2159 to i32
  %2161 = add nuw nsw i32 %2158, %2160
  %2162 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 0, i32 noundef %2131, i32 noundef %2156)
  %2163 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 1, i32 noundef %2137, i32 noundef %2161)
  %2164 = shl nuw nsw i32 %2163, 8
  %2165 = add nuw nsw i32 %2164, %2162
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  %2166 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %2017, i64 28
  %2167 = and i32 %2165, 65535
  %2168 = zext nneg i32 %2167 to i64
  %2169 = mul nuw i64 %2168, 281479271743489
  store i64 %2169, ptr %2166, align 8, !tbaa !77
  %2170 = getelementptr inbounds i8, ptr %2166, i64 16
  store i64 %2169, ptr %2170, align 8, !tbaa !77
  br label %2272

2171:                                             ; preds = %2016
  br i1 %2021, label %2220, label %2172

2172:                                             ; preds = %2171
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  %2173 = trunc i64 %2017 to i32
  call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef %2173, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %4) #7
  %2174 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %2017, i64 12
  %2175 = load i16, ptr %2174, align 4, !tbaa !100
  %2176 = sext i16 %2175 to i32
  %2177 = load i16, ptr %4, align 4, !tbaa !100
  %2178 = sext i16 %2177 to i32
  %2179 = sub nsw i32 %2176, %2178
  %2180 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %2017, i64 12, i64 1
  %2181 = load i16, ptr %2180, align 2, !tbaa !100
  %2182 = sext i16 %2181 to i32
  %2183 = load i16, ptr %2014, align 2, !tbaa !100
  %2184 = sext i16 %2183 to i32
  %2185 = sub nsw i32 %2182, %2184
  %2186 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %2017, i64 11
  %2187 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %2017, i64 4
  %2188 = load i8, ptr %2186, align 1, !tbaa !77
  %2189 = zext i8 %2188 to i32
  %2190 = load i8, ptr %2187, align 1, !tbaa !77
  %2191 = zext i8 %2190 to i32
  %2192 = add nuw nsw i32 %2191, %2189
  %2193 = getelementptr inbounds i8, ptr %2186, i64 1
  %2194 = load i8, ptr %2193, align 1, !tbaa !77
  %2195 = zext i8 %2194 to i32
  %2196 = getelementptr inbounds i8, ptr %2187, i64 1
  %2197 = load i8, ptr %2196, align 1, !tbaa !77
  %2198 = zext i8 %2197 to i32
  %2199 = add nuw nsw i32 %2198, %2195
  %2200 = icmp ugt i32 %2192, 2
  %2201 = zext i1 %2200 to i32
  %2202 = icmp ugt i32 %2192, 32
  %2203 = zext i1 %2202 to i32
  %2204 = add nuw nsw i32 %2201, %2203
  %2205 = icmp ugt i32 %2199, 2
  %2206 = zext i1 %2205 to i32
  %2207 = icmp ugt i32 %2199, 32
  %2208 = zext i1 %2207 to i32
  %2209 = add nuw nsw i32 %2206, %2208
  %2210 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 0, i32 noundef %2179, i32 noundef %2204)
  %2211 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 1, i32 noundef %2185, i32 noundef %2209)
  %2212 = shl nuw nsw i32 %2211, 8
  %2213 = add nuw nsw i32 %2212, %2210
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %2214 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %2017, i64 12
  %2215 = and i32 %2213, 65535
  %2216 = mul nuw i32 %2215, 65537
  store i32 %2216, ptr %2214, align 4, !tbaa !77
  %2217 = getelementptr inbounds i8, ptr %2214, i64 16
  store i32 %2216, ptr %2217, align 4, !tbaa !77
  %2218 = getelementptr inbounds i8, ptr %2214, i64 32
  store i32 %2216, ptr %2218, align 4, !tbaa !77
  %2219 = getelementptr inbounds i8, ptr %2214, i64 48
  store i32 %2216, ptr %2219, align 4, !tbaa !77
  br label %2220

2220:                                             ; preds = %2172, %2171
  %2221 = getelementptr inbounds [2 x i8], ptr %1804, i64 %2017, i64 1
  %2222 = load i8, ptr %2221, align 1, !tbaa !77
  %2223 = icmp eq i8 %2222, 0
  br i1 %2223, label %2272, label %2224

2224:                                             ; preds = %2220
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %2225 = trunc i64 %2017 to i32
  call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef %2225, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %3) #7
  %2226 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %2017, i64 14
  %2227 = load i16, ptr %2226, align 4, !tbaa !100
  %2228 = sext i16 %2227 to i32
  %2229 = load i16, ptr %3, align 4, !tbaa !100
  %2230 = sext i16 %2229 to i32
  %2231 = sub nsw i32 %2228, %2230
  %2232 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %2017, i64 14, i64 1
  %2233 = load i16, ptr %2232, align 2, !tbaa !100
  %2234 = sext i16 %2233 to i32
  %2235 = load i16, ptr %2015, align 2, !tbaa !100
  %2236 = sext i16 %2235 to i32
  %2237 = sub nsw i32 %2234, %2236
  %2238 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %2017, i64 13
  %2239 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %2017, i64 6
  %2240 = load i8, ptr %2238, align 1, !tbaa !77
  %2241 = zext i8 %2240 to i32
  %2242 = load i8, ptr %2239, align 1, !tbaa !77
  %2243 = zext i8 %2242 to i32
  %2244 = add nuw nsw i32 %2243, %2241
  %2245 = getelementptr inbounds i8, ptr %2238, i64 1
  %2246 = load i8, ptr %2245, align 1, !tbaa !77
  %2247 = zext i8 %2246 to i32
  %2248 = getelementptr inbounds i8, ptr %2239, i64 1
  %2249 = load i8, ptr %2248, align 1, !tbaa !77
  %2250 = zext i8 %2249 to i32
  %2251 = add nuw nsw i32 %2250, %2247
  %2252 = icmp ugt i32 %2244, 2
  %2253 = zext i1 %2252 to i32
  %2254 = icmp ugt i32 %2244, 32
  %2255 = zext i1 %2254 to i32
  %2256 = add nuw nsw i32 %2253, %2255
  %2257 = icmp ugt i32 %2251, 2
  %2258 = zext i1 %2257 to i32
  %2259 = icmp ugt i32 %2251, 32
  %2260 = zext i1 %2259 to i32
  %2261 = add nuw nsw i32 %2258, %2260
  %2262 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 0, i32 noundef %2231, i32 noundef %2256)
  %2263 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 1, i32 noundef %2237, i32 noundef %2261)
  %2264 = shl nuw nsw i32 %2263, 8
  %2265 = add nuw nsw i32 %2264, %2262
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %2266 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %2017, i64 14
  %2267 = and i32 %2265, 65535
  %2268 = mul nuw i32 %2267, 65537
  store i32 %2268, ptr %2266, align 4, !tbaa !77
  %2269 = getelementptr inbounds i8, ptr %2266, i64 16
  store i32 %2268, ptr %2269, align 4, !tbaa !77
  %2270 = getelementptr inbounds i8, ptr %2266, i64 32
  store i32 %2268, ptr %2270, align 4, !tbaa !77
  %2271 = getelementptr inbounds i8, ptr %2266, i64 48
  store i32 %2268, ptr %2271, align 4, !tbaa !77
  br label %2272

2272:                                             ; preds = %2023, %2022, %2220, %2224, %2120, %2124
  %2273 = add nuw nsw i64 %2017, 1
  %2274 = icmp eq i64 %2017, 0
  br i1 %2274, label %2016, label %2275, !llvm.loop !109

2275:                                             ; preds = %1799, %1510, %2272, %341, %337, %331, %344, %515, %683, %390
  %2276 = load ptr, ptr %26, align 8, !tbaa !68
  %2277 = load ptr, ptr %28, align 16, !tbaa !69
  %2278 = ptrtoint ptr %2276 to i64
  %2279 = ptrtoint ptr %2277 to i64
  %2280 = sub i64 %2278, %2279
  %2281 = load i32, ptr %33, align 4, !tbaa !70
  %2282 = load i32, ptr %35, align 8, !tbaa !71
  %2283 = trunc i64 %2280 to i32
  %2284 = add i32 %2281, %2283
  %2285 = shl i32 %2284, 3
  %2286 = add i32 %2285, %2282
  %2287 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57
  %2288 = load i32, ptr %2287, align 8, !tbaa !81
  %2289 = add i32 %2288, %40
  %2290 = add i32 %2289, %2286
  store i32 %2290, ptr %2287, align 8, !tbaa !81
  br i1 %231, label %2351, label %2291

2291:                                             ; preds = %2275
  %2292 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %2293 = load i32, ptr %2292, align 8, !tbaa !110
  %2294 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 14
  %2295 = load i32, ptr %2294, align 4, !tbaa !111
  %2296 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 13
  %2297 = load i32, ptr %2296, align 16, !tbaa !112
  %2298 = shl i32 %2295, 30
  %2299 = ashr i32 %2298, 31
  %2300 = add nsw i32 %2299, 76
  %2301 = lshr i32 %2297, 1
  %2302 = and i32 %2301, 2
  %2303 = sub nuw nsw i32 %2300, %2302
  %2304 = and i32 %2293, 1
  call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %2303, i32 noundef %2304) #7
  %2305 = lshr i32 %2297, 2
  %2306 = and i32 %2305, 2
  %2307 = or disjoint i32 %2304, %2306
  %2308 = sub nuw nsw i32 76, %2307
  %2309 = lshr i32 %2293, 1
  %2310 = and i32 %2309, 1
  call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %2308, i32 noundef %2310) #7
  %2311 = shl i32 %2295, 28
  %2312 = ashr i32 %2311, 31
  %2313 = shl i32 %2293, 1
  %2314 = and i32 %2313, 2
  %2315 = sub nsw i32 %2312, %2314
  %2316 = add nsw i32 %2315, 76
  %2317 = lshr i32 %2293, 2
  %2318 = and i32 %2317, 1
  call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %2316, i32 noundef %2318) #7
  %2319 = and i32 %2293, 2
  %2320 = or disjoint i32 %2319, %2318
  %2321 = sub nuw nsw i32 76, %2320
  %2322 = lshr i32 %2293, 3
  %2323 = and i32 %2322, 1
  call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %2321, i32 noundef %2323) #7
  %2324 = load i32, ptr %2294, align 4, !tbaa !111
  %2325 = and i32 %2324, 48
  %2326 = load i32, ptr %2296, align 16, !tbaa !112
  %2327 = and i32 %2326, 48
  %2328 = icmp ne i32 %2325, 0
  %2329 = icmp ne i32 %2324, -1
  %2330 = and i1 %2329, %2328
  %2331 = zext i1 %2330 to i32
  %2332 = icmp eq i32 %2327, 0
  %2333 = icmp eq i32 %2326, -1
  %2334 = or disjoint i32 %2331, 2
  %2335 = or i1 %2333, %2332
  %2336 = select i1 %2335, i32 %2331, i32 %2334
  %2337 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  %2338 = load i32, ptr %2337, align 4, !tbaa !113
  %2339 = icmp eq i32 %2338, 0
  %2340 = add nuw nsw i32 %2336, 77
  br i1 %2339, label %2341, label %2342

2341:                                             ; preds = %2291
  call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %2340, i32 noundef 0) #7
  br label %2351

2342:                                             ; preds = %2291
  call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %2340, i32 noundef 1) #7
  %2343 = icmp eq i32 %2325, 32
  %2344 = select i1 %2343, i32 5, i32 4
  %2345 = icmp eq i32 %2327, 32
  %2346 = or disjoint i32 %2344, 2
  %2347 = select i1 %2345, i32 %2346, i32 %2344
  %2348 = add nuw nsw i32 %2347, 77
  %2349 = load i32, ptr %2337, align 4, !tbaa !113
  %2350 = ashr i32 %2349, 1
  call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %2348, i32 noundef %2350) #7
  br label %2351

2351:                                             ; preds = %2342, %2341, %2275
  %2352 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  %2353 = load ptr, ptr %2352, align 16, !tbaa !88
  %2354 = getelementptr inbounds %struct.x264_pps_t, ptr %2353, i64 0, i32 15
  %2355 = load i32, ptr %2354, align 4, !tbaa !89
  %2356 = icmp eq i32 %2355, 0
  br i1 %2356, label %2370, label %2357

2357:                                             ; preds = %2351
  %2358 = load i32, ptr %24, align 8, !tbaa !67
  %2359 = icmp eq i32 %2358, 5
  br i1 %2359, label %2365, label %2360

2360:                                             ; preds = %2357
  %2361 = sext i32 %2358 to i64
  %2362 = getelementptr inbounds [19 x i8], ptr @x264_mb_transform_8x8_allowed.partition_tab, i64 0, i64 %2361
  %2363 = load i8, ptr %2362, align 1, !tbaa !77
  %2364 = zext i8 %2363 to i32
  br label %2370

2365:                                             ; preds = %2357
  %2366 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55
  %2367 = load i32, ptr %2366, align 16, !tbaa !77
  %2368 = icmp eq i32 %2367, 50529027
  %2369 = zext i1 %2368 to i32
  br label %2370

2370:                                             ; preds = %2351, %2360, %2365
  %2371 = phi i32 [ %2364, %2360 ], [ %2369, %2365 ], [ 0, %2351 ]
  %2372 = icmp eq i32 %2371, 0
  br i1 %2372, label %2383, label %2373

2373:                                             ; preds = %2370
  %2374 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %2375 = load i32, ptr %2374, align 8, !tbaa !110
  %2376 = icmp eq i32 %2375, 0
  br i1 %2376, label %2383, label %2377

2377:                                             ; preds = %2373
  %2378 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 11
  %2379 = load i32, ptr %2378, align 8, !tbaa !91
  %2380 = add nsw i32 %2379, 399
  %2381 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  %2382 = load i32, ptr %2381, align 4, !tbaa !92
  call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %2380, i32 noundef %2382) #7
  br label %2383

2383:                                             ; preds = %2377, %2373, %2370
  %2384 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %2385 = load i32, ptr %2384, align 8, !tbaa !110
  %2386 = icmp sgt i32 %2385, 0
  br i1 %2386, label %2392, label %2387

2387:                                             ; preds = %2383
  %2388 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  %2389 = load i32, ptr %2388, align 4, !tbaa !113
  %2390 = icmp sgt i32 %2389, 0
  %2391 = select i1 %2390, i1 true, i1 %231
  br i1 %2391, label %2392, label %2637

2392:                                             ; preds = %2387, %2383
  %2393 = zext i1 %232 to i32
  %2394 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 68
  %2395 = load i32, ptr %2394, align 16, !tbaa !114
  %2396 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 70
  %2397 = load i32, ptr %2396, align 8, !tbaa !115
  %2398 = sub nsw i32 %2395, %2397
  %2399 = load i32, ptr %24, align 8, !tbaa !67
  %2400 = icmp eq i32 %2399, 2
  br i1 %2400, label %2401, label %2411

2401:                                             ; preds = %2392
  %2402 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 41
  %2403 = load ptr, ptr %2402, align 16, !tbaa !116
  %2404 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %2405 = load i32, ptr %2404, align 8, !tbaa !75
  %2406 = sext i32 %2405 to i64
  %2407 = getelementptr inbounds i16, ptr %2403, i64 %2406
  %2408 = load i16, ptr %2407, align 2, !tbaa !100
  %2409 = icmp eq i16 %2408, 0
  br i1 %2409, label %2410, label %2411

2410:                                             ; preds = %2401
  store i32 %2397, ptr %2394, align 16, !tbaa !114
  br label %2411

2411:                                             ; preds = %2410, %2401, %2392
  %2412 = phi i32 [ %2398, %2401 ], [ 0, %2410 ], [ %2398, %2392 ]
  %2413 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 71
  %2414 = load i32, ptr %2413, align 4, !tbaa !117
  %2415 = icmp eq i32 %2414, 0
  br i1 %2415, label %2426, label %2416

2416:                                             ; preds = %2411
  %2417 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 41
  %2418 = load ptr, ptr %2417, align 16, !tbaa !116
  %2419 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 33
  %2420 = load i32, ptr %2419, align 4, !tbaa !118
  %2421 = sext i32 %2420 to i64
  %2422 = getelementptr inbounds i16, ptr %2418, i64 %2421
  %2423 = load i16, ptr %2422, align 2, !tbaa !100
  %2424 = icmp ne i16 %2423, 0
  %2425 = zext i1 %2424 to i32
  br label %2426

2426:                                             ; preds = %2416, %2411
  %2427 = phi i32 [ 0, %2411 ], [ %2425, %2416 ]
  %2428 = icmp eq i32 %2412, 0
  br i1 %2428, label %2448, label %2429

2429:                                             ; preds = %2426
  %2430 = icmp slt i32 %2412, 1
  %2431 = mul nsw i32 %2412, -2
  %2432 = shl nuw nsw i32 %2412, 1
  %2433 = add nsw i32 %2432, -1
  %2434 = select i1 %2430, i32 %2431, i32 %2433
  %2435 = icmp sgt i32 %2434, 50
  %2436 = icmp ne i32 %2434, 52
  %2437 = and i1 %2435, %2436
  %2438 = sub nsw i32 103, %2434
  %2439 = select i1 %2437, i32 %2438, i32 %2434
  br label %2440

2440:                                             ; preds = %2440, %2429
  %2441 = phi i32 [ %2427, %2429 ], [ %2445, %2440 ]
  %2442 = phi i32 [ %2439, %2429 ], [ %2446, %2440 ]
  %2443 = add nuw nsw i32 %2441, 60
  call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %2443, i32 noundef 1) #7
  %2444 = lshr i32 %2441, 1
  %2445 = add nuw nsw i32 %2444, 2
  %2446 = add nsw i32 %2442, -1
  %2447 = icmp eq i32 %2446, 0
  br i1 %2447, label %2448, label %2440, !llvm.loop !119

2448:                                             ; preds = %2440, %2426
  %2449 = phi i32 [ %2427, %2426 ], [ %2445, %2440 ]
  %2450 = add nuw nsw i32 %2449, 60
  call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %2450, i32 noundef 0) #7
  br i1 %231, label %2451, label %2498

2451:                                             ; preds = %2448
  %2452 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 14
  %2453 = load i32, ptr %2452, align 4, !tbaa !111
  %2454 = lshr i32 %2453, 8
  %2455 = and i32 %2454, 1
  %2456 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 13
  %2457 = load i32, ptr %2456, align 16, !tbaa !112
  %2458 = lshr i32 %2457, 7
  %2459 = and i32 %2458, 2
  %2460 = or disjoint i32 %2459, 85
  %2461 = add nuw nsw i32 %2460, %2455
  %2462 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 44
  %2463 = load i8, ptr %2462, align 1, !tbaa !77
  %2464 = icmp eq i8 %2463, 0
  br i1 %2464, label %2467, label %2465

2465:                                             ; preds = %2451
  call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %2461, i32 noundef 1) #7
  %2466 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54
  call fastcc void @block_residual_write_cabac(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %2466)
  br label %2468

2467:                                             ; preds = %2451
  call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %2461, i32 noundef 0) #7
  br label %2468

2468:                                             ; preds = %2467, %2465
  %2469 = load i32, ptr %2384, align 8, !tbaa !110
  %2470 = icmp eq i32 %2469, 0
  br i1 %2470, label %2554, label %2471

2471:                                             ; preds = %2468, %2495
  %2472 = phi i64 [ %2496, %2495 ], [ 0, %2468 ]
  %2473 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %2472
  %2474 = load i32, ptr %2473, align 4, !tbaa !93
  %2475 = add nsw i32 %2474, -1
  %2476 = sext i32 %2475 to i64
  %2477 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %2476
  %2478 = load i8, ptr %2477, align 1, !tbaa !77
  %2479 = add nsw i32 %2474, -8
  %2480 = sext i32 %2479 to i64
  %2481 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %2480
  %2482 = load i8, ptr %2481, align 1, !tbaa !77
  %2483 = icmp eq i8 %2482, 0
  %2484 = select i1 %2483, i32 89, i32 91
  %2485 = icmp ne i8 %2478, 0
  %2486 = zext i1 %2485 to i32
  %2487 = add nuw nsw i32 %2484, %2486
  %2488 = sext i32 %2474 to i64
  %2489 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %2488
  %2490 = load i8, ptr %2489, align 1, !tbaa !77
  %2491 = icmp eq i8 %2490, 0
  br i1 %2491, label %2494, label %2492

2492:                                             ; preds = %2471
  call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %2487, i32 noundef 1) #7
  %2493 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %2472, i64 1
  call fastcc void @block_residual_write_cabac(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull %2493)
  br label %2495

2494:                                             ; preds = %2471
  call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %2487, i32 noundef 0) #7
  br label %2495

2495:                                             ; preds = %2494, %2492
  %2496 = add nuw nsw i64 %2472, 1
  %2497 = icmp eq i64 %2496, 16
  br i1 %2497, label %2554, label %2471, !llvm.loop !120

2498:                                             ; preds = %2448
  %2499 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  %2500 = load i32, ptr %2499, align 4, !tbaa !92
  %2501 = icmp eq i32 %2500, 0
  br i1 %2501, label %2502, label %2504

2502:                                             ; preds = %2498
  %2503 = select i1 %232, i32 255, i32 127
  br label %2516

2504:                                             ; preds = %2498, %2513
  %2505 = phi i64 [ %2514, %2513 ], [ 0, %2498 ]
  %2506 = load i32, ptr %2384, align 8, !tbaa !110
  %2507 = trunc i64 %2505 to i32
  %2508 = shl nuw nsw i32 1, %2507
  %2509 = and i32 %2506, %2508
  %2510 = icmp eq i32 %2509, 0
  br i1 %2510, label %2513, label %2511

2511:                                             ; preds = %2504
  %2512 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2, i64 %2505
  call fastcc void @block_residual_write_cabac(ptr noundef %0, ptr noundef %1, i32 noundef 5, ptr noundef nonnull %2512)
  br label %2513

2513:                                             ; preds = %2504, %2511
  %2514 = add nuw nsw i64 %2505, 1
  %2515 = icmp eq i64 %2514, 4
  br i1 %2515, label %2554, label %2504, !llvm.loop !121

2516:                                             ; preds = %2502, %2551
  %2517 = phi i64 [ 0, %2502 ], [ %2552, %2551 ]
  %2518 = load i32, ptr %2384, align 8, !tbaa !110
  %2519 = trunc i64 %2517 to i32
  %2520 = lshr i32 %2519, 2
  %2521 = shl nuw nsw i32 1, %2520
  %2522 = and i32 %2518, %2521
  %2523 = icmp eq i32 %2522, 0
  br i1 %2523, label %2551, label %2524

2524:                                             ; preds = %2516
  %2525 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %2517
  %2526 = load i32, ptr %2525, align 4, !tbaa !93
  %2527 = add nsw i32 %2526, -1
  %2528 = sext i32 %2527 to i64
  %2529 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %2528
  %2530 = load i8, ptr %2529, align 1, !tbaa !77
  %2531 = zext i8 %2530 to i32
  %2532 = add nsw i32 %2526, -8
  %2533 = sext i32 %2532 to i64
  %2534 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %2533
  %2535 = load i8, ptr %2534, align 1, !tbaa !77
  %2536 = zext i8 %2535 to i32
  %2537 = and i32 %2503, %2531
  %2538 = and i32 %2503, %2536
  %2539 = icmp eq i32 %2538, 0
  %2540 = select i1 %2539, i32 93, i32 95
  %2541 = icmp ne i32 %2537, 0
  %2542 = zext i1 %2541 to i32
  %2543 = add nuw nsw i32 %2540, %2542
  %2544 = sext i32 %2526 to i64
  %2545 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %2544
  %2546 = load i8, ptr %2545, align 1, !tbaa !77
  %2547 = icmp eq i8 %2546, 0
  br i1 %2547, label %2550, label %2548

2548:                                             ; preds = %2524
  call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %2543, i32 noundef 1) #7
  %2549 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %2517
  call fastcc void @block_residual_write_cabac(ptr noundef %0, ptr noundef %1, i32 noundef 2, ptr noundef nonnull %2549)
  br label %2551

2550:                                             ; preds = %2524
  call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %2543, i32 noundef 0) #7
  br label %2551

2551:                                             ; preds = %2548, %2550, %2516
  %2552 = add nuw nsw i64 %2517, 1
  %2553 = icmp eq i64 %2552, 16
  br i1 %2553, label %2554, label %2516, !llvm.loop !122

2554:                                             ; preds = %2513, %2551, %2495, %2468
  %2555 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  %2556 = load i32, ptr %2555, align 4, !tbaa !113
  %2557 = icmp eq i32 %2556, 0
  br i1 %2557, label %2637, label %2558

2558:                                             ; preds = %2554
  %2559 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 14
  %2560 = load i32, ptr %2559, align 4, !tbaa !111
  %2561 = icmp eq i32 %2560, -1
  %2562 = lshr i32 %2560, 9
  %2563 = and i32 %2562, 1
  %2564 = select i1 %2561, i32 %2393, i32 %2563
  %2565 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 13
  %2566 = load i32, ptr %2565, align 16, !tbaa !112
  %2567 = icmp eq i32 %2566, -1
  %2568 = lshr i32 %2566, 9
  %2569 = and i32 %2568, 1
  %2570 = select i1 %2567, i32 %2393, i32 %2569
  %2571 = shl nuw nsw i32 %2570, 1
  %2572 = add nuw nsw i32 %2564, 97
  %2573 = add nuw nsw i32 %2572, %2571
  %2574 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 46
  %2575 = load i8, ptr %2574, align 1, !tbaa !77
  %2576 = icmp eq i8 %2575, 0
  br i1 %2576, label %2579, label %2577

2577:                                             ; preds = %2558
  call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %2573, i32 noundef 1) #7
  %2578 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 1
  call fastcc void @block_residual_write_cabac(ptr noundef %0, ptr noundef %1, i32 noundef 3, ptr noundef nonnull %2578)
  br label %2580

2579:                                             ; preds = %2558
  call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %2573, i32 noundef 0) #7
  br label %2580

2580:                                             ; preds = %2579, %2577
  %2581 = load i32, ptr %2559, align 4, !tbaa !111
  %2582 = icmp eq i32 %2581, -1
  %2583 = lshr i32 %2581, 10
  %2584 = and i32 %2583, 1
  %2585 = select i1 %2582, i32 %2393, i32 %2584
  %2586 = load i32, ptr %2565, align 16, !tbaa !112
  %2587 = icmp eq i32 %2586, -1
  %2588 = lshr i32 %2586, 10
  %2589 = and i32 %2588, 1
  %2590 = select i1 %2587, i32 %2393, i32 %2589
  %2591 = shl nuw nsw i32 %2590, 1
  %2592 = add nuw nsw i32 %2585, 97
  %2593 = add nuw nsw i32 %2592, %2591
  %2594 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 47
  %2595 = load i8, ptr %2594, align 1, !tbaa !77
  %2596 = icmp eq i8 %2595, 0
  br i1 %2596, label %2599, label %2597

2597:                                             ; preds = %2580
  call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %2593, i32 noundef 1) #7
  %2598 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 1, i64 1
  call fastcc void @block_residual_write_cabac(ptr noundef %0, ptr noundef %1, i32 noundef 3, ptr noundef nonnull %2598)
  br label %2600

2599:                                             ; preds = %2580
  call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %2593, i32 noundef 0) #7
  br label %2600

2600:                                             ; preds = %2599, %2597
  %2601 = load i32, ptr %2555, align 4, !tbaa !113
  %2602 = and i32 %2601, 2
  %2603 = icmp eq i32 %2602, 0
  br i1 %2603, label %2637, label %2604

2604:                                             ; preds = %2600
  %2605 = select i1 %232, i32 255, i32 127
  br label %2606

2606:                                             ; preds = %2604, %2634
  %2607 = phi i64 [ 16, %2604 ], [ %2635, %2634 ]
  %2608 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %2607
  %2609 = load i32, ptr %2608, align 4, !tbaa !93
  %2610 = add nsw i32 %2609, -1
  %2611 = sext i32 %2610 to i64
  %2612 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %2611
  %2613 = load i8, ptr %2612, align 1, !tbaa !77
  %2614 = zext i8 %2613 to i32
  %2615 = add nsw i32 %2609, -8
  %2616 = sext i32 %2615 to i64
  %2617 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %2616
  %2618 = load i8, ptr %2617, align 1, !tbaa !77
  %2619 = zext i8 %2618 to i32
  %2620 = and i32 %2605, %2614
  %2621 = and i32 %2605, %2619
  %2622 = icmp eq i32 %2621, 0
  %2623 = select i1 %2622, i32 101, i32 103
  %2624 = icmp ne i32 %2620, 0
  %2625 = zext i1 %2624 to i32
  %2626 = add nuw nsw i32 %2623, %2625
  %2627 = sext i32 %2609 to i64
  %2628 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %2627
  %2629 = load i8, ptr %2628, align 1, !tbaa !77
  %2630 = icmp eq i8 %2629, 0
  br i1 %2630, label %2633, label %2631

2631:                                             ; preds = %2606
  call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %2626, i32 noundef 1) #7
  %2632 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %2607, i64 1
  call fastcc void @block_residual_write_cabac(ptr noundef %0, ptr noundef %1, i32 noundef 4, ptr noundef nonnull %2632)
  br label %2634

2633:                                             ; preds = %2606
  call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %2626, i32 noundef 0) #7
  br label %2634

2634:                                             ; preds = %2633, %2631
  %2635 = add nuw nsw i64 %2607, 1
  %2636 = icmp eq i64 %2635, 24
  br i1 %2636, label %2637, label %2606, !llvm.loop !123

2637:                                             ; preds = %2634, %2554, %2600, %2387
  %2638 = load ptr, ptr %26, align 8, !tbaa !68
  %2639 = load ptr, ptr %28, align 16, !tbaa !69
  %2640 = ptrtoint ptr %2638 to i64
  %2641 = ptrtoint ptr %2639 to i64
  %2642 = sub i64 %2640, %2641
  %2643 = load i32, ptr %33, align 4, !tbaa !70
  %2644 = load i32, ptr %35, align 8, !tbaa !71
  %2645 = trunc i64 %2642 to i32
  %2646 = add i32 %2643, %2645
  %2647 = shl i32 %2646, 3
  %2648 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 1
  %2649 = load i32, ptr %2648, align 4, !tbaa !86
  %2650 = sub i32 %2644, %2286
  %2651 = add i32 %2650, %2649
  %2652 = add i32 %2651, %2647
  store i32 %2652, ptr %2648, align 4, !tbaa !86
  br label %2653

2653:                                             ; preds = %2637, %201
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @x264_cabac_encode_init_core(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @block_residual_write_cabac(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [64 x i32], align 16
  %6 = alloca [64 x i32], align 16
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %8 = load i32, ptr %7, align 4, !tbaa !79
  %9 = sext i32 %8 to i64
  %10 = zext nneg i32 %2 to i64
  %11 = getelementptr inbounds [2 x [6 x i16]], ptr @significant_coeff_flag_offset, i64 0, i64 %9, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !100
  %13 = zext i16 %12 to i32
  %14 = getelementptr inbounds [2 x [6 x i16]], ptr @last_coeff_flag_offset, i64 0, i64 %9, i64 %10
  %15 = load i16, ptr %14, align 2, !tbaa !100
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds [6 x i16], ptr @coeff_abs_level_m1_offset, i64 0, i64 %10
  %18 = load i16, ptr %17, align 2, !tbaa !100
  %19 = zext i16 %18 to i32
  %20 = getelementptr inbounds [2 x [63 x i8]], ptr @significant_coeff_flag_offset_8x8, i64 0, i64 %9
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #7
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 11, i64 %10
  %22 = load ptr, ptr %21, align 8, !tbaa !82
  %23 = tail call i32 %22(ptr noundef %3) #7
  %24 = icmp eq i32 %2, 5
  br i1 %24, label %25, label %75

25:                                               ; preds = %4
  %26 = zext i32 %23 to i64
  br label %27

27:                                               ; preds = %25, %58
  %28 = phi i64 [ 0, %25 ], [ %61, %58 ]
  %29 = phi i32 [ 0, %25 ], [ %60, %58 ]
  %30 = getelementptr inbounds i16, ptr %3, i64 %28
  %31 = load i16, ptr %30, align 2, !tbaa !100
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %27
  %34 = tail call i16 @llvm.abs.i16(i16 %31, i1 false)
  %35 = zext i16 %34 to i32
  %36 = add nsw i32 %35, -1
  %37 = sext i32 %29 to i64
  %38 = getelementptr inbounds [64 x i32], ptr %5, i64 0, i64 %37
  store i32 %36, ptr %38, align 4, !tbaa !93
  %39 = lshr i16 %31, 15
  %40 = zext nneg i16 %39 to i32
  %41 = getelementptr inbounds [64 x i32], ptr %6, i64 0, i64 %37
  store i32 %40, ptr %41, align 4, !tbaa !93
  %42 = add nsw i32 %29, 1
  %43 = getelementptr inbounds i8, ptr %20, i64 %28
  %44 = load i8, ptr %43, align 1, !tbaa !77
  %45 = zext i8 %44 to i32
  %46 = add nuw nsw i32 %45, %13
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %46, i32 noundef 1) #7
  %47 = icmp eq i64 %28, %26
  %48 = getelementptr inbounds [63 x i8], ptr @last_coeff_flag_offset_8x8, i64 0, i64 %28
  %49 = load i8, ptr %48, align 1, !tbaa !77
  %50 = zext i8 %49 to i32
  %51 = add nuw nsw i32 %50, %16
  br i1 %47, label %52, label %58

52:                                               ; preds = %33
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %51, i32 noundef 1) #7
  br label %124

53:                                               ; preds = %27
  %54 = getelementptr inbounds i8, ptr %20, i64 %28
  %55 = load i8, ptr %54, align 1, !tbaa !77
  %56 = zext i8 %55 to i32
  %57 = add nuw nsw i32 %56, %13
  br label %58

58:                                               ; preds = %33, %53
  %59 = phi i32 [ %57, %53 ], [ %51, %33 ]
  %60 = phi i32 [ %29, %53 ], [ %42, %33 ]
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %59, i32 noundef 0) #7
  %61 = add nuw nsw i64 %28, 1
  %62 = icmp eq i64 %61, 63
  br i1 %62, label %63, label %27, !llvm.loop !124

63:                                               ; preds = %58
  %64 = getelementptr inbounds i16, ptr %3, i64 63
  %65 = load i16, ptr %64, align 2, !tbaa !100
  %66 = tail call i16 @llvm.abs.i16(i16 %65, i1 false)
  %67 = zext i16 %66 to i32
  %68 = add nsw i32 %67, -1
  %69 = sext i32 %60 to i64
  %70 = getelementptr inbounds [64 x i32], ptr %5, i64 0, i64 %69
  store i32 %68, ptr %70, align 4, !tbaa !93
  %71 = lshr i16 %65, 15
  %72 = zext nneg i16 %71 to i32
  %73 = getelementptr inbounds [64 x i32], ptr %6, i64 0, i64 %69
  store i32 %72, ptr %73, align 4, !tbaa !93
  %74 = add nsw i32 %60, 1
  br label %124

75:                                               ; preds = %4
  %76 = getelementptr inbounds [5 x i8], ptr @count_cat_m1, i64 0, i64 %10
  %77 = load i8, ptr %76, align 1, !tbaa !77
  %78 = zext i16 %12 to i64
  %79 = zext i32 %23 to i64
  %80 = zext i8 %77 to i64
  br label %81

81:                                               ; preds = %103, %75
  %82 = phi i64 [ %109, %103 ], [ 0, %75 ]
  %83 = phi i32 [ %105, %103 ], [ 0, %75 ]
  %84 = getelementptr inbounds i16, ptr %3, i64 %82
  %85 = load i16, ptr %84, align 2, !tbaa !100
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %103, label %87

87:                                               ; preds = %81
  %88 = tail call i16 @llvm.abs.i16(i16 %85, i1 false)
  %89 = zext i16 %88 to i32
  %90 = add nsw i32 %89, -1
  %91 = sext i32 %83 to i64
  %92 = getelementptr inbounds [64 x i32], ptr %5, i64 0, i64 %91
  store i32 %90, ptr %92, align 4, !tbaa !93
  %93 = lshr i16 %85, 15
  %94 = zext nneg i16 %93 to i32
  %95 = getelementptr inbounds [64 x i32], ptr %6, i64 0, i64 %91
  store i32 %94, ptr %95, align 4, !tbaa !93
  %96 = add nsw i32 %83, 1
  %97 = add nuw nsw i64 %82, %78
  %98 = trunc i64 %97 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %98, i32 noundef 1) #7
  %99 = icmp eq i64 %82, %79
  br i1 %99, label %100, label %103

100:                                              ; preds = %87
  %101 = trunc i64 %82 to i32
  %102 = add nuw nsw i32 %101, %16
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %102, i32 noundef 1) #7
  br label %124

103:                                              ; preds = %81, %87
  %104 = phi i16 [ %15, %87 ], [ %12, %81 ]
  %105 = phi i32 [ %96, %87 ], [ %83, %81 ]
  %106 = zext i16 %104 to i64
  %107 = add nuw nsw i64 %82, %106
  %108 = trunc i64 %107 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %108, i32 noundef 0) #7
  %109 = add nuw nsw i64 %82, 1
  %110 = icmp eq i64 %109, %80
  br i1 %110, label %111, label %81, !llvm.loop !125

111:                                              ; preds = %103
  %112 = and i64 %109, 4294967295
  %113 = getelementptr inbounds i16, ptr %3, i64 %112
  %114 = load i16, ptr %113, align 2, !tbaa !100
  %115 = tail call i16 @llvm.abs.i16(i16 %114, i1 false)
  %116 = zext i16 %115 to i32
  %117 = add nsw i32 %116, -1
  %118 = sext i32 %105 to i64
  %119 = getelementptr inbounds [64 x i32], ptr %5, i64 0, i64 %118
  store i32 %117, ptr %119, align 4, !tbaa !93
  %120 = lshr i16 %114, 15
  %121 = zext nneg i16 %120 to i32
  %122 = getelementptr inbounds [64 x i32], ptr %6, i64 0, i64 %118
  store i32 %121, ptr %122, align 4, !tbaa !93
  %123 = add nsw i32 %105, 1
  br label %124

124:                                              ; preds = %100, %111, %52, %63
  %125 = phi i32 [ %42, %52 ], [ %74, %63 ], [ %96, %100 ], [ %123, %111 ]
  %126 = sext i32 %125 to i64
  br label %127

127:                                              ; preds = %157, %124
  %128 = phi i64 [ %130, %157 ], [ %126, %124 ]
  %129 = phi i64 [ %161, %157 ], [ 0, %124 ]
  %130 = add nsw i64 %128, -1
  %131 = getelementptr inbounds [64 x i32], ptr %5, i64 0, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !93
  %133 = icmp slt i32 %132, 14
  %134 = getelementptr inbounds [8 x i8], ptr @coeff_abs_level1_ctx, i64 0, i64 %129
  %135 = load i8, ptr %134, align 1, !tbaa !77
  %136 = zext i8 %135 to i32
  %137 = add nuw nsw i32 %136, %19
  %138 = icmp eq i32 %132, 0
  br i1 %138, label %156, label %139

139:                                              ; preds = %127
  %140 = tail call i32 @llvm.smin.i32(i32 %132, i32 14)
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %137, i32 noundef 1) #7
  %141 = getelementptr inbounds [8 x i8], ptr @coeff_abs_levelgt1_ctx, i64 0, i64 %129
  %142 = load i8, ptr %141, align 1, !tbaa !77
  %143 = zext i8 %142 to i32
  %144 = add nuw nsw i32 %143, %19
  %145 = icmp sgt i32 %132, 1
  br i1 %145, label %146, label %152

146:                                              ; preds = %139
  %147 = add nsw i32 %140, -2
  br label %148

148:                                              ; preds = %146, %148
  %149 = phi i32 [ %150, %148 ], [ 0, %146 ]
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %144, i32 noundef 1) #7
  %150 = add nuw nsw i32 %149, 1
  %151 = icmp eq i32 %149, %147
  br i1 %151, label %152, label %148, !llvm.loop !126

152:                                              ; preds = %148, %139
  br i1 %133, label %153, label %154

153:                                              ; preds = %152
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %144, i32 noundef 0) #7
  br label %157

154:                                              ; preds = %152
  %155 = add nsw i32 %132, -14
  tail call void @x264_cabac_encode_ue_bypass(ptr noundef %1, i32 noundef 0, i32 noundef %155) #7
  br label %157

156:                                              ; preds = %127
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %137, i32 noundef 0) #7
  br label %157

157:                                              ; preds = %153, %154, %156
  %158 = phi ptr [ @coeff_abs_level_transition, %156 ], [ getelementptr inbounds ([2 x [8 x i8]], ptr @coeff_abs_level_transition, i64 0, i64 1), %154 ], [ getelementptr inbounds ([2 x [8 x i8]], ptr @coeff_abs_level_transition, i64 0, i64 1), %153 ]
  %159 = getelementptr inbounds [8 x i8], ptr %158, i64 0, i64 %129
  %160 = load i8, ptr %159, align 1, !tbaa !77
  %161 = zext i8 %160 to i64
  %162 = getelementptr inbounds [64 x i32], ptr %6, i64 0, i64 %130
  %163 = load i32, ptr %162, align 4, !tbaa !93
  tail call void @x264_cabac_encode_bypass_c(ptr noundef %1, i32 noundef %163) #7
  %164 = icmp sgt i64 %128, 1
  br i1 %164, label %127, label %165, !llvm.loop !127

165:                                              ; preds = %157
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #7
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @x264_cabac_mb_type_intra(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #4 {
  %10 = icmp ult i32 %2, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %3, i32 noundef 0) #7
  br label %36

12:                                               ; preds = %9
  %13 = icmp eq i32 %2, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %3, i32 noundef 1) #7
  tail call void @x264_cabac_encode_flush(ptr noundef %0, ptr noundef %1) #7
  br label %36

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 59
  %17 = load i32, ptr %16, align 16, !tbaa !128
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode16x16_fix, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !77
  %21 = zext i8 %20 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %3, i32 noundef 1) #7
  tail call void @x264_cabac_encode_terminal_c(ptr noundef %1) #7
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %23 = load i32, ptr %22, align 8, !tbaa !110
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %4, i32 noundef %25) #7
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  %27 = load i32, ptr %26, align 4, !tbaa !113
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %5, i32 noundef 0) #7
  br label %33

30:                                               ; preds = %15
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %5, i32 noundef 1) #7
  %31 = load i32, ptr %26, align 4, !tbaa !113
  %32 = ashr i32 %31, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %6, i32 noundef %32) #7
  br label %33

33:                                               ; preds = %30, %29
  %34 = lshr i32 %21, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %7, i32 noundef %34) #7
  %35 = and i32 %21, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %8, i32 noundef %35) #7
  br label %36

36:                                               ; preds = %14, %33, %11
  ret void
}

declare void @x264_cabac_encode_flush(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_cabac_encode_terminal_c(ptr noundef) local_unnamed_addr #2

declare void @x264_mb_predict_mv(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 {
  %5 = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %6 = icmp eq i32 %1, 0
  %7 = select i1 %6, i32 40, i32 47
  %8 = icmp eq i32 %2, 0
  %9 = add nuw nsw i32 %7, %3
  br i1 %8, label %10, label %11

10:                                               ; preds = %4
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef %9, i32 noundef 0) #7
  br label %47

11:                                               ; preds = %4
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef %9, i32 noundef 1) #7
  %12 = icmp ult i32 %5, 9
  br i1 %12, label %13, label %36

13:                                               ; preds = %11
  %14 = icmp ugt i32 %5, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = tail call i32 @llvm.abs.i32(i32 %2, i1 false)
  %17 = zext i32 %16 to i64
  br label %25

18:                                               ; preds = %25, %13
  %19 = add nsw i32 %5, -1
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [8 x i8], ptr @x264_cabac_mb_mvd_cpn.ctxes, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !77
  %23 = zext i8 %22 to i32
  %24 = add nuw nsw i32 %7, %23
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef %24, i32 noundef 0) #7
  br label %45

25:                                               ; preds = %15, %25
  %26 = phi i64 [ 1, %15 ], [ %32, %25 ]
  %27 = add nsw i64 %26, -1
  %28 = getelementptr inbounds [8 x i8], ptr @x264_cabac_mb_mvd_cpn.ctxes, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !77
  %30 = zext i8 %29 to i32
  %31 = add nuw nsw i32 %7, %30
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef %31, i32 noundef 1) #7
  %32 = add nuw nsw i64 %26, 1
  %33 = icmp eq i64 %32, %17
  br i1 %33, label %18, label %25, !llvm.loop !129

34:                                               ; preds = %36
  %35 = add nsw i32 %5, -9
  tail call void @x264_cabac_encode_ue_bypass(ptr noundef %0, i32 noundef 3, i32 noundef %35) #7
  br label %45

36:                                               ; preds = %11, %36
  %37 = phi i64 [ %43, %36 ], [ 1, %11 ]
  %38 = add nsw i64 %37, -1
  %39 = getelementptr inbounds [8 x i8], ptr @x264_cabac_mb_mvd_cpn.ctxes, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !77
  %41 = zext i8 %40 to i32
  %42 = add nuw nsw i32 %7, %41
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef %42, i32 noundef 1) #7
  %43 = add nuw nsw i64 %37, 1
  %44 = icmp eq i64 %43, 9
  br i1 %44, label %34, label %36, !llvm.loop !130

45:                                               ; preds = %34, %18
  %46 = lshr i32 %2, 31
  tail call void @x264_cabac_encode_bypass_c(ptr noundef %0, i32 noundef %46) #7
  br label %47

47:                                               ; preds = %45, %10
  %48 = tail call i32 @llvm.umin.i32(i32 %5, i32 33)
  ret i32 %48
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

declare void @x264_cabac_encode_ue_bypass(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_cabac_encode_bypass_c(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!34 = !{!35, !37, i64 16488}
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
!64 = !{!35, !37, i64 16584}
!65 = !{!35, !37, i64 16580}
!66 = !{!35, !37, i64 7248}
!67 = !{!35, !37, i64 17384}
!68 = !{!49, !41, i64 24}
!69 = !{!49, !41, i64 16}
!70 = !{!49, !37, i64 12}
!71 = !{!49, !37, i64 8}
!72 = !{!35, !37, i64 7268}
!73 = !{!35, !37, i64 16388}
!74 = !{!35, !41, i64 16616}
!75 = !{!35, !37, i64 16392}
!76 = !{!35, !37, i64 16372}
!77 = !{!38, !38, i64 0}
!78 = !{!35, !37, i64 25772}
!79 = !{!35, !37, i64 16436}
!80 = !{!35, !37, i64 17388}
!81 = !{!35, !37, i64 26712}
!82 = !{!41, !41, i64 0}
!83 = distinct !{!83, !84, !85}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = !{!35, !37, i64 26716}
!87 = distinct !{!87, !84, !85}
!88 = !{!35, !41, i64 3328}
!89 = !{!90, !37, i64 60}
!90 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !37, i64 56, !37, i64 60, !37, i64 64, !38, i64 72}
!91 = !{!35, !37, i64 25768}
!92 = !{!35, !37, i64 17396}
!93 = !{!37, !37, i64 0}
!94 = distinct !{!94, !84, !85}
!95 = !{!35, !37, i64 17412}
!96 = !{!35, !41, i64 16664}
!97 = !{!35, !37, i64 16600}
!98 = !{!35, !37, i64 16604}
!99 = distinct !{!99, !84, !85}
!100 = !{!101, !101, i64 0}
!101 = !{!"short", !38, i64 0}
!102 = distinct !{!102, !84, !85}
!103 = distinct !{!103, !84, !85}
!104 = distinct !{!104, !84, !85}
!105 = distinct !{!105, !84, !85}
!106 = distinct !{!106, !84, !85}
!107 = distinct !{!107, !84, !85}
!108 = distinct !{!108, !84, !85}
!109 = distinct !{!109, !84, !85}
!110 = !{!35, !37, i64 17400}
!111 = !{!35, !37, i64 25780}
!112 = !{!35, !37, i64 25776}
!113 = !{!35, !37, i64 17404}
!114 = !{!35, !37, i64 25792}
!115 = !{!35, !37, i64 25800}
!116 = !{!35, !41, i64 16640}
!117 = !{!35, !37, i64 25804}
!118 = !{!35, !37, i64 16596}
!119 = distinct !{!119, !84, !85}
!120 = distinct !{!120, !84, !85}
!121 = distinct !{!121, !84, !85}
!122 = distinct !{!122, !84, !85}
!123 = distinct !{!123, !84, !85}
!124 = distinct !{!124, !85}
!125 = distinct !{!125, !85}
!126 = distinct !{!126, !84, !85}
!127 = distinct !{!127, !84, !85}
!128 = !{!35, !37, i64 17408}
!129 = distinct !{!129, !84, !85}
!130 = distinct !{!130, !84, !85}
