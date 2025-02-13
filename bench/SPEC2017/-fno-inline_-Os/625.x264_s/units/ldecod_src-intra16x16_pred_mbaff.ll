; ModuleID = 'ldecod_src/intra16x16_pred_mbaff.c'
source_filename = "ldecod_src/intra16x16_pred_mbaff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pix_pos = type { i32, i32, i16, i16, i16, i16 }
%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }
%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [3 x ptr], %struct.pic_motion_params_old, [3 x %struct.pic_motion_params_old], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, [2 x i8], [2 x ptr] }
%struct.pic_motion_params_old = type { ptr }
%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"illegal 16x16 intra prediction mode input: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"invalid 16x16 intra pred Mode VERT_PRED_16\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"invalid 16x16 intra pred Mode HOR_PRED_16\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"invalid 16x16 intra pred Mode PLANE_16\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @intrapred_16x16_mbaff(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  switch i32 %2, label %8 [
    i32 0, label %4
    i32 1, label %5
    i32 2, label %6
    i32 3, label %7
  ]

4:                                                ; preds = %3
  tail call fastcc void @intra16x16_vert_pred_mbaff(ptr noundef %0, i32 noundef %1) #7
  br label %10

5:                                                ; preds = %3
  tail call fastcc void @intra16x16_hor_pred_mbaff(ptr noundef %0, i32 noundef %1) #7
  br label %10

6:                                                ; preds = %3
  tail call fastcc void @intra16x16_dc_pred_mbaff(ptr noundef %0, i32 noundef %1) #7
  br label %10

7:                                                ; preds = %3
  tail call fastcc void @intra16x16_plane_pred_mbaff(ptr noundef %0, i32 noundef %1) #7
  br label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %2) #7
  br label %10

10:                                               ; preds = %8, %7, %6, %5, %4
  %11 = phi i32 [ 1, %8 ], [ 0, %7 ], [ 0, %6 ], [ 0, %5 ], [ 0, %4 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra16x16_vert_pred_mbaff(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !35 {
  %3 = alloca %struct.pix_pos, align 4
  %4 = load ptr, ptr %0, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 125
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  br i1 %7, label %16, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 33
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = add i32 %1, -1
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14
  br label %18

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 32
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi ptr [ %15, %10 ], [ %17, %16 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %21 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 160
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 81
  call void %22(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %23, ptr noundef nonnull %3) #9
  %24 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !58
  %26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %25, i64 0, i32 30
  %27 = load i32, ptr %26, align 4, !tbaa !59
  %28 = icmp eq i32 %27, 0
  %29 = load i32, ptr %3, align 4, !tbaa !61
  br i1 %28, label %41, label %30

30:                                               ; preds = %18
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 128
  %34 = load ptr, ptr %33, align 8, !tbaa !63
  %35 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !64
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %34, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !65
  %40 = sext i8 %39 to i32
  br label %41

41:                                               ; preds = %18, %32
  %42 = phi i32 [ %40, %32 ], [ %29, %18 ]
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %30, %41
  call void @error(ptr noundef nonnull @.str.1, i32 noundef 500) #9
  br label %45

45:                                               ; preds = %44, %41
  %46 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 77
  %47 = load ptr, ptr %46, align 8, !tbaa !66
  %48 = zext i32 %1 to i64
  %49 = getelementptr inbounds ptr, ptr %47, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !51
  %51 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 5
  %52 = load i16, ptr %51, align 2, !tbaa !67
  %53 = sext i16 %52 to i64
  %54 = getelementptr inbounds ptr, ptr %20, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !51
  %56 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 4
  %57 = load i16, ptr %56, align 4, !tbaa !68
  %58 = sext i16 %57 to i64
  %59 = getelementptr inbounds i16, ptr %55, i64 %58
  br label %60

60:                                               ; preds = %45, %60
  %61 = phi i32 [ 0, %45 ], [ %71, %60 ]
  %62 = phi ptr [ %50, %45 ], [ %69, %60 ]
  %63 = getelementptr inbounds ptr, ptr %62, i64 1
  %64 = load ptr, ptr %62, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %64, ptr noundef nonnull align 2 dereferenceable(32) %59, i64 32, i1 false)
  %65 = getelementptr inbounds ptr, ptr %62, i64 2
  %66 = load ptr, ptr %63, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %66, ptr noundef nonnull align 2 dereferenceable(32) %59, i64 32, i1 false)
  %67 = getelementptr inbounds ptr, ptr %62, i64 3
  %68 = load ptr, ptr %65, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %68, ptr noundef nonnull align 2 dereferenceable(32) %59, i64 32, i1 false)
  %69 = getelementptr inbounds ptr, ptr %62, i64 4
  %70 = load ptr, ptr %67, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %70, ptr noundef nonnull align 2 dereferenceable(32) %59, i64 32, i1 false)
  %71 = add nuw nsw i32 %61, 4
  %72 = icmp ult i32 %61, 12
  br i1 %72, label %60, label %73, !llvm.loop !69

