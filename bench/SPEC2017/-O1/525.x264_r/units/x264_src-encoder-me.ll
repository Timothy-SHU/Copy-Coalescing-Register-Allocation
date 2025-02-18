; ModuleID = 'x264_src/encoder/me.c'
source_filename = "x264_src/encoder/me.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i32, i32 }
%struct.x264_weight_t = type { [8 x i16], [8 x i16], i32, i32, i32, ptr, [8 x i8] }
%struct.x264_me_t = type { i32, ptr, i32, i32, ptr, [6 x ptr], ptr, [3 x ptr], ptr, [2 x i32], [2 x i16], i32, i32, [2 x i16] }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.0, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], ptr, ptr, i32, i32, ptr, %struct.anon.1, %struct.anon.2, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, [2 x i32], i32, i32 }
%struct.anon.2 = type { i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, float, float, float, i32, float, i32, i32, i32, ptr, i32, ptr, float, float, float, ptr, i32, ptr }
%struct.x264_t = type { %struct.x264_param_t, [129 x ptr], i32, i32, i32, i32, i32, %struct.anon.3, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.x264_sps_t], ptr, [1 x %struct.x264_pps_t], ptr, i32, i32, [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [92 x ptr], [92 x [4 x ptr]], ptr, [8 x i8], %struct.x264_slice_header_t, %struct.x264_cabac_t, %struct.anon.9, ptr, ptr, i32, [19 x ptr], i32, [19 x ptr], [2 x i32], i32, i32, i64, %struct.anon.10, %struct.anon.11, ptr, %struct.anon.14, [2 x [64 x i32]], [2 x [64 x i16]], [2 x i32], ptr, [2 x [3 x ptr]], [2 x ptr], [7 x ptr], [7 x ptr], [12 x ptr], [12 x ptr], ptr, %struct.x264_pixel_function_t, %struct.x264_mc_functions_t, %struct.x264_dct_function_t, %struct.x264_zigzag_function_t, %struct.x264_quant_function_t, %struct.x264_deblock_function_t, ptr, [8 x i8] }
%struct.anon.3 = type { i32, i32, ptr, i32, ptr, %struct.bs_s }
%struct.bs_s = type { ptr, ptr, ptr, i64, i32, i32 }
%struct.x264_sps_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.4, i32, %struct.anon.5, i32 }
%struct.anon.4 = type { i32, i32, i32, i32 }
%struct.anon.5 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.6, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.6 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_pps_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x ptr] }
%struct.x264_slice_header_t = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, [2 x [16 x %struct.anon.7]], [32 x [3 x %struct.x264_weight_t]], i32, i32, [16 x %struct.anon.8], i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.anon.7 = type { i32, i32 }
%struct.anon.8 = type { i32, i32 }
%struct.x264_cabac_t = type { i32, i32, i32, i32, ptr, ptr, ptr, [8 x i8], i32, [460 x i8] }
%struct.anon.9 = type { ptr, [2 x ptr], ptr, [18 x ptr], i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], i64, i64, i32, i32 }
%struct.anon.10 = type { [16 x i16], [2 x [4 x i16]], [4 x [64 x i16]], [24 x [16 x i16]] }
%struct.anon.11 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [4 x i32], [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [2 x ptr], [2 x ptr], [2 x [32 x ptr]], ptr, ptr, ptr, [16 x ptr], i32, i32, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8], %struct.anon.12, %struct.anon.13, i32, i32, i32, i32, i32, i32, i32, i32, [2 x [2 x i32]], i32, i32, [2 x [32 x [4 x i16]]], ptr, [2 x [32 x [4 x i8]]], ptr, [18 x i8], i32, [34 x i8], [14 x i8] }
%struct.anon.12 = type { [384 x i8], [864 x i8], [256 x i8], [256 x i8], [3 x [64 x i16]], [15 x [16 x i16]], [4 x i32], [4 x i32], i32, i32, [8 x i8], [4 x [64 x i16]], [16 x [16 x i16]], [9 x i64], [8 x i8], [32 x i32], [3 x ptr], [3 x ptr], [3 x ptr], [2 x i32], [2 x [32 x [6 x ptr]]], [32 x ptr], [2 x [16 x ptr]], [3 x i32] }
%struct.anon.13 = type { [40 x i8], [8 x i8], [48 x i8], [2 x [40 x i8]], [2 x [40 x [2 x i16]]], [2 x [40 x [2 x i8]]], [40 x i8], [2 x [4 x [2 x i16]]], [2 x [4 x i8]], i32, [2 x i16], i32, i32, i32, i32, [8 x i8] }
%struct.anon.14 = type { %struct.anon.15, [5 x i32], [5 x i64], [5 x double], [17 x i32], [5 x i64], [5 x double], [5 x double], [5 x double], [5 x double], [5 x double], [5 x [19 x i64]], [2 x [17 x i64]], [2 x i64], [2 x [2 x [32 x i64]]], [6 x i64], [4 x [13 x i64]], [2 x i32], [2 x i32], [3 x i32] }
%struct.anon.15 = type { i32, i32, i32, [19 x i32], i32, i32, i32, [2 x i32], [2 x [32 x i32]], [17 x i32], [6 x i32], [4 x [13 x i32]], [2 x i32], [3 x i64], double }
%struct.x264_pixel_function_t = type { [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [4 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], ptr, [4 x ptr], [4 x ptr], ptr, ptr, [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_mc_functions_t = type { ptr, ptr, ptr, [10 x ptr], [7 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_dct_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_zigzag_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_quant_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [6 x ptr], [5 x ptr] }
%struct.x264_deblock_function_t = type { [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], ptr }
%struct.x264_frame = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, float, float, i32, i32, [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, [3 x ptr], [4 x ptr], [4 x ptr], ptr, [4 x ptr], [4 x ptr], [8 x i8], [16 x [3 x %struct.x264_weight_t]], [16 x ptr], i32, ptr, ptr, ptr, [2 x ptr], ptr, [2 x [17 x ptr]], [18 x [18 x ptr]], [2 x [17 x ptr]], [2 x ptr], [2 x i32], [2 x [16 x i32]], [2 x i16], [18 x [18 x i32]], [18 x [18 x i32]], i32, [18 x i32], [18 x [18 x ptr]], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [18 x float], i32, i64, %struct.x264_hrd_t, [251 x i8], [251 x i32], [251 x double], i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32 }
%struct.x264_hrd_t = type { double, double, double, double }
%struct.mvsad_t = type { i32, [2 x i16] }

@x264_pixel_size = internal unnamed_addr constant [7 x %struct.anon] [%struct.anon { i32 16, i32 16 }, %struct.anon { i32 16, i32 8 }, %struct.anon { i32 8, i32 16 }, %struct.anon { i32 8, i32 8 }, %struct.anon { i32 8, i32 4 }, %struct.anon { i32 4, i32 8 }, %struct.anon { i32 4, i32 4 }], align 16
@hex2 = internal unnamed_addr constant [8 x [2 x i8]] [[2 x i8] c"\FF\FE", [2 x i8] c"\FE\00", [2 x i8] c"\FF\02", [2 x i8] c"\01\02", [2 x i8] c"\02\00", [2 x i8] c"\01\FE", [2 x i8] c"\FF\FE", [2 x i8] c"\FE\00"], align 16
@mod6m1 = internal unnamed_addr constant [8 x i8] c"\05\00\01\02\03\04\05\00", align 1
@square1 = internal unnamed_addr constant [9 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\00\FF", [2 x i8] c"\00\01", [2 x i8] c"\FF\00", [2 x i8] c"\01\00", [2 x i8] c"\FF\FF", [2 x i8] c"\FF\01", [2 x i8] c"\01\FF", [2 x i8] c"\01\01"], align 16
@x264_me_search_ref.x264_pixel_size_shift = internal unnamed_addr constant [7 x i8] c"\00\01\01\02\03\03\04", align 1
@x264_me_search_ref.range_mul = internal unnamed_addr constant [4 x [4 x i8]] [[4 x i8] c"\03\03\04\04", [4 x i8] c"\03\04\04\04", [4 x i8] c"\04\04\04\05", [4 x i8] c"\04\04\05\06"], align 16
@x264_me_search_ref.hex4 = internal unnamed_addr constant [16 x [2 x i8]] [[2 x i8] c"\00\FC", [2 x i8] c"\00\04", [2 x i8] c"\FE\FD", [2 x i8] c"\02\FD", [2 x i8] c"\FC\FE", [2 x i8] c"\04\FE", [2 x i8] c"\FC\FF", [2 x i8] c"\04\FF", [2 x i8] c"\FC\00", [2 x i8] c"\04\00", [2 x i8] c"\FC\01", [2 x i8] c"\04\01", [2 x i8] c"\FC\02", [2 x i8] c"\04\02", [2 x i8] c"\FE\03", [2 x i8] c"\02\03"], align 16
@x264_me_search_ref.zero = internal global [128 x i8] zeroinitializer, align 16
@x264_lambda_tab = external local_unnamed_addr constant [52 x i8], align 16
@subpel_iterations = internal unnamed_addr constant [11 x [4 x i8]] [[4 x i8] zeroinitializer, [4 x i8] c"\01\01\00\00", [4 x i8] c"\00\01\01\00", [4 x i8] c"\00\02\01\00", [4 x i8] c"\00\02\01\01", [4 x i8] c"\00\02\01\02", [4 x i8] c"\00\00\02\02", [4 x i8] c"\00\00\02\02", [4 x i8] c"\00\00\04\0A", [4 x i8] c"\00\00\04\0A", [4 x i8] c"\00\00\04\0A"], align 16
@x264_iter_kludge = dso_local local_unnamed_addr global i32 0, align 4
@x264_scan8 = internal unnamed_addr constant [27 x i32] [i32 12, i32 13, i32 20, i32 21, i32 14, i32 15, i32 22, i32 23, i32 28, i32 29, i32 36, i32 37, i32 30, i32 31, i32 38, i32 39, i32 9, i32 10, i32 17, i32 18, i32 33, i32 34, i32 41, i32 42, i32 44, i32 46, i32 47], align 16
@block_idx_xy_fdec = internal unnamed_addr constant [16 x i16] [i16 0, i16 4, i16 128, i16 132, i16 8, i16 12, i16 136, i16 140, i16 256, i16 260, i16 384, i16 388, i16 264, i16 268, i16 392, i16 396], align 16
@block_idx_x = internal unnamed_addr constant [16 x i8] c"\00\01\00\01\02\03\02\03\00\01\00\01\02\03\02\03", align 16
@block_idx_y = internal unnamed_addr constant [16 x i8] c"\00\00\01\01\00\00\01\01\02\02\03\03\02\02\03\03", align 16
@x264_me_refine_bidir.dia4d = internal unnamed_addr constant [33 x [4 x i8]] [[4 x i8] zeroinitializer, [4 x i8] c"\00\00\00\01", [4 x i8] c"\00\00\00\FF", [4 x i8] c"\00\00\01\00", [4 x i8] c"\00\00\FF\00", [4 x i8] c"\00\01\00\00", [4 x i8] c"\00\FF\00\00", [4 x i8] c"\01\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\00\00\01\01", [4 x i8] c"\00\00\FF\FF", [4 x i8] c"\00\01\01\00", [4 x i8] c"\00\FF\FF\00", [4 x i8] c"\01\01\00\00", [4 x i8] c"\FF\FF\00\00", [4 x i8] c"\01\00\00\01", [4 x i8] c"\FF\00\00\FF", [4 x i8] c"\00\01\00\01", [4 x i8] c"\00\FF\00\FF", [4 x i8] c"\01\00\01\00", [4 x i8] c"\FF\00\FF\00", [4 x i8] c"\00\00\FF\01", [4 x i8] c"\00\00\01\FF", [4 x i8] c"\00\FF\01\00", [4 x i8] c"\00\01\FF\00", [4 x i8] c"\FF\01\00\00", [4 x i8] c"\01\FF\00\00", [4 x i8] c"\01\00\00\FF", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\00\FF\00\01", [4 x i8] c"\00\01\00\FF", [4 x i8] c"\FF\00\01\00", [4 x i8] c"\01\00\FF\00"], align 8
@weight_none = external constant [3 x %struct.x264_weight_t], align 16

; Function Attrs: nounwind uwtable
define dso_local void @x264_me_search_ref(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [256 x i8], align 16
  %7 = alloca [16 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [16 x [2 x i16]], align 8
  %11 = alloca [4 x i32], align 16
  %12 = alloca [3 x i32], align 4
  %13 = load i32, ptr %1, align 16, !tbaa !34
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %14
  %16 = load i32, ptr %15, align 8, !tbaa !40
  %17 = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %14, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !42
  %19 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !43
  %21 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 8
  %22 = load i32, ptr %21, align 16, !tbaa !44
  %23 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 6
  %26 = load ptr, ptr %25, align 16, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #6
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 22
  %28 = load i32, ptr %27, align 8, !tbaa !43
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 22, i64 1
  %30 = load i32, ptr %29, align 4, !tbaa !43
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 23
  %32 = load i32, ptr %31, align 16, !tbaa !43
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 23, i64 1
  %34 = load i32, ptr %33, align 4, !tbaa !43
  %35 = shl i32 %28, 2
  %36 = shl i32 %30, 2
  %37 = shl i32 %32, 2
  %38 = shl i32 %34, 2
  %39 = mul i32 %28, -65536
  %40 = sub nsw i32 0, %30
  %41 = and i32 %40, 32767
  %42 = or disjoint i32 %41, %39
  %43 = shl i32 %32, 16
  %44 = and i32 %34, 32767
  %45 = or disjoint i32 %44, %43
  %46 = or disjoint i32 %45, 32768
  %47 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !72
  %49 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 10
  %50 = load i16, ptr %49, align 16, !tbaa !73
  %51 = sext i16 %50 to i32
  %52 = sext i16 %50 to i64
  %53 = sub nsw i64 0, %52
  %54 = getelementptr inbounds i16, ptr %48, i64 %53
  %55 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 10, i64 1
  %56 = load i16, ptr %55, align 2, !tbaa !73
  %57 = sext i16 %56 to i64
  %58 = sub nsw i64 0, %57
  %59 = getelementptr inbounds i16, ptr %48, i64 %58
  %60 = icmp sgt i32 %35, %51
  %61 = tail call i32 @llvm.smin.i32(i32 %51, i32 %37)
  %62 = select i1 %60, i32 %35, i32 %61
  %63 = sext i16 %56 to i32
  %64 = icmp sgt i32 %36, %63
  %65 = tail call i32 @llvm.smin.i32(i32 %63, i32 %38)
  %66 = select i1 %64, i32 %36, i32 %65
  %67 = add nsw i32 %62, 2
  %68 = ashr i32 %67, 2
  %69 = add nsw i32 %66, 2
  %70 = ashr i32 %69, 2
  %71 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 10
  %72 = load i32, ptr %71, align 8, !tbaa !75
  %73 = icmp sgt i32 %72, 2
  br i1 %73, label %74, label %191

74:                                               ; preds = %5
  %75 = and i32 %62, 65535
  %76 = shl i32 %66, 16
  %77 = or disjoint i32 %76, %75
  %78 = icmp eq i32 %3, 0
  br i1 %78, label %104, label %79

79:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store i32 16, ptr %8, align 4, !tbaa !43
  %80 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !76
  %82 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5
  %83 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !77
  %85 = call ptr %81(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %82, i32 noundef %20, i32 noundef %62, i32 noundef %66, i32 noundef %16, i32 noundef %18, ptr noundef %84) #6
  %86 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %87 = load ptr, ptr %86, align 8, !tbaa !70
  %88 = load i32, ptr %8, align 4, !tbaa !43
  %89 = call i32 %87(ptr noundef %24, i32 noundef 16, ptr noundef %85, i32 noundef %88) #6
  %90 = sext i32 %62 to i64
  %91 = getelementptr inbounds i16, ptr %54, i64 %90
  %92 = load i16, ptr %91, align 2, !tbaa !73
  %93 = zext i16 %92 to i32
  %94 = add nsw i32 %89, %93
  %95 = sext i32 %66 to i64
  %96 = getelementptr inbounds i16, ptr %59, i64 %95
  %97 = load i16, ptr %96, align 2, !tbaa !73
  %98 = zext i16 %97 to i32
  %99 = add nsw i32 %94, %98
  %100 = icmp slt i32 %99, 268435456
  %101 = call i32 @llvm.smin.i32(i32 %99, i32 268435456)
  %102 = select i1 %100, i32 %66, i32 0
  %103 = select i1 %100, i32 %62, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  br label %104

104:                                              ; preds = %79, %74
  %105 = phi i32 [ %101, %79 ], [ 268435456, %74 ]
  %106 = phi i32 [ %102, %79 ], [ 0, %74 ]
  %107 = phi i32 [ %103, %79 ], [ 0, %74 ]
  %108 = icmp sgt i32 %3, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 1
  %111 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5
  %112 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 4
  %113 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %114 = zext nneg i32 %3 to i64
  br label %143

115:                                              ; preds = %185, %104
  %116 = phi i32 [ %105, %104 ], [ %186, %185 ]
  %117 = phi i32 [ %106, %104 ], [ %187, %185 ]
  %118 = phi i32 [ %107, %104 ], [ %188, %185 ]
  %119 = add nsw i32 %118, 2
  %120 = ashr i32 %119, 2
  %121 = add nsw i32 %117, 2
  %122 = ashr i32 %121, 2
  %123 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %124 = load ptr, ptr %123, align 8, !tbaa !70
  %125 = mul nsw i32 %122, %20
  %126 = add nsw i32 %125, %120
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, ptr %26, i64 %127
  %129 = call i32 %124(ptr noundef %24, i32 noundef 16, ptr noundef %128, i32 noundef %20) #6
  %130 = and i32 %119, -4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i16, ptr %54, i64 %131
  %133 = load i16, ptr %132, align 2, !tbaa !73
  %134 = zext i16 %133 to i32
  %135 = and i32 %121, -4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i16, ptr %59, i64 %136
  %138 = load i16, ptr %137, align 2, !tbaa !73
  %139 = zext i16 %138 to i32
  %140 = add i32 %129, %134
  %141 = add i32 %140, %139
  %142 = call i32 @llvm.smin.i32(i32 %141, i32 268435456)
  br label %292

143:                                              ; preds = %109, %185
  %144 = phi i64 [ 0, %109 ], [ %189, %185 ]
  %145 = phi i32 [ %107, %109 ], [ %188, %185 ]
  %146 = phi i32 [ %106, %109 ], [ %187, %185 ]
  %147 = phi i32 [ %105, %109 ], [ %186, %185 ]
  %148 = getelementptr inbounds [2 x i16], ptr %2, i64 %144
  %149 = load i32, ptr %148, align 4, !tbaa !78
  %150 = icmp eq i32 %149, 0
  %151 = icmp eq i32 %77, %149
  %152 = select i1 %150, i1 true, i1 %151
  br i1 %152, label %185, label %153

153:                                              ; preds = %143
  %154 = load i16, ptr %148, align 2, !tbaa !73
  %155 = sext i16 %154 to i32
  %156 = icmp sgt i32 %35, %155
  %157 = call i32 @llvm.smin.i32(i32 %155, i32 %37)
  %158 = select i1 %156, i32 %35, i32 %157
  %159 = getelementptr inbounds [2 x i16], ptr %2, i64 %144, i64 1
  %160 = load i16, ptr %159, align 2, !tbaa !73
  %161 = sext i16 %160 to i32
  %162 = icmp sgt i32 %36, %161
  %163 = call i32 @llvm.smin.i32(i32 %161, i32 %38)
  %164 = select i1 %162, i32 %36, i32 %163
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  store i32 16, ptr %9, align 4, !tbaa !43
  %165 = load ptr, ptr %110, align 8, !tbaa !76
  %166 = load ptr, ptr %112, align 8, !tbaa !77
  %167 = call ptr %165(ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %111, i32 noundef %20, i32 noundef %158, i32 noundef %164, i32 noundef %16, i32 noundef %18, ptr noundef %166) #6
  %168 = load ptr, ptr %113, align 8, !tbaa !70
  %169 = load i32, ptr %9, align 4, !tbaa !43
  %170 = call i32 %168(ptr noundef %24, i32 noundef 16, ptr noundef %167, i32 noundef %169) #6
  %171 = sext i32 %158 to i64
  %172 = getelementptr inbounds i16, ptr %54, i64 %171
  %173 = load i16, ptr %172, align 2, !tbaa !73
  %174 = zext i16 %173 to i32
  %175 = add nsw i32 %170, %174
  %176 = sext i32 %164 to i64
  %177 = getelementptr inbounds i16, ptr %59, i64 %176
  %178 = load i16, ptr %177, align 2, !tbaa !73
  %179 = zext i16 %178 to i32
  %180 = add nsw i32 %175, %179
  %181 = icmp slt i32 %180, %147
  %182 = call i32 @llvm.smin.i32(i32 %180, i32 %147)
  %183 = select i1 %181, i32 %164, i32 %146
  %184 = select i1 %181, i32 %158, i32 %145
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  br label %185

185:                                              ; preds = %143, %153
  %186 = phi i32 [ %182, %153 ], [ %147, %143 ]
  %187 = phi i32 [ %183, %153 ], [ %146, %143 ]
  %188 = phi i32 [ %184, %153 ], [ %145, %143 ]
  %189 = add nuw nsw i64 %144, 1
  %190 = icmp eq i64 %189, %114
  br i1 %190, label %115, label %143, !llvm.loop !79

191:                                              ; preds = %5
  %192 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %193 = load ptr, ptr %192, align 8, !tbaa !70
  %194 = mul nsw i32 %70, %20
  %195 = add nsw i32 %194, %68
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, ptr %26, i64 %196
  %198 = tail call i32 %193(ptr noundef %24, i32 noundef 16, ptr noundef %197, i32 noundef %20) #6
  %199 = and i32 %68, 65535
  %200 = shl i32 %70, 16
  %201 = or disjoint i32 %200, %199
  %202 = icmp sgt i32 %3, 0
  br i1 %202, label %203, label %292

203:                                              ; preds = %191
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #6
  %204 = zext nneg i32 %3 to i64
  br label %205

205:                                              ; preds = %203, %205
  %206 = phi i64 [ 0, %203 ], [ %227, %205 ]
  %207 = getelementptr inbounds [2 x i16], ptr %2, i64 %206
  %208 = load i16, ptr %207, align 2, !tbaa !73
  %209 = sext i16 %208 to i32
  %210 = add nsw i32 %209, 2
  %211 = ashr i32 %210, 2
  %212 = getelementptr inbounds [2 x i16], ptr %2, i64 %206, i64 1
  %213 = load i16, ptr %212, align 2, !tbaa !73
  %214 = sext i16 %213 to i32
  %215 = add nsw i32 %214, 2
  %216 = ashr i32 %215, 2
  %217 = icmp slt i32 %211, %28
  %218 = tail call i32 @llvm.smin.i32(i32 %211, i32 %32)
  %219 = select i1 %217, i32 %28, i32 %218
  %220 = trunc i32 %219 to i16
  %221 = getelementptr inbounds [2 x i16], ptr %10, i64 %206
  store i16 %220, ptr %221, align 4, !tbaa !73
  %222 = icmp slt i32 %216, %30
  %223 = tail call i32 @llvm.smin.i32(i32 %216, i32 %34)
  %224 = select i1 %222, i32 %30, i32 %223
  %225 = trunc i32 %224 to i16
  %226 = getelementptr inbounds [2 x i16], ptr %10, i64 %206, i64 1
  store i16 %225, ptr %226, align 2, !tbaa !73
  %227 = add nuw nsw i64 %206, 1
  %228 = icmp eq i64 %227, %204
  br i1 %228, label %229, label %205, !llvm.loop !82

229:                                              ; preds = %205
  %230 = shl i32 %198, 4
  %231 = add nuw i32 %3, 1
  %232 = zext i32 %231 to i64
  br label %236

233:                                              ; preds = %275
  %234 = and i32 %276, 15
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %288, label %279

236:                                              ; preds = %229, %275
  %237 = phi i64 [ 1, %229 ], [ %277, %275 ]
  %238 = phi i32 [ %230, %229 ], [ %276, %275 ]
  %239 = add nsw i64 %237, -1
  %240 = getelementptr inbounds [16 x [2 x i16]], ptr %10, i64 0, i64 %239
  %241 = load i32, ptr %240, align 4, !tbaa !78
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %275, label %243

243:                                              ; preds = %236
  %244 = getelementptr inbounds [2 x i16], ptr %2, i64 %239
  %245 = load i32, ptr %244, align 4, !tbaa !78
  %246 = icmp eq i32 %201, %245
  br i1 %246, label %275, label %247

247:                                              ; preds = %243
  %248 = load i16, ptr %240, align 4, !tbaa !73
  %249 = sext i16 %248 to i32
  %250 = getelementptr inbounds [16 x [2 x i16]], ptr %10, i64 0, i64 %239, i64 1
  %251 = load i16, ptr %250, align 2, !tbaa !73
  %252 = sext i16 %251 to i32
  %253 = load ptr, ptr %192, align 8, !tbaa !70
  %254 = mul nsw i32 %20, %252
  %255 = add nsw i32 %254, %249
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, ptr %26, i64 %256
  %258 = tail call i32 %253(ptr noundef %24, i32 noundef 16, ptr noundef %257, i32 noundef %20) #6
  %259 = shl nsw i32 %249, 2
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i16, ptr %54, i64 %260
  %262 = load i16, ptr %261, align 2, !tbaa !73
  %263 = zext i16 %262 to i32
  %264 = shl nsw i32 %252, 2
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i16, ptr %59, i64 %265
  %267 = load i16, ptr %266, align 2, !tbaa !73
  %268 = zext i16 %267 to i32
  %269 = add i32 %258, %263
  %270 = add i32 %269, %268
  %271 = shl i32 %270, 4
  %272 = trunc i64 %237 to i32
  %273 = add nsw i32 %271, %272
  %274 = tail call i32 @llvm.smin.i32(i32 %273, i32 %238)
  br label %275

275:                                              ; preds = %236, %243, %247
  %276 = phi i32 [ %274, %247 ], [ %238, %243 ], [ %238, %236 ]
  %277 = add nuw nsw i64 %237, 1
  %278 = icmp eq i64 %277, %232
  br i1 %278, label %233, label %236, !llvm.loop !83

279:                                              ; preds = %233
  %280 = add nsw i32 %234, -1
  %281 = zext nneg i32 %280 to i64
  %282 = getelementptr inbounds [16 x [2 x i16]], ptr %10, i64 0, i64 %281
  %283 = load i16, ptr %282, align 4, !tbaa !73
  %284 = sext i16 %283 to i32
  %285 = getelementptr inbounds [16 x [2 x i16]], ptr %10, i64 0, i64 %281, i64 1
  %286 = load i16, ptr %285, align 2, !tbaa !73
  %287 = sext i16 %286 to i32
  br label %288

288:                                              ; preds = %279, %233
  %289 = phi i32 [ %287, %279 ], [ %70, %233 ]
  %290 = phi i32 [ %284, %279 ], [ %68, %233 ]
  %291 = ashr i32 %276, 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #6
  br label %292

292:                                              ; preds = %191, %288, %115
  %293 = phi i32 [ %77, %115 ], [ %201, %288 ], [ %201, %191 ]
  %294 = phi i32 [ %116, %115 ], [ 268435456, %288 ], [ 268435456, %191 ]
  %295 = phi i32 [ %117, %115 ], [ 0, %288 ], [ 0, %191 ]
  %296 = phi i32 [ %118, %115 ], [ 0, %288 ], [ 0, %191 ]
  %297 = phi i32 [ %142, %115 ], [ %291, %288 ], [ %198, %191 ]
  %298 = phi i32 [ %122, %115 ], [ %289, %288 ], [ %70, %191 ]
  %299 = phi i32 [ %120, %115 ], [ %290, %288 ], [ %68, %191 ]
  %300 = icmp eq i32 %293, 0
  br i1 %300, label %315, label %301

301:                                              ; preds = %292
  %302 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %303 = load ptr, ptr %302, align 8, !tbaa !70
  %304 = call i32 %303(ptr noundef %24, i32 noundef 16, ptr noundef %26, i32 noundef %20) #6
  %305 = load i16, ptr %54, align 2, !tbaa !73
  %306 = zext i16 %305 to i32
  %307 = load i16, ptr %59, align 2, !tbaa !73
  %308 = zext i16 %307 to i32
  %309 = add i32 %304, %306
  %310 = add i32 %309, %308
  %311 = icmp slt i32 %310, %297
  %312 = call i32 @llvm.smin.i32(i32 %310, i32 %297)
  %313 = select i1 %311, i32 0, i32 %298
  %314 = select i1 %311, i32 0, i32 %299
  br label %315

315:                                              ; preds = %301, %292
  %316 = phi i32 [ %312, %301 ], [ %297, %292 ]
  %317 = phi i32 [ %313, %301 ], [ %298, %292 ]
  %318 = phi i32 [ %314, %301 ], [ %299, %292 ]
  %319 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 9
  %320 = load i32, ptr %319, align 4, !tbaa !84
  switch i32 %320, label %3045 [
    i32 0, label %321
    i32 1, label %425
    i32 2, label %807
    i32 3, label %2500
    i32 4, label %2500
  ]

321:                                              ; preds = %315
  %322 = shl i32 %316, 4
  %323 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 9, i64 %14
  %324 = sub nsw i32 0, %20
  %325 = sext i32 %324 to i64
  %326 = sext i32 %20 to i64
  %327 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 1
  %328 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 2
  %329 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 3
  br label %330

330:                                              ; preds = %411, %321
  %331 = phi i32 [ %22, %321 ], [ %409, %411 ]
  %332 = phi i32 [ %322, %321 ], [ %408, %411 ]
  %333 = phi i32 [ %317, %321 ], [ %407, %411 ]
  %334 = phi i32 [ %318, %321 ], [ %404, %411 ]
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i8, ptr %26, i64 %335
  %337 = mul nsw i32 %333, %20
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8, ptr %336, i64 %338
  %340 = load ptr, ptr %323, align 8, !tbaa !70
  %341 = getelementptr inbounds i8, ptr %339, i64 %325
  %342 = getelementptr inbounds i8, ptr %339, i64 %326
  %343 = getelementptr inbounds i8, ptr %339, i64 -1
  %344 = getelementptr inbounds i8, ptr %339, i64 1
  call void %340(ptr noundef %24, ptr noundef %341, ptr noundef %342, ptr noundef nonnull %343, ptr noundef nonnull %344, i32 noundef %20, ptr noundef nonnull %7) #6
  %345 = shl i32 %334, 2
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i16, ptr %54, i64 %346
  %348 = load i16, ptr %347, align 2, !tbaa !73
  %349 = zext i16 %348 to i32
  %350 = shl i32 %333, 2
  %351 = add i32 %350, -4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i16, ptr %59, i64 %352
  %354 = load i16, ptr %353, align 2, !tbaa !73
  %355 = zext i16 %354 to i32
  %356 = add nuw nsw i32 %355, %349
  %357 = load i32, ptr %7, align 16, !tbaa !43
  %358 = add nsw i32 %356, %357
  store i32 %358, ptr %7, align 16, !tbaa !43
  %359 = add i32 %350, 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i16, ptr %59, i64 %360
  %362 = load i16, ptr %361, align 2, !tbaa !73
  %363 = zext i16 %362 to i32
  %364 = add nuw nsw i32 %363, %349
  %365 = load i32, ptr %327, align 4, !tbaa !43
  %366 = add nsw i32 %364, %365
  store i32 %366, ptr %327, align 4, !tbaa !43
  %367 = add i32 %345, -4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i16, ptr %54, i64 %368
  %370 = load i16, ptr %369, align 2, !tbaa !73
  %371 = zext i16 %370 to i32
  %372 = sext i32 %350 to i64
  %373 = getelementptr inbounds i16, ptr %59, i64 %372
  %374 = load i16, ptr %373, align 2, !tbaa !73
  %375 = zext i16 %374 to i32
  %376 = add nuw nsw i32 %375, %371
  %377 = load i32, ptr %328, align 8, !tbaa !43
  %378 = add nsw i32 %376, %377
  store i32 %378, ptr %328, align 8, !tbaa !43
  %379 = add i32 %345, 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i16, ptr %54, i64 %380
  %382 = load i16, ptr %381, align 2, !tbaa !73
  %383 = zext i16 %382 to i32
  %384 = add nuw nsw i32 %383, %375
  %385 = load i32, ptr %329, align 4, !tbaa !43
  %386 = add nsw i32 %384, %385
  store i32 %386, ptr %329, align 4, !tbaa !43
  %387 = shl i32 %358, 4
  %388 = or disjoint i32 %387, 1
  %389 = call i32 @llvm.smin.i32(i32 %388, i32 %332)
  %390 = shl i32 %366, 4
  %391 = or disjoint i32 %390, 3
  %392 = call i32 @llvm.smin.i32(i32 %391, i32 %389)
  %393 = shl i32 %378, 4
  %394 = or disjoint i32 %393, 4
  %395 = call i32 @llvm.smin.i32(i32 %394, i32 %392)
  %396 = shl i32 %386, 4
  %397 = or disjoint i32 %396, 12
  %398 = call i32 @llvm.smin.i32(i32 %397, i32 %395)
  %399 = and i32 %398, 15
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %420, label %401

401:                                              ; preds = %330
  %402 = shl i32 %398, 28
  %403 = ashr i32 %402, 30
  %404 = sub nsw i32 %334, %403
  %405 = shl i32 %398, 30
  %406 = ashr exact i32 %405, 30
  %407 = sub nsw i32 %333, %406
  %408 = and i32 %398, -16
  %409 = add nsw i32 %331, -1
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %420, label %411

411:                                              ; preds = %401
  %412 = shl i32 %404, 16
  %413 = and i32 %407, 32767
  %414 = or disjoint i32 %412, %413
  %415 = add i32 %414, %42
  %416 = sub i32 %46, %414
  %417 = or i32 %415, %416
  %418 = and i32 %417, -2147467264
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %330, label %420, !llvm.loop !85

420:                                              ; preds = %401, %330, %411
  %421 = phi i32 [ %408, %411 ], [ %408, %401 ], [ %398, %330 ]
  %422 = phi i32 [ %407, %411 ], [ %407, %401 ], [ %333, %330 ]
  %423 = phi i32 [ %404, %411 ], [ %404, %401 ], [ %334, %330 ]
  %424 = ashr i32 %421, 4
  br label %3045

425:                                              ; preds = %2494, %315
  %426 = phi i32 [ %2496, %2494 ], [ %316, %315 ]
  %427 = phi i32 [ %2497, %2494 ], [ %317, %315 ]
  %428 = phi i32 [ %2498, %2494 ], [ %318, %315 ]
  %429 = phi i32 [ %2499, %2494 ], [ %22, %315 ]
  %430 = sext i32 %428 to i64
  %431 = getelementptr inbounds i8, ptr %26, i64 %430
  %432 = mul nsw i32 %427, %20
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i8, ptr %431, i64 %433
  %435 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 8, i64 %14
  %436 = load ptr, ptr %435, align 8, !tbaa !70
  %437 = getelementptr inbounds i8, ptr %434, i64 -2
  %438 = getelementptr inbounds i8, ptr %434, i64 -1
  %439 = shl nsw i32 %20, 1
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i8, ptr %438, i64 %440
  %442 = getelementptr inbounds i8, ptr %434, i64 1
  %443 = getelementptr inbounds i8, ptr %442, i64 %440
  call void %436(ptr noundef %24, ptr noundef nonnull %437, ptr noundef nonnull %441, ptr noundef nonnull %443, i32 noundef %20, ptr noundef nonnull %7) #6
  %444 = shl i32 %428, 2
  %445 = add i32 %444, -8
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i16, ptr %54, i64 %446
  %448 = load i16, ptr %447, align 2, !tbaa !73
  %449 = zext i16 %448 to i32
  %450 = shl i32 %427, 2
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i16, ptr %59, i64 %451
  %453 = load i16, ptr %452, align 2, !tbaa !73
  %454 = zext i16 %453 to i32
  %455 = add nuw nsw i32 %454, %449
  %456 = load i32, ptr %7, align 16, !tbaa !43
  %457 = add nsw i32 %455, %456
  store i32 %457, ptr %7, align 16, !tbaa !43
  %458 = add i32 %444, -4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i16, ptr %54, i64 %459
  %461 = load i16, ptr %460, align 2, !tbaa !73
  %462 = zext i16 %461 to i32
  %463 = add i32 %450, 8
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i16, ptr %59, i64 %464
  %466 = load i16, ptr %465, align 2, !tbaa !73
  %467 = zext i16 %466 to i32
  %468 = add nuw nsw i32 %467, %462
  %469 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 1
  %470 = load i32, ptr %469, align 4, !tbaa !43
  %471 = add nsw i32 %468, %470
  store i32 %471, ptr %469, align 4, !tbaa !43
  %472 = add i32 %444, 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i16, ptr %54, i64 %473
  %475 = load i16, ptr %474, align 2, !tbaa !73
  %476 = zext i16 %475 to i32
  %477 = add nuw nsw i32 %476, %467
  %478 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 2
  %479 = load i32, ptr %478, align 8, !tbaa !43
  %480 = add nsw i32 %477, %479
  store i32 %480, ptr %478, align 8, !tbaa !43
  %481 = load ptr, ptr %435, align 8, !tbaa !70
  %482 = getelementptr inbounds i8, ptr %434, i64 2
  %483 = mul nsw i32 %20, -2
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i8, ptr %442, i64 %484
  %486 = getelementptr inbounds i8, ptr %438, i64 %484
  %487 = getelementptr inbounds i32, ptr %7, i64 3
  call void %481(ptr noundef %24, ptr noundef nonnull %482, ptr noundef nonnull %485, ptr noundef nonnull %486, i32 noundef %20, ptr noundef nonnull %487) #6
  %488 = add i32 %444, 8
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i16, ptr %54, i64 %489
  %491 = load i16, ptr %490, align 2, !tbaa !73
  %492 = zext i16 %491 to i32
  %493 = load i16, ptr %452, align 2, !tbaa !73
  %494 = zext i16 %493 to i32
  %495 = add nuw nsw i32 %494, %492
  %496 = load i32, ptr %487, align 4, !tbaa !43
  %497 = add nsw i32 %495, %496
  store i32 %497, ptr %487, align 4, !tbaa !43
  %498 = load i16, ptr %474, align 2, !tbaa !73
  %499 = zext i16 %498 to i32
  %500 = add i32 %450, -8
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i16, ptr %59, i64 %501
  %503 = load i16, ptr %502, align 2, !tbaa !73
  %504 = zext i16 %503 to i32
  %505 = add nuw nsw i32 %504, %499
  %506 = getelementptr inbounds i32, ptr %7, i64 4
  %507 = load i32, ptr %506, align 16, !tbaa !43
  %508 = add nsw i32 %505, %507
  store i32 %508, ptr %506, align 16, !tbaa !43
  %509 = load i16, ptr %460, align 2, !tbaa !73
  %510 = zext i16 %509 to i32
  %511 = add nuw nsw i32 %510, %504
  %512 = getelementptr inbounds i32, ptr %7, i64 5
  %513 = load i32, ptr %512, align 4, !tbaa !43
  %514 = add nsw i32 %511, %513
  store i32 %514, ptr %512, align 4, !tbaa !43
  %515 = shl i32 %426, 3
  %516 = load i32, ptr %7, align 16, !tbaa !43
  %517 = shl i32 %516, 3
  %518 = or disjoint i32 %517, 2
  %519 = call i32 @llvm.smin.i32(i32 %518, i32 %515)
  %520 = load i32, ptr %469, align 4, !tbaa !43
  %521 = shl i32 %520, 3
  %522 = or disjoint i32 %521, 3
  %523 = call i32 @llvm.smin.i32(i32 %522, i32 %519)
  %524 = load i32, ptr %478, align 8, !tbaa !43
  %525 = shl i32 %524, 3
  %526 = or disjoint i32 %525, 4
  %527 = call i32 @llvm.smin.i32(i32 %526, i32 %523)
  %528 = shl i32 %497, 3
  %529 = or disjoint i32 %528, 5
  %530 = call i32 @llvm.smin.i32(i32 %529, i32 %527)
  %531 = shl i32 %508, 3
  %532 = or disjoint i32 %531, 6
  %533 = call i32 @llvm.smin.i32(i32 %532, i32 %530)
  %534 = shl i32 %514, 3
  %535 = or disjoint i32 %534, 7
  %536 = call i32 @llvm.smin.i32(i32 %535, i32 %533)
  %537 = and i32 %536, 7
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %689, label %539

539:                                              ; preds = %425
  %540 = add nsw i32 %537, -1
  %541 = zext nneg i32 %540 to i64
  %542 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %541
  %543 = load i8, ptr %542, align 2, !tbaa !78
  %544 = sext i8 %543 to i32
  %545 = add nsw i32 %428, %544
  %546 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %541, i64 1
  %547 = load i8, ptr %546, align 1, !tbaa !78
  %548 = sext i8 %547 to i32
  %549 = add nsw i32 %427, %548
  %550 = ashr i32 %429, 1
  %551 = icmp sgt i32 %550, 1
  br i1 %551, label %552, label %689

552:                                              ; preds = %539
  %553 = add nsw i32 %537, -2
  br label %554

554:                                              ; preds = %552, %671
  %555 = phi i32 [ %560, %671 ], [ %550, %552 ]
  %556 = phi i32 [ %683, %671 ], [ %545, %552 ]
  %557 = phi i32 [ %687, %671 ], [ %549, %552 ]
  %558 = phi i32 [ %668, %671 ], [ %536, %552 ]
  %559 = phi i32 [ %677, %671 ], [ %553, %552 ]
  %560 = add nsw i32 %555, -1
  %561 = shl i32 %556, 16
  %562 = and i32 %557, 32767
  %563 = or disjoint i32 %561, %562
  %564 = add i32 %563, %42
  %565 = sub i32 %46, %563
  %566 = or i32 %564, %565
  %567 = and i32 %566, -2147467264
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %569, label %689

569:                                              ; preds = %554
  %570 = sext i32 %556 to i64
  %571 = getelementptr inbounds i8, ptr %26, i64 %570
  %572 = mul nsw i32 %557, %20
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds i8, ptr %571, i64 %573
  %575 = load ptr, ptr %435, align 8, !tbaa !70
  %576 = sext i32 %559 to i64
  %577 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %576
  %578 = load i8, ptr %577, align 2, !tbaa !78
  %579 = sext i8 %578 to i64
  %580 = getelementptr inbounds i8, ptr %574, i64 %579
  %581 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %576, i64 1
  %582 = load i8, ptr %581, align 1, !tbaa !78
  %583 = sext i8 %582 to i32
  %584 = mul nsw i32 %20, %583
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds i8, ptr %580, i64 %585
  %587 = add nsw i32 %559, 1
  %588 = zext nneg i32 %587 to i64
  %589 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %588
  %590 = load i8, ptr %589, align 2, !tbaa !78
  %591 = sext i8 %590 to i64
  %592 = getelementptr inbounds i8, ptr %574, i64 %591
  %593 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %588, i64 1
  %594 = load i8, ptr %593, align 1, !tbaa !78
  %595 = sext i8 %594 to i32
  %596 = mul nsw i32 %20, %595
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds i8, ptr %592, i64 %597
  %599 = add nsw i32 %559, 2
  %600 = zext nneg i32 %599 to i64
  %601 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %600
  %602 = load i8, ptr %601, align 2, !tbaa !78
  %603 = sext i8 %602 to i64
  %604 = getelementptr inbounds i8, ptr %574, i64 %603
  %605 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %600, i64 1
  %606 = load i8, ptr %605, align 1, !tbaa !78
  %607 = sext i8 %606 to i32
  %608 = mul nsw i32 %20, %607
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds i8, ptr %604, i64 %609
  call void %575(ptr noundef %24, ptr noundef %586, ptr noundef %598, ptr noundef %610, i32 noundef %20, ptr noundef nonnull %7) #6
  %611 = sext i8 %578 to i32
  %612 = add nsw i32 %556, %611
  %613 = shl i32 %612, 2
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds i16, ptr %54, i64 %614
  %616 = load i16, ptr %615, align 2, !tbaa !73
  %617 = zext i16 %616 to i32
  %618 = add nsw i32 %557, %583
  %619 = shl i32 %618, 2
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds i16, ptr %59, i64 %620
  %622 = load i16, ptr %621, align 2, !tbaa !73
  %623 = zext i16 %622 to i32
  %624 = add nuw nsw i32 %623, %617
  %625 = load i32, ptr %7, align 16, !tbaa !43
  %626 = add nsw i32 %624, %625
  store i32 %626, ptr %7, align 16, !tbaa !43
  %627 = sext i8 %590 to i32
  %628 = add nsw i32 %556, %627
  %629 = shl i32 %628, 2
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds i16, ptr %54, i64 %630
  %632 = load i16, ptr %631, align 2, !tbaa !73
  %633 = zext i16 %632 to i32
  %634 = add nsw i32 %557, %595
  %635 = shl i32 %634, 2
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds i16, ptr %59, i64 %636
  %638 = load i16, ptr %637, align 2, !tbaa !73
  %639 = zext i16 %638 to i32
  %640 = add nuw nsw i32 %639, %633
  %641 = load i32, ptr %469, align 4, !tbaa !43
  %642 = add nsw i32 %640, %641
  store i32 %642, ptr %469, align 4, !tbaa !43
  %643 = sext i8 %602 to i32
  %644 = add nsw i32 %556, %643
  %645 = shl i32 %644, 2
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds i16, ptr %54, i64 %646
  %648 = load i16, ptr %647, align 2, !tbaa !73
  %649 = zext i16 %648 to i32
  %650 = add nsw i32 %557, %607
  %651 = shl i32 %650, 2
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds i16, ptr %59, i64 %652
  %654 = load i16, ptr %653, align 2, !tbaa !73
  %655 = zext i16 %654 to i32
  %656 = add nuw nsw i32 %655, %649
  %657 = load i32, ptr %478, align 8, !tbaa !43
  %658 = add nsw i32 %656, %657
  store i32 %658, ptr %478, align 8, !tbaa !43
  %659 = and i32 %558, -8
  %660 = shl i32 %626, 3
  %661 = or disjoint i32 %660, 1
  %662 = call i32 @llvm.smin.i32(i32 %661, i32 %659)
  %663 = shl i32 %642, 3
  %664 = or disjoint i32 %663, 2
  %665 = call i32 @llvm.smin.i32(i32 %664, i32 %662)
  %666 = shl i32 %658, 3
  %667 = or disjoint i32 %666, 3
  %668 = call i32 @llvm.smin.i32(i32 %667, i32 %665)
  %669 = and i32 %668, 3
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %689, label %671

671:                                              ; preds = %569
  %672 = add nsw i32 %559, -1
  %673 = add nsw i32 %672, %669
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds [8 x i8], ptr @mod6m1, i64 0, i64 %674
  %676 = load i8, ptr %675, align 1, !tbaa !78
  %677 = zext i8 %676 to i32
  %678 = add nuw nsw i32 %677, 1
  %679 = zext nneg i32 %678 to i64
  %680 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %679
  %681 = load i8, ptr %680, align 2, !tbaa !78
  %682 = sext i8 %681 to i32
  %683 = add nsw i32 %556, %682
  %684 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %679, i64 1
  %685 = load i8, ptr %684, align 1, !tbaa !78
  %686 = sext i8 %685 to i32
  %687 = add nsw i32 %557, %686
  %688 = icmp sgt i32 %555, 2
  br i1 %688, label %554, label %689, !llvm.loop !86

689:                                              ; preds = %569, %554, %671, %539, %425
  %690 = phi i32 [ %536, %425 ], [ %536, %539 ], [ %668, %671 ], [ %558, %554 ], [ %668, %569 ]
  %691 = phi i32 [ %427, %425 ], [ %549, %539 ], [ %687, %671 ], [ %557, %554 ], [ %557, %569 ]
  %692 = phi i32 [ %428, %425 ], [ %545, %539 ], [ %683, %671 ], [ %556, %554 ], [ %556, %569 ]
  %693 = ashr i32 %690, 3
  %694 = sext i32 %692 to i64
  %695 = getelementptr inbounds i8, ptr %26, i64 %694
  %696 = mul nsw i32 %691, %20
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds i8, ptr %695, i64 %697
  %699 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 9, i64 %14
  %700 = load ptr, ptr %699, align 8, !tbaa !70
  %701 = sub nsw i32 0, %20
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds i8, ptr %698, i64 %702
  %704 = sext i32 %20 to i64
  %705 = getelementptr inbounds i8, ptr %698, i64 %704
  %706 = getelementptr inbounds i8, ptr %698, i64 -1
  %707 = getelementptr inbounds i8, ptr %698, i64 1
  call void %700(ptr noundef %24, ptr noundef %703, ptr noundef %705, ptr noundef nonnull %706, ptr noundef nonnull %707, i32 noundef %20, ptr noundef nonnull %7) #6
  %708 = shl i32 %692, 2
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds i16, ptr %54, i64 %709
  %711 = load i16, ptr %710, align 2, !tbaa !73
  %712 = zext i16 %711 to i32
  %713 = shl i32 %691, 2
  %714 = add i32 %713, -4
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds i16, ptr %59, i64 %715
  %717 = load i16, ptr %716, align 2, !tbaa !73
  %718 = zext i16 %717 to i32
  %719 = add nuw nsw i32 %718, %712
  %720 = load i32, ptr %7, align 16, !tbaa !43
  %721 = add nsw i32 %719, %720
  store i32 %721, ptr %7, align 16, !tbaa !43
  %722 = add i32 %713, 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds i16, ptr %59, i64 %723
  %725 = load i16, ptr %724, align 2, !tbaa !73
  %726 = zext i16 %725 to i32
  %727 = add nuw nsw i32 %726, %712
  %728 = load i32, ptr %469, align 4, !tbaa !43
  %729 = add nsw i32 %727, %728
  store i32 %729, ptr %469, align 4, !tbaa !43
  %730 = add i32 %708, -4
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds i16, ptr %54, i64 %731
  %733 = load i16, ptr %732, align 2, !tbaa !73
  %734 = zext i16 %733 to i32
  %735 = sext i32 %713 to i64
  %736 = getelementptr inbounds i16, ptr %59, i64 %735
  %737 = load i16, ptr %736, align 2, !tbaa !73
  %738 = zext i16 %737 to i32
  %739 = add nuw nsw i32 %738, %734
  %740 = load i32, ptr %478, align 8, !tbaa !43
  %741 = add nsw i32 %739, %740
  store i32 %741, ptr %478, align 8, !tbaa !43
  %742 = add i32 %708, 4
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds i16, ptr %54, i64 %743
  %745 = load i16, ptr %744, align 2, !tbaa !73
  %746 = zext i16 %745 to i32
  %747 = add nuw nsw i32 %746, %738
  %748 = load i32, ptr %487, align 4, !tbaa !43
  %749 = add nsw i32 %747, %748
  store i32 %749, ptr %487, align 4, !tbaa !43
  %750 = icmp slt i32 %721, %693
  %751 = zext i1 %750 to i64
  %752 = call i32 @llvm.smin.i32(i32 %721, i32 %693)
  %753 = icmp slt i32 %729, %752
  %754 = select i1 %753, i64 2, i64 %751
  %755 = call i32 @llvm.smin.i32(i32 %729, i32 %752)
  %756 = icmp slt i32 %741, %755
  %757 = select i1 %756, i64 3, i64 %754
  %758 = call i32 @llvm.smin.i32(i32 %741, i32 %755)
  %759 = icmp slt i32 %749, %758
  %760 = select i1 %759, i64 4, i64 %757
  %761 = call i32 @llvm.smin.i32(i32 %749, i32 %758)
  %762 = load ptr, ptr %699, align 8, !tbaa !70
  %763 = getelementptr inbounds i8, ptr %706, i64 %702
  %764 = getelementptr inbounds i8, ptr %706, i64 %704
  %765 = getelementptr inbounds i8, ptr %707, i64 %702
  %766 = getelementptr inbounds i8, ptr %707, i64 %704
  call void %762(ptr noundef %24, ptr noundef nonnull %763, ptr noundef nonnull %764, ptr noundef nonnull %765, ptr noundef nonnull %766, i32 noundef %20, ptr noundef nonnull %7) #6
  %767 = load i16, ptr %732, align 2, !tbaa !73
  %768 = zext i16 %767 to i32
  %769 = load i16, ptr %716, align 2, !tbaa !73
  %770 = zext i16 %769 to i32
  %771 = add nuw nsw i32 %770, %768
  %772 = load i32, ptr %7, align 16, !tbaa !43
  %773 = add nsw i32 %771, %772
  store i32 %773, ptr %7, align 16, !tbaa !43
  %774 = load i16, ptr %724, align 2, !tbaa !73
  %775 = zext i16 %774 to i32
  %776 = add nuw nsw i32 %775, %768
  %777 = load i32, ptr %469, align 4, !tbaa !43
  %778 = add nsw i32 %776, %777
  store i32 %778, ptr %469, align 4, !tbaa !43
  %779 = load i16, ptr %744, align 2, !tbaa !73
  %780 = zext i16 %779 to i32
  %781 = add nuw nsw i32 %780, %770
  %782 = load i32, ptr %478, align 8, !tbaa !43
  %783 = add nsw i32 %781, %782
  store i32 %783, ptr %478, align 8, !tbaa !43
  %784 = add nuw nsw i32 %780, %775
  %785 = load i32, ptr %487, align 4, !tbaa !43
  %786 = add nsw i32 %784, %785
  store i32 %786, ptr %487, align 4, !tbaa !43
  %787 = icmp slt i32 %773, %761
  %788 = select i1 %787, i64 5, i64 %760
  %789 = call i32 @llvm.smin.i32(i32 %773, i32 %761)
  %790 = icmp slt i32 %778, %789
  %791 = call i32 @llvm.smin.i32(i32 %778, i32 %789)
  %792 = icmp slt i32 %783, %791
  %793 = select i1 %790, i64 6, i64 %788
  %794 = call i32 @llvm.smin.i32(i32 %783, i32 %791)
  %795 = icmp slt i32 %786, %794
  %796 = select i1 %792, i64 7, i64 %793
  %797 = call i32 @llvm.smin.i32(i32 %786, i32 %794)
  %798 = select i1 %795, i64 8, i64 %796
  %799 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %798
  %800 = load i8, ptr %799, align 2, !tbaa !78
  %801 = sext i8 %800 to i32
  %802 = add nsw i32 %692, %801
  %803 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %798, i64 1
  %804 = load i8, ptr %803, align 1, !tbaa !78
  %805 = sext i8 %804 to i32
  %806 = add nsw i32 %691, %805
  br label %3045

807:                                              ; preds = %315
  %808 = sext i32 %68 to i64
  %809 = getelementptr inbounds i8, ptr %26, i64 %808
  %810 = mul nsw i32 %70, %20
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds i8, ptr %809, i64 %811
  %813 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 9, i64 %14
  %814 = load ptr, ptr %813, align 8, !tbaa !70
  %815 = sub nsw i32 0, %20
  %816 = sext i32 %815 to i64
  %817 = getelementptr inbounds i8, ptr %812, i64 %816
  %818 = sext i32 %20 to i64
  %819 = getelementptr inbounds i8, ptr %812, i64 %818
  %820 = getelementptr inbounds i8, ptr %812, i64 -1
  %821 = getelementptr inbounds i8, ptr %812, i64 1
  call void %814(ptr noundef %24, ptr noundef %817, ptr noundef %819, ptr noundef nonnull %820, ptr noundef nonnull %821, i32 noundef %20, ptr noundef nonnull %7) #6
  %822 = and i32 %67, -4
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds i16, ptr %54, i64 %823
  %825 = load i16, ptr %824, align 2, !tbaa !73
  %826 = zext i16 %825 to i32
  %827 = add nsw i32 %70, -1
  %828 = shl i32 %827, 2
  %829 = sext i32 %828 to i64
  %830 = getelementptr inbounds i16, ptr %59, i64 %829
  %831 = load i16, ptr %830, align 2, !tbaa !73
  %832 = zext i16 %831 to i32
  %833 = add nuw nsw i32 %832, %826
  %834 = load i32, ptr %7, align 16, !tbaa !43
  %835 = add nsw i32 %833, %834
  store i32 %835, ptr %7, align 16, !tbaa !43
  %836 = add nsw i32 %70, 1
  %837 = shl i32 %836, 2
  %838 = sext i32 %837 to i64
  %839 = getelementptr inbounds i16, ptr %59, i64 %838
  %840 = load i16, ptr %839, align 2, !tbaa !73
  %841 = zext i16 %840 to i32
  %842 = add nuw nsw i32 %841, %826
  %843 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 1
  %844 = load i32, ptr %843, align 4, !tbaa !43
  %845 = add nsw i32 %842, %844
  store i32 %845, ptr %843, align 4, !tbaa !43
  %846 = add nsw i32 %68, -1
  %847 = shl i32 %846, 2
  %848 = sext i32 %847 to i64
  %849 = getelementptr inbounds i16, ptr %54, i64 %848
  %850 = load i16, ptr %849, align 2, !tbaa !73
  %851 = zext i16 %850 to i32
  %852 = and i32 %69, -4
  %853 = sext i32 %852 to i64
  %854 = getelementptr inbounds i16, ptr %59, i64 %853
  %855 = load i16, ptr %854, align 2, !tbaa !73
  %856 = zext i16 %855 to i32
  %857 = add nuw nsw i32 %856, %851
  %858 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 2
  %859 = load i32, ptr %858, align 8, !tbaa !43
  %860 = add nsw i32 %857, %859
  store i32 %860, ptr %858, align 8, !tbaa !43
  %861 = add nsw i32 %68, 1
  %862 = shl i32 %861, 2
  %863 = sext i32 %862 to i64
  %864 = getelementptr inbounds i16, ptr %54, i64 %863
  %865 = load i16, ptr %864, align 2, !tbaa !73
  %866 = zext i16 %865 to i32
  %867 = add nuw nsw i32 %866, %856
  %868 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 3
  %869 = load i32, ptr %868, align 4, !tbaa !43
  %870 = add nsw i32 %867, %869
  store i32 %870, ptr %868, align 4, !tbaa !43
  %871 = icmp slt i32 %835, %316
  %872 = call i32 @llvm.smin.i32(i32 %835, i32 %316)
  %873 = select i1 %871, i32 %827, i32 %317
  %874 = icmp slt i32 %845, %872
  %875 = call i32 @llvm.smin.i32(i32 %845, i32 %872)
  %876 = select i1 %874, i32 %836, i32 %873
  %877 = select i1 %874, i1 true, i1 %871
  %878 = select i1 %877, i32 %68, i32 %318
  %879 = icmp slt i32 %860, %875
  %880 = call i32 @llvm.smin.i32(i32 %860, i32 %875)
  %881 = select i1 %879, i32 %846, i32 %878
  %882 = icmp slt i32 %870, %880
  %883 = call i32 @llvm.smin.i32(i32 %870, i32 %880)
  %884 = select i1 %882, i1 true, i1 %879
  %885 = select i1 %884, i32 %70, i32 %876
  %886 = select i1 %882, i32 %861, i32 %881
  %887 = or i32 %70, %68
  %888 = icmp eq i32 %887, 0
  br i1 %888, label %939, label %889

889:                                              ; preds = %807
  %890 = load ptr, ptr %813, align 8, !tbaa !70
  %891 = getelementptr inbounds i8, ptr %26, i64 %816
  %892 = getelementptr inbounds i8, ptr %26, i64 %818
  %893 = getelementptr inbounds i8, ptr %26, i64 -1
  %894 = getelementptr inbounds i8, ptr %26, i64 1
  call void %890(ptr noundef %24, ptr noundef %891, ptr noundef %892, ptr noundef nonnull %893, ptr noundef nonnull %894, i32 noundef %20, ptr noundef nonnull %7) #6
  %895 = load i16, ptr %54, align 2, !tbaa !73
  %896 = zext i16 %895 to i32
  %897 = getelementptr inbounds i16, ptr %59, i64 -4
  %898 = load i16, ptr %897, align 2, !tbaa !73
  %899 = zext i16 %898 to i32
  %900 = add nuw nsw i32 %899, %896
  %901 = load i32, ptr %7, align 16, !tbaa !43
  %902 = add nsw i32 %900, %901
  store i32 %902, ptr %7, align 16, !tbaa !43
  %903 = getelementptr inbounds i16, ptr %59, i64 4
  %904 = load i16, ptr %903, align 2, !tbaa !73
  %905 = zext i16 %904 to i32
  %906 = add nuw nsw i32 %905, %896
  %907 = load i32, ptr %843, align 4, !tbaa !43
  %908 = add nsw i32 %906, %907
  store i32 %908, ptr %843, align 4, !tbaa !43
  %909 = getelementptr inbounds i16, ptr %54, i64 -4
  %910 = load i16, ptr %909, align 2, !tbaa !73
  %911 = zext i16 %910 to i32
  %912 = load i16, ptr %59, align 2, !tbaa !73
  %913 = zext i16 %912 to i32
  %914 = add nuw nsw i32 %913, %911
  %915 = load i32, ptr %858, align 8, !tbaa !43
  %916 = add nsw i32 %914, %915
  store i32 %916, ptr %858, align 8, !tbaa !43
  %917 = getelementptr inbounds i16, ptr %54, i64 4
  %918 = load i16, ptr %917, align 2, !tbaa !73
  %919 = zext i16 %918 to i32
  %920 = add nuw nsw i32 %919, %913
  %921 = load i32, ptr %868, align 4, !tbaa !43
  %922 = add nsw i32 %920, %921
  store i32 %922, ptr %868, align 4, !tbaa !43
  %923 = icmp slt i32 %902, %883
  %924 = call i32 @llvm.smin.i32(i32 %902, i32 %883)
  %925 = select i1 %923, i32 -1, i32 %885
  %926 = icmp slt i32 %908, %924
  %927 = call i32 @llvm.smin.i32(i32 %908, i32 %924)
  %928 = select i1 %926, i32 1, i32 %925
  %929 = select i1 %926, i1 true, i1 %923
  %930 = select i1 %929, i32 0, i32 %886
  %931 = icmp slt i32 %916, %927
  %932 = call i32 @llvm.smin.i32(i32 %916, i32 %927)
  %933 = select i1 %931, i32 -1, i32 %930
  %934 = icmp slt i32 %922, %932
  %935 = call i32 @llvm.smin.i32(i32 %922, i32 %932)
  %936 = select i1 %934, i1 true, i1 %931
  %937 = select i1 %936, i32 0, i32 %928
  %938 = select i1 %934, i32 1, i32 %933
  br label %939

939:                                              ; preds = %889, %807
  %940 = phi i32 [ %935, %889 ], [ %883, %807 ]
  %941 = phi i32 [ %937, %889 ], [ %885, %807 ]
  %942 = phi i32 [ %938, %889 ], [ %886, %807 ]
  %943 = icmp eq i32 %13, 6
  br i1 %943, label %2494, label %944

944:                                              ; preds = %939
  %945 = or i32 %942, %941
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %1022, label %947

947:                                              ; preds = %944
  %948 = icmp eq i32 %942, %68
  %949 = icmp eq i32 %941, %70
  %950 = and i1 %949, %948
  br i1 %950, label %1022, label %951

951:                                              ; preds = %947
  %952 = sext i32 %942 to i64
  %953 = getelementptr inbounds i8, ptr %26, i64 %952
  %954 = mul nsw i32 %941, %20
  %955 = sext i32 %954 to i64
  %956 = getelementptr inbounds i8, ptr %953, i64 %955
  %957 = load ptr, ptr %813, align 8, !tbaa !70
  %958 = getelementptr inbounds i8, ptr %956, i64 %816
  %959 = getelementptr inbounds i8, ptr %956, i64 %818
  %960 = getelementptr inbounds i8, ptr %956, i64 -1
  %961 = getelementptr inbounds i8, ptr %956, i64 1
  call void %957(ptr noundef %24, ptr noundef %958, ptr noundef %959, ptr noundef nonnull %960, ptr noundef nonnull %961, i32 noundef %20, ptr noundef nonnull %7) #6
  %962 = shl i32 %942, 2
  %963 = sext i32 %962 to i64
  %964 = getelementptr inbounds i16, ptr %54, i64 %963
  %965 = load i16, ptr %964, align 2, !tbaa !73
  %966 = zext i16 %965 to i32
  %967 = add nsw i32 %941, -1
  %968 = shl i32 %967, 2
  %969 = sext i32 %968 to i64
  %970 = getelementptr inbounds i16, ptr %59, i64 %969
  %971 = load i16, ptr %970, align 2, !tbaa !73
  %972 = zext i16 %971 to i32
  %973 = add nuw nsw i32 %972, %966
  %974 = load i32, ptr %7, align 16, !tbaa !43
  %975 = add nsw i32 %973, %974
  store i32 %975, ptr %7, align 16, !tbaa !43
  %976 = add nsw i32 %941, 1
  %977 = shl i32 %976, 2
  %978 = sext i32 %977 to i64
  %979 = getelementptr inbounds i16, ptr %59, i64 %978
  %980 = load i16, ptr %979, align 2, !tbaa !73
  %981 = zext i16 %980 to i32
  %982 = add nuw nsw i32 %981, %966
  %983 = load i32, ptr %843, align 4, !tbaa !43
  %984 = add nsw i32 %982, %983
  store i32 %984, ptr %843, align 4, !tbaa !43
  %985 = add nsw i32 %942, -1
  %986 = shl i32 %985, 2
  %987 = sext i32 %986 to i64
  %988 = getelementptr inbounds i16, ptr %54, i64 %987
  %989 = load i16, ptr %988, align 2, !tbaa !73
  %990 = zext i16 %989 to i32
  %991 = shl i32 %941, 2
  %992 = sext i32 %991 to i64
  %993 = getelementptr inbounds i16, ptr %59, i64 %992
  %994 = load i16, ptr %993, align 2, !tbaa !73
  %995 = zext i16 %994 to i32
  %996 = add nuw nsw i32 %995, %990
  %997 = load i32, ptr %858, align 8, !tbaa !43
  %998 = add nsw i32 %996, %997
  store i32 %998, ptr %858, align 8, !tbaa !43
  %999 = add nsw i32 %942, 1
  %1000 = shl i32 %999, 2
  %1001 = sext i32 %1000 to i64
  %1002 = getelementptr inbounds i16, ptr %54, i64 %1001
  %1003 = load i16, ptr %1002, align 2, !tbaa !73
  %1004 = zext i16 %1003 to i32
  %1005 = add nuw nsw i32 %1004, %995
  %1006 = load i32, ptr %868, align 4, !tbaa !43
  %1007 = add nsw i32 %1005, %1006
  store i32 %1007, ptr %868, align 4, !tbaa !43
  %1008 = icmp slt i32 %975, %940
  %1009 = call i32 @llvm.smin.i32(i32 %975, i32 %940)
  %1010 = select i1 %1008, i32 %967, i32 %941
  %1011 = icmp slt i32 %984, %1009
  %1012 = call i32 @llvm.smin.i32(i32 %984, i32 %1009)
  %1013 = select i1 %1011, i32 %976, i32 %1010
  %1014 = icmp slt i32 %998, %1012
  %1015 = call i32 @llvm.smin.i32(i32 %998, i32 %1012)
  %1016 = select i1 %1014, i32 %985, i32 %942
  %1017 = icmp slt i32 %1007, %1015
  %1018 = call i32 @llvm.smin.i32(i32 %1007, i32 %1015)
  %1019 = select i1 %1017, i1 true, i1 %1014
  %1020 = select i1 %1019, i32 %941, i32 %1013
  %1021 = select i1 %1017, i32 %999, i32 %1016
  br label %1022

1022:                                             ; preds = %951, %947, %944
  %1023 = phi i32 [ %1018, %951 ], [ %940, %947 ], [ %940, %944 ]
  %1024 = phi i32 [ %1020, %951 ], [ %941, %947 ], [ %941, %944 ]
  %1025 = phi i32 [ %1021, %951 ], [ %942, %947 ], [ %942, %944 ]
  %1026 = icmp eq i32 %1023, %940
  %1027 = select i1 %1026, i32 3, i32 1
  br i1 %1026, label %1028, label %1630

1028:                                             ; preds = %1022
  %1029 = getelementptr inbounds [7 x i8], ptr @x264_me_search_ref.x264_pixel_size_shift, i64 0, i64 %14
  %1030 = load i8, ptr %1029, align 1, !tbaa !78
  %1031 = zext nneg i8 %1030 to i32
  %1032 = lshr i32 2000, %1031
  %1033 = icmp slt i32 %1023, %1032
  br i1 %1033, label %1034, label %1630

1034:                                             ; preds = %1028
  %1035 = sext i32 %1025 to i64
  %1036 = getelementptr inbounds i8, ptr %26, i64 %1035
  %1037 = mul nsw i32 %1024, %20
  %1038 = sext i32 %1037 to i64
  %1039 = getelementptr inbounds i8, ptr %1036, i64 %1038
  %1040 = load ptr, ptr %813, align 8, !tbaa !70
  %1041 = mul nsw i32 %20, -2
  %1042 = sext i32 %1041 to i64
  %1043 = getelementptr inbounds i8, ptr %1039, i64 %1042
  %1044 = getelementptr inbounds i8, ptr %1039, i64 -1
  %1045 = getelementptr inbounds i8, ptr %1044, i64 %816
  %1046 = getelementptr inbounds i8, ptr %1039, i64 1
  %1047 = getelementptr inbounds i8, ptr %1046, i64 %816
  %1048 = getelementptr inbounds i8, ptr %1039, i64 -2
  call void %1040(ptr noundef %24, ptr noundef %1043, ptr noundef nonnull %1045, ptr noundef nonnull %1047, ptr noundef nonnull %1048, i32 noundef %20, ptr noundef nonnull %7) #6
  %1049 = shl i32 %1025, 2
  %1050 = sext i32 %1049 to i64
  %1051 = getelementptr inbounds i16, ptr %54, i64 %1050
  %1052 = load i16, ptr %1051, align 2, !tbaa !73
  %1053 = zext i16 %1052 to i32
  %1054 = add nsw i32 %1024, -2
  %1055 = shl i32 %1054, 2
  %1056 = sext i32 %1055 to i64
  %1057 = getelementptr inbounds i16, ptr %59, i64 %1056
  %1058 = load i16, ptr %1057, align 2, !tbaa !73
  %1059 = zext i16 %1058 to i32
  %1060 = add nuw nsw i32 %1059, %1053
  %1061 = load i32, ptr %7, align 16, !tbaa !43
  %1062 = add nsw i32 %1060, %1061
  store i32 %1062, ptr %7, align 16, !tbaa !43
  %1063 = add nsw i32 %1025, -1
  %1064 = shl i32 %1063, 2
  %1065 = sext i32 %1064 to i64
  %1066 = getelementptr inbounds i16, ptr %54, i64 %1065
  %1067 = load i16, ptr %1066, align 2, !tbaa !73
  %1068 = zext i16 %1067 to i32
  %1069 = add nsw i32 %1024, -1
  %1070 = shl i32 %1069, 2
  %1071 = sext i32 %1070 to i64
  %1072 = getelementptr inbounds i16, ptr %59, i64 %1071
  %1073 = load i16, ptr %1072, align 2, !tbaa !73
  %1074 = zext i16 %1073 to i32
  %1075 = add nuw nsw i32 %1074, %1068
  %1076 = load i32, ptr %843, align 4, !tbaa !43
  %1077 = add nsw i32 %1075, %1076
  store i32 %1077, ptr %843, align 4, !tbaa !43
  %1078 = add nsw i32 %1025, 1
  %1079 = shl i32 %1078, 2
  %1080 = sext i32 %1079 to i64
  %1081 = getelementptr inbounds i16, ptr %54, i64 %1080
  %1082 = load i16, ptr %1081, align 2, !tbaa !73
  %1083 = zext i16 %1082 to i32
  %1084 = add nuw nsw i32 %1083, %1074
  %1085 = load i32, ptr %858, align 8, !tbaa !43
  %1086 = add nsw i32 %1084, %1085
  store i32 %1086, ptr %858, align 8, !tbaa !43
  %1087 = add nsw i32 %1025, -2
  %1088 = shl i32 %1087, 2
  %1089 = sext i32 %1088 to i64
  %1090 = getelementptr inbounds i16, ptr %54, i64 %1089
  %1091 = load i16, ptr %1090, align 2, !tbaa !73
  %1092 = zext i16 %1091 to i32
  %1093 = shl i32 %1024, 2
  %1094 = sext i32 %1093 to i64
  %1095 = getelementptr inbounds i16, ptr %59, i64 %1094
  %1096 = load i16, ptr %1095, align 2, !tbaa !73
  %1097 = zext i16 %1096 to i32
  %1098 = add nuw nsw i32 %1097, %1092
  %1099 = load i32, ptr %868, align 4, !tbaa !43
  %1100 = add nsw i32 %1098, %1099
  store i32 %1100, ptr %868, align 4, !tbaa !43
  %1101 = icmp slt i32 %1062, %1023
  %1102 = call i32 @llvm.smin.i32(i32 %1062, i32 %1023)
  %1103 = select i1 %1101, i32 %1054, i32 %1024
  %1104 = icmp slt i32 %1077, %1102
  %1105 = call i32 @llvm.smin.i32(i32 %1077, i32 %1102)
  %1106 = select i1 %1104, i32 %1063, i32 %1025
  %1107 = icmp slt i32 %1086, %1105
  %1108 = call i32 @llvm.smin.i32(i32 %1086, i32 %1105)
  %1109 = select i1 %1107, i1 true, i1 %1104
  %1110 = select i1 %1109, i32 %1069, i32 %1103
  %1111 = select i1 %1107, i32 %1078, i32 %1106
  %1112 = icmp slt i32 %1100, %1108
  %1113 = call i32 @llvm.smin.i32(i32 %1100, i32 %1108)
  %1114 = select i1 %1112, i32 %1087, i32 %1111
  %1115 = load ptr, ptr %813, align 8, !tbaa !70
  %1116 = getelementptr inbounds i8, ptr %1039, i64 2
  %1117 = getelementptr inbounds i8, ptr %1044, i64 %818
  %1118 = getelementptr inbounds i8, ptr %1046, i64 %818
  %1119 = shl nsw i32 %20, 1
  %1120 = sext i32 %1119 to i64
  %1121 = getelementptr inbounds i8, ptr %1039, i64 %1120
  call void %1115(ptr noundef %24, ptr noundef nonnull %1116, ptr noundef nonnull %1117, ptr noundef nonnull %1118, ptr noundef %1121, i32 noundef %20, ptr noundef nonnull %7) #6
  %1122 = add nsw i32 %1025, 2
  %1123 = shl i32 %1122, 2
  %1124 = sext i32 %1123 to i64
  %1125 = getelementptr inbounds i16, ptr %54, i64 %1124
  %1126 = load i16, ptr %1125, align 2, !tbaa !73
  %1127 = zext i16 %1126 to i32
  %1128 = load i16, ptr %1095, align 2, !tbaa !73
  %1129 = zext i16 %1128 to i32
  %1130 = add nuw nsw i32 %1129, %1127
  %1131 = load i32, ptr %7, align 16, !tbaa !43
  %1132 = add nsw i32 %1130, %1131
  store i32 %1132, ptr %7, align 16, !tbaa !43
  %1133 = load i16, ptr %1066, align 2, !tbaa !73
  %1134 = zext i16 %1133 to i32
  %1135 = add nsw i32 %1024, 1
  %1136 = shl i32 %1135, 2
  %1137 = sext i32 %1136 to i64
  %1138 = getelementptr inbounds i16, ptr %59, i64 %1137
  %1139 = load i16, ptr %1138, align 2, !tbaa !73
  %1140 = zext i16 %1139 to i32
  %1141 = add nuw nsw i32 %1140, %1134
  %1142 = load i32, ptr %843, align 4, !tbaa !43
  %1143 = add nsw i32 %1141, %1142
  store i32 %1143, ptr %843, align 4, !tbaa !43
  %1144 = load i16, ptr %1081, align 2, !tbaa !73
  %1145 = zext i16 %1144 to i32
  %1146 = add nuw nsw i32 %1145, %1140
  %1147 = load i32, ptr %858, align 8, !tbaa !43
  %1148 = add nsw i32 %1146, %1147
  store i32 %1148, ptr %858, align 8, !tbaa !43
  %1149 = load i16, ptr %1051, align 2, !tbaa !73
  %1150 = zext i16 %1149 to i32
  %1151 = add nsw i32 %1024, 2
  %1152 = shl i32 %1151, 2
  %1153 = sext i32 %1152 to i64
  %1154 = getelementptr inbounds i16, ptr %59, i64 %1153
  %1155 = load i16, ptr %1154, align 2, !tbaa !73
  %1156 = zext i16 %1155 to i32
  %1157 = add nuw nsw i32 %1156, %1150
  %1158 = load i32, ptr %868, align 4, !tbaa !43
  %1159 = add nsw i32 %1157, %1158
  store i32 %1159, ptr %868, align 4, !tbaa !43
  %1160 = icmp slt i32 %1132, %1113
  %1161 = call i32 @llvm.smin.i32(i32 %1132, i32 %1113)
  %1162 = select i1 %1160, i1 true, i1 %1112
  %1163 = select i1 %1162, i32 %1024, i32 %1110
  %1164 = select i1 %1160, i32 %1122, i32 %1114
  %1165 = icmp slt i32 %1143, %1161
  %1166 = call i32 @llvm.smin.i32(i32 %1143, i32 %1161)
  %1167 = select i1 %1165, i32 %1063, i32 %1164
  %1168 = icmp slt i32 %1148, %1166
  %1169 = call i32 @llvm.smin.i32(i32 %1148, i32 %1166)
  %1170 = select i1 %1168, i1 true, i1 %1165
  %1171 = select i1 %1170, i32 %1135, i32 %1163
  %1172 = select i1 %1168, i32 %1078, i32 %1167
  %1173 = icmp slt i32 %1159, %1169
  %1174 = call i32 @llvm.smin.i32(i32 %1159, i32 %1169)
  %1175 = select i1 %1173, i32 %1151, i32 %1171
  %1176 = select i1 %1173, i32 %1025, i32 %1172
  %1177 = icmp eq i32 %1174, %316
  %1178 = lshr i32 500, %1031
  %1179 = icmp slt i32 %1174, %1178
  %1180 = select i1 %1177, i1 %1179, i1 false
  br i1 %1180, label %2494, label %1181

1181:                                             ; preds = %1034
  %1182 = icmp eq i32 %1174, %940
  br i1 %1182, label %1183, label %1630

1183:                                             ; preds = %1181
  %1184 = ashr i32 %22, 1
  %1185 = or i32 %1184, 1
  %1186 = sub nsw i32 %32, %1025
  %1187 = sub nsw i32 %1025, %28
  %1188 = call i32 @llvm.smin.i32(i32 %1186, i32 %1187)
  %1189 = icmp sle i32 %1185, %1188
  %1190 = icmp sgt i32 %1185, 5
  %1191 = and i1 %1189, %1190
  br i1 %1191, label %1192, label %1276

1192:                                             ; preds = %1183
  %1193 = add nsw i32 %1185, -2
  %1194 = zext i32 %1025 to i64
  %1195 = zext i32 %1025 to i64
  %1196 = zext i32 %1025 to i64
  %1197 = sext i32 %1193 to i64
  br label %1198

1198:                                             ; preds = %1192, %1198
  %1199 = phi i64 [ 3, %1192 ], [ %1272, %1198 ]
  %1200 = phi i32 [ %1176, %1192 ], [ %1271, %1198 ]
  %1201 = phi i32 [ %1175, %1192 ], [ %1269, %1198 ]
  %1202 = phi i32 [ %1174, %1192 ], [ %1265, %1198 ]
  %1203 = load ptr, ptr %813, align 8, !tbaa !70
  %1204 = getelementptr inbounds i8, ptr %1039, i64 %1199
  %1205 = sub nsw i64 0, %1199
  %1206 = getelementptr inbounds i8, ptr %1039, i64 %1205
  %1207 = add nuw nsw i64 %1199, 2
  %1208 = getelementptr inbounds i8, ptr %1039, i64 %1207
  %1209 = sub nuw nsw i64 -2, %1199
  %1210 = getelementptr inbounds i8, ptr %1039, i64 %1209
  call void %1203(ptr noundef %24, ptr noundef nonnull %1204, ptr noundef nonnull %1206, ptr noundef nonnull %1208, ptr noundef nonnull %1210, i32 noundef %20, ptr noundef nonnull %7) #6
  %1211 = add nuw i64 %1199, %1196
  %1212 = trunc i64 %1211 to i32
  %1213 = shl i32 %1212, 2
  %1214 = sext i32 %1213 to i64
  %1215 = getelementptr inbounds i16, ptr %54, i64 %1214
  %1216 = load i16, ptr %1215, align 2, !tbaa !73
  %1217 = zext i16 %1216 to i32
  %1218 = load i16, ptr %1095, align 2, !tbaa !73
  %1219 = zext i16 %1218 to i32
  %1220 = add nuw nsw i32 %1219, %1217
  %1221 = load i32, ptr %7, align 16, !tbaa !43
  %1222 = add nsw i32 %1220, %1221
  store i32 %1222, ptr %7, align 16, !tbaa !43
  %1223 = trunc i64 %1199 to i32
  %1224 = sub i32 %1025, %1223
  %1225 = shl i32 %1224, 2
  %1226 = sext i32 %1225 to i64
  %1227 = getelementptr inbounds i16, ptr %54, i64 %1226
  %1228 = load i16, ptr %1227, align 2, !tbaa !73
  %1229 = zext i16 %1228 to i32
  %1230 = add nuw nsw i32 %1229, %1219
  %1231 = load i32, ptr %843, align 4, !tbaa !43
  %1232 = add nsw i32 %1230, %1231
  store i32 %1232, ptr %843, align 4, !tbaa !43
  %1233 = add nuw i64 %1207, %1195
  %1234 = trunc i64 %1233 to i32
  %1235 = shl i32 %1234, 2
  %1236 = sext i32 %1235 to i64
  %1237 = getelementptr inbounds i16, ptr %54, i64 %1236
  %1238 = load i16, ptr %1237, align 2, !tbaa !73
  %1239 = zext i16 %1238 to i32
  %1240 = add nuw nsw i32 %1239, %1219
  %1241 = load i32, ptr %858, align 8, !tbaa !43
  %1242 = add nsw i32 %1240, %1241
  store i32 %1242, ptr %858, align 8, !tbaa !43
  %1243 = add nsw i64 %1209, %1194
  %1244 = trunc i64 %1243 to i32
  %1245 = shl i32 %1244, 2
  %1246 = sext i32 %1245 to i64
  %1247 = getelementptr inbounds i16, ptr %54, i64 %1246
  %1248 = load i16, ptr %1247, align 2, !tbaa !73
  %1249 = zext i16 %1248 to i32
  %1250 = add nuw nsw i32 %1249, %1219
  %1251 = load i32, ptr %868, align 4, !tbaa !43
  %1252 = add nsw i32 %1250, %1251
  store i32 %1252, ptr %868, align 4, !tbaa !43
  %1253 = icmp slt i32 %1222, %1202
  %1254 = call i32 @llvm.smin.i32(i32 %1222, i32 %1202)
  %1255 = trunc i64 %1211 to i32
  %1256 = select i1 %1253, i32 %1255, i32 %1200
  %1257 = icmp slt i32 %1232, %1254
  %1258 = call i32 @llvm.smin.i32(i32 %1232, i32 %1254)
  %1259 = select i1 %1257, i32 %1224, i32 %1256
  %1260 = icmp slt i32 %1242, %1258
  %1261 = call i32 @llvm.smin.i32(i32 %1242, i32 %1258)
  %1262 = trunc i64 %1233 to i32
  %1263 = select i1 %1260, i32 %1262, i32 %1259
  %1264 = icmp slt i32 %1252, %1261
  %1265 = call i32 @llvm.smin.i32(i32 %1252, i32 %1261)
  %1266 = select i1 %1264, i1 true, i1 %1260
  %1267 = select i1 %1266, i1 true, i1 %1257
  %1268 = select i1 %1267, i1 true, i1 %1253
  %1269 = select i1 %1268, i32 %1024, i32 %1201
  %1270 = trunc i64 %1243 to i32
  %1271 = select i1 %1264, i32 %1270, i32 %1263
  %1272 = add nuw nsw i64 %1199, 4
  %1273 = icmp slt i64 %1272, %1197
  br i1 %1273, label %1198, label %1274, !llvm.loop !87

1274:                                             ; preds = %1198
  %1275 = trunc i64 %1272 to i32
  br label %1276

1276:                                             ; preds = %1274, %1183
  %1277 = phi i32 [ 3, %1183 ], [ %1275, %1274 ]
  %1278 = phi i32 [ %1174, %1183 ], [ %1265, %1274 ]
  %1279 = phi i32 [ %1175, %1183 ], [ %1269, %1274 ]
  %1280 = phi i32 [ %1176, %1183 ], [ %1271, %1274 ]
  %1281 = icmp slt i32 %1277, %1185
  br i1 %1281, label %1282, label %1352

1282:                                             ; preds = %1276
  %1283 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %1284 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %1285 = zext nneg i32 %1277 to i64
  %1286 = sext i32 %1025 to i64
  %1287 = sext i32 %32 to i64
  %1288 = sext i32 %1037 to i64
  %1289 = sext i32 %1025 to i64
  %1290 = sext i32 %28 to i64
  %1291 = sext i32 %1037 to i64
  %1292 = sext i32 %1185 to i64
  %1293 = getelementptr i8, ptr %26, i64 %1288
  %1294 = getelementptr i8, ptr %26, i64 %1291
  br label %1295

1295:                                             ; preds = %1282, %1346
  %1296 = phi i64 [ %1285, %1282 ], [ %1350, %1346 ]
  %1297 = phi i32 [ %1280, %1282 ], [ %1349, %1346 ]
  %1298 = phi i32 [ %1279, %1282 ], [ %1348, %1346 ]
  %1299 = phi i32 [ %1278, %1282 ], [ %1347, %1346 ]
  %1300 = add nsw i64 %1296, %1286
  %1301 = icmp sgt i64 %1300, %1287
  br i1 %1301, label %1321, label %1302

1302:                                             ; preds = %1295
  %1303 = load ptr, ptr %1283, align 8, !tbaa !70
  %1304 = getelementptr i8, ptr %1293, i64 %1300
  %1305 = call i32 %1303(ptr noundef %24, i32 noundef 16, ptr noundef %1304, i32 noundef %20) #6
  %1306 = trunc i64 %1300 to i32
  %1307 = shl i32 %1306, 2
  %1308 = sext i32 %1307 to i64
  %1309 = getelementptr inbounds i16, ptr %54, i64 %1308
  %1310 = load i16, ptr %1309, align 2, !tbaa !73
  %1311 = zext i16 %1310 to i32
  %1312 = load i16, ptr %1095, align 2, !tbaa !73
  %1313 = zext i16 %1312 to i32
  %1314 = add i32 %1305, %1311
  %1315 = add i32 %1314, %1313
  %1316 = icmp slt i32 %1315, %1299
  %1317 = call i32 @llvm.smin.i32(i32 %1315, i32 %1299)
  %1318 = select i1 %1316, i32 %1024, i32 %1298
  %1319 = trunc i64 %1300 to i32
  %1320 = select i1 %1316, i32 %1319, i32 %1297
  br label %1321

1321:                                             ; preds = %1302, %1295
  %1322 = phi i32 [ %1317, %1302 ], [ %1299, %1295 ]
  %1323 = phi i32 [ %1318, %1302 ], [ %1298, %1295 ]
  %1324 = phi i32 [ %1320, %1302 ], [ %1297, %1295 ]
  %1325 = sub nsw i64 %1289, %1296
  %1326 = icmp slt i64 %1325, %1290
  br i1 %1326, label %1346, label %1327

1327:                                             ; preds = %1321
  %1328 = load ptr, ptr %1284, align 8, !tbaa !70
  %1329 = getelementptr i8, ptr %1294, i64 %1325
  %1330 = call i32 %1328(ptr noundef %24, i32 noundef 16, ptr noundef %1329, i32 noundef %20) #6
  %1331 = trunc i64 %1325 to i32
  %1332 = shl i32 %1331, 2
  %1333 = sext i32 %1332 to i64
  %1334 = getelementptr inbounds i16, ptr %54, i64 %1333
  %1335 = load i16, ptr %1334, align 2, !tbaa !73
  %1336 = zext i16 %1335 to i32
  %1337 = load i16, ptr %1095, align 2, !tbaa !73
  %1338 = zext i16 %1337 to i32
  %1339 = add i32 %1330, %1336
  %1340 = add i32 %1339, %1338
  %1341 = icmp slt i32 %1340, %1322
  %1342 = call i32 @llvm.smin.i32(i32 %1340, i32 %1322)
  %1343 = select i1 %1341, i32 %1024, i32 %1323
  %1344 = trunc i64 %1325 to i32
  %1345 = select i1 %1341, i32 %1344, i32 %1324
  br label %1346

1346:                                             ; preds = %1321, %1327
  %1347 = phi i32 [ %1342, %1327 ], [ %1322, %1321 ]
  %1348 = phi i32 [ %1343, %1327 ], [ %1323, %1321 ]
  %1349 = phi i32 [ %1345, %1327 ], [ %1324, %1321 ]
  %1350 = add nuw nsw i64 %1296, 2
  %1351 = icmp slt i64 %1350, %1292
  br i1 %1351, label %1295, label %1352, !llvm.loop !88

1352:                                             ; preds = %1346, %1276
  %1353 = phi i32 [ %1278, %1276 ], [ %1347, %1346 ]
  %1354 = phi i32 [ %1279, %1276 ], [ %1348, %1346 ]
  %1355 = phi i32 [ %1280, %1276 ], [ %1349, %1346 ]
  %1356 = sub nsw i32 %34, %1024
  %1357 = sub nsw i32 %1024, %30
  %1358 = call i32 @llvm.smin.i32(i32 %1356, i32 %1357)
  %1359 = icmp sle i32 %1185, %1358
  %1360 = icmp sgt i32 %1185, 5
  %1361 = and i1 %1359, %1360
  br i1 %1361, label %1362, label %1453

1362:                                             ; preds = %1352
  %1363 = add nsw i32 %1185, -2
  %1364 = sext i32 %20 to i64
  %1365 = zext i32 %1024 to i64
  %1366 = sext i32 %20 to i64
  %1367 = sext i32 %20 to i64
  %1368 = zext i32 %1024 to i64
  %1369 = zext i32 %1024 to i64
  %1370 = sext i32 %1363 to i64
  br label %1371

1371:                                             ; preds = %1362, %1371
  %1372 = phi i64 [ 3, %1362 ], [ %1449, %1371 ]
  %1373 = phi i32 [ %1355, %1362 ], [ %1448, %1371 ]
  %1374 = phi i32 [ %1354, %1362 ], [ %1444, %1371 ]
  %1375 = phi i32 [ %1353, %1362 ], [ %1442, %1371 ]
  %1376 = load ptr, ptr %813, align 8, !tbaa !70
  %1377 = mul nsw i64 %1372, %1366
  %1378 = getelementptr inbounds i8, ptr %1039, i64 %1377
  %1379 = mul i64 %1377, -4294967296
  %1380 = ashr exact i64 %1379, 32
  %1381 = getelementptr inbounds i8, ptr %1039, i64 %1380
  %1382 = add nuw nsw i64 %1372, 2
  %1383 = mul nsw i64 %1382, %1367
  %1384 = getelementptr inbounds i8, ptr %1039, i64 %1383
  %1385 = sub nuw nsw i64 -2, %1372
  %1386 = mul nsw i64 %1385, %1364
  %1387 = getelementptr inbounds i8, ptr %1039, i64 %1386
  call void %1376(ptr noundef %24, ptr noundef %1378, ptr noundef %1381, ptr noundef %1384, ptr noundef %1387, i32 noundef %20, ptr noundef nonnull %7) #6
  %1388 = load i16, ptr %1051, align 2, !tbaa !73
  %1389 = zext i16 %1388 to i32
  %1390 = add nuw i64 %1372, %1369
  %1391 = trunc i64 %1390 to i32
  %1392 = shl i32 %1391, 2
  %1393 = sext i32 %1392 to i64
  %1394 = getelementptr inbounds i16, ptr %59, i64 %1393
  %1395 = load i16, ptr %1394, align 2, !tbaa !73
  %1396 = zext i16 %1395 to i32
  %1397 = add nuw nsw i32 %1396, %1389
  %1398 = load i32, ptr %7, align 16, !tbaa !43
  %1399 = add nsw i32 %1397, %1398
  store i32 %1399, ptr %7, align 16, !tbaa !43
  %1400 = trunc i64 %1372 to i32
  %1401 = sub i32 %1024, %1400
  %1402 = shl i32 %1401, 2
  %1403 = sext i32 %1402 to i64
  %1404 = getelementptr inbounds i16, ptr %59, i64 %1403
  %1405 = load i16, ptr %1404, align 2, !tbaa !73
  %1406 = zext i16 %1405 to i32
  %1407 = add nuw nsw i32 %1406, %1389
  %1408 = load i32, ptr %843, align 4, !tbaa !43
  %1409 = add nsw i32 %1407, %1408
  store i32 %1409, ptr %843, align 4, !tbaa !43
  %1410 = add nuw i64 %1382, %1368
  %1411 = trunc i64 %1410 to i32
  %1412 = shl i32 %1411, 2
  %1413 = sext i32 %1412 to i64
  %1414 = getelementptr inbounds i16, ptr %59, i64 %1413
  %1415 = load i16, ptr %1414, align 2, !tbaa !73
  %1416 = zext i16 %1415 to i32
  %1417 = add nuw nsw i32 %1416, %1389
  %1418 = load i32, ptr %858, align 8, !tbaa !43
  %1419 = add nsw i32 %1417, %1418
  store i32 %1419, ptr %858, align 8, !tbaa !43
  %1420 = add nsw i64 %1385, %1365
  %1421 = trunc i64 %1420 to i32
  %1422 = shl i32 %1421, 2
  %1423 = sext i32 %1422 to i64
  %1424 = getelementptr inbounds i16, ptr %59, i64 %1423
  %1425 = load i16, ptr %1424, align 2, !tbaa !73
  %1426 = zext i16 %1425 to i32
  %1427 = add nuw nsw i32 %1426, %1389
  %1428 = load i32, ptr %868, align 4, !tbaa !43
  %1429 = add nsw i32 %1427, %1428
  store i32 %1429, ptr %868, align 4, !tbaa !43
  %1430 = icmp slt i32 %1399, %1375
  %1431 = call i32 @llvm.smin.i32(i32 %1399, i32 %1375)
  %1432 = trunc i64 %1390 to i32
  %1433 = select i1 %1430, i32 %1432, i32 %1374
  %1434 = icmp slt i32 %1409, %1431
  %1435 = call i32 @llvm.smin.i32(i32 %1409, i32 %1431)
  %1436 = select i1 %1434, i32 %1401, i32 %1433
  %1437 = icmp slt i32 %1419, %1435
  %1438 = call i32 @llvm.smin.i32(i32 %1419, i32 %1435)
  %1439 = trunc i64 %1410 to i32
  %1440 = select i1 %1437, i32 %1439, i32 %1436
  %1441 = icmp slt i32 %1429, %1438
  %1442 = call i32 @llvm.smin.i32(i32 %1429, i32 %1438)
  %1443 = trunc i64 %1420 to i32
  %1444 = select i1 %1441, i32 %1443, i32 %1440
  %1445 = select i1 %1441, i1 true, i1 %1437
  %1446 = select i1 %1445, i1 true, i1 %1434
  %1447 = select i1 %1446, i1 true, i1 %1430
  %1448 = select i1 %1447, i32 %1025, i32 %1373
  %1449 = add nuw nsw i64 %1372, 4
  %1450 = icmp slt i64 %1449, %1370
  br i1 %1450, label %1371, label %1451, !llvm.loop !89

1451:                                             ; preds = %1371
  %1452 = trunc i64 %1449 to i32
  br label %1453

1453:                                             ; preds = %1451, %1352
  %1454 = phi i32 [ 3, %1352 ], [ %1452, %1451 ]
  %1455 = phi i32 [ %1353, %1352 ], [ %1442, %1451 ]
  %1456 = phi i32 [ %1354, %1352 ], [ %1444, %1451 ]
  %1457 = phi i32 [ %1355, %1352 ], [ %1448, %1451 ]
  %1458 = icmp slt i32 %1454, %1185
  br i1 %1458, label %1459, label %1533

1459:                                             ; preds = %1453
  %1460 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %1461 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %1462 = zext nneg i32 %1454 to i64
  %1463 = sext i32 %1024 to i64
  %1464 = sext i32 %34 to i64
  %1465 = sext i32 %20 to i64
  %1466 = sext i32 %1025 to i64
  %1467 = sext i32 %1024 to i64
  %1468 = sext i32 %30 to i64
  %1469 = sext i32 %20 to i64
  %1470 = sext i32 %1025 to i64
  %1471 = sext i32 %1185 to i64
  %1472 = getelementptr i8, ptr %26, i64 %1466
  %1473 = getelementptr i8, ptr %26, i64 %1470
  br label %1474

1474:                                             ; preds = %1459, %1527
  %1475 = phi i64 [ %1462, %1459 ], [ %1531, %1527 ]
  %1476 = phi i32 [ %1457, %1459 ], [ %1530, %1527 ]
  %1477 = phi i32 [ %1456, %1459 ], [ %1529, %1527 ]
  %1478 = phi i32 [ %1455, %1459 ], [ %1528, %1527 ]
  %1479 = add nsw i64 %1475, %1463
  %1480 = icmp sgt i64 %1479, %1464
  br i1 %1480, label %1501, label %1481

1481:                                             ; preds = %1474
  %1482 = load ptr, ptr %1460, align 8, !tbaa !70
  %1483 = mul nsw i64 %1479, %1465
  %1484 = getelementptr i8, ptr %1472, i64 %1483
  %1485 = call i32 %1482(ptr noundef %24, i32 noundef 16, ptr noundef %1484, i32 noundef %20) #6
  %1486 = load i16, ptr %1051, align 2, !tbaa !73
  %1487 = zext i16 %1486 to i32
  %1488 = trunc i64 %1479 to i32
  %1489 = shl i32 %1488, 2
  %1490 = sext i32 %1489 to i64
  %1491 = getelementptr inbounds i16, ptr %59, i64 %1490
  %1492 = load i16, ptr %1491, align 2, !tbaa !73
  %1493 = zext i16 %1492 to i32
  %1494 = add i32 %1485, %1487
  %1495 = add i32 %1494, %1493
  %1496 = icmp slt i32 %1495, %1478
  %1497 = call i32 @llvm.smin.i32(i32 %1495, i32 %1478)
  %1498 = trunc i64 %1479 to i32
  %1499 = select i1 %1496, i32 %1498, i32 %1477
  %1500 = select i1 %1496, i32 %1025, i32 %1476
  br label %1501

1501:                                             ; preds = %1481, %1474
  %1502 = phi i32 [ %1497, %1481 ], [ %1478, %1474 ]
  %1503 = phi i32 [ %1499, %1481 ], [ %1477, %1474 ]
  %1504 = phi i32 [ %1500, %1481 ], [ %1476, %1474 ]
  %1505 = sub nsw i64 %1467, %1475
  %1506 = icmp slt i64 %1505, %1468
  br i1 %1506, label %1527, label %1507

1507:                                             ; preds = %1501
  %1508 = load ptr, ptr %1461, align 8, !tbaa !70
  %1509 = mul nsw i64 %1505, %1469
  %1510 = getelementptr i8, ptr %1473, i64 %1509
  %1511 = call i32 %1508(ptr noundef %24, i32 noundef 16, ptr noundef %1510, i32 noundef %20) #6
  %1512 = load i16, ptr %1051, align 2, !tbaa !73
  %1513 = zext i16 %1512 to i32
  %1514 = trunc i64 %1505 to i32
  %1515 = shl i32 %1514, 2
  %1516 = sext i32 %1515 to i64
  %1517 = getelementptr inbounds i16, ptr %59, i64 %1516
  %1518 = load i16, ptr %1517, align 2, !tbaa !73
  %1519 = zext i16 %1518 to i32
  %1520 = add i32 %1511, %1513
  %1521 = add i32 %1520, %1519
  %1522 = icmp slt i32 %1521, %1502
  %1523 = call i32 @llvm.smin.i32(i32 %1521, i32 %1502)
  %1524 = trunc i64 %1505 to i32
  %1525 = select i1 %1522, i32 %1524, i32 %1503
  %1526 = select i1 %1522, i32 %1025, i32 %1504
  br label %1527

1527:                                             ; preds = %1501, %1507
  %1528 = phi i32 [ %1523, %1507 ], [ %1502, %1501 ]
  %1529 = phi i32 [ %1525, %1507 ], [ %1503, %1501 ]
  %1530 = phi i32 [ %1526, %1507 ], [ %1504, %1501 ]
  %1531 = add nuw nsw i64 %1475, 2
  %1532 = icmp slt i64 %1531, %1471
  br i1 %1532, label %1474, label %1533, !llvm.loop !90

1533:                                             ; preds = %1527, %1453
  %1534 = phi i32 [ %1455, %1453 ], [ %1528, %1527 ]
  %1535 = phi i32 [ %1456, %1453 ], [ %1529, %1527 ]
  %1536 = phi i32 [ %1457, %1453 ], [ %1530, %1527 ]
  %1537 = load ptr, ptr %813, align 8, !tbaa !70
  %1538 = getelementptr inbounds i8, ptr %1044, i64 %1042
  %1539 = getelementptr inbounds i8, ptr %1046, i64 %1042
  %1540 = getelementptr inbounds i8, ptr %1048, i64 %816
  %1541 = getelementptr inbounds i8, ptr %1116, i64 %816
  call void %1537(ptr noundef %24, ptr noundef nonnull %1538, ptr noundef nonnull %1539, ptr noundef nonnull %1540, ptr noundef nonnull %1541, i32 noundef %20, ptr noundef nonnull %7) #6
  %1542 = load i16, ptr %1066, align 2, !tbaa !73
  %1543 = zext i16 %1542 to i32
  %1544 = load i16, ptr %1057, align 2, !tbaa !73
  %1545 = zext i16 %1544 to i32
  %1546 = add nuw nsw i32 %1545, %1543
  %1547 = load i32, ptr %7, align 16, !tbaa !43
  %1548 = add nsw i32 %1546, %1547
  store i32 %1548, ptr %7, align 16, !tbaa !43
  %1549 = load i16, ptr %1081, align 2, !tbaa !73
  %1550 = zext i16 %1549 to i32
  %1551 = add nuw nsw i32 %1550, %1545
  %1552 = load i32, ptr %843, align 4, !tbaa !43
  %1553 = add nsw i32 %1551, %1552
  store i32 %1553, ptr %843, align 4, !tbaa !43
  %1554 = load i16, ptr %1090, align 2, !tbaa !73
  %1555 = zext i16 %1554 to i32
  %1556 = load i16, ptr %1072, align 2, !tbaa !73
  %1557 = zext i16 %1556 to i32
  %1558 = add nuw nsw i32 %1557, %1555
  %1559 = load i32, ptr %858, align 8, !tbaa !43
  %1560 = add nsw i32 %1558, %1559
  store i32 %1560, ptr %858, align 8, !tbaa !43
  %1561 = load i16, ptr %1125, align 2, !tbaa !73
  %1562 = zext i16 %1561 to i32
  %1563 = add nuw nsw i32 %1562, %1557
  %1564 = load i32, ptr %868, align 4, !tbaa !43
  %1565 = add nsw i32 %1563, %1564
  store i32 %1565, ptr %868, align 4, !tbaa !43
  %1566 = icmp slt i32 %1548, %1534
  %1567 = call i32 @llvm.smin.i32(i32 %1548, i32 %1534)
  %1568 = select i1 %1566, i32 %1063, i32 %1536
  %1569 = icmp slt i32 %1553, %1567
  %1570 = call i32 @llvm.smin.i32(i32 %1553, i32 %1567)
  %1571 = select i1 %1569, i1 true, i1 %1566
  %1572 = select i1 %1571, i32 %1054, i32 %1535
  %1573 = select i1 %1569, i32 %1078, i32 %1568
  %1574 = icmp slt i32 %1560, %1570
  %1575 = call i32 @llvm.smin.i32(i32 %1560, i32 %1570)
  %1576 = select i1 %1574, i32 %1087, i32 %1573
  %1577 = icmp slt i32 %1565, %1575
  %1578 = call i32 @llvm.smin.i32(i32 %1565, i32 %1575)
  %1579 = select i1 %1577, i1 true, i1 %1574
  %1580 = select i1 %1579, i32 %1069, i32 %1572
  %1581 = select i1 %1577, i32 %1122, i32 %1576
  %1582 = load ptr, ptr %813, align 8, !tbaa !70
  %1583 = getelementptr inbounds i8, ptr %1048, i64 %818
  %1584 = getelementptr inbounds i8, ptr %1116, i64 %818
  %1585 = getelementptr inbounds i8, ptr %1044, i64 %1120
  %1586 = getelementptr inbounds i8, ptr %1046, i64 %1120
  call void %1582(ptr noundef %24, ptr noundef nonnull %1583, ptr noundef nonnull %1584, ptr noundef nonnull %1585, ptr noundef nonnull %1586, i32 noundef %20, ptr noundef nonnull %7) #6
  %1587 = load i16, ptr %1090, align 2, !tbaa !73
  %1588 = zext i16 %1587 to i32
  %1589 = load i16, ptr %1138, align 2, !tbaa !73
  %1590 = zext i16 %1589 to i32
  %1591 = add nuw nsw i32 %1590, %1588
  %1592 = load i32, ptr %7, align 16, !tbaa !43
  %1593 = add nsw i32 %1591, %1592
  store i32 %1593, ptr %7, align 16, !tbaa !43
  %1594 = load i16, ptr %1125, align 2, !tbaa !73
  %1595 = zext i16 %1594 to i32
  %1596 = add nuw nsw i32 %1595, %1590
  %1597 = load i32, ptr %843, align 4, !tbaa !43
  %1598 = add nsw i32 %1596, %1597
  store i32 %1598, ptr %843, align 4, !tbaa !43
  %1599 = load i16, ptr %1066, align 2, !tbaa !73
  %1600 = zext i16 %1599 to i32
  %1601 = load i16, ptr %1154, align 2, !tbaa !73
  %1602 = zext i16 %1601 to i32
  %1603 = add nuw nsw i32 %1602, %1600
  %1604 = load i32, ptr %858, align 8, !tbaa !43
  %1605 = add nsw i32 %1603, %1604
  store i32 %1605, ptr %858, align 8, !tbaa !43
  %1606 = load i16, ptr %1081, align 2, !tbaa !73
  %1607 = zext i16 %1606 to i32
  %1608 = add nuw nsw i32 %1607, %1602
  %1609 = load i32, ptr %868, align 4, !tbaa !43
  %1610 = add nsw i32 %1608, %1609
  store i32 %1610, ptr %868, align 4, !tbaa !43
  %1611 = icmp slt i32 %1593, %1578
  %1612 = call i32 @llvm.smin.i32(i32 %1593, i32 %1578)
  %1613 = select i1 %1611, i32 %1087, i32 %1581
  %1614 = icmp slt i32 %1598, %1612
  %1615 = call i32 @llvm.smin.i32(i32 %1598, i32 %1612)
  %1616 = select i1 %1614, i1 true, i1 %1611
  %1617 = select i1 %1616, i32 %1135, i32 %1580
  %1618 = select i1 %1614, i32 %1122, i32 %1613
  %1619 = icmp slt i32 %1605, %1615
  %1620 = call i32 @llvm.smin.i32(i32 %1605, i32 %1615)
  %1621 = select i1 %1619, i32 %1063, i32 %1618
  %1622 = icmp slt i32 %1610, %1620
  %1623 = call i32 @llvm.smin.i32(i32 %1610, i32 %1620)
  %1624 = select i1 %1622, i1 true, i1 %1619
  %1625 = select i1 %1624, i32 %1151, i32 %1617
  %1626 = select i1 %1622, i32 %1078, i32 %1621
  %1627 = icmp eq i32 %1623, %940
  %1628 = add nsw i32 %1185, 2
  %1629 = select i1 %1627, i32 %1027, i32 %1628
  br i1 %1627, label %2494, label %1630

1630:                                             ; preds = %1181, %1533, %1028, %1022
  %1631 = phi i32 [ %1629, %1533 ], [ %1027, %1181 ], [ %1027, %1028 ], [ %1027, %1022 ]
  %1632 = phi i32 [ %1623, %1533 ], [ %1174, %1181 ], [ %1023, %1028 ], [ %1023, %1022 ]
  %1633 = phi i32 [ %1625, %1533 ], [ %1175, %1181 ], [ %1024, %1028 ], [ %1024, %1022 ]
  %1634 = phi i32 [ %1626, %1533 ], [ %1176, %1181 ], [ %1025, %1028 ], [ %1025, %1022 ]
  switch i32 %3, label %1652 [
    i32 0, label %1736
    i32 1, label %1635
  ]

1635:                                             ; preds = %1630
  %1636 = icmp eq i32 %13, 0
  br i1 %1636, label %1703, label %1637

1637:                                             ; preds = %1635
  %1638 = load i16, ptr %49, align 16, !tbaa !73
  %1639 = sext i16 %1638 to i32
  %1640 = load i16, ptr %2, align 2, !tbaa !73
  %1641 = sext i16 %1640 to i32
  %1642 = sub nsw i32 %1639, %1641
  %1643 = call i32 @llvm.abs.i32(i32 %1642, i1 true)
  %1644 = load i16, ptr %55, align 2, !tbaa !73
  %1645 = sext i16 %1644 to i32
  %1646 = getelementptr inbounds [2 x i16], ptr %2, i64 0, i64 1
  %1647 = load i16, ptr %1646, align 2, !tbaa !73
  %1648 = sext i16 %1647 to i32
  %1649 = sub nsw i32 %1645, %1648
  %1650 = call i32 @llvm.abs.i32(i32 %1649, i1 true)
  %1651 = add nuw nsw i32 %1650, %1643
  br label %1703

1652:                                             ; preds = %1630
  %1653 = add nsw i32 %3, -1
  %1654 = icmp eq i32 %13, 0
  br i1 %1654, label %1670, label %1655

1655:                                             ; preds = %1652
  %1656 = load i16, ptr %49, align 16, !tbaa !73
  %1657 = sext i16 %1656 to i32
  %1658 = load i16, ptr %2, align 2, !tbaa !73
  %1659 = sext i16 %1658 to i32
  %1660 = sub nsw i32 %1657, %1659
  %1661 = call i32 @llvm.abs.i32(i32 %1660, i1 true)
  %1662 = load i16, ptr %55, align 2, !tbaa !73
  %1663 = sext i16 %1662 to i32
  %1664 = getelementptr inbounds [2 x i16], ptr %2, i64 0, i64 1
  %1665 = load i16, ptr %1664, align 2, !tbaa !73
  %1666 = sext i16 %1665 to i32
  %1667 = sub nsw i32 %1663, %1666
  %1668 = call i32 @llvm.abs.i32(i32 %1667, i1 true)
  %1669 = add nuw nsw i32 %1668, %1661
  br label %1670

1670:                                             ; preds = %1655, %1652
  %1671 = phi i32 [ %3, %1655 ], [ %1653, %1652 ]
  %1672 = phi i32 [ %1669, %1655 ], [ 0, %1652 ]
  %1673 = icmp sgt i32 %3, 1
  br i1 %1673, label %1674, label %1700

1674:                                             ; preds = %1670
  %1675 = add nsw i32 %3, -2
  %1676 = sext i32 %1675 to i64
  br label %1677

1677:                                             ; preds = %1674, %1677
  %1678 = phi i64 [ %1683, %1677 ], [ 0, %1674 ]
  %1679 = phi i32 [ %1698, %1677 ], [ 0, %1674 ]
  %1680 = getelementptr inbounds [2 x i16], ptr %2, i64 %1678
  %1681 = load i16, ptr %1680, align 2, !tbaa !73
  %1682 = sext i16 %1681 to i32
  %1683 = add nuw nsw i64 %1678, 1
  %1684 = getelementptr inbounds [2 x i16], ptr %2, i64 %1683
  %1685 = load i16, ptr %1684, align 2, !tbaa !73
  %1686 = sext i16 %1685 to i32
  %1687 = sub nsw i32 %1682, %1686
  %1688 = call i32 @llvm.abs.i32(i32 %1687, i1 true)
  %1689 = getelementptr inbounds [2 x i16], ptr %2, i64 %1678, i64 1
  %1690 = load i16, ptr %1689, align 2, !tbaa !73
  %1691 = sext i16 %1690 to i32
  %1692 = getelementptr inbounds [2 x i16], ptr %2, i64 %1683, i64 1
  %1693 = load i16, ptr %1692, align 2, !tbaa !73
  %1694 = sext i16 %1693 to i32
  %1695 = sub nsw i32 %1691, %1694
  %1696 = call i32 @llvm.abs.i32(i32 %1695, i1 true)
  %1697 = add nuw i32 %1688, %1679
  %1698 = add nuw i32 %1697, %1696
  %1699 = icmp eq i64 %1678, %1676
  br i1 %1699, label %1700, label %1677, !llvm.loop !91

1700:                                             ; preds = %1677, %1670
  %1701 = phi i32 [ 0, %1670 ], [ %1698, %1677 ]
  %1702 = add nsw i32 %1701, %1672
  br label %1703

1703:                                             ; preds = %1635, %1637, %1700
  %1704 = phi i32 [ 1, %1637 ], [ %1671, %1700 ], [ 1, %1635 ]
  %1705 = phi i32 [ %1651, %1637 ], [ %1702, %1700 ], [ 25, %1635 ]
  %1706 = getelementptr inbounds [7 x i8], ptr @x264_me_search_ref.x264_pixel_size_shift, i64 0, i64 %14
  %1707 = load i8, ptr %1706, align 1, !tbaa !78
  %1708 = zext i8 %1707 to i32
  %1709 = lshr i32 1000, %1708
  %1710 = icmp slt i32 %1632, %1709
  br i1 %1710, label %1718, label %1711

1711:                                             ; preds = %1703
  %1712 = lshr i32 2000, %1708
  %1713 = icmp slt i32 %1632, %1712
  br i1 %1713, label %1718, label %1714

1714:                                             ; preds = %1711
  %1715 = lshr i32 4000, %1708
  %1716 = icmp slt i32 %1632, %1715
  %1717 = select i1 %1716, i64 2, i64 3
  br label %1718

1718:                                             ; preds = %1714, %1711, %1703
  %1719 = phi i64 [ 0, %1703 ], [ %1717, %1714 ], [ 1, %1711 ]
  %1720 = mul nsw i32 %1704, 10
  %1721 = icmp slt i32 %1705, %1720
  br i1 %1721, label %1729, label %1722

1722:                                             ; preds = %1718
  %1723 = mul nsw i32 %1704, 20
  %1724 = icmp slt i32 %1705, %1723
  br i1 %1724, label %1729, label %1725

1725:                                             ; preds = %1722
  %1726 = mul nsw i32 %1704, 40
  %1727 = icmp slt i32 %1705, %1726
  %1728 = select i1 %1727, i64 2, i64 3
  br label %1729

1729:                                             ; preds = %1725, %1722, %1718
  %1730 = phi i64 [ 0, %1718 ], [ %1728, %1725 ], [ 1, %1722 ]
  %1731 = getelementptr inbounds [4 x [4 x i8]], ptr @x264_me_search_ref.range_mul, i64 0, i64 %1730, i64 %1719
  %1732 = load i8, ptr %1731, align 1, !tbaa !78
  %1733 = zext i8 %1732 to i32
  %1734 = mul nsw i32 %22, %1733
  %1735 = ashr i32 %1734, 2
  br label %1736

1736:                                             ; preds = %1630, %1729
  %1737 = phi i32 [ %1735, %1729 ], [ %22, %1630 ]
  %1738 = sub nsw i32 %32, %1025
  %1739 = sub nsw i32 %1025, %28
  %1740 = call i32 @llvm.smin.i32(i32 %1738, i32 %1739)
  %1741 = icmp sgt i32 %1737, %1740
  br i1 %1741, label %1836, label %1742

1742:                                             ; preds = %1736
  %1743 = add nsw i32 %1737, -2
  %1744 = icmp slt i32 %1631, %1743
  br i1 %1744, label %1745, label %1836

1745:                                             ; preds = %1742
  %1746 = sext i32 %1025 to i64
  %1747 = getelementptr inbounds i8, ptr %26, i64 %1746
  %1748 = mul nsw i32 %1024, %20
  %1749 = sext i32 %1748 to i64
  %1750 = getelementptr inbounds i8, ptr %1747, i64 %1749
  %1751 = shl i32 %1024, 2
  %1752 = sext i32 %1751 to i64
  %1753 = getelementptr inbounds i16, ptr %59, i64 %1752
  %1754 = sext i32 %1631 to i64
  %1755 = zext i32 %1025 to i64
  %1756 = zext i32 %1025 to i64
  %1757 = sext i32 %1743 to i64
  br label %1758

1758:                                             ; preds = %1745, %1758
  %1759 = phi i64 [ %1754, %1745 ], [ %1832, %1758 ]
  %1760 = phi i32 [ %1634, %1745 ], [ %1831, %1758 ]
  %1761 = phi i32 [ %1633, %1745 ], [ %1830, %1758 ]
  %1762 = phi i32 [ %1632, %1745 ], [ %1826, %1758 ]
  %1763 = load ptr, ptr %813, align 8, !tbaa !70
  %1764 = getelementptr inbounds i8, ptr %1750, i64 %1759
  %1765 = sub nsw i64 0, %1759
  %1766 = getelementptr inbounds i8, ptr %1750, i64 %1765
  %1767 = add nsw i64 %1759, 2
  %1768 = getelementptr inbounds i8, ptr %1750, i64 %1767
  %1769 = trunc i64 %1759 to i32
  %1770 = sub i32 -2, %1769
  %1771 = sext i32 %1770 to i64
  %1772 = getelementptr inbounds i8, ptr %1750, i64 %1771
  call void %1763(ptr noundef %24, ptr noundef %1764, ptr noundef %1766, ptr noundef %1768, ptr noundef %1772, i32 noundef %20, ptr noundef nonnull %7) #6
  %1773 = add i64 %1759, %1756
  %1774 = trunc i64 %1773 to i32
  %1775 = shl i32 %1774, 2
  %1776 = sext i32 %1775 to i64
  %1777 = getelementptr inbounds i16, ptr %54, i64 %1776
  %1778 = load i16, ptr %1777, align 2, !tbaa !73
  %1779 = zext i16 %1778 to i32
  %1780 = load i16, ptr %1753, align 2, !tbaa !73
  %1781 = zext i16 %1780 to i32
  %1782 = add nuw nsw i32 %1781, %1779
  %1783 = load i32, ptr %7, align 16, !tbaa !43
  %1784 = add nsw i32 %1782, %1783
  store i32 %1784, ptr %7, align 16, !tbaa !43
  %1785 = trunc i64 %1759 to i32
  %1786 = sub i32 %1025, %1785
  %1787 = shl i32 %1786, 2
  %1788 = sext i32 %1787 to i64
  %1789 = getelementptr inbounds i16, ptr %54, i64 %1788
  %1790 = load i16, ptr %1789, align 2, !tbaa !73
  %1791 = zext i16 %1790 to i32
  %1792 = add nuw nsw i32 %1791, %1781
  %1793 = load i32, ptr %843, align 4, !tbaa !43
  %1794 = add nsw i32 %1792, %1793
  store i32 %1794, ptr %843, align 4, !tbaa !43
  %1795 = add i64 %1767, %1755
  %1796 = trunc i64 %1795 to i32
  %1797 = shl i32 %1796, 2
  %1798 = sext i32 %1797 to i64
  %1799 = getelementptr inbounds i16, ptr %54, i64 %1798
  %1800 = load i16, ptr %1799, align 2, !tbaa !73
  %1801 = zext i16 %1800 to i32
  %1802 = add nuw nsw i32 %1801, %1781
  %1803 = load i32, ptr %858, align 8, !tbaa !43
  %1804 = add nsw i32 %1802, %1803
  store i32 %1804, ptr %858, align 8, !tbaa !43
  %1805 = add nsw i32 %1770, %1025
  %1806 = shl i32 %1805, 2
  %1807 = sext i32 %1806 to i64
  %1808 = getelementptr inbounds i16, ptr %54, i64 %1807
  %1809 = load i16, ptr %1808, align 2, !tbaa !73
  %1810 = zext i16 %1809 to i32
  %1811 = add nuw nsw i32 %1810, %1781
  %1812 = load i32, ptr %868, align 4, !tbaa !43
  %1813 = add nsw i32 %1811, %1812
  store i32 %1813, ptr %868, align 4, !tbaa !43
  %1814 = icmp slt i32 %1784, %1762
  %1815 = call i32 @llvm.smin.i32(i32 %1784, i32 %1762)
  %1816 = trunc i64 %1773 to i32
  %1817 = select i1 %1814, i32 %1816, i32 %1760
  %1818 = icmp slt i32 %1794, %1815
  %1819 = call i32 @llvm.smin.i32(i32 %1794, i32 %1815)
  %1820 = select i1 %1818, i32 %1786, i32 %1817
  %1821 = icmp slt i32 %1804, %1819
  %1822 = call i32 @llvm.smin.i32(i32 %1804, i32 %1819)
  %1823 = trunc i64 %1795 to i32
  %1824 = select i1 %1821, i32 %1823, i32 %1820
  %1825 = icmp slt i32 %1813, %1822
  %1826 = call i32 @llvm.smin.i32(i32 %1813, i32 %1822)
  %1827 = select i1 %1825, i1 true, i1 %1821
  %1828 = select i1 %1827, i1 true, i1 %1818
  %1829 = select i1 %1828, i1 true, i1 %1814
  %1830 = select i1 %1829, i32 %1024, i32 %1761
  %1831 = select i1 %1825, i32 %1805, i32 %1824
  %1832 = add nsw i64 %1759, 4
  %1833 = icmp slt i64 %1832, %1757
  br i1 %1833, label %1758, label %1834, !llvm.loop !92

1834:                                             ; preds = %1758
  %1835 = trunc i64 %1832 to i32
  br label %1836

1836:                                             ; preds = %1834, %1742, %1736
  %1837 = phi i32 [ %1631, %1736 ], [ %1631, %1742 ], [ %1835, %1834 ]
  %1838 = phi i32 [ %1632, %1736 ], [ %1632, %1742 ], [ %1826, %1834 ]
  %1839 = phi i32 [ %1633, %1736 ], [ %1633, %1742 ], [ %1830, %1834 ]
  %1840 = phi i32 [ %1634, %1736 ], [ %1634, %1742 ], [ %1831, %1834 ]
  %1841 = icmp slt i32 %1837, %1737
  br i1 %1841, label %1842, label %1920

1842:                                             ; preds = %1836
  %1843 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %1844 = mul nsw i32 %1024, %20
  %1845 = shl i32 %1024, 2
  %1846 = sext i32 %1845 to i64
  %1847 = getelementptr inbounds i16, ptr %59, i64 %1846
  %1848 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %1849 = mul nsw i32 %1024, %20
  %1850 = shl i32 %1024, 2
  %1851 = sext i32 %1850 to i64
  %1852 = getelementptr inbounds i16, ptr %59, i64 %1851
  %1853 = sext i32 %1837 to i64
  %1854 = sext i32 %1025 to i64
  %1855 = sext i32 %32 to i64
  %1856 = sext i32 %1844 to i64
  %1857 = sext i32 %1025 to i64
  %1858 = sext i32 %28 to i64
  %1859 = sext i32 %1849 to i64
  %1860 = sext i32 %1737 to i64
  %1861 = getelementptr i8, ptr %26, i64 %1856
  %1862 = getelementptr i8, ptr %26, i64 %1859
  br label %1863

1863:                                             ; preds = %1842, %1914
  %1864 = phi i64 [ %1853, %1842 ], [ %1918, %1914 ]
  %1865 = phi i32 [ %1840, %1842 ], [ %1917, %1914 ]
  %1866 = phi i32 [ %1839, %1842 ], [ %1916, %1914 ]
  %1867 = phi i32 [ %1838, %1842 ], [ %1915, %1914 ]
  %1868 = add nsw i64 %1864, %1854
  %1869 = icmp sgt i64 %1868, %1855
  br i1 %1869, label %1889, label %1870

1870:                                             ; preds = %1863
  %1871 = load ptr, ptr %1843, align 8, !tbaa !70
  %1872 = getelementptr i8, ptr %1861, i64 %1868
  %1873 = call i32 %1871(ptr noundef %24, i32 noundef 16, ptr noundef %1872, i32 noundef %20) #6
  %1874 = trunc i64 %1868 to i32
  %1875 = shl i32 %1874, 2
  %1876 = sext i32 %1875 to i64
  %1877 = getelementptr inbounds i16, ptr %54, i64 %1876
  %1878 = load i16, ptr %1877, align 2, !tbaa !73
  %1879 = zext i16 %1878 to i32
  %1880 = load i16, ptr %1847, align 2, !tbaa !73
  %1881 = zext i16 %1880 to i32
  %1882 = add i32 %1873, %1879
  %1883 = add i32 %1882, %1881
  %1884 = icmp slt i32 %1883, %1867
  %1885 = call i32 @llvm.smin.i32(i32 %1883, i32 %1867)
  %1886 = select i1 %1884, i32 %1024, i32 %1866
  %1887 = trunc i64 %1868 to i32
  %1888 = select i1 %1884, i32 %1887, i32 %1865
  br label %1889

1889:                                             ; preds = %1870, %1863
  %1890 = phi i32 [ %1885, %1870 ], [ %1867, %1863 ]
  %1891 = phi i32 [ %1886, %1870 ], [ %1866, %1863 ]
  %1892 = phi i32 [ %1888, %1870 ], [ %1865, %1863 ]
  %1893 = sub nsw i64 %1857, %1864
  %1894 = icmp slt i64 %1893, %1858
  br i1 %1894, label %1914, label %1895

1895:                                             ; preds = %1889
  %1896 = load ptr, ptr %1848, align 8, !tbaa !70
  %1897 = getelementptr i8, ptr %1862, i64 %1893
  %1898 = call i32 %1896(ptr noundef %24, i32 noundef 16, ptr noundef %1897, i32 noundef %20) #6
  %1899 = trunc i64 %1893 to i32
  %1900 = shl i32 %1899, 2
  %1901 = sext i32 %1900 to i64
  %1902 = getelementptr inbounds i16, ptr %54, i64 %1901
  %1903 = load i16, ptr %1902, align 2, !tbaa !73
  %1904 = zext i16 %1903 to i32
  %1905 = load i16, ptr %1852, align 2, !tbaa !73
  %1906 = zext i16 %1905 to i32
  %1907 = add i32 %1898, %1904
  %1908 = add i32 %1907, %1906
  %1909 = icmp slt i32 %1908, %1890
  %1910 = call i32 @llvm.smin.i32(i32 %1908, i32 %1890)
  %1911 = select i1 %1909, i32 %1024, i32 %1891
  %1912 = trunc i64 %1893 to i32
  %1913 = select i1 %1909, i32 %1912, i32 %1892
  br label %1914

1914:                                             ; preds = %1889, %1895
  %1915 = phi i32 [ %1910, %1895 ], [ %1890, %1889 ]
  %1916 = phi i32 [ %1911, %1895 ], [ %1891, %1889 ]
  %1917 = phi i32 [ %1913, %1895 ], [ %1892, %1889 ]
  %1918 = add nsw i64 %1864, 2
  %1919 = icmp slt i64 %1918, %1860
  br i1 %1919, label %1863, label %1920, !llvm.loop !93

1920:                                             ; preds = %1914, %1836
  %1921 = phi i32 [ %1838, %1836 ], [ %1915, %1914 ]
  %1922 = phi i32 [ %1839, %1836 ], [ %1916, %1914 ]
  %1923 = phi i32 [ %1840, %1836 ], [ %1917, %1914 ]
  %1924 = ashr i32 %1737, 1
  %1925 = sub nsw i32 %34, %1024
  %1926 = sub nsw i32 %1024, %30
  %1927 = call i32 @llvm.smin.i32(i32 %1925, i32 %1926)
  %1928 = icmp sgt i32 %1924, %1927
  br i1 %1928, label %2029, label %1929

1929:                                             ; preds = %1920
  %1930 = add nsw i32 %1924, -2
  %1931 = icmp slt i32 %1631, %1930
  br i1 %1931, label %1932, label %2029

1932:                                             ; preds = %1929
  %1933 = sext i32 %1025 to i64
  %1934 = getelementptr inbounds i8, ptr %26, i64 %1933
  %1935 = mul nsw i32 %1024, %20
  %1936 = sext i32 %1935 to i64
  %1937 = getelementptr inbounds i8, ptr %1934, i64 %1936
  %1938 = shl i32 %1025, 2
  %1939 = sext i32 %1938 to i64
  %1940 = getelementptr inbounds i16, ptr %54, i64 %1939
  %1941 = sext i32 %1631 to i64
  %1942 = sext i32 %20 to i64
  %1943 = sext i32 %20 to i64
  %1944 = zext i32 %1024 to i64
  %1945 = zext i32 %1024 to i64
  %1946 = sext i32 %1930 to i64
  br label %1947

1947:                                             ; preds = %1932, %1947
  %1948 = phi i64 [ %1941, %1932 ], [ %2025, %1947 ]
  %1949 = phi i32 [ %1923, %1932 ], [ %2024, %1947 ]
  %1950 = phi i32 [ %1922, %1932 ], [ %2020, %1947 ]
  %1951 = phi i32 [ %1921, %1932 ], [ %2019, %1947 ]
  %1952 = load ptr, ptr %813, align 8, !tbaa !70
  %1953 = mul nsw i64 %1948, %1942
  %1954 = getelementptr inbounds i8, ptr %1937, i64 %1953
  %1955 = mul i64 %1953, -4294967296
  %1956 = ashr exact i64 %1955, 32
  %1957 = getelementptr inbounds i8, ptr %1937, i64 %1956
  %1958 = add nsw i64 %1948, 2
  %1959 = mul nsw i64 %1958, %1943
  %1960 = getelementptr inbounds i8, ptr %1937, i64 %1959
  %1961 = trunc i64 %1948 to i32
  %1962 = sub i32 -2, %1961
  %1963 = mul nsw i32 %1962, %20
  %1964 = sext i32 %1963 to i64
  %1965 = getelementptr inbounds i8, ptr %1937, i64 %1964
  call void %1952(ptr noundef %24, ptr noundef %1954, ptr noundef %1957, ptr noundef %1960, ptr noundef %1965, i32 noundef %20, ptr noundef nonnull %7) #6
  %1966 = load i16, ptr %1940, align 2, !tbaa !73
  %1967 = zext i16 %1966 to i32
  %1968 = add i64 %1948, %1945
  %1969 = trunc i64 %1968 to i32
  %1970 = shl i32 %1969, 2
  %1971 = sext i32 %1970 to i64
  %1972 = getelementptr inbounds i16, ptr %59, i64 %1971
  %1973 = load i16, ptr %1972, align 2, !tbaa !73
  %1974 = zext i16 %1973 to i32
  %1975 = add nuw nsw i32 %1974, %1967
  %1976 = load i32, ptr %7, align 16, !tbaa !43
  %1977 = add nsw i32 %1975, %1976
  store i32 %1977, ptr %7, align 16, !tbaa !43
  %1978 = trunc i64 %1948 to i32
  %1979 = sub i32 %1024, %1978
  %1980 = shl i32 %1979, 2
  %1981 = sext i32 %1980 to i64
  %1982 = getelementptr inbounds i16, ptr %59, i64 %1981
  %1983 = load i16, ptr %1982, align 2, !tbaa !73
  %1984 = zext i16 %1983 to i32
  %1985 = add nuw nsw i32 %1984, %1967
  %1986 = load i32, ptr %843, align 4, !tbaa !43
  %1987 = add nsw i32 %1985, %1986
  store i32 %1987, ptr %843, align 4, !tbaa !43
  %1988 = add i64 %1958, %1944
  %1989 = trunc i64 %1988 to i32
  %1990 = shl i32 %1989, 2
  %1991 = sext i32 %1990 to i64
  %1992 = getelementptr inbounds i16, ptr %59, i64 %1991
  %1993 = load i16, ptr %1992, align 2, !tbaa !73
  %1994 = zext i16 %1993 to i32
  %1995 = add nuw nsw i32 %1994, %1967
  %1996 = load i32, ptr %858, align 8, !tbaa !43
  %1997 = add nsw i32 %1995, %1996
  store i32 %1997, ptr %858, align 8, !tbaa !43
  %1998 = add nsw i32 %1962, %1024
  %1999 = shl i32 %1998, 2
  %2000 = sext i32 %1999 to i64
  %2001 = getelementptr inbounds i16, ptr %59, i64 %2000
  %2002 = load i16, ptr %2001, align 2, !tbaa !73
  %2003 = zext i16 %2002 to i32
  %2004 = add nuw nsw i32 %2003, %1967
  %2005 = load i32, ptr %868, align 4, !tbaa !43
  %2006 = add nsw i32 %2004, %2005
  store i32 %2006, ptr %868, align 4, !tbaa !43
  %2007 = icmp slt i32 %1977, %1951
  %2008 = call i32 @llvm.smin.i32(i32 %1977, i32 %1951)
  %2009 = trunc i64 %1968 to i32
  %2010 = select i1 %2007, i32 %2009, i32 %1950
  %2011 = icmp slt i32 %1987, %2008
  %2012 = call i32 @llvm.smin.i32(i32 %1987, i32 %2008)
  %2013 = select i1 %2011, i32 %1979, i32 %2010
  %2014 = icmp slt i32 %1997, %2012
  %2015 = call i32 @llvm.smin.i32(i32 %1997, i32 %2012)
  %2016 = trunc i64 %1988 to i32
  %2017 = select i1 %2014, i32 %2016, i32 %2013
  %2018 = icmp slt i32 %2006, %2015
  %2019 = call i32 @llvm.smin.i32(i32 %2006, i32 %2015)
  %2020 = select i1 %2018, i32 %1998, i32 %2017
  %2021 = select i1 %2018, i1 true, i1 %2014
  %2022 = select i1 %2021, i1 true, i1 %2011
  %2023 = select i1 %2022, i1 true, i1 %2007
  %2024 = select i1 %2023, i32 %1025, i32 %1949
  %2025 = add nsw i64 %1948, 4
  %2026 = icmp slt i64 %2025, %1946
  br i1 %2026, label %1947, label %2027, !llvm.loop !94

2027:                                             ; preds = %1947
  %2028 = trunc i64 %2025 to i32
  br label %2029

2029:                                             ; preds = %2027, %1929, %1920
  %2030 = phi i32 [ %1631, %1920 ], [ %1631, %1929 ], [ %2028, %2027 ]
  %2031 = phi i32 [ %1921, %1920 ], [ %1921, %1929 ], [ %2019, %2027 ]
  %2032 = phi i32 [ %1922, %1920 ], [ %1922, %1929 ], [ %2020, %2027 ]
  %2033 = phi i32 [ %1923, %1920 ], [ %1923, %1929 ], [ %2024, %2027 ]
  %2034 = icmp slt i32 %2030, %1924
  br i1 %2034, label %2035, label %2115

2035:                                             ; preds = %2029
  %2036 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %2037 = shl i32 %1025, 2
  %2038 = sext i32 %2037 to i64
  %2039 = getelementptr inbounds i16, ptr %54, i64 %2038
  %2040 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %2041 = shl i32 %1025, 2
  %2042 = sext i32 %2041 to i64
  %2043 = getelementptr inbounds i16, ptr %54, i64 %2042
  %2044 = sext i32 %2030 to i64
  %2045 = sext i32 %1024 to i64
  %2046 = sext i32 %34 to i64
  %2047 = sext i32 %20 to i64
  %2048 = sext i32 %1025 to i64
  %2049 = sext i32 %1024 to i64
  %2050 = sext i32 %30 to i64
  %2051 = sext i32 %20 to i64
  %2052 = sext i32 %1025 to i64
  %2053 = sext i32 %1924 to i64
  %2054 = getelementptr i8, ptr %26, i64 %2048
  %2055 = getelementptr i8, ptr %26, i64 %2052
  br label %2056

2056:                                             ; preds = %2035, %2109
  %2057 = phi i64 [ %2044, %2035 ], [ %2113, %2109 ]
  %2058 = phi i32 [ %2033, %2035 ], [ %2112, %2109 ]
  %2059 = phi i32 [ %2032, %2035 ], [ %2111, %2109 ]
  %2060 = phi i32 [ %2031, %2035 ], [ %2110, %2109 ]
  %2061 = add nsw i64 %2057, %2045
  %2062 = icmp sgt i64 %2061, %2046
  br i1 %2062, label %2083, label %2063

2063:                                             ; preds = %2056
  %2064 = load ptr, ptr %2036, align 8, !tbaa !70
  %2065 = mul nsw i64 %2061, %2047
  %2066 = getelementptr i8, ptr %2054, i64 %2065
  %2067 = call i32 %2064(ptr noundef %24, i32 noundef 16, ptr noundef %2066, i32 noundef %20) #6
  %2068 = load i16, ptr %2039, align 2, !tbaa !73
  %2069 = zext i16 %2068 to i32
  %2070 = trunc i64 %2061 to i32
  %2071 = shl i32 %2070, 2
  %2072 = sext i32 %2071 to i64
  %2073 = getelementptr inbounds i16, ptr %59, i64 %2072
  %2074 = load i16, ptr %2073, align 2, !tbaa !73
  %2075 = zext i16 %2074 to i32
  %2076 = add i32 %2067, %2069
  %2077 = add i32 %2076, %2075
  %2078 = icmp slt i32 %2077, %2060
  %2079 = call i32 @llvm.smin.i32(i32 %2077, i32 %2060)
  %2080 = trunc i64 %2061 to i32
  %2081 = select i1 %2078, i32 %2080, i32 %2059
  %2082 = select i1 %2078, i32 %1025, i32 %2058
  br label %2083

2083:                                             ; preds = %2063, %2056
  %2084 = phi i32 [ %2079, %2063 ], [ %2060, %2056 ]
  %2085 = phi i32 [ %2081, %2063 ], [ %2059, %2056 ]
  %2086 = phi i32 [ %2082, %2063 ], [ %2058, %2056 ]
  %2087 = sub nsw i64 %2049, %2057
  %2088 = icmp slt i64 %2087, %2050
  br i1 %2088, label %2109, label %2089

2089:                                             ; preds = %2083
  %2090 = load ptr, ptr %2040, align 8, !tbaa !70
  %2091 = mul nsw i64 %2087, %2051
  %2092 = getelementptr i8, ptr %2055, i64 %2091
  %2093 = call i32 %2090(ptr noundef %24, i32 noundef 16, ptr noundef %2092, i32 noundef %20) #6
  %2094 = load i16, ptr %2043, align 2, !tbaa !73
  %2095 = zext i16 %2094 to i32
  %2096 = trunc i64 %2087 to i32
  %2097 = shl i32 %2096, 2
  %2098 = sext i32 %2097 to i64
  %2099 = getelementptr inbounds i16, ptr %59, i64 %2098
  %2100 = load i16, ptr %2099, align 2, !tbaa !73
  %2101 = zext i16 %2100 to i32
  %2102 = add i32 %2093, %2095
  %2103 = add i32 %2102, %2101
  %2104 = icmp slt i32 %2103, %2084
  %2105 = call i32 @llvm.smin.i32(i32 %2103, i32 %2084)
  %2106 = trunc i64 %2087 to i32
  %2107 = select i1 %2104, i32 %2106, i32 %2085
  %2108 = select i1 %2104, i32 %1025, i32 %2086
  br label %2109

2109:                                             ; preds = %2083, %2089
  %2110 = phi i32 [ %2105, %2089 ], [ %2084, %2083 ]
  %2111 = phi i32 [ %2107, %2089 ], [ %2085, %2083 ]
  %2112 = phi i32 [ %2108, %2089 ], [ %2086, %2083 ]
  %2113 = add nsw i64 %2057, 2
  %2114 = icmp slt i64 %2113, %2053
  br i1 %2114, label %2056, label %2115, !llvm.loop !95

2115:                                             ; preds = %2109, %2029
  %2116 = phi i32 [ %2031, %2029 ], [ %2110, %2109 ]
  %2117 = phi i32 [ %2032, %2029 ], [ %2111, %2109 ]
  %2118 = phi i32 [ %2033, %2029 ], [ %2112, %2109 ]
  %2119 = sext i32 %1025 to i64
  %2120 = getelementptr inbounds i8, ptr %26, i64 %2119
  %2121 = mul nsw i32 %1024, %20
  %2122 = sext i32 %2121 to i64
  %2123 = getelementptr inbounds i8, ptr %2120, i64 %2122
  %2124 = load ptr, ptr %813, align 8, !tbaa !70
  %2125 = getelementptr inbounds i8, ptr %2123, i64 -2
  %2126 = mul nsw i32 %20, -2
  %2127 = sext i32 %2126 to i64
  %2128 = getelementptr inbounds i8, ptr %2125, i64 %2127
  %2129 = shl nsw i32 %20, 1
  %2130 = sext i32 %2129 to i64
  %2131 = getelementptr inbounds i8, ptr %2125, i64 %2130
  %2132 = getelementptr inbounds i8, ptr %2123, i64 2
  %2133 = getelementptr inbounds i8, ptr %2132, i64 %2127
  %2134 = getelementptr inbounds i8, ptr %2132, i64 %2130
  call void %2124(ptr noundef %24, ptr noundef nonnull %2128, ptr noundef nonnull %2131, ptr noundef nonnull %2133, ptr noundef nonnull %2134, i32 noundef %20, ptr noundef nonnull %7) #6
  %2135 = add nsw i32 %1025, -2
  %2136 = shl i32 %2135, 2
  %2137 = sext i32 %2136 to i64
  %2138 = getelementptr inbounds i16, ptr %54, i64 %2137
  %2139 = load i16, ptr %2138, align 2, !tbaa !73
  %2140 = zext i16 %2139 to i32
  %2141 = add nsw i32 %1024, -2
  %2142 = shl i32 %2141, 2
  %2143 = sext i32 %2142 to i64
  %2144 = getelementptr inbounds i16, ptr %59, i64 %2143
  %2145 = load i16, ptr %2144, align 2, !tbaa !73
  %2146 = zext i16 %2145 to i32
  %2147 = add nuw nsw i32 %2146, %2140
  %2148 = load i32, ptr %7, align 16, !tbaa !43
  %2149 = add nsw i32 %2147, %2148
  store i32 %2149, ptr %7, align 16, !tbaa !43
  %2150 = add nsw i32 %1024, 2
  %2151 = shl i32 %2150, 2
  %2152 = sext i32 %2151 to i64
  %2153 = getelementptr inbounds i16, ptr %59, i64 %2152
  %2154 = load i16, ptr %2153, align 2, !tbaa !73
  %2155 = zext i16 %2154 to i32
  %2156 = add nuw nsw i32 %2155, %2140
  %2157 = load i32, ptr %843, align 4, !tbaa !43
  %2158 = add nsw i32 %2156, %2157
  store i32 %2158, ptr %843, align 4, !tbaa !43
  %2159 = add nsw i32 %1025, 2
  %2160 = shl i32 %2159, 2
  %2161 = sext i32 %2160 to i64
  %2162 = getelementptr inbounds i16, ptr %54, i64 %2161
  %2163 = load i16, ptr %2162, align 2, !tbaa !73
  %2164 = zext i16 %2163 to i32
  %2165 = add nuw nsw i32 %2164, %2146
  %2166 = load i32, ptr %858, align 8, !tbaa !43
  %2167 = add nsw i32 %2165, %2166
  store i32 %2167, ptr %858, align 8, !tbaa !43
  %2168 = add nuw nsw i32 %2164, %2155
  %2169 = load i32, ptr %868, align 4, !tbaa !43
  %2170 = add nsw i32 %2168, %2169
  store i32 %2170, ptr %868, align 4, !tbaa !43
  %2171 = icmp slt i32 %2149, %2116
  %2172 = call i32 @llvm.smin.i32(i32 %2149, i32 %2116)
  %2173 = select i1 %2171, i32 %2141, i32 %2117
  %2174 = icmp slt i32 %2158, %2172
  %2175 = call i32 @llvm.smin.i32(i32 %2158, i32 %2172)
  %2176 = select i1 %2174, i32 %2150, i32 %2173
  %2177 = select i1 %2174, i1 true, i1 %2171
  %2178 = select i1 %2177, i32 %2135, i32 %2118
  %2179 = icmp slt i32 %2167, %2175
  %2180 = call i32 @llvm.smin.i32(i32 %2167, i32 %2175)
  %2181 = select i1 %2179, i32 %2141, i32 %2176
  %2182 = icmp slt i32 %2170, %2180
  %2183 = call i32 @llvm.smin.i32(i32 %2170, i32 %2180)
  %2184 = select i1 %2182, i32 %2150, i32 %2181
  %2185 = select i1 %2182, i1 true, i1 %2179
  %2186 = select i1 %2185, i32 %2159, i32 %2178
  %2187 = shl nsw i32 %2186, 2
  %2188 = sext i32 %2187 to i64
  %2189 = getelementptr inbounds i16, ptr %54, i64 %2188
  %2190 = shl nsw i32 %2184, 2
  %2191 = sext i32 %2190 to i64
  %2192 = getelementptr inbounds i16, ptr %59, i64 %2191
  %2193 = sub nsw i32 %32, %2186
  %2194 = sub nsw i32 %2186, %28
  %2195 = sub nsw i32 %34, %2184
  %2196 = sub nsw i32 %2184, %30
  %2197 = call i32 @llvm.smin.i32(i32 %2195, i32 %2196)
  %2198 = call i32 @llvm.smin.i32(i32 %2194, i32 %2197)
  %2199 = call i32 @llvm.smin.i32(i32 %2193, i32 %2198)
  %2200 = sext i32 %2186 to i64
  %2201 = getelementptr inbounds i8, ptr %26, i64 %2200
  %2202 = getelementptr inbounds i32, ptr %7, i64 4
  %2203 = getelementptr inbounds i32, ptr %7, i64 8
  %2204 = getelementptr inbounds i32, ptr %7, i64 12
  %2205 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 5
  %2206 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 6
  %2207 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 7
  %2208 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 9
  %2209 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 10
  %2210 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 11
  %2211 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 13
  %2212 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 14
  %2213 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 15
  %2214 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %2215 = ashr i32 %1737, 2
  %2216 = sext i32 %20 to i64
  %2217 = sext i32 %2184 to i64
  %2218 = sext i32 %20 to i64
  %2219 = sext i32 %2199 to i64
  %2220 = call i32 @llvm.smax.i32(i32 %2215, i32 1)
  %2221 = add nuw nsw i32 %2220, 1
  %2222 = zext nneg i32 %2221 to i64
  br label %2223

2223:                                             ; preds = %2480, %2115
  %2224 = phi i64 [ %2484, %2480 ], [ 1, %2115 ]
  %2225 = phi i32 [ %2481, %2480 ], [ %2183, %2115 ]
  %2226 = phi i32 [ %2482, %2480 ], [ %2184, %2115 ]
  %2227 = phi i32 [ %2483, %2480 ], [ %2186, %2115 ]
  %2228 = shl nsw i64 %2224, 2
  %2229 = icmp sgt i64 %2228, %2219
  br i1 %2229, label %2230, label %2285

2230:                                             ; preds = %2223
  %2231 = trunc i64 %2224 to i32
  %2232 = trunc i64 %2224 to i32
  br label %2233

2233:                                             ; preds = %2230, %2279
  %2234 = phi i64 [ %2283, %2279 ], [ 0, %2230 ]
  %2235 = phi i32 [ %2282, %2279 ], [ %2227, %2230 ]
  %2236 = phi i32 [ %2281, %2279 ], [ %2226, %2230 ]
  %2237 = phi i32 [ %2280, %2279 ], [ %2225, %2230 ]
  %2238 = getelementptr inbounds [16 x [2 x i8]], ptr @x264_me_search_ref.hex4, i64 0, i64 %2234
  %2239 = load i8, ptr %2238, align 2, !tbaa !78
  %2240 = sext i8 %2239 to i32
  %2241 = mul nsw i32 %2231, %2240
  %2242 = add nsw i32 %2241, %2186
  %2243 = getelementptr inbounds [16 x [2 x i8]], ptr @x264_me_search_ref.hex4, i64 0, i64 %2234, i64 1
  %2244 = load i8, ptr %2243, align 1, !tbaa !78
  %2245 = sext i8 %2244 to i32
  %2246 = mul nsw i32 %2232, %2245
  %2247 = add nsw i32 %2246, %2184
  %2248 = shl i32 %2242, 16
  %2249 = and i32 %2247, 32767
  %2250 = or disjoint i32 %2249, %2248
  %2251 = add i32 %2250, %42
  %2252 = sub i32 %46, %2250
  %2253 = or i32 %2251, %2252
  %2254 = and i32 %2253, -2147467264
  %2255 = icmp eq i32 %2254, 0
  br i1 %2255, label %2256, label %2279

2256:                                             ; preds = %2233
  %2257 = load ptr, ptr %2214, align 8, !tbaa !70
  %2258 = mul nsw i32 %2247, %20
  %2259 = add nsw i32 %2258, %2242
  %2260 = sext i32 %2259 to i64
  %2261 = getelementptr inbounds i8, ptr %26, i64 %2260
  %2262 = call i32 %2257(ptr noundef %24, i32 noundef 16, ptr noundef %2261, i32 noundef %20) #6
  %2263 = shl i32 %2242, 2
  %2264 = sext i32 %2263 to i64
  %2265 = getelementptr inbounds i16, ptr %54, i64 %2264
  %2266 = load i16, ptr %2265, align 2, !tbaa !73
  %2267 = zext i16 %2266 to i32
  %2268 = shl i32 %2247, 2
  %2269 = sext i32 %2268 to i64
  %2270 = getelementptr inbounds i16, ptr %59, i64 %2269
  %2271 = load i16, ptr %2270, align 2, !tbaa !73
  %2272 = zext i16 %2271 to i32
  %2273 = add i32 %2262, %2267
  %2274 = add i32 %2273, %2272
  %2275 = icmp slt i32 %2274, %2237
  %2276 = call i32 @llvm.smin.i32(i32 %2274, i32 %2237)
  %2277 = select i1 %2275, i32 %2247, i32 %2236
  %2278 = select i1 %2275, i32 %2242, i32 %2235
  br label %2279

2279:                                             ; preds = %2256, %2233
  %2280 = phi i32 [ %2237, %2233 ], [ %2276, %2256 ]
  %2281 = phi i32 [ %2236, %2233 ], [ %2277, %2256 ]
  %2282 = phi i32 [ %2235, %2233 ], [ %2278, %2256 ]
  %2283 = add nuw nsw i64 %2234, 1
  %2284 = icmp eq i64 %2283, 16
  br i1 %2284, label %2480, label %2233, !llvm.loop !96

2285:                                             ; preds = %2223
  %2286 = sub nsw i64 %2217, %2228
  %2287 = mul nsw i64 %2286, %2218
  %2288 = getelementptr inbounds i8, ptr %2201, i64 %2287
  %2289 = mul nsw i64 %2224, %2216
  %2290 = load ptr, ptr %813, align 8, !tbaa !70
  %2291 = trunc i64 %2289 to i32
  %2292 = shl nsw i32 %2291, 3
  %2293 = sext i32 %2292 to i64
  %2294 = getelementptr inbounds i8, ptr %2288, i64 %2293
  %2295 = shl nuw nsw i64 %2224, 1
  %2296 = sub nsw i64 0, %2295
  %2297 = getelementptr inbounds i8, ptr %2288, i64 %2296
  %2298 = getelementptr inbounds i8, ptr %2297, i64 %2289
  %2299 = getelementptr inbounds i8, ptr %2288, i64 %2295
  %2300 = getelementptr inbounds i8, ptr %2299, i64 %2289
  call void %2290(ptr noundef %24, ptr noundef %2288, ptr noundef %2294, ptr noundef nonnull %2298, ptr noundef nonnull %2300, i32 noundef %20, ptr noundef nonnull %7) #6
  %2301 = trunc i64 %2289 to i32
  %2302 = shl nsw i32 %2301, 1
  %2303 = sext i32 %2302 to i64
  %2304 = getelementptr inbounds i8, ptr %2288, i64 %2303
  %2305 = load ptr, ptr %813, align 8, !tbaa !70
  %2306 = sub nsw i64 0, %2228
  %2307 = getelementptr inbounds i8, ptr %2304, i64 %2306
  %2308 = getelementptr inbounds i8, ptr %2304, i64 %2228
  %2309 = getelementptr inbounds i8, ptr %2307, i64 %2289
  %2310 = getelementptr inbounds i8, ptr %2308, i64 %2289
  call void %2305(ptr noundef %24, ptr noundef nonnull %2307, ptr noundef nonnull %2308, ptr noundef nonnull %2309, ptr noundef nonnull %2310, i32 noundef %20, ptr noundef nonnull %2202) #6
  %2311 = getelementptr inbounds i8, ptr %2304, i64 %2303
  %2312 = load ptr, ptr %813, align 8, !tbaa !70
  %2313 = getelementptr inbounds i8, ptr %2311, i64 %2306
  %2314 = getelementptr inbounds i8, ptr %2311, i64 %2228
  %2315 = getelementptr inbounds i8, ptr %2313, i64 %2289
  %2316 = getelementptr inbounds i8, ptr %2314, i64 %2289
  call void %2312(ptr noundef %24, ptr noundef nonnull %2313, ptr noundef nonnull %2314, ptr noundef nonnull %2315, ptr noundef nonnull %2316, i32 noundef %20, ptr noundef nonnull %2203) #6
  %2317 = getelementptr inbounds i8, ptr %2311, i64 %2303
  %2318 = load ptr, ptr %813, align 8, !tbaa !70
  %2319 = getelementptr inbounds i8, ptr %2317, i64 %2306
  %2320 = getelementptr inbounds i8, ptr %2317, i64 %2228
  %2321 = getelementptr inbounds i8, ptr %2317, i64 %2296
  %2322 = getelementptr inbounds i8, ptr %2321, i64 %2289
  %2323 = getelementptr inbounds i8, ptr %2317, i64 %2295
  %2324 = getelementptr inbounds i8, ptr %2323, i64 %2289
  call void %2318(ptr noundef %24, ptr noundef nonnull %2319, ptr noundef nonnull %2320, ptr noundef nonnull %2322, ptr noundef nonnull %2324, i32 noundef %20, ptr noundef nonnull %2204) #6
  %2325 = load i16, ptr %2189, align 2, !tbaa !73
  %2326 = zext i16 %2325 to i32
  %2327 = mul nsw i64 %2224, -16
  %2328 = getelementptr inbounds i16, ptr %2192, i64 %2327
  %2329 = load i16, ptr %2328, align 2, !tbaa !73
  %2330 = zext i16 %2329 to i32
  %2331 = add nuw nsw i32 %2330, %2326
  %2332 = load i32, ptr %7, align 16, !tbaa !43
  %2333 = add nsw i32 %2331, %2332
  store i32 %2333, ptr %7, align 16, !tbaa !43
  %2334 = shl i64 %2224, 4
  %2335 = and i64 %2334, 4294967280
  %2336 = getelementptr inbounds i16, ptr %2192, i64 %2335
  %2337 = load i16, ptr %2336, align 2, !tbaa !73
  %2338 = zext i16 %2337 to i32
  %2339 = add nuw nsw i32 %2338, %2326
  %2340 = load i32, ptr %843, align 4, !tbaa !43
  %2341 = add nsw i32 %2339, %2340
  store i32 %2341, ptr %843, align 4, !tbaa !43
  %2342 = mul nsw i64 %2224, -8
  %2343 = getelementptr inbounds i16, ptr %2189, i64 %2342
  %2344 = load i16, ptr %2343, align 2, !tbaa !73
  %2345 = zext i16 %2344 to i32
  %2346 = mul nsw i64 %2224, -12
  %2347 = getelementptr inbounds i16, ptr %2192, i64 %2346
  %2348 = load i16, ptr %2347, align 2, !tbaa !73
  %2349 = zext i16 %2348 to i32
  %2350 = add nuw nsw i32 %2349, %2345
  %2351 = load i32, ptr %858, align 8, !tbaa !43
  %2352 = add nsw i32 %2350, %2351
  store i32 %2352, ptr %858, align 8, !tbaa !43
  %2353 = shl nsw i64 %2224, 3
  %2354 = getelementptr inbounds i16, ptr %2189, i64 %2353
  %2355 = load i16, ptr %2354, align 2, !tbaa !73
  %2356 = zext i16 %2355 to i32
  %2357 = add nuw nsw i32 %2356, %2349
  %2358 = load i32, ptr %868, align 4, !tbaa !43
  %2359 = add nsw i32 %2357, %2358
  store i32 %2359, ptr %868, align 4, !tbaa !43
  %2360 = getelementptr inbounds i16, ptr %2189, i64 %2327
  %2361 = load i16, ptr %2360, align 2, !tbaa !73
  %2362 = zext i16 %2361 to i32
  %2363 = getelementptr inbounds i16, ptr %2192, i64 %2342
  %2364 = load i16, ptr %2363, align 2, !tbaa !73
  %2365 = zext i16 %2364 to i32
  %2366 = add nuw nsw i32 %2365, %2362
  %2367 = load i32, ptr %2202, align 16, !tbaa !43
  %2368 = add nsw i32 %2366, %2367
  store i32 %2368, ptr %2202, align 16, !tbaa !43
  %2369 = getelementptr inbounds i16, ptr %2189, i64 %2335
  %2370 = load i16, ptr %2369, align 2, !tbaa !73
  %2371 = zext i16 %2370 to i32
  %2372 = add nuw nsw i32 %2371, %2365
  %2373 = load i32, ptr %2205, align 4, !tbaa !43
  %2374 = add nsw i32 %2372, %2373
  store i32 %2374, ptr %2205, align 4, !tbaa !43
  %2375 = mul nsw i64 %2224, -4
  %2376 = getelementptr inbounds i16, ptr %2192, i64 %2375
  %2377 = load i16, ptr %2376, align 2, !tbaa !73
  %2378 = zext i16 %2377 to i32
  %2379 = add nuw nsw i32 %2378, %2362
  %2380 = load i32, ptr %2206, align 8, !tbaa !43
  %2381 = add nsw i32 %2379, %2380
  store i32 %2381, ptr %2206, align 8, !tbaa !43
  %2382 = add nuw nsw i32 %2378, %2371
  %2383 = load i32, ptr %2207, align 4, !tbaa !43
  %2384 = add nsw i32 %2382, %2383
  store i32 %2384, ptr %2207, align 4, !tbaa !43
  %2385 = load i16, ptr %2192, align 2, !tbaa !73
  %2386 = zext i16 %2385 to i32
  %2387 = add nuw nsw i32 %2386, %2362
  %2388 = load i32, ptr %2203, align 16, !tbaa !43
  %2389 = add nsw i32 %2387, %2388
  store i32 %2389, ptr %2203, align 16, !tbaa !43
  %2390 = add nuw nsw i32 %2386, %2371
  %2391 = load i32, ptr %2208, align 4, !tbaa !43
  %2392 = add nsw i32 %2390, %2391
  store i32 %2392, ptr %2208, align 4, !tbaa !43
  %2393 = getelementptr inbounds i16, ptr %2192, i64 %2228
  %2394 = load i16, ptr %2393, align 2, !tbaa !73
  %2395 = zext i16 %2394 to i32
  %2396 = add nuw nsw i32 %2395, %2362
  %2397 = load i32, ptr %2209, align 8, !tbaa !43
  %2398 = add nsw i32 %2396, %2397
  store i32 %2398, ptr %2209, align 8, !tbaa !43
  %2399 = add nuw nsw i32 %2395, %2371
  %2400 = load i32, ptr %2210, align 4, !tbaa !43
  %2401 = add nsw i32 %2399, %2400
  store i32 %2401, ptr %2210, align 4, !tbaa !43
  %2402 = getelementptr inbounds i16, ptr %2192, i64 %2353
  %2403 = load i16, ptr %2402, align 2, !tbaa !73
  %2404 = zext i16 %2403 to i32
  %2405 = add nuw nsw i32 %2404, %2362
  %2406 = load i32, ptr %2204, align 16, !tbaa !43
  %2407 = add nsw i32 %2405, %2406
  store i32 %2407, ptr %2204, align 16, !tbaa !43
  %2408 = add nuw nsw i32 %2404, %2371
  %2409 = load i32, ptr %2211, align 4, !tbaa !43
  %2410 = add nsw i32 %2408, %2409
  store i32 %2410, ptr %2211, align 4, !tbaa !43
  %2411 = mul nuw nsw i64 %2224, 12
  %2412 = getelementptr inbounds i16, ptr %2192, i64 %2411
  %2413 = load i16, ptr %2412, align 2, !tbaa !73
  %2414 = zext i16 %2413 to i32
  %2415 = add nuw nsw i32 %2414, %2345
  %2416 = load i32, ptr %2212, align 8, !tbaa !43
  %2417 = add nsw i32 %2415, %2416
  store i32 %2417, ptr %2212, align 8, !tbaa !43
  %2418 = add nuw nsw i32 %2414, %2356
  %2419 = load i32, ptr %2213, align 4, !tbaa !43
  %2420 = add nsw i32 %2418, %2419
  store i32 %2420, ptr %2213, align 4, !tbaa !43
  %2421 = icmp slt i32 %2333, %2225
  %2422 = select i1 %2421, i32 12, i32 0
  %2423 = call i32 @llvm.smin.i32(i32 %2333, i32 %2225)
  %2424 = icmp slt i32 %2341, %2423
  %2425 = select i1 %2424, i32 4, i32 %2422
  %2426 = call i32 @llvm.smin.i32(i32 %2341, i32 %2423)
  %2427 = icmp slt i32 %2352, %2426
  %2428 = select i1 %2427, i32 -19, i32 %2425
  %2429 = call i32 @llvm.smin.i32(i32 %2352, i32 %2426)
  %2430 = icmp slt i32 %2359, %2429
  %2431 = select i1 %2430, i32 45, i32 %2428
  %2432 = call i32 @llvm.smin.i32(i32 %2359, i32 %2429)
  %2433 = icmp slt i32 %2368, %2432
  %2434 = select i1 %2433, i32 -50, i32 %2431
  %2435 = call i32 @llvm.smin.i32(i32 %2368, i32 %2432)
  %2436 = icmp slt i32 %2374, %2435
  %2437 = select i1 %2436, i32 78, i32 %2434
  %2438 = call i32 @llvm.smin.i32(i32 %2374, i32 %2435)
  %2439 = icmp slt i32 %2381, %2438
  %2440 = select i1 %2439, i32 -49, i32 %2437
  %2441 = call i32 @llvm.smin.i32(i32 %2381, i32 %2438)
  %2442 = icmp slt i32 %2384, %2441
  %2443 = select i1 %2442, i32 79, i32 %2440
  %2444 = call i32 @llvm.smin.i32(i32 %2384, i32 %2441)
  %2445 = icmp slt i32 %2389, %2444
  %2446 = select i1 %2445, i32 -64, i32 %2443
  %2447 = call i32 @llvm.smin.i32(i32 %2389, i32 %2444)
  %2448 = icmp slt i32 %2392, %2447
  %2449 = select i1 %2448, i32 64, i32 %2446
  %2450 = call i32 @llvm.smin.i32(i32 %2392, i32 %2447)
  %2451 = icmp slt i32 %2398, %2450
  %2452 = select i1 %2451, i32 -63, i32 %2449
  %2453 = call i32 @llvm.smin.i32(i32 %2398, i32 %2450)
  %2454 = icmp slt i32 %2401, %2453
  %2455 = select i1 %2454, i32 65, i32 %2452
  %2456 = call i32 @llvm.smin.i32(i32 %2401, i32 %2453)
  %2457 = icmp slt i32 %2407, %2456
  %2458 = select i1 %2457, i32 -62, i32 %2455
  %2459 = call i32 @llvm.smin.i32(i32 %2407, i32 %2456)
  %2460 = icmp slt i32 %2410, %2459
  %2461 = select i1 %2460, i32 66, i32 %2458
  %2462 = call i32 @llvm.smin.i32(i32 %2410, i32 %2459)
  %2463 = icmp slt i32 %2417, %2462
  %2464 = select i1 %2463, i32 -29, i32 %2461
  %2465 = call i32 @llvm.smin.i32(i32 %2417, i32 %2462)
  %2466 = icmp slt i32 %2420, %2465
  %2467 = select i1 %2466, i32 35, i32 %2464
  %2468 = call i32 @llvm.smin.i32(i32 %2420, i32 %2465)
  %2469 = icmp eq i32 %2467, 0
  br i1 %2469, label %2480, label %2470

2470:                                             ; preds = %2285
  %2471 = ashr i32 %2467, 4
  %2472 = trunc i64 %2224 to i32
  %2473 = mul nsw i32 %2471, %2472
  %2474 = add nsw i32 %2473, %2186
  %2475 = shl i32 %2467, 28
  %2476 = ashr exact i32 %2475, 28
  %2477 = trunc i64 %2224 to i32
  %2478 = mul nsw i32 %2476, %2477
  %2479 = add nsw i32 %2478, %2184
  br label %2480

2480:                                             ; preds = %2279, %2285, %2470
  %2481 = phi i32 [ %2468, %2470 ], [ %2468, %2285 ], [ %2280, %2279 ]
  %2482 = phi i32 [ %2479, %2470 ], [ %2226, %2285 ], [ %2281, %2279 ]
  %2483 = phi i32 [ %2474, %2470 ], [ %2227, %2285 ], [ %2282, %2279 ]
  %2484 = add nuw nsw i64 %2224, 1
  %2485 = icmp eq i64 %2484, %2222
  br i1 %2485, label %2486, label %2223, !llvm.loop !97

2486:                                             ; preds = %2480
  %2487 = icmp sle i32 %2482, %34
  %2488 = icmp sge i32 %2482, %30
  %2489 = select i1 %2487, i1 %2488, i1 false
  %2490 = icmp sle i32 %2483, %32
  %2491 = select i1 %2489, i1 %2490, i1 false
  %2492 = icmp sge i32 %2483, %28
  %2493 = select i1 %2491, i1 %2492, i1 false
  br label %2494

2494:                                             ; preds = %1034, %939, %1533, %2486
  %2495 = phi i1 [ %2493, %2486 ], [ false, %1533 ], [ true, %939 ], [ false, %1034 ]
  %2496 = phi i32 [ %2481, %2486 ], [ %1623, %1533 ], [ %940, %939 ], [ %1174, %1034 ]
  %2497 = phi i32 [ %2482, %2486 ], [ %1625, %1533 ], [ %941, %939 ], [ %1175, %1034 ]
  %2498 = phi i32 [ %2483, %2486 ], [ %1626, %1533 ], [ %942, %939 ], [ %1176, %1034 ]
  %2499 = phi i32 [ %1737, %2486 ], [ %22, %1533 ], [ %22, %939 ], [ %22, %1034 ]
  br i1 %2495, label %425, label %3045

2500:                                             ; preds = %315, %315
  %2501 = sub nsw i32 %318, %22
  %2502 = call i32 @llvm.smax.i32(i32 %2501, i32 %28)
  %2503 = sub i32 %317, %22
  %2504 = call i32 @llvm.smax.i32(i32 %2503, i32 %30)
  %2505 = add nsw i32 %318, %22
  %2506 = call i32 @llvm.smin.i32(i32 %2505, i32 %32)
  %2507 = add i32 %317, %22
  %2508 = call i32 @llvm.smin.i32(i32 %2507, i32 %34)
  %2509 = sub i32 %2506, %2502
  %2510 = add i32 %2509, 3
  %2511 = and i32 %2510, -4
  %2512 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 8
  %2513 = load ptr, ptr %2512, align 16, !tbaa !98
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #6
  %2514 = icmp sgt i32 %13, 3
  %2515 = select i1 %2514, i64 6, i64 3
  %2516 = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %2515
  %2517 = load i32, ptr %2516, align 8, !tbaa !40
  %2518 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 61
  %2519 = load ptr, ptr %2518, align 8, !tbaa !99
  %2520 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 68
  %2521 = load i32, ptr %2520, align 16, !tbaa !100
  %2522 = sext i32 %2521 to i64
  %2523 = getelementptr inbounds [52 x i8], ptr @x264_lambda_tab, i64 0, i64 %2522
  %2524 = load i8, ptr %2523, align 1, !tbaa !78
  %2525 = zext i8 %2524 to i64
  %2526 = load i16, ptr %49, align 16, !tbaa !73
  %2527 = sext i16 %2526 to i32
  %2528 = sub nsw i32 0, %2527
  %2529 = and i32 %2528, 3
  %2530 = zext nneg i32 %2529 to i64
  %2531 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 38, i64 %2525, i64 %2530
  %2532 = load ptr, ptr %2531, align 8, !tbaa !70
  %2533 = ashr i32 %2528, 2
  %2534 = sext i32 %2533 to i64
  %2535 = getelementptr inbounds i16, ptr %2532, i64 %2534
  %2536 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69
  %2537 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 17, i64 %2515
  %2538 = load ptr, ptr %2537, align 8, !tbaa !70
  %2539 = sext i32 %2517 to i64
  %2540 = getelementptr inbounds i8, ptr %24, i64 %2539
  %2541 = shl nsw i32 %2517, 4
  %2542 = sext i32 %2541 to i64
  %2543 = getelementptr inbounds i8, ptr %24, i64 %2542
  %2544 = getelementptr inbounds i8, ptr %2540, i64 %2542
  call void %2538(ptr noundef nonnull @x264_me_search_ref.zero, ptr noundef %24, ptr noundef %2540, ptr noundef %2543, ptr noundef %2544, i32 noundef 16, ptr noundef nonnull %11) #6
  %2545 = icmp eq i32 %2517, 4
  br i1 %2545, label %2546, label %2555

2546:                                             ; preds = %2500
  %2547 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %2548 = load ptr, ptr %2547, align 8, !tbaa !101
  %2549 = getelementptr inbounds %struct.x264_frame, ptr %2548, i64 0, i32 26
  %2550 = load i32, ptr %2549, align 16, !tbaa !43
  %2551 = add nsw i32 %2550, 64
  %2552 = mul nsw i32 %2551, %20
  %2553 = sext i32 %2552 to i64
  %2554 = getelementptr inbounds i16, ptr %2513, i64 %2553
  br label %2555

2555:                                             ; preds = %2546, %2500
  %2556 = phi ptr [ %2554, %2546 ], [ %2513, %2500 ]
  switch i32 %13, label %2559 [
    i32 5, label %2557
    i32 2, label %2557
    i32 0, label %2557
  ]

2557:                                             ; preds = %2555, %2555, %2555
  %2558 = mul nsw i32 %2517, %20
  br label %2559

2559:                                             ; preds = %2555, %2557
  %2560 = phi i32 [ %2558, %2557 ], [ %2517, %2555 ]
  switch i32 %13, label %2565 [
    i32 5, label %2561
    i32 2, label %2561
  ]

2561:                                             ; preds = %2559, %2559
  %2562 = getelementptr inbounds [4 x i32], ptr %11, i64 0, i64 2
  %2563 = load i32, ptr %2562, align 8, !tbaa !43
  %2564 = getelementptr inbounds [4 x i32], ptr %11, i64 0, i64 1
  store i32 %2563, ptr %2564, align 4, !tbaa !43
  br label %2565

2565:                                             ; preds = %2559, %2561
  %2566 = load i32, ptr %319, align 4, !tbaa !84
  %2567 = icmp eq i32 %2566, 4
  br i1 %2567, label %2585, label %2568

2568:                                             ; preds = %2565
  %2569 = icmp sgt i32 %2504, %2508
  br i1 %2569, label %3041, label %2570

2570:                                             ; preds = %2568
  %2571 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 20, i64 %14
  %2572 = sext i32 %2502 to i64
  %2573 = getelementptr inbounds i16, ptr %2556, i64 %2572
  %2574 = getelementptr inbounds i16, ptr %2535, i64 %2572
  %2575 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 8, i64 %14
  %2576 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 1
  %2577 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 2
  %2578 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %2579 = call i32 @llvm.smax.i32(i32 %30, i32 %2503)
  %2580 = sext i32 %2579 to i64
  %2581 = sext i32 %20 to i64
  %2582 = add i32 %2508, %2579
  %2583 = add i32 %2582, 1
  %2584 = sub i32 %2583, %2504
  br label %2894

2585:                                             ; preds = %2565
  %2586 = add nsw i32 %2511, 15
  %2587 = and i32 %2586, -16
  %2588 = sext i32 %2587 to i64
  %2589 = getelementptr inbounds i16, ptr %2519, i64 %2588
  %2590 = icmp slt i32 %22, 17
  %2591 = icmp slt i32 %22, 25
  %2592 = select i1 %2591, i32 11, i32 12
  %2593 = select i1 %2590, i32 10, i32 %2592
  %2594 = getelementptr inbounds [7 x ptr], ptr %2536, i64 0, i64 %14
  %2595 = load ptr, ptr %2594, align 8, !tbaa !70
  %2596 = mul nsw i32 %317, %20
  %2597 = sext i32 %2596 to i64
  %2598 = getelementptr inbounds i8, ptr %26, i64 %2597
  %2599 = sext i32 %318 to i64
  %2600 = getelementptr inbounds i8, ptr %2598, i64 %2599
  %2601 = call i32 %2595(ptr noundef %24, i32 noundef 16, ptr noundef %2600, i32 noundef %20) #6
  %2602 = shl nsw i32 %318, 2
  %2603 = sext i32 %2602 to i64
  %2604 = getelementptr inbounds i16, ptr %54, i64 %2603
  %2605 = load i16, ptr %2604, align 2, !tbaa !73
  %2606 = zext i16 %2605 to i32
  %2607 = shl nsw i32 %317, 2
  %2608 = sext i32 %2607 to i64
  %2609 = getelementptr inbounds i16, ptr %59, i64 %2608
  %2610 = load i16, ptr %2609, align 2, !tbaa !73
  %2611 = zext i16 %2610 to i32
  %2612 = add i32 %2601, %2606
  %2613 = add i32 %2612, %2611
  %2614 = icmp sgt i32 %2504, %2508
  br i1 %2614, label %2629, label %2615

2615:                                             ; preds = %2585
  %2616 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 20, i64 %14
  %2617 = sext i32 %2502 to i64
  %2618 = getelementptr inbounds i16, ptr %2556, i64 %2617
  %2619 = getelementptr inbounds i16, ptr %2535, i64 %2617
  %2620 = getelementptr inbounds i8, ptr %26, i64 %2617
  %2621 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 16, i64 %14
  %2622 = trunc i32 %2502 to i16
  %2623 = call i32 @llvm.smax.i32(i32 %30, i32 %2503)
  %2624 = sext i32 %2623 to i64
  %2625 = sext i32 %20 to i64
  %2626 = add i32 %2508, %2623
  %2627 = add i32 %2626, 1
  %2628 = sub i32 %2627, %2504
  br label %2639

2629:                                             ; preds = %2766, %2585
  %2630 = phi i32 [ 0, %2585 ], [ %2767, %2766 ]
  %2631 = phi i32 [ %2613, %2585 ], [ %2768, %2766 ]
  %2632 = ashr i32 %22, 1
  %2633 = mul nsw i32 %2631, %2593
  %2634 = ashr i32 %2633, 3
  %2635 = and i32 %22, -2
  %2636 = icmp sgt i32 %2630, %2635
  %2637 = icmp sgt i32 %2634, %2631
  %2638 = select i1 %2636, i1 %2637, i1 false
  br i1 %2638, label %2783, label %2777

2639:                                             ; preds = %2615, %2766
  %2640 = phi i64 [ %2624, %2615 ], [ %2769, %2766 ]
  %2641 = phi i32 [ %2613, %2615 ], [ %2768, %2766 ]
  %2642 = phi i32 [ 0, %2615 ], [ %2767, %2766 ]
  %2643 = trunc i64 %2640 to i32
  %2644 = shl i32 %2643, 2
  %2645 = sext i32 %2644 to i64
  %2646 = getelementptr inbounds i16, ptr %59, i64 %2645
  %2647 = load i16, ptr %2646, align 2, !tbaa !73
  %2648 = zext i16 %2647 to i32
  %2649 = icmp sgt i32 %2641, %2648
  br i1 %2649, label %2650, label %2766

2650:                                             ; preds = %2639
  %2651 = sub nsw i32 %2641, %2648
  %2652 = load ptr, ptr %2616, align 8, !tbaa !70
  %2653 = mul nsw i64 %2640, %2625
  %2654 = getelementptr inbounds i16, ptr %2618, i64 %2653
  %2655 = mul nsw i32 %2651, 17
  %2656 = sdiv i32 %2655, 16
  %2657 = call i32 %2652(ptr noundef nonnull %11, ptr noundef %2654, i32 noundef %2560, ptr noundef %2619, ptr noundef %2519, i32 noundef %2511, i32 noundef %2656) #6
  %2658 = add nsw i32 %2657, -2
  %2659 = icmp sgt i32 %2657, 2
  br i1 %2659, label %2660, label %2665

2660:                                             ; preds = %2650
  %2661 = getelementptr inbounds i8, ptr %2620, i64 %2653
  %2662 = trunc i64 %2640 to i16
  br label %2674

2663:                                             ; preds = %2692
  %2664 = trunc i64 %2693 to i32
  br label %2665

2665:                                             ; preds = %2663, %2650
  %2666 = phi i32 [ %2642, %2650 ], [ %2722, %2663 ]
  %2667 = phi i32 [ %2651, %2650 ], [ %2723, %2663 ]
  %2668 = phi i32 [ 0, %2650 ], [ %2664, %2663 ]
  %2669 = getelementptr i8, ptr %26, i64 %2653
  %2670 = icmp slt i32 %2668, %2657
  br i1 %2670, label %2671, label %2762

2671:                                             ; preds = %2665
  %2672 = trunc i64 %2640 to i16
  %2673 = zext i32 %2668 to i64
  br label %2726

2674:                                             ; preds = %2660, %2692
  %2675 = phi i64 [ 0, %2660 ], [ %2693, %2692 ]
  %2676 = phi i32 [ %2651, %2660 ], [ %2723, %2692 ]
  %2677 = phi i32 [ %2642, %2660 ], [ %2722, %2692 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #6
  %2678 = load ptr, ptr %2621, align 8, !tbaa !70
  %2679 = getelementptr inbounds i16, ptr %2519, i64 %2675
  %2680 = load i16, ptr %2679, align 2, !tbaa !73
  %2681 = sext i16 %2680 to i64
  %2682 = getelementptr inbounds i8, ptr %2661, i64 %2681
  %2683 = getelementptr i16, ptr %2679, i64 1
  %2684 = load i16, ptr %2683, align 2, !tbaa !73
  %2685 = sext i16 %2684 to i64
  %2686 = getelementptr inbounds i8, ptr %2661, i64 %2685
  %2687 = getelementptr i16, ptr %2679, i64 2
  %2688 = load i16, ptr %2687, align 2, !tbaa !73
  %2689 = sext i16 %2688 to i64
  %2690 = getelementptr inbounds i8, ptr %2661, i64 %2689
  call void %2678(ptr noundef %24, ptr noundef %2682, ptr noundef %2686, ptr noundef %2690, i32 noundef %20, ptr noundef nonnull %12) #6
  %2691 = getelementptr i16, ptr %2519, i64 %2675
  br label %2696

2692:                                             ; preds = %2721
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #6
  %2693 = add nuw i64 %2675, 3
  %2694 = trunc i64 %2693 to i32
  %2695 = icmp sgt i32 %2658, %2694
  br i1 %2695, label %2674, label %2663, !llvm.loop !102

2696:                                             ; preds = %2674, %2721
  %2697 = phi i64 [ 0, %2674 ], [ %2724, %2721 ]
  %2698 = phi i32 [ %2676, %2674 ], [ %2723, %2721 ]
  %2699 = phi i32 [ %2677, %2674 ], [ %2722, %2721 ]
  %2700 = getelementptr inbounds [3 x i32], ptr %12, i64 0, i64 %2697
  %2701 = load i32, ptr %2700, align 4, !tbaa !43
  %2702 = getelementptr i16, ptr %2691, i64 %2697
  %2703 = load i16, ptr %2702, align 2, !tbaa !73
  %2704 = sext i16 %2703 to i64
  %2705 = getelementptr inbounds i16, ptr %2535, i64 %2704
  %2706 = load i16, ptr %2705, align 2, !tbaa !73
  %2707 = zext i16 %2706 to i32
  %2708 = add nsw i32 %2701, %2707
  %2709 = mul nsw i32 %2698, %2593
  %2710 = ashr i32 %2709, 3
  %2711 = icmp slt i32 %2708, %2710
  br i1 %2711, label %2712, label %2721

2712:                                             ; preds = %2696
  %2713 = call i32 @llvm.smin.i32(i32 %2708, i32 %2698)
  %2714 = add nsw i32 %2708, %2648
  %2715 = sext i32 %2699 to i64
  %2716 = getelementptr inbounds %struct.mvsad_t, ptr %2589, i64 %2715
  store i32 %2714, ptr %2716, align 4, !tbaa !103
  %2717 = add i16 %2703, %2622
  %2718 = getelementptr inbounds %struct.mvsad_t, ptr %2589, i64 %2715, i32 1
  store i16 %2717, ptr %2718, align 4, !tbaa !73
  %2719 = getelementptr inbounds %struct.mvsad_t, ptr %2589, i64 %2715, i32 1, i64 1
  store i16 %2662, ptr %2719, align 2, !tbaa !73
  %2720 = add nsw i32 %2699, 1
  br label %2721

2721:                                             ; preds = %2712, %2696
  %2722 = phi i32 [ %2720, %2712 ], [ %2699, %2696 ]
  %2723 = phi i32 [ %2713, %2712 ], [ %2698, %2696 ]
  %2724 = add nuw nsw i64 %2697, 1
  %2725 = icmp eq i64 %2724, 3
  br i1 %2725, label %2692, label %2696, !llvm.loop !105

2726:                                             ; preds = %2671, %2756
  %2727 = phi i64 [ %2673, %2671 ], [ %2759, %2756 ]
  %2728 = phi i32 [ %2667, %2671 ], [ %2758, %2756 ]
  %2729 = phi i32 [ %2666, %2671 ], [ %2757, %2756 ]
  %2730 = getelementptr inbounds i16, ptr %2519, i64 %2727
  %2731 = load i16, ptr %2730, align 2, !tbaa !73
  %2732 = sext i16 %2731 to i32
  %2733 = add nsw i32 %2502, %2732
  %2734 = load ptr, ptr %2594, align 8, !tbaa !70
  %2735 = sext i32 %2733 to i64
  %2736 = getelementptr i8, ptr %2669, i64 %2735
  %2737 = call i32 %2734(ptr noundef %24, i32 noundef 16, ptr noundef %2736, i32 noundef %20) #6
  %2738 = load i16, ptr %2730, align 2, !tbaa !73
  %2739 = sext i16 %2738 to i64
  %2740 = getelementptr inbounds i16, ptr %2535, i64 %2739
  %2741 = load i16, ptr %2740, align 2, !tbaa !73
  %2742 = zext i16 %2741 to i32
  %2743 = add nsw i32 %2737, %2742
  %2744 = mul nsw i32 %2728, %2593
  %2745 = ashr i32 %2744, 3
  %2746 = icmp slt i32 %2743, %2745
  br i1 %2746, label %2747, label %2756

2747:                                             ; preds = %2726
  %2748 = call i32 @llvm.smin.i32(i32 %2743, i32 %2728)
  %2749 = add nsw i32 %2743, %2648
  %2750 = sext i32 %2729 to i64
  %2751 = getelementptr inbounds %struct.mvsad_t, ptr %2589, i64 %2750
  store i32 %2749, ptr %2751, align 4, !tbaa !103
  %2752 = trunc i32 %2733 to i16
  %2753 = getelementptr inbounds %struct.mvsad_t, ptr %2589, i64 %2750, i32 1
  store i16 %2752, ptr %2753, align 4, !tbaa !73
  %2754 = getelementptr inbounds %struct.mvsad_t, ptr %2589, i64 %2750, i32 1, i64 1
  store i16 %2672, ptr %2754, align 2, !tbaa !73
  %2755 = add nsw i32 %2729, 1
  br label %2756

2756:                                             ; preds = %2747, %2726
  %2757 = phi i32 [ %2755, %2747 ], [ %2729, %2726 ]
  %2758 = phi i32 [ %2748, %2747 ], [ %2728, %2726 ]
  %2759 = add nuw nsw i64 %2727, 1
  %2760 = trunc i64 %2759 to i32
  %2761 = icmp sgt i32 %2657, %2760
  br i1 %2761, label %2726, label %2762, !llvm.loop !106

2762:                                             ; preds = %2756, %2665
  %2763 = phi i32 [ %2666, %2665 ], [ %2757, %2756 ]
  %2764 = phi i32 [ %2667, %2665 ], [ %2758, %2756 ]
  %2765 = add nsw i32 %2764, %2648
  br label %2766

2766:                                             ; preds = %2639, %2762
  %2767 = phi i32 [ %2763, %2762 ], [ %2642, %2639 ]
  %2768 = phi i32 [ %2765, %2762 ], [ %2641, %2639 ]
  %2769 = add nsw i64 %2640, 1
  %2770 = trunc i64 %2769 to i32
  %2771 = icmp eq i32 %2628, %2770
  br i1 %2771, label %2629, label %2639, !llvm.loop !107

2772:                                             ; preds = %2807, %2801
  %2773 = phi i32 [ %2802, %2801 ], [ %2817, %2807 ]
  %2774 = icmp sgt i32 %2773, %2635
  %2775 = icmp sgt i32 %2787, %2631
  %2776 = select i1 %2774, i1 %2775, i1 false
  br i1 %2776, label %2783, label %2777, !llvm.loop !108

2777:                                             ; preds = %2772, %2629
  %2778 = phi i32 [ %2630, %2629 ], [ %2773, %2772 ]
  %2779 = icmp sgt i32 %2778, %2632
  br i1 %2779, label %2780, label %2828

2780:                                             ; preds = %2777
  %2781 = sext i32 %2778 to i64
  %2782 = sext i32 %2632 to i64
  br label %2821

2783:                                             ; preds = %2629, %2772
  %2784 = phi i32 [ %2787, %2772 ], [ %2634, %2629 ]
  %2785 = phi i32 [ %2773, %2772 ], [ %2630, %2629 ]
  %2786 = add nsw i32 %2784, %2631
  %2787 = ashr i32 %2786, 1
  %2788 = icmp sgt i32 %2785, 0
  br i1 %2788, label %2789, label %2801

2789:                                             ; preds = %2783
  %2790 = zext nneg i32 %2785 to i64
  br label %2791

2791:                                             ; preds = %2789, %2796
  %2792 = phi i64 [ 0, %2789 ], [ %2797, %2796 ]
  %2793 = getelementptr inbounds %struct.mvsad_t, ptr %2589, i64 %2792
  %2794 = load i32, ptr %2793, align 4, !tbaa !103
  %2795 = icmp sgt i32 %2794, %2787
  br i1 %2795, label %2799, label %2796

2796:                                             ; preds = %2791
  %2797 = add nuw nsw i64 %2792, 1
  %2798 = icmp eq i64 %2797, %2790
  br i1 %2798, label %2801, label %2791, !llvm.loop !109

2799:                                             ; preds = %2791
  %2800 = trunc i64 %2792 to i32
  br label %2801

2801:                                             ; preds = %2799, %2796, %2783
  %2802 = phi i32 [ 0, %2783 ], [ %2800, %2799 ], [ %2785, %2796 ]
  %2803 = icmp slt i32 %2802, %2785
  br i1 %2803, label %2804, label %2772

2804:                                             ; preds = %2801
  %2805 = xor i32 %2787, -1
  %2806 = zext i32 %2802 to i64
  br label %2807

2807:                                             ; preds = %2804, %2807
  %2808 = phi i64 [ %2806, %2804 ], [ %2818, %2807 ]
  %2809 = phi i32 [ %2802, %2804 ], [ %2817, %2807 ]
  %2810 = getelementptr inbounds %struct.mvsad_t, ptr %2589, i64 %2808
  %2811 = load i64, ptr %2810, align 8, !tbaa !78
  %2812 = sext i32 %2809 to i64
  %2813 = getelementptr inbounds %struct.mvsad_t, ptr %2589, i64 %2812
  store i64 %2811, ptr %2813, align 8, !tbaa !78
  %2814 = trunc i64 %2811 to i32
  %2815 = add i32 %2814, %2805
  %2816 = lshr i32 %2815, 31
  %2817 = add i32 %2816, %2809
  %2818 = add nuw nsw i64 %2808, 1
  %2819 = trunc i64 %2818 to i32
  %2820 = icmp sgt i32 %2785, %2819
  br i1 %2820, label %2807, label %2772, !llvm.loop !110

2821:                                             ; preds = %2780, %2834
  %2822 = phi i64 [ %2781, %2780 ], [ %2836, %2834 ]
  %2823 = icmp sgt i64 %2822, 1
  br i1 %2823, label %2824, label %2834

2824:                                             ; preds = %2821
  %2825 = and i64 %2822, 4294967295
  br label %2842

2826:                                             ; preds = %2834
  %2827 = trunc i64 %2836 to i32
  br label %2828

2828:                                             ; preds = %2826, %2777
  %2829 = phi i32 [ %2778, %2777 ], [ %2827, %2826 ]
  %2830 = icmp sgt i32 %2829, 0
  br i1 %2830, label %2831, label %3041

2831:                                             ; preds = %2828
  %2832 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %2833 = zext nneg i32 %2829 to i64
  br label %2855

2834:                                             ; preds = %2842, %2821
  %2835 = phi i32 [ 0, %2821 ], [ %2852, %2842 ]
  %2836 = add nsw i64 %2822, -1
  %2837 = getelementptr inbounds %struct.mvsad_t, ptr %2589, i64 %2836
  %2838 = load i64, ptr %2837, align 8, !tbaa !78
  %2839 = sext i32 %2835 to i64
  %2840 = getelementptr inbounds %struct.mvsad_t, ptr %2589, i64 %2839
  store i64 %2838, ptr %2840, align 8, !tbaa !78
  %2841 = icmp sgt i64 %2836, %2782
  br i1 %2841, label %2821, label %2826, !llvm.loop !111

2842:                                             ; preds = %2824, %2842
  %2843 = phi i64 [ 1, %2824 ], [ %2853, %2842 ]
  %2844 = phi i32 [ 0, %2824 ], [ %2852, %2842 ]
  %2845 = getelementptr inbounds %struct.mvsad_t, ptr %2589, i64 %2843
  %2846 = load i32, ptr %2845, align 4, !tbaa !103
  %2847 = sext i32 %2844 to i64
  %2848 = getelementptr inbounds %struct.mvsad_t, ptr %2589, i64 %2847
  %2849 = load i32, ptr %2848, align 4, !tbaa !103
  %2850 = icmp sgt i32 %2846, %2849
  %2851 = trunc i64 %2843 to i32
  %2852 = select i1 %2850, i32 %2851, i32 %2844
  %2853 = add nuw nsw i64 %2843, 1
  %2854 = icmp eq i64 %2853, %2825
  br i1 %2854, label %2834, label %2842, !llvm.loop !112

2855:                                             ; preds = %2831, %2855
  %2856 = phi i64 [ 0, %2831 ], [ %2892, %2855 ]
  %2857 = phi i32 [ %318, %2831 ], [ %2891, %2855 ]
  %2858 = phi i32 [ %317, %2831 ], [ %2890, %2855 ]
  %2859 = phi i32 [ %316, %2831 ], [ %2889, %2855 ]
  %2860 = load ptr, ptr %2832, align 8, !tbaa !70
  %2861 = getelementptr inbounds %struct.mvsad_t, ptr %2589, i64 %2856, i32 1
  %2862 = getelementptr inbounds %struct.mvsad_t, ptr %2589, i64 %2856, i32 1, i64 1
  %2863 = load i16, ptr %2862, align 2, !tbaa !73
  %2864 = sext i16 %2863 to i32
  %2865 = mul nsw i32 %20, %2864
  %2866 = load i16, ptr %2861, align 4, !tbaa !73
  %2867 = sext i16 %2866 to i32
  %2868 = add nsw i32 %2865, %2867
  %2869 = sext i32 %2868 to i64
  %2870 = getelementptr inbounds i8, ptr %26, i64 %2869
  %2871 = call i32 %2860(ptr noundef %24, i32 noundef 16, ptr noundef %2870, i32 noundef %20) #6
  %2872 = load i16, ptr %2861, align 4, !tbaa !73
  %2873 = sext i16 %2872 to i32
  %2874 = shl nsw i32 %2873, 2
  %2875 = sext i32 %2874 to i64
  %2876 = getelementptr inbounds i16, ptr %54, i64 %2875
  %2877 = load i16, ptr %2876, align 2, !tbaa !73
  %2878 = zext i16 %2877 to i32
  %2879 = load i16, ptr %2862, align 2, !tbaa !73
  %2880 = sext i16 %2879 to i32
  %2881 = shl nsw i32 %2880, 2
  %2882 = sext i32 %2881 to i64
  %2883 = getelementptr inbounds i16, ptr %59, i64 %2882
  %2884 = load i16, ptr %2883, align 2, !tbaa !73
  %2885 = zext i16 %2884 to i32
  %2886 = add i32 %2871, %2878
  %2887 = add i32 %2886, %2885
  %2888 = icmp slt i32 %2887, %2859
  %2889 = call i32 @llvm.smin.i32(i32 %2887, i32 %2859)
  %2890 = select i1 %2888, i32 %2880, i32 %2858
  %2891 = select i1 %2888, i32 %2873, i32 %2857
  %2892 = add nuw nsw i64 %2856, 1
  %2893 = icmp eq i64 %2892, %2833
  br i1 %2893, label %3041, label %2855, !llvm.loop !113

2894:                                             ; preds = %2570, %3034
  %2895 = phi i64 [ %2580, %2570 ], [ %3038, %3034 ]
  %2896 = phi i32 [ %318, %2570 ], [ %3037, %3034 ]
  %2897 = phi i32 [ %317, %2570 ], [ %3036, %3034 ]
  %2898 = phi i32 [ %316, %2570 ], [ %3035, %3034 ]
  %2899 = trunc i64 %2895 to i32
  %2900 = shl i32 %2899, 2
  %2901 = sext i32 %2900 to i64
  %2902 = getelementptr inbounds i16, ptr %59, i64 %2901
  %2903 = load i16, ptr %2902, align 2, !tbaa !73
  %2904 = zext i16 %2903 to i32
  %2905 = icmp sgt i32 %2898, %2904
  br i1 %2905, label %2906, label %3034

2906:                                             ; preds = %2894
  %2907 = sub nsw i32 %2898, %2904
  %2908 = load ptr, ptr %2571, align 8, !tbaa !70
  %2909 = mul nsw i64 %2895, %2581
  %2910 = getelementptr inbounds i16, ptr %2573, i64 %2909
  %2911 = call i32 %2908(ptr noundef nonnull %11, ptr noundef %2910, i32 noundef %2560, ptr noundef %2574, ptr noundef %2519, i32 noundef %2511, i32 noundef %2907) #6
  %2912 = add nsw i32 %2911, -2
  %2913 = getelementptr i8, ptr %26, i64 %2909
  %2914 = getelementptr i8, ptr %26, i64 %2909
  %2915 = getelementptr i8, ptr %26, i64 %2909
  %2916 = icmp sgt i32 %2911, 2
  br i1 %2916, label %2917, label %2990

2917:                                             ; preds = %2906
  %2918 = trunc i64 %2895 to i32
  br label %2919

2919:                                             ; preds = %2917, %2919
  %2920 = phi i64 [ %2985, %2919 ], [ 0, %2917 ]
  %2921 = phi i32 [ %2984, %2919 ], [ %2896, %2917 ]
  %2922 = phi i32 [ %2983, %2919 ], [ %2897, %2917 ]
  %2923 = phi i32 [ %2980, %2919 ], [ %2907, %2917 ]
  %2924 = load ptr, ptr %2575, align 8, !tbaa !70
  %2925 = getelementptr inbounds i16, ptr %2519, i64 %2920
  %2926 = load i16, ptr %2925, align 2, !tbaa !73
  %2927 = sext i16 %2926 to i32
  %2928 = add nsw i32 %2502, %2927
  %2929 = sext i32 %2928 to i64
  %2930 = getelementptr i8, ptr %2913, i64 %2929
  %2931 = getelementptr i16, ptr %2925, i64 1
  %2932 = load i16, ptr %2931, align 2, !tbaa !73
  %2933 = sext i16 %2932 to i32
  %2934 = add nsw i32 %2502, %2933
  %2935 = sext i32 %2934 to i64
  %2936 = getelementptr i8, ptr %2914, i64 %2935
  %2937 = getelementptr i16, ptr %2925, i64 2
  %2938 = load i16, ptr %2937, align 2, !tbaa !73
  %2939 = sext i16 %2938 to i32
  %2940 = add nsw i32 %2502, %2939
  %2941 = sext i32 %2940 to i64
  %2942 = getelementptr i8, ptr %2915, i64 %2941
  call void %2924(ptr noundef %24, ptr noundef %2930, ptr noundef %2936, ptr noundef %2942, i32 noundef %20, ptr noundef nonnull %7) #6
  %2943 = load i16, ptr %2925, align 2, !tbaa !73
  %2944 = sext i16 %2943 to i32
  %2945 = add nsw i32 %2502, %2944
  %2946 = shl i32 %2945, 2
  %2947 = sext i32 %2946 to i64
  %2948 = getelementptr inbounds i16, ptr %54, i64 %2947
  %2949 = load i16, ptr %2948, align 2, !tbaa !73
  %2950 = zext i16 %2949 to i32
  %2951 = load i32, ptr %7, align 16, !tbaa !43
  %2952 = add nsw i32 %2951, %2950
  store i32 %2952, ptr %7, align 16, !tbaa !43
  %2953 = load i16, ptr %2931, align 2, !tbaa !73
  %2954 = sext i16 %2953 to i32
  %2955 = add nsw i32 %2502, %2954
  %2956 = shl i32 %2955, 2
  %2957 = sext i32 %2956 to i64
  %2958 = getelementptr inbounds i16, ptr %54, i64 %2957
  %2959 = load i16, ptr %2958, align 2, !tbaa !73
  %2960 = zext i16 %2959 to i32
  %2961 = load i32, ptr %2576, align 4, !tbaa !43
  %2962 = add nsw i32 %2961, %2960
  store i32 %2962, ptr %2576, align 4, !tbaa !43
  %2963 = load i16, ptr %2937, align 2, !tbaa !73
  %2964 = sext i16 %2963 to i32
  %2965 = add nsw i32 %2502, %2964
  %2966 = shl i32 %2965, 2
  %2967 = sext i32 %2966 to i64
  %2968 = getelementptr inbounds i16, ptr %54, i64 %2967
  %2969 = load i16, ptr %2968, align 2, !tbaa !73
  %2970 = zext i16 %2969 to i32
  %2971 = load i32, ptr %2577, align 8, !tbaa !43
  %2972 = add nsw i32 %2971, %2970
  store i32 %2972, ptr %2577, align 8, !tbaa !43
  %2973 = icmp slt i32 %2952, %2923
  %2974 = call i32 @llvm.smin.i32(i32 %2952, i32 %2923)
  %2975 = select i1 %2973, i32 %2945, i32 %2921
  %2976 = icmp slt i32 %2962, %2974
  %2977 = call i32 @llvm.smin.i32(i32 %2962, i32 %2974)
  %2978 = select i1 %2976, i32 %2955, i32 %2975
  %2979 = icmp slt i32 %2972, %2977
  %2980 = call i32 @llvm.smin.i32(i32 %2972, i32 %2977)
  %2981 = select i1 %2979, i1 true, i1 %2976
  %2982 = select i1 %2981, i1 true, i1 %2973
  %2983 = select i1 %2982, i32 %2918, i32 %2922
  %2984 = select i1 %2979, i32 %2965, i32 %2978
  %2985 = add nuw i64 %2920, 3
  %2986 = trunc i64 %2985 to i32
  %2987 = icmp sgt i32 %2912, %2986
  br i1 %2987, label %2919, label %2988, !llvm.loop !114

2988:                                             ; preds = %2919
  %2989 = trunc i64 %2985 to i32
  br label %2990

2990:                                             ; preds = %2988, %2906
  %2991 = phi i32 [ 0, %2906 ], [ %2989, %2988 ]
  %2992 = phi i32 [ %2907, %2906 ], [ %2980, %2988 ]
  %2993 = phi i32 [ %2897, %2906 ], [ %2983, %2988 ]
  %2994 = phi i32 [ %2896, %2906 ], [ %2984, %2988 ]
  %2995 = add nsw i32 %2992, %2904
  %2996 = icmp slt i32 %2991, %2911
  br i1 %2996, label %2997, label %3034

2997:                                             ; preds = %2990
  %2998 = trunc i64 %2909 to i32
  %2999 = add i32 %2502, %2998
  %3000 = zext i32 %2991 to i64
  %3001 = trunc i64 %2895 to i32
  br label %3002

3002:                                             ; preds = %2997, %3002
  %3003 = phi i64 [ %3000, %2997 ], [ %3031, %3002 ]
  %3004 = phi i32 [ %2994, %2997 ], [ %3030, %3002 ]
  %3005 = phi i32 [ %2993, %2997 ], [ %3029, %3002 ]
  %3006 = phi i32 [ %2995, %2997 ], [ %3028, %3002 ]
  %3007 = load ptr, ptr %2578, align 8, !tbaa !70
  %3008 = getelementptr inbounds i16, ptr %2519, i64 %3003
  %3009 = load i16, ptr %3008, align 2, !tbaa !73
  %3010 = sext i16 %3009 to i32
  %3011 = add i32 %2999, %3010
  %3012 = sext i32 %3011 to i64
  %3013 = getelementptr inbounds i8, ptr %26, i64 %3012
  %3014 = call i32 %3007(ptr noundef %24, i32 noundef 16, ptr noundef %3013, i32 noundef %20) #6
  %3015 = load i16, ptr %3008, align 2, !tbaa !73
  %3016 = sext i16 %3015 to i32
  %3017 = add nsw i32 %2502, %3016
  %3018 = shl i32 %3017, 2
  %3019 = sext i32 %3018 to i64
  %3020 = getelementptr inbounds i16, ptr %54, i64 %3019
  %3021 = load i16, ptr %3020, align 2, !tbaa !73
  %3022 = zext i16 %3021 to i32
  %3023 = load i16, ptr %2902, align 2, !tbaa !73
  %3024 = zext i16 %3023 to i32
  %3025 = add i32 %3014, %3022
  %3026 = add i32 %3025, %3024
  %3027 = icmp slt i32 %3026, %3006
  %3028 = call i32 @llvm.smin.i32(i32 %3026, i32 %3006)
  %3029 = select i1 %3027, i32 %3001, i32 %3005
  %3030 = select i1 %3027, i32 %3017, i32 %3004
  %3031 = add nuw nsw i64 %3003, 1
  %3032 = trunc i64 %3031 to i32
  %3033 = icmp sgt i32 %2911, %3032
  br i1 %3033, label %3002, label %3034, !llvm.loop !115

3034:                                             ; preds = %3002, %2990, %2894
  %3035 = phi i32 [ %2898, %2894 ], [ %2995, %2990 ], [ %3028, %3002 ]
  %3036 = phi i32 [ %2897, %2894 ], [ %2993, %2990 ], [ %3029, %3002 ]
  %3037 = phi i32 [ %2896, %2894 ], [ %2994, %2990 ], [ %3030, %3002 ]
  %3038 = add nsw i64 %2895, 1
  %3039 = trunc i64 %3038 to i32
  %3040 = icmp eq i32 %2584, %3039
  br i1 %3040, label %3041, label %2894, !llvm.loop !116

3041:                                             ; preds = %3034, %2855, %2568, %2828
  %3042 = phi i32 [ %316, %2828 ], [ %316, %2568 ], [ %2889, %2855 ], [ %3035, %3034 ]
  %3043 = phi i32 [ %317, %2828 ], [ %317, %2568 ], [ %2890, %2855 ], [ %3036, %3034 ]
  %3044 = phi i32 [ %318, %2828 ], [ %318, %2568 ], [ %2891, %2855 ], [ %3037, %3034 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #6
  br label %3045

3045:                                             ; preds = %2494, %315, %3041, %689, %420
  %3046 = phi i32 [ %316, %315 ], [ %3042, %3041 ], [ %2496, %2494 ], [ %797, %689 ], [ %424, %420 ]
  %3047 = phi i32 [ %317, %315 ], [ %3043, %3041 ], [ %2497, %2494 ], [ %806, %689 ], [ %422, %420 ]
  %3048 = phi i32 [ %318, %315 ], [ %3044, %3041 ], [ %2498, %2494 ], [ %802, %689 ], [ %423, %420 ]
  %3049 = icmp slt i32 %294, %3046
  br i1 %3049, label %3050, label %3054

3050:                                             ; preds = %3045
  %3051 = trunc i32 %296 to i16
  %3052 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 13
  store i16 %3051, ptr %3052, align 4, !tbaa !73
  %3053 = trunc i32 %295 to i16
  br label %3060

3054:                                             ; preds = %3045
  %3055 = trunc i32 %3048 to i16
  %3056 = shl i16 %3055, 2
  %3057 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 13
  store i16 %3056, ptr %3057, align 4, !tbaa !73
  %3058 = trunc i32 %3047 to i16
  %3059 = shl i16 %3058, 2
  br label %3060

3060:                                             ; preds = %3054, %3050
  %3061 = phi i16 [ %3059, %3054 ], [ %3053, %3050 ]
  %3062 = phi i32 [ %3046, %3054 ], [ %294, %3050 ]
  %3063 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 13, i64 1
  store i16 %3061, ptr %3063, align 2, !tbaa !73
  %3064 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 12
  store i32 %3062, ptr %3064, align 8, !tbaa !117
  %3065 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 13
  %3066 = load i16, ptr %3065, align 4, !tbaa !73
  %3067 = sext i16 %3066 to i64
  %3068 = getelementptr inbounds i16, ptr %54, i64 %3067
  %3069 = load i16, ptr %3068, align 2, !tbaa !73
  %3070 = zext i16 %3069 to i32
  %3071 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 13, i64 1
  %3072 = load i16, ptr %3071, align 2, !tbaa !73
  %3073 = sext i16 %3072 to i64
  %3074 = getelementptr inbounds i16, ptr %59, i64 %3073
  %3075 = load i16, ptr %3074, align 2, !tbaa !73
  %3076 = zext i16 %3075 to i32
  %3077 = add nuw nsw i32 %3076, %3070
  %3078 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 11
  store i32 %3077, ptr %3078, align 4, !tbaa !118
  %3079 = icmp eq i32 %3048, %68
  %3080 = icmp eq i32 %3047, %70
  %3081 = select i1 %3079, i1 %3080, i1 false
  br i1 %3081, label %3082, label %3089

3082:                                             ; preds = %3060
  %3083 = load i32, ptr %71, align 8, !tbaa !75
  %3084 = icmp slt i32 %3083, 3
  br i1 %3084, label %3085, label %3089

3085:                                             ; preds = %3082
  %3086 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 12
  %3087 = load i32, ptr %3086, align 8, !tbaa !117
  %3088 = add nsw i32 %3087, %3077
  store i32 %3088, ptr %3086, align 8, !tbaa !117
  br label %3089

3089:                                             ; preds = %3085, %3082, %3060
  %3090 = load i32, ptr %71, align 8, !tbaa !75
  %3091 = icmp sgt i32 %3090, 1
  br i1 %3091, label %3092, label %3100

3092:                                             ; preds = %3089
  %3093 = zext nneg i32 %3090 to i64
  %3094 = getelementptr inbounds [11 x [4 x i8]], ptr @subpel_iterations, i64 0, i64 %3093, i64 2
  %3095 = load i8, ptr %3094, align 2, !tbaa !78
  %3096 = zext i8 %3095 to i32
  %3097 = getelementptr inbounds [11 x [4 x i8]], ptr @subpel_iterations, i64 0, i64 %3093, i64 3
  %3098 = load i8, ptr %3097, align 1, !tbaa !78
  %3099 = zext i8 %3098 to i32
  call fastcc void @refine_subpel(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %3096, i32 noundef %3099, ptr noundef %4, i32 noundef 0)
  br label %3100

3100:                                             ; preds = %3092, %3089
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @refine_subpel(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca [1152 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [4 x i32], align 16
  %17 = load i32, ptr %1, align 16, !tbaa !34
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %18
  %20 = load i32, ptr %19, align 8, !tbaa !40
  %21 = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %18, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !42
  %23 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !72
  %25 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 10
  %26 = load i16, ptr %25, align 16, !tbaa !73
  %27 = sext i16 %26 to i64
  %28 = sub nsw i64 0, %27
  %29 = getelementptr inbounds i16, ptr %24, i64 %28
  %30 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 10, i64 1
  %31 = load i16, ptr %30, align 2, !tbaa !73
  %32 = sext i16 %31 to i64
  %33 = sub nsw i64 0, %32
  %34 = getelementptr inbounds i16, ptr %24, i64 %33
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 11
  %36 = load i32, ptr %35, align 4, !tbaa !119
  %37 = icmp ne i32 %36, 0
  %38 = icmp slt i32 %17, 4
  %39 = and i1 %38, %37
  %40 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %41 = load i32, ptr %40, align 4, !tbaa !120
  %42 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !121
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %6
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %48 = load i32, ptr %47, align 4, !tbaa !122
  %49 = shl i32 %48, 2
  %50 = and i32 %49, 4
  %51 = add nsw i32 %50, -2
  br label %52

52:                                               ; preds = %6, %46
  %53 = phi i32 [ %51, %46 ], [ 0, %6 ]
  call void @llvm.lifetime.start.p0(i64 1152, ptr nonnull %7) #6
  %54 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 13
  %55 = load i16, ptr %54, align 4, !tbaa !73
  %56 = sext i16 %55 to i32
  %57 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 13, i64 1
  %58 = load i16, ptr %57, align 2, !tbaa !73
  %59 = sext i16 %58 to i32
  %60 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 12
  %61 = load i32, ptr %60, align 8, !tbaa !117
  %62 = icmp eq i32 %2, 0
  br i1 %62, label %120, label %63

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 10
  %65 = load i32, ptr %64, align 8, !tbaa !75
  %66 = icmp slt i32 %65, 3
  br i1 %66, label %67, label %120

67:                                               ; preds = %63
  %68 = sext i16 %26 to i32
  %69 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 20
  %70 = load i32, ptr %69, align 8, !tbaa !43
  %71 = add nsw i32 %70, 2
  %72 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21
  %73 = load i32, ptr %72, align 16, !tbaa !43
  %74 = add nsw i32 %73, -2
  %75 = icmp sgt i32 %71, %68
  %76 = tail call i32 @llvm.smin.i32(i32 %68, i32 %74)
  %77 = select i1 %75, i32 %71, i32 %76
  %78 = sext i16 %31 to i32
  %79 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 20, i64 1
  %80 = load i32, ptr %79, align 4, !tbaa !43
  %81 = add nsw i32 %80, 2
  %82 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21, i64 1
  %83 = load i32, ptr %82, align 4, !tbaa !43
  %84 = add nsw i32 %83, -2
  %85 = icmp sgt i32 %81, %78
  %86 = tail call i32 @llvm.smin.i32(i32 %78, i32 %84)
  %87 = select i1 %85, i32 %81, i32 %86
  %88 = icmp eq i32 %77, %56
  %89 = icmp eq i32 %87, %59
  %90 = and i1 %88, %89
  br i1 %90, label %120, label %91

91:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store i32 16, ptr %8, align 4, !tbaa !43
  %92 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !76
  %94 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5
  %95 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9
  %96 = load i32, ptr %95, align 8, !tbaa !43
  %97 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !77
  %99 = call ptr %93(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %94, i32 noundef %96, i32 noundef %77, i32 noundef %87, i32 noundef %20, i32 noundef %22, ptr noundef %98) #6
  %100 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %18
  %101 = load ptr, ptr %100, align 8, !tbaa !70
  %102 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7
  %103 = load ptr, ptr %102, align 8, !tbaa !70
  %104 = load i32, ptr %8, align 4, !tbaa !43
  %105 = call i32 %101(ptr noundef %103, i32 noundef 16, ptr noundef %99, i32 noundef %104) #6
  %106 = sext i32 %77 to i64
  %107 = getelementptr inbounds i16, ptr %29, i64 %106
  %108 = load i16, ptr %107, align 2, !tbaa !73
  %109 = zext i16 %108 to i32
  %110 = add nsw i32 %105, %109
  %111 = sext i32 %87 to i64
  %112 = getelementptr inbounds i16, ptr %34, i64 %111
  %113 = load i16, ptr %112, align 2, !tbaa !73
  %114 = zext i16 %113 to i32
  %115 = add nsw i32 %110, %114
  %116 = icmp slt i32 %115, %61
  %117 = call i32 @llvm.smin.i32(i32 %115, i32 %61)
  %118 = select i1 %116, i32 %87, i32 %59
  %119 = select i1 %116, i32 %77, i32 %56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  br label %120

120:                                              ; preds = %67, %91, %63, %52
  %121 = phi i32 [ %61, %63 ], [ %61, %52 ], [ %117, %91 ], [ %61, %67 ]
  %122 = phi i32 [ %59, %63 ], [ %59, %52 ], [ %118, %91 ], [ %59, %67 ]
  %123 = phi i32 [ %56, %63 ], [ %56, %52 ], [ %119, %91 ], [ %56, %67 ]
  %124 = icmp sgt i32 %2, 0
  br i1 %124, label %125, label %216

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 1
  %127 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5
  %128 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9
  %129 = add nsw i32 %22, 1
  %130 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 4
  %131 = getelementptr inbounds i8, ptr %7, i64 32
  %132 = add nsw i32 %20, 4
  %133 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 9, i64 %18
  %134 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7
  %135 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 1
  %136 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 2
  %137 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 3
  br label %138

138:                                              ; preds = %138, %125
  %139 = phi i32 [ %123, %125 ], [ %210, %138 ]
  %140 = phi i32 [ %122, %125 ], [ %209, %138 ]
  %141 = phi i32 [ %121, %125 ], [ %207, %138 ]
  %142 = phi i32 [ %2, %125 ], [ %213, %138 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #6
  store i32 64, ptr %10, align 4, !tbaa !43
  %143 = load ptr, ptr %126, align 8, !tbaa !76
  %144 = load i32, ptr %128, align 8, !tbaa !43
  %145 = add nsw i32 %140, -2
  %146 = load ptr, ptr %130, align 8, !tbaa !77
  %147 = call ptr %143(ptr noundef nonnull %7, ptr noundef nonnull %10, ptr noundef nonnull %127, i32 noundef %144, i32 noundef %139, i32 noundef %145, i32 noundef %20, i32 noundef %129, ptr noundef %146) #6
  %148 = load ptr, ptr %126, align 8, !tbaa !76
  %149 = load i32, ptr %128, align 8, !tbaa !43
  %150 = add nsw i32 %139, -2
  %151 = load ptr, ptr %130, align 8, !tbaa !77
  %152 = call ptr %148(ptr noundef nonnull %131, ptr noundef nonnull %10, ptr noundef nonnull %127, i32 noundef %149, i32 noundef %150, i32 noundef %140, i32 noundef %132, i32 noundef %22, ptr noundef %151) #6
  %153 = load i32, ptr %10, align 4, !tbaa !43
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, ptr %147, i64 %154
  %156 = getelementptr inbounds i8, ptr %152, i64 1
  %157 = load ptr, ptr %133, align 8, !tbaa !70
  %158 = load ptr, ptr %134, align 8, !tbaa !70
  call void %157(ptr noundef %158, ptr noundef %147, ptr noundef %155, ptr noundef %152, ptr noundef nonnull %156, i32 noundef %153, ptr noundef nonnull %9) #6
  %159 = load i32, ptr %9, align 16, !tbaa !43
  %160 = sext i32 %139 to i64
  %161 = getelementptr inbounds i16, ptr %29, i64 %160
  %162 = load i16, ptr %161, align 2, !tbaa !73
  %163 = zext i16 %162 to i32
  %164 = add nsw i32 %159, %163
  %165 = sext i32 %145 to i64
  %166 = getelementptr inbounds i16, ptr %34, i64 %165
  %167 = load i16, ptr %166, align 2, !tbaa !73
  %168 = zext i16 %167 to i32
  %169 = add nsw i32 %164, %168
  %170 = icmp slt i32 %169, %141
  %171 = call i32 @llvm.smin.i32(i32 %169, i32 %141)
  %172 = select i1 %170, i32 %145, i32 %140
  %173 = load i32, ptr %135, align 4, !tbaa !43
  %174 = add nsw i32 %173, %163
  %175 = add nsw i32 %140, 2
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i16, ptr %34, i64 %176
  %178 = load i16, ptr %177, align 2, !tbaa !73
  %179 = zext i16 %178 to i32
  %180 = add nsw i32 %174, %179
  %181 = icmp slt i32 %180, %171
  %182 = call i32 @llvm.smin.i32(i32 %180, i32 %171)
  %183 = select i1 %181, i32 %175, i32 %172
  %184 = load i32, ptr %136, align 8, !tbaa !43
  %185 = sext i32 %150 to i64
  %186 = getelementptr inbounds i16, ptr %29, i64 %185
  %187 = load i16, ptr %186, align 2, !tbaa !73
  %188 = zext i16 %187 to i32
  %189 = add nsw i32 %184, %188
  %190 = sext i32 %140 to i64
  %191 = getelementptr inbounds i16, ptr %34, i64 %190
  %192 = load i16, ptr %191, align 2, !tbaa !73
  %193 = zext i16 %192 to i32
  %194 = add nsw i32 %189, %193
  %195 = icmp slt i32 %194, %182
  %196 = call i32 @llvm.smin.i32(i32 %194, i32 %182)
  %197 = select i1 %195, i32 %150, i32 %139
  %198 = load i32, ptr %137, align 4, !tbaa !43
  %199 = add nsw i32 %139, 2
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i16, ptr %29, i64 %200
  %202 = load i16, ptr %201, align 2, !tbaa !73
  %203 = zext i16 %202 to i32
  %204 = add i32 %198, %193
  %205 = add i32 %204, %203
  %206 = icmp slt i32 %205, %196
  %207 = call i32 @llvm.smin.i32(i32 %205, i32 %196)
  %208 = select i1 %206, i1 true, i1 %195
  %209 = select i1 %208, i32 %140, i32 %183
  %210 = select i1 %206, i32 %199, i32 %197
  %211 = icmp ne i32 %209, %140
  %212 = or i1 %208, %211
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6
  %213 = add nsw i32 %142, -1
  %214 = icmp sgt i32 %142, 1
  %215 = select i1 %212, i1 %214, i1 false
  br i1 %215, label %138, label %216, !llvm.loop !123

216:                                              ; preds = %138, %120
  %217 = phi i32 [ %121, %120 ], [ %207, %138 ]
  %218 = phi i32 [ %122, %120 ], [ %209, %138 ]
  %219 = phi i32 [ %123, %120 ], [ %210, %138 ]
  %220 = icmp ne i32 %5, 0
  br i1 %220, label %311, label %221

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 6
  %223 = load ptr, ptr %222, align 8, !tbaa !70
  %224 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7
  %225 = load ptr, ptr %224, align 8, !tbaa !70
  %226 = icmp ne ptr %223, %225
  %227 = select i1 %226, i1 true, i1 %39
  br i1 %227, label %228, label %311

228:                                              ; preds = %221
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #6
  store i32 16, ptr %11, align 4, !tbaa !43
  %229 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 1
  %230 = load ptr, ptr %229, align 8, !tbaa !76
  %231 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5
  %232 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9
  %233 = load i32, ptr %232, align 8, !tbaa !43
  %234 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 4
  %235 = load ptr, ptr %234, align 8, !tbaa !77
  %236 = call ptr %230(ptr noundef nonnull %7, ptr noundef nonnull %11, ptr noundef nonnull %231, i32 noundef %233, i32 noundef %219, i32 noundef %218, i32 noundef %20, i32 noundef %22, ptr noundef %235) #6
  %237 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 6, i64 %18
  %238 = load ptr, ptr %237, align 8, !tbaa !70
  %239 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7
  %240 = load ptr, ptr %239, align 8, !tbaa !70
  %241 = load i32, ptr %11, align 4, !tbaa !43
  %242 = call i32 %238(ptr noundef %240, i32 noundef 16, ptr noundef %236, i32 noundef %241) #6
  %243 = sext i32 %219 to i64
  %244 = getelementptr inbounds i16, ptr %29, i64 %243
  %245 = load i16, ptr %244, align 2, !tbaa !73
  %246 = zext i16 %245 to i32
  %247 = add nsw i32 %242, %246
  %248 = sext i32 %218 to i64
  %249 = getelementptr inbounds i16, ptr %34, i64 %248
  %250 = load i16, ptr %249, align 2, !tbaa !73
  %251 = zext i16 %250 to i32
  %252 = add nsw i32 %247, %251
  %253 = icmp slt i32 %252, 268435456
  %254 = select i1 %39, i1 %253, i1 false
  br i1 %254, label %255, label %308

255:                                              ; preds = %228
  %256 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %257 = load ptr, ptr %256, align 8, !tbaa !124
  %258 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 4
  %259 = load ptr, ptr %258, align 16, !tbaa !70
  %260 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9, i64 1
  %261 = load i32, ptr %260, align 4, !tbaa !43
  %262 = add nsw i32 %218, %53
  %263 = sdiv i32 %20, 2
  %264 = sdiv i32 %22, 2
  call void %257(ptr noundef nonnull %7, i32 noundef 8, ptr noundef %259, i32 noundef %261, i32 noundef %219, i32 noundef %262, i32 noundef %263, i32 noundef %264) #6
  %265 = load ptr, ptr %234, align 8, !tbaa !77
  %266 = getelementptr inbounds %struct.x264_weight_t, ptr %265, i64 1, i32 5
  %267 = load ptr, ptr %266, align 16, !tbaa !125
  %268 = icmp eq ptr %267, null
  br i1 %268, label %276, label %269

269:                                              ; preds = %255
  %270 = getelementptr inbounds %struct.x264_weight_t, ptr %265, i64 1
  %271 = ashr i32 %20, 3
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds ptr, ptr %267, i64 %272
  %274 = load ptr, ptr %273, align 8, !tbaa !70
  %275 = ashr i32 %22, 1
  call void %274(ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %270, i32 noundef %275) #6
  br label %276

276:                                              ; preds = %269, %255
  %277 = add nsw i32 %17, 3
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 5, i64 %278
  %280 = load ptr, ptr %279, align 8, !tbaa !70
  %281 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7, i64 1
  %282 = load ptr, ptr %281, align 8, !tbaa !70
  %283 = call i32 %280(ptr noundef %282, i32 noundef 16, ptr noundef nonnull %7, i32 noundef 8) #6
  %284 = add nsw i32 %283, %252
  %285 = icmp slt i32 %284, 268435456
  br i1 %285, label %286, label %308

286:                                              ; preds = %276
  %287 = load ptr, ptr %256, align 8, !tbaa !124
  %288 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 5
  %289 = load ptr, ptr %288, align 8, !tbaa !70
  %290 = load i32, ptr %260, align 4, !tbaa !43
  call void %287(ptr noundef nonnull %7, i32 noundef 8, ptr noundef %289, i32 noundef %290, i32 noundef %219, i32 noundef %262, i32 noundef %263, i32 noundef %264) #6
  %291 = load ptr, ptr %234, align 8, !tbaa !77
  %292 = getelementptr inbounds %struct.x264_weight_t, ptr %291, i64 2, i32 5
  %293 = load ptr, ptr %292, align 16, !tbaa !125
  %294 = icmp eq ptr %293, null
  br i1 %294, label %302, label %295

295:                                              ; preds = %286
  %296 = getelementptr inbounds %struct.x264_weight_t, ptr %291, i64 2
  %297 = ashr i32 %20, 3
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds ptr, ptr %293, i64 %298
  %300 = load ptr, ptr %299, align 8, !tbaa !70
  %301 = ashr i32 %22, 1
  call void %300(ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %296, i32 noundef %301) #6
  br label %302

302:                                              ; preds = %295, %286
  %303 = load ptr, ptr %279, align 8, !tbaa !70
  %304 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7, i64 2
  %305 = load ptr, ptr %304, align 8, !tbaa !70
  %306 = call i32 %303(ptr noundef %305, i32 noundef 16, ptr noundef nonnull %7, i32 noundef 8) #6
  %307 = add nsw i32 %306, %284
  br label %308

308:                                              ; preds = %276, %302, %228
  %309 = phi i32 [ %307, %302 ], [ %284, %276 ], [ %252, %228 ]
  %310 = call i32 @llvm.smin.i32(i32 %309, i32 268435456)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #6
  br label %311

311:                                              ; preds = %308, %221, %216
  %312 = phi i32 [ %217, %216 ], [ %310, %308 ], [ %217, %221 ]
  %313 = icmp eq ptr %4, null
  br i1 %313, label %325, label %314

314:                                              ; preds = %311
  %315 = mul nsw i32 %312, 7
  %316 = ashr i32 %315, 3
  %317 = load i32, ptr %4, align 4, !tbaa !43
  %318 = icmp sgt i32 %316, %317
  br i1 %318, label %319, label %322

319:                                              ; preds = %314
  store i32 %312, ptr %60, align 8, !tbaa !117
  %320 = trunc i32 %219 to i16
  store i16 %320, ptr %54, align 4, !tbaa !73
  %321 = trunc i32 %218 to i16
  store i16 %321, ptr %57, align 2, !tbaa !73
  br label %851

322:                                              ; preds = %314
  %323 = icmp slt i32 %312, %317
  br i1 %323, label %324, label %325

324:                                              ; preds = %322
  store i32 %312, ptr %4, align 4, !tbaa !43
  br label %325

325:                                              ; preds = %324, %322, %311
  %326 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 10
  %327 = load i32, ptr %326, align 8, !tbaa !75
  %328 = icmp sgt i32 %327, 1
  %329 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 20
  %330 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 20, i64 1
  br i1 %328, label %331, label %740

331:                                              ; preds = %325
  %332 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21
  %333 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21, i64 1
  %334 = icmp sgt i32 %3, 0
  br i1 %334, label %335, label %835

335:                                              ; preds = %331
  %336 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 1
  %337 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5
  %338 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9
  %339 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 4
  %340 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 6, i64 %18
  %341 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7
  %342 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %343 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 4
  %344 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9, i64 1
  %345 = sdiv i32 %20, 2
  %346 = sdiv i32 %22, 2
  %347 = ashr i32 %20, 3
  %348 = sext i32 %347 to i64
  %349 = ashr i32 %22, 1
  %350 = add nsw i32 %17, 3
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 5, i64 %351
  %353 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7, i64 1
  %354 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 5
  %355 = ashr i32 %20, 3
  %356 = sext i32 %355 to i64
  %357 = ashr i32 %22, 1
  %358 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7, i64 2
  %359 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 1
  %360 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5
  %361 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9
  %362 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 4
  %363 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 6, i64 %18
  %364 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7
  %365 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %366 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 4
  %367 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9, i64 1
  %368 = sdiv i32 %20, 2
  %369 = sdiv i32 %22, 2
  %370 = ashr i32 %20, 3
  %371 = sext i32 %370 to i64
  %372 = ashr i32 %22, 1
  %373 = add nsw i32 %17, 3
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 5, i64 %374
  %376 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7, i64 1
  %377 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 5
  %378 = ashr i32 %20, 3
  %379 = sext i32 %378 to i64
  %380 = ashr i32 %22, 1
  %381 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7, i64 2
  %382 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 1
  %383 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5
  %384 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9
  %385 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 4
  %386 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 6, i64 %18
  %387 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7
  %388 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %389 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 4
  %390 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9, i64 1
  %391 = sdiv i32 %20, 2
  %392 = sdiv i32 %22, 2
  %393 = ashr i32 %20, 3
  %394 = sext i32 %393 to i64
  %395 = ashr i32 %22, 1
  %396 = add nsw i32 %17, 3
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 5, i64 %397
  %399 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7, i64 1
  %400 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 5
  %401 = ashr i32 %20, 3
  %402 = sext i32 %401 to i64
  %403 = ashr i32 %22, 1
  %404 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7, i64 2
  %405 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 1
  %406 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5
  %407 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9
  %408 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 4
  %409 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 6, i64 %18
  %410 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7
  %411 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %412 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 4
  %413 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9, i64 1
  %414 = sdiv i32 %20, 2
  %415 = sdiv i32 %22, 2
  %416 = ashr i32 %20, 3
  %417 = sext i32 %416 to i64
  %418 = ashr i32 %22, 1
  %419 = add nsw i32 %17, 3
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 5, i64 %420
  %422 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7, i64 1
  %423 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 5
  %424 = ashr i32 %20, 3
  %425 = sext i32 %424 to i64
  %426 = ashr i32 %22, 1
  %427 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7, i64 2
  br label %428

428:                                              ; preds = %729, %335
  %429 = phi i32 [ %219, %335 ], [ %733, %729 ]
  %430 = phi i32 [ %218, %335 ], [ %732, %729 ]
  %431 = phi i32 [ %312, %335 ], [ %731, %729 ]
  %432 = phi i32 [ -1, %335 ], [ %730, %729 ]
  %433 = phi i32 [ %3, %335 ], [ %737, %729 ]
  %434 = load i32, ptr %330, align 4, !tbaa !43
  %435 = icmp sgt i32 %430, %434
  br i1 %435, label %436, label %835

436:                                              ; preds = %428
  %437 = load i32, ptr %333, align 4, !tbaa !43
  %438 = icmp slt i32 %430, %437
  br i1 %438, label %439, label %835

439:                                              ; preds = %436
  %440 = load i32, ptr %329, align 8, !tbaa !43
  %441 = icmp sgt i32 %429, %440
  br i1 %441, label %442, label %835

442:                                              ; preds = %439
  %443 = load i32, ptr %332, align 16, !tbaa !43
  %444 = icmp slt i32 %429, %443
  br i1 %444, label %445, label %835

445:                                              ; preds = %442
  %446 = icmp ne i32 %432, 1
  %447 = select i1 %220, i1 true, i1 %446
  br i1 %447, label %448, label %512

448:                                              ; preds = %445
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #6
  store i32 16, ptr %12, align 4, !tbaa !43
  %449 = load ptr, ptr %336, align 8, !tbaa !76
  %450 = load i32, ptr %338, align 8, !tbaa !43
  %451 = add nsw i32 %430, -1
  %452 = load ptr, ptr %339, align 8, !tbaa !77
  %453 = call ptr %449(ptr noundef nonnull %7, ptr noundef nonnull %12, ptr noundef nonnull %337, i32 noundef %450, i32 noundef %429, i32 noundef %451, i32 noundef %20, i32 noundef %22, ptr noundef %452) #6
  %454 = load ptr, ptr %340, align 8, !tbaa !70
  %455 = load ptr, ptr %341, align 8, !tbaa !70
  %456 = load i32, ptr %12, align 4, !tbaa !43
  %457 = call i32 %454(ptr noundef %455, i32 noundef 16, ptr noundef %453, i32 noundef %456) #6
  %458 = sext i32 %429 to i64
  %459 = getelementptr inbounds i16, ptr %29, i64 %458
  %460 = load i16, ptr %459, align 2, !tbaa !73
  %461 = zext i16 %460 to i32
  %462 = add nsw i32 %457, %461
  %463 = sext i32 %451 to i64
  %464 = getelementptr inbounds i16, ptr %34, i64 %463
  %465 = load i16, ptr %464, align 2, !tbaa !73
  %466 = zext i16 %465 to i32
  %467 = add nsw i32 %462, %466
  %468 = icmp slt i32 %467, %431
  %469 = select i1 %39, i1 %468, i1 false
  br i1 %469, label %470, label %506

470:                                              ; preds = %448
  %471 = load ptr, ptr %342, align 8, !tbaa !124
  %472 = load ptr, ptr %343, align 16, !tbaa !70
  %473 = load i32, ptr %344, align 4, !tbaa !43
  %474 = add nsw i32 %451, %53
  call void %471(ptr noundef nonnull %7, i32 noundef 8, ptr noundef %472, i32 noundef %473, i32 noundef %429, i32 noundef %474, i32 noundef %345, i32 noundef %346) #6
  %475 = load ptr, ptr %339, align 8, !tbaa !77
  %476 = getelementptr inbounds %struct.x264_weight_t, ptr %475, i64 1, i32 5
  %477 = load ptr, ptr %476, align 16, !tbaa !125
  %478 = icmp eq ptr %477, null
  br i1 %478, label %483, label %479

479:                                              ; preds = %470
  %480 = getelementptr inbounds %struct.x264_weight_t, ptr %475, i64 1
  %481 = getelementptr inbounds ptr, ptr %477, i64 %348
  %482 = load ptr, ptr %481, align 8, !tbaa !70
  call void %482(ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %480, i32 noundef %349) #6
  br label %483

483:                                              ; preds = %479, %470
  %484 = load ptr, ptr %352, align 8, !tbaa !70
  %485 = load ptr, ptr %353, align 8, !tbaa !70
  %486 = call i32 %484(ptr noundef %485, i32 noundef 16, ptr noundef nonnull %7, i32 noundef 8) #6
  %487 = add nsw i32 %486, %467
  %488 = icmp slt i32 %487, %431
  br i1 %488, label %489, label %506

489:                                              ; preds = %483
  %490 = load ptr, ptr %342, align 8, !tbaa !124
  %491 = load ptr, ptr %354, align 8, !tbaa !70
  %492 = load i32, ptr %344, align 4, !tbaa !43
  call void %490(ptr noundef nonnull %7, i32 noundef 8, ptr noundef %491, i32 noundef %492, i32 noundef %429, i32 noundef %474, i32 noundef %345, i32 noundef %346) #6
  %493 = load ptr, ptr %339, align 8, !tbaa !77
  %494 = getelementptr inbounds %struct.x264_weight_t, ptr %493, i64 2, i32 5
  %495 = load ptr, ptr %494, align 16, !tbaa !125
  %496 = icmp eq ptr %495, null
  br i1 %496, label %501, label %497

497:                                              ; preds = %489
  %498 = getelementptr inbounds %struct.x264_weight_t, ptr %493, i64 2
  %499 = getelementptr inbounds ptr, ptr %495, i64 %356
  %500 = load ptr, ptr %499, align 8, !tbaa !70
  call void %500(ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %498, i32 noundef %357) #6
  br label %501

501:                                              ; preds = %497, %489
  %502 = load ptr, ptr %352, align 8, !tbaa !70
  %503 = load ptr, ptr %358, align 8, !tbaa !70
  %504 = call i32 %502(ptr noundef %503, i32 noundef 16, ptr noundef nonnull %7, i32 noundef 8) #6
  %505 = add nsw i32 %504, %487
  br label %506

506:                                              ; preds = %483, %501, %448
  %507 = phi i32 [ %505, %501 ], [ %487, %483 ], [ %467, %448 ]
  %508 = icmp slt i32 %507, %431
  %509 = select i1 %508, i32 0, i32 %432
  %510 = call i32 @llvm.smin.i32(i32 %507, i32 %431)
  %511 = select i1 %508, i32 %451, i32 %430
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #6
  br label %512

512:                                              ; preds = %445, %506
  %513 = phi i32 [ %509, %506 ], [ 1, %445 ]
  %514 = phi i32 [ %510, %506 ], [ %431, %445 ]
  %515 = phi i32 [ %511, %506 ], [ %430, %445 ]
  %516 = icmp ne i32 %432, 0
  %517 = select i1 %220, i1 true, i1 %516
  br i1 %517, label %518, label %582

518:                                              ; preds = %512
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #6
  store i32 16, ptr %13, align 4, !tbaa !43
  %519 = load ptr, ptr %359, align 8, !tbaa !76
  %520 = load i32, ptr %361, align 8, !tbaa !43
  %521 = add nsw i32 %430, 1
  %522 = load ptr, ptr %362, align 8, !tbaa !77
  %523 = call ptr %519(ptr noundef nonnull %7, ptr noundef nonnull %13, ptr noundef nonnull %360, i32 noundef %520, i32 noundef %429, i32 noundef %521, i32 noundef %20, i32 noundef %22, ptr noundef %522) #6
  %524 = load ptr, ptr %363, align 8, !tbaa !70
  %525 = load ptr, ptr %364, align 8, !tbaa !70
  %526 = load i32, ptr %13, align 4, !tbaa !43
  %527 = call i32 %524(ptr noundef %525, i32 noundef 16, ptr noundef %523, i32 noundef %526) #6
  %528 = sext i32 %429 to i64
  %529 = getelementptr inbounds i16, ptr %29, i64 %528
  %530 = load i16, ptr %529, align 2, !tbaa !73
  %531 = zext i16 %530 to i32
  %532 = add nsw i32 %527, %531
  %533 = sext i32 %521 to i64
  %534 = getelementptr inbounds i16, ptr %34, i64 %533
  %535 = load i16, ptr %534, align 2, !tbaa !73
  %536 = zext i16 %535 to i32
  %537 = add nsw i32 %532, %536
  %538 = icmp slt i32 %537, %514
  %539 = select i1 %39, i1 %538, i1 false
  br i1 %539, label %540, label %576

540:                                              ; preds = %518
  %541 = load ptr, ptr %365, align 8, !tbaa !124
  %542 = load ptr, ptr %366, align 16, !tbaa !70
  %543 = load i32, ptr %367, align 4, !tbaa !43
  %544 = add nsw i32 %521, %53
  call void %541(ptr noundef nonnull %7, i32 noundef 8, ptr noundef %542, i32 noundef %543, i32 noundef %429, i32 noundef %544, i32 noundef %368, i32 noundef %369) #6
  %545 = load ptr, ptr %362, align 8, !tbaa !77
  %546 = getelementptr inbounds %struct.x264_weight_t, ptr %545, i64 1, i32 5
  %547 = load ptr, ptr %546, align 16, !tbaa !125
  %548 = icmp eq ptr %547, null
  br i1 %548, label %553, label %549

549:                                              ; preds = %540
  %550 = getelementptr inbounds %struct.x264_weight_t, ptr %545, i64 1
  %551 = getelementptr inbounds ptr, ptr %547, i64 %371
  %552 = load ptr, ptr %551, align 8, !tbaa !70
  call void %552(ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %550, i32 noundef %372) #6
  br label %553

553:                                              ; preds = %549, %540
  %554 = load ptr, ptr %375, align 8, !tbaa !70
  %555 = load ptr, ptr %376, align 8, !tbaa !70
  %556 = call i32 %554(ptr noundef %555, i32 noundef 16, ptr noundef nonnull %7, i32 noundef 8) #6
  %557 = add nsw i32 %556, %537
  %558 = icmp slt i32 %557, %514
  br i1 %558, label %559, label %576

559:                                              ; preds = %553
  %560 = load ptr, ptr %365, align 8, !tbaa !124
  %561 = load ptr, ptr %377, align 8, !tbaa !70
  %562 = load i32, ptr %367, align 4, !tbaa !43
  call void %560(ptr noundef nonnull %7, i32 noundef 8, ptr noundef %561, i32 noundef %562, i32 noundef %429, i32 noundef %544, i32 noundef %368, i32 noundef %369) #6
  %563 = load ptr, ptr %362, align 8, !tbaa !77
  %564 = getelementptr inbounds %struct.x264_weight_t, ptr %563, i64 2, i32 5
  %565 = load ptr, ptr %564, align 16, !tbaa !125
  %566 = icmp eq ptr %565, null
  br i1 %566, label %571, label %567

567:                                              ; preds = %559
  %568 = getelementptr inbounds %struct.x264_weight_t, ptr %563, i64 2
  %569 = getelementptr inbounds ptr, ptr %565, i64 %379
  %570 = load ptr, ptr %569, align 8, !tbaa !70
  call void %570(ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %568, i32 noundef %380) #6
  br label %571

571:                                              ; preds = %567, %559
  %572 = load ptr, ptr %375, align 8, !tbaa !70
  %573 = load ptr, ptr %381, align 8, !tbaa !70
  %574 = call i32 %572(ptr noundef %573, i32 noundef 16, ptr noundef nonnull %7, i32 noundef 8) #6
  %575 = add nsw i32 %574, %557
  br label %576

576:                                              ; preds = %553, %571, %518
  %577 = phi i32 [ %575, %571 ], [ %557, %553 ], [ %537, %518 ]
  %578 = icmp slt i32 %577, %514
  %579 = select i1 %578, i32 1, i32 %513
  %580 = call i32 @llvm.smin.i32(i32 %577, i32 %514)
  %581 = select i1 %578, i32 %521, i32 %515
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #6
  br label %582

582:                                              ; preds = %512, %576
  %583 = phi i32 [ %579, %576 ], [ %513, %512 ]
  %584 = phi i32 [ %580, %576 ], [ %514, %512 ]
  %585 = phi i32 [ %581, %576 ], [ %515, %512 ]
  %586 = icmp ne i32 %432, 3
  %587 = select i1 %220, i1 true, i1 %586
  br i1 %587, label %588, label %655

588:                                              ; preds = %582
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #6
  store i32 16, ptr %14, align 4, !tbaa !43
  %589 = load ptr, ptr %382, align 8, !tbaa !76
  %590 = load i32, ptr %384, align 8, !tbaa !43
  %591 = add nsw i32 %429, -1
  %592 = load ptr, ptr %385, align 8, !tbaa !77
  %593 = call ptr %589(ptr noundef nonnull %7, ptr noundef nonnull %14, ptr noundef nonnull %383, i32 noundef %590, i32 noundef %591, i32 noundef %430, i32 noundef %20, i32 noundef %22, ptr noundef %592) #6
  %594 = load ptr, ptr %386, align 8, !tbaa !70
  %595 = load ptr, ptr %387, align 8, !tbaa !70
  %596 = load i32, ptr %14, align 4, !tbaa !43
  %597 = call i32 %594(ptr noundef %595, i32 noundef 16, ptr noundef %593, i32 noundef %596) #6
  %598 = sext i32 %591 to i64
  %599 = getelementptr inbounds i16, ptr %29, i64 %598
  %600 = load i16, ptr %599, align 2, !tbaa !73
  %601 = zext i16 %600 to i32
  %602 = add nsw i32 %597, %601
  %603 = sext i32 %430 to i64
  %604 = getelementptr inbounds i16, ptr %34, i64 %603
  %605 = load i16, ptr %604, align 2, !tbaa !73
  %606 = zext i16 %605 to i32
  %607 = add nsw i32 %602, %606
  %608 = icmp slt i32 %607, %584
  %609 = select i1 %39, i1 %608, i1 false
  br i1 %609, label %610, label %646

610:                                              ; preds = %588
  %611 = load ptr, ptr %388, align 8, !tbaa !124
  %612 = load ptr, ptr %389, align 16, !tbaa !70
  %613 = load i32, ptr %390, align 4, !tbaa !43
  %614 = add nsw i32 %430, %53
  call void %611(ptr noundef nonnull %7, i32 noundef 8, ptr noundef %612, i32 noundef %613, i32 noundef %591, i32 noundef %614, i32 noundef %391, i32 noundef %392) #6
  %615 = load ptr, ptr %385, align 8, !tbaa !77
  %616 = getelementptr inbounds %struct.x264_weight_t, ptr %615, i64 1, i32 5
  %617 = load ptr, ptr %616, align 16, !tbaa !125
  %618 = icmp eq ptr %617, null
  br i1 %618, label %623, label %619

619:                                              ; preds = %610
  %620 = getelementptr inbounds %struct.x264_weight_t, ptr %615, i64 1
  %621 = getelementptr inbounds ptr, ptr %617, i64 %394
  %622 = load ptr, ptr %621, align 8, !tbaa !70
  call void %622(ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %620, i32 noundef %395) #6
  br label %623

623:                                              ; preds = %619, %610
  %624 = load ptr, ptr %398, align 8, !tbaa !70
  %625 = load ptr, ptr %399, align 8, !tbaa !70
  %626 = call i32 %624(ptr noundef %625, i32 noundef 16, ptr noundef nonnull %7, i32 noundef 8) #6
  %627 = add nsw i32 %626, %607
  %628 = icmp slt i32 %627, %584
  br i1 %628, label %629, label %646

629:                                              ; preds = %623
  %630 = load ptr, ptr %388, align 8, !tbaa !124
  %631 = load ptr, ptr %400, align 8, !tbaa !70
  %632 = load i32, ptr %390, align 4, !tbaa !43
  call void %630(ptr noundef nonnull %7, i32 noundef 8, ptr noundef %631, i32 noundef %632, i32 noundef %591, i32 noundef %614, i32 noundef %391, i32 noundef %392) #6
  %633 = load ptr, ptr %385, align 8, !tbaa !77
  %634 = getelementptr inbounds %struct.x264_weight_t, ptr %633, i64 2, i32 5
  %635 = load ptr, ptr %634, align 16, !tbaa !125
  %636 = icmp eq ptr %635, null
  br i1 %636, label %641, label %637

637:                                              ; preds = %629
  %638 = getelementptr inbounds %struct.x264_weight_t, ptr %633, i64 2
  %639 = getelementptr inbounds ptr, ptr %635, i64 %402
  %640 = load ptr, ptr %639, align 8, !tbaa !70
  call void %640(ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %638, i32 noundef %403) #6
  br label %641

641:                                              ; preds = %637, %629
  %642 = load ptr, ptr %398, align 8, !tbaa !70
  %643 = load ptr, ptr %404, align 8, !tbaa !70
  %644 = call i32 %642(ptr noundef %643, i32 noundef 16, ptr noundef nonnull %7, i32 noundef 8) #6
  %645 = add nsw i32 %644, %627
  br label %646

646:                                              ; preds = %623, %641, %588
  %647 = phi i32 [ %645, %641 ], [ %627, %623 ], [ %607, %588 ]
  %648 = icmp slt i32 %647, %584
  br i1 %648, label %649, label %650

649:                                              ; preds = %646
  br label %650

650:                                              ; preds = %649, %646
  %651 = phi i32 [ 2, %649 ], [ %583, %646 ]
  %652 = phi i32 [ %647, %649 ], [ %584, %646 ]
  %653 = phi i32 [ %430, %649 ], [ %585, %646 ]
  %654 = phi i32 [ %591, %649 ], [ %429, %646 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #6
  br label %655

655:                                              ; preds = %582, %650
  %656 = phi i32 [ %651, %650 ], [ %583, %582 ]
  %657 = phi i32 [ %652, %650 ], [ %584, %582 ]
  %658 = phi i32 [ %653, %650 ], [ %585, %582 ]
  %659 = phi i32 [ %654, %650 ], [ %429, %582 ]
  %660 = icmp ne i32 %432, 2
  %661 = select i1 %220, i1 true, i1 %660
  br i1 %661, label %662, label %729

662:                                              ; preds = %655
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #6
  store i32 16, ptr %15, align 4, !tbaa !43
  %663 = load ptr, ptr %405, align 8, !tbaa !76
  %664 = load i32, ptr %407, align 8, !tbaa !43
  %665 = add nsw i32 %429, 1
  %666 = load ptr, ptr %408, align 8, !tbaa !77
  %667 = call ptr %663(ptr noundef nonnull %7, ptr noundef nonnull %15, ptr noundef nonnull %406, i32 noundef %664, i32 noundef %665, i32 noundef %430, i32 noundef %20, i32 noundef %22, ptr noundef %666) #6
  %668 = load ptr, ptr %409, align 8, !tbaa !70
  %669 = load ptr, ptr %410, align 8, !tbaa !70
  %670 = load i32, ptr %15, align 4, !tbaa !43
  %671 = call i32 %668(ptr noundef %669, i32 noundef 16, ptr noundef %667, i32 noundef %670) #6
  %672 = sext i32 %665 to i64
  %673 = getelementptr inbounds i16, ptr %29, i64 %672
  %674 = load i16, ptr %673, align 2, !tbaa !73
  %675 = zext i16 %674 to i32
  %676 = add nsw i32 %671, %675
  %677 = sext i32 %430 to i64
  %678 = getelementptr inbounds i16, ptr %34, i64 %677
  %679 = load i16, ptr %678, align 2, !tbaa !73
  %680 = zext i16 %679 to i32
  %681 = add nsw i32 %676, %680
  %682 = icmp slt i32 %681, %657
  %683 = select i1 %39, i1 %682, i1 false
  br i1 %683, label %684, label %720

684:                                              ; preds = %662
  %685 = load ptr, ptr %411, align 8, !tbaa !124
  %686 = load ptr, ptr %412, align 16, !tbaa !70
  %687 = load i32, ptr %413, align 4, !tbaa !43
  %688 = add nsw i32 %430, %53
  call void %685(ptr noundef nonnull %7, i32 noundef 8, ptr noundef %686, i32 noundef %687, i32 noundef %665, i32 noundef %688, i32 noundef %414, i32 noundef %415) #6
  %689 = load ptr, ptr %408, align 8, !tbaa !77
  %690 = getelementptr inbounds %struct.x264_weight_t, ptr %689, i64 1, i32 5
  %691 = load ptr, ptr %690, align 16, !tbaa !125
  %692 = icmp eq ptr %691, null
  br i1 %692, label %697, label %693

693:                                              ; preds = %684
  %694 = getelementptr inbounds %struct.x264_weight_t, ptr %689, i64 1
  %695 = getelementptr inbounds ptr, ptr %691, i64 %417
  %696 = load ptr, ptr %695, align 8, !tbaa !70
  call void %696(ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %694, i32 noundef %418) #6
  br label %697

697:                                              ; preds = %693, %684
  %698 = load ptr, ptr %421, align 8, !tbaa !70
  %699 = load ptr, ptr %422, align 8, !tbaa !70
  %700 = call i32 %698(ptr noundef %699, i32 noundef 16, ptr noundef nonnull %7, i32 noundef 8) #6
  %701 = add nsw i32 %700, %681
  %702 = icmp slt i32 %701, %657
  br i1 %702, label %703, label %720

703:                                              ; preds = %697
  %704 = load ptr, ptr %411, align 8, !tbaa !124
  %705 = load ptr, ptr %423, align 8, !tbaa !70
  %706 = load i32, ptr %413, align 4, !tbaa !43
  call void %704(ptr noundef nonnull %7, i32 noundef 8, ptr noundef %705, i32 noundef %706, i32 noundef %665, i32 noundef %688, i32 noundef %414, i32 noundef %415) #6
  %707 = load ptr, ptr %408, align 8, !tbaa !77
  %708 = getelementptr inbounds %struct.x264_weight_t, ptr %707, i64 2, i32 5
  %709 = load ptr, ptr %708, align 16, !tbaa !125
  %710 = icmp eq ptr %709, null
  br i1 %710, label %715, label %711

711:                                              ; preds = %703
  %712 = getelementptr inbounds %struct.x264_weight_t, ptr %707, i64 2
  %713 = getelementptr inbounds ptr, ptr %709, i64 %425
  %714 = load ptr, ptr %713, align 8, !tbaa !70
  call void %714(ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %712, i32 noundef %426) #6
  br label %715

715:                                              ; preds = %711, %703
  %716 = load ptr, ptr %421, align 8, !tbaa !70
  %717 = load ptr, ptr %427, align 8, !tbaa !70
  %718 = call i32 %716(ptr noundef %717, i32 noundef 16, ptr noundef nonnull %7, i32 noundef 8) #6
  %719 = add nsw i32 %718, %701
  br label %720

720:                                              ; preds = %697, %715, %662
  %721 = phi i32 [ %719, %715 ], [ %701, %697 ], [ %681, %662 ]
  %722 = icmp slt i32 %721, %657
  br i1 %722, label %723, label %724

723:                                              ; preds = %720
  br label %724

724:                                              ; preds = %723, %720
  %725 = phi i32 [ 3, %723 ], [ %656, %720 ]
  %726 = phi i32 [ %721, %723 ], [ %657, %720 ]
  %727 = phi i32 [ %430, %723 ], [ %658, %720 ]
  %728 = phi i32 [ %665, %723 ], [ %659, %720 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #6
  br label %729

729:                                              ; preds = %655, %724
  %730 = phi i32 [ %725, %724 ], [ %656, %655 ]
  %731 = phi i32 [ %726, %724 ], [ %657, %655 ]
  %732 = phi i32 [ %727, %724 ], [ %658, %655 ]
  %733 = phi i32 [ %728, %724 ], [ %659, %655 ]
  %734 = icmp ne i32 %733, %429
  %735 = icmp ne i32 %732, %430
  %736 = or i1 %735, %734
  %737 = add nsw i32 %433, -1
  %738 = icmp sgt i32 %433, 1
  %739 = select i1 %736, i1 %738, i1 false
  br i1 %739, label %428, label %835, !llvm.loop !127

740:                                              ; preds = %325
  %741 = load i32, ptr %330, align 4, !tbaa !43
  %742 = icmp sgt i32 %218, %741
  br i1 %742, label %743, label %835

743:                                              ; preds = %740
  %744 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21
  %745 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21, i64 1
  %746 = load i32, ptr %745, align 4, !tbaa !43
  %747 = icmp slt i32 %218, %746
  br i1 %747, label %748, label %835

748:                                              ; preds = %743
  %749 = load i32, ptr %329, align 8, !tbaa !43
  %750 = icmp sgt i32 %219, %749
  br i1 %750, label %751, label %835

751:                                              ; preds = %748
  %752 = load i32, ptr %744, align 16, !tbaa !43
  %753 = icmp slt i32 %219, %752
  br i1 %753, label %754, label %835

754:                                              ; preds = %751
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #6
  %755 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70
  %756 = load ptr, ptr %755, align 8, !tbaa !128
  %757 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5
  %758 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9
  %759 = load i32, ptr %758, align 8, !tbaa !43
  %760 = add nsw i32 %218, -1
  %761 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 4
  %762 = load ptr, ptr %761, align 8, !tbaa !77
  call void %756(ptr noundef nonnull %7, i32 noundef 64, ptr noundef nonnull %757, i32 noundef %759, i32 noundef %219, i32 noundef %760, i32 noundef %20, i32 noundef %22, ptr noundef %762) #6
  %763 = load ptr, ptr %755, align 8, !tbaa !128
  %764 = getelementptr inbounds i8, ptr %7, i64 16
  %765 = load i32, ptr %758, align 8, !tbaa !43
  %766 = add nsw i32 %218, 1
  %767 = load ptr, ptr %761, align 8, !tbaa !77
  call void %763(ptr noundef nonnull %764, i32 noundef 64, ptr noundef nonnull %757, i32 noundef %765, i32 noundef %219, i32 noundef %766, i32 noundef %20, i32 noundef %22, ptr noundef %767) #6
  %768 = load ptr, ptr %755, align 8, !tbaa !128
  %769 = getelementptr inbounds i8, ptr %7, i64 32
  %770 = load i32, ptr %758, align 8, !tbaa !43
  %771 = add nsw i32 %219, -1
  %772 = load ptr, ptr %761, align 8, !tbaa !77
  call void %768(ptr noundef nonnull %769, i32 noundef 64, ptr noundef nonnull %757, i32 noundef %770, i32 noundef %771, i32 noundef %218, i32 noundef %20, i32 noundef %22, ptr noundef %772) #6
  %773 = load ptr, ptr %755, align 8, !tbaa !128
  %774 = getelementptr inbounds i8, ptr %7, i64 48
  %775 = load i32, ptr %758, align 8, !tbaa !43
  %776 = add nsw i32 %219, 1
  %777 = load ptr, ptr %761, align 8, !tbaa !77
  call void %773(ptr noundef nonnull %774, i32 noundef 64, ptr noundef nonnull %757, i32 noundef %775, i32 noundef %776, i32 noundef %218, i32 noundef %20, i32 noundef %22, ptr noundef %777) #6
  %778 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 9, i64 %18
  %779 = load ptr, ptr %778, align 8, !tbaa !70
  %780 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7
  %781 = load ptr, ptr %780, align 8, !tbaa !70
  call void %779(ptr noundef %781, ptr noundef nonnull %7, ptr noundef nonnull %764, ptr noundef nonnull %769, ptr noundef nonnull %774, i32 noundef 64, ptr noundef nonnull %16) #6
  %782 = load i32, ptr %16, align 16, !tbaa !43
  %783 = sext i32 %219 to i64
  %784 = getelementptr inbounds i16, ptr %29, i64 %783
  %785 = load i16, ptr %784, align 2, !tbaa !73
  %786 = zext i16 %785 to i32
  %787 = add nsw i32 %782, %786
  %788 = sext i32 %760 to i64
  %789 = getelementptr inbounds i16, ptr %34, i64 %788
  %790 = load i16, ptr %789, align 2, !tbaa !73
  %791 = zext i16 %790 to i32
  %792 = add nsw i32 %787, %791
  %793 = icmp slt i32 %792, %312
  %794 = call i32 @llvm.smin.i32(i32 %792, i32 %312)
  %795 = select i1 %793, i32 %760, i32 %218
  %796 = getelementptr inbounds [4 x i32], ptr %16, i64 0, i64 1
  %797 = load i32, ptr %796, align 4, !tbaa !43
  %798 = add nsw i32 %797, %786
  %799 = sext i32 %766 to i64
  %800 = getelementptr inbounds i16, ptr %34, i64 %799
  %801 = load i16, ptr %800, align 2, !tbaa !73
  %802 = zext i16 %801 to i32
  %803 = add nsw i32 %798, %802
  %804 = icmp slt i32 %803, %794
  %805 = call i32 @llvm.smin.i32(i32 %803, i32 %794)
  %806 = select i1 %804, i32 %766, i32 %795
  %807 = getelementptr inbounds [4 x i32], ptr %16, i64 0, i64 2
  %808 = load i32, ptr %807, align 8, !tbaa !43
  %809 = sext i32 %771 to i64
  %810 = getelementptr inbounds i16, ptr %29, i64 %809
  %811 = load i16, ptr %810, align 2, !tbaa !73
  %812 = zext i16 %811 to i32
  %813 = add nsw i32 %808, %812
  %814 = sext i32 %218 to i64
  %815 = getelementptr inbounds i16, ptr %34, i64 %814
  %816 = load i16, ptr %815, align 2, !tbaa !73
  %817 = zext i16 %816 to i32
  %818 = add nsw i32 %813, %817
  %819 = icmp slt i32 %818, %805
  %820 = call i32 @llvm.smin.i32(i32 %818, i32 %805)
  %821 = select i1 %819, i32 %771, i32 %219
  %822 = getelementptr inbounds [4 x i32], ptr %16, i64 0, i64 3
  %823 = load i32, ptr %822, align 4, !tbaa !43
  %824 = sext i32 %776 to i64
  %825 = getelementptr inbounds i16, ptr %29, i64 %824
  %826 = load i16, ptr %825, align 2, !tbaa !73
  %827 = zext i16 %826 to i32
  %828 = add i32 %823, %817
  %829 = add i32 %828, %827
  %830 = icmp slt i32 %829, %820
  %831 = call i32 @llvm.smin.i32(i32 %829, i32 %820)
  %832 = select i1 %830, i1 true, i1 %819
  %833 = select i1 %832, i32 %218, i32 %806
  %834 = select i1 %830, i32 %776, i32 %821
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #6
  br label %835

835:                                              ; preds = %428, %436, %439, %442, %729, %331, %740, %743, %748, %751, %754
  %836 = phi i32 [ %831, %754 ], [ %312, %751 ], [ %312, %748 ], [ %312, %743 ], [ %312, %740 ], [ %312, %331 ], [ %731, %729 ], [ %431, %442 ], [ %431, %439 ], [ %431, %436 ], [ %431, %428 ]
  %837 = phi i32 [ %833, %754 ], [ %218, %751 ], [ %218, %748 ], [ %218, %743 ], [ %218, %740 ], [ %218, %331 ], [ %732, %729 ], [ %430, %442 ], [ %430, %439 ], [ %430, %436 ], [ %430, %428 ]
  %838 = phi i32 [ %834, %754 ], [ %219, %751 ], [ %219, %748 ], [ %219, %743 ], [ %219, %740 ], [ %219, %331 ], [ %733, %729 ], [ %429, %442 ], [ %429, %439 ], [ %429, %436 ], [ %429, %428 ]
  store i32 %836, ptr %60, align 8, !tbaa !117
  %839 = trunc i32 %838 to i16
  store i16 %839, ptr %54, align 4, !tbaa !73
  %840 = trunc i32 %837 to i16
  store i16 %840, ptr %57, align 2, !tbaa !73
  %841 = sext i32 %838 to i64
  %842 = getelementptr inbounds i16, ptr %29, i64 %841
  %843 = load i16, ptr %842, align 2, !tbaa !73
  %844 = zext i16 %843 to i32
  %845 = sext i32 %837 to i64
  %846 = getelementptr inbounds i16, ptr %34, i64 %845
  %847 = load i16, ptr %846, align 2, !tbaa !73
  %848 = zext i16 %847 to i32
  %849 = add nuw nsw i32 %848, %844
  %850 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 11
  store i32 %849, ptr %850, align 4, !tbaa !118
  br label %851

851:                                              ; preds = %835, %319
  call void @llvm.lifetime.end.p0(i64 1152, ptr nonnull %7) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_me_refine_qpel(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 10
  %4 = load i32, ptr %3, align 8, !tbaa !75
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [11 x [4 x i8]], ptr @subpel_iterations, i64 0, i64 %5
  %7 = load i8, ptr %6, align 4, !tbaa !78
  %8 = getelementptr inbounds [11 x [4 x i8]], ptr @subpel_iterations, i64 0, i64 %5, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !78
  %10 = load i32, ptr %1, align 16, !tbaa !34
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 16, !tbaa !129
  %15 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 12
  %16 = load i32, ptr %15, align 8, !tbaa !117
  %17 = sub nsw i32 %16, %14
  store i32 %17, ptr %15, align 8, !tbaa !117
  br label %18

18:                                               ; preds = %12, %2
  %19 = zext i8 %9 to i32
  %20 = zext i8 %7 to i32
  tail call fastcc void @refine_subpel(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %20, i32 noundef %19, ptr noundef null, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_me_refine_qpel_refdupe(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !75
  %6 = sext i32 %5 to i64
  %7 = add nsw i64 %6, -8
  %8 = icmp ult i64 %7, 3
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds [11 x [4 x i8]], ptr @subpel_iterations, i64 0, i64 %6, i64 3
  %11 = load i8, ptr %10, align 1, !tbaa !78
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %3, %9
  %14 = phi i32 [ %12, %9 ], [ 2, %3 ]
  tail call fastcc void @refine_subpel(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef %14, ptr noundef %2, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_me_refine_bidir_satd(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @x264_me_refine_bidir(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @x264_me_refine_bidir(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #3 {
  %8 = alloca [2 x [9 x [256 x i8]]], align 16
  %9 = alloca [2 x [9 x [64 x i8]]], align 8
  %10 = alloca [2 x [9 x [64 x i8]]], align 8
  %11 = alloca [2 x [9 x ptr]], align 16
  %12 = alloca [2 x [9 x i32]], align 16
  %13 = alloca [8 x [8 x [8 x i8]]], align 16
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4
  %15 = shl nsw i32 %4, 2
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %16
  %18 = load i32, ptr %17, align 16, !tbaa !43
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [40 x [2 x i16]], ptr %14, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 %19
  %22 = load i32, ptr %1, align 16, !tbaa !34
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %23
  %25 = load i32, ptr %24, align 8, !tbaa !40
  %26 = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %23, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 4608, ptr nonnull %8) #6
  call void @llvm.lifetime.start.p0(i64 1152, ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(i64 1152, ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %11) #6
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %29 = load ptr, ptr %28, align 16, !tbaa !70
  %30 = ashr i32 %4, 1
  %31 = shl nsw i32 %30, 8
  %32 = and i32 %4, 1
  %33 = shl nuw nsw i32 %32, 3
  %34 = or disjoint i32 %31, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %29, i64 %35
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !70
  %39 = shl nsw i32 %30, 7
  %40 = shl nuw nsw i32 %32, 2
  %41 = or disjoint i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %38, i64 %42
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %45 = load ptr, ptr %44, align 16, !tbaa !70
  %46 = getelementptr inbounds i8, ptr %45, i64 %42
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3
  %48 = getelementptr inbounds [40 x i8], ptr %47, i64 0, i64 %19
  %49 = load i8, ptr %48, align 1, !tbaa !78
  %50 = sext i8 %49 to i32
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 %19
  %52 = load i8, ptr %51, align 1, !tbaa !78
  %53 = sext i8 %52 to i32
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %55 = load i32, ptr %54, align 4, !tbaa !120
  %56 = and i32 %55, %50
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %7
  %59 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %60 = load i32, ptr %59, align 4, !tbaa !122
  %61 = shl i32 %60, 2
  %62 = and i32 %61, 4
  %63 = add nsw i32 %62, -2
  br label %64

64:                                               ; preds = %7, %58
  %65 = phi i32 [ %63, %58 ], [ 0, %7 ]
  %66 = and i32 %55, %53
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %70 = load i32, ptr %69, align 4, !tbaa !122
  %71 = shl i32 %70, 2
  %72 = and i32 %71, 4
  %73 = add nsw i32 %72, -2
  br label %74

74:                                               ; preds = %64, %68
  %75 = phi i32 [ %73, %68 ], [ 0, %64 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %12) #6
  %76 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 13
  %77 = load i16, ptr %76, align 4, !tbaa !73
  %78 = sext i16 %77 to i32
  %79 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 13, i64 1
  %80 = load i16, ptr %79, align 2, !tbaa !73
  %81 = sext i16 %80 to i32
  %82 = getelementptr inbounds %struct.x264_me_t, ptr %2, i64 0, i32 13
  %83 = load i16, ptr %82, align 4, !tbaa !73
  %84 = sext i16 %83 to i32
  %85 = getelementptr inbounds %struct.x264_me_t, ptr %2, i64 0, i32 13, i64 1
  %86 = load i16, ptr %85, align 2, !tbaa !73
  %87 = sext i16 %86 to i32
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %13) #6
  %88 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 20
  %89 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 20, i64 1
  %90 = load i32, ptr %89, align 4, !tbaa !43
  %91 = add nsw i32 %90, 8
  %92 = icmp sgt i32 %91, %81
  %93 = icmp sgt i32 %91, %87
  %94 = select i1 %92, i1 true, i1 %93
  br i1 %94, label %613, label %95

95:                                               ; preds = %74
  %96 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21
  %97 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21, i64 1
  %98 = load i32, ptr %97, align 4, !tbaa !43
  %99 = add nsw i32 %98, -8
  %100 = icmp slt i32 %99, %81
  %101 = icmp slt i32 %99, %87
  %102 = select i1 %100, i1 true, i1 %101
  br i1 %102, label %613, label %103

103:                                              ; preds = %95
  %104 = load i32, ptr %88, align 8, !tbaa !43
  %105 = add nsw i32 %104, 8
  %106 = icmp sgt i32 %105, %78
  %107 = icmp sgt i32 %105, %84
  %108 = select i1 %106, i1 true, i1 %107
  br i1 %108, label %613, label %109

109:                                              ; preds = %103
  %110 = load i32, ptr %96, align 16, !tbaa !43
  %111 = add nsw i32 %110, -8
  %112 = icmp slt i32 %111, %78
  %113 = icmp slt i32 %111, %84
  %114 = select i1 %112, i1 true, i1 %113
  br i1 %114, label %613, label %115

115:                                              ; preds = %109
  %116 = icmp eq i32 %6, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %115
  %118 = icmp ne i32 %22, 0
  %119 = icmp ne i32 %4, 0
  %120 = and i1 %119, %118
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = ashr i32 %25, 2
  %123 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 10
  tail call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef 0, i32 noundef %15, i32 noundef %122, ptr noundef nonnull %123) #6
  %124 = getelementptr inbounds %struct.x264_me_t, ptr %2, i64 0, i32 10
  tail call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef 1, i32 noundef %15, i32 noundef %122, ptr noundef nonnull %124) #6
  br label %125

125:                                              ; preds = %121, %117, %115
  %126 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !72
  %128 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 10
  %129 = load i16, ptr %128, align 16, !tbaa !73
  %130 = sext i16 %129 to i64
  %131 = sub nsw i64 0, %130
  %132 = getelementptr inbounds i16, ptr %127, i64 %131
  %133 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 10, i64 1
  %134 = load i16, ptr %133, align 2, !tbaa !73
  %135 = sext i16 %134 to i64
  %136 = sub nsw i64 0, %135
  %137 = getelementptr inbounds i16, ptr %127, i64 %136
  %138 = getelementptr inbounds %struct.x264_me_t, ptr %2, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !72
  %140 = getelementptr inbounds %struct.x264_me_t, ptr %2, i64 0, i32 10
  %141 = load i16, ptr %140, align 16, !tbaa !73
  %142 = sext i16 %141 to i64
  %143 = sub nsw i64 0, %142
  %144 = getelementptr inbounds i16, ptr %139, i64 %143
  %145 = getelementptr inbounds %struct.x264_me_t, ptr %2, i64 0, i32 10, i64 1
  %146 = load i16, ptr %145, align 2, !tbaa !73
  %147 = sext i16 %146 to i64
  %148 = sub nsw i64 0, %147
  %149 = getelementptr inbounds i16, ptr %139, i64 %148
  %150 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 11
  %151 = load ptr, ptr %150, align 8, !tbaa !130
  call void %151(ptr noundef nonnull %13, i32 noundef 512) #6
  %152 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 1
  %153 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5
  %154 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9
  %155 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %156 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 4
  %157 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9, i64 1
  %158 = ashr i32 %25, 1
  %159 = ashr i32 %27, 1
  %160 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 5
  %161 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 1
  %162 = getelementptr inbounds %struct.x264_me_t, ptr %2, i64 0, i32 5
  %163 = getelementptr inbounds %struct.x264_me_t, ptr %2, i64 0, i32 9
  %164 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %165 = getelementptr inbounds %struct.x264_me_t, ptr %2, i64 0, i32 5, i64 4
  %166 = getelementptr inbounds %struct.x264_me_t, ptr %2, i64 0, i32 9, i64 1
  %167 = ashr i32 %25, 1
  %168 = ashr i32 %27, 1
  %169 = getelementptr inbounds %struct.x264_me_t, ptr %2, i64 0, i32 5, i64 5
  %170 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 3, i64 %23
  %171 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 5, i64 %23
  %172 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7
  %173 = add nsw i32 %22, 3
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 3, i64 %174
  br label %176

176:                                              ; preds = %419, %125
  %177 = phi i32 [ %78, %125 ], [ %425, %419 ]
  %178 = phi i32 [ %81, %125 ], [ %424, %419 ]
  %179 = phi i32 [ %84, %125 ], [ %423, %419 ]
  %180 = phi i32 [ %87, %125 ], [ %422, %419 ]
  %181 = phi i32 [ 268435456, %125 ], [ %394, %419 ]
  %182 = phi i32 [ 1, %125 ], [ %421, %419 ]
  %183 = phi i32 [ 1, %125 ], [ %420, %419 ]
  %184 = phi i64 [ 1152921504606846976, %125 ], [ %393, %419 ]
  %185 = phi i32 [ 0, %125 ], [ %426, %419 ]
  %186 = icmp ne i32 %182, 0
  %187 = load i32, ptr @x264_iter_kludge, align 4
  %188 = icmp slt i32 %187, 9
  %189 = select i1 %186, i1 %188, i1 false
  br i1 %189, label %190, label %226

190:                                              ; preds = %176
  %191 = sext i32 %187 to i64
  br label %192

192:                                              ; preds = %190, %222
  %193 = phi i64 [ %191, %190 ], [ %223, %222 ]
  %194 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %193
  %195 = load i8, ptr %194, align 2, !tbaa !78
  %196 = sext i8 %195 to i32
  %197 = mul nsw i32 %196, 3
  %198 = add nsw i32 %197, 4
  %199 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %193, i64 1
  %200 = load i8, ptr %199, align 1, !tbaa !78
  %201 = sext i8 %200 to i32
  %202 = add nsw i32 %198, %201
  %203 = add nsw i32 %177, %196
  %204 = add nsw i32 %178, %201
  %205 = sext i32 %202 to i64
  %206 = getelementptr inbounds [9 x i32], ptr %12, i64 0, i64 %205
  store i32 %25, ptr %206, align 4, !tbaa !43
  %207 = load ptr, ptr %152, align 8, !tbaa !76
  %208 = getelementptr inbounds [9 x [256 x i8]], ptr %8, i64 0, i64 %205
  %209 = load i32, ptr %154, align 8, !tbaa !43
  %210 = call ptr %207(ptr noundef nonnull %208, ptr noundef nonnull %206, ptr noundef nonnull %153, i32 noundef %209, i32 noundef %203, i32 noundef %204, i32 noundef %25, i32 noundef %27, ptr noundef nonnull @weight_none) #6
  %211 = getelementptr inbounds [9 x ptr], ptr %11, i64 0, i64 %205
  store ptr %210, ptr %211, align 8, !tbaa !70
  br i1 %116, label %222, label %212

212:                                              ; preds = %192
  %213 = load ptr, ptr %155, align 8, !tbaa !124
  %214 = getelementptr inbounds [9 x [64 x i8]], ptr %9, i64 0, i64 %205
  %215 = load ptr, ptr %156, align 16, !tbaa !70
  %216 = load i32, ptr %157, align 4, !tbaa !43
  %217 = add nsw i32 %204, %65
  call void %213(ptr noundef nonnull %214, i32 noundef 8, ptr noundef %215, i32 noundef %216, i32 noundef %203, i32 noundef %217, i32 noundef %158, i32 noundef %159) #6
  %218 = load ptr, ptr %155, align 8, !tbaa !124
  %219 = getelementptr inbounds [9 x [64 x i8]], ptr %10, i64 0, i64 %205
  %220 = load ptr, ptr %160, align 8, !tbaa !70
  %221 = load i32, ptr %157, align 4, !tbaa !43
  call void %218(ptr noundef nonnull %219, i32 noundef 8, ptr noundef %220, i32 noundef %221, i32 noundef %203, i32 noundef %217, i32 noundef %158, i32 noundef %159) #6
  br label %222

222:                                              ; preds = %212, %192
  %223 = add nsw i64 %193, 1
  %224 = and i64 %223, 4294967295
  %225 = icmp eq i64 %224, 9
  br i1 %225, label %226, label %192, !llvm.loop !131

226:                                              ; preds = %222, %176
  %227 = icmp ne i32 %183, 0
  %228 = load i32, ptr @x264_iter_kludge, align 4
  %229 = icmp slt i32 %228, 9
  %230 = select i1 %227, i1 %229, i1 false
  br i1 %230, label %231, label %267

231:                                              ; preds = %226
  %232 = sext i32 %228 to i64
  br label %233

233:                                              ; preds = %231, %263
  %234 = phi i64 [ %232, %231 ], [ %264, %263 ]
  %235 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %234
  %236 = load i8, ptr %235, align 2, !tbaa !78
  %237 = sext i8 %236 to i32
  %238 = mul nsw i32 %237, 3
  %239 = add nsw i32 %238, 4
  %240 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %234, i64 1
  %241 = load i8, ptr %240, align 1, !tbaa !78
  %242 = sext i8 %241 to i32
  %243 = add nsw i32 %239, %242
  %244 = add nsw i32 %179, %237
  %245 = add nsw i32 %180, %242
  %246 = sext i32 %243 to i64
  %247 = getelementptr inbounds [2 x [9 x i32]], ptr %12, i64 0, i64 1, i64 %246
  store i32 %25, ptr %247, align 4, !tbaa !43
  %248 = load ptr, ptr %161, align 8, !tbaa !76
  %249 = getelementptr inbounds [2 x [9 x [256 x i8]]], ptr %8, i64 0, i64 1, i64 %246
  %250 = load i32, ptr %163, align 8, !tbaa !43
  %251 = call ptr %248(ptr noundef nonnull %249, ptr noundef nonnull %247, ptr noundef nonnull %162, i32 noundef %250, i32 noundef %244, i32 noundef %245, i32 noundef %25, i32 noundef %27, ptr noundef nonnull @weight_none) #6
  %252 = getelementptr inbounds [2 x [9 x ptr]], ptr %11, i64 0, i64 1, i64 %246
  store ptr %251, ptr %252, align 8, !tbaa !70
  br i1 %116, label %263, label %253

253:                                              ; preds = %233
  %254 = load ptr, ptr %164, align 8, !tbaa !124
  %255 = getelementptr inbounds [2 x [9 x [64 x i8]]], ptr %9, i64 0, i64 1, i64 %246
  %256 = load ptr, ptr %165, align 16, !tbaa !70
  %257 = load i32, ptr %166, align 4, !tbaa !43
  %258 = add nsw i32 %245, %75
  call void %254(ptr noundef nonnull %255, i32 noundef 8, ptr noundef %256, i32 noundef %257, i32 noundef %244, i32 noundef %258, i32 noundef %167, i32 noundef %168) #6
  %259 = load ptr, ptr %164, align 8, !tbaa !124
  %260 = getelementptr inbounds [2 x [9 x [64 x i8]]], ptr %10, i64 0, i64 1, i64 %246
  %261 = load ptr, ptr %169, align 8, !tbaa !70
  %262 = load i32, ptr %166, align 4, !tbaa !43
  call void %259(ptr noundef nonnull %260, i32 noundef 8, ptr noundef %261, i32 noundef %262, i32 noundef %244, i32 noundef %258, i32 noundef %167, i32 noundef %168) #6
  br label %263

263:                                              ; preds = %253, %233
  %264 = add nsw i64 %234, 1
  %265 = and i64 %264, 4294967295
  %266 = icmp eq i64 %265, 9
  br i1 %266, label %267, label %233, !llvm.loop !132

267:                                              ; preds = %263, %226
  %268 = icmp ne i32 %185, 0
  %269 = zext i1 %268 to i64
  br label %272

270:                                              ; preds = %391
  %271 = icmp eq i32 %392, 0
  br i1 %271, label %419, label %397

272:                                              ; preds = %267, %391
  %273 = phi i64 [ %269, %267 ], [ %395, %391 ]
  %274 = phi i32 [ %181, %267 ], [ %394, %391 ]
  %275 = phi i64 [ %184, %267 ], [ %393, %391 ]
  %276 = phi i32 [ 0, %267 ], [ %392, %391 ]
  %277 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %273
  %278 = load i8, ptr %277, align 4, !tbaa !78
  %279 = sext i8 %278 to i32
  %280 = add nsw i32 %177, %279
  %281 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %273, i64 1
  %282 = load i8, ptr %281, align 1, !tbaa !78
  %283 = sext i8 %282 to i32
  %284 = add nsw i32 %178, %283
  %285 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %273, i64 2
  %286 = load i8, ptr %285, align 2, !tbaa !78
  %287 = sext i8 %286 to i32
  %288 = add nsw i32 %179, %287
  %289 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %273, i64 3
  %290 = load i8, ptr %289, align 1, !tbaa !78
  %291 = sext i8 %290 to i32
  %292 = add nsw i32 %180, %291
  br i1 %268, label %293, label %307

293:                                              ; preds = %272
  %294 = and i32 %280, 7
  %295 = zext nneg i32 %294 to i64
  %296 = and i32 %284, 7
  %297 = zext nneg i32 %296 to i64
  %298 = and i32 %288, 7
  %299 = zext nneg i32 %298 to i64
  %300 = getelementptr inbounds [8 x [8 x [8 x i8]]], ptr %13, i64 0, i64 %295, i64 %297, i64 %299
  %301 = load i8, ptr %300, align 1, !tbaa !78
  %302 = zext i8 %301 to i32
  %303 = and i32 %292, 7
  %304 = shl nuw nsw i32 1, %303
  %305 = and i32 %304, %302
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %391

307:                                              ; preds = %293, %272
  %308 = sext i8 %278 to i64
  %309 = mul nsw i64 %308, 3
  %310 = add nsw i64 %309, 4
  %311 = sext i8 %282 to i64
  %312 = add nsw i64 %310, %311
  %313 = sext i8 %286 to i64
  %314 = mul nsw i64 %313, 3
  %315 = add nsw i64 %314, 4
  %316 = sext i8 %290 to i64
  %317 = add nsw i64 %315, %316
  %318 = and i32 %292, 7
  %319 = shl nuw nsw i32 1, %318
  %320 = and i32 %280, 7
  %321 = zext nneg i32 %320 to i64
  %322 = and i32 %284, 7
  %323 = zext nneg i32 %322 to i64
  %324 = and i32 %288, 7
  %325 = zext nneg i32 %324 to i64
  %326 = getelementptr inbounds [8 x [8 x [8 x i8]]], ptr %13, i64 0, i64 %321, i64 %323, i64 %325
  %327 = load i8, ptr %326, align 1, !tbaa !78
  %328 = trunc i32 %319 to i8
  %329 = or i8 %327, %328
  store i8 %329, ptr %326, align 1, !tbaa !78
  %330 = load ptr, ptr %170, align 8, !tbaa !70
  %331 = getelementptr inbounds [9 x ptr], ptr %11, i64 0, i64 %312
  %332 = load ptr, ptr %331, align 8, !tbaa !70
  %333 = getelementptr inbounds [9 x i32], ptr %12, i64 0, i64 %312
  %334 = load i32, ptr %333, align 4, !tbaa !43
  %335 = getelementptr inbounds [2 x [9 x ptr]], ptr %11, i64 0, i64 1, i64 %317
  %336 = load ptr, ptr %335, align 8, !tbaa !70
  %337 = getelementptr inbounds [2 x [9 x i32]], ptr %12, i64 0, i64 1, i64 %317
  %338 = load i32, ptr %337, align 4, !tbaa !43
  call void %330(ptr noundef %36, i32 noundef 32, ptr noundef %332, i32 noundef %334, ptr noundef %336, i32 noundef %338, i32 noundef %3) #6
  %339 = load ptr, ptr %171, align 8, !tbaa !70
  %340 = load ptr, ptr %172, align 8, !tbaa !70
  %341 = call i32 %339(ptr noundef %340, i32 noundef 16, ptr noundef %36, i32 noundef 32) #6
  %342 = sext i32 %280 to i64
  %343 = getelementptr inbounds i16, ptr %132, i64 %342
  %344 = load i16, ptr %343, align 2, !tbaa !73
  %345 = zext i16 %344 to i32
  %346 = add nsw i32 %341, %345
  %347 = sext i32 %284 to i64
  %348 = getelementptr inbounds i16, ptr %137, i64 %347
  %349 = load i16, ptr %348, align 2, !tbaa !73
  %350 = zext i16 %349 to i32
  %351 = add nsw i32 %346, %350
  %352 = sext i32 %288 to i64
  %353 = getelementptr inbounds i16, ptr %144, i64 %352
  %354 = load i16, ptr %353, align 2, !tbaa !73
  %355 = zext i16 %354 to i32
  %356 = add nsw i32 %351, %355
  %357 = sext i32 %292 to i64
  %358 = getelementptr inbounds i16, ptr %149, i64 %357
  %359 = load i16, ptr %358, align 2, !tbaa !73
  %360 = zext i16 %359 to i32
  %361 = add nsw i32 %356, %360
  br i1 %116, label %386, label %362

362:                                              ; preds = %307
  %363 = mul nsw i32 %274, 17
  %364 = sdiv i32 %363, 16
  %365 = icmp slt i32 %361, %364
  br i1 %365, label %366, label %391

366:                                              ; preds = %362
  %367 = call i32 @llvm.smin.i32(i32 %361, i32 %274)
  %368 = and i32 %280, 65535
  %369 = shl i32 %284, 16
  %370 = or disjoint i32 %369, %368
  store i32 %370, ptr %20, align 4, !tbaa !78
  %371 = and i32 %288, 65535
  %372 = shl i32 %292, 16
  %373 = or disjoint i32 %372, %371
  store i32 %373, ptr %21, align 4, !tbaa !78
  %374 = load ptr, ptr %175, align 8, !tbaa !70
  %375 = getelementptr inbounds [9 x [64 x i8]], ptr %9, i64 0, i64 %312
  %376 = getelementptr inbounds [2 x [9 x [64 x i8]]], ptr %9, i64 0, i64 1, i64 %317
  call void %374(ptr noundef %43, i32 noundef 32, ptr noundef nonnull %375, i32 noundef 8, ptr noundef nonnull %376, i32 noundef 8, i32 noundef %3) #6
  %377 = load ptr, ptr %175, align 8, !tbaa !70
  %378 = getelementptr inbounds [9 x [64 x i8]], ptr %10, i64 0, i64 %312
  %379 = getelementptr inbounds [2 x [9 x [64 x i8]]], ptr %10, i64 0, i64 1, i64 %317
  call void %377(ptr noundef %46, i32 noundef 32, ptr noundef nonnull %378, i32 noundef 8, ptr noundef nonnull %379, i32 noundef 8, i32 noundef %3) #6
  %380 = load i32, ptr %1, align 16, !tbaa !34
  %381 = call i64 @x264_rd_cost_part(ptr noundef %0, i32 noundef %5, i32 noundef %15, i32 noundef %380) #6
  %382 = icmp ult i64 %381, %275
  %383 = trunc i64 %273 to i32
  %384 = select i1 %382, i32 %383, i32 %276
  %385 = call i64 @llvm.umin.i64(i64 %381, i64 %275)
  br label %391

386:                                              ; preds = %307
  %387 = icmp slt i32 %361, %274
  %388 = trunc i64 %273 to i32
  %389 = select i1 %387, i32 %388, i32 %276
  %390 = call i32 @llvm.smin.i32(i32 %361, i32 %274)
  br label %391

391:                                              ; preds = %386, %366, %362, %293
  %392 = phi i32 [ %276, %293 ], [ %384, %366 ], [ %276, %362 ], [ %389, %386 ]
  %393 = phi i64 [ %275, %293 ], [ %385, %366 ], [ %275, %362 ], [ %275, %386 ]
  %394 = phi i32 [ %274, %293 ], [ %367, %366 ], [ %274, %362 ], [ %390, %386 ]
  %395 = add nuw nsw i64 %273, 1
  %396 = icmp eq i64 %395, 33
  br i1 %396, label %270, label %272, !llvm.loop !133

397:                                              ; preds = %270
  %398 = sext i32 %392 to i64
  %399 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %398
  %400 = load i8, ptr %399, align 4, !tbaa !78
  %401 = sext i8 %400 to i32
  %402 = add nsw i32 %177, %401
  %403 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %398, i64 1
  %404 = load i8, ptr %403, align 1, !tbaa !78
  %405 = sext i8 %404 to i32
  %406 = add nsw i32 %178, %405
  %407 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %398, i64 2
  %408 = load i8, ptr %407, align 2, !tbaa !78
  %409 = sext i8 %408 to i32
  %410 = add nsw i32 %179, %409
  %411 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %398, i64 3
  %412 = load i8, ptr %411, align 1, !tbaa !78
  %413 = sext i8 %412 to i32
  %414 = add nsw i32 %180, %413
  %415 = load i16, ptr %399, align 4, !tbaa !78
  %416 = zext i16 %415 to i32
  %417 = load i16, ptr %407, align 2, !tbaa !78
  %418 = zext i16 %417 to i32
  br label %419

419:                                              ; preds = %270, %397
  %420 = phi i32 [ %418, %397 ], [ %183, %270 ]
  %421 = phi i32 [ %416, %397 ], [ %182, %270 ]
  %422 = phi i32 [ %414, %397 ], [ %180, %270 ]
  %423 = phi i32 [ %410, %397 ], [ %179, %270 ]
  %424 = phi i32 [ %406, %397 ], [ %178, %270 ]
  %425 = phi i32 [ %402, %397 ], [ %177, %270 ]
  %426 = add nuw nsw i32 %185, 1
  %427 = icmp eq i32 %426, 8
  %428 = select i1 %271, i1 true, i1 %427
  br i1 %428, label %429, label %176, !llvm.loop !134

429:                                              ; preds = %419
  br i1 %116, label %608, label %430

430:                                              ; preds = %429
  %431 = shl nuw nsw i32 %32, 1
  %432 = ashr i32 %25, 2
  %433 = ashr i32 %27, 2
  %434 = and i32 %425, 65535
  %435 = shl i32 %424, 16
  %436 = or disjoint i32 %434, %435
  %437 = shl i32 %4, 3
  %438 = or disjoint i32 %431, %437
  %439 = or i32 %438, 12
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 0, i64 %440
  %442 = and i32 %25, -4
  %443 = zext i32 %436 to i64
  %444 = mul nuw i64 %443, 4294967297
  %445 = add i32 %442, -2
  %446 = call i32 @llvm.fshl.i32(i32 2, i32 %445, i32 31)
  switch i32 %446, label %472 [
    i32 7, label %463
    i32 1, label %447
    i32 3, label %455
  ]

447:                                              ; preds = %430
  store i32 %436, ptr %441, align 4, !tbaa !78
  %448 = icmp eq i32 %433, 1
  br i1 %448, label %472, label %449

449:                                              ; preds = %447
  %450 = getelementptr inbounds i8, ptr %441, i64 32
  store i32 %436, ptr %450, align 4, !tbaa !78
  %451 = icmp eq i32 %433, 2
  br i1 %451, label %472, label %452

452:                                              ; preds = %449
  %453 = getelementptr inbounds i8, ptr %441, i64 64
  store i32 %436, ptr %453, align 4, !tbaa !78
  %454 = getelementptr inbounds i8, ptr %441, i64 96
  store i32 %436, ptr %454, align 4, !tbaa !78
  br label %472

455:                                              ; preds = %430
  store i64 %444, ptr %441, align 8, !tbaa !78
  %456 = icmp eq i32 %433, 1
  br i1 %456, label %472, label %457

457:                                              ; preds = %455
  %458 = getelementptr inbounds i8, ptr %441, i64 32
  store i64 %444, ptr %458, align 8, !tbaa !78
  %459 = icmp eq i32 %433, 2
  br i1 %459, label %472, label %460

460:                                              ; preds = %457
  %461 = getelementptr inbounds i8, ptr %441, i64 64
  store i64 %444, ptr %461, align 8, !tbaa !78
  %462 = getelementptr inbounds i8, ptr %441, i64 96
  store i64 %444, ptr %462, align 8, !tbaa !78
  br label %472

463:                                              ; preds = %430, %463
  %464 = phi ptr [ %470, %463 ], [ %441, %430 ]
  %465 = phi i32 [ %469, %463 ], [ %433, %430 ]
  store i64 %444, ptr %464, align 8, !tbaa !78
  %466 = getelementptr inbounds i8, ptr %464, i64 8
  store i64 %444, ptr %466, align 8, !tbaa !78
  %467 = getelementptr inbounds i8, ptr %464, i64 32
  store i64 %444, ptr %467, align 8, !tbaa !78
  %468 = getelementptr inbounds i8, ptr %464, i64 40
  store i64 %444, ptr %468, align 8, !tbaa !78
  %469 = add nsw i32 %465, -2
  %470 = getelementptr inbounds i8, ptr %464, i64 64
  %471 = icmp eq i32 %469, 0
  br i1 %471, label %472, label %463, !llvm.loop !135

472:                                              ; preds = %463, %430, %447, %449, %452, %455, %457, %460
  %473 = load i16, ptr %128, align 16, !tbaa !73
  %474 = sext i16 %473 to i32
  %475 = sub nsw i32 %425, %474
  %476 = call i32 @llvm.abs.i32(i32 %475, i1 true)
  %477 = call i32 @llvm.umin.i32(i32 %476, i32 33)
  %478 = load i16, ptr %133, align 2, !tbaa !73
  %479 = sext i16 %478 to i32
  %480 = sub nsw i32 %424, %479
  %481 = call i32 @llvm.abs.i32(i32 %480, i1 true)
  %482 = call i32 @llvm.umin.i32(i32 %481, i32 33)
  %483 = shl nuw nsw i32 %482, 8
  %484 = or disjoint i32 %483, %477
  %485 = trunc i32 %484 to i16
  %486 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %440
  %487 = mul nuw nsw i32 %484, 65537
  %488 = zext nneg i32 %487 to i64
  %489 = mul nuw nsw i64 %488, 4294967297
  %490 = add i32 %432, 2147483647
  %491 = and i32 %490, 2147483647
  switch i32 %491, label %525 [
    i32 0, label %492
    i32 1, label %500
    i32 3, label %508
    i32 7, label %516
  ]

492:                                              ; preds = %472
  store i16 %485, ptr %486, align 2, !tbaa !78
  %493 = icmp eq i32 %433, 1
  br i1 %493, label %525, label %494

494:                                              ; preds = %492
  %495 = getelementptr inbounds i8, ptr %486, i64 16
  store i16 %485, ptr %495, align 2, !tbaa !78
  %496 = icmp eq i32 %433, 2
  br i1 %496, label %525, label %497

497:                                              ; preds = %494
  %498 = getelementptr inbounds i8, ptr %486, i64 32
  store i16 %485, ptr %498, align 2, !tbaa !78
  %499 = getelementptr inbounds i8, ptr %486, i64 48
  store i16 %485, ptr %499, align 2, !tbaa !78
  br label %525

500:                                              ; preds = %472
  store i32 %487, ptr %486, align 4, !tbaa !78
  %501 = icmp eq i32 %433, 1
  br i1 %501, label %525, label %502

502:                                              ; preds = %500
  %503 = getelementptr inbounds i8, ptr %486, i64 16
  store i32 %487, ptr %503, align 4, !tbaa !78
  %504 = icmp eq i32 %433, 2
  br i1 %504, label %525, label %505

505:                                              ; preds = %502
  %506 = getelementptr inbounds i8, ptr %486, i64 32
  store i32 %487, ptr %506, align 4, !tbaa !78
  %507 = getelementptr inbounds i8, ptr %486, i64 48
  store i32 %487, ptr %507, align 4, !tbaa !78
  br label %525

508:                                              ; preds = %472
  store i64 %489, ptr %486, align 8, !tbaa !78
  %509 = icmp eq i32 %433, 1
  br i1 %509, label %525, label %510

510:                                              ; preds = %508
  %511 = getelementptr inbounds i8, ptr %486, i64 16
  store i64 %489, ptr %511, align 8, !tbaa !78
  %512 = icmp eq i32 %433, 2
  br i1 %512, label %525, label %513

513:                                              ; preds = %510
  %514 = getelementptr inbounds i8, ptr %486, i64 32
  store i64 %489, ptr %514, align 8, !tbaa !78
  %515 = getelementptr inbounds i8, ptr %486, i64 48
  store i64 %489, ptr %515, align 8, !tbaa !78
  br label %525

516:                                              ; preds = %472, %516
  %517 = phi ptr [ %523, %516 ], [ %486, %472 ]
  %518 = phi i32 [ %522, %516 ], [ %433, %472 ]
  store i64 %489, ptr %517, align 8, !tbaa !78
  %519 = getelementptr inbounds i8, ptr %517, i64 8
  store i64 %489, ptr %519, align 8, !tbaa !78
  %520 = getelementptr inbounds i8, ptr %517, i64 16
  store i64 %489, ptr %520, align 8, !tbaa !78
  %521 = getelementptr inbounds i8, ptr %517, i64 24
  store i64 %489, ptr %521, align 8, !tbaa !78
  %522 = add nsw i32 %518, -2
  %523 = getelementptr inbounds i8, ptr %517, i64 32
  %524 = icmp eq i32 %522, 0
  br i1 %524, label %525, label %516, !llvm.loop !135

525:                                              ; preds = %516, %472, %492, %494, %497, %500, %502, %505, %508, %510, %513
  %526 = and i32 %423, 65535
  %527 = shl i32 %422, 16
  %528 = or disjoint i32 %526, %527
  %529 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 %440
  %530 = zext i32 %528 to i64
  %531 = mul nuw i64 %530, 4294967297
  switch i32 %446, label %557 [
    i32 7, label %548
    i32 1, label %532
    i32 3, label %540
  ]

532:                                              ; preds = %525
  store i32 %528, ptr %529, align 4, !tbaa !78
  %533 = icmp eq i32 %433, 1
  br i1 %533, label %557, label %534

534:                                              ; preds = %532
  %535 = getelementptr inbounds i8, ptr %529, i64 32
  store i32 %528, ptr %535, align 4, !tbaa !78
  %536 = icmp eq i32 %433, 2
  br i1 %536, label %557, label %537

537:                                              ; preds = %534
  %538 = getelementptr inbounds i8, ptr %529, i64 64
  store i32 %528, ptr %538, align 4, !tbaa !78
  %539 = getelementptr inbounds i8, ptr %529, i64 96
  store i32 %528, ptr %539, align 4, !tbaa !78
  br label %557

540:                                              ; preds = %525
  store i64 %531, ptr %529, align 8, !tbaa !78
  %541 = icmp eq i32 %433, 1
  br i1 %541, label %557, label %542

542:                                              ; preds = %540
  %543 = getelementptr inbounds i8, ptr %529, i64 32
  store i64 %531, ptr %543, align 8, !tbaa !78
  %544 = icmp eq i32 %433, 2
  br i1 %544, label %557, label %545

545:                                              ; preds = %542
  %546 = getelementptr inbounds i8, ptr %529, i64 64
  store i64 %531, ptr %546, align 8, !tbaa !78
  %547 = getelementptr inbounds i8, ptr %529, i64 96
  store i64 %531, ptr %547, align 8, !tbaa !78
  br label %557

548:                                              ; preds = %525, %548
  %549 = phi ptr [ %555, %548 ], [ %529, %525 ]
  %550 = phi i32 [ %554, %548 ], [ %433, %525 ]
  store i64 %531, ptr %549, align 8, !tbaa !78
  %551 = getelementptr inbounds i8, ptr %549, i64 8
  store i64 %531, ptr %551, align 8, !tbaa !78
  %552 = getelementptr inbounds i8, ptr %549, i64 32
  store i64 %531, ptr %552, align 8, !tbaa !78
  %553 = getelementptr inbounds i8, ptr %549, i64 40
  store i64 %531, ptr %553, align 8, !tbaa !78
  %554 = add nsw i32 %550, -2
  %555 = getelementptr inbounds i8, ptr %549, i64 64
  %556 = icmp eq i32 %554, 0
  br i1 %556, label %557, label %548, !llvm.loop !135

557:                                              ; preds = %548, %525, %532, %534, %537, %540, %542, %545
  %558 = load i16, ptr %140, align 16, !tbaa !73
  %559 = sext i16 %558 to i32
  %560 = sub nsw i32 %423, %559
  %561 = call i32 @llvm.abs.i32(i32 %560, i1 true)
  %562 = call i32 @llvm.umin.i32(i32 %561, i32 33)
  %563 = load i16, ptr %145, align 2, !tbaa !73
  %564 = sext i16 %563 to i32
  %565 = sub nsw i32 %422, %564
  %566 = call i32 @llvm.abs.i32(i32 %565, i1 true)
  %567 = call i32 @llvm.umin.i32(i32 %566, i32 33)
  %568 = shl nuw nsw i32 %567, 8
  %569 = or disjoint i32 %568, %562
  %570 = trunc i32 %569 to i16
  %571 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 1, i64 %440
  %572 = mul nuw nsw i32 %569, 65537
  %573 = zext nneg i32 %572 to i64
  %574 = mul nuw nsw i64 %573, 4294967297
  switch i32 %491, label %608 [
    i32 0, label %575
    i32 1, label %583
    i32 3, label %591
    i32 7, label %599
  ]

575:                                              ; preds = %557
  store i16 %570, ptr %571, align 2, !tbaa !78
  %576 = icmp eq i32 %433, 1
  br i1 %576, label %608, label %577

577:                                              ; preds = %575
  %578 = getelementptr inbounds i8, ptr %571, i64 16
  store i16 %570, ptr %578, align 2, !tbaa !78
  %579 = icmp eq i32 %433, 2
  br i1 %579, label %608, label %580

580:                                              ; preds = %577
  %581 = getelementptr inbounds i8, ptr %571, i64 32
  store i16 %570, ptr %581, align 2, !tbaa !78
  %582 = getelementptr inbounds i8, ptr %571, i64 48
  store i16 %570, ptr %582, align 2, !tbaa !78
  br label %608

583:                                              ; preds = %557
  store i32 %572, ptr %571, align 4, !tbaa !78
  %584 = icmp eq i32 %433, 1
  br i1 %584, label %608, label %585

585:                                              ; preds = %583
  %586 = getelementptr inbounds i8, ptr %571, i64 16
  store i32 %572, ptr %586, align 4, !tbaa !78
  %587 = icmp eq i32 %433, 2
  br i1 %587, label %608, label %588

588:                                              ; preds = %585
  %589 = getelementptr inbounds i8, ptr %571, i64 32
  store i32 %572, ptr %589, align 4, !tbaa !78
  %590 = getelementptr inbounds i8, ptr %571, i64 48
  store i32 %572, ptr %590, align 4, !tbaa !78
  br label %608

591:                                              ; preds = %557
  store i64 %574, ptr %571, align 8, !tbaa !78
  %592 = icmp eq i32 %433, 1
  br i1 %592, label %608, label %593

593:                                              ; preds = %591
  %594 = getelementptr inbounds i8, ptr %571, i64 16
  store i64 %574, ptr %594, align 8, !tbaa !78
  %595 = icmp eq i32 %433, 2
  br i1 %595, label %608, label %596

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %571, i64 32
  store i64 %574, ptr %597, align 8, !tbaa !78
  %598 = getelementptr inbounds i8, ptr %571, i64 48
  store i64 %574, ptr %598, align 8, !tbaa !78
  br label %608

599:                                              ; preds = %557, %599
  %600 = phi ptr [ %606, %599 ], [ %571, %557 ]
  %601 = phi i32 [ %605, %599 ], [ %433, %557 ]
  store i64 %574, ptr %600, align 8, !tbaa !78
  %602 = getelementptr inbounds i8, ptr %600, i64 8
  store i64 %574, ptr %602, align 8, !tbaa !78
  %603 = getelementptr inbounds i8, ptr %600, i64 16
  store i64 %574, ptr %603, align 8, !tbaa !78
  %604 = getelementptr inbounds i8, ptr %600, i64 24
  store i64 %574, ptr %604, align 8, !tbaa !78
  %605 = add nsw i32 %601, -2
  %606 = getelementptr inbounds i8, ptr %600, i64 32
  %607 = icmp eq i32 %605, 0
  br i1 %607, label %608, label %599, !llvm.loop !135

608:                                              ; preds = %599, %596, %593, %591, %588, %585, %583, %580, %577, %575, %557, %429
  %609 = trunc i32 %425 to i16
  store i16 %609, ptr %76, align 4, !tbaa !73
  %610 = trunc i32 %424 to i16
  store i16 %610, ptr %79, align 2, !tbaa !73
  %611 = trunc i32 %423 to i16
  store i16 %611, ptr %82, align 4, !tbaa !73
  %612 = trunc i32 %422 to i16
  store i16 %612, ptr %85, align 2, !tbaa !73
  br label %613

613:                                              ; preds = %74, %95, %103, %109, %608
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 1152, ptr nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 1152, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 4608, ptr nonnull %8) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_me_refine_bidir_rd(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 62
  store i32 1, ptr %7, align 4, !tbaa !136
  tail call fastcc void @x264_me_refine_bidir(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 1)
  store i32 0, ptr %7, align 4, !tbaa !136
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_me_refine_qpel_rd(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %4 to i64
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !43
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %6, i64 %10
  %12 = load i32, ptr %1, align 16, !tbaa !34
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %13
  %15 = load i32, ptr %14, align 8, !tbaa !40
  %16 = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %13, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !42
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %19 = load i32, ptr %18, align 4, !tbaa !120
  %20 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !121
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !122
  %27 = shl i32 %26, 2
  %28 = and i32 %27, 4
  %29 = add nsw i32 %28, -2
  br label %30

30:                                               ; preds = %5, %24
  %31 = phi i32 [ %29, %24 ], [ 0, %5 ]
  %32 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 13
  %33 = load i16, ptr %32, align 4, !tbaa !73
  %34 = sext i16 %33 to i32
  %35 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 13, i64 1
  %36 = load i16, ptr %35, align 2, !tbaa !73
  %37 = sext i16 %36 to i32
  %38 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %39 = load ptr, ptr %38, align 16, !tbaa !70
  %40 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %7
  %41 = load i16, ptr %40, align 2, !tbaa !73
  %42 = zext i16 %41 to i64
  %43 = getelementptr inbounds i8, ptr %39, i64 %42
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !70
  %46 = shl i32 %3, 4
  %47 = and i32 %46, -128
  %48 = and i32 %3, 4
  %49 = or disjoint i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, ptr %45, i64 %50
  %52 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %53 = load ptr, ptr %52, align 16, !tbaa !70
  %54 = getelementptr inbounds i8, ptr %53, i64 %50
  %55 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 62
  store i32 1, ptr %55, align 4, !tbaa !136
  %56 = icmp ne i32 %12, 0
  %57 = icmp ne i32 %3, 0
  %58 = and i1 %57, %56
  br i1 %58, label %59, label %62

59:                                               ; preds = %30
  %60 = ashr i32 %15, 2
  %61 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 10
  tail call void @x264_mb_predict_mv(ptr noundef %0, i32 noundef %4, i32 noundef %3, i32 noundef %60, ptr noundef nonnull %61) #6
  br label %62

62:                                               ; preds = %59, %30
  %63 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 10
  %64 = load i16, ptr %63, align 16, !tbaa !73
  %65 = sext i16 %64 to i32
  %66 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 10, i64 1
  %67 = load i16, ptr %66, align 2, !tbaa !73
  %68 = sext i16 %67 to i32
  %69 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !72
  %71 = sext i16 %64 to i64
  %72 = sub nsw i64 0, %71
  %73 = getelementptr inbounds i16, ptr %70, i64 %72
  %74 = sext i16 %67 to i64
  %75 = sub nsw i64 0, %74
  %76 = getelementptr inbounds i16, ptr %70, i64 %75
  %77 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70
  %78 = load ptr, ptr %77, align 8, !tbaa !128
  %79 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5
  %80 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9
  %81 = load i32, ptr %80, align 8, !tbaa !43
  %82 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !77
  tail call void %78(ptr noundef %43, i32 noundef 32, ptr noundef nonnull %79, i32 noundef %81, i32 noundef %34, i32 noundef %37, i32 noundef %15, i32 noundef %17, ptr noundef %83) #6
  %84 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 5, i64 %13
  %85 = load ptr, ptr %84, align 8, !tbaa !70
  %86 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7
  %87 = load ptr, ptr %86, align 8, !tbaa !70
  %88 = tail call i32 %85(ptr noundef %87, i32 noundef 16, ptr noundef %43, i32 noundef 32) #6
  %89 = sext i16 %33 to i64
  %90 = getelementptr inbounds i16, ptr %73, i64 %89
  %91 = load i16, ptr %90, align 2, !tbaa !73
  %92 = zext i16 %91 to i32
  %93 = add nsw i32 %88, %92
  %94 = sext i16 %36 to i64
  %95 = getelementptr inbounds i16, ptr %76, i64 %94
  %96 = load i16, ptr %95, align 2, !tbaa !73
  %97 = zext i16 %96 to i32
  %98 = add nsw i32 %93, %97
  %99 = load i32, ptr %1, align 16, !tbaa !34
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %127, label %101

101:                                              ; preds = %62
  %102 = icmp sgt i32 %98, -1
  br i1 %102, label %103, label %131

103:                                              ; preds = %101
  %104 = and i32 %34, 65535
  %105 = shl nsw i32 %37, 16
  %106 = or disjoint i32 %105, %104
  store i32 %106, ptr %11, align 4, !tbaa !78
  %107 = load i32, ptr %1, align 16, !tbaa !34
  %108 = icmp slt i32 %107, 4
  br i1 %108, label %109, label %123

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !124
  %112 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 4
  %113 = load ptr, ptr %112, align 16, !tbaa !70
  %114 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9, i64 1
  %115 = load i32, ptr %114, align 4, !tbaa !43
  %116 = add nsw i32 %31, %37
  %117 = ashr i32 %15, 1
  %118 = ashr i32 %17, 1
  tail call void %111(ptr noundef %51, i32 noundef 32, ptr noundef %113, i32 noundef %115, i32 noundef %34, i32 noundef %116, i32 noundef %117, i32 noundef %118) #6
  %119 = load ptr, ptr %110, align 8, !tbaa !124
  %120 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 5
  %121 = load ptr, ptr %120, align 8, !tbaa !70
  %122 = load i32, ptr %114, align 4, !tbaa !43
  tail call void %119(ptr noundef %54, i32 noundef 32, ptr noundef %121, i32 noundef %122, i32 noundef %34, i32 noundef %116, i32 noundef %117, i32 noundef %118) #6
  br label %123

123:                                              ; preds = %109, %103
  %124 = load i32, ptr %1, align 16, !tbaa !34
  %125 = tail call i64 @x264_rd_cost_part(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %124) #6
  %126 = tail call i64 @llvm.umin.i64(i64 %125, i64 1152921504606846976)
  br label %131

127:                                              ; preds = %62
  %128 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 12
  %129 = load i32, ptr %128, align 8, !tbaa !117
  %130 = sext i32 %129 to i64
  br label %131

131:                                              ; preds = %101, %123, %127
  %132 = phi i64 [ %126, %123 ], [ 1152921504606846976, %101 ], [ %130, %127 ]
  %133 = icmp eq i16 %33, %64
  %134 = icmp eq i16 %36, %67
  %135 = select i1 %133, i1 %134, i1 false
  br i1 %135, label %206, label %136

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 20
  %138 = load i32, ptr %137, align 8, !tbaa !43
  %139 = icmp sgt i32 %138, %65
  br i1 %139, label %206, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21
  %142 = load i32, ptr %141, align 16, !tbaa !43
  %143 = icmp slt i32 %142, %65
  br i1 %143, label %206, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 20, i64 1
  %146 = load i32, ptr %145, align 4, !tbaa !43
  %147 = icmp sgt i32 %146, %68
  br i1 %147, label %206, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21, i64 1
  %150 = load i32, ptr %149, align 4, !tbaa !43
  %151 = icmp slt i32 %150, %68
  br i1 %151, label %206, label %152

152:                                              ; preds = %148
  %153 = load ptr, ptr %77, align 8, !tbaa !128
  %154 = load i32, ptr %80, align 8, !tbaa !43
  %155 = load ptr, ptr %82, align 8, !tbaa !77
  tail call void %153(ptr noundef %43, i32 noundef 32, ptr noundef nonnull %79, i32 noundef %154, i32 noundef %65, i32 noundef %68, i32 noundef %15, i32 noundef %17, ptr noundef %155) #6
  %156 = load ptr, ptr %84, align 8, !tbaa !70
  %157 = load ptr, ptr %86, align 8, !tbaa !70
  %158 = tail call i32 %156(ptr noundef %157, i32 noundef 16, ptr noundef %43, i32 noundef 32) #6
  %159 = load i16, ptr %70, align 2, !tbaa !73
  %160 = zext i16 %159 to i32
  %161 = shl nuw nsw i32 %160, 1
  %162 = add i32 %161, %158
  %163 = tail call i32 @llvm.smin.i32(i32 %162, i32 %98)
  %164 = mul nsw i32 %163, 17
  %165 = sdiv i32 %164, 16
  %166 = icmp sgt i32 %162, %165
  br i1 %166, label %194, label %167

167:                                              ; preds = %152
  %168 = and i32 %65, 65535
  %169 = shl nsw i32 %68, 16
  %170 = or disjoint i32 %169, %168
  store i32 %170, ptr %11, align 4, !tbaa !78
  %171 = load i32, ptr %1, align 16, !tbaa !34
  %172 = icmp slt i32 %171, 4
  br i1 %172, label %173, label %187

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !124
  %176 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 4
  %177 = load ptr, ptr %176, align 16, !tbaa !70
  %178 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9, i64 1
  %179 = load i32, ptr %178, align 4, !tbaa !43
  %180 = add nsw i32 %31, %68
  %181 = ashr i32 %15, 1
  %182 = ashr i32 %17, 1
  tail call void %175(ptr noundef %51, i32 noundef 32, ptr noundef %177, i32 noundef %179, i32 noundef %65, i32 noundef %180, i32 noundef %181, i32 noundef %182) #6
  %183 = load ptr, ptr %174, align 8, !tbaa !124
  %184 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 5
  %185 = load ptr, ptr %184, align 8, !tbaa !70
  %186 = load i32, ptr %178, align 4, !tbaa !43
  tail call void %183(ptr noundef %54, i32 noundef 32, ptr noundef %185, i32 noundef %186, i32 noundef %65, i32 noundef %180, i32 noundef %181, i32 noundef %182) #6
  br label %187

187:                                              ; preds = %173, %167
  %188 = load i32, ptr %1, align 16, !tbaa !34
  %189 = tail call i64 @x264_rd_cost_part(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %188) #6
  %190 = icmp ult i64 %189, %132
  %191 = select i1 %190, i32 %68, i32 %37
  %192 = select i1 %190, i32 %65, i32 %34
  %193 = tail call i64 @llvm.umin.i64(i64 %189, i64 %132)
  br label %194

194:                                              ; preds = %187, %152
  %195 = phi i32 [ %191, %187 ], [ %37, %152 ]
  %196 = phi i32 [ %192, %187 ], [ %34, %152 ]
  %197 = phi i64 [ %193, %187 ], [ %132, %152 ]
  %198 = icmp eq i32 %196, %65
  %199 = icmp eq i32 %195, %68
  %200 = select i1 %198, i1 %199, i1 false
  br i1 %200, label %201, label %206

201:                                              ; preds = %194
  %202 = load i16, ptr %32, align 4, !tbaa !73
  %203 = sext i16 %202 to i32
  %204 = load i16, ptr %35, align 2, !tbaa !73
  %205 = sext i16 %204 to i32
  br label %206

206:                                              ; preds = %131, %194, %201, %148, %144, %140, %136
  %207 = phi i32 [ %163, %201 ], [ %163, %194 ], [ %98, %148 ], [ %98, %144 ], [ %98, %140 ], [ %98, %136 ], [ %98, %131 ]
  %208 = phi i32 [ %205, %201 ], [ %68, %194 ], [ %68, %148 ], [ %68, %144 ], [ %68, %140 ], [ %68, %136 ], [ %68, %131 ]
  %209 = phi i32 [ %203, %201 ], [ %65, %194 ], [ %65, %148 ], [ %65, %144 ], [ %65, %140 ], [ %65, %136 ], [ %65, %131 ]
  %210 = phi i32 [ %195, %201 ], [ %195, %194 ], [ %37, %148 ], [ %37, %144 ], [ %37, %140 ], [ %37, %136 ], [ %37, %131 ]
  %211 = phi i32 [ %196, %201 ], [ %196, %194 ], [ %34, %148 ], [ %34, %144 ], [ %34, %140 ], [ %34, %136 ], [ %34, %131 ]
  %212 = phi i64 [ %197, %201 ], [ %197, %194 ], [ %132, %148 ], [ %132, %144 ], [ %132, %140 ], [ %132, %136 ], [ %132, %131 ]
  %213 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 20
  %214 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 20, i64 1
  %215 = load i32, ptr %214, align 4, !tbaa !43
  %216 = add nsw i32 %215, 3
  %217 = icmp slt i32 %210, %216
  br i1 %217, label %626, label %218

218:                                              ; preds = %206
  %219 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21
  %220 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21, i64 1
  %221 = load i32, ptr %220, align 4, !tbaa !43
  %222 = add nsw i32 %221, -3
  %223 = icmp sgt i32 %210, %222
  br i1 %223, label %626, label %224

224:                                              ; preds = %218
  %225 = load i32, ptr %213, align 8, !tbaa !43
  %226 = add nsw i32 %225, 3
  %227 = icmp slt i32 %211, %226
  br i1 %227, label %626, label %228

228:                                              ; preds = %224
  %229 = load i32, ptr %219, align 16, !tbaa !43
  %230 = add nsw i32 %229, -3
  %231 = icmp sgt i32 %211, %230
  br i1 %231, label %626, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %234 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 4
  %235 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9, i64 1
  %236 = ashr i32 %15, 1
  %237 = ashr i32 %17, 1
  %238 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 5
  br label %248

239:                                              ; preds = %319
  %240 = icmp eq i32 %320, -2
  br i1 %240, label %438, label %241

241:                                              ; preds = %239
  %242 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %243 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 4
  %244 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9, i64 1
  %245 = ashr i32 %15, 1
  %246 = ashr i32 %17, 1
  %247 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 5
  br label %325

248:                                              ; preds = %232, %319
  %249 = phi i64 [ 0, %232 ], [ %255, %319 ]
  %250 = phi i64 [ %212, %232 ], [ %323, %319 ]
  %251 = phi i32 [ %211, %232 ], [ %322, %319 ]
  %252 = phi i32 [ %210, %232 ], [ %321, %319 ]
  %253 = phi i32 [ %207, %232 ], [ %291, %319 ]
  %254 = phi i32 [ -2, %232 ], [ %320, %319 ]
  %255 = add nuw nsw i64 %249, 1
  %256 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %255
  %257 = load i8, ptr %256, align 2, !tbaa !78
  %258 = sext i8 %257 to i32
  %259 = add nsw i32 %211, %258
  %260 = icmp eq i32 %259, %209
  br i1 %260, label %261, label %267

261:                                              ; preds = %248
  %262 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %255, i64 1
  %263 = load i8, ptr %262, align 1, !tbaa !78
  %264 = sext i8 %263 to i32
  %265 = add nsw i32 %210, %264
  %266 = icmp eq i32 %265, %208
  br i1 %266, label %289, label %267

267:                                              ; preds = %261, %248
  %268 = load ptr, ptr %77, align 8, !tbaa !128
  %269 = load i32, ptr %80, align 8, !tbaa !43
  %270 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %255, i64 1
  %271 = load i8, ptr %270, align 1, !tbaa !78
  %272 = sext i8 %271 to i32
  %273 = add nsw i32 %210, %272
  %274 = load ptr, ptr %82, align 8, !tbaa !77
  tail call void %268(ptr noundef %43, i32 noundef 32, ptr noundef nonnull %79, i32 noundef %269, i32 noundef %259, i32 noundef %273, i32 noundef %15, i32 noundef %17, ptr noundef %274) #6
  %275 = load ptr, ptr %84, align 8, !tbaa !70
  %276 = load ptr, ptr %86, align 8, !tbaa !70
  %277 = tail call i32 %275(ptr noundef %276, i32 noundef 16, ptr noundef %43, i32 noundef 32) #6
  %278 = sext i32 %259 to i64
  %279 = getelementptr inbounds i16, ptr %73, i64 %278
  %280 = load i16, ptr %279, align 2, !tbaa !73
  %281 = zext i16 %280 to i32
  %282 = add nsw i32 %277, %281
  %283 = sext i32 %273 to i64
  %284 = getelementptr inbounds i16, ptr %76, i64 %283
  %285 = load i16, ptr %284, align 2, !tbaa !73
  %286 = zext i16 %285 to i32
  %287 = add nsw i32 %282, %286
  %288 = tail call i32 @llvm.smin.i32(i32 %287, i32 %253)
  br label %289

289:                                              ; preds = %267, %261
  %290 = phi i32 [ %287, %267 ], [ 268435456, %261 ]
  %291 = phi i32 [ %288, %267 ], [ %253, %261 ]
  %292 = mul nsw i32 %291, 17
  %293 = sdiv i32 %292, 16
  %294 = icmp sgt i32 %290, %293
  br i1 %294, label %319, label %295

295:                                              ; preds = %289
  %296 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %255, i64 1
  %297 = load i8, ptr %296, align 1, !tbaa !78
  %298 = sext i8 %297 to i32
  %299 = add nsw i32 %210, %298
  %300 = and i32 %259, 65535
  %301 = shl i32 %299, 16
  %302 = or disjoint i32 %301, %300
  store i32 %302, ptr %11, align 4, !tbaa !78
  %303 = load i32, ptr %1, align 16, !tbaa !34
  %304 = icmp slt i32 %303, 4
  br i1 %304, label %305, label %313

305:                                              ; preds = %295
  %306 = load ptr, ptr %233, align 8, !tbaa !124
  %307 = load ptr, ptr %234, align 16, !tbaa !70
  %308 = load i32, ptr %235, align 4, !tbaa !43
  %309 = add nsw i32 %299, %31
  tail call void %306(ptr noundef %51, i32 noundef 32, ptr noundef %307, i32 noundef %308, i32 noundef %259, i32 noundef %309, i32 noundef %236, i32 noundef %237) #6
  %310 = load ptr, ptr %233, align 8, !tbaa !124
  %311 = load ptr, ptr %238, align 8, !tbaa !70
  %312 = load i32, ptr %235, align 4, !tbaa !43
  tail call void %310(ptr noundef %54, i32 noundef 32, ptr noundef %311, i32 noundef %312, i32 noundef %259, i32 noundef %309, i32 noundef %236, i32 noundef %237) #6
  br label %313

313:                                              ; preds = %305, %295
  %314 = load i32, ptr %1, align 16, !tbaa !34
  %315 = tail call i64 @x264_rd_cost_part(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %314) #6
  %316 = icmp ult i64 %315, %250
  br i1 %316, label %317, label %319

317:                                              ; preds = %313
  %318 = trunc i64 %249 to i32
  br label %319

319:                                              ; preds = %313, %317, %289
  %320 = phi i32 [ %254, %289 ], [ %318, %317 ], [ %254, %313 ]
  %321 = phi i32 [ %252, %289 ], [ %299, %317 ], [ %252, %313 ]
  %322 = phi i32 [ %251, %289 ], [ %259, %317 ], [ %251, %313 ]
  %323 = phi i64 [ %250, %289 ], [ %315, %317 ], [ %250, %313 ]
  %324 = icmp eq i64 %255, 6
  br i1 %324, label %239, label %248, !llvm.loop !137

325:                                              ; preds = %428, %241
  %326 = phi i64 [ %323, %241 ], [ %434, %428 ]
  %327 = phi i32 [ %322, %241 ], [ %433, %428 ]
  %328 = phi i32 [ %321, %241 ], [ %432, %428 ]
  %329 = phi i32 [ 1, %241 ], [ %435, %428 ]
  %330 = phi i32 [ %291, %241 ], [ %430, %428 ]
  %331 = phi i32 [ %320, %241 ], [ %429, %428 ]
  %332 = add nsw i32 %331, 1
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [8 x i8], ptr @mod6m1, i64 0, i64 %333
  %335 = load i8, ptr %334, align 1, !tbaa !78
  %336 = zext i8 %335 to i64
  %337 = load i32, ptr %214, align 4, !tbaa !43
  %338 = add nsw i32 %337, 3
  %339 = icmp slt i32 %328, %338
  br i1 %339, label %428, label %340

340:                                              ; preds = %325
  %341 = load i32, ptr %220, align 4, !tbaa !43
  %342 = add nsw i32 %341, -3
  %343 = icmp sgt i32 %328, %342
  br i1 %343, label %428, label %344

344:                                              ; preds = %340
  %345 = add nuw nsw i64 %336, 4294967295
  %346 = zext i8 %335 to i64
  br label %349

347:                                              ; preds = %421
  %348 = icmp ne i32 %422, -2
  br label %428

349:                                              ; preds = %344, %421
  %350 = phi i64 [ 0, %344 ], [ %426, %421 ]
  %351 = phi i64 [ %326, %344 ], [ %425, %421 ]
  %352 = phi i32 [ %327, %344 ], [ %424, %421 ]
  %353 = phi i32 [ %328, %344 ], [ %423, %421 ]
  %354 = phi i32 [ %330, %344 ], [ %392, %421 ]
  %355 = phi i32 [ -2, %344 ], [ %422, %421 ]
  %356 = add nuw nsw i64 %350, %346
  %357 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %356
  %358 = load i8, ptr %357, align 2, !tbaa !78
  %359 = sext i8 %358 to i32
  %360 = add nsw i32 %327, %359
  %361 = icmp eq i32 %360, %209
  br i1 %361, label %362, label %368

362:                                              ; preds = %349
  %363 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %356, i64 1
  %364 = load i8, ptr %363, align 1, !tbaa !78
  %365 = sext i8 %364 to i32
  %366 = add nsw i32 %328, %365
  %367 = icmp eq i32 %366, %208
  br i1 %367, label %390, label %368

368:                                              ; preds = %362, %349
  %369 = load ptr, ptr %77, align 8, !tbaa !128
  %370 = load i32, ptr %80, align 8, !tbaa !43
  %371 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %356, i64 1
  %372 = load i8, ptr %371, align 1, !tbaa !78
  %373 = sext i8 %372 to i32
  %374 = add nsw i32 %328, %373
  %375 = load ptr, ptr %82, align 8, !tbaa !77
  tail call void %369(ptr noundef %43, i32 noundef 32, ptr noundef nonnull %79, i32 noundef %370, i32 noundef %360, i32 noundef %374, i32 noundef %15, i32 noundef %17, ptr noundef %375) #6
  %376 = load ptr, ptr %84, align 8, !tbaa !70
  %377 = load ptr, ptr %86, align 8, !tbaa !70
  %378 = tail call i32 %376(ptr noundef %377, i32 noundef 16, ptr noundef %43, i32 noundef 32) #6
  %379 = sext i32 %360 to i64
  %380 = getelementptr inbounds i16, ptr %73, i64 %379
  %381 = load i16, ptr %380, align 2, !tbaa !73
  %382 = zext i16 %381 to i32
  %383 = add nsw i32 %378, %382
  %384 = sext i32 %374 to i64
  %385 = getelementptr inbounds i16, ptr %76, i64 %384
  %386 = load i16, ptr %385, align 2, !tbaa !73
  %387 = zext i16 %386 to i32
  %388 = add nsw i32 %383, %387
  %389 = tail call i32 @llvm.smin.i32(i32 %388, i32 %354)
  br label %390

390:                                              ; preds = %368, %362
  %391 = phi i32 [ %388, %368 ], [ 268435456, %362 ]
  %392 = phi i32 [ %389, %368 ], [ %354, %362 ]
  %393 = mul nsw i32 %392, 17
  %394 = sdiv i32 %393, 16
  %395 = icmp sgt i32 %391, %394
  br i1 %395, label %421, label %396

396:                                              ; preds = %390
  %397 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %356, i64 1
  %398 = load i8, ptr %397, align 1, !tbaa !78
  %399 = sext i8 %398 to i32
  %400 = add nsw i32 %328, %399
  %401 = and i32 %360, 65535
  %402 = shl i32 %400, 16
  %403 = or disjoint i32 %402, %401
  store i32 %403, ptr %11, align 4, !tbaa !78
  %404 = load i32, ptr %1, align 16, !tbaa !34
  %405 = icmp slt i32 %404, 4
  br i1 %405, label %406, label %414

406:                                              ; preds = %396
  %407 = load ptr, ptr %242, align 8, !tbaa !124
  %408 = load ptr, ptr %243, align 16, !tbaa !70
  %409 = load i32, ptr %244, align 4, !tbaa !43
  %410 = add nsw i32 %400, %31
  tail call void %407(ptr noundef %51, i32 noundef 32, ptr noundef %408, i32 noundef %409, i32 noundef %360, i32 noundef %410, i32 noundef %245, i32 noundef %246) #6
  %411 = load ptr, ptr %242, align 8, !tbaa !124
  %412 = load ptr, ptr %247, align 8, !tbaa !70
  %413 = load i32, ptr %244, align 4, !tbaa !43
  tail call void %411(ptr noundef %54, i32 noundef 32, ptr noundef %412, i32 noundef %413, i32 noundef %360, i32 noundef %410, i32 noundef %245, i32 noundef %246) #6
  br label %414

414:                                              ; preds = %406, %396
  %415 = load i32, ptr %1, align 16, !tbaa !34
  %416 = tail call i64 @x264_rd_cost_part(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %415) #6
  %417 = icmp ult i64 %416, %351
  br i1 %417, label %418, label %421

418:                                              ; preds = %414
  %419 = add nuw i64 %345, %350
  %420 = trunc i64 %419 to i32
  br label %421

421:                                              ; preds = %414, %418, %390
  %422 = phi i32 [ %355, %390 ], [ %420, %418 ], [ %355, %414 ]
  %423 = phi i32 [ %353, %390 ], [ %400, %418 ], [ %353, %414 ]
  %424 = phi i32 [ %352, %390 ], [ %360, %418 ], [ %352, %414 ]
  %425 = phi i64 [ %351, %390 ], [ %416, %418 ], [ %351, %414 ]
  %426 = add nuw nsw i64 %350, 1
  %427 = icmp eq i64 %426, 3
  br i1 %427, label %347, label %349, !llvm.loop !138

428:                                              ; preds = %347, %325, %340
  %429 = phi i32 [ %331, %340 ], [ %331, %325 ], [ %422, %347 ]
  %430 = phi i32 [ %330, %340 ], [ %330, %325 ], [ %392, %347 ]
  %431 = phi i1 [ false, %340 ], [ false, %325 ], [ %348, %347 ]
  %432 = phi i32 [ %328, %340 ], [ %328, %325 ], [ %423, %347 ]
  %433 = phi i32 [ %327, %340 ], [ %327, %325 ], [ %424, %347 ]
  %434 = phi i64 [ %326, %340 ], [ %326, %325 ], [ %425, %347 ]
  %435 = add nuw nsw i32 %329, 1
  %436 = icmp ne i32 %435, 10
  %437 = select i1 %431, i1 %436, i1 false
  br i1 %437, label %325, label %438, !llvm.loop !139

438:                                              ; preds = %428, %239
  %439 = phi i32 [ %291, %239 ], [ %430, %428 ]
  %440 = phi i32 [ %321, %239 ], [ %432, %428 ]
  %441 = phi i32 [ %322, %239 ], [ %433, %428 ]
  %442 = phi i64 [ %323, %239 ], [ %434, %428 ]
  %443 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %444 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 4
  %445 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9, i64 1
  %446 = ashr i32 %15, 1
  %447 = ashr i32 %17, 1
  %448 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 5
  br label %552

449:                                              ; preds = %621
  %450 = trunc i64 %624 to i32
  %451 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 12
  store i32 %450, ptr %451, align 8, !tbaa !117
  %452 = trunc i32 %623 to i16
  store i16 %452, ptr %32, align 4, !tbaa !73
  %453 = trunc i32 %622 to i16
  store i16 %453, ptr %35, align 2, !tbaa !73
  %454 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %7
  %455 = load i8, ptr %454, align 1, !tbaa !78
  %456 = zext i8 %455 to i64
  %457 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %7
  %458 = load i8, ptr %457, align 1, !tbaa !78
  %459 = zext i8 %458 to i64
  %460 = ashr i32 %15, 2
  %461 = ashr i32 %17, 2
  %462 = and i32 %623, 65535
  %463 = shl i32 %622, 16
  %464 = or disjoint i32 %462, %463
  %465 = add nuw nsw i64 %456, 12
  %466 = shl nuw nsw i64 %459, 3
  %467 = add nuw nsw i64 %465, %466
  %468 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %6, i64 %467
  %469 = and i32 %15, -4
  %470 = zext i32 %464 to i64
  %471 = mul nuw i64 %470, 4294967297
  %472 = add i32 %469, -2
  %473 = tail call i32 @llvm.fshl.i32(i32 2, i32 %472, i32 31)
  switch i32 %473, label %499 [
    i32 7, label %490
    i32 1, label %474
    i32 3, label %482
  ]

474:                                              ; preds = %449
  store i32 %464, ptr %468, align 4, !tbaa !78
  %475 = icmp eq i32 %461, 1
  br i1 %475, label %499, label %476

476:                                              ; preds = %474
  %477 = getelementptr inbounds i8, ptr %468, i64 32
  store i32 %464, ptr %477, align 4, !tbaa !78
  %478 = icmp eq i32 %461, 2
  br i1 %478, label %499, label %479

479:                                              ; preds = %476
  %480 = getelementptr inbounds i8, ptr %468, i64 64
  store i32 %464, ptr %480, align 4, !tbaa !78
  %481 = getelementptr inbounds i8, ptr %468, i64 96
  store i32 %464, ptr %481, align 4, !tbaa !78
  br label %499

482:                                              ; preds = %449
  store i64 %471, ptr %468, align 8, !tbaa !78
  %483 = icmp eq i32 %461, 1
  br i1 %483, label %499, label %484

484:                                              ; preds = %482
  %485 = getelementptr inbounds i8, ptr %468, i64 32
  store i64 %471, ptr %485, align 8, !tbaa !78
  %486 = icmp eq i32 %461, 2
  br i1 %486, label %499, label %487

487:                                              ; preds = %484
  %488 = getelementptr inbounds i8, ptr %468, i64 64
  store i64 %471, ptr %488, align 8, !tbaa !78
  %489 = getelementptr inbounds i8, ptr %468, i64 96
  store i64 %471, ptr %489, align 8, !tbaa !78
  br label %499

490:                                              ; preds = %449, %490
  %491 = phi ptr [ %497, %490 ], [ %468, %449 ]
  %492 = phi i32 [ %496, %490 ], [ %461, %449 ]
  store i64 %471, ptr %491, align 8, !tbaa !78
  %493 = getelementptr inbounds i8, ptr %491, i64 8
  store i64 %471, ptr %493, align 8, !tbaa !78
  %494 = getelementptr inbounds i8, ptr %491, i64 32
  store i64 %471, ptr %494, align 8, !tbaa !78
  %495 = getelementptr inbounds i8, ptr %491, i64 40
  store i64 %471, ptr %495, align 8, !tbaa !78
  %496 = add nsw i32 %492, -2
  %497 = getelementptr inbounds i8, ptr %491, i64 64
  %498 = icmp eq i32 %496, 0
  br i1 %498, label %499, label %490, !llvm.loop !135

499:                                              ; preds = %490, %449, %474, %476, %479, %482, %484, %487
  %500 = load i16, ptr %63, align 16, !tbaa !73
  %501 = sext i16 %500 to i32
  %502 = sub nsw i32 %623, %501
  %503 = tail call i32 @llvm.abs.i32(i32 %502, i1 true)
  %504 = tail call i32 @llvm.umin.i32(i32 %503, i32 33)
  %505 = load i16, ptr %66, align 2, !tbaa !73
  %506 = sext i16 %505 to i32
  %507 = sub nsw i32 %622, %506
  %508 = tail call i32 @llvm.abs.i32(i32 %507, i1 true)
  %509 = tail call i32 @llvm.umin.i32(i32 %508, i32 33)
  %510 = shl nuw nsw i32 %509, 8
  %511 = or disjoint i32 %510, %504
  %512 = trunc i32 %511 to i16
  %513 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %6, i64 %467
  %514 = mul nuw nsw i32 %511, 65537
  %515 = zext nneg i32 %514 to i64
  %516 = mul nuw nsw i64 %515, 4294967297
  %517 = add i32 %460, 2147483647
  %518 = and i32 %517, 2147483647
  switch i32 %518, label %626 [
    i32 0, label %519
    i32 1, label %527
    i32 3, label %535
    i32 7, label %543
  ]

519:                                              ; preds = %499
  store i16 %512, ptr %513, align 2, !tbaa !78
  %520 = icmp eq i32 %461, 1
  br i1 %520, label %626, label %521

521:                                              ; preds = %519
  %522 = getelementptr inbounds i8, ptr %513, i64 16
  store i16 %512, ptr %522, align 2, !tbaa !78
  %523 = icmp eq i32 %461, 2
  br i1 %523, label %626, label %524

524:                                              ; preds = %521
  %525 = getelementptr inbounds i8, ptr %513, i64 32
  store i16 %512, ptr %525, align 2, !tbaa !78
  %526 = getelementptr inbounds i8, ptr %513, i64 48
  store i16 %512, ptr %526, align 2, !tbaa !78
  br label %626

527:                                              ; preds = %499
  store i32 %514, ptr %513, align 4, !tbaa !78
  %528 = icmp eq i32 %461, 1
  br i1 %528, label %626, label %529

529:                                              ; preds = %527
  %530 = getelementptr inbounds i8, ptr %513, i64 16
  store i32 %514, ptr %530, align 4, !tbaa !78
  %531 = icmp eq i32 %461, 2
  br i1 %531, label %626, label %532

532:                                              ; preds = %529
  %533 = getelementptr inbounds i8, ptr %513, i64 32
  store i32 %514, ptr %533, align 4, !tbaa !78
  %534 = getelementptr inbounds i8, ptr %513, i64 48
  store i32 %514, ptr %534, align 4, !tbaa !78
  br label %626

535:                                              ; preds = %499
  store i64 %516, ptr %513, align 8, !tbaa !78
  %536 = icmp eq i32 %461, 1
  br i1 %536, label %626, label %537

537:                                              ; preds = %535
  %538 = getelementptr inbounds i8, ptr %513, i64 16
  store i64 %516, ptr %538, align 8, !tbaa !78
  %539 = icmp eq i32 %461, 2
  br i1 %539, label %626, label %540

540:                                              ; preds = %537
  %541 = getelementptr inbounds i8, ptr %513, i64 32
  store i64 %516, ptr %541, align 8, !tbaa !78
  %542 = getelementptr inbounds i8, ptr %513, i64 48
  store i64 %516, ptr %542, align 8, !tbaa !78
  br label %626

543:                                              ; preds = %499, %543
  %544 = phi ptr [ %550, %543 ], [ %513, %499 ]
  %545 = phi i32 [ %549, %543 ], [ %461, %499 ]
  store i64 %516, ptr %544, align 8, !tbaa !78
  %546 = getelementptr inbounds i8, ptr %544, i64 8
  store i64 %516, ptr %546, align 8, !tbaa !78
  %547 = getelementptr inbounds i8, ptr %544, i64 16
  store i64 %516, ptr %547, align 8, !tbaa !78
  %548 = getelementptr inbounds i8, ptr %544, i64 24
  store i64 %516, ptr %548, align 8, !tbaa !78
  %549 = add nsw i32 %545, -2
  %550 = getelementptr inbounds i8, ptr %544, i64 32
  %551 = icmp eq i32 %549, 0
  br i1 %551, label %626, label %543, !llvm.loop !135

552:                                              ; preds = %438, %621
  %553 = phi i64 [ 0, %438 ], [ %558, %621 ]
  %554 = phi i64 [ %442, %438 ], [ %624, %621 ]
  %555 = phi i32 [ %441, %438 ], [ %623, %621 ]
  %556 = phi i32 [ %440, %438 ], [ %622, %621 ]
  %557 = phi i32 [ %439, %438 ], [ %594, %621 ]
  %558 = add nuw nsw i64 %553, 1
  %559 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %558
  %560 = load i8, ptr %559, align 2, !tbaa !78
  %561 = sext i8 %560 to i32
  %562 = add nsw i32 %441, %561
  %563 = icmp eq i32 %562, %209
  br i1 %563, label %564, label %570

564:                                              ; preds = %552
  %565 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %558, i64 1
  %566 = load i8, ptr %565, align 1, !tbaa !78
  %567 = sext i8 %566 to i32
  %568 = add nsw i32 %440, %567
  %569 = icmp eq i32 %568, %208
  br i1 %569, label %592, label %570

570:                                              ; preds = %564, %552
  %571 = load ptr, ptr %77, align 8, !tbaa !128
  %572 = load i32, ptr %80, align 8, !tbaa !43
  %573 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %558, i64 1
  %574 = load i8, ptr %573, align 1, !tbaa !78
  %575 = sext i8 %574 to i32
  %576 = add nsw i32 %440, %575
  %577 = load ptr, ptr %82, align 8, !tbaa !77
  tail call void %571(ptr noundef %43, i32 noundef 32, ptr noundef nonnull %79, i32 noundef %572, i32 noundef %562, i32 noundef %576, i32 noundef %15, i32 noundef %17, ptr noundef %577) #6
  %578 = load ptr, ptr %84, align 8, !tbaa !70
  %579 = load ptr, ptr %86, align 8, !tbaa !70
  %580 = tail call i32 %578(ptr noundef %579, i32 noundef 16, ptr noundef %43, i32 noundef 32) #6
  %581 = sext i32 %562 to i64
  %582 = getelementptr inbounds i16, ptr %73, i64 %581
  %583 = load i16, ptr %582, align 2, !tbaa !73
  %584 = zext i16 %583 to i32
  %585 = add nsw i32 %580, %584
  %586 = sext i32 %576 to i64
  %587 = getelementptr inbounds i16, ptr %76, i64 %586
  %588 = load i16, ptr %587, align 2, !tbaa !73
  %589 = zext i16 %588 to i32
  %590 = add nsw i32 %585, %589
  %591 = tail call i32 @llvm.smin.i32(i32 %590, i32 %557)
  br label %592

592:                                              ; preds = %570, %564
  %593 = phi i32 [ %590, %570 ], [ 268435456, %564 ]
  %594 = phi i32 [ %591, %570 ], [ %557, %564 ]
  %595 = mul nsw i32 %594, 17
  %596 = sdiv i32 %595, 16
  %597 = icmp sgt i32 %593, %596
  br i1 %597, label %621, label %598

598:                                              ; preds = %592
  %599 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %558, i64 1
  %600 = load i8, ptr %599, align 1, !tbaa !78
  %601 = sext i8 %600 to i32
  %602 = add nsw i32 %440, %601
  %603 = and i32 %562, 65535
  %604 = shl i32 %602, 16
  %605 = or disjoint i32 %604, %603
  store i32 %605, ptr %11, align 4, !tbaa !78
  %606 = load i32, ptr %1, align 16, !tbaa !34
  %607 = icmp slt i32 %606, 4
  br i1 %607, label %608, label %616

608:                                              ; preds = %598
  %609 = load ptr, ptr %443, align 8, !tbaa !124
  %610 = load ptr, ptr %444, align 16, !tbaa !70
  %611 = load i32, ptr %445, align 4, !tbaa !43
  %612 = add nsw i32 %602, %31
  tail call void %609(ptr noundef %51, i32 noundef 32, ptr noundef %610, i32 noundef %611, i32 noundef %562, i32 noundef %612, i32 noundef %446, i32 noundef %447) #6
  %613 = load ptr, ptr %443, align 8, !tbaa !124
  %614 = load ptr, ptr %448, align 8, !tbaa !70
  %615 = load i32, ptr %445, align 4, !tbaa !43
  tail call void %613(ptr noundef %54, i32 noundef 32, ptr noundef %614, i32 noundef %615, i32 noundef %562, i32 noundef %612, i32 noundef %446, i32 noundef %447) #6
  br label %616

616:                                              ; preds = %608, %598
  %617 = load i32, ptr %1, align 16, !tbaa !34
  %618 = tail call i64 @x264_rd_cost_part(ptr noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %617) #6
  %619 = icmp ult i64 %618, %554
  br i1 %619, label %620, label %621

620:                                              ; preds = %616
  br label %621

621:                                              ; preds = %616, %620, %592
  %622 = phi i32 [ %556, %592 ], [ %602, %620 ], [ %556, %616 ]
  %623 = phi i32 [ %555, %592 ], [ %562, %620 ], [ %555, %616 ]
  %624 = phi i64 [ %554, %592 ], [ %618, %620 ], [ %554, %616 ]
  %625 = icmp eq i64 %558, 8
  br i1 %625, label %449, label %552, !llvm.loop !140

626:                                              ; preds = %543, %540, %537, %535, %532, %529, %527, %524, %521, %519, %499, %206, %218, %224, %228
  store i32 0, ptr %55, align 4, !tbaa !136
  ret void
}

declare void @x264_mb_predict_mv(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @x264_rd_cost_part(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"", !36, i64 0, !39, i64 8, !36, i64 16, !36, i64 20, !39, i64 24, !37, i64 32, !39, i64 80, !37, i64 88, !39, i64 112, !37, i64 120, !37, i64 128, !36, i64 132, !36, i64 136, !37, i64 140}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!41, !36, i64 0}
!41 = !{!"", !36, i64 0, !36, i64 4}
!42 = !{!41, !36, i64 4}
!43 = !{!36, !36, i64 0}
!44 = !{!45, !36, i64 416}
!45 = !{!"x264_t", !46, i64 0, !37, i64 704, !36, i64 1736, !36, i64 1740, !36, i64 1744, !36, i64 1748, !36, i64 1752, !51, i64 1760, !39, i64 1832, !36, i64 1840, !36, i64 1844, !36, i64 1848, !36, i64 1852, !36, i64 1856, !36, i64 1860, !36, i64 1864, !36, i64 1868, !36, i64 1872, !36, i64 1876, !36, i64 1880, !36, i64 1884, !36, i64 1888, !36, i64 1892, !37, i64 1896, !39, i64 3200, !37, i64 3208, !39, i64 3328, !36, i64 3336, !36, i64 3340, !37, i64 3344, !37, i64 3376, !37, i64 3392, !37, i64 3424, !37, i64 3440, !37, i64 3472, !37, i64 3488, !37, i64 3520, !37, i64 3536, !37, i64 4272, !39, i64 7216, !54, i64 7232, !55, i64 13904, !56, i64 14416, !39, i64 14680, !39, i64 14688, !36, i64 14696, !37, i64 14704, !36, i64 14856, !37, i64 14864, !37, i64 15016, !36, i64 15024, !36, i64 15028, !53, i64 15032, !57, i64 15040, !58, i64 16368, !39, i64 26704, !61, i64 26712, !37, i64 30400, !37, i64 30912, !37, i64 31168, !39, i64 31176, !37, i64 31184, !37, i64 31232, !37, i64 31248, !37, i64 31304, !37, i64 31360, !37, i64 31456, !39, i64 31552, !64, i64 31560, !65, i64 32616, !66, i64 32912, !67, i64 33032, !68, i64 33080, !69, i64 33256, !39, i64 33328}
!46 = !{!"x264_param_t", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !47, i64 44, !36, i64 80, !36, i64 84, !36, i64 88, !36, i64 92, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108, !36, i64 112, !36, i64 116, !36, i64 120, !36, i64 124, !36, i64 128, !36, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !39, i64 152, !37, i64 160, !37, i64 176, !37, i64 192, !37, i64 208, !37, i64 224, !37, i64 288, !39, i64 352, !39, i64 360, !36, i64 368, !36, i64 372, !39, i64 376, !48, i64 384, !50, i64 488, !36, i64 632, !36, i64 636, !36, i64 640, !36, i64 644, !36, i64 648, !36, i64 652, !36, i64 656, !36, i64 660, !36, i64 664, !36, i64 668, !36, i64 672, !36, i64 676, !36, i64 680, !36, i64 684, !36, i64 688, !36, i64 692, !39, i64 696}
!47 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32}
!48 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !49, i64 72, !49, i64 76, !36, i64 80, !37, i64 84, !36, i64 92, !36, i64 96}
!49 = !{!"float", !37, i64 0}
!50 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !49, i64 24, !49, i64 28, !49, i64 32, !36, i64 36, !36, i64 40, !49, i64 44, !49, i64 48, !49, i64 52, !36, i64 56, !49, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !39, i64 80, !36, i64 88, !39, i64 96, !49, i64 104, !49, i64 108, !49, i64 112, !39, i64 120, !36, i64 128, !39, i64 136}
!51 = !{!"", !36, i64 0, !36, i64 4, !39, i64 8, !36, i64 16, !39, i64 24, !52, i64 32}
!52 = !{!"bs_s", !39, i64 0, !39, i64 8, !39, i64 16, !53, i64 24, !36, i64 32, !36, i64 36}
!53 = !{!"long", !37, i64 0}
!54 = !{!"", !39, i64 0, !39, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !37, i64 60, !36, i64 68, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !36, i64 88, !36, i64 92, !37, i64 96, !37, i64 352, !36, i64 6496, !36, i64 6500, !37, i64 6504, !36, i64 6632, !36, i64 6636, !36, i64 6640, !36, i64 6644, !36, i64 6648, !36, i64 6652, !36, i64 6656, !36, i64 6660}
!55 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !39, i64 16, !39, i64 24, !39, i64 32, !36, i64 48, !37, i64 52}
!56 = !{!"", !39, i64 0, !37, i64 8, !39, i64 24, !37, i64 32, !36, i64 176, !36, i64 180, !36, i64 184, !36, i64 188, !36, i64 192, !36, i64 196, !36, i64 200, !53, i64 208, !53, i64 216, !37, i64 224, !53, i64 240, !53, i64 248, !36, i64 256, !36, i64 260}
!57 = !{!"", !37, i64 0, !37, i64 32, !37, i64 48, !37, i64 560}
!58 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !36, i64 120, !37, i64 124, !37, i64 140, !36, i64 204, !36, i64 208, !36, i64 212, !36, i64 216, !36, i64 220, !36, i64 224, !36, i64 228, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !39, i64 280, !39, i64 288, !39, i64 296, !37, i64 304, !37, i64 320, !37, i64 336, !37, i64 352, !39, i64 864, !39, i64 872, !39, i64 880, !37, i64 888, !36, i64 1016, !36, i64 1020, !37, i64 1024, !36, i64 1028, !36, i64 1032, !36, i64 1036, !36, i64 1040, !36, i64 1044, !36, i64 1048, !36, i64 1052, !36, i64 1056, !36, i64 1060, !59, i64 1072, !60, i64 8656, !36, i64 9424, !36, i64 9428, !36, i64 9432, !36, i64 9436, !36, i64 9440, !36, i64 9444, !36, i64 9448, !36, i64 9452, !37, i64 9456, !36, i64 9472, !36, i64 9476, !37, i64 9480, !39, i64 9992, !37, i64 10000, !39, i64 10256, !37, i64 10264, !36, i64 10284, !37, i64 10288}
!59 = !{!"", !37, i64 0, !37, i64 384, !37, i64 1248, !37, i64 1504, !37, i64 1760, !37, i64 2144, !37, i64 2624, !37, i64 2640, !36, i64 2656, !36, i64 2660, !37, i64 2672, !37, i64 3184, !37, i64 3696, !37, i64 3776, !37, i64 3904, !37, i64 3928, !37, i64 3952, !37, i64 3976, !37, i64 3984, !37, i64 7056, !37, i64 7312, !37, i64 7568}
!60 = !{!"", !37, i64 0, !37, i64 48, !37, i64 96, !37, i64 176, !37, i64 496, !37, i64 656, !37, i64 696, !37, i64 728, !36, i64 736, !37, i64 740, !36, i64 744, !36, i64 748, !36, i64 752, !36, i64 756}
!61 = !{!"", !62, i64 0, !37, i64 704, !37, i64 728, !37, i64 768, !37, i64 808, !37, i64 880, !37, i64 920, !37, i64 960, !37, i64 1000, !37, i64 1040, !37, i64 1080, !37, i64 1120, !37, i64 1880, !37, i64 2152, !37, i64 2168, !37, i64 3192, !37, i64 3240, !37, i64 3656, !37, i64 3664, !37, i64 3672}
!62 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !37, i64 12, !36, i64 88, !36, i64 92, !36, i64 96, !37, i64 100, !37, i64 108, !37, i64 364, !37, i64 432, !37, i64 456, !37, i64 664, !37, i64 672, !63, i64 696}
!63 = !{!"double", !37, i64 0}
!64 = !{!"", !37, i64 0, !37, i64 56, !37, i64 112, !37, i64 168, !37, i64 224, !37, i64 256, !37, i64 312, !37, i64 368, !37, i64 424, !37, i64 480, !37, i64 536, !39, i64 592, !37, i64 600, !37, i64 632, !39, i64 664, !39, i64 672, !37, i64 680, !37, i64 736, !37, i64 792, !37, i64 848, !37, i64 904, !39, i64 960, !39, i64 968, !39, i64 976, !39, i64 984, !39, i64 992, !39, i64 1000, !39, i64 1008, !39, i64 1016, !39, i64 1024, !39, i64 1032, !39, i64 1040, !39, i64 1048}
!65 = !{!"", !39, i64 0, !39, i64 8, !39, i64 16, !37, i64 24, !37, i64 104, !39, i64 160, !39, i64 168, !39, i64 176, !39, i64 184, !39, i64 192, !39, i64 200, !39, i64 208, !39, i64 216, !39, i64 224, !39, i64 232, !39, i64 240, !39, i64 248, !39, i64 256, !39, i64 264, !39, i64 272, !39, i64 280, !39, i64 288}
!66 = !{!"", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !39, i64 112}
!67 = !{!"", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40}
!68 = !{!"", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !37, i64 88, !37, i64 136}
!69 = !{!"", !37, i64 0, !37, i64 16, !37, i64 32, !37, i64 48, !39, i64 64}
!70 = !{!39, !39, i64 0}
!71 = !{!35, !39, i64 80}
!72 = !{!35, !39, i64 8}
!73 = !{!74, !74, i64 0}
!74 = !{!"short", !37, i64 0}
!75 = !{!45, !36, i64 16408}
!76 = !{!45, !39, i64 32624}
!77 = !{!35, !39, i64 24}
!78 = !{!37, !37, i64 0}
!79 = distinct !{!79, !80, !81}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = distinct !{!82, !80, !81}
!83 = distinct !{!83, !80, !81}
!84 = !{!45, !36, i64 16404}
!85 = distinct !{!85, !80, !81}
!86 = distinct !{!86, !80, !81}
!87 = distinct !{!87, !80, !81}
!88 = distinct !{!88, !80, !81}
!89 = distinct !{!89, !80, !81}
!90 = distinct !{!90, !80, !81}
!91 = distinct !{!91, !80, !81}
!92 = distinct !{!92, !80, !81}
!93 = distinct !{!93, !80, !81}
!94 = distinct !{!94, !80, !81}
!95 = distinct !{!95, !80, !81}
!96 = distinct !{!96, !80, !81}
!97 = distinct !{!97, !80, !81}
!98 = !{!35, !39, i64 112}
!99 = !{!45, !39, i64 31176}
!100 = !{!45, !36, i64 25792}
!101 = !{!45, !39, i64 14680}
!102 = distinct !{!102, !80, !81}
!103 = !{!104, !36, i64 0}
!104 = !{!"", !36, i64 0, !37, i64 4}
!105 = distinct !{!105, !80, !81}
!106 = distinct !{!106, !80, !81}
!107 = distinct !{!107, !80, !81}
!108 = distinct !{!108, !80, !81}
!109 = distinct !{!109, !80, !81}
!110 = distinct !{!110, !80, !81}
!111 = distinct !{!111, !80, !81}
!112 = distinct !{!112, !80, !81}
!113 = distinct !{!113, !80, !81}
!114 = distinct !{!114, !80, !81}
!115 = distinct !{!115, !80, !81}
!116 = distinct !{!116, !80, !81}
!117 = !{!35, !36, i64 136}
!118 = !{!35, !36, i64 132}
!119 = !{!45, !36, i64 16412}
!120 = !{!45, !36, i64 16436}
!121 = !{!35, !36, i64 20}
!122 = !{!45, !36, i64 16388}
!123 = distinct !{!123, !80, !81}
!124 = !{!45, !39, i64 32632}
!125 = !{!126, !39, i64 48}
!126 = !{!"x264_weight_t", !37, i64 0, !37, i64 16, !36, i64 32, !36, i64 36, !36, i64 40, !39, i64 48}
!127 = distinct !{!127, !80, !81}
!128 = !{!45, !39, i64 32616}
!129 = !{!35, !36, i64 16}
!130 = !{!45, !39, i64 32824}
!131 = distinct !{!131, !80, !81}
!132 = distinct !{!132, !80, !81}
!133 = distinct !{!133, !80, !81}
!134 = distinct !{!134, !80, !81}
!135 = distinct !{!135, !80, !81}
!136 = !{!45, !36, i64 17420}
!137 = distinct !{!137, !80, !81}
!138 = distinct !{!138, !80, !81}
!139 = distinct !{!139, !80, !81}
!140 = distinct !{!140, !80, !81}
