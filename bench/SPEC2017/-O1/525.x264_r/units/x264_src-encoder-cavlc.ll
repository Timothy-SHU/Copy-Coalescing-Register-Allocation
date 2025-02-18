; ModuleID = 'x264_src/encoder/cavlc.c'
source_filename = "x264_src/encoder/cavlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.vlc_t = type { i8, i8 }
%struct.vlc_large_t = type { i16, i8, i8 }
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
%struct.x264_run_level_t = type { i32, [16 x i16], [16 x i8] }

@x264_macroblock_write_cavlc.i_offsets = internal unnamed_addr constant [3 x i8] c"\05\17\00", align 1
@x264_mb_pred_mode4x4_fix = internal unnamed_addr constant [13 x i8] c"\FF\00\01\02\03\04\05\06\07\08\02\02\02", align 1
@x264_scan8 = internal unnamed_addr constant [27 x i32] [i32 12, i32 13, i32 20, i32 21, i32 14, i32 15, i32 22, i32 23, i32 28, i32 29, i32 36, i32 37, i32 30, i32 31, i32 38, i32 39, i32 9, i32 10, i32 17, i32 18, i32 33, i32 34, i32 41, i32 42, i32 44, i32 46, i32 47], align 16
@x264_mb_pred_mode8x8c_fix = internal unnamed_addr constant [7 x i8] c"\00\01\02\03\00\00\00", align 1
@x264_mb_pred_mode16x16_fix = internal unnamed_addr constant [7 x i8] c"\00\01\02\03\02\02\02", align 1
@sub_mb_type_p_to_golomb = internal unnamed_addr constant [4 x i8] c"\03\01\02\00", align 1
@sub_mb_type_b_to_golomb = internal unnamed_addr constant [13 x i8] c"\0A\04\05\01\0B\06\07\02\0C\08\09\03\00", align 1
@x264_mb_partition_listX_table = internal unnamed_addr constant [2 x [17 x i8]] [[17 x i8] c"\01\01\01\01\00\00\00\00\01\01\01\01\00\00\00\00\00", [17 x i8] c"\00\00\00\00\01\01\01\01\01\01\01\01\00\00\00\00\00"], align 16
@x264_mb_type_list_table = internal unnamed_addr constant [19 x [2 x [2 x i8]]] [[2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\00\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\00\01"], [2 x [2 x i8]] [[2 x i8] c"\00\01", [2 x i8] c"\01\00"], [2 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\00\01", [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\00"], [2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\01"], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer], align 16
@mb_type_b_to_golomb = internal unnamed_addr constant [3 x [9 x i8]] [[9 x i8] c"\04\08\0C\0A\06\0E\10\12\14", [9 x i8] c"\05\09\0D\0B\07\0F\11\13\15", [9 x i8] c"\01\FF\FF\FF\02\FF\FF\FF\03"], align 16
@intra4x4_cbp_to_golomb = internal unnamed_addr constant [48 x i8] c"\03\1D\1E\11\1F\12%\08 &\13\09\14\0A\0B\02\10!\22\15#\16'\04$(\17\05\18\06\07\01)*+\19,\1A.\0C-/\1B\0D\1C\0E\0F\00", align 16
@inter_cbp_to_golomb = internal unnamed_addr constant [48 x i8] c"\00\02\03\07\04\08\11\0D\05\12\09\0E\0A\0F\10\0B\01 !$\22%,(#-&)'*+\13\06\18\19\14\1A\15.\1C\1B/\16\1D\17\1E\1F\0C", align 16
@ct_index = internal unnamed_addr constant [17 x i8] c"\00\00\01\01\02\02\02\02\03\03\03\03\03\03\03\03\03", align 16
@x264_coeff0_token = external local_unnamed_addr constant [5 x %struct.vlc_t], align 1
@x264_ue_size_tab = internal unnamed_addr constant [256 x i8] c"\01\01\03\03\05\05\05\05\07\07\07\07\07\07\07\07\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F", align 16
@x264_mb_transform_8x8_allowed.partition_tab = internal unnamed_addr constant [19 x i8] c"\00\00\00\00\01\02\00\01\01\01\01\01\01\01\01\01\01\01\00", align 16
@block_residual_write_cavlc.ctz_index = internal unnamed_addr constant [8 x i8] c"\03\00\01\00\02\00\01\00", align 1
@block_residual_write_cavlc.count_cat = internal unnamed_addr constant [5 x i8] c"\10\0F\10\04\0F", align 1
@x264_coeff_token = external local_unnamed_addr constant [5 x [16 x [4 x %struct.vlc_t]]], align 16
@x264_level_token = external local_unnamed_addr global [7 x [128 x %struct.vlc_large_t]], align 16
@x264_total_zeros_dc = external local_unnamed_addr constant [3 x [4 x %struct.vlc_t]], align 16
@x264_total_zeros = external local_unnamed_addr constant [15 x [16 x %struct.vlc_t]], align 16
@x264_run_before = external local_unnamed_addr constant [7 x [16 x %struct.vlc_t]], align 16
@block_residual_write_cavlc_escape.next_suffix = internal unnamed_addr constant [7 x i16] [i16 0, i16 3, i16 6, i16 12, i16 24, i16 48, i16 -1], align 2
@.str = private unnamed_addr constant [55 x i8] c"OVERFLOW levelcode=%d is only allowed in High Profile\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_write_cavlc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 53
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %6 = load i32, ptr %5, align 16, !tbaa !64
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [3 x i8], ptr @x264_macroblock_write_cavlc.i_offsets, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !65
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  %13 = load ptr, ptr %2, align 8, !tbaa !67
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %15, %14
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !68
  %19 = trunc i64 %16 to i32
  %20 = shl i32 %19, 3
  %21 = add i32 %20, %18
  %22 = add i32 %21, -64
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %24 = load i32, ptr %23, align 4, !tbaa !69
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %57, label %26

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %28 = load i32, ptr %27, align 4, !tbaa !70
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 38
  %33 = load ptr, ptr %32, align 8, !tbaa !71
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %35 = load i32, ptr %34, align 8, !tbaa !72
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !73
  %38 = sub nsw i32 %35, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %33, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !65
  switch i8 %41, label %57 [
    i8 6, label %42
    i8 18, label %42
  ]

42:                                               ; preds = %31, %31, %26
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %44 = load i32, ptr %43, align 4, !tbaa !74
  %45 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %46 = load i64, ptr %45, align 8, !tbaa !75
  %47 = shl i64 %46, 1
  %48 = zext i32 %44 to i64
  %49 = or i64 %47, %48
  store i64 %49, ptr %45, align 8, !tbaa !75
  %50 = add nsw i32 %18, -1
  store i32 %50, ptr %17, align 8, !tbaa !68
  %51 = icmp eq i32 %50, 32
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = trunc i64 %49 to i32
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  store i32 %54, ptr %12, align 4, !tbaa !65
  %55 = load ptr, ptr %11, align 8, !tbaa !66
  %56 = getelementptr inbounds i8, ptr %55, i64 4
  store ptr %56, ptr %11, align 8, !tbaa !66
  store i32 64, ptr %17, align 8, !tbaa !68
  br label %57

57:                                               ; preds = %52, %42, %31, %1
  %58 = icmp eq i32 %4, 3
  br i1 %58, label %59, label %195

59:                                               ; preds = %57
  %60 = load ptr, ptr %2, align 8, !tbaa !67
  %61 = add nuw nsw i32 %10, 26
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !65
  %65 = zext i8 %64 to i32
  %66 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %67 = load i64, ptr %66, align 8, !tbaa !75
  %68 = zext nneg i8 %64 to i64
  %69 = shl i64 %67, %68
  %70 = or i64 %69, %62
  store i64 %70, ptr %66, align 8, !tbaa !75
  %71 = load i32, ptr %17, align 8, !tbaa !68
  %72 = sub nsw i32 %71, %65
  store i32 %72, ptr %17, align 8, !tbaa !68
  %73 = icmp slt i32 %72, 33
  br i1 %73, label %74, label %84

74:                                               ; preds = %59
  %75 = zext nneg i32 %72 to i64
  %76 = shl i64 %70, %75
  %77 = tail call i64 @llvm.bswap.i64(i64 %76)
  %78 = trunc i64 %77 to i32
  %79 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %78, ptr %79, align 4, !tbaa !65
  %80 = load i32, ptr %17, align 8, !tbaa !68
  %81 = add nsw i32 %80, 32
  store i32 %81, ptr %17, align 8, !tbaa !68
  %82 = load ptr, ptr %11, align 8, !tbaa !66
  %83 = getelementptr inbounds i8, ptr %82, i64 4
  store ptr %83, ptr %11, align 8, !tbaa !66
  br label %84

84:                                               ; preds = %59, %74
  %85 = load ptr, ptr %11, align 8, !tbaa !66
  %86 = load ptr, ptr %2, align 8, !tbaa !67
  %87 = ptrtoint ptr %85 to i64
  %88 = ptrtoint ptr %86 to i64
  %89 = sub i64 %87, %88
  %90 = load i32, ptr %17, align 8, !tbaa !68
  %91 = trunc i64 %89 to i32
  %92 = shl i32 %91, 3
  %93 = sub i32 %92, %90
  %94 = add i32 %93, 64
  %95 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57
  %96 = load i32, ptr %95, align 8, !tbaa !76
  %97 = add i32 %96, %22
  %98 = add i32 %97, %94
  store i32 %98, ptr %95, align 8, !tbaa !76
  %99 = and i32 %90, 7
  %100 = load i64, ptr %66, align 8, !tbaa !75
  %101 = zext nneg i32 %99 to i64
  %102 = shl i64 %100, %101
  store i64 %102, ptr %66, align 8, !tbaa !75
  %103 = and i32 %90, -8
  store i32 %103, ptr %17, align 8, !tbaa !68
  %104 = icmp slt i32 %103, 33
  br i1 %104, label %105, label %114

105:                                              ; preds = %84
  %106 = zext nneg i32 %103 to i64
  %107 = tail call i64 @llvm.bswap.i64(i64 %102)
  %108 = lshr i64 %107, %106
  %109 = trunc i64 %108 to i32
  store i32 %109, ptr %85, align 4, !tbaa !65
  %110 = load i32, ptr %17, align 8, !tbaa !68
  %111 = add nsw i32 %110, 32
  store i32 %111, ptr %17, align 8, !tbaa !68
  %112 = load ptr, ptr %11, align 8, !tbaa !66
  %113 = getelementptr inbounds i8, ptr %112, i64 4
  store ptr %113, ptr %11, align 8, !tbaa !66
  br label %114

114:                                              ; preds = %84, %105
  %115 = load i64, ptr %66, align 8, !tbaa !75
  %116 = load i32, ptr %17, align 8, !tbaa !68
  %117 = and i32 %116, 31
  %118 = zext nneg i32 %117 to i64
  %119 = shl i64 %115, %118
  %120 = trunc i64 %119 to i32
  %121 = tail call i32 @llvm.bswap.i32(i32 %120)
  %122 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %121, ptr %122, align 4, !tbaa !65
  %123 = load i32, ptr %17, align 8, !tbaa !68
  %124 = sdiv i32 %123, -8
  %125 = load ptr, ptr %11, align 8, !tbaa !66
  %126 = sext i32 %124 to i64
  %127 = getelementptr i8, ptr %125, i64 %126
  %128 = getelementptr i8, ptr %127, i64 8
  store ptr %128, ptr %11, align 8, !tbaa !66
  store i32 64, ptr %17, align 8, !tbaa !68
  %129 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %130 = load ptr, ptr %129, align 16, !tbaa !77
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %128, ptr noundef nonnull align 1 dereferenceable(256) %130, i64 256, i1 false)
  %131 = load ptr, ptr %11, align 8, !tbaa !66
  %132 = getelementptr inbounds i8, ptr %131, i64 256
  store ptr %132, ptr %11, align 8, !tbaa !66
  %133 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 1
  br label %138

134:                                              ; preds = %138
  %135 = load ptr, ptr %11, align 8, !tbaa !66
  %136 = getelementptr inbounds i8, ptr %135, i64 64
  store ptr %136, ptr %11, align 8, !tbaa !66
  %137 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 2
  br label %184

138:                                              ; preds = %114, %138
  %139 = phi i64 [ 0, %114 ], [ %147, %138 ]
  %140 = load ptr, ptr %11, align 8, !tbaa !66
  %141 = shl nuw nsw i64 %139, 3
  %142 = getelementptr inbounds i8, ptr %140, i64 %141
  %143 = load ptr, ptr %133, align 8, !tbaa !77
  %144 = shl nuw nsw i64 %139, 4
  %145 = getelementptr inbounds i8, ptr %143, i64 %144
  %146 = load i64, ptr %145, align 1
  store i64 %146, ptr %142, align 1
  %147 = add nuw nsw i64 %139, 1
  %148 = icmp eq i64 %147, 8
  br i1 %148, label %134, label %138, !llvm.loop !78

149:                                              ; preds = %184
  %150 = load ptr, ptr %11, align 8, !tbaa !66
  %151 = getelementptr inbounds i8, ptr %150, i64 64
  store ptr %151, ptr %11, align 8, !tbaa !66
  %152 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !81
  %154 = ptrtoint ptr %153 to i64
  %155 = ptrtoint ptr %151 to i64
  %156 = sub i64 %154, %155
  %157 = and i64 %155, 3
  %158 = sub nsw i64 0, %157
  %159 = getelementptr inbounds i8, ptr %151, i64 %158
  store ptr %159, ptr %2, align 8, !tbaa !67
  store ptr %159, ptr %11, align 8, !tbaa !66
  %160 = shl i64 %156, 32
  %161 = ashr exact i64 %160, 32
  %162 = getelementptr inbounds i8, ptr %151, i64 %161
  store ptr %162, ptr %152, align 8, !tbaa !81
  %163 = trunc i64 %157 to i32
  %164 = shl nuw nsw i32 %163, 3
  %165 = or disjoint i32 %164, -64
  %166 = sub nuw nsw i32 64, %164
  store i32 %166, ptr %17, align 8, !tbaa !68
  %167 = load i32, ptr %159, align 4, !tbaa !65
  %168 = tail call i32 @llvm.bswap.i32(i32 %167)
  %169 = zext i32 %168 to i64
  %170 = shl i64 %155, 3
  %171 = and i64 %170, 24
  %172 = sub nuw nsw i64 32, %171
  %173 = lshr i64 %169, %172
  store i64 %173, ptr %66, align 8, !tbaa !75
  store ptr %60, ptr %2, align 8, !tbaa !67
  %174 = ptrtoint ptr %159 to i64
  %175 = ptrtoint ptr %60 to i64
  %176 = sub i64 %174, %175
  %177 = trunc i64 %176 to i32
  %178 = shl i32 %177, 3
  %179 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 1
  %180 = load i32, ptr %179, align 4, !tbaa !82
  %181 = sub i32 %165, %93
  %182 = add i32 %181, %178
  %183 = add nsw i32 %182, %180
  store i32 %183, ptr %179, align 4, !tbaa !82
  br label %2107

184:                                              ; preds = %134, %184
  %185 = phi i64 [ 0, %134 ], [ %193, %184 ]
  %186 = load ptr, ptr %11, align 8, !tbaa !66
  %187 = shl nuw nsw i64 %185, 3
  %188 = getelementptr inbounds i8, ptr %186, i64 %187
  %189 = load ptr, ptr %137, align 16, !tbaa !77
  %190 = shl nuw nsw i64 %185, 4
  %191 = getelementptr inbounds i8, ptr %189, i64 %190
  %192 = load i64, ptr %191, align 1
  store i64 %192, ptr %188, align 1
  %193 = add nuw nsw i64 %185, 1
  %194 = icmp eq i64 %193, 8
  br i1 %194, label %149, label %184, !llvm.loop !83

195:                                              ; preds = %57
  %196 = icmp ult i32 %4, 2
  br i1 %196, label %197, label %344

197:                                              ; preds = %195
  %198 = icmp eq i32 %4, 1
  %199 = select i1 %198, i64 4, i64 1
  %200 = add nuw nsw i32 %10, 1
  %201 = zext nneg i32 %200 to i64
  %202 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %201
  %203 = load i8, ptr %202, align 1, !tbaa !65
  %204 = zext i8 %203 to i32
  %205 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %206 = load i64, ptr %205, align 8, !tbaa !75
  %207 = zext nneg i8 %203 to i64
  %208 = shl i64 %206, %207
  %209 = or i64 %208, %201
  store i64 %209, ptr %205, align 8, !tbaa !75
  %210 = load i32, ptr %17, align 8, !tbaa !68
  %211 = sub nsw i32 %210, %204
  store i32 %211, ptr %17, align 8, !tbaa !68
  %212 = icmp slt i32 %211, 33
  br i1 %212, label %213, label %223

213:                                              ; preds = %197
  %214 = zext nneg i32 %211 to i64
  %215 = shl i64 %209, %214
  %216 = tail call i64 @llvm.bswap.i64(i64 %215)
  %217 = trunc i64 %216 to i32
  %218 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %217, ptr %218, align 4, !tbaa !65
  %219 = load i32, ptr %17, align 8, !tbaa !68
  %220 = add nsw i32 %219, 32
  store i32 %220, ptr %17, align 8, !tbaa !68
  %221 = load ptr, ptr %11, align 8, !tbaa !66
  %222 = getelementptr inbounds i8, ptr %221, i64 4
  store ptr %222, ptr %11, align 8, !tbaa !66
  br label %223

223:                                              ; preds = %197, %213
  %224 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  %225 = load ptr, ptr %224, align 16, !tbaa !84
  %226 = getelementptr inbounds %struct.x264_pps_t, ptr %225, i64 0, i32 15
  %227 = load i32, ptr %226, align 4, !tbaa !85
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %245, label %229

229:                                              ; preds = %223
  %230 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  %231 = load i32, ptr %230, align 4, !tbaa !87
  %232 = load i64, ptr %205, align 8, !tbaa !75
  %233 = shl i64 %232, 1
  %234 = zext i32 %231 to i64
  %235 = or i64 %233, %234
  store i64 %235, ptr %205, align 8, !tbaa !75
  %236 = load i32, ptr %17, align 8, !tbaa !68
  %237 = add nsw i32 %236, -1
  store i32 %237, ptr %17, align 8, !tbaa !68
  %238 = icmp eq i32 %237, 32
  br i1 %238, label %239, label %245

239:                                              ; preds = %229
  %240 = trunc i64 %235 to i32
  %241 = tail call i32 @llvm.bswap.i32(i32 %240)
  %242 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %241, ptr %242, align 4, !tbaa !65
  %243 = load ptr, ptr %11, align 8, !tbaa !66
  %244 = getelementptr inbounds i8, ptr %243, i64 4
  store ptr %244, ptr %11, align 8, !tbaa !66
  store i32 64, ptr %17, align 8, !tbaa !68
  br label %245

245:                                              ; preds = %239, %229, %223
  %246 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67
  br label %275

247:                                              ; preds = %341
  %248 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 60
  %249 = load i32, ptr %248, align 4, !tbaa !88
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode8x8c_fix, i64 0, i64 %250
  %252 = load i8, ptr %251, align 1, !tbaa !65
  %253 = zext i8 %252 to i64
  %254 = add nuw nsw i64 %253, 1
  %255 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %254
  %256 = load i8, ptr %255, align 1, !tbaa !65
  %257 = zext i8 %256 to i32
  %258 = load i64, ptr %205, align 8, !tbaa !75
  %259 = zext nneg i8 %256 to i64
  %260 = shl i64 %258, %259
  %261 = or i64 %260, %254
  store i64 %261, ptr %205, align 8, !tbaa !75
  %262 = load i32, ptr %17, align 8, !tbaa !68
  %263 = sub nsw i32 %262, %257
  store i32 %263, ptr %17, align 8, !tbaa !68
  %264 = icmp slt i32 %263, 33
  br i1 %264, label %265, label %1621

265:                                              ; preds = %247
  %266 = zext nneg i32 %263 to i64
  %267 = shl i64 %261, %266
  %268 = tail call i64 @llvm.bswap.i64(i64 %267)
  %269 = trunc i64 %268 to i32
  %270 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %269, ptr %270, align 4, !tbaa !65
  %271 = load i32, ptr %17, align 8, !tbaa !68
  %272 = add nsw i32 %271, 32
  store i32 %272, ptr %17, align 8, !tbaa !68
  %273 = load ptr, ptr %11, align 8, !tbaa !66
  %274 = getelementptr inbounds i8, ptr %273, i64 4
  store ptr %274, ptr %11, align 8, !tbaa !66
  br label %1621

275:                                              ; preds = %245, %341
  %276 = phi i64 [ 0, %245 ], [ %342, %341 ]
  %277 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %276
  %278 = load i32, ptr %277, align 4, !tbaa !89
  %279 = add nsw i32 %278, -1
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [40 x i8], ptr %246, i64 0, i64 %280
  %282 = load i8, ptr %281, align 1, !tbaa !65
  %283 = sext i8 %282 to i64
  %284 = add nsw i32 %278, -8
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [40 x i8], ptr %246, i64 0, i64 %285
  %287 = load i8, ptr %286, align 1, !tbaa !65
  %288 = sext i8 %287 to i64
  %289 = add nsw i64 %283, 1
  %290 = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %289
  %291 = load i8, ptr %290, align 1, !tbaa !65
  %292 = add nsw i64 %288, 1
  %293 = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %292
  %294 = load i8, ptr %293, align 1, !tbaa !65
  %295 = tail call i8 @llvm.smin.i8(i8 %291, i8 %294)
  %296 = icmp slt i8 %295, 0
  %297 = select i1 %296, i8 2, i8 %295
  %298 = sext i32 %278 to i64
  %299 = getelementptr inbounds [40 x i8], ptr %246, i64 0, i64 %298
  %300 = load i8, ptr %299, align 1, !tbaa !65
  %301 = sext i8 %300 to i64
  %302 = add nsw i64 %301, 1
  %303 = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %302
  %304 = load i8, ptr %303, align 1, !tbaa !65
  %305 = icmp eq i8 %297, %304
  br i1 %305, label %306, label %319

