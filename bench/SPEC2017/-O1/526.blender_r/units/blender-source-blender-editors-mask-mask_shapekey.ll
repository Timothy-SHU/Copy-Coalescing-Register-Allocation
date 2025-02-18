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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_shape_key_insert(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_shape_key_insert_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mask_shape_key_insert_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !47
  %6 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #6
  %7 = getelementptr inbounds %struct.Mask, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %2, %17
  %11 = phi ptr [ %19, %17 ], [ %8, %2 ]
  %12 = phi i8 [ %18, %17 ], [ 0, %2 ]
  %13 = tail call zeroext i8 @ED_mask_layer_select_check(ptr noundef nonnull %11) #6
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = tail call ptr @BKE_mask_layer_shape_verify_frame(ptr noundef nonnull %11, i32 noundef %5) #6
  tail call void @BKE_mask_layer_shape_from_mask(ptr noundef nonnull %11, ptr noundef %16) #6
  br label %17

17:                                               ; preds = %10, %15
  %18 = phi i8 [ 1, %15 ], [ %12, %10 ]
  %19 = load ptr, ptr %11, align 8, !tbaa !70
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %10, !llvm.loop !71

21:                                               ; preds = %17
  %22 = icmp eq i8 %18, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %21
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358285312, ptr noundef %6) #6
  tail call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 0) #6
  br label %24

24:                                               ; preds = %2, %21, %23
  %25 = phi i32 [ 4, %23 ], [ 2, %21 ], [ 2, %2 ]
  ret i32 %25
}

declare i32 @ED_maskedit_mask_poll(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_shape_key_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_shape_key_clear_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mask_shape_key_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !47
  %6 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #6
  %7 = getelementptr inbounds %struct.Mask, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %2, %19
  %11 = phi ptr [ %21, %19 ], [ %8, %2 ]
  %12 = phi i8 [ %20, %19 ], [ 0, %2 ]
  %13 = tail call zeroext i8 @ED_mask_layer_select_check(ptr noundef nonnull %11) #6
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = tail call ptr @BKE_mask_layer_shape_find_frame(ptr noundef nonnull %11, i32 noundef %5) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @BKE_mask_layer_shape_unlink(ptr noundef nonnull %11, ptr noundef nonnull %16) #6
  br label %19

19:                                               ; preds = %15, %18, %10
  %20 = phi i8 [ %12, %10 ], [ 1, %18 ], [ %12, %15 ]
  %21 = load ptr, ptr %11, align 8, !tbaa !70
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %10, !llvm.loop !74

23:                                               ; preds = %19
  %24 = icmp eq i8 %20, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358285312, ptr noundef %6) #6
  tail call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 2) #6
  br label %26

