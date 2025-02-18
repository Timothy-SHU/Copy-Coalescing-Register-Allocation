; ModuleID = 'x264_src/common/set.c'
source_filename = "x264_src/common/set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], ptr, ptr, i32, i32, ptr, %struct.anon.0, %struct.anon.1, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, float, float, float, i32, float, i32, i32, i32, ptr, i32, ptr, float, float, float, ptr, i32, ptr }
%struct.x264_t = type { %struct.x264_param_t, [129 x ptr], i32, i32, i32, i32, i32, %struct.anon.2, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.x264_sps_t], ptr, [1 x %struct.x264_pps_t], ptr, i32, i32, [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [92 x ptr], [92 x [4 x ptr]], ptr, [8 x i8], %struct.x264_slice_header_t, %struct.x264_cabac_t, %struct.anon.8, ptr, ptr, i32, [19 x ptr], i32, [19 x ptr], [2 x i32], i32, i32, i64, %struct.anon.9, %struct.anon.10, ptr, %struct.anon.13, [2 x [64 x i32]], [2 x [64 x i16]], [2 x i32], ptr, [2 x [3 x ptr]], [2 x ptr], [7 x ptr], [7 x ptr], [12 x ptr], [12 x ptr], ptr, %struct.x264_pixel_function_t, %struct.x264_mc_functions_t, %struct.x264_dct_function_t, %struct.x264_zigzag_function_t, %struct.x264_quant_function_t, %struct.x264_deblock_function_t, ptr, [8 x i8] }
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

@dequant4_scale = internal unnamed_addr constant [6 x [3 x i8]] [[3 x i8] c"\0A\0D\10", [3 x i8] c"\0B\0E\12", [3 x i8] c"\0D\10\14", [3 x i8] c"\0E\12\17", [3 x i8] c"\10\14\19", [3 x i8] c"\12\17\1D"], align 16
@quant4_scale = internal unnamed_addr constant [6 x [3 x i16]] [[3 x i16] [i16 13107, i16 8066, i16 5243], [3 x i16] [i16 11916, i16 7490, i16 4660], [3 x i16] [i16 10082, i16 6554, i16 4194], [3 x i16] [i16 9362, i16 5825, i16 3647], [3 x i16] [i16 8192, i16 5243, i16 3355], [3 x i16] [i16 7282, i16 4559, i16 2893]], align 16
@quant8_scan = internal unnamed_addr constant [16 x i8] c"\00\03\04\03\03\01\05\01\04\05\02\05\03\01\05\01", align 16
@dequant8_scale = internal unnamed_addr constant [6 x [6 x i8]] [[6 x i8] c"\14\12 \13\19\18", [6 x i8] c"\16\13#\15\1C\1A", [6 x i8] c"\1A\17*\18!\1F", [6 x i8] c"\1C\19-\1A#!", [6 x i8] c" \1C3\1E(&", [6 x i8] c"$ :\22.+"], align 16
@quant8_scale = internal unnamed_addr constant [6 x [6 x i16]] [[6 x i16] [i16 13107, i16 11428, i16 20972, i16 12222, i16 16777, i16 15481], [6 x i16] [i16 11916, i16 10826, i16 19174, i16 11058, i16 14980, i16 14290], [6 x i16] [i16 10082, i16 8943, i16 15978, i16 9675, i16 12710, i16 11985], [6 x i16] [i16 9362, i16 8228, i16 14913, i16 8931, i16 11984, i16 11259], [6 x i16] [i16 8192, i16 7346, i16 13159, i16 7740, i16 10486, i16 9777], [6 x i16] [i16 7282, i16 6428, i16 11570, i16 6830, i16 9118, i16 8640]], align 16
@.str = private unnamed_addr constant [64 x i8] c"Quantization overflow.  Your CQM is incompatible with QP < %d,\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"but min QP is set to %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"but min chroma QP is implied to be %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"can't open file '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"INTRA4X4_LUMA\00", align 1
@x264_cqm_jvt4i = internal constant [16 x i8] c"\06\0D\14\1C\0D\14\1C \14\1C %\1C %*", align 16
@.str.6 = private unnamed_addr constant [16 x i8] c"INTRA4X4_CHROMA\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"INTER4X4_LUMA\00", align 1
@x264_cqm_jvt4p = internal constant [16 x i8] c"\0A\0E\14\18\0E\14\18\1B\14\18\1B\1E\18\1B\1E\22", align 16
@.str.8 = private unnamed_addr constant [16 x i8] c"INTER4X4_CHROMA\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"INTRA8X8_LUMA\00", align 1
@x264_cqm_jvt8i = internal constant [64 x i8] c"\06\0A\0D\10\12\17\19\1B\0A\0B\10\12\17\19\1B\1D\0D\10\12\17\19\1B\1D\1F\10\12\17\19\1B\1D\1F!\12\17\19\1B\1D\1F!$\17\19\1B\1D\1F!$&\19\1B\1D\1F!$&(\1B\1D\1F!$&(*", align 16
@.str.10 = private unnamed_addr constant [14 x i8] c"INTER8X8_LUMA\00", align 1
@x264_cqm_jvt8p = internal constant [64 x i8] c"\09\0D\0F\11\13\15\16\18\0D\0D\11\13\15\16\18\19\0F\11\13\15\16\18\19\1B\11\13\15\16\18\19\1B\1C\13\15\16\18\19\1B\1C\1E\15\16\18\19\1B\1C\1E \16\18\19\1B\1C\1E !\18\19\1B\1C\1E !#", align 16
@.str.11 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c" \09\0A,\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"bad coefficient in list '%s'\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"not enough coefficients in list '%s'\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_cqm_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [6 x [16 x i32]], align 16
  %3 = alloca [6 x [64 x i32]], align 16
  %4 = alloca [6 x [16 x i32]], align 16
  %5 = alloca [6 x [64 x i32]], align 16
  %6 = alloca [4 x [6 x [16 x i32]]], align 16
  %7 = alloca [2 x [6 x [64 x i32]]], align 16
  %8 = alloca [4 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 1536, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 1536, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 1536, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 3072, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9
  %9 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 21
  %10 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 21, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !34
  %12 = sub nsw i32 32, %11
  store i32 %12, ptr %8, align 16, !tbaa !34
  %13 = getelementptr inbounds i32, ptr %8, i64 1
  %14 = load i32, ptr %9, align 4, !tbaa !34
  %15 = sub nsw i32 32, %14
  store i32 %15, ptr %13, align 4, !tbaa !34
  %16 = getelementptr inbounds i32, ptr %8, i64 2
  store i32 21, ptr %16, align 8, !tbaa !34
  %17 = getelementptr inbounds i32, ptr %8, i64 3
  store i32 11, ptr %17, align 4, !tbaa !34
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  br label %23

20:                                               ; preds = %91
  %21 = add nuw nsw i64 %24, 1
  %22 = icmp eq i64 %21, 4
  br i1 %22, label %94, label %23, !llvm.loop !38

23:                                               ; preds = %1, %20
  %24 = phi i64 [ 0, %1 ], [ %21, %20 ]
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %49, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %18, align 16, !tbaa !41
  %28 = getelementptr inbounds %struct.x264_pps_t, ptr %27, i64 0, i32 17, i64 %24
  %29 = load ptr, ptr %28, align 8, !tbaa !68
  br label %33

30:                                               ; preds = %33
  %31 = add nuw nsw i64 %34, 1
  %32 = icmp eq i64 %31, %24
  br i1 %32, label %49, label %33, !llvm.loop !69

33:                                               ; preds = %26, %30
  %34 = phi i64 [ 0, %26 ], [ %31, %30 ]
  %35 = getelementptr inbounds %struct.x264_pps_t, ptr %27, i64 0, i32 17, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !68
  %37 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %29, ptr noundef nonnull dereferenceable(16) %36, i64 16)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %30

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 %34
  %41 = load ptr, ptr %40, align 8, !tbaa !68
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 %24
  store ptr %41, ptr %42, align 8, !tbaa !68
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 %34
  %44 = load ptr, ptr %43, align 8, !tbaa !68
  %45 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 %24
  store ptr %44, ptr %45, align 8, !tbaa !68
  %46 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 %34
  %47 = load ptr, ptr %46, align 8, !tbaa !68
  %48 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 %24
  store ptr %47, ptr %48, align 8, !tbaa !68
  br label %61

