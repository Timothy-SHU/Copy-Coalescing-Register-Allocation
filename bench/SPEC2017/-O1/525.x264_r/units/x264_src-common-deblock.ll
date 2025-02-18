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

; Function Attrs: nounwind uwtable
define dso_local void @x264_frame_deblock_row(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i8], align 1
  %4 = alloca [4 x i8], align 1
  %5 = alloca [4 x i8], align 1
  %6 = alloca [4 x i8], align 1
  %7 = alloca [4 x i8], align 1
  %8 = alloca [4 x i8], align 1
  %9 = alloca [4 x i8], align 1
  %10 = alloca [4 x i8], align 1
  %11 = alloca [4 x i8], align 1
  %12 = alloca [4 x i8], align 1
  %13 = alloca [4 x i8], align 1
  %14 = alloca [4 x i8], align 1
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %16 = load i32, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 32
  %18 = load i32, ptr %17, align 16, !tbaa !64
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 33
  %20 = load i32, ptr %19, align 4, !tbaa !65
  %21 = tail call i32 @llvm.smin.i32(i32 %18, i32 %20)
  %22 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 6
  %23 = load i32, ptr %22, align 8, !tbaa !66
  %24 = tail call i32 @llvm.smax.i32(i32 %23, i32 0)
  %25 = add i32 %21, %24
  %26 = sub i32 15, %25
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %28 = load ptr, ptr %27, align 16, !tbaa !67
  %29 = getelementptr inbounds %struct.x264_frame, ptr %28, i64 0, i32 24
  %30 = load i32, ptr %29, align 8, !tbaa !68
  %31 = shl i32 %30, %16
  %32 = getelementptr inbounds %struct.x264_frame, ptr %28, i64 0, i32 24, i64 1
  %33 = load i32, ptr %32, align 4, !tbaa !68
  %34 = shl i32 %33, %16
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 61
  %36 = load ptr, ptr %35, align 8, !tbaa !69
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  %38 = load ptr, ptr %37, align 16, !tbaa !70
  %39 = getelementptr inbounds %struct.x264_pps_t, ptr %38, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !71
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %254

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.x264_pps_t, ptr %38, i64 0, i32 15
  %44 = load i32, ptr %43, align 4, !tbaa !73
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %254, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 43
  %48 = load ptr, ptr %47, align 16, !tbaa !74
  %49 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %50 = load ptr, ptr %49, align 16, !tbaa !75
  %51 = getelementptr inbounds %struct.x264_sps_t, ptr %50, i64 0, i32 16
  %52 = load i32, ptr %51, align 4, !tbaa !76
  %53 = mul nsw i32 %52, %1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [6 x i32], ptr %48, i64 %54
  %56 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 50
  %57 = load ptr, ptr %56, align 8, !tbaa !81
  %58 = getelementptr inbounds i8, ptr %57, i64 %54
  %59 = icmp sgt i32 %52, 0
  br i1 %59, label %60, label %96

60:                                               ; preds = %46, %89
  %61 = phi i64 [ %90, %89 ], [ 0, %46 ]
  %62 = getelementptr inbounds [16 x i8], ptr %36, i64 %61
  %63 = getelementptr inbounds [6 x i32], ptr %55, i64 %61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %62, ptr noundef nonnull align 4 dereferenceable(16) %63, i64 16, i1 false)
  %64 = getelementptr inbounds i8, ptr %58, i64 %61
  %65 = load i8, ptr %64, align 1, !tbaa !82
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %89, label %67

67:                                               ; preds = %60
  %68 = load i32, ptr %63, align 4, !tbaa !68
  %69 = getelementptr inbounds [6 x i32], ptr %55, i64 %61, i64 1
  %70 = load i32, ptr %69, align 4, !tbaa !68
  %71 = or i32 %70, %68
  %72 = and i32 %71, 65535
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i32 0, i32 257
  %75 = icmp ult i32 %71, 65536
  %76 = select i1 %75, i32 0, i32 16842752
  %77 = or disjoint i32 %74, %76
  store i32 %77, ptr %69, align 4, !tbaa !68
  store i32 %77, ptr %63, align 4, !tbaa !68
  %78 = getelementptr inbounds [6 x i32], ptr %55, i64 %61, i64 2
  %79 = load i32, ptr %78, align 4, !tbaa !68
  %80 = getelementptr inbounds [6 x i32], ptr %55, i64 %61, i64 3
  %81 = load i32, ptr %80, align 4, !tbaa !68
  %82 = or i32 %81, %79
  %83 = and i32 %82, 65535
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, i32 0, i32 257
  %86 = icmp ult i32 %82, 65536
  %87 = select i1 %86, i32 0, i32 16842752
  %88 = or disjoint i32 %85, %87
  store i32 %88, ptr %80, align 4, !tbaa !68
  store i32 %88, ptr %78, align 4, !tbaa !68
  br label %89

89:                                               ; preds = %67, %60
  %90 = add nuw nsw i64 %61, 1
  %91 = load ptr, ptr %49, align 16, !tbaa !75
  %92 = getelementptr inbounds %struct.x264_sps_t, ptr %91, i64 0, i32 16
  %93 = load i32, ptr %92, align 4, !tbaa !76
  %94 = sext i32 %93 to i64
  %95 = icmp slt i64 %90, %94
  br i1 %95, label %60, label %96, !llvm.loop !83

96:                                               ; preds = %89, %46
  %97 = icmp sgt i32 %1, 0
  br i1 %97, label %98, label %148

98:                                               ; preds = %96
  %99 = add nsw i32 %1, -1
  %100 = load ptr, ptr %49, align 16, !tbaa !75
  %101 = getelementptr inbounds %struct.x264_sps_t, ptr %100, i64 0, i32 16
  %102 = load i32, ptr %101, align 4, !tbaa !76
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [16 x i8], ptr %36, i64 %103
  %105 = load ptr, ptr %47, align 16, !tbaa !74
  %106 = mul nsw i32 %102, %99
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [6 x i32], ptr %105, i64 %107
  %109 = load ptr, ptr %56, align 8, !tbaa !81
  %110 = getelementptr inbounds i8, ptr %109, i64 %107
  %111 = icmp sgt i32 %102, 0
  br i1 %111, label %112, label %148

112:                                              ; preds = %98, %141
  %113 = phi i64 [ %142, %141 ], [ 0, %98 ]
  %114 = getelementptr inbounds [16 x i8], ptr %104, i64 %113
  %115 = getelementptr inbounds [6 x i32], ptr %108, i64 %113
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %114, ptr noundef nonnull align 4 dereferenceable(16) %115, i64 16, i1 false)
  %116 = getelementptr inbounds i8, ptr %110, i64 %113
  %117 = load i8, ptr %116, align 1, !tbaa !82
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %141, label %119

119:                                              ; preds = %112
  %120 = load i32, ptr %115, align 4, !tbaa !68
  %121 = getelementptr inbounds [6 x i32], ptr %108, i64 %113, i64 1
  %122 = load i32, ptr %121, align 4, !tbaa !68
  %123 = or i32 %122, %120
  %124 = and i32 %123, 65535
  %125 = icmp eq i32 %124, 0
  %126 = select i1 %125, i32 0, i32 257
  %127 = icmp ult i32 %123, 65536
  %128 = select i1 %127, i32 0, i32 16842752
  %129 = or disjoint i32 %126, %128
  store i32 %129, ptr %121, align 4, !tbaa !68
  store i32 %129, ptr %115, align 4, !tbaa !68
  %130 = getelementptr inbounds [6 x i32], ptr %108, i64 %113, i64 2
  %131 = load i32, ptr %130, align 4, !tbaa !68
  %132 = getelementptr inbounds [6 x i32], ptr %108, i64 %113, i64 3
  %133 = load i32, ptr %132, align 4, !tbaa !68
  %134 = or i32 %133, %131
  %135 = and i32 %134, 65535
  %136 = icmp eq i32 %135, 0
  %137 = select i1 %136, i32 0, i32 257
  %138 = icmp ult i32 %134, 65536
  %139 = select i1 %138, i32 0, i32 16842752
  %140 = or disjoint i32 %137, %139
  store i32 %140, ptr %132, align 4, !tbaa !68
  store i32 %140, ptr %130, align 4, !tbaa !68
  br label %141

141:                                              ; preds = %119, %112
  %142 = add nuw nsw i64 %113, 1
  %143 = load ptr, ptr %49, align 16, !tbaa !75
  %144 = getelementptr inbounds %struct.x264_sps_t, ptr %143, i64 0, i32 16
  %145 = load i32, ptr %144, align 4, !tbaa !76
  %146 = sext i32 %145 to i64
  %147 = icmp slt i64 %142, %146
  br i1 %147, label %112, label %148, !llvm.loop !83

148:                                              ; preds = %141, %98, %96
  %149 = load i32, ptr %15, align 4, !tbaa !34
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %254, label %151

151:                                              ; preds = %148
  %152 = add nsw i32 %1, 1
  %153 = load ptr, ptr %49, align 16, !tbaa !75
  %154 = getelementptr inbounds %struct.x264_sps_t, ptr %153, i64 0, i32 16
  %155 = load i32, ptr %154, align 4, !tbaa !76
  %156 = shl nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [16 x i8], ptr %36, i64 %157
  %159 = load ptr, ptr %47, align 16, !tbaa !74
  %160 = mul nsw i32 %155, %152
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [6 x i32], ptr %159, i64 %161
  %163 = load ptr, ptr %56, align 8, !tbaa !81
  %164 = getelementptr inbounds i8, ptr %163, i64 %161
  %165 = icmp sgt i32 %155, 0
  br i1 %165, label %166, label %202

166:                                              ; preds = %151, %195
  %167 = phi i64 [ %196, %195 ], [ 0, %151 ]
  %168 = getelementptr inbounds [16 x i8], ptr %158, i64 %167
  %169 = getelementptr inbounds [6 x i32], ptr %162, i64 %167
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %168, ptr noundef nonnull align 4 dereferenceable(16) %169, i64 16, i1 false)
  %170 = getelementptr inbounds i8, ptr %164, i64 %167
  %171 = load i8, ptr %170, align 1, !tbaa !82
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %195, label %173

173:                                              ; preds = %166
  %174 = load i32, ptr %169, align 4, !tbaa !68
  %175 = getelementptr inbounds [6 x i32], ptr %162, i64 %167, i64 1
  %176 = load i32, ptr %175, align 4, !tbaa !68
  %177 = or i32 %176, %174
  %178 = and i32 %177, 65535
  %179 = icmp eq i32 %178, 0
  %180 = select i1 %179, i32 0, i32 257
  %181 = icmp ult i32 %177, 65536
  %182 = select i1 %181, i32 0, i32 16842752
  %183 = or disjoint i32 %180, %182
  store i32 %183, ptr %175, align 4, !tbaa !68
  store i32 %183, ptr %169, align 4, !tbaa !68
  %184 = getelementptr inbounds [6 x i32], ptr %162, i64 %167, i64 2
  %185 = load i32, ptr %184, align 4, !tbaa !68
  %186 = getelementptr inbounds [6 x i32], ptr %162, i64 %167, i64 3
  %187 = load i32, ptr %186, align 4, !tbaa !68
  %188 = or i32 %187, %185
  %189 = and i32 %188, 65535
  %190 = icmp eq i32 %189, 0
  %191 = select i1 %190, i32 0, i32 257
  %192 = icmp ult i32 %188, 65536
  %193 = select i1 %192, i32 0, i32 16842752
  %194 = or disjoint i32 %191, %193
  store i32 %194, ptr %186, align 4, !tbaa !68
  store i32 %194, ptr %184, align 4, !tbaa !68
  br label %195

195:                                              ; preds = %173, %166
  %196 = add nuw nsw i64 %167, 1
  %197 = load ptr, ptr %49, align 16, !tbaa !75
  %198 = getelementptr inbounds %struct.x264_sps_t, ptr %197, i64 0, i32 16
  %199 = load i32, ptr %198, align 4, !tbaa !76
  %200 = sext i32 %199 to i64
  %201 = icmp slt i64 %196, %200
  br i1 %201, label %166, label %202, !llvm.loop !83

202:                                              ; preds = %195, %151
  br i1 %97, label %203, label %254

203:                                              ; preds = %202
  %204 = add nsw i32 %1, -2
  %205 = load ptr, ptr %49, align 16, !tbaa !75
  %206 = getelementptr inbounds %struct.x264_sps_t, ptr %205, i64 0, i32 16
  %207 = load i32, ptr %206, align 4, !tbaa !76
  %208 = mul nsw i32 %207, 3
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [16 x i8], ptr %36, i64 %209
  %211 = load ptr, ptr %47, align 16, !tbaa !74
  %212 = mul nsw i32 %207, %204
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [6 x i32], ptr %211, i64 %213
  %215 = load ptr, ptr %56, align 8, !tbaa !81
  %216 = getelementptr inbounds i8, ptr %215, i64 %213
  %217 = icmp sgt i32 %207, 0
  br i1 %217, label %218, label %254

218:                                              ; preds = %203, %247
  %219 = phi i64 [ %248, %247 ], [ 0, %203 ]
  %220 = getelementptr inbounds [16 x i8], ptr %210, i64 %219
  %221 = getelementptr inbounds [6 x i32], ptr %214, i64 %219
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %220, ptr noundef nonnull align 4 dereferenceable(16) %221, i64 16, i1 false)
  %222 = getelementptr inbounds i8, ptr %216, i64 %219
  %223 = load i8, ptr %222, align 1, !tbaa !82
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %247, label %225

