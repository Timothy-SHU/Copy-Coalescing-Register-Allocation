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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @surface_slot_add_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !47 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #4
  %4 = tail call ptr @modifiers_findByType(ptr noundef %3, i32 noundef 40) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !48
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
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %14, %19
  %20 = phi ptr [ %27, %19 ], [ %17, %14 ]
  %21 = phi i16 [ %25, %19 ], [ 0, %14 ]
  %22 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %20, i64 0, i32 18
  %23 = load i32, ptr %22, align 4, !tbaa !55
  %24 = and i32 %23, -65
  store i32 %24, ptr %22, align 4, !tbaa !55
  %25 = add i16 %21, 1
  %26 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %20, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !52
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %19, !llvm.loop !56

29:                                               ; preds = %19, %14
  %30 = phi i16 [ 0, %14 ], [ %25, %19 ]
  store i16 %30, ptr %15, align 8, !tbaa !58
  br label %31

31:                                               ; preds = %29, %10, %2, %6
  %32 = phi i32 [ 2, %6 ], [ 2, %2 ], [ 2, %10 ], [ 4, %29 ]
  ret i32 %32
}

; Function Attrs: optsize
declare i32 @ED_operator_object_active_editable(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @surface_slot_remove_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !60 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #4
  %4 = tail call ptr @modifiers_findByType(ptr noundef %3, i32 noundef 40) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !61
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %8, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !58
  %17 = sext i16 %16 to i32
  br label %22

18:                                               ; preds = %22
  %19 = add nuw nsw i32 %24, 1
  %20 = load ptr, ptr %23, align 8, !tbaa !61
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22, !llvm.loop !62

22:                                               ; preds = %14, %18
  %23 = phi ptr [ %12, %14 ], [ %20, %18 ]
  %24 = phi i32 [ 0, %14 ], [ %19, %18 ]
  %25 = icmp eq i32 %24, %17
  br i1 %25, label %26, label %18

26:                                               ; preds = %22
  %27 = add i16 %16, -1
  store i16 %27, ptr %15, align 8, !tbaa !58
  tail call void @dynamicPaint_freeSurface(ptr noundef nonnull %23) #4
  br label %28

28:                                               ; preds = %18, %10, %26
  tail call void @dynamicPaint_resetPreview(ptr noundef nonnull %8) #4
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #4
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %3) #4
  br label %29

29:                                               ; preds = %2, %6, %28
  %30 = phi i32 [ 4, %28 ], [ 2, %6 ], [ 2, %2 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.9, ptr noundef nonnull @prop_dynamicpaint_type_items, i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #4
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @type_toggle_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !65 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #4
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #4
  %5 = tail call ptr @modifiers_findByType(ptr noundef %3, i32 noundef 40) #4
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.9) #4
  %9 = icmp eq ptr %5, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %2
  switch i32 %8, label %21 [
    i32 1, label %11
    i32 2, label %16
  ]

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  tail call void @dynamicPaint_freeCanvas(ptr noundef nonnull %5) #4
  br label %24

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %5, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @dynamicPaint_freeBrush(ptr noundef nonnull %5) #4
  br label %24

21:                                               ; preds = %11, %10, %16
  %22 = tail call zeroext i8 @dynamicPaint_createType(ptr noundef nonnull %5, i32 noundef %8, ptr noundef %4) #4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20, %21, %15
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #4
  %25 = tail call ptr @CTX_data_main(ptr noundef %0) #4
  tail call void @DAG_relations_tag_update(ptr noundef %25) #4
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %3) #4
  br label %26

26:                                               ; preds = %21, %2, %24
  %27 = phi i32 [ 4, %24 ], [ 2, %2 ], [ 2, %21 ]
  ret i32 %27
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
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
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.19, ptr noundef nonnull @DPAINT_OT_output_toggle.prop_output_toggle_types, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.11) #4
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !64
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @output_toggle_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !69 {
  %3 = tail call ptr @ED_object_context(ptr noundef %0) #4
  %4 = tail call ptr @modifiers_findByType(ptr noundef %3, i32 noundef 40) #4
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.19) #4
  %8 = icmp eq ptr %4, null
  br i1 %8, label %42, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @get_activeSurface(ptr noundef nonnull %11) #4
  %15 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %14, i64 0, i32 10
  %16 = load i16, ptr %15, align 4, !tbaa !70
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %18, label %42