49:                                               ; preds = %30, %23
  %50 = tail call ptr @x264_malloc(i32 noundef 1664) #9
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 %24
  store ptr %50, ptr %51, align 8, !tbaa !68
  %52 = icmp eq ptr %50, null
  br i1 %52, label %91, label %53

53:                                               ; preds = %49
  %54 = tail call ptr @x264_malloc(i32 noundef 384) #9
  %55 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 %24
  store ptr %54, ptr %55, align 8, !tbaa !68
  %56 = icmp eq ptr %54, null
  br i1 %56, label %91, label %57

57:                                               ; preds = %53
  %58 = tail call ptr @x264_malloc(i32 noundef 3328) #9
  %59 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 %24
  store ptr %58, ptr %59, align 8, !tbaa !68
  %60 = icmp eq ptr %58, null
  br i1 %60, label %91, label %61

61:                                               ; preds = %57, %39
  %62 = icmp eq i64 %24, 0
  br i1 %62, label %86, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 %24
  %65 = load i32, ptr %64, align 4, !tbaa !34
  br label %66

66:                                               ; preds = %63, %79
  %67 = phi i64 [ 0, %63 ], [ %80, %79 ]
  %68 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !34
  %70 = icmp eq i32 %69, %65
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load ptr, ptr %19, align 16, !tbaa !41
  %73 = getelementptr inbounds %struct.x264_pps_t, ptr %72, i64 0, i32 17, i64 %24
  %74 = load ptr, ptr %73, align 8, !tbaa !68
  %75 = getelementptr inbounds %struct.x264_pps_t, ptr %72, i64 0, i32 17, i64 %67
  %76 = load ptr, ptr %75, align 8, !tbaa !68
  %77 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %74, ptr noundef nonnull dereferenceable(16) %76, i64 16)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %66, %71
  %80 = add nuw nsw i64 %67, 1
  %81 = icmp eq i64 %80, %24
  br i1 %81, label %86, label %66, !llvm.loop !70

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 %67
  %84 = load ptr, ptr %83, align 8, !tbaa !68
  %85 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 %24
  store ptr %84, ptr %85, align 8, !tbaa !68
  br label %90

86:                                               ; preds = %79, %61
  %87 = tail call ptr @x264_malloc(i32 noundef 1664) #9
  %88 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 %24
  store ptr %87, ptr %88, align 8, !tbaa !68
  %89 = icmp eq ptr %87, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %86, %82
  br label %91

91:                                               ; preds = %86, %57, %53, %49, %90
  %92 = phi i1 [ true, %90 ], [ false, %49 ], [ false, %53 ], [ false, %57 ], [ false, %86 ]
  %93 = phi i32 [ 0, %90 ], [ 10, %49 ], [ 10, %53 ], [ 10, %57 ], [ 10, %86 ]
  br i1 %92, label %20, label %94

94:                                               ; preds = %20, %91
  %95 = phi i32 [ %93, %91 ], [ 2, %20 ]
  switch i32 %95, label %439 [
    i32 2, label %96
    i32 10, label %438
  ]

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  %98 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 34
  %99 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 34, i64 1
  %100 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30
  %101 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 1
  %102 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 32
  %103 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 32, i64 1
  %104 = icmp ne i32 %14, %11
  %105 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  %106 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 36
  %107 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 36, i64 1
  br label %111

108:                                              ; preds = %158
  %109 = add nuw nsw i64 %112, 1
  %110 = icmp eq i64 %112, 0
  br i1 %110, label %111, label %161, !llvm.loop !71

111:                                              ; preds = %96, %108
  %112 = phi i64 [ 0, %96 ], [ %109, %108 ]
  br label %113

113:                                              ; preds = %111, %116
  %114 = phi i64 [ 1, %116 ], [ 0, %111 ]
  %115 = icmp ult i64 %114, %112
  br i1 %115, label %116, label %128

116:                                              ; preds = %113
  %117 = load ptr, ptr %97, align 16, !tbaa !41
  %118 = getelementptr inbounds %struct.x264_pps_t, ptr %117, i64 0, i32 17, i64 5
  %119 = load ptr, ptr %118, align 8, !tbaa !68
  %120 = getelementptr inbounds %struct.x264_pps_t, ptr %117, i64 0, i32 17, i64 4
  %121 = load ptr, ptr %120, align 8, !tbaa !68
  %122 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(64) %119, ptr noundef nonnull dereferenceable(64) %121, i64 64)
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %113, !llvm.loop !72

124:                                              ; preds = %116
  %125 = load ptr, ptr %98, align 8, !tbaa !68
  store ptr %125, ptr %99, align 8, !tbaa !68
  %126 = load ptr, ptr %100, align 8, !tbaa !68
  store ptr %126, ptr %101, align 8, !tbaa !68
  %127 = load ptr, ptr %102, align 8, !tbaa !68
  store ptr %127, ptr %103, align 8, !tbaa !68
  br label %140

128:                                              ; preds = %113
  %129 = tail call ptr @x264_malloc(i32 noundef 6656) #9
  %130 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 34, i64 %112
  store ptr %129, ptr %130, align 8, !tbaa !68
  %131 = icmp eq ptr %129, null
  br i1 %131, label %158, label %132

