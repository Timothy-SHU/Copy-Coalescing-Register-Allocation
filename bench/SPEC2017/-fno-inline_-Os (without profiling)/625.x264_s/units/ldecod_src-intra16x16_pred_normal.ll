; ModuleID = 'ldecod_src/intra16x16_pred_normal.c'
source_filename = "ldecod_src/intra16x16_pred_normal.c"
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
define dso_local noundef i32 @intrapred_16x16_normal(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  switch i32 %2, label %8 [
    i32 0, label %4
    i32 1, label %5
    i32 2, label %6
    i32 3, label %7
  ]

4:                                                ; preds = %3
  tail call fastcc void @intra16x16_vert_pred(ptr noundef %0, i32 noundef %1) #7
  br label %10

5:                                                ; preds = %3
  tail call fastcc void @intra16x16_hor_pred(ptr noundef %0, i32 noundef %1) #7
  br label %10

6:                                                ; preds = %3
  tail call fastcc void @intra16x16_dc_pred(ptr noundef %0, i32 noundef %1) #7
  br label %10

7:                                                ; preds = %3
  tail call fastcc void @intra16x16_plane_pred(ptr noundef %0, i32 noundef %1) #7
  br label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %2) #7
  br label %10

10:                                               ; preds = %8, %7, %6, %5, %4
  %11 = phi i32 [ 1, %8 ], [ 0, %7 ], [ 0, %6 ], [ 0, %5 ], [ 0, %4 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra16x16_vert_pred(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.pix_pos, align 4
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 125
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  br i1 %7, label %16, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 33
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  %13 = add i32 %1, -1
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14
  br label %18

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 32
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi ptr [ %15, %10 ], [ %17, %16 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %21 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 160
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  %23 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 81
  call void %22(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %23, ptr noundef nonnull %3) #9
  %24 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !28
  %26 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %25, i64 0, i32 30
  %27 = load i32, ptr %26, align 4, !tbaa !29
  %28 = icmp eq i32 %27, 0
  %29 = load i32, ptr %3, align 4, !tbaa !31
  br i1 %28, label %41, label %30

30:                                               ; preds = %18
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 128
  %34 = load ptr, ptr %33, align 8, !tbaa !33
  %35 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !34
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %34, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !35
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
  %47 = load ptr, ptr %46, align 8, !tbaa !36
  %48 = zext i32 %1 to i64
  %49 = getelementptr inbounds ptr, ptr %47, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !21
  %51 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 5
  %52 = load i16, ptr %51, align 2, !tbaa !37
  %53 = sext i16 %52 to i64
  %54 = getelementptr inbounds ptr, ptr %20, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !21
  %56 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 4
  %57 = load i16, ptr %56, align 4, !tbaa !38
  %58 = sext i16 %57 to i64
  %59 = getelementptr inbounds i16, ptr %55, i64 %58
  br label %60

60:                                               ; preds = %45, %60
  %61 = phi i32 [ 0, %45 ], [ %71, %60 ]
  %62 = phi ptr [ %50, %45 ], [ %69, %60 ]
  %63 = getelementptr inbounds ptr, ptr %62, i64 1
  %64 = load ptr, ptr %62, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %64, ptr noundef nonnull align 2 dereferenceable(32) %59, i64 32, i1 false)
  %65 = getelementptr inbounds ptr, ptr %62, i64 2
  %66 = load ptr, ptr %63, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %66, ptr noundef nonnull align 2 dereferenceable(32) %59, i64 32, i1 false)
  %67 = getelementptr inbounds ptr, ptr %62, i64 3
  %68 = load ptr, ptr %65, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %68, ptr noundef nonnull align 2 dereferenceable(32) %59, i64 32, i1 false)
  %69 = getelementptr inbounds ptr, ptr %62, i64 4
  %70 = load ptr, ptr %67, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %70, ptr noundef nonnull align 2 dereferenceable(32) %59, i64 32, i1 false)
  %71 = add nuw nsw i32 %61, 4
  %72 = icmp ult i32 %61, 12
  br i1 %72, label %60, label %73, !llvm.loop !39