225:                                              ; preds = %218
  %226 = load i32, ptr %221, align 4, !tbaa !68
  %227 = getelementptr inbounds [6 x i32], ptr %214, i64 %219, i64 1
  %228 = load i32, ptr %227, align 4, !tbaa !68
  %229 = or i32 %228, %226
  %230 = and i32 %229, 65535
  %231 = icmp eq i32 %230, 0
  %232 = select i1 %231, i32 0, i32 257
  %233 = icmp ult i32 %229, 65536
  %234 = select i1 %233, i32 0, i32 16842752
  %235 = or disjoint i32 %232, %234
  store i32 %235, ptr %227, align 4, !tbaa !68
  store i32 %235, ptr %221, align 4, !tbaa !68
  %236 = getelementptr inbounds [6 x i32], ptr %214, i64 %219, i64 2
  %237 = load i32, ptr %236, align 4, !tbaa !68
  %238 = getelementptr inbounds [6 x i32], ptr %214, i64 %219, i64 3
  %239 = load i32, ptr %238, align 4, !tbaa !68
  %240 = or i32 %239, %237
  %241 = and i32 %240, 65535
  %242 = icmp eq i32 %241, 0
  %243 = select i1 %242, i32 0, i32 257
  %244 = icmp ult i32 %240, 65536
  %245 = select i1 %244, i32 0, i32 16842752
  %246 = or disjoint i32 %243, %245
  store i32 %246, ptr %238, align 4, !tbaa !68
  store i32 %246, ptr %236, align 4, !tbaa !68
  br label %247

247:                                              ; preds = %225, %218
  %248 = add nuw nsw i64 %219, 1
  %249 = load ptr, ptr %49, align 16, !tbaa !75
  %250 = getelementptr inbounds %struct.x264_sps_t, ptr %249, i64 0, i32 16
  %251 = load i32, ptr %250, align 4, !tbaa !76
  %252 = sext i32 %251 to i64
  %253 = icmp slt i64 %248, %252
  br i1 %253, label %218, label %254, !llvm.loop !83

254:                                              ; preds = %247, %202, %148, %203, %42, %2
  %255 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %256 = load ptr, ptr %255, align 16, !tbaa !75
  %257 = getelementptr inbounds %struct.x264_sps_t, ptr %256, i64 0, i32 16
  %258 = load i32, ptr %257, align 4, !tbaa !76
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %337

260:                                              ; preds = %254
  %261 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %262 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 50
  %263 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 38
  %264 = shl i32 %30, 4
  %265 = shl i32 %33, 3
  %266 = icmp eq i32 %16, 0
  %267 = mul nsw i32 %30, 15
  %268 = sext i32 %267 to i64
  %269 = sub nsw i64 0, %268
  %270 = mul nsw i32 %33, 7
  %271 = sext i32 %270 to i64
  %272 = sub nsw i64 0, %271
  %273 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 40
  %274 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 39
  %275 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 24
  %276 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 34
  %277 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 74
  %278 = getelementptr inbounds [4 x i8], ptr %14, i64 0, i64 1
  %279 = getelementptr inbounds [4 x i8], ptr %14, i64 0, i64 2
  %280 = getelementptr inbounds [4 x i8], ptr %14, i64 0, i64 3
  %281 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 74, i32 1
  %282 = getelementptr inbounds [4 x i8], ptr %13, i64 0, i64 1
  %283 = getelementptr inbounds [4 x i8], ptr %13, i64 0, i64 2
  %284 = getelementptr inbounds [4 x i8], ptr %13, i64 0, i64 3
  %285 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 74, i32 2
  %286 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 74, i32 3
  %287 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 74
  %288 = getelementptr inbounds [4 x i8], ptr %12, i64 0, i64 1
  %289 = getelementptr inbounds [4 x i8], ptr %12, i64 0, i64 2
  %290 = getelementptr inbounds [4 x i8], ptr %12, i64 0, i64 3
  %291 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 74
  %292 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 1
  %293 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 2
  %294 = getelementptr inbounds [4 x i8], ptr %11, i64 0, i64 3
  %295 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 74, i32 1
  %296 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 1
  %297 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 2
  %298 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 3
  %299 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 1
  %300 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 2
  %301 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 3
  %302 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 35
  %303 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 74, i32 0, i64 1
  %304 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 1
  %305 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 2
  %306 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 3
  %307 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 74, i32 1, i64 1
  %308 = getelementptr inbounds [4 x i8], ptr %7, i64 0, i64 1
  %309 = getelementptr inbounds [4 x i8], ptr %7, i64 0, i64 2
  %310 = getelementptr inbounds [4 x i8], ptr %7, i64 0, i64 3
  %311 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 74, i32 2, i64 1
  %312 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 74, i32 3, i64 1
  %313 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 74, i32 0, i64 1
  %314 = shl nsw i32 %31, 2
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 1
  %317 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 2
  %318 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 3
  %319 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 74, i32 0, i64 1
  %320 = shl nsw i32 %31, 3
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 1
  %323 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 2
  %324 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 3
  %325 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 74, i32 1, i64 1
  %326 = shl nsw i32 %34, 2
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 1
  %329 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 2
  %330 = getelementptr inbounds [4 x i8], ptr %4, i64 0, i64 3
  %331 = mul nsw i32 %31, 12
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  %334 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  %335 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  %336 = xor i32 %16, -1
  br label %345

337:                                              ; preds = %1126, %254
  %338 = phi i32 [ %1, %254 ], [ %1130, %1126 ]
  %339 = phi i32 [ %258, %254 ], [ %1133, %1126 ]
  %340 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %341 = load ptr, ptr %37, align 16, !tbaa !70
  %342 = getelementptr inbounds %struct.x264_pps_t, ptr %341, i64 0, i32 2
  %343 = load i32, ptr %342, align 8, !tbaa !71
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %1135, label %1238

345:                                              ; preds = %260, %1126
  %346 = phi i32 [ %1, %260 ], [ %1130, %1126 ]
  %347 = phi i32 [ 0, %260 ], [ %1129, %1126 ]
  %348 = load ptr, ptr %27, align 16, !tbaa !67
  call void @x264_prefetch_fenc(ptr noundef %0, ptr noundef %348, i32 noundef %347, i32 noundef %346) #10
  call void @x264_macroblock_cache_load_neighbours_deblock(ptr noundef %0, i32 noundef %347, i32 noundef %346) #10
  %349 = load i32, ptr %261, align 8, !tbaa !86
  %350 = load ptr, ptr %262, align 8, !tbaa !81
  %351 = sext i32 %349 to i64
  %352 = getelementptr inbounds i8, ptr %350, i64 %351
  %353 = load i8, ptr %352, align 1, !tbaa !82
  %354 = load ptr, ptr %263, align 8, !tbaa !87
  %355 = getelementptr inbounds i8, ptr %354, i64 %351
  %356 = load i8, ptr %355, align 1, !tbaa !82
  %357 = icmp ult i8 %356, 4
  %358 = and i32 %346, %16
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 63, i64 %359
  %361 = load ptr, ptr %360, align 8, !tbaa !88
  %362 = zext nneg i32 %347 to i64
  %363 = getelementptr inbounds [2 x [4 x [4 x i8]]], ptr %361, i64 %362
  %364 = load ptr, ptr %27, align 16, !tbaa !67
  %365 = getelementptr inbounds %struct.x264_frame, ptr %364, i64 0, i32 30
  %366 = load ptr, ptr %365, align 8, !tbaa !88
  %367 = mul i32 %264, %346
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i8, ptr %366, i64 %368
  %370 = shl nsw i32 %347, 4
  %371 = zext nneg i32 %370 to i64
  %372 = getelementptr inbounds i8, ptr %369, i64 %371
  %373 = getelementptr inbounds %struct.x264_frame, ptr %364, i64 0, i32 30, i64 1
  %374 = load ptr, ptr %373, align 8, !tbaa !88
  %375 = mul i32 %265, %346
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i8, ptr %374, i64 %376
  %378 = shl nsw i32 %347, 3
  %379 = zext nneg i32 %378 to i64
  %380 = getelementptr inbounds i8, ptr %377, i64 %379
  %381 = getelementptr inbounds %struct.x264_frame, ptr %364, i64 0, i32 30, i64 2
  %382 = load ptr, ptr %381, align 8, !tbaa !88
  %383 = getelementptr inbounds i8, ptr %382, i64 %376
  %384 = getelementptr inbounds i8, ptr %383, i64 %379
  %385 = and i32 %346, 1
  %386 = icmp eq i32 %385, 0
  %387 = or i1 %266, %386
  %388 = select i1 %387, i64 0, i64 %272
  %389 = getelementptr inbounds i8, ptr %384, i64 %388
  %390 = select i1 %387, i64 0, i64 %272
  %391 = getelementptr inbounds i8, ptr %380, i64 %390
  %392 = select i1 %387, i64 0, i64 %269
  %393 = getelementptr inbounds i8, ptr %372, i64 %392
  %394 = load ptr, ptr %273, align 8, !tbaa !89
  %395 = getelementptr inbounds i8, ptr %394, i64 %351
  %396 = load i8, ptr %395, align 1, !tbaa !82
  %397 = sext i8 %396 to i32
  %398 = load ptr, ptr %274, align 16, !tbaa !90
  %399 = sext i8 %396 to i64
  %400 = getelementptr inbounds i8, ptr %398, i64 %399
  %401 = load i8, ptr %400, align 1, !tbaa !82
  %402 = zext i8 %401 to i32
  %403 = icmp eq i8 %356, 6
  %404 = icmp sge i32 %26, %397
  %405 = or i1 %403, %404
  %406 = load i32, ptr %275, align 8, !tbaa !91
  %407 = and i32 %406, 1
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %566, label %409

409:                                              ; preds = %345
  %410 = load i32, ptr %276, align 8, !tbaa !92
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i8, ptr %394, i64 %411
  %413 = load i8, ptr %412, align 1, !tbaa !82
  %414 = sext i8 %413 to i32
  %415 = add nsw i32 %397, 1
  %416 = add nsw i32 %415, %414
  %417 = ashr i32 %416, 1
  %418 = sext i8 %413 to i64
  %419 = getelementptr inbounds i8, ptr %398, i64 %418
  %420 = load i8, ptr %419, align 1, !tbaa !82
  %421 = zext i8 %420 to i32
  %422 = add nuw nsw i32 %402, 1
  %423 = add nuw nsw i32 %422, %421
  %424 = lshr i32 %423, 1
  %425 = getelementptr inbounds i8, ptr %354, i64 %411
  %426 = load i8, ptr %425, align 1, !tbaa !82
  %427 = icmp ult i8 %426, 4
  %428 = or i1 %357, %427
  br i1 %428, label %429, label %473

429:                                              ; preds = %409
  %430 = load i32, ptr %17, align 16, !tbaa !64
  %431 = add nsw i32 %417, 12
  %432 = add i32 %431, %430
  %433 = sext i32 %432 to i64
  %434 = load i32, ptr %19, align 4, !tbaa !65
  %435 = add nsw i32 %417, 12
  %436 = add i32 %435, %434
  %437 = sext i32 %436 to i64
  %438 = add nsw i64 %433, -28
  %439 = icmp ult i64 %438, 48
  %440 = add nsw i64 %437, -28
  %441 = icmp ult i64 %440, 48
  %442 = select i1 %439, i1 %441, i1 false
  br i1 %442, label %443, label %451

443:                                              ; preds = %429
  %444 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %437
  %445 = load i8, ptr %444, align 1, !tbaa !82
  %446 = zext i8 %445 to i32
  %447 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %433
  %448 = load i8, ptr %447, align 1, !tbaa !82
  %449 = zext i8 %448 to i32
  %450 = load ptr, ptr %285, align 8, !tbaa !88
  call void %450(ptr noundef %393, i32 noundef %31, i32 noundef %449, i32 noundef %446) #10
  br label %451

451:                                              ; preds = %429, %443
  %452 = load i32, ptr %17, align 16, !tbaa !64
  %453 = add nuw nsw i32 %424, 12
  %454 = add i32 %453, %452
  %455 = sext i32 %454 to i64
  %456 = load i32, ptr %19, align 4, !tbaa !65
  %457 = add nuw nsw i32 %424, 12
  %458 = add i32 %457, %456
  %459 = sext i32 %458 to i64
  %460 = add nsw i64 %455, -28
  %461 = icmp ult i64 %460, 48
  %462 = add nsw i64 %459, -28
  %463 = icmp ult i64 %462, 48
  %464 = select i1 %461, i1 %463, i1 false
  br i1 %464, label %465, label %566

465:                                              ; preds = %451
  %466 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %459
  %467 = load i8, ptr %466, align 1, !tbaa !82
  %468 = zext i8 %467 to i32
  %469 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %455
  %470 = load i8, ptr %469, align 1, !tbaa !82
  %471 = zext i8 %470 to i32
  %472 = load ptr, ptr %286, align 8, !tbaa !88
  call void %472(ptr noundef %391, i32 noundef %34, i32 noundef %471, i32 noundef %468) #10
  call void %472(ptr noundef %389, i32 noundef %34, i32 noundef %471, i32 noundef %468) #10
  br label %566

473:                                              ; preds = %409
  %474 = load ptr, ptr %277, align 8, !tbaa !88
  %475 = load i32, ptr %17, align 16, !tbaa !64
  %476 = add nsw i32 %417, 12
  %477 = add i32 %476, %475
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %478
  %480 = load i8, ptr %479, align 1, !tbaa !82
  %481 = load i32, ptr %19, align 4, !tbaa !65
  %482 = add nsw i32 %417, 12
  %483 = add i32 %482, %481
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %484
  %486 = load i8, ptr %485, align 1, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #10
  %487 = load i32, ptr %363, align 4, !tbaa !82
  %488 = icmp ne i32 %487, 0
  %489 = add nsw i64 %478, -28
  %490 = icmp ult i64 %489, 48
  %491 = select i1 %488, i1 %490, i1 false
  %492 = add nsw i64 %484, -28
  %493 = icmp ult i64 %492, 48
  %494 = select i1 %491, i1 %493, i1 false
  br i1 %494, label %495, label %517

