; ModuleID = 'blender/source/blender/editors/armature/pose_select.c'
source_filename = "blender/source/blender/editors/armature/pose_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
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
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bConstraintTypeInfo = type { i16, i16, [32 x i8], [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bConstraintTarget = type { ptr, ptr, ptr, [64 x i8], [4 x [4 x float]], i16, i16, i16, i16 }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.KeyingSet = type { ptr, ptr, %struct.ListBase, [64 x i8], [64 x i8], [240 x i8], [64 x i8], i16, i16, i32 }
%struct.KS_Path = type { ptr, ptr, ptr, [64 x i8], i32, i16, i16, ptr, i32, i16, i16 }

@.str = private unnamed_addr constant [17 x i8] c"Select Connected\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"POSE_OT_select_linked\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"Select bones related to selected ones by parent/child relationships\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Extend\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"Extend selection instead of deselecting everything first\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"(De)select All\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"POSE_OT_select_all\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Toggle selection status of all bones\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Select Parent Bone\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"POSE_OT_select_parent\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"Select bones that are parents of the currently selected bones\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Select Constraint Target\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"POSE_OT_select_constraint_target\00", align 1
@.str.14 = private unnamed_addr constant [62 x i8] c"Select bones used as targets for the currently selected bones\00", align 1
@POSE_OT_select_hierarchy.direction_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.15, i32 0, ptr @.str.16, ptr @.str.17 }, %struct.EnumPropertyItem { i32 1, ptr @.str.18, i32 0, ptr @.str.19, ptr @.str.17 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [7 x i8] c"PARENT\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Select Parent\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"CHILD\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Select Child\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"Select Hierarchy\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"POSE_OT_select_hierarchy\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"Select immediate parent/children of selected bones\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"Extend the selection\00", align 1
@POSE_OT_select_grouped.prop_select_grouped_types = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.26, i32 0, ptr @.str.27, ptr @.str.28 }, %struct.EnumPropertyItem { i32 1, ptr @.str.29, i32 0, ptr @.str.30, ptr @.str.31 }, %struct.EnumPropertyItem { i32 2, ptr @.str.32, i32 0, ptr @.str.33, ptr @.str.34 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.26 = private unnamed_addr constant [6 x i8] c"LAYER\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"Layer\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"Shared layers\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"GROUP\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"Shared group\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"KEYINGSET\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"Keying Set\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"All bones affected by active Keying Set\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"Select Grouped\00", align 1
@.str.36 = private unnamed_addr constant [55 x i8] c"Select all visible bones grouped by similar properties\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"POSE_OT_select_grouped\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"Flip Active/Selected Bone\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"POSE_OT_select_mirror\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"Mirror the bone selection\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"only_active\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"Active Only\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"Only operate on the active bone\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.47 = private unnamed_addr constant [51 x i8] c"pose_select_grouped() - Unknown selection type %d\0A\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.48 = private unnamed_addr constant [23 x i8] c"pose_select_same_group\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.49 = private unnamed_addr constant [28 x i8] c"No active Keying Set to use\00", align 1
@.str.50 = private unnamed_addr constant [135 x i8] c"Use another Keying Set, as the active one depends on the currently selected items or cannot find any targets due to unsuitable context\00", align 1
@.str.51 = private unnamed_addr constant [38 x i8] c"Keying Set does not contain any paths\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"bones\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"bones[\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_pose_bone_select(ptr noundef %0, ptr noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %42, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %1, null
  %10 = or i1 %9, %8
  br i1 %10, label %42, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %42, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !19
  %18 = getelementptr inbounds %struct.Bone, ptr %13, i64 0, i32 25
  %19 = load i32, ptr %18, align 8, !tbaa !20
  %20 = getelementptr inbounds %struct.bArmature, ptr %17, i64 0, i32 15
  %21 = load i32, ptr %20, align 8, !tbaa !22
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.Bone, ptr %13, i64 0, i32 10
  %26 = load i32, ptr %25, align 8, !tbaa !24
  %27 = and i32 %26, 2097216
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = icmp eq i8 %2, 0
  %31 = and i32 %26, -2097218
  %32 = or i32 %26, 1
  %33 = select i1 %30, i32 %31, i32 %32
  %34 = select i1 %30, ptr null, ptr %13
  store i32 %33, ptr %25, align 8
  %35 = getelementptr inbounds %struct.bArmature, ptr %17, i64 0, i32 5
  store ptr %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.bArmature, ptr %17, i64 0, i32 8
  %37 = load i32, ptr %36, align 8, !tbaa !25
  %38 = and i32 %37, 16384
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  tail call void @DAG_id_tag_update(ptr noundef nonnull %0, i16 noundef signext 2) #10
  br label %41

41:                                               ; preds = %40, %29
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef nonnull %0) #10
  br label %42

42:                                               ; preds = %24, %41, %15, %3, %5, %11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @ED_do_pose_selectbuffer(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !26
  %11 = icmp eq ptr %10, null
  br i1 %11, label %111, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %111, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @get_bone_from_selectbuffer(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i16 noundef signext %3, i16 noundef signext 1, i8 noundef zeroext %7) #10
  %18 = icmp ne ptr %17, null
  br i1 %18, label %19, label %109

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Bone, ptr %17, i64 0, i32 10
  %21 = load i32, ptr %20, align 8, !tbaa !24
  %22 = and i32 %21, 2097152
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %109

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !28
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !19
  br label %44

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.Base, ptr %26, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !26
  %34 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !19
  %36 = icmp eq ptr %33, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %31
  %38 = icmp eq ptr %33, %10
  br i1 %38, label %54, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.Object, ptr %33, i64 0, i32 27
  %41 = load i32, ptr %40, align 8, !tbaa !47
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %28, %39, %31
  %45 = phi i1 [ true, %28 ], [ false, %39 ], [ true, %31 ]
  %46 = phi ptr [ %30, %28 ], [ %35, %39 ], [ %35, %31 ]
  %47 = phi ptr [ null, %28 ], [ %33, %39 ], [ null, %31 ]
  %48 = or i8 %5, %4
  %49 = icmp eq i8 %48, 0
  %50 = icmp ne i8 %6, 0
  %51 = and i1 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = and i32 %21, -2097154
  store i32 %53, ptr %20, align 8, !tbaa !24
  br label %54

54:                                               ; preds = %44, %52, %39, %37
  %55 = phi i32 [ %21, %44 ], [ %53, %52 ], [ %21, %39 ], [ %21, %37 ]
  %56 = phi i1 [ %45, %44 ], [ %45, %52 ], [ false, %39 ], [ false, %37 ]
  %57 = phi ptr [ %46, %44 ], [ %46, %52 ], [ %35, %39 ], [ %35, %37 ]
  %58 = phi ptr [ %47, %44 ], [ %47, %52 ], [ %33, %39 ], [ %10, %37 ]
  %59 = icmp eq i8 %5, 0
  %60 = or i8 %5, %4
  %61 = icmp eq i8 %6, 0
  %62 = or i8 %60, %6
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  tail call void @ED_pose_de_selectall(ptr noundef nonnull %10, i32 noundef 2, i8 noundef zeroext 1) #11
  %65 = load i32, ptr %20, align 8, !tbaa !24
  %66 = or i32 %65, 7
  store i32 %66, ptr %20, align 8, !tbaa !24
  %67 = getelementptr inbounds %struct.bArmature, ptr %57, i64 0, i32 5
  store ptr %17, ptr %67, align 8, !tbaa !48
  br label %90

68:                                               ; preds = %54
  %69 = icmp eq i8 %4, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %68
  %71 = or i32 %55, 7
  store i32 %71, ptr %20, align 8, !tbaa !24
  %72 = getelementptr inbounds %struct.bArmature, ptr %57, i64 0, i32 5
  store ptr %17, ptr %72, align 8, !tbaa !48
  br label %90

73:                                               ; preds = %68
  br i1 %59, label %76, label %74

74:                                               ; preds = %73
  %75 = and i32 %55, -2097160
  store i32 %75, ptr %20, align 8, !tbaa !24
  br label %90

76:                                               ; preds = %73
  br i1 %61, label %90, label %77

77:                                               ; preds = %76
  %78 = and i32 %55, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.bArmature, ptr %57, i64 0, i32 5
  %82 = load ptr, ptr %81, align 8, !tbaa !48
  %83 = icmp eq ptr %17, %82
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  store ptr %17, ptr %81, align 8, !tbaa !48
  br label %90

85:                                               ; preds = %80
  %86 = and i32 %55, -2097160
  store i32 %86, ptr %20, align 8, !tbaa !24
  br label %90

87:                                               ; preds = %77
  %88 = or i32 %55, 7
  store i32 %88, ptr %20, align 8, !tbaa !24
  %89 = getelementptr inbounds %struct.bArmature, ptr %57, i64 0, i32 5
  store ptr %17, ptr %89, align 8, !tbaa !48
  br label %90

90:                                               ; preds = %70, %76, %84, %85, %87, %74, %64
  br i1 %56, label %109, label %91

91:                                               ; preds = %90
  %92 = getelementptr inbounds %struct.Object, ptr %58, i64 0, i32 27
  %93 = load i32, ptr %92, align 8, !tbaa !47
  %94 = and i32 %93, 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.bArmature, ptr %57, i64 0, i32 5
  %98 = load ptr, ptr %97, align 8, !tbaa !48
  %99 = icmp eq ptr %17, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.Bone, ptr %17, i64 0, i32 5
  tail call void @ED_vgroup_select_by_name(ptr noundef nonnull %58, ptr noundef nonnull %101) #10
  br label %107

102:                                              ; preds = %91
  %103 = getelementptr inbounds %struct.bArmature, ptr %57, i64 0, i32 8
  %104 = load i32, ptr %103, align 8, !tbaa !25
  %105 = and i32 %104, 16384
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %102, %100
  %108 = phi ptr [ %58, %100 ], [ %10, %102 ]
  tail call void @DAG_id_tag_update(ptr noundef nonnull %108, i16 noundef signext 2) #10
  br label %109

109:                                              ; preds = %107, %90, %102, %96, %19, %16
  %110 = zext i1 %18 to i32
  br label %111

111:                                              ; preds = %8, %12, %109
  %112 = phi i32 [ %110, %109 ], [ 0, %12 ], [ 0, %8 ]
  ret i32 %112
}

; Function Attrs: optsize
declare ptr @get_bone_from_selectbuffer(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_pose_de_selectall(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %67, label %9

9:                                                ; preds = %3
  %10 = icmp eq i32 %1, 0
  %11 = load ptr, ptr %7, align 8, !tbaa !49
  br i1 %10, label %12, label %42

12:                                               ; preds = %9
  %13 = icmp eq ptr %11, null
  br i1 %13, label %67, label %14

14:                                               ; preds = %12
  %15 = icmp eq i8 %2, 0
  %16 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 15
  br label %17

17:                                               ; preds = %14, %39
  %18 = phi ptr [ %11, %14 ], [ %40, %39 ]
  %19 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !17
  br i1 %15, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Bone, ptr %20, i64 0, i32 10
  %23 = load i32, ptr %22, align 8, !tbaa !24
  br label %35

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.Bone, ptr %20, i64 0, i32 25
  %26 = load i32, ptr %25, align 8, !tbaa !20
  %27 = load i32, ptr %16, align 8, !tbaa !22
  %28 = and i32 %27, %26
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.Bone, ptr %20, i64 0, i32 10
  %32 = load i32, ptr %31, align 8, !tbaa !24
  %33 = and i32 %32, 64
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %21, %30
  %36 = phi i32 [ %23, %21 ], [ %32, %30 ]
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30, %35, %24
  %40 = load ptr, ptr %18, align 8, !tbaa !49
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %17, !llvm.loop !50

42:                                               ; preds = %39, %35, %9
  %43 = phi i32 [ %1, %9 ], [ 1, %39 ], [ 2, %35 ]
  %44 = icmp eq ptr %11, null
  br i1 %44, label %67, label %45

45:                                               ; preds = %42
  %46 = icmp eq i8 %2, 0
  %47 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 15
  br label %48

48:                                               ; preds = %45, %64
  %49 = phi ptr [ %11, %45 ], [ %65, %64 ]
  br i1 %46, label %50, label %63

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.bPoseChannel, ptr %49, i64 0, i32 12
  %52 = load ptr, ptr %51, align 8, !tbaa !17
  %53 = getelementptr inbounds %struct.Bone, ptr %52, i64 0, i32 25
  %54 = load i32, ptr %53, align 8, !tbaa !20
  %55 = load i32, ptr %47, align 8, !tbaa !22
  %56 = and i32 %55, %54
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.Bone, ptr %52, i64 0, i32 10
  %60 = load i32, ptr %59, align 8, !tbaa !24
  %61 = and i32 %60, 64
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %48
  tail call fastcc void @pose_do_bone_select(ptr noundef nonnull %49, i32 noundef %43) #11
  br label %64

64:                                               ; preds = %58, %63, %50
  %65 = load ptr, ptr %49, align 8, !tbaa !49
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %48, !llvm.loop !52

67:                                               ; preds = %64, %12, %42, %3
  ret void
}

; Function Attrs: optsize
declare void @ED_vgroup_select_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @pose_do_bone_select(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  switch i32 %1, label %32 [
    i32 1, label %3
    i32 2, label %12
    i32 3, label %18
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.Bone, ptr %5, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !24
  %8 = and i32 %7, 2097152
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %3
  %11 = or i32 %7, 1
  store i32 %11, ptr %6, align 8, !tbaa !24
  br label %32

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  %15 = getelementptr inbounds %struct.Bone, ptr %14, i64 0, i32 10
  %16 = load i32, ptr %15, align 8, !tbaa !24
  %17 = and i32 %16, -8
  store i32 %17, ptr %15, align 8, !tbaa !24
  br label %32

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.bPoseChannel, ptr %0, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !17
  %21 = getelementptr inbounds %struct.Bone, ptr %20, i64 0, i32 10
  %22 = load i32, ptr %21, align 8, !tbaa !24
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = and i32 %22, -8
  store i32 %26, ptr %21, align 8, !tbaa !24
  br label %32

27:                                               ; preds = %18
  %28 = and i32 %22, 2097152
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = or disjoint i32 %22, 1
  store i32 %31, ptr %21, align 8, !tbaa !24
  br label %32

32:                                               ; preds = %25, %30, %27, %3, %10, %2, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @POSE_OT_select_linked(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !53
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !56
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @pose_select_connected_invoke, ptr %4, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @pose_select_linked_poll, ptr %5, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_select_connected_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #10
  %5 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.3) #10
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #10
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !64
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !64
  %17 = zext i1 %12 to i16
  %18 = tail call ptr @get_nearest_bone(ptr noundef %0, i16 noundef signext %17, i32 noundef %14, i32 noundef %16) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %47, label %20

20:                                               ; preds = %3, %32
  %21 = phi ptr [ %34, %32 ], [ %18, %3 ]
  %22 = getelementptr inbounds %struct.Bone, ptr %21, i64 0, i32 10
  %23 = load i32, ptr %22, align 8, !tbaa !24
  %24 = and i32 %23, 2097152
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = or i32 %23, 1
  %28 = and i32 %23, -2097154
  %29 = select i1 %12, i32 %27, i32 %28
  store i32 %29, ptr %22, align 8, !tbaa !24
  %30 = and i32 %29, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.Bone, ptr %21, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !65
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %20, !llvm.loop !66

36:                                               ; preds = %20, %26, %32
  %37 = getelementptr inbounds %struct.Bone, ptr %18, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !67
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call fastcc void @selectconnected_posebonechildren(ptr noundef nonnull %38, i32 noundef %11) #11
  br label %41

41:                                               ; preds = %40, %36
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %5) #10
  %42 = getelementptr inbounds %struct.bArmature, ptr %7, i64 0, i32 8
  %43 = load i32, ptr %42, align 8, !tbaa !25
  %44 = and i32 %43, 16384
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  tail call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 2) #10
  br label %47

47:                                               ; preds = %41, %46, %3
  %48 = phi i32 [ 2, %3 ], [ 4, %46 ], [ 4, %41 ]
  ret i32 %48
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @pose_select_linked_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_operator_view3d_active(ptr noundef %0) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @ED_operator_posemode(ptr noundef %0) #10
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 0, %1 ], [ %7, %4 ]
  ret i32 %9
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @POSE_OT_select_all(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !53
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !56
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_de_select_all_exec, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !60
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_de_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.46) #10
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %8 = tail call ptr @ED_object_context(ptr noundef %0) #10
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !69
  %13 = getelementptr inbounds %struct.ToolSettings, ptr %12, i64 0, i32 61
  %14 = load i8, ptr %13, align 1, !tbaa !70
  %15 = icmp eq i32 %6, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = tail call i32 @ctx_data_list_count(ptr noundef %0, ptr noundef nonnull @CTX_data_selected_pose_bones) #10
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 1, i32 2
  br label %20

20:                                               ; preds = %16, %2
  %21 = phi i32 [ %19, %16 ], [ %6, %2 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  %22 = call i32 @CTX_data_visible_pose_bones(ptr noundef %0, ptr noundef nonnull %3) #10
  %23 = load ptr, ptr %3, align 8, !tbaa !49
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %20, %25
  %26 = phi ptr [ %29, %25 ], [ %23, %20 ]
  %27 = getelementptr inbounds %struct.CollectionPointerLink, ptr %26, i64 0, i32 2, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !77
  call fastcc void @pose_do_bone_select(ptr noundef %28, i32 noundef %21) #11
  %29 = load ptr, ptr %26, align 8, !tbaa !49
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %25, !llvm.loop !81

31:                                               ; preds = %25, %20
  call void @BLI_freelistN(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef null) #10
  %32 = icmp eq i8 %14, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 8
  %35 = load i32, ptr %34, align 8, !tbaa !25
  %36 = and i32 %35, 16384
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33, %31
  call void @DAG_id_tag_update(ptr noundef %8, i16 noundef signext 2) #10
  br label %39

39:                                               ; preds = %38, %33
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_posemode(ptr noundef) #2

; Function Attrs: optsize
declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_select_parent(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !53
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !56
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_select_parent_exec, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !60
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_select_parent_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #10
  %4 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %3) #10
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = tail call ptr @CTX_data_active_pose_bone(ptr noundef %0) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %7, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !82
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %11, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  %16 = getelementptr inbounds %struct.Bone, ptr %15, i64 0, i32 10
  %17 = load i32, ptr %16, align 8, !tbaa !24
  %18 = and i32 %17, 2097216
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = or i32 %17, 1
  store i32 %21, ptr %16, align 8, !tbaa !24
  %22 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 5
  store ptr %15, ptr %22, align 8, !tbaa !48
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef nonnull %4) #10
  %23 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 8
  %24 = load i32, ptr %23, align 8, !tbaa !25
  %25 = and i32 %24, 16384
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  tail call void @DAG_id_tag_update(ptr noundef nonnull %4, i16 noundef signext 2) #10
  br label %28

28:                                               ; preds = %20, %27, %2, %9, %13
  %29 = phi i32 [ 2, %13 ], [ 2, %9 ], [ 2, %2 ], [ 4, %27 ], [ 4, %20 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_select_constraint_target(ptr nocapture noundef writeonly %0) local_unnamed_addr #5 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !53
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !56
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_select_constraint_target_exec, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !60
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_select_constraint_target_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #10
  %6 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %5) #10
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  %9 = call i32 @CTX_data_visible_pose_bones(ptr noundef %0, ptr noundef nonnull %3) #10
  %10 = load ptr, ptr %3, align 8, !tbaa !49
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  br label %92

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 18
  br label %15

15:                                               ; preds = %13, %80
  %16 = phi ptr [ %10, %13 ], [ %82, %80 ]
  %17 = phi i32 [ 0, %13 ], [ %81, %80 ]
  %18 = getelementptr inbounds %struct.CollectionPointerLink, ptr %16, i64 0, i32 2, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !77
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !17
  %22 = getelementptr inbounds %struct.Bone, ptr %21, i64 0, i32 10
  %23 = load i32, ptr %22, align 8, !tbaa !24
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %80, label %26

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  %29 = icmp eq ptr %28, null
  br i1 %29, label %80, label %30

30:                                               ; preds = %26, %76
  %31 = phi ptr [ %78, %76 ], [ %28, %26 ]
  %32 = phi i32 [ %77, %76 ], [ %17, %26 ]
  %33 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %31) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %76, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %33, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !83
  %38 = icmp eq ptr %37, null
  br i1 %38, label %76, label %39

