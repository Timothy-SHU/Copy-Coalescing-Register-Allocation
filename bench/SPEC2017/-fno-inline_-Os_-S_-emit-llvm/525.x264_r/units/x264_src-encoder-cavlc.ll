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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_macroblock_write_cavlc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 53
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %6 = load i32, ptr %5, align 16, !tbaa !35
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [3 x i8], ptr @x264_macroblock_write_cavlc.i_offsets, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !36
  %10 = zext i8 %9 to i32
  %11 = tail call fastcc i32 @bs_pos(ptr noundef nonnull %2) #10
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %13 = load i32, ptr %12, align 4, !tbaa !37
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !38
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 38
  %22 = load ptr, ptr %21, align 8, !tbaa !39
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !40
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !41
  %27 = sub nsw i32 %24, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %22, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !36
  switch i8 %30, label %34 [
    i8 6, label %31
    i8 18, label %31
  ]

31:                                               ; preds = %20, %20, %15
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %33 = load i32, ptr %32, align 4, !tbaa !42
  tail call fastcc void @bs_write1(ptr noundef nonnull %2, i32 noundef %33) #10
  br label %34

34:                                               ; preds = %20, %31, %1
  %35 = icmp eq i32 %4, 3
  br i1 %35, label %36, label %86

36:                                               ; preds = %34
  %37 = load ptr, ptr %2, align 8, !tbaa !43
  %38 = add nuw nsw i32 %10, 25
  tail call fastcc void @bs_write_ue(ptr noundef nonnull %2, i32 noundef %38) #10
  %39 = tail call fastcc i32 @bs_pos(ptr noundef nonnull %2) #10
  %40 = sub i32 %39, %11
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57
  %42 = load i32, ptr %41, align 8, !tbaa !44
  %43 = add nsw i32 %40, %42
  store i32 %43, ptr %41, align 8, !tbaa !44
  tail call fastcc void @bs_align_0(ptr noundef nonnull %2) #10
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !45
  %46 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16
  %47 = load ptr, ptr %46, align 16, !tbaa !46
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %45, ptr noundef nonnull align 1 dereferenceable(256) %47, i64 256, i1 false)
  %48 = load ptr, ptr %44, align 8, !tbaa !45
  %49 = getelementptr inbounds i8, ptr %48, i64 256
  store ptr %49, ptr %44, align 8, !tbaa !45
  %50 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 1
  br label %55

51:                                               ; preds = %55
  %52 = load ptr, ptr %44, align 8, !tbaa !45
  %53 = getelementptr inbounds i8, ptr %52, i64 64
  store ptr %53, ptr %44, align 8, !tbaa !45
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 16, i64 2
  br label %75

55:                                               ; preds = %36, %55
  %56 = phi i64 [ 0, %36 ], [ %64, %55 ]
  %57 = load ptr, ptr %44, align 8, !tbaa !45
  %58 = shl nuw nsw i64 %56, 3
  %59 = getelementptr inbounds i8, ptr %57, i64 %58
  %60 = load ptr, ptr %50, align 8, !tbaa !46
  %61 = shl nuw nsw i64 %56, 4
  %62 = getelementptr inbounds i8, ptr %60, i64 %61
  %63 = load i64, ptr %62, align 1
  store i64 %63, ptr %59, align 1
  %64 = add nuw nsw i64 %56, 1
  %65 = icmp eq i64 %64, 8
  br i1 %65, label %51, label %55, !llvm.loop !47

66:                                               ; preds = %75
  %67 = load ptr, ptr %44, align 8, !tbaa !45
  %68 = getelementptr inbounds i8, ptr %67, i64 64
  store ptr %68, ptr %44, align 8, !tbaa !45
  %69 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !49
  %71 = ptrtoint ptr %70 to i64
  %72 = ptrtoint ptr %68 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  tail call fastcc void @bs_init(ptr noundef nonnull %2, ptr noundef nonnull %68, i32 noundef %74) #10
  store ptr %37, ptr %2, align 8, !tbaa !43
  br label %623

75:                                               ; preds = %51, %75
  %76 = phi i64 [ 0, %51 ], [ %84, %75 ]
  %77 = load ptr, ptr %44, align 8, !tbaa !45
  %78 = shl nuw nsw i64 %76, 3
  %79 = getelementptr inbounds i8, ptr %77, i64 %78
  %80 = load ptr, ptr %54, align 16, !tbaa !46
  %81 = shl nuw nsw i64 %76, 4
  %82 = getelementptr inbounds i8, ptr %80, i64 %81
  %83 = load i64, ptr %82, align 1
  store i64 %83, ptr %79, align 1
  %84 = add nuw nsw i64 %76, 1
  %85 = icmp eq i64 %84, 8
  br i1 %85, label %66, label %75, !llvm.loop !50

86:                                               ; preds = %34
  %87 = icmp ult i32 %4, 2
  br i1 %87, label %88, label %131

88:                                               ; preds = %86
  %89 = icmp eq i32 %4, 1
  %90 = select i1 %89, i64 4, i64 1
  tail call fastcc void @bs_write_ue(ptr noundef nonnull %2, i32 noundef %10) #10
  %91 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  %92 = load ptr, ptr %91, align 16, !tbaa !51
  %93 = getelementptr inbounds %struct.x264_pps_t, ptr %92, i64 0, i32 15
  %94 = load i32, ptr %93, align 4, !tbaa !52
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  %98 = load i32, ptr %97, align 4, !tbaa !54
  tail call fastcc void @bs_write1(ptr noundef nonnull %2, i32 noundef %98) #10
  br label %99

99:                                               ; preds = %96, %88
  %100 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67
  br label %108

101:                                              ; preds = %128
  %102 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 60
  %103 = load i32, ptr %102, align 4, !tbaa !55
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode8x8c_fix, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !36
  %107 = zext i8 %106 to i32
  tail call fastcc void @bs_write_ue(ptr noundef nonnull %2, i32 noundef %107) #10
  br label %466

108:                                              ; preds = %99, %128
  %109 = phi i64 [ 0, %99 ], [ %129, %128 ]
  %110 = trunc i64 %109 to i32
  %111 = tail call fastcc i32 @x264_mb_predict_intra4x4_mode(ptr noundef nonnull %0, i32 noundef %110) #10, !range !56
  %112 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %109
  %113 = load i32, ptr %112, align 4, !tbaa !57
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [40 x i8], ptr %100, i64 0, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !36
  %117 = sext i8 %116 to i64
  %118 = add nsw i64 %117, 1
  %119 = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !36
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %111, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %108
  tail call fastcc void @bs_write1(ptr noundef nonnull %2, i32 noundef 1) #10
  br label %128

124:                                              ; preds = %108
  %125 = icmp slt i32 %111, %121
  %126 = sext i1 %125 to i32
  %127 = add nsw i32 %126, %121
  tail call fastcc void @bs_write(ptr noundef nonnull %2, i32 noundef 4, i32 noundef %127) #10
  br label %128

128:                                              ; preds = %124, %123
  %129 = add i64 %109, %90
  %130 = icmp ult i64 %129, 16
  br i1 %130, label %108, label %101, !llvm.loop !58

131:                                              ; preds = %86
  switch i32 %4, label %344 [
    i32 2, label %132
    i32 4, label %156
    i32 5, label %199
    i32 17, label %252
    i32 7, label %465
  ]

132:                                              ; preds = %131
  %133 = add nuw nsw i32 %10, 1
  %134 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 59
  %135 = load i32, ptr %134, align 16, !tbaa !59
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode16x16_fix, i64 0, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !36
  %139 = zext i8 %138 to i32
  %140 = add nuw nsw i32 %133, %139
  %141 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  %142 = load i32, ptr %141, align 4, !tbaa !60
  %143 = shl nsw i32 %142, 2
  %144 = add nsw i32 %140, %143
  %145 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %146 = load i32, ptr %145, align 8, !tbaa !61
  %147 = icmp eq i32 %146, 0
  %148 = select i1 %147, i32 0, i32 12
  %149 = add nsw i32 %144, %148
  tail call fastcc void @bs_write_ue(ptr noundef nonnull %2, i32 noundef %149) #10
  %150 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 60
  %151 = load i32, ptr %150, align 4, !tbaa !55
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode8x8c_fix, i64 0, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !36
  %155 = zext i8 %154 to i32
  tail call fastcc void @bs_write_ue(ptr noundef nonnull %2, i32 noundef %155) #10
  br label %466

156:                                              ; preds = %131
  %157 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %158 = load i32, ptr %157, align 4, !tbaa !62
  switch i32 %158, label %466 [
    i32 16, label %159
    i32 14, label %169
    i32 15, label %184
  ]

