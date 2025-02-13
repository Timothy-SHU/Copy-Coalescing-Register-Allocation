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

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void @x264_cabac_encode_decision_c(ptr noundef nonnull %33, i32 noundef %32, i32 noundef %1) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @x264_cabac_encode_decision_c(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_macroblock_write_cabac(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 53
  %4 = load i32, ptr %3, align 8, !tbaa !67
  %5 = tail call fastcc i32 @x264_cabac_pos(ptr noundef %1) #11
  tail call fastcc void @x264_cabac_mb_type(ptr noundef %0, ptr noundef %1) #11
  %6 = icmp eq i32 %4, 3
  br i1 %6, label %7, label %51

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @x264_cabac_pos(ptr noundef %1) #11
  %9 = sub i32 %8, %5
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57
  %11 = load i32, ptr %10, align 8, !tbaa !68
  %12 = add nsw i32 %9, %11
  store i32 %12, ptr %10, align 8, !tbaa !68
  %13 = getelementptr inbounds %struct.x264_cabac_t, ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !69
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %16 = load ptr, ptr %15, align 16, !tbaa !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %14, ptr noundef nonnull align 1 dereferenceable(256) %16, i64 256, i1 false)
  %17 = load ptr, ptr %13, align 8, !tbaa !69
  %18 = getelementptr inbounds i8, ptr %17, i64 256
  store ptr %18, ptr %13, align 8, !tbaa !69
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 1
  br label %24

20:                                               ; preds = %24
  %21 = load ptr, ptr %13, align 8, !tbaa !69
  %22 = getelementptr inbounds i8, ptr %21, i64 64
  store ptr %22, ptr %13, align 8, !tbaa !69
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 2
  br label %40

24:                                               ; preds = %7, %24
  %25 = phi i64 [ 0, %7 ], [ %33, %24 ]
  %26 = load ptr, ptr %13, align 8, !tbaa !69
  %27 = shl nuw nsw i64 %25, 3
  %28 = getelementptr inbounds i8, ptr %26, i64 %27
  %29 = load ptr, ptr %19, align 8, !tbaa !70
  %30 = shl nuw nsw i64 %25, 4
  %31 = getelementptr inbounds i8, ptr %29, i64 %30
  %32 = load i64, ptr %31, align 1
  store i64 %32, ptr %28, align 1
  %33 = add nuw nsw i64 %25, 1
  %34 = icmp eq i64 %33, 8
  br i1 %34, label %20, label %24, !llvm.loop !71

35:                                               ; preds = %40
  %36 = load ptr, ptr %13, align 8, !tbaa !69
  %37 = getelementptr inbounds i8, ptr %36, i64 64
  store ptr %37, ptr %13, align 8, !tbaa !69
  tail call void @x264_cabac_encode_init_core(ptr noundef nonnull %1) #10
  %38 = tail call fastcc i32 @x264_cabac_pos(ptr noundef nonnull %1) #11
  %39 = sub i32 %38, %8
  br label %424

40:                                               ; preds = %20, %40
  %41 = phi i64 [ 0, %20 ], [ %49, %40 ]
  %42 = load ptr, ptr %13, align 8, !tbaa !69
  %43 = shl nuw nsw i64 %41, 3
  %44 = getelementptr inbounds i8, ptr %42, i64 %43
  %45 = load ptr, ptr %23, align 16, !tbaa !70
  %46 = shl nuw nsw i64 %41, 4
  %47 = getelementptr inbounds i8, ptr %45, i64 %46
  %48 = load i64, ptr %47, align 1
  store i64 %48, ptr %44, align 1
  %49 = add nuw nsw i64 %41, 1
  %50 = icmp eq i64 %49, 8
  br i1 %50, label %35, label %40, !llvm.loop !73

51:                                               ; preds = %2
  %52 = icmp eq i32 %4, 2
  %53 = icmp ult i32 %4, 3
  br i1 %53, label %54, label %87

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  %56 = load ptr, ptr %55, align 16, !tbaa !74
  %57 = getelementptr inbounds %struct.x264_pps_t, ptr %56, i64 0, i32 15
  %58 = load i32, ptr %57, align 4, !tbaa !75
  %59 = icmp ne i32 %58, 0
  %60 = icmp ne i32 %4, 2
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  tail call fastcc void @x264_cabac_mb_transform_size(ptr noundef nonnull %0, ptr noundef %1) #11
  br label %64

63:                                               ; preds = %54
  br i1 %60, label %64, label %86

64:                                               ; preds = %62, %63
  %65 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  %66 = load i32, ptr %65, align 4, !tbaa !77
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i64 1, i64 4
  %69 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67
  br label %70

70:                                               ; preds = %64, %70
  %71 = phi i64 [ 0, %64 ], [ %84, %70 ]
  %72 = trunc i64 %71 to i32
  %73 = tail call fastcc i32 @x264_mb_predict_intra4x4_mode(ptr noundef nonnull %0, i32 noundef %72) #11, !range !78
  %74 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %71
  %75 = load i32, ptr %74, align 4, !tbaa !79
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [40 x i8], ptr %69, i64 0, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !80
  %79 = sext i8 %78 to i64
  %80 = add nsw i64 %79, 1
  %81 = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !80
  %83 = sext i8 %82 to i32
  tail call fastcc void @x264_cabac_mb_intra4x4_pred_mode(ptr noundef %1, i32 noundef %73, i32 noundef %83) #11
  %84 = add i64 %71, %68
  %85 = icmp ult i64 %84, 16
  br i1 %85, label %70, label %86, !llvm.loop !81

86:                                               ; preds = %70, %63
  tail call fastcc void @x264_cabac_mb_intra_chroma_pred_mode(ptr noundef nonnull %0, ptr noundef %1) #11
  br label %290

87:                                               ; preds = %51
  switch i32 %4, label %211 [
    i32 4, label %88
    i32 5, label %112
    i32 17, label %129
    i32 7, label %290
  ]

88:                                               ; preds = %87
  %89 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %90 = load i32, ptr %89, align 4, !tbaa !82
  %91 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  %92 = load i32, ptr %91, align 8, !tbaa !79
  %93 = icmp sgt i32 %92, 1
  switch i32 %90, label %103 [
    i32 16, label %94
    i32 14, label %98
  ]

94:                                               ; preds = %88
  br i1 %93, label %95, label %96

95:                                               ; preds = %94
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef 0) #11
  br label %96

96:                                               ; preds = %94, %95
  %97 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 4) #11
  tail call fastcc void @x264_macroblock_cache_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4, i32 noundef 0, i16 noundef zeroext %97) #11
  br label %290

98:                                               ; preds = %88
  br i1 %93, label %99, label %100

99:                                               ; preds = %98
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef 0) #11
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef 8) #11
  br label %100

100:                                              ; preds = %98, %99
  %101 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 4) #11
  tail call fastcc void @x264_macroblock_cache_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 2, i32 noundef 0, i16 noundef zeroext %101) #11
  %102 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef 8, i32 noundef 4) #11
  tail call fastcc void @x264_macroblock_cache_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef 2, i32 noundef 0, i16 noundef zeroext %102) #11
  br label %290

103:                                              ; preds = %88
  br i1 %93, label %104, label %105

104:                                              ; preds = %103
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef 0) #11
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef 4) #11
  br label %105

105:                                              ; preds = %103, %104
  %106 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 2) #11
  tail call fastcc void @x264_macroblock_cache_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef 0, i16 noundef zeroext %106) #11
  %107 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef 4, i32 noundef 2) #11
  tail call fastcc void @x264_macroblock_cache_mvd(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef 0, i16 noundef zeroext %107) #11
  br label %290

108:                                              ; preds = %112
  %109 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  %110 = load i32, ptr %109, align 8, !tbaa !79
  %111 = icmp sgt i32 %110, 1
  br i1 %111, label %119, label %120

112:                                              ; preds = %87, %112
  %113 = phi i64 [ %117, %112 ], [ 0, %87 ]
  %114 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !80
  %116 = zext i8 %115 to i32
  tail call fastcc void @x264_cabac_mb_sub_p_partition(ptr noundef %1, i32 noundef %116) #11
  %117 = add nuw nsw i64 %113, 1
  %118 = icmp eq i64 %117, 4
  br i1 %118, label %108, label %112, !llvm.loop !83

119:                                              ; preds = %108
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef 0) #11
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef 4) #11
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef 8) #11
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef 12) #11
  br label %120

120:                                              ; preds = %119, %108
  br label %121

121:                                              ; preds = %120, %121
  %122 = phi i32 [ %123, %121 ], [ 0, %120 ]
  tail call fastcc void @x264_cabac_mb8x8_mvd(ptr noundef %0, ptr noundef %1, i32 noundef %122) #11
  %123 = add nuw nsw i32 %122, 1
  %124 = icmp eq i32 %123, 4
  br i1 %124, label %290, label %121, !llvm.loop !84

125:                                              ; preds = %129
  %126 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  %127 = load i32, ptr %126, align 8, !tbaa !79
  %128 = icmp sgt i32 %127, 1
  br i1 %128, label %136, label %150

129:                                              ; preds = %87, %129
  %130 = phi i64 [ %134, %129 ], [ 0, %87 ]
  %131 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !80
  %133 = zext i8 %132 to i32
  tail call fastcc void @x264_cabac_mb_sub_b_partition(ptr noundef %1, i32 noundef %133) #11
  %134 = add nuw nsw i64 %130, 1
  %135 = icmp eq i64 %134, 4
  br i1 %135, label %125, label %129, !llvm.loop !85

136:                                              ; preds = %125, %147
  %137 = phi i64 [ %148, %147 ], [ 0, %125 ]
  %138 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !80
  %140 = zext i8 %139 to i64
  %141 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !80
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %136
  %145 = trunc i64 %137 to i32
  %146 = shl i32 %145, 2
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef %146) #11
  br label %147

147:                                              ; preds = %136, %144
  %148 = add nuw nsw i64 %137, 1
  %149 = icmp eq i64 %148, 4
  br i1 %149, label %150, label %136, !llvm.loop !86

