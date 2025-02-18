; ModuleID = 'blender/source/blender/editors/mask/mask_editaction.c'
source_filename = "blender/source/blender/editors/mask/mask_editaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MaskLayer = type { ptr, ptr, [64 x i8], %struct.ListBase, %struct.ListBase, ptr, ptr, float, i8, i8, i8, [7 x i8], i8, i8 }
%struct.ListBase = type { ptr, ptr }
%struct.MaskLayerShape = type { ptr, ptr, ptr, i32, i32, i8, [7 x i8] }
%struct.CfraElem = type { ptr, ptr, float, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"CfraElem\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_masklayer_frames_looper(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %11, %5
  %8 = phi ptr [ %6, %5 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call signext i16 %2(ptr noundef nonnull %9, ptr noundef %1) #5
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %7, label %14, !llvm.loop !38

14:                                               ; preds = %7, %11, %3
  %15 = phi i8 [ 0, %3 ], [ 1, %11 ], [ 0, %7 ]
  ret i8 %15
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_masklayer_make_cfra_list(ptr noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %35, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %7
  %12 = icmp eq i8 %2, 0
  br label %13

13:                                               ; preds = %11, %32
  %14 = phi ptr [ %9, %11 ], [ %33, %32 ]
  br i1 %12, label %20, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.MaskLayerShape, ptr %14, i64 0, i32 5
  %17 = load i8, ptr %16, align 8, !tbaa !41
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %15, %13
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %22 = tail call ptr %21(i64 noundef 24, ptr noundef nonnull @.str) #5
  %23 = getelementptr inbounds %struct.MaskLayerShape, ptr %14, i64 0, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !44
  %25 = sitofp i32 %24 to float
  %26 = getelementptr inbounds %struct.CfraElem, ptr %22, i64 0, i32 2
  store float %25, ptr %26, align 8, !tbaa !45
  %27 = getelementptr inbounds %struct.MaskLayerShape, ptr %14, i64 0, i32 5
  %28 = load i8, ptr %27, align 8, !tbaa !41
  %29 = and i8 %28, 1
  %30 = zext nneg i8 %29 to i32
  %31 = getelementptr inbounds %struct.CfraElem, ptr %22, i64 0, i32 3
  store i32 %30, ptr %31, align 4, !tbaa !48
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %22) #5
  br label %32

32:                                               ; preds = %15, %20
  %33 = load ptr, ptr %14, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %13, !llvm.loop !49

35:                                               ; preds = %32, %7, %3
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @ED_masklayer_frame_select_check(ptr noundef readonly %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  br label %5

5:                                                ; preds = %9, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %9 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.MaskLayerShape, ptr %7, i64 0, i32 5
  %11 = load i8, ptr %10, align 8, !tbaa !41
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %5, label %14, !llvm.loop !50

14:                                               ; preds = %5, %9, %1
  %15 = phi i8 [ 0, %1 ], [ 1, %9 ], [ 0, %5 ]
  ret i8 %15
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_mask_select_frames(ptr noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4, %22
  %9 = phi ptr [ %23, %22 ], [ %6, %4 ]
  switch i16 %1, label %22 [
    i16 2, label %10
    i16 4, label %14
    i16 8, label %18
  ]

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.MaskLayerShape, ptr %9, i64 0, i32 5
  %12 = load i8, ptr %11, align 8, !tbaa !41
  %13 = or i8 %12, 1
  store i8 %13, ptr %11, align 8, !tbaa !41
  br label %22

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.MaskLayerShape, ptr %9, i64 0, i32 5
  %16 = load i8, ptr %15, align 8, !tbaa !41
  %17 = and i8 %16, -2
  store i8 %17, ptr %15, align 8, !tbaa !41
  br label %22

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.MaskLayerShape, ptr %9, i64 0, i32 5
  %20 = load i8, ptr %19, align 8, !tbaa !41
  %21 = xor i8 %20, 1
  store i8 %21, ptr %19, align 8, !tbaa !41
  br label %22

22:                                               ; preds = %8, %10, %14, %18
  %23 = load ptr, ptr %9, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %8, !llvm.loop !51

25:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_masklayer_frame_select_set(ptr noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4, %22
  %9 = phi ptr [ %23, %22 ], [ %6, %4 ]
  switch i16 %1, label %22 [
    i16 2, label %10
    i16 4, label %14
    i16 8, label %18
  ]

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.MaskLayerShape, ptr %9, i64 0, i32 5
  %12 = load i8, ptr %11, align 8, !tbaa !41
  %13 = or i8 %12, 1
  store i8 %13, ptr %11, align 8, !tbaa !41
  br label %22

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.MaskLayerShape, ptr %9, i64 0, i32 5
  %16 = load i8, ptr %15, align 8, !tbaa !41
  %17 = and i8 %16, -2
  store i8 %17, ptr %15, align 8, !tbaa !41
  br label %22

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.MaskLayerShape, ptr %9, i64 0, i32 5
  %20 = load i8, ptr %19, align 8, !tbaa !41
  %21 = xor i8 %20, 1
  store i8 %21, ptr %19, align 8, !tbaa !41
  br label %22

22:                                               ; preds = %18, %14, %10, %8
  %23 = load ptr, ptr %9, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %8, !llvm.loop !51

25:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_mask_select_frame(ptr noundef %0, i32 noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @BKE_mask_layer_shape_find_frame(ptr noundef nonnull %0, i32 noundef %1) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %5
  switch i16 %2, label %21 [
    i16 2, label %9
    i16 4, label %13
    i16 8, label %17
  ]

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.MaskLayerShape, ptr %6, i64 0, i32 5
  %11 = load i8, ptr %10, align 8, !tbaa !41
  %12 = or i8 %11, 1
  store i8 %12, ptr %10, align 8, !tbaa !41
  br label %21

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.MaskLayerShape, ptr %6, i64 0, i32 5
  %15 = load i8, ptr %14, align 8, !tbaa !41
  %16 = and i8 %15, -2
  store i8 %16, ptr %14, align 8, !tbaa !41
  br label %21

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.MaskLayerShape, ptr %6, i64 0, i32 5
  %19 = load i8, ptr %18, align 8, !tbaa !41
  %20 = xor i8 %19, 1
  store i8 %20, ptr %18, align 8, !tbaa !41
  br label %21

21:                                               ; preds = %17, %13, %9, %8, %5, %3
  ret void
}

declare ptr @BKE_mask_layer_shape_find_frame(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_masklayer_frames_select_border(ptr noundef readonly %0, float noundef %1, float noundef %2, i16 noundef signext %3) local_unnamed_addr #3 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = fcmp olt float %1, %2
  br label %12

12:                                               ; preds = %10, %38
  %13 = phi ptr [ %8, %10 ], [ %39, %38 ]
  %14 = getelementptr inbounds %struct.MaskLayerShape, ptr %13, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !44
  %16 = sitofp i32 %15 to float
  br i1 %11, label %17, label %21

17:                                               ; preds = %12
  %18 = fcmp ogt float %16, %1
  %19 = fcmp olt float %16, %2
  %20 = and i1 %18, %19
  br i1 %20, label %25, label %38

21:                                               ; preds = %12
  %22 = fcmp ogt float %16, %2
  %23 = fcmp olt float %16, %1
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21, %17
  switch i16 %3, label %38 [
    i16 2, label %26
    i16 4, label %30
    i16 8, label %34
  ]

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.MaskLayerShape, ptr %13, i64 0, i32 5
  %28 = load i8, ptr %27, align 8, !tbaa !41
  %29 = or i8 %28, 1
  store i8 %29, ptr %27, align 8, !tbaa !41
  br label %38

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.MaskLayerShape, ptr %13, i64 0, i32 5
  %32 = load i8, ptr %31, align 8, !tbaa !41
  %33 = and i8 %32, -2
  store i8 %33, ptr %31, align 8, !tbaa !41
  br label %38

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.MaskLayerShape, ptr %13, i64 0, i32 5
  %36 = load i8, ptr %35, align 8, !tbaa !41
  %37 = xor i8 %36, 1
  store i8 %37, ptr %35, align 8, !tbaa !41
  br label %38

38:                                               ; preds = %34, %30, %26, %25, %17, %21
  %39 = load ptr, ptr %13, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %12, !llvm.loop !52

41:                                               ; preds = %38, %6, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ED_masklayer_frames_delete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3, %16
  %8 = phi i8 [ %17, %16 ], [ 0, %3 ]
  %9 = phi ptr [ %10, %16 ], [ %5, %3 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.MaskLayerShape, ptr %9, i64 0, i32 5
  %12 = load i8, ptr %11, align 8, !tbaa !41
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  tail call void @BKE_mask_layer_shape_unlink(ptr noundef nonnull %0, ptr noundef nonnull %9) #5
  br label %16

16:                                               ; preds = %7, %15
  %17 = phi i8 [ 1, %15 ], [ %8, %7 ]
  %18 = icmp eq ptr %10, null
  br i1 %18, label %19, label %7, !llvm.loop !57

19:                                               ; preds = %16, %3, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %3 ], [ %17, %16 ]
  ret i8 %20
}

declare void @BKE_mask_layer_shape_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_masklayer_frames_duplicate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %3, %18
  %8 = phi ptr [ %9, %18 ], [ %5, %3 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  %10 = getelementptr inbounds %struct.MaskLayerShape, ptr %8, i64 0, i32 5
  %11 = load i8, ptr %10, align 8, !tbaa !41
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  %15 = tail call ptr @BKE_mask_layer_shape_duplicate(ptr noundef nonnull %8) #5
  %16 = load i8, ptr %10, align 8, !tbaa !41
  %17 = and i8 %16, -2
  store i8 %17, ptr %10, align 8, !tbaa !41
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef %15) #5
  br label %18

18:                                               ; preds = %7, %14
  %19 = icmp eq ptr %9, null
  br i1 %19, label %20, label %7, !llvm.loop !58

20:                                               ; preds = %18, %3, %1
  ret void
}

declare ptr @BKE_mask_layer_shape_duplicate(ptr noundef) local_unnamed_addr #1

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_masklayer_snap_frames(ptr noundef readonly %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  switch i16 %2, label %101 [
    i16 2, label %4
    i16 1, label %26
    i16 4, label %46
    i16 3, label %68
  ]

4:                                                ; preds = %3
  %5 = icmp eq ptr %0, null
  br i1 %5, label %101, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %101, label %10

10:                                               ; preds = %6, %23
  %11 = phi ptr [ %24, %23 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct.MaskLayerShape, ptr %11, i64 0, i32 5
  %13 = load i8, ptr %12, align 8, !tbaa !41
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.MaskLayerShape, ptr %11, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !44
  %19 = sitofp i32 %18 to double
  %20 = fadd double %19, 5.000000e-01
  %21 = tail call double @llvm.floor.f64(double %20)
  %22 = fptosi double %21 to i32
  store i32 %22, ptr %17, align 4, !tbaa !44
  br label %23

23:                                               ; preds = %10, %16
  %24 = load ptr, ptr %11, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %101, label %10, !llvm.loop !38

26:                                               ; preds = %3
  %27 = icmp eq ptr %0, null
  br i1 %27, label %101, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %101, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  br label %34

34:                                               ; preds = %32, %43
  %35 = phi ptr [ %30, %32 ], [ %44, %43 ]
  %36 = getelementptr inbounds %struct.MaskLayerShape, ptr %35, i64 0, i32 5
  %37 = load i8, ptr %36, align 8, !tbaa !41
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, ptr %33, align 8, !tbaa !59
  %42 = getelementptr inbounds %struct.MaskLayerShape, ptr %35, i64 0, i32 4
  store i32 %41, ptr %42, align 4, !tbaa !44
  br label %43

43:                                               ; preds = %34, %40
  %44 = load ptr, ptr %35, align 8, !tbaa !34
  %45 = icmp eq ptr %44, null
  br i1 %45, label %101, label %34, !llvm.loop !38

46:                                               ; preds = %3
  %47 = icmp eq ptr %0, null
  br i1 %47, label %101, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  %51 = icmp eq ptr %50, null
  br i1 %51, label %101, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 24
  br label %54

54:                                               ; preds = %52, %65
  %55 = phi ptr [ %50, %52 ], [ %66, %65 ]
  %56 = getelementptr inbounds %struct.MaskLayerShape, ptr %55, i64 0, i32 5
  %57 = load i8, ptr %56, align 8, !tbaa !41
  %58 = and i8 %57, 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.MaskLayerShape, ptr %55, i64 0, i32 4
  %62 = load i32, ptr %61, align 4, !tbaa !44
  %63 = sitofp i32 %62 to float
  %64 = tail call i32 @ED_markers_find_nearest_marker_time(ptr noundef nonnull %53, float noundef %63) #5
  store i32 %64, ptr %61, align 4, !tbaa !44
  br label %65

65:                                               ; preds = %54, %60
  %66 = load ptr, ptr %55, align 8, !tbaa !34
  %67 = icmp eq ptr %66, null
  br i1 %67, label %101, label %54, !llvm.loop !38

68:                                               ; preds = %3
  %69 = icmp eq ptr %0, null
  br i1 %69, label %101, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  %73 = icmp eq ptr %72, null
  br i1 %73, label %101, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 55
  %76 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 65
  br label %77

77:                                               ; preds = %74, %98
  %78 = phi ptr [ %72, %74 ], [ %99, %98 ]
  %79 = getelementptr inbounds %struct.MaskLayerShape, ptr %78, i64 0, i32 5
  %80 = load i8, ptr %79, align 8, !tbaa !41
  %81 = and i8 %80, 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %98, label %83

83:                                               ; preds = %77
  %84 = load i16, ptr %75, align 4, !tbaa !81
  %85 = sitofp i16 %84 to double
  %86 = load float, ptr %76, align 4, !tbaa !82
  %87 = fpext float %86 to double
  %88 = fdiv double %85, %87
  %89 = fptrunc double %88 to float
  %90 = getelementptr inbounds %struct.MaskLayerShape, ptr %78, i64 0, i32 4
  %91 = load i32, ptr %90, align 4, !tbaa !44
  %92 = sitofp i32 %91 to float
  %93 = fdiv float %92, %89
  %94 = fadd float %93, 5.000000e-01
  %95 = tail call float @llvm.floor.f32(float %94)
  %96 = fmul float %95, %89
  %97 = fptosi float %96 to i32
  store i32 %97, ptr %90, align 4, !tbaa !44
  br label %98

98:                                               ; preds = %77, %83
  %99 = load ptr, ptr %78, align 8, !tbaa !34
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %77, !llvm.loop !38

101:                                              ; preds = %98, %65, %43, %23, %70, %48, %28, %6, %68, %46, %26, %4, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

declare i32 @ED_markers_find_nearest_marker_time(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!42, !36, i64 32}
!42 = !{!"MaskLayerShape", !35, i64 0, !35, i64 8, !35, i64 16, !43, i64 24, !43, i64 28, !36, i64 32, !36, i64 33}
!43 = !{!"int", !36, i64 0}
!44 = !{!42, !43, i64 28}
!45 = !{!46, !47, i64 16}
!46 = !{!"CfraElem", !35, i64 0, !35, i64 8, !47, i64 16, !43, i64 20}
!47 = !{!"float", !36, i64 0}
!48 = !{!46, !43, i64 20}
!49 = distinct !{!49, !39, !40}
!50 = distinct !{!50, !39, !40}
!51 = distinct !{!51, !39, !40}
!52 = distinct !{!52, !39, !40}
!53 = !{!54, !35, i64 96}
!54 = !{!"MaskLayer", !35, i64 0, !35, i64 8, !36, i64 16, !55, i64 80, !55, i64 96, !35, i64 112, !35, i64 120, !47, i64 128, !36, i64 132, !36, i64 133, !36, i64 134, !36, i64 135, !36, i64 142, !36, i64 143}
!55 = !{!"ListBase", !35, i64 0, !35, i64 8}
!56 = !{!42, !35, i64 0}
!57 = distinct !{!57, !39, !40}
!58 = distinct !{!58, !39, !40}
!59 = !{!60, !43, i64 680}
!60 = !{!"Scene", !61, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !55, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !43, i64 232, !43, i64 236, !43, i64 240, !62, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !63, i64 280, !72, i64 4264, !55, i64 4296, !55, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !62, i64 4376, !62, i64 4378, !43, i64 4380, !55, i64 4384, !73, i64 4400, !74, i64 4416, !77, i64 4600, !35, i64 4608, !78, i64 4616, !35, i64 4640, !79, i64 4648, !79, i64 4656, !65, i64 4664, !66, i64 4824, !80, i64 4888, !35, i64 4952}
!61 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !62, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !35, i64 112}
!62 = !{!"short", !36, i64 0}
!63 = !{!"RenderData", !64, i64 0, !35, i64 248, !35, i64 256, !67, i64 264, !68, i64 328, !43, i64 400, !43, i64 404, !43, i64 408, !47, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !62, i64 432, !62, i64 434, !47, i64 436, !47, i64 440, !47, i64 444, !47, i64 448, !47, i64 452, !62, i64 456, !62, i64 458, !62, i64 460, !62, i64 462, !62, i64 464, !62, i64 466, !43, i64 468, !62, i64 472, !62, i64 474, !62, i64 476, !62, i64 478, !62, i64 480, !62, i64 482, !43, i64 484, !43, i64 488, !62, i64 492, !62, i64 494, !43, i64 496, !43, i64 500, !62, i64 504, !62, i64 506, !62, i64 508, !62, i64 510, !62, i64 512, !36, i64 514, !36, i64 515, !43, i64 516, !43, i64 520, !43, i64 524, !62, i64 528, !62, i64 530, !62, i64 532, !62, i64 534, !62, i64 536, !62, i64 538, !62, i64 540, !62, i64 542, !69, i64 544, !69, i64 560, !70, i64 576, !55, i64 592, !62, i64 608, !62, i64 610, !47, i64 612, !47, i64 616, !47, i64 620, !47, i64 624, !43, i64 628, !47, i64 632, !47, i64 636, !47, i64 640, !47, i64 644, !62, i64 648, !62, i64 650, !62, i64 652, !62, i64 654, !62, i64 656, !62, i64 658, !47, i64 660, !47, i64 664, !62, i64 668, !62, i64 670, !47, i64 672, !47, i64 676, !36, i64 680, !43, i64 1704, !62, i64 1708, !62, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !43, i64 2520, !62, i64 2524, !62, i64 2526, !47, i64 2528, !47, i64 2532, !62, i64 2536, !62, i64 2538, !47, i64 2540, !62, i64 2544, !62, i64 2546, !43, i64 2548, !62, i64 2552, !62, i64 2554, !62, i64 2556, !62, i64 2558, !47, i64 2560, !47, i64 2564, !35, i64 2568, !43, i64 2576, !47, i64 2580, !36, i64 2584, !71, i64 2616, !43, i64 3976, !43, i64 3980}
!64 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !62, i64 8, !62, i64 10, !47, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !65, i64 24, !66, i64 184}
!65 = !{!"ColorManagedViewSettings", !43, i64 0, !43, i64 4, !36, i64 8, !36, i64 72, !47, i64 136, !47, i64 140, !35, i64 144, !35, i64 152}
!66 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!67 = !{!"QuicktimeCodecSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !62, i64 48, !62, i64 50, !43, i64 52, !43, i64 56, !43, i64 60}
!68 = !{!"FFMpegCodecData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !47, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !35, i64 64}
!69 = !{!"rctf", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!70 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!71 = !{!"BakeData", !64, i64 0, !36, i64 248, !62, i64 1272, !62, i64 1274, !62, i64 1276, !62, i64 1278, !47, i64 1280, !47, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!72 = !{!"AudioData", !43, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !43, i64 16, !62, i64 20, !62, i64 22, !47, i64 24, !47, i64 28}
!73 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!74 = !{!"GameData", !73, i64 0, !62, i64 16, !62, i64 18, !62, i64 20, !62, i64 22, !62, i64 24, !62, i64 26, !62, i64 28, !62, i64 30, !62, i64 32, !36, i64 34, !75, i64 40, !62, i64 64, !62, i64 66, !47, i64 68, !76, i64 72, !47, i64 128, !47, i64 132, !43, i64 136, !62, i64 140, !62, i64 142, !62, i64 144, !62, i64 146, !62, i64 148, !62, i64 150, !62, i64 152, !62, i64 154, !62, i64 156, !62, i64 158, !62, i64 160, !62, i64 162, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !47, i64 180}
!75 = !{!"GameDome", !62, i64 0, !62, i64 2, !62, i64 4, !62, i64 6, !47, i64 8, !47, i64 12, !35, i64 16}
!76 = !{!"RecastData", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36, !43, i64 40, !47, i64 44, !47, i64 48, !62, i64 52, !62, i64 54}
!77 = !{!"UnitSettings", !47, i64 0, !36, i64 4, !36, i64 5, !62, i64 6}
!78 = !{!"PhysicsSettings", !36, i64 0, !43, i64 12, !43, i64 16, !43, i64 20}
!79 = !{!"long", !36, i64 0}
!80 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!81 = !{!60, !62, i64 820}
!82 = !{!60, !47, i64 900}