132:                                              ; preds = %128
  %133 = tail call ptr @x264_malloc(i32 noundef 1536) #9
  %134 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 %112
  store ptr %133, ptr %134, align 8, !tbaa !68
  %135 = icmp eq ptr %133, null
  br i1 %135, label %158, label %136

136:                                              ; preds = %132
  %137 = tail call ptr @x264_malloc(i32 noundef 13312) #9
  %138 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 32, i64 %112
  store ptr %137, ptr %138, align 8, !tbaa !68
  %139 = icmp eq ptr %137, null
  br i1 %139, label %158, label %140

140:                                              ; preds = %136, %124
  %141 = icmp eq i64 %112, 0
  %142 = select i1 %141, i1 true, i1 %104
  br i1 %142, label %153, label %143

143:                                              ; preds = %140
  %144 = load ptr, ptr %105, align 16, !tbaa !41
  %145 = getelementptr inbounds %struct.x264_pps_t, ptr %144, i64 0, i32 17, i64 5
  %146 = load ptr, ptr %145, align 8, !tbaa !68
  %147 = getelementptr inbounds %struct.x264_pps_t, ptr %144, i64 0, i32 17, i64 4
  %148 = load ptr, ptr %147, align 8, !tbaa !68
  %149 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(64) %146, ptr noundef nonnull dereferenceable(64) %148, i64 64)
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %143
  %152 = load ptr, ptr %106, align 8, !tbaa !68
  store ptr %152, ptr %107, align 8, !tbaa !68
  br label %157

153:                                              ; preds = %140, %143
  %154 = tail call ptr @x264_malloc(i32 noundef 6656) #9
  %155 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 36, i64 %112
  store ptr %154, ptr %155, align 8, !tbaa !68
  %156 = icmp eq ptr %154, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %153, %151
  br label %158

158:                                              ; preds = %153, %136, %132, %128, %157
  %159 = phi i1 [ true, %157 ], [ false, %128 ], [ false, %132 ], [ false, %136 ], [ false, %153 ]
  %160 = phi i32 [ 0, %157 ], [ 10, %128 ], [ 10, %132 ], [ 10, %136 ], [ 10, %153 ]
  br i1 %159, label %108, label %161

161:                                              ; preds = %108, %158
  %162 = phi i32 [ %160, %158 ], [ 20, %108 ]
  switch i32 %162, label %439 [
    i32 20, label %163
    i32 10, label %438
  ]

163:                                              ; preds = %161, %184
  %164 = phi i64 [ %185, %184 ], [ 0, %161 ]
  br label %168

165:                                              ; preds = %184
  %166 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  %167 = load ptr, ptr %166, align 16, !tbaa !41
  br label %206

168:                                              ; preds = %163, %168
  %169 = phi i64 [ 0, %163 ], [ %182, %168 ]
  %170 = and i64 %169, 1
  %171 = lshr i64 %169, 2
  %172 = and i64 %171, 1
  %173 = add nuw nsw i64 %172, %170
  %174 = getelementptr inbounds [6 x [3 x i8]], ptr @dequant4_scale, i64 0, i64 %164, i64 %173
  %175 = load i8, ptr %174, align 1, !tbaa !73
  %176 = zext i8 %175 to i32
  %177 = getelementptr inbounds [6 x [16 x i32]], ptr %4, i64 0, i64 %164, i64 %169
  store i32 %176, ptr %177, align 4, !tbaa !34
  %178 = getelementptr inbounds [6 x [3 x i16]], ptr @quant4_scale, i64 0, i64 %164, i64 %173
  %179 = load i16, ptr %178, align 2, !tbaa !74
  %180 = zext i16 %179 to i32
  %181 = getelementptr inbounds [6 x [16 x i32]], ptr %2, i64 0, i64 %164, i64 %169
  store i32 %180, ptr %181, align 4, !tbaa !34
  %182 = add nuw nsw i64 %169, 1
  %183 = icmp eq i64 %182, 16
  br i1 %183, label %187, label %168, !llvm.loop !76

184:                                              ; preds = %187
  %185 = add nuw nsw i64 %164, 1
  %186 = icmp eq i64 %185, 6
  br i1 %186, label %165, label %163, !llvm.loop !77

187:                                              ; preds = %168, %187
  %188 = phi i64 [ %204, %187 ], [ 0, %168 ]
  %189 = lshr i64 %188, 1
  %190 = and i64 %189, 12
  %191 = and i64 %188, 3
  %192 = or disjoint i64 %190, %191
  %193 = getelementptr inbounds [16 x i8], ptr @quant8_scan, i64 0, i64 %192
  %194 = load i8, ptr %193, align 1, !tbaa !73
  %195 = zext i8 %194 to i64
  %196 = getelementptr inbounds [6 x [6 x i8]], ptr @dequant8_scale, i64 0, i64 %164, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !73
  %198 = zext i8 %197 to i32
  %199 = getelementptr inbounds [6 x [64 x i32]], ptr %5, i64 0, i64 %164, i64 %188
  store i32 %198, ptr %199, align 4, !tbaa !34
  %200 = getelementptr inbounds [6 x [6 x i16]], ptr @quant8_scale, i64 0, i64 %164, i64 %195
  %201 = load i16, ptr %200, align 2, !tbaa !74
  %202 = zext i16 %201 to i32
  %203 = getelementptr inbounds [6 x [64 x i32]], ptr %3, i64 0, i64 %164, i64 %188
  store i32 %202, ptr %203, align 4, !tbaa !34
  %204 = add nuw nsw i64 %188, 1
  %205 = icmp eq i64 %204, 64
  br i1 %205, label %184, label %187, !llvm.loop !78

206:                                              ; preds = %165, %246
  %207 = phi i64 [ 0, %165 ], [ %247, %246 ]
  br label %210

208:                                              ; preds = %246
  %209 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 2
  br label %272

210:                                              ; preds = %206, %216
  %211 = phi i64 [ 0, %206 ], [ %217, %216 ]
  %212 = getelementptr inbounds %struct.x264_pps_t, ptr %167, i64 0, i32 17, i64 %211
  %213 = load ptr, ptr %212, align 8, !tbaa !68
  %214 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 %211
  %215 = load ptr, ptr %214, align 8, !tbaa !68
  br label %219

216:                                              ; preds = %219
  %217 = add nuw nsw i64 %211, 1
  %218 = icmp eq i64 %217, 4
  br i1 %218, label %239, label %210, !llvm.loop !79

