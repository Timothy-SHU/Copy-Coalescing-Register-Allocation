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

; Function Attrs: noinline nounwind optsize uwtable
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
  %36 = tail call i32 @intrapred(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %30, i32 noundef %31, i32 noundef %33, i32 noundef %35) #9
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %65, label %38

38:                                               ; preds = %22
  %39 = shl nsw i32 %33, 2
  %40 = shl nsw i32 %35, 2
  %41 = load ptr, ptr %13, align 8, !tbaa !46
  tail call void %41(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %30, i32 noundef %31) #9
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds ptr, ptr %2, i64 %42
  %44 = load ptr, ptr %16, align 8, !tbaa !50
  %45 = getelementptr inbounds ptr, ptr %44, i64 %17
  %46 = load ptr, ptr %45, align 8, !tbaa !53
  %47 = zext nneg i32 %31 to i64
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  tail call void @copy_image_data_4x4(ptr noundef %43, ptr noundef %48, i32 noundef %39, i32 noundef %30) #9
  %49 = add nuw nsw i64 %23, 1
  %50 = icmp eq i64 %49, %19
  br i1 %50, label %51, label %22, !llvm.loop !54

51:                                               ; preds = %38
  %52 = add nuw nsw i32 %21, 1
  %53 = add nuw nsw i64 %20, 4
  %54 = add nuw nsw i64 %19, 4
  %55 = icmp eq i32 %52, 4
  br i1 %55, label %56, label %18, !llvm.loop !56

56:                                               ; preds = %51
  %57 = load i32, ptr %6, align 4, !tbaa !42
  switch i32 %57, label %58 [
    i32 0, label %59
    i32 3, label %59
  ]

58:                                               ; preds = %56
  tail call void @intra_cr_decoding(ptr noundef nonnull %0, i32 noundef %8) #9
  br label %59

59:                                               ; preds = %56, %56, %58
  %60 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %61 = load i32, ptr %60, align 4, !tbaa !57
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 76
  store i32 0, ptr %64, align 8, !tbaa !58
  br label %65