150:                                              ; preds = %147, %125
  %151 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19, i64 1
  %152 = load i32, ptr %151, align 4, !tbaa !79
  %153 = icmp sgt i32 %152, 1
  br i1 %153, label %154, label %168

154:                                              ; preds = %150, %165
  %155 = phi i64 [ %166, %165 ], [ 0, %150 ]
  %156 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !80
  %158 = zext i8 %157 to i64
  %159 = getelementptr inbounds [2 x [17 x i8]], ptr @x264_mb_partition_listX_table, i64 0, i64 1, i64 %158
  %160 = load i8, ptr %159, align 1, !tbaa !80
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %154
  %163 = trunc i64 %155 to i32
  %164 = shl i32 %163, 2
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i32 noundef %164) #11
  br label %165

165:                                              ; preds = %154, %162
  %166 = add nuw nsw i64 %155, 1
  %167 = icmp eq i64 %166, 4
  br i1 %167, label %168, label %154, !llvm.loop !87

168:                                              ; preds = %165, %150
  br label %169

169:                                              ; preds = %168, %187
  %170 = phi i64 [ %188, %187 ], [ 0, %168 ]
  %171 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !80
  %173 = zext i8 %172 to i64
  %174 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %173
  %175 = load i8, ptr %174, align 1, !tbaa !80
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %187, label %177

177:                                              ; preds = %169
  %178 = shl nuw nsw i64 %170, 2
  %179 = trunc i64 %178 to i32
  %180 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef %179, i32 noundef 2) #11
  %181 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %178
  %182 = load i8, ptr %181, align 4, !tbaa !80
  %183 = zext i8 %182 to i32
  %184 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %178
  %185 = load i8, ptr %184, align 4, !tbaa !80
  %186 = zext i8 %185 to i32
  tail call fastcc void @x264_macroblock_cache_mvd(ptr noundef nonnull %0, i32 noundef %183, i32 noundef %186, i32 noundef 2, i32 noundef 2, i32 noundef 0, i16 noundef zeroext %180) #11
  br label %187

187:                                              ; preds = %169, %177
  %188 = add nuw nsw i64 %170, 1
  %189 = icmp eq i64 %188, 4
  br i1 %189, label %190, label %169, !llvm.loop !88

190:                                              ; preds = %187, %208
  %191 = phi i64 [ %209, %208 ], [ 0, %187 ]
  %192 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %191
  %193 = load i8, ptr %192, align 1, !tbaa !80
  %194 = zext i8 %193 to i64
  %195 = getelementptr inbounds [2 x [17 x i8]], ptr @x264_mb_partition_listX_table, i64 0, i64 1, i64 %194
  %196 = load i8, ptr %195, align 1, !tbaa !80
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %208, label %198

198:                                              ; preds = %190
  %199 = shl nuw nsw i64 %191, 2
  %200 = trunc i64 %199 to i32
  %201 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i32 noundef %200, i32 noundef 2) #11
  %202 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %199
  %203 = load i8, ptr %202, align 4, !tbaa !80
  %204 = zext i8 %203 to i32
  %205 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %199
  %206 = load i8, ptr %205, align 4, !tbaa !80
  %207 = zext i8 %206 to i32
  tail call fastcc void @x264_macroblock_cache_mvd(ptr noundef nonnull %0, i32 noundef %204, i32 noundef %207, i32 noundef 2, i32 noundef 2, i32 noundef 1, i16 noundef zeroext %201) #11
  br label %208

208:                                              ; preds = %190, %198
  %209 = add nuw nsw i64 %191, 1
  %210 = icmp eq i64 %209, 4
  br i1 %210, label %290, label %190, !llvm.loop !89

211:                                              ; preds = %87
  %212 = sext i32 %4 to i64
  %213 = getelementptr inbounds [19 x [2 x [2 x i8]]], ptr @x264_mb_type_list_table, i64 0, i64 %212
  %214 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  %215 = load i32, ptr %214, align 8, !tbaa !79
  %216 = icmp sgt i32 %215, 1
  br i1 %216, label %217, label %233

217:                                              ; preds = %211
  %218 = load i8, ptr %213, align 4, !tbaa !80
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %217
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef 0) #11
  br label %221

221:                                              ; preds = %220, %217
  %222 = getelementptr inbounds [2 x i8], ptr %213, i64 0, i64 1
  %223 = load i8, ptr %222, align 1, !tbaa !80
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %233, label %225

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %227 = load i32, ptr %226, align 4, !tbaa !82
  %228 = icmp eq i32 %227, 16
  br i1 %228, label %233, label %229

229:                                              ; preds = %225
  %230 = icmp eq i32 %227, 15
  %231 = zext i1 %230 to i32
  %232 = lshr exact i32 8, %231
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef %232) #11
  br label %233

233:                                              ; preds = %221, %225, %229, %211
  %234 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19, i64 1
  %235 = load i32, ptr %234, align 4, !tbaa !79
  %236 = icmp sgt i32 %235, 1
  br i1 %236, label %237, label %254

237:                                              ; preds = %233
  %238 = getelementptr inbounds [2 x i8], ptr %213, i64 1
  %239 = load i8, ptr %238, align 2, !tbaa !80
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %237
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i32 noundef 0) #11
  br label %242

242:                                              ; preds = %241, %237
  %243 = getelementptr inbounds [2 x i8], ptr %213, i64 1, i64 1
  %244 = load i8, ptr %243, align 1, !tbaa !80
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %254, label %246

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %248 = load i32, ptr %247, align 4, !tbaa !82
  %249 = icmp eq i32 %248, 16
  br i1 %249, label %254, label %250

250:                                              ; preds = %246
  %251 = icmp eq i32 %248, 15
  %252 = zext i1 %251 to i32
  %253 = lshr exact i32 8, %252
  tail call fastcc void @x264_cabac_mb_ref(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i32 noundef %253) #11
  br label %254

254:                                              ; preds = %242, %246, %250, %233
  %255 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  br label %256

256:                                              ; preds = %254, %289
  %257 = phi i1 [ true, %254 ], [ false, %289 ]
  %258 = phi i64 [ 0, %254 ], [ 1, %289 ]
  %259 = load i32, ptr %255, align 4, !tbaa !82
  %260 = getelementptr inbounds [2 x i8], ptr %213, i64 %258
  %261 = load i8, ptr %260, align 2, !tbaa !80
  %262 = icmp eq i8 %261, 0
  switch i32 %259, label %278 [
    i32 16, label %263
    i32 14, label %267
  ]

263:                                              ; preds = %256
  br i1 %262, label %289, label %264

264:                                              ; preds = %263
  %265 = trunc i64 %258 to i32
  %266 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %265, i32 noundef 0, i32 noundef 4) #11
  tail call fastcc void @x264_macroblock_cache_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4, i32 noundef %265, i16 noundef zeroext %266) #11
  br label %289

267:                                              ; preds = %256
  br i1 %262, label %271, label %268

268:                                              ; preds = %267
  %269 = trunc i64 %258 to i32
  %270 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %269, i32 noundef 0, i32 noundef 4) #11
  tail call fastcc void @x264_macroblock_cache_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 2, i32 noundef %269, i16 noundef zeroext %270) #11
  br label %271

271:                                              ; preds = %268, %267
  %272 = getelementptr inbounds [2 x i8], ptr %213, i64 %258, i64 1
  %273 = load i8, ptr %272, align 1, !tbaa !80
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %289, label %275

275:                                              ; preds = %271
  %276 = trunc i64 %258 to i32
  %277 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %276, i32 noundef 8, i32 noundef 4) #11
  tail call fastcc void @x264_macroblock_cache_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef 2, i32 noundef %276, i16 noundef zeroext %277) #11
  br label %289

278:                                              ; preds = %256
  br i1 %262, label %282, label %279

279:                                              ; preds = %278
  %280 = trunc i64 %258 to i32
  %281 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %280, i32 noundef 0, i32 noundef 2) #11
  tail call fastcc void @x264_macroblock_cache_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef %280, i16 noundef zeroext %281) #11
  br label %282

282:                                              ; preds = %279, %278
  %283 = getelementptr inbounds [2 x i8], ptr %213, i64 %258, i64 1
  %284 = load i8, ptr %283, align 1, !tbaa !80
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %289, label %286

286:                                              ; preds = %282
  %287 = trunc i64 %258 to i32
  %288 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %287, i32 noundef 4, i32 noundef 2) #11
  tail call fastcc void @x264_macroblock_cache_mvd(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef %287, i16 noundef zeroext %288) #11
  br label %289

289:                                              ; preds = %264, %263, %282, %286, %271, %275
  br i1 %257, label %256, label %290, !llvm.loop !90

290:                                              ; preds = %208, %121, %289, %87, %100, %105, %96, %86
  %291 = tail call fastcc i32 @x264_cabac_pos(ptr noundef %1) #11
  %292 = sub i32 %291, %5
  %293 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57
  %294 = load i32, ptr %293, align 8, !tbaa !68
  %295 = add nsw i32 %292, %294
  store i32 %295, ptr %293, align 8, !tbaa !68
  br i1 %52, label %297, label %296

296:                                              ; preds = %290
  tail call fastcc void @x264_cabac_mb_cbp_luma(ptr noundef nonnull %0, ptr noundef %1) #11
  tail call fastcc void @x264_cabac_mb_cbp_chroma(ptr noundef nonnull %0, ptr noundef %1) #11
  br label %297

297:                                              ; preds = %296, %290
  %298 = tail call fastcc i32 @x264_mb_transform_8x8_allowed(ptr noundef nonnull %0) #11, !range !91
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %305, label %300

300:                                              ; preds = %297
  %301 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %302 = load i32, ptr %301, align 8, !tbaa !92
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %300
  tail call fastcc void @x264_cabac_mb_transform_size(ptr noundef nonnull %0, ptr noundef %1) #11
  br label %305

305:                                              ; preds = %304, %300, %297
  %306 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %307 = load i32, ptr %306, align 8, !tbaa !92
  %308 = icmp sgt i32 %307, 0
  br i1 %308, label %314, label %309

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  %311 = load i32, ptr %310, align 4, !tbaa !93
  %312 = icmp sgt i32 %311, 0
  %313 = select i1 %312, i1 true, i1 %52
  br i1 %313, label %314, label %421

