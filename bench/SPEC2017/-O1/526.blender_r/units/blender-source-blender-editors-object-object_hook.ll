; ModuleID = 'blender/source/blender/editors/object/object_hook.c'
source_filename = "blender/source/blender/editors/object/object_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StructRNA = type opaque
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.HookModifierData = type { %struct.ModifierData, ptr, [64 x i8], [4 x [4 x float]], [3 x float], float, ptr, i32, float, [64 x i8] }
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
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.bDeformGroup = type { ptr, ptr, [64 x i8], i8, [7 x i8] }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }

@.str = private unnamed_addr constant [24 x i8] c"Hook to Selected Object\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Hook selected vertices to the first selected object\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"OBJECT_OT_hook_add_selob\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"use_bone\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Active Bone\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Assign the hook to the hook objects active bone\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Hook to New Object\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Hook selected vertices to a newly created object\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"OBJECT_OT_hook_add_newob\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Remove Hook\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"OBJECT_OT_hook_remove\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Remove a hook from the active object\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"modifier\00", align 1
@DummyRNA_NULL_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.13 = private unnamed_addr constant [9 x i8] c"Modifier\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Modifier number to remove\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"Reset Hook\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"Recalculate and clear offset transformation\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"OBJECT_OT_hook_reset\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Modifier number to assign to\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"Recenter Hook\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"Set hook center to cursor position\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"OBJECT_OT_hook_recenter\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"Assign to Hook\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"Assign the selected vertices to a hook\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"OBJECT_OT_hook_assign\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"Select Hook\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"Select affected vertices on mesh\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"OBJECT_OT_hook_select\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"Cannot add hook with no other selected objects\00", align 1
@.str.29 = private unnamed_addr constant [47 x i8] c"Cannot add hook bone for a non armature object\00", align 1
@.str.30 = private unnamed_addr constant [50 x i8] c"Requires selected vertices or active vertex group\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"Hook-%s\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"Armature has no active object bone\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.33 = private unnamed_addr constant [13 x i8] c"hook indexar\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"Could not find hook modifier\00", align 1
@.str.35 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.hook_mod_itemf.tmp = private unnamed_addr constant %struct.EnumPropertyItem { i32 0, ptr @.str.35, i32 0, ptr @.str.35, ptr @.str.35 }, align 8
@RNA_HookModifier = external global %struct.StructRNA, align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_hook_add_selob(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_add_hook_selob_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @hook_op_edit_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_add_hook_selob_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #5
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #5
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.3) #5
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 2, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  %13 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %3) #5
  br label %14

14:                                               ; preds = %19, %2
  %15 = phi ptr [ null, %2 ], [ %23, %19 ]
  %16 = phi ptr [ %3, %2 ], [ %17, %19 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.CollectionPointerLink, ptr %17, i64 0, i32 2, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = icmp eq ptr %21, %6
  %23 = select i1 %22, ptr %15, ptr %21
  br i1 %22, label %14, label %24

24:                                               ; preds = %19, %14
  %25 = phi ptr [ %23, %19 ], [ %15, %14 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !55
  call void @BKE_report(ptr noundef %29, i32 noundef 32, ptr noundef nonnull @.str.28) #5
  br label %44

30:                                               ; preds = %24
  br i1 %11, label %38, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 3
  %33 = load i16, ptr %32, align 8, !tbaa !56
  %34 = icmp eq i16 %33, 25
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !55
  call void @BKE_report(ptr noundef %37, i32 noundef 32, ptr noundef nonnull @.str.29) #5
  br label %44

38:                                               ; preds = %31, %30
  %39 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !55
  %41 = call fastcc i32 @add_hook_object(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %25, i32 noundef %12, ptr noundef %40), !range !63
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %6) #5
  br label %44

44:                                               ; preds = %38, %43, %35, %27
  %45 = phi i32 [ 2, %35 ], [ 4, %43 ], [ 2, %27 ], [ 2, %38 ]
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @hook_op_edit_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @ED_operator_editmesh(ptr noundef %0) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = tail call i32 @ED_operator_editsurfcurve(ptr noundef %0) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = tail call i32 @ED_operator_editlattice(ptr noundef %0) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %1
  br label %14

14:                                               ; preds = %10, %7, %4, %13
  %15 = phi i32 [ 0, %13 ], [ 1, %4 ], [ 1, %7 ], [ 1, %10 ]
  ret i32 %15
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_hook_add_newob(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_add_hook_newob_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @hook_op_edit_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_add_hook_newob_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #5
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #5
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = tail call fastcc i32 @add_hook_object(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef null, i32 noundef 1, ptr noundef %7), !range !63
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %4) #5
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %5) #5
  br label %11

11:                                               ; preds = %2, %10
  %12 = phi i32 [ 4, %10 ], [ 2, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_hook_remove(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_hook_remove_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @hook_op_edit_poll, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.12, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #5
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @hook_mod_itemf) #5
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #5
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_hook_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.12) #5
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #5
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 26
  %8 = tail call ptr @BLI_findlink(ptr noundef nonnull %7, i32 noundef %5) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  tail call void @BKE_report(ptr noundef %12, i32 noundef 32, ptr noundef nonnull @.str.34) #5
  br label %14

13:                                               ; preds = %2
  tail call void @BLI_remlink(ptr noundef nonnull %7, ptr noundef nonnull %8) #5
  tail call void @modifier_free(ptr noundef nonnull %8) #5
  tail call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 2) #5
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %6) #5
  br label %14

14:                                               ; preds = %13, %10
  %15 = phi i32 [ 4, %13 ], [ 2, %10 ]
  ret i32 %15
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @hook_mod_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca %struct.EnumPropertyItem, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) @__const.hook_mod_itemf.tmp, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  store ptr null, ptr %6, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  store i32 0, ptr %7, align 4, !tbaa !66
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 26
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 2
  %16 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 1
  %17 = getelementptr inbounds %struct.EnumPropertyItem, ptr %5, i64 0, i32 3
  br label %18

18:                                               ; preds = %14, %26
  %19 = phi ptr [ %12, %14 ], [ %28, %26 ]
  %20 = phi i32 [ 0, %14 ], [ %27, %26 ]
  %21 = getelementptr inbounds %struct.ModifierData, ptr %19, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !67
  %23 = icmp eq i32 %22, 9
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  store i32 %20, ptr %5, align 8, !tbaa !69
  store i32 449, ptr %15, align 8, !tbaa !71
  %25 = getelementptr inbounds %struct.ModifierData, ptr %19, i64 0, i32 6
  store ptr %25, ptr %16, align 8, !tbaa !72
  store ptr %25, ptr %17, align 8, !tbaa !73
  call void @RNA_enum_item_add(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #5
  br label %26

26:                                               ; preds = %18, %24
  %27 = add nuw nsw i32 %20, 1
  %28 = load ptr, ptr %19, align 8, !tbaa !50
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %18, !llvm.loop !74

30:                                               ; preds = %26, %10
  call void @RNA_enum_item_end(ptr noundef nonnull %6, ptr noundef nonnull %7) #5
  store i8 1, ptr %3, align 1, !tbaa !77
  %31 = load ptr, ptr %6, align 8, !tbaa !50
  br label %32

32:                                               ; preds = %4, %30
  %33 = phi ptr [ %31, %30 ], [ @DummyRNA_NULL_items, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #5
  ret ptr %33
}

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_hook_reset(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_hook_reset_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @hook_op_edit_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.18) #5
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @hook_mod_itemf) #5
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 536870912) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_hook_reset_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #5
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @RNA_HookModifier) #5
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.12) #5
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !79
  br label %16

12:                                               ; preds = %2
  %13 = call ptr @CTX_data_edit_object(ptr noundef %0) #5
  %14 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 26
  %15 = call ptr @BLI_findlink(ptr noundef nonnull %14, i32 noundef %6) #5
  br label %16

16:                                               ; preds = %12, %10
  %17 = phi ptr [ %11, %10 ], [ %13, %12 ]
  %18 = phi ptr [ %8, %10 ], [ %15, %12 ]
  %19 = icmp ne ptr %17, null
  %20 = icmp ne ptr %18, null
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ModifierData, ptr %18, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !80
  %25 = icmp eq i32 %24, 9
  br i1 %25, label %27, label %26

26:                                               ; preds = %22, %16
  br label %27

27:                                               ; preds = %22, %26
  %28 = phi ptr [ null, %26 ], [ %17, %22 ]
  %29 = phi ptr [ null, %26 ], [ %18, %22 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !55
  call void @BKE_report(ptr noundef %33, i32 noundef 32, ptr noundef nonnull @.str.34) #5
  br label %35

34:                                               ; preds = %27
  call void @BKE_object_modifier_hook_reset(ptr noundef %28, ptr noundef nonnull %29) #5
  call void @DAG_id_tag_update(ptr noundef %28, i16 noundef signext 2) #5
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %28) #5
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i32 [ 2, %31 ], [ 4, %34 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #5
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_hook_recenter(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.19, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.21, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_hook_recenter_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @hook_op_edit_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.18) #5
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @hook_mod_itemf) #5
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 536870912) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_hook_recenter_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #5
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @RNA_HookModifier) #5
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.12) #5
  %9 = call ptr @CTX_data_scene(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #5
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 8, !tbaa !79
  br label %19

15:                                               ; preds = %2
  %16 = call ptr @CTX_data_edit_object(ptr noundef %0) #5
  %17 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 26
  %18 = call ptr @BLI_findlink(ptr noundef nonnull %17, i32 noundef %8) #5
  br label %19

19:                                               ; preds = %15, %13
  %20 = phi ptr [ %14, %13 ], [ %16, %15 ]
  %21 = phi ptr [ %11, %13 ], [ %18, %15 ]
  %22 = icmp ne ptr %20, null
  %23 = icmp ne ptr %21, null
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ModifierData, ptr %21, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !80
  %28 = icmp eq i32 %27, 9
  br i1 %28, label %30, label %29

29:                                               ; preds = %25, %19
  br label %30

30:                                               ; preds = %25, %29
  %31 = phi ptr [ null, %29 ], [ %20, %25 ]
  %32 = phi ptr [ null, %29 ], [ %21, %25 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !55
  call void @BKE_report(ptr noundef %36, i32 noundef 32, ptr noundef nonnull @.str.34) #5
  br label %58

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef nonnull %38) #5
  %39 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %5, ptr noundef nonnull %4) #5
  %40 = getelementptr inbounds %struct.HookModifierData, ptr %32, i64 0, i32 4
  %41 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 8
  %42 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 47, i64 3
  %43 = load float, ptr %41, align 4, !tbaa !82
  %44 = load float, ptr %42, align 4, !tbaa !82
  %45 = fsub float %43, %44
  store float %45, ptr %40, align 4, !tbaa !82
  %46 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 8, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !82
  %48 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 47, i64 3, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !82
  %50 = fsub float %47, %49
  %51 = getelementptr inbounds %struct.HookModifierData, ptr %32, i64 0, i32 4, i64 1
  store float %50, ptr %51, align 4, !tbaa !82
  %52 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 8, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !82
  %54 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 47, i64 3, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !82
  %56 = fsub float %53, %55
  %57 = getelementptr inbounds %struct.HookModifierData, ptr %32, i64 0, i32 4, i64 2
  store float %56, ptr %57, align 4, !tbaa !82
  call void @mul_m3_v3(ptr noundef nonnull %5, ptr noundef nonnull %40) #5
  call void @DAG_id_tag_update(ptr noundef %31, i16 noundef signext 2) #5
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %31) #5
  br label %58