73:                                               ; preds = %60
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra16x16_hor_pred_mbaff(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !71 {
  %3 = alloca [17 x %struct.pix_pos], align 16
  %4 = load ptr, ptr %0, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 125
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  br i1 %7, label %16, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 33
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = add i32 %1, -1
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14
  br label %18

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 32
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi ptr [ %15, %10 ], [ %17, %16 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  %21 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 77
  %22 = load ptr, ptr %21, align 8, !tbaa !66
  %23 = zext i32 %1 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %3) #8
  %26 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 160
  %27 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 81
  br label %28

28:                                               ; preds = %18, %28
  %29 = phi i64 [ 0, %18 ], [ %34, %28 ]
  %30 = load ptr, ptr %26, align 8, !tbaa !52
  %31 = getelementptr inbounds [17 x %struct.pix_pos], ptr %3, i64 0, i64 %29
  %32 = trunc i64 %29 to i32
  %33 = add i32 %32, -1
  call void %30(ptr noundef nonnull %0, i32 noundef -1, i32 noundef %33, ptr noundef nonnull %27, ptr noundef nonnull %31) #9
  %34 = add nuw nsw i64 %29, 1
  %35 = icmp eq i64 %34, 17
  br i1 %35, label %36, label %28, !llvm.loop !72

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !58
  %39 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %38, i64 0, i32 30
  %40 = load i32, ptr %39, align 4, !tbaa !59
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 128
  br label %47

44:                                               ; preds = %36
  %45 = getelementptr inbounds [17 x %struct.pix_pos], ptr %3, i64 0, i64 1
  %46 = load i32, ptr %45, align 16, !tbaa !61
  br label %66

47:                                               ; preds = %42, %61
  %48 = phi i64 [ 1, %42 ], [ %64, %61 ]
  %49 = phi i32 [ 1, %42 ], [ %63, %61 ]
  %50 = getelementptr inbounds [17 x %struct.pix_pos], ptr %3, i64 0, i64 %48
  %51 = load i32, ptr %50, align 16, !tbaa !61
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %47
  %54 = load ptr, ptr %43, align 8, !tbaa !63
  %55 = getelementptr inbounds [17 x %struct.pix_pos], ptr %3, i64 0, i64 %48, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !64
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %54, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !65
  %60 = sext i8 %59 to i32
  br label %61

61:                                               ; preds = %47, %53
  %62 = phi i32 [ %60, %53 ], [ 0, %47 ]
  %63 = and i32 %62, %49
  %64 = add nuw nsw i64 %48, 1
  %65 = icmp eq i64 %64, 17
  br i1 %65, label %66, label %47, !llvm.loop !73

66:                                               ; preds = %61, %44
  %67 = phi i32 [ %46, %44 ], [ %63, %61 ]
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  call void @error(ptr noundef nonnull @.str.2, i32 noundef 500) #9
  br label %70

70:                                               ; preds = %69, %66
  br label %71

71:                                               ; preds = %70, %71
  %72 = phi i64 [ %73, %71 ], [ 0, %70 ]
  %73 = add nuw nsw i64 %72, 1
  %74 = getelementptr inbounds [17 x %struct.pix_pos], ptr %3, i64 0, i64 %73, i32 5
  %75 = load i16, ptr %74, align 2, !tbaa !67
  %76 = sext i16 %75 to i64
  %77 = getelementptr inbounds ptr, ptr %20, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !51
  %79 = getelementptr inbounds [17 x %struct.pix_pos], ptr %3, i64 0, i64 %73, i32 4
  %80 = load i16, ptr %79, align 4, !tbaa !68
  %81 = sext i16 %80 to i64
  %82 = getelementptr inbounds i16, ptr %78, i64 %81
  %83 = load i16, ptr %82, align 2, !tbaa !74
  %84 = insertelement <8 x i16> poison, i16 %83, i64 0
  %85 = shufflevector <8 x i16> %84, <8 x i16> poison, <8 x i32> zeroinitializer
  %86 = getelementptr inbounds ptr, ptr %25, i64 %72
  %87 = load ptr, ptr %86, align 8, !tbaa !51
  store <8 x i16> %85, ptr %87, align 2, !tbaa !74
  %88 = getelementptr inbounds i16, ptr %87, i64 8
  store <8 x i16> %85, ptr %88, align 2, !tbaa !74
  %89 = icmp eq i64 %73, 16
  br i1 %89, label %90, label %71, !llvm.loop !75

90:                                               ; preds = %71
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %3) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra16x16_dc_pred_mbaff(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !76 {
  %3 = alloca %struct.pix_pos, align 4
  %4 = alloca [17 x %struct.pix_pos], align 16
  %5 = load ptr, ptr %0, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = icmp eq i32 %1, 0
  %9 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 125
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  br i1 %8, label %17, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.storable_picture, ptr %10, i64 0, i32 33
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = add i32 %1, -1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  br label %19

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.storable_picture, ptr %10, i64 0, i32 32
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi ptr [ %16, %11 ], [ %18, %17 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 77
  %23 = load ptr, ptr %22, align 8, !tbaa !66
  %24 = zext i32 %1 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %4) #8
  %27 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 160
  %28 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 81
  br label %29

29:                                               ; preds = %19, %29
  %30 = phi i64 [ 0, %19 ], [ %35, %29 ]
  %31 = load ptr, ptr %27, align 8, !tbaa !52
  %32 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 %30
  %33 = trunc i64 %30 to i32
  %34 = add i32 %33, -1
  call void %31(ptr noundef nonnull %0, i32 noundef -1, i32 noundef %34, ptr noundef nonnull %28, ptr noundef nonnull %32) #9
  %35 = add nuw nsw i64 %30, 1
  %36 = icmp eq i64 %35, 17
  br i1 %36, label %37, label %29, !llvm.loop !77

37:                                               ; preds = %29
  %38 = load ptr, ptr %27, align 8, !tbaa !52
  call void %38(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %28, ptr noundef nonnull %3) #9
  %39 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !58
  %41 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %40, i64 0, i32 30
  %42 = load i32, ptr %41, align 4, !tbaa !59
  %43 = icmp eq i32 %42, 0
  %44 = load i32, ptr %3, align 4, !tbaa !61
  br i1 %43, label %45, label %48

45:                                               ; preds = %37
  %46 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 1
  %47 = load i32, ptr %46, align 16, !tbaa !61
  br label %81

48:                                               ; preds = %37
  %49 = icmp eq i32 %44, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 128
  %52 = load ptr, ptr %51, align 8, !tbaa !63
  %53 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !64
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, ptr %52, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !65
  %58 = sext i8 %57 to i32
  br label %59

59:                                               ; preds = %48, %50
  %60 = phi i32 [ %58, %50 ], [ 0, %48 ]
  %61 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 128
  br label %62

62:                                               ; preds = %59, %76
  %63 = phi i64 [ 1, %59 ], [ %79, %76 ]
  %64 = phi i32 [ 1, %59 ], [ %78, %76 ]
  %65 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 %63
  %66 = load i32, ptr %65, align 16, !tbaa !61
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %62
  %69 = load ptr, ptr %61, align 8, !tbaa !63
  %70 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 %63, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !64
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %69, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !65
  %75 = sext i8 %74 to i32
  br label %76

76:                                               ; preds = %62, %68
  %77 = phi i32 [ %75, %68 ], [ 0, %62 ]
  %78 = and i32 %77, %64
  %79 = add nuw nsw i64 %63, 1
  %80 = icmp eq i64 %79, 17
  br i1 %80, label %81, label %62, !llvm.loop !78

81:                                               ; preds = %76, %45
  %82 = phi i32 [ %44, %45 ], [ %60, %76 ]
  %83 = phi i32 [ %47, %45 ], [ %78, %76 ]
  %84 = icmp eq i32 %82, 0
  %85 = icmp eq i32 %83, 0
  %86 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 5
  %87 = load i16, ptr %86, align 2
  %88 = sext i16 %87 to i64
  %89 = getelementptr inbounds ptr, ptr %21, i64 %88
  %90 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 4
  %91 = load i16, ptr %90, align 4
  %92 = sext i16 %91 to i64
  br label %93

93:                                               ; preds = %81, %120
  %94 = phi i64 [ 0, %81 ], [ %106, %120 ]
  %95 = phi i32 [ 0, %81 ], [ %105, %120 ]
  %96 = phi i32 [ 0, %81 ], [ %121, %120 ]
  br i1 %84, label %104, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %89, align 8, !tbaa !51
  %99 = getelementptr i16, ptr %98, i64 %94
  %100 = getelementptr i16, ptr %99, i64 %92
  %101 = load i16, ptr %100, align 2, !tbaa !74
  %102 = zext i16 %101 to i32
  %103 = add nsw i32 %95, %102
  br label %104

104:                                              ; preds = %97, %93
  %105 = phi i32 [ %103, %97 ], [ %95, %93 ]
  %106 = add nuw nsw i64 %94, 1
  br i1 %85, label %120, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 %106, i32 5
  %109 = load i16, ptr %108, align 2, !tbaa !67
  %110 = sext i16 %109 to i64
  %111 = getelementptr inbounds ptr, ptr %21, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !51
  %113 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 %106, i32 4
  %114 = load i16, ptr %113, align 4, !tbaa !68
  %115 = sext i16 %114 to i64
  %116 = getelementptr inbounds i16, ptr %112, i64 %115
  %117 = load i16, ptr %116, align 2, !tbaa !74
  %118 = zext i16 %117 to i32
  %119 = add nsw i32 %96, %118
  br label %120

120:                                              ; preds = %104, %107
  %121 = phi i32 [ %119, %107 ], [ %96, %104 ]
  %122 = icmp eq i64 %106, 16
  br i1 %122, label %123, label %93, !llvm.loop !79

123:                                              ; preds = %120
  %124 = icmp ne i32 %82, 0
  %125 = icmp ne i32 %83, 0
  %126 = select i1 %124, i1 %125, i1 false
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = add i32 %121, 16
  %129 = add i32 %128, %105
  %130 = ashr i32 %129, 5
  br label %144

131:                                              ; preds = %123
  %132 = select i1 %84, i1 %125, i1 false
  br i1 %132, label %133, label %136

133:                                              ; preds = %131
  %134 = add nsw i32 %121, 8
  %135 = ashr i32 %134, 4
  br label %144

136:                                              ; preds = %131
  %137 = select i1 %84, i1 true, i1 %125
  br i1 %137, label %141, label %138

138:                                              ; preds = %136
  %139 = add nsw i32 %105, 8
  %140 = ashr i32 %139, 4
  br label %144

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 69, i64 %24
  %143 = load i32, ptr %142, align 4, !tbaa !80
  br label %144

144:                                              ; preds = %133, %141, %138, %127
  %145 = phi i32 [ %130, %127 ], [ %135, %133 ], [ %143, %141 ], [ %140, %138 ]
  %146 = trunc i32 %145 to i16
  %147 = insertelement <8 x i16> poison, i16 %146, i64 0
  %148 = shufflevector <8 x i16> %147, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %149

149:                                              ; preds = %144, %149
  %150 = phi i64 [ 0, %144 ], [ %154, %149 ]
  %151 = getelementptr inbounds ptr, ptr %26, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !51
  store <8 x i16> %148, ptr %152, align 2, !tbaa !74
  %153 = getelementptr inbounds i16, ptr %152, i64 8
  store <8 x i16> %148, ptr %153, align 2, !tbaa !74
  %154 = add nuw nsw i64 %150, 1
  %155 = icmp eq i64 %154, 16
  br i1 %155, label %156, label %149, !llvm.loop !81

156:                                              ; preds = %149
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra16x16_plane_pred_mbaff(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !82 {
  %3 = alloca %struct.pix_pos, align 4
  %4 = alloca [17 x %struct.pix_pos], align 16
  %5 = load ptr, ptr %0, align 8, !tbaa !36
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = icmp eq i32 %1, 0
  %9 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 125
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  br i1 %8, label %17, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.storable_picture, ptr %10, i64 0, i32 33
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = add i32 %1, -1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  br label %19

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.storable_picture, ptr %10, i64 0, i32 32
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi ptr [ %16, %11 ], [ %18, %17 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 77
  %23 = load ptr, ptr %22, align 8, !tbaa !66
  %24 = zext i32 %1 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !51
  %27 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 70, i64 %24
  %28 = load i32, ptr %27, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %4) #8
  %29 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 160
  %30 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 81
  br label %31

31:                                               ; preds = %19, %31
  %32 = phi i64 [ 0, %19 ], [ %37, %31 ]
  %33 = load ptr, ptr %29, align 8, !tbaa !52
  %34 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 %32
  %35 = trunc i64 %32 to i32
  %36 = add i32 %35, -1
  call void %33(ptr noundef nonnull %0, i32 noundef -1, i32 noundef %36, ptr noundef nonnull %30, ptr noundef nonnull %34) #9
  %37 = add nuw nsw i64 %32, 1
  %38 = icmp eq i64 %37, 17
  br i1 %38, label %39, label %31, !llvm.loop !83

39:                                               ; preds = %31
  %40 = load ptr, ptr %29, align 8, !tbaa !52
  call void %40(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %30, ptr noundef nonnull %3) #9
  %41 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !58
  %43 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %42, i64 0, i32 30
  %44 = load i32, ptr %43, align 4, !tbaa !59
  %45 = icmp eq i32 %44, 0
  %46 = load i32, ptr %3, align 4, !tbaa !61
  br i1 %45, label %47, label %51

47:                                               ; preds = %39
  %48 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 1
  %49 = load i32, ptr %48, align 16, !tbaa !61
  %50 = load i32, ptr %4, align 16, !tbaa !61
  br label %95

51:                                               ; preds = %39
  %52 = icmp eq i32 %46, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 128
  %55 = load ptr, ptr %54, align 8, !tbaa !63
  %56 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !64
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %55, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !65
  %61 = sext i8 %60 to i32
  br label %62

62:                                               ; preds = %51, %53
  %63 = phi i32 [ %61, %53 ], [ 0, %51 ]
  %64 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 128
  br label %65

65:                                               ; preds = %62, %79
  %66 = phi i64 [ 1, %62 ], [ %82, %79 ]
  %67 = phi i32 [ 1, %62 ], [ %81, %79 ]
  %68 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 %66
  %69 = load i32, ptr %68, align 16, !tbaa !61
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %65
  %72 = load ptr, ptr %64, align 8, !tbaa !63
  %73 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 %66, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !64
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, ptr %72, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !65
  %78 = sext i8 %77 to i32
  br label %79

79:                                               ; preds = %65, %71
  %80 = phi i32 [ %78, %71 ], [ 0, %65 ]
  %81 = and i32 %80, %67
  %82 = add nuw nsw i64 %66, 1
  %83 = icmp eq i64 %82, 17
  br i1 %83, label %84, label %65, !llvm.loop !84

84:                                               ; preds = %79
  %85 = load i32, ptr %4, align 16, !tbaa !61
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %104, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %64, align 8, !tbaa !63
  %89 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %90 = load i32, ptr %89, align 4, !tbaa !64
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, ptr %88, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !65
  %94 = sext i8 %93 to i32
  br label %95

95:                                               ; preds = %87, %47
  %96 = phi i32 [ %46, %47 ], [ %63, %87 ]
  %97 = phi i32 [ %49, %47 ], [ %81, %87 ]
  %98 = phi i32 [ %50, %47 ], [ %94, %87 ]
  %99 = icmp ne i32 %96, 0
  %100 = icmp ne i32 %98, 0
  %101 = select i1 %99, i1 %100, i1 false
  %102 = icmp ne i32 %97, 0
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %105, label %104

104:                                              ; preds = %84, %95
  call void @error(ptr noundef nonnull @.str.3, i32 noundef 500) #9
  br label %105

105:                                              ; preds = %95, %104
  %106 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 5
  %107 = load i16, ptr %106, align 2, !tbaa !67
  %108 = sext i16 %107 to i64
  %109 = getelementptr inbounds ptr, ptr %21, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !51
  %111 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 4
  %112 = load i16, ptr %111, align 4, !tbaa !68
  %113 = sext i16 %112 to i64
  %114 = getelementptr i16, ptr %110, i64 %113
  %115 = getelementptr i16, ptr %114, i64 7
  br label %116

116:                                              ; preds = %105, %116
  %117 = phi i64 [ 1, %105 ], [ %158, %116 ]
  %118 = phi i32 [ 0, %105 ], [ %130, %116 ]
  %119 = phi i32 [ 0, %105 ], [ %157, %116 ]
  %120 = getelementptr inbounds i16, ptr %115, i64 %117
  %121 = load i16, ptr %120, align 2, !tbaa !74
  %122 = zext i16 %121 to i32
  %123 = sub nsw i64 0, %117
  %124 = getelementptr inbounds i16, ptr %115, i64 %123
  %125 = load i16, ptr %124, align 2, !tbaa !74
  %126 = zext i16 %125 to i32
  %127 = sub nsw i32 %122, %126
  %128 = trunc i64 %117 to i32
  %129 = mul nsw i32 %127, %128
  %130 = add nsw i32 %129, %118
  %131 = or disjoint i64 %117, 8
  %132 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 %131, i32 5
  %133 = load i16, ptr %132, align 2, !tbaa !67
  %134 = sext i16 %133 to i64
  %135 = getelementptr inbounds ptr, ptr %21, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !51
  %137 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 %131, i32 4
  %138 = load i16, ptr %137, align 4, !tbaa !68
  %139 = sext i16 %138 to i64
  %140 = getelementptr inbounds i16, ptr %136, i64 %139
  %141 = load i16, ptr %140, align 2, !tbaa !74
  %142 = zext i16 %141 to i32
  %143 = sub nuw nsw i64 8, %117
  %144 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 %143, i32 5
  %145 = load i16, ptr %144, align 2, !tbaa !67
  %146 = sext i16 %145 to i64
  %147 = getelementptr inbounds ptr, ptr %21, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !51
  %149 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 %143, i32 4
  %150 = load i16, ptr %149, align 4, !tbaa !68
  %151 = sext i16 %150 to i64
  %152 = getelementptr inbounds i16, ptr %148, i64 %151
  %153 = load i16, ptr %152, align 2, !tbaa !74
  %154 = zext i16 %153 to i32
  %155 = sub nsw i32 %142, %154
  %156 = mul nsw i32 %155, %128
  %157 = add nsw i32 %156, %119
  %158 = add nuw nsw i64 %117, 1
  %159 = icmp eq i64 %158, 8
  br i1 %159, label %160, label %116, !llvm.loop !85

160:                                              ; preds = %116
  %161 = getelementptr i16, ptr %114, i64 15
  %162 = load i16, ptr %161, align 2, !tbaa !74
  %163 = zext i16 %162 to i32
  %164 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 5
  %165 = load i16, ptr %164, align 2, !tbaa !67
  %166 = sext i16 %165 to i64
  %167 = getelementptr inbounds ptr, ptr %21, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !51
  %169 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 4
  %170 = load i16, ptr %169, align 4, !tbaa !68
  %171 = sext i16 %170 to i64
  %172 = getelementptr inbounds i16, ptr %168, i64 %171
  %173 = load i16, ptr %172, align 2, !tbaa !74
  %174 = zext i16 %173 to i32
  %175 = sub nsw i32 %163, %174
  %176 = shl nsw i32 %175, 3
  %177 = add nsw i32 %176, %130
  %178 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 16, i32 5
  %179 = load i16, ptr %178, align 2, !tbaa !67
  %180 = sext i16 %179 to i64
  %181 = getelementptr inbounds ptr, ptr %21, i64 %180
  %182 = load ptr, ptr %181, align 8, !tbaa !51
  %183 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 16, i32 4
  %184 = load i16, ptr %183, align 4, !tbaa !68
  %185 = sext i16 %184 to i64
  %186 = getelementptr inbounds i16, ptr %182, i64 %185
  %187 = load i16, ptr %186, align 2, !tbaa !74
  %188 = zext i16 %187 to i32
  %189 = sub nsw i32 %188, %174
  %190 = shl nsw i32 %189, 3
  %191 = add nsw i32 %190, %157
  %192 = mul nsw i32 %177, 5
  %193 = add nsw i32 %192, 32
  %194 = ashr i32 %193, 6
  %195 = mul nsw i32 %191, 5
  %196 = add nsw i32 %195, 32
  %197 = ashr i32 %196, 6
  %198 = add nuw nsw i32 %188, %163
  %199 = shl nuw nsw i32 %198, 4
  %200 = add nuw nsw i32 %199, 16
  br label %201

201:                                              ; preds = %160, %221
  %202 = phi i64 [ 0, %160 ], [ %222, %221 ]
  %203 = trunc i64 %202 to i32
  %204 = add i32 %203, -7
  %205 = mul i32 %204, %197
  %206 = add i32 %200, %205
  %207 = getelementptr inbounds ptr, ptr %26, i64 %202
  %208 = load ptr, ptr %207, align 8, !tbaa !51
  br label %209

209:                                              ; preds = %201, %209
  %210 = phi i64 [ 0, %201 ], [ %219, %209 ]
  %211 = trunc i64 %210 to i32
  %212 = add i32 %211, -7
  %213 = mul i32 %212, %194
  %214 = add i32 %206, %213
  %215 = ashr i32 %214, 5
  %216 = call fastcc i32 @iClip1(i32 noundef %28, i32 noundef %215) #7
  %217 = trunc i32 %216 to i16
  %218 = getelementptr inbounds i16, ptr %208, i64 %210
  store i16 %217, ptr %218, align 2, !tbaa !74
  %219 = add nuw nsw i64 %210, 1
  %220 = icmp eq i64 %219, 16
  br i1 %220, label %221, label %209, !llvm.loop !86

221:                                              ; preds = %209
  %222 = add nuw nsw i64 %202, 1
  %223 = icmp eq i64 %222, 16
  br i1 %223, label %224, label %201, !llvm.loop !87

224:                                              ; preds = %221
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @iClip1(i32 noundef %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !88 {
  %3 = tail call fastcc i32 @imax(i32 noundef %1) #7
  %4 = tail call fastcc i32 @imin(i32 noundef %3, i32 noundef %0) #7
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imax(i32 noundef %0) unnamed_addr #5 !PGOFuncName !89 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imin(i32 noundef %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !90 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { optsize }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }

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
!35 = !{!"intra16x16_pred_mbaff.c:intra16x16_vert_pred_mbaff"}
!36 = !{!37, !38, i64 0}
!37 = !{!"macroblock", !38, i64 0, !38, i64 8, !38, i64 16, !41, i64 24, !42, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !39, i64 72, !39, i64 80, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !43, i64 108, !39, i64 110, !39, i64 111, !43, i64 112, !43, i64 114, !38, i64 120, !38, i64 128, !38, i64 136, !38, i64 144, !43, i64 152, !39, i64 154, !41, i64 284, !39, i64 288, !39, i64 312, !39, i64 336, !41, i64 360, !39, i64 364, !39, i64 368, !39, i64 372, !39, i64 373, !39, i64 374, !43, i64 376, !43, i64 378, !43, i64 380, !41, i64 384, !41, i64 388, !41, i64 392, !41, i64 396, !41, i64 400, !41, i64 404, !41, i64 408, !41, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !38, i64 432, !38, i64 440, !38, i64 448, !38, i64 456, !38, i64 464, !39, i64 472}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!"", !43, i64 0, !43, i64 2}
!43 = !{!"short", !39, i64 0}
!44 = !{!37, !38, i64 8}
!45 = !{!46, !38, i64 13520}
!46 = !{!"slice", !38, i64 0, !38, i64 8, !38, i64 16, !38, i64 24, !41, i64 32, !38, i64 40, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !39, i64 88, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !43, i64 116, !41, i64 120, !41, i64 124, !41, i64 128, !41, i64 132, !39, i64 136, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !39, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !41, i64 208, !41, i64 212, !41, i64 216, !41, i64 220, !41, i64 224, !41, i64 228, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !38, i64 248, !39, i64 256, !39, i64 264, !38, i64 312, !38, i64 320, !38, i64 328, !39, i64 336, !39, i64 1104, !39, i64 1112, !39, i64 1128, !39, i64 1144, !39, i64 1160, !41, i64 1176, !41, i64 1180, !41, i64 1184, !47, i64 1188, !43, i64 1220, !43, i64 1222, !43, i64 1224, !41, i64 1228, !41, i64 1232, !41, i64 1236, !41, i64 1240, !38, i64 1248, !38, i64 1256, !38, i64 1264, !38, i64 1272, !38, i64 1280, !39, i64 1288, !38, i64 1352, !38, i64 1360, !38, i64 1368, !38, i64 1376, !38, i64 1384, !39, i64 1392, !39, i64 2544, !39, i64 3696, !39, i64 8304, !39, i64 12912, !39, i64 13008, !41, i64 13264, !41, i64 13268, !43, i64 13272, !43, i64 13274, !43, i64 13276, !43, i64 13278, !38, i64 13280, !38, i64 13288, !38, i64 13296, !43, i64 13304, !43, i64 13306, !41, i64 13308, !41, i64 13312, !38, i64 13320, !38, i64 13328, !41, i64 13336, !39, i64 13340, !38, i64 13408, !38, i64 13416, !38, i64 13424, !38, i64 13432, !38, i64 13440, !38, i64 13448, !38, i64 13456, !38, i64 13464, !38, i64 13472, !38, i64 13480, !38, i64 13488, !38, i64 13496, !41, i64 13504, !38, i64 13512, !38, i64 13520, !38, i64 13528, !38, i64 13536, !38, i64 13544, !39, i64 13552}
!47 = !{!"nalunitheadermvcext_tag", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28}
!48 = !{!49, !38, i64 136}
!49 = !{!"storable_picture", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !39, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !43, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96, !41, i64 100, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !38, i64 128, !38, i64 136, !38, i64 144, !38, i64 152, !39, i64 160, !50, i64 184, !39, i64 192, !38, i64 216, !38, i64 224, !38, i64 232, !38, i64 240, !41, i64 248, !41, i64 252, !41, i64 256, !41, i64 260, !41, i64 264, !41, i64 268, !41, i64 272, !41, i64 276, !41, i64 280, !41, i64 284, !41, i64 288, !41, i64 292, !41, i64 296, !39, i64 300, !41, i64 308, !38, i64 312, !41, i64 320, !41, i64 324, !41, i64 328, !41, i64 332, !38, i64 336, !41, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !41, i64 368, !38, i64 376, !41, i64 384, !41, i64 388, !39, i64 392, !39, i64 400}
!50 = !{!"pic_motion_params_old", !38, i64 0}
!51 = !{!38, !38, i64 0}
!52 = !{!53, !38, i64 856744}
!53 = !{!"video_par", !38, i64 0, !38, i64 8, !38, i64 16, !39, i64 24, !39, i64 132120, !38, i64 699416, !39, i64 699424, !41, i64 848672, !41, i64 848676, !41, i64 848680, !41, i64 848684, !38, i64 848688, !38, i64 848696, !38, i64 848704, !41, i64 848712, !41, i64 848716, !41, i64 848720, !41, i64 848724, !41, i64 848728, !38, i64 848736, !38, i64 848744, !39, i64 848752, !41, i64 848776, !41, i64 848780, !41, i64 848784, !41, i64 848788, !41, i64 848792, !38, i64 848800, !39, i64 848808, !38, i64 848832, !38, i64 848840, !39, i64 848848, !41, i64 848872, !41, i64 848876, !38, i64 848880, !38, i64 848888, !39, i64 848896, !41, i64 848920, !38, i64 848928, !38, i64 848936, !41, i64 848944, !41, i64 848948, !41, i64 848952, !41, i64 848956, !41, i64 848960, !41, i64 848964, !41, i64 848968, !41, i64 848972, !41, i64 848976, !41, i64 848980, !41, i64 848984, !41, i64 848988, !41, i64 848992, !41, i64 848996, !41, i64 849000, !41, i64 849004, !41, i64 849008, !41, i64 849012, !41, i64 849016, !41, i64 849020, !41, i64 849024, !41, i64 849028, !41, i64 849032, !41, i64 849036, !43, i64 849040, !43, i64 849042, !39, i64 849044, !41, i64 849052, !41, i64 849056, !39, i64 849060, !39, i64 849072, !41, i64 849084, !41, i64 849088, !41, i64 849092, !41, i64 849096, !41, i64 849100, !41, i64 849104, !41, i64 849108, !41, i64 849112, !41, i64 849116, !41, i64 849120, !39, i64 849124, !39, i64 849148, !39, i64 849172, !41, i64 849196, !41, i64 849200, !41, i64 849204, !41, i64 849208, !41, i64 849212, !41, i64 849216, !41, i64 849220, !41, i64 849224, !41, i64 849228, !41, i64 849232, !41, i64 849236, !41, i64 849240, !41, i64 849244, !41, i64 849248, !41, i64 849252, !41, i64 849256, !41, i64 849260, !41, i64 849264, !41, i64 849268, !41, i64 849272, !41, i64 849276, !41, i64 849280, !41, i64 849284, !38, i64 849288, !38, i64 849296, !54, i64 849304, !54, i64 849624, !54, i64 849944, !54, i64 850264, !54, i64 850584, !54, i64 850904, !54, i64 851224, !54, i64 851544, !41, i64 851864, !41, i64 851868, !41, i64 851872, !57, i64 851880, !41, i64 851888, !39, i64 851892, !41, i64 855988, !41, i64 855992, !41, i64 855996, !41, i64 856000, !41, i64 856004, !41, i64 856008, !41, i64 856012, !38, i64 856016, !38, i64 856024, !38, i64 856032, !38, i64 856040, !38, i64 856048, !39, i64 856056, !38, i64 856456, !39, i64 856464, !38, i64 856488, !38, i64 856496, !38, i64 856504, !41, i64 856512, !38, i64 856520, !39, i64 856528, !38, i64 856608, !38, i64 856616, !38, i64 856624, !38, i64 856632, !41, i64 856640, !41, i64 856644, !41, i64 856648, !38, i64 856656, !38, i64 856664, !39, i64 856672, !39, i64 856688, !38, i64 856704, !38, i64 856712, !41, i64 856720, !38, i64 856728, !38, i64 856736, !38, i64 856744, !38, i64 856752, !38, i64 856760, !38, i64 856768, !38, i64 856776, !38, i64 856784, !38, i64 856792, !38, i64 856800, !38, i64 856808, !38, i64 856816, !41, i64 856824, !38, i64 856832, !41, i64 856840, !41, i64 856844, !41, i64 856848, !41, i64 856852, !41, i64 856856, !41, i64 856860, !41, i64 856864, !38, i64 856872}
!54 = !{!"image_data", !55, i64 0, !39, i64 136, !39, i64 160, !39, i64 184, !39, i64 208, !39, i64 232, !39, i64 256, !39, i64 280, !39, i64 292, !39, i64 304}
!55 = !{!"frame_format", !41, i64 0, !41, i64 4, !56, i64 8, !39, i64 16, !39, i64 28, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !39, i64 72, !41, i64 84, !39, i64 88, !39, i64 100, !39, i64 112, !41, i64 124, !41, i64 128}
!56 = !{!"double", !39, i64 0}
!57 = !{!"long", !39, i64 0}
!58 = !{!53, !38, i64 8}
!59 = !{!60, !41, i64 2204}
!60 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !39, i64 24, !39, i64 72, !39, i64 456, !39, i64 1992, !39, i64 2016, !41, i64 2040, !41, i64 2044, !41, i64 2048, !39, i64 2052, !39, i64 2084, !39, i64 2116, !41, i64 2148, !41, i64 2152, !41, i64 2156, !38, i64 2160, !41, i64 2168, !41, i64 2172, !41, i64 2176, !41, i64 2180, !41, i64 2184, !41, i64 2188, !41, i64 2192, !41, i64 2196, !41, i64 2200, !41, i64 2204, !41, i64 2208}
!61 = !{!62, !41, i64 0}
!62 = !{!"pix_pos", !41, i64 0, !41, i64 4, !43, i64 8, !43, i64 10, !43, i64 12, !43, i64 14}
!63 = !{!46, !38, i64 13544}
!64 = !{!62, !41, i64 4}
!65 = !{!39, !39, i64 0}
!66 = !{!46, !38, i64 1248}
!67 = !{!62, !43, i64 14}
!68 = !{!62, !43, i64 12}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"intra16x16_pred_mbaff.c:intra16x16_hor_pred_mbaff"}
!72 = distinct !{!72, !70}
!73 = distinct !{!73, !70}
!74 = !{!43, !43, i64 0}
!75 = distinct !{!75, !70}
!76 = !{!"intra16x16_pred_mbaff.c:intra16x16_dc_pred_mbaff"}
!77 = distinct !{!77, !70}
!78 = distinct !{!78, !70}
!79 = distinct !{!79, !70}
!80 = !{!41, !41, i64 0}
!81 = distinct !{!81, !70}
!82 = !{!"intra16x16_pred_mbaff.c:intra16x16_plane_pred_mbaff"}
!83 = distinct !{!83, !70}
!84 = distinct !{!84, !70}
!85 = distinct !{!85, !70}
!86 = distinct !{!86, !70}
!87 = distinct !{!87, !70}
!88 = !{!"intra16x16_pred_mbaff.c:iClip1"}
!89 = !{!"intra16x16_pred_mbaff.c:imax"}
!90 = !{!"intra16x16_pred_mbaff.c:imin"}
