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

; Function Attrs: nounwind uwtable
define dso_local void @ED_pose_bone_select(ptr noundef %0, ptr noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %42, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %1, null
  %10 = or i1 %9, %8
  br i1 %10, label %42, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %1, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %42, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  %18 = getelementptr inbounds %struct.Bone, ptr %13, i64 0, i32 25
  %19 = load i32, ptr %18, align 8, !tbaa !49
  %20 = getelementptr inbounds %struct.bArmature, ptr %17, i64 0, i32 15
  %21 = load i32, ptr %20, align 8, !tbaa !51
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.Bone, ptr %13, i64 0, i32 10
  %26 = load i32, ptr %25, align 8, !tbaa !53
  %27 = and i32 %26, 2097216
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = icmp eq i8 %2, 0
  %31 = getelementptr inbounds %struct.bArmature, ptr %17, i64 0, i32 5
  %32 = and i32 %26, -2097218
  %33 = or i32 %26, 1
  %34 = select i1 %30, i32 %32, i32 %33
  %35 = select i1 %30, ptr null, ptr %13
  store i32 %34, ptr %25, align 8, !tbaa !53
  store ptr %35, ptr %31, align 8, !tbaa !54
  %36 = getelementptr inbounds %struct.bArmature, ptr %17, i64 0, i32 8
  %37 = load i32, ptr %36, align 8, !tbaa !55
  %38 = and i32 %37, 16384
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  tail call void @DAG_id_tag_update(ptr noundef nonnull %0, i16 noundef signext 2) #9
  br label %41

41:                                               ; preds = %40, %29
  tail call void @WM_main_add_notifier(i32 noundef 274399232, ptr noundef nonnull %0) #9
  br label %42

42:                                               ; preds = %24, %41, %15, %3, %5, %11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ED_do_pose_selectbuffer(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7) local_unnamed_addr #0 {
  %9 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = icmp eq ptr %10, null
  br i1 %11, label %121, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %121, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @get_bone_from_selectbuffer(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3, i16 noundef signext 1, i8 noundef zeroext %7) #9
  %18 = icmp ne ptr %17, null
  br i1 %18, label %19, label %119

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Bone, ptr %17, i64 0, i32 10
  %21 = load i32, ptr %20, align 8, !tbaa !53
  %22 = and i32 %21, 2097152
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %119

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !58
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Base, ptr %26, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !56
  br label %31

31:                                               ; preds = %24, %28
  %32 = phi ptr [ %30, %28 ], [ null, %24 ]
  %33 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %35 = icmp eq ptr %32, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = icmp eq ptr %32, %10
  br i1 %37, label %50, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.Object, ptr %32, i64 0, i32 27
  %40 = load i32, ptr %39, align 8, !tbaa !77
  %41 = and i32 %40, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38, %31
  %44 = or i8 %5, %4
  %45 = icmp eq i8 %44, 0
  %46 = icmp ne i8 %6, 0
  %47 = and i1 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = and i32 %21, -2097154
  store i32 %49, ptr %20, align 8, !tbaa !53
  br label %50

50:                                               ; preds = %43, %48, %38, %36
  %51 = icmp eq i8 %5, 0
  %52 = or i8 %5, %4
  %53 = icmp eq i8 %6, 0
  %54 = or i8 %52, %6
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %50
  %57 = load ptr, ptr %13, align 8, !tbaa !34
  %58 = icmp eq ptr %57, null
  br i1 %58, label %71, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %57, align 8, !tbaa !78
  %61 = icmp eq ptr %60, null
  br i1 %61, label %71, label %62

62:                                               ; preds = %59, %62
  %63 = phi ptr [ %69, %62 ], [ %60, %59 ]
  %64 = getelementptr inbounds %struct.bPoseChannel, ptr %63, i64 0, i32 12
  %65 = load ptr, ptr %64, align 8, !tbaa !46
  %66 = getelementptr inbounds %struct.Bone, ptr %65, i64 0, i32 10
  %67 = load i32, ptr %66, align 8, !tbaa !53
  %68 = and i32 %67, -8
  store i32 %68, ptr %66, align 8, !tbaa !53
  %69 = load ptr, ptr %63, align 8, !tbaa !78
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %62, !llvm.loop !79

71:                                               ; preds = %62, %59, %56
  %72 = load i32, ptr %20, align 8, !tbaa !53
  %73 = or i32 %72, 7
  store i32 %73, ptr %20, align 8, !tbaa !53
  %74 = getelementptr inbounds %struct.bArmature, ptr %34, i64 0, i32 5
  store ptr %17, ptr %74, align 8, !tbaa !54
  br label %100

75:                                               ; preds = %50
  %76 = icmp eq i8 %4, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %75
  %78 = load i32, ptr %20, align 8, !tbaa !53
  %79 = or i32 %78, 7
  store i32 %79, ptr %20, align 8, !tbaa !53
  %80 = getelementptr inbounds %struct.bArmature, ptr %34, i64 0, i32 5
  store ptr %17, ptr %80, align 8, !tbaa !54
  br label %100

81:                                               ; preds = %75
  br i1 %51, label %85, label %82

82:                                               ; preds = %81
  %83 = load i32, ptr %20, align 8, !tbaa !53
  %84 = and i32 %83, -8
  store i32 %84, ptr %20, align 8, !tbaa !53
  br label %100

85:                                               ; preds = %81
  br i1 %53, label %100, label %86

86:                                               ; preds = %85
  %87 = load i32, ptr %20, align 8, !tbaa !53
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.bArmature, ptr %34, i64 0, i32 5
  %92 = load ptr, ptr %91, align 8, !tbaa !54
  %93 = icmp eq ptr %17, %92
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  store ptr %17, ptr %91, align 8, !tbaa !54
  br label %100

95:                                               ; preds = %90
  %96 = and i32 %87, -8
  store i32 %96, ptr %20, align 8, !tbaa !53
  br label %100

97:                                               ; preds = %86
  %98 = or i32 %87, 7
  store i32 %98, ptr %20, align 8, !tbaa !53
  %99 = getelementptr inbounds %struct.bArmature, ptr %34, i64 0, i32 5
  store ptr %17, ptr %99, align 8, !tbaa !54
  br label %100

100:                                              ; preds = %77, %85, %94, %95, %97, %82, %71
  br i1 %35, label %119, label %101

101:                                              ; preds = %100
  %102 = getelementptr inbounds %struct.Object, ptr %32, i64 0, i32 27
  %103 = load i32, ptr %102, align 8, !tbaa !77
  %104 = and i32 %103, 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.bArmature, ptr %34, i64 0, i32 5
  %108 = load ptr, ptr %107, align 8, !tbaa !54
  %109 = icmp eq ptr %17, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.Bone, ptr %17, i64 0, i32 5
  tail call void @ED_vgroup_select_by_name(ptr noundef nonnull %32, ptr noundef nonnull %111) #9
  br label %117

112:                                              ; preds = %101
  %113 = getelementptr inbounds %struct.bArmature, ptr %34, i64 0, i32 8
  %114 = load i32, ptr %113, align 8, !tbaa !55
  %115 = and i32 %114, 16384
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %112, %110
  %118 = phi ptr [ %32, %110 ], [ %10, %112 ]
  tail call void @DAG_id_tag_update(ptr noundef nonnull %118, i16 noundef signext 2) #9
  br label %119

119:                                              ; preds = %117, %100, %112, %106, %19, %16
  %120 = zext i1 %18 to i32
  br label %121

121:                                              ; preds = %8, %12, %119
  %122 = phi i32 [ %120, %119 ], [ 0, %12 ], [ 0, %8 ]
  ret i32 %122
}