495:                                              ; preds = %473
  %496 = zext i8 %486 to i32
  %497 = zext i8 %480 to i32
  %498 = load i8, ptr %363, align 1, !tbaa !82
  %499 = zext i8 %498 to i64
  %500 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %478, i64 %499
  %501 = load i8, ptr %500, align 1, !tbaa !82
  store i8 %501, ptr %14, align 1, !tbaa !82
  %502 = getelementptr inbounds i8, ptr %363, i64 1
  %503 = load i8, ptr %502, align 1, !tbaa !82
  %504 = zext i8 %503 to i64
  %505 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %478, i64 %504
  %506 = load i8, ptr %505, align 1, !tbaa !82
  store i8 %506, ptr %278, align 1, !tbaa !82
  %507 = getelementptr inbounds i8, ptr %363, i64 2
  %508 = load i8, ptr %507, align 1, !tbaa !82
  %509 = zext i8 %508 to i64
  %510 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %478, i64 %509
  %511 = load i8, ptr %510, align 1, !tbaa !82
  store i8 %511, ptr %279, align 1, !tbaa !82
  %512 = getelementptr inbounds i8, ptr %363, i64 3
  %513 = load i8, ptr %512, align 1, !tbaa !82
  %514 = zext i8 %513 to i64
  %515 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %478, i64 %514
  %516 = load i8, ptr %515, align 1, !tbaa !82
  store i8 %516, ptr %280, align 1, !tbaa !82
  call void %474(ptr noundef %393, i32 noundef %31, i32 noundef %497, i32 noundef %496, ptr noundef nonnull %14) #10
  br label %517

517:                                              ; preds = %473, %495
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  %518 = load ptr, ptr %281, align 8, !tbaa !88
  %519 = load i32, ptr %17, align 16, !tbaa !64
  %520 = add nuw nsw i32 %424, 12
  %521 = add i32 %520, %519
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %522
  %524 = load i8, ptr %523, align 1, !tbaa !82
  %525 = load i32, ptr %19, align 4, !tbaa !65
  %526 = add nuw nsw i32 %424, 12
  %527 = add i32 %526, %525
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %528
  %530 = load i8, ptr %529, align 1, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #10
  %531 = load i32, ptr %363, align 4, !tbaa !82
  %532 = icmp ne i32 %531, 0
  %533 = add nsw i64 %522, -28
  %534 = icmp ult i64 %533, 48
  %535 = select i1 %532, i1 %534, i1 false
  %536 = add nsw i64 %528, -28
  %537 = icmp ult i64 %536, 48
  %538 = select i1 %535, i1 %537, i1 false
  br i1 %538, label %539, label %565

539:                                              ; preds = %517
  %540 = zext i8 %530 to i32
  %541 = zext i8 %524 to i32
  %542 = load i8, ptr %363, align 1, !tbaa !82
  %543 = zext i8 %542 to i64
  %544 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %522, i64 %543
  %545 = load i8, ptr %544, align 1, !tbaa !82
  %546 = add i8 %545, 1
  store i8 %546, ptr %13, align 1, !tbaa !82
  %547 = getelementptr inbounds i8, ptr %363, i64 1
  %548 = load i8, ptr %547, align 1, !tbaa !82
  %549 = zext i8 %548 to i64
  %550 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %522, i64 %549
  %551 = load i8, ptr %550, align 1, !tbaa !82
  %552 = add i8 %551, 1
  store i8 %552, ptr %282, align 1, !tbaa !82
  %553 = getelementptr inbounds i8, ptr %363, i64 2
  %554 = load i8, ptr %553, align 1, !tbaa !82
  %555 = zext i8 %554 to i64
  %556 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %522, i64 %555
  %557 = load i8, ptr %556, align 1, !tbaa !82
  %558 = add i8 %557, 1
  store i8 %558, ptr %283, align 1, !tbaa !82
  %559 = getelementptr inbounds i8, ptr %363, i64 3
  %560 = load i8, ptr %559, align 1, !tbaa !82
  %561 = zext i8 %560 to i64
  %562 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %522, i64 %561
  %563 = load i8, ptr %562, align 1, !tbaa !82
  %564 = add i8 %563, 1
  store i8 %564, ptr %284, align 1, !tbaa !82
  call void %518(ptr noundef %391, i32 noundef %34, i32 noundef %541, i32 noundef %540, ptr noundef nonnull %13) #10
  call void %518(ptr noundef %389, i32 noundef %34, i32 noundef %541, i32 noundef %540, ptr noundef nonnull %13) #10
  br label %565

565:                                              ; preds = %517, %539
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #10
  br label %566

566:                                              ; preds = %465, %451, %565, %345
  br i1 %405, label %760, label %567

567:                                              ; preds = %566
  %568 = icmp eq i8 %353, 0
  br i1 %568, label %569, label %616

569:                                              ; preds = %567
  %570 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 0, i64 1
  %571 = load ptr, ptr %287, align 8, !tbaa !88
  %572 = load i32, ptr %17, align 16, !tbaa !64
  %573 = add nsw i32 %397, 12
  %574 = add i32 %573, %572
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %575
  %577 = load i8, ptr %576, align 1, !tbaa !82
  %578 = load i32, ptr %19, align 4, !tbaa !65
  %579 = add nsw i32 %397, 12
  %580 = add i32 %579, %578
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %581
  %583 = load i8, ptr %582, align 1, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #10
  %584 = load i32, ptr %570, align 4, !tbaa !82
  %585 = icmp ne i32 %584, 0
  %586 = add nsw i64 %575, -28
  %587 = icmp ult i64 %586, 48
  %588 = select i1 %585, i1 %587, i1 false
  %589 = add nsw i64 %581, -28
  %590 = icmp ult i64 %589, 48
  %591 = select i1 %588, i1 %590, i1 false
  br i1 %591, label %592, label %615

592:                                              ; preds = %569
  %593 = zext i8 %583 to i32
  %594 = zext i8 %577 to i32
  %595 = getelementptr inbounds i8, ptr %393, i64 4
  %596 = load i8, ptr %570, align 1, !tbaa !82
  %597 = zext i8 %596 to i64
  %598 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %575, i64 %597
  %599 = load i8, ptr %598, align 1, !tbaa !82
  store i8 %599, ptr %12, align 1, !tbaa !82
  %600 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 0, i64 1, i64 1
  %601 = load i8, ptr %600, align 1, !tbaa !82
  %602 = zext i8 %601 to i64
  %603 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %575, i64 %602
  %604 = load i8, ptr %603, align 1, !tbaa !82
  store i8 %604, ptr %288, align 1, !tbaa !82
  %605 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 0, i64 1, i64 2
  %606 = load i8, ptr %605, align 1, !tbaa !82
  %607 = zext i8 %606 to i64
  %608 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %575, i64 %607
  %609 = load i8, ptr %608, align 1, !tbaa !82
  store i8 %609, ptr %289, align 1, !tbaa !82
  %610 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 0, i64 1, i64 3
  %611 = load i8, ptr %610, align 1, !tbaa !82
  %612 = zext i8 %611 to i64
  %613 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %575, i64 %612
  %614 = load i8, ptr %613, align 1, !tbaa !82
  store i8 %614, ptr %290, align 1, !tbaa !82
  call void %571(ptr noundef nonnull %595, i32 noundef %31, i32 noundef %594, i32 noundef %593, ptr noundef nonnull %12) #10
  br label %615

615:                                              ; preds = %569, %592
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #10
  br label %616

616:                                              ; preds = %567, %615
  %617 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 0, i64 2
  %618 = load ptr, ptr %291, align 8, !tbaa !88
  %619 = load i32, ptr %17, align 16, !tbaa !64
  %620 = add nsw i32 %397, 12
  %621 = add i32 %620, %619
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %622
  %624 = load i8, ptr %623, align 1, !tbaa !82
  %625 = load i32, ptr %19, align 4, !tbaa !65
  %626 = add nsw i32 %397, 12
  %627 = add i32 %626, %625
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %628
  %630 = load i8, ptr %629, align 1, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #10
  %631 = load i32, ptr %617, align 4, !tbaa !82
  %632 = icmp ne i32 %631, 0
  %633 = add nsw i64 %622, -28
  %634 = icmp ult i64 %633, 48
  %635 = select i1 %632, i1 %634, i1 false
  %636 = add nsw i64 %628, -28
  %637 = icmp ult i64 %636, 48
  %638 = select i1 %635, i1 %637, i1 false
  br i1 %638, label %639, label %662

639:                                              ; preds = %616
  %640 = zext i8 %630 to i32
  %641 = zext i8 %624 to i32
  %642 = getelementptr inbounds i8, ptr %393, i64 8
  %643 = load i8, ptr %617, align 1, !tbaa !82
  %644 = zext i8 %643 to i64
  %645 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %622, i64 %644
  %646 = load i8, ptr %645, align 1, !tbaa !82
  store i8 %646, ptr %11, align 1, !tbaa !82
  %647 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 0, i64 2, i64 1
  %648 = load i8, ptr %647, align 1, !tbaa !82
  %649 = zext i8 %648 to i64
  %650 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %622, i64 %649
  %651 = load i8, ptr %650, align 1, !tbaa !82
  store i8 %651, ptr %292, align 1, !tbaa !82
  %652 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 0, i64 2, i64 2
  %653 = load i8, ptr %652, align 1, !tbaa !82
  %654 = zext i8 %653 to i64
  %655 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %622, i64 %654
  %656 = load i8, ptr %655, align 1, !tbaa !82
  store i8 %656, ptr %293, align 1, !tbaa !82
  %657 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 0, i64 2, i64 3
  %658 = load i8, ptr %657, align 1, !tbaa !82
  %659 = zext i8 %658 to i64
  %660 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %622, i64 %659
  %661 = load i8, ptr %660, align 1, !tbaa !82
  store i8 %661, ptr %294, align 1, !tbaa !82
  call void %618(ptr noundef nonnull %642, i32 noundef %31, i32 noundef %641, i32 noundef %640, ptr noundef nonnull %11) #10
  br label %662

662:                                              ; preds = %616, %639
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #10
  %663 = load ptr, ptr %295, align 8, !tbaa !88
  %664 = load i32, ptr %17, align 16, !tbaa !64
  %665 = add nuw nsw i32 %402, 12
  %666 = add i32 %665, %664
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %667
  %669 = load i8, ptr %668, align 1, !tbaa !82
  %670 = load i32, ptr %19, align 4, !tbaa !65
  %671 = add nuw nsw i32 %402, 12
  %672 = add i32 %671, %670
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %673
  %675 = load i8, ptr %674, align 1, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  %676 = load i32, ptr %617, align 4, !tbaa !82
  %677 = icmp ne i32 %676, 0
  %678 = add nsw i64 %667, -28
  %679 = icmp ult i64 %678, 48
  %680 = select i1 %677, i1 %679, i1 false
  %681 = add nsw i64 %673, -28
  %682 = icmp ult i64 %681, 48
  %683 = select i1 %680, i1 %682, i1 false
  br i1 %683, label %684, label %712

684:                                              ; preds = %662
  %685 = zext i8 %675 to i32
  %686 = zext i8 %669 to i32
  %687 = getelementptr inbounds i8, ptr %389, i64 4
  %688 = getelementptr inbounds i8, ptr %391, i64 4
  %689 = load i8, ptr %617, align 1, !tbaa !82
  %690 = zext i8 %689 to i64
  %691 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %667, i64 %690
  %692 = load i8, ptr %691, align 1, !tbaa !82
  %693 = add i8 %692, 1
  store i8 %693, ptr %10, align 1, !tbaa !82
  %694 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 0, i64 2, i64 1
  %695 = load i8, ptr %694, align 1, !tbaa !82
  %696 = zext i8 %695 to i64
  %697 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %667, i64 %696
  %698 = load i8, ptr %697, align 1, !tbaa !82
  %699 = add i8 %698, 1
  store i8 %699, ptr %296, align 1, !tbaa !82
  %700 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 0, i64 2, i64 2
  %701 = load i8, ptr %700, align 1, !tbaa !82
  %702 = zext i8 %701 to i64
  %703 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %667, i64 %702
  %704 = load i8, ptr %703, align 1, !tbaa !82
  %705 = add i8 %704, 1
  store i8 %705, ptr %297, align 1, !tbaa !82
  %706 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 0, i64 2, i64 3
  %707 = load i8, ptr %706, align 1, !tbaa !82
  %708 = zext i8 %707 to i64
  %709 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %667, i64 %708
  %710 = load i8, ptr %709, align 1, !tbaa !82
  %711 = add i8 %710, 1
  store i8 %711, ptr %298, align 1, !tbaa !82
  call void %663(ptr noundef nonnull %688, i32 noundef %34, i32 noundef %686, i32 noundef %685, ptr noundef nonnull %10) #10
  call void %663(ptr noundef nonnull %687, i32 noundef %34, i32 noundef %686, i32 noundef %685, ptr noundef nonnull %10) #10
  br label %712

712:                                              ; preds = %662, %684
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  br i1 %568, label %713, label %760

713:                                              ; preds = %712
  %714 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 0, i64 3
  %715 = load ptr, ptr %291, align 8, !tbaa !88
  %716 = load i32, ptr %17, align 16, !tbaa !64
  %717 = add nsw i32 %397, 12
  %718 = add i32 %717, %716
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %719
  %721 = load i8, ptr %720, align 1, !tbaa !82
  %722 = load i32, ptr %19, align 4, !tbaa !65
  %723 = add nsw i32 %397, 12
  %724 = add i32 %723, %722
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %725
  %727 = load i8, ptr %726, align 1, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  %728 = load i32, ptr %714, align 4, !tbaa !82
  %729 = icmp ne i32 %728, 0
  %730 = add nsw i64 %719, -28
  %731 = icmp ult i64 %730, 48
  %732 = select i1 %729, i1 %731, i1 false
  %733 = add nsw i64 %725, -28
  %734 = icmp ult i64 %733, 48
  %735 = select i1 %732, i1 %734, i1 false
  br i1 %735, label %736, label %759