306:                                              ; preds = %275
  %307 = load i64, ptr %205, align 8, !tbaa !75
  %308 = shl i64 %307, 1
  %309 = or disjoint i64 %308, 1
  store i64 %309, ptr %205, align 8, !tbaa !75
  %310 = load i32, ptr %17, align 8, !tbaa !68
  %311 = add nsw i32 %310, -1
  store i32 %311, ptr %17, align 8, !tbaa !68
  %312 = icmp eq i32 %311, 32
  br i1 %312, label %313, label %341

313:                                              ; preds = %306
  %314 = trunc i64 %309 to i32
  %315 = tail call i32 @llvm.bswap.i32(i32 %314)
  %316 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %315, ptr %316, align 4, !tbaa !65
  %317 = load ptr, ptr %11, align 8, !tbaa !66
  %318 = getelementptr inbounds i8, ptr %317, i64 4
  store ptr %318, ptr %11, align 8, !tbaa !66
  store i32 64, ptr %17, align 8, !tbaa !68
  br label %341

319:                                              ; preds = %275
  %320 = sext i8 %304 to i64
  %321 = icmp slt i8 %297, %304
  %322 = sext i1 %321 to i64
  %323 = add nsw i64 %322, %320
  %324 = load i64, ptr %205, align 8, !tbaa !75
  %325 = shl i64 %324, 4
  %326 = and i64 %323, 4294967295
  %327 = or i64 %325, %326
  store i64 %327, ptr %205, align 8, !tbaa !75
  %328 = load i32, ptr %17, align 8, !tbaa !68
  %329 = add nsw i32 %328, -4
  store i32 %329, ptr %17, align 8, !tbaa !68
  %330 = icmp slt i32 %328, 37
  br i1 %330, label %331, label %341

331:                                              ; preds = %319
  %332 = zext nneg i32 %329 to i64
  %333 = shl i64 %327, %332
  %334 = tail call i64 @llvm.bswap.i64(i64 %333)
  %335 = trunc i64 %334 to i32
  %336 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %335, ptr %336, align 4, !tbaa !65
  %337 = load i32, ptr %17, align 8, !tbaa !68
  %338 = add nsw i32 %337, 32
  store i32 %338, ptr %17, align 8, !tbaa !68
  %339 = load ptr, ptr %11, align 8, !tbaa !66
  %340 = getelementptr inbounds i8, ptr %339, i64 4
  store ptr %340, ptr %11, align 8, !tbaa !66
  br label %341

341:                                              ; preds = %331, %319, %313, %306
  %342 = add nuw nsw i64 %276, %199
  %343 = icmp ult i64 %342, 16
  br i1 %343, label %275, label %247, !llvm.loop !90

344:                                              ; preds = %195
  switch i32 %4, label %1223 [
    i32 2, label %345
    i32 4, label %414
    i32 5, label %704
    i32 17, label %1013
    i32 7, label %1607
  ]

345:                                              ; preds = %344
  %346 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 59
  %347 = load i32, ptr %346, align 16, !tbaa !91
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode16x16_fix, i64 0, i64 %348
  %350 = load i8, ptr %349, align 1, !tbaa !65
  %351 = zext i8 %350 to i32
  %352 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  %353 = load i32, ptr %352, align 4, !tbaa !92
  %354 = shl nsw i32 %353, 2
  %355 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %356 = load i32, ptr %355, align 8, !tbaa !93
  %357 = icmp eq i32 %356, 0
  %358 = select i1 %357, i32 0, i32 12
  %359 = add nuw nsw i32 %10, 2
  %360 = add nuw nsw i32 %359, %351
  %361 = add i32 %360, %354
  %362 = add i32 %361, %358
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %363
  %365 = load i8, ptr %364, align 1, !tbaa !65
  %366 = zext i8 %365 to i32
  %367 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %368 = load i64, ptr %367, align 8, !tbaa !75
  %369 = zext nneg i8 %365 to i64
  %370 = shl i64 %368, %369
  %371 = zext i32 %362 to i64
  %372 = or i64 %370, %371
  store i64 %372, ptr %367, align 8, !tbaa !75
  %373 = load i32, ptr %17, align 8, !tbaa !68
  %374 = sub nsw i32 %373, %366
  store i32 %374, ptr %17, align 8, !tbaa !68
  %375 = icmp slt i32 %374, 33
  br i1 %375, label %376, label %386

376:                                              ; preds = %345
  %377 = zext nneg i32 %374 to i64
  %378 = shl i64 %372, %377
  %379 = tail call i64 @llvm.bswap.i64(i64 %378)
  %380 = trunc i64 %379 to i32
  %381 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %380, ptr %381, align 4, !tbaa !65
  %382 = load i32, ptr %17, align 8, !tbaa !68
  %383 = add nsw i32 %382, 32
  store i32 %383, ptr %17, align 8, !tbaa !68
  %384 = load ptr, ptr %11, align 8, !tbaa !66
  %385 = getelementptr inbounds i8, ptr %384, i64 4
  store ptr %385, ptr %11, align 8, !tbaa !66
  br label %386

386:                                              ; preds = %345, %376
  %387 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 60
  %388 = load i32, ptr %387, align 4, !tbaa !88
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode8x8c_fix, i64 0, i64 %389
  %391 = load i8, ptr %390, align 1, !tbaa !65
  %392 = zext i8 %391 to i64
  %393 = add nuw nsw i64 %392, 1
  %394 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %393
  %395 = load i8, ptr %394, align 1, !tbaa !65
  %396 = zext i8 %395 to i32
  %397 = load i64, ptr %367, align 8, !tbaa !75
  %398 = zext nneg i8 %395 to i64
  %399 = shl i64 %397, %398
  %400 = or i64 %399, %393
  store i64 %400, ptr %367, align 8, !tbaa !75
  %401 = load i32, ptr %17, align 8, !tbaa !68
  %402 = sub nsw i32 %401, %396
  store i32 %402, ptr %17, align 8, !tbaa !68
  %403 = icmp slt i32 %402, 33
  br i1 %403, label %404, label %1621

404:                                              ; preds = %386
  %405 = zext nneg i32 %402 to i64
  %406 = shl i64 %400, %405
  %407 = tail call i64 @llvm.bswap.i64(i64 %406)
  %408 = trunc i64 %407 to i32
  %409 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %408, ptr %409, align 4, !tbaa !65
  %410 = load i32, ptr %17, align 8, !tbaa !68
  %411 = add nsw i32 %410, 32
  store i32 %411, ptr %17, align 8, !tbaa !68
  %412 = load ptr, ptr %11, align 8, !tbaa !66
  %413 = getelementptr inbounds i8, ptr %412, i64 4
  store ptr %413, ptr %11, align 8, !tbaa !66
  br label %1621

414:                                              ; preds = %344
  %415 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %416 = load i32, ptr %415, align 4, !tbaa !94
  switch i32 %416, label %1621 [
    i32 16, label %417
    i32 14, label %480
    i32 15, label %592
  ]

417:                                              ; preds = %414
  %418 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %419 = load i64, ptr %418, align 8, !tbaa !75
  %420 = shl i64 %419, 1
  %421 = or disjoint i64 %420, 1
  store i64 %421, ptr %418, align 8, !tbaa !75
  %422 = load i32, ptr %17, align 8, !tbaa !68
  %423 = add nsw i32 %422, -1
  store i32 %423, ptr %17, align 8, !tbaa !68
  %424 = icmp eq i32 %423, 32
  br i1 %424, label %425, label %431

425:                                              ; preds = %417
  %426 = trunc i64 %421 to i32
  %427 = tail call i32 @llvm.bswap.i32(i32 %426)
  %428 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %427, ptr %428, align 4, !tbaa !65
  %429 = load ptr, ptr %11, align 8, !tbaa !66
  %430 = getelementptr inbounds i8, ptr %429, i64 4
  store ptr %430, ptr %11, align 8, !tbaa !66
  store i32 64, ptr %17, align 8, !tbaa !68
  br label %431

431:                                              ; preds = %417, %425
  %432 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  %433 = load i32, ptr %432, align 8, !tbaa !89
  %434 = icmp sgt i32 %433, 1
  br i1 %434, label %435, label %479

435:                                              ; preds = %431
  %436 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %437 = load i8, ptr %436, align 1, !tbaa !65
  %438 = sext i8 %437 to i32
  %439 = icmp eq i32 %433, 2
  br i1 %439, label %440, label %455

440:                                              ; preds = %435
  %441 = xor i32 %438, 1
  %442 = load i64, ptr %418, align 8, !tbaa !75
  %443 = shl i64 %442, 1
  %444 = zext i32 %441 to i64
  %445 = or i64 %443, %444
  store i64 %445, ptr %418, align 8, !tbaa !75
  %446 = load i32, ptr %17, align 8, !tbaa !68
  %447 = add nsw i32 %446, -1
  store i32 %447, ptr %17, align 8, !tbaa !68
  %448 = icmp eq i32 %447, 32
  br i1 %448, label %449, label %479

449:                                              ; preds = %440
  %450 = trunc i64 %445 to i32
  %451 = tail call i32 @llvm.bswap.i32(i32 %450)
  %452 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %451, ptr %452, align 4, !tbaa !65
  %453 = load ptr, ptr %11, align 8, !tbaa !66
  %454 = getelementptr inbounds i8, ptr %453, i64 4
  store ptr %454, ptr %11, align 8, !tbaa !66
  store i32 64, ptr %17, align 8, !tbaa !68
  br label %479

455:                                              ; preds = %435
  %456 = add nsw i32 %438, 1
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %457
  %459 = load i8, ptr %458, align 1, !tbaa !65
  %460 = zext i8 %459 to i32
  %461 = load i64, ptr %418, align 8, !tbaa !75
  %462 = zext nneg i8 %459 to i64
  %463 = shl i64 %461, %462
  %464 = zext i32 %456 to i64
  %465 = or i64 %463, %464
  store i64 %465, ptr %418, align 8, !tbaa !75
  %466 = load i32, ptr %17, align 8, !tbaa !68
  %467 = sub nsw i32 %466, %460
  store i32 %467, ptr %17, align 8, !tbaa !68
  %468 = icmp slt i32 %467, 33
  br i1 %468, label %469, label %479

469:                                              ; preds = %455
  %470 = zext nneg i32 %467 to i64
  %471 = shl i64 %465, %470
  %472 = tail call i64 @llvm.bswap.i64(i64 %471)
  %473 = trunc i64 %472 to i32
  %474 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %473, ptr %474, align 4, !tbaa !65
  %475 = load i32, ptr %17, align 8, !tbaa !68
  %476 = add nsw i32 %475, 32
  store i32 %476, ptr %17, align 8, !tbaa !68
  %477 = load ptr, ptr %11, align 8, !tbaa !66
  %478 = getelementptr inbounds i8, ptr %477, i64 4
  store ptr %478, ptr %11, align 8, !tbaa !66
  br label %479

479:                                              ; preds = %469, %455, %449, %440, %431
  tail call fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 4)
  br label %1621

480:                                              ; preds = %414
  %481 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %482 = load i64, ptr %481, align 8, !tbaa !75
  %483 = shl i64 %482, 3
  %484 = or disjoint i64 %483, 2
  store i64 %484, ptr %481, align 8, !tbaa !75
  %485 = load i32, ptr %17, align 8, !tbaa !68
  %486 = add nsw i32 %485, -3
  store i32 %486, ptr %17, align 8, !tbaa !68
  %487 = icmp slt i32 %485, 36
  br i1 %487, label %488, label %498

488:                                              ; preds = %480
  %489 = zext nneg i32 %486 to i64
  %490 = shl i64 %484, %489
  %491 = tail call i64 @llvm.bswap.i64(i64 %490)
  %492 = trunc i64 %491 to i32
  %493 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %492, ptr %493, align 4, !tbaa !65
  %494 = load i32, ptr %17, align 8, !tbaa !68
  %495 = add nsw i32 %494, 32
  store i32 %495, ptr %17, align 8, !tbaa !68
  %496 = load ptr, ptr %11, align 8, !tbaa !66
  %497 = getelementptr inbounds i8, ptr %496, i64 4
  store ptr %497, ptr %11, align 8, !tbaa !66
  br label %498

498:                                              ; preds = %480, %488
  %499 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  %500 = load i32, ptr %499, align 8, !tbaa !89
  %501 = icmp sgt i32 %500, 1
  br i1 %501, label %502, label %591

502:                                              ; preds = %498
  %503 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %504 = load i8, ptr %503, align 1, !tbaa !65
  %505 = sext i8 %504 to i32
  %506 = icmp eq i32 %500, 2
  br i1 %506, label %507, label %522

507:                                              ; preds = %502
  %508 = xor i32 %505, 1
  %509 = load i64, ptr %481, align 8, !tbaa !75
  %510 = shl i64 %509, 1
  %511 = zext i32 %508 to i64
  %512 = or i64 %510, %511
  store i64 %512, ptr %481, align 8, !tbaa !75
  %513 = load i32, ptr %17, align 8, !tbaa !68
  %514 = add nsw i32 %513, -1
  store i32 %514, ptr %17, align 8, !tbaa !68
  %515 = icmp eq i32 %514, 32
  br i1 %515, label %516, label %546

516:                                              ; preds = %507
  %517 = trunc i64 %512 to i32
  %518 = tail call i32 @llvm.bswap.i32(i32 %517)
  %519 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %518, ptr %519, align 4, !tbaa !65
  %520 = load ptr, ptr %11, align 8, !tbaa !66
  %521 = getelementptr inbounds i8, ptr %520, i64 4
  store ptr %521, ptr %11, align 8, !tbaa !66
  store i32 64, ptr %17, align 8, !tbaa !68
  br label %546

522:                                              ; preds = %502
  %523 = add nsw i32 %505, 1
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %524
  %526 = load i8, ptr %525, align 1, !tbaa !65
  %527 = zext i8 %526 to i32
  %528 = load i64, ptr %481, align 8, !tbaa !75
  %529 = zext nneg i8 %526 to i64
  %530 = shl i64 %528, %529
  %531 = zext i32 %523 to i64
  %532 = or i64 %530, %531
  store i64 %532, ptr %481, align 8, !tbaa !75
  %533 = load i32, ptr %17, align 8, !tbaa !68
  %534 = sub nsw i32 %533, %527
  store i32 %534, ptr %17, align 8, !tbaa !68
  %535 = icmp slt i32 %534, 33
  br i1 %535, label %536, label %546

536:                                              ; preds = %522
  %537 = zext nneg i32 %534 to i64
  %538 = shl i64 %532, %537
  %539 = tail call i64 @llvm.bswap.i64(i64 %538)
  %540 = trunc i64 %539 to i32
  %541 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %540, ptr %541, align 4, !tbaa !65
  %542 = load i32, ptr %17, align 8, !tbaa !68
  %543 = add nsw i32 %542, 32
  store i32 %543, ptr %17, align 8, !tbaa !68
  %544 = load ptr, ptr %11, align 8, !tbaa !66
  %545 = getelementptr inbounds i8, ptr %544, i64 4
  store ptr %545, ptr %11, align 8, !tbaa !66
  br label %546

546:                                              ; preds = %507, %516, %522, %536
  %547 = load i32, ptr %499, align 8, !tbaa !89
  %548 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 28
  %549 = load i8, ptr %548, align 1, !tbaa !65
  %550 = sext i8 %549 to i32
  %551 = icmp eq i32 %547, 2
  br i1 %551, label %552, label %567

552:                                              ; preds = %546
  %553 = xor i32 %550, 1
  %554 = load i64, ptr %481, align 8, !tbaa !75
  %555 = shl i64 %554, 1
  %556 = zext i32 %553 to i64
  %557 = or i64 %555, %556
  store i64 %557, ptr %481, align 8, !tbaa !75
  %558 = load i32, ptr %17, align 8, !tbaa !68
  %559 = add nsw i32 %558, -1
  store i32 %559, ptr %17, align 8, !tbaa !68
  %560 = icmp eq i32 %559, 32
  br i1 %560, label %561, label %591

561:                                              ; preds = %552
  %562 = trunc i64 %557 to i32
  %563 = tail call i32 @llvm.bswap.i32(i32 %562)
  %564 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %563, ptr %564, align 4, !tbaa !65
  %565 = load ptr, ptr %11, align 8, !tbaa !66
  %566 = getelementptr inbounds i8, ptr %565, i64 4
  store ptr %566, ptr %11, align 8, !tbaa !66
  store i32 64, ptr %17, align 8, !tbaa !68
  br label %591

567:                                              ; preds = %546
  %568 = add nsw i32 %550, 1
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %569
  %571 = load i8, ptr %570, align 1, !tbaa !65
  %572 = zext i8 %571 to i32
  %573 = load i64, ptr %481, align 8, !tbaa !75
  %574 = zext nneg i8 %571 to i64
  %575 = shl i64 %573, %574
  %576 = zext i32 %568 to i64
  %577 = or i64 %575, %576
  store i64 %577, ptr %481, align 8, !tbaa !75
  %578 = load i32, ptr %17, align 8, !tbaa !68
  %579 = sub nsw i32 %578, %572
  store i32 %579, ptr %17, align 8, !tbaa !68
  %580 = icmp slt i32 %579, 33
  br i1 %580, label %581, label %591

581:                                              ; preds = %567
  %582 = zext nneg i32 %579 to i64
  %583 = shl i64 %577, %582
  %584 = tail call i64 @llvm.bswap.i64(i64 %583)
  %585 = trunc i64 %584 to i32
  %586 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %585, ptr %586, align 4, !tbaa !65
  %587 = load i32, ptr %17, align 8, !tbaa !68
  %588 = add nsw i32 %587, 32
  store i32 %588, ptr %17, align 8, !tbaa !68
  %589 = load ptr, ptr %11, align 8, !tbaa !66
  %590 = getelementptr inbounds i8, ptr %589, i64 4
  store ptr %590, ptr %11, align 8, !tbaa !66
  br label %591

591:                                              ; preds = %581, %567, %561, %552, %498
  tail call fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 4)
  tail call fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef 0, i32 noundef 8, i32 noundef 4)
  br label %1621

592:                                              ; preds = %414
  %593 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %594 = load i64, ptr %593, align 8, !tbaa !75
  %595 = shl i64 %594, 3
  %596 = or disjoint i64 %595, 3
  store i64 %596, ptr %593, align 8, !tbaa !75
  %597 = load i32, ptr %17, align 8, !tbaa !68
  %598 = add nsw i32 %597, -3
  store i32 %598, ptr %17, align 8, !tbaa !68
  %599 = icmp slt i32 %597, 36
  br i1 %599, label %600, label %610

600:                                              ; preds = %592
  %601 = zext nneg i32 %598 to i64
  %602 = shl i64 %596, %601
  %603 = tail call i64 @llvm.bswap.i64(i64 %602)
  %604 = trunc i64 %603 to i32
  %605 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %604, ptr %605, align 4, !tbaa !65
  %606 = load i32, ptr %17, align 8, !tbaa !68
  %607 = add nsw i32 %606, 32
  store i32 %607, ptr %17, align 8, !tbaa !68
  %608 = load ptr, ptr %11, align 8, !tbaa !66
  %609 = getelementptr inbounds i8, ptr %608, i64 4
  store ptr %609, ptr %11, align 8, !tbaa !66
  br label %610

610:                                              ; preds = %592, %600
  %611 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  %612 = load i32, ptr %611, align 8, !tbaa !89
  %613 = icmp sgt i32 %612, 1
  br i1 %613, label %614, label %703

614:                                              ; preds = %610
  %615 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %616 = load i8, ptr %615, align 1, !tbaa !65
  %617 = sext i8 %616 to i32
  %618 = icmp eq i32 %612, 2
  br i1 %618, label %619, label %634

619:                                              ; preds = %614
  %620 = xor i32 %617, 1
  %621 = load i64, ptr %593, align 8, !tbaa !75
  %622 = shl i64 %621, 1
  %623 = zext i32 %620 to i64
  %624 = or i64 %622, %623
  store i64 %624, ptr %593, align 8, !tbaa !75
  %625 = load i32, ptr %17, align 8, !tbaa !68
  %626 = add nsw i32 %625, -1
  store i32 %626, ptr %17, align 8, !tbaa !68
  %627 = icmp eq i32 %626, 32
  br i1 %627, label %628, label %658

628:                                              ; preds = %619
  %629 = trunc i64 %624 to i32
  %630 = tail call i32 @llvm.bswap.i32(i32 %629)
  %631 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %630, ptr %631, align 4, !tbaa !65
  %632 = load ptr, ptr %11, align 8, !tbaa !66
  %633 = getelementptr inbounds i8, ptr %632, i64 4
  store ptr %633, ptr %11, align 8, !tbaa !66
  store i32 64, ptr %17, align 8, !tbaa !68
  br label %658

634:                                              ; preds = %614
  %635 = add nsw i32 %617, 1
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %636
  %638 = load i8, ptr %637, align 1, !tbaa !65
  %639 = zext i8 %638 to i32
  %640 = load i64, ptr %593, align 8, !tbaa !75
  %641 = zext nneg i8 %638 to i64
  %642 = shl i64 %640, %641
  %643 = zext i32 %635 to i64
  %644 = or i64 %642, %643
  store i64 %644, ptr %593, align 8, !tbaa !75
  %645 = load i32, ptr %17, align 8, !tbaa !68
  %646 = sub nsw i32 %645, %639
  store i32 %646, ptr %17, align 8, !tbaa !68
  %647 = icmp slt i32 %646, 33
  br i1 %647, label %648, label %658

648:                                              ; preds = %634
  %649 = zext nneg i32 %646 to i64
  %650 = shl i64 %644, %649
  %651 = tail call i64 @llvm.bswap.i64(i64 %650)
  %652 = trunc i64 %651 to i32
  %653 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %652, ptr %653, align 4, !tbaa !65
  %654 = load i32, ptr %17, align 8, !tbaa !68
  %655 = add nsw i32 %654, 32
  store i32 %655, ptr %17, align 8, !tbaa !68
  %656 = load ptr, ptr %11, align 8, !tbaa !66
  %657 = getelementptr inbounds i8, ptr %656, i64 4
  store ptr %657, ptr %11, align 8, !tbaa !66
  br label %658

