; ModuleID = 'blender/source/blender/editors/mask/mask_shapekey.c'
source_filename = "blender/source/blender/editors/mask/mask_shapekey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
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
%struct.Mask = type { %struct.ID, ptr, %struct.ListBase, i32, i32, i32, i32, i32, i32 }
%struct.MaskLayer = type { ptr, ptr, [64 x i8], %struct.ListBase, %struct.ListBase, ptr, ptr, float, i8, i8, i8, [7 x i8], i8, i8 }
%struct.MaskLayerShape = type { ptr, ptr, ptr, i32, i32, i8, [7 x i8] }
%struct.MaskSpline = type { ptr, ptr, i16, i8, i8, i32, ptr, %struct.MaskParent, ptr }
%struct.MaskParent = type { i32, i32, ptr, [64 x i8], [64 x i8], [2 x float], [4 x [2 x float]] }
%struct.MaskSplinePoint = type { %struct.BezTriple, i32, i32, ptr, %struct.MaskParent }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.MaskLayerShapeElem = type { [8 x float] }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }

@.str = private unnamed_addr constant [17 x i8] c"Insert Shape Key\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"MASK_OT_shape_key_insert\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Clear Shape Key\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"MASK_OT_shape_key_clear\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Feather Reset Animation\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"Reset feather weights on all selected points animation values\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"MASK_OT_shape_key_feather_reset\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Re-Key Points of Selected Shapes\00", align 1
@.str.9 = private unnamed_addr constant [83 x i8] c"Recalculate animation data on selected points for frames selected in the dopesheet\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"MASK_OT_shape_key_rekey\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"feather\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"Feather\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_shape_key_insert(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_shape_key_insert_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mask_shape_key_insert_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !18
  %6 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #6
  %7 = getelementptr inbounds %struct.Mask, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %2, %20
  %11 = phi ptr [ %22, %20 ], [ %8, %2 ]
  %12 = phi i1 [ false, %20 ], [ true, %2 ]
  br label %13

13:                                               ; preds = %10, %17
  %14 = phi ptr [ %18, %17 ], [ %11, %10 ]
  %15 = tail call zeroext i8 @ED_mask_layer_select_check(ptr noundef nonnull %14) #6
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load ptr, ptr %14, align 8, !tbaa !41
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %13, !llvm.loop !42

20:                                               ; preds = %13
  %21 = tail call ptr @BKE_mask_layer_shape_verify_frame(ptr noundef nonnull %14, i32 noundef %5) #6
  tail call void @BKE_mask_layer_shape_from_mask(ptr noundef nonnull %14, ptr noundef %21) #6
  %22 = load ptr, ptr %14, align 8, !tbaa !41
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %10, !llvm.loop !42

24:                                               ; preds = %17
  br i1 %12, label %26, label %25

25:                                               ; preds = %20, %24
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358285312, ptr noundef %6) #6
  tail call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 0) #6
  br label %26

26:                                               ; preds = %2, %24, %25
  %27 = phi i32 [ 4, %25 ], [ 2, %24 ], [ 2, %2 ]
  ret i32 %27
}

; Function Attrs: optsize
declare i32 @ED_maskedit_mask_poll(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_shape_key_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_shape_key_clear_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mask_shape_key_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !18
  %6 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #6
  %7 = getelementptr inbounds %struct.Mask, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %2, %23
  %11 = phi ptr [ %24, %23 ], [ %8, %2 ]
  %12 = phi i1 [ false, %23 ], [ true, %2 ]
  br label %13

13:                                               ; preds = %10, %20
  %14 = phi ptr [ %21, %20 ], [ %11, %10 ]
  %15 = tail call zeroext i8 @ED_mask_layer_select_check(ptr noundef nonnull %14) #6
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @BKE_mask_layer_shape_find_frame(ptr noundef nonnull %14, i32 noundef %5) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17, %13
  %21 = load ptr, ptr %14, align 8, !tbaa !41
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %13, !llvm.loop !44

23:                                               ; preds = %17
  tail call void @BKE_mask_layer_shape_unlink(ptr noundef nonnull %14, ptr noundef nonnull %18) #6
  %24 = load ptr, ptr %14, align 8, !tbaa !41
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %10, !llvm.loop !44

26:                                               ; preds = %20
  br i1 %12, label %28, label %27

27:                                               ; preds = %23, %26
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358285312, ptr noundef %6) #6
  tail call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 2) #6
  br label %28