26:                                               ; preds = %2, %23, %25
  %27 = phi i32 [ 4, %25 ], [ 2, %23 ], [ 2, %2 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_shape_key_feather_reset(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.5, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.6, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_shape_key_feather_reset_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mask_shape_key_feather_reset_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !47
  %6 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #6
  %7 = getelementptr inbounds %struct.Mask, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = icmp eq ptr %8, null
  br i1 %9, label %94, label %10

10:                                               ; preds = %2, %87
  %11 = phi ptr [ %89, %87 ], [ %8, %2 ]
  %12 = phi i8 [ %88, %87 ], [ 0, %2 ]
  %13 = getelementptr inbounds %struct.MaskLayer, ptr %11, i64 0, i32 13
  %14 = load i8, ptr %13, align 1, !tbaa !75
  %15 = and i8 %14, 3
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %87

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.MaskLayer, ptr %11, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !77
  %20 = icmp eq ptr %19, null
  br i1 %20, label %87, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @BKE_mask_layer_shape_alloc(ptr noundef nonnull %11, i32 noundef %5) #6
  tail call void @BKE_mask_layer_shape_from_mask(ptr noundef nonnull %11, ptr noundef %22) #6
  %23 = load ptr, ptr %18, align 8, !tbaa !70
  %24 = icmp eq ptr %23, null
  br i1 %24, label %85, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.MaskLayerShape, ptr %22, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !78
  %28 = getelementptr inbounds %struct.MaskLayerShape, ptr %22, i64 0, i32 2
  %29 = getelementptr inbounds %struct.MaskLayer, ptr %11, i64 0, i32 3
  br label %30

30:                                               ; preds = %25, %82
  %31 = phi ptr [ %23, %25 ], [ %83, %82 ]
  %32 = getelementptr inbounds %struct.MaskLayerShape, ptr %31, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !78
  %34 = icmp eq i32 %27, %33
  br i1 %34, label %35, label %82

35:                                               ; preds = %30
  %36 = load ptr, ptr %29, align 8, !tbaa !70
  %37 = icmp eq ptr %36, null
  br i1 %37, label %82, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.MaskLayerShape, ptr %31, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !80
  %41 = load ptr, ptr %28, align 8, !tbaa !80
  br label %47

42:                                               ; preds = %77, %47
  %43 = phi ptr [ %50, %47 ], [ %78, %77 ]
  %44 = phi ptr [ %49, %47 ], [ %79, %77 ]
  %45 = load ptr, ptr %48, align 8, !tbaa !70
  %46 = icmp eq ptr %45, null
  br i1 %46, label %82, label %47, !llvm.loop !81

47:                                               ; preds = %38, %42
  %48 = phi ptr [ %45, %42 ], [ %36, %38 ]
  %49 = phi ptr [ %44, %42 ], [ %40, %38 ]
  %50 = phi ptr [ %43, %42 ], [ %41, %38 ]
  %51 = getelementptr inbounds %struct.MaskSpline, ptr %48, i64 0, i32 5
  %52 = load i32, ptr %51, align 4, !tbaa !82
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %42

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.MaskSpline, ptr %48, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !85
  %57 = zext nneg i32 %52 to i64
  br label %58

58:                                               ; preds = %54, %77
  %59 = phi i64 [ 0, %54 ], [ %80, %77 ]
  %60 = phi ptr [ %49, %54 ], [ %79, %77 ]
  %61 = phi ptr [ %50, %54 ], [ %78, %77 ]
  %62 = getelementptr inbounds %struct.MaskSplinePoint, ptr %56, i64 %59
  %63 = getelementptr inbounds %struct.BezTriple, ptr %62, i64 0, i32 7
  %64 = load i8, ptr %63, align 1, !tbaa !86
  %65 = getelementptr inbounds %struct.BezTriple, ptr %62, i64 0, i32 8
  %66 = load i8, ptr %65, align 4, !tbaa !89
  %67 = or i8 %66, %64
  %68 = getelementptr inbounds %struct.BezTriple, ptr %62, i64 0, i32 9
  %69 = load i8, ptr %68, align 1, !tbaa !90
  %70 = or i8 %67, %69
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %58
  %74 = getelementptr inbounds [8 x float], ptr %61, i64 0, i64 6
  %75 = load float, ptr %74, align 4, !tbaa !91
  %76 = getelementptr inbounds [8 x float], ptr %60, i64 0, i64 6
  store float %75, ptr %76, align 4, !tbaa !91
  br label %77

77:                                               ; preds = %73, %58
  %78 = getelementptr inbounds %struct.MaskLayerShapeElem, ptr %61, i64 1
  %79 = getelementptr inbounds %struct.MaskLayerShapeElem, ptr %60, i64 1
  %80 = add nuw nsw i64 %59, 1
  %81 = icmp eq i64 %80, %57
  br i1 %81, label %42, label %58, !llvm.loop !92

82:                                               ; preds = %42, %35, %30
  %83 = load ptr, ptr %31, align 8, !tbaa !70
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %30, !llvm.loop !93

85:                                               ; preds = %82, %21
  %86 = phi i8 [ %12, %21 ], [ 1, %82 ]
  tail call void @BKE_mask_layer_shape_free(ptr noundef %22) #6
  br label %87

87:                                               ; preds = %17, %85, %10
  %88 = phi i8 [ %12, %10 ], [ %86, %85 ], [ %12, %17 ]
  %89 = load ptr, ptr %11, align 8, !tbaa !70
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %10, !llvm.loop !94

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

; Function Attrs: nounwind uwtable
define dso_local void @MASK_OT_shape_key_rekey(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.8, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.9, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_shape_key_rekey_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !95
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1) #6
  %10 = load ptr, ptr %7, align 8, !tbaa !95
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.13, i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mask_shape_key_rekey_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca [8 x float], align 4
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !47
  %8 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #6
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !96
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.13) #6
  %12 = load ptr, ptr %9, align 8, !tbaa !96
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.11) #6
  %14 = getelementptr inbounds %struct.Mask, ptr %8, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  %16 = icmp eq ptr %15, null
  br i1 %16, label %164, label %17