736:                                              ; preds = %713
  %737 = zext i8 %727 to i32
  %738 = zext i8 %721 to i32
  %739 = getelementptr inbounds i8, ptr %393, i64 12
  %740 = load i8, ptr %714, align 1, !tbaa !82
  %741 = zext i8 %740 to i64
  %742 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %719, i64 %741
  %743 = load i8, ptr %742, align 1, !tbaa !82
  store i8 %743, ptr %9, align 1, !tbaa !82
  %744 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 0, i64 3, i64 1
  %745 = load i8, ptr %744, align 1, !tbaa !82
  %746 = zext i8 %745 to i64
  %747 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %719, i64 %746
  %748 = load i8, ptr %747, align 1, !tbaa !82
  store i8 %748, ptr %299, align 1, !tbaa !82
  %749 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 0, i64 3, i64 2
  %750 = load i8, ptr %749, align 1, !tbaa !82
  %751 = zext i8 %750 to i64
  %752 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %719, i64 %751
  %753 = load i8, ptr %752, align 1, !tbaa !82
  store i8 %753, ptr %300, align 1, !tbaa !82
  %754 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 0, i64 3, i64 3
  %755 = load i8, ptr %754, align 1, !tbaa !82
  %756 = zext i8 %755 to i64
  %757 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %719, i64 %756
  %758 = load i8, ptr %757, align 1, !tbaa !82
  store i8 %758, ptr %301, align 1, !tbaa !82
  call void %715(ptr noundef nonnull %739, i32 noundef %31, i32 noundef %738, i32 noundef %737, ptr noundef nonnull %9) #10
  br label %759

759:                                              ; preds = %713, %736
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  br label %760

760:                                              ; preds = %712, %759, %566
  %761 = load i32, ptr %275, align 8, !tbaa !91
  %762 = and i32 %761, 2
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %932, label %764

764:                                              ; preds = %760
  %765 = load ptr, ptr %273, align 8, !tbaa !89
  %766 = load i32, ptr %302, align 4, !tbaa !93
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds i8, ptr %765, i64 %767
  %769 = load i8, ptr %768, align 1, !tbaa !82
  %770 = sext i8 %769 to i32
  %771 = add nsw i32 %397, 1
  %772 = add nsw i32 %771, %770
  %773 = ashr i32 %772, 1
  %774 = load ptr, ptr %274, align 16, !tbaa !90
  %775 = getelementptr inbounds i8, ptr %774, i64 %399
  %776 = load i8, ptr %775, align 1, !tbaa !82
  %777 = zext i8 %776 to i32
  %778 = sext i8 %769 to i64
  %779 = getelementptr inbounds i8, ptr %774, i64 %778
  %780 = load i8, ptr %779, align 1, !tbaa !82
  %781 = zext i8 %780 to i32
  %782 = add nuw nsw i32 %777, 1
  %783 = add nuw nsw i32 %782, %781
  %784 = lshr i32 %783, 1
  %785 = load ptr, ptr %263, align 8, !tbaa !87
  %786 = getelementptr inbounds i8, ptr %785, i64 %767
  %787 = load i8, ptr %786, align 1, !tbaa !82
  %788 = icmp ult i8 %787, 4
  %789 = or i1 %357, %788
  %790 = and i1 %266, %789
  br i1 %790, label %791, label %835

791:                                              ; preds = %764
  %792 = load i32, ptr %17, align 16, !tbaa !64
  %793 = add nsw i32 %773, 12
  %794 = add i32 %793, %792
  %795 = sext i32 %794 to i64
  %796 = load i32, ptr %19, align 4, !tbaa !65
  %797 = add nsw i32 %773, 12
  %798 = add i32 %797, %796
  %799 = sext i32 %798 to i64
  %800 = add nsw i64 %795, -28
  %801 = icmp ult i64 %800, 48
  %802 = add nsw i64 %799, -28
  %803 = icmp ult i64 %802, 48
  %804 = select i1 %801, i1 %803, i1 false
  br i1 %804, label %805, label %813

805:                                              ; preds = %791
  %806 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %799
  %807 = load i8, ptr %806, align 1, !tbaa !82
  %808 = zext i8 %807 to i32
  %809 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %795
  %810 = load i8, ptr %809, align 1, !tbaa !82
  %811 = zext i8 %810 to i32
  %812 = load ptr, ptr %311, align 8, !tbaa !88
  call void %812(ptr noundef %393, i32 noundef %31, i32 noundef %811, i32 noundef %808) #10
  br label %813

813:                                              ; preds = %791, %805
  %814 = load i32, ptr %17, align 16, !tbaa !64
  %815 = add nuw nsw i32 %784, 12
  %816 = add i32 %815, %814
  %817 = sext i32 %816 to i64
  %818 = load i32, ptr %19, align 4, !tbaa !65
  %819 = add nuw nsw i32 %784, 12
  %820 = add i32 %819, %818
  %821 = sext i32 %820 to i64
  %822 = add nsw i64 %817, -28
  %823 = icmp ult i64 %822, 48
  %824 = add nsw i64 %821, -28
  %825 = icmp ult i64 %824, 48
  %826 = select i1 %823, i1 %825, i1 false
  br i1 %826, label %827, label %932

827:                                              ; preds = %813
  %828 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %821
  %829 = load i8, ptr %828, align 1, !tbaa !82
  %830 = zext i8 %829 to i32
  %831 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %817
  %832 = load i8, ptr %831, align 1, !tbaa !82
  %833 = zext i8 %832 to i32
  %834 = load ptr, ptr %312, align 8, !tbaa !88
  call void %834(ptr noundef %391, i32 noundef %34, i32 noundef %833, i32 noundef %830) #10
  call void %834(ptr noundef %389, i32 noundef %34, i32 noundef %833, i32 noundef %830) #10
  br label %932

835:                                              ; preds = %764
  br i1 %788, label %836, label %838

836:                                              ; preds = %835
  %837 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 1
  store i32 50529027, ptr %837, align 1
  br label %838

838:                                              ; preds = %835, %836
  %839 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 1
  %840 = load ptr, ptr %303, align 8, !tbaa !88
  %841 = load i32, ptr %17, align 16, !tbaa !64
  %842 = add nsw i32 %773, 12
  %843 = add i32 %842, %841
  %844 = sext i32 %843 to i64
  %845 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %844
  %846 = load i8, ptr %845, align 1, !tbaa !82
  %847 = load i32, ptr %19, align 4, !tbaa !65
  %848 = add nsw i32 %773, 12
  %849 = add i32 %848, %847
  %850 = sext i32 %849 to i64
  %851 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %850
  %852 = load i8, ptr %851, align 1, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  %853 = load i32, ptr %839, align 4, !tbaa !82
  %854 = icmp ne i32 %853, 0
  %855 = add nsw i64 %844, -28
  %856 = icmp ult i64 %855, 48
  %857 = select i1 %854, i1 %856, i1 false
  %858 = add nsw i64 %850, -28
  %859 = icmp ult i64 %858, 48
  %860 = select i1 %857, i1 %859, i1 false
  br i1 %860, label %861, label %883

861:                                              ; preds = %838
  %862 = zext i8 %852 to i32
  %863 = zext i8 %846 to i32
  %864 = load i8, ptr %839, align 1, !tbaa !82
  %865 = zext i8 %864 to i64
  %866 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %844, i64 %865
  %867 = load i8, ptr %866, align 1, !tbaa !82
  store i8 %867, ptr %8, align 1, !tbaa !82
  %868 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 1, i64 0, i64 1
  %869 = load i8, ptr %868, align 1, !tbaa !82
  %870 = zext i8 %869 to i64
  %871 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %844, i64 %870
  %872 = load i8, ptr %871, align 1, !tbaa !82
  store i8 %872, ptr %304, align 1, !tbaa !82
  %873 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 1, i64 0, i64 2
  %874 = load i8, ptr %873, align 1, !tbaa !82
  %875 = zext i8 %874 to i64
  %876 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %844, i64 %875
  %877 = load i8, ptr %876, align 1, !tbaa !82
  store i8 %877, ptr %305, align 1, !tbaa !82
  %878 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 1, i64 0, i64 3
  %879 = load i8, ptr %878, align 1, !tbaa !82
  %880 = zext i8 %879 to i64
  %881 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %844, i64 %880
  %882 = load i8, ptr %881, align 1, !tbaa !82
  store i8 %882, ptr %306, align 1, !tbaa !82
  call void %840(ptr noundef %393, i32 noundef %31, i32 noundef %863, i32 noundef %862, ptr noundef nonnull %8) #10
  br label %883

883:                                              ; preds = %838, %861
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  %884 = load ptr, ptr %307, align 8, !tbaa !88
  %885 = load i32, ptr %17, align 16, !tbaa !64
  %886 = add nuw nsw i32 %784, 12
  %887 = add i32 %886, %885
  %888 = sext i32 %887 to i64
  %889 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %888
  %890 = load i8, ptr %889, align 1, !tbaa !82
  %891 = load i32, ptr %19, align 4, !tbaa !65
  %892 = add nuw nsw i32 %784, 12
  %893 = add i32 %892, %891
  %894 = sext i32 %893 to i64
  %895 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %894
  %896 = load i8, ptr %895, align 1, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  %897 = load i32, ptr %839, align 4, !tbaa !82
  %898 = icmp ne i32 %897, 0
  %899 = add nsw i64 %888, -28
  %900 = icmp ult i64 %899, 48
  %901 = select i1 %898, i1 %900, i1 false
  %902 = add nsw i64 %894, -28
  %903 = icmp ult i64 %902, 48
  %904 = select i1 %901, i1 %903, i1 false
  br i1 %904, label %905, label %931

905:                                              ; preds = %883
  %906 = zext i8 %896 to i32
  %907 = zext i8 %890 to i32
  %908 = load i8, ptr %839, align 1, !tbaa !82
  %909 = zext i8 %908 to i64
  %910 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %888, i64 %909
  %911 = load i8, ptr %910, align 1, !tbaa !82
  %912 = add i8 %911, 1
  store i8 %912, ptr %7, align 1, !tbaa !82
  %913 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 1, i64 0, i64 1
  %914 = load i8, ptr %913, align 1, !tbaa !82
  %915 = zext i8 %914 to i64
  %916 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %888, i64 %915
  %917 = load i8, ptr %916, align 1, !tbaa !82
  %918 = add i8 %917, 1
  store i8 %918, ptr %308, align 1, !tbaa !82
  %919 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 1, i64 0, i64 2
  %920 = load i8, ptr %919, align 1, !tbaa !82
  %921 = zext i8 %920 to i64
  %922 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %888, i64 %921
  %923 = load i8, ptr %922, align 1, !tbaa !82
  %924 = add i8 %923, 1
  store i8 %924, ptr %309, align 1, !tbaa !82
  %925 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 1, i64 0, i64 3
  %926 = load i8, ptr %925, align 1, !tbaa !82
  %927 = zext i8 %926 to i64
  %928 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %888, i64 %927
  %929 = load i8, ptr %928, align 1, !tbaa !82
  %930 = add i8 %929, 1
  store i8 %930, ptr %310, align 1, !tbaa !82
  call void %884(ptr noundef %391, i32 noundef %34, i32 noundef %907, i32 noundef %906, ptr noundef nonnull %7) #10
  call void %884(ptr noundef %389, i32 noundef %34, i32 noundef %907, i32 noundef %906, ptr noundef nonnull %7) #10
  br label %931

931:                                              ; preds = %883, %905
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  br label %932

932:                                              ; preds = %827, %813, %931, %760
  br i1 %405, label %1126, label %933

933:                                              ; preds = %932
  %934 = icmp eq i8 %353, 0
  br i1 %934, label %935, label %982

935:                                              ; preds = %933
  %936 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 1, i64 1
  %937 = load ptr, ptr %313, align 8, !tbaa !88
  %938 = load i32, ptr %17, align 16, !tbaa !64
  %939 = add nsw i32 %397, 12
  %940 = add i32 %939, %938
  %941 = sext i32 %940 to i64
  %942 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %941
  %943 = load i8, ptr %942, align 1, !tbaa !82
  %944 = load i32, ptr %19, align 4, !tbaa !65
  %945 = add nsw i32 %397, 12
  %946 = add i32 %945, %944
  %947 = sext i32 %946 to i64
  %948 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %947
  %949 = load i8, ptr %948, align 1, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  %950 = load i32, ptr %936, align 4, !tbaa !82
  %951 = icmp ne i32 %950, 0
  %952 = add nsw i64 %941, -28
  %953 = icmp ult i64 %952, 48
  %954 = select i1 %951, i1 %953, i1 false
  %955 = add nsw i64 %947, -28
  %956 = icmp ult i64 %955, 48
  %957 = select i1 %954, i1 %956, i1 false
  br i1 %957, label %958, label %981

958:                                              ; preds = %935
  %959 = zext i8 %949 to i32
  %960 = zext i8 %943 to i32
  %961 = getelementptr inbounds i8, ptr %393, i64 %315
  %962 = load i8, ptr %936, align 1, !tbaa !82
  %963 = zext i8 %962 to i64
  %964 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %941, i64 %963
  %965 = load i8, ptr %964, align 1, !tbaa !82
  store i8 %965, ptr %6, align 1, !tbaa !82
  %966 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 1, i64 1, i64 1
  %967 = load i8, ptr %966, align 1, !tbaa !82
  %968 = zext i8 %967 to i64
  %969 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %941, i64 %968
  %970 = load i8, ptr %969, align 1, !tbaa !82
  store i8 %970, ptr %316, align 1, !tbaa !82
  %971 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 1, i64 1, i64 2
  %972 = load i8, ptr %971, align 1, !tbaa !82
  %973 = zext i8 %972 to i64
  %974 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %941, i64 %973
  %975 = load i8, ptr %974, align 1, !tbaa !82
  store i8 %975, ptr %317, align 1, !tbaa !82
  %976 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 1, i64 1, i64 3
  %977 = load i8, ptr %976, align 1, !tbaa !82
  %978 = zext i8 %977 to i64
  %979 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %941, i64 %978
  %980 = load i8, ptr %979, align 1, !tbaa !82
  store i8 %980, ptr %318, align 1, !tbaa !82
  call void %937(ptr noundef %961, i32 noundef %31, i32 noundef %960, i32 noundef %959, ptr noundef nonnull %6) #10
  br label %981