28:                                               ; preds = %2, %26, %27
  %29 = phi i32 [ 4, %27 ], [ 2, %26 ], [ 2, %2 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_shape_key_feather_reset(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.5, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.6, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_shape_key_feather_reset_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mask_shape_key_feather_reset_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !18
  %6 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #6
  %7 = getelementptr inbounds %struct.Mask, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  br i1 %9, label %94, label %10

10:                                               ; preds = %2, %87
  %11 = phi ptr [ %89, %87 ], [ %8, %2 ]
  %12 = phi i8 [ %88, %87 ], [ 0, %2 ]
  %13 = getelementptr inbounds %struct.MaskLayer, ptr %11, i64 0, i32 13
  %14 = load i8, ptr %13, align 1, !tbaa !45
  %15 = and i8 %14, 3
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %87

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.MaskLayer, ptr %11, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = icmp eq ptr %19, null
  br i1 %20, label %87, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @BKE_mask_layer_shape_alloc(ptr noundef nonnull %11, i32 noundef %5) #6
  tail call void @BKE_mask_layer_shape_from_mask(ptr noundef nonnull %11, ptr noundef %22) #6
  %23 = load ptr, ptr %18, align 8, !tbaa !41
  %24 = icmp eq ptr %23, null
  br i1 %24, label %85, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.MaskLayerShape, ptr %22, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !48
  %28 = getelementptr inbounds %struct.MaskLayerShape, ptr %22, i64 0, i32 2
  %29 = getelementptr inbounds %struct.MaskLayer, ptr %11, i64 0, i32 3
  br label %30

30:                                               ; preds = %25, %82
  %31 = phi ptr [ %23, %25 ], [ %83, %82 ]
  %32 = getelementptr inbounds %struct.MaskLayerShape, ptr %31, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !48
  %34 = icmp eq i32 %27, %33
  br i1 %34, label %35, label %82

35:                                               ; preds = %30
  %36 = load ptr, ptr %29, align 8, !tbaa !41
  %37 = icmp eq ptr %36, null
  br i1 %37, label %82, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.MaskLayerShape, ptr %31, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !50
  %41 = load ptr, ptr %28, align 8, !tbaa !50
  br label %47

42:                                               ; preds = %77, %47
  %43 = phi ptr [ %50, %47 ], [ %78, %77 ]
  %44 = phi ptr [ %49, %47 ], [ %79, %77 ]
  %45 = load ptr, ptr %48, align 8, !tbaa !41
  %46 = icmp eq ptr %45, null
  br i1 %46, label %82, label %47, !llvm.loop !51

47:                                               ; preds = %38, %42
  %48 = phi ptr [ %45, %42 ], [ %36, %38 ]
  %49 = phi ptr [ %44, %42 ], [ %40, %38 ]
  %50 = phi ptr [ %43, %42 ], [ %41, %38 ]
  %51 = getelementptr inbounds %struct.MaskSpline, ptr %48, i64 0, i32 5
  %52 = load i32, ptr %51, align 4, !tbaa !52
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %42

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.MaskSpline, ptr %48, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !55
  %57 = zext nneg i32 %52 to i64
  br label %58

58:                                               ; preds = %54, %77
  %59 = phi i64 [ 0, %54 ], [ %80, %77 ]
  %60 = phi ptr [ %49, %54 ], [ %79, %77 ]
  %61 = phi ptr [ %50, %54 ], [ %78, %77 ]
  %62 = getelementptr inbounds %struct.MaskSplinePoint, ptr %56, i64 %59
  %63 = getelementptr inbounds %struct.BezTriple, ptr %62, i64 0, i32 7
  %64 = load i8, ptr %63, align 1, !tbaa !56
  %65 = getelementptr inbounds %struct.BezTriple, ptr %62, i64 0, i32 8
  %66 = load i8, ptr %65, align 4, !tbaa !59
  %67 = or i8 %66, %64
  %68 = getelementptr inbounds %struct.BezTriple, ptr %62, i64 0, i32 9
  %69 = load i8, ptr %68, align 1, !tbaa !60
  %70 = or i8 %67, %69
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %58
  %74 = getelementptr inbounds [8 x float], ptr %61, i64 0, i64 6
  %75 = load float, ptr %74, align 4, !tbaa !61
  %76 = getelementptr inbounds [8 x float], ptr %60, i64 0, i64 6
  store float %75, ptr %76, align 4, !tbaa !61
  br label %77

77:                                               ; preds = %73, %58
  %78 = getelementptr inbounds %struct.MaskLayerShapeElem, ptr %61, i64 1
  %79 = getelementptr inbounds %struct.MaskLayerShapeElem, ptr %60, i64 1
  %80 = add nuw nsw i64 %59, 1
  %81 = icmp eq i64 %80, %57
  br i1 %81, label %42, label %58, !llvm.loop !62

82:                                               ; preds = %42, %35, %30
  %83 = load ptr, ptr %31, align 8, !tbaa !41
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %30, !llvm.loop !63

85:                                               ; preds = %82, %21
  %86 = phi i8 [ %12, %21 ], [ 1, %82 ]
  tail call void @BKE_mask_layer_shape_free(ptr noundef %22) #6
  br label %87

87:                                               ; preds = %17, %85, %10
  %88 = phi i8 [ %12, %10 ], [ %86, %85 ], [ %12, %17 ]
  %89 = load ptr, ptr %11, align 8, !tbaa !41
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %10, !llvm.loop !64

91:                                               ; preds = %87
  %92 = icmp eq i8 %88, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %91
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358285312, ptr noundef %6) #6
  tail call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 0) #6
  br label %94