314:                                              ; preds = %309, %305
  %315 = zext i1 %53 to i32
  tail call fastcc void @x264_cabac_mb_qp_delta(ptr noundef nonnull %0, ptr noundef %1) #11
  br i1 %52, label %316, label %343

316:                                              ; preds = %314
  %317 = tail call fastcc i32 @x264_cabac_mb_cbf_ctxidxinc(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 24, i32 noundef 1) #11, !range !94
  %318 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 44
  %319 = load i8, ptr %318, align 1, !tbaa !80
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %323, label %321

321:                                              ; preds = %316
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %317, i32 noundef 1) #10
  %322 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54
  tail call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %322) #11
  br label %324

323:                                              ; preds = %316
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %317, i32 noundef 0) #10
  br label %324

324:                                              ; preds = %323, %321
  %325 = load i32, ptr %306, align 8, !tbaa !92
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %381, label %327

327:                                              ; preds = %324, %340
  %328 = phi i64 [ %341, %340 ], [ 0, %324 ]
  %329 = trunc i64 %328 to i32
  %330 = tail call fastcc i32 @x264_cabac_mb_cbf_ctxidxinc(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %329, i32 noundef 1) #11, !range !94
  %331 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %328
  %332 = load i32, ptr %331, align 4, !tbaa !79
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %333
  %335 = load i8, ptr %334, align 1, !tbaa !80
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %339, label %337

337:                                              ; preds = %327
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %330, i32 noundef 1) #10
  %338 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %328, i64 1
  tail call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull %338) #11
  br label %340

339:                                              ; preds = %327
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %330, i32 noundef 0) #10
  br label %340

340:                                              ; preds = %339, %337
  %341 = add nuw nsw i64 %328, 1
  %342 = icmp eq i64 %341, 16
  br i1 %342, label %381, label %327, !llvm.loop !95

343:                                              ; preds = %314
  %344 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  %345 = load i32, ptr %344, align 4, !tbaa !77
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %359, label %347

347:                                              ; preds = %343, %356
  %348 = phi i64 [ %357, %356 ], [ 0, %343 ]
  %349 = load i32, ptr %306, align 8, !tbaa !92
  %350 = trunc i64 %348 to i32
  %351 = shl nuw nsw i32 1, %350
  %352 = and i32 %349, %351
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %356, label %354

354:                                              ; preds = %347
  %355 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2, i64 %348
  tail call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 5, ptr noundef nonnull %355) #11
  br label %356

356:                                              ; preds = %347, %354
  %357 = add nuw nsw i64 %348, 1
  %358 = icmp eq i64 %357, 4
  br i1 %358, label %381, label %347, !llvm.loop !96

359:                                              ; preds = %343, %378
  %360 = phi i64 [ %379, %378 ], [ 0, %343 ]
  %361 = load i32, ptr %306, align 8, !tbaa !92
  %362 = trunc i64 %360 to i32
  %363 = lshr i32 %362, 2
  %364 = shl nuw nsw i32 1, %363
  %365 = and i32 %361, %364
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %378, label %367

367:                                              ; preds = %359
  %368 = tail call fastcc i32 @x264_cabac_mb_cbf_ctxidxinc(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %362, i32 noundef %315) #11, !range !94
  %369 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %360
  %370 = load i32, ptr %369, align 4, !tbaa !79
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %371
  %373 = load i8, ptr %372, align 1, !tbaa !80
  %374 = icmp eq i8 %373, 0
  br i1 %374, label %377, label %375

375:                                              ; preds = %367
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %368, i32 noundef 1) #10
  %376 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %360
  tail call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2, ptr noundef nonnull %376) #11
  br label %378

377:                                              ; preds = %367
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %368, i32 noundef 0) #10
  br label %378

378:                                              ; preds = %375, %377, %359
  %379 = add nuw nsw i64 %360, 1
  %380 = icmp eq i64 %379, 16
  br i1 %380, label %381, label %359, !llvm.loop !97

381:                                              ; preds = %356, %378, %340, %324
  %382 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  %383 = load i32, ptr %382, align 4, !tbaa !93
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %421, label %385

385:                                              ; preds = %381
  %386 = tail call fastcc i32 @x264_cabac_mb_cbf_ctxidxinc(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 25, i32 noundef %315) #11, !range !94
  %387 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 46
  %388 = load i8, ptr %387, align 1, !tbaa !80
  %389 = icmp eq i8 %388, 0
  br i1 %389, label %392, label %390

390:                                              ; preds = %385
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %386, i32 noundef 1) #10
  %391 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 1
  tail call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 3, ptr noundef nonnull %391) #11
  br label %393

392:                                              ; preds = %385
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %386, i32 noundef 0) #10
  br label %393

393:                                              ; preds = %392, %390
  %394 = tail call fastcc i32 @x264_cabac_mb_cbf_ctxidxinc(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 26, i32 noundef %315) #11, !range !94
  %395 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 47
  %396 = load i8, ptr %395, align 1, !tbaa !80
  %397 = icmp eq i8 %396, 0
  br i1 %397, label %400, label %398

398:                                              ; preds = %393
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %394, i32 noundef 1) #10
  %399 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 1, i64 1
  tail call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 3, ptr noundef nonnull %399) #11
  br label %401

400:                                              ; preds = %393
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %394, i32 noundef 0) #10
  br label %401

401:                                              ; preds = %400, %398
  %402 = load i32, ptr %382, align 4, !tbaa !93
  %403 = and i32 %402, 2
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %421, label %405

405:                                              ; preds = %401, %418
  %406 = phi i64 [ %419, %418 ], [ 16, %401 ]
  %407 = trunc i64 %406 to i32
  %408 = tail call fastcc i32 @x264_cabac_mb_cbf_ctxidxinc(ptr noundef nonnull %0, i32 noundef 4, i32 noundef %407, i32 noundef %315) #11, !range !94
  %409 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %406
  %410 = load i32, ptr %409, align 4, !tbaa !79
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %411
  %413 = load i8, ptr %412, align 1, !tbaa !80
  %414 = icmp eq i8 %413, 0
  br i1 %414, label %417, label %415

415:                                              ; preds = %405
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %408, i32 noundef 1) #10
  %416 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %406, i64 1
  tail call fastcc void @block_residual_write_cabac(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 4, ptr noundef nonnull %416) #11
  br label %418

417:                                              ; preds = %405
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %408, i32 noundef 0) #10
  br label %418

418:                                              ; preds = %417, %415
  %419 = add nuw nsw i64 %406, 1
  %420 = icmp eq i64 %419, 24
  br i1 %420, label %421, label %405, !llvm.loop !98

421:                                              ; preds = %418, %381, %401, %309
  %422 = tail call fastcc i32 @x264_cabac_pos(ptr noundef %1) #11
  %423 = sub i32 %422, %291
  br label %424

424:                                              ; preds = %421, %35
  %425 = phi i32 [ %423, %421 ], [ %39, %35 ]
  %426 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 1
  %427 = load i32, ptr %426, align 4, !tbaa !99
  %428 = add nsw i32 %425, %427
  store i32 %428, ptr %426, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @x264_cabac_pos(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !100 {
  %2 = getelementptr inbounds %struct.x264_cabac_t, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = getelementptr inbounds %struct.x264_cabac_t, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 16, !tbaa !101
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = getelementptr inbounds %struct.x264_cabac_t, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !102
  %11 = getelementptr inbounds %struct.x264_cabac_t, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !103
  %13 = trunc i64 %8 to i32
  %14 = add i32 %10, %13
  %15 = shl i32 %14, 3
  %16 = add i32 %15, %12
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_cabac_mb_type(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !104 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 53
  %4 = load i32, ptr %3, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !105
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !106
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 38
  %15 = load ptr, ptr %14, align 8, !tbaa !107
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !108
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !109
  %20 = sub nsw i32 %17, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %15, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !80
  switch i8 %23, label %30 [
    i8 6, label %24
    i8 18, label %24
  ]

24:                                               ; preds = %13, %13, %8
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 12
  %26 = load i32, ptr %25, align 4, !tbaa !110
  %27 = add nsw i32 %26, 70
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %29 = load i32, ptr %28, align 4, !tbaa !111
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %27, i32 noundef %29) #10
  br label %30

30:                                               ; preds = %13, %24, %2
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %32 = load i32, ptr %31, align 16, !tbaa !66
  switch i32 %32, label %69 [
    i32 2, label %33
    i32 0, label %56
  ]

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 24
  %35 = load i32, ptr %34, align 8, !tbaa !34
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 30
  %40 = load i32, ptr %39, align 8, !tbaa !64
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i32 [ 0, %33 ], [ %42, %38 ]
  %45 = and i32 %35, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 29
  %49 = load i32, ptr %48, align 4, !tbaa !65
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = add nuw nsw i32 %44, %51
  br label %53

53:                                               ; preds = %47, %43
  %54 = phi i32 [ %44, %43 ], [ %52, %47 ]
  %55 = add nuw nsw i32 %54, 3
  tail call fastcc void @x264_cabac_mb_type_intra(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %4, i32 noundef %55, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10) #11
  br label %127

56:                                               ; preds = %30
  switch i32 %4, label %68 [
    i32 4, label %57
    i32 5, label %67
  ]

57:                                               ; preds = %56
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 14, i32 noundef 0) #10
  %58 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %59 = load i32, ptr %58, align 4, !tbaa !82
  %60 = icmp ne i32 %59, 16
  %61 = zext i1 %60 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 15, i32 noundef %61) #10
  %62 = load i32, ptr %58, align 4, !tbaa !82
  %63 = icmp eq i32 %62, 16
  %64 = select i1 %63, i32 16, i32 17
  %65 = icmp eq i32 %62, 14
  %66 = zext i1 %65 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %64, i32 noundef %66) #10
  br label %127

67:                                               ; preds = %56
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 14, i32 noundef 0) #10
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 15, i32 noundef 0) #10
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 16, i32 noundef 1) #10
  br label %127