658:                                              ; preds = %619, %628, %634, %648
  %659 = load i32, ptr %611, align 8, !tbaa !89
  %660 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 14
  %661 = load i8, ptr %660, align 1, !tbaa !65
  %662 = sext i8 %661 to i32
  %663 = icmp eq i32 %659, 2
  br i1 %663, label %664, label %679

664:                                              ; preds = %658
  %665 = xor i32 %662, 1
  %666 = load i64, ptr %593, align 8, !tbaa !75
  %667 = shl i64 %666, 1
  %668 = zext i32 %665 to i64
  %669 = or i64 %667, %668
  store i64 %669, ptr %593, align 8, !tbaa !75
  %670 = load i32, ptr %17, align 8, !tbaa !68
  %671 = add nsw i32 %670, -1
  store i32 %671, ptr %17, align 8, !tbaa !68
  %672 = icmp eq i32 %671, 32
  br i1 %672, label %673, label %703

673:                                              ; preds = %664
  %674 = trunc i64 %669 to i32
  %675 = tail call i32 @llvm.bswap.i32(i32 %674)
  %676 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %675, ptr %676, align 4, !tbaa !65
  %677 = load ptr, ptr %11, align 8, !tbaa !66
  %678 = getelementptr inbounds i8, ptr %677, i64 4
  store ptr %678, ptr %11, align 8, !tbaa !66
  store i32 64, ptr %17, align 8, !tbaa !68
  br label %703

679:                                              ; preds = %658
  %680 = add nsw i32 %662, 1
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %681
  %683 = load i8, ptr %682, align 1, !tbaa !65
  %684 = zext i8 %683 to i32
  %685 = load i64, ptr %593, align 8, !tbaa !75
  %686 = zext nneg i8 %683 to i64
  %687 = shl i64 %685, %686
  %688 = zext i32 %680 to i64
  %689 = or i64 %687, %688
  store i64 %689, ptr %593, align 8, !tbaa !75
  %690 = load i32, ptr %17, align 8, !tbaa !68
  %691 = sub nsw i32 %690, %684
  store i32 %691, ptr %17, align 8, !tbaa !68
  %692 = icmp slt i32 %691, 33
  br i1 %692, label %693, label %703

693:                                              ; preds = %679
  %694 = zext nneg i32 %691 to i64
  %695 = shl i64 %689, %694
  %696 = tail call i64 @llvm.bswap.i64(i64 %695)
  %697 = trunc i64 %696 to i32
  %698 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %697, ptr %698, align 4, !tbaa !65
  %699 = load i32, ptr %17, align 8, !tbaa !68
  %700 = add nsw i32 %699, 32
  store i32 %700, ptr %17, align 8, !tbaa !68
  %701 = load ptr, ptr %11, align 8, !tbaa !66
  %702 = getelementptr inbounds i8, ptr %701, i64 4
  store ptr %702, ptr %11, align 8, !tbaa !66
  br label %703

703:                                              ; preds = %693, %679, %673, %664, %610
  tail call fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 2)
  tail call fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef 2)
  br label %1621

704:                                              ; preds = %344
  %705 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %706 = load i8, ptr %705, align 1, !tbaa !65
  %707 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 14
  %708 = load i8, ptr %707, align 1, !tbaa !65
  %709 = or i8 %708, %706
  %710 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 28
  %711 = load i8, ptr %710, align 1, !tbaa !65
  %712 = or i8 %709, %711
  %713 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 30
  %714 = load i8, ptr %713, align 1, !tbaa !65
  %715 = or i8 %712, %714
  %716 = icmp eq i8 %715, 0
  %717 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %718 = load i64, ptr %717, align 8, !tbaa !75
  %719 = shl i64 %718, 5
  br i1 %716, label %720, label %725

720:                                              ; preds = %704
  %721 = or disjoint i64 %719, 5
  store i64 %721, ptr %717, align 8, !tbaa !75
  %722 = load i32, ptr %17, align 8, !tbaa !68
  %723 = add nsw i32 %722, -5
  store i32 %723, ptr %17, align 8, !tbaa !68
  %724 = icmp slt i32 %722, 38
  br i1 %724, label %730, label %742

725:                                              ; preds = %704
  %726 = or disjoint i64 %719, 4
  store i64 %726, ptr %717, align 8, !tbaa !75
  %727 = load i32, ptr %17, align 8, !tbaa !68
  %728 = add nsw i32 %727, -5
  store i32 %728, ptr %17, align 8, !tbaa !68
  %729 = icmp slt i32 %727, 38
  br i1 %729, label %730, label %742

730:                                              ; preds = %725, %720
  %731 = phi i32 [ %723, %720 ], [ %728, %725 ]
  %732 = phi i64 [ %721, %720 ], [ %726, %725 ]
  %733 = zext nneg i32 %731 to i64
  %734 = shl i64 %732, %733
  %735 = tail call i64 @llvm.bswap.i64(i64 %734)
  %736 = trunc i64 %735 to i32
  %737 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %736, ptr %737, align 4, !tbaa !65
  %738 = load i32, ptr %17, align 8, !tbaa !68
  %739 = add nsw i32 %738, 32
  store i32 %739, ptr %17, align 8, !tbaa !68
  %740 = load ptr, ptr %11, align 8, !tbaa !66
  %741 = getelementptr inbounds i8, ptr %740, i64 4
  store ptr %741, ptr %11, align 8, !tbaa !66
  br label %742

742:                                              ; preds = %730, %725, %720
  %743 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 1
  %744 = load i32, ptr %743, align 4, !tbaa !95
  %745 = and i32 %744, 32
  %746 = icmp eq i32 %745, 0
  %747 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  br i1 %746, label %780, label %748

748:                                              ; preds = %742, %777
  %749 = phi i64 [ %778, %777 ], [ 0, %742 ]
  %750 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %749
  %751 = load i8, ptr %750, align 1, !tbaa !65
  %752 = zext i8 %751 to i64
  %753 = getelementptr inbounds [4 x i8], ptr @sub_mb_type_p_to_golomb, i64 0, i64 %752
  %754 = load i8, ptr %753, align 1, !tbaa !65
  %755 = zext i8 %754 to i64
  %756 = add nuw nsw i64 %755, 1
  %757 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %756
  %758 = load i8, ptr %757, align 1, !tbaa !65
  %759 = zext i8 %758 to i32
  %760 = load i64, ptr %747, align 8, !tbaa !75
  %761 = zext nneg i8 %758 to i64
  %762 = shl i64 %760, %761
  %763 = or i64 %762, %756
  store i64 %763, ptr %747, align 8, !tbaa !75
  %764 = load i32, ptr %17, align 8, !tbaa !68
  %765 = sub nsw i32 %764, %759
  store i32 %765, ptr %17, align 8, !tbaa !68
  %766 = icmp slt i32 %765, 33
  br i1 %766, label %767, label %777

767:                                              ; preds = %748
  %768 = zext nneg i32 %765 to i64
  %769 = shl i64 %763, %768
  %770 = tail call i64 @llvm.bswap.i64(i64 %769)
  %771 = trunc i64 %770 to i32
  %772 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %771, ptr %772, align 4, !tbaa !65
  %773 = load i32, ptr %17, align 8, !tbaa !68
  %774 = add nsw i32 %773, 32
  store i32 %774, ptr %17, align 8, !tbaa !68
  %775 = load ptr, ptr %11, align 8, !tbaa !66
  %776 = getelementptr inbounds i8, ptr %775, i64 4
  store ptr %776, ptr %11, align 8, !tbaa !66
  br label %777

777:                                              ; preds = %748, %767
  %778 = add nuw nsw i64 %749, 1
  %779 = icmp eq i64 %778, 4
  br i1 %779, label %797, label %748, !llvm.loop !96

780:                                              ; preds = %742
  %781 = load i64, ptr %747, align 8, !tbaa !75
  %782 = shl i64 %781, 4
  %783 = or disjoint i64 %782, 15
  store i64 %783, ptr %747, align 8, !tbaa !75
  %784 = load i32, ptr %17, align 8, !tbaa !68
  %785 = add nsw i32 %784, -4
  store i32 %785, ptr %17, align 8, !tbaa !68
  %786 = icmp slt i32 %784, 37
  br i1 %786, label %787, label %797

787:                                              ; preds = %780
  %788 = zext nneg i32 %785 to i64
  %789 = shl i64 %783, %788
  %790 = tail call i64 @llvm.bswap.i64(i64 %789)
  %791 = trunc i64 %790 to i32
  %792 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %791, ptr %792, align 4, !tbaa !65
  %793 = load i32, ptr %17, align 8, !tbaa !68
  %794 = add nsw i32 %793, 32
  store i32 %794, ptr %17, align 8, !tbaa !68
  %795 = load ptr, ptr %11, align 8, !tbaa !66
  %796 = getelementptr inbounds i8, ptr %795, i64 4
  store ptr %796, ptr %11, align 8, !tbaa !66
  br label %797

797:                                              ; preds = %777, %787, %780
  br i1 %716, label %983, label %798

798:                                              ; preds = %797
  %799 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  %800 = load i32, ptr %799, align 8, !tbaa !89
  %801 = load i8, ptr %705, align 1, !tbaa !65
  %802 = sext i8 %801 to i32
  %803 = icmp eq i32 %800, 2
  br i1 %803, label %804, label %820

804:                                              ; preds = %798
  %805 = xor i32 %802, 1
  %806 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %807 = load i64, ptr %806, align 8, !tbaa !75
  %808 = shl i64 %807, 1
  %809 = zext i32 %805 to i64
  %810 = or i64 %808, %809
  store i64 %810, ptr %806, align 8, !tbaa !75
  %811 = load i32, ptr %17, align 8, !tbaa !68
  %812 = add nsw i32 %811, -1
  store i32 %812, ptr %17, align 8, !tbaa !68
  %813 = icmp eq i32 %812, 32
  br i1 %813, label %814, label %845

814:                                              ; preds = %804
  %815 = trunc i64 %810 to i32
  %816 = tail call i32 @llvm.bswap.i32(i32 %815)
  %817 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %816, ptr %817, align 4, !tbaa !65
  %818 = load ptr, ptr %11, align 8, !tbaa !66
  %819 = getelementptr inbounds i8, ptr %818, i64 4
  store ptr %819, ptr %11, align 8, !tbaa !66
  store i32 64, ptr %17, align 8, !tbaa !68
  br label %845

820:                                              ; preds = %798
  %821 = add nsw i32 %802, 1
  %822 = sext i32 %821 to i64
  %823 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %822
  %824 = load i8, ptr %823, align 1, !tbaa !65
  %825 = zext i8 %824 to i32
  %826 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %827 = load i64, ptr %826, align 8, !tbaa !75
  %828 = zext nneg i8 %824 to i64
  %829 = shl i64 %827, %828
  %830 = zext i32 %821 to i64
  %831 = or i64 %829, %830
  store i64 %831, ptr %826, align 8, !tbaa !75
  %832 = load i32, ptr %17, align 8, !tbaa !68
  %833 = sub nsw i32 %832, %825
  store i32 %833, ptr %17, align 8, !tbaa !68
  %834 = icmp slt i32 %833, 33
  br i1 %834, label %835, label %845

835:                                              ; preds = %820
  %836 = zext nneg i32 %833 to i64
  %837 = shl i64 %831, %836
  %838 = tail call i64 @llvm.bswap.i64(i64 %837)
  %839 = trunc i64 %838 to i32
  %840 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %839, ptr %840, align 4, !tbaa !65
  %841 = load i32, ptr %17, align 8, !tbaa !68
  %842 = add nsw i32 %841, 32
  store i32 %842, ptr %17, align 8, !tbaa !68
  %843 = load ptr, ptr %11, align 8, !tbaa !66
  %844 = getelementptr inbounds i8, ptr %843, i64 4
  store ptr %844, ptr %11, align 8, !tbaa !66
  br label %845

845:                                              ; preds = %804, %814, %820, %835
  %846 = load i32, ptr %799, align 8, !tbaa !89
  %847 = load i8, ptr %707, align 1, !tbaa !65
  %848 = sext i8 %847 to i32
  %849 = icmp eq i32 %846, 2
  br i1 %849, label %850, label %866

850:                                              ; preds = %845
  %851 = xor i32 %848, 1
  %852 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %853 = load i64, ptr %852, align 8, !tbaa !75
  %854 = shl i64 %853, 1
  %855 = zext i32 %851 to i64
  %856 = or i64 %854, %855
  store i64 %856, ptr %852, align 8, !tbaa !75
  %857 = load i32, ptr %17, align 8, !tbaa !68
  %858 = add nsw i32 %857, -1
  store i32 %858, ptr %17, align 8, !tbaa !68
  %859 = icmp eq i32 %858, 32
  br i1 %859, label %860, label %891

860:                                              ; preds = %850
  %861 = trunc i64 %856 to i32
  %862 = tail call i32 @llvm.bswap.i32(i32 %861)
  %863 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %862, ptr %863, align 4, !tbaa !65
  %864 = load ptr, ptr %11, align 8, !tbaa !66
  %865 = getelementptr inbounds i8, ptr %864, i64 4
  store ptr %865, ptr %11, align 8, !tbaa !66
  store i32 64, ptr %17, align 8, !tbaa !68
  br label %891

866:                                              ; preds = %845
  %867 = add nsw i32 %848, 1
  %868 = sext i32 %867 to i64
  %869 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %868
  %870 = load i8, ptr %869, align 1, !tbaa !65
  %871 = zext i8 %870 to i32
  %872 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %873 = load i64, ptr %872, align 8, !tbaa !75
  %874 = zext nneg i8 %870 to i64
  %875 = shl i64 %873, %874
  %876 = zext i32 %867 to i64
  %877 = or i64 %875, %876
  store i64 %877, ptr %872, align 8, !tbaa !75
  %878 = load i32, ptr %17, align 8, !tbaa !68
  %879 = sub nsw i32 %878, %871
  store i32 %879, ptr %17, align 8, !tbaa !68
  %880 = icmp slt i32 %879, 33
  br i1 %880, label %881, label %891

881:                                              ; preds = %866
  %882 = zext nneg i32 %879 to i64
  %883 = shl i64 %877, %882
  %884 = tail call i64 @llvm.bswap.i64(i64 %883)
  %885 = trunc i64 %884 to i32
  %886 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %885, ptr %886, align 4, !tbaa !65
  %887 = load i32, ptr %17, align 8, !tbaa !68
  %888 = add nsw i32 %887, 32
  store i32 %888, ptr %17, align 8, !tbaa !68
  %889 = load ptr, ptr %11, align 8, !tbaa !66
  %890 = getelementptr inbounds i8, ptr %889, i64 4
  store ptr %890, ptr %11, align 8, !tbaa !66
  br label %891

891:                                              ; preds = %850, %860, %866, %881
  %892 = load i32, ptr %799, align 8, !tbaa !89
  %893 = load i8, ptr %710, align 1, !tbaa !65
  %894 = sext i8 %893 to i32
  %895 = icmp eq i32 %892, 2
  br i1 %895, label %896, label %912

896:                                              ; preds = %891
  %897 = xor i32 %894, 1
  %898 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %899 = load i64, ptr %898, align 8, !tbaa !75
  %900 = shl i64 %899, 1
  %901 = zext i32 %897 to i64
  %902 = or i64 %900, %901
  store i64 %902, ptr %898, align 8, !tbaa !75
  %903 = load i32, ptr %17, align 8, !tbaa !68
  %904 = add nsw i32 %903, -1
  store i32 %904, ptr %17, align 8, !tbaa !68
  %905 = icmp eq i32 %904, 32
  br i1 %905, label %906, label %937

906:                                              ; preds = %896
  %907 = trunc i64 %902 to i32
  %908 = tail call i32 @llvm.bswap.i32(i32 %907)
  %909 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %908, ptr %909, align 4, !tbaa !65
  %910 = load ptr, ptr %11, align 8, !tbaa !66
  %911 = getelementptr inbounds i8, ptr %910, i64 4
  store ptr %911, ptr %11, align 8, !tbaa !66
  store i32 64, ptr %17, align 8, !tbaa !68
  br label %937

912:                                              ; preds = %891
  %913 = add nsw i32 %894, 1
  %914 = sext i32 %913 to i64
  %915 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %914
  %916 = load i8, ptr %915, align 1, !tbaa !65
  %917 = zext i8 %916 to i32
  %918 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %919 = load i64, ptr %918, align 8, !tbaa !75
  %920 = zext nneg i8 %916 to i64
  %921 = shl i64 %919, %920
  %922 = zext i32 %913 to i64
  %923 = or i64 %921, %922
  store i64 %923, ptr %918, align 8, !tbaa !75
  %924 = load i32, ptr %17, align 8, !tbaa !68
  %925 = sub nsw i32 %924, %917
  store i32 %925, ptr %17, align 8, !tbaa !68
  %926 = icmp slt i32 %925, 33
  br i1 %926, label %927, label %937

927:                                              ; preds = %912
  %928 = zext nneg i32 %925 to i64
  %929 = shl i64 %923, %928
  %930 = tail call i64 @llvm.bswap.i64(i64 %929)
  %931 = trunc i64 %930 to i32
  %932 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %931, ptr %932, align 4, !tbaa !65
  %933 = load i32, ptr %17, align 8, !tbaa !68
  %934 = add nsw i32 %933, 32
  store i32 %934, ptr %17, align 8, !tbaa !68
  %935 = load ptr, ptr %11, align 8, !tbaa !66
  %936 = getelementptr inbounds i8, ptr %935, i64 4
  store ptr %936, ptr %11, align 8, !tbaa !66
  br label %937

937:                                              ; preds = %896, %906, %912, %927
  %938 = load i32, ptr %799, align 8, !tbaa !89
  %939 = load i8, ptr %713, align 1, !tbaa !65
  %940 = sext i8 %939 to i32
  %941 = icmp eq i32 %938, 2
  br i1 %941, label %942, label %958

942:                                              ; preds = %937
  %943 = xor i32 %940, 1
  %944 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %945 = load i64, ptr %944, align 8, !tbaa !75
  %946 = shl i64 %945, 1
  %947 = zext i32 %943 to i64
  %948 = or i64 %946, %947
  store i64 %948, ptr %944, align 8, !tbaa !75
  %949 = load i32, ptr %17, align 8, !tbaa !68
  %950 = add nsw i32 %949, -1
  store i32 %950, ptr %17, align 8, !tbaa !68
  %951 = icmp eq i32 %950, 32
  br i1 %951, label %952, label %983

952:                                              ; preds = %942
  %953 = trunc i64 %948 to i32
  %954 = tail call i32 @llvm.bswap.i32(i32 %953)
  %955 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %954, ptr %955, align 4, !tbaa !65
  %956 = load ptr, ptr %11, align 8, !tbaa !66
  %957 = getelementptr inbounds i8, ptr %956, i64 4
  store ptr %957, ptr %11, align 8, !tbaa !66
  store i32 64, ptr %17, align 8, !tbaa !68
  br label %983

958:                                              ; preds = %937
  %959 = add nsw i32 %940, 1
  %960 = sext i32 %959 to i64
  %961 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %960
  %962 = load i8, ptr %961, align 1, !tbaa !65
  %963 = zext i8 %962 to i32
  %964 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %965 = load i64, ptr %964, align 8, !tbaa !75
  %966 = zext nneg i8 %962 to i64
  %967 = shl i64 %965, %966
  %968 = zext i32 %959 to i64
  %969 = or i64 %967, %968
  store i64 %969, ptr %964, align 8, !tbaa !75
  %970 = load i32, ptr %17, align 8, !tbaa !68
  %971 = sub nsw i32 %970, %963
  store i32 %971, ptr %17, align 8, !tbaa !68
  %972 = icmp slt i32 %971, 33
  br i1 %972, label %973, label %983

973:                                              ; preds = %958
  %974 = zext nneg i32 %971 to i64
  %975 = shl i64 %969, %974
  %976 = tail call i64 @llvm.bswap.i64(i64 %975)
  %977 = trunc i64 %976 to i32
  %978 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %977, ptr %978, align 4, !tbaa !65
  %979 = load i32, ptr %17, align 8, !tbaa !68
  %980 = add nsw i32 %979, 32
  store i32 %980, ptr %17, align 8, !tbaa !68
  %981 = load ptr, ptr %11, align 8, !tbaa !66
  %982 = getelementptr inbounds i8, ptr %981, i64 4
  store ptr %982, ptr %11, align 8, !tbaa !66
  br label %983

983:                                              ; preds = %973, %958, %952, %942, %797
  br label %984

984:                                              ; preds = %983, %1010
  %985 = phi i64 [ %1011, %1010 ], [ 0, %983 ]
  %986 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %985
  %987 = load i8, ptr %986, align 1, !tbaa !65
  switch i8 %987, label %1010 [
    i8 3, label %988
    i8 1, label %991
    i8 2, label %996
    i8 0, label %1001
  ]

988:                                              ; preds = %984
  %989 = trunc i64 %985 to i32
  %990 = shl i32 %989, 2
  tail call fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef 0, i32 noundef %990, i32 noundef 2)
  br label %1010

991:                                              ; preds = %984
  %992 = shl nuw nsw i64 %985, 2
  %993 = trunc i64 %992 to i32
  tail call fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef 0, i32 noundef %993, i32 noundef 2)
  %994 = trunc i64 %992 to i32
  %995 = or disjoint i32 %994, 2
  tail call fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef 0, i32 noundef %995, i32 noundef 2)
  br label %1010

996:                                              ; preds = %984
  %997 = shl nuw nsw i64 %985, 2
  %998 = trunc i64 %997 to i32
  tail call fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef 0, i32 noundef %998, i32 noundef 1)
  %999 = trunc i64 %997 to i32
  %1000 = or disjoint i32 %999, 1
  tail call fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef 0, i32 noundef %1000, i32 noundef 1)
  br label %1010

