; ModuleID = 'blender/source/blender/editors/physics/dynamicpaint_ops.c'
source_filename = "blender/source/blender/editors/physics/dynamicpaint_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.DynamicPaintModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.DynamicPaintCanvasSettings = type { ptr, ptr, %struct.ListBase, i16, i16, i32, [64 x i8] }
%struct.DynamicPaintSurface = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, i32, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x float], ptr, [64 x i8], i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [64 x i8], [1024 x i8], [64 x i8], [64 x i8] }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
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

@.str = private unnamed_addr constant [17 x i8] c"Add Surface Slot\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"DPAINT_OT_surface_slot_add\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Add a new Dynamic Paint surface slot\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Remove Surface Slot\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"DPAINT_OT_surface_slot_remove\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Remove the selected surface slot\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Toggle Type Active\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"DPAINT_OT_type_toggle\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Toggle whether given type is active or not\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@prop_dynamicpaint_type_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DPAINT_OT_output_toggle.prop_output_toggle_types = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.12, i32 0, ptr @.str.13, ptr @.str.11 }, %struct.EnumPropertyItem { i32 1, ptr @.str.14, i32 0, ptr @.str.15, ptr @.str.11 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.12 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"Output A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Output B\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Toggle Output Layer\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"DPAINT_OT_output_toggle\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"Add or remove Dynamic Paint output data layer\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"Output Toggle\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"Dynamic Paint Bake\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"Bake dynamic paint image sequence surface\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"DPAINT_OT_bake\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"Bake failed: no Dynamic Paint modifier found\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"Bake failed: invalid canvas\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.26 = private unnamed_addr constant [20 x i8] c"Bake complete! (%s)\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"Bake failed: %s\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"Baking canceled!\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"No frames to bake\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @DPAINT_OT_surface_slot_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @surface_slot_add_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @surface_slot_add_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #4
  %4 = tail call ptr @modifiers_findByType(ptr noundef %3, i32 noundef 40) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #4
  %12 = tail call ptr @dynamicPaint_createNewSurface(ptr noundef nonnull %8, ptr noundef %11) #4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %8, i64 0, i32 3
  %16 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %12, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !51
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %14, %19
  %20 = phi ptr [ %27, %19 ], [ %17, %14 ]
  %21 = phi i16 [ %25, %19 ], [ 0, %14 ]
  %22 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %20, i64 0, i32 18
  %23 = load i32, ptr %22, align 4, !tbaa !54
  %24 = and i32 %23, -65
  store i32 %24, ptr %22, align 4, !tbaa !54
  %25 = add i16 %21, 1
  %26 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %20, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %19, !llvm.loop !55

29:                                               ; preds = %19, %14
  %30 = phi i16 [ 0, %14 ], [ %25, %19 ]
  store i16 %30, ptr %15, align 8, !tbaa !58
  br label %31

31:                                               ; preds = %29, %10, %2, %6
  %32 = phi i32 [ 2, %6 ], [ 2, %2 ], [ 2, %10 ], [ 4, %29 ]
  ret i32 %32
}

declare i32 @ED_operator_object_active_editable(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @DPAINT_OT_surface_slot_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @surface_slot_remove_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @surface_slot_remove_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #4
  %4 = tail call ptr @modifiers_findByType(ptr noundef %3, i32 noundef 40) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %8, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !58
  %17 = sext i16 %16 to i32
  br label %22

18:                                               ; preds = %22
  %19 = add nuw nsw i32 %24, 1
  %20 = load ptr, ptr %23, align 8, !tbaa !60
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22, !llvm.loop !61

22:                                               ; preds = %14, %18
  %23 = phi ptr [ %12, %14 ], [ %20, %18 ]
  %24 = phi i32 [ 0, %14 ], [ %19, %18 ]
  %25 = icmp eq i32 %24, %17
  br i1 %25, label %26, label %18

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %8, i64 0, i32 3
  %28 = add i16 %16, -1
  store i16 %28, ptr %27, align 8, !tbaa !58
  tail call void @dynamicPaint_freeSurface(ptr noundef nonnull %23) #4
  br label %29

29:                                               ; preds = %18, %10, %26
  tail call void @dynamicPaint_resetPreview(ptr noundef nonnull %8) #4
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #4
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %3) #4
  br label %30