68:                                               ; preds = %56
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 14, i32 noundef 1) #10
  tail call fastcc void @x264_cabac_mb_type_intra(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %4, i32 noundef 17, i32 noundef 18, i32 noundef 19, i32 noundef 19, i32 noundef 20, i32 noundef 20) #11
  br label %127

69:                                               ; preds = %30
  %70 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 24
  %71 = load i32, ptr %70, align 8, !tbaa !34
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 30
  %76 = load i32, ptr %75, align 8, !tbaa !64
  %77 = icmp ne i32 %76, 18
  %78 = icmp ne i32 %76, 7
  %79 = and i1 %77, %78
  %80 = zext i1 %79 to i32
  br label %81

81:                                               ; preds = %74, %69
  %82 = phi i32 [ 0, %69 ], [ %80, %74 ]
  %83 = and i32 %71, 2
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 29
  %87 = load i32, ptr %86, align 4, !tbaa !65
  switch i32 %87, label %88 [
    i32 18, label %90
    i32 7, label %90
  ]

88:                                               ; preds = %85
  %89 = add nuw nsw i32 %82, 1
  br label %90

90:                                               ; preds = %85, %85, %88, %81
  %91 = phi i32 [ %89, %88 ], [ %82, %85 ], [ %82, %81 ], [ %82, %85 ]
  %92 = icmp eq i32 %4, 7
  %93 = add nuw nsw i32 %91, 27
  br i1 %92, label %94, label %95

94:                                               ; preds = %90
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %93, i32 noundef 0) #10
  br label %127

95:                                               ; preds = %90
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %93, i32 noundef 1) #10
  %96 = icmp eq i32 %4, 17
  br i1 %96, label %97, label %98

97:                                               ; preds = %95
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 30, i32 noundef 1) #10
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 31, i32 noundef 1) #10
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 32, i32 noundef 1) #10
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 32, i32 noundef 1) #10
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 32, i32 noundef 1) #10
  br label %127

98:                                               ; preds = %95
  %99 = icmp ult i32 %4, 4
  br i1 %99, label %100, label %101

100:                                              ; preds = %98
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 30, i32 noundef 1) #10
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 31, i32 noundef 1) #10
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 32, i32 noundef 1) #10
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 32, i32 noundef 0) #10
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 32, i32 noundef 1) #10
  tail call fastcc void @x264_cabac_mb_type_intra(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %4, i32 noundef 32, i32 noundef 33, i32 noundef 34, i32 noundef 34, i32 noundef 35, i32 noundef 35) #11
  br label %127

101:                                              ; preds = %98
  %102 = mul i32 %4, 3
  %103 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %104 = load i32, ptr %103, align 4, !tbaa !82
  %105 = add i32 %102, -38
  %106 = add i32 %105, %104
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [27 x i8], ptr @x264_cabac_mb_type.i_mb_bits, i64 0, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !80
  %110 = zext i8 %109 to i32
  %111 = and i32 %110, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 30, i32 noundef %111) #10
  %112 = sub nuw nsw i32 32, %111
  %113 = lshr i32 %110, 1
  %114 = and i32 %113, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %112, i32 noundef %114) #10
  %115 = lshr i32 %110, 2
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %127, label %117

117:                                              ; preds = %101
  %118 = and i32 %115, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 32, i32 noundef %118) #10
  %119 = lshr i32 %110, 3
  %120 = and i32 %119, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 32, i32 noundef %120) #10
  %121 = lshr i32 %110, 4
  %122 = and i32 %121, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 32, i32 noundef %122) #10
  %123 = lshr i32 %110, 5
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %127, label %125

125:                                              ; preds = %117
  %126 = and i32 %123, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 32, i32 noundef %126) #10
  br label %127

127:                                              ; preds = %94, %101, %125, %117, %100, %97, %53, %57, %68, %67
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @x264_cabac_encode_init_core(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_cabac_mb_transform_size(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !112 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 11
  %4 = load i32, ptr %3, align 8, !tbaa !113
  %5 = add nsw i32 %4, 399
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  %7 = load i32, ptr %6, align 4, !tbaa !77
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %5, i32 noundef %7) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @x264_mb_predict_intra4x4_mode(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !PGOFuncName !114 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !79
  %7 = add nsw i32 %6, -1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [40 x i8], ptr %3, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !80
  %11 = sext i8 %10 to i64
  %12 = add nsw i32 %6, -8
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [40 x i8], ptr %3, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !80
  %16 = sext i8 %15 to i64
  %17 = add nsw i64 %11, 1
  %18 = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !80
  %20 = add nsw i64 %16, 1
  %21 = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !80
  %23 = tail call i8 @llvm.smin.i8(i8 %19, i8 %22)
  %24 = icmp slt i8 %23, 0
  %25 = select i1 %24, i8 2, i8 %23
  %26 = sext i8 %25 to i32
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_cabac_mb_intra4x4_pred_mode(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !115 {
  %4 = icmp eq i32 %1, %2
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef 68, i32 noundef 1) #10
  br label %14

6:                                                ; preds = %3
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef 68, i32 noundef 0) #10
  %7 = icmp sgt i32 %2, %1
  %8 = sext i1 %7 to i32
  %9 = add nsw i32 %8, %2
  %10 = and i32 %9, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef 69, i32 noundef %10) #10
  %11 = lshr i32 %9, 1
  %12 = and i32 %11, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef 69, i32 noundef %12) #10
  %13 = ashr i32 %9, 2
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef 69, i32 noundef %13) #10
  br label %14

14:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_cabac_mb_intra_chroma_pred_mode(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !116 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 60
  %4 = load i32, ptr %3, align 4, !tbaa !117
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 24
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 44
  %12 = load ptr, ptr %11, align 8, !tbaa !118
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 34
  %14 = load i32, ptr %13, align 8, !tbaa !119
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %12, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !80
  %18 = icmp ne i8 %17, 0
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %10, %2
  %21 = phi i32 [ 0, %2 ], [ %19, %10 ]
  %22 = and i32 %7, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 44
  %26 = load ptr, ptr %25, align 8, !tbaa !118
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 35
  %28 = load i32, ptr %27, align 4, !tbaa !120
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, ptr %26, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !80
  %32 = icmp ne i8 %31, 0
  %33 = zext i1 %32 to i32
  %34 = add nuw nsw i32 %21, %33
  br label %35

35:                                               ; preds = %24, %20
  %36 = phi i32 [ %21, %20 ], [ %34, %24 ]
  %37 = add nuw nsw i32 %36, 64
  %38 = add nsw i64 %5, -1
  %39 = icmp ult i64 %38, 3
  %40 = zext i1 %39 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %37, i32 noundef %40) #10
  br i1 %39, label %41, label %48

41:                                               ; preds = %35
  %42 = and i32 %4, -2
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 67, i32 noundef %44) #10
  br i1 %43, label %45, label %48

45:                                               ; preds = %41
  %46 = icmp eq i32 %4, 3
  %47 = zext i1 %46 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef 67, i32 noundef %47) #10
  br label %48

48:                                               ; preds = %41, %45, %35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_cabac_mb_ref(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !121 {
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !79
  %8 = zext nneg i32 %2 to i64
  %9 = add nsw i32 %7, -1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %8, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !80
  %13 = add nsw i32 %7, -8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %8, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !80
  %17 = icmp sgt i8 %12, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 %10
  %20 = load i8, ptr %19, align 1, !tbaa !80
  %21 = icmp eq i8 %20, 0
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %18, %4
  %24 = phi i32 [ 0, %4 ], [ %22, %18 ]
  %25 = icmp sgt i8 %16, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 6, i64 %14
  %28 = load i8, ptr %27, align 1, !tbaa !80
  %29 = icmp eq i8 %28, 0
  %30 = or disjoint i32 %24, 2
  %31 = select i1 %29, i32 %30, i32 %24
  br label %32

32:                                               ; preds = %26, %23
  %33 = phi i32 [ %24, %23 ], [ %31, %26 ]
  %34 = sext i32 %7 to i64
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %8, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !80
  %37 = icmp sgt i8 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = zext nneg i8 %36 to i32
  br label %43

40:                                               ; preds = %43, %32
  %41 = phi i32 [ %33, %32 ], [ %48, %43 ]
  %42 = add nuw nsw i32 %41, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %42, i32 noundef 0) #10
  ret void

43:                                               ; preds = %38, %43
  %44 = phi i32 [ %49, %43 ], [ %39, %38 ]
  %45 = phi i32 [ %48, %43 ], [ %33, %38 ]
  %46 = add nuw nsw i32 %45, 54
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %46, i32 noundef 1) #10
  %47 = lshr i32 %45, 2
  %48 = add nuw nsw i32 %47, 4
  %49 = add nsw i32 %44, -1
  %50 = icmp ugt i32 %44, 1
  br i1 %50, label %43, label %40, !llvm.loop !122
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !123 {
  %6 = alloca [2 x i16], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %6) #10
  %7 = zext nneg i32 %2 to i64
  %8 = sext i32 %3 to i64
  %9 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !79
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %7, i64 %11
  %13 = load i16, ptr %12, align 4, !tbaa !124
  %14 = sext i16 %13 to i32
  %15 = load i16, ptr %6, align 4, !tbaa !124
  %16 = sext i16 %15 to i32
  %17 = sub nsw i32 %14, %16
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %7, i64 %11, i64 1
  %19 = load i16, ptr %18, align 2, !tbaa !124
  %20 = sext i16 %19 to i32
  %21 = getelementptr inbounds [2 x i16], ptr %6, i64 0, i64 1
  %22 = load i16, ptr %21, align 2, !tbaa !124
  %23 = sext i16 %22 to i32
  %24 = sub nsw i32 %20, %23
  %25 = add nsw i32 %10, -1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %7, i64 %26
  %28 = add nsw i32 %10, -8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %7, i64 %29
  %31 = call fastcc zeroext i16 @x264_cabac_mvd_sum(ptr noundef nonnull %27, ptr noundef nonnull %30) #11, !range !126
  %32 = zext nneg i16 %31 to i32
  %33 = and i32 %32, 255
  %34 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 0, i32 noundef %17, i32 noundef %33) #11
  %35 = lshr i32 %32, 8
  %36 = call fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %1, i32 noundef 1, i32 noundef %24, i32 noundef %35) #11
  %37 = call fastcc i32 @pack8to16(i32 noundef %34, i32 noundef %36) #11, !range !127
  %38 = trunc i32 %37 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  ret i16 %38
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @x264_macroblock_cache_mvd(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef zeroext %6) unnamed_addr #5 !PGOFuncName !128 {
  %8 = zext nneg i32 %5 to i64
  %9 = add nuw nsw i32 %1, 12
  %10 = shl nuw nsw i32 %2, 3
  %11 = add nuw nsw i32 %9, %10
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %8, i64 %12
  %14 = shl nuw nsw i32 %3, 1
  %15 = zext i16 %6 to i32
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef nonnull %13, i32 noundef %14, i32 noundef %4, i32 noundef %15) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_cabac_mb_sub_p_partition(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !129 {
  %3 = icmp eq i32 %1, 3
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef 21, i32 noundef 1) #10
  br label %11

5:                                                ; preds = %2
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef 21, i32 noundef 0) #10
  %6 = icmp eq i32 %1, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef 22, i32 noundef 0) #10
  br label %11