declare ptr @get_bone_from_selectbuffer(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_pose_de_selectall(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %97, label %9

9:                                                ; preds = %3
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %9
  %12 = load ptr, ptr %7, align 8, !tbaa !78
  %13 = icmp eq ptr %12, null
  br i1 %13, label %42, label %14

14:                                               ; preds = %11
  %15 = icmp eq i8 %2, 0
  %16 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 15
  br label %17

17:                                               ; preds = %14, %39
  %18 = phi ptr [ %12, %14 ], [ %40, %39 ]
  br i1 %15, label %19, label %32

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.Bone, ptr %21, i64 0, i32 25
  %23 = load i32, ptr %22, align 8, !tbaa !49
  %24 = load i32, ptr %16, align 8, !tbaa !51
  %25 = and i32 %24, %23
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.Bone, ptr %21, i64 0, i32 10
  %29 = load i32, ptr %28, align 8, !tbaa !53
  %30 = and i32 %29, 64
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27, %17
  %33 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 12
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = getelementptr inbounds %struct.Bone, ptr %34, i64 0, i32 10
  %36 = load i32, ptr %35, align 8, !tbaa !53
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %27, %32, %19
  %40 = load ptr, ptr %18, align 8, !tbaa !78
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %17, !llvm.loop !82

42:                                               ; preds = %39, %32, %11, %9
  %43 = phi i32 [ %1, %9 ], [ 1, %11 ], [ 2, %32 ], [ 1, %39 ]
  %44 = load ptr, ptr %7, align 8, !tbaa !78
  %45 = icmp eq ptr %44, null
  br i1 %45, label %97, label %46

46:                                               ; preds = %42
  %47 = icmp eq i8 %2, 0
  %48 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 15
  br label %49

49:                                               ; preds = %46, %94
  %50 = phi ptr [ %44, %46 ], [ %95, %94 ]
  br i1 %47, label %51, label %64

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.bPoseChannel, ptr %50, i64 0, i32 12
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = getelementptr inbounds %struct.Bone, ptr %53, i64 0, i32 25
  %55 = load i32, ptr %54, align 8, !tbaa !49
  %56 = load i32, ptr %48, align 8, !tbaa !51
  %57 = and i32 %56, %55
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %94, label %59

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.Bone, ptr %53, i64 0, i32 10
  %61 = load i32, ptr %60, align 8, !tbaa !53
  %62 = and i32 %61, 64
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %94

64:                                               ; preds = %59, %49
  switch i32 %43, label %94 [
    i32 1, label %65
    i32 2, label %74
    i32 3, label %80
  ]

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.bPoseChannel, ptr %50, i64 0, i32 12
  %67 = load ptr, ptr %66, align 8, !tbaa !46
  %68 = getelementptr inbounds %struct.Bone, ptr %67, i64 0, i32 10
  %69 = load i32, ptr %68, align 8, !tbaa !53
  %70 = and i32 %69, 2097152
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %65
  %73 = or i32 %69, 1
  store i32 %73, ptr %68, align 8, !tbaa !53
  br label %94

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.bPoseChannel, ptr %50, i64 0, i32 12
  %76 = load ptr, ptr %75, align 8, !tbaa !46
  %77 = getelementptr inbounds %struct.Bone, ptr %76, i64 0, i32 10
  %78 = load i32, ptr %77, align 8, !tbaa !53
  %79 = and i32 %78, -8
  store i32 %79, ptr %77, align 8, !tbaa !53
  br label %94

80:                                               ; preds = %64
  %81 = getelementptr inbounds %struct.bPoseChannel, ptr %50, i64 0, i32 12
  %82 = load ptr, ptr %81, align 8, !tbaa !46
  %83 = getelementptr inbounds %struct.Bone, ptr %82, i64 0, i32 10
  %84 = load i32, ptr %83, align 8, !tbaa !53
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %80
  %88 = and i32 %84, -8
  store i32 %88, ptr %83, align 8, !tbaa !53
  br label %94

89:                                               ; preds = %80
  %90 = and i32 %84, 2097152
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = or disjoint i32 %84, 1
  store i32 %93, ptr %83, align 8, !tbaa !53
  br label %94

94:                                               ; preds = %92, %89, %87, %74, %72, %65, %64, %59, %51
  %95 = load ptr, ptr %50, align 8, !tbaa !78
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %49, !llvm.loop !79

97:                                               ; preds = %94, %42, %3
  ret void
}

declare void @ED_vgroup_select_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @POSE_OT_select_linked(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @pose_select_connected_invoke, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @pose_select_linked_poll, ptr %5, align 8, !tbaa !89
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !90
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_select_connected_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #9
  %5 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !92
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.3) #9
  tail call void @view3d_operator_needs_opengl(ptr noundef %0) #9
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !94
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !94
  %17 = zext i1 %12 to i16
  %18 = tail call ptr @get_nearest_bone(ptr noundef %0, i16 noundef signext %17, i32 noundef %14, i32 noundef %16) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %52, label %20

20:                                               ; preds = %3, %35
  %21 = phi ptr [ %36, %35 ], [ %18, %3 ]
  %22 = getelementptr inbounds %struct.Bone, ptr %21, i64 0, i32 10
  %23 = load i32, ptr %22, align 8, !tbaa !53
  %24 = and i32 %23, 2097152
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = or i32 %23, 1
  %28 = and i32 %23, -2097154
  %29 = select i1 %12, i32 %27, i32 %28
  store i32 %29, ptr %22, align 8, !tbaa !53
  %30 = and i32 %29, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.Bone, ptr %21, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !95
  br label %35

35:                                               ; preds = %20, %26, %32
  %36 = phi ptr [ %34, %32 ], [ null, %26 ], [ null, %20 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %20, !llvm.loop !96

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.Bone, ptr %18, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !97
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = icmp eq ptr %36, null
  br label %44

44:                                               ; preds = %42, %44
  %45 = phi ptr [ %40, %42 ], [ %36, %44 ]
  tail call fastcc void @selectconnected_posebonechildren(ptr noundef nonnull %45, i32 noundef %11)
  br i1 %43, label %46, label %44, !llvm.loop !98

46:                                               ; preds = %44, %38
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %5) #9
  %47 = getelementptr inbounds %struct.bArmature, ptr %7, i64 0, i32 8
  %48 = load i32, ptr %47, align 8, !tbaa !55
  %49 = and i32 %48, 16384
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  tail call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 2) #9
  br label %52

52:                                               ; preds = %46, %51, %3
  %53 = phi i32 [ 2, %3 ], [ 4, %51 ], [ 4, %46 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal i32 @pose_select_linked_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_operator_view3d_active(ptr noundef %0) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @ED_operator_posemode(ptr noundef %0) #9
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 0, %1 ], [ %7, %4 ]
  ret i32 %9
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @POSE_OT_select_all(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_de_select_all_exec, ptr %4, align 8, !tbaa !99
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !89
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !90
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_de_select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.46) #9
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %8 = tail call ptr @ED_object_context(ptr noundef %0) #9
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !100
  %13 = getelementptr inbounds %struct.ToolSettings, ptr %12, i64 0, i32 61
  %14 = load i8, ptr %13, align 1, !tbaa !101
  %15 = icmp eq i32 %6, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = tail call i32 @ctx_data_list_count(ptr noundef %0, ptr noundef nonnull @CTX_data_selected_pose_bones) #9
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 1, i32 2
  br label %20

20:                                               ; preds = %16, %2
  %21 = phi i32 [ %19, %16 ], [ %6, %2 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %22 = call i32 @CTX_data_visible_pose_bones(ptr noundef %0, ptr noundef nonnull %3) #9
  %23 = load ptr, ptr %3, align 8, !tbaa !78
  %24 = icmp eq ptr %23, null
  br i1 %24, label %61, label %25

25:                                               ; preds = %20, %58
  %26 = phi ptr [ %59, %58 ], [ %23, %20 ]
  %27 = getelementptr inbounds %struct.CollectionPointerLink, ptr %26, i64 0, i32 2, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !108
  switch i32 %21, label %58 [
    i32 1, label %29
    i32 2, label %38
    i32 3, label %44
  ]

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.bPoseChannel, ptr %28, i64 0, i32 12
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = getelementptr inbounds %struct.Bone, ptr %31, i64 0, i32 10
  %33 = load i32, ptr %32, align 8, !tbaa !53
  %34 = and i32 %33, 2097152
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %29
  %37 = or i32 %33, 1
  store i32 %37, ptr %32, align 8, !tbaa !53
  br label %58

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.bPoseChannel, ptr %28, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = getelementptr inbounds %struct.Bone, ptr %40, i64 0, i32 10
  %42 = load i32, ptr %41, align 8, !tbaa !53
  %43 = and i32 %42, -8
  store i32 %43, ptr %41, align 8, !tbaa !53
  br label %58

44:                                               ; preds = %25
  %45 = getelementptr inbounds %struct.bPoseChannel, ptr %28, i64 0, i32 12
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  %47 = getelementptr inbounds %struct.Bone, ptr %46, i64 0, i32 10
  %48 = load i32, ptr %47, align 8, !tbaa !53
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = and i32 %48, -8
  store i32 %52, ptr %47, align 8, !tbaa !53
  br label %58

53:                                               ; preds = %44
  %54 = and i32 %48, 2097152
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = or disjoint i32 %48, 1
  store i32 %57, ptr %47, align 8, !tbaa !53
  br label %58

58:                                               ; preds = %25, %29, %36, %38, %51, %53, %56
  %59 = load ptr, ptr %26, align 8, !tbaa !78
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %25, !llvm.loop !112

61:                                               ; preds = %58, %20
  call void @BLI_freelistN(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef null) #9
  %62 = icmp eq i8 %14, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.bArmature, ptr %10, i64 0, i32 8
  %65 = load i32, ptr %64, align 8, !tbaa !55
  %66 = and i32 %65, 16384
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63, %61
  call void @DAG_id_tag_update(ptr noundef %8, i16 noundef signext 2) #9
  br label %69

69:                                               ; preds = %68, %63
  ret i32 4
}