39:                                               ; preds = %35
  %40 = call i32 %37(ptr noundef nonnull %31, ptr noundef nonnull %4) #10
  %41 = load ptr, ptr %4, align 8, !tbaa !49
  %42 = icmp eq ptr %41, null
  br i1 %42, label %70, label %43

43:                                               ; preds = %39, %66
  %44 = phi ptr [ %68, %66 ], [ %41, %39 ]
  %45 = phi i32 [ %67, %66 ], [ %32, %39 ]
  %46 = getelementptr inbounds %struct.bConstraintTarget, ptr %44, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !85
  %48 = icmp eq ptr %47, %6
  br i1 %48, label %49, label %66

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.bConstraintTarget, ptr %44, i64 0, i32 3
  %51 = load i8, ptr %50, align 8, !tbaa !87
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %14, align 8, !tbaa !5
  %55 = call ptr @BKE_pose_channel_find_name(ptr noundef %54, ptr noundef nonnull %50) #10
  %56 = icmp eq ptr %55, null
  br i1 %56, label %66, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.bPoseChannel, ptr %55, i64 0, i32 12
  %59 = load ptr, ptr %58, align 8, !tbaa !17
  %60 = getelementptr inbounds %struct.Bone, ptr %59, i64 0, i32 10
  %61 = load i32, ptr %60, align 8, !tbaa !24
  %62 = and i32 %61, 2097152
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = or i32 %61, 7
  store i32 %65, ptr %60, align 8, !tbaa !24
  br label %66