73:                                               ; preds = %60
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra16x16_hor_pred(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.pix_pos, align 4
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 125
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  br i1 %7, label %16, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 33
  %12 = load ptr, ptr %11, align 8, !tbaa !18
  %13 = add i32 %1, -1
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14
  br label %18

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 32
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi ptr [ %15, %10 ], [ %17, %16 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !21
  %21 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 77
  %22 = load ptr, ptr %21, align 8, !tbaa !36
  %23 = zext i32 %1 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %26 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 81
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %26, ptr noundef nonnull %3) #9
  %27 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !28
  %29 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %28, i64 0, i32 30
  %30 = load i32, ptr %29, align 4, !tbaa !29
  %31 = icmp eq i32 %30, 0
  %32 = load i32, ptr %3, align 4, !tbaa !31
  br i1 %31, label %44, label %33

33:                                               ; preds = %18
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 128
  %37 = load ptr, ptr %36, align 8, !tbaa !33
  %38 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !34
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %37, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !35
  %43 = sext i8 %42 to i32
  br label %44

44:                                               ; preds = %18, %35
  %45 = phi i32 [ %43, %35 ], [ %32, %18 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %33, %44
  call void @error(ptr noundef nonnull @.str.2, i32 noundef 500) #9
  br label %48

48:                                               ; preds = %47, %44
  %49 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 5
  %50 = load i16, ptr %49, align 2, !tbaa !37
  %51 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 4
  %52 = load i16, ptr %51, align 4, !tbaa !38
  %53 = sext i16 %52 to i64
  %54 = sext i16 %50 to i64
  br label %55

55:                                               ; preds = %48, %55
  %56 = phi i64 [ 0, %48 ], [ %70, %55 ]
  %57 = phi i64 [ %54, %48 ], [ %69, %55 ]
  %58 = getelementptr inbounds ptr, ptr %20, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !21
  %60 = getelementptr inbounds i16, ptr %59, i64 %53
  %61 = load i16, ptr %60, align 2, !tbaa !41
  %62 = insertelement <4 x i16> poison, i16 %61, i64 0
  %63 = shufflevector <4 x i16> %62, <4 x i16> poison, <4 x i32> zeroinitializer
  %64 = getelementptr inbounds ptr, ptr %25, i64 %56
  %65 = load ptr, ptr %64, align 8, !tbaa !21
  %66 = getelementptr inbounds i16, ptr %65, i64 4
  store <4 x i16> %63, ptr %65, align 2, !tbaa !41
  %67 = getelementptr inbounds i16, ptr %65, i64 8
  store <4 x i16> %63, ptr %66, align 2, !tbaa !41
  %68 = getelementptr inbounds i16, ptr %65, i64 12
  store <4 x i16> %63, ptr %67, align 2, !tbaa !41
  store <4 x i16> %63, ptr %68, align 2, !tbaa !41
  %69 = add nsw i64 %57, 1
  %70 = add nuw nsw i64 %56, 1
  %71 = icmp eq i64 %70, 16
  br i1 %71, label %72, label %55, !llvm.loop !42

72:                                               ; preds = %55
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra16x16_dc_pred(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.pix_pos, align 4
  %4 = alloca %struct.pix_pos, align 4
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = icmp eq i32 %1, 0
  %9 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 125
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  br i1 %8, label %17, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.storable_picture, ptr %10, i64 0, i32 33
  %13 = load ptr, ptr %12, align 8, !tbaa !18
  %14 = add i32 %1, -1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  br label %19

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.storable_picture, ptr %10, i64 0, i32 32
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi ptr [ %16, %11 ], [ %18, %17 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !21
  %22 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 77
  %23 = load ptr, ptr %22, align 8, !tbaa !36
  %24 = zext i32 %1 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %27 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 81
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %27, ptr noundef nonnull %3) #9
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %27, ptr noundef nonnull %4) #9
  %28 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !28
  %30 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %29, i64 0, i32 30
  %31 = load i32, ptr %30, align 4, !tbaa !29
  %32 = icmp eq i32 %31, 0
  %33 = load i32, ptr %4, align 4, !tbaa !31
  br i1 %32, label %34, label %36

34:                                               ; preds = %19
  %35 = load i32, ptr %3, align 4, !tbaa !31
  br label %60

36:                                               ; preds = %19
  %37 = icmp eq i32 %33, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 128
  %40 = load ptr, ptr %39, align 8, !tbaa !33
  %41 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !34
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, ptr %40, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !35
  %46 = sext i8 %45 to i32
  br label %47

47:                                               ; preds = %36, %38
  %48 = phi i32 [ %46, %38 ], [ 0, %36 ]
  %49 = load i32, ptr %3, align 4, !tbaa !31
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 128
  %53 = load ptr, ptr %52, align 8, !tbaa !33
  %54 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !34
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %53, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !35
  %59 = sext i8 %58 to i32
  br label %60

60:                                               ; preds = %51, %47, %34
  %61 = phi i32 [ %33, %34 ], [ %48, %47 ], [ %48, %51 ]
  %62 = phi i32 [ %35, %34 ], [ 0, %47 ], [ %59, %51 ]
  %63 = icmp eq i32 %61, 0
  br i1 %63, label %86, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 5
  %66 = load i16, ptr %65, align 2, !tbaa !37
  %67 = sext i16 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %21, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !21
  %70 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 4
  %71 = load i16, ptr %70, align 4, !tbaa !38
  %72 = sext i16 %71 to i64
  %73 = getelementptr inbounds i16, ptr %69, i64 %72
  br label %74

74:                                               ; preds = %74, %64
  %75 = phi i64 [ 0, %64 ], [ %82, %74 ]
  %76 = phi <4 x i32> [ zeroinitializer, %64 ], [ %81, %74 ]
  %77 = shl i64 %75, 1
  %78 = getelementptr i8, ptr %73, i64 %77
  %79 = load <4 x i16>, ptr %78, align 2, !tbaa !41
  %80 = zext <4 x i16> %79 to <4 x i32>
  %81 = add <4 x i32> %76, %80
  %82 = add nuw i64 %75, 4
  %83 = icmp eq i64 %82, 16
  br i1 %83, label %84, label %74, !llvm.loop !43

84:                                               ; preds = %74
  %85 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %81)
  br label %86

86:                                               ; preds = %84, %60
  %87 = phi i32 [ 0, %60 ], [ %85, %84 ]
  %88 = icmp ne i32 %62, 0
  br i1 %88, label %89, label %117

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 5
  %91 = load i16, ptr %90, align 2, !tbaa !37
  %92 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 4
  %93 = load i16, ptr %92, align 4, !tbaa !38
  %94 = sext i16 %93 to i64
  %95 = sext i16 %91 to i64
  br label %96

96:                                               ; preds = %89, %96
  %97 = phi i64 [ %95, %89 ], [ %100, %96 ]
  %98 = phi i32 [ 0, %89 ], [ %106, %96 ]
  %99 = phi i32 [ 0, %89 ], [ %107, %96 ]
  %100 = add nsw i64 %97, 1
  %101 = getelementptr inbounds ptr, ptr %21, i64 %97
  %102 = load ptr, ptr %101, align 8, !tbaa !21
  %103 = getelementptr inbounds i16, ptr %102, i64 %94
  %104 = load i16, ptr %103, align 2, !tbaa !41
  %105 = zext i16 %104 to i32
  %106 = add nuw nsw i32 %98, %105
  %107 = add nuw nsw i32 %99, 1
  %108 = icmp eq i32 %107, 16
  br i1 %108, label %109, label %96, !llvm.loop !46

109:                                              ; preds = %96
  br i1 %63, label %114, label %110

110:                                              ; preds = %109
  %111 = add i32 %87, 16
  %112 = add i32 %111, %106
  %113 = ashr i32 %112, 5
  br label %125

114:                                              ; preds = %109
  %115 = add nuw nsw i32 %106, 8
  %116 = lshr i32 %115, 4
  br label %125

117:                                              ; preds = %86
  %118 = or i1 %88, %63
  br i1 %118, label %122, label %119

119:                                              ; preds = %117
  %120 = add nsw i32 %87, 8
  %121 = ashr i32 %120, 4
  br label %125

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 69, i64 %24
  %124 = load i32, ptr %123, align 4, !tbaa !47
  br label %125

125:                                              ; preds = %114, %122, %119, %110
  %126 = phi i32 [ %113, %110 ], [ %116, %114 ], [ %124, %122 ], [ %121, %119 ]
  %127 = trunc i32 %126 to i16
  %128 = insertelement <4 x i16> poison, i16 %127, i64 0
  %129 = shufflevector <4 x i16> %128, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %130

130:                                              ; preds = %125, %139
  %131 = phi i64 [ 0, %125 ], [ %140, %139 ]
  %132 = getelementptr inbounds ptr, ptr %26, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !21
  br label %134

134:                                              ; preds = %130, %134
  %135 = phi i64 [ 0, %130 ], [ %137, %134 ]
  %136 = getelementptr inbounds i16, ptr %133, i64 %135
  store <4 x i16> %129, ptr %136, align 2, !tbaa !41
  %137 = add nuw nsw i64 %135, 4
  %138 = icmp ult i64 %135, 12
  br i1 %138, label %134, label %139, !llvm.loop !48

139:                                              ; preds = %134
  %140 = add nuw nsw i64 %131, 1
  %141 = icmp eq i64 %140, 16
  br i1 %141, label %142, label %130, !llvm.loop !49

142:                                              ; preds = %139
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra16x16_plane_pred(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.pix_pos, align 4
  %4 = alloca %struct.pix_pos, align 4
  %5 = alloca %struct.pix_pos, align 4
  %6 = load ptr, ptr %0, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = icmp eq i32 %1, 0
  %10 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 125
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  br i1 %9, label %18, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.storable_picture, ptr %11, i64 0, i32 33
  %14 = load ptr, ptr %13, align 8, !tbaa !18
  %15 = add i32 %1, -1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  br label %20

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.storable_picture, ptr %11, i64 0, i32 32
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi ptr [ %17, %12 ], [ %19, %18 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !21
  %23 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 77
  %24 = load ptr, ptr %23, align 8, !tbaa !36
  %25 = zext i32 %1 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !21
  %28 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 70, i64 %25
  %29 = load i32, ptr %28, align 4, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  %30 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 81
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef -1, i32 noundef -1, ptr noundef nonnull %30, ptr noundef nonnull %5) #9
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %30, ptr noundef nonnull %3) #9
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %30, ptr noundef nonnull %4) #9
  %31 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !28
  %33 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %32, i64 0, i32 30
  %34 = load i32, ptr %33, align 4, !tbaa !29
  %35 = icmp eq i32 %34, 0
  %36 = load i32, ptr %4, align 4, !tbaa !31
  br i1 %35, label %37, label %40