declare i32 @ED_operator_posemode(ptr noundef) #2

declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_select_parent(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_select_parent_exec, ptr %4, align 8, !tbaa !99
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !89
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !90
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_select_parent_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #9
  %4 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = tail call ptr @CTX_data_active_pose_bone(ptr noundef %0) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.bPoseChannel, ptr %7, i64 0, i32 13
  %11 = load ptr, ptr %10, align 8, !tbaa !113
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %11, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.Bone, ptr %15, i64 0, i32 10
  %17 = load i32, ptr %16, align 8, !tbaa !53
  %18 = and i32 %17, 2097216
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = or i32 %17, 1
  store i32 %21, ptr %16, align 8, !tbaa !53
  %22 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 5
  store ptr %15, ptr %22, align 8, !tbaa !54
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %4) #9
  %23 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 8
  %24 = load i32, ptr %23, align 8, !tbaa !55
  %25 = and i32 %24, 16384
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #9
  br label %28

28:                                               ; preds = %20, %27, %2, %9, %13
  %29 = phi i32 [ 2, %13 ], [ 2, %9 ], [ 2, %2 ], [ 4, %27 ], [ 4, %20 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_select_constraint_target(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_select_constraint_target_exec, ptr %4, align 8, !tbaa !99
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !89
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !90
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_select_constraint_target_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #9
  %6 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %9 = call i32 @CTX_data_visible_pose_bones(ptr noundef %0, ptr noundef nonnull %3) #9
  %10 = load ptr, ptr %3, align 8, !tbaa !78
  %11 = icmp eq ptr %10, null
  br i1 %11, label %91, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 18
  br label %14

14:                                               ; preds = %12, %79
  %15 = phi ptr [ %10, %12 ], [ %81, %79 ]
  %16 = phi i32 [ 0, %12 ], [ %80, %79 ]
  %17 = getelementptr inbounds %struct.CollectionPointerLink, ptr %15, i64 0, i32 2, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !108
  %19 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.Bone, ptr %20, i64 0, i32 10
  %22 = load i32, ptr %21, align 8, !tbaa !53
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %79, label %25

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.bPoseChannel, ptr %18, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !78
  %28 = icmp eq ptr %27, null
  br i1 %28, label %79, label %29

29:                                               ; preds = %25, %75
  %30 = phi ptr [ %77, %75 ], [ %27, %25 ]
  %31 = phi i32 [ %76, %75 ], [ %16, %25 ]
  %32 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %30) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %33 = icmp eq ptr %32, null
  br i1 %33, label %75, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %32, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !114
  %37 = icmp eq ptr %36, null
  br i1 %37, label %75, label %38

38:                                               ; preds = %34
  %39 = call i32 %36(ptr noundef nonnull %30, ptr noundef nonnull %4) #9
  %40 = load ptr, ptr %4, align 8, !tbaa !78
  %41 = icmp eq ptr %40, null
  br i1 %41, label %69, label %42

42:                                               ; preds = %38, %65
  %43 = phi ptr [ %67, %65 ], [ %40, %38 ]
  %44 = phi i32 [ %66, %65 ], [ %31, %38 ]
  %45 = getelementptr inbounds %struct.bConstraintTarget, ptr %43, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !116
  %47 = icmp eq ptr %46, %6
  br i1 %47, label %48, label %65

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.bConstraintTarget, ptr %43, i64 0, i32 3
  %50 = load i8, ptr %49, align 8, !tbaa !118
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %13, align 8, !tbaa !34
  %54 = call ptr @BKE_pose_channel_find_name(ptr noundef %53, ptr noundef nonnull %49) #9
  %55 = icmp eq ptr %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.bPoseChannel, ptr %54, i64 0, i32 12
  %58 = load ptr, ptr %57, align 8, !tbaa !46
  %59 = getelementptr inbounds %struct.Bone, ptr %58, i64 0, i32 10
  %60 = load i32, ptr %59, align 8, !tbaa !53
  %61 = and i32 %60, 2097152
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = or i32 %60, 7
  store i32 %64, ptr %59, align 8, !tbaa !53
  br label %65

65:                                               ; preds = %52, %56, %63, %42, %48
  %66 = phi i32 [ %44, %48 ], [ %44, %42 ], [ %44, %56 ], [ 1, %63 ], [ %44, %52 ]
  %67 = load ptr, ptr %43, align 8, !tbaa !78
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %42, !llvm.loop !119

69:                                               ; preds = %65, %38
  %70 = phi i32 [ %31, %38 ], [ %66, %65 ]
  %71 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %32, i64 0, i32 9
  %72 = load ptr, ptr %71, align 8, !tbaa !120
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  call void %72(ptr noundef nonnull %30, ptr noundef nonnull %4, i8 noundef zeroext 1) #9
  br label %75

75:                                               ; preds = %69, %74, %34, %29
  %76 = phi i32 [ %70, %74 ], [ %70, %69 ], [ %31, %34 ], [ %31, %29 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  %77 = load ptr, ptr %30, align 8, !tbaa !78
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %29, !llvm.loop !121

79:                                               ; preds = %75, %25, %14
  %80 = phi i32 [ %16, %14 ], [ %16, %25 ], [ %76, %75 ]
  %81 = load ptr, ptr %15, align 8, !tbaa !78
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %14, !llvm.loop !122

83:                                               ; preds = %79
  %84 = icmp eq i32 %80, 0
  call void @BLI_freelistN(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br i1 %84, label %92, label %85

85:                                               ; preds = %83
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %6) #9
  %86 = getelementptr inbounds %struct.bArmature, ptr %8, i64 0, i32 8
  %87 = load i32, ptr %86, align 8, !tbaa !55
  %88 = and i32 %87, 16384
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %85
  call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 2) #9
  br label %92

91:                                               ; preds = %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br label %92

92:                                               ; preds = %91, %85, %90, %83
  %93 = phi i32 [ 2, %83 ], [ 4, %90 ], [ 4, %85 ], [ 2, %91 ]
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define dso_local void @POSE_OT_select_hierarchy(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.20, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.21, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_select_hierarchy_exec, ptr %4, align 8, !tbaa !99
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !89
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !90
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.23, ptr noundef nonnull @POSE_OT_select_hierarchy.direction_items, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.17) #9
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !123
  %11 = load ptr, ptr %7, align 8, !tbaa !91
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.25) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_select_hierarchy_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #9
  %5 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !92
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.23) #9
  %11 = load ptr, ptr %8, align 8, !tbaa !92
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.3) #9
  %13 = trunc i32 %12 to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %14 = call i32 @CTX_data_visible_pose_bones(ptr noundef %0, ptr noundef nonnull %3) #9
  %15 = getelementptr inbounds %struct.bArmature, ptr %7, i64 0, i32 5
  %16 = icmp eq i32 %10, 0
  %17 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 18
  %18 = getelementptr inbounds %struct.bArmature, ptr %7, i64 0, i32 15
  %19 = getelementptr inbounds %struct.bArmature, ptr %7, i64 0, i32 15
  %20 = icmp eq i8 %13, 0
  %21 = getelementptr inbounds %struct.bArmature, ptr %7, i64 0, i32 15
  %22 = icmp eq i8 %13, 0
  br label %23