8:                                                ; preds = %5
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef 22, i32 noundef 1) #10
  %9 = icmp eq i32 %1, 2
  %10 = zext i1 %9 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef 23, i32 noundef %10) #10
  br label %11

11:                                               ; preds = %4, %8, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_cabac_mb8x8_mvd(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !130 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !80
  switch i8 %6, label %92 [
    i8 3, label %7
    i8 1, label %17
    i8 2, label %36
    i8 0, label %55
  ]

7:                                                ; preds = %3
  %8 = shl nsw i32 %2, 2
  %9 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef %8, i32 noundef 2) #11
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %10
  %12 = load i8, ptr %11, align 4, !tbaa !80
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %10
  %15 = load i8, ptr %14, align 4, !tbaa !80
  %16 = zext i8 %15 to i32
  tail call fastcc void @x264_macroblock_cache_mvd(ptr noundef nonnull %0, i32 noundef %13, i32 noundef %16, i32 noundef 2, i32 noundef 2, i32 noundef 0, i16 noundef zeroext %9) #11
  br label %92

17:                                               ; preds = %3
  %18 = shl nsw i32 %2, 2
  %19 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef %18, i32 noundef 2) #11
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %20
  %22 = load i8, ptr %21, align 4, !tbaa !80
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %20
  %25 = load i8, ptr %24, align 4, !tbaa !80
  %26 = zext i8 %25 to i32
  tail call fastcc void @x264_macroblock_cache_mvd(ptr noundef nonnull %0, i32 noundef %23, i32 noundef %26, i32 noundef 2, i32 noundef 1, i32 noundef 0, i16 noundef zeroext %19) #11
  %27 = or disjoint i32 %18, 2
  %28 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef %27, i32 noundef 2) #11
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %29
  %31 = load i8, ptr %30, align 2, !tbaa !80
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %29
  %34 = load i8, ptr %33, align 2, !tbaa !80
  %35 = zext i8 %34 to i32
  tail call fastcc void @x264_macroblock_cache_mvd(ptr noundef nonnull %0, i32 noundef %32, i32 noundef %35, i32 noundef 2, i32 noundef 1, i32 noundef 0, i16 noundef zeroext %28) #11
  br label %92

36:                                               ; preds = %3
  %37 = shl nsw i32 %2, 2
  %38 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef %37, i32 noundef 1) #11
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %39
  %41 = load i8, ptr %40, align 4, !tbaa !80
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %39
  %44 = load i8, ptr %43, align 4, !tbaa !80
  %45 = zext i8 %44 to i32
  tail call fastcc void @x264_macroblock_cache_mvd(ptr noundef nonnull %0, i32 noundef %42, i32 noundef %45, i32 noundef 1, i32 noundef 2, i32 noundef 0, i16 noundef zeroext %38) #11
  %46 = or disjoint i32 %37, 1
  %47 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef %46, i32 noundef 1) #11
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !80
  %51 = zext i8 %50 to i32
  %52 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %48
  %53 = load i8, ptr %52, align 1, !tbaa !80
  %54 = zext i8 %53 to i32
  tail call fastcc void @x264_macroblock_cache_mvd(ptr noundef nonnull %0, i32 noundef %51, i32 noundef %54, i32 noundef 1, i32 noundef 2, i32 noundef 0, i16 noundef zeroext %47) #11
  br label %92

55:                                               ; preds = %3
  %56 = shl nsw i32 %2, 2
  %57 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef %56, i32 noundef 1) #11
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %58
  %60 = load i8, ptr %59, align 4, !tbaa !80
  %61 = zext i8 %60 to i32
  %62 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %58
  %63 = load i8, ptr %62, align 4, !tbaa !80
  %64 = zext i8 %63 to i32
  tail call fastcc void @x264_macroblock_cache_mvd(ptr noundef nonnull %0, i32 noundef %61, i32 noundef %64, i32 noundef 1, i32 noundef 1, i32 noundef 0, i16 noundef zeroext %57) #11
  %65 = or disjoint i32 %56, 1
  %66 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef %65, i32 noundef 1) #11
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !80
  %70 = zext i8 %69 to i32
  %71 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %67
  %72 = load i8, ptr %71, align 1, !tbaa !80
  %73 = zext i8 %72 to i32
  tail call fastcc void @x264_macroblock_cache_mvd(ptr noundef nonnull %0, i32 noundef %70, i32 noundef %73, i32 noundef 1, i32 noundef 1, i32 noundef 0, i16 noundef zeroext %66) #11
  %74 = or disjoint i32 %56, 2
  %75 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef %74, i32 noundef 1) #11
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %76
  %78 = load i8, ptr %77, align 2, !tbaa !80
  %79 = zext i8 %78 to i32
  %80 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %76
  %81 = load i8, ptr %80, align 2, !tbaa !80
  %82 = zext i8 %81 to i32
  tail call fastcc void @x264_macroblock_cache_mvd(ptr noundef nonnull %0, i32 noundef %79, i32 noundef %82, i32 noundef 1, i32 noundef 1, i32 noundef 0, i16 noundef zeroext %75) #11
  %83 = or disjoint i32 %56, 3
  %84 = tail call fastcc zeroext i16 @x264_cabac_mb_mvd(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef %83, i32 noundef 1) #11
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !80
  %88 = zext i8 %87 to i32
  %89 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %85
  %90 = load i8, ptr %89, align 1, !tbaa !80
  %91 = zext i8 %90 to i32
  tail call fastcc void @x264_macroblock_cache_mvd(ptr noundef nonnull %0, i32 noundef %88, i32 noundef %91, i32 noundef 1, i32 noundef 1, i32 noundef 0, i16 noundef zeroext %84) #11
  br label %92

92:                                               ; preds = %3, %55, %36, %17, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_cabac_mb_sub_b_partition(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !131 {
  %3 = icmp eq i32 %1, 12
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef 36, i32 noundef 0) #10
  br label %11

5:                                                ; preds = %2
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef 36, i32 noundef 1) #10
  %6 = icmp eq i32 %1, 11
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef 37, i32 noundef 1) #10
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef 38, i32 noundef 0) #10
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef 39, i32 noundef 0) #10
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef 39, i32 noundef 0) #10
  br label %11

8:                                                ; preds = %5
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef 37, i32 noundef 0) #10
  %9 = icmp eq i32 %1, 7
  %10 = zext i1 %9 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef 39, i32 noundef %10) #10
  br label %11

11:                                               ; preds = %8, %7, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_cabac_mb_cbp_luma(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !132 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %4 = load i32, ptr %3, align 8, !tbaa !92
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 14
  %6 = load i32, ptr %5, align 4, !tbaa !133
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 13
  %8 = load i32, ptr %7, align 16, !tbaa !134
  %9 = shl i32 %6, 30
  %10 = ashr i32 %9, 31
  %11 = add nsw i32 %10, 76
  %12 = lshr i32 %8, 1
  %13 = and i32 %12, 2
  %14 = sub nuw nsw i32 %11, %13
  %15 = and i32 %4, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %14, i32 noundef %15) #10
  %16 = lshr i32 %8, 2
  %17 = and i32 %16, 2
  %18 = or disjoint i32 %15, %17
  %19 = sub nuw nsw i32 76, %18
  %20 = lshr i32 %4, 1
  %21 = and i32 %20, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %19, i32 noundef %21) #10
  %22 = shl i32 %6, 28
  %23 = ashr i32 %22, 31
  %24 = shl i32 %4, 1
  %25 = and i32 %24, 2
  %26 = sub nsw i32 %23, %25
  %27 = add nsw i32 %26, 76
  %28 = lshr i32 %4, 2
  %29 = and i32 %28, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %27, i32 noundef %29) #10
  %30 = and i32 %4, 2
  %31 = or disjoint i32 %30, %29
  %32 = sub nuw nsw i32 76, %31
  %33 = lshr i32 %4, 3
  %34 = and i32 %33, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %32, i32 noundef %34) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_cabac_mb_cbp_chroma(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !135 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 14
  %4 = load i32, ptr %3, align 4, !tbaa !133
  %5 = and i32 %4, 48
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 13
  %7 = load i32, ptr %6, align 16, !tbaa !134
  %8 = and i32 %7, 48
  %9 = icmp ne i32 %5, 0
  %10 = icmp ne i32 %4, -1
  %11 = and i1 %10, %9
  %12 = zext i1 %11 to i32
  %13 = icmp eq i32 %8, 0
  %14 = icmp eq i32 %7, -1
  %15 = or disjoint i32 %12, 2
  %16 = or i1 %14, %13
  %17 = select i1 %16, i32 %12, i32 %15
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  %19 = load i32, ptr %18, align 4, !tbaa !93
  %20 = icmp eq i32 %19, 0
  %21 = add nuw nsw i32 %17, 77
  br i1 %20, label %22, label %23

22:                                               ; preds = %2
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %21, i32 noundef 0) #10
  br label %32

