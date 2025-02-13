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
%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.bDeformGroup = type { ptr, ptr, [64 x i8], i8, [7 x i8] }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_hook_add_selob(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_add_hook_selob_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @hook_op_edit_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_add_hook_selob_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.3) #8
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 2, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %13 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %3) #8
  br label %14

14:                                               ; preds = %19, %2
  %15 = phi ptr [ %3, %2 ], [ %16, %19 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !21
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br label %25

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.CollectionPointerLink, ptr %16, i64 0, i32 2, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = icmp eq ptr %21, %6
  br i1 %22, label %14, label %23

23:                                               ; preds = %19
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  %24 = icmp eq ptr %21, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %18, %23
  %26 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !26
  call void @BKE_report(ptr noundef %27, i32 noundef 32, ptr noundef nonnull @.str.28) #8
  br label %42

28:                                               ; preds = %23
  br i1 %11, label %36, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %31 = load i16, ptr %30, align 8, !tbaa !27
  %32 = icmp eq i16 %31, 25
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !26
  call void @BKE_report(ptr noundef %35, i32 noundef 32, ptr noundef nonnull @.str.29) #8
  br label %42

36:                                               ; preds = %29, %28
  %37 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !26
  %39 = call fastcc i32 @add_hook_object(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %21, i32 noundef %12, ptr noundef %38) #10, !range !34
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %6) #8
  br label %42

42:                                               ; preds = %36, %41, %33, %25
  %43 = phi i32 [ 2, %33 ], [ 4, %41 ], [ 2, %25 ], [ 2, %36 ]
  ret i32 %43
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @hook_op_edit_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @ED_operator_editmesh(ptr noundef %0) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = tail call i32 @ED_operator_editsurfcurve(ptr noundef %0) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = tail call i32 @ED_operator_editlattice(ptr noundef %0) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %1
  br label %14

14:                                               ; preds = %10, %7, %4, %13
  %15 = phi i32 [ 0, %13 ], [ 1, %4 ], [ 1, %7 ], [ 1, %10 ]
  ret i32 %15
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @OBJECT_OT_hook_add_newob(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.7, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_add_hook_newob_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @hook_op_edit_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_add_hook_newob_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !26
  %8 = tail call fastcc i32 @add_hook_object(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef null, i32 noundef 1, ptr noundef %7) #10, !range !34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67633152, ptr noundef %4) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %5) #8
  br label %11

11:                                               ; preds = %2, %10
  %12 = phi i32 [ 4, %10 ], [ 2, %2 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_hook_remove(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_hook_remove_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @hook_op_edit_poll, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %7, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.12, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #8
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @hook_mod_itemf) #8
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_hook_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !19
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.12) #8
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 26
  %8 = tail call ptr @BLI_findlink(ptr noundef nonnull %7, i32 noundef %5) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !26
  tail call void @BKE_report(ptr noundef %12, i32 noundef 32, ptr noundef nonnull @.str.34) #8
  br label %14

13:                                               ; preds = %2
  tail call void @BLI_remlink(ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  tail call void @modifier_free(ptr noundef nonnull %8) #8
  tail call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 2) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %6) #8
  br label %14

14:                                               ; preds = %13, %10
  %15 = phi i32 [ 4, %13 ], [ 2, %10 ]
  ret i32 %15
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @hook_mod_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca %struct.EnumPropertyItem, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) @__const.hook_mod_itemf.tmp, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  store ptr null, ptr %6, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !tbaa !37
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 26
  %12 = load ptr, ptr %11, align 8, !tbaa !21
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
  %22 = load i32, ptr %21, align 8, !tbaa !38
  %23 = icmp eq i32 %22, 9
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  store i32 %20, ptr %5, align 8, !tbaa !40
  store i32 449, ptr %15, align 8, !tbaa !42
  %25 = getelementptr inbounds %struct.ModifierData, ptr %19, i64 0, i32 6
  store ptr %25, ptr %16, align 8, !tbaa !43
  store ptr %25, ptr %17, align 8, !tbaa !44
  call void @RNA_enum_item_add(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #8
  br label %26

26:                                               ; preds = %18, %24
  %27 = add nuw nsw i32 %20, 1
  %28 = load ptr, ptr %19, align 8, !tbaa !21
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %18, !llvm.loop !45

30:                                               ; preds = %26, %10
  call void @RNA_enum_item_end(ptr noundef nonnull %6, ptr noundef nonnull %7) #8
  store i8 1, ptr %3, align 1, !tbaa !47
  %31 = load ptr, ptr %6, align 8, !tbaa !21
  br label %32

32:                                               ; preds = %4, %30
  %33 = phi ptr [ %31, %30 ], [ @DummyRNA_NULL_items, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #9
  ret ptr %33
}

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_hook_reset(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_hook_reset_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @hook_op_edit_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.18) #8
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @hook_mod_itemf) #8
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 536870912) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_hook_reset_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @RNA_HookModifier) #8
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.12) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store ptr null, ptr %4, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store ptr null, ptr %5, align 8, !tbaa !21
  call fastcc void @object_hook_from_context(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %8, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %9 = load ptr, ptr %5, align 8, !tbaa !21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !26
  call void @BKE_report(ptr noundef %13, i32 noundef 32, ptr noundef nonnull @.str.34) #8
  br label %16

14:                                               ; preds = %2
  %15 = load ptr, ptr %4, align 8, !tbaa !21
  call void @BKE_object_modifier_hook_reset(ptr noundef %15, ptr noundef nonnull %9) #8
  call void @DAG_id_tag_update(ptr noundef %15, i16 noundef signext 2) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %15) #8
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i32 [ 2, %11 ], [ 4, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_hook_recenter(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.19, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.21, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_hook_recenter_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @hook_op_edit_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.18) #8
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @hook_mod_itemf) #8
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 536870912) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_hook_recenter_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @RNA_HookModifier) #8
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.12) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store ptr null, ptr %4, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store ptr null, ptr %5, align 8, !tbaa !21
  %11 = call ptr @CTX_data_scene(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #9
  call fastcc void @object_hook_from_context(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %12 = load ptr, ptr %5, align 8, !tbaa !21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !26
  call void @BKE_report(ptr noundef %16, i32 noundef 32, ptr noundef nonnull @.str.34) #8
  br label %24

17:                                               ; preds = %2
  %18 = load ptr, ptr %4, align 8, !tbaa !21
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %6, ptr noundef nonnull %19) #8
  %20 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %7, ptr noundef nonnull %6) #8
  %21 = getelementptr inbounds %struct.HookModifierData, ptr %12, i64 0, i32 4
  %22 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 8
  %23 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 47, i64 3
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23) #10
  call void @mul_m3_v3(ptr noundef nonnull %7, ptr noundef nonnull %21) #8
  call void @DAG_id_tag_update(ptr noundef %18, i16 noundef signext 2) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %18) #8
  br label %24

24:                                               ; preds = %17, %14
  %25 = phi i32 [ 2, %14 ], [ 4, %17 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_hook_assign(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.22, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.24, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_hook_assign_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @hook_op_edit_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.18) #8
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @hook_mod_itemf) #8
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 536870912) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_hook_assign_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [3 x float], align 4
  %7 = alloca [64 x i8], align 16
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @RNA_HookModifier) #8
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  %13 = call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.12) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store ptr null, ptr %4, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store ptr null, ptr %5, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  call fastcc void @object_hook_from_context(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %13, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %14 = load ptr, ptr %5, align 8, !tbaa !21
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !26
  call void @BKE_report(ptr noundef %18, i32 noundef 32, ptr noundef nonnull @.str.34) #8
  br label %37

19:                                               ; preds = %2
  %20 = load ptr, ptr %4, align 8, !tbaa !21
  %21 = call fastcc zeroext i8 @object_hook_index_array(ptr noundef %10, ptr noundef %20, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %6) #10
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !26
  call void @BKE_report(ptr noundef %25, i32 noundef 16, ptr noundef nonnull @.str.30) #8
  br label %37

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.HookModifierData, ptr %14, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !21
  call void %31(ptr noundef nonnull %28) #8
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds %struct.HookModifierData, ptr %14, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %33, ptr noundef nonnull %6) #10
  %34 = load ptr, ptr %8, align 8, !tbaa !21
  store ptr %34, ptr %27, align 8, !tbaa !48
  %35 = load i32, ptr %9, align 4, !tbaa !37
  %36 = getelementptr inbounds %struct.HookModifierData, ptr %14, i64 0, i32 7
  store i32 %35, ptr %36, align 8, !tbaa !50
  call void @DAG_id_tag_update(ptr noundef %20, i16 noundef signext 2) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85458944, ptr noundef %20) #8
  br label %37