18:                                               ; preds = %13
  %19 = tail call zeroext i8 @dynamicPaint_outputLayerExists(ptr noundef nonnull %14, ptr noundef %3, i32 noundef %7) #4
  %20 = icmp eq i32 %7, 0
  %21 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %14, i64 0, i32 48
  %22 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %14, i64 0, i32 49
  %23 = select i1 %20, ptr %21, ptr %22
  %24 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %14, i64 0, i32 11
  %25 = load i16, ptr %24, align 2, !tbaa !71
  switch i16 %25, label %42 [
    i16 0, label %26
    i16 2, label %34
  ]

26:                                               ; preds = %18
  %27 = icmp eq i8 %19, 0
  %28 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %29 = load ptr, ptr %28, align 8, !tbaa !72
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @dynamicpaint_bake_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !77 {
  %3 = tail call fastcc i32 @dynamicPaint_initBake(ptr noundef %0, ptr noundef %1) #5
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 2, i32 4
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @ED_object_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @dynamicPaint_createNewSurface(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dynamicPaint_freeSurface(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dynamicPaint_resetPreview(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dynamicPaint_freeCanvas(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dynamicPaint_freeBrush(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @dynamicPaint_createType(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_activeSurface(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @dynamicPaint_outputLayerExists(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_mesh_color_add(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_mesh_color_remove_named(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_vgroup_add_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @defgroup_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_vgroup_delete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @dynamicPaint_initBake(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !78 {
  %3 = alloca [30 x i8], align 16
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #4
  %5 = tail call ptr @ED_object_context(ptr noundef %0) #4
  %6 = tail call double @PIL_check_seconds_timer() #4
  %7 = tail call ptr @modifiers_findByType(ptr noundef %5, i32 noundef 40) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  tail call void @BKE_report(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str.24) #4
  br label %45

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !79
  tail call void @BKE_report(ptr noundef %18, i32 noundef 32, ptr noundef nonnull @.str.25) #4
  br label %45

19:                                               ; preds = %12
  %20 = tail call ptr @get_activeSurface(ptr noundef nonnull %14) #4
  %21 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %14, i64 0, i32 6
  store i8 0, ptr %21, align 8, !tbaa !80
  %22 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %14, i64 0, i32 4
  %23 = load i16, ptr %22, align 2, !tbaa !81
  %24 = or i16 %23, 2
  store i16 %24, ptr %22, align 2, !tbaa !81
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !82
  %25 = tail call fastcc i32 @dynamicPaint_bakeImageSequence(ptr noundef %0, ptr noundef %20, ptr noundef %5) #5
  %26 = load i16, ptr %22, align 2, !tbaa !81
  %27 = and i16 %26, -3
  store i16 %27, ptr %22, align 2, !tbaa !81
  %28 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !84
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  tail call void @WM_cursor_modal_restore(ptr noundef %4) #4
  br label %31

31:                                               ; preds = %30, %19
  tail call void @dynamicPaint_freeSurfaceData(ptr noundef %20) #4
  %32 = icmp eq i32 %25, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %3) #6
  %34 = tail call double @PIL_check_seconds_timer() #4
  %35 = fsub double %34, %6
  call void @BLI_timestr(double noundef %35, ptr noundef nonnull %3, i64 noundef 30) #4
  %36 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !79
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %37, i32 noundef 2, ptr noundef nonnull @.str.26, ptr noundef nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %3) #6
  br label %45

38:                                               ; preds = %31
  %39 = load i8, ptr %21, align 1
  %40 = icmp eq i8 %39, 0
  %41 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !79
  br i1 %40, label %44, label %43

43:                                               ; preds = %38
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %42, i32 noundef 32, ptr noundef nonnull @.str.27, ptr noundef nonnull %21) #4
  br label %45

44:                                               ; preds = %38
  tail call void @BKE_report(ptr noundef %42, i32 noundef 16, ptr noundef nonnull @.str.28) #4
  br label %45

45:                                               ; preds = %33, %44, %43, %16, %9
  %46 = phi i32 [ 0, %16 ], [ 0, %9 ], [ 0, %43 ], [ 0, %44 ], [ %25, %33 ]
  ret i32 %46
}

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @dynamicPaint_bakeImageSequence(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !PGOFuncName !85 {
  %4 = alloca [1024 x i8], align 16
  %5 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #4
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #4
  %9 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 23
  %10 = load i32, ptr %9, align 8, !tbaa !87
  %11 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 22
  %12 = load i32, ptr %11, align 4, !tbaa !88
  %13 = sub nsw i32 %10, %12
  %14 = add nsw i32 %13, 1
  %15 = icmp slt i32 %13, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %6, i64 0, i32 6
  %18 = tail call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull @.str.29, i64 noundef 64) #4
  br label %74

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  store i32 %12, ptr %20, align 8, !tbaa !89
  %21 = tail call ptr @CTX_data_main(ptr noundef %0) #4
  tail call void @ED_update_for_newframe(ptr noundef %21, ptr noundef %7, i32 noundef 1) #4
  %22 = tail call i32 @dynamicPaint_createUVSurface(ptr noundef %7, ptr noundef nonnull %1) #4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %74, label %24

24:                                               ; preds = %19
  %25 = load i32, ptr %11, align 4, !tbaa !88
  %26 = load i32, ptr %9, align 8, !tbaa !87
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %74, label %28

28:                                               ; preds = %24
  %29 = sitofp i32 %14 to float
  %30 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 8
  %31 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 18
  %32 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 47
  %33 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 48
  %34 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 11
  %35 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %1, i64 0, i32 49
  br label %36

36:                                               ; preds = %28, %70
  %37 = phi i32 [ %25, %28 ], [ %71, %70 ]
  %38 = load i32, ptr %11, align 4, !tbaa !88
  %39 = sub nsw i32 %37, %38
  %40 = sitofp i32 %39 to float
  %41 = fdiv float %40, %29
  %42 = fmul float %41, 1.000000e+02
  store i32 %37, ptr %30, align 8, !tbaa !108
  %43 = call i32 @blender_test_break() #4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %74

45:                                               ; preds = %36
  %46 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !84
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = fptosi float %42 to i32
  call void @WM_cursor_time(ptr noundef %8, i32 noundef %49) #4
  br label %50

50:                                               ; preds = %48, %45
  store i32 %37, ptr %20, align 8, !tbaa !89
  %51 = call ptr @CTX_data_main(ptr noundef %0) #4
  call void @ED_update_for_newframe(ptr noundef %51, ptr noundef nonnull %7, i32 noundef 1) #4
  %52 = call i32 @dynamicPaint_calculateFrame(ptr noundef nonnull %1, ptr noundef nonnull %7, ptr noundef %2, i32 noundef %37) #4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %74, label %54

54:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #6
  %55 = load i32, ptr %31, align 4, !tbaa !55
  %56 = and i32 %55, 1024
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  call void @BLI_join_dirfile(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef nonnull %32, ptr noundef nonnull %33) #4
  %59 = call zeroext i8 @BLI_path_frame(ptr noundef nonnull %4, i32 noundef %37, i32 noundef 4) #4
  call void @dynamicPaint_outputSurfaceImage(ptr noundef nonnull %1, ptr noundef nonnull %4, i16 noundef signext 0) #4
  %60 = load i32, ptr %31, align 4, !tbaa !55
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i32 [ %60, %58 ], [ %55, %54 ]
  %63 = and i32 %62, 2048
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = load i16, ptr %34, align 2, !tbaa !71
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  call void @BLI_join_dirfile(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef nonnull %32, ptr noundef nonnull %35) #4
  %69 = call zeroext i8 @BLI_path_frame(ptr noundef nonnull %4, i32 noundef %37, i32 noundef 4) #4
  call void @dynamicPaint_outputSurfaceImage(ptr noundef nonnull %1, ptr noundef nonnull %4, i16 noundef signext 1) #4
  br label %70

70:                                               ; preds = %68, %65, %61
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #6
  %71 = add nsw i32 %37, 1
  %72 = load i32, ptr %9, align 8, !tbaa !87
  %73 = icmp slt i32 %37, %72
  br i1 %73, label %36, label %74, !llvm.loop !109

74:                                               ; preds = %50, %36, %70, %24, %19, %16
  %75 = phi i32 [ 0, %16 ], [ 0, %19 ], [ 1, %24 ], [ 0, %50 ], [ 0, %36 ], [ 1, %70 ]
  ret i32 %75
}

; Function Attrs: optsize
declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dynamicPaint_freeSurfaceData(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_timestr(double noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_update_for_newframe(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @dynamicPaint_createUVSurface(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @blender_test_break() local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_cursor_time(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @dynamicPaint_calculateFrame(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_path_frame(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dynamicPaint_outputSurfaceImage(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }
attributes #6 = { nounwind }

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
!42 = !{!35, !36, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!"dynamicpaint_ops.c:surface_slot_add_exec"}
!48 = !{!49, !36, i64 112}
!49 = !{!"DynamicPaintModifierData", !50, i64 0, !36, i64 112, !36, i64 120, !51, i64 128, !51, i64 132}
!50 = !{!"ModifierData", !36, i64 0, !36, i64 8, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!51 = !{!"int", !37, i64 0}
!52 = !{!53, !36, i64 8}
!53 = !{!"DynamicPaintSurface", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !39, i64 56, !51, i64 72, !37, i64 76, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !51, i64 156, !51, i64 160, !51, i64 164, !51, i64 168, !51, i64 172, !51, i64 176, !51, i64 180, !37, i64 184, !36, i64 200, !37, i64 208, !51, i64 272, !51, i64 276, !54, i64 280, !54, i64 284, !54, i64 288, !54, i64 292, !54, i64 296, !54, i64 300, !54, i64 304, !54, i64 308, !54, i64 312, !54, i64 316, !54, i64 320, !54, i64 324, !54, i64 328, !54, i64 332, !54, i64 336, !51, i64 340, !37, i64 344, !37, i64 408, !37, i64 1432, !37, i64 1496}
!54 = !{!"float", !37, i64 0}
!55 = !{!53, !51, i64 156}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!59, !41, i64 32}
!59 = !{!"DynamicPaintCanvasSettings", !36, i64 0, !36, i64 8, !39, i64 16, !41, i64 32, !41, i64 34, !51, i64 36, !37, i64 40}
!60 = !{!"dynamicpaint_ops.c:surface_slot_remove_exec"}
!61 = !{!36, !36, i64 0}
!62 = distinct !{!62, !57}
!63 = !{!35, !36, i64 88}
!64 = !{!35, !36, i64 104}
!65 = !{!"dynamicpaint_ops.c:type_toggle_exec"}
!66 = !{!67, !36, i64 112}
!67 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!68 = !{!49, !36, i64 120}
!69 = !{!"dynamicpaint_ops.c:output_toggle_exec"}
!70 = !{!53, !41, i64 140}
!71 = !{!53, !41, i64 142}
!72 = !{!73, !36, i64 296}
!73 = !{!"Object", !74, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !51, i64 140, !51, i64 144, !51, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !75, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !51, i64 432, !51, i64 436, !36, i64 440, !36, i64 448, !51, i64 456, !51, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !54, i64 616, !54, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !51, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !51, i64 968, !51, i64 972, !51, i64 976, !51, i64 980, !51, i64 984, !54, i64 988, !54, i64 992, !54, i64 996, !54, i64 1000, !54, i64 1004, !54, i64 1008, !54, i64 1012, !54, i64 1016, !54, i64 1020, !54, i64 1024, !54, i64 1028, !54, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !54, i64 1048, !54, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !54, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !51, i64 1144, !51, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !54, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !76, i64 1304, !76, i64 1312, !51, i64 1320, !51, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!74 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !51, i64 100, !51, i64 104, !51, i64 108, !36, i64 112}
!75 = !{!"bAnimVizSettings", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !51, i64 32, !51, i64 36, !51, i64 40, !51, i64 44}
!76 = !{!"long", !37, i64 0}
!77 = !{!"dynamicpaint_ops.c:dynamicpaint_bake_exec"}
!78 = !{!"dynamicpaint_ops.c:dynamicPaint_initBake"}
!79 = !{!67, !36, i64 120}
!80 = !{!37, !37, i64 0}
!81 = !{!59, !41, i64 34}
!82 = !{!83, !37, i64 2080}
!83 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !51, i64 2096, !51, i64 2100, !37, i64 2104, !51, i64 2108, !51, i64 2112, !37, i64 2116}
!84 = !{!83, !37, i64 2081}
!85 = !{!"dynamicpaint_ops.c:dynamicPaint_bakeImageSequence"}
!86 = !{!53, !36, i64 16}
!87 = !{!53, !51, i64 176}
!88 = !{!53, !51, i64 172}
!89 = !{!90, !51, i64 680}
!90 = !{!"Scene", !74, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !51, i64 232, !51, i64 236, !51, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !91, i64 280, !100, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !51, i64 4380, !39, i64 4384, !101, i64 4400, !102, i64 4416, !105, i64 4600, !36, i64 4608, !106, i64 4616, !36, i64 4640, !76, i64 4648, !76, i64 4656, !93, i64 4664, !94, i64 4824, !107, i64 4888, !36, i64 4952}
!91 = !{!"RenderData", !92, i64 0, !36, i64 248, !36, i64 256, !95, i64 264, !96, i64 328, !51, i64 400, !51, i64 404, !51, i64 408, !54, i64 412, !51, i64 416, !51, i64 420, !51, i64 424, !51, i64 428, !41, i64 432, !41, i64 434, !54, i64 436, !54, i64 440, !54, i64 444, !54, i64 448, !54, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !51, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !51, i64 484, !51, i64 488, !41, i64 492, !41, i64 494, !51, i64 496, !51, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !51, i64 516, !51, i64 520, !51, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !97, i64 544, !97, i64 560, !98, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !54, i64 612, !54, i64 616, !54, i64 620, !54, i64 624, !51, i64 628, !54, i64 632, !54, i64 636, !54, i64 640, !54, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !54, i64 660, !54, i64 664, !41, i64 668, !41, i64 670, !54, i64 672, !54, i64 676, !37, i64 680, !51, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !51, i64 2520, !41, i64 2524, !41, i64 2526, !54, i64 2528, !54, i64 2532, !41, i64 2536, !41, i64 2538, !54, i64 2540, !41, i64 2544, !41, i64 2546, !51, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !54, i64 2560, !54, i64 2564, !36, i64 2568, !51, i64 2576, !54, i64 2580, !37, i64 2584, !99, i64 2616, !51, i64 3976, !51, i64 3980}
!92 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !54, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !93, i64 24, !94, i64 184}
!93 = !{!"ColorManagedViewSettings", !51, i64 0, !51, i64 4, !37, i64 8, !37, i64 72, !54, i64 136, !54, i64 140, !36, i64 144, !36, i64 152}
!94 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!95 = !{!"QuicktimeCodecSettings", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !51, i64 32, !51, i64 36, !51, i64 40, !51, i64 44, !41, i64 48, !41, i64 50, !51, i64 52, !51, i64 56, !51, i64 60}
!96 = !{!"FFMpegCodecData", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !54, i64 32, !51, i64 36, !51, i64 40, !51, i64 44, !51, i64 48, !51, i64 52, !51, i64 56, !51, i64 60, !36, i64 64}
!97 = !{!"rctf", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12}
!98 = !{!"rcti", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12}
!99 = !{!"BakeData", !92, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !54, i64 1280, !54, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!100 = !{!"AudioData", !51, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !51, i64 16, !41, i64 20, !41, i64 22, !54, i64 24, !54, i64 28}
!101 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!102 = !{!"GameData", !101, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !103, i64 40, !41, i64 64, !41, i64 66, !54, i64 68, !104, i64 72, !54, i64 128, !54, i64 132, !51, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !54, i64 164, !54, i64 168, !54, i64 172, !54, i64 176, !54, i64 180}
!103 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !54, i64 8, !54, i64 12, !36, i64 16}
!104 = !{!"RecastData", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36, !51, i64 40, !54, i64 44, !54, i64 48, !41, i64 52, !41, i64 54}
!105 = !{!"UnitSettings", !54, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!106 = !{!"PhysicsSettings", !37, i64 0, !51, i64 12, !51, i64 16, !51, i64 20}
!107 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!108 = !{!53, !51, i64 72}
!109 = distinct !{!109, !57}