981:                                              ; preds = %935, %958
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br label %982

982:                                              ; preds = %933, %981
  %983 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 1, i64 2
  %984 = load ptr, ptr %319, align 8, !tbaa !88
  %985 = load i32, ptr %17, align 16, !tbaa !64
  %986 = add nsw i32 %397, 12
  %987 = add i32 %986, %985
  %988 = sext i32 %987 to i64
  %989 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %988
  %990 = load i8, ptr %989, align 1, !tbaa !82
  %991 = load i32, ptr %19, align 4, !tbaa !65
  %992 = add nsw i32 %397, 12
  %993 = add i32 %992, %991
  %994 = sext i32 %993 to i64
  %995 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %994
  %996 = load i8, ptr %995, align 1, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %997 = load i32, ptr %983, align 4, !tbaa !82
  %998 = icmp ne i32 %997, 0
  %999 = add nsw i64 %988, -28
  %1000 = icmp ult i64 %999, 48
  %1001 = select i1 %998, i1 %1000, i1 false
  %1002 = add nsw i64 %994, -28
  %1003 = icmp ult i64 %1002, 48
  %1004 = select i1 %1001, i1 %1003, i1 false
  br i1 %1004, label %1005, label %1028

1005:                                             ; preds = %982
  %1006 = zext i8 %996 to i32
  %1007 = zext i8 %990 to i32
  %1008 = getelementptr inbounds i8, ptr %393, i64 %321
  %1009 = load i8, ptr %983, align 1, !tbaa !82
  %1010 = zext i8 %1009 to i64
  %1011 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %988, i64 %1010
  %1012 = load i8, ptr %1011, align 1, !tbaa !82
  store i8 %1012, ptr %5, align 1, !tbaa !82
  %1013 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 1, i64 2, i64 1
  %1014 = load i8, ptr %1013, align 1, !tbaa !82
  %1015 = zext i8 %1014 to i64
  %1016 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %988, i64 %1015
  %1017 = load i8, ptr %1016, align 1, !tbaa !82
  store i8 %1017, ptr %322, align 1, !tbaa !82
  %1018 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 1, i64 2, i64 2
  %1019 = load i8, ptr %1018, align 1, !tbaa !82
  %1020 = zext i8 %1019 to i64
  %1021 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %988, i64 %1020
  %1022 = load i8, ptr %1021, align 1, !tbaa !82
  store i8 %1022, ptr %323, align 1, !tbaa !82
  %1023 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 1, i64 2, i64 3
  %1024 = load i8, ptr %1023, align 1, !tbaa !82
  %1025 = zext i8 %1024 to i64
  %1026 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %988, i64 %1025
  %1027 = load i8, ptr %1026, align 1, !tbaa !82
  store i8 %1027, ptr %324, align 1, !tbaa !82
  call void %984(ptr noundef %1008, i32 noundef %31, i32 noundef %1007, i32 noundef %1006, ptr noundef nonnull %5) #10
  br label %1028

1028:                                             ; preds = %982, %1005
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %1029 = load ptr, ptr %325, align 8, !tbaa !88
  %1030 = load i32, ptr %17, align 16, !tbaa !64
  %1031 = add nuw nsw i32 %402, 12
  %1032 = add i32 %1031, %1030
  %1033 = sext i32 %1032 to i64
  %1034 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %1033
  %1035 = load i8, ptr %1034, align 1, !tbaa !82
  %1036 = load i32, ptr %19, align 4, !tbaa !65
  %1037 = add nuw nsw i32 %402, 12
  %1038 = add i32 %1037, %1036
  %1039 = sext i32 %1038 to i64
  %1040 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %1039
  %1041 = load i8, ptr %1040, align 1, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %1042 = load i32, ptr %983, align 4, !tbaa !82
  %1043 = icmp ne i32 %1042, 0
  %1044 = add nsw i64 %1033, -28
  %1045 = icmp ult i64 %1044, 48
  %1046 = select i1 %1043, i1 %1045, i1 false
  %1047 = add nsw i64 %1039, -28
  %1048 = icmp ult i64 %1047, 48
  %1049 = select i1 %1046, i1 %1048, i1 false
  br i1 %1049, label %1050, label %1078

1050:                                             ; preds = %1028
  %1051 = zext i8 %1041 to i32
  %1052 = zext i8 %1035 to i32
  %1053 = getelementptr inbounds i8, ptr %389, i64 %327
  %1054 = getelementptr inbounds i8, ptr %391, i64 %327
  %1055 = load i8, ptr %983, align 1, !tbaa !82
  %1056 = zext i8 %1055 to i64
  %1057 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %1033, i64 %1056
  %1058 = load i8, ptr %1057, align 1, !tbaa !82
  %1059 = add i8 %1058, 1
  store i8 %1059, ptr %4, align 1, !tbaa !82
  %1060 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 1, i64 2, i64 1
  %1061 = load i8, ptr %1060, align 1, !tbaa !82
  %1062 = zext i8 %1061 to i64
  %1063 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %1033, i64 %1062
  %1064 = load i8, ptr %1063, align 1, !tbaa !82
  %1065 = add i8 %1064, 1
  store i8 %1065, ptr %328, align 1, !tbaa !82
  %1066 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 1, i64 2, i64 2
  %1067 = load i8, ptr %1066, align 1, !tbaa !82
  %1068 = zext i8 %1067 to i64
  %1069 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %1033, i64 %1068
  %1070 = load i8, ptr %1069, align 1, !tbaa !82
  %1071 = add i8 %1070, 1
  store i8 %1071, ptr %329, align 1, !tbaa !82
  %1072 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 1, i64 2, i64 3
  %1073 = load i8, ptr %1072, align 1, !tbaa !82
  %1074 = zext i8 %1073 to i64
  %1075 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %1033, i64 %1074
  %1076 = load i8, ptr %1075, align 1, !tbaa !82
  %1077 = add i8 %1076, 1
  store i8 %1077, ptr %330, align 1, !tbaa !82
  call void %1029(ptr noundef %1054, i32 noundef %34, i32 noundef %1052, i32 noundef %1051, ptr noundef nonnull %4) #10
  call void %1029(ptr noundef %1053, i32 noundef %34, i32 noundef %1052, i32 noundef %1051, ptr noundef nonnull %4) #10
  br label %1078

1078:                                             ; preds = %1028, %1050
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br i1 %934, label %1079, label %1126

1079:                                             ; preds = %1078
  %1080 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 1, i64 3
  %1081 = load ptr, ptr %319, align 8, !tbaa !88
  %1082 = load i32, ptr %17, align 16, !tbaa !64
  %1083 = add nsw i32 %397, 12
  %1084 = add i32 %1083, %1082
  %1085 = sext i32 %1084 to i64
  %1086 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %1085
  %1087 = load i8, ptr %1086, align 1, !tbaa !82
  %1088 = load i32, ptr %19, align 4, !tbaa !65
  %1089 = add nsw i32 %397, 12
  %1090 = add i32 %1089, %1088
  %1091 = sext i32 %1090 to i64
  %1092 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %1091
  %1093 = load i8, ptr %1092, align 1, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %1094 = load i32, ptr %1080, align 4, !tbaa !82
  %1095 = icmp ne i32 %1094, 0
  %1096 = add nsw i64 %1085, -28
  %1097 = icmp ult i64 %1096, 48
  %1098 = select i1 %1095, i1 %1097, i1 false
  %1099 = add nsw i64 %1091, -28
  %1100 = icmp ult i64 %1099, 48
  %1101 = select i1 %1098, i1 %1100, i1 false
  br i1 %1101, label %1102, label %1125

1102:                                             ; preds = %1079
  %1103 = zext i8 %1093 to i32
  %1104 = zext i8 %1087 to i32
  %1105 = getelementptr inbounds i8, ptr %393, i64 %332
  %1106 = load i8, ptr %1080, align 1, !tbaa !82
  %1107 = zext i8 %1106 to i64
  %1108 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %1085, i64 %1107
  %1109 = load i8, ptr %1108, align 1, !tbaa !82
  store i8 %1109, ptr %3, align 1, !tbaa !82
  %1110 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 1, i64 3, i64 1
  %1111 = load i8, ptr %1110, align 1, !tbaa !82
  %1112 = zext i8 %1111 to i64
  %1113 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %1085, i64 %1112
  %1114 = load i8, ptr %1113, align 1, !tbaa !82
  store i8 %1114, ptr %333, align 1, !tbaa !82
  %1115 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 1, i64 3, i64 2
  %1116 = load i8, ptr %1115, align 1, !tbaa !82
  %1117 = zext i8 %1116 to i64
  %1118 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %1085, i64 %1117
  %1119 = load i8, ptr %1118, align 1, !tbaa !82
  store i8 %1119, ptr %334, align 1, !tbaa !82
  %1120 = getelementptr inbounds [4 x [4 x i8]], ptr %363, i64 1, i64 3, i64 3
  %1121 = load i8, ptr %1120, align 1, !tbaa !82
  %1122 = zext i8 %1121 to i64
  %1123 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %1085, i64 %1122
  %1124 = load i8, ptr %1123, align 1, !tbaa !82
  store i8 %1124, ptr %335, align 1, !tbaa !82
  call void %1081(ptr noundef %1105, i32 noundef %31, i32 noundef %1104, i32 noundef %1103, ptr noundef nonnull %3) #10
  br label %1125

1125:                                             ; preds = %1079, %1102
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %1126

1126:                                             ; preds = %1078, %1125, %932
  %1127 = or i32 %346, %336
  %1128 = and i32 %1127, 1
  %1129 = add nuw nsw i32 %1128, %347
  %1130 = xor i32 %346, %16
  %1131 = load ptr, ptr %255, align 16, !tbaa !75
  %1132 = getelementptr inbounds %struct.x264_sps_t, ptr %1131, i64 0, i32 16
  %1133 = load i32, ptr %1132, align 4, !tbaa !76
  %1134 = icmp slt i32 %1129, %1133
  br i1 %1134, label %345, label %337, !llvm.loop !94

1135:                                             ; preds = %337
  %1136 = getelementptr inbounds %struct.x264_pps_t, ptr %341, i64 0, i32 15
  %1137 = load i32, ptr %1136, align 4, !tbaa !73
  %1138 = icmp eq i32 %1137, 0
  br i1 %1138, label %1238, label %1139

1139:                                             ; preds = %1135
  %1140 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 43
  %1141 = load ptr, ptr %1140, align 16, !tbaa !74
  %1142 = mul nsw i32 %339, %338
  %1143 = sext i32 %1142 to i64
  %1144 = getelementptr inbounds [24 x i8], ptr %1141, i64 %1143
  %1145 = load ptr, ptr %340, align 16, !tbaa !75
  %1146 = getelementptr inbounds %struct.x264_sps_t, ptr %1145, i64 0, i32 16
  %1147 = load i32, ptr %1146, align 4, !tbaa !76
  %1148 = icmp sgt i32 %1147, 0
  br i1 %1148, label %1149, label %1159

1149:                                             ; preds = %1139, %1149
  %1150 = phi i64 [ %1153, %1149 ], [ 0, %1139 ]
  %1151 = getelementptr inbounds [24 x i8], ptr %1144, i64 %1150
  %1152 = getelementptr inbounds [16 x i8], ptr %36, i64 %1150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1151, ptr noundef nonnull align 1 dereferenceable(16) %1152, i64 16, i1 false)
  %1153 = add nuw nsw i64 %1150, 1
  %1154 = load ptr, ptr %340, align 16, !tbaa !75
  %1155 = getelementptr inbounds %struct.x264_sps_t, ptr %1154, i64 0, i32 16
  %1156 = load i32, ptr %1155, align 4, !tbaa !76
  %1157 = sext i32 %1156 to i64
  %1158 = icmp slt i64 %1153, %1157
  br i1 %1158, label %1149, label %1159, !llvm.loop !95

1159:                                             ; preds = %1149, %1139
  %1160 = phi i32 [ %1147, %1139 ], [ %1156, %1149 ]
  %1161 = icmp sgt i32 %338, 0
  br i1 %1161, label %1162, label %1184

1162:                                             ; preds = %1159
  %1163 = add nsw i32 %338, -1
  %1164 = sext i32 %1160 to i64
  %1165 = getelementptr inbounds [16 x i8], ptr %36, i64 %1164
  %1166 = load ptr, ptr %1140, align 16, !tbaa !74
  %1167 = mul nsw i32 %1160, %1163
  %1168 = sext i32 %1167 to i64
  %1169 = getelementptr inbounds [24 x i8], ptr %1166, i64 %1168
  %1170 = load ptr, ptr %340, align 16, !tbaa !75
  %1171 = getelementptr inbounds %struct.x264_sps_t, ptr %1170, i64 0, i32 16
  %1172 = load i32, ptr %1171, align 4, !tbaa !76
  %1173 = icmp sgt i32 %1172, 0
  br i1 %1173, label %1174, label %1184

1174:                                             ; preds = %1162, %1174
  %1175 = phi i64 [ %1178, %1174 ], [ 0, %1162 ]
  %1176 = getelementptr inbounds [24 x i8], ptr %1169, i64 %1175
  %1177 = getelementptr inbounds [16 x i8], ptr %1165, i64 %1175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1176, ptr noundef nonnull align 1 dereferenceable(16) %1177, i64 16, i1 false)
  %1178 = add nuw nsw i64 %1175, 1
  %1179 = load ptr, ptr %340, align 16, !tbaa !75
  %1180 = getelementptr inbounds %struct.x264_sps_t, ptr %1179, i64 0, i32 16
  %1181 = load i32, ptr %1180, align 4, !tbaa !76
  %1182 = sext i32 %1181 to i64
  %1183 = icmp slt i64 %1178, %1182
  br i1 %1183, label %1174, label %1184, !llvm.loop !95

