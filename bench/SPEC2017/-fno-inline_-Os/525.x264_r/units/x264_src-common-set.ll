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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @x264_cqm_init(ptr noundef %0) local_unnamed_addr #0 {
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
  br label %19

19:                                               ; preds = %1, %95
  %20 = phi i64 [ 0, %1 ], [ %96, %95 ]
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %55, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %18, align 16, !tbaa !38
  %24 = getelementptr inbounds %struct.x264_pps_t, ptr %23, i64 0, i32 17, i64 %20
  %25 = load ptr, ptr %24, align 8, !tbaa !65
  br label %39

26:                                               ; preds = %95
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 34
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 34, i64 1
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 1
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 32
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 32, i64 1
  %33 = icmp eq i32 %14, %11
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 36
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 36, i64 1
  br label %98

36:                                               ; preds = %39
  %37 = add nuw nsw i64 %40, 1
  %38 = icmp eq i64 %37, %20
  br i1 %38, label %55, label %39, !llvm.loop !66

39:                                               ; preds = %22, %36
  %40 = phi i64 [ 0, %22 ], [ %37, %36 ]
  %41 = getelementptr inbounds %struct.x264_pps_t, ptr %23, i64 0, i32 17, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !65
  %43 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %25, ptr noundef nonnull dereferenceable(16) %42, i64 16)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %36

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 %40
  %47 = load ptr, ptr %46, align 8, !tbaa !65
  %48 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 %20
  store ptr %47, ptr %48, align 8, !tbaa !65
  %49 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 %40
  %50 = load ptr, ptr %49, align 8, !tbaa !65
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 %20
  store ptr %50, ptr %51, align 8, !tbaa !65
  %52 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 %40
  %53 = load ptr, ptr %52, align 8, !tbaa !65
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 %20
  store ptr %53, ptr %54, align 8, !tbaa !65
  br label %67

55:                                               ; preds = %36, %19
  %56 = tail call ptr @x264_malloc(i32 noundef 1664) #10
  %57 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 %20
  store ptr %56, ptr %57, align 8, !tbaa !65
  %58 = icmp eq ptr %56, null
  br i1 %58, label %410, label %59

59:                                               ; preds = %55
  %60 = tail call ptr @x264_malloc(i32 noundef 384) #10
  %61 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 %20
  store ptr %60, ptr %61, align 8, !tbaa !65
  %62 = icmp eq ptr %60, null
  br i1 %62, label %410, label %63

63:                                               ; preds = %59
  %64 = tail call ptr @x264_malloc(i32 noundef 3328) #10
  %65 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 %20
  store ptr %64, ptr %65, align 8, !tbaa !65
  %66 = icmp eq ptr %64, null
  br i1 %66, label %410, label %67

67:                                               ; preds = %63, %45
  br i1 %21, label %91, label %68

68:                                               ; preds = %67
  %69 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 %20
  %70 = load i32, ptr %69, align 4, !tbaa !34
  br label %71

71:                                               ; preds = %68, %84
  %72 = phi i64 [ 0, %68 ], [ %85, %84 ]
  %73 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !34
  %75 = icmp eq i32 %74, %70
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load ptr, ptr %18, align 16, !tbaa !38
  %78 = getelementptr inbounds %struct.x264_pps_t, ptr %77, i64 0, i32 17, i64 %20
  %79 = load ptr, ptr %78, align 8, !tbaa !65
  %80 = getelementptr inbounds %struct.x264_pps_t, ptr %77, i64 0, i32 17, i64 %72
  %81 = load ptr, ptr %80, align 8, !tbaa !65
  %82 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %79, ptr noundef nonnull dereferenceable(16) %81, i64 16)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %71, %76
  %85 = add nuw nsw i64 %72, 1
  %86 = icmp eq i64 %85, %20
  br i1 %86, label %91, label %71, !llvm.loop !68

87:                                               ; preds = %76
  %88 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 %72
  %89 = load ptr, ptr %88, align 8, !tbaa !65
  %90 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 %20
  store ptr %89, ptr %90, align 8, !tbaa !65
  br label %95

91:                                               ; preds = %84, %67
  %92 = tail call ptr @x264_malloc(i32 noundef 1664) #10
  %93 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 %20
  store ptr %92, ptr %93, align 8, !tbaa !65
  %94 = icmp eq ptr %92, null
  br i1 %94, label %410, label %95

95:                                               ; preds = %91, %87
  %96 = add nuw nsw i64 %20, 1
  %97 = icmp eq i64 %96, 4
  br i1 %97, label %26, label %19, !llvm.loop !69

98:                                               ; preds = %148, %26
  %99 = phi i64 [ 0, %26 ], [ %149, %148 ]
  br label %100

100:                                              ; preds = %98, %103
  %101 = phi i64 [ 1, %103 ], [ 0, %98 ]
  %102 = icmp ult i64 %101, %99
  br i1 %102, label %103, label %115

103:                                              ; preds = %100
  %104 = load ptr, ptr %18, align 16, !tbaa !38
  %105 = getelementptr inbounds %struct.x264_pps_t, ptr %104, i64 0, i32 17, i64 5
  %106 = load ptr, ptr %105, align 8, !tbaa !65
  %107 = getelementptr inbounds %struct.x264_pps_t, ptr %104, i64 0, i32 17, i64 4
  %108 = load ptr, ptr %107, align 8, !tbaa !65
  %109 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(64) %106, ptr noundef nonnull dereferenceable(64) %108, i64 64)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %100, !llvm.loop !70

111:                                              ; preds = %103
  %112 = load ptr, ptr %27, align 8, !tbaa !65
  store ptr %112, ptr %28, align 8, !tbaa !65
  %113 = load ptr, ptr %29, align 8, !tbaa !65
  store ptr %113, ptr %30, align 8, !tbaa !65
  %114 = load ptr, ptr %31, align 8, !tbaa !65
  store ptr %114, ptr %32, align 8, !tbaa !65
  br label %129