58:                                               ; preds = %37, %34
  %59 = phi i32 [ 2, %34 ], [ 4, %37 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #5
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_hook_assign(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.22, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.24, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_hook_assign_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @hook_op_edit_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.18) #5
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @hook_mod_itemf) #5
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 536870912) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_hook_assign_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [64 x i8], align 16
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #5
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @RNA_HookModifier) #5
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = call i32 @RNA_enum_get(ptr noundef %10, ptr noundef nonnull @.str.12) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  %12 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !78
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load ptr, ptr %3, align 8, !tbaa !79
  br label %21

17:                                               ; preds = %2
  %18 = call ptr @CTX_data_edit_object(ptr noundef %0) #5
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 26
  %20 = call ptr @BLI_findlink(ptr noundef nonnull %19, i32 noundef %11) #5
  br label %21

21:                                               ; preds = %17, %15
  %22 = phi ptr [ %16, %15 ], [ %18, %17 ]
  %23 = phi ptr [ %13, %15 ], [ %20, %17 ]
  %24 = icmp ne ptr %22, null
  %25 = icmp ne ptr %23, null
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.ModifierData, ptr %23, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !80
  %30 = icmp eq i32 %29, 9
  br i1 %30, label %32, label %31

31:                                               ; preds = %27, %21
  br label %32

32:                                               ; preds = %27, %31
  %33 = phi ptr [ null, %31 ], [ %22, %27 ]
  %34 = phi ptr [ null, %31 ], [ %23, %27 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !55
  call void @BKE_report(ptr noundef %38, i32 noundef 32, ptr noundef nonnull @.str.34) #5
  br label %63

39:                                               ; preds = %32
  %40 = call fastcc zeroext i8 @object_hook_index_array(ptr noundef %8, ptr noundef %33, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4)
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !55
  call void @BKE_report(ptr noundef %44, i32 noundef 16, ptr noundef nonnull @.str.30) #5
  br label %63

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.HookModifierData, ptr %34, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !83
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !50
  call void %50(ptr noundef nonnull %47) #5
  br label %51

51:                                               ; preds = %49, %45
  %52 = getelementptr inbounds %struct.HookModifierData, ptr %34, i64 0, i32 4
  %53 = load float, ptr %4, align 4, !tbaa !82
  store float %53, ptr %52, align 4, !tbaa !82
  %54 = getelementptr inbounds float, ptr %4, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !82
  %56 = getelementptr inbounds %struct.HookModifierData, ptr %34, i64 0, i32 4, i64 1
  store float %55, ptr %56, align 4, !tbaa !82
  %57 = getelementptr inbounds float, ptr %4, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !82
  %59 = getelementptr inbounds %struct.HookModifierData, ptr %34, i64 0, i32 4, i64 2
  store float %58, ptr %59, align 4, !tbaa !82
  %60 = load ptr, ptr %6, align 8, !tbaa !50
  store ptr %60, ptr %46, align 8, !tbaa !83
  %61 = load i32, ptr %7, align 4, !tbaa !66
  %62 = getelementptr inbounds %struct.HookModifierData, ptr %34, i64 0, i32 7
  store i32 %61, ptr %62, align 8, !tbaa !84
  call void @DAG_id_tag_update(ptr noundef %33, i16 noundef signext 2) #5
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %33) #5
  br label %63

63:                                               ; preds = %51, %42, %36
  %64 = phi i32 [ 2, %36 ], [ 4, %51 ], [ 2, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #5
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define dso_local void @OBJECT_OT_hook_select(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.25, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.27, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_hook_select_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @hook_op_edit_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #5
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @hook_mod_itemf) #5
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 536870912) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @object_hook_select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #5
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @RNA_HookModifier) #5
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.12) #5
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8, !tbaa !79
  br label %17

13:                                               ; preds = %2
  %14 = call ptr @CTX_data_edit_object(ptr noundef %0) #5
  %15 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 26
  %16 = call ptr @BLI_findlink(ptr noundef nonnull %15, i32 noundef %7) #5
  br label %17

17:                                               ; preds = %13, %11
  %18 = phi ptr [ %12, %11 ], [ %14, %13 ]
  %19 = phi ptr [ %9, %11 ], [ %16, %13 ]
  %20 = icmp ne ptr %18, null
  %21 = icmp ne ptr %19, null
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ModifierData, ptr %19, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !80
  %26 = icmp eq i32 %25, 9
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %17
  br label %28

28:                                               ; preds = %23, %27
  %29 = phi ptr [ null, %27 ], [ %18, %23 ]
  %30 = phi ptr [ null, %27 ], [ %19, %23 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !55
  call void @BKE_report(ptr noundef %34, i32 noundef 32, ptr noundef nonnull @.str.34) #5
  br label %132

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.HookModifierData, ptr %30, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !83
  %38 = icmp eq ptr %37, null
  br i1 %38, label %129, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 3
  %41 = load i16, ptr %40, align 8, !tbaa !56
  switch i16 %41, label %129 [
    i16 1, label %42
    i16 22, label %81
    i16 2, label %127
    i16 3, label %128
  ]

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 19
  %44 = load ptr, ptr %43, align 8, !tbaa !85
  %45 = getelementptr inbounds %struct.Mesh, ptr %44, i64 0, i32 20
  %46 = load ptr, ptr %45, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #5
  %47 = load ptr, ptr %46, align 8, !tbaa !89
  %48 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %48, align 4, !tbaa !91
  %49 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %49, align 8, !tbaa !93
  %50 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %50, align 8, !tbaa !94
  %51 = getelementptr inbounds %struct.BMesh, ptr %47, i64 0, i32 9
  %52 = load ptr, ptr %51, align 8, !tbaa !95
  store ptr %52, ptr %3, align 8, !tbaa !77
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #5
  %53 = load ptr, ptr %50, align 8, !tbaa !94
  %54 = call ptr %53(ptr noundef nonnull %3) #5
  %55 = icmp eq ptr %54, null
  br i1 %55, label %80, label %56

56:                                               ; preds = %42
  %57 = getelementptr inbounds %struct.HookModifierData, ptr %30, i64 0, i32 7
  br label %58

58:                                               ; preds = %56, %74
  %59 = phi i32 [ 0, %56 ], [ %76, %74 ]
  %60 = phi i32 [ 0, %56 ], [ %75, %74 ]
  %61 = phi ptr [ %54, %56 ], [ %78, %74 ]
  %62 = load ptr, ptr %36, align 8, !tbaa !83
  %63 = sext i32 %60 to i64
  %64 = getelementptr inbounds i32, ptr %62, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !66
  %66 = icmp eq i32 %59, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %58
  %68 = load ptr, ptr %46, align 8, !tbaa !89
  call void @BM_vert_select_set(ptr noundef %68, ptr noundef nonnull %61, i8 noundef zeroext 1) #5
  %69 = load i32, ptr %57, align 8, !tbaa !84
  %70 = add nsw i32 %69, -1
  %71 = icmp slt i32 %60, %70
  %72 = zext i1 %71 to i32
  %73 = add nsw i32 %60, %72
  br label %74

74:                                               ; preds = %67, %58
  %75 = phi i32 [ %60, %58 ], [ %73, %67 ]
  %76 = add nuw nsw i32 %59, 1
  %77 = load ptr, ptr %50, align 8, !tbaa !94
  %78 = call ptr %77(ptr noundef nonnull %3) #5
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %58, !llvm.loop !97

80:                                               ; preds = %74, %42
  call void @EDBM_select_flush(ptr noundef nonnull %46) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #5
  br label %129

81:                                               ; preds = %39
  %82 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 19
  %83 = load ptr, ptr %82, align 8, !tbaa !85
  %84 = getelementptr inbounds %struct.Lattice, ptr %83, i64 0, i32 26
  %85 = load ptr, ptr %84, align 8, !tbaa !98
  %86 = load ptr, ptr %85, align 8, !tbaa !100
  %87 = getelementptr inbounds %struct.Lattice, ptr %86, i64 0, i32 2
  %88 = load i16, ptr %87, align 8, !tbaa !102
  %89 = sext i16 %88 to i32
  %90 = getelementptr inbounds %struct.Lattice, ptr %86, i64 0, i32 3
  %91 = load i16, ptr %90, align 2, !tbaa !103
  %92 = sext i16 %91 to i32
  %93 = mul nsw i32 %92, %89
  %94 = getelementptr inbounds %struct.Lattice, ptr %86, i64 0, i32 4
  %95 = load i16, ptr %94, align 4, !tbaa !104
  %96 = sext i16 %95 to i32
  %97 = mul nsw i32 %93, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %129, label %99

99:                                               ; preds = %81
  %100 = getelementptr inbounds %struct.Lattice, ptr %86, i64 0, i32 21
  %101 = load ptr, ptr %100, align 8, !tbaa !105
  %102 = getelementptr inbounds %struct.HookModifierData, ptr %30, i64 0, i32 7
  br label %103

103:                                              ; preds = %99, %122
  %104 = phi i32 [ %97, %99 ], [ %108, %122 ]
  %105 = phi i32 [ 0, %99 ], [ %124, %122 ]
  %106 = phi i32 [ 0, %99 ], [ %123, %122 ]
  %107 = phi ptr [ %101, %99 ], [ %125, %122 ]
  %108 = add nsw i32 %104, -1
  %109 = sext i32 %106 to i64
  %110 = getelementptr inbounds i32, ptr %37, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !66
  %112 = icmp eq i32 %111, %105
  br i1 %112, label %113, label %122

113:                                              ; preds = %103
  %114 = getelementptr inbounds %struct.BPoint, ptr %107, i64 0, i32 3
  %115 = load i16, ptr %114, align 4, !tbaa !106
  %116 = or i16 %115, 1
  store i16 %116, ptr %114, align 4, !tbaa !106
  %117 = load i32, ptr %102, align 8, !tbaa !84
  %118 = add nsw i32 %117, -1
  %119 = icmp slt i32 %106, %118
  %120 = zext i1 %119 to i32
  %121 = add nsw i32 %106, %120
  br label %122

122:                                              ; preds = %113, %103
  %123 = phi i32 [ %106, %103 ], [ %121, %113 ]
  %124 = add nuw nsw i32 %105, 1
  %125 = getelementptr inbounds %struct.BPoint, ptr %107, i64 1
  %126 = icmp eq i32 %108, 0
  br i1 %126, label %129, label %103, !llvm.loop !108

127:                                              ; preds = %39
  call fastcc void @select_editcurve_hook(ptr noundef %29, ptr noundef nonnull %30)
  br label %129

128:                                              ; preds = %39
  call fastcc void @select_editcurve_hook(ptr noundef %29, ptr noundef nonnull %30)
  br label %129

129:                                              ; preds = %122, %81, %35, %39, %80, %127, %128
  %130 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 19
  %131 = load ptr, ptr %130, align 8, !tbaa !85
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %131) #5
  br label %132

