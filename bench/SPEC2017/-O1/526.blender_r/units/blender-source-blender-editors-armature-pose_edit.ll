; ModuleID = 'blender/source/blender/editors/armature/pose_edit.c'
source_filename = "blender/source/blender/editors/armature/pose_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StructRNA = type opaque
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Cannot pose libdata\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Calculate Bone Paths\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"POSE_OT_paths_calculate\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Calculate paths for the selected bones\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"start_frame\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Start\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"First frame to calculate bone paths on\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"end_frame\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"End\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Last frame to calculate bone paths on\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"bake_location\00", align 1
@motionpath_bake_location_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"Bake Location\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"Which point on the bones is used when calculating paths\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Update Bone Paths\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"POSE_OT_paths_update\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"Recalculate paths for bones that already have them\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"Clear Bone Paths\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"POSE_OT_paths_clear\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"Clear path caches for selected bones\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"Flip Names\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"POSE_OT_flip_names\00", align 1
@.str.21 = private unnamed_addr constant [74 x i8] c"Flips (and corrects) the axis suffixes of the the names of selected bones\00", align 1
@POSE_OT_autoside_names.axis_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.22, i32 0, ptr @.str.23, ptr @.str.24 }, %struct.EnumPropertyItem { i32 1, ptr @.str.25, i32 0, ptr @.str.26, ptr @.str.27 }, %struct.EnumPropertyItem { i32 2, ptr @.str.28, i32 0, ptr @.str.29, ptr @.str.30 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.22 = private unnamed_addr constant [6 x i8] c"XAXIS\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"X-Axis\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"Left/Right\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"YAXIS\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"Y-Axis\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"Front/Back\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"ZAXIS\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"Z-Axis\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"Top/Bottom\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"AutoName by Axis\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"POSE_OT_autoside_names\00", align 1
@.str.33 = private unnamed_addr constant [97 x i8] c"Automatically renames the selected bones according to which side of the target axis they fall on\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"Axis\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"Axis tag names with\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"Set Rotation Mode\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"POSE_OT_rotation_mode_set\00", align 1
@.str.39 = private unnamed_addr constant [55 x i8] c"Set the rotation representation used by selected bones\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@posebone_rotmode_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.41 = private unnamed_addr constant [14 x i8] c"Rotation Mode\00", align 1
@.str.42 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"Show All Layers\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"ARMATURE_OT_layers_show_all\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"Make all armature layers visible\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"All Layers\00", align 1
@.str.48 = private unnamed_addr constant [49 x i8] c"Enable all layers or just the first 16 (top row)\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"Change Armature Layers\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"ARMATURE_OT_armature_layers\00", align 1
@.str.51 = private unnamed_addr constant [35 x i8] c"Change the visible armature layers\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"layers\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"Layer\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c"Armature layers to make visible\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"Change Bone Layers\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"POSE_OT_bone_layers\00", align 1
@.str.57 = private unnamed_addr constant [52 x i8] c"Change the layers that the selected bones belong to\00", align 1
@.str.58 = private unnamed_addr constant [37 x i8] c"Armature layers that bone belongs to\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"ARMATURE_OT_bone_layers\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"Hide Selected\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"POSE_OT_hide\00", align 1
@.str.62 = private unnamed_addr constant [50 x i8] c"Tag selected bones to not be visible in Pose Mode\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"unselected\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"Unselected\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"Reveal Selected\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"POSE_OT_reveal\00", align 1
@.str.67 = private unnamed_addr constant [65 x i8] c"Unhide all bones that have been tagged to be hidden in Pose Mode\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"Flip Quats\00", align 1
@.str.69 = private unnamed_addr constant [25 x i8] c"POSE_OT_quaternions_flip\00", align 1
@.str.70 = private unnamed_addr constant [93 x i8] c"Flip quaternion values to achieve desired rotations, while maintaining the same orientations\00", align 1
@RNA_AnimVizMotionPaths = external global %struct.StructRNA, align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@RNA_Bone = external global %struct.StructRNA, align 1
@RNA_EditBone = external global %struct.StructRNA, align 1
@.str.71 = private unnamed_addr constant [53 x i8] c"Undo of hiding can only be done with Reveal Selected\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"LocRotScale\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @ED_pose_object_from_context(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !34
  %7 = icmp eq i8 %6, 4
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call ptr @ED_object_context(ptr noundef %0) #7
  br label %13

10:                                               ; preds = %4, %1
  %11 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %12 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %11) #7
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi ptr [ %9, %8 ], [ %12, %10 ]
  ret ptr %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare ptr @ED_object_context(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_object_pose_armature_get(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_armature_enter_posemode(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_reports(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @BKE_report(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str) #7
  br label %19

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !51
  %13 = icmp eq i16 %12, 25
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 27
  %16 = load i32, ptr %15, align 8, !tbaa !52
  %17 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 28
  store i32 %16, ptr %17, align 4, !tbaa !53
  %18 = or i32 %16, 64
  store i32 %18, ptr %15, align 8, !tbaa !52
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67832064, ptr noundef null) #7
  br label %19

19:                                               ; preds = %10, %14, %9
  ret void
}

declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_armature_exit_posemode(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 27
  %8 = load i32, ptr %7, align 8, !tbaa !52
  %9 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 28
  store i32 %8, ptr %9, align 4, !tbaa !53
  %10 = and i32 %8, -65
  store i32 %10, ptr %7, align 8, !tbaa !52
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67830016, ptr noundef null) #7
  br label %11

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_pose_recalculate_paths(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.bPose, ptr %5, i64 0, i32 14, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !55
  %8 = or i16 %7, 1
  store i16 %8, ptr %6, align 2, !tbaa !55
  call void @animviz_get_object_motionpaths(ptr noundef %1, ptr noundef nonnull %3) #7
  call void @animviz_calc_motionpaths(ptr noundef %0, ptr noundef nonnull %3) #7
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare void @animviz_get_object_motionpaths(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @animviz_calc_motionpaths(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @POSE_OT_paths_calculate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.1, ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.3, ptr %3, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @pose_calculate_paths_invoke, ptr %4, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_calculate_paths_exec, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_exclusive, ptr %6, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.4, i32 noundef 1, i32 noundef -300000, i32 noundef 300000, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 150000) #7
  %11 = load ptr, ptr %8, align 8, !tbaa !66
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.7, i32 noundef 250, i32 noundef -300000, i32 noundef 300000, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 150000) #7
  %13 = load ptr, ptr %8, align 8, !tbaa !66
  %14 = tail call ptr @RNA_def_enum(ptr noundef %13, ptr noundef nonnull @.str.10, ptr noundef nonnull @motionpath_bake_location_items, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @pose_calculate_paths_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %6 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %5) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.bPose, ptr %10, i64 0, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.bPose, ptr %10, i64 0, i32 14, i32 12
  %17 = load i32, ptr %16, align 4, !tbaa !69
  tail call void @RNA_int_set(ptr noundef %15, ptr noundef nonnull @.str.4, i32 noundef %17) #7
  %18 = load ptr, ptr %14, align 8, !tbaa !67
  %19 = getelementptr inbounds %struct.bPose, ptr %10, i64 0, i32 14, i32 13
  %20 = load i32, ptr %19, align 4, !tbaa !70
  tail call void @RNA_int_set(ptr noundef %18, ptr noundef nonnull @.str.7, i32 noundef %20) #7
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_AnimVizMotionPaths, ptr noundef nonnull %13, ptr noundef nonnull %4) #7
  %21 = load ptr, ptr %14, align 8, !tbaa !67
  %22 = call i32 @RNA_enum_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.10) #7
  call void @RNA_enum_set(ptr noundef %21, ptr noundef nonnull @.str.10, i32 noundef %22) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  %23 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !71
  %24 = sext i16 %23 to i32
  %25 = mul nsw i32 %24, 10
  %26 = call i32 @WM_operator_props_dialog_popup(ptr noundef %0, ptr noundef %1, i32 noundef %25, i32 noundef %25) #7
  br label %27

27:                                               ; preds = %3, %8, %12
  %28 = phi i32 [ %26, %12 ], [ 2, %8 ], [ 2, %3 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_calculate_paths_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.ListBase, align 8
  %6 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %7 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %6) #7
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %9 = icmp eq ptr %7, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = icmp eq ptr %12, null
  br i1 %13, label %43, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.bPose, ptr %12, i64 0, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  %18 = tail call i32 @RNA_int_get(ptr noundef %17, ptr noundef nonnull @.str.4) #7
  %19 = getelementptr inbounds %struct.bPose, ptr %12, i64 0, i32 14, i32 12
  store i32 %18, ptr %19, align 4, !tbaa !69
  %20 = load ptr, ptr %16, align 8, !tbaa !67
  %21 = tail call i32 @RNA_int_get(ptr noundef %20, ptr noundef nonnull @.str.7) #7
  %22 = getelementptr inbounds %struct.bPose, ptr %12, i64 0, i32 14, i32 13
  store i32 %21, ptr %22, align 4, !tbaa !70
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_AnimVizMotionPaths, ptr noundef nonnull %15, ptr noundef nonnull %4) #7
  %23 = load ptr, ptr %16, align 8, !tbaa !67
  %24 = call i32 @RNA_enum_get(ptr noundef %23, ptr noundef nonnull @.str.10) #7
  call void @RNA_enum_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.10, i32 noundef %24) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %25 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %5) #7
  %26 = load ptr, ptr %5, align 8, !tbaa !75
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %30