37:                                               ; preds = %32, %23, %16
  %38 = phi i32 [ 2, %16 ], [ 4, %32 ], [ 2, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OBJECT_OT_hook_select(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.25, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.27, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @object_hook_select_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @hook_op_edit_poll, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #8
  tail call void @RNA_def_enum_funcs(ptr noundef %9, ptr noundef nonnull @hook_mod_itemf) #8
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 536870912) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @object_hook_select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @CTX_data_pointer_get_type(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @RNA_HookModifier) #8
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.12) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store ptr null, ptr %4, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store ptr null, ptr %5, align 8, !tbaa !21
  call fastcc void @object_hook_from_context(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %8, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %9 = load ptr, ptr %5, align 8, !tbaa !21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !26
  call void @BKE_report(ptr noundef %13, i32 noundef 32, ptr noundef nonnull @.str.34) #8
  br label %18

14:                                               ; preds = %2
  %15 = load ptr, ptr %4, align 8, !tbaa !21
  call fastcc void @object_hook_select(ptr noundef %15, ptr noundef nonnull %9) #10
  %16 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !51
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef %17) #8
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i32 [ 2, %11 ], [ 4, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret i32 %19
}

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CTX_data_selected_objects(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @add_hook_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #9
  %12 = call fastcc zeroext i8 @object_hook_index_array(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %7) #10
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  call void @BKE_report(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.30) #8
  br label %73

15:                                               ; preds = %6
  %16 = icmp ne i32 %4, 1
  %17 = icmp ne ptr %3, null
  %18 = or i1 %17, %16
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = call fastcc ptr @add_hook_object_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  %21 = getelementptr inbounds %struct.Object, ptr %20, i64 0, i32 33
  %22 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @mul_v3_m4v3(ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %7) #8
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi ptr [ %3, %15 ], [ %20, %19 ]
  %25 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 26
  br label %26

26:                                               ; preds = %30, %23
  %27 = phi ptr [ %25, %23 ], [ %28, %30 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !21
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ModifierData, ptr %28, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !38
  %33 = call ptr @modifierType_getInfo(i32 noundef %32) #8
  %34 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %33, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !52
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %26, label %37, !llvm.loop !54

37:                                               ; preds = %26, %30
  %38 = call ptr @modifier_new(i32 noundef 9) #8
  call void @BLI_insertlinkbefore(ptr noundef nonnull %25, ptr noundef %28, ptr noundef %38) #8
  %39 = getelementptr inbounds %struct.ModifierData, ptr %38, i64 0, i32 6
  %40 = getelementptr inbounds %struct.ID, ptr %24, i64 0, i32 4, i64 2
  %41 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %39, i64 noundef 64, ptr noundef nonnull @.str.31, ptr noundef nonnull %40) #8
  call void @modifier_unique_name(ptr noundef nonnull %25, ptr noundef %38) #8
  %42 = getelementptr inbounds %struct.HookModifierData, ptr %38, i64 0, i32 1
  store ptr %24, ptr %42, align 8, !tbaa !55
  %43 = load ptr, ptr %10, align 8, !tbaa !21
  %44 = getelementptr inbounds %struct.HookModifierData, ptr %38, i64 0, i32 6
  store ptr %43, ptr %44, align 8, !tbaa !48
  %45 = getelementptr inbounds %struct.HookModifierData, ptr %38, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %45, ptr noundef nonnull %7) #10
  %46 = load i32, ptr %9, align 4, !tbaa !37
  %47 = getelementptr inbounds %struct.HookModifierData, ptr %38, i64 0, i32 7
  store i32 %46, ptr %47, align 8, !tbaa !50
  %48 = getelementptr inbounds %struct.HookModifierData, ptr %38, i64 0, i32 9
  %49 = call ptr @BLI_strncpy(ptr noundef nonnull %48, ptr noundef nonnull %11, i64 noundef 64) #8
  call void @unit_m4(ptr noundef nonnull %8) #8
  %50 = icmp eq i32 %4, 3
  br i1 %50, label %51, label %67

51:                                               ; preds = %37
  %52 = getelementptr inbounds %struct.Object, ptr %24, i64 0, i32 19
  %53 = load ptr, ptr %52, align 8, !tbaa !51
  %54 = getelementptr inbounds %struct.bArmature, ptr %53, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !56
  %56 = icmp eq ptr %55, null
  br i1 %56, label %66, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.HookModifierData, ptr %38, i64 0, i32 2
  %59 = getelementptr inbounds %struct.Bone, ptr %55, i64 0, i32 5
  %60 = call ptr @BLI_strncpy(ptr noundef nonnull %58, ptr noundef nonnull %59, i64 noundef 64) #8
  %61 = call ptr @BKE_pose_channel_active(ptr noundef nonnull %24) #8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.bPoseChannel, ptr %61, i64 0, i32 29
  %65 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %64) #8
  br label %67

66:                                               ; preds = %51
  call void @BKE_report(ptr noundef %5, i32 noundef 16, ptr noundef nonnull @.str.32) #8
  br label %67

67:                                               ; preds = %66, %63, %57, %37
  call void @BKE_object_where_is_calc(ptr noundef %1, ptr noundef %24) #8
  %68 = getelementptr inbounds %struct.Object, ptr %24, i64 0, i32 50
  %69 = getelementptr inbounds %struct.Object, ptr %24, i64 0, i32 47
  %70 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %68, ptr noundef nonnull %69) #8
  %71 = getelementptr inbounds %struct.HookModifierData, ptr %38, i64 0, i32 3
  %72 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @_va_mul_m4_series_4(ptr noundef nonnull %71, ptr noundef nonnull %8, ptr noundef nonnull %68, ptr noundef nonnull %72) #8
  call void @DAG_relations_tag_update(ptr noundef %0) #8
  br label %73