132:                                              ; preds = %129, %32
  %133 = phi i32 [ 2, %32 ], [ 4, %129 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #5
  ret i32 %133
}

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CTX_data_selected_objects(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @add_hook_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #5
  %12 = call fastcc zeroext i8 @object_hook_index_array(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %7)
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  call void @BKE_report(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.30) #5
  br label %87

15:                                               ; preds = %6
  %16 = icmp ne i32 %4, 1
  %17 = icmp ne ptr %3, null
  %18 = or i1 %17, %16
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = call ptr @BKE_object_add(ptr noundef %0, ptr noundef %1, i32 noundef 0) #5
  %21 = call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef %2) #5
  %22 = call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef %20) #5
  %23 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 52
  %24 = load i32, ptr %23, align 8, !tbaa !109
  %25 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 52
  store i32 %24, ptr %25, align 8, !tbaa !109
  %26 = getelementptr inbounds %struct.Base, ptr %22, i64 0, i32 2
  store i32 %24, ptr %26, align 8, !tbaa !110
  %27 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  store ptr %21, ptr %27, align 8, !tbaa !112
  %28 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 33
  %29 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @mul_v3_m4v3(ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef nonnull %7) #5
  br label %30

30:                                               ; preds = %19, %15
  %31 = phi ptr [ %3, %15 ], [ %20, %19 ]
  %32 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 26
  br label %33

33:                                               ; preds = %37, %30
  %34 = phi ptr [ %32, %30 ], [ %35, %37 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !50
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ModifierData, ptr %35, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !67
  %40 = call ptr @modifierType_getInfo(i32 noundef %39) #5
  %41 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %40, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !131
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %33, label %44, !llvm.loop !133

44:                                               ; preds = %33, %37
  %45 = call ptr @modifier_new(i32 noundef 9) #5
  call void @BLI_insertlinkbefore(ptr noundef nonnull %32, ptr noundef %35, ptr noundef %45) #5
  %46 = getelementptr inbounds %struct.ModifierData, ptr %45, i64 0, i32 6
  %47 = getelementptr inbounds %struct.ID, ptr %31, i64 0, i32 4, i64 2
  %48 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %46, i64 noundef 64, ptr noundef nonnull @.str.31, ptr noundef nonnull %47) #5
  call void @modifier_unique_name(ptr noundef nonnull %32, ptr noundef %45) #5
  %49 = getelementptr inbounds %struct.HookModifierData, ptr %45, i64 0, i32 1
  store ptr %31, ptr %49, align 8, !tbaa !134
  %50 = load ptr, ptr %10, align 8, !tbaa !50
  %51 = getelementptr inbounds %struct.HookModifierData, ptr %45, i64 0, i32 6
  store ptr %50, ptr %51, align 8, !tbaa !83
  %52 = getelementptr inbounds %struct.HookModifierData, ptr %45, i64 0, i32 4
  %53 = load float, ptr %7, align 4, !tbaa !82
  store float %53, ptr %52, align 4, !tbaa !82
  %54 = getelementptr inbounds float, ptr %7, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !82
  %56 = getelementptr inbounds %struct.HookModifierData, ptr %45, i64 0, i32 4, i64 1
  store float %55, ptr %56, align 4, !tbaa !82
  %57 = getelementptr inbounds float, ptr %7, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !82
  %59 = getelementptr inbounds %struct.HookModifierData, ptr %45, i64 0, i32 4, i64 2
  store float %58, ptr %59, align 4, !tbaa !82
  %60 = load i32, ptr %9, align 4, !tbaa !66
  %61 = getelementptr inbounds %struct.HookModifierData, ptr %45, i64 0, i32 7
  store i32 %60, ptr %61, align 8, !tbaa !84
  %62 = getelementptr inbounds %struct.HookModifierData, ptr %45, i64 0, i32 9
  %63 = call ptr @BLI_strncpy(ptr noundef nonnull %62, ptr noundef nonnull %11, i64 noundef 64) #5
  call void @unit_m4(ptr noundef nonnull %8) #5
  %64 = icmp eq i32 %4, 3
  br i1 %64, label %65, label %81

65:                                               ; preds = %44
  %66 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 19
  %67 = load ptr, ptr %66, align 8, !tbaa !85
  %68 = getelementptr inbounds %struct.bArmature, ptr %67, i64 0, i32 5
  %69 = load ptr, ptr %68, align 8, !tbaa !135
  %70 = icmp eq ptr %69, null
  br i1 %70, label %80, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.HookModifierData, ptr %45, i64 0, i32 2
  %73 = getelementptr inbounds %struct.Bone, ptr %69, i64 0, i32 5
  %74 = call ptr @BLI_strncpy(ptr noundef nonnull %72, ptr noundef nonnull %73, i64 noundef 64) #5
  %75 = call ptr @BKE_pose_channel_active(ptr noundef %31) #5
  %76 = icmp eq ptr %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.bPoseChannel, ptr %75, i64 0, i32 29
  %79 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %78) #5
  br label %81

80:                                               ; preds = %65
  call void @BKE_report(ptr noundef %5, i32 noundef 16, ptr noundef nonnull @.str.32) #5
  br label %81

81:                                               ; preds = %80, %77, %71, %44
  call void @BKE_object_where_is_calc(ptr noundef %1, ptr noundef %31) #5
  %82 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 50
  %83 = getelementptr inbounds %struct.Object, ptr %31, i64 0, i32 47
  %84 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %82, ptr noundef nonnull %83) #5
  %85 = getelementptr inbounds %struct.HookModifierData, ptr %45, i64 0, i32 3
  %86 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @_va_mul_m4_series_4(ptr noundef nonnull %85, ptr noundef nonnull %8, ptr noundef nonnull %82, ptr noundef nonnull %86) #5
  call void @DAG_relations_tag_update(ptr noundef %0) #5
  br label %87