23:                                               ; preds = %119, %2
  %24 = phi i8 [ 0, %2 ], [ %120, %119 ]
  %25 = phi ptr [ %3, %2 ], [ %26, %119 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !78
  %27 = icmp eq ptr %26, null
  br i1 %27, label %122, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.CollectionPointerLink, ptr %26, i64 0, i32 2, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !108
  %31 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 12
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = getelementptr inbounds %struct.Bone, ptr %32, i64 0, i32 10
  %34 = load i32, ptr %33, align 8, !tbaa !53
  %35 = and i32 %34, 2097152
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %119

37:                                               ; preds = %28
  %38 = load ptr, ptr %15, align 8, !tbaa !54
  %39 = icmp eq ptr %32, %38
  br i1 %39, label %40, label %119

40:                                               ; preds = %37
  br i1 %16, label %41, label %59

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 13
  %43 = load ptr, ptr %42, align 8, !tbaa !113
  %44 = icmp eq ptr %43, null
  br i1 %44, label %119, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.bPoseChannel, ptr %43, i64 0, i32 12
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  %48 = getelementptr inbounds %struct.Bone, ptr %47, i64 0, i32 25
  %49 = load i32, ptr %48, align 8, !tbaa !49
  %50 = load i32, ptr %21, align 8, !tbaa !51
  %51 = and i32 %50, %49
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %119, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.Bone, ptr %47, i64 0, i32 10
  %55 = load i32, ptr %54, align 8, !tbaa !53
  %56 = and i32 %55, 2097216
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %119

58:                                               ; preds = %53
  br i1 %22, label %110, label %114

59:                                               ; preds = %40
  %60 = getelementptr inbounds %struct.bPoseChannel, ptr %30, i64 0, i32 14
  %61 = load ptr, ptr %60, align 8, !tbaa !124
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.bPoseChannel, ptr %61, i64 0, i32 12
  %65 = load ptr, ptr %64, align 8, !tbaa !46
  br label %66

66:                                               ; preds = %59, %63
  %67 = phi ptr [ %65, %63 ], [ null, %59 ]
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %95

69:                                               ; preds = %66
  %70 = load ptr, ptr %17, align 8, !tbaa !34
  %71 = load ptr, ptr %70, align 8, !tbaa !78
  %72 = icmp eq ptr %71, null
  br i1 %72, label %95, label %73

73:                                               ; preds = %69
  %74 = load i32, ptr %18, align 8, !tbaa !51
  br label %75

75:                                               ; preds = %73, %92
  %76 = phi ptr [ %71, %73 ], [ %93, %92 ]
  %77 = getelementptr inbounds %struct.bPoseChannel, ptr %76, i64 0, i32 12
  %78 = load ptr, ptr %77, align 8, !tbaa !46
  %79 = getelementptr inbounds %struct.Bone, ptr %78, i64 0, i32 25
  %80 = load i32, ptr %79, align 8, !tbaa !49
  %81 = and i32 %74, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.Bone, ptr %78, i64 0, i32 10
  %85 = load i32, ptr %84, align 8, !tbaa !53
  %86 = and i32 %85, 2097216
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.bPoseChannel, ptr %76, i64 0, i32 13
  %90 = load ptr, ptr %89, align 8, !tbaa !113
  %91 = icmp eq ptr %90, %30
  br i1 %91, label %95, label %92

92:                                               ; preds = %83, %88, %75
  %93 = load ptr, ptr %76, align 8, !tbaa !78
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %75, !llvm.loop !125

95:                                               ; preds = %88, %92, %69, %66
  %96 = phi ptr [ %67, %66 ], [ null, %69 ], [ null, %92 ], [ %78, %88 ]
  %97 = icmp eq ptr %96, null
  br i1 %97, label %119, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.Bone, ptr %96, i64 0, i32 25
  %100 = load i32, ptr %99, align 8, !tbaa !49
  %101 = load i32, ptr %19, align 8, !tbaa !51
  %102 = and i32 %101, %100
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %119, label %104

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.Bone, ptr %96, i64 0, i32 10
  %106 = load i32, ptr %105, align 8, !tbaa !53
  %107 = and i32 %106, 2097216
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %104
  br i1 %20, label %110, label %114

110:                                              ; preds = %109, %58
  %111 = phi ptr [ %54, %58 ], [ %105, %109 ]
  %112 = phi ptr [ %47, %58 ], [ %96, %109 ]
  %113 = and i32 %34, -2097154
  store i32 %113, ptr %33, align 8, !tbaa !53
  br label %114

114:                                              ; preds = %110, %109, %58
  %115 = phi ptr [ %54, %58 ], [ %105, %109 ], [ %111, %110 ]
  %116 = phi ptr [ %47, %58 ], [ %96, %109 ], [ %112, %110 ]
  %117 = load i32, ptr %115, align 8, !tbaa !53
  %118 = or i32 %117, 1
  store i32 %118, ptr %115, align 8, !tbaa !53
  store ptr %116, ptr %15, align 8, !tbaa !54
  br label %119

119:                                              ; preds = %114, %28, %45, %53, %98, %104, %37, %95, %41
  %120 = phi i8 [ %24, %41 ], [ %24, %95 ], [ %24, %37 ], [ %24, %104 ], [ %24, %98 ], [ %24, %53 ], [ %24, %45 ], [ %24, %28 ], [ 1, %114 ]
  %121 = phi i1 [ false, %41 ], [ false, %95 ], [ false, %37 ], [ false, %104 ], [ false, %98 ], [ false, %53 ], [ false, %45 ], [ false, %28 ], [ true, %114 ]
  br i1 %121, label %122, label %23, !llvm.loop !126

122:                                              ; preds = %119, %23
  %123 = phi i8 [ %120, %119 ], [ %24, %23 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %122
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %5) #9
  %126 = getelementptr inbounds %struct.bArmature, ptr %7, i64 0, i32 8
  %127 = load i32, ptr %126, align 8, !tbaa !55
  %128 = and i32 %127, 16384
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %125
  call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 2) #9
  br label %131

131:                                              ; preds = %125, %130, %122
  %132 = phi i32 [ 2, %122 ], [ 4, %130 ], [ 4, %125 ]
  ret i32 %132
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @POSE_OT_select_grouped(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.35, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.36, ptr %2, align 8, !tbaa !87
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %3, align 8, !tbaa !86
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_select_grouped_exec, ptr %5, align 8, !tbaa !99
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %6, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !90
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  %11 = load ptr, ptr %8, align 8, !tbaa !91
  %12 = tail call ptr @RNA_def_enum(ptr noundef %11, ptr noundef nonnull @.str.38, ptr noundef nonnull @POSE_OT_select_grouped.prop_select_grouped_types, i32 noundef 0, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.17) #9
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !123
  ret void
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @pose_select_grouped_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = alloca %struct.ListBase, align 8
  %8 = tail call ptr @CTX_data_active_object(ptr noundef %0) #9
  %9 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %8) #9
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !92
  %14 = tail call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.38) #9
  %15 = load ptr, ptr %12, align 8, !tbaa !92
  %16 = tail call i32 @RNA_boolean_get(ptr noundef %15, ptr noundef nonnull @.str.3) #9
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 18
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %295, label %21

21:                                               ; preds = %2
  switch i32 %14, label %283 [
    i32 0, label %22
    i32 1, label %89
    i32 2, label %179
  ]

22:                                               ; preds = %21
  %23 = icmp eq ptr %9, null
  br i1 %23, label %285, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr %10, align 8, !tbaa !48
  %26 = icmp eq ptr %25, null
  br i1 %26, label %285, label %27

27:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  %28 = call i32 @CTX_data_visible_pose_bones(ptr noundef %0, ptr noundef nonnull %6) #9
  %29 = load ptr, ptr %6, align 8, !tbaa !78
  %30 = icmp eq ptr %29, null
  br i1 %30, label %58, label %31

31:                                               ; preds = %27
  %32 = icmp eq i8 %17, 0
  br label %33

33:                                               ; preds = %31, %55
  %34 = phi ptr [ %29, %31 ], [ %56, %55 ]
  %35 = phi i32 [ 0, %31 ], [ %49, %55 ]
  %36 = getelementptr inbounds %struct.CollectionPointerLink, ptr %34, i64 0, i32 2, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !108
  %38 = getelementptr inbounds %struct.bPoseChannel, ptr %37, i64 0, i32 12
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  %40 = getelementptr inbounds %struct.Bone, ptr %39, i64 0, i32 10
  %41 = load i32, ptr %40, align 8, !tbaa !53
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.Bone, ptr %39, i64 0, i32 25
  %46 = load i32, ptr %45, align 8, !tbaa !49
  %47 = or i32 %46, %35
  br label %48

48:                                               ; preds = %44, %33
  %49 = phi i32 [ %47, %44 ], [ %35, %33 ]
  %50 = and i32 %41, 2097152
  %51 = icmp eq i32 %50, 0
  %52 = and i1 %32, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = and i32 %41, -2097154
  store i32 %54, ptr %40, align 8, !tbaa !53
  br label %55