30:                                               ; preds = %2, %6, %29
  %31 = phi i32 [ 4, %29 ], [ 2, %6 ], [ 2, %2 ]
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define dso_local void @DPAINT_OT_type_toggle(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @type_toggle_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.9, ptr noundef nonnull @prop_dynamicpaint_type_items, i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #4
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @type_toggle_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #4
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #4
  %5 = tail call ptr @modifiers_findByType(ptr noundef %3, i32 noundef 40) #4
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.9) #4
  %9 = icmp eq ptr %5, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %2
  switch i32 %8, label %23 [
    i32 1, label %11
    i32 2, label %18
  ]

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @dynamicPaint_freeCanvas(ptr noundef nonnull %5) #4
  br label %26

16:                                               ; preds = %11
  %17 = icmp eq i32 %8, 2
  br i1 %17, label %18, label %23

18:                                               ; preds = %10, %16
  %19 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %5, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !66
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @dynamicPaint_freeBrush(ptr noundef nonnull %5) #4
  br label %26

23:                                               ; preds = %10, %18, %16
  %24 = tail call zeroext i8 @dynamicPaint_createType(ptr noundef nonnull %5, i32 noundef %8, ptr noundef %4) #4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22, %23, %15
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #4
  %27 = tail call ptr @CTX_data_main(ptr noundef %0) #4
  tail call void @DAG_relations_tag_update(ptr noundef %27) #4
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %3) #4
  br label %28

28:                                               ; preds = %23, %2, %26
  %29 = phi i32 [ 4, %26 ], [ 2, %2 ], [ 2, %23 ]
  ret i32 %29
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @DPAINT_OT_output_toggle(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.16, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @output_toggle_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.19, ptr noundef nonnull @DPAINT_OT_output_toggle.prop_output_toggle_types, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.11) #4
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !63
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @output_toggle_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #4
  %4 = tail call ptr @modifiers_findByType(ptr noundef %3, i32 noundef 40) #4
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.19) #4
  %8 = icmp eq ptr %4, null
  br i1 %8, label %42, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @get_activeSurface(ptr noundef nonnull %11) #4
  %15 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %14, i64 0, i32 10
  %16 = load i16, ptr %15, align 4, !tbaa !67
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %18, label %42

18:                                               ; preds = %13
  %19 = tail call zeroext i8 @dynamicPaint_outputLayerExists(ptr noundef %14, ptr noundef %3, i32 noundef %7) #4
  %20 = icmp eq i32 %7, 0
  %21 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %14, i64 0, i32 48
  %22 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %14, i64 0, i32 49
  %23 = select i1 %20, ptr %21, ptr %22
  %24 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %14, i64 0, i32 11
  %25 = load i16, ptr %24, align 2, !tbaa !68
  switch i16 %25, label %42 [
    i16 0, label %26
    i16 2, label %34
  ]

26:                                               ; preds = %18
  %27 = icmp eq i8 %19, 0
  %28 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %29 = load ptr, ptr %28, align 8, !tbaa !69
  br i1 %27, label %30, label %32

30:                                               ; preds = %26
  %31 = tail call i32 @ED_mesh_color_add(ptr noundef %29, ptr noundef nonnull %23, i8 noundef zeroext 1) #4
  br label %42

32:                                               ; preds = %26
  %33 = tail call zeroext i8 @ED_mesh_color_remove_named(ptr noundef %29, ptr noundef nonnull %23) #4
  br label %42

34:                                               ; preds = %18
  %35 = icmp eq i8 %19, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = tail call ptr @ED_vgroup_add_name(ptr noundef %3, ptr noundef nonnull %23) #4
  br label %42

38:                                               ; preds = %34
  %39 = tail call ptr @defgroup_find_name(ptr noundef %3, ptr noundef nonnull %23) #4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @ED_vgroup_delete(ptr noundef %3, ptr noundef nonnull %39) #4
  br label %42

