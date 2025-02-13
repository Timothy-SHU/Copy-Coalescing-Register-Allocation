; ModuleID = 'x264_src/common/deblock.c'
source_filename = "x264_src/common/deblock.c"
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

@i_alpha_table = internal unnamed_addr constant [76 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\05\06\07\08\09\0A\0C\0D\0F\11\14\16\19\1C $(-28?GPZeq\7F\90\A2\B6\CB\E2\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@i_beta_table = internal unnamed_addr constant [76 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\03\03\03\03\04\04\04\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D\0E\0E\0F\0F\10\10\11\11\12\12\12\12\12\12\12\12\12\12\12\12\12\12", align 16
@i_tc0_table = internal unnamed_addr constant [76 x [4 x i8]] [[4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\FF\00\01\01", [4 x i8] c"\FF\00\01\01", [4 x i8] c"\FF\01\01\01", [4 x i8] c"\FF\01\01\01", [4 x i8] c"\FF\01\01\01", [4 x i8] c"\FF\01\01\01", [4 x i8] c"\FF\01\01\02", [4 x i8] c"\FF\01\01\02", [4 x i8] c"\FF\01\01\02", [4 x i8] c"\FF\01\01\02", [4 x i8] c"\FF\01\02\03", [4 x i8] c"\FF\01\02\03", [4 x i8] c"\FF\02\02\03", [4 x i8] c"\FF\02\02\04", [4 x i8] c"\FF\02\03\04", [4 x i8] c"\FF\02\03\04", [4 x i8] c"\FF\03\03\05", [4 x i8] c"\FF\03\04\06", [4 x i8] c"\FF\03\04\06", [4 x i8] c"\FF\04\05\07", [4 x i8] c"\FF\04\05\08", [4 x i8] c"\FF\04\06\09", [4 x i8] c"\FF\05\07\0A", [4 x i8] c"\FF\06\08\0B", [4 x i8] c"\FF\06\08\0D", [4 x i8] c"\FF\07\0A\0E", [4 x i8] c"\FF\08\0B\10", [4 x i8] c"\FF\09\0C\12", [4 x i8] c"\FF\0A\0D\14", [4 x i8] c"\FF\0B\0F\17", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19"], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_frame_deblock_row(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %4 = load i32, ptr %3, align 4, !tbaa !35
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 32
  %6 = load i32, ptr %5, align 16, !tbaa !65
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 33
  %8 = load i32, ptr %7, align 4, !tbaa !66
  %9 = tail call i32 @llvm.smin.i32(i32 %6, i32 %8)
  %10 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !67
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 0)
  %13 = add i32 %9, %12
  %14 = sub i32 15, %13
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %16 = load ptr, ptr %15, align 16, !tbaa !68
  %17 = getelementptr inbounds %struct.x264_frame, ptr %16, i64 0, i32 24
  %18 = load i32, ptr %17, align 8, !tbaa !69
  %19 = shl i32 %18, %4
  %20 = getelementptr inbounds %struct.x264_frame, ptr %16, i64 0, i32 24, i64 1
  %21 = load i32, ptr %20, align 4, !tbaa !69
  %22 = shl i32 %21, %4
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 61
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  %26 = load ptr, ptr %25, align 16, !tbaa !71
  %27 = getelementptr inbounds %struct.x264_pps_t, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !72
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.x264_pps_t, ptr %26, i64 0, i32 15
  %32 = load i32, ptr %31, align 4, !tbaa !74
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call fastcc void @munge_cavlc_nnz(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %24, ptr noundef nonnull @munge_cavlc_nnz_row) #10
  br label %35

35:                                               ; preds = %34, %30, %2
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %37 = load ptr, ptr %36, align 16, !tbaa !75
  %38 = getelementptr inbounds %struct.x264_sps_t, ptr %37, i64 0, i32 16
  %39 = load i32, ptr %38, align 4, !tbaa !76
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %76

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 50
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 38
  %45 = shl i32 %18, 4
  %46 = shl i32 %21, 3
  %47 = icmp eq i32 %4, 0
  %48 = mul nsw i32 %18, 15
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 0, %49
  %51 = mul nsw i32 %21, 7
  %52 = sext i32 %51 to i64
  %53 = sub nsw i64 0, %52
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 40
  %55 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 39
  %56 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 24
  %57 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 34
  %58 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 74
  %59 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 74, i32 1
  %60 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 74, i32 2
  %61 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 74, i32 3
  %62 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 35
  %63 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 74, i32 0, i64 1
  %64 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 74, i32 1, i64 1
  %65 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 74, i32 2, i64 1
  %66 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 74, i32 3, i64 1
  %67 = shl nsw i32 %19, 2
  %68 = sext i32 %67 to i64
  %69 = shl nsw i32 %19, 3
  %70 = sext i32 %69 to i64
  %71 = shl nsw i32 %22, 2
  %72 = sext i32 %71 to i64
  %73 = mul nsw i32 %19, 12
  %74 = sext i32 %73 to i64
  %75 = xor i32 %4, -1
  br label %82

76:                                               ; preds = %256, %35
  %77 = phi i32 [ %1, %35 ], [ %260, %256 ]
  %78 = load ptr, ptr %25, align 16, !tbaa !71
  %79 = getelementptr inbounds %struct.x264_pps_t, ptr %78, i64 0, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !72
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %265, label %270

82:                                               ; preds = %41, %256
  %83 = phi i32 [ %1, %41 ], [ %260, %256 ]
  %84 = phi i32 [ 0, %41 ], [ %259, %256 ]
  %85 = load ptr, ptr %15, align 16, !tbaa !68
  tail call void @x264_prefetch_fenc(ptr noundef nonnull %0, ptr noundef %85, i32 noundef %84, i32 noundef %83) #11
  tail call void @x264_macroblock_cache_load_neighbours_deblock(ptr noundef nonnull %0, i32 noundef %84, i32 noundef %83) #11
  %86 = load i32, ptr %42, align 8, !tbaa !81
  %87 = load ptr, ptr %43, align 8, !tbaa !82
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, ptr %87, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !83
  %91 = load ptr, ptr %44, align 8, !tbaa !84
  %92 = getelementptr inbounds i8, ptr %91, i64 %88
  %93 = load i8, ptr %92, align 1, !tbaa !83
  %94 = icmp ult i8 %93, 4
  %95 = and i32 %83, %4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 63, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !85
  %99 = zext nneg i32 %84 to i64
  %100 = getelementptr inbounds [2 x [4 x [4 x i8]]], ptr %98, i64 %99
  %101 = load ptr, ptr %15, align 16, !tbaa !68
  %102 = getelementptr inbounds %struct.x264_frame, ptr %101, i64 0, i32 30
  %103 = load ptr, ptr %102, align 8, !tbaa !85
  %104 = mul i32 %45, %83
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, ptr %103, i64 %105
  %107 = shl nsw i32 %84, 4
  %108 = zext nneg i32 %107 to i64
  %109 = getelementptr inbounds i8, ptr %106, i64 %108
  %110 = getelementptr inbounds %struct.x264_frame, ptr %101, i64 0, i32 30, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !85
  %112 = mul i32 %46, %83
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, ptr %111, i64 %113
  %115 = shl nsw i32 %84, 3
  %116 = zext nneg i32 %115 to i64
  %117 = getelementptr inbounds i8, ptr %114, i64 %116
  %118 = getelementptr inbounds %struct.x264_frame, ptr %101, i64 0, i32 30, i64 2
  %119 = load ptr, ptr %118, align 8, !tbaa !85
  %120 = getelementptr inbounds i8, ptr %119, i64 %113
  %121 = getelementptr inbounds i8, ptr %120, i64 %116
  %122 = and i32 %83, 1
  %123 = icmp eq i32 %122, 0
  %124 = or i1 %47, %123
  %125 = select i1 %124, i64 0, i64 %53
  %126 = getelementptr inbounds i8, ptr %121, i64 %125
  %127 = getelementptr inbounds i8, ptr %117, i64 %125
  %128 = select i1 %124, i64 0, i64 %50
  %129 = getelementptr inbounds i8, ptr %109, i64 %128
  %130 = load ptr, ptr %54, align 8, !tbaa !86
  %131 = getelementptr inbounds i8, ptr %130, i64 %88
  %132 = load i8, ptr %131, align 1, !tbaa !83
  %133 = sext i8 %132 to i32
  %134 = load ptr, ptr %55, align 16, !tbaa !87
  %135 = sext i8 %132 to i64
  %136 = getelementptr inbounds i8, ptr %134, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !83
  %138 = zext i8 %137 to i32
  %139 = icmp eq i8 %93, 6
  %140 = icmp sge i32 %14, %133
  %141 = or i1 %139, %140
  %142 = load i32, ptr %56, align 8, !tbaa !88
  %143 = and i32 %142, 1
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %171, label %145

145:                                              ; preds = %82
  %146 = load i32, ptr %57, align 8, !tbaa !89
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, ptr %130, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !83
  %150 = sext i8 %149 to i32
  %151 = add nsw i32 %133, 1
  %152 = add nsw i32 %151, %150
  %153 = ashr i32 %152, 1
  %154 = sext i8 %149 to i64
  %155 = getelementptr inbounds i8, ptr %134, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !83
  %157 = zext i8 %156 to i32
  %158 = add nuw nsw i32 %138, 1
  %159 = add nuw nsw i32 %158, %157
  %160 = lshr i32 %159, 1
  %161 = getelementptr inbounds i8, ptr %91, i64 %147
  %162 = load i8, ptr %161, align 1, !tbaa !83
  %163 = icmp ult i8 %162, 4
  %164 = or i1 %94, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %145
  %166 = load ptr, ptr %60, align 8, !tbaa !85
  tail call fastcc void @deblock_edge_intra(ptr noundef nonnull %0, ptr noundef %129, ptr noundef null, i32 noundef %19, i32 noundef %153, i32 noundef 0, ptr noundef %166) #10
  %167 = load ptr, ptr %61, align 8, !tbaa !85
  tail call fastcc void @deblock_edge_intra(ptr noundef nonnull %0, ptr noundef %127, ptr noundef %126, i32 noundef %22, i32 noundef %160, i32 noundef 1, ptr noundef %167) #10
  br label %171

168:                                              ; preds = %145
  %169 = load ptr, ptr %58, align 8, !tbaa !85
  tail call fastcc void @deblock_edge(ptr noundef nonnull %0, ptr noundef %129, ptr noundef null, i32 noundef %19, ptr noundef %100, i32 noundef %153, i32 noundef 0, ptr noundef %169) #10
  %170 = load ptr, ptr %59, align 8, !tbaa !85
  tail call fastcc void @deblock_edge(ptr noundef nonnull %0, ptr noundef %127, ptr noundef %126, i32 noundef %22, ptr noundef %100, i32 noundef %160, i32 noundef 1, ptr noundef %170) #10
  br label %171

171:                                              ; preds = %165, %168, %82
  br i1 %141, label %193, label %172

172:                                              ; preds = %171
  %173 = icmp eq i8 %90, 0
  %174 = load ptr, ptr %58, align 8, !tbaa !85
  br i1 %173, label %175, label %187

175:                                              ; preds = %172
  %176 = getelementptr inbounds i8, ptr %129, i64 4
  %177 = getelementptr inbounds [4 x [4 x i8]], ptr %100, i64 0, i64 1
  tail call fastcc void @deblock_edge(ptr noundef nonnull %0, ptr noundef nonnull %176, ptr noundef null, i32 noundef %19, ptr noundef nonnull %177, i32 noundef %133, i32 noundef 0, ptr noundef %174) #10
  %178 = getelementptr inbounds i8, ptr %129, i64 8
  %179 = getelementptr inbounds [4 x [4 x i8]], ptr %100, i64 0, i64 2
  %180 = load ptr, ptr %58, align 8, !tbaa !85
  tail call fastcc void @deblock_edge(ptr noundef nonnull %0, ptr noundef nonnull %178, ptr noundef null, i32 noundef %19, ptr noundef nonnull %179, i32 noundef %133, i32 noundef 0, ptr noundef %180) #10
  %181 = getelementptr inbounds i8, ptr %127, i64 4
  %182 = getelementptr inbounds i8, ptr %126, i64 4
  %183 = load ptr, ptr %59, align 8, !tbaa !85
  tail call fastcc void @deblock_edge(ptr noundef nonnull %0, ptr noundef nonnull %181, ptr noundef nonnull %182, i32 noundef %22, ptr noundef nonnull %179, i32 noundef %138, i32 noundef 1, ptr noundef %183) #10
  %184 = getelementptr inbounds i8, ptr %129, i64 12
  %185 = getelementptr inbounds [4 x [4 x i8]], ptr %100, i64 0, i64 3
  %186 = load ptr, ptr %58, align 8, !tbaa !85
  tail call fastcc void @deblock_edge(ptr noundef nonnull %0, ptr noundef nonnull %184, ptr noundef null, i32 noundef %19, ptr noundef nonnull %185, i32 noundef %133, i32 noundef 0, ptr noundef %186) #10
  br label %193

187:                                              ; preds = %172
  %188 = getelementptr inbounds i8, ptr %129, i64 8
  %189 = getelementptr inbounds [4 x [4 x i8]], ptr %100, i64 0, i64 2
  tail call fastcc void @deblock_edge(ptr noundef nonnull %0, ptr noundef nonnull %188, ptr noundef null, i32 noundef %19, ptr noundef nonnull %189, i32 noundef %133, i32 noundef 0, ptr noundef %174) #10
  %190 = getelementptr inbounds i8, ptr %127, i64 4
  %191 = getelementptr inbounds i8, ptr %126, i64 4
  %192 = load ptr, ptr %59, align 8, !tbaa !85
  tail call fastcc void @deblock_edge(ptr noundef nonnull %0, ptr noundef nonnull %190, ptr noundef nonnull %191, i32 noundef %22, ptr noundef nonnull %189, i32 noundef %138, i32 noundef 1, ptr noundef %192) #10
  br label %193

193:                                              ; preds = %187, %175, %171
  %194 = load i32, ptr %56, align 8, !tbaa !88
  %195 = and i32 %194, 2
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %234, label %197

197:                                              ; preds = %193
  %198 = load ptr, ptr %54, align 8, !tbaa !86
  %199 = load i32, ptr %62, align 4, !tbaa !90
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, ptr %198, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !83
  %203 = sext i8 %202 to i32
  %204 = add nsw i32 %133, 1
  %205 = add nsw i32 %204, %203
  %206 = ashr i32 %205, 1
  %207 = load ptr, ptr %55, align 16, !tbaa !87
  %208 = getelementptr inbounds i8, ptr %207, i64 %135
  %209 = load i8, ptr %208, align 1, !tbaa !83
  %210 = zext i8 %209 to i32
  %211 = sext i8 %202 to i64
  %212 = getelementptr inbounds i8, ptr %207, i64 %211
  %213 = load i8, ptr %212, align 1, !tbaa !83
  %214 = zext i8 %213 to i32
  %215 = add nuw nsw i32 %210, 1
  %216 = add nuw nsw i32 %215, %214
  %217 = lshr i32 %216, 1
  %218 = load ptr, ptr %44, align 8, !tbaa !84
  %219 = getelementptr inbounds i8, ptr %218, i64 %200
  %220 = load i8, ptr %219, align 1, !tbaa !83
  %221 = icmp ult i8 %220, 4
  %222 = or i1 %94, %221
  %223 = and i1 %47, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %197
  %225 = load ptr, ptr %65, align 8, !tbaa !85
  tail call fastcc void @deblock_edge_intra(ptr noundef nonnull %0, ptr noundef %129, ptr noundef null, i32 noundef %19, i32 noundef %206, i32 noundef 0, ptr noundef %225) #10
  %226 = load ptr, ptr %66, align 8, !tbaa !85
  tail call fastcc void @deblock_edge_intra(ptr noundef nonnull %0, ptr noundef %127, ptr noundef %126, i32 noundef %22, i32 noundef %217, i32 noundef 1, ptr noundef %226) #10
  br label %234

227:                                              ; preds = %197
  br i1 %221, label %228, label %230

228:                                              ; preds = %227
  %229 = getelementptr inbounds [4 x [4 x i8]], ptr %100, i64 1
  store i32 50529027, ptr %229, align 1
  br label %230

230:                                              ; preds = %227, %228
  %231 = getelementptr inbounds [4 x [4 x i8]], ptr %100, i64 1
  %232 = load ptr, ptr %63, align 8, !tbaa !85
  tail call fastcc void @deblock_edge(ptr noundef nonnull %0, ptr noundef %129, ptr noundef null, i32 noundef %19, ptr noundef nonnull %231, i32 noundef %206, i32 noundef 0, ptr noundef %232) #10
  %233 = load ptr, ptr %64, align 8, !tbaa !85
  tail call fastcc void @deblock_edge(ptr noundef nonnull %0, ptr noundef %127, ptr noundef %126, i32 noundef %22, ptr noundef nonnull %231, i32 noundef %217, i32 noundef 1, ptr noundef %233) #10
  br label %234

234:                                              ; preds = %224, %230, %193
  br i1 %141, label %256, label %235

235:                                              ; preds = %234
  %236 = icmp eq i8 %90, 0
  %237 = load ptr, ptr %63, align 8, !tbaa !85
  br i1 %236, label %238, label %250

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, ptr %129, i64 %68
  %240 = getelementptr inbounds [4 x [4 x i8]], ptr %100, i64 1, i64 1
  tail call fastcc void @deblock_edge(ptr noundef nonnull %0, ptr noundef %239, ptr noundef null, i32 noundef %19, ptr noundef nonnull %240, i32 noundef %133, i32 noundef 0, ptr noundef %237) #10
  %241 = getelementptr inbounds i8, ptr %129, i64 %70
  %242 = getelementptr inbounds [4 x [4 x i8]], ptr %100, i64 1, i64 2
  %243 = load ptr, ptr %63, align 8, !tbaa !85
  tail call fastcc void @deblock_edge(ptr noundef nonnull %0, ptr noundef %241, ptr noundef null, i32 noundef %19, ptr noundef nonnull %242, i32 noundef %133, i32 noundef 0, ptr noundef %243) #10
  %244 = getelementptr inbounds i8, ptr %127, i64 %72
  %245 = getelementptr inbounds i8, ptr %126, i64 %72
  %246 = load ptr, ptr %64, align 8, !tbaa !85
  tail call fastcc void @deblock_edge(ptr noundef nonnull %0, ptr noundef %244, ptr noundef %245, i32 noundef %22, ptr noundef nonnull %242, i32 noundef %138, i32 noundef 1, ptr noundef %246) #10
  %247 = getelementptr inbounds i8, ptr %129, i64 %74
  %248 = getelementptr inbounds [4 x [4 x i8]], ptr %100, i64 1, i64 3
  %249 = load ptr, ptr %63, align 8, !tbaa !85
  tail call fastcc void @deblock_edge(ptr noundef nonnull %0, ptr noundef %247, ptr noundef null, i32 noundef %19, ptr noundef nonnull %248, i32 noundef %133, i32 noundef 0, ptr noundef %249) #10
  br label %256

250:                                              ; preds = %235
  %251 = getelementptr inbounds i8, ptr %129, i64 %70
  %252 = getelementptr inbounds [4 x [4 x i8]], ptr %100, i64 1, i64 2
  tail call fastcc void @deblock_edge(ptr noundef nonnull %0, ptr noundef %251, ptr noundef null, i32 noundef %19, ptr noundef nonnull %252, i32 noundef %133, i32 noundef 0, ptr noundef %237) #10
  %253 = getelementptr inbounds i8, ptr %127, i64 %72
  %254 = getelementptr inbounds i8, ptr %126, i64 %72
  %255 = load ptr, ptr %64, align 8, !tbaa !85
  tail call fastcc void @deblock_edge(ptr noundef nonnull %0, ptr noundef %253, ptr noundef %254, i32 noundef %22, ptr noundef nonnull %252, i32 noundef %138, i32 noundef 1, ptr noundef %255) #10
  br label %256

256:                                              ; preds = %250, %238, %234
  %257 = or i32 %83, %75
  %258 = and i32 %257, 1
  %259 = add nuw nsw i32 %258, %84
  %260 = xor i32 %83, %4
  %261 = load ptr, ptr %36, align 16, !tbaa !75
  %262 = getelementptr inbounds %struct.x264_sps_t, ptr %261, i64 0, i32 16
  %263 = load i32, ptr %262, align 4, !tbaa !76
  %264 = icmp slt i32 %259, %263
  br i1 %264, label %82, label %76, !llvm.loop !91

265:                                              ; preds = %76
  %266 = getelementptr inbounds %struct.x264_pps_t, ptr %78, i64 0, i32 15
  %267 = load i32, ptr %266, align 4, !tbaa !74
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %270, label %269

269:                                              ; preds = %265
  tail call fastcc void @munge_cavlc_nnz(ptr noundef nonnull %0, i32 noundef %77, ptr noundef %24, ptr noundef nonnull @restore_cavlc_nnz_row) #10
  br label %270

270:                                              ; preds = %269, %265, %76
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @munge_cavlc_nnz(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !93 {
  tail call void %3(ptr noundef %0, i32 noundef %1, ptr noundef %2) #11, !callees !94
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = add nsw i32 %1, -1
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 16, !tbaa !75
  %10 = getelementptr inbounds %struct.x264_sps_t, ptr %9, i64 0, i32 16
  %11 = load i32, ptr %10, align 4, !tbaa !76
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [16 x i8], ptr %2, i64 %12
  tail call void %3(ptr noundef %0, i32 noundef %7, ptr noundef %13) #11, !callees !94
  br label %14

14:                                               ; preds = %6, %4
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %16 = load i32, ptr %15, align 4, !tbaa !35
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %14
  %19 = add nsw i32 %1, 1
  %20 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %21 = load ptr, ptr %20, align 16, !tbaa !75
  %22 = getelementptr inbounds %struct.x264_sps_t, ptr %21, i64 0, i32 16
  %23 = load i32, ptr %22, align 4, !tbaa !76
  %24 = shl nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [16 x i8], ptr %2, i64 %25
  tail call void %3(ptr noundef nonnull %0, i32 noundef %19, ptr noundef %26) #11, !callees !94
  br i1 %5, label %27, label %35

27:                                               ; preds = %18
  %28 = add nsw i32 %1, -2
  %29 = load ptr, ptr %20, align 16, !tbaa !75
  %30 = getelementptr inbounds %struct.x264_sps_t, ptr %29, i64 0, i32 16
  %31 = load i32, ptr %30, align 4, !tbaa !76
  %32 = mul nsw i32 %31, 3
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [16 x i8], ptr %2, i64 %33
  tail call void %3(ptr noundef nonnull %0, i32 noundef %28, ptr noundef %34) #11, !callees !94
  br label %35

35:                                               ; preds = %18, %27, %14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @munge_cavlc_nnz_row(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 !PGOFuncName !95 {
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 43
  %5 = load ptr, ptr %4, align 16, !tbaa !96
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %7 = load ptr, ptr %6, align 16, !tbaa !75
  %8 = getelementptr inbounds %struct.x264_sps_t, ptr %7, i64 0, i32 16
  %9 = load i32, ptr %8, align 4, !tbaa !76
  %10 = mul nsw i32 %9, %1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [6 x i32], ptr %5, i64 %11
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 50
  %14 = load ptr, ptr %13, align 8, !tbaa !82
  %15 = getelementptr inbounds i8, ptr %14, i64 %11
  %16 = icmp sgt i32 %9, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %47, %3
  ret void

18:                                               ; preds = %3, %47
  %19 = phi i64 [ %48, %47 ], [ 0, %3 ]
  %20 = getelementptr inbounds [16 x i8], ptr %2, i64 %19
  %21 = getelementptr inbounds [6 x i32], ptr %12, i64 %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %20, ptr noundef nonnull align 4 dereferenceable(16) %21, i64 16, i1 false)
  %22 = getelementptr inbounds i8, ptr %15, i64 %19
  %23 = load i8, ptr %22, align 1, !tbaa !83
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %18
  %26 = load i32, ptr %21, align 4, !tbaa !69
  %27 = getelementptr inbounds [6 x i32], ptr %12, i64 %19, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !69
  %29 = or i32 %28, %26
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 0, i32 257
  %33 = icmp ult i32 %29, 65536
  %34 = select i1 %33, i32 0, i32 16842752
  %35 = or disjoint i32 %32, %34
  store i32 %35, ptr %27, align 4, !tbaa !69
  store i32 %35, ptr %21, align 4, !tbaa !69
  %36 = getelementptr inbounds [6 x i32], ptr %12, i64 %19, i64 2
  %37 = load i32, ptr %36, align 4, !tbaa !69
  %38 = getelementptr inbounds [6 x i32], ptr %12, i64 %19, i64 3
  %39 = load i32, ptr %38, align 4, !tbaa !69
  %40 = or i32 %39, %37
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 0, i32 257
  %44 = icmp ult i32 %40, 65536
  %45 = select i1 %44, i32 0, i32 16842752
  %46 = or disjoint i32 %43, %45
  store i32 %46, ptr %38, align 4, !tbaa !69
  store i32 %46, ptr %36, align 4, !tbaa !69
  br label %47

47:                                               ; preds = %18, %25
  %48 = add nuw nsw i64 %19, 1
  %49 = load ptr, ptr %6, align 16, !tbaa !75
  %50 = getelementptr inbounds %struct.x264_sps_t, ptr %49, i64 0, i32 16
  %51 = load i32, ptr %50, align 4, !tbaa !76
  %52 = sext i32 %51 to i64
  %53 = icmp slt i64 %48, %52
  br i1 %53, label %18, label %17, !llvm.loop !97
}

; Function Attrs: optsize
declare void @x264_prefetch_fenc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @x264_macroblock_cache_load_neighbours_deblock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @deblock_edge_intra(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6) unnamed_addr #0 !PGOFuncName !98 {
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 32
  %9 = load i32, ptr %8, align 16, !tbaa !65
  %10 = add i32 %4, 12
  %11 = add i32 %10, %9
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !83
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 33
  %17 = load i32, ptr %16, align 4, !tbaa !66
  %18 = add i32 %10, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !83
  %22 = zext i8 %21 to i32
  %23 = add nsw i64 %12, -28
  %24 = icmp ult i64 %23, 48
  %25 = add nsw i64 %19, -28
  %26 = icmp ult i64 %25, 48
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %31

28:                                               ; preds = %7
  tail call void %6(ptr noundef %1, i32 noundef %3, i32 noundef %15, i32 noundef %22) #11
  %29 = icmp eq i32 %5, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  tail call void %6(ptr noundef %2, i32 noundef %3, i32 noundef %15, i32 noundef %22) #11
  br label %31

31:                                               ; preds = %28, %30, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @deblock_edge(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef readonly %7) unnamed_addr #0 !PGOFuncName !99 {
  %9 = alloca [4 x i8], align 1
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 32
  %11 = load i32, ptr %10, align 16, !tbaa !65
  %12 = add i32 %5, 12
  %13 = add i32 %12, %11
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !83
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 33
  %19 = load i32, ptr %18, align 4, !tbaa !66
  %20 = add i32 %12, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !83
  %24 = zext i8 %23 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  %25 = load i32, ptr %4, align 4
  %26 = icmp ne i32 %25, 0
  %27 = add nsw i64 %14, -28
  %28 = icmp ult i64 %27, 48
  %29 = select i1 %26, i1 %28, i1 false
  %30 = add nsw i64 %21, -28
  %31 = icmp ult i64 %30, 48
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %62

33:                                               ; preds = %8
  %34 = lshr i32 %25, 24
  %35 = zext nneg i32 %34 to i64
  %36 = lshr i32 %25, 16
  %37 = lshr i32 %25, 8
  %38 = and i32 %25, 255
  %39 = zext nneg i32 %38 to i64
  %40 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %14, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !83
  %42 = trunc i32 %6 to i8
  %43 = add i8 %41, %42
  store i8 %43, ptr %9, align 1, !tbaa !83
  %44 = and i32 %37, 255
  %45 = zext nneg i32 %44 to i64
  %46 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %14, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !83
  %48 = add i8 %47, %42
  %49 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 1
  store i8 %48, ptr %49, align 1, !tbaa !83
  %50 = and i32 %36, 255
  %51 = zext nneg i32 %50 to i64
  %52 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %14, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !83
  %54 = add i8 %53, %42
  %55 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 2
  store i8 %54, ptr %55, align 1, !tbaa !83
  %56 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %14, i64 %35
  %57 = load i8, ptr %56, align 1, !tbaa !83
  %58 = add i8 %57, %42
  %59 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 3
  store i8 %58, ptr %59, align 1, !tbaa !83
  call void %7(ptr noundef %1, i32 noundef %3, i32 noundef %17, i32 noundef %24, ptr noundef nonnull %9) #11
  %60 = icmp eq i32 %6, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %33
  call void %7(ptr noundef %2, i32 noundef %3, i32 noundef %17, i32 noundef %24, ptr noundef nonnull %9) #11
  br label %62

62:                                               ; preds = %33, %61, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @restore_cavlc_nnz_row(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 !PGOFuncName !100 {
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 43
  %5 = load ptr, ptr %4, align 16, !tbaa !96
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %7 = load ptr, ptr %6, align 16, !tbaa !75
  %8 = getelementptr inbounds %struct.x264_sps_t, ptr %7, i64 0, i32 16
  %9 = load i32, ptr %8, align 4, !tbaa !76
  %10 = mul nsw i32 %9, %1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [24 x i8], ptr %5, i64 %11
  %13 = icmp sgt i32 %9, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %15, %3
  ret void

15:                                               ; preds = %3, %15
  %16 = phi i64 [ %19, %15 ], [ 0, %3 ]
  %17 = getelementptr inbounds [24 x i8], ptr %12, i64 %16
  %18 = getelementptr inbounds [16 x i8], ptr %2, i64 %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %17, ptr noundef nonnull align 1 dereferenceable(16) %18, i64 16, i1 false)
  %19 = add nuw nsw i64 %16, 1
  %20 = load ptr, ptr %6, align 16, !tbaa !75
  %21 = getelementptr inbounds %struct.x264_sps_t, ptr %20, i64 0, i32 16
  %22 = load i32, ptr %21, align 4, !tbaa !76
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 %19, %23
  br i1 %24, label %15, label %14, !llvm.loop !101
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @x264_deblock_init(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds [2 x ptr], ptr %1, i64 0, i64 1
  store ptr @deblock_v_luma_c, ptr %3, align 8, !tbaa !85
  store ptr @deblock_h_luma_c, ptr %1, align 8, !tbaa !85
  %4 = getelementptr inbounds %struct.x264_deblock_function_t, ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %struct.x264_deblock_function_t, ptr %1, i64 0, i32 1, i64 1
  store ptr @deblock_v_chroma_c, ptr %5, align 8, !tbaa !85
  store ptr @deblock_h_chroma_c, ptr %4, align 8, !tbaa !85
  %6 = getelementptr inbounds %struct.x264_deblock_function_t, ptr %1, i64 0, i32 2
  %7 = getelementptr inbounds %struct.x264_deblock_function_t, ptr %1, i64 0, i32 2, i64 1
  store ptr @deblock_v_luma_intra_c, ptr %7, align 8, !tbaa !85
  store ptr @deblock_h_luma_intra_c, ptr %6, align 8, !tbaa !85
  %8 = getelementptr inbounds %struct.x264_deblock_function_t, ptr %1, i64 0, i32 3
  %9 = getelementptr inbounds %struct.x264_deblock_function_t, ptr %1, i64 0, i32 3, i64 1
  store ptr @deblock_v_chroma_intra_c, ptr %9, align 8, !tbaa !85
  store ptr @deblock_h_chroma_intra_c, ptr %8, align 8, !tbaa !85
  %10 = getelementptr inbounds %struct.x264_deblock_function_t, ptr %1, i64 0, i32 4
  store ptr @deblock_strength_c, ptr %10, align 8, !tbaa !102
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_v_luma_c(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #2 !PGOFuncName !103 {
  tail call fastcc void @deblock_luma_c(ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_h_luma_c(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #2 !PGOFuncName !104 {
  tail call fastcc void @deblock_luma_c(ptr noundef %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_v_chroma_c(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #2 !PGOFuncName !105 {
  tail call fastcc void @deblock_chroma_c(ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_h_chroma_c(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #2 !PGOFuncName !106 {
  tail call fastcc void @deblock_chroma_c(ptr noundef %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_v_luma_intra_c(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 !PGOFuncName !107 {
  tail call fastcc void @deblock_luma_intra_c(ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef %2, i32 noundef %3) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_h_luma_intra_c(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 !PGOFuncName !108 {
  tail call fastcc void @deblock_luma_intra_c(ptr noundef %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %3) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_v_chroma_intra_c(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 !PGOFuncName !109 {
  tail call fastcc void @deblock_chroma_intra_c(ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef %2, i32 noundef %3) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_h_chroma_intra_c(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 !PGOFuncName !110 {
  tail call fastcc void @deblock_chroma_intra_c(ptr noundef %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %3) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @deblock_strength_c(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5) #6 !PGOFuncName !111 {
  %7 = icmp eq i32 %5, 0
  br label %9

8:                                                ; preds = %15
  ret void

9:                                                ; preds = %6, %15
  %10 = phi i1 [ true, %6 ], [ false, %15 ]
  %11 = phi i64 [ 0, %6 ], [ 1, %15 ]
  %12 = select i1 %10, i32 0, i32 3
  %13 = select i1 %10, i64 8, i64 1
  %14 = select i1 %10, i64 -1, i64 -8
  br label %16

15:                                               ; preds = %22
  br i1 %10, label %9, label %8, !llvm.loop !112

16:                                               ; preds = %9, %22
  %17 = phi i64 [ 0, %9 ], [ %23, %22 ]
  %18 = trunc i64 %17 to i32
  %19 = shl nuw nsw i32 %18, %12
  %20 = add nuw i32 %19, 12
  %21 = sext i32 %20 to i64
  br label %25

22:                                               ; preds = %90
  %23 = add nuw nsw i64 %17, 1
  %24 = icmp eq i64 %23, 4
  br i1 %24, label %15, label %16, !llvm.loop !113

25:                                               ; preds = %16, %90
  %26 = phi i64 [ 0, %16 ], [ %93, %90 ]
  %27 = phi i64 [ %21, %16 ], [ %94, %90 ]
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !83
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %90

31:                                               ; preds = %25
  %32 = add nsw i64 %27, %14
  %33 = getelementptr inbounds i8, ptr %0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !83
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %90

36:                                               ; preds = %31
  %37 = getelementptr inbounds [40 x i8], ptr %1, i64 0, i64 %27
  %38 = load i8, ptr %37, align 1, !tbaa !83
  %39 = getelementptr inbounds [40 x i8], ptr %1, i64 0, i64 %32
  %40 = load i8, ptr %39, align 1, !tbaa !83
  %41 = icmp eq i8 %38, %40
  br i1 %41, label %42, label %90

42:                                               ; preds = %36
  %43 = getelementptr inbounds [40 x [2 x i16]], ptr %2, i64 0, i64 %27
  %44 = load i16, ptr %43, align 2, !tbaa !114
  %45 = sext i16 %44 to i32
  %46 = getelementptr inbounds [40 x [2 x i16]], ptr %2, i64 0, i64 %32
  %47 = load i16, ptr %46, align 2, !tbaa !114
  %48 = sext i16 %47 to i32
  %49 = sub nsw i32 %45, %48
  %50 = tail call i32 @llvm.abs.i32(i32 %49, i1 true)
  %51 = icmp ugt i32 %50, 3
  br i1 %51, label %90, label %52

52:                                               ; preds = %42
  %53 = getelementptr inbounds [40 x [2 x i16]], ptr %2, i64 0, i64 %27, i64 1
  %54 = load i16, ptr %53, align 2, !tbaa !114
  %55 = sext i16 %54 to i32
  %56 = getelementptr inbounds [40 x [2 x i16]], ptr %2, i64 0, i64 %32, i64 1
  %57 = load i16, ptr %56, align 2, !tbaa !114
  %58 = sext i16 %57 to i32
  %59 = sub nsw i32 %55, %58
  %60 = tail call i32 @llvm.abs.i32(i32 %59, i1 true)
  %61 = icmp slt i32 %60, %4
  br i1 %61, label %62, label %90

62:                                               ; preds = %52
  br i1 %7, label %89, label %63

63:                                               ; preds = %62
  %64 = getelementptr inbounds [40 x i8], ptr %1, i64 1, i64 %27
  %65 = load i8, ptr %64, align 1, !tbaa !83
  %66 = getelementptr inbounds [40 x i8], ptr %1, i64 1, i64 %32
  %67 = load i8, ptr %66, align 1, !tbaa !83
  %68 = icmp eq i8 %65, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %63
  %70 = getelementptr inbounds [40 x [2 x i16]], ptr %2, i64 1, i64 %27
  %71 = load i16, ptr %70, align 2, !tbaa !114
  %72 = sext i16 %71 to i32
  %73 = getelementptr inbounds [40 x [2 x i16]], ptr %2, i64 1, i64 %32
  %74 = load i16, ptr %73, align 2, !tbaa !114
  %75 = sext i16 %74 to i32
  %76 = sub nsw i32 %72, %75
  %77 = tail call i32 @llvm.abs.i32(i32 %76, i1 true)
  %78 = icmp ugt i32 %77, 3
  br i1 %78, label %90, label %79

79:                                               ; preds = %69
  %80 = getelementptr inbounds [40 x [2 x i16]], ptr %2, i64 1, i64 %27, i64 1
  %81 = load i16, ptr %80, align 2, !tbaa !114
  %82 = sext i16 %81 to i32
  %83 = getelementptr inbounds [40 x [2 x i16]], ptr %2, i64 1, i64 %32, i64 1
  %84 = load i16, ptr %83, align 2, !tbaa !114
  %85 = sext i16 %84 to i32
  %86 = sub nsw i32 %82, %85
  %87 = tail call i32 @llvm.abs.i32(i32 %86, i1 true)
  %88 = icmp ult i32 %87, %4
  br i1 %88, label %89, label %90

89:                                               ; preds = %79, %62
  br label %90

90:                                               ; preds = %36, %42, %52, %63, %69, %79, %25, %31, %89
  %91 = phi i8 [ 0, %89 ], [ 2, %31 ], [ 2, %25 ], [ 1, %79 ], [ 1, %69 ], [ 1, %63 ], [ 1, %52 ], [ 1, %42 ], [ 1, %36 ]
  %92 = getelementptr inbounds [4 x [4 x i8]], ptr %3, i64 %11, i64 %17, i64 %26
  store i8 %91, ptr %92, align 1, !tbaa !83
  %93 = add nuw nsw i64 %26, 1
  %94 = add i64 %27, %13
  %95 = icmp eq i64 %93, 4
  br i1 %95, label %22, label %25, !llvm.loop !116
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @deblock_luma_c(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #2 !PGOFuncName !117 {
  %7 = mul nsw i32 %1, -3
  %8 = sext i32 %7 to i64
  %9 = mul nsw i32 %1, -2
  %10 = sext i32 %9 to i64
  %11 = sub nsw i32 0, %1
  %12 = sext i32 %11 to i64
  %13 = sext i32 %1 to i64
  %14 = shl nsw i32 %1, 1
  %15 = sext i32 %14 to i64
  %16 = sext i32 %2 to i64
  %17 = shl nsw i32 %2, 2
  %18 = sext i32 %17 to i64
  br label %20

19:                                               ; preds = %120
  ret void

20:                                               ; preds = %6, %120
  %21 = phi i64 [ 0, %6 ], [ %122, %120 ]
  %22 = phi ptr [ %0, %6 ], [ %121, %120 ]
  %23 = getelementptr inbounds i8, ptr %5, i64 %21
  %24 = load i8, ptr %23, align 1, !tbaa !83
  %25 = icmp slt i8 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = getelementptr inbounds i8, ptr %22, i64 %18
  br label %120

28:                                               ; preds = %20, %116
  %29 = phi ptr [ %117, %116 ], [ %22, %20 ]
  %30 = phi i32 [ %118, %116 ], [ 0, %20 ]
  %31 = getelementptr inbounds i8, ptr %29, i64 %8
  %32 = load i8, ptr %31, align 1, !tbaa !83
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds i8, ptr %29, i64 %10
  %35 = load i8, ptr %34, align 1, !tbaa !83
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds i8, ptr %29, i64 %12
  %38 = load i8, ptr %37, align 1, !tbaa !83
  %39 = zext i8 %38 to i32
  %40 = load i8, ptr %29, align 1, !tbaa !83
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds i8, ptr %29, i64 %13
  %43 = load i8, ptr %42, align 1, !tbaa !83
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds i8, ptr %29, i64 %15
  %46 = load i8, ptr %45, align 1, !tbaa !83
  %47 = zext i8 %46 to i32
  %48 = sub nsw i32 %39, %41
  %49 = tail call i32 @llvm.abs.i32(i32 %48, i1 true)
  %50 = icmp slt i32 %49, %3
  br i1 %50, label %51, label %116

51:                                               ; preds = %28
  %52 = sub nsw i32 %36, %39
  %53 = tail call i32 @llvm.abs.i32(i32 %52, i1 true)
  %54 = icmp slt i32 %53, %4
  br i1 %54, label %55, label %116

55:                                               ; preds = %51
  %56 = sub nsw i32 %44, %41
  %57 = tail call i32 @llvm.abs.i32(i32 %56, i1 true)
  %58 = icmp ult i32 %57, %4
  br i1 %58, label %59, label %116

59:                                               ; preds = %55
  %60 = load i8, ptr %23, align 1, !tbaa !83
  %61 = sext i8 %60 to i32
  %62 = sub nsw i32 %33, %39
  %63 = tail call i32 @llvm.abs.i32(i32 %62, i1 true)
  %64 = icmp ult i32 %63, %4
  br i1 %64, label %65, label %80

65:                                               ; preds = %59
  %66 = icmp eq i8 %60, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %65
  %68 = add nuw nsw i32 %39, 1
  %69 = add nuw nsw i32 %68, %41
  %70 = lshr i32 %69, 1
  %71 = add nuw nsw i32 %70, %33
  %72 = lshr i32 %71, 1
  %73 = sub nsw i32 %72, %36
  %74 = sub nsw i32 0, %61
  %75 = tail call fastcc i32 @x264_clip3(i32 noundef %73, i32 noundef %74, i32 noundef %61) #10, !range !118
  %76 = trunc i32 %75 to i8
  %77 = add i8 %35, %76
  store i8 %77, ptr %34, align 1, !tbaa !83
  br label %78

78:                                               ; preds = %67, %65
  %79 = add nsw i32 %61, 1
  br label %80

80:                                               ; preds = %78, %59
  %81 = phi i32 [ %79, %78 ], [ %61, %59 ]
  %82 = sub nsw i32 %47, %41
  %83 = tail call i32 @llvm.abs.i32(i32 %82, i1 true)
  %84 = icmp ult i32 %83, %4
  br i1 %84, label %85, label %102

85:                                               ; preds = %80
  %86 = load i8, ptr %23, align 1, !tbaa !83
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %85
  %89 = add nuw nsw i32 %39, 1
  %90 = add nuw nsw i32 %89, %41
  %91 = lshr i32 %90, 1
  %92 = add nuw nsw i32 %91, %47
  %93 = lshr i32 %92, 1
  %94 = sub nsw i32 %93, %44
  %95 = sext i8 %86 to i32
  %96 = sub nsw i32 0, %95
  %97 = tail call fastcc i32 @x264_clip3(i32 noundef %94, i32 noundef %96, i32 noundef %95) #10, !range !118
  %98 = trunc i32 %97 to i8
  %99 = add i8 %43, %98
  store i8 %99, ptr %42, align 1, !tbaa !83
  br label %100

100:                                              ; preds = %88, %85
  %101 = add nsw i32 %81, 1
  br label %102

102:                                              ; preds = %100, %80
  %103 = phi i32 [ %101, %100 ], [ %81, %80 ]
  %104 = sub nsw i32 %41, %39
  %105 = shl nsw i32 %104, 2
  %106 = add nuw nsw i32 %36, 4
  %107 = sub nsw i32 %106, %44
  %108 = add nsw i32 %107, %105
  %109 = ashr i32 %108, 3
  %110 = sub nsw i32 0, %103
  %111 = tail call fastcc i32 @x264_clip3(i32 noundef %109, i32 noundef %110, i32 noundef %103) #10, !range !118
  %112 = add nsw i32 %111, %39
  %113 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %112) #10
  store i8 %113, ptr %37, align 1, !tbaa !83
  %114 = sub nsw i32 %41, %111
  %115 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %114) #10
  store i8 %115, ptr %29, align 1, !tbaa !83
  br label %116

116:                                              ; preds = %102, %55, %51, %28
  %117 = getelementptr inbounds i8, ptr %29, i64 %16
  %118 = add nuw nsw i32 %30, 1
  %119 = icmp eq i32 %118, 4
  br i1 %119, label %120, label %28, !llvm.loop !119

120:                                              ; preds = %116, %26
  %121 = phi ptr [ %27, %26 ], [ %117, %116 ]
  %122 = add nuw nsw i64 %21, 1
  %123 = icmp eq i64 %122, 4
  br i1 %123, label %19, label %20, !llvm.loop !120
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @x264_clip3(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 !PGOFuncName !121 {
  %4 = icmp slt i32 %0, %1
  %5 = tail call i32 @llvm.smin.i32(i32 %0, i32 %2)
  %6 = select i1 %4, i32 %1, i32 %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @x264_clip_uint8(i32 noundef %0) unnamed_addr #8 !PGOFuncName !122 {
  %2 = icmp ult i32 %0, 256
  %3 = icmp sgt i32 %0, 0
  %4 = sext i1 %3 to i32
  %5 = select i1 %2, i32 %0, i32 %4
  %6 = trunc i32 %5 to i8
  ret i8 %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @deblock_chroma_c(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #2 !PGOFuncName !123 {
  %7 = mul nsw i32 %1, -2
  %8 = sext i32 %7 to i64
  %9 = sub nsw i32 0, %1
  %10 = sext i32 %9 to i64
  %11 = sext i32 %1 to i64
  %12 = sext i32 %2 to i64
  %13 = shl nsw i32 %2, 1
  %14 = sext i32 %13 to i64
  br label %16

15:                                               ; preds = %66
  ret void

16:                                               ; preds = %6, %66
  %17 = phi i64 [ 0, %6 ], [ %68, %66 ]
  %18 = phi ptr [ %0, %6 ], [ %67, %66 ]
  %19 = getelementptr inbounds i8, ptr %5, i64 %17
  %20 = load i8, ptr %19, align 1, !tbaa !83
  %21 = sext i8 %20 to i32
  %22 = icmp slt i8 %20, 1
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = sub nsw i32 0, %21
  br label %27

25:                                               ; preds = %16
  %26 = getelementptr inbounds i8, ptr %18, i64 %14
  br label %66

27:                                               ; preds = %23, %64
  %28 = phi ptr [ %18, %23 ], [ %65, %64 ]
  %29 = phi i1 [ true, %23 ], [ false, %64 ]
  %30 = getelementptr inbounds i8, ptr %28, i64 %8
  %31 = load i8, ptr %30, align 1, !tbaa !83
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds i8, ptr %28, i64 %10
  %34 = load i8, ptr %33, align 1, !tbaa !83
  %35 = zext i8 %34 to i32
  %36 = load i8, ptr %28, align 1, !tbaa !83
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds i8, ptr %28, i64 %11
  %39 = load i8, ptr %38, align 1, !tbaa !83
  %40 = zext i8 %39 to i32
  %41 = sub nsw i32 %35, %37
  %42 = tail call i32 @llvm.abs.i32(i32 %41, i1 true)
  %43 = icmp slt i32 %42, %3
  br i1 %43, label %44, label %64

44:                                               ; preds = %27
  %45 = sub nsw i32 %32, %35
  %46 = tail call i32 @llvm.abs.i32(i32 %45, i1 true)
  %47 = icmp slt i32 %46, %4
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = sub nsw i32 %40, %37
  %50 = tail call i32 @llvm.abs.i32(i32 %49, i1 true)
  %51 = icmp ult i32 %50, %4
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = sub nsw i32 %37, %35
  %54 = shl nsw i32 %53, 2
  %55 = add nuw nsw i32 %32, 4
  %56 = sub nsw i32 %55, %40
  %57 = add nsw i32 %56, %54
  %58 = ashr i32 %57, 3
  %59 = tail call fastcc i32 @x264_clip3(i32 noundef %58, i32 noundef %24, i32 noundef %21) #10, !range !118
  %60 = add nsw i32 %59, %35
  %61 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %60) #10
  store i8 %61, ptr %33, align 1, !tbaa !83
  %62 = sub nsw i32 %37, %59
  %63 = tail call fastcc zeroext i8 @x264_clip_uint8(i32 noundef %62) #10
  store i8 %63, ptr %28, align 1, !tbaa !83
  br label %64

64:                                               ; preds = %52, %48, %44, %27
  %65 = getelementptr inbounds i8, ptr %28, i64 %12
  br i1 %29, label %27, label %66, !llvm.loop !124

66:                                               ; preds = %64, %25
  %67 = phi ptr [ %26, %25 ], [ %65, %64 ]
  %68 = add nuw nsw i64 %17, 1
  %69 = icmp eq i64 %68, 4
  br i1 %69, label %15, label %16, !llvm.loop !125
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @deblock_luma_intra_c(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 !PGOFuncName !126 {
  %6 = mul nsw i32 %1, -3
  %7 = sext i32 %6 to i64
  %8 = mul nsw i32 %1, -2
  %9 = sext i32 %8 to i64
  %10 = sub nsw i32 0, %1
  %11 = sext i32 %10 to i64
  %12 = sext i32 %1 to i64
  %13 = shl nsw i32 %1, 1
  %14 = sext i32 %13 to i64
  %15 = sext i32 %2 to i64
  %16 = lshr i32 %3, 2
  %17 = add nuw nsw i32 %16, 2
  %18 = mul nsw i32 %1, -4
  %19 = sext i32 %18 to i64
  %20 = mul nsw i32 %1, 3
  %21 = sext i32 %20 to i64
  br label %23

22:                                               ; preds = %143
  ret void

23:                                               ; preds = %5, %143
  %24 = phi ptr [ %0, %5 ], [ %144, %143 ]
  %25 = phi i32 [ 0, %5 ], [ %145, %143 ]
  %26 = getelementptr inbounds i8, ptr %24, i64 %7
  %27 = load i8, ptr %26, align 1, !tbaa !83
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds i8, ptr %24, i64 %9
  %30 = load i8, ptr %29, align 1, !tbaa !83
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds i8, ptr %24, i64 %11
  %33 = load i8, ptr %32, align 1, !tbaa !83
  %34 = zext i8 %33 to i32
  %35 = load i8, ptr %24, align 1, !tbaa !83
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds i8, ptr %24, i64 %12
  %38 = load i8, ptr %37, align 1, !tbaa !83
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds i8, ptr %24, i64 %14
  %41 = load i8, ptr %40, align 1, !tbaa !83
  %42 = zext i8 %41 to i32
  %43 = sub nsw i32 %34, %36
  %44 = tail call i32 @llvm.abs.i32(i32 %43, i1 true)
  %45 = icmp slt i32 %44, %3
  br i1 %45, label %46, label %143

46:                                               ; preds = %23
  %47 = sub nsw i32 %31, %34
  %48 = tail call i32 @llvm.abs.i32(i32 %47, i1 true)
  %49 = icmp slt i32 %48, %4
  br i1 %49, label %50, label %143

50:                                               ; preds = %46
  %51 = sub nsw i32 %39, %36
  %52 = tail call i32 @llvm.abs.i32(i32 %51, i1 true)
  %53 = icmp ult i32 %52, %4
  br i1 %53, label %54, label %143

54:                                               ; preds = %50
  %55 = icmp ult i32 %44, %17
  br i1 %55, label %56, label %127

56:                                               ; preds = %54
  %57 = sub nsw i32 %28, %34
  %58 = tail call i32 @llvm.abs.i32(i32 %57, i1 true)
  %59 = icmp ult i32 %58, %4
  br i1 %59, label %60, label %85

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, ptr %24, i64 %19
  %62 = load i8, ptr %61, align 1, !tbaa !83
  %63 = zext i8 %62 to i32
  %64 = add nuw nsw i32 %36, %31
  %65 = add nuw nsw i32 %64, %34
  %66 = shl nuw nsw i32 %65, 1
  %67 = add nuw nsw i32 %39, 4
  %68 = add nuw nsw i32 %67, %28
  %69 = add nuw nsw i32 %68, %66
  %70 = lshr i32 %69, 3
  %71 = trunc i32 %70 to i8
  store i8 %71, ptr %32, align 1, !tbaa !83
  %72 = add nuw nsw i32 %64, 2
  %73 = add nuw nsw i32 %72, %28
  %74 = add nuw nsw i32 %73, %34
  %75 = lshr i32 %74, 2
  %76 = trunc i32 %75 to i8
  store i8 %76, ptr %29, align 1, !tbaa !83
  %77 = shl nuw nsw i32 %63, 1
  %78 = mul nuw nsw i32 %28, 3
  %79 = add nuw nsw i32 %78, 4
  %80 = add nuw nsw i32 %79, %31
  %81 = add nuw nsw i32 %80, %34
  %82 = add nuw nsw i32 %81, %36
  %83 = add nuw nsw i32 %82, %77
  %84 = lshr i32 %83, 3
  br label %91

85:                                               ; preds = %56
  %86 = shl nuw nsw i32 %31, 1
  %87 = add nuw nsw i32 %34, 2
  %88 = add nuw nsw i32 %87, %86
  %89 = add nuw nsw i32 %88, %39
  %90 = lshr i32 %89, 2
  br label %91

91:                                               ; preds = %85, %60
  %92 = phi i32 [ %90, %85 ], [ %84, %60 ]
  %93 = phi ptr [ %32, %85 ], [ %26, %60 ]
  %94 = trunc i32 %92 to i8
  store i8 %94, ptr %93, align 1, !tbaa !83
  %95 = sub nsw i32 %42, %36
  %96 = tail call i32 @llvm.abs.i32(i32 %95, i1 true)
  %97 = icmp ult i32 %96, %4
  br i1 %97, label %98, label %121

98:                                               ; preds = %91
  %99 = getelementptr inbounds i8, ptr %24, i64 %21
  %100 = load i8, ptr %99, align 1, !tbaa !83
  %101 = zext i8 %100 to i32
  %102 = add nuw nsw i32 %36, %34
  %103 = add nuw nsw i32 %102, %39
  %104 = shl nuw nsw i32 %103, 1
  %105 = add nuw nsw i32 %31, 4
  %106 = add nuw nsw i32 %105, %42
  %107 = add nuw nsw i32 %106, %104
  %108 = lshr i32 %107, 3
  %109 = trunc i32 %108 to i8
  store i8 %109, ptr %24, align 1, !tbaa !83
  %110 = add nuw nsw i32 %42, 2
  %111 = add nuw nsw i32 %110, %103
  %112 = lshr i32 %111, 2
  %113 = trunc i32 %112 to i8
  store i8 %113, ptr %37, align 1, !tbaa !83
  %114 = shl nuw nsw i32 %101, 1
  %115 = mul nuw nsw i32 %42, 3
  %116 = add nuw nsw i32 %102, 4
  %117 = add nuw nsw i32 %116, %39
  %118 = add nuw nsw i32 %117, %115
  %119 = add nuw nsw i32 %118, %114
  %120 = lshr i32 %119, 3
  br label %139

121:                                              ; preds = %91
  %122 = shl nuw nsw i32 %39, 1
  %123 = add nuw nsw i32 %36, %31
  %124 = add nuw nsw i32 %123, 2
  %125 = add nuw nsw i32 %124, %122
  %126 = lshr i32 %125, 2
  br label %139

127:                                              ; preds = %54
  %128 = shl nuw nsw i32 %31, 1
  %129 = add nuw nsw i32 %34, 2
  %130 = add nuw nsw i32 %129, %128
  %131 = add nuw nsw i32 %130, %39
  %132 = lshr i32 %131, 2
  %133 = trunc i32 %132 to i8
  store i8 %133, ptr %32, align 1, !tbaa !83
  %134 = shl nuw nsw i32 %39, 1
  %135 = add nuw nsw i32 %36, %31
  %136 = add nuw nsw i32 %135, 2
  %137 = add nuw nsw i32 %136, %134
  %138 = lshr i32 %137, 2
  br label %139

139:                                              ; preds = %98, %121, %127
  %140 = phi i32 [ %138, %127 ], [ %126, %121 ], [ %120, %98 ]
  %141 = phi ptr [ %24, %127 ], [ %24, %121 ], [ %40, %98 ]
  %142 = trunc i32 %140 to i8
  store i8 %142, ptr %141, align 1, !tbaa !83
  br label %143

143:                                              ; preds = %139, %50, %46, %23
  %144 = getelementptr inbounds i8, ptr %24, i64 %15
  %145 = add nuw nsw i32 %25, 1
  %146 = icmp eq i32 %145, 16
  br i1 %146, label %22, label %23, !llvm.loop !127
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @deblock_chroma_intra_c(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 !PGOFuncName !128 {
  %6 = mul nsw i32 %1, -2
  %7 = sext i32 %6 to i64
  %8 = sub nsw i32 0, %1
  %9 = sext i32 %8 to i64
  %10 = sext i32 %1 to i64
  %11 = sext i32 %2 to i64
  br label %13

12:                                               ; preds = %51
  ret void

13:                                               ; preds = %5, %51
  %14 = phi ptr [ %0, %5 ], [ %52, %51 ]
  %15 = phi i32 [ 0, %5 ], [ %53, %51 ]
  %16 = getelementptr inbounds i8, ptr %14, i64 %7
  %17 = load i8, ptr %16, align 1, !tbaa !83
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds i8, ptr %14, i64 %9
  %20 = load i8, ptr %19, align 1, !tbaa !83
  %21 = zext i8 %20 to i32
  %22 = load i8, ptr %14, align 1, !tbaa !83
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8, ptr %14, i64 %10
  %25 = load i8, ptr %24, align 1, !tbaa !83
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %21, %23
  %28 = tail call i32 @llvm.abs.i32(i32 %27, i1 true)
  %29 = icmp slt i32 %28, %3
  br i1 %29, label %30, label %51

30:                                               ; preds = %13
  %31 = sub nsw i32 %18, %21
  %32 = tail call i32 @llvm.abs.i32(i32 %31, i1 true)
  %33 = icmp slt i32 %32, %4
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = sub nsw i32 %26, %23
  %36 = tail call i32 @llvm.abs.i32(i32 %35, i1 true)
  %37 = icmp ult i32 %36, %4
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = shl nuw nsw i32 %18, 1
  %40 = add nuw nsw i32 %21, 2
  %41 = add nuw nsw i32 %40, %39
  %42 = add nuw nsw i32 %41, %26
  %43 = lshr i32 %42, 2
  %44 = trunc i32 %43 to i8
  store i8 %44, ptr %19, align 1, !tbaa !83
  %45 = shl nuw nsw i32 %26, 1
  %46 = add nuw nsw i32 %18, 2
  %47 = add nuw nsw i32 %46, %23
  %48 = add nuw nsw i32 %47, %45
  %49 = lshr i32 %48, 2
  %50 = trunc i32 %49 to i8
  store i8 %50, ptr %14, align 1, !tbaa !83
  br label %51

51:                                               ; preds = %38, %34, %30, %13
  %52 = getelementptr inbounds i8, ptr %14, i64 %11
  %53 = add nuw nsw i32 %15, 1
  %54 = icmp eq i32 %53, 8
  br i1 %54, label %12, label %13, !llvm.loop !129
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!36, !38, i64 7268}
!36 = !{!"x264_t", !37, i64 0, !39, i64 704, !38, i64 1736, !38, i64 1740, !38, i64 1744, !38, i64 1748, !38, i64 1752, !46, i64 1760, !42, i64 1832, !38, i64 1840, !38, i64 1844, !38, i64 1848, !38, i64 1852, !38, i64 1856, !38, i64 1860, !38, i64 1864, !38, i64 1868, !38, i64 1872, !38, i64 1876, !38, i64 1880, !38, i64 1884, !38, i64 1888, !38, i64 1892, !39, i64 1896, !42, i64 3200, !39, i64 3208, !42, i64 3328, !38, i64 3336, !38, i64 3340, !39, i64 3344, !39, i64 3376, !39, i64 3392, !39, i64 3424, !39, i64 3440, !39, i64 3472, !39, i64 3488, !39, i64 3520, !39, i64 3536, !39, i64 4272, !42, i64 7216, !49, i64 7232, !50, i64 13904, !51, i64 14416, !42, i64 14680, !42, i64 14688, !38, i64 14696, !39, i64 14704, !38, i64 14856, !39, i64 14864, !39, i64 15016, !38, i64 15024, !38, i64 15028, !48, i64 15032, !52, i64 15040, !53, i64 16368, !42, i64 26704, !56, i64 26712, !39, i64 30400, !39, i64 30912, !39, i64 31168, !42, i64 31176, !39, i64 31184, !39, i64 31232, !39, i64 31248, !39, i64 31304, !39, i64 31360, !39, i64 31456, !42, i64 31552, !59, i64 31560, !60, i64 32616, !61, i64 32912, !62, i64 33032, !63, i64 33080, !64, i64 33256, !42, i64 33328}
!37 = !{!"x264_param_t", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32, !38, i64 36, !38, i64 40, !41, i64 44, !38, i64 80, !38, i64 84, !38, i64 88, !38, i64 92, !38, i64 96, !38, i64 100, !38, i64 104, !38, i64 108, !38, i64 112, !38, i64 116, !38, i64 120, !38, i64 124, !38, i64 128, !38, i64 132, !38, i64 136, !38, i64 140, !38, i64 144, !42, i64 152, !39, i64 160, !39, i64 176, !39, i64 192, !39, i64 208, !39, i64 224, !39, i64 288, !42, i64 352, !42, i64 360, !38, i64 368, !38, i64 372, !42, i64 376, !43, i64 384, !45, i64 488, !38, i64 632, !38, i64 636, !38, i64 640, !38, i64 644, !38, i64 648, !38, i64 652, !38, i64 656, !38, i64 660, !38, i64 664, !38, i64 668, !38, i64 672, !38, i64 676, !38, i64 680, !38, i64 684, !38, i64 688, !38, i64 692, !42, i64 696}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32}
!42 = !{!"any pointer", !39, i64 0}
!43 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32, !38, i64 36, !38, i64 40, !38, i64 44, !38, i64 48, !38, i64 52, !38, i64 56, !38, i64 60, !38, i64 64, !38, i64 68, !44, i64 72, !44, i64 76, !38, i64 80, !39, i64 84, !38, i64 92, !38, i64 96}
!44 = !{!"float", !39, i64 0}
!45 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !38, i64 36, !38, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !38, i64 56, !44, i64 60, !38, i64 64, !38, i64 68, !38, i64 72, !42, i64 80, !38, i64 88, !42, i64 96, !44, i64 104, !44, i64 108, !44, i64 112, !42, i64 120, !38, i64 128, !42, i64 136}
!46 = !{!"", !38, i64 0, !38, i64 4, !42, i64 8, !38, i64 16, !42, i64 24, !47, i64 32}
!47 = !{!"bs_s", !42, i64 0, !42, i64 8, !42, i64 16, !48, i64 24, !38, i64 32, !38, i64 36}
!48 = !{!"long", !39, i64 0}
!49 = !{!"", !42, i64 0, !42, i64 8, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32, !38, i64 36, !38, i64 40, !38, i64 44, !38, i64 48, !38, i64 52, !38, i64 56, !39, i64 60, !38, i64 68, !38, i64 72, !38, i64 76, !38, i64 80, !38, i64 84, !38, i64 88, !38, i64 92, !39, i64 96, !39, i64 352, !38, i64 6496, !38, i64 6500, !39, i64 6504, !38, i64 6632, !38, i64 6636, !38, i64 6640, !38, i64 6644, !38, i64 6648, !38, i64 6652, !38, i64 6656, !38, i64 6660}
!50 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !42, i64 16, !42, i64 24, !42, i64 32, !38, i64 48, !39, i64 52}
!51 = !{!"", !42, i64 0, !39, i64 8, !42, i64 24, !39, i64 32, !38, i64 176, !38, i64 180, !38, i64 184, !38, i64 188, !38, i64 192, !38, i64 196, !38, i64 200, !48, i64 208, !48, i64 216, !39, i64 224, !48, i64 240, !48, i64 248, !38, i64 256, !38, i64 260}
!52 = !{!"", !39, i64 0, !39, i64 32, !39, i64 48, !39, i64 560}
!53 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32, !38, i64 36, !38, i64 40, !38, i64 44, !38, i64 48, !38, i64 52, !38, i64 56, !38, i64 60, !38, i64 64, !38, i64 68, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !39, i64 112, !38, i64 120, !39, i64 124, !39, i64 140, !38, i64 204, !38, i64 208, !38, i64 212, !38, i64 216, !38, i64 220, !38, i64 224, !38, i64 228, !38, i64 232, !38, i64 236, !38, i64 240, !38, i64 244, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !42, i64 280, !42, i64 288, !42, i64 296, !39, i64 304, !39, i64 320, !39, i64 336, !39, i64 352, !42, i64 864, !42, i64 872, !42, i64 880, !39, i64 888, !38, i64 1016, !38, i64 1020, !39, i64 1024, !38, i64 1028, !38, i64 1032, !38, i64 1036, !38, i64 1040, !38, i64 1044, !38, i64 1048, !38, i64 1052, !38, i64 1056, !38, i64 1060, !54, i64 1072, !55, i64 8656, !38, i64 9424, !38, i64 9428, !38, i64 9432, !38, i64 9436, !38, i64 9440, !38, i64 9444, !38, i64 9448, !38, i64 9452, !39, i64 9456, !38, i64 9472, !38, i64 9476, !39, i64 9480, !42, i64 9992, !39, i64 10000, !42, i64 10256, !39, i64 10264, !38, i64 10284, !39, i64 10288}
!54 = !{!"", !39, i64 0, !39, i64 384, !39, i64 1248, !39, i64 1504, !39, i64 1760, !39, i64 2144, !39, i64 2624, !39, i64 2640, !38, i64 2656, !38, i64 2660, !39, i64 2672, !39, i64 3184, !39, i64 3696, !39, i64 3776, !39, i64 3904, !39, i64 3928, !39, i64 3952, !39, i64 3976, !39, i64 3984, !39, i64 7056, !39, i64 7312, !39, i64 7568}
!55 = !{!"", !39, i64 0, !39, i64 48, !39, i64 96, !39, i64 176, !39, i64 496, !39, i64 656, !39, i64 696, !39, i64 728, !38, i64 736, !39, i64 740, !38, i64 744, !38, i64 748, !38, i64 752, !38, i64 756}
!56 = !{!"", !57, i64 0, !39, i64 704, !39, i64 728, !39, i64 768, !39, i64 808, !39, i64 880, !39, i64 920, !39, i64 960, !39, i64 1000, !39, i64 1040, !39, i64 1080, !39, i64 1120, !39, i64 1880, !39, i64 2152, !39, i64 2168, !39, i64 3192, !39, i64 3240, !39, i64 3656, !39, i64 3664, !39, i64 3672}
!57 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !39, i64 12, !38, i64 88, !38, i64 92, !38, i64 96, !39, i64 100, !39, i64 108, !39, i64 364, !39, i64 432, !39, i64 456, !39, i64 664, !39, i64 672, !58, i64 696}
!58 = !{!"double", !39, i64 0}
!59 = !{!"", !39, i64 0, !39, i64 56, !39, i64 112, !39, i64 168, !39, i64 224, !39, i64 256, !39, i64 312, !39, i64 368, !39, i64 424, !39, i64 480, !39, i64 536, !42, i64 592, !39, i64 600, !39, i64 632, !42, i64 664, !42, i64 672, !39, i64 680, !39, i64 736, !39, i64 792, !39, i64 848, !39, i64 904, !42, i64 960, !42, i64 968, !42, i64 976, !42, i64 984, !42, i64 992, !42, i64 1000, !42, i64 1008, !42, i64 1016, !42, i64 1024, !42, i64 1032, !42, i64 1040, !42, i64 1048}
!60 = !{!"", !42, i64 0, !42, i64 8, !42, i64 16, !39, i64 24, !39, i64 104, !42, i64 160, !42, i64 168, !42, i64 176, !42, i64 184, !42, i64 192, !42, i64 200, !42, i64 208, !42, i64 216, !42, i64 224, !42, i64 232, !42, i64 240, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !42, i64 280, !42, i64 288}
!61 = !{!"", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112}
!62 = !{!"", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40}
!63 = !{!"", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !39, i64 88, !39, i64 136}
!64 = !{!"", !39, i64 0, !39, i64 16, !39, i64 32, !39, i64 48, !42, i64 64}
!65 = !{!36, !38, i64 13888}
!66 = !{!36, !38, i64 13892}
!67 = !{!36, !38, i64 408}
!68 = !{!36, !42, i64 14688}
!69 = !{!38, !38, i64 0}
!70 = !{!36, !42, i64 31176}
!71 = !{!36, !42, i64 3328}
!72 = !{!73, !38, i64 8}
!73 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32, !38, i64 36, !38, i64 40, !38, i64 44, !38, i64 48, !38, i64 52, !38, i64 56, !38, i64 60, !38, i64 64, !39, i64 72}
!74 = !{!73, !38, i64 60}
!75 = !{!36, !42, i64 3200}
!76 = !{!77, !38, i64 1084}
!77 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32, !38, i64 36, !38, i64 40, !38, i64 44, !38, i64 48, !39, i64 52, !38, i64 1076, !38, i64 1080, !38, i64 1084, !38, i64 1088, !38, i64 1092, !38, i64 1096, !38, i64 1100, !38, i64 1104, !78, i64 1108, !38, i64 1124, !79, i64 1128, !38, i64 1296}
!78 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12}
!79 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32, !38, i64 36, !38, i64 40, !38, i64 44, !38, i64 48, !38, i64 52, !38, i64 56, !38, i64 60, !38, i64 64, !38, i64 68, !38, i64 72, !38, i64 76, !38, i64 80, !80, i64 84, !38, i64 132, !38, i64 136, !38, i64 140, !38, i64 144, !38, i64 148, !38, i64 152, !38, i64 156, !38, i64 160, !38, i64 164}
!80 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32, !38, i64 36, !38, i64 40, !38, i64 44}
!81 = !{!36, !38, i64 16392}
!82 = !{!36, !42, i64 17240}
!83 = !{!39, !39, i64 0}
!84 = !{!36, !42, i64 16616}
!85 = !{!42, !42, i64 0}
!86 = !{!36, !42, i64 16632}
!87 = !{!36, !42, i64 7216}
!88 = !{!36, !38, i64 16488}
!89 = !{!36, !38, i64 16600}
!90 = !{!36, !38, i64 16604}
!91 = distinct !{!91, !92}
!92 = !{!"llvm.loop.mustprogress"}
!93 = !{!"deblock.c:munge_cavlc_nnz"}
!94 = !{ptr @munge_cavlc_nnz_row, ptr @restore_cavlc_nnz_row}
!95 = !{!"deblock.c:munge_cavlc_nnz_row"}
!96 = !{!36, !42, i64 16656}
!97 = distinct !{!97, !92}
!98 = !{!"deblock.c:deblock_edge_intra"}
!99 = !{!"deblock.c:deblock_edge"}
!100 = !{!"deblock.c:restore_cavlc_nnz_row"}
!101 = distinct !{!101, !92}
!102 = !{!64, !42, i64 64}
!103 = !{!"deblock.c:deblock_v_luma_c"}
!104 = !{!"deblock.c:deblock_h_luma_c"}
!105 = !{!"deblock.c:deblock_v_chroma_c"}
!106 = !{!"deblock.c:deblock_h_chroma_c"}
!107 = !{!"deblock.c:deblock_v_luma_intra_c"}
!108 = !{!"deblock.c:deblock_h_luma_intra_c"}
!109 = !{!"deblock.c:deblock_v_chroma_intra_c"}
!110 = !{!"deblock.c:deblock_h_chroma_intra_c"}
!111 = !{!"deblock.c:deblock_strength_c"}
!112 = distinct !{!112, !92}
!113 = distinct !{!113, !92}
!114 = !{!115, !115, i64 0}
!115 = !{!"short", !39, i64 0}
!116 = distinct !{!116, !92}
!117 = !{!"deblock.c:deblock_luma_c"}
!118 = !{i32 -129, i32 268435456}
!119 = distinct !{!119, !92}
!120 = distinct !{!120, !92}
!121 = !{!"deblock.c:x264_clip3"}
!122 = !{!"deblock.c:x264_clip_uint8"}
!123 = !{!"deblock.c:deblock_chroma_c"}
!124 = distinct !{!124, !92}
!125 = distinct !{!125, !92}
!126 = !{!"deblock.c:deblock_luma_intra_c"}
!127 = distinct !{!127, !92}
!128 = !{!"deblock.c:deblock_chroma_intra_c"}
!129 = distinct !{!129, !92}