17:                                               ; preds = %2
  %18 = and i32 %13, 255
  %19 = icmp eq i32 %18, 0
  %20 = and i32 %11, 255
  %21 = icmp eq i32 %20, 0
  %22 = sitofp i32 %7 to float
  br label %23

23:                                               ; preds = %17, %157
  %24 = phi ptr [ %15, %17 ], [ %159, %157 ]
  %25 = phi i8 [ 0, %17 ], [ %158, %157 ]
  %26 = getelementptr inbounds %struct.MaskLayer, ptr %24, i64 0, i32 13
  %27 = load i8, ptr %26, align 1, !tbaa !75
  %28 = and i8 %27, 3
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %157

30:                                               ; preds = %23
  %31 = call zeroext i8 @ED_mask_layer_select_check(ptr noundef nonnull %24) #6
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %157, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.MaskLayer, ptr %24, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !77
  %36 = icmp eq ptr %35, null
  br i1 %36, label %157, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.MaskLayer, ptr %24, i64 0, i32 3
  br label %39

39:                                               ; preds = %37, %153
  %40 = phi ptr [ null, %37 ], [ %59, %153 ]
  %41 = phi ptr [ %35, %37 ], [ %43, %153 ]
  %42 = phi i8 [ %25, %37 ], [ %154, %153 ]
  %43 = load ptr, ptr %41, align 8, !tbaa !98
  %44 = getelementptr inbounds %struct.MaskLayerShape, ptr %41, i64 0, i32 5
  %45 = load i8, ptr %44, align 8, !tbaa !99
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %39
  %49 = icmp eq ptr %40, null
  %50 = select i1 %49, ptr %41, ptr %40
  %51 = icmp eq ptr %43, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.MaskLayerShape, ptr %43, i64 0, i32 5
  %54 = load i8, ptr %53, align 8, !tbaa !99
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %48
  br label %58

58:                                               ; preds = %52, %57, %39
  %59 = phi ptr [ null, %57 ], [ %50, %52 ], [ %40, %39 ]
  %60 = phi ptr [ %50, %57 ], [ null, %52 ], [ null, %39 ]
  %61 = phi ptr [ %41, %57 ], [ null, %52 ], [ null, %39 ]
  %62 = icmp ne ptr %60, null
  %63 = icmp ne ptr %61, null
  %64 = and i1 %62, %63
  br i1 %64, label %65, label %153

65:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %66 = load ptr, ptr %61, align 8, !tbaa !98
  %67 = icmp eq ptr %60, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %71, %65
  %69 = load ptr, ptr %3, align 8, !tbaa !70
  %70 = icmp eq ptr %69, null
  br i1 %70, label %90, label %77

71:                                               ; preds = %65, %71
  %72 = phi ptr [ %73, %71 ], [ %60, %65 ]
  %73 = load ptr, ptr %72, align 8, !tbaa !98
  call void @BLI_remlink(ptr noundef nonnull %34, ptr noundef nonnull %72) #6
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef nonnull %72) #6
  %74 = icmp ne ptr %73, null
  %75 = icmp ne ptr %73, %66
  %76 = and i1 %74, %75
  br i1 %76, label %71, label %68, !llvm.loop !100

