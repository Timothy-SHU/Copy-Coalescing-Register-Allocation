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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mask_shape_key_insert_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !47 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !48
  %6 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #6
  %7 = getelementptr inbounds %struct.Mask, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !71
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
  %18 = load ptr, ptr %14, align 8, !tbaa !71
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %13, !llvm.loop !72

20:                                               ; preds = %13
  %21 = tail call ptr @BKE_mask_layer_shape_verify_frame(ptr noundef nonnull %14, i32 noundef %5) #6
  tail call void @BKE_mask_layer_shape_from_mask(ptr noundef nonnull %14, ptr noundef %21) #6
  %22 = load ptr, ptr %14, align 8, !tbaa !71
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %10, !llvm.loop !72

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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mask_shape_key_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !74 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !48
  %6 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #6
  %7 = getelementptr inbounds %struct.Mask, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !71
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
  %21 = load ptr, ptr %14, align 8, !tbaa !71
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %13, !llvm.loop !75

23:                                               ; preds = %17
  tail call void @BKE_mask_layer_shape_unlink(ptr noundef nonnull %14, ptr noundef nonnull %18) #6
  %24 = load ptr, ptr %14, align 8, !tbaa !71
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %10, !llvm.loop !75

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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mask_shape_key_feather_reset_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !76 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !48
  %6 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #6
  %7 = getelementptr inbounds %struct.Mask, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = icmp eq ptr %8, null
  br i1 %9, label %94, label %10

10:                                               ; preds = %2, %87
  %11 = phi ptr [ %89, %87 ], [ %8, %2 ]
  %12 = phi i8 [ %88, %87 ], [ 0, %2 ]
  %13 = getelementptr inbounds %struct.MaskLayer, ptr %11, i64 0, i32 13
  %14 = load i8, ptr %13, align 1, !tbaa !77
  %15 = and i8 %14, 3
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %87

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.MaskLayer, ptr %11, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !79
  %20 = icmp eq ptr %19, null
  br i1 %20, label %87, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @BKE_mask_layer_shape_alloc(ptr noundef nonnull %11, i32 noundef %5) #6
  tail call void @BKE_mask_layer_shape_from_mask(ptr noundef nonnull %11, ptr noundef %22) #6
  %23 = load ptr, ptr %18, align 8, !tbaa !71
  %24 = icmp eq ptr %23, null
  br i1 %24, label %85, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.MaskLayerShape, ptr %22, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !80
  %28 = getelementptr inbounds %struct.MaskLayerShape, ptr %22, i64 0, i32 2
  %29 = getelementptr inbounds %struct.MaskLayer, ptr %11, i64 0, i32 3
  br label %30

30:                                               ; preds = %25, %82
  %31 = phi ptr [ %23, %25 ], [ %83, %82 ]
  %32 = getelementptr inbounds %struct.MaskLayerShape, ptr %31, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !80
  %34 = icmp eq i32 %27, %33
  br i1 %34, label %35, label %82

35:                                               ; preds = %30
  %36 = load ptr, ptr %29, align 8, !tbaa !71
  %37 = icmp eq ptr %36, null
  br i1 %37, label %82, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.MaskLayerShape, ptr %31, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !82
  %41 = load ptr, ptr %28, align 8, !tbaa !82
  br label %47

42:                                               ; preds = %77, %47
  %43 = phi ptr [ %50, %47 ], [ %78, %77 ]
  %44 = phi ptr [ %49, %47 ], [ %79, %77 ]
  %45 = load ptr, ptr %48, align 8, !tbaa !71
  %46 = icmp eq ptr %45, null
  br i1 %46, label %82, label %47, !llvm.loop !83

47:                                               ; preds = %38, %42
  %48 = phi ptr [ %45, %42 ], [ %36, %38 ]
  %49 = phi ptr [ %44, %42 ], [ %40, %38 ]
  %50 = phi ptr [ %43, %42 ], [ %41, %38 ]
  %51 = getelementptr inbounds %struct.MaskSpline, ptr %48, i64 0, i32 5
  %52 = load i32, ptr %51, align 4, !tbaa !84
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %42

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.MaskSpline, ptr %48, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !87
  %57 = zext nneg i32 %52 to i64
  br label %58