23:                                               ; preds = %2
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %21, i32 noundef 1) #10
  %24 = icmp eq i32 %5, 32
  %25 = select i1 %24, i32 5, i32 4
  %26 = icmp eq i32 %8, 32
  %27 = or disjoint i32 %25, 2
  %28 = select i1 %26, i32 %27, i32 %25
  %29 = add nuw nsw i32 %28, 77
  %30 = load i32, ptr %18, align 4, !tbaa !93
  %31 = ashr i32 %30, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %29, i32 noundef %31) #10
  br label %32

32:                                               ; preds = %23, %22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @x264_mb_transform_8x8_allowed(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !136 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  %3 = load ptr, ptr %2, align 16, !tbaa !74
  %4 = getelementptr inbounds %struct.x264_pps_t, ptr %3, i64 0, i32 15
  %5 = load i32, ptr %4, align 4, !tbaa !75
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 53
  %9 = load i32, ptr %8, align 8, !tbaa !67
  %10 = icmp eq i32 %9, 5
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [19 x i8], ptr @x264_mb_transform_8x8_allowed.partition_tab, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !80
  %15 = zext i8 %14 to i32
  br label %21

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55
  %18 = load i32, ptr %17, align 16, !tbaa !80
  %19 = icmp eq i32 %18, 50529027
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %1, %16, %11
  %22 = phi i32 [ %15, %11 ], [ %20, %16 ], [ 0, %1 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_cabac_mb_qp_delta(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !137 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 68
  %4 = load i32, ptr %3, align 16, !tbaa !138
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 70
  %6 = load i32, ptr %5, align 8, !tbaa !139
  %7 = sub nsw i32 %4, %6
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 53
  %9 = load i32, ptr %8, align 8, !tbaa !67
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 41
  %13 = load ptr, ptr %12, align 16, !tbaa !140
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !108
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i16, ptr %13, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !124
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 %6, ptr %3, align 16, !tbaa !138
  br label %21

21:                                               ; preds = %20, %11, %2
  %22 = phi i32 [ %7, %11 ], [ 0, %20 ], [ %7, %2 ]
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 71
  %24 = load i32, ptr %23, align 4, !tbaa !141
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 41
  %28 = load ptr, ptr %27, align 16, !tbaa !140
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 33
  %30 = load i32, ptr %29, align 4, !tbaa !142
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i16, ptr %28, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !124
  %34 = icmp ne i16 %33, 0
  %35 = zext i1 %34 to i32
  br label %36

36:                                               ; preds = %26, %21
  %37 = phi i32 [ 0, %21 ], [ %35, %26 ]
  %38 = icmp eq i32 %22, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %36
  %40 = icmp slt i32 %22, 1
  %41 = mul nsw i32 %22, -2
  %42 = shl nuw nsw i32 %22, 1
  %43 = add nsw i32 %42, -1
  %44 = select i1 %40, i32 %41, i32 %43
  %45 = icmp sgt i32 %44, 50
  %46 = icmp ne i32 %44, 52
  %47 = and i1 %45, %46
  %48 = sub nsw i32 103, %44
  %49 = select i1 %47, i32 %48, i32 %44
  br label %50

50:                                               ; preds = %50, %39
  %51 = phi i32 [ %37, %39 ], [ %55, %50 ]
  %52 = phi i32 [ %49, %39 ], [ %56, %50 ]
  %53 = add nuw nsw i32 %51, 60
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %53, i32 noundef 1) #10
  %54 = lshr i32 %51, 1
  %55 = add nuw nsw i32 %54, 2
  %56 = add nsw i32 %52, -1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %50, !llvm.loop !143

58:                                               ; preds = %50, %36
  %59 = phi i32 [ %37, %36 ], [ %55, %50 ]
  %60 = add nuw nsw i32 %59, 60
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %60, i32 noundef 0) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @x264_cabac_mb_cbf_ctxidxinc(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 !PGOFuncName !144 {
  switch i32 %1, label %59 [
    i32 1, label %5
    i32 2, label %5
    i32 4, label %5
    i32 0, label %31
    i32 3, label %42
  ]

5:                                                ; preds = %4, %4, %4
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !79
  %9 = add nsw i32 %8, -1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !80
  %13 = zext i8 %12 to i32
  %14 = add nsw i32 %8, -8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !80
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %3, 7
  %20 = or disjoint i32 %19, 127
  %21 = and i32 %20, %13
  %22 = and i32 %20, %18
  %23 = shl nuw nsw i32 %1, 2
  %24 = add nuw nsw i32 %23, 85
  %25 = icmp eq i32 %22, 0
  %26 = select i1 %25, i32 0, i32 2
  %27 = icmp ne i32 %21, 0
  %28 = zext i1 %27 to i32
  %29 = add nuw nsw i32 %24, %28
  %30 = add nuw nsw i32 %29, %26
  br label %60

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 14
  %33 = load i32, ptr %32, align 4, !tbaa !133
  %34 = lshr i32 %33, 8
  %35 = and i32 %34, 1
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 13
  %37 = load i32, ptr %36, align 16, !tbaa !134
  %38 = lshr i32 %37, 7
  %39 = and i32 %38, 2
  %40 = add nuw nsw i32 %35, 85
  %41 = add nuw nsw i32 %40, %39
  br label %60

42:                                               ; preds = %4
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 14
  %44 = load i32, ptr %43, align 4, !tbaa !133
  %45 = icmp eq i32 %44, -1
  %46 = add nsw i32 %2, -16
  %47 = lshr i32 %44, %46
  %48 = and i32 %47, 1
  %49 = select i1 %45, i32 %3, i32 %48
  %50 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 13
  %51 = load i32, ptr %50, align 16, !tbaa !134
  %52 = icmp eq i32 %51, -1
  %53 = lshr i32 %51, %46
  %54 = and i32 %53, 1
  %55 = select i1 %52, i32 %3, i32 %54
  %56 = shl nuw nsw i32 %55, 1
  %57 = add nuw i32 %49, 97
  %58 = add nuw i32 %57, %56
  br label %60

59:                                               ; preds = %4
  unreachable

60:                                               ; preds = %42, %31, %5
  %61 = phi i32 [ %58, %42 ], [ %41, %31 ], [ %30, %5 ]
  ret i32 %61
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @block_residual_write_cabac(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !145 {
  %5 = alloca [64 x i32], align 16
  %6 = alloca [64 x i32], align 16
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %8 = load i32, ptr %7, align 4, !tbaa !111
  %9 = sext i32 %8 to i64
  %10 = zext nneg i32 %2 to i64
  %11 = getelementptr inbounds [2 x [6 x i16]], ptr @significant_coeff_flag_offset, i64 0, i64 %9, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !124
  %13 = zext i16 %12 to i32
  %14 = getelementptr inbounds [2 x [6 x i16]], ptr @last_coeff_flag_offset, i64 0, i64 %9, i64 %10
  %15 = load i16, ptr %14, align 2, !tbaa !124
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds [6 x i16], ptr @coeff_abs_level_m1_offset, i64 0, i64 %10
  %18 = load i16, ptr %17, align 2, !tbaa !124
  %19 = zext i16 %18 to i32
  %20 = getelementptr inbounds [2 x [63 x i8]], ptr @significant_coeff_flag_offset_8x8, i64 0, i64 %9
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #12
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 11, i64 %10
  %22 = load ptr, ptr %21, align 8, !tbaa !70
  %23 = tail call i32 %22(ptr noundef %3) #10
  %24 = icmp eq i32 %2, 5
  br i1 %24, label %25, label %78

25:                                               ; preds = %4
  %26 = zext i32 %23 to i64
  br label %27

27:                                               ; preds = %25, %57
  %28 = phi i64 [ 0, %25 ], [ %64, %57 ]
  %29 = phi i32 [ 0, %25 ], [ %60, %57 ]
  %30 = getelementptr inbounds i16, ptr %3, i64 %28
  %31 = load i16, ptr %30, align 2, !tbaa !124
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %55, label %33

33:                                               ; preds = %27
  %34 = tail call i16 @llvm.abs.i16(i16 %31, i1 false)
  %35 = zext i16 %34 to i32
  %36 = add nsw i32 %35, -1
  %37 = sext i32 %29 to i64
  %38 = getelementptr inbounds [64 x i32], ptr %5, i64 0, i64 %37
  store i32 %36, ptr %38, align 4, !tbaa !79
  %39 = lshr i16 %31, 15
  %40 = zext nneg i16 %39 to i32
  %41 = getelementptr inbounds [64 x i32], ptr %6, i64 0, i64 %37
  store i32 %40, ptr %41, align 4, !tbaa !79
  %42 = add nsw i32 %29, 1
  %43 = getelementptr inbounds i8, ptr %20, i64 %28
  %44 = load i8, ptr %43, align 1, !tbaa !80
  %45 = zext i8 %44 to i32
  %46 = add nuw nsw i32 %45, %13
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %46, i32 noundef 1) #10
  %47 = icmp eq i64 %28, %26
  br i1 %47, label %48, label %53

48:                                               ; preds = %33
  %49 = getelementptr inbounds [63 x i8], ptr @last_coeff_flag_offset_8x8, i64 0, i64 %26
  %50 = load i8, ptr %49, align 1, !tbaa !80
  %51 = zext i8 %50 to i32
  %52 = add nuw nsw i32 %51, %16
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %52, i32 noundef 1) #10
  br label %125

53:                                               ; preds = %33
  %54 = getelementptr inbounds [63 x i8], ptr @last_coeff_flag_offset_8x8, i64 0, i64 %28
  br label %57

55:                                               ; preds = %27
  %56 = getelementptr inbounds i8, ptr %20, i64 %28
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi ptr [ %56, %55 ], [ %54, %53 ]
  %59 = phi i32 [ %13, %55 ], [ %16, %53 ]
  %60 = phi i32 [ %29, %55 ], [ %42, %53 ]
  %61 = load i8, ptr %58, align 1, !tbaa !80
  %62 = zext i8 %61 to i32
  %63 = add nuw nsw i32 %59, %62
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %63, i32 noundef 0) #10
  %64 = add nuw nsw i64 %28, 1
  %65 = icmp eq i64 %64, 63
  br i1 %65, label %66, label %27

66:                                               ; preds = %57
  %67 = getelementptr inbounds i16, ptr %3, i64 63
  %68 = load i16, ptr %67, align 2, !tbaa !124
  %69 = tail call i16 @llvm.abs.i16(i16 %68, i1 false)
  %70 = zext i16 %69 to i32
  %71 = add nsw i32 %70, -1
  %72 = sext i32 %60 to i64
  %73 = getelementptr inbounds [64 x i32], ptr %5, i64 0, i64 %72
  store i32 %71, ptr %73, align 4, !tbaa !79
  %74 = lshr i16 %68, 15
  %75 = zext nneg i16 %74 to i32
  %76 = getelementptr inbounds [64 x i32], ptr %6, i64 0, i64 %72
  store i32 %75, ptr %76, align 4, !tbaa !79
  %77 = add nsw i32 %60, 1
  br label %125

78:                                               ; preds = %4
  %79 = getelementptr inbounds [5 x i8], ptr @count_cat_m1, i64 0, i64 %10
  %80 = load i8, ptr %79, align 1, !tbaa !80
  %81 = zext i16 %12 to i64
  %82 = zext i32 %23 to i64
  %83 = zext i8 %80 to i64
  %84 = zext i16 %15 to i64
  br label %85

85:                                               ; preds = %106, %78
  %86 = phi i64 [ %111, %106 ], [ 0, %78 ]
  %87 = phi i32 [ %108, %106 ], [ 0, %78 ]
  %88 = getelementptr inbounds i16, ptr %3, i64 %86
  %89 = load i16, ptr %88, align 2, !tbaa !124
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %106, label %91

91:                                               ; preds = %85
  %92 = tail call i16 @llvm.abs.i16(i16 %89, i1 false)
  %93 = zext i16 %92 to i32
  %94 = add nsw i32 %93, -1
  %95 = sext i32 %87 to i64
  %96 = getelementptr inbounds [64 x i32], ptr %5, i64 0, i64 %95
  store i32 %94, ptr %96, align 4, !tbaa !79
  %97 = lshr i16 %89, 15
  %98 = zext nneg i16 %97 to i32
  %99 = getelementptr inbounds [64 x i32], ptr %6, i64 0, i64 %95
  store i32 %98, ptr %99, align 4, !tbaa !79
  %100 = add nsw i32 %87, 1
  %101 = add nuw nsw i64 %86, %81
  %102 = trunc i64 %101 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %102, i32 noundef 1) #10
  %103 = icmp eq i64 %86, %82
  br i1 %103, label %104, label %106

104:                                              ; preds = %91
  %105 = add nuw nsw i32 %23, %16
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %105, i32 noundef 1) #10
  br label %125