37:                                               ; preds = %20
  %38 = load i32, ptr %3, align 4, !tbaa !31
  %39 = load i32, ptr %5, align 4, !tbaa !31
  br label %77

40:                                               ; preds = %20
  %41 = icmp eq i32 %36, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 128
  %44 = load ptr, ptr %43, align 8, !tbaa !33
  %45 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !34
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %44, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !35
  %50 = sext i8 %49 to i32
  br label %51

51:                                               ; preds = %40, %42
  %52 = phi i32 [ %50, %42 ], [ 0, %40 ]
  %53 = load i32, ptr %3, align 4, !tbaa !31
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 128
  %57 = load ptr, ptr %56, align 8, !tbaa !33
  %58 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !34
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %57, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !35
  %63 = sext i8 %62 to i32
  br label %64

64:                                               ; preds = %51, %55
  %65 = phi i32 [ %63, %55 ], [ 0, %51 ]
  %66 = load i32, ptr %5, align 4, !tbaa !31
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %86, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 128
  %70 = load ptr, ptr %69, align 8, !tbaa !33
  %71 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %72 = load i32, ptr %71, align 4, !tbaa !34
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, ptr %70, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !35
  %76 = sext i8 %75 to i32
  br label %77

77:                                               ; preds = %68, %37
  %78 = phi i32 [ %36, %37 ], [ %52, %68 ]
  %79 = phi i32 [ %38, %37 ], [ %65, %68 ]
  %80 = phi i32 [ %39, %37 ], [ %76, %68 ]
  %81 = icmp ne i32 %78, 0
  %82 = icmp ne i32 %80, 0
  %83 = select i1 %81, i1 %82, i1 false
  %84 = icmp ne i32 %79, 0
  %85 = select i1 %83, i1 %84, i1 false
  br i1 %85, label %87, label %86

