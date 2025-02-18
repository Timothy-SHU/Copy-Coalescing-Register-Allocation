; ModuleID = 'ldecod_src/mb_prediction.c'
source_filename = "ldecod_src/mb_prediction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [3 x ptr], %struct.pic_motion_params_old, [3 x %struct.pic_motion_params_old], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, [2 x i8], [2 x ptr] }
%struct.pic_motion_params_old = type { ptr }
%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }
%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }
%struct.MotionVector = type { i16, i16 }

@decode_block_scan = internal unnamed_addr constant [16 x i8] c"\00\01\04\05\02\03\06\07\08\09\0C\0D\0A\0B\0E\0F", align 16
@.str = private unnamed_addr constant [67 x i8] c"temporal direct error: colocated block has ref that is unavailable\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_intra4x4(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 48
  %7 = load i32, ptr %6, align 4, !tbaa !42
  %8 = add nsw i32 %7, -1
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %10 = load i32, ptr %9, align 4, !tbaa !45
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, ptr @itrans4x4, ptr @Inv_Residual_trans_4x4
  %13 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 56
  store ptr %12, ptr %13, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %15 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %16 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 78
  %17 = zext i32 %1 to i64
  br label %18

18:                                               ; preds = %4, %51
  %19 = phi i64 [ 4, %4 ], [ %54, %51 ]
  %20 = phi i64 [ 0, %4 ], [ %53, %51 ]
  %21 = phi i32 [ 0, %4 ], [ %52, %51 ]
  br label %22

22:                                               ; preds = %18, %38
  %23 = phi i64 [ %20, %18 ], [ %49, %38 ]
  %24 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !47
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 3
  %28 = lshr i32 %26, 2
  %29 = and i32 %28, 3
  %30 = shl nuw nsw i32 %27, 2
  %31 = shl nuw nsw i32 %29, 2
  %32 = load i32, ptr %14, align 8, !tbaa !48
  %33 = add nsw i32 %27, %32
  %34 = load i32, ptr %15, align 4, !tbaa !49
  %35 = add nsw i32 %29, %34
  %36 = tail call i32 @intrapred(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %30, i32 noundef %31, i32 noundef %33, i32 noundef %35) #7
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %65, label %38

38:                                               ; preds = %22
  %39 = shl nsw i32 %33, 2
  %40 = shl nsw i32 %35, 2
  %41 = load ptr, ptr %13, align 8, !tbaa !46
  tail call void %41(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %30, i32 noundef %31) #7
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds ptr, ptr %2, i64 %42
  %44 = load ptr, ptr %16, align 8, !tbaa !50
  %45 = getelementptr inbounds ptr, ptr %44, i64 %17
  %46 = load ptr, ptr %45, align 8, !tbaa !53
  %47 = zext nneg i32 %31 to i64
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  tail call void @copy_image_data_4x4(ptr noundef %43, ptr noundef %48, i32 noundef %39, i32 noundef %30) #7
  %49 = add nuw nsw i64 %23, 1
  %50 = icmp eq i64 %49, %19
  br i1 %50, label %51, label %22, !llvm.loop !54

51:                                               ; preds = %38
  %52 = add nuw nsw i32 %21, 1
  %53 = add nuw nsw i64 %20, 4
  %54 = add nuw nsw i64 %19, 4
  %55 = icmp eq i32 %52, 4
  br i1 %55, label %56, label %18, !llvm.loop !57

56:                                               ; preds = %51
  %57 = load i32, ptr %6, align 4, !tbaa !42
  switch i32 %57, label %58 [
    i32 0, label %59
    i32 3, label %59
  ]

58:                                               ; preds = %56
  tail call void @intra_cr_decoding(ptr noundef nonnull %0, i32 noundef %8) #7
  br label %59

59:                                               ; preds = %56, %56, %58
  %60 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %61 = load i32, ptr %60, align 4, !tbaa !58
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 76
  store i32 0, ptr %64, align 8, !tbaa !59
  br label %65