106:                                              ; preds = %85, %91
  %107 = phi i64 [ %84, %91 ], [ %81, %85 ]
  %108 = phi i32 [ %100, %91 ], [ %87, %85 ]
  %109 = add nuw nsw i64 %86, %107
  %110 = trunc i64 %109 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %110, i32 noundef 0) #10
  %111 = add nuw nsw i64 %86, 1
  %112 = icmp eq i64 %111, %83
  br i1 %112, label %113, label %85

113:                                              ; preds = %106
  %114 = getelementptr inbounds i16, ptr %3, i64 %83
  %115 = load i16, ptr %114, align 2, !tbaa !124
  %116 = tail call i16 @llvm.abs.i16(i16 %115, i1 false)
  %117 = zext i16 %116 to i32
  %118 = add nsw i32 %117, -1
  %119 = sext i32 %108 to i64
  %120 = getelementptr inbounds [64 x i32], ptr %5, i64 0, i64 %119
  store i32 %118, ptr %120, align 4, !tbaa !79
  %121 = lshr i16 %115, 15
  %122 = zext nneg i16 %121 to i32
  %123 = getelementptr inbounds [64 x i32], ptr %6, i64 0, i64 %119
  store i32 %122, ptr %123, align 4, !tbaa !79
  %124 = add nsw i32 %108, 1
  br label %125

125:                                              ; preds = %104, %113, %48, %66
  %126 = phi i32 [ %42, %48 ], [ %77, %66 ], [ %100, %104 ], [ %124, %113 ]
  %127 = sext i32 %126 to i64
  br label %128

128:                                              ; preds = %158, %125
  %129 = phi i64 [ %131, %158 ], [ %127, %125 ]
  %130 = phi i64 [ %162, %158 ], [ 0, %125 ]
  %131 = add nsw i64 %129, -1
  %132 = getelementptr inbounds [64 x i32], ptr %5, i64 0, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !79
  %134 = icmp slt i32 %133, 14
  %135 = getelementptr inbounds [8 x i8], ptr @coeff_abs_level1_ctx, i64 0, i64 %130
  %136 = load i8, ptr %135, align 1, !tbaa !80
  %137 = zext i8 %136 to i32
  %138 = add nuw nsw i32 %137, %19
  %139 = icmp eq i32 %133, 0
  br i1 %139, label %157, label %140

140:                                              ; preds = %128
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %138, i32 noundef 1) #10
  %141 = getelementptr inbounds [8 x i8], ptr @coeff_abs_levelgt1_ctx, i64 0, i64 %130
  %142 = load i8, ptr %141, align 1, !tbaa !80
  %143 = zext i8 %142 to i32
  %144 = add nuw nsw i32 %143, %19
  %145 = icmp sgt i32 %133, 1
  br i1 %145, label %146, label %154

146:                                              ; preds = %140
  %147 = tail call i32 @llvm.smin.i32(i32 %133, i32 14)
  %148 = add nsw i32 %147, -2
  br label %149

149:                                              ; preds = %146, %149
  %150 = phi i32 [ %151, %149 ], [ 0, %146 ]
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %144, i32 noundef 1) #10
  %151 = add nuw nsw i32 %150, 1
  %152 = icmp eq i32 %150, %148
  br i1 %152, label %153, label %149, !llvm.loop !146

153:                                              ; preds = %149
  br i1 %134, label %154, label %155

154:                                              ; preds = %140, %153
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %144, i32 noundef 0) #10
  br label %158

155:                                              ; preds = %153
  %156 = add nsw i32 %133, -14
  tail call void @x264_cabac_encode_ue_bypass(ptr noundef %1, i32 noundef 0, i32 noundef %156) #10
  br label %158

157:                                              ; preds = %128
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %138, i32 noundef 0) #10
  br label %158

158:                                              ; preds = %154, %155, %157
  %159 = phi ptr [ @coeff_abs_level_transition, %157 ], [ getelementptr inbounds ([2 x [8 x i8]], ptr @coeff_abs_level_transition, i64 0, i64 1), %155 ], [ getelementptr inbounds ([2 x [8 x i8]], ptr @coeff_abs_level_transition, i64 0, i64 1), %154 ]
  %160 = getelementptr inbounds [8 x i8], ptr %159, i64 0, i64 %130
  %161 = load i8, ptr %160, align 1, !tbaa !80
  %162 = zext i8 %161 to i64
  %163 = getelementptr inbounds [64 x i32], ptr %6, i64 0, i64 %131
  %164 = load i32, ptr %163, align 4, !tbaa !79
  tail call void @x264_cabac_encode_bypass_c(ptr noundef %1, i32 noundef %164) #10
  %165 = icmp sgt i64 %129, 1
  br i1 %165, label %128, label %166, !llvm.loop !147

166:                                              ; preds = %158
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_cabac_mb_type_intra(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 !PGOFuncName !148 {
  %10 = icmp ult i32 %2, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %3, i32 noundef 0) #10
  br label %36

12:                                               ; preds = %9
  %13 = icmp eq i32 %2, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %3, i32 noundef 1) #10
  tail call void @x264_cabac_encode_flush(ptr noundef %0, ptr noundef %1) #10
  br label %36

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 59
  %17 = load i32, ptr %16, align 16, !tbaa !149
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode16x16_fix, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !80
  %21 = zext i8 %20 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %3, i32 noundef 1) #10
  tail call void @x264_cabac_encode_terminal_c(ptr noundef %1) #10
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %23 = load i32, ptr %22, align 8, !tbaa !92
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %4, i32 noundef %25) #10
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  %27 = load i32, ptr %26, align 4, !tbaa !93
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %5, i32 noundef 0) #10
  br label %33

30:                                               ; preds = %15
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %5, i32 noundef 1) #10
  %31 = load i32, ptr %26, align 4, !tbaa !93
  %32 = ashr i32 %31, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %6, i32 noundef %32) #10
  br label %33

33:                                               ; preds = %30, %29
  %34 = lshr i32 %21, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %7, i32 noundef %34) #10
  %35 = and i32 %21, 1
  tail call void @x264_cabac_encode_decision_c(ptr noundef %1, i32 noundef %8, i32 noundef %35) #10
  br label %36

36:                                               ; preds = %14, %33, %11
  ret void
}