86:                                               ; preds = %64, %77
  call void @error(ptr noundef nonnull @.str.3, i32 noundef 500) #9
  br label %87

87:                                               ; preds = %77, %86
  %88 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 5
  %89 = load i16, ptr %88, align 2, !tbaa !37
  %90 = sext i16 %89 to i64
  %91 = getelementptr inbounds ptr, ptr %22, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !21
  %93 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 4
  %94 = load i16, ptr %93, align 4, !tbaa !38
  %95 = sext i16 %94 to i64
  %96 = getelementptr i16, ptr %92, i64 %95
  %97 = getelementptr i16, ptr %96, i64 7
  %98 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 5
  %99 = load i16, ptr %98, align 2, !tbaa !37
  %100 = sext i16 %99 to i64
  %101 = add nsw i64 %100, 7
  %102 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 4
  %103 = load i16, ptr %102, align 4, !tbaa !38
  %104 = sext i16 %103 to i64
  %105 = getelementptr ptr, ptr %22, i64 %101
  br label %106

106:                                              ; preds = %87, %106
  %107 = phi i64 [ 1, %87 ], [ %135, %106 ]
  %108 = phi i32 [ 0, %87 ], [ %120, %106 ]
  %109 = phi i32 [ 0, %87 ], [ %134, %106 ]
  %110 = getelementptr inbounds i16, ptr %97, i64 %107
  %111 = load i16, ptr %110, align 2, !tbaa !41
  %112 = zext i16 %111 to i32
  %113 = sub nsw i64 0, %107
  %114 = getelementptr inbounds i16, ptr %97, i64 %113
  %115 = load i16, ptr %114, align 2, !tbaa !41
  %116 = zext i16 %115 to i32
  %117 = sub nsw i32 %112, %116
  %118 = trunc i64 %107 to i32
  %119 = mul nsw i32 %117, %118
  %120 = add nsw i32 %119, %108
  %121 = getelementptr ptr, ptr %105, i64 %107
  %122 = load ptr, ptr %121, align 8, !tbaa !21
  %123 = getelementptr inbounds i16, ptr %122, i64 %104
  %124 = load i16, ptr %123, align 2, !tbaa !41
  %125 = zext i16 %124 to i32
  %126 = sub nsw i64 %101, %107
  %127 = getelementptr inbounds ptr, ptr %22, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !21
  %129 = getelementptr inbounds i16, ptr %128, i64 %104
  %130 = load i16, ptr %129, align 2, !tbaa !41
  %131 = zext i16 %130 to i32
  %132 = sub nsw i32 %125, %131
  %133 = mul nsw i32 %132, %118
  %134 = add nsw i32 %133, %109
  %135 = add nuw nsw i64 %107, 1
  %136 = icmp eq i64 %135, 8
  br i1 %136, label %137, label %106, !llvm.loop !50

