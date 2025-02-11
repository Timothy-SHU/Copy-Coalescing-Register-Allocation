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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ED_pose_object_from_context(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i8 %6, 4
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call ptr @ED_object_context(ptr noundef %0) #8
  br label %13

10:                                               ; preds = %4, %1
  %11 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %12 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %11) #8
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi ptr [ %9, %8 ], [ %12, %10 ]
  ret ptr %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_object_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_object_pose_armature_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_armature_enter_posemode(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_reports(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @BKE_report(ptr noundef %3, i32 noundef 16, ptr noundef nonnull @.str) #8
  br label %19

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !22
  %13 = icmp eq i16 %12, 25
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 27
  %16 = load i32, ptr %15, align 8, !tbaa !23
  %17 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 28
  store i32 %16, ptr %17, align 4, !tbaa !24
  %18 = or i32 %16, 64
  store i32 %18, ptr %15, align 8, !tbaa !23
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67832064, ptr noundef null) #8
  br label %19

19:                                               ; preds = %10, %14, %9
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_armature_exit_posemode(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 27
  %8 = load i32, ptr %7, align 8, !tbaa !23
  %9 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 28
  store i32 %8, ptr %9, align 4, !tbaa !24
  %10 = and i32 %8, -65
  store i32 %10, ptr %7, align 8, !tbaa !23
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67830016, ptr noundef null) #8
  br label %11

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_pose_recalculate_paths(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = getelementptr inbounds %struct.bPose, ptr %5, i64 0, i32 14, i32 7
  %7 = load i16, ptr %6, align 2, !tbaa !26
  %8 = or i16 %7, 1
  store i16 %8, ptr %6, align 2, !tbaa !26
  call void @animviz_get_object_motionpaths(ptr noundef %1, ptr noundef nonnull %3) #8
  call void @animviz_calc_motionpaths(ptr noundef %0, ptr noundef nonnull %3) #8
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @animviz_get_object_motionpaths(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @animviz_calc_motionpaths(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @POSE_OT_paths_calculate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.1, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.3, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @pose_calculate_paths_invoke, ptr %4, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_calculate_paths_exec, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_exclusive, ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !37
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.4, i32 noundef 1, i32 noundef -300000, i32 noundef 300000, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 150000) #8
  %11 = load ptr, ptr %8, align 8, !tbaa !37
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.7, i32 noundef 250, i32 noundef -300000, i32 noundef 300000, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 150000) #8
  %13 = load ptr, ptr %8, align 8, !tbaa !37
  %14 = tail call ptr @RNA_def_enum(ptr noundef %13, ptr noundef nonnull @.str.10, ptr noundef nonnull @motionpath_bake_location_items, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @pose_calculate_paths_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %6 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %5) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !25
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.bPose, ptr %10, i64 0, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  %16 = getelementptr inbounds %struct.bPose, ptr %10, i64 0, i32 14, i32 12
  %17 = load i32, ptr %16, align 4, !tbaa !40
  tail call void @RNA_int_set(ptr noundef %15, ptr noundef nonnull @.str.4, i32 noundef %17) #8
  %18 = load ptr, ptr %14, align 8, !tbaa !38
  %19 = getelementptr inbounds %struct.bPose, ptr %10, i64 0, i32 14, i32 13
  %20 = load i32, ptr %19, align 4, !tbaa !41
  tail call void @RNA_int_set(ptr noundef %18, ptr noundef nonnull @.str.7, i32 noundef %20) #8
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_AnimVizMotionPaths, ptr noundef nonnull %13, ptr noundef nonnull %4) #8
  %21 = load ptr, ptr %14, align 8, !tbaa !38
  %22 = call i32 @RNA_enum_get(ptr noundef nonnull %4, ptr noundef nonnull @.str.10) #8
  call void @RNA_enum_set(ptr noundef %21, ptr noundef nonnull @.str.10, i32 noundef %22) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  %23 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !42
  %24 = sext i16 %23 to i32
  %25 = mul nsw i32 %24, 10
  %26 = call i32 @WM_operator_props_dialog_popup(ptr noundef %0, ptr noundef %1, i32 noundef %25, i32 noundef %25) #8
  br label %27

27:                                               ; preds = %3, %8, %12
  %28 = phi i32 [ %26, %12 ], [ 2, %8 ], [ 2, %3 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_calculate_paths_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %6 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %5) #8
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %8 = icmp eq ptr %6, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !25
  %12 = icmp eq ptr %11, null
  br i1 %12, label %38, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bPose, ptr %11, i64 0, i32 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  %17 = tail call i32 @RNA_int_get(ptr noundef %16, ptr noundef nonnull @.str.4) #8
  %18 = getelementptr inbounds %struct.bPose, ptr %11, i64 0, i32 14, i32 12
  store i32 %17, ptr %18, align 4, !tbaa !40
  %19 = load ptr, ptr %15, align 8, !tbaa !38
  %20 = tail call i32 @RNA_int_get(ptr noundef %19, ptr noundef nonnull @.str.7) #8
  %21 = getelementptr inbounds %struct.bPose, ptr %11, i64 0, i32 14, i32 13
  store i32 %20, ptr %21, align 4, !tbaa !41
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_AnimVizMotionPaths, ptr noundef nonnull %14, ptr noundef nonnull %3) #8
  %22 = load ptr, ptr %15, align 8, !tbaa !38
  %23 = call i32 @RNA_enum_get(ptr noundef %22, ptr noundef nonnull @.str.10) #8
  call void @RNA_enum_set(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, i32 noundef %23) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %24 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %4) #8
  %25 = load ptr, ptr %4, align 8, !tbaa !46
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %13
  %28 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi ptr [ %25, %27 ], [ %35, %29 ]
  %31 = getelementptr inbounds %struct.CollectionPointerLink, ptr %30, i64 0, i32 2, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  %33 = load ptr, ptr %28, align 8, !tbaa !51
  %34 = call ptr @animviz_verify_motionpaths(ptr noundef %33, ptr noundef %7, ptr noundef nonnull %6, ptr noundef %32) #8
  %35 = load ptr, ptr %30, align 8, !tbaa !46
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !llvm.loop !52

