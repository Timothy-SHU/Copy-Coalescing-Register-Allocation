; ModuleID = 'ldecod_src/block.c'
source_filename = "ldecod_src/block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }
%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [3 x ptr], %struct.pic_motion_params_old, [3 x %struct.pic_motion_params_old], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, [2 x i8], [2 x ptr] }
%struct.pic_motion_params_old = type { ptr }

@dequant_coef = internal unnamed_addr constant [6 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 10, i32 13, i32 10, i32 13], [4 x i32] [i32 13, i32 16, i32 13, i32 16], [4 x i32] [i32 10, i32 13, i32 10, i32 13], [4 x i32] [i32 13, i32 16, i32 13, i32 16]], [4 x [4 x i32]] [[4 x i32] [i32 11, i32 14, i32 11, i32 14], [4 x i32] [i32 14, i32 18, i32 14, i32 18], [4 x i32] [i32 11, i32 14, i32 11, i32 14], [4 x i32] [i32 14, i32 18, i32 14, i32 18]], [4 x [4 x i32]] [[4 x i32] [i32 13, i32 16, i32 13, i32 16], [4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 13, i32 16, i32 13, i32 16], [4 x i32] [i32 16, i32 20, i32 16, i32 20]], [4 x [4 x i32]] [[4 x i32] [i32 14, i32 18, i32 14, i32 18], [4 x i32] [i32 18, i32 23, i32 18, i32 23], [4 x i32] [i32 14, i32 18, i32 14, i32 18], [4 x i32] [i32 18, i32 23, i32 18, i32 23]], [4 x [4 x i32]] [[4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25], [4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25]], [4 x [4 x i32]] [[4 x i32] [i32 18, i32 23, i32 18, i32 23], [4 x i32] [i32 23, i32 29, i32 23, i32 29], [4 x i32] [i32 18, i32 23, i32 18, i32 23], [4 x i32] [i32 23, i32 29, i32 23, i32 29]]], align 16
@quant_coef = internal unnamed_addr constant [6 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 13107, i32 8066, i32 13107, i32 8066], [4 x i32] [i32 8066, i32 5243, i32 8066, i32 5243], [4 x i32] [i32 13107, i32 8066, i32 13107, i32 8066], [4 x i32] [i32 8066, i32 5243, i32 8066, i32 5243]], [4 x [4 x i32]] [[4 x i32] [i32 11916, i32 7490, i32 11916, i32 7490], [4 x i32] [i32 7490, i32 4660, i32 7490, i32 4660], [4 x i32] [i32 11916, i32 7490, i32 11916, i32 7490], [4 x i32] [i32 7490, i32 4660, i32 7490, i32 4660]], [4 x [4 x i32]] [[4 x i32] [i32 10082, i32 6554, i32 10082, i32 6554], [4 x i32] [i32 6554, i32 4194, i32 6554, i32 4194], [4 x i32] [i32 10082, i32 6554, i32 10082, i32 6554], [4 x i32] [i32 6554, i32 4194, i32 6554, i32 4194]], [4 x [4 x i32]] [[4 x i32] [i32 9362, i32 5825, i32 9362, i32 5825], [4 x i32] [i32 5825, i32 3647, i32 5825, i32 3647], [4 x i32] [i32 9362, i32 5825, i32 9362, i32 5825], [4 x i32] [i32 5825, i32 3647, i32 5825, i32 3647]], [4 x [4 x i32]] [[4 x i32] [i32 8192, i32 5243, i32 8192, i32 5243], [4 x i32] [i32 5243, i32 3355, i32 5243, i32 3355], [4 x i32] [i32 8192, i32 5243, i32 8192, i32 5243], [4 x i32] [i32 5243, i32 3355, i32 5243, i32 3355]], [4 x [4 x i32]] [[4 x i32] [i32 7282, i32 4559, i32 7282, i32 4559], [4 x i32] [i32 4559, i32 2893, i32 4559, i32 2893], [4 x i32] [i32 7282, i32 4559, i32 7282, i32 4559], [4 x i32] [i32 4559, i32 2893, i32 4559, i32 2893]]], align 16
@A = internal unnamed_addr constant [4 x [4 x i32]] [[4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25], [4 x i32] [i32 16, i32 20, i32 16, i32 20], [4 x i32] [i32 20, i32 25, i32 20, i32 25]], align 16
@QP_SCALE_CR = internal unnamed_addr constant [52 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1D\1E\1F  !\22\22##$$%%%&&&''''", align 16
@decode_block_scan = internal unnamed_addr constant [16 x i8] c"\00\01\04\05\02\03\06\07\08\09\0C\0D\0A\0B\0E\0F", align 16
@subblk_offset_x = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C"]], align 16
@subblk_offset_y = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C"]], align 16

; Function Attrs: nounwind uwtable
define dso_local void @itrans4x4(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 79
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 80
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds ptr, ptr %12, i64 %8
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  tail call void @inverse4x4(ptr noundef %14, ptr noundef %10, i32 noundef %3, i32 noundef %2) #8
  %15 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 78
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = getelementptr inbounds ptr, ptr %16, i64 %8
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = sext i32 %3 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 77
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = getelementptr inbounds ptr, ptr %22, i64 %8
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = getelementptr inbounds ptr, ptr %24, i64 %19
  %26 = getelementptr inbounds ptr, ptr %10, i64 %19
  %27 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  %29 = getelementptr inbounds %struct.video_par, ptr %28, i64 0, i32 70, i64 %8
  %30 = load i32, ptr %29, align 4, !tbaa !50
  tail call void @sample_reconstruct(ptr noundef %20, ptr noundef %25, ptr noundef %26, i32 noundef %2, i32 noundef %2, i32 noundef 4, i32 noundef 4, i32 noundef %30, i32 noundef 6) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @inverse4x4(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @sample_reconstruct(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @itrans4x4_ls(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #3 {
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 70, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 77
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = getelementptr inbounds ptr, ptr %12, i64 %8
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 78
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = getelementptr inbounds ptr, ptr %16, i64 %8
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 79
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds ptr, ptr %20, i64 %8
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = sext i32 %2 to i64
  %24 = sext i32 %3 to i64
  %25 = add nsw i32 %2, 3
  %26 = sext i32 %25 to i64
  %27 = add nsw i32 %3, 3
  %28 = sext i32 %27 to i64
  br label %29

29:                                               ; preds = %4, %51
  %30 = phi i64 [ %24, %4 ], [ %52, %51 ]
  %31 = getelementptr inbounds ptr, ptr %14, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !45
  %33 = getelementptr inbounds ptr, ptr %22, i64 %30
  %34 = load ptr, ptr %33, align 8, !tbaa !45
  %35 = getelementptr inbounds ptr, ptr %18, i64 %30
  %36 = load ptr, ptr %35, align 8, !tbaa !45
  br label %37

37:                                               ; preds = %29, %37
  %38 = phi i64 [ %23, %29 ], [ %49, %37 ]
  %39 = getelementptr inbounds i16, ptr %32, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !51
  %41 = zext i16 %40 to i32
  %42 = getelementptr inbounds i32, ptr %34, i64 %38
  %43 = load i32, ptr %42, align 4, !tbaa !50
  %44 = add nsw i32 %43, %41
  %45 = tail call i32 @llvm.smax.i32(i32 %44, i32 0)
  %46 = tail call i32 @llvm.smin.i32(i32 %45, i32 %10)
  %47 = trunc i32 %46 to i16
  %48 = getelementptr inbounds i16, ptr %36, i64 %38
  store i16 %47, ptr %48, align 2, !tbaa !51
  %49 = add nsw i64 %38, 1
  %50 = icmp slt i64 %38, %26
  br i1 %50, label %37, label %51, !llvm.loop !52

51:                                               ; preds = %37
  %52 = add nsw i64 %30, 1
  %53 = icmp slt i64 %30, %28
  br i1 %53, label %29, label %54, !llvm.loop !55

54:                                               ; preds = %51
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Inv_Residual_trans_4x4(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #3 {
  %5 = alloca [4 x [4 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 77
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 78
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = getelementptr inbounds ptr, ptr %13, i64 %9
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 79
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %17, i64 %9
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 80
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = getelementptr inbounds ptr, ptr %21, i64 %9
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 39
  %25 = load i8, ptr %24, align 4, !tbaa !56
  switch i8 %25, label %44 [
    i8 0, label %30
    i8 1, label %26
  ]

26:                                               ; preds = %4
  %27 = sext i32 %2 to i64
  %28 = sext i32 %3 to i64
  %29 = getelementptr ptr, ptr %23, i64 %28
  br label %102

30:                                               ; preds = %4
  %31 = sext i32 %3 to i64
  %32 = getelementptr inbounds ptr, ptr %23, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !45
  %34 = getelementptr ptr, ptr %32, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !45
  %36 = getelementptr ptr, ptr %32, i64 2
  %37 = load ptr, ptr %36, align 8, !tbaa !45
  %38 = getelementptr ptr, ptr %32, i64 3
  %39 = load ptr, ptr %38, align 8, !tbaa !45
  %40 = sext i32 %2 to i64
  %41 = shl nsw i64 %40, 2
  %42 = getelementptr i8, ptr %33, i64 %41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %42, i64 16, i1 false), !tbaa !50
  %43 = sext i32 %2 to i64
  br label %62

44:                                               ; preds = %4
  %45 = sext i32 %2 to i64
  %46 = sext i32 %3 to i64
  %47 = add nsw i32 %2, 3
  %48 = sext i32 %47 to i64
  %49 = add nsw i32 %3, 3
  %50 = sext i32 %49 to i64
  br label %141

51:                                               ; preds = %62
  %52 = sext i32 %3 to i64
  %53 = getelementptr inbounds ptr, ptr %19, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !45
  %55 = getelementptr ptr, ptr %53, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !45
  %57 = getelementptr ptr, ptr %53, i64 2
  %58 = load ptr, ptr %57, align 8, !tbaa !45
  %59 = getelementptr ptr, ptr %53, i64 3
  %60 = load ptr, ptr %59, align 8, !tbaa !45
  %61 = sext i32 %2 to i64
  br label %81

62:                                               ; preds = %30, %62
  %63 = phi i64 [ 0, %30 ], [ %79, %62 ]
  %64 = add nsw i64 %63, %43
  %65 = getelementptr inbounds i32, ptr %33, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !50
  %67 = getelementptr inbounds i32, ptr %35, i64 %64
  %68 = load i32, ptr %67, align 4, !tbaa !50
  %69 = add nsw i32 %68, %66
  %70 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 1, i64 %63
  store i32 %69, ptr %70, align 4, !tbaa !50
  %71 = getelementptr inbounds i32, ptr %37, i64 %64
  %72 = load i32, ptr %71, align 4, !tbaa !50
  %73 = add nsw i32 %72, %69
  %74 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 2, i64 %63
  store i32 %73, ptr %74, align 4, !tbaa !50
  %75 = getelementptr inbounds i32, ptr %39, i64 %64
  %76 = load i32, ptr %75, align 4, !tbaa !50
  %77 = add nsw i32 %76, %73
  %78 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 3, i64 %63
  store i32 %77, ptr %78, align 4, !tbaa !50
  %79 = add nuw nsw i64 %63, 1
  %80 = icmp eq i64 %79, 4
  br i1 %80, label %51, label %62, !llvm.loop !57

81:                                               ; preds = %51, %81
  %82 = phi i64 [ 0, %51 ], [ %96, %81 ]
  %83 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !50
  %85 = add nsw i64 %82, %61
  %86 = getelementptr inbounds i32, ptr %54, i64 %85
  store i32 %84, ptr %86, align 4, !tbaa !50
  %87 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 1, i64 %82
  %88 = load i32, ptr %87, align 4, !tbaa !50
  %89 = getelementptr inbounds i32, ptr %56, i64 %85
  store i32 %88, ptr %89, align 4, !tbaa !50
  %90 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 2, i64 %82
  %91 = load i32, ptr %90, align 4, !tbaa !50
  %92 = getelementptr inbounds i32, ptr %58, i64 %85
  store i32 %91, ptr %92, align 4, !tbaa !50
  %93 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 3, i64 %82
  %94 = load i32, ptr %93, align 4, !tbaa !50
  %95 = getelementptr inbounds i32, ptr %60, i64 %85
  store i32 %94, ptr %95, align 4, !tbaa !50
  %96 = add nuw nsw i64 %82, 1
  %97 = icmp eq i64 %96, 4
  br i1 %97, label %157, label %81, !llvm.loop !58

98:                                               ; preds = %102
  %99 = sext i32 %2 to i64
  %100 = sext i32 %3 to i64
  %101 = getelementptr ptr, ptr %19, i64 %100
  br label %123

102:                                              ; preds = %26, %102
  %103 = phi i64 [ 0, %26 ], [ %121, %102 ]
  %104 = getelementptr ptr, ptr %29, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !45
  %106 = getelementptr inbounds i32, ptr %105, i64 %27
  %107 = load i32, ptr %106, align 4, !tbaa !50
  %108 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %103
  store i32 %107, ptr %108, align 16, !tbaa !50
  %109 = getelementptr i32, ptr %106, i64 1
  %110 = load i32, ptr %109, align 4, !tbaa !50
  %111 = add nsw i32 %110, %107
  %112 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %103, i64 1
  store i32 %111, ptr %112, align 4, !tbaa !50
  %113 = getelementptr i32, ptr %106, i64 2
  %114 = load i32, ptr %113, align 4, !tbaa !50
  %115 = add nsw i32 %114, %111
  %116 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %103, i64 2
  store i32 %115, ptr %116, align 8, !tbaa !50
  %117 = getelementptr i32, ptr %106, i64 3
  %118 = load i32, ptr %117, align 4, !tbaa !50
  %119 = add nsw i32 %118, %115
  %120 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %103, i64 3
  store i32 %119, ptr %120, align 4, !tbaa !50
  %121 = add nuw nsw i64 %103, 1
  %122 = icmp eq i64 %121, 4
  br i1 %122, label %98, label %102, !llvm.loop !59

123:                                              ; preds = %98, %123
  %124 = phi i64 [ 0, %98 ], [ %139, %123 ]
  %125 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %124
  %126 = load i32, ptr %125, align 16, !tbaa !50
  %127 = getelementptr ptr, ptr %101, i64 %124
  %128 = load ptr, ptr %127, align 8, !tbaa !45
  %129 = getelementptr inbounds i32, ptr %128, i64 %99
  store i32 %126, ptr %129, align 4, !tbaa !50
  %130 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %124, i64 1
  %131 = load i32, ptr %130, align 4, !tbaa !50
  %132 = getelementptr i32, ptr %129, i64 1
  store i32 %131, ptr %132, align 4, !tbaa !50
  %133 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %124, i64 2
  %134 = load i32, ptr %133, align 8, !tbaa !50
  %135 = getelementptr i32, ptr %129, i64 2
  store i32 %134, ptr %135, align 4, !tbaa !50
  %136 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %124, i64 3
  %137 = load i32, ptr %136, align 4, !tbaa !50
  %138 = getelementptr i32, ptr %129, i64 3
  store i32 %137, ptr %138, align 4, !tbaa !50
  %139 = add nuw nsw i64 %124, 1
  %140 = icmp eq i64 %139, 4
  br i1 %140, label %157, label %123, !llvm.loop !60

141:                                              ; preds = %44, %154
  %142 = phi i64 [ %46, %44 ], [ %155, %154 ]
  %143 = getelementptr inbounds ptr, ptr %23, i64 %142
  %144 = load ptr, ptr %143, align 8, !tbaa !45
  %145 = getelementptr inbounds ptr, ptr %19, i64 %142
  %146 = load ptr, ptr %145, align 8, !tbaa !45
  br label %147

147:                                              ; preds = %141, %147
  %148 = phi i64 [ %45, %141 ], [ %152, %147 ]
  %149 = getelementptr inbounds i32, ptr %144, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !50
  %151 = getelementptr inbounds i32, ptr %146, i64 %148
  store i32 %150, ptr %151, align 4, !tbaa !50
  %152 = add nsw i64 %148, 1
  %153 = icmp slt i64 %148, %48
  br i1 %153, label %147, label %154, !llvm.loop !61

154:                                              ; preds = %147
  %155 = add nsw i64 %142, 1
  %156 = icmp slt i64 %142, %50
  br i1 %156, label %141, label %157, !llvm.loop !62

157:                                              ; preds = %123, %81, %154
  %158 = sext i32 %2 to i64
  %159 = sext i32 %3 to i64
  %160 = add nsw i32 %2, 3
  %161 = sext i32 %160 to i64
  %162 = add nsw i32 %3, 3
  %163 = sext i32 %162 to i64
  br label %164

164:                                              ; preds = %157, %183
  %165 = phi i64 [ %159, %157 ], [ %184, %183 ]
  %166 = getelementptr inbounds ptr, ptr %19, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !45
  %168 = getelementptr inbounds ptr, ptr %11, i64 %165
  %169 = load ptr, ptr %168, align 8, !tbaa !45
  %170 = getelementptr inbounds ptr, ptr %15, i64 %165
  %171 = load ptr, ptr %170, align 8, !tbaa !45
  br label %172

172:                                              ; preds = %164, %172
  %173 = phi i64 [ %158, %164 ], [ %181, %172 ]
  %174 = getelementptr inbounds i32, ptr %167, i64 %173
  %175 = load i32, ptr %174, align 4, !tbaa !50
  %176 = getelementptr inbounds i16, ptr %169, i64 %173
  %177 = load i16, ptr %176, align 2, !tbaa !51
  %178 = trunc i32 %175 to i16
  %179 = add i16 %177, %178
  %180 = getelementptr inbounds i16, ptr %171, i64 %173
  store i16 %179, ptr %180, align 2, !tbaa !51
  %181 = add nsw i64 %173, 1
  %182 = icmp slt i64 %173, %161
  br i1 %182, label %172, label %183, !llvm.loop !63

183:                                              ; preds = %172
  %184 = add nsw i64 %165, 1
  %185 = icmp slt i64 %165, %163
  br i1 %185, label %164, label %186, !llvm.loop !64

186:                                              ; preds = %183
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Inv_Residual_trans_8x8(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = alloca [8 x [8 x i32]], align 16
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #8
  %7 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 77
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 78
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = getelementptr inbounds ptr, ptr %13, i64 %9
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 79
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %17, i64 %9
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 39
  %21 = load i8, ptr %20, align 4, !tbaa !56
  switch i8 %21, label %202 [
    i8 0, label %26
    i8 1, label %22
  ]

22:                                               ; preds = %4
  %23 = sext i32 %2 to i64
  %24 = sext i32 %3 to i64
  %25 = getelementptr ptr, ptr %19, i64 %24
  br label %135

26:                                               ; preds = %4
  %27 = sext i32 %3 to i64
  %28 = getelementptr inbounds ptr, ptr %19, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !45
  %30 = getelementptr ptr, ptr %28, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !45
  %32 = getelementptr ptr, ptr %28, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !45
  %34 = getelementptr ptr, ptr %28, i64 3
  %35 = load ptr, ptr %34, align 8, !tbaa !45
  %36 = getelementptr ptr, ptr %28, i64 4
  %37 = load ptr, ptr %36, align 8, !tbaa !45
  %38 = getelementptr ptr, ptr %28, i64 5
  %39 = load ptr, ptr %38, align 8, !tbaa !45
  %40 = getelementptr ptr, ptr %28, i64 6
  %41 = load ptr, ptr %40, align 8, !tbaa !45
  %42 = getelementptr ptr, ptr %28, i64 7
  %43 = load ptr, ptr %42, align 8, !tbaa !45
  %44 = sext i32 %2 to i64
  %45 = shl nsw i64 %44, 2
  %46 = getelementptr i8, ptr %29, i64 %45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(32) %46, i64 32, i1 false), !tbaa !50
  %47 = sext i32 %2 to i64
  br label %67

48:                                               ; preds = %67
  %49 = sext i32 %3 to i64
  %50 = getelementptr inbounds ptr, ptr %19, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !45
  %52 = getelementptr ptr, ptr %50, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !45
  %54 = getelementptr ptr, ptr %50, i64 2
  %55 = load ptr, ptr %54, align 8, !tbaa !45
  %56 = getelementptr ptr, ptr %50, i64 3
  %57 = load ptr, ptr %56, align 8, !tbaa !45
  %58 = getelementptr ptr, ptr %50, i64 4
  %59 = load ptr, ptr %58, align 8, !tbaa !45
  %60 = getelementptr ptr, ptr %50, i64 5
  %61 = load ptr, ptr %60, align 8, !tbaa !45
  %62 = getelementptr ptr, ptr %50, i64 6
  %63 = load ptr, ptr %62, align 8, !tbaa !45
  %64 = getelementptr ptr, ptr %50, i64 7
  %65 = load ptr, ptr %64, align 8, !tbaa !45
  %66 = sext i32 %2 to i64
  br label %102

67:                                               ; preds = %26, %67
  %68 = phi i64 [ 0, %26 ], [ %100, %67 ]
  %69 = add nsw i64 %68, %47
  %70 = getelementptr inbounds i32, ptr %29, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !50
  %72 = getelementptr inbounds i32, ptr %31, i64 %69
  %73 = load i32, ptr %72, align 4, !tbaa !50
  %74 = add nsw i32 %73, %71
  %75 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 1, i64 %68
  store i32 %74, ptr %75, align 4, !tbaa !50
  %76 = getelementptr inbounds i32, ptr %33, i64 %69
  %77 = load i32, ptr %76, align 4, !tbaa !50
  %78 = add nsw i32 %77, %74
  %79 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 2, i64 %68
  store i32 %78, ptr %79, align 4, !tbaa !50
  %80 = getelementptr inbounds i32, ptr %35, i64 %69
  %81 = load i32, ptr %80, align 4, !tbaa !50
  %82 = add nsw i32 %81, %78
  %83 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 3, i64 %68
  store i32 %82, ptr %83, align 4, !tbaa !50
  %84 = getelementptr inbounds i32, ptr %37, i64 %69
  %85 = load i32, ptr %84, align 4, !tbaa !50
  %86 = add nsw i32 %85, %82
  %87 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 4, i64 %68
  store i32 %86, ptr %87, align 4, !tbaa !50
  %88 = getelementptr inbounds i32, ptr %39, i64 %69
  %89 = load i32, ptr %88, align 4, !tbaa !50
  %90 = add nsw i32 %89, %86
  %91 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 5, i64 %68
  store i32 %90, ptr %91, align 4, !tbaa !50
  %92 = getelementptr inbounds i32, ptr %41, i64 %69
  %93 = load i32, ptr %92, align 4, !tbaa !50
  %94 = add nsw i32 %93, %90
  %95 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 6, i64 %68
  store i32 %94, ptr %95, align 4, !tbaa !50
  %96 = getelementptr inbounds i32, ptr %43, i64 %69
  %97 = load i32, ptr %96, align 4, !tbaa !50
  %98 = add nsw i32 %97, %94
  %99 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 7, i64 %68
  store i32 %98, ptr %99, align 4, !tbaa !50
  %100 = add nuw nsw i64 %68, 1
  %101 = icmp eq i64 %100, 8
  br i1 %101, label %48, label %67, !llvm.loop !65

102:                                              ; preds = %48, %102
  %103 = phi i64 [ 0, %48 ], [ %129, %102 ]
  %104 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !50
  %106 = add nsw i64 %103, %66
  %107 = getelementptr inbounds i32, ptr %51, i64 %106
  store i32 %105, ptr %107, align 4, !tbaa !50
  %108 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 1, i64 %103
  %109 = load i32, ptr %108, align 4, !tbaa !50
  %110 = getelementptr inbounds i32, ptr %53, i64 %106
  store i32 %109, ptr %110, align 4, !tbaa !50
  %111 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 2, i64 %103
  %112 = load i32, ptr %111, align 4, !tbaa !50
  %113 = getelementptr inbounds i32, ptr %55, i64 %106
  store i32 %112, ptr %113, align 4, !tbaa !50
  %114 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 3, i64 %103
  %115 = load i32, ptr %114, align 4, !tbaa !50
  %116 = getelementptr inbounds i32, ptr %57, i64 %106
  store i32 %115, ptr %116, align 4, !tbaa !50
  %117 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 4, i64 %103
  %118 = load i32, ptr %117, align 4, !tbaa !50
  %119 = getelementptr inbounds i32, ptr %59, i64 %106
  store i32 %118, ptr %119, align 4, !tbaa !50
  %120 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 5, i64 %103
  %121 = load i32, ptr %120, align 4, !tbaa !50
  %122 = getelementptr inbounds i32, ptr %61, i64 %106
  store i32 %121, ptr %122, align 4, !tbaa !50
  %123 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 6, i64 %103
  %124 = load i32, ptr %123, align 4, !tbaa !50
  %125 = getelementptr inbounds i32, ptr %63, i64 %106
  store i32 %124, ptr %125, align 4, !tbaa !50
  %126 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 7, i64 %103
  %127 = load i32, ptr %126, align 4, !tbaa !50
  %128 = getelementptr inbounds i32, ptr %65, i64 %106
  store i32 %127, ptr %128, align 4, !tbaa !50
  %129 = add nuw nsw i64 %103, 1
  %130 = icmp eq i64 %129, 8
  br i1 %130, label %202, label %102, !llvm.loop !66

131:                                              ; preds = %135
  %132 = sext i32 %2 to i64
  %133 = sext i32 %3 to i64
  %134 = getelementptr ptr, ptr %19, i64 %133
  br label %172

135:                                              ; preds = %22, %135
  %136 = phi i64 [ 0, %22 ], [ %170, %135 ]
  %137 = getelementptr ptr, ptr %25, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !45
  %139 = getelementptr inbounds i32, ptr %138, i64 %23
  %140 = load i32, ptr %139, align 4, !tbaa !50
  %141 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 %136
  store i32 %140, ptr %141, align 16, !tbaa !50
  %142 = getelementptr i32, ptr %139, i64 1
  %143 = load i32, ptr %142, align 4, !tbaa !50
  %144 = add nsw i32 %143, %140
  %145 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 %136, i64 1
  store i32 %144, ptr %145, align 4, !tbaa !50
  %146 = getelementptr i32, ptr %139, i64 2
  %147 = load i32, ptr %146, align 4, !tbaa !50
  %148 = add nsw i32 %147, %144
  %149 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 %136, i64 2
  store i32 %148, ptr %149, align 8, !tbaa !50
  %150 = getelementptr i32, ptr %139, i64 3
  %151 = load i32, ptr %150, align 4, !tbaa !50
  %152 = add nsw i32 %151, %148
  %153 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 %136, i64 3
  store i32 %152, ptr %153, align 4, !tbaa !50
  %154 = getelementptr i32, ptr %139, i64 4
  %155 = load i32, ptr %154, align 4, !tbaa !50
  %156 = add nsw i32 %155, %152
  %157 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 %136, i64 4
  store i32 %156, ptr %157, align 16, !tbaa !50
  %158 = getelementptr i32, ptr %139, i64 5
  %159 = load i32, ptr %158, align 4, !tbaa !50
  %160 = add nsw i32 %159, %156
  %161 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 %136, i64 5
  store i32 %160, ptr %161, align 4, !tbaa !50
  %162 = getelementptr i32, ptr %139, i64 6
  %163 = load i32, ptr %162, align 4, !tbaa !50
  %164 = add nsw i32 %163, %160
  %165 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 %136, i64 6
  store i32 %164, ptr %165, align 8, !tbaa !50
  %166 = getelementptr i32, ptr %139, i64 7
  %167 = load i32, ptr %166, align 4, !tbaa !50
  %168 = add nsw i32 %167, %164
  %169 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 %136, i64 7
  store i32 %168, ptr %169, align 4, !tbaa !50
  %170 = add nuw nsw i64 %136, 1
  %171 = icmp eq i64 %170, 8
  br i1 %171, label %131, label %135, !llvm.loop !67

172:                                              ; preds = %131, %172
  %173 = phi i64 [ 0, %131 ], [ %200, %172 ]
  %174 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 %173
  %175 = load i32, ptr %174, align 16, !tbaa !50
  %176 = getelementptr ptr, ptr %134, i64 %173
  %177 = load ptr, ptr %176, align 8, !tbaa !45
  %178 = getelementptr inbounds i32, ptr %177, i64 %132
  store i32 %175, ptr %178, align 4, !tbaa !50
  %179 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 %173, i64 1
  %180 = load i32, ptr %179, align 4, !tbaa !50
  %181 = getelementptr i32, ptr %178, i64 1
  store i32 %180, ptr %181, align 4, !tbaa !50
  %182 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 %173, i64 2
  %183 = load i32, ptr %182, align 8, !tbaa !50
  %184 = getelementptr i32, ptr %178, i64 2
  store i32 %183, ptr %184, align 4, !tbaa !50
  %185 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 %173, i64 3
  %186 = load i32, ptr %185, align 4, !tbaa !50
  %187 = getelementptr i32, ptr %178, i64 3
  store i32 %186, ptr %187, align 4, !tbaa !50
  %188 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 %173, i64 4
  %189 = load i32, ptr %188, align 16, !tbaa !50
  %190 = getelementptr i32, ptr %178, i64 4
  store i32 %189, ptr %190, align 4, !tbaa !50
  %191 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 %173, i64 5
  %192 = load i32, ptr %191, align 4, !tbaa !50
  %193 = getelementptr i32, ptr %178, i64 5
  store i32 %192, ptr %193, align 4, !tbaa !50
  %194 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 %173, i64 6
  %195 = load i32, ptr %194, align 8, !tbaa !50
  %196 = getelementptr i32, ptr %178, i64 6
  store i32 %195, ptr %196, align 4, !tbaa !50
  %197 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 %173, i64 7
  %198 = load i32, ptr %197, align 4, !tbaa !50
  %199 = getelementptr i32, ptr %178, i64 7
  store i32 %198, ptr %199, align 4, !tbaa !50
  %200 = add nuw nsw i64 %173, 1
  %201 = icmp eq i64 %200, 8
  br i1 %201, label %202, label %172, !llvm.loop !68

202:                                              ; preds = %172, %102, %4
  %203 = sext i32 %2 to i64
  %204 = sext i32 %3 to i64
  %205 = add nsw i32 %2, 7
  %206 = sext i32 %205 to i64
  %207 = add nsw i32 %3, 7
  %208 = sext i32 %207 to i64
  br label %209

209:                                              ; preds = %202, %228
  %210 = phi i64 [ %204, %202 ], [ %229, %228 ]
  %211 = getelementptr inbounds ptr, ptr %19, i64 %210
  %212 = load ptr, ptr %211, align 8, !tbaa !45
  %213 = getelementptr inbounds ptr, ptr %11, i64 %210
  %214 = load ptr, ptr %213, align 8, !tbaa !45
  %215 = getelementptr inbounds ptr, ptr %15, i64 %210
  %216 = load ptr, ptr %215, align 8, !tbaa !45
  br label %217

217:                                              ; preds = %209, %217
  %218 = phi i64 [ %203, %209 ], [ %226, %217 ]
  %219 = getelementptr inbounds i32, ptr %212, i64 %218
  %220 = load i32, ptr %219, align 4, !tbaa !50
  %221 = getelementptr inbounds i16, ptr %214, i64 %218
  %222 = load i16, ptr %221, align 2, !tbaa !51
  %223 = trunc i32 %220 to i16
  %224 = add i16 %222, %223
  %225 = getelementptr inbounds i16, ptr %216, i64 %218
  store i16 %224, ptr %225, align 2, !tbaa !51
  %226 = add nsw i64 %218, 1
  %227 = icmp slt i64 %218, %206
  br i1 %227, label %217, label %228, !llvm.loop !69

228:                                              ; preds = %217
  %229 = add nsw i64 %210, 1
  %230 = icmp slt i64 %210, %208
  br i1 %230, label %209, label %231, !llvm.loop !70

231:                                              ; preds = %228
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Inv_Residual_trans_16x16(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = alloca [16 x [16 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #8
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 77
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 78
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = getelementptr inbounds ptr, ptr %11, i64 %7
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 79
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds ptr, ptr %15, i64 %7
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 80
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = getelementptr inbounds ptr, ptr %19, i64 %7
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 39
  %23 = load i8, ptr %22, align 4, !tbaa !56
  switch i8 %23, label %90 [
    i8 0, label %24
    i8 1, label %61
  ]

24:                                               ; preds = %2
  %25 = load ptr, ptr %21, align 8, !tbaa !45
  br label %26

26:                                               ; preds = %24, %44
  %27 = phi i64 [ 0, %24 ], [ %45, %44 ]
  %28 = getelementptr inbounds i32, ptr %25, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !50
  %30 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %27
  store i32 %29, ptr %30, align 4, !tbaa !50
  br label %31

31:                                               ; preds = %26, %31
  %32 = phi i64 [ 1, %26 ], [ %42, %31 ]
  %33 = getelementptr inbounds ptr, ptr %21, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !45
  %35 = getelementptr inbounds i32, ptr %34, i64 %27
  %36 = load i32, ptr %35, align 4, !tbaa !50
  %37 = add nsw i64 %32, -1
  %38 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %37, i64 %27
  %39 = load i32, ptr %38, align 4, !tbaa !50
  %40 = add nsw i32 %39, %36
  %41 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %32, i64 %27
  store i32 %40, ptr %41, align 4, !tbaa !50
  %42 = add nuw nsw i64 %32, 1
  %43 = icmp eq i64 %42, 16
  br i1 %43, label %44, label %31, !llvm.loop !71

44:                                               ; preds = %31
  %45 = add nuw nsw i64 %27, 1
  %46 = icmp eq i64 %45, 16
  br i1 %46, label %47, label %26, !llvm.loop !72

47:                                               ; preds = %44, %58
  %48 = phi i64 [ %59, %58 ], [ 0, %44 ]
  br label %49

49:                                               ; preds = %47, %49
  %50 = phi i64 [ 0, %47 ], [ %56, %49 ]
  %51 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %50, i64 %48
  %52 = load i32, ptr %51, align 4, !tbaa !50
  %53 = getelementptr inbounds ptr, ptr %17, i64 %50
  %54 = load ptr, ptr %53, align 8, !tbaa !45
  %55 = getelementptr inbounds i32, ptr %54, i64 %48
  store i32 %52, ptr %55, align 4, !tbaa !50
  %56 = add nuw nsw i64 %50, 1
  %57 = icmp eq i64 %56, 16
  br i1 %57, label %58, label %49, !llvm.loop !73

58:                                               ; preds = %49
  %59 = add nuw nsw i64 %48, 1
  %60 = icmp eq i64 %59, 16
  br i1 %60, label %106, label %47, !llvm.loop !74

61:                                               ; preds = %2, %79
  %62 = phi i64 [ %80, %79 ], [ 0, %2 ]
  %63 = shl nuw nsw i64 %62, 6
  %64 = getelementptr i8, ptr %3, i64 %63
  %65 = getelementptr inbounds ptr, ptr %21, i64 %62
  %66 = load ptr, ptr %65, align 8, !tbaa !45
  %67 = load i32, ptr %66, align 4, !tbaa !50
  %68 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %62
  store i32 %67, ptr %68, align 16, !tbaa !50
  %69 = load i32, ptr %64, align 16
  br label %70

70:                                               ; preds = %61, %70
  %71 = phi i32 [ %69, %61 ], [ %75, %70 ]
  %72 = phi i64 [ 1, %61 ], [ %77, %70 ]
  %73 = getelementptr inbounds i32, ptr %66, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !50
  %75 = add nsw i32 %71, %74
  %76 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %62, i64 %72
  store i32 %75, ptr %76, align 4, !tbaa !50
  %77 = add nuw nsw i64 %72, 1
  %78 = icmp eq i64 %77, 16
  br i1 %78, label %79, label %70, !llvm.loop !75

79:                                               ; preds = %70
  %80 = add nuw nsw i64 %62, 1
  %81 = icmp eq i64 %80, 16
  br i1 %81, label %82, label %61, !llvm.loop !76

82:                                               ; preds = %79, %82
  %83 = phi i64 [ %88, %82 ], [ 0, %79 ]
  %84 = shl nuw nsw i64 %83, 6
  %85 = getelementptr i8, ptr %3, i64 %84
  %86 = getelementptr inbounds ptr, ptr %17, i64 %83
  %87 = load ptr, ptr %86, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %87, ptr noundef nonnull align 16 dereferenceable(64) %85, i64 64, i1 false), !tbaa !50
  %88 = add nuw nsw i64 %83, 1
  %89 = icmp eq i64 %88, 16
  br i1 %89, label %106, label %82, !llvm.loop !77

90:                                               ; preds = %2, %103
  %91 = phi i64 [ %104, %103 ], [ 0, %2 ]
  %92 = getelementptr inbounds ptr, ptr %21, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !45
  %94 = getelementptr inbounds ptr, ptr %17, i64 %91
  %95 = load ptr, ptr %94, align 8, !tbaa !45
  br label %96

96:                                               ; preds = %90, %96
  %97 = phi i64 [ 0, %90 ], [ %101, %96 ]
  %98 = getelementptr inbounds i32, ptr %93, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !50
  %100 = getelementptr inbounds i32, ptr %95, i64 %97
  store i32 %99, ptr %100, align 4, !tbaa !50
  %101 = add nuw nsw i64 %97, 1
  %102 = icmp eq i64 %101, 16
  br i1 %102, label %103, label %96, !llvm.loop !78

103:                                              ; preds = %96
  %104 = add nuw nsw i64 %91, 1
  %105 = icmp eq i64 %104, 16
  br i1 %105, label %106, label %90, !llvm.loop !79

106:                                              ; preds = %82, %58, %103
  br label %107

107:                                              ; preds = %106, %126
  %108 = phi i64 [ %127, %126 ], [ 0, %106 ]
  %109 = getelementptr inbounds ptr, ptr %17, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !45
  %111 = getelementptr inbounds ptr, ptr %9, i64 %108
  %112 = load ptr, ptr %111, align 8, !tbaa !45
  %113 = getelementptr inbounds ptr, ptr %13, i64 %108
  %114 = load ptr, ptr %113, align 8, !tbaa !45
  br label %115

115:                                              ; preds = %107, %115
  %116 = phi i64 [ 0, %107 ], [ %124, %115 ]
  %117 = getelementptr inbounds i32, ptr %110, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !50
  %119 = getelementptr inbounds i16, ptr %112, i64 %116
  %120 = load i16, ptr %119, align 2, !tbaa !51
  %121 = trunc i32 %118 to i16
  %122 = add i16 %120, %121
  %123 = getelementptr inbounds i16, ptr %114, i64 %116
  store i16 %122, ptr %123, align 2, !tbaa !51
  %124 = add nuw nsw i64 %116, 1
  %125 = icmp eq i64 %124, 16
  br i1 %125, label %126, label %115, !llvm.loop !80

126:                                              ; preds = %115
  %127 = add nuw nsw i64 %108, 1
  %128 = icmp eq i64 %127, 16
  br i1 %128, label %129, label %107, !llvm.loop !81

129:                                              ; preds = %126
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Inv_Residual_trans_Chroma(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = alloca [16 x [16 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #8
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 79
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = add nsw i32 %1, 1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 80
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds ptr, ptr %12, i64 %8
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = getelementptr inbounds %struct.video_par, ptr %16, i64 0, i32 77
  %18 = load i32, ptr %17, align 4, !tbaa !82
  %19 = getelementptr inbounds %struct.video_par, ptr %16, i64 0, i32 78
  %20 = load i32, ptr %19, align 8, !tbaa !88
  %21 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 40
  %22 = load i8, ptr %21, align 1, !tbaa !89
  %23 = icmp eq i8 %22, 2
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = icmp sgt i32 %20, 0
  br i1 %25, label %26, label %78

26:                                               ; preds = %24
  %27 = icmp sgt i32 %18, 1
  %28 = zext nneg i32 %20 to i64
  %29 = zext nneg i32 %18 to i64
  br label %85

30:                                               ; preds = %2
  %31 = icmp sgt i32 %18, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %30
  %33 = load ptr, ptr %14, align 8, !tbaa !45
  %34 = icmp sgt i32 %20, 1
  %35 = zext nneg i32 %18 to i64
  %36 = zext nneg i32 %20 to i64
  br label %43

37:                                               ; preds = %61, %30
  %38 = icmp sgt i32 %18, 0
  br i1 %38, label %39, label %117

39:                                               ; preds = %37
  %40 = icmp sgt i32 %20, 0
  %41 = zext nneg i32 %18 to i64
  %42 = zext nneg i32 %20 to i64
  br label %64

43:                                               ; preds = %32, %61
  %44 = phi i64 [ 0, %32 ], [ %62, %61 ]
  %45 = getelementptr inbounds i32, ptr %33, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !50
  %47 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %44
  store i32 %46, ptr %47, align 4, !tbaa !50
  br i1 %34, label %48, label %61

48:                                               ; preds = %43, %48
  %49 = phi i64 [ %59, %48 ], [ 1, %43 ]
  %50 = add nsw i64 %49, -1
  %51 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %50, i64 %44
  %52 = load i32, ptr %51, align 4, !tbaa !50
  %53 = getelementptr inbounds ptr, ptr %14, i64 %49
  %54 = load ptr, ptr %53, align 8, !tbaa !45
  %55 = getelementptr inbounds i32, ptr %54, i64 %44
  %56 = load i32, ptr %55, align 4, !tbaa !50
  %57 = add nsw i32 %56, %52
  %58 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %49, i64 %44
  store i32 %57, ptr %58, align 4, !tbaa !50
  %59 = add nuw nsw i64 %49, 1
  %60 = icmp eq i64 %59, %36
  br i1 %60, label %61, label %48, !llvm.loop !90

61:                                               ; preds = %48, %43
  %62 = add nuw nsw i64 %44, 1
  %63 = icmp eq i64 %62, %35
  br i1 %63, label %37, label %43, !llvm.loop !91

64:                                               ; preds = %39, %75
  %65 = phi i64 [ 0, %39 ], [ %76, %75 ]
  br i1 %40, label %66, label %75

66:                                               ; preds = %64, %66
  %67 = phi i64 [ %73, %66 ], [ 0, %64 ]
  %68 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %67, i64 %65
  %69 = load i32, ptr %68, align 4, !tbaa !50
  %70 = getelementptr inbounds ptr, ptr %10, i64 %67
  %71 = load ptr, ptr %70, align 8, !tbaa !45
  %72 = getelementptr inbounds i32, ptr %71, i64 %65
  store i32 %69, ptr %72, align 4, !tbaa !50
  %73 = add nuw nsw i64 %67, 1
  %74 = icmp eq i64 %73, %42
  br i1 %74, label %75, label %66, !llvm.loop !92

75:                                               ; preds = %66, %64
  %76 = add nuw nsw i64 %65, 1
  %77 = icmp eq i64 %76, %41
  br i1 %77, label %117, label %64, !llvm.loop !93

78:                                               ; preds = %104, %24
  %79 = icmp sgt i32 %20, 0
  br i1 %79, label %80, label %117

80:                                               ; preds = %78
  %81 = icmp sgt i32 %18, 0
  %82 = zext i32 %18 to i64
  %83 = shl nuw nsw i64 %82, 2
  %84 = zext nneg i32 %20 to i64
  br label %107

85:                                               ; preds = %26, %104
  %86 = phi i64 [ 0, %26 ], [ %105, %104 ]
  %87 = getelementptr inbounds ptr, ptr %14, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !45
  %89 = load i32, ptr %88, align 4, !tbaa !50
  %90 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %86
  store i32 %89, ptr %90, align 16, !tbaa !50
  br i1 %27, label %91, label %104

91:                                               ; preds = %85
  %92 = shl nuw nsw i64 %86, 6
  %93 = getelementptr i8, ptr %3, i64 %92
  %94 = load i32, ptr %93, align 16
  br label %95

95:                                               ; preds = %91, %95
  %96 = phi i32 [ %94, %91 ], [ %100, %95 ]
  %97 = phi i64 [ 1, %91 ], [ %102, %95 ]
  %98 = getelementptr inbounds i32, ptr %88, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !50
  %100 = add nsw i32 %99, %96
  %101 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %86, i64 %97
  store i32 %100, ptr %101, align 4, !tbaa !50
  %102 = add nuw nsw i64 %97, 1
  %103 = icmp eq i64 %102, %29
  br i1 %103, label %104, label %95, !llvm.loop !94

104:                                              ; preds = %95, %85
  %105 = add nuw nsw i64 %86, 1
  %106 = icmp eq i64 %105, %28
  br i1 %106, label %78, label %85, !llvm.loop !95

107:                                              ; preds = %80, %114
  %108 = phi i64 [ 0, %80 ], [ %115, %114 ]
  br i1 %81, label %109, label %114

109:                                              ; preds = %107
  %110 = shl nuw nsw i64 %108, 6
  %111 = getelementptr i8, ptr %3, i64 %110
  %112 = getelementptr inbounds ptr, ptr %10, i64 %108
  %113 = load ptr, ptr %112, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %113, ptr align 16 %111, i64 %83, i1 false), !tbaa !50
  br label %114

114:                                              ; preds = %109, %107
  %115 = add nuw nsw i64 %108, 1
  %116 = icmp eq i64 %115, %84
  br i1 %116, label %117, label %107, !llvm.loop !96

117:                                              ; preds = %114, %75, %78, %37
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @itrans_2(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 105
  %8 = load i32, ptr %7, align 8, !tbaa !97
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 %1, i32 0
  %11 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 80
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !50
  %19 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 132
  %20 = load ptr, ptr %19, align 8, !tbaa !98
  %21 = sext i32 %18 to i64
  %22 = getelementptr inbounds i32, ptr %20, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !50
  %24 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 133
  %25 = load ptr, ptr %24, align 8, !tbaa !99
  %26 = getelementptr inbounds i32, ptr %25, i64 %21
  %27 = load i32, ptr %26, align 4, !tbaa !50
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 88, i64 %16, i64 %28
  %30 = load i32, ptr %29, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %31 = call i32 @get_mem2Dint(ptr noundef nonnull %3, i32 noundef 4, i32 noundef 4) #8
  %32 = load ptr, ptr %3, align 8, !tbaa !45
  br label %33

33:                                               ; preds = %2, %33
  %34 = phi i64 [ 0, %2 ], [ %50, %33 ]
  %35 = shl nuw nsw i64 %34, 2
  %36 = getelementptr inbounds ptr, ptr %15, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !45
  %38 = load i32, ptr %37, align 4, !tbaa !50
  %39 = getelementptr inbounds ptr, ptr %32, i64 %34
  %40 = load ptr, ptr %39, align 8, !tbaa !45
  store i32 %38, ptr %40, align 4, !tbaa !50
  %41 = getelementptr inbounds i32, ptr %37, i64 4
  %42 = load i32, ptr %41, align 4, !tbaa !50
  %43 = getelementptr inbounds i32, ptr %40, i64 1
  store i32 %42, ptr %43, align 4, !tbaa !50
  %44 = getelementptr inbounds i32, ptr %37, i64 8
  %45 = load i32, ptr %44, align 4, !tbaa !50
  %46 = getelementptr inbounds i32, ptr %40, i64 2
  store i32 %45, ptr %46, align 4, !tbaa !50
  %47 = getelementptr inbounds i32, ptr %37, i64 12
  %48 = load i32, ptr %47, align 4, !tbaa !50
  %49 = getelementptr inbounds i32, ptr %40, i64 3
  store i32 %48, ptr %49, align 4, !tbaa !50
  %50 = add nuw nsw i64 %34, 1
  %51 = icmp eq i64 %50, 4
  br i1 %51, label %52, label %33, !llvm.loop !100

52:                                               ; preds = %33
  %53 = load ptr, ptr %3, align 8, !tbaa !45
  call void @ihadamard4x4(ptr noundef %53, ptr noundef %53) #8
  %54 = load ptr, ptr %3, align 8, !tbaa !45
  br label %55

55:                                               ; preds = %52, %55
  %56 = phi i64 [ 0, %52 ], [ %88, %55 ]
  %57 = getelementptr inbounds ptr, ptr %54, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !45
  %59 = load i32, ptr %58, align 4, !tbaa !50
  %60 = mul nsw i32 %59, %30
  %61 = shl i32 %60, %23
  %62 = add nsw i32 %61, 32
  %63 = ashr i32 %62, 6
  %64 = shl nuw nsw i64 %56, 2
  %65 = getelementptr inbounds ptr, ptr %15, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !45
  store i32 %63, ptr %66, align 4, !tbaa !50
  %67 = getelementptr inbounds i32, ptr %58, i64 1
  %68 = load i32, ptr %67, align 4, !tbaa !50
  %69 = mul nsw i32 %68, %30
  %70 = shl i32 %69, %23
  %71 = add nsw i32 %70, 32
  %72 = ashr i32 %71, 6
  %73 = getelementptr inbounds i32, ptr %66, i64 4
  store i32 %72, ptr %73, align 4, !tbaa !50
  %74 = getelementptr inbounds i32, ptr %58, i64 2
  %75 = load i32, ptr %74, align 4, !tbaa !50
  %76 = mul nsw i32 %75, %30
  %77 = shl i32 %76, %23
  %78 = add nsw i32 %77, 32
  %79 = ashr i32 %78, 6
  %80 = getelementptr inbounds i32, ptr %66, i64 8
  store i32 %79, ptr %80, align 4, !tbaa !50
  %81 = getelementptr inbounds i32, ptr %58, i64 3
  %82 = load i32, ptr %81, align 4, !tbaa !50
  %83 = mul nsw i32 %82, %30
  %84 = shl i32 %83, %23
  %85 = add nsw i32 %84, 32
  %86 = ashr i32 %85, 6
  %87 = getelementptr inbounds i32, ptr %66, i64 12
  store i32 %86, ptr %87, align 4, !tbaa !50
  %88 = add nuw nsw i64 %56, 1
  %89 = icmp eq i64 %88, 4
  br i1 %89, label %90, label %55, !llvm.loop !101

90:                                               ; preds = %55
  %91 = load ptr, ptr %3, align 8, !tbaa !45
  call void @free_mem2Dint(ptr noundef %91) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret void
}

declare i32 @get_mem2Dint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ihadamard4x4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @free_mem2Dint(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @itrans_sp(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 33
  %10 = load i32, ptr %9, align 4, !tbaa !102
  %11 = icmp eq i32 %10, 4
  %12 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 31
  %13 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 29
  %14 = select i1 %11, ptr %12, ptr %13
  %15 = load i32, ptr %14, align 4, !tbaa !50
  %16 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 132
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = sext i32 %15 to i64
  %19 = getelementptr inbounds i32, ptr %17, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !50
  %21 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 133
  %22 = load ptr, ptr %21, align 8, !tbaa !99
  %23 = getelementptr inbounds i32, ptr %22, i64 %18
  %24 = load i32, ptr %23, align 4, !tbaa !50
  %25 = load i32, ptr %12, align 4, !tbaa !103
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %17, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !50
  %29 = getelementptr inbounds i32, ptr %22, i64 %26
  %30 = load i32, ptr %29, align 4, !tbaa !50
  %31 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 77
  %32 = load ptr, ptr %31, align 8, !tbaa !48
  %33 = zext i32 %1 to i64
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !45
  %36 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 78
  %37 = load ptr, ptr %36, align 8, !tbaa !47
  %38 = getelementptr inbounds ptr, ptr %37, i64 %33
  %39 = load ptr, ptr %38, align 8, !tbaa !45
  %40 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 79
  %41 = load ptr, ptr %40, align 8, !tbaa !42
  %42 = getelementptr inbounds ptr, ptr %41, i64 %33
  %43 = load ptr, ptr %42, align 8, !tbaa !45
  %44 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 80
  %45 = load ptr, ptr %44, align 8, !tbaa !46
  %46 = getelementptr inbounds ptr, ptr %45, i64 %33
  %47 = load ptr, ptr %46, align 8, !tbaa !45
  %48 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 70, i64 %33
  %49 = load i32, ptr %48, align 4, !tbaa !50
  %50 = sext i32 %24 to i64
  %51 = sext i32 %30 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  %52 = call i32 @get_mem2Dint(ptr noundef nonnull %5, i32 noundef 16, i32 noundef 16) #8
  %53 = sext i32 %2 to i64
  %54 = load ptr, ptr %5, align 8, !tbaa !45
  %55 = sext i32 %3 to i64
  %56 = getelementptr ptr, ptr %35, i64 %55
  br label %57

57:                                               ; preds = %4, %57
  %58 = phi i64 [ 0, %4 ], [ %78, %57 ]
  %59 = getelementptr ptr, ptr %56, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !45
  %61 = getelementptr inbounds i16, ptr %60, i64 %53
  %62 = load i16, ptr %61, align 2, !tbaa !51
  %63 = zext i16 %62 to i32
  %64 = getelementptr inbounds ptr, ptr %54, i64 %58
  %65 = load ptr, ptr %64, align 8, !tbaa !45
  store i32 %63, ptr %65, align 4, !tbaa !50
  %66 = getelementptr i16, ptr %61, i64 1
  %67 = load i16, ptr %66, align 2, !tbaa !51
  %68 = zext i16 %67 to i32
  %69 = getelementptr inbounds i32, ptr %65, i64 1
  store i32 %68, ptr %69, align 4, !tbaa !50
  %70 = getelementptr i16, ptr %61, i64 2
  %71 = load i16, ptr %70, align 2, !tbaa !51
  %72 = zext i16 %71 to i32
  %73 = getelementptr inbounds i32, ptr %65, i64 2
  store i32 %72, ptr %73, align 4, !tbaa !50
  %74 = getelementptr i16, ptr %61, i64 3
  %75 = load i16, ptr %74, align 2, !tbaa !51
  %76 = zext i16 %75 to i32
  %77 = getelementptr inbounds i32, ptr %65, i64 3
  store i32 %76, ptr %77, align 4, !tbaa !50
  %78 = add nuw nsw i64 %58, 1
  %79 = icmp eq i64 %78, 4
  br i1 %79, label %80, label %57, !llvm.loop !104

80:                                               ; preds = %57
  %81 = add nsw i32 %28, 15
  %82 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %50
  %83 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %51
  %84 = load ptr, ptr %5, align 8, !tbaa !45
  call void @forward4x4(ptr noundef %84, ptr noundef %84, i32 noundef 0, i32 noundef 0) #8
  %85 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 48
  %86 = load i32, ptr %85, align 8, !tbaa !105
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %80
  %89 = load i32, ptr %9, align 4, !tbaa !102
  %90 = icmp eq i32 %89, 4
  br i1 %90, label %98, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %5, align 8, !tbaa !45
  %93 = add nsw i32 %28, 14
  %94 = shl nuw i32 1, %93
  %95 = sext i32 %2 to i64
  %96 = sext i32 %3 to i64
  %97 = getelementptr ptr, ptr %47, i64 %96
  br label %142

98:                                               ; preds = %88, %80
  %99 = load ptr, ptr %5, align 8, !tbaa !45
  %100 = add nsw i32 %28, 14
  %101 = shl nuw i32 1, %100
  %102 = sext i32 %2 to i64
  %103 = sext i32 %3 to i64
  %104 = getelementptr ptr, ptr %47, i64 %103
  br label %105

105:                                              ; preds = %98, %139
  %106 = phi i64 [ 0, %98 ], [ %140, %139 ]
  %107 = getelementptr ptr, ptr %104, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !45
  %109 = getelementptr inbounds ptr, ptr %99, i64 %106
  %110 = load ptr, ptr %109, align 8, !tbaa !45
  %111 = getelementptr i32, ptr %108, i64 %102
  br label %112

112:                                              ; preds = %105, %112
  %113 = phi i64 [ 0, %105 ], [ %137, %112 ]
  %114 = getelementptr i32, ptr %111, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !50
  %116 = ashr i32 %115, %20
  %117 = getelementptr inbounds [4 x i32], ptr %82, i64 %106, i64 %113
  %118 = load i32, ptr %117, align 4, !tbaa !50
  %119 = sdiv i32 %116, %118
  %120 = getelementptr inbounds i32, ptr %110, i64 %113
  %121 = load i32, ptr %120, align 4, !tbaa !50
  %122 = call i32 @llvm.abs.i32(i32 %121, i1 true)
  %123 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %51, i64 %106, i64 %113
  %124 = load i32, ptr %123, align 4, !tbaa !50
  %125 = mul nsw i32 %122, %124
  %126 = add nsw i32 %125, %101
  %127 = ashr i32 %126, %81
  %128 = icmp slt i32 %121, 0
  %129 = call i32 @llvm.abs.i32(i32 %127, i1 true)
  %130 = sub nsw i32 0, %129
  %131 = select i1 %128, i32 %130, i32 %129
  %132 = add nsw i32 %131, %119
  %133 = getelementptr inbounds [4 x i32], ptr %83, i64 %106, i64 %113
  %134 = load i32, ptr %133, align 4, !tbaa !50
  %135 = mul nsw i32 %132, %134
  %136 = shl i32 %135, %28
  store i32 %136, ptr %114, align 4, !tbaa !50
  %137 = add nuw nsw i64 %113, 1
  %138 = icmp eq i64 %137, 4
  br i1 %138, label %139, label %112, !llvm.loop !106

139:                                              ; preds = %112
  %140 = add nuw nsw i64 %106, 1
  %141 = icmp eq i64 %140, 4
  br i1 %141, label %187, label %105, !llvm.loop !107

142:                                              ; preds = %91, %184
  %143 = phi i64 [ 0, %91 ], [ %185, %184 ]
  %144 = getelementptr ptr, ptr %97, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !45
  %146 = getelementptr inbounds ptr, ptr %92, i64 %143
  %147 = load ptr, ptr %146, align 8, !tbaa !45
  %148 = getelementptr i32, ptr %145, i64 %95
  br label %149

149:                                              ; preds = %142, %149
  %150 = phi i64 [ 0, %142 ], [ %182, %149 ]
  %151 = getelementptr i32, ptr %148, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !50
  %153 = ashr i32 %152, %20
  %154 = getelementptr inbounds [4 x i32], ptr %82, i64 %143, i64 %150
  %155 = load i32, ptr %154, align 4, !tbaa !50
  %156 = getelementptr inbounds i32, ptr %147, i64 %150
  %157 = load i32, ptr %156, align 4, !tbaa !50
  %158 = freeze i32 %153
  %159 = srem i32 %158, %155
  %160 = sub nsw i32 %158, %159
  %161 = getelementptr inbounds [4 x [4 x i32]], ptr @A, i64 0, i64 %143, i64 %150
  %162 = load i32, ptr %161, align 4, !tbaa !50
  %163 = mul nsw i32 %160, %162
  %164 = shl i32 %163, %20
  %165 = ashr i32 %164, 6
  %166 = add nsw i32 %165, %157
  %167 = ashr i32 %166, 31
  %168 = icmp ne i32 %166, 0
  %169 = zext i1 %168 to i32
  %170 = or i32 %167, %169
  %171 = call i32 @llvm.abs.i32(i32 %166, i1 true)
  %172 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %51, i64 %143, i64 %150
  %173 = load i32, ptr %172, align 4, !tbaa !50
  %174 = mul nsw i32 %171, %173
  %175 = add nsw i32 %174, %94
  %176 = ashr i32 %175, %81
  %177 = getelementptr inbounds [4 x i32], ptr %83, i64 %143, i64 %150
  %178 = load i32, ptr %177, align 4, !tbaa !50
  %179 = mul i32 %170, %178
  %180 = mul i32 %179, %176
  %181 = shl i32 %180, %28
  store i32 %181, ptr %151, align 4, !tbaa !50
  %182 = add nuw nsw i64 %150, 1
  %183 = icmp eq i64 %182, 4
  br i1 %183, label %184, label %149, !llvm.loop !108

184:                                              ; preds = %149
  %185 = add nuw nsw i64 %143, 1
  %186 = icmp eq i64 %185, 4
  br i1 %186, label %187, label %142, !llvm.loop !109

187:                                              ; preds = %184, %139
  call void @inverse4x4(ptr noundef %47, ptr noundef %43, i32 noundef %3, i32 noundef %2) #8
  %188 = sext i32 %2 to i64
  %189 = add nsw i32 %2, 1
  %190 = sext i32 %189 to i64
  %191 = add nsw i32 %2, 2
  %192 = sext i32 %191 to i64
  %193 = add nsw i32 %2, 3
  %194 = sext i32 %193 to i64
  %195 = add nsw i32 %3, 3
  %196 = sext i32 %195 to i64
  br label %197

197:                                              ; preds = %187, %197
  %198 = phi i64 [ %55, %187 ], [ %235, %197 ]
  %199 = getelementptr inbounds ptr, ptr %43, i64 %198
  %200 = load ptr, ptr %199, align 8, !tbaa !45
  %201 = getelementptr inbounds i32, ptr %200, i64 %188
  %202 = load i32, ptr %201, align 4, !tbaa !50
  %203 = add nsw i32 %202, 32
  %204 = ashr i32 %203, 6
  %205 = call i32 @llvm.smax.i32(i32 %204, i32 0)
  %206 = call i32 @llvm.smin.i32(i32 %205, i32 %49)
  %207 = trunc i32 %206 to i16
  %208 = getelementptr inbounds ptr, ptr %39, i64 %198
  %209 = load ptr, ptr %208, align 8, !tbaa !45
  %210 = getelementptr inbounds i16, ptr %209, i64 %188
  store i16 %207, ptr %210, align 2, !tbaa !51
  %211 = getelementptr inbounds i32, ptr %200, i64 %190
  %212 = load i32, ptr %211, align 4, !tbaa !50
  %213 = add nsw i32 %212, 32
  %214 = ashr i32 %213, 6
  %215 = call i32 @llvm.smax.i32(i32 %214, i32 0)
  %216 = call i32 @llvm.smin.i32(i32 %215, i32 %49)
  %217 = trunc i32 %216 to i16
  %218 = getelementptr inbounds i16, ptr %209, i64 %190
  store i16 %217, ptr %218, align 2, !tbaa !51
  %219 = getelementptr inbounds i32, ptr %200, i64 %192
  %220 = load i32, ptr %219, align 4, !tbaa !50
  %221 = add nsw i32 %220, 32
  %222 = ashr i32 %221, 6
  %223 = call i32 @llvm.smax.i32(i32 %222, i32 0)
  %224 = call i32 @llvm.smin.i32(i32 %223, i32 %49)
  %225 = trunc i32 %224 to i16
  %226 = getelementptr inbounds i16, ptr %209, i64 %192
  store i16 %225, ptr %226, align 2, !tbaa !51
  %227 = getelementptr inbounds i32, ptr %200, i64 %194
  %228 = load i32, ptr %227, align 4, !tbaa !50
  %229 = add nsw i32 %228, 32
  %230 = ashr i32 %229, 6
  %231 = call i32 @llvm.smax.i32(i32 %230, i32 0)
  %232 = call i32 @llvm.smin.i32(i32 %231, i32 %49)
  %233 = trunc i32 %232 to i16
  %234 = getelementptr inbounds i16, ptr %209, i64 %194
  store i16 %233, ptr %234, align 2, !tbaa !51
  %235 = add nsw i64 %198, 1
  %236 = icmp slt i64 %198, %196
  br i1 %236, label %197, label %237, !llvm.loop !110

237:                                              ; preds = %197
  %238 = load ptr, ptr %5, align 8, !tbaa !45
  call void @free_mem2Dint(ptr noundef %238) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret void
}

declare void @forward4x4(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @itrans_sp_cr(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i32], align 16
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %7 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 77
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = add nsw i32 %1, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 80
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = getelementptr inbounds ptr, ptr %14, i64 %10
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = tail call ptr @new_mem2Dint(i32 noundef 16, i32 noundef 16) #8
  %18 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 132
  %19 = load ptr, ptr %18, align 8, !tbaa !98
  %20 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 29
  %21 = load i32, ptr %20, align 4, !tbaa !111
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = zext nneg i32 %21 to i64
  %25 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !112
  %27 = zext i8 %26 to i32
  br label %28

28:                                               ; preds = %2, %23
  %29 = phi i32 [ %27, %23 ], [ %21, %2 ]
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %19, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !50
  %33 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 133
  %34 = load ptr, ptr %33, align 8, !tbaa !99
  br i1 %22, label %40, label %35

35:                                               ; preds = %28
  %36 = zext nneg i32 %21 to i64
  %37 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !112
  %39 = zext i8 %38 to i32
  br label %40

40:                                               ; preds = %28, %35
  %41 = phi i32 [ %39, %35 ], [ %21, %28 ]
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %34, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !50
  %45 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 31
  %46 = load i32, ptr %45, align 4, !tbaa !103
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  %49 = zext nneg i32 %46 to i64
  %50 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !112
  %52 = zext i8 %51 to i32
  br label %53

53:                                               ; preds = %40, %48
  %54 = phi i32 [ %52, %48 ], [ %46, %40 ]
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %19, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !50
  br i1 %47, label %63, label %58

58:                                               ; preds = %53
  %59 = zext nneg i32 %46 to i64
  %60 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !112
  %62 = zext i8 %61 to i32
  br label %63

63:                                               ; preds = %53, %58
  %64 = phi i32 [ %62, %58 ], [ %46, %53 ]
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, ptr %34, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !50
  %68 = add nsw i32 %57, 15
  %69 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 33
  %70 = load i32, ptr %69, align 4, !tbaa !102
  %71 = icmp eq i32 %70, 4
  %72 = select i1 %71, i32 %67, i32 %44
  %73 = select i1 %71, i32 %57, i32 %32
  %74 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 78
  %75 = load i32, ptr %74, align 8, !tbaa !88
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %63
  %78 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 77
  br label %79

79:                                               ; preds = %77, %104
  %80 = phi i64 [ 0, %77 ], [ %105, %104 ]
  %81 = load i32, ptr %78, align 4, !tbaa !82
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %79
  %84 = getelementptr inbounds ptr, ptr %12, i64 %80
  %85 = load ptr, ptr %84, align 8, !tbaa !45
  %86 = getelementptr inbounds ptr, ptr %17, i64 %80
  %87 = load ptr, ptr %86, align 8, !tbaa !45
  br label %94

88:                                               ; preds = %104, %63
  %89 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 78
  %90 = load i32, ptr %89, align 8, !tbaa !88
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %122

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 77
  br label %109

94:                                               ; preds = %83, %94
  %95 = phi i64 [ 0, %83 ], [ %100, %94 ]
  %96 = getelementptr inbounds i16, ptr %85, i64 %95
  %97 = load i16, ptr %96, align 2, !tbaa !51
  %98 = zext i16 %97 to i32
  %99 = getelementptr inbounds i32, ptr %87, i64 %95
  store i32 %98, ptr %99, align 4, !tbaa !50
  store i16 0, ptr %96, align 2, !tbaa !51
  %100 = add nuw nsw i64 %95, 1
  %101 = load i32, ptr %78, align 4, !tbaa !82
  %102 = sext i32 %101 to i64
  %103 = icmp slt i64 %100, %102
  br i1 %103, label %94, label %104, !llvm.loop !113

104:                                              ; preds = %94, %79
  %105 = add nuw nsw i64 %80, 1
  %106 = load i32, ptr %74, align 8, !tbaa !88
  %107 = sext i32 %106 to i64
  %108 = icmp slt i64 %105, %107
  br i1 %108, label %79, label %88, !llvm.loop !114

109:                                              ; preds = %92, %118
  %110 = phi i32 [ 0, %92 ], [ %119, %118 ]
  %111 = load i32, ptr %93, align 4, !tbaa !82
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %109, %113
  %114 = phi i32 [ %115, %113 ], [ 0, %109 ]
  tail call void @forward4x4(ptr noundef %17, ptr noundef %17, i32 noundef %110, i32 noundef %114) #8
  %115 = add nuw nsw i32 %114, 4
  %116 = load i32, ptr %93, align 4, !tbaa !82
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %113, label %118, !llvm.loop !115

118:                                              ; preds = %113, %109
  %119 = add nuw nsw i32 %110, 4
  %120 = load i32, ptr %89, align 8, !tbaa !88
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %109, label %122, !llvm.loop !116

122:                                              ; preds = %118, %88
  %123 = load ptr, ptr %17, align 8, !tbaa !45
  %124 = load i32, ptr %123, align 4, !tbaa !50
  %125 = getelementptr inbounds ptr, ptr %17, i64 4
  %126 = load ptr, ptr %125, align 8, !tbaa !45
  %127 = load i32, ptr %126, align 4, !tbaa !50
  %128 = add nsw i32 %127, %124
  %129 = getelementptr inbounds i32, ptr %123, i64 4
  %130 = load i32, ptr %129, align 4, !tbaa !50
  %131 = getelementptr inbounds i32, ptr %126, i64 4
  %132 = load i32, ptr %131, align 4, !tbaa !50
  %133 = add i32 %132, %130
  %134 = add i32 %133, %128
  store i32 %134, ptr %3, align 16, !tbaa !50
  %135 = add i32 %124, %130
  %136 = add i32 %127, %132
  %137 = sub i32 %135, %136
  %138 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 1
  store i32 %137, ptr %138, align 4, !tbaa !50
  %139 = add i32 %130, %132
  %140 = sub i32 %128, %139
  %141 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 2
  store i32 %140, ptr %141, align 8, !tbaa !50
  %142 = add i32 %127, %130
  %143 = sub i32 %124, %142
  %144 = add nsw i32 %143, %132
  %145 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 3
  store i32 %144, ptr %145, align 4, !tbaa !50
  %146 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 48
  %147 = load i32, ptr %146, align 8, !tbaa !105
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %122
  %150 = load i32, ptr %69, align 4, !tbaa !102
  %151 = icmp eq i32 %150, 4
  br i1 %151, label %163, label %152

152:                                              ; preds = %149
  %153 = sext i32 %72 to i64
  %154 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %153
  %155 = load i32, ptr %154, align 16, !tbaa !50
  %156 = sext i32 %67 to i64
  %157 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %156
  %158 = load i32, ptr %157, align 16, !tbaa !50
  %159 = add nsw i32 %57, 16
  %160 = shl nuw i32 1, %68
  %161 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %156
  %162 = load i32, ptr %161, align 16, !tbaa !50
  br label %264

163:                                              ; preds = %149, %122
  %164 = sext i32 %67 to i64
  %165 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %164
  %166 = load i32, ptr %165, align 16, !tbaa !50
  %167 = add nsw i32 %57, 16
  %168 = shl nuw i32 1, %68
  %169 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %164
  %170 = load i32, ptr %169, align 16, !tbaa !50
  br label %171

171:                                              ; preds = %163, %207
  %172 = phi i64 [ 0, %163 ], [ %208, %207 ]
  %173 = shl nuw nsw i64 %172, 1
  %174 = shl nuw nsw i64 %172, 2
  %175 = getelementptr inbounds ptr, ptr %16, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !45
  br label %186

177:                                              ; preds = %207
  %178 = load i32, ptr %89, align 8, !tbaa !88
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %370

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 77
  %182 = sext i32 %72 to i64
  %183 = sext i32 %67 to i64
  %184 = add nsw i32 %57, 14
  %185 = shl nuw i32 1, %184
  br label %210

186:                                              ; preds = %171, %186
  %187 = phi i64 [ 0, %171 ], [ %205, %186 ]
  %188 = add nuw nsw i64 %187, %173
  %189 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %188
  %190 = load i32, ptr %189, align 4, !tbaa !50
  %191 = tail call i32 @llvm.abs.i32(i32 %190, i1 true)
  %192 = mul nsw i32 %191, %166
  %193 = add nsw i32 %192, %168
  %194 = ashr i32 %193, %167
  %195 = icmp slt i32 %190, 0
  %196 = tail call i32 @llvm.abs.i32(i32 %194, i1 true)
  %197 = sub nsw i32 0, %196
  %198 = select i1 %195, i32 %197, i32 %196
  %199 = shl nuw nsw i64 %187, 2
  %200 = getelementptr inbounds i32, ptr %176, i64 %199
  %201 = load i32, ptr %200, align 4, !tbaa !50
  %202 = add nsw i32 %201, %198
  %203 = mul nsw i32 %202, %170
  %204 = shl i32 %203, %57
  store i32 %204, ptr %189, align 4, !tbaa !50
  %205 = add nuw nsw i64 %187, 1
  %206 = icmp eq i64 %187, 0
  br i1 %206, label %186, label %207, !llvm.loop !117

207:                                              ; preds = %186
  %208 = add nuw nsw i64 %172, 1
  %209 = icmp eq i64 %172, 0
  br i1 %209, label %171, label %177, !llvm.loop !118

210:                                              ; preds = %180, %259
  %211 = phi i64 [ 0, %180 ], [ %260, %259 ]
  %212 = load i32, ptr %181, align 4, !tbaa !82
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %259

214:                                              ; preds = %210, %254
  %215 = phi i64 [ %255, %254 ], [ 0, %210 ]
  br label %216

216:                                              ; preds = %214, %251
  %217 = phi i64 [ 0, %214 ], [ %252, %251 ]
  %218 = or disjoint i64 %217, %211
  %219 = getelementptr inbounds ptr, ptr %16, i64 %218
  %220 = load ptr, ptr %219, align 8, !tbaa !45
  %221 = getelementptr inbounds ptr, ptr %17, i64 %218
  %222 = load ptr, ptr %221, align 8, !tbaa !45
  br label %223

223:                                              ; preds = %216, %223
  %224 = phi i64 [ 0, %216 ], [ %249, %223 ]
  %225 = or disjoint i64 %224, %215
  %226 = getelementptr inbounds i32, ptr %220, i64 %225
  %227 = load i32, ptr %226, align 4, !tbaa !50
  %228 = ashr i32 %227, %73
  %229 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %182, i64 %217, i64 %224
  %230 = load i32, ptr %229, align 4, !tbaa !50
  %231 = sdiv i32 %228, %230
  store i32 %231, ptr %226, align 4, !tbaa !50
  %232 = getelementptr inbounds i32, ptr %222, i64 %225
  %233 = load i32, ptr %232, align 4, !tbaa !50
  %234 = tail call i32 @llvm.abs.i32(i32 %233, i1 true)
  %235 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %183, i64 %217, i64 %224
  %236 = load i32, ptr %235, align 4, !tbaa !50
  %237 = mul nsw i32 %234, %236
  %238 = add nsw i32 %237, %185
  %239 = ashr i32 %238, %68
  %240 = icmp slt i32 %233, 0
  %241 = tail call i32 @llvm.abs.i32(i32 %239, i1 true)
  %242 = sub nsw i32 0, %241
  %243 = select i1 %240, i32 %242, i32 %241
  %244 = add nsw i32 %243, %231
  %245 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %183, i64 %217, i64 %224
  %246 = load i32, ptr %245, align 4, !tbaa !50
  %247 = mul nsw i32 %244, %246
  %248 = shl i32 %247, %57
  store i32 %248, ptr %226, align 4, !tbaa !50
  %249 = add nuw nsw i64 %224, 1
  %250 = icmp eq i64 %249, 4
  br i1 %250, label %251, label %223, !llvm.loop !119

251:                                              ; preds = %223
  %252 = add nuw nsw i64 %217, 1
  %253 = icmp eq i64 %252, 4
  br i1 %253, label %254, label %216, !llvm.loop !120

254:                                              ; preds = %251
  %255 = add nuw nsw i64 %215, 4
  %256 = load i32, ptr %181, align 4, !tbaa !82
  %257 = sext i32 %256 to i64
  %258 = icmp slt i64 %255, %257
  br i1 %258, label %214, label %259, !llvm.loop !121

259:                                              ; preds = %254, %210
  %260 = add nuw nsw i64 %211, 4
  %261 = load i32, ptr %89, align 8, !tbaa !88
  %262 = sext i32 %261 to i64
  %263 = icmp slt i64 %260, %262
  br i1 %263, label %210, label %370, !llvm.loop !122

264:                                              ; preds = %152, %305
  %265 = phi i64 [ 0, %152 ], [ %306, %305 ]
  %266 = shl nuw nsw i64 %265, 1
  %267 = shl nuw nsw i64 %265, 2
  %268 = getelementptr inbounds ptr, ptr %16, i64 %267
  %269 = load ptr, ptr %268, align 8, !tbaa !45
  br label %279

270:                                              ; preds = %305
  %271 = load i32, ptr %89, align 8, !tbaa !88
  %272 = icmp sgt i32 %271, 0
  br i1 %272, label %273, label %370

273:                                              ; preds = %270
  %274 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 77
  %275 = sext i32 %72 to i64
  %276 = sext i32 %67 to i64
  %277 = add nsw i32 %57, 14
  %278 = shl nuw i32 1, %277
  br label %308

279:                                              ; preds = %264, %279
  %280 = phi i64 [ 0, %264 ], [ %303, %279 ]
  %281 = add nuw nsw i64 %280, %266
  %282 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %281
  %283 = load i32, ptr %282, align 4, !tbaa !50
  %284 = shl nuw nsw i64 %280, 2
  %285 = getelementptr inbounds i32, ptr %269, i64 %284
  %286 = load i32, ptr %285, align 4, !tbaa !50
  %287 = shl i32 %286, 4
  %288 = mul i32 %287, %155
  %289 = shl i32 %288, %73
  %290 = ashr i32 %289, 5
  %291 = add nsw i32 %290, %283
  %292 = ashr i32 %291, 31
  %293 = icmp ne i32 %291, 0
  %294 = zext i1 %293 to i32
  %295 = or i32 %292, %294
  %296 = tail call i32 @llvm.abs.i32(i32 %291, i1 true)
  %297 = mul nsw i32 %296, %158
  %298 = add nsw i32 %297, %160
  %299 = ashr i32 %298, %159
  %300 = mul i32 %295, %162
  %301 = mul i32 %300, %299
  %302 = shl i32 %301, %57
  store i32 %302, ptr %282, align 4, !tbaa !50
  %303 = add nuw nsw i64 %280, 1
  %304 = icmp eq i64 %280, 0
  br i1 %304, label %279, label %305, !llvm.loop !123

305:                                              ; preds = %279
  %306 = add nuw nsw i64 %265, 1
  %307 = icmp eq i64 %265, 0
  br i1 %307, label %264, label %270, !llvm.loop !124

308:                                              ; preds = %273, %365
  %309 = phi i64 [ 0, %273 ], [ %366, %365 ]
  %310 = load i32, ptr %274, align 4, !tbaa !82
  %311 = icmp sgt i32 %310, 0
  br i1 %311, label %312, label %365

312:                                              ; preds = %308, %360
  %313 = phi i64 [ %361, %360 ], [ 0, %308 ]
  br label %314

314:                                              ; preds = %312, %357
  %315 = phi i64 [ 0, %312 ], [ %358, %357 ]
  %316 = or disjoint i64 %315, %309
  %317 = getelementptr inbounds ptr, ptr %16, i64 %316
  %318 = load ptr, ptr %317, align 8, !tbaa !45
  %319 = getelementptr inbounds ptr, ptr %17, i64 %316
  %320 = load ptr, ptr %319, align 8, !tbaa !45
  br label %321

321:                                              ; preds = %314, %321
  %322 = phi i64 [ 0, %314 ], [ %355, %321 ]
  %323 = or disjoint i64 %322, %313
  %324 = getelementptr inbounds i32, ptr %318, i64 %323
  %325 = load i32, ptr %324, align 4, !tbaa !50
  %326 = ashr i32 %325, %73
  %327 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %275, i64 %315, i64 %322
  %328 = load i32, ptr %327, align 4, !tbaa !50
  %329 = getelementptr inbounds i32, ptr %320, i64 %323
  %330 = load i32, ptr %329, align 4, !tbaa !50
  %331 = freeze i32 %326
  %332 = srem i32 %331, %328
  %333 = sub nsw i32 %331, %332
  %334 = getelementptr inbounds [4 x [4 x i32]], ptr @A, i64 0, i64 %315, i64 %322
  %335 = load i32, ptr %334, align 4, !tbaa !50
  %336 = mul nsw i32 %333, %335
  %337 = shl i32 %336, %73
  %338 = ashr i32 %337, 6
  %339 = add nsw i32 %338, %330
  %340 = ashr i32 %339, 31
  %341 = icmp ne i32 %339, 0
  %342 = zext i1 %341 to i32
  %343 = or i32 %340, %342
  %344 = tail call i32 @llvm.abs.i32(i32 %339, i1 true)
  %345 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %276, i64 %315, i64 %322
  %346 = load i32, ptr %345, align 4, !tbaa !50
  %347 = mul nsw i32 %344, %346
  %348 = add nsw i32 %347, %278
  %349 = ashr i32 %348, %68
  %350 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %276, i64 %315, i64 %322
  %351 = load i32, ptr %350, align 4, !tbaa !50
  %352 = mul i32 %343, %351
  %353 = mul i32 %352, %349
  %354 = shl i32 %353, %57
  store i32 %354, ptr %324, align 4, !tbaa !50
  %355 = add nuw nsw i64 %322, 1
  %356 = icmp eq i64 %355, 4
  br i1 %356, label %357, label %321, !llvm.loop !125

357:                                              ; preds = %321
  %358 = add nuw nsw i64 %315, 1
  %359 = icmp eq i64 %358, 4
  br i1 %359, label %360, label %314, !llvm.loop !126

360:                                              ; preds = %357
  %361 = add nuw nsw i64 %313, 4
  %362 = load i32, ptr %274, align 4, !tbaa !82
  %363 = sext i32 %362 to i64
  %364 = icmp slt i64 %361, %363
  br i1 %364, label %312, label %365, !llvm.loop !127

365:                                              ; preds = %360, %308
  %366 = add nuw nsw i64 %309, 4
  %367 = load i32, ptr %89, align 8, !tbaa !88
  %368 = sext i32 %367 to i64
  %369 = icmp slt i64 %366, %368
  br i1 %369, label %308, label %370, !llvm.loop !128

370:                                              ; preds = %365, %259, %270, %177
  %371 = load i32, ptr %3, align 16, !tbaa !50
  %372 = load i32, ptr %138, align 4, !tbaa !50
  %373 = add nsw i32 %372, %371
  %374 = load i32, ptr %141, align 8, !tbaa !50
  %375 = load i32, ptr %145, align 4, !tbaa !50
  %376 = add i32 %375, %374
  %377 = add i32 %376, %373
  %378 = ashr i32 %377, 1
  %379 = load ptr, ptr %16, align 8, !tbaa !45
  store i32 %378, ptr %379, align 4, !tbaa !50
  %380 = add i32 %374, %375
  %381 = sub i32 %373, %380
  %382 = ashr i32 %381, 1
  %383 = getelementptr inbounds i32, ptr %379, i64 4
  store i32 %382, ptr %383, align 4, !tbaa !50
  %384 = add i32 %371, %374
  %385 = add i32 %372, %375
  %386 = sub i32 %384, %385
  %387 = ashr i32 %386, 1
  %388 = getelementptr inbounds ptr, ptr %16, i64 4
  %389 = load ptr, ptr %388, align 8, !tbaa !45
  store i32 %387, ptr %389, align 4, !tbaa !50
  %390 = add i32 %372, %374
  %391 = sub i32 %371, %390
  %392 = add nsw i32 %391, %375
  %393 = ashr i32 %392, 1
  %394 = getelementptr inbounds i32, ptr %389, i64 4
  store i32 %393, ptr %394, align 4, !tbaa !50
  tail call void @free_mem2Dint(ptr noundef nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret void
}

declare ptr @new_mem2Dint(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @iMBtrans4x4(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 125
  %6 = load ptr, ptr %5, align 8, !tbaa !129
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 33
  %10 = load ptr, ptr %9, align 8, !tbaa !130
  %11 = add i32 %1, -1
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  br label %16

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 32
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi ptr [ %13, %8 ], [ %15, %14 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %20 = load i32, ptr %19, align 4, !tbaa !133
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %24 = load i16, ptr %23, align 8, !tbaa !134
  %25 = icmp eq i16 %24, 10
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void @Inv_Residual_trans_16x16(ptr noundef nonnull %0, i32 noundef %1)
  br label %80

27:                                               ; preds = %22, %16
  %28 = icmp eq i32 %2, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = icmp eq i32 %20, 1
  br i1 %30, label %31, label %53

31:                                               ; preds = %29, %27
  %32 = phi ptr [ @itrans_sp, %27 ], [ @Inv_Residual_trans_4x4, %29 ]
  %33 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 56
  store ptr %32, ptr %33, align 8, !tbaa !135
  br label %38

34:                                               ; preds = %42
  %35 = add nuw nsw i64 %40, 4
  %36 = icmp ult i32 %41, 12
  %37 = add nuw nsw i64 %39, 4
  br i1 %36, label %38, label %80, !llvm.loop !136

38:                                               ; preds = %31, %34
  %39 = phi i64 [ 4, %31 ], [ %37, %34 ]
  %40 = phi i64 [ 0, %31 ], [ %35, %34 ]
  %41 = trunc i64 %40 to i32
  br label %42

42:                                               ; preds = %38, %42
  %43 = phi i64 [ %40, %38 ], [ %51, %42 ]
  %44 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !112
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 12
  %48 = shl nuw nsw i32 %46, 2
  %49 = and i32 %48, 12
  %50 = load ptr, ptr %33, align 8, !tbaa !135
  tail call void %50(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %49, i32 noundef %47) #8
  %51 = add nuw nsw i64 %43, 1
  %52 = icmp eq i64 %51, %39
  br i1 %52, label %34, label %42, !llvm.loop !137

53:                                               ; preds = %29
  %54 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 80
  %55 = load ptr, ptr %54, align 8, !tbaa !46
  %56 = zext i32 %1 to i64
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !45
  %59 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 79
  %60 = load ptr, ptr %59, align 8, !tbaa !42
  %61 = getelementptr inbounds ptr, ptr %60, i64 %56
  %62 = load ptr, ptr %61, align 8, !tbaa !45
  br label %63

63:                                               ; preds = %53, %63
  %64 = phi i32 [ 0, %53 ], [ %65, %63 ]
  tail call void @inverse4x4(ptr noundef %58, ptr noundef %62, i32 noundef %64, i32 noundef 0) #8
  tail call void @inverse4x4(ptr noundef %58, ptr noundef %62, i32 noundef %64, i32 noundef 4) #8
  tail call void @inverse4x4(ptr noundef %58, ptr noundef %62, i32 noundef %64, i32 noundef 8) #8
  tail call void @inverse4x4(ptr noundef %58, ptr noundef %62, i32 noundef %64, i32 noundef 12) #8
  %65 = add nuw nsw i32 %64, 4
  %66 = icmp ult i32 %64, 12
  br i1 %66, label %63, label %67, !llvm.loop !138

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 78
  %69 = load ptr, ptr %68, align 8, !tbaa !47
  %70 = getelementptr inbounds ptr, ptr %69, i64 %56
  %71 = load ptr, ptr %70, align 8, !tbaa !45
  %72 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 77
  %73 = load ptr, ptr %72, align 8, !tbaa !48
  %74 = getelementptr inbounds ptr, ptr %73, i64 %56
  %75 = load ptr, ptr %74, align 8, !tbaa !45
  %76 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !49
  %78 = getelementptr inbounds %struct.video_par, ptr %77, i64 0, i32 70, i64 %56
  %79 = load i32, ptr %78, align 4, !tbaa !50
  tail call void @sample_reconstruct(ptr noundef %71, ptr noundef %75, ptr noundef %62, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16, i32 noundef %79, i32 noundef 6) #8
  br label %80

80:                                               ; preds = %34, %67, %26
  %81 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 9
  %82 = load i32, ptr %81, align 8, !tbaa !139
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds ptr, ptr %18, i64 %83
  %85 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 78
  %86 = load ptr, ptr %85, align 8, !tbaa !47
  %87 = zext i32 %1 to i64
  %88 = getelementptr inbounds ptr, ptr %86, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !45
  %90 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 8
  %91 = load i32, ptr %90, align 4, !tbaa !140
  %92 = sext i32 %91 to i64
  br label %93

93:                                               ; preds = %80, %93
  %94 = phi i32 [ 0, %80 ], [ %117, %93 ]
  %95 = phi ptr [ %84, %80 ], [ %112, %93 ]
  %96 = phi ptr [ %89, %80 ], [ %115, %93 ]
  %97 = getelementptr inbounds ptr, ptr %95, i64 1
  %98 = load ptr, ptr %95, align 8, !tbaa !45
  %99 = getelementptr inbounds i16, ptr %98, i64 %92
  %100 = getelementptr inbounds ptr, ptr %96, i64 1
  %101 = load ptr, ptr %96, align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %99, ptr noundef nonnull align 2 dereferenceable(32) %101, i64 32, i1 false)
  %102 = getelementptr inbounds ptr, ptr %95, i64 2
  %103 = load ptr, ptr %97, align 8, !tbaa !45
  %104 = getelementptr inbounds i16, ptr %103, i64 %92
  %105 = getelementptr inbounds ptr, ptr %96, i64 2
  %106 = load ptr, ptr %100, align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %104, ptr noundef nonnull align 2 dereferenceable(32) %106, i64 32, i1 false)
  %107 = getelementptr inbounds ptr, ptr %95, i64 3
  %108 = load ptr, ptr %102, align 8, !tbaa !45
  %109 = getelementptr inbounds i16, ptr %108, i64 %92
  %110 = getelementptr inbounds ptr, ptr %96, i64 3
  %111 = load ptr, ptr %105, align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %109, ptr noundef nonnull align 2 dereferenceable(32) %111, i64 32, i1 false)
  %112 = getelementptr inbounds ptr, ptr %95, i64 4
  %113 = load ptr, ptr %107, align 8, !tbaa !45
  %114 = getelementptr inbounds i16, ptr %113, i64 %92
  %115 = getelementptr inbounds ptr, ptr %96, i64 4
  %116 = load ptr, ptr %110, align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %114, ptr noundef nonnull align 2 dereferenceable(32) %116, i64 32, i1 false)
  %117 = add nuw nsw i32 %94, 4
  %118 = icmp ult i32 %94, 12
  br i1 %118, label %93, label %119, !llvm.loop !141

119:                                              ; preds = %93
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @copy_image_data_16x16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = sext i32 %2 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ 0, %4 ], [ %35, %7 ]
  %9 = phi ptr [ %0, %4 ], [ %29, %7 ]
  %10 = phi ptr [ %1, %4 ], [ %32, %7 ]
  %11 = getelementptr inbounds ptr, ptr %9, i64 1
  %12 = load ptr, ptr %9, align 8, !tbaa !45
  %13 = getelementptr inbounds i16, ptr %12, i64 %5
  %14 = getelementptr inbounds ptr, ptr %10, i64 1
  %15 = load ptr, ptr %10, align 8, !tbaa !45
  %16 = getelementptr inbounds i16, ptr %15, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %13, ptr noundef nonnull align 2 dereferenceable(32) %16, i64 32, i1 false)
  %17 = getelementptr inbounds ptr, ptr %9, i64 2
  %18 = load ptr, ptr %11, align 8, !tbaa !45
  %19 = getelementptr inbounds i16, ptr %18, i64 %5
  %20 = getelementptr inbounds ptr, ptr %10, i64 2
  %21 = load ptr, ptr %14, align 8, !tbaa !45
  %22 = getelementptr inbounds i16, ptr %21, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %19, ptr noundef nonnull align 2 dereferenceable(32) %22, i64 32, i1 false)
  %23 = getelementptr inbounds ptr, ptr %9, i64 3
  %24 = load ptr, ptr %17, align 8, !tbaa !45
  %25 = getelementptr inbounds i16, ptr %24, i64 %5
  %26 = getelementptr inbounds ptr, ptr %10, i64 3
  %27 = load ptr, ptr %20, align 8, !tbaa !45
  %28 = getelementptr inbounds i16, ptr %27, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %25, ptr noundef nonnull align 2 dereferenceable(32) %28, i64 32, i1 false)
  %29 = getelementptr inbounds ptr, ptr %9, i64 4
  %30 = load ptr, ptr %23, align 8, !tbaa !45
  %31 = getelementptr inbounds i16, ptr %30, i64 %5
  %32 = getelementptr inbounds ptr, ptr %10, i64 4
  %33 = load ptr, ptr %26, align 8, !tbaa !45
  %34 = getelementptr inbounds i16, ptr %33, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %31, ptr noundef nonnull align 2 dereferenceable(32) %34, i64 32, i1 false)
  %35 = add nuw nsw i32 %8, 4
  %36 = icmp ult i32 %8, 12
  br i1 %36, label %7, label %37, !llvm.loop !141

37:                                               ; preds = %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @iMBtrans8x8(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 125
  %5 = load ptr, ptr %4, align 8, !tbaa !129
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.storable_picture, ptr %5, i64 0, i32 33
  %9 = load ptr, ptr %8, align 8, !tbaa !130
  %10 = add i32 %1, -1
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  br label %15

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.storable_picture, ptr %5, i64 0, i32 32
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %12, %7 ], [ %14, %13 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  tail call void @itrans8x8(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0, i32 noundef 0) #8
  tail call void @itrans8x8(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 8, i32 noundef 0) #8
  tail call void @itrans8x8(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0, i32 noundef 8) #8
  tail call void @itrans8x8(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 8, i32 noundef 8) #8
  %18 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !139
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %17, i64 %20
  %22 = load ptr, ptr %0, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.slice, ptr %22, i64 0, i32 78
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = zext i32 %1 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !45
  %28 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 8
  %29 = load i32, ptr %28, align 4, !tbaa !140
  %30 = sext i32 %29 to i64
  br label %31

31:                                               ; preds = %15, %31
  %32 = phi i32 [ 0, %15 ], [ %55, %31 ]
  %33 = phi ptr [ %21, %15 ], [ %50, %31 ]
  %34 = phi ptr [ %27, %15 ], [ %53, %31 ]
  %35 = getelementptr inbounds ptr, ptr %33, i64 1
  %36 = load ptr, ptr %33, align 8, !tbaa !45
  %37 = getelementptr inbounds i16, ptr %36, i64 %30
  %38 = getelementptr inbounds ptr, ptr %34, i64 1
  %39 = load ptr, ptr %34, align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %37, ptr noundef nonnull align 2 dereferenceable(32) %39, i64 32, i1 false)
  %40 = getelementptr inbounds ptr, ptr %33, i64 2
  %41 = load ptr, ptr %35, align 8, !tbaa !45
  %42 = getelementptr inbounds i16, ptr %41, i64 %30
  %43 = getelementptr inbounds ptr, ptr %34, i64 2
  %44 = load ptr, ptr %38, align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %42, ptr noundef nonnull align 2 dereferenceable(32) %44, i64 32, i1 false)
  %45 = getelementptr inbounds ptr, ptr %33, i64 3
  %46 = load ptr, ptr %40, align 8, !tbaa !45
  %47 = getelementptr inbounds i16, ptr %46, i64 %30
  %48 = getelementptr inbounds ptr, ptr %34, i64 3
  %49 = load ptr, ptr %43, align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %47, ptr noundef nonnull align 2 dereferenceable(32) %49, i64 32, i1 false)
  %50 = getelementptr inbounds ptr, ptr %33, i64 4
  %51 = load ptr, ptr %45, align 8, !tbaa !45
  %52 = getelementptr inbounds i16, ptr %51, i64 %30
  %53 = getelementptr inbounds ptr, ptr %34, i64 4
  %54 = load ptr, ptr %48, align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %52, ptr noundef nonnull align 2 dereferenceable(32) %54, i64 32, i1 false)
  %55 = add nuw nsw i32 %32, 4
  %56 = icmp ult i32 %32, 12
  br i1 %56, label %31, label %57, !llvm.loop !141

57:                                               ; preds = %31
  ret void
}

declare void @itrans8x8(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @iTransform(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 125
  %8 = load ptr, ptr %7, align 8, !tbaa !129
  %9 = add i32 %1, -1
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %11 = load i32, ptr %10, align 4, !tbaa !142
  %12 = and i32 %11, 15
  %13 = icmp eq i32 %2, 0
  %14 = or i32 %12, %2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  %18 = load i32, ptr %17, align 4, !tbaa !143
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @iMBtrans4x4(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2)
  br label %72

21:                                               ; preds = %16
  tail call void @iMBtrans8x8(ptr noundef nonnull %0, i32 noundef %1)
  br label %72

22:                                               ; preds = %3
  %23 = icmp eq i32 %1, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 33
  %26 = load ptr, ptr %25, align 8, !tbaa !130
  %27 = sext i32 %9 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  br label %31

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 32
  br label %31

31:                                               ; preds = %29, %24
  %32 = phi ptr [ %28, %24 ], [ %30, %29 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !45
  %34 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 9
  %35 = load i32, ptr %34, align 8, !tbaa !139
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %33, i64 %36
  %38 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 77
  %39 = load ptr, ptr %38, align 8, !tbaa !48
  %40 = zext i32 %1 to i64
  %41 = getelementptr inbounds ptr, ptr %39, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !45
  %43 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 8
  %44 = load i32, ptr %43, align 4, !tbaa !140
  %45 = sext i32 %44 to i64
  br label %46

46:                                               ; preds = %31, %46
  %47 = phi i32 [ 0, %31 ], [ %70, %46 ]
  %48 = phi ptr [ %37, %31 ], [ %65, %46 ]
  %49 = phi ptr [ %42, %31 ], [ %68, %46 ]
  %50 = getelementptr inbounds ptr, ptr %48, i64 1
  %51 = load ptr, ptr %48, align 8, !tbaa !45
  %52 = getelementptr inbounds i16, ptr %51, i64 %45
  %53 = getelementptr inbounds ptr, ptr %49, i64 1
  %54 = load ptr, ptr %49, align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %52, ptr noundef nonnull align 2 dereferenceable(32) %54, i64 32, i1 false)
  %55 = getelementptr inbounds ptr, ptr %48, i64 2
  %56 = load ptr, ptr %50, align 8, !tbaa !45
  %57 = getelementptr inbounds i16, ptr %56, i64 %45
  %58 = getelementptr inbounds ptr, ptr %49, i64 2
  %59 = load ptr, ptr %53, align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %57, ptr noundef nonnull align 2 dereferenceable(32) %59, i64 32, i1 false)
  %60 = getelementptr inbounds ptr, ptr %48, i64 3
  %61 = load ptr, ptr %55, align 8, !tbaa !45
  %62 = getelementptr inbounds i16, ptr %61, i64 %45
  %63 = getelementptr inbounds ptr, ptr %49, i64 3
  %64 = load ptr, ptr %58, align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %62, ptr noundef nonnull align 2 dereferenceable(32) %64, i64 32, i1 false)
  %65 = getelementptr inbounds ptr, ptr %48, i64 4
  %66 = load ptr, ptr %60, align 8, !tbaa !45
  %67 = getelementptr inbounds i16, ptr %66, i64 %45
  %68 = getelementptr inbounds ptr, ptr %49, i64 4
  %69 = load ptr, ptr %63, align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %67, ptr noundef nonnull align 2 dereferenceable(32) %69, i64 32, i1 false)
  %70 = add nuw nsw i32 %47, 4
  %71 = icmp ult i32 %47, 12
  br i1 %71, label %46, label %72, !llvm.loop !141

72:                                               ; preds = %46, %20, %21
  %73 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 48
  %74 = load i32, ptr %73, align 4, !tbaa !144
  switch i32 %74, label %75 [
    i32 0, label %509
    i32 3, label %509
  ]

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 33
  %77 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 11
  %78 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 78
  %79 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %80 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 56
  %81 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 78
  %82 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 77
  %83 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 10
  %84 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 81, i64 1
  %85 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 81, i64 1, i64 1
  %86 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %87 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 75
  %88 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 75
  %89 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 77
  %90 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 79
  %91 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 81, i64 1
  %92 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 81, i64 1, i64 1
  %93 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 10
  %94 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 81, i64 1
  %95 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 81, i64 1, i64 1
  %96 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 77
  %97 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 10
  %98 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 81, i64 1
  %99 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 81, i64 1, i64 1
  br label %100

100:                                              ; preds = %75, %506
  %101 = phi i64 [ 1, %75 ], [ %507, %506 ]
  %102 = load ptr, ptr %76, align 8, !tbaa !130
  %103 = add nsw i64 %101, -1
  %104 = getelementptr inbounds ptr, ptr %102, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !45
  %106 = load i32, ptr %77, align 8, !tbaa !145
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds ptr, ptr %105, i64 %107
  %109 = load ptr, ptr %78, align 8, !tbaa !47
  %110 = getelementptr inbounds ptr, ptr %109, i64 %101
  %111 = load ptr, ptr %110, align 8, !tbaa !45
  br i1 %13, label %112, label %440

112:                                              ; preds = %100
  %113 = load i32, ptr %10, align 4, !tbaa !142
  %114 = icmp ult i32 %113, 16
  br i1 %114, label %483, label %115

115:                                              ; preds = %112
  %116 = load i32, ptr %86, align 4, !tbaa !133
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %139, label %118

118:                                              ; preds = %115
  %119 = load i32, ptr %87, align 4, !tbaa !146
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %420

121:                                              ; preds = %118
  %122 = load ptr, ptr %0, align 8, !tbaa !34
  %123 = load ptr, ptr %5, align 8, !tbaa !49
  %124 = getelementptr inbounds %struct.video_par, ptr %123, i64 0, i32 70, i64 %101
  %125 = load i32, ptr %124, align 4, !tbaa !50
  %126 = getelementptr inbounds %struct.slice, ptr %122, i64 0, i32 77
  %127 = load ptr, ptr %126, align 8, !tbaa !48
  %128 = getelementptr inbounds ptr, ptr %127, i64 %101
  %129 = load ptr, ptr %128, align 8, !tbaa !45
  %130 = getelementptr inbounds %struct.slice, ptr %122, i64 0, i32 78
  %131 = load ptr, ptr %130, align 8, !tbaa !47
  %132 = getelementptr inbounds ptr, ptr %131, i64 %101
  %133 = load ptr, ptr %132, align 8, !tbaa !45
  %134 = getelementptr inbounds %struct.slice, ptr %122, i64 0, i32 79
  %135 = load ptr, ptr %134, align 8, !tbaa !42
  %136 = getelementptr inbounds ptr, ptr %135, i64 %101
  %137 = load ptr, ptr %136, align 8, !tbaa !45
  %138 = zext nneg i32 %119 to i64
  br label %280

139:                                              ; preds = %115
  %140 = load i32, ptr %88, align 4, !tbaa !146
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %268

142:                                              ; preds = %139, %142
  %143 = phi i64 [ %264, %142 ], [ 0, %139 ]
  %144 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 1, i64 %143
  %145 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 1, i64 %143
  %146 = getelementptr inbounds i8, ptr %144, i64 1
  %147 = load i8, ptr %144, align 4, !tbaa !112
  %148 = zext i8 %147 to i32
  %149 = getelementptr inbounds i8, ptr %145, i64 1
  %150 = load i8, ptr %145, align 4, !tbaa !112
  %151 = zext i8 %150 to i32
  %152 = load ptr, ptr %0, align 8, !tbaa !34
  %153 = getelementptr inbounds %struct.slice, ptr %152, i64 0, i32 79
  %154 = load ptr, ptr %153, align 8, !tbaa !42
  %155 = getelementptr inbounds ptr, ptr %154, i64 %101
  %156 = load ptr, ptr %155, align 8, !tbaa !45
  %157 = getelementptr inbounds %struct.slice, ptr %152, i64 0, i32 80
  %158 = load ptr, ptr %157, align 8, !tbaa !46
  %159 = getelementptr inbounds ptr, ptr %158, i64 %101
  %160 = load ptr, ptr %159, align 8, !tbaa !45
  tail call void @inverse4x4(ptr noundef %160, ptr noundef %156, i32 noundef %151, i32 noundef %148) #8
  %161 = getelementptr inbounds %struct.slice, ptr %152, i64 0, i32 78
  %162 = load ptr, ptr %161, align 8, !tbaa !47
  %163 = getelementptr inbounds ptr, ptr %162, i64 %101
  %164 = load ptr, ptr %163, align 8, !tbaa !45
  %165 = zext i8 %150 to i64
  %166 = getelementptr inbounds ptr, ptr %164, i64 %165
  %167 = getelementptr inbounds %struct.slice, ptr %152, i64 0, i32 77
  %168 = load ptr, ptr %167, align 8, !tbaa !48
  %169 = getelementptr inbounds ptr, ptr %168, i64 %101
  %170 = load ptr, ptr %169, align 8, !tbaa !45
  %171 = getelementptr inbounds ptr, ptr %170, i64 %165
  %172 = getelementptr inbounds ptr, ptr %156, i64 %165
  %173 = load ptr, ptr %5, align 8, !tbaa !49
  %174 = getelementptr inbounds %struct.video_par, ptr %173, i64 0, i32 70, i64 %101
  %175 = load i32, ptr %174, align 4, !tbaa !50
  tail call void @sample_reconstruct(ptr noundef %166, ptr noundef %171, ptr noundef %172, i32 noundef %148, i32 noundef %148, i32 noundef 4, i32 noundef 4, i32 noundef %175, i32 noundef 6) #8
  %176 = getelementptr inbounds i8, ptr %144, i64 2
  %177 = load i8, ptr %146, align 1, !tbaa !112
  %178 = zext i8 %177 to i32
  %179 = getelementptr inbounds i8, ptr %145, i64 2
  %180 = load i8, ptr %149, align 1, !tbaa !112
  %181 = zext i8 %180 to i32
  %182 = load ptr, ptr %0, align 8, !tbaa !34
  %183 = getelementptr inbounds %struct.slice, ptr %182, i64 0, i32 79
  %184 = load ptr, ptr %183, align 8, !tbaa !42
  %185 = getelementptr inbounds ptr, ptr %184, i64 %101
  %186 = load ptr, ptr %185, align 8, !tbaa !45
  %187 = getelementptr inbounds %struct.slice, ptr %182, i64 0, i32 80
  %188 = load ptr, ptr %187, align 8, !tbaa !46
  %189 = getelementptr inbounds ptr, ptr %188, i64 %101
  %190 = load ptr, ptr %189, align 8, !tbaa !45
  tail call void @inverse4x4(ptr noundef %190, ptr noundef %186, i32 noundef %181, i32 noundef %178) #8
  %191 = getelementptr inbounds %struct.slice, ptr %182, i64 0, i32 78
  %192 = load ptr, ptr %191, align 8, !tbaa !47
  %193 = getelementptr inbounds ptr, ptr %192, i64 %101
  %194 = load ptr, ptr %193, align 8, !tbaa !45
  %195 = zext i8 %180 to i64
  %196 = getelementptr inbounds ptr, ptr %194, i64 %195
  %197 = getelementptr inbounds %struct.slice, ptr %182, i64 0, i32 77
  %198 = load ptr, ptr %197, align 8, !tbaa !48
  %199 = getelementptr inbounds ptr, ptr %198, i64 %101
  %200 = load ptr, ptr %199, align 8, !tbaa !45
  %201 = getelementptr inbounds ptr, ptr %200, i64 %195
  %202 = getelementptr inbounds ptr, ptr %186, i64 %195
  %203 = load ptr, ptr %5, align 8, !tbaa !49
  %204 = getelementptr inbounds %struct.video_par, ptr %203, i64 0, i32 70, i64 %101
  %205 = load i32, ptr %204, align 4, !tbaa !50
  tail call void @sample_reconstruct(ptr noundef %196, ptr noundef %201, ptr noundef %202, i32 noundef %178, i32 noundef %178, i32 noundef 4, i32 noundef 4, i32 noundef %205, i32 noundef 6) #8
  %206 = getelementptr inbounds i8, ptr %144, i64 3
  %207 = load i8, ptr %176, align 2, !tbaa !112
  %208 = zext i8 %207 to i32
  %209 = getelementptr inbounds i8, ptr %145, i64 3
  %210 = load i8, ptr %179, align 2, !tbaa !112
  %211 = zext i8 %210 to i32
  %212 = load ptr, ptr %0, align 8, !tbaa !34
  %213 = getelementptr inbounds %struct.slice, ptr %212, i64 0, i32 79
  %214 = load ptr, ptr %213, align 8, !tbaa !42
  %215 = getelementptr inbounds ptr, ptr %214, i64 %101
  %216 = load ptr, ptr %215, align 8, !tbaa !45
  %217 = getelementptr inbounds %struct.slice, ptr %212, i64 0, i32 80
  %218 = load ptr, ptr %217, align 8, !tbaa !46
  %219 = getelementptr inbounds ptr, ptr %218, i64 %101
  %220 = load ptr, ptr %219, align 8, !tbaa !45
  tail call void @inverse4x4(ptr noundef %220, ptr noundef %216, i32 noundef %211, i32 noundef %208) #8
  %221 = getelementptr inbounds %struct.slice, ptr %212, i64 0, i32 78
  %222 = load ptr, ptr %221, align 8, !tbaa !47
  %223 = getelementptr inbounds ptr, ptr %222, i64 %101
  %224 = load ptr, ptr %223, align 8, !tbaa !45
  %225 = zext i8 %210 to i64
  %226 = getelementptr inbounds ptr, ptr %224, i64 %225
  %227 = getelementptr inbounds %struct.slice, ptr %212, i64 0, i32 77
  %228 = load ptr, ptr %227, align 8, !tbaa !48
  %229 = getelementptr inbounds ptr, ptr %228, i64 %101
  %230 = load ptr, ptr %229, align 8, !tbaa !45
  %231 = getelementptr inbounds ptr, ptr %230, i64 %225
  %232 = getelementptr inbounds ptr, ptr %216, i64 %225
  %233 = load ptr, ptr %5, align 8, !tbaa !49
  %234 = getelementptr inbounds %struct.video_par, ptr %233, i64 0, i32 70, i64 %101
  %235 = load i32, ptr %234, align 4, !tbaa !50
  tail call void @sample_reconstruct(ptr noundef %226, ptr noundef %231, ptr noundef %232, i32 noundef %208, i32 noundef %208, i32 noundef 4, i32 noundef 4, i32 noundef %235, i32 noundef 6) #8
  %236 = load i8, ptr %206, align 1, !tbaa !112
  %237 = zext i8 %236 to i32
  %238 = load i8, ptr %209, align 1, !tbaa !112
  %239 = zext i8 %238 to i32
  %240 = load ptr, ptr %0, align 8, !tbaa !34
  %241 = getelementptr inbounds %struct.slice, ptr %240, i64 0, i32 79
  %242 = load ptr, ptr %241, align 8, !tbaa !42
  %243 = getelementptr inbounds ptr, ptr %242, i64 %101
  %244 = load ptr, ptr %243, align 8, !tbaa !45
  %245 = getelementptr inbounds %struct.slice, ptr %240, i64 0, i32 80
  %246 = load ptr, ptr %245, align 8, !tbaa !46
  %247 = getelementptr inbounds ptr, ptr %246, i64 %101
  %248 = load ptr, ptr %247, align 8, !tbaa !45
  tail call void @inverse4x4(ptr noundef %248, ptr noundef %244, i32 noundef %239, i32 noundef %237) #8
  %249 = getelementptr inbounds %struct.slice, ptr %240, i64 0, i32 78
  %250 = load ptr, ptr %249, align 8, !tbaa !47
  %251 = getelementptr inbounds ptr, ptr %250, i64 %101
  %252 = load ptr, ptr %251, align 8, !tbaa !45
  %253 = zext i8 %238 to i64
  %254 = getelementptr inbounds ptr, ptr %252, i64 %253
  %255 = getelementptr inbounds %struct.slice, ptr %240, i64 0, i32 77
  %256 = load ptr, ptr %255, align 8, !tbaa !48
  %257 = getelementptr inbounds ptr, ptr %256, i64 %101
  %258 = load ptr, ptr %257, align 8, !tbaa !45
  %259 = getelementptr inbounds ptr, ptr %258, i64 %253
  %260 = getelementptr inbounds ptr, ptr %244, i64 %253
  %261 = load ptr, ptr %5, align 8, !tbaa !49
  %262 = getelementptr inbounds %struct.video_par, ptr %261, i64 0, i32 70, i64 %101
  %263 = load i32, ptr %262, align 4, !tbaa !50
  tail call void @sample_reconstruct(ptr noundef %254, ptr noundef %259, ptr noundef %260, i32 noundef %237, i32 noundef %237, i32 noundef 4, i32 noundef 4, i32 noundef %263, i32 noundef 6) #8
  %264 = add nuw nsw i64 %143, 1
  %265 = load i32, ptr %88, align 4, !tbaa !146
  %266 = sext i32 %265 to i64
  %267 = icmp slt i64 %264, %266
  br i1 %267, label %142, label %268, !llvm.loop !147

268:                                              ; preds = %142, %139
  %269 = load ptr, ptr %89, align 8, !tbaa !48
  %270 = getelementptr inbounds ptr, ptr %269, i64 %101
  %271 = load ptr, ptr %270, align 8, !tbaa !45
  %272 = load ptr, ptr %90, align 8, !tbaa !42
  %273 = getelementptr inbounds ptr, ptr %272, i64 %101
  %274 = load ptr, ptr %273, align 8, !tbaa !45
  %275 = load i32, ptr %91, align 4, !tbaa !50
  %276 = load i32, ptr %92, align 4, !tbaa !50
  %277 = load ptr, ptr %5, align 8, !tbaa !49
  %278 = getelementptr inbounds %struct.video_par, ptr %277, i64 0, i32 70, i64 %101
  %279 = load i32, ptr %278, align 4, !tbaa !50
  tail call void @sample_reconstruct(ptr noundef %111, ptr noundef %271, ptr noundef %274, i32 noundef 0, i32 noundef 0, i32 noundef %275, i32 noundef %276, i32 noundef %279, i32 noundef 6) #8
  br label %420

280:                                              ; preds = %121, %417
  %281 = phi i64 [ 0, %121 ], [ %418, %417 ]
  %282 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 1, i64 %281
  %283 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 1, i64 %281
  %284 = load i8, ptr %282, align 4, !tbaa !112
  %285 = load i8, ptr %283, align 4, !tbaa !112
  %286 = zext i8 %284 to i64
  %287 = zext i8 %285 to i64
  %288 = add nuw nsw i64 %286, 3
  %289 = add nuw nsw i64 %287, 3
  br label %290

290:                                              ; preds = %312, %280
  %291 = phi i64 [ %287, %280 ], [ %313, %312 ]
  %292 = getelementptr inbounds ptr, ptr %129, i64 %291
  %293 = load ptr, ptr %292, align 8, !tbaa !45
  %294 = getelementptr inbounds ptr, ptr %137, i64 %291
  %295 = load ptr, ptr %294, align 8, !tbaa !45
  %296 = getelementptr inbounds ptr, ptr %133, i64 %291
  %297 = load ptr, ptr %296, align 8, !tbaa !45
  br label %298

298:                                              ; preds = %298, %290
  %299 = phi i64 [ %286, %290 ], [ %310, %298 ]
  %300 = getelementptr inbounds i16, ptr %293, i64 %299
  %301 = load i16, ptr %300, align 2, !tbaa !51
  %302 = zext i16 %301 to i32
  %303 = getelementptr inbounds i32, ptr %295, i64 %299
  %304 = load i32, ptr %303, align 4, !tbaa !50
  %305 = add nsw i32 %304, %302
  %306 = tail call i32 @llvm.smax.i32(i32 %305, i32 0)
  %307 = tail call i32 @llvm.smin.i32(i32 %306, i32 %125)
  %308 = trunc i32 %307 to i16
  %309 = getelementptr inbounds i16, ptr %297, i64 %299
  store i16 %308, ptr %309, align 2, !tbaa !51
  %310 = add nuw nsw i64 %299, 1
  %311 = icmp eq i64 %299, %288
  br i1 %311, label %312, label %298, !llvm.loop !52

312:                                              ; preds = %298
  %313 = add nuw nsw i64 %291, 1
  %314 = icmp eq i64 %291, %289
  br i1 %314, label %315, label %290, !llvm.loop !55

315:                                              ; preds = %312
  %316 = getelementptr inbounds i8, ptr %282, i64 1
  %317 = getelementptr inbounds i8, ptr %283, i64 1
  %318 = load i8, ptr %316, align 1, !tbaa !112
  %319 = load i8, ptr %317, align 1, !tbaa !112
  %320 = zext i8 %318 to i64
  %321 = zext i8 %319 to i64
  %322 = add nuw nsw i64 %320, 3
  %323 = add nuw nsw i64 %321, 3
  br label %324

324:                                              ; preds = %346, %315
  %325 = phi i64 [ %321, %315 ], [ %347, %346 ]
  %326 = getelementptr inbounds ptr, ptr %129, i64 %325
  %327 = load ptr, ptr %326, align 8, !tbaa !45
  %328 = getelementptr inbounds ptr, ptr %137, i64 %325
  %329 = load ptr, ptr %328, align 8, !tbaa !45
  %330 = getelementptr inbounds ptr, ptr %133, i64 %325
  %331 = load ptr, ptr %330, align 8, !tbaa !45
  br label %332

332:                                              ; preds = %332, %324
  %333 = phi i64 [ %320, %324 ], [ %344, %332 ]
  %334 = getelementptr inbounds i16, ptr %327, i64 %333
  %335 = load i16, ptr %334, align 2, !tbaa !51
  %336 = zext i16 %335 to i32
  %337 = getelementptr inbounds i32, ptr %329, i64 %333
  %338 = load i32, ptr %337, align 4, !tbaa !50
  %339 = add nsw i32 %338, %336
  %340 = tail call i32 @llvm.smax.i32(i32 %339, i32 0)
  %341 = tail call i32 @llvm.smin.i32(i32 %340, i32 %125)
  %342 = trunc i32 %341 to i16
  %343 = getelementptr inbounds i16, ptr %331, i64 %333
  store i16 %342, ptr %343, align 2, !tbaa !51
  %344 = add nuw nsw i64 %333, 1
  %345 = icmp eq i64 %333, %322
  br i1 %345, label %346, label %332, !llvm.loop !52

346:                                              ; preds = %332
  %347 = add nuw nsw i64 %325, 1
  %348 = icmp eq i64 %325, %323
  br i1 %348, label %349, label %324, !llvm.loop !55

349:                                              ; preds = %346
  %350 = getelementptr inbounds i8, ptr %282, i64 2
  %351 = getelementptr inbounds i8, ptr %283, i64 2
  %352 = load i8, ptr %350, align 2, !tbaa !112
  %353 = load i8, ptr %351, align 2, !tbaa !112
  %354 = zext i8 %352 to i64
  %355 = zext i8 %353 to i64
  %356 = add nuw nsw i64 %354, 3
  %357 = add nuw nsw i64 %355, 3
  br label %358

358:                                              ; preds = %380, %349
  %359 = phi i64 [ %355, %349 ], [ %381, %380 ]
  %360 = getelementptr inbounds ptr, ptr %129, i64 %359
  %361 = load ptr, ptr %360, align 8, !tbaa !45
  %362 = getelementptr inbounds ptr, ptr %137, i64 %359
  %363 = load ptr, ptr %362, align 8, !tbaa !45
  %364 = getelementptr inbounds ptr, ptr %133, i64 %359
  %365 = load ptr, ptr %364, align 8, !tbaa !45
  br label %366

366:                                              ; preds = %366, %358
  %367 = phi i64 [ %354, %358 ], [ %378, %366 ]
  %368 = getelementptr inbounds i16, ptr %361, i64 %367
  %369 = load i16, ptr %368, align 2, !tbaa !51
  %370 = zext i16 %369 to i32
  %371 = getelementptr inbounds i32, ptr %363, i64 %367
  %372 = load i32, ptr %371, align 4, !tbaa !50
  %373 = add nsw i32 %372, %370
  %374 = tail call i32 @llvm.smax.i32(i32 %373, i32 0)
  %375 = tail call i32 @llvm.smin.i32(i32 %374, i32 %125)
  %376 = trunc i32 %375 to i16
  %377 = getelementptr inbounds i16, ptr %365, i64 %367
  store i16 %376, ptr %377, align 2, !tbaa !51
  %378 = add nuw nsw i64 %367, 1
  %379 = icmp eq i64 %367, %356
  br i1 %379, label %380, label %366, !llvm.loop !52

380:                                              ; preds = %366
  %381 = add nuw nsw i64 %359, 1
  %382 = icmp eq i64 %359, %357
  br i1 %382, label %383, label %358, !llvm.loop !55

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %282, i64 3
  %385 = getelementptr inbounds i8, ptr %283, i64 3
  %386 = load i8, ptr %384, align 1, !tbaa !112
  %387 = load i8, ptr %385, align 1, !tbaa !112
  %388 = zext i8 %386 to i64
  %389 = zext i8 %387 to i64
  %390 = add nuw nsw i64 %388, 3
  %391 = add nuw nsw i64 %389, 3
  br label %392

392:                                              ; preds = %414, %383
  %393 = phi i64 [ %389, %383 ], [ %415, %414 ]
  %394 = getelementptr inbounds ptr, ptr %129, i64 %393
  %395 = load ptr, ptr %394, align 8, !tbaa !45
  %396 = getelementptr inbounds ptr, ptr %137, i64 %393
  %397 = load ptr, ptr %396, align 8, !tbaa !45
  %398 = getelementptr inbounds ptr, ptr %133, i64 %393
  %399 = load ptr, ptr %398, align 8, !tbaa !45
  br label %400

400:                                              ; preds = %400, %392
  %401 = phi i64 [ %388, %392 ], [ %412, %400 ]
  %402 = getelementptr inbounds i16, ptr %395, i64 %401
  %403 = load i16, ptr %402, align 2, !tbaa !51
  %404 = zext i16 %403 to i32
  %405 = getelementptr inbounds i32, ptr %397, i64 %401
  %406 = load i32, ptr %405, align 4, !tbaa !50
  %407 = add nsw i32 %406, %404
  %408 = tail call i32 @llvm.smax.i32(i32 %407, i32 0)
  %409 = tail call i32 @llvm.smin.i32(i32 %408, i32 %125)
  %410 = trunc i32 %409 to i16
  %411 = getelementptr inbounds i16, ptr %399, i64 %401
  store i16 %410, ptr %411, align 2, !tbaa !51
  %412 = add nuw nsw i64 %401, 1
  %413 = icmp eq i64 %401, %390
  br i1 %413, label %414, label %400, !llvm.loop !52

414:                                              ; preds = %400
  %415 = add nuw nsw i64 %393, 1
  %416 = icmp eq i64 %393, %391
  br i1 %416, label %417, label %392, !llvm.loop !55

417:                                              ; preds = %414
  %418 = add nuw nsw i64 %281, 1
  %419 = icmp eq i64 %418, %138
  br i1 %419, label %420, label %280, !llvm.loop !148

420:                                              ; preds = %417, %118, %268
  %421 = load i32, ptr %95, align 4, !tbaa !50
  %422 = icmp sgt i32 %421, 0
  br i1 %422, label %423, label %506

423:                                              ; preds = %420
  %424 = load i32, ptr %94, align 4, !tbaa !50
  %425 = load i32, ptr %93, align 4, !tbaa !149
  %426 = sext i32 %425 to i64
  %427 = sext i32 %424 to i64
  %428 = shl nsw i64 %427, 1
  br label %429

429:                                              ; preds = %423, %429
  %430 = phi i32 [ 0, %423 ], [ %438, %429 ]
  %431 = phi ptr [ %108, %423 ], [ %433, %429 ]
  %432 = phi ptr [ %111, %423 ], [ %436, %429 ]
  %433 = getelementptr inbounds ptr, ptr %431, i64 1
  %434 = load ptr, ptr %431, align 8, !tbaa !45
  %435 = getelementptr inbounds i16, ptr %434, i64 %426
  %436 = getelementptr inbounds ptr, ptr %432, i64 1
  %437 = load ptr, ptr %432, align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %435, ptr align 2 %437, i64 %428, i1 false)
  %438 = add nuw nsw i32 %430, 1
  %439 = icmp eq i32 %438, %421
  br i1 %439, label %506, label %429, !llvm.loop !150

440:                                              ; preds = %100
  %441 = load i32, ptr %79, align 4, !tbaa !133
  %442 = icmp eq i32 %441, 0
  %443 = select i1 %442, ptr @itrans4x4, ptr @itrans4x4_ls
  store ptr %443, ptr %80, align 8, !tbaa !135
  %444 = trunc i64 %103 to i32
  tail call void @itrans_sp_cr(ptr noundef nonnull %0, i32 noundef %444)
  %445 = load i32, ptr %81, align 8, !tbaa !88
  %446 = icmp sgt i32 %445, 0
  br i1 %446, label %447, label %463

447:                                              ; preds = %440
  %448 = trunc i64 %101 to i32
  br label %449

449:                                              ; preds = %447, %459
  %450 = phi i32 [ %460, %459 ], [ 0, %447 ]
  %451 = load i32, ptr %82, align 4, !tbaa !82
  %452 = icmp sgt i32 %451, 0
  br i1 %452, label %453, label %459

453:                                              ; preds = %449, %453
  %454 = phi i32 [ %456, %453 ], [ 0, %449 ]
  %455 = load ptr, ptr %80, align 8, !tbaa !135
  tail call void %455(ptr noundef nonnull %0, i32 noundef %448, i32 noundef %454, i32 noundef %450) #8
  %456 = add nuw nsw i32 %454, 4
  %457 = load i32, ptr %82, align 4, !tbaa !82
  %458 = icmp slt i32 %456, %457
  br i1 %458, label %453, label %459, !llvm.loop !151

459:                                              ; preds = %453, %449
  %460 = add nuw nsw i32 %450, 4
  %461 = load i32, ptr %81, align 8, !tbaa !88
  %462 = icmp slt i32 %460, %461
  br i1 %462, label %449, label %463, !llvm.loop !152

463:                                              ; preds = %459, %440
  %464 = load i32, ptr %85, align 4, !tbaa !50
  %465 = icmp sgt i32 %464, 0
  br i1 %465, label %466, label %506

466:                                              ; preds = %463
  %467 = load i32, ptr %84, align 4, !tbaa !50
  %468 = load i32, ptr %83, align 4, !tbaa !149
  %469 = sext i32 %468 to i64
  %470 = sext i32 %467 to i64
  %471 = shl nsw i64 %470, 1
  br label %472

472:                                              ; preds = %466, %472
  %473 = phi i32 [ 0, %466 ], [ %481, %472 ]
  %474 = phi ptr [ %108, %466 ], [ %476, %472 ]
  %475 = phi ptr [ %111, %466 ], [ %479, %472 ]
  %476 = getelementptr inbounds ptr, ptr %474, i64 1
  %477 = load ptr, ptr %474, align 8, !tbaa !45
  %478 = getelementptr inbounds i16, ptr %477, i64 %469
  %479 = getelementptr inbounds ptr, ptr %475, i64 1
  %480 = load ptr, ptr %475, align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %478, ptr align 2 %480, i64 %471, i1 false)
  %481 = add nuw nsw i32 %473, 1
  %482 = icmp eq i32 %481, %464
  br i1 %482, label %506, label %472, !llvm.loop !150