1184:                                             ; preds = %1174, %1162, %1159
  %1185 = load i32, ptr %15, align 4, !tbaa !34
  %1186 = icmp eq i32 %1185, 0
  br i1 %1186, label %1238, label %1187

1187:                                             ; preds = %1184
  %1188 = add nsw i32 %338, 1
  %1189 = load ptr, ptr %340, align 16, !tbaa !75
  %1190 = getelementptr inbounds %struct.x264_sps_t, ptr %1189, i64 0, i32 16
  %1191 = load i32, ptr %1190, align 4, !tbaa !76
  %1192 = shl nsw i32 %1191, 1
  %1193 = sext i32 %1192 to i64
  %1194 = getelementptr inbounds [16 x i8], ptr %36, i64 %1193
  %1195 = load ptr, ptr %1140, align 16, !tbaa !74
  %1196 = mul nsw i32 %1191, %1188
  %1197 = sext i32 %1196 to i64
  %1198 = getelementptr inbounds [24 x i8], ptr %1195, i64 %1197
  %1199 = load ptr, ptr %340, align 16, !tbaa !75
  %1200 = getelementptr inbounds %struct.x264_sps_t, ptr %1199, i64 0, i32 16
  %1201 = load i32, ptr %1200, align 4, !tbaa !76
  %1202 = icmp sgt i32 %1201, 0
  br i1 %1202, label %1203, label %1213

1203:                                             ; preds = %1187, %1203
  %1204 = phi i64 [ %1207, %1203 ], [ 0, %1187 ]
  %1205 = getelementptr inbounds [24 x i8], ptr %1198, i64 %1204
  %1206 = getelementptr inbounds [16 x i8], ptr %1194, i64 %1204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1205, ptr noundef nonnull align 1 dereferenceable(16) %1206, i64 16, i1 false)
  %1207 = add nuw nsw i64 %1204, 1
  %1208 = load ptr, ptr %340, align 16, !tbaa !75
  %1209 = getelementptr inbounds %struct.x264_sps_t, ptr %1208, i64 0, i32 16
  %1210 = load i32, ptr %1209, align 4, !tbaa !76
  %1211 = sext i32 %1210 to i64
  %1212 = icmp slt i64 %1207, %1211
  br i1 %1212, label %1203, label %1213, !llvm.loop !95

1213:                                             ; preds = %1203, %1187
  %1214 = phi i32 [ %1201, %1187 ], [ %1210, %1203 ]
  br i1 %1161, label %1215, label %1238

1215:                                             ; preds = %1213
  %1216 = add nsw i32 %338, -2
  %1217 = mul nsw i32 %1214, 3
  %1218 = sext i32 %1217 to i64
  %1219 = getelementptr inbounds [16 x i8], ptr %36, i64 %1218
  %1220 = load ptr, ptr %1140, align 16, !tbaa !74
  %1221 = mul nsw i32 %1214, %1216
  %1222 = sext i32 %1221 to i64
  %1223 = getelementptr inbounds [24 x i8], ptr %1220, i64 %1222
  %1224 = load ptr, ptr %340, align 16, !tbaa !75
  %1225 = getelementptr inbounds %struct.x264_sps_t, ptr %1224, i64 0, i32 16
  %1226 = load i32, ptr %1225, align 4, !tbaa !76
  %1227 = icmp sgt i32 %1226, 0
  br i1 %1227, label %1228, label %1238

1228:                                             ; preds = %1215, %1228
  %1229 = phi i64 [ %1232, %1228 ], [ 0, %1215 ]
  %1230 = getelementptr inbounds [24 x i8], ptr %1223, i64 %1229
  %1231 = getelementptr inbounds [16 x i8], ptr %1219, i64 %1229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1230, ptr noundef nonnull align 1 dereferenceable(16) %1231, i64 16, i1 false)
  %1232 = add nuw nsw i64 %1229, 1
  %1233 = load ptr, ptr %340, align 16, !tbaa !75
  %1234 = getelementptr inbounds %struct.x264_sps_t, ptr %1233, i64 0, i32 16
  %1235 = load i32, ptr %1234, align 4, !tbaa !76
  %1236 = sext i32 %1235 to i64
  %1237 = icmp slt i64 %1232, %1236
  br i1 %1237, label %1228, label %1238, !llvm.loop !95