65:                                               ; preds = %22, %59, %63
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @itrans4x4(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare void @Inv_Residual_trans_4x4(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @intrapred(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @copy_image_data_4x4(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @intra_cr_decoding(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_intra16x16(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 48
  %5 = load i32, ptr %4, align 4, !tbaa !42
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 36
  %7 = load i32, ptr %6, align 8, !tbaa !60
  %8 = tail call i32 @intrapred16x16(ptr noundef %0, i32 noundef %1, i32 noundef %7) #7
  %9 = load i32, ptr %6, align 8, !tbaa !60
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 39
  store i8 %10, ptr %11, align 4, !tbaa !61
  tail call void @iMBtrans4x4(ptr noundef %0, i32 noundef %1, i32 noundef 0) #7
  %12 = load i32, ptr %4, align 4, !tbaa !42
  switch i32 %12, label %13 [
    i32 0, label %15
    i32 3, label %15
  ]

13:                                               ; preds = %3
  %14 = add nsw i32 %5, -1
  tail call void @intra_cr_decoding(ptr noundef %0, i32 noundef %14) #7
  br label %15

15:                                               ; preds = %3, %3, %13
  %16 = load ptr, ptr %0, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 76
  store i32 0, ptr %17, align 8, !tbaa !59
  ret i32 1
}

declare i32 @intrapred16x16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @iMBtrans4x4(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_intra8x8(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 48
  %7 = load i32, ptr %6, align 4, !tbaa !42
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %9 = load i32, ptr %8, align 4, !tbaa !45
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, ptr @itrans8x8, ptr @Inv_Residual_trans_8x8
  %12 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 57
  store ptr %11, ptr %12, align 8, !tbaa !62
  %13 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 9
  %14 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 78
  %15 = zext i32 %1 to i64
  %16 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 8
  br label %17

17:                                               ; preds = %4, %17
  %18 = phi i32 [ 0, %4 ], [ %36, %17 ]
  %19 = shl nuw nsw i32 %18, 3
  %20 = and i32 %19, 8
  %21 = shl nuw nsw i32 %18, 2
  %22 = and i32 %21, 8
  %23 = tail call i32 @intrapred8x8(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %20, i32 noundef %22) #7
  %24 = load ptr, ptr %12, align 8, !tbaa !62
  tail call void %24(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %20, i32 noundef %22) #7
  %25 = load i32, ptr %13, align 8, !tbaa !63
  %26 = add nsw i32 %25, %22
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %2, i64 %27
  %29 = load ptr, ptr %14, align 8, !tbaa !50
  %30 = getelementptr inbounds ptr, ptr %29, i64 %15
  %31 = load ptr, ptr %30, align 8, !tbaa !53
  %32 = zext nneg i32 %22 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  %34 = load i32, ptr %16, align 4, !tbaa !64
  %35 = add nsw i32 %34, %20
  tail call void @copy_image_data_8x8(ptr noundef %28, ptr noundef %33, i32 noundef %35, i32 noundef %20) #7
  %36 = add nuw nsw i32 %18, 1
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %17, !llvm.loop !65

38:                                               ; preds = %17
  %39 = load i32, ptr %6, align 4, !tbaa !42
  switch i32 %39, label %40 [
    i32 0, label %42
    i32 3, label %42
  ]

40:                                               ; preds = %38
  %41 = add nsw i32 %7, -1
  tail call void @intra_cr_decoding(ptr noundef nonnull %0, i32 noundef %41) #7
  br label %42

42:                                               ; preds = %38, %38, %40
  %43 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %44 = load i32, ptr %43, align 4, !tbaa !58
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 76
  store i32 0, ptr %47, align 8, !tbaa !59
  br label %48

48:                                               ; preds = %46, %42
  ret i32 1
}

declare void @itrans8x8(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare void @Inv_Residual_trans_8x8(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @intrapred8x8(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @copy_image_data_8x8(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_skip(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %0)
  tail call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #7
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !63
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds ptr, ptr %2, i64 %10
  %12 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 77
  %13 = load ptr, ptr %12, align 8, !tbaa !67
  %14 = zext i32 %1 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 8
  %18 = load i32, ptr %17, align 4, !tbaa !64
  tail call void @copy_image_data_16x16(ptr noundef %11, ptr noundef %16, i32 noundef %18, i32 noundef 0) #7
  %19 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 48
  %20 = load i32, ptr %19, align 4, !tbaa !42
  switch i32 %20, label %21 [
    i32 0, label %50
    i32 3, label %50
  ]

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 33
  %23 = load ptr, ptr %22, align 8, !tbaa !68
  %24 = load ptr, ptr %23, align 8, !tbaa !53
  %25 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 11
  %26 = load i32, ptr %25, align 8, !tbaa !69
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %24, i64 %27
  %29 = load ptr, ptr %12, align 8, !tbaa !67
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !53
  %32 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 10
  %33 = load i32, ptr %32, align 4, !tbaa !70
  %34 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 81, i64 1
  %35 = load i32, ptr %34, align 4, !tbaa !71
  %36 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 81, i64 1, i64 1
  %37 = load i32, ptr %36, align 4, !tbaa !71
  tail call void @copy_image_data(ptr noundef %28, ptr noundef %31, i32 noundef %33, i32 noundef 0, i32 noundef %35, i32 noundef %37) #7
  %38 = load ptr, ptr %22, align 8, !tbaa !68
  %39 = getelementptr inbounds ptr, ptr %38, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !53
  %41 = load i32, ptr %25, align 8, !tbaa !69
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %40, i64 %42
  %44 = load ptr, ptr %12, align 8, !tbaa !67
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8, !tbaa !53
  %47 = load i32, ptr %32, align 4, !tbaa !70
  %48 = load i32, ptr %34, align 4, !tbaa !71
  %49 = load i32, ptr %36, align 4, !tbaa !71
  tail call void @copy_image_data(ptr noundef %43, ptr noundef %46, i32 noundef %47, i32 noundef 0, i32 noundef %48, i32 noundef %49) #7
  br label %50

50:                                               ; preds = %4, %4, %21
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_chroma_vector(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 25
  %6 = load i32, ptr %5, align 8, !tbaa !72
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %78

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 38
  %10 = load i32, ptr %9, align 8, !tbaa !73
  switch i32 %10, label %63 [
    i32 1, label %13
    i32 2, label %11
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 33
  br label %39

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 33
  br label %15

15:                                               ; preds = %13, %36
  %16 = phi i64 [ 0, %13 ], [ %37, %36 ]
  %17 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 55, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !47
  %19 = icmp sgt i8 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 56, i64 %16
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i64 [ 0, %20 ], [ %32, %22 ]
  %24 = load i32, ptr %14, align 4, !tbaa !74
  %25 = load ptr, ptr %21, align 8, !tbaa !53
  %26 = getelementptr inbounds ptr, ptr %25, i64 %23
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  %28 = load i32, ptr %27, align 8, !tbaa !80
  %29 = icmp eq i32 %24, %28
  %30 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 129, i64 %16, i64 %23
  %31 = select i1 %29, i8 0, i8 -2
  store i8 %31, ptr %30, align 1, !tbaa !47
  %32 = add nuw nsw i64 %23, 1
  %33 = load i8, ptr %17, align 1, !tbaa !47
  %34 = sext i8 %33 to i64
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %22, label %36, !llvm.loop !81

36:                                               ; preds = %22, %15
  %37 = add nuw nsw i64 %16, 1
  %38 = icmp eq i64 %16, 0
  br i1 %38, label %15, label %140, !llvm.loop !82

39:                                               ; preds = %11, %60
  %40 = phi i64 [ 0, %11 ], [ %61, %60 ]
  %41 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 55, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !47
  %43 = icmp sgt i8 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 56, i64 %40
  br label %46

46:                                               ; preds = %44, %46
  %47 = phi i64 [ 0, %44 ], [ %56, %46 ]
  %48 = load i32, ptr %12, align 4, !tbaa !74
  %49 = load ptr, ptr %45, align 8, !tbaa !53
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  %51 = load ptr, ptr %50, align 8, !tbaa !53
  %52 = load i32, ptr %51, align 8, !tbaa !80
  %53 = icmp eq i32 %48, %52
  %54 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 129, i64 %40, i64 %47
  %55 = select i1 %53, i8 0, i8 2
  store i8 %55, ptr %54, align 1, !tbaa !47
  %56 = add nuw nsw i64 %47, 1
  %57 = load i8, ptr %41, align 1, !tbaa !47
  %58 = sext i8 %57 to i64
  %59 = icmp slt i64 %56, %58
  br i1 %59, label %46, label %60, !llvm.loop !83

60:                                               ; preds = %46, %39
  %61 = add nuw nsw i64 %40, 1
  %62 = icmp eq i64 %40, 0
  br i1 %62, label %39, label %140, !llvm.loop !84

63:                                               ; preds = %8, %75
  %64 = phi i64 [ %76, %75 ], [ 0, %8 ]
  %65 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 55, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !47
  %67 = icmp sgt i8 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63, %68
  %69 = phi i64 [ %71, %68 ], [ 0, %63 ]
  %70 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 129, i64 %64, i64 %69
  store i8 0, ptr %70, align 1, !tbaa !47
  %71 = add nuw nsw i64 %69, 1
  %72 = load i8, ptr %65, align 1, !tbaa !47
  %73 = sext i8 %72 to i64
  %74 = icmp slt i64 %71, %73
  br i1 %74, label %68, label %75, !llvm.loop !85

75:                                               ; preds = %68, %63
  %76 = add nuw nsw i64 %64, 1
  %77 = icmp eq i64 %64, 0
  br i1 %77, label %63, label %140, !llvm.loop !86

78:                                               ; preds = %1
  %79 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %80 = load i32, ptr %79, align 8, !tbaa !87
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %125, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %84 = load i32, ptr %83, align 8, !tbaa !88
  %85 = and i32 %84, 1
  %86 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %87 = load i16, ptr %86, align 2, !tbaa !89
  %88 = sext i16 %87 to i64
  %89 = icmp eq i32 %85, 0
  %90 = sext i16 %87 to i64
  %91 = add nsw i64 %88, 1
  br label %92

92:                                               ; preds = %82, %122
  %93 = phi i64 [ %90, %82 ], [ %123, %122 ]
  %94 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 55, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !47
  %96 = icmp sgt i8 %95, 0
  br i1 %96, label %97, label %122

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 56, i64 %93
  %99 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 56, i64 %93
  br label %100

100:                                              ; preds = %97, %115
  %101 = phi i64 [ 0, %97 ], [ %118, %115 ]
  br i1 %89, label %102, label %108

102:                                              ; preds = %100
  %103 = load ptr, ptr %99, align 8, !tbaa !53
  %104 = getelementptr inbounds ptr, ptr %103, i64 %101
  %105 = load ptr, ptr %104, align 8, !tbaa !53
  %106 = load i32, ptr %105, align 8, !tbaa !80
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %115, label %114

108:                                              ; preds = %100
  %109 = load ptr, ptr %98, align 8, !tbaa !53
  %110 = getelementptr inbounds ptr, ptr %109, i64 %101
  %111 = load ptr, ptr %110, align 8, !tbaa !53
  %112 = load i32, ptr %111, align 8, !tbaa !80
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %115, label %114

114:                                              ; preds = %102, %108
  br label %115

115:                                              ; preds = %108, %102, %114
  %116 = phi i8 [ 0, %114 ], [ -2, %102 ], [ 2, %108 ]
  %117 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 129, i64 %93, i64 %101
  store i8 %116, ptr %117, align 1, !tbaa !47
  %118 = add nuw nsw i64 %101, 1
  %119 = load i8, ptr %94, align 1, !tbaa !47
  %120 = sext i8 %119 to i64
  %121 = icmp slt i64 %118, %120
  br i1 %121, label %100, label %122, !llvm.loop !90

122:                                              ; preds = %115, %92
  %123 = add nsw i64 %93, 1
  %124 = icmp eq i64 %93, %91
  br i1 %124, label %140, label %92, !llvm.loop !91

125:                                              ; preds = %78, %137
  %126 = phi i64 [ %138, %137 ], [ 0, %78 ]
  %127 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 55, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !47
  %129 = icmp sgt i8 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %125, %130
  %131 = phi i64 [ %133, %130 ], [ 0, %125 ]
  %132 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 129, i64 %126, i64 %131
  store i8 0, ptr %132, align 1, !tbaa !47
  %133 = add nuw nsw i64 %131, 1
  %134 = load i8, ptr %127, align 1, !tbaa !47
  %135 = sext i8 %134 to i64
  %136 = icmp slt i64 %133, %135
  br i1 %136, label %130, label %137, !llvm.loop !92

137:                                              ; preds = %130, %125
  %138 = add nuw nsw i64 %126, 1
  %139 = icmp eq i64 %126, 0
  br i1 %139, label %125, label %140, !llvm.loop !93

140:                                              ; preds = %122, %137, %60, %36, %75
  %141 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 38
  %142 = load i32, ptr %141, align 8, !tbaa !73
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %146 = load i32, ptr %145, align 8, !tbaa !87
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %144, %140
  %149 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 89
  %150 = load i32, ptr %149, align 8, !tbaa !94
  %151 = ashr i32 %150, 1
  br label %155

152:                                              ; preds = %144
  %153 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 89
  %154 = load i32, ptr %153, align 8, !tbaa !94
  br label %155

155:                                              ; preds = %152, %148
  %156 = phi i32 [ %151, %148 ], [ %154, %152 ]
  %157 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 109
  store i32 %156, ptr %157, align 8, !tbaa !95
  ret void
}

declare void @perform_mc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @copy_image_data_16x16(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @copy_image_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_sp_skip(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @set_chroma_vector(ptr noundef %0)
  tail call void @perform_mc(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #7
  tail call void @iTransform(ptr noundef %0, i32 noundef %1, i32 noundef 1) #7
  ret i32 1
}

declare void @iTransform(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_p_inter8x8(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 22
  %8 = load i32, ptr %7, align 8, !tbaa !96
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %12 = load i32, ptr %11, align 8, !tbaa !97
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %10, %3
  %16 = phi i32 [ 0, %3 ], [ %14, %10 ]
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %0)
  br label %17

17:                                               ; preds = %15, %64
  %18 = phi i64 [ 0, %15 ], [ %65, %64 ]
  %19 = phi i64 [ 0, %15 ], [ %66, %64 ]
  %20 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %18
  %21 = load i8, ptr %20, align 1, !tbaa !47
  %22 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38, i64 %18
  %23 = load i8, ptr %22, align 1, !tbaa !47
  %24 = sext i8 %23 to i32
  %25 = shl nuw nsw i64 %18, 2
  %26 = icmp eq i8 %21, 5
  %27 = select i1 %26, i32 2, i32 1
  %28 = icmp eq i8 %21, 4
  br i1 %28, label %29, label %33

29:                                               ; preds = %17
  %30 = trunc i64 %18 to i32
  %31 = shl nuw nsw i32 %30, 2
  %32 = or disjoint i32 %31, 1
  br label %41

33:                                               ; preds = %17
  %34 = icmp eq i8 %21, 7
  %35 = trunc i64 %25 to i32
  br i1 %34, label %36, label %38

36:                                               ; preds = %33
  %37 = add i32 %35, 4
  br label %41

38:                                               ; preds = %33
  %39 = or disjoint i32 %35, 1
  %40 = add nuw nsw i32 %39, %27
  br label %41

41:                                               ; preds = %36, %38, %29
  %42 = phi i32 [ %32, %29 ], [ %37, %36 ], [ %40, %38 ]
  %43 = and i8 %21, -2
  %44 = icmp eq i8 %43, 4
  %45 = select i1 %44, i32 8, i32 4
  %46 = icmp eq i8 %21, 6
  %47 = or i1 %46, %28
  %48 = select i1 %47, i32 8, i32 4
  %49 = zext i32 %42 to i64
  %50 = icmp ult i64 %25, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %41
  %52 = zext nneg i32 %27 to i64
  br label %53

53:                                               ; preds = %51, %53
  %54 = phi i64 [ %19, %51 ], [ %61, %53 ]
  %55 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !47
  %57 = zext i8 %56 to i32
  %58 = and i32 %57, 3
  %59 = lshr i32 %57, 2
  %60 = and i32 %59, 3
  tail call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %24, i32 noundef %58, i32 noundef %60, i32 noundef %45, i32 noundef %48) #7
  %61 = add i64 %54, %52
  %62 = trunc i64 %61 to i32
  %63 = icmp sgt i32 %42, %62
  br i1 %63, label %53, label %64, !llvm.loop !98

64:                                               ; preds = %53, %41
  %65 = add nuw nsw i64 %18, 1
  %66 = add nuw nsw i64 %19, 4
  %67 = icmp eq i64 %65, 4
  br i1 %67, label %68, label %17, !llvm.loop !99

68:                                               ; preds = %64
  tail call void @iTransform(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %16) #7
  %69 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %70 = load i32, ptr %69, align 4, !tbaa !58
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 76
  store i32 0, ptr %73, align 8, !tbaa !59
  br label %74

74:                                               ; preds = %72, %68
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_p_inter16x16(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 22
  %7 = load i32, ptr %6, align 8, !tbaa !96
  %8 = icmp eq i32 %7, 3
  %9 = zext i1 %8 to i32
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %0)
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  %12 = load i8, ptr %11, align 8, !tbaa !47
  %13 = sext i8 %12 to i32
  tail call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %13, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #7
  tail call void @iTransform(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %9) #7
  %14 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %15 = load i32, ptr %14, align 4, !tbaa !58
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 76
  store i32 0, ptr %18, align 8, !tbaa !59
  br label %19

19:                                               ; preds = %17, %3
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_p_inter16x8(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 22
  %7 = load i32, ptr %6, align 8, !tbaa !96
  %8 = icmp eq i32 %7, 3
  %9 = zext i1 %8 to i32
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %0)
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  %12 = load i8, ptr %11, align 8, !tbaa !47
  %13 = sext i8 %12 to i32
  tail call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %13, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 8) #7
  %14 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38, i64 2
  %15 = load i8, ptr %14, align 2, !tbaa !47
  %16 = sext i8 %15 to i32
  tail call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %16, i32 noundef 0, i32 noundef 2, i32 noundef 16, i32 noundef 8) #7
  tail call void @iTransform(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %9) #7
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %18 = load i32, ptr %17, align 4, !tbaa !58
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 76
  store i32 0, ptr %21, align 8, !tbaa !59
  br label %22

22:                                               ; preds = %20, %3
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_p_inter8x16(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 22
  %7 = load i32, ptr %6, align 8, !tbaa !96
  %8 = icmp eq i32 %7, 3
  %9 = zext i1 %8 to i32
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %0)
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  %12 = load i8, ptr %11, align 8, !tbaa !47
  %13 = sext i8 %12 to i32
  tail call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %13, i32 noundef 0, i32 noundef 0, i32 noundef 8, i32 noundef 16) #7
  %14 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !47
  %16 = sext i8 %15 to i32
  tail call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %16, i32 noundef 2, i32 noundef 0, i32 noundef 8, i32 noundef 16) #7
  tail call void @iTransform(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %9) #7
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %18 = load i32, ptr %17, align 4, !tbaa !58
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 76
  store i32 0, ptr %21, align 8, !tbaa !59
  br label %22

22:                                               ; preds = %20, %3
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_b_d8x8temporal(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %9 = load i16, ptr %8, align 2, !tbaa !89
  %10 = sext i16 %9 to i64
  %11 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 56, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = add nsw i64 %10, 1
  %14 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 56, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %0)
  %16 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %18 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %19 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 35
  %20 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 25
  %21 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %22 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 56, i64 1
  %23 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %24 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 1
  %25 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 56, i64 5
  %26 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 56, i64 3
  %27 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 2
  %28 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 2
  %29 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 2
  %30 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 36
  %31 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 56, i64 1
  %32 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 1
  %33 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 36
  %34 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 38
  %35 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %36 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 36
  %37 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 27
  %38 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 55, i64 %10
  %39 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 27
  %40 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 55, i64 %10
  %41 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %42 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 36
  %43 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %44 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 36
  br label %45

45:                                               ; preds = %4, %451
  %46 = phi i64 [ 0, %4 ], [ %458, %451 ]
  %47 = phi i64 [ 4, %4 ], [ %460, %451 ]
  %48 = phi i64 [ 0, %4 ], [ %459, %451 ]
  %49 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38, i64 %46
  %50 = load i8, ptr %49, align 1, !tbaa !47
  %51 = sext i8 %50 to i32
  br label %52

52:                                               ; preds = %45, %437
  %53 = phi i64 [ %48, %45 ], [ %449, %437 ]
  %54 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !47
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 3
  %58 = lshr i32 %56, 2
  %59 = and i32 %58, 3
  %60 = load i32, ptr %16, align 8, !tbaa !48
  %61 = add nsw i32 %57, %60
  %62 = load i32, ptr %17, align 4, !tbaa !49
  %63 = add nsw i32 %59, %62
  %64 = load i32, ptr %18, align 8, !tbaa !100
  %65 = add nsw i32 %64, %59
  %66 = load ptr, ptr %19, align 8, !tbaa !101
  %67 = sext i32 %63 to i64
  %68 = getelementptr inbounds ptr, ptr %66, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !53
  %70 = sext i32 %61 to i64
  %71 = getelementptr inbounds %struct.pic_motion_params, ptr %69, i64 %70
  %72 = load ptr, ptr %15, align 8, !tbaa !53
  %73 = getelementptr inbounds %struct.storable_picture, ptr %72, i64 0, i32 35
  %74 = load ptr, ptr %73, align 8, !tbaa !101
  %75 = and i32 %65, -2
  %76 = lshr i32 %65, 1
  %77 = and i32 %76, 1
  %78 = or disjoint i32 %77, %75
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds ptr, ptr %74, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !53
  %82 = and i32 %61, -2
  %83 = lshr i32 %61, 1
  %84 = and i32 %83, 1
  %85 = or disjoint i32 %84, %82
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.pic_motion_params, ptr %81, i64 %86
  %88 = load i32, ptr %20, align 8, !tbaa !72
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %151, label %90

90:                                               ; preds = %52
  %91 = load i32, ptr %21, align 8, !tbaa !87
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %250

93:                                               ; preds = %90
  %94 = load ptr, ptr %22, align 8, !tbaa !53
  %95 = load ptr, ptr %94, align 8, !tbaa !53
  %96 = getelementptr inbounds %struct.storable_picture, ptr %95, i64 0, i32 73
  %97 = load i32, ptr %96, align 4, !tbaa !102
  switch i32 %97, label %250 [
    i32 3, label %98
    i32 1, label %108
  ]

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.storable_picture, ptr %95, i64 0, i32 37
  %100 = load ptr, ptr %99, align 8, !tbaa !103
  %101 = load i32, ptr %23, align 8, !tbaa !88
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, ptr %100, i64 %102
  %104 = load i8, ptr %103, align 1, !tbaa !47
  %105 = icmp ne i8 %104, 0
  %106 = icmp eq i32 %97, 1
  %107 = or i1 %106, %105
  br i1 %107, label %108, label %250

108:                                              ; preds = %93, %98
  %109 = load i32, ptr %24, align 4, !tbaa !104
  %110 = load ptr, ptr %25, align 8, !tbaa !53
  %111 = load ptr, ptr %110, align 8, !tbaa !53
  %112 = getelementptr inbounds %struct.storable_picture, ptr %111, i64 0, i32 1
  %113 = load i32, ptr %112, align 4, !tbaa !104
  %114 = sub nsw i32 %109, %113
  %115 = tail call i32 @llvm.abs.i32(i32 %114, i1 true)
  %116 = load ptr, ptr %26, align 8, !tbaa !53
  %117 = load ptr, ptr %116, align 8, !tbaa !53
  %118 = getelementptr inbounds %struct.storable_picture, ptr %117, i64 0, i32 1
  %119 = load i32, ptr %118, align 4, !tbaa !104
  %120 = sub nsw i32 %109, %119
  %121 = tail call i32 @llvm.abs.i32(i32 %120, i1 true)
  %122 = icmp ugt i32 %115, %121
  %123 = ashr i32 %65, 1
  %124 = sext i32 %123 to i64
  br i1 %122, label %125, label %138

125:                                              ; preds = %108
  %126 = load ptr, ptr %28, align 8, !tbaa !105
  %127 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %126, i64 0, i32 32
  %128 = load i32, ptr %127, align 4, !tbaa !106
  %129 = icmp eq i32 %128, 0
  %130 = getelementptr inbounds %struct.storable_picture, ptr %117, i64 0, i32 35
  %131 = load ptr, ptr %130, align 8, !tbaa !101
  %132 = getelementptr inbounds ptr, ptr %131, i64 %124
  %133 = load ptr, ptr %132, align 8, !tbaa !53
  br i1 %129, label %136, label %134

134:                                              ; preds = %125
  %135 = getelementptr inbounds %struct.pic_motion_params, ptr %133, i64 %86
  br label %250

136:                                              ; preds = %125
  %137 = getelementptr inbounds %struct.pic_motion_params, ptr %133, i64 %70
  br label %250

138:                                              ; preds = %108
  %139 = load ptr, ptr %27, align 8, !tbaa !105
  %140 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %139, i64 0, i32 32
  %141 = load i32, ptr %140, align 4, !tbaa !106
  %142 = icmp eq i32 %141, 0
  %143 = getelementptr inbounds %struct.storable_picture, ptr %111, i64 0, i32 35
  %144 = load ptr, ptr %143, align 8, !tbaa !101
  %145 = getelementptr inbounds ptr, ptr %144, i64 %124
  %146 = load ptr, ptr %145, align 8, !tbaa !53
  br i1 %142, label %149, label %147

147:                                              ; preds = %138
  %148 = getelementptr inbounds %struct.pic_motion_params, ptr %146, i64 %86
  br label %250

149:                                              ; preds = %138
  %150 = getelementptr inbounds %struct.pic_motion_params, ptr %146, i64 %70
  br label %250

151:                                              ; preds = %52
  %152 = load ptr, ptr %29, align 8, !tbaa !105
  %153 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %152, i64 0, i32 30
  %154 = load i32, ptr %153, align 4, !tbaa !110
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %250

156:                                              ; preds = %151
  %157 = load i32, ptr %30, align 8, !tbaa !111
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %203

159:                                              ; preds = %156
  %160 = load ptr, ptr %31, align 8, !tbaa !53
  %161 = load ptr, ptr %160, align 8, !tbaa !53
  %162 = getelementptr inbounds %struct.storable_picture, ptr %161, i64 0, i32 73
  %163 = load i32, ptr %162, align 4, !tbaa !102
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %203, label %165

165:                                              ; preds = %159
  %166 = load i32, ptr %32, align 4, !tbaa !104
  %167 = getelementptr inbounds %struct.storable_picture, ptr %72, i64 0, i32 41
  %168 = load ptr, ptr %167, align 8, !tbaa !112
  %169 = getelementptr inbounds %struct.storable_picture, ptr %168, i64 0, i32 1
  %170 = load i32, ptr %169, align 4, !tbaa !104
  %171 = sub nsw i32 %166, %170
  %172 = tail call i32 @llvm.abs.i32(i32 %171, i1 true)
  %173 = getelementptr inbounds %struct.storable_picture, ptr %72, i64 0, i32 40
  %174 = load ptr, ptr %173, align 8, !tbaa !113
  %175 = getelementptr inbounds %struct.storable_picture, ptr %174, i64 0, i32 1
  %176 = load i32, ptr %175, align 4, !tbaa !104
  %177 = sub nsw i32 %166, %176
  %178 = tail call i32 @llvm.abs.i32(i32 %177, i1 true)
  %179 = icmp ugt i32 %172, %178
  %180 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %152, i64 0, i32 32
  %181 = load i32, ptr %180, align 4, !tbaa !106
  %182 = icmp eq i32 %181, 0
  %183 = ashr i32 %65, 1
  %184 = sext i32 %183 to i64
  br i1 %179, label %185, label %194

185:                                              ; preds = %165
  %186 = getelementptr inbounds %struct.storable_picture, ptr %174, i64 0, i32 35
  %187 = load ptr, ptr %186, align 8, !tbaa !101
  %188 = getelementptr inbounds ptr, ptr %187, i64 %184
  %189 = load ptr, ptr %188, align 8, !tbaa !53
  br i1 %182, label %192, label %190

190:                                              ; preds = %185
  %191 = getelementptr inbounds %struct.pic_motion_params, ptr %189, i64 %86
  br label %250

192:                                              ; preds = %185
  %193 = getelementptr inbounds %struct.pic_motion_params, ptr %189, i64 %70
  br label %250

194:                                              ; preds = %165
  %195 = getelementptr inbounds %struct.storable_picture, ptr %168, i64 0, i32 35
  %196 = load ptr, ptr %195, align 8, !tbaa !101
  %197 = getelementptr inbounds ptr, ptr %196, i64 %184
  %198 = load ptr, ptr %197, align 8, !tbaa !53
  br i1 %182, label %201, label %199

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.pic_motion_params, ptr %198, i64 %86
  br label %250

201:                                              ; preds = %194
  %202 = getelementptr inbounds %struct.pic_motion_params, ptr %198, i64 %70
  br label %250

203:                                              ; preds = %159, %156
  br i1 %155, label %204, label %250

204:                                              ; preds = %203
  %205 = load i32, ptr %33, align 8, !tbaa !111
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %250, label %207

207:                                              ; preds = %204
  %208 = load i32, ptr %34, align 8, !tbaa !73
  %209 = load i32, ptr %72, align 8, !tbaa !80
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %250, label %211

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.storable_picture, ptr %72, i64 0, i32 24
  %213 = load i32, ptr %212, align 8, !tbaa !114
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %250, label %215

215:                                              ; preds = %211
  %216 = icmp eq i32 %208, 1
  %217 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %152, i64 0, i32 32
  %218 = load i32, ptr %217, align 4, !tbaa !106
  %219 = icmp eq i32 %218, 0
  %220 = getelementptr inbounds %struct.storable_picture, ptr %72, i64 0, i32 42
  %221 = load ptr, ptr %220, align 8, !tbaa !115
  br i1 %216, label %222, label %236

222:                                              ; preds = %215
  %223 = getelementptr inbounds %struct.storable_picture, ptr %221, i64 0, i32 40
  %224 = load ptr, ptr %223, align 8, !tbaa !113
  %225 = getelementptr inbounds %struct.storable_picture, ptr %224, i64 0, i32 35
  %226 = load ptr, ptr %225, align 8, !tbaa !101
  br i1 %219, label %231, label %227

227:                                              ; preds = %222
  %228 = getelementptr inbounds ptr, ptr %226, i64 %79
  %229 = load ptr, ptr %228, align 8, !tbaa !53
  %230 = getelementptr inbounds %struct.pic_motion_params, ptr %229, i64 %86
  br label %250

231:                                              ; preds = %222
  %232 = sext i32 %65 to i64
  %233 = getelementptr inbounds ptr, ptr %226, i64 %232
  %234 = load ptr, ptr %233, align 8, !tbaa !53
  %235 = getelementptr inbounds %struct.pic_motion_params, ptr %234, i64 %70
  br label %250

236:                                              ; preds = %215
  %237 = getelementptr inbounds %struct.storable_picture, ptr %221, i64 0, i32 41
  %238 = load ptr, ptr %237, align 8, !tbaa !112
  %239 = getelementptr inbounds %struct.storable_picture, ptr %238, i64 0, i32 35
  %240 = load ptr, ptr %239, align 8, !tbaa !101
  br i1 %219, label %245, label %241

241:                                              ; preds = %236
  %242 = getelementptr inbounds ptr, ptr %240, i64 %79
  %243 = load ptr, ptr %242, align 8, !tbaa !53
  %244 = getelementptr inbounds %struct.pic_motion_params, ptr %243, i64 %86
  br label %250

245:                                              ; preds = %236
  %246 = sext i32 %65 to i64
  %247 = getelementptr inbounds ptr, ptr %240, i64 %246
  %248 = load ptr, ptr %247, align 8, !tbaa !53
  %249 = getelementptr inbounds %struct.pic_motion_params, ptr %248, i64 %70
  br label %250

250:                                              ; preds = %151, %98, %93, %241, %245, %227, %231, %199, %201, %190, %192, %147, %149, %134, %136, %211, %207, %204, %203, %90
  %251 = phi ptr [ %87, %90 ], [ %87, %203 ], [ %87, %211 ], [ %87, %207 ], [ %87, %204 ], [ %135, %134 ], [ %137, %136 ], [ %148, %147 ], [ %150, %149 ], [ %191, %190 ], [ %193, %192 ], [ %200, %199 ], [ %202, %201 ], [ %230, %227 ], [ %235, %231 ], [ %244, %241 ], [ %249, %245 ], [ %87, %93 ], [ %87, %98 ], [ %87, %151 ]
  %252 = getelementptr inbounds %struct.pic_motion_params, ptr %251, i64 0, i32 2
  %253 = load i8, ptr %252, align 8, !tbaa !47
  %254 = icmp eq i8 %253, -1
  %255 = zext i1 %254 to i64
  %256 = getelementptr inbounds %struct.pic_motion_params, ptr %251, i64 0, i32 2, i64 %255
  %257 = load i8, ptr %256, align 1, !tbaa !47
  %258 = icmp eq i8 %257, -1
  br i1 %258, label %259, label %261

259:                                              ; preds = %250
  %260 = getelementptr inbounds %struct.pic_motion_params, ptr %69, i64 %70, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %260, i8 0, i64 10, i1 false)
  br label %437

261:                                              ; preds = %250
  br i1 %89, label %277, label %262

262:                                              ; preds = %261
  %263 = load i32, ptr %35, align 8, !tbaa !87
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %271, label %265

265:                                              ; preds = %262
  %266 = getelementptr inbounds [2 x ptr], ptr %251, i64 0, i64 %255
  %267 = load ptr, ptr %266, align 8, !tbaa !53
  %268 = load i32, ptr %267, align 8, !tbaa !80
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %291, label %270

270:                                              ; preds = %265
  br i1 %264, label %271, label %276

271:                                              ; preds = %262, %270
  %272 = getelementptr inbounds [2 x ptr], ptr %251, i64 0, i64 %255
  %273 = load ptr, ptr %272, align 8, !tbaa !53
  %274 = load i32, ptr %273, align 8, !tbaa !80
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %291

276:                                              ; preds = %271, %270
  br i1 %89, label %277, label %320

277:                                              ; preds = %261, %276
  %278 = load i32, ptr %36, align 8, !tbaa !111
  switch i32 %278, label %320 [
    i32 0, label %279
    i32 1, label %286
  ]

279:                                              ; preds = %277
  %280 = getelementptr inbounds [2 x ptr], ptr %251, i64 0, i64 %255
  %281 = load ptr, ptr %280, align 8, !tbaa !53
  %282 = load i32, ptr %281, align 8, !tbaa !80
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %279
  %285 = icmp eq i32 %278, 1
  br i1 %285, label %286, label %320

286:                                              ; preds = %277, %284
  %287 = getelementptr inbounds [2 x ptr], ptr %251, i64 0, i64 %255
  %288 = load ptr, ptr %287, align 8, !tbaa !53
  %289 = load i32, ptr %288, align 8, !tbaa !80
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %320

291:                                              ; preds = %286, %279, %271, %265
  %292 = load i32, ptr %37, align 8, !tbaa !71
  %293 = load i8, ptr %38, align 1, !tbaa !47
  %294 = sext i8 %293 to i32
  %295 = tail call i32 @llvm.smin.i32(i32 %292, i32 %294)
  %296 = icmp sgt i32 %295, 0
  br i1 %296, label %297, label %347

297:                                              ; preds = %291
  %298 = load ptr, ptr %11, align 8, !tbaa !53
  %299 = getelementptr inbounds [2 x ptr], ptr %251, i64 0, i64 %255
  %300 = load ptr, ptr %299, align 8, !tbaa !53
  %301 = zext nneg i32 %295 to i64
  br label %302

302:                                              ; preds = %297, %317
  %303 = phi i64 [ 0, %297 ], [ %318, %317 ]
  %304 = getelementptr inbounds ptr, ptr %298, i64 %303
  %305 = load ptr, ptr %304, align 8, !tbaa !53
  %306 = getelementptr inbounds %struct.storable_picture, ptr %305, i64 0, i32 40
  %307 = load ptr, ptr %306, align 8, !tbaa !113
  %308 = icmp eq ptr %307, %300
  br i1 %308, label %341, label %309

309:                                              ; preds = %302
  %310 = getelementptr inbounds %struct.storable_picture, ptr %305, i64 0, i32 41
  %311 = load ptr, ptr %310, align 8, !tbaa !112
  %312 = icmp eq ptr %311, %300
  br i1 %312, label %343, label %313

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.storable_picture, ptr %305, i64 0, i32 42
  %315 = load ptr, ptr %314, align 8, !tbaa !115
  %316 = icmp eq ptr %315, %300
  br i1 %316, label %345, label %317

317:                                              ; preds = %313
  %318 = add nuw nsw i64 %303, 1
  %319 = icmp eq i64 %318, %301
  br i1 %319, label %347, label %302, !llvm.loop !116

320:                                              ; preds = %277, %286, %284, %276
  %321 = load i32, ptr %39, align 8, !tbaa !71
  %322 = load i8, ptr %40, align 1, !tbaa !47
  %323 = sext i8 %322 to i32
  %324 = tail call i32 @llvm.smin.i32(i32 %321, i32 %323)
  %325 = icmp sgt i32 %324, 0
  br i1 %325, label %326, label %347

326:                                              ; preds = %320
  %327 = load ptr, ptr %11, align 8, !tbaa !53
  %328 = getelementptr inbounds [2 x ptr], ptr %251, i64 0, i64 %255
  %329 = load ptr, ptr %328, align 8, !tbaa !53
  %330 = zext nneg i32 %324 to i64
  br label %331

331:                                              ; preds = %326, %336
  %332 = phi i64 [ 0, %326 ], [ %337, %336 ]
  %333 = getelementptr inbounds ptr, ptr %327, i64 %332
  %334 = load ptr, ptr %333, align 8, !tbaa !53
  %335 = icmp eq ptr %334, %329
  br i1 %335, label %339, label %336

336:                                              ; preds = %331
  %337 = add nuw nsw i64 %332, 1
  %338 = icmp eq i64 %337, %330
  br i1 %338, label %347, label %331, !llvm.loop !117

339:                                              ; preds = %331
  %340 = trunc i64 %332 to i32
  br label %347

341:                                              ; preds = %302
  %342 = trunc i64 %303 to i32
  br label %347

343:                                              ; preds = %309
  %344 = trunc i64 %303 to i32
  br label %347

345:                                              ; preds = %313
  %346 = trunc i64 %303 to i32
  br label %347

347:                                              ; preds = %341, %343, %345, %317, %339, %336, %291, %320
  %348 = phi i32 [ 0, %320 ], [ 0, %291 ], [ %340, %339 ], [ -135792468, %336 ], [ %342, %341 ], [ %344, %343 ], [ %346, %345 ], [ -135792468, %317 ]
  %349 = icmp eq i32 %348, -135792468
  br i1 %349, label %436, label %350

350:                                              ; preds = %347
  %351 = sext i32 %348 to i64
  %352 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 60, i64 %10, i64 %351
  %353 = load i32, ptr %352, align 4, !tbaa !71
  %354 = getelementptr inbounds %struct.pic_motion_params, ptr %251, i64 0, i32 1, i64 %255
  %355 = getelementptr inbounds %struct.pic_motion_params, ptr %251, i64 0, i32 1, i64 %255, i32 1
  %356 = load i16, ptr %355, align 2, !tbaa !118
  %357 = sext i16 %356 to i32
  br i1 %89, label %367, label %358

358:                                              ; preds = %350
  %359 = load i32, ptr %41, align 8, !tbaa !87
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %366

361:                                              ; preds = %358
  %362 = getelementptr inbounds [2 x ptr], ptr %251, i64 0, i64 %255
  %363 = load ptr, ptr %362, align 8, !tbaa !53
  %364 = load i32, ptr %363, align 8, !tbaa !80
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %375

366:                                              ; preds = %361, %358
  br i1 %89, label %367, label %378

367:                                              ; preds = %350, %366
  %368 = load i32, ptr %42, align 8, !tbaa !111
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %377

370:                                              ; preds = %367
  %371 = getelementptr inbounds [2 x ptr], ptr %251, i64 0, i64 %255
  %372 = load ptr, ptr %371, align 8, !tbaa !53
  %373 = load i32, ptr %372, align 8, !tbaa !80
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %377, label %375

375:                                              ; preds = %370, %361
  %376 = shl nsw i32 %357, 1
  br label %397

377:                                              ; preds = %370, %367
  br i1 %89, label %387, label %378

378:                                              ; preds = %366, %377
  %379 = load i32, ptr %43, align 8, !tbaa !87
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %386, label %381

381:                                              ; preds = %378
  %382 = getelementptr inbounds [2 x ptr], ptr %251, i64 0, i64 %255
  %383 = load ptr, ptr %382, align 8, !tbaa !53
  %384 = load i32, ptr %383, align 8, !tbaa !80
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %395, label %386

386:                                              ; preds = %381, %378
  br i1 %89, label %387, label %397

387:                                              ; preds = %377, %386
  %388 = load i32, ptr %44, align 8, !tbaa !111
  %389 = icmp eq i32 %388, 1
  br i1 %389, label %390, label %397

390:                                              ; preds = %387
  %391 = getelementptr inbounds [2 x ptr], ptr %251, i64 0, i64 %255
  %392 = load ptr, ptr %391, align 8, !tbaa !53
  %393 = load i32, ptr %392, align 8, !tbaa !80
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %395, label %397

395:                                              ; preds = %390, %381
  %396 = sdiv i32 %357, 2
  br label %397

397:                                              ; preds = %386, %387, %390, %395, %375
  %398 = phi i32 [ %396, %395 ], [ %357, %386 ], [ %357, %390 ], [ %357, %387 ], [ %376, %375 ]
  %399 = icmp eq i32 %353, 9999
  br i1 %399, label %407, label %400

400:                                              ; preds = %397
  %401 = load ptr, ptr %11, align 8, !tbaa !53
  %402 = getelementptr inbounds ptr, ptr %401, i64 %351
  %403 = load ptr, ptr %402, align 8, !tbaa !53
  %404 = getelementptr inbounds %struct.storable_picture, ptr %403, i64 0, i32 10
  %405 = load i8, ptr %404, align 8, !tbaa !119
  %406 = icmp eq i8 %405, 0
  br i1 %406, label %413, label %407

407:                                              ; preds = %400, %397
  %408 = load i16, ptr %354, align 4, !tbaa !120
  %409 = getelementptr inbounds %struct.pic_motion_params, ptr %69, i64 %70, i32 1
  store i16 %408, ptr %409, align 8, !tbaa !120
  %410 = trunc i32 %398 to i16
  %411 = getelementptr inbounds %struct.MotionVector, ptr %409, i64 0, i32 1
  store i16 %410, ptr %411, align 2, !tbaa !118
  %412 = getelementptr inbounds %struct.pic_motion_params, ptr %69, i64 %70, i32 1, i64 1
  store i32 0, ptr %412, align 4
  br label %432

413:                                              ; preds = %400
  %414 = load i16, ptr %354, align 4, !tbaa !120
  %415 = sext i16 %414 to i32
  %416 = mul nsw i32 %353, %415
  %417 = add nsw i32 %416, 128
  %418 = lshr i32 %417, 8
  %419 = trunc i32 %418 to i16
  %420 = getelementptr inbounds %struct.pic_motion_params, ptr %69, i64 %70, i32 1
  store i16 %419, ptr %420, align 8, !tbaa !120
  %421 = mul nsw i32 %398, %353
  %422 = add nsw i32 %421, 128
  %423 = lshr i32 %422, 8
  %424 = trunc i32 %423 to i16
  %425 = getelementptr inbounds %struct.MotionVector, ptr %420, i64 0, i32 1
  store i16 %424, ptr %425, align 2, !tbaa !118
  %426 = load i16, ptr %354, align 4, !tbaa !120
  %427 = sub i16 %419, %426
  %428 = getelementptr inbounds %struct.pic_motion_params, ptr %69, i64 %70, i32 1, i64 1
  store i16 %427, ptr %428, align 4, !tbaa !120
  %429 = sub i32 %423, %398
  %430 = trunc i32 %429 to i16
  %431 = getelementptr inbounds %struct.pic_motion_params, ptr %69, i64 %70, i32 1, i64 1, i32 1
  store i16 %430, ptr %431, align 2, !tbaa !118
  br label %432

432:                                              ; preds = %413, %407
  %433 = trunc i32 %348 to i8
  %434 = getelementptr inbounds %struct.pic_motion_params, ptr %69, i64 %70, i32 2
  store i8 %433, ptr %434, align 8, !tbaa !47
  %435 = getelementptr inbounds %struct.pic_motion_params, ptr %69, i64 %70, i32 2, i64 1
  store i8 0, ptr %435, align 1, !tbaa !47
  br label %437

436:                                              ; preds = %347
  tail call void @error(ptr noundef nonnull @.str, i32 noundef -1111) #7
  br label %437

437:                                              ; preds = %432, %436, %259
  %438 = getelementptr inbounds %struct.pic_motion_params, ptr %69, i64 %70, i32 2
  %439 = load i8, ptr %438, align 8, !tbaa !47
  %440 = sext i8 %439 to i64
  %441 = getelementptr inbounds ptr, ptr %12, i64 %440
  %442 = load ptr, ptr %441, align 8, !tbaa !53
  store ptr %442, ptr %71, align 8, !tbaa !53
  %443 = getelementptr inbounds %struct.pic_motion_params, ptr %69, i64 %70, i32 2, i64 1
  %444 = load i8, ptr %443, align 1, !tbaa !47
  %445 = sext i8 %444 to i64
  %446 = getelementptr inbounds ptr, ptr %15, i64 %445
  %447 = load ptr, ptr %446, align 8, !tbaa !53
  %448 = getelementptr inbounds [2 x ptr], ptr %71, i64 0, i64 1
  store ptr %447, ptr %448, align 8, !tbaa !53
  %449 = add nuw nsw i64 %53, 1
  %450 = icmp eq i64 %449, %47
  br i1 %450, label %451, label %52, !llvm.loop !121

451:                                              ; preds = %437
  %452 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %48
  %453 = load i8, ptr %452, align 4, !tbaa !47
  %454 = zext i8 %453 to i32
  %455 = and i32 %454, 3
  %456 = lshr i32 %454, 2
  %457 = and i32 %456, 3
  tail call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3, i32 noundef %51, i32 noundef %455, i32 noundef %457, i32 noundef 8, i32 noundef 8) #7
  %458 = add nuw nsw i64 %46, 1
  %459 = add nuw nsw i64 %48, 4
  %460 = add nuw nsw i64 %47, 4
  %461 = icmp eq i64 %458, 4
  br i1 %461, label %462, label %45, !llvm.loop !122

462:                                              ; preds = %451
  %463 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %464 = load i32, ptr %463, align 4, !tbaa !58
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %466, label %509

466:                                              ; preds = %462
  %467 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 9
  %468 = load i32, ptr %467, align 8, !tbaa !63
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds ptr, ptr %2, i64 %469
  %471 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 77
  %472 = load ptr, ptr %471, align 8, !tbaa !67
  %473 = zext i32 %1 to i64
  %474 = getelementptr inbounds ptr, ptr %472, i64 %473
  %475 = load ptr, ptr %474, align 8, !tbaa !53
  %476 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 8
  %477 = load i32, ptr %476, align 4, !tbaa !64
  tail call void @copy_image_data_16x16(ptr noundef %470, ptr noundef %475, i32 noundef %477, i32 noundef 0) #7
  %478 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 48
  %479 = load i32, ptr %478, align 4, !tbaa !42
  switch i32 %479, label %480 [
    i32 0, label %511
    i32 3, label %511
  ]

480:                                              ; preds = %466
  %481 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 33
  %482 = load ptr, ptr %481, align 8, !tbaa !68
  %483 = load ptr, ptr %482, align 8, !tbaa !53
  %484 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 11
  %485 = load i32, ptr %484, align 8, !tbaa !69
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds ptr, ptr %483, i64 %486
  %488 = load ptr, ptr %471, align 8, !tbaa !67
  %489 = getelementptr inbounds ptr, ptr %488, i64 1
  %490 = load ptr, ptr %489, align 8, !tbaa !53
  %491 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 10
  %492 = load i32, ptr %491, align 4, !tbaa !70
  %493 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 81, i64 1
  %494 = load i32, ptr %493, align 4, !tbaa !71
  %495 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 81, i64 1, i64 1
  %496 = load i32, ptr %495, align 4, !tbaa !71
  tail call void @copy_image_data(ptr noundef %487, ptr noundef %490, i32 noundef %492, i32 noundef 0, i32 noundef %494, i32 noundef %496) #7
  %497 = load ptr, ptr %481, align 8, !tbaa !68
  %498 = getelementptr inbounds ptr, ptr %497, i64 1
  %499 = load ptr, ptr %498, align 8, !tbaa !53
  %500 = load i32, ptr %484, align 8, !tbaa !69
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds ptr, ptr %499, i64 %501
  %503 = load ptr, ptr %471, align 8, !tbaa !67
  %504 = getelementptr inbounds ptr, ptr %503, i64 2
  %505 = load ptr, ptr %504, align 8, !tbaa !53
  %506 = load i32, ptr %491, align 4, !tbaa !70
  %507 = load i32, ptr %493, align 4, !tbaa !71
  %508 = load i32, ptr %495, align 4, !tbaa !71
  tail call void @copy_image_data(ptr noundef %502, ptr noundef %505, i32 noundef %506, i32 noundef 0, i32 noundef %507, i32 noundef %508) #7
  br label %511

509:                                              ; preds = %462
  tail call void @iTransform(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0) #7
  %510 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 76
  store i32 0, ptr %510, align 8, !tbaa !59
  br label %511

511:                                              ; preds = %466, %466, %480, %509
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_b_d4x4temporal(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %9 = load i16, ptr %8, align 2, !tbaa !89
  %10 = sext i16 %9 to i64
  %11 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 56, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = add nsw i64 %10, 1
  %14 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 56, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %0)
  %16 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %18 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %19 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 35
  %20 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 27
  %21 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 55, i64 %10
  br label %22

22:                                               ; preds = %4, %159
  %23 = phi i64 [ 0, %4 ], [ %160, %159 ]
  %24 = phi i64 [ 4, %4 ], [ %162, %159 ]
  %25 = phi i64 [ 0, %4 ], [ %161, %159 ]
  %26 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38, i64 %23
  %27 = load i8, ptr %26, align 1, !tbaa !47
  br label %28

28:                                               ; preds = %22, %133
  %29 = phi i64 [ %25, %22 ], [ %145, %133 ]
  %30 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !47
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 3
  %34 = lshr i32 %32, 2
  %35 = and i32 %34, 3
  %36 = load i32, ptr %16, align 8, !tbaa !48
  %37 = add nsw i32 %33, %36
  %38 = load i32, ptr %17, align 4, !tbaa !49
  %39 = add nsw i32 %35, %38
  %40 = load i32, ptr %18, align 8, !tbaa !100
  %41 = add nsw i32 %40, %35
  %42 = load ptr, ptr %19, align 8, !tbaa !101
  %43 = sext i32 %39 to i64
  %44 = getelementptr inbounds ptr, ptr %42, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !53
  %46 = sext i32 %37 to i64
  %47 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46
  %48 = load ptr, ptr %15, align 8, !tbaa !53
  %49 = getelementptr inbounds %struct.storable_picture, ptr %48, i64 0, i32 35
  %50 = load ptr, ptr %49, align 8, !tbaa !101
  %51 = sext i32 %41 to i64
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !53
  %54 = getelementptr inbounds %struct.pic_motion_params, ptr %53, i64 %46
  %55 = getelementptr inbounds %struct.pic_motion_params, ptr %53, i64 %46, i32 2
  %56 = load i8, ptr %55, align 8, !tbaa !47
  %57 = icmp eq i8 %56, -1
  %58 = zext i1 %57 to i64
  %59 = getelementptr inbounds %struct.pic_motion_params, ptr %53, i64 %46, i32 2, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !47
  %61 = icmp eq i8 %60, -1
  br i1 %61, label %73, label %62

62:                                               ; preds = %28
  %63 = load i32, ptr %20, align 8, !tbaa !71
  %64 = load i8, ptr %21, align 1, !tbaa !47
  %65 = sext i8 %64 to i32
  %66 = tail call i32 @llvm.smin.i32(i32 %63, i32 %65)
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %62
  %69 = load ptr, ptr %11, align 8, !tbaa !53
  %70 = getelementptr inbounds [2 x ptr], ptr %54, i64 0, i64 %58
  %71 = load ptr, ptr %70, align 8, !tbaa !53
  %72 = zext nneg i32 %66 to i64
  br label %75

73:                                               ; preds = %28
  %74 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %74, i8 0, i64 10, i1 false)
  br label %133

75:                                               ; preds = %68, %80
  %76 = phi i64 [ 0, %68 ], [ %81, %80 ]
  %77 = getelementptr inbounds ptr, ptr %69, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !53
  %79 = icmp eq ptr %78, %71
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = add nuw nsw i64 %76, 1
  %82 = icmp eq i64 %81, %72
  br i1 %82, label %85, label %75, !llvm.loop !123

83:                                               ; preds = %75
  %84 = trunc i64 %76 to i32
  br label %85

85:                                               ; preds = %83, %80, %62
  %86 = phi i32 [ 0, %62 ], [ %84, %83 ], [ -135792468, %80 ]
  %87 = icmp eq i32 %86, -135792468
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  tail call void @error(ptr noundef nonnull @.str, i32 noundef -1111) #7
  br label %133

89:                                               ; preds = %85
  %90 = sext i32 %86 to i64
  %91 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 60, i64 %10, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !71
  %93 = icmp eq i32 %92, 9999
  br i1 %93, label %101, label %94

94:                                               ; preds = %89
  %95 = load ptr, ptr %11, align 8, !tbaa !53
  %96 = getelementptr inbounds ptr, ptr %95, i64 %90
  %97 = load ptr, ptr %96, align 8, !tbaa !53
  %98 = getelementptr inbounds %struct.storable_picture, ptr %97, i64 0, i32 10
  %99 = load i8, ptr %98, align 8, !tbaa !119
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %94, %89
  %102 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1
  %103 = getelementptr inbounds %struct.pic_motion_params, ptr %53, i64 %46, i32 1, i64 %58
  %104 = load i32, ptr %103, align 4
  store i32 %104, ptr %102, align 8
  %105 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1, i64 1
  store i32 0, ptr %105, align 4
  br label %129

106:                                              ; preds = %94
  %107 = getelementptr inbounds %struct.pic_motion_params, ptr %53, i64 %46, i32 1, i64 %58
  %108 = load i16, ptr %107, align 4, !tbaa !120
  %109 = sext i16 %108 to i32
  %110 = mul nsw i32 %92, %109
  %111 = add nsw i32 %110, 128
  %112 = lshr i32 %111, 8
  %113 = trunc i32 %112 to i16
  %114 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1
  store i16 %113, ptr %114, align 8, !tbaa !120
  %115 = getelementptr inbounds %struct.pic_motion_params, ptr %53, i64 %46, i32 1, i64 %58, i32 1
  %116 = load i16, ptr %115, align 2, !tbaa !118
  %117 = sext i16 %116 to i32
  %118 = mul nsw i32 %92, %117
  %119 = add nsw i32 %118, 128
  %120 = lshr i32 %119, 8
  %121 = trunc i32 %120 to i16
  %122 = getelementptr inbounds %struct.MotionVector, ptr %114, i64 0, i32 1
  store i16 %121, ptr %122, align 2, !tbaa !118
  %123 = load i16, ptr %107, align 4, !tbaa !120
  %124 = sub i16 %113, %123
  %125 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1, i64 1
  store i16 %124, ptr %125, align 4, !tbaa !120
  %126 = load i16, ptr %115, align 2, !tbaa !118
  %127 = sub i16 %121, %126
  %128 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1, i64 1, i32 1
  store i16 %127, ptr %128, align 2, !tbaa !118
  br label %129

129:                                              ; preds = %106, %101
  %130 = trunc i32 %86 to i8
  %131 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 2
  store i8 %130, ptr %131, align 8, !tbaa !47
  %132 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 2, i64 1
  store i8 0, ptr %132, align 1, !tbaa !47
  br label %133

133:                                              ; preds = %88, %129, %73
  %134 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 2
  %135 = load i8, ptr %134, align 8, !tbaa !47
  %136 = sext i8 %135 to i64
  %137 = getelementptr inbounds ptr, ptr %12, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !53
  store ptr %138, ptr %47, align 8, !tbaa !53
  %139 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 2, i64 1
  %140 = load i8, ptr %139, align 1, !tbaa !47
  %141 = sext i8 %140 to i64
  %142 = getelementptr inbounds ptr, ptr %15, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !53
  %144 = getelementptr inbounds [2 x ptr], ptr %47, i64 0, i64 1
  store ptr %143, ptr %144, align 8, !tbaa !53
  %145 = add nuw nsw i64 %29, 1
  %146 = icmp eq i64 %145, %24
  br i1 %146, label %147, label %28, !llvm.loop !124

147:                                              ; preds = %133
  %148 = sext i8 %27 to i32
  br label %149

149:                                              ; preds = %147, %149
  %150 = phi i64 [ %25, %147 ], [ %157, %149 ]
  %151 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !47
  %153 = zext i8 %152 to i32
  %154 = and i32 %153, 3
  %155 = lshr i32 %153, 2
  %156 = and i32 %155, 3
  tail call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3, i32 noundef %148, i32 noundef %154, i32 noundef %156, i32 noundef 4, i32 noundef 4) #7
  %157 = add nuw nsw i64 %150, 1
  %158 = icmp eq i64 %157, %24
  br i1 %158, label %159, label %149, !llvm.loop !125

159:                                              ; preds = %149
  %160 = add nuw nsw i64 %23, 1
  %161 = add nuw nsw i64 %25, 4
  %162 = add nuw nsw i64 %24, 4
  %163 = icmp eq i64 %160, 4
  br i1 %163, label %164, label %22, !llvm.loop !126

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %166 = load i32, ptr %165, align 4, !tbaa !58
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %211

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 9
  %170 = load i32, ptr %169, align 8, !tbaa !63
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds ptr, ptr %2, i64 %171
  %173 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 77
  %174 = load ptr, ptr %173, align 8, !tbaa !67
  %175 = zext i32 %1 to i64
  %176 = getelementptr inbounds ptr, ptr %174, i64 %175
  %177 = load ptr, ptr %176, align 8, !tbaa !53
  %178 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 8
  %179 = load i32, ptr %178, align 4, !tbaa !64
  tail call void @copy_image_data_16x16(ptr noundef %172, ptr noundef %177, i32 noundef %179, i32 noundef 0) #7
  %180 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 48
  %181 = load i32, ptr %180, align 4, !tbaa !42
  switch i32 %181, label %182 [
    i32 0, label %213
    i32 3, label %213
  ]

182:                                              ; preds = %168
  %183 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 33
  %184 = load ptr, ptr %183, align 8, !tbaa !68
  %185 = load ptr, ptr %184, align 8, !tbaa !53
  %186 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 11
  %187 = load i32, ptr %186, align 8, !tbaa !69
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds ptr, ptr %185, i64 %188
  %190 = load ptr, ptr %173, align 8, !tbaa !67
  %191 = getelementptr inbounds ptr, ptr %190, i64 1
  %192 = load ptr, ptr %191, align 8, !tbaa !53
  %193 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 10
  %194 = load i32, ptr %193, align 4, !tbaa !70
  %195 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 81, i64 1
  %196 = load i32, ptr %195, align 4, !tbaa !71
  %197 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 81, i64 1, i64 1
  %198 = load i32, ptr %197, align 4, !tbaa !71
  tail call void @copy_image_data(ptr noundef %189, ptr noundef %192, i32 noundef %194, i32 noundef 0, i32 noundef %196, i32 noundef %198) #7
  %199 = load ptr, ptr %183, align 8, !tbaa !68
  %200 = getelementptr inbounds ptr, ptr %199, i64 1
  %201 = load ptr, ptr %200, align 8, !tbaa !53
  %202 = load i32, ptr %186, align 8, !tbaa !69
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds ptr, ptr %201, i64 %203
  %205 = load ptr, ptr %173, align 8, !tbaa !67
  %206 = getelementptr inbounds ptr, ptr %205, i64 2
  %207 = load ptr, ptr %206, align 8, !tbaa !53
  %208 = load i32, ptr %193, align 4, !tbaa !70
  %209 = load i32, ptr %195, align 4, !tbaa !71
  %210 = load i32, ptr %197, align 4, !tbaa !71
  tail call void @copy_image_data(ptr noundef %204, ptr noundef %207, i32 noundef %208, i32 noundef 0, i32 noundef %209, i32 noundef %210) #7
  br label %213

211:                                              ; preds = %164
  tail call void @iTransform(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0) #7
  %212 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 76
  store i32 0, ptr %212, align 8, !tbaa !59
  br label %213

213:                                              ; preds = %168, %168, %182, %211
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_b_d8x8spatial(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.MotionVector, align 4
  %8 = alloca %struct.MotionVector, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 -1, ptr %5, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #7
  store i8 -1, ptr %6, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 0, ptr %8, align 4
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !66
  %12 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %13 = load i16, ptr %12, align 2, !tbaa !89
  %14 = sext i16 %13 to i64
  %15 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 56, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = add nsw i64 %14, 1
  %18 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 56, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %0)
  call void @prepare_direct_params(ptr noundef nonnull %0, ptr noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %20 = load i8, ptr %5, align 1, !tbaa !47
  %21 = icmp eq i8 %20, 0
  %22 = load i8, ptr %6, align 1
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %25, label %140

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %27 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %28 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %29 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 35
  br label %30

30:                                               ; preds = %25, %125
  %31 = phi i64 [ 0, %25 ], [ %138, %125 ]
  %32 = shl nuw nsw i64 %31, 2
  %33 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %32
  %34 = load i8, ptr %33, align 4, !tbaa !47
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 3
  %37 = lshr i32 %35, 2
  %38 = and i32 %37, 3
  %39 = load i32, ptr %26, align 8, !tbaa !48
  %40 = add nsw i32 %36, %39
  %41 = load i32, ptr %27, align 4, !tbaa !49
  %42 = add nsw i32 %38, %41
  %43 = load ptr, ptr %19, align 8, !tbaa !53
  %44 = load i32, ptr %28, align 8, !tbaa !100
  %45 = add nsw i32 %44, %38
  %46 = call i32 @get_colocated_info_8x8(ptr noundef nonnull %0, ptr noundef %43, i32 noundef %40, i32 noundef %45) #7
  %47 = icmp eq i32 %46, 0
  %48 = load ptr, ptr %29, align 8, !tbaa !101
  %49 = sext i32 %42 to i64
  %50 = getelementptr inbounds ptr, ptr %48, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !53
  %52 = sext i32 %40 to i64
  %53 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52
  %54 = load i8, ptr %6, align 1, !tbaa !47
  %55 = icmp eq i8 %54, -1
  br i1 %55, label %56, label %72

56:                                               ; preds = %30
  br i1 %47, label %57, label %61

57:                                               ; preds = %56
  %58 = load ptr, ptr %16, align 8, !tbaa !53
  store ptr %58, ptr %53, align 8, !tbaa !53
  %59 = getelementptr inbounds [2 x ptr], ptr %53, i64 0, i64 1
  %60 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52, i32 2, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %59, i8 0, i64 17, i1 false)
  store i8 -1, ptr %60, align 1, !tbaa !47
  br label %125

61:                                               ; preds = %56
  %62 = load i8, ptr %5, align 1, !tbaa !47
  %63 = sext i8 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %16, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !53
  store ptr %65, ptr %53, align 8, !tbaa !53
  %66 = getelementptr inbounds [2 x ptr], ptr %53, i64 0, i64 1
  store ptr null, ptr %66, align 8, !tbaa !53
  %67 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52, i32 1
  %68 = load i32, ptr %7, align 4
  store i32 %68, ptr %67, align 8
  %69 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52, i32 1, i64 1
  store i32 0, ptr %69, align 4
  %70 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52, i32 2
  store i8 %62, ptr %70, align 8, !tbaa !47
  %71 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52, i32 2, i64 1
  store i8 -1, ptr %71, align 1, !tbaa !47
  br label %125

72:                                               ; preds = %30
  %73 = load i8, ptr %5, align 1, !tbaa !47
  %74 = icmp eq i8 %73, -1
  br i1 %74, label %75, label %94

75:                                               ; preds = %72
  br i1 %47, label %76, label %83

76:                                               ; preds = %75
  %77 = load ptr, ptr %19, align 8, !tbaa !53
  %78 = getelementptr inbounds [2 x ptr], ptr %53, i64 0, i64 1
  store ptr %77, ptr %78, align 8, !tbaa !53
  %79 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52, i32 1
  store i32 0, ptr %79, align 8
  %80 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52, i32 1, i64 1
  store i32 0, ptr %80, align 4
  %81 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52, i32 2
  store i8 -1, ptr %81, align 8, !tbaa !47
  %82 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52, i32 2, i64 1
  store i8 0, ptr %82, align 1, !tbaa !47
  br label %125

83:                                               ; preds = %75
  %84 = sext i8 %54 to i64
  %85 = getelementptr inbounds ptr, ptr %19, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !53
  %87 = getelementptr inbounds [2 x ptr], ptr %53, i64 0, i64 1
  store ptr %86, ptr %87, align 8, !tbaa !53
  %88 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52, i32 1
  store i32 0, ptr %88, align 8
  %89 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52, i32 1, i64 1
  %90 = load i32, ptr %8, align 4
  store i32 %90, ptr %89, align 4
  %91 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52, i32 2
  store i8 -1, ptr %91, align 8, !tbaa !47
  %92 = load i8, ptr %6, align 1, !tbaa !47
  %93 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52, i32 2, i64 1
  store i8 %92, ptr %93, align 1, !tbaa !47
  br label %125

94:                                               ; preds = %72
  %95 = icmp eq i8 %73, 0
  %96 = select i1 %95, i1 %47, i1 false
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load ptr, ptr %16, align 8, !tbaa !53
  store ptr %98, ptr %53, align 8, !tbaa !53
  %99 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52, i32 1
  store i32 0, ptr %99, align 8
  br label %106

100:                                              ; preds = %94
  %101 = sext i8 %73 to i64
  %102 = getelementptr inbounds ptr, ptr %16, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !53
  store ptr %103, ptr %53, align 8, !tbaa !53
  %104 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52, i32 1
  %105 = load i32, ptr %7, align 4
  store i32 %105, ptr %104, align 8
  br label %106

106:                                              ; preds = %100, %97
  %107 = phi i8 [ %73, %100 ], [ 0, %97 ]
  %108 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52, i32 2
  store i8 %107, ptr %108, align 8, !tbaa !47
  %109 = load i8, ptr %6, align 1, !tbaa !47
  %110 = icmp eq i8 %109, 0
  %111 = select i1 %110, i1 %47, i1 false
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load ptr, ptr %19, align 8, !tbaa !53
  %114 = getelementptr inbounds [2 x ptr], ptr %53, i64 0, i64 1
  store ptr %113, ptr %114, align 8, !tbaa !53
  %115 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52, i32 1, i64 1
  store i32 0, ptr %115, align 4
  %116 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52, i32 2, i64 1
  store i8 0, ptr %116, align 1, !tbaa !47
  br label %125

117:                                              ; preds = %106
  %118 = sext i8 %109 to i64
  %119 = getelementptr inbounds ptr, ptr %19, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !53
  %121 = getelementptr inbounds [2 x ptr], ptr %53, i64 0, i64 1
  store ptr %120, ptr %121, align 8, !tbaa !53
  %122 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52, i32 1, i64 1
  %123 = load i32, ptr %8, align 4
  store i32 %123, ptr %122, align 4
  %124 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52, i32 2, i64 1
  store i8 %109, ptr %124, align 1, !tbaa !47
  br label %125

125:                                              ; preds = %112, %117, %76, %83, %57, %61
  %126 = phi i32 [ 0, %61 ], [ 0, %57 ], [ 1, %83 ], [ 1, %76 ], [ 2, %117 ], [ 2, %112 ]
  %127 = load ptr, ptr %29, align 8, !tbaa !101
  %128 = getelementptr inbounds ptr, ptr %127, i64 %49
  %129 = getelementptr inbounds ptr, ptr %128, i64 1
  %130 = load ptr, ptr %128, align 8, !tbaa !53
  %131 = add nsw i32 %40, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.pic_motion_params, ptr %130, i64 %132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %133, ptr noundef nonnull align 8 dereferenceable(32) %53, i64 32, i1 false), !tbaa.struct !127
  %134 = load ptr, ptr %129, align 8, !tbaa !53
  %135 = getelementptr inbounds %struct.pic_motion_params, ptr %134, i64 %52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %135, ptr noundef nonnull align 8 dereferenceable(32) %53, i64 32, i1 false), !tbaa.struct !127
  %136 = load ptr, ptr %129, align 8, !tbaa !53
  %137 = getelementptr inbounds %struct.pic_motion_params, ptr %136, i64 %132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %137, ptr noundef nonnull align 8 dereferenceable(32) %53, i64 32, i1 false), !tbaa.struct !127
  call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3, i32 noundef %126, i32 noundef %36, i32 noundef %38, i32 noundef 8, i32 noundef 8) #7
  %138 = add nuw nsw i64 %31, 1
  %139 = icmp eq i64 %138, 4
  br i1 %139, label %332, label %30, !llvm.loop !128

140:                                              ; preds = %4
  %141 = icmp slt i8 %20, 0
  %142 = icmp slt i8 %22, 0
  %143 = select i1 %141, i1 %142, i1 false
  br i1 %143, label %144, label %185

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %146 = load i32, ptr %145, align 4, !tbaa !49
  %147 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %148 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 35
  %149 = sext i32 %146 to i64
  br label %150

150:                                              ; preds = %144, %179
  %151 = phi i64 [ %149, %144 ], [ %180, %179 ]
  %152 = load i32, ptr %147, align 8, !tbaa !48
  %153 = sext i32 %152 to i64
  br label %154

154:                                              ; preds = %150, %154
  %155 = phi i64 [ %153, %150 ], [ %174, %154 ]
  %156 = load ptr, ptr %148, align 8, !tbaa !101
  %157 = getelementptr inbounds ptr, ptr %156, i64 %151
  %158 = load ptr, ptr %157, align 8, !tbaa !53
  %159 = getelementptr inbounds %struct.pic_motion_params, ptr %158, i64 %155
  %160 = load ptr, ptr %16, align 8, !tbaa !53
  store ptr %160, ptr %159, align 8, !tbaa !53
  %161 = load ptr, ptr %19, align 8, !tbaa !53
  %162 = getelementptr inbounds [2 x ptr], ptr %159, i64 0, i64 1
  store ptr %161, ptr %162, align 8, !tbaa !53
  %163 = getelementptr inbounds %struct.pic_motion_params, ptr %158, i64 %155, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %163, i8 0, i64 10, i1 false)
  %164 = load ptr, ptr %148, align 8, !tbaa !101
  %165 = getelementptr inbounds ptr, ptr %164, i64 %151
  %166 = getelementptr inbounds ptr, ptr %165, i64 1
  %167 = load ptr, ptr %165, align 8, !tbaa !53
  %168 = add nsw i64 %155, 1
  %169 = getelementptr inbounds %struct.pic_motion_params, ptr %167, i64 %168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %169, ptr noundef nonnull align 8 dereferenceable(32) %159, i64 32, i1 false), !tbaa.struct !127
  %170 = load ptr, ptr %166, align 8, !tbaa !53
  %171 = getelementptr inbounds %struct.pic_motion_params, ptr %170, i64 %155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %171, ptr noundef nonnull align 8 dereferenceable(32) %159, i64 32, i1 false), !tbaa.struct !127
  %172 = load ptr, ptr %166, align 8, !tbaa !53
  %173 = getelementptr inbounds %struct.pic_motion_params, ptr %172, i64 %168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %173, ptr noundef nonnull align 8 dereferenceable(32) %159, i64 32, i1 false), !tbaa.struct !127
  %174 = add nsw i64 %155, 2
  %175 = load i32, ptr %147, align 8, !tbaa !48
  %176 = add nsw i32 %175, 2
  %177 = sext i32 %176 to i64
  %178 = icmp slt i64 %155, %177
  br i1 %178, label %154, label %179, !llvm.loop !129