; Function Attrs: optsize
declare void @x264_cabac_encode_flush(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_cabac_encode_terminal_c(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_mb_predict_mv(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i16 @x264_cabac_mvd_sum(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !150 {
  %3 = load i8, ptr %0, align 1, !tbaa !80
  %4 = zext i8 %3 to i32
  %5 = load i8, ptr %1, align 1, !tbaa !80
  %6 = zext i8 %5 to i32
  %7 = add nuw nsw i32 %6, %4
  %8 = getelementptr inbounds i8, ptr %0, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !80
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds i8, ptr %1, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !80
  %13 = zext i8 %12 to i32
  %14 = add nuw nsw i32 %13, %10
  %15 = icmp ugt i32 %7, 2
  %16 = zext i1 %15 to i16
  %17 = icmp ugt i32 %7, 32
  %18 = zext i1 %17 to i16
  %19 = add nuw nsw i16 %16, %18
  %20 = icmp ugt i32 %14, 2
  %21 = zext i1 %20 to i16
  %22 = icmp ugt i32 %14, 32
  %23 = zext i1 %22 to i16
  %24 = add nuw nsw i16 %21, %23
  %25 = shl nuw nsw i16 %24, 8
  %26 = or disjoint i16 %25, %19
  ret i16 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @x264_cabac_mb_mvd_cpn(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !151 {
  %5 = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %6 = icmp eq i32 %1, 0
  %7 = select i1 %6, i32 40, i32 47
  %8 = icmp eq i32 %2, 0
  %9 = add nuw nsw i32 %7, %3
  br i1 %8, label %10, label %11

10:                                               ; preds = %4
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef %9, i32 noundef 0) #10
  br label %47

11:                                               ; preds = %4
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef %9, i32 noundef 1) #10
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
  %22 = load i8, ptr %21, align 1, !tbaa !80
  %23 = zext i8 %22 to i32
  %24 = add nuw nsw i32 %7, %23
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef %24, i32 noundef 0) #10
  br label %45

25:                                               ; preds = %15, %25
  %26 = phi i64 [ 1, %15 ], [ %32, %25 ]
  %27 = add nsw i64 %26, -1
  %28 = getelementptr inbounds [8 x i8], ptr @x264_cabac_mb_mvd_cpn.ctxes, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !80
  %30 = zext i8 %29 to i32
  %31 = add nuw nsw i32 %7, %30
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef %31, i32 noundef 1) #10
  %32 = add nuw nsw i64 %26, 1
  %33 = icmp eq i64 %32, %17
  br i1 %33, label %18, label %25, !llvm.loop !152

34:                                               ; preds = %36
  %35 = add nsw i32 %5, -9
  tail call void @x264_cabac_encode_ue_bypass(ptr noundef %0, i32 noundef 3, i32 noundef %35) #10
  br label %45

36:                                               ; preds = %11, %36
  %37 = phi i64 [ %43, %36 ], [ 1, %11 ]
  %38 = add nsw i64 %37, -1
  %39 = getelementptr inbounds [8 x i8], ptr @x264_cabac_mb_mvd_cpn.ctxes, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !80
  %41 = zext i8 %40 to i32
  %42 = add nuw nsw i32 %7, %41
  tail call void @x264_cabac_encode_decision_c(ptr noundef %0, i32 noundef %42, i32 noundef 1) #10
  %43 = add nuw nsw i64 %37, 1
  %44 = icmp eq i64 %43, 9
  br i1 %44, label %34, label %36, !llvm.loop !153

45:                                               ; preds = %34, %18
  %46 = lshr i32 %2, 31
  tail call void @x264_cabac_encode_bypass_c(ptr noundef %0, i32 noundef %46) #10
  br label %47

47:                                               ; preds = %45, %10
  %48 = tail call i32 @llvm.umin.i32(i32 %5, i32 33)
  ret i32 %48
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @pack8to16(i32 noundef %0, i32 noundef %1) unnamed_addr #7 !PGOFuncName !154 {
  %3 = shl nuw nsw i32 %1, 8
  %4 = add nuw nsw i32 %3, %0
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: optsize
declare void @x264_cabac_encode_ue_bypass(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_cabac_encode_bypass_c(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @x264_macroblock_cache_rect(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 !PGOFuncName !155 {
  %5 = trunc i32 %3 to i16
  %6 = mul nuw i32 %3, 65537
  %7 = zext i32 %6 to i64
  %8 = mul nuw i64 %7, 4294967297
  switch i32 %1, label %33 [
    i32 2, label %9
    i32 4, label %17
    i32 8, label %25
  ]

9:                                                ; preds = %4
  store i16 %5, ptr %0, align 2, !tbaa !80
  %10 = icmp eq i32 %2, 1
  br i1 %10, label %33, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds i8, ptr %0, i64 16
  store i16 %5, ptr %12, align 2, !tbaa !80
  %13 = icmp eq i32 %2, 2
  br i1 %13, label %33, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds i8, ptr %0, i64 32
  store i16 %5, ptr %15, align 2, !tbaa !80
  %16 = getelementptr inbounds i8, ptr %0, i64 48
  store i16 %5, ptr %16, align 2, !tbaa !80
  br label %33

17:                                               ; preds = %4
  store i32 %6, ptr %0, align 4, !tbaa !80
  %18 = icmp eq i32 %2, 1
  br i1 %18, label %33, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds i8, ptr %0, i64 16
  store i32 %6, ptr %20, align 4, !tbaa !80
  %21 = icmp eq i32 %2, 2
  br i1 %21, label %33, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, ptr %0, i64 32
  store i32 %6, ptr %23, align 4, !tbaa !80
  %24 = getelementptr inbounds i8, ptr %0, i64 48
  store i32 %6, ptr %24, align 4, !tbaa !80
  br label %33

25:                                               ; preds = %4
  store i64 %8, ptr %0, align 8, !tbaa !80
  %26 = icmp eq i32 %2, 1
  br i1 %26, label %33, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds i8, ptr %0, i64 16
  store i64 %8, ptr %28, align 8, !tbaa !80
  %29 = icmp eq i32 %2, 2
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, ptr %0, i64 32
  store i64 %8, ptr %31, align 8, !tbaa !80
  %32 = getelementptr inbounds i8, ptr %0, i64 48
  store i64 %8, ptr %32, align 8, !tbaa !80
  br label %33

33:                                               ; preds = %14, %30, %22, %4, %27, %25, %19, %17, %11, %9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }

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
!68 = !{!35, !37, i64 26712}
!69 = !{!49, !41, i64 24}
!70 = !{!41, !41, i64 0}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.mustprogress"}
!73 = distinct !{!73, !72}
!74 = !{!35, !41, i64 3328}
!75 = !{!76, !37, i64 60}
!76 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !37, i64 56, !37, i64 60, !37, i64 64, !38, i64 72}
!77 = !{!35, !37, i64 17396}
!78 = !{i32 0, i32 128}
!79 = !{!37, !37, i64 0}
!80 = !{!38, !38, i64 0}
!81 = distinct !{!81, !72}
!82 = !{!35, !37, i64 17388}
!83 = distinct !{!83, !72}
!84 = distinct !{!84, !72}
!85 = distinct !{!85, !72}
!86 = distinct !{!86, !72}
!87 = distinct !{!87, !72}
!88 = distinct !{!88, !72}
!89 = distinct !{!89, !72}
!90 = distinct !{!90, !72}
!91 = !{i32 0, i32 256}
!92 = !{!35, !37, i64 17400}
!93 = !{!35, !37, i64 17404}
!94 = !{i32 85, i32 105}
!95 = distinct !{!95, !72}
!96 = distinct !{!96, !72}
!97 = distinct !{!97, !72}
!98 = distinct !{!98, !72}
!99 = !{!35, !37, i64 26716}
!100 = !{!"cabac.c:x264_cabac_pos"}
!101 = !{!49, !41, i64 16}
!102 = !{!49, !37, i64 12}
!103 = !{!49, !37, i64 8}
!104 = !{!"cabac.c:x264_cabac_mb_type"}
!105 = !{!35, !37, i64 7268}
!106 = !{!35, !37, i64 16388}
!107 = !{!35, !41, i64 16616}
!108 = !{!35, !37, i64 16392}
!109 = !{!35, !37, i64 16372}
!110 = !{!35, !37, i64 25772}
!111 = !{!35, !37, i64 16436}
!112 = !{!"cabac.c:x264_cabac_mb_transform_size"}
!113 = !{!35, !37, i64 25768}
!114 = !{!"cabac.c:x264_mb_predict_intra4x4_mode"}
!115 = !{!"cabac.c:x264_cabac_mb_intra4x4_pred_mode"}
!116 = !{!"cabac.c:x264_cabac_mb_intra_chroma_pred_mode"}
!117 = !{!35, !37, i64 17412}
!118 = !{!35, !41, i64 16664}
!119 = !{!35, !37, i64 16600}
!120 = !{!35, !37, i64 16604}
!121 = !{!"cabac.c:x264_cabac_mb_ref"}
!122 = distinct !{!122, !72}
!123 = !{!"cabac.c:x264_cabac_mb_mvd"}
!124 = !{!125, !125, i64 0}
!125 = !{!"short", !38, i64 0}
!126 = !{i16 0, i16 515}
!127 = !{i32 0, i32 16842496}
!128 = !{!"cabac.c:x264_macroblock_cache_mvd"}
!129 = !{!"cabac.c:x264_cabac_mb_sub_p_partition"}
!130 = !{!"cabac.c:x264_cabac_mb8x8_mvd"}
!131 = !{!"cabac.c:x264_cabac_mb_sub_b_partition"}
!132 = !{!"cabac.c:x264_cabac_mb_cbp_luma"}
!133 = !{!35, !37, i64 25780}
!134 = !{!35, !37, i64 25776}
!135 = !{!"cabac.c:x264_cabac_mb_cbp_chroma"}
!136 = !{!"cabac.c:x264_mb_transform_8x8_allowed"}
!137 = !{!"cabac.c:x264_cabac_mb_qp_delta"}
!138 = !{!35, !37, i64 25792}
!139 = !{!35, !37, i64 25800}
!140 = !{!35, !41, i64 16640}
!141 = !{!35, !37, i64 25804}
!142 = !{!35, !37, i64 16596}
!143 = distinct !{!143, !72}
!144 = !{!"cabac.c:x264_cabac_mb_cbf_ctxidxinc"}
!145 = !{!"cabac.c:block_residual_write_cabac"}
!146 = distinct !{!146, !72}
!147 = distinct !{!147, !72}
!148 = !{!"cabac.c:x264_cabac_mb_type_intra"}
!149 = !{!35, !37, i64 17408}
!150 = !{!"cabac.c:x264_cabac_mvd_sum"}
!151 = !{!"cabac.c:x264_cabac_mb_mvd_cpn"}
!152 = distinct !{!152, !72}
!153 = distinct !{!153, !72}
!154 = !{!"cabac.c:pack8to16"}
!155 = !{!"cabac.c:x264_macroblock_cache_rect"}