1238:                                             ; preds = %1228, %1215, %1213, %1184, %1135, %337
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @x264_prefetch_fenc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_macroblock_cache_load_neighbours_deblock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @x264_deblock_init(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds [2 x ptr], ptr %1, i64 0, i64 1
  store ptr @deblock_v_luma_c, ptr %3, align 8, !tbaa !88
  store ptr @deblock_h_luma_c, ptr %1, align 8, !tbaa !88
  %4 = getelementptr inbounds %struct.x264_deblock_function_t, ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %struct.x264_deblock_function_t, ptr %1, i64 0, i32 1, i64 1
  store ptr @deblock_v_chroma_c, ptr %5, align 8, !tbaa !88
  store ptr @deblock_h_chroma_c, ptr %4, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.x264_deblock_function_t, ptr %1, i64 0, i32 2
  %7 = getelementptr inbounds %struct.x264_deblock_function_t, ptr %1, i64 0, i32 2, i64 1
  store ptr @deblock_v_luma_intra_c, ptr %7, align 8, !tbaa !88
  store ptr @deblock_h_luma_intra_c, ptr %6, align 8, !tbaa !88
  %8 = getelementptr inbounds %struct.x264_deblock_function_t, ptr %1, i64 0, i32 3
  %9 = getelementptr inbounds %struct.x264_deblock_function_t, ptr %1, i64 0, i32 3, i64 1
  store ptr @deblock_v_chroma_intra_c, ptr %9, align 8, !tbaa !88
  store ptr @deblock_h_chroma_intra_c, ptr %8, align 8, !tbaa !88
  %10 = getelementptr inbounds %struct.x264_deblock_function_t, ptr %1, i64 0, i32 4
  store ptr @deblock_strength_c, ptr %10, align 8, !tbaa !96
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_v_luma_c(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #4 {
  tail call fastcc void @deblock_luma_c(ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_h_luma_c(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #4 {
  tail call fastcc void @deblock_luma_c(ptr noundef %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_v_chroma_c(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #4 {
  %6 = mul nsw i32 %1, -2
  %7 = sext i32 %6 to i64
  %8 = sub nsw i32 0, %1
  %9 = sext i32 %8 to i64
  %10 = sext i32 %1 to i64
  br label %11

11:                                               ; preds = %5, %73
  %12 = phi i64 [ 0, %5 ], [ %75, %73 ]
  %13 = phi ptr [ %0, %5 ], [ %74, %73 ]
  %14 = getelementptr inbounds i8, ptr %4, i64 %12
  %15 = load i8, ptr %14, align 1, !tbaa !82
  %16 = sext i8 %15 to i32
  %17 = icmp slt i8 %15, 1
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  %19 = sub nsw i32 0, %16
  br label %22

20:                                               ; preds = %11
  %21 = getelementptr inbounds i8, ptr %13, i64 2
  br label %73

22:                                               ; preds = %18, %69
  %23 = phi ptr [ %13, %18 ], [ %70, %69 ]
  %24 = phi i32 [ 0, %18 ], [ %71, %69 ]
  %25 = getelementptr inbounds i8, ptr %23, i64 %7
  %26 = load i8, ptr %25, align 1, !tbaa !82
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds i8, ptr %23, i64 %9
  %29 = load i8, ptr %28, align 1, !tbaa !82
  %30 = zext i8 %29 to i32
  %31 = load i8, ptr %23, align 1, !tbaa !82
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds i8, ptr %23, i64 %10
  %34 = load i8, ptr %33, align 1, !tbaa !82
  %35 = zext i8 %34 to i32
  %36 = sub nsw i32 %30, %32
  %37 = tail call i32 @llvm.abs.i32(i32 %36, i1 true)
  %38 = icmp slt i32 %37, %2
  br i1 %38, label %39, label %69

39:                                               ; preds = %22
  %40 = sub nsw i32 %27, %30
  %41 = tail call i32 @llvm.abs.i32(i32 %40, i1 true)
  %42 = icmp slt i32 %41, %3
  br i1 %42, label %43, label %69

43:                                               ; preds = %39
  %44 = sub nsw i32 %35, %32
  %45 = tail call i32 @llvm.abs.i32(i32 %44, i1 true)
  %46 = icmp slt i32 %45, %3
  br i1 %46, label %47, label %69

47:                                               ; preds = %43
  %48 = sub nsw i32 %32, %30
  %49 = shl nsw i32 %48, 2
  %50 = add nuw nsw i32 %27, 4
  %51 = sub nsw i32 %50, %35
  %52 = add nsw i32 %51, %49
  %53 = ashr i32 %52, 3
  %54 = icmp slt i32 %53, %19
  %55 = tail call i32 @llvm.smin.i32(i32 %53, i32 %16)
  %56 = select i1 %54, i32 %19, i32 %55
  %57 = add nsw i32 %56, %30
  %58 = icmp ult i32 %57, 256
  %59 = icmp sgt i32 %57, 0
  %60 = sext i1 %59 to i32
  %61 = select i1 %58, i32 %57, i32 %60
  %62 = trunc i32 %61 to i8
  store i8 %62, ptr %28, align 1, !tbaa !82
  %63 = sub nsw i32 %32, %56
  %64 = icmp ult i32 %63, 256
  %65 = icmp sgt i32 %63, 0
  %66 = sext i1 %65 to i32
  %67 = select i1 %64, i32 %63, i32 %66
  %68 = trunc i32 %67 to i8
  store i8 %68, ptr %23, align 1, !tbaa !82
  br label %69

69:                                               ; preds = %47, %43, %39, %22
  %70 = getelementptr inbounds i8, ptr %23, i64 1
  %71 = add nuw nsw i32 %24, 1
  %72 = icmp eq i32 %24, 0
  br i1 %72, label %22, label %73, !llvm.loop !97

73:                                               ; preds = %69, %20
  %74 = phi ptr [ %21, %20 ], [ %70, %69 ]
  %75 = add nuw nsw i64 %12, 1
  %76 = icmp eq i64 %75, 4
  br i1 %76, label %77, label %11, !llvm.loop !98

77:                                               ; preds = %73
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_h_chroma_c(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #4 {
  %6 = sext i32 %1 to i64
  %7 = shl nsw i32 %1, 1
  %8 = sext i32 %7 to i64
  br label %9

9:                                                ; preds = %5, %71
  %10 = phi i64 [ 0, %5 ], [ %73, %71 ]
  %11 = phi ptr [ %0, %5 ], [ %72, %71 ]
  %12 = getelementptr inbounds i8, ptr %4, i64 %10
  %13 = load i8, ptr %12, align 1, !tbaa !82
  %14 = sext i8 %13 to i32
  %15 = icmp slt i8 %13, 1
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = sub nsw i32 0, %14
  br label %20

18:                                               ; preds = %9
  %19 = getelementptr inbounds i8, ptr %11, i64 %8
  br label %71

20:                                               ; preds = %16, %67
  %21 = phi ptr [ %11, %16 ], [ %68, %67 ]
  %22 = phi i32 [ 0, %16 ], [ %69, %67 ]
  %23 = getelementptr inbounds i8, ptr %21, i64 -2
  %24 = load i8, ptr %23, align 1, !tbaa !82
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds i8, ptr %21, i64 -1
  %27 = load i8, ptr %26, align 1, !tbaa !82
  %28 = zext i8 %27 to i32
  %29 = load i8, ptr %21, align 1, !tbaa !82
  %30 = zext i8 %29 to i32
  %31 = getelementptr inbounds i8, ptr %21, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !82
  %33 = zext i8 %32 to i32
  %34 = sub nsw i32 %28, %30
  %35 = tail call i32 @llvm.abs.i32(i32 %34, i1 true)
  %36 = icmp slt i32 %35, %2
  br i1 %36, label %37, label %67

37:                                               ; preds = %20
  %38 = sub nsw i32 %25, %28
  %39 = tail call i32 @llvm.abs.i32(i32 %38, i1 true)
  %40 = icmp slt i32 %39, %3
  br i1 %40, label %41, label %67

41:                                               ; preds = %37
  %42 = sub nsw i32 %33, %30
  %43 = tail call i32 @llvm.abs.i32(i32 %42, i1 true)
  %44 = icmp slt i32 %43, %3
  br i1 %44, label %45, label %67

45:                                               ; preds = %41
  %46 = sub nsw i32 %30, %28
  %47 = shl nsw i32 %46, 2
  %48 = add nuw nsw i32 %25, 4
  %49 = sub nsw i32 %48, %33
  %50 = add nsw i32 %49, %47
  %51 = ashr i32 %50, 3
  %52 = icmp slt i32 %51, %17
  %53 = tail call i32 @llvm.smin.i32(i32 %51, i32 %14)
  %54 = select i1 %52, i32 %17, i32 %53
  %55 = add nsw i32 %54, %28
  %56 = icmp ult i32 %55, 256
  %57 = icmp sgt i32 %55, 0
  %58 = sext i1 %57 to i32
  %59 = select i1 %56, i32 %55, i32 %58
  %60 = trunc i32 %59 to i8
  store i8 %60, ptr %26, align 1, !tbaa !82
  %61 = sub nsw i32 %30, %54
  %62 = icmp ult i32 %61, 256
  %63 = icmp sgt i32 %61, 0
  %64 = sext i1 %63 to i32
  %65 = select i1 %62, i32 %61, i32 %64
  %66 = trunc i32 %65 to i8
  store i8 %66, ptr %21, align 1, !tbaa !82
  br label %67

67:                                               ; preds = %45, %41, %37, %20
  %68 = getelementptr inbounds i8, ptr %21, i64 %6
  %69 = add nuw nsw i32 %22, 1
  %70 = icmp eq i32 %22, 0
  br i1 %70, label %20, label %71, !llvm.loop !97

71:                                               ; preds = %67, %18
  %72 = phi ptr [ %19, %18 ], [ %68, %67 ]
  %73 = add nuw nsw i64 %10, 1
  %74 = icmp eq i64 %73, 4
  br i1 %74, label %75, label %9, !llvm.loop !98

75:                                               ; preds = %71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_v_luma_intra_c(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  tail call fastcc void @deblock_luma_intra_c(ptr noundef %0, i32 noundef %1, i32 noundef 1, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_h_luma_intra_c(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  tail call fastcc void @deblock_luma_intra_c(ptr noundef %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_v_chroma_intra_c(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = mul nsw i32 %1, -2
  %6 = sext i32 %5 to i64
  %7 = sub nsw i32 0, %1
  %8 = sext i32 %7 to i64
  %9 = sext i32 %1 to i64
  br label %10

10:                                               ; preds = %4, %48
  %11 = phi ptr [ %0, %4 ], [ %49, %48 ]
  %12 = phi i32 [ 0, %4 ], [ %50, %48 ]
  %13 = getelementptr inbounds i8, ptr %11, i64 %6
  %14 = load i8, ptr %13, align 1, !tbaa !82
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds i8, ptr %11, i64 %8
  %17 = load i8, ptr %16, align 1, !tbaa !82
  %18 = zext i8 %17 to i32
  %19 = load i8, ptr %11, align 1, !tbaa !82
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds i8, ptr %11, i64 %9
  %22 = load i8, ptr %21, align 1, !tbaa !82
  %23 = zext i8 %22 to i32
  %24 = sub nsw i32 %18, %20
  %25 = tail call i32 @llvm.abs.i32(i32 %24, i1 true)
  %26 = icmp slt i32 %25, %2
  br i1 %26, label %27, label %48

27:                                               ; preds = %10
  %28 = sub nsw i32 %15, %18
  %29 = tail call i32 @llvm.abs.i32(i32 %28, i1 true)
  %30 = icmp slt i32 %29, %3
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = sub nsw i32 %23, %20
  %33 = tail call i32 @llvm.abs.i32(i32 %32, i1 true)
  %34 = icmp slt i32 %33, %3
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = shl nuw nsw i32 %15, 1
  %37 = add nuw nsw i32 %18, 2
  %38 = add nuw nsw i32 %37, %36
  %39 = add nuw nsw i32 %38, %23
  %40 = lshr i32 %39, 2
  %41 = trunc i32 %40 to i8
  store i8 %41, ptr %16, align 1, !tbaa !82
  %42 = shl nuw nsw i32 %23, 1
  %43 = add nuw nsw i32 %15, 2
  %44 = add nuw nsw i32 %43, %20
  %45 = add nuw nsw i32 %44, %42
  %46 = lshr i32 %45, 2
  %47 = trunc i32 %46 to i8
  store i8 %47, ptr %11, align 1, !tbaa !82
  br label %48

48:                                               ; preds = %35, %31, %27, %10
  %49 = getelementptr inbounds i8, ptr %11, i64 1
  %50 = add nuw nsw i32 %12, 1
  %51 = icmp eq i32 %50, 8
  br i1 %51, label %52, label %10, !llvm.loop !99

52:                                               ; preds = %48
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @deblock_h_chroma_intra_c(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = sext i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %44
  %7 = phi ptr [ %0, %4 ], [ %45, %44 ]
  %8 = phi i32 [ 0, %4 ], [ %46, %44 ]
  %9 = getelementptr inbounds i8, ptr %7, i64 -2
  %10 = load i8, ptr %9, align 1, !tbaa !82
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds i8, ptr %7, i64 -1
  %13 = load i8, ptr %12, align 1, !tbaa !82
  %14 = zext i8 %13 to i32
  %15 = load i8, ptr %7, align 1, !tbaa !82
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds i8, ptr %7, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !82
  %19 = zext i8 %18 to i32
  %20 = sub nsw i32 %14, %16
  %21 = tail call i32 @llvm.abs.i32(i32 %20, i1 true)
  %22 = icmp slt i32 %21, %2
  br i1 %22, label %23, label %44

23:                                               ; preds = %6
  %24 = sub nsw i32 %11, %14
  %25 = tail call i32 @llvm.abs.i32(i32 %24, i1 true)
  %26 = icmp slt i32 %25, %3
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = sub nsw i32 %19, %16
  %29 = tail call i32 @llvm.abs.i32(i32 %28, i1 true)
  %30 = icmp slt i32 %29, %3
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = shl nuw nsw i32 %11, 1
  %33 = add nuw nsw i32 %14, 2
  %34 = add nuw nsw i32 %33, %32
  %35 = add nuw nsw i32 %34, %19
  %36 = lshr i32 %35, 2
  %37 = trunc i32 %36 to i8
  store i8 %37, ptr %12, align 1, !tbaa !82
  %38 = shl nuw nsw i32 %19, 1
  %39 = add nuw nsw i32 %11, 2
  %40 = add nuw nsw i32 %39, %16
  %41 = add nuw nsw i32 %40, %38
  %42 = lshr i32 %41, 2
  %43 = trunc i32 %42 to i8
  store i8 %43, ptr %7, align 1, !tbaa !82
  br label %44

44:                                               ; preds = %31, %27, %23, %6
  %45 = getelementptr inbounds i8, ptr %7, i64 %5
  %46 = add nuw nsw i32 %8, 1
  %47 = icmp eq i32 %46, 8
  br i1 %47, label %48, label %6, !llvm.loop !99

48:                                               ; preds = %44
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @deblock_strength_c(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5) #5 {
  %7 = icmp eq i32 %5, 0
  br label %9

8:                                                ; preds = %15
  ret void

9:                                                ; preds = %6, %15
  %10 = phi i64 [ 0, %6 ], [ %16, %15 ]
  %11 = icmp eq i64 %10, 0
  %12 = select i1 %11, i32 0, i32 3
  %13 = select i1 %11, i64 8, i64 1
  %14 = select i1 %11, i64 -1, i64 -8
  br label %18

15:                                               ; preds = %24
  %16 = add nuw nsw i64 %10, 1
  %17 = icmp eq i64 %10, 0
  br i1 %17, label %9, label %8, !llvm.loop !100

18:                                               ; preds = %9, %24
  %19 = phi i64 [ 0, %9 ], [ %25, %24 ]
  %20 = trunc i64 %19 to i32
  %21 = shl nuw nsw i32 %20, %12
  %22 = add nuw i32 %21, 12
  %23 = sext i32 %22 to i64
  br label %27

24:                                               ; preds = %92
  %25 = add nuw nsw i64 %19, 1
  %26 = icmp eq i64 %25, 4
  br i1 %26, label %15, label %18, !llvm.loop !101

27:                                               ; preds = %18, %92
  %28 = phi i64 [ 0, %18 ], [ %95, %92 ]
  %29 = phi i64 [ %23, %18 ], [ %96, %92 ]
  %30 = getelementptr inbounds i8, ptr %0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !82
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %92

33:                                               ; preds = %27
  %34 = add nsw i64 %29, %14
  %35 = getelementptr inbounds i8, ptr %0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !82
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %92

38:                                               ; preds = %33
  %39 = getelementptr inbounds [40 x i8], ptr %1, i64 0, i64 %29
  %40 = load i8, ptr %39, align 1, !tbaa !82
  %41 = getelementptr inbounds [40 x i8], ptr %1, i64 0, i64 %34
  %42 = load i8, ptr %41, align 1, !tbaa !82
  %43 = icmp eq i8 %40, %42
  br i1 %43, label %44, label %92

44:                                               ; preds = %38
  %45 = getelementptr inbounds [40 x [2 x i16]], ptr %2, i64 0, i64 %29
  %46 = load i16, ptr %45, align 2, !tbaa !102
  %47 = sext i16 %46 to i32
  %48 = getelementptr inbounds [40 x [2 x i16]], ptr %2, i64 0, i64 %34
  %49 = load i16, ptr %48, align 2, !tbaa !102
  %50 = sext i16 %49 to i32
  %51 = sub nsw i32 %47, %50
  %52 = tail call i32 @llvm.abs.i32(i32 %51, i1 true)
  %53 = icmp ugt i32 %52, 3
  br i1 %53, label %92, label %54

54:                                               ; preds = %44
  %55 = getelementptr inbounds [40 x [2 x i16]], ptr %2, i64 0, i64 %29, i64 1
  %56 = load i16, ptr %55, align 2, !tbaa !102
  %57 = sext i16 %56 to i32
  %58 = getelementptr inbounds [40 x [2 x i16]], ptr %2, i64 0, i64 %34, i64 1
  %59 = load i16, ptr %58, align 2, !tbaa !102
  %60 = sext i16 %59 to i32
  %61 = sub nsw i32 %57, %60
  %62 = tail call i32 @llvm.abs.i32(i32 %61, i1 true)
  %63 = icmp slt i32 %62, %4
  br i1 %63, label %64, label %92

64:                                               ; preds = %54
  br i1 %7, label %91, label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds [40 x i8], ptr %1, i64 1, i64 %29
  %67 = load i8, ptr %66, align 1, !tbaa !82
  %68 = getelementptr inbounds [40 x i8], ptr %1, i64 1, i64 %34
  %69 = load i8, ptr %68, align 1, !tbaa !82
  %70 = icmp eq i8 %67, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %65
  %72 = getelementptr inbounds [40 x [2 x i16]], ptr %2, i64 1, i64 %29
  %73 = load i16, ptr %72, align 2, !tbaa !102
  %74 = sext i16 %73 to i32
  %75 = getelementptr inbounds [40 x [2 x i16]], ptr %2, i64 1, i64 %34
  %76 = load i16, ptr %75, align 2, !tbaa !102
  %77 = sext i16 %76 to i32
  %78 = sub nsw i32 %74, %77
  %79 = tail call i32 @llvm.abs.i32(i32 %78, i1 true)
  %80 = icmp ugt i32 %79, 3
  br i1 %80, label %92, label %81

81:                                               ; preds = %71
  %82 = getelementptr inbounds [40 x [2 x i16]], ptr %2, i64 1, i64 %29, i64 1
  %83 = load i16, ptr %82, align 2, !tbaa !102
  %84 = sext i16 %83 to i32
  %85 = getelementptr inbounds [40 x [2 x i16]], ptr %2, i64 1, i64 %34, i64 1
  %86 = load i16, ptr %85, align 2, !tbaa !102
  %87 = sext i16 %86 to i32
  %88 = sub nsw i32 %84, %87
  %89 = tail call i32 @llvm.abs.i32(i32 %88, i1 true)
  %90 = icmp slt i32 %89, %4
  br i1 %90, label %91, label %92

91:                                               ; preds = %81, %64
  br label %92

92:                                               ; preds = %38, %44, %54, %65, %71, %81, %27, %33, %91
  %93 = phi i8 [ 0, %91 ], [ 2, %33 ], [ 2, %27 ], [ 1, %81 ], [ 1, %71 ], [ 1, %65 ], [ 1, %54 ], [ 1, %44 ], [ 1, %38 ]
  %94 = getelementptr inbounds [4 x [4 x i8]], ptr %3, i64 %10, i64 %19, i64 %28
  store i8 %93, ptr %94, align 1, !tbaa !82
  %95 = add nuw nsw i64 %28, 1
  %96 = add i64 %29, %13
  %97 = icmp eq i64 %95, 4
  br i1 %97, label %24, label %27, !llvm.loop !104
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @deblock_luma_c(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #7 {
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

19:                                               ; preds = %134
  ret void

20:                                               ; preds = %6, %134
  %21 = phi i64 [ 0, %6 ], [ %136, %134 ]
  %22 = phi ptr [ %0, %6 ], [ %135, %134 ]
  %23 = getelementptr inbounds i8, ptr %5, i64 %21
  %24 = load i8, ptr %23, align 1, !tbaa !82
  %25 = icmp slt i8 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = getelementptr inbounds i8, ptr %22, i64 %18
  br label %134

28:                                               ; preds = %20, %130
  %29 = phi ptr [ %131, %130 ], [ %22, %20 ]
  %30 = phi i32 [ %132, %130 ], [ 0, %20 ]
  %31 = getelementptr inbounds i8, ptr %29, i64 %8
  %32 = load i8, ptr %31, align 1, !tbaa !82
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds i8, ptr %29, i64 %10
  %35 = load i8, ptr %34, align 1, !tbaa !82
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds i8, ptr %29, i64 %12
  %38 = load i8, ptr %37, align 1, !tbaa !82
  %39 = zext i8 %38 to i32
  %40 = load i8, ptr %29, align 1, !tbaa !82
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds i8, ptr %29, i64 %13
  %43 = load i8, ptr %42, align 1, !tbaa !82
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds i8, ptr %29, i64 %15
  %46 = load i8, ptr %45, align 1, !tbaa !82
  %47 = zext i8 %46 to i32
  %48 = sub nsw i32 %39, %41
  %49 = tail call i32 @llvm.abs.i32(i32 %48, i1 true)
  %50 = icmp slt i32 %49, %3
  br i1 %50, label %51, label %130

51:                                               ; preds = %28
  %52 = sub nsw i32 %36, %39
  %53 = tail call i32 @llvm.abs.i32(i32 %52, i1 true)
  %54 = icmp slt i32 %53, %4
  br i1 %54, label %55, label %130

55:                                               ; preds = %51
  %56 = sub nsw i32 %44, %41
  %57 = tail call i32 @llvm.abs.i32(i32 %56, i1 true)
  %58 = icmp slt i32 %57, %4
  br i1 %58, label %59, label %130

59:                                               ; preds = %55
  %60 = load i8, ptr %23, align 1, !tbaa !82
  %61 = sext i8 %60 to i32
  %62 = sub nsw i32 %33, %39
  %63 = tail call i32 @llvm.abs.i32(i32 %62, i1 true)
  %64 = icmp slt i32 %63, %4
  br i1 %64, label %65, label %82

65:                                               ; preds = %59
  %66 = icmp eq i8 %60, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %65
  %68 = add nuw nsw i32 %39, 1
  %69 = add nuw nsw i32 %68, %41
  %70 = lshr i32 %69, 1
  %71 = add nuw nsw i32 %70, %33
  %72 = lshr i32 %71, 1
  %73 = sub nsw i32 %72, %36
  %74 = sub nsw i32 0, %61
  %75 = icmp slt i32 %73, %74
  %76 = tail call i32 @llvm.smin.i32(i32 %73, i32 %61)
  %77 = select i1 %75, i32 %74, i32 %76
  %78 = trunc i32 %77 to i8
  %79 = add i8 %35, %78
  store i8 %79, ptr %34, align 1, !tbaa !82
  br label %80

80:                                               ; preds = %67, %65
  %81 = add nsw i32 %61, 1
  br label %82

82:                                               ; preds = %80, %59
  %83 = phi i32 [ %81, %80 ], [ %61, %59 ]
  %84 = sub nsw i32 %47, %41
  %85 = tail call i32 @llvm.abs.i32(i32 %84, i1 true)
  %86 = icmp slt i32 %85, %4
  br i1 %86, label %87, label %106

87:                                               ; preds = %82
  %88 = load i8, ptr %23, align 1, !tbaa !82
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %104, label %90

90:                                               ; preds = %87
  %91 = add nuw nsw i32 %39, 1
  %92 = add nuw nsw i32 %91, %41
  %93 = lshr i32 %92, 1
  %94 = add nuw nsw i32 %93, %47
  %95 = lshr i32 %94, 1
  %96 = sub nsw i32 %95, %44
  %97 = sext i8 %88 to i32
  %98 = sub nsw i32 0, %97
  %99 = icmp slt i32 %96, %98
  %100 = tail call i32 @llvm.smin.i32(i32 %96, i32 %97)
  %101 = select i1 %99, i32 %98, i32 %100
  %102 = trunc i32 %101 to i8
  %103 = add i8 %43, %102
  store i8 %103, ptr %42, align 1, !tbaa !82
  br label %104

104:                                              ; preds = %90, %87
  %105 = add nsw i32 %83, 1
  br label %106

106:                                              ; preds = %104, %82
  %107 = phi i32 [ %105, %104 ], [ %83, %82 ]
  %108 = sub nsw i32 %41, %39
  %109 = shl nsw i32 %108, 2
  %110 = add nuw nsw i32 %36, 4
  %111 = sub nsw i32 %110, %44
  %112 = add nsw i32 %111, %109
  %113 = ashr i32 %112, 3
  %114 = sub nsw i32 0, %107
  %115 = icmp slt i32 %113, %114
  %116 = tail call i32 @llvm.smin.i32(i32 %113, i32 %107)
  %117 = select i1 %115, i32 %114, i32 %116
  %118 = add nsw i32 %117, %39
  %119 = icmp ult i32 %118, 256
  %120 = icmp sgt i32 %118, 0
  %121 = sext i1 %120 to i32
  %122 = select i1 %119, i32 %118, i32 %121
  %123 = trunc i32 %122 to i8
  store i8 %123, ptr %37, align 1, !tbaa !82
  %124 = sub nsw i32 %41, %117
  %125 = icmp ult i32 %124, 256
  %126 = icmp sgt i32 %124, 0
  %127 = sext i1 %126 to i32
  %128 = select i1 %125, i32 %124, i32 %127
  %129 = trunc i32 %128 to i8
  store i8 %129, ptr %29, align 1, !tbaa !82
  br label %130

130:                                              ; preds = %106, %55, %51, %28
  %131 = getelementptr inbounds i8, ptr %29, i64 %16
  %132 = add nuw nsw i32 %30, 1
  %133 = icmp eq i32 %132, 4
  br i1 %133, label %134, label %28, !llvm.loop !105

134:                                              ; preds = %130, %26
  %135 = phi ptr [ %27, %26 ], [ %131, %130 ]
  %136 = add nuw nsw i64 %21, 1
  %137 = icmp eq i64 %136, 4
  br i1 %137, label %19, label %20, !llvm.loop !106
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @deblock_luma_intra_c(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #7 {
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

22:                                               ; preds = %145
  ret void

23:                                               ; preds = %5, %145
  %24 = phi ptr [ %0, %5 ], [ %146, %145 ]
  %25 = phi i32 [ 0, %5 ], [ %147, %145 ]
  %26 = getelementptr inbounds i8, ptr %24, i64 %7
  %27 = load i8, ptr %26, align 1, !tbaa !82
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds i8, ptr %24, i64 %9
  %30 = load i8, ptr %29, align 1, !tbaa !82
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds i8, ptr %24, i64 %11
  %33 = load i8, ptr %32, align 1, !tbaa !82
  %34 = zext i8 %33 to i32
  %35 = load i8, ptr %24, align 1, !tbaa !82
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds i8, ptr %24, i64 %12
  %38 = load i8, ptr %37, align 1, !tbaa !82
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds i8, ptr %24, i64 %14
  %41 = load i8, ptr %40, align 1, !tbaa !82
  %42 = zext i8 %41 to i32
  %43 = sub nsw i32 %34, %36
  %44 = tail call i32 @llvm.abs.i32(i32 %43, i1 true)
  %45 = icmp slt i32 %44, %3
  br i1 %45, label %46, label %145

46:                                               ; preds = %23
  %47 = sub nsw i32 %31, %34
  %48 = tail call i32 @llvm.abs.i32(i32 %47, i1 true)
  %49 = icmp slt i32 %48, %4
  br i1 %49, label %50, label %145

50:                                               ; preds = %46
  %51 = sub nsw i32 %39, %36
  %52 = tail call i32 @llvm.abs.i32(i32 %51, i1 true)
  %53 = icmp slt i32 %52, %4
  br i1 %53, label %54, label %145

54:                                               ; preds = %50
  %55 = icmp ult i32 %44, %17
  br i1 %55, label %56, label %129

56:                                               ; preds = %54
  %57 = sub nsw i32 %28, %34
  %58 = tail call i32 @llvm.abs.i32(i32 %57, i1 true)
  %59 = icmp slt i32 %58, %4
  br i1 %59, label %60, label %86

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, ptr %24, i64 %19
  %62 = load i8, ptr %61, align 1, !tbaa !82
  %63 = zext i8 %62 to i32
  %64 = add nuw nsw i32 %36, %31
  %65 = add nuw nsw i32 %64, %34
  %66 = shl nuw nsw i32 %65, 1
  %67 = add nuw nsw i32 %39, 4
  %68 = add nuw nsw i32 %67, %28
  %69 = add nuw nsw i32 %68, %66
  %70 = lshr i32 %69, 3
  %71 = trunc i32 %70 to i8
  store i8 %71, ptr %32, align 1, !tbaa !82
  %72 = add nuw nsw i32 %36, %31
  %73 = add nuw nsw i32 %72, 2
  %74 = add nuw nsw i32 %73, %28
  %75 = add nuw nsw i32 %74, %34
  %76 = lshr i32 %75, 2
  %77 = trunc i32 %76 to i8
  store i8 %77, ptr %29, align 1, !tbaa !82
  %78 = shl nuw nsw i32 %63, 1
  %79 = mul nuw nsw i32 %28, 3
  %80 = add nuw nsw i32 %79, 4
  %81 = add nuw nsw i32 %80, %31
  %82 = add nuw nsw i32 %81, %34
  %83 = add nuw nsw i32 %82, %36
  %84 = add nuw nsw i32 %83, %78
  %85 = lshr i32 %84, 3
  br label %92

86:                                               ; preds = %56
  %87 = shl nuw nsw i32 %31, 1
  %88 = add nuw nsw i32 %34, 2
  %89 = add nuw nsw i32 %88, %87
  %90 = add nuw nsw i32 %89, %39
  %91 = lshr i32 %90, 2
  br label %92

92:                                               ; preds = %86, %60
  %93 = phi i32 [ %91, %86 ], [ %85, %60 ]
  %94 = phi ptr [ %32, %86 ], [ %26, %60 ]
  %95 = trunc i32 %93 to i8
  store i8 %95, ptr %94, align 1, !tbaa !82
  %96 = sub nsw i32 %42, %36
  %97 = tail call i32 @llvm.abs.i32(i32 %96, i1 true)
  %98 = icmp slt i32 %97, %4
  br i1 %98, label %99, label %123

99:                                               ; preds = %92
  %100 = getelementptr inbounds i8, ptr %24, i64 %21
  %101 = load i8, ptr %100, align 1, !tbaa !82
  %102 = zext i8 %101 to i32
  %103 = add nuw nsw i32 %36, %34
  %104 = add nuw nsw i32 %103, %39
  %105 = shl nuw nsw i32 %104, 1
  %106 = add nuw nsw i32 %31, 4
  %107 = add nuw nsw i32 %106, %42
  %108 = add nuw nsw i32 %107, %105
  %109 = lshr i32 %108, 3
  %110 = trunc i32 %109 to i8
  store i8 %110, ptr %24, align 1, !tbaa !82
  %111 = add nuw nsw i32 %42, 2
  %112 = add nuw nsw i32 %111, %104
  %113 = lshr i32 %112, 2
  %114 = trunc i32 %113 to i8
  store i8 %114, ptr %37, align 1, !tbaa !82
  %115 = shl nuw nsw i32 %102, 1
  %116 = mul nuw nsw i32 %42, 3
  %117 = add nuw nsw i32 %36, %34
  %118 = add nuw nsw i32 %117, 4
  %119 = add nuw nsw i32 %118, %39
  %120 = add nuw nsw i32 %119, %116
  %121 = add nuw nsw i32 %120, %115
  %122 = lshr i32 %121, 3
  br label %141

123:                                              ; preds = %92
  %124 = shl nuw nsw i32 %39, 1
  %125 = add nuw nsw i32 %36, %31
  %126 = add nuw nsw i32 %125, 2
  %127 = add nuw nsw i32 %126, %124
  %128 = lshr i32 %127, 2
  br label %141

129:                                              ; preds = %54
  %130 = shl nuw nsw i32 %31, 1
  %131 = add nuw nsw i32 %34, 2
  %132 = add nuw nsw i32 %131, %130
  %133 = add nuw nsw i32 %132, %39
  %134 = lshr i32 %133, 2
  %135 = trunc i32 %134 to i8
  store i8 %135, ptr %32, align 1, !tbaa !82
  %136 = shl nuw nsw i32 %39, 1
  %137 = add nuw nsw i32 %36, %31
  %138 = add nuw nsw i32 %137, 2
  %139 = add nuw nsw i32 %138, %136
  %140 = lshr i32 %139, 2
  br label %141

141:                                              ; preds = %99, %123, %129
  %142 = phi i32 [ %140, %129 ], [ %128, %123 ], [ %122, %99 ]
  %143 = phi ptr [ %24, %129 ], [ %24, %123 ], [ %40, %99 ]
  %144 = trunc i32 %142 to i8
  store i8 %144, ptr %143, align 1, !tbaa !82
  br label %145

145:                                              ; preds = %141, %50, %46, %23
  %146 = getelementptr inbounds i8, ptr %24, i64 %15
  %147 = add nuw nsw i32 %25, 1
  %148 = icmp eq i32 %147, 16
  br i1 %148, label %22, label %23, !llvm.loop !107
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

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
!34 = !{!35, !37, i64 7268}
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
!64 = !{!35, !37, i64 13888}
!65 = !{!35, !37, i64 13892}
!66 = !{!35, !37, i64 408}
!67 = !{!35, !41, i64 14688}
!68 = !{!37, !37, i64 0}
!69 = !{!35, !41, i64 31176}
!70 = !{!35, !41, i64 3328}
!71 = !{!72, !37, i64 8}
!72 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !37, i64 56, !37, i64 60, !37, i64 64, !38, i64 72}
!73 = !{!72, !37, i64 60}
!74 = !{!35, !41, i64 16656}
!75 = !{!35, !41, i64 3200}
!76 = !{!77, !37, i64 1084}
!77 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !38, i64 52, !37, i64 1076, !37, i64 1080, !37, i64 1084, !37, i64 1088, !37, i64 1092, !37, i64 1096, !37, i64 1100, !37, i64 1104, !78, i64 1108, !37, i64 1124, !79, i64 1128, !37, i64 1296}
!78 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12}
!79 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !37, i64 56, !37, i64 60, !37, i64 64, !37, i64 68, !37, i64 72, !37, i64 76, !37, i64 80, !80, i64 84, !37, i64 132, !37, i64 136, !37, i64 140, !37, i64 144, !37, i64 148, !37, i64 152, !37, i64 156, !37, i64 160, !37, i64 164}
!80 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44}
!81 = !{!35, !41, i64 17240}
!82 = !{!38, !38, i64 0}
!83 = distinct !{!83, !84, !85}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = !{!35, !37, i64 16392}
!87 = !{!35, !41, i64 16616}
!88 = !{!41, !41, i64 0}
!89 = !{!35, !41, i64 16632}
!90 = !{!35, !41, i64 7216}
!91 = !{!35, !37, i64 16488}
!92 = !{!35, !37, i64 16600}
!93 = !{!35, !37, i64 16604}
!94 = distinct !{!94, !84, !85}
!95 = distinct !{!95, !84, !85}
!96 = !{!63, !41, i64 64}
!97 = distinct !{!97, !84, !85}
!98 = distinct !{!98, !84, !85}
!99 = distinct !{!99, !84, !85}
!100 = distinct !{!100, !84, !85}
!101 = distinct !{!101, !84, !85}
!102 = !{!103, !103, i64 0}
!103 = !{!"short", !38, i64 0}
!104 = distinct !{!104, !84, !85}
!105 = distinct !{!105, !84, !85}
!106 = distinct !{!106, !84, !85}
!107 = distinct !{!107, !84, !85}