30:                                               ; preds = %28, %30
  %31 = phi ptr [ %26, %28 ], [ %36, %30 ]
  %32 = getelementptr inbounds %struct.CollectionPointerLink, ptr %31, i64 0, i32 2, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !76
  %34 = load ptr, ptr %29, align 8, !tbaa !80
  %35 = call ptr @animviz_verify_motionpaths(ptr noundef %34, ptr noundef %8, ptr noundef nonnull %7, ptr noundef %33) #7
  %36 = load ptr, ptr %31, align 8, !tbaa !75
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %30, !llvm.loop !81

38:                                               ; preds = %30, %14
  call void @BLI_freelistN(ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %39 = load ptr, ptr %11, align 8, !tbaa !54
  %40 = getelementptr inbounds %struct.bPose, ptr %39, i64 0, i32 14, i32 7
  %41 = load i16, ptr %40, align 2, !tbaa !55
  %42 = or i16 %41, 1
  store i16 %42, ptr %40, align 2, !tbaa !55
  call void @animviz_get_object_motionpaths(ptr noundef nonnull %7, ptr noundef nonnull %3) #7
  call void @animviz_calc_motionpaths(ptr noundef %8, ptr noundef nonnull %3) #7
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %7) #7
  br label %43

43:                                               ; preds = %2, %10, %38
  %44 = phi i32 [ 4, %38 ], [ 2, %10 ], [ 2, %2 ]
  ret i32 %44
}