73:                                               ; preds = %67, %14
  %74 = phi i32 [ 1, %67 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  ret i32 %74
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @object_hook_index_array(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr noundef %4, ptr nocapture noundef %5) unnamed_addr #0 {
  store ptr null, ptr %3, align 8, !tbaa !21
  store i32 0, ptr %2, align 4, !tbaa !37
  store i8 0, ptr %4, align 1, !tbaa !47
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !27
  switch i16 %8, label %31 [
    i16 1, label %9
    i16 2, label %20
    i16 3, label %20
    i16 22, label %23
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  tail call void @EDBM_mesh_load(ptr noundef nonnull %1) #8
  %12 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  tail call void @EDBM_mesh_make(ptr noundef %13, ptr noundef nonnull %1) #8
  %14 = getelementptr inbounds %struct.Mesh, ptr %11, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !77
  tail call void @EDBM_mesh_normals_update(ptr noundef %15) #8
  tail call void @BKE_editmesh_tessface_calc(ptr noundef %15) #8
  %16 = tail call fastcc i32 @return_editmesh_indexar(ptr noundef %15, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %5) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %9
  %19 = tail call fastcc zeroext i8 @return_editmesh_vgroup(ptr noundef nonnull %1, ptr noundef %15, ptr noundef nonnull %4, ptr noundef %5) #10, !range !80
  br label %31

20:                                               ; preds = %6, %6
  tail call void @load_editNurb(ptr noundef nonnull %1) #8
  tail call void @make_editNurb(ptr noundef nonnull %1) #8
  %21 = tail call fastcc i32 @return_editcurve_indexar(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %5) #10
  %22 = trunc i32 %21 to i8
  br label %31

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %25 = load ptr, ptr %24, align 8, !tbaa !51
  %26 = getelementptr inbounds %struct.Lattice, ptr %25, i64 0, i32 26
  %27 = load ptr, ptr %26, align 8, !tbaa !81
  %28 = load ptr, ptr %27, align 8, !tbaa !83
  %29 = tail call fastcc i32 @return_editlattice_indexar(ptr noundef %28, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %5) #10
  %30 = trunc i32 %29 to i8
  br label %31

31:                                               ; preds = %6, %18, %9, %23, %20
  %32 = phi i8 [ %30, %23 ], [ %22, %20 ], [ %19, %18 ], [ 1, %9 ], [ 0, %6 ]
  ret i8 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @add_hook_object_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @BKE_object_add(ptr noundef %0, ptr noundef %1, i32 noundef 0) #8
  %5 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef %2) #8
  %6 = tail call ptr @BKE_scene_base_find(ptr noundef %1, ptr noundef %4) #8
  %7 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 52
  %8 = load i32, ptr %7, align 8, !tbaa !85
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 52
  store i32 %8, ptr %9, align 8, !tbaa !85
  %10 = getelementptr inbounds %struct.Base, ptr %6, i64 0, i32 2
  store i32 %8, ptr %10, align 8, !tbaa !86
  %11 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 6
  store ptr %5, ptr %11, align 8, !tbaa !88
  ret ptr %4
}

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @modifier_new(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @modifier_unique_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %1, align 4, !tbaa !89
  store float %3, ptr %0, align 4, !tbaa !89
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !89
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !89
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !89
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !89
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_pose_channel_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_object_where_is_calc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_va_mul_m4_series_4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DAG_relations_tag_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @EDBM_mesh_load(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @EDBM_mesh_make(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @EDBM_mesh_normals_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_editmesh_tessface_calc(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @return_editmesh_indexar(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  %6 = load ptr, ptr %0, align 8, !tbaa !90
  %7 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %6) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %44, label %9

9:                                                ; preds = %4, %9
  %10 = phi i32 [ %14, %9 ], [ 0, %4 ]
  %11 = phi ptr [ %15, %9 ], [ %7, %4 ]
  %12 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %11) #10
  %13 = zext nneg i8 %12 to i32
  %14 = add nuw nsw i32 %10, %13
  %15 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9, !llvm.loop !92

17:                                               ; preds = %9
  %18 = icmp eq i32 %14, 0
  br i1 %18, label %44, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !21
  %21 = shl nsw i32 %14, 2
  %22 = zext nneg i32 %21 to i64
  %23 = call ptr %20(i64 noundef %22, ptr noundef nonnull @.str.33) #8
  store ptr %23, ptr %2, align 8, !tbaa !21
  store i32 %14, ptr %1, align 4, !tbaa !37
  call fastcc void @zero_v3(ptr noundef %3) #10
  %24 = load ptr, ptr %0, align 8, !tbaa !90
  %25 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %24) #10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %19, %36
  %28 = phi i32 [ %38, %36 ], [ 0, %19 ]
  %29 = phi ptr [ %37, %36 ], [ %23, %19 ]
  %30 = phi ptr [ %39, %36 ], [ %25, %19 ]
  %31 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %30) #10
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  store i32 %28, ptr %29, align 4, !tbaa !37
  %34 = getelementptr inbounds i32, ptr %29, i64 1
  %35 = getelementptr inbounds %struct.BMVert, ptr %30, i64 0, i32 2
  call fastcc void @add_v3_v3(ptr noundef %3, ptr noundef nonnull %35) #10
  br label %36

36:                                               ; preds = %33, %27
  %37 = phi ptr [ %34, %33 ], [ %29, %27 ]
  %38 = add nuw nsw i32 %28, 1
  %39 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #10
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %27, !llvm.loop !93

41:                                               ; preds = %36, %19
  %42 = sitofp i32 %14 to float
  %43 = fdiv float 1.000000e+00, %42
  call fastcc void @mul_v3_fl(ptr noundef %3, float noundef %43) #10
  br label %44

44:                                               ; preds = %4, %17, %41
  %45 = phi i32 [ 0, %17 ], [ %14, %41 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  ret i32 %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @return_editmesh_vgroup(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 97
  %7 = load i16, ptr %6, align 2, !tbaa !94
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call fastcc void @zero_v3(ptr noundef %3) #10
  br label %48

10:                                               ; preds = %4
  %11 = load ptr, ptr %1, align 8, !tbaa !90
  %12 = getelementptr inbounds %struct.BMesh, ptr %11, i64 0, i32 24
  %13 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %12, i32 noundef 2) #8
  tail call fastcc void @zero_v3(ptr noundef %3) #10
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %48, label %15

15:                                               ; preds = %10
  %16 = load i16, ptr %6, align 2, !tbaa !94
  %17 = zext i16 %16 to i32
  %18 = add nsw i32 %17, -1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  %19 = load ptr, ptr %1, align 8, !tbaa !90
  %20 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %19) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %47, label %22

22:                                               ; preds = %15
  %23 = sext i32 %13 to i64
  br label %24

24:                                               ; preds = %22, %34
  %25 = phi ptr [ %20, %22 ], [ %36, %34 ]
  %26 = phi i32 [ 0, %22 ], [ %35, %34 ]
  %27 = load ptr, ptr %25, align 8, !tbaa !95
  %28 = getelementptr inbounds i8, ptr %27, i64 %23
  %29 = call float @defvert_find_weight(ptr noundef %28, i32 noundef %18) #8
  %30 = fcmp ogt float %29, 0.000000e+00
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.BMVert, ptr %25, i64 0, i32 2
  call fastcc void @add_v3_v3(ptr noundef %3, ptr noundef nonnull %32) #10
  %33 = add nsw i32 %26, 1
  br label %34

34:                                               ; preds = %24, %31
  %35 = phi i32 [ %33, %31 ], [ %26, %24 ]
  %36 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #10
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %24, !llvm.loop !98

38:                                               ; preds = %34
  %39 = icmp eq i32 %35, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %42 = call ptr @BLI_findlink(ptr noundef nonnull %41, i32 noundef %18) #8
  %43 = getelementptr inbounds %struct.bDeformGroup, ptr %42, i64 0, i32 2
  %44 = call ptr @BLI_strncpy(ptr noundef %2, ptr noundef nonnull %43, i64 noundef 64) #8
  %45 = sitofp i32 %35 to float
  %46 = fdiv float 1.000000e+00, %45
  call fastcc void @mul_v3_fl(ptr noundef %3, float noundef %46) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  br label %48

47:                                               ; preds = %15, %38
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  br label %48

48:                                               ; preds = %9, %10, %47, %40
  %49 = phi i8 [ 1, %40 ], [ 0, %47 ], [ 0, %10 ], [ 0, %9 ]
  ret i8 %49
}