1001:                                             ; preds = %984
  %1002 = shl nuw nsw i64 %985, 2
  %1003 = trunc i64 %1002 to i32
  tail call fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef 0, i32 noundef %1003, i32 noundef 1)
  %1004 = trunc i64 %1002 to i32
  %1005 = or disjoint i32 %1004, 1
  tail call fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef 0, i32 noundef %1005, i32 noundef 1)
  %1006 = trunc i64 %1002 to i32
  %1007 = or disjoint i32 %1006, 2
  tail call fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef 0, i32 noundef %1007, i32 noundef 1)
  %1008 = trunc i64 %1002 to i32
  %1009 = or disjoint i32 %1008, 3
  tail call fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef 0, i32 noundef %1009, i32 noundef 1)
  br label %1010

1010:                                             ; preds = %984, %988, %991, %996, %1001
  %1011 = add nuw nsw i64 %985, 1
  %1012 = icmp eq i64 %1011, 4
  br i1 %1012, label %1621, label %984, !llvm.loop !97

1013:                                             ; preds = %344
  %1014 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %1015 = load i64, ptr %1014, align 8, !tbaa !75
  %1016 = shl i64 %1015, 9
  %1017 = or disjoint i64 %1016, 23
  store i64 %1017, ptr %1014, align 8, !tbaa !75
  %1018 = load i32, ptr %17, align 8, !tbaa !68
  %1019 = add nsw i32 %1018, -9
  store i32 %1019, ptr %17, align 8, !tbaa !68
  %1020 = icmp slt i32 %1018, 42
  br i1 %1020, label %1021, label %1031

1021:                                             ; preds = %1013
  %1022 = zext nneg i32 %1019 to i64
  %1023 = shl i64 %1017, %1022
  %1024 = tail call i64 @llvm.bswap.i64(i64 %1023)
  %1025 = trunc i64 %1024 to i32
  %1026 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %1025, ptr %1026, align 4, !tbaa !65
  %1027 = load i32, ptr %17, align 8, !tbaa !68
  %1028 = add nsw i32 %1027, 32
  store i32 %1028, ptr %17, align 8, !tbaa !68
  %1029 = load ptr, ptr %11, align 8, !tbaa !66
  %1030 = getelementptr inbounds i8, ptr %1029, i64 4
  store ptr %1030, ptr %11, align 8, !tbaa !66
  br label %1031

1031:                                             ; preds = %1013, %1021
  br label %1038

1032:                                             ; preds = %1067
  %1033 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  %1034 = load i32, ptr %1033, align 8, !tbaa !89
  %1035 = icmp sgt i32 %1034, 1
  br i1 %1035, label %1036, label %1130

1036:                                             ; preds = %1032
  %1037 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3
  br label %1070

1038:                                             ; preds = %1031, %1067
  %1039 = phi i64 [ %1068, %1067 ], [ 0, %1031 ]
  %1040 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %1039
  %1041 = load i8, ptr %1040, align 1, !tbaa !65
  %1042 = zext i8 %1041 to i64
  %1043 = getelementptr inbounds [13 x i8], ptr @sub_mb_type_b_to_golomb, i64 0, i64 %1042
  %1044 = load i8, ptr %1043, align 1, !tbaa !65
  %1045 = zext i8 %1044 to i64
  %1046 = add nuw nsw i64 %1045, 1
  %1047 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1046
  %1048 = load i8, ptr %1047, align 1, !tbaa !65
  %1049 = zext i8 %1048 to i32
  %1050 = load i64, ptr %1014, align 8, !tbaa !75
  %1051 = zext nneg i8 %1048 to i64
  %1052 = shl i64 %1050, %1051
  %1053 = or i64 %1052, %1046
  store i64 %1053, ptr %1014, align 8, !tbaa !75
  %1054 = load i32, ptr %17, align 8, !tbaa !68
  %1055 = sub nsw i32 %1054, %1049
  store i32 %1055, ptr %17, align 8, !tbaa !68
  %1056 = icmp slt i32 %1055, 33
  br i1 %1056, label %1057, label %1067

1057:                                             ; preds = %1038
  %1058 = zext nneg i32 %1055 to i64
  %1059 = shl i64 %1053, %1058
  %1060 = tail call i64 @llvm.bswap.i64(i64 %1059)
  %1061 = trunc i64 %1060 to i32
  %1062 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %1061, ptr %1062, align 4, !tbaa !65
  %1063 = load i32, ptr %17, align 8, !tbaa !68
  %1064 = add nsw i32 %1063, 32
  store i32 %1064, ptr %17, align 8, !tbaa !68
  %1065 = load ptr, ptr %11, align 8, !tbaa !66
  %1066 = getelementptr inbounds i8, ptr %1065, i64 4
  store ptr %1066, ptr %11, align 8, !tbaa !66
  br label %1067

1067:                                             ; preds = %1038, %1057
  %1068 = add nuw nsw i64 %1039, 1
  %1069 = icmp eq i64 %1068, 4
  br i1 %1069, label %1032, label %1038, !llvm.loop !98

1070:                                             ; preds = %1036, %1127
  %1071 = phi i64 [ 0, %1036 ], [ %1128, %1127 ]
  %1072 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %1071
  %1073 = load i8, ptr %1072, align 1, !tbaa !65
  %1074 = zext i8 %1073 to i64
  %1075 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %1074
  %1076 = load i8, ptr %1075, align 1, !tbaa !65
  %1077 = icmp eq i8 %1076, 0
  br i1 %1077, label %1127, label %1078

1078:                                             ; preds = %1070
  %1079 = load i32, ptr %1033, align 8, !tbaa !89
  %1080 = shl nuw nsw i64 %1071, 2
  %1081 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %1080
  %1082 = load i32, ptr %1081, align 16, !tbaa !89
  %1083 = sext i32 %1082 to i64
  %1084 = getelementptr inbounds [40 x i8], ptr %1037, i64 0, i64 %1083
  %1085 = load i8, ptr %1084, align 1, !tbaa !65
  %1086 = sext i8 %1085 to i32
  %1087 = icmp eq i32 %1079, 2
  br i1 %1087, label %1088, label %1103

1088:                                             ; preds = %1078
  %1089 = xor i32 %1086, 1
  %1090 = load i64, ptr %1014, align 8, !tbaa !75
  %1091 = shl i64 %1090, 1
  %1092 = zext i32 %1089 to i64
  %1093 = or i64 %1091, %1092
  store i64 %1093, ptr %1014, align 8, !tbaa !75
  %1094 = load i32, ptr %17, align 8, !tbaa !68
  %1095 = add nsw i32 %1094, -1
  store i32 %1095, ptr %17, align 8, !tbaa !68
  %1096 = icmp eq i32 %1095, 32
  br i1 %1096, label %1097, label %1127

1097:                                             ; preds = %1088
  %1098 = trunc i64 %1093 to i32
  %1099 = tail call i32 @llvm.bswap.i32(i32 %1098)
  %1100 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %1099, ptr %1100, align 4, !tbaa !65
  %1101 = load ptr, ptr %11, align 8, !tbaa !66
  %1102 = getelementptr inbounds i8, ptr %1101, i64 4
  store ptr %1102, ptr %11, align 8, !tbaa !66
  store i32 64, ptr %17, align 8, !tbaa !68
  br label %1127

1103:                                             ; preds = %1078
  %1104 = add nsw i32 %1086, 1
  %1105 = sext i32 %1104 to i64
  %1106 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1105
  %1107 = load i8, ptr %1106, align 1, !tbaa !65
  %1108 = zext i8 %1107 to i32
  %1109 = load i64, ptr %1014, align 8, !tbaa !75
  %1110 = zext nneg i8 %1107 to i64
  %1111 = shl i64 %1109, %1110
  %1112 = zext i32 %1104 to i64
  %1113 = or i64 %1111, %1112
  store i64 %1113, ptr %1014, align 8, !tbaa !75
  %1114 = load i32, ptr %17, align 8, !tbaa !68
  %1115 = sub nsw i32 %1114, %1108
  store i32 %1115, ptr %17, align 8, !tbaa !68
  %1116 = icmp slt i32 %1115, 33
  br i1 %1116, label %1117, label %1127

1117:                                             ; preds = %1103
  %1118 = zext nneg i32 %1115 to i64
  %1119 = shl i64 %1113, %1118
  %1120 = tail call i64 @llvm.bswap.i64(i64 %1119)
  %1121 = trunc i64 %1120 to i32
  %1122 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %1121, ptr %1122, align 4, !tbaa !65
  %1123 = load i32, ptr %17, align 8, !tbaa !68
  %1124 = add nsw i32 %1123, 32
  store i32 %1124, ptr %17, align 8, !tbaa !68
  %1125 = load ptr, ptr %11, align 8, !tbaa !66
  %1126 = getelementptr inbounds i8, ptr %1125, i64 4
  store ptr %1126, ptr %11, align 8, !tbaa !66
  br label %1127

1127:                                             ; preds = %1117, %1103, %1097, %1088, %1070
  %1128 = add nuw nsw i64 %1071, 1
  %1129 = icmp eq i64 %1128, 4
  br i1 %1129, label %1130, label %1070, !llvm.loop !99

1130:                                             ; preds = %1127, %1032
  %1131 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19, i64 1
  %1132 = load i32, ptr %1131, align 4, !tbaa !89
  %1133 = icmp sgt i32 %1132, 1
  br i1 %1133, label %1134, label %1194

1134:                                             ; preds = %1130, %1191
  %1135 = phi i64 [ %1192, %1191 ], [ 0, %1130 ]
  %1136 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %1135
  %1137 = load i8, ptr %1136, align 1, !tbaa !65
  %1138 = zext i8 %1137 to i64
  %1139 = getelementptr inbounds [2 x [17 x i8]], ptr @x264_mb_partition_listX_table, i64 0, i64 1, i64 %1138
  %1140 = load i8, ptr %1139, align 1, !tbaa !65
  %1141 = icmp eq i8 %1140, 0
  br i1 %1141, label %1191, label %1142

1142:                                             ; preds = %1134
  %1143 = load i32, ptr %1131, align 4, !tbaa !89
  %1144 = shl nuw nsw i64 %1135, 2
  %1145 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %1144
  %1146 = load i32, ptr %1145, align 16, !tbaa !89
  %1147 = sext i32 %1146 to i64
  %1148 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 %1147
  %1149 = load i8, ptr %1148, align 1, !tbaa !65
  %1150 = sext i8 %1149 to i32
  %1151 = icmp eq i32 %1143, 2
  br i1 %1151, label %1152, label %1167

1152:                                             ; preds = %1142
  %1153 = xor i32 %1150, 1
  %1154 = load i64, ptr %1014, align 8, !tbaa !75
  %1155 = shl i64 %1154, 1
  %1156 = zext i32 %1153 to i64
  %1157 = or i64 %1155, %1156
  store i64 %1157, ptr %1014, align 8, !tbaa !75
  %1158 = load i32, ptr %17, align 8, !tbaa !68
  %1159 = add nsw i32 %1158, -1
  store i32 %1159, ptr %17, align 8, !tbaa !68
  %1160 = icmp eq i32 %1159, 32
  br i1 %1160, label %1161, label %1191

1161:                                             ; preds = %1152
  %1162 = trunc i64 %1157 to i32
  %1163 = tail call i32 @llvm.bswap.i32(i32 %1162)
  %1164 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %1163, ptr %1164, align 4, !tbaa !65
  %1165 = load ptr, ptr %11, align 8, !tbaa !66
  %1166 = getelementptr inbounds i8, ptr %1165, i64 4
  store ptr %1166, ptr %11, align 8, !tbaa !66
  store i32 64, ptr %17, align 8, !tbaa !68
  br label %1191

1167:                                             ; preds = %1142
  %1168 = add nsw i32 %1150, 1
  %1169 = sext i32 %1168 to i64
  %1170 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1169
  %1171 = load i8, ptr %1170, align 1, !tbaa !65
  %1172 = zext i8 %1171 to i32
  %1173 = load i64, ptr %1014, align 8, !tbaa !75
  %1174 = zext nneg i8 %1171 to i64
  %1175 = shl i64 %1173, %1174
  %1176 = zext i32 %1168 to i64
  %1177 = or i64 %1175, %1176
  store i64 %1177, ptr %1014, align 8, !tbaa !75
  %1178 = load i32, ptr %17, align 8, !tbaa !68
  %1179 = sub nsw i32 %1178, %1172
  store i32 %1179, ptr %17, align 8, !tbaa !68
  %1180 = icmp slt i32 %1179, 33
  br i1 %1180, label %1181, label %1191

1181:                                             ; preds = %1167
  %1182 = zext nneg i32 %1179 to i64
  %1183 = shl i64 %1177, %1182
  %1184 = tail call i64 @llvm.bswap.i64(i64 %1183)
  %1185 = trunc i64 %1184 to i32
  %1186 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %1185, ptr %1186, align 4, !tbaa !65
  %1187 = load i32, ptr %17, align 8, !tbaa !68
  %1188 = add nsw i32 %1187, 32
  store i32 %1188, ptr %17, align 8, !tbaa !68
  %1189 = load ptr, ptr %11, align 8, !tbaa !66
  %1190 = getelementptr inbounds i8, ptr %1189, i64 4
  store ptr %1190, ptr %11, align 8, !tbaa !66
  br label %1191

1191:                                             ; preds = %1181, %1167, %1161, %1152, %1134
  %1192 = add nuw nsw i64 %1135, 1
  %1193 = icmp eq i64 %1192, 4
  br i1 %1193, label %1194, label %1134, !llvm.loop !100

1194:                                             ; preds = %1191, %1130
  br label %1195

1195:                                             ; preds = %1194, %1206
  %1196 = phi i64 [ %1207, %1206 ], [ 0, %1194 ]
  %1197 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %1196
  %1198 = load i8, ptr %1197, align 1, !tbaa !65
  %1199 = zext i8 %1198 to i64
  %1200 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %1199
  %1201 = load i8, ptr %1200, align 1, !tbaa !65
  %1202 = icmp eq i8 %1201, 0
  br i1 %1202, label %1206, label %1203

1203:                                             ; preds = %1195
  %1204 = trunc i64 %1196 to i32
  %1205 = shl i32 %1204, 2
  tail call fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef 0, i32 noundef %1205, i32 noundef 2)
  br label %1206

1206:                                             ; preds = %1195, %1203
  %1207 = add nuw nsw i64 %1196, 1
  %1208 = icmp eq i64 %1207, 4
  br i1 %1208, label %1209, label %1195, !llvm.loop !101

1209:                                             ; preds = %1206, %1220
  %1210 = phi i64 [ %1221, %1220 ], [ 0, %1206 ]
  %1211 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %1210
  %1212 = load i8, ptr %1211, align 1, !tbaa !65
  %1213 = zext i8 %1212 to i64
  %1214 = getelementptr inbounds [2 x [17 x i8]], ptr @x264_mb_partition_listX_table, i64 0, i64 1, i64 %1213
  %1215 = load i8, ptr %1214, align 1, !tbaa !65
  %1216 = icmp eq i8 %1215, 0
  br i1 %1216, label %1220, label %1217

1217:                                             ; preds = %1209
  %1218 = trunc i64 %1210 to i32
  %1219 = shl i32 %1218, 2
  tail call fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef 1, i32 noundef %1219, i32 noundef 2)
  br label %1220

1220:                                             ; preds = %1209, %1217
  %1221 = add nuw nsw i64 %1210, 1
  %1222 = icmp eq i64 %1221, 4
  br i1 %1222, label %1621, label %1209, !llvm.loop !102

1223:                                             ; preds = %344
  %1224 = sext i32 %4 to i64
  %1225 = getelementptr inbounds [19 x [2 x [2 x i8]]], ptr @x264_mb_type_list_table, i64 0, i64 %1224
  %1226 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  %1227 = load i32, ptr %1226, align 8, !tbaa !89
  %1228 = add nsw i32 %1227, -1
  %1229 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19, i64 1
  %1230 = load i32, ptr %1229, align 4, !tbaa !89
  %1231 = add nsw i32 %1230, -1
  %1232 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %1233 = load i32, ptr %1232, align 4, !tbaa !94
  %1234 = add nsw i32 %1233, -14
  %1235 = sext i32 %1234 to i64
  %1236 = add nsw i32 %4, -8
  %1237 = sext i32 %1236 to i64
  %1238 = getelementptr inbounds [3 x [9 x i8]], ptr @mb_type_b_to_golomb, i64 0, i64 %1235, i64 %1237
  %1239 = load i8, ptr %1238, align 1, !tbaa !65
  %1240 = zext i8 %1239 to i64
  %1241 = add nuw nsw i64 %1240, 1
  %1242 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1241
  %1243 = load i8, ptr %1242, align 1, !tbaa !65
  %1244 = zext i8 %1243 to i32
  %1245 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %1246 = load i64, ptr %1245, align 8, !tbaa !75
  %1247 = zext nneg i8 %1243 to i64
  %1248 = shl i64 %1246, %1247
  %1249 = or i64 %1248, %1241
  store i64 %1249, ptr %1245, align 8, !tbaa !75
  %1250 = load i32, ptr %17, align 8, !tbaa !68
  %1251 = sub nsw i32 %1250, %1244
  store i32 %1251, ptr %17, align 8, !tbaa !68
  %1252 = icmp slt i32 %1251, 33
  br i1 %1252, label %1253, label %1263

1253:                                             ; preds = %1223
  %1254 = zext nneg i32 %1251 to i64
  %1255 = shl i64 %1249, %1254
  %1256 = tail call i64 @llvm.bswap.i64(i64 %1255)
  %1257 = trunc i64 %1256 to i32
  %1258 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %1257, ptr %1258, align 4, !tbaa !65
  %1259 = load i32, ptr %17, align 8, !tbaa !68
  %1260 = add nsw i32 %1259, 32
  store i32 %1260, ptr %17, align 8, !tbaa !68
  %1261 = load ptr, ptr %11, align 8, !tbaa !66
  %1262 = getelementptr inbounds i8, ptr %1261, i64 4
  store ptr %1262, ptr %11, align 8, !tbaa !66
  br label %1263

1263:                                             ; preds = %1223, %1253
  %1264 = load i32, ptr %1232, align 4, !tbaa !94
  %1265 = icmp eq i32 %1264, 16
  %1266 = icmp eq i32 %1228, 0
  br i1 %1265, label %1267, label %1374

1267:                                             ; preds = %1263
  br i1 %1266, label %1315, label %1268

1268:                                             ; preds = %1267
  %1269 = load i8, ptr %1225, align 4, !tbaa !65
  %1270 = icmp eq i8 %1269, 0
  br i1 %1270, label %1315, label %1271

1271:                                             ; preds = %1268
  %1272 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %1273 = load i8, ptr %1272, align 1, !tbaa !65
  %1274 = sext i8 %1273 to i32
  %1275 = icmp eq i32 %1228, 1
  br i1 %1275, label %1276, label %1291

1276:                                             ; preds = %1271
  %1277 = xor i32 %1274, 1
  %1278 = load i64, ptr %1245, align 8, !tbaa !75
  %1279 = shl i64 %1278, 1
  %1280 = zext i32 %1277 to i64
  %1281 = or i64 %1279, %1280
  store i64 %1281, ptr %1245, align 8, !tbaa !75
  %1282 = load i32, ptr %17, align 8, !tbaa !68
  %1283 = add nsw i32 %1282, -1
  store i32 %1283, ptr %17, align 8, !tbaa !68
  %1284 = icmp eq i32 %1283, 32
  br i1 %1284, label %1285, label %1315

1285:                                             ; preds = %1276
  %1286 = trunc i64 %1281 to i32
  %1287 = tail call i32 @llvm.bswap.i32(i32 %1286)
  %1288 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %1287, ptr %1288, align 4, !tbaa !65
  %1289 = load ptr, ptr %11, align 8, !tbaa !66
  %1290 = getelementptr inbounds i8, ptr %1289, i64 4
  store ptr %1290, ptr %11, align 8, !tbaa !66
  store i32 64, ptr %17, align 8, !tbaa !68
  br label %1315

1291:                                             ; preds = %1271
  %1292 = add nsw i32 %1274, 1
  %1293 = sext i32 %1292 to i64
  %1294 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1293
  %1295 = load i8, ptr %1294, align 1, !tbaa !65
  %1296 = zext i8 %1295 to i32
  %1297 = load i64, ptr %1245, align 8, !tbaa !75
  %1298 = zext nneg i8 %1295 to i64
  %1299 = shl i64 %1297, %1298
  %1300 = zext i32 %1292 to i64
  %1301 = or i64 %1299, %1300
  store i64 %1301, ptr %1245, align 8, !tbaa !75
  %1302 = load i32, ptr %17, align 8, !tbaa !68
  %1303 = sub nsw i32 %1302, %1296
  store i32 %1303, ptr %17, align 8, !tbaa !68
  %1304 = icmp slt i32 %1303, 33
  br i1 %1304, label %1305, label %1315

1305:                                             ; preds = %1291
  %1306 = zext nneg i32 %1303 to i64
  %1307 = shl i64 %1301, %1306
  %1308 = tail call i64 @llvm.bswap.i64(i64 %1307)
  %1309 = trunc i64 %1308 to i32
  %1310 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %1309, ptr %1310, align 4, !tbaa !65
  %1311 = load i32, ptr %17, align 8, !tbaa !68
  %1312 = add nsw i32 %1311, 32
  store i32 %1312, ptr %17, align 8, !tbaa !68
  %1313 = load ptr, ptr %11, align 8, !tbaa !66
  %1314 = getelementptr inbounds i8, ptr %1313, i64 4
  store ptr %1314, ptr %11, align 8, !tbaa !66
  br label %1315

1315:                                             ; preds = %1305, %1291, %1285, %1276, %1268, %1267
  %1316 = icmp eq i32 %1231, 0
  br i1 %1316, label %1365, label %1317

1317:                                             ; preds = %1315
  %1318 = getelementptr inbounds [2 x i8], ptr %1225, i64 1
  %1319 = load i8, ptr %1318, align 2, !tbaa !65
  %1320 = icmp eq i8 %1319, 0
  br i1 %1320, label %1365, label %1321

1321:                                             ; preds = %1317
  %1322 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 12
  %1323 = load i8, ptr %1322, align 1, !tbaa !65
  %1324 = sext i8 %1323 to i32
  %1325 = icmp eq i32 %1231, 1
  br i1 %1325, label %1326, label %1341