66:                                               ; preds = %53, %57, %64, %43, %49
  %67 = phi i32 [ %45, %49 ], [ %45, %43 ], [ %45, %57 ], [ 1, %64 ], [ %45, %53 ]
  %68 = load ptr, ptr %44, align 8, !tbaa !49
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %43, !llvm.loop !88

70:                                               ; preds = %66, %39
  %71 = phi i32 [ %32, %39 ], [ %67, %66 ]
  %72 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %33, i64 0, i32 9
  %73 = load ptr, ptr %72, align 8, !tbaa !89
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  call void %73(ptr noundef nonnull %31, ptr noundef nonnull %4, i8 noundef zeroext 1) #10
  br label %76

76:                                               ; preds = %70, %75, %35, %30
  %77 = phi i32 [ %71, %75 ], [ %71, %70 ], [ %32, %35 ], [ %32, %30 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  %78 = load ptr, ptr %31, align 8, !tbaa !49
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %30, !llvm.loop !90

80:                                               ; preds = %76, %26, %15
  %81 = phi i32 [ %17, %15 ], [ %17, %26 ], [ %77, %76 ]
  %82 = load ptr, ptr %16, align 8, !tbaa !49
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %15, !llvm.loop !91

84:                                               ; preds = %80
  %85 = icmp eq i32 %81, 0
  call void @BLI_freelistN(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  br i1 %85, label %92, label %86

86:                                               ; preds = %84
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %6) #10
  %87 = getelementptr inbounds %struct.bArmature, ptr %8, i64 0, i32 8
  %88 = load i32, ptr %87, align 8, !tbaa !25
  %89 = and i32 %88, 16384
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 2) #10
  br label %92

92:                                               ; preds = %12, %86, %91, %84
  %93 = phi i32 [ 2, %84 ], [ 4, %91 ], [ 4, %86 ], [ 2, %12 ]
  ret i32 %93
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @POSE_OT_select_hierarchy(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.20, ptr %0, align 8, !tbaa !53
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.21, ptr %2, align 8, !tbaa !56
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_select_hierarchy_exec, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.23, ptr noundef nonnull @POSE_OT_select_hierarchy.direction_items, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.17) #10
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !92
  %11 = load ptr, ptr %7, align 8, !tbaa !61
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.25) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_select_hierarchy_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #10
  %5 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.23) #10
  %11 = load ptr, ptr %8, align 8, !tbaa !62
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.3) #10
  %13 = trunc i32 %12 to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  %14 = call i32 @CTX_data_visible_pose_bones(ptr noundef %0, ptr noundef nonnull %3) #10
  %15 = load ptr, ptr %3, align 8, !tbaa !49
  %16 = icmp eq ptr %15, null
  br i1 %16, label %123, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.bArmature, ptr %7, i64 0, i32 5
  %19 = icmp eq i32 %10, 0
  %20 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 18
  %21 = getelementptr inbounds %struct.bArmature, ptr %7, i64 0, i32 15
  br label %22

22:                                               ; preds = %17, %120
  %23 = phi ptr [ %15, %17 ], [ %121, %120 ]
  %24 = getelementptr inbounds %struct.CollectionPointerLink, ptr %23, i64 0, i32 2, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !77
  %26 = getelementptr inbounds %struct.bPoseChannel, ptr %25, i64 0, i32 12
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  %28 = getelementptr inbounds %struct.Bone, ptr %27, i64 0, i32 10
  %29 = load i32, ptr %28, align 8, !tbaa !24
  %30 = and i32 %29, 2097152
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %120

32:                                               ; preds = %22
  %33 = load ptr, ptr %18, align 8, !tbaa !48
  %34 = icmp eq ptr %27, %33
  br i1 %34, label %35, label %120

35:                                               ; preds = %32
  br i1 %19, label %36, label %56

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.bPoseChannel, ptr %25, i64 0, i32 13
  %38 = load ptr, ptr %37, align 8, !tbaa !82
  %39 = icmp eq ptr %38, null
  br i1 %39, label %120, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.bPoseChannel, ptr %38, i64 0, i32 12
  %42 = load ptr, ptr %41, align 8, !tbaa !17
  %43 = getelementptr inbounds %struct.Bone, ptr %42, i64 0, i32 25
  %44 = load i32, ptr %43, align 8, !tbaa !20
  %45 = load i32, ptr %21, align 8, !tbaa !22
  %46 = and i32 %45, %44
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %120, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.Bone, ptr %42, i64 0, i32 10
  %50 = load i32, ptr %49, align 8, !tbaa !24
  %51 = and i32 %50, 2097216
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %120

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.Bone, ptr %42, i64 0, i32 10
  %55 = icmp eq i8 %13, 0
  br i1 %55, label %105, label %111

56:                                               ; preds = %35
  %57 = getelementptr inbounds %struct.bPoseChannel, ptr %25, i64 0, i32 14
  %58 = load ptr, ptr %57, align 8, !tbaa !93
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.bPoseChannel, ptr %58, i64 0, i32 12
  %62 = load ptr, ptr %61, align 8, !tbaa !17
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %90

64:                                               ; preds = %56, %60
  %65 = load ptr, ptr %20, align 8, !tbaa !5
  %66 = load ptr, ptr %65, align 8, !tbaa !49
  %67 = icmp eq ptr %66, null
  br i1 %67, label %120, label %68