42:                                               ; preds = %13, %38, %41, %18, %36, %30, %32, %2, %9
  %43 = phi i32 [ 2, %9 ], [ 2, %2 ], [ 4, %32 ], [ 4, %30 ], [ 4, %36 ], [ 4, %18 ], [ 4, %41 ], [ 4, %38 ], [ 4, %13 ]
  ret i32 %43
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @DPAINT_OT_bake(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @dynamicpaint_bake_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable, ptr %5, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @dynamicpaint_bake_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [30 x i8], align 16
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #4
  %6 = tail call ptr @ED_object_context(ptr noundef %0) #4
  %7 = tail call double @PIL_check_seconds_timer() #4
  %8 = tail call ptr @modifiers_findByType(ptr noundef %6, i32 noundef 40) #4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !74
  tail call void @BKE_report(ptr noundef %12, i32 noundef 32, ptr noundef nonnull @.str.24) #4
  br label %116

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %8, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !74
  tail call void @BKE_report(ptr noundef %19, i32 noundef 32, ptr noundef nonnull @.str.25) #4
  br label %116

20:                                               ; preds = %13
  %21 = tail call ptr @get_activeSurface(ptr noundef nonnull %15) #4
  %22 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %15, i64 0, i32 6
  store i8 0, ptr %22, align 8, !tbaa !75
  %23 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %15, i64 0, i32 4
  %24 = load i16, ptr %23, align 2, !tbaa !76
  %25 = or i16 %24, 2
  store i16 %25, ptr %23, align 2, !tbaa !76
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !77
  %26 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !79
  %28 = tail call ptr @CTX_data_scene(ptr noundef %0) #4
  %29 = tail call ptr @CTX_wm_window(ptr noundef %0) #4
  %30 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %21, i64 0, i32 23
  %31 = load i32, ptr %30, align 8, !tbaa !80
  %32 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %21, i64 0, i32 22
  %33 = load i32, ptr %32, align 4, !tbaa !81
  %34 = sub nsw i32 %31, %33
  %35 = add nsw i32 %34, 1
  %36 = icmp slt i32 %34, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %20
  %38 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %27, i64 0, i32 6
  %39 = tail call ptr @BLI_strncpy(ptr noundef nonnull %38, ptr noundef nonnull @.str.29, i64 noundef 64) #4
  br label %95

40:                                               ; preds = %20
  %41 = getelementptr inbounds %struct.Scene, ptr %28, i64 0, i32 22, i32 5
  store i32 %33, ptr %41, align 8, !tbaa !82
  %42 = tail call ptr @CTX_data_main(ptr noundef %0) #4
  tail call void @ED_update_for_newframe(ptr noundef %42, ptr noundef %28, i32 noundef 1) #4
  %43 = tail call i32 @dynamicPaint_createUVSurface(ptr noundef %28, ptr noundef %21) #4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %95, label %45

45:                                               ; preds = %40
  %46 = load i32, ptr %32, align 4, !tbaa !81
  %47 = load i32, ptr %30, align 8, !tbaa !80
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %95, label %49

49:                                               ; preds = %45
  %50 = sitofp i32 %35 to float
  %51 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %21, i64 0, i32 8
  %52 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %21, i64 0, i32 18
  %53 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %21, i64 0, i32 47
  %54 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %21, i64 0, i32 48
  %55 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %21, i64 0, i32 11
  %56 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %21, i64 0, i32 47
  %57 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %21, i64 0, i32 49
  br label %58

58:                                               ; preds = %49, %91
  %59 = phi i32 [ %46, %49 ], [ %92, %91 ]
  %60 = load i32, ptr %32, align 4, !tbaa !81
  %61 = sub nsw i32 %59, %60
  %62 = sitofp i32 %61 to float
  %63 = fdiv float %62, %50
  %64 = fmul float %63, 1.000000e+02
  store i32 %59, ptr %51, align 8, !tbaa !101
  %65 = call i32 @blender_test_break() #4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %95

67:                                               ; preds = %58
  %68 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !102
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = fptosi float %64 to i32
  call void @WM_cursor_time(ptr noundef %29, i32 noundef %71) #4
  br label %72

72:                                               ; preds = %70, %67
  store i32 %59, ptr %41, align 8, !tbaa !82
  %73 = call ptr @CTX_data_main(ptr noundef %0) #4
  call void @ED_update_for_newframe(ptr noundef %73, ptr noundef %28, i32 noundef 1) #4
  %74 = call i32 @dynamicPaint_calculateFrame(ptr noundef %21, ptr noundef %28, ptr noundef %6, i32 noundef %59) #4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %95, label %76

76:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #4
  %77 = load i32, ptr %52, align 4, !tbaa !54
  %78 = and i32 %77, 1024
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  call void @BLI_join_dirfile(ptr noundef nonnull %3, i64 noundef 1024, ptr noundef nonnull %53, ptr noundef nonnull %54) #4
  %81 = call zeroext i8 @BLI_path_frame(ptr noundef nonnull %3, i32 noundef %59, i32 noundef 4) #4
  call void @dynamicPaint_outputSurfaceImage(ptr noundef %21, ptr noundef nonnull %3, i16 noundef signext 0) #4
  br label %82

82:                                               ; preds = %80, %76
  %83 = load i32, ptr %52, align 4, !tbaa !54
  %84 = and i32 %83, 2048
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %82
  %87 = load i16, ptr %55, align 2, !tbaa !68
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  call void @BLI_join_dirfile(ptr noundef nonnull %3, i64 noundef 1024, ptr noundef nonnull %56, ptr noundef nonnull %57) #4
  %90 = call zeroext i8 @BLI_path_frame(ptr noundef nonnull %3, i32 noundef %59, i32 noundef 4) #4
  call void @dynamicPaint_outputSurfaceImage(ptr noundef %21, ptr noundef nonnull %3, i16 noundef signext 1) #4
  br label %91

91:                                               ; preds = %89, %86, %82
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #4
  %92 = add nsw i32 %59, 1
  %93 = load i32, ptr %30, align 8, !tbaa !80
  %94 = icmp slt i32 %59, %93
  br i1 %94, label %58, label %95, !llvm.loop !103

95:                                               ; preds = %91, %58, %72, %45, %40, %37
  %96 = phi i1 [ true, %37 ], [ true, %40 ], [ false, %45 ], [ true, %72 ], [ true, %58 ], [ false, %91 ]
  %97 = phi i32 [ 0, %37 ], [ 0, %40 ], [ 1, %45 ], [ 0, %72 ], [ 0, %58 ], [ 1, %91 ]
  %98 = load i16, ptr %23, align 2, !tbaa !76
  %99 = and i16 %98, -3
  store i16 %99, ptr %23, align 2, !tbaa !76
  %100 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !102
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  call void @WM_cursor_modal_restore(ptr noundef %5) #4
  br label %103

103:                                              ; preds = %102, %95
  call void @dynamicPaint_freeSurfaceData(ptr noundef %21) #4
  br i1 %96, label %109, label %104

104:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %4) #4
  %105 = call double @PIL_check_seconds_timer() #4
  %106 = fsub double %105, %7
  call void @BLI_timestr(double noundef %106, ptr noundef nonnull %4, i64 noundef 30) #4
  %107 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %108 = load ptr, ptr %107, align 8, !tbaa !74
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %108, i32 noundef 2, ptr noundef nonnull @.str.26, ptr noundef nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %4) #4
  br label %116