58:                                               ; preds = %54, %77
  %59 = phi i64 [ 0, %54 ], [ %80, %77 ]
  %60 = phi ptr [ %49, %54 ], [ %79, %77 ]
  %61 = phi ptr [ %50, %54 ], [ %78, %77 ]
  %62 = getelementptr inbounds %struct.MaskSplinePoint, ptr %56, i64 %59
  %63 = getelementptr inbounds %struct.BezTriple, ptr %62, i64 0, i32 7
  %64 = load i8, ptr %63, align 1, !tbaa !88
  %65 = getelementptr inbounds %struct.BezTriple, ptr %62, i64 0, i32 8
  %66 = load i8, ptr %65, align 4, !tbaa !91
  %67 = or i8 %66, %64
  %68 = getelementptr inbounds %struct.BezTriple, ptr %62, i64 0, i32 9
  %69 = load i8, ptr %68, align 1, !tbaa !92
  %70 = or i8 %67, %69
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %58
  %74 = getelementptr inbounds [8 x float], ptr %61, i64 0, i64 6
  %75 = load float, ptr %74, align 4, !tbaa !93
  %76 = getelementptr inbounds [8 x float], ptr %60, i64 0, i64 6
  store float %75, ptr %76, align 4, !tbaa !93
  br label %77

77:                                               ; preds = %73, %58
  %78 = getelementptr inbounds %struct.MaskLayerShapeElem, ptr %61, i64 1
  %79 = getelementptr inbounds %struct.MaskLayerShapeElem, ptr %60, i64 1
  %80 = add nuw nsw i64 %59, 1
  %81 = icmp eq i64 %80, %57
  br i1 %81, label %42, label %58, !llvm.loop !94

82:                                               ; preds = %42, %35, %30
  %83 = load ptr, ptr %31, align 8, !tbaa !71
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %30, !llvm.loop !95

85:                                               ; preds = %82, %21
  %86 = phi i8 [ %12, %21 ], [ 1, %82 ]
  tail call void @BKE_mask_layer_shape_free(ptr noundef %22) #6
  br label %87

87:                                               ; preds = %17, %85, %10
  %88 = phi i8 [ %12, %10 ], [ %86, %85 ], [ %12, %17 ]
  %89 = load ptr, ptr %11, align 8, !tbaa !71
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %10, !llvm.loop !96

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
  %8 = load ptr, ptr %7, align 8, !tbaa !97
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.11, i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1) #6
  %10 = load ptr, ptr %7, align 8, !tbaa !97
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.13, i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mask_shape_key_rekey_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !98 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca [8 x float], align 4
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !48
  %8 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #6
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !99
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.13) #6
  %12 = load ptr, ptr %9, align 8, !tbaa !99
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.11) #6
  %14 = getelementptr inbounds %struct.Mask, ptr %8, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !71
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
  %27 = load i8, ptr %26, align 1, !tbaa !77
  %28 = and i8 %27, 3
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %150

30:                                               ; preds = %23
  %31 = call zeroext i8 @ED_mask_layer_select_check(ptr noundef nonnull %24) #6
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %150, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.MaskLayer, ptr %24, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !79
  %36 = icmp eq ptr %35, null
  br i1 %36, label %150, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.MaskLayer, ptr %24, i64 0, i32 3
  br label %39

39:                                               ; preds = %37, %145
  %40 = phi ptr [ null, %37 ], [ %146, %145 ]
  %41 = phi ptr [ %35, %37 ], [ %43, %145 ]
  %42 = phi i8 [ %25, %37 ], [ %147, %145 ]
  %43 = load ptr, ptr %41, align 8, !tbaa !101
  %44 = getelementptr inbounds %struct.MaskLayerShape, ptr %41, i64 0, i32 5
  %45 = load i8, ptr %44, align 8, !tbaa !102
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
  %54 = load i8, ptr %53, align 8, !tbaa !102
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %145

57:                                               ; preds = %52, %48
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %58 = load ptr, ptr %41, align 8, !tbaa !101
  %59 = icmp eq ptr %50, %58
  br i1 %59, label %144, label %63

60:                                               ; preds = %63
  %61 = load ptr, ptr %3, align 8, !tbaa !71
  %62 = icmp eq ptr %61, null
  br i1 %62, label %144, label %69

63:                                               ; preds = %57, %63
  %64 = phi ptr [ %65, %63 ], [ %50, %57 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !101
  call void @BLI_remlink(ptr noundef nonnull %34, ptr noundef nonnull %64) #6
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef nonnull %64) #6
  %66 = icmp ne ptr %65, null
  %67 = icmp ne ptr %65, %58
  %68 = and i1 %66, %67
  br i1 %68, label %63, label %60, !llvm.loop !103