94:                                               ; preds = %2, %91, %93
  %95 = phi i32 [ 4, %93 ], [ 2, %91 ], [ 2, %2 ]
  ret i32 %95
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MASK_OT_shape_key_rekey(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.8, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.9, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_shape_key_rekey_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1) #6
  %10 = load ptr, ptr %7, align 8, !tbaa !65
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.13, i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mask_shape_key_rekey_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca [8 x float], align 4
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !18
  %8 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #6
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.13) #6
  %12 = load ptr, ptr %9, align 8, !tbaa !66
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.11) #6
  %14 = getelementptr inbounds %struct.Mask, ptr %8, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = icmp eq ptr %15, null
  br i1 %16, label %157, label %17

17:                                               ; preds = %2
  %18 = and i32 %13, 255
  %19 = icmp eq i32 %18, 0
  %20 = and i32 %11, 255
  %21 = icmp eq i32 %20, 0
  %22 = sitofp i32 %7 to float
  br label %23

23:                                               ; preds = %17, %150
  %24 = phi ptr [ %15, %17 ], [ %152, %150 ]
  %25 = phi i8 [ 0, %17 ], [ %151, %150 ]
  %26 = getelementptr inbounds %struct.MaskLayer, ptr %24, i64 0, i32 13
  %27 = load i8, ptr %26, align 1, !tbaa !45
  %28 = and i8 %27, 3
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %150

30:                                               ; preds = %23
  %31 = call zeroext i8 @ED_mask_layer_select_check(ptr noundef nonnull %24) #6
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %150, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.MaskLayer, ptr %24, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !47
  %36 = icmp eq ptr %35, null
  br i1 %36, label %150, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.MaskLayer, ptr %24, i64 0, i32 3
  br label %39

39:                                               ; preds = %37, %145
  %40 = phi ptr [ null, %37 ], [ %146, %145 ]
  %41 = phi ptr [ %35, %37 ], [ %43, %145 ]
  %42 = phi i8 [ %25, %37 ], [ %147, %145 ]
  %43 = load ptr, ptr %41, align 8, !tbaa !68
  %44 = getelementptr inbounds %struct.MaskLayerShape, ptr %41, i64 0, i32 5
  %45 = load i8, ptr %44, align 8, !tbaa !69
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %145, label %48

48:                                               ; preds = %39
  %49 = icmp eq ptr %40, null
  %50 = select i1 %49, ptr %41, ptr %40
  %51 = icmp eq ptr %43, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.MaskLayerShape, ptr %43, i64 0, i32 5
  %54 = load i8, ptr %53, align 8, !tbaa !69
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %145