68:                                               ; preds = %64
  %69 = load i32, ptr %21, align 8, !tbaa !22
  br label %70

70:                                               ; preds = %68, %87
  %71 = phi ptr [ %66, %68 ], [ %88, %87 ]
  %72 = getelementptr inbounds %struct.bPoseChannel, ptr %71, i64 0, i32 12
  %73 = load ptr, ptr %72, align 8, !tbaa !17
  %74 = getelementptr inbounds %struct.Bone, ptr %73, i64 0, i32 25
  %75 = load i32, ptr %74, align 8, !tbaa !20
  %76 = and i32 %69, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.Bone, ptr %73, i64 0, i32 10
  %80 = load i32, ptr %79, align 8, !tbaa !24
  %81 = and i32 %80, 2097216
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.bPoseChannel, ptr %71, i64 0, i32 13
  %85 = load ptr, ptr %84, align 8, !tbaa !82
  %86 = icmp eq ptr %85, %25
  br i1 %86, label %96, label %87

87:                                               ; preds = %78, %83, %70
  %88 = load ptr, ptr %71, align 8, !tbaa !49
  %89 = icmp eq ptr %88, null
  br i1 %89, label %120, label %70, !llvm.loop !94

90:                                               ; preds = %60
  %91 = getelementptr inbounds %struct.Bone, ptr %62, i64 0, i32 25
  %92 = load i32, ptr %91, align 8, !tbaa !20
  %93 = load i32, ptr %21, align 8, !tbaa !22
  %94 = and i32 %93, %92
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %120, label %96

96:                                               ; preds = %83, %90
  %97 = phi ptr [ %62, %90 ], [ %73, %83 ]
  %98 = getelementptr inbounds %struct.Bone, ptr %97, i64 0, i32 10
  %99 = load i32, ptr %98, align 8, !tbaa !24
  %100 = and i32 %99, 2097216
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.Bone, ptr %97, i64 0, i32 10
  %104 = icmp eq i8 %13, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %102, %53
  %106 = phi ptr [ %54, %53 ], [ %103, %102 ]
  %107 = phi ptr [ %42, %53 ], [ %97, %102 ]
  %108 = getelementptr inbounds %struct.Bone, ptr %27, i64 0, i32 10
  %109 = and i32 %29, -2097154
  store i32 %109, ptr %108, align 8, !tbaa !24
  %110 = load i32, ptr %106, align 8, !tbaa !24
  br label %111

111:                                              ; preds = %105, %102, %53
  %112 = phi i32 [ %50, %53 ], [ %99, %102 ], [ %110, %105 ]
  %113 = phi ptr [ %54, %53 ], [ %103, %102 ], [ %106, %105 ]
  %114 = phi ptr [ %42, %53 ], [ %97, %102 ], [ %107, %105 ]
  %115 = or i32 %112, 1
  store i32 %115, ptr %113, align 8, !tbaa !24
  store ptr %114, ptr %18, align 8, !tbaa !48
  call void @BLI_freelistN(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %5) #10
  %116 = getelementptr inbounds %struct.bArmature, ptr %7, i64 0, i32 8
  %117 = load i32, ptr %116, align 8, !tbaa !25
  %118 = and i32 %117, 16384
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %125, label %124

120:                                              ; preds = %87, %64, %22, %40, %48, %90, %96, %32, %36
  %121 = load ptr, ptr %23, align 8, !tbaa !49
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %22

123:                                              ; preds = %120, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  br label %125

124:                                              ; preds = %111
  call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 2) #10
  br label %125

125:                                              ; preds = %123, %111, %124
  %126 = phi i32 [ 2, %123 ], [ 4, %124 ], [ 4, %111 ]
  ret i32 %126
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @POSE_OT_select_grouped(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.35, ptr %0, align 8, !tbaa !53
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.36, ptr %2, align 8, !tbaa !57
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %3, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_select_grouped_exec, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %6, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !60
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #10
  %11 = load ptr, ptr %8, align 8, !tbaa !61
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.38, ptr noundef nonnull @POSE_OT_select_grouped.prop_select_grouped_types, i32 noundef 0, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.17) #10
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !92
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @pose_select_grouped_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #10
  %4 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %3) #10
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.38) #10
  %10 = load ptr, ptr %7, align 8, !tbaa !62
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.3) #10
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %2
  switch i32 %9, label %25 [
    i32 0, label %17
    i32 1, label %19
    i32 2, label %21
  ]

17:                                               ; preds = %16
  %18 = tail call fastcc zeroext i8 @pose_select_same_layer(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext %12) #11, !range !95
  br label %27

19:                                               ; preds = %16
  %20 = tail call fastcc zeroext i8 @pose_select_same_group(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext %12) #11, !range !95
  br label %27

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !96
  %24 = tail call fastcc zeroext i8 @pose_select_same_keyingset(ptr noundef %0, ptr noundef %23, ptr noundef nonnull %4, i8 noundef zeroext %12) #11, !range !95
  br label %27

25:                                               ; preds = %16
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i32 noundef %9) #11
  br label %27

27:                                               ; preds = %25, %21, %19, %17
  %28 = phi i8 [ 0, %25 ], [ %24, %21 ], [ %20, %19 ], [ %18, %17 ]
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %4) #10
  %29 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 8
  %30 = load i32, ptr %29, align 8, !tbaa !25
  %31 = and i32 %30, 16384
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  tail call void @DAG_id_tag_update(ptr noundef nonnull %4, i16 noundef signext 2) #10
  br label %34

34:                                               ; preds = %33, %27
  %35 = icmp eq i8 %28, 0
  %36 = select i1 %35, i32 2, i32 4
  br label %37

37:                                               ; preds = %34, %2
  %38 = phi i32 [ 2, %2 ], [ %36, %34 ]
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @POSE_OT_select_mirror(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.40, ptr %0, align 8, !tbaa !53
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.41, ptr %2, align 8, !tbaa !56
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.42, ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_select_mirror_exec, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.43, i32 noundef 0, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) #10
  %10 = load ptr, ptr %7, align 8, !tbaa !61
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.25) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_select_mirror_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #10
  %4 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %3) #10
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.43) #10
  %8 = load ptr, ptr %5, align 8, !tbaa !62
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.3) #10
  %10 = icmp eq ptr %4, null
  br i1 %10, label %124, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 27
  %13 = load i32, ptr %12, align 8, !tbaa !47
  %14 = and i32 %13, 64
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %124, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !19
  %19 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = load ptr, ptr %20, align 8, !tbaa !49
  %22 = icmp eq ptr %21, null
  br i1 %22, label %123, label %33

23:                                               ; preds = %33
  %24 = load ptr, ptr %20, align 8, !tbaa !49
  %25 = icmp eq ptr %24, null
  br i1 %25, label %123, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.bArmature, ptr %18, i64 0, i32 15
  %28 = and i32 %9, 255
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr inbounds %struct.bArmature, ptr %18, i64 0, i32 5
  %31 = and i32 %7, 255
  %32 = icmp eq i32 %31, 0
  br label %45

33:                                               ; preds = %16, %33
  %34 = phi ptr [ %43, %33 ], [ %21, %16 ]
  %35 = getelementptr inbounds %struct.bPoseChannel, ptr %34, i64 0, i32 12
  %36 = load ptr, ptr %35, align 8, !tbaa !17
  %37 = getelementptr inbounds %struct.Bone, ptr %36, i64 0, i32 10
  %38 = load i32, ptr %37, align 8, !tbaa !24
  %39 = and i32 %38, 1
  %40 = zext nneg i32 %39 to i64
  %41 = inttoptr i64 %40 to ptr
  %42 = getelementptr inbounds %struct.bPoseChannel, ptr %34, i64 0, i32 39
  store ptr %41, ptr %42, align 8, !tbaa !97
  %43 = load ptr, ptr %34, align 8, !tbaa !49
  %44 = icmp eq ptr %43, null
  br i1 %44, label %23, label %33, !llvm.loop !98

45:                                               ; preds = %26, %107
  %46 = phi ptr [ %24, %26 ], [ %109, %107 ]
  %47 = phi ptr [ null, %26 ], [ %108, %107 ]
  %48 = getelementptr inbounds %struct.bPoseChannel, ptr %46, i64 0, i32 12
  %49 = load ptr, ptr %48, align 8, !tbaa !17
  %50 = getelementptr inbounds %struct.Bone, ptr %49, i64 0, i32 25
  %51 = load i32, ptr %50, align 8, !tbaa !20
  %52 = load i32, ptr %27, align 8, !tbaa !22
  %53 = and i32 %52, %51
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %107, label %55

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.Bone, ptr %49, i64 0, i32 10
  %57 = load i32, ptr %56, align 8, !tbaa !24
  %58 = and i32 %57, 2097216
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %107

60:                                               ; preds = %55
  br i1 %29, label %66, label %61

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.bPoseChannel, ptr %46, i64 0, i32 39
  %63 = load ptr, ptr %62, align 8, !tbaa !97
  %64 = ptrtoint ptr %63 to i64
  %65 = trunc i64 %64 to i32
  br label %66