declare i32 @ED_operator_posemode_exclusive(ptr noundef) #2

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_paths_update(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.13, ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.15, ptr %3, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_update_paths_exec, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_exclusive, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !65
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_update_paths_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %5 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %4) #7
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %7 = icmp eq ptr %5, null
  %8 = icmp eq ptr %6, null
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %11 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct.bPose, ptr %12, i64 0, i32 14, i32 7
  %14 = load i16, ptr %13, align 2, !tbaa !55
  %15 = or i16 %14, 1
  store i16 %15, ptr %13, align 2, !tbaa !55
  call void @animviz_get_object_motionpaths(ptr noundef %5, ptr noundef nonnull %3) #7
  call void @animviz_calc_motionpaths(ptr noundef %6, ptr noundef nonnull %3) #7
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %5) #7
  br label %16

16:                                               ; preds = %2, %10
  %17 = phi i32 [ 4, %10 ], [ 2, %2 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_paths_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.16, ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %3, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_clear_paths_exec, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_exclusive, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !65
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_clear_paths_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %4 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %3) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = icmp eq ptr %8, null
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !75
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %10, %29
  %14 = phi ptr [ %31, %29 ], [ %11, %10 ]
  %15 = phi i16 [ %30, %29 ], [ 0, %10 ]
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %14, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !84
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %14, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !86
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Bone, ptr %21, i64 0, i32 10
  %25 = load i32, ptr %24, align 8, !tbaa !87
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void @animviz_free_motionpath(ptr noundef nonnull %17) #7
  store ptr null, ptr %16, align 8, !tbaa !84
  br label %29

29:                                               ; preds = %28, %23, %19, %13
  %30 = phi i16 [ %15, %28 ], [ %15, %13 ], [ 1, %23 ], [ 1, %19 ]
  %31 = load ptr, ptr %14, align 8, !tbaa !75
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %13, !llvm.loop !89

33:                                               ; preds = %29
  %34 = icmp eq i16 %30, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %10, %33
  %36 = load ptr, ptr %7, align 8, !tbaa !54
  %37 = getelementptr inbounds %struct.bPose, ptr %36, i64 0, i32 14, i32 11
  %38 = load i16, ptr %37, align 2, !tbaa !90
  %39 = and i16 %38, -5
  store i16 %39, ptr %37, align 2, !tbaa !90
  br label %40

40:                                               ; preds = %33, %35
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %4) #7
  br label %41

41:                                               ; preds = %2, %6, %40
  %42 = phi i32 [ 4, %40 ], [ 2, %6 ], [ 2, %2 ]
  ret i32 %42
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_flip_names(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.19, ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.21, ptr %3, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_flip_names_exec, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !65
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_flip_names_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca [64 x i8], align 16
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %6 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %5) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %15 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %3) #7
  %16 = load ptr, ptr %3, align 8, !tbaa !75
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %12, %18
  %19 = phi ptr [ %23, %18 ], [ %16, %12 ]
  %20 = getelementptr inbounds %struct.CollectionPointerLink, ptr %19, i64 0, i32 2, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  %22 = getelementptr inbounds %struct.bPoseChannel, ptr %21, i64 0, i32 4
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %4, ptr noundef nonnull %22, i8 noundef zeroext 1) #7
  call void @ED_armature_bone_rename(ptr noundef %14, ptr noundef nonnull %22, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  %23 = load ptr, ptr %19, align 8, !tbaa !75
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %18, !llvm.loop !92

25:                                               ; preds = %18, %12
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  call void @DAG_id_tag_update(ptr noundef nonnull %6, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %6) #7
  br label %26

26:                                               ; preds = %2, %8, %25
  %27 = phi i32 [ 4, %25 ], [ 2, %8 ], [ 2, %2 ]
  ret i32 %27
}

declare i32 @ED_operator_posemode(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @POSE_OT_autoside_names(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.31, ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.32, ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %3, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_autoside_names_exec, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %6, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.34, ptr noundef nonnull @POSE_OT_autoside_names.axis_items, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #7
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !93
  ret void
}

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_autoside_names_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %6 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %5) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.34) #7
  %10 = trunc i32 %9 to i16
  %11 = icmp eq ptr %6, null
  br i1 %11, label %43, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = icmp eq ptr %14, null
  br i1 %15, label %43, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  %19 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %4) #7
  %20 = load ptr, ptr %4, align 8, !tbaa !75
  %21 = icmp eq ptr %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %16
  %23 = sext i16 %10 to i64
  br label %24