219:                                              ; preds = %210, %219
  %220 = phi i64 [ 0, %210 ], [ %237, %219 ]
  %221 = getelementptr inbounds [6 x [16 x i32]], ptr %4, i64 0, i64 %207, i64 %220
  %222 = load i32, ptr %221, align 4, !tbaa !34
  %223 = getelementptr inbounds i8, ptr %213, i64 %220
  %224 = load i8, ptr %223, align 1, !tbaa !73
  %225 = zext i8 %224 to i32
  %226 = mul nsw i32 %222, %225
  %227 = getelementptr inbounds [16 x i32], ptr %215, i64 %207, i64 %220
  store i32 %226, ptr %227, align 4, !tbaa !34
  %228 = getelementptr inbounds [6 x [16 x i32]], ptr %2, i64 0, i64 %207, i64 %220
  %229 = load i32, ptr %228, align 4, !tbaa !34
  %230 = shl nsw i32 %229, 4
  %231 = load i8, ptr %223, align 1, !tbaa !73
  %232 = zext i8 %231 to i32
  %233 = lshr i32 %232, 1
  %234 = add nsw i32 %233, %230
  %235 = sdiv i32 %234, %232
  %236 = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %6, i64 0, i64 %211, i64 %207, i64 %220
  store i32 %235, ptr %236, align 4, !tbaa !34
  %237 = add nuw nsw i64 %220, 1
  %238 = icmp eq i64 %237, 16
  br i1 %238, label %216, label %219, !llvm.loop !80

239:                                              ; preds = %216, %249
  %240 = phi i64 [ %250, %249 ], [ 0, %216 ]
  %241 = or disjoint i64 %240, 4
  %242 = getelementptr inbounds %struct.x264_pps_t, ptr %167, i64 0, i32 17, i64 %241
  %243 = load ptr, ptr %242, align 8, !tbaa !68
  %244 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 %240
  %245 = load ptr, ptr %244, align 8, !tbaa !68
  br label %252

246:                                              ; preds = %249
  %247 = add nuw nsw i64 %207, 1
  %248 = icmp eq i64 %247, 6
  br i1 %248, label %208, label %206, !llvm.loop !81

249:                                              ; preds = %252
  %250 = add nuw nsw i64 %240, 1
  %251 = icmp eq i64 %240, 0
  br i1 %251, label %239, label %246, !llvm.loop !82

252:                                              ; preds = %239, %252
  %253 = phi i64 [ 0, %239 ], [ %270, %252 ]
  %254 = getelementptr inbounds [6 x [64 x i32]], ptr %5, i64 0, i64 %207, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !34
  %256 = getelementptr inbounds i8, ptr %243, i64 %253
  %257 = load i8, ptr %256, align 1, !tbaa !73
  %258 = zext i8 %257 to i32
  %259 = mul nsw i32 %255, %258
  %260 = getelementptr inbounds [64 x i32], ptr %245, i64 %207, i64 %253
  store i32 %259, ptr %260, align 4, !tbaa !34
  %261 = getelementptr inbounds [6 x [64 x i32]], ptr %3, i64 0, i64 %207, i64 %253
  %262 = load i32, ptr %261, align 4, !tbaa !34
  %263 = shl nsw i32 %262, 4
  %264 = load i8, ptr %256, align 1, !tbaa !73
  %265 = zext i8 %264 to i32
  %266 = lshr i32 %265, 1
  %267 = add nsw i32 %266, %263
  %268 = sdiv i32 %267, %265
  %269 = getelementptr inbounds [2 x [6 x [64 x i32]]], ptr %7, i64 0, i64 %240, i64 %207, i64 %253
  store i32 %268, ptr %269, align 4, !tbaa !34
  %270 = add nuw nsw i64 %253, 1
  %271 = icmp eq i64 %270, 64
  br i1 %271, label %249, label %252, !llvm.loop !83

272:                                              ; preds = %208, %408
  %273 = phi i64 [ 0, %208 ], [ %410, %408 ]
  %274 = phi i32 [ -1, %208 ], [ %409, %408 ]
  %275 = phi i32 [ -1, %208 ], [ %363, %408 ]
  %276 = trunc i64 %273 to i32
  %277 = udiv i32 %276, 6
  %278 = add nuw nsw i32 %277, 23
  %279 = zext nneg i32 %278 to i64
  %280 = shl nuw i64 1, %279
  %281 = trunc i64 %273 to i32
  %282 = urem i32 %281, 6
  %283 = zext nneg i32 %282 to i64
  %284 = icmp ult i64 %273, 12
  %285 = add nsw i32 %277, -1
  %286 = add nsw i32 %277, -2
  %287 = shl nuw nsw i32 1, %286
  %288 = sub nsw i32 1, %277
  %289 = trunc i64 %273 to i32
  %290 = trunc i64 %273 to i32
  br label %295

291:                                              ; preds = %408
  %292 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %293 = load i32, ptr %292, align 4, !tbaa !84
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %412, label %439

295:                                              ; preds = %272, %326
  %296 = phi i64 [ 0, %272 ], [ %327, %326 ]
  %297 = phi i32 [ %274, %272 ], [ %357, %326 ]
  %298 = phi i32 [ %275, %272 ], [ %363, %326 ]
  %299 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 %296
  %300 = load ptr, ptr %299, align 8, !tbaa !68
  %301 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 %296
  %302 = load ptr, ptr %301, align 8, !tbaa !68
  %303 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 %296
  %304 = load i32, ptr %303, align 4, !tbaa !34
  %305 = shl i32 %304, 10
  %306 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 %296
  %307 = load ptr, ptr %306, align 8, !tbaa !68
  %308 = icmp ult i64 %296, 2
  br label %329

309:                                              ; preds = %326
  %310 = load i32, ptr %209, align 8, !tbaa !85
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %408, label %312

312:                                              ; preds = %309
  %313 = trunc i64 %273 to i32
  %314 = udiv i32 %313, 6
  %315 = add nuw nsw i32 %314, 24
  %316 = zext nneg i32 %315 to i64
  %317 = shl nuw i64 1, %316
  %318 = trunc i64 %273 to i32
  %319 = urem i32 %318, 6
  %320 = zext nneg i32 %319 to i64
  %321 = icmp ult i64 %273, 6
  %322 = add nsw i32 %314, -1
  %323 = shl nuw nsw i32 1, %322
  %324 = sub nsw i32 0, %314
  %325 = trunc i64 %273 to i32
  br label %366

326:                                              ; preds = %329
  %327 = add nuw nsw i64 %296, 1
  %328 = icmp eq i64 %327, 4
  br i1 %328, label %309, label %295, !llvm.loop !86