66:                                               ; preds = %60, %61
  %67 = phi i32 [ %65, %61 ], [ 0, %60 ]
  %68 = load ptr, ptr %19, align 8, !tbaa !5
  %69 = getelementptr inbounds %struct.bPoseChannel, ptr %46, i64 0, i32 4
  %70 = tail call ptr @BKE_pose_channel_get_mirrored(ptr noundef %68, ptr noundef nonnull %69) #10
  %71 = icmp eq ptr %70, null
  br i1 %71, label %99, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.bPoseChannel, ptr %70, i64 0, i32 12
  %74 = load ptr, ptr %73, align 8, !tbaa !17
  %75 = getelementptr inbounds %struct.Bone, ptr %74, i64 0, i32 25
  %76 = load i32, ptr %75, align 8, !tbaa !20
  %77 = load i32, ptr %27, align 8, !tbaa !22
  %78 = and i32 %77, %76
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %99, label %80

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.Bone, ptr %74, i64 0, i32 10
  %82 = load i32, ptr %81, align 8, !tbaa !24
  %83 = and i32 %82, 64
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.bPoseChannel, ptr %70, i64 0, i32 39
  %87 = load ptr, ptr %86, align 8, !tbaa !97
  %88 = ptrtoint ptr %87 to i64
  %89 = trunc i64 %88 to i32
  %90 = or i32 %67, %89
  %91 = load ptr, ptr %48, align 8, !tbaa !17
  %92 = load ptr, ptr %30, align 8, !tbaa !48
  %93 = icmp eq ptr %91, %92
  %94 = select i1 %93, ptr %70, ptr %47
  %95 = select i1 %32, i1 true, i1 %93
  %96 = select i1 %32, ptr %94, ptr %70
  br i1 %95, label %99, label %97

97:                                               ; preds = %85
  %98 = icmp eq ptr %92, %74
  br i1 %98, label %99, label %107

99:                                               ; preds = %85, %97, %72, %80, %66
  %100 = phi ptr [ %47, %80 ], [ %47, %72 ], [ %47, %66 ], [ %47, %97 ], [ %96, %85 ]
  %101 = phi i32 [ %67, %80 ], [ %67, %72 ], [ %67, %66 ], [ %90, %97 ], [ %90, %85 ]
  %102 = load ptr, ptr %48, align 8, !tbaa !17
  %103 = getelementptr inbounds %struct.Bone, ptr %102, i64 0, i32 10
  %104 = load i32, ptr %103, align 8, !tbaa !24
  %105 = and i32 %104, -8
  %106 = or i32 %105, %101
  store i32 %106, ptr %103, align 8, !tbaa !24
  br label %107

107:                                              ; preds = %99, %97, %55, %45
  %108 = phi ptr [ %47, %55 ], [ %47, %45 ], [ %100, %99 ], [ %47, %97 ]
  %109 = load ptr, ptr %46, align 8, !tbaa !49
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %45, !llvm.loop !99

111:                                              ; preds = %107
  %112 = icmp eq ptr %108, null
  br i1 %112, label %123, label %113

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.bPoseChannel, ptr %108, i64 0, i32 12
  %115 = load ptr, ptr %114, align 8, !tbaa !17
  %116 = getelementptr inbounds %struct.bArmature, ptr %18, i64 0, i32 5
  store ptr %115, ptr %116, align 8, !tbaa !48
  %117 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %118 = load i32, ptr %117, align 8, !tbaa !47
  %119 = and i32 %118, 8
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %113
  %122 = getelementptr inbounds %struct.bPoseChannel, ptr %108, i64 0, i32 4
  tail call void @ED_vgroup_select_by_name(ptr noundef nonnull %3, ptr noundef nonnull %122) #10
  tail call void @DAG_id_tag_update(ptr noundef nonnull %3, i16 noundef signext 2) #10
  br label %123

123:                                              ; preds = %16, %23, %113, %121, %111
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef nonnull %4) #10
  br label %124

124:                                              ; preds = %2, %11, %123
  %125 = phi i32 [ 4, %123 ], [ 2, %11 ], [ 2, %2 ]
  ret i32 %125
}