24:                                               ; preds = %22, %39
  %25 = phi ptr [ %20, %22 ], [ %40, %39 ]
  %26 = getelementptr inbounds %struct.CollectionPointerLink, ptr %25, i64 0, i32 2, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !76
  %28 = getelementptr inbounds %struct.bPoseChannel, ptr %27, i64 0, i32 4
  %29 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %28, i64 noundef 64) #7
  %30 = getelementptr inbounds %struct.bPoseChannel, ptr %27, i64 0, i32 12
  %31 = load ptr, ptr %30, align 8, !tbaa !86
  %32 = getelementptr inbounds %struct.Bone, ptr %31, i64 0, i32 7, i64 %23
  %33 = load float, ptr %32, align 4, !tbaa !94
  %34 = getelementptr inbounds %struct.Bone, ptr %31, i64 0, i32 8, i64 %23
  %35 = load float, ptr %34, align 4, !tbaa !94
  %36 = call i32 @bone_autoside_name(ptr noundef nonnull %3, i32 noundef 1, i16 noundef signext %10, float noundef %33, float noundef %35) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %24
  call void @ED_armature_bone_rename(ptr noundef %18, ptr noundef nonnull %28, ptr noundef nonnull %3) #7
  br label %39

39:                                               ; preds = %38, %24
  %40 = load ptr, ptr %25, align 8, !tbaa !75
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %24, !llvm.loop !95

42:                                               ; preds = %39, %16
  call void @BLI_freelistN(ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @DAG_id_tag_update(ptr noundef nonnull %6, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %6) #7
  br label %43

43:                                               ; preds = %2, %12, %42
  %44 = phi i32 [ 4, %42 ], [ 2, %12 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define dso_local void @POSE_OT_rotation_mode_set(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.37, ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.38, ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.39, ptr %3, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_bone_rotmode_exec, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %6, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.40, ptr noundef nonnull @posebone_rotmode_items, i32 noundef 0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42) #7
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !93
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_bone_rotmode_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.40) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %8 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %3) #7
  %9 = load ptr, ptr %3, align 8, !tbaa !75
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = trunc i32 %7 to i16
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi ptr [ %9, %11 ], [ %18, %13 ]
  %15 = getelementptr inbounds %struct.CollectionPointerLink, ptr %14, i64 0, i32 2, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !76
  %17 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 26
  store i16 %12, ptr %17, align 4, !tbaa !96
  %18 = load ptr, ptr %14, align 8, !tbaa !75
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %13, !llvm.loop !97

20:                                               ; preds = %13, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef %4) #7
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @ARMATURE_OT_layers_show_all(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.43, ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.44, ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.45, ptr %3, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_armature_layers_showall_exec, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @armature_layers_poll, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.46, i32 noundef 1, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48) #7
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !93
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_armature_layers_showall_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [32 x i32], align 16
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @BKE_object_pose_armature_get(ptr noundef nonnull %5) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !51
  %13 = icmp eq i16 %12, 25
  br i1 %13, label %14, label %18

14:                                               ; preds = %10, %7
  %15 = phi ptr [ %8, %7 ], [ %5, %10 ]
  %16 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !91
  br label %18

18:                                               ; preds = %14, %2, %10
  %19 = phi ptr [ %5, %2 ], [ %5, %10 ], [ %15, %14 ]
  %20 = phi ptr [ null, %2 ], [ null, %10 ], [ %17, %14 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !67
  %23 = tail call i32 @RNA_boolean_get(ptr noundef %22, ptr noundef nonnull @.str.46) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %4, i8 0, i64 128, i1 false)
  %24 = icmp eq ptr %20, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %18
  %26 = icmp eq i32 %23, 0
  %27 = select i1 %26, i64 16, i64 32
  call void @RNA_id_pointer_create(ptr noundef nonnull %20, ptr noundef nonnull %3) #7
  br label %28

28:                                               ; preds = %25, %28
  %29 = phi i64 [ 0, %25 ], [ %31, %28 ]
  %30 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 %29
  store i32 1, ptr %30, align 4, !tbaa !98
  %31 = add nuw nsw i64 %29, 1
  %32 = icmp eq i64 %31, %27
  br i1 %32, label %33, label %28, !llvm.loop !99

33:                                               ; preds = %28
  call void @RNA_boolean_set_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.52, ptr noundef nonnull %4) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %19) #7
  br label %34