115:                                              ; preds = %100
  %116 = tail call ptr @x264_malloc(i32 noundef 6656) #10
  %117 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 34, i64 %99
  store ptr %116, ptr %117, align 8, !tbaa !65
  %118 = icmp eq ptr %116, null
  br i1 %118, label %410, label %119

119:                                              ; preds = %115
  %120 = tail call ptr @x264_malloc(i32 noundef 1536) #10
  %121 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 %99
  store ptr %120, ptr %121, align 8, !tbaa !65
  %122 = icmp eq ptr %120, null
  br i1 %122, label %410, label %123

123:                                              ; preds = %119
  %124 = tail call ptr @x264_malloc(i32 noundef 13312) #10
  %125 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 32, i64 %99
  store ptr %124, ptr %125, align 8, !tbaa !65
  %126 = icmp eq ptr %124, null
  br i1 %126, label %410, label %127

127:                                              ; preds = %123
  %128 = icmp eq i64 %99, 0
  br i1 %128, label %143, label %129

129:                                              ; preds = %111, %127
  %130 = icmp eq i64 %99, 1
  br label %131

131:                                              ; preds = %129, %140
  br i1 %33, label %132, label %140

132:                                              ; preds = %131
  %133 = load ptr, ptr %18, align 16, !tbaa !38
  %134 = getelementptr inbounds %struct.x264_pps_t, ptr %133, i64 0, i32 17, i64 5
  %135 = load ptr, ptr %134, align 8, !tbaa !65
  %136 = getelementptr inbounds %struct.x264_pps_t, ptr %133, i64 0, i32 17, i64 4
  %137 = load ptr, ptr %136, align 8, !tbaa !65
  %138 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(64) %135, ptr noundef nonnull dereferenceable(64) %137, i64 64)
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %131, %132
  br i1 %130, label %143, label %131, !llvm.loop !71

141:                                              ; preds = %132
  %142 = load ptr, ptr %34, align 8, !tbaa !65
  store ptr %142, ptr %35, align 8, !tbaa !65
  br label %150

143:                                              ; preds = %140, %127
  %144 = phi i1 [ true, %127 ], [ false, %140 ]
  %145 = tail call ptr @x264_malloc(i32 noundef 6656) #10
  %146 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 36, i64 %99
  store ptr %145, ptr %146, align 8, !tbaa !65
  %147 = icmp eq ptr %145, null
  br i1 %147, label %410, label %148

148:                                              ; preds = %143
  %149 = add nuw nsw i64 %99, 1
  br i1 %144, label %98, label %150, !llvm.loop !72

150:                                              ; preds = %148, %141
  br label %151

151:                                              ; preds = %150, %171
  %152 = phi i64 [ %172, %171 ], [ 0, %150 ]
  br label %155

153:                                              ; preds = %171
  %154 = load ptr, ptr %18, align 16, !tbaa !38
  br label %193

155:                                              ; preds = %151, %155
  %156 = phi i64 [ 0, %151 ], [ %169, %155 ]
  %157 = and i64 %156, 1
  %158 = lshr i64 %156, 2
  %159 = and i64 %158, 1
  %160 = add nuw nsw i64 %159, %157
  %161 = getelementptr inbounds [6 x [3 x i8]], ptr @dequant4_scale, i64 0, i64 %152, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !73
  %163 = zext i8 %162 to i32
  %164 = getelementptr inbounds [6 x [16 x i32]], ptr %4, i64 0, i64 %152, i64 %156
  store i32 %163, ptr %164, align 4, !tbaa !34
  %165 = getelementptr inbounds [6 x [3 x i16]], ptr @quant4_scale, i64 0, i64 %152, i64 %160
  %166 = load i16, ptr %165, align 2, !tbaa !74
  %167 = zext i16 %166 to i32
  %168 = getelementptr inbounds [6 x [16 x i32]], ptr %2, i64 0, i64 %152, i64 %156
  store i32 %167, ptr %168, align 4, !tbaa !34
  %169 = add nuw nsw i64 %156, 1
  %170 = icmp eq i64 %169, 16
  br i1 %170, label %174, label %155, !llvm.loop !76

171:                                              ; preds = %174
  %172 = add nuw nsw i64 %152, 1
  %173 = icmp eq i64 %172, 6
  br i1 %173, label %153, label %151, !llvm.loop !77

174:                                              ; preds = %155, %174
  %175 = phi i64 [ %191, %174 ], [ 0, %155 ]
  %176 = lshr i64 %175, 1
  %177 = and i64 %176, 12
  %178 = and i64 %175, 3
  %179 = or disjoint i64 %177, %178
  %180 = getelementptr inbounds [16 x i8], ptr @quant8_scan, i64 0, i64 %179
  %181 = load i8, ptr %180, align 1, !tbaa !73
  %182 = zext i8 %181 to i64
  %183 = getelementptr inbounds [6 x [6 x i8]], ptr @dequant8_scale, i64 0, i64 %152, i64 %182
  %184 = load i8, ptr %183, align 1, !tbaa !73
  %185 = zext i8 %184 to i32
  %186 = getelementptr inbounds [6 x [64 x i32]], ptr %5, i64 0, i64 %152, i64 %175
  store i32 %185, ptr %186, align 4, !tbaa !34
  %187 = getelementptr inbounds [6 x [6 x i16]], ptr @quant8_scale, i64 0, i64 %152, i64 %182
  %188 = load i16, ptr %187, align 2, !tbaa !74
  %189 = zext i16 %188 to i32
  %190 = getelementptr inbounds [6 x [64 x i32]], ptr %3, i64 0, i64 %152, i64 %175
  store i32 %189, ptr %190, align 4, !tbaa !34
  %191 = add nuw nsw i64 %175, 1
  %192 = icmp eq i64 %191, 64
  br i1 %192, label %171, label %174, !llvm.loop !78