1326:                                             ; preds = %1321
  %1327 = xor i32 %1324, 1
  %1328 = load i64, ptr %1245, align 8, !tbaa !75
  %1329 = shl i64 %1328, 1
  %1330 = zext i32 %1327 to i64
  %1331 = or i64 %1329, %1330
  store i64 %1331, ptr %1245, align 8, !tbaa !75
  %1332 = load i32, ptr %17, align 8, !tbaa !68
  %1333 = add nsw i32 %1332, -1
  store i32 %1333, ptr %17, align 8, !tbaa !68
  %1334 = icmp eq i32 %1333, 32
  br i1 %1334, label %1335, label %1365

1335:                                             ; preds = %1326
  %1336 = trunc i64 %1331 to i32
  %1337 = tail call i32 @llvm.bswap.i32(i32 %1336)
  %1338 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %1337, ptr %1338, align 4, !tbaa !65
  %1339 = load ptr, ptr %11, align 8, !tbaa !66
  %1340 = getelementptr inbounds i8, ptr %1339, i64 4
  store ptr %1340, ptr %11, align 8, !tbaa !66
  store i32 64, ptr %17, align 8, !tbaa !68
  br label %1365

1341:                                             ; preds = %1321
  %1342 = add nsw i32 %1324, 1
  %1343 = sext i32 %1342 to i64
  %1344 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1343
  %1345 = load i8, ptr %1344, align 1, !tbaa !65
  %1346 = zext i8 %1345 to i32
  %1347 = load i64, ptr %1245, align 8, !tbaa !75
  %1348 = zext nneg i8 %1345 to i64
  %1349 = shl i64 %1347, %1348
  %1350 = zext i32 %1342 to i64
  %1351 = or i64 %1349, %1350
  store i64 %1351, ptr %1245, align 8, !tbaa !75
  %1352 = load i32, ptr %17, align 8, !tbaa !68
  %1353 = sub nsw i32 %1352, %1346
  store i32 %1353, ptr %17, align 8, !tbaa !68
  %1354 = icmp slt i32 %1353, 33
  br i1 %1354, label %1355, label %1365

1355:                                             ; preds = %1341
  %1356 = zext nneg i32 %1353 to i64
  %1357 = shl i64 %1351, %1356
  %1358 = tail call i64 @llvm.bswap.i64(i64 %1357)
  %1359 = trunc i64 %1358 to i32
  %1360 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %1359, ptr %1360, align 4, !tbaa !65
  %1361 = load i32, ptr %17, align 8, !tbaa !68
  %1362 = add nsw i32 %1361, 32
  store i32 %1362, ptr %17, align 8, !tbaa !68
  %1363 = load ptr, ptr %11, align 8, !tbaa !66
  %1364 = getelementptr inbounds i8, ptr %1363, i64 4
  store ptr %1364, ptr %11, align 8, !tbaa !66
  br label %1365

1365:                                             ; preds = %1355, %1341, %1335, %1326, %1317, %1315
  %1366 = load i8, ptr %1225, align 4, !tbaa !65
  %1367 = icmp eq i8 %1366, 0
  br i1 %1367, label %1369, label %1368

1368:                                             ; preds = %1365
  tail call fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 4)
  br label %1369

1369:                                             ; preds = %1368, %1365
  %1370 = getelementptr inbounds [2 x i8], ptr %1225, i64 1
  %1371 = load i8, ptr %1370, align 2, !tbaa !65
  %1372 = icmp eq i8 %1371, 0
  br i1 %1372, label %1621, label %1373

1373:                                             ; preds = %1369
  tail call fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 4)
  br label %1621

1374:                                             ; preds = %1263
  br i1 %1266, label %1470, label %1375

1375:                                             ; preds = %1374
  %1376 = load i8, ptr %1225, align 4, !tbaa !65
  %1377 = icmp eq i8 %1376, 0
  br i1 %1377, label %1422, label %1378

1378:                                             ; preds = %1375
  %1379 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %1380 = load i8, ptr %1379, align 1, !tbaa !65
  %1381 = sext i8 %1380 to i32
  %1382 = icmp eq i32 %1228, 1
  br i1 %1382, label %1383, label %1398

1383:                                             ; preds = %1378
  %1384 = xor i32 %1381, 1
  %1385 = load i64, ptr %1245, align 8, !tbaa !75
  %1386 = shl i64 %1385, 1
  %1387 = zext i32 %1384 to i64
  %1388 = or i64 %1386, %1387
  store i64 %1388, ptr %1245, align 8, !tbaa !75
  %1389 = load i32, ptr %17, align 8, !tbaa !68
  %1390 = add nsw i32 %1389, -1
  store i32 %1390, ptr %17, align 8, !tbaa !68
  %1391 = icmp eq i32 %1390, 32
  br i1 %1391, label %1392, label %1422

1392:                                             ; preds = %1383
  %1393 = trunc i64 %1388 to i32
  %1394 = tail call i32 @llvm.bswap.i32(i32 %1393)
  %1395 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %1394, ptr %1395, align 4, !tbaa !65
  %1396 = load ptr, ptr %11, align 8, !tbaa !66
  %1397 = getelementptr inbounds i8, ptr %1396, i64 4
  store ptr %1397, ptr %11, align 8, !tbaa !66
  store i32 64, ptr %17, align 8, !tbaa !68
  br label %1422

1398:                                             ; preds = %1378
  %1399 = add nsw i32 %1381, 1
  %1400 = sext i32 %1399 to i64
  %1401 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1400
  %1402 = load i8, ptr %1401, align 1, !tbaa !65
  %1403 = zext i8 %1402 to i32
  %1404 = load i64, ptr %1245, align 8, !tbaa !75
  %1405 = zext nneg i8 %1402 to i64
  %1406 = shl i64 %1404, %1405
  %1407 = zext i32 %1399 to i64
  %1408 = or i64 %1406, %1407
  store i64 %1408, ptr %1245, align 8, !tbaa !75
  %1409 = load i32, ptr %17, align 8, !tbaa !68
  %1410 = sub nsw i32 %1409, %1403
  store i32 %1410, ptr %17, align 8, !tbaa !68
  %1411 = icmp slt i32 %1410, 33
  br i1 %1411, label %1412, label %1422

1412:                                             ; preds = %1398
  %1413 = zext nneg i32 %1410 to i64
  %1414 = shl i64 %1408, %1413
  %1415 = tail call i64 @llvm.bswap.i64(i64 %1414)
  %1416 = trunc i64 %1415 to i32
  %1417 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %1416, ptr %1417, align 4, !tbaa !65
  %1418 = load i32, ptr %17, align 8, !tbaa !68
  %1419 = add nsw i32 %1418, 32
  store i32 %1419, ptr %17, align 8, !tbaa !68
  %1420 = load ptr, ptr %11, align 8, !tbaa !66
  %1421 = getelementptr inbounds i8, ptr %1420, i64 4
  store ptr %1421, ptr %11, align 8, !tbaa !66
  br label %1422

1422:                                             ; preds = %1375, %1383, %1392, %1398, %1412
  %1423 = getelementptr inbounds [2 x i8], ptr %1225, i64 0, i64 1
  %1424 = load i8, ptr %1423, align 1, !tbaa !65
  %1425 = icmp eq i8 %1424, 0
  br i1 %1425, label %1470, label %1426

1426:                                             ; preds = %1422
  %1427 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 30
  %1428 = load i8, ptr %1427, align 1, !tbaa !65
  %1429 = sext i8 %1428 to i32
  %1430 = icmp eq i32 %1228, 1
  br i1 %1430, label %1431, label %1446

1431:                                             ; preds = %1426
  %1432 = xor i32 %1429, 1
  %1433 = load i64, ptr %1245, align 8, !tbaa !75
  %1434 = shl i64 %1433, 1
  %1435 = zext i32 %1432 to i64
  %1436 = or i64 %1434, %1435
  store i64 %1436, ptr %1245, align 8, !tbaa !75
  %1437 = load i32, ptr %17, align 8, !tbaa !68
  %1438 = add nsw i32 %1437, -1
  store i32 %1438, ptr %17, align 8, !tbaa !68
  %1439 = icmp eq i32 %1438, 32
  br i1 %1439, label %1440, label %1470

1440:                                             ; preds = %1431
  %1441 = trunc i64 %1436 to i32
  %1442 = tail call i32 @llvm.bswap.i32(i32 %1441)
  %1443 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %1442, ptr %1443, align 4, !tbaa !65
  %1444 = load ptr, ptr %11, align 8, !tbaa !66
  %1445 = getelementptr inbounds i8, ptr %1444, i64 4
  store ptr %1445, ptr %11, align 8, !tbaa !66
  store i32 64, ptr %17, align 8, !tbaa !68
  br label %1470

1446:                                             ; preds = %1426
  %1447 = add nsw i32 %1429, 1
  %1448 = sext i32 %1447 to i64
  %1449 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1448
  %1450 = load i8, ptr %1449, align 1, !tbaa !65
  %1451 = zext i8 %1450 to i32
  %1452 = load i64, ptr %1245, align 8, !tbaa !75
  %1453 = zext nneg i8 %1450 to i64
  %1454 = shl i64 %1452, %1453
  %1455 = zext i32 %1447 to i64
  %1456 = or i64 %1454, %1455
  store i64 %1456, ptr %1245, align 8, !tbaa !75
  %1457 = load i32, ptr %17, align 8, !tbaa !68
  %1458 = sub nsw i32 %1457, %1451
  store i32 %1458, ptr %17, align 8, !tbaa !68
  %1459 = icmp slt i32 %1458, 33
  br i1 %1459, label %1460, label %1470

1460:                                             ; preds = %1446
  %1461 = zext nneg i32 %1458 to i64
  %1462 = shl i64 %1456, %1461
  %1463 = tail call i64 @llvm.bswap.i64(i64 %1462)
  %1464 = trunc i64 %1463 to i32
  %1465 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %1464, ptr %1465, align 4, !tbaa !65
  %1466 = load i32, ptr %17, align 8, !tbaa !68
  %1467 = add nsw i32 %1466, 32
  store i32 %1467, ptr %17, align 8, !tbaa !68
  %1468 = load ptr, ptr %11, align 8, !tbaa !66
  %1469 = getelementptr inbounds i8, ptr %1468, i64 4
  store ptr %1469, ptr %11, align 8, !tbaa !66
  br label %1470

1470:                                             ; preds = %1460, %1446, %1440, %1431, %1374, %1422
  %1471 = icmp eq i32 %1231, 0
  br i1 %1471, label %1568, label %1472

1472:                                             ; preds = %1470
  %1473 = getelementptr inbounds [2 x i8], ptr %1225, i64 1
  %1474 = load i8, ptr %1473, align 2, !tbaa !65
  %1475 = icmp eq i8 %1474, 0
  br i1 %1475, label %1520, label %1476

1476:                                             ; preds = %1472
  %1477 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 12
  %1478 = load i8, ptr %1477, align 1, !tbaa !65
  %1479 = sext i8 %1478 to i32
  %1480 = icmp eq i32 %1231, 1
  br i1 %1480, label %1481, label %1496

1481:                                             ; preds = %1476
  %1482 = xor i32 %1479, 1
  %1483 = load i64, ptr %1245, align 8, !tbaa !75
  %1484 = shl i64 %1483, 1
  %1485 = zext i32 %1482 to i64
  %1486 = or i64 %1484, %1485
  store i64 %1486, ptr %1245, align 8, !tbaa !75
  %1487 = load i32, ptr %17, align 8, !tbaa !68
  %1488 = add nsw i32 %1487, -1
  store i32 %1488, ptr %17, align 8, !tbaa !68
  %1489 = icmp eq i32 %1488, 32
  br i1 %1489, label %1490, label %1520

1490:                                             ; preds = %1481
  %1491 = trunc i64 %1486 to i32
  %1492 = tail call i32 @llvm.bswap.i32(i32 %1491)
  %1493 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %1492, ptr %1493, align 4, !tbaa !65
  %1494 = load ptr, ptr %11, align 8, !tbaa !66
  %1495 = getelementptr inbounds i8, ptr %1494, i64 4
  store ptr %1495, ptr %11, align 8, !tbaa !66
  store i32 64, ptr %17, align 8, !tbaa !68
  br label %1520

1496:                                             ; preds = %1476
  %1497 = add nsw i32 %1479, 1
  %1498 = sext i32 %1497 to i64
  %1499 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1498
  %1500 = load i8, ptr %1499, align 1, !tbaa !65
  %1501 = zext i8 %1500 to i32
  %1502 = load i64, ptr %1245, align 8, !tbaa !75
  %1503 = zext nneg i8 %1500 to i64
  %1504 = shl i64 %1502, %1503
  %1505 = zext i32 %1497 to i64
  %1506 = or i64 %1504, %1505
  store i64 %1506, ptr %1245, align 8, !tbaa !75
  %1507 = load i32, ptr %17, align 8, !tbaa !68
  %1508 = sub nsw i32 %1507, %1501
  store i32 %1508, ptr %17, align 8, !tbaa !68
  %1509 = icmp slt i32 %1508, 33
  br i1 %1509, label %1510, label %1520

1510:                                             ; preds = %1496
  %1511 = zext nneg i32 %1508 to i64
  %1512 = shl i64 %1506, %1511
  %1513 = tail call i64 @llvm.bswap.i64(i64 %1512)
  %1514 = trunc i64 %1513 to i32
  %1515 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %1514, ptr %1515, align 4, !tbaa !65
  %1516 = load i32, ptr %17, align 8, !tbaa !68
  %1517 = add nsw i32 %1516, 32
  store i32 %1517, ptr %17, align 8, !tbaa !68
  %1518 = load ptr, ptr %11, align 8, !tbaa !66
  %1519 = getelementptr inbounds i8, ptr %1518, i64 4
  store ptr %1519, ptr %11, align 8, !tbaa !66
  br label %1520

1520:                                             ; preds = %1472, %1481, %1490, %1496, %1510
  %1521 = getelementptr inbounds [2 x i8], ptr %1225, i64 1, i64 1
  %1522 = load i8, ptr %1521, align 1, !tbaa !65
  %1523 = icmp eq i8 %1522, 0
  br i1 %1523, label %1568, label %1524

1524:                                             ; preds = %1520
  %1525 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 30
  %1526 = load i8, ptr %1525, align 1, !tbaa !65
  %1527 = sext i8 %1526 to i32
  %1528 = icmp eq i32 %1231, 1
  br i1 %1528, label %1529, label %1544

1529:                                             ; preds = %1524
  %1530 = xor i32 %1527, 1
  %1531 = load i64, ptr %1245, align 8, !tbaa !75
  %1532 = shl i64 %1531, 1
  %1533 = zext i32 %1530 to i64
  %1534 = or i64 %1532, %1533
  store i64 %1534, ptr %1245, align 8, !tbaa !75
  %1535 = load i32, ptr %17, align 8, !tbaa !68
  %1536 = add nsw i32 %1535, -1
  store i32 %1536, ptr %17, align 8, !tbaa !68
  %1537 = icmp eq i32 %1536, 32
  br i1 %1537, label %1538, label %1568

1538:                                             ; preds = %1529
  %1539 = trunc i64 %1534 to i32
  %1540 = tail call i32 @llvm.bswap.i32(i32 %1539)
  %1541 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %1540, ptr %1541, align 4, !tbaa !65
  %1542 = load ptr, ptr %11, align 8, !tbaa !66
  %1543 = getelementptr inbounds i8, ptr %1542, i64 4
  store ptr %1543, ptr %11, align 8, !tbaa !66
  store i32 64, ptr %17, align 8, !tbaa !68
  br label %1568

1544:                                             ; preds = %1524
  %1545 = add nsw i32 %1527, 1
  %1546 = sext i32 %1545 to i64
  %1547 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1546
  %1548 = load i8, ptr %1547, align 1, !tbaa !65
  %1549 = zext i8 %1548 to i32
  %1550 = load i64, ptr %1245, align 8, !tbaa !75
  %1551 = zext nneg i8 %1548 to i64
  %1552 = shl i64 %1550, %1551
  %1553 = zext i32 %1545 to i64
  %1554 = or i64 %1552, %1553
  store i64 %1554, ptr %1245, align 8, !tbaa !75
  %1555 = load i32, ptr %17, align 8, !tbaa !68
  %1556 = sub nsw i32 %1555, %1549
  store i32 %1556, ptr %17, align 8, !tbaa !68
  %1557 = icmp slt i32 %1556, 33
  br i1 %1557, label %1558, label %1568

1558:                                             ; preds = %1544
  %1559 = zext nneg i32 %1556 to i64
  %1560 = shl i64 %1554, %1559
  %1561 = tail call i64 @llvm.bswap.i64(i64 %1560)
  %1562 = trunc i64 %1561 to i32
  %1563 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %1562, ptr %1563, align 4, !tbaa !65
  %1564 = load i32, ptr %17, align 8, !tbaa !68
  %1565 = add nsw i32 %1564, 32
  store i32 %1565, ptr %17, align 8, !tbaa !68
  %1566 = load ptr, ptr %11, align 8, !tbaa !66
  %1567 = getelementptr inbounds i8, ptr %1566, i64 4
  store ptr %1567, ptr %11, align 8, !tbaa !66
  br label %1568

1568:                                             ; preds = %1558, %1544, %1538, %1529, %1470, %1520
  %1569 = load i32, ptr %1232, align 4, !tbaa !94
  %1570 = icmp eq i32 %1569, 14
  %1571 = load i8, ptr %1225, align 4, !tbaa !65
  %1572 = icmp eq i8 %1571, 0
  br i1 %1570, label %1573, label %1590

1573:                                             ; preds = %1568
  br i1 %1572, label %1575, label %1574

1574:                                             ; preds = %1573
  tail call fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 4)
  br label %1575

1575:                                             ; preds = %1574, %1573
  %1576 = getelementptr inbounds [2 x i8], ptr %1225, i64 0, i64 1
  %1577 = load i8, ptr %1576, align 1, !tbaa !65
  %1578 = icmp eq i8 %1577, 0
  br i1 %1578, label %1580, label %1579

1579:                                             ; preds = %1575
  tail call fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef 0, i32 noundef 8, i32 noundef 4)
  br label %1580

1580:                                             ; preds = %1579, %1575
  %1581 = getelementptr inbounds [2 x i8], ptr %1225, i64 1
  %1582 = load i8, ptr %1581, align 2, !tbaa !65
  %1583 = icmp eq i8 %1582, 0
  br i1 %1583, label %1585, label %1584

1584:                                             ; preds = %1580
  tail call fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 4)
  br label %1585

1585:                                             ; preds = %1584, %1580
  %1586 = getelementptr inbounds [2 x i8], ptr %1225, i64 1, i64 1
  %1587 = load i8, ptr %1586, align 1, !tbaa !65
  %1588 = icmp eq i8 %1587, 0
  br i1 %1588, label %1621, label %1589

1589:                                             ; preds = %1585
  tail call fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef 1, i32 noundef 8, i32 noundef 4)
  br label %1621

1590:                                             ; preds = %1568
  br i1 %1572, label %1592, label %1591

1591:                                             ; preds = %1590
  tail call fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 2)
  br label %1592

1592:                                             ; preds = %1591, %1590
  %1593 = getelementptr inbounds [2 x i8], ptr %1225, i64 0, i64 1
  %1594 = load i8, ptr %1593, align 1, !tbaa !65
  %1595 = icmp eq i8 %1594, 0
  br i1 %1595, label %1597, label %1596

1596:                                             ; preds = %1592
  tail call fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef 0, i32 noundef 4, i32 noundef 2)
  br label %1597

1597:                                             ; preds = %1596, %1592
  %1598 = getelementptr inbounds [2 x i8], ptr %1225, i64 1
  %1599 = load i8, ptr %1598, align 2, !tbaa !65
  %1600 = icmp eq i8 %1599, 0
  br i1 %1600, label %1602, label %1601

1601:                                             ; preds = %1597
  tail call fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 2)
  br label %1602

1602:                                             ; preds = %1601, %1597
  %1603 = getelementptr inbounds [2 x i8], ptr %1225, i64 1, i64 1
  %1604 = load i8, ptr %1603, align 1, !tbaa !65
  %1605 = icmp eq i8 %1604, 0
  br i1 %1605, label %1621, label %1606

1606:                                             ; preds = %1602
  tail call fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef 1, i32 noundef 4, i32 noundef 2)
  br label %1621

1607:                                             ; preds = %344
  %1608 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %1609 = load i64, ptr %1608, align 8, !tbaa !75
  %1610 = shl i64 %1609, 1
  %1611 = or disjoint i64 %1610, 1
  store i64 %1611, ptr %1608, align 8, !tbaa !75
  %1612 = load i32, ptr %17, align 8, !tbaa !68
  %1613 = add nsw i32 %1612, -1
  store i32 %1613, ptr %17, align 8, !tbaa !68
  %1614 = icmp eq i32 %1613, 32
  br i1 %1614, label %1615, label %1621

1615:                                             ; preds = %1607
  %1616 = trunc i64 %1611 to i32
  %1617 = tail call i32 @llvm.bswap.i32(i32 %1616)
  %1618 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %1617, ptr %1618, align 4, !tbaa !65
  %1619 = load ptr, ptr %11, align 8, !tbaa !66
  %1620 = getelementptr inbounds i8, ptr %1619, i64 4
  store ptr %1620, ptr %11, align 8, !tbaa !66
  store i32 64, ptr %17, align 8, !tbaa !68
  br label %1621

1621:                                             ; preds = %1220, %1010, %1615, %1607, %404, %386, %265, %247, %1373, %1369, %1602, %1606, %1585, %1589, %414, %479, %703, %591
  %1622 = load ptr, ptr %11, align 8, !tbaa !66
  %1623 = load ptr, ptr %2, align 8, !tbaa !67
  %1624 = ptrtoint ptr %1622 to i64
  %1625 = ptrtoint ptr %1623 to i64
  %1626 = sub i64 %1624, %1625
  %1627 = load i32, ptr %17, align 8, !tbaa !68
  %1628 = trunc i64 %1626 to i32
  %1629 = shl i32 %1628, 3
  %1630 = sub i32 %1629, %1627
  %1631 = add i32 %1630, 64
  %1632 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57
  %1633 = load i32, ptr %1632, align 8, !tbaa !76
  %1634 = add i32 %1633, %22
  %1635 = add i32 %1634, %1631
  store i32 %1635, ptr %1632, align 8, !tbaa !76
  br i1 %196, label %1636, label %1658