159:                                              ; preds = %156
  tail call fastcc void @bs_write1(ptr noundef nonnull %2, i32 noundef 1) #10
  %160 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  %161 = load i32, ptr %160, align 8, !tbaa !57
  %162 = icmp sgt i32 %161, 1
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = add nsw i32 %161, -1
  %165 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %166 = load i8, ptr %165, align 1, !tbaa !36
  %167 = sext i8 %166 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %2, i32 noundef %164, i32 noundef %167) #10
  br label %168

168:                                              ; preds = %163, %159
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4) #10
  br label %466

169:                                              ; preds = %156
  tail call fastcc void @bs_write_ue(ptr noundef nonnull %2, i32 noundef 1) #10
  %170 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  %171 = load i32, ptr %170, align 8, !tbaa !57
  %172 = icmp sgt i32 %171, 1
  br i1 %172, label %173, label %183

173:                                              ; preds = %169
  %174 = add nsw i32 %171, -1
  %175 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %176 = load i8, ptr %175, align 1, !tbaa !36
  %177 = sext i8 %176 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %2, i32 noundef %174, i32 noundef %177) #10
  %178 = load i32, ptr %170, align 8, !tbaa !57
  %179 = add nsw i32 %178, -1
  %180 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 28
  %181 = load i8, ptr %180, align 1, !tbaa !36
  %182 = sext i8 %181 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %2, i32 noundef %179, i32 noundef %182) #10
  br label %183

183:                                              ; preds = %173, %169
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4) #10
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 8, i32 noundef 4) #10
  br label %466

184:                                              ; preds = %156
  tail call fastcc void @bs_write_ue(ptr noundef nonnull %2, i32 noundef 2) #10
  %185 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  %186 = load i32, ptr %185, align 8, !tbaa !57
  %187 = icmp sgt i32 %186, 1
  br i1 %187, label %188, label %198

188:                                              ; preds = %184
  %189 = add nsw i32 %186, -1
  %190 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %191 = load i8, ptr %190, align 1, !tbaa !36
  %192 = sext i8 %191 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %2, i32 noundef %189, i32 noundef %192) #10
  %193 = load i32, ptr %185, align 8, !tbaa !57
  %194 = add nsw i32 %193, -1
  %195 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 14
  %196 = load i8, ptr %195, align 1, !tbaa !36
  %197 = sext i8 %196 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %2, i32 noundef %194, i32 noundef %197) #10
  br label %198

198:                                              ; preds = %188, %184
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 2) #10
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 4, i32 noundef 2) #10
  br label %466

199:                                              ; preds = %131
  %200 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %201 = load i8, ptr %200, align 1, !tbaa !36
  %202 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 14
  %203 = load i8, ptr %202, align 1, !tbaa !36
  %204 = or i8 %203, %201
  %205 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 28
  %206 = load i8, ptr %205, align 1, !tbaa !36
  %207 = or i8 %204, %206
  %208 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 30
  %209 = load i8, ptr %208, align 1, !tbaa !36
  %210 = or i8 %207, %209
  %211 = icmp eq i8 %210, 0
  %212 = select i1 %211, i32 4, i32 3
  tail call fastcc void @bs_write_ue(ptr noundef nonnull %2, i32 noundef %212) #10
  %213 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 1
  %214 = load i32, ptr %213, align 4, !tbaa !63
  %215 = and i32 %214, 32
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %227, label %217

217:                                              ; preds = %199, %217
  %218 = phi i64 [ %225, %217 ], [ 0, %199 ]
  %219 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %218
  %220 = load i8, ptr %219, align 1, !tbaa !36
  %221 = zext i8 %220 to i64
  %222 = getelementptr inbounds [4 x i8], ptr @sub_mb_type_p_to_golomb, i64 0, i64 %221
  %223 = load i8, ptr %222, align 1, !tbaa !36
  %224 = zext i8 %223 to i32
  tail call fastcc void @bs_write_ue(ptr noundef nonnull %2, i32 noundef %224) #10
  %225 = add nuw nsw i64 %218, 1
  %226 = icmp eq i64 %225, 4
  br i1 %226, label %228, label %217, !llvm.loop !64

227:                                              ; preds = %199
  tail call fastcc void @bs_write(ptr noundef nonnull %2, i32 noundef 4, i32 noundef 15) #10
  br label %228

228:                                              ; preds = %217, %227
  br i1 %211, label %247, label %229

229:                                              ; preds = %228
  %230 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  %231 = load i32, ptr %230, align 8, !tbaa !57
  %232 = add nsw i32 %231, -1
  %233 = load i8, ptr %200, align 1, !tbaa !36
  %234 = sext i8 %233 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %2, i32 noundef %232, i32 noundef %234) #10
  %235 = load i32, ptr %230, align 8, !tbaa !57
  %236 = add nsw i32 %235, -1
  %237 = load i8, ptr %202, align 1, !tbaa !36
  %238 = sext i8 %237 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %2, i32 noundef %236, i32 noundef %238) #10
  %239 = load i32, ptr %230, align 8, !tbaa !57
  %240 = add nsw i32 %239, -1
  %241 = load i8, ptr %205, align 1, !tbaa !36
  %242 = sext i8 %241 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %2, i32 noundef %240, i32 noundef %242) #10
  %243 = load i32, ptr %230, align 8, !tbaa !57
  %244 = add nsw i32 %243, -1
  %245 = load i8, ptr %208, align 1, !tbaa !36
  %246 = sext i8 %245 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %2, i32 noundef %244, i32 noundef %246) #10
  br label %247

247:                                              ; preds = %229, %228
  br label %248

248:                                              ; preds = %247, %248
  %249 = phi i32 [ %250, %248 ], [ 0, %247 ]
  tail call fastcc void @cavlc_mb8x8_mvd(ptr noundef %0, i32 noundef %249) #10
  %250 = add nuw nsw i32 %249, 1
  %251 = icmp eq i32 %250, 4
  br i1 %251, label %466, label %248, !llvm.loop !65

252:                                              ; preds = %131
  tail call fastcc void @bs_write_ue(ptr noundef nonnull %2, i32 noundef 22) #10
  br label %259

253:                                              ; preds = %259
  %254 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  %255 = load i32, ptr %254, align 8, !tbaa !57
  %256 = icmp sgt i32 %255, 1
  br i1 %256, label %257, label %290

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3
  br label %269

259:                                              ; preds = %252, %259
  %260 = phi i64 [ 0, %252 ], [ %267, %259 ]
  %261 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %260
  %262 = load i8, ptr %261, align 1, !tbaa !36
  %263 = zext i8 %262 to i64
  %264 = getelementptr inbounds [13 x i8], ptr @sub_mb_type_b_to_golomb, i64 0, i64 %263
  %265 = load i8, ptr %264, align 1, !tbaa !36
  %266 = zext i8 %265 to i32
  tail call fastcc void @bs_write_ue(ptr noundef nonnull %2, i32 noundef %266) #10
  %267 = add nuw nsw i64 %260, 1
  %268 = icmp eq i64 %267, 4
  br i1 %268, label %253, label %259, !llvm.loop !66

269:                                              ; preds = %257, %287
  %270 = phi i64 [ 0, %257 ], [ %288, %287 ]
  %271 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %270
  %272 = load i8, ptr %271, align 1, !tbaa !36
  %273 = zext i8 %272 to i64
  %274 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %273
  %275 = load i8, ptr %274, align 1, !tbaa !36
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %287, label %277

277:                                              ; preds = %269
  %278 = load i32, ptr %254, align 8, !tbaa !57
  %279 = add nsw i32 %278, -1
  %280 = shl nuw nsw i64 %270, 2
  %281 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %280
  %282 = load i32, ptr %281, align 16, !tbaa !57
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [40 x i8], ptr %258, i64 0, i64 %283
  %285 = load i8, ptr %284, align 1, !tbaa !36
  %286 = sext i8 %285 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %2, i32 noundef %279, i32 noundef %286) #10
  br label %287

287:                                              ; preds = %269, %277
  %288 = add nuw nsw i64 %270, 1
  %289 = icmp eq i64 %288, 4
  br i1 %289, label %290, label %269, !llvm.loop !67

290:                                              ; preds = %287, %253
  %291 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19, i64 1
  %292 = load i32, ptr %291, align 4, !tbaa !57
  %293 = icmp sgt i32 %292, 1
  br i1 %293, label %294, label %315

294:                                              ; preds = %290, %312
  %295 = phi i64 [ %313, %312 ], [ 0, %290 ]
  %296 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %295
  %297 = load i8, ptr %296, align 1, !tbaa !36
  %298 = zext i8 %297 to i64
  %299 = getelementptr inbounds [2 x [17 x i8]], ptr @x264_mb_partition_listX_table, i64 0, i64 1, i64 %298
  %300 = load i8, ptr %299, align 1, !tbaa !36
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %312, label %302