179:                                              ; preds = %154
  %180 = add nsw i64 %151, 2
  %181 = load i32, ptr %145, align 4, !tbaa !49
  %182 = add nsw i32 %181, 2
  %183 = sext i32 %182 to i64
  %184 = icmp slt i64 %151, %183
  br i1 %184, label %150, label %330, !llvm.loop !130

185:                                              ; preds = %140
  %186 = icmp eq i8 %22, -1
  br i1 %186, label %187, label %234

187:                                              ; preds = %185
  %188 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %189 = load i32, ptr %188, align 4, !tbaa !49
  %190 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %191 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 35
  %192 = sext i32 %189 to i64
  br label %193

193:                                              ; preds = %187, %228
  %194 = phi i64 [ %192, %187 ], [ %229, %228 ]
  %195 = load i32, ptr %190, align 8, !tbaa !48
  %196 = sext i32 %195 to i64
  br label %197

197:                                              ; preds = %193, %197
  %198 = phi i64 [ %196, %193 ], [ %223, %197 ]
  %199 = load ptr, ptr %191, align 8, !tbaa !101
  %200 = getelementptr inbounds ptr, ptr %199, i64 %194
  %201 = load ptr, ptr %200, align 8, !tbaa !53
  %202 = getelementptr inbounds %struct.pic_motion_params, ptr %201, i64 %198
  %203 = load i8, ptr %5, align 1, !tbaa !47
  %204 = sext i8 %203 to i64
  %205 = getelementptr inbounds ptr, ptr %16, i64 %204
  %206 = load ptr, ptr %205, align 8, !tbaa !53
  store ptr %206, ptr %202, align 8, !tbaa !53
  %207 = getelementptr inbounds [2 x ptr], ptr %202, i64 0, i64 1
  store ptr null, ptr %207, align 8, !tbaa !53
  %208 = getelementptr inbounds %struct.pic_motion_params, ptr %201, i64 %198, i32 1
  %209 = load i32, ptr %7, align 4
  store i32 %209, ptr %208, align 8
  %210 = getelementptr inbounds %struct.pic_motion_params, ptr %201, i64 %198, i32 1, i64 1
  store i32 0, ptr %210, align 4
  %211 = getelementptr inbounds %struct.pic_motion_params, ptr %201, i64 %198, i32 2
  store i8 %203, ptr %211, align 8, !tbaa !47
  %212 = getelementptr inbounds %struct.pic_motion_params, ptr %201, i64 %198, i32 2, i64 1
  store i8 -1, ptr %212, align 1, !tbaa !47
  %213 = load ptr, ptr %191, align 8, !tbaa !101
  %214 = getelementptr inbounds ptr, ptr %213, i64 %194
  %215 = getelementptr inbounds ptr, ptr %214, i64 1
  %216 = load ptr, ptr %214, align 8, !tbaa !53
  %217 = add nsw i64 %198, 1
  %218 = getelementptr inbounds %struct.pic_motion_params, ptr %216, i64 %217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %218, ptr noundef nonnull align 8 dereferenceable(32) %202, i64 32, i1 false), !tbaa.struct !127
  %219 = load ptr, ptr %215, align 8, !tbaa !53
  %220 = getelementptr inbounds %struct.pic_motion_params, ptr %219, i64 %198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %220, ptr noundef nonnull align 8 dereferenceable(32) %202, i64 32, i1 false), !tbaa.struct !127
  %221 = load ptr, ptr %215, align 8, !tbaa !53
  %222 = getelementptr inbounds %struct.pic_motion_params, ptr %221, i64 %217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %222, ptr noundef nonnull align 8 dereferenceable(32) %202, i64 32, i1 false), !tbaa.struct !127
  %223 = add nsw i64 %198, 2
  %224 = load i32, ptr %190, align 8, !tbaa !48
  %225 = add nsw i32 %224, 2
  %226 = sext i32 %225 to i64
  %227 = icmp slt i64 %198, %226
  br i1 %227, label %197, label %228, !llvm.loop !131