137:                                              ; preds = %106
  %138 = getelementptr i16, ptr %96, i64 15
  %139 = load i16, ptr %138, align 2, !tbaa !41
  %140 = zext i16 %139 to i32
  %141 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 5
  %142 = load i16, ptr %141, align 2, !tbaa !37
  %143 = sext i16 %142 to i64
  %144 = getelementptr inbounds ptr, ptr %22, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !21
  %146 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 4
  %147 = load i16, ptr %146, align 4, !tbaa !38
  %148 = sext i16 %147 to i64
  %149 = getelementptr inbounds i16, ptr %145, i64 %148
  %150 = load i16, ptr %149, align 2, !tbaa !41
  %151 = zext i16 %150 to i32
  %152 = sub nsw i32 %140, %151
  %153 = shl nsw i32 %152, 3
  %154 = add nsw i32 %153, %120
  %155 = sext i16 %99 to i64
  %156 = getelementptr ptr, ptr %22, i64 %155
  %157 = getelementptr ptr, ptr %156, i64 15
  %158 = load ptr, ptr %157, align 8, !tbaa !21
  %159 = getelementptr inbounds i16, ptr %158, i64 %104
  %160 = load i16, ptr %159, align 2, !tbaa !41
  %161 = zext i16 %160 to i32
  %162 = sub nsw i32 %161, %151
  %163 = shl nsw i32 %162, 3
  %164 = add nsw i32 %163, %134
  %165 = mul nsw i32 %154, 5
  %166 = add nsw i32 %165, 32
  %167 = ashr i32 %166, 6
  %168 = mul nsw i32 %164, 5
  %169 = add nsw i32 %168, 32
  %170 = ashr i32 %169, 6
  %171 = add nuw nsw i32 %161, %140
  %172 = shl nuw nsw i32 %171, 4
  %173 = add nuw nsw i32 %172, 16
  br label %174