483:                                              ; preds = %112
  %484 = load i32, ptr %99, align 4, !tbaa !50
  %485 = icmp sgt i32 %484, 0
  br i1 %485, label %486, label %506

486:                                              ; preds = %483
  %487 = load i32, ptr %98, align 4, !tbaa !50
  %488 = load i32, ptr %97, align 4, !tbaa !149
  %489 = load ptr, ptr %96, align 8, !tbaa !48
  %490 = getelementptr inbounds ptr, ptr %489, i64 %101
  %491 = load ptr, ptr %490, align 8, !tbaa !45
  %492 = sext i32 %488 to i64
  %493 = sext i32 %487 to i64
  %494 = shl nsw i64 %493, 1
  br label %495

495:                                              ; preds = %486, %495
  %496 = phi i32 [ 0, %486 ], [ %504, %495 ]
  %497 = phi ptr [ %108, %486 ], [ %499, %495 ]
  %498 = phi ptr [ %491, %486 ], [ %502, %495 ]
  %499 = getelementptr inbounds ptr, ptr %497, i64 1
  %500 = load ptr, ptr %497, align 8, !tbaa !45
  %501 = getelementptr inbounds i16, ptr %500, i64 %492
  %502 = getelementptr inbounds ptr, ptr %498, i64 1
  %503 = load ptr, ptr %498, align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %501, ptr align 2 %503, i64 %494, i1 false)
  %504 = add nuw nsw i32 %496, 1
  %505 = icmp eq i32 %504, %484
  br i1 %505, label %506, label %495, !llvm.loop !150