55:                                               ; preds = %53, %48
  %56 = load ptr, ptr %34, align 8, !tbaa !78
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %33, !llvm.loop !127

58:                                               ; preds = %55, %27
  %59 = phi i32 [ 0, %27 ], [ %49, %55 ]
  call void @BLI_freelistN(ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %285, label %61

61:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  %62 = call i32 @CTX_data_visible_pose_bones(ptr noundef %0, ptr noundef nonnull %7) #9
  %63 = load ptr, ptr %7, align 8, !tbaa !78
  %64 = icmp eq ptr %63, null
  br i1 %64, label %87, label %65

65:                                               ; preds = %61, %83
  %66 = phi ptr [ %85, %83 ], [ %63, %61 ]
  %67 = phi i8 [ %84, %83 ], [ 0, %61 ]
  %68 = getelementptr inbounds %struct.CollectionPointerLink, ptr %66, i64 0, i32 2, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !108
  %70 = getelementptr inbounds %struct.bPoseChannel, ptr %69, i64 0, i32 12
  %71 = load ptr, ptr %70, align 8, !tbaa !46
  %72 = getelementptr inbounds %struct.Bone, ptr %71, i64 0, i32 25
  %73 = load i32, ptr %72, align 8, !tbaa !49
  %74 = and i32 %73, %59
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.Bone, ptr %71, i64 0, i32 10
  %78 = load i32, ptr %77, align 8, !tbaa !53
  %79 = and i32 %78, 2097152
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = or i32 %78, 1
  store i32 %82, ptr %77, align 8, !tbaa !53
  br label %83

83:                                               ; preds = %81, %76, %65
  %84 = phi i8 [ 1, %81 ], [ %67, %76 ], [ %67, %65 ]
  %85 = load ptr, ptr %66, align 8, !tbaa !78
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %65, !llvm.loop !128

87:                                               ; preds = %83, %61
  %88 = phi i8 [ 0, %61 ], [ %84, %83 ]
  call void @BLI_freelistN(ptr noundef nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  br label %285

89:                                               ; preds = %21
  %90 = icmp eq ptr %9, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %89
  %92 = load ptr, ptr %10, align 8, !tbaa !48
  %93 = icmp eq ptr %92, null
  br label %94

94:                                               ; preds = %91, %89
  %95 = phi ptr [ %19, %91 ], [ null, %89 ]
  %96 = phi i1 [ %93, %91 ], [ true, %89 ]
  %97 = icmp eq ptr %95, null
  %98 = or i1 %90, %97
  %99 = select i1 %98, i1 true, i1 %96
  br i1 %99, label %285, label %100

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.bPose, ptr %95, i64 0, i32 9
  %102 = tail call i32 @BLI_countlist(ptr noundef nonnull %101) #9
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %285, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr @MEM_callocN, align 8, !tbaa !78
  %106 = add nsw i32 %102, 1
  %107 = sext i32 %106 to i64
  %108 = tail call ptr %105(i64 noundef %107, ptr noundef nonnull @.str.48) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %109 = call i32 @CTX_data_visible_pose_bones(ptr noundef %0, ptr noundef nonnull %4) #9
  %110 = load ptr, ptr %4, align 8, !tbaa !78
  %111 = icmp eq ptr %110, null
  br i1 %111, label %175, label %112

112:                                              ; preds = %104
  %113 = icmp eq i8 %17, 0
  br label %114

114:                                              ; preds = %112, %140
  %115 = phi ptr [ %110, %112 ], [ %141, %140 ]
  %116 = phi i8 [ 0, %112 ], [ %131, %140 ]
  %117 = getelementptr inbounds %struct.CollectionPointerLink, ptr %115, i64 0, i32 2, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !108
  %119 = getelementptr inbounds %struct.bPoseChannel, ptr %118, i64 0, i32 12
  %120 = load ptr, ptr %119, align 8, !tbaa !46
  %121 = getelementptr inbounds %struct.Bone, ptr %120, i64 0, i32 10
  %122 = load i32, ptr %121, align 8, !tbaa !53
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %114
  %126 = getelementptr inbounds %struct.bPoseChannel, ptr %118, i64 0, i32 8
  %127 = load i16, ptr %126, align 2, !tbaa !129
  %128 = sext i16 %127 to i64
  %129 = getelementptr inbounds i8, ptr %108, i64 %128
  store i8 1, ptr %129, align 1, !tbaa !118
  br label %130

130:                                              ; preds = %125, %114
  %131 = phi i8 [ 1, %125 ], [ %116, %114 ]
  br i1 %113, label %132, label %140

132:                                              ; preds = %130
  %133 = load ptr, ptr %119, align 8, !tbaa !46
  %134 = getelementptr inbounds %struct.Bone, ptr %133, i64 0, i32 10
  %135 = load i32, ptr %134, align 8, !tbaa !53
  %136 = and i32 %135, 2097152
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = and i32 %135, -2097154
  store i32 %139, ptr %134, align 8, !tbaa !53
  br label %140

140:                                              ; preds = %138, %132, %130
  %141 = load ptr, ptr %115, align 8, !tbaa !78
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %114, !llvm.loop !130

143:                                              ; preds = %140
  %144 = icmp eq i8 %131, 0
  call void @BLI_freelistN(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  br i1 %144, label %176, label %145

145:                                              ; preds = %143
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  %146 = call i32 @CTX_data_visible_pose_bones(ptr noundef %0, ptr noundef nonnull %5) #9
  %147 = load ptr, ptr %5, align 8, !tbaa !78
  %148 = icmp eq ptr %147, null
  br i1 %148, label %173, label %149

149:                                              ; preds = %145, %169
  %150 = phi ptr [ %171, %169 ], [ %147, %145 ]
  %151 = phi i8 [ %170, %169 ], [ 0, %145 ]
  %152 = getelementptr inbounds %struct.CollectionPointerLink, ptr %150, i64 0, i32 2, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !108
  %154 = getelementptr inbounds %struct.bPoseChannel, ptr %153, i64 0, i32 12
  %155 = load ptr, ptr %154, align 8, !tbaa !46
  %156 = getelementptr inbounds %struct.Bone, ptr %155, i64 0, i32 10
  %157 = load i32, ptr %156, align 8, !tbaa !53
  %158 = and i32 %157, 2097152
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %149
  %161 = getelementptr inbounds %struct.bPoseChannel, ptr %153, i64 0, i32 8
  %162 = load i16, ptr %161, align 2, !tbaa !129
  %163 = sext i16 %162 to i64
  %164 = getelementptr inbounds i8, ptr %108, i64 %163
  %165 = load i8, ptr %164, align 1, !tbaa !118
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %160
  %168 = or i32 %157, 1
  store i32 %168, ptr %156, align 8, !tbaa !53
  br label %169

169:                                              ; preds = %167, %160, %149
  %170 = phi i8 [ 1, %167 ], [ %151, %160 ], [ %151, %149 ]
  %171 = load ptr, ptr %150, align 8, !tbaa !78
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %149, !llvm.loop !131

173:                                              ; preds = %169, %145
  %174 = phi i8 [ 0, %145 ], [ %170, %169 ]
  call void @BLI_freelistN(ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  br label %176

175:                                              ; preds = %104
  call void @BLI_freelistN(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  br label %176

176:                                              ; preds = %175, %173, %143
  %177 = phi i8 [ %174, %173 ], [ 0, %143 ], [ 0, %175 ]
  %178 = load ptr, ptr @MEM_freeN, align 8, !tbaa !78
  call void %178(ptr noundef %108) #9
  br label %285

179:                                              ; preds = %21
  %180 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %181 = load ptr, ptr %180, align 8, !tbaa !132
  %182 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %183 = tail call ptr @ANIM_scene_get_active_keyingset(ptr noundef %182) #9
  %184 = icmp eq ptr %9, null
  br i1 %184, label %187, label %185

185:                                              ; preds = %179
  %186 = load ptr, ptr %10, align 8, !tbaa !48
  br label %187

187:                                              ; preds = %185, %179
  %188 = phi ptr [ %186, %185 ], [ null, %179 ]
  br i1 %184, label %191, label %189

189:                                              ; preds = %187
  %190 = load ptr, ptr %18, align 8, !tbaa !34
  br label %191

191:                                              ; preds = %189, %187
  %192 = phi ptr [ %190, %189 ], [ null, %187 ]
  %193 = icmp eq ptr %183, null
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  tail call void @BKE_report(ptr noundef %181, i32 noundef 32, ptr noundef nonnull @.str.49) #9
  br label %285

195:                                              ; preds = %191
  %196 = tail call signext i16 @ANIM_validate_keyingset(ptr noundef %0, ptr noundef null, ptr noundef nonnull %183) #9
  %197 = icmp eq i16 %196, 0
  br i1 %197, label %209, label %198

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.KeyingSet, ptr %183, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !133
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %285

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.KeyingSet, ptr %183, i64 0, i32 7
  %204 = load i16, ptr %203, align 8, !tbaa !135
  %205 = and i16 %204, 2
  %206 = icmp eq i16 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  tail call void @BKE_report(ptr noundef %181, i32 noundef 32, ptr noundef nonnull @.str.50) #9
  br label %285

208:                                              ; preds = %202
  tail call void @BKE_report(ptr noundef %181, i32 noundef 32, ptr noundef nonnull @.str.51) #9
  br label %285

209:                                              ; preds = %195
  %210 = icmp eq ptr %192, null
  %211 = select i1 %184, i1 true, i1 %210
  %212 = icmp eq ptr %188, null
  %213 = select i1 %211, i1 true, i1 %212
  br i1 %213, label %285, label %214

214:                                              ; preds = %209
  %215 = icmp eq i8 %17, 0
  br i1 %215, label %216, label %236

216:                                              ; preds = %214
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %217 = call i32 @CTX_data_visible_pose_bones(ptr noundef %0, ptr noundef nonnull %3) #9
  %218 = load ptr, ptr %3, align 8, !tbaa !78
  %219 = icmp eq ptr %218, null
  br i1 %219, label %235, label %220

220:                                              ; preds = %216, %232
  %221 = phi ptr [ %233, %232 ], [ %218, %216 ]
  %222 = getelementptr inbounds %struct.CollectionPointerLink, ptr %221, i64 0, i32 2, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !108
  %224 = getelementptr inbounds %struct.bPoseChannel, ptr %223, i64 0, i32 12
  %225 = load ptr, ptr %224, align 8, !tbaa !46
  %226 = getelementptr inbounds %struct.Bone, ptr %225, i64 0, i32 10
  %227 = load i32, ptr %226, align 8, !tbaa !53
  %228 = and i32 %227, 2097152
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %220
  %231 = and i32 %227, -2097154
  store i32 %231, ptr %226, align 8, !tbaa !53
  br label %232

232:                                              ; preds = %230, %220
  %233 = load ptr, ptr %221, align 8, !tbaa !78
  %234 = icmp eq ptr %233, null
  br i1 %234, label %235, label %220, !llvm.loop !136

235:                                              ; preds = %232, %216
  call void @BLI_freelistN(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br label %236

236:                                              ; preds = %235, %214
  %237 = getelementptr inbounds %struct.KeyingSet, ptr %183, i64 0, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !78
  %239 = icmp eq ptr %238, null
  br i1 %239, label %285, label %240

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.bArmature, ptr %188, i64 0, i32 15
  br label %242

242:                                              ; preds = %240, %279
  %243 = phi ptr [ %238, %240 ], [ %281, %279 ]
  %244 = phi i8 [ 0, %240 ], [ %280, %279 ]
  %245 = getelementptr inbounds %struct.KS_Path, ptr %243, i64 0, i32 2
  %246 = load ptr, ptr %245, align 8, !tbaa !137
  %247 = icmp eq ptr %246, %9
  br i1 %247, label %248, label %279

248:                                              ; preds = %242
  %249 = getelementptr inbounds %struct.KS_Path, ptr %243, i64 0, i32 7
  %250 = load ptr, ptr %249, align 8, !tbaa !139
  %251 = icmp eq ptr %250, null
  br i1 %251, label %279, label %252

252:                                              ; preds = %248
  %253 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %250, ptr noundef nonnull dereferenceable(1) @.str.52) #10
  %254 = icmp eq ptr %253, null
  br i1 %254, label %279, label %255

255:                                              ; preds = %252
  %256 = call ptr @BLI_str_quoted_substrN(ptr noundef nonnull %250, ptr noundef nonnull @.str.53) #9
  %257 = icmp eq ptr %256, null
  br i1 %257, label %279, label %258

258:                                              ; preds = %255
  %259 = call ptr @BKE_pose_channel_find_name(ptr noundef %192, ptr noundef nonnull %256) #9
  %260 = icmp eq ptr %259, null
  br i1 %260, label %276, label %261

261:                                              ; preds = %258
  %262 = getelementptr inbounds %struct.bPoseChannel, ptr %259, i64 0, i32 12
  %263 = load ptr, ptr %262, align 8, !tbaa !46
  %264 = getelementptr inbounds %struct.Bone, ptr %263, i64 0, i32 25
  %265 = load i32, ptr %264, align 8, !tbaa !49
  %266 = load i32, ptr %241, align 8, !tbaa !51
  %267 = and i32 %266, %265
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %276, label %269

269:                                              ; preds = %261
  %270 = getelementptr inbounds %struct.Bone, ptr %263, i64 0, i32 10
  %271 = load i32, ptr %270, align 8, !tbaa !53
  %272 = and i32 %271, 2097216
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %269
  %275 = or i32 %271, 1
  store i32 %275, ptr %270, align 8, !tbaa !53
  br label %276

276:                                              ; preds = %274, %269, %261, %258
  %277 = phi i8 [ 1, %274 ], [ %244, %269 ], [ %244, %261 ], [ %244, %258 ]
  %278 = load ptr, ptr @MEM_freeN, align 8, !tbaa !78
  call void %278(ptr noundef nonnull %256) #9
  br label %279

279:                                              ; preds = %276, %255, %252, %248, %242
  %280 = phi i8 [ %244, %252 ], [ %244, %248 ], [ %244, %242 ], [ %277, %276 ], [ %244, %255 ]
  %281 = load ptr, ptr %243, align 8, !tbaa !78
  %282 = icmp eq ptr %281, null
  br i1 %282, label %285, label %242, !llvm.loop !140

283:                                              ; preds = %21
  %284 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i32 noundef %14)
  br label %285

285:                                              ; preds = %279, %236, %209, %208, %207, %198, %194, %176, %100, %94, %87, %58, %24, %22, %283
  %286 = phi i8 [ 0, %283 ], [ %88, %87 ], [ 0, %24 ], [ 0, %58 ], [ 0, %22 ], [ %177, %176 ], [ 0, %94 ], [ 0, %100 ], [ 0, %194 ], [ 0, %207 ], [ 0, %208 ], [ 0, %198 ], [ 0, %209 ], [ 0, %236 ], [ %280, %279 ]
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %9) #9
  %287 = getelementptr inbounds %struct.bArmature, ptr %11, i64 0, i32 8
  %288 = load i32, ptr %287, align 8, !tbaa !55
  %289 = and i32 %288, 16384
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %292, label %291

291:                                              ; preds = %285
  call void @DAG_id_tag_update(ptr noundef %9, i16 noundef signext 2) #9
  br label %292

292:                                              ; preds = %291, %285
  %293 = icmp eq i8 %286, 0
  %294 = select i1 %293, i32 2, i32 4
  br label %295

295:                                              ; preds = %292, %2
  %296 = phi i32 [ 2, %2 ], [ %294, %292 ]
  ret i32 %296
}

; Function Attrs: nounwind uwtable
define dso_local void @POSE_OT_select_mirror(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.40, ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.41, ptr %2, align 8, !tbaa !86
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.42, ptr %3, align 8, !tbaa !87
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_select_mirror_exec, ptr %4, align 8, !tbaa !99
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !89
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !90
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.43, i32 noundef 0, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) #9
  %10 = load ptr, ptr %7, align 8, !tbaa !91
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.25) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_select_mirror_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #9
  %4 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !92
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.43) #9
  %8 = load ptr, ptr %5, align 8, !tbaa !92
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.3) #9
  %10 = icmp eq ptr %4, null
  br i1 %10, label %124, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 27
  %13 = load i32, ptr %12, align 8, !tbaa !77
  %14 = and i32 %13, 64
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %124, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = load ptr, ptr %20, align 8, !tbaa !78
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %33, %16
  %24 = load ptr, ptr %20, align 8, !tbaa !78
  %25 = icmp eq ptr %24, null
  br i1 %25, label %110, label %26

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
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = getelementptr inbounds %struct.Bone, ptr %36, i64 0, i32 10
  %38 = load i32, ptr %37, align 8, !tbaa !53
  %39 = and i32 %38, 1
  %40 = zext nneg i32 %39 to i64
  %41 = inttoptr i64 %40 to ptr
  %42 = getelementptr inbounds %struct.bPoseChannel, ptr %34, i64 0, i32 39
  store ptr %41, ptr %42, align 8, !tbaa !141
  %43 = load ptr, ptr %34, align 8, !tbaa !78
  %44 = icmp eq ptr %43, null
  br i1 %44, label %23, label %33, !llvm.loop !142