329:                                              ; preds = %295, %329
  %330 = phi i64 [ 0, %295 ], [ %364, %329 ]
  %331 = phi i32 [ %297, %295 ], [ %357, %329 ]
  %332 = phi i32 [ %298, %295 ], [ %363, %329 ]
  %333 = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %6, i64 0, i64 %296, i64 %283, i64 %330
  %334 = load i32, ptr %333, align 4, !tbaa !34
  %335 = sext i32 %334 to i64
  %336 = udiv i64 %280, %335
  %337 = trunc i64 %336 to i32
  %338 = getelementptr inbounds [16 x i32], ptr %300, i64 %273, i64 %330
  store i32 %337, ptr %338, align 4, !tbaa !34
  %339 = shl i32 %334, %288
  %340 = add nsw i32 %334, %287
  %341 = ashr i32 %340, %285
  %342 = select i1 %284, i32 %339, i32 %341
  %343 = trunc i32 %342 to i16
  %344 = getelementptr inbounds [16 x i16], ptr %302, i64 %273, i64 %330
  store i16 %343, ptr %344, align 2, !tbaa !74
  %345 = ashr i32 %342, 1
  %346 = add nsw i32 %305, %345
  %347 = sdiv i32 %346, %342
  %348 = sdiv i32 32768, %342
  %349 = tail call i32 @llvm.smin.i32(i32 %347, i32 %348)
  %350 = trunc i32 %349 to i16
  %351 = getelementptr inbounds [16 x i16], ptr %307, i64 %273, i64 %330
  store i16 %350, ptr %351, align 2, !tbaa !74
  %352 = icmp sgt i32 %342, 65535
  %353 = sext i32 %331 to i64
  %354 = icmp sgt i64 %273, %353
  %355 = select i1 %352, i1 %354, i1 false
  %356 = and i1 %308, %355
  %357 = select i1 %356, i32 %289, i32 %331
  %358 = sext i32 %332 to i64
  %359 = icmp sle i64 %273, %358
  %360 = xor i1 %352, true
  %361 = select i1 %360, i1 true, i1 %359
  %362 = or i1 %308, %361
  %363 = select i1 %362, i32 %332, i32 %290
  %364 = add nuw nsw i64 %330, 1
  %365 = icmp eq i64 %364, 16
  br i1 %365, label %326, label %329, !llvm.loop !87

366:                                              ; preds = %312, %378
  %367 = phi i64 [ 0, %312 ], [ %379, %378 ]
  %368 = phi i32 [ %357, %312 ], [ %405, %378 ]
  %369 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 32, i64 %367
  %370 = load ptr, ptr %369, align 8, !tbaa !68
  %371 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 34, i64 %367
  %372 = load ptr, ptr %371, align 8, !tbaa !68
  %373 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 %367
  %374 = load i32, ptr %373, align 4, !tbaa !34
  %375 = shl i32 %374, 10
  %376 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 36, i64 %367
  %377 = load ptr, ptr %376, align 8, !tbaa !68
  br label %381

378:                                              ; preds = %381
  %379 = add nuw nsw i64 %367, 1
  %380 = icmp eq i64 %367, 0
  br i1 %380, label %366, label %408, !llvm.loop !88

381:                                              ; preds = %366, %381
  %382 = phi i64 [ 0, %366 ], [ %406, %381 ]
  %383 = phi i32 [ %368, %366 ], [ %405, %381 ]
  %384 = getelementptr inbounds [2 x [6 x [64 x i32]]], ptr %7, i64 0, i64 %367, i64 %320, i64 %382
  %385 = load i32, ptr %384, align 4, !tbaa !34
  %386 = sext i32 %385 to i64
  %387 = udiv i64 %317, %386
  %388 = trunc i64 %387 to i32
  %389 = getelementptr inbounds [64 x i32], ptr %370, i64 %273, i64 %382
  store i32 %388, ptr %389, align 4, !tbaa !34
  %390 = shl nuw nsw i32 %385, %324
  %391 = add nsw i32 %385, %323
  %392 = ashr i32 %391, %314
  %393 = select i1 %321, i32 %390, i32 %392
  %394 = trunc i32 %393 to i16
  %395 = getelementptr inbounds [64 x i16], ptr %372, i64 %273, i64 %382
  store i16 %394, ptr %395, align 2, !tbaa !74
  %396 = ashr i32 %393, 1
  %397 = add nsw i32 %375, %396
  %398 = sdiv i32 %397, %393
  %399 = sdiv i32 32768, %393
  %400 = tail call i32 @llvm.smin.i32(i32 %398, i32 %399)
  %401 = trunc i32 %400 to i16
  %402 = getelementptr inbounds [64 x i16], ptr %377, i64 %273, i64 %382
  store i16 %401, ptr %402, align 2, !tbaa !74
  %403 = icmp sgt i32 %393, 65535
  %404 = tail call i32 @llvm.smax.i32(i32 %325, i32 %383)
  %405 = select i1 %403, i32 %404, i32 %383
  %406 = add nuw nsw i64 %382, 1
  %407 = icmp eq i64 %406, 64
  br i1 %407, label %378, label %381, !llvm.loop !89

408:                                              ; preds = %378, %309
  %409 = phi i32 [ %357, %309 ], [ %405, %378 ]
  %410 = add nuw nsw i64 %273, 1
  %411 = icmp eq i64 %410, 52
  br i1 %411, label %291, label %272, !llvm.loop !90

412:                                              ; preds = %291
  %413 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 2
  %414 = load i32, ptr %413, align 8, !tbaa !91
  %415 = icmp slt i32 %409, %414
  br i1 %415, label %419, label %416

416:                                              ; preds = %412
  %417 = add nsw i32 %409, 1
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef %417) #9
  %418 = load i32, ptr %413, align 8, !tbaa !91
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %418) #9
  br label %439

419:                                              ; preds = %412
  br i1 %294, label %420, label %439

420:                                              ; preds = %419
  %421 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 39
  %422 = load ptr, ptr %421, align 16, !tbaa !92
  %423 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 2
  %424 = load i32, ptr %423, align 8, !tbaa !91
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i8, ptr %422, i64 %425
  %427 = load i8, ptr %426, align 1, !tbaa !73
  %428 = zext i8 %427 to i32
  %429 = icmp slt i32 %363, %428
  br i1 %429, label %439, label %430

430:                                              ; preds = %420
  %431 = add nuw nsw i32 %363, 1
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef %431) #9
  %432 = load ptr, ptr %421, align 16, !tbaa !92
  %433 = load i32, ptr %423, align 8, !tbaa !91
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i8, ptr %432, i64 %434
  %436 = load i8, ptr %435, align 1, !tbaa !73
  %437 = zext i8 %436 to i32
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %437) #9
  br label %439

438:                                              ; preds = %161, %94
  tail call void @x264_cqm_delete(ptr noundef %0)
  br label %439