193:                                              ; preds = %153, %234
  %194 = phi i64 [ 0, %153 ], [ %235, %234 ]
  br label %197

195:                                              ; preds = %234
  %196 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 2
  br label %258

197:                                              ; preds = %193, %203
  %198 = phi i64 [ 0, %193 ], [ %204, %203 ]
  %199 = getelementptr inbounds %struct.x264_pps_t, ptr %154, i64 0, i32 17, i64 %198
  %200 = load ptr, ptr %199, align 8, !tbaa !65
  %201 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 %198
  %202 = load ptr, ptr %201, align 8, !tbaa !65
  br label %206

203:                                              ; preds = %206
  %204 = add nuw nsw i64 %198, 1
  %205 = icmp eq i64 %204, 4
  br i1 %205, label %226, label %197, !llvm.loop !79

206:                                              ; preds = %197, %206
  %207 = phi i64 [ 0, %197 ], [ %224, %206 ]
  %208 = getelementptr inbounds [6 x [16 x i32]], ptr %4, i64 0, i64 %194, i64 %207
  %209 = load i32, ptr %208, align 4, !tbaa !34
  %210 = getelementptr inbounds i8, ptr %200, i64 %207
  %211 = load i8, ptr %210, align 1, !tbaa !73
  %212 = zext i8 %211 to i32
  %213 = mul nsw i32 %209, %212
  %214 = getelementptr inbounds [16 x i32], ptr %202, i64 %194, i64 %207
  store i32 %213, ptr %214, align 4, !tbaa !34
  %215 = getelementptr inbounds [6 x [16 x i32]], ptr %2, i64 0, i64 %194, i64 %207
  %216 = load i32, ptr %215, align 4, !tbaa !34
  %217 = shl nsw i32 %216, 4
  %218 = load i8, ptr %210, align 1, !tbaa !73
  %219 = zext i8 %218 to i32
  %220 = lshr i32 %219, 1
  %221 = add nsw i32 %220, %217
  %222 = sdiv i32 %221, %219
  %223 = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %6, i64 0, i64 %198, i64 %194, i64 %207
  store i32 %222, ptr %223, align 4, !tbaa !34
  %224 = add nuw nsw i64 %207, 1
  %225 = icmp eq i64 %224, 16
  br i1 %225, label %203, label %206, !llvm.loop !80

226:                                              ; preds = %203, %237
  %227 = phi i1 [ false, %237 ], [ true, %203 ]
  %228 = phi i64 [ 1, %237 ], [ 0, %203 ]
  %229 = or disjoint i64 %228, 4
  %230 = getelementptr inbounds %struct.x264_pps_t, ptr %154, i64 0, i32 17, i64 %229
  %231 = load ptr, ptr %230, align 8, !tbaa !65
  %232 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 %228
  %233 = load ptr, ptr %232, align 8, !tbaa !65
  br label %238

234:                                              ; preds = %237
  %235 = add nuw nsw i64 %194, 1
  %236 = icmp eq i64 %235, 6
  br i1 %236, label %195, label %193, !llvm.loop !81

237:                                              ; preds = %238
  br i1 %227, label %226, label %234, !llvm.loop !82

238:                                              ; preds = %226, %238
  %239 = phi i64 [ 0, %226 ], [ %256, %238 ]
  %240 = getelementptr inbounds [6 x [64 x i32]], ptr %5, i64 0, i64 %194, i64 %239
  %241 = load i32, ptr %240, align 4, !tbaa !34
  %242 = getelementptr inbounds i8, ptr %231, i64 %239
  %243 = load i8, ptr %242, align 1, !tbaa !73
  %244 = zext i8 %243 to i32
  %245 = mul nsw i32 %241, %244
  %246 = getelementptr inbounds [64 x i32], ptr %233, i64 %194, i64 %239
  store i32 %245, ptr %246, align 4, !tbaa !34
  %247 = getelementptr inbounds [6 x [64 x i32]], ptr %3, i64 0, i64 %194, i64 %239
  %248 = load i32, ptr %247, align 4, !tbaa !34
  %249 = shl nsw i32 %248, 4
  %250 = load i8, ptr %242, align 1, !tbaa !73
  %251 = zext i8 %250 to i32
  %252 = lshr i32 %251, 1
  %253 = add nsw i32 %252, %249
  %254 = sdiv i32 %253, %251
  %255 = getelementptr inbounds [2 x [6 x [64 x i32]]], ptr %7, i64 0, i64 %228, i64 %194, i64 %239
  store i32 %254, ptr %255, align 4, !tbaa !34
  %256 = add nuw nsw i64 %239, 1
  %257 = icmp eq i64 %256, 64
  br i1 %257, label %237, label %238, !llvm.loop !83

258:                                              ; preds = %195, %383
  %259 = phi i64 [ 0, %195 ], [ %385, %383 ]
  %260 = phi i32 [ -1, %195 ], [ %384, %383 ]
  %261 = phi i32 [ -1, %195 ], [ %339, %383 ]
  %262 = trunc i64 %259 to i32
  %263 = udiv i32 %262, 6
  %264 = add nuw nsw i32 %263, 23
  %265 = zext nneg i32 %264 to i64
  %266 = shl nuw i64 1, %265
  %267 = urem i32 %262, 6
  %268 = zext nneg i32 %267 to i64
  %269 = icmp ult i64 %259, 12
  %270 = add nsw i32 %263, -1
  %271 = add nsw i32 %263, -2
  %272 = shl nuw nsw i32 1, %271
  %273 = sub nsw i32 1, %263
  br label %278