45:                                               ; preds = %26, %106
  %46 = phi ptr [ %24, %26 ], [ %108, %106 ]
  %47 = phi ptr [ null, %26 ], [ %107, %106 ]
  %48 = getelementptr inbounds %struct.bPoseChannel, ptr %46, i64 0, i32 12
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  %50 = getelementptr inbounds %struct.Bone, ptr %49, i64 0, i32 25
  %51 = load i32, ptr %50, align 8, !tbaa !49
  %52 = load i32, ptr %27, align 8, !tbaa !51
  %53 = and i32 %52, %51
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %106, label %55

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.Bone, ptr %49, i64 0, i32 10
  %57 = load i32, ptr %56, align 8, !tbaa !53
  %58 = and i32 %57, 2097216
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %106

60:                                               ; preds = %55
  br i1 %29, label %66, label %61

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.bPoseChannel, ptr %46, i64 0, i32 39
  %63 = load ptr, ptr %62, align 8, !tbaa !141
  %64 = ptrtoint ptr %63 to i64
  %65 = trunc i64 %64 to i32
  br label %66

66:                                               ; preds = %60, %61
  %67 = phi i32 [ %65, %61 ], [ 0, %60 ]
  %68 = load ptr, ptr %19, align 8, !tbaa !34
  %69 = getelementptr inbounds %struct.bPoseChannel, ptr %46, i64 0, i32 4
  %70 = tail call ptr @BKE_pose_channel_get_mirrored(ptr noundef %68, ptr noundef nonnull %69) #9
  %71 = icmp eq ptr %70, null
  br i1 %71, label %98, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.bPoseChannel, ptr %70, i64 0, i32 12
  %74 = load ptr, ptr %73, align 8, !tbaa !46
  %75 = getelementptr inbounds %struct.Bone, ptr %74, i64 0, i32 25
  %76 = load i32, ptr %75, align 8, !tbaa !49
  %77 = load i32, ptr %27, align 8, !tbaa !51
  %78 = and i32 %77, %76
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %98, label %80

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.Bone, ptr %74, i64 0, i32 10
  %82 = load i32, ptr %81, align 8, !tbaa !53
  %83 = and i32 %82, 64
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.bPoseChannel, ptr %70, i64 0, i32 39
  %87 = load ptr, ptr %86, align 8, !tbaa !141
  %88 = ptrtoint ptr %87 to i64
  %89 = trunc i64 %88 to i32
  %90 = or i32 %67, %89
  %91 = load ptr, ptr %48, align 8, !tbaa !46
  %92 = load ptr, ptr %30, align 8, !tbaa !54
  %93 = icmp eq ptr %91, %92
  %94 = select i1 %93, ptr %70, ptr %47
  %95 = select i1 %32, i1 true, i1 %93
  %96 = icmp eq ptr %92, %74
  %97 = select i1 %95, i1 true, i1 %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %85, %72, %80, %66
  %99 = phi ptr [ %47, %80 ], [ %47, %72 ], [ %47, %66 ], [ %94, %85 ]
  %100 = phi i32 [ %67, %80 ], [ %67, %72 ], [ %67, %66 ], [ %90, %85 ]
  %101 = load ptr, ptr %48, align 8, !tbaa !46
  %102 = getelementptr inbounds %struct.Bone, ptr %101, i64 0, i32 10
  %103 = load i32, ptr %102, align 8, !tbaa !53
  %104 = and i32 %103, -8
  %105 = or i32 %104, %100
  store i32 %105, ptr %102, align 8, !tbaa !53
  br label %106