69:                                               ; preds = %60, %69
  %70 = phi ptr [ %80, %69 ], [ %61, %60 ]
  %71 = getelementptr inbounds %struct.MaskLayerShape, ptr %70, i64 0, i32 4
  %72 = load i32, ptr %71, align 4, !tbaa !104
  %73 = sitofp i32 %72 to float
  call void @BKE_mask_layer_evaluate(ptr noundef nonnull %24, float noundef %73, i8 noundef zeroext 1) #6
  %74 = load i32, ptr %71, align 4, !tbaa !104
  %75 = call ptr @BKE_mask_layer_shape_verify_frame(ptr noundef nonnull %24, i32 noundef %74) #6
  call void @BKE_mask_layer_shape_from_mask(ptr noundef nonnull %24, ptr noundef %75) #6
  %76 = getelementptr inbounds %struct.MaskLayerShape, ptr %70, i64 0, i32 5
  %77 = load i8, ptr %76, align 8, !tbaa !102
  %78 = and i8 %77, 1
  %79 = getelementptr inbounds %struct.MaskLayerShape, ptr %75, i64 0, i32 5
  store i8 %78, ptr %79, align 8, !tbaa !102
  %80 = load ptr, ptr %70, align 8, !tbaa !71
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %69, !llvm.loop !105

82:                                               ; preds = %69
  %83 = load ptr, ptr %3, align 8, !tbaa !106
  %84 = icmp eq ptr %83, null
  br i1 %84, label %144, label %85

85:                                               ; preds = %82, %142
  %86 = phi ptr [ %87, %142 ], [ %83, %82 ]
  %87 = load ptr, ptr %86, align 8, !tbaa !101
  %88 = getelementptr inbounds %struct.MaskLayerShape, ptr %86, i64 0, i32 4
  %89 = load i32, ptr %88, align 4, !tbaa !104
  %90 = call ptr @BKE_mask_layer_shape_find_frame(ptr noundef nonnull %24, i32 noundef %89) #6
  %91 = load ptr, ptr %38, align 8, !tbaa !71
  %92 = icmp eq ptr %91, null
  br i1 %92, label %142, label %93

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.MaskLayerShape, ptr %90, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !82
  %96 = getelementptr inbounds %struct.MaskLayerShape, ptr %86, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !82
  br label %103

98:                                               ; preds = %135, %103
  %99 = phi ptr [ %106, %103 ], [ %136, %135 ]
  %100 = phi ptr [ %105, %103 ], [ %137, %135 ]
  %101 = load ptr, ptr %104, align 8, !tbaa !71
  %102 = icmp eq ptr %101, null
  br i1 %102, label %142, label %103, !llvm.loop !107

103:                                              ; preds = %93, %98
  %104 = phi ptr [ %101, %98 ], [ %91, %93 ]
  %105 = phi ptr [ %100, %98 ], [ %95, %93 ]
  %106 = phi ptr [ %99, %98 ], [ %97, %93 ]
  %107 = getelementptr inbounds %struct.MaskSpline, ptr %104, i64 0, i32 5
  %108 = load i32, ptr %107, align 4, !tbaa !84
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %98

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.MaskSpline, ptr %104, i64 0, i32 6
  br label %112

112:                                              ; preds = %110, %135
  %113 = phi i64 [ 0, %110 ], [ %138, %135 ]
  %114 = phi ptr [ %105, %110 ], [ %137, %135 ]
  %115 = phi ptr [ %106, %110 ], [ %136, %135 ]
  %116 = load ptr, ptr %111, align 8, !tbaa !87
  %117 = getelementptr inbounds %struct.MaskSplinePoint, ptr %116, i64 %113
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(32) %115, i64 32, i1 false), !tbaa.struct !108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %115, ptr noundef nonnull align 4 dereferenceable(32) %114, i64 32, i1 false), !tbaa.struct !108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %114, ptr noundef nonnull align 4 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !108
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4)
  %118 = getelementptr inbounds %struct.BezTriple, ptr %117, i64 0, i32 7
  %119 = load i8, ptr %118, align 1, !tbaa !88
  %120 = getelementptr inbounds %struct.BezTriple, ptr %117, i64 0, i32 8
  %121 = load i8, ptr %120, align 4, !tbaa !91
  %122 = or i8 %121, %119
  %123 = getelementptr inbounds %struct.BezTriple, ptr %117, i64 0, i32 9
  %124 = load i8, ptr %123, align 1, !tbaa !92
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
  %133 = load float, ptr %132, align 4, !tbaa !93
  %134 = getelementptr inbounds [8 x float], ptr %114, i64 0, i64 6
  store float %133, ptr %134, align 4, !tbaa !93
  br label %135