274:                                              ; preds = %383
  %275 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %276 = load i32, ptr %275, align 4, !tbaa !84
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %387, label %411

278:                                              ; preds = %258, %302
  %279 = phi i64 [ 0, %258 ], [ %303, %302 ]
  %280 = phi i32 [ %260, %258 ], [ %333, %302 ]
  %281 = phi i32 [ %261, %258 ], [ %339, %302 ]
  %282 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 %279
  %283 = load ptr, ptr %282, align 8, !tbaa !65
  %284 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 %279
  %285 = load ptr, ptr %284, align 8, !tbaa !65
  %286 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 %279
  %287 = load i32, ptr %286, align 4, !tbaa !34
  %288 = shl i32 %287, 10
  %289 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 %279
  %290 = load ptr, ptr %289, align 8, !tbaa !65
  %291 = icmp ult i64 %279, 2
  br label %305

292:                                              ; preds = %302
  %293 = load i32, ptr %196, align 8, !tbaa !85
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %383, label %295

295:                                              ; preds = %292
  %296 = add nuw nsw i32 %263, 24
  %297 = zext nneg i32 %296 to i64
  %298 = shl nuw i64 1, %297
  %299 = icmp ult i64 %259, 6
  %300 = shl nuw nsw i32 1, %270
  %301 = sub nsw i32 0, %263
  br label %342

302:                                              ; preds = %305
  %303 = add nuw nsw i64 %279, 1
  %304 = icmp eq i64 %303, 4
  br i1 %304, label %292, label %278, !llvm.loop !86

305:                                              ; preds = %278, %305
  %306 = phi i64 [ 0, %278 ], [ %340, %305 ]
  %307 = phi i32 [ %280, %278 ], [ %333, %305 ]
  %308 = phi i32 [ %281, %278 ], [ %339, %305 ]
  %309 = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %6, i64 0, i64 %279, i64 %268, i64 %306
  %310 = load i32, ptr %309, align 4, !tbaa !34
  %311 = sext i32 %310 to i64
  %312 = udiv i64 %266, %311
  %313 = trunc i64 %312 to i32
  %314 = getelementptr inbounds [16 x i32], ptr %283, i64 %259, i64 %306
  store i32 %313, ptr %314, align 4, !tbaa !34
  %315 = shl i32 %310, %273
  %316 = add nsw i32 %310, %272
  %317 = ashr i32 %316, %270
  %318 = select i1 %269, i32 %315, i32 %317
  %319 = trunc i32 %318 to i16
  %320 = getelementptr inbounds [16 x i16], ptr %285, i64 %259, i64 %306
  store i16 %319, ptr %320, align 2, !tbaa !74
  %321 = ashr i32 %318, 1
  %322 = add nsw i32 %288, %321
  %323 = sdiv i32 %322, %318
  %324 = sdiv i32 32768, %318
  %325 = tail call i32 @llvm.smin.i32(i32 %323, i32 %324)
  %326 = trunc i32 %325 to i16
  %327 = getelementptr inbounds [16 x i16], ptr %290, i64 %259, i64 %306
  store i16 %326, ptr %327, align 2, !tbaa !74
  %328 = icmp sgt i32 %318, 65535
  %329 = sext i32 %307 to i64
  %330 = icmp sgt i64 %259, %329
  %331 = select i1 %328, i1 %330, i1 false
  %332 = and i1 %291, %331
  %333 = select i1 %332, i32 %262, i32 %307
  %334 = sext i32 %308 to i64
  %335 = icmp sle i64 %259, %334
  %336 = xor i1 %328, true
  %337 = select i1 %336, i1 true, i1 %335
  %338 = or i1 %291, %337
  %339 = select i1 %338, i32 %308, i32 %262
  %340 = add nuw nsw i64 %306, 1
  %341 = icmp eq i64 %340, 16
  br i1 %341, label %302, label %305, !llvm.loop !87

342:                                              ; preds = %295, %355
  %343 = phi i1 [ true, %295 ], [ false, %355 ]
  %344 = phi i64 [ 0, %295 ], [ 1, %355 ]
  %345 = phi i32 [ %333, %295 ], [ %380, %355 ]
  %346 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 32, i64 %344
  %347 = load ptr, ptr %346, align 8, !tbaa !65
  %348 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 34, i64 %344
  %349 = load ptr, ptr %348, align 8, !tbaa !65
  %350 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 %344
  %351 = load i32, ptr %350, align 4, !tbaa !34
  %352 = shl i32 %351, 10
  %353 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 36, i64 %344
  %354 = load ptr, ptr %353, align 8, !tbaa !65
  br label %356

355:                                              ; preds = %356
  br i1 %343, label %342, label %383, !llvm.loop !88

356:                                              ; preds = %342, %356
  %357 = phi i64 [ 0, %342 ], [ %381, %356 ]
  %358 = phi i32 [ %345, %342 ], [ %380, %356 ]
  %359 = getelementptr inbounds [2 x [6 x [64 x i32]]], ptr %7, i64 0, i64 %344, i64 %268, i64 %357
  %360 = load i32, ptr %359, align 4, !tbaa !34
  %361 = sext i32 %360 to i64
  %362 = udiv i64 %298, %361
  %363 = trunc i64 %362 to i32
  %364 = getelementptr inbounds [64 x i32], ptr %347, i64 %259, i64 %357
  store i32 %363, ptr %364, align 4, !tbaa !34
  %365 = shl nuw nsw i32 %360, %301
  %366 = add nsw i32 %360, %300
  %367 = ashr i32 %366, %263
  %368 = select i1 %299, i32 %365, i32 %367
  %369 = trunc i32 %368 to i16
  %370 = getelementptr inbounds [64 x i16], ptr %349, i64 %259, i64 %357
  store i16 %369, ptr %370, align 2, !tbaa !74
  %371 = ashr i32 %368, 1
  %372 = add nsw i32 %352, %371
  %373 = sdiv i32 %372, %368
  %374 = sdiv i32 32768, %368
  %375 = tail call i32 @llvm.smin.i32(i32 %373, i32 %374)
  %376 = trunc i32 %375 to i16
  %377 = getelementptr inbounds [64 x i16], ptr %354, i64 %259, i64 %357
  store i16 %376, ptr %377, align 2, !tbaa !74
  %378 = icmp sgt i32 %368, 65535
  %379 = tail call i32 @llvm.smax.i32(i32 %262, i32 %358)
  %380 = select i1 %378, i32 %379, i32 %358
  %381 = add nuw nsw i64 %357, 1
  %382 = icmp eq i64 %381, 64
  br i1 %382, label %355, label %356, !llvm.loop !89