109:                                              ; preds = %103
  %110 = load i8, ptr %22, align 1
  %111 = icmp eq i8 %110, 0
  %112 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %113 = load ptr, ptr %112, align 8, !tbaa !74
  br i1 %111, label %115, label %114

114:                                              ; preds = %109
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %113, i32 noundef 32, ptr noundef nonnull @.str.27, ptr noundef nonnull %22) #4
  br label %116

115:                                              ; preds = %109
  call void @BKE_report(ptr noundef %113, i32 noundef 16, ptr noundef nonnull @.str.28) #4
  br label %116

116:                                              ; preds = %10, %17, %104, %114, %115
  %117 = phi i32 [ 0, %17 ], [ 0, %10 ], [ %97, %114 ], [ %97, %115 ], [ %97, %104 ]
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %118, i32 2, i32 4
  ret i32 %119
}

declare ptr @ED_object_context(ptr noundef) local_unnamed_addr #2

declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @dynamicPaint_createNewSurface(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @dynamicPaint_freeSurface(ptr noundef) local_unnamed_addr #2

declare void @dynamicPaint_resetPreview(ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dynamicPaint_freeCanvas(ptr noundef) local_unnamed_addr #2

declare void @dynamicPaint_freeBrush(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @dynamicPaint_createType(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare ptr @get_activeSurface(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @dynamicPaint_outputLayerExists(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ED_mesh_color_add(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @ED_mesh_color_remove_named(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_vgroup_add_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @defgroup_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_vgroup_delete(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare double @PIL_check_seconds_timer() local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #2

declare void @dynamicPaint_freeSurfaceData(ptr noundef) local_unnamed_addr #2

declare void @BLI_timestr(double noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @ED_update_for_newframe(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @dynamicPaint_createUVSurface(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @blender_test_break() local_unnamed_addr #2

declare void @WM_cursor_time(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @dynamicPaint_calculateFrame(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_path_frame(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @dynamicPaint_outputSurfaceImage(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

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
!42 = !{!35, !36, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!48, !36, i64 112}
!48 = !{!"DynamicPaintModifierData", !49, i64 0, !36, i64 112, !36, i64 120, !50, i64 128, !50, i64 132}
!49 = !{!"ModifierData", !36, i64 0, !36, i64 8, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!50 = !{!"int", !37, i64 0}
!51 = !{!52, !36, i64 8}
!52 = !{!"DynamicPaintSurface", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !39, i64 56, !50, i64 72, !37, i64 76, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !50, i64 156, !50, i64 160, !50, i64 164, !50, i64 168, !50, i64 172, !50, i64 176, !50, i64 180, !37, i64 184, !36, i64 200, !37, i64 208, !50, i64 272, !50, i64 276, !53, i64 280, !53, i64 284, !53, i64 288, !53, i64 292, !53, i64 296, !53, i64 300, !53, i64 304, !53, i64 308, !53, i64 312, !53, i64 316, !53, i64 320, !53, i64 324, !53, i64 328, !53, i64 332, !53, i64 336, !50, i64 340, !37, i64 344, !37, i64 408, !37, i64 1432, !37, i64 1496}
!53 = !{!"float", !37, i64 0}
!54 = !{!52, !50, i64 156}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!59, !41, i64 32}
!59 = !{!"DynamicPaintCanvasSettings", !36, i64 0, !36, i64 8, !39, i64 16, !41, i64 32, !41, i64 34, !50, i64 36, !37, i64 40}
!60 = !{!36, !36, i64 0}
!61 = distinct !{!61, !56, !57}
!62 = !{!35, !36, i64 88}
!63 = !{!35, !36, i64 104}
!64 = !{!65, !36, i64 112}
!65 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!66 = !{!48, !36, i64 120}
!67 = !{!52, !41, i64 140}
!68 = !{!52, !41, i64 142}
!69 = !{!70, !36, i64 296}
!70 = !{!"Object", !71, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !50, i64 140, !50, i64 144, !50, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !72, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !50, i64 432, !50, i64 436, !36, i64 440, !36, i64 448, !50, i64 456, !50, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !53, i64 616, !53, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !50, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !50, i64 968, !50, i64 972, !50, i64 976, !50, i64 980, !50, i64 984, !53, i64 988, !53, i64 992, !53, i64 996, !53, i64 1000, !53, i64 1004, !53, i64 1008, !53, i64 1012, !53, i64 1016, !53, i64 1020, !53, i64 1024, !53, i64 1028, !53, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !53, i64 1048, !53, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !53, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !50, i64 1144, !50, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !53, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !73, i64 1304, !73, i64 1312, !50, i64 1320, !50, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!71 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !50, i64 100, !50, i64 104, !50, i64 108, !36, i64 112}
!72 = !{!"bAnimVizSettings", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !50, i64 32, !50, i64 36, !50, i64 40, !50, i64 44}
!73 = !{!"long", !37, i64 0}
!74 = !{!65, !36, i64 120}
!75 = !{!37, !37, i64 0}
!76 = !{!59, !41, i64 34}
!77 = !{!78, !37, i64 2080}
!78 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !50, i64 2096, !50, i64 2100, !37, i64 2104, !50, i64 2108, !50, i64 2112, !37, i64 2116}
!79 = !{!52, !36, i64 16}
!80 = !{!52, !50, i64 176}
!81 = !{!52, !50, i64 172}
!82 = !{!83, !50, i64 680}
!83 = !{!"Scene", !71, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !50, i64 232, !50, i64 236, !50, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !84, i64 280, !93, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !50, i64 4380, !39, i64 4384, !94, i64 4400, !95, i64 4416, !98, i64 4600, !36, i64 4608, !99, i64 4616, !36, i64 4640, !73, i64 4648, !73, i64 4656, !86, i64 4664, !87, i64 4824, !100, i64 4888, !36, i64 4952}
!84 = !{!"RenderData", !85, i64 0, !36, i64 248, !36, i64 256, !88, i64 264, !89, i64 328, !50, i64 400, !50, i64 404, !50, i64 408, !53, i64 412, !50, i64 416, !50, i64 420, !50, i64 424, !50, i64 428, !41, i64 432, !41, i64 434, !53, i64 436, !53, i64 440, !53, i64 444, !53, i64 448, !53, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !50, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !50, i64 484, !50, i64 488, !41, i64 492, !41, i64 494, !50, i64 496, !50, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !50, i64 516, !50, i64 520, !50, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !90, i64 544, !90, i64 560, !91, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !53, i64 612, !53, i64 616, !53, i64 620, !53, i64 624, !50, i64 628, !53, i64 632, !53, i64 636, !53, i64 640, !53, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !53, i64 660, !53, i64 664, !41, i64 668, !41, i64 670, !53, i64 672, !53, i64 676, !37, i64 680, !50, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !50, i64 2520, !41, i64 2524, !41, i64 2526, !53, i64 2528, !53, i64 2532, !41, i64 2536, !41, i64 2538, !53, i64 2540, !41, i64 2544, !41, i64 2546, !50, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !53, i64 2560, !53, i64 2564, !36, i64 2568, !50, i64 2576, !53, i64 2580, !37, i64 2584, !92, i64 2616, !50, i64 3976, !50, i64 3980}
!85 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !53, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !86, i64 24, !87, i64 184}
!86 = !{!"ColorManagedViewSettings", !50, i64 0, !50, i64 4, !37, i64 8, !37, i64 72, !53, i64 136, !53, i64 140, !36, i64 144, !36, i64 152}
!87 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!88 = !{!"QuicktimeCodecSettings", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !50, i64 32, !50, i64 36, !50, i64 40, !50, i64 44, !41, i64 48, !41, i64 50, !50, i64 52, !50, i64 56, !50, i64 60}
!89 = !{!"FFMpegCodecData", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !53, i64 32, !50, i64 36, !50, i64 40, !50, i64 44, !50, i64 48, !50, i64 52, !50, i64 56, !50, i64 60, !36, i64 64}
!90 = !{!"rctf", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!91 = !{!"rcti", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!92 = !{!"BakeData", !85, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !53, i64 1280, !53, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!93 = !{!"AudioData", !50, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !50, i64 16, !41, i64 20, !41, i64 22, !53, i64 24, !53, i64 28}
!94 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!95 = !{!"GameData", !94, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !96, i64 40, !41, i64 64, !41, i64 66, !53, i64 68, !97, i64 72, !53, i64 128, !53, i64 132, !50, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !53, i64 164, !53, i64 168, !53, i64 172, !53, i64 176, !53, i64 180}
!96 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !53, i64 8, !53, i64 12, !36, i64 16}
!97 = !{!"RecastData", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !50, i64 40, !53, i64 44, !53, i64 48, !41, i64 52, !41, i64 54}
!98 = !{!"UnitSettings", !53, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!99 = !{!"PhysicsSettings", !37, i64 0, !50, i64 12, !50, i64 16, !50, i64 20}
!100 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!101 = !{!52, !50, i64 72}
!102 = !{!78, !37, i64 2081}
!103 = distinct !{!103, !56, !57}