57:                                               ; preds = %52, %48
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %58 = load ptr, ptr %41, align 8, !tbaa !68
  %59 = icmp eq ptr %50, %58
  br i1 %59, label %144, label %63

60:                                               ; preds = %63
  %61 = load ptr, ptr %3, align 8, !tbaa !41
  %62 = icmp eq ptr %61, null
  br i1 %62, label %144, label %69

63:                                               ; preds = %57, %63
  %64 = phi ptr [ %65, %63 ], [ %50, %57 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !68
  call void @BLI_remlink(ptr noundef nonnull %34, ptr noundef nonnull %64) #6
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef nonnull %64) #6
  %66 = icmp ne ptr %65, null
  %67 = icmp ne ptr %65, %58
  %68 = and i1 %66, %67
  br i1 %68, label %63, label %60, !llvm.loop !70

69:                                               ; preds = %60, %69
  %70 = phi ptr [ %80, %69 ], [ %61, %60 ]
  %71 = getelementptr inbounds %struct.MaskLayerShape, ptr %70, i64 0, i32 4
  %72 = load i32, ptr %71, align 4, !tbaa !71
  %73 = sitofp i32 %72 to float
  call void @BKE_mask_layer_evaluate(ptr noundef nonnull %24, float noundef %73, i8 noundef zeroext 1) #6
  %74 = load i32, ptr %71, align 4, !tbaa !71
  %75 = call ptr @BKE_mask_layer_shape_verify_frame(ptr noundef nonnull %24, i32 noundef %74) #6
  call void @BKE_mask_layer_shape_from_mask(ptr noundef nonnull %24, ptr noundef %75) #6
  %76 = getelementptr inbounds %struct.MaskLayerShape, ptr %70, i64 0, i32 5
  %77 = load i8, ptr %76, align 8, !tbaa !69
  %78 = and i8 %77, 1
  %79 = getelementptr inbounds %struct.MaskLayerShape, ptr %75, i64 0, i32 5
  store i8 %78, ptr %79, align 8, !tbaa !69
  %80 = load ptr, ptr %70, align 8, !tbaa !41
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %69, !llvm.loop !72

82:                                               ; preds = %69
  %83 = load ptr, ptr %3, align 8, !tbaa !73
  %84 = icmp eq ptr %83, null
  br i1 %84, label %144, label %85

85:                                               ; preds = %82, %142
  %86 = phi ptr [ %87, %142 ], [ %83, %82 ]
  %87 = load ptr, ptr %86, align 8, !tbaa !68
  %88 = getelementptr inbounds %struct.MaskLayerShape, ptr %86, i64 0, i32 4
  %89 = load i32, ptr %88, align 4, !tbaa !71
  %90 = call ptr @BKE_mask_layer_shape_find_frame(ptr noundef nonnull %24, i32 noundef %89) #6
  %91 = load ptr, ptr %38, align 8, !tbaa !41
  %92 = icmp eq ptr %91, null
  br i1 %92, label %142, label %93

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.MaskLayerShape, ptr %90, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !50
  %96 = getelementptr inbounds %struct.MaskLayerShape, ptr %86, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !50
  br label %103

98:                                               ; preds = %135, %103
  %99 = phi ptr [ %106, %103 ], [ %136, %135 ]
  %100 = phi ptr [ %105, %103 ], [ %137, %135 ]
  %101 = load ptr, ptr %104, align 8, !tbaa !41
  %102 = icmp eq ptr %101, null
  br i1 %102, label %142, label %103, !llvm.loop !74

103:                                              ; preds = %93, %98
  %104 = phi ptr [ %101, %98 ], [ %91, %93 ]
  %105 = phi ptr [ %100, %98 ], [ %95, %93 ]
  %106 = phi ptr [ %99, %98 ], [ %97, %93 ]
  %107 = getelementptr inbounds %struct.MaskSpline, ptr %104, i64 0, i32 5
  %108 = load i32, ptr %107, align 4, !tbaa !52
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %98

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.MaskSpline, ptr %104, i64 0, i32 6
  br label %112