383:                                              ; preds = %355, %292
  %384 = phi i32 [ %333, %292 ], [ %380, %355 ]
  %385 = add nuw nsw i64 %259, 1
  %386 = icmp eq i64 %385, 52
  br i1 %386, label %274, label %258, !llvm.loop !90

387:                                              ; preds = %274
  %388 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 2
  %389 = load i32, ptr %388, align 8, !tbaa !91
  %390 = icmp slt i32 %384, %389
  br i1 %390, label %394, label %391

391:                                              ; preds = %387
  %392 = add nsw i32 %384, 1
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef %392) #10
  %393 = load i32, ptr %388, align 8, !tbaa !91
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %393) #10
  br label %411

394:                                              ; preds = %387
  %395 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 39
  %396 = load ptr, ptr %395, align 16, !tbaa !92
  %397 = sext i32 %389 to i64
  %398 = getelementptr inbounds i8, ptr %396, i64 %397
  %399 = load i8, ptr %398, align 1, !tbaa !73
  %400 = zext i8 %399 to i32
  %401 = icmp slt i32 %339, %400
  br i1 %401, label %411, label %402

402:                                              ; preds = %394
  %403 = add nuw nsw i32 %339, 1
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef %403) #10
  %404 = load ptr, ptr %395, align 16, !tbaa !92
  %405 = load i32, ptr %388, align 8, !tbaa !91
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i8, ptr %404, i64 %406
  %408 = load i8, ptr %407, align 1, !tbaa !73
  %409 = zext i8 %408 to i32
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %409) #10
  br label %411

410:                                              ; preds = %55, %59, %63, %91, %115, %119, %123, %143
  tail call void @x264_cqm_delete(ptr noundef nonnull %0) #11
  br label %411

411:                                              ; preds = %274, %394, %410, %402, %391
  %412 = phi i32 [ -1, %410 ], [ -1, %402 ], [ -1, %391 ], [ 0, %394 ], [ 0, %274 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 3072, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 1536, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1536, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1536, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %2) #9
  ret i32 %412
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @x264_malloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_cqm_delete(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %51
  %3 = phi i64 [ 0, %1 ], [ %52, %51 ]
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 %3
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  br label %13

8:                                                ; preds = %51
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 34
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 34, i64 1
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 36
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 36, i64 1
  br label %54

13:                                               ; preds = %5, %18
  %14 = phi i64 [ 0, %5 ], [ %19, %18 ]
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !65
  %17 = icmp eq ptr %7, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = add nuw nsw i64 %14, 1
  %20 = icmp eq i64 %19, %3
  br i1 %20, label %21, label %13, !llvm.loop !93

21:                                               ; preds = %18, %13, %2
  %22 = phi i64 [ 0, %2 ], [ %14, %13 ], [ %3, %18 ]
  %23 = and i64 %22, 4294967295
  %24 = icmp eq i64 %23, %3
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 33, i64 %3
  %27 = load ptr, ptr %26, align 8, !tbaa !65
  tail call void @x264_free(ptr noundef %27) #10
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 29, i64 %3
  %29 = load ptr, ptr %28, align 8, !tbaa !65
  tail call void @x264_free(ptr noundef %29) #10
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 31, i64 %3
  %31 = load ptr, ptr %30, align 8, !tbaa !65
  tail call void @x264_free(ptr noundef %31) #10
  br label %32

32:                                               ; preds = %25, %21
  br i1 %4, label %44, label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 %3
  %35 = load ptr, ptr %34, align 8, !tbaa !65
  br label %36

36:                                               ; preds = %33, %41
  %37 = phi i64 [ 0, %33 ], [ %42, %41 ]
  %38 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !65
  %40 = icmp eq ptr %35, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = add nuw nsw i64 %37, 1
  %43 = icmp eq i64 %42, %3
  br i1 %43, label %44, label %36, !llvm.loop !94

44:                                               ; preds = %41, %36, %32
  %45 = phi i64 [ 0, %32 ], [ %37, %36 ], [ %3, %41 ]
  %46 = and i64 %45, 4294967295
  %47 = icmp eq i64 %46, %3
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 35, i64 %3
  %50 = load ptr, ptr %49, align 8, !tbaa !65
  tail call void @x264_free(ptr noundef %50) #10
  br label %51

51:                                               ; preds = %48, %44
  %52 = add nuw nsw i64 %3, 1
  %53 = icmp eq i64 %52, 4
  br i1 %53, label %8, label %2, !llvm.loop !95

54:                                               ; preds = %8, %87
  %55 = phi i1 [ true, %8 ], [ false, %87 ]
  %56 = phi i64 [ 0, %8 ], [ 1, %87 ]
  br label %58

57:                                               ; preds = %87
  ret void

58:                                               ; preds = %54, %61
  %59 = phi i64 [ 1, %61 ], [ 0, %54 ]
  %60 = icmp ult i64 %59, %56
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load ptr, ptr %10, align 8, !tbaa !65
  %63 = load ptr, ptr %9, align 8, !tbaa !65
  %64 = icmp eq ptr %62, %63
  br i1 %64, label %65, label %58, !llvm.loop !96

65:                                               ; preds = %61, %58
  %66 = icmp eq i64 %59, %56
  br i1 %66, label %67, label %74

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 34, i64 %56
  %69 = load ptr, ptr %68, align 8, !tbaa !65
  tail call void @x264_free(ptr noundef %69) #10
  %70 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 30, i64 %56
  %71 = load ptr, ptr %70, align 8, !tbaa !65
  tail call void @x264_free(ptr noundef %71) #10
  %72 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 32, i64 %56
  %73 = load ptr, ptr %72, align 8, !tbaa !65
  tail call void @x264_free(ptr noundef %73) #10
  br label %74

74:                                               ; preds = %67, %65
  br label %75

75:                                               ; preds = %74, %78
  %76 = phi i64 [ 1, %78 ], [ 0, %74 ]
  %77 = icmp ult i64 %76, %56
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load ptr, ptr %12, align 8, !tbaa !65
  %80 = load ptr, ptr %11, align 8, !tbaa !65
  %81 = icmp eq ptr %79, %80
  br i1 %81, label %82, label %75, !llvm.loop !97

82:                                               ; preds = %78, %75
  %83 = icmp eq i64 %76, %56
  br i1 %83, label %84, label %87

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 36, i64 %56
  %86 = load ptr, ptr %85, align 8, !tbaa !65
  tail call void @x264_free(ptr noundef %86) #10
  br label %87

87:                                               ; preds = %84, %82
  br i1 %55, label %54, label %57, !llvm.loop !98
}