1636:                                             ; preds = %1621
  %1637 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  %1638 = load i32, ptr %1637, align 4, !tbaa !92
  %1639 = shl i32 %1638, 4
  %1640 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %1641 = load i32, ptr %1640, align 8, !tbaa !93
  %1642 = or i32 %1639, %1641
  %1643 = sext i32 %1642 to i64
  %1644 = getelementptr inbounds [48 x i8], ptr @intra4x4_cbp_to_golomb, i64 0, i64 %1643
  %1645 = load i8, ptr %1644, align 1, !tbaa !65
  %1646 = zext i8 %1645 to i64
  %1647 = add nuw nsw i64 %1646, 1
  %1648 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1647
  %1649 = load i8, ptr %1648, align 1, !tbaa !65
  %1650 = zext i8 %1649 to i32
  %1651 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %1652 = load i64, ptr %1651, align 8, !tbaa !75
  %1653 = zext nneg i8 %1649 to i64
  %1654 = shl i64 %1652, %1653
  %1655 = or i64 %1654, %1647
  store i64 %1655, ptr %1651, align 8, !tbaa !75
  %1656 = sub nsw i32 %1627, %1650
  store i32 %1656, ptr %17, align 8, !tbaa !68
  %1657 = icmp slt i32 %1656, 33
  br i1 %1657, label %1682, label %1693

1658:                                             ; preds = %1621
  %1659 = icmp eq i32 %4, 2
  br i1 %1659, label %1693, label %1660

1660:                                             ; preds = %1658
  %1661 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  %1662 = load i32, ptr %1661, align 4, !tbaa !92
  %1663 = shl i32 %1662, 4
  %1664 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %1665 = load i32, ptr %1664, align 8, !tbaa !93
  %1666 = or i32 %1663, %1665
  %1667 = sext i32 %1666 to i64
  %1668 = getelementptr inbounds [48 x i8], ptr @inter_cbp_to_golomb, i64 0, i64 %1667
  %1669 = load i8, ptr %1668, align 1, !tbaa !65
  %1670 = zext i8 %1669 to i64
  %1671 = add nuw nsw i64 %1670, 1
  %1672 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1671
  %1673 = load i8, ptr %1672, align 1, !tbaa !65
  %1674 = zext i8 %1673 to i32
  %1675 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %1676 = load i64, ptr %1675, align 8, !tbaa !75
  %1677 = zext nneg i8 %1673 to i64
  %1678 = shl i64 %1676, %1677
  %1679 = or i64 %1678, %1671
  store i64 %1679, ptr %1675, align 8, !tbaa !75
  %1680 = sub nsw i32 %1627, %1674
  store i32 %1680, ptr %17, align 8, !tbaa !68
  %1681 = icmp slt i32 %1680, 33
  br i1 %1681, label %1682, label %1693

1682:                                             ; preds = %1660, %1636
  %1683 = phi i32 [ %1656, %1636 ], [ %1680, %1660 ]
  %1684 = phi i64 [ %1655, %1636 ], [ %1679, %1660 ]
  %1685 = zext nneg i32 %1683 to i64
  %1686 = shl i64 %1684, %1685
  %1687 = tail call i64 @llvm.bswap.i64(i64 %1686)
  %1688 = trunc i64 %1687 to i32
  store i32 %1688, ptr %1622, align 4, !tbaa !65
  %1689 = load i32, ptr %17, align 8, !tbaa !68
  %1690 = add nsw i32 %1689, 32
  store i32 %1690, ptr %17, align 8, !tbaa !68
  %1691 = load ptr, ptr %11, align 8, !tbaa !66
  %1692 = getelementptr inbounds i8, ptr %1691, i64 4
  store ptr %1692, ptr %11, align 8, !tbaa !66
  br label %1693

1693:                                             ; preds = %1682, %1660, %1636, %1658
  %1694 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  %1695 = load ptr, ptr %1694, align 16, !tbaa !84
  %1696 = getelementptr inbounds %struct.x264_pps_t, ptr %1695, i64 0, i32 15
  %1697 = load i32, ptr %1696, align 4, !tbaa !85
  %1698 = icmp eq i32 %1697, 0
  br i1 %1698, label %1712, label %1699

1699:                                             ; preds = %1693
  %1700 = load i32, ptr %3, align 8, !tbaa !34
  %1701 = icmp eq i32 %1700, 5
  br i1 %1701, label %1707, label %1702

1702:                                             ; preds = %1699
  %1703 = sext i32 %1700 to i64
  %1704 = getelementptr inbounds [19 x i8], ptr @x264_mb_transform_8x8_allowed.partition_tab, i64 0, i64 %1703
  %1705 = load i8, ptr %1704, align 1, !tbaa !65
  %1706 = zext i8 %1705 to i32
  br label %1712

1707:                                             ; preds = %1699
  %1708 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55
  %1709 = load i32, ptr %1708, align 16, !tbaa !65
  %1710 = icmp eq i32 %1709, 50529027
  %1711 = zext i1 %1710 to i32
  br label %1712

1712:                                             ; preds = %1693, %1702, %1707
  %1713 = phi i32 [ %1706, %1702 ], [ %1711, %1707 ], [ 0, %1693 ]
  %1714 = icmp eq i32 %1713, 0
  br i1 %1714, label %1736, label %1715

1715:                                             ; preds = %1712
  %1716 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %1717 = load i32, ptr %1716, align 8, !tbaa !93
  %1718 = icmp eq i32 %1717, 0
  br i1 %1718, label %1736, label %1719

1719:                                             ; preds = %1715
  %1720 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  %1721 = load i32, ptr %1720, align 4, !tbaa !87
  %1722 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %1723 = load i64, ptr %1722, align 8, !tbaa !75
  %1724 = shl i64 %1723, 1
  %1725 = zext i32 %1721 to i64
  %1726 = or i64 %1724, %1725
  store i64 %1726, ptr %1722, align 8, !tbaa !75
  %1727 = load i32, ptr %17, align 8, !tbaa !68
  %1728 = add nsw i32 %1727, -1
  store i32 %1728, ptr %17, align 8, !tbaa !68
  %1729 = icmp eq i32 %1728, 32
  br i1 %1729, label %1730, label %1736

1730:                                             ; preds = %1719
  %1731 = trunc i64 %1726 to i32
  %1732 = tail call i32 @llvm.bswap.i32(i32 %1731)
  %1733 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %1732, ptr %1733, align 4, !tbaa !65
  %1734 = load ptr, ptr %11, align 8, !tbaa !66
  %1735 = getelementptr inbounds i8, ptr %1734, i64 4
  store ptr %1735, ptr %11, align 8, !tbaa !66
  store i32 64, ptr %17, align 8, !tbaa !68
  br label %1736

1736:                                             ; preds = %1730, %1719, %1715, %1712
  %1737 = icmp eq i32 %4, 2
  br i1 %1737, label %1738, label %1854

1738:                                             ; preds = %1736
  tail call fastcc void @cavlc_qp_delta(ptr noundef %0)
  %1739 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 11
  %1740 = load i8, ptr %1739, align 1, !tbaa !65
  %1741 = zext i8 %1740 to i32
  %1742 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 4
  %1743 = load i8, ptr %1742, align 1, !tbaa !65
  %1744 = zext i8 %1743 to i32
  %1745 = add nuw nsw i32 %1744, %1741
  %1746 = icmp ult i32 %1745, 128
  %1747 = add nuw nsw i32 %1745, 1
  %1748 = lshr i32 %1747, 1
  %1749 = select i1 %1746, i32 %1748, i32 %1745
  %1750 = and i32 %1749, 127
  %1751 = zext nneg i32 %1750 to i64
  %1752 = getelementptr inbounds [17 x i8], ptr @ct_index, i64 0, i64 %1751
  %1753 = load i8, ptr %1752, align 1, !tbaa !65
  %1754 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 44
  %1755 = load i8, ptr %1754, align 1, !tbaa !65
  %1756 = icmp eq i8 %1755, 0
  br i1 %1756, label %1757, label %1783

1757:                                             ; preds = %1738
  %1758 = zext i8 %1753 to i64
  %1759 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %1758
  %1760 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %1758, i32 1
  %1761 = load i8, ptr %1760, align 1, !tbaa !103
  %1762 = zext i8 %1761 to i32
  %1763 = load i8, ptr %1759, align 1, !tbaa !105
  %1764 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %1765 = load i64, ptr %1764, align 8, !tbaa !75
  %1766 = zext nneg i8 %1761 to i64
  %1767 = shl i64 %1765, %1766
  %1768 = zext i8 %1763 to i64
  %1769 = or i64 %1767, %1768
  store i64 %1769, ptr %1764, align 8, !tbaa !75
  %1770 = load i32, ptr %17, align 8, !tbaa !68
  %1771 = sub nsw i32 %1770, %1762
  store i32 %1771, ptr %17, align 8, !tbaa !68
  %1772 = icmp slt i32 %1771, 33
  br i1 %1772, label %1773, label %1788

1773:                                             ; preds = %1757
  %1774 = zext nneg i32 %1771 to i64
  %1775 = shl i64 %1769, %1774
  %1776 = tail call i64 @llvm.bswap.i64(i64 %1775)
  %1777 = trunc i64 %1776 to i32
  %1778 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %1777, ptr %1778, align 4, !tbaa !65
  %1779 = load i32, ptr %17, align 8, !tbaa !68
  %1780 = add nsw i32 %1779, 32
  store i32 %1780, ptr %17, align 8, !tbaa !68
  %1781 = load ptr, ptr %11, align 8, !tbaa !66
  %1782 = getelementptr inbounds i8, ptr %1781, i64 4
  store ptr %1782, ptr %11, align 8, !tbaa !66
  br label %1788

1783:                                             ; preds = %1738
  %1784 = zext i8 %1753 to i32
  %1785 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54
  %1786 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %1785, i32 noundef %1784)
  %1787 = trunc i32 %1786 to i8
  store i8 %1787, ptr %1754, align 1, !tbaa !65
  br label %1788

1788:                                             ; preds = %1773, %1757, %1783
  %1789 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %1790 = load i32, ptr %1789, align 8, !tbaa !93
  %1791 = icmp eq i32 %1790, 0
  br i1 %1791, label %1961, label %1792

1792:                                             ; preds = %1788
  %1793 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  br label %1794

1794:                                             ; preds = %1792, %1851
  %1795 = phi i64 [ 0, %1792 ], [ %1852, %1851 ]
  %1796 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %1795
  %1797 = load i32, ptr %1796, align 4, !tbaa !89
  %1798 = add nsw i32 %1797, -1
  %1799 = sext i32 %1798 to i64
  %1800 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %1799
  %1801 = load i8, ptr %1800, align 1, !tbaa !65
  %1802 = zext i8 %1801 to i32
  %1803 = add nsw i32 %1797, -8
  %1804 = sext i32 %1803 to i64
  %1805 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %1804
  %1806 = load i8, ptr %1805, align 1, !tbaa !65
  %1807 = zext i8 %1806 to i32
  %1808 = add nuw nsw i32 %1807, %1802
  %1809 = icmp ult i32 %1808, 128
  %1810 = add nuw nsw i32 %1808, 1
  %1811 = lshr i32 %1810, 1
  %1812 = select i1 %1809, i32 %1811, i32 %1808
  %1813 = and i32 %1812, 127
  %1814 = zext nneg i32 %1813 to i64
  %1815 = getelementptr inbounds [17 x i8], ptr @ct_index, i64 0, i64 %1814
  %1816 = load i8, ptr %1815, align 1, !tbaa !65
  %1817 = sext i32 %1797 to i64
  %1818 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %1817
  %1819 = load i8, ptr %1818, align 1, !tbaa !65
  %1820 = icmp eq i8 %1819, 0
  br i1 %1820, label %1821, label %1846

1821:                                             ; preds = %1794
  %1822 = zext i8 %1816 to i64
  %1823 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %1822
  %1824 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %1822, i32 1
  %1825 = load i8, ptr %1824, align 1, !tbaa !103
  %1826 = zext i8 %1825 to i32
  %1827 = load i8, ptr %1823, align 1, !tbaa !105
  %1828 = load i64, ptr %1793, align 8, !tbaa !75
  %1829 = zext nneg i8 %1825 to i64
  %1830 = shl i64 %1828, %1829
  %1831 = zext i8 %1827 to i64
  %1832 = or i64 %1830, %1831
  store i64 %1832, ptr %1793, align 8, !tbaa !75
  %1833 = load i32, ptr %17, align 8, !tbaa !68
  %1834 = sub nsw i32 %1833, %1826
  store i32 %1834, ptr %17, align 8, !tbaa !68
  %1835 = icmp slt i32 %1834, 33
  br i1 %1835, label %1836, label %1851

1836:                                             ; preds = %1821
  %1837 = zext nneg i32 %1834 to i64
  %1838 = shl i64 %1832, %1837
  %1839 = tail call i64 @llvm.bswap.i64(i64 %1838)
  %1840 = trunc i64 %1839 to i32
  %1841 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %1840, ptr %1841, align 4, !tbaa !65
  %1842 = load i32, ptr %17, align 8, !tbaa !68
  %1843 = add nsw i32 %1842, 32
  store i32 %1843, ptr %17, align 8, !tbaa !68
  %1844 = load ptr, ptr %11, align 8, !tbaa !66
  %1845 = getelementptr inbounds i8, ptr %1844, i64 4
  store ptr %1845, ptr %11, align 8, !tbaa !66
  br label %1851

1846:                                             ; preds = %1794
  %1847 = zext i8 %1816 to i32
  %1848 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %1795, i64 1
  %1849 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %1848, i32 noundef %1847)
  %1850 = trunc i32 %1849 to i8
  store i8 %1850, ptr %1818, align 1, !tbaa !65
  br label %1851

1851:                                             ; preds = %1836, %1821, %1846
  %1852 = add nuw nsw i64 %1795, 1
  %1853 = icmp eq i64 %1852, 16
  br i1 %1853, label %1961, label %1794, !llvm.loop !106

1854:                                             ; preds = %1736
  %1855 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %1856 = load i32, ptr %1855, align 8, !tbaa !93
  %1857 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  %1858 = load i32, ptr %1857, align 4, !tbaa !92
  %1859 = or i32 %1858, %1856
  %1860 = icmp eq i32 %1859, 0
  br i1 %1860, label %1961, label %1861

1861:                                             ; preds = %1854
  tail call fastcc void @cavlc_qp_delta(ptr noundef %0)
  %1862 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  %1863 = load i32, ptr %1862, align 4, !tbaa !87
  %1864 = icmp eq i32 %1863, 0
  br i1 %1864, label %1886, label %1865

1865:                                             ; preds = %1861
  %1866 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 5
  br label %1867

1867:                                             ; preds = %1865, %1883
  %1868 = phi i64 [ 0, %1865 ], [ %1884, %1883 ]
  %1869 = load i32, ptr %1855, align 8, !tbaa !93
  %1870 = trunc i64 %1868 to i32
  %1871 = shl nuw nsw i32 1, %1870
  %1872 = and i32 %1869, %1871
  %1873 = icmp eq i32 %1872, 0
  br i1 %1873, label %1883, label %1874

1874:                                             ; preds = %1867
  %1875 = load ptr, ptr %1866, align 8, !tbaa !107
  %1876 = shl nuw nsw i64 %1868, 2
  %1877 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %1876
  %1878 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2, i64 %1868
  %1879 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %1876
  %1880 = load i32, ptr %1879, align 16, !tbaa !89
  %1881 = sext i32 %1880 to i64
  %1882 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %1881
  tail call void %1875(ptr noundef nonnull %1877, ptr noundef nonnull %1878, ptr noundef nonnull %1882) #7
  br label %1883

1883:                                             ; preds = %1874, %1867
  %1884 = add nuw nsw i64 %1868, 1
  %1885 = icmp eq i64 %1884, 4
  br i1 %1885, label %1886, label %1867, !llvm.loop !108

1886:                                             ; preds = %1883, %1861
  %1887 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  br label %1888

1888:                                             ; preds = %1886, %1958
  %1889 = phi i64 [ 0, %1886 ], [ %1959, %1958 ]
  %1890 = load i32, ptr %1855, align 8, !tbaa !93
  %1891 = trunc i64 %1889 to i32
  %1892 = shl nuw nsw i32 1, %1891
  %1893 = and i32 %1890, %1892
  %1894 = icmp eq i32 %1893, 0
  br i1 %1894, label %1958, label %1895

1895:                                             ; preds = %1888
  %1896 = shl nuw nsw i64 %1889, 2
  br label %1897

1897:                                             ; preds = %1895, %1955
  %1898 = phi i64 [ 0, %1895 ], [ %1956, %1955 ]
  %1899 = add nuw nsw i64 %1898, %1896
  %1900 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %1899
  %1901 = load i32, ptr %1900, align 4, !tbaa !89
  %1902 = add nsw i32 %1901, -1
  %1903 = sext i32 %1902 to i64
  %1904 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %1903
  %1905 = load i8, ptr %1904, align 1, !tbaa !65
  %1906 = zext i8 %1905 to i32
  %1907 = add nsw i32 %1901, -8
  %1908 = sext i32 %1907 to i64
  %1909 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %1908
  %1910 = load i8, ptr %1909, align 1, !tbaa !65
  %1911 = zext i8 %1910 to i32
  %1912 = add nuw nsw i32 %1911, %1906
  %1913 = icmp ult i32 %1912, 128
  %1914 = add nuw nsw i32 %1912, 1
  %1915 = lshr i32 %1914, 1
  %1916 = select i1 %1913, i32 %1915, i32 %1912
  %1917 = and i32 %1916, 127
  %1918 = zext nneg i32 %1917 to i64
  %1919 = getelementptr inbounds [17 x i8], ptr @ct_index, i64 0, i64 %1918
  %1920 = load i8, ptr %1919, align 1, !tbaa !65
  %1921 = sext i32 %1901 to i64
  %1922 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %1921
  %1923 = load i8, ptr %1922, align 1, !tbaa !65
  %1924 = icmp eq i8 %1923, 0
  br i1 %1924, label %1925, label %1950

1925:                                             ; preds = %1897
  %1926 = zext i8 %1920 to i64
  %1927 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %1926
  %1928 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %1926, i32 1
  %1929 = load i8, ptr %1928, align 1, !tbaa !103
  %1930 = zext i8 %1929 to i32
  %1931 = load i8, ptr %1927, align 1, !tbaa !105
  %1932 = load i64, ptr %1887, align 8, !tbaa !75
  %1933 = zext nneg i8 %1929 to i64
  %1934 = shl i64 %1932, %1933
  %1935 = zext i8 %1931 to i64
  %1936 = or i64 %1934, %1935
  store i64 %1936, ptr %1887, align 8, !tbaa !75
  %1937 = load i32, ptr %17, align 8, !tbaa !68
  %1938 = sub nsw i32 %1937, %1930
  store i32 %1938, ptr %17, align 8, !tbaa !68
  %1939 = icmp slt i32 %1938, 33
  br i1 %1939, label %1940, label %1955

1940:                                             ; preds = %1925
  %1941 = zext nneg i32 %1938 to i64
  %1942 = shl i64 %1936, %1941
  %1943 = tail call i64 @llvm.bswap.i64(i64 %1942)
  %1944 = trunc i64 %1943 to i32
  %1945 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %1944, ptr %1945, align 4, !tbaa !65
  %1946 = load i32, ptr %17, align 8, !tbaa !68
  %1947 = add nsw i32 %1946, 32
  store i32 %1947, ptr %17, align 8, !tbaa !68
  %1948 = load ptr, ptr %11, align 8, !tbaa !66
  %1949 = getelementptr inbounds i8, ptr %1948, i64 4
  store ptr %1949, ptr %11, align 8, !tbaa !66
  br label %1955

1950:                                             ; preds = %1897
  %1951 = zext i8 %1920 to i32
  %1952 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %1899
  %1953 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %1952, i32 noundef %1951)
  %1954 = trunc i32 %1953 to i8
  store i8 %1954, ptr %1922, align 1, !tbaa !65
  br label %1955

1955:                                             ; preds = %1950, %1940, %1925
  %1956 = add nuw nsw i64 %1898, 1
  %1957 = icmp eq i64 %1956, 4
  br i1 %1957, label %1958, label %1897, !llvm.loop !109

1958:                                             ; preds = %1955, %1888
  %1959 = add nuw nsw i64 %1889, 1
  %1960 = icmp eq i64 %1959, 4
  br i1 %1960, label %1961, label %1888, !llvm.loop !110

1961:                                             ; preds = %1958, %1851, %1854, %1788
  %1962 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  %1963 = load i32, ptr %1962, align 4, !tbaa !92
  %1964 = icmp eq i32 %1963, 0
  br i1 %1964, label %2093, label %1965

1965:                                             ; preds = %1961
  %1966 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 46
  %1967 = load i8, ptr %1966, align 1, !tbaa !65
  %1968 = icmp eq i8 %1967, 0
  br i1 %1968, label %1969, label %1992

