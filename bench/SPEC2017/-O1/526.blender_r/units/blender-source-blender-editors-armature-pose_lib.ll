; ModuleID = 'blender/source/blender/editors/armature/pose_lib.c'
source_filename = "blender/source/blender/editors/armature/pose_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.StructRNA = type opaque
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.DLRBT_Tree = type { ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.ActKeyColumn = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i16, float, i16, i16 }
%struct.TimeMarker = type { ptr, ptr, i32, [64 x i8], i32, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
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
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.tPoseLib_PreviewData = type { %struct.ListBase, %struct.ListBase, ptr, ptr, %struct.PointerRNA, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, [64 x i8], [64 x i8], [200 x i8] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.tPoseLib_Backup = type { ptr, ptr, ptr, %struct.bPoseChannel, ptr }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.KeyframeEditData = type { %struct.ListBase, ptr, ptr, float, float, i32, i32, ptr, i32, i16, i16 }
%struct.LinkData = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [17 x i8] c"New Pose Library\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"POSELIB_OT_new\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Add New Pose Library to active Object\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Unlink Pose Library\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"POSELIB_OT_unlink\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Remove Pose Library from active Object\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Sanitize Pose Library Action\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"POSELIB_OT_action_sanitize\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"Make action suitable for use as a Pose Library\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"PoseLib Add Pose\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"POSELIB_OT_pose_add\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"Add the current Pose to the active Pose Library\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Frame\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Frame to store pose on\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Pose\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"Pose Name\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Name of newly added Pose\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"PoseLib Remove Pose\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"POSELIB_OT_pose_remove\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"Remove nth pose from the active Pose Library\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"pose\00", align 1
@DummyRNA_NULL_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.23 = private unnamed_addr constant [19 x i8] c"The pose to remove\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"PoseLib Rename Pose\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"POSELIB_OT_pose_rename\00", align 1
@.str.26 = private unnamed_addr constant [51 x i8] c"Rename specified pose from the active Pose Library\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"RenamedPose\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"New Pose Name\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"New name for pose\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"The pose to rename\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"PoseLib Browse Poses\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"POSELIB_OT_browse_interactive\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"Interactively browse poses in 3D-View\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"pose_index\00", align 1
@.str.35 = private unnamed_addr constant [82 x i8] c"Index of the pose to apply (-2 for no change to pose, -1 for poselib active pose)\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"Apply Pose Library Pose\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"POSELIB_OT_apply_pose\00", align 1
@.str.38 = private unnamed_addr constant [45 x i8] c"Apply specified Pose Library pose to the rig\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.39 = private unnamed_addr constant [8 x i8] c"PoseLib\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"No action to validate\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.41 = private unnamed_addr constant [13 x i8] c"ActionMarker\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"Add New\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"Add New (Current Frame)\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"Replace Existing...\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"WholeCharacter\00", align 1
@.str.46 = private unnamed_addr constant [35 x i8] c"Object does not have pose lib data\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"Invalid pose specified %d\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"Invalid index for pose\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"PoseLib Preview Data\00", align 1
@.str.50 = private unnamed_addr constant [44 x i8] c"Pose lib is only for armatures in pose mode\00", align 1
@.str.51 = private unnamed_addr constant [38 x i8] c"Object does not have a valid pose lib\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"Pose lib had no active pose\00", align 1
@.str.53 = private unnamed_addr constant [39 x i8] c"Pose lib has no poses to preview/apply\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"tPoseLib_Backup\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@RNA_PoseBone = external global %struct.StructRNA, align 1
@.str.55 = private unnamed_addr constant [91 x i8] c"PoseLib Previewing Pose: [Showing Original Pose] | Use Tab to start previewing poses again\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"No Matches\00", align 1
@.str.57 = private unnamed_addr constant [105 x i8] c"PoseLib Previewing Pose: Filter - [%s] | Current Pose - \22%s\22  | Use ScrollWheel or PageUp/Down to change\00", align 1
@.str.58 = private unnamed_addr constant [74 x i8] c"PoseLib Previewing Pose: \22%s\22  | Use ScrollWheel or PageUp/Down to change\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"PoseMatch\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @POSELIB_OT_new(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @poselib_new_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @poselib_new_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @CTX_wm_area(ptr noundef nonnull %0) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !47
  %10 = icmp eq i8 %9, 4
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call ptr @ED_object_context(ptr noundef nonnull %0) #10
  br label %16

13:                                               ; preds = %7, %4
  %14 = tail call ptr @CTX_data_active_object(ptr noundef nonnull %0) #10
  %15 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %14) #10
  br label %16

16:                                               ; preds = %2, %11, %13
  %17 = phi ptr [ %12, %11 ], [ %15, %13 ], [ null, %2 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 18
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !57
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @id_us_min(ptr noundef nonnull %25) #10
  br label %28

28:                                               ; preds = %27, %23
  %29 = load ptr, ptr @G, align 8, !tbaa !58
  %30 = tail call ptr @add_empty_action(ptr noundef %29, ptr noundef nonnull @.str.39) #10
  store ptr %30, ptr %24, align 8, !tbaa !57
  %31 = getelementptr inbounds %struct.bAction, ptr %30, i64 0, i32 7
  store i32 16975, ptr %31, align 8, !tbaa !60
  br label %32

32:                                               ; preds = %19, %28
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef null) #10
  br label %33

33:                                               ; preds = %16, %32
  %34 = phi i32 [ 4, %32 ], [ 2, %16 ]
  ret i32 %34
}

declare i32 @ED_operator_posemode(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @POSELIB_OT_unlink(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @poselib_unlink_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @has_poselib_pose_data_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @poselib_unlink_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @CTX_wm_area(ptr noundef nonnull %0) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !47
  %10 = icmp eq i8 %9, 4
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call ptr @ED_object_context(ptr noundef nonnull %0) #10
  br label %16

13:                                               ; preds = %7, %4
  %14 = tail call ptr @CTX_data_active_object(ptr noundef nonnull %0) #10
  %15 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %14) #10
  br label %16

16:                                               ; preds = %2, %11, %13
  %17 = phi ptr [ %12, %11 ], [ %15, %13 ], [ null, %2 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 17
  %21 = load ptr, ptr %20, align 8, !tbaa !57
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @id_us_min(ptr noundef nonnull %21) #10
  store ptr null, ptr %20, align 8, !tbaa !57
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef null) #10
  br label %24

24:                                               ; preds = %16, %19, %23
  %25 = phi i32 [ 4, %23 ], [ 2, %19 ], [ 2, %16 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @has_poselib_pose_data_poll(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @CTX_wm_area(ptr noundef nonnull %0) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %8 = load i8, ptr %7, align 8, !tbaa !47
  %9 = icmp eq i8 %8, 4
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call ptr @ED_object_context(ptr noundef nonnull %0) #10
  br label %15

12:                                               ; preds = %6, %3
  %13 = tail call ptr @CTX_data_active_object(ptr noundef nonnull %0) #10
  %14 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %13) #10
  br label %15

15:                                               ; preds = %1, %10, %12
  %16 = phi ptr [ %11, %10 ], [ %14, %12 ], [ null, %1 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 17
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = icmp ne ptr %20, null
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi i32 [ 0, %15 ], [ %22, %18 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @POSELIB_OT_action_sanitize(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @poselib_sanitize_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @has_poselib_pose_data_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @poselib_sanitize_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.DLRBT_Tree, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @CTX_wm_area(ptr noundef nonnull %0) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !47
  %11 = icmp eq i8 %10, 4
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call ptr @ED_object_context(ptr noundef nonnull %0) #10
  br label %17

14:                                               ; preds = %8, %5
  %15 = tail call ptr @CTX_data_active_object(ptr noundef nonnull %0) #10
  %16 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %15) #10
  br label %17

17:                                               ; preds = %2, %12, %14
  %18 = phi ptr [ %13, %12 ], [ %16, %14 ], [ null, %2 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 17
  %22 = load ptr, ptr %21, align 8, !tbaa !57
  br label %23

23:                                               ; preds = %17, %20
  %24 = phi ptr [ %22, %20 ], [ null, %17 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !62
  tail call void @BKE_report(ptr noundef %28, i32 noundef 16, ptr noundef nonnull @.str.40) #10
  br label %80

29:                                               ; preds = %23
  call void @BLI_dlrbTree_init(ptr noundef nonnull %3) #10
  call void @action_to_keylist(ptr noundef null, ptr noundef nonnull %24, ptr noundef nonnull %3, ptr noundef null) #10
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %3) #10
  %30 = load ptr, ptr %3, align 8, !tbaa !64
  %31 = icmp eq ptr %30, null
  br i1 %31, label %65, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.bAction, ptr %24, i64 0, i32 4
  br label %34

34:                                               ; preds = %32, %62
  %35 = phi ptr [ %30, %32 ], [ %63, %62 ]
  %36 = getelementptr inbounds %struct.ActKeyColumn, ptr %35, i64 0, i32 8
  br label %37

37:                                               ; preds = %41, %34
  %38 = phi ptr [ %33, %34 ], [ %39, %41 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !64
  %40 = icmp eq ptr %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.TimeMarker, ptr %39, i64 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !65
  %44 = sitofp i32 %43 to double
  %45 = load float, ptr %36, align 4, !tbaa !67
  %46 = fpext float %45 to double
  %47 = fsub double %44, %46
  %48 = call double @llvm.fabs.f64(double %47)
  %49 = fcmp ult double %48, 0x3E80000000000000
  br i1 %49, label %50, label %37, !llvm.loop !69

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.TimeMarker, ptr %39, i64 0, i32 4
  store i32 -1, ptr %51, align 4, !tbaa !72
  br label %62

52:                                               ; preds = %37
  %53 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %54 = call ptr %53(i64 noundef 96, ptr noundef nonnull @.str.41) #10
  %55 = getelementptr inbounds %struct.TimeMarker, ptr %54, i64 0, i32 3
  %56 = call ptr @BLI_strncpy(ptr noundef nonnull %55, ptr noundef nonnull @.str.16, i64 noundef 64) #10
  %57 = getelementptr inbounds %struct.ActKeyColumn, ptr %35, i64 0, i32 8
  %58 = load float, ptr %57, align 4, !tbaa !67
  %59 = fptosi float %58 to i32
  %60 = getelementptr inbounds %struct.TimeMarker, ptr %54, i64 0, i32 2
  store i32 %59, ptr %60, align 8, !tbaa !65
  %61 = getelementptr inbounds %struct.TimeMarker, ptr %54, i64 0, i32 4
  store i32 -1, ptr %61, align 4, !tbaa !72
  call void @BLI_addtail(ptr noundef nonnull %33, ptr noundef %54) #10
  br label %62

62:                                               ; preds = %50, %52
  %63 = load ptr, ptr %35, align 8, !tbaa !64
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %34, !llvm.loop !73

65:                                               ; preds = %62, %29
  %66 = getelementptr inbounds %struct.bAction, ptr %24, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !74
  %68 = icmp eq ptr %67, null
  br i1 %68, label %79, label %69

69:                                               ; preds = %65, %77
  %70 = phi ptr [ %71, %77 ], [ %67, %65 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !75
  %72 = getelementptr inbounds %struct.TimeMarker, ptr %70, i64 0, i32 4
  %73 = load i32, ptr %72, align 4, !tbaa !72
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  call void @BLI_freelinkN(ptr noundef nonnull %66, ptr noundef nonnull %70) #10
  br label %77

76:                                               ; preds = %69
  store i32 0, ptr %72, align 4, !tbaa !72
  br label %77

77:                                               ; preds = %75, %76
  %78 = icmp eq ptr %71, null
  br i1 %78, label %79, label %69, !llvm.loop !76

79:                                               ; preds = %77, %65
  call void @BLI_dlrbTree_free(ptr noundef nonnull %3) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #10
  br label %80

80:                                               ; preds = %79, %26
  %81 = phi i32 [ 2, %26 ], [ 4, %79 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret i32 %81
}

; Function Attrs: nounwind uwtable
define dso_local void @POSELIB_OT_pose_add(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @poselib_add_menu_invoke, ptr %4, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @poselib_add_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.12, i32 noundef 1, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 2147483647) #10
  %11 = load ptr, ptr %8, align 8, !tbaa !78
  %12 = tail call ptr @RNA_def_string(ptr noundef %11, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 64, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @poselib_add_menu_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #1 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %5 = icmp eq ptr %0, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @CTX_wm_area(ptr noundef nonnull %0) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 8
  %11 = load i8, ptr %10, align 8, !tbaa !47
  %12 = icmp eq i8 %11, 4
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call ptr @ED_object_context(ptr noundef nonnull %0) #10
  br label %18

15:                                               ; preds = %9, %6
  %16 = tail call ptr @CTX_data_active_object(ptr noundef nonnull %0) #10
  %17 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %16) #10
  br label %18

18:                                               ; preds = %3, %13, %15
  %19 = phi ptr [ %14, %13 ], [ %17, %15 ], [ null, %3 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %83, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 18
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  %24 = icmp eq ptr %23, null
  br i1 %24, label %83, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !79
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef %28, i32 noundef 0) #10
  %30 = tail call ptr @uiPupMenuLayout(ptr noundef %29) #10
  tail call void @uiLayoutSetOperatorContext(ptr noundef %30, i32 noundef 6) #10
  %31 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 17
  %32 = load ptr, ptr %31, align 8, !tbaa !57
  %33 = icmp eq ptr %32, null
  br i1 %33, label %71, label %34

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.bAction, ptr %32, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !74
  %37 = icmp eq ptr %36, null
  br i1 %37, label %71, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %35, align 8, !tbaa !64
  %40 = icmp eq ptr %39, null
  br label %41

41:                                               ; preds = %38, %60
  %42 = phi i32 [ %61, %60 ], [ 0, %38 ]
  %43 = phi i32 [ %62, %60 ], [ 0, %38 ]
  br i1 %40, label %60, label %44

44:                                               ; preds = %41, %44
  %45 = phi ptr [ %58, %44 ], [ %39, %41 ]
  %46 = phi i8 [ %57, %44 ], [ 0, %41 ]
  %47 = phi i32 [ %55, %44 ], [ %43, %41 ]
  %48 = phi i32 [ %53, %44 ], [ %42, %41 ]
  %49 = getelementptr inbounds %struct.TimeMarker, ptr %45, i64 0, i32 2
  %50 = load i32, ptr %49, align 8, !tbaa !65
  %51 = add nsw i32 %48, 1
  %52 = icmp eq i32 %50, %51
  %53 = select i1 %52, i32 %51, i32 %48
  %54 = icmp sgt i32 %50, %47
  %55 = tail call i32 @llvm.smax.i32(i32 %50, i32 %47)
  %56 = select i1 %54, i1 true, i1 %52
  %57 = select i1 %56, i8 1, i8 %46
  %58 = load ptr, ptr %45, align 8, !tbaa !64
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %44, !llvm.loop !80

60:                                               ; preds = %44, %41
  %61 = phi i32 [ %42, %41 ], [ %53, %44 ]
  %62 = phi i32 [ %43, %41 ], [ %55, %44 ]
  %63 = phi i8 [ 0, %41 ], [ %57, %44 ]
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %41, !llvm.loop !81

65:                                               ; preds = %60
  %66 = icmp slt i32 %61, %62
  br i1 %66, label %67, label %69

67:                                               ; preds = %65
  %68 = add nsw i32 %61, 1
  br label %71

69:                                               ; preds = %65
  %70 = add nuw nsw i32 %62, 1
  br label %71

71:                                               ; preds = %25, %34, %67, %69
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ], [ 1, %34 ], [ 1, %25 ]
  tail call void @uiItemIntO(ptr noundef %30, ptr noundef nonnull @.str.42, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12, i32 noundef %72) #10
  %73 = load ptr, ptr %31, align 8, !tbaa !57
  %74 = icmp eq ptr %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.bAction, ptr %73, i64 0, i32 4
  %77 = load ptr, ptr %76, align 8, !tbaa !74
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %81 = load i32, ptr %80, align 8, !tbaa !82
  tail call void @uiItemIntO(ptr noundef %30, ptr noundef nonnull @.str.43, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12, i32 noundef %81) #10
  tail call void @uiItemMenuF(ptr noundef %30, ptr noundef nonnull @.str.44, i32 noundef 0, ptr noundef nonnull @poselib_add_menu_invoke__replacemenu, ptr noundef null) #10
  br label %82

82:                                               ; preds = %79, %75, %71
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %29) #10
  br label %83

83:                                               ; preds = %18, %21, %82
  %84 = phi i32 [ 32, %82 ], [ 2, %21 ], [ 2, %18 ]
  ret i32 %84
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @poselib_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca [64 x i8], align 16
  %4 = icmp eq ptr %0, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @CTX_wm_area(ptr noundef nonnull %0) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !47
  %11 = icmp eq i8 %10, 4
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call ptr @ED_object_context(ptr noundef nonnull %0) #10
  br label %17

14:                                               ; preds = %8, %5
  %15 = tail call ptr @CTX_data_active_object(ptr noundef nonnull %0) #10
  %16 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %15) #10
  br label %17

17:                                               ; preds = %2, %12, %14
  %18 = phi ptr [ %13, %12 ], [ %16, %14 ], [ null, %2 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !51
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !57
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load ptr, ptr @G, align 8, !tbaa !58
  %30 = tail call ptr @add_empty_action(ptr noundef %29, ptr noundef nonnull @.str.39) #10
  store ptr %30, ptr %25, align 8, !tbaa !57
  %31 = getelementptr inbounds %struct.bAction, ptr %30, i64 0, i32 7
  store i32 16975, ptr %31, align 8, !tbaa !60
  br label %32

32:                                               ; preds = %17, %20, %24, %28
  %33 = phi ptr [ %30, %28 ], [ null, %20 ], [ null, %17 ], [ %26, %24 ]
  br i1 %19, label %38, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 18
  %36 = load ptr, ptr %35, align 8, !tbaa !51
  %37 = icmp eq ptr %36, null
  br label %38

38:                                               ; preds = %32, %34
  %39 = phi i1 [ %37, %34 ], [ true, %32 ]
  %40 = tail call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str.45) #10
  %41 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !100
  %43 = tail call i32 @RNA_int_get(ptr noundef %42, ptr noundef nonnull @.str.12) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  br i1 %39, label %70, label %44

44:                                               ; preds = %38
  %45 = load ptr, ptr %41, align 8, !tbaa !100
  call void @RNA_string_get(ptr noundef %45, ptr noundef nonnull @.str.15, ptr noundef nonnull %3) #10
  %46 = getelementptr inbounds %struct.bAction, ptr %33, i64 0, i32 4
  br label %47

47:                                               ; preds = %51, %44
  %48 = phi ptr [ %46, %44 ], [ %49, %51 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !64
  %50 = icmp eq ptr %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.TimeMarker, ptr %49, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !65
  %54 = icmp eq i32 %53, %43
  br i1 %54, label %55, label %47, !llvm.loop !101

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.TimeMarker, ptr %49, i64 0, i32 3
  %57 = call ptr @BLI_strncpy(ptr noundef nonnull %56, ptr noundef nonnull %3, i64 noundef 64) #10
  br label %64

58:                                               ; preds = %47
  %59 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %60 = call ptr %59(i64 noundef 96, ptr noundef nonnull @.str.41) #10
  %61 = getelementptr inbounds %struct.TimeMarker, ptr %60, i64 0, i32 3
  %62 = call ptr @BLI_strncpy(ptr noundef nonnull %61, ptr noundef nonnull %3, i64 noundef 64) #10
  %63 = getelementptr inbounds %struct.TimeMarker, ptr %60, i64 0, i32 2
  store i32 %43, ptr %63, align 8, !tbaa !65
  call void @BLI_addtail(ptr noundef nonnull %46, ptr noundef %60) #10
  br label %64

64:                                               ; preds = %55, %58
  %65 = phi ptr [ %60, %58 ], [ %49, %55 ]
  call void @BLI_uniquename(ptr noundef nonnull %46, ptr noundef %65, ptr noundef nonnull @.str.16, i8 noundef zeroext 46, i32 noundef 20, i32 noundef 64) #10
  %66 = sitofp i32 %43 to float
  %67 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef null, ptr noundef %33, ptr noundef %40, i16 noundef signext 0, float noundef %66) #10
  %68 = call i32 @BLI_countlist(ptr noundef nonnull %46) #10
  %69 = getelementptr inbounds %struct.bAction, ptr %33, i64 0, i32 6
  store i32 %68, ptr %69, align 4, !tbaa !102
  br label %70

70:                                               ; preds = %38, %64
  %71 = phi i32 [ 4, %64 ], [ 2, %38 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  ret i32 %71
}

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @POSELIB_OT_pose_remove(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.19, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.21, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @poselib_remove_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @has_poselib_pose_data_poll, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.22, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.23) #10
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @poselib_stored_pose_itemf) #10
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #10
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !103
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @poselib_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @CTX_wm_area(ptr noundef nonnull %0) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !47
  %10 = icmp eq i8 %9, 4
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call ptr @ED_object_context(ptr noundef nonnull %0) #10
  br label %16

13:                                               ; preds = %7, %4
  %14 = tail call ptr @CTX_data_active_object(ptr noundef nonnull %0) #10
  %15 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %14) #10
  br label %16

16:                                               ; preds = %2, %11, %13
  %17 = phi ptr [ %12, %11 ], [ %15, %13 ], [ null, %2 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 17
  %21 = load ptr, ptr %20, align 8, !tbaa !57
  br label %22

22:                                               ; preds = %16, %19
  %23 = phi ptr [ %21, %19 ], [ null, %16 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !62
  tail call void @BKE_report(ptr noundef %27, i32 noundef 32, ptr noundef nonnull @.str.46) #10
  br label %86

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !100
  %31 = tail call ptr @RNA_struct_find_property(ptr noundef %30, ptr noundef nonnull @.str.22) #10
  %32 = load ptr, ptr %29, align 8, !tbaa !100
  %33 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %32, ptr noundef %31) #10
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load ptr, ptr %29, align 8, !tbaa !100
  %37 = tail call i32 @RNA_property_enum_get(ptr noundef %36, ptr noundef %31) #10
  br label %42

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.bAction, ptr %23, i64 0, i32 6
  %40 = load i32, ptr %39, align 4, !tbaa !102
  %41 = add nsw i32 %40, -1
  br label %42

42:                                               ; preds = %38, %35
  %43 = phi i32 [ %37, %35 ], [ %41, %38 ]
  %44 = getelementptr inbounds %struct.bAction, ptr %23, i64 0, i32 4
  %45 = tail call ptr @BLI_findlink(ptr noundef nonnull %44, i32 noundef %43) #10
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %49 = load ptr, ptr %48, align 8, !tbaa !62
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %49, i32 noundef 32, ptr noundef nonnull @.str.47, i32 noundef %43) #10
  br label %86

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.bAction, ptr %23, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !64
  %53 = icmp eq ptr %52, null
  br i1 %53, label %84, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.TimeMarker, ptr %45, i64 0, i32 2
  br label %56

56:                                               ; preds = %54, %81
  %57 = phi ptr [ %52, %54 ], [ %82, %81 ]
  %58 = getelementptr inbounds %struct.FCurve, ptr %57, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !104
  %60 = icmp eq ptr %59, null
  br i1 %60, label %81, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.FCurve, ptr %57, i64 0, i32 7
  %63 = load i32, ptr %62, align 8, !tbaa !106
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %81, label %65

65:                                               ; preds = %61
  %66 = load i32, ptr %55, align 8, !tbaa !65
  %67 = sitofp i32 %66 to float
  br label %68

68:                                               ; preds = %65, %77
  %69 = phi i32 [ 0, %65 ], [ %78, %77 ]
  %70 = phi ptr [ %59, %65 ], [ %79, %77 ]
  %71 = getelementptr inbounds [3 x [3 x float]], ptr %70, i64 0, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !107
  %73 = fsub float %72, %67
  %74 = tail call float @llvm.fabs.f32(float %73)
  %75 = fcmp ult float %74, 0x3E80000000000000
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  tail call void @delete_fcurve_key(ptr noundef nonnull %57, i32 noundef %69, i8 noundef zeroext 1) #10
  br label %81

77:                                               ; preds = %68
  %78 = add nuw i32 %69, 1
  %79 = getelementptr inbounds %struct.BezTriple, ptr %70, i64 1
  %80 = icmp eq i32 %78, %63
  br i1 %80, label %81, label %68, !llvm.loop !108

81:                                               ; preds = %77, %61, %76, %56
  %82 = load ptr, ptr %57, align 8, !tbaa !64
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %56, !llvm.loop !109

84:                                               ; preds = %81, %50
  tail call void @BLI_freelinkN(ptr noundef nonnull %44, ptr noundef nonnull %45) #10
  %85 = getelementptr inbounds %struct.bAction, ptr %23, i64 0, i32 6
  store i32 0, ptr %85, align 4, !tbaa !102
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #10
  br label %86

86:                                               ; preds = %84, %47, %25
  %87 = phi i32 [ 2, %25 ], [ 2, %47 ], [ 4, %84 ]
  ret i32 %87
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @poselib_stored_pose_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #1 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.EnumPropertyItem, align 8
  %7 = alloca i32, align 4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @CTX_wm_area(ptr noundef nonnull %0) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ScrArea, ptr %10, i64 0, i32 8
  %14 = load i8, ptr %13, align 8, !tbaa !47
  %15 = icmp eq i8 %14, 4
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call ptr @ED_object_context(ptr noundef nonnull %0) #10
  br label %21

18:                                               ; preds = %12, %9
  %19 = tail call ptr @CTX_data_active_object(ptr noundef nonnull %0) #10
  %20 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %19) #10
  br label %21

21:                                               ; preds = %4, %16, %18
  %22 = phi ptr [ %17, %16 ], [ %20, %18 ], [ null, %4 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !57
  br label %27

27:                                               ; preds = %21, %24
  %28 = phi ptr [ %26, %24 ], [ null, %21 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store ptr null, ptr %5, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !tbaa !110
  br i1 %8, label %48, label %29

29:                                               ; preds = %27
  %30 = icmp eq ptr %28, null
  br i1 %30, label %46, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.bAction, ptr %28, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !64
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 3
  %37 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 1
  %38 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 2
  br label %39

39:                                               ; preds = %35, %39
  %40 = phi ptr [ %33, %35 ], [ %44, %39 ]
  %41 = phi i32 [ 0, %35 ], [ %43, %39 ]
  %42 = getelementptr inbounds %struct.TimeMarker, ptr %40, i64 0, i32 3
  store ptr %42, ptr %36, align 8, !tbaa !111
  store ptr %42, ptr %37, align 8, !tbaa !113
  store i32 172, ptr %38, align 8, !tbaa !114
  store i32 %41, ptr %6, align 8, !tbaa !115
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6) #10
  %43 = add nuw nsw i32 %41, 1
  %44 = load ptr, ptr %40, align 8, !tbaa !64
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %39, !llvm.loop !116

46:                                               ; preds = %39, %31, %29
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %7) #10
  store i8 1, ptr %3, align 1, !tbaa !117
  %47 = load ptr, ptr %5, align 8, !tbaa !64
  br label %48

48:                                               ; preds = %27, %46
  %49 = phi ptr [ %47, %46 ], [ @DummyRNA_NULL_items, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret ptr %49
}

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @POSELIB_OT_pose_rename(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @poselib_rename_invoke, ptr %4, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @poselib_rename_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @has_poselib_pose_data_poll, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.27, i32 noundef 64, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #10
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !103
  %12 = load ptr, ptr %8, align 8, !tbaa !78
  %13 = tail call ptr @RNA_def_enum(ptr noundef %12, ptr noundef nonnull @.str.22, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.30) #10
  tail call void @RNA_def_enum_funcs(ptr noundef %13, ptr noundef nonnull @poselib_stored_pose_itemf) #10
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 536870912) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @poselib_rename_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @CTX_wm_area(ptr noundef nonnull %0) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 8
  %10 = load i8, ptr %9, align 8, !tbaa !47
  %11 = icmp eq i8 %10, 4
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call ptr @ED_object_context(ptr noundef nonnull %0) #10
  br label %17

14:                                               ; preds = %8, %5
  %15 = tail call ptr @CTX_data_active_object(ptr noundef nonnull %0) #10
  %16 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %15) #10
  br label %17

17:                                               ; preds = %3, %12, %14
  %18 = phi ptr [ %13, %12 ], [ %16, %14 ], [ null, %3 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 17
  %22 = load ptr, ptr %21, align 8, !tbaa !57
  br label %23

23:                                               ; preds = %17, %20
  %24 = phi ptr [ %22, %20 ], [ null, %17 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !62
  tail call void @BKE_report(ptr noundef %28, i32 noundef 32, ptr noundef nonnull @.str.46) #10
  br label %47

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.bAction, ptr %24, i64 0, i32 4
  %31 = getelementptr inbounds %struct.bAction, ptr %24, i64 0, i32 6
  %32 = load i32, ptr %31, align 4, !tbaa !102
  %33 = add nsw i32 %32, -1
  %34 = tail call ptr @BLI_findlink(ptr noundef nonnull %30, i32 noundef %33) #10
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !62
  tail call void @BKE_report(ptr noundef %38, i32 noundef 32, ptr noundef nonnull @.str.48) #10
  br label %47

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !100
  %42 = load i32, ptr %31, align 4, !tbaa !102
  %43 = add nsw i32 %42, -1
  tail call void @RNA_enum_set(ptr noundef %41, ptr noundef nonnull @.str.22, i32 noundef %43) #10
  %44 = load ptr, ptr %40, align 8, !tbaa !100
  %45 = getelementptr inbounds %struct.TimeMarker, ptr %34, i64 0, i32 3
  tail call void @RNA_string_set(ptr noundef %44, ptr noundef nonnull @.str.15, ptr noundef nonnull %45) #10
  %46 = tail call i32 @WM_operator_props_popup_confirm(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %47

47:                                               ; preds = %39, %36, %26
  %48 = phi i32 [ 2, %26 ], [ 2, %36 ], [ %46, %39 ]
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @poselib_rename_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #10
  %5 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %4) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi ptr [ %9, %7 ], [ null, %2 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !62
  tail call void @BKE_report(ptr noundef %15, i32 noundef 32, ptr noundef nonnull @.str.46) #10
  br label %30

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.bAction, ptr %11, i64 0, i32 4
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !100
  %20 = tail call i32 @RNA_enum_get(ptr noundef %19, ptr noundef nonnull @.str.22) #10
  %21 = tail call ptr @BLI_findlink(ptr noundef nonnull %17, i32 noundef %20) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !62
  tail call void @BKE_report(ptr noundef %25, i32 noundef 32, ptr noundef nonnull @.str.48) #10
  br label %30

26:                                               ; preds = %16
  %27 = load ptr, ptr %18, align 8, !tbaa !100
  call void @RNA_string_get(ptr noundef %27, ptr noundef nonnull @.str.15, ptr noundef nonnull %3) #10
  %28 = getelementptr inbounds %struct.TimeMarker, ptr %21, i64 0, i32 3
  %29 = call ptr @BLI_strncpy(ptr noundef nonnull %28, ptr noundef nonnull %3, i64 noundef 64) #10
  call void @BLI_uniquename(ptr noundef nonnull %17, ptr noundef nonnull %21, ptr noundef nonnull @.str.16, i8 noundef zeroext 46, i32 noundef 20, i32 noundef 64) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #10
  br label %30

30:                                               ; preds = %26, %23, %13
  %31 = phi i32 [ 2, %13 ], [ 2, %23 ], [ 4, %26 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define dso_local void @POSELIB_OT_browse_interactive(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.31, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.32, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @poselib_preview_invoke, ptr %4, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @poselib_preview_modal, ptr %5, align 8, !tbaa !118
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @poselib_preview_cancel, ptr %6, align 8, !tbaa !119
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @poselib_preview_exec, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @has_poselib_pose_data_poll, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %9, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.34, i32 noundef -1, i32 noundef -2, i32 noundef 2147483647, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 2147483647) #10
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !103
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @poselib_preview_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  tail call fastcc void @poselib_preview_init_data(ptr noundef %0, ptr noundef %1)
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 12
  %7 = load i16, ptr %6, align 8, !tbaa !121
  %8 = icmp eq i16 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call fastcc void @poselib_preview_cleanup(ptr noundef %0, ptr noundef %1)
  br label %12

10:                                               ; preds = %3
  tail call fastcc void @poselib_preview_apply(ptr noundef %0, ptr noundef %1)
  %11 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #10
  br label %12

12:                                               ; preds = %10, %9
  %13 = phi i32 [ 2, %9 ], [ 1, %10 ]
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @poselib_preview_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 12
  %7 = load i16, ptr %6, align 8, !tbaa !121
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  tail call fastcc void @poselib_preview_cleanup(ptr noundef %0, ptr noundef %1)
  %10 = icmp eq i16 %7, -1
  %11 = icmp eq i16 %7, 2
  %12 = or i1 %10, %11
  %13 = select i1 %12, i32 2, i32 4
  br label %125

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %16 = load i16, ptr %15, align 2, !tbaa !125
  %17 = icmp ult i16 %16, 2
  br i1 %17, label %18, label %119

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 17
  %20 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 16
  %21 = tail call ptr @BLI_strncpy(ptr noundef nonnull %19, ptr noundef nonnull %20, i64 noundef 64) #10
  %22 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 14
  %23 = load i16, ptr %22, align 4, !tbaa !128
  %24 = and i16 %23, 2
  %25 = icmp eq i16 %24, 0
  %26 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %27 = load i16, ptr %26, align 8, !tbaa !129
  br i1 %25, label %35, label %28

28:                                               ; preds = %18
  switch i16 %27, label %119 [
    i16 218, label %29
    i16 3, label %29
    i16 1, label %30
    i16 220, label %30
    i16 163, label %30
    i16 221, label %30
    i16 150, label %31
    i16 151, label %31
    i16 152, label %31
    i16 153, label %31
    i16 154, label %31
    i16 155, label %31
    i16 156, label %31
    i16 157, label %31
    i16 158, label %31
    i16 159, label %31
    i16 164, label %31
    i16 162, label %31
    i16 2, label %31
    i16 4, label %31
    i16 219, label %32
  ]

29:                                               ; preds = %28, %28
  store i16 2, ptr %6, align 8, !tbaa !121
  br label %119

30:                                               ; preds = %28, %28, %28, %28
  store i16 1, ptr %6, align 8, !tbaa !121
  br label %119

31:                                               ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28
  br label %119

32:                                               ; preds = %28
  %33 = and i16 %23, -3
  store i16 %33, ptr %22, align 4, !tbaa !128
  %34 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 13
  store i16 1, ptr %34, align 2, !tbaa !130
  br label %119

35:                                               ; preds = %18
  switch i16 %27, label %116 [
    i16 218, label %36
    i16 3, label %36
    i16 1, label %37
    i16 220, label %37
    i16 163, label %37
    i16 221, label %37
    i16 219, label %38
    i16 168, label %41
    i16 10, label %41
    i16 169, label %43
    i16 11, label %43
    i16 138, label %45
    i16 140, label %47
    i16 139, label %49
    i16 137, label %64
    i16 167, label %77
    i16 170, label %91
    i16 2, label %119
    i16 4, label %119
    i16 150, label %110
    i16 151, label %110
    i16 152, label %110
    i16 153, label %110
    i16 154, label %110
    i16 155, label %110
    i16 156, label %110
    i16 157, label %110
    i16 158, label %110
    i16 159, label %110
    i16 164, label %110
    i16 162, label %110
  ]

36:                                               ; preds = %35, %35
  store i16 2, ptr %6, align 8, !tbaa !121
  br label %119

37:                                               ; preds = %35, %35, %35, %35
  store i16 1, ptr %6, align 8, !tbaa !121
  br label %119

38:                                               ; preds = %35
  %39 = or disjoint i16 %23, 2
  store i16 %39, ptr %22, align 4, !tbaa !128
  %40 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 13
  store i16 1, ptr %40, align 2, !tbaa !130
  br label %119

41:                                               ; preds = %35, %35
  tail call fastcc void @poselib_preview_get_next(ptr noundef %5, i32 noundef -1)
  %42 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 13
  store i16 1, ptr %42, align 2, !tbaa !130
  br label %119

43:                                               ; preds = %35, %35
  tail call fastcc void @poselib_preview_get_next(ptr noundef %5, i32 noundef 1)
  %44 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 13
  store i16 1, ptr %44, align 2, !tbaa !130
  br label %119

45:                                               ; preds = %35
  tail call fastcc void @poselib_preview_get_next(ptr noundef %5, i32 noundef -5)
  %46 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 13
  store i16 1, ptr %46, align 2, !tbaa !130
  br label %119

47:                                               ; preds = %35
  tail call fastcc void @poselib_preview_get_next(ptr noundef %5, i32 noundef 5)
  %48 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 13
  store i16 1, ptr %48, align 2, !tbaa !130
  br label %119

49:                                               ; preds = %35
  %50 = load i8, ptr %20, align 8, !tbaa !117
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 15
  %54 = load i16, ptr %53, align 2, !tbaa !131
  %55 = sext i16 %54 to i64
  %56 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #11
  %57 = icmp ugt i64 %56, %55
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = add i16 %54, 1
  store i16 %59, ptr %53, align 2, !tbaa !131
  br label %60

60:                                               ; preds = %58, %52
  %61 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 13
  store i16 2, ptr %61, align 2, !tbaa !130
  br label %119

62:                                               ; preds = %49
  tail call fastcc void @poselib_preview_get_next(ptr noundef %5, i32 noundef 1)
  %63 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 13
  store i16 1, ptr %63, align 2, !tbaa !130
  br label %119

64:                                               ; preds = %35
  %65 = load i8, ptr %20, align 8, !tbaa !117
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 15
  %69 = load i16, ptr %68, align 2, !tbaa !131
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = add i16 %69, -1
  store i16 %72, ptr %68, align 2, !tbaa !131
  br label %73

73:                                               ; preds = %71, %67
  %74 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 13
  store i16 2, ptr %74, align 2, !tbaa !130
  br label %119

75:                                               ; preds = %64
  tail call fastcc void @poselib_preview_get_next(ptr noundef %5, i32 noundef -1)
  %76 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 13
  store i16 1, ptr %76, align 2, !tbaa !130
  br label %119

77:                                               ; preds = %35
  %78 = load i8, ptr %20, align 8, !tbaa !117
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 15
  store i16 0, ptr %81, align 2, !tbaa !131
  %82 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 13
  store i16 2, ptr %82, align 2, !tbaa !130
  br label %119

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 8
  %85 = load ptr, ptr %84, align 8, !tbaa !132
  %86 = getelementptr inbounds %struct.bAction, ptr %85, i64 0, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !74
  %88 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 9
  store ptr %87, ptr %88, align 8, !tbaa !133
  %89 = getelementptr inbounds %struct.bAction, ptr %85, i64 0, i32 6
  store i32 1, ptr %89, align 4, !tbaa !102
  %90 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 13
  store i16 1, ptr %90, align 2, !tbaa !130
  br label %119

91:                                               ; preds = %35
  %92 = load i8, ptr %20, align 8, !tbaa !117
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %91
  %95 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #11
  %96 = trunc i64 %95 to i16
  %97 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 15
  store i16 %96, ptr %97, align 2, !tbaa !131
  %98 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 13
  store i16 2, ptr %98, align 2, !tbaa !130
  br label %119

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 8
  %101 = load ptr, ptr %100, align 8, !tbaa !132
  %102 = getelementptr inbounds %struct.bAction, ptr %101, i64 0, i32 4, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !134
  %104 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 9
  store ptr %103, ptr %104, align 8, !tbaa !133
  %105 = getelementptr inbounds %struct.bAction, ptr %101, i64 0, i32 4
  %106 = tail call i32 @BLI_countlist(ptr noundef nonnull %105) #10
  %107 = load ptr, ptr %100, align 8, !tbaa !132
  %108 = getelementptr inbounds %struct.bAction, ptr %107, i64 0, i32 6
  store i32 %106, ptr %108, align 4, !tbaa !102
  %109 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 13
  store i16 1, ptr %109, align 2, !tbaa !130
  br label %119

110:                                              ; preds = %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35
  %111 = load i8, ptr %20, align 8, !tbaa !117
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 8
  %115 = load i8, ptr %114, align 2, !tbaa !135
  tail call fastcc void @poselib_preview_handle_search(ptr noundef %5, i16 noundef zeroext %27, i8 noundef zeroext %115)
  br label %119

116:                                              ; preds = %35
  %117 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 8
  %118 = load i8, ptr %117, align 2, !tbaa !135
  tail call fastcc void @poselib_preview_handle_search(ptr noundef %5, i16 noundef zeroext %27, i8 noundef zeroext %118)
  br label %119

119:                                              ; preds = %14, %28, %29, %30, %31, %32, %35, %35, %36, %37, %38, %41, %43, %45, %47, %60, %62, %73, %75, %80, %83, %94, %99, %110, %113, %116
  %120 = phi i32 [ 1, %14 ], [ 1, %28 ], [ 1, %32 ], [ 8, %31 ], [ 1, %30 ], [ 1, %29 ], [ 1, %116 ], [ 1, %113 ], [ 1, %94 ], [ 1, %99 ], [ 1, %80 ], [ 1, %83 ], [ 1, %73 ], [ 1, %75 ], [ 1, %60 ], [ 1, %62 ], [ 1, %47 ], [ 1, %45 ], [ 1, %43 ], [ 1, %41 ], [ 1, %38 ], [ 1, %37 ], [ 1, %36 ], [ 8, %35 ], [ 8, %35 ], [ 8, %110 ]
  %121 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 13
  %122 = load i16, ptr %121, align 2, !tbaa !130
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  tail call fastcc void @poselib_preview_apply(ptr noundef %0, ptr noundef %1)
  br label %125

125:                                              ; preds = %119, %124, %9
  %126 = phi i32 [ %13, %9 ], [ %120, %124 ], [ %120, %119 ]
  ret i32 %126
}

; Function Attrs: nounwind uwtable
define internal void @poselib_preview_cancel(ptr noundef %0, ptr nocapture noundef %1) #1 {
  tail call fastcc void @poselib_preview_cleanup(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @poselib_preview_exec(ptr noundef %0, ptr nocapture noundef %1) #1 {
  tail call fastcc void @poselib_preview_init_data(ptr noundef %0, ptr noundef %1)
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 12
  %6 = load i16, ptr %5, align 8, !tbaa !121
  %7 = icmp eq i16 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call fastcc void @poselib_preview_cleanup(ptr noundef %0, ptr noundef %1)
  br label %17

9:                                                ; preds = %2
  store i16 3, ptr %5, align 8, !tbaa !121
  tail call fastcc void @poselib_preview_apply(ptr noundef %0, ptr noundef %1)
  store i16 1, ptr %5, align 8, !tbaa !121
  %10 = load ptr, ptr %3, align 8, !tbaa !120
  %11 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %10, i64 0, i32 12
  %12 = load i16, ptr %11, align 8, !tbaa !121
  tail call fastcc void @poselib_preview_cleanup(ptr noundef %0, ptr noundef %1)
  %13 = icmp eq i16 %12, -1
  %14 = icmp eq i16 %12, 2
  %15 = or i1 %13, %14
  %16 = select i1 %15, i32 2, i32 4
  br label %17

17:                                               ; preds = %9, %8
  %18 = phi i32 [ 2, %8 ], [ %16, %9 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local void @POSELIB_OT_apply_pose(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.38, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @poselib_preview_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @has_poselib_pose_data_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !78
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.34, i32 noundef -1, i32 noundef -2, i32 noundef 2147483647, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 2147483647) #10
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !103
  ret void
}

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare ptr @ED_object_context(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_object_pose_armature_get(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare void @id_us_min(ptr noundef) local_unnamed_addr #2

declare ptr @add_empty_action(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_dlrbTree_init(ptr noundef) local_unnamed_addr #2

declare void @action_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_dlrbTree_linkedlist_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_dlrbTree_free(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #2

declare void @uiLayoutSetOperatorContext(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemIntO(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemMenuF(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @poselib_add_menu_invoke__replacemenu(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %6)
  %7 = tail call ptr @CTX_wm_area(ptr noundef nonnull %0) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ScrArea, ptr %7, i64 0, i32 8
  %11 = load i8, ptr %10, align 8, !tbaa !47
  %12 = icmp eq i8 %11, 4
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call ptr @ED_object_context(ptr noundef nonnull %0) #10
  br label %18

15:                                               ; preds = %9, %3
  %16 = tail call ptr @CTX_data_active_object(ptr noundef nonnull %0) #10
  %17 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %16) #10
  br label %18

18:                                               ; preds = %13, %15
  %19 = phi ptr [ %14, %13 ], [ %17, %15 ]
  %20 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 17
  %21 = load ptr, ptr %20, align 8, !tbaa !57
  %22 = tail call ptr @WM_operatortype_find(ptr noundef nonnull @.str.10, i8 noundef zeroext 1) #10
  tail call void @uiLayoutSetOperatorContext(ptr noundef %1, i32 noundef 6) #10
  %23 = getelementptr inbounds %struct.bAction, ptr %21, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !64
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %18, %26
  %27 = phi ptr [ %31, %26 ], [ %24, %18 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %28 = getelementptr inbounds %struct.TimeMarker, ptr %27, i64 0, i32 3
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %1, ptr noundef %22, ptr noundef nonnull %28, i32 noundef 172, ptr noundef null, i32 noundef 6, i32 noundef 1) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !136
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  %29 = getelementptr inbounds %struct.TimeMarker, ptr %27, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !65
  call void @RNA_int_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.12, i32 noundef %30) #10
  call void @RNA_string_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.15, ptr noundef nonnull %28) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  %31 = load ptr, ptr %27, align 8, !tbaa !64
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %26, !llvm.loop !137

33:                                               ; preds = %26, %18
  ret void
}

declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @uiItemFullO_ptr(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ANIM_builtin_keyingset_get_named(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ANIM_apply_keyingset(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, float noundef) local_unnamed_addr #2

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare void @delete_fcurve_key(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @WM_operator_props_popup_confirm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @poselib_preview_init_data(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @CTX_wm_area(ptr noundef nonnull %0) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !47
  %10 = icmp eq i8 %9, 4
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call ptr @ED_object_context(ptr noundef nonnull %0) #10
  br label %16

13:                                               ; preds = %7, %4
  %14 = tail call ptr @CTX_data_active_object(ptr noundef nonnull %0) #10
  %15 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %14) #10
  br label %16

16:                                               ; preds = %2, %11, %13
  %17 = phi ptr [ %12, %11 ], [ %15, %13 ], [ null, %2 ]
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !100
  %20 = tail call i32 @RNA_int_get(ptr noundef %19, ptr noundef nonnull @.str.34) #10
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %22 = tail call ptr %21(i64 noundef 456, ptr noundef nonnull @.str.49) #10
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %22, ptr %23, align 8, !tbaa !120
  %24 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %22, i64 0, i32 5
  store ptr %17, ptr %24, align 8, !tbaa !138
  %25 = icmp eq ptr %17, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 19
  %28 = load ptr, ptr %27, align 8, !tbaa !139
  br label %29

29:                                               ; preds = %16, %26
  %30 = phi ptr [ %28, %26 ], [ null, %16 ]
  %31 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %22, i64 0, i32 6
  store ptr %30, ptr %31, align 8, !tbaa !140
  br i1 %25, label %35, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 18
  %34 = load ptr, ptr %33, align 8, !tbaa !51
  br label %35

35:                                               ; preds = %29, %32
  %36 = phi ptr [ %34, %32 ], [ null, %29 ]
  %37 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %22, i64 0, i32 7
  store ptr %36, ptr %37, align 8, !tbaa !141
  br i1 %25, label %41, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 17
  %40 = load ptr, ptr %39, align 8, !tbaa !57
  br label %41

41:                                               ; preds = %35, %38
  %42 = phi ptr [ %40, %38 ], [ null, %35 ]
  %43 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %22, i64 0, i32 8
  store ptr %42, ptr %43, align 8, !tbaa !132
  %44 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %45 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %22, i64 0, i32 2
  store ptr %44, ptr %45, align 8, !tbaa !142
  %46 = tail call ptr @CTX_wm_area(ptr noundef %0) #10
  %47 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %22, i64 0, i32 3
  store ptr %46, ptr %47, align 8, !tbaa !143
  switch i32 %20, label %66 [
    i32 -1, label %48
    i32 -2, label %62
  ]

48:                                               ; preds = %41
  %49 = load ptr, ptr %43, align 8, !tbaa !132
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.bAction, ptr %49, i64 0, i32 6
  %53 = load i32, ptr %52, align 4, !tbaa !102
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.bAction, ptr %49, i64 0, i32 4
  %57 = add nsw i32 %53, -1
  %58 = tail call ptr @BLI_findlink(ptr noundef nonnull %56, i32 noundef %57) #10
  br label %59

59:                                               ; preds = %48, %51, %55
  %60 = phi ptr [ %58, %55 ], [ null, %51 ], [ null, %48 ]
  %61 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %22, i64 0, i32 9
  store ptr %60, ptr %61, align 8, !tbaa !133
  br label %75

62:                                               ; preds = %41
  %63 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %22, i64 0, i32 14
  %64 = load i16, ptr %63, align 4, !tbaa !128
  %65 = or i16 %64, 2
  store i16 %65, ptr %63, align 4, !tbaa !128
  br label %75

66:                                               ; preds = %41
  %67 = load ptr, ptr %43, align 8, !tbaa !132
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.bAction, ptr %67, i64 0, i32 4
  %71 = tail call ptr @BLI_findlink(ptr noundef nonnull %70, i32 noundef %20) #10
  br label %72

72:                                               ; preds = %66, %69
  %73 = phi ptr [ %71, %69 ], [ null, %66 ]
  %74 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %22, i64 0, i32 9
  store ptr %73, ptr %74, align 8, !tbaa !133
  br label %75

75:                                               ; preds = %62, %72, %59
  %76 = load ptr, ptr %24, align 8, !tbaa !138
  %77 = icmp eq ptr %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %37, align 8, !tbaa !141
  %80 = icmp eq ptr %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %31, align 8, !tbaa !140
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %81, %78, %75
  %85 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %86 = load ptr, ptr %85, align 8, !tbaa !62
  tail call void @BKE_report(ptr noundef %86, i32 noundef 32, ptr noundef nonnull @.str.50) #10
  %87 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %22, i64 0, i32 12
  store i16 -1, ptr %87, align 8, !tbaa !121
  br label %171

88:                                               ; preds = %81
  %89 = load ptr, ptr %43, align 8, !tbaa !132
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %93 = load ptr, ptr %92, align 8, !tbaa !62
  tail call void @BKE_report(ptr noundef %93, i32 noundef 32, ptr noundef nonnull @.str.51) #10
  %94 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %22, i64 0, i32 12
  store i16 -1, ptr %94, align 8, !tbaa !121
  br label %171

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %22, i64 0, i32 9
  %97 = load ptr, ptr %96, align 8, !tbaa !133
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %112

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.bAction, ptr %89, i64 0, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !74
  %102 = icmp eq ptr %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  store ptr %101, ptr %96, align 8, !tbaa !133
  %104 = icmp sgt i32 %20, -2
  br i1 %104, label %105, label %112

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %107 = load ptr, ptr %106, align 8, !tbaa !62
  tail call void @BKE_report(ptr noundef %107, i32 noundef 16, ptr noundef nonnull @.str.52) #10
  br label %112

108:                                              ; preds = %99
  %109 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %110 = load ptr, ptr %109, align 8, !tbaa !62
  tail call void @BKE_report(ptr noundef %110, i32 noundef 32, ptr noundef nonnull @.str.53) #10
  %111 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %22, i64 0, i32 12
  store i16 -1, ptr %111, align 8, !tbaa !121
  br label %171

112:                                              ; preds = %105, %103, %95
  %113 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %22, i64 0, i32 4
  tail call void @RNA_id_pointer_create(ptr noundef %17, ptr noundef nonnull %113) #10
  %114 = load ptr, ptr %43, align 8, !tbaa !132
  %115 = getelementptr inbounds %struct.bAction, ptr %114, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !64
  %117 = icmp eq ptr %116, null
  br i1 %117, label %156, label %118

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %22, i64 0, i32 10
  %120 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %22, i64 0, i32 11
  br label %121

121:                                              ; preds = %118, %153
  %122 = phi ptr [ %116, %118 ], [ %154, %153 ]
  %123 = load ptr, ptr %37, align 8, !tbaa !141
  %124 = getelementptr inbounds %struct.bActionGroup, ptr %122, i64 0, i32 5
  %125 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %123, ptr noundef nonnull %124) #10
  %126 = icmp eq ptr %125, null
  br i1 %126, label %153, label %127

127:                                              ; preds = %121
  %128 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %129 = tail call ptr %128(i64 noundef 576, ptr noundef nonnull @.str.54) #10
  %130 = getelementptr inbounds %struct.tPoseLib_Backup, ptr %129, i64 0, i32 2
  store ptr %125, ptr %130, align 8, !tbaa !144
  %131 = getelementptr inbounds %struct.tPoseLib_Backup, ptr %129, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %131, ptr noundef nonnull align 8 dereferenceable(544) %125, i64 544, i1 false)
  %132 = getelementptr inbounds %struct.bPoseChannel, ptr %125, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !147
  %134 = icmp eq ptr %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %127
  %136 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %133) #10
  %137 = getelementptr inbounds %struct.tPoseLib_Backup, ptr %129, i64 0, i32 4
  store ptr %136, ptr %137, align 8, !tbaa !148
  br label %138

138:                                              ; preds = %135, %127
  tail call void @BLI_addtail(ptr noundef %22, ptr noundef %129) #10
  %139 = getelementptr inbounds %struct.bPoseChannel, ptr %125, i64 0, i32 12
  %140 = load ptr, ptr %139, align 8, !tbaa !149
  %141 = icmp eq ptr %140, null
  br i1 %141, label %150, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.Bone, ptr %140, i64 0, i32 10
  %144 = load i32, ptr %143, align 8, !tbaa !150
  %145 = and i32 %144, 1
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %142
  %148 = load i32, ptr %119, align 8, !tbaa !152
  %149 = add nsw i32 %148, 1
  store i32 %149, ptr %119, align 8, !tbaa !152
  br label %150

150:                                              ; preds = %147, %142, %138
  %151 = load i32, ptr %120, align 4, !tbaa !153
  %152 = add nsw i32 %151, 1
  store i32 %152, ptr %120, align 4, !tbaa !153
  br label %153

153:                                              ; preds = %150, %121
  %154 = load ptr, ptr %122, align 8, !tbaa !64
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %121, !llvm.loop !154

156:                                              ; preds = %153, %112
  %157 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %22, i64 0, i32 12
  store i16 0, ptr %157, align 8, !tbaa !121
  %158 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %22, i64 0, i32 13
  store i16 1, ptr %158, align 2, !tbaa !130
  %159 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %22, i64 0, i32 14
  %160 = load i16, ptr %159, align 4, !tbaa !128
  %161 = or i16 %160, 1
  store i16 %161, ptr %159, align 4, !tbaa !128
  %162 = load ptr, ptr %37, align 8, !tbaa !141
  %163 = getelementptr inbounds %struct.bPose, ptr %162, i64 0, i32 2
  %164 = load i16, ptr %163, align 8, !tbaa !155
  %165 = and i16 %164, -7
  %166 = or disjoint i16 %165, 2
  store i16 %166, ptr %163, align 8, !tbaa !155
  %167 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %22, i64 0, i32 17
  store i8 0, ptr %167, align 8, !tbaa !117
  %168 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %22, i64 0, i32 16
  store i8 0, ptr %168, align 8, !tbaa !117
  %169 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %22, i64 0, i32 18
  store i8 0, ptr %169, align 8, !tbaa !117
  %170 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %22, i64 0, i32 15
  store i16 0, ptr %170, align 2, !tbaa !131
  br label %171

171:                                              ; preds = %156, %108, %91, %84
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @poselib_preview_cleanup(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.ListBase, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !142
  %8 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !138
  %10 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !141
  %12 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !140
  %14 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !132
  %16 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !133
  %18 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !143
  tail call void @ED_area_headerprint(ptr noundef %19, ptr noundef null) #10
  %20 = getelementptr inbounds %struct.bPose, ptr %11, i64 0, i32 2
  %21 = load i16, ptr %20, align 8, !tbaa !155
  %22 = or i16 %21, 4
  store i16 %22, ptr %20, align 8, !tbaa !155
  %23 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 12
  %24 = load i16, ptr %23, align 8, !tbaa !121
  switch i16 %24, label %124 [
    i16 2, label %25
    i16 1, label %50
  ]

25:                                               ; preds = %2
  %26 = load ptr, ptr %5, align 8, !tbaa !64
  %27 = icmp eq ptr %26, null
  br i1 %27, label %43, label %28

28:                                               ; preds = %25, %40
  %29 = phi ptr [ %41, %40 ], [ %26, %25 ]
  %30 = getelementptr inbounds %struct.tPoseLib_Backup, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !144
  %32 = getelementptr inbounds %struct.tPoseLib_Backup, ptr %29, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %31, ptr noundef nonnull align 8 dereferenceable(544) %32, i64 544, i1 false)
  %33 = getelementptr inbounds %struct.tPoseLib_Backup, ptr %29, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !148
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = load ptr, ptr %30, align 8, !tbaa !144
  %38 = getelementptr inbounds %struct.bPoseChannel, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !147
  tail call void @IDP_SyncGroupValues(ptr noundef %39, ptr noundef nonnull %34) #10
  br label %40

40:                                               ; preds = %36, %28
  %41 = load ptr, ptr %29, align 8, !tbaa !64
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %28, !llvm.loop !157

43:                                               ; preds = %40, %25
  %44 = getelementptr inbounds %struct.bArmature, ptr %13, i64 0, i32 8
  %45 = load i32, ptr %44, align 8, !tbaa !158
  %46 = and i32 %45, 64
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  tail call void @DAG_id_tag_update(ptr noundef %9, i16 noundef signext 2) #10
  br label %124

49:                                               ; preds = %43
  tail call void @BKE_pose_where_is(ptr noundef %7, ptr noundef %9) #10
  br label %124

50:                                               ; preds = %2
  %51 = load ptr, ptr %10, align 8, !tbaa !141
  %52 = load ptr, ptr %14, align 8, !tbaa !132
  %53 = tail call ptr @ANIM_get_keyingset_for_autokeying(ptr noundef %7, ptr noundef nonnull @.str.45) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %54 = load ptr, ptr %8, align 8, !tbaa !138
  %55 = tail call i32 @autokeyframe_cfra_can_key(ptr noundef %7, ptr noundef %54) #10
  %56 = trunc i32 %55 to i16
  %57 = getelementptr inbounds %struct.bAction, ptr %52, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !64
  %59 = icmp eq ptr %58, null
  br i1 %59, label %101, label %60

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 10
  %62 = icmp eq i16 %56, 0
  br label %63

63:                                               ; preds = %60, %98
  %64 = phi ptr [ %58, %60 ], [ %99, %98 ]
  %65 = getelementptr inbounds %struct.bActionGroup, ptr %64, i64 0, i32 5
  %66 = call ptr @BKE_pose_channel_find_name(ptr noundef %51, ptr noundef nonnull %65) #10
  %67 = icmp eq ptr %66, null
  br i1 %67, label %98, label %68

68:                                               ; preds = %63
  %69 = load i32, ptr %61, align 8, !tbaa !152
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.bPoseChannel, ptr %66, i64 0, i32 12
  %73 = load ptr, ptr %72, align 8, !tbaa !149
  %74 = icmp eq ptr %73, null
  br i1 %74, label %98, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.Bone, ptr %73, i64 0, i32 10
  %77 = load i32, ptr %76, align 8, !tbaa !150
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %98, label %80

80:                                               ; preds = %75, %68
  br i1 %62, label %90, label %81

81:                                               ; preds = %80
  %82 = load ptr, ptr %8, align 8, !tbaa !138
  call void @ANIM_relative_keyingset_add_source(ptr noundef nonnull %3, ptr noundef %82, ptr noundef nonnull @RNA_PoseBone, ptr noundef nonnull %66) #10
  %83 = getelementptr inbounds %struct.bPoseChannel, ptr %66, i64 0, i32 12
  %84 = load ptr, ptr %83, align 8, !tbaa !149
  %85 = icmp eq ptr %84, null
  br i1 %85, label %98, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.Bone, ptr %84, i64 0, i32 10
  %88 = load i32, ptr %87, align 8, !tbaa !150
  %89 = and i32 %88, -8193
  store i32 %89, ptr %87, align 8, !tbaa !150
  br label %98

90:                                               ; preds = %80
  %91 = getelementptr inbounds %struct.bPoseChannel, ptr %66, i64 0, i32 12
  %92 = load ptr, ptr %91, align 8, !tbaa !149
  %93 = icmp eq ptr %92, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.Bone, ptr %92, i64 0, i32 10
  %96 = load i32, ptr %95, align 8, !tbaa !150
  %97 = or i32 %96, 8192
  store i32 %97, ptr %95, align 8, !tbaa !150
  br label %98

98:                                               ; preds = %94, %90, %86, %81, %75, %71, %63
  %99 = load ptr, ptr %64, align 8, !tbaa !64
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %63, !llvm.loop !160

101:                                              ; preds = %98, %50
  %102 = icmp eq i16 %56, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  %105 = load i32, ptr %104, align 8, !tbaa !82
  %106 = sitofp i32 %105 to float
  %107 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, ptr noundef %53, i16 noundef signext 0, float noundef %106) #10
  call void @BLI_freelistN(ptr noundef nonnull %3) #10
  br label %108

108:                                              ; preds = %101, %103
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  %109 = getelementptr inbounds %struct.bAction, ptr %15, i64 0, i32 4
  %110 = call i32 @BLI_findindex(ptr noundef nonnull %109, ptr noundef %17) #10
  %111 = add nsw i32 %110, 1
  %112 = getelementptr inbounds %struct.bAction, ptr %15, i64 0, i32 6
  store i32 %111, ptr %112, align 4, !tbaa !102
  call void @DAG_id_tag_update(ptr noundef %9, i16 noundef signext 2) #10
  %113 = icmp eq ptr %7, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 20
  %116 = load ptr, ptr %115, align 8, !tbaa !161
  %117 = getelementptr inbounds %struct.ToolSettings, ptr %116, i64 0, i32 21
  %118 = load i16, ptr %117, align 8, !tbaa !162
  %119 = icmp eq i16 %118, 3
  br i1 %119, label %124, label %123

120:                                              ; preds = %108
  %121 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !169
  %122 = icmp eq i16 %121, 3
  br i1 %122, label %124, label %123

123:                                              ; preds = %120, %114
  call void @BKE_pose_where_is(ptr noundef %7, ptr noundef %9) #10
  br label %124

124:                                              ; preds = %2, %114, %120, %123, %48, %49
  %125 = load ptr, ptr %8, align 8, !tbaa !138
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %125) #10
  %126 = load ptr, ptr %5, align 8, !tbaa !173
  %127 = icmp eq ptr %126, null
  br i1 %127, label %139, label %128

128:                                              ; preds = %124, %137
  %129 = phi ptr [ %130, %137 ], [ %126, %124 ]
  %130 = load ptr, ptr %129, align 8, !tbaa !174
  %131 = getelementptr inbounds %struct.tPoseLib_Backup, ptr %129, i64 0, i32 4
  %132 = load ptr, ptr %131, align 8, !tbaa !148
  %133 = icmp eq ptr %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %128
  call void @IDP_FreeProperty(ptr noundef nonnull %132) #10
  %135 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  %136 = load ptr, ptr %131, align 8, !tbaa !148
  call void %135(ptr noundef %136) #10
  br label %137

137:                                              ; preds = %134, %128
  call void @BLI_freelinkN(ptr noundef nonnull %5, ptr noundef nonnull %129) #10
  %138 = icmp eq ptr %130, null
  br i1 %138, label %139, label %128, !llvm.loop !175

139:                                              ; preds = %137, %124
  %140 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 1
  call void @BLI_freelistN(ptr noundef nonnull %140) #10
  %141 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  call void %141(ptr noundef nonnull %5) #10
  store ptr null, ptr %4, align 8, !tbaa !120
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @poselib_preview_apply(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = alloca %struct.KeyframeEditData, align 8
  %4 = alloca [65 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !120
  %8 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %7, i64 0, i32 13
  %9 = load i16, ptr %8, align 2, !tbaa !130
  %10 = icmp eq i16 %9, 1
  br i1 %10, label %11, label %119

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %7, i64 0, i32 14
  %13 = load i16, ptr %12, align 4, !tbaa !128
  %14 = and i16 %13, 1
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %11
  %17 = load ptr, ptr %7, align 8, !tbaa !64
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16, %31
  %20 = phi ptr [ %32, %31 ], [ %17, %16 ]
  %21 = getelementptr inbounds %struct.tPoseLib_Backup, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !144
  %23 = getelementptr inbounds %struct.tPoseLib_Backup, ptr %20, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %22, ptr noundef nonnull align 8 dereferenceable(544) %23, i64 544, i1 false)
  %24 = getelementptr inbounds %struct.tPoseLib_Backup, ptr %20, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !148
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = load ptr, ptr %21, align 8, !tbaa !144
  %29 = getelementptr inbounds %struct.bPoseChannel, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !147
  tail call void @IDP_SyncGroupValues(ptr noundef %30, ptr noundef nonnull %25) #10
  br label %31

31:                                               ; preds = %27, %19
  %32 = load ptr, ptr %20, align 8, !tbaa !64
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %19, !llvm.loop !157

34:                                               ; preds = %11
  %35 = and i16 %13, -2
  store i16 %35, ptr %12, align 4, !tbaa !128
  br label %36

36:                                               ; preds = %31, %16, %34
  %37 = load i16, ptr %12, align 4, !tbaa !128
  %38 = and i16 %37, 2
  %39 = icmp eq i16 %38, 0
  %40 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !100
  br i1 %39, label %42, label %103

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %7, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !132
  %45 = getelementptr inbounds %struct.bAction, ptr %44, i64 0, i32 4
  %46 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %7, i64 0, i32 9
  %47 = load ptr, ptr %46, align 8, !tbaa !133
  %48 = tail call i32 @BLI_findindex(ptr noundef nonnull %45, ptr noundef %47) #10
  tail call void @RNA_int_set(ptr noundef %41, ptr noundef nonnull @.str.34, i32 noundef %48) #10
  %49 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %7, i64 0, i32 4
  %50 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %7, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !140
  %52 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %7, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !141
  %54 = load ptr, ptr %43, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %55 = load ptr, ptr %46, align 8, !tbaa !133
  %56 = icmp eq ptr %55, null
  br i1 %56, label %102, label %57

57:                                               ; preds = %42
  %58 = getelementptr inbounds %struct.TimeMarker, ptr %55, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !65
  %60 = tail call ptr @ANIM_editkeyframes_ok(i16 noundef signext 2) #10
  %61 = sitofp i32 %59 to float
  %62 = fadd float %61, -5.000000e-01
  %63 = getelementptr inbounds %struct.KeyframeEditData, ptr %3, i64 0, i32 3
  store float %62, ptr %63, align 8, !tbaa !176
  %64 = fadd float %61, 5.000000e-01
  %65 = getelementptr inbounds %struct.KeyframeEditData, ptr %3, i64 0, i32 4
  store float %64, ptr %65, align 4, !tbaa !178
  %66 = getelementptr inbounds %struct.bAction, ptr %54, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !64
  %68 = icmp eq ptr %67, null
  br i1 %68, label %102, label %69

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %7, i64 0, i32 10
  %71 = getelementptr inbounds %struct.bArmature, ptr %51, i64 0, i32 15
  br label %72

72:                                               ; preds = %69, %99
  %73 = phi ptr [ %67, %69 ], [ %100, %99 ]
  %74 = call signext i16 @ANIM_animchanneldata_keyframes_loop(ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %73, i32 noundef 9, ptr noundef null, ptr noundef %60, ptr noundef null) #10
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %99, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.bActionGroup, ptr %73, i64 0, i32 5
  %78 = call ptr @BKE_pose_channel_find_name(ptr noundef %53, ptr noundef nonnull %77) #10
  %79 = icmp eq ptr %78, null
  br i1 %79, label %99, label %80

80:                                               ; preds = %76
  %81 = load i32, ptr %70, align 8, !tbaa !152
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %98, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.bPoseChannel, ptr %78, i64 0, i32 12
  %85 = load ptr, ptr %84, align 8, !tbaa !149
  %86 = icmp eq ptr %85, null
  br i1 %86, label %99, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.Bone, ptr %85, i64 0, i32 10
  %89 = load i32, ptr %88, align 8, !tbaa !150
  %90 = and i32 %89, 65
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.Bone, ptr %85, i64 0, i32 25
  %94 = load i32, ptr %93, align 8, !tbaa !179
  %95 = load i32, ptr %71, align 8, !tbaa !180
  %96 = and i32 %95, %94
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %92, %80
  call void @animsys_evaluate_action_group(ptr noundef nonnull %49, ptr noundef %54, ptr noundef nonnull %73, ptr noundef null, float noundef %61) #10
  br label %99

99:                                               ; preds = %98, %92, %87, %83, %76, %72
  %100 = load ptr, ptr %73, align 8, !tbaa !64
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %72, !llvm.loop !181

102:                                              ; preds = %99, %57, %42
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  br label %104

103:                                              ; preds = %36
  tail call void @RNA_int_set(ptr noundef %41, ptr noundef nonnull @.str.34, i32 noundef -2) #10
  br label %104

104:                                              ; preds = %103, %102
  %105 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %7, i64 0, i32 6
  %106 = load ptr, ptr %105, align 8, !tbaa !140
  %107 = getelementptr inbounds %struct.bArmature, ptr %106, i64 0, i32 8
  %108 = load i32, ptr %107, align 8, !tbaa !158
  %109 = and i32 %108, 64
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %7, i64 0, i32 5
  %113 = load ptr, ptr %112, align 8, !tbaa !138
  call void @DAG_id_tag_update(ptr noundef %113, i16 noundef signext 2) #10
  br label %119

114:                                              ; preds = %104
  %115 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %7, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !142
  %117 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %7, i64 0, i32 5
  %118 = load ptr, ptr %117, align 8, !tbaa !138
  call void @BKE_pose_where_is(ptr noundef %116, ptr noundef %118) #10
  br label %119

119:                                              ; preds = %111, %114, %2
  %120 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %7, i64 0, i32 12
  %121 = load i16, ptr %120, align 8, !tbaa !121
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %123, label %170

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %7, i64 0, i32 14
  %125 = load i16, ptr %124, align 4, !tbaa !128
  %126 = and i16 %125, 2
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %7, i64 0, i32 18
  %130 = call ptr @BLI_strncpy(ptr noundef nonnull %129, ptr noundef nonnull @.str.55, i64 noundef 200) #10
  %131 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %7, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !143
  call void @ED_area_headerprint(ptr noundef %132, ptr noundef nonnull %129) #10
  br label %170

133:                                              ; preds = %123
  %134 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %7, i64 0, i32 16
  %135 = load i8, ptr %134, align 8, !tbaa !117
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %162, label %137

137:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  %138 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %7, i64 0, i32 15
  %139 = load i16, ptr %138, align 2, !tbaa !131
  %140 = icmp ult i16 %139, 64
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  %142 = zext nneg i16 %139 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %4, ptr nonnull align 8 %134, i64 %142, i1 false)
  %143 = getelementptr inbounds [65 x i8], ptr %4, i64 0, i64 %142
  store i8 124, ptr %143, align 1, !tbaa !117
  %144 = add nuw nsw i16 %139, 1
  %145 = zext nneg i16 %144 to i64
  %146 = getelementptr inbounds [65 x i8], ptr %4, i64 0, i64 %145
  %147 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %7, i64 0, i32 16, i64 %142
  %148 = sub nuw nsw i64 64, %142
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %146, ptr nonnull align 1 %147, i64 %148, i1 false)
  br label %151

149:                                              ; preds = %137
  %150 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %134, i64 noundef 65) #10
  br label %151

151:                                              ; preds = %149, %141
  %152 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %7, i64 0, i32 9
  %153 = load ptr, ptr %152, align 8, !tbaa !133
  %154 = icmp eq ptr %153, null
  %155 = getelementptr inbounds %struct.TimeMarker, ptr %153, i64 0, i32 3
  %156 = select i1 %154, ptr @.str.56, ptr %155
  %157 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %156, i64 noundef 64) #10
  %158 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %7, i64 0, i32 18
  %159 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %158, i64 noundef 200, ptr noundef nonnull @.str.57, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %160 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %7, i64 0, i32 3
  %161 = load ptr, ptr %160, align 8, !tbaa !143
  call void @ED_area_headerprint(ptr noundef %161, ptr noundef nonnull %158) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %4) #10
  br label %170

162:                                              ; preds = %133
  %163 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %7, i64 0, i32 18
  %164 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %7, i64 0, i32 9
  %165 = load ptr, ptr %164, align 8, !tbaa !133
  %166 = getelementptr inbounds %struct.TimeMarker, ptr %165, i64 0, i32 3
  %167 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %163, i64 noundef 200, ptr noundef nonnull @.str.58, ptr noundef nonnull %166) #10
  %168 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %7, i64 0, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !143
  call void @ED_area_headerprint(ptr noundef %169, ptr noundef nonnull %163) #10
  br label %170

170:                                              ; preds = %128, %162, %151, %119
  %171 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %7, i64 0, i32 5
  %172 = load ptr, ptr %171, align 8, !tbaa !138
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %172) #10
  store i16 0, ptr %8, align 2, !tbaa !130
  ret void
}

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #2

declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @BKE_pose_where_is(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @IDP_SyncGroupValues(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ANIM_get_keyingset_for_autokeying(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @autokeyframe_cfra_can_key(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ANIM_relative_keyingset_add_source(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @ANIM_editkeyframes_ok(i16 noundef signext) local_unnamed_addr #2

declare signext i16 @ANIM_animchanneldata_keyframes_loop(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @animsys_evaluate_action_group(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @poselib_preview_get_next(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %136, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 16
  %6 = load i8, ptr %5, align 8, !tbaa !117
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %82, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 17
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %9) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 1
  tail call void @BLI_freelistN(ptr noundef nonnull %13) #10
  %14 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !132
  %16 = getelementptr inbounds %struct.bAction, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !64
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %12, %28
  %20 = phi ptr [ %29, %28 ], [ %17, %12 ]
  %21 = getelementptr inbounds %struct.TimeMarker, ptr %20, i64 0, i32 3
  %22 = tail call ptr @BLI_strcasestr(ptr noundef nonnull %21, ptr noundef nonnull %5) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !64
  %26 = tail call ptr %25(i64 noundef 24, ptr noundef nonnull @.str.59) #10
  %27 = getelementptr inbounds %struct.LinkData, ptr %26, i64 0, i32 2
  store ptr %20, ptr %27, align 8, !tbaa !182
  tail call void @BLI_addtail(ptr noundef nonnull %13, ptr noundef %26) #10
  br label %28

28:                                               ; preds = %19, %24
  %29 = load ptr, ptr %20, align 8, !tbaa !64
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %19, !llvm.loop !184

31:                                               ; preds = %28, %12
  %32 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 9
  store ptr null, ptr %32, align 8, !tbaa !133
  br label %33

33:                                               ; preds = %31, %8
  %34 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !185
  %36 = icmp eq ptr %35, null
  %37 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 9
  br i1 %36, label %38, label %39

38:                                               ; preds = %33
  store ptr null, ptr %37, align 8, !tbaa !133
  br label %136

39:                                               ; preds = %33, %43
  %40 = phi ptr [ %41, %43 ], [ %34, %33 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !64
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.LinkData, ptr %41, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !182
  %46 = load ptr, ptr %37, align 8, !tbaa !133
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %48, label %39, !llvm.loop !186

48:                                               ; preds = %39, %43
  %49 = phi ptr [ %41, %43 ], [ %35, %39 ]
  %50 = icmp sgt i32 %1, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 1, i32 1
  br label %61

53:                                               ; preds = %48, %53
  %54 = phi ptr [ %58, %53 ], [ %49, %48 ]
  %55 = phi i32 [ %59, %53 ], [ %1, %48 ]
  %56 = load ptr, ptr %54, align 8, !tbaa !187
  %57 = icmp eq ptr %56, null
  %58 = select i1 %57, ptr %35, ptr %56
  %59 = add nsw i32 %55, -1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %75, label %53, !llvm.loop !188

61:                                               ; preds = %51, %69
  %62 = phi ptr [ %49, %51 ], [ %70, %69 ]
  %63 = phi i32 [ %1, %51 ], [ %71, %69 ]
  %64 = getelementptr inbounds %struct.LinkData, ptr %62, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !189
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load ptr, ptr %52, align 8, !tbaa !190
  br label %69

69:                                               ; preds = %61, %67
  %70 = phi ptr [ %68, %67 ], [ %65, %61 ]
  %71 = add nsw i32 %63, 1
  %72 = icmp ne ptr %70, null
  %73 = icmp ne i32 %71, 0
  %74 = select i1 %72, i1 %73, i1 false
  br i1 %74, label %61, label %75, !llvm.loop !191

75:                                               ; preds = %69, %53
  %76 = phi ptr [ %58, %53 ], [ %70, %69 ]
  %77 = icmp eq ptr %76, null
  br i1 %77, label %136, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.LinkData, ptr %76, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !182
  %81 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 9
  store ptr %80, ptr %81, align 8, !tbaa !133
  br label %136

82:                                               ; preds = %4
  %83 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 9
  %84 = load ptr, ptr %83, align 8, !tbaa !133
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 8
  %88 = load ptr, ptr %87, align 8, !tbaa !132
  %89 = getelementptr inbounds %struct.bAction, ptr %88, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !74
  store ptr %90, ptr %83, align 8, !tbaa !133
  br label %91

91:                                               ; preds = %86, %82
  %92 = icmp sgt i32 %1, 0
  %93 = load ptr, ptr %83, align 8, !tbaa !133
  %94 = icmp eq ptr %93, null
  br i1 %92, label %95, label %113

95:                                               ; preds = %91
  br i1 %94, label %132, label %96

96:                                               ; preds = %95
  %97 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 8
  br label %98

98:                                               ; preds = %96, %107
  %99 = phi ptr [ %93, %96 ], [ %108, %107 ]
  %100 = phi i32 [ %1, %96 ], [ %109, %107 ]
  %101 = load ptr, ptr %99, align 8, !tbaa !75
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load ptr, ptr %97, align 8, !tbaa !132
  %105 = getelementptr inbounds %struct.bAction, ptr %104, i64 0, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !74
  br label %107

107:                                              ; preds = %98, %103
  %108 = phi ptr [ %106, %103 ], [ %101, %98 ]
  %109 = add nsw i32 %100, -1
  %110 = icmp ne ptr %108, null
  %111 = icmp ne i32 %109, 0
  %112 = select i1 %110, i1 %111, i1 false
  br i1 %112, label %98, label %132, !llvm.loop !192

113:                                              ; preds = %91
  br i1 %94, label %132, label %114

114:                                              ; preds = %113
  %115 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 8
  br label %116

116:                                              ; preds = %114, %126
  %117 = phi ptr [ %93, %114 ], [ %127, %126 ]
  %118 = phi i32 [ %1, %114 ], [ %128, %126 ]
  %119 = getelementptr inbounds %struct.TimeMarker, ptr %117, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !193
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load ptr, ptr %115, align 8, !tbaa !132
  %124 = getelementptr inbounds %struct.bAction, ptr %123, i64 0, i32 4, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !134
  br label %126

126:                                              ; preds = %116, %122
  %127 = phi ptr [ %125, %122 ], [ %120, %116 ]
  %128 = add nsw i32 %118, 1
  %129 = icmp ne ptr %127, null
  %130 = icmp ne i32 %128, 0
  %131 = select i1 %129, i1 %130, i1 false
  br i1 %131, label %116, label %132, !llvm.loop !194

132:                                              ; preds = %126, %107, %113, %95
  %133 = phi ptr [ %93, %95 ], [ %93, %113 ], [ %108, %107 ], [ %127, %126 ]
  %134 = icmp eq ptr %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %132
  store ptr %133, ptr %83, align 8, !tbaa !133
  br label %136

136:                                              ; preds = %132, %135, %38, %78, %75, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @poselib_preview_handle_search(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #1 {
  switch i16 %1, label %64 [
    i16 223, label %4
    i16 224, label %31
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 16
  %6 = load i8, ptr %5, align 8, !tbaa !117
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %64, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 15
  %10 = load i16, ptr %9, align 2, !tbaa !131
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %64, label %12

12:                                               ; preds = %8
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #11
  %14 = trunc i64 %13 to i32
  %15 = shl i32 %14, 16
  %16 = ashr exact i32 %15, 16
  %17 = sext i16 %10 to i32
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %96, label %19

19:                                               ; preds = %12, %19
  %20 = phi i32 [ %29, %19 ], [ %17, %12 ]
  %21 = phi i16 [ %28, %19 ], [ %10, %12 ]
  %22 = sext i16 %21 to i64
  %23 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 16, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !117
  %25 = add nsw i32 %20, -1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 16, i64 %26
  store i8 %24, ptr %27, align 1, !tbaa !117
  %28 = add i16 %21, 1
  %29 = sext i16 %28 to i32
  %30 = icmp slt i32 %16, %29
  br i1 %30, label %96, label %19, !llvm.loop !195

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 16
  %33 = load i8, ptr %32, align 8, !tbaa !117
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %64, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 16, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !117
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %64, label %39

39:                                               ; preds = %35
  %40 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %32) #11
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 15
  %43 = load i16, ptr %42, align 2, !tbaa !131
  %44 = sext i16 %43 to i32
  %45 = shl i32 %41, 16
  %46 = ashr exact i32 %45, 16
  %47 = icmp sgt i32 %46, %44
  br i1 %47, label %48, label %61

48:                                               ; preds = %39
  %49 = sext i16 %43 to i64
  %50 = shl i64 %40, 48
  %51 = ashr exact i64 %50, 48
  br label %52

52:                                               ; preds = %48, %52
  %53 = phi i64 [ %49, %48 ], [ %54, %52 ]
  %54 = add nsw i64 %53, 1
  %55 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 16, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !117
  %57 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 16, i64 %53
  store i8 %56, ptr %57, align 1, !tbaa !117
  %58 = icmp eq i64 %54, %51
  br i1 %58, label %59, label %52, !llvm.loop !196

59:                                               ; preds = %52
  tail call fastcc void @poselib_preview_get_next(ptr noundef %0, i32 noundef 1)
  %60 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 13
  store i16 1, ptr %60, align 2, !tbaa !130
  br label %61

61:                                               ; preds = %39, %59
  %62 = icmp eq i8 %2, 0
  %63 = or i1 %62, %47
  br i1 %63, label %102, label %66

64:                                               ; preds = %31, %35, %4, %8, %3
  %65 = icmp eq i8 %2, 0
  br i1 %65, label %102, label %66

66:                                               ; preds = %61, %64
  %67 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 15
  %68 = load i16, ptr %67, align 2, !tbaa !131
  %69 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 16
  %70 = load i8, ptr %69, align 8, !tbaa !117
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %69) #11
  %74 = trunc i64 %73 to i16
  br label %75

75:                                               ; preds = %66, %72
  %76 = phi i16 [ %74, %72 ], [ 0, %66 ]
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %75
  %79 = icmp sgt i16 %76, %68
  br i1 %79, label %80, label %93

80:                                               ; preds = %78
  %81 = sext i16 %76 to i64
  %82 = sext i16 %68 to i64
  br label %83

83:                                               ; preds = %80, %83
  %84 = phi i64 [ %81, %80 ], [ %89, %83 ]
  %85 = add nsw i64 %84, -1
  %86 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 16, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !117
  %88 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 16, i64 %84
  store i8 %87, ptr %88, align 1, !tbaa !117
  %89 = add nsw i64 %84, -1
  %90 = icmp sgt i64 %89, %82
  br i1 %90, label %83, label %93, !llvm.loop !197

91:                                               ; preds = %75
  %92 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 16, i64 1
  store i8 0, ptr %92, align 1, !tbaa !117
  br label %93

93:                                               ; preds = %83, %78, %91
  %94 = sext i16 %68 to i64
  %95 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 16, i64 %94
  store i8 %2, ptr %95, align 1, !tbaa !117
  br label %96

96:                                               ; preds = %19, %12, %93
  %97 = phi ptr [ %67, %93 ], [ %9, %12 ], [ %9, %19 ]
  %98 = phi i16 [ 1, %93 ], [ -1, %12 ], [ -1, %19 ]
  %99 = load i16, ptr %97, align 2, !tbaa !131
  %100 = add i16 %99, %98
  store i16 %100, ptr %97, align 2, !tbaa !131
  tail call fastcc void @poselib_preview_get_next(ptr noundef %0, i32 noundef 1)
  %101 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 13
  store i16 1, ptr %101, align 2, !tbaa !130
  br label %102

102:                                              ; preds = %96, %61, %64
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

declare ptr @BLI_strcasestr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!47 = !{!48, !37, i64 72}
!48 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !49, i64 56, !37, i64 72, !37, i64 73, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !41, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !39, i64 96, !39, i64 112, !39, i64 128, !39, i64 144}
!49 = !{!"rcti", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!50 = !{!"int", !37, i64 0}
!51 = !{!52, !36, i64 288}
!52 = !{!"Object", !53, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !50, i64 140, !50, i64 144, !50, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !54, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !50, i64 432, !50, i64 436, !36, i64 440, !36, i64 448, !50, i64 456, !50, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !55, i64 616, !55, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !50, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !50, i64 968, !50, i64 972, !50, i64 976, !50, i64 980, !50, i64 984, !55, i64 988, !55, i64 992, !55, i64 996, !55, i64 1000, !55, i64 1004, !55, i64 1008, !55, i64 1012, !55, i64 1016, !55, i64 1020, !55, i64 1024, !55, i64 1028, !55, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !55, i64 1048, !55, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !55, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !50, i64 1144, !50, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !55, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !56, i64 1304, !56, i64 1312, !50, i64 1320, !50, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!53 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !50, i64 100, !50, i64 104, !50, i64 108, !36, i64 112}
!54 = !{!"bAnimVizSettings", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !50, i64 32, !50, i64 36, !50, i64 40, !50, i64 44}
!55 = !{!"float", !37, i64 0}
!56 = !{!"long", !37, i64 0}
!57 = !{!52, !36, i64 280}
!58 = !{!59, !36, i64 0}
!59 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !50, i64 2096, !50, i64 2100, !37, i64 2104, !50, i64 2108, !50, i64 2112, !37, i64 2116}
!60 = !{!61, !50, i64 192}
!61 = !{!"bAction", !53, i64 0, !39, i64 120, !39, i64 136, !39, i64 152, !39, i64 168, !50, i64 184, !50, i64 188, !50, i64 192, !50, i64 196}
!62 = !{!63, !36, i64 120}
!63 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!64 = !{!36, !36, i64 0}
!65 = !{!66, !50, i64 16}
!66 = !{!"TimeMarker", !36, i64 0, !36, i64 8, !50, i64 16, !37, i64 20, !50, i64 84, !36, i64 88}
!67 = !{!68, !55, i64 44}
!68 = !{!"ActKeyColumn", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 41, !41, i64 42, !55, i64 44, !41, i64 48, !41, i64 50}
!69 = distinct !{!69, !70, !71}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !{!66, !50, i64 84}
!73 = distinct !{!73, !70, !71}
!74 = !{!61, !36, i64 168}
!75 = !{!66, !36, i64 0}
!76 = distinct !{!76, !70, !71}
!77 = !{!35, !36, i64 48}
!78 = !{!35, !36, i64 88}
!79 = !{!63, !36, i64 88}
!80 = distinct !{!80, !70, !71}
!81 = distinct !{!81, !70, !71}
!82 = !{!83, !50, i64 680}
!83 = !{!"Scene", !53, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !50, i64 232, !50, i64 236, !50, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !84, i64 280, !92, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !50, i64 4380, !39, i64 4384, !93, i64 4400, !94, i64 4416, !97, i64 4600, !36, i64 4608, !98, i64 4616, !36, i64 4640, !56, i64 4648, !56, i64 4656, !86, i64 4664, !87, i64 4824, !99, i64 4888, !36, i64 4952}
!84 = !{!"RenderData", !85, i64 0, !36, i64 248, !36, i64 256, !88, i64 264, !89, i64 328, !50, i64 400, !50, i64 404, !50, i64 408, !55, i64 412, !50, i64 416, !50, i64 420, !50, i64 424, !50, i64 428, !41, i64 432, !41, i64 434, !55, i64 436, !55, i64 440, !55, i64 444, !55, i64 448, !55, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !50, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !50, i64 484, !50, i64 488, !41, i64 492, !41, i64 494, !50, i64 496, !50, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !50, i64 516, !50, i64 520, !50, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !90, i64 544, !90, i64 560, !49, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !55, i64 612, !55, i64 616, !55, i64 620, !55, i64 624, !50, i64 628, !55, i64 632, !55, i64 636, !55, i64 640, !55, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !55, i64 660, !55, i64 664, !41, i64 668, !41, i64 670, !55, i64 672, !55, i64 676, !37, i64 680, !50, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !50, i64 2520, !41, i64 2524, !41, i64 2526, !55, i64 2528, !55, i64 2532, !41, i64 2536, !41, i64 2538, !55, i64 2540, !41, i64 2544, !41, i64 2546, !50, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !55, i64 2560, !55, i64 2564, !36, i64 2568, !50, i64 2576, !55, i64 2580, !37, i64 2584, !91, i64 2616, !50, i64 3976, !50, i64 3980}
!85 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !55, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !86, i64 24, !87, i64 184}
!86 = !{!"ColorManagedViewSettings", !50, i64 0, !50, i64 4, !37, i64 8, !37, i64 72, !55, i64 136, !55, i64 140, !36, i64 144, !36, i64 152}
!87 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!88 = !{!"QuicktimeCodecSettings", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !50, i64 32, !50, i64 36, !50, i64 40, !50, i64 44, !41, i64 48, !41, i64 50, !50, i64 52, !50, i64 56, !50, i64 60}
!89 = !{!"FFMpegCodecData", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !55, i64 32, !50, i64 36, !50, i64 40, !50, i64 44, !50, i64 48, !50, i64 52, !50, i64 56, !50, i64 60, !36, i64 64}
!90 = !{!"rctf", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12}
!91 = !{!"BakeData", !85, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !55, i64 1280, !55, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!92 = !{!"AudioData", !50, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !50, i64 16, !41, i64 20, !41, i64 22, !55, i64 24, !55, i64 28}
!93 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!94 = !{!"GameData", !93, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !95, i64 40, !41, i64 64, !41, i64 66, !55, i64 68, !96, i64 72, !55, i64 128, !55, i64 132, !50, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !55, i64 164, !55, i64 168, !55, i64 172, !55, i64 176, !55, i64 180}
!95 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !55, i64 8, !55, i64 12, !36, i64 16}
!96 = !{!"RecastData", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !55, i64 24, !55, i64 28, !55, i64 32, !55, i64 36, !50, i64 40, !55, i64 44, !55, i64 48, !41, i64 52, !41, i64 54}
!97 = !{!"UnitSettings", !55, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!98 = !{!"PhysicsSettings", !37, i64 0, !50, i64 12, !50, i64 16, !50, i64 20}
!99 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!100 = !{!63, !36, i64 112}
!101 = distinct !{!101, !70, !71}
!102 = !{!61, !50, i64 188}
!103 = !{!35, !36, i64 104}
!104 = !{!105, !36, i64 48}
!105 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 48, !36, i64 56, !50, i64 64, !55, i64 68, !41, i64 72, !41, i64 74, !50, i64 76, !36, i64 80, !50, i64 88, !37, i64 92, !55, i64 104, !55, i64 108}
!106 = !{!105, !50, i64 64}
!107 = !{!55, !55, i64 0}
!108 = distinct !{!108, !70, !71}
!109 = distinct !{!109, !70, !71}
!110 = !{!50, !50, i64 0}
!111 = !{!112, !36, i64 24}
!112 = !{!"EnumPropertyItem", !50, i64 0, !36, i64 8, !50, i64 16, !36, i64 24, !36, i64 32}
!113 = !{!112, !36, i64 8}
!114 = !{!112, !50, i64 16}
!115 = !{!112, !50, i64 0}
!116 = distinct !{!116, !70, !71}
!117 = !{!37, !37, i64 0}
!118 = !{!35, !36, i64 64}
!119 = !{!35, !36, i64 56}
!120 = !{!63, !36, i64 96}
!121 = !{!122, !41, i64 120}
!122 = !{!"tPoseLib_PreviewData", !39, i64 0, !39, i64 16, !36, i64 32, !36, i64 40, !123, i64 48, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !50, i64 112, !50, i64 116, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !37, i64 128, !37, i64 192, !37, i64 256}
!123 = !{!"PointerRNA", !124, i64 0, !36, i64 8, !36, i64 16}
!124 = !{!"", !36, i64 0}
!125 = !{!126, !41, i64 18}
!126 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !50, i64 20, !50, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !50, i64 48, !50, i64 52, !127, i64 56, !50, i64 64, !50, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !50, i64 108, !36, i64 112}
!127 = !{!"double", !37, i64 0}
!128 = !{!122, !41, i64 124}
!129 = !{!126, !41, i64 16}
!130 = !{!122, !41, i64 122}
!131 = !{!122, !41, i64 126}
!132 = !{!122, !36, i64 96}
!133 = !{!122, !36, i64 104}
!134 = !{!61, !36, i64 176}
!135 = !{!126, !37, i64 42}
!136 = !{i64 0, i64 8, !64, i64 8, i64 8, !64, i64 16, i64 8, !64}
!137 = distinct !{!137, !70, !71}
!138 = !{!122, !36, i64 72}
!139 = !{!52, !36, i64 296}
!140 = !{!122, !36, i64 80}
!141 = !{!122, !36, i64 88}
!142 = !{!122, !36, i64 32}
!143 = !{!122, !36, i64 40}
!144 = !{!145, !36, i64 16}
!145 = !{!"tPoseLib_Backup", !36, i64 0, !36, i64 8, !36, i64 16, !146, i64 24, !36, i64 568}
!146 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !37, i64 40, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !39, i64 144, !39, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !55, i64 264, !41, i64 268, !41, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !55, i64 524, !55, i64 528, !55, i64 532, !36, i64 536}
!147 = !{!146, !36, i64 16}
!148 = !{!145, !36, i64 568}
!149 = !{!146, !36, i64 120}
!150 = !{!151, !50, i64 176}
!151 = !{!"Bone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !37, i64 48, !55, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !50, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !55, i64 268, !55, i64 272, !55, i64 276, !55, i64 280, !55, i64 284, !55, i64 288, !55, i64 292, !55, i64 296, !55, i64 300, !55, i64 304, !37, i64 308, !50, i64 320, !41, i64 324, !37, i64 326}
!152 = !{!122, !50, i64 112}
!153 = !{!122, !50, i64 116}
!154 = distinct !{!154, !70, !71}
!155 = !{!156, !41, i64 24}
!156 = !{!"bPose", !39, i64 0, !36, i64 16, !41, i64 24, !41, i64 26, !50, i64 28, !50, i64 32, !55, i64 36, !37, i64 40, !37, i64 52, !39, i64 64, !50, i64 80, !50, i64 84, !36, i64 88, !36, i64 96, !54, i64 104, !37, i64 152}
!157 = distinct !{!157, !70, !71}
!158 = !{!159, !50, i64 192}
!159 = !{!"bArmature", !53, i64 0, !36, i64 120, !39, i64 128, !39, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !50, i64 192, !50, i64 196, !50, i64 200, !50, i64 204, !41, i64 208, !41, i64 210, !50, i64 212, !50, i64 216, !50, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !50, i64 232, !50, i64 236, !50, i64 240, !50, i64 244, !50, i64 248, !50, i64 252}
!160 = distinct !{!160, !70, !71}
!161 = !{!83, !36, i64 264}
!162 = !{!163, !41, i64 344}
!163 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !55, i64 32, !55, i64 36, !55, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !55, i64 52, !41, i64 56, !37, i64 58, !37, i64 59, !164, i64 64, !166, i64 168, !55, i64 336, !55, i64 340, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 349, !41, i64 350, !55, i64 352, !55, i64 356, !55, i64 360, !55, i64 364, !55, i64 368, !55, i64 372, !55, i64 376, !55, i64 380, !55, i64 384, !55, i64 388, !41, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !41, i64 434, !41, i64 436, !41, i64 438, !41, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !50, i64 448, !50, i64 452, !50, i64 456, !50, i64 460, !41, i64 464, !41, i64 466, !50, i64 468, !55, i64 472, !55, i64 476, !167, i64 480, !168, i64 608}
!164 = !{!"ImagePaintSettings", !165, i64 0, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !37, i64 48, !50, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !55, i64 100}
!165 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !50, i64 28, !50, i64 32, !50, i64 36}
!166 = !{!"ParticleEditSettings", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !37, i64 8, !36, i64 120, !55, i64 128, !55, i64 132, !50, i64 136, !50, i64 140, !50, i64 144, !50, i64 148, !36, i64 152, !36, i64 160}
!167 = !{!"UnifiedPaintSettings", !50, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !37, i64 16, !37, i64 28, !50, i64 40, !37, i64 44, !55, i64 52, !50, i64 56, !50, i64 60, !37, i64 64, !37, i64 65, !55, i64 72, !37, i64 76, !50, i64 84, !55, i64 88, !37, i64 92, !37, i64 100, !50, i64 108, !36, i64 112, !55, i64 120, !50, i64 124}
!168 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !37, i64 20, !37, i64 21, !55, i64 24, !55, i64 28, !55, i64 32, !55, i64 36}
!169 = !{!170, !41, i64 8976}
!170 = !{!"UserDef", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !50, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !50, i64 8484, !50, i64 8488, !50, i64 8492, !41, i64 8496, !41, i64 8498, !50, i64 8500, !50, i64 8504, !50, i64 8508, !50, i64 8512, !50, i64 8516, !50, i64 8520, !50, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !50, i64 8912, !50, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !55, i64 8956, !55, i64 8960, !50, i64 8964, !41, i64 8968, !41, i64 8970, !55, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !171, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !50, i64 10896, !50, i64 10900, !55, i64 10904, !55, i64 10908, !50, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !172, i64 10928}
!171 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!172 = !{!"WalkNavigation", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !41, i64 24, !37, i64 26}
!173 = !{!122, !36, i64 0}
!174 = !{!145, !36, i64 0}
!175 = distinct !{!175, !70, !71}
!176 = !{!177, !55, i64 32}
!177 = !{!"KeyframeEditData", !39, i64 0, !36, i64 16, !36, i64 24, !55, i64 32, !55, i64 36, !50, i64 40, !50, i64 44, !36, i64 48, !50, i64 56, !41, i64 60, !41, i64 62}
!178 = !{!177, !55, i64 36}
!179 = !{!151, !50, i64 320}
!180 = !{!159, !50, i64 216}
!181 = distinct !{!181, !70, !71}
!182 = !{!183, !36, i64 16}
!183 = !{!"LinkData", !36, i64 0, !36, i64 8, !36, i64 16}
!184 = distinct !{!184, !70, !71}
!185 = !{!39, !36, i64 0}
!186 = distinct !{!186, !70, !71}
!187 = !{!183, !36, i64 0}
!188 = distinct !{!188, !70, !71}
!189 = !{!183, !36, i64 8}
!190 = !{!122, !36, i64 24}
!191 = distinct !{!191, !70, !71}
!192 = distinct !{!192, !70, !71}
!193 = !{!66, !36, i64 8}
!194 = distinct !{!194, !70, !71}
!195 = distinct !{!195, !70, !71}
!196 = distinct !{!196, !70, !71}
!197 = distinct !{!197, !70, !71}