87:                                               ; preds = %81, %14
  %88 = phi i32 [ 1, %81 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #5
  ret i32 %88
}

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @object_hook_index_array(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr noundef %4, ptr nocapture noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  store ptr null, ptr %3, align 8, !tbaa !50
  store i32 0, ptr %2, align 4, !tbaa !66
  store i8 0, ptr %4, align 1, !tbaa !77
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !56
  switch i16 %10, label %476 [
    i16 1, label %11
    i16 2, label %163
    i16 3, label %163
    i16 22, label %373
  ]

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !85
  tail call void @EDBM_mesh_load(ptr noundef %1) #5
  %14 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !137
  tail call void @EDBM_mesh_make(ptr noundef %15, ptr noundef %1) #5
  %16 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !86
  tail call void @EDBM_mesh_normals_update(ptr noundef %17) #5
  tail call void @BKE_editmesh_tessface_calc(ptr noundef %17) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #5
  %18 = load ptr, ptr %17, align 8, !tbaa !89
  %19 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 1, ptr %19, align 4, !tbaa !91
  %20 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %20, align 8, !tbaa !93
  %21 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %21, align 8, !tbaa !94
  %22 = getelementptr inbounds %struct.BMesh, ptr %18, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !95
  store ptr %23, ptr %8, align 8, !tbaa !77
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #5
  %24 = load ptr, ptr %21, align 8, !tbaa !94
  %25 = call ptr %24(ptr noundef nonnull %8) #5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %11, %27
  %28 = phi i32 [ %34, %27 ], [ 0, %11 ]
  %29 = phi ptr [ %36, %27 ], [ %25, %11 ]
  %30 = getelementptr inbounds %struct.BMHeader, ptr %29, i64 0, i32 3
  %31 = load i8, ptr %30, align 1, !tbaa !138
  %32 = and i8 %31, 1
  %33 = zext nneg i8 %32 to i32
  %34 = add i32 %28, %33
  %35 = load ptr, ptr %21, align 8, !tbaa !94
  %36 = call ptr %35(ptr noundef nonnull %8) #5
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %27, !llvm.loop !140

38:                                               ; preds = %27, %11
  %39 = phi i32 [ 0, %11 ], [ %34, %27 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %91, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %43 = shl nsw i32 %39, 2
  %44 = sext i32 %43 to i64
  %45 = call ptr %42(i64 noundef %44, ptr noundef nonnull @.str.33) #5
  store ptr %45, ptr %3, align 8, !tbaa !50
  store i32 %39, ptr %2, align 4, !tbaa !66
  store float 0.000000e+00, ptr %5, align 4, !tbaa !82
  %46 = getelementptr inbounds float, ptr %5, i64 1
  store float 0.000000e+00, ptr %46, align 4, !tbaa !82
  %47 = getelementptr inbounds float, ptr %5, i64 2
  store float 0.000000e+00, ptr %47, align 4, !tbaa !82
  %48 = load ptr, ptr %17, align 8, !tbaa !89
  store i8 1, ptr %19, align 4, !tbaa !91
  store ptr @bmiter__elem_of_mesh_begin, ptr %20, align 8, !tbaa !93
  store ptr @bmiter__elem_of_mesh_step, ptr %21, align 8, !tbaa !94
  %49 = getelementptr inbounds %struct.BMesh, ptr %48, i64 0, i32 9
  %50 = load ptr, ptr %49, align 8, !tbaa !95
  store ptr %50, ptr %8, align 8, !tbaa !77
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #5
  %51 = load ptr, ptr %21, align 8, !tbaa !94
  %52 = call ptr %51(ptr noundef nonnull %8) #5
  %53 = icmp eq ptr %52, null
  br i1 %53, label %82, label %54

54:                                               ; preds = %41, %76
  %55 = phi i32 [ %78, %76 ], [ 0, %41 ]
  %56 = phi ptr [ %77, %76 ], [ %45, %41 ]
  %57 = phi ptr [ %80, %76 ], [ %52, %41 ]
  %58 = getelementptr inbounds %struct.BMHeader, ptr %57, i64 0, i32 3
  %59 = load i8, ptr %58, align 1, !tbaa !138
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %54
  store i32 %55, ptr %56, align 4, !tbaa !66
  %63 = getelementptr inbounds i32, ptr %56, i64 1
  %64 = getelementptr inbounds %struct.BMVert, ptr %57, i64 0, i32 2
  %65 = load float, ptr %64, align 4, !tbaa !82
  %66 = load float, ptr %5, align 4, !tbaa !82
  %67 = fadd float %65, %66
  store float %67, ptr %5, align 4, !tbaa !82
  %68 = getelementptr inbounds %struct.BMVert, ptr %57, i64 0, i32 2, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !82
  %70 = load float, ptr %46, align 4, !tbaa !82
  %71 = fadd float %69, %70
  store float %71, ptr %46, align 4, !tbaa !82
  %72 = getelementptr inbounds %struct.BMVert, ptr %57, i64 0, i32 2, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !82
  %74 = load float, ptr %47, align 4, !tbaa !82
  %75 = fadd float %73, %74
  store float %75, ptr %47, align 4, !tbaa !82
  br label %76

76:                                               ; preds = %62, %54
  %77 = phi ptr [ %63, %62 ], [ %56, %54 ]
  %78 = add nuw nsw i32 %55, 1
  %79 = load ptr, ptr %21, align 8, !tbaa !94
  %80 = call ptr %79(ptr noundef nonnull %8) #5
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %54, !llvm.loop !141

82:                                               ; preds = %76, %41
  %83 = sitofp i32 %39 to float
  %84 = fdiv float 1.000000e+00, %83
  %85 = load float, ptr %5, align 4, !tbaa !82
  %86 = fmul float %84, %85
  store float %86, ptr %5, align 4, !tbaa !82
  %87 = load float, ptr %46, align 4, !tbaa !82
  %88 = fmul float %84, %87
  store float %88, ptr %46, align 4, !tbaa !82
  %89 = load float, ptr %47, align 4, !tbaa !82
  %90 = fmul float %84, %89
  store float %90, ptr %47, align 4, !tbaa !82
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #5
  br i1 %40, label %92, label %476

91:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #5
  br label %92

92:                                               ; preds = %91, %82
  %93 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 97
  %94 = load i16, ptr %93, align 2, !tbaa !142
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr %17, align 8, !tbaa !89
  %98 = getelementptr inbounds %struct.BMesh, ptr %97, i64 0, i32 24
  %99 = call i32 @CustomData_get_offset(ptr noundef nonnull %98, i32 noundef 2) #5
  br label %100

100:                                              ; preds = %96, %92
  %101 = phi i32 [ %99, %96 ], [ -1, %92 ]
  store float 0.000000e+00, ptr %5, align 4, !tbaa !82
  %102 = getelementptr inbounds float, ptr %5, i64 1
  store float 0.000000e+00, ptr %102, align 4, !tbaa !82
  %103 = getelementptr inbounds float, ptr %5, i64 2
  store float 0.000000e+00, ptr %103, align 4, !tbaa !82
  %104 = icmp eq i32 %101, -1
  br i1 %104, label %476, label %105

105:                                              ; preds = %100
  %106 = load i16, ptr %93, align 2, !tbaa !142
  %107 = zext i16 %106 to i32
  %108 = add nsw i32 %107, -1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #5
  %109 = load ptr, ptr %17, align 8, !tbaa !89
  %110 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 1, ptr %110, align 4, !tbaa !91
  %111 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %111, align 8, !tbaa !93
  %112 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %112, align 8, !tbaa !94
  %113 = getelementptr inbounds %struct.BMesh, ptr %109, i64 0, i32 9
  %114 = load ptr, ptr %113, align 8, !tbaa !95
  store ptr %114, ptr %7, align 8, !tbaa !77
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #5
  %115 = load ptr, ptr %112, align 8, !tbaa !94
  %116 = call ptr %115(ptr noundef nonnull %7) #5
  %117 = icmp eq ptr %116, null
  br i1 %117, label %146, label %118

118:                                              ; preds = %105
  %119 = sext i32 %101 to i64
  br label %120

120:                                              ; preds = %118, %141
  %121 = phi ptr [ %116, %118 ], [ %144, %141 ]
  %122 = phi i32 [ 0, %118 ], [ %142, %141 ]
  %123 = load ptr, ptr %121, align 8, !tbaa !143
  %124 = getelementptr inbounds i8, ptr %123, i64 %119
  %125 = call float @defvert_find_weight(ptr noundef %124, i32 noundef %108) #5
  %126 = fcmp ogt float %125, 0.000000e+00
  br i1 %126, label %127, label %141

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.BMVert, ptr %121, i64 0, i32 2
  %129 = load float, ptr %128, align 4, !tbaa !82
  %130 = load float, ptr %5, align 4, !tbaa !82
  %131 = fadd float %129, %130
  store float %131, ptr %5, align 4, !tbaa !82
  %132 = getelementptr inbounds %struct.BMVert, ptr %121, i64 0, i32 2, i64 1
  %133 = load float, ptr %132, align 4, !tbaa !82
  %134 = load float, ptr %102, align 4, !tbaa !82
  %135 = fadd float %133, %134
  store float %135, ptr %102, align 4, !tbaa !82
  %136 = getelementptr inbounds %struct.BMVert, ptr %121, i64 0, i32 2, i64 2
  %137 = load float, ptr %136, align 4, !tbaa !82
  %138 = load float, ptr %103, align 4, !tbaa !82
  %139 = fadd float %137, %138
  store float %139, ptr %103, align 4, !tbaa !82
  %140 = add nsw i32 %122, 1
  br label %141

141:                                              ; preds = %127, %120
  %142 = phi i32 [ %140, %127 ], [ %122, %120 ]
  %143 = load ptr, ptr %112, align 8, !tbaa !94
  %144 = call ptr %143(ptr noundef nonnull %7) #5
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %120, !llvm.loop !145

146:                                              ; preds = %141, %105
  %147 = phi i32 [ 0, %105 ], [ %142, %141 ]
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %162, label %149

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 25
  %151 = call ptr @BLI_findlink(ptr noundef nonnull %150, i32 noundef %108) #5
  %152 = getelementptr inbounds %struct.bDeformGroup, ptr %151, i64 0, i32 2
  %153 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %152, i64 noundef 64) #5
  %154 = sitofp i32 %147 to float
  %155 = fdiv float 1.000000e+00, %154
  %156 = load float, ptr %5, align 4, !tbaa !82
  %157 = fmul float %155, %156
  store float %157, ptr %5, align 4, !tbaa !82
  %158 = load float, ptr %102, align 4, !tbaa !82
  %159 = fmul float %155, %158
  store float %159, ptr %102, align 4, !tbaa !82
  %160 = load float, ptr %103, align 4, !tbaa !82
  %161 = fmul float %155, %160
  store float %161, ptr %103, align 4, !tbaa !82
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #5
  br label %476

162:                                              ; preds = %146
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #5
  br label %476

163:                                              ; preds = %6, %6
  tail call void @load_editNurb(ptr noundef %1) #5
  tail call void @make_editNurb(ptr noundef %1) #5
  %164 = tail call ptr @object_editcurve_get(ptr noundef %1) #5
  %165 = load ptr, ptr %164, align 8, !tbaa !50
  %166 = icmp eq ptr %165, null
  br i1 %166, label %226, label %167

167:                                              ; preds = %163, %222
  %168 = phi ptr [ %224, %222 ], [ %165, %163 ]
  %169 = phi i32 [ %223, %222 ], [ 0, %163 ]
  %170 = getelementptr inbounds %struct.Nurb, ptr %168, i64 0, i32 2
  %171 = load i16, ptr %170, align 8, !tbaa !146
  %172 = icmp eq i16 %171, 1
  %173 = getelementptr inbounds %struct.Nurb, ptr %168, i64 0, i32 6
  %174 = load i32, ptr %173, align 8, !tbaa !148
  br i1 %172, label %175, label %202

175:                                              ; preds = %167
  %176 = icmp eq i32 %174, 0
  br i1 %176, label %222, label %177

177:                                              ; preds = %175
  %178 = getelementptr inbounds %struct.Nurb, ptr %168, i64 0, i32 18
  %179 = load ptr, ptr %178, align 8, !tbaa !149
  br label %180

180:                                              ; preds = %177, %180
  %181 = phi i32 [ %199, %180 ], [ %169, %177 ]
  %182 = phi i32 [ %184, %180 ], [ %174, %177 ]
  %183 = phi ptr [ %200, %180 ], [ %179, %177 ]
  %184 = add nsw i32 %182, -1
  %185 = getelementptr inbounds %struct.BezTriple, ptr %183, i64 0, i32 7
  %186 = load i8, ptr %185, align 1, !tbaa !150
  %187 = and i8 %186, 1
  %188 = zext nneg i8 %187 to i32
  %189 = add i32 %181, %188
  %190 = getelementptr inbounds %struct.BezTriple, ptr %183, i64 0, i32 8
  %191 = load i8, ptr %190, align 4, !tbaa !152
  %192 = and i8 %191, 1
  %193 = zext nneg i8 %192 to i32
  %194 = add i32 %189, %193
  %195 = getelementptr inbounds %struct.BezTriple, ptr %183, i64 0, i32 9
  %196 = load i8, ptr %195, align 1, !tbaa !153
  %197 = and i8 %196, 1
  %198 = zext nneg i8 %197 to i32
  %199 = add i32 %194, %198
  %200 = getelementptr inbounds %struct.BezTriple, ptr %183, i64 1
  %201 = icmp eq i32 %184, 0
  br i1 %201, label %222, label %180, !llvm.loop !154

202:                                              ; preds = %167
  %203 = getelementptr inbounds %struct.Nurb, ptr %168, i64 0, i32 7
  %204 = load i32, ptr %203, align 4, !tbaa !155
  %205 = mul nsw i32 %204, %174
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %222, label %207

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.Nurb, ptr %168, i64 0, i32 17
  %209 = load ptr, ptr %208, align 8, !tbaa !156
  br label %210

210:                                              ; preds = %207, %210
  %211 = phi i32 [ %219, %210 ], [ %169, %207 ]
  %212 = phi i32 [ %214, %210 ], [ %205, %207 ]
  %213 = phi ptr [ %220, %210 ], [ %209, %207 ]
  %214 = add nsw i32 %212, -1
  %215 = getelementptr inbounds %struct.BPoint, ptr %213, i64 0, i32 3
  %216 = load i16, ptr %215, align 4, !tbaa !106
  %217 = and i16 %216, 1
  %218 = zext nneg i16 %217 to i32
  %219 = add i32 %211, %218
  %220 = getelementptr inbounds %struct.BPoint, ptr %213, i64 1
  %221 = icmp eq i32 %214, 0
  br i1 %221, label %222, label %210, !llvm.loop !157

222:                                              ; preds = %210, %180, %202, %175
  %223 = phi i32 [ %169, %175 ], [ %169, %202 ], [ %199, %180 ], [ %219, %210 ]
  %224 = load ptr, ptr %168, align 8, !tbaa !50
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %167, !llvm.loop !158

226:                                              ; preds = %222, %163
  %227 = phi i32 [ 0, %163 ], [ %223, %222 ]
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %476, label %229

229:                                              ; preds = %226
  %230 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %231 = shl nsw i32 %227, 2
  %232 = sext i32 %231 to i64
  %233 = tail call ptr %230(i64 noundef %232, ptr noundef nonnull @.str.33) #5
  store ptr %233, ptr %3, align 8, !tbaa !50
  store i32 %227, ptr %2, align 4, !tbaa !66
  store float 0.000000e+00, ptr %5, align 4, !tbaa !82
  %234 = getelementptr inbounds float, ptr %5, i64 1
  store float 0.000000e+00, ptr %234, align 4, !tbaa !82
  %235 = getelementptr inbounds float, ptr %5, i64 2
  store float 0.000000e+00, ptr %235, align 4, !tbaa !82
  %236 = load ptr, ptr %164, align 8, !tbaa !50
  %237 = icmp eq ptr %236, null
  br i1 %237, label %363, label %238

238:                                              ; preds = %229, %358
  %239 = phi ptr [ %361, %358 ], [ %236, %229 ]
  %240 = phi i32 [ %360, %358 ], [ 0, %229 ]
  %241 = phi ptr [ %359, %358 ], [ %233, %229 ]
  %242 = getelementptr inbounds %struct.Nurb, ptr %239, i64 0, i32 2
  %243 = load i16, ptr %242, align 8, !tbaa !146
  %244 = icmp eq i16 %243, 1
  %245 = getelementptr inbounds %struct.Nurb, ptr %239, i64 0, i32 6
  %246 = load i32, ptr %245, align 8, !tbaa !148
  br i1 %244, label %247, label %322

247:                                              ; preds = %238
  %248 = icmp eq i32 %246, 0
  br i1 %248, label %358, label %249

249:                                              ; preds = %247
  %250 = getelementptr inbounds %struct.Nurb, ptr %239, i64 0, i32 18
  %251 = load ptr, ptr %250, align 8, !tbaa !149
  br label %252

252:                                              ; preds = %249, %317
  %253 = phi i32 [ %257, %317 ], [ %246, %249 ]
  %254 = phi i32 [ %319, %317 ], [ %240, %249 ]
  %255 = phi ptr [ %318, %317 ], [ %241, %249 ]
  %256 = phi ptr [ %320, %317 ], [ %251, %249 ]
  %257 = add nsw i32 %253, -1
  %258 = getelementptr inbounds %struct.BezTriple, ptr %256, i64 0, i32 7
  %259 = load i8, ptr %258, align 1, !tbaa !150
  %260 = and i8 %259, 1
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %275, label %262

262:                                              ; preds = %252
  store i32 %254, ptr %255, align 4, !tbaa !66
  %263 = getelementptr inbounds i32, ptr %255, i64 1
  %264 = load float, ptr %256, align 4, !tbaa !82
  %265 = load float, ptr %5, align 4, !tbaa !82
  %266 = fadd float %264, %265
  store float %266, ptr %5, align 4, !tbaa !82
  %267 = getelementptr inbounds float, ptr %256, i64 1
  %268 = load float, ptr %267, align 4, !tbaa !82
  %269 = load float, ptr %234, align 4, !tbaa !82
  %270 = fadd float %268, %269
  store float %270, ptr %234, align 4, !tbaa !82
  %271 = getelementptr inbounds float, ptr %256, i64 2
  %272 = load float, ptr %271, align 4, !tbaa !82
  %273 = load float, ptr %235, align 4, !tbaa !82
  %274 = fadd float %272, %273
  store float %274, ptr %235, align 4, !tbaa !82
  br label %275

275:                                              ; preds = %262, %252
  %276 = phi ptr [ %263, %262 ], [ %255, %252 ]
  %277 = getelementptr inbounds %struct.BezTriple, ptr %256, i64 0, i32 8
  %278 = load i8, ptr %277, align 4, !tbaa !152
  %279 = and i8 %278, 1
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %296, label %281

281:                                              ; preds = %275
  %282 = add nsw i32 %254, 1
  store i32 %282, ptr %276, align 4, !tbaa !66
  %283 = getelementptr inbounds i32, ptr %276, i64 1
  %284 = getelementptr inbounds [3 x [3 x float]], ptr %256, i64 0, i64 1
  %285 = load float, ptr %284, align 4, !tbaa !82
  %286 = load float, ptr %5, align 4, !tbaa !82
  %287 = fadd float %285, %286
  store float %287, ptr %5, align 4, !tbaa !82
  %288 = getelementptr inbounds [3 x [3 x float]], ptr %256, i64 0, i64 1, i64 1
  %289 = load float, ptr %288, align 4, !tbaa !82
  %290 = load float, ptr %234, align 4, !tbaa !82
  %291 = fadd float %289, %290
  store float %291, ptr %234, align 4, !tbaa !82
  %292 = getelementptr inbounds [3 x [3 x float]], ptr %256, i64 0, i64 1, i64 2
  %293 = load float, ptr %292, align 4, !tbaa !82
  %294 = load float, ptr %235, align 4, !tbaa !82
  %295 = fadd float %293, %294
  store float %295, ptr %235, align 4, !tbaa !82
  br label %296

296:                                              ; preds = %281, %275
  %297 = phi ptr [ %283, %281 ], [ %276, %275 ]
  %298 = getelementptr inbounds %struct.BezTriple, ptr %256, i64 0, i32 9
  %299 = load i8, ptr %298, align 1, !tbaa !153
  %300 = and i8 %299, 1
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %317, label %302

302:                                              ; preds = %296
  %303 = add nsw i32 %254, 2
  store i32 %303, ptr %297, align 4, !tbaa !66
  %304 = getelementptr inbounds i32, ptr %297, i64 1
  %305 = getelementptr inbounds [3 x [3 x float]], ptr %256, i64 0, i64 2
  %306 = load float, ptr %305, align 4, !tbaa !82
  %307 = load float, ptr %5, align 4, !tbaa !82
  %308 = fadd float %306, %307
  store float %308, ptr %5, align 4, !tbaa !82
  %309 = getelementptr inbounds [3 x [3 x float]], ptr %256, i64 0, i64 2, i64 1
  %310 = load float, ptr %309, align 4, !tbaa !82
  %311 = load float, ptr %234, align 4, !tbaa !82
  %312 = fadd float %310, %311
  store float %312, ptr %234, align 4, !tbaa !82
  %313 = getelementptr inbounds [3 x [3 x float]], ptr %256, i64 0, i64 2, i64 2
  %314 = load float, ptr %313, align 4, !tbaa !82
  %315 = load float, ptr %235, align 4, !tbaa !82
  %316 = fadd float %314, %315
  store float %316, ptr %235, align 4, !tbaa !82
  br label %317

317:                                              ; preds = %302, %296
  %318 = phi ptr [ %304, %302 ], [ %297, %296 ]
  %319 = add nsw i32 %254, 3
  %320 = getelementptr inbounds %struct.BezTriple, ptr %256, i64 1
  %321 = icmp eq i32 %257, 0
  br i1 %321, label %358, label %252, !llvm.loop !159

322:                                              ; preds = %238
  %323 = getelementptr inbounds %struct.Nurb, ptr %239, i64 0, i32 7
  %324 = load i32, ptr %323, align 4, !tbaa !155
  %325 = mul nsw i32 %324, %246
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %358, label %327

327:                                              ; preds = %322
  %328 = getelementptr inbounds %struct.Nurb, ptr %239, i64 0, i32 17
  %329 = load ptr, ptr %328, align 8, !tbaa !156
  br label %330

330:                                              ; preds = %327, %353
  %331 = phi i32 [ %335, %353 ], [ %325, %327 ]
  %332 = phi i32 [ %355, %353 ], [ %240, %327 ]
  %333 = phi ptr [ %354, %353 ], [ %241, %327 ]
  %334 = phi ptr [ %356, %353 ], [ %329, %327 ]
  %335 = add nsw i32 %331, -1
  %336 = getelementptr inbounds %struct.BPoint, ptr %334, i64 0, i32 3
  %337 = load i16, ptr %336, align 4, !tbaa !106
  %338 = and i16 %337, 1
  %339 = icmp eq i16 %338, 0
  br i1 %339, label %353, label %340

340:                                              ; preds = %330
  store i32 %332, ptr %333, align 4, !tbaa !66
  %341 = getelementptr inbounds i32, ptr %333, i64 1
  %342 = load float, ptr %334, align 4, !tbaa !82
  %343 = load float, ptr %5, align 4, !tbaa !82
  %344 = fadd float %342, %343
  store float %344, ptr %5, align 4, !tbaa !82
  %345 = getelementptr inbounds float, ptr %334, i64 1
  %346 = load float, ptr %345, align 4, !tbaa !82
  %347 = load float, ptr %234, align 4, !tbaa !82
  %348 = fadd float %346, %347
  store float %348, ptr %234, align 4, !tbaa !82
  %349 = getelementptr inbounds float, ptr %334, i64 2
  %350 = load float, ptr %349, align 4, !tbaa !82
  %351 = load float, ptr %235, align 4, !tbaa !82
  %352 = fadd float %350, %351
  store float %352, ptr %235, align 4, !tbaa !82
  br label %353

353:                                              ; preds = %340, %330
  %354 = phi ptr [ %341, %340 ], [ %333, %330 ]
  %355 = add nsw i32 %332, 1
  %356 = getelementptr inbounds %struct.BPoint, ptr %334, i64 1
  %357 = icmp eq i32 %335, 0
  br i1 %357, label %358, label %330, !llvm.loop !160

358:                                              ; preds = %353, %317, %322, %247
  %359 = phi ptr [ %241, %247 ], [ %241, %322 ], [ %318, %317 ], [ %354, %353 ]
  %360 = phi i32 [ %240, %247 ], [ %240, %322 ], [ %319, %317 ], [ %355, %353 ]
  %361 = load ptr, ptr %239, align 8, !tbaa !50
  %362 = icmp eq ptr %361, null
  br i1 %362, label %363, label %238, !llvm.loop !161

363:                                              ; preds = %358, %229
  %364 = sitofp i32 %227 to float
  %365 = fdiv float 1.000000e+00, %364
  %366 = load float, ptr %5, align 4, !tbaa !82
  %367 = fmul float %365, %366
  store float %367, ptr %5, align 4, !tbaa !82
  %368 = load float, ptr %234, align 4, !tbaa !82
  %369 = fmul float %365, %368
  store float %369, ptr %234, align 4, !tbaa !82
  %370 = load float, ptr %235, align 4, !tbaa !82
  %371 = fmul float %365, %370
  store float %371, ptr %235, align 4, !tbaa !82
  %372 = trunc i32 %227 to i8
  br label %476

373:                                              ; preds = %6
  %374 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %375 = load ptr, ptr %374, align 8, !tbaa !85
  %376 = getelementptr inbounds %struct.Lattice, ptr %375, i64 0, i32 26
  %377 = load ptr, ptr %376, align 8, !tbaa !98
  %378 = load ptr, ptr %377, align 8, !tbaa !100
  %379 = getelementptr inbounds %struct.Lattice, ptr %378, i64 0, i32 2
  %380 = load i16, ptr %379, align 8, !tbaa !102
  %381 = sext i16 %380 to i32
  %382 = getelementptr inbounds %struct.Lattice, ptr %378, i64 0, i32 3
  %383 = load i16, ptr %382, align 2, !tbaa !103
  %384 = sext i16 %383 to i32
  %385 = mul nsw i32 %384, %381
  %386 = getelementptr inbounds %struct.Lattice, ptr %378, i64 0, i32 4
  %387 = load i16, ptr %386, align 4, !tbaa !104
  %388 = sext i16 %387 to i32
  %389 = mul nsw i32 %385, %388
  %390 = getelementptr inbounds %struct.Lattice, ptr %378, i64 0, i32 21
  %391 = icmp eq i32 %389, 0
  br i1 %391, label %413, label %392

392:                                              ; preds = %373
  %393 = load ptr, ptr %390, align 8, !tbaa !105
  br label %394

394:                                              ; preds = %392, %409
  %395 = phi i32 [ %398, %409 ], [ %389, %392 ]
  %396 = phi i32 [ %410, %409 ], [ 0, %392 ]
  %397 = phi ptr [ %411, %409 ], [ %393, %392 ]
  %398 = add nsw i32 %395, -1
  %399 = getelementptr inbounds %struct.BPoint, ptr %397, i64 0, i32 3
  %400 = load i16, ptr %399, align 4, !tbaa !106
  %401 = and i16 %400, 1
  %402 = icmp eq i16 %401, 0
  br i1 %402, label %409, label %403

403:                                              ; preds = %394
  %404 = getelementptr inbounds %struct.BPoint, ptr %397, i64 0, i32 4
  %405 = load i16, ptr %404, align 2, !tbaa !162
  %406 = icmp eq i16 %405, 0
  %407 = zext i1 %406 to i32
  %408 = add nsw i32 %396, %407
  br label %409

409:                                              ; preds = %403, %394
  %410 = phi i32 [ %396, %394 ], [ %408, %403 ]
  %411 = getelementptr inbounds %struct.BPoint, ptr %397, i64 1
  %412 = icmp eq i32 %398, 0
  br i1 %412, label %413, label %394, !llvm.loop !163

413:                                              ; preds = %409, %373
  %414 = phi i32 [ 0, %373 ], [ %410, %409 ]
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %476, label %416

416:                                              ; preds = %413
  %417 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !50
  %418 = shl nsw i32 %414, 2
  %419 = sext i32 %418 to i64
  %420 = tail call ptr %417(i64 noundef %419, ptr noundef nonnull @.str.33) #5
  store ptr %420, ptr %3, align 8, !tbaa !50
  store i32 %414, ptr %2, align 4, !tbaa !66
  store float 0.000000e+00, ptr %5, align 4, !tbaa !82
  %421 = getelementptr inbounds float, ptr %5, i64 1
  store float 0.000000e+00, ptr %421, align 4, !tbaa !82
  %422 = getelementptr inbounds float, ptr %5, i64 2
  store float 0.000000e+00, ptr %422, align 4, !tbaa !82
  %423 = load i16, ptr %379, align 8, !tbaa !102
  %424 = sext i16 %423 to i32
  %425 = load i16, ptr %382, align 2, !tbaa !103
  %426 = sext i16 %425 to i32
  %427 = mul nsw i32 %426, %424
  %428 = load i16, ptr %386, align 4, !tbaa !104
  %429 = sext i16 %428 to i32
  %430 = mul nsw i32 %427, %429
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %466, label %432

432:                                              ; preds = %416
  %433 = load ptr, ptr %390, align 8, !tbaa !105
  br label %434

434:                                              ; preds = %432, %461
  %435 = phi i32 [ %439, %461 ], [ %430, %432 ]
  %436 = phi i32 [ %464, %461 ], [ 0, %432 ]
  %437 = phi ptr [ %462, %461 ], [ %420, %432 ]
  %438 = phi ptr [ %463, %461 ], [ %433, %432 ]
  %439 = add nsw i32 %435, -1
  %440 = getelementptr inbounds %struct.BPoint, ptr %438, i64 0, i32 3
  %441 = load i16, ptr %440, align 4, !tbaa !106
  %442 = and i16 %441, 1
  %443 = icmp eq i16 %442, 0
  br i1 %443, label %461, label %444

444:                                              ; preds = %434
  %445 = getelementptr inbounds %struct.BPoint, ptr %438, i64 0, i32 4
  %446 = load i16, ptr %445, align 2, !tbaa !162
  %447 = icmp eq i16 %446, 0
  br i1 %447, label %448, label %461

448:                                              ; preds = %444
  store i32 %436, ptr %437, align 4, !tbaa !66
  %449 = getelementptr inbounds i32, ptr %437, i64 1
  %450 = load float, ptr %438, align 4, !tbaa !82
  %451 = load float, ptr %5, align 4, !tbaa !82
  %452 = fadd float %450, %451
  store float %452, ptr %5, align 4, !tbaa !82
  %453 = getelementptr inbounds float, ptr %438, i64 1
  %454 = load float, ptr %453, align 4, !tbaa !82
  %455 = load float, ptr %421, align 4, !tbaa !82
  %456 = fadd float %454, %455
  store float %456, ptr %421, align 4, !tbaa !82
  %457 = getelementptr inbounds float, ptr %438, i64 2
  %458 = load float, ptr %457, align 4, !tbaa !82
  %459 = load float, ptr %422, align 4, !tbaa !82
  %460 = fadd float %458, %459
  store float %460, ptr %422, align 4, !tbaa !82
  br label %461

461:                                              ; preds = %448, %444, %434
  %462 = phi ptr [ %449, %448 ], [ %437, %444 ], [ %437, %434 ]
  %463 = getelementptr inbounds %struct.BPoint, ptr %438, i64 1
  %464 = add nuw nsw i32 %436, 1
  %465 = icmp eq i32 %439, 0
  br i1 %465, label %466, label %434, !llvm.loop !164

466:                                              ; preds = %461, %416
  %467 = sitofp i32 %414 to float
  %468 = fdiv float 1.000000e+00, %467
  %469 = load float, ptr %5, align 4, !tbaa !82
  %470 = fmul float %468, %469
  store float %470, ptr %5, align 4, !tbaa !82
  %471 = load float, ptr %421, align 4, !tbaa !82
  %472 = fmul float %468, %471
  store float %472, ptr %421, align 4, !tbaa !82
  %473 = load float, ptr %422, align 4, !tbaa !82
  %474 = fmul float %468, %473
  store float %474, ptr %422, align 4, !tbaa !82
  %475 = trunc i32 %414 to i8
  br label %476

476:                                              ; preds = %466, %413, %363, %226, %162, %149, %100, %6, %82
  %477 = phi i8 [ 1, %82 ], [ 0, %6 ], [ 1, %149 ], [ 0, %162 ], [ 0, %100 ], [ %372, %363 ], [ 0, %226 ], [ %475, %466 ], [ 0, %413 ]
  ret i8 %477
}

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #1