1969:                                             ; preds = %1965
  %1970 = load i8, ptr getelementptr inbounds ([5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 4, i32 1), align 1, !tbaa !103
  %1971 = zext i8 %1970 to i32
  %1972 = load i8, ptr getelementptr inbounds ([5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 4), align 1, !tbaa !105
  %1973 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %1974 = load i64, ptr %1973, align 8, !tbaa !75
  %1975 = zext nneg i8 %1970 to i64
  %1976 = shl i64 %1974, %1975
  %1977 = zext i8 %1972 to i64
  %1978 = or i64 %1976, %1977
  store i64 %1978, ptr %1973, align 8, !tbaa !75
  %1979 = load i32, ptr %17, align 8, !tbaa !68
  %1980 = sub nsw i32 %1979, %1971
  store i32 %1980, ptr %17, align 8, !tbaa !68
  %1981 = icmp slt i32 %1980, 33
  br i1 %1981, label %1982, label %1996

1982:                                             ; preds = %1969
  %1983 = zext nneg i32 %1980 to i64
  %1984 = shl i64 %1978, %1983
  %1985 = tail call i64 @llvm.bswap.i64(i64 %1984)
  %1986 = trunc i64 %1985 to i32
  %1987 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %1986, ptr %1987, align 4, !tbaa !65
  %1988 = load i32, ptr %17, align 8, !tbaa !68
  %1989 = add nsw i32 %1988, 32
  store i32 %1989, ptr %17, align 8, !tbaa !68
  %1990 = load ptr, ptr %11, align 8, !tbaa !66
  %1991 = getelementptr inbounds i8, ptr %1990, i64 4
  store ptr %1991, ptr %11, align 8, !tbaa !66
  br label %1996

1992:                                             ; preds = %1965
  %1993 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 1
  %1994 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %1993, i32 noundef 4)
  %1995 = trunc i32 %1994 to i8
  store i8 %1995, ptr %1966, align 1, !tbaa !65
  br label %1996

1996:                                             ; preds = %1982, %1969, %1992
  %1997 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 47
  %1998 = load i8, ptr %1997, align 1, !tbaa !65
  %1999 = icmp eq i8 %1998, 0
  br i1 %1999, label %2000, label %2023

2000:                                             ; preds = %1996
  %2001 = load i8, ptr getelementptr inbounds ([5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 4, i32 1), align 1, !tbaa !103
  %2002 = zext i8 %2001 to i32
  %2003 = load i8, ptr getelementptr inbounds ([5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 4), align 1, !tbaa !105
  %2004 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %2005 = load i64, ptr %2004, align 8, !tbaa !75
  %2006 = zext nneg i8 %2001 to i64
  %2007 = shl i64 %2005, %2006
  %2008 = zext i8 %2003 to i64
  %2009 = or i64 %2007, %2008
  store i64 %2009, ptr %2004, align 8, !tbaa !75
  %2010 = load i32, ptr %17, align 8, !tbaa !68
  %2011 = sub nsw i32 %2010, %2002
  store i32 %2011, ptr %17, align 8, !tbaa !68
  %2012 = icmp slt i32 %2011, 33
  br i1 %2012, label %2013, label %2027

2013:                                             ; preds = %2000
  %2014 = zext nneg i32 %2011 to i64
  %2015 = shl i64 %2009, %2014
  %2016 = tail call i64 @llvm.bswap.i64(i64 %2015)
  %2017 = trunc i64 %2016 to i32
  %2018 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %2017, ptr %2018, align 4, !tbaa !65
  %2019 = load i32, ptr %17, align 8, !tbaa !68
  %2020 = add nsw i32 %2019, 32
  store i32 %2020, ptr %17, align 8, !tbaa !68
  %2021 = load ptr, ptr %11, align 8, !tbaa !66
  %2022 = getelementptr inbounds i8, ptr %2021, i64 4
  store ptr %2022, ptr %11, align 8, !tbaa !66
  br label %2027

2023:                                             ; preds = %1996
  %2024 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 1, i64 1
  %2025 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %2024, i32 noundef 4)
  %2026 = trunc i32 %2025 to i8
  store i8 %2026, ptr %1997, align 1, !tbaa !65
  br label %2027

2027:                                             ; preds = %2013, %2000, %2023
  %2028 = load i32, ptr %1962, align 4, !tbaa !92
  %2029 = and i32 %2028, 2
  %2030 = icmp eq i32 %2029, 0
  br i1 %2030, label %2093, label %2031

2031:                                             ; preds = %2027
  %2032 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  br label %2033

2033:                                             ; preds = %2031, %2090
  %2034 = phi i64 [ 16, %2031 ], [ %2091, %2090 ]
  %2035 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %2034
  %2036 = load i32, ptr %2035, align 4, !tbaa !89
  %2037 = add nsw i32 %2036, -1
  %2038 = sext i32 %2037 to i64
  %2039 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %2038
  %2040 = load i8, ptr %2039, align 1, !tbaa !65
  %2041 = zext i8 %2040 to i32
  %2042 = add nsw i32 %2036, -8
  %2043 = sext i32 %2042 to i64
  %2044 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %2043
  %2045 = load i8, ptr %2044, align 1, !tbaa !65
  %2046 = zext i8 %2045 to i32
  %2047 = add nuw nsw i32 %2046, %2041
  %2048 = icmp ult i32 %2047, 128
  %2049 = add nuw nsw i32 %2047, 1
  %2050 = lshr i32 %2049, 1
  %2051 = select i1 %2048, i32 %2050, i32 %2047
  %2052 = and i32 %2051, 127
  %2053 = zext nneg i32 %2052 to i64
  %2054 = getelementptr inbounds [17 x i8], ptr @ct_index, i64 0, i64 %2053
  %2055 = load i8, ptr %2054, align 1, !tbaa !65
  %2056 = sext i32 %2036 to i64
  %2057 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %2056
  %2058 = load i8, ptr %2057, align 1, !tbaa !65
  %2059 = icmp eq i8 %2058, 0
  br i1 %2059, label %2060, label %2085

2060:                                             ; preds = %2033
  %2061 = zext i8 %2055 to i64
  %2062 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %2061
  %2063 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %2061, i32 1
  %2064 = load i8, ptr %2063, align 1, !tbaa !103
  %2065 = zext i8 %2064 to i32
  %2066 = load i8, ptr %2062, align 1, !tbaa !105
  %2067 = load i64, ptr %2032, align 8, !tbaa !75
  %2068 = zext nneg i8 %2064 to i64
  %2069 = shl i64 %2067, %2068
  %2070 = zext i8 %2066 to i64
  %2071 = or i64 %2069, %2070
  store i64 %2071, ptr %2032, align 8, !tbaa !75
  %2072 = load i32, ptr %17, align 8, !tbaa !68
  %2073 = sub nsw i32 %2072, %2065
  store i32 %2073, ptr %17, align 8, !tbaa !68
  %2074 = icmp slt i32 %2073, 33
  br i1 %2074, label %2075, label %2090

2075:                                             ; preds = %2060
  %2076 = zext nneg i32 %2073 to i64
  %2077 = shl i64 %2071, %2076
  %2078 = tail call i64 @llvm.bswap.i64(i64 %2077)
  %2079 = trunc i64 %2078 to i32
  %2080 = load ptr, ptr %11, align 8, !tbaa !66
  store i32 %2079, ptr %2080, align 4, !tbaa !65
  %2081 = load i32, ptr %17, align 8, !tbaa !68
  %2082 = add nsw i32 %2081, 32
  store i32 %2082, ptr %17, align 8, !tbaa !68
  %2083 = load ptr, ptr %11, align 8, !tbaa !66
  %2084 = getelementptr inbounds i8, ptr %2083, i64 4
  store ptr %2084, ptr %11, align 8, !tbaa !66
  br label %2090

2085:                                             ; preds = %2033
  %2086 = zext i8 %2055 to i32
  %2087 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %2034, i64 1
  %2088 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %2087, i32 noundef %2086)
  %2089 = trunc i32 %2088 to i8
  store i8 %2089, ptr %2057, align 1, !tbaa !65
  br label %2090

2090:                                             ; preds = %2075, %2060, %2085
  %2091 = add nuw nsw i64 %2034, 1
  %2092 = icmp eq i64 %2091, 24
  br i1 %2092, label %2093, label %2033, !llvm.loop !111

2093:                                             ; preds = %2090, %2027, %1961
  %2094 = load ptr, ptr %11, align 8, !tbaa !66
  %2095 = load ptr, ptr %2, align 8, !tbaa !67
  %2096 = ptrtoint ptr %2094 to i64
  %2097 = ptrtoint ptr %2095 to i64
  %2098 = sub i64 %2096, %2097
  %2099 = load i32, ptr %17, align 8, !tbaa !68
  %2100 = trunc i64 %2098 to i32
  %2101 = shl i32 %2100, 3
  %2102 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 1
  %2103 = load i32, ptr %2102, align 4, !tbaa !82
  %2104 = add i32 %1630, %2099
  %2105 = sub i32 %2103, %2104
  %2106 = add i32 %2105, %2101
  store i32 %2106, ptr %2102, align 4, !tbaa !82
  br label %2107

2107:                                             ; preds = %2093, %149
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x i16], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5) #7
  %6 = zext nneg i32 %1 to i64
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !89
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %6, i64 %10
  %12 = load i16, ptr %11, align 4, !tbaa !112
  %13 = sext i16 %12 to i32
  %14 = load i16, ptr %5, align 4, !tbaa !112
  %15 = sext i16 %14 to i32
  %16 = sub nsw i32 %13, %15
  %17 = shl nsw i32 %16, 1
  %18 = sub nsw i32 1, %17
  %19 = icmp sgt i32 %16, 0
  %20 = select i1 %19, i32 %17, i32 %18
  %21 = icmp sgt i32 %20, 255
  %22 = lshr i32 %20, 8
  %23 = select i1 %21, i32 16, i32 0
  %24 = select i1 %21, i32 %22, i32 %20
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !65
  %28 = zext i8 %27 to i32
  %29 = add nuw nsw i32 %23, %28
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %31 = load i64, ptr %30, align 8, !tbaa !75
  %32 = zext nneg i32 %29 to i64
  %33 = shl i64 %31, %32
  %34 = zext i32 %20 to i64
  %35 = or i64 %33, %34
  store i64 %35, ptr %30, align 8, !tbaa !75
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 4
  %37 = load i32, ptr %36, align 8, !tbaa !68
  %38 = sub nsw i32 %37, %29
  store i32 %38, ptr %36, align 8, !tbaa !68
  %39 = icmp slt i32 %38, 33
  br i1 %39, label %40, label %51

40:                                               ; preds = %4
  %41 = zext nneg i32 %38 to i64
  %42 = shl i64 %35, %41
  %43 = call i64 @llvm.bswap.i64(i64 %42)
  %44 = trunc i64 %43 to i32
  %45 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !66
  store i32 %44, ptr %46, align 4, !tbaa !65
  %47 = load i32, ptr %36, align 8, !tbaa !68
  %48 = add nsw i32 %47, 32
  store i32 %48, ptr %36, align 8, !tbaa !68
  %49 = load ptr, ptr %45, align 8, !tbaa !66
  %50 = getelementptr inbounds i8, ptr %49, i64 4
  store ptr %50, ptr %45, align 8, !tbaa !66
  br label %51

51:                                               ; preds = %4, %40
  %52 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %6, i64 %10, i64 1
  %53 = load i16, ptr %52, align 2, !tbaa !112
  %54 = sext i16 %53 to i32
  %55 = getelementptr inbounds [2 x i16], ptr %5, i64 0, i64 1
  %56 = load i16, ptr %55, align 2, !tbaa !112
  %57 = sext i16 %56 to i32
  %58 = sub nsw i32 %54, %57
  %59 = shl nsw i32 %58, 1
  %60 = sub nsw i32 1, %59
  %61 = icmp sgt i32 %58, 0
  %62 = select i1 %61, i32 %59, i32 %60
  %63 = icmp sgt i32 %62, 255
  %64 = lshr i32 %62, 8
  %65 = select i1 %63, i32 16, i32 0
  %66 = select i1 %63, i32 %64, i32 %62
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !65
  %70 = zext i8 %69 to i32
  %71 = add nuw nsw i32 %65, %70
  %72 = load i64, ptr %30, align 8, !tbaa !75
  %73 = zext nneg i32 %71 to i64
  %74 = shl i64 %72, %73
  %75 = zext i32 %62 to i64
  %76 = or i64 %74, %75
  store i64 %76, ptr %30, align 8, !tbaa !75
  %77 = load i32, ptr %36, align 8, !tbaa !68
  %78 = sub nsw i32 %77, %71
  store i32 %78, ptr %36, align 8, !tbaa !68
  %79 = icmp slt i32 %78, 33
  br i1 %79, label %80, label %91

80:                                               ; preds = %51
  %81 = zext nneg i32 %78 to i64
  %82 = shl i64 %76, %81
  %83 = call i64 @llvm.bswap.i64(i64 %82)
  %84 = trunc i64 %83 to i32
  %85 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !66
  store i32 %84, ptr %86, align 4, !tbaa !65
  %87 = load i32, ptr %36, align 8, !tbaa !68
  %88 = add nsw i32 %87, 32
  store i32 %88, ptr %36, align 8, !tbaa !68
  %89 = load ptr, ptr %85, align 8, !tbaa !66
  %90 = getelementptr inbounds i8, ptr %89, i64 4
  store ptr %90, ptr %85, align 8, !tbaa !66
  br label %91