65:                                               ; preds = %22, %59, %63
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @itrans4x4(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: optsize
declare void @Inv_Residual_trans_4x4(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: optsize
declare i32 @intrapred(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_image_data_4x4(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @intra_cr_decoding(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mb_pred_intra16x16(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 48
  %5 = load i32, ptr %4, align 4, !tbaa !42
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 36
  %7 = load i32, ptr %6, align 8, !tbaa !59
  %8 = tail call i32 @intrapred16x16(ptr noundef %0, i32 noundef %1, i32 noundef %7) #9
  %9 = load i32, ptr %6, align 8, !tbaa !59
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 39
  store i8 %10, ptr %11, align 4, !tbaa !60
  tail call void @iMBtrans4x4(ptr noundef %0, i32 noundef %1, i32 noundef 0) #9
  %12 = load i32, ptr %4, align 4, !tbaa !42
  switch i32 %12, label %13 [
    i32 0, label %15
    i32 3, label %15
  ]

13:                                               ; preds = %3
  %14 = add nsw i32 %5, -1
  tail call void @intra_cr_decoding(ptr noundef nonnull %0, i32 noundef %14) #9
  br label %15

15:                                               ; preds = %3, %3, %13
  %16 = load ptr, ptr %0, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.slice, ptr %16, i64 0, i32 76
  store i32 0, ptr %17, align 8, !tbaa !58
  ret i32 1
}

; Function Attrs: optsize
declare i32 @intrapred16x16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @iMBtrans4x4(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mb_pred_intra8x8(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 48
  %7 = load i32, ptr %6, align 4, !tbaa !42
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 17
  %9 = load i32, ptr %8, align 4, !tbaa !45
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, ptr @itrans8x8, ptr @Inv_Residual_trans_8x8
  %12 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 57
  store ptr %11, ptr %12, align 8, !tbaa !61
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
  %23 = tail call i32 @intrapred8x8(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %20, i32 noundef %22) #9
  %24 = load ptr, ptr %12, align 8, !tbaa !61
  tail call void %24(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %20, i32 noundef %22) #9
  %25 = load i32, ptr %13, align 8, !tbaa !62
  %26 = add nsw i32 %25, %22
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %2, i64 %27
  %29 = load ptr, ptr %14, align 8, !tbaa !50
  %30 = getelementptr inbounds ptr, ptr %29, i64 %15
  %31 = load ptr, ptr %30, align 8, !tbaa !53
  %32 = zext nneg i32 %22 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  %34 = load i32, ptr %16, align 4, !tbaa !63
  %35 = add nsw i32 %34, %20
  tail call void @copy_image_data_8x8(ptr noundef %28, ptr noundef %33, i32 noundef %35, i32 noundef %20) #9
  %36 = add nuw nsw i32 %18, 1
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %17, !llvm.loop !64

38:                                               ; preds = %17
  %39 = load i32, ptr %6, align 4, !tbaa !42
  switch i32 %39, label %40 [
    i32 0, label %42
    i32 3, label %42
  ]

40:                                               ; preds = %38
  %41 = add nsw i32 %7, -1
  tail call void @intra_cr_decoding(ptr noundef nonnull %0, i32 noundef %41) #9
  br label %42

42:                                               ; preds = %38, %38, %40
  %43 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %44 = load i32, ptr %43, align 4, !tbaa !57
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 76
  store i32 0, ptr %47, align 8, !tbaa !58
  br label %48

48:                                               ; preds = %46, %42
  ret i32 1
}

; Function Attrs: optsize
declare void @itrans8x8(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: optsize
declare void @Inv_Residual_trans_8x8(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: optsize
declare i32 @intrapred8x8(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_image_data_8x8(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mb_pred_skip(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %0) #10
  tail call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #9
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !62
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds ptr, ptr %2, i64 %10
  %12 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 77
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  %14 = zext i32 %1 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 8
  %18 = load i32, ptr %17, align 4, !tbaa !63
  tail call void @copy_image_data_16x16(ptr noundef %11, ptr noundef %16, i32 noundef %18, i32 noundef 0) #9
  %19 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 48
  %20 = load i32, ptr %19, align 4, !tbaa !42
  switch i32 %20, label %21 [
    i32 0, label %50
    i32 3, label %50
  ]

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 33
  %23 = load ptr, ptr %22, align 8, !tbaa !67
  %24 = load ptr, ptr %23, align 8, !tbaa !53
  %25 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 11
  %26 = load i32, ptr %25, align 8, !tbaa !68
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %24, i64 %27
  %29 = load ptr, ptr %12, align 8, !tbaa !66
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !53
  %32 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 10
  %33 = load i32, ptr %32, align 4, !tbaa !69
  %34 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 81, i64 1
  %35 = load i32, ptr %34, align 4, !tbaa !70
  %36 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 81, i64 1, i64 1
  %37 = load i32, ptr %36, align 4, !tbaa !70
  tail call void @copy_image_data(ptr noundef %28, ptr noundef %31, i32 noundef %33, i32 noundef 0, i32 noundef %35, i32 noundef %37) #9
  %38 = load ptr, ptr %22, align 8, !tbaa !67
  %39 = getelementptr inbounds ptr, ptr %38, i64 1
  %40 = load ptr, ptr %39, align 8, !tbaa !53
  %41 = load i32, ptr %25, align 8, !tbaa !68
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %40, i64 %42
  %44 = load ptr, ptr %12, align 8, !tbaa !66
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8, !tbaa !53
  %47 = load i32, ptr %32, align 4, !tbaa !69
  %48 = load i32, ptr %34, align 4, !tbaa !70
  %49 = load i32, ptr %36, align 4, !tbaa !70
  tail call void @copy_image_data(ptr noundef %43, ptr noundef %46, i32 noundef %47, i32 noundef 0, i32 noundef %48, i32 noundef %49) #9
  br label %50

50:                                               ; preds = %4, %4, %21
  ret i32 1
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_chroma_vector(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !71 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 25
  %6 = load i32, ptr %5, align 8, !tbaa !72
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %75

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 38
  %10 = load i32, ptr %9, align 8, !tbaa !73
  switch i32 %10, label %61 [
    i32 1, label %13
    i32 2, label %11
  ]

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 33
  br label %38

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 33
  br label %15

15:                                               ; preds = %13, %37
  %16 = phi i1 [ true, %13 ], [ false, %37 ]
  %17 = phi i64 [ 0, %13 ], [ 1, %37 ]
  %18 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 55, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !47
  %20 = icmp sgt i8 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 56, i64 %17
  br label %23

23:                                               ; preds = %21, %23
  %24 = phi i64 [ 0, %21 ], [ %33, %23 ]
  %25 = load i32, ptr %14, align 4, !tbaa !74
  %26 = load ptr, ptr %22, align 8, !tbaa !53
  %27 = getelementptr inbounds ptr, ptr %26, i64 %24
  %28 = load ptr, ptr %27, align 8, !tbaa !53
  %29 = load i32, ptr %28, align 8, !tbaa !80
  %30 = icmp eq i32 %25, %29
  %31 = select i1 %30, i8 0, i8 -2
  %32 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 129, i64 %17, i64 %24
  store i8 %31, ptr %32, align 1
  %33 = add nuw nsw i64 %24, 1
  %34 = load i8, ptr %18, align 1, !tbaa !47
  %35 = sext i8 %34 to i64
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %23, label %37, !llvm.loop !81

37:                                               ; preds = %23, %15
  br i1 %16, label %15, label %131, !llvm.loop !82

38:                                               ; preds = %11, %60
  %39 = phi i1 [ true, %11 ], [ false, %60 ]
  %40 = phi i64 [ 0, %11 ], [ 1, %60 ]
  %41 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 55, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !47
  %43 = icmp sgt i8 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %38
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
  %54 = select i1 %53, i8 0, i8 2
  %55 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 129, i64 %40, i64 %47
  store i8 %54, ptr %55, align 1
  %56 = add nuw nsw i64 %47, 1
  %57 = load i8, ptr %41, align 1, !tbaa !47
  %58 = sext i8 %57 to i64
  %59 = icmp slt i64 %56, %58
  br i1 %59, label %46, label %60, !llvm.loop !83

60:                                               ; preds = %46, %38
  br i1 %39, label %38, label %131, !llvm.loop !84

61:                                               ; preds = %8, %74
  %62 = phi i1 [ false, %74 ], [ true, %8 ]
  %63 = phi i64 [ 1, %74 ], [ 0, %8 ]
  %64 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 55, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !47
  %66 = icmp sgt i8 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %61, %67
  %68 = phi i64 [ %70, %67 ], [ 0, %61 ]
  %69 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 129, i64 %63, i64 %68
  store i8 0, ptr %69, align 1, !tbaa !47
  %70 = add nuw nsw i64 %68, 1
  %71 = load i8, ptr %64, align 1, !tbaa !47
  %72 = sext i8 %71 to i64
  %73 = icmp slt i64 %70, %72
  br i1 %73, label %67, label %74, !llvm.loop !85

74:                                               ; preds = %67, %61
  br i1 %62, label %61, label %131, !llvm.loop !86

75:                                               ; preds = %1
  %76 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %77 = load i32, ptr %76, align 8, !tbaa !87
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %117, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %81 = load i32, ptr %80, align 8, !tbaa !88
  %82 = and i32 %81, 1
  %83 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %84 = load i16, ptr %83, align 2, !tbaa !89
  %85 = sext i16 %84 to i64
  %86 = icmp eq i32 %82, 0
  %87 = sext i16 %84 to i64
  %88 = add nsw i64 %85, 1
  br label %89

89:                                               ; preds = %79, %114
  %90 = phi i64 [ %87, %79 ], [ %115, %114 ]
  %91 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 55, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !47
  %93 = icmp sgt i8 %92, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 56, i64 %90
  br label %96

96:                                               ; preds = %94, %107
  %97 = phi i64 [ 0, %94 ], [ %110, %107 ]
  %98 = load ptr, ptr %95, align 8, !tbaa !53
  %99 = getelementptr inbounds ptr, ptr %98, i64 %97
  %100 = load ptr, ptr %99, align 8, !tbaa !53
  %101 = load i32, ptr %100, align 8, !tbaa !80
  br i1 %86, label %102, label %104

102:                                              ; preds = %96
  %103 = icmp eq i32 %101, 2
  br i1 %103, label %107, label %106

104:                                              ; preds = %96
  %105 = icmp eq i32 %101, 1
  br i1 %105, label %107, label %106

106:                                              ; preds = %102, %104
  br label %107

107:                                              ; preds = %104, %102, %106
  %108 = phi i8 [ 0, %106 ], [ -2, %102 ], [ 2, %104 ]
  %109 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 129, i64 %90, i64 %97
  store i8 %108, ptr %109, align 1, !tbaa !47
  %110 = add nuw nsw i64 %97, 1
  %111 = load i8, ptr %91, align 1, !tbaa !47
  %112 = sext i8 %111 to i64
  %113 = icmp slt i64 %110, %112
  br i1 %113, label %96, label %114, !llvm.loop !90

114:                                              ; preds = %107, %89
  %115 = add nsw i64 %90, 1
  %116 = icmp eq i64 %90, %88
  br i1 %116, label %131, label %89, !llvm.loop !91

117:                                              ; preds = %75, %130
  %118 = phi i1 [ false, %130 ], [ true, %75 ]
  %119 = phi i64 [ 1, %130 ], [ 0, %75 ]
  %120 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 55, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !47
  %122 = icmp sgt i8 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %117, %123
  %124 = phi i64 [ %126, %123 ], [ 0, %117 ]
  %125 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 129, i64 %119, i64 %124
  store i8 0, ptr %125, align 1, !tbaa !47
  %126 = add nuw nsw i64 %124, 1
  %127 = load i8, ptr %120, align 1, !tbaa !47
  %128 = sext i8 %127 to i64
  %129 = icmp slt i64 %126, %128
  br i1 %129, label %123, label %130, !llvm.loop !92

130:                                              ; preds = %123, %117
  br i1 %118, label %117, label %131, !llvm.loop !93

131:                                              ; preds = %114, %130, %60, %37, %74
  %132 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 38
  %133 = load i32, ptr %132, align 8, !tbaa !73
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %137 = load i32, ptr %136, align 8, !tbaa !87
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %135, %131
  %140 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 89
  %141 = load i32, ptr %140, align 8, !tbaa !94
  %142 = ashr i32 %141, 1
  br label %146

143:                                              ; preds = %135
  %144 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 89
  %145 = load i32, ptr %144, align 8, !tbaa !94
  br label %146

146:                                              ; preds = %143, %139
  %147 = phi i32 [ %142, %139 ], [ %145, %143 ]
  %148 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 109
  store i32 %147, ptr %148, align 8, !tbaa !95
  ret void
}

; Function Attrs: optsize
declare void @perform_mc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_image_data_16x16(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_image_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mb_pred_sp_skip(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @set_chroma_vector(ptr noundef %0) #10
  tail call void @perform_mc(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #9
  tail call void @iTransform(ptr noundef %0, i32 noundef %1, i32 noundef 1) #9
  ret i32 1
}

; Function Attrs: optsize
declare void @iTransform(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mb_pred_p_inter8x8(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !65
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
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %0) #10
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
  tail call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %24, i32 noundef %58, i32 noundef %60, i32 noundef %45, i32 noundef %48) #9
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
  tail call void @iTransform(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %16) #9
  %69 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %70 = load i32, ptr %69, align 4, !tbaa !57
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 76
  store i32 0, ptr %73, align 8, !tbaa !58
  br label %74

74:                                               ; preds = %72, %68
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mb_pred_p_inter16x16(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 22
  %7 = load i32, ptr %6, align 8, !tbaa !96
  %8 = icmp eq i32 %7, 3
  %9 = zext i1 %8 to i32
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %0) #10
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  %12 = load i8, ptr %11, align 8, !tbaa !47
  %13 = sext i8 %12 to i32
  tail call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %13, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #9
  tail call void @iTransform(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %9) #9
  %14 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %15 = load i32, ptr %14, align 4, !tbaa !57
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 76
  store i32 0, ptr %18, align 8, !tbaa !58
  br label %19

19:                                               ; preds = %17, %3
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mb_pred_p_inter16x8(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 22
  %7 = load i32, ptr %6, align 8, !tbaa !96
  %8 = icmp eq i32 %7, 3
  %9 = zext i1 %8 to i32
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %0) #10
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  %12 = load i8, ptr %11, align 8, !tbaa !47
  %13 = sext i8 %12 to i32
  tail call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %13, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 8) #9
  %14 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38, i64 2
  %15 = load i8, ptr %14, align 2, !tbaa !47
  %16 = sext i8 %15 to i32
  tail call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %16, i32 noundef 0, i32 noundef 2, i32 noundef 16, i32 noundef 8) #9
  tail call void @iTransform(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %9) #9
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %18 = load i32, ptr %17, align 4, !tbaa !57
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 76
  store i32 0, ptr %21, align 8, !tbaa !58
  br label %22

22:                                               ; preds = %20, %3
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mb_pred_p_inter8x16(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 22
  %7 = load i32, ptr %6, align 8, !tbaa !96
  %8 = icmp eq i32 %7, 3
  %9 = zext i1 %8 to i32
  %10 = load ptr, ptr %0, align 8, !tbaa !34
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %0) #10
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38
  %12 = load i8, ptr %11, align 8, !tbaa !47
  %13 = sext i8 %12 to i32
  tail call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %13, i32 noundef 0, i32 noundef 0, i32 noundef 8, i32 noundef 16) #9
  %14 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !47
  %16 = sext i8 %15 to i32
  tail call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %16, i32 noundef 2, i32 noundef 0, i32 noundef 8, i32 noundef 16) #9
  tail call void @iTransform(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %9) #9
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %18 = load i32, ptr %17, align 4, !tbaa !57
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 76
  store i32 0, ptr %21, align 8, !tbaa !58
  br label %22

22:                                               ; preds = %20, %3
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mb_pred_b_d8x8temporal(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %9 = load i16, ptr %8, align 2, !tbaa !89
  %10 = sext i16 %9 to i64
  %11 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 56, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = add nsw i64 %10, 1
  %14 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 56, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %0) #10
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
  %28 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 36
  %29 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 38
  %30 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 27
  %31 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 55, i64 %10
  br label %32

32:                                               ; preds = %4, %397
  %33 = phi i64 [ 0, %4 ], [ %404, %397 ]
  %34 = phi i64 [ 4, %4 ], [ %406, %397 ]
  %35 = phi i64 [ 0, %4 ], [ %405, %397 ]
  %36 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38, i64 %33
  %37 = load i8, ptr %36, align 1, !tbaa !47
  %38 = sext i8 %37 to i32
  br label %39

39:                                               ; preds = %32, %385
  %40 = phi i64 [ %35, %32 ], [ %395, %385 ]
  %41 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !47
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 3
  %45 = lshr i32 %43, 2
  %46 = and i32 %45, 3
  %47 = load i32, ptr %16, align 8, !tbaa !48
  %48 = add nsw i32 %44, %47
  %49 = load i32, ptr %17, align 4, !tbaa !49
  %50 = add nsw i32 %46, %49
  %51 = load i32, ptr %18, align 8, !tbaa !100
  %52 = add nsw i32 %51, %46
  %53 = load ptr, ptr %19, align 8, !tbaa !101
  %54 = sext i32 %50 to i64
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !53
  %57 = sext i32 %48 to i64
  %58 = getelementptr inbounds %struct.pic_motion_params, ptr %56, i64 %57
  %59 = load ptr, ptr %15, align 8, !tbaa !53
  %60 = getelementptr inbounds %struct.storable_picture, ptr %59, i64 0, i32 35
  %61 = load ptr, ptr %60, align 8, !tbaa !101
  %62 = tail call fastcc i32 @RSD(i32 noundef %52) #10
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %61, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !53
  %66 = tail call fastcc i32 @RSD(i32 noundef %48) #10
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.pic_motion_params, ptr %65, i64 %67
  %69 = load i32, ptr %20, align 8, !tbaa !72
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %128, label %71

71:                                               ; preds = %39
  %72 = load i32, ptr %21, align 8, !tbaa !87
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %222

74:                                               ; preds = %71
  %75 = load ptr, ptr %22, align 8, !tbaa !53
  %76 = load ptr, ptr %75, align 8, !tbaa !53
  %77 = getelementptr inbounds %struct.storable_picture, ptr %76, i64 0, i32 73
  %78 = load i32, ptr %77, align 4, !tbaa !102
  switch i32 %78, label %222 [
    i32 3, label %79
    i32 1, label %87
  ]

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.storable_picture, ptr %76, i64 0, i32 37
  %81 = load ptr, ptr %80, align 8, !tbaa !103
  %82 = load i32, ptr %23, align 8, !tbaa !88
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, ptr %81, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !47
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %222, label %87

87:                                               ; preds = %74, %79
  %88 = load i32, ptr %24, align 4, !tbaa !104
  %89 = load ptr, ptr %25, align 8, !tbaa !53
  %90 = load ptr, ptr %89, align 8, !tbaa !53
  %91 = getelementptr inbounds %struct.storable_picture, ptr %90, i64 0, i32 1
  %92 = load i32, ptr %91, align 4, !tbaa !104
  %93 = sub nsw i32 %88, %92
  %94 = tail call fastcc i32 @iabs(i32 noundef %93) #10
  %95 = load ptr, ptr %26, align 8, !tbaa !53
  %96 = load ptr, ptr %95, align 8, !tbaa !53
  %97 = getelementptr inbounds %struct.storable_picture, ptr %96, i64 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !104
  %99 = sub nsw i32 %88, %98
  %100 = tail call fastcc i32 @iabs(i32 noundef %99) #10
  %101 = icmp sgt i32 %94, %100
  %102 = load ptr, ptr %27, align 8, !tbaa !105
  %103 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %102, i64 0, i32 32
  %104 = load i32, ptr %103, align 4, !tbaa !106
  %105 = icmp eq i32 %104, 0
  br i1 %101, label %106, label %117

106:                                              ; preds = %87
  %107 = getelementptr inbounds %struct.storable_picture, ptr %96, i64 0, i32 35
  %108 = load ptr, ptr %107, align 8, !tbaa !101
  br i1 %105, label %113, label %109

109:                                              ; preds = %106
  %110 = ashr i32 %62, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds ptr, ptr %108, i64 %111
  br label %217

113:                                              ; preds = %106
  %114 = ashr i32 %52, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds ptr, ptr %108, i64 %115
  br label %217

117:                                              ; preds = %87
  %118 = getelementptr inbounds %struct.storable_picture, ptr %90, i64 0, i32 35
  %119 = load ptr, ptr %118, align 8, !tbaa !101
  br i1 %105, label %124, label %120

120:                                              ; preds = %117
  %121 = ashr i32 %62, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds ptr, ptr %119, i64 %122
  br label %217

124:                                              ; preds = %117
  %125 = ashr i32 %52, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds ptr, ptr %119, i64 %126
  br label %217

128:                                              ; preds = %39
  %129 = load ptr, ptr %27, align 8, !tbaa !105
  %130 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %129, i64 0, i32 30
  %131 = load i32, ptr %130, align 4, !tbaa !110
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %222

133:                                              ; preds = %128
  %134 = load i32, ptr %28, align 8, !tbaa !111
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %182

136:                                              ; preds = %133
  %137 = load ptr, ptr %22, align 8, !tbaa !53
  %138 = load ptr, ptr %137, align 8, !tbaa !53
  %139 = getelementptr inbounds %struct.storable_picture, ptr %138, i64 0, i32 73
  %140 = load i32, ptr %139, align 4, !tbaa !102
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %222, label %142

142:                                              ; preds = %136
  %143 = load i32, ptr %24, align 4, !tbaa !104
  %144 = getelementptr inbounds %struct.storable_picture, ptr %59, i64 0, i32 41
  %145 = load ptr, ptr %144, align 8, !tbaa !112
  %146 = getelementptr inbounds %struct.storable_picture, ptr %145, i64 0, i32 1
  %147 = load i32, ptr %146, align 4, !tbaa !104
  %148 = sub nsw i32 %143, %147
  %149 = tail call fastcc i32 @iabs(i32 noundef %148) #10
  %150 = getelementptr inbounds %struct.storable_picture, ptr %59, i64 0, i32 40
  %151 = load ptr, ptr %150, align 8, !tbaa !113
  %152 = getelementptr inbounds %struct.storable_picture, ptr %151, i64 0, i32 1
  %153 = load i32, ptr %152, align 4, !tbaa !104
  %154 = sub nsw i32 %143, %153
  %155 = tail call fastcc i32 @iabs(i32 noundef %154) #10
  %156 = icmp sgt i32 %149, %155
  %157 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %129, i64 0, i32 32
  %158 = load i32, ptr %157, align 4, !tbaa !106
  %159 = icmp eq i32 %158, 0
  br i1 %156, label %160, label %171

160:                                              ; preds = %142
  %161 = getelementptr inbounds %struct.storable_picture, ptr %151, i64 0, i32 35
  %162 = load ptr, ptr %161, align 8, !tbaa !101
  br i1 %159, label %167, label %163

163:                                              ; preds = %160
  %164 = ashr i32 %62, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds ptr, ptr %162, i64 %165
  br label %217

167:                                              ; preds = %160
  %168 = ashr i32 %52, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds ptr, ptr %162, i64 %169
  br label %217

171:                                              ; preds = %142
  %172 = getelementptr inbounds %struct.storable_picture, ptr %145, i64 0, i32 35
  %173 = load ptr, ptr %172, align 8, !tbaa !101
  br i1 %159, label %178, label %174

174:                                              ; preds = %171
  %175 = ashr i32 %62, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds ptr, ptr %173, i64 %176
  br label %217

178:                                              ; preds = %171
  %179 = ashr i32 %52, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds ptr, ptr %173, i64 %180
  br label %217

182:                                              ; preds = %133
  %183 = load i32, ptr %29, align 8, !tbaa !73
  %184 = load i32, ptr %59, align 8, !tbaa !80
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %222, label %186

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.storable_picture, ptr %59, i64 0, i32 24
  %188 = load i32, ptr %187, align 8, !tbaa !114
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %222, label %190

190:                                              ; preds = %186
  %191 = icmp eq i32 %183, 1
  %192 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %129, i64 0, i32 32
  %193 = load i32, ptr %192, align 4, !tbaa !106
  %194 = icmp eq i32 %193, 0
  %195 = getelementptr inbounds %struct.storable_picture, ptr %59, i64 0, i32 42
  %196 = load ptr, ptr %195, align 8, !tbaa !115
  br i1 %191, label %197, label %207

197:                                              ; preds = %190
  %198 = getelementptr inbounds %struct.storable_picture, ptr %196, i64 0, i32 40
  %199 = load ptr, ptr %198, align 8, !tbaa !113
  %200 = getelementptr inbounds %struct.storable_picture, ptr %199, i64 0, i32 35
  %201 = load ptr, ptr %200, align 8, !tbaa !101
  br i1 %194, label %204, label %202

202:                                              ; preds = %197
  %203 = getelementptr inbounds ptr, ptr %201, i64 %63
  br label %217

204:                                              ; preds = %197
  %205 = sext i32 %52 to i64
  %206 = getelementptr inbounds ptr, ptr %201, i64 %205
  br label %217

207:                                              ; preds = %190
  %208 = getelementptr inbounds %struct.storable_picture, ptr %196, i64 0, i32 41
  %209 = load ptr, ptr %208, align 8, !tbaa !112
  %210 = getelementptr inbounds %struct.storable_picture, ptr %209, i64 0, i32 35
  %211 = load ptr, ptr %210, align 8, !tbaa !101
  br i1 %194, label %214, label %212

212:                                              ; preds = %207
  %213 = getelementptr inbounds ptr, ptr %211, i64 %63
  br label %217

214:                                              ; preds = %207
  %215 = sext i32 %52 to i64
  %216 = getelementptr inbounds ptr, ptr %211, i64 %215
  br label %217

217:                                              ; preds = %113, %109, %124, %120, %167, %163, %178, %174, %204, %202, %214, %212
  %218 = phi ptr [ %213, %212 ], [ %216, %214 ], [ %203, %202 ], [ %206, %204 ], [ %177, %174 ], [ %181, %178 ], [ %166, %163 ], [ %170, %167 ], [ %123, %120 ], [ %127, %124 ], [ %112, %109 ], [ %116, %113 ]
  %219 = phi i64 [ %67, %212 ], [ %57, %214 ], [ %67, %202 ], [ %57, %204 ], [ %67, %174 ], [ %57, %178 ], [ %67, %163 ], [ %57, %167 ], [ %67, %120 ], [ %57, %124 ], [ %67, %109 ], [ %57, %113 ]
  %220 = load ptr, ptr %218, align 8, !tbaa !53
  %221 = getelementptr inbounds %struct.pic_motion_params, ptr %220, i64 %219
  br label %222

222:                                              ; preds = %217, %136, %74, %79, %128, %186, %182, %71
  %223 = phi ptr [ %68, %71 ], [ %68, %186 ], [ %68, %182 ], [ %68, %128 ], [ %68, %79 ], [ %68, %74 ], [ %68, %136 ], [ %221, %217 ]
  %224 = getelementptr inbounds %struct.pic_motion_params, ptr %223, i64 0, i32 2
  %225 = load i8, ptr %224, align 8, !tbaa !47
  %226 = icmp eq i8 %225, -1
  %227 = zext i1 %226 to i64
  %228 = getelementptr inbounds %struct.pic_motion_params, ptr %223, i64 0, i32 2, i64 %227
  %229 = load i8, ptr %228, align 1, !tbaa !47
  %230 = icmp eq i8 %229, -1
  br i1 %230, label %231, label %233

231:                                              ; preds = %222
  %232 = getelementptr inbounds %struct.pic_motion_params, ptr %56, i64 %57, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %232, i8 0, i64 10, i1 false)
  br label %385

233:                                              ; preds = %222
  br i1 %70, label %243, label %234

234:                                              ; preds = %233
  %235 = load i32, ptr %21, align 8, !tbaa !87
  %236 = icmp eq i32 %235, 0
  %237 = getelementptr inbounds [2 x ptr], ptr %223, i64 0, i64 %227
  %238 = load ptr, ptr %237, align 8, !tbaa !53
  %239 = load i32, ptr %238, align 8, !tbaa !80
  %240 = icmp eq i32 %239, 0
  br i1 %236, label %242, label %241

241:                                              ; preds = %234
  br i1 %240, label %255, label %283

242:                                              ; preds = %234
  br i1 %240, label %283, label %255

243:                                              ; preds = %233
  %244 = load i32, ptr %28, align 8, !tbaa !111
  switch i32 %244, label %283 [
    i32 0, label %245
    i32 1, label %250
  ]

245:                                              ; preds = %243
  %246 = getelementptr inbounds [2 x ptr], ptr %223, i64 0, i64 %227
  %247 = load ptr, ptr %246, align 8, !tbaa !53
  %248 = load i32, ptr %247, align 8, !tbaa !80
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %283, label %255

250:                                              ; preds = %243
  %251 = getelementptr inbounds [2 x ptr], ptr %223, i64 0, i64 %227
  %252 = load ptr, ptr %251, align 8, !tbaa !53
  %253 = load i32, ptr %252, align 8, !tbaa !80
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %283

255:                                              ; preds = %250, %245, %242, %241
  %256 = phi ptr [ %252, %250 ], [ %247, %245 ], [ %238, %242 ], [ %238, %241 ]
  %257 = load i32, ptr %30, align 8, !tbaa !70
  %258 = load i8, ptr %31, align 1, !tbaa !47
  %259 = sext i8 %258 to i32
  %260 = tail call fastcc i32 @imin(i32 noundef %257, i32 noundef %259) #10
  %261 = icmp sgt i32 %260, 0
  br i1 %261, label %262, label %306

262:                                              ; preds = %255
  %263 = load ptr, ptr %11, align 8, !tbaa !53
  %264 = zext nneg i32 %260 to i64
  br label %265

265:                                              ; preds = %262, %280
  %266 = phi i64 [ 0, %262 ], [ %281, %280 ]
  %267 = getelementptr inbounds ptr, ptr %263, i64 %266
  %268 = load ptr, ptr %267, align 8, !tbaa !53
  %269 = getelementptr inbounds %struct.storable_picture, ptr %268, i64 0, i32 40
  %270 = load ptr, ptr %269, align 8, !tbaa !113
  %271 = icmp eq ptr %270, %256
  br i1 %271, label %304, label %272

272:                                              ; preds = %265
  %273 = getelementptr inbounds %struct.storable_picture, ptr %268, i64 0, i32 41
  %274 = load ptr, ptr %273, align 8, !tbaa !112
  %275 = icmp eq ptr %274, %256
  br i1 %275, label %304, label %276

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.storable_picture, ptr %268, i64 0, i32 42
  %278 = load ptr, ptr %277, align 8, !tbaa !115
  %279 = icmp eq ptr %278, %256
  br i1 %279, label %304, label %280

280:                                              ; preds = %276
  %281 = add nuw nsw i64 %266, 1
  %282 = icmp eq i64 %281, %264
  br i1 %282, label %380, label %265, !llvm.loop !116

283:                                              ; preds = %243, %245, %242, %241, %250
  %284 = load i32, ptr %30, align 8, !tbaa !70
  %285 = load i8, ptr %31, align 1, !tbaa !47
  %286 = sext i8 %285 to i32
  %287 = tail call fastcc i32 @imin(i32 noundef %284, i32 noundef %286) #10
  %288 = icmp sgt i32 %287, 0
  br i1 %288, label %289, label %306

289:                                              ; preds = %283
  %290 = load ptr, ptr %11, align 8, !tbaa !53
  %291 = getelementptr inbounds [2 x ptr], ptr %223, i64 0, i64 %227
  %292 = load ptr, ptr %291, align 8, !tbaa !53
  %293 = zext nneg i32 %287 to i64
  br label %294

294:                                              ; preds = %289, %299
  %295 = phi i64 [ 0, %289 ], [ %300, %299 ]
  %296 = getelementptr inbounds ptr, ptr %290, i64 %295
  %297 = load ptr, ptr %296, align 8, !tbaa !53
  %298 = icmp eq ptr %297, %292
  br i1 %298, label %302, label %299

299:                                              ; preds = %294
  %300 = add nuw nsw i64 %295, 1
  %301 = icmp eq i64 %300, %293
  br i1 %301, label %380, label %294, !llvm.loop !117

302:                                              ; preds = %294
  %303 = trunc i64 %295 to i32
  br label %306

304:                                              ; preds = %276, %272, %265
  %305 = trunc i64 %266 to i32
  br label %306

306:                                              ; preds = %304, %283, %255, %302
  %307 = phi i32 [ %303, %302 ], [ 0, %283 ], [ 0, %255 ], [ %305, %304 ]
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 60, i64 %10, i64 %308
  %310 = load i32, ptr %309, align 4, !tbaa !70
  %311 = getelementptr inbounds %struct.pic_motion_params, ptr %223, i64 0, i32 1, i64 %227
  %312 = getelementptr inbounds %struct.pic_motion_params, ptr %223, i64 0, i32 1, i64 %227, i32 1
  %313 = load i16, ptr %312, align 2, !tbaa !118
  %314 = sext i16 %313 to i32
  br i1 %70, label %323, label %315

315:                                              ; preds = %306
  %316 = load i32, ptr %21, align 8, !tbaa !87
  %317 = icmp eq i32 %316, 0
  %318 = getelementptr inbounds [2 x ptr], ptr %223, i64 0, i64 %227
  %319 = load ptr, ptr %318, align 8, !tbaa !53
  %320 = load i32, ptr %319, align 8, !tbaa !80
  %321 = icmp eq i32 %320, 0
  br i1 %317, label %322, label %332

322:                                              ; preds = %315
  br i1 %321, label %341, label %330

323:                                              ; preds = %306
  %324 = load i32, ptr %28, align 8, !tbaa !111
  switch i32 %324, label %341 [
    i32 0, label %325
    i32 1, label %333
  ]

325:                                              ; preds = %323
  %326 = getelementptr inbounds [2 x ptr], ptr %223, i64 0, i64 %227
  %327 = load ptr, ptr %326, align 8, !tbaa !53
  %328 = load i32, ptr %327, align 8, !tbaa !80
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %341, label %330

330:                                              ; preds = %325, %322
  %331 = shl nsw i32 %314, 1
  br label %341

332:                                              ; preds = %315
  br i1 %321, label %338, label %341

333:                                              ; preds = %323
  %334 = getelementptr inbounds [2 x ptr], ptr %223, i64 0, i64 %227
  %335 = load ptr, ptr %334, align 8, !tbaa !53
  %336 = load i32, ptr %335, align 8, !tbaa !80
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %341

338:                                              ; preds = %333, %332
  %339 = sdiv i16 %313, 2
  %340 = sext i16 %339 to i32
  br label %341

341:                                              ; preds = %323, %325, %322, %332, %333, %338, %330
  %342 = phi i32 [ %340, %338 ], [ %314, %333 ], [ %331, %330 ], [ %314, %332 ], [ %314, %322 ], [ %314, %325 ], [ %314, %323 ]
  %343 = icmp eq i32 %310, 9999
  br i1 %343, label %351, label %344

344:                                              ; preds = %341
  %345 = load ptr, ptr %11, align 8, !tbaa !53
  %346 = getelementptr inbounds ptr, ptr %345, i64 %308
  %347 = load ptr, ptr %346, align 8, !tbaa !53
  %348 = getelementptr inbounds %struct.storable_picture, ptr %347, i64 0, i32 10
  %349 = load i8, ptr %348, align 8, !tbaa !119
  %350 = icmp eq i8 %349, 0
  br i1 %350, label %357, label %351

351:                                              ; preds = %344, %341
  %352 = load i16, ptr %311, align 4, !tbaa !120
  %353 = getelementptr inbounds %struct.pic_motion_params, ptr %56, i64 %57, i32 1
  store i16 %352, ptr %353, align 8, !tbaa !120
  %354 = trunc i32 %342 to i16
  %355 = getelementptr inbounds %struct.MotionVector, ptr %353, i64 0, i32 1
  store i16 %354, ptr %355, align 2, !tbaa !118
  %356 = getelementptr inbounds %struct.pic_motion_params, ptr %56, i64 %57, i32 1, i64 1
  store i32 0, ptr %356, align 4
  br label %376

357:                                              ; preds = %344
  %358 = load i16, ptr %311, align 4, !tbaa !120
  %359 = sext i16 %358 to i32
  %360 = mul nsw i32 %310, %359
  %361 = add nsw i32 %360, 128
  %362 = lshr i32 %361, 8
  %363 = trunc i32 %362 to i16
  %364 = getelementptr inbounds %struct.pic_motion_params, ptr %56, i64 %57, i32 1
  store i16 %363, ptr %364, align 8, !tbaa !120
  %365 = mul nsw i32 %342, %310
  %366 = add nsw i32 %365, 128
  %367 = lshr i32 %366, 8
  %368 = trunc i32 %367 to i16
  %369 = getelementptr inbounds %struct.MotionVector, ptr %364, i64 0, i32 1
  store i16 %368, ptr %369, align 2, !tbaa !118
  %370 = load i16, ptr %311, align 4, !tbaa !120
  %371 = sub i16 %363, %370
  %372 = getelementptr inbounds %struct.pic_motion_params, ptr %56, i64 %57, i32 1, i64 1
  store i16 %371, ptr %372, align 4, !tbaa !120
  %373 = sub i32 %367, %342
  %374 = trunc i32 %373 to i16
  %375 = getelementptr inbounds %struct.pic_motion_params, ptr %56, i64 %57, i32 1, i64 1, i32 1
  store i16 %374, ptr %375, align 2, !tbaa !118
  br label %376

376:                                              ; preds = %357, %351
  %377 = trunc i32 %307 to i8
  %378 = getelementptr inbounds %struct.pic_motion_params, ptr %56, i64 %57, i32 2
  store i8 %377, ptr %378, align 8, !tbaa !47
  %379 = getelementptr inbounds %struct.pic_motion_params, ptr %56, i64 %57, i32 2, i64 1
  store i8 0, ptr %379, align 1, !tbaa !47
  br label %385

380:                                              ; preds = %280, %299
  tail call void @error(ptr noundef nonnull @.str, i32 noundef -1111) #9
  %381 = getelementptr inbounds %struct.pic_motion_params, ptr %56, i64 %57, i32 2
  %382 = load i8, ptr %381, align 8, !tbaa !47
  %383 = getelementptr inbounds %struct.pic_motion_params, ptr %56, i64 %57, i32 2, i64 1
  %384 = load i8, ptr %383, align 1, !tbaa !47
  br label %385

385:                                              ; preds = %376, %380, %231
  %386 = phi i8 [ 0, %376 ], [ %384, %380 ], [ 0, %231 ]
  %387 = phi i8 [ %377, %376 ], [ %382, %380 ], [ 0, %231 ]
  %388 = sext i8 %387 to i64
  %389 = getelementptr inbounds ptr, ptr %12, i64 %388
  %390 = load ptr, ptr %389, align 8, !tbaa !53
  store ptr %390, ptr %58, align 8, !tbaa !53
  %391 = sext i8 %386 to i64
  %392 = getelementptr inbounds ptr, ptr %15, i64 %391
  %393 = load ptr, ptr %392, align 8, !tbaa !53
  %394 = getelementptr inbounds [2 x ptr], ptr %58, i64 0, i64 1
  store ptr %393, ptr %394, align 8, !tbaa !53
  %395 = add nuw nsw i64 %40, 1
  %396 = icmp eq i64 %395, %34
  br i1 %396, label %397, label %39, !llvm.loop !121

397:                                              ; preds = %385
  %398 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %35
  %399 = load i8, ptr %398, align 4, !tbaa !47
  %400 = zext i8 %399 to i32
  %401 = and i32 %400, 3
  %402 = lshr i32 %400, 2
  %403 = and i32 %402, 3
  tail call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3, i32 noundef %38, i32 noundef %401, i32 noundef %403, i32 noundef 8, i32 noundef 8) #9
  %404 = add nuw nsw i64 %33, 1
  %405 = add nuw nsw i64 %35, 4
  %406 = add nuw nsw i64 %34, 4
  %407 = icmp eq i64 %404, 4
  br i1 %407, label %408, label %32, !llvm.loop !122

408:                                              ; preds = %397
  %409 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %410 = load i32, ptr %409, align 4, !tbaa !57
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %455

412:                                              ; preds = %408
  %413 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 9
  %414 = load i32, ptr %413, align 8, !tbaa !62
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds ptr, ptr %2, i64 %415
  %417 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 77
  %418 = load ptr, ptr %417, align 8, !tbaa !66
  %419 = zext i32 %1 to i64
  %420 = getelementptr inbounds ptr, ptr %418, i64 %419
  %421 = load ptr, ptr %420, align 8, !tbaa !53
  %422 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 8
  %423 = load i32, ptr %422, align 4, !tbaa !63
  tail call void @copy_image_data_16x16(ptr noundef %416, ptr noundef %421, i32 noundef %423, i32 noundef 0) #9
  %424 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 48
  %425 = load i32, ptr %424, align 4, !tbaa !42
  switch i32 %425, label %426 [
    i32 0, label %457
    i32 3, label %457
  ]

426:                                              ; preds = %412
  %427 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 33
  %428 = load ptr, ptr %427, align 8, !tbaa !67
  %429 = load ptr, ptr %428, align 8, !tbaa !53
  %430 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 11
  %431 = load i32, ptr %430, align 8, !tbaa !68
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds ptr, ptr %429, i64 %432
  %434 = load ptr, ptr %417, align 8, !tbaa !66
  %435 = getelementptr inbounds ptr, ptr %434, i64 1
  %436 = load ptr, ptr %435, align 8, !tbaa !53
  %437 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 10
  %438 = load i32, ptr %437, align 4, !tbaa !69
  %439 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 81, i64 1
  %440 = load i32, ptr %439, align 4, !tbaa !70
  %441 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 81, i64 1, i64 1
  %442 = load i32, ptr %441, align 4, !tbaa !70
  tail call void @copy_image_data(ptr noundef %433, ptr noundef %436, i32 noundef %438, i32 noundef 0, i32 noundef %440, i32 noundef %442) #9
  %443 = load ptr, ptr %427, align 8, !tbaa !67
  %444 = getelementptr inbounds ptr, ptr %443, i64 1
  %445 = load ptr, ptr %444, align 8, !tbaa !53
  %446 = load i32, ptr %430, align 8, !tbaa !68
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds ptr, ptr %445, i64 %447
  %449 = load ptr, ptr %417, align 8, !tbaa !66
  %450 = getelementptr inbounds ptr, ptr %449, i64 2
  %451 = load ptr, ptr %450, align 8, !tbaa !53
  %452 = load i32, ptr %437, align 4, !tbaa !69
  %453 = load i32, ptr %439, align 4, !tbaa !70
  %454 = load i32, ptr %441, align 4, !tbaa !70
  tail call void @copy_image_data(ptr noundef %448, ptr noundef %451, i32 noundef %452, i32 noundef 0, i32 noundef %453, i32 noundef %454) #9
  br label %457

455:                                              ; preds = %408
  tail call void @iTransform(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0) #9
  %456 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 76
  store i32 0, ptr %456, align 8, !tbaa !58
  br label %457

457:                                              ; preds = %412, %412, %426, %455
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @RSD(i32 noundef %0) unnamed_addr #4 !PGOFuncName !123 {
  %2 = and i32 %0, -2
  %3 = lshr i32 %0, 1
  %4 = and i32 %3, 1
  %5 = or disjoint i32 %4, %2
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iabs(i32 noundef %0) unnamed_addr #4 !PGOFuncName !124 {
  %2 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  ret i32 %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imin(i32 noundef %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !125 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: optsize
declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mb_pred_b_d4x4temporal(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %9 = load i16, ptr %8, align 2, !tbaa !89
  %10 = sext i16 %9 to i64
  %11 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 56, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = add nsw i64 %10, 1
  %14 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 56, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %0) #10
  %16 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %18 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %19 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 35
  %20 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 27
  %21 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 55, i64 %10
  br label %22

22:                                               ; preds = %4, %160
  %23 = phi i64 [ 0, %4 ], [ %161, %160 ]
  %24 = phi i64 [ 4, %4 ], [ %163, %160 ]
  %25 = phi i64 [ 0, %4 ], [ %162, %160 ]
  %26 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38, i64 %23
  %27 = load i8, ptr %26, align 1, !tbaa !47
  br label %28

28:                                               ; preds = %22, %136
  %29 = phi i64 [ %25, %22 ], [ %146, %136 ]
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
  %63 = load i32, ptr %20, align 8, !tbaa !70
  %64 = load i8, ptr %21, align 1, !tbaa !47
  %65 = sext i8 %64 to i32
  %66 = tail call fastcc i32 @imin(i32 noundef %63, i32 noundef %65) #10
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %62
  %69 = load ptr, ptr %11, align 8, !tbaa !53
  %70 = getelementptr inbounds [2 x ptr], ptr %54, i64 0, i64 %58
  %71 = load ptr, ptr %70, align 8, !tbaa !53
  %72 = zext nneg i32 %66 to i64
  br label %75

73:                                               ; preds = %28
  %74 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %74, i8 0, i64 10, i1 false)
  br label %136

75:                                               ; preds = %68, %80
  %76 = phi i64 [ 0, %68 ], [ %81, %80 ]
  %77 = getelementptr inbounds ptr, ptr %69, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !53
  %79 = icmp eq ptr %78, %71
  br i1 %79, label %89, label %80

80:                                               ; preds = %75
  %81 = add nuw nsw i64 %76, 1
  %82 = icmp eq i64 %81, %72
  br i1 %82, label %83, label %75, !llvm.loop !126

83:                                               ; preds = %80
  br i1 %67, label %84, label %91

84:                                               ; preds = %83
  tail call void @error(ptr noundef nonnull @.str, i32 noundef -1111) #9
  %85 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 2
  %86 = load i8, ptr %85, align 8, !tbaa !47
  %87 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 2, i64 1
  %88 = load i8, ptr %87, align 1, !tbaa !47
  br label %136

89:                                               ; preds = %75
  %90 = trunc i64 %76 to i32
  br label %91

91:                                               ; preds = %62, %89, %83
  %92 = phi i32 [ -135792468, %83 ], [ %90, %89 ], [ 0, %62 ]
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 60, i64 %10, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !70
  %96 = icmp eq i32 %95, 9999
  br i1 %96, label %104, label %97

97:                                               ; preds = %91
  %98 = load ptr, ptr %11, align 8, !tbaa !53
  %99 = getelementptr inbounds ptr, ptr %98, i64 %93
  %100 = load ptr, ptr %99, align 8, !tbaa !53
  %101 = getelementptr inbounds %struct.storable_picture, ptr %100, i64 0, i32 10
  %102 = load i8, ptr %101, align 8, !tbaa !119
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %97, %91
  %105 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1
  %106 = getelementptr inbounds %struct.pic_motion_params, ptr %53, i64 %46, i32 1, i64 %58
  %107 = load i32, ptr %106, align 4
  store i32 %107, ptr %105, align 8
  %108 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1, i64 1
  store i32 0, ptr %108, align 4
  br label %132

109:                                              ; preds = %97
  %110 = getelementptr inbounds %struct.pic_motion_params, ptr %53, i64 %46, i32 1, i64 %58
  %111 = load i16, ptr %110, align 4, !tbaa !120
  %112 = sext i16 %111 to i32
  %113 = mul nsw i32 %95, %112
  %114 = add nsw i32 %113, 128
  %115 = lshr i32 %114, 8
  %116 = trunc i32 %115 to i16
  %117 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1
  store i16 %116, ptr %117, align 8, !tbaa !120
  %118 = getelementptr inbounds %struct.pic_motion_params, ptr %53, i64 %46, i32 1, i64 %58, i32 1
  %119 = load i16, ptr %118, align 2, !tbaa !118
  %120 = sext i16 %119 to i32
  %121 = mul nsw i32 %95, %120
  %122 = add nsw i32 %121, 128
  %123 = lshr i32 %122, 8
  %124 = trunc i32 %123 to i16
  %125 = getelementptr inbounds %struct.MotionVector, ptr %117, i64 0, i32 1
  store i16 %124, ptr %125, align 2, !tbaa !118
  %126 = load i16, ptr %110, align 4, !tbaa !120
  %127 = sub i16 %116, %126
  %128 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1, i64 1
  store i16 %127, ptr %128, align 4, !tbaa !120
  %129 = load i16, ptr %118, align 2, !tbaa !118
  %130 = sub i16 %124, %129
  %131 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 1, i64 1, i32 1
  store i16 %130, ptr %131, align 2, !tbaa !118
  br label %132

132:                                              ; preds = %109, %104
  %133 = trunc i32 %92 to i8
  %134 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 2
  store i8 %133, ptr %134, align 8, !tbaa !47
  %135 = getelementptr inbounds %struct.pic_motion_params, ptr %45, i64 %46, i32 2, i64 1
  store i8 0, ptr %135, align 1, !tbaa !47
  br label %136

136:                                              ; preds = %84, %132, %73
  %137 = phi i8 [ %88, %84 ], [ 0, %132 ], [ 0, %73 ]
  %138 = phi i8 [ %86, %84 ], [ %133, %132 ], [ 0, %73 ]
  %139 = sext i8 %138 to i64
  %140 = getelementptr inbounds ptr, ptr %12, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !53
  store ptr %141, ptr %47, align 8, !tbaa !53
  %142 = sext i8 %137 to i64
  %143 = getelementptr inbounds ptr, ptr %15, i64 %142
  %144 = load ptr, ptr %143, align 8, !tbaa !53
  %145 = getelementptr inbounds [2 x ptr], ptr %47, i64 0, i64 1
  store ptr %144, ptr %145, align 8, !tbaa !53
  %146 = add nuw nsw i64 %29, 1
  %147 = icmp eq i64 %146, %24
  br i1 %147, label %148, label %28, !llvm.loop !127

148:                                              ; preds = %136
  %149 = sext i8 %27 to i32
  br label %150

150:                                              ; preds = %148, %150
  %151 = phi i64 [ %25, %148 ], [ %158, %150 ]
  %152 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %151
  %153 = load i8, ptr %152, align 1, !tbaa !47
  %154 = zext i8 %153 to i32
  %155 = and i32 %154, 3
  %156 = lshr i32 %154, 2
  %157 = and i32 %156, 3
  tail call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3, i32 noundef %149, i32 noundef %155, i32 noundef %157, i32 noundef 4, i32 noundef 4) #9
  %158 = add nuw nsw i64 %151, 1
  %159 = icmp eq i64 %158, %24
  br i1 %159, label %160, label %150, !llvm.loop !128

160:                                              ; preds = %150
  %161 = add nuw nsw i64 %23, 1
  %162 = add nuw nsw i64 %25, 4
  %163 = add nuw nsw i64 %24, 4
  %164 = icmp eq i64 %161, 4
  br i1 %164, label %165, label %22, !llvm.loop !129

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %167 = load i32, ptr %166, align 4, !tbaa !57
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %212

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 9
  %171 = load i32, ptr %170, align 8, !tbaa !62
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds ptr, ptr %2, i64 %172
  %174 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 77
  %175 = load ptr, ptr %174, align 8, !tbaa !66
  %176 = zext i32 %1 to i64
  %177 = getelementptr inbounds ptr, ptr %175, i64 %176
  %178 = load ptr, ptr %177, align 8, !tbaa !53
  %179 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 8
  %180 = load i32, ptr %179, align 4, !tbaa !63
  tail call void @copy_image_data_16x16(ptr noundef %173, ptr noundef %178, i32 noundef %180, i32 noundef 0) #9
  %181 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 48
  %182 = load i32, ptr %181, align 4, !tbaa !42
  switch i32 %182, label %183 [
    i32 0, label %214
    i32 3, label %214
  ]

183:                                              ; preds = %169
  %184 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 33
  %185 = load ptr, ptr %184, align 8, !tbaa !67
  %186 = load ptr, ptr %185, align 8, !tbaa !53
  %187 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 11
  %188 = load i32, ptr %187, align 8, !tbaa !68
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds ptr, ptr %186, i64 %189
  %191 = load ptr, ptr %174, align 8, !tbaa !66
  %192 = getelementptr inbounds ptr, ptr %191, i64 1
  %193 = load ptr, ptr %192, align 8, !tbaa !53
  %194 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 10
  %195 = load i32, ptr %194, align 4, !tbaa !69
  %196 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 81, i64 1
  %197 = load i32, ptr %196, align 4, !tbaa !70
  %198 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 81, i64 1, i64 1
  %199 = load i32, ptr %198, align 4, !tbaa !70
  tail call void @copy_image_data(ptr noundef %190, ptr noundef %193, i32 noundef %195, i32 noundef 0, i32 noundef %197, i32 noundef %199) #9
  %200 = load ptr, ptr %184, align 8, !tbaa !67
  %201 = getelementptr inbounds ptr, ptr %200, i64 1
  %202 = load ptr, ptr %201, align 8, !tbaa !53
  %203 = load i32, ptr %187, align 8, !tbaa !68
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds ptr, ptr %202, i64 %204
  %206 = load ptr, ptr %174, align 8, !tbaa !66
  %207 = getelementptr inbounds ptr, ptr %206, i64 2
  %208 = load ptr, ptr %207, align 8, !tbaa !53
  %209 = load i32, ptr %194, align 4, !tbaa !69
  %210 = load i32, ptr %196, align 4, !tbaa !70
  %211 = load i32, ptr %198, align 4, !tbaa !70
  tail call void @copy_image_data(ptr noundef %205, ptr noundef %208, i32 noundef %209, i32 noundef 0, i32 noundef %210, i32 noundef %211) #9
  br label %214

212:                                              ; preds = %165
  tail call void @iTransform(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0) #9
  %213 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 76
  store i32 0, ptr %213, align 8, !tbaa !58
  br label %214

214:                                              ; preds = %169, %169, %183, %212
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mb_pred_b_d8x8spatial(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.MotionVector, align 4
  %8 = alloca %struct.MotionVector, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 -1, ptr %5, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 -1, ptr %6, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 0, ptr %8, align 4
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %13 = load i16, ptr %12, align 2, !tbaa !89
  %14 = sext i16 %13 to i64
  %15 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 56, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = add nsw i64 %14, 1
  %18 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 56, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %0) #10
  call void @prepare_direct_params(ptr noundef nonnull %0, ptr noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %20 = load i8, ptr %5, align 1, !tbaa !47
  %21 = icmp eq i8 %20, 0
  %22 = load i8, ptr %6, align 1
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %25, label %127

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %27 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %28 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  %29 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 35
  br label %30

30:                                               ; preds = %25, %121
  %31 = phi i64 [ 0, %25 ], [ %125, %121 ]
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
  %46 = call i32 @get_colocated_info_8x8(ptr noundef nonnull %0, ptr noundef %43, i32 noundef %40, i32 noundef %45) #9
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
  br label %121

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
  br label %121

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
  br label %121

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
  br label %121

94:                                               ; preds = %72
  %95 = icmp eq i8 %73, 0
  %96 = select i1 %95, i1 %47, i1 false
  %97 = sext i8 %73 to i64
  %98 = load i32, ptr %7, align 4
  %99 = select i1 %96, i64 0, i64 %97
  %100 = getelementptr inbounds ptr, ptr %16, i64 %99
  %101 = select i1 %96, i32 0, i32 %98
  %102 = load ptr, ptr %100, align 8, !tbaa !53
  store ptr %102, ptr %53, align 8
  %103 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52, i32 1
  store i32 %101, ptr %103, align 8
  %104 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52, i32 2
  store i8 %73, ptr %104, align 8
  %105 = load i8, ptr %6, align 1, !tbaa !47
  %106 = icmp eq i8 %105, 0
  %107 = select i1 %106, i1 %47, i1 false
  br i1 %107, label %108, label %113

108:                                              ; preds = %94
  %109 = load ptr, ptr %19, align 8, !tbaa !53
  %110 = getelementptr inbounds [2 x ptr], ptr %53, i64 0, i64 1
  store ptr %109, ptr %110, align 8, !tbaa !53
  %111 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52, i32 1, i64 1
  store i32 0, ptr %111, align 4
  %112 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52, i32 2, i64 1
  store i8 0, ptr %112, align 1, !tbaa !47
  br label %121

113:                                              ; preds = %94
  %114 = sext i8 %105 to i64
  %115 = getelementptr inbounds ptr, ptr %19, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !53
  %117 = getelementptr inbounds [2 x ptr], ptr %53, i64 0, i64 1
  store ptr %116, ptr %117, align 8, !tbaa !53
  %118 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52, i32 1, i64 1
  %119 = load i32, ptr %8, align 4
  store i32 %119, ptr %118, align 4
  %120 = getelementptr inbounds %struct.pic_motion_params, ptr %51, i64 %52, i32 2, i64 1
  store i8 %105, ptr %120, align 1, !tbaa !47
  br label %121

121:                                              ; preds = %108, %113, %76, %83, %57, %61
  %122 = phi i32 [ 0, %61 ], [ 0, %57 ], [ 1, %83 ], [ 1, %76 ], [ 2, %113 ], [ 2, %108 ]
  %123 = load ptr, ptr %29, align 8, !tbaa !101
  %124 = getelementptr inbounds ptr, ptr %123, i64 %49
  call fastcc void @update_neighbor_mvs(ptr noundef %124, ptr noundef nonnull %53, i32 noundef %40) #10
  call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %3, i32 noundef %122, i32 noundef %36, i32 noundef %38, i32 noundef 8, i32 noundef 8) #9
  %125 = add nuw nsw i64 %31, 1
  %126 = icmp eq i64 %125, 4
  br i1 %126, label %291, label %30, !llvm.loop !130

127:                                              ; preds = %4
  %128 = icmp slt i8 %20, 0
  %129 = icmp slt i8 %22, 0
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %131, label %165

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %133 = load i32, ptr %132, align 4, !tbaa !49
  %134 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %135 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 35
  %136 = sext i32 %133 to i64
  br label %137

137:                                              ; preds = %159, %131
  %138 = phi i64 [ %136, %131 ], [ %161, %159 ]
  %139 = load i32, ptr %134, align 8, !tbaa !48
  %140 = sext i32 %139 to i64
  br label %141

141:                                              ; preds = %137, %141
  %142 = phi i64 [ %140, %137 ], [ %154, %141 ]
  %143 = load ptr, ptr %135, align 8, !tbaa !101
  %144 = getelementptr inbounds ptr, ptr %143, i64 %138
  %145 = load ptr, ptr %144, align 8, !tbaa !53
  %146 = getelementptr inbounds %struct.pic_motion_params, ptr %145, i64 %142
  %147 = load ptr, ptr %16, align 8, !tbaa !53
  store ptr %147, ptr %146, align 8, !tbaa !53
  %148 = load ptr, ptr %19, align 8, !tbaa !53
  %149 = getelementptr inbounds [2 x ptr], ptr %146, i64 0, i64 1
  store ptr %148, ptr %149, align 8, !tbaa !53
  %150 = getelementptr inbounds %struct.pic_motion_params, ptr %145, i64 %142, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %150, i8 0, i64 10, i1 false)
  %151 = load ptr, ptr %135, align 8, !tbaa !101
  %152 = getelementptr inbounds ptr, ptr %151, i64 %138
  %153 = trunc i64 %142 to i32
  call fastcc void @update_neighbor_mvs(ptr noundef %152, ptr noundef nonnull %146, i32 noundef %153) #10
  %154 = add nsw i64 %142, 2
  %155 = load i32, ptr %134, align 8, !tbaa !48
  %156 = add nsw i32 %155, 2
  %157 = sext i32 %156 to i64
  %158 = icmp slt i64 %142, %157
  br i1 %158, label %141, label %159, !llvm.loop !131

159:                                              ; preds = %141
  %160 = load i32, ptr %132, align 4, !tbaa !49
  %161 = add nsw i64 %138, 2
  %162 = add nsw i32 %160, 2
  %163 = sext i32 %162 to i64
  %164 = icmp slt i64 %138, %163
  br i1 %164, label %137, label %289, !llvm.loop !132

165:                                              ; preds = %127
  %166 = icmp eq i8 %22, -1
  br i1 %166, label %167, label %207

167:                                              ; preds = %165
  %168 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %169 = load i32, ptr %168, align 4, !tbaa !49
  %170 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %171 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 35
  %172 = sext i32 %169 to i64
  br label %173

173:                                              ; preds = %201, %167
  %174 = phi i64 [ %172, %167 ], [ %203, %201 ]
  %175 = load i32, ptr %170, align 8, !tbaa !48
  %176 = sext i32 %175 to i64
  br label %177

177:                                              ; preds = %173, %177
  %178 = phi i64 [ %176, %173 ], [ %196, %177 ]
  %179 = load ptr, ptr %171, align 8, !tbaa !101
  %180 = getelementptr inbounds ptr, ptr %179, i64 %174
  %181 = load ptr, ptr %180, align 8, !tbaa !53
  %182 = getelementptr inbounds %struct.pic_motion_params, ptr %181, i64 %178
  %183 = load i8, ptr %5, align 1, !tbaa !47
  %184 = sext i8 %183 to i64
  %185 = getelementptr inbounds ptr, ptr %16, i64 %184
  %186 = load ptr, ptr %185, align 8, !tbaa !53
  store ptr %186, ptr %182, align 8, !tbaa !53
  %187 = getelementptr inbounds [2 x ptr], ptr %182, i64 0, i64 1
  store ptr null, ptr %187, align 8, !tbaa !53
  %188 = getelementptr inbounds %struct.pic_motion_params, ptr %181, i64 %178, i32 1
  %189 = load i32, ptr %7, align 4
  store i32 %189, ptr %188, align 8
  %190 = getelementptr inbounds %struct.pic_motion_params, ptr %181, i64 %178, i32 1, i64 1
  store i32 0, ptr %190, align 4
  %191 = getelementptr inbounds %struct.pic_motion_params, ptr %181, i64 %178, i32 2
  store i8 %183, ptr %191, align 8, !tbaa !47
  %192 = getelementptr inbounds %struct.pic_motion_params, ptr %181, i64 %178, i32 2, i64 1
  store i8 -1, ptr %192, align 1, !tbaa !47
  %193 = load ptr, ptr %171, align 8, !tbaa !101
  %194 = getelementptr inbounds ptr, ptr %193, i64 %174
  %195 = trunc i64 %178 to i32
  call fastcc void @update_neighbor_mvs(ptr noundef %194, ptr noundef nonnull %182, i32 noundef %195) #10
  %196 = add nsw i64 %178, 2
  %197 = load i32, ptr %170, align 8, !tbaa !48
  %198 = add nsw i32 %197, 2
  %199 = sext i32 %198 to i64
  %200 = icmp slt i64 %178, %199
  br i1 %200, label %177, label %201, !llvm.loop !133

201:                                              ; preds = %177
  %202 = load i32, ptr %168, align 4, !tbaa !49
  %203 = add nsw i64 %174, 2
  %204 = add nsw i32 %202, 2
  %205 = sext i32 %204 to i64
  %206 = icmp slt i64 %174, %205
  br i1 %206, label %173, label %289, !llvm.loop !134

207:                                              ; preds = %165
  %208 = icmp eq i8 %20, -1
  %209 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %210 = load i32, ptr %209, align 4, !tbaa !49
  %211 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %212 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 35
  %213 = sext i32 %210 to i64
  br i1 %208, label %214, label %249

214:                                              ; preds = %207, %243
  %215 = phi i64 [ %245, %243 ], [ %213, %207 ]
  %216 = load i32, ptr %211, align 8, !tbaa !48
  %217 = sext i32 %216 to i64
  br label %218

218:                                              ; preds = %214, %218
  %219 = phi i64 [ %217, %214 ], [ %238, %218 ]
  %220 = load ptr, ptr %212, align 8, !tbaa !101
  %221 = getelementptr inbounds ptr, ptr %220, i64 %215
  %222 = load ptr, ptr %221, align 8, !tbaa !53
  %223 = getelementptr inbounds %struct.pic_motion_params, ptr %222, i64 %219
  store ptr null, ptr %223, align 8, !tbaa !53
  %224 = load i8, ptr %6, align 1, !tbaa !47
  %225 = sext i8 %224 to i64
  %226 = getelementptr inbounds ptr, ptr %19, i64 %225
  %227 = load ptr, ptr %226, align 8, !tbaa !53
  %228 = getelementptr inbounds [2 x ptr], ptr %223, i64 0, i64 1
  store ptr %227, ptr %228, align 8, !tbaa !53
  %229 = getelementptr inbounds %struct.pic_motion_params, ptr %222, i64 %219, i32 1
  store i32 0, ptr %229, align 8
  %230 = getelementptr inbounds %struct.pic_motion_params, ptr %222, i64 %219, i32 1, i64 1
  %231 = load i32, ptr %8, align 4
  store i32 %231, ptr %230, align 4
  %232 = getelementptr inbounds %struct.pic_motion_params, ptr %222, i64 %219, i32 2
  store i8 -1, ptr %232, align 8, !tbaa !47
  %233 = load i8, ptr %6, align 1, !tbaa !47
  %234 = getelementptr inbounds %struct.pic_motion_params, ptr %222, i64 %219, i32 2, i64 1
  store i8 %233, ptr %234, align 1, !tbaa !47
  %235 = load ptr, ptr %212, align 8, !tbaa !101
  %236 = getelementptr inbounds ptr, ptr %235, i64 %215
  %237 = trunc i64 %219 to i32
  call fastcc void @update_neighbor_mvs(ptr noundef %236, ptr noundef nonnull %223, i32 noundef %237) #10
  %238 = add nsw i64 %219, 2
  %239 = load i32, ptr %211, align 8, !tbaa !48
  %240 = add nsw i32 %239, 2
  %241 = sext i32 %240 to i64
  %242 = icmp slt i64 %219, %241
  br i1 %242, label %218, label %243, !llvm.loop !135

243:                                              ; preds = %218
  %244 = load i32, ptr %209, align 4, !tbaa !49
  %245 = add nsw i64 %215, 2
  %246 = add nsw i32 %244, 2
  %247 = sext i32 %246 to i64
  %248 = icmp slt i64 %215, %247
  br i1 %248, label %214, label %289, !llvm.loop !136

249:                                              ; preds = %207, %283
  %250 = phi i64 [ %285, %283 ], [ %213, %207 ]
  %251 = load i32, ptr %211, align 8, !tbaa !48
  %252 = sext i32 %251 to i64
  br label %253

253:                                              ; preds = %249, %253
  %254 = phi i64 [ %252, %249 ], [ %278, %253 ]
  %255 = load ptr, ptr %212, align 8, !tbaa !101
  %256 = getelementptr inbounds ptr, ptr %255, i64 %250
  %257 = load ptr, ptr %256, align 8, !tbaa !53
  %258 = getelementptr inbounds %struct.pic_motion_params, ptr %257, i64 %254
  %259 = load i8, ptr %5, align 1, !tbaa !47
  %260 = sext i8 %259 to i64
  %261 = getelementptr inbounds ptr, ptr %16, i64 %260
  %262 = load ptr, ptr %261, align 8, !tbaa !53
  store ptr %262, ptr %258, align 8, !tbaa !53
  %263 = load i8, ptr %6, align 1, !tbaa !47
  %264 = sext i8 %263 to i64
  %265 = getelementptr inbounds ptr, ptr %19, i64 %264
  %266 = load ptr, ptr %265, align 8, !tbaa !53
  %267 = getelementptr inbounds [2 x ptr], ptr %258, i64 0, i64 1
  store ptr %266, ptr %267, align 8, !tbaa !53
  %268 = getelementptr inbounds %struct.pic_motion_params, ptr %257, i64 %254, i32 1
  %269 = load i32, ptr %7, align 4
  store i32 %269, ptr %268, align 8
  %270 = getelementptr inbounds %struct.pic_motion_params, ptr %257, i64 %254, i32 1, i64 1
  %271 = load i32, ptr %8, align 4
  store i32 %271, ptr %270, align 4
  %272 = getelementptr inbounds %struct.pic_motion_params, ptr %257, i64 %254, i32 2
  store i8 %259, ptr %272, align 8, !tbaa !47
  %273 = load i8, ptr %6, align 1, !tbaa !47
  %274 = getelementptr inbounds %struct.pic_motion_params, ptr %257, i64 %254, i32 2, i64 1
  store i8 %273, ptr %274, align 1, !tbaa !47
  %275 = load ptr, ptr %212, align 8, !tbaa !101
  %276 = getelementptr inbounds ptr, ptr %275, i64 %250
  %277 = trunc i64 %254 to i32
  call fastcc void @update_neighbor_mvs(ptr noundef %276, ptr noundef nonnull %258, i32 noundef %277) #10
  %278 = add nsw i64 %254, 2
  %279 = load i32, ptr %211, align 8, !tbaa !48
  %280 = add nsw i32 %279, 2
  %281 = sext i32 %280 to i64
  %282 = icmp slt i64 %254, %281
  br i1 %282, label %253, label %283, !llvm.loop !137

283:                                              ; preds = %253
  %284 = load i32, ptr %209, align 4, !tbaa !49
  %285 = add nsw i64 %250, 2
  %286 = add nsw i32 %284, 2
  %287 = sext i32 %286 to i64
  %288 = icmp slt i64 %250, %287
  br i1 %288, label %249, label %289, !llvm.loop !138

289:                                              ; preds = %283, %243, %201, %159
  %290 = phi i32 [ 2, %159 ], [ 0, %201 ], [ 1, %243 ], [ 2, %283 ]
  call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %3, i32 noundef %290, i32 noundef 0, i32 noundef 0, i32 noundef 16, i32 noundef 16) #9
  br label %291

291:                                              ; preds = %121, %289
  %292 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %293 = load i32, ptr %292, align 4, !tbaa !57
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %338

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 9
  %297 = load i32, ptr %296, align 8, !tbaa !62
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds ptr, ptr %2, i64 %298
  %300 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 77
  %301 = load ptr, ptr %300, align 8, !tbaa !66
  %302 = zext i32 %1 to i64
  %303 = getelementptr inbounds ptr, ptr %301, i64 %302
  %304 = load ptr, ptr %303, align 8, !tbaa !53
  %305 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 8
  %306 = load i32, ptr %305, align 4, !tbaa !63
  call void @copy_image_data_16x16(ptr noundef %299, ptr noundef %304, i32 noundef %306, i32 noundef 0) #9
  %307 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 48
  %308 = load i32, ptr %307, align 4, !tbaa !42
  switch i32 %308, label %309 [
    i32 0, label %340
    i32 3, label %340
  ]

309:                                              ; preds = %295
  %310 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 33
  %311 = load ptr, ptr %310, align 8, !tbaa !67
  %312 = load ptr, ptr %311, align 8, !tbaa !53
  %313 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 11
  %314 = load i32, ptr %313, align 8, !tbaa !68
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds ptr, ptr %312, i64 %315
  %317 = load ptr, ptr %300, align 8, !tbaa !66
  %318 = getelementptr inbounds ptr, ptr %317, i64 1
  %319 = load ptr, ptr %318, align 8, !tbaa !53
  %320 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 10
  %321 = load i32, ptr %320, align 4, !tbaa !69
  %322 = getelementptr inbounds %struct.video_par, ptr %11, i64 0, i32 81, i64 1
  %323 = load i32, ptr %322, align 4, !tbaa !70
  %324 = getelementptr inbounds %struct.video_par, ptr %11, i64 0, i32 81, i64 1, i64 1
  %325 = load i32, ptr %324, align 4, !tbaa !70
  call void @copy_image_data(ptr noundef %316, ptr noundef %319, i32 noundef %321, i32 noundef 0, i32 noundef %323, i32 noundef %325) #9
  %326 = load ptr, ptr %310, align 8, !tbaa !67
  %327 = getelementptr inbounds ptr, ptr %326, i64 1
  %328 = load ptr, ptr %327, align 8, !tbaa !53
  %329 = load i32, ptr %313, align 8, !tbaa !68
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds ptr, ptr %328, i64 %330
  %332 = load ptr, ptr %300, align 8, !tbaa !66
  %333 = getelementptr inbounds ptr, ptr %332, i64 2
  %334 = load ptr, ptr %333, align 8, !tbaa !53
  %335 = load i32, ptr %320, align 4, !tbaa !69
  %336 = load i32, ptr %322, align 4, !tbaa !70
  %337 = load i32, ptr %324, align 4, !tbaa !70
  call void @copy_image_data(ptr noundef %331, ptr noundef %334, i32 noundef %335, i32 noundef 0, i32 noundef %336, i32 noundef %337) #9
  br label %340

338:                                              ; preds = %291
  call void @iTransform(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0) #9
  %339 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 76
  store i32 0, ptr %339, align 8, !tbaa !58
  br label %340

340:                                              ; preds = %295, %295, %309, %338
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  ret i32 1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: optsize
declare void @prepare_direct_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_colocated_info_8x8(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @update_neighbor_mvs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #7 !PGOFuncName !139 {
  %4 = getelementptr inbounds ptr, ptr %0, i64 1
  %5 = load ptr, ptr %0, align 8, !tbaa !53
  %6 = add nsw i32 %2, 1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.pic_motion_params, ptr %5, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !140
  %9 = load ptr, ptr %4, align 8, !tbaa !53
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds %struct.pic_motion_params, ptr %9, i64 %10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !140
  %12 = load ptr, ptr %4, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.pic_motion_params, ptr %12, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !140
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mb_pred_b_d4x4spatial(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.MotionVector, align 4
  %8 = alloca %struct.MotionVector, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 -1, ptr %5, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 -1, ptr %6, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 0, ptr %8, align 4
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %13 = load i16, ptr %12, align 2, !tbaa !89
  %14 = sext i16 %13 to i64
  %15 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 56, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = add nsw i64 %14, 1
  %18 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 56, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %0) #10
  call void @prepare_direct_params(ptr noundef nonnull %0, ptr noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %20 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %21 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %22 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 35
  %23 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 7
  br label %24

24:                                               ; preds = %4, %187
  %25 = phi i64 [ 4, %4 ], [ %190, %187 ]
  %26 = phi i64 [ 0, %4 ], [ %189, %187 ]
  %27 = phi i32 [ 0, %4 ], [ %188, %187 ]
  br label %28

28:                                               ; preds = %24, %173
  %29 = phi i64 [ %26, %24 ], [ %175, %173 ]
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
  br i1 %50, label %51, label %124

51:                                               ; preds = %28
  %52 = load ptr, ptr %19, align 8, !tbaa !53
  %53 = load i32, ptr %23, align 8, !tbaa !100
  %54 = add nsw i32 %53, %35
  %55 = call i32 @get_colocated_info_4x4(ptr noundef nonnull %0, ptr noundef %52, i32 noundef %37, i32 noundef %54) #9
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
  br label %173

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
  br label %173

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
  br label %173

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
  br label %173

97:                                               ; preds = %75
  %98 = icmp eq i8 %76, 0
  %99 = select i1 %98, i1 %56, i1 false
  %100 = sext i8 %76 to i64
  %101 = load i32, ptr %7, align 4
  %102 = select i1 %99, i64 0, i64 %100
  %103 = getelementptr inbounds ptr, ptr %16, i64 %102
  %104 = select i1 %99, i32 0, i32 %101
  %105 = load ptr, ptr %103, align 8, !tbaa !53
  store ptr %105, ptr %45, align 8
  %106 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1
  store i32 %104, ptr %106, align 8
  %107 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 2
  store i8 %76, ptr %107, align 8
  %108 = load i8, ptr %6, align 1, !tbaa !47
  %109 = icmp eq i8 %108, 0
  %110 = select i1 %109, i1 %56, i1 false
  br i1 %110, label %111, label %116

111:                                              ; preds = %97
  %112 = load ptr, ptr %19, align 8, !tbaa !53
  %113 = getelementptr inbounds [2 x ptr], ptr %45, i64 0, i64 1
  store ptr %112, ptr %113, align 8, !tbaa !53
  %114 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1, i64 1
  store i32 0, ptr %114, align 4
  %115 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 2, i64 1
  store i8 0, ptr %115, align 1, !tbaa !47
  br label %173

116:                                              ; preds = %97
  %117 = sext i8 %108 to i64
  %118 = getelementptr inbounds ptr, ptr %19, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !53
  %120 = getelementptr inbounds [2 x ptr], ptr %45, i64 0, i64 1
  store ptr %119, ptr %120, align 8, !tbaa !53
  %121 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1, i64 1
  %122 = load i32, ptr %8, align 4
  store i32 %122, ptr %121, align 4
  %123 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 2, i64 1
  store i8 %108, ptr %123, align 1, !tbaa !47
  br label %173

124:                                              ; preds = %28
  %125 = icmp slt i8 %46, 0
  %126 = icmp slt i8 %48, 0
  %127 = select i1 %125, i1 %126, i1 false
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = load ptr, ptr %16, align 8, !tbaa !53
  store ptr %129, ptr %45, align 8, !tbaa !53
  %130 = load ptr, ptr %19, align 8, !tbaa !53
  %131 = getelementptr inbounds [2 x ptr], ptr %45, i64 0, i64 1
  store ptr %130, ptr %131, align 8, !tbaa !53
  %132 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %132, i8 0, i64 10, i1 false)
  br label %173

133:                                              ; preds = %124
  %134 = icmp eq i8 %48, -1
  br i1 %134, label %135, label %145

135:                                              ; preds = %133
  %136 = sext i8 %46 to i64
  %137 = getelementptr inbounds ptr, ptr %16, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !53
  store ptr %138, ptr %45, align 8, !tbaa !53
  %139 = getelementptr inbounds [2 x ptr], ptr %45, i64 0, i64 1
  store ptr null, ptr %139, align 8, !tbaa !53
  %140 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1
  %141 = load i32, ptr %7, align 4
  store i32 %141, ptr %140, align 8
  %142 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1, i64 1
  store i32 0, ptr %142, align 4
  %143 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 2
  store i8 %46, ptr %143, align 8, !tbaa !47
  %144 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 2, i64 1
  store i8 -1, ptr %144, align 1, !tbaa !47
  br label %173

145:                                              ; preds = %133
  %146 = icmp eq i8 %46, -1
  br i1 %146, label %147, label %158

147:                                              ; preds = %145
  store ptr null, ptr %45, align 8, !tbaa !53
  %148 = sext i8 %48 to i64
  %149 = getelementptr inbounds ptr, ptr %19, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !53
  %151 = getelementptr inbounds [2 x ptr], ptr %45, i64 0, i64 1
  store ptr %150, ptr %151, align 8, !tbaa !53
  %152 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1
  store i32 0, ptr %152, align 8
  %153 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1, i64 1
  %154 = load i32, ptr %8, align 4
  store i32 %154, ptr %153, align 4
  %155 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 2
  store i8 -1, ptr %155, align 8, !tbaa !47
  %156 = load i8, ptr %6, align 1, !tbaa !47
  %157 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 2, i64 1
  store i8 %156, ptr %157, align 1, !tbaa !47
  br label %173

158:                                              ; preds = %145
  %159 = sext i8 %46 to i64
  %160 = getelementptr inbounds ptr, ptr %16, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !53
  store ptr %161, ptr %45, align 8, !tbaa !53
  %162 = sext i8 %48 to i64
  %163 = getelementptr inbounds ptr, ptr %19, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !53
  %165 = getelementptr inbounds [2 x ptr], ptr %45, i64 0, i64 1
  store ptr %164, ptr %165, align 8, !tbaa !53
  %166 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1
  %167 = load i32, ptr %7, align 4
  store i32 %167, ptr %166, align 8
  %168 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 1, i64 1
  %169 = load i32, ptr %8, align 4
  store i32 %169, ptr %168, align 4
  %170 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 2
  store i8 %46, ptr %170, align 8, !tbaa !47
  %171 = load i8, ptr %6, align 1, !tbaa !47
  %172 = getelementptr inbounds %struct.pic_motion_params, ptr %43, i64 %44, i32 2, i64 1
  store i8 %171, ptr %172, align 1, !tbaa !47
  br label %173

173:                                              ; preds = %64, %60, %86, %79, %116, %111, %128, %147, %158, %135
  %174 = phi i32 [ 2, %128 ], [ 0, %135 ], [ 1, %147 ], [ 2, %158 ], [ 0, %64 ], [ 0, %60 ], [ 1, %86 ], [ 1, %79 ], [ 2, %116 ], [ 2, %111 ]
  %175 = add nuw nsw i64 %29, 1
  %176 = icmp eq i64 %175, %25
  br i1 %176, label %177, label %28, !llvm.loop !141

177:                                              ; preds = %173, %177
  %178 = phi i64 [ %185, %177 ], [ %26, %173 ]
  %179 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %178
  %180 = load i8, ptr %179, align 1, !tbaa !47
  %181 = zext i8 %180 to i32
  %182 = and i32 %181, 3
  %183 = lshr i32 %181, 2
  %184 = and i32 %183, 3
  call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %3, i32 noundef %174, i32 noundef %182, i32 noundef %184, i32 noundef 4, i32 noundef 4) #9
  %185 = add nuw nsw i64 %178, 1
  %186 = icmp eq i64 %185, %25
  br i1 %186, label %187, label %177, !llvm.loop !142

187:                                              ; preds = %177
  %188 = add nuw nsw i32 %27, 1
  %189 = add nuw nsw i64 %26, 4
  %190 = add nuw nsw i64 %25, 4
  %191 = icmp eq i32 %188, 4
  br i1 %191, label %192, label %24, !llvm.loop !143

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %194 = load i32, ptr %193, align 4, !tbaa !57
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %239

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 9
  %198 = load i32, ptr %197, align 8, !tbaa !62
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds ptr, ptr %2, i64 %199
  %201 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 77
  %202 = load ptr, ptr %201, align 8, !tbaa !66
  %203 = zext i32 %1 to i64
  %204 = getelementptr inbounds ptr, ptr %202, i64 %203
  %205 = load ptr, ptr %204, align 8, !tbaa !53
  %206 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 8
  %207 = load i32, ptr %206, align 4, !tbaa !63
  call void @copy_image_data_16x16(ptr noundef %200, ptr noundef %205, i32 noundef %207, i32 noundef 0) #9
  %208 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 48
  %209 = load i32, ptr %208, align 4, !tbaa !42
  switch i32 %209, label %210 [
    i32 0, label %241
    i32 3, label %241
  ]

210:                                              ; preds = %196
  %211 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 33
  %212 = load ptr, ptr %211, align 8, !tbaa !67
  %213 = load ptr, ptr %212, align 8, !tbaa !53
  %214 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 11
  %215 = load i32, ptr %214, align 8, !tbaa !68
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds ptr, ptr %213, i64 %216
  %218 = load ptr, ptr %201, align 8, !tbaa !66
  %219 = getelementptr inbounds ptr, ptr %218, i64 1
  %220 = load ptr, ptr %219, align 8, !tbaa !53
  %221 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 10
  %222 = load i32, ptr %221, align 4, !tbaa !69
  %223 = getelementptr inbounds %struct.video_par, ptr %11, i64 0, i32 81, i64 1
  %224 = load i32, ptr %223, align 4, !tbaa !70
  %225 = getelementptr inbounds %struct.video_par, ptr %11, i64 0, i32 81, i64 1, i64 1
  %226 = load i32, ptr %225, align 4, !tbaa !70
  call void @copy_image_data(ptr noundef %217, ptr noundef %220, i32 noundef %222, i32 noundef 0, i32 noundef %224, i32 noundef %226) #9
  %227 = load ptr, ptr %211, align 8, !tbaa !67
  %228 = getelementptr inbounds ptr, ptr %227, i64 1
  %229 = load ptr, ptr %228, align 8, !tbaa !53
  %230 = load i32, ptr %214, align 8, !tbaa !68
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds ptr, ptr %229, i64 %231
  %233 = load ptr, ptr %201, align 8, !tbaa !66
  %234 = getelementptr inbounds ptr, ptr %233, i64 2
  %235 = load ptr, ptr %234, align 8, !tbaa !53
  %236 = load i32, ptr %221, align 4, !tbaa !69
  %237 = load i32, ptr %223, align 4, !tbaa !70
  %238 = load i32, ptr %225, align 4, !tbaa !70
  call void @copy_image_data(ptr noundef %232, ptr noundef %235, i32 noundef %236, i32 noundef 0, i32 noundef %237, i32 noundef %238) #9
  br label %241

239:                                              ; preds = %192
  call void @iTransform(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0) #9
  %240 = getelementptr inbounds %struct.slice, ptr %9, i64 0, i32 76
  store i32 0, ptr %240, align 8, !tbaa !58
  br label %241

241:                                              ; preds = %196, %196, %210, %239
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  ret i32 1
}

; Function Attrs: optsize
declare i32 @get_colocated_info_4x4(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mb_pred_b_inter8x8(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca %struct.MotionVector, align 4
  %7 = alloca %struct.MotionVector, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 -1, ptr %4, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 -1, ptr %5, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 25
  %12 = load i16, ptr %11, align 2, !tbaa !89
  %13 = sext i16 %12 to i64
  %14 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 56, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = add nsw i64 %13, 1
  %17 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 56, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  tail call fastcc void @set_chroma_vector(ptr noundef nonnull %0) #10
  %19 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 26
  %20 = load i32, ptr %19, align 4, !tbaa !144
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
  call void @prepare_direct_params(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  br label %39

39:                                               ; preds = %38, %34, %3
  %40 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 2
  %41 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 5
  %42 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 6
  %43 = getelementptr inbounds %struct.storable_picture, ptr %2, i64 0, i32 35
  br label %44

44:                                               ; preds = %39, %179
  %45 = phi i64 [ 0, %39 ], [ %180, %179 ]
  %46 = phi i64 [ 4, %39 ], [ %182, %179 ]
  %47 = phi i64 [ 0, %39 ], [ %181, %179 ]
  %48 = trunc i64 %45 to i32
  %49 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 37, i64 %45
  %50 = load i8, ptr %49, align 1, !tbaa !47
  %51 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 38, i64 %45
  %52 = load i8, ptr %51, align 1, !tbaa !47
  %53 = sext i8 %52 to i32
  %54 = icmp eq i8 %50, 0
  %55 = shl nuw nsw i64 %45, 2
  br i1 %54, label %94, label %56

56:                                               ; preds = %44
  %57 = icmp eq i8 %50, 5
  %58 = select i1 %57, i32 2, i32 1
  %59 = icmp eq i8 %50, 4
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = shl nuw nsw i32 %48, 2
  %62 = or disjoint i32 %61, 1
  br label %71

63:                                               ; preds = %56
  %64 = icmp eq i8 %50, 7
  %65 = trunc i64 %55 to i32
  br i1 %64, label %66, label %68

66:                                               ; preds = %63
  %67 = add i32 %65, 4
  br label %71

68:                                               ; preds = %63
  %69 = or disjoint i32 %65, 1
  %70 = add nuw nsw i32 %69, %58
  br label %71

71:                                               ; preds = %66, %68, %60
  %72 = phi i32 [ %62, %60 ], [ %67, %66 ], [ %70, %68 ]
  %73 = and i8 %50, -2
  %74 = icmp eq i8 %73, 4
  %75 = select i1 %74, i32 8, i32 4
  %76 = icmp eq i8 %50, 6
  %77 = or i1 %76, %59
  %78 = select i1 %77, i32 8, i32 4
  %79 = zext i32 %72 to i64
  %80 = icmp ult i64 %55, %79
  br i1 %80, label %81, label %179

81:                                               ; preds = %71
  %82 = zext nneg i32 %58 to i64
  br label %83

83:                                               ; preds = %81, %83
  %84 = phi i64 [ %47, %81 ], [ %91, %83 ]
  %85 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !47
  %87 = zext i8 %86 to i32
  %88 = and i32 %87, 3
  %89 = lshr i32 %87, 2
  %90 = and i32 %89, 3
  call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %53, i32 noundef %88, i32 noundef %90, i32 noundef %75, i32 noundef %78) #9
  %91 = add i64 %84, %82
  %92 = trunc i64 %91 to i32
  %93 = icmp sgt i32 %72, %92
  br i1 %93, label %83, label %179, !llvm.loop !145

94:                                               ; preds = %44
  %95 = shl i64 %45, 2
  %96 = load ptr, ptr %40, align 8, !tbaa !105
  %97 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %96, i64 0, i32 32
  %98 = load i32, ptr %97, align 4, !tbaa !106
  %99 = icmp eq i32 %98, 0
  %100 = or disjoint i64 %95, 1
  %101 = add nuw i64 %55, 4
  %102 = select i1 %99, i64 %101, i64 %100
  %103 = select i1 %99, i32 4, i32 8
  %104 = load i32, ptr %19, align 4, !tbaa !144
  %105 = icmp eq i32 %104, 0
  %106 = load i32, ptr %41, align 8, !tbaa !48
  %107 = load i32, ptr %42, align 4, !tbaa !49
  br i1 %105, label %136, label %108

108:                                              ; preds = %94
  %109 = load ptr, ptr %43, align 8, !tbaa !101
  br label %110

110:                                              ; preds = %108, %132
  %111 = phi i64 [ %47, %108 ], [ %134, %132 ]
  %112 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %111
  %113 = load i8, ptr %112, align 1, !tbaa !47
  %114 = zext i8 %113 to i32
  %115 = and i32 %114, 3
  %116 = lshr i32 %114, 2
  %117 = and i32 %116, 3
  %118 = add nsw i32 %115, %106
  %119 = add nsw i32 %117, %107
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds ptr, ptr %109, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !53
  %123 = sext i32 %118 to i64
  %124 = getelementptr inbounds %struct.pic_motion_params, ptr %122, i64 %123, i32 2, i64 1
  %125 = load i8, ptr %124, align 1, !tbaa !47
  %126 = icmp eq i8 %125, -1
  br i1 %126, label %132, label %127

127:                                              ; preds = %110
  %128 = getelementptr inbounds %struct.pic_motion_params, ptr %122, i64 %123, i32 2
  %129 = load i8, ptr %128, align 8, !tbaa !47
  %130 = icmp eq i8 %129, -1
  %131 = select i1 %130, i32 1, i32 2
  br label %132

132:                                              ; preds = %127, %110
  %133 = phi i32 [ 0, %110 ], [ %131, %127 ]
  %134 = add nuw nsw i64 %111, 1
  %135 = icmp eq i64 %134, %46
  br i1 %135, label %165, label %110, !llvm.loop !146

136:                                              ; preds = %94, %136
  %137 = phi i64 [ %163, %136 ], [ %47, %94 ]
  %138 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !47
  %140 = zext i8 %139 to i32
  %141 = and i32 %140, 3
  %142 = lshr i32 %140, 2
  %143 = and i32 %142, 3
  %144 = add nsw i32 %141, %106
  %145 = add nsw i32 %143, %107
  %146 = load ptr, ptr %43, align 8, !tbaa !101
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds ptr, ptr %146, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !53
  %150 = sext i32 %144 to i64
  %151 = getelementptr inbounds %struct.pic_motion_params, ptr %149, i64 %150
  %152 = getelementptr inbounds %struct.pic_motion_params, ptr %149, i64 %150, i32 2
  %153 = load i8, ptr %152, align 8, !tbaa !47
  %154 = sext i8 %153 to i64
  %155 = getelementptr inbounds ptr, ptr %15, i64 %154
  %156 = load ptr, ptr %155, align 8, !tbaa !53
  store ptr %156, ptr %151, align 8, !tbaa !53
  %157 = getelementptr inbounds %struct.pic_motion_params, ptr %149, i64 %150, i32 2, i64 1
  %158 = load i8, ptr %157, align 1, !tbaa !47
  %159 = sext i8 %158 to i64
  %160 = getelementptr inbounds ptr, ptr %18, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !53
  %162 = getelementptr inbounds [2 x ptr], ptr %151, i64 0, i64 1
  store ptr %161, ptr %162, align 8, !tbaa !53
  %163 = add nuw nsw i64 %137, 1
  %164 = icmp eq i64 %163, %46
  br i1 %164, label %165, label %136, !llvm.loop !147

165:                                              ; preds = %132, %136
  %166 = phi i32 [ %53, %136 ], [ %133, %132 ]
  %167 = and i64 %102, 4294967293
  %168 = icmp ult i64 %55, %167
  br i1 %168, label %169, label %179

169:                                              ; preds = %165, %169
  %170 = phi i64 [ %177, %169 ], [ %47, %165 ]
  %171 = getelementptr inbounds [16 x i8], ptr @decode_block_scan, i64 0, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !47
  %173 = zext i8 %172 to i32
  %174 = and i32 %173, 3
  %175 = lshr i32 %173, 2
  %176 = and i32 %175, 3
  call void @perform_mc(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2, i32 noundef %166, i32 noundef %174, i32 noundef %176, i32 noundef %103, i32 noundef %103) #9
  %177 = add nuw nsw i64 %170, 1
  %178 = icmp eq i64 %177, %167
  br i1 %178, label %179, label %169, !llvm.loop !148

179:                                              ; preds = %83, %169, %71, %165
  %180 = add nuw nsw i64 %45, 1
  %181 = add nuw nsw i64 %47, 4
  %182 = add nuw nsw i64 %46, 4
  %183 = icmp eq i64 %180, 4
  br i1 %183, label %184, label %44, !llvm.loop !149

184:                                              ; preds = %179
  call void @iTransform(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0) #9
  %185 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 32
  %186 = load i32, ptr %185, align 4, !tbaa !57
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 76
  store i32 0, ptr %189, align 8, !tbaa !58
  br label %190

190:                                              ; preds = %188, %184
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @mb_pred_ipcm(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 125
  %6 = load ptr, ptr %5, align 8, !tbaa !150
  %7 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 80
  %8 = load ptr, ptr %7, align 8, !tbaa !151
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 32
  %11 = load ptr, ptr %10, align 8, !tbaa !152
  %12 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !62
  %14 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 8
  %15 = load i32, ptr %14, align 4, !tbaa !63
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

26:                                               ; preds = %26, %19
  %27 = phi i64 [ 0, %19 ], [ %32, %26 ]
  %28 = getelementptr inbounds i32, ptr %22, i64 %27
  %29 = load <4 x i32>, ptr %28, align 4, !tbaa !70
  %30 = trunc <4 x i32> %29 to <4 x i16>
  %31 = getelementptr i16, ptr %25, i64 %27
  store <4 x i16> %30, ptr %31, align 2, !tbaa !153
  %32 = add nuw i64 %27, 4
  %33 = icmp eq i64 %32, 16
  br i1 %33, label %34, label %26, !llvm.loop !154

34:                                               ; preds = %26
  %35 = add nuw nsw i64 %20, 1
  %36 = icmp eq i64 %35, 16
  br i1 %36, label %37, label %19, !llvm.loop !157

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 48
  %39 = load i32, ptr %38, align 4, !tbaa !42
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %93, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 105
  %43 = load i32, ptr %42, align 8, !tbaa !158
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %93

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 78
  %47 = load i32, ptr %46, align 8, !tbaa !159
  %48 = icmp sgt i32 %47, 0
  %49 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 77
  %50 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 33
  %51 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 11
  %52 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 10
  %53 = zext nneg i32 %47 to i64
  %54 = getelementptr ptr, ptr %8, i64 1
  br label %55

55:                                               ; preds = %45, %92
  %56 = phi i1 [ true, %45 ], [ false, %92 ]
  %57 = phi i64 [ 0, %45 ], [ 1, %92 ]
  br i1 %48, label %58, label %92

58:                                               ; preds = %55
  %59 = load i32, ptr %49, align 4, !tbaa !160
  %60 = icmp sgt i32 %59, 0
  %61 = getelementptr ptr, ptr %54, i64 %57
  %62 = zext nneg i32 %59 to i64
  br label %63

63:                                               ; preds = %58, %89
  %64 = phi i64 [ 0, %58 ], [ %90, %89 ]
  br i1 %60, label %65, label %89

65:                                               ; preds = %63
  %66 = load ptr, ptr %61, align 8, !tbaa !53
  %67 = getelementptr inbounds ptr, ptr %66, i64 %64
  %68 = load ptr, ptr %67, align 8, !tbaa !53
  %69 = load ptr, ptr %50, align 8, !tbaa !67
  %70 = getelementptr inbounds ptr, ptr %69, i64 %57
  %71 = load ptr, ptr %70, align 8, !tbaa !53
  %72 = load i32, ptr %51, align 8, !tbaa !68
  %73 = trunc i64 %64 to i32
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %71, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !53
  %78 = load i32, ptr %52, align 4, !tbaa !69
  %79 = sext i32 %78 to i64
  %80 = getelementptr i16, ptr %77, i64 %79
  br label %81

81:                                               ; preds = %65, %81
  %82 = phi i64 [ 0, %65 ], [ %87, %81 ]
  %83 = getelementptr inbounds i32, ptr %68, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !70
  %85 = trunc i32 %84 to i16
  %86 = getelementptr i16, ptr %80, i64 %82
  store i16 %85, ptr %86, align 2, !tbaa !153
  %87 = add nuw nsw i64 %82, 1
  %88 = icmp eq i64 %87, %62
  br i1 %88, label %89, label %81, !llvm.loop !161

89:                                               ; preds = %81, %63
  %90 = add nuw nsw i64 %64, 1
  %91 = icmp eq i64 %90, %53
  br i1 %91, label %92, label %63, !llvm.loop !162

92:                                               ; preds = %89, %55
  br i1 %56, label %55, label %93, !llvm.loop !163

93:                                               ; preds = %92, %41, %37
  tail call void @update_qp(ptr noundef nonnull %0, i32 noundef 0) #9
  %94 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 29
  %95 = load ptr, ptr %94, align 8, !tbaa !164
  %96 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 3
  %97 = load i32, ptr %96, align 8, !tbaa !88
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds ptr, ptr %95, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !53
  %101 = load ptr, ptr %100, align 8, !tbaa !53
  %102 = load ptr, ptr %101, align 8, !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %102, i8 16, i64 48, i1 false)
  %103 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 41
  store i8 0, ptr %103, align 2, !tbaa !165
  %104 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 33
  store i64 65535, ptr %104, align 8, !tbaa !166
  %105 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 45
  store i32 0, ptr %105, align 4, !tbaa !167
  %106 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 76
  store i32 0, ptr %106, align 8, !tbaa !58
  ret i32 1
}

; Function Attrs: optsize
declare void @update_qp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }

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
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = distinct !{!56, !55}
!57 = !{!35, !39, i64 284}
!58 = !{!51, !39, i64 1240}
!59 = !{!35, !39, i64 360}
!60 = !{!35, !37, i64 372}
!61 = !{!35, !36, i64 440}
!62 = !{!35, !39, i64 48}
!63 = !{!35, !39, i64 44}
!64 = distinct !{!64, !55}
!65 = !{!35, !36, i64 8}
!66 = !{!51, !36, i64 1248}
!67 = !{!43, !36, i64 136}
!68 = !{!35, !39, i64 56}
!69 = !{!35, !39, i64 52}
!70 = !{!39, !39, i64 0}
!71 = !{!"mb_prediction.c:set_chroma_vector"}
!72 = !{!51, !39, i64 128}
!73 = !{!51, !39, i64 184}
!74 = !{!75, !39, i64 848876}
!75 = !{!"video_par", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 132120, !36, i64 699416, !37, i64 699424, !39, i64 848672, !39, i64 848676, !39, i64 848680, !39, i64 848684, !36, i64 848688, !36, i64 848696, !36, i64 848704, !39, i64 848712, !39, i64 848716, !39, i64 848720, !39, i64 848724, !39, i64 848728, !36, i64 848736, !36, i64 848744, !37, i64 848752, !39, i64 848776, !39, i64 848780, !39, i64 848784, !39, i64 848788, !39, i64 848792, !36, i64 848800, !37, i64 848808, !36, i64 848832, !36, i64 848840, !37, i64 848848, !39, i64 848872, !39, i64 848876, !36, i64 848880, !36, i64 848888, !37, i64 848896, !39, i64 848920, !36, i64 848928, !36, i64 848936, !39, i64 848944, !39, i64 848948, !39, i64 848952, !39, i64 848956, !39, i64 848960, !39, i64 848964, !39, i64 848968, !39, i64 848972, !39, i64 848976, !39, i64 848980, !39, i64 848984, !39, i64 848988, !39, i64 848992, !39, i64 848996, !39, i64 849000, !39, i64 849004, !39, i64 849008, !39, i64 849012, !39, i64 849016, !39, i64 849020, !39, i64 849024, !39, i64 849028, !39, i64 849032, !39, i64 849036, !41, i64 849040, !41, i64 849042, !37, i64 849044, !39, i64 849052, !39, i64 849056, !37, i64 849060, !37, i64 849072, !39, i64 849084, !39, i64 849088, !39, i64 849092, !39, i64 849096, !39, i64 849100, !39, i64 849104, !39, i64 849108, !39, i64 849112, !39, i64 849116, !39, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !39, i64 849196, !39, i64 849200, !39, i64 849204, !39, i64 849208, !39, i64 849212, !39, i64 849216, !39, i64 849220, !39, i64 849224, !39, i64 849228, !39, i64 849232, !39, i64 849236, !39, i64 849240, !39, i64 849244, !39, i64 849248, !39, i64 849252, !39, i64 849256, !39, i64 849260, !39, i64 849264, !39, i64 849268, !39, i64 849272, !39, i64 849276, !39, i64 849280, !39, i64 849284, !36, i64 849288, !36, i64 849296, !76, i64 849304, !76, i64 849624, !76, i64 849944, !76, i64 850264, !76, i64 850584, !76, i64 850904, !76, i64 851224, !76, i64 851544, !39, i64 851864, !39, i64 851868, !39, i64 851872, !79, i64 851880, !39, i64 851888, !37, i64 851892, !39, i64 855988, !39, i64 855992, !39, i64 855996, !39, i64 856000, !39, i64 856004, !39, i64 856008, !39, i64 856012, !36, i64 856016, !36, i64 856024, !36, i64 856032, !36, i64 856040, !36, i64 856048, !37, i64 856056, !36, i64 856456, !37, i64 856464, !36, i64 856488, !36, i64 856496, !36, i64 856504, !39, i64 856512, !36, i64 856520, !37, i64 856528, !36, i64 856608, !36, i64 856616, !36, i64 856624, !36, i64 856632, !39, i64 856640, !39, i64 856644, !39, i64 856648, !36, i64 856656, !36, i64 856664, !37, i64 856672, !37, i64 856688, !36, i64 856704, !36, i64 856712, !39, i64 856720, !36, i64 856728, !36, i64 856736, !36, i64 856744, !36, i64 856752, !36, i64 856760, !36, i64 856768, !36, i64 856776, !36, i64 856784, !36, i64 856792, !36, i64 856800, !36, i64 856808, !36, i64 856816, !39, i64 856824, !36, i64 856832, !39, i64 856840, !39, i64 856844, !39, i64 856848, !39, i64 856852, !39, i64 856856, !39, i64 856860, !39, i64 856864, !36, i64 856872}
!76 = !{!"image_data", !77, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!77 = !{!"frame_format", !39, i64 0, !39, i64 4, !78, i64 8, !37, i64 16, !37, i64 28, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !39, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !39, i64 124, !39, i64 128}
!78 = !{!"double", !37, i64 0}
!79 = !{!"long", !37, i64 0}
!80 = !{!43, !39, i64 0}
!81 = distinct !{!81, !55}
!82 = distinct !{!82, !55}
!83 = distinct !{!83, !55}
!84 = distinct !{!84, !55}
!85 = distinct !{!85, !55}
!86 = distinct !{!86, !55}
!87 = !{!35, !39, i64 384}
!88 = !{!35, !39, i64 24}
!89 = !{!35, !41, i64 114}
!90 = distinct !{!90, !55}
!91 = distinct !{!91, !55}
!92 = distinct !{!92, !55}
!93 = distinct !{!93, !55}
!94 = !{!75, !39, i64 849216}
!95 = !{!51, !39, i64 13336}
!96 = !{!75, !39, i64 848776}
!97 = !{!35, !39, i64 96}
!98 = distinct !{!98, !55}
!99 = distinct !{!99, !55}
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
!116 = distinct !{!116, !55}
!117 = distinct !{!117, !55}
!118 = !{!40, !41, i64 2}
!119 = !{!43, !37, i64 40}
!120 = !{!40, !41, i64 0}
!121 = distinct !{!121, !55}
!122 = distinct !{!122, !55}
!123 = !{!"mb_prediction.c:RSD"}
!124 = !{!"mb_prediction.c:iabs"}
!125 = !{!"mb_prediction.c:imin"}
!126 = distinct !{!126, !55}
!127 = distinct !{!127, !55}
!128 = distinct !{!128, !55}
!129 = distinct !{!129, !55}
!130 = distinct !{!130, !55}
!131 = distinct !{!131, !55}
!132 = distinct !{!132, !55}
!133 = distinct !{!133, !55}
!134 = distinct !{!134, !55}
!135 = distinct !{!135, !55}
!136 = distinct !{!136, !55}
!137 = distinct !{!137, !55}
!138 = distinct !{!138, !55}
!139 = !{!"mb_prediction.c:update_neighbor_mvs"}
!140 = !{i64 0, i64 16, !47, i64 16, i64 8, !47, i64 24, i64 2, !47}
!141 = distinct !{!141, !55}
!142 = distinct !{!142, !55}
!143 = distinct !{!143, !55}
!144 = !{!51, !39, i64 132}
!145 = distinct !{!145, !55}
!146 = distinct !{!146, !55}
!147 = distinct !{!147, !55}
!148 = distinct !{!148, !55}
!149 = distinct !{!149, !55}
!150 = !{!51, !36, i64 13520}
!151 = !{!51, !36, i64 1272}
!152 = !{!43, !36, i64 128}
!153 = !{!41, !41, i64 0}
!154 = distinct !{!154, !55, !155, !156}
!155 = !{!"llvm.loop.isvectorized", i32 1}
!156 = !{!"llvm.loop.unroll.runtime.disable"}
!157 = distinct !{!157, !55}
!158 = !{!75, !39, i64 849280}
!159 = !{!75, !39, i64 849112}
!160 = !{!75, !39, i64 849108}
!161 = distinct !{!161, !55}
!162 = distinct !{!162, !55}
!163 = distinct !{!163, !55}
!164 = !{!75, !36, i64 848832}
!165 = !{!35, !37, i64 374}
!166 = !{!79, !79, i64 0}
!167 = !{!51, !39, i64 212}