37:                                               ; preds = %29, %13
  call void @BLI_freelistN(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @ED_pose_recalculate_paths(ptr noundef %7, ptr noundef nonnull %6) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %6) #8
  br label %38

38:                                               ; preds = %2, %9, %37
  %39 = phi i32 [ 4, %37 ], [ 2, %9 ], [ 2, %2 ]
  ret i32 %39
}

; Function Attrs: optsize
declare i32 @ED_operator_posemode_exclusive(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_paths_update(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.13, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.15, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_update_paths_exec, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_exclusive, ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_update_paths_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %4 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %3) #8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %6 = icmp eq ptr %4, null
  %7 = icmp eq ptr %5, null
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @ED_pose_recalculate_paths(ptr noundef nonnull %5, ptr noundef nonnull %4) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %4) #8
  br label %10

10:                                               ; preds = %2, %9
  %11 = phi i32 [ 4, %9 ], [ 2, %2 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_paths_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.16, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_clear_paths_exec, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_exclusive, ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_clear_paths_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %4 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %3) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !25
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call fastcc void @ED_pose_clear_paths(ptr noundef nonnull %4) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %4) #8
  br label %11

11:                                               ; preds = %2, %6, %10
  %12 = phi i32 [ 4, %10 ], [ 2, %6 ], [ 2, %2 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_flip_names(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.19, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.21, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_flip_names_exec, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_flip_names_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca [64 x i8], align 16
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %6 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %5) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !25
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %15 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %3) #8
  %16 = load ptr, ptr %3, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %12, %18
  %19 = phi ptr [ %23, %18 ], [ %16, %12 ]
  %20 = getelementptr inbounds %struct.CollectionPointerLink, ptr %19, i64 0, i32 2, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %22 = getelementptr inbounds %struct.bPoseChannel, ptr %21, i64 0, i32 4
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %4, ptr noundef nonnull %22, i8 noundef zeroext 1) #8
  call void @ED_armature_bone_rename(ptr noundef %14, ptr noundef nonnull %22, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  %23 = load ptr, ptr %19, align 8, !tbaa !46
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %18, !llvm.loop !55

25:                                               ; preds = %18, %12
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  call void @DAG_id_tag_update(ptr noundef nonnull %6, i16 noundef signext 2) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %6) #8
  br label %26

26:                                               ; preds = %2, %8, %25
  %27 = phi i32 [ 4, %25 ], [ 2, %8 ], [ 2, %2 ]
  ret i32 %27
}

; Function Attrs: optsize
declare i32 @ED_operator_posemode(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @POSE_OT_autoside_names(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.31, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.32, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_autoside_names_exec, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !37
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.34, ptr noundef nonnull @POSE_OT_autoside_names.axis_items, i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !56
  ret void
}

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_autoside_names_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca %struct.ListBase, align 8
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %6 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %5) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.34) #8
  %10 = trunc i32 %9 to i16
  %11 = icmp eq ptr %6, null
  br i1 %11, label %43, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !25
  %15 = icmp eq ptr %14, null
  br i1 %15, label %43, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %19 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %4) #8
  %20 = load ptr, ptr %4, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %16
  %23 = sext i16 %10 to i64
  br label %24