; Function Attrs: optsize
declare void @x264_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @x264_cqm_parse_file(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 2, ptr %3, align 16, !tbaa !99
  %4 = tail call ptr @x264_slurp_file(ptr noundef %1) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 35) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %10

9:                                                ; preds = %2
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef %1) #10
  br label %33

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %13, %10 ], [ %7, %6 ]
  %12 = tail call i64 @strcspn(ptr noundef nonnull %11, ptr noundef nonnull @.str.4) #12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %11, i8 32, i64 %12, i1 false)
  %13 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 35) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %10, !llvm.loop !100

15:                                               ; preds = %10, %6
  %16 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 30
  %17 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str.5, ptr noundef nonnull %16, ptr noundef nonnull @x264_cqm_jvt4i, i32 noundef 16) #11
  %18 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 31
  %19 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str.6, ptr noundef nonnull %18, ptr noundef nonnull @x264_cqm_jvt4i, i32 noundef 16) #11
  %20 = or i32 %19, %17
  %21 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 32
  %22 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str.7, ptr noundef nonnull %21, ptr noundef nonnull @x264_cqm_jvt4p, i32 noundef 16) #11
  %23 = or i32 %20, %22
  %24 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 33
  %25 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str.8, ptr noundef nonnull %24, ptr noundef nonnull @x264_cqm_jvt4p, i32 noundef 16) #11
  %26 = or i32 %23, %25
  %27 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 34
  %28 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str.9, ptr noundef nonnull %27, ptr noundef nonnull @x264_cqm_jvt8i, i32 noundef 64) #11
  %29 = or i32 %26, %28
  %30 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 35
  %31 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str.10, ptr noundef nonnull %30, ptr noundef nonnull @x264_cqm_jvt8p, i32 noundef 64) #11
  %32 = or i32 %29, %31
  tail call void @x264_free(ptr noundef nonnull %4) #10
  br label %33

33:                                               ; preds = %15, %9
  %34 = phi i32 [ %32, %15 ], [ -1, %9 ]
  ret i32 %34
}

; Function Attrs: optsize
declare ptr @x264_slurp_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @x264_cqm_parse_jmlist(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readonly %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !101 {
  %7 = alloca i32, align 4
  %8 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %2) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = zext nneg i32 %5 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 16, i64 %11, i1 false)
  br label %63

12:                                               ; preds = %6
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #12
  %14 = getelementptr inbounds i8, ptr %8, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !73
  %16 = add i8 %15, -85
  %17 = icmp ult i8 %16, 2
  %18 = zext i1 %17 to i64
  %19 = getelementptr inbounds i8, ptr %14, i64 %18
  %20 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) @.str.11) #12
  %21 = icmp sgt i32 %5, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %12
  %23 = zext nneg i32 %5 to i64
  br label %24

24:                                               ; preds = %22, %45
  %25 = phi i64 [ 0, %22 ], [ %48, %45 ]
  %26 = phi ptr [ %19, %22 ], [ %30, %45 ]
  %27 = call ptr @strpbrk(ptr noundef nonnull %26, ptr noundef nonnull @.str.12) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %50, label %29

29:                                               ; preds = %24
  %30 = call ptr @strpbrk(ptr noundef nonnull %27, ptr noundef nonnull @.str.13) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %52, label %32

32:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 -1, ptr %7, align 4, !tbaa !34
  %33 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %30, ptr noundef nonnull @.str.14, ptr noundef nonnull %7) #10
  %34 = icmp eq i64 %25, 0
  %35 = load i32, ptr %7, align 4
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %4, i64 %23, i1 false)
  br label %43

39:                                               ; preds = %32
  %40 = add i32 %35, -256
  %41 = icmp ult i32 %40, -255
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %2) #10
  br label %43