106:                                              ; preds = %85, %98, %55, %45
  %107 = phi ptr [ %47, %55 ], [ %47, %45 ], [ %99, %98 ], [ %94, %85 ]
  %108 = load ptr, ptr %46, align 8, !tbaa !78
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %45, !llvm.loop !143

110:                                              ; preds = %106, %23
  %111 = phi ptr [ null, %23 ], [ %107, %106 ]
  %112 = icmp eq ptr %111, null
  br i1 %112, label %123, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.bPoseChannel, ptr %111, i64 0, i32 12
  %115 = load ptr, ptr %114, align 8, !tbaa !46
  %116 = getelementptr inbounds %struct.bArmature, ptr %18, i64 0, i32 5
  store ptr %115, ptr %116, align 8, !tbaa !54
  %117 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %118 = load i32, ptr %117, align 8, !tbaa !77
  %119 = and i32 %118, 8
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %113
  %122 = getelementptr inbounds %struct.bPoseChannel, ptr %111, i64 0, i32 4
  tail call void @ED_vgroup_select_by_name(ptr noundef %3, ptr noundef nonnull %122) #9
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 2) #9
  br label %123

123:                                              ; preds = %113, %121, %110
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef nonnull %4) #9
  br label %124

124:                                              ; preds = %2, %11, %123
  %125 = phi i32 [ 4, %123 ], [ 2, %11 ], [ 2, %2 ]
  ret i32 %125
}