24:                                               ; preds = %22, %39
  %25 = phi ptr [ %20, %22 ], [ %40, %39 ]
  %26 = getelementptr inbounds %struct.CollectionPointerLink, ptr %25, i64 0, i32 2, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  %28 = getelementptr inbounds %struct.bPoseChannel, ptr %27, i64 0, i32 4
  %29 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %28, i64 noundef 64) #8
  %30 = getelementptr inbounds %struct.bPoseChannel, ptr %27, i64 0, i32 12
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  %32 = getelementptr inbounds %struct.Bone, ptr %31, i64 0, i32 7, i64 %23
  %33 = load float, ptr %32, align 4, !tbaa !59
  %34 = getelementptr inbounds %struct.Bone, ptr %31, i64 0, i32 8, i64 %23
  %35 = load float, ptr %34, align 4, !tbaa !59
  %36 = call i32 @bone_autoside_name(ptr noundef nonnull %3, i32 noundef 1, i16 noundef signext %10, float noundef %33, float noundef %35) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %24
  call void @ED_armature_bone_rename(ptr noundef %18, ptr noundef nonnull %28, ptr noundef nonnull %3) #8
  br label %39

39:                                               ; preds = %38, %24
  %40 = load ptr, ptr %25, align 8, !tbaa !46
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %24, !llvm.loop !60

42:                                               ; preds = %39, %16
  call void @BLI_freelistN(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  call void @DAG_id_tag_update(ptr noundef nonnull %6, i16 noundef signext 2) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %6) #8
  br label %43

43:                                               ; preds = %2, %12, %42
  %44 = phi i32 [ 4, %42 ], [ 2, %12 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  ret i32 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @POSE_OT_rotation_mode_set(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.37, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.38, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.39, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_bone_rotmode_exec, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !37
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.40, ptr noundef nonnull @posebone_rotmode_items, i32 noundef 0, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42) #8
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_bone_rotmode_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.40) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %8 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %3) #8
  %9 = load ptr, ptr %3, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = trunc i32 %7 to i16
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi ptr [ %9, %11 ], [ %18, %13 ]
  %15 = getelementptr inbounds %struct.CollectionPointerLink, ptr %14, i64 0, i32 2, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = getelementptr inbounds %struct.bPoseChannel, ptr %16, i64 0, i32 26
  store i16 %12, ptr %17, align 4, !tbaa !61
  %18 = load ptr, ptr %14, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %13, !llvm.loop !62

20:                                               ; preds = %13, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 2) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef %4) #8
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ARMATURE_OT_layers_show_all(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.43, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.44, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.45, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_armature_layers_showall_exec, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @armature_layers_poll, ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !36
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.46, i32 noundef 1, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48) #8
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_armature_layers_showall_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca [32 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %6 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  store ptr %6, ptr %3, align 8, !tbaa !46
  %7 = call fastcc ptr @armature_layers_get_data(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.46) #8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %5, i8 0, i64 128, i1 false)
  %11 = icmp eq ptr %7, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = icmp eq i32 %10, 0
  %14 = select i1 %13, i64 16, i64 32
  call void @RNA_id_pointer_create(ptr noundef nonnull %7, ptr noundef nonnull %4) #8
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi i64 [ 0, %12 ], [ %18, %15 ]
  %17 = getelementptr inbounds [32 x i32], ptr %5, i64 0, i64 %16
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %17, align 16, !tbaa !63
  %18 = add nuw i64 %16, 4
  %19 = icmp eq i64 %18, %14
  br i1 %19, label %20, label %15, !llvm.loop !64

20:                                               ; preds = %15
  call void @RNA_boolean_set_array(ptr noundef nonnull %4, ptr noundef nonnull @.str.52, ptr noundef nonnull %5) #8
  %21 = load ptr, ptr %3, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %21) #8
  br label %22

