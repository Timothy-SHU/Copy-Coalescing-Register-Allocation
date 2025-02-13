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
@switch.table.ED_masklayer_snap_frames = private unnamed_addr constant [4 x ptr] [ptr @snap_masklayer_cframe, ptr @snap_masklayer_nearest, ptr @snap_masklayer_nearestsec, ptr @snap_masklayer_nearmarker], align 8

; Function Attrs: noinline nounwind optsize uwtable
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
  %12 = tail call signext i16 %2(ptr noundef nonnull %9, ptr noundef %1) #6
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %7, label %14, !llvm.loop !38

14:                                               ; preds = %7, %11, %3
  %15 = phi i8 [ 0, %3 ], [ 0, %7 ], [ 1, %11 ]
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %17 = load i8, ptr %16, align 8, !tbaa !40
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %15, %13
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %22 = tail call ptr %21(i64 noundef 24, ptr noundef nonnull @.str) #6
  %23 = getelementptr inbounds %struct.MaskLayerShape, ptr %14, i64 0, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !43
  %25 = sitofp i32 %24 to float
  %26 = getelementptr inbounds %struct.CfraElem, ptr %22, i64 0, i32 2
  store float %25, ptr %26, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct.MaskLayerShape, ptr %14, i64 0, i32 5
  %28 = load i8, ptr %27, align 8, !tbaa !40
  %29 = and i8 %28, 1
  %30 = zext nneg i8 %29 to i32
  %31 = getelementptr inbounds %struct.CfraElem, ptr %22, i64 0, i32 3
  store i32 %30, ptr %31, align 4, !tbaa !47
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %22) #6
  br label %32

32:                                               ; preds = %15, %20
  %33 = load ptr, ptr %14, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %13, !llvm.loop !48

35:                                               ; preds = %32, %7, %3
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
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
  %11 = load i8, ptr %10, align 8, !tbaa !40
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %5, label %14, !llvm.loop !49

14:                                               ; preds = %5, %9, %1
  %15 = phi i8 [ 0, %1 ], [ 0, %5 ], [ 1, %9 ]
  ret i8 %15
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_mask_select_frames(ptr noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %4 ]
  tail call fastcc void @masklayshape_select(ptr noundef nonnull %9, i16 noundef signext %1) #7
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !llvm.loop !50

12:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @masklayshape_select(ptr nocapture noundef %0, i16 noundef signext %1) unnamed_addr #4 !PGOFuncName !51 {
  switch i16 %1, label %15 [
    i16 2, label %3
    i16 4, label %7
    i16 8, label %11
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.MaskLayerShape, ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 8, !tbaa !40
  %6 = or i8 %5, 1
  store i8 %6, ptr %4, align 8, !tbaa !40
  br label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.MaskLayerShape, ptr %0, i64 0, i32 5
  %9 = load i8, ptr %8, align 8, !tbaa !40
  %10 = and i8 %9, -2
  store i8 %10, ptr %8, align 8, !tbaa !40
  br label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.MaskLayerShape, ptr %0, i64 0, i32 5
  %13 = load i8, ptr %12, align 8, !tbaa !40
  %14 = xor i8 %13, 1
  store i8 %14, ptr %12, align 8, !tbaa !40
  br label %15

15:                                               ; preds = %2, %11, %7, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_masklayer_frame_select_set(ptr noundef %0, i16 noundef signext %1) local_unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @ED_mask_select_frames(ptr noundef nonnull %0, i16 noundef signext %1) #7
  br label %5

5:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mask_select_frame(ptr noundef %0, i32 noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @BKE_mask_layer_shape_find_frame(ptr noundef nonnull %0, i32 noundef %1) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call fastcc void @masklayshape_select(ptr noundef nonnull %6, i16 noundef signext %2) #7
  br label %9

9:                                                ; preds = %5, %8, %3
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_mask_layer_shape_find_frame(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_masklayer_frames_select_border(ptr noundef readonly %0, float noundef %1, float noundef %2, i16 noundef signext %3) local_unnamed_addr #3 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.MaskLayer, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %6
  %11 = fcmp olt float %1, %2
  br label %12

12:                                               ; preds = %10, %26
  %13 = phi ptr [ %8, %10 ], [ %27, %26 ]
  %14 = getelementptr inbounds %struct.MaskLayerShape, ptr %13, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !43
  %16 = sitofp i32 %15 to float
  br i1 %11, label %17, label %21

17:                                               ; preds = %12
  %18 = fcmp ogt float %16, %1
  %19 = fcmp olt float %16, %2
  %20 = and i1 %18, %19
  br i1 %20, label %25, label %26

21:                                               ; preds = %12
  %22 = fcmp ogt float %16, %2
  %23 = fcmp olt float %16, %1
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17
  tail call fastcc void @masklayshape_select(ptr noundef nonnull %13, i16 noundef signext %3) #7
  br label %26

26:                                               ; preds = %25, %17, %21
  %27 = load ptr, ptr %13, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %12, !llvm.loop !52

29:                                               ; preds = %26, %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %12 = load i8, ptr %11, align 8, !tbaa !40
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  tail call void @BKE_mask_layer_shape_unlink(ptr noundef nonnull %0, ptr noundef nonnull %9) #6
  br label %16

16:                                               ; preds = %7, %15
  %17 = phi i8 [ 1, %15 ], [ %8, %7 ]
  %18 = icmp eq ptr %10, null
  br i1 %18, label %19, label %7, !llvm.loop !57

19:                                               ; preds = %16, %3, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %3 ], [ %17, %16 ]
  ret i8 %20
}

; Function Attrs: optsize
declare void @BKE_mask_layer_shape_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
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
  %11 = load i8, ptr %10, align 8, !tbaa !40
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  %15 = tail call ptr @BKE_mask_layer_shape_duplicate(ptr noundef nonnull %8) #6
  %16 = load i8, ptr %10, align 8, !tbaa !40
  %17 = and i8 %16, -2
  store i8 %17, ptr %10, align 8, !tbaa !40
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef %15) #6
  br label %18

18:                                               ; preds = %7, %14
  %19 = icmp eq ptr %9, null
  br i1 %19, label %20, label %7, !llvm.loop !58