439:                                              ; preds = %291, %419, %420, %438, %430, %416, %161, %94
  %440 = phi i32 [ undef, %94 ], [ -1, %438 ], [ undef, %161 ], [ -1, %430 ], [ -1, %416 ], [ 0, %420 ], [ 0, %419 ], [ 0, %291 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 3072, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1536, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1536, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1536, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %2) #9
  ret i32 %440
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @x264_malloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @x264_cqm_delete(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %52
  %3 = phi i64 [ 0, %1 ], [ %53, %52 ]
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 %3
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  br label %13

8:                                                ; preds = %52
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 34
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 34, i64 1
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 36
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 36, i64 1
  br label %55

13:                                               ; preds = %5, %18
  %14 = phi i64 [ 0, %5 ], [ %19, %18 ]
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  %17 = icmp eq ptr %7, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = add nuw nsw i64 %14, 1
  %20 = icmp eq i64 %19, %3
  br i1 %20, label %21, label %13, !llvm.loop !93

21:                                               ; preds = %18, %13, %2
  %22 = phi i64 [ 0, %2 ], [ %3, %18 ], [ %14, %13 ]
  %23 = and i64 %22, 4294967295
  %24 = icmp eq i64 %23, %3
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 %3
  %27 = load ptr, ptr %26, align 8, !tbaa !68
  tail call void @x264_free(ptr noundef %27) #9
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 %3
  %29 = load ptr, ptr %28, align 8, !tbaa !68
  tail call void @x264_free(ptr noundef %29) #9
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 %3
  %31 = load ptr, ptr %30, align 8, !tbaa !68
  tail call void @x264_free(ptr noundef %31) #9
  br label %32

32:                                               ; preds = %25, %21
  %33 = icmp eq i64 %3, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 %3
  %36 = load ptr, ptr %35, align 8, !tbaa !68
  br label %37

37:                                               ; preds = %34, %42
  %38 = phi i64 [ 0, %34 ], [ %43, %42 ]
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !68
  %41 = icmp eq ptr %36, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %3
  br i1 %44, label %45, label %37, !llvm.loop !94

45:                                               ; preds = %42, %37, %32
  %46 = phi i64 [ 0, %32 ], [ %3, %42 ], [ %38, %37 ]
  %47 = and i64 %46, 4294967295
  %48 = icmp eq i64 %47, %3
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 %3
  %51 = load ptr, ptr %50, align 8, !tbaa !68
  tail call void @x264_free(ptr noundef %51) #9
  br label %52

52:                                               ; preds = %49, %45
  %53 = add nuw nsw i64 %3, 1
  %54 = icmp eq i64 %53, 4
  br i1 %54, label %8, label %2, !llvm.loop !95

55:                                               ; preds = %8, %87
  %56 = phi i64 [ 0, %8 ], [ %88, %87 ]
  br label %58

57:                                               ; preds = %87
  ret void

58:                                               ; preds = %55, %61
  %59 = phi i64 [ 1, %61 ], [ 0, %55 ]
  %60 = icmp ugt i64 %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load ptr, ptr %10, align 8, !tbaa !68
  %63 = load ptr, ptr %9, align 8, !tbaa !68
  %64 = icmp eq ptr %62, %63
  br i1 %64, label %65, label %58, !llvm.loop !96

65:                                               ; preds = %61, %58
  %66 = icmp eq i64 %59, %56
  br i1 %66, label %67, label %74

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 34, i64 %56
  %69 = load ptr, ptr %68, align 8, !tbaa !68
  tail call void @x264_free(ptr noundef %69) #9
  %70 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 %56
  %71 = load ptr, ptr %70, align 8, !tbaa !68
  tail call void @x264_free(ptr noundef %71) #9
  %72 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 32, i64 %56
  %73 = load ptr, ptr %72, align 8, !tbaa !68
  tail call void @x264_free(ptr noundef %73) #9
  br label %74

74:                                               ; preds = %67, %65
  br label %75

75:                                               ; preds = %74, %78
  %76 = phi i64 [ 1, %78 ], [ 0, %74 ]
  %77 = icmp ugt i64 %56, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load ptr, ptr %12, align 8, !tbaa !68
  %80 = load ptr, ptr %11, align 8, !tbaa !68
  %81 = icmp eq ptr %79, %80
  br i1 %81, label %82, label %75, !llvm.loop !97

82:                                               ; preds = %78, %75
  %83 = icmp eq i64 %76, %56
  br i1 %83, label %84, label %87

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 36, i64 %56
  %86 = load ptr, ptr %85, align 8, !tbaa !68
  tail call void @x264_free(ptr noundef %86) #9
  br label %87

87:                                               ; preds = %84, %82
  %88 = add nuw nsw i64 %56, 1
  %89 = icmp eq i64 %56, 0
  br i1 %89, label %55, label %57, !llvm.loop !98
}

declare void @x264_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_cqm_parse_file(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 2, ptr %3, align 16, !tbaa !99
  %4 = tail call ptr @x264_slurp_file(ptr noundef %1) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 35) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %10

9:                                                ; preds = %2
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef %1) #9
  br label %33

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %13, %10 ], [ %7, %6 ]
  %12 = tail call i64 @strcspn(ptr noundef nonnull %11, ptr noundef nonnull @.str.4) #10
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %11, i8 32, i64 %12, i1 false)
  %13 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 35) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %10, !llvm.loop !100

15:                                               ; preds = %10, %6
  %16 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 30
  %17 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str.5, ptr noundef nonnull %16, ptr noundef nonnull @x264_cqm_jvt4i, i32 noundef 16)
  %18 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 31
  %19 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str.6, ptr noundef nonnull %18, ptr noundef nonnull @x264_cqm_jvt4i, i32 noundef 16)
  %20 = or i32 %19, %17
  %21 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 32
  %22 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str.7, ptr noundef nonnull %21, ptr noundef nonnull @x264_cqm_jvt4p, i32 noundef 16)
  %23 = or i32 %20, %22
  %24 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 33
  %25 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str.8, ptr noundef nonnull %24, ptr noundef nonnull @x264_cqm_jvt4p, i32 noundef 16)
  %26 = or i32 %23, %25
  %27 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 34
  %28 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str.9, ptr noundef nonnull %27, ptr noundef nonnull @x264_cqm_jvt8i, i32 noundef 64)
  %29 = or i32 %26, %28
  %30 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 35
  %31 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str.10, ptr noundef nonnull %30, ptr noundef nonnull @x264_cqm_jvt8p, i32 noundef 64)
  %32 = or i32 %29, %31
  tail call void @x264_free(ptr noundef nonnull %4) #9
  br label %33

33:                                               ; preds = %15, %9
  %34 = phi i32 [ %32, %15 ], [ -1, %9 ]
  ret i32 %34
}

declare ptr @x264_slurp_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %2) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = zext nneg i32 %5 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 16, i64 %11, i1 false)
  br label %67