; Function Attrs: optsize
declare void @load_editNurb(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @make_editNurb(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @return_editcurve_indexar(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @object_editcurve_get(ptr noundef %0) #8
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %160, label %8

8:                                                ; preds = %4, %63
  %9 = phi ptr [ %65, %63 ], [ %6, %4 ]
  %10 = phi i32 [ %64, %63 ], [ 0, %4 ]
  %11 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 2
  %12 = load i16, ptr %11, align 8, !tbaa !99
  %13 = icmp eq i16 %12, 1
  %14 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !101
  br i1 %13, label %16, label %43

16:                                               ; preds = %8
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %63, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 18
  %20 = load ptr, ptr %19, align 8, !tbaa !102
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i32 [ %40, %21 ], [ %10, %18 ]
  %23 = phi i32 [ %25, %21 ], [ %15, %18 ]
  %24 = phi ptr [ %41, %21 ], [ %20, %18 ]
  %25 = add nsw i32 %23, -1
  %26 = getelementptr inbounds %struct.BezTriple, ptr %24, i64 0, i32 7
  %27 = load i8, ptr %26, align 1, !tbaa !103
  %28 = and i8 %27, 1
  %29 = zext nneg i8 %28 to i32
  %30 = add i32 %22, %29
  %31 = getelementptr inbounds %struct.BezTriple, ptr %24, i64 0, i32 8
  %32 = load i8, ptr %31, align 4, !tbaa !105
  %33 = and i8 %32, 1
  %34 = zext nneg i8 %33 to i32
  %35 = add i32 %30, %34
  %36 = getelementptr inbounds %struct.BezTriple, ptr %24, i64 0, i32 9
  %37 = load i8, ptr %36, align 1, !tbaa !106
  %38 = and i8 %37, 1
  %39 = zext nneg i8 %38 to i32
  %40 = add i32 %35, %39
  %41 = getelementptr inbounds %struct.BezTriple, ptr %24, i64 1
  %42 = icmp eq i32 %25, 0
  br i1 %42, label %63, label %21, !llvm.loop !107

43:                                               ; preds = %8
  %44 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 7
  %45 = load i32, ptr %44, align 4, !tbaa !108
  %46 = mul nsw i32 %45, %15
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.Nurb, ptr %9, i64 0, i32 17
  %50 = load ptr, ptr %49, align 8, !tbaa !109
  br label %51

51:                                               ; preds = %48, %51
  %52 = phi i32 [ %60, %51 ], [ %10, %48 ]
  %53 = phi i32 [ %55, %51 ], [ %46, %48 ]
  %54 = phi ptr [ %61, %51 ], [ %50, %48 ]
  %55 = add nsw i32 %53, -1
  %56 = getelementptr inbounds %struct.BPoint, ptr %54, i64 0, i32 3
  %57 = load i16, ptr %56, align 4, !tbaa !110
  %58 = and i16 %57, 1
  %59 = zext nneg i16 %58 to i32
  %60 = add i32 %52, %59
  %61 = getelementptr inbounds %struct.BPoint, ptr %54, i64 1
  %62 = icmp eq i32 %55, 0
  br i1 %62, label %63, label %51, !llvm.loop !112

63:                                               ; preds = %51, %21, %43, %16
  %64 = phi i32 [ %10, %16 ], [ %10, %43 ], [ %40, %21 ], [ %60, %51 ]
  %65 = load ptr, ptr %9, align 8, !tbaa !21
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %8, !llvm.loop !113

67:                                               ; preds = %63
  %68 = icmp eq i32 %64, 0
  br i1 %68, label %160, label %69

69:                                               ; preds = %67
  %70 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !21
  %71 = shl nsw i32 %64, 2
  %72 = sext i32 %71 to i64
  %73 = tail call ptr %70(i64 noundef %72, ptr noundef nonnull @.str.33) #8
  store ptr %73, ptr %2, align 8, !tbaa !21
  store i32 %64, ptr %1, align 4, !tbaa !37
  tail call fastcc void @zero_v3(ptr noundef %3) #10
  %74 = load ptr, ptr %5, align 8, !tbaa !21
  %75 = icmp eq ptr %74, null
  br i1 %75, label %157, label %76

76:                                               ; preds = %69, %152
  %77 = phi ptr [ %155, %152 ], [ %74, %69 ]
  %78 = phi i32 [ %154, %152 ], [ 0, %69 ]
  %79 = phi ptr [ %153, %152 ], [ %73, %69 ]
  %80 = getelementptr inbounds %struct.Nurb, ptr %77, i64 0, i32 2
  %81 = load i16, ptr %80, align 8, !tbaa !99
  %82 = icmp eq i16 %81, 1
  %83 = getelementptr inbounds %struct.Nurb, ptr %77, i64 0, i32 6
  %84 = load i32, ptr %83, align 8, !tbaa !101
  br i1 %82, label %85, label %127

85:                                               ; preds = %76
  %86 = icmp eq i32 %84, 0
  br i1 %86, label %152, label %87

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.Nurb, ptr %77, i64 0, i32 18
  %89 = load ptr, ptr %88, align 8, !tbaa !102
  br label %90

90:                                               ; preds = %87, %122
  %91 = phi i32 [ %95, %122 ], [ %84, %87 ]
  %92 = phi i32 [ %124, %122 ], [ %78, %87 ]
  %93 = phi ptr [ %123, %122 ], [ %79, %87 ]
  %94 = phi ptr [ %125, %122 ], [ %89, %87 ]
  %95 = add nsw i32 %91, -1
  %96 = getelementptr inbounds %struct.BezTriple, ptr %94, i64 0, i32 7
  %97 = load i8, ptr %96, align 1, !tbaa !103
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %90
  store i32 %92, ptr %93, align 4, !tbaa !37
  %101 = getelementptr inbounds i32, ptr %93, i64 1
  tail call fastcc void @add_v3_v3(ptr noundef %3, ptr noundef nonnull %94) #10
  br label %102

102:                                              ; preds = %100, %90
  %103 = phi ptr [ %101, %100 ], [ %93, %90 ]
  %104 = getelementptr inbounds %struct.BezTriple, ptr %94, i64 0, i32 8
  %105 = load i8, ptr %104, align 4, !tbaa !105
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %102
  %109 = add nsw i32 %92, 1
  store i32 %109, ptr %103, align 4, !tbaa !37
  %110 = getelementptr inbounds i32, ptr %103, i64 1
  %111 = getelementptr inbounds [3 x [3 x float]], ptr %94, i64 0, i64 1
  tail call fastcc void @add_v3_v3(ptr noundef %3, ptr noundef nonnull %111) #10
  br label %112

112:                                              ; preds = %108, %102
  %113 = phi ptr [ %110, %108 ], [ %103, %102 ]
  %114 = getelementptr inbounds %struct.BezTriple, ptr %94, i64 0, i32 9
  %115 = load i8, ptr %114, align 1, !tbaa !106
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %112
  %119 = add nsw i32 %92, 2
  store i32 %119, ptr %113, align 4, !tbaa !37
  %120 = getelementptr inbounds i32, ptr %113, i64 1
  %121 = getelementptr inbounds [3 x [3 x float]], ptr %94, i64 0, i64 2
  tail call fastcc void @add_v3_v3(ptr noundef %3, ptr noundef nonnull %121) #10
  br label %122

122:                                              ; preds = %118, %112
  %123 = phi ptr [ %120, %118 ], [ %113, %112 ]
  %124 = add nsw i32 %92, 3
  %125 = getelementptr inbounds %struct.BezTriple, ptr %94, i64 1
  %126 = icmp eq i32 %95, 0
  br i1 %126, label %152, label %90, !llvm.loop !114

127:                                              ; preds = %76
  %128 = getelementptr inbounds %struct.Nurb, ptr %77, i64 0, i32 7
  %129 = load i32, ptr %128, align 4, !tbaa !108
  %130 = mul nsw i32 %129, %84
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %152, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.Nurb, ptr %77, i64 0, i32 17
  %134 = load ptr, ptr %133, align 8, !tbaa !109
  br label %135

135:                                              ; preds = %132, %147
  %136 = phi i32 [ %140, %147 ], [ %130, %132 ]
  %137 = phi i32 [ %149, %147 ], [ %78, %132 ]
  %138 = phi ptr [ %148, %147 ], [ %79, %132 ]
  %139 = phi ptr [ %150, %147 ], [ %134, %132 ]
  %140 = add nsw i32 %136, -1
  %141 = getelementptr inbounds %struct.BPoint, ptr %139, i64 0, i32 3
  %142 = load i16, ptr %141, align 4, !tbaa !110
  %143 = and i16 %142, 1
  %144 = icmp eq i16 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %135
  store i32 %137, ptr %138, align 4, !tbaa !37
  %146 = getelementptr inbounds i32, ptr %138, i64 1
  tail call fastcc void @add_v3_v3(ptr noundef %3, ptr noundef nonnull %139) #10
  br label %147

147:                                              ; preds = %145, %135
  %148 = phi ptr [ %146, %145 ], [ %138, %135 ]
  %149 = add nsw i32 %137, 1
  %150 = getelementptr inbounds %struct.BPoint, ptr %139, i64 1
  %151 = icmp eq i32 %140, 0
  br i1 %151, label %152, label %135, !llvm.loop !115

152:                                              ; preds = %147, %122, %127, %85
  %153 = phi ptr [ %79, %85 ], [ %79, %127 ], [ %123, %122 ], [ %148, %147 ]
  %154 = phi i32 [ %78, %85 ], [ %78, %127 ], [ %124, %122 ], [ %149, %147 ]
  %155 = load ptr, ptr %77, align 8, !tbaa !21
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %76, !llvm.loop !116

157:                                              ; preds = %152, %69
  %158 = sitofp i32 %64 to float
  %159 = fdiv float 1.000000e+00, %158
  tail call fastcc void @mul_v3_fl(ptr noundef %3, float noundef %159) #10
  br label %160

160:                                              ; preds = %4, %67, %157
  %161 = phi i32 [ 0, %67 ], [ %64, %157 ], [ 0, %4 ]
  ret i32 %161
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @return_editlattice_indexar(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !117
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 2, !tbaa !118
  %10 = sext i16 %9 to i32
  %11 = mul nsw i32 %10, %7
  %12 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  %13 = load i16, ptr %12, align 4, !tbaa !119
  %14 = sext i16 %13 to i32
  %15 = mul nsw i32 %11, %14
  %16 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 21
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %81, label %18

18:                                               ; preds = %4
  %19 = load ptr, ptr %16, align 8, !tbaa !120
  br label %20

20:                                               ; preds = %18, %35
  %21 = phi i32 [ %24, %35 ], [ %15, %18 ]
  %22 = phi i32 [ %36, %35 ], [ 0, %18 ]
  %23 = phi ptr [ %37, %35 ], [ %19, %18 ]
  %24 = add nsw i32 %21, -1
  %25 = getelementptr inbounds %struct.BPoint, ptr %23, i64 0, i32 3
  %26 = load i16, ptr %25, align 4, !tbaa !110
  %27 = and i16 %26, 1
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.BPoint, ptr %23, i64 0, i32 4
  %31 = load i16, ptr %30, align 2, !tbaa !121
  %32 = icmp eq i16 %31, 0
  %33 = zext i1 %32 to i32
  %34 = add nsw i32 %22, %33
  br label %35

35:                                               ; preds = %29, %20
  %36 = phi i32 [ %22, %20 ], [ %34, %29 ]
  %37 = getelementptr inbounds %struct.BPoint, ptr %23, i64 1
  %38 = icmp eq i32 %24, 0
  br i1 %38, label %39, label %20, !llvm.loop !122

39:                                               ; preds = %35
  %40 = icmp eq i32 %36, 0
  br i1 %40, label %81, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !21
  %43 = shl nsw i32 %36, 2
  %44 = sext i32 %43 to i64
  %45 = tail call ptr %42(i64 noundef %44, ptr noundef nonnull @.str.33) #8
  store ptr %45, ptr %2, align 8, !tbaa !21
  store i32 %36, ptr %1, align 4, !tbaa !37
  tail call fastcc void @zero_v3(ptr noundef %3) #10
  %46 = load i16, ptr %5, align 8, !tbaa !117
  %47 = sext i16 %46 to i32
  %48 = load i16, ptr %8, align 2, !tbaa !118
  %49 = sext i16 %48 to i32
  %50 = mul nsw i32 %49, %47
  %51 = load i16, ptr %12, align 4, !tbaa !119
  %52 = sext i16 %51 to i32
  %53 = mul nsw i32 %50, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %78, label %55

55:                                               ; preds = %41
  %56 = load ptr, ptr %16, align 8, !tbaa !120
  br label %57

57:                                               ; preds = %55, %73
  %58 = phi i32 [ %62, %73 ], [ %53, %55 ]
  %59 = phi i32 [ %76, %73 ], [ 0, %55 ]
  %60 = phi ptr [ %74, %73 ], [ %45, %55 ]
  %61 = phi ptr [ %75, %73 ], [ %56, %55 ]
  %62 = add nsw i32 %58, -1
  %63 = getelementptr inbounds %struct.BPoint, ptr %61, i64 0, i32 3
  %64 = load i16, ptr %63, align 4, !tbaa !110
  %65 = and i16 %64, 1
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %57
  %68 = getelementptr inbounds %struct.BPoint, ptr %61, i64 0, i32 4
  %69 = load i16, ptr %68, align 2, !tbaa !121
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  store i32 %59, ptr %60, align 4, !tbaa !37
  %72 = getelementptr inbounds i32, ptr %60, i64 1
  tail call fastcc void @add_v3_v3(ptr noundef %3, ptr noundef nonnull %61) #10
  br label %73

73:                                               ; preds = %67, %71, %57
  %74 = phi ptr [ %72, %71 ], [ %60, %67 ], [ %60, %57 ]
  %75 = getelementptr inbounds %struct.BPoint, ptr %61, i64 1
  %76 = add nuw nsw i32 %59, 1
  %77 = icmp eq i32 %62, 0
  br i1 %77, label %78, label %57, !llvm.loop !123

78:                                               ; preds = %73, %41
  %79 = sitofp i32 %36 to float
  %80 = fdiv float 1.000000e+00, %79
  tail call fastcc void @mul_v3_fl(ptr noundef %3, float noundef %80) #10
  br label %81

81:                                               ; preds = %4, %39, %78
  %82 = phi i32 [ 0, %39 ], [ %36, %78 ], [ 0, %4 ]
  ret i32 %82
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1) #10
  %3 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #10
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !124
  %4 = and i8 %3, 1
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !125
  %4 = tail call ptr %3(ptr noundef %0) #8
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #2 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !89
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %1, align 4, !tbaa !89
  %4 = load float, ptr %0, align 4, !tbaa !89
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !89
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !89
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !89
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !89
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !89
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !89
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #4 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !89
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !89
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !89
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !89
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 1, ptr %3, align 4, !tbaa !127
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %4, align 8, !tbaa !128
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %5, align 8, !tbaa !125
  %6 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  store ptr %7, ptr %0, align 8, !tbaa !47
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #1

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @object_editcurve_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_object_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_operator_editmesh(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_operator_editsurfcurve(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_operator_editlattice(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @modifier_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_data_pointer_get_type(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @object_hook_from_context(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !131
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %1, align 8, !tbaa !132
  br label %15

11:                                               ; preds = %5
  %12 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %13 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 26
  %14 = tail call ptr @BLI_findlink(ptr noundef nonnull %13, i32 noundef %2) #8
  br label %15

15:                                               ; preds = %11, %9
  %16 = phi ptr [ %10, %9 ], [ %12, %11 ]
  %17 = phi ptr [ %7, %9 ], [ %14, %11 ]
  %18 = icmp ne ptr %16, null
  %19 = icmp ne ptr %17, null
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ModifierData, ptr %17, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !133
  %24 = icmp eq i32 %23, 9
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %15
  br label %26

26:                                               ; preds = %21, %25
  %27 = phi ptr [ null, %25 ], [ %16, %21 ]
  %28 = phi ptr [ null, %25 ], [ %17, %21 ]
  store ptr %27, ptr %3, align 8, !tbaa !21
  store ptr %28, ptr %4, align 8, !tbaa !21
  ret void
}

; Function Attrs: optsize
declare void @BKE_object_modifier_hook_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 {
  %4 = load float, ptr %1, align 4, !tbaa !89
  %5 = load float, ptr %2, align 4, !tbaa !89
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !89
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !89
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !89
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !89
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !89
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !89
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !89
  ret void
}

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @object_hook_select(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !27
  switch i16 %8, label %13 [
    i16 1, label %9
    i16 22, label %10
    i16 2, label %11
    i16 3, label %12
  ]

9:                                                ; preds = %6
  tail call fastcc void @select_editbmesh_hook(ptr noundef nonnull %0, ptr noundef nonnull %1) #10
  br label %13

10:                                               ; preds = %6
  tail call fastcc void @select_editlattice_hook(ptr noundef nonnull %0, ptr noundef nonnull %1) #10
  br label %13

11:                                               ; preds = %6
  tail call fastcc void @select_editcurve_hook(ptr noundef nonnull %0, ptr noundef nonnull %1) #10
  br label %13

12:                                               ; preds = %6
  tail call fastcc void @select_editcurve_hook(ptr noundef nonnull %0, ptr noundef nonnull %1) #10
  br label %13

13:                                               ; preds = %6, %10, %12, %11, %2, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @select_editbmesh_hook(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  %8 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = icmp eq ptr %9, null
  br i1 %10, label %39, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %7, align 8, !tbaa !90
  %13 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %12) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %38, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 7
  br label %17

17:                                               ; preds = %15, %33
  %18 = phi i32 [ 0, %15 ], [ %35, %33 ]
  %19 = phi i32 [ 0, %15 ], [ %34, %33 ]
  %20 = phi ptr [ %13, %15 ], [ %36, %33 ]
  %21 = load ptr, ptr %8, align 8, !tbaa !48
  %22 = sext i32 %19 to i64
  %23 = getelementptr inbounds i32, ptr %21, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !37
  %25 = icmp eq i32 %18, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load ptr, ptr %7, align 8, !tbaa !90
  call void @BM_vert_select_set(ptr noundef %27, ptr noundef nonnull %20, i8 noundef zeroext 1) #8
  %28 = load i32, ptr %16, align 8, !tbaa !50
  %29 = add nsw i32 %28, -1
  %30 = icmp slt i32 %19, %29
  %31 = zext i1 %30 to i32
  %32 = add nsw i32 %19, %31
  br label %33

33:                                               ; preds = %26, %17
  %34 = phi i32 [ %19, %17 ], [ %32, %26 ]
  %35 = add nuw nsw i32 %18, 1
  %36 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #10
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %17, !llvm.loop !134

38:                                               ; preds = %33, %11
  call void @EDBM_select_flush(ptr noundef nonnull %7) #8
  br label %39

39:                                               ; preds = %2, %38
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @select_editlattice_hook(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 26
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  %8 = getelementptr inbounds %struct.Lattice, ptr %7, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !117
  %10 = sext i16 %9 to i32
  %11 = getelementptr inbounds %struct.Lattice, ptr %7, i64 0, i32 3
  %12 = load i16, ptr %11, align 2, !tbaa !118
  %13 = sext i16 %12 to i32
  %14 = mul nsw i32 %13, %10
  %15 = getelementptr inbounds %struct.Lattice, ptr %7, i64 0, i32 4
  %16 = load i16, ptr %15, align 4, !tbaa !119
  %17 = sext i16 %16 to i32
  %18 = mul nsw i32 %14, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %50, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.Lattice, ptr %7, i64 0, i32 21
  %22 = load ptr, ptr %21, align 8, !tbaa !120
  %23 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 7
  br label %26

26:                                               ; preds = %20, %45
  %27 = phi i32 [ %18, %20 ], [ %31, %45 ]
  %28 = phi i32 [ 0, %20 ], [ %47, %45 ]
  %29 = phi i32 [ 0, %20 ], [ %46, %45 ]
  %30 = phi ptr [ %22, %20 ], [ %48, %45 ]
  %31 = add nsw i32 %27, -1
  %32 = sext i32 %29 to i64
  %33 = getelementptr inbounds i32, ptr %24, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !37
  %35 = icmp eq i32 %34, %28
  br i1 %35, label %36, label %45

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.BPoint, ptr %30, i64 0, i32 3
  %38 = load i16, ptr %37, align 4, !tbaa !110
  %39 = or i16 %38, 1
  store i16 %39, ptr %37, align 4, !tbaa !110
  %40 = load i32, ptr %25, align 8, !tbaa !50
  %41 = add nsw i32 %40, -1
  %42 = icmp slt i32 %29, %41
  %43 = zext i1 %42 to i32
  %44 = add nsw i32 %29, %43
  br label %45

45:                                               ; preds = %36, %26
  %46 = phi i32 [ %29, %26 ], [ %44, %36 ]
  %47 = add nuw nsw i32 %28, 1
  %48 = getelementptr inbounds %struct.BPoint, ptr %30, i64 1
  %49 = icmp eq i32 %31, 0
  br i1 %49, label %50, label %26, !llvm.loop !135

50:                                               ; preds = %45, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @select_editcurve_hook(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @object_editcurve_get(ptr noundef %0) #8
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %125, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 6
  %8 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 7
  br label %9

9:                                                ; preds = %6, %120
  %10 = phi ptr [ %4, %6 ], [ %123, %120 ]
  %11 = phi i32 [ 0, %6 ], [ %122, %120 ]
  %12 = phi i32 [ 0, %6 ], [ %121, %120 ]
  %13 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !99
  %15 = icmp eq i16 %14, 1
  %16 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !101
  br i1 %15, label %18, label %83

18:                                               ; preds = %9
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %120, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !102
  %23 = load ptr, ptr %7, align 8, !tbaa !48
  %24 = mul i32 %17, 3
  br label %25

25:                                               ; preds = %20, %78
  %26 = phi i32 [ %17, %20 ], [ %30, %78 ]
  %27 = phi i32 [ %11, %20 ], [ %80, %78 ]
  %28 = phi i32 [ %12, %20 ], [ %79, %78 ]
  %29 = phi ptr [ %22, %20 ], [ %81, %78 ]
  %30 = add nsw i32 %26, -1
  %31 = sext i32 %28 to i64
  %32 = getelementptr inbounds i32, ptr %23, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !37
  %34 = icmp eq i32 %27, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.BezTriple, ptr %29, i64 0, i32 7
  %37 = load i8, ptr %36, align 1, !tbaa !103
  %38 = or i8 %37, 1
  store i8 %38, ptr %36, align 1, !tbaa !103
  %39 = load i32, ptr %8, align 8, !tbaa !50
  %40 = add nsw i32 %39, -1
  %41 = icmp slt i32 %28, %40
  %42 = zext i1 %41 to i32
  %43 = add nsw i32 %28, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %23, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !37
  br label %47

47:                                               ; preds = %35, %25
  %48 = phi i32 [ %46, %35 ], [ %33, %25 ]
  %49 = phi i32 [ %43, %35 ], [ %28, %25 ]
  %50 = add nsw i32 %27, 1
  %51 = icmp eq i32 %50, %48
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.BezTriple, ptr %29, i64 0, i32 8
  %54 = load i8, ptr %53, align 4, !tbaa !105
  %55 = or i8 %54, 1
  store i8 %55, ptr %53, align 4, !tbaa !105
  %56 = load i32, ptr %8, align 8, !tbaa !50
  %57 = add nsw i32 %56, -1
  %58 = icmp slt i32 %49, %57
  %59 = zext i1 %58 to i32
  %60 = add nsw i32 %49, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, ptr %23, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !37
  br label %64

64:                                               ; preds = %52, %47
  %65 = phi i32 [ %63, %52 ], [ %48, %47 ]
  %66 = phi i32 [ %60, %52 ], [ %49, %47 ]
  %67 = add nsw i32 %27, 2
  %68 = icmp eq i32 %67, %65
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.BezTriple, ptr %29, i64 0, i32 9
  %71 = load i8, ptr %70, align 1, !tbaa !106
  %72 = or i8 %71, 1
  store i8 %72, ptr %70, align 1, !tbaa !106
  %73 = load i32, ptr %8, align 8, !tbaa !50
  %74 = add nsw i32 %73, -1
  %75 = icmp slt i32 %66, %74
  %76 = zext i1 %75 to i32
  %77 = add nsw i32 %66, %76
  br label %78

78:                                               ; preds = %69, %64
  %79 = phi i32 [ %66, %64 ], [ %77, %69 ]
  %80 = add nsw i32 %27, 3
  %81 = getelementptr inbounds %struct.BezTriple, ptr %29, i64 1
  %82 = icmp eq i32 %30, 0
  br i1 %82, label %116, label %25, !llvm.loop !136

83:                                               ; preds = %9
  %84 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 7
  %85 = load i32, ptr %84, align 4, !tbaa !108
  %86 = mul nsw i32 %85, %17
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %120, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.Nurb, ptr %10, i64 0, i32 17
  %90 = load ptr, ptr %89, align 8, !tbaa !109
  %91 = load ptr, ptr %7, align 8, !tbaa !48
  br label %92

92:                                               ; preds = %88, %111
  %93 = phi i32 [ %86, %88 ], [ %97, %111 ]
  %94 = phi i32 [ %11, %88 ], [ %113, %111 ]
  %95 = phi i32 [ %12, %88 ], [ %112, %111 ]
  %96 = phi ptr [ %90, %88 ], [ %114, %111 ]
  %97 = add nsw i32 %93, -1
  %98 = sext i32 %95 to i64
  %99 = getelementptr inbounds i32, ptr %91, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !37
  %101 = icmp eq i32 %94, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %92
  %103 = getelementptr inbounds %struct.BPoint, ptr %96, i64 0, i32 3
  %104 = load i16, ptr %103, align 4, !tbaa !110
  %105 = or i16 %104, 1
  store i16 %105, ptr %103, align 4, !tbaa !110
  %106 = load i32, ptr %8, align 8, !tbaa !50
  %107 = add nsw i32 %106, -1
  %108 = icmp slt i32 %95, %107
  %109 = zext i1 %108 to i32
  %110 = add nsw i32 %95, %109
  br label %111

111:                                              ; preds = %102, %92
  %112 = phi i32 [ %95, %92 ], [ %110, %102 ]
  %113 = add nsw i32 %94, 1
  %114 = getelementptr inbounds %struct.BPoint, ptr %96, i64 1
  %115 = icmp eq i32 %97, 0
  br i1 %115, label %118, label %92, !llvm.loop !137

116:                                              ; preds = %78
  %117 = add i32 %11, %24
  br label %120

118:                                              ; preds = %111
  %119 = add i32 %11, %86
  br label %120

120:                                              ; preds = %118, %116, %83, %18
  %121 = phi i32 [ %12, %18 ], [ %12, %83 ], [ %79, %116 ], [ %112, %118 ]
  %122 = phi i32 [ %11, %18 ], [ %11, %83 ], [ %117, %116 ], [ %119, %118 ]
  %123 = load ptr, ptr %10, align 8, !tbaa !21
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %9, !llvm.loop !138

125:                                              ; preds = %120, %2
  ret void
}

; Function Attrs: optsize
declare void @BM_vert_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @EDBM_select_flush(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }

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
!18 = !{!6, !7, i64 88}
!19 = !{!20, !7, i64 112}
!20 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!21 = !{!7, !7, i64 0}
!22 = !{!23, !7, i64 32}
!23 = !{!"CollectionPointerLink", !7, i64 0, !7, i64 8, !24, i64 16}
!24 = !{!"PointerRNA", !25, i64 0, !7, i64 8, !7, i64 16}
!25 = !{!"", !7, i64 0}
!26 = !{!20, !7, i64 120}
!27 = !{!28, !12, i64 136}
!28 = !{!"Object", !29, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !30, i64 140, !30, i64 144, !30, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !31, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !30, i64 432, !30, i64 436, !7, i64 440, !7, i64 448, !30, i64 456, !30, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !32, i64 616, !32, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !30, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !30, i64 968, !30, i64 972, !30, i64 976, !30, i64 980, !30, i64 984, !32, i64 988, !32, i64 992, !32, i64 996, !32, i64 1000, !32, i64 1004, !32, i64 1008, !32, i64 1012, !32, i64 1016, !32, i64 1020, !32, i64 1024, !32, i64 1028, !32, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !32, i64 1048, !32, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !32, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !30, i64 1144, !30, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !32, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !33, i64 1304, !33, i64 1312, !30, i64 1320, !30, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!29 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !30, i64 100, !30, i64 104, !30, i64 108, !7, i64 112}
!30 = !{!"int", !8, i64 0}
!31 = !{!"bAnimVizSettings", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !30, i64 32, !30, i64 36, !30, i64 40, !30, i64 44}
!32 = !{!"float", !8, i64 0}
!33 = !{!"long", !8, i64 0}
!34 = !{i32 0, i32 2}
!35 = !{!6, !7, i64 48}
!36 = !{!6, !7, i64 104}
!37 = !{!30, !30, i64 0}
!38 = !{!39, !30, i64 16}
!39 = !{!"ModifierData", !7, i64 0, !7, i64 8, !30, i64 16, !30, i64 20, !30, i64 24, !30, i64 28, !8, i64 32, !7, i64 96, !7, i64 104}
!40 = !{!41, !30, i64 0}
!41 = !{!"EnumPropertyItem", !30, i64 0, !7, i64 8, !30, i64 16, !7, i64 24, !7, i64 32}
!42 = !{!41, !30, i64 16}
!43 = !{!41, !7, i64 8}
!44 = !{!41, !7, i64 24}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!8, !8, i64 0}
!48 = !{!49, !7, i64 264}
!49 = !{!"HookModifierData", !39, i64 0, !7, i64 112, !8, i64 120, !8, i64 184, !8, i64 248, !32, i64 260, !7, i64 264, !30, i64 272, !32, i64 276, !8, i64 280}
!50 = !{!49, !30, i64 272}
!51 = !{!28, !7, i64 296}
!52 = !{!53, !30, i64 68}
!53 = !{!"ModifierTypeInfo", !8, i64 0, !8, i64 32, !30, i64 64, !30, i64 68, !30, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208}
!54 = distinct !{!54, !46}
!55 = !{!49, !7, i64 112}
!56 = !{!57, !7, i64 168}
!57 = !{!"bArmature", !29, i64 0, !7, i64 120, !10, i64 128, !10, i64 144, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !30, i64 192, !30, i64 196, !30, i64 200, !30, i64 204, !12, i64 208, !12, i64 210, !30, i64 212, !30, i64 216, !30, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !30, i64 232, !30, i64 236, !30, i64 240, !30, i64 244, !30, i64 248, !30, i64 252}
!58 = !{!59, !7, i64 264}
!59 = !{!"Scene", !29, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !30, i64 232, !30, i64 236, !30, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !60, i64 280, !69, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !30, i64 4380, !10, i64 4384, !70, i64 4400, !71, i64 4416, !74, i64 4600, !7, i64 4608, !75, i64 4616, !7, i64 4640, !33, i64 4648, !33, i64 4656, !62, i64 4664, !63, i64 4824, !76, i64 4888, !7, i64 4952}
!60 = !{!"RenderData", !61, i64 0, !7, i64 248, !7, i64 256, !64, i64 264, !65, i64 328, !30, i64 400, !30, i64 404, !30, i64 408, !32, i64 412, !30, i64 416, !30, i64 420, !30, i64 424, !30, i64 428, !12, i64 432, !12, i64 434, !32, i64 436, !32, i64 440, !32, i64 444, !32, i64 448, !32, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !30, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !30, i64 484, !30, i64 488, !12, i64 492, !12, i64 494, !30, i64 496, !30, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !30, i64 516, !30, i64 520, !30, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !66, i64 544, !66, i64 560, !67, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !32, i64 612, !32, i64 616, !32, i64 620, !32, i64 624, !30, i64 628, !32, i64 632, !32, i64 636, !32, i64 640, !32, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !32, i64 660, !32, i64 664, !12, i64 668, !12, i64 670, !32, i64 672, !32, i64 676, !8, i64 680, !30, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !30, i64 2520, !12, i64 2524, !12, i64 2526, !32, i64 2528, !32, i64 2532, !12, i64 2536, !12, i64 2538, !32, i64 2540, !12, i64 2544, !12, i64 2546, !30, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !32, i64 2560, !32, i64 2564, !7, i64 2568, !30, i64 2576, !32, i64 2580, !8, i64 2584, !68, i64 2616, !30, i64 3976, !30, i64 3980}
!61 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !32, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !62, i64 24, !63, i64 184}
!62 = !{!"ColorManagedViewSettings", !30, i64 0, !30, i64 4, !8, i64 8, !8, i64 72, !32, i64 136, !32, i64 140, !7, i64 144, !7, i64 152}
!63 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!64 = !{!"QuicktimeCodecSettings", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12, !30, i64 16, !30, i64 20, !30, i64 24, !30, i64 28, !30, i64 32, !30, i64 36, !30, i64 40, !30, i64 44, !12, i64 48, !12, i64 50, !30, i64 52, !30, i64 56, !30, i64 60}
!65 = !{!"FFMpegCodecData", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12, !30, i64 16, !30, i64 20, !30, i64 24, !30, i64 28, !32, i64 32, !30, i64 36, !30, i64 40, !30, i64 44, !30, i64 48, !30, i64 52, !30, i64 56, !30, i64 60, !7, i64 64}
!66 = !{!"rctf", !32, i64 0, !32, i64 4, !32, i64 8, !32, i64 12}
!67 = !{!"rcti", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12}
!68 = !{!"BakeData", !61, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !32, i64 1280, !32, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!69 = !{!"AudioData", !30, i64 0, !32, i64 4, !32, i64 8, !32, i64 12, !30, i64 16, !12, i64 20, !12, i64 22, !32, i64 24, !32, i64 28}
!70 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!71 = !{!"GameData", !70, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !72, i64 40, !12, i64 64, !12, i64 66, !32, i64 68, !73, i64 72, !32, i64 128, !32, i64 132, !30, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !32, i64 164, !32, i64 168, !32, i64 172, !32, i64 176, !32, i64 180}
!72 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !32, i64 8, !32, i64 12, !7, i64 16}
!73 = !{!"RecastData", !32, i64 0, !32, i64 4, !32, i64 8, !32, i64 12, !32, i64 16, !32, i64 20, !32, i64 24, !32, i64 28, !32, i64 32, !32, i64 36, !30, i64 40, !32, i64 44, !32, i64 48, !12, i64 52, !12, i64 54}
!74 = !{!"UnitSettings", !32, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!75 = !{!"PhysicsSettings", !8, i64 0, !30, i64 12, !30, i64 16, !30, i64 20}
!76 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!77 = !{!78, !7, i64 272}
!78 = !{!"Mesh", !29, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !79, i64 280, !79, i64 480, !79, i64 680, !79, i64 880, !79, i64 1080, !30, i64 1280, !30, i64 1284, !30, i64 1288, !30, i64 1292, !30, i64 1296, !30, i64 1300, !30, i64 1304, !8, i64 1308, !8, i64 1320, !8, i64 1332, !30, i64 1344, !12, i64 1348, !12, i64 1350, !32, i64 1352, !30, i64 1356, !8, i64 1360, !8, i64 1361, !8, i64 1362, !8, i64 1363, !8, i64 1364, !8, i64 1365, !12, i64 1366, !7, i64 1368}
!79 = !{!"CustomData", !7, i64 0, !8, i64 8, !30, i64 172, !30, i64 176, !30, i64 180, !7, i64 184, !7, i64 192}
!80 = !{i8 0, i8 2}
!81 = !{!82, !7, i64 272}
!82 = !{!"Lattice", !29, i64 0, !7, i64 120, !12, i64 128, !12, i64 130, !12, i64 132, !12, i64 134, !12, i64 136, !12, i64 138, !12, i64 140, !12, i64 142, !8, i64 144, !8, i64 145, !8, i64 146, !8, i64 147, !30, i64 148, !32, i64 152, !32, i64 156, !32, i64 160, !32, i64 164, !32, i64 168, !32, i64 172, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !8, i64 208, !7, i64 272}
!83 = !{!84, !7, i64 0}
!84 = !{!"EditLatt", !7, i64 0, !30, i64 8, !8, i64 12}
!85 = !{!28, !30, i64 944}
!86 = !{!87, !30, i64 16}
!87 = !{!"Base", !7, i64 0, !7, i64 8, !30, i64 16, !30, i64 20, !30, i64 24, !12, i64 28, !12, i64 30, !7, i64 32}
!88 = !{!59, !7, i64 168}
!89 = !{!32, !32, i64 0}
!90 = !{!91, !7, i64 0}
!91 = !{!"BMEditMesh", !7, i64 0, !7, i64 8, !30, i64 16, !7, i64 24, !30, i64 32, !7, i64 40, !7, i64 48, !33, i64 56, !7, i64 64, !30, i64 72, !7, i64 80, !30, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !30, i64 104}
!92 = distinct !{!92, !46}
!93 = distinct !{!93, !46}
!94 = !{!28, !12, i64 1126}
!95 = !{!96, !7, i64 0}
!96 = !{!"BMVert", !97, i64 0, !7, i64 16, !8, i64 24, !8, i64 36, !7, i64 48}
!97 = !{!"BMHeader", !7, i64 0, !30, i64 8, !8, i64 12, !8, i64 13, !8, i64 14}
!98 = distinct !{!98, !46}
!99 = !{!100, !12, i64 16}
!100 = !{!"Nurb", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !30, i64 24, !30, i64 28, !8, i64 32, !12, i64 36, !12, i64 38, !12, i64 40, !12, i64 42, !12, i64 44, !12, i64 46, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !12, i64 80, !12, i64 82, !30, i64 84}
!101 = !{!100, !30, i64 24}
!102 = !{!100, !7, i64 72}
!103 = !{!104, !8, i64 51}
!104 = !{!"BezTriple", !8, i64 0, !32, i64 36, !32, i64 40, !32, i64 44, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !8, i64 52, !8, i64 53, !8, i64 54, !8, i64 55, !32, i64 56, !32, i64 60, !32, i64 64, !8, i64 68}
!105 = !{!104, !8, i64 52}
!106 = !{!104, !8, i64 53}
!107 = distinct !{!107, !46}
!108 = !{!100, !30, i64 28}
!109 = !{!100, !7, i64 64}
!110 = !{!111, !12, i64 24}
!111 = !{!"BPoint", !8, i64 0, !32, i64 16, !32, i64 20, !12, i64 24, !12, i64 26, !32, i64 28, !32, i64 32}
!112 = distinct !{!112, !46}
!113 = distinct !{!113, !46}
!114 = distinct !{!114, !46}
!115 = distinct !{!115, !46}
!116 = distinct !{!116, !46}
!117 = !{!82, !12, i64 128}
!118 = !{!82, !12, i64 130}
!119 = !{!82, !12, i64 132}
!120 = !{!82, !7, i64 176}
!121 = !{!111, !12, i64 26}
!122 = distinct !{!122, !46}
!123 = distinct !{!123, !46}
!124 = !{!97, !8, i64 13}
!125 = !{!126, !7, i64 48}
!126 = !{!"BMIter", !8, i64 0, !7, i64 40, !7, i64 48, !30, i64 56, !8, i64 60}
!127 = !{!126, !8, i64 60}
!128 = !{!126, !7, i64 40}
!129 = !{!130, !7, i64 32}
!130 = !{!"BMesh", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12, !30, i64 16, !30, i64 20, !30, i64 24, !8, i64 28, !8, i64 29, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !30, i64 88, !30, i64 92, !30, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !30, i64 128, !7, i64 136, !79, i64 144, !79, i64 344, !79, i64 544, !79, i64 744, !12, i64 944, !30, i64 948, !30, i64 952, !30, i64 956, !10, i64 960, !7, i64 976, !10, i64 984, !7, i64 1000}
!131 = !{!24, !7, i64 16}
!132 = !{!24, !7, i64 0}
!133 = !{!49, !30, i64 16}
!134 = distinct !{!134, !46}
!135 = distinct !{!135, !46}
!136 = distinct !{!136, !46}
!137 = distinct !{!137, !46}
!138 = distinct !{!138, !46}
