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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @itrans4x4(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 79
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 80
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  %13 = getelementptr inbounds ptr, ptr %12, i64 %8
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  tail call void @inverse4x4(ptr noundef %14, ptr noundef %10, i32 noundef %3, i32 noundef %2) #9
  %15 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 78
  %16 = load ptr, ptr %15, align 8, !tbaa !19
  %17 = getelementptr inbounds ptr, ptr %16, i64 %8
  %18 = load ptr, ptr %17, align 8, !tbaa !17
  %19 = sext i32 %3 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 77
  %22 = load ptr, ptr %21, align 8, !tbaa !20
  %23 = getelementptr inbounds ptr, ptr %22, i64 %8
  %24 = load ptr, ptr %23, align 8, !tbaa !17
  %25 = getelementptr inbounds ptr, ptr %24, i64 %19
  %26 = getelementptr inbounds ptr, ptr %10, i64 %19
  %27 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !21
  %29 = getelementptr inbounds %struct.video_par, ptr %28, i64 0, i32 70, i64 %8
  %30 = load i32, ptr %29, align 4, !tbaa !22
  tail call void @sample_reconstruct(ptr noundef %20, ptr noundef %25, ptr noundef %26, i32 noundef %2, i32 noundef %2, i32 noundef 4, i32 noundef 4, i32 noundef %30, i32 noundef 6) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @inverse4x4(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sample_reconstruct(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @itrans4x4_ls(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #3 {
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 70, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !22
  %11 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 77
  %12 = load ptr, ptr %11, align 8, !tbaa !20
  %13 = getelementptr inbounds ptr, ptr %12, i64 %8
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  %15 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 78
  %16 = load ptr, ptr %15, align 8, !tbaa !19
  %17 = getelementptr inbounds ptr, ptr %16, i64 %8
  %18 = load ptr, ptr %17, align 8, !tbaa !17
  %19 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 79
  %20 = load ptr, ptr %19, align 8, !tbaa !14
  %21 = getelementptr inbounds ptr, ptr %20, i64 %8
  %22 = load ptr, ptr %21, align 8, !tbaa !17
  %23 = sext i32 %2 to i64
  %24 = sext i32 %3 to i64
  %25 = add nsw i32 %2, 3
  %26 = sext i32 %25 to i64
  %27 = add nsw i32 %3, 3
  %28 = sext i32 %27 to i64
  br label %29

29:                                               ; preds = %4, %50
  %30 = phi i64 [ %24, %4 ], [ %51, %50 ]
  %31 = getelementptr inbounds ptr, ptr %14, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !17
  %33 = getelementptr inbounds ptr, ptr %22, i64 %30
  %34 = load ptr, ptr %33, align 8, !tbaa !17
  %35 = getelementptr inbounds ptr, ptr %18, i64 %30
  %36 = load ptr, ptr %35, align 8, !tbaa !17
  br label %37

37:                                               ; preds = %29, %37
  %38 = phi i64 [ %23, %29 ], [ %48, %37 ]
  %39 = getelementptr inbounds i16, ptr %32, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !23
  %41 = zext i16 %40 to i32
  %42 = getelementptr inbounds i32, ptr %34, i64 %38
  %43 = load i32, ptr %42, align 4, !tbaa !22
  %44 = add nsw i32 %43, %41
  %45 = tail call fastcc i32 @iClip1(i32 noundef %10, i32 noundef %44) #10
  %46 = trunc i32 %45 to i16
  %47 = getelementptr inbounds i16, ptr %36, i64 %38
  store i16 %46, ptr %47, align 2, !tbaa !23
  %48 = add nsw i64 %38, 1
  %49 = icmp slt i64 %38, %26
  br i1 %49, label %37, label %50, !llvm.loop !24

50:                                               ; preds = %37
  %51 = add nsw i64 %30, 1
  %52 = icmp slt i64 %30, %28
  br i1 %52, label %29, label %53, !llvm.loop !26

53:                                               ; preds = %50
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @iClip1(i32 noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = tail call fastcc i32 @imax(i32 noundef %1) #10
  %4 = tail call fastcc i32 @imin(i32 noundef %3, i32 noundef %0) #10
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imax(i32 noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imin(i32 noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Inv_Residual_trans_4x4(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #3 {
  %5 = alloca [4 x [4 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  %6 = load ptr, ptr %0, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 77
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 78
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = getelementptr inbounds ptr, ptr %13, i64 %9
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  %16 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 79
  %17 = load ptr, ptr %16, align 8, !tbaa !14
  %18 = getelementptr inbounds ptr, ptr %17, i64 %9
  %19 = load ptr, ptr %18, align 8, !tbaa !17
  %20 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 80
  %21 = load ptr, ptr %20, align 8, !tbaa !18
  %22 = getelementptr inbounds ptr, ptr %21, i64 %9
  %23 = load ptr, ptr %22, align 8, !tbaa !17
  %24 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 39
  %25 = load i8, ptr %24, align 4, !tbaa !27
  switch i8 %25, label %65 [
    i8 0, label %30
    i8 1, label %26
  ]

26:                                               ; preds = %4
  %27 = sext i32 %2 to i64
  %28 = sext i32 %3 to i64
  %29 = getelementptr ptr, ptr %23, i64 %28
  br label %91

30:                                               ; preds = %4
  %31 = sext i32 %3 to i64
  %32 = getelementptr inbounds ptr, ptr %23, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !17
  %34 = getelementptr ptr, ptr %32, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !17
  %36 = getelementptr ptr, ptr %32, i64 2
  %37 = load ptr, ptr %36, align 8, !tbaa !17
  %38 = getelementptr ptr, ptr %32, i64 3
  %39 = load ptr, ptr %38, align 8, !tbaa !17
  %40 = sext i32 %2 to i64
  %41 = shl nsw i64 %40, 2
  %42 = getelementptr i8, ptr %33, i64 %41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %42, i64 16, i1 false), !tbaa !22
  %43 = getelementptr inbounds i32, ptr %33, i64 %40
  %44 = load <4 x i32>, ptr %43, align 4, !tbaa !22
  %45 = getelementptr inbounds i32, ptr %35, i64 %40
  %46 = load <4 x i32>, ptr %45, align 4, !tbaa !22
  %47 = add nsw <4 x i32> %46, %44
  %48 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 1, i64 0
  store <4 x i32> %47, ptr %48, align 16, !tbaa !22
  %49 = getelementptr inbounds i32, ptr %37, i64 %40
  %50 = load <4 x i32>, ptr %49, align 4, !tbaa !22
  %51 = add nsw <4 x i32> %50, %47
  %52 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 2, i64 0
  store <4 x i32> %51, ptr %52, align 16, !tbaa !22
  %53 = getelementptr inbounds i32, ptr %39, i64 %40
  %54 = load <4 x i32>, ptr %53, align 4, !tbaa !22
  %55 = add nsw <4 x i32> %54, %51
  %56 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 3, i64 0
  store <4 x i32> %55, ptr %56, align 16, !tbaa !22
  %57 = getelementptr inbounds ptr, ptr %19, i64 %31
  %58 = load ptr, ptr %57, align 8, !tbaa !17
  %59 = getelementptr ptr, ptr %57, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !17
  %61 = getelementptr ptr, ptr %57, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !17
  %63 = getelementptr ptr, ptr %57, i64 3
  %64 = load ptr, ptr %63, align 8, !tbaa !17
  br label %72

65:                                               ; preds = %4
  %66 = sext i32 %2 to i64
  %67 = sext i32 %3 to i64
  %68 = add nsw i32 %2, 3
  %69 = sext i32 %68 to i64
  %70 = add nsw i32 %3, 3
  %71 = sext i32 %70 to i64
  br label %121

72:                                               ; preds = %30, %72
  %73 = phi i64 [ 0, %30 ], [ %87, %72 ]
  %74 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !22
  %76 = add nsw i64 %73, %40
  %77 = getelementptr inbounds i32, ptr %58, i64 %76
  store i32 %75, ptr %77, align 4, !tbaa !22
  %78 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 1, i64 %73
  %79 = load i32, ptr %78, align 4, !tbaa !22
  %80 = getelementptr inbounds i32, ptr %60, i64 %76
  store i32 %79, ptr %80, align 4, !tbaa !22
  %81 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 2, i64 %73
  %82 = load i32, ptr %81, align 4, !tbaa !22
  %83 = getelementptr inbounds i32, ptr %62, i64 %76
  store i32 %82, ptr %83, align 4, !tbaa !22
  %84 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 3, i64 %73
  %85 = load i32, ptr %84, align 4, !tbaa !22
  %86 = getelementptr inbounds i32, ptr %64, i64 %76
  store i32 %85, ptr %86, align 4, !tbaa !22
  %87 = add nuw nsw i64 %73, 1
  %88 = icmp eq i64 %87, 4
  br i1 %88, label %137, label %72, !llvm.loop !28

89:                                               ; preds = %91
  %90 = getelementptr ptr, ptr %19, i64 %28
  br label %112

91:                                               ; preds = %26, %91
  %92 = phi i64 [ 0, %26 ], [ %110, %91 ]
  %93 = getelementptr ptr, ptr %29, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !17
  %95 = getelementptr inbounds i32, ptr %94, i64 %27
  %96 = load i32, ptr %95, align 4, !tbaa !22
  %97 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %92
  store i32 %96, ptr %97, align 16, !tbaa !22
  %98 = getelementptr i32, ptr %95, i64 1
  %99 = load i32, ptr %98, align 4, !tbaa !22
  %100 = add nsw i32 %99, %96
  %101 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %92, i64 1
  store i32 %100, ptr %101, align 4, !tbaa !22
  %102 = getelementptr i32, ptr %95, i64 2
  %103 = load i32, ptr %102, align 4, !tbaa !22
  %104 = add nsw i32 %103, %100
  %105 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %92, i64 2
  store i32 %104, ptr %105, align 8, !tbaa !22
  %106 = getelementptr i32, ptr %95, i64 3
  %107 = load i32, ptr %106, align 4, !tbaa !22
  %108 = add nsw i32 %107, %104
  %109 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %92, i64 3
  store i32 %108, ptr %109, align 4, !tbaa !22
  %110 = add nuw nsw i64 %92, 1
  %111 = icmp eq i64 %110, 4
  br i1 %111, label %89, label %91, !llvm.loop !29

112:                                              ; preds = %89, %112
  %113 = phi i64 [ 0, %89 ], [ %119, %112 ]
  %114 = getelementptr inbounds [4 x [4 x i32]], ptr %5, i64 0, i64 %113
  %115 = getelementptr ptr, ptr %90, i64 %113
  %116 = load ptr, ptr %115, align 8, !tbaa !17
  %117 = getelementptr inbounds i32, ptr %116, i64 %27
  %118 = load <4 x i32>, ptr %114, align 16, !tbaa !22
  store <4 x i32> %118, ptr %117, align 4, !tbaa !22
  %119 = add nuw nsw i64 %113, 1
  %120 = icmp eq i64 %119, 4
  br i1 %120, label %137, label %112, !llvm.loop !30

121:                                              ; preds = %65, %134
  %122 = phi i64 [ %67, %65 ], [ %135, %134 ]
  %123 = getelementptr inbounds ptr, ptr %23, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !17
  %125 = getelementptr inbounds ptr, ptr %19, i64 %122
  %126 = load ptr, ptr %125, align 8, !tbaa !17
  br label %127

127:                                              ; preds = %121, %127
  %128 = phi i64 [ %66, %121 ], [ %132, %127 ]
  %129 = getelementptr inbounds i32, ptr %124, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !22
  %131 = getelementptr inbounds i32, ptr %126, i64 %128
  store i32 %130, ptr %131, align 4, !tbaa !22
  %132 = add nsw i64 %128, 1
  %133 = icmp slt i64 %128, %69
  br i1 %133, label %127, label %134, !llvm.loop !31

134:                                              ; preds = %127
  %135 = add nsw i64 %122, 1
  %136 = icmp slt i64 %122, %71
  br i1 %136, label %121, label %137, !llvm.loop !32

137:                                              ; preds = %112, %72, %134
  %138 = phi i64 [ %67, %134 ], [ %31, %72 ], [ %28, %112 ]
  %139 = phi i64 [ %66, %134 ], [ %40, %72 ], [ %27, %112 ]
  %140 = add nsw i32 %2, 3
  %141 = sext i32 %140 to i64
  %142 = add nsw i32 %3, 3
  %143 = sext i32 %142 to i64
  br label %144

144:                                              ; preds = %137, %163
  %145 = phi i64 [ %138, %137 ], [ %164, %163 ]
  %146 = getelementptr inbounds ptr, ptr %19, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !17
  %148 = getelementptr inbounds ptr, ptr %11, i64 %145
  %149 = load ptr, ptr %148, align 8, !tbaa !17
  %150 = getelementptr inbounds ptr, ptr %15, i64 %145
  %151 = load ptr, ptr %150, align 8, !tbaa !17
  br label %152

152:                                              ; preds = %144, %152
  %153 = phi i64 [ %139, %144 ], [ %161, %152 ]
  %154 = getelementptr inbounds i32, ptr %147, i64 %153
  %155 = load i32, ptr %154, align 4, !tbaa !22
  %156 = getelementptr inbounds i16, ptr %149, i64 %153
  %157 = load i16, ptr %156, align 2, !tbaa !23
  %158 = trunc i32 %155 to i16
  %159 = add i16 %157, %158
  %160 = getelementptr inbounds i16, ptr %151, i64 %153
  store i16 %159, ptr %160, align 2, !tbaa !23
  %161 = add nsw i64 %153, 1
  %162 = icmp slt i64 %153, %141
  br i1 %162, label %152, label %163, !llvm.loop !33

163:                                              ; preds = %152
  %164 = add nsw i64 %145, 1
  %165 = icmp slt i64 %145, %143
  br i1 %165, label %144, label %166, !llvm.loop !34

166:                                              ; preds = %163
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Inv_Residual_trans_8x8(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = alloca [8 x [8 x i32]], align 16
  %6 = load ptr, ptr %0, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #11
  %7 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 77
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 78
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = getelementptr inbounds ptr, ptr %13, i64 %9
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  %16 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 79
  %17 = load ptr, ptr %16, align 8, !tbaa !14
  %18 = getelementptr inbounds ptr, ptr %17, i64 %9
  %19 = load ptr, ptr %18, align 8, !tbaa !17
  %20 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 39
  %21 = load i8, ptr %20, align 4, !tbaa !27
  switch i8 %21, label %22 [
    i8 0, label %29
    i8 1, label %25
  ]

22:                                               ; preds = %4
  %23 = sext i32 %2 to i64
  %24 = sext i32 %3 to i64
  br label %165

25:                                               ; preds = %4
  %26 = sext i32 %2 to i64
  %27 = sext i32 %3 to i64
  %28 = getelementptr ptr, ptr %19, i64 %27
  br label %116

29:                                               ; preds = %4
  %30 = sext i32 %3 to i64
  %31 = getelementptr inbounds ptr, ptr %19, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !17
  %33 = getelementptr ptr, ptr %31, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !17
  %35 = getelementptr ptr, ptr %31, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !17
  %37 = getelementptr ptr, ptr %31, i64 3
  %38 = load ptr, ptr %37, align 8, !tbaa !17
  %39 = getelementptr ptr, ptr %31, i64 4
  %40 = load ptr, ptr %39, align 8, !tbaa !17
  %41 = getelementptr ptr, ptr %31, i64 5
  %42 = load ptr, ptr %41, align 8, !tbaa !17
  %43 = getelementptr ptr, ptr %31, i64 6
  %44 = load ptr, ptr %43, align 8, !tbaa !17
  %45 = getelementptr ptr, ptr %31, i64 7
  %46 = load ptr, ptr %45, align 8, !tbaa !17
  %47 = sext i32 %2 to i64
  %48 = shl nsw i64 %47, 2
  %49 = getelementptr i8, ptr %32, i64 %48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(32) %49, i64 32, i1 false), !tbaa !22
  br label %50

50:                                               ; preds = %50, %29
  %51 = phi i64 [ 0, %29 ], [ %83, %50 ]
  %52 = add nsw i64 %51, %47
  %53 = getelementptr inbounds i32, ptr %32, i64 %52
  %54 = load <4 x i32>, ptr %53, align 4, !tbaa !22
  %55 = getelementptr inbounds i32, ptr %34, i64 %52
  %56 = load <4 x i32>, ptr %55, align 4, !tbaa !22
  %57 = add nsw <4 x i32> %56, %54
  %58 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 1, i64 %51
  store <4 x i32> %57, ptr %58, align 16, !tbaa !22
  %59 = getelementptr inbounds i32, ptr %36, i64 %52
  %60 = load <4 x i32>, ptr %59, align 4, !tbaa !22
  %61 = add nsw <4 x i32> %60, %57
  %62 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 2, i64 %51
  store <4 x i32> %61, ptr %62, align 16, !tbaa !22
  %63 = getelementptr inbounds i32, ptr %38, i64 %52
  %64 = load <4 x i32>, ptr %63, align 4, !tbaa !22
  %65 = add nsw <4 x i32> %64, %61
  %66 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 3, i64 %51
  store <4 x i32> %65, ptr %66, align 16, !tbaa !22
  %67 = getelementptr inbounds i32, ptr %40, i64 %52
  %68 = load <4 x i32>, ptr %67, align 4, !tbaa !22
  %69 = add nsw <4 x i32> %68, %65
  %70 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 4, i64 %51
  store <4 x i32> %69, ptr %70, align 16, !tbaa !22
  %71 = getelementptr inbounds i32, ptr %42, i64 %52
  %72 = load <4 x i32>, ptr %71, align 4, !tbaa !22
  %73 = add nsw <4 x i32> %72, %69
  %74 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 5, i64 %51
  store <4 x i32> %73, ptr %74, align 16, !tbaa !22
  %75 = getelementptr inbounds i32, ptr %44, i64 %52
  %76 = load <4 x i32>, ptr %75, align 4, !tbaa !22
  %77 = add nsw <4 x i32> %76, %73
  %78 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 6, i64 %51
  store <4 x i32> %77, ptr %78, align 16, !tbaa !22
  %79 = getelementptr inbounds i32, ptr %46, i64 %52
  %80 = load <4 x i32>, ptr %79, align 4, !tbaa !22
  %81 = add nsw <4 x i32> %80, %77
  %82 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 7, i64 %51
  store <4 x i32> %81, ptr %82, align 16, !tbaa !22
  %83 = add nuw i64 %51, 4
  %84 = icmp eq i64 %83, 8
  br i1 %84, label %85, label %50, !llvm.loop !35

85:                                               ; preds = %50, %85
  %86 = phi i64 [ %112, %85 ], [ 0, %50 ]
  %87 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !22
  %89 = add nsw i64 %86, %47
  %90 = getelementptr inbounds i32, ptr %32, i64 %89
  store i32 %88, ptr %90, align 4, !tbaa !22
  %91 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 1, i64 %86
  %92 = load i32, ptr %91, align 4, !tbaa !22
  %93 = getelementptr inbounds i32, ptr %34, i64 %89
  store i32 %92, ptr %93, align 4, !tbaa !22
  %94 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 2, i64 %86
  %95 = load i32, ptr %94, align 4, !tbaa !22
  %96 = getelementptr inbounds i32, ptr %36, i64 %89
  store i32 %95, ptr %96, align 4, !tbaa !22
  %97 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 3, i64 %86
  %98 = load i32, ptr %97, align 4, !tbaa !22
  %99 = getelementptr inbounds i32, ptr %38, i64 %89
  store i32 %98, ptr %99, align 4, !tbaa !22
  %100 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 4, i64 %86
  %101 = load i32, ptr %100, align 4, !tbaa !22
  %102 = getelementptr inbounds i32, ptr %40, i64 %89
  store i32 %101, ptr %102, align 4, !tbaa !22
  %103 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 5, i64 %86
  %104 = load i32, ptr %103, align 4, !tbaa !22
  %105 = getelementptr inbounds i32, ptr %42, i64 %89
  store i32 %104, ptr %105, align 4, !tbaa !22
  %106 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 6, i64 %86
  %107 = load i32, ptr %106, align 4, !tbaa !22
  %108 = getelementptr inbounds i32, ptr %44, i64 %89
  store i32 %107, ptr %108, align 4, !tbaa !22
  %109 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 7, i64 %86
  %110 = load i32, ptr %109, align 4, !tbaa !22
  %111 = getelementptr inbounds i32, ptr %46, i64 %89
  store i32 %110, ptr %111, align 4, !tbaa !22
  %112 = add nuw nsw i64 %86, 1
  %113 = icmp eq i64 %112, 8
  br i1 %113, label %165, label %85, !llvm.loop !38

114:                                              ; preds = %116
  %115 = getelementptr ptr, ptr %19, i64 %27
  br label %153

116:                                              ; preds = %25, %116
  %117 = phi i64 [ 0, %25 ], [ %151, %116 ]
  %118 = getelementptr ptr, ptr %28, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !17
  %120 = getelementptr inbounds i32, ptr %119, i64 %26
  %121 = load i32, ptr %120, align 4, !tbaa !22
  %122 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 %117
  store i32 %121, ptr %122, align 16, !tbaa !22
  %123 = getelementptr i32, ptr %120, i64 1
  %124 = load i32, ptr %123, align 4, !tbaa !22
  %125 = add nsw i32 %124, %121
  %126 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 %117, i64 1
  store i32 %125, ptr %126, align 4, !tbaa !22
  %127 = getelementptr i32, ptr %120, i64 2
  %128 = load i32, ptr %127, align 4, !tbaa !22
  %129 = add nsw i32 %128, %125
  %130 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 %117, i64 2
  store i32 %129, ptr %130, align 8, !tbaa !22
  %131 = getelementptr i32, ptr %120, i64 3
  %132 = load i32, ptr %131, align 4, !tbaa !22
  %133 = add nsw i32 %132, %129
  %134 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 %117, i64 3
  store i32 %133, ptr %134, align 4, !tbaa !22
  %135 = getelementptr i32, ptr %120, i64 4
  %136 = load i32, ptr %135, align 4, !tbaa !22
  %137 = add nsw i32 %136, %133
  %138 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 %117, i64 4
  store i32 %137, ptr %138, align 16, !tbaa !22
  %139 = getelementptr i32, ptr %120, i64 5
  %140 = load i32, ptr %139, align 4, !tbaa !22
  %141 = add nsw i32 %140, %137
  %142 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 %117, i64 5
  store i32 %141, ptr %142, align 4, !tbaa !22
  %143 = getelementptr i32, ptr %120, i64 6
  %144 = load i32, ptr %143, align 4, !tbaa !22
  %145 = add nsw i32 %144, %141
  %146 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 %117, i64 6
  store i32 %145, ptr %146, align 8, !tbaa !22
  %147 = getelementptr i32, ptr %120, i64 7
  %148 = load i32, ptr %147, align 4, !tbaa !22
  %149 = add nsw i32 %148, %145
  %150 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 %117, i64 7
  store i32 %149, ptr %150, align 4, !tbaa !22
  %151 = add nuw nsw i64 %117, 1
  %152 = icmp eq i64 %151, 8
  br i1 %152, label %114, label %116, !llvm.loop !39

153:                                              ; preds = %114, %153
  %154 = phi i64 [ 0, %114 ], [ %163, %153 ]
  %155 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 %154
  %156 = getelementptr ptr, ptr %115, i64 %154
  %157 = load ptr, ptr %156, align 8, !tbaa !17
  %158 = getelementptr inbounds i32, ptr %157, i64 %26
  %159 = load <4 x i32>, ptr %155, align 16, !tbaa !22
  store <4 x i32> %159, ptr %158, align 4, !tbaa !22
  %160 = getelementptr inbounds [8 x [8 x i32]], ptr %5, i64 0, i64 %154, i64 4
  %161 = getelementptr i32, ptr %158, i64 4
  %162 = load <4 x i32>, ptr %160, align 16, !tbaa !22
  store <4 x i32> %162, ptr %161, align 4, !tbaa !22
  %163 = add nuw nsw i64 %154, 1
  %164 = icmp eq i64 %163, 8
  br i1 %164, label %165, label %153, !llvm.loop !40

165:                                              ; preds = %153, %85, %22
  %166 = phi i64 [ %24, %22 ], [ %30, %85 ], [ %27, %153 ]
  %167 = phi i64 [ %23, %22 ], [ %47, %85 ], [ %26, %153 ]
  %168 = add nsw i32 %2, 7
  %169 = sext i32 %168 to i64
  %170 = add nsw i32 %3, 7
  %171 = sext i32 %170 to i64
  br label %172

172:                                              ; preds = %165, %191
  %173 = phi i64 [ %166, %165 ], [ %192, %191 ]
  %174 = getelementptr inbounds ptr, ptr %19, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !17
  %176 = getelementptr inbounds ptr, ptr %11, i64 %173
  %177 = load ptr, ptr %176, align 8, !tbaa !17
  %178 = getelementptr inbounds ptr, ptr %15, i64 %173
  %179 = load ptr, ptr %178, align 8, !tbaa !17
  br label %180

180:                                              ; preds = %172, %180
  %181 = phi i64 [ %167, %172 ], [ %189, %180 ]
  %182 = getelementptr inbounds i32, ptr %175, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !22
  %184 = getelementptr inbounds i16, ptr %177, i64 %181
  %185 = load i16, ptr %184, align 2, !tbaa !23
  %186 = trunc i32 %183 to i16
  %187 = add i16 %185, %186
  %188 = getelementptr inbounds i16, ptr %179, i64 %181
  store i16 %187, ptr %188, align 2, !tbaa !23
  %189 = add nsw i64 %181, 1
  %190 = icmp slt i64 %181, %169
  br i1 %190, label %180, label %191, !llvm.loop !41

191:                                              ; preds = %180
  %192 = add nsw i64 %173, 1
  %193 = icmp slt i64 %173, %171
  br i1 %193, label %172, label %194, !llvm.loop !42

194:                                              ; preds = %191
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Inv_Residual_trans_16x16(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = alloca [16 x [16 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #11
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 77
  %6 = load ptr, ptr %5, align 8, !tbaa !20
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 78
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = getelementptr inbounds ptr, ptr %11, i64 %7
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  %14 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 79
  %15 = load ptr, ptr %14, align 8, !tbaa !14
  %16 = getelementptr inbounds ptr, ptr %15, i64 %7
  %17 = load ptr, ptr %16, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 80
  %19 = load ptr, ptr %18, align 8, !tbaa !18
  %20 = getelementptr inbounds ptr, ptr %19, i64 %7
  %21 = load ptr, ptr %20, align 8, !tbaa !17
  %22 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 39
  %23 = load i8, ptr %22, align 4, !tbaa !27
  switch i8 %23, label %85 [
    i8 0, label %24
    i8 1, label %59
  ]

24:                                               ; preds = %2
  %25 = load ptr, ptr %21, align 8, !tbaa !17
  br label %26

26:                                               ; preds = %24, %42
  %27 = phi i64 [ 0, %24 ], [ %43, %42 ]
  %28 = getelementptr inbounds i32, ptr %25, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !22
  %30 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %27
  store i32 %29, ptr %30, align 4, !tbaa !22
  br label %31

31:                                               ; preds = %26, %31
  %32 = phi i32 [ %29, %26 ], [ %38, %31 ]
  %33 = phi i64 [ 1, %26 ], [ %40, %31 ]
  %34 = getelementptr inbounds ptr, ptr %21, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !17
  %36 = getelementptr inbounds i32, ptr %35, i64 %27
  %37 = load i32, ptr %36, align 4, !tbaa !22
  %38 = add nsw i32 %32, %37
  %39 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %33, i64 %27
  store i32 %38, ptr %39, align 4, !tbaa !22
  %40 = add nuw nsw i64 %33, 1
  %41 = icmp eq i64 %40, 16
  br i1 %41, label %42, label %31, !llvm.loop !43

42:                                               ; preds = %31
  %43 = add nuw nsw i64 %27, 1
  %44 = icmp eq i64 %43, 16
  br i1 %44, label %45, label %26, !llvm.loop !44

45:                                               ; preds = %42, %56
  %46 = phi i64 [ %57, %56 ], [ 0, %42 ]
  br label %47

47:                                               ; preds = %45, %47
  %48 = phi i64 [ 0, %45 ], [ %54, %47 ]
  %49 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %48, i64 %46
  %50 = load i32, ptr %49, align 4, !tbaa !22
  %51 = getelementptr inbounds ptr, ptr %17, i64 %48
  %52 = load ptr, ptr %51, align 8, !tbaa !17
  %53 = getelementptr inbounds i32, ptr %52, i64 %46
  store i32 %50, ptr %53, align 4, !tbaa !22
  %54 = add nuw nsw i64 %48, 1
  %55 = icmp eq i64 %54, 16
  br i1 %55, label %56, label %47, !llvm.loop !45

56:                                               ; preds = %47
  %57 = add nuw nsw i64 %46, 1
  %58 = icmp eq i64 %57, 16
  br i1 %58, label %101, label %45, !llvm.loop !46

59:                                               ; preds = %2, %74
  %60 = phi i64 [ %75, %74 ], [ 0, %2 ]
  %61 = getelementptr inbounds ptr, ptr %21, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !17
  %63 = load i32, ptr %62, align 4, !tbaa !22
  %64 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %60
  store i32 %63, ptr %64, align 16, !tbaa !22
  br label %65

65:                                               ; preds = %59, %65
  %66 = phi i32 [ %63, %59 ], [ %70, %65 ]
  %67 = phi i64 [ 1, %59 ], [ %72, %65 ]
  %68 = getelementptr inbounds i32, ptr %62, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !22
  %70 = add nsw i32 %66, %69
  %71 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %60, i64 %67
  store i32 %70, ptr %71, align 4, !tbaa !22
  %72 = add nuw nsw i64 %67, 1
  %73 = icmp eq i64 %72, 16
  br i1 %73, label %74, label %65, !llvm.loop !47

74:                                               ; preds = %65
  %75 = add nuw nsw i64 %60, 1
  %76 = icmp eq i64 %75, 16
  br i1 %76, label %77, label %59, !llvm.loop !48

77:                                               ; preds = %74, %77
  %78 = phi i64 [ %83, %77 ], [ 0, %74 ]
  %79 = shl nuw nsw i64 %78, 6
  %80 = getelementptr i8, ptr %3, i64 %79
  %81 = getelementptr inbounds ptr, ptr %17, i64 %78
  %82 = load ptr, ptr %81, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %82, ptr noundef nonnull align 16 dereferenceable(64) %80, i64 64, i1 false), !tbaa !22
  %83 = add nuw nsw i64 %78, 1
  %84 = icmp eq i64 %83, 16
  br i1 %84, label %101, label %77, !llvm.loop !49

85:                                               ; preds = %2, %98
  %86 = phi i64 [ %99, %98 ], [ 0, %2 ]
  %87 = getelementptr inbounds ptr, ptr %21, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !17
  %89 = getelementptr inbounds ptr, ptr %17, i64 %86
  %90 = load ptr, ptr %89, align 8, !tbaa !17
  br label %91

91:                                               ; preds = %85, %91
  %92 = phi i64 [ 0, %85 ], [ %96, %91 ]
  %93 = getelementptr inbounds i32, ptr %88, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !22
  %95 = getelementptr inbounds i32, ptr %90, i64 %92
  store i32 %94, ptr %95, align 4, !tbaa !22
  %96 = add nuw nsw i64 %92, 1
  %97 = icmp eq i64 %96, 16
  br i1 %97, label %98, label %91, !llvm.loop !50

98:                                               ; preds = %91
  %99 = add nuw nsw i64 %86, 1
  %100 = icmp eq i64 %99, 16
  br i1 %100, label %101, label %85, !llvm.loop !51

101:                                              ; preds = %77, %56, %98
  br label %102

102:                                              ; preds = %101, %121
  %103 = phi i64 [ %122, %121 ], [ 0, %101 ]
  %104 = getelementptr inbounds ptr, ptr %17, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !17
  %106 = getelementptr inbounds ptr, ptr %9, i64 %103
  %107 = load ptr, ptr %106, align 8, !tbaa !17
  %108 = getelementptr inbounds ptr, ptr %13, i64 %103
  %109 = load ptr, ptr %108, align 8, !tbaa !17
  br label %110

110:                                              ; preds = %102, %110
  %111 = phi i64 [ 0, %102 ], [ %119, %110 ]
  %112 = getelementptr inbounds i32, ptr %105, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !22
  %114 = getelementptr inbounds i16, ptr %107, i64 %111
  %115 = load i16, ptr %114, align 2, !tbaa !23
  %116 = trunc i32 %113 to i16
  %117 = add i16 %115, %116
  %118 = getelementptr inbounds i16, ptr %109, i64 %111
  store i16 %117, ptr %118, align 2, !tbaa !23
  %119 = add nuw nsw i64 %111, 1
  %120 = icmp eq i64 %119, 16
  br i1 %120, label %121, label %110, !llvm.loop !52

121:                                              ; preds = %110
  %122 = add nuw nsw i64 %103, 1
  %123 = icmp eq i64 %122, 16
  br i1 %123, label %124, label %102, !llvm.loop !53

124:                                              ; preds = %121
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Inv_Residual_trans_Chroma(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = alloca [16 x [16 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #11
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 79
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = add nsw i32 %1, 1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 80
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  %13 = getelementptr inbounds ptr, ptr %12, i64 %8
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  %15 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !21
  %17 = getelementptr inbounds %struct.video_par, ptr %16, i64 0, i32 77
  %18 = load i32, ptr %17, align 4, !tbaa !54
  %19 = getelementptr inbounds %struct.video_par, ptr %16, i64 0, i32 78
  %20 = load i32, ptr %19, align 8, !tbaa !60
  %21 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 40
  %22 = load i8, ptr %21, align 1, !tbaa !61
  %23 = icmp eq i8 %22, 2
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = icmp sgt i32 %20, 0
  br i1 %25, label %26, label %109

26:                                               ; preds = %24
  %27 = icmp sgt i32 %18, 1
  %28 = zext nneg i32 %20 to i64
  %29 = zext nneg i32 %18 to i64
  br label %81

30:                                               ; preds = %2
  %31 = icmp sgt i32 %18, 0
  br i1 %31, label %32, label %109

32:                                               ; preds = %30
  %33 = load ptr, ptr %14, align 8, !tbaa !17
  %34 = icmp sgt i32 %20, 1
  %35 = zext nneg i32 %18 to i64
  %36 = zext nneg i32 %20 to i64
  br label %42

37:                                               ; preds = %58
  br i1 %31, label %38, label %109

38:                                               ; preds = %37
  %39 = icmp sgt i32 %20, 0
  %40 = zext nneg i32 %18 to i64
  %41 = zext nneg i32 %20 to i64
  br label %61

42:                                               ; preds = %32, %58
  %43 = phi i64 [ 0, %32 ], [ %59, %58 ]
  %44 = getelementptr inbounds i32, ptr %33, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !22
  %46 = getelementptr inbounds [16 x i32], ptr %3, i64 0, i64 %43
  store i32 %45, ptr %46, align 4, !tbaa !22
  br i1 %34, label %47, label %58

47:                                               ; preds = %42, %47
  %48 = phi i32 [ %54, %47 ], [ %45, %42 ]
  %49 = phi i64 [ %56, %47 ], [ 1, %42 ]
  %50 = getelementptr inbounds ptr, ptr %14, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !17
  %52 = getelementptr inbounds i32, ptr %51, i64 %43
  %53 = load i32, ptr %52, align 4, !tbaa !22
  %54 = add nsw i32 %53, %48
  %55 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %49, i64 %43
  store i32 %54, ptr %55, align 4, !tbaa !22
  %56 = add nuw nsw i64 %49, 1
  %57 = icmp eq i64 %56, %36
  br i1 %57, label %58, label %47, !llvm.loop !62

58:                                               ; preds = %47, %42
  %59 = add nuw nsw i64 %43, 1
  %60 = icmp eq i64 %59, %35
  br i1 %60, label %37, label %42, !llvm.loop !63

61:                                               ; preds = %38, %72
  %62 = phi i64 [ 0, %38 ], [ %73, %72 ]
  br i1 %39, label %63, label %72

63:                                               ; preds = %61, %63
  %64 = phi i64 [ %70, %63 ], [ 0, %61 ]
  %65 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %64, i64 %62
  %66 = load i32, ptr %65, align 4, !tbaa !22
  %67 = getelementptr inbounds ptr, ptr %10, i64 %64
  %68 = load ptr, ptr %67, align 8, !tbaa !17
  %69 = getelementptr inbounds i32, ptr %68, i64 %62
  store i32 %66, ptr %69, align 4, !tbaa !22
  %70 = add nuw nsw i64 %64, 1
  %71 = icmp eq i64 %70, %41
  br i1 %71, label %72, label %63, !llvm.loop !64

72:                                               ; preds = %63, %61
  %73 = add nuw nsw i64 %62, 1
  %74 = icmp eq i64 %73, %40
  br i1 %74, label %109, label %61, !llvm.loop !65

75:                                               ; preds = %96
  br i1 %25, label %76, label %109

76:                                               ; preds = %75
  %77 = icmp sgt i32 %18, 0
  %78 = zext i32 %18 to i64
  %79 = shl nuw nsw i64 %78, 2
  %80 = zext nneg i32 %20 to i64
  br label %99

81:                                               ; preds = %26, %96
  %82 = phi i64 [ 0, %26 ], [ %97, %96 ]
  %83 = getelementptr inbounds ptr, ptr %14, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !17
  %85 = load i32, ptr %84, align 4, !tbaa !22
  %86 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %82
  store i32 %85, ptr %86, align 16, !tbaa !22
  br i1 %27, label %87, label %96

87:                                               ; preds = %81, %87
  %88 = phi i32 [ %92, %87 ], [ %85, %81 ]
  %89 = phi i64 [ %94, %87 ], [ 1, %81 ]
  %90 = getelementptr inbounds i32, ptr %84, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !22
  %92 = add nsw i32 %91, %88
  %93 = getelementptr inbounds [16 x [16 x i32]], ptr %3, i64 0, i64 %82, i64 %89
  store i32 %92, ptr %93, align 4, !tbaa !22
  %94 = add nuw nsw i64 %89, 1
  %95 = icmp eq i64 %94, %29
  br i1 %95, label %96, label %87, !llvm.loop !66

96:                                               ; preds = %87, %81
  %97 = add nuw nsw i64 %82, 1
  %98 = icmp eq i64 %97, %28
  br i1 %98, label %75, label %81, !llvm.loop !67

99:                                               ; preds = %76, %106
  %100 = phi i64 [ 0, %76 ], [ %107, %106 ]
  br i1 %77, label %101, label %106

101:                                              ; preds = %99
  %102 = shl nuw nsw i64 %100, 6
  %103 = getelementptr i8, ptr %3, i64 %102
  %104 = getelementptr inbounds ptr, ptr %10, i64 %100
  %105 = load ptr, ptr %104, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %105, ptr align 16 %103, i64 %79, i1 false), !tbaa !22
  br label %106

106:                                              ; preds = %101, %99
  %107 = add nuw nsw i64 %100, 1
  %108 = icmp eq i64 %107, %80
  br i1 %108, label %109, label %99, !llvm.loop !68

109:                                              ; preds = %106, %72, %30, %24, %75, %37
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @itrans_2(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  %7 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 105
  %8 = load i32, ptr %7, align 8, !tbaa !69
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 %1, i32 0
  %11 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 80
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 16, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !22
  %19 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 132
  %20 = load ptr, ptr %19, align 8, !tbaa !70
  %21 = sext i32 %18 to i64
  %22 = getelementptr inbounds i32, ptr %20, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !22
  %24 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 133
  %25 = load ptr, ptr %24, align 8, !tbaa !71
  %26 = getelementptr inbounds i32, ptr %25, i64 %21
  %27 = load i32, ptr %26, align 4, !tbaa !22
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 88, i64 %16, i64 %28
  %30 = load i32, ptr %29, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %31 = call i32 @get_mem2Dint(ptr noundef nonnull %3, i32 noundef 4, i32 noundef 4) #9
  %32 = load ptr, ptr %3, align 8, !tbaa !17
  br label %33

33:                                               ; preds = %2, %33
  %34 = phi i64 [ 0, %2 ], [ %50, %33 ]
  %35 = shl nuw nsw i64 %34, 2
  %36 = getelementptr inbounds ptr, ptr %15, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !17
  %38 = load i32, ptr %37, align 4, !tbaa !22
  %39 = getelementptr inbounds ptr, ptr %32, i64 %34
  %40 = load ptr, ptr %39, align 8, !tbaa !17
  store i32 %38, ptr %40, align 4, !tbaa !22
  %41 = getelementptr inbounds i32, ptr %37, i64 4
  %42 = load i32, ptr %41, align 4, !tbaa !22
  %43 = getelementptr inbounds i32, ptr %40, i64 1
  store i32 %42, ptr %43, align 4, !tbaa !22
  %44 = getelementptr inbounds i32, ptr %37, i64 8
  %45 = load i32, ptr %44, align 4, !tbaa !22
  %46 = getelementptr inbounds i32, ptr %40, i64 2
  store i32 %45, ptr %46, align 4, !tbaa !22
  %47 = getelementptr inbounds i32, ptr %37, i64 12
  %48 = load i32, ptr %47, align 4, !tbaa !22
  %49 = getelementptr inbounds i32, ptr %40, i64 3
  store i32 %48, ptr %49, align 4, !tbaa !22
  %50 = add nuw nsw i64 %34, 1
  %51 = icmp eq i64 %50, 4
  br i1 %51, label %52, label %33, !llvm.loop !72

52:                                               ; preds = %33
  call void @ihadamard4x4(ptr noundef nonnull %32, ptr noundef nonnull %32) #9
  %53 = load ptr, ptr %3, align 8, !tbaa !17
  br label %54

54:                                               ; preds = %52, %54
  %55 = phi i64 [ 0, %52 ], [ %83, %54 ]
  %56 = getelementptr inbounds ptr, ptr %53, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !17
  %58 = load i32, ptr %57, align 4, !tbaa !22
  %59 = mul nsw i32 %58, %30
  %60 = shl i32 %59, %23
  %61 = call fastcc i32 @rshift_rnd(i32 noundef %60) #10
  %62 = shl nuw nsw i64 %55, 2
  %63 = getelementptr inbounds ptr, ptr %15, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !17
  store i32 %61, ptr %64, align 4, !tbaa !22
  %65 = getelementptr inbounds i32, ptr %57, i64 1
  %66 = load i32, ptr %65, align 4, !tbaa !22
  %67 = mul nsw i32 %66, %30
  %68 = shl i32 %67, %23
  %69 = call fastcc i32 @rshift_rnd(i32 noundef %68) #10
  %70 = getelementptr inbounds i32, ptr %64, i64 4
  store i32 %69, ptr %70, align 4, !tbaa !22
  %71 = getelementptr inbounds i32, ptr %57, i64 2
  %72 = load i32, ptr %71, align 4, !tbaa !22
  %73 = mul nsw i32 %72, %30
  %74 = shl i32 %73, %23
  %75 = call fastcc i32 @rshift_rnd(i32 noundef %74) #10
  %76 = getelementptr inbounds i32, ptr %64, i64 8
  store i32 %75, ptr %76, align 4, !tbaa !22
  %77 = getelementptr inbounds i32, ptr %57, i64 3
  %78 = load i32, ptr %77, align 4, !tbaa !22
  %79 = mul nsw i32 %78, %30
  %80 = shl i32 %79, %23
  %81 = call fastcc i32 @rshift_rnd(i32 noundef %80) #10
  %82 = getelementptr inbounds i32, ptr %64, i64 12
  store i32 %81, ptr %82, align 4, !tbaa !22
  %83 = add nuw nsw i64 %55, 1
  %84 = icmp eq i64 %83, 4
  br i1 %84, label %85, label %54, !llvm.loop !73

85:                                               ; preds = %54
  call void @free_mem2Dint(ptr noundef nonnull %53) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret void
}

; Function Attrs: optsize
declare i32 @get_mem2Dint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ihadamard4x4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @rshift_rnd(i32 noundef %0) unnamed_addr #4 {
  %2 = add nsw i32 %0, 32
  %3 = ashr i32 %2, 6
  ret i32 %3
}

; Function Attrs: optsize
declare void @free_mem2Dint(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @itrans_sp(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !21
  %8 = load ptr, ptr %0, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 33
  %10 = load i32, ptr %9, align 4, !tbaa !74
  %11 = icmp eq i32 %10, 4
  %12 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 31
  %13 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 29
  %14 = select i1 %11, ptr %12, ptr %13
  %15 = load i32, ptr %14, align 4, !tbaa !22
  %16 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 132
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = sext i32 %15 to i64
  %19 = getelementptr inbounds i32, ptr %17, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !22
  %21 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 133
  %22 = load ptr, ptr %21, align 8, !tbaa !71
  %23 = getelementptr inbounds i32, ptr %22, i64 %18
  %24 = load i32, ptr %23, align 4, !tbaa !22
  %25 = load i32, ptr %12, align 4, !tbaa !75
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %17, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !22
  %29 = getelementptr inbounds i32, ptr %22, i64 %26
  %30 = load i32, ptr %29, align 4, !tbaa !22
  %31 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 77
  %32 = load ptr, ptr %31, align 8, !tbaa !20
  %33 = zext i32 %1 to i64
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !17
  %36 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 78
  %37 = load ptr, ptr %36, align 8, !tbaa !19
  %38 = getelementptr inbounds ptr, ptr %37, i64 %33
  %39 = load ptr, ptr %38, align 8, !tbaa !17
  %40 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 79
  %41 = load ptr, ptr %40, align 8, !tbaa !14
  %42 = getelementptr inbounds ptr, ptr %41, i64 %33
  %43 = load ptr, ptr %42, align 8, !tbaa !17
  %44 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 80
  %45 = load ptr, ptr %44, align 8, !tbaa !18
  %46 = getelementptr inbounds ptr, ptr %45, i64 %33
  %47 = load ptr, ptr %46, align 8, !tbaa !17
  %48 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 70, i64 %33
  %49 = load i32, ptr %48, align 4, !tbaa !22
  %50 = sext i32 %24 to i64
  %51 = sext i32 %30 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %52 = call i32 @get_mem2Dint(ptr noundef nonnull %5, i32 noundef 16, i32 noundef 16) #9
  %53 = sext i32 %2 to i64
  %54 = load ptr, ptr %5, align 8, !tbaa !17
  %55 = sext i32 %3 to i64
  %56 = getelementptr ptr, ptr %35, i64 %55
  br label %57

57:                                               ; preds = %4, %57
  %58 = phi i64 [ 0, %4 ], [ %66, %57 ]
  %59 = getelementptr ptr, ptr %56, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !17
  %61 = getelementptr inbounds i16, ptr %60, i64 %53
  %62 = getelementptr inbounds ptr, ptr %54, i64 %58
  %63 = load ptr, ptr %62, align 8, !tbaa !17
  %64 = load <4 x i16>, ptr %61, align 2, !tbaa !23
  %65 = zext <4 x i16> %64 to <4 x i32>
  store <4 x i32> %65, ptr %63, align 4, !tbaa !22
  %66 = add nuw nsw i64 %58, 1
  %67 = icmp eq i64 %66, 4
  br i1 %67, label %68, label %57, !llvm.loop !76

68:                                               ; preds = %57
  %69 = add nsw i32 %28, 15
  %70 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %50
  %71 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %51
  call void @forward4x4(ptr noundef nonnull %54, ptr noundef nonnull %54, i32 noundef 0, i32 noundef 0) #9
  %72 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 48
  %73 = load i32, ptr %72, align 8, !tbaa !77
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i32, ptr %9, align 4, !tbaa !74
  %77 = icmp eq i32 %76, 4
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %5, align 8, !tbaa !17
  %80 = getelementptr ptr, ptr %47, i64 %55
  br label %117

81:                                               ; preds = %75, %68
  %82 = load ptr, ptr %5, align 8, !tbaa !17
  %83 = getelementptr ptr, ptr %47, i64 %55
  br label %84

84:                                               ; preds = %81, %114
  %85 = phi i64 [ 0, %81 ], [ %115, %114 ]
  %86 = getelementptr ptr, ptr %83, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !17
  %88 = getelementptr inbounds ptr, ptr %82, i64 %85
  %89 = load ptr, ptr %88, align 8, !tbaa !17
  %90 = getelementptr i32, ptr %87, i64 %53
  br label %91

91:                                               ; preds = %84, %91
  %92 = phi i64 [ 0, %84 ], [ %112, %91 ]
  %93 = getelementptr i32, ptr %90, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !22
  %95 = ashr i32 %94, %20
  %96 = getelementptr inbounds [4 x i32], ptr %70, i64 %85, i64 %92
  %97 = load i32, ptr %96, align 4, !tbaa !22
  %98 = sdiv i32 %95, %97
  %99 = getelementptr inbounds i32, ptr %89, i64 %92
  %100 = load i32, ptr %99, align 4, !tbaa !22
  %101 = call fastcc i32 @iabs(i32 noundef %100) #10
  %102 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %51, i64 %85, i64 %92
  %103 = load i32, ptr %102, align 4, !tbaa !22
  %104 = mul nsw i32 %103, %101
  %105 = call fastcc i32 @rshift_rnd_sf(i32 noundef %104, i32 noundef %69) #10
  %106 = call fastcc i32 @isignab(i32 noundef %105, i32 noundef %100) #10
  %107 = add nsw i32 %106, %98
  %108 = getelementptr inbounds [4 x i32], ptr %71, i64 %85, i64 %92
  %109 = load i32, ptr %108, align 4, !tbaa !22
  %110 = mul nsw i32 %107, %109
  %111 = shl i32 %110, %28
  store i32 %111, ptr %93, align 4, !tbaa !22
  %112 = add nuw nsw i64 %92, 1
  %113 = icmp eq i64 %112, 4
  br i1 %113, label %114, label %91, !llvm.loop !78

114:                                              ; preds = %91
  %115 = add nuw nsw i64 %85, 1
  %116 = icmp eq i64 %115, 4
  br i1 %116, label %158, label %84, !llvm.loop !79

117:                                              ; preds = %78, %155
  %118 = phi i64 [ 0, %78 ], [ %156, %155 ]
  %119 = getelementptr ptr, ptr %80, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !17
  %121 = getelementptr inbounds ptr, ptr %79, i64 %118
  %122 = load ptr, ptr %121, align 8, !tbaa !17
  %123 = getelementptr i32, ptr %120, i64 %53
  br label %124

124:                                              ; preds = %117, %124
  %125 = phi i64 [ 0, %117 ], [ %153, %124 ]
  %126 = getelementptr i32, ptr %123, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !22
  %128 = ashr i32 %127, %20
  %129 = getelementptr inbounds [4 x i32], ptr %70, i64 %118, i64 %125
  %130 = load i32, ptr %129, align 4, !tbaa !22
  %131 = getelementptr inbounds i32, ptr %122, i64 %125
  %132 = load i32, ptr %131, align 4, !tbaa !22
  %133 = freeze i32 %128
  %134 = srem i32 %133, %130
  %135 = sub nsw i32 %133, %134
  %136 = getelementptr inbounds [4 x [4 x i32]], ptr @A, i64 0, i64 %118, i64 %125
  %137 = load i32, ptr %136, align 4, !tbaa !22
  %138 = mul nsw i32 %135, %137
  %139 = shl i32 %138, %20
  %140 = ashr i32 %139, 6
  %141 = add nsw i32 %140, %132
  %142 = call fastcc i32 @isign(i32 noundef %141) #10, !range !80
  %143 = call fastcc i32 @iabs(i32 noundef %141) #10
  %144 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %51, i64 %118, i64 %125
  %145 = load i32, ptr %144, align 4, !tbaa !22
  %146 = mul nsw i32 %145, %143
  %147 = call fastcc i32 @rshift_rnd_sf(i32 noundef %146, i32 noundef %69) #10
  %148 = mul nsw i32 %147, %142
  %149 = getelementptr inbounds [4 x i32], ptr %71, i64 %118, i64 %125
  %150 = load i32, ptr %149, align 4, !tbaa !22
  %151 = mul nsw i32 %148, %150
  %152 = shl i32 %151, %28
  store i32 %152, ptr %126, align 4, !tbaa !22
  %153 = add nuw nsw i64 %125, 1
  %154 = icmp eq i64 %153, 4
  br i1 %154, label %155, label %124, !llvm.loop !81

155:                                              ; preds = %124
  %156 = add nuw nsw i64 %118, 1
  %157 = icmp eq i64 %156, 4
  br i1 %157, label %158, label %117, !llvm.loop !82

158:                                              ; preds = %155, %114
  call void @inverse4x4(ptr noundef %47, ptr noundef %43, i32 noundef %3, i32 noundef %2) #9
  %159 = add nsw i32 %2, 1
  %160 = sext i32 %159 to i64
  %161 = add nsw i32 %2, 2
  %162 = sext i32 %161 to i64
  %163 = add nsw i32 %2, 3
  %164 = sext i32 %163 to i64
  %165 = add nsw i32 %3, 3
  %166 = sext i32 %165 to i64
  br label %167

167:                                              ; preds = %158, %167
  %168 = phi i64 [ %55, %158 ], [ %197, %167 ]
  %169 = getelementptr inbounds ptr, ptr %43, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !17
  %171 = getelementptr inbounds i32, ptr %170, i64 %53
  %172 = load i32, ptr %171, align 4, !tbaa !22
  %173 = call fastcc i32 @rshift_rnd_sf(i32 noundef %172, i32 noundef 6) #10
  %174 = call fastcc i32 @iClip1(i32 noundef %49, i32 noundef %173) #10
  %175 = trunc i32 %174 to i16
  %176 = getelementptr inbounds ptr, ptr %39, i64 %168
  %177 = load ptr, ptr %176, align 8, !tbaa !17
  %178 = getelementptr inbounds i16, ptr %177, i64 %53
  store i16 %175, ptr %178, align 2, !tbaa !23
  %179 = getelementptr inbounds i32, ptr %170, i64 %160
  %180 = load i32, ptr %179, align 4, !tbaa !22
  %181 = call fastcc i32 @rshift_rnd_sf(i32 noundef %180, i32 noundef 6) #10
  %182 = call fastcc i32 @iClip1(i32 noundef %49, i32 noundef %181) #10
  %183 = trunc i32 %182 to i16
  %184 = getelementptr inbounds i16, ptr %177, i64 %160
  store i16 %183, ptr %184, align 2, !tbaa !23
  %185 = getelementptr inbounds i32, ptr %170, i64 %162
  %186 = load i32, ptr %185, align 4, !tbaa !22
  %187 = call fastcc i32 @rshift_rnd_sf(i32 noundef %186, i32 noundef 6) #10
  %188 = call fastcc i32 @iClip1(i32 noundef %49, i32 noundef %187) #10
  %189 = trunc i32 %188 to i16
  %190 = getelementptr inbounds i16, ptr %177, i64 %162
  store i16 %189, ptr %190, align 2, !tbaa !23
  %191 = getelementptr inbounds i32, ptr %170, i64 %164
  %192 = load i32, ptr %191, align 4, !tbaa !22
  %193 = call fastcc i32 @rshift_rnd_sf(i32 noundef %192, i32 noundef 6) #10
  %194 = call fastcc i32 @iClip1(i32 noundef %49, i32 noundef %193) #10
  %195 = trunc i32 %194 to i16
  %196 = getelementptr inbounds i16, ptr %177, i64 %164
  store i16 %195, ptr %196, align 2, !tbaa !23
  %197 = add nsw i64 %168, 1
  %198 = icmp slt i64 %168, %166
  br i1 %198, label %167, label %199, !llvm.loop !83

199:                                              ; preds = %167
  %200 = load ptr, ptr %5, align 8, !tbaa !17
  call void @free_mem2Dint(ptr noundef %200) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret void
}

; Function Attrs: optsize
declare void @forward4x4(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @rshift_rnd_sf(i32 noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = add nsw i32 %1, -1
  %4 = shl nuw i32 1, %3
  %5 = add nsw i32 %4, %0
  %6 = ashr i32 %5, %1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iabs(i32 noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @isignab(i32 noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = icmp slt i32 %1, 0
  %4 = tail call fastcc i32 @iabs(i32 noundef %0) #10
  %5 = sub nsw i32 0, %4
  %6 = select i1 %3, i32 %5, i32 %4
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @isign(i32 noundef %0) unnamed_addr #4 {
  %2 = ashr i32 %0, 31
  %3 = icmp ne i32 %0, 0
  %4 = zext i1 %3 to i32
  %5 = or i32 %2, %4
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @itrans_sp_cr(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i32], align 16
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %7 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 77
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = add nsw i32 %1, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !17
  %13 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 80
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  %15 = getelementptr inbounds ptr, ptr %14, i64 %10
  %16 = load ptr, ptr %15, align 8, !tbaa !17
  %17 = tail call ptr @new_mem2Dint(i32 noundef 16, i32 noundef 16) #9
  %18 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 132
  %19 = load ptr, ptr %18, align 8, !tbaa !70
  %20 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 29
  %21 = load i32, ptr %20, align 4, !tbaa !84
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = sext i32 %21 to i64
  br label %31

25:                                               ; preds = %2
  %26 = zext nneg i32 %21 to i64
  %27 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !85
  %29 = zext i8 %28 to i64
  %30 = zext i8 %28 to i64
  br label %31

31:                                               ; preds = %23, %25
  %32 = phi i64 [ %24, %23 ], [ %30, %25 ]
  %33 = phi i64 [ %24, %23 ], [ %29, %25 ]
  %34 = getelementptr inbounds i32, ptr %19, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !22
  %36 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 133
  %37 = load ptr, ptr %36, align 8, !tbaa !71
  %38 = getelementptr inbounds i32, ptr %37, i64 %32
  %39 = load i32, ptr %38, align 4, !tbaa !22
  %40 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 31
  %41 = load i32, ptr %40, align 4, !tbaa !75
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = sext i32 %41 to i64
  br label %51

45:                                               ; preds = %31
  %46 = zext nneg i32 %41 to i64
  %47 = getelementptr inbounds [52 x i8], ptr @QP_SCALE_CR, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !85
  %49 = zext i8 %48 to i64
  %50 = zext i8 %48 to i64
  br label %51

51:                                               ; preds = %43, %45
  %52 = phi i64 [ %44, %43 ], [ %50, %45 ]
  %53 = phi i64 [ %44, %43 ], [ %49, %45 ]
  %54 = getelementptr inbounds i32, ptr %19, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !22
  %56 = getelementptr inbounds i32, ptr %37, i64 %52
  %57 = load i32, ptr %56, align 4, !tbaa !22
  %58 = add nsw i32 %55, 15
  %59 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 33
  %60 = load i32, ptr %59, align 4, !tbaa !74
  %61 = icmp eq i32 %60, 4
  %62 = select i1 %61, i32 %57, i32 %39
  %63 = select i1 %61, i32 %55, i32 %35
  %64 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 78
  %65 = load i32, ptr %64, align 8, !tbaa !60
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %120

67:                                               ; preds = %51
  %68 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 77
  %69 = load i32, ptr %68, align 4, !tbaa !54
  br label %70

70:                                               ; preds = %67, %97
  %71 = phi i32 [ %65, %67 ], [ %98, %97 ]
  %72 = phi i32 [ %69, %67 ], [ %99, %97 ]
  %73 = phi i64 [ 0, %67 ], [ %100, %97 ]
  %74 = icmp sgt i32 %72, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %70
  %76 = getelementptr inbounds ptr, ptr %12, i64 %73
  %77 = load ptr, ptr %76, align 8, !tbaa !17
  %78 = getelementptr inbounds ptr, ptr %17, i64 %73
  %79 = load ptr, ptr %78, align 8, !tbaa !17
  br label %85

80:                                               ; preds = %97
  %81 = icmp sgt i32 %98, 0
  br i1 %81, label %82, label %120

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 77
  %84 = load i32, ptr %83, align 4, !tbaa !54
  br label %103

85:                                               ; preds = %75, %85
  %86 = phi i64 [ 0, %75 ], [ %91, %85 ]
  %87 = getelementptr inbounds i16, ptr %77, i64 %86
  %88 = load i16, ptr %87, align 2, !tbaa !23
  %89 = zext i16 %88 to i32
  %90 = getelementptr inbounds i32, ptr %79, i64 %86
  store i32 %89, ptr %90, align 4, !tbaa !22
  store i16 0, ptr %87, align 2, !tbaa !23
  %91 = add nuw nsw i64 %86, 1
  %92 = load i32, ptr %68, align 4, !tbaa !54
  %93 = sext i32 %92 to i64
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %85, label %95, !llvm.loop !86

95:                                               ; preds = %85
  %96 = load i32, ptr %64, align 8, !tbaa !60
  br label %97

97:                                               ; preds = %95, %70
  %98 = phi i32 [ %96, %95 ], [ %71, %70 ]
  %99 = phi i32 [ %92, %95 ], [ %72, %70 ]
  %100 = add nuw nsw i64 %73, 1
  %101 = sext i32 %98 to i64
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %70, label %80, !llvm.loop !87

103:                                              ; preds = %82, %115
  %104 = phi i32 [ %98, %82 ], [ %116, %115 ]
  %105 = phi i32 [ %84, %82 ], [ %117, %115 ]
  %106 = phi i32 [ 0, %82 ], [ %118, %115 ]
  %107 = icmp sgt i32 %105, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %103, %108
  %109 = phi i32 [ %110, %108 ], [ 0, %103 ]
  tail call void @forward4x4(ptr noundef %17, ptr noundef %17, i32 noundef %106, i32 noundef %109) #9
  %110 = add nuw nsw i32 %109, 4
  %111 = load i32, ptr %83, align 4, !tbaa !54
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %108, label %113, !llvm.loop !88

113:                                              ; preds = %108
  %114 = load i32, ptr %64, align 8, !tbaa !60
  br label %115

115:                                              ; preds = %113, %103
  %116 = phi i32 [ %114, %113 ], [ %104, %103 ]
  %117 = phi i32 [ %111, %113 ], [ %105, %103 ]
  %118 = add nuw nsw i32 %106, 4
  %119 = icmp slt i32 %118, %116
  br i1 %119, label %103, label %120, !llvm.loop !89

120:                                              ; preds = %115, %51, %80
  %121 = phi i32 [ %98, %80 ], [ %65, %51 ], [ %116, %115 ]
  %122 = load ptr, ptr %17, align 8, !tbaa !17
  %123 = load i32, ptr %122, align 4, !tbaa !22
  %124 = getelementptr inbounds ptr, ptr %17, i64 4
  %125 = load ptr, ptr %124, align 8, !tbaa !17
  %126 = load i32, ptr %125, align 4, !tbaa !22
  %127 = add nsw i32 %126, %123
  %128 = getelementptr inbounds i32, ptr %122, i64 4
  %129 = load i32, ptr %128, align 4, !tbaa !22
  %130 = getelementptr inbounds i32, ptr %125, i64 4
  %131 = load i32, ptr %130, align 4, !tbaa !22
  %132 = add i32 %131, %129
  %133 = add i32 %132, %127
  store i32 %133, ptr %3, align 16, !tbaa !22
  %134 = add i32 %123, %129
  %135 = add i32 %126, %131
  %136 = sub i32 %134, %135
  %137 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 1
  store i32 %136, ptr %137, align 4, !tbaa !22
  %138 = sub i32 %127, %132
  %139 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 2
  store i32 %138, ptr %139, align 8, !tbaa !22
  %140 = add i32 %126, %129
  %141 = sub i32 %123, %140
  %142 = add nsw i32 %141, %131
  %143 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 3
  store i32 %142, ptr %143, align 4, !tbaa !22
  %144 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 48
  %145 = load i32, ptr %144, align 8, !tbaa !77
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %120
  %148 = load i32, ptr %59, align 4, !tbaa !74
  %149 = icmp eq i32 %148, 4
  br i1 %149, label %160, label %150

150:                                              ; preds = %147
  %151 = sext i32 %62 to i64
  %152 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %151
  %153 = load i32, ptr %152, align 16, !tbaa !22
  %154 = sext i32 %57 to i64
  %155 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %154
  %156 = load i32, ptr %155, align 16, !tbaa !22
  %157 = add nsw i32 %55, 16
  %158 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %154
  %159 = load i32, ptr %158, align 16, !tbaa !22
  br label %251

160:                                              ; preds = %147, %120
  %161 = sext i32 %57 to i64
  %162 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %161
  %163 = load i32, ptr %162, align 16, !tbaa !22
  %164 = add nsw i32 %55, 16
  %165 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %161
  %166 = load i32, ptr %165, align 16, !tbaa !22
  br label %167

167:                                              ; preds = %160, %196
  %168 = phi i1 [ true, %160 ], [ false, %196 ]
  %169 = phi i64 [ 0, %160 ], [ 1, %196 ]
  %170 = shl nuw nsw i64 %169, 1
  %171 = shl nuw nsw i64 %169, 2
  %172 = getelementptr inbounds ptr, ptr %16, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !17
  br label %180

174:                                              ; preds = %196
  %175 = icmp sgt i32 %121, 0
  br i1 %175, label %176, label %347

176:                                              ; preds = %174
  %177 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 77
  %178 = sext i32 %62 to i64
  %179 = load i32, ptr %177, align 4, !tbaa !54
  br label %197

180:                                              ; preds = %167, %180
  %181 = phi i1 [ true, %167 ], [ false, %180 ]
  %182 = phi i64 [ 0, %167 ], [ 1, %180 ]
  %183 = or disjoint i64 %182, %170
  %184 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !22
  %186 = tail call fastcc i32 @iabs(i32 noundef %185) #10
  %187 = mul nsw i32 %163, %186
  %188 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %187, i32 noundef %164) #10
  %189 = tail call fastcc i32 @isignab(i32 noundef %188, i32 noundef %185) #10
  %190 = shl nuw nsw i64 %182, 2
  %191 = getelementptr inbounds i32, ptr %173, i64 %190
  %192 = load i32, ptr %191, align 4, !tbaa !22
  %193 = add nsw i32 %192, %189
  %194 = mul nsw i32 %193, %166
  %195 = shl i32 %194, %55
  store i32 %195, ptr %184, align 4, !tbaa !22
  br i1 %181, label %180, label %196, !llvm.loop !90

196:                                              ; preds = %180
  br i1 %168, label %167, label %174, !llvm.loop !91

197:                                              ; preds = %176, %245
  %198 = phi i32 [ %121, %176 ], [ %246, %245 ]
  %199 = phi i32 [ %179, %176 ], [ %247, %245 ]
  %200 = phi i64 [ 0, %176 ], [ %248, %245 ]
  %201 = icmp sgt i32 %199, 0
  br i1 %201, label %202, label %245

202:                                              ; preds = %197, %238
  %203 = phi i64 [ %239, %238 ], [ 0, %197 ]
  br label %204

204:                                              ; preds = %202, %235
  %205 = phi i64 [ 0, %202 ], [ %236, %235 ]
  %206 = or disjoint i64 %205, %200
  %207 = getelementptr inbounds ptr, ptr %16, i64 %206
  %208 = load ptr, ptr %207, align 8, !tbaa !17
  %209 = getelementptr inbounds ptr, ptr %17, i64 %206
  %210 = load ptr, ptr %209, align 8, !tbaa !17
  br label %211

211:                                              ; preds = %204, %211
  %212 = phi i64 [ 0, %204 ], [ %233, %211 ]
  %213 = or disjoint i64 %212, %203
  %214 = getelementptr inbounds i32, ptr %208, i64 %213
  %215 = load i32, ptr %214, align 4, !tbaa !22
  %216 = ashr i32 %215, %63
  %217 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %178, i64 %205, i64 %212
  %218 = load i32, ptr %217, align 4, !tbaa !22
  %219 = sdiv i32 %216, %218
  store i32 %219, ptr %214, align 4, !tbaa !22
  %220 = getelementptr inbounds i32, ptr %210, i64 %213
  %221 = load i32, ptr %220, align 4, !tbaa !22
  %222 = tail call fastcc i32 @iabs(i32 noundef %221) #10
  %223 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %161, i64 %205, i64 %212
  %224 = load i32, ptr %223, align 4, !tbaa !22
  %225 = mul nsw i32 %224, %222
  %226 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %225, i32 noundef %58) #10
  %227 = tail call fastcc i32 @isignab(i32 noundef %226, i32 noundef %221) #10
  %228 = add nsw i32 %227, %219
  %229 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %161, i64 %205, i64 %212
  %230 = load i32, ptr %229, align 4, !tbaa !22
  %231 = mul nsw i32 %228, %230
  %232 = shl i32 %231, %55
  store i32 %232, ptr %214, align 4, !tbaa !22
  %233 = add nuw nsw i64 %212, 1
  %234 = icmp eq i64 %233, 4
  br i1 %234, label %235, label %211, !llvm.loop !92

235:                                              ; preds = %211
  %236 = add nuw nsw i64 %205, 1
  %237 = icmp eq i64 %236, 4
  br i1 %237, label %238, label %204, !llvm.loop !93

238:                                              ; preds = %235
  %239 = add nuw nsw i64 %203, 4
  %240 = load i32, ptr %177, align 4, !tbaa !54
  %241 = sext i32 %240 to i64
  %242 = icmp slt i64 %239, %241
  br i1 %242, label %202, label %243, !llvm.loop !94

243:                                              ; preds = %238
  %244 = load i32, ptr %64, align 8, !tbaa !60
  br label %245

245:                                              ; preds = %243, %197
  %246 = phi i32 [ %244, %243 ], [ %198, %197 ]
  %247 = phi i32 [ %240, %243 ], [ %199, %197 ]
  %248 = add nuw nsw i64 %200, 4
  %249 = sext i32 %246 to i64
  %250 = icmp slt i64 %248, %249
  br i1 %250, label %197, label %347, !llvm.loop !95

251:                                              ; preds = %150, %284
  %252 = phi i1 [ true, %150 ], [ false, %284 ]
  %253 = phi i64 [ 0, %150 ], [ 1, %284 ]
  %254 = shl nuw nsw i64 %253, 1
  %255 = shl nuw nsw i64 %253, 2
  %256 = getelementptr inbounds ptr, ptr %16, i64 %255
  %257 = load ptr, ptr %256, align 8, !tbaa !17
  br label %263

258:                                              ; preds = %284
  %259 = icmp sgt i32 %121, 0
  br i1 %259, label %260, label %347

260:                                              ; preds = %258
  %261 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 77
  %262 = load i32, ptr %261, align 4, !tbaa !54
  br label %285

263:                                              ; preds = %251, %263
  %264 = phi i1 [ true, %251 ], [ false, %263 ]
  %265 = phi i64 [ 0, %251 ], [ 1, %263 ]
  %266 = or disjoint i64 %265, %254
  %267 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %266
  %268 = load i32, ptr %267, align 4, !tbaa !22
  %269 = shl nuw nsw i64 %265, 2
  %270 = getelementptr inbounds i32, ptr %257, i64 %269
  %271 = load i32, ptr %270, align 4, !tbaa !22
  %272 = shl i32 %271, 4
  %273 = mul i32 %272, %153
  %274 = shl i32 %273, %63
  %275 = ashr i32 %274, 5
  %276 = add nsw i32 %275, %268
  %277 = tail call fastcc i32 @isign(i32 noundef %276) #10, !range !80
  %278 = tail call fastcc i32 @iabs(i32 noundef %276) #10
  %279 = mul nsw i32 %156, %278
  %280 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %279, i32 noundef %157) #10
  %281 = mul nsw i32 %280, %277
  %282 = mul nsw i32 %281, %159
  %283 = shl i32 %282, %55
  store i32 %283, ptr %267, align 4, !tbaa !22
  br i1 %264, label %263, label %284, !llvm.loop !96

284:                                              ; preds = %263
  br i1 %252, label %251, label %258, !llvm.loop !97

285:                                              ; preds = %260, %341
  %286 = phi i32 [ %121, %260 ], [ %342, %341 ]
  %287 = phi i32 [ %262, %260 ], [ %343, %341 ]
  %288 = phi i64 [ 0, %260 ], [ %344, %341 ]
  %289 = icmp sgt i32 %287, 0
  br i1 %289, label %290, label %341

290:                                              ; preds = %285, %334
  %291 = phi i64 [ %335, %334 ], [ 0, %285 ]
  br label %292

292:                                              ; preds = %290, %331
  %293 = phi i64 [ 0, %290 ], [ %332, %331 ]
  %294 = or disjoint i64 %293, %288
  %295 = getelementptr inbounds ptr, ptr %16, i64 %294
  %296 = load ptr, ptr %295, align 8, !tbaa !17
  %297 = getelementptr inbounds ptr, ptr %17, i64 %294
  %298 = load ptr, ptr %297, align 8, !tbaa !17
  br label %299

299:                                              ; preds = %292, %299
  %300 = phi i64 [ 0, %292 ], [ %329, %299 ]
  %301 = or disjoint i64 %300, %291
  %302 = getelementptr inbounds i32, ptr %296, i64 %301
  %303 = load i32, ptr %302, align 4, !tbaa !22
  %304 = ashr i32 %303, %63
  %305 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %151, i64 %293, i64 %300
  %306 = load i32, ptr %305, align 4, !tbaa !22
  %307 = getelementptr inbounds i32, ptr %298, i64 %301
  %308 = load i32, ptr %307, align 4, !tbaa !22
  %309 = freeze i32 %304
  %310 = srem i32 %309, %306
  %311 = sub nsw i32 %309, %310
  %312 = getelementptr inbounds [4 x [4 x i32]], ptr @A, i64 0, i64 %293, i64 %300
  %313 = load i32, ptr %312, align 4, !tbaa !22
  %314 = mul nsw i32 %311, %313
  %315 = shl i32 %314, %63
  %316 = ashr i32 %315, 6
  %317 = add nsw i32 %316, %308
  %318 = tail call fastcc i32 @isign(i32 noundef %317) #10, !range !80
  %319 = tail call fastcc i32 @iabs(i32 noundef %317) #10
  %320 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %154, i64 %293, i64 %300
  %321 = load i32, ptr %320, align 4, !tbaa !22
  %322 = mul nsw i32 %321, %319
  %323 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %322, i32 noundef %58) #10
  %324 = mul nsw i32 %323, %318
  %325 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %154, i64 %293, i64 %300
  %326 = load i32, ptr %325, align 4, !tbaa !22
  %327 = mul nsw i32 %324, %326
  %328 = shl i32 %327, %55
  store i32 %328, ptr %302, align 4, !tbaa !22
  %329 = add nuw nsw i64 %300, 1
  %330 = icmp eq i64 %329, 4
  br i1 %330, label %331, label %299, !llvm.loop !98

331:                                              ; preds = %299
  %332 = add nuw nsw i64 %293, 1
  %333 = icmp eq i64 %332, 4
  br i1 %333, label %334, label %292, !llvm.loop !99

334:                                              ; preds = %331
  %335 = add nuw nsw i64 %291, 4
  %336 = load i32, ptr %261, align 4, !tbaa !54
  %337 = sext i32 %336 to i64
  %338 = icmp slt i64 %335, %337
  br i1 %338, label %290, label %339, !llvm.loop !100

339:                                              ; preds = %334
  %340 = load i32, ptr %64, align 8, !tbaa !60
  br label %341

341:                                              ; preds = %339, %285
  %342 = phi i32 [ %340, %339 ], [ %286, %285 ]
  %343 = phi i32 [ %336, %339 ], [ %287, %285 ]
  %344 = add nuw nsw i64 %288, 4
  %345 = sext i32 %342 to i64
  %346 = icmp slt i64 %344, %345
  br i1 %346, label %285, label %347, !llvm.loop !101

347:                                              ; preds = %341, %245, %258, %174
  %348 = load i32, ptr %3, align 16, !tbaa !22
  %349 = load i32, ptr %137, align 4, !tbaa !22
  %350 = add nsw i32 %349, %348
  %351 = load i32, ptr %139, align 8, !tbaa !22
  %352 = load i32, ptr %143, align 4, !tbaa !22
  %353 = add i32 %352, %351
  %354 = add i32 %353, %350
  %355 = ashr i32 %354, 1
  %356 = load ptr, ptr %16, align 8, !tbaa !17
  store i32 %355, ptr %356, align 4, !tbaa !22
  %357 = sub i32 %350, %353
  %358 = ashr i32 %357, 1
  %359 = getelementptr inbounds i32, ptr %356, i64 4
  store i32 %358, ptr %359, align 4, !tbaa !22
  %360 = add i32 %348, %351
  %361 = add i32 %349, %352
  %362 = sub i32 %360, %361
  %363 = ashr i32 %362, 1
  %364 = getelementptr inbounds ptr, ptr %16, i64 4
  %365 = load ptr, ptr %364, align 8, !tbaa !17
  store i32 %363, ptr %365, align 4, !tbaa !22
  %366 = add i32 %349, %351
  %367 = sub i32 %348, %366
  %368 = add nsw i32 %367, %352
  %369 = ashr i32 %368, 1
  %370 = getelementptr inbounds i32, ptr %365, i64 4
  store i32 %369, ptr %370, align 4, !tbaa !22
  tail call void @free_mem2Dint(ptr noundef nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret void
}

; Function Attrs: optsize
declare ptr @new_mem2Dint(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @iMBtrans4x4(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 125
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 33
  %10 = load ptr, ptr %9, align 8, !tbaa !103
  %11 = add i32 %1, -1
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %10, i64 %12
  br label %16

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 32
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi ptr [ %13, %8 ], [ %15, %14 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !17
  %19 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %20 = load i32, ptr %19, align 4, !tbaa !106
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %24 = load i16, ptr %23, align 8, !tbaa !107
  %25 = icmp eq i16 %24, 10
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void @Inv_Residual_trans_16x16(ptr noundef nonnull %0, i32 noundef %1) #10
  br label %82

27:                                               ; preds = %22
  %28 = icmp eq i32 %2, 0
  br i1 %28, label %31, label %33

29:                                               ; preds = %16
  %30 = icmp eq i32 %2, 0
  br i1 %30, label %55, label %33

31:                                               ; preds = %27
  %32 = icmp eq i32 %20, 1
  br i1 %32, label %33, label %55

33:                                               ; preds = %31, %29, %27
  %34 = phi ptr [ @itrans_sp, %27 ], [ @itrans_sp, %29 ], [ @Inv_Residual_trans_4x4, %31 ]
  %35 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 56
  store ptr %34, ptr %35, align 8, !tbaa !108
  br label %40

36:                                               ; preds = %44
  %37 = add nuw nsw i64 %42, 4
  %38 = icmp ult i32 %43, 12
  %39 = add nuw nsw i64 %41, 4
  br i1 %38, label %40, label %82, !llvm.loop !109

40:                                               ; preds = %33, %36
  %41 = phi i64 [ 4, %33 ], [ %39, %36 ]
  %42 = phi i64 [ 0, %33 ], [ %37, %36 ]
  %43 = trunc i64 %42 to i32
  br label %44

44:                                               ; preds = %40, %44
  %45 = phi i64 [ %42, %40 ], [ %53, %44 ]
  %46 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !85
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 12
  %50 = shl nuw nsw i32 %48, 2
  %51 = and i32 %50, 12
  %52 = load ptr, ptr %35, align 8, !tbaa !108
  tail call void %52(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %51, i32 noundef %49) #9
  %53 = add nuw nsw i64 %45, 1
  %54 = icmp eq i64 %53, %41
  br i1 %54, label %36, label %44, !llvm.loop !110

55:                                               ; preds = %29, %31
  %56 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 80
  %57 = load ptr, ptr %56, align 8, !tbaa !18
  %58 = zext i32 %1 to i64
  %59 = getelementptr inbounds ptr, ptr %57, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !17
  %61 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 79
  %62 = load ptr, ptr %61, align 8, !tbaa !14
  %63 = getelementptr inbounds ptr, ptr %62, i64 %58
  %64 = load ptr, ptr %63, align 8, !tbaa !17
  br label %65

65:                                               ; preds = %55, %65
  %66 = phi i32 [ 0, %55 ], [ %67, %65 ]
  tail call void @inverse4x4(ptr noundef %60, ptr noundef %64, i32 noundef %66, i32 noundef 0) #9
  tail call void @inverse4x4(ptr noundef %60, ptr noundef %64, i32 noundef %66, i32 noundef 4) #9
  tail call void @inverse4x4(ptr noundef %60, ptr noundef %64, i32 noundef %66, i32 noundef 8) #9
  tail call void @inverse4x4(ptr noundef %60, ptr noundef %64, i32 noundef %66, i32 noundef 12) #9
  %67 = add nuw nsw i32 %66, 4
  %68 = icmp ult i32 %66, 12
  br i1 %68, label %65, label %69, !llvm.loop !111

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 78
  %71 = load ptr, ptr %70, align 8, !tbaa !19
  %72 = getelementptr inbounds ptr, ptr %71, i64 %58
  %73 = load ptr, ptr %72, align 8, !tbaa !17
  %74 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 77
  %75 = load ptr, ptr %74, align 8, !tbaa !20
  %76 = getelementptr inbounds ptr, ptr %75, i64 %58
  %77 = load ptr, ptr %76, align 8, !tbaa !17
  %78 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !21
  %80 = getelementptr inbounds %struct.video_par, ptr %79, i64 0, i32 70, i64 %58
  %81 = load i32, ptr %80, align 4, !tbaa !22
  tail call void @sample_reconstruct(ptr noundef %73, ptr noundef %77, ptr noundef %64, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16, i32 noundef %81, i32 noundef 6) #9
  br label %82

82:                                               ; preds = %36, %69, %26
  %83 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 9
  %84 = load i32, ptr %83, align 8, !tbaa !112
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds ptr, ptr %18, i64 %85
  %87 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 78
  %88 = load ptr, ptr %87, align 8, !tbaa !19
  %89 = zext i32 %1 to i64
  %90 = getelementptr inbounds ptr, ptr %88, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !17
  %92 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 8
  %93 = load i32, ptr %92, align 4, !tbaa !113
  tail call void @copy_image_data_16x16(ptr noundef %86, ptr noundef %91, i32 noundef %93, i32 noundef 0) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @copy_image_data_16x16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = sext i32 %2 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ 0, %4 ], [ %35, %7 ]
  %9 = phi ptr [ %0, %4 ], [ %29, %7 ]
  %10 = phi ptr [ %1, %4 ], [ %32, %7 ]
  %11 = getelementptr inbounds ptr, ptr %9, i64 1
  %12 = load ptr, ptr %9, align 8, !tbaa !17
  %13 = getelementptr inbounds i16, ptr %12, i64 %5
  %14 = getelementptr inbounds ptr, ptr %10, i64 1
  %15 = load ptr, ptr %10, align 8, !tbaa !17
  %16 = getelementptr inbounds i16, ptr %15, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %13, ptr noundef nonnull align 2 dereferenceable(32) %16, i64 32, i1 false)
  %17 = getelementptr inbounds ptr, ptr %9, i64 2
  %18 = load ptr, ptr %11, align 8, !tbaa !17
  %19 = getelementptr inbounds i16, ptr %18, i64 %5
  %20 = getelementptr inbounds ptr, ptr %10, i64 2
  %21 = load ptr, ptr %14, align 8, !tbaa !17
  %22 = getelementptr inbounds i16, ptr %21, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %19, ptr noundef nonnull align 2 dereferenceable(32) %22, i64 32, i1 false)
  %23 = getelementptr inbounds ptr, ptr %9, i64 3
  %24 = load ptr, ptr %17, align 8, !tbaa !17
  %25 = getelementptr inbounds i16, ptr %24, i64 %5
  %26 = getelementptr inbounds ptr, ptr %10, i64 3
  %27 = load ptr, ptr %20, align 8, !tbaa !17
  %28 = getelementptr inbounds i16, ptr %27, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %25, ptr noundef nonnull align 2 dereferenceable(32) %28, i64 32, i1 false)
  %29 = getelementptr inbounds ptr, ptr %9, i64 4
  %30 = load ptr, ptr %23, align 8, !tbaa !17
  %31 = getelementptr inbounds i16, ptr %30, i64 %5
  %32 = getelementptr inbounds ptr, ptr %10, i64 4
  %33 = load ptr, ptr %26, align 8, !tbaa !17
  %34 = getelementptr inbounds i16, ptr %33, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %31, ptr noundef nonnull align 2 dereferenceable(32) %34, i64 32, i1 false)
  %35 = add nuw nsw i32 %8, 4
  %36 = icmp ult i32 %8, 12
  br i1 %36, label %7, label %37, !llvm.loop !114

37:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @iMBtrans8x8(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 125
  %5 = load ptr, ptr %4, align 8, !tbaa !102
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.storable_picture, ptr %5, i64 0, i32 33
  %9 = load ptr, ptr %8, align 8, !tbaa !103
  %10 = add i32 %1, -1
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  br label %15

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.storable_picture, ptr %5, i64 0, i32 32
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %12, %7 ], [ %14, %13 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !17
  tail call void @itrans8x8(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0, i32 noundef 0) #9
  tail call void @itrans8x8(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 8, i32 noundef 0) #9
  tail call void @itrans8x8(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0, i32 noundef 8) #9
  tail call void @itrans8x8(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 8, i32 noundef 8) #9
  %18 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !112
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %17, i64 %20
  %22 = load ptr, ptr %0, align 8, !tbaa !6
  %23 = getelementptr inbounds %struct.slice, ptr %22, i64 0, i32 78
  %24 = load ptr, ptr %23, align 8, !tbaa !19
  %25 = zext i32 %1 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  %28 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 8
  %29 = load i32, ptr %28, align 4, !tbaa !113
  tail call void @copy_image_data_16x16(ptr noundef %21, ptr noundef %27, i32 noundef %29, i32 noundef 0) #10
  ret void
}

; Function Attrs: optsize
declare void @itrans8x8(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @iTransform(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  %7 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 125
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  %9 = add i32 %1, -1
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %11 = load i32, ptr %10, align 4, !tbaa !115
  %12 = and i32 %11, 15
  %13 = icmp eq i32 %2, 0
  %14 = or i32 %12, %2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 54
  %18 = load i32, ptr %17, align 4, !tbaa !116
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @iMBtrans4x4(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #10
  br label %45

21:                                               ; preds = %16
  tail call void @iMBtrans8x8(ptr noundef nonnull %0, i32 noundef %1) #10
  br label %45

22:                                               ; preds = %3
  %23 = icmp eq i32 %1, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 33
  %26 = load ptr, ptr %25, align 8, !tbaa !103
  %27 = sext i32 %9 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  br label %31

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 32
  br label %31

31:                                               ; preds = %29, %24
  %32 = phi ptr [ %28, %24 ], [ %30, %29 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !17
  %34 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 9
  %35 = load i32, ptr %34, align 8, !tbaa !112
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %33, i64 %36
  %38 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 77
  %39 = load ptr, ptr %38, align 8, !tbaa !20
  %40 = zext i32 %1 to i64
  %41 = getelementptr inbounds ptr, ptr %39, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !17
  %43 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 8
  %44 = load i32, ptr %43, align 4, !tbaa !113
  tail call void @copy_image_data_16x16(ptr noundef %37, ptr noundef %42, i32 noundef %44, i32 noundef 0) #10
  br label %45

45:                                               ; preds = %20, %21, %31
  %46 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 48
  %47 = load i32, ptr %46, align 4, !tbaa !117
  switch i32 %47, label %48 [
    i32 0, label %199
    i32 3, label %199
  ]

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 33
  %50 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 11
  %51 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 78
  %52 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %53 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 56
  %54 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 78
  %55 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 77
  %56 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 10
  %57 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 81, i64 1
  %58 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 81, i64 1, i64 1
  %59 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 75
  %60 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 77
  %61 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 79
  br label %62

62:                                               ; preds = %48, %192
  %63 = phi i64 [ 1, %48 ], [ %197, %192 ]
  %64 = load ptr, ptr %49, align 8, !tbaa !103
  %65 = add nsw i64 %63, -1
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !17
  %68 = load i32, ptr %50, align 8, !tbaa !118
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %67, i64 %69
  %71 = load ptr, ptr %51, align 8, !tbaa !19
  %72 = getelementptr inbounds ptr, ptr %71, i64 %63
  %73 = load ptr, ptr %72, align 8, !tbaa !17
  br i1 %13, label %74, label %160

74:                                               ; preds = %62
  %75 = load i32, ptr %10, align 4, !tbaa !115
  %76 = icmp ult i32 %75, 16
  br i1 %76, label %188, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr %52, align 4, !tbaa !106
  %79 = icmp eq i32 %78, 0
  %80 = load i32, ptr %59, align 4, !tbaa !119
  %81 = icmp sgt i32 %80, 0
  br i1 %79, label %85, label %82

82:                                               ; preds = %77
  br i1 %81, label %83, label %192

83:                                               ; preds = %82
  %84 = trunc i64 %63 to i32
  br label %130

85:                                               ; preds = %77
  br i1 %81, label %86, label %118

86:                                               ; preds = %85
  %87 = trunc i64 %63 to i32
  br label %88

88:                                               ; preds = %86, %88
  %89 = phi i64 [ 0, %86 ], [ %114, %88 ]
  %90 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 1, i64 %89
  %91 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 1, i64 %89
  %92 = getelementptr inbounds i8, ptr %90, i64 1
  %93 = load i8, ptr %90, align 4, !tbaa !85
  %94 = zext i8 %93 to i32
  %95 = getelementptr inbounds i8, ptr %91, i64 1
  %96 = load i8, ptr %91, align 4, !tbaa !85
  %97 = zext i8 %96 to i32
  tail call void @itrans4x4(ptr noundef nonnull %0, i32 noundef %87, i32 noundef %94, i32 noundef %97) #10
  %98 = getelementptr inbounds i8, ptr %90, i64 2
  %99 = load i8, ptr %92, align 1, !tbaa !85
  %100 = zext i8 %99 to i32
  %101 = getelementptr inbounds i8, ptr %91, i64 2
  %102 = load i8, ptr %95, align 1, !tbaa !85
  %103 = zext i8 %102 to i32
  tail call void @itrans4x4(ptr noundef nonnull %0, i32 noundef %87, i32 noundef %100, i32 noundef %103) #10
  %104 = getelementptr inbounds i8, ptr %90, i64 3
  %105 = load i8, ptr %98, align 2, !tbaa !85
  %106 = zext i8 %105 to i32
  %107 = getelementptr inbounds i8, ptr %91, i64 3
  %108 = load i8, ptr %101, align 2, !tbaa !85
  %109 = zext i8 %108 to i32
  tail call void @itrans4x4(ptr noundef nonnull %0, i32 noundef %87, i32 noundef %106, i32 noundef %109) #10
  %110 = load i8, ptr %104, align 1, !tbaa !85
  %111 = zext i8 %110 to i32
  %112 = load i8, ptr %107, align 1, !tbaa !85
  %113 = zext i8 %112 to i32
  tail call void @itrans4x4(ptr noundef nonnull %0, i32 noundef %87, i32 noundef %111, i32 noundef %113) #10
  %114 = add nuw nsw i64 %89, 1
  %115 = load i32, ptr %59, align 4, !tbaa !119
  %116 = sext i32 %115 to i64
  %117 = icmp slt i64 %114, %116
  br i1 %117, label %88, label %118, !llvm.loop !120

118:                                              ; preds = %88, %85
  %119 = load ptr, ptr %60, align 8, !tbaa !20
  %120 = getelementptr inbounds ptr, ptr %119, i64 %63
  %121 = load ptr, ptr %120, align 8, !tbaa !17
  %122 = load ptr, ptr %61, align 8, !tbaa !14
  %123 = getelementptr inbounds ptr, ptr %122, i64 %63
  %124 = load ptr, ptr %123, align 8, !tbaa !17
  %125 = load i32, ptr %57, align 4, !tbaa !22
  %126 = load i32, ptr %58, align 4, !tbaa !22
  %127 = load ptr, ptr %5, align 8, !tbaa !21
  %128 = getelementptr inbounds %struct.video_par, ptr %127, i64 0, i32 70, i64 %63
  %129 = load i32, ptr %128, align 4, !tbaa !22
  tail call void @sample_reconstruct(ptr noundef %73, ptr noundef %121, ptr noundef %124, i32 noundef 0, i32 noundef 0, i32 noundef %125, i32 noundef %126, i32 noundef %129, i32 noundef 6) #9
  br label %192

130:                                              ; preds = %83, %130
  %131 = phi i64 [ 0, %83 ], [ %156, %130 ]
  %132 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 1, i64 %131
  %133 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 1, i64 %131
  %134 = getelementptr inbounds i8, ptr %132, i64 1
  %135 = load i8, ptr %132, align 4, !tbaa !85
  %136 = zext i8 %135 to i32
  %137 = getelementptr inbounds i8, ptr %133, i64 1
  %138 = load i8, ptr %133, align 4, !tbaa !85
  %139 = zext i8 %138 to i32
  tail call void @itrans4x4_ls(ptr noundef nonnull %0, i32 noundef %84, i32 noundef %136, i32 noundef %139) #10
  %140 = getelementptr inbounds i8, ptr %132, i64 2
  %141 = load i8, ptr %134, align 1, !tbaa !85
  %142 = zext i8 %141 to i32
  %143 = getelementptr inbounds i8, ptr %133, i64 2
  %144 = load i8, ptr %137, align 1, !tbaa !85
  %145 = zext i8 %144 to i32
  tail call void @itrans4x4_ls(ptr noundef nonnull %0, i32 noundef %84, i32 noundef %142, i32 noundef %145) #10
  %146 = getelementptr inbounds i8, ptr %132, i64 3
  %147 = load i8, ptr %140, align 2, !tbaa !85
  %148 = zext i8 %147 to i32
  %149 = getelementptr inbounds i8, ptr %133, i64 3
  %150 = load i8, ptr %143, align 2, !tbaa !85
  %151 = zext i8 %150 to i32
  tail call void @itrans4x4_ls(ptr noundef nonnull %0, i32 noundef %84, i32 noundef %148, i32 noundef %151) #10
  %152 = load i8, ptr %146, align 1, !tbaa !85
  %153 = zext i8 %152 to i32
  %154 = load i8, ptr %149, align 1, !tbaa !85
  %155 = zext i8 %154 to i32
  tail call void @itrans4x4_ls(ptr noundef nonnull %0, i32 noundef %84, i32 noundef %153, i32 noundef %155) #10
  %156 = add nuw nsw i64 %131, 1
  %157 = load i32, ptr %59, align 4, !tbaa !119
  %158 = sext i32 %157 to i64
  %159 = icmp slt i64 %156, %158
  br i1 %159, label %130, label %192, !llvm.loop !121

160:                                              ; preds = %62
  %161 = load i32, ptr %52, align 4, !tbaa !106
  %162 = icmp eq i32 %161, 0
  %163 = select i1 %162, ptr @itrans4x4, ptr @itrans4x4_ls
  store ptr %163, ptr %53, align 8, !tbaa !108
  %164 = trunc i64 %65 to i32
  tail call void @itrans_sp_cr(ptr noundef nonnull %0, i32 noundef %164) #10
  %165 = load i32, ptr %54, align 8, !tbaa !60
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %192

167:                                              ; preds = %160
  %168 = load i32, ptr %55, align 4, !tbaa !54
  %169 = trunc i64 %63 to i32
  br label %170

170:                                              ; preds = %167, %183
  %171 = phi i32 [ %184, %183 ], [ %165, %167 ]
  %172 = phi i32 [ %185, %183 ], [ %168, %167 ]
  %173 = phi i32 [ %186, %183 ], [ 0, %167 ]
  %174 = icmp sgt i32 %172, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %170, %175
  %176 = phi i32 [ %178, %175 ], [ 0, %170 ]
  %177 = load ptr, ptr %53, align 8, !tbaa !108
  tail call void %177(ptr noundef nonnull %0, i32 noundef %169, i32 noundef %176, i32 noundef %173) #9
  %178 = add nuw nsw i32 %176, 4
  %179 = load i32, ptr %55, align 4, !tbaa !54
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %175, label %181, !llvm.loop !122

181:                                              ; preds = %175
  %182 = load i32, ptr %54, align 8, !tbaa !60
  br label %183

183:                                              ; preds = %181, %170
  %184 = phi i32 [ %182, %181 ], [ %171, %170 ]
  %185 = phi i32 [ %179, %181 ], [ %172, %170 ]
  %186 = add nuw nsw i32 %173, 4
  %187 = icmp slt i32 %186, %184
  br i1 %187, label %170, label %192, !llvm.loop !123

188:                                              ; preds = %74
  %189 = load ptr, ptr %60, align 8, !tbaa !20
  %190 = getelementptr inbounds ptr, ptr %189, i64 %63
  %191 = load ptr, ptr %190, align 8, !tbaa !17
  br label %192

192:                                              ; preds = %183, %130, %160, %118, %82, %188
  %193 = phi ptr [ %191, %188 ], [ %73, %82 ], [ %73, %118 ], [ %73, %160 ], [ %73, %130 ], [ %73, %183 ]
  %194 = load i32, ptr %56, align 4, !tbaa !124
  %195 = load i32, ptr %57, align 4, !tbaa !22
  %196 = load i32, ptr %58, align 4, !tbaa !22
  tail call void @copy_image_data(ptr noundef %70, ptr noundef %193, i32 noundef %194, i32 noundef 0, i32 noundef %195, i32 noundef %196) #10
  %197 = add nuw nsw i64 %63, 1
  %198 = icmp eq i64 %197, 3
  br i1 %198, label %199, label %62, !llvm.loop !125

199:                                              ; preds = %192, %45, %45
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
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
  %18 = load ptr, ptr %15, align 8, !tbaa !17
  %19 = getelementptr inbounds i16, ptr %18, i64 %9
  %20 = getelementptr inbounds ptr, ptr %16, i64 1
  %21 = load ptr, ptr %16, align 8, !tbaa !17
  %22 = getelementptr inbounds i16, ptr %21, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %19, ptr align 2 %22, i64 %12, i1 false)
  %23 = add nuw nsw i32 %14, 1
  %24 = icmp eq i32 %23, %5
  br i1 %24, label %25, label %13, !llvm.loop !126

25:                                               ; preds = %13, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @copy_image_data_8x8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = sext i32 %2 to i64
  %6 = sext i32 %3 to i64
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i1 [ true, %4 ], [ false, %7 ]
  %9 = phi ptr [ %0, %4 ], [ %29, %7 ]
  %10 = phi ptr [ %1, %4 ], [ %32, %7 ]
  %11 = getelementptr inbounds ptr, ptr %9, i64 1
  %12 = load ptr, ptr %9, align 8, !tbaa !17
  %13 = getelementptr inbounds i16, ptr %12, i64 %5
  %14 = getelementptr inbounds ptr, ptr %10, i64 1
  %15 = load ptr, ptr %10, align 8, !tbaa !17
  %16 = getelementptr inbounds i16, ptr %15, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %13, ptr noundef nonnull align 2 dereferenceable(16) %16, i64 16, i1 false)
  %17 = getelementptr inbounds ptr, ptr %9, i64 2
  %18 = load ptr, ptr %11, align 8, !tbaa !17
  %19 = getelementptr inbounds i16, ptr %18, i64 %5
  %20 = getelementptr inbounds ptr, ptr %10, i64 2
  %21 = load ptr, ptr %14, align 8, !tbaa !17
  %22 = getelementptr inbounds i16, ptr %21, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %19, ptr noundef nonnull align 2 dereferenceable(16) %22, i64 16, i1 false)
  %23 = getelementptr inbounds ptr, ptr %9, i64 3
  %24 = load ptr, ptr %17, align 8, !tbaa !17
  %25 = getelementptr inbounds i16, ptr %24, i64 %5
  %26 = getelementptr inbounds ptr, ptr %10, i64 3
  %27 = load ptr, ptr %20, align 8, !tbaa !17
  %28 = getelementptr inbounds i16, ptr %27, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %25, ptr noundef nonnull align 2 dereferenceable(16) %28, i64 16, i1 false)
  %29 = getelementptr inbounds ptr, ptr %9, i64 4
  %30 = load ptr, ptr %23, align 8, !tbaa !17
  %31 = getelementptr inbounds i16, ptr %30, i64 %5
  %32 = getelementptr inbounds ptr, ptr %10, i64 4
  %33 = load ptr, ptr %26, align 8, !tbaa !17
  %34 = getelementptr inbounds i16, ptr %33, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %31, ptr noundef nonnull align 2 dereferenceable(16) %34, i64 16, i1 false)
  br i1 %8, label %7, label %35, !llvm.loop !127

35:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @copy_image_data_4x4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
  %5 = getelementptr inbounds ptr, ptr %0, i64 1
  %6 = load ptr, ptr %0, align 8, !tbaa !17
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds i16, ptr %6, i64 %7
  %9 = getelementptr inbounds ptr, ptr %1, i64 1
  %10 = load ptr, ptr %1, align 8, !tbaa !17
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds i16, ptr %10, i64 %11
  %13 = load i64, ptr %12, align 2
  store i64 %13, ptr %8, align 2
  %14 = getelementptr inbounds ptr, ptr %0, i64 2
  %15 = load ptr, ptr %5, align 8, !tbaa !17
  %16 = getelementptr inbounds i16, ptr %15, i64 %7
  %17 = getelementptr inbounds ptr, ptr %1, i64 2
  %18 = load ptr, ptr %9, align 8, !tbaa !17
  %19 = getelementptr inbounds i16, ptr %18, i64 %11
  %20 = load i64, ptr %19, align 2
  store i64 %20, ptr %16, align 2
  %21 = getelementptr inbounds ptr, ptr %0, i64 3
  %22 = load ptr, ptr %14, align 8, !tbaa !17
  %23 = getelementptr inbounds i16, ptr %22, i64 %7
  %24 = getelementptr inbounds ptr, ptr %1, i64 3
  %25 = load ptr, ptr %17, align 8, !tbaa !17
  %26 = getelementptr inbounds i16, ptr %25, i64 %11
  %27 = load i64, ptr %26, align 2
  store i64 %27, ptr %23, align 2
  %28 = load ptr, ptr %21, align 8, !tbaa !17
  %29 = getelementptr inbounds i16, ptr %28, i64 %7
  %30 = load ptr, ptr %24, align 8, !tbaa !17
  %31 = getelementptr inbounds i16, ptr %30, i64 %11
  %32 = load i64, ptr %31, align 2
  store i64 %32, ptr %29, align 2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @CheckVertMV(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  %6 = load ptr, ptr %0, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 125
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  %9 = ashr i32 %1, 2
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %11 = load i32, ptr %10, align 8, !tbaa !128
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 17
  %15 = load i32, ptr %14, align 4, !tbaa !129
  %16 = ashr i32 %15, 1
  %17 = add nsw i32 %16, -1
  br label %21

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.storable_picture, ptr %8, i64 0, i32 21
  %20 = load i32, ptr %19, align 4, !tbaa !130
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %20, %18 ]
  %23 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 173
  %24 = load i32, ptr %23, align 4, !tbaa !131
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
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"macroblock", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !12, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !9, i64 72, !9, i64 80, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !13, i64 108, !9, i64 110, !9, i64 111, !13, i64 112, !13, i64 114, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !13, i64 152, !9, i64 154, !11, i64 284, !9, i64 288, !9, i64 312, !9, i64 336, !11, i64 360, !9, i64 364, !9, i64 368, !9, i64 372, !9, i64 373, !9, i64 374, !13, i64 376, !13, i64 378, !13, i64 380, !11, i64 384, !11, i64 388, !11, i64 392, !11, i64 396, !11, i64 400, !11, i64 404, !11, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !9, i64 472}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"", !13, i64 0, !13, i64 2}
!13 = !{!"short", !9, i64 0}
!14 = !{!15, !8, i64 1264}
!15 = !{!"slice", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !9, i64 88, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !13, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !9, i64 136, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !11, i64 168, !11, i64 172, !11, i64 176, !9, i64 180, !11, i64 184, !11, i64 188, !11, i64 192, !11, i64 196, !11, i64 200, !11, i64 204, !11, i64 208, !11, i64 212, !11, i64 216, !11, i64 220, !11, i64 224, !11, i64 228, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !8, i64 248, !9, i64 256, !9, i64 264, !8, i64 312, !8, i64 320, !8, i64 328, !9, i64 336, !9, i64 1104, !9, i64 1112, !9, i64 1128, !9, i64 1144, !9, i64 1160, !11, i64 1176, !11, i64 1180, !11, i64 1184, !16, i64 1188, !13, i64 1220, !13, i64 1222, !13, i64 1224, !11, i64 1228, !11, i64 1232, !11, i64 1236, !11, i64 1240, !8, i64 1248, !8, i64 1256, !8, i64 1264, !8, i64 1272, !8, i64 1280, !9, i64 1288, !8, i64 1352, !8, i64 1360, !8, i64 1368, !8, i64 1376, !8, i64 1384, !9, i64 1392, !9, i64 2544, !9, i64 3696, !9, i64 8304, !9, i64 12912, !9, i64 13008, !11, i64 13264, !11, i64 13268, !13, i64 13272, !13, i64 13274, !13, i64 13276, !13, i64 13278, !8, i64 13280, !8, i64 13288, !8, i64 13296, !13, i64 13304, !13, i64 13306, !11, i64 13308, !11, i64 13312, !8, i64 13320, !8, i64 13328, !11, i64 13336, !9, i64 13340, !8, i64 13408, !8, i64 13416, !8, i64 13424, !8, i64 13432, !8, i64 13440, !8, i64 13448, !8, i64 13456, !8, i64 13464, !8, i64 13472, !8, i64 13480, !8, i64 13488, !8, i64 13496, !11, i64 13504, !8, i64 13512, !8, i64 13520, !8, i64 13528, !8, i64 13536, !8, i64 13544, !9, i64 13552}
!16 = !{!"nalunitheadermvcext_tag", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28}
!17 = !{!8, !8, i64 0}
!18 = !{!15, !8, i64 1272}
!19 = !{!15, !8, i64 1256}
!20 = !{!15, !8, i64 1248}
!21 = !{!7, !8, i64 8}
!22 = !{!11, !11, i64 0}
!23 = !{!13, !13, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = distinct !{!26, !25}
!27 = !{!7, !9, i64 372}
!28 = distinct !{!28, !25}
!29 = distinct !{!29, !25}
!30 = distinct !{!30, !25}
!31 = distinct !{!31, !25}
!32 = distinct !{!32, !25}
!33 = distinct !{!33, !25}
!34 = distinct !{!34, !25}
!35 = distinct !{!35, !25, !36, !37}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = distinct !{!38, !25}
!39 = distinct !{!39, !25}
!40 = distinct !{!40, !25}
!41 = distinct !{!41, !25}
!42 = distinct !{!42, !25}
!43 = distinct !{!43, !25}
!44 = distinct !{!44, !25}
!45 = distinct !{!45, !25}
!46 = distinct !{!46, !25}
!47 = distinct !{!47, !25}
!48 = distinct !{!48, !25}
!49 = distinct !{!49, !25}
!50 = distinct !{!50, !25}
!51 = distinct !{!51, !25}
!52 = distinct !{!52, !25}
!53 = distinct !{!53, !25}
!54 = !{!55, !11, i64 849108}
!55 = !{!"video_par", !8, i64 0, !8, i64 8, !8, i64 16, !9, i64 24, !9, i64 132120, !8, i64 699416, !9, i64 699424, !11, i64 848672, !11, i64 848676, !11, i64 848680, !11, i64 848684, !8, i64 848688, !8, i64 848696, !8, i64 848704, !11, i64 848712, !11, i64 848716, !11, i64 848720, !11, i64 848724, !11, i64 848728, !8, i64 848736, !8, i64 848744, !9, i64 848752, !11, i64 848776, !11, i64 848780, !11, i64 848784, !11, i64 848788, !11, i64 848792, !8, i64 848800, !9, i64 848808, !8, i64 848832, !8, i64 848840, !9, i64 848848, !11, i64 848872, !11, i64 848876, !8, i64 848880, !8, i64 848888, !9, i64 848896, !11, i64 848920, !8, i64 848928, !8, i64 848936, !11, i64 848944, !11, i64 848948, !11, i64 848952, !11, i64 848956, !11, i64 848960, !11, i64 848964, !11, i64 848968, !11, i64 848972, !11, i64 848976, !11, i64 848980, !11, i64 848984, !11, i64 848988, !11, i64 848992, !11, i64 848996, !11, i64 849000, !11, i64 849004, !11, i64 849008, !11, i64 849012, !11, i64 849016, !11, i64 849020, !11, i64 849024, !11, i64 849028, !11, i64 849032, !11, i64 849036, !13, i64 849040, !13, i64 849042, !9, i64 849044, !11, i64 849052, !11, i64 849056, !9, i64 849060, !9, i64 849072, !11, i64 849084, !11, i64 849088, !11, i64 849092, !11, i64 849096, !11, i64 849100, !11, i64 849104, !11, i64 849108, !11, i64 849112, !11, i64 849116, !11, i64 849120, !9, i64 849124, !9, i64 849148, !9, i64 849172, !11, i64 849196, !11, i64 849200, !11, i64 849204, !11, i64 849208, !11, i64 849212, !11, i64 849216, !11, i64 849220, !11, i64 849224, !11, i64 849228, !11, i64 849232, !11, i64 849236, !11, i64 849240, !11, i64 849244, !11, i64 849248, !11, i64 849252, !11, i64 849256, !11, i64 849260, !11, i64 849264, !11, i64 849268, !11, i64 849272, !11, i64 849276, !11, i64 849280, !11, i64 849284, !8, i64 849288, !8, i64 849296, !56, i64 849304, !56, i64 849624, !56, i64 849944, !56, i64 850264, !56, i64 850584, !56, i64 850904, !56, i64 851224, !56, i64 851544, !11, i64 851864, !11, i64 851868, !11, i64 851872, !59, i64 851880, !11, i64 851888, !9, i64 851892, !11, i64 855988, !11, i64 855992, !11, i64 855996, !11, i64 856000, !11, i64 856004, !11, i64 856008, !11, i64 856012, !8, i64 856016, !8, i64 856024, !8, i64 856032, !8, i64 856040, !8, i64 856048, !9, i64 856056, !8, i64 856456, !9, i64 856464, !8, i64 856488, !8, i64 856496, !8, i64 856504, !11, i64 856512, !8, i64 856520, !9, i64 856528, !8, i64 856608, !8, i64 856616, !8, i64 856624, !8, i64 856632, !11, i64 856640, !11, i64 856644, !11, i64 856648, !8, i64 856656, !8, i64 856664, !9, i64 856672, !9, i64 856688, !8, i64 856704, !8, i64 856712, !11, i64 856720, !8, i64 856728, !8, i64 856736, !8, i64 856744, !8, i64 856752, !8, i64 856760, !8, i64 856768, !8, i64 856776, !8, i64 856784, !8, i64 856792, !8, i64 856800, !8, i64 856808, !8, i64 856816, !11, i64 856824, !8, i64 856832, !11, i64 856840, !11, i64 856844, !11, i64 856848, !11, i64 856852, !11, i64 856856, !11, i64 856860, !11, i64 856864, !8, i64 856872}
!56 = !{!"image_data", !57, i64 0, !9, i64 136, !9, i64 160, !9, i64 184, !9, i64 208, !9, i64 232, !9, i64 256, !9, i64 280, !9, i64 292, !9, i64 304}
!57 = !{!"frame_format", !11, i64 0, !11, i64 4, !58, i64 8, !9, i64 16, !9, i64 28, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !9, i64 72, !11, i64 84, !9, i64 88, !9, i64 100, !9, i64 112, !11, i64 124, !11, i64 128}
!58 = !{!"double", !9, i64 0}
!59 = !{!"long", !9, i64 0}
!60 = !{!55, !11, i64 849112}
!61 = !{!7, !9, i64 373}
!62 = distinct !{!62, !25}
!63 = distinct !{!63, !25}
!64 = distinct !{!64, !25}
!65 = distinct !{!65, !25}
!66 = distinct !{!66, !25}
!67 = distinct !{!67, !25}
!68 = distinct !{!68, !25}
!69 = !{!55, !11, i64 849280}
!70 = !{!55, !8, i64 856032}
!71 = !{!55, !8, i64 856040}
!72 = distinct !{!72, !25}
!73 = distinct !{!73, !25}
!74 = !{!15, !11, i64 164}
!75 = !{!15, !11, i64 156}
!76 = distinct !{!76, !25}
!77 = !{!15, !11, i64 224}
!78 = distinct !{!78, !25}
!79 = distinct !{!79, !25}
!80 = !{i32 -1, i32 2}
!81 = distinct !{!81, !25}
!82 = distinct !{!82, !25}
!83 = distinct !{!83, !25}
!84 = !{!15, !11, i64 148}
!85 = !{!9, !9, i64 0}
!86 = distinct !{!86, !25}
!87 = distinct !{!87, !25}
!88 = distinct !{!88, !25}
!89 = distinct !{!89, !25}
!90 = distinct !{!90, !25}
!91 = distinct !{!91, !25}
!92 = distinct !{!92, !25}
!93 = distinct !{!93, !25}
!94 = distinct !{!94, !25}
!95 = distinct !{!95, !25}
!96 = distinct !{!96, !25}
!97 = distinct !{!97, !25}
!98 = distinct !{!98, !25}
!99 = distinct !{!99, !25}
!100 = distinct !{!100, !25}
!101 = distinct !{!101, !25}
!102 = !{!15, !8, i64 13520}
!103 = !{!104, !8, i64 136}
!104 = !{!"storable_picture", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !9, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !13, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !9, i64 160, !105, i64 184, !9, i64 192, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !11, i64 248, !11, i64 252, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !11, i64 296, !9, i64 300, !11, i64 308, !8, i64 312, !11, i64 320, !11, i64 324, !11, i64 328, !11, i64 332, !8, i64 336, !11, i64 344, !11, i64 348, !11, i64 352, !11, i64 356, !11, i64 360, !11, i64 364, !11, i64 368, !8, i64 376, !11, i64 384, !11, i64 388, !9, i64 392, !9, i64 400}
!105 = !{!"pic_motion_params_old", !8, i64 0}
!106 = !{!7, !11, i64 92}
!107 = !{!7, !13, i64 152}
!108 = !{!7, !8, i64 432}
!109 = distinct !{!109, !25}
!110 = distinct !{!110, !25}
!111 = distinct !{!111, !25}
!112 = !{!7, !11, i64 48}
!113 = !{!7, !11, i64 44}
!114 = distinct !{!114, !25}
!115 = !{!7, !11, i64 284}
!116 = !{!7, !11, i64 420}
!117 = !{!104, !11, i64 268}
!118 = !{!7, !11, i64 56}
!119 = !{!55, !11, i64 849100}
!120 = distinct !{!120, !25}
!121 = distinct !{!121, !25}
!122 = distinct !{!122, !25}
!123 = distinct !{!123, !25}
!124 = !{!7, !11, i64 52}
!125 = distinct !{!125, !25}
!126 = distinct !{!126, !25}
!127 = distinct !{!127, !25}
!128 = !{!7, !11, i64 384}
!129 = !{!104, !11, i64 68}
!130 = !{!104, !11, i64 84}
!131 = !{!55, !11, i64 856844}