declare ptr @BKE_object_pose_armature_get(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #2

declare ptr @get_nearest_bone(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @selectconnected_posebonechildren(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 10
  %4 = load i32, ptr %3, align 8, !tbaa !53
  %5 = and i32 %4, 2097168
  %6 = icmp eq i32 %5, 16
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 0
  %9 = or i32 %4, 1
  %10 = and i32 %4, -2097154
  %11 = select i1 %8, i32 %9, i32 %10
  store i32 %11, ptr %3, align 8, !tbaa !53
  %12 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !78
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %7, %15
  %16 = phi ptr [ %17, %15 ], [ %13, %7 ]
  tail call fastcc void @selectconnected_posebonechildren(ptr noundef nonnull %16, i32 noundef %1)
  %17 = load ptr, ptr %16, align 8, !tbaa !78
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %15, !llvm.loop !144

19:                                               ; preds = %15, %7, %2
  ret void
}

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ED_operator_view3d_active(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @ED_object_context(ptr noundef) local_unnamed_addr #2

declare i32 @ctx_data_list_count(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CTX_data_selected_pose_bones(ptr noundef, ptr noundef) #2

declare i32 @CTX_data_visible_pose_bones(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_pose_bone(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

declare ptr @ANIM_scene_get_active_keyingset(ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare signext i16 @ANIM_validate_keyingset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #8

declare ptr @BLI_str_quoted_substrN(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_pose_channel_get_mirrored(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !37, i64 288}
!35 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !42, i64 312, !37, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !44, i64 616, !44, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !44, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !44, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !45, i64 1304, !45, i64 1312, !41, i64 1320, !41, i64 1324, !43, i64 1328, !43, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !43, i64 1400, !37, i64 1416}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!43 = !{!"ListBase", !37, i64 0, !37, i64 8}
!44 = !{!"float", !38, i64 0}
!45 = !{!"long", !38, i64 0}
!46 = !{!47, !37, i64 120}
!47 = !{!"bPoseChannel", !37, i64 0, !37, i64 8, !37, i64 16, !43, i64 24, !38, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !38, i64 112, !38, i64 113, !38, i64 114, !37, i64 120, !37, i64 128, !37, i64 136, !43, i64 144, !43, i64 160, !37, i64 176, !37, i64 184, !37, i64 192, !38, i64 200, !38, i64 212, !38, i64 224, !38, i64 236, !38, i64 252, !44, i64 264, !40, i64 268, !40, i64 270, !38, i64 272, !38, i64 336, !38, i64 400, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !44, i64 524, !44, i64 528, !44, i64 532, !37, i64 536}
!48 = !{!35, !37, i64 296}
!49 = !{!50, !41, i64 320}
!50 = !{!"Bone", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !43, i64 32, !38, i64 48, !44, i64 112, !38, i64 116, !38, i64 128, !38, i64 140, !41, i64 176, !38, i64 180, !38, i64 192, !38, i64 204, !44, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !44, i64 284, !44, i64 288, !44, i64 292, !44, i64 296, !44, i64 300, !44, i64 304, !38, i64 308, !41, i64 320, !40, i64 324, !38, i64 326}
!51 = !{!52, !41, i64 216}
!52 = !{!"bArmature", !36, i64 0, !37, i64 120, !43, i64 128, !43, i64 144, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !41, i64 192, !41, i64 196, !41, i64 200, !41, i64 204, !40, i64 208, !40, i64 210, !41, i64 212, !41, i64 216, !41, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !41, i64 232, !41, i64 236, !41, i64 240, !41, i64 244, !41, i64 248, !41, i64 252}
!53 = !{!50, !41, i64 176}
!54 = !{!52, !37, i64 168}
!55 = !{!52, !41, i64 192}
!56 = !{!57, !37, i64 32}
!57 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!58 = !{!59, !37, i64 168}
!59 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !43, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !60, i64 280, !69, i64 4264, !43, i64 4296, !43, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !43, i64 4384, !70, i64 4400, !71, i64 4416, !74, i64 4600, !37, i64 4608, !75, i64 4616, !37, i64 4640, !45, i64 4648, !45, i64 4656, !62, i64 4664, !63, i64 4824, !76, i64 4888, !37, i64 4952}
!60 = !{!"RenderData", !61, i64 0, !37, i64 248, !37, i64 256, !64, i64 264, !65, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !44, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !44, i64 436, !44, i64 440, !44, i64 444, !44, i64 448, !44, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !66, i64 544, !66, i64 560, !67, i64 576, !43, i64 592, !40, i64 608, !40, i64 610, !44, i64 612, !44, i64 616, !44, i64 620, !44, i64 624, !41, i64 628, !44, i64 632, !44, i64 636, !44, i64 640, !44, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !44, i64 660, !44, i64 664, !40, i64 668, !40, i64 670, !44, i64 672, !44, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !44, i64 2528, !44, i64 2532, !40, i64 2536, !40, i64 2538, !44, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !44, i64 2560, !44, i64 2564, !37, i64 2568, !41, i64 2576, !44, i64 2580, !38, i64 2584, !68, i64 2616, !41, i64 3976, !41, i64 3980}
!61 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !44, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !62, i64 24, !63, i64 184}
!62 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !44, i64 136, !44, i64 140, !37, i64 144, !37, i64 152}
!63 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!64 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!65 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !44, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!66 = !{!"rctf", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!67 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!68 = !{!"BakeData", !61, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !44, i64 1280, !44, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!69 = !{!"AudioData", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !44, i64 24, !44, i64 28}
!70 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!71 = !{!"GameData", !70, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !72, i64 40, !40, i64 64, !40, i64 66, !44, i64 68, !73, i64 72, !44, i64 128, !44, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !44, i64 164, !44, i64 168, !44, i64 172, !44, i64 176, !44, i64 180}
!72 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !44, i64 8, !44, i64 12, !37, i64 16}
!73 = !{!"RecastData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !41, i64 40, !44, i64 44, !44, i64 48, !40, i64 52, !40, i64 54}
!74 = !{!"UnitSettings", !44, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!75 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!76 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!77 = !{!35, !41, i64 432}
!78 = !{!37, !37, i64 0}
!79 = distinct !{!79, !80, !81}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = distinct !{!82, !80, !81}
!83 = !{!84, !37, i64 0}
!84 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !85, i64 152, !40, i64 184}
!85 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!86 = !{!84, !37, i64 8}
!87 = !{!84, !37, i64 24}
!88 = !{!84, !37, i64 48}
!89 = !{!84, !37, i64 72}
!90 = !{!84, !40, i64 184}
!91 = !{!84, !37, i64 88}
!92 = !{!93, !37, i64 112}
!93 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!94 = !{!41, !41, i64 0}
!95 = !{!50, !37, i64 24}
!96 = distinct !{!96, !80, !81}
!97 = !{!50, !37, i64 32}
!98 = distinct !{!98, !80, !81}
!99 = !{!84, !37, i64 32}
!100 = !{!59, !37, i64 264}
!101 = !{!102, !38, i64 445}
!102 = !{!"ToolSettings", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !40, i64 44, !40, i64 46, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !44, i64 52, !40, i64 56, !38, i64 58, !38, i64 59, !103, i64 64, !105, i64 168, !44, i64 336, !44, i64 340, !40, i64 344, !40, i64 346, !38, i64 348, !38, i64 349, !40, i64 350, !44, i64 352, !44, i64 356, !44, i64 360, !44, i64 364, !44, i64 368, !44, i64 372, !44, i64 376, !44, i64 380, !44, i64 384, !44, i64 388, !40, i64 392, !38, i64 394, !38, i64 395, !38, i64 396, !38, i64 399, !37, i64 400, !38, i64 408, !38, i64 409, !38, i64 410, !38, i64 411, !38, i64 412, !38, i64 413, !38, i64 421, !38, i64 429, !38, i64 430, !38, i64 431, !38, i64 432, !38, i64 433, !40, i64 434, !40, i64 436, !40, i64 438, !40, i64 440, !38, i64 442, !38, i64 443, !38, i64 444, !38, i64 445, !38, i64 446, !38, i64 447, !41, i64 448, !41, i64 452, !41, i64 456, !41, i64 460, !40, i64 464, !40, i64 466, !41, i64 468, !44, i64 472, !44, i64 476, !106, i64 480, !107, i64 608}
!103 = !{!"ImagePaintSettings", !104, i64 0, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !38, i64 48, !41, i64 52, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !38, i64 88, !44, i64 100}
!104 = !{!"Paint", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !41, i64 28, !41, i64 32, !41, i64 36}
!105 = !{!"ParticleEditSettings", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !38, i64 8, !37, i64 120, !44, i64 128, !44, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !41, i64 148, !37, i64 152, !37, i64 160}
!106 = !{!"UnifiedPaintSettings", !41, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !38, i64 16, !38, i64 28, !41, i64 40, !38, i64 44, !44, i64 52, !41, i64 56, !41, i64 60, !38, i64 64, !38, i64 65, !44, i64 72, !38, i64 76, !41, i64 84, !44, i64 88, !38, i64 92, !38, i64 100, !41, i64 108, !37, i64 112, !44, i64 120, !41, i64 124}
!107 = !{!"MeshStatVis", !38, i64 0, !38, i64 1, !38, i64 3, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !38, i64 20, !38, i64 21, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36}
!108 = !{!109, !37, i64 32}
!109 = !{!"CollectionPointerLink", !37, i64 0, !37, i64 8, !110, i64 16}
!110 = !{!"PointerRNA", !111, i64 0, !37, i64 8, !37, i64 16}
!111 = !{!"", !37, i64 0}
!112 = distinct !{!112, !80, !81}
!113 = !{!47, !37, i64 128}
!114 = !{!115, !37, i64 104}
!115 = !{!"bConstraintTypeInfo", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 36, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128}
!116 = !{!117, !37, i64 16}
!117 = !{!"bConstraintTarget", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 88, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158}
!118 = !{!38, !38, i64 0}
!119 = distinct !{!119, !80, !81}
!120 = !{!115, !37, i64 112}
!121 = distinct !{!121, !80, !81}
!122 = distinct !{!122, !80, !81}
!123 = !{!84, !37, i64 104}
!124 = !{!47, !37, i64 136}
!125 = distinct !{!125, !80, !81}
!126 = distinct !{!126, !80, !81}
!127 = distinct !{!127, !80, !81}
!128 = distinct !{!128, !80, !81}
!129 = !{!47, !40, i64 110}
!130 = distinct !{!130, !80, !81}
!131 = distinct !{!131, !80, !81}
!132 = !{!93, !37, i64 120}
!133 = !{!134, !37, i64 16}
!134 = !{!"KeyingSet", !37, i64 0, !37, i64 8, !43, i64 16, !38, i64 32, !38, i64 96, !38, i64 160, !38, i64 400, !40, i64 464, !40, i64 466, !41, i64 468}
!135 = !{!134, !40, i64 464}
!136 = distinct !{!136, !80, !81}
!137 = !{!138, !37, i64 16}
!138 = !{!"KS_Path", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !41, i64 88, !40, i64 92, !40, i64 94, !37, i64 96, !41, i64 104, !40, i64 108, !40, i64 110}
!139 = !{!138, !37, i64 96}
!140 = distinct !{!140, !80, !81}
!141 = !{!47, !37, i64 536}
!142 = distinct !{!142, !80, !81}
!143 = distinct !{!143, !80, !81}
!144 = distinct !{!144, !80, !81}