; Function Attrs: optsize
declare ptr @BKE_object_pose_armature_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_nearest_bone(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @selectconnected_posebonechildren(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 10
  %4 = load i32, ptr %3, align 8, !tbaa !24
  %5 = and i32 %4, 2097168
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 0
  %9 = or i32 %4, 1
  %10 = and i32 %4, -2097154
  %11 = select i1 %8, i32 %9, i32 %10
  store i32 %11, ptr %3, align 8, !tbaa !24
  %12 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %7, %15
  %16 = phi ptr [ %17, %15 ], [ %13, %7 ]
  tail call fastcc void @selectconnected_posebonechildren(ptr noundef nonnull %16, i32 noundef %1) #11
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %15, !llvm.loop !100

19:                                               ; preds = %15, %7, %2
  ret void
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_operator_view3d_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_object_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ctx_data_list_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_pose_bones(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @CTX_data_visible_pose_bones(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_pose_bone(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: optsize
declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @pose_select_same_layer(ptr noundef %0, ptr noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %77, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  %13 = icmp eq ptr %12, null
  %14 = select i1 %10, i1 true, i1 %13
  br i1 %14, label %77, label %15

15:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  %16 = call i32 @CTX_data_visible_pose_bones(ptr noundef %0, ptr noundef nonnull %4) #10
  %17 = load ptr, ptr %4, align 8, !tbaa !49
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  call void @BLI_freelistN(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  br label %77

20:                                               ; preds = %15
  %21 = icmp eq i8 %2, 0
  br label %22

22:                                               ; preds = %20, %44
  %23 = phi ptr [ %17, %20 ], [ %45, %44 ]
  %24 = phi i32 [ 0, %20 ], [ %38, %44 ]
  %25 = getelementptr inbounds %struct.CollectionPointerLink, ptr %23, i64 0, i32 2, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !77
  %27 = getelementptr inbounds %struct.bPoseChannel, ptr %26, i64 0, i32 12
  %28 = load ptr, ptr %27, align 8, !tbaa !17
  %29 = getelementptr inbounds %struct.Bone, ptr %28, i64 0, i32 10
  %30 = load i32, ptr %29, align 8, !tbaa !24
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.Bone, ptr %28, i64 0, i32 25
  %35 = load i32, ptr %34, align 8, !tbaa !20
  %36 = or i32 %35, %24
  br label %37

37:                                               ; preds = %33, %22
  %38 = phi i32 [ %36, %33 ], [ %24, %22 ]
  %39 = and i32 %30, 2097152
  %40 = icmp eq i32 %39, 0
  %41 = and i1 %21, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = and i32 %30, -2097154
  store i32 %43, ptr %29, align 8, !tbaa !24
  br label %44

44:                                               ; preds = %42, %37
  %45 = load ptr, ptr %23, align 8, !tbaa !49
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %22, !llvm.loop !101

47:                                               ; preds = %44
  call void @BLI_freelistN(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  %48 = icmp eq i32 %38, 0
  br i1 %48, label %77, label %49

49:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %50 = call i32 @CTX_data_visible_pose_bones(ptr noundef %0, ptr noundef nonnull %5) #10
  %51 = load ptr, ptr %5, align 8, !tbaa !49
  %52 = icmp eq ptr %51, null
  br i1 %52, label %75, label %53

53:                                               ; preds = %49, %71
  %54 = phi ptr [ %73, %71 ], [ %51, %49 ]
  %55 = phi i8 [ %72, %71 ], [ 0, %49 ]
  %56 = getelementptr inbounds %struct.CollectionPointerLink, ptr %54, i64 0, i32 2, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !77
  %58 = getelementptr inbounds %struct.bPoseChannel, ptr %57, i64 0, i32 12
  %59 = load ptr, ptr %58, align 8, !tbaa !17
  %60 = getelementptr inbounds %struct.Bone, ptr %59, i64 0, i32 25
  %61 = load i32, ptr %60, align 8, !tbaa !20
  %62 = and i32 %61, %38
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.Bone, ptr %59, i64 0, i32 10
  %66 = load i32, ptr %65, align 8, !tbaa !24
  %67 = and i32 %66, 2097152
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = or i32 %66, 1
  store i32 %70, ptr %65, align 8, !tbaa !24
  br label %71

71:                                               ; preds = %69, %64, %53
  %72 = phi i8 [ 1, %69 ], [ %55, %64 ], [ %55, %53 ]
  %73 = load ptr, ptr %54, align 8, !tbaa !49
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %53, !llvm.loop !102

75:                                               ; preds = %71, %49
  %76 = phi i8 [ 0, %49 ], [ %72, %71 ]
  call void @BLI_freelistN(ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  br label %77

77:                                               ; preds = %19, %3, %47, %7, %75
  %78 = phi i8 [ %76, %75 ], [ 0, %7 ], [ 0, %47 ], [ 0, %3 ], [ 0, %19 ]
  ret i8 %78
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @pose_select_same_group(ptr noundef %0, ptr noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %94, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, i1 true, i1 %10
  br i1 %14, label %94, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.bPose, ptr %12, i64 0, i32 9
  %17 = tail call i32 @BLI_countlist(ptr noundef nonnull %16) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %94, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !49
  %21 = add nsw i32 %17, 1
  %22 = sext i32 %21 to i64
  %23 = tail call ptr %20(i64 noundef %22, ptr noundef nonnull @.str.48) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  %24 = call i32 @CTX_data_visible_pose_bones(ptr noundef %0, ptr noundef nonnull %4) #10
  %25 = load ptr, ptr %4, align 8, !tbaa !49
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  call void @BLI_freelistN(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  br label %91

28:                                               ; preds = %19
  %29 = icmp eq i8 %2, 0
  br label %30

30:                                               ; preds = %28, %56
  %31 = phi ptr [ %25, %28 ], [ %57, %56 ]
  %32 = phi i8 [ 0, %28 ], [ %47, %56 ]
  %33 = getelementptr inbounds %struct.CollectionPointerLink, ptr %31, i64 0, i32 2, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !77
  %35 = getelementptr inbounds %struct.bPoseChannel, ptr %34, i64 0, i32 12
  %36 = load ptr, ptr %35, align 8, !tbaa !17
  %37 = getelementptr inbounds %struct.Bone, ptr %36, i64 0, i32 10
  %38 = load i32, ptr %37, align 8, !tbaa !24
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.bPoseChannel, ptr %34, i64 0, i32 8
  %43 = load i16, ptr %42, align 2, !tbaa !103
  %44 = sext i16 %43 to i64
  %45 = getelementptr inbounds i8, ptr %23, i64 %44
  store i8 1, ptr %45, align 1, !tbaa !87
  br label %46

46:                                               ; preds = %41, %30
  %47 = phi i8 [ 1, %41 ], [ %32, %30 ]
  br i1 %29, label %48, label %56

48:                                               ; preds = %46
  %49 = load ptr, ptr %35, align 8, !tbaa !17
  %50 = getelementptr inbounds %struct.Bone, ptr %49, i64 0, i32 10
  %51 = load i32, ptr %50, align 8, !tbaa !24
  %52 = and i32 %51, 2097152
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = and i32 %51, -2097154
  store i32 %55, ptr %50, align 8, !tbaa !24
  br label %56

56:                                               ; preds = %54, %48, %46
  %57 = load ptr, ptr %31, align 8, !tbaa !49
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %30, !llvm.loop !104

59:                                               ; preds = %56
  %60 = icmp eq i8 %47, 0
  call void @BLI_freelistN(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  br i1 %60, label %91, label %61

61:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %62 = call i32 @CTX_data_visible_pose_bones(ptr noundef %0, ptr noundef nonnull %5) #10
  %63 = load ptr, ptr %5, align 8, !tbaa !49
  %64 = icmp eq ptr %63, null
  br i1 %64, label %89, label %65

65:                                               ; preds = %61, %85
  %66 = phi ptr [ %87, %85 ], [ %63, %61 ]
  %67 = phi i8 [ %86, %85 ], [ 0, %61 ]
  %68 = getelementptr inbounds %struct.CollectionPointerLink, ptr %66, i64 0, i32 2, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !77
  %70 = getelementptr inbounds %struct.bPoseChannel, ptr %69, i64 0, i32 12
  %71 = load ptr, ptr %70, align 8, !tbaa !17
  %72 = getelementptr inbounds %struct.Bone, ptr %71, i64 0, i32 10
  %73 = load i32, ptr %72, align 8, !tbaa !24
  %74 = and i32 %73, 2097152
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.bPoseChannel, ptr %69, i64 0, i32 8
  %78 = load i16, ptr %77, align 2, !tbaa !103
  %79 = sext i16 %78 to i64
  %80 = getelementptr inbounds i8, ptr %23, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !87
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %76
  %84 = or i32 %73, 1
  store i32 %84, ptr %72, align 8, !tbaa !24
  br label %85

85:                                               ; preds = %76, %83, %65
  %86 = phi i8 [ 1, %83 ], [ %67, %76 ], [ %67, %65 ]
  %87 = load ptr, ptr %66, align 8, !tbaa !49
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %65, !llvm.loop !105

89:                                               ; preds = %85, %61
  %90 = phi i8 [ 0, %61 ], [ %86, %85 ]
  call void @BLI_freelistN(ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  br label %91

91:                                               ; preds = %27, %89, %59
  %92 = phi i8 [ %90, %89 ], [ 0, %59 ], [ 0, %27 ]
  %93 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %93(ptr noundef %23) #10
  br label %94

94:                                               ; preds = %3, %15, %7, %91
  %95 = phi i8 [ %92, %91 ], [ 0, %7 ], [ 0, %15 ], [ 0, %3 ]
  ret i8 %95
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @pose_select_same_keyingset(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.ListBase, align 8
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %7 = tail call ptr @ANIM_scene_get_active_keyingset(ptr noundef %6) #10
  %8 = icmp eq ptr %2, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 18
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  br label %14

14:                                               ; preds = %4, %9
  %15 = phi ptr [ %11, %9 ], [ null, %4 ]
  %16 = phi ptr [ %13, %9 ], [ null, %4 ]
  %17 = icmp eq ptr %7, null
  br i1 %17, label %105, label %18

18:                                               ; preds = %14
  %19 = tail call signext i16 @ANIM_validate_keyingset(ptr noundef %0, ptr noundef null, ptr noundef nonnull %7) #10
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.KeyingSet, ptr %7, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !106
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %107

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.KeyingSet, ptr %7, i64 0, i32 7
  %27 = load i16, ptr %26, align 8, !tbaa !108
  %28 = and i16 %27, 2
  %29 = icmp eq i16 %28, 0
  %30 = select i1 %29, ptr @.str.50, ptr @.str.51
  br label %105

31:                                               ; preds = %18
  %32 = icmp eq ptr %16, null
  %33 = select i1 %8, i1 true, i1 %32
  %34 = icmp eq ptr %15, null
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %107, label %36

36:                                               ; preds = %31
  %37 = icmp eq i8 %3, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %39 = call i32 @CTX_data_visible_pose_bones(ptr noundef %0, ptr noundef nonnull %5) #10
  %40 = load ptr, ptr %5, align 8, !tbaa !49
  %41 = icmp eq ptr %40, null
  br i1 %41, label %57, label %42

42:                                               ; preds = %38, %54
  %43 = phi ptr [ %55, %54 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.CollectionPointerLink, ptr %43, i64 0, i32 2, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !77
  %46 = getelementptr inbounds %struct.bPoseChannel, ptr %45, i64 0, i32 12
  %47 = load ptr, ptr %46, align 8, !tbaa !17
  %48 = getelementptr inbounds %struct.Bone, ptr %47, i64 0, i32 10
  %49 = load i32, ptr %48, align 8, !tbaa !24
  %50 = and i32 %49, 2097152
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = and i32 %49, -2097154
  store i32 %53, ptr %48, align 8, !tbaa !24
  br label %54

54:                                               ; preds = %52, %42
  %55 = load ptr, ptr %43, align 8, !tbaa !49
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %42, !llvm.loop !109

57:                                               ; preds = %54, %38
  call void @BLI_freelistN(ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  br label %58

58:                                               ; preds = %57, %36
  %59 = getelementptr inbounds %struct.KeyingSet, ptr %7, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !49
  %61 = icmp eq ptr %60, null
  br i1 %61, label %107, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.bArmature, ptr %15, i64 0, i32 15
  br label %64

64:                                               ; preds = %62, %101
  %65 = phi ptr [ %60, %62 ], [ %103, %101 ]
  %66 = phi i8 [ 0, %62 ], [ %102, %101 ]
  %67 = getelementptr inbounds %struct.KS_Path, ptr %65, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !110
  %69 = icmp eq ptr %68, %2
  br i1 %69, label %70, label %101

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.KS_Path, ptr %65, i64 0, i32 7
  %72 = load ptr, ptr %71, align 8, !tbaa !112
  %73 = icmp eq ptr %72, null
  br i1 %73, label %101, label %74

74:                                               ; preds = %70
  %75 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %72, ptr noundef nonnull dereferenceable(1) @.str.52) #13
  %76 = icmp eq ptr %75, null
  br i1 %76, label %101, label %77

77:                                               ; preds = %74
  %78 = call ptr @BLI_str_quoted_substrN(ptr noundef nonnull %72, ptr noundef nonnull @.str.53) #10
  %79 = icmp eq ptr %78, null
  br i1 %79, label %101, label %80

80:                                               ; preds = %77
  %81 = call ptr @BKE_pose_channel_find_name(ptr noundef %16, ptr noundef nonnull %78) #10
  %82 = icmp eq ptr %81, null
  br i1 %82, label %98, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.bPoseChannel, ptr %81, i64 0, i32 12
  %85 = load ptr, ptr %84, align 8, !tbaa !17
  %86 = getelementptr inbounds %struct.Bone, ptr %85, i64 0, i32 25
  %87 = load i32, ptr %86, align 8, !tbaa !20
  %88 = load i32, ptr %63, align 8, !tbaa !22
  %89 = and i32 %88, %87
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.Bone, ptr %85, i64 0, i32 10
  %93 = load i32, ptr %92, align 8, !tbaa !24
  %94 = and i32 %93, 2097216
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = or i32 %93, 1
  store i32 %97, ptr %92, align 8, !tbaa !24
  br label %98

98:                                               ; preds = %91, %96, %83, %80
  %99 = phi i8 [ 1, %96 ], [ %66, %91 ], [ %66, %83 ], [ %66, %80 ]
  %100 = load ptr, ptr @MEM_freeN, align 8, !tbaa !49
  call void %100(ptr noundef nonnull %78) #10
  br label %101

101:                                              ; preds = %77, %98, %64, %70, %74
  %102 = phi i8 [ %66, %74 ], [ %66, %70 ], [ %66, %64 ], [ %99, %98 ], [ %66, %77 ]
  %103 = load ptr, ptr %65, align 8, !tbaa !49
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %64, !llvm.loop !113

105:                                              ; preds = %25, %14
  %106 = phi ptr [ @.str.49, %14 ], [ %30, %25 ]
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull %106) #10
  br label %107

107:                                              ; preds = %101, %105, %58, %31, %21
  %108 = phi i8 [ 0, %21 ], [ 0, %31 ], [ 0, %58 ], [ 0, %105 ], [ %102, %101 ]
  ret i8 %108
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ANIM_scene_get_active_keyingset(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare signext i16 @ANIM_validate_keyingset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @BLI_str_quoted_substrN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_pose_channel_get_mirrored(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 288}
!6 = !{!"Object", !7, i64 0, !8, i64 120, !8, i64 128, !11, i64 136, !11, i64 138, !12, i64 140, !12, i64 144, !12, i64 148, !9, i64 152, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !13, i64 312, !8, i64 360, !14, i64 368, !14, i64 384, !14, i64 400, !14, i64 416, !12, i64 432, !12, i64 436, !8, i64 440, !8, i64 448, !12, i64 456, !12, i64 460, !9, i64 464, !9, i64 476, !9, i64 488, !9, i64 500, !9, i64 512, !9, i64 524, !9, i64 536, !9, i64 548, !9, i64 560, !9, i64 576, !9, i64 592, !9, i64 604, !15, i64 616, !15, i64 620, !9, i64 624, !9, i64 688, !9, i64 752, !9, i64 816, !9, i64 880, !12, i64 944, !11, i64 948, !11, i64 950, !11, i64 952, !11, i64 954, !11, i64 956, !11, i64 958, !11, i64 960, !11, i64 962, !11, i64 964, !9, i64 966, !9, i64 967, !12, i64 968, !12, i64 972, !12, i64 976, !12, i64 980, !12, i64 984, !15, i64 988, !15, i64 992, !15, i64 996, !15, i64 1000, !15, i64 1004, !15, i64 1008, !15, i64 1012, !15, i64 1016, !15, i64 1020, !15, i64 1024, !15, i64 1028, !15, i64 1032, !11, i64 1036, !11, i64 1038, !11, i64 1040, !9, i64 1042, !9, i64 1043, !11, i64 1044, !9, i64 1046, !9, i64 1047, !15, i64 1048, !15, i64 1052, !14, i64 1056, !14, i64 1072, !14, i64 1088, !14, i64 1104, !15, i64 1120, !11, i64 1124, !11, i64 1126, !9, i64 1128, !12, i64 1144, !12, i64 1148, !8, i64 1152, !9, i64 1160, !9, i64 1161, !11, i64 1162, !9, i64 1164, !14, i64 1176, !14, i64 1192, !14, i64 1208, !14, i64 1224, !8, i64 1240, !8, i64 1248, !8, i64 1256, !9, i64 1264, !9, i64 1265, !11, i64 1266, !15, i64 1268, !8, i64 1272, !8, i64 1280, !8, i64 1288, !8, i64 1296, !16, i64 1304, !16, i64 1312, !12, i64 1320, !12, i64 1324, !14, i64 1328, !14, i64 1344, !8, i64 1360, !8, i64 1368, !8, i64 1376, !9, i64 1384, !8, i64 1392, !14, i64 1400, !8, i64 1416}
!7 = !{!"ID", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !11, i64 98, !12, i64 100, !12, i64 104, !12, i64 108, !8, i64 112}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"short", !9, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!"bAnimVizSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44}
!14 = !{!"ListBase", !8, i64 0, !8, i64 8}
!15 = !{!"float", !9, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!18, !8, i64 120}
!18 = !{!"bPoseChannel", !8, i64 0, !8, i64 8, !8, i64 16, !14, i64 24, !9, i64 40, !11, i64 104, !11, i64 106, !11, i64 108, !11, i64 110, !9, i64 112, !9, i64 113, !9, i64 114, !8, i64 120, !8, i64 128, !8, i64 136, !14, i64 144, !14, i64 160, !8, i64 176, !8, i64 184, !8, i64 192, !9, i64 200, !9, i64 212, !9, i64 224, !9, i64 236, !9, i64 252, !15, i64 264, !11, i64 268, !11, i64 270, !9, i64 272, !9, i64 336, !9, i64 400, !9, i64 464, !9, i64 476, !9, i64 488, !9, i64 500, !9, i64 512, !15, i64 524, !15, i64 528, !15, i64 532, !8, i64 536}
!19 = !{!6, !8, i64 296}
!20 = !{!21, !12, i64 320}
!21 = !{!"Bone", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !14, i64 32, !9, i64 48, !15, i64 112, !9, i64 116, !9, i64 128, !9, i64 140, !12, i64 176, !9, i64 180, !9, i64 192, !9, i64 204, !15, i64 268, !15, i64 272, !15, i64 276, !15, i64 280, !15, i64 284, !15, i64 288, !15, i64 292, !15, i64 296, !15, i64 300, !15, i64 304, !9, i64 308, !12, i64 320, !11, i64 324, !9, i64 326}
!22 = !{!23, !12, i64 216}
!23 = !{!"bArmature", !7, i64 0, !8, i64 120, !14, i64 128, !14, i64 144, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !11, i64 208, !11, i64 210, !12, i64 212, !12, i64 216, !12, i64 220, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !12, i64 232, !12, i64 236, !12, i64 240, !12, i64 244, !12, i64 248, !12, i64 252}
!24 = !{!21, !12, i64 176}
!25 = !{!23, !12, i64 192}
!26 = !{!27, !8, i64 32}
!27 = !{!"Base", !8, i64 0, !8, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !11, i64 28, !11, i64 30, !8, i64 32}
!28 = !{!29, !8, i64 168}
!29 = !{!"Scene", !7, i64 0, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !14, i64 152, !8, i64 168, !8, i64 176, !9, i64 184, !9, i64 196, !9, i64 208, !9, i64 220, !12, i64 232, !12, i64 236, !12, i64 240, !11, i64 244, !9, i64 246, !9, i64 247, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !30, i64 280, !39, i64 4264, !14, i64 4296, !14, i64 4312, !8, i64 4328, !8, i64 4336, !8, i64 4344, !8, i64 4352, !8, i64 4360, !8, i64 4368, !11, i64 4376, !11, i64 4378, !12, i64 4380, !14, i64 4384, !40, i64 4400, !41, i64 4416, !44, i64 4600, !8, i64 4608, !45, i64 4616, !8, i64 4640, !16, i64 4648, !16, i64 4656, !32, i64 4664, !33, i64 4824, !46, i64 4888, !8, i64 4952}
!30 = !{!"RenderData", !31, i64 0, !8, i64 248, !8, i64 256, !34, i64 264, !35, i64 328, !12, i64 400, !12, i64 404, !12, i64 408, !15, i64 412, !12, i64 416, !12, i64 420, !12, i64 424, !12, i64 428, !11, i64 432, !11, i64 434, !15, i64 436, !15, i64 440, !15, i64 444, !15, i64 448, !15, i64 452, !11, i64 456, !11, i64 458, !11, i64 460, !11, i64 462, !11, i64 464, !11, i64 466, !12, i64 468, !11, i64 472, !11, i64 474, !11, i64 476, !11, i64 478, !11, i64 480, !11, i64 482, !12, i64 484, !12, i64 488, !11, i64 492, !11, i64 494, !12, i64 496, !12, i64 500, !11, i64 504, !11, i64 506, !11, i64 508, !11, i64 510, !11, i64 512, !9, i64 514, !9, i64 515, !12, i64 516, !12, i64 520, !12, i64 524, !11, i64 528, !11, i64 530, !11, i64 532, !11, i64 534, !11, i64 536, !11, i64 538, !11, i64 540, !11, i64 542, !36, i64 544, !36, i64 560, !37, i64 576, !14, i64 592, !11, i64 608, !11, i64 610, !15, i64 612, !15, i64 616, !15, i64 620, !15, i64 624, !12, i64 628, !15, i64 632, !15, i64 636, !15, i64 640, !15, i64 644, !11, i64 648, !11, i64 650, !11, i64 652, !11, i64 654, !11, i64 656, !11, i64 658, !15, i64 660, !15, i64 664, !11, i64 668, !11, i64 670, !15, i64 672, !15, i64 676, !9, i64 680, !12, i64 1704, !11, i64 1708, !11, i64 1710, !9, i64 1712, !9, i64 2480, !9, i64 2496, !9, i64 2512, !9, i64 2513, !9, i64 2514, !9, i64 2515, !12, i64 2520, !11, i64 2524, !11, i64 2526, !15, i64 2528, !15, i64 2532, !11, i64 2536, !11, i64 2538, !15, i64 2540, !11, i64 2544, !11, i64 2546, !12, i64 2548, !11, i64 2552, !11, i64 2554, !11, i64 2556, !11, i64 2558, !15, i64 2560, !15, i64 2564, !8, i64 2568, !12, i64 2576, !15, i64 2580, !9, i64 2584, !38, i64 2616, !12, i64 3976, !12, i64 3980}
!31 = !{!"ImageFormatData", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7, !11, i64 8, !11, i64 10, !15, i64 12, !9, i64 16, !9, i64 17, !9, i64 18, !32, i64 24, !33, i64 184}
!32 = !{!"ColorManagedViewSettings", !12, i64 0, !12, i64 4, !9, i64 8, !9, i64 72, !15, i64 136, !15, i64 140, !8, i64 144, !8, i64 152}
!33 = !{!"ColorManagedDisplaySettings", !9, i64 0}
!34 = !{!"QuicktimeCodecSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !11, i64 48, !11, i64 50, !12, i64 52, !12, i64 56, !12, i64 60}
!35 = !{!"FFMpegCodecData", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !15, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !8, i64 64}
!36 = !{!"rctf", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!37 = !{!"rcti", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!38 = !{!"BakeData", !31, i64 0, !9, i64 248, !11, i64 1272, !11, i64 1274, !11, i64 1276, !11, i64 1278, !15, i64 1280, !15, i64 1284, !9, i64 1288, !9, i64 1291, !9, i64 1292, !9, i64 1293, !9, i64 1296}
!39 = !{!"AudioData", !12, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !12, i64 16, !11, i64 20, !11, i64 22, !15, i64 24, !15, i64 28}
!40 = !{!"GameFraming", !9, i64 0, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15}
!41 = !{!"GameData", !40, i64 0, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !11, i64 32, !9, i64 34, !42, i64 40, !11, i64 64, !11, i64 66, !15, i64 68, !43, i64 72, !15, i64 128, !15, i64 132, !12, i64 136, !11, i64 140, !11, i64 142, !11, i64 144, !11, i64 146, !11, i64 148, !11, i64 150, !11, i64 152, !11, i64 154, !11, i64 156, !11, i64 158, !11, i64 160, !11, i64 162, !15, i64 164, !15, i64 168, !15, i64 172, !15, i64 176, !15, i64 180}
!42 = !{!"GameDome", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !15, i64 8, !15, i64 12, !8, i64 16}
!43 = !{!"RecastData", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !12, i64 40, !15, i64 44, !15, i64 48, !11, i64 52, !11, i64 54}
!44 = !{!"UnitSettings", !15, i64 0, !9, i64 4, !9, i64 5, !11, i64 6}
!45 = !{!"PhysicsSettings", !9, i64 0, !12, i64 12, !12, i64 16, !12, i64 20}
!46 = !{!"ColorManagedColorspaceSettings", !9, i64 0}
!47 = !{!6, !12, i64 432}
!48 = !{!23, !8, i64 168}
!49 = !{!8, !8, i64 0}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = distinct !{!52, !51}
!53 = !{!54, !8, i64 0}
!54 = !{!"wmOperatorType", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !14, i64 112, !8, i64 128, !8, i64 136, !8, i64 144, !55, i64 152, !11, i64 184}
!55 = !{!"ExtensionRNA", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!56 = !{!54, !8, i64 8}
!57 = !{!54, !8, i64 24}
!58 = !{!54, !8, i64 48}
!59 = !{!54, !8, i64 72}
!60 = !{!54, !11, i64 184}
!61 = !{!54, !8, i64 88}
!62 = !{!63, !8, i64 112}
!63 = !{!"wmOperator", !8, i64 0, !8, i64 8, !9, i64 16, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !14, i64 128, !8, i64 144, !8, i64 152, !11, i64 160, !9, i64 162}
!64 = !{!12, !12, i64 0}
!65 = !{!21, !8, i64 24}
!66 = distinct !{!66, !51}
!67 = !{!21, !8, i64 32}
!68 = !{!54, !8, i64 32}
!69 = !{!29, !8, i64 264}
!70 = !{!71, !9, i64 445}
!71 = !{!"ToolSettings", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !15, i64 32, !15, i64 36, !15, i64 40, !11, i64 44, !11, i64 46, !9, i64 48, !9, i64 49, !9, i64 50, !9, i64 51, !15, i64 52, !11, i64 56, !9, i64 58, !9, i64 59, !72, i64 64, !74, i64 168, !15, i64 336, !15, i64 340, !11, i64 344, !11, i64 346, !9, i64 348, !9, i64 349, !11, i64 350, !15, i64 352, !15, i64 356, !15, i64 360, !15, i64 364, !15, i64 368, !15, i64 372, !15, i64 376, !15, i64 380, !15, i64 384, !15, i64 388, !11, i64 392, !9, i64 394, !9, i64 395, !9, i64 396, !9, i64 399, !8, i64 400, !9, i64 408, !9, i64 409, !9, i64 410, !9, i64 411, !9, i64 412, !9, i64 413, !9, i64 421, !9, i64 429, !9, i64 430, !9, i64 431, !9, i64 432, !9, i64 433, !11, i64 434, !11, i64 436, !11, i64 438, !11, i64 440, !9, i64 442, !9, i64 443, !9, i64 444, !9, i64 445, !9, i64 446, !9, i64 447, !12, i64 448, !12, i64 452, !12, i64 456, !12, i64 460, !11, i64 464, !11, i64 466, !12, i64 468, !15, i64 472, !15, i64 476, !75, i64 480, !76, i64 608}
!72 = !{!"ImagePaintSettings", !73, i64 0, !11, i64 40, !11, i64 42, !11, i64 44, !11, i64 46, !9, i64 48, !12, i64 52, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !9, i64 88, !15, i64 100}
!73 = !{!"Paint", !8, i64 0, !8, i64 8, !8, i64 16, !9, i64 24, !12, i64 28, !12, i64 32, !12, i64 36}
!74 = !{!"ParticleEditSettings", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !9, i64 8, !8, i64 120, !15, i64 128, !15, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !8, i64 152, !8, i64 160}
!75 = !{!"UnifiedPaintSettings", !12, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !9, i64 16, !9, i64 28, !12, i64 40, !9, i64 44, !15, i64 52, !12, i64 56, !12, i64 60, !9, i64 64, !9, i64 65, !15, i64 72, !9, i64 76, !12, i64 84, !15, i64 88, !9, i64 92, !9, i64 100, !12, i64 108, !8, i64 112, !15, i64 120, !12, i64 124}
!76 = !{!"MeshStatVis", !9, i64 0, !9, i64 1, !9, i64 3, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !9, i64 20, !9, i64 21, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36}
!77 = !{!78, !8, i64 32}
!78 = !{!"CollectionPointerLink", !8, i64 0, !8, i64 8, !79, i64 16}
!79 = !{!"PointerRNA", !80, i64 0, !8, i64 8, !8, i64 16}
!80 = !{!"", !8, i64 0}
!81 = distinct !{!81, !51}
!82 = !{!18, !8, i64 128}
!83 = !{!84, !8, i64 104}
!84 = !{!"bConstraintTypeInfo", !11, i64 0, !11, i64 2, !9, i64 4, !9, i64 36, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128}
!85 = !{!86, !8, i64 16}
!86 = !{!"bConstraintTarget", !8, i64 0, !8, i64 8, !8, i64 16, !9, i64 24, !9, i64 88, !11, i64 152, !11, i64 154, !11, i64 156, !11, i64 158}
!87 = !{!9, !9, i64 0}
!88 = distinct !{!88, !51}
!89 = !{!84, !8, i64 112}
!90 = distinct !{!90, !51}
!91 = distinct !{!91, !51}
!92 = !{!54, !8, i64 104}
!93 = !{!18, !8, i64 136}
!94 = distinct !{!94, !51}
!95 = !{i8 0, i8 2}
!96 = !{!63, !8, i64 120}
!97 = !{!18, !8, i64 536}
!98 = distinct !{!98, !51}
!99 = distinct !{!99, !51}
!100 = distinct !{!100, !51}
!101 = distinct !{!101, !51}
!102 = distinct !{!102, !51}
!103 = !{!18, !11, i64 110}
!104 = distinct !{!104, !51}
!105 = distinct !{!105, !51}
!106 = !{!107, !8, i64 16}
!107 = !{!"KeyingSet", !8, i64 0, !8, i64 8, !14, i64 16, !9, i64 32, !9, i64 96, !9, i64 160, !9, i64 400, !11, i64 464, !11, i64 466, !12, i64 468}
!108 = !{!107, !11, i64 464}
!109 = distinct !{!109, !51}
!110 = !{!111, !8, i64 16}
!111 = !{!"KS_Path", !8, i64 0, !8, i64 8, !8, i64 16, !9, i64 24, !12, i64 88, !11, i64 92, !11, i64 94, !8, i64 96, !12, i64 104, !11, i64 108, !11, i64 110}
!112 = !{!111, !8, i64 96}
!113 = distinct !{!113, !51}