302:                                              ; preds = %294
  %303 = load i32, ptr %291, align 4, !tbaa !57
  %304 = add nsw i32 %303, -1
  %305 = shl nuw nsw i64 %295, 2
  %306 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %305
  %307 = load i32, ptr %306, align 16, !tbaa !57
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 %308
  %310 = load i8, ptr %309, align 1, !tbaa !36
  %311 = sext i8 %310 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %2, i32 noundef %304, i32 noundef %311) #10
  br label %312

312:                                              ; preds = %294, %302
  %313 = add nuw nsw i64 %295, 1
  %314 = icmp eq i64 %313, 4
  br i1 %314, label %315, label %294, !llvm.loop !68

315:                                              ; preds = %312, %290
  br label %316

316:                                              ; preds = %315, %327
  %317 = phi i64 [ %328, %327 ], [ 0, %315 ]
  %318 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %317
  %319 = load i8, ptr %318, align 1, !tbaa !36
  %320 = zext i8 %319 to i64
  %321 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %320
  %322 = load i8, ptr %321, align 1, !tbaa !36
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %327, label %324

324:                                              ; preds = %316
  %325 = trunc i64 %317 to i32
  %326 = shl i32 %325, 2
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %326, i32 noundef 2) #10
  br label %327

327:                                              ; preds = %316, %324
  %328 = add nuw nsw i64 %317, 1
  %329 = icmp eq i64 %328, 4
  br i1 %329, label %330, label %316, !llvm.loop !69

330:                                              ; preds = %327, %341
  %331 = phi i64 [ %342, %341 ], [ 0, %327 ]
  %332 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %331
  %333 = load i8, ptr %332, align 1, !tbaa !36
  %334 = zext i8 %333 to i64
  %335 = getelementptr inbounds [2 x [17 x i8]], ptr @x264_mb_partition_listX_table, i64 0, i64 1, i64 %334
  %336 = load i8, ptr %335, align 1, !tbaa !36
  %337 = icmp eq i8 %336, 0
  br i1 %337, label %341, label %338

338:                                              ; preds = %330
  %339 = trunc i64 %331 to i32
  %340 = shl i32 %339, 2
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %340, i32 noundef 2) #10
  br label %341

341:                                              ; preds = %330, %338
  %342 = add nuw nsw i64 %331, 1
  %343 = icmp eq i64 %342, 4
  br i1 %343, label %466, label %330, !llvm.loop !70

344:                                              ; preds = %131
  %345 = sext i32 %4 to i64
  %346 = getelementptr inbounds [19 x [2 x [2 x i8]]], ptr @x264_mb_type_list_table, i64 0, i64 %345
  %347 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  %348 = load i32, ptr %347, align 8, !tbaa !57
  %349 = add nsw i32 %348, -1
  %350 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19, i64 1
  %351 = load i32, ptr %350, align 4, !tbaa !57
  %352 = add nsw i32 %351, -1
  %353 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %354 = load i32, ptr %353, align 4, !tbaa !62
  %355 = add nsw i32 %354, -14
  %356 = sext i32 %355 to i64
  %357 = add nsw i32 %4, -8
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [3 x [9 x i8]], ptr @mb_type_b_to_golomb, i64 0, i64 %356, i64 %358
  %360 = load i8, ptr %359, align 1, !tbaa !36
  %361 = zext i8 %360 to i32
  tail call fastcc void @bs_write_ue(ptr noundef nonnull %2, i32 noundef %361) #10
  %362 = load i32, ptr %353, align 4, !tbaa !62
  %363 = icmp eq i32 %362, 16
  %364 = icmp eq i32 %349, 0
  br i1 %363, label %365, label %392

365:                                              ; preds = %344
  br i1 %364, label %373, label %366

366:                                              ; preds = %365
  %367 = load i8, ptr %346, align 4, !tbaa !36
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %373, label %369

369:                                              ; preds = %366
  %370 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %371 = load i8, ptr %370, align 1, !tbaa !36
  %372 = sext i8 %371 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %2, i32 noundef %349, i32 noundef %372) #10
  br label %373

373:                                              ; preds = %369, %366, %365
  %374 = icmp eq i32 %352, 0
  br i1 %374, label %383, label %375

375:                                              ; preds = %373
  %376 = getelementptr inbounds [2 x i8], ptr %346, i64 1
  %377 = load i8, ptr %376, align 2, !tbaa !36
  %378 = icmp eq i8 %377, 0
  br i1 %378, label %383, label %379

379:                                              ; preds = %375
  %380 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 12
  %381 = load i8, ptr %380, align 1, !tbaa !36
  %382 = sext i8 %381 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %2, i32 noundef %352, i32 noundef %382) #10
  br label %383

383:                                              ; preds = %379, %375, %373
  %384 = load i8, ptr %346, align 4, !tbaa !36
  %385 = icmp eq i8 %384, 0
  br i1 %385, label %387, label %386

386:                                              ; preds = %383
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4) #10
  br label %387

387:                                              ; preds = %386, %383
  %388 = getelementptr inbounds [2 x i8], ptr %346, i64 1
  %389 = load i8, ptr %388, align 2, !tbaa !36
  %390 = icmp eq i8 %389, 0
  br i1 %390, label %466, label %391

391:                                              ; preds = %387
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef 4) #10
  br label %466

392:                                              ; preds = %344
  br i1 %364, label %408, label %393

393:                                              ; preds = %392
  %394 = load i8, ptr %346, align 4, !tbaa !36
  %395 = icmp eq i8 %394, 0
  br i1 %395, label %400, label %396

396:                                              ; preds = %393
  %397 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12
  %398 = load i8, ptr %397, align 1, !tbaa !36
  %399 = sext i8 %398 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %2, i32 noundef %349, i32 noundef %399) #10
  br label %400

400:                                              ; preds = %393, %396
  %401 = getelementptr inbounds [2 x i8], ptr %346, i64 0, i64 1
  %402 = load i8, ptr %401, align 1, !tbaa !36
  %403 = icmp eq i8 %402, 0
  br i1 %403, label %408, label %404

404:                                              ; preds = %400
  %405 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 0, i64 30
  %406 = load i8, ptr %405, align 1, !tbaa !36
  %407 = sext i8 %406 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %2, i32 noundef %349, i32 noundef %407) #10
  br label %408

408:                                              ; preds = %392, %404, %400
  %409 = icmp eq i32 %352, 0
  br i1 %409, label %426, label %410

410:                                              ; preds = %408
  %411 = getelementptr inbounds [2 x i8], ptr %346, i64 1
  %412 = load i8, ptr %411, align 2, !tbaa !36
  %413 = icmp eq i8 %412, 0
  br i1 %413, label %418, label %414

414:                                              ; preds = %410
  %415 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 12
  %416 = load i8, ptr %415, align 1, !tbaa !36
  %417 = sext i8 %416 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %2, i32 noundef %352, i32 noundef %417) #10
  br label %418

418:                                              ; preds = %410, %414
  %419 = getelementptr inbounds [2 x i8], ptr %346, i64 1, i64 1
  %420 = load i8, ptr %419, align 1, !tbaa !36
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %426, label %422

422:                                              ; preds = %418
  %423 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 30
  %424 = load i8, ptr %423, align 1, !tbaa !36
  %425 = sext i8 %424 to i32
  tail call fastcc void @bs_write_te(ptr noundef nonnull %2, i32 noundef %352, i32 noundef %425) #10
  br label %426

426:                                              ; preds = %408, %422, %418
  %427 = load i32, ptr %353, align 4, !tbaa !62
  %428 = icmp eq i32 %427, 14
  %429 = load i8, ptr %346, align 4, !tbaa !36
  %430 = icmp eq i8 %429, 0
  br i1 %428, label %431, label %448

431:                                              ; preds = %426
  br i1 %430, label %433, label %432

432:                                              ; preds = %431
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 4) #10
  br label %433

433:                                              ; preds = %432, %431
  %434 = getelementptr inbounds [2 x i8], ptr %346, i64 0, i64 1
  %435 = load i8, ptr %434, align 1, !tbaa !36
  %436 = icmp eq i8 %435, 0
  br i1 %436, label %438, label %437

437:                                              ; preds = %433
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 8, i32 noundef 4) #10
  br label %438

438:                                              ; preds = %437, %433
  %439 = getelementptr inbounds [2 x i8], ptr %346, i64 1
  %440 = load i8, ptr %439, align 2, !tbaa !36
  %441 = icmp eq i8 %440, 0
  br i1 %441, label %443, label %442

442:                                              ; preds = %438
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef 4) #10
  br label %443

443:                                              ; preds = %442, %438
  %444 = getelementptr inbounds [2 x i8], ptr %346, i64 1, i64 1
  %445 = load i8, ptr %444, align 1, !tbaa !36
  %446 = icmp eq i8 %445, 0
  br i1 %446, label %466, label %447