228:                                              ; preds = %197
  %229 = add nsw i64 %194, 2
  %230 = load i32, ptr %188, align 4, !tbaa !49
  %231 = add nsw i32 %230, 2
  %232 = sext i32 %231 to i64
  %233 = icmp slt i64 %194, %232
  br i1 %233, label %193, label %330, !llvm.loop !132

234:                                              ; preds = %185
  %235 = icmp eq i8 %20, -1
  %236 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %237 = load i32, ptr %236, align 4, !tbaa !49
  %238 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %239 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 35
  %240 = sext i32 %237 to i64
  br i1 %235, label %241, label %283

241:                                              ; preds = %234, %277
  %242 = phi i64 [ %278, %277 ], [ %240, %234 ]
  %243 = load i32, ptr %238, align 8, !tbaa !48
  %244 = sext i32 %243 to i64
  br label %245

245:                                              ; preds = %241, %245
  %246 = phi i64 [ %244, %241 ], [ %272, %245 ]
  %247 = load ptr, ptr %239, align 8, !tbaa !101
  %248 = getelementptr inbounds ptr, ptr %247, i64 %242
  %249 = load ptr, ptr %248, align 8, !tbaa !53
  %250 = getelementptr inbounds %struct.pic_motion_params, ptr %249, i64 %246
  store ptr null, ptr %250, align 8, !tbaa !53
  %251 = load i8, ptr %6, align 1, !tbaa !47
  %252 = sext i8 %251 to i64
  %253 = getelementptr inbounds ptr, ptr %19, i64 %252
  %254 = load ptr, ptr %253, align 8, !tbaa !53
  %255 = getelementptr inbounds [2 x ptr], ptr %250, i64 0, i64 1
  store ptr %254, ptr %255, align 8, !tbaa !53
  %256 = getelementptr inbounds %struct.pic_motion_params, ptr %249, i64 %246, i32 1
  store i32 0, ptr %256, align 8
  %257 = getelementptr inbounds %struct.pic_motion_params, ptr %249, i64 %246, i32 1, i64 1
  %258 = load i32, ptr %8, align 4
  store i32 %258, ptr %257, align 4
  %259 = getelementptr inbounds %struct.pic_motion_params, ptr %249, i64 %246, i32 2
  store i8 -1, ptr %259, align 8, !tbaa !47
  %260 = load i8, ptr %6, align 1, !tbaa !47
  %261 = getelementptr inbounds %struct.pic_motion_params, ptr %249, i64 %246, i32 2, i64 1
  store i8 %260, ptr %261, align 1, !tbaa !47
  %262 = load ptr, ptr %239, align 8, !tbaa !101
  %263 = getelementptr inbounds ptr, ptr %262, i64 %242
  %264 = getelementptr inbounds ptr, ptr %263, i64 1
  %265 = load ptr, ptr %263, align 8, !tbaa !53
  %266 = add nsw i64 %246, 1
  %267 = getelementptr inbounds %struct.pic_motion_params, ptr %265, i64 %266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %267, ptr noundef nonnull align 8 dereferenceable(32) %250, i64 32, i1 false), !tbaa.struct !127
  %268 = load ptr, ptr %264, align 8, !tbaa !53
  %269 = getelementptr inbounds %struct.pic_motion_params, ptr %268, i64 %246
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %269, ptr noundef nonnull align 8 dereferenceable(32) %250, i64 32, i1 false), !tbaa.struct !127
  %270 = load ptr, ptr %264, align 8, !tbaa !53
  %271 = getelementptr inbounds %struct.pic_motion_params, ptr %270, i64 %266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %271, ptr noundef nonnull align 8 dereferenceable(32) %250, i64 32, i1 false), !tbaa.struct !127
  %272 = add nsw i64 %246, 2
  %273 = load i32, ptr %238, align 8, !tbaa !48
  %274 = add nsw i32 %273, 2
  %275 = sext i32 %274 to i64
  %276 = icmp slt i64 %246, %275
  br i1 %276, label %245, label %277, !llvm.loop !133