112:                                              ; preds = %110, %135
  %113 = phi i64 [ 0, %110 ], [ %138, %135 ]
  %114 = phi ptr [ %105, %110 ], [ %137, %135 ]
  %115 = phi ptr [ %106, %110 ], [ %136, %135 ]
  %116 = load ptr, ptr %111, align 8, !tbaa !55
  %117 = getelementptr inbounds %struct.MaskSplinePoint, ptr %116, i64 %113
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(32) %115, i64 32, i1 false), !tbaa.struct !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %115, ptr noundef nonnull align 4 dereferenceable(32) %114, i64 32, i1 false), !tbaa.struct !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %114, ptr noundef nonnull align 4 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4)
  %118 = getelementptr inbounds %struct.BezTriple, ptr %117, i64 0, i32 7
  %119 = load i8, ptr %118, align 1, !tbaa !56
  %120 = getelementptr inbounds %struct.BezTriple, ptr %117, i64 0, i32 8
  %121 = load i8, ptr %120, align 4, !tbaa !59
  %122 = or i8 %121, %119
  %123 = getelementptr inbounds %struct.BezTriple, ptr %117, i64 0, i32 9
  %124 = load i8, ptr %123, align 1, !tbaa !60
  %125 = or i8 %122, %124
  %126 = and i8 %125, 1
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %112
  br i1 %19, label %130, label %129

129:                                              ; preds = %128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %114, ptr noundef nonnull align 4 dereferenceable(24) %115, i64 24, i1 false)
  br label %130

130:                                              ; preds = %129, %128
  br i1 %21, label %135, label %131

131:                                              ; preds = %130
  %132 = getelementptr inbounds [8 x float], ptr %115, i64 0, i64 6
  %133 = load float, ptr %132, align 4, !tbaa !61
  %134 = getelementptr inbounds [8 x float], ptr %114, i64 0, i64 6
  store float %133, ptr %134, align 4, !tbaa !61
  br label %135

135:                                              ; preds = %130, %131, %112
  %136 = getelementptr inbounds %struct.MaskLayerShapeElem, ptr %115, i64 1
  %137 = getelementptr inbounds %struct.MaskLayerShapeElem, ptr %114, i64 1
  %138 = add nuw nsw i64 %113, 1
  %139 = load i32, ptr %107, align 4, !tbaa !52
  %140 = sext i32 %139 to i64
  %141 = icmp slt i64 %138, %140
  br i1 %141, label %112, label %98, !llvm.loop !77

142:                                              ; preds = %98, %85
  call void @BKE_mask_layer_shape_free(ptr noundef nonnull %86) #6
  %143 = icmp eq ptr %87, null
  br i1 %143, label %144, label %85, !llvm.loop !78

144:                                              ; preds = %142, %57, %60, %82
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  br label %145

145:                                              ; preds = %39, %52, %144
  %146 = phi ptr [ null, %144 ], [ %40, %39 ], [ %50, %52 ]
  %147 = phi i8 [ 1, %144 ], [ %42, %39 ], [ %42, %52 ]
  %148 = icmp eq ptr %43, null
  br i1 %148, label %149, label %39, !llvm.loop !79

149:                                              ; preds = %145
  call void @BKE_mask_layer_evaluate(ptr noundef nonnull %24, float noundef %22, i8 noundef zeroext 1) #6
  br label %150

150:                                              ; preds = %33, %149, %30, %23
  %151 = phi i8 [ %25, %23 ], [ %147, %149 ], [ %25, %33 ], [ %25, %30 ]
  %152 = load ptr, ptr %24, align 8, !tbaa !41
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %23, !llvm.loop !80

154:                                              ; preds = %150
  %155 = icmp eq i8 %151, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %154
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358285312, ptr noundef %8) #6
  call void @DAG_id_tag_update(ptr noundef %8, i16 noundef signext 0) #6
  br label %157