447:                                              ; preds = %443
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 8, i32 noundef 4) #10
  br label %466

448:                                              ; preds = %426
  br i1 %430, label %450, label %449

449:                                              ; preds = %448
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, i32 noundef 2) #10
  br label %450

450:                                              ; preds = %449, %448
  %451 = getelementptr inbounds [2 x i8], ptr %346, i64 0, i64 1
  %452 = load i8, ptr %451, align 1, !tbaa !36
  %453 = icmp eq i8 %452, 0
  br i1 %453, label %455, label %454

454:                                              ; preds = %450
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 4, i32 noundef 2) #10
  br label %455

455:                                              ; preds = %454, %450
  %456 = getelementptr inbounds [2 x i8], ptr %346, i64 1
  %457 = load i8, ptr %456, align 2, !tbaa !36
  %458 = icmp eq i8 %457, 0
  br i1 %458, label %460, label %459

459:                                              ; preds = %455
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef 2) #10
  br label %460

460:                                              ; preds = %459, %455
  %461 = getelementptr inbounds [2 x i8], ptr %346, i64 1, i64 1
  %462 = load i8, ptr %461, align 1, !tbaa !36
  %463 = icmp eq i8 %462, 0
  br i1 %463, label %466, label %464

464:                                              ; preds = %460
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 4, i32 noundef 2) #10
  br label %466

465:                                              ; preds = %131
  tail call fastcc void @bs_write1(ptr noundef nonnull %2, i32 noundef 1) #10
  br label %466

466:                                              ; preds = %341, %248, %391, %387, %460, %464, %443, %447, %156, %132, %465, %168, %198, %183, %101
  %467 = tail call fastcc i32 @bs_pos(ptr noundef nonnull %2) #10
  %468 = sub i32 %467, %11
  %469 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57
  %470 = load i32, ptr %469, align 8, !tbaa !44
  %471 = add nsw i32 %468, %470
  store i32 %471, ptr %469, align 8, !tbaa !44
  br i1 %87, label %474, label %472

472:                                              ; preds = %466
  %473 = icmp eq i32 %4, 2
  br i1 %473, label %486, label %474

474:                                              ; preds = %472, %466
  %475 = phi ptr [ @intra4x4_cbp_to_golomb, %466 ], [ @inter_cbp_to_golomb, %472 ]
  %476 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  %477 = load i32, ptr %476, align 4, !tbaa !60
  %478 = shl i32 %477, 4
  %479 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %480 = load i32, ptr %479, align 8, !tbaa !61
  %481 = or i32 %478, %480
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds [48 x i8], ptr %475, i64 0, i64 %482
  %484 = load i8, ptr %483, align 1, !tbaa !36
  %485 = zext i8 %484 to i32
  tail call fastcc void @bs_write_ue(ptr noundef nonnull %2, i32 noundef %485) #10
  br label %486

486:                                              ; preds = %474, %472
  %487 = tail call fastcc i32 @x264_mb_transform_8x8_allowed(ptr noundef nonnull %0) #10, !range !71
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %496, label %489

489:                                              ; preds = %486
  %490 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %491 = load i32, ptr %490, align 8, !tbaa !61
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %496, label %493

493:                                              ; preds = %489
  %494 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  %495 = load i32, ptr %494, align 4, !tbaa !54
  tail call fastcc void @bs_write1(ptr noundef nonnull %2, i32 noundef %495) #10
  br label %496

496:                                              ; preds = %493, %489, %486
  %497 = icmp eq i32 %4, 2
  br i1 %497, label %498, label %552

498:                                              ; preds = %496
  tail call fastcc void @cavlc_qp_delta(ptr noundef nonnull %0) #10
  %499 = tail call fastcc i32 @x264_mb_predict_non_zero_code(ptr noundef nonnull %0, i32 noundef 0) #10, !range !56
  %500 = zext nneg i32 %499 to i64
  %501 = getelementptr inbounds [17 x i8], ptr @ct_index, i64 0, i64 %500
  %502 = load i8, ptr %501, align 1, !tbaa !36
  %503 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 44
  %504 = load i8, ptr %503, align 1, !tbaa !36
  %505 = icmp eq i8 %504, 0
  br i1 %505, label %506, label %514

506:                                              ; preds = %498
  %507 = zext i8 %502 to i64
  %508 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %507
  %509 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %507, i32 1
  %510 = load i8, ptr %509, align 1, !tbaa !72
  %511 = zext i8 %510 to i32
  %512 = load i8, ptr %508, align 1, !tbaa !74
  %513 = zext i8 %512 to i32
  tail call fastcc void @bs_write(ptr noundef nonnull %2, i32 noundef %511, i32 noundef %513) #10
  br label %519

514:                                              ; preds = %498
  %515 = zext i8 %502 to i32
  %516 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54
  %517 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %516, i32 noundef %515) #10
  %518 = trunc i32 %517 to i8
  store i8 %518, ptr %503, align 1, !tbaa !36
  br label %519

519:                                              ; preds = %514, %506
  %520 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %521 = load i32, ptr %520, align 8, !tbaa !61
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %560, label %523

523:                                              ; preds = %519, %549
  %524 = phi i64 [ %550, %549 ], [ 0, %519 ]
  %525 = trunc i64 %524 to i32
  %526 = tail call fastcc i32 @x264_mb_predict_non_zero_code(ptr noundef nonnull %0, i32 noundef %525) #10, !range !56
  %527 = zext nneg i32 %526 to i64
  %528 = getelementptr inbounds [17 x i8], ptr @ct_index, i64 0, i64 %527
  %529 = load i8, ptr %528, align 1, !tbaa !36
  %530 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %524
  %531 = load i32, ptr %530, align 4, !tbaa !57
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %532
  %534 = load i8, ptr %533, align 1, !tbaa !36
  %535 = icmp eq i8 %534, 0
  br i1 %535, label %536, label %544

536:                                              ; preds = %523
  %537 = zext i8 %529 to i64
  %538 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %537
  %539 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %537, i32 1
  %540 = load i8, ptr %539, align 1, !tbaa !72
  %541 = zext i8 %540 to i32
  %542 = load i8, ptr %538, align 1, !tbaa !74
  %543 = zext i8 %542 to i32
  tail call fastcc void @bs_write(ptr noundef nonnull %2, i32 noundef %541, i32 noundef %543) #10
  br label %549

544:                                              ; preds = %523
  %545 = zext i8 %529 to i32
  %546 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %524, i64 1
  %547 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %546, i32 noundef %545) #10
  %548 = trunc i32 %547 to i8
  store i8 %548, ptr %533, align 1, !tbaa !36
  br label %549

549:                                              ; preds = %544, %536
  %550 = add nuw nsw i64 %524, 1
  %551 = icmp eq i64 %550, 16
  br i1 %551, label %560, label %523, !llvm.loop !75

552:                                              ; preds = %496
  %553 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %554 = load i32, ptr %553, align 8, !tbaa !61
  %555 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  %556 = load i32, ptr %555, align 4, !tbaa !60
  %557 = or i32 %556, %554
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %560, label %559

559:                                              ; preds = %552
  tail call fastcc void @cavlc_qp_delta(ptr noundef nonnull %0) #10
  tail call fastcc void @x264_macroblock_luma_write_cavlc(ptr noundef nonnull %0) #10
  br label %560

560:                                              ; preds = %549, %552, %559, %519
  %561 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  %562 = load i32, ptr %561, align 4, !tbaa !60
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %623, label %564

564:                                              ; preds = %560
  %565 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 46
  %566 = load i8, ptr %565, align 1, !tbaa !36
  %567 = icmp eq i8 %566, 0
  br i1 %567, label %568, label %573