506:                                              ; preds = %472, %429, %495, %463, %420, %483
  %507 = add nuw nsw i64 %101, 1
  %508 = icmp eq i64 %507, 3
  br i1 %508, label %509, label %100, !llvm.loop !153

509:                                              ; preds = %506, %72, %72
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @copy_image_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
  %7 = icmp sgt i32 %5, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %6
  %9 = sext i32 %2 to i64
  %10 = sext i32 %3 to i64
  %11 = sext i32 %4 to i64
  %12 = shl nsw i64 %11, 1
  br label %13

13:                                               ; preds = %8, %13
  %14 = phi i32 [ 0, %8 ], [ %23, %13 ]
  %15 = phi ptr [ %0, %8 ], [ %17, %13 ]
  %16 = phi ptr [ %1, %8 ], [ %20, %13 ]
  %17 = getelementptr inbounds ptr, ptr %15, i64 1
  %18 = load ptr, ptr %15, align 8, !tbaa !45
  %19 = getelementptr inbounds i16, ptr %18, i64 %9
  %20 = getelementptr inbounds ptr, ptr %16, i64 1
  %21 = load ptr, ptr %16, align 8, !tbaa !45
  %22 = getelementptr inbounds i16, ptr %21, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %19, ptr align 2 %22, i64 %12, i1 false)
  %23 = add nuw nsw i32 %14, 1
  %24 = icmp eq i32 %23, %5
  br i1 %24, label %25, label %13, !llvm.loop !150