22:                                               ; preds = %2, %20
  %23 = phi i32 [ 4, %20 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @armature_layers_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_operator_posemode(ptr noundef %0) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @ED_operator_editarmature(ptr noundef %0) #8
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 1, %1 ], [ %7, %4 ]
  ret i32 %9
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ARMATURE_OT_armature_layers(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.49, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.50, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.51, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @armature_layers_invoke, ptr %4, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_layers_exec, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @armature_layers_poll, ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !37
  %10 = tail call ptr @RNA_def_boolean_layer_member(ptr noundef %9, ptr noundef nonnull @.str.52, i32 noundef 32, ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @armature_layers_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca [32 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %7 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  store ptr %7, ptr %4, align 8, !tbaa !46
  %8 = call fastcc ptr @armature_layers_get_data(ptr noundef nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  call void @RNA_id_pointer_create(ptr noundef nonnull %8, ptr noundef nonnull %5) #8
  call void @RNA_boolean_get_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.52, ptr noundef nonnull %6) #8
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  call void @RNA_boolean_set_array(ptr noundef %12, ptr noundef nonnull @.str.52, ptr noundef nonnull %6) #8
  %13 = call i32 @WM_operator_props_popup(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8
  br label %14

14:                                               ; preds = %3, %10
  %15 = phi i32 [ %13, %10 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_layers_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca [32 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %6 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  store ptr %6, ptr %3, align 8, !tbaa !46
  %7 = call fastcc ptr @armature_layers_get_data(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  call void @RNA_boolean_get_array(ptr noundef %11, ptr noundef nonnull @.str.52, ptr noundef nonnull %5) #8
  call void @RNA_id_pointer_create(ptr noundef nonnull %7, ptr noundef nonnull %4) #8
  call void @RNA_boolean_set_array(ptr noundef nonnull %4, ptr noundef nonnull @.str.52, ptr noundef nonnull %5) #8
  %12 = load ptr, ptr %3, align 8, !tbaa !46
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %12) #8
  br label %13

13:                                               ; preds = %2, %9
  %14 = phi i32 [ 4, %9 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean_layer_member(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @POSE_OT_bone_layers(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.55, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.56, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.57, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @pose_bone_layers_invoke, ptr %4, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_bone_layers_exec, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode_exclusive, ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !37
  %10 = tail call ptr @RNA_def_boolean_layer_member(ptr noundef %9, ptr noundef nonnull @.str.52, i32 noundef 32, ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.58) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @pose_bone_layers_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [32 x i32], align 16
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %4, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  %6 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %5) #8
  %7 = load ptr, ptr %5, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %31, label %12

9:                                                ; preds = %28
  %10 = load ptr, ptr %13, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12, !llvm.loop !67

12:                                               ; preds = %3, %9
  %13 = phi ptr [ %10, %9 ], [ %7, %3 ]
  %14 = getelementptr inbounds %struct.CollectionPointerLink, ptr %13, i64 0, i32 2, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %15, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.Bone, ptr %17, i64 0, i32 25
  %19 = load i32, ptr %18, align 8, !tbaa !68
  br label %20

20:                                               ; preds = %12, %28
  %21 = phi i64 [ 0, %12 ], [ %29, %28 ]
  %22 = trunc i64 %21 to i32
  %23 = shl nuw i32 1, %22
  %24 = and i32 %19, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 %21
  store i32 1, ptr %27, align 4, !tbaa !63
  br label %28

28:                                               ; preds = %20, %26
  %29 = add nuw nsw i64 %21, 1
  %30 = icmp eq i64 %29, 32
  br i1 %30, label %9, label %20, !llvm.loop !70

31:                                               ; preds = %9, %3
  call void @BLI_freelistN(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  %32 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !38
  call void @RNA_boolean_set_array(ptr noundef %33, ptr noundef nonnull @.str.52, ptr noundef nonnull %4) #8
  %34 = call i32 @WM_operator_props_popup(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #9
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_bone_layers_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [32 x i32], align 16
  %5 = alloca %struct.ListBase, align 8
  %6 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %7 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %6) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  call void @RNA_boolean_get_array(ptr noundef %15, ptr noundef nonnull @.str.52, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  %16 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %5) #8
  %17 = load ptr, ptr %5, align 8, !tbaa !46
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %13, %19
  %20 = phi ptr [ %26, %19 ], [ %17, %13 ]
  %21 = getelementptr inbounds %struct.CollectionPointerLink, ptr %20, i64 0, i32 2, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !47
  %23 = load ptr, ptr %10, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct.bPoseChannel, ptr %22, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !57
  call void @RNA_pointer_create(ptr noundef %23, ptr noundef nonnull @RNA_Bone, ptr noundef %25, ptr noundef nonnull %3) #8
  call void @RNA_boolean_set_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.52, ptr noundef nonnull %4) #8
  %26 = load ptr, ptr %20, align 8, !tbaa !46
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %19, !llvm.loop !71

28:                                               ; preds = %19, %13
  call void @BLI_freelistN(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef nonnull %7) #8
  br label %29

29:                                               ; preds = %2, %9, %28
  %30 = phi i32 [ 4, %28 ], [ 2, %9 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ARMATURE_OT_bone_layers(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.55, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.59, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.57, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @armature_bone_layers_invoke, ptr %4, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @armature_bone_layers_exec, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editarmature, ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !37
  %10 = tail call ptr @RNA_def_boolean_layer_member(ptr noundef %9, ptr noundef nonnull @.str.52, i32 noundef 32, ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.58) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @armature_bone_layers_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [32 x i32], align 16
  %5 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %4, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  %6 = call i32 @CTX_data_selected_editable_bones(ptr noundef %0, ptr noundef nonnull %5) #8
  %7 = load ptr, ptr %5, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %12

9:                                                ; preds = %26
  %10 = load ptr, ptr %13, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12, !llvm.loop !72

12:                                               ; preds = %3, %9
  %13 = phi ptr [ %10, %9 ], [ %7, %3 ]
  %14 = getelementptr inbounds %struct.CollectionPointerLink, ptr %13, i64 0, i32 2, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = getelementptr inbounds %struct.EditBone, ptr %15, i64 0, i32 10
  %17 = load i32, ptr %16, align 8, !tbaa !73
  br label %18

18:                                               ; preds = %12, %26
  %19 = phi i64 [ 0, %12 ], [ %27, %26 ]
  %20 = trunc i64 %19 to i32
  %21 = shl nuw i32 1, %20
  %22 = and i32 %17, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 %19
  store i32 1, ptr %25, align 4, !tbaa !63
  br label %26

26:                                               ; preds = %18, %24
  %27 = add nuw nsw i64 %19, 1
  %28 = icmp eq i64 %27, 32
  br i1 %28, label %9, label %18, !llvm.loop !75

29:                                               ; preds = %9, %3
  call void @BLI_freelistN(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  %30 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !38
  call void @RNA_boolean_set_array(ptr noundef %31, ptr noundef nonnull @.str.52, ptr noundef nonnull %4) #8
  %32 = call i32 @WM_operator_props_popup(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #9
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @armature_bone_layers_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [32 x i32], align 16
  %5 = alloca %struct.ListBase, align 8
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi ptr [ %10, %8 ], [ null, %2 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #9
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  call void @RNA_boolean_get_array(ptr noundef %14, ptr noundef nonnull @.str.52, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  %15 = call i32 @CTX_data_selected_editable_bones(ptr noundef %0, ptr noundef nonnull %5) #8
  %16 = load ptr, ptr %5, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %11, %18
  %19 = phi ptr [ %22, %18 ], [ %16, %11 ]
  %20 = getelementptr inbounds %struct.CollectionPointerLink, ptr %19, i64 0, i32 2, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !47
  call void @RNA_pointer_create(ptr noundef %12, ptr noundef nonnull @RNA_EditBone, ptr noundef %21, ptr noundef nonnull %3) #8
  call void @RNA_boolean_set_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.52, ptr noundef nonnull %4) #8
  %22 = load ptr, ptr %19, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %18, !llvm.loop !76

24:                                               ; preds = %18, %11
  call void @BLI_freelistN(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %6) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_editarmature(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @POSE_OT_hide(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.60, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.61, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.62, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_hide_exec, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !36
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.63, i32 noundef 0, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.42) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_hide_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %4 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  tail call void @BKE_report(ptr noundef %12, i32 noundef 2, ptr noundef nonnull @.str.71) #8
  br label %13

13:                                               ; preds = %10, %2
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  %16 = tail call i32 @RNA_boolean_get(ptr noundef %15, ptr noundef nonnull @.str.63) #8
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !78
  %20 = select i1 %17, ptr @hide_selected_pose_bone_cb, ptr @hide_unselected_pose_bone_cb
  %21 = tail call i32 @bone_looper(ptr noundef nonnull %4, ptr noundef %19, ptr noundef null, ptr noundef nonnull %20) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef nonnull %4) #8
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_reveal(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.65, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.66, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.67, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_reveal_exec, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_reveal_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %4 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.bArmature, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  %9 = tail call i32 @bone_looper(ptr noundef %4, ptr noundef %8, ptr noundef null, ptr noundef nonnull @show_pose_bone_cb) #8
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85327872, ptr noundef %4) #8
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @POSE_OT_quaternions_flip(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.68, ptr %0, align 8, !tbaa !28
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.69, ptr %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.70, ptr %3, align 8, !tbaa !32
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_flip_quats_exec, ptr %4, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_flip_quats_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %6 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %5) #8
  %7 = tail call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str.72) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %8 = call i32 @CTX_data_selected_pose_bones(ptr noundef %0, ptr noundef nonnull %3) #8
  %9 = load ptr, ptr %3, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %2, %21
  %12 = phi ptr [ %22, %21 ], [ %9, %2 ]
  %13 = getelementptr inbounds %struct.CollectionPointerLink, ptr %12, i64 0, i32 2, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %14, i64 0, i32 26
  %16 = load i16, ptr %15, align 4, !tbaa !61
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.bPoseChannel, ptr %14, i64 0, i32 23
  call fastcc void @negate_v4(ptr noundef nonnull %19) #10
  %20 = call zeroext i8 @ED_autokeyframe_pchan(ptr noundef %0, ptr noundef %4, ptr noundef %6, ptr noundef nonnull %14, ptr noundef %7) #8
  br label %21

21:                                               ; preds = %18, %11
  %22 = load ptr, ptr %12, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %11, !llvm.loop !80

24:                                               ; preds = %21, %2
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 2) #8
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef %6) #8
  ret i32 4
}

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_operator_props_dialog_popup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_pose_bones(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @animviz_verify_motionpaths(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ED_pose_clear_paths(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %5, %24
  %9 = phi ptr [ %26, %24 ], [ %6, %5 ]
  %10 = phi i16 [ %25, %24 ], [ 0, %5 ]
  %11 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !81
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %9, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Bone, ptr %16, i64 0, i32 10
  %20 = load i32, ptr %19, align 8, !tbaa !82
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  tail call void @animviz_free_motionpath(ptr noundef nonnull %12) #8
  store ptr null, ptr %11, align 8, !tbaa !81
  br label %24

24:                                               ; preds = %14, %18, %8, %23
  %25 = phi i16 [ %10, %23 ], [ %10, %8 ], [ 1, %18 ], [ 1, %14 ]
  %26 = load ptr, ptr %9, align 8, !tbaa !46
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %8, !llvm.loop !83

28:                                               ; preds = %24
  %29 = icmp eq i16 %25, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %5, %28
  %31 = load ptr, ptr %2, align 8, !tbaa !25
  %32 = getelementptr inbounds %struct.bPose, ptr %31, i64 0, i32 14, i32 11
  %33 = load i16, ptr %32, align 2, !tbaa !84
  %34 = and i16 %33, -5
  store i16 %34, ptr %32, align 2, !tbaa !84
  br label %35

35:                                               ; preds = %28, %30, %1
  ret void
}

; Function Attrs: optsize
declare void @animviz_free_motionpath(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_deform_flip_side_name(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_armature_bone_rename(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bone_autoside_name(ptr noundef, i32 noundef, i16 noundef signext, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @armature_layers_get_data(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @BKE_object_pose_armature_get(ptr noundef nonnull %2) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  store ptr %5, ptr %0, align 8, !tbaa !46
  br label %13

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !22
  %12 = icmp eq i16 %11, 25
  br i1 %12, label %13, label %17

13:                                               ; preds = %8, %7
  %14 = phi ptr [ %5, %7 ], [ %9, %8 ]
  %15 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  br label %17

17:                                               ; preds = %13, %8, %1
  %18 = phi ptr [ null, %1 ], [ null, %8 ], [ %16, %13 ]
  ret ptr %18
}

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_boolean_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_boolean_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_operator_props_popup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_editable_bones(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bone_looper(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @hide_unselected_pose_bone_cb(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #5 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 15
  %7 = load i32, ptr %6, align 8, !tbaa !85
  %8 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 25
  %9 = load i32, ptr %8, align 8, !tbaa !68
  %10 = and i32 %9, %7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 10
  %14 = load i32, ptr %13, align 8, !tbaa !82
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = or i32 %14, 64
  store i32 %18, ptr %13, align 8, !tbaa !82
  %19 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !86
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store ptr null, ptr %19, align 8, !tbaa !86
  br label %23

23:                                               ; preds = %12, %22, %17, %3
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @hide_selected_pose_bone_cb(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #5 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 15
  %7 = load i32, ptr %6, align 8, !tbaa !85
  %8 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 25
  %9 = load i32, ptr %8, align 8, !tbaa !68
  %10 = and i32 %9, %7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 10
  %14 = load i32, ptr %13, align 8, !tbaa !82
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = and i32 %14, -66
  %19 = or disjoint i32 %18, 64
  store i32 %19, ptr %13, align 8, !tbaa !82
  %20 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !86
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store ptr null, ptr %20, align 8, !tbaa !86
  br label %24

24:                                               ; preds = %12, %23, %17, %3
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @show_pose_bone_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #6 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 15
  %7 = load i32, ptr %6, align 8, !tbaa !85
  %8 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 25
  %9 = load i32, ptr %8, align 8, !tbaa !68
  %10 = and i32 %9, %7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 10
  %14 = load i32, ptr %13, align 8, !tbaa !82
  %15 = and i32 %14, 64
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = and i32 %14, -65
  store i32 %18, ptr %13, align 8, !tbaa !82
  %19 = and i32 %14, 2097152
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = or i32 %18, 1
  store i32 %22, ptr %13, align 8, !tbaa !82
  br label %23

23:                                               ; preds = %12, %21, %17, %3
  ret i32 0
}

; Function Attrs: optsize
declare ptr @ANIM_builtin_keyingset_get_named(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v4(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load <4 x float>, ptr %0, align 4, !tbaa !59
  %3 = fneg <4 x float> %2
  store <4 x float> %3, ptr %0, align 4, !tbaa !59
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ED_autokeyframe_pchan(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!5 = !{!6, !8, i64 72}
!6 = !{!"ScrArea", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !10, i64 56, !8, i64 72, !8, i64 73, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !12, i64 84, !8, i64 86, !8, i64 87, !7, i64 88, !13, i64 96, !13, i64 112, !13, i64 128, !13, i64 144}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!11 = !{!"int", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!"ListBase", !7, i64 0, !7, i64 8}
!14 = !{!15, !7, i64 32}
!15 = !{!"Base", !7, i64 0, !7, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !12, i64 28, !12, i64 30, !7, i64 32}
!16 = !{!17, !7, i64 24}
!17 = !{!"Object", !18, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !11, i64 140, !11, i64 144, !11, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !19, i64 312, !7, i64 360, !13, i64 368, !13, i64 384, !13, i64 400, !13, i64 416, !11, i64 432, !11, i64 436, !7, i64 440, !7, i64 448, !11, i64 456, !11, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !20, i64 616, !20, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !11, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !11, i64 968, !11, i64 972, !11, i64 976, !11, i64 980, !11, i64 984, !20, i64 988, !20, i64 992, !20, i64 996, !20, i64 1000, !20, i64 1004, !20, i64 1008, !20, i64 1012, !20, i64 1016, !20, i64 1020, !20, i64 1024, !20, i64 1028, !20, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !20, i64 1048, !20, i64 1052, !13, i64 1056, !13, i64 1072, !13, i64 1088, !13, i64 1104, !20, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !11, i64 1144, !11, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !13, i64 1176, !13, i64 1192, !13, i64 1208, !13, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !20, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !21, i64 1304, !21, i64 1312, !11, i64 1320, !11, i64 1324, !13, i64 1328, !13, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !13, i64 1400, !7, i64 1416}
!18 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !11, i64 100, !11, i64 104, !11, i64 108, !7, i64 112}
!19 = !{!"bAnimVizSettings", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44}
!20 = !{!"float", !8, i64 0}
!21 = !{!"long", !8, i64 0}
!22 = !{!17, !12, i64 136}
!23 = !{!17, !11, i64 432}
!24 = !{!17, !11, i64 436}
!25 = !{!17, !7, i64 288}
!26 = !{!27, !12, i64 126}
!27 = !{!"bPose", !13, i64 0, !7, i64 16, !12, i64 24, !12, i64 26, !11, i64 28, !11, i64 32, !20, i64 36, !8, i64 40, !8, i64 52, !13, i64 64, !11, i64 80, !11, i64 84, !7, i64 88, !7, i64 96, !19, i64 104, !8, i64 152}
!28 = !{!29, !7, i64 0}
!29 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !13, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !30, i64 152, !12, i64 184}
!30 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!31 = !{!29, !7, i64 8}
!32 = !{!29, !7, i64 24}
!33 = !{!29, !7, i64 48}
!34 = !{!29, !7, i64 32}
!35 = !{!29, !7, i64 72}
!36 = !{!29, !12, i64 184}
!37 = !{!29, !7, i64 88}
!38 = !{!39, !7, i64 112}
!39 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !13, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!40 = !{!19, !11, i64 32}
!41 = !{!19, !11, i64 36}
!42 = !{!43, !12, i64 8948}
!43 = !{!"UserDef", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !11, i64 8468, !12, i64 8472, !12, i64 8474, !12, i64 8476, !12, i64 8478, !12, i64 8480, !12, i64 8482, !11, i64 8484, !11, i64 8488, !11, i64 8492, !12, i64 8496, !12, i64 8498, !11, i64 8500, !11, i64 8504, !11, i64 8508, !11, i64 8512, !11, i64 8516, !11, i64 8520, !11, i64 8524, !12, i64 8528, !12, i64 8530, !12, i64 8532, !12, i64 8534, !13, i64 8536, !13, i64 8552, !13, i64 8568, !13, i64 8584, !13, i64 8600, !13, i64 8616, !13, i64 8632, !8, i64 8648, !12, i64 8712, !12, i64 8714, !12, i64 8716, !12, i64 8718, !12, i64 8720, !12, i64 8722, !12, i64 8724, !12, i64 8726, !8, i64 8728, !12, i64 8896, !12, i64 8898, !12, i64 8900, !12, i64 8902, !12, i64 8904, !12, i64 8906, !12, i64 8908, !12, i64 8910, !11, i64 8912, !11, i64 8916, !12, i64 8920, !12, i64 8922, !12, i64 8924, !12, i64 8926, !12, i64 8928, !12, i64 8930, !12, i64 8932, !12, i64 8934, !12, i64 8936, !12, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !12, i64 8944, !12, i64 8946, !12, i64 8948, !12, i64 8950, !12, i64 8952, !12, i64 8954, !20, i64 8956, !20, i64 8960, !11, i64 8964, !12, i64 8968, !12, i64 8970, !20, i64 8972, !12, i64 8976, !12, i64 8978, !12, i64 8980, !12, i64 8982, !44, i64 8984, !8, i64 9760, !8, i64 9772, !12, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !11, i64 10896, !11, i64 10900, !20, i64 10904, !20, i64 10908, !11, i64 10912, !12, i64 10916, !12, i64 10918, !12, i64 10920, !12, i64 10922, !12, i64 10924, !12, i64 10926, !45, i64 10928}
!44 = !{!"ColorBand", !12, i64 0, !12, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!45 = !{!"WalkNavigation", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20, !12, i64 24, !8, i64 26}
!46 = !{!7, !7, i64 0}
!47 = !{!48, !7, i64 32}
!48 = !{!"CollectionPointerLink", !7, i64 0, !7, i64 8, !49, i64 16}
!49 = !{!"PointerRNA", !50, i64 0, !7, i64 8, !7, i64 16}
!50 = !{!"", !7, i64 0}
!51 = !{!39, !7, i64 120}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!17, !7, i64 296}
!55 = distinct !{!55, !53}
!56 = !{!29, !7, i64 104}
!57 = !{!58, !7, i64 120}
!58 = !{!"bPoseChannel", !7, i64 0, !7, i64 8, !7, i64 16, !13, i64 24, !8, i64 40, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !8, i64 112, !8, i64 113, !8, i64 114, !7, i64 120, !7, i64 128, !7, i64 136, !13, i64 144, !13, i64 160, !7, i64 176, !7, i64 184, !7, i64 192, !8, i64 200, !8, i64 212, !8, i64 224, !8, i64 236, !8, i64 252, !20, i64 264, !12, i64 268, !12, i64 270, !8, i64 272, !8, i64 336, !8, i64 400, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !20, i64 524, !20, i64 528, !20, i64 532, !7, i64 536}
!59 = !{!20, !20, i64 0}
!60 = distinct !{!60, !53}
!61 = !{!58, !12, i64 268}
!62 = distinct !{!62, !53}
!63 = !{!11, !11, i64 0}
!64 = distinct !{!64, !53, !65, !66}
!65 = !{!"llvm.loop.isvectorized", i32 1}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = distinct !{!67, !53}
!68 = !{!69, !11, i64 320}
!69 = !{!"Bone", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !13, i64 32, !8, i64 48, !20, i64 112, !8, i64 116, !8, i64 128, !8, i64 140, !11, i64 176, !8, i64 180, !8, i64 192, !8, i64 204, !20, i64 268, !20, i64 272, !20, i64 276, !20, i64 280, !20, i64 284, !20, i64 288, !20, i64 292, !20, i64 296, !20, i64 300, !20, i64 304, !8, i64 308, !11, i64 320, !12, i64 324, !8, i64 326}
!70 = distinct !{!70, !53}
!71 = distinct !{!71, !53}
!72 = distinct !{!72, !53}
!73 = !{!74, !11, i64 136}
!74 = !{!"EditBone", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !20, i64 104, !8, i64 108, !8, i64 120, !11, i64 132, !11, i64 136, !20, i64 140, !20, i64 144, !20, i64 148, !20, i64 152, !20, i64 156, !20, i64 160, !20, i64 164, !20, i64 168, !20, i64 172, !20, i64 176, !12, i64 180}
!75 = distinct !{!75, !53}
!76 = distinct !{!76, !53}
!77 = !{!17, !7, i64 232}
!78 = !{!79, !7, i64 128}
!79 = !{!"bArmature", !18, i64 0, !7, i64 120, !13, i64 128, !13, i64 144, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !11, i64 192, !11, i64 196, !11, i64 200, !11, i64 204, !12, i64 208, !12, i64 210, !11, i64 212, !11, i64 216, !11, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !11, i64 248, !11, i64 252}
!80 = distinct !{!80, !53}
!81 = !{!58, !7, i64 176}
!82 = !{!69, !11, i64 176}
!83 = distinct !{!83, !53}
!84 = !{!27, !12, i64 134}
!85 = !{!79, !11, i64 216}
!86 = !{!79, !7, i64 168}