77:                                               ; preds = %68, %77
  %78 = phi ptr [ %88, %77 ], [ %69, %68 ]
  %79 = getelementptr inbounds %struct.MaskLayerShape, ptr %78, i64 0, i32 4
  %80 = load i32, ptr %79, align 4, !tbaa !101
  %81 = sitofp i32 %80 to float
  call void @BKE_mask_layer_evaluate(ptr noundef nonnull %24, float noundef %81, i8 noundef zeroext 1) #6
  %82 = load i32, ptr %79, align 4, !tbaa !101
  %83 = call ptr @BKE_mask_layer_shape_verify_frame(ptr noundef nonnull %24, i32 noundef %82) #6
  call void @BKE_mask_layer_shape_from_mask(ptr noundef nonnull %24, ptr noundef %83) #6
  %84 = getelementptr inbounds %struct.MaskLayerShape, ptr %78, i64 0, i32 5
  %85 = load i8, ptr %84, align 8, !tbaa !99
  %86 = and i8 %85, 1
  %87 = getelementptr inbounds %struct.MaskLayerShape, ptr %83, i64 0, i32 5
  store i8 %86, ptr %87, align 8, !tbaa !99
  %88 = load ptr, ptr %78, align 8, !tbaa !70
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %77, !llvm.loop !102

90:                                               ; preds = %77, %68
  %91 = load ptr, ptr %3, align 8, !tbaa !103
  %92 = icmp eq ptr %91, null
  br i1 %92, label %152, label %93

93:                                               ; preds = %90, %150
  %94 = phi ptr [ %95, %150 ], [ %91, %90 ]
  %95 = load ptr, ptr %94, align 8, !tbaa !98
  %96 = getelementptr inbounds %struct.MaskLayerShape, ptr %94, i64 0, i32 4
  %97 = load i32, ptr %96, align 4, !tbaa !101
  %98 = call ptr @BKE_mask_layer_shape_find_frame(ptr noundef nonnull %24, i32 noundef %97) #6
  %99 = load ptr, ptr %38, align 8, !tbaa !70
  %100 = icmp eq ptr %99, null
  br i1 %100, label %150, label %101

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.MaskLayerShape, ptr %98, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !80
  %104 = getelementptr inbounds %struct.MaskLayerShape, ptr %94, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !80
  br label %111

106:                                              ; preds = %143, %111
  %107 = phi ptr [ %114, %111 ], [ %144, %143 ]
  %108 = phi ptr [ %113, %111 ], [ %145, %143 ]
  %109 = load ptr, ptr %112, align 8, !tbaa !70
  %110 = icmp eq ptr %109, null
  br i1 %110, label %150, label %111, !llvm.loop !104

111:                                              ; preds = %101, %106
  %112 = phi ptr [ %109, %106 ], [ %99, %101 ]
  %113 = phi ptr [ %108, %106 ], [ %103, %101 ]
  %114 = phi ptr [ %107, %106 ], [ %105, %101 ]
  %115 = getelementptr inbounds %struct.MaskSpline, ptr %112, i64 0, i32 5
  %116 = load i32, ptr %115, align 4, !tbaa !82
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %106

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.MaskSpline, ptr %112, i64 0, i32 6
  br label %120

120:                                              ; preds = %118, %143
  %121 = phi i64 [ 0, %118 ], [ %146, %143 ]
  %122 = phi ptr [ %113, %118 ], [ %145, %143 ]
  %123 = phi ptr [ %114, %118 ], [ %144, %143 ]
  %124 = load ptr, ptr %119, align 8, !tbaa !85
  %125 = getelementptr inbounds %struct.MaskSplinePoint, ptr %124, i64 %121
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(32) %123, i64 32, i1 false), !tbaa.struct !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %123, ptr noundef nonnull align 4 dereferenceable(32) %122, i64 32, i1 false), !tbaa.struct !105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %122, ptr noundef nonnull align 4 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !105
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4)
  %126 = getelementptr inbounds %struct.BezTriple, ptr %125, i64 0, i32 7
  %127 = load i8, ptr %126, align 1, !tbaa !86
  %128 = getelementptr inbounds %struct.BezTriple, ptr %125, i64 0, i32 8
  %129 = load i8, ptr %128, align 4, !tbaa !89
  %130 = or i8 %129, %127
  %131 = getelementptr inbounds %struct.BezTriple, ptr %125, i64 0, i32 9
  %132 = load i8, ptr %131, align 1, !tbaa !90
  %133 = or i8 %130, %132
  %134 = and i8 %133, 1
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %120
  br i1 %19, label %138, label %137