568:                                              ; preds = %564
  %569 = load i8, ptr getelementptr inbounds ([5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 4, i32 1), align 1, !tbaa !72
  %570 = zext i8 %569 to i32
  %571 = load i8, ptr getelementptr inbounds ([5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 4), align 1, !tbaa !74
  %572 = zext i8 %571 to i32
  tail call fastcc void @bs_write(ptr noundef nonnull %2, i32 noundef %570, i32 noundef %572) #10
  br label %577

573:                                              ; preds = %564
  %574 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 1
  %575 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull %574, i32 noundef 4) #10
  %576 = trunc i32 %575 to i8
  store i8 %576, ptr %565, align 1, !tbaa !36
  br label %577

577:                                              ; preds = %573, %568
  %578 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 47
  %579 = load i8, ptr %578, align 1, !tbaa !36
  %580 = icmp eq i8 %579, 0
  br i1 %580, label %581, label %586

581:                                              ; preds = %577
  %582 = load i8, ptr getelementptr inbounds ([5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 4, i32 1), align 1, !tbaa !72
  %583 = zext i8 %582 to i32
  %584 = load i8, ptr getelementptr inbounds ([5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 4), align 1, !tbaa !74
  %585 = zext i8 %584 to i32
  tail call fastcc void @bs_write(ptr noundef nonnull %2, i32 noundef %583, i32 noundef %585) #10
  br label %590

586:                                              ; preds = %577
  %587 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 1, i64 1
  %588 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull %587, i32 noundef 4) #10
  %589 = trunc i32 %588 to i8
  store i8 %589, ptr %578, align 1, !tbaa !36
  br label %590

590:                                              ; preds = %586, %581
  %591 = load i32, ptr %561, align 4, !tbaa !60
  %592 = and i32 %591, 2
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %623, label %594

594:                                              ; preds = %590, %620
  %595 = phi i64 [ %621, %620 ], [ 16, %590 ]
  %596 = trunc i64 %595 to i32
  %597 = tail call fastcc i32 @x264_mb_predict_non_zero_code(ptr noundef nonnull %0, i32 noundef %596) #10, !range !56
  %598 = zext nneg i32 %597 to i64
  %599 = getelementptr inbounds [17 x i8], ptr @ct_index, i64 0, i64 %598
  %600 = load i8, ptr %599, align 1, !tbaa !36
  %601 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %595
  %602 = load i32, ptr %601, align 4, !tbaa !57
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %603
  %605 = load i8, ptr %604, align 1, !tbaa !36
  %606 = icmp eq i8 %605, 0
  br i1 %606, label %607, label %615

607:                                              ; preds = %594
  %608 = zext i8 %600 to i64
  %609 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %608
  %610 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %608, i32 1
  %611 = load i8, ptr %610, align 1, !tbaa !72
  %612 = zext i8 %611 to i32
  %613 = load i8, ptr %609, align 1, !tbaa !74
  %614 = zext i8 %613 to i32
  tail call fastcc void @bs_write(ptr noundef nonnull %2, i32 noundef %612, i32 noundef %614) #10
  br label %620

615:                                              ; preds = %594
  %616 = zext i8 %600 to i32
  %617 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %595, i64 1
  %618 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull %617, i32 noundef %616) #10
  %619 = trunc i32 %618 to i8
  store i8 %619, ptr %604, align 1, !tbaa !36
  br label %620

620:                                              ; preds = %615, %607
  %621 = add nuw nsw i64 %595, 1
  %622 = icmp eq i64 %621, 24
  br i1 %622, label %623, label %594, !llvm.loop !76

623:                                              ; preds = %620, %560, %590, %66
  %624 = phi i32 [ %39, %66 ], [ %467, %590 ], [ %467, %560 ], [ %467, %620 ]
  %625 = tail call fastcc i32 @bs_pos(ptr noundef nonnull %2) #10
  %626 = sub i32 %625, %624
  %627 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 1
  %628 = load i32, ptr %627, align 4, !tbaa !77
  %629 = add nsw i32 %626, %628
  store i32 %629, ptr %627, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @bs_pos(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = load ptr, ptr %0, align 8, !tbaa !43
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !78
  %10 = trunc i64 %7 to i32
  %11 = shl i32 %10, 3
  %12 = sub i32 %11, %9
  %13 = add i32 %12, 64
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_write1(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !79
  %5 = shl i64 %4, 1
  %6 = zext i32 %1 to i64
  %7 = or i64 %5, %6
  store i64 %7, ptr %3, align 8, !tbaa !79
  %8 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !78
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %8, align 8, !tbaa !78
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = trunc i64 %7 to i32
  %14 = tail call fastcc i32 @endian_fix32(i32 noundef %13) #10
  %15 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  store i32 %14, ptr %16, align 4, !tbaa !36
  %17 = load ptr, ptr %15, align 8, !tbaa !45
  %18 = getelementptr inbounds i8, ptr %17, i64 4
  store ptr %18, ptr %15, align 8, !tbaa !45
  store i32 64, ptr %8, align 8, !tbaa !78
  br label %19

19:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_write_ue(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = add nsw i32 %1, 1
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !36
  %7 = zext i8 %6 to i32
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef %7, i32 noundef %3) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_align_0(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !78
  %4 = and i32 %3, 7
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef %4, i32 noundef 0) #10
  tail call fastcc void @bs_flush(ptr noundef %0) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bs_init(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 {
  %4 = ptrtoint ptr %1 to i64
  %5 = and i64 %4, 3
  %6 = sub nsw i64 0, %5
  %7 = getelementptr inbounds i8, ptr %1, i64 %6
  store ptr %7, ptr %0, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !45
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds i8, ptr %1, i64 %9
  %11 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !49
  %12 = trunc i64 %5 to i32
  %13 = shl nuw nsw i32 %12, 3
  %14 = sub nuw nsw i32 64, %13
  %15 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  store i32 %14, ptr %15, align 8, !tbaa !78
  %16 = load i32, ptr %7, align 4, !tbaa !36
  %17 = tail call fastcc i32 @endian_fix32(i32 noundef %16) #10
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3
  %20 = shl i64 %4, 3
  %21 = and i64 %20, 24
  %22 = sub nuw nsw i64 32, %21
  %23 = lshr i64 %18, %22
  store i64 %23, ptr %19, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @x264_mb_predict_intra4x4_mode(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !57
  %7 = add nsw i32 %6, -1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [40 x i8], ptr %3, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !36
  %11 = sext i8 %10 to i64
  %12 = add nsw i32 %6, -8
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [40 x i8], ptr %3, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !36
  %16 = sext i8 %15 to i64
  %17 = add nsw i64 %11, 1
  %18 = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !36
  %20 = add nsw i64 %16, 1
  %21 = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !36
  %23 = tail call i8 @llvm.smin.i8(i8 %19, i8 %22)
  %24 = icmp slt i8 %23, 0
  %25 = select i1 %24, i8 2, i8 %23
  %26 = sext i8 %25 to i32
  ret i32 %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_write(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !79
  %6 = zext nneg i32 %1 to i64
  %7 = shl i64 %5, %6
  %8 = zext i32 %2 to i64
  %9 = or i64 %7, %8
  store i64 %9, ptr %4, align 8, !tbaa !79
  %10 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !78
  %12 = sub nsw i32 %11, %1
  store i32 %12, ptr %10, align 8, !tbaa !78
  %13 = icmp slt i32 %12, 33
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = zext nneg i32 %12 to i64
  %16 = shl i64 %9, %15
  %17 = tail call fastcc i64 @endian_fix(i64 noundef %16) #10
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  store i32 %18, ptr %20, align 4, !tbaa !36
  %21 = load i32, ptr %10, align 8, !tbaa !78
  %22 = add nsw i32 %21, 32
  store i32 %22, ptr %10, align 8, !tbaa !78
  %23 = load ptr, ptr %19, align 8, !tbaa !45
  %24 = getelementptr inbounds i8, ptr %23, i64 4
  store ptr %24, ptr %19, align 8, !tbaa !45
  br label %25

25:                                               ; preds = %14, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_write_te(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = xor i32 %2, 1
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef %6) #10
  br label %8

7:                                                ; preds = %3
  tail call fastcc void @bs_write_ue(ptr noundef %0, i32 noundef %2) #10
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cavlc_mb_mvd(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x i16], align 4
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5) #12
  %7 = zext nneg i32 %1 to i64
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !57
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %7, i64 %11
  %13 = load i16, ptr %12, align 4, !tbaa !80
  %14 = sext i16 %13 to i32
  %15 = load i16, ptr %5, align 4, !tbaa !80
  %16 = sext i16 %15 to i32
  %17 = sub nsw i32 %14, %16
  call fastcc void @bs_write_se(ptr noundef nonnull %6, i32 noundef %17) #10
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %7, i64 %11, i64 1
  %19 = load i16, ptr %18, align 2, !tbaa !80
  %20 = sext i16 %19 to i32
  %21 = getelementptr inbounds [2 x i16], ptr %5, i64 0, i64 1
  %22 = load i16, ptr %21, align 2, !tbaa !80
  %23 = sext i16 %22 to i32
  %24 = sub nsw i32 %20, %23
  call fastcc void @bs_write_se(ptr noundef nonnull %6, i32 noundef %24) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cavlc_mb8x8_mvd(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !36
  switch i8 %5, label %19 [
    i8 3, label %6
    i8 1, label %8
    i8 2, label %11
    i8 0, label %14
  ]

6:                                                ; preds = %2
  %7 = shl nsw i32 %1, 2
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %7, i32 noundef 2) #10
  br label %19

8:                                                ; preds = %2
  %9 = shl nsw i32 %1, 2
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %9, i32 noundef 2) #10
  %10 = or disjoint i32 %9, 2
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %10, i32 noundef 2) #10
  br label %19

11:                                               ; preds = %2
  %12 = shl nsw i32 %1, 2
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %12, i32 noundef 1) #10
  %13 = or disjoint i32 %12, 1
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %13, i32 noundef 1) #10
  br label %19

14:                                               ; preds = %2
  %15 = shl nsw i32 %1, 2
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %15, i32 noundef 1) #10
  %16 = or disjoint i32 %15, 1
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %16, i32 noundef 1) #10
  %17 = or disjoint i32 %15, 2
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %17, i32 noundef 1) #10
  %18 = or disjoint i32 %15, 3
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %18, i32 noundef 1) #10
  br label %19