277:                                              ; preds = %245
  %278 = add nsw i64 %242, 2
  %279 = load i32, ptr %236, align 4, !tbaa !49
  %280 = add nsw i32 %279, 2
  %281 = sext i32 %280 to i64
  %282 = icmp slt i64 %242, %281
  br i1 %282, label %241, label %330, !llvm.loop !134

283:                                              ; preds = %234, %324
  %284 = phi i64 [ %325, %324 ], [ %240, %234 ]
  %285 = load i32, ptr %238, align 8, !tbaa !48
  %286 = sext i32 %285 to i64
  br label %287

287:                                              ; preds = %283, %287
  %288 = phi i64 [ %286, %283 ], [ %319, %287 ]
  %289 = load ptr, ptr %239, align 8, !tbaa !101
  %290 = getelementptr inbounds ptr, ptr %289, i64 %284
  %291 = load ptr, ptr %290, align 8, !tbaa !53
  %292 = getelementptr inbounds %struct.pic_motion_params, ptr %291, i64 %288
  %293 = load i8, ptr %5, align 1, !tbaa !47
  %294 = sext i8 %293 to i64
  %295 = getelementptr inbounds ptr, ptr %16, i64 %294
  %296 = load ptr, ptr %295, align 8, !tbaa !53
  store ptr %296, ptr %292, align 8, !tbaa !53
  %297 = load i8, ptr %6, align 1, !tbaa !47
  %298 = sext i8 %297 to i64
  %299 = getelementptr inbounds ptr, ptr %19, i64 %298
  %300 = load ptr, ptr %299, align 8, !tbaa !53
  %301 = getelementptr inbounds [2 x ptr], ptr %292, i64 0, i64 1
  store ptr %300, ptr %301, align 8, !tbaa !53
  %302 = getelementptr inbounds %struct.pic_motion_params, ptr %291, i64 %288, i32 1
  %303 = load i32, ptr %7, align 4
  store i32 %303, ptr %302, align 8
  %304 = getelementptr inbounds %struct.pic_motion_params, ptr %291, i64 %288, i32 1, i64 1
  %305 = load i32, ptr %8, align 4
  store i32 %305, ptr %304, align 4
  %306 = getelementptr inbounds %struct.pic_motion_params, ptr %291, i64 %288, i32 2
  store i8 %293, ptr %306, align 8, !tbaa !47
  %307 = load i8, ptr %6, align 1, !tbaa !47
  %308 = getelementptr inbounds %struct.pic_motion_params, ptr %291, i64 %288, i32 2, i64 1
  store i8 %307, ptr %308, align 1, !tbaa !47
  %309 = load ptr, ptr %239, align 8, !tbaa !101
  %310 = getelementptr inbounds ptr, ptr %309, i64 %284
  %311 = getelementptr inbounds ptr, ptr %310, i64 1
  %312 = load ptr, ptr %310, align 8, !tbaa !53
  %313 = add nsw i64 %288, 1
  %314 = getelementptr inbounds %struct.pic_motion_params, ptr %312, i64 %313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %314, ptr noundef nonnull align 8 dereferenceable(32) %292, i64 32, i1 false), !tbaa.struct !127
  %315 = load ptr, ptr %311, align 8, !tbaa !53
  %316 = getelementptr inbounds %struct.pic_motion_params, ptr %315, i64 %288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %316, ptr noundef nonnull align 8 dereferenceable(32) %292, i64 32, i1 false), !tbaa.struct !127
  %317 = load ptr, ptr %311, align 8, !tbaa !53
  %318 = getelementptr inbounds %struct.pic_motion_params, ptr %317, i64 %313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %318, ptr noundef nonnull align 8 dereferenceable(32) %292, i64 32, i1 false), !tbaa.struct !127
  %319 = add nsw i64 %288, 2
  %320 = load i32, ptr %238, align 8, !tbaa !48
  %321 = add nsw i32 %320, 2
  %322 = sext i32 %321 to i64
  %323 = icmp slt i64 %288, %322
  br i1 %323, label %287, label %324, !llvm.loop !135