137:                                              ; preds = %136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %122, ptr noundef nonnull align 4 dereferenceable(24) %123, i64 24, i1 false)
  br label %138

138:                                              ; preds = %137, %136
  br i1 %21, label %143, label %139

139:                                              ; preds = %138
  %140 = getelementptr inbounds [8 x float], ptr %123, i64 0, i64 6
  %141 = load float, ptr %140, align 4, !tbaa !91
  %142 = getelementptr inbounds [8 x float], ptr %122, i64 0, i64 6
  store float %141, ptr %142, align 4, !tbaa !91
  br label %143

143:                                              ; preds = %138, %139, %120
  %144 = getelementptr inbounds %struct.MaskLayerShapeElem, ptr %123, i64 1
  %145 = getelementptr inbounds %struct.MaskLayerShapeElem, ptr %122, i64 1
  %146 = add nuw nsw i64 %121, 1
  %147 = load i32, ptr %115, align 4, !tbaa !82
  %148 = sext i32 %147 to i64
  %149 = icmp slt i64 %146, %148
  br i1 %149, label %120, label %106, !llvm.loop !107

150:                                              ; preds = %106, %93
  call void @BKE_mask_layer_shape_free(ptr noundef nonnull %94) #6
  %151 = icmp eq ptr %95, null
  br i1 %151, label %152, label %93, !llvm.loop !108

152:                                              ; preds = %150, %90
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  br label %153

153:                                              ; preds = %152, %58
  %154 = phi i8 [ 1, %152 ], [ %42, %58 ]
  %155 = icmp eq ptr %43, null
  br i1 %155, label %156, label %39, !llvm.loop !109

156:                                              ; preds = %153
  call void @BKE_mask_layer_evaluate(ptr noundef nonnull %24, float noundef %22, i8 noundef zeroext 1) #6
  br label %157

157:                                              ; preds = %33, %156, %30, %23
  %158 = phi i8 [ %25, %23 ], [ %154, %156 ], [ %25, %33 ], [ %25, %30 ]
  %159 = load ptr, ptr %24, align 8, !tbaa !70
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %23, !llvm.loop !110

161:                                              ; preds = %157
  %162 = icmp eq i8 %158, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %161
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358285312, ptr noundef %8) #6
  call void @DAG_id_tag_update(ptr noundef %8, i16 noundef signext 0) #6
  br label %164