25:                                               ; preds = %13, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @copy_image_data_8x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = sext i32 %2 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ 0, %4 ], [ %35, %7 ]
  %9 = phi ptr [ %0, %4 ], [ %29, %7 ]
  %10 = phi ptr [ %1, %4 ], [ %32, %7 ]
  %11 = getelementptr inbounds ptr, ptr %9, i64 1
  %12 = load ptr, ptr %9, align 8, !tbaa !45
  %13 = getelementptr inbounds i16, ptr %12, i64 %5
  %14 = getelementptr inbounds ptr, ptr %10, i64 1
  %15 = load ptr, ptr %10, align 8, !tbaa !45
  %16 = getelementptr inbounds i16, ptr %15, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %13, ptr noundef nonnull align 2 dereferenceable(16) %16, i64 16, i1 false)
  %17 = getelementptr inbounds ptr, ptr %9, i64 2
  %18 = load ptr, ptr %11, align 8, !tbaa !45
  %19 = getelementptr inbounds i16, ptr %18, i64 %5
  %20 = getelementptr inbounds ptr, ptr %10, i64 2
  %21 = load ptr, ptr %14, align 8, !tbaa !45
  %22 = getelementptr inbounds i16, ptr %21, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %19, ptr noundef nonnull align 2 dereferenceable(16) %22, i64 16, i1 false)
  %23 = getelementptr inbounds ptr, ptr %9, i64 3
  %24 = load ptr, ptr %17, align 8, !tbaa !45
  %25 = getelementptr inbounds i16, ptr %24, i64 %5
  %26 = getelementptr inbounds ptr, ptr %10, i64 3
  %27 = load ptr, ptr %20, align 8, !tbaa !45
  %28 = getelementptr inbounds i16, ptr %27, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %25, ptr noundef nonnull align 2 dereferenceable(16) %28, i64 16, i1 false)
  %29 = getelementptr inbounds ptr, ptr %9, i64 4
  %30 = load ptr, ptr %23, align 8, !tbaa !45
  %31 = getelementptr inbounds i16, ptr %30, i64 %5
  %32 = getelementptr inbounds ptr, ptr %10, i64 4
  %33 = load ptr, ptr %26, align 8, !tbaa !45
  %34 = getelementptr inbounds i16, ptr %33, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %31, ptr noundef nonnull align 2 dereferenceable(16) %34, i64 16, i1 false)
  %35 = add nuw nsw i32 %8, 4
  %36 = icmp eq i32 %8, 0
  br i1 %36, label %7, label %37, !llvm.loop !154

37:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @copy_image_data_4x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds ptr, ptr %0, i64 1
  %6 = load ptr, ptr %0, align 8, !tbaa !45
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds i16, ptr %6, i64 %7
  %9 = getelementptr inbounds ptr, ptr %1, i64 1
  %10 = load ptr, ptr %1, align 8, !tbaa !45
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds i16, ptr %10, i64 %11
  %13 = load i64, ptr %12, align 2
  store i64 %13, ptr %8, align 2
  %14 = getelementptr inbounds ptr, ptr %0, i64 2
  %15 = load ptr, ptr %5, align 8, !tbaa !45
  %16 = getelementptr inbounds i16, ptr %15, i64 %7
  %17 = getelementptr inbounds ptr, ptr %1, i64 2
  %18 = load ptr, ptr %9, align 8, !tbaa !45
  %19 = getelementptr inbounds i16, ptr %18, i64 %11
  %20 = load i64, ptr %19, align 2
  store i64 %20, ptr %16, align 2
  %21 = getelementptr inbounds ptr, ptr %0, i64 3
  %22 = load ptr, ptr %14, align 8, !tbaa !45
  %23 = getelementptr inbounds i16, ptr %22, i64 %7
  %24 = getelementptr inbounds ptr, ptr %1, i64 3
  %25 = load ptr, ptr %17, align 8, !tbaa !45
  %26 = getelementptr inbounds i16, ptr %25, i64 %11
  %27 = load i64, ptr %26, align 2
  store i64 %27, ptr %23, align 2
  %28 = load ptr, ptr %21, align 8, !tbaa !45
  %29 = getelementptr inbounds i16, ptr %28, i64 %7
  %30 = load ptr, ptr %24, align 8, !tbaa !45
  %31 = getelementptr inbounds i16, ptr %30, i64 %11
  %32 = load i64, ptr %31, align 2
  store i64 %32, ptr %29, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CheckVertMV(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 125
  %8 = load ptr, ptr %7, align 8, !tbaa !129
  %9 = ashr i32 %1, 2
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %11 = load i32, ptr %10, align 8, !tbaa !155
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 17
  %15 = load i32, ptr %14, align 4, !tbaa !156
  %16 = ashr i32 %15, 1
  %17 = add nsw i32 %16, -1
  br label %21

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 21
  %20 = load i32, ptr %19, align 4, !tbaa !157
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %20, %18 ]
  %23 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 173
  %24 = load i32, ptr %23, align 4, !tbaa !158
  %25 = sub i32 2, %24
  %26 = icmp slt i32 %9, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = sub i32 %22, %2
  %29 = add i32 %28, -2
  %30 = add i32 %29, %24
  %31 = icmp sgt i32 %9, %30
  %32 = zext i1 %31 to i32
  br label %33