157:                                              ; preds = %2, %154, %156
  %158 = phi i32 [ 4, %156 ], [ 2, %154 ], [ 2, %2 ]
  ret i32 %158
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mask_layer_shape_auto_key(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = tail call ptr @BKE_mask_layer_shape_verify_frame(ptr noundef %0, i32 noundef %1) #6
  tail call void @BKE_mask_layer_shape_from_mask(ptr noundef %0, ptr noundef %3) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @BKE_mask_layer_shape_verify_frame(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_layer_shape_from_mask(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ED_mask_layer_shape_auto_key_all(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %2 ]
  tail call void @ED_mask_layer_shape_auto_key(ptr noundef nonnull %7, i32 noundef %1) #8
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6, !llvm.loop !81

10:                                               ; preds = %6, %2
  %11 = phi i8 [ 0, %2 ], [ 1, %6 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ED_mask_layer_shape_auto_key_select(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2, %12
  %7 = phi ptr [ %14, %12 ], [ %4, %2 ]
  %8 = phi i8 [ %13, %12 ], [ 0, %2 ]
  %9 = tail call zeroext i8 @ED_mask_layer_select_check(ptr noundef nonnull %7) #6
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @ED_mask_layer_shape_auto_key(ptr noundef nonnull %7, i32 noundef %1) #8
  br label %12

12:                                               ; preds = %6, %11
  %13 = phi i8 [ 1, %11 ], [ %8, %6 ]
  %14 = load ptr, ptr %7, align 8, !tbaa !41
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %6, !llvm.loop !82

16:                                               ; preds = %12, %2
  %17 = phi i8 [ 0, %2 ], [ %13, %12 ]
  ret i8 %17
}

; Function Attrs: optsize
declare zeroext i8 @ED_mask_layer_select_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_mask_layer_shape_find_frame(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_layer_shape_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_mask_layer_shape_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_layer_shape_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_layer_evaluate(ptr noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind }
attributes #8 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !11, i64 152, !12, i64 184}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 24}
!14 = !{!6, !7, i64 8}
!15 = !{!6, !7, i64 32}
!16 = !{!6, !7, i64 72}
!17 = !{!6, !12, i64 184}
!18 = !{!19, !21, i64 680}
!19 = !{!"Scene", !20, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !21, i64 232, !21, i64 236, !21, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !22, i64 280, !32, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !21, i64 4380, !10, i64 4384, !33, i64 4400, !34, i64 4416, !37, i64 4600, !7, i64 4608, !38, i64 4616, !7, i64 4640, !39, i64 4648, !39, i64 4656, !25, i64 4664, !26, i64 4824, !40, i64 4888, !7, i64 4952}
!20 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !21, i64 100, !21, i64 104, !21, i64 108, !7, i64 112}
!21 = !{!"int", !8, i64 0}
!22 = !{!"RenderData", !23, i64 0, !7, i64 248, !7, i64 256, !27, i64 264, !28, i64 328, !21, i64 400, !21, i64 404, !21, i64 408, !24, i64 412, !21, i64 416, !21, i64 420, !21, i64 424, !21, i64 428, !12, i64 432, !12, i64 434, !24, i64 436, !24, i64 440, !24, i64 444, !24, i64 448, !24, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !21, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !21, i64 484, !21, i64 488, !12, i64 492, !12, i64 494, !21, i64 496, !21, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !21, i64 516, !21, i64 520, !21, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !29, i64 544, !29, i64 560, !30, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !24, i64 612, !24, i64 616, !24, i64 620, !24, i64 624, !21, i64 628, !24, i64 632, !24, i64 636, !24, i64 640, !24, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !24, i64 660, !24, i64 664, !12, i64 668, !12, i64 670, !24, i64 672, !24, i64 676, !8, i64 680, !21, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !21, i64 2520, !12, i64 2524, !12, i64 2526, !24, i64 2528, !24, i64 2532, !12, i64 2536, !12, i64 2538, !24, i64 2540, !12, i64 2544, !12, i64 2546, !21, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !24, i64 2560, !24, i64 2564, !7, i64 2568, !21, i64 2576, !24, i64 2580, !8, i64 2584, !31, i64 2616, !21, i64 3976, !21, i64 3980}
!23 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !24, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !25, i64 24, !26, i64 184}
!24 = !{!"float", !8, i64 0}
!25 = !{!"ColorManagedViewSettings", !21, i64 0, !21, i64 4, !8, i64 8, !8, i64 72, !24, i64 136, !24, i64 140, !7, i64 144, !7, i64 152}
!26 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!27 = !{!"QuicktimeCodecSettings", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !21, i64 24, !21, i64 28, !21, i64 32, !21, i64 36, !21, i64 40, !21, i64 44, !12, i64 48, !12, i64 50, !21, i64 52, !21, i64 56, !21, i64 60}
!28 = !{!"FFMpegCodecData", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !21, i64 24, !21, i64 28, !24, i64 32, !21, i64 36, !21, i64 40, !21, i64 44, !21, i64 48, !21, i64 52, !21, i64 56, !21, i64 60, !7, i64 64}
!29 = !{!"rctf", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12}
!30 = !{!"rcti", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12}
!31 = !{!"BakeData", !23, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !24, i64 1280, !24, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!32 = !{!"AudioData", !21, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !21, i64 16, !12, i64 20, !12, i64 22, !24, i64 24, !24, i64 28}
!33 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!34 = !{!"GameData", !33, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !35, i64 40, !12, i64 64, !12, i64 66, !24, i64 68, !36, i64 72, !24, i64 128, !24, i64 132, !21, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !24, i64 164, !24, i64 168, !24, i64 172, !24, i64 176, !24, i64 180}
!35 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !24, i64 8, !24, i64 12, !7, i64 16}
!36 = !{!"RecastData", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !24, i64 16, !24, i64 20, !24, i64 24, !24, i64 28, !24, i64 32, !24, i64 36, !21, i64 40, !24, i64 44, !24, i64 48, !12, i64 52, !12, i64 54}
!37 = !{!"UnitSettings", !24, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!38 = !{!"PhysicsSettings", !8, i64 0, !21, i64 12, !21, i64 16, !21, i64 20}
!39 = !{!"long", !8, i64 0}
!40 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!41 = !{!7, !7, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = distinct !{!44, !43}
!45 = !{!46, !8, i64 143}
!46 = !{!"MaskLayer", !7, i64 0, !7, i64 8, !8, i64 16, !10, i64 80, !10, i64 96, !7, i64 112, !7, i64 120, !24, i64 128, !8, i64 132, !8, i64 133, !8, i64 134, !8, i64 135, !8, i64 142, !8, i64 143}
!47 = !{!46, !7, i64 96}
!48 = !{!49, !21, i64 24}
!49 = !{!"MaskLayerShape", !7, i64 0, !7, i64 8, !7, i64 16, !21, i64 24, !21, i64 28, !8, i64 32, !8, i64 33}
!50 = !{!49, !7, i64 16}
!51 = distinct !{!51, !43}
!52 = !{!53, !21, i64 20}
!53 = !{!"MaskSpline", !7, i64 0, !7, i64 8, !12, i64 16, !8, i64 18, !8, i64 19, !21, i64 20, !7, i64 24, !54, i64 32, !7, i64 216}
!54 = !{!"MaskParent", !21, i64 0, !21, i64 4, !7, i64 8, !8, i64 16, !8, i64 80, !8, i64 144, !8, i64 152}
!55 = !{!53, !7, i64 24}
!56 = !{!57, !8, i64 51}
!57 = !{!"MaskSplinePoint", !58, i64 0, !21, i64 72, !21, i64 76, !7, i64 80, !54, i64 88}
!58 = !{!"BezTriple", !8, i64 0, !24, i64 36, !24, i64 40, !24, i64 44, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !8, i64 52, !8, i64 53, !8, i64 54, !8, i64 55, !24, i64 56, !24, i64 60, !24, i64 64, !8, i64 68}
!59 = !{!57, !8, i64 52}
!60 = !{!57, !8, i64 53}
!61 = !{!24, !24, i64 0}
!62 = distinct !{!62, !43}
!63 = distinct !{!63, !43}
!64 = distinct !{!64, !43}
!65 = !{!6, !7, i64 88}
!66 = !{!67, !7, i64 112}
!67 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!68 = !{!49, !7, i64 0}
!69 = !{!49, !8, i64 32}
!70 = distinct !{!70, !43}
!71 = !{!49, !21, i64 28}
!72 = distinct !{!72, !43}
!73 = !{!10, !7, i64 0}
!74 = distinct !{!74, !43}
!75 = !{i64 0, i64 32, !76}
!76 = !{!8, !8, i64 0}
!77 = distinct !{!77, !43}
!78 = distinct !{!78, !43}
!79 = distinct !{!79, !43}
!80 = distinct !{!80, !43}
!81 = distinct !{!81, !43}
!82 = distinct !{!82, !43}