34:                                               ; preds = %18, %33
  %35 = phi i32 [ 4, %33 ], [ 2, %18 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @armature_layers_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_operator_posemode(ptr noundef %0) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @ED_operator_editarmature(ptr noundef %0) #7
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 1, %1 ], [ %7, %4 ]
  ret i32 %9
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ARMATURE_OT_armature_layers(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.49, ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.50, ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.51, ptr %3, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @armature_layers_invoke, ptr %4, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_layers_exec, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @armature_layers_poll, ptr %6, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = tail call ptr @RNA_def_boolean_layer_member(ptr noundef %9, ptr noundef nonnull @.str.52, i32 noundef 32, ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @armature_layers_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca [32 x i32], align 16
  %6 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @BKE_object_pose_armature_get(ptr noundef nonnull %6) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !51
  %14 = icmp eq i16 %13, 25
  br i1 %14, label %15, label %19

15:                                               ; preds = %11, %8
  %16 = phi ptr [ %9, %8 ], [ %6, %11 ]
  %17 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !91
  br label %19

19:                                               ; preds = %15, %3, %11
  %20 = phi ptr [ null, %3 ], [ null, %11 ], [ %18, %15 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  call void @RNA_id_pointer_create(ptr noundef nonnull %20, ptr noundef nonnull %4) #7
  call void @RNA_boolean_get_array(ptr noundef nonnull %4, ptr noundef nonnull @.str.52, ptr noundef nonnull %5) #7
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !67
  call void @RNA_boolean_set_array(ptr noundef %24, ptr noundef nonnull @.str.52, ptr noundef nonnull %5) #7
  %25 = call i32 @WM_operator_props_popup(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7
  br label %26

26:                                               ; preds = %19, %22
  %27 = phi i32 [ %25, %22 ], [ 2, %19 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_layers_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [32 x i32], align 16
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @BKE_object_pose_armature_get(ptr noundef nonnull %5) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !51
  %13 = icmp eq i16 %12, 25
  br i1 %13, label %14, label %18

14:                                               ; preds = %10, %7
  %15 = phi ptr [ %8, %7 ], [ %5, %10 ]
  %16 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !91
  br label %18

18:                                               ; preds = %14, %2, %10
  %19 = phi ptr [ %5, %2 ], [ %5, %10 ], [ %15, %14 ]
  %20 = phi ptr [ null, %2 ], [ null, %10 ], [ %17, %14 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !67
  call void @RNA_boolean_get_array(ptr noundef %24, ptr noundef nonnull @.str.52, ptr noundef nonnull %4) #7
  call void @RNA_id_pointer_create(ptr noundef nonnull %20, ptr noundef nonnull %3) #7
  call void @RNA_boolean_set_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.52, ptr noundef nonnull %4) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %19) #7
  br label %25

25:                                               ; preds = %18, %22
  %26 = phi i32 [ 4, %22 ], [ 2, %18 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  ret i32 %26
}

declare ptr @RNA_def_boolean_layer_member(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @POSE_OT_bone_layers(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.55, ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.56, ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.57, ptr %3, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @pose_bone_layers_invoke, ptr %4, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_bone_layers_exec, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_exclusive, ptr %6, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = tail call ptr @RNA_def_boolean_layer_member(ptr noundef %9, ptr noundef nonnull @.str.52, i32 noundef 32, ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.58) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @pose_bone_layers_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [32 x i32], align 16
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %4, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %6 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %5) #7
  %7 = load ptr, ptr %5, align 8, !tbaa !75
  %8 = icmp eq ptr %7, null
  br i1 %8, label %31, label %12

9:                                                ; preds = %28
  %10 = load ptr, ptr %13, align 8, !tbaa !75
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12, !llvm.loop !100

12:                                               ; preds = %3, %9
  %13 = phi ptr [ %10, %9 ], [ %7, %3 ]
  %14 = getelementptr inbounds %struct.CollectionPointerLink, ptr %13, i64 0, i32 2, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %15, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !86
  %18 = getelementptr inbounds %struct.Bone, ptr %17, i64 0, i32 25
  br label %19

19:                                               ; preds = %12, %28
  %20 = phi i64 [ 0, %12 ], [ %29, %28 ]
  %21 = load i32, ptr %18, align 8, !tbaa !101
  %22 = trunc i64 %20 to i32
  %23 = shl nuw i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 %20
  store i32 1, ptr %27, align 4, !tbaa !98
  br label %28

28:                                               ; preds = %19, %26
  %29 = add nuw nsw i64 %20, 1
  %30 = icmp eq i64 %29, 32
  br i1 %30, label %9, label %19, !llvm.loop !102

31:                                               ; preds = %9, %3
  call void @BLI_freelistN(ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  %32 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !67
  call void @RNA_boolean_set_array(ptr noundef %33, ptr noundef nonnull @.str.52, ptr noundef nonnull %4) #7
  %34 = call i32 @WM_operator_props_popup(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #7
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_bone_layers_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [32 x i32], align 16
  %5 = alloca %struct.ListBase, align 8
  %6 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %7 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %6) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  call void @RNA_boolean_get_array(ptr noundef %15, ptr noundef nonnull @.str.52, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %16 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %5) #7
  %17 = load ptr, ptr %5, align 8, !tbaa !75
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %13, %19
  %20 = phi ptr [ %26, %19 ], [ %17, %13 ]
  %21 = getelementptr inbounds %struct.CollectionPointerLink, ptr %20, i64 0, i32 2, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !76
  %23 = load ptr, ptr %10, align 8, !tbaa !91
  %24 = getelementptr inbounds %struct.bPoseChannel, ptr %22, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !86
  call void @RNA_pointer_create(ptr noundef %23, ptr noundef nonnull @RNA_Bone, ptr noundef %25, ptr noundef nonnull %3) #7
  call void @RNA_boolean_set_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.52, ptr noundef nonnull %4) #7
  %26 = load ptr, ptr %20, align 8, !tbaa !75
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %19, !llvm.loop !103

28:                                               ; preds = %19, %13
  call void @BLI_freelistN(ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %7) #7
  br label %29

29:                                               ; preds = %2, %9, %28
  %30 = phi i32 [ 4, %28 ], [ 2, %9 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define dso_local void @ARMATURE_OT_bone_layers(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.55, ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.59, ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.57, ptr %3, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @armature_bone_layers_invoke, ptr %4, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_bone_layers_exec, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %6, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = tail call ptr @RNA_def_boolean_layer_member(ptr noundef %9, ptr noundef nonnull @.str.52, i32 noundef 32, ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.58) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @armature_bone_layers_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [32 x i32], align 16
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %4, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %6 = call i32 @CTX_data_selected_editable_bones(ptr noundef %0, ptr noundef nonnull %5) #7
  %7 = load ptr, ptr %5, align 8, !tbaa !75
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %12

9:                                                ; preds = %26
  %10 = load ptr, ptr %13, align 8, !tbaa !75
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12, !llvm.loop !104

12:                                               ; preds = %3, %9
  %13 = phi ptr [ %10, %9 ], [ %7, %3 ]
  %14 = getelementptr inbounds %struct.CollectionPointerLink, ptr %13, i64 0, i32 2, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  %16 = getelementptr inbounds %struct.EditBone, ptr %15, i64 0, i32 10
  br label %17

17:                                               ; preds = %12, %26
  %18 = phi i64 [ 0, %12 ], [ %27, %26 ]
  %19 = load i32, ptr %16, align 8, !tbaa !105
  %20 = trunc i64 %18 to i32
  %21 = shl nuw i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 %18
  store i32 1, ptr %25, align 4, !tbaa !98
  br label %26

26:                                               ; preds = %17, %24
  %27 = add nuw nsw i64 %18, 1
  %28 = icmp eq i64 %27, 32
  br i1 %28, label %9, label %17, !llvm.loop !107

29:                                               ; preds = %9, %3
  call void @BLI_freelistN(ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  %30 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !67
  call void @RNA_boolean_set_array(ptr noundef %31, ptr noundef nonnull @.str.52, ptr noundef nonnull %4) #7
  %32 = call i32 @WM_operator_props_popup(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #7
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @armature_bone_layers_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [32 x i32], align 16
  %5 = alloca %struct.ListBase, align 8
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !91
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi ptr [ %10, %8 ], [ null, %2 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #7
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !67
  call void @RNA_boolean_get_array(ptr noundef %14, ptr noundef nonnull @.str.52, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %15 = call i32 @CTX_data_selected_editable_bones(ptr noundef %0, ptr noundef nonnull %5) #7
  %16 = load ptr, ptr %5, align 8, !tbaa !75
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %11, %18
  %19 = phi ptr [ %22, %18 ], [ %16, %11 ]
  %20 = getelementptr inbounds %struct.CollectionPointerLink, ptr %19, i64 0, i32 2, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !76
  call void @RNA_pointer_create(ptr noundef %12, ptr noundef nonnull @RNA_EditBone, ptr noundef %21, ptr noundef nonnull %3) #7
  call void @RNA_boolean_set_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.52, ptr noundef nonnull %4) #7
  %22 = load ptr, ptr %19, align 8, !tbaa !75
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %18, !llvm.loop !108

24:                                               ; preds = %18, %11
  call void @BLI_freelistN(ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %6) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  ret i32 4
}

declare i32 @ED_operator_editarmature(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @POSE_OT_hide(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.60, ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.61, ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.62, ptr %3, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_hide_exec, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.63, i32 noundef 0, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.42) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_hide_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %4 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !80
  tail call void @BKE_report(ptr noundef %12, i32 noundef 2, ptr noundef nonnull @.str.71) #7
  br label %13

13:                                               ; preds = %10, %2
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = tail call i32 @RNA_boolean_get(ptr noundef %15, ptr noundef nonnull @.str.63) #7
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !110
  %20 = select i1 %17, ptr @hide_selected_pose_bone_cb, ptr @hide_unselected_pose_bone_cb
  %21 = tail call i32 @bone_looper(ptr noundef %4, ptr noundef %19, ptr noundef null, ptr noundef nonnull %20) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %4) #7
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_reveal(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.65, ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.66, ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.67, ptr %3, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_reveal_exec, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !65
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_reveal_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %4 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  %7 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !110
  %9 = tail call i32 @bone_looper(ptr noundef %4, ptr noundef %8, ptr noundef null, ptr noundef nonnull @show_pose_bone_cb) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %4) #7
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_quaternions_flip(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.68, ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.69, ptr %2, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.70, ptr %3, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_flip_quats_exec, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !65
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_flip_quats_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #7
  %6 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %5) #7
  %7 = tail call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str.72) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %8 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %3) #7
  %9 = load ptr, ptr %3, align 8, !tbaa !75
  %10 = icmp eq ptr %9, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %2, %32
  %12 = phi ptr [ %33, %32 ], [ %9, %2 ]
  %13 = getelementptr inbounds %struct.CollectionPointerLink, ptr %12, i64 0, i32 2, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !76
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %14, i64 0, i32 26
  %16 = load i16, ptr %15, align 4, !tbaa !96
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.bPoseChannel, ptr %14, i64 0, i32 23
  %20 = load float, ptr %19, align 4, !tbaa !94
  %21 = fneg float %20
  store float %21, ptr %19, align 4, !tbaa !94
  %22 = getelementptr inbounds %struct.bPoseChannel, ptr %14, i64 0, i32 23, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !94
  %24 = fneg float %23
  store float %24, ptr %22, align 4, !tbaa !94
  %25 = getelementptr inbounds %struct.bPoseChannel, ptr %14, i64 0, i32 23, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !94
  %27 = fneg float %26
  store float %27, ptr %25, align 4, !tbaa !94
  %28 = getelementptr inbounds %struct.bPoseChannel, ptr %14, i64 0, i32 23, i64 3
  %29 = load float, ptr %28, align 4, !tbaa !94
  %30 = fneg float %29
  store float %30, ptr %28, align 4, !tbaa !94
  %31 = call zeroext i8 @ED_autokeyframe_pchan(ptr noundef %0, ptr noundef %4, ptr noundef %6, ptr noundef %14, ptr noundef %7) #7
  br label %32

32:                                               ; preds = %18, %11
  %33 = load ptr, ptr %12, align 8, !tbaa !75
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %11, !llvm.loop !112

35:                                               ; preds = %32, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 2) #7
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef %6) #7
  ret i32 4
}

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WM_operator_props_dialog_popup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CTX_data_selected_pose_bones(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @animviz_verify_motionpaths(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @animviz_free_motionpath(ptr noundef) local_unnamed_addr #2

declare void @BKE_deform_flip_side_name(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @ED_armature_bone_rename(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @bone_autoside_name(ptr noundef, i32 noundef, i16 noundef signext, float noundef, float noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_boolean_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_boolean_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WM_operator_props_popup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CTX_data_selected_editable_bones(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare i32 @bone_looper(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @hide_unselected_pose_bone_cb(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #5 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 15
  %7 = load i32, ptr %6, align 8, !tbaa !113
  %8 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 25
  %9 = load i32, ptr %8, align 8, !tbaa !101
  %10 = and i32 %9, %7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 10
  %14 = load i32, ptr %13, align 8, !tbaa !87
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = or i32 %14, 64
  store i32 %18, ptr %13, align 8, !tbaa !87
  %19 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !114
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store ptr null, ptr %19, align 8, !tbaa !114
  br label %23

23:                                               ; preds = %12, %22, %17, %3
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @hide_selected_pose_bone_cb(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #5 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 15
  %7 = load i32, ptr %6, align 8, !tbaa !113
  %8 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 25
  %9 = load i32, ptr %8, align 8, !tbaa !101
  %10 = and i32 %9, %7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 10
  %14 = load i32, ptr %13, align 8, !tbaa !87
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = and i32 %14, -66
  %19 = or disjoint i32 %18, 64
  store i32 %19, ptr %13, align 8, !tbaa !87
  %20 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !114
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store ptr null, ptr %20, align 8, !tbaa !114
  br label %24

24:                                               ; preds = %12, %23, %17, %3
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @show_pose_bone_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #6 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 15
  %7 = load i32, ptr %6, align 8, !tbaa !113
  %8 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 25
  %9 = load i32, ptr %8, align 8, !tbaa !101
  %10 = and i32 %9, %7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 10
  %14 = load i32, ptr %13, align 8, !tbaa !87
  %15 = and i32 %14, 64
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = and i32 %14, -65
  store i32 %18, ptr %13, align 8, !tbaa !87
  %19 = and i32 %14, 2097152
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = or i32 %18, 1
  store i32 %22, ptr %13, align 8, !tbaa !87
  br label %23

23:                                               ; preds = %12, %21, %17, %3
  ret i32 0
}

declare ptr @ANIM_builtin_keyingset_get_named(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_autokeyframe_pchan(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
!34 = !{!35, !37, i64 72}
!35 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !39, i64 56, !37, i64 72, !37, i64 73, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !41, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !42, i64 96, !42, i64 112, !42, i64 128, !42, i64 144}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!40 = !{!"int", !37, i64 0}
!41 = !{!"short", !37, i64 0}
!42 = !{!"ListBase", !36, i64 0, !36, i64 8}
!43 = !{!44, !36, i64 32}
!44 = !{!"Base", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !41, i64 28, !41, i64 30, !36, i64 32}
!45 = !{!46, !36, i64 24}
!46 = !{!"Object", !47, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !48, i64 312, !36, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !40, i64 432, !40, i64 436, !36, i64 440, !36, i64 448, !40, i64 456, !40, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !49, i64 616, !49, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !40, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !49, i64 988, !49, i64 992, !49, i64 996, !49, i64 1000, !49, i64 1004, !49, i64 1008, !49, i64 1012, !49, i64 1016, !49, i64 1020, !49, i64 1024, !49, i64 1028, !49, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !49, i64 1048, !49, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !49, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !40, i64 1144, !40, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !49, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !50, i64 1304, !50, i64 1312, !40, i64 1320, !40, i64 1324, !42, i64 1328, !42, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !42, i64 1400, !36, i64 1416}
!47 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!48 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!49 = !{!"float", !37, i64 0}
!50 = !{!"long", !37, i64 0}
!51 = !{!46, !41, i64 136}
!52 = !{!46, !40, i64 432}
!53 = !{!46, !40, i64 436}
!54 = !{!46, !36, i64 288}
!55 = !{!56, !41, i64 126}
!56 = !{!"bPose", !42, i64 0, !36, i64 16, !41, i64 24, !41, i64 26, !40, i64 28, !40, i64 32, !49, i64 36, !37, i64 40, !37, i64 52, !42, i64 64, !40, i64 80, !40, i64 84, !36, i64 88, !36, i64 96, !48, i64 104, !37, i64 152}
!57 = !{!58, !36, i64 0}
!58 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !42, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !59, i64 152, !41, i64 184}
!59 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!60 = !{!58, !36, i64 8}
!61 = !{!58, !36, i64 24}
!62 = !{!58, !36, i64 48}
!63 = !{!58, !36, i64 32}
!64 = !{!58, !36, i64 72}
!65 = !{!58, !41, i64 184}
!66 = !{!58, !36, i64 88}
!67 = !{!68, !36, i64 112}
!68 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !42, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!69 = !{!48, !40, i64 32}
!70 = !{!48, !40, i64 36}
!71 = !{!72, !41, i64 8948}
!72 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !40, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !41, i64 8496, !41, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !42, i64 8536, !42, i64 8552, !42, i64 8568, !42, i64 8584, !42, i64 8600, !42, i64 8616, !42, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !40, i64 8912, !40, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !49, i64 8956, !49, i64 8960, !40, i64 8964, !41, i64 8968, !41, i64 8970, !49, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !73, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !40, i64 10896, !40, i64 10900, !49, i64 10904, !49, i64 10908, !40, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !74, i64 10928}
!73 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!74 = !{!"WalkNavigation", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !41, i64 24, !37, i64 26}
!75 = !{!36, !36, i64 0}
!76 = !{!77, !36, i64 32}
!77 = !{!"CollectionPointerLink", !36, i64 0, !36, i64 8, !78, i64 16}
!78 = !{!"PointerRNA", !79, i64 0, !36, i64 8, !36, i64 16}
!79 = !{!"", !36, i64 0}
!80 = !{!68, !36, i64 120}
!81 = distinct !{!81, !82, !83}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = !{!85, !36, i64 176}
!85 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !42, i64 24, !37, i64 40, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !42, i64 144, !42, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !49, i64 264, !41, i64 268, !41, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !49, i64 524, !49, i64 528, !49, i64 532, !36, i64 536}
!86 = !{!85, !36, i64 120}
!87 = !{!88, !40, i64 176}
!88 = !{!"Bone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !42, i64 32, !37, i64 48, !49, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !40, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !49, i64 268, !49, i64 272, !49, i64 276, !49, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !49, i64 304, !37, i64 308, !40, i64 320, !41, i64 324, !37, i64 326}
!89 = distinct !{!89, !82, !83}
!90 = !{!56, !41, i64 134}
!91 = !{!46, !36, i64 296}
!92 = distinct !{!92, !82, !83}
!93 = !{!58, !36, i64 104}
!94 = !{!49, !49, i64 0}
!95 = distinct !{!95, !82, !83}
!96 = !{!85, !41, i64 268}
!97 = distinct !{!97, !82, !83}
!98 = !{!40, !40, i64 0}
!99 = distinct !{!99, !82, !83}
!100 = distinct !{!100, !82, !83}
!101 = !{!88, !40, i64 320}
!102 = distinct !{!102, !82, !83}
!103 = distinct !{!103, !82, !83}
!104 = distinct !{!104, !82, !83}
!105 = !{!106, !40, i64 136}
!106 = !{!"EditBone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !49, i64 104, !37, i64 108, !37, i64 120, !40, i64 132, !40, i64 136, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !41, i64 180}
!107 = distinct !{!107, !82, !83}
!108 = distinct !{!108, !82, !83}
!109 = !{!46, !36, i64 232}
!110 = !{!111, !36, i64 128}
!111 = !{!"bArmature", !47, i64 0, !36, i64 120, !42, i64 128, !42, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !41, i64 208, !41, i64 210, !40, i64 212, !40, i64 216, !40, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252}
!112 = distinct !{!112, !82, !83}
!113 = !{!111, !40, i64 216}
!114 = !{!111, !36, i64 168}