12:                                               ; preds = %6
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #10
  %14 = getelementptr inbounds i8, ptr %8, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !73
  %16 = add i8 %15, -85
  %17 = icmp ult i8 %16, 2
  %18 = zext i1 %17 to i64
  %19 = getelementptr inbounds i8, ptr %14, i64 %18
  %20 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) @.str.11) #10
  %21 = icmp sgt i32 %5, 0
  br i1 %21, label %22, label %58

22:                                               ; preds = %12
  %23 = zext nneg i32 %5 to i64
  %24 = zext nneg i32 %5 to i64
  br label %25

25:                                               ; preds = %22, %51
  %26 = phi i64 [ 0, %22 ], [ %52, %51 ]
  %27 = phi i32 [ undef, %22 ], [ %50, %51 ]
  %28 = phi ptr [ %19, %22 ], [ %32, %51 ]
  %29 = call ptr @strpbrk(ptr noundef %28, ptr noundef nonnull @.str.12) #10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %54, label %31

31:                                               ; preds = %25
  %32 = call ptr @strpbrk(ptr noundef nonnull %29, ptr noundef nonnull @.str.13) #10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %56, label %34

34:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 -1, ptr %7, align 4, !tbaa !34
  %35 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %32, ptr noundef nonnull @.str.14, ptr noundef nonnull %7) #9
  %36 = icmp eq i64 %26, 0
  %37 = load i32, ptr %7, align 4
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %4, i64 %23, i1 false)
  br label %48

41:                                               ; preds = %34
  %42 = add i32 %37, -256
  %43 = icmp ult i32 %42, -255
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %2) #9
  br label %48

45:                                               ; preds = %41
  %46 = trunc i32 %37 to i8
  %47 = getelementptr inbounds i8, ptr %3, i64 %26
  store i8 %46, ptr %47, align 1, !tbaa !73
  br label %48

48:                                               ; preds = %45, %44, %40
  %49 = phi i1 [ false, %40 ], [ false, %44 ], [ true, %45 ]
  %50 = phi i32 [ 0, %40 ], [ -1, %44 ], [ %27, %45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  br i1 %49, label %51, label %67

51:                                               ; preds = %48
  %52 = add nuw nsw i64 %26, 1
  %53 = icmp eq i64 %52, %24
  br i1 %53, label %58, label %25, !llvm.loop !101

54:                                               ; preds = %25
  %55 = trunc i64 %26 to i32
  br label %58

56:                                               ; preds = %31
  %57 = trunc i64 %26 to i32
  br label %58

58:                                               ; preds = %54, %56, %51, %12
  %59 = phi i32 [ 0, %12 ], [ %55, %54 ], [ %57, %56 ], [ %5, %51 ]
  %60 = phi ptr [ %19, %12 ], [ null, %54 ], [ null, %56 ], [ %32, %51 ]
  %61 = icmp eq ptr %20, null
  %62 = icmp ule ptr %60, %20
  %63 = or i1 %61, %62
  %64 = icmp eq i32 %59, %5
  %65 = and i1 %64, %63
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef %2) #9
  br label %67