174:                                              ; preds = %137, %215
  %175 = phi i64 [ 0, %137 ], [ %216, %215 ]
  %176 = trunc i64 %175 to i32
  %177 = add i32 %176, -7
  %178 = mul i32 %177, %170
  %179 = add i32 %173, %178
  %180 = getelementptr inbounds ptr, ptr %27, i64 %175
  %181 = load ptr, ptr %180, align 8, !tbaa !21
  br label %182

182:                                              ; preds = %174, %182
  %183 = phi ptr [ %181, %174 ], [ %212, %182 ]
  %184 = phi i32 [ 0, %174 ], [ %213, %182 ]
  %185 = add nsw i32 %184, -7
  %186 = mul nsw i32 %185, %167
  %187 = add nsw i32 %186, %179
  %188 = ashr i32 %187, 5
  %189 = call fastcc i32 @iClip1(i32 noundef %29, i32 noundef %188) #7
  %190 = trunc i32 %189 to i16
  %191 = getelementptr inbounds i16, ptr %183, i64 1
  store i16 %190, ptr %183, align 2, !tbaa !41
  %192 = add nsw i32 %184, -6
  %193 = mul nsw i32 %192, %167
  %194 = add nsw i32 %193, %179
  %195 = ashr i32 %194, 5
  %196 = call fastcc i32 @iClip1(i32 noundef %29, i32 noundef %195) #7
  %197 = trunc i32 %196 to i16
  %198 = getelementptr inbounds i16, ptr %183, i64 2
  store i16 %197, ptr %191, align 2, !tbaa !41
  %199 = add nsw i32 %184, -5
  %200 = mul nsw i32 %199, %167
  %201 = add nsw i32 %200, %179
  %202 = ashr i32 %201, 5
  %203 = call fastcc i32 @iClip1(i32 noundef %29, i32 noundef %202) #7
  %204 = trunc i32 %203 to i16
  %205 = getelementptr inbounds i16, ptr %183, i64 3
  store i16 %204, ptr %198, align 2, !tbaa !41
  %206 = add nsw i32 %184, -4
  %207 = mul nsw i32 %206, %167
  %208 = add nsw i32 %207, %179
  %209 = ashr i32 %208, 5
  %210 = call fastcc i32 @iClip1(i32 noundef %29, i32 noundef %209) #7
  %211 = trunc i32 %210 to i16
  %212 = getelementptr inbounds i16, ptr %183, i64 4
  store i16 %211, ptr %205, align 2, !tbaa !41
  %213 = add nuw nsw i32 %184, 4
  %214 = icmp ult i32 %184, 12
  br i1 %214, label %182, label %215, !llvm.loop !51

215:                                              ; preds = %182
  %216 = add nuw nsw i64 %175, 1
  %217 = icmp eq i64 %216, 16
  br i1 %217, label %218, label %174, !llvm.loop !52

218:                                              ; preds = %215
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
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