43:                                               ; preds = %38, %42
  %44 = phi i32 [ -1, %42 ], [ 0, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  br label %63

45:                                               ; preds = %39
  %46 = trunc i32 %35 to i8
  %47 = getelementptr inbounds i8, ptr %3, i64 %25
  store i8 %46, ptr %47, align 1, !tbaa !73
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  %48 = add nuw nsw i64 %25, 1
  %49 = icmp eq i64 %48, %23
  br i1 %49, label %54, label %24, !llvm.loop !102

50:                                               ; preds = %24
  %51 = trunc i64 %25 to i32
  br label %54

52:                                               ; preds = %29
  %53 = trunc i64 %25 to i32
  br label %54

54:                                               ; preds = %45, %50, %52, %12
  %55 = phi i32 [ 0, %12 ], [ %51, %50 ], [ %53, %52 ], [ %5, %45 ]
  %56 = phi ptr [ %19, %12 ], [ null, %50 ], [ null, %52 ], [ %30, %45 ]
  %57 = icmp eq ptr %20, null
  %58 = icmp ule ptr %56, %20
  %59 = or i1 %57, %58
  %60 = icmp eq i32 %55, %5
  %61 = and i1 %60, %59
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef %2) #10
  br label %63

63:                                               ; preds = %43, %62, %54, %10
  %64 = phi i32 [ 0, %10 ], [ -1, %62 ], [ 0, %54 ], [ %44, %43 ]
  ret i32 %64
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize willreturn memory(read) }

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
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !42, i64 3328}
!39 = !{!"x264_t", !40, i64 0, !36, i64 704, !35, i64 1736, !35, i64 1740, !35, i64 1744, !35, i64 1748, !35, i64 1752, !46, i64 1760, !42, i64 1832, !35, i64 1840, !35, i64 1844, !35, i64 1848, !35, i64 1852, !35, i64 1856, !35, i64 1860, !35, i64 1864, !35, i64 1868, !35, i64 1872, !35, i64 1876, !35, i64 1880, !35, i64 1884, !35, i64 1888, !35, i64 1892, !36, i64 1896, !42, i64 3200, !36, i64 3208, !42, i64 3328, !35, i64 3336, !35, i64 3340, !36, i64 3344, !36, i64 3376, !36, i64 3392, !36, i64 3424, !36, i64 3440, !36, i64 3472, !36, i64 3488, !36, i64 3520, !36, i64 3536, !36, i64 4272, !42, i64 7216, !49, i64 7232, !50, i64 13904, !51, i64 14416, !42, i64 14680, !42, i64 14688, !35, i64 14696, !36, i64 14704, !35, i64 14856, !36, i64 14864, !36, i64 15016, !35, i64 15024, !35, i64 15028, !48, i64 15032, !52, i64 15040, !53, i64 16368, !42, i64 26704, !56, i64 26712, !36, i64 30400, !36, i64 30912, !36, i64 31168, !42, i64 31176, !36, i64 31184, !36, i64 31232, !36, i64 31248, !36, i64 31304, !36, i64 31360, !36, i64 31456, !42, i64 31552, !59, i64 31560, !60, i64 32616, !61, i64 32912, !62, i64 33032, !63, i64 33080, !64, i64 33256, !42, i64 33328}
!40 = !{!"x264_param_t", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !41, i64 44, !35, i64 80, !35, i64 84, !35, i64 88, !35, i64 92, !35, i64 96, !35, i64 100, !35, i64 104, !35, i64 108, !35, i64 112, !35, i64 116, !35, i64 120, !35, i64 124, !35, i64 128, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !42, i64 152, !36, i64 160, !36, i64 176, !36, i64 192, !36, i64 208, !36, i64 224, !36, i64 288, !42, i64 352, !42, i64 360, !35, i64 368, !35, i64 372, !42, i64 376, !43, i64 384, !45, i64 488, !35, i64 632, !35, i64 636, !35, i64 640, !35, i64 644, !35, i64 648, !35, i64 652, !35, i64 656, !35, i64 660, !35, i64 664, !35, i64 668, !35, i64 672, !35, i64 676, !35, i64 680, !35, i64 684, !35, i64 688, !35, i64 692, !42, i64 696}
!41 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32}
!42 = !{!"any pointer", !36, i64 0}
!43 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !35, i64 60, !35, i64 64, !35, i64 68, !44, i64 72, !44, i64 76, !35, i64 80, !36, i64 84, !35, i64 92, !35, i64 96}
!44 = !{!"float", !36, i64 0}
!45 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !35, i64 36, !35, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !35, i64 56, !44, i64 60, !35, i64 64, !35, i64 68, !35, i64 72, !42, i64 80, !35, i64 88, !42, i64 96, !44, i64 104, !44, i64 108, !44, i64 112, !42, i64 120, !35, i64 128, !42, i64 136}
!46 = !{!"", !35, i64 0, !35, i64 4, !42, i64 8, !35, i64 16, !42, i64 24, !47, i64 32}
!47 = !{!"bs_s", !42, i64 0, !42, i64 8, !42, i64 16, !48, i64 24, !35, i64 32, !35, i64 36}
!48 = !{!"long", !36, i64 0}
!49 = !{!"", !42, i64 0, !42, i64 8, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !36, i64 60, !35, i64 68, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84, !35, i64 88, !35, i64 92, !36, i64 96, !36, i64 352, !35, i64 6496, !35, i64 6500, !36, i64 6504, !35, i64 6632, !35, i64 6636, !35, i64 6640, !35, i64 6644, !35, i64 6648, !35, i64 6652, !35, i64 6656, !35, i64 6660}
!50 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !42, i64 16, !42, i64 24, !42, i64 32, !35, i64 48, !36, i64 52}
!51 = !{!"", !42, i64 0, !36, i64 8, !42, i64 24, !36, i64 32, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !48, i64 208, !48, i64 216, !36, i64 224, !48, i64 240, !48, i64 248, !35, i64 256, !35, i64 260}
!52 = !{!"", !36, i64 0, !36, i64 32, !36, i64 48, !36, i64 560}
!53 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !35, i64 60, !35, i64 64, !35, i64 68, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !35, i64 120, !36, i64 124, !36, i64 140, !35, i64 204, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !35, i64 224, !35, i64 228, !35, i64 232, !35, i64 236, !35, i64 240, !35, i64 244, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !42, i64 280, !42, i64 288, !42, i64 296, !36, i64 304, !36, i64 320, !36, i64 336, !36, i64 352, !42, i64 864, !42, i64 872, !42, i64 880, !36, i64 888, !35, i64 1016, !35, i64 1020, !36, i64 1024, !35, i64 1028, !35, i64 1032, !35, i64 1036, !35, i64 1040, !35, i64 1044, !35, i64 1048, !35, i64 1052, !35, i64 1056, !35, i64 1060, !54, i64 1072, !55, i64 8656, !35, i64 9424, !35, i64 9428, !35, i64 9432, !35, i64 9436, !35, i64 9440, !35, i64 9444, !35, i64 9448, !35, i64 9452, !36, i64 9456, !35, i64 9472, !35, i64 9476, !36, i64 9480, !42, i64 9992, !36, i64 10000, !42, i64 10256, !36, i64 10264, !35, i64 10284, !36, i64 10288}
!54 = !{!"", !36, i64 0, !36, i64 384, !36, i64 1248, !36, i64 1504, !36, i64 1760, !36, i64 2144, !36, i64 2624, !36, i64 2640, !35, i64 2656, !35, i64 2660, !36, i64 2672, !36, i64 3184, !36, i64 3696, !36, i64 3776, !36, i64 3904, !36, i64 3928, !36, i64 3952, !36, i64 3976, !36, i64 3984, !36, i64 7056, !36, i64 7312, !36, i64 7568}
!55 = !{!"", !36, i64 0, !36, i64 48, !36, i64 96, !36, i64 176, !36, i64 496, !36, i64 656, !36, i64 696, !36, i64 728, !35, i64 736, !36, i64 740, !35, i64 744, !35, i64 748, !35, i64 752, !35, i64 756}
!56 = !{!"", !57, i64 0, !36, i64 704, !36, i64 728, !36, i64 768, !36, i64 808, !36, i64 880, !36, i64 920, !36, i64 960, !36, i64 1000, !36, i64 1040, !36, i64 1080, !36, i64 1120, !36, i64 1880, !36, i64 2152, !36, i64 2168, !36, i64 3192, !36, i64 3240, !36, i64 3656, !36, i64 3664, !36, i64 3672}
!57 = !{!"", !35, i64 0, !35, i64 4, !35, i64 8, !36, i64 12, !35, i64 88, !35, i64 92, !35, i64 96, !36, i64 100, !36, i64 108, !36, i64 364, !36, i64 432, !36, i64 456, !36, i64 664, !36, i64 672, !58, i64 696}
!58 = !{!"double", !36, i64 0}
!59 = !{!"", !36, i64 0, !36, i64 56, !36, i64 112, !36, i64 168, !36, i64 224, !36, i64 256, !36, i64 312, !36, i64 368, !36, i64 424, !36, i64 480, !36, i64 536, !42, i64 592, !36, i64 600, !36, i64 632, !42, i64 664, !42, i64 672, !36, i64 680, !36, i64 736, !36, i64 792, !36, i64 848, !36, i64 904, !42, i64 960, !42, i64 968, !42, i64 976, !42, i64 984, !42, i64 992, !42, i64 1000, !42, i64 1008, !42, i64 1016, !42, i64 1024, !42, i64 1032, !42, i64 1040, !42, i64 1048}
!60 = !{!"", !42, i64 0, !42, i64 8, !42, i64 16, !36, i64 24, !36, i64 104, !42, i64 160, !42, i64 168, !42, i64 176, !42, i64 184, !42, i64 192, !42, i64 200, !42, i64 208, !42, i64 216, !42, i64 224, !42, i64 232, !42, i64 240, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !42, i64 280, !42, i64 288}
!61 = !{!"", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112}
!62 = !{!"", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40}
!63 = !{!"", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !36, i64 88, !36, i64 136}
!64 = !{!"", !36, i64 0, !36, i64 16, !36, i64 32, !36, i64 48, !42, i64 64}
!65 = !{!42, !42, i64 0}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.mustprogress"}
!68 = distinct !{!68, !67}
!69 = distinct !{!69, !67}
!70 = distinct !{!70, !67}
!71 = distinct !{!71, !67}
!72 = distinct !{!72, !67}
!73 = !{!36, !36, i64 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"short", !36, i64 0}
!76 = distinct !{!76, !67}
!77 = distinct !{!77, !67}
!78 = distinct !{!78, !67}
!79 = distinct !{!79, !67}
!80 = distinct !{!80, !67}
!81 = distinct !{!81, !67}
!82 = distinct !{!82, !67}
!83 = distinct !{!83, !67}
!84 = !{!39, !35, i64 25812}
!85 = !{!39, !35, i64 392}
!86 = distinct !{!86, !67}
!87 = distinct !{!87, !67}
!88 = distinct !{!88, !67}
!89 = distinct !{!89, !67}
!90 = distinct !{!90, !67}
!91 = !{!39, !35, i64 496}
!92 = !{!39, !42, i64 7216}
!93 = distinct !{!93, !67}
!94 = distinct !{!94, !67}
!95 = distinct !{!95, !67}
!96 = distinct !{!96, !67}
!97 = distinct !{!97, !67}
!98 = distinct !{!98, !67}
!99 = !{!39, !35, i64 144}
!100 = distinct !{!100, !67}
!101 = !{!"set.c:x264_cqm_parse_jmlist"}
!102 = distinct !{!102, !67}