19:                                               ; preds = %2, %14, %11, %8, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @x264_mb_transform_8x8_allowed(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  %3 = load ptr, ptr %2, align 16, !tbaa !51
  %4 = getelementptr inbounds %struct.x264_pps_t, ptr %3, i64 0, i32 15
  %5 = load i32, ptr %4, align 4, !tbaa !52
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 53
  %9 = load i32, ptr %8, align 8, !tbaa !5
  %10 = icmp eq i32 %9, 5
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds [19 x i8], ptr @x264_mb_transform_8x8_allowed.partition_tab, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !36
  %15 = zext i8 %14 to i32
  br label %21

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55
  %18 = load i32, ptr %17, align 16, !tbaa !36
  %19 = icmp eq i32 %18, 50529027
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %1, %16, %11
  %22 = phi i32 [ %15, %11 ], [ %20, %16 ], [ 0, %1 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @cavlc_qp_delta(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 68
  %3 = load i32, ptr %2, align 16, !tbaa !82
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 70
  %5 = load i32, ptr %4, align 8, !tbaa !83
  %6 = sub nsw i32 %3, %5
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 53
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %12 = load i32, ptr %11, align 8, !tbaa !61
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  %14 = load i32, ptr %13, align 4, !tbaa !60
  %15 = or i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 44
  %19 = load i8, ptr %18, align 1, !tbaa !36
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 %5, ptr %2, align 16, !tbaa !82
  br label %32

22:                                               ; preds = %17, %10, %1
  %23 = icmp eq i32 %3, %5
  br i1 %23, label %32, label %24

24:                                               ; preds = %22
  %25 = icmp slt i32 %6, -26
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = add nsw i32 %6, 52
  br label %32

28:                                               ; preds = %24
  %29 = icmp sgt i32 %6, 25
  %30 = add nsw i32 %6, -52
  %31 = select i1 %29, i32 %30, i32 %6
  br label %32

32:                                               ; preds = %21, %28, %26, %22
  %33 = phi i32 [ %27, %26 ], [ 0, %22 ], [ %31, %28 ], [ 0, %21 ]
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5
  tail call fastcc void @bs_write_se(ptr noundef nonnull %34, i32 noundef %33) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @x264_mb_predict_non_zero_code(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !57
  %6 = add nsw i32 %5, -1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !36
  %10 = zext i8 %9 to i32
  %11 = add nsw i32 %5, -8
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !36
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %15, %10
  %17 = icmp ult i32 %16, 128
  %18 = add nuw nsw i32 %16, 1
  %19 = lshr i32 %18, 1
  %20 = select i1 %17, i32 %19, i32 %16
  %21 = and i32 %20, 127
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @block_residual_write_cavlc(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.x264_run_level_t, align 4
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %5) #11
  %7 = getelementptr inbounds %struct.x264_run_level_t, ptr %5, i64 0, i32 1
  %8 = getelementptr inbounds %struct.x264_run_level_t, ptr %5, i64 0, i32 1, i64 1
  store i16 2, ptr %8, align 2, !tbaa !80
  %9 = getelementptr inbounds %struct.x264_run_level_t, ptr %5, i64 0, i32 1, i64 2
  store i16 2, ptr %9, align 4, !tbaa !80
  %10 = zext nneg i32 %1 to i64
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 73, i32 12, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = call i32 %12(ptr noundef %2, ptr noundef nonnull %5) #12
  %14 = load i32, ptr %5, align 4, !tbaa !84
  %15 = sub i32 %14, %13
  %16 = add i32 %15, 1
  %17 = load i16, ptr %7, align 4, !tbaa !80
  %18 = sext i16 %17 to i32
  %19 = add nsw i32 %18, 1
  %20 = sub nsw i32 1, %18
  %21 = or i32 %19, %20
  %22 = lshr i32 %21, 31
  %23 = load i16, ptr %8, align 2, !tbaa !80
  %24 = sext i16 %23 to i32
  %25 = add nsw i32 %24, 1
  %26 = sub nsw i32 1, %24
  %27 = or i32 %25, %26
  %28 = lshr i32 %27, 30
  %29 = and i32 %28, 2
  %30 = or disjoint i32 %29, %22
  %31 = load i16, ptr %9, align 4, !tbaa !80
  %32 = sext i16 %31 to i32
  %33 = add nsw i32 %32, 1
  %34 = sub nsw i32 1, %32
  %35 = or i32 %33, %34
  %36 = lshr i32 %35, 29
  %37 = and i32 %36, 4
  %38 = or disjoint i32 %30, %37
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds [8 x i8], ptr @block_residual_write_cavlc.ctz_index, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !36
  %42 = zext i8 %41 to i32
  %43 = lshr i32 %32, 31
  %44 = lshr i16 %23, 14
  %45 = and i16 %44, 2
  %46 = lshr i16 %17, 13
  %47 = and i16 %46, 4
  %48 = or disjoint i16 %45, %47
  %49 = zext nneg i16 %48 to i32
  %50 = or disjoint i32 %43, %49
  %51 = sub nsw i32 3, %42
  %52 = lshr i32 %50, %51
  %53 = zext nneg i32 %3 to i64
  %54 = add nsw i32 %13, -1
  %55 = sext i32 %54 to i64
  %56 = zext i8 %41 to i64
  %57 = getelementptr inbounds [5 x [16 x [4 x %struct.vlc_t]]], ptr @x264_coeff_token, i64 0, i64 %53, i64 %55, i64 %56
  %58 = getelementptr inbounds [5 x [16 x [4 x %struct.vlc_t]]], ptr @x264_coeff_token, i64 0, i64 %53, i64 %55, i64 %56, i32 1
  %59 = load i8, ptr %58, align 1, !tbaa !72
  %60 = zext i8 %59 to i32
  %61 = load i8, ptr %57, align 2, !tbaa !74
  %62 = zext i8 %61 to i32
  call fastcc void @bs_write(ptr noundef nonnull %6, i32 noundef %60, i32 noundef %62) #10
  %63 = icmp sgt i32 %13, 10
  %64 = icmp ne i32 %38, 0
  %65 = and i1 %63, %64
  %66 = zext i1 %65 to i32
  call fastcc void @bs_write(ptr noundef nonnull %6, i32 noundef %42, i32 noundef %52) #10
  %67 = icmp sgt i32 %13, %42
  br i1 %67, label %68, label %127

68:                                               ; preds = %4
  %69 = getelementptr inbounds %struct.x264_run_level_t, ptr %5, i64 0, i32 1, i64 %56
  %70 = load i16, ptr %69, align 2, !tbaa !80
  %71 = sext i16 %70 to i32
  %72 = add nsw i32 %71, 64
  %73 = ashr i32 %71, 31
  %74 = or i32 %73, 1
  %75 = select i1 %64, i32 %74, i32 0
  %76 = sub nsw i32 %71, %75
  %77 = icmp ult i32 %72, 128
  br i1 %77, label %78, label %92

78:                                               ; preds = %68
  %79 = add nsw i32 %76, 64
  %80 = zext i1 %65 to i64
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %80, i64 %81
  %83 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %80, i64 %81, i32 1
  %84 = load i8, ptr %83, align 2, !tbaa !86
  %85 = zext i8 %84 to i32
  %86 = load i16, ptr %82, align 4, !tbaa !88
  %87 = zext i16 %86 to i32
  call fastcc void @bs_write(ptr noundef nonnull %6, i32 noundef %85, i32 noundef %87) #10
  %88 = zext nneg i32 %72 to i64
  %89 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %80, i64 %88, i32 2
  %90 = load i8, ptr %89, align 1, !tbaa !89
  %91 = zext i8 %90 to i32
  br label %94

92:                                               ; preds = %68
  %93 = call fastcc i32 @block_residual_write_cavlc_escape(ptr noundef nonnull %0, i32 noundef %66, i32 noundef %76) #10
  br label %94

94:                                               ; preds = %92, %78
  %95 = phi i32 [ %91, %78 ], [ %93, %92 ]
  %96 = add nuw nsw i32 %42, 1
  %97 = icmp ult i32 %96, %13
  br i1 %97, label %98, label %127

98:                                               ; preds = %94
  %99 = add nuw nsw i64 %56, 1
  %100 = zext nneg i32 %13 to i64
  br label %101

101:                                              ; preds = %98, %123
  %102 = phi i64 [ %99, %98 ], [ %125, %123 ]
  %103 = phi i32 [ %95, %98 ], [ %124, %123 ]
  %104 = getelementptr inbounds %struct.x264_run_level_t, ptr %5, i64 0, i32 1, i64 %102
  %105 = load i16, ptr %104, align 2, !tbaa !80
  %106 = sext i16 %105 to i32
  %107 = add nsw i32 %106, 64
  %108 = icmp ult i32 %107, 128
  br i1 %108, label %109, label %121

109:                                              ; preds = %101
  %110 = sext i32 %103 to i64
  %111 = zext nneg i32 %107 to i64
  %112 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %110, i64 %111
  %113 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %110, i64 %111, i32 1
  %114 = load i8, ptr %113, align 2, !tbaa !86
  %115 = zext i8 %114 to i32
  %116 = load i16, ptr %112, align 4, !tbaa !88
  %117 = zext i16 %116 to i32
  call fastcc void @bs_write(ptr noundef nonnull %6, i32 noundef %115, i32 noundef %117) #10
  %118 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %110, i64 %111, i32 2
  %119 = load i8, ptr %118, align 1, !tbaa !89
  %120 = zext i8 %119 to i32
  br label %123

121:                                              ; preds = %101
  %122 = call fastcc i32 @block_residual_write_cavlc_escape(ptr noundef %0, i32 noundef %103, i32 noundef %106) #10
  br label %123

123:                                              ; preds = %109, %121
  %124 = phi i32 [ %120, %109 ], [ %122, %121 ]
  %125 = add nuw nsw i64 %102, 1
  %126 = icmp eq i64 %125, %100
  br i1 %126, label %127, label %101, !llvm.loop !90

127:                                              ; preds = %123, %94, %4
  %128 = and i32 %13, 255
  %129 = getelementptr inbounds [5 x i8], ptr @block_residual_write_cavlc.count_cat, i64 0, i64 %10
  %130 = load i8, ptr %129, align 1, !tbaa !36
  %131 = zext i8 %130 to i32
  %132 = icmp ult i32 %128, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %127
  %134 = icmp eq i32 %1, 3
  %135 = sext i32 %16 to i64
  %136 = getelementptr inbounds [3 x [4 x %struct.vlc_t]], ptr @x264_total_zeros_dc, i64 0, i64 %55, i64 %135
  %137 = getelementptr inbounds [3 x [4 x %struct.vlc_t]], ptr @x264_total_zeros_dc, i64 0, i64 %55, i64 %135, i32 1
  %138 = getelementptr inbounds [15 x [16 x %struct.vlc_t]], ptr @x264_total_zeros, i64 0, i64 %55, i64 %135
  %139 = getelementptr inbounds [15 x [16 x %struct.vlc_t]], ptr @x264_total_zeros, i64 0, i64 %55, i64 %135, i32 1
  %140 = select i1 %134, ptr %137, ptr %139
  %141 = select i1 %134, ptr %136, ptr %138
  %142 = load i8, ptr %140, align 1, !tbaa !72
  %143 = zext i8 %142 to i32
  %144 = load i8, ptr %141, align 2, !tbaa !74
  %145 = zext i8 %144 to i32
  call fastcc void @bs_write(ptr noundef nonnull %6, i32 noundef %143, i32 noundef %145) #10
  br label %146

146:                                              ; preds = %133, %127
  %147 = icmp sgt i32 %13, 1
  %148 = icmp ult i32 %15, 2147483647
  %149 = select i1 %147, i1 %148, i1 false
  br i1 %149, label %151, label %150

150:                                              ; preds = %151, %146
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %5) #11
  ret i32 %13

151:                                              ; preds = %146, %151
  %152 = phi i64 [ %169, %151 ], [ 0, %146 ]
  %153 = phi i32 [ %168, %151 ], [ %16, %146 ]
  %154 = call i32 @llvm.smin.i32(i32 %153, i32 7)
  %155 = add nsw i32 %154, -1
  %156 = zext nneg i32 %155 to i64
  %157 = getelementptr inbounds %struct.x264_run_level_t, ptr %5, i64 0, i32 2, i64 %152
  %158 = load i8, ptr %157, align 1, !tbaa !36
  %159 = zext i8 %158 to i64
  %160 = getelementptr inbounds [7 x [16 x %struct.vlc_t]], ptr @x264_run_before, i64 0, i64 %156, i64 %159
  %161 = getelementptr inbounds [7 x [16 x %struct.vlc_t]], ptr @x264_run_before, i64 0, i64 %156, i64 %159, i32 1
  %162 = load i8, ptr %161, align 1, !tbaa !72
  %163 = zext i8 %162 to i32
  %164 = load i8, ptr %160, align 2, !tbaa !74
  %165 = zext i8 %164 to i32
  call fastcc void @bs_write(ptr noundef nonnull %6, i32 noundef %163, i32 noundef %165) #10
  %166 = load i8, ptr %157, align 1, !tbaa !36
  %167 = zext i8 %166 to i32
  %168 = sub nsw i32 %153, %167
  %169 = add nuw nsw i64 %152, 1
  %170 = icmp slt i64 %169, %55
  %171 = icmp sgt i32 %168, 0
  %172 = select i1 %170, i1 %171, i1 false
  br i1 %172, label %151, label %150, !llvm.loop !91
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_macroblock_luma_write_cavlc(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  %3 = load i32, ptr %2, align 4, !tbaa !54
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 72, i32 5
  br label %8

8:                                                ; preds = %5, %24
  %9 = phi i64 [ 0, %5 ], [ %25, %24 ]
  %10 = load i32, ptr %6, align 8, !tbaa !61
  %11 = trunc i64 %9 to i32
  %12 = shl nuw nsw i32 1, %11
  %13 = and i32 %10, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %7, align 8, !tbaa !92
  %17 = shl nuw nsw i64 %9, 2
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %17
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 2, i64 %9
  %20 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %17
  %21 = load i32, ptr %20, align 16, !tbaa !57
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %22
  tail call void %16(ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %23) #12
  br label %24

24:                                               ; preds = %8, %15
  %25 = add nuw nsw i64 %9, 1
  %26 = icmp eq i64 %25, 4
  br i1 %26, label %27, label %8, !llvm.loop !93

27:                                               ; preds = %24, %1
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5
  br label %31

30:                                               ; preds = %70
  ret void

31:                                               ; preds = %27, %70
  %32 = phi i64 [ 0, %27 ], [ %71, %70 ]
  %33 = load i32, ptr %28, align 8, !tbaa !61
  %34 = trunc i64 %32 to i32
  %35 = shl nuw nsw i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %70, label %38

38:                                               ; preds = %31
  %39 = shl nuw nsw i64 %32, 2
  br label %40

40:                                               ; preds = %38, %67
  %41 = phi i64 [ 0, %38 ], [ %68, %67 ]
  %42 = add nuw nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  %44 = tail call fastcc i32 @x264_mb_predict_non_zero_code(ptr noundef nonnull %0, i32 noundef %43) #10, !range !56
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds [17 x i8], ptr @ct_index, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !36
  %48 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %42
  %49 = load i32, ptr %48, align 4, !tbaa !57
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !36
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %40
  %55 = zext i8 %47 to i64
  %56 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %55
  %57 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %55, i32 1
  %58 = load i8, ptr %57, align 1, !tbaa !72
  %59 = zext i8 %58 to i32
  %60 = load i8, ptr %56, align 1, !tbaa !74
  %61 = zext i8 %60 to i32
  tail call fastcc void @bs_write(ptr noundef nonnull %29, i32 noundef %59, i32 noundef %61) #10
  br label %67

62:                                               ; preds = %40
  %63 = zext i8 %47 to i32
  %64 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 54, i32 3, i64 %42
  %65 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull %64, i32 noundef %63) #10
  %66 = trunc i32 %65 to i8
  store i8 %66, ptr %51, align 1, !tbaa !36
  br label %67

67:                                               ; preds = %62, %54
  %68 = add nuw nsw i64 %41, 1
  %69 = icmp eq i64 %68, 4
  br i1 %69, label %70, label %40, !llvm.loop !94

70:                                               ; preds = %67, %31
  %71 = add nuw nsw i64 %32, 1
  %72 = icmp eq i64 %71, 4
  br i1 %72, label %30, label %31, !llvm.loop !95
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @endian_fix32(i32 noundef %0) unnamed_addr #7 {
  %2 = tail call i32 @llvm.bswap.i32(i32 %0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_flush(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !79
  %4 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !78
  %6 = and i32 %5, 31
  %7 = zext nneg i32 %6 to i64
  %8 = shl i64 %3, %7
  %9 = trunc i64 %8 to i32
  %10 = tail call fastcc i32 @endian_fix32(i32 noundef %9) #10
  %11 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  store i32 %10, ptr %12, align 4, !tbaa !36
  %13 = load i32, ptr %4, align 8, !tbaa !78
  %14 = sdiv i32 %13, -8
  %15 = load ptr, ptr %11, align 8, !tbaa !45
  %16 = sext i32 %14 to i64
  %17 = getelementptr i8, ptr %15, i64 %16
  %18 = getelementptr i8, ptr %17, i64 8
  store ptr %18, ptr %11, align 8, !tbaa !45
  store i32 64, ptr %4, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @endian_fix(i64 noundef %0) unnamed_addr #7 {
  %2 = tail call fastcc i64 @endian_fix64(i64 noundef %0) #10
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @endian_fix64(i64 noundef %0) unnamed_addr #7 {
  %2 = lshr i64 %0, 32
  %3 = trunc i64 %2 to i32
  %4 = tail call fastcc i32 @endian_fix32(i32 noundef %3) #10
  %5 = zext i32 %4 to i64
  %6 = trunc i64 %0 to i32
  %7 = tail call fastcc i32 @endian_fix32(i32 noundef %6) #10
  %8 = zext i32 %7 to i64
  %9 = shl nuw i64 %8, 32
  %10 = or disjoint i64 %9, %5
  ret i64 %10
}

; Function Attrs: optsize
declare void @x264_mb_predict_mv(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_write_se(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = shl nsw i32 %1, 1
  %4 = sub nsw i32 1, %3
  %5 = icmp sgt i32 %1, 0
  %6 = select i1 %5, i32 %3, i32 %4
  %7 = icmp sgt i32 %6, 255
  %8 = lshr i32 %6, 8
  %9 = select i1 %7, i32 16, i32 0
  %10 = select i1 %7, i32 %8, i32 %6
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !36
  %14 = zext i8 %13 to i32
  %15 = add nuw nsw i32 %9, %14
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef %15, i32 noundef %6) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @block_residual_write_cavlc_escape(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5
  %5 = ashr i32 %2, 15
  %6 = xor i32 %5, %2
  %7 = sub nsw i32 %6, %5
  %8 = shl nsw i32 %7, 1
  %9 = sub nsw i32 %8, %5
  %10 = add nsw i32 %9, -2
  %11 = ashr i32 %10, %1
  %12 = icmp slt i32 %11, 15
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = add i32 %1, 1
  %15 = add i32 %14, %11
  %16 = shl nuw i32 1, %1
  %17 = add nsw i32 %16, -1
  %18 = and i32 %10, %17
  %19 = add nsw i32 %18, %16
  tail call fastcc void @bs_write(ptr noundef nonnull %4, i32 noundef %15, i32 noundef %19) #10
  br label %55

20:                                               ; preds = %3
  %21 = shl i32 -15, %1
  %22 = add i32 %10, %21
  %23 = icmp eq i32 %1, 0
  %24 = add nsw i32 %22, -15
  %25 = select i1 %23, i32 %24, i32 %22
  %26 = icmp sgt i32 %25, 4095
  br i1 %26, label %27, label %47

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %29 = load ptr, ptr %28, align 16, !tbaa !96
  %30 = getelementptr inbounds %struct.x264_sps_t, ptr %29, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !97
  %32 = icmp sgt i32 %31, 99
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = icmp eq i32 %25, 4096
  br i1 %34, label %47, label %35

35:                                               ; preds = %33, %35
  %36 = phi i32 [ %42, %35 ], [ 4096, %33 ]
  %37 = phi i32 [ %39, %35 ], [ %25, %33 ]
  %38 = phi i32 [ %40, %35 ], [ 15, %33 ]
  %39 = sub nsw i32 %37, %36
  %40 = add nuw nsw i32 %38, 1
  %41 = add nsw i32 %38, -2
  %42 = shl nuw i32 1, %41
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %35, label %47, !llvm.loop !102

44:                                               ; preds = %27
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %25) #12
  %45 = and i32 %25, 1
  %46 = or disjoint i32 %45, 4094
  br label %47

47:                                               ; preds = %35, %33, %44, %20
  %48 = phi i32 [ 15, %44 ], [ 15, %20 ], [ 15, %33 ], [ %40, %35 ]
  %49 = phi i32 [ %46, %44 ], [ %25, %20 ], [ 4096, %33 ], [ %39, %35 ]
  %50 = add nuw nsw i32 %48, 1
  tail call fastcc void @bs_write(ptr noundef nonnull %4, i32 noundef %50, i32 noundef 1) #10
  %51 = add nsw i32 %48, -3
  %52 = shl nsw i32 -1, %51
  %53 = xor i32 %52, -1
  %54 = and i32 %49, %53
  tail call fastcc void @bs_write(ptr noundef nonnull %4, i32 noundef %51, i32 noundef %54) #10
  br label %55

55:                                               ; preds = %47, %13
  %56 = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [7 x i16], ptr @block_residual_write_cavlc_escape.next_suffix, i64 0, i64 %57
  %59 = load i16, ptr %58, align 2, !tbaa !80
  %60 = zext i16 %59 to i32
  %61 = icmp sgt i32 %7, %60
  %62 = zext i1 %61 to i32
  %63 = add nsw i32 %56, %62
  ret i32 %63
}

; Function Attrs: optsize
declare void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 17384}
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
!35 = !{!6, !8, i64 7248}
!36 = !{!9, !9, i64 0}
!37 = !{!6, !8, i64 7268}
!38 = !{!6, !8, i64 16388}
!39 = !{!6, !12, i64 16616}
!40 = !{!6, !8, i64 16392}
!41 = !{!6, !8, i64 16372}
!42 = !{!6, !8, i64 16436}
!43 = !{!17, !12, i64 0}
!44 = !{!6, !8, i64 26712}
!45 = !{!17, !12, i64 8}
!46 = !{!12, !12, i64 0}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!17, !12, i64 16}
!50 = distinct !{!50, !48}
!51 = !{!6, !12, i64 3328}
!52 = !{!53, !8, i64 60}
!53 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !9, i64 72}
!54 = !{!6, !8, i64 17396}
!55 = !{!6, !8, i64 17412}
!56 = !{i32 0, i32 128}
!57 = !{!8, !8, i64 0}
!58 = distinct !{!58, !48}
!59 = !{!6, !8, i64 17408}
!60 = !{!6, !8, i64 17404}
!61 = !{!6, !8, i64 17400}
!62 = !{!6, !8, i64 17388}
!63 = !{!6, !8, i64 388}
!64 = distinct !{!64, !48}
!65 = distinct !{!65, !48}
!66 = distinct !{!66, !48}
!67 = distinct !{!67, !48}
!68 = distinct !{!68, !48}
!69 = distinct !{!69, !48}
!70 = distinct !{!70, !48}
!71 = !{i32 0, i32 256}
!72 = !{!73, !9, i64 1}
!73 = !{!"", !9, i64 0, !9, i64 1}
!74 = !{!73, !9, i64 0}
!75 = distinct !{!75, !48}
!76 = distinct !{!76, !48}
!77 = !{!6, !8, i64 26716}
!78 = !{!17, !8, i64 32}
!79 = !{!17, !18, i64 24}
!80 = !{!81, !81, i64 0}
!81 = !{!"short", !9, i64 0}
!82 = !{!6, !8, i64 25792}
!83 = !{!6, !8, i64 25800}
!84 = !{!85, !8, i64 0}
!85 = !{!"", !8, i64 0, !9, i64 4, !9, i64 36}
!86 = !{!87, !9, i64 2}
!87 = !{!"", !81, i64 0, !9, i64 2, !9, i64 3}
!88 = !{!87, !81, i64 0}
!89 = !{!87, !9, i64 3}
!90 = distinct !{!90, !48}
!91 = distinct !{!91, !48}
!92 = !{!6, !12, i64 33072}
!93 = distinct !{!93, !48}
!94 = distinct !{!94, !48}
!95 = distinct !{!95, !48}
!96 = !{!6, !12, i64 3200}
!97 = !{!98, !8, i64 4}
!98 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !9, i64 52, !8, i64 1076, !8, i64 1080, !8, i64 1084, !8, i64 1088, !8, i64 1092, !8, i64 1096, !8, i64 1100, !8, i64 1104, !99, i64 1108, !8, i64 1124, !100, i64 1128, !8, i64 1296}
!99 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!100 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !101, i64 84, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164}
!101 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44}
!102 = distinct !{!102, !48}