; Function Attrs: optsize
declare void @getNonAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @iClip1(i32 noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = tail call fastcc i32 @imax(i32 noundef %1) #7
  %4 = tail call fastcc i32 @imin(i32 noundef %3, i32 noundef %0) #7
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imax(i32 noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imin(i32 noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

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
!14 = !{!7, !8, i64 8}
!15 = !{!16, !8, i64 13520}
!16 = !{!"slice", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !8, i64 40, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !9, i64 88, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !13, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !11, i64 132, !9, i64 136, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !11, i64 168, !11, i64 172, !11, i64 176, !9, i64 180, !11, i64 184, !11, i64 188, !11, i64 192, !11, i64 196, !11, i64 200, !11, i64 204, !11, i64 208, !11, i64 212, !11, i64 216, !11, i64 220, !11, i64 224, !11, i64 228, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !8, i64 248, !9, i64 256, !9, i64 264, !8, i64 312, !8, i64 320, !8, i64 328, !9, i64 336, !9, i64 1104, !9, i64 1112, !9, i64 1128, !9, i64 1144, !9, i64 1160, !11, i64 1176, !11, i64 1180, !11, i64 1184, !17, i64 1188, !13, i64 1220, !13, i64 1222, !13, i64 1224, !11, i64 1228, !11, i64 1232, !11, i64 1236, !11, i64 1240, !8, i64 1248, !8, i64 1256, !8, i64 1264, !8, i64 1272, !8, i64 1280, !9, i64 1288, !8, i64 1352, !8, i64 1360, !8, i64 1368, !8, i64 1376, !8, i64 1384, !9, i64 1392, !9, i64 2544, !9, i64 3696, !9, i64 8304, !9, i64 12912, !9, i64 13008, !11, i64 13264, !11, i64 13268, !13, i64 13272, !13, i64 13274, !13, i64 13276, !13, i64 13278, !8, i64 13280, !8, i64 13288, !8, i64 13296, !13, i64 13304, !13, i64 13306, !11, i64 13308, !11, i64 13312, !8, i64 13320, !8, i64 13328, !11, i64 13336, !9, i64 13340, !8, i64 13408, !8, i64 13416, !8, i64 13424, !8, i64 13432, !8, i64 13440, !8, i64 13448, !8, i64 13456, !8, i64 13464, !8, i64 13472, !8, i64 13480, !8, i64 13488, !8, i64 13496, !11, i64 13504, !8, i64 13512, !8, i64 13520, !8, i64 13528, !8, i64 13536, !8, i64 13544, !9, i64 13552}
!17 = !{!"nalunitheadermvcext_tag", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28}
!18 = !{!19, !8, i64 136}
!19 = !{!"storable_picture", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !9, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !13, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !9, i64 160, !20, i64 184, !9, i64 192, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !11, i64 248, !11, i64 252, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !11, i64 296, !9, i64 300, !11, i64 308, !8, i64 312, !11, i64 320, !11, i64 324, !11, i64 328, !11, i64 332, !8, i64 336, !11, i64 344, !11, i64 348, !11, i64 352, !11, i64 356, !11, i64 360, !11, i64 364, !11, i64 368, !8, i64 376, !11, i64 384, !11, i64 388, !9, i64 392, !9, i64 400}
!20 = !{!"pic_motion_params_old", !8, i64 0}
!21 = !{!8, !8, i64 0}
!22 = !{!23, !8, i64 856744}
!23 = !{!"video_par", !8, i64 0, !8, i64 8, !8, i64 16, !9, i64 24, !9, i64 132120, !8, i64 699416, !9, i64 699424, !11, i64 848672, !11, i64 848676, !11, i64 848680, !11, i64 848684, !8, i64 848688, !8, i64 848696, !8, i64 848704, !11, i64 848712, !11, i64 848716, !11, i64 848720, !11, i64 848724, !11, i64 848728, !8, i64 848736, !8, i64 848744, !9, i64 848752, !11, i64 848776, !11, i64 848780, !11, i64 848784, !11, i64 848788, !11, i64 848792, !8, i64 848800, !9, i64 848808, !8, i64 848832, !8, i64 848840, !9, i64 848848, !11, i64 848872, !11, i64 848876, !8, i64 848880, !8, i64 848888, !9, i64 848896, !11, i64 848920, !8, i64 848928, !8, i64 848936, !11, i64 848944, !11, i64 848948, !11, i64 848952, !11, i64 848956, !11, i64 848960, !11, i64 848964, !11, i64 848968, !11, i64 848972, !11, i64 848976, !11, i64 848980, !11, i64 848984, !11, i64 848988, !11, i64 848992, !11, i64 848996, !11, i64 849000, !11, i64 849004, !11, i64 849008, !11, i64 849012, !11, i64 849016, !11, i64 849020, !11, i64 849024, !11, i64 849028, !11, i64 849032, !11, i64 849036, !13, i64 849040, !13, i64 849042, !9, i64 849044, !11, i64 849052, !11, i64 849056, !9, i64 849060, !9, i64 849072, !11, i64 849084, !11, i64 849088, !11, i64 849092, !11, i64 849096, !11, i64 849100, !11, i64 849104, !11, i64 849108, !11, i64 849112, !11, i64 849116, !11, i64 849120, !9, i64 849124, !9, i64 849148, !9, i64 849172, !11, i64 849196, !11, i64 849200, !11, i64 849204, !11, i64 849208, !11, i64 849212, !11, i64 849216, !11, i64 849220, !11, i64 849224, !11, i64 849228, !11, i64 849232, !11, i64 849236, !11, i64 849240, !11, i64 849244, !11, i64 849248, !11, i64 849252, !11, i64 849256, !11, i64 849260, !11, i64 849264, !11, i64 849268, !11, i64 849272, !11, i64 849276, !11, i64 849280, !11, i64 849284, !8, i64 849288, !8, i64 849296, !24, i64 849304, !24, i64 849624, !24, i64 849944, !24, i64 850264, !24, i64 850584, !24, i64 850904, !24, i64 851224, !24, i64 851544, !11, i64 851864, !11, i64 851868, !11, i64 851872, !27, i64 851880, !11, i64 851888, !9, i64 851892, !11, i64 855988, !11, i64 855992, !11, i64 855996, !11, i64 856000, !11, i64 856004, !11, i64 856008, !11, i64 856012, !8, i64 856016, !8, i64 856024, !8, i64 856032, !8, i64 856040, !8, i64 856048, !9, i64 856056, !8, i64 856456, !9, i64 856464, !8, i64 856488, !8, i64 856496, !8, i64 856504, !11, i64 856512, !8, i64 856520, !9, i64 856528, !8, i64 856608, !8, i64 856616, !8, i64 856624, !8, i64 856632, !11, i64 856640, !11, i64 856644, !11, i64 856648, !8, i64 856656, !8, i64 856664, !9, i64 856672, !9, i64 856688, !8, i64 856704, !8, i64 856712, !11, i64 856720, !8, i64 856728, !8, i64 856736, !8, i64 856744, !8, i64 856752, !8, i64 856760, !8, i64 856768, !8, i64 856776, !8, i64 856784, !8, i64 856792, !8, i64 856800, !8, i64 856808, !8, i64 856816, !11, i64 856824, !8, i64 856832, !11, i64 856840, !11, i64 856844, !11, i64 856848, !11, i64 856852, !11, i64 856856, !11, i64 856860, !11, i64 856864, !8, i64 856872}
!24 = !{!"image_data", !25, i64 0, !9, i64 136, !9, i64 160, !9, i64 184, !9, i64 208, !9, i64 232, !9, i64 256, !9, i64 280, !9, i64 292, !9, i64 304}
!25 = !{!"frame_format", !11, i64 0, !11, i64 4, !26, i64 8, !9, i64 16, !9, i64 28, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !9, i64 72, !11, i64 84, !9, i64 88, !9, i64 100, !9, i64 112, !11, i64 124, !11, i64 128}
!26 = !{!"double", !9, i64 0}
!27 = !{!"long", !9, i64 0}
!28 = !{!23, !8, i64 8}
!29 = !{!30, !11, i64 2204}
!30 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !9, i64 24, !9, i64 72, !9, i64 456, !9, i64 1992, !9, i64 2016, !11, i64 2040, !11, i64 2044, !11, i64 2048, !9, i64 2052, !9, i64 2084, !9, i64 2116, !11, i64 2148, !11, i64 2152, !11, i64 2156, !8, i64 2160, !11, i64 2168, !11, i64 2172, !11, i64 2176, !11, i64 2180, !11, i64 2184, !11, i64 2188, !11, i64 2192, !11, i64 2196, !11, i64 2200, !11, i64 2204, !11, i64 2208}
!31 = !{!32, !11, i64 0}
!32 = !{!"pix_pos", !11, i64 0, !11, i64 4, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14}
!33 = !{!16, !8, i64 13544}
!34 = !{!32, !11, i64 4}
!35 = !{!9, !9, i64 0}
!36 = !{!16, !8, i64 1248}
!37 = !{!32, !13, i64 14}
!38 = !{!32, !13, i64 12}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!13, !13, i64 0}
!42 = distinct !{!42, !40}
!43 = distinct !{!43, !40, !44, !45}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = distinct !{!46, !40}
!47 = !{!11, !11, i64 0}
!48 = distinct !{!48, !40}
!49 = distinct !{!49, !40}
!50 = distinct !{!50, !40}
!51 = distinct !{!51, !40}
!52 = distinct !{!52, !40}