67:                                               ; preds = %48, %66, %58, %10
  %68 = phi i32 [ 0, %10 ], [ -1, %66 ], [ 0, %58 ], [ %50, %48 ]
  ret i32 %68
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

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
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!42, !45, i64 3328}
!42 = !{!"x264_t", !43, i64 0, !36, i64 704, !35, i64 1736, !35, i64 1740, !35, i64 1744, !35, i64 1748, !35, i64 1752, !49, i64 1760, !45, i64 1832, !35, i64 1840, !35, i64 1844, !35, i64 1848, !35, i64 1852, !35, i64 1856, !35, i64 1860, !35, i64 1864, !35, i64 1868, !35, i64 1872, !35, i64 1876, !35, i64 1880, !35, i64 1884, !35, i64 1888, !35, i64 1892, !36, i64 1896, !45, i64 3200, !36, i64 3208, !45, i64 3328, !35, i64 3336, !35, i64 3340, !36, i64 3344, !36, i64 3376, !36, i64 3392, !36, i64 3424, !36, i64 3440, !36, i64 3472, !36, i64 3488, !36, i64 3520, !36, i64 3536, !36, i64 4272, !45, i64 7216, !52, i64 7232, !53, i64 13904, !54, i64 14416, !45, i64 14680, !45, i64 14688, !35, i64 14696, !36, i64 14704, !35, i64 14856, !36, i64 14864, !36, i64 15016, !35, i64 15024, !35, i64 15028, !51, i64 15032, !55, i64 15040, !56, i64 16368, !45, i64 26704, !59, i64 26712, !36, i64 30400, !36, i64 30912, !36, i64 31168, !45, i64 31176, !36, i64 31184, !36, i64 31232, !36, i64 31248, !36, i64 31304, !36, i64 31360, !36, i64 31456, !45, i64 31552, !62, i64 31560, !63, i64 32616, !64, i64 32912, !65, i64 33032, !66, i64 33080, !67, i64 33256, !45, i64 33328}
!43 = !{!"x264_param_t", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !44, i64 44, !35, i64 80, !35, i64 84, !35, i64 88, !35, i64 92, !35, i64 96, !35, i64 100, !35, i64 104, !35, i64 108, !35, i64 112, !35, i64 116, !35, i64 120, !35, i64 124, !35, i64 128, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !45, i64 152, !36, i64 160, !36, i64 176, !36, i64 192, !36, i64 208, !36, i64 224, !36, i64 288, !45, i64 352, !45, i64 360, !35, i64 368, !35, i64 372, !45, i64 376, !46, i64 384, !48, i64 488, !35, i64 632, !35, i64 636, !35, i64 640, !35, i64 644, !35, i64 648, !35, i64 652, !35, i64 656, !35, i64 660, !35, i64 664, !35, i64 668, !35, i64 672, !35, i64 676, !35, i64 680, !35, i64 684, !35, i64 688, !35, i64 692, !45, i64 696}
!44 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32}
!45 = !{!"any pointer", !36, i64 0}
!46 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !35, i64 60, !35, i64 64, !35, i64 68, !47, i64 72, !47, i64 76, !35, i64 80, !36, i64 84, !35, i64 92, !35, i64 96}
!47 = !{!"float", !36, i64 0}
!48 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !35, i64 36, !35, i64 40, !47, i64 44, !47, i64 48, !47, i64 52, !35, i64 56, !47, i64 60, !35, i64 64, !35, i64 68, !35, i64 72, !45, i64 80, !35, i64 88, !45, i64 96, !47, i64 104, !47, i64 108, !47, i64 112, !45, i64 120, !35, i64 128, !45, i64 136}
!49 = !{!"", !35, i64 0, !35, i64 4, !45, i64 8, !35, i64 16, !45, i64 24, !50, i64 32}
!50 = !{!"bs_s", !45, i64 0, !45, i64 8, !45, i64 16, !51, i64 24, !35, i64 32, !35, i64 36}
!51 = !{!"long", !36, i64 0}
!52 = !{!"", !45, i64 0, !45, i64 8, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !36, i64 60, !35, i64 68, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84, !35, i64 88, !35, i64 92, !36, i64 96, !36, i64 352, !35, i64 6496, !35, i64 6500, !36, i64 6504, !35, i64 6632, !35, i64 6636, !35, i64 6640, !35, i64 6644, !35, i64 6648, !35, i64 6652, !35, i64 6656, !35, i64 6660}
!53 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !45, i64 16, !45, i64 24, !45, i64 32, !35, i64 48, !36, i64 52}
!54 = !{!"", !45, i64 0, !36, i64 8, !45, i64 24, !36, i64 32, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !51, i64 208, !51, i64 216, !36, i64 224, !51, i64 240, !51, i64 248, !35, i64 256, !35, i64 260}
!55 = !{!"", !36, i64 0, !36, i64 32, !36, i64 48, !36, i64 560}
!56 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !35, i64 60, !35, i64 64, !35, i64 68, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !35, i64 120, !36, i64 124, !36, i64 140, !35, i64 204, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !35, i64 224, !35, i64 228, !35, i64 232, !35, i64 236, !35, i64 240, !35, i64 244, !45, i64 248, !45, i64 256, !45, i64 264, !45, i64 272, !45, i64 280, !45, i64 288, !45, i64 296, !36, i64 304, !36, i64 320, !36, i64 336, !36, i64 352, !45, i64 864, !45, i64 872, !45, i64 880, !36, i64 888, !35, i64 1016, !35, i64 1020, !36, i64 1024, !35, i64 1028, !35, i64 1032, !35, i64 1036, !35, i64 1040, !35, i64 1044, !35, i64 1048, !35, i64 1052, !35, i64 1056, !35, i64 1060, !57, i64 1072, !58, i64 8656, !35, i64 9424, !35, i64 9428, !35, i64 9432, !35, i64 9436, !35, i64 9440, !35, i64 9444, !35, i64 9448, !35, i64 9452, !36, i64 9456, !35, i64 9472, !35, i64 9476, !36, i64 9480, !45, i64 9992, !36, i64 10000, !45, i64 10256, !36, i64 10264, !35, i64 10284, !36, i64 10288}
!57 = !{!"", !36, i64 0, !36, i64 384, !36, i64 1248, !36, i64 1504, !36, i64 1760, !36, i64 2144, !36, i64 2624, !36, i64 2640, !35, i64 2656, !35, i64 2660, !36, i64 2672, !36, i64 3184, !36, i64 3696, !36, i64 3776, !36, i64 3904, !36, i64 3928, !36, i64 3952, !36, i64 3976, !36, i64 3984, !36, i64 7056, !36, i64 7312, !36, i64 7568}
!58 = !{!"", !36, i64 0, !36, i64 48, !36, i64 96, !36, i64 176, !36, i64 496, !36, i64 656, !36, i64 696, !36, i64 728, !35, i64 736, !36, i64 740, !35, i64 744, !35, i64 748, !35, i64 752, !35, i64 756}
!59 = !{!"", !60, i64 0, !36, i64 704, !36, i64 728, !36, i64 768, !36, i64 808, !36, i64 880, !36, i64 920, !36, i64 960, !36, i64 1000, !36, i64 1040, !36, i64 1080, !36, i64 1120, !36, i64 1880, !36, i64 2152, !36, i64 2168, !36, i64 3192, !36, i64 3240, !36, i64 3656, !36, i64 3664, !36, i64 3672}
!60 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !36, i64 12, !35, i64 88, !35, i64 92, !35, i64 96, !36, i64 100, !36, i64 108, !36, i64 364, !36, i64 432, !36, i64 456, !36, i64 664, !36, i64 672, !61, i64 696}
!61 = !{!"double", !36, i64 0}
!62 = !{!"", !36, i64 0, !36, i64 56, !36, i64 112, !36, i64 168, !36, i64 224, !36, i64 256, !36, i64 312, !36, i64 368, !36, i64 424, !36, i64 480, !36, i64 536, !45, i64 592, !36, i64 600, !36, i64 632, !45, i64 664, !45, i64 672, !36, i64 680, !36, i64 736, !36, i64 792, !36, i64 848, !36, i64 904, !45, i64 960, !45, i64 968, !45, i64 976, !45, i64 984, !45, i64 992, !45, i64 1000, !45, i64 1008, !45, i64 1016, !45, i64 1024, !45, i64 1032, !45, i64 1040, !45, i64 1048}
!63 = !{!"", !45, i64 0, !45, i64 8, !45, i64 16, !36, i64 24, !36, i64 104, !45, i64 160, !45, i64 168, !45, i64 176, !45, i64 184, !45, i64 192, !45, i64 200, !45, i64 208, !45, i64 216, !45, i64 224, !45, i64 232, !45, i64 240, !45, i64 248, !45, i64 256, !45, i64 264, !45, i64 272, !45, i64 280, !45, i64 288}
!64 = !{!"", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112}
!65 = !{!"", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40}
!66 = !{!"", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !36, i64 88, !36, i64 136}
!67 = !{!"", !36, i64 0, !36, i64 16, !36, i64 32, !36, i64 48, !45, i64 64}
!68 = !{!45, !45, i64 0}
!69 = distinct !{!69, !39, !40}
!70 = distinct !{!70, !39, !40}
!71 = distinct !{!71, !39, !40}
!72 = distinct !{!72, !39, !40}
!73 = !{!36, !36, i64 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"short", !36, i64 0}
!76 = distinct !{!76, !39, !40}
!77 = distinct !{!77, !39, !40}
!78 = distinct !{!78, !39, !40}
!79 = distinct !{!79, !39, !40}
!80 = distinct !{!80, !39, !40}
!81 = distinct !{!81, !39, !40}
!82 = distinct !{!82, !39, !40}
!83 = distinct !{!83, !39, !40}
!84 = !{!42, !35, i64 25812}
!85 = !{!42, !35, i64 392}
!86 = distinct !{!86, !39, !40}
!87 = distinct !{!87, !39, !40}
!88 = distinct !{!88, !39, !40}
!89 = distinct !{!89, !39, !40}
!90 = distinct !{!90, !39, !40}
!91 = !{!42, !35, i64 496}
!92 = !{!42, !45, i64 7216}
!93 = distinct !{!93, !39, !40}
!94 = distinct !{!94, !39, !40}
!95 = distinct !{!95, !39, !40}
!96 = distinct !{!96, !39, !40}
!97 = distinct !{!97, !39, !40}
!98 = distinct !{!98, !39, !40}
!99 = !{!42, !35, i64 144}
!100 = distinct !{!100, !39, !40}
!101 = distinct !{!101, !39, !40}