324:                                              ; preds = %287
  %325 = add nsw i64 %284, 2
  %326 = load i32, ptr %236, align 4, !tbaa !49
  %327 = add nsw i32 %326, 2
  %328 = sext i32 %327 to i64
  %329 = icmp slt i64 %284, %328
  br i1 %329, label %283, label %330, !llvm.loop !136

330:                                              ; preds = %324, %277, %228, %179
  %331 = phi i32 [ 2, %179 ], [ 0, %228 ], [ 1, %277 ], [ 2, %324 ]
  call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3, i32 noundef %331, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #7
  br label %332

332:                                              ; preds = %125, %330
  %333 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %334 = load i32, ptr %333, align 4, !tbaa !58
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %379

336:                                              ; preds = %332
  %337 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 9
  %338 = load i32, ptr %337, align 8, !tbaa !63
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds ptr, ptr %2, i64 %339
  %341 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 77
  %342 = load ptr, ptr %341, align 8, !tbaa !67
  %343 = zext i32 %1 to i64
  %344 = getelementptr inbounds ptr, ptr %342, i64 %343
  %345 = load ptr, ptr %344, align 8, !tbaa !53
  %346 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 8
  %347 = load i32, ptr %346, align 4, !tbaa !64
  call void @copy_image_data_16x16(ptr noundef %340, ptr noundef %345, i32 noundef %347, i32 noundef 0) #7
  %348 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 48
  %349 = load i32, ptr %348, align 4, !tbaa !42
  switch i32 %349, label %350 [
    i32 0, label %381
    i32 3, label %381
  ]

350:                                              ; preds = %336
  %351 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 33
  %352 = load ptr, ptr %351, align 8, !tbaa !68
  %353 = load ptr, ptr %352, align 8, !tbaa !53
  %354 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 11
  %355 = load i32, ptr %354, align 8, !tbaa !69
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds ptr, ptr %353, i64 %356
  %358 = load ptr, ptr %341, align 8, !tbaa !67
  %359 = getelementptr inbounds ptr, ptr %358, i64 1
  %360 = load ptr, ptr %359, align 8, !tbaa !53
  %361 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 10
  %362 = load i32, ptr %361, align 4, !tbaa !70
  %363 = getelementptr inbounds %struct.video_par, ptr %11, i64 0, i32 81, i64 1
  %364 = load i32, ptr %363, align 4, !tbaa !71
  %365 = getelementptr inbounds %struct.video_par, ptr %11, i64 0, i32 81, i64 1, i64 1
  %366 = load i32, ptr %365, align 4, !tbaa !71
  call void @copy_image_data(ptr noundef %357, ptr noundef %360, i32 noundef %362, i32 noundef 0, i32 noundef %364, i32 noundef %366) #7
  %367 = load ptr, ptr %351, align 8, !tbaa !68
  %368 = getelementptr inbounds ptr, ptr %367, i64 1
  %369 = load ptr, ptr %368, align 8, !tbaa !53
  %370 = load i32, ptr %354, align 8, !tbaa !69
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds ptr, ptr %369, i64 %371
  %373 = load ptr, ptr %341, align 8, !tbaa !67
  %374 = getelementptr inbounds ptr, ptr %373, i64 2
  %375 = load ptr, ptr %374, align 8, !tbaa !53
  %376 = load i32, ptr %361, align 4, !tbaa !70
  %377 = load i32, ptr %363, align 4, !tbaa !71
  %378 = load i32, ptr %365, align 4, !tbaa !71
  call void @copy_image_data(ptr noundef %372, ptr noundef %375, i32 noundef %376, i32 noundef 0, i32 noundef %377, i32 noundef %378) #7
  br label %381

379:                                              ; preds = %332
  call void @iTransform(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0) #7
  %380 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 76
  store i32 0, ptr %380, align 8, !tbaa !59
  br label %381

381:                                              ; preds = %336, %336, %350, %379
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare void @prepare_direct_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @get_colocated_info_8x8(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_b_d4x4spatial(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.MotionVector, align 4
  %8 = alloca %struct.MotionVector, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 -1, ptr %5, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #7
  store i8 -1, ptr %6, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 0, ptr %8, align 4
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !66
  %12 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %13 = load i16, ptr %12, align 2, !tbaa !89
  %14 = sext i16 %13 to i64
  %15 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 56, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = add nsw i64 %14, 1
  %18 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 56, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %0)
  call void @prepare_direct_params(ptr noundef nonnull %0, ptr noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %20 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %21 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %22 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 35
  %23 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  br label %24

24:                                               ; preds = %4, %191
  %25 = phi i64 [ 4, %4 ], [ %194, %191 ]
  %26 = phi i64 [ 0, %4 ], [ %193, %191 ]
  %27 = phi i32 [ 0, %4 ], [ %192, %191 ]
  br label %28

28:                                               ; preds = %24, %177
  %29 = phi i64 [ %26, %24 ], [ %179, %177 ]
  %30 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !47
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 3
  %34 = lshr i32 %32, 2
  %35 = and i32 %34, 3
  %36 = load i32, ptr %20, align 8, !tbaa !48
  %37 = add nsw i32 %33, %36
  %38 = load i32, ptr %21, align 4, !tbaa !49
  %39 = add nsw i32 %35, %38
  %40 = load ptr, ptr %22, align 8, !tbaa !101
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !53
  %44 = sext i32 %37 to i64
  %45 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44
  %46 = load i8, ptr %5, align 1, !tbaa !47
  %47 = icmp eq i8 %46, 0
  %48 = load i8, ptr %6, align 1
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %47, i1 true, i1 %49
  br i1 %50, label %51, label %128

51:                                               ; preds = %28
  %52 = load ptr, ptr %19, align 8, !tbaa !53
  %53 = load i32, ptr %23, align 8, !tbaa !100
  %54 = add nsw i32 %53, %35
  %55 = call i32 @get_colocated_info_4x4(ptr noundef nonnull %0, ptr noundef %52, i32 noundef %37, i32 noundef %54) #7
  %56 = icmp eq i32 %55, 0
  %57 = load i8, ptr %6, align 1, !tbaa !47
  %58 = icmp eq i8 %57, -1
  br i1 %58, label %59, label %75

59:                                               ; preds = %51
  br i1 %56, label %60, label %64

60:                                               ; preds = %59
  %61 = load ptr, ptr %16, align 8, !tbaa !53
  store ptr %61, ptr %45, align 8, !tbaa !53
  %62 = getelementptr inbounds [2 x ptr], ptr %45, i64 0, i64 1
  %63 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 2, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %62, i8 0, i64 17, i1 false)
  store i8 -1, ptr %63, align 1, !tbaa !47
  br label %177

64:                                               ; preds = %59
  %65 = load i8, ptr %5, align 1, !tbaa !47
  %66 = sext i8 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %16, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !53
  store ptr %68, ptr %45, align 8, !tbaa !53
  %69 = getelementptr inbounds [2 x ptr], ptr %45, i64 0, i64 1
  store ptr null, ptr %69, align 8, !tbaa !53
  %70 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1
  %71 = load i32, ptr %7, align 4
  store i32 %71, ptr %70, align 8
  %72 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1, i64 1
  store i32 0, ptr %72, align 4
  %73 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 2
  store i8 %65, ptr %73, align 8, !tbaa !47
  %74 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 2, i64 1
  store i8 -1, ptr %74, align 1, !tbaa !47
  br label %177

75:                                               ; preds = %51
  %76 = load i8, ptr %5, align 1, !tbaa !47
  %77 = icmp eq i8 %76, -1
  br i1 %77, label %78, label %97

78:                                               ; preds = %75
  br i1 %56, label %79, label %86

79:                                               ; preds = %78
  %80 = load ptr, ptr %19, align 8, !tbaa !53
  %81 = getelementptr inbounds [2 x ptr], ptr %45, i64 0, i64 1
  store ptr %80, ptr %81, align 8, !tbaa !53
  %82 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1
  store i32 0, ptr %82, align 8
  %83 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1, i64 1
  store i32 0, ptr %83, align 4
  %84 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 2
  store i8 -1, ptr %84, align 8, !tbaa !47
  %85 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 2, i64 1
  store i8 0, ptr %85, align 1, !tbaa !47
  br label %177

86:                                               ; preds = %78
  %87 = sext i8 %57 to i64
  %88 = getelementptr inbounds ptr, ptr %19, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !53
  %90 = getelementptr inbounds [2 x ptr], ptr %45, i64 0, i64 1
  store ptr %89, ptr %90, align 8, !tbaa !53
  %91 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1
  store i32 0, ptr %91, align 8
  %92 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1, i64 1
  %93 = load i32, ptr %8, align 4
  store i32 %93, ptr %92, align 4
  %94 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 2
  store i8 -1, ptr %94, align 8, !tbaa !47
  %95 = load i8, ptr %6, align 1, !tbaa !47
  %96 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 2, i64 1
  store i8 %95, ptr %96, align 1, !tbaa !47
  br label %177

97:                                               ; preds = %75
  %98 = icmp eq i8 %76, 0
  %99 = select i1 %98, i1 %56, i1 false
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load ptr, ptr %16, align 8, !tbaa !53
  store ptr %101, ptr %45, align 8, !tbaa !53
  %102 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1
  store i32 0, ptr %102, align 8
  br label %109

103:                                              ; preds = %97
  %104 = sext i8 %76 to i64
  %105 = getelementptr inbounds ptr, ptr %16, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !53
  store ptr %106, ptr %45, align 8, !tbaa !53
  %107 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1
  %108 = load i32, ptr %7, align 4
  store i32 %108, ptr %107, align 8
  br label %109

109:                                              ; preds = %103, %100
  %110 = phi i8 [ %76, %103 ], [ 0, %100 ]
  %111 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 2
  store i8 %110, ptr %111, align 8, !tbaa !47
  %112 = load i8, ptr %6, align 1, !tbaa !47
  %113 = icmp eq i8 %112, 0
  %114 = select i1 %113, i1 %56, i1 false
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load ptr, ptr %19, align 8, !tbaa !53
  %117 = getelementptr inbounds [2 x ptr], ptr %45, i64 0, i64 1
  store ptr %116, ptr %117, align 8, !tbaa !53
  %118 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1, i64 1
  store i32 0, ptr %118, align 4
  %119 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 2, i64 1
  store i8 0, ptr %119, align 1, !tbaa !47
  br label %177

120:                                              ; preds = %109
  %121 = sext i8 %112 to i64
  %122 = getelementptr inbounds ptr, ptr %19, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !53
  %124 = getelementptr inbounds [2 x ptr], ptr %45, i64 0, i64 1
  store ptr %123, ptr %124, align 8, !tbaa !53
  %125 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1, i64 1
  %126 = load i32, ptr %8, align 4
  store i32 %126, ptr %125, align 4
  %127 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 2, i64 1
  store i8 %112, ptr %127, align 1, !tbaa !47
  br label %177

128:                                              ; preds = %28
  %129 = icmp slt i8 %46, 0
  %130 = icmp slt i8 %48, 0
  %131 = select i1 %129, i1 %130, i1 false
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load ptr, ptr %16, align 8, !tbaa !53
  store ptr %133, ptr %45, align 8, !tbaa !53
  %134 = load ptr, ptr %19, align 8, !tbaa !53
  %135 = getelementptr inbounds [2 x ptr], ptr %45, i64 0, i64 1
  store ptr %134, ptr %135, align 8, !tbaa !53
  %136 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %136, i8 0, i64 10, i1 false)
  br label %177

137:                                              ; preds = %128
  %138 = icmp eq i8 %48, -1
  br i1 %138, label %139, label %149

139:                                              ; preds = %137
  %140 = sext i8 %46 to i64
  %141 = getelementptr inbounds ptr, ptr %16, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !53
  store ptr %142, ptr %45, align 8, !tbaa !53
  %143 = getelementptr inbounds [2 x ptr], ptr %45, i64 0, i64 1
  store ptr null, ptr %143, align 8, !tbaa !53
  %144 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1
  %145 = load i32, ptr %7, align 4
  store i32 %145, ptr %144, align 8
  %146 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1, i64 1
  store i32 0, ptr %146, align 4
  %147 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 2
  store i8 %46, ptr %147, align 8, !tbaa !47
  %148 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 2, i64 1
  store i8 -1, ptr %148, align 1, !tbaa !47
  br label %177