33:                                               ; preds = %27, %21
  %34 = phi i32 [ 1, %21 ], [ %32, %27 ]
  ret i32 %34
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!35 = !{!"macroblock", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !40, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !37, i64 80, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !41, i64 108, !37, i64 110, !37, i64 111, !41, i64 112, !41, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152, !37, i64 154, !39, i64 284, !37, i64 288, !37, i64 312, !37, i64 336, !39, i64 360, !37, i64 364, !37, i64 368, !37, i64 372, !37, i64 373, !37, i64 374, !41, i64 376, !41, i64 378, !41, i64 380, !39, i64 384, !39, i64 388, !39, i64 392, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !39, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !37, i64 472}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"", !41, i64 0, !41, i64 2}
!41 = !{!"short", !37, i64 0}
!42 = !{!43, !36, i64 1264}
!43 = !{!"slice", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !37, i64 88, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !41, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !39, i64 132, !37, i64 136, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !36, i64 248, !37, i64 256, !37, i64 264, !36, i64 312, !36, i64 320, !36, i64 328, !37, i64 336, !37, i64 1104, !37, i64 1112, !37, i64 1128, !37, i64 1144, !37, i64 1160, !39, i64 1176, !39, i64 1180, !39, i64 1184, !44, i64 1188, !41, i64 1220, !41, i64 1222, !41, i64 1224, !39, i64 1228, !39, i64 1232, !39, i64 1236, !39, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !37, i64 1288, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !37, i64 1392, !37, i64 2544, !37, i64 3696, !37, i64 8304, !37, i64 12912, !37, i64 13008, !39, i64 13264, !39, i64 13268, !41, i64 13272, !41, i64 13274, !41, i64 13276, !41, i64 13278, !36, i64 13280, !36, i64 13288, !36, i64 13296, !41, i64 13304, !41, i64 13306, !39, i64 13308, !39, i64 13312, !36, i64 13320, !36, i64 13328, !39, i64 13336, !37, i64 13340, !36, i64 13408, !36, i64 13416, !36, i64 13424, !36, i64 13432, !36, i64 13440, !36, i64 13448, !36, i64 13456, !36, i64 13464, !36, i64 13472, !36, i64 13480, !36, i64 13488, !36, i64 13496, !39, i64 13504, !36, i64 13512, !36, i64 13520, !36, i64 13528, !36, i64 13536, !36, i64 13544, !37, i64 13552}
!44 = !{!"nalunitheadermvcext_tag", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28}
!45 = !{!36, !36, i64 0}
!46 = !{!43, !36, i64 1272}
!47 = !{!43, !36, i64 1256}
!48 = !{!43, !36, i64 1248}
!49 = !{!35, !36, i64 8}
!50 = !{!39, !39, i64 0}
!51 = !{!41, !41, i64 0}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{!55, !53, !54}
!56 = !{!35, !37, i64 372}
!57 = distinct !{!57, !53, !54}
!58 = distinct !{!58, !53, !54}
!59 = distinct !{!59, !53, !54}
!60 = distinct !{!60, !53, !54}
!61 = distinct !{!61, !53, !54}
!62 = distinct !{!62, !53, !54}
!63 = distinct !{!63, !53, !54}
!64 = distinct !{!64, !53, !54}
!65 = distinct !{!65, !53, !54}
!66 = distinct !{!66, !53, !54}
!67 = distinct !{!67, !53, !54}
!68 = distinct !{!68, !53, !54}
!69 = distinct !{!69, !53, !54}
!70 = distinct !{!70, !53, !54}
!71 = distinct !{!71, !53, !54}
!72 = distinct !{!72, !53, !54}
!73 = distinct !{!73, !53, !54}
!74 = distinct !{!74, !53, !54}
!75 = distinct !{!75, !53, !54}
!76 = distinct !{!76, !53, !54}
!77 = distinct !{!77, !53, !54}
!78 = distinct !{!78, !53, !54}
!79 = distinct !{!79, !53, !54}
!80 = distinct !{!80, !53, !54}
!81 = distinct !{!81, !53, !54}
!82 = !{!83, !39, i64 849108}
!83 = !{!"video_par", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 132120, !36, i64 699416, !37, i64 699424, !39, i64 848672, !39, i64 848676, !39, i64 848680, !39, i64 848684, !36, i64 848688, !36, i64 848696, !36, i64 848704, !39, i64 848712, !39, i64 848716, !39, i64 848720, !39, i64 848724, !39, i64 848728, !36, i64 848736, !36, i64 848744, !37, i64 848752, !39, i64 848776, !39, i64 848780, !39, i64 848784, !39, i64 848788, !39, i64 848792, !36, i64 848800, !37, i64 848808, !36, i64 848832, !36, i64 848840, !37, i64 848848, !39, i64 848872, !39, i64 848876, !36, i64 848880, !36, i64 848888, !37, i64 848896, !39, i64 848920, !36, i64 848928, !36, i64 848936, !39, i64 848944, !39, i64 848948, !39, i64 848952, !39, i64 848956, !39, i64 848960, !39, i64 848964, !39, i64 848968, !39, i64 848972, !39, i64 848976, !39, i64 848980, !39, i64 848984, !39, i64 848988, !39, i64 848992, !39, i64 848996, !39, i64 849000, !39, i64 849004, !39, i64 849008, !39, i64 849012, !39, i64 849016, !39, i64 849020, !39, i64 849024, !39, i64 849028, !39, i64 849032, !39, i64 849036, !41, i64 849040, !41, i64 849042, !37, i64 849044, !39, i64 849052, !39, i64 849056, !37, i64 849060, !37, i64 849072, !39, i64 849084, !39, i64 849088, !39, i64 849092, !39, i64 849096, !39, i64 849100, !39, i64 849104, !39, i64 849108, !39, i64 849112, !39, i64 849116, !39, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !39, i64 849196, !39, i64 849200, !39, i64 849204, !39, i64 849208, !39, i64 849212, !39, i64 849216, !39, i64 849220, !39, i64 849224, !39, i64 849228, !39, i64 849232, !39, i64 849236, !39, i64 849240, !39, i64 849244, !39, i64 849248, !39, i64 849252, !39, i64 849256, !39, i64 849260, !39, i64 849264, !39, i64 849268, !39, i64 849272, !39, i64 849276, !39, i64 849280, !39, i64 849284, !36, i64 849288, !36, i64 849296, !84, i64 849304, !84, i64 849624, !84, i64 849944, !84, i64 850264, !84, i64 850584, !84, i64 850904, !84, i64 851224, !84, i64 851544, !39, i64 851864, !39, i64 851868, !39, i64 851872, !87, i64 851880, !39, i64 851888, !37, i64 851892, !39, i64 855988, !39, i64 855992, !39, i64 855996, !39, i64 856000, !39, i64 856004, !39, i64 856008, !39, i64 856012, !36, i64 856016, !36, i64 856024, !36, i64 856032, !36, i64 856040, !36, i64 856048, !37, i64 856056, !36, i64 856456, !37, i64 856464, !36, i64 856488, !36, i64 856496, !36, i64 856504, !39, i64 856512, !36, i64 856520, !37, i64 856528, !36, i64 856608, !36, i64 856616, !36, i64 856624, !36, i64 856632, !39, i64 856640, !39, i64 856644, !39, i64 856648, !36, i64 856656, !36, i64 856664, !37, i64 856672, !37, i64 856688, !36, i64 856704, !36, i64 856712, !39, i64 856720, !36, i64 856728, !36, i64 856736, !36, i64 856744, !36, i64 856752, !36, i64 856760, !36, i64 856768, !36, i64 856776, !36, i64 856784, !36, i64 856792, !36, i64 856800, !36, i64 856808, !36, i64 856816, !39, i64 856824, !36, i64 856832, !39, i64 856840, !39, i64 856844, !39, i64 856848, !39, i64 856852, !39, i64 856856, !39, i64 856860, !39, i64 856864, !36, i64 856872}
!84 = !{!"image_data", !85, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!85 = !{!"frame_format", !39, i64 0, !39, i64 4, !86, i64 8, !37, i64 16, !37, i64 28, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !39, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !39, i64 124, !39, i64 128}
!86 = !{!"double", !37, i64 0}
!87 = !{!"long", !37, i64 0}
!88 = !{!83, !39, i64 849112}
!89 = !{!35, !37, i64 373}
!90 = distinct !{!90, !53, !54}
!91 = distinct !{!91, !53, !54}
!92 = distinct !{!92, !53, !54}
!93 = distinct !{!93, !53, !54}
!94 = distinct !{!94, !53, !54}
!95 = distinct !{!95, !53, !54}
!96 = distinct !{!96, !53, !54}
!97 = !{!83, !39, i64 849280}
!98 = !{!83, !36, i64 856032}
!99 = !{!83, !36, i64 856040}
!100 = distinct !{!100, !53, !54}
!101 = distinct !{!101, !53, !54}
!102 = !{!43, !39, i64 164}
!103 = !{!43, !39, i64 156}
!104 = distinct !{!104, !53, !54}
!105 = !{!43, !39, i64 224}
!106 = distinct !{!106, !53, !54}
!107 = distinct !{!107, !53, !54}
!108 = distinct !{!108, !53, !54}
!109 = distinct !{!109, !53, !54}
!110 = distinct !{!110, !53, !54}
!111 = !{!43, !39, i64 148}
!112 = !{!37, !37, i64 0}
!113 = distinct !{!113, !53, !54}
!114 = distinct !{!114, !53, !54}
!115 = distinct !{!115, !53, !54}
!116 = distinct !{!116, !53, !54}
!117 = distinct !{!117, !53, !54}
!118 = distinct !{!118, !53, !54}
!119 = distinct !{!119, !53, !54}
!120 = distinct !{!120, !53, !54}
!121 = distinct !{!121, !53, !54}
!122 = distinct !{!122, !53, !54}
!123 = distinct !{!123, !53, !54}
!124 = distinct !{!124, !53, !54}
!125 = distinct !{!125, !53, !54}
!126 = distinct !{!126, !53, !54}
!127 = distinct !{!127, !53, !54}
!128 = distinct !{!128, !53, !54}
!129 = !{!43, !36, i64 13520}
!130 = !{!131, !36, i64 136}
!131 = !{!"storable_picture", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !37, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !41, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !37, i64 160, !132, i64 184, !37, i64 192, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !37, i64 300, !39, i64 308, !36, i64 312, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !36, i64 336, !39, i64 344, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !39, i64 368, !36, i64 376, !39, i64 384, !39, i64 388, !37, i64 392, !37, i64 400}
!132 = !{!"pic_motion_params_old", !36, i64 0}
!133 = !{!35, !39, i64 92}
!134 = !{!35, !41, i64 152}
!135 = !{!35, !36, i64 432}
!136 = distinct !{!136, !53, !54}
!137 = distinct !{!137, !53, !54}
!138 = distinct !{!138, !53, !54}
!139 = !{!35, !39, i64 48}
!140 = !{!35, !39, i64 44}
!141 = distinct !{!141, !53, !54}
!142 = !{!35, !39, i64 284}
!143 = !{!35, !39, i64 420}
!144 = !{!131, !39, i64 268}
!145 = !{!35, !39, i64 56}
!146 = !{!83, !39, i64 849100}
!147 = distinct !{!147, !53, !54}
!148 = distinct !{!148, !53, !54}
!149 = !{!35, !39, i64 52}
!150 = distinct !{!150, !53, !54}
!151 = distinct !{!151, !53, !54}
!152 = distinct !{!152, !53, !54}
!153 = distinct !{!153, !53, !54}
!154 = distinct !{!154, !53, !54}
!155 = !{!35, !39, i64 384}
!156 = !{!131, !39, i64 68}
!157 = !{!131, !39, i64 84}
!158 = !{!83, !39, i64 856844}