135:                                              ; preds = %130, %131, %112
  %136 = getelementptr inbounds %struct.MaskLayerShapeElem, ptr %115, i64 1
  %137 = getelementptr inbounds %struct.MaskLayerShapeElem, ptr %114, i64 1
  %138 = add nuw nsw i64 %113, 1
  %139 = load i32, ptr %107, align 4, !tbaa !84
  %140 = sext i32 %139 to i64
  %141 = icmp slt i64 %138, %140
  br i1 %141, label %112, label %98, !llvm.loop !110

142:                                              ; preds = %98, %85
  call void @BKE_mask_layer_shape_free(ptr noundef nonnull %86) #6
  %143 = icmp eq ptr %87, null
  br i1 %143, label %144, label %85, !llvm.loop !111

144:                                              ; preds = %142, %57, %60, %82
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  br label %145

145:                                              ; preds = %39, %52, %144
  %146 = phi ptr [ null, %144 ], [ %40, %39 ], [ %50, %52 ]
  %147 = phi i8 [ 1, %144 ], [ %42, %39 ], [ %42, %52 ]
  %148 = icmp eq ptr %43, null
  br i1 %148, label %149, label %39, !llvm.loop !112

149:                                              ; preds = %145
  call void @BKE_mask_layer_evaluate(ptr noundef nonnull %24, float noundef %22, i8 noundef zeroext 1) #6
  br label %150

150:                                              ; preds = %33, %149, %30, %23
  %151 = phi i8 [ %25, %23 ], [ %147, %149 ], [ %25, %33 ], [ %25, %30 ]
  %152 = load ptr, ptr %24, align 8, !tbaa !71
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %23, !llvm.loop !113

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
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %2 ]
  tail call void @ED_mask_layer_shape_auto_key(ptr noundef nonnull %7, i32 noundef %1) #8
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6, !llvm.loop !114