149:                                              ; preds = %137
  %150 = icmp eq i8 %46, -1
  br i1 %150, label %151, label %162

151:                                              ; preds = %149
  store ptr null, ptr %45, align 8, !tbaa !53
  %152 = sext i8 %48 to i64
  %153 = getelementptr inbounds ptr, ptr %19, i64 %152
  %154 = load ptr, ptr %153, align 8, !tbaa !53
  %155 = getelementptr inbounds [2 x ptr], ptr %45, i64 0, i64 1
  store ptr %154, ptr %155, align 8, !tbaa !53
  %156 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1
  store i32 0, ptr %156, align 8
  %157 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1, i64 1
  %158 = load i32, ptr %8, align 4
  store i32 %158, ptr %157, align 4
  %159 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 2
  store i8 -1, ptr %159, align 8, !tbaa !47
  %160 = load i8, ptr %6, align 1, !tbaa !47
  %161 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 2, i64 1
  store i8 %160, ptr %161, align 1, !tbaa !47
  br label %177

162:                                              ; preds = %149
  %163 = sext i8 %46 to i64
  %164 = getelementptr inbounds ptr, ptr %16, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !53
  store ptr %165, ptr %45, align 8, !tbaa !53
  %166 = sext i8 %48 to i64
  %167 = getelementptr inbounds ptr, ptr %19, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !53
  %169 = getelementptr inbounds [2 x ptr], ptr %45, i64 0, i64 1
  store ptr %168, ptr %169, align 8, !tbaa !53
  %170 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1
  %171 = load i32, ptr %7, align 4
  store i32 %171, ptr %170, align 8
  %172 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1, i64 1
  %173 = load i32, ptr %8, align 4
  store i32 %173, ptr %172, align 4
  %174 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 2
  store i8 %46, ptr %174, align 8, !tbaa !47
  %175 = load i8, ptr %6, align 1, !tbaa !47
  %176 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 2, i64 1
  store i8 %175, ptr %176, align 1, !tbaa !47
  br label %177

177:                                              ; preds = %64, %60, %86, %79, %120, %115, %132, %151, %162, %139
  %178 = phi i32 [ 2, %132 ], [ 0, %139 ], [ 1, %151 ], [ 2, %162 ], [ 0, %64 ], [ 0, %60 ], [ 1, %86 ], [ 1, %79 ], [ 2, %120 ], [ 2, %115 ]
  %179 = add nuw nsw i64 %29, 1
  %180 = icmp eq i64 %179, %25
  br i1 %180, label %181, label %28, !llvm.loop !137

181:                                              ; preds = %177, %181
  %182 = phi i64 [ %189, %181 ], [ %26, %177 ]
  %183 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %182
  %184 = load i8, ptr %183, align 1, !tbaa !47
  %185 = zext i8 %184 to i32
  %186 = and i32 %185, 3
  %187 = lshr i32 %185, 2
  %188 = and i32 %187, 3
  call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3, i32 noundef %178, i32 noundef %186, i32 noundef %188, i32 noundef 4, i32 noundef 4) #7
  %189 = add nuw nsw i64 %182, 1
  %190 = icmp eq i64 %189, %25
  br i1 %190, label %191, label %181, !llvm.loop !138

191:                                              ; preds = %181
  %192 = add nuw nsw i32 %27, 1
  %193 = add nuw nsw i64 %26, 4
  %194 = add nuw nsw i64 %25, 4
  %195 = icmp eq i32 %192, 4
  br i1 %195, label %196, label %24, !llvm.loop !139

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %198 = load i32, ptr %197, align 4, !tbaa !58
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %243

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 9
  %202 = load i32, ptr %201, align 8, !tbaa !63
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds ptr, ptr %2, i64 %203
  %205 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 77
  %206 = load ptr, ptr %205, align 8, !tbaa !67
  %207 = zext i32 %1 to i64
  %208 = getelementptr inbounds ptr, ptr %206, i64 %207
  %209 = load ptr, ptr %208, align 8, !tbaa !53
  %210 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 8
  %211 = load i32, ptr %210, align 4, !tbaa !64
  call void @copy_image_data_16x16(ptr noundef %204, ptr noundef %209, i32 noundef %211, i32 noundef 0) #7
  %212 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 48
  %213 = load i32, ptr %212, align 4, !tbaa !42
  switch i32 %213, label %214 [
    i32 0, label %245
    i32 3, label %245
  ]

214:                                              ; preds = %200
  %215 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 33
  %216 = load ptr, ptr %215, align 8, !tbaa !68
  %217 = load ptr, ptr %216, align 8, !tbaa !53
  %218 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 11
  %219 = load i32, ptr %218, align 8, !tbaa !69
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds ptr, ptr %217, i64 %220
  %222 = load ptr, ptr %205, align 8, !tbaa !67
  %223 = getelementptr inbounds ptr, ptr %222, i64 1
  %224 = load ptr, ptr %223, align 8, !tbaa !53
  %225 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 10
  %226 = load i32, ptr %225, align 4, !tbaa !70
  %227 = getelementptr inbounds %struct.video_par, ptr %11, i64 0, i32 81, i64 1
  %228 = load i32, ptr %227, align 4, !tbaa !71
  %229 = getelementptr inbounds %struct.video_par, ptr %11, i64 0, i32 81, i64 1, i64 1
  %230 = load i32, ptr %229, align 4, !tbaa !71
  call void @copy_image_data(ptr noundef %221, ptr noundef %224, i32 noundef %226, i32 noundef 0, i32 noundef %228, i32 noundef %230) #7
  %231 = load ptr, ptr %215, align 8, !tbaa !68
  %232 = getelementptr inbounds ptr, ptr %231, i64 1
  %233 = load ptr, ptr %232, align 8, !tbaa !53
  %234 = load i32, ptr %218, align 8, !tbaa !69
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds ptr, ptr %233, i64 %235
  %237 = load ptr, ptr %205, align 8, !tbaa !67
  %238 = getelementptr inbounds ptr, ptr %237, i64 2
  %239 = load ptr, ptr %238, align 8, !tbaa !53
  %240 = load i32, ptr %225, align 4, !tbaa !70
  %241 = load i32, ptr %227, align 4, !tbaa !71
  %242 = load i32, ptr %229, align 4, !tbaa !71
  call void @copy_image_data(ptr noundef %236, ptr noundef %239, i32 noundef %240, i32 noundef 0, i32 noundef %241, i32 noundef %242) #7
  br label %245

243:                                              ; preds = %196
  call void @iTransform(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0) #7
  %244 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 76
  store i32 0, ptr %244, align 8, !tbaa !59
  br label %245

245:                                              ; preds = %200, %200, %214, %243
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  ret i32 1
}

declare i32 @get_colocated_info_4x4(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_b_inter8x8(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca %struct.MotionVector, align 4
  %7 = alloca %struct.MotionVector, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 -1, ptr %4, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 -1, ptr %5, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %12 = load i16, ptr %11, align 2, !tbaa !89
  %13 = sext i16 %12 to i64
  %14 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 56, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = add nsw i64 %13, 1
  %17 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 56, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %0)
  %19 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 26
  %20 = load i32, ptr %19, align 4, !tbaa !140
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37
  %24 = load i8, ptr %23, align 4, !tbaa !47
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !47
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 2
  %32 = load i8, ptr %31, align 2, !tbaa !47
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 3
  %36 = load i8, ptr %35, align 1, !tbaa !47
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %30, %26, %22
  call void @prepare_direct_params(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  br label %39

39:                                               ; preds = %38, %34, %3
  %40 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 2
  %41 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %42 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %43 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 35
  %44 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %45 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %46 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 35
  br label %47

47:                                               ; preds = %39, %188
  %48 = phi i64 [ 0, %39 ], [ %189, %188 ]
  %49 = phi i64 [ 4, %39 ], [ %191, %188 ]
  %50 = phi i64 [ 0, %39 ], [ %190, %188 ]
  %51 = trunc i64 %48 to i32
  %52 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %48
  %53 = load i8, ptr %52, align 1, !tbaa !47
  %54 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38, i64 %48
  %55 = load i8, ptr %54, align 1, !tbaa !47
  %56 = sext i8 %55 to i32
  %57 = icmp eq i8 %53, 0
  %58 = shl nuw nsw i64 %48, 2
  br i1 %57, label %97, label %59

59:                                               ; preds = %47
  %60 = icmp eq i8 %53, 5
  %61 = select i1 %60, i32 2, i32 1
  %62 = icmp eq i8 %53, 4
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = shl nuw nsw i32 %51, 2
  %65 = or disjoint i32 %64, 1
  br label %74

66:                                               ; preds = %59
  %67 = icmp eq i8 %53, 7
  %68 = trunc i64 %58 to i32
  br i1 %67, label %69, label %71

69:                                               ; preds = %66
  %70 = add i32 %68, 4
  br label %74

71:                                               ; preds = %66
  %72 = or disjoint i32 %68, 1
  %73 = add nuw nsw i32 %72, %61
  br label %74

74:                                               ; preds = %69, %71, %63
  %75 = phi i32 [ %65, %63 ], [ %70, %69 ], [ %73, %71 ]
  %76 = and i8 %53, -2
  %77 = icmp eq i8 %76, 4
  %78 = select i1 %77, i32 8, i32 4
  %79 = icmp eq i8 %53, 6
  %80 = or i1 %79, %62
  %81 = select i1 %80, i32 8, i32 4
  %82 = zext i32 %75 to i64
  %83 = icmp ult i64 %58, %82
  br i1 %83, label %84, label %188

84:                                               ; preds = %74
  %85 = zext nneg i32 %61 to i64
  br label %86

86:                                               ; preds = %84, %86
  %87 = phi i64 [ %50, %84 ], [ %94, %86 ]
  %88 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !47
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, 3
  %92 = lshr i32 %90, 2
  %93 = and i32 %92, 3
  call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %56, i32 noundef %91, i32 noundef %93, i32 noundef %78, i32 noundef %81) #7
  %94 = add i64 %87, %85
  %95 = trunc i64 %94 to i32
  %96 = icmp sgt i32 %75, %95
  br i1 %96, label %86, label %188, !llvm.loop !141

97:                                               ; preds = %47
  %98 = shl nuw nsw i32 %51, 2
  %99 = load ptr, ptr %40, align 8, !tbaa !105
  %100 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %99, i64 0, i32 32
  %101 = load i32, ptr %100, align 4, !tbaa !106
  %102 = icmp eq i32 %101, 0
  %103 = or disjoint i32 %98, 1
  %104 = trunc i64 %58 to i32
  %105 = add i32 %104, 4
  %106 = select i1 %102, i32 %105, i32 %103
  %107 = select i1 %102, i32 4, i32 8
  %108 = load i32, ptr %19, align 4, !tbaa !140
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %97
  %111 = load i32, ptr %41, align 8, !tbaa !48
  %112 = load i32, ptr %42, align 4, !tbaa !49
  %113 = load ptr, ptr %43, align 8, !tbaa !101
  br label %117

114:                                              ; preds = %97
  %115 = load i32, ptr %44, align 8, !tbaa !48
  %116 = load i32, ptr %45, align 4, !tbaa !49
  br label %143

117:                                              ; preds = %110, %139
  %118 = phi i64 [ %50, %110 ], [ %141, %139 ]
  %119 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !47
  %121 = zext i8 %120 to i32
  %122 = and i32 %121, 3
  %123 = lshr i32 %121, 2
  %124 = and i32 %123, 3
  %125 = add nsw i32 %122, %111
  %126 = add nsw i32 %124, %112
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds ptr, ptr %113, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !53
  %130 = sext i32 %125 to i64
  %131 = getelementptr inbounds %struct.pic_motion_params, ptr %129, i64 %130, i32 2, i64 1
  %132 = load i8, ptr %131, align 1, !tbaa !47
  %133 = icmp eq i8 %132, -1
  br i1 %133, label %139, label %134

134:                                              ; preds = %117
  %135 = getelementptr inbounds %struct.pic_motion_params, ptr %129, i64 %130, i32 2
  %136 = load i8, ptr %135, align 8, !tbaa !47
  %137 = icmp eq i8 %136, -1
  %138 = select i1 %137, i32 1, i32 2
  br label %139

139:                                              ; preds = %134, %117
  %140 = phi i32 [ 0, %117 ], [ %138, %134 ]
  %141 = add nuw nsw i64 %118, 1
  %142 = icmp eq i64 %141, %49
  br i1 %142, label %172, label %117, !llvm.loop !142

143:                                              ; preds = %114, %143
  %144 = phi i64 [ %50, %114 ], [ %170, %143 ]
  %145 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !47
  %147 = zext i8 %146 to i32
  %148 = and i32 %147, 3
  %149 = lshr i32 %147, 2
  %150 = and i32 %149, 3
  %151 = add nsw i32 %148, %115
  %152 = add nsw i32 %150, %116
  %153 = load ptr, ptr %46, align 8, !tbaa !101
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds ptr, ptr %153, i64 %154
  %156 = load ptr, ptr %155, align 8, !tbaa !53
  %157 = sext i32 %151 to i64
  %158 = getelementptr inbounds %struct.pic_motion_params, ptr %156, i64 %157
  %159 = getelementptr inbounds %struct.pic_motion_params, ptr %156, i64 %157, i32 2
  %160 = load i8, ptr %159, align 8, !tbaa !47
  %161 = sext i8 %160 to i64
  %162 = getelementptr inbounds ptr, ptr %15, i64 %161
  %163 = load ptr, ptr %162, align 8, !tbaa !53
  store ptr %163, ptr %158, align 8, !tbaa !53
  %164 = getelementptr inbounds %struct.pic_motion_params, ptr %156, i64 %157, i32 2, i64 1
  %165 = load i8, ptr %164, align 1, !tbaa !47
  %166 = sext i8 %165 to i64
  %167 = getelementptr inbounds ptr, ptr %18, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !53
  %169 = getelementptr inbounds [2 x ptr], ptr %158, i64 0, i64 1
  store ptr %168, ptr %169, align 8, !tbaa !53
  %170 = add nuw nsw i64 %144, 1
  %171 = icmp eq i64 %170, %49
  br i1 %171, label %172, label %143, !llvm.loop !143

172:                                              ; preds = %139, %143
  %173 = phi i32 [ %56, %143 ], [ %140, %139 ]
  %174 = zext i32 %106 to i64
  %175 = icmp ult i64 %58, %174
  br i1 %175, label %176, label %188

176:                                              ; preds = %172
  %177 = zext i32 %106 to i64
  br label %178

178:                                              ; preds = %176, %178
  %179 = phi i64 [ %50, %176 ], [ %186, %178 ]
  %180 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %179
  %181 = load i8, ptr %180, align 1, !tbaa !47
  %182 = zext i8 %181 to i32
  %183 = and i32 %182, 3
  %184 = lshr i32 %182, 2
  %185 = and i32 %184, 3
  call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %173, i32 noundef %183, i32 noundef %185, i32 noundef %107, i32 noundef %107) #7
  %186 = add nuw nsw i64 %179, 1
  %187 = icmp eq i64 %186, %177
  br i1 %187, label %188, label %178, !llvm.loop !144

188:                                              ; preds = %86, %178, %74, %172
  %189 = add nuw nsw i64 %48, 1
  %190 = add nuw nsw i64 %50, 4
  %191 = add nuw nsw i64 %49, 4
  %192 = icmp eq i64 %189, 4
  br i1 %192, label %193, label %47, !llvm.loop !145

193:                                              ; preds = %188
  call void @iTransform(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0) #7
  %194 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %195 = load i32, ptr %194, align 4, !tbaa !58
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 76
  store i32 0, ptr %198, align 8, !tbaa !59
  br label %199