declare ptr @modifier_new(i32 noundef) local_unnamed_addr #1

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @modifier_unique_name(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @unit_m4(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_pose_channel_active(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_object_where_is_calc(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_va_mul_m4_series_4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #1

declare void @EDBM_mesh_load(ptr noundef) local_unnamed_addr #1

declare void @EDBM_mesh_make(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @EDBM_mesh_normals_update(ptr noundef) local_unnamed_addr #1

declare void @BKE_editmesh_tessface_calc(ptr noundef) local_unnamed_addr #1

declare void @load_editNurb(ptr noundef) local_unnamed_addr #1

declare void @make_editNurb(ptr noundef) local_unnamed_addr #1

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #1

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #1

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #1

declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @object_editcurve_get(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_object_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ED_operator_editmesh(ptr noundef) local_unnamed_addr #1

declare i32 @ED_operator_editsurfcurve(ptr noundef) local_unnamed_addr #1

declare i32 @ED_operator_editlattice(ptr noundef) local_unnamed_addr #1

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @modifier_free(ptr noundef) local_unnamed_addr #1

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CTX_data_pointer_get_type(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_object_modifier_hook_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @select_editcurve_hook(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @object_editcurve_get(ptr noundef %0) #5
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = icmp eq ptr %4, null
  br i1 %5, label %127, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 6
  %8 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 7
  %9 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 6
  %10 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 7
  %11 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 7
  %12 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 7
  br label %13

13:                                               ; preds = %6, %122
  %14 = phi ptr [ %4, %6 ], [ %125, %122 ]
  %15 = phi i32 [ 0, %6 ], [ %124, %122 ]
  %16 = phi i32 [ 0, %6 ], [ %123, %122 ]
  %17 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 2
  %18 = load i16, ptr %17, align 8, !tbaa !146
  %19 = icmp eq i16 %18, 1
  %20 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !148
  br i1 %19, label %22, label %85

22:                                               ; preds = %13
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %122, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 18
  %26 = load ptr, ptr %25, align 8, !tbaa !149
  %27 = load ptr, ptr %9, align 8, !tbaa !83
  %28 = mul i32 %21, 3
  br label %29

29:                                               ; preds = %24, %80
  %30 = phi i32 [ %21, %24 ], [ %34, %80 ]
  %31 = phi i32 [ %15, %24 ], [ %82, %80 ]
  %32 = phi i32 [ %16, %24 ], [ %81, %80 ]
  %33 = phi ptr [ %26, %24 ], [ %83, %80 ]
  %34 = add nsw i32 %30, -1
  %35 = sext i32 %32 to i64
  %36 = getelementptr inbounds i32, ptr %27, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !66
  %38 = icmp eq i32 %31, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 0, i32 7
  %41 = load i8, ptr %40, align 1, !tbaa !150
  %42 = or i8 %41, 1
  store i8 %42, ptr %40, align 1, !tbaa !150
  %43 = load i32, ptr %10, align 8, !tbaa !84
  %44 = add nsw i32 %43, -1
  %45 = icmp slt i32 %32, %44
  %46 = zext i1 %45 to i32
  %47 = add nsw i32 %32, %46
  br label %48

48:                                               ; preds = %39, %29
  %49 = phi i32 [ %32, %29 ], [ %47, %39 ]
  %50 = add nsw i32 %31, 1
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, ptr %27, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !66
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 0, i32 8
  %57 = load i8, ptr %56, align 4, !tbaa !152
  %58 = or i8 %57, 1
  store i8 %58, ptr %56, align 4, !tbaa !152
  %59 = load i32, ptr %11, align 8, !tbaa !84
  %60 = add nsw i32 %59, -1
  %61 = icmp slt i32 %49, %60
  %62 = zext i1 %61 to i32
  %63 = add nsw i32 %49, %62
  br label %64

64:                                               ; preds = %55, %48
  %65 = phi i32 [ %49, %48 ], [ %63, %55 ]
  %66 = add nsw i32 %31, 2
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, ptr %27, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !66
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 0, i32 9
  %73 = load i8, ptr %72, align 1, !tbaa !153
  %74 = or i8 %73, 1
  store i8 %74, ptr %72, align 1, !tbaa !153
  %75 = load i32, ptr %12, align 8, !tbaa !84
  %76 = add nsw i32 %75, -1
  %77 = icmp slt i32 %65, %76
  %78 = zext i1 %77 to i32
  %79 = add nsw i32 %65, %78
  br label %80

80:                                               ; preds = %71, %64
  %81 = phi i32 [ %65, %64 ], [ %79, %71 ]
  %82 = add nsw i32 %31, 3
  %83 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 1
  %84 = icmp eq i32 %34, 0
  br i1 %84, label %118, label %29, !llvm.loop !165

85:                                               ; preds = %13
  %86 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 7
  %87 = load i32, ptr %86, align 4, !tbaa !155
  %88 = mul nsw i32 %87, %21
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %122, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.Nurb, ptr %14, i64 0, i32 17
  %92 = load ptr, ptr %91, align 8, !tbaa !156
  %93 = load ptr, ptr %7, align 8, !tbaa !83
  br label %94

94:                                               ; preds = %90, %113
  %95 = phi i32 [ %88, %90 ], [ %99, %113 ]
  %96 = phi i32 [ %15, %90 ], [ %115, %113 ]
  %97 = phi i32 [ %16, %90 ], [ %114, %113 ]
  %98 = phi ptr [ %92, %90 ], [ %116, %113 ]
  %99 = add nsw i32 %95, -1
  %100 = sext i32 %97 to i64
  %101 = getelementptr inbounds i32, ptr %93, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !66
  %103 = icmp eq i32 %96, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %94
  %105 = getelementptr inbounds %struct.BPoint, ptr %98, i64 0, i32 3
  %106 = load i16, ptr %105, align 4, !tbaa !106
  %107 = or i16 %106, 1
  store i16 %107, ptr %105, align 4, !tbaa !106
  %108 = load i32, ptr %8, align 8, !tbaa !84
  %109 = add nsw i32 %108, -1
  %110 = icmp slt i32 %97, %109
  %111 = zext i1 %110 to i32
  %112 = add nsw i32 %97, %111
  br label %113

113:                                              ; preds = %104, %94
  %114 = phi i32 [ %97, %94 ], [ %112, %104 ]
  %115 = add nsw i32 %96, 1
  %116 = getelementptr inbounds %struct.BPoint, ptr %98, i64 1
  %117 = icmp eq i32 %99, 0
  br i1 %117, label %120, label %94, !llvm.loop !166

118:                                              ; preds = %80
  %119 = add i32 %15, %28
  br label %122

120:                                              ; preds = %113
  %121 = add i32 %15, %88
  br label %122

122:                                              ; preds = %120, %118, %85, %22
  %123 = phi i32 [ %16, %22 ], [ %16, %85 ], [ %81, %118 ], [ %114, %120 ]
  %124 = phi i32 [ %15, %22 ], [ %15, %85 ], [ %119, %118 ], [ %121, %120 ]
  %125 = load ptr, ptr %14, align 8, !tbaa !50
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %13, !llvm.loop !167

127:                                              ; preds = %122, %2
  ret void
}

declare void @BM_vert_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @EDBM_select_flush(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!47 = !{!35, !36, i64 88}
!48 = !{!49, !36, i64 112}
!49 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!50 = !{!36, !36, i64 0}
!51 = !{!52, !36, i64 32}
!52 = !{!"CollectionPointerLink", !36, i64 0, !36, i64 8, !53, i64 16}
!53 = !{!"PointerRNA", !54, i64 0, !36, i64 8, !36, i64 16}
!54 = !{!"", !36, i64 0}
!55 = !{!49, !36, i64 120}
!56 = !{!57, !41, i64 136}
!57 = !{!"Object", !58, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !59, i64 140, !59, i64 144, !59, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !60, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !59, i64 432, !59, i64 436, !36, i64 440, !36, i64 448, !59, i64 456, !59, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !61, i64 616, !61, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !59, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !59, i64 968, !59, i64 972, !59, i64 976, !59, i64 980, !59, i64 984, !61, i64 988, !61, i64 992, !61, i64 996, !61, i64 1000, !61, i64 1004, !61, i64 1008, !61, i64 1012, !61, i64 1016, !61, i64 1020, !61, i64 1024, !61, i64 1028, !61, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !61, i64 1048, !61, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !61, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !59, i64 1144, !59, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !61, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !62, i64 1304, !62, i64 1312, !59, i64 1320, !59, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!58 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !59, i64 100, !59, i64 104, !59, i64 108, !36, i64 112}
!59 = !{!"int", !37, i64 0}
!60 = !{!"bAnimVizSettings", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !59, i64 32, !59, i64 36, !59, i64 40, !59, i64 44}
!61 = !{!"float", !37, i64 0}
!62 = !{!"long", !37, i64 0}
!63 = !{i32 0, i32 2}
!64 = !{!35, !36, i64 48}
!65 = !{!35, !36, i64 104}
!66 = !{!59, !59, i64 0}
!67 = !{!68, !59, i64 16}
!68 = !{!"ModifierData", !36, i64 0, !36, i64 8, !59, i64 16, !59, i64 20, !59, i64 24, !59, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!69 = !{!70, !59, i64 0}
!70 = !{!"EnumPropertyItem", !59, i64 0, !36, i64 8, !59, i64 16, !36, i64 24, !36, i64 32}
!71 = !{!70, !59, i64 16}
!72 = !{!70, !36, i64 8}
!73 = !{!70, !36, i64 24}
!74 = distinct !{!74, !75, !76}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = !{!37, !37, i64 0}
!78 = !{!53, !36, i64 16}
!79 = !{!53, !36, i64 0}
!80 = !{!81, !59, i64 16}
!81 = !{!"HookModifierData", !68, i64 0, !36, i64 112, !37, i64 120, !37, i64 184, !37, i64 248, !61, i64 260, !36, i64 264, !59, i64 272, !61, i64 276, !37, i64 280}
!82 = !{!61, !61, i64 0}
!83 = !{!81, !36, i64 264}
!84 = !{!81, !59, i64 272}
!85 = !{!57, !36, i64 296}
!86 = !{!87, !36, i64 272}
!87 = !{!"Mesh", !58, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !88, i64 280, !88, i64 480, !88, i64 680, !88, i64 880, !88, i64 1080, !59, i64 1280, !59, i64 1284, !59, i64 1288, !59, i64 1292, !59, i64 1296, !59, i64 1300, !59, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !59, i64 1344, !41, i64 1348, !41, i64 1350, !61, i64 1352, !59, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !41, i64 1366, !36, i64 1368}
!88 = !{!"CustomData", !36, i64 0, !37, i64 8, !59, i64 172, !59, i64 176, !59, i64 180, !36, i64 184, !36, i64 192}
!89 = !{!90, !36, i64 0}
!90 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !59, i64 16, !36, i64 24, !59, i64 32, !36, i64 40, !36, i64 48, !62, i64 56, !36, i64 64, !59, i64 72, !36, i64 80, !59, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !59, i64 104}
!91 = !{!92, !37, i64 60}
!92 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !59, i64 56, !37, i64 60}
!93 = !{!92, !36, i64 40}
!94 = !{!92, !36, i64 48}
!95 = !{!96, !36, i64 32}
!96 = !{!"BMesh", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !59, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !59, i64 88, !59, i64 92, !59, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !59, i64 128, !36, i64 136, !88, i64 144, !88, i64 344, !88, i64 544, !88, i64 744, !41, i64 944, !59, i64 948, !59, i64 952, !59, i64 956, !39, i64 960, !36, i64 976, !39, i64 984, !36, i64 1000}
!97 = distinct !{!97, !75, !76}
!98 = !{!99, !36, i64 272}
!99 = !{!"Lattice", !58, i64 0, !36, i64 120, !41, i64 128, !41, i64 130, !41, i64 132, !41, i64 134, !41, i64 136, !41, i64 138, !41, i64 140, !41, i64 142, !37, i64 144, !37, i64 145, !37, i64 146, !37, i64 147, !59, i64 148, !61, i64 152, !61, i64 156, !61, i64 160, !61, i64 164, !61, i64 168, !61, i64 172, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !36, i64 272}
!100 = !{!101, !36, i64 0}
!101 = !{!"EditLatt", !36, i64 0, !59, i64 8, !37, i64 12}
!102 = !{!99, !41, i64 128}
!103 = !{!99, !41, i64 130}
!104 = !{!99, !41, i64 132}
!105 = !{!99, !36, i64 176}
!106 = !{!107, !41, i64 24}
!107 = !{!"BPoint", !37, i64 0, !61, i64 16, !61, i64 20, !41, i64 24, !41, i64 26, !61, i64 28, !61, i64 32}
!108 = distinct !{!108, !75, !76}
!109 = !{!57, !59, i64 944}
!110 = !{!111, !59, i64 16}
!111 = !{!"Base", !36, i64 0, !36, i64 8, !59, i64 16, !59, i64 20, !59, i64 24, !41, i64 28, !41, i64 30, !36, i64 32}
!112 = !{!113, !36, i64 168}
!113 = !{!"Scene", !58, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !59, i64 232, !59, i64 236, !59, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !114, i64 280, !123, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !59, i64 4380, !39, i64 4384, !124, i64 4400, !125, i64 4416, !128, i64 4600, !36, i64 4608, !129, i64 4616, !36, i64 4640, !62, i64 4648, !62, i64 4656, !116, i64 4664, !117, i64 4824, !130, i64 4888, !36, i64 4952}
!114 = !{!"RenderData", !115, i64 0, !36, i64 248, !36, i64 256, !118, i64 264, !119, i64 328, !59, i64 400, !59, i64 404, !59, i64 408, !61, i64 412, !59, i64 416, !59, i64 420, !59, i64 424, !59, i64 428, !41, i64 432, !41, i64 434, !61, i64 436, !61, i64 440, !61, i64 444, !61, i64 448, !61, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !59, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !59, i64 484, !59, i64 488, !41, i64 492, !41, i64 494, !59, i64 496, !59, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !59, i64 516, !59, i64 520, !59, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !120, i64 544, !120, i64 560, !121, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !61, i64 612, !61, i64 616, !61, i64 620, !61, i64 624, !59, i64 628, !61, i64 632, !61, i64 636, !61, i64 640, !61, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !61, i64 660, !61, i64 664, !41, i64 668, !41, i64 670, !61, i64 672, !61, i64 676, !37, i64 680, !59, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !59, i64 2520, !41, i64 2524, !41, i64 2526, !61, i64 2528, !61, i64 2532, !41, i64 2536, !41, i64 2538, !61, i64 2540, !41, i64 2544, !41, i64 2546, !59, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !61, i64 2560, !61, i64 2564, !36, i64 2568, !59, i64 2576, !61, i64 2580, !37, i64 2584, !122, i64 2616, !59, i64 3976, !59, i64 3980}
!115 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !61, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !116, i64 24, !117, i64 184}
!116 = !{!"ColorManagedViewSettings", !59, i64 0, !59, i64 4, !37, i64 8, !37, i64 72, !61, i64 136, !61, i64 140, !36, i64 144, !36, i64 152}
!117 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!118 = !{!"QuicktimeCodecSettings", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !59, i64 24, !59, i64 28, !59, i64 32, !59, i64 36, !59, i64 40, !59, i64 44, !41, i64 48, !41, i64 50, !59, i64 52, !59, i64 56, !59, i64 60}
!119 = !{!"FFMpegCodecData", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12, !59, i64 16, !59, i64 20, !59, i64 24, !59, i64 28, !61, i64 32, !59, i64 36, !59, i64 40, !59, i64 44, !59, i64 48, !59, i64 52, !59, i64 56, !59, i64 60, !36, i64 64}
!120 = !{!"rctf", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12}
!121 = !{!"rcti", !59, i64 0, !59, i64 4, !59, i64 8, !59, i64 12}
!122 = !{!"BakeData", !115, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !61, i64 1280, !61, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!123 = !{!"AudioData", !59, i64 0, !61, i64 4, !61, i64 8, !61, i64 12, !59, i64 16, !41, i64 20, !41, i64 22, !61, i64 24, !61, i64 28}
!124 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!125 = !{!"GameData", !124, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !126, i64 40, !41, i64 64, !41, i64 66, !61, i64 68, !127, i64 72, !61, i64 128, !61, i64 132, !59, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !61, i64 164, !61, i64 168, !61, i64 172, !61, i64 176, !61, i64 180}
!126 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !61, i64 8, !61, i64 12, !36, i64 16}
!127 = !{!"RecastData", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12, !61, i64 16, !61, i64 20, !61, i64 24, !61, i64 28, !61, i64 32, !61, i64 36, !59, i64 40, !61, i64 44, !61, i64 48, !41, i64 52, !41, i64 54}
!128 = !{!"UnitSettings", !61, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!129 = !{!"PhysicsSettings", !37, i64 0, !59, i64 12, !59, i64 16, !59, i64 20}
!130 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!131 = !{!132, !59, i64 68}
!132 = !{!"ModifierTypeInfo", !37, i64 0, !37, i64 32, !59, i64 64, !59, i64 68, !59, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208}
!133 = distinct !{!133, !75, !76}
!134 = !{!81, !36, i64 112}
!135 = !{!136, !36, i64 168}
!136 = !{!"bArmature", !58, i64 0, !36, i64 120, !39, i64 128, !39, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !59, i64 192, !59, i64 196, !59, i64 200, !59, i64 204, !41, i64 208, !41, i64 210, !59, i64 212, !59, i64 216, !59, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !59, i64 232, !59, i64 236, !59, i64 240, !59, i64 244, !59, i64 248, !59, i64 252}
!137 = !{!113, !36, i64 264}
!138 = !{!139, !37, i64 13}
!139 = !{!"BMHeader", !36, i64 0, !59, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!140 = distinct !{!140, !75, !76}
!141 = distinct !{!141, !75, !76}
!142 = !{!57, !41, i64 1126}
!143 = !{!144, !36, i64 0}
!144 = !{!"BMVert", !139, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!145 = distinct !{!145, !75, !76}
!146 = !{!147, !41, i64 16}
!147 = !{!"Nurb", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !59, i64 24, !59, i64 28, !37, i64 32, !41, i64 36, !41, i64 38, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !41, i64 80, !41, i64 82, !59, i64 84}
!148 = !{!147, !59, i64 24}
!149 = !{!147, !36, i64 72}
!150 = !{!151, !37, i64 51}
!151 = !{!"BezTriple", !37, i64 0, !61, i64 36, !61, i64 40, !61, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !61, i64 56, !61, i64 60, !61, i64 64, !37, i64 68}
!152 = !{!151, !37, i64 52}
!153 = !{!151, !37, i64 53}
!154 = distinct !{!154, !75, !76}
!155 = !{!147, !59, i64 28}
!156 = !{!147, !36, i64 64}
!157 = distinct !{!157, !75, !76}
!158 = distinct !{!158, !75, !76}
!159 = distinct !{!159, !75, !76}
!160 = distinct !{!160, !75, !76}
!161 = distinct !{!161, !75, !76}
!162 = !{!107, !41, i64 26}
!163 = distinct !{!163, !75, !76}
!164 = distinct !{!164, !75, !76}
!165 = distinct !{!165, !75, !76}
!166 = distinct !{!166, !75, !76}
!167 = distinct !{!167, !75, !76}