10:                                               ; preds = %6, %2
  %11 = phi i8 [ 0, %2 ], [ 1, %6 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ED_mask_layer_shape_auto_key_select(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.Mask, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !71
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
  %14 = load ptr, ptr %7, align 8, !tbaa !71
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %6, !llvm.loop !115

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
!47 = !{!"mask_shapekey.c:mask_shape_key_insert_exec"}
!48 = !{!49, !51, i64 680}
!49 = !{!"Scene", !50, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !51, i64 232, !51, i64 236, !51, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !52, i64 280, !62, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !51, i64 4380, !39, i64 4384, !63, i64 4400, !64, i64 4416, !67, i64 4600, !36, i64 4608, !68, i64 4616, !36, i64 4640, !69, i64 4648, !69, i64 4656, !55, i64 4664, !56, i64 4824, !70, i64 4888, !36, i64 4952}
!50 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !51, i64 100, !51, i64 104, !51, i64 108, !36, i64 112}
!51 = !{!"int", !37, i64 0}
!52 = !{!"RenderData", !53, i64 0, !36, i64 248, !36, i64 256, !57, i64 264, !58, i64 328, !51, i64 400, !51, i64 404, !51, i64 408, !54, i64 412, !51, i64 416, !51, i64 420, !51, i64 424, !51, i64 428, !41, i64 432, !41, i64 434, !54, i64 436, !54, i64 440, !54, i64 444, !54, i64 448, !54, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !51, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !51, i64 484, !51, i64 488, !41, i64 492, !41, i64 494, !51, i64 496, !51, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !51, i64 516, !51, i64 520, !51, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !59, i64 544, !59, i64 560, !60, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !54, i64 612, !54, i64 616, !54, i64 620, !54, i64 624, !51, i64 628, !54, i64 632, !54, i64 636, !54, i64 640, !54, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !54, i64 660, !54, i64 664, !41, i64 668, !41, i64 670, !54, i64 672, !54, i64 676, !37, i64 680, !51, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !51, i64 2520, !41, i64 2524, !41, i64 2526, !54, i64 2528, !54, i64 2532, !41, i64 2536, !41, i64 2538, !54, i64 2540, !41, i64 2544, !41, i64 2546, !51, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !54, i64 2560, !54, i64 2564, !36, i64 2568, !51, i64 2576, !54, i64 2580, !37, i64 2584, !61, i64 2616, !51, i64 3976, !51, i64 3980}
!53 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !54, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !55, i64 24, !56, i64 184}
!54 = !{!"float", !37, i64 0}
!55 = !{!"ColorManagedViewSettings", !51, i64 0, !51, i64 4, !37, i64 8, !37, i64 72, !54, i64 136, !54, i64 140, !36, i64 144, !36, i64 152}
!56 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!57 = !{!"QuicktimeCodecSettings", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !51, i64 32, !51, i64 36, !51, i64 40, !51, i64 44, !41, i64 48, !41, i64 50, !51, i64 52, !51, i64 56, !51, i64 60}
!58 = !{!"FFMpegCodecData", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !54, i64 32, !51, i64 36, !51, i64 40, !51, i64 44, !51, i64 48, !51, i64 52, !51, i64 56, !51, i64 60, !36, i64 64}
!59 = !{!"rctf", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12}
!60 = !{!"rcti", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12}
!61 = !{!"BakeData", !53, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !54, i64 1280, !54, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!62 = !{!"AudioData", !51, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !51, i64 16, !41, i64 20, !41, i64 22, !54, i64 24, !54, i64 28}
!63 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!64 = !{!"GameData", !63, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !65, i64 40, !41, i64 64, !41, i64 66, !54, i64 68, !66, i64 72, !54, i64 128, !54, i64 132, !51, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !54, i64 164, !54, i64 168, !54, i64 172, !54, i64 176, !54, i64 180}
!65 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !54, i64 8, !54, i64 12, !36, i64 16}
!66 = !{!"RecastData", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36, !51, i64 40, !54, i64 44, !54, i64 48, !41, i64 52, !41, i64 54}
!67 = !{!"UnitSettings", !54, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!68 = !{!"PhysicsSettings", !37, i64 0, !51, i64 12, !51, i64 16, !51, i64 20}
!69 = !{!"long", !37, i64 0}
!70 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!71 = !{!36, !36, i64 0}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"mask_shapekey.c:mask_shape_key_clear_exec"}
!75 = distinct !{!75, !73}
!76 = !{!"mask_shapekey.c:mask_shape_key_feather_reset_exec"}
!77 = !{!78, !37, i64 143}
!78 = !{!"MaskLayer", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 80, !39, i64 96, !36, i64 112, !36, i64 120, !54, i64 128, !37, i64 132, !37, i64 133, !37, i64 134, !37, i64 135, !37, i64 142, !37, i64 143}
!79 = !{!78, !36, i64 96}
!80 = !{!81, !51, i64 24}
!81 = !{!"MaskLayerShape", !36, i64 0, !36, i64 8, !36, i64 16, !51, i64 24, !51, i64 28, !37, i64 32, !37, i64 33}
!82 = !{!81, !36, i64 16}
!83 = distinct !{!83, !73}
!84 = !{!85, !51, i64 20}
!85 = !{!"MaskSpline", !36, i64 0, !36, i64 8, !41, i64 16, !37, i64 18, !37, i64 19, !51, i64 20, !36, i64 24, !86, i64 32, !36, i64 216}
!86 = !{!"MaskParent", !51, i64 0, !51, i64 4, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 144, !37, i64 152}
!87 = !{!85, !36, i64 24}
!88 = !{!89, !37, i64 51}
!89 = !{!"MaskSplinePoint", !90, i64 0, !51, i64 72, !51, i64 76, !36, i64 80, !86, i64 88}
!90 = !{!"BezTriple", !37, i64 0, !54, i64 36, !54, i64 40, !54, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !54, i64 56, !54, i64 60, !54, i64 64, !37, i64 68}
!91 = !{!89, !37, i64 52}
!92 = !{!89, !37, i64 53}
!93 = !{!54, !54, i64 0}
!94 = distinct !{!94, !73}
!95 = distinct !{!95, !73}
!96 = distinct !{!96, !73}
!97 = !{!35, !36, i64 88}
!98 = !{!"mask_shapekey.c:mask_shape_key_rekey_exec"}
!99 = !{!100, !36, i64 112}
!100 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!101 = !{!81, !36, i64 0}
!102 = !{!81, !37, i64 32}
!103 = distinct !{!103, !73}
!104 = !{!81, !51, i64 28}
!105 = distinct !{!105, !73}
!106 = !{!39, !36, i64 0}
!107 = distinct !{!107, !73}
!108 = !{i64 0, i64 32, !109}
!109 = !{!37, !37, i64 0}
!110 = distinct !{!110, !73}
!111 = distinct !{!111, !73}
!112 = distinct !{!112, !73}
!113 = distinct !{!113, !73}
!114 = distinct !{!114, !73}
!115 = distinct !{!115, !73}