20:                                               ; preds = %18, %3, %1
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_mask_layer_shape_duplicate(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_masklayer_snap_frames(ptr noundef %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = add i16 %2, -1
  %5 = icmp ult i16 %4, 4
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = zext nneg i16 %4 to i64
  %8 = getelementptr inbounds [4 x ptr], ptr @switch.table.ED_masklayer_snap_frames, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8
  %10 = tail call zeroext i8 @ED_masklayer_frames_looper(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9) #7, !range !59
  br label %11

11:                                               ; preds = %3, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @snap_masklayer_nearest(ptr nocapture noundef %0, ptr nocapture readnone %1) #4 !PGOFuncName !60 {
  %3 = getelementptr inbounds %struct.MaskLayerShape, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !40
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.MaskLayerShape, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !43
  %10 = sitofp i32 %9 to double
  %11 = fadd double %10, 5.000000e-01
  %12 = tail call double @llvm.floor.f64(double %11)
  %13 = fptosi double %12 to i32
  store i32 %13, ptr %8, align 4, !tbaa !43
  br label %14

14:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @snap_masklayer_cframe(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #4 !PGOFuncName !61 {
  %3 = getelementptr inbounds %struct.MaskLayerShape, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !40
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !62
  %10 = getelementptr inbounds %struct.MaskLayerShape, ptr %0, i64 0, i32 4
  store i32 %9, ptr %10, align 4, !tbaa !43
  br label %11

11:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef signext i16 @snap_masklayer_nearmarker(ptr nocapture noundef %0, ptr noundef %1) #0 !PGOFuncName !84 {
  %3 = getelementptr inbounds %struct.MaskLayerShape, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !40
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 24
  %9 = getelementptr inbounds %struct.MaskLayerShape, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !43
  %11 = sitofp i32 %10 to float
  %12 = tail call i32 @ED_markers_find_nearest_marker_time(ptr noundef nonnull %8, float noundef %11) #6
  store i32 %12, ptr %9, align 4, !tbaa !43
  br label %13

13:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef signext i16 @snap_masklayer_nearestsec(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #4 !PGOFuncName !85 {
  %3 = getelementptr inbounds %struct.MaskLayerShape, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !40
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 55
  %9 = load i16, ptr %8, align 4, !tbaa !86
  %10 = sitofp i16 %9 to double
  %11 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 65
  %12 = load float, ptr %11, align 4, !tbaa !87
  %13 = fpext float %12 to double
  %14 = fdiv double %10, %13
  %15 = fptrunc double %14 to float
  %16 = getelementptr inbounds %struct.MaskLayerShape, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !43
  %18 = sitofp i32 %17 to float
  %19 = fdiv float %18, %15
  %20 = fadd float %19, 5.000000e-01
  %21 = tail call float @llvm.floor.f32(float %20)
  %22 = fmul float %21, %15
  %23 = fptosi float %22 to i32
  store i32 %23, ptr %16, align 4, !tbaa !43
  br label %24

24:                                               ; preds = %7, %2
  ret i16 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

; Function Attrs: optsize
declare i32 @ED_markers_find_nearest_marker_time(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!41, !36, i64 32}
!41 = !{!"MaskLayerShape", !35, i64 0, !35, i64 8, !35, i64 16, !42, i64 24, !42, i64 28, !36, i64 32, !36, i64 33}
!42 = !{!"int", !36, i64 0}
!43 = !{!41, !42, i64 28}
!44 = !{!45, !46, i64 16}
!45 = !{!"CfraElem", !35, i64 0, !35, i64 8, !46, i64 16, !42, i64 20}
!46 = !{!"float", !36, i64 0}
!47 = !{!45, !42, i64 20}
!48 = distinct !{!48, !39}
!49 = distinct !{!49, !39}
!50 = distinct !{!50, !39}
!51 = !{!"mask_editaction.c:masklayshape_select"}
!52 = distinct !{!52, !39}
!53 = !{!54, !35, i64 96}
!54 = !{!"MaskLayer", !35, i64 0, !35, i64 8, !36, i64 16, !55, i64 80, !55, i64 96, !35, i64 112, !35, i64 120, !46, i64 128, !36, i64 132, !36, i64 133, !36, i64 134, !36, i64 135, !36, i64 142, !36, i64 143}
!55 = !{!"ListBase", !35, i64 0, !35, i64 8}
!56 = !{!41, !35, i64 0}
!57 = distinct !{!57, !39}
!58 = distinct !{!58, !39}
!59 = !{i8 0, i8 2}
!60 = !{!"mask_editaction.c:snap_masklayer_nearest"}
!61 = !{!"mask_editaction.c:snap_masklayer_cframe"}
!62 = !{!63, !42, i64 680}
!63 = !{!"Scene", !64, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !55, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !42, i64 232, !42, i64 236, !42, i64 240, !65, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !66, i64 280, !75, i64 4264, !55, i64 4296, !55, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !65, i64 4376, !65, i64 4378, !42, i64 4380, !55, i64 4384, !76, i64 4400, !77, i64 4416, !80, i64 4600, !35, i64 4608, !81, i64 4616, !35, i64 4640, !82, i64 4648, !82, i64 4656, !68, i64 4664, !69, i64 4824, !83, i64 4888, !35, i64 4952}
!64 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !65, i64 98, !42, i64 100, !42, i64 104, !42, i64 108, !35, i64 112}
!65 = !{!"short", !36, i64 0}
!66 = !{!"RenderData", !67, i64 0, !35, i64 248, !35, i64 256, !70, i64 264, !71, i64 328, !42, i64 400, !42, i64 404, !42, i64 408, !46, i64 412, !42, i64 416, !42, i64 420, !42, i64 424, !42, i64 428, !65, i64 432, !65, i64 434, !46, i64 436, !46, i64 440, !46, i64 444, !46, i64 448, !46, i64 452, !65, i64 456, !65, i64 458, !65, i64 460, !65, i64 462, !65, i64 464, !65, i64 466, !42, i64 468, !65, i64 472, !65, i64 474, !65, i64 476, !65, i64 478, !65, i64 480, !65, i64 482, !42, i64 484, !42, i64 488, !65, i64 492, !65, i64 494, !42, i64 496, !42, i64 500, !65, i64 504, !65, i64 506, !65, i64 508, !65, i64 510, !65, i64 512, !36, i64 514, !36, i64 515, !42, i64 516, !42, i64 520, !42, i64 524, !65, i64 528, !65, i64 530, !65, i64 532, !65, i64 534, !65, i64 536, !65, i64 538, !65, i64 540, !65, i64 542, !72, i64 544, !72, i64 560, !73, i64 576, !55, i64 592, !65, i64 608, !65, i64 610, !46, i64 612, !46, i64 616, !46, i64 620, !46, i64 624, !42, i64 628, !46, i64 632, !46, i64 636, !46, i64 640, !46, i64 644, !65, i64 648, !65, i64 650, !65, i64 652, !65, i64 654, !65, i64 656, !65, i64 658, !46, i64 660, !46, i64 664, !65, i64 668, !65, i64 670, !46, i64 672, !46, i64 676, !36, i64 680, !42, i64 1704, !65, i64 1708, !65, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !42, i64 2520, !65, i64 2524, !65, i64 2526, !46, i64 2528, !46, i64 2532, !65, i64 2536, !65, i64 2538, !46, i64 2540, !65, i64 2544, !65, i64 2546, !42, i64 2548, !65, i64 2552, !65, i64 2554, !65, i64 2556, !65, i64 2558, !46, i64 2560, !46, i64 2564, !35, i64 2568, !42, i64 2576, !46, i64 2580, !36, i64 2584, !74, i64 2616, !42, i64 3976, !42, i64 3980}
!67 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !65, i64 8, !65, i64 10, !46, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !68, i64 24, !69, i64 184}
!68 = !{!"ColorManagedViewSettings", !42, i64 0, !42, i64 4, !36, i64 8, !36, i64 72, !46, i64 136, !46, i64 140, !35, i64 144, !35, i64 152}
!69 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!70 = !{!"QuicktimeCodecSettings", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !65, i64 48, !65, i64 50, !42, i64 52, !42, i64 56, !42, i64 60}
!71 = !{!"FFMpegCodecData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !46, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !42, i64 56, !42, i64 60, !35, i64 64}
!72 = !{!"rctf", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!73 = !{!"rcti", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!74 = !{!"BakeData", !67, i64 0, !36, i64 248, !65, i64 1272, !65, i64 1274, !65, i64 1276, !65, i64 1278, !46, i64 1280, !46, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!75 = !{!"AudioData", !42, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !42, i64 16, !65, i64 20, !65, i64 22, !46, i64 24, !46, i64 28}
!76 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!77 = !{!"GameData", !76, i64 0, !65, i64 16, !65, i64 18, !65, i64 20, !65, i64 22, !65, i64 24, !65, i64 26, !65, i64 28, !65, i64 30, !65, i64 32, !36, i64 34, !78, i64 40, !65, i64 64, !65, i64 66, !46, i64 68, !79, i64 72, !46, i64 128, !46, i64 132, !42, i64 136, !65, i64 140, !65, i64 142, !65, i64 144, !65, i64 146, !65, i64 148, !65, i64 150, !65, i64 152, !65, i64 154, !65, i64 156, !65, i64 158, !65, i64 160, !65, i64 162, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180}
!78 = !{!"GameDome", !65, i64 0, !65, i64 2, !65, i64 4, !65, i64 6, !46, i64 8, !46, i64 12, !35, i64 16}
!79 = !{!"RecastData", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !46, i64 32, !46, i64 36, !42, i64 40, !46, i64 44, !46, i64 48, !65, i64 52, !65, i64 54}
!80 = !{!"UnitSettings", !46, i64 0, !36, i64 4, !36, i64 5, !65, i64 6}
!81 = !{!"PhysicsSettings", !36, i64 0, !42, i64 12, !42, i64 16, !42, i64 20}
!82 = !{!"long", !36, i64 0}
!83 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!84 = !{!"mask_editaction.c:snap_masklayer_nearmarker"}
!85 = !{!"mask_editaction.c:snap_masklayer_nearestsec"}
!86 = !{!63, !65, i64 820}
!87 = !{!63, !46, i64 900}