199:                                              ; preds = %197, %193
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @mb_pred_ipcm(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 125
  %6 = load ptr, ptr %5, align 8, !tbaa !146
  %7 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 80
  %8 = load ptr, ptr %7, align 8, !tbaa !147
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 32
  %11 = load ptr, ptr %10, align 8, !tbaa !148
  %12 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !63
  %14 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 8
  %15 = load i32, ptr %14, align 4, !tbaa !64
  %16 = sext i32 %15 to i64
  %17 = sext i32 %13 to i64
  %18 = getelementptr ptr, ptr %11, i64 %17
  br label %19

19:                                               ; preds = %1, %34
  %20 = phi i64 [ 0, %1 ], [ %35, %34 ]
  %21 = getelementptr inbounds ptr, ptr %9, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  %23 = getelementptr ptr, ptr %18, i64 %20
  %24 = load ptr, ptr %23, align 8, !tbaa !53
  %25 = getelementptr i16, ptr %24, i64 %16
  br label %26

26:                                               ; preds = %19, %26
  %27 = phi i64 [ 0, %19 ], [ %32, %26 ]
  %28 = getelementptr inbounds i32, ptr %22, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !71
  %30 = trunc i32 %29 to i16
  %31 = getelementptr i16, ptr %25, i64 %27
  store i16 %30, ptr %31, align 2, !tbaa !149
  %32 = add nuw nsw i64 %27, 1
  %33 = icmp eq i64 %32, 16
  br i1 %33, label %34, label %26, !llvm.loop !150

34:                                               ; preds = %26
  %35 = add nuw nsw i64 %20, 1
  %36 = icmp eq i64 %35, 16
  br i1 %36, label %37, label %19, !llvm.loop !151

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 48
  %39 = load i32, ptr %38, align 4, !tbaa !42
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %96, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 105
  %43 = load i32, ptr %42, align 8, !tbaa !152
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %96

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 78
  %47 = load i32, ptr %46, align 8, !tbaa !153
  %48 = icmp sgt i32 %47, 0
  %49 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 77
  %50 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 80
  %51 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 33
  %52 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 11
  %53 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 10
  %54 = zext nneg i32 %47 to i64
  br label %55

55:                                               ; preds = %45, %93
  %56 = phi i64 [ 0, %45 ], [ %94, %93 ]
  br i1 %48, label %57, label %93

57:                                               ; preds = %55
  %58 = load i32, ptr %49, align 4, !tbaa !154
  %59 = icmp sgt i32 %58, 0
  %60 = zext nneg i32 %58 to i64
  br label %61

61:                                               ; preds = %57, %90
  %62 = phi i64 [ 0, %57 ], [ %91, %90 ]
  br i1 %59, label %63, label %90

63:                                               ; preds = %61
  %64 = load ptr, ptr %50, align 8, !tbaa !147
  %65 = getelementptr ptr, ptr %64, i64 %56
  %66 = getelementptr ptr, ptr %65, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !53
  %68 = getelementptr inbounds ptr, ptr %67, i64 %62
  %69 = load ptr, ptr %68, align 8, !tbaa !53
  %70 = load ptr, ptr %51, align 8, !tbaa !68
  %71 = getelementptr inbounds ptr, ptr %70, i64 %56
  %72 = load ptr, ptr %71, align 8, !tbaa !53
  %73 = load i32, ptr %52, align 8, !tbaa !69
  %74 = trunc i64 %62 to i32
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds ptr, ptr %72, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !53
  %79 = load i32, ptr %53, align 4, !tbaa !70
  %80 = sext i32 %79 to i64
  %81 = getelementptr i16, ptr %78, i64 %80
  br label %82

82:                                               ; preds = %63, %82
  %83 = phi i64 [ 0, %63 ], [ %88, %82 ]
  %84 = getelementptr inbounds i32, ptr %69, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !71
  %86 = trunc i32 %85 to i16
  %87 = getelementptr i16, ptr %81, i64 %83
  store i16 %86, ptr %87, align 2, !tbaa !149
  %88 = add nuw nsw i64 %83, 1
  %89 = icmp eq i64 %88, %60
  br i1 %89, label %90, label %82, !llvm.loop !155

90:                                               ; preds = %82, %61
  %91 = add nuw nsw i64 %62, 1
  %92 = icmp eq i64 %91, %54
  br i1 %92, label %93, label %61, !llvm.loop !156

93:                                               ; preds = %90, %55
  %94 = add nuw nsw i64 %56, 1
  %95 = icmp eq i64 %56, 0
  br i1 %95, label %55, label %96, !llvm.loop !157

96:                                               ; preds = %93, %41, %37
  tail call void @update_qp(ptr noundef nonnull %0, i32 noundef 0) #7
  %97 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 29
  %98 = load ptr, ptr %97, align 8, !tbaa !158
  %99 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %100 = load i32, ptr %99, align 8, !tbaa !88
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %98, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !53
  %104 = load ptr, ptr %103, align 8, !tbaa !53
  %105 = load ptr, ptr %104, align 8, !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %105, i8 16, i64 48, i1 false)
  %106 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 41
  store i8 0, ptr %106, align 2, !tbaa !159
  %107 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33
  store i64 65535, ptr %107, align 8, !tbaa !160
  %108 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 45
  store i32 0, ptr %108, align 4, !tbaa !161
  %109 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 76
  store i32 0, ptr %109, align 8, !tbaa !59
  ret i32 1
}

declare void @update_qp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
!34 = !{!35, !36, i64 0}
!35 = !{!"macroblock", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !40, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !37, i64 80, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !41, i64 108, !37, i64 110, !37, i64 111, !41, i64 112, !41, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152, !37, i64 154, !39, i64 284, !37, i64 288, !37, i64 312, !37, i64 336, !39, i64 360, !37, i64 364, !37, i64 368, !37, i64 372, !37, i64 373, !37, i64 374, !41, i64 376, !41, i64 378, !41, i64 380, !39, i64 384, !39, i64 388, !39, i64 392, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !39, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !37, i64 472}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"", !41, i64 0, !41, i64 2}
!41 = !{!"short", !37, i64 0}
!42 = !{!43, !39, i64 268}
!43 = !{!"storable_picture", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !37, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !41, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !37, i64 160, !44, i64 184, !37, i64 192, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !37, i64 300, !39, i64 308, !36, i64 312, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !36, i64 336, !39, i64 344, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !39, i64 368, !36, i64 376, !39, i64 384, !39, i64 388, !37, i64 392, !37, i64 400}
!44 = !{!"pic_motion_params_old", !36, i64 0}
!45 = !{!35, !39, i64 92}
!46 = !{!35, !36, i64 432}
!47 = !{!37, !37, i64 0}
!48 = !{!35, !39, i64 32}
!49 = !{!35, !39, i64 36}
!50 = !{!51, !36, i64 1256}
!51 = !{!"slice", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !37, i64 88, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !41, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !39, i64 132, !37, i64 136, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !36, i64 248, !37, i64 256, !37, i64 264, !36, i64 312, !36, i64 320, !36, i64 328, !37, i64 336, !37, i64 1104, !37, i64 1112, !37, i64 1128, !37, i64 1144, !37, i64 1160, !39, i64 1176, !39, i64 1180, !39, i64 1184, !52, i64 1188, !41, i64 1220, !41, i64 1222, !41, i64 1224, !39, i64 1228, !39, i64 1232, !39, i64 1236, !39, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !37, i64 1288, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !37, i64 1392, !37, i64 2544, !37, i64 3696, !37, i64 8304, !37, i64 12912, !37, i64 13008, !39, i64 13264, !39, i64 13268, !41, i64 13272, !41, i64 13274, !41, i64 13276, !41, i64 13278, !36, i64 13280, !36, i64 13288, !36, i64 13296, !41, i64 13304, !41, i64 13306, !39, i64 13308, !39, i64 13312, !36, i64 13320, !36, i64 13328, !39, i64 13336, !37, i64 13340, !36, i64 13408, !36, i64 13416, !36, i64 13424, !36, i64 13432, !36, i64 13440, !36, i64 13448, !36, i64 13456, !36, i64 13464, !36, i64 13472, !36, i64 13480, !36, i64 13488, !36, i64 13496, !39, i64 13504, !36, i64 13512, !36, i64 13520, !36, i64 13528, !36, i64 13536, !36, i64 13544, !37, i64 13552}
!52 = !{!"nalunitheadermvcext_tag", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28}
!53 = !{!36, !36, i64 0}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = distinct !{!57, !55, !56}
!58 = !{!35, !39, i64 284}
!59 = !{!51, !39, i64 1240}
!60 = !{!35, !39, i64 360}
!61 = !{!35, !37, i64 372}
!62 = !{!35, !36, i64 440}
!63 = !{!35, !39, i64 48}
!64 = !{!35, !39, i64 44}
!65 = distinct !{!65, !55, !56}
!66 = !{!35, !36, i64 8}
!67 = !{!51, !36, i64 1248}
!68 = !{!43, !36, i64 136}
!69 = !{!35, !39, i64 56}
!70 = !{!35, !39, i64 52}
!71 = !{!39, !39, i64 0}
!72 = !{!51, !39, i64 128}
!73 = !{!51, !39, i64 184}
!74 = !{!75, !39, i64 848876}
!75 = !{!"video_par", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 132120, !36, i64 699416, !37, i64 699424, !39, i64 848672, !39, i64 848676, !39, i64 848680, !39, i64 848684, !36, i64 848688, !36, i64 848696, !36, i64 848704, !39, i64 848712, !39, i64 848716, !39, i64 848720, !39, i64 848724, !39, i64 848728, !36, i64 848736, !36, i64 848744, !37, i64 848752, !39, i64 848776, !39, i64 848780, !39, i64 848784, !39, i64 848788, !39, i64 848792, !36, i64 848800, !37, i64 848808, !36, i64 848832, !36, i64 848840, !37, i64 848848, !39, i64 848872, !39, i64 848876, !36, i64 848880, !36, i64 848888, !37, i64 848896, !39, i64 848920, !36, i64 848928, !36, i64 848936, !39, i64 848944, !39, i64 848948, !39, i64 848952, !39, i64 848956, !39, i64 848960, !39, i64 848964, !39, i64 848968, !39, i64 848972, !39, i64 848976, !39, i64 848980, !39, i64 848984, !39, i64 848988, !39, i64 848992, !39, i64 848996, !39, i64 849000, !39, i64 849004, !39, i64 849008, !39, i64 849012, !39, i64 849016, !39, i64 849020, !39, i64 849024, !39, i64 849028, !39, i64 849032, !39, i64 849036, !41, i64 849040, !41, i64 849042, !37, i64 849044, !39, i64 849052, !39, i64 849056, !37, i64 849060, !37, i64 849072, !39, i64 849084, !39, i64 849088, !39, i64 849092, !39, i64 849096, !39, i64 849100, !39, i64 849104, !39, i64 849108, !39, i64 849112, !39, i64 849116, !39, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !39, i64 849196, !39, i64 849200, !39, i64 849204, !39, i64 849208, !39, i64 849212, !39, i64 849216, !39, i64 849220, !39, i64 849224, !39, i64 849228, !39, i64 849232, !39, i64 849236, !39, i64 849240, !39, i64 849244, !39, i64 849248, !39, i64 849252, !39, i64 849256, !39, i64 849260, !39, i64 849264, !39, i64 849268, !39, i64 849272, !39, i64 849276, !39, i64 849280, !39, i64 849284, !36, i64 849288, !36, i64 849296, !76, i64 849304, !76, i64 849624, !76, i64 849944, !76, i64 850264, !76, i64 850584, !76, i64 850904, !76, i64 851224, !76, i64 851544, !39, i64 851864, !39, i64 851868, !39, i64 851872, !79, i64 851880, !39, i64 851888, !37, i64 851892, !39, i64 855988, !39, i64 855992, !39, i64 855996, !39, i64 856000, !39, i64 856004, !39, i64 856008, !39, i64 856012, !36, i64 856016, !36, i64 856024, !36, i64 856032, !36, i64 856040, !36, i64 856048, !37, i64 856056, !36, i64 856456, !37, i64 856464, !36, i64 856488, !36, i64 856496, !36, i64 856504, !39, i64 856512, !36, i64 856520, !37, i64 856528, !36, i64 856608, !36, i64 856616, !36, i64 856624, !36, i64 856632, !39, i64 856640, !39, i64 856644, !39, i64 856648, !36, i64 856656, !36, i64 856664, !37, i64 856672, !37, i64 856688, !36, i64 856704, !36, i64 856712, !39, i64 856720, !36, i64 856728, !36, i64 856736, !36, i64 856744, !36, i64 856752, !36, i64 856760, !36, i64 856768, !36, i64 856776, !36, i64 856784, !36, i64 856792, !36, i64 856800, !36, i64 856808, !36, i64 856816, !39, i64 856824, !36, i64 856832, !39, i64 856840, !39, i64 856844, !39, i64 856848, !39, i64 856852, !39, i64 856856, !39, i64 856860, !39, i64 856864, !36, i64 856872}
!76 = !{!"image_data", !77, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!77 = !{!"frame_format", !39, i64 0, !39, i64 4, !78, i64 8, !37, i64 16, !37, i64 28, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !39, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !39, i64 124, !39, i64 128}
!78 = !{!"double", !37, i64 0}
!79 = !{!"long", !37, i64 0}
!80 = !{!43, !39, i64 0}
!81 = distinct !{!81, !55, !56}
!82 = distinct !{!82, !55, !56}
!83 = distinct !{!83, !55, !56}
!84 = distinct !{!84, !55, !56}
!85 = distinct !{!85, !55, !56}
!86 = distinct !{!86, !55, !56}
!87 = !{!35, !39, i64 384}
!88 = !{!35, !39, i64 24}
!89 = !{!35, !41, i64 114}
!90 = distinct !{!90, !55, !56}
!91 = distinct !{!91, !55, !56}
!92 = distinct !{!92, !55, !56}
!93 = distinct !{!93, !55, !56}
!94 = !{!75, !39, i64 849216}
!95 = !{!51, !39, i64 13336}
!96 = !{!75, !39, i64 848776}
!97 = !{!35, !39, i64 96}
!98 = distinct !{!98, !55, !56}
!99 = distinct !{!99, !55, !56}
!100 = !{!35, !39, i64 40}
!101 = !{!43, !36, i64 152}
!102 = !{!43, !39, i64 388}
!103 = !{!43, !36, i64 184}
!104 = !{!43, !39, i64 4}
!105 = !{!75, !36, i64 16}
!106 = !{!107, !39, i64 3144}
!107 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !37, i64 44, !37, i64 92, !37, i64 476, !37, i64 2012, !37, i64 2036, !39, i64 2060, !39, i64 2064, !39, i64 2068, !39, i64 2072, !39, i64 2076, !39, i64 2080, !39, i64 2084, !39, i64 2088, !39, i64 2092, !37, i64 2096, !39, i64 3120, !39, i64 3124, !39, i64 3128, !39, i64 3132, !39, i64 3136, !39, i64 3140, !39, i64 3144, !39, i64 3148, !39, i64 3152, !39, i64 3156, !39, i64 3160, !39, i64 3164, !39, i64 3168, !108, i64 3172, !39, i64 4120, !39, i64 4124}
!108 = !{!"", !39, i64 0, !39, i64 4, !41, i64 8, !41, i64 10, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !109, i64 80, !39, i64 492, !109, i64 496, !39, i64 908, !39, i64 912, !39, i64 916, !39, i64 920, !39, i64 924, !39, i64 928, !39, i64 932, !39, i64 936, !39, i64 940, !39, i64 944}
!109 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !37, i64 12, !37, i64 140, !37, i64 268, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408}
!110 = !{!107, !39, i64 3136}
!111 = !{!51, !39, i64 176}
!112 = !{!43, !36, i64 232}
!113 = !{!43, !36, i64 224}
!114 = !{!43, !39, i64 96}
!115 = !{!43, !36, i64 240}
!116 = distinct !{!116, !55, !56}
!117 = distinct !{!117, !55, !56}
!118 = !{!40, !41, i64 2}
!119 = !{!43, !37, i64 40}
!120 = !{!40, !41, i64 0}
!121 = distinct !{!121, !55, !56}
!122 = distinct !{!122, !55, !56}
!123 = distinct !{!123, !55, !56}
!124 = distinct !{!124, !55, !56}
!125 = distinct !{!125, !55, !56}
!126 = distinct !{!126, !55, !56}
!127 = !{i64 0, i64 16, !47, i64 16, i64 8, !47, i64 24, i64 2, !47}
!128 = distinct !{!128, !55, !56}
!129 = distinct !{!129, !55, !56}
!130 = distinct !{!130, !55, !56}
!131 = distinct !{!131, !55, !56}
!132 = distinct !{!132, !55, !56}
!133 = distinct !{!133, !55, !56}
!134 = distinct !{!134, !55, !56}
!135 = distinct !{!135, !55, !56}
!136 = distinct !{!136, !55, !56}
!137 = distinct !{!137, !55, !56}
!138 = distinct !{!138, !55, !56}
!139 = distinct !{!139, !55, !56}
!140 = !{!51, !39, i64 132}
!141 = distinct !{!141, !55, !56}
!142 = distinct !{!142, !55, !56}
!143 = distinct !{!143, !55, !56}
!144 = distinct !{!144, !55, !56}
!145 = distinct !{!145, !55, !56}
!146 = !{!51, !36, i64 13520}
!147 = !{!51, !36, i64 1272}
!148 = !{!43, !36, i64 128}
!149 = !{!41, !41, i64 0}
!150 = distinct !{!150, !55, !56}
!151 = distinct !{!151, !55, !56}
!152 = !{!75, !39, i64 849280}
!153 = !{!75, !39, i64 849112}
!154 = !{!75, !39, i64 849108}
!155 = distinct !{!155, !55, !56}
!156 = distinct !{!156, !55, !56}
!157 = distinct !{!157, !55, !56}
!158 = !{!75, !36, i64 848832}
!159 = !{!35, !37, i64 374}
!160 = !{!79, !79, i64 0}
!161 = !{!51, !39, i64 212}