91:                                               ; preds = %51, %80
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @cavlc_qp_delta(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 68
  %3 = load i32, ptr %2, align 16, !tbaa !114
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 70
  %5 = load i32, ptr %4, align 8, !tbaa !115
  %6 = sub nsw i32 %3, %5
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 53
  %8 = load i32, ptr %7, align 8, !tbaa !34
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %12 = load i32, ptr %11, align 8, !tbaa !93
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  %14 = load i32, ptr %13, align 4, !tbaa !92
  %15 = or i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 44
  %19 = load i8, ptr %18, align 1, !tbaa !65
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 %5, ptr %2, align 16, !tbaa !114
  br label %22

22:                                               ; preds = %21, %17, %10, %1
  %23 = phi i32 [ %6, %10 ], [ %6, %17 ], [ 0, %21 ], [ %6, %1 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %22
  %26 = icmp slt i32 %23, -26
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = add nsw i32 %23, 52
  br label %33

29:                                               ; preds = %25
  %30 = icmp sgt i32 %23, 25
  %31 = add nsw i32 %23, -52
  %32 = select i1 %30, i32 %31, i32 %23
  br label %33

33:                                               ; preds = %29, %27, %22
  %34 = phi i32 [ %28, %27 ], [ 0, %22 ], [ %32, %29 ]
  %35 = shl nsw i32 %34, 1
  %36 = sub nsw i32 1, %35
  %37 = icmp sgt i32 %34, 0
  %38 = select i1 %37, i32 %35, i32 %36
  %39 = icmp sgt i32 %38, 255
  %40 = lshr i32 %38, 8
  %41 = select i1 %39, i32 16, i32 0
  %42 = select i1 %39, i32 %40, i32 %38
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !65
  %46 = zext i8 %45 to i32
  %47 = add nuw nsw i32 %41, %46
  %48 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %49 = load i64, ptr %48, align 8, !tbaa !75
  %50 = zext nneg i32 %47 to i64
  %51 = shl i64 %49, %50
  %52 = zext i32 %38 to i64
  %53 = or i64 %51, %52
  store i64 %53, ptr %48, align 8, !tbaa !75
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 4
  %55 = load i32, ptr %54, align 8, !tbaa !68
  %56 = sub nsw i32 %55, %47
  store i32 %56, ptr %54, align 8, !tbaa !68
  %57 = icmp slt i32 %56, 33
  br i1 %57, label %58, label %69

58:                                               ; preds = %33
  %59 = zext nneg i32 %56 to i64
  %60 = shl i64 %53, %59
  %61 = tail call i64 @llvm.bswap.i64(i64 %60)
  %62 = trunc i64 %61 to i32
  %63 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !66
  store i32 %62, ptr %64, align 4, !tbaa !65
  %65 = load i32, ptr %54, align 8, !tbaa !68
  %66 = add nsw i32 %65, 32
  store i32 %66, ptr %54, align 8, !tbaa !68
  %67 = load ptr, ptr %63, align 8, !tbaa !66
  %68 = getelementptr inbounds i8, ptr %67, i64 4
  store ptr %68, ptr %63, align 8, !tbaa !66
  br label %69

69:                                               ; preds = %33, %58
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @block_residual_write_cavlc(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.x264_run_level_t, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %5) #7
  %6 = getelementptr inbounds %struct.x264_run_level_t, ptr %5, i64 0, i32 1
  %7 = getelementptr inbounds %struct.x264_run_level_t, ptr %5, i64 0, i32 1, i64 1
  store i16 2, ptr %7, align 2, !tbaa !112
  %8 = getelementptr inbounds %struct.x264_run_level_t, ptr %5, i64 0, i32 1, i64 2
  store i16 2, ptr %8, align 4, !tbaa !112
  %9 = zext nneg i32 %1 to i64
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 12, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = call i32 %11(ptr noundef %2, ptr noundef nonnull %5) #7
  %13 = load i32, ptr %5, align 4, !tbaa !116
  %14 = sub i32 %13, %12
  %15 = add i32 %14, 1
  %16 = load i16, ptr %6, align 4, !tbaa !112
  %17 = sext i16 %16 to i32
  %18 = add nsw i32 %17, 1
  %19 = sub nsw i32 1, %17
  %20 = or i32 %18, %19
  %21 = lshr i32 %20, 31
  %22 = load i16, ptr %7, align 2, !tbaa !112
  %23 = sext i16 %22 to i32
  %24 = add nsw i32 %23, 1
  %25 = sub nsw i32 1, %23
  %26 = or i32 %24, %25
  %27 = lshr i32 %26, 30
  %28 = and i32 %27, 2
  %29 = or disjoint i32 %28, %21
  %30 = load i16, ptr %8, align 4, !tbaa !112
  %31 = sext i16 %30 to i32
  %32 = add nsw i32 %31, 1
  %33 = sub nsw i32 1, %31
  %34 = or i32 %32, %33
  %35 = lshr i32 %34, 29
  %36 = and i32 %35, 4
  %37 = or disjoint i32 %29, %36
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [8 x i8], ptr @block_residual_write_cavlc.ctz_index, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !65
  %41 = zext i8 %40 to i32
  %42 = lshr i32 %31, 31
  %43 = lshr i16 %22, 14
  %44 = and i16 %43, 2
  %45 = lshr i16 %16, 13
  %46 = and i16 %45, 4
  %47 = or disjoint i16 %44, %46
  %48 = zext nneg i16 %47 to i32
  %49 = or disjoint i32 %42, %48
  %50 = sub nsw i32 3, %41
  %51 = lshr i32 %49, %50
  %52 = zext nneg i32 %3 to i64
  %53 = add nsw i32 %12, -1
  %54 = sext i32 %53 to i64
  %55 = zext i8 %40 to i64
  %56 = getelementptr inbounds [5 x [16 x [4 x %struct.vlc_t]]], ptr @x264_coeff_token, i64 0, i64 %52, i64 %54, i64 %55
  %57 = getelementptr inbounds [5 x [16 x [4 x %struct.vlc_t]]], ptr @x264_coeff_token, i64 0, i64 %52, i64 %54, i64 %55, i32 1
  %58 = load i8, ptr %57, align 1, !tbaa !103
  %59 = zext i8 %58 to i32
  %60 = load i8, ptr %56, align 2, !tbaa !105
  %61 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %62 = load i64, ptr %61, align 8, !tbaa !75
  %63 = zext nneg i8 %58 to i64
  %64 = shl i64 %62, %63
  %65 = zext i8 %60 to i64
  %66 = or i64 %64, %65
  store i64 %66, ptr %61, align 8, !tbaa !75
  %67 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 4
  %68 = load i32, ptr %67, align 8, !tbaa !68
  %69 = sub nsw i32 %68, %59
  store i32 %69, ptr %67, align 8, !tbaa !68
  %70 = icmp slt i32 %69, 33
  br i1 %70, label %71, label %82

71:                                               ; preds = %4
  %72 = zext nneg i32 %69 to i64
  %73 = shl i64 %66, %72
  %74 = call i64 @llvm.bswap.i64(i64 %73)
  %75 = trunc i64 %74 to i32
  %76 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !66
  store i32 %75, ptr %77, align 4, !tbaa !65
  %78 = load i32, ptr %67, align 8, !tbaa !68
  %79 = add nsw i32 %78, 32
  store i32 %79, ptr %67, align 8, !tbaa !68
  %80 = load ptr, ptr %76, align 8, !tbaa !66
  %81 = getelementptr inbounds i8, ptr %80, i64 4
  store ptr %81, ptr %76, align 8, !tbaa !66
  br label %82

82:                                               ; preds = %4, %71
  %83 = icmp sgt i32 %12, 10
  %84 = icmp ne i32 %37, 0
  %85 = and i1 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i64, ptr %61, align 8, !tbaa !75
  %88 = shl i64 %87, %55
  %89 = zext nneg i32 %51 to i64
  %90 = or i64 %88, %89
  store i64 %90, ptr %61, align 8, !tbaa !75
  %91 = load i32, ptr %67, align 8, !tbaa !68
  %92 = sub nsw i32 %91, %41
  store i32 %92, ptr %67, align 8, !tbaa !68
  %93 = icmp slt i32 %92, 33
  br i1 %93, label %94, label %105

94:                                               ; preds = %82
  %95 = zext nneg i32 %92 to i64
  %96 = shl i64 %90, %95
  %97 = call i64 @llvm.bswap.i64(i64 %96)
  %98 = trunc i64 %97 to i32
  %99 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !66
  store i32 %98, ptr %100, align 4, !tbaa !65
  %101 = load i32, ptr %67, align 8, !tbaa !68
  %102 = add nsw i32 %101, 32
  store i32 %102, ptr %67, align 8, !tbaa !68
  %103 = load ptr, ptr %99, align 8, !tbaa !66
  %104 = getelementptr inbounds i8, ptr %103, i64 4
  store ptr %104, ptr %99, align 8, !tbaa !66
  br label %105

105:                                              ; preds = %82, %94
  %106 = icmp sgt i32 %12, %41
  br i1 %106, label %107, label %205

107:                                              ; preds = %105
  %108 = getelementptr inbounds %struct.x264_run_level_t, ptr %5, i64 0, i32 1, i64 %55
  %109 = load i16, ptr %108, align 2, !tbaa !112
  %110 = sext i16 %109 to i32
  %111 = add nsw i32 %110, 64
  %112 = ashr i32 %110, 31
  %113 = or i32 %112, 1
  %114 = select i1 %84, i32 %113, i32 0
  %115 = sub nsw i32 %110, %114
  %116 = icmp ult i32 %111, 128
  br i1 %116, label %117, label %150

117:                                              ; preds = %107
  %118 = add nsw i32 %115, 64
  %119 = zext i1 %85 to i64
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %119, i64 %120
  %122 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %119, i64 %120, i32 1
  %123 = load i8, ptr %122, align 2, !tbaa !118
  %124 = zext i8 %123 to i32
  %125 = load i16, ptr %121, align 4, !tbaa !120
  %126 = load i64, ptr %61, align 8, !tbaa !75
  %127 = zext nneg i8 %123 to i64
  %128 = shl i64 %126, %127
  %129 = zext i16 %125 to i64
  %130 = or i64 %128, %129
  store i64 %130, ptr %61, align 8, !tbaa !75
  %131 = load i32, ptr %67, align 8, !tbaa !68
  %132 = sub nsw i32 %131, %124
  store i32 %132, ptr %67, align 8, !tbaa !68
  %133 = icmp slt i32 %132, 33
  br i1 %133, label %134, label %145

134:                                              ; preds = %117
  %135 = zext nneg i32 %132 to i64
  %136 = shl i64 %130, %135
  %137 = call i64 @llvm.bswap.i64(i64 %136)
  %138 = trunc i64 %137 to i32
  %139 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !66
  store i32 %138, ptr %140, align 4, !tbaa !65
  %141 = load i32, ptr %67, align 8, !tbaa !68
  %142 = add nsw i32 %141, 32
  store i32 %142, ptr %67, align 8, !tbaa !68
  %143 = load ptr, ptr %139, align 8, !tbaa !66
  %144 = getelementptr inbounds i8, ptr %143, i64 4
  store ptr %144, ptr %139, align 8, !tbaa !66
  br label %145

145:                                              ; preds = %117, %134
  %146 = zext nneg i32 %111 to i64
  %147 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %119, i64 %146, i32 2
  %148 = load i8, ptr %147, align 1, !tbaa !121
  %149 = zext i8 %148 to i32
  br label %152

150:                                              ; preds = %107
  %151 = call fastcc i32 @block_residual_write_cavlc_escape(ptr noundef %0, i32 noundef %86, i32 noundef %115)
  br label %152

152:                                              ; preds = %150, %145
  %153 = phi i32 [ %149, %145 ], [ %151, %150 ]
  %154 = add nuw nsw i32 %41, 1
  %155 = icmp slt i32 %154, %12
  br i1 %155, label %156, label %205

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 1
  %158 = zext i8 %40 to i64
  %159 = add nuw nsw i64 %158, 1
  %160 = zext i32 %12 to i64
  br label %161

161:                                              ; preds = %156, %201
  %162 = phi i64 [ %159, %156 ], [ %203, %201 ]
  %163 = phi i32 [ %153, %156 ], [ %202, %201 ]
  %164 = getelementptr inbounds %struct.x264_run_level_t, ptr %5, i64 0, i32 1, i64 %162
  %165 = load i16, ptr %164, align 2, !tbaa !112
  %166 = sext i16 %165 to i32
  %167 = add nsw i32 %166, 64
  %168 = icmp ult i32 %167, 128
  br i1 %168, label %169, label %199

169:                                              ; preds = %161
  %170 = sext i32 %163 to i64
  %171 = zext nneg i32 %167 to i64
  %172 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %170, i64 %171
  %173 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %170, i64 %171, i32 1
  %174 = load i8, ptr %173, align 2, !tbaa !118
  %175 = zext i8 %174 to i32
  %176 = load i16, ptr %172, align 4, !tbaa !120
  %177 = load i64, ptr %61, align 8, !tbaa !75
  %178 = zext nneg i8 %174 to i64
  %179 = shl i64 %177, %178
  %180 = zext i16 %176 to i64
  %181 = or i64 %179, %180
  store i64 %181, ptr %61, align 8, !tbaa !75
  %182 = load i32, ptr %67, align 8, !tbaa !68
  %183 = sub nsw i32 %182, %175
  store i32 %183, ptr %67, align 8, !tbaa !68
  %184 = icmp slt i32 %183, 33
  br i1 %184, label %185, label %195

185:                                              ; preds = %169
  %186 = zext nneg i32 %183 to i64
  %187 = shl i64 %181, %186
  %188 = call i64 @llvm.bswap.i64(i64 %187)
  %189 = trunc i64 %188 to i32
  %190 = load ptr, ptr %157, align 8, !tbaa !66
  store i32 %189, ptr %190, align 4, !tbaa !65
  %191 = load i32, ptr %67, align 8, !tbaa !68
  %192 = add nsw i32 %191, 32
  store i32 %192, ptr %67, align 8, !tbaa !68
  %193 = load ptr, ptr %157, align 8, !tbaa !66
  %194 = getelementptr inbounds i8, ptr %193, i64 4
  store ptr %194, ptr %157, align 8, !tbaa !66
  br label %195

195:                                              ; preds = %169, %185
  %196 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %170, i64 %171, i32 2
  %197 = load i8, ptr %196, align 1, !tbaa !121
  %198 = zext i8 %197 to i32
  br label %201

199:                                              ; preds = %161
  %200 = call fastcc i32 @block_residual_write_cavlc_escape(ptr noundef %0, i32 noundef %163, i32 noundef %166)
  br label %201

201:                                              ; preds = %195, %199
  %202 = phi i32 [ %198, %195 ], [ %200, %199 ]
  %203 = add nuw nsw i64 %162, 1
  %204 = icmp eq i64 %203, %160
  br i1 %204, label %205, label %161, !llvm.loop !122

205:                                              ; preds = %201, %152, %105
  %206 = and i32 %12, 255
  %207 = getelementptr inbounds [5 x i8], ptr @block_residual_write_cavlc.count_cat, i64 0, i64 %9
  %208 = load i8, ptr %207, align 1, !tbaa !65
  %209 = zext i8 %208 to i32
  %210 = icmp ult i32 %206, %209
  br i1 %210, label %211, label %254

211:                                              ; preds = %205
  %212 = icmp eq i32 %1, 3
  %213 = sext i32 %15 to i64
  %214 = load i64, ptr %61, align 8, !tbaa !75
  br i1 %212, label %215, label %228

215:                                              ; preds = %211
  %216 = getelementptr inbounds [3 x [4 x %struct.vlc_t]], ptr @x264_total_zeros_dc, i64 0, i64 %54, i64 %213
  %217 = getelementptr inbounds [3 x [4 x %struct.vlc_t]], ptr @x264_total_zeros_dc, i64 0, i64 %54, i64 %213, i32 1
  %218 = load i8, ptr %217, align 1, !tbaa !103
  %219 = zext i8 %218 to i32
  %220 = load i8, ptr %216, align 2, !tbaa !105
  %221 = zext nneg i8 %218 to i64
  %222 = shl i64 %214, %221
  %223 = zext i8 %220 to i64
  %224 = or i64 %222, %223
  store i64 %224, ptr %61, align 8, !tbaa !75
  %225 = load i32, ptr %67, align 8, !tbaa !68
  %226 = sub nsw i32 %225, %219
  store i32 %226, ptr %67, align 8, !tbaa !68
  %227 = icmp slt i32 %226, 33
  br i1 %227, label %241, label %254

228:                                              ; preds = %211
  %229 = getelementptr inbounds [15 x [16 x %struct.vlc_t]], ptr @x264_total_zeros, i64 0, i64 %54, i64 %213
  %230 = getelementptr inbounds [15 x [16 x %struct.vlc_t]], ptr @x264_total_zeros, i64 0, i64 %54, i64 %213, i32 1
  %231 = load i8, ptr %230, align 1, !tbaa !103
  %232 = zext i8 %231 to i32
  %233 = load i8, ptr %229, align 2, !tbaa !105
  %234 = zext nneg i8 %231 to i64
  %235 = shl i64 %214, %234
  %236 = zext i8 %233 to i64
  %237 = or i64 %235, %236
  store i64 %237, ptr %61, align 8, !tbaa !75
  %238 = load i32, ptr %67, align 8, !tbaa !68
  %239 = sub nsw i32 %238, %232
  store i32 %239, ptr %67, align 8, !tbaa !68
  %240 = icmp slt i32 %239, 33
  br i1 %240, label %241, label %254

241:                                              ; preds = %228, %215
  %242 = phi i32 [ %226, %215 ], [ %239, %228 ]
  %243 = phi i64 [ %224, %215 ], [ %237, %228 ]
  %244 = zext nneg i32 %242 to i64
  %245 = shl i64 %243, %244
  %246 = call i64 @llvm.bswap.i64(i64 %245)
  %247 = trunc i64 %246 to i32
  %248 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !66
  store i32 %247, ptr %249, align 4, !tbaa !65
  %250 = load i32, ptr %67, align 8, !tbaa !68
  %251 = add nsw i32 %250, 32
  store i32 %251, ptr %67, align 8, !tbaa !68
  %252 = load ptr, ptr %248, align 8, !tbaa !66
  %253 = getelementptr inbounds i8, ptr %252, i64 4
  store ptr %253, ptr %248, align 8, !tbaa !66
  br label %254

254:                                              ; preds = %241, %228, %215, %205
  %255 = icmp sgt i32 %12, 1
  %256 = icmp ult i32 %14, 2147483647
  %257 = select i1 %255, i1 %256, i1 false
  br i1 %257, label %258, label %261

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 1
  %260 = sext i32 %53 to i64
  br label %262

261:                                              ; preds = %294, %254
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %5) #7
  ret i32 %12

262:                                              ; preds = %258, %294
  %263 = phi i64 [ 0, %258 ], [ %298, %294 ]
  %264 = phi i32 [ %15, %258 ], [ %297, %294 ]
  %265 = call i32 @llvm.smin.i32(i32 %264, i32 7)
  %266 = add nsw i32 %265, -1
  %267 = zext nneg i32 %266 to i64
  %268 = getelementptr inbounds %struct.x264_run_level_t, ptr %5, i64 0, i32 2, i64 %263
  %269 = load i8, ptr %268, align 1, !tbaa !65
  %270 = zext i8 %269 to i64
  %271 = getelementptr inbounds [7 x [16 x %struct.vlc_t]], ptr @x264_run_before, i64 0, i64 %267, i64 %270
  %272 = getelementptr inbounds [7 x [16 x %struct.vlc_t]], ptr @x264_run_before, i64 0, i64 %267, i64 %270, i32 1
  %273 = load i8, ptr %272, align 1, !tbaa !103
  %274 = zext i8 %273 to i32
  %275 = load i8, ptr %271, align 2, !tbaa !105
  %276 = load i64, ptr %61, align 8, !tbaa !75
  %277 = zext nneg i8 %273 to i64
  %278 = shl i64 %276, %277
  %279 = zext i8 %275 to i64
  %280 = or i64 %278, %279
  store i64 %280, ptr %61, align 8, !tbaa !75
  %281 = load i32, ptr %67, align 8, !tbaa !68
  %282 = sub nsw i32 %281, %274
  store i32 %282, ptr %67, align 8, !tbaa !68
  %283 = icmp slt i32 %282, 33
  br i1 %283, label %284, label %294

284:                                              ; preds = %262
  %285 = zext nneg i32 %282 to i64
  %286 = shl i64 %280, %285
  %287 = call i64 @llvm.bswap.i64(i64 %286)
  %288 = trunc i64 %287 to i32
  %289 = load ptr, ptr %259, align 8, !tbaa !66
  store i32 %288, ptr %289, align 4, !tbaa !65
  %290 = load i32, ptr %67, align 8, !tbaa !68
  %291 = add nsw i32 %290, 32
  store i32 %291, ptr %67, align 8, !tbaa !68
  %292 = load ptr, ptr %259, align 8, !tbaa !66
  %293 = getelementptr inbounds i8, ptr %292, i64 4
  store ptr %293, ptr %259, align 8, !tbaa !66
  br label %294

294:                                              ; preds = %262, %284
  %295 = load i8, ptr %268, align 1, !tbaa !65
  %296 = zext i8 %295 to i32
  %297 = sub nsw i32 %264, %296
  %298 = add nuw nsw i64 %263, 1
  %299 = icmp slt i64 %298, %260
  %300 = icmp sgt i32 %297, 0
  %301 = select i1 %299, i1 %300, i1 false
  br i1 %301, label %262, label %261, !llvm.loop !123
}

declare void @x264_mb_predict_mv(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @block_residual_write_cavlc_escape(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
  %4 = ashr i32 %2, 15
  %5 = xor i32 %4, %2
  %6 = sub nsw i32 %5, %4
  %7 = shl nsw i32 %6, 1
  %8 = sub nsw i32 %7, %4
  %9 = add nsw i32 %8, -2
  %10 = ashr i32 %9, %1
  %11 = icmp slt i32 %10, 15
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = add i32 %1, 1
  %14 = add i32 %13, %10
  %15 = shl nuw i32 1, %1
  %16 = add nsw i32 %15, -1
  %17 = and i32 %9, %16
  %18 = add nsw i32 %17, %15
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !75
  %21 = zext nneg i32 %14 to i64
  %22 = shl i64 %20, %21
  %23 = zext i32 %18 to i64
  %24 = or i64 %22, %23
  store i64 %24, ptr %19, align 8, !tbaa !75
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !68
  %27 = sub nsw i32 %26, %14
  store i32 %27, ptr %25, align 8, !tbaa !68
  %28 = icmp slt i32 %27, 33
  br i1 %28, label %93, label %107

29:                                               ; preds = %3
  %30 = shl i32 -15, %1
  %31 = add i32 %9, %30
  %32 = icmp eq i32 %1, 0
  %33 = add nsw i32 %31, -15
  %34 = select i1 %32, i32 %33, i32 %31
  %35 = icmp sgt i32 %34, 4095
  br i1 %35, label %36, label %56

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %38 = load ptr, ptr %37, align 16, !tbaa !124
  %39 = getelementptr inbounds %struct.x264_sps_t, ptr %38, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !125
  %41 = icmp sgt i32 %40, 99
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = icmp eq i32 %34, 4096
  br i1 %43, label %56, label %44

44:                                               ; preds = %42, %44
  %45 = phi i32 [ %51, %44 ], [ 4096, %42 ]
  %46 = phi i32 [ %48, %44 ], [ %34, %42 ]
  %47 = phi i32 [ %49, %44 ], [ 15, %42 ]
  %48 = sub nsw i32 %46, %45
  %49 = add nuw nsw i32 %47, 1
  %50 = add nsw i32 %47, -2
  %51 = shl nuw i32 1, %50
  %52 = icmp sgt i32 %48, %51
  br i1 %52, label %44, label %56, !llvm.loop !130

53:                                               ; preds = %36
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %34) #7
  %54 = and i32 %34, 1
  %55 = or disjoint i32 %54, 4094
  br label %56

56:                                               ; preds = %44, %42, %53, %29
  %57 = phi i32 [ 15, %53 ], [ 15, %29 ], [ 15, %42 ], [ %49, %44 ]
  %58 = phi i32 [ %55, %53 ], [ %34, %29 ], [ %34, %42 ], [ %48, %44 ]
  %59 = add nuw nsw i32 %57, 1
  %60 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %61 = load i64, ptr %60, align 8, !tbaa !75
  %62 = zext nneg i32 %59 to i64
  %63 = shl i64 %61, %62
  %64 = or i64 %63, 1
  store i64 %64, ptr %60, align 8, !tbaa !75
  %65 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 4
  %66 = load i32, ptr %65, align 8, !tbaa !68
  %67 = sub nsw i32 %66, %59
  store i32 %67, ptr %65, align 8, !tbaa !68
  %68 = icmp slt i32 %67, 33
  br i1 %68, label %69, label %80

69:                                               ; preds = %56
  %70 = zext nneg i32 %67 to i64
  %71 = shl i64 %64, %70
  %72 = tail call i64 @llvm.bswap.i64(i64 %71)
  %73 = trunc i64 %72 to i32
  %74 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !66
  store i32 %73, ptr %75, align 4, !tbaa !65
  %76 = load i32, ptr %65, align 8, !tbaa !68
  %77 = add nsw i32 %76, 32
  store i32 %77, ptr %65, align 8, !tbaa !68
  %78 = load ptr, ptr %74, align 8, !tbaa !66
  %79 = getelementptr inbounds i8, ptr %78, i64 4
  store ptr %79, ptr %74, align 8, !tbaa !66
  br label %80

80:                                               ; preds = %56, %69
  %81 = add nsw i32 %57, -3
  %82 = shl nsw i32 -1, %81
  %83 = xor i32 %82, -1
  %84 = and i32 %58, %83
  %85 = load i64, ptr %60, align 8, !tbaa !75
  %86 = zext nneg i32 %81 to i64
  %87 = shl i64 %85, %86
  %88 = zext nneg i32 %84 to i64
  %89 = or i64 %87, %88
  store i64 %89, ptr %60, align 8, !tbaa !75
  %90 = load i32, ptr %65, align 8, !tbaa !68
  %91 = sub nsw i32 %90, %81
  store i32 %91, ptr %65, align 8, !tbaa !68
  %92 = icmp slt i32 %91, 33
  br i1 %92, label %93, label %107

93:                                               ; preds = %80, %12
  %94 = phi i32 [ %27, %12 ], [ %91, %80 ]
  %95 = phi i64 [ %24, %12 ], [ %89, %80 ]
  %96 = phi ptr [ %25, %12 ], [ %65, %80 ]
  %97 = zext nneg i32 %94 to i64
  %98 = shl i64 %95, %97
  %99 = tail call i64 @llvm.bswap.i64(i64 %98)
  %100 = trunc i64 %99 to i32
  %101 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !66
  store i32 %100, ptr %102, align 4, !tbaa !65
  %103 = load i32, ptr %96, align 8, !tbaa !68
  %104 = add nsw i32 %103, 32
  store i32 %104, ptr %96, align 8, !tbaa !68
  %105 = load ptr, ptr %101, align 8, !tbaa !66
  %106 = getelementptr inbounds i8, ptr %105, i64 4
  store ptr %106, ptr %101, align 8, !tbaa !66
  br label %107

107:                                              ; preds = %93, %80, %12
  %108 = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [7 x i16], ptr @block_residual_write_cavlc_escape.next_suffix, i64 0, i64 %109
  %111 = load i16, ptr %110, align 2, !tbaa !112
  %112 = zext i16 %111 to i32
  %113 = icmp sgt i32 %6, %112
  %114 = zext i1 %113 to i32
  %115 = add nsw i32 %108, %114
  ret i32 %115
}

declare void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !37, i64 17384}
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
!64 = !{!35, !37, i64 7248}
!65 = !{!38, !38, i64 0}
!66 = !{!46, !41, i64 8}
!67 = !{!46, !41, i64 0}
!68 = !{!46, !37, i64 32}
!69 = !{!35, !37, i64 7268}
!70 = !{!35, !37, i64 16388}
!71 = !{!35, !41, i64 16616}
!72 = !{!35, !37, i64 16392}
!73 = !{!35, !37, i64 16372}
!74 = !{!35, !37, i64 16436}
!75 = !{!46, !47, i64 24}
!76 = !{!35, !37, i64 26712}
!77 = !{!41, !41, i64 0}
!78 = distinct !{!78, !79, !80}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !{!46, !41, i64 16}
!82 = !{!35, !37, i64 26716}
!83 = distinct !{!83, !79, !80}
!84 = !{!35, !41, i64 3328}
!85 = !{!86, !37, i64 60}
!86 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !37, i64 56, !37, i64 60, !37, i64 64, !38, i64 72}
!87 = !{!35, !37, i64 17396}
!88 = !{!35, !37, i64 17412}
!89 = !{!37, !37, i64 0}
!90 = distinct !{!90, !79, !80}
!91 = !{!35, !37, i64 17408}
!92 = !{!35, !37, i64 17404}
!93 = !{!35, !37, i64 17400}
!94 = !{!35, !37, i64 17388}
!95 = !{!35, !37, i64 388}
!96 = distinct !{!96, !79, !80}
!97 = distinct !{!97, !79, !80}
!98 = distinct !{!98, !79, !80}
!99 = distinct !{!99, !79, !80}
!100 = distinct !{!100, !79, !80}
!101 = distinct !{!101, !79, !80}
!102 = distinct !{!102, !79, !80}
!103 = !{!104, !38, i64 1}
!104 = !{!"", !38, i64 0, !38, i64 1}
!105 = !{!104, !38, i64 0}
!106 = distinct !{!106, !79, !80}
!107 = !{!35, !41, i64 33072}
!108 = distinct !{!108, !79, !80}
!109 = distinct !{!109, !79, !80}
!110 = distinct !{!110, !79, !80}
!111 = distinct !{!111, !79, !80}
!112 = !{!113, !113, i64 0}
!113 = !{!"short", !38, i64 0}
!114 = !{!35, !37, i64 25792}
!115 = !{!35, !37, i64 25800}
!116 = !{!117, !37, i64 0}
!117 = !{!"", !37, i64 0, !38, i64 4, !38, i64 36}
!118 = !{!119, !38, i64 2}
!119 = !{!"", !113, i64 0, !38, i64 2, !38, i64 3}
!120 = !{!119, !113, i64 0}
!121 = !{!119, !38, i64 3}
!122 = distinct !{!122, !79, !80}
!123 = distinct !{!123, !79, !80}
!124 = !{!35, !41, i64 3200}
!125 = !{!126, !37, i64 4}
!126 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !38, i64 52, !37, i64 1076, !37, i64 1080, !37, i64 1084, !37, i64 1088, !37, i64 1092, !37, i64 1096, !37, i64 1100, !37, i64 1104, !127, i64 1108, !37, i64 1124, !128, i64 1128, !37, i64 1296}
!127 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12}
!128 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !37, i64 56, !37, i64 60, !37, i64 64, !37, i64 68, !37, i64 72, !37, i64 76, !37, i64 80, !129, i64 84, !37, i64 132, !37, i64 136, !37, i64 140, !37, i64 144, !37, i64 148, !37, i64 152, !37, i64 156, !37, i64 160, !37, i64 164}
!129 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44}
!130 = distinct !{!130, !79, !80}
