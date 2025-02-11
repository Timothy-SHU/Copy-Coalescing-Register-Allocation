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
@x264_me_refine_bidir.dia4d = internal unnamed_addr constant [33 x [4 x i8]] [[4 x i8] zeroinitializer, [4 x i8] c"\00\00\00\01", [4 x i8] c"\00\00\00\FF", [4 x i8] c"\00\00\01\00", [4 x i8] c"\00\00\FF\00", [4 x i8] c"\00\01\00\00", [4 x i8] c"\00\FF\00\00", [4 x i8] c"\01\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\00\00\01\01", [4 x i8] c"\00\00\FF\FF", [4 x i8] c"\00\01\01\00", [4 x i8] c"\00\FF\FF\00", [4 x i8] c"\01\01\00\00", [4 x i8] c"\FF\FF\00\00", [4 x i8] c"\01\00\00\01", [4 x i8] c"\FF\00\00\FF", [4 x i8] c"\00\01\00\01", [4 x i8] c"\00\FF\00\FF", [4 x i8] c"\01\00\01\00", [4 x i8] c"\FF\00\FF\00", [4 x i8] c"\00\00\FF\01", [4 x i8] c"\00\00\01\FF", [4 x i8] c"\00\FF\01\00", [4 x i8] c"\00\01\FF\00", [4 x i8] c"\FF\01\00\00", [4 x i8] c"\01\FF\00\00", [4 x i8] c"\01\00\00\FF", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\00\FF\00\01", [4 x i8] c"\00\01\00\FF", [4 x i8] c"\FF\00\01\00", [4 x i8] c"\01\00\FF\00"], align 8
@weight_none = external constant [3 x %struct.x264_weight_t], align 16
@block_idx_xy_fdec = internal unnamed_addr constant [16 x i16] [i16 0, i16 4, i16 128, i16 132, i16 8, i16 12, i16 136, i16 140, i16 256, i16 260, i16 384, i16 388, i16 264, i16 268, i16 392, i16 396], align 16
@block_idx_x = internal unnamed_addr constant [16 x i8] c"\00\01\00\01\02\03\02\03\00\01\00\01\02\03\02\03", align 16
@block_idx_y = internal unnamed_addr constant [16 x i8] c"\00\00\01\01\00\00\01\01\02\02\03\03\02\02\03\03", align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_me_search_ref(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [256 x i8], align 16
  %7 = alloca [16 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [16 x [2 x i16]], align 8
  %11 = alloca [4 x i32], align 16
  %12 = alloca [3 x i32], align 4
  %13 = load i32, ptr %1, align 16, !tbaa !6
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %14
  %16 = load i32, ptr %15, align 8, !tbaa !12
  %17 = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %14, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !14
  %19 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !15
  %21 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 8
  %22 = load i32, ptr %21, align 16, !tbaa !16
  %23 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 6
  %26 = load ptr, ptr %25, align 16, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 22
  %28 = load i32, ptr %27, align 8, !tbaa !15
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 22, i64 1
  %30 = load i32, ptr %29, align 4, !tbaa !15
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 23
  %32 = load i32, ptr %31, align 16, !tbaa !15
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 23, i64 1
  %34 = load i32, ptr %33, align 4, !tbaa !15
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
  %48 = load ptr, ptr %47, align 8, !tbaa !44
  %49 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 10
  %50 = load i16, ptr %49, align 16, !tbaa !45
  %51 = sext i16 %50 to i32
  %52 = sext i16 %50 to i64
  %53 = sub nsw i64 0, %52
  %54 = getelementptr inbounds i16, ptr %48, i64 %53
  %55 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 10, i64 1
  %56 = load i16, ptr %55, align 2, !tbaa !45
  %57 = sext i16 %56 to i64
  %58 = sub nsw i64 0, %57
  %59 = getelementptr inbounds i16, ptr %48, i64 %58
  %60 = tail call fastcc i32 @x264_clip3(i32 noundef %51, i32 noundef %35, i32 noundef %37) #10
  %61 = sext i16 %56 to i32
  %62 = tail call fastcc i32 @x264_clip3(i32 noundef %61, i32 noundef %36, i32 noundef %38) #10
  %63 = add nsw i32 %60, 2
  %64 = ashr i32 %63, 2
  %65 = add nsw i32 %62, 2
  %66 = ashr i32 %65, 2
  %67 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 10
  %68 = load i32, ptr %67, align 8, !tbaa !47
  %69 = icmp sgt i32 %68, 2
  br i1 %69, label %70, label %175

70:                                               ; preds = %5
  %71 = tail call fastcc i32 @pack16to32_mask(i32 noundef %60, i32 noundef %62) #10
  %72 = icmp eq i32 %3, 0
  br i1 %72, label %105, label %73

73:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 16, ptr %8, align 4, !tbaa !15
  %74 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !48
  %76 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5
  %77 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !49
  %79 = call ptr %75(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %76, i32 noundef %20, i32 noundef %60, i32 noundef %62, i32 noundef %16, i32 noundef %18, ptr noundef %78) #11
  %80 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %81 = load ptr, ptr %80, align 8, !tbaa !42
  %82 = load i32, ptr %8, align 4, !tbaa !15
  %83 = call i32 %81(ptr noundef %24, i32 noundef 16, ptr noundef %79, i32 noundef %82) #11
  %84 = sext i32 %60 to i64
  %85 = getelementptr inbounds i16, ptr %54, i64 %84
  %86 = load i16, ptr %85, align 2, !tbaa !45
  %87 = zext i16 %86 to i32
  %88 = add nsw i32 %83, %87
  %89 = sext i32 %62 to i64
  %90 = getelementptr inbounds i16, ptr %59, i64 %89
  %91 = load i16, ptr %90, align 2, !tbaa !45
  %92 = zext i16 %91 to i32
  %93 = add nsw i32 %88, %92
  %94 = icmp slt i32 %93, 268435456
  %95 = call i32 @llvm.smin.i32(i32 %93, i32 268435456)
  %96 = select i1 %94, i32 %62, i32 0
  %97 = select i1 %94, i32 %60, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  %98 = icmp sgt i32 %3, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %73
  %100 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 1
  %101 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5
  %102 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 4
  %103 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %104 = zext nneg i32 %3 to i64
  br label %133

105:                                              ; preds = %169, %70, %73
  %106 = phi i32 [ %95, %73 ], [ 268435456, %70 ], [ %170, %169 ]
  %107 = phi i32 [ %96, %73 ], [ 0, %70 ], [ %171, %169 ]
  %108 = phi i32 [ %97, %73 ], [ 0, %70 ], [ %172, %169 ]
  %109 = add nsw i32 %108, 2
  %110 = ashr i32 %109, 2
  %111 = add nsw i32 %107, 2
  %112 = ashr i32 %111, 2
  %113 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %114 = load ptr, ptr %113, align 8, !tbaa !42
  %115 = mul nsw i32 %112, %20
  %116 = add nsw i32 %115, %110
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, ptr %26, i64 %117
  %119 = call i32 %114(ptr noundef %24, i32 noundef 16, ptr noundef %118, i32 noundef %20) #11
  %120 = and i32 %109, -4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i16, ptr %54, i64 %121
  %123 = load i16, ptr %122, align 2, !tbaa !45
  %124 = zext i16 %123 to i32
  %125 = and i32 %111, -4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i16, ptr %59, i64 %126
  %128 = load i16, ptr %127, align 2, !tbaa !45
  %129 = zext i16 %128 to i32
  %130 = add i32 %119, %124
  %131 = add i32 %130, %129
  %132 = call i32 @llvm.smin.i32(i32 %131, i32 268435456)
  br label %246

133:                                              ; preds = %99, %169
  %134 = phi i64 [ 0, %99 ], [ %173, %169 ]
  %135 = phi i32 [ %97, %99 ], [ %172, %169 ]
  %136 = phi i32 [ %96, %99 ], [ %171, %169 ]
  %137 = phi i32 [ %95, %99 ], [ %170, %169 ]
  %138 = getelementptr inbounds [2 x i16], ptr %2, i64 %134
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 0
  %141 = icmp eq i32 %71, %139
  %142 = select i1 %140, i1 true, i1 %141
  br i1 %142, label %169, label %143

143:                                              ; preds = %133
  %144 = shl i32 %139, 16
  %145 = ashr exact i32 %144, 16
  %146 = call fastcc i32 @x264_clip3(i32 noundef %145, i32 noundef %35, i32 noundef %37) #10
  %147 = ashr i32 %139, 16
  %148 = call fastcc i32 @x264_clip3(i32 noundef %147, i32 noundef %36, i32 noundef %38) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store i32 16, ptr %9, align 4, !tbaa !15
  %149 = load ptr, ptr %100, align 8, !tbaa !48
  %150 = load ptr, ptr %102, align 8, !tbaa !49
  %151 = call ptr %149(ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef nonnull %101, i32 noundef %20, i32 noundef %146, i32 noundef %148, i32 noundef %16, i32 noundef %18, ptr noundef %150) #11
  %152 = load ptr, ptr %103, align 8, !tbaa !42
  %153 = load i32, ptr %9, align 4, !tbaa !15
  %154 = call i32 %152(ptr noundef %24, i32 noundef 16, ptr noundef %151, i32 noundef %153) #11
  %155 = sext i32 %146 to i64
  %156 = getelementptr inbounds i16, ptr %54, i64 %155
  %157 = load i16, ptr %156, align 2, !tbaa !45
  %158 = zext i16 %157 to i32
  %159 = add nsw i32 %154, %158
  %160 = sext i32 %148 to i64
  %161 = getelementptr inbounds i16, ptr %59, i64 %160
  %162 = load i16, ptr %161, align 2, !tbaa !45
  %163 = zext i16 %162 to i32
  %164 = add nsw i32 %159, %163
  %165 = icmp slt i32 %164, %137
  %166 = call i32 @llvm.smin.i32(i32 %164, i32 %137)
  %167 = select i1 %165, i32 %148, i32 %136
  %168 = select i1 %165, i32 %146, i32 %135
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  br label %169

169:                                              ; preds = %133, %143
  %170 = phi i32 [ %166, %143 ], [ %137, %133 ]
  %171 = phi i32 [ %167, %143 ], [ %136, %133 ]
  %172 = phi i32 [ %168, %143 ], [ %135, %133 ]
  %173 = add nuw nsw i64 %134, 1
  %174 = icmp eq i64 %173, %104
  br i1 %174, label %105, label %133, !llvm.loop !50

175:                                              ; preds = %5
  %176 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %177 = load ptr, ptr %176, align 8, !tbaa !42
  %178 = mul nsw i32 %66, %20
  %179 = add nsw i32 %178, %64
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, ptr %26, i64 %180
  %182 = tail call i32 %177(ptr noundef %24, i32 noundef 16, ptr noundef %181, i32 noundef %20) #11
  %183 = tail call fastcc i32 @pack16to32_mask(i32 noundef %64, i32 noundef %66) #10
  %184 = icmp sgt i32 %3, 0
  br i1 %184, label %185, label %246

185:                                              ; preds = %175
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #9
  call fastcc void @x264_predictor_roundclip(ptr noundef nonnull %10, ptr noundef %2, i32 noundef %3, i32 noundef %28, i32 noundef %32, i32 noundef %30, i32 noundef %34) #10
  %186 = shl i32 %182, 4
  %187 = add nuw i32 %3, 1
  %188 = zext i32 %187 to i64
  br label %192

189:                                              ; preds = %229
  %190 = and i32 %230, 15
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %242, label %233

192:                                              ; preds = %185, %229
  %193 = phi i64 [ 1, %185 ], [ %231, %229 ]
  %194 = phi i32 [ %186, %185 ], [ %230, %229 ]
  %195 = add nsw i64 %193, -1
  %196 = getelementptr inbounds [16 x [2 x i16]], ptr %10, i64 0, i64 %195
  %197 = load i32, ptr %196, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %229, label %199

199:                                              ; preds = %192
  %200 = getelementptr inbounds [2 x i16], ptr %2, i64 %195
  %201 = load i32, ptr %200, align 4, !tbaa !52
  %202 = icmp eq i32 %183, %201
  br i1 %202, label %229, label %203

203:                                              ; preds = %199
  %204 = shl i32 %197, 16
  %205 = ashr exact i32 %204, 16
  %206 = ashr i32 %197, 16
  %207 = load ptr, ptr %176, align 8, !tbaa !42
  %208 = mul nsw i32 %20, %206
  %209 = add nsw i32 %208, %205
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, ptr %26, i64 %210
  %212 = tail call i32 %207(ptr noundef %24, i32 noundef 16, ptr noundef %211, i32 noundef %20) #11
  %213 = ashr exact i32 %204, 14
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i16, ptr %54, i64 %214
  %216 = load i16, ptr %215, align 2, !tbaa !45
  %217 = zext i16 %216 to i32
  %218 = shl nsw i32 %206, 2
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i16, ptr %59, i64 %219
  %221 = load i16, ptr %220, align 2, !tbaa !45
  %222 = zext i16 %221 to i32
  %223 = add i32 %212, %217
  %224 = add i32 %223, %222
  %225 = shl i32 %224, 4
  %226 = trunc i64 %193 to i32
  %227 = add nsw i32 %225, %226
  %228 = tail call i32 @llvm.smin.i32(i32 %227, i32 %194)
  br label %229

229:                                              ; preds = %192, %199, %203
  %230 = phi i32 [ %228, %203 ], [ %194, %199 ], [ %194, %192 ]
  %231 = add nuw nsw i64 %193, 1
  %232 = icmp eq i64 %231, %188
  br i1 %232, label %189, label %192, !llvm.loop !53

233:                                              ; preds = %189
  %234 = add nsw i32 %190, -1
  %235 = zext nneg i32 %234 to i64
  %236 = getelementptr inbounds [16 x [2 x i16]], ptr %10, i64 0, i64 %235
  %237 = load i16, ptr %236, align 4, !tbaa !45
  %238 = sext i16 %237 to i32
  %239 = getelementptr inbounds [16 x [2 x i16]], ptr %10, i64 0, i64 %235, i64 1
  %240 = load i16, ptr %239, align 2, !tbaa !45
  %241 = sext i16 %240 to i32
  br label %242

242:                                              ; preds = %233, %189
  %243 = phi i32 [ %241, %233 ], [ %66, %189 ]
  %244 = phi i32 [ %238, %233 ], [ %64, %189 ]
  %245 = ashr i32 %230, 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #9
  br label %246

246:                                              ; preds = %175, %242, %105
  %247 = phi i32 [ %71, %105 ], [ %183, %242 ], [ %183, %175 ]
  %248 = phi i32 [ %106, %105 ], [ 268435456, %242 ], [ 268435456, %175 ]
  %249 = phi i32 [ %107, %105 ], [ 0, %242 ], [ 0, %175 ]
  %250 = phi i32 [ %108, %105 ], [ 0, %242 ], [ 0, %175 ]
  %251 = phi i32 [ %132, %105 ], [ %245, %242 ], [ %182, %175 ]
  %252 = phi i32 [ %112, %105 ], [ %243, %242 ], [ %66, %175 ]
  %253 = phi i32 [ %110, %105 ], [ %244, %242 ], [ %64, %175 ]
  %254 = icmp eq i32 %247, 0
  br i1 %254, label %269, label %255

255:                                              ; preds = %246
  %256 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %257 = load ptr, ptr %256, align 8, !tbaa !42
  %258 = call i32 %257(ptr noundef %24, i32 noundef 16, ptr noundef %26, i32 noundef %20) #11
  %259 = load i16, ptr %54, align 2, !tbaa !45
  %260 = zext i16 %259 to i32
  %261 = load i16, ptr %59, align 2, !tbaa !45
  %262 = zext i16 %261 to i32
  %263 = add i32 %258, %260
  %264 = add i32 %263, %262
  %265 = icmp slt i32 %264, %251
  %266 = call i32 @llvm.smin.i32(i32 %264, i32 %251)
  %267 = select i1 %265, i32 0, i32 %252
  %268 = select i1 %265, i32 0, i32 %253
  br label %269

269:                                              ; preds = %255, %246
  %270 = phi i32 [ %266, %255 ], [ %251, %246 ]
  %271 = phi i32 [ %267, %255 ], [ %252, %246 ]
  %272 = phi i32 [ %268, %255 ], [ %253, %246 ]
  %273 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 9
  %274 = load i32, ptr %273, align 4, !tbaa !54
  switch i32 %274, label %2887 [
    i32 0, label %275
    i32 1, label %379
    i32 2, label %757
    i32 3, label %2351
    i32 4, label %2351
  ]

275:                                              ; preds = %269
  %276 = shl i32 %270, 4
  %277 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 9, i64 %14
  %278 = sub nsw i32 0, %20
  %279 = sext i32 %278 to i64
  %280 = sext i32 %20 to i64
  %281 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 1
  %282 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 2
  %283 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 3
  br label %284

284:                                              ; preds = %365, %275
  %285 = phi i32 [ %22, %275 ], [ %363, %365 ]
  %286 = phi i32 [ %276, %275 ], [ %362, %365 ]
  %287 = phi i32 [ %271, %275 ], [ %361, %365 ]
  %288 = phi i32 [ %272, %275 ], [ %358, %365 ]
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8, ptr %26, i64 %289
  %291 = mul nsw i32 %287, %20
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8, ptr %290, i64 %292
  %294 = load ptr, ptr %277, align 8, !tbaa !42
  %295 = getelementptr inbounds i8, ptr %293, i64 %279
  %296 = getelementptr inbounds i8, ptr %293, i64 %280
  %297 = getelementptr inbounds i8, ptr %293, i64 -1
  %298 = getelementptr inbounds i8, ptr %293, i64 1
  call void %294(ptr noundef %24, ptr noundef %295, ptr noundef %296, ptr noundef nonnull %297, ptr noundef nonnull %298, i32 noundef %20, ptr noundef nonnull %7) #11
  %299 = shl i32 %288, 2
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i16, ptr %54, i64 %300
  %302 = load i16, ptr %301, align 2, !tbaa !45
  %303 = zext i16 %302 to i32
  %304 = shl i32 %287, 2
  %305 = add i32 %304, -4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i16, ptr %59, i64 %306
  %308 = load i16, ptr %307, align 2, !tbaa !45
  %309 = zext i16 %308 to i32
  %310 = add nuw nsw i32 %309, %303
  %311 = load i32, ptr %7, align 16, !tbaa !15
  %312 = add nsw i32 %310, %311
  store i32 %312, ptr %7, align 16, !tbaa !15
  %313 = add i32 %304, 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i16, ptr %59, i64 %314
  %316 = load i16, ptr %315, align 2, !tbaa !45
  %317 = zext i16 %316 to i32
  %318 = add nuw nsw i32 %317, %303
  %319 = load i32, ptr %281, align 4, !tbaa !15
  %320 = add nsw i32 %318, %319
  store i32 %320, ptr %281, align 4, !tbaa !15
  %321 = add i32 %299, -4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i16, ptr %54, i64 %322
  %324 = load i16, ptr %323, align 2, !tbaa !45
  %325 = zext i16 %324 to i32
  %326 = sext i32 %304 to i64
  %327 = getelementptr inbounds i16, ptr %59, i64 %326
  %328 = load i16, ptr %327, align 2, !tbaa !45
  %329 = zext i16 %328 to i32
  %330 = add nuw nsw i32 %329, %325
  %331 = load i32, ptr %282, align 8, !tbaa !15
  %332 = add nsw i32 %330, %331
  store i32 %332, ptr %282, align 8, !tbaa !15
  %333 = add i32 %299, 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i16, ptr %54, i64 %334
  %336 = load i16, ptr %335, align 2, !tbaa !45
  %337 = zext i16 %336 to i32
  %338 = add nuw nsw i32 %337, %329
  %339 = load i32, ptr %283, align 4, !tbaa !15
  %340 = add nsw i32 %338, %339
  store i32 %340, ptr %283, align 4, !tbaa !15
  %341 = shl i32 %312, 4
  %342 = or disjoint i32 %341, 1
  %343 = call i32 @llvm.smin.i32(i32 %342, i32 %286)
  %344 = shl i32 %320, 4
  %345 = or disjoint i32 %344, 3
  %346 = call i32 @llvm.smin.i32(i32 %345, i32 %343)
  %347 = shl i32 %332, 4
  %348 = or disjoint i32 %347, 4
  %349 = call i32 @llvm.smin.i32(i32 %348, i32 %346)
  %350 = shl i32 %340, 4
  %351 = or disjoint i32 %350, 12
  %352 = call i32 @llvm.smin.i32(i32 %351, i32 %349)
  %353 = and i32 %352, 15
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %374, label %355

355:                                              ; preds = %284
  %356 = shl i32 %352, 28
  %357 = ashr i32 %356, 30
  %358 = sub nsw i32 %288, %357
  %359 = shl i32 %352, 30
  %360 = ashr exact i32 %359, 30
  %361 = sub nsw i32 %287, %360
  %362 = and i32 %352, -16
  %363 = add nsw i32 %285, -1
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %374, label %365

365:                                              ; preds = %355
  %366 = shl i32 %358, 16
  %367 = and i32 %361, 32767
  %368 = or disjoint i32 %366, %367
  %369 = add i32 %368, %42
  %370 = sub i32 %46, %368
  %371 = or i32 %369, %370
  %372 = and i32 %371, -2147467264
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %284, label %374, !llvm.loop !55

374:                                              ; preds = %355, %284, %365
  %375 = phi i32 [ %362, %365 ], [ %362, %355 ], [ %352, %284 ]
  %376 = phi i32 [ %361, %365 ], [ %361, %355 ], [ %287, %284 ]
  %377 = phi i32 [ %358, %365 ], [ %358, %355 ], [ %288, %284 ]
  %378 = ashr i32 %375, 4
  br label %2887

379:                                              ; preds = %889, %2343, %269
  %380 = phi i32 [ %2338, %2343 ], [ %270, %269 ], [ %890, %889 ]
  %381 = phi i32 [ %2339, %2343 ], [ %271, %269 ], [ %891, %889 ]
  %382 = phi i32 [ %2340, %2343 ], [ %272, %269 ], [ %892, %889 ]
  %383 = phi i32 [ %1628, %2343 ], [ %22, %269 ], [ %22, %889 ]
  %384 = sext i32 %382 to i64
  %385 = getelementptr inbounds i8, ptr %26, i64 %384
  %386 = mul nsw i32 %381, %20
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i8, ptr %385, i64 %387
  %389 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 8, i64 %14
  %390 = load ptr, ptr %389, align 8, !tbaa !42
  %391 = getelementptr inbounds i8, ptr %388, i64 -2
  %392 = getelementptr inbounds i8, ptr %388, i64 -1
  %393 = shl nsw i32 %20, 1
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i8, ptr %392, i64 %394
  %396 = getelementptr inbounds i8, ptr %388, i64 1
  %397 = getelementptr inbounds i8, ptr %396, i64 %394
  call void %390(ptr noundef %24, ptr noundef nonnull %391, ptr noundef nonnull %395, ptr noundef nonnull %397, i32 noundef %20, ptr noundef nonnull %7) #11
  %398 = shl i32 %382, 2
  %399 = add i32 %398, -8
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i16, ptr %54, i64 %400
  %402 = load i16, ptr %401, align 2, !tbaa !45
  %403 = zext i16 %402 to i32
  %404 = shl i32 %381, 2
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i16, ptr %59, i64 %405
  %407 = load i16, ptr %406, align 2, !tbaa !45
  %408 = zext i16 %407 to i32
  %409 = add nuw nsw i32 %408, %403
  %410 = load i32, ptr %7, align 16, !tbaa !15
  %411 = add nsw i32 %409, %410
  store i32 %411, ptr %7, align 16, !tbaa !15
  %412 = add i32 %398, -4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i16, ptr %54, i64 %413
  %415 = load i16, ptr %414, align 2, !tbaa !45
  %416 = zext i16 %415 to i32
  %417 = add i32 %404, 8
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i16, ptr %59, i64 %418
  %420 = load i16, ptr %419, align 2, !tbaa !45
  %421 = zext i16 %420 to i32
  %422 = add nuw nsw i32 %421, %416
  %423 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 1
  %424 = load i32, ptr %423, align 4, !tbaa !15
  %425 = add nsw i32 %422, %424
  store i32 %425, ptr %423, align 4, !tbaa !15
  %426 = add i32 %398, 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i16, ptr %54, i64 %427
  %429 = load i16, ptr %428, align 2, !tbaa !45
  %430 = zext i16 %429 to i32
  %431 = add nuw nsw i32 %430, %421
  %432 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 2
  %433 = load i32, ptr %432, align 8, !tbaa !15
  %434 = add nsw i32 %431, %433
  store i32 %434, ptr %432, align 8, !tbaa !15
  %435 = load ptr, ptr %389, align 8, !tbaa !42
  %436 = getelementptr inbounds i8, ptr %388, i64 2
  %437 = mul nsw i32 %20, -2
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i8, ptr %396, i64 %438
  %440 = getelementptr inbounds i8, ptr %392, i64 %438
  %441 = getelementptr inbounds i32, ptr %7, i64 3
  call void %435(ptr noundef %24, ptr noundef nonnull %436, ptr noundef nonnull %439, ptr noundef nonnull %440, i32 noundef %20, ptr noundef nonnull %441) #11
  %442 = add i32 %398, 8
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i16, ptr %54, i64 %443
  %445 = load i16, ptr %444, align 2, !tbaa !45
  %446 = zext i16 %445 to i32
  %447 = load i16, ptr %406, align 2, !tbaa !45
  %448 = zext i16 %447 to i32
  %449 = add nuw nsw i32 %448, %446
  %450 = load i32, ptr %441, align 4, !tbaa !15
  %451 = add nsw i32 %449, %450
  store i32 %451, ptr %441, align 4, !tbaa !15
  %452 = load i16, ptr %428, align 2, !tbaa !45
  %453 = zext i16 %452 to i32
  %454 = add i32 %404, -8
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i16, ptr %59, i64 %455
  %457 = load i16, ptr %456, align 2, !tbaa !45
  %458 = zext i16 %457 to i32
  %459 = add nuw nsw i32 %458, %453
  %460 = getelementptr inbounds i32, ptr %7, i64 4
  %461 = load i32, ptr %460, align 16, !tbaa !15
  %462 = add nsw i32 %459, %461
  store i32 %462, ptr %460, align 16, !tbaa !15
  %463 = load i16, ptr %414, align 2, !tbaa !45
  %464 = zext i16 %463 to i32
  %465 = add nuw nsw i32 %464, %458
  %466 = getelementptr inbounds i32, ptr %7, i64 5
  %467 = load i32, ptr %466, align 4, !tbaa !15
  %468 = add nsw i32 %465, %467
  store i32 %468, ptr %466, align 4, !tbaa !15
  %469 = shl i32 %380, 3
  %470 = load i32, ptr %7, align 16, !tbaa !15
  %471 = shl i32 %470, 3
  %472 = or disjoint i32 %471, 2
  %473 = call i32 @llvm.smin.i32(i32 %472, i32 %469)
  %474 = load i32, ptr %423, align 4, !tbaa !15
  %475 = shl i32 %474, 3
  %476 = or disjoint i32 %475, 3
  %477 = call i32 @llvm.smin.i32(i32 %476, i32 %473)
  %478 = load i32, ptr %432, align 8, !tbaa !15
  %479 = shl i32 %478, 3
  %480 = or disjoint i32 %479, 4
  %481 = call i32 @llvm.smin.i32(i32 %480, i32 %477)
  %482 = shl i32 %451, 3
  %483 = or disjoint i32 %482, 5
  %484 = call i32 @llvm.smin.i32(i32 %483, i32 %481)
  %485 = shl i32 %462, 3
  %486 = or disjoint i32 %485, 6
  %487 = call i32 @llvm.smin.i32(i32 %486, i32 %484)
  %488 = shl i32 %468, 3
  %489 = or disjoint i32 %488, 7
  %490 = call i32 @llvm.smin.i32(i32 %489, i32 %487)
  %491 = and i32 %490, 7
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %639, label %493

493:                                              ; preds = %379
  %494 = add nsw i32 %491, -1
  %495 = zext nneg i32 %494 to i64
  %496 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %495
  %497 = load i8, ptr %496, align 2, !tbaa !52
  %498 = sext i8 %497 to i32
  %499 = add nsw i32 %382, %498
  %500 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %495, i64 1
  %501 = load i8, ptr %500, align 1, !tbaa !52
  %502 = sext i8 %501 to i32
  %503 = add nsw i32 %381, %502
  %504 = ashr i32 %383, 1
  %505 = icmp sgt i32 %504, 1
  br i1 %505, label %506, label %639

506:                                              ; preds = %493
  %507 = add nsw i32 %491, -2
  br label %508

508:                                              ; preds = %506, %621
  %509 = phi i8 [ %635, %621 ], [ %501, %506 ]
  %510 = phi i8 [ %631, %621 ], [ %497, %506 ]
  %511 = phi i32 [ %516, %621 ], [ %504, %506 ]
  %512 = phi i32 [ %633, %621 ], [ %499, %506 ]
  %513 = phi i32 [ %637, %621 ], [ %503, %506 ]
  %514 = phi i32 [ %618, %621 ], [ %490, %506 ]
  %515 = phi i32 [ %627, %621 ], [ %507, %506 ]
  %516 = add nsw i32 %511, -1
  %517 = shl i32 %512, 16
  %518 = and i32 %513, 32767
  %519 = or disjoint i32 %517, %518
  %520 = add i32 %519, %42
  %521 = sub i32 %46, %519
  %522 = or i32 %520, %521
  %523 = and i32 %522, -2147467264
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %639

525:                                              ; preds = %508
  %526 = sext i32 %512 to i64
  %527 = getelementptr inbounds i8, ptr %26, i64 %526
  %528 = mul nsw i32 %513, %20
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds i8, ptr %527, i64 %529
  %531 = load ptr, ptr %389, align 8, !tbaa !42
  %532 = sext i32 %515 to i64
  %533 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %532
  %534 = load i8, ptr %533, align 2, !tbaa !52
  %535 = sext i8 %534 to i64
  %536 = getelementptr inbounds i8, ptr %530, i64 %535
  %537 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %532, i64 1
  %538 = load i8, ptr %537, align 1, !tbaa !52
  %539 = sext i8 %538 to i32
  %540 = mul nsw i32 %20, %539
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i8, ptr %536, i64 %541
  %543 = sext i8 %510 to i64
  %544 = getelementptr inbounds i8, ptr %530, i64 %543
  %545 = sext i8 %509 to i32
  %546 = mul nsw i32 %20, %545
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds i8, ptr %544, i64 %547
  %549 = add nsw i32 %515, 2
  %550 = zext nneg i32 %549 to i64
  %551 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %550
  %552 = load i8, ptr %551, align 2, !tbaa !52
  %553 = sext i8 %552 to i64
  %554 = getelementptr inbounds i8, ptr %530, i64 %553
  %555 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %550, i64 1
  %556 = load i8, ptr %555, align 1, !tbaa !52
  %557 = sext i8 %556 to i32
  %558 = mul nsw i32 %20, %557
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds i8, ptr %554, i64 %559
  call void %531(ptr noundef %24, ptr noundef %542, ptr noundef %548, ptr noundef %560, i32 noundef %20, ptr noundef nonnull %7) #11
  %561 = sext i8 %534 to i32
  %562 = add nsw i32 %512, %561
  %563 = shl i32 %562, 2
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds i16, ptr %54, i64 %564
  %566 = load i16, ptr %565, align 2, !tbaa !45
  %567 = zext i16 %566 to i32
  %568 = add nsw i32 %513, %539
  %569 = shl i32 %568, 2
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds i16, ptr %59, i64 %570
  %572 = load i16, ptr %571, align 2, !tbaa !45
  %573 = zext i16 %572 to i32
  %574 = add nuw nsw i32 %573, %567
  %575 = load i32, ptr %7, align 16, !tbaa !15
  %576 = add nsw i32 %574, %575
  store i32 %576, ptr %7, align 16, !tbaa !15
  %577 = sext i8 %510 to i32
  %578 = add nsw i32 %512, %577
  %579 = shl i32 %578, 2
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds i16, ptr %54, i64 %580
  %582 = load i16, ptr %581, align 2, !tbaa !45
  %583 = zext i16 %582 to i32
  %584 = add nsw i32 %513, %545
  %585 = shl i32 %584, 2
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i16, ptr %59, i64 %586
  %588 = load i16, ptr %587, align 2, !tbaa !45
  %589 = zext i16 %588 to i32
  %590 = add nuw nsw i32 %589, %583
  %591 = load i32, ptr %423, align 4, !tbaa !15
  %592 = add nsw i32 %590, %591
  store i32 %592, ptr %423, align 4, !tbaa !15
  %593 = sext i8 %552 to i32
  %594 = add nsw i32 %512, %593
  %595 = shl i32 %594, 2
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i16, ptr %54, i64 %596
  %598 = load i16, ptr %597, align 2, !tbaa !45
  %599 = zext i16 %598 to i32
  %600 = add nsw i32 %513, %557
  %601 = shl i32 %600, 2
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds i16, ptr %59, i64 %602
  %604 = load i16, ptr %603, align 2, !tbaa !45
  %605 = zext i16 %604 to i32
  %606 = add nuw nsw i32 %605, %599
  %607 = load i32, ptr %432, align 8, !tbaa !15
  %608 = add nsw i32 %606, %607
  store i32 %608, ptr %432, align 8, !tbaa !15
  %609 = and i32 %514, -8
  %610 = shl i32 %576, 3
  %611 = or disjoint i32 %610, 1
  %612 = call i32 @llvm.smin.i32(i32 %611, i32 %609)
  %613 = shl i32 %592, 3
  %614 = or disjoint i32 %613, 2
  %615 = call i32 @llvm.smin.i32(i32 %614, i32 %612)
  %616 = shl i32 %608, 3
  %617 = or disjoint i32 %616, 3
  %618 = call i32 @llvm.smin.i32(i32 %617, i32 %615)
  %619 = and i32 %618, 3
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %639, label %621

621:                                              ; preds = %525
  %622 = add nsw i32 %515, -1
  %623 = add nsw i32 %622, %619
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds [8 x i8], ptr @mod6m1, i64 0, i64 %624
  %626 = load i8, ptr %625, align 1, !tbaa !52
  %627 = zext i8 %626 to i32
  %628 = add nuw nsw i32 %627, 1
  %629 = zext nneg i32 %628 to i64
  %630 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %629
  %631 = load i8, ptr %630, align 2, !tbaa !52
  %632 = sext i8 %631 to i32
  %633 = add nsw i32 %512, %632
  %634 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %629, i64 1
  %635 = load i8, ptr %634, align 1, !tbaa !52
  %636 = sext i8 %635 to i32
  %637 = add nsw i32 %513, %636
  %638 = icmp ugt i32 %511, 2
  br i1 %638, label %508, label %639, !llvm.loop !56

639:                                              ; preds = %525, %508, %621, %493, %379
  %640 = phi i32 [ %490, %379 ], [ %490, %493 ], [ %618, %525 ], [ %514, %508 ], [ %618, %621 ]
  %641 = phi i32 [ %381, %379 ], [ %503, %493 ], [ %513, %525 ], [ %513, %508 ], [ %637, %621 ]
  %642 = phi i32 [ %382, %379 ], [ %499, %493 ], [ %512, %525 ], [ %512, %508 ], [ %633, %621 ]
  %643 = ashr i32 %640, 3
  %644 = sext i32 %642 to i64
  %645 = getelementptr inbounds i8, ptr %26, i64 %644
  %646 = mul nsw i32 %641, %20
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds i8, ptr %645, i64 %647
  %649 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 9, i64 %14
  %650 = load ptr, ptr %649, align 8, !tbaa !42
  %651 = sub nsw i32 0, %20
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds i8, ptr %648, i64 %652
  %654 = sext i32 %20 to i64
  %655 = getelementptr inbounds i8, ptr %648, i64 %654
  %656 = getelementptr inbounds i8, ptr %648, i64 -1
  %657 = getelementptr inbounds i8, ptr %648, i64 1
  call void %650(ptr noundef %24, ptr noundef %653, ptr noundef %655, ptr noundef nonnull %656, ptr noundef nonnull %657, i32 noundef %20, ptr noundef nonnull %7) #11
  %658 = shl i32 %642, 2
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds i16, ptr %54, i64 %659
  %661 = load i16, ptr %660, align 2, !tbaa !45
  %662 = zext i16 %661 to i32
  %663 = shl i32 %641, 2
  %664 = add i32 %663, -4
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds i16, ptr %59, i64 %665
  %667 = load i16, ptr %666, align 2, !tbaa !45
  %668 = zext i16 %667 to i32
  %669 = add nuw nsw i32 %668, %662
  %670 = load i32, ptr %7, align 16, !tbaa !15
  %671 = add nsw i32 %669, %670
  store i32 %671, ptr %7, align 16, !tbaa !15
  %672 = add i32 %663, 4
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds i16, ptr %59, i64 %673
  %675 = load i16, ptr %674, align 2, !tbaa !45
  %676 = zext i16 %675 to i32
  %677 = add nuw nsw i32 %676, %662
  %678 = load i32, ptr %423, align 4, !tbaa !15
  %679 = add nsw i32 %677, %678
  store i32 %679, ptr %423, align 4, !tbaa !15
  %680 = add i32 %658, -4
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds i16, ptr %54, i64 %681
  %683 = load i16, ptr %682, align 2, !tbaa !45
  %684 = zext i16 %683 to i32
  %685 = sext i32 %663 to i64
  %686 = getelementptr inbounds i16, ptr %59, i64 %685
  %687 = load i16, ptr %686, align 2, !tbaa !45
  %688 = zext i16 %687 to i32
  %689 = add nuw nsw i32 %688, %684
  %690 = load i32, ptr %432, align 8, !tbaa !15
  %691 = add nsw i32 %689, %690
  store i32 %691, ptr %432, align 8, !tbaa !15
  %692 = add i32 %658, 4
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds i16, ptr %54, i64 %693
  %695 = load i16, ptr %694, align 2, !tbaa !45
  %696 = zext i16 %695 to i32
  %697 = add nuw nsw i32 %696, %688
  %698 = load i32, ptr %441, align 4, !tbaa !15
  %699 = add nsw i32 %697, %698
  store i32 %699, ptr %441, align 4, !tbaa !15
  %700 = icmp slt i32 %671, %643
  %701 = zext i1 %700 to i64
  %702 = call i32 @llvm.smin.i32(i32 %671, i32 %643)
  %703 = icmp slt i32 %679, %702
  %704 = select i1 %703, i64 2, i64 %701
  %705 = call i32 @llvm.smin.i32(i32 %679, i32 %702)
  %706 = icmp slt i32 %691, %705
  %707 = select i1 %706, i64 3, i64 %704
  %708 = call i32 @llvm.smin.i32(i32 %691, i32 %705)
  %709 = icmp slt i32 %699, %708
  %710 = select i1 %709, i64 4, i64 %707
  %711 = call i32 @llvm.smin.i32(i32 %699, i32 %708)
  %712 = load ptr, ptr %649, align 8, !tbaa !42
  %713 = getelementptr inbounds i8, ptr %656, i64 %652
  %714 = getelementptr inbounds i8, ptr %656, i64 %654
  %715 = getelementptr inbounds i8, ptr %657, i64 %652
  %716 = getelementptr inbounds i8, ptr %657, i64 %654
  call void %712(ptr noundef %24, ptr noundef nonnull %713, ptr noundef nonnull %714, ptr noundef nonnull %715, ptr noundef nonnull %716, i32 noundef %20, ptr noundef nonnull %7) #11
  %717 = load i16, ptr %682, align 2, !tbaa !45
  %718 = zext i16 %717 to i32
  %719 = load i16, ptr %666, align 2, !tbaa !45
  %720 = zext i16 %719 to i32
  %721 = add nuw nsw i32 %720, %718
  %722 = load i32, ptr %7, align 16, !tbaa !15
  %723 = add nsw i32 %721, %722
  store i32 %723, ptr %7, align 16, !tbaa !15
  %724 = load i16, ptr %674, align 2, !tbaa !45
  %725 = zext i16 %724 to i32
  %726 = add nuw nsw i32 %725, %718
  %727 = load i32, ptr %423, align 4, !tbaa !15
  %728 = add nsw i32 %726, %727
  store i32 %728, ptr %423, align 4, !tbaa !15
  %729 = load i16, ptr %694, align 2, !tbaa !45
  %730 = zext i16 %729 to i32
  %731 = add nuw nsw i32 %730, %720
  %732 = load i32, ptr %432, align 8, !tbaa !15
  %733 = add nsw i32 %731, %732
  store i32 %733, ptr %432, align 8, !tbaa !15
  %734 = add nuw nsw i32 %730, %725
  %735 = load i32, ptr %441, align 4, !tbaa !15
  %736 = add nsw i32 %734, %735
  store i32 %736, ptr %441, align 4, !tbaa !15
  %737 = icmp slt i32 %723, %711
  %738 = select i1 %737, i64 5, i64 %710
  %739 = call i32 @llvm.smin.i32(i32 %723, i32 %711)
  %740 = icmp slt i32 %728, %739
  %741 = select i1 %740, i64 6, i64 %738
  %742 = call i32 @llvm.smin.i32(i32 %728, i32 %739)
  %743 = icmp slt i32 %733, %742
  %744 = select i1 %743, i64 7, i64 %741
  %745 = call i32 @llvm.smin.i32(i32 %733, i32 %742)
  %746 = icmp slt i32 %736, %745
  %747 = select i1 %746, i64 8, i64 %744
  %748 = call i32 @llvm.smin.i32(i32 %736, i32 %745)
  %749 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %747
  %750 = load i8, ptr %749, align 2, !tbaa !52
  %751 = sext i8 %750 to i32
  %752 = add nsw i32 %642, %751
  %753 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %747, i64 1
  %754 = load i8, ptr %753, align 1, !tbaa !52
  %755 = sext i8 %754 to i32
  %756 = add nsw i32 %641, %755
  br label %2887

757:                                              ; preds = %269
  %758 = sext i32 %64 to i64
  %759 = getelementptr inbounds i8, ptr %26, i64 %758
  %760 = mul nsw i32 %66, %20
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds i8, ptr %759, i64 %761
  %763 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 9, i64 %14
  %764 = load ptr, ptr %763, align 8, !tbaa !42
  %765 = sub nsw i32 0, %20
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds i8, ptr %762, i64 %766
  %768 = sext i32 %20 to i64
  %769 = getelementptr inbounds i8, ptr %762, i64 %768
  %770 = getelementptr inbounds i8, ptr %762, i64 -1
  %771 = getelementptr inbounds i8, ptr %762, i64 1
  call void %764(ptr noundef %24, ptr noundef %767, ptr noundef %769, ptr noundef nonnull %770, ptr noundef nonnull %771, i32 noundef %20, ptr noundef nonnull %7) #11
  %772 = and i32 %63, -4
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds i16, ptr %54, i64 %773
  %775 = load i16, ptr %774, align 2, !tbaa !45
  %776 = zext i16 %775 to i32
  %777 = add nsw i32 %66, -1
  %778 = shl i32 %777, 2
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds i16, ptr %59, i64 %779
  %781 = load i16, ptr %780, align 2, !tbaa !45
  %782 = zext i16 %781 to i32
  %783 = add nuw nsw i32 %782, %776
  %784 = load i32, ptr %7, align 16, !tbaa !15
  %785 = add nsw i32 %783, %784
  store i32 %785, ptr %7, align 16, !tbaa !15
  %786 = add nsw i32 %66, 1
  %787 = shl i32 %786, 2
  %788 = sext i32 %787 to i64
  %789 = getelementptr inbounds i16, ptr %59, i64 %788
  %790 = load i16, ptr %789, align 2, !tbaa !45
  %791 = zext i16 %790 to i32
  %792 = add nuw nsw i32 %791, %776
  %793 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 1
  %794 = load i32, ptr %793, align 4, !tbaa !15
  %795 = add nsw i32 %792, %794
  store i32 %795, ptr %793, align 4, !tbaa !15
  %796 = add nsw i32 %64, -1
  %797 = shl i32 %796, 2
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds i16, ptr %54, i64 %798
  %800 = load i16, ptr %799, align 2, !tbaa !45
  %801 = zext i16 %800 to i32
  %802 = and i32 %65, -4
  %803 = sext i32 %802 to i64
  %804 = getelementptr inbounds i16, ptr %59, i64 %803
  %805 = load i16, ptr %804, align 2, !tbaa !45
  %806 = zext i16 %805 to i32
  %807 = add nuw nsw i32 %806, %801
  %808 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 2
  %809 = load i32, ptr %808, align 8, !tbaa !15
  %810 = add nsw i32 %807, %809
  store i32 %810, ptr %808, align 8, !tbaa !15
  %811 = add nsw i32 %64, 1
  %812 = shl i32 %811, 2
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds i16, ptr %54, i64 %813
  %815 = load i16, ptr %814, align 2, !tbaa !45
  %816 = zext i16 %815 to i32
  %817 = add nuw nsw i32 %816, %806
  %818 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 3
  %819 = load i32, ptr %818, align 4, !tbaa !15
  %820 = add nsw i32 %817, %819
  store i32 %820, ptr %818, align 4, !tbaa !15
  %821 = icmp slt i32 %785, %270
  %822 = call i32 @llvm.smin.i32(i32 %785, i32 %270)
  %823 = select i1 %821, i32 %777, i32 %271
  %824 = icmp slt i32 %795, %822
  %825 = call i32 @llvm.smin.i32(i32 %795, i32 %822)
  %826 = select i1 %824, i32 %786, i32 %823
  %827 = select i1 %824, i1 true, i1 %821
  %828 = select i1 %827, i32 %64, i32 %272
  %829 = icmp slt i32 %810, %825
  %830 = call i32 @llvm.smin.i32(i32 %810, i32 %825)
  %831 = select i1 %829, i32 %796, i32 %828
  %832 = icmp slt i32 %820, %830
  %833 = call i32 @llvm.smin.i32(i32 %820, i32 %830)
  %834 = select i1 %832, i1 true, i1 %829
  %835 = select i1 %834, i32 %66, i32 %826
  %836 = select i1 %832, i32 %811, i32 %831
  %837 = or i32 %66, %64
  %838 = icmp eq i32 %837, 0
  br i1 %838, label %889, label %839

839:                                              ; preds = %757
  %840 = load ptr, ptr %763, align 8, !tbaa !42
  %841 = getelementptr inbounds i8, ptr %26, i64 %766
  %842 = getelementptr inbounds i8, ptr %26, i64 %768
  %843 = getelementptr inbounds i8, ptr %26, i64 -1
  %844 = getelementptr inbounds i8, ptr %26, i64 1
  call void %840(ptr noundef %24, ptr noundef %841, ptr noundef %842, ptr noundef nonnull %843, ptr noundef nonnull %844, i32 noundef %20, ptr noundef nonnull %7) #11
  %845 = load i16, ptr %54, align 2, !tbaa !45
  %846 = zext i16 %845 to i32
  %847 = getelementptr inbounds i16, ptr %59, i64 -4
  %848 = load i16, ptr %847, align 2, !tbaa !45
  %849 = zext i16 %848 to i32
  %850 = add nuw nsw i32 %849, %846
  %851 = load i32, ptr %7, align 16, !tbaa !15
  %852 = add nsw i32 %850, %851
  store i32 %852, ptr %7, align 16, !tbaa !15
  %853 = getelementptr inbounds i16, ptr %59, i64 4
  %854 = load i16, ptr %853, align 2, !tbaa !45
  %855 = zext i16 %854 to i32
  %856 = add nuw nsw i32 %855, %846
  %857 = load i32, ptr %793, align 4, !tbaa !15
  %858 = add nsw i32 %856, %857
  store i32 %858, ptr %793, align 4, !tbaa !15
  %859 = getelementptr inbounds i16, ptr %54, i64 -4
  %860 = load i16, ptr %859, align 2, !tbaa !45
  %861 = zext i16 %860 to i32
  %862 = load i16, ptr %59, align 2, !tbaa !45
  %863 = zext i16 %862 to i32
  %864 = add nuw nsw i32 %863, %861
  %865 = load i32, ptr %808, align 8, !tbaa !15
  %866 = add nsw i32 %864, %865
  store i32 %866, ptr %808, align 8, !tbaa !15
  %867 = getelementptr inbounds i16, ptr %54, i64 4
  %868 = load i16, ptr %867, align 2, !tbaa !45
  %869 = zext i16 %868 to i32
  %870 = add nuw nsw i32 %869, %863
  %871 = load i32, ptr %818, align 4, !tbaa !15
  %872 = add nsw i32 %870, %871
  store i32 %872, ptr %818, align 4, !tbaa !15
  %873 = icmp slt i32 %852, %833
  %874 = call i32 @llvm.smin.i32(i32 %852, i32 %833)
  %875 = select i1 %873, i32 -1, i32 %835
  %876 = icmp slt i32 %858, %874
  %877 = call i32 @llvm.smin.i32(i32 %858, i32 %874)
  %878 = select i1 %876, i32 1, i32 %875
  %879 = select i1 %876, i1 true, i1 %873
  %880 = select i1 %879, i32 0, i32 %836
  %881 = icmp slt i32 %866, %877
  %882 = call i32 @llvm.smin.i32(i32 %866, i32 %877)
  %883 = select i1 %881, i32 -1, i32 %880
  %884 = icmp slt i32 %872, %882
  %885 = call i32 @llvm.smin.i32(i32 %872, i32 %882)
  %886 = select i1 %884, i1 true, i1 %881
  %887 = select i1 %886, i32 0, i32 %878
  %888 = select i1 %884, i32 1, i32 %883
  br label %889

889:                                              ; preds = %839, %757
  %890 = phi i32 [ %885, %839 ], [ %833, %757 ]
  %891 = phi i32 [ %887, %839 ], [ %835, %757 ]
  %892 = phi i32 [ %888, %839 ], [ %836, %757 ]
  %893 = icmp eq i32 %13, 6
  br i1 %893, label %379, label %894

894:                                              ; preds = %889
  %895 = or i32 %892, %891
  %896 = icmp eq i32 %895, 0
  br i1 %896, label %973, label %897

897:                                              ; preds = %894
  %898 = icmp eq i32 %892, %64
  %899 = icmp eq i32 %891, %66
  %900 = and i1 %899, %898
  br i1 %900, label %973, label %901

901:                                              ; preds = %897
  %902 = sext i32 %892 to i64
  %903 = getelementptr inbounds i8, ptr %26, i64 %902
  %904 = mul nsw i32 %891, %20
  %905 = sext i32 %904 to i64
  %906 = getelementptr inbounds i8, ptr %903, i64 %905
  %907 = load ptr, ptr %763, align 8, !tbaa !42
  %908 = getelementptr inbounds i8, ptr %906, i64 %766
  %909 = getelementptr inbounds i8, ptr %906, i64 %768
  %910 = getelementptr inbounds i8, ptr %906, i64 -1
  %911 = getelementptr inbounds i8, ptr %906, i64 1
  call void %907(ptr noundef %24, ptr noundef %908, ptr noundef %909, ptr noundef nonnull %910, ptr noundef nonnull %911, i32 noundef %20, ptr noundef nonnull %7) #11
  %912 = shl i32 %892, 2
  %913 = sext i32 %912 to i64
  %914 = getelementptr inbounds i16, ptr %54, i64 %913
  %915 = load i16, ptr %914, align 2, !tbaa !45
  %916 = zext i16 %915 to i32
  %917 = add nsw i32 %891, -1
  %918 = shl i32 %917, 2
  %919 = sext i32 %918 to i64
  %920 = getelementptr inbounds i16, ptr %59, i64 %919
  %921 = load i16, ptr %920, align 2, !tbaa !45
  %922 = zext i16 %921 to i32
  %923 = add nuw nsw i32 %922, %916
  %924 = load i32, ptr %7, align 16, !tbaa !15
  %925 = add nsw i32 %923, %924
  store i32 %925, ptr %7, align 16, !tbaa !15
  %926 = add nsw i32 %891, 1
  %927 = shl i32 %926, 2
  %928 = sext i32 %927 to i64
  %929 = getelementptr inbounds i16, ptr %59, i64 %928
  %930 = load i16, ptr %929, align 2, !tbaa !45
  %931 = zext i16 %930 to i32
  %932 = add nuw nsw i32 %931, %916
  %933 = load i32, ptr %793, align 4, !tbaa !15
  %934 = add nsw i32 %932, %933
  store i32 %934, ptr %793, align 4, !tbaa !15
  %935 = add nsw i32 %892, -1
  %936 = shl i32 %935, 2
  %937 = sext i32 %936 to i64
  %938 = getelementptr inbounds i16, ptr %54, i64 %937
  %939 = load i16, ptr %938, align 2, !tbaa !45
  %940 = zext i16 %939 to i32
  %941 = shl i32 %891, 2
  %942 = sext i32 %941 to i64
  %943 = getelementptr inbounds i16, ptr %59, i64 %942
  %944 = load i16, ptr %943, align 2, !tbaa !45
  %945 = zext i16 %944 to i32
  %946 = add nuw nsw i32 %945, %940
  %947 = load i32, ptr %808, align 8, !tbaa !15
  %948 = add nsw i32 %946, %947
  store i32 %948, ptr %808, align 8, !tbaa !15
  %949 = add nsw i32 %892, 1
  %950 = shl i32 %949, 2
  %951 = sext i32 %950 to i64
  %952 = getelementptr inbounds i16, ptr %54, i64 %951
  %953 = load i16, ptr %952, align 2, !tbaa !45
  %954 = zext i16 %953 to i32
  %955 = add nuw nsw i32 %954, %945
  %956 = load i32, ptr %818, align 4, !tbaa !15
  %957 = add nsw i32 %955, %956
  store i32 %957, ptr %818, align 4, !tbaa !15
  %958 = icmp slt i32 %925, %890
  %959 = call i32 @llvm.smin.i32(i32 %925, i32 %890)
  %960 = select i1 %958, i32 %917, i32 %891
  %961 = icmp slt i32 %934, %959
  %962 = call i32 @llvm.smin.i32(i32 %934, i32 %959)
  %963 = select i1 %961, i32 %926, i32 %960
  %964 = icmp slt i32 %948, %962
  %965 = call i32 @llvm.smin.i32(i32 %948, i32 %962)
  %966 = select i1 %964, i32 %935, i32 %892
  %967 = icmp slt i32 %957, %965
  %968 = call i32 @llvm.smin.i32(i32 %957, i32 %965)
  %969 = select i1 %967, i1 true, i1 %964
  %970 = select i1 %969, i32 %891, i32 %963
  %971 = select i1 %967, i32 %949, i32 %966
  %972 = icmp eq i32 %968, %890
  br i1 %972, label %973, label %1546

973:                                              ; preds = %894, %897, %901
  %974 = phi i32 [ %971, %901 ], [ %64, %897 ], [ %892, %894 ]
  %975 = phi i32 [ %970, %901 ], [ %66, %897 ], [ %891, %894 ]
  %976 = getelementptr inbounds [7 x i8], ptr @x264_me_search_ref.x264_pixel_size_shift, i64 0, i64 %14
  %977 = load i8, ptr %976, align 1, !tbaa !52
  %978 = zext nneg i8 %977 to i32
  %979 = lshr i32 2000, %978
  %980 = icmp slt i32 %890, %979
  br i1 %980, label %981, label %1546

981:                                              ; preds = %973
  %982 = sext i32 %974 to i64
  %983 = getelementptr inbounds i8, ptr %26, i64 %982
  %984 = mul nsw i32 %975, %20
  %985 = sext i32 %984 to i64
  %986 = getelementptr inbounds i8, ptr %983, i64 %985
  %987 = load ptr, ptr %763, align 8, !tbaa !42
  %988 = mul nsw i32 %20, -2
  %989 = sext i32 %988 to i64
  %990 = getelementptr inbounds i8, ptr %986, i64 %989
  %991 = getelementptr inbounds i8, ptr %986, i64 -1
  %992 = getelementptr inbounds i8, ptr %991, i64 %766
  %993 = getelementptr inbounds i8, ptr %986, i64 1
  %994 = getelementptr inbounds i8, ptr %993, i64 %766
  %995 = getelementptr inbounds i8, ptr %986, i64 -2
  call void %987(ptr noundef %24, ptr noundef %990, ptr noundef nonnull %992, ptr noundef nonnull %994, ptr noundef nonnull %995, i32 noundef %20, ptr noundef nonnull %7) #11
  %996 = shl i32 %974, 2
  %997 = sext i32 %996 to i64
  %998 = getelementptr inbounds i16, ptr %54, i64 %997
  %999 = load i16, ptr %998, align 2, !tbaa !45
  %1000 = zext i16 %999 to i32
  %1001 = add nsw i32 %975, -2
  %1002 = shl i32 %1001, 2
  %1003 = sext i32 %1002 to i64
  %1004 = getelementptr inbounds i16, ptr %59, i64 %1003
  %1005 = load i16, ptr %1004, align 2, !tbaa !45
  %1006 = zext i16 %1005 to i32
  %1007 = add nuw nsw i32 %1006, %1000
  %1008 = load i32, ptr %7, align 16, !tbaa !15
  %1009 = add nsw i32 %1007, %1008
  store i32 %1009, ptr %7, align 16, !tbaa !15
  %1010 = add nsw i32 %974, -1
  %1011 = shl i32 %1010, 2
  %1012 = sext i32 %1011 to i64
  %1013 = getelementptr inbounds i16, ptr %54, i64 %1012
  %1014 = load i16, ptr %1013, align 2, !tbaa !45
  %1015 = zext i16 %1014 to i32
  %1016 = add nsw i32 %975, -1
  %1017 = shl i32 %1016, 2
  %1018 = sext i32 %1017 to i64
  %1019 = getelementptr inbounds i16, ptr %59, i64 %1018
  %1020 = load i16, ptr %1019, align 2, !tbaa !45
  %1021 = zext i16 %1020 to i32
  %1022 = add nuw nsw i32 %1021, %1015
  %1023 = load i32, ptr %793, align 4, !tbaa !15
  %1024 = add nsw i32 %1022, %1023
  store i32 %1024, ptr %793, align 4, !tbaa !15
  %1025 = add nsw i32 %974, 1
  %1026 = shl i32 %1025, 2
  %1027 = sext i32 %1026 to i64
  %1028 = getelementptr inbounds i16, ptr %54, i64 %1027
  %1029 = load i16, ptr %1028, align 2, !tbaa !45
  %1030 = zext i16 %1029 to i32
  %1031 = add nuw nsw i32 %1030, %1021
  %1032 = load i32, ptr %808, align 8, !tbaa !15
  %1033 = add nsw i32 %1031, %1032
  store i32 %1033, ptr %808, align 8, !tbaa !15
  %1034 = add nsw i32 %974, -2
  %1035 = shl i32 %1034, 2
  %1036 = sext i32 %1035 to i64
  %1037 = getelementptr inbounds i16, ptr %54, i64 %1036
  %1038 = load i16, ptr %1037, align 2, !tbaa !45
  %1039 = zext i16 %1038 to i32
  %1040 = shl i32 %975, 2
  %1041 = sext i32 %1040 to i64
  %1042 = getelementptr inbounds i16, ptr %59, i64 %1041
  %1043 = load i16, ptr %1042, align 2, !tbaa !45
  %1044 = zext i16 %1043 to i32
  %1045 = add nuw nsw i32 %1044, %1039
  %1046 = load i32, ptr %818, align 4, !tbaa !15
  %1047 = add nsw i32 %1045, %1046
  store i32 %1047, ptr %818, align 4, !tbaa !15
  %1048 = icmp slt i32 %1009, %890
  %1049 = call i32 @llvm.smin.i32(i32 %1009, i32 %890)
  %1050 = select i1 %1048, i32 %1001, i32 %975
  %1051 = icmp slt i32 %1024, %1049
  %1052 = call i32 @llvm.smin.i32(i32 %1024, i32 %1049)
  %1053 = select i1 %1051, i32 %1010, i32 %974
  %1054 = icmp slt i32 %1033, %1052
  %1055 = call i32 @llvm.smin.i32(i32 %1033, i32 %1052)
  %1056 = select i1 %1054, i1 true, i1 %1051
  %1057 = select i1 %1056, i32 %1016, i32 %1050
  %1058 = select i1 %1054, i32 %1025, i32 %1053
  %1059 = icmp slt i32 %1047, %1055
  %1060 = call i32 @llvm.smin.i32(i32 %1047, i32 %1055)
  %1061 = select i1 %1059, i32 %1034, i32 %1058
  %1062 = load ptr, ptr %763, align 8, !tbaa !42
  %1063 = getelementptr inbounds i8, ptr %986, i64 2
  %1064 = getelementptr inbounds i8, ptr %991, i64 %768
  %1065 = getelementptr inbounds i8, ptr %993, i64 %768
  %1066 = shl nsw i32 %20, 1
  %1067 = sext i32 %1066 to i64
  %1068 = getelementptr inbounds i8, ptr %986, i64 %1067
  call void %1062(ptr noundef %24, ptr noundef nonnull %1063, ptr noundef nonnull %1064, ptr noundef nonnull %1065, ptr noundef %1068, i32 noundef %20, ptr noundef nonnull %7) #11
  %1069 = add nsw i32 %974, 2
  %1070 = shl i32 %1069, 2
  %1071 = sext i32 %1070 to i64
  %1072 = getelementptr inbounds i16, ptr %54, i64 %1071
  %1073 = load i16, ptr %1072, align 2, !tbaa !45
  %1074 = zext i16 %1073 to i32
  %1075 = load i16, ptr %1042, align 2, !tbaa !45
  %1076 = zext i16 %1075 to i32
  %1077 = add nuw nsw i32 %1076, %1074
  %1078 = load i32, ptr %7, align 16, !tbaa !15
  %1079 = add nsw i32 %1077, %1078
  store i32 %1079, ptr %7, align 16, !tbaa !15
  %1080 = load i16, ptr %1013, align 2, !tbaa !45
  %1081 = zext i16 %1080 to i32
  %1082 = add nsw i32 %975, 1
  %1083 = shl i32 %1082, 2
  %1084 = sext i32 %1083 to i64
  %1085 = getelementptr inbounds i16, ptr %59, i64 %1084
  %1086 = load i16, ptr %1085, align 2, !tbaa !45
  %1087 = zext i16 %1086 to i32
  %1088 = add nuw nsw i32 %1087, %1081
  %1089 = load i32, ptr %793, align 4, !tbaa !15
  %1090 = add nsw i32 %1088, %1089
  store i32 %1090, ptr %793, align 4, !tbaa !15
  %1091 = load i16, ptr %1028, align 2, !tbaa !45
  %1092 = zext i16 %1091 to i32
  %1093 = add nuw nsw i32 %1092, %1087
  %1094 = load i32, ptr %808, align 8, !tbaa !15
  %1095 = add nsw i32 %1093, %1094
  store i32 %1095, ptr %808, align 8, !tbaa !15
  %1096 = load i16, ptr %998, align 2, !tbaa !45
  %1097 = zext i16 %1096 to i32
  %1098 = add nsw i32 %975, 2
  %1099 = shl i32 %1098, 2
  %1100 = sext i32 %1099 to i64
  %1101 = getelementptr inbounds i16, ptr %59, i64 %1100
  %1102 = load i16, ptr %1101, align 2, !tbaa !45
  %1103 = zext i16 %1102 to i32
  %1104 = add nuw nsw i32 %1103, %1097
  %1105 = load i32, ptr %818, align 4, !tbaa !15
  %1106 = add nsw i32 %1104, %1105
  store i32 %1106, ptr %818, align 4, !tbaa !15
  %1107 = icmp slt i32 %1079, %1060
  %1108 = call i32 @llvm.smin.i32(i32 %1079, i32 %1060)
  %1109 = select i1 %1107, i1 true, i1 %1059
  %1110 = select i1 %1109, i32 %975, i32 %1057
  %1111 = select i1 %1107, i32 %1069, i32 %1061
  %1112 = icmp slt i32 %1090, %1108
  %1113 = call i32 @llvm.smin.i32(i32 %1090, i32 %1108)
  %1114 = select i1 %1112, i32 %1010, i32 %1111
  %1115 = icmp slt i32 %1095, %1113
  %1116 = call i32 @llvm.smin.i32(i32 %1095, i32 %1113)
  %1117 = select i1 %1115, i1 true, i1 %1112
  %1118 = select i1 %1117, i32 %1082, i32 %1110
  %1119 = select i1 %1115, i32 %1025, i32 %1114
  %1120 = icmp slt i32 %1106, %1116
  %1121 = call i32 @llvm.smin.i32(i32 %1106, i32 %1116)
  %1122 = select i1 %1120, i32 %1098, i32 %1118
  %1123 = select i1 %1120, i32 %974, i32 %1119
  %1124 = icmp eq i32 %1121, %270
  %1125 = lshr i32 500, %978
  %1126 = icmp slt i32 %1121, %1125
  %1127 = select i1 %1124, i1 %1126, i1 false
  br i1 %1127, label %2887, label %1128

1128:                                             ; preds = %981
  %1129 = icmp eq i32 %1121, %890
  br i1 %1129, label %1130, label %1546

1130:                                             ; preds = %1128
  %1131 = ashr i32 %22, 1
  %1132 = or i32 %1131, 1
  %1133 = sub nsw i32 %32, %974
  %1134 = sub nsw i32 %974, %28
  %1135 = call i32 @llvm.smin.i32(i32 %1133, i32 %1134)
  %1136 = icmp sle i32 %1132, %1135
  %1137 = icmp sgt i32 %1132, 5
  %1138 = and i1 %1136, %1137
  br i1 %1138, label %1139, label %1217

1139:                                             ; preds = %1130
  %1140 = add nsw i32 %1132, -2
  %1141 = zext nneg i32 %1140 to i64
  br label %1142

1142:                                             ; preds = %1139, %1142
  %1143 = phi i64 [ 3, %1139 ], [ %1213, %1142 ]
  %1144 = phi i32 [ %1123, %1139 ], [ %1212, %1142 ]
  %1145 = phi i32 [ %1122, %1139 ], [ %1211, %1142 ]
  %1146 = phi i32 [ %890, %1139 ], [ %1207, %1142 ]
  %1147 = load ptr, ptr %763, align 8, !tbaa !42
  %1148 = getelementptr inbounds i8, ptr %986, i64 %1143
  %1149 = sub nsw i64 0, %1143
  %1150 = getelementptr inbounds i8, ptr %986, i64 %1149
  %1151 = add nuw nsw i64 %1143, 2
  %1152 = getelementptr inbounds i8, ptr %986, i64 %1151
  %1153 = sub nuw nsw i64 -2, %1143
  %1154 = getelementptr inbounds i8, ptr %986, i64 %1153
  call void %1147(ptr noundef %24, ptr noundef nonnull %1148, ptr noundef nonnull %1150, ptr noundef nonnull %1152, ptr noundef nonnull %1154, i32 noundef %20, ptr noundef nonnull %7) #11
  %1155 = trunc i64 %1143 to i32
  %1156 = add i32 %974, %1155
  %1157 = shl i32 %1156, 2
  %1158 = sext i32 %1157 to i64
  %1159 = getelementptr inbounds i16, ptr %54, i64 %1158
  %1160 = load i16, ptr %1159, align 2, !tbaa !45
  %1161 = zext i16 %1160 to i32
  %1162 = load i16, ptr %1042, align 2, !tbaa !45
  %1163 = zext i16 %1162 to i32
  %1164 = add nuw nsw i32 %1163, %1161
  %1165 = load i32, ptr %7, align 16, !tbaa !15
  %1166 = add nsw i32 %1164, %1165
  store i32 %1166, ptr %7, align 16, !tbaa !15
  %1167 = trunc i64 %1143 to i32
  %1168 = sub i32 %974, %1167
  %1169 = shl i32 %1168, 2
  %1170 = sext i32 %1169 to i64
  %1171 = getelementptr inbounds i16, ptr %54, i64 %1170
  %1172 = load i16, ptr %1171, align 2, !tbaa !45
  %1173 = zext i16 %1172 to i32
  %1174 = add nuw nsw i32 %1173, %1163
  %1175 = load i32, ptr %793, align 4, !tbaa !15
  %1176 = add nsw i32 %1174, %1175
  store i32 %1176, ptr %793, align 4, !tbaa !15
  %1177 = trunc i64 %1151 to i32
  %1178 = add i32 %974, %1177
  %1179 = shl i32 %1178, 2
  %1180 = sext i32 %1179 to i64
  %1181 = getelementptr inbounds i16, ptr %54, i64 %1180
  %1182 = load i16, ptr %1181, align 2, !tbaa !45
  %1183 = zext i16 %1182 to i32
  %1184 = add nuw nsw i32 %1183, %1163
  %1185 = load i32, ptr %808, align 8, !tbaa !15
  %1186 = add nsw i32 %1184, %1185
  store i32 %1186, ptr %808, align 8, !tbaa !15
  %1187 = trunc i64 %1153 to i32
  %1188 = add i32 %974, %1187
  %1189 = shl i32 %1188, 2
  %1190 = sext i32 %1189 to i64
  %1191 = getelementptr inbounds i16, ptr %54, i64 %1190
  %1192 = load i16, ptr %1191, align 2, !tbaa !45
  %1193 = zext i16 %1192 to i32
  %1194 = add nuw nsw i32 %1193, %1163
  %1195 = load i32, ptr %818, align 4, !tbaa !15
  %1196 = add nsw i32 %1194, %1195
  store i32 %1196, ptr %818, align 4, !tbaa !15
  %1197 = icmp slt i32 %1166, %1146
  %1198 = call i32 @llvm.smin.i32(i32 %1166, i32 %1146)
  %1199 = select i1 %1197, i32 %1156, i32 %1144
  %1200 = icmp slt i32 %1176, %1198
  %1201 = call i32 @llvm.smin.i32(i32 %1176, i32 %1198)
  %1202 = select i1 %1200, i32 %1168, i32 %1199
  %1203 = icmp slt i32 %1186, %1201
  %1204 = call i32 @llvm.smin.i32(i32 %1186, i32 %1201)
  %1205 = select i1 %1203, i32 %1178, i32 %1202
  %1206 = icmp slt i32 %1196, %1204
  %1207 = call i32 @llvm.smin.i32(i32 %1196, i32 %1204)
  %1208 = select i1 %1206, i1 true, i1 %1203
  %1209 = select i1 %1208, i1 true, i1 %1200
  %1210 = select i1 %1209, i1 true, i1 %1197
  %1211 = select i1 %1210, i32 %975, i32 %1145
  %1212 = select i1 %1206, i32 %1188, i32 %1205
  %1213 = add nuw nsw i64 %1143, 4
  %1214 = icmp ult i64 %1213, %1141
  br i1 %1214, label %1142, label %1215, !llvm.loop !57

1215:                                             ; preds = %1142
  %1216 = trunc i64 %1213 to i32
  br label %1217

1217:                                             ; preds = %1215, %1130
  %1218 = phi i32 [ 3, %1130 ], [ %1216, %1215 ]
  %1219 = phi i32 [ %890, %1130 ], [ %1207, %1215 ]
  %1220 = phi i32 [ %1122, %1130 ], [ %1211, %1215 ]
  %1221 = phi i32 [ %1123, %1130 ], [ %1212, %1215 ]
  %1222 = icmp slt i32 %1218, %1132
  br i1 %1222, label %1223, label %1286

1223:                                             ; preds = %1217
  %1224 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %1225 = zext nneg i32 %1218 to i64
  %1226 = sext i32 %32 to i64
  %1227 = sext i32 %28 to i64
  %1228 = sext i32 %1132 to i64
  %1229 = getelementptr i8, ptr %26, i64 %985
  %1230 = getelementptr i8, ptr %26, i64 %985
  br label %1231

1231:                                             ; preds = %1223, %1280
  %1232 = phi i64 [ %1225, %1223 ], [ %1284, %1280 ]
  %1233 = phi i32 [ %1221, %1223 ], [ %1283, %1280 ]
  %1234 = phi i32 [ %1220, %1223 ], [ %1282, %1280 ]
  %1235 = phi i32 [ %1219, %1223 ], [ %1281, %1280 ]
  %1236 = add nsw i64 %1232, %982
  %1237 = icmp sgt i64 %1236, %1226
  br i1 %1237, label %1256, label %1238

1238:                                             ; preds = %1231
  %1239 = load ptr, ptr %1224, align 8, !tbaa !42
  %1240 = getelementptr i8, ptr %1229, i64 %1236
  %1241 = call i32 %1239(ptr noundef %24, i32 noundef 16, ptr noundef %1240, i32 noundef %20) #11
  %1242 = trunc i64 %1236 to i32
  %1243 = shl i32 %1242, 2
  %1244 = sext i32 %1243 to i64
  %1245 = getelementptr inbounds i16, ptr %54, i64 %1244
  %1246 = load i16, ptr %1245, align 2, !tbaa !45
  %1247 = zext i16 %1246 to i32
  %1248 = load i16, ptr %1042, align 2, !tbaa !45
  %1249 = zext i16 %1248 to i32
  %1250 = add i32 %1241, %1247
  %1251 = add i32 %1250, %1249
  %1252 = icmp slt i32 %1251, %1235
  %1253 = call i32 @llvm.smin.i32(i32 %1251, i32 %1235)
  %1254 = select i1 %1252, i32 %975, i32 %1234
  %1255 = select i1 %1252, i32 %1242, i32 %1233
  br label %1256

1256:                                             ; preds = %1238, %1231
  %1257 = phi i32 [ %1253, %1238 ], [ %1235, %1231 ]
  %1258 = phi i32 [ %1254, %1238 ], [ %1234, %1231 ]
  %1259 = phi i32 [ %1255, %1238 ], [ %1233, %1231 ]
  %1260 = sub nsw i64 %982, %1232
  %1261 = icmp slt i64 %1260, %1227
  br i1 %1261, label %1280, label %1262

1262:                                             ; preds = %1256
  %1263 = load ptr, ptr %1224, align 8, !tbaa !42
  %1264 = getelementptr i8, ptr %1230, i64 %1260
  %1265 = call i32 %1263(ptr noundef %24, i32 noundef 16, ptr noundef %1264, i32 noundef %20) #11
  %1266 = trunc i64 %1260 to i32
  %1267 = shl i32 %1266, 2
  %1268 = sext i32 %1267 to i64
  %1269 = getelementptr inbounds i16, ptr %54, i64 %1268
  %1270 = load i16, ptr %1269, align 2, !tbaa !45
  %1271 = zext i16 %1270 to i32
  %1272 = load i16, ptr %1042, align 2, !tbaa !45
  %1273 = zext i16 %1272 to i32
  %1274 = add i32 %1265, %1271
  %1275 = add i32 %1274, %1273
  %1276 = icmp slt i32 %1275, %1257
  %1277 = call i32 @llvm.smin.i32(i32 %1275, i32 %1257)
  %1278 = select i1 %1276, i32 %975, i32 %1258
  %1279 = select i1 %1276, i32 %1266, i32 %1259
  br label %1280

1280:                                             ; preds = %1256, %1262
  %1281 = phi i32 [ %1277, %1262 ], [ %1257, %1256 ]
  %1282 = phi i32 [ %1278, %1262 ], [ %1258, %1256 ]
  %1283 = phi i32 [ %1279, %1262 ], [ %1259, %1256 ]
  %1284 = add nuw nsw i64 %1232, 2
  %1285 = icmp slt i64 %1284, %1228
  br i1 %1285, label %1231, label %1286, !llvm.loop !58

1286:                                             ; preds = %1280, %1217
  %1287 = phi i32 [ %1219, %1217 ], [ %1281, %1280 ]
  %1288 = phi i32 [ %1220, %1217 ], [ %1282, %1280 ]
  %1289 = phi i32 [ %1221, %1217 ], [ %1283, %1280 ]
  %1290 = sub nsw i32 %34, %975
  %1291 = sub nsw i32 %975, %30
  %1292 = call i32 @llvm.smin.i32(i32 %1290, i32 %1291)
  %1293 = icmp sle i32 %1132, %1292
  %1294 = icmp sgt i32 %1132, 5
  %1295 = and i1 %1293, %1294
  br i1 %1295, label %1296, label %1378

1296:                                             ; preds = %1286
  %1297 = add nsw i32 %1132, -2
  %1298 = zext nneg i32 %1297 to i64
  br label %1299

1299:                                             ; preds = %1296, %1299
  %1300 = phi i64 [ 3, %1296 ], [ %1374, %1299 ]
  %1301 = phi i32 [ %1289, %1296 ], [ %1373, %1299 ]
  %1302 = phi i32 [ %1288, %1296 ], [ %1369, %1299 ]
  %1303 = phi i32 [ %1287, %1296 ], [ %1368, %1299 ]
  %1304 = load ptr, ptr %763, align 8, !tbaa !42
  %1305 = mul nsw i64 %1300, %768
  %1306 = getelementptr inbounds i8, ptr %986, i64 %1305
  %1307 = mul i64 %1305, -4294967296
  %1308 = ashr exact i64 %1307, 32
  %1309 = getelementptr inbounds i8, ptr %986, i64 %1308
  %1310 = add nuw nsw i64 %1300, 2
  %1311 = mul nsw i64 %1310, %768
  %1312 = getelementptr inbounds i8, ptr %986, i64 %1311
  %1313 = sub nuw nsw i64 -2, %1300
  %1314 = mul nsw i64 %1313, %768
  %1315 = getelementptr inbounds i8, ptr %986, i64 %1314
  call void %1304(ptr noundef %24, ptr noundef %1306, ptr noundef %1309, ptr noundef %1312, ptr noundef %1315, i32 noundef %20, ptr noundef nonnull %7) #11
  %1316 = load i16, ptr %998, align 2, !tbaa !45
  %1317 = zext i16 %1316 to i32
  %1318 = trunc i64 %1300 to i32
  %1319 = add i32 %975, %1318
  %1320 = shl i32 %1319, 2
  %1321 = sext i32 %1320 to i64
  %1322 = getelementptr inbounds i16, ptr %59, i64 %1321
  %1323 = load i16, ptr %1322, align 2, !tbaa !45
  %1324 = zext i16 %1323 to i32
  %1325 = add nuw nsw i32 %1324, %1317
  %1326 = load i32, ptr %7, align 16, !tbaa !15
  %1327 = add nsw i32 %1325, %1326
  store i32 %1327, ptr %7, align 16, !tbaa !15
  %1328 = trunc i64 %1300 to i32
  %1329 = sub i32 %975, %1328
  %1330 = shl i32 %1329, 2
  %1331 = sext i32 %1330 to i64
  %1332 = getelementptr inbounds i16, ptr %59, i64 %1331
  %1333 = load i16, ptr %1332, align 2, !tbaa !45
  %1334 = zext i16 %1333 to i32
  %1335 = add nuw nsw i32 %1334, %1317
  %1336 = load i32, ptr %793, align 4, !tbaa !15
  %1337 = add nsw i32 %1335, %1336
  store i32 %1337, ptr %793, align 4, !tbaa !15
  %1338 = trunc i64 %1310 to i32
  %1339 = add i32 %975, %1338
  %1340 = shl i32 %1339, 2
  %1341 = sext i32 %1340 to i64
  %1342 = getelementptr inbounds i16, ptr %59, i64 %1341
  %1343 = load i16, ptr %1342, align 2, !tbaa !45
  %1344 = zext i16 %1343 to i32
  %1345 = add nuw nsw i32 %1344, %1317
  %1346 = load i32, ptr %808, align 8, !tbaa !15
  %1347 = add nsw i32 %1345, %1346
  store i32 %1347, ptr %808, align 8, !tbaa !15
  %1348 = trunc i64 %1313 to i32
  %1349 = add i32 %975, %1348
  %1350 = shl i32 %1349, 2
  %1351 = sext i32 %1350 to i64
  %1352 = getelementptr inbounds i16, ptr %59, i64 %1351
  %1353 = load i16, ptr %1352, align 2, !tbaa !45
  %1354 = zext i16 %1353 to i32
  %1355 = add nuw nsw i32 %1354, %1317
  %1356 = load i32, ptr %818, align 4, !tbaa !15
  %1357 = add nsw i32 %1355, %1356
  store i32 %1357, ptr %818, align 4, !tbaa !15
  %1358 = icmp slt i32 %1327, %1303
  %1359 = call i32 @llvm.smin.i32(i32 %1327, i32 %1303)
  %1360 = select i1 %1358, i32 %1319, i32 %1302
  %1361 = icmp slt i32 %1337, %1359
  %1362 = call i32 @llvm.smin.i32(i32 %1337, i32 %1359)
  %1363 = select i1 %1361, i32 %1329, i32 %1360
  %1364 = icmp slt i32 %1347, %1362
  %1365 = call i32 @llvm.smin.i32(i32 %1347, i32 %1362)
  %1366 = select i1 %1364, i32 %1339, i32 %1363
  %1367 = icmp slt i32 %1357, %1365
  %1368 = call i32 @llvm.smin.i32(i32 %1357, i32 %1365)
  %1369 = select i1 %1367, i32 %1349, i32 %1366
  %1370 = select i1 %1367, i1 true, i1 %1364
  %1371 = select i1 %1370, i1 true, i1 %1361
  %1372 = select i1 %1371, i1 true, i1 %1358
  %1373 = select i1 %1372, i32 %974, i32 %1301
  %1374 = add nuw nsw i64 %1300, 4
  %1375 = icmp ult i64 %1374, %1298
  br i1 %1375, label %1299, label %1376, !llvm.loop !59

1376:                                             ; preds = %1299
  %1377 = trunc i64 %1374 to i32
  br label %1378

1378:                                             ; preds = %1376, %1286
  %1379 = phi i32 [ 3, %1286 ], [ %1377, %1376 ]
  %1380 = phi i32 [ %1287, %1286 ], [ %1368, %1376 ]
  %1381 = phi i32 [ %1288, %1286 ], [ %1369, %1376 ]
  %1382 = phi i32 [ %1289, %1286 ], [ %1373, %1376 ]
  %1383 = icmp slt i32 %1379, %1132
  br i1 %1383, label %1384, label %1450

1384:                                             ; preds = %1378
  %1385 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %1386 = zext nneg i32 %1379 to i64
  %1387 = sext i32 %975 to i64
  %1388 = sext i32 %34 to i64
  %1389 = sext i32 %30 to i64
  %1390 = sext i32 %1132 to i64
  %1391 = getelementptr i8, ptr %26, i64 %982
  %1392 = getelementptr i8, ptr %26, i64 %982
  br label %1393

1393:                                             ; preds = %1384, %1444
  %1394 = phi i64 [ %1386, %1384 ], [ %1448, %1444 ]
  %1395 = phi i32 [ %1382, %1384 ], [ %1447, %1444 ]
  %1396 = phi i32 [ %1381, %1384 ], [ %1446, %1444 ]
  %1397 = phi i32 [ %1380, %1384 ], [ %1445, %1444 ]
  %1398 = add nsw i64 %1394, %1387
  %1399 = icmp sgt i64 %1398, %1388
  br i1 %1399, label %1419, label %1400

1400:                                             ; preds = %1393
  %1401 = load ptr, ptr %1385, align 8, !tbaa !42
  %1402 = mul nsw i64 %1398, %768
  %1403 = getelementptr i8, ptr %1391, i64 %1402
  %1404 = call i32 %1401(ptr noundef %24, i32 noundef 16, ptr noundef %1403, i32 noundef %20) #11
  %1405 = load i16, ptr %998, align 2, !tbaa !45
  %1406 = zext i16 %1405 to i32
  %1407 = trunc i64 %1398 to i32
  %1408 = shl i32 %1407, 2
  %1409 = sext i32 %1408 to i64
  %1410 = getelementptr inbounds i16, ptr %59, i64 %1409
  %1411 = load i16, ptr %1410, align 2, !tbaa !45
  %1412 = zext i16 %1411 to i32
  %1413 = add i32 %1404, %1406
  %1414 = add i32 %1413, %1412
  %1415 = icmp slt i32 %1414, %1397
  %1416 = call i32 @llvm.smin.i32(i32 %1414, i32 %1397)
  %1417 = select i1 %1415, i32 %1407, i32 %1396
  %1418 = select i1 %1415, i32 %974, i32 %1395
  br label %1419

1419:                                             ; preds = %1400, %1393
  %1420 = phi i32 [ %1416, %1400 ], [ %1397, %1393 ]
  %1421 = phi i32 [ %1417, %1400 ], [ %1396, %1393 ]
  %1422 = phi i32 [ %1418, %1400 ], [ %1395, %1393 ]
  %1423 = sub nsw i64 %1387, %1394
  %1424 = icmp slt i64 %1423, %1389
  br i1 %1424, label %1444, label %1425

1425:                                             ; preds = %1419
  %1426 = load ptr, ptr %1385, align 8, !tbaa !42
  %1427 = mul nsw i64 %1423, %768
  %1428 = getelementptr i8, ptr %1392, i64 %1427
  %1429 = call i32 %1426(ptr noundef %24, i32 noundef 16, ptr noundef %1428, i32 noundef %20) #11
  %1430 = load i16, ptr %998, align 2, !tbaa !45
  %1431 = zext i16 %1430 to i32
  %1432 = trunc i64 %1423 to i32
  %1433 = shl i32 %1432, 2
  %1434 = sext i32 %1433 to i64
  %1435 = getelementptr inbounds i16, ptr %59, i64 %1434
  %1436 = load i16, ptr %1435, align 2, !tbaa !45
  %1437 = zext i16 %1436 to i32
  %1438 = add i32 %1429, %1431
  %1439 = add i32 %1438, %1437
  %1440 = icmp slt i32 %1439, %1420
  %1441 = call i32 @llvm.smin.i32(i32 %1439, i32 %1420)
  %1442 = select i1 %1440, i32 %1432, i32 %1421
  %1443 = select i1 %1440, i32 %974, i32 %1422
  br label %1444

1444:                                             ; preds = %1419, %1425
  %1445 = phi i32 [ %1441, %1425 ], [ %1420, %1419 ]
  %1446 = phi i32 [ %1442, %1425 ], [ %1421, %1419 ]
  %1447 = phi i32 [ %1443, %1425 ], [ %1422, %1419 ]
  %1448 = add nuw nsw i64 %1394, 2
  %1449 = icmp slt i64 %1448, %1390
  br i1 %1449, label %1393, label %1450, !llvm.loop !60

1450:                                             ; preds = %1444, %1378
  %1451 = phi i32 [ %1380, %1378 ], [ %1445, %1444 ]
  %1452 = phi i32 [ %1381, %1378 ], [ %1446, %1444 ]
  %1453 = phi i32 [ %1382, %1378 ], [ %1447, %1444 ]
  %1454 = load ptr, ptr %763, align 8, !tbaa !42
  %1455 = getelementptr inbounds i8, ptr %991, i64 %989
  %1456 = getelementptr inbounds i8, ptr %993, i64 %989
  %1457 = getelementptr inbounds i8, ptr %995, i64 %766
  %1458 = getelementptr inbounds i8, ptr %1063, i64 %766
  call void %1454(ptr noundef %24, ptr noundef nonnull %1455, ptr noundef nonnull %1456, ptr noundef nonnull %1457, ptr noundef nonnull %1458, i32 noundef %20, ptr noundef nonnull %7) #11
  %1459 = load i16, ptr %1013, align 2, !tbaa !45
  %1460 = zext i16 %1459 to i32
  %1461 = load i16, ptr %1004, align 2, !tbaa !45
  %1462 = zext i16 %1461 to i32
  %1463 = add nuw nsw i32 %1462, %1460
  %1464 = load i32, ptr %7, align 16, !tbaa !15
  %1465 = add nsw i32 %1463, %1464
  store i32 %1465, ptr %7, align 16, !tbaa !15
  %1466 = load i16, ptr %1028, align 2, !tbaa !45
  %1467 = zext i16 %1466 to i32
  %1468 = add nuw nsw i32 %1467, %1462
  %1469 = load i32, ptr %793, align 4, !tbaa !15
  %1470 = add nsw i32 %1468, %1469
  store i32 %1470, ptr %793, align 4, !tbaa !15
  %1471 = load i16, ptr %1037, align 2, !tbaa !45
  %1472 = zext i16 %1471 to i32
  %1473 = load i16, ptr %1019, align 2, !tbaa !45
  %1474 = zext i16 %1473 to i32
  %1475 = add nuw nsw i32 %1474, %1472
  %1476 = load i32, ptr %808, align 8, !tbaa !15
  %1477 = add nsw i32 %1475, %1476
  store i32 %1477, ptr %808, align 8, !tbaa !15
  %1478 = load i16, ptr %1072, align 2, !tbaa !45
  %1479 = zext i16 %1478 to i32
  %1480 = add nuw nsw i32 %1479, %1474
  %1481 = load i32, ptr %818, align 4, !tbaa !15
  %1482 = add nsw i32 %1480, %1481
  store i32 %1482, ptr %818, align 4, !tbaa !15
  %1483 = icmp slt i32 %1465, %1451
  %1484 = call i32 @llvm.smin.i32(i32 %1465, i32 %1451)
  %1485 = select i1 %1483, i32 %1010, i32 %1453
  %1486 = icmp slt i32 %1470, %1484
  %1487 = call i32 @llvm.smin.i32(i32 %1470, i32 %1484)
  %1488 = select i1 %1486, i1 true, i1 %1483
  %1489 = select i1 %1488, i32 %1001, i32 %1452
  %1490 = select i1 %1486, i32 %1025, i32 %1485
  %1491 = icmp slt i32 %1477, %1487
  %1492 = call i32 @llvm.smin.i32(i32 %1477, i32 %1487)
  %1493 = select i1 %1491, i32 %1034, i32 %1490
  %1494 = icmp slt i32 %1482, %1492
  %1495 = call i32 @llvm.smin.i32(i32 %1482, i32 %1492)
  %1496 = select i1 %1494, i1 true, i1 %1491
  %1497 = select i1 %1496, i32 %1016, i32 %1489
  %1498 = select i1 %1494, i32 %1069, i32 %1493
  %1499 = load ptr, ptr %763, align 8, !tbaa !42
  %1500 = getelementptr inbounds i8, ptr %995, i64 %768
  %1501 = getelementptr inbounds i8, ptr %1063, i64 %768
  %1502 = getelementptr inbounds i8, ptr %991, i64 %1067
  %1503 = getelementptr inbounds i8, ptr %993, i64 %1067
  call void %1499(ptr noundef %24, ptr noundef nonnull %1500, ptr noundef nonnull %1501, ptr noundef nonnull %1502, ptr noundef nonnull %1503, i32 noundef %20, ptr noundef nonnull %7) #11
  %1504 = load i16, ptr %1037, align 2, !tbaa !45
  %1505 = zext i16 %1504 to i32
  %1506 = load i16, ptr %1085, align 2, !tbaa !45
  %1507 = zext i16 %1506 to i32
  %1508 = add nuw nsw i32 %1507, %1505
  %1509 = load i32, ptr %7, align 16, !tbaa !15
  %1510 = add nsw i32 %1508, %1509
  store i32 %1510, ptr %7, align 16, !tbaa !15
  %1511 = load i16, ptr %1072, align 2, !tbaa !45
  %1512 = zext i16 %1511 to i32
  %1513 = add nuw nsw i32 %1512, %1507
  %1514 = load i32, ptr %793, align 4, !tbaa !15
  %1515 = add nsw i32 %1513, %1514
  store i32 %1515, ptr %793, align 4, !tbaa !15
  %1516 = load i16, ptr %1013, align 2, !tbaa !45
  %1517 = zext i16 %1516 to i32
  %1518 = load i16, ptr %1101, align 2, !tbaa !45
  %1519 = zext i16 %1518 to i32
  %1520 = add nuw nsw i32 %1519, %1517
  %1521 = load i32, ptr %808, align 8, !tbaa !15
  %1522 = add nsw i32 %1520, %1521
  store i32 %1522, ptr %808, align 8, !tbaa !15
  %1523 = load i16, ptr %1028, align 2, !tbaa !45
  %1524 = zext i16 %1523 to i32
  %1525 = add nuw nsw i32 %1524, %1519
  %1526 = load i32, ptr %818, align 4, !tbaa !15
  %1527 = add nsw i32 %1525, %1526
  store i32 %1527, ptr %818, align 4, !tbaa !15
  %1528 = icmp slt i32 %1510, %1495
  %1529 = call i32 @llvm.smin.i32(i32 %1510, i32 %1495)
  %1530 = select i1 %1528, i32 %1034, i32 %1498
  %1531 = icmp slt i32 %1515, %1529
  %1532 = call i32 @llvm.smin.i32(i32 %1515, i32 %1529)
  %1533 = select i1 %1531, i1 true, i1 %1528
  %1534 = select i1 %1533, i32 %1082, i32 %1497
  %1535 = select i1 %1531, i32 %1069, i32 %1530
  %1536 = icmp slt i32 %1522, %1532
  %1537 = call i32 @llvm.smin.i32(i32 %1522, i32 %1532)
  %1538 = select i1 %1536, i32 %1010, i32 %1535
  %1539 = icmp slt i32 %1527, %1537
  %1540 = call i32 @llvm.smin.i32(i32 %1527, i32 %1537)
  %1541 = select i1 %1539, i1 true, i1 %1536
  %1542 = select i1 %1541, i32 %1098, i32 %1534
  %1543 = select i1 %1539, i32 %1025, i32 %1538
  %1544 = icmp eq i32 %1540, %890
  %1545 = add nsw i32 %1132, 2
  br i1 %1544, label %2887, label %1546

1546:                                             ; preds = %1128, %1450, %973, %901
  %1547 = phi i32 [ %974, %1450 ], [ %974, %1128 ], [ %974, %973 ], [ %971, %901 ]
  %1548 = phi i32 [ %975, %1450 ], [ %975, %1128 ], [ %975, %973 ], [ %970, %901 ]
  %1549 = phi i32 [ %1545, %1450 ], [ 3, %1128 ], [ 3, %973 ], [ 1, %901 ]
  %1550 = phi i32 [ %1540, %1450 ], [ %1121, %1128 ], [ %890, %973 ], [ %968, %901 ]
  %1551 = phi i32 [ %1542, %1450 ], [ %1122, %1128 ], [ %975, %973 ], [ %970, %901 ]
  %1552 = phi i32 [ %1543, %1450 ], [ %1123, %1128 ], [ %974, %973 ], [ %971, %901 ]
  switch i32 %3, label %1570 [
    i32 0, label %1627
    i32 1, label %1553
  ]

1553:                                             ; preds = %1546
  %1554 = icmp eq i32 %13, 0
  br i1 %1554, label %1594, label %1555

1555:                                             ; preds = %1553
  %1556 = load i16, ptr %49, align 16, !tbaa !45
  %1557 = sext i16 %1556 to i32
  %1558 = load i16, ptr %2, align 2, !tbaa !45
  %1559 = sext i16 %1558 to i32
  %1560 = sub nsw i32 %1557, %1559
  %1561 = call i32 @llvm.abs.i32(i32 %1560, i1 true)
  %1562 = load i16, ptr %55, align 2, !tbaa !45
  %1563 = sext i16 %1562 to i32
  %1564 = getelementptr inbounds [2 x i16], ptr %2, i64 0, i64 1
  %1565 = load i16, ptr %1564, align 2, !tbaa !45
  %1566 = sext i16 %1565 to i32
  %1567 = sub nsw i32 %1563, %1566
  %1568 = call i32 @llvm.abs.i32(i32 %1567, i1 true)
  %1569 = add nuw nsw i32 %1568, %1561
  br label %1594

1570:                                             ; preds = %1546
  %1571 = add nsw i32 %3, -1
  %1572 = icmp eq i32 %13, 0
  br i1 %1572, label %1588, label %1573

1573:                                             ; preds = %1570
  %1574 = load i16, ptr %49, align 16, !tbaa !45
  %1575 = sext i16 %1574 to i32
  %1576 = load i16, ptr %2, align 2, !tbaa !45
  %1577 = sext i16 %1576 to i32
  %1578 = sub nsw i32 %1575, %1577
  %1579 = call i32 @llvm.abs.i32(i32 %1578, i1 true)
  %1580 = load i16, ptr %55, align 2, !tbaa !45
  %1581 = sext i16 %1580 to i32
  %1582 = getelementptr inbounds [2 x i16], ptr %2, i64 0, i64 1
  %1583 = load i16, ptr %1582, align 2, !tbaa !45
  %1584 = sext i16 %1583 to i32
  %1585 = sub nsw i32 %1581, %1584
  %1586 = call i32 @llvm.abs.i32(i32 %1585, i1 true)
  %1587 = add nuw nsw i32 %1586, %1579
  br label %1588

1588:                                             ; preds = %1573, %1570
  %1589 = phi i32 [ %3, %1573 ], [ %1571, %1570 ]
  %1590 = phi i32 [ %1587, %1573 ], [ 0, %1570 ]
  %1591 = sext i32 %3 to i64
  %1592 = call fastcc i32 @x264_predictor_difference(ptr noundef %2, i64 noundef %1591) #10
  %1593 = add nsw i32 %1592, %1590
  br label %1594

1594:                                             ; preds = %1553, %1555, %1588
  %1595 = phi i32 [ 1, %1555 ], [ %1589, %1588 ], [ 1, %1553 ]
  %1596 = phi i32 [ %1569, %1555 ], [ %1593, %1588 ], [ 25, %1553 ]
  %1597 = getelementptr inbounds [7 x i8], ptr @x264_me_search_ref.x264_pixel_size_shift, i64 0, i64 %14
  %1598 = load i8, ptr %1597, align 1, !tbaa !52
  %1599 = zext i8 %1598 to i32
  %1600 = lshr i32 1000, %1599
  %1601 = icmp slt i32 %1550, %1600
  br i1 %1601, label %1609, label %1602

1602:                                             ; preds = %1594
  %1603 = lshr i32 2000, %1599
  %1604 = icmp ult i32 %1550, %1603
  br i1 %1604, label %1609, label %1605

1605:                                             ; preds = %1602
  %1606 = lshr i32 4000, %1599
  %1607 = icmp ult i32 %1550, %1606
  %1608 = select i1 %1607, i64 2, i64 3
  br label %1609

1609:                                             ; preds = %1605, %1602, %1594
  %1610 = phi i64 [ 0, %1594 ], [ %1608, %1605 ], [ 1, %1602 ]
  %1611 = mul nsw i32 %1595, 10
  %1612 = icmp slt i32 %1596, %1611
  br i1 %1612, label %1620, label %1613

1613:                                             ; preds = %1609
  %1614 = mul nsw i32 %1595, 20
  %1615 = icmp slt i32 %1596, %1614
  br i1 %1615, label %1620, label %1616

1616:                                             ; preds = %1613
  %1617 = mul nsw i32 %1595, 40
  %1618 = icmp slt i32 %1596, %1617
  %1619 = select i1 %1618, i64 2, i64 3
  br label %1620

1620:                                             ; preds = %1616, %1613, %1609
  %1621 = phi i64 [ 0, %1609 ], [ %1619, %1616 ], [ 1, %1613 ]
  %1622 = getelementptr inbounds [4 x [4 x i8]], ptr @x264_me_search_ref.range_mul, i64 0, i64 %1621, i64 %1610
  %1623 = load i8, ptr %1622, align 1, !tbaa !52
  %1624 = zext i8 %1623 to i32
  %1625 = mul nsw i32 %22, %1624
  %1626 = ashr i32 %1625, 2
  br label %1627

1627:                                             ; preds = %1546, %1620
  %1628 = phi i32 [ %1626, %1620 ], [ %22, %1546 ]
  %1629 = sub nsw i32 %32, %1547
  %1630 = sub nsw i32 %1547, %28
  %1631 = call i32 @llvm.smin.i32(i32 %1629, i32 %1630)
  %1632 = icmp sgt i32 %1628, %1631
  br i1 %1632, label %1722, label %1633

1633:                                             ; preds = %1627
  %1634 = add nsw i32 %1628, -2
  %1635 = icmp slt i32 %1549, %1634
  br i1 %1635, label %1636, label %1722

1636:                                             ; preds = %1633
  %1637 = sext i32 %1547 to i64
  %1638 = getelementptr inbounds i8, ptr %26, i64 %1637
  %1639 = mul nsw i32 %1548, %20
  %1640 = sext i32 %1639 to i64
  %1641 = getelementptr inbounds i8, ptr %1638, i64 %1640
  %1642 = shl i32 %1548, 2
  %1643 = sext i32 %1642 to i64
  %1644 = getelementptr inbounds i16, ptr %59, i64 %1643
  %1645 = sext i32 %1549 to i64
  %1646 = sext i32 %1634 to i64
  br label %1647

1647:                                             ; preds = %1636, %1647
  %1648 = phi i64 [ %1645, %1636 ], [ %1718, %1647 ]
  %1649 = phi i32 [ %1552, %1636 ], [ %1717, %1647 ]
  %1650 = phi i32 [ %1551, %1636 ], [ %1716, %1647 ]
  %1651 = phi i32 [ %1550, %1636 ], [ %1712, %1647 ]
  %1652 = load ptr, ptr %763, align 8, !tbaa !42
  %1653 = getelementptr inbounds i8, ptr %1641, i64 %1648
  %1654 = sub nsw i64 0, %1648
  %1655 = getelementptr inbounds i8, ptr %1641, i64 %1654
  %1656 = add nsw i64 %1648, 2
  %1657 = getelementptr inbounds i8, ptr %1641, i64 %1656
  %1658 = sub nsw i64 -2, %1648
  %1659 = getelementptr inbounds i8, ptr %1641, i64 %1658
  call void %1652(ptr noundef %24, ptr noundef %1653, ptr noundef %1655, ptr noundef %1657, ptr noundef %1659, i32 noundef %20, ptr noundef nonnull %7) #11
  %1660 = trunc i64 %1648 to i32
  %1661 = add i32 %1547, %1660
  %1662 = shl i32 %1661, 2
  %1663 = sext i32 %1662 to i64
  %1664 = getelementptr inbounds i16, ptr %54, i64 %1663
  %1665 = load i16, ptr %1664, align 2, !tbaa !45
  %1666 = zext i16 %1665 to i32
  %1667 = load i16, ptr %1644, align 2, !tbaa !45
  %1668 = zext i16 %1667 to i32
  %1669 = add nuw nsw i32 %1668, %1666
  %1670 = load i32, ptr %7, align 16, !tbaa !15
  %1671 = add nsw i32 %1669, %1670
  store i32 %1671, ptr %7, align 16, !tbaa !15
  %1672 = trunc i64 %1648 to i32
  %1673 = sub i32 %1547, %1672
  %1674 = shl i32 %1673, 2
  %1675 = sext i32 %1674 to i64
  %1676 = getelementptr inbounds i16, ptr %54, i64 %1675
  %1677 = load i16, ptr %1676, align 2, !tbaa !45
  %1678 = zext i16 %1677 to i32
  %1679 = add nuw nsw i32 %1678, %1668
  %1680 = load i32, ptr %793, align 4, !tbaa !15
  %1681 = add nsw i32 %1679, %1680
  store i32 %1681, ptr %793, align 4, !tbaa !15
  %1682 = trunc i64 %1656 to i32
  %1683 = add i32 %1547, %1682
  %1684 = shl i32 %1683, 2
  %1685 = sext i32 %1684 to i64
  %1686 = getelementptr inbounds i16, ptr %54, i64 %1685
  %1687 = load i16, ptr %1686, align 2, !tbaa !45
  %1688 = zext i16 %1687 to i32
  %1689 = add nuw nsw i32 %1688, %1668
  %1690 = load i32, ptr %808, align 8, !tbaa !15
  %1691 = add nsw i32 %1689, %1690
  store i32 %1691, ptr %808, align 8, !tbaa !15
  %1692 = trunc i64 %1658 to i32
  %1693 = add i32 %1547, %1692
  %1694 = shl i32 %1693, 2
  %1695 = sext i32 %1694 to i64
  %1696 = getelementptr inbounds i16, ptr %54, i64 %1695
  %1697 = load i16, ptr %1696, align 2, !tbaa !45
  %1698 = zext i16 %1697 to i32
  %1699 = add nuw nsw i32 %1698, %1668
  %1700 = load i32, ptr %818, align 4, !tbaa !15
  %1701 = add nsw i32 %1699, %1700
  store i32 %1701, ptr %818, align 4, !tbaa !15
  %1702 = icmp slt i32 %1671, %1651
  %1703 = call i32 @llvm.smin.i32(i32 %1671, i32 %1651)
  %1704 = select i1 %1702, i32 %1661, i32 %1649
  %1705 = icmp slt i32 %1681, %1703
  %1706 = call i32 @llvm.smin.i32(i32 %1681, i32 %1703)
  %1707 = select i1 %1705, i32 %1673, i32 %1704
  %1708 = icmp slt i32 %1691, %1706
  %1709 = call i32 @llvm.smin.i32(i32 %1691, i32 %1706)
  %1710 = select i1 %1708, i32 %1683, i32 %1707
  %1711 = icmp slt i32 %1701, %1709
  %1712 = call i32 @llvm.smin.i32(i32 %1701, i32 %1709)
  %1713 = select i1 %1711, i1 true, i1 %1708
  %1714 = select i1 %1713, i1 true, i1 %1705
  %1715 = select i1 %1714, i1 true, i1 %1702
  %1716 = select i1 %1715, i32 %1548, i32 %1650
  %1717 = select i1 %1711, i32 %1693, i32 %1710
  %1718 = add nsw i64 %1648, 4
  %1719 = icmp slt i64 %1718, %1646
  br i1 %1719, label %1647, label %1720, !llvm.loop !61

1720:                                             ; preds = %1647
  %1721 = trunc i64 %1718 to i32
  br label %1722

1722:                                             ; preds = %1720, %1633, %1627
  %1723 = phi i32 [ %1549, %1627 ], [ %1549, %1633 ], [ %1721, %1720 ]
  %1724 = phi i32 [ %1550, %1627 ], [ %1550, %1633 ], [ %1712, %1720 ]
  %1725 = phi i32 [ %1551, %1627 ], [ %1551, %1633 ], [ %1716, %1720 ]
  %1726 = phi i32 [ %1552, %1627 ], [ %1552, %1633 ], [ %1717, %1720 ]
  %1727 = icmp slt i32 %1723, %1628
  br i1 %1727, label %1728, label %1797

1728:                                             ; preds = %1722
  %1729 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %1730 = mul nsw i32 %1548, %20
  %1731 = shl i32 %1548, 2
  %1732 = sext i32 %1731 to i64
  %1733 = getelementptr inbounds i16, ptr %59, i64 %1732
  %1734 = sext i32 %1723 to i64
  %1735 = sext i32 %1547 to i64
  %1736 = sext i32 %32 to i64
  %1737 = sext i32 %1730 to i64
  %1738 = sext i32 %28 to i64
  %1739 = sext i32 %1628 to i64
  %1740 = getelementptr i8, ptr %26, i64 %1737
  %1741 = getelementptr i8, ptr %26, i64 %1737
  br label %1742

1742:                                             ; preds = %1728, %1791
  %1743 = phi i64 [ %1734, %1728 ], [ %1795, %1791 ]
  %1744 = phi i32 [ %1726, %1728 ], [ %1794, %1791 ]
  %1745 = phi i32 [ %1725, %1728 ], [ %1793, %1791 ]
  %1746 = phi i32 [ %1724, %1728 ], [ %1792, %1791 ]
  %1747 = add nsw i64 %1743, %1735
  %1748 = icmp sgt i64 %1747, %1736
  br i1 %1748, label %1767, label %1749

1749:                                             ; preds = %1742
  %1750 = load ptr, ptr %1729, align 8, !tbaa !42
  %1751 = getelementptr i8, ptr %1740, i64 %1747
  %1752 = call i32 %1750(ptr noundef %24, i32 noundef 16, ptr noundef %1751, i32 noundef %20) #11
  %1753 = trunc i64 %1747 to i32
  %1754 = shl i32 %1753, 2
  %1755 = sext i32 %1754 to i64
  %1756 = getelementptr inbounds i16, ptr %54, i64 %1755
  %1757 = load i16, ptr %1756, align 2, !tbaa !45
  %1758 = zext i16 %1757 to i32
  %1759 = load i16, ptr %1733, align 2, !tbaa !45
  %1760 = zext i16 %1759 to i32
  %1761 = add i32 %1752, %1758
  %1762 = add i32 %1761, %1760
  %1763 = icmp slt i32 %1762, %1746
  %1764 = call i32 @llvm.smin.i32(i32 %1762, i32 %1746)
  %1765 = select i1 %1763, i32 %1548, i32 %1745
  %1766 = select i1 %1763, i32 %1753, i32 %1744
  br label %1767

1767:                                             ; preds = %1749, %1742
  %1768 = phi i32 [ %1764, %1749 ], [ %1746, %1742 ]
  %1769 = phi i32 [ %1765, %1749 ], [ %1745, %1742 ]
  %1770 = phi i32 [ %1766, %1749 ], [ %1744, %1742 ]
  %1771 = sub nsw i64 %1735, %1743
  %1772 = icmp slt i64 %1771, %1738
  br i1 %1772, label %1791, label %1773

1773:                                             ; preds = %1767
  %1774 = load ptr, ptr %1729, align 8, !tbaa !42
  %1775 = getelementptr i8, ptr %1741, i64 %1771
  %1776 = call i32 %1774(ptr noundef %24, i32 noundef 16, ptr noundef %1775, i32 noundef %20) #11
  %1777 = trunc i64 %1771 to i32
  %1778 = shl i32 %1777, 2
  %1779 = sext i32 %1778 to i64
  %1780 = getelementptr inbounds i16, ptr %54, i64 %1779
  %1781 = load i16, ptr %1780, align 2, !tbaa !45
  %1782 = zext i16 %1781 to i32
  %1783 = load i16, ptr %1733, align 2, !tbaa !45
  %1784 = zext i16 %1783 to i32
  %1785 = add i32 %1776, %1782
  %1786 = add i32 %1785, %1784
  %1787 = icmp slt i32 %1786, %1768
  %1788 = call i32 @llvm.smin.i32(i32 %1786, i32 %1768)
  %1789 = select i1 %1787, i32 %1548, i32 %1769
  %1790 = select i1 %1787, i32 %1777, i32 %1770
  br label %1791

1791:                                             ; preds = %1767, %1773
  %1792 = phi i32 [ %1788, %1773 ], [ %1768, %1767 ]
  %1793 = phi i32 [ %1789, %1773 ], [ %1769, %1767 ]
  %1794 = phi i32 [ %1790, %1773 ], [ %1770, %1767 ]
  %1795 = add nsw i64 %1743, 2
  %1796 = icmp slt i64 %1795, %1739
  br i1 %1796, label %1742, label %1797, !llvm.loop !62

1797:                                             ; preds = %1791, %1722
  %1798 = phi i32 [ %1724, %1722 ], [ %1792, %1791 ]
  %1799 = phi i32 [ %1725, %1722 ], [ %1793, %1791 ]
  %1800 = phi i32 [ %1726, %1722 ], [ %1794, %1791 ]
  %1801 = ashr i32 %1628, 1
  %1802 = sub nsw i32 %34, %1548
  %1803 = sub nsw i32 %1548, %30
  %1804 = call i32 @llvm.smin.i32(i32 %1802, i32 %1803)
  %1805 = icmp sgt i32 %1801, %1804
  br i1 %1805, label %1899, label %1806

1806:                                             ; preds = %1797
  %1807 = add nsw i32 %1801, -2
  %1808 = icmp slt i32 %1549, %1807
  br i1 %1808, label %1809, label %1899

1809:                                             ; preds = %1806
  %1810 = sext i32 %1547 to i64
  %1811 = getelementptr inbounds i8, ptr %26, i64 %1810
  %1812 = mul nsw i32 %1548, %20
  %1813 = sext i32 %1812 to i64
  %1814 = getelementptr inbounds i8, ptr %1811, i64 %1813
  %1815 = shl i32 %1547, 2
  %1816 = sext i32 %1815 to i64
  %1817 = getelementptr inbounds i16, ptr %54, i64 %1816
  %1818 = sext i32 %1549 to i64
  %1819 = sext i32 %1807 to i64
  br label %1820

1820:                                             ; preds = %1809, %1820
  %1821 = phi i64 [ %1818, %1809 ], [ %1895, %1820 ]
  %1822 = phi i32 [ %1800, %1809 ], [ %1894, %1820 ]
  %1823 = phi i32 [ %1799, %1809 ], [ %1890, %1820 ]
  %1824 = phi i32 [ %1798, %1809 ], [ %1889, %1820 ]
  %1825 = load ptr, ptr %763, align 8, !tbaa !42
  %1826 = mul nsw i64 %1821, %768
  %1827 = getelementptr inbounds i8, ptr %1814, i64 %1826
  %1828 = mul i64 %1826, -4294967296
  %1829 = ashr exact i64 %1828, 32
  %1830 = getelementptr inbounds i8, ptr %1814, i64 %1829
  %1831 = add nsw i64 %1821, 2
  %1832 = mul nsw i64 %1831, %768
  %1833 = getelementptr inbounds i8, ptr %1814, i64 %1832
  %1834 = sub nsw i64 -2, %1821
  %1835 = mul nsw i64 %1834, %768
  %1836 = getelementptr inbounds i8, ptr %1814, i64 %1835
  call void %1825(ptr noundef %24, ptr noundef %1827, ptr noundef %1830, ptr noundef %1833, ptr noundef %1836, i32 noundef %20, ptr noundef nonnull %7) #11
  %1837 = load i16, ptr %1817, align 2, !tbaa !45
  %1838 = zext i16 %1837 to i32
  %1839 = trunc i64 %1821 to i32
  %1840 = add i32 %1548, %1839
  %1841 = shl i32 %1840, 2
  %1842 = sext i32 %1841 to i64
  %1843 = getelementptr inbounds i16, ptr %59, i64 %1842
  %1844 = load i16, ptr %1843, align 2, !tbaa !45
  %1845 = zext i16 %1844 to i32
  %1846 = add nuw nsw i32 %1845, %1838
  %1847 = load i32, ptr %7, align 16, !tbaa !15
  %1848 = add nsw i32 %1846, %1847
  store i32 %1848, ptr %7, align 16, !tbaa !15
  %1849 = trunc i64 %1821 to i32
  %1850 = sub i32 %1548, %1849
  %1851 = shl i32 %1850, 2
  %1852 = sext i32 %1851 to i64
  %1853 = getelementptr inbounds i16, ptr %59, i64 %1852
  %1854 = load i16, ptr %1853, align 2, !tbaa !45
  %1855 = zext i16 %1854 to i32
  %1856 = add nuw nsw i32 %1855, %1838
  %1857 = load i32, ptr %793, align 4, !tbaa !15
  %1858 = add nsw i32 %1856, %1857
  store i32 %1858, ptr %793, align 4, !tbaa !15
  %1859 = trunc i64 %1831 to i32
  %1860 = add i32 %1548, %1859
  %1861 = shl i32 %1860, 2
  %1862 = sext i32 %1861 to i64
  %1863 = getelementptr inbounds i16, ptr %59, i64 %1862
  %1864 = load i16, ptr %1863, align 2, !tbaa !45
  %1865 = zext i16 %1864 to i32
  %1866 = add nuw nsw i32 %1865, %1838
  %1867 = load i32, ptr %808, align 8, !tbaa !15
  %1868 = add nsw i32 %1866, %1867
  store i32 %1868, ptr %808, align 8, !tbaa !15
  %1869 = trunc i64 %1834 to i32
  %1870 = add i32 %1548, %1869
  %1871 = shl i32 %1870, 2
  %1872 = sext i32 %1871 to i64
  %1873 = getelementptr inbounds i16, ptr %59, i64 %1872
  %1874 = load i16, ptr %1873, align 2, !tbaa !45
  %1875 = zext i16 %1874 to i32
  %1876 = add nuw nsw i32 %1875, %1838
  %1877 = load i32, ptr %818, align 4, !tbaa !15
  %1878 = add nsw i32 %1876, %1877
  store i32 %1878, ptr %818, align 4, !tbaa !15
  %1879 = icmp slt i32 %1848, %1824
  %1880 = call i32 @llvm.smin.i32(i32 %1848, i32 %1824)
  %1881 = select i1 %1879, i32 %1840, i32 %1823
  %1882 = icmp slt i32 %1858, %1880
  %1883 = call i32 @llvm.smin.i32(i32 %1858, i32 %1880)
  %1884 = select i1 %1882, i32 %1850, i32 %1881
  %1885 = icmp slt i32 %1868, %1883
  %1886 = call i32 @llvm.smin.i32(i32 %1868, i32 %1883)
  %1887 = select i1 %1885, i32 %1860, i32 %1884
  %1888 = icmp slt i32 %1878, %1886
  %1889 = call i32 @llvm.smin.i32(i32 %1878, i32 %1886)
  %1890 = select i1 %1888, i32 %1870, i32 %1887
  %1891 = select i1 %1888, i1 true, i1 %1885
  %1892 = select i1 %1891, i1 true, i1 %1882
  %1893 = select i1 %1892, i1 true, i1 %1879
  %1894 = select i1 %1893, i32 %1547, i32 %1822
  %1895 = add nsw i64 %1821, 4
  %1896 = icmp slt i64 %1895, %1819
  br i1 %1896, label %1820, label %1897, !llvm.loop !63

1897:                                             ; preds = %1820
  %1898 = trunc i64 %1895 to i32
  br label %1899

1899:                                             ; preds = %1897, %1806, %1797
  %1900 = phi i32 [ %1549, %1797 ], [ %1549, %1806 ], [ %1898, %1897 ]
  %1901 = phi i32 [ %1798, %1797 ], [ %1798, %1806 ], [ %1889, %1897 ]
  %1902 = phi i32 [ %1799, %1797 ], [ %1799, %1806 ], [ %1890, %1897 ]
  %1903 = phi i32 [ %1800, %1797 ], [ %1800, %1806 ], [ %1894, %1897 ]
  %1904 = icmp slt i32 %1900, %1801
  br i1 %1904, label %1907, label %1905

1905:                                             ; preds = %1899
  %1906 = sext i32 %1547 to i64
  br label %1977

1907:                                             ; preds = %1899
  %1908 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %1909 = shl i32 %1547, 2
  %1910 = sext i32 %1909 to i64
  %1911 = getelementptr inbounds i16, ptr %54, i64 %1910
  %1912 = sext i32 %1900 to i64
  %1913 = sext i32 %1548 to i64
  %1914 = sext i32 %34 to i64
  %1915 = sext i32 %1547 to i64
  %1916 = sext i32 %30 to i64
  %1917 = sext i32 %1801 to i64
  %1918 = getelementptr i8, ptr %26, i64 %1915
  %1919 = getelementptr i8, ptr %26, i64 %1915
  br label %1920

1920:                                             ; preds = %1907, %1971
  %1921 = phi i64 [ %1912, %1907 ], [ %1975, %1971 ]
  %1922 = phi i32 [ %1903, %1907 ], [ %1974, %1971 ]
  %1923 = phi i32 [ %1902, %1907 ], [ %1973, %1971 ]
  %1924 = phi i32 [ %1901, %1907 ], [ %1972, %1971 ]
  %1925 = add nsw i64 %1921, %1913
  %1926 = icmp sgt i64 %1925, %1914
  br i1 %1926, label %1946, label %1927

1927:                                             ; preds = %1920
  %1928 = load ptr, ptr %1908, align 8, !tbaa !42
  %1929 = mul nsw i64 %1925, %768
  %1930 = getelementptr i8, ptr %1918, i64 %1929
  %1931 = call i32 %1928(ptr noundef %24, i32 noundef 16, ptr noundef %1930, i32 noundef %20) #11
  %1932 = load i16, ptr %1911, align 2, !tbaa !45
  %1933 = zext i16 %1932 to i32
  %1934 = trunc i64 %1925 to i32
  %1935 = shl i32 %1934, 2
  %1936 = sext i32 %1935 to i64
  %1937 = getelementptr inbounds i16, ptr %59, i64 %1936
  %1938 = load i16, ptr %1937, align 2, !tbaa !45
  %1939 = zext i16 %1938 to i32
  %1940 = add i32 %1931, %1933
  %1941 = add i32 %1940, %1939
  %1942 = icmp slt i32 %1941, %1924
  %1943 = call i32 @llvm.smin.i32(i32 %1941, i32 %1924)
  %1944 = select i1 %1942, i32 %1934, i32 %1923
  %1945 = select i1 %1942, i32 %1547, i32 %1922
  br label %1946

1946:                                             ; preds = %1927, %1920
  %1947 = phi i32 [ %1943, %1927 ], [ %1924, %1920 ]
  %1948 = phi i32 [ %1944, %1927 ], [ %1923, %1920 ]
  %1949 = phi i32 [ %1945, %1927 ], [ %1922, %1920 ]
  %1950 = sub nsw i64 %1913, %1921
  %1951 = icmp slt i64 %1950, %1916
  br i1 %1951, label %1971, label %1952

1952:                                             ; preds = %1946
  %1953 = load ptr, ptr %1908, align 8, !tbaa !42
  %1954 = mul nsw i64 %1950, %768
  %1955 = getelementptr i8, ptr %1919, i64 %1954
  %1956 = call i32 %1953(ptr noundef %24, i32 noundef 16, ptr noundef %1955, i32 noundef %20) #11
  %1957 = load i16, ptr %1911, align 2, !tbaa !45
  %1958 = zext i16 %1957 to i32
  %1959 = trunc i64 %1950 to i32
  %1960 = shl i32 %1959, 2
  %1961 = sext i32 %1960 to i64
  %1962 = getelementptr inbounds i16, ptr %59, i64 %1961
  %1963 = load i16, ptr %1962, align 2, !tbaa !45
  %1964 = zext i16 %1963 to i32
  %1965 = add i32 %1956, %1958
  %1966 = add i32 %1965, %1964
  %1967 = icmp slt i32 %1966, %1947
  %1968 = call i32 @llvm.smin.i32(i32 %1966, i32 %1947)
  %1969 = select i1 %1967, i32 %1959, i32 %1948
  %1970 = select i1 %1967, i32 %1547, i32 %1949
  br label %1971

1971:                                             ; preds = %1946, %1952
  %1972 = phi i32 [ %1968, %1952 ], [ %1947, %1946 ]
  %1973 = phi i32 [ %1969, %1952 ], [ %1948, %1946 ]
  %1974 = phi i32 [ %1970, %1952 ], [ %1949, %1946 ]
  %1975 = add nsw i64 %1921, 2
  %1976 = icmp slt i64 %1975, %1917
  br i1 %1976, label %1920, label %1977, !llvm.loop !64

1977:                                             ; preds = %1971, %1905
  %1978 = phi i64 [ %1906, %1905 ], [ %1915, %1971 ]
  %1979 = phi i32 [ %1901, %1905 ], [ %1972, %1971 ]
  %1980 = phi i32 [ %1902, %1905 ], [ %1973, %1971 ]
  %1981 = phi i32 [ %1903, %1905 ], [ %1974, %1971 ]
  %1982 = getelementptr inbounds i8, ptr %26, i64 %1978
  %1983 = mul nsw i32 %1548, %20
  %1984 = sext i32 %1983 to i64
  %1985 = getelementptr inbounds i8, ptr %1982, i64 %1984
  %1986 = load ptr, ptr %763, align 8, !tbaa !42
  %1987 = getelementptr inbounds i8, ptr %1985, i64 -2
  %1988 = mul nsw i32 %20, -2
  %1989 = sext i32 %1988 to i64
  %1990 = getelementptr inbounds i8, ptr %1987, i64 %1989
  %1991 = shl nsw i32 %20, 1
  %1992 = sext i32 %1991 to i64
  %1993 = getelementptr inbounds i8, ptr %1987, i64 %1992
  %1994 = getelementptr inbounds i8, ptr %1985, i64 2
  %1995 = getelementptr inbounds i8, ptr %1994, i64 %1989
  %1996 = getelementptr inbounds i8, ptr %1994, i64 %1992
  call void %1986(ptr noundef %24, ptr noundef nonnull %1990, ptr noundef nonnull %1993, ptr noundef nonnull %1995, ptr noundef nonnull %1996, i32 noundef %20, ptr noundef nonnull %7) #11
  %1997 = add nsw i32 %1547, -2
  %1998 = shl i32 %1997, 2
  %1999 = sext i32 %1998 to i64
  %2000 = getelementptr inbounds i16, ptr %54, i64 %1999
  %2001 = load i16, ptr %2000, align 2, !tbaa !45
  %2002 = zext i16 %2001 to i32
  %2003 = add nsw i32 %1548, -2
  %2004 = shl i32 %2003, 2
  %2005 = sext i32 %2004 to i64
  %2006 = getelementptr inbounds i16, ptr %59, i64 %2005
  %2007 = load i16, ptr %2006, align 2, !tbaa !45
  %2008 = zext i16 %2007 to i32
  %2009 = add nuw nsw i32 %2008, %2002
  %2010 = load i32, ptr %7, align 16, !tbaa !15
  %2011 = add nsw i32 %2009, %2010
  store i32 %2011, ptr %7, align 16, !tbaa !15
  %2012 = add nsw i32 %1548, 2
  %2013 = shl i32 %2012, 2
  %2014 = sext i32 %2013 to i64
  %2015 = getelementptr inbounds i16, ptr %59, i64 %2014
  %2016 = load i16, ptr %2015, align 2, !tbaa !45
  %2017 = zext i16 %2016 to i32
  %2018 = add nuw nsw i32 %2017, %2002
  %2019 = load i32, ptr %793, align 4, !tbaa !15
  %2020 = add nsw i32 %2018, %2019
  store i32 %2020, ptr %793, align 4, !tbaa !15
  %2021 = add nsw i32 %1547, 2
  %2022 = shl i32 %2021, 2
  %2023 = sext i32 %2022 to i64
  %2024 = getelementptr inbounds i16, ptr %54, i64 %2023
  %2025 = load i16, ptr %2024, align 2, !tbaa !45
  %2026 = zext i16 %2025 to i32
  %2027 = add nuw nsw i32 %2026, %2008
  %2028 = load i32, ptr %808, align 8, !tbaa !15
  %2029 = add nsw i32 %2027, %2028
  store i32 %2029, ptr %808, align 8, !tbaa !15
  %2030 = add nuw nsw i32 %2026, %2017
  %2031 = load i32, ptr %818, align 4, !tbaa !15
  %2032 = add nsw i32 %2030, %2031
  store i32 %2032, ptr %818, align 4, !tbaa !15
  %2033 = icmp slt i32 %2011, %1979
  %2034 = call i32 @llvm.smin.i32(i32 %2011, i32 %1979)
  %2035 = select i1 %2033, i32 %2003, i32 %1980
  %2036 = icmp slt i32 %2020, %2034
  %2037 = call i32 @llvm.smin.i32(i32 %2020, i32 %2034)
  %2038 = select i1 %2036, i32 %2012, i32 %2035
  %2039 = select i1 %2036, i1 true, i1 %2033
  %2040 = select i1 %2039, i32 %1997, i32 %1981
  %2041 = icmp slt i32 %2029, %2037
  %2042 = call i32 @llvm.smin.i32(i32 %2029, i32 %2037)
  %2043 = select i1 %2041, i32 %2003, i32 %2038
  %2044 = icmp slt i32 %2032, %2042
  %2045 = call i32 @llvm.smin.i32(i32 %2032, i32 %2042)
  %2046 = select i1 %2044, i32 %2012, i32 %2043
  %2047 = select i1 %2044, i1 true, i1 %2041
  %2048 = select i1 %2047, i32 %2021, i32 %2040
  %2049 = shl nsw i32 %2048, 2
  %2050 = sext i32 %2049 to i64
  %2051 = getelementptr inbounds i16, ptr %54, i64 %2050
  %2052 = shl nsw i32 %2046, 2
  %2053 = sext i32 %2052 to i64
  %2054 = getelementptr inbounds i16, ptr %59, i64 %2053
  %2055 = sub nsw i32 %32, %2048
  %2056 = sub nsw i32 %2048, %28
  %2057 = sub nsw i32 %34, %2046
  %2058 = sub nsw i32 %2046, %30
  %2059 = call i32 @llvm.smin.i32(i32 %2057, i32 %2058)
  %2060 = call i32 @llvm.smin.i32(i32 %2056, i32 %2059)
  %2061 = call i32 @llvm.smin.i32(i32 %2055, i32 %2060)
  %2062 = sext i32 %2048 to i64
  %2063 = getelementptr inbounds i8, ptr %26, i64 %2062
  %2064 = getelementptr inbounds i32, ptr %7, i64 4
  %2065 = getelementptr inbounds i32, ptr %7, i64 8
  %2066 = getelementptr inbounds i32, ptr %7, i64 12
  %2067 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 5
  %2068 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 6
  %2069 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 7
  %2070 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 9
  %2071 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 10
  %2072 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 11
  %2073 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 13
  %2074 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 14
  %2075 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 15
  %2076 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %2077 = ashr i32 %1628, 2
  %2078 = sext i32 %2046 to i64
  %2079 = sext i32 %2061 to i64
  %2080 = call i32 @llvm.smax.i32(i32 %2077, i32 1)
  %2081 = add nuw nsw i32 %2080, 1
  %2082 = zext nneg i32 %2081 to i64
  br label %2083

2083:                                             ; preds = %2337, %1977
  %2084 = phi i64 [ %2341, %2337 ], [ 1, %1977 ]
  %2085 = phi i32 [ %2338, %2337 ], [ %2045, %1977 ]
  %2086 = phi i32 [ %2339, %2337 ], [ %2046, %1977 ]
  %2087 = phi i32 [ %2340, %2337 ], [ %2048, %1977 ]
  %2088 = shl nsw i64 %2084, 2
  %2089 = icmp sgt i64 %2088, %2079
  br i1 %2089, label %2090, label %2144

2090:                                             ; preds = %2083
  %2091 = trunc i64 %2084 to i32
  br label %2092

2092:                                             ; preds = %2090, %2138
  %2093 = phi i64 [ 0, %2090 ], [ %2142, %2138 ]
  %2094 = phi i32 [ %2087, %2090 ], [ %2141, %2138 ]
  %2095 = phi i32 [ %2086, %2090 ], [ %2140, %2138 ]
  %2096 = phi i32 [ %2085, %2090 ], [ %2139, %2138 ]
  %2097 = getelementptr inbounds [16 x [2 x i8]], ptr @x264_me_search_ref.hex4, i64 0, i64 %2093
  %2098 = load i8, ptr %2097, align 2, !tbaa !52
  %2099 = sext i8 %2098 to i32
  %2100 = mul nsw i32 %2091, %2099
  %2101 = add nsw i32 %2100, %2048
  %2102 = getelementptr inbounds [16 x [2 x i8]], ptr @x264_me_search_ref.hex4, i64 0, i64 %2093, i64 1
  %2103 = load i8, ptr %2102, align 1, !tbaa !52
  %2104 = sext i8 %2103 to i32
  %2105 = mul nsw i32 %2091, %2104
  %2106 = add nsw i32 %2105, %2046
  %2107 = shl i32 %2101, 16
  %2108 = and i32 %2106, 32767
  %2109 = or disjoint i32 %2108, %2107
  %2110 = add i32 %2109, %42
  %2111 = sub i32 %46, %2109
  %2112 = or i32 %2110, %2111
  %2113 = and i32 %2112, -2147467264
  %2114 = icmp eq i32 %2113, 0
  br i1 %2114, label %2115, label %2138

2115:                                             ; preds = %2092
  %2116 = load ptr, ptr %2076, align 8, !tbaa !42
  %2117 = mul nsw i32 %2106, %20
  %2118 = add nsw i32 %2117, %2101
  %2119 = sext i32 %2118 to i64
  %2120 = getelementptr inbounds i8, ptr %26, i64 %2119
  %2121 = call i32 %2116(ptr noundef %24, i32 noundef 16, ptr noundef %2120, i32 noundef %20) #11
  %2122 = shl i32 %2101, 2
  %2123 = sext i32 %2122 to i64
  %2124 = getelementptr inbounds i16, ptr %54, i64 %2123
  %2125 = load i16, ptr %2124, align 2, !tbaa !45
  %2126 = zext i16 %2125 to i32
  %2127 = shl i32 %2106, 2
  %2128 = sext i32 %2127 to i64
  %2129 = getelementptr inbounds i16, ptr %59, i64 %2128
  %2130 = load i16, ptr %2129, align 2, !tbaa !45
  %2131 = zext i16 %2130 to i32
  %2132 = add i32 %2121, %2126
  %2133 = add i32 %2132, %2131
  %2134 = icmp slt i32 %2133, %2096
  %2135 = call i32 @llvm.smin.i32(i32 %2133, i32 %2096)
  %2136 = select i1 %2134, i32 %2106, i32 %2095
  %2137 = select i1 %2134, i32 %2101, i32 %2094
  br label %2138

2138:                                             ; preds = %2115, %2092
  %2139 = phi i32 [ %2096, %2092 ], [ %2135, %2115 ]
  %2140 = phi i32 [ %2095, %2092 ], [ %2136, %2115 ]
  %2141 = phi i32 [ %2094, %2092 ], [ %2137, %2115 ]
  %2142 = add nuw nsw i64 %2093, 1
  %2143 = icmp eq i64 %2142, 16
  br i1 %2143, label %2337, label %2092, !llvm.loop !65

2144:                                             ; preds = %2083
  %2145 = sub nsw i64 %2078, %2088
  %2146 = mul nsw i64 %2145, %768
  %2147 = getelementptr inbounds i8, ptr %2063, i64 %2146
  %2148 = mul nsw i64 %2084, %768
  %2149 = load ptr, ptr %763, align 8, !tbaa !42
  %2150 = trunc i64 %2148 to i32
  %2151 = shl nsw i32 %2150, 3
  %2152 = sext i32 %2151 to i64
  %2153 = getelementptr inbounds i8, ptr %2147, i64 %2152
  %2154 = shl nuw nsw i64 %2084, 1
  %2155 = sub nsw i64 0, %2154
  %2156 = getelementptr inbounds i8, ptr %2147, i64 %2155
  %2157 = getelementptr inbounds i8, ptr %2156, i64 %2148
  %2158 = getelementptr inbounds i8, ptr %2147, i64 %2154
  %2159 = getelementptr inbounds i8, ptr %2158, i64 %2148
  call void %2149(ptr noundef %24, ptr noundef %2147, ptr noundef %2153, ptr noundef nonnull %2157, ptr noundef nonnull %2159, i32 noundef %20, ptr noundef nonnull %7) #11
  %2160 = shl nsw i32 %2150, 1
  %2161 = sext i32 %2160 to i64
  %2162 = getelementptr inbounds i8, ptr %2147, i64 %2161
  %2163 = load ptr, ptr %763, align 8, !tbaa !42
  %2164 = sub nsw i64 0, %2088
  %2165 = getelementptr inbounds i8, ptr %2162, i64 %2164
  %2166 = getelementptr inbounds i8, ptr %2162, i64 %2088
  %2167 = getelementptr inbounds i8, ptr %2165, i64 %2148
  %2168 = getelementptr inbounds i8, ptr %2166, i64 %2148
  call void %2163(ptr noundef %24, ptr noundef nonnull %2165, ptr noundef nonnull %2166, ptr noundef nonnull %2167, ptr noundef nonnull %2168, i32 noundef %20, ptr noundef nonnull %2064) #11
  %2169 = getelementptr inbounds i8, ptr %2162, i64 %2161
  %2170 = load ptr, ptr %763, align 8, !tbaa !42
  %2171 = getelementptr inbounds i8, ptr %2169, i64 %2164
  %2172 = getelementptr inbounds i8, ptr %2169, i64 %2088
  %2173 = getelementptr inbounds i8, ptr %2171, i64 %2148
  %2174 = getelementptr inbounds i8, ptr %2172, i64 %2148
  call void %2170(ptr noundef %24, ptr noundef nonnull %2171, ptr noundef nonnull %2172, ptr noundef nonnull %2173, ptr noundef nonnull %2174, i32 noundef %20, ptr noundef nonnull %2065) #11
  %2175 = getelementptr inbounds i8, ptr %2169, i64 %2161
  %2176 = load ptr, ptr %763, align 8, !tbaa !42
  %2177 = getelementptr inbounds i8, ptr %2175, i64 %2164
  %2178 = getelementptr inbounds i8, ptr %2175, i64 %2088
  %2179 = getelementptr inbounds i8, ptr %2175, i64 %2155
  %2180 = getelementptr inbounds i8, ptr %2179, i64 %2148
  %2181 = getelementptr inbounds i8, ptr %2175, i64 %2154
  %2182 = getelementptr inbounds i8, ptr %2181, i64 %2148
  call void %2176(ptr noundef %24, ptr noundef nonnull %2177, ptr noundef nonnull %2178, ptr noundef nonnull %2180, ptr noundef nonnull %2182, i32 noundef %20, ptr noundef nonnull %2066) #11
  %2183 = load i16, ptr %2051, align 2, !tbaa !45
  %2184 = zext i16 %2183 to i32
  %2185 = mul nsw i64 %2084, -16
  %2186 = getelementptr inbounds i16, ptr %2054, i64 %2185
  %2187 = load i16, ptr %2186, align 2, !tbaa !45
  %2188 = zext i16 %2187 to i32
  %2189 = add nuw nsw i32 %2188, %2184
  %2190 = load i32, ptr %7, align 16, !tbaa !15
  %2191 = add nsw i32 %2189, %2190
  store i32 %2191, ptr %7, align 16, !tbaa !15
  %2192 = shl i64 %2084, 4
  %2193 = and i64 %2192, 4294967280
  %2194 = getelementptr inbounds i16, ptr %2054, i64 %2193
  %2195 = load i16, ptr %2194, align 2, !tbaa !45
  %2196 = zext i16 %2195 to i32
  %2197 = add nuw nsw i32 %2196, %2184
  %2198 = load i32, ptr %793, align 4, !tbaa !15
  %2199 = add nsw i32 %2197, %2198
  store i32 %2199, ptr %793, align 4, !tbaa !15
  %2200 = mul nsw i64 %2084, -8
  %2201 = getelementptr inbounds i16, ptr %2051, i64 %2200
  %2202 = load i16, ptr %2201, align 2, !tbaa !45
  %2203 = zext i16 %2202 to i32
  %2204 = mul nsw i64 %2084, -12
  %2205 = getelementptr inbounds i16, ptr %2054, i64 %2204
  %2206 = load i16, ptr %2205, align 2, !tbaa !45
  %2207 = zext i16 %2206 to i32
  %2208 = add nuw nsw i32 %2207, %2203
  %2209 = load i32, ptr %808, align 8, !tbaa !15
  %2210 = add nsw i32 %2208, %2209
  store i32 %2210, ptr %808, align 8, !tbaa !15
  %2211 = shl nsw i64 %2084, 3
  %2212 = getelementptr inbounds i16, ptr %2051, i64 %2211
  %2213 = load i16, ptr %2212, align 2, !tbaa !45
  %2214 = zext i16 %2213 to i32
  %2215 = add nuw nsw i32 %2214, %2207
  %2216 = load i32, ptr %818, align 4, !tbaa !15
  %2217 = add nsw i32 %2215, %2216
  store i32 %2217, ptr %818, align 4, !tbaa !15
  %2218 = getelementptr inbounds i16, ptr %2051, i64 %2185
  %2219 = load i16, ptr %2218, align 2, !tbaa !45
  %2220 = zext i16 %2219 to i32
  %2221 = getelementptr inbounds i16, ptr %2054, i64 %2200
  %2222 = load i16, ptr %2221, align 2, !tbaa !45
  %2223 = zext i16 %2222 to i32
  %2224 = add nuw nsw i32 %2223, %2220
  %2225 = load i32, ptr %2064, align 16, !tbaa !15
  %2226 = add nsw i32 %2224, %2225
  store i32 %2226, ptr %2064, align 16, !tbaa !15
  %2227 = getelementptr inbounds i16, ptr %2051, i64 %2193
  %2228 = load i16, ptr %2227, align 2, !tbaa !45
  %2229 = zext i16 %2228 to i32
  %2230 = add nuw nsw i32 %2229, %2223
  %2231 = load i32, ptr %2067, align 4, !tbaa !15
  %2232 = add nsw i32 %2230, %2231
  store i32 %2232, ptr %2067, align 4, !tbaa !15
  %2233 = mul nsw i64 %2084, -4
  %2234 = getelementptr inbounds i16, ptr %2054, i64 %2233
  %2235 = load i16, ptr %2234, align 2, !tbaa !45
  %2236 = zext i16 %2235 to i32
  %2237 = add nuw nsw i32 %2236, %2220
  %2238 = load i32, ptr %2068, align 8, !tbaa !15
  %2239 = add nsw i32 %2237, %2238
  store i32 %2239, ptr %2068, align 8, !tbaa !15
  %2240 = add nuw nsw i32 %2236, %2229
  %2241 = load i32, ptr %2069, align 4, !tbaa !15
  %2242 = add nsw i32 %2240, %2241
  store i32 %2242, ptr %2069, align 4, !tbaa !15
  %2243 = load i16, ptr %2054, align 2, !tbaa !45
  %2244 = zext i16 %2243 to i32
  %2245 = add nuw nsw i32 %2244, %2220
  %2246 = load i32, ptr %2065, align 16, !tbaa !15
  %2247 = add nsw i32 %2245, %2246
  store i32 %2247, ptr %2065, align 16, !tbaa !15
  %2248 = add nuw nsw i32 %2244, %2229
  %2249 = load i32, ptr %2070, align 4, !tbaa !15
  %2250 = add nsw i32 %2248, %2249
  store i32 %2250, ptr %2070, align 4, !tbaa !15
  %2251 = getelementptr inbounds i16, ptr %2054, i64 %2088
  %2252 = load i16, ptr %2251, align 2, !tbaa !45
  %2253 = zext i16 %2252 to i32
  %2254 = add nuw nsw i32 %2253, %2220
  %2255 = load i32, ptr %2071, align 8, !tbaa !15
  %2256 = add nsw i32 %2254, %2255
  store i32 %2256, ptr %2071, align 8, !tbaa !15
  %2257 = add nuw nsw i32 %2253, %2229
  %2258 = load i32, ptr %2072, align 4, !tbaa !15
  %2259 = add nsw i32 %2257, %2258
  store i32 %2259, ptr %2072, align 4, !tbaa !15
  %2260 = getelementptr inbounds i16, ptr %2054, i64 %2211
  %2261 = load i16, ptr %2260, align 2, !tbaa !45
  %2262 = zext i16 %2261 to i32
  %2263 = add nuw nsw i32 %2262, %2220
  %2264 = load i32, ptr %2066, align 16, !tbaa !15
  %2265 = add nsw i32 %2263, %2264
  store i32 %2265, ptr %2066, align 16, !tbaa !15
  %2266 = add nuw nsw i32 %2262, %2229
  %2267 = load i32, ptr %2073, align 4, !tbaa !15
  %2268 = add nsw i32 %2266, %2267
  store i32 %2268, ptr %2073, align 4, !tbaa !15
  %2269 = mul nuw nsw i64 %2084, 12
  %2270 = getelementptr inbounds i16, ptr %2054, i64 %2269
  %2271 = load i16, ptr %2270, align 2, !tbaa !45
  %2272 = zext i16 %2271 to i32
  %2273 = add nuw nsw i32 %2272, %2203
  %2274 = load i32, ptr %2074, align 8, !tbaa !15
  %2275 = add nsw i32 %2273, %2274
  store i32 %2275, ptr %2074, align 8, !tbaa !15
  %2276 = add nuw nsw i32 %2272, %2214
  %2277 = load i32, ptr %2075, align 4, !tbaa !15
  %2278 = add nsw i32 %2276, %2277
  store i32 %2278, ptr %2075, align 4, !tbaa !15
  %2279 = icmp slt i32 %2191, %2085
  %2280 = select i1 %2279, i32 12, i32 0
  %2281 = call i32 @llvm.smin.i32(i32 %2191, i32 %2085)
  %2282 = icmp slt i32 %2199, %2281
  %2283 = select i1 %2282, i32 4, i32 %2280
  %2284 = call i32 @llvm.smin.i32(i32 %2199, i32 %2281)
  %2285 = icmp slt i32 %2210, %2284
  %2286 = select i1 %2285, i32 -19, i32 %2283
  %2287 = call i32 @llvm.smin.i32(i32 %2210, i32 %2284)
  %2288 = icmp slt i32 %2217, %2287
  %2289 = select i1 %2288, i32 45, i32 %2286
  %2290 = call i32 @llvm.smin.i32(i32 %2217, i32 %2287)
  %2291 = icmp slt i32 %2226, %2290
  %2292 = select i1 %2291, i32 -50, i32 %2289
  %2293 = call i32 @llvm.smin.i32(i32 %2226, i32 %2290)
  %2294 = icmp slt i32 %2232, %2293
  %2295 = select i1 %2294, i32 78, i32 %2292
  %2296 = call i32 @llvm.smin.i32(i32 %2232, i32 %2293)
  %2297 = icmp slt i32 %2239, %2296
  %2298 = select i1 %2297, i32 -49, i32 %2295
  %2299 = call i32 @llvm.smin.i32(i32 %2239, i32 %2296)
  %2300 = icmp slt i32 %2242, %2299
  %2301 = select i1 %2300, i32 79, i32 %2298
  %2302 = call i32 @llvm.smin.i32(i32 %2242, i32 %2299)
  %2303 = icmp slt i32 %2247, %2302
  %2304 = select i1 %2303, i32 -64, i32 %2301
  %2305 = call i32 @llvm.smin.i32(i32 %2247, i32 %2302)
  %2306 = icmp slt i32 %2250, %2305
  %2307 = select i1 %2306, i32 64, i32 %2304
  %2308 = call i32 @llvm.smin.i32(i32 %2250, i32 %2305)
  %2309 = icmp slt i32 %2256, %2308
  %2310 = select i1 %2309, i32 -63, i32 %2307
  %2311 = call i32 @llvm.smin.i32(i32 %2256, i32 %2308)
  %2312 = icmp slt i32 %2259, %2311
  %2313 = select i1 %2312, i32 65, i32 %2310
  %2314 = call i32 @llvm.smin.i32(i32 %2259, i32 %2311)
  %2315 = icmp slt i32 %2265, %2314
  %2316 = select i1 %2315, i32 -62, i32 %2313
  %2317 = call i32 @llvm.smin.i32(i32 %2265, i32 %2314)
  %2318 = icmp slt i32 %2268, %2317
  %2319 = select i1 %2318, i32 66, i32 %2316
  %2320 = call i32 @llvm.smin.i32(i32 %2268, i32 %2317)
  %2321 = icmp slt i32 %2275, %2320
  %2322 = select i1 %2321, i32 -29, i32 %2319
  %2323 = call i32 @llvm.smin.i32(i32 %2275, i32 %2320)
  %2324 = icmp slt i32 %2278, %2323
  %2325 = select i1 %2324, i32 35, i32 %2322
  %2326 = call i32 @llvm.smin.i32(i32 %2278, i32 %2323)
  %2327 = icmp eq i32 %2325, 0
  br i1 %2327, label %2337, label %2328

2328:                                             ; preds = %2144
  %2329 = trunc i64 %2084 to i32
  %2330 = ashr i32 %2325, 4
  %2331 = mul nsw i32 %2330, %2329
  %2332 = add nsw i32 %2331, %2048
  %2333 = shl i32 %2325, 28
  %2334 = ashr exact i32 %2333, 28
  %2335 = mul nsw i32 %2334, %2329
  %2336 = add nsw i32 %2335, %2046
  br label %2337

2337:                                             ; preds = %2138, %2144, %2328
  %2338 = phi i32 [ %2326, %2328 ], [ %2326, %2144 ], [ %2139, %2138 ]
  %2339 = phi i32 [ %2336, %2328 ], [ %2086, %2144 ], [ %2140, %2138 ]
  %2340 = phi i32 [ %2332, %2328 ], [ %2087, %2144 ], [ %2141, %2138 ]
  %2341 = add nuw nsw i64 %2084, 1
  %2342 = icmp eq i64 %2341, %2082
  br i1 %2342, label %2343, label %2083, !llvm.loop !66

2343:                                             ; preds = %2337
  %2344 = icmp sle i32 %2339, %34
  %2345 = icmp sge i32 %2339, %30
  %2346 = select i1 %2344, i1 %2345, i1 false
  %2347 = icmp sle i32 %2340, %32
  %2348 = select i1 %2346, i1 %2347, i1 false
  %2349 = icmp sge i32 %2340, %28
  %2350 = select i1 %2348, i1 %2349, i1 false
  br i1 %2350, label %379, label %2887

2351:                                             ; preds = %269, %269
  %2352 = sub nsw i32 %272, %22
  %2353 = call i32 @llvm.smax.i32(i32 %2352, i32 %28)
  %2354 = sub i32 %271, %22
  %2355 = call i32 @llvm.smax.i32(i32 %2354, i32 %30)
  %2356 = add nsw i32 %272, %22
  %2357 = call i32 @llvm.smin.i32(i32 %2356, i32 %32)
  %2358 = add i32 %271, %22
  %2359 = call i32 @llvm.smin.i32(i32 %2358, i32 %34)
  %2360 = sub i32 %2357, %2353
  %2361 = add i32 %2360, 3
  %2362 = and i32 %2361, -4
  %2363 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 8
  %2364 = load ptr, ptr %2363, align 16, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #9
  %2365 = icmp sgt i32 %13, 3
  %2366 = select i1 %2365, i64 6, i64 3
  %2367 = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %2366
  %2368 = load i32, ptr %2367, align 8, !tbaa !12
  %2369 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 61
  %2370 = load ptr, ptr %2369, align 8, !tbaa !68
  %2371 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 68
  %2372 = load i32, ptr %2371, align 16, !tbaa !69
  %2373 = sext i32 %2372 to i64
  %2374 = getelementptr inbounds [52 x i8], ptr @x264_lambda_tab, i64 0, i64 %2373
  %2375 = load i8, ptr %2374, align 1, !tbaa !52
  %2376 = zext i8 %2375 to i64
  %2377 = load i16, ptr %49, align 16, !tbaa !45
  %2378 = sext i16 %2377 to i32
  %2379 = sub nsw i32 0, %2378
  %2380 = and i32 %2379, 3
  %2381 = zext nneg i32 %2380 to i64
  %2382 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 38, i64 %2376, i64 %2381
  %2383 = load ptr, ptr %2382, align 8, !tbaa !42
  %2384 = ashr i32 %2379, 2
  %2385 = sext i32 %2384 to i64
  %2386 = getelementptr inbounds i16, ptr %2383, i64 %2385
  %2387 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69
  %2388 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 17, i64 %2366
  %2389 = load ptr, ptr %2388, align 8, !tbaa !42
  %2390 = sext i32 %2368 to i64
  %2391 = getelementptr inbounds i8, ptr %24, i64 %2390
  %2392 = shl nsw i32 %2368, 4
  %2393 = sext i32 %2392 to i64
  %2394 = getelementptr inbounds i8, ptr %24, i64 %2393
  %2395 = getelementptr inbounds i8, ptr %2391, i64 %2393
  call void %2389(ptr noundef nonnull @x264_me_search_ref.zero, ptr noundef %24, ptr noundef %2391, ptr noundef %2394, ptr noundef %2395, i32 noundef 16, ptr noundef nonnull %11) #11
  %2396 = icmp eq i32 %2368, 4
  br i1 %2396, label %2397, label %2406

2397:                                             ; preds = %2351
  %2398 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %2399 = load ptr, ptr %2398, align 8, !tbaa !70
  %2400 = getelementptr inbounds %struct.x264_frame, ptr %2399, i64 0, i32 26
  %2401 = load i32, ptr %2400, align 16, !tbaa !15
  %2402 = add nsw i32 %2401, 64
  %2403 = mul nsw i32 %2402, %20
  %2404 = sext i32 %2403 to i64
  %2405 = getelementptr inbounds i16, ptr %2364, i64 %2404
  br label %2406

2406:                                             ; preds = %2397, %2351
  %2407 = phi ptr [ %2405, %2397 ], [ %2364, %2351 ]
  switch i32 %13, label %2410 [
    i32 5, label %2408
    i32 2, label %2408
    i32 0, label %2408
  ]

2408:                                             ; preds = %2406, %2406, %2406
  %2409 = mul nsw i32 %2368, %20
  br label %2410

2410:                                             ; preds = %2406, %2408
  %2411 = phi i32 [ %2409, %2408 ], [ %2368, %2406 ]
  switch i32 %13, label %2416 [
    i32 5, label %2412
    i32 2, label %2412
  ]

2412:                                             ; preds = %2410, %2410
  %2413 = getelementptr inbounds [4 x i32], ptr %11, i64 0, i64 2
  %2414 = load i32, ptr %2413, align 8, !tbaa !15
  %2415 = getelementptr inbounds [4 x i32], ptr %11, i64 0, i64 1
  store i32 %2414, ptr %2415, align 4, !tbaa !15
  br label %2416

2416:                                             ; preds = %2410, %2412
  %2417 = load i32, ptr %273, align 4, !tbaa !54
  %2418 = icmp eq i32 %2417, 4
  br i1 %2418, label %2436, label %2419

2419:                                             ; preds = %2416
  %2420 = icmp sgt i32 %2355, %2359
  br i1 %2420, label %2883, label %2421

2421:                                             ; preds = %2419
  %2422 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 20, i64 %14
  %2423 = sext i32 %2353 to i64
  %2424 = getelementptr inbounds i16, ptr %2407, i64 %2423
  %2425 = getelementptr inbounds i16, ptr %2386, i64 %2423
  %2426 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 8, i64 %14
  %2427 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 1
  %2428 = getelementptr inbounds [16 x i32], ptr %7, i64 0, i64 2
  %2429 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %2430 = call i32 @llvm.smax.i32(i32 %30, i32 %2354)
  %2431 = sext i32 %2430 to i64
  %2432 = sext i32 %20 to i64
  %2433 = add i32 %2359, %2430
  %2434 = add i32 %2433, 1
  %2435 = sub i32 %2434, %2355
  br label %2743

2436:                                             ; preds = %2416
  %2437 = add nsw i32 %2362, 15
  %2438 = and i32 %2437, -16
  %2439 = sext i32 %2438 to i64
  %2440 = getelementptr inbounds i16, ptr %2370, i64 %2439
  %2441 = icmp slt i32 %22, 17
  %2442 = icmp slt i32 %22, 25
  %2443 = select i1 %2442, i32 11, i32 12
  %2444 = select i1 %2441, i32 10, i32 %2443
  %2445 = getelementptr inbounds [7 x ptr], ptr %2387, i64 0, i64 %14
  %2446 = load ptr, ptr %2445, align 8, !tbaa !42
  %2447 = mul nsw i32 %271, %20
  %2448 = sext i32 %2447 to i64
  %2449 = getelementptr inbounds i8, ptr %26, i64 %2448
  %2450 = sext i32 %272 to i64
  %2451 = getelementptr inbounds i8, ptr %2449, i64 %2450
  %2452 = call i32 %2446(ptr noundef %24, i32 noundef 16, ptr noundef %2451, i32 noundef %20) #11
  %2453 = shl nsw i32 %272, 2
  %2454 = sext i32 %2453 to i64
  %2455 = getelementptr inbounds i16, ptr %54, i64 %2454
  %2456 = load i16, ptr %2455, align 2, !tbaa !45
  %2457 = zext i16 %2456 to i32
  %2458 = shl nsw i32 %271, 2
  %2459 = sext i32 %2458 to i64
  %2460 = getelementptr inbounds i16, ptr %59, i64 %2459
  %2461 = load i16, ptr %2460, align 2, !tbaa !45
  %2462 = zext i16 %2461 to i32
  %2463 = add i32 %2452, %2457
  %2464 = add i32 %2463, %2462
  %2465 = icmp sgt i32 %2355, %2359
  br i1 %2465, label %2480, label %2466

2466:                                             ; preds = %2436
  %2467 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 20, i64 %14
  %2468 = sext i32 %2353 to i64
  %2469 = getelementptr inbounds i16, ptr %2407, i64 %2468
  %2470 = getelementptr inbounds i16, ptr %2386, i64 %2468
  %2471 = getelementptr inbounds i8, ptr %26, i64 %2468
  %2472 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 16, i64 %14
  %2473 = trunc i32 %2353 to i16
  %2474 = call i32 @llvm.smax.i32(i32 %30, i32 %2354)
  %2475 = sext i32 %2474 to i64
  %2476 = sext i32 %20 to i64
  %2477 = add i32 %2359, %2474
  %2478 = add i32 %2477, 1
  %2479 = sub i32 %2478, %2355
  br label %2490

2480:                                             ; preds = %2615, %2436
  %2481 = phi i32 [ 0, %2436 ], [ %2616, %2615 ]
  %2482 = phi i32 [ %2464, %2436 ], [ %2617, %2615 ]
  %2483 = ashr i32 %22, 1
  %2484 = mul nsw i32 %2482, %2444
  %2485 = ashr i32 %2484, 3
  %2486 = and i32 %22, -2
  %2487 = icmp sgt i32 %2481, %2486
  %2488 = icmp sgt i32 %2485, %2482
  %2489 = select i1 %2487, i1 %2488, i1 false
  br i1 %2489, label %2632, label %2626

2490:                                             ; preds = %2466, %2615
  %2491 = phi i64 [ %2475, %2466 ], [ %2618, %2615 ]
  %2492 = phi i32 [ %2464, %2466 ], [ %2617, %2615 ]
  %2493 = phi i32 [ 0, %2466 ], [ %2616, %2615 ]
  %2494 = trunc i64 %2491 to i32
  %2495 = shl i32 %2494, 2
  %2496 = sext i32 %2495 to i64
  %2497 = getelementptr inbounds i16, ptr %59, i64 %2496
  %2498 = load i16, ptr %2497, align 2, !tbaa !45
  %2499 = zext i16 %2498 to i32
  %2500 = icmp sgt i32 %2492, %2499
  br i1 %2500, label %2501, label %2615

2501:                                             ; preds = %2490
  %2502 = sub nsw i32 %2492, %2499
  %2503 = load ptr, ptr %2467, align 8, !tbaa !42
  %2504 = mul nsw i64 %2491, %2476
  %2505 = getelementptr inbounds i16, ptr %2469, i64 %2504
  %2506 = mul nsw i32 %2502, 17
  %2507 = sdiv i32 %2506, 16
  %2508 = call i32 %2503(ptr noundef nonnull %11, ptr noundef %2505, i32 noundef %2411, ptr noundef %2470, ptr noundef %2370, i32 noundef %2362, i32 noundef %2507) #11
  %2509 = add nsw i32 %2508, -2
  %2510 = icmp sgt i32 %2508, 2
  br i1 %2510, label %2511, label %2514

2511:                                             ; preds = %2501
  %2512 = getelementptr inbounds i8, ptr %2471, i64 %2504
  %2513 = trunc i64 %2491 to i16
  br label %2523

2514:                                             ; preds = %2541, %2501
  %2515 = phi i32 [ %2493, %2501 ], [ %2571, %2541 ]
  %2516 = phi i32 [ %2502, %2501 ], [ %2572, %2541 ]
  %2517 = phi i32 [ 0, %2501 ], [ %2543, %2541 ]
  %2518 = getelementptr i8, ptr %26, i64 %2504
  %2519 = icmp slt i32 %2517, %2508
  br i1 %2519, label %2520, label %2611

2520:                                             ; preds = %2514
  %2521 = trunc i64 %2491 to i16
  %2522 = zext i32 %2517 to i64
  br label %2575

2523:                                             ; preds = %2511, %2541
  %2524 = phi i64 [ 0, %2511 ], [ %2542, %2541 ]
  %2525 = phi i32 [ %2502, %2511 ], [ %2572, %2541 ]
  %2526 = phi i32 [ %2493, %2511 ], [ %2571, %2541 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #9
  %2527 = load ptr, ptr %2472, align 8, !tbaa !42
  %2528 = getelementptr inbounds i16, ptr %2370, i64 %2524
  %2529 = load i16, ptr %2528, align 2, !tbaa !45
  %2530 = sext i16 %2529 to i64
  %2531 = getelementptr inbounds i8, ptr %2512, i64 %2530
  %2532 = getelementptr i16, ptr %2528, i64 1
  %2533 = load i16, ptr %2532, align 2, !tbaa !45
  %2534 = sext i16 %2533 to i64
  %2535 = getelementptr inbounds i8, ptr %2512, i64 %2534
  %2536 = getelementptr i16, ptr %2528, i64 2
  %2537 = load i16, ptr %2536, align 2, !tbaa !45
  %2538 = sext i16 %2537 to i64
  %2539 = getelementptr inbounds i8, ptr %2512, i64 %2538
  call void %2527(ptr noundef %24, ptr noundef %2531, ptr noundef %2535, ptr noundef %2539, i32 noundef %20, ptr noundef nonnull %12) #11
  %2540 = getelementptr i16, ptr %2370, i64 %2524
  br label %2545

2541:                                             ; preds = %2570
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #9
  %2542 = add nuw i64 %2524, 3
  %2543 = trunc i64 %2542 to i32
  %2544 = icmp sgt i32 %2509, %2543
  br i1 %2544, label %2523, label %2514, !llvm.loop !71

2545:                                             ; preds = %2523, %2570
  %2546 = phi i64 [ 0, %2523 ], [ %2573, %2570 ]
  %2547 = phi i32 [ %2525, %2523 ], [ %2572, %2570 ]
  %2548 = phi i32 [ %2526, %2523 ], [ %2571, %2570 ]
  %2549 = getelementptr inbounds [3 x i32], ptr %12, i64 0, i64 %2546
  %2550 = load i32, ptr %2549, align 4, !tbaa !15
  %2551 = getelementptr i16, ptr %2540, i64 %2546
  %2552 = load i16, ptr %2551, align 2, !tbaa !45
  %2553 = sext i16 %2552 to i64
  %2554 = getelementptr inbounds i16, ptr %2386, i64 %2553
  %2555 = load i16, ptr %2554, align 2, !tbaa !45
  %2556 = zext i16 %2555 to i32
  %2557 = add nsw i32 %2550, %2556
  %2558 = mul nsw i32 %2547, %2444
  %2559 = ashr i32 %2558, 3
  %2560 = icmp slt i32 %2557, %2559
  br i1 %2560, label %2561, label %2570

2561:                                             ; preds = %2545
  %2562 = call i32 @llvm.smin.i32(i32 %2557, i32 %2547)
  %2563 = add nsw i32 %2557, %2499
  %2564 = sext i32 %2548 to i64
  %2565 = getelementptr inbounds %struct.mvsad_t, ptr %2440, i64 %2564
  store i32 %2563, ptr %2565, align 4, !tbaa !72
  %2566 = add i16 %2552, %2473
  %2567 = getelementptr inbounds %struct.mvsad_t, ptr %2440, i64 %2564, i32 1
  store i16 %2566, ptr %2567, align 4, !tbaa !45
  %2568 = getelementptr inbounds %struct.mvsad_t, ptr %2440, i64 %2564, i32 1, i64 1
  store i16 %2513, ptr %2568, align 2, !tbaa !45
  %2569 = add nsw i32 %2548, 1
  br label %2570

2570:                                             ; preds = %2561, %2545
  %2571 = phi i32 [ %2569, %2561 ], [ %2548, %2545 ]
  %2572 = phi i32 [ %2562, %2561 ], [ %2547, %2545 ]
  %2573 = add nuw nsw i64 %2546, 1
  %2574 = icmp eq i64 %2573, 3
  br i1 %2574, label %2541, label %2545, !llvm.loop !74

2575:                                             ; preds = %2520, %2605
  %2576 = phi i64 [ %2522, %2520 ], [ %2608, %2605 ]
  %2577 = phi i32 [ %2516, %2520 ], [ %2607, %2605 ]
  %2578 = phi i32 [ %2515, %2520 ], [ %2606, %2605 ]
  %2579 = getelementptr inbounds i16, ptr %2370, i64 %2576
  %2580 = load i16, ptr %2579, align 2, !tbaa !45
  %2581 = sext i16 %2580 to i32
  %2582 = add nsw i32 %2353, %2581
  %2583 = load ptr, ptr %2445, align 8, !tbaa !42
  %2584 = sext i32 %2582 to i64
  %2585 = getelementptr i8, ptr %2518, i64 %2584
  %2586 = call i32 %2583(ptr noundef %24, i32 noundef 16, ptr noundef %2585, i32 noundef %20) #11
  %2587 = load i16, ptr %2579, align 2, !tbaa !45
  %2588 = sext i16 %2587 to i64
  %2589 = getelementptr inbounds i16, ptr %2386, i64 %2588
  %2590 = load i16, ptr %2589, align 2, !tbaa !45
  %2591 = zext i16 %2590 to i32
  %2592 = add nsw i32 %2586, %2591
  %2593 = mul nsw i32 %2577, %2444
  %2594 = ashr i32 %2593, 3
  %2595 = icmp slt i32 %2592, %2594
  br i1 %2595, label %2596, label %2605

2596:                                             ; preds = %2575
  %2597 = call i32 @llvm.smin.i32(i32 %2592, i32 %2577)
  %2598 = add nsw i32 %2592, %2499
  %2599 = sext i32 %2578 to i64
  %2600 = getelementptr inbounds %struct.mvsad_t, ptr %2440, i64 %2599
  store i32 %2598, ptr %2600, align 4, !tbaa !72
  %2601 = trunc i32 %2582 to i16
  %2602 = getelementptr inbounds %struct.mvsad_t, ptr %2440, i64 %2599, i32 1
  store i16 %2601, ptr %2602, align 4, !tbaa !45
  %2603 = getelementptr inbounds %struct.mvsad_t, ptr %2440, i64 %2599, i32 1, i64 1
  store i16 %2521, ptr %2603, align 2, !tbaa !45
  %2604 = add nsw i32 %2578, 1
  br label %2605

2605:                                             ; preds = %2596, %2575
  %2606 = phi i32 [ %2604, %2596 ], [ %2578, %2575 ]
  %2607 = phi i32 [ %2597, %2596 ], [ %2577, %2575 ]
  %2608 = add nuw nsw i64 %2576, 1
  %2609 = trunc i64 %2608 to i32
  %2610 = icmp sgt i32 %2508, %2609
  br i1 %2610, label %2575, label %2611, !llvm.loop !75

2611:                                             ; preds = %2605, %2514
  %2612 = phi i32 [ %2515, %2514 ], [ %2606, %2605 ]
  %2613 = phi i32 [ %2516, %2514 ], [ %2607, %2605 ]
  %2614 = add nsw i32 %2613, %2499
  br label %2615

2615:                                             ; preds = %2490, %2611
  %2616 = phi i32 [ %2612, %2611 ], [ %2493, %2490 ]
  %2617 = phi i32 [ %2614, %2611 ], [ %2492, %2490 ]
  %2618 = add nsw i64 %2491, 1
  %2619 = trunc i64 %2618 to i32
  %2620 = icmp eq i32 %2479, %2619
  br i1 %2620, label %2480, label %2490, !llvm.loop !76

2621:                                             ; preds = %2645, %2656, %2650
  %2622 = phi i32 [ %2651, %2650 ], [ %2666, %2656 ], [ %2634, %2645 ]
  %2623 = icmp sgt i32 %2622, %2486
  %2624 = icmp sgt i32 %2636, %2482
  %2625 = select i1 %2623, i1 %2624, i1 false
  br i1 %2625, label %2632, label %2626, !llvm.loop !77

2626:                                             ; preds = %2621, %2480
  %2627 = phi i32 [ %2481, %2480 ], [ %2622, %2621 ]
  %2628 = icmp sgt i32 %2627, %2483
  br i1 %2628, label %2629, label %2677

2629:                                             ; preds = %2626
  %2630 = sext i32 %2627 to i64
  %2631 = sext i32 %2483 to i64
  br label %2670

2632:                                             ; preds = %2480, %2621
  %2633 = phi i32 [ %2636, %2621 ], [ %2485, %2480 ]
  %2634 = phi i32 [ %2622, %2621 ], [ %2481, %2480 ]
  %2635 = add nsw i32 %2633, %2482
  %2636 = ashr i32 %2635, 1
  %2637 = icmp sgt i32 %2634, 0
  br i1 %2637, label %2638, label %2650

2638:                                             ; preds = %2632
  %2639 = zext nneg i32 %2634 to i64
  br label %2640

2640:                                             ; preds = %2638, %2645
  %2641 = phi i64 [ 0, %2638 ], [ %2646, %2645 ]
  %2642 = getelementptr inbounds %struct.mvsad_t, ptr %2440, i64 %2641
  %2643 = load i32, ptr %2642, align 4, !tbaa !72
  %2644 = icmp sgt i32 %2643, %2636
  br i1 %2644, label %2648, label %2645

2645:                                             ; preds = %2640
  %2646 = add nuw nsw i64 %2641, 1
  %2647 = icmp eq i64 %2646, %2639
  br i1 %2647, label %2621, label %2640, !llvm.loop !78

2648:                                             ; preds = %2640
  %2649 = trunc i64 %2641 to i32
  br label %2650

2650:                                             ; preds = %2648, %2632
  %2651 = phi i32 [ 0, %2632 ], [ %2649, %2648 ]
  %2652 = icmp slt i32 %2651, %2634
  br i1 %2652, label %2653, label %2621

2653:                                             ; preds = %2650
  %2654 = xor i32 %2636, -1
  %2655 = zext i32 %2651 to i64
  br label %2656

2656:                                             ; preds = %2653, %2656
  %2657 = phi i64 [ %2655, %2653 ], [ %2667, %2656 ]
  %2658 = phi i32 [ %2651, %2653 ], [ %2666, %2656 ]
  %2659 = getelementptr inbounds %struct.mvsad_t, ptr %2440, i64 %2657
  %2660 = load i64, ptr %2659, align 8, !tbaa !52
  %2661 = sext i32 %2658 to i64
  %2662 = getelementptr inbounds %struct.mvsad_t, ptr %2440, i64 %2661
  store i64 %2660, ptr %2662, align 8, !tbaa !52
  %2663 = trunc i64 %2660 to i32
  %2664 = add i32 %2663, %2654
  %2665 = lshr i32 %2664, 31
  %2666 = add i32 %2665, %2658
  %2667 = add nuw nsw i64 %2657, 1
  %2668 = trunc i64 %2667 to i32
  %2669 = icmp sgt i32 %2634, %2668
  br i1 %2669, label %2656, label %2621, !llvm.loop !79

2670:                                             ; preds = %2629, %2683
  %2671 = phi i64 [ %2630, %2629 ], [ %2685, %2683 ]
  %2672 = icmp sgt i64 %2671, 1
  br i1 %2672, label %2673, label %2683

2673:                                             ; preds = %2670
  %2674 = and i64 %2671, 4294967295
  br label %2691

2675:                                             ; preds = %2683
  %2676 = trunc i64 %2685 to i32
  br label %2677

2677:                                             ; preds = %2675, %2626
  %2678 = phi i32 [ %2627, %2626 ], [ %2676, %2675 ]
  %2679 = icmp sgt i32 %2678, 0
  br i1 %2679, label %2680, label %2883

2680:                                             ; preds = %2677
  %2681 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %14
  %2682 = zext nneg i32 %2678 to i64
  br label %2704

2683:                                             ; preds = %2691, %2670
  %2684 = phi i32 [ 0, %2670 ], [ %2701, %2691 ]
  %2685 = add nsw i64 %2671, -1
  %2686 = getelementptr inbounds %struct.mvsad_t, ptr %2440, i64 %2685
  %2687 = load i64, ptr %2686, align 8, !tbaa !52
  %2688 = sext i32 %2684 to i64
  %2689 = getelementptr inbounds %struct.mvsad_t, ptr %2440, i64 %2688
  store i64 %2687, ptr %2689, align 8, !tbaa !52
  %2690 = icmp sgt i64 %2685, %2631
  br i1 %2690, label %2670, label %2675, !llvm.loop !80

2691:                                             ; preds = %2673, %2691
  %2692 = phi i64 [ 1, %2673 ], [ %2702, %2691 ]
  %2693 = phi i32 [ 0, %2673 ], [ %2701, %2691 ]
  %2694 = getelementptr inbounds %struct.mvsad_t, ptr %2440, i64 %2692
  %2695 = load i32, ptr %2694, align 4, !tbaa !72
  %2696 = sext i32 %2693 to i64
  %2697 = getelementptr inbounds %struct.mvsad_t, ptr %2440, i64 %2696
  %2698 = load i32, ptr %2697, align 4, !tbaa !72
  %2699 = icmp sgt i32 %2695, %2698
  %2700 = trunc i64 %2692 to i32
  %2701 = select i1 %2699, i32 %2700, i32 %2693
  %2702 = add nuw nsw i64 %2692, 1
  %2703 = icmp eq i64 %2702, %2674
  br i1 %2703, label %2683, label %2691, !llvm.loop !81

2704:                                             ; preds = %2680, %2704
  %2705 = phi i64 [ 0, %2680 ], [ %2741, %2704 ]
  %2706 = phi i32 [ %272, %2680 ], [ %2740, %2704 ]
  %2707 = phi i32 [ %271, %2680 ], [ %2739, %2704 ]
  %2708 = phi i32 [ %270, %2680 ], [ %2738, %2704 ]
  %2709 = load ptr, ptr %2681, align 8, !tbaa !42
  %2710 = getelementptr inbounds %struct.mvsad_t, ptr %2440, i64 %2705, i32 1
  %2711 = getelementptr inbounds %struct.mvsad_t, ptr %2440, i64 %2705, i32 1, i64 1
  %2712 = load i16, ptr %2711, align 2, !tbaa !45
  %2713 = sext i16 %2712 to i32
  %2714 = mul nsw i32 %20, %2713
  %2715 = load i16, ptr %2710, align 4, !tbaa !45
  %2716 = sext i16 %2715 to i32
  %2717 = add nsw i32 %2714, %2716
  %2718 = sext i32 %2717 to i64
  %2719 = getelementptr inbounds i8, ptr %26, i64 %2718
  %2720 = call i32 %2709(ptr noundef %24, i32 noundef 16, ptr noundef %2719, i32 noundef %20) #11
  %2721 = load i16, ptr %2710, align 4, !tbaa !45
  %2722 = sext i16 %2721 to i32
  %2723 = shl nsw i32 %2722, 2
  %2724 = sext i32 %2723 to i64
  %2725 = getelementptr inbounds i16, ptr %54, i64 %2724
  %2726 = load i16, ptr %2725, align 2, !tbaa !45
  %2727 = zext i16 %2726 to i32
  %2728 = load i16, ptr %2711, align 2, !tbaa !45
  %2729 = sext i16 %2728 to i32
  %2730 = shl nsw i32 %2729, 2
  %2731 = sext i32 %2730 to i64
  %2732 = getelementptr inbounds i16, ptr %59, i64 %2731
  %2733 = load i16, ptr %2732, align 2, !tbaa !45
  %2734 = zext i16 %2733 to i32
  %2735 = add i32 %2720, %2727
  %2736 = add i32 %2735, %2734
  %2737 = icmp slt i32 %2736, %2708
  %2738 = call i32 @llvm.smin.i32(i32 %2736, i32 %2708)
  %2739 = select i1 %2737, i32 %2729, i32 %2707
  %2740 = select i1 %2737, i32 %2722, i32 %2706
  %2741 = add nuw nsw i64 %2705, 1
  %2742 = icmp eq i64 %2741, %2682
  br i1 %2742, label %2883, label %2704, !llvm.loop !82

2743:                                             ; preds = %2421, %2876
  %2744 = phi i64 [ %2431, %2421 ], [ %2880, %2876 ]
  %2745 = phi i32 [ %272, %2421 ], [ %2879, %2876 ]
  %2746 = phi i32 [ %271, %2421 ], [ %2878, %2876 ]
  %2747 = phi i32 [ %270, %2421 ], [ %2877, %2876 ]
  %2748 = trunc i64 %2744 to i32
  %2749 = shl i32 %2748, 2
  %2750 = sext i32 %2749 to i64
  %2751 = getelementptr inbounds i16, ptr %59, i64 %2750
  %2752 = load i16, ptr %2751, align 2, !tbaa !45
  %2753 = zext i16 %2752 to i32
  %2754 = icmp sgt i32 %2747, %2753
  br i1 %2754, label %2755, label %2876

2755:                                             ; preds = %2743
  %2756 = sub nsw i32 %2747, %2753
  %2757 = load ptr, ptr %2422, align 8, !tbaa !42
  %2758 = mul nsw i64 %2744, %2432
  %2759 = getelementptr inbounds i16, ptr %2424, i64 %2758
  %2760 = call i32 %2757(ptr noundef nonnull %11, ptr noundef %2759, i32 noundef %2411, ptr noundef %2425, ptr noundef %2370, i32 noundef %2362, i32 noundef %2756) #11
  %2761 = add nsw i32 %2760, -2
  %2762 = getelementptr i8, ptr %26, i64 %2758
  %2763 = icmp sgt i32 %2760, 2
  br i1 %2763, label %2764, label %2833

2764:                                             ; preds = %2755, %2764
  %2765 = phi i64 [ %2830, %2764 ], [ 0, %2755 ]
  %2766 = phi i32 [ %2829, %2764 ], [ %2745, %2755 ]
  %2767 = phi i32 [ %2828, %2764 ], [ %2746, %2755 ]
  %2768 = phi i32 [ %2825, %2764 ], [ %2756, %2755 ]
  %2769 = load ptr, ptr %2426, align 8, !tbaa !42
  %2770 = getelementptr inbounds i16, ptr %2370, i64 %2765
  %2771 = load i16, ptr %2770, align 2, !tbaa !45
  %2772 = sext i16 %2771 to i32
  %2773 = add nsw i32 %2353, %2772
  %2774 = sext i32 %2773 to i64
  %2775 = getelementptr i8, ptr %2762, i64 %2774
  %2776 = getelementptr i16, ptr %2770, i64 1
  %2777 = load i16, ptr %2776, align 2, !tbaa !45
  %2778 = sext i16 %2777 to i32
  %2779 = add nsw i32 %2353, %2778
  %2780 = sext i32 %2779 to i64
  %2781 = getelementptr i8, ptr %2762, i64 %2780
  %2782 = getelementptr i16, ptr %2770, i64 2
  %2783 = load i16, ptr %2782, align 2, !tbaa !45
  %2784 = sext i16 %2783 to i32
  %2785 = add nsw i32 %2353, %2784
  %2786 = sext i32 %2785 to i64
  %2787 = getelementptr i8, ptr %2762, i64 %2786
  call void %2769(ptr noundef %24, ptr noundef %2775, ptr noundef %2781, ptr noundef %2787, i32 noundef %20, ptr noundef nonnull %7) #11
  %2788 = load i16, ptr %2770, align 2, !tbaa !45
  %2789 = sext i16 %2788 to i32
  %2790 = add nsw i32 %2353, %2789
  %2791 = shl i32 %2790, 2
  %2792 = sext i32 %2791 to i64
  %2793 = getelementptr inbounds i16, ptr %54, i64 %2792
  %2794 = load i16, ptr %2793, align 2, !tbaa !45
  %2795 = zext i16 %2794 to i32
  %2796 = load i32, ptr %7, align 16, !tbaa !15
  %2797 = add nsw i32 %2796, %2795
  store i32 %2797, ptr %7, align 16, !tbaa !15
  %2798 = load i16, ptr %2776, align 2, !tbaa !45
  %2799 = sext i16 %2798 to i32
  %2800 = add nsw i32 %2353, %2799
  %2801 = shl i32 %2800, 2
  %2802 = sext i32 %2801 to i64
  %2803 = getelementptr inbounds i16, ptr %54, i64 %2802
  %2804 = load i16, ptr %2803, align 2, !tbaa !45
  %2805 = zext i16 %2804 to i32
  %2806 = load i32, ptr %2427, align 4, !tbaa !15
  %2807 = add nsw i32 %2806, %2805
  store i32 %2807, ptr %2427, align 4, !tbaa !15
  %2808 = load i16, ptr %2782, align 2, !tbaa !45
  %2809 = sext i16 %2808 to i32
  %2810 = add nsw i32 %2353, %2809
  %2811 = shl i32 %2810, 2
  %2812 = sext i32 %2811 to i64
  %2813 = getelementptr inbounds i16, ptr %54, i64 %2812
  %2814 = load i16, ptr %2813, align 2, !tbaa !45
  %2815 = zext i16 %2814 to i32
  %2816 = load i32, ptr %2428, align 8, !tbaa !15
  %2817 = add nsw i32 %2816, %2815
  store i32 %2817, ptr %2428, align 8, !tbaa !15
  %2818 = icmp slt i32 %2797, %2768
  %2819 = call i32 @llvm.smin.i32(i32 %2797, i32 %2768)
  %2820 = select i1 %2818, i32 %2790, i32 %2766
  %2821 = icmp slt i32 %2807, %2819
  %2822 = call i32 @llvm.smin.i32(i32 %2807, i32 %2819)
  %2823 = select i1 %2821, i32 %2800, i32 %2820
  %2824 = icmp slt i32 %2817, %2822
  %2825 = call i32 @llvm.smin.i32(i32 %2817, i32 %2822)
  %2826 = select i1 %2824, i1 true, i1 %2821
  %2827 = select i1 %2826, i1 true, i1 %2818
  %2828 = select i1 %2827, i32 %2748, i32 %2767
  %2829 = select i1 %2824, i32 %2810, i32 %2823
  %2830 = add nuw i64 %2765, 3
  %2831 = trunc i64 %2830 to i32
  %2832 = icmp sgt i32 %2761, %2831
  br i1 %2832, label %2764, label %2833, !llvm.loop !83

2833:                                             ; preds = %2764, %2755
  %2834 = phi i32 [ 0, %2755 ], [ %2831, %2764 ]
  %2835 = phi i32 [ %2756, %2755 ], [ %2825, %2764 ]
  %2836 = phi i32 [ %2746, %2755 ], [ %2828, %2764 ]
  %2837 = phi i32 [ %2745, %2755 ], [ %2829, %2764 ]
  %2838 = add nsw i32 %2835, %2753
  %2839 = icmp slt i32 %2834, %2760
  br i1 %2839, label %2840, label %2876

2840:                                             ; preds = %2833
  %2841 = trunc i64 %2758 to i32
  %2842 = add i32 %2353, %2841
  %2843 = zext i32 %2834 to i64
  br label %2844

2844:                                             ; preds = %2840, %2844
  %2845 = phi i64 [ %2843, %2840 ], [ %2873, %2844 ]
  %2846 = phi i32 [ %2837, %2840 ], [ %2872, %2844 ]
  %2847 = phi i32 [ %2836, %2840 ], [ %2871, %2844 ]
  %2848 = phi i32 [ %2838, %2840 ], [ %2870, %2844 ]
  %2849 = load ptr, ptr %2429, align 8, !tbaa !42
  %2850 = getelementptr inbounds i16, ptr %2370, i64 %2845
  %2851 = load i16, ptr %2850, align 2, !tbaa !45
  %2852 = sext i16 %2851 to i32
  %2853 = add i32 %2842, %2852
  %2854 = sext i32 %2853 to i64
  %2855 = getelementptr inbounds i8, ptr %26, i64 %2854
  %2856 = call i32 %2849(ptr noundef %24, i32 noundef 16, ptr noundef %2855, i32 noundef %20) #11
  %2857 = load i16, ptr %2850, align 2, !tbaa !45
  %2858 = sext i16 %2857 to i32
  %2859 = add nsw i32 %2353, %2858
  %2860 = shl i32 %2859, 2
  %2861 = sext i32 %2860 to i64
  %2862 = getelementptr inbounds i16, ptr %54, i64 %2861
  %2863 = load i16, ptr %2862, align 2, !tbaa !45
  %2864 = zext i16 %2863 to i32
  %2865 = load i16, ptr %2751, align 2, !tbaa !45
  %2866 = zext i16 %2865 to i32
  %2867 = add i32 %2856, %2864
  %2868 = add i32 %2867, %2866
  %2869 = icmp slt i32 %2868, %2848
  %2870 = call i32 @llvm.smin.i32(i32 %2868, i32 %2848)
  %2871 = select i1 %2869, i32 %2748, i32 %2847
  %2872 = select i1 %2869, i32 %2859, i32 %2846
  %2873 = add nuw nsw i64 %2845, 1
  %2874 = trunc i64 %2873 to i32
  %2875 = icmp sgt i32 %2760, %2874
  br i1 %2875, label %2844, label %2876, !llvm.loop !84

2876:                                             ; preds = %2844, %2833, %2743
  %2877 = phi i32 [ %2747, %2743 ], [ %2838, %2833 ], [ %2870, %2844 ]
  %2878 = phi i32 [ %2746, %2743 ], [ %2836, %2833 ], [ %2871, %2844 ]
  %2879 = phi i32 [ %2745, %2743 ], [ %2837, %2833 ], [ %2872, %2844 ]
  %2880 = add nsw i64 %2744, 1
  %2881 = trunc i64 %2880 to i32
  %2882 = icmp eq i32 %2435, %2881
  br i1 %2882, label %2883, label %2743, !llvm.loop !85

2883:                                             ; preds = %2876, %2704, %2419, %2677
  %2884 = phi i32 [ %270, %2677 ], [ %270, %2419 ], [ %2738, %2704 ], [ %2877, %2876 ]
  %2885 = phi i32 [ %271, %2677 ], [ %271, %2419 ], [ %2739, %2704 ], [ %2878, %2876 ]
  %2886 = phi i32 [ %272, %2677 ], [ %272, %2419 ], [ %2740, %2704 ], [ %2879, %2876 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #9
  br label %2887

2887:                                             ; preds = %1450, %981, %2343, %269, %2883, %639, %374
  %2888 = phi i32 [ %270, %269 ], [ %2884, %2883 ], [ %2338, %2343 ], [ %748, %639 ], [ %378, %374 ], [ %270, %981 ], [ %890, %1450 ]
  %2889 = phi i32 [ %271, %269 ], [ %2885, %2883 ], [ %2339, %2343 ], [ %756, %639 ], [ %376, %374 ], [ %1122, %981 ], [ %1542, %1450 ]
  %2890 = phi i32 [ %272, %269 ], [ %2886, %2883 ], [ %2340, %2343 ], [ %752, %639 ], [ %377, %374 ], [ %1123, %981 ], [ %1543, %1450 ]
  %2891 = icmp slt i32 %248, %2888
  %2892 = trunc i32 %250 to i16
  %2893 = trunc i32 %249 to i16
  %2894 = trunc i32 %2890 to i16
  %2895 = shl i16 %2894, 2
  %2896 = trunc i32 %2889 to i16
  %2897 = shl i16 %2896, 2
  %2898 = select i1 %2891, i16 %2892, i16 %2895
  %2899 = select i1 %2891, i16 %2893, i16 %2897
  %2900 = call i32 @llvm.smin.i32(i32 %248, i32 %2888)
  %2901 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 13
  store i16 %2898, ptr %2901, align 4
  %2902 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 13, i64 1
  store i16 %2899, ptr %2902, align 2
  %2903 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 12
  store i32 %2900, ptr %2903, align 8
  %2904 = sext i16 %2898 to i64
  %2905 = getelementptr inbounds i16, ptr %54, i64 %2904
  %2906 = load i16, ptr %2905, align 2, !tbaa !45
  %2907 = zext i16 %2906 to i32
  %2908 = sext i16 %2899 to i64
  %2909 = getelementptr inbounds i16, ptr %59, i64 %2908
  %2910 = load i16, ptr %2909, align 2, !tbaa !45
  %2911 = zext i16 %2910 to i32
  %2912 = add nuw nsw i32 %2911, %2907
  %2913 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 11
  store i32 %2912, ptr %2913, align 4, !tbaa !86
  %2914 = icmp eq i32 %2890, %64
  %2915 = icmp eq i32 %2889, %66
  %2916 = select i1 %2914, i1 %2915, i1 false
  %2917 = load i32, ptr %67, align 8, !tbaa !47
  br i1 %2916, label %2918, label %2922

2918:                                             ; preds = %2887
  %2919 = icmp slt i32 %2917, 3
  br i1 %2919, label %2920, label %2924

2920:                                             ; preds = %2918
  %2921 = add nsw i32 %2900, %2912
  store i32 %2921, ptr %2903, align 8, !tbaa !87
  br label %2922

2922:                                             ; preds = %2920, %2887
  %2923 = icmp sgt i32 %2917, 1
  br i1 %2923, label %2924, label %2932

2924:                                             ; preds = %2918, %2922
  %2925 = zext nneg i32 %2917 to i64
  %2926 = getelementptr inbounds [11 x [4 x i8]], ptr @subpel_iterations, i64 0, i64 %2925, i64 2
  %2927 = load i8, ptr %2926, align 2, !tbaa !52
  %2928 = zext i8 %2927 to i32
  %2929 = getelementptr inbounds [11 x [4 x i8]], ptr @subpel_iterations, i64 0, i64 %2925, i64 3
  %2930 = load i8, ptr %2929, align 1, !tbaa !52
  %2931 = zext i8 %2930 to i32
  call fastcc void @refine_subpel(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2928, i32 noundef %2931, ptr noundef %4, i32 noundef 0) #10
  br label %2932

2932:                                             ; preds = %2924, %2922
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @x264_clip3(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = icmp slt i32 %0, %1
  %5 = tail call i32 @llvm.smin.i32(i32 %0, i32 %2)
  %6 = select i1 %4, i32 %1, i32 %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @pack16to32_mask(i32 noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = and i32 %0, 65535
  %4 = shl i32 %1, 16
  %5 = or disjoint i32 %4, %3
  ret i32 %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @x264_predictor_roundclip(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #3 {
  %8 = icmp sgt i32 %2, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = zext nneg i32 %2 to i64
  br label %12

11:                                               ; preds = %12, %7
  ret void

12:                                               ; preds = %9, %12
  %13 = phi i64 [ 0, %9 ], [ %30, %12 ]
  %14 = getelementptr inbounds [2 x i16], ptr %1, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !45
  %16 = sext i16 %15 to i32
  %17 = add nsw i32 %16, 2
  %18 = ashr i32 %17, 2
  %19 = getelementptr inbounds [2 x i16], ptr %1, i64 %13, i64 1
  %20 = load i16, ptr %19, align 2, !tbaa !45
  %21 = sext i16 %20 to i32
  %22 = add nsw i32 %21, 2
  %23 = ashr i32 %22, 2
  %24 = tail call fastcc i32 @x264_clip3(i32 noundef %18, i32 noundef %3, i32 noundef %4) #10
  %25 = trunc i32 %24 to i16
  %26 = getelementptr inbounds [2 x i16], ptr %0, i64 %13
  store i16 %25, ptr %26, align 2, !tbaa !45
  %27 = tail call fastcc i32 @x264_clip3(i32 noundef %23, i32 noundef %5, i32 noundef %6) #10
  %28 = trunc i32 %27 to i16
  %29 = getelementptr inbounds [2 x i16], ptr %0, i64 %13, i64 1
  store i16 %28, ptr %29, align 2, !tbaa !45
  %30 = add nuw nsw i64 %13, 1
  %31 = icmp eq i64 %30, %10
  br i1 %31, label %11, label %12, !llvm.loop !88
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @x264_predictor_difference(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #5 {
  %3 = icmp sgt i64 %1, 1
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = load i16, ptr %0, align 2, !tbaa !45
  %6 = getelementptr inbounds [2 x i16], ptr %0, i64 0, i64 1
  %7 = load i16, ptr %6, align 2, !tbaa !45
  %8 = add nsw i64 %1, -2
  br label %11

9:                                                ; preds = %11, %2
  %10 = phi i32 [ 0, %2 ], [ %30, %11 ]
  ret i32 %10

11:                                               ; preds = %4, %11
  %12 = phi i16 [ %7, %4 ], [ %25, %11 ]
  %13 = phi i16 [ %5, %4 ], [ %19, %11 ]
  %14 = phi i64 [ 0, %4 ], [ %17, %11 ]
  %15 = phi i32 [ 0, %4 ], [ %30, %11 ]
  %16 = sext i16 %13 to i32
  %17 = add nuw nsw i64 %14, 1
  %18 = getelementptr inbounds [2 x i16], ptr %0, i64 %17
  %19 = load i16, ptr %18, align 2, !tbaa !45
  %20 = sext i16 %19 to i32
  %21 = sub nsw i32 %16, %20
  %22 = tail call i32 @llvm.abs.i32(i32 %21, i1 true)
  %23 = sext i16 %12 to i32
  %24 = getelementptr inbounds [2 x i16], ptr %0, i64 %17, i64 1
  %25 = load i16, ptr %24, align 2, !tbaa !45
  %26 = sext i16 %25 to i32
  %27 = sub nsw i32 %23, %26
  %28 = tail call i32 @llvm.abs.i32(i32 %27, i1 true)
  %29 = add nuw i32 %22, %15
  %30 = add nuw i32 %29, %28
  %31 = icmp eq i64 %14, %8
  br i1 %31, label %9, label %11, !llvm.loop !89
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @refine_subpel(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
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
  %17 = load i32, ptr %1, align 16, !tbaa !6
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %18
  %20 = load i32, ptr %19, align 8, !tbaa !12
  %21 = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %18, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !14
  %23 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  %25 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 10
  %26 = load i16, ptr %25, align 16, !tbaa !45
  %27 = sext i16 %26 to i64
  %28 = sub nsw i64 0, %27
  %29 = getelementptr inbounds i16, ptr %24, i64 %28
  %30 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 10, i64 1
  %31 = load i16, ptr %30, align 2, !tbaa !45
  %32 = sext i16 %31 to i64
  %33 = sub nsw i64 0, %32
  %34 = getelementptr inbounds i16, ptr %24, i64 %33
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 11
  %36 = load i32, ptr %35, align 4, !tbaa !90
  %37 = icmp ne i32 %36, 0
  %38 = icmp slt i32 %17, 4
  %39 = and i1 %38, %37
  %40 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %41 = load i32, ptr %40, align 4, !tbaa !91
  %42 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !92
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %6
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %48 = load i32, ptr %47, align 4, !tbaa !93
  %49 = shl i32 %48, 2
  %50 = and i32 %49, 4
  %51 = add nsw i32 %50, -2
  br label %52

52:                                               ; preds = %6, %46
  %53 = phi i32 [ %51, %46 ], [ 0, %6 ]
  call void @llvm.lifetime.start.p0(i64 1152, ptr nonnull %7) #9
  %54 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 13
  %55 = load i16, ptr %54, align 4, !tbaa !45
  %56 = sext i16 %55 to i32
  %57 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 13, i64 1
  %58 = load i16, ptr %57, align 2, !tbaa !45
  %59 = sext i16 %58 to i32
  %60 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 12
  %61 = load i32, ptr %60, align 8, !tbaa !87
  %62 = icmp eq i32 %2, 0
  br i1 %62, label %212, label %63

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 10
  %65 = load i32, ptr %64, align 8, !tbaa !47
  %66 = icmp slt i32 %65, 3
  br i1 %66, label %67, label %116

67:                                               ; preds = %63
  %68 = sext i16 %26 to i32
  %69 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 20
  %70 = load i32, ptr %69, align 8, !tbaa !15
  %71 = add nsw i32 %70, 2
  %72 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21
  %73 = load i32, ptr %72, align 16, !tbaa !15
  %74 = add nsw i32 %73, -2
  %75 = tail call fastcc i32 @x264_clip3(i32 noundef %68, i32 noundef %71, i32 noundef %74) #10
  %76 = sext i16 %31 to i32
  %77 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 20, i64 1
  %78 = load i32, ptr %77, align 4, !tbaa !15
  %79 = add nsw i32 %78, 2
  %80 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21, i64 1
  %81 = load i32, ptr %80, align 4, !tbaa !15
  %82 = add nsw i32 %81, -2
  %83 = tail call fastcc i32 @x264_clip3(i32 noundef %76, i32 noundef %79, i32 noundef %82) #10
  %84 = icmp eq i32 %75, %56
  %85 = icmp eq i32 %83, %59
  %86 = and i1 %84, %85
  br i1 %86, label %116, label %87

87:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 16, ptr %8, align 4, !tbaa !15
  %88 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !48
  %90 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5
  %91 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9
  %92 = load i32, ptr %91, align 8, !tbaa !15
  %93 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !49
  %95 = call ptr %89(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %90, i32 noundef %92, i32 noundef %75, i32 noundef %83, i32 noundef %20, i32 noundef %22, ptr noundef %94) #11
  %96 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7, i64 %18
  %97 = load ptr, ptr %96, align 8, !tbaa !42
  %98 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7
  %99 = load ptr, ptr %98, align 8, !tbaa !42
  %100 = load i32, ptr %8, align 4, !tbaa !15
  %101 = call i32 %97(ptr noundef %99, i32 noundef 16, ptr noundef %95, i32 noundef %100) #11
  %102 = sext i32 %75 to i64
  %103 = getelementptr inbounds i16, ptr %29, i64 %102
  %104 = load i16, ptr %103, align 2, !tbaa !45
  %105 = zext i16 %104 to i32
  %106 = add nsw i32 %101, %105
  %107 = sext i32 %83 to i64
  %108 = getelementptr inbounds i16, ptr %34, i64 %107
  %109 = load i16, ptr %108, align 2, !tbaa !45
  %110 = zext i16 %109 to i32
  %111 = add nsw i32 %106, %110
  %112 = icmp slt i32 %111, %61
  %113 = call i32 @llvm.smin.i32(i32 %111, i32 %61)
  %114 = select i1 %112, i32 %83, i32 %59
  %115 = select i1 %112, i32 %75, i32 %56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  br label %116

116:                                              ; preds = %67, %87, %63
  %117 = phi i32 [ %61, %63 ], [ %113, %87 ], [ %61, %67 ]
  %118 = phi i32 [ %59, %63 ], [ %114, %87 ], [ %59, %67 ]
  %119 = phi i32 [ %56, %63 ], [ %115, %87 ], [ %56, %67 ]
  %120 = icmp sgt i32 %2, 0
  br i1 %120, label %121, label %212

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 1
  %123 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5
  %124 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9
  %125 = add nsw i32 %22, 1
  %126 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 4
  %127 = getelementptr inbounds i8, ptr %7, i64 32
  %128 = add nsw i32 %20, 4
  %129 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 9, i64 %18
  %130 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7
  %131 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 1
  %132 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 2
  %133 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 3
  br label %137

134:                                              ; preds = %137
  %135 = add nsw i32 %141, -1
  %136 = icmp sgt i32 %141, 1
  br i1 %136, label %137, label %212, !llvm.loop !94

137:                                              ; preds = %121, %134
  %138 = phi i32 [ %119, %121 ], [ %209, %134 ]
  %139 = phi i32 [ %118, %121 ], [ %208, %134 ]
  %140 = phi i32 [ %117, %121 ], [ %206, %134 ]
  %141 = phi i32 [ %2, %121 ], [ %135, %134 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  store i32 64, ptr %10, align 4, !tbaa !15
  %142 = load ptr, ptr %122, align 8, !tbaa !48
  %143 = load i32, ptr %124, align 8, !tbaa !15
  %144 = add nsw i32 %139, -2
  %145 = load ptr, ptr %126, align 8, !tbaa !49
  %146 = call ptr %142(ptr noundef nonnull %7, ptr noundef nonnull %10, ptr noundef nonnull %123, i32 noundef %143, i32 noundef %138, i32 noundef %144, i32 noundef %20, i32 noundef %125, ptr noundef %145) #11
  %147 = load ptr, ptr %122, align 8, !tbaa !48
  %148 = load i32, ptr %124, align 8, !tbaa !15
  %149 = add nsw i32 %138, -2
  %150 = load ptr, ptr %126, align 8, !tbaa !49
  %151 = call ptr %147(ptr noundef nonnull %127, ptr noundef nonnull %10, ptr noundef nonnull %123, i32 noundef %148, i32 noundef %149, i32 noundef %139, i32 noundef %128, i32 noundef %22, ptr noundef %150) #11
  %152 = load i32, ptr %10, align 4, !tbaa !15
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, ptr %146, i64 %153
  %155 = getelementptr inbounds i8, ptr %151, i64 1
  %156 = load ptr, ptr %129, align 8, !tbaa !42
  %157 = load ptr, ptr %130, align 8, !tbaa !42
  call void %156(ptr noundef %157, ptr noundef %146, ptr noundef %154, ptr noundef %151, ptr noundef nonnull %155, i32 noundef %152, ptr noundef nonnull %9) #11
  %158 = load i32, ptr %9, align 16, !tbaa !15
  %159 = sext i32 %138 to i64
  %160 = getelementptr inbounds i16, ptr %29, i64 %159
  %161 = load i16, ptr %160, align 2, !tbaa !45
  %162 = zext i16 %161 to i32
  %163 = add nsw i32 %158, %162
  %164 = sext i32 %144 to i64
  %165 = getelementptr inbounds i16, ptr %34, i64 %164
  %166 = load i16, ptr %165, align 2, !tbaa !45
  %167 = zext i16 %166 to i32
  %168 = add nsw i32 %163, %167
  %169 = icmp slt i32 %168, %140
  %170 = call i32 @llvm.smin.i32(i32 %168, i32 %140)
  %171 = select i1 %169, i32 %144, i32 %139
  %172 = load i32, ptr %131, align 4, !tbaa !15
  %173 = add nsw i32 %172, %162
  %174 = add nsw i32 %139, 2
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i16, ptr %34, i64 %175
  %177 = load i16, ptr %176, align 2, !tbaa !45
  %178 = zext i16 %177 to i32
  %179 = add nsw i32 %173, %178
  %180 = icmp slt i32 %179, %170
  %181 = call i32 @llvm.smin.i32(i32 %179, i32 %170)
  %182 = select i1 %180, i32 %174, i32 %171
  %183 = load i32, ptr %132, align 8, !tbaa !15
  %184 = sext i32 %149 to i64
  %185 = getelementptr inbounds i16, ptr %29, i64 %184
  %186 = load i16, ptr %185, align 2, !tbaa !45
  %187 = zext i16 %186 to i32
  %188 = add nsw i32 %183, %187
  %189 = sext i32 %139 to i64
  %190 = getelementptr inbounds i16, ptr %34, i64 %189
  %191 = load i16, ptr %190, align 2, !tbaa !45
  %192 = zext i16 %191 to i32
  %193 = add nsw i32 %188, %192
  %194 = icmp slt i32 %193, %181
  %195 = call i32 @llvm.smin.i32(i32 %193, i32 %181)
  %196 = select i1 %194, i32 %149, i32 %138
  %197 = load i32, ptr %133, align 4, !tbaa !15
  %198 = add nsw i32 %138, 2
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i16, ptr %29, i64 %199
  %201 = load i16, ptr %200, align 2, !tbaa !45
  %202 = zext i16 %201 to i32
  %203 = add i32 %197, %192
  %204 = add i32 %203, %202
  %205 = icmp slt i32 %204, %195
  %206 = call i32 @llvm.smin.i32(i32 %204, i32 %195)
  %207 = select i1 %205, i1 true, i1 %194
  %208 = select i1 %207, i32 %139, i32 %182
  %209 = select i1 %205, i32 %198, i32 %196
  %210 = icmp ne i32 %208, %139
  %211 = or i1 %207, %210
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #9
  br i1 %211, label %134, label %212

212:                                              ; preds = %137, %134, %52, %116
  %213 = phi i32 [ %117, %116 ], [ %61, %52 ], [ %206, %134 ], [ %206, %137 ]
  %214 = phi i32 [ %118, %116 ], [ %59, %52 ], [ %139, %137 ], [ %208, %134 ]
  %215 = phi i32 [ %119, %116 ], [ %56, %52 ], [ %209, %134 ], [ %209, %137 ]
  %216 = icmp ne i32 %5, 0
  br i1 %216, label %307, label %217

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 6
  %219 = load ptr, ptr %218, align 8, !tbaa !42
  %220 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7
  %221 = load ptr, ptr %220, align 8, !tbaa !42
  %222 = icmp ne ptr %219, %221
  %223 = select i1 %222, i1 true, i1 %39
  br i1 %223, label %224, label %307

224:                                              ; preds = %217
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #9
  store i32 16, ptr %11, align 4, !tbaa !15
  %225 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !48
  %227 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5
  %228 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9
  %229 = load i32, ptr %228, align 8, !tbaa !15
  %230 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 4
  %231 = load ptr, ptr %230, align 8, !tbaa !49
  %232 = call ptr %226(ptr noundef nonnull %7, ptr noundef nonnull %11, ptr noundef nonnull %227, i32 noundef %229, i32 noundef %215, i32 noundef %214, i32 noundef %20, i32 noundef %22, ptr noundef %231) #11
  %233 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 6, i64 %18
  %234 = load ptr, ptr %233, align 8, !tbaa !42
  %235 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7
  %236 = load ptr, ptr %235, align 8, !tbaa !42
  %237 = load i32, ptr %11, align 4, !tbaa !15
  %238 = call i32 %234(ptr noundef %236, i32 noundef 16, ptr noundef %232, i32 noundef %237) #11
  %239 = sext i32 %215 to i64
  %240 = getelementptr inbounds i16, ptr %29, i64 %239
  %241 = load i16, ptr %240, align 2, !tbaa !45
  %242 = zext i16 %241 to i32
  %243 = add nsw i32 %238, %242
  %244 = sext i32 %214 to i64
  %245 = getelementptr inbounds i16, ptr %34, i64 %244
  %246 = load i16, ptr %245, align 2, !tbaa !45
  %247 = zext i16 %246 to i32
  %248 = add nsw i32 %243, %247
  %249 = icmp slt i32 %248, 268435456
  %250 = select i1 %39, i1 %249, i1 false
  br i1 %250, label %251, label %304

251:                                              ; preds = %224
  %252 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %253 = load ptr, ptr %252, align 8, !tbaa !95
  %254 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 4
  %255 = load ptr, ptr %254, align 16, !tbaa !42
  %256 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9, i64 1
  %257 = load i32, ptr %256, align 4, !tbaa !15
  %258 = add nsw i32 %214, %53
  %259 = sdiv i32 %20, 2
  %260 = sdiv i32 %22, 2
  call void %253(ptr noundef nonnull %7, i32 noundef 8, ptr noundef %255, i32 noundef %257, i32 noundef %215, i32 noundef %258, i32 noundef %259, i32 noundef %260) #11
  %261 = load ptr, ptr %230, align 8, !tbaa !49
  %262 = getelementptr inbounds %struct.x264_weight_t, ptr %261, i64 1, i32 5
  %263 = load ptr, ptr %262, align 16, !tbaa !96
  %264 = icmp eq ptr %263, null
  br i1 %264, label %272, label %265

265:                                              ; preds = %251
  %266 = getelementptr inbounds %struct.x264_weight_t, ptr %261, i64 1
  %267 = ashr i32 %20, 3
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds ptr, ptr %263, i64 %268
  %270 = load ptr, ptr %269, align 8, !tbaa !42
  %271 = ashr i32 %22, 1
  call void %270(ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %266, i32 noundef %271) #11
  br label %272

272:                                              ; preds = %265, %251
  %273 = add nsw i32 %17, 3
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 5, i64 %274
  %276 = load ptr, ptr %275, align 8, !tbaa !42
  %277 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7, i64 1
  %278 = load ptr, ptr %277, align 8, !tbaa !42
  %279 = call i32 %276(ptr noundef %278, i32 noundef 16, ptr noundef nonnull %7, i32 noundef 8) #11
  %280 = add nsw i32 %279, %248
  %281 = icmp slt i32 %280, 268435456
  br i1 %281, label %282, label %304

282:                                              ; preds = %272
  %283 = load ptr, ptr %252, align 8, !tbaa !95
  %284 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 5
  %285 = load ptr, ptr %284, align 8, !tbaa !42
  %286 = load i32, ptr %256, align 4, !tbaa !15
  call void %283(ptr noundef nonnull %7, i32 noundef 8, ptr noundef %285, i32 noundef %286, i32 noundef %215, i32 noundef %258, i32 noundef %259, i32 noundef %260) #11
  %287 = load ptr, ptr %230, align 8, !tbaa !49
  %288 = getelementptr inbounds %struct.x264_weight_t, ptr %287, i64 2, i32 5
  %289 = load ptr, ptr %288, align 16, !tbaa !96
  %290 = icmp eq ptr %289, null
  br i1 %290, label %298, label %291

291:                                              ; preds = %282
  %292 = getelementptr inbounds %struct.x264_weight_t, ptr %287, i64 2
  %293 = ashr i32 %20, 3
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds ptr, ptr %289, i64 %294
  %296 = load ptr, ptr %295, align 8, !tbaa !42
  %297 = ashr i32 %22, 1
  call void %296(ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %292, i32 noundef %297) #11
  br label %298

298:                                              ; preds = %291, %282
  %299 = load ptr, ptr %275, align 8, !tbaa !42
  %300 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7, i64 2
  %301 = load ptr, ptr %300, align 8, !tbaa !42
  %302 = call i32 %299(ptr noundef %301, i32 noundef 16, ptr noundef nonnull %7, i32 noundef 8) #11
  %303 = add nsw i32 %302, %280
  br label %304

304:                                              ; preds = %272, %298, %224
  %305 = phi i32 [ %303, %298 ], [ %280, %272 ], [ %248, %224 ]
  %306 = call i32 @llvm.smin.i32(i32 %305, i32 268435456)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #9
  br label %307

307:                                              ; preds = %304, %217, %212
  %308 = phi i32 [ %213, %212 ], [ %306, %304 ], [ %213, %217 ]
  %309 = icmp eq ptr %4, null
  br i1 %309, label %321, label %310

310:                                              ; preds = %307
  %311 = mul nsw i32 %308, 7
  %312 = ashr i32 %311, 3
  %313 = load i32, ptr %4, align 4, !tbaa !15
  %314 = icmp sgt i32 %312, %313
  br i1 %314, label %315, label %318

315:                                              ; preds = %310
  store i32 %308, ptr %60, align 8, !tbaa !87
  %316 = trunc i32 %215 to i16
  store i16 %316, ptr %54, align 4, !tbaa !45
  %317 = trunc i32 %214 to i16
  store i16 %317, ptr %57, align 2, !tbaa !45
  br label %776

318:                                              ; preds = %310
  %319 = icmp slt i32 %308, %313
  br i1 %319, label %320, label %321

320:                                              ; preds = %318
  store i32 %308, ptr %4, align 4, !tbaa !15
  br label %321

321:                                              ; preds = %320, %318, %307
  %322 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 10
  %323 = load i32, ptr %322, align 8, !tbaa !47
  %324 = icmp sgt i32 %323, 1
  %325 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 20
  %326 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 20, i64 1
  br i1 %324, label %327, label %665

327:                                              ; preds = %321
  %328 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21
  %329 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21, i64 1
  %330 = icmp sgt i32 %3, 0
  br i1 %330, label %331, label %760

331:                                              ; preds = %327
  %332 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 1
  %333 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5
  %334 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9
  %335 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 4
  %336 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 6, i64 %18
  %337 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7
  %338 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %339 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 4
  %340 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9, i64 1
  %341 = sdiv i32 %20, 2
  %342 = sdiv i32 %22, 2
  %343 = ashr i32 %20, 3
  %344 = sext i32 %343 to i64
  %345 = ashr i32 %22, 1
  %346 = add nsw i32 %17, 3
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 5, i64 %347
  %349 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7, i64 1
  %350 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 5
  %351 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7, i64 2
  br label %355

352:                                              ; preds = %657
  %353 = add nsw i32 %360, -1
  %354 = icmp sgt i32 %360, 1
  br i1 %354, label %355, label %760, !llvm.loop !98

355:                                              ; preds = %331, %352
  %356 = phi i32 [ %215, %331 ], [ %661, %352 ]
  %357 = phi i32 [ %214, %331 ], [ %660, %352 ]
  %358 = phi i32 [ %308, %331 ], [ %659, %352 ]
  %359 = phi i32 [ -1, %331 ], [ %658, %352 ]
  %360 = phi i32 [ %3, %331 ], [ %353, %352 ]
  %361 = load i32, ptr %326, align 4, !tbaa !15
  %362 = icmp sgt i32 %357, %361
  br i1 %362, label %363, label %760

363:                                              ; preds = %355
  %364 = load i32, ptr %329, align 4, !tbaa !15
  %365 = icmp slt i32 %357, %364
  br i1 %365, label %366, label %760

366:                                              ; preds = %363
  %367 = load i32, ptr %325, align 8, !tbaa !15
  %368 = icmp sgt i32 %356, %367
  br i1 %368, label %369, label %760

369:                                              ; preds = %366
  %370 = load i32, ptr %328, align 16, !tbaa !15
  %371 = icmp slt i32 %356, %370
  br i1 %371, label %372, label %760

372:                                              ; preds = %369
  %373 = icmp ne i32 %359, 1
  %374 = select i1 %216, i1 true, i1 %373
  br i1 %374, label %377, label %375

375:                                              ; preds = %372
  %376 = sext i32 %356 to i64
  br label %443

377:                                              ; preds = %372
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #9
  store i32 16, ptr %12, align 4, !tbaa !15
  %378 = load ptr, ptr %332, align 8, !tbaa !48
  %379 = load i32, ptr %334, align 8, !tbaa !15
  %380 = add nsw i32 %357, -1
  %381 = load ptr, ptr %335, align 8, !tbaa !49
  %382 = call ptr %378(ptr noundef nonnull %7, ptr noundef nonnull %12, ptr noundef nonnull %333, i32 noundef %379, i32 noundef %356, i32 noundef %380, i32 noundef %20, i32 noundef %22, ptr noundef %381) #11
  %383 = load ptr, ptr %336, align 8, !tbaa !42
  %384 = load ptr, ptr %337, align 8, !tbaa !42
  %385 = load i32, ptr %12, align 4, !tbaa !15
  %386 = call i32 %383(ptr noundef %384, i32 noundef 16, ptr noundef %382, i32 noundef %385) #11
  %387 = sext i32 %356 to i64
  %388 = getelementptr inbounds i16, ptr %29, i64 %387
  %389 = load i16, ptr %388, align 2, !tbaa !45
  %390 = zext i16 %389 to i32
  %391 = add nsw i32 %386, %390
  %392 = sext i32 %380 to i64
  %393 = getelementptr inbounds i16, ptr %34, i64 %392
  %394 = load i16, ptr %393, align 2, !tbaa !45
  %395 = zext i16 %394 to i32
  %396 = add nsw i32 %391, %395
  %397 = icmp slt i32 %396, %358
  %398 = select i1 %39, i1 %397, i1 false
  br i1 %398, label %399, label %435

399:                                              ; preds = %377
  %400 = load ptr, ptr %338, align 8, !tbaa !95
  %401 = load ptr, ptr %339, align 16, !tbaa !42
  %402 = load i32, ptr %340, align 4, !tbaa !15
  %403 = add nsw i32 %380, %53
  call void %400(ptr noundef nonnull %7, i32 noundef 8, ptr noundef %401, i32 noundef %402, i32 noundef %356, i32 noundef %403, i32 noundef %341, i32 noundef %342) #11
  %404 = load ptr, ptr %335, align 8, !tbaa !49
  %405 = getelementptr inbounds %struct.x264_weight_t, ptr %404, i64 1, i32 5
  %406 = load ptr, ptr %405, align 16, !tbaa !96
  %407 = icmp eq ptr %406, null
  br i1 %407, label %412, label %408

408:                                              ; preds = %399
  %409 = getelementptr inbounds %struct.x264_weight_t, ptr %404, i64 1
  %410 = getelementptr inbounds ptr, ptr %406, i64 %344
  %411 = load ptr, ptr %410, align 8, !tbaa !42
  call void %411(ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %409, i32 noundef %345) #11
  br label %412

412:                                              ; preds = %408, %399
  %413 = load ptr, ptr %348, align 8, !tbaa !42
  %414 = load ptr, ptr %349, align 8, !tbaa !42
  %415 = call i32 %413(ptr noundef %414, i32 noundef 16, ptr noundef nonnull %7, i32 noundef 8) #11
  %416 = add nsw i32 %415, %396
  %417 = icmp slt i32 %416, %358
  br i1 %417, label %418, label %435

418:                                              ; preds = %412
  %419 = load ptr, ptr %338, align 8, !tbaa !95
  %420 = load ptr, ptr %350, align 8, !tbaa !42
  %421 = load i32, ptr %340, align 4, !tbaa !15
  call void %419(ptr noundef nonnull %7, i32 noundef 8, ptr noundef %420, i32 noundef %421, i32 noundef %356, i32 noundef %403, i32 noundef %341, i32 noundef %342) #11
  %422 = load ptr, ptr %335, align 8, !tbaa !49
  %423 = getelementptr inbounds %struct.x264_weight_t, ptr %422, i64 2, i32 5
  %424 = load ptr, ptr %423, align 16, !tbaa !96
  %425 = icmp eq ptr %424, null
  br i1 %425, label %430, label %426

426:                                              ; preds = %418
  %427 = getelementptr inbounds %struct.x264_weight_t, ptr %422, i64 2
  %428 = getelementptr inbounds ptr, ptr %424, i64 %344
  %429 = load ptr, ptr %428, align 8, !tbaa !42
  call void %429(ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %427, i32 noundef %345) #11
  br label %430

430:                                              ; preds = %426, %418
  %431 = load ptr, ptr %348, align 8, !tbaa !42
  %432 = load ptr, ptr %351, align 8, !tbaa !42
  %433 = call i32 %431(ptr noundef %432, i32 noundef 16, ptr noundef nonnull %7, i32 noundef 8) #11
  %434 = add nsw i32 %433, %416
  br label %435

435:                                              ; preds = %377, %430, %412
  %436 = phi i32 [ %434, %430 ], [ %416, %412 ], [ %396, %377 ]
  %437 = icmp slt i32 %436, %358
  %438 = select i1 %437, i32 0, i32 %359
  %439 = call i32 @llvm.smin.i32(i32 %436, i32 %358)
  %440 = select i1 %437, i32 %380, i32 %357
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #9
  %441 = icmp ne i32 %359, 0
  %442 = select i1 %216, i1 true, i1 %441
  br i1 %442, label %443, label %514

443:                                              ; preds = %375, %435
  %444 = phi i64 [ %376, %375 ], [ %387, %435 ]
  %445 = phi i32 [ %357, %375 ], [ %440, %435 ]
  %446 = phi i32 [ %358, %375 ], [ %439, %435 ]
  %447 = phi i32 [ 1, %375 ], [ %438, %435 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #9
  store i32 16, ptr %13, align 4, !tbaa !15
  %448 = load ptr, ptr %332, align 8, !tbaa !48
  %449 = load i32, ptr %334, align 8, !tbaa !15
  %450 = add nsw i32 %357, 1
  %451 = load ptr, ptr %335, align 8, !tbaa !49
  %452 = call ptr %448(ptr noundef nonnull %7, ptr noundef nonnull %13, ptr noundef nonnull %333, i32 noundef %449, i32 noundef %356, i32 noundef %450, i32 noundef %20, i32 noundef %22, ptr noundef %451) #11
  %453 = load ptr, ptr %336, align 8, !tbaa !42
  %454 = load ptr, ptr %337, align 8, !tbaa !42
  %455 = load i32, ptr %13, align 4, !tbaa !15
  %456 = call i32 %453(ptr noundef %454, i32 noundef 16, ptr noundef %452, i32 noundef %455) #11
  %457 = getelementptr inbounds i16, ptr %29, i64 %444
  %458 = load i16, ptr %457, align 2, !tbaa !45
  %459 = zext i16 %458 to i32
  %460 = add nsw i32 %456, %459
  %461 = sext i32 %450 to i64
  %462 = getelementptr inbounds i16, ptr %34, i64 %461
  %463 = load i16, ptr %462, align 2, !tbaa !45
  %464 = zext i16 %463 to i32
  %465 = add nsw i32 %460, %464
  %466 = icmp slt i32 %465, %446
  %467 = select i1 %39, i1 %466, i1 false
  br i1 %467, label %468, label %504

468:                                              ; preds = %443
  %469 = load ptr, ptr %338, align 8, !tbaa !95
  %470 = load ptr, ptr %339, align 16, !tbaa !42
  %471 = load i32, ptr %340, align 4, !tbaa !15
  %472 = add nsw i32 %450, %53
  call void %469(ptr noundef nonnull %7, i32 noundef 8, ptr noundef %470, i32 noundef %471, i32 noundef %356, i32 noundef %472, i32 noundef %341, i32 noundef %342) #11
  %473 = load ptr, ptr %335, align 8, !tbaa !49
  %474 = getelementptr inbounds %struct.x264_weight_t, ptr %473, i64 1, i32 5
  %475 = load ptr, ptr %474, align 16, !tbaa !96
  %476 = icmp eq ptr %475, null
  br i1 %476, label %481, label %477

477:                                              ; preds = %468
  %478 = getelementptr inbounds %struct.x264_weight_t, ptr %473, i64 1
  %479 = getelementptr inbounds ptr, ptr %475, i64 %344
  %480 = load ptr, ptr %479, align 8, !tbaa !42
  call void %480(ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %478, i32 noundef %345) #11
  br label %481

481:                                              ; preds = %477, %468
  %482 = load ptr, ptr %348, align 8, !tbaa !42
  %483 = load ptr, ptr %349, align 8, !tbaa !42
  %484 = call i32 %482(ptr noundef %483, i32 noundef 16, ptr noundef nonnull %7, i32 noundef 8) #11
  %485 = add nsw i32 %484, %465
  %486 = icmp slt i32 %485, %446
  br i1 %486, label %487, label %504

487:                                              ; preds = %481
  %488 = load ptr, ptr %338, align 8, !tbaa !95
  %489 = load ptr, ptr %350, align 8, !tbaa !42
  %490 = load i32, ptr %340, align 4, !tbaa !15
  call void %488(ptr noundef nonnull %7, i32 noundef 8, ptr noundef %489, i32 noundef %490, i32 noundef %356, i32 noundef %472, i32 noundef %341, i32 noundef %342) #11
  %491 = load ptr, ptr %335, align 8, !tbaa !49
  %492 = getelementptr inbounds %struct.x264_weight_t, ptr %491, i64 2, i32 5
  %493 = load ptr, ptr %492, align 16, !tbaa !96
  %494 = icmp eq ptr %493, null
  br i1 %494, label %499, label %495

495:                                              ; preds = %487
  %496 = getelementptr inbounds %struct.x264_weight_t, ptr %491, i64 2
  %497 = getelementptr inbounds ptr, ptr %493, i64 %344
  %498 = load ptr, ptr %497, align 8, !tbaa !42
  call void %498(ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %496, i32 noundef %345) #11
  br label %499

499:                                              ; preds = %495, %487
  %500 = load ptr, ptr %348, align 8, !tbaa !42
  %501 = load ptr, ptr %351, align 8, !tbaa !42
  %502 = call i32 %500(ptr noundef %501, i32 noundef 16, ptr noundef nonnull %7, i32 noundef 8) #11
  %503 = add nsw i32 %502, %485
  br label %504

504:                                              ; preds = %443, %499, %481
  %505 = phi i32 [ %503, %499 ], [ %485, %481 ], [ %465, %443 ]
  %506 = icmp slt i32 %505, %446
  %507 = select i1 %506, i32 1, i32 %447
  %508 = call i32 @llvm.smin.i32(i32 %505, i32 %446)
  %509 = select i1 %506, i32 %450, i32 %445
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #9
  %510 = icmp ne i32 %359, 3
  %511 = select i1 %216, i1 true, i1 %510
  br i1 %511, label %514, label %512

512:                                              ; preds = %504
  %513 = sext i32 %357 to i64
  br label %586

514:                                              ; preds = %435, %504
  %515 = phi i32 [ %509, %504 ], [ %440, %435 ]
  %516 = phi i32 [ %508, %504 ], [ %439, %435 ]
  %517 = phi i32 [ %507, %504 ], [ %438, %435 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #9
  store i32 16, ptr %14, align 4, !tbaa !15
  %518 = load ptr, ptr %332, align 8, !tbaa !48
  %519 = load i32, ptr %334, align 8, !tbaa !15
  %520 = add nsw i32 %356, -1
  %521 = load ptr, ptr %335, align 8, !tbaa !49
  %522 = call ptr %518(ptr noundef nonnull %7, ptr noundef nonnull %14, ptr noundef nonnull %333, i32 noundef %519, i32 noundef %520, i32 noundef %357, i32 noundef %20, i32 noundef %22, ptr noundef %521) #11
  %523 = load ptr, ptr %336, align 8, !tbaa !42
  %524 = load ptr, ptr %337, align 8, !tbaa !42
  %525 = load i32, ptr %14, align 4, !tbaa !15
  %526 = call i32 %523(ptr noundef %524, i32 noundef 16, ptr noundef %522, i32 noundef %525) #11
  %527 = sext i32 %520 to i64
  %528 = getelementptr inbounds i16, ptr %29, i64 %527
  %529 = load i16, ptr %528, align 2, !tbaa !45
  %530 = zext i16 %529 to i32
  %531 = add nsw i32 %526, %530
  %532 = sext i32 %357 to i64
  %533 = getelementptr inbounds i16, ptr %34, i64 %532
  %534 = load i16, ptr %533, align 2, !tbaa !45
  %535 = zext i16 %534 to i32
  %536 = add nsw i32 %531, %535
  %537 = icmp slt i32 %536, %516
  %538 = select i1 %39, i1 %537, i1 false
  br i1 %538, label %539, label %575

539:                                              ; preds = %514
  %540 = load ptr, ptr %338, align 8, !tbaa !95
  %541 = load ptr, ptr %339, align 16, !tbaa !42
  %542 = load i32, ptr %340, align 4, !tbaa !15
  %543 = add nsw i32 %357, %53
  call void %540(ptr noundef nonnull %7, i32 noundef 8, ptr noundef %541, i32 noundef %542, i32 noundef %520, i32 noundef %543, i32 noundef %341, i32 noundef %342) #11
  %544 = load ptr, ptr %335, align 8, !tbaa !49
  %545 = getelementptr inbounds %struct.x264_weight_t, ptr %544, i64 1, i32 5
  %546 = load ptr, ptr %545, align 16, !tbaa !96
  %547 = icmp eq ptr %546, null
  br i1 %547, label %552, label %548

548:                                              ; preds = %539
  %549 = getelementptr inbounds %struct.x264_weight_t, ptr %544, i64 1
  %550 = getelementptr inbounds ptr, ptr %546, i64 %344
  %551 = load ptr, ptr %550, align 8, !tbaa !42
  call void %551(ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %549, i32 noundef %345) #11
  br label %552

552:                                              ; preds = %548, %539
  %553 = load ptr, ptr %348, align 8, !tbaa !42
  %554 = load ptr, ptr %349, align 8, !tbaa !42
  %555 = call i32 %553(ptr noundef %554, i32 noundef 16, ptr noundef nonnull %7, i32 noundef 8) #11
  %556 = add nsw i32 %555, %536
  %557 = icmp slt i32 %556, %516
  br i1 %557, label %558, label %575

558:                                              ; preds = %552
  %559 = load ptr, ptr %338, align 8, !tbaa !95
  %560 = load ptr, ptr %350, align 8, !tbaa !42
  %561 = load i32, ptr %340, align 4, !tbaa !15
  call void %559(ptr noundef nonnull %7, i32 noundef 8, ptr noundef %560, i32 noundef %561, i32 noundef %520, i32 noundef %543, i32 noundef %341, i32 noundef %342) #11
  %562 = load ptr, ptr %335, align 8, !tbaa !49
  %563 = getelementptr inbounds %struct.x264_weight_t, ptr %562, i64 2, i32 5
  %564 = load ptr, ptr %563, align 16, !tbaa !96
  %565 = icmp eq ptr %564, null
  br i1 %565, label %570, label %566

566:                                              ; preds = %558
  %567 = getelementptr inbounds %struct.x264_weight_t, ptr %562, i64 2
  %568 = getelementptr inbounds ptr, ptr %564, i64 %344
  %569 = load ptr, ptr %568, align 8, !tbaa !42
  call void %569(ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %567, i32 noundef %345) #11
  br label %570

570:                                              ; preds = %566, %558
  %571 = load ptr, ptr %348, align 8, !tbaa !42
  %572 = load ptr, ptr %351, align 8, !tbaa !42
  %573 = call i32 %571(ptr noundef %572, i32 noundef 16, ptr noundef nonnull %7, i32 noundef 8) #11
  %574 = add nsw i32 %573, %556
  br label %575

575:                                              ; preds = %552, %570, %514
  %576 = phi i32 [ %574, %570 ], [ %556, %552 ], [ %536, %514 ]
  %577 = icmp slt i32 %576, %516
  br i1 %577, label %578, label %579

578:                                              ; preds = %575
  br label %579

579:                                              ; preds = %575, %578
  %580 = phi i32 [ 2, %578 ], [ %517, %575 ]
  %581 = phi i32 [ %576, %578 ], [ %516, %575 ]
  %582 = phi i32 [ %357, %578 ], [ %515, %575 ]
  %583 = phi i32 [ %520, %578 ], [ %356, %575 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #9
  %584 = icmp ne i32 %359, 2
  %585 = select i1 %216, i1 true, i1 %584
  br i1 %585, label %586, label %657

586:                                              ; preds = %512, %579
  %587 = phi i64 [ %513, %512 ], [ %532, %579 ]
  %588 = phi i32 [ %356, %512 ], [ %583, %579 ]
  %589 = phi i32 [ %509, %512 ], [ %582, %579 ]
  %590 = phi i32 [ %508, %512 ], [ %581, %579 ]
  %591 = phi i32 [ %507, %512 ], [ %580, %579 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #9
  store i32 16, ptr %15, align 4, !tbaa !15
  %592 = load ptr, ptr %332, align 8, !tbaa !48
  %593 = load i32, ptr %334, align 8, !tbaa !15
  %594 = add nsw i32 %356, 1
  %595 = load ptr, ptr %335, align 8, !tbaa !49
  %596 = call ptr %592(ptr noundef nonnull %7, ptr noundef nonnull %15, ptr noundef nonnull %333, i32 noundef %593, i32 noundef %594, i32 noundef %357, i32 noundef %20, i32 noundef %22, ptr noundef %595) #11
  %597 = load ptr, ptr %336, align 8, !tbaa !42
  %598 = load ptr, ptr %337, align 8, !tbaa !42
  %599 = load i32, ptr %15, align 4, !tbaa !15
  %600 = call i32 %597(ptr noundef %598, i32 noundef 16, ptr noundef %596, i32 noundef %599) #11
  %601 = sext i32 %594 to i64
  %602 = getelementptr inbounds i16, ptr %29, i64 %601
  %603 = load i16, ptr %602, align 2, !tbaa !45
  %604 = zext i16 %603 to i32
  %605 = add nsw i32 %600, %604
  %606 = getelementptr inbounds i16, ptr %34, i64 %587
  %607 = load i16, ptr %606, align 2, !tbaa !45
  %608 = zext i16 %607 to i32
  %609 = add nsw i32 %605, %608
  %610 = icmp slt i32 %609, %590
  %611 = select i1 %39, i1 %610, i1 false
  br i1 %611, label %612, label %648

612:                                              ; preds = %586
  %613 = load ptr, ptr %338, align 8, !tbaa !95
  %614 = load ptr, ptr %339, align 16, !tbaa !42
  %615 = load i32, ptr %340, align 4, !tbaa !15
  %616 = add nsw i32 %357, %53
  call void %613(ptr noundef nonnull %7, i32 noundef 8, ptr noundef %614, i32 noundef %615, i32 noundef %594, i32 noundef %616, i32 noundef %341, i32 noundef %342) #11
  %617 = load ptr, ptr %335, align 8, !tbaa !49
  %618 = getelementptr inbounds %struct.x264_weight_t, ptr %617, i64 1, i32 5
  %619 = load ptr, ptr %618, align 16, !tbaa !96
  %620 = icmp eq ptr %619, null
  br i1 %620, label %625, label %621

621:                                              ; preds = %612
  %622 = getelementptr inbounds %struct.x264_weight_t, ptr %617, i64 1
  %623 = getelementptr inbounds ptr, ptr %619, i64 %344
  %624 = load ptr, ptr %623, align 8, !tbaa !42
  call void %624(ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %622, i32 noundef %345) #11
  br label %625

625:                                              ; preds = %621, %612
  %626 = load ptr, ptr %348, align 8, !tbaa !42
  %627 = load ptr, ptr %349, align 8, !tbaa !42
  %628 = call i32 %626(ptr noundef %627, i32 noundef 16, ptr noundef nonnull %7, i32 noundef 8) #11
  %629 = add nsw i32 %628, %609
  %630 = icmp slt i32 %629, %590
  br i1 %630, label %631, label %648

631:                                              ; preds = %625
  %632 = load ptr, ptr %338, align 8, !tbaa !95
  %633 = load ptr, ptr %350, align 8, !tbaa !42
  %634 = load i32, ptr %340, align 4, !tbaa !15
  call void %632(ptr noundef nonnull %7, i32 noundef 8, ptr noundef %633, i32 noundef %634, i32 noundef %594, i32 noundef %616, i32 noundef %341, i32 noundef %342) #11
  %635 = load ptr, ptr %335, align 8, !tbaa !49
  %636 = getelementptr inbounds %struct.x264_weight_t, ptr %635, i64 2, i32 5
  %637 = load ptr, ptr %636, align 16, !tbaa !96
  %638 = icmp eq ptr %637, null
  br i1 %638, label %643, label %639

639:                                              ; preds = %631
  %640 = getelementptr inbounds %struct.x264_weight_t, ptr %635, i64 2
  %641 = getelementptr inbounds ptr, ptr %637, i64 %344
  %642 = load ptr, ptr %641, align 8, !tbaa !42
  call void %642(ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull %640, i32 noundef %345) #11
  br label %643

643:                                              ; preds = %639, %631
  %644 = load ptr, ptr %348, align 8, !tbaa !42
  %645 = load ptr, ptr %351, align 8, !tbaa !42
  %646 = call i32 %644(ptr noundef %645, i32 noundef 16, ptr noundef nonnull %7, i32 noundef 8) #11
  %647 = add nsw i32 %646, %629
  br label %648

648:                                              ; preds = %625, %643, %586
  %649 = phi i32 [ %647, %643 ], [ %629, %625 ], [ %609, %586 ]
  %650 = icmp slt i32 %649, %590
  br i1 %650, label %651, label %652

651:                                              ; preds = %648
  br label %652

652:                                              ; preds = %651, %648
  %653 = phi i32 [ 3, %651 ], [ %591, %648 ]
  %654 = phi i32 [ %649, %651 ], [ %590, %648 ]
  %655 = phi i32 [ %357, %651 ], [ %589, %648 ]
  %656 = phi i32 [ %594, %651 ], [ %588, %648 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #9
  br label %657

657:                                              ; preds = %579, %652
  %658 = phi i32 [ %653, %652 ], [ %580, %579 ]
  %659 = phi i32 [ %654, %652 ], [ %581, %579 ]
  %660 = phi i32 [ %655, %652 ], [ %582, %579 ]
  %661 = phi i32 [ %656, %652 ], [ %583, %579 ]
  %662 = icmp ne i32 %661, %356
  %663 = icmp ne i32 %660, %357
  %664 = or i1 %663, %662
  br i1 %664, label %352, label %760

665:                                              ; preds = %321
  %666 = load i32, ptr %326, align 4, !tbaa !15
  %667 = icmp sgt i32 %214, %666
  br i1 %667, label %668, label %760

668:                                              ; preds = %665
  %669 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21
  %670 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21, i64 1
  %671 = load i32, ptr %670, align 4, !tbaa !15
  %672 = icmp slt i32 %214, %671
  br i1 %672, label %673, label %760

673:                                              ; preds = %668
  %674 = load i32, ptr %325, align 8, !tbaa !15
  %675 = icmp sgt i32 %215, %674
  br i1 %675, label %676, label %760

676:                                              ; preds = %673
  %677 = load i32, ptr %669, align 16, !tbaa !15
  %678 = icmp slt i32 %215, %677
  br i1 %678, label %679, label %760

679:                                              ; preds = %676
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #9
  %680 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70
  %681 = load ptr, ptr %680, align 8, !tbaa !99
  %682 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5
  %683 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9
  %684 = load i32, ptr %683, align 8, !tbaa !15
  %685 = add nsw i32 %214, -1
  %686 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 4
  %687 = load ptr, ptr %686, align 8, !tbaa !49
  call void %681(ptr noundef nonnull %7, i32 noundef 64, ptr noundef nonnull %682, i32 noundef %684, i32 noundef %215, i32 noundef %685, i32 noundef %20, i32 noundef %22, ptr noundef %687) #11
  %688 = load ptr, ptr %680, align 8, !tbaa !99
  %689 = getelementptr inbounds i8, ptr %7, i64 16
  %690 = load i32, ptr %683, align 8, !tbaa !15
  %691 = add nsw i32 %214, 1
  %692 = load ptr, ptr %686, align 8, !tbaa !49
  call void %688(ptr noundef nonnull %689, i32 noundef 64, ptr noundef nonnull %682, i32 noundef %690, i32 noundef %215, i32 noundef %691, i32 noundef %20, i32 noundef %22, ptr noundef %692) #11
  %693 = load ptr, ptr %680, align 8, !tbaa !99
  %694 = getelementptr inbounds i8, ptr %7, i64 32
  %695 = load i32, ptr %683, align 8, !tbaa !15
  %696 = add nsw i32 %215, -1
  %697 = load ptr, ptr %686, align 8, !tbaa !49
  call void %693(ptr noundef nonnull %694, i32 noundef 64, ptr noundef nonnull %682, i32 noundef %695, i32 noundef %696, i32 noundef %214, i32 noundef %20, i32 noundef %22, ptr noundef %697) #11
  %698 = load ptr, ptr %680, align 8, !tbaa !99
  %699 = getelementptr inbounds i8, ptr %7, i64 48
  %700 = load i32, ptr %683, align 8, !tbaa !15
  %701 = add nsw i32 %215, 1
  %702 = load ptr, ptr %686, align 8, !tbaa !49
  call void %698(ptr noundef nonnull %699, i32 noundef 64, ptr noundef nonnull %682, i32 noundef %700, i32 noundef %701, i32 noundef %214, i32 noundef %20, i32 noundef %22, ptr noundef %702) #11
  %703 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 9, i64 %18
  %704 = load ptr, ptr %703, align 8, !tbaa !42
  %705 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7
  %706 = load ptr, ptr %705, align 8, !tbaa !42
  call void %704(ptr noundef %706, ptr noundef nonnull %7, ptr noundef nonnull %689, ptr noundef nonnull %694, ptr noundef nonnull %699, i32 noundef 64, ptr noundef nonnull %16) #11
  %707 = load i32, ptr %16, align 16, !tbaa !15
  %708 = sext i32 %215 to i64
  %709 = getelementptr inbounds i16, ptr %29, i64 %708
  %710 = load i16, ptr %709, align 2, !tbaa !45
  %711 = zext i16 %710 to i32
  %712 = add nsw i32 %707, %711
  %713 = sext i32 %685 to i64
  %714 = getelementptr inbounds i16, ptr %34, i64 %713
  %715 = load i16, ptr %714, align 2, !tbaa !45
  %716 = zext i16 %715 to i32
  %717 = add nsw i32 %712, %716
  %718 = icmp slt i32 %717, %308
  %719 = call i32 @llvm.smin.i32(i32 %717, i32 %308)
  %720 = select i1 %718, i32 %685, i32 %214
  %721 = getelementptr inbounds [4 x i32], ptr %16, i64 0, i64 1
  %722 = load i32, ptr %721, align 4, !tbaa !15
  %723 = add nsw i32 %722, %711
  %724 = sext i32 %691 to i64
  %725 = getelementptr inbounds i16, ptr %34, i64 %724
  %726 = load i16, ptr %725, align 2, !tbaa !45
  %727 = zext i16 %726 to i32
  %728 = add nsw i32 %723, %727
  %729 = icmp slt i32 %728, %719
  %730 = call i32 @llvm.smin.i32(i32 %728, i32 %719)
  %731 = select i1 %729, i32 %691, i32 %720
  %732 = getelementptr inbounds [4 x i32], ptr %16, i64 0, i64 2
  %733 = load i32, ptr %732, align 8, !tbaa !15
  %734 = sext i32 %696 to i64
  %735 = getelementptr inbounds i16, ptr %29, i64 %734
  %736 = load i16, ptr %735, align 2, !tbaa !45
  %737 = zext i16 %736 to i32
  %738 = add nsw i32 %733, %737
  %739 = sext i32 %214 to i64
  %740 = getelementptr inbounds i16, ptr %34, i64 %739
  %741 = load i16, ptr %740, align 2, !tbaa !45
  %742 = zext i16 %741 to i32
  %743 = add nsw i32 %738, %742
  %744 = icmp slt i32 %743, %730
  %745 = call i32 @llvm.smin.i32(i32 %743, i32 %730)
  %746 = select i1 %744, i32 %696, i32 %215
  %747 = getelementptr inbounds [4 x i32], ptr %16, i64 0, i64 3
  %748 = load i32, ptr %747, align 4, !tbaa !15
  %749 = sext i32 %701 to i64
  %750 = getelementptr inbounds i16, ptr %29, i64 %749
  %751 = load i16, ptr %750, align 2, !tbaa !45
  %752 = zext i16 %751 to i32
  %753 = add i32 %748, %742
  %754 = add i32 %753, %752
  %755 = icmp slt i32 %754, %745
  %756 = call i32 @llvm.smin.i32(i32 %754, i32 %745)
  %757 = select i1 %755, i1 true, i1 %744
  %758 = select i1 %757, i32 %214, i32 %731
  %759 = select i1 %755, i32 %701, i32 %746
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #9
  br label %760

760:                                              ; preds = %355, %363, %366, %369, %352, %657, %327, %665, %668, %673, %676, %679
  %761 = phi i32 [ %756, %679 ], [ %308, %676 ], [ %308, %673 ], [ %308, %668 ], [ %308, %665 ], [ %308, %327 ], [ %358, %355 ], [ %358, %363 ], [ %358, %366 ], [ %358, %369 ], [ %659, %352 ], [ %659, %657 ]
  %762 = phi i32 [ %758, %679 ], [ %214, %676 ], [ %214, %673 ], [ %214, %668 ], [ %214, %665 ], [ %214, %327 ], [ %357, %355 ], [ %357, %363 ], [ %357, %366 ], [ %357, %369 ], [ %660, %352 ], [ %357, %657 ]
  %763 = phi i32 [ %759, %679 ], [ %215, %676 ], [ %215, %673 ], [ %215, %668 ], [ %215, %665 ], [ %215, %327 ], [ %356, %355 ], [ %356, %363 ], [ %356, %366 ], [ %356, %369 ], [ %661, %352 ], [ %356, %657 ]
  store i32 %761, ptr %60, align 8, !tbaa !87
  %764 = trunc i32 %763 to i16
  store i16 %764, ptr %54, align 4, !tbaa !45
  %765 = trunc i32 %762 to i16
  store i16 %765, ptr %57, align 2, !tbaa !45
  %766 = sext i32 %763 to i64
  %767 = getelementptr inbounds i16, ptr %29, i64 %766
  %768 = load i16, ptr %767, align 2, !tbaa !45
  %769 = zext i16 %768 to i32
  %770 = sext i32 %762 to i64
  %771 = getelementptr inbounds i16, ptr %34, i64 %770
  %772 = load i16, ptr %771, align 2, !tbaa !45
  %773 = zext i16 %772 to i32
  %774 = add nuw nsw i32 %773, %769
  %775 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 11
  store i32 %774, ptr %775, align 4, !tbaa !86
  br label %776

776:                                              ; preds = %760, %315
  call void @llvm.lifetime.end.p0(i64 1152, ptr nonnull %7) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_me_refine_qpel(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 10
  %4 = load i32, ptr %3, align 8, !tbaa !47
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [11 x [4 x i8]], ptr @subpel_iterations, i64 0, i64 %5
  %7 = load i8, ptr %6, align 4, !tbaa !52
  %8 = getelementptr inbounds [11 x [4 x i8]], ptr @subpel_iterations, i64 0, i64 %5, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !52
  %10 = load i32, ptr %1, align 16, !tbaa !6
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 16, !tbaa !100
  %15 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 12
  %16 = load i32, ptr %15, align 8, !tbaa !87
  %17 = sub nsw i32 %16, %14
  store i32 %17, ptr %15, align 8, !tbaa !87
  br label %18

18:                                               ; preds = %12, %2
  %19 = zext i8 %9 to i32
  %20 = zext i8 %7 to i32
  tail call fastcc void @refine_subpel(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %20, i32 noundef %19, ptr noundef null, i32 noundef 1) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_me_refine_qpel_refdupe(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !47
  %6 = sext i32 %5 to i64
  %7 = add nsw i64 %6, -8
  %8 = icmp ult i64 %7, 3
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds [11 x [4 x i8]], ptr @subpel_iterations, i64 0, i64 %6, i64 3
  %11 = load i8, ptr %10, align 1, !tbaa !52
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %3, %9
  %14 = phi i32 [ %12, %9 ], [ 2, %3 ]
  tail call fastcc void @refine_subpel(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef %14, ptr noundef %2, i32 noundef 0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_me_refine_bidir_satd(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @x264_me_refine_bidir(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_me_refine_bidir(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
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
  %18 = load i32, ptr %17, align 16, !tbaa !15
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [40 x [2 x i16]], ptr %14, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 1, i64 %19
  %22 = load i32, ptr %1, align 16, !tbaa !6
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %23
  %25 = load i32, ptr %24, align 8, !tbaa !12
  %26 = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %23, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4608, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 1152, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 1152, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %11) #9
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %29 = load ptr, ptr %28, align 16, !tbaa !42
  %30 = ashr i32 %4, 1
  %31 = shl nsw i32 %30, 8
  %32 = and i32 %4, 1
  %33 = shl nuw nsw i32 %32, 3
  %34 = or disjoint i32 %31, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %29, i64 %35
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !42
  %39 = shl nsw i32 %30, 7
  %40 = shl nuw nsw i32 %32, 2
  %41 = or disjoint i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %38, i64 %42
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %45 = load ptr, ptr %44, align 16, !tbaa !42
  %46 = getelementptr inbounds i8, ptr %45, i64 %42
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3
  %48 = getelementptr inbounds [40 x i8], ptr %47, i64 0, i64 %19
  %49 = load i8, ptr %48, align 1, !tbaa !52
  %50 = sext i8 %49 to i32
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 1, i64 %19
  %52 = load i8, ptr %51, align 1, !tbaa !52
  %53 = sext i8 %52 to i32
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %55 = load i32, ptr %54, align 4, !tbaa !91
  %56 = and i32 %55, %50
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %7
  %59 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %60 = load i32, ptr %59, align 4, !tbaa !93
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
  %70 = load i32, ptr %69, align 4, !tbaa !93
  %71 = shl i32 %70, 2
  %72 = and i32 %71, 4
  %73 = add nsw i32 %72, -2
  br label %74

74:                                               ; preds = %64, %68
  %75 = phi i32 [ %73, %68 ], [ 0, %64 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %12) #9
  %76 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 13
  %77 = load i16, ptr %76, align 4, !tbaa !45
  %78 = sext i16 %77 to i32
  %79 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 13, i64 1
  %80 = load i16, ptr %79, align 2, !tbaa !45
  %81 = sext i16 %80 to i32
  %82 = getelementptr inbounds %struct.x264_me_t, ptr %2, i64 0, i32 13
  %83 = load i16, ptr %82, align 4, !tbaa !45
  %84 = sext i16 %83 to i32
  %85 = getelementptr inbounds %struct.x264_me_t, ptr %2, i64 0, i32 13, i64 1
  %86 = load i16, ptr %85, align 2, !tbaa !45
  %87 = sext i16 %86 to i32
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %13) #9
  %88 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 20
  %89 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 20, i64 1
  %90 = load i32, ptr %89, align 4, !tbaa !15
  %91 = add nsw i32 %90, 8
  %92 = icmp sgt i32 %91, %81
  %93 = icmp sgt i32 %91, %87
  %94 = select i1 %92, i1 true, i1 %93
  br i1 %94, label %461, label %95

95:                                               ; preds = %74
  %96 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21
  %97 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21, i64 1
  %98 = load i32, ptr %97, align 4, !tbaa !15
  %99 = add nsw i32 %98, -8
  %100 = icmp slt i32 %99, %81
  %101 = icmp slt i32 %99, %87
  %102 = select i1 %100, i1 true, i1 %101
  br i1 %102, label %461, label %103

103:                                              ; preds = %95
  %104 = load i32, ptr %88, align 8, !tbaa !15
  %105 = add nsw i32 %104, 8
  %106 = icmp sgt i32 %105, %78
  %107 = icmp sgt i32 %105, %84
  %108 = select i1 %106, i1 true, i1 %107
  br i1 %108, label %461, label %109

109:                                              ; preds = %103
  %110 = load i32, ptr %96, align 16, !tbaa !15
  %111 = add nsw i32 %110, -8
  %112 = icmp slt i32 %111, %78
  %113 = icmp slt i32 %111, %84
  %114 = select i1 %112, i1 true, i1 %113
  br i1 %114, label %461, label %115

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
  tail call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %15, i32 noundef %122, ptr noundef nonnull %123) #11
  %124 = getelementptr inbounds %struct.x264_me_t, ptr %2, i64 0, i32 10
  tail call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %15, i32 noundef %122, ptr noundef nonnull %124) #11
  br label %125

125:                                              ; preds = %121, %117, %115
  %126 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !44
  %128 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 10
  %129 = load i16, ptr %128, align 16, !tbaa !45
  %130 = sext i16 %129 to i64
  %131 = sub nsw i64 0, %130
  %132 = getelementptr inbounds i16, ptr %127, i64 %131
  %133 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 10, i64 1
  %134 = load i16, ptr %133, align 2, !tbaa !45
  %135 = sext i16 %134 to i64
  %136 = sub nsw i64 0, %135
  %137 = getelementptr inbounds i16, ptr %127, i64 %136
  %138 = getelementptr inbounds %struct.x264_me_t, ptr %2, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !44
  %140 = getelementptr inbounds %struct.x264_me_t, ptr %2, i64 0, i32 10
  %141 = load i16, ptr %140, align 16, !tbaa !45
  %142 = sext i16 %141 to i64
  %143 = sub nsw i64 0, %142
  %144 = getelementptr inbounds i16, ptr %139, i64 %143
  %145 = getelementptr inbounds %struct.x264_me_t, ptr %2, i64 0, i32 10, i64 1
  %146 = load i16, ptr %145, align 2, !tbaa !45
  %147 = sext i16 %146 to i64
  %148 = sub nsw i64 0, %147
  %149 = getelementptr inbounds i16, ptr %139, i64 %148
  %150 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 11
  %151 = load ptr, ptr %150, align 8, !tbaa !101
  call void %151(ptr noundef nonnull %13, i32 noundef 512) #11
  %152 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 1
  %153 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5
  %154 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9
  %155 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %156 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 4
  %157 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9, i64 1
  %158 = ashr i32 %25, 1
  %159 = ashr i32 %27, 1
  %160 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 5
  %161 = getelementptr inbounds %struct.x264_me_t, ptr %2, i64 0, i32 5
  %162 = getelementptr inbounds %struct.x264_me_t, ptr %2, i64 0, i32 9
  %163 = getelementptr inbounds %struct.x264_me_t, ptr %2, i64 0, i32 5, i64 4
  %164 = getelementptr inbounds %struct.x264_me_t, ptr %2, i64 0, i32 9, i64 1
  %165 = getelementptr inbounds %struct.x264_me_t, ptr %2, i64 0, i32 5, i64 5
  %166 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 3, i64 %23
  %167 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 5, i64 %23
  %168 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7
  %169 = add nsw i32 %22, 3
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 3, i64 %170
  br label %172

172:                                              ; preds = %125, %396
  %173 = phi i32 [ %78, %125 ], [ %401, %396 ]
  %174 = phi i32 [ %81, %125 ], [ %405, %396 ]
  %175 = phi i32 [ %84, %125 ], [ %409, %396 ]
  %176 = phi i32 [ %87, %125 ], [ %413, %396 ]
  %177 = phi i32 [ 268435456, %125 ], [ %393, %396 ]
  %178 = phi i32 [ 1, %125 ], [ %415, %396 ]
  %179 = phi i32 [ 1, %125 ], [ %417, %396 ]
  %180 = phi i64 [ 1152921504606846976, %125 ], [ %392, %396 ]
  %181 = phi i32 [ 0, %125 ], [ %418, %396 ]
  %182 = icmp ne i32 %178, 0
  %183 = load i32, ptr @x264_iter_kludge, align 4
  %184 = icmp slt i32 %183, 9
  %185 = select i1 %182, i1 %184, i1 false
  br i1 %185, label %186, label %224

186:                                              ; preds = %172
  %187 = sext i32 %183 to i64
  br label %188

188:                                              ; preds = %186, %218
  %189 = phi i64 [ %187, %186 ], [ %219, %218 ]
  %190 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %189
  %191 = load i8, ptr %190, align 2, !tbaa !52
  %192 = sext i8 %191 to i32
  %193 = mul nsw i32 %192, 3
  %194 = add nsw i32 %193, 4
  %195 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %189, i64 1
  %196 = load i8, ptr %195, align 1, !tbaa !52
  %197 = sext i8 %196 to i32
  %198 = add nsw i32 %194, %197
  %199 = add nsw i32 %173, %192
  %200 = add nsw i32 %174, %197
  %201 = sext i32 %198 to i64
  %202 = getelementptr inbounds [9 x i32], ptr %12, i64 0, i64 %201
  store i32 %25, ptr %202, align 4, !tbaa !15
  %203 = load ptr, ptr %152, align 8, !tbaa !48
  %204 = getelementptr inbounds [9 x [256 x i8]], ptr %8, i64 0, i64 %201
  %205 = load i32, ptr %154, align 8, !tbaa !15
  %206 = call ptr %203(ptr noundef nonnull %204, ptr noundef nonnull %202, ptr noundef nonnull %153, i32 noundef %205, i32 noundef %199, i32 noundef %200, i32 noundef %25, i32 noundef %27, ptr noundef nonnull @weight_none) #11
  %207 = getelementptr inbounds [9 x ptr], ptr %11, i64 0, i64 %201
  store ptr %206, ptr %207, align 8, !tbaa !42
  br i1 %116, label %218, label %208

208:                                              ; preds = %188
  %209 = load ptr, ptr %155, align 8, !tbaa !95
  %210 = getelementptr inbounds [9 x [64 x i8]], ptr %9, i64 0, i64 %201
  %211 = load ptr, ptr %156, align 16, !tbaa !42
  %212 = load i32, ptr %157, align 4, !tbaa !15
  %213 = add nsw i32 %200, %65
  call void %209(ptr noundef nonnull %210, i32 noundef 8, ptr noundef %211, i32 noundef %212, i32 noundef %199, i32 noundef %213, i32 noundef %158, i32 noundef %159) #11
  %214 = load ptr, ptr %155, align 8, !tbaa !95
  %215 = getelementptr inbounds [9 x [64 x i8]], ptr %10, i64 0, i64 %201
  %216 = load ptr, ptr %160, align 8, !tbaa !42
  %217 = load i32, ptr %157, align 4, !tbaa !15
  call void %214(ptr noundef nonnull %215, i32 noundef 8, ptr noundef %216, i32 noundef %217, i32 noundef %199, i32 noundef %213, i32 noundef %158, i32 noundef %159) #11
  br label %218

218:                                              ; preds = %208, %188
  %219 = add nsw i64 %189, 1
  %220 = and i64 %219, 4294967295
  %221 = icmp eq i64 %220, 9
  br i1 %221, label %222, label %188, !llvm.loop !102

222:                                              ; preds = %218
  %223 = load i32, ptr @x264_iter_kludge, align 4
  br label %224

224:                                              ; preds = %222, %172
  %225 = phi i32 [ %223, %222 ], [ %183, %172 ]
  %226 = icmp ne i32 %179, 0
  %227 = icmp slt i32 %225, 9
  %228 = select i1 %226, i1 %227, i1 false
  br i1 %228, label %229, label %265

229:                                              ; preds = %224
  %230 = sext i32 %225 to i64
  br label %231

231:                                              ; preds = %229, %261
  %232 = phi i64 [ %230, %229 ], [ %262, %261 ]
  %233 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %232
  %234 = load i8, ptr %233, align 2, !tbaa !52
  %235 = sext i8 %234 to i32
  %236 = mul nsw i32 %235, 3
  %237 = add nsw i32 %236, 4
  %238 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %232, i64 1
  %239 = load i8, ptr %238, align 1, !tbaa !52
  %240 = sext i8 %239 to i32
  %241 = add nsw i32 %237, %240
  %242 = add nsw i32 %175, %235
  %243 = add nsw i32 %176, %240
  %244 = sext i32 %241 to i64
  %245 = getelementptr inbounds [2 x [9 x i32]], ptr %12, i64 0, i64 1, i64 %244
  store i32 %25, ptr %245, align 4, !tbaa !15
  %246 = load ptr, ptr %152, align 8, !tbaa !48
  %247 = getelementptr inbounds [2 x [9 x [256 x i8]]], ptr %8, i64 0, i64 1, i64 %244
  %248 = load i32, ptr %162, align 8, !tbaa !15
  %249 = call ptr %246(ptr noundef nonnull %247, ptr noundef nonnull %245, ptr noundef nonnull %161, i32 noundef %248, i32 noundef %242, i32 noundef %243, i32 noundef %25, i32 noundef %27, ptr noundef nonnull @weight_none) #11
  %250 = getelementptr inbounds [2 x [9 x ptr]], ptr %11, i64 0, i64 1, i64 %244
  store ptr %249, ptr %250, align 8, !tbaa !42
  br i1 %116, label %261, label %251

251:                                              ; preds = %231
  %252 = load ptr, ptr %155, align 8, !tbaa !95
  %253 = getelementptr inbounds [2 x [9 x [64 x i8]]], ptr %9, i64 0, i64 1, i64 %244
  %254 = load ptr, ptr %163, align 16, !tbaa !42
  %255 = load i32, ptr %164, align 4, !tbaa !15
  %256 = add nsw i32 %243, %75
  call void %252(ptr noundef nonnull %253, i32 noundef 8, ptr noundef %254, i32 noundef %255, i32 noundef %242, i32 noundef %256, i32 noundef %158, i32 noundef %159) #11
  %257 = load ptr, ptr %155, align 8, !tbaa !95
  %258 = getelementptr inbounds [2 x [9 x [64 x i8]]], ptr %10, i64 0, i64 1, i64 %244
  %259 = load ptr, ptr %165, align 8, !tbaa !42
  %260 = load i32, ptr %164, align 4, !tbaa !15
  call void %257(ptr noundef nonnull %258, i32 noundef 8, ptr noundef %259, i32 noundef %260, i32 noundef %242, i32 noundef %256, i32 noundef %158, i32 noundef %159) #11
  br label %261

261:                                              ; preds = %251, %231
  %262 = add nsw i64 %232, 1
  %263 = and i64 %262, 4294967295
  %264 = icmp eq i64 %263, 9
  br i1 %264, label %265, label %231, !llvm.loop !103

265:                                              ; preds = %261, %224
  %266 = icmp ne i32 %181, 0
  %267 = zext i1 %266 to i64
  br label %270

268:                                              ; preds = %390
  %269 = icmp eq i32 %391, 0
  br i1 %269, label %420, label %396

270:                                              ; preds = %265, %390
  %271 = phi i64 [ %267, %265 ], [ %394, %390 ]
  %272 = phi i32 [ %177, %265 ], [ %393, %390 ]
  %273 = phi i64 [ %180, %265 ], [ %392, %390 ]
  %274 = phi i32 [ 0, %265 ], [ %391, %390 ]
  %275 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %271
  %276 = load i8, ptr %275, align 4, !tbaa !52
  %277 = sext i8 %276 to i32
  %278 = add nsw i32 %173, %277
  %279 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %271, i64 1
  %280 = load i8, ptr %279, align 1, !tbaa !52
  %281 = sext i8 %280 to i32
  %282 = add nsw i32 %174, %281
  %283 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %271, i64 2
  %284 = load i8, ptr %283, align 2, !tbaa !52
  %285 = sext i8 %284 to i32
  %286 = add nsw i32 %175, %285
  %287 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %271, i64 3
  %288 = load i8, ptr %287, align 1, !tbaa !52
  %289 = sext i8 %288 to i32
  %290 = add nsw i32 %176, %289
  br i1 %266, label %300, label %291

291:                                              ; preds = %270
  %292 = and i32 %290, 7
  %293 = shl nuw nsw i32 1, %292
  %294 = and i32 %278, 7
  %295 = zext nneg i32 %294 to i64
  %296 = and i32 %282, 7
  %297 = zext nneg i32 %296 to i64
  %298 = and i32 %286, 7
  %299 = zext nneg i32 %298 to i64
  br label %314

300:                                              ; preds = %270
  %301 = and i32 %278, 7
  %302 = zext nneg i32 %301 to i64
  %303 = and i32 %282, 7
  %304 = zext nneg i32 %303 to i64
  %305 = and i32 %286, 7
  %306 = zext nneg i32 %305 to i64
  %307 = getelementptr inbounds [8 x [8 x [8 x i8]]], ptr %13, i64 0, i64 %302, i64 %304, i64 %306
  %308 = load i8, ptr %307, align 1, !tbaa !52
  %309 = zext i8 %308 to i32
  %310 = and i32 %290, 7
  %311 = shl nuw nsw i32 1, %310
  %312 = and i32 %311, %309
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %390

314:                                              ; preds = %291, %300
  %315 = phi i64 [ %299, %291 ], [ %306, %300 ]
  %316 = phi i64 [ %297, %291 ], [ %304, %300 ]
  %317 = phi i64 [ %295, %291 ], [ %302, %300 ]
  %318 = phi i32 [ %293, %291 ], [ %311, %300 ]
  %319 = sext i8 %276 to i64
  %320 = mul nsw i64 %319, 3
  %321 = add nsw i64 %320, 4
  %322 = sext i8 %280 to i64
  %323 = add nsw i64 %321, %322
  %324 = sext i8 %284 to i64
  %325 = mul nsw i64 %324, 3
  %326 = add nsw i64 %325, 4
  %327 = sext i8 %288 to i64
  %328 = add nsw i64 %326, %327
  %329 = getelementptr inbounds [8 x [8 x [8 x i8]]], ptr %13, i64 0, i64 %317, i64 %316, i64 %315
  %330 = load i8, ptr %329, align 1, !tbaa !52
  %331 = trunc i32 %318 to i8
  %332 = or i8 %330, %331
  store i8 %332, ptr %329, align 1, !tbaa !52
  %333 = load ptr, ptr %166, align 8, !tbaa !42
  %334 = getelementptr inbounds [9 x ptr], ptr %11, i64 0, i64 %323
  %335 = load ptr, ptr %334, align 8, !tbaa !42
  %336 = getelementptr inbounds [9 x i32], ptr %12, i64 0, i64 %323
  %337 = load i32, ptr %336, align 4, !tbaa !15
  %338 = getelementptr inbounds [2 x [9 x ptr]], ptr %11, i64 0, i64 1, i64 %328
  %339 = load ptr, ptr %338, align 8, !tbaa !42
  %340 = getelementptr inbounds [2 x [9 x i32]], ptr %12, i64 0, i64 1, i64 %328
  %341 = load i32, ptr %340, align 4, !tbaa !15
  call void %333(ptr noundef %36, i32 noundef 32, ptr noundef %335, i32 noundef %337, ptr noundef %339, i32 noundef %341, i32 noundef %3) #11
  %342 = load ptr, ptr %167, align 8, !tbaa !42
  %343 = load ptr, ptr %168, align 8, !tbaa !42
  %344 = call i32 %342(ptr noundef %343, i32 noundef 16, ptr noundef %36, i32 noundef 32) #11
  %345 = sext i32 %278 to i64
  %346 = getelementptr inbounds i16, ptr %132, i64 %345
  %347 = load i16, ptr %346, align 2, !tbaa !45
  %348 = zext i16 %347 to i32
  %349 = add nsw i32 %344, %348
  %350 = sext i32 %282 to i64
  %351 = getelementptr inbounds i16, ptr %137, i64 %350
  %352 = load i16, ptr %351, align 2, !tbaa !45
  %353 = zext i16 %352 to i32
  %354 = add nsw i32 %349, %353
  %355 = sext i32 %286 to i64
  %356 = getelementptr inbounds i16, ptr %144, i64 %355
  %357 = load i16, ptr %356, align 2, !tbaa !45
  %358 = zext i16 %357 to i32
  %359 = add nsw i32 %354, %358
  %360 = sext i32 %290 to i64
  %361 = getelementptr inbounds i16, ptr %149, i64 %360
  %362 = load i16, ptr %361, align 2, !tbaa !45
  %363 = zext i16 %362 to i32
  %364 = add nsw i32 %359, %363
  br i1 %116, label %385, label %365

365:                                              ; preds = %314
  %366 = mul nsw i32 %272, 17
  %367 = sdiv i32 %366, 16
  %368 = icmp slt i32 %364, %367
  br i1 %368, label %369, label %390

369:                                              ; preds = %365
  %370 = call i32 @llvm.smin.i32(i32 %364, i32 %272)
  %371 = call fastcc i32 @pack16to32_mask(i32 noundef %278, i32 noundef %282) #10
  store i32 %371, ptr %20, align 4, !tbaa !52
  %372 = call fastcc i32 @pack16to32_mask(i32 noundef %286, i32 noundef %290) #10
  store i32 %372, ptr %21, align 4, !tbaa !52
  %373 = load ptr, ptr %171, align 8, !tbaa !42
  %374 = getelementptr inbounds [9 x [64 x i8]], ptr %9, i64 0, i64 %323
  %375 = getelementptr inbounds [2 x [9 x [64 x i8]]], ptr %9, i64 0, i64 1, i64 %328
  call void %373(ptr noundef %43, i32 noundef 32, ptr noundef nonnull %374, i32 noundef 8, ptr noundef nonnull %375, i32 noundef 8, i32 noundef %3) #11
  %376 = load ptr, ptr %171, align 8, !tbaa !42
  %377 = getelementptr inbounds [9 x [64 x i8]], ptr %10, i64 0, i64 %323
  %378 = getelementptr inbounds [2 x [9 x [64 x i8]]], ptr %10, i64 0, i64 1, i64 %328
  call void %376(ptr noundef %46, i32 noundef 32, ptr noundef nonnull %377, i32 noundef 8, ptr noundef nonnull %378, i32 noundef 8, i32 noundef %3) #11
  %379 = load i32, ptr %1, align 16, !tbaa !6
  %380 = call i64 @x264_rd_cost_part(ptr noundef nonnull %0, i32 noundef %5, i32 noundef %15, i32 noundef %379) #11
  %381 = icmp ult i64 %380, %273
  %382 = trunc i64 %271 to i32
  %383 = select i1 %381, i32 %382, i32 %274
  %384 = call i64 @llvm.umin.i64(i64 %380, i64 %273)
  br label %390

385:                                              ; preds = %314
  %386 = icmp slt i32 %364, %272
  %387 = trunc i64 %271 to i32
  %388 = select i1 %386, i32 %387, i32 %274
  %389 = call i32 @llvm.smin.i32(i32 %364, i32 %272)
  br label %390

390:                                              ; preds = %385, %369, %365, %300
  %391 = phi i32 [ %274, %300 ], [ %383, %369 ], [ %274, %365 ], [ %388, %385 ]
  %392 = phi i64 [ %273, %300 ], [ %384, %369 ], [ %273, %365 ], [ %273, %385 ]
  %393 = phi i32 [ %272, %300 ], [ %370, %369 ], [ %272, %365 ], [ %389, %385 ]
  %394 = add nuw nsw i64 %271, 1
  %395 = icmp eq i64 %394, 33
  br i1 %395, label %268, label %270, !llvm.loop !104

396:                                              ; preds = %268
  %397 = sext i32 %391 to i64
  %398 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %397
  %399 = load i8, ptr %398, align 4, !tbaa !52
  %400 = sext i8 %399 to i32
  %401 = add nsw i32 %173, %400
  %402 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %397, i64 1
  %403 = load i8, ptr %402, align 1, !tbaa !52
  %404 = sext i8 %403 to i32
  %405 = add nsw i32 %174, %404
  %406 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %397, i64 2
  %407 = load i8, ptr %406, align 2, !tbaa !52
  %408 = sext i8 %407 to i32
  %409 = add nsw i32 %175, %408
  %410 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %397, i64 3
  %411 = load i8, ptr %410, align 1, !tbaa !52
  %412 = sext i8 %411 to i32
  %413 = add nsw i32 %176, %412
  %414 = load i16, ptr %398, align 4, !tbaa !52
  %415 = zext i16 %414 to i32
  %416 = load i16, ptr %406, align 2, !tbaa !52
  %417 = zext i16 %416 to i32
  %418 = add nuw nsw i32 %181, 1
  %419 = icmp eq i32 %418, 8
  br i1 %419, label %420, label %172, !llvm.loop !105

420:                                              ; preds = %268, %396
  %421 = phi i32 [ %176, %268 ], [ %413, %396 ]
  %422 = phi i32 [ %175, %268 ], [ %409, %396 ]
  %423 = phi i32 [ %174, %268 ], [ %405, %396 ]
  %424 = phi i32 [ %173, %268 ], [ %401, %396 ]
  br i1 %116, label %456, label %425

425:                                              ; preds = %420
  %426 = shl nuw nsw i32 %32, 1
  %427 = and i32 %4, -2
  %428 = ashr i32 %25, 2
  %429 = ashr i32 %27, 2
  %430 = call fastcc i32 @pack16to32_mask(i32 noundef %424, i32 noundef %423) #10
  call fastcc void @x264_macroblock_cache_mv(ptr noundef %0, i32 noundef %426, i32 noundef %427, i32 noundef %428, i32 noundef %429, i32 noundef 0, i32 noundef %430) #10
  %431 = load i16, ptr %128, align 16, !tbaa !45
  %432 = sext i16 %431 to i32
  %433 = sub nsw i32 %424, %432
  %434 = call i32 @llvm.abs.i32(i32 %433, i1 true)
  %435 = call i32 @llvm.umin.i32(i32 %434, i32 33)
  %436 = load i16, ptr %133, align 2, !tbaa !45
  %437 = sext i16 %436 to i32
  %438 = sub nsw i32 %423, %437
  %439 = call i32 @llvm.abs.i32(i32 %438, i1 true)
  %440 = call i32 @llvm.umin.i32(i32 %439, i32 33)
  %441 = call fastcc i32 @pack8to16(i32 noundef %435, i32 noundef %440) #10, !range !106
  %442 = trunc i32 %441 to i16
  call fastcc void @x264_macroblock_cache_mvd(ptr noundef %0, i32 noundef %426, i32 noundef %427, i32 noundef %428, i32 noundef %429, i32 noundef 0, i16 noundef zeroext %442) #10
  %443 = call fastcc i32 @pack16to32_mask(i32 noundef %422, i32 noundef %421) #10
  call fastcc void @x264_macroblock_cache_mv(ptr noundef %0, i32 noundef %426, i32 noundef %427, i32 noundef %428, i32 noundef %429, i32 noundef 1, i32 noundef %443) #10
  %444 = load i16, ptr %140, align 16, !tbaa !45
  %445 = sext i16 %444 to i32
  %446 = sub nsw i32 %422, %445
  %447 = call i32 @llvm.abs.i32(i32 %446, i1 true)
  %448 = call i32 @llvm.umin.i32(i32 %447, i32 33)
  %449 = load i16, ptr %145, align 2, !tbaa !45
  %450 = sext i16 %449 to i32
  %451 = sub nsw i32 %421, %450
  %452 = call i32 @llvm.abs.i32(i32 %451, i1 true)
  %453 = call i32 @llvm.umin.i32(i32 %452, i32 33)
  %454 = call fastcc i32 @pack8to16(i32 noundef %448, i32 noundef %453) #10, !range !106
  %455 = trunc i32 %454 to i16
  call fastcc void @x264_macroblock_cache_mvd(ptr noundef %0, i32 noundef %426, i32 noundef %427, i32 noundef %428, i32 noundef %429, i32 noundef 1, i16 noundef zeroext %455) #10
  br label %456

456:                                              ; preds = %425, %420
  %457 = trunc i32 %424 to i16
  store i16 %457, ptr %76, align 4, !tbaa !45
  %458 = trunc i32 %423 to i16
  store i16 %458, ptr %79, align 2, !tbaa !45
  %459 = trunc i32 %422 to i16
  store i16 %459, ptr %82, align 4, !tbaa !45
  %460 = trunc i32 %421 to i16
  store i16 %460, ptr %85, align 2, !tbaa !45
  br label %461

461:                                              ; preds = %74, %95, %103, %109, %456
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 1152, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 1152, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 4608, ptr nonnull %8) #9
  ret void
}

; Function Attrs: optsize
declare void @x264_mb_predict_mv(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i64 @x264_rd_cost_part(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define internal fastcc void @x264_macroblock_cache_mv(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #7 {
  %8 = sext i32 %5 to i64
  %9 = add nuw nsw i32 %1, 12
  %10 = shl nsw i32 %2, 3
  %11 = add nsw i32 %9, %10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %8, i64 %12
  %14 = shl nsw i32 %3, 2
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef nonnull %13, i32 noundef %14, i32 noundef %4, i32 noundef 4, i32 noundef %6) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @pack8to16(i32 noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = shl nuw nsw i32 %1, 8
  %4 = add nuw nsw i32 %3, %0
  ret i32 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define internal fastcc void @x264_macroblock_cache_mvd(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i16 noundef zeroext %6) unnamed_addr #7 {
  %8 = sext i32 %5 to i64
  %9 = add nuw nsw i32 %1, 12
  %10 = shl nsw i32 %2, 3
  %11 = add nsw i32 %9, %10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 5, i64 %8, i64 %12
  %14 = shl nsw i32 %3, 1
  %15 = zext nneg i16 %6 to i32
  tail call fastcc void @x264_macroblock_cache_rect(ptr noundef nonnull %13, i32 noundef %14, i32 noundef %4, i32 noundef 2, i32 noundef %15) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define internal fastcc void @x264_macroblock_cache_rect(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #7 {
  %6 = icmp eq i32 %3, 2
  %7 = mul i32 %4, 257
  %8 = select i1 %6, i32 %4, i32 %7
  %9 = trunc i32 %8 to i16
  %10 = icmp eq i32 %3, 4
  %11 = select i1 %6, i32 65537, i32 16843009
  %12 = select i1 %10, i32 1, i32 %11
  %13 = mul i32 %12, %4
  %14 = zext i32 %13 to i64
  %15 = mul nuw i64 %14, 4294967297
  %16 = shl nuw nsw i32 %3, 3
  %17 = add i32 %1, -2
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 31)
  switch i32 %18, label %71 [
    i32 0, label %23
    i32 1, label %36
    i32 3, label %49
    i32 7, label %19
  ]

19:                                               ; preds = %5
  %20 = zext nneg i32 %16 to i64
  %21 = shl nuw nsw i32 %3, 4
  %22 = zext nneg i32 %21 to i64
  br label %62

23:                                               ; preds = %5
  store i16 %9, ptr %0, align 2, !tbaa !52
  %24 = icmp eq i32 %2, 1
  br i1 %24, label %71, label %25

25:                                               ; preds = %23
  %26 = zext nneg i32 %16 to i64
  %27 = getelementptr inbounds i8, ptr %0, i64 %26
  store i16 %9, ptr %27, align 2, !tbaa !52
  %28 = icmp eq i32 %2, 2
  br i1 %28, label %71, label %29

29:                                               ; preds = %25
  %30 = shl nuw nsw i32 %3, 4
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr inbounds i8, ptr %0, i64 %31
  store i16 %9, ptr %32, align 2, !tbaa !52
  %33 = mul nuw nsw i32 %3, 24
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %0, i64 %34
  store i16 %9, ptr %35, align 2, !tbaa !52
  br label %71

36:                                               ; preds = %5
  store i32 %13, ptr %0, align 4, !tbaa !52
  %37 = icmp eq i32 %2, 1
  br i1 %37, label %71, label %38

38:                                               ; preds = %36
  %39 = zext nneg i32 %16 to i64
  %40 = getelementptr inbounds i8, ptr %0, i64 %39
  store i32 %13, ptr %40, align 4, !tbaa !52
  %41 = icmp eq i32 %2, 2
  br i1 %41, label %71, label %42

42:                                               ; preds = %38
  %43 = shl nuw nsw i32 %3, 4
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %0, i64 %44
  store i32 %13, ptr %45, align 4, !tbaa !52
  %46 = mul nuw nsw i32 %3, 24
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %0, i64 %47
  store i32 %13, ptr %48, align 4, !tbaa !52
  br label %71

49:                                               ; preds = %5
  store i64 %15, ptr %0, align 8, !tbaa !52
  %50 = icmp eq i32 %2, 1
  br i1 %50, label %71, label %51

51:                                               ; preds = %49
  %52 = zext nneg i32 %16 to i64
  %53 = getelementptr inbounds i8, ptr %0, i64 %52
  store i64 %15, ptr %53, align 8, !tbaa !52
  %54 = icmp eq i32 %2, 2
  br i1 %54, label %71, label %55

55:                                               ; preds = %51
  %56 = shl nuw nsw i32 %3, 4
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %0, i64 %57
  store i64 %15, ptr %58, align 8, !tbaa !52
  %59 = mul nuw nsw i32 %3, 24
  %60 = zext nneg i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %0, i64 %60
  store i64 %15, ptr %61, align 8, !tbaa !52
  br label %71

62:                                               ; preds = %19, %62
  %63 = phi ptr [ %69, %62 ], [ %0, %19 ]
  %64 = phi i32 [ %68, %62 ], [ %2, %19 ]
  store i64 %15, ptr %63, align 8, !tbaa !52
  %65 = getelementptr inbounds i8, ptr %63, i64 8
  store i64 %15, ptr %65, align 8, !tbaa !52
  %66 = getelementptr inbounds i8, ptr %63, i64 %20
  store i64 %15, ptr %66, align 8, !tbaa !52
  %67 = getelementptr inbounds i8, ptr %66, i64 8
  store i64 %15, ptr %67, align 8, !tbaa !52
  %68 = add nsw i32 %64, -2
  %69 = getelementptr inbounds i8, ptr %63, i64 %22
  %70 = icmp eq i32 %68, 0
  br i1 %70, label %71, label %62, !llvm.loop !107

71:                                               ; preds = %62, %29, %55, %42, %5, %51, %49, %38, %36, %25, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_me_refine_bidir_rd(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 62
  store i32 1, ptr %7, align 4, !tbaa !108
  tail call fastcc void @x264_me_refine_bidir(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 1) #10
  store i32 0, ptr %7, align 4, !tbaa !108
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_me_refine_qpel_rd(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %4 to i64
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !15
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4, i64 %6, i64 %10
  %12 = load i32, ptr %1, align 16, !tbaa !6
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %13
  %15 = load i32, ptr %14, align 8, !tbaa !12
  %16 = getelementptr inbounds [7 x %struct.anon], ptr @x264_pixel_size, i64 0, i64 %13, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !14
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %19 = load i32, ptr %18, align 4, !tbaa !91
  %20 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !92
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !93
  %27 = shl i32 %26, 2
  %28 = and i32 %27, 4
  %29 = add nsw i32 %28, -2
  br label %30

30:                                               ; preds = %5, %24
  %31 = phi i32 [ %29, %24 ], [ 0, %5 ]
  %32 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 13
  %33 = load i16, ptr %32, align 4, !tbaa !45
  %34 = sext i16 %33 to i32
  %35 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 13, i64 1
  %36 = load i16, ptr %35, align 2, !tbaa !45
  %37 = sext i16 %36 to i32
  %38 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18
  %39 = load ptr, ptr %38, align 16, !tbaa !42
  %40 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %7
  %41 = load i16, ptr %40, align 2, !tbaa !45
  %42 = zext i16 %41 to i64
  %43 = getelementptr inbounds i8, ptr %39, i64 %42
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !42
  %46 = shl i32 %3, 4
  %47 = and i32 %46, -128
  %48 = and i32 %3, 4
  %49 = or disjoint i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, ptr %45, i64 %50
  %52 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 18, i64 2
  %53 = load ptr, ptr %52, align 16, !tbaa !42
  %54 = getelementptr inbounds i8, ptr %53, i64 %50
  %55 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 62
  store i32 1, ptr %55, align 4, !tbaa !108
  %56 = icmp ne i32 %12, 0
  %57 = icmp ne i32 %3, 0
  %58 = and i1 %57, %56
  br i1 %58, label %59, label %62

59:                                               ; preds = %30
  %60 = ashr i32 %15, 2
  %61 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 10
  tail call void @x264_mb_predict_mv(ptr noundef nonnull %0, i32 noundef %4, i32 noundef %3, i32 noundef %60, ptr noundef nonnull %61) #11
  br label %62

62:                                               ; preds = %59, %30
  %63 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 10
  %64 = load i16, ptr %63, align 16, !tbaa !45
  %65 = sext i16 %64 to i32
  %66 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 10, i64 1
  %67 = load i16, ptr %66, align 2, !tbaa !45
  %68 = sext i16 %67 to i32
  %69 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !44
  %71 = sext i16 %64 to i64
  %72 = sub nsw i64 0, %71
  %73 = getelementptr inbounds i16, ptr %70, i64 %72
  %74 = sext i16 %67 to i64
  %75 = sub nsw i64 0, %74
  %76 = getelementptr inbounds i16, ptr %70, i64 %75
  %77 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70
  %78 = load ptr, ptr %77, align 8, !tbaa !99
  %79 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5
  %80 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9
  %81 = load i32, ptr %80, align 8, !tbaa !15
  %82 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !49
  tail call void %78(ptr noundef %43, i32 noundef 32, ptr noundef nonnull %79, i32 noundef %81, i32 noundef %34, i32 noundef %37, i32 noundef %15, i32 noundef %17, ptr noundef %83) #11
  %84 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 5, i64 %13
  %85 = load ptr, ptr %84, align 8, !tbaa !42
  %86 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 7
  %87 = load ptr, ptr %86, align 8, !tbaa !42
  %88 = tail call i32 %85(ptr noundef %87, i32 noundef 16, ptr noundef %43, i32 noundef 32) #11
  %89 = sext i16 %33 to i64
  %90 = getelementptr inbounds i16, ptr %73, i64 %89
  %91 = load i16, ptr %90, align 2, !tbaa !45
  %92 = zext i16 %91 to i32
  %93 = add nsw i32 %88, %92
  %94 = sext i16 %36 to i64
  %95 = getelementptr inbounds i16, ptr %76, i64 %94
  %96 = load i16, ptr %95, align 2, !tbaa !45
  %97 = zext i16 %96 to i32
  %98 = add nsw i32 %93, %97
  %99 = load i32, ptr %1, align 16, !tbaa !6
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %126, label %101

101:                                              ; preds = %62
  %102 = icmp sgt i32 %98, -1
  br i1 %102, label %103, label %130

103:                                              ; preds = %101
  %104 = tail call fastcc i32 @pack16to32_mask(i32 noundef %34, i32 noundef %37) #10
  store i32 %104, ptr %11, align 4, !tbaa !52
  %105 = load i32, ptr %1, align 16, !tbaa !6
  %106 = icmp slt i32 %105, 4
  br i1 %106, label %107, label %122

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !95
  %110 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 4
  %111 = load ptr, ptr %110, align 16, !tbaa !42
  %112 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9, i64 1
  %113 = load i32, ptr %112, align 4, !tbaa !15
  %114 = add nsw i32 %31, %37
  %115 = ashr i32 %15, 1
  %116 = ashr i32 %17, 1
  tail call void %109(ptr noundef %51, i32 noundef 32, ptr noundef %111, i32 noundef %113, i32 noundef %34, i32 noundef %114, i32 noundef %115, i32 noundef %116) #11
  %117 = load ptr, ptr %108, align 8, !tbaa !95
  %118 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 5
  %119 = load ptr, ptr %118, align 8, !tbaa !42
  %120 = load i32, ptr %112, align 4, !tbaa !15
  tail call void %117(ptr noundef %54, i32 noundef 32, ptr noundef %119, i32 noundef %120, i32 noundef %34, i32 noundef %114, i32 noundef %115, i32 noundef %116) #11
  %121 = load i32, ptr %1, align 16, !tbaa !6
  br label %122

122:                                              ; preds = %107, %103
  %123 = phi i32 [ %121, %107 ], [ %105, %103 ]
  %124 = tail call i64 @x264_rd_cost_part(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i32 noundef %123) #11
  %125 = tail call i64 @llvm.umin.i64(i64 %124, i64 1152921504606846976)
  br label %130

126:                                              ; preds = %62
  %127 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 12
  %128 = load i32, ptr %127, align 8, !tbaa !87
  %129 = sext i32 %128 to i64
  br label %130

130:                                              ; preds = %101, %122, %126
  %131 = phi i64 [ %125, %122 ], [ 1152921504606846976, %101 ], [ %129, %126 ]
  %132 = icmp eq i16 %33, %64
  %133 = icmp eq i16 %36, %67
  %134 = select i1 %132, i1 %133, i1 false
  br i1 %134, label %204, label %135

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 20
  %137 = load i32, ptr %136, align 8, !tbaa !15
  %138 = icmp sgt i32 %137, %65
  br i1 %138, label %204, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21
  %141 = load i32, ptr %140, align 16, !tbaa !15
  %142 = icmp slt i32 %141, %65
  br i1 %142, label %204, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 20, i64 1
  %145 = load i32, ptr %144, align 4, !tbaa !15
  %146 = icmp sgt i32 %145, %68
  br i1 %146, label %204, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21, i64 1
  %149 = load i32, ptr %148, align 4, !tbaa !15
  %150 = icmp slt i32 %149, %68
  br i1 %150, label %204, label %151

151:                                              ; preds = %147
  %152 = load ptr, ptr %77, align 8, !tbaa !99
  %153 = load i32, ptr %80, align 8, !tbaa !15
  %154 = load ptr, ptr %82, align 8, !tbaa !49
  tail call void %152(ptr noundef %43, i32 noundef 32, ptr noundef nonnull %79, i32 noundef %153, i32 noundef %65, i32 noundef %68, i32 noundef %15, i32 noundef %17, ptr noundef %154) #11
  %155 = load ptr, ptr %84, align 8, !tbaa !42
  %156 = load ptr, ptr %86, align 8, !tbaa !42
  %157 = tail call i32 %155(ptr noundef %156, i32 noundef 16, ptr noundef %43, i32 noundef 32) #11
  %158 = load i16, ptr %70, align 2, !tbaa !45
  %159 = zext i16 %158 to i32
  %160 = shl nuw nsw i32 %159, 1
  %161 = add i32 %160, %157
  %162 = tail call i32 @llvm.smin.i32(i32 %161, i32 %98)
  %163 = mul nsw i32 %162, 17
  %164 = sdiv i32 %163, 16
  %165 = icmp sgt i32 %161, %164
  br i1 %165, label %192, label %166

166:                                              ; preds = %151
  %167 = tail call fastcc i32 @pack16to32_mask(i32 noundef %65, i32 noundef %68) #10
  store i32 %167, ptr %11, align 4, !tbaa !52
  %168 = load i32, ptr %1, align 16, !tbaa !6
  %169 = icmp slt i32 %168, 4
  br i1 %169, label %170, label %185

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !95
  %173 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 4
  %174 = load ptr, ptr %173, align 16, !tbaa !42
  %175 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9, i64 1
  %176 = load i32, ptr %175, align 4, !tbaa !15
  %177 = add nsw i32 %31, %68
  %178 = ashr i32 %15, 1
  %179 = ashr i32 %17, 1
  tail call void %172(ptr noundef %51, i32 noundef 32, ptr noundef %174, i32 noundef %176, i32 noundef %65, i32 noundef %177, i32 noundef %178, i32 noundef %179) #11
  %180 = load ptr, ptr %171, align 8, !tbaa !95
  %181 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 5
  %182 = load ptr, ptr %181, align 8, !tbaa !42
  %183 = load i32, ptr %175, align 4, !tbaa !15
  tail call void %180(ptr noundef %54, i32 noundef 32, ptr noundef %182, i32 noundef %183, i32 noundef %65, i32 noundef %177, i32 noundef %178, i32 noundef %179) #11
  %184 = load i32, ptr %1, align 16, !tbaa !6
  br label %185

185:                                              ; preds = %170, %166
  %186 = phi i32 [ %184, %170 ], [ %168, %166 ]
  %187 = tail call i64 @x264_rd_cost_part(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i32 noundef %186) #11
  %188 = icmp ult i64 %187, %131
  %189 = select i1 %188, i32 %68, i32 %37
  %190 = select i1 %188, i32 %65, i32 %34
  %191 = tail call i64 @llvm.umin.i64(i64 %187, i64 %131)
  br label %192

192:                                              ; preds = %185, %151
  %193 = phi i32 [ %189, %185 ], [ %37, %151 ]
  %194 = phi i32 [ %190, %185 ], [ %34, %151 ]
  %195 = phi i64 [ %191, %185 ], [ %131, %151 ]
  %196 = icmp eq i32 %194, %65
  %197 = icmp eq i32 %193, %68
  %198 = select i1 %196, i1 %197, i1 false
  br i1 %198, label %199, label %204

199:                                              ; preds = %192
  %200 = load i16, ptr %32, align 4, !tbaa !45
  %201 = sext i16 %200 to i32
  %202 = load i16, ptr %35, align 2, !tbaa !45
  %203 = sext i16 %202 to i32
  br label %204

204:                                              ; preds = %130, %192, %199, %147, %143, %139, %135
  %205 = phi i32 [ %162, %199 ], [ %162, %192 ], [ %98, %147 ], [ %98, %143 ], [ %98, %139 ], [ %98, %135 ], [ %98, %130 ]
  %206 = phi i32 [ %203, %199 ], [ %68, %192 ], [ %68, %147 ], [ %68, %143 ], [ %68, %139 ], [ %68, %135 ], [ %68, %130 ]
  %207 = phi i32 [ %201, %199 ], [ %65, %192 ], [ %65, %147 ], [ %65, %143 ], [ %65, %139 ], [ %65, %135 ], [ %65, %130 ]
  %208 = phi i32 [ %68, %199 ], [ %193, %192 ], [ %37, %147 ], [ %37, %143 ], [ %37, %139 ], [ %37, %135 ], [ %37, %130 ]
  %209 = phi i32 [ %65, %199 ], [ %194, %192 ], [ %34, %147 ], [ %34, %143 ], [ %34, %139 ], [ %34, %135 ], [ %34, %130 ]
  %210 = phi i64 [ %195, %199 ], [ %195, %192 ], [ %131, %147 ], [ %131, %143 ], [ %131, %139 ], [ %131, %135 ], [ %131, %130 ]
  %211 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 20
  %212 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 20, i64 1
  %213 = load i32, ptr %212, align 4, !tbaa !15
  %214 = add nsw i32 %213, 3
  %215 = icmp slt i32 %208, %214
  br i1 %215, label %494, label %216

216:                                              ; preds = %204
  %217 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21
  %218 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 21, i64 1
  %219 = load i32, ptr %218, align 4, !tbaa !15
  %220 = add nsw i32 %219, -3
  %221 = icmp sgt i32 %208, %220
  br i1 %221, label %494, label %222

222:                                              ; preds = %216
  %223 = load i32, ptr %211, align 8, !tbaa !15
  %224 = add nsw i32 %223, 3
  %225 = icmp slt i32 %209, %224
  br i1 %225, label %494, label %226

226:                                              ; preds = %222
  %227 = load i32, ptr %217, align 16, !tbaa !15
  %228 = add nsw i32 %227, -3
  %229 = icmp sgt i32 %209, %228
  br i1 %229, label %494, label %230

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 2
  %232 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 4
  %233 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 9, i64 1
  %234 = ashr i32 %15, 1
  %235 = ashr i32 %17, 1
  %236 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 5, i64 5
  br label %239

237:                                              ; preds = %298
  %238 = icmp eq i32 %300, -2
  br i1 %238, label %400, label %305

239:                                              ; preds = %230, %298
  %240 = phi i64 [ 0, %230 ], [ %246, %298 ]
  %241 = phi i64 [ %210, %230 ], [ %303, %298 ]
  %242 = phi i32 [ %209, %230 ], [ %302, %298 ]
  %243 = phi i32 [ %208, %230 ], [ %301, %298 ]
  %244 = phi i32 [ %205, %230 ], [ %299, %298 ]
  %245 = phi i32 [ -2, %230 ], [ %300, %298 ]
  %246 = add nuw nsw i64 %240, 1
  %247 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %246
  %248 = load i8, ptr %247, align 2, !tbaa !52
  %249 = sext i8 %248 to i32
  %250 = add nsw i32 %209, %249
  %251 = icmp eq i32 %250, %207
  %252 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %246, i64 1
  %253 = load i8, ptr %252, align 1, !tbaa !52
  %254 = sext i8 %253 to i32
  %255 = add nsw i32 %208, %254
  %256 = icmp eq i32 %255, %206
  %257 = select i1 %251, i1 %256, i1 false
  br i1 %257, label %298, label %258

258:                                              ; preds = %239
  %259 = load ptr, ptr %77, align 8, !tbaa !99
  %260 = load i32, ptr %80, align 8, !tbaa !15
  %261 = load ptr, ptr %82, align 8, !tbaa !49
  tail call void %259(ptr noundef %43, i32 noundef 32, ptr noundef nonnull %79, i32 noundef %260, i32 noundef %250, i32 noundef %255, i32 noundef %15, i32 noundef %17, ptr noundef %261) #11
  %262 = load ptr, ptr %84, align 8, !tbaa !42
  %263 = load ptr, ptr %86, align 8, !tbaa !42
  %264 = tail call i32 %262(ptr noundef %263, i32 noundef 16, ptr noundef %43, i32 noundef 32) #11
  %265 = sext i32 %250 to i64
  %266 = getelementptr inbounds i16, ptr %73, i64 %265
  %267 = load i16, ptr %266, align 2, !tbaa !45
  %268 = zext i16 %267 to i32
  %269 = add nsw i32 %264, %268
  %270 = sext i32 %255 to i64
  %271 = getelementptr inbounds i16, ptr %76, i64 %270
  %272 = load i16, ptr %271, align 2, !tbaa !45
  %273 = zext i16 %272 to i32
  %274 = add nsw i32 %269, %273
  %275 = tail call i32 @llvm.smin.i32(i32 %274, i32 %244)
  %276 = mul nsw i32 %275, 17
  %277 = sdiv i32 %276, 16
  %278 = icmp sgt i32 %274, %277
  br i1 %278, label %298, label %279

279:                                              ; preds = %258
  %280 = tail call fastcc i32 @pack16to32_mask(i32 noundef %250, i32 noundef %255) #10
  store i32 %280, ptr %11, align 4, !tbaa !52
  %281 = load i32, ptr %1, align 16, !tbaa !6
  %282 = icmp slt i32 %281, 4
  br i1 %282, label %283, label %292

283:                                              ; preds = %279
  %284 = load ptr, ptr %231, align 8, !tbaa !95
  %285 = load ptr, ptr %232, align 16, !tbaa !42
  %286 = load i32, ptr %233, align 4, !tbaa !15
  %287 = add nsw i32 %255, %31
  tail call void %284(ptr noundef %51, i32 noundef 32, ptr noundef %285, i32 noundef %286, i32 noundef %250, i32 noundef %287, i32 noundef %234, i32 noundef %235) #11
  %288 = load ptr, ptr %231, align 8, !tbaa !95
  %289 = load ptr, ptr %236, align 8, !tbaa !42
  %290 = load i32, ptr %233, align 4, !tbaa !15
  tail call void %288(ptr noundef %54, i32 noundef 32, ptr noundef %289, i32 noundef %290, i32 noundef %250, i32 noundef %287, i32 noundef %234, i32 noundef %235) #11
  %291 = load i32, ptr %1, align 16, !tbaa !6
  br label %292

292:                                              ; preds = %283, %279
  %293 = phi i32 [ %291, %283 ], [ %281, %279 ]
  %294 = tail call i64 @x264_rd_cost_part(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i32 noundef %293) #11
  %295 = icmp ult i64 %294, %241
  br i1 %295, label %296, label %298

296:                                              ; preds = %292
  %297 = trunc i64 %240 to i32
  br label %298

298:                                              ; preds = %239, %292, %296, %258
  %299 = phi i32 [ %275, %258 ], [ %275, %296 ], [ %275, %292 ], [ %244, %239 ]
  %300 = phi i32 [ %245, %258 ], [ %297, %296 ], [ %245, %292 ], [ %245, %239 ]
  %301 = phi i32 [ %243, %258 ], [ %255, %296 ], [ %243, %292 ], [ %243, %239 ]
  %302 = phi i32 [ %242, %258 ], [ %250, %296 ], [ %242, %292 ], [ %242, %239 ]
  %303 = phi i64 [ %241, %258 ], [ %294, %296 ], [ %241, %292 ], [ %241, %239 ]
  %304 = icmp eq i64 %246, 6
  br i1 %304, label %237, label %239, !llvm.loop !109

305:                                              ; preds = %237, %395
  %306 = phi i64 [ %392, %395 ], [ %303, %237 ]
  %307 = phi i32 [ %391, %395 ], [ %302, %237 ]
  %308 = phi i32 [ %390, %395 ], [ %301, %237 ]
  %309 = phi i32 [ %397, %395 ], [ 1, %237 ]
  %310 = phi i32 [ %388, %395 ], [ %299, %237 ]
  %311 = phi i32 [ %389, %395 ], [ %300, %237 ]
  %312 = add nsw i32 %311, 1
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [8 x i8], ptr @mod6m1, i64 0, i64 %313
  %315 = load i8, ptr %314, align 1, !tbaa !52
  %316 = zext i8 %315 to i64
  %317 = load i32, ptr %212, align 4, !tbaa !15
  %318 = add nsw i32 %317, 3
  %319 = icmp slt i32 %308, %318
  br i1 %319, label %400, label %320

320:                                              ; preds = %305
  %321 = load i32, ptr %218, align 4, !tbaa !15
  %322 = add nsw i32 %321, -3
  %323 = icmp sgt i32 %308, %322
  br i1 %323, label %400, label %324

324:                                              ; preds = %320
  %325 = add nuw nsw i64 %316, 4294967295
  %326 = zext i8 %315 to i64
  br label %327

327:                                              ; preds = %324, %387
  %328 = phi i64 [ 0, %324 ], [ %393, %387 ]
  %329 = phi i64 [ %306, %324 ], [ %392, %387 ]
  %330 = phi i32 [ %307, %324 ], [ %391, %387 ]
  %331 = phi i32 [ %308, %324 ], [ %390, %387 ]
  %332 = phi i32 [ %310, %324 ], [ %388, %387 ]
  %333 = phi i32 [ -2, %324 ], [ %389, %387 ]
  %334 = add nuw nsw i64 %328, %326
  %335 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %334
  %336 = load i8, ptr %335, align 2, !tbaa !52
  %337 = sext i8 %336 to i32
  %338 = add nsw i32 %307, %337
  %339 = icmp eq i32 %338, %207
  %340 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %334, i64 1
  %341 = load i8, ptr %340, align 1, !tbaa !52
  %342 = sext i8 %341 to i32
  %343 = add nsw i32 %308, %342
  %344 = icmp eq i32 %343, %206
  %345 = select i1 %339, i1 %344, i1 false
  br i1 %345, label %387, label %346

346:                                              ; preds = %327
  %347 = load ptr, ptr %77, align 8, !tbaa !99
  %348 = load i32, ptr %80, align 8, !tbaa !15
  %349 = load ptr, ptr %82, align 8, !tbaa !49
  tail call void %347(ptr noundef %43, i32 noundef 32, ptr noundef nonnull %79, i32 noundef %348, i32 noundef %338, i32 noundef %343, i32 noundef %15, i32 noundef %17, ptr noundef %349) #11
  %350 = load ptr, ptr %84, align 8, !tbaa !42
  %351 = load ptr, ptr %86, align 8, !tbaa !42
  %352 = tail call i32 %350(ptr noundef %351, i32 noundef 16, ptr noundef %43, i32 noundef 32) #11
  %353 = sext i32 %338 to i64
  %354 = getelementptr inbounds i16, ptr %73, i64 %353
  %355 = load i16, ptr %354, align 2, !tbaa !45
  %356 = zext i16 %355 to i32
  %357 = add nsw i32 %352, %356
  %358 = sext i32 %343 to i64
  %359 = getelementptr inbounds i16, ptr %76, i64 %358
  %360 = load i16, ptr %359, align 2, !tbaa !45
  %361 = zext i16 %360 to i32
  %362 = add nsw i32 %357, %361
  %363 = tail call i32 @llvm.smin.i32(i32 %362, i32 %332)
  %364 = mul nsw i32 %363, 17
  %365 = sdiv i32 %364, 16
  %366 = icmp sgt i32 %362, %365
  br i1 %366, label %387, label %367

367:                                              ; preds = %346
  %368 = tail call fastcc i32 @pack16to32_mask(i32 noundef %338, i32 noundef %343) #10
  store i32 %368, ptr %11, align 4, !tbaa !52
  %369 = load i32, ptr %1, align 16, !tbaa !6
  %370 = icmp slt i32 %369, 4
  br i1 %370, label %371, label %380

371:                                              ; preds = %367
  %372 = load ptr, ptr %231, align 8, !tbaa !95
  %373 = load ptr, ptr %232, align 16, !tbaa !42
  %374 = load i32, ptr %233, align 4, !tbaa !15
  %375 = add nsw i32 %343, %31
  tail call void %372(ptr noundef %51, i32 noundef 32, ptr noundef %373, i32 noundef %374, i32 noundef %338, i32 noundef %375, i32 noundef %234, i32 noundef %235) #11
  %376 = load ptr, ptr %231, align 8, !tbaa !95
  %377 = load ptr, ptr %236, align 8, !tbaa !42
  %378 = load i32, ptr %233, align 4, !tbaa !15
  tail call void %376(ptr noundef %54, i32 noundef 32, ptr noundef %377, i32 noundef %378, i32 noundef %338, i32 noundef %375, i32 noundef %234, i32 noundef %235) #11
  %379 = load i32, ptr %1, align 16, !tbaa !6
  br label %380

380:                                              ; preds = %371, %367
  %381 = phi i32 [ %379, %371 ], [ %369, %367 ]
  %382 = tail call i64 @x264_rd_cost_part(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i32 noundef %381) #11
  %383 = icmp ult i64 %382, %329
  br i1 %383, label %384, label %387

384:                                              ; preds = %380
  %385 = add nuw i64 %325, %328
  %386 = trunc i64 %385 to i32
  br label %387

387:                                              ; preds = %327, %380, %384, %346
  %388 = phi i32 [ %363, %346 ], [ %363, %384 ], [ %363, %380 ], [ %332, %327 ]
  %389 = phi i32 [ %333, %346 ], [ %386, %384 ], [ %333, %380 ], [ %333, %327 ]
  %390 = phi i32 [ %331, %346 ], [ %343, %384 ], [ %331, %380 ], [ %331, %327 ]
  %391 = phi i32 [ %330, %346 ], [ %338, %384 ], [ %330, %380 ], [ %330, %327 ]
  %392 = phi i64 [ %329, %346 ], [ %382, %384 ], [ %329, %380 ], [ %329, %327 ]
  %393 = add nuw nsw i64 %328, 1
  %394 = icmp eq i64 %393, 3
  br i1 %394, label %395, label %327, !llvm.loop !110

395:                                              ; preds = %387
  %396 = icmp eq i32 %389, -2
  %397 = add nuw nsw i32 %309, 1
  %398 = icmp eq i32 %397, 10
  %399 = select i1 %396, i1 true, i1 %398
  br i1 %399, label %400, label %305, !llvm.loop !111

400:                                              ; preds = %305, %320, %395, %237
  %401 = phi i32 [ %299, %237 ], [ %310, %305 ], [ %310, %320 ], [ %388, %395 ]
  %402 = phi i32 [ %301, %237 ], [ %308, %305 ], [ %308, %320 ], [ %390, %395 ]
  %403 = phi i32 [ %302, %237 ], [ %307, %305 ], [ %307, %320 ], [ %391, %395 ]
  %404 = phi i64 [ %303, %237 ], [ %306, %305 ], [ %306, %320 ], [ %392, %395 ]
  br label %431

405:                                              ; preds = %488
  %406 = trunc i64 %492 to i32
  %407 = getelementptr inbounds %struct.x264_me_t, ptr %1, i64 0, i32 12
  store i32 %406, ptr %407, align 8, !tbaa !87
  %408 = trunc i32 %491 to i16
  store i16 %408, ptr %32, align 4, !tbaa !45
  %409 = trunc i32 %490 to i16
  store i16 %409, ptr %35, align 2, !tbaa !45
  %410 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %7
  %411 = load i8, ptr %410, align 1, !tbaa !52
  %412 = zext i8 %411 to i32
  %413 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %7
  %414 = load i8, ptr %413, align 1, !tbaa !52
  %415 = zext i8 %414 to i32
  %416 = ashr i32 %15, 2
  %417 = ashr i32 %17, 2
  %418 = tail call fastcc i32 @pack16to32_mask(i32 noundef %491, i32 noundef %490) #10
  tail call fastcc void @x264_macroblock_cache_mv(ptr noundef %0, i32 noundef %412, i32 noundef %415, i32 noundef %416, i32 noundef %417, i32 noundef %4, i32 noundef %418) #10
  %419 = load i16, ptr %63, align 16, !tbaa !45
  %420 = sext i16 %419 to i32
  %421 = sub nsw i32 %491, %420
  %422 = tail call i32 @llvm.abs.i32(i32 %421, i1 true)
  %423 = tail call i32 @llvm.umin.i32(i32 %422, i32 33)
  %424 = load i16, ptr %66, align 2, !tbaa !45
  %425 = sext i16 %424 to i32
  %426 = sub nsw i32 %490, %425
  %427 = tail call i32 @llvm.abs.i32(i32 %426, i1 true)
  %428 = tail call i32 @llvm.umin.i32(i32 %427, i32 33)
  %429 = tail call fastcc i32 @pack8to16(i32 noundef %423, i32 noundef %428) #10, !range !106
  %430 = trunc i32 %429 to i16
  tail call fastcc void @x264_macroblock_cache_mvd(ptr noundef %0, i32 noundef %412, i32 noundef %415, i32 noundef %416, i32 noundef %417, i32 noundef %4, i16 noundef zeroext %430) #10
  br label %494

431:                                              ; preds = %400, %488
  %432 = phi i64 [ 0, %400 ], [ %437, %488 ]
  %433 = phi i64 [ %404, %400 ], [ %492, %488 ]
  %434 = phi i32 [ %403, %400 ], [ %491, %488 ]
  %435 = phi i32 [ %402, %400 ], [ %490, %488 ]
  %436 = phi i32 [ %401, %400 ], [ %489, %488 ]
  %437 = add nuw nsw i64 %432, 1
  %438 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %437
  %439 = load i8, ptr %438, align 2, !tbaa !52
  %440 = sext i8 %439 to i32
  %441 = add nsw i32 %403, %440
  %442 = icmp eq i32 %441, %207
  %443 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %437, i64 1
  %444 = load i8, ptr %443, align 1, !tbaa !52
  %445 = sext i8 %444 to i32
  %446 = add nsw i32 %402, %445
  %447 = icmp eq i32 %446, %206
  %448 = select i1 %442, i1 %447, i1 false
  br i1 %448, label %488, label %449

449:                                              ; preds = %431
  %450 = load ptr, ptr %77, align 8, !tbaa !99
  %451 = load i32, ptr %80, align 8, !tbaa !15
  %452 = load ptr, ptr %82, align 8, !tbaa !49
  tail call void %450(ptr noundef %43, i32 noundef 32, ptr noundef nonnull %79, i32 noundef %451, i32 noundef %441, i32 noundef %446, i32 noundef %15, i32 noundef %17, ptr noundef %452) #11
  %453 = load ptr, ptr %84, align 8, !tbaa !42
  %454 = load ptr, ptr %86, align 8, !tbaa !42
  %455 = tail call i32 %453(ptr noundef %454, i32 noundef 16, ptr noundef %43, i32 noundef 32) #11
  %456 = sext i32 %441 to i64
  %457 = getelementptr inbounds i16, ptr %73, i64 %456
  %458 = load i16, ptr %457, align 2, !tbaa !45
  %459 = zext i16 %458 to i32
  %460 = add nsw i32 %455, %459
  %461 = sext i32 %446 to i64
  %462 = getelementptr inbounds i16, ptr %76, i64 %461
  %463 = load i16, ptr %462, align 2, !tbaa !45
  %464 = zext i16 %463 to i32
  %465 = add nsw i32 %460, %464
  %466 = tail call i32 @llvm.smin.i32(i32 %465, i32 %436)
  %467 = mul nsw i32 %466, 17
  %468 = sdiv i32 %467, 16
  %469 = icmp sgt i32 %465, %468
  br i1 %469, label %488, label %470

470:                                              ; preds = %449
  %471 = tail call fastcc i32 @pack16to32_mask(i32 noundef %441, i32 noundef %446) #10
  store i32 %471, ptr %11, align 4, !tbaa !52
  %472 = load i32, ptr %1, align 16, !tbaa !6
  %473 = icmp slt i32 %472, 4
  br i1 %473, label %474, label %483

474:                                              ; preds = %470
  %475 = load ptr, ptr %231, align 8, !tbaa !95
  %476 = load ptr, ptr %232, align 16, !tbaa !42
  %477 = load i32, ptr %233, align 4, !tbaa !15
  %478 = add nsw i32 %446, %31
  tail call void %475(ptr noundef %51, i32 noundef 32, ptr noundef %476, i32 noundef %477, i32 noundef %441, i32 noundef %478, i32 noundef %234, i32 noundef %235) #11
  %479 = load ptr, ptr %231, align 8, !tbaa !95
  %480 = load ptr, ptr %236, align 8, !tbaa !42
  %481 = load i32, ptr %233, align 4, !tbaa !15
  tail call void %479(ptr noundef %54, i32 noundef 32, ptr noundef %480, i32 noundef %481, i32 noundef %441, i32 noundef %478, i32 noundef %234, i32 noundef %235) #11
  %482 = load i32, ptr %1, align 16, !tbaa !6
  br label %483

483:                                              ; preds = %474, %470
  %484 = phi i32 [ %482, %474 ], [ %472, %470 ]
  %485 = tail call i64 @x264_rd_cost_part(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i32 noundef %484) #11
  %486 = icmp ult i64 %485, %433
  br i1 %486, label %487, label %488

487:                                              ; preds = %483
  br label %488

488:                                              ; preds = %431, %483, %487, %449
  %489 = phi i32 [ %466, %449 ], [ %466, %487 ], [ %466, %483 ], [ %436, %431 ]
  %490 = phi i32 [ %435, %449 ], [ %446, %487 ], [ %435, %483 ], [ %435, %431 ]
  %491 = phi i32 [ %434, %449 ], [ %441, %487 ], [ %434, %483 ], [ %434, %431 ]
  %492 = phi i64 [ %433, %449 ], [ %485, %487 ], [ %433, %483 ], [ %433, %431 ]
  %493 = icmp eq i64 %437, 8
  br i1 %493, label %405, label %431, !llvm.loop !112

494:                                              ; preds = %204, %216, %222, %226, %405
  store i32 0, ptr %55, align 4, !tbaa !108
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"", !8, i64 0, !11, i64 8, !8, i64 16, !8, i64 20, !11, i64 24, !9, i64 32, !11, i64 80, !9, i64 88, !11, i64 112, !9, i64 120, !9, i64 128, !8, i64 132, !8, i64 136, !9, i64 140}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!13, !8, i64 0}
!13 = !{!"", !8, i64 0, !8, i64 4}
!14 = !{!13, !8, i64 4}
!15 = !{!8, !8, i64 0}
!16 = !{!17, !8, i64 416}
!17 = !{!"x264_t", !18, i64 0, !9, i64 704, !8, i64 1736, !8, i64 1740, !8, i64 1744, !8, i64 1748, !8, i64 1752, !23, i64 1760, !11, i64 1832, !8, i64 1840, !8, i64 1844, !8, i64 1848, !8, i64 1852, !8, i64 1856, !8, i64 1860, !8, i64 1864, !8, i64 1868, !8, i64 1872, !8, i64 1876, !8, i64 1880, !8, i64 1884, !8, i64 1888, !8, i64 1892, !9, i64 1896, !11, i64 3200, !9, i64 3208, !11, i64 3328, !8, i64 3336, !8, i64 3340, !9, i64 3344, !9, i64 3376, !9, i64 3392, !9, i64 3424, !9, i64 3440, !9, i64 3472, !9, i64 3488, !9, i64 3520, !9, i64 3536, !9, i64 4272, !11, i64 7216, !26, i64 7232, !27, i64 13904, !28, i64 14416, !11, i64 14680, !11, i64 14688, !8, i64 14696, !9, i64 14704, !8, i64 14856, !9, i64 14864, !9, i64 15016, !8, i64 15024, !8, i64 15028, !25, i64 15032, !29, i64 15040, !30, i64 16368, !11, i64 26704, !33, i64 26712, !9, i64 30400, !9, i64 30912, !9, i64 31168, !11, i64 31176, !9, i64 31184, !9, i64 31232, !9, i64 31248, !9, i64 31304, !9, i64 31360, !9, i64 31456, !11, i64 31552, !36, i64 31560, !37, i64 32616, !38, i64 32912, !39, i64 33032, !40, i64 33080, !41, i64 33256, !11, i64 33328}
!18 = !{!"x264_param_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !19, i64 44, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !11, i64 152, !9, i64 160, !9, i64 176, !9, i64 192, !9, i64 208, !9, i64 224, !9, i64 288, !11, i64 352, !11, i64 360, !8, i64 368, !8, i64 372, !11, i64 376, !20, i64 384, !22, i64 488, !8, i64 632, !8, i64 636, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !8, i64 656, !8, i64 660, !8, i64 664, !8, i64 668, !8, i64 672, !8, i64 676, !8, i64 680, !8, i64 684, !8, i64 688, !8, i64 692, !11, i64 696}
!19 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!20 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !21, i64 72, !21, i64 76, !8, i64 80, !9, i64 84, !8, i64 92, !8, i64 96}
!21 = !{!"float", !9, i64 0}
!22 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !21, i64 24, !21, i64 28, !21, i64 32, !8, i64 36, !8, i64 40, !21, i64 44, !21, i64 48, !21, i64 52, !8, i64 56, !21, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !11, i64 80, !8, i64 88, !11, i64 96, !21, i64 104, !21, i64 108, !21, i64 112, !11, i64 120, !8, i64 128, !11, i64 136}
!23 = !{!"", !8, i64 0, !8, i64 4, !11, i64 8, !8, i64 16, !11, i64 24, !24, i64 32}
!24 = !{!"bs_s", !11, i64 0, !11, i64 8, !11, i64 16, !25, i64 24, !8, i64 32, !8, i64 36}
!25 = !{!"long", !9, i64 0}
!26 = !{!"", !11, i64 0, !11, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !9, i64 60, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !9, i64 96, !9, i64 352, !8, i64 6496, !8, i64 6500, !9, i64 6504, !8, i64 6632, !8, i64 6636, !8, i64 6640, !8, i64 6644, !8, i64 6648, !8, i64 6652, !8, i64 6656, !8, i64 6660}
!27 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16, !11, i64 24, !11, i64 32, !8, i64 48, !9, i64 52}
!28 = !{!"", !11, i64 0, !9, i64 8, !11, i64 24, !9, i64 32, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !25, i64 208, !25, i64 216, !9, i64 224, !25, i64 240, !25, i64 248, !8, i64 256, !8, i64 260}
!29 = !{!"", !9, i64 0, !9, i64 32, !9, i64 48, !9, i64 560}
!30 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !8, i64 120, !9, i64 124, !9, i64 140, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !8, i64 228, !8, i64 232, !8, i64 236, !8, i64 240, !8, i64 244, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !9, i64 304, !9, i64 320, !9, i64 336, !9, i64 352, !11, i64 864, !11, i64 872, !11, i64 880, !9, i64 888, !8, i64 1016, !8, i64 1020, !9, i64 1024, !8, i64 1028, !8, i64 1032, !8, i64 1036, !8, i64 1040, !8, i64 1044, !8, i64 1048, !8, i64 1052, !8, i64 1056, !8, i64 1060, !31, i64 1072, !32, i64 8656, !8, i64 9424, !8, i64 9428, !8, i64 9432, !8, i64 9436, !8, i64 9440, !8, i64 9444, !8, i64 9448, !8, i64 9452, !9, i64 9456, !8, i64 9472, !8, i64 9476, !9, i64 9480, !11, i64 9992, !9, i64 10000, !11, i64 10256, !9, i64 10264, !8, i64 10284, !9, i64 10288}
!31 = !{!"", !9, i64 0, !9, i64 384, !9, i64 1248, !9, i64 1504, !9, i64 1760, !9, i64 2144, !9, i64 2624, !9, i64 2640, !8, i64 2656, !8, i64 2660, !9, i64 2672, !9, i64 3184, !9, i64 3696, !9, i64 3776, !9, i64 3904, !9, i64 3928, !9, i64 3952, !9, i64 3976, !9, i64 3984, !9, i64 7056, !9, i64 7312, !9, i64 7568}
!32 = !{!"", !9, i64 0, !9, i64 48, !9, i64 96, !9, i64 176, !9, i64 496, !9, i64 656, !9, i64 696, !9, i64 728, !8, i64 736, !9, i64 740, !8, i64 744, !8, i64 748, !8, i64 752, !8, i64 756}
!33 = !{!"", !34, i64 0, !9, i64 704, !9, i64 728, !9, i64 768, !9, i64 808, !9, i64 880, !9, i64 920, !9, i64 960, !9, i64 1000, !9, i64 1040, !9, i64 1080, !9, i64 1120, !9, i64 1880, !9, i64 2152, !9, i64 2168, !9, i64 3192, !9, i64 3240, !9, i64 3656, !9, i64 3664, !9, i64 3672}
!34 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !9, i64 12, !8, i64 88, !8, i64 92, !8, i64 96, !9, i64 100, !9, i64 108, !9, i64 364, !9, i64 432, !9, i64 456, !9, i64 664, !9, i64 672, !35, i64 696}
!35 = !{!"double", !9, i64 0}
!36 = !{!"", !9, i64 0, !9, i64 56, !9, i64 112, !9, i64 168, !9, i64 224, !9, i64 256, !9, i64 312, !9, i64 368, !9, i64 424, !9, i64 480, !9, i64 536, !11, i64 592, !9, i64 600, !9, i64 632, !11, i64 664, !11, i64 672, !9, i64 680, !9, i64 736, !9, i64 792, !9, i64 848, !9, i64 904, !11, i64 960, !11, i64 968, !11, i64 976, !11, i64 984, !11, i64 992, !11, i64 1000, !11, i64 1008, !11, i64 1016, !11, i64 1024, !11, i64 1032, !11, i64 1040, !11, i64 1048}
!37 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !9, i64 24, !9, i64 104, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288}
!38 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112}
!39 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!40 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !9, i64 88, !9, i64 136}
!41 = !{!"", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 48, !11, i64 64}
!42 = !{!11, !11, i64 0}
!43 = !{!7, !11, i64 80}
!44 = !{!7, !11, i64 8}
!45 = !{!46, !46, i64 0}
!46 = !{!"short", !9, i64 0}
!47 = !{!17, !8, i64 16408}
!48 = !{!17, !11, i64 32624}
!49 = !{!7, !11, i64 24}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!9, !9, i64 0}
!53 = distinct !{!53, !51}
!54 = !{!17, !8, i64 16404}
!55 = distinct !{!55, !51}
!56 = distinct !{!56, !51}
!57 = distinct !{!57, !51}
!58 = distinct !{!58, !51}
!59 = distinct !{!59, !51}
!60 = distinct !{!60, !51}
!61 = distinct !{!61, !51}
!62 = distinct !{!62, !51}
!63 = distinct !{!63, !51}
!64 = distinct !{!64, !51}
!65 = distinct !{!65, !51}
!66 = distinct !{!66, !51}
!67 = !{!7, !11, i64 112}
!68 = !{!17, !11, i64 31176}
!69 = !{!17, !8, i64 25792}
!70 = !{!17, !11, i64 14680}
!71 = distinct !{!71, !51}
!72 = !{!73, !8, i64 0}
!73 = !{!"", !8, i64 0, !9, i64 4}
!74 = distinct !{!74, !51}
!75 = distinct !{!75, !51}
!76 = distinct !{!76, !51}
!77 = distinct !{!77, !51}
!78 = distinct !{!78, !51}
!79 = distinct !{!79, !51}
!80 = distinct !{!80, !51}
!81 = distinct !{!81, !51}
!82 = distinct !{!82, !51}
!83 = distinct !{!83, !51}
!84 = distinct !{!84, !51}
!85 = distinct !{!85, !51}
!86 = !{!7, !8, i64 132}
!87 = !{!7, !8, i64 136}
!88 = distinct !{!88, !51}
!89 = distinct !{!89, !51}
!90 = !{!17, !8, i64 16412}
!91 = !{!17, !8, i64 16436}
!92 = !{!7, !8, i64 20}
!93 = !{!17, !8, i64 16388}
!94 = distinct !{!94, !51}
!95 = !{!17, !11, i64 32632}
!96 = !{!97, !11, i64 48}
!97 = !{!"x264_weight_t", !9, i64 0, !9, i64 16, !8, i64 32, !8, i64 36, !8, i64 40, !11, i64 48}
!98 = distinct !{!98, !51}
!99 = !{!17, !11, i64 32616}
!100 = !{!7, !8, i64 16}
!101 = !{!17, !11, i64 32824}
!102 = distinct !{!102, !51}
!103 = distinct !{!103, !51}
!104 = distinct !{!104, !51}
!105 = distinct !{!105, !51}
!106 = !{i32 0, i32 8482}
!107 = distinct !{!107, !51}
!108 = !{!17, !8, i64 17420}
!109 = distinct !{!109, !51}
!110 = distinct !{!110, !51}
!111 = distinct !{!111, !51}
!112 = distinct !{!112, !51}