164:                                              ; preds = %2, %161, %163
  %165 = phi i32 [ 4, %163 ], [ 2, %161 ], [ 2, %2 ]
  ret i32 %165
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_mask_layer_shape_auto_key(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = tail call ptr @BKE_mask_layer_shape_verify_frame(ptr noundef %0, i32 noundef %1) #6
  tail call void @BKE_mask_layer_shape_from_mask(ptr noundef %0, ptr noundef %3) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @BKE_mask_layer_shape_verify_frame(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_mask_layer_shape_from_mask(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @ED_mask_layer_shape_auto_key_all(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %9, %6 ], [ %4, %2 ]
  %8 = tail call ptr @BKE_mask_layer_shape_verify_frame(ptr noundef nonnull %7, i32 noundef %1) #6
  tail call void @BKE_mask_layer_shape_from_mask(ptr noundef nonnull %7, ptr noundef %8) #6
  %9 = load ptr, ptr %7, align 8, !tbaa !70
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6, !llvm.loop !111

11:                                               ; preds = %6, %2
  %12 = phi i8 [ 0, %2 ], [ 1, %6 ]
  ret i8 %12
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ED_mask_layer_shape_auto_key_select(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2, %13
  %7 = phi ptr [ %15, %13 ], [ %4, %2 ]
  %8 = phi i8 [ %14, %13 ], [ 0, %2 ]
  %9 = tail call zeroext i8 @ED_mask_layer_select_check(ptr noundef nonnull %7) #6
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call ptr @BKE_mask_layer_shape_verify_frame(ptr noundef nonnull %7, i32 noundef %1) #6
  tail call void @BKE_mask_layer_shape_from_mask(ptr noundef nonnull %7, ptr noundef %12) #6
  br label %13

13:                                               ; preds = %6, %11
  %14 = phi i8 [ 1, %11 ], [ %8, %6 ]
  %15 = load ptr, ptr %7, align 8, !tbaa !70
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %6, !llvm.loop !112

17:                                               ; preds = %13, %2
  %18 = phi i8 [ 0, %2 ], [ %14, %13 ]
  ret i8 %18
}

declare zeroext i8 @ED_mask_layer_select_check(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_mask(ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @BKE_mask_layer_shape_find_frame(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_mask_layer_shape_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_mask_layer_shape_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_mask_layer_shape_free(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mask_layer_evaluate(ptr noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!48, !50, i64 680}
!48 = !{!"Scene", !49, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !50, i64 232, !50, i64 236, !50, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !51, i64 280, !61, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !50, i64 4380, !39, i64 4384, !62, i64 4400, !63, i64 4416, !66, i64 4600, !36, i64 4608, !67, i64 4616, !36, i64 4640, !68, i64 4648, !68, i64 4656, !54, i64 4664, !55, i64 4824, !69, i64 4888, !36, i64 4952}
!49 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !50, i64 100, !50, i64 104, !50, i64 108, !36, i64 112}
!50 = !{!"int", !37, i64 0}
!51 = !{!"RenderData", !52, i64 0, !36, i64 248, !36, i64 256, !56, i64 264, !57, i64 328, !50, i64 400, !50, i64 404, !50, i64 408, !53, i64 412, !50, i64 416, !50, i64 420, !50, i64 424, !50, i64 428, !41, i64 432, !41, i64 434, !53, i64 436, !53, i64 440, !53, i64 444, !53, i64 448, !53, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !50, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !50, i64 484, !50, i64 488, !41, i64 492, !41, i64 494, !50, i64 496, !50, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !50, i64 516, !50, i64 520, !50, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !58, i64 544, !58, i64 560, !59, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !53, i64 612, !53, i64 616, !53, i64 620, !53, i64 624, !50, i64 628, !53, i64 632, !53, i64 636, !53, i64 640, !53, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !53, i64 660, !53, i64 664, !41, i64 668, !41, i64 670, !53, i64 672, !53, i64 676, !37, i64 680, !50, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !50, i64 2520, !41, i64 2524, !41, i64 2526, !53, i64 2528, !53, i64 2532, !41, i64 2536, !41, i64 2538, !53, i64 2540, !41, i64 2544, !41, i64 2546, !50, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !53, i64 2560, !53, i64 2564, !36, i64 2568, !50, i64 2576, !53, i64 2580, !37, i64 2584, !60, i64 2616, !50, i64 3976, !50, i64 3980}
!52 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !53, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !54, i64 24, !55, i64 184}
!53 = !{!"float", !37, i64 0}
!54 = !{!"ColorManagedViewSettings", !50, i64 0, !50, i64 4, !37, i64 8, !37, i64 72, !53, i64 136, !53, i64 140, !36, i64 144, !36, i64 152}
!55 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!56 = !{!"QuicktimeCodecSettings", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !50, i64 32, !50, i64 36, !50, i64 40, !50, i64 44, !41, i64 48, !41, i64 50, !50, i64 52, !50, i64 56, !50, i64 60}
!57 = !{!"FFMpegCodecData", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !53, i64 32, !50, i64 36, !50, i64 40, !50, i64 44, !50, i64 48, !50, i64 52, !50, i64 56, !50, i64 60, !36, i64 64}
!58 = !{!"rctf", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!59 = !{!"rcti", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!60 = !{!"BakeData", !52, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !53, i64 1280, !53, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!61 = !{!"AudioData", !50, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !50, i64 16, !41, i64 20, !41, i64 22, !53, i64 24, !53, i64 28}
!62 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!63 = !{!"GameData", !62, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !64, i64 40, !41, i64 64, !41, i64 66, !53, i64 68, !65, i64 72, !53, i64 128, !53, i64 132, !50, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !53, i64 164, !53, i64 168, !53, i64 172, !53, i64 176, !53, i64 180}
!64 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !53, i64 8, !53, i64 12, !36, i64 16}
!65 = !{!"RecastData", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !50, i64 40, !53, i64 44, !53, i64 48, !41, i64 52, !41, i64 54}
!66 = !{!"UnitSettings", !53, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!67 = !{!"PhysicsSettings", !37, i64 0, !50, i64 12, !50, i64 16, !50, i64 20}
!68 = !{!"long", !37, i64 0}
!69 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!70 = !{!36, !36, i64 0}
!71 = distinct !{!71, !72, !73}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = distinct !{!74, !72, !73}
!75 = !{!76, !37, i64 143}
!76 = !{!"MaskLayer", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 80, !39, i64 96, !36, i64 112, !36, i64 120, !53, i64 128, !37, i64 132, !37, i64 133, !37, i64 134, !37, i64 135, !37, i64 142, !37, i64 143}
!77 = !{!76, !36, i64 96}
!78 = !{!79, !50, i64 24}
!79 = !{!"MaskLayerShape", !36, i64 0, !36, i64 8, !36, i64 16, !50, i64 24, !50, i64 28, !37, i64 32, !37, i64 33}
!80 = !{!79, !36, i64 16}
!81 = distinct !{!81, !72, !73}
!82 = !{!83, !50, i64 20}
!83 = !{!"MaskSpline", !36, i64 0, !36, i64 8, !41, i64 16, !37, i64 18, !37, i64 19, !50, i64 20, !36, i64 24, !84, i64 32, !36, i64 216}
!84 = !{!"MaskParent", !50, i64 0, !50, i64 4, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 144, !37, i64 152}
!85 = !{!83, !36, i64 24}
!86 = !{!87, !37, i64 51}
!87 = !{!"MaskSplinePoint", !88, i64 0, !50, i64 72, !50, i64 76, !36, i64 80, !84, i64 88}
!88 = !{!"BezTriple", !37, i64 0, !53, i64 36, !53, i64 40, !53, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !53, i64 56, !53, i64 60, !53, i64 64, !37, i64 68}
!89 = !{!87, !37, i64 52}
!90 = !{!87, !37, i64 53}
!91 = !{!53, !53, i64 0}
!92 = distinct !{!92, !72, !73}
!93 = distinct !{!93, !72, !73}
!94 = distinct !{!94, !72, !73}
!95 = !{!35, !36, i64 88}
!96 = !{!97, !36, i64 112}
!97 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!98 = !{!79, !36, i64 0}
!99 = !{!79, !37, i64 32}
!100 = distinct !{!100, !72, !73}
!101 = !{!79, !50, i64 28}
!102 = distinct !{!102, !72, !73}
!103 = !{!39, !36, i64 0}
!104 = distinct !{!104, !72, !73}
!105 = !{i64 0, i64 32, !106}
!106 = !{!37, !37, i64 0}
!107 = distinct !{!107, !72, !73}
!108 = distinct !{!108, !72, !73}
!109 = distinct !{!109, !72, !73}
!110 = distinct !{!110, !72, !73}
!111 = distinct !{!111, !72, !73}
!112 = distinct !{!112, !72, !73}
