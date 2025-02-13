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
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.DLRBT_Tree = type { ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.ActKeyColumn = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i16, float, i16, i16 }
%struct.TimeMarker = type { ptr, ptr, i32, [64 x i8], i32, ptr }
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
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.tPoseLib_PreviewData = type { %struct.ListBase, %struct.ListBase, ptr, ptr, %struct.PointerRNA, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, [64 x i8], [64 x i8], [200 x i8] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.bActionGroup = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8], %struct.ThemeWireColor }
%struct.ThemeWireColor = type { [4 x i8], [4 x i8], [4 x i8], i16, i16 }
%struct.tPoseLib_Backup = type { ptr, ptr, ptr, %struct.bPoseChannel, ptr }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.KeyframeEditData = type { %struct.ListBase, ptr, ptr, float, float, i32, i32, ptr, i32, i16, i16 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @poselib_new_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !47 {
  %3 = tail call fastcc ptr @get_poselib_object(ptr noundef %0) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @poselib_init_new(ptr noundef nonnull %3) #11
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef null) #12
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ 4, %5 ], [ 2, %2 ]
  ret i32 %8
}

; Function Attrs: optsize
declare i32 @ED_operator_posemode(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @poselib_unlink_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !48 {
  %3 = tail call fastcc ptr @get_poselib_object(ptr noundef %0) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @id_us_min(ptr noundef nonnull %7) #12
  store ptr null, ptr %6, align 8, !tbaa !49
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef null) #12
  br label %10

10:                                               ; preds = %2, %5, %9
  %11 = phi i32 [ 4, %9 ], [ 2, %5 ], [ 2, %2 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @has_poselib_pose_data_poll(ptr noundef %0) #1 !PGOFuncName !56 {
  %2 = tail call fastcc ptr @get_poselib_object(ptr noundef %0) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = icmp ne ptr %6, null
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i32 [ 0, %1 ], [ %8, %4 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @poselib_sanitize_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !57 {
  %3 = alloca %struct.DLRBT_Tree, align 8
  %4 = tail call fastcc ptr @get_poselib_object(ptr noundef %0) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  br label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %6, %7
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  tail call void @BKE_report(ptr noundef %13, i32 noundef 16, ptr noundef nonnull @.str.40) #12
  br label %64

14:                                               ; preds = %7
  call void @BLI_dlrbTree_init(ptr noundef nonnull %3) #12
  call void @action_to_keylist(ptr noundef null, ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef null) #12
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %3) #12
  %15 = load ptr, ptr %3, align 8, !tbaa !60
  %16 = icmp eq ptr %15, null
  br i1 %16, label %49, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.bAction, ptr %9, i64 0, i32 4
  br label %19

19:                                               ; preds = %17, %46
  %20 = phi ptr [ %15, %17 ], [ %47, %46 ]
  %21 = getelementptr inbounds %struct.ActKeyColumn, ptr %20, i64 0, i32 8
  br label %22

22:                                               ; preds = %26, %19
  %23 = phi ptr [ %18, %19 ], [ %24, %26 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !60
  %25 = icmp eq ptr %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.TimeMarker, ptr %24, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !61
  %29 = sitofp i32 %28 to double
  %30 = load float, ptr %21, align 4, !tbaa !63
  %31 = fpext float %30 to double
  %32 = fsub double %29, %31
  %33 = call double @llvm.fabs.f64(double %32)
  %34 = fcmp ult double %33, 0x3E80000000000000
  br i1 %34, label %35, label %22, !llvm.loop !65

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.TimeMarker, ptr %24, i64 0, i32 4
  store i32 -1, ptr %36, align 4, !tbaa !67
  br label %46

37:                                               ; preds = %22
  %38 = load ptr, ptr @MEM_callocN, align 8, !tbaa !60
  %39 = call ptr %38(i64 noundef 96, ptr noundef nonnull @.str.41) #12
  %40 = getelementptr inbounds %struct.TimeMarker, ptr %39, i64 0, i32 3
  %41 = call ptr @BLI_strncpy(ptr noundef nonnull %40, ptr noundef nonnull @.str.16, i64 noundef 64) #12
  %42 = load float, ptr %21, align 4, !tbaa !63
  %43 = fptosi float %42 to i32
  %44 = getelementptr inbounds %struct.TimeMarker, ptr %39, i64 0, i32 2
  store i32 %43, ptr %44, align 8, !tbaa !61
  %45 = getelementptr inbounds %struct.TimeMarker, ptr %39, i64 0, i32 4
  store i32 -1, ptr %45, align 4, !tbaa !67
  call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef %39) #12
  br label %46

46:                                               ; preds = %35, %37
  %47 = load ptr, ptr %20, align 8, !tbaa !60
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %19, !llvm.loop !68

49:                                               ; preds = %46, %14
  %50 = getelementptr inbounds %struct.bAction, ptr %9, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !69
  %52 = icmp eq ptr %51, null
  br i1 %52, label %63, label %53

53:                                               ; preds = %49, %61
  %54 = phi ptr [ %55, %61 ], [ %51, %49 ]
  %55 = load ptr, ptr %54, align 8, !tbaa !71
  %56 = getelementptr inbounds %struct.TimeMarker, ptr %54, i64 0, i32 4
  %57 = load i32, ptr %56, align 4, !tbaa !67
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  call void @BLI_freelinkN(ptr noundef nonnull %50, ptr noundef nonnull %54) #12
  br label %61

60:                                               ; preds = %53
  store i32 0, ptr %56, align 4, !tbaa !67
  br label %61

61:                                               ; preds = %59, %60
  %62 = icmp eq ptr %55, null
  br i1 %62, label %63, label %53, !llvm.loop !72

63:                                               ; preds = %61, %49
  call void @BLI_dlrbTree_free(ptr noundef nonnull %3) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #12
  br label %64

64:                                               ; preds = %63, %11
  %65 = phi i32 [ 2, %11 ], [ 4, %63 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret i32 %65
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @POSELIB_OT_pose_add(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @poselib_add_menu_invoke, ptr %4, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @poselib_add_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.12, i32 noundef 1, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 2147483647) #12
  %11 = load ptr, ptr %8, align 8, !tbaa !74
  %12 = tail call ptr @RNA_def_string(ptr noundef %11, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 64, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @poselib_add_menu_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #1 !PGOFuncName !75 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %5 = tail call fastcc ptr @get_poselib_object(ptr noundef %0) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !77
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef %14, i32 noundef 0) #12
  %16 = tail call ptr @uiPupMenuLayout(ptr noundef %15) #12
  tail call void @uiLayoutSetOperatorContext(ptr noundef %16, i32 noundef 6) #12
  %17 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 17
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = tail call fastcc i32 @poselib_get_free_index(ptr noundef %18) #11
  tail call void @uiItemIntO(ptr noundef %16, ptr noundef nonnull @.str.42, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12, i32 noundef %19) #12
  %20 = load ptr, ptr %17, align 8, !tbaa !49
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.bAction, ptr %20, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !69
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !78
  tail call void @uiItemIntO(ptr noundef %16, ptr noundef nonnull @.str.43, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12, i32 noundef %28) #12
  tail call void @uiItemMenuF(ptr noundef %16, ptr noundef nonnull @.str.44, i32 noundef 0, ptr noundef nonnull @poselib_add_menu_invoke__replacemenu, ptr noundef null) #12
  br label %29

29:                                               ; preds = %26, %22, %11
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %15) #12
  br label %30

30:                                               ; preds = %3, %7, %29
  %31 = phi i32 [ 32, %29 ], [ 2, %7 ], [ 2, %3 ]
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @poselib_add_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !97 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call fastcc ptr @get_poselib_object(ptr noundef %0) #11
  %5 = tail call fastcc ptr @poselib_validate(ptr noundef %4) #11
  %6 = icmp eq ptr %4, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  %10 = icmp eq ptr %9, null
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi i1 [ %10, %7 ], [ true, %2 ]
  %13 = tail call ptr @ANIM_builtin_keyingset_get_named(ptr noundef null, ptr noundef nonnull @.str.45) #12
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = tail call i32 @RNA_int_get(ptr noundef %15, ptr noundef nonnull @.str.12) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  br i1 %12, label %43, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %14, align 8, !tbaa !98
  call void @RNA_string_get(ptr noundef %18, ptr noundef nonnull @.str.15, ptr noundef nonnull %3) #12
  %19 = getelementptr inbounds %struct.bAction, ptr %5, i64 0, i32 4
  br label %20

20:                                               ; preds = %24, %17
  %21 = phi ptr [ %19, %17 ], [ %22, %24 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !60
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.TimeMarker, ptr %22, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !61
  %27 = icmp eq i32 %26, %16
  br i1 %27, label %28, label %20, !llvm.loop !99

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.TimeMarker, ptr %22, i64 0, i32 3
  %30 = call ptr @BLI_strncpy(ptr noundef nonnull %29, ptr noundef nonnull %3, i64 noundef 64) #12
  br label %37

31:                                               ; preds = %20
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !60
  %33 = call ptr %32(i64 noundef 96, ptr noundef nonnull @.str.41) #12
  %34 = getelementptr inbounds %struct.TimeMarker, ptr %33, i64 0, i32 3
  %35 = call ptr @BLI_strncpy(ptr noundef nonnull %34, ptr noundef nonnull %3, i64 noundef 64) #12
  %36 = getelementptr inbounds %struct.TimeMarker, ptr %33, i64 0, i32 2
  store i32 %16, ptr %36, align 8, !tbaa !61
  call void @BLI_addtail(ptr noundef nonnull %19, ptr noundef %33) #12
  br label %37

37:                                               ; preds = %28, %31
  %38 = phi ptr [ %33, %31 ], [ %22, %28 ]
  call void @BLI_uniquename(ptr noundef nonnull %19, ptr noundef nonnull %38, ptr noundef nonnull @.str.16, i8 noundef zeroext 46, i32 noundef 20, i32 noundef 64) #12
  %39 = sitofp i32 %16 to float
  %40 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef null, ptr noundef %5, ptr noundef %13, i16 noundef signext 0, float noundef %39) #12
  %41 = call i32 @BLI_countlist(ptr noundef nonnull %19) #12
  %42 = getelementptr inbounds %struct.bAction, ptr %5, i64 0, i32 6
  store i32 %41, ptr %42, align 4, !tbaa !100
  br label %43

43:                                               ; preds = %11, %37
  %44 = phi i32 [ 4, %37 ], [ 2, %11 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret i32 %44
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @POSELIB_OT_pose_remove(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.19, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.21, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_menu_invoke, ptr %4, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @poselib_remove_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @has_poselib_pose_data_poll, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.22, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.23) #12
  tail call void @RNA_def_enum_funcs(ptr noundef %10, ptr noundef nonnull @poselib_stored_pose_itemf) #12
  tail call void @RNA_def_property_flag(ptr noundef %10, i32 noundef 536870912) #12
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare i32 @WM_menu_invoke(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @poselib_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !102 {
  %3 = tail call fastcc ptr @get_poselib_object(ptr noundef %0) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2, %5
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  tail call void @BKE_report(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str.46) #12
  br label %70

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  %15 = tail call ptr @RNA_struct_find_property(ptr noundef %14, ptr noundef nonnull @.str.22) #12
  %16 = load ptr, ptr %13, align 8, !tbaa !98
  %17 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %16, ptr noundef %15) #12
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %13, align 8, !tbaa !98
  %21 = tail call i32 @RNA_property_enum_get(ptr noundef %20, ptr noundef %15) #12
  br label %26

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.bAction, ptr %7, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !100
  %25 = add nsw i32 %24, -1
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i32 [ %21, %19 ], [ %25, %22 ]
  %28 = getelementptr inbounds %struct.bAction, ptr %7, i64 0, i32 4
  %29 = tail call ptr @BLI_findlink(ptr noundef nonnull %28, i32 noundef %27) #12
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !58
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %33, i32 noundef 32, ptr noundef nonnull @.str.47, i32 noundef %27) #12
  br label %70

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.bAction, ptr %7, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !60
  %37 = icmp eq ptr %36, null
  br i1 %37, label %68, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.TimeMarker, ptr %29, i64 0, i32 2
  br label %40

40:                                               ; preds = %38, %65
  %41 = phi ptr [ %36, %38 ], [ %66, %65 ]
  %42 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !103
  %44 = icmp eq ptr %43, null
  br i1 %44, label %65, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.FCurve, ptr %41, i64 0, i32 7
  %47 = load i32, ptr %46, align 8, !tbaa !105
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %45
  %50 = load i32, ptr %39, align 8, !tbaa !61
  %51 = sitofp i32 %50 to float
  br label %52

52:                                               ; preds = %49, %61
  %53 = phi i32 [ 0, %49 ], [ %62, %61 ]
  %54 = phi ptr [ %43, %49 ], [ %63, %61 ]
  %55 = getelementptr inbounds [3 x [3 x float]], ptr %54, i64 0, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !106
  %57 = fsub float %56, %51
  %58 = tail call float @llvm.fabs.f32(float %57)
  %59 = fcmp ult float %58, 0x3E80000000000000
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  tail call void @delete_fcurve_key(ptr noundef nonnull %41, i32 noundef %53, i8 noundef zeroext 1) #12
  br label %65

61:                                               ; preds = %52
  %62 = add nuw i32 %53, 1
  %63 = getelementptr inbounds %struct.BezTriple, ptr %54, i64 1
  %64 = icmp eq i32 %62, %47
  br i1 %64, label %65, label %52, !llvm.loop !107

65:                                               ; preds = %61, %45, %60, %40
  %66 = load ptr, ptr %41, align 8, !tbaa !60
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %40, !llvm.loop !108

68:                                               ; preds = %65, %34
  tail call void @BLI_freelinkN(ptr noundef nonnull %28, ptr noundef nonnull %29) #12
  %69 = getelementptr inbounds %struct.bAction, ptr %7, i64 0, i32 6
  store i32 0, ptr %69, align 4, !tbaa !100
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #12
  br label %70

70:                                               ; preds = %68, %31, %9
  %71 = phi i32 [ 2, %9 ], [ 2, %31 ], [ 4, %68 ]
  ret i32 %71
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_enum_funcs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @poselib_stored_pose_itemf(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef writeonly %3) #1 !PGOFuncName !109 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.EnumPropertyItem, align 8
  %7 = alloca i32, align 4
  %8 = tail call fastcc ptr @get_poselib_object(ptr noundef %0) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr null, ptr %5, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !tbaa !110
  %13 = icmp eq ptr %0, null
  br i1 %13, label %35, label %16

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr null, ptr %5, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !tbaa !110
  %15 = icmp eq ptr %0, null
  br i1 %15, label %35, label %33

16:                                               ; preds = %10
  %17 = icmp eq ptr %12, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.bAction, ptr %12, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !60
  %21 = icmp eq ptr %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 3
  %24 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 1
  %25 = getelementptr inbounds %struct.EnumPropertyItem, ptr %6, i64 0, i32 2
  br label %26

26:                                               ; preds = %22, %26
  %27 = phi ptr [ %20, %22 ], [ %31, %26 ]
  %28 = phi i32 [ 0, %22 ], [ %30, %26 ]
  %29 = getelementptr inbounds %struct.TimeMarker, ptr %27, i64 0, i32 3
  store ptr %29, ptr %23, align 8, !tbaa !111
  store ptr %29, ptr %24, align 8, !tbaa !113
  store i32 172, ptr %25, align 8, !tbaa !114
  store i32 %28, ptr %6, align 8, !tbaa !115
  call void @RNA_enum_item_add(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6) #12
  %30 = add nuw nsw i32 %28, 1
  %31 = load ptr, ptr %27, align 8, !tbaa !60
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %26, !llvm.loop !116

33:                                               ; preds = %26, %18, %14, %16
  call void @RNA_enum_item_end(ptr noundef nonnull %5, ptr noundef nonnull %7) #12
  store i8 1, ptr %3, align 1, !tbaa !117
  %34 = load ptr, ptr %5, align 8, !tbaa !60
  br label %35

35:                                               ; preds = %14, %10, %33
  %36 = phi ptr [ %34, %33 ], [ @DummyRNA_NULL_items, %10 ], [ @DummyRNA_NULL_items, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret ptr %36
}

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @POSELIB_OT_pose_rename(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @poselib_rename_invoke, ptr %4, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @poselib_rename_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @has_poselib_pose_data_poll, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.27, i32 noundef 64, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #12
  %11 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %10, ptr %11, align 8, !tbaa !101
  %12 = load ptr, ptr %8, align 8, !tbaa !74
  %13 = tail call ptr @RNA_def_enum(ptr noundef %12, ptr noundef nonnull @.str.22, ptr noundef nonnull @DummyRNA_NULL_items, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.30) #12
  tail call void @RNA_def_enum_funcs(ptr noundef %13, ptr noundef nonnull @poselib_stored_pose_itemf) #12
  tail call void @RNA_def_property_flag(ptr noundef %13, i32 noundef 536870912) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @poselib_rename_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !PGOFuncName !118 {
  %4 = tail call fastcc ptr @get_poselib_object(ptr noundef %0) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3, %6
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  tail call void @BKE_report(ptr noundef %12, i32 noundef 32, ptr noundef nonnull @.str.46) #12
  br label %31

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.bAction, ptr %8, i64 0, i32 4
  %15 = getelementptr inbounds %struct.bAction, ptr %8, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !100
  %17 = add nsw i32 %16, -1
  %18 = tail call ptr @BLI_findlink(ptr noundef nonnull %14, i32 noundef %17) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  tail call void @BKE_report(ptr noundef %22, i32 noundef 32, ptr noundef nonnull @.str.48) #12
  br label %31

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !98
  %26 = load i32, ptr %15, align 4, !tbaa !100
  %27 = add nsw i32 %26, -1
  tail call void @RNA_enum_set(ptr noundef %25, ptr noundef nonnull @.str.22, i32 noundef %27) #12
  %28 = load ptr, ptr %24, align 8, !tbaa !98
  %29 = getelementptr inbounds %struct.TimeMarker, ptr %18, i64 0, i32 3
  tail call void @RNA_string_set(ptr noundef %28, ptr noundef nonnull @.str.15, ptr noundef nonnull %29) #12
  %30 = tail call i32 @WM_operator_props_popup_confirm(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  br label %31

31:                                               ; preds = %23, %20, %10
  %32 = phi i32 [ 2, %10 ], [ 2, %20 ], [ %30, %23 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @poselib_rename_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !119 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @CTX_data_active_object(ptr noundef %0) #12
  %5 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %4) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  br label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %7, %8
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  tail call void @BKE_report(ptr noundef %14, i32 noundef 32, ptr noundef nonnull @.str.46) #12
  br label %29

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.bAction, ptr %10, i64 0, i32 4
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !98
  %19 = tail call i32 @RNA_enum_get(ptr noundef %18, ptr noundef nonnull @.str.22) #12
  %20 = tail call ptr @BLI_findlink(ptr noundef nonnull %16, i32 noundef %19) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !58
  tail call void @BKE_report(ptr noundef %24, i32 noundef 32, ptr noundef nonnull @.str.48) #12
  br label %29

25:                                               ; preds = %15
  %26 = load ptr, ptr %17, align 8, !tbaa !98
  call void @RNA_string_get(ptr noundef %26, ptr noundef nonnull @.str.15, ptr noundef nonnull %3) #12
  %27 = getelementptr inbounds %struct.TimeMarker, ptr %20, i64 0, i32 3
  %28 = call ptr @BLI_strncpy(ptr noundef nonnull %27, ptr noundef nonnull %3, i64 noundef 64) #12
  call void @BLI_uniquename(ptr noundef nonnull %16, ptr noundef nonnull %20, ptr noundef nonnull @.str.16, i8 noundef zeroext 46, i32 noundef 20, i32 noundef 64) #12
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #12
  br label %29

29:                                               ; preds = %25, %22, %12
  %30 = phi i32 [ 2, %12 ], [ 2, %22 ], [ 4, %25 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @POSELIB_OT_browse_interactive(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.31, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.32, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @poselib_preview_invoke, ptr %4, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @poselib_preview_modal, ptr %5, align 8, !tbaa !120
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @poselib_preview_cancel, ptr %6, align 8, !tbaa !121
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @poselib_preview_exec, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @has_poselib_pose_data_poll, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %9, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.34, i32 noundef -1, i32 noundef -2, i32 noundef 2147483647, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 2147483647) #12
  %13 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !101
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @poselib_preview_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 !PGOFuncName !122 {
  tail call fastcc void @poselib_preview_init_data(ptr noundef %0, ptr noundef %1) #11
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !123
  %6 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 12
  %7 = load i16, ptr %6, align 8, !tbaa !124
  %8 = icmp eq i16 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call fastcc void @poselib_preview_cleanup(ptr noundef %0, ptr noundef nonnull %1) #11
  br label %12

10:                                               ; preds = %3
  tail call fastcc void @poselib_preview_apply(ptr noundef %0, ptr noundef nonnull %1) #11
  %11 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #12
  br label %12

12:                                               ; preds = %10, %9
  %13 = phi i32 [ 2, %9 ], [ 1, %10 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @poselib_preview_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #1 !PGOFuncName !128 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !123
  %6 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 12
  %7 = load i16, ptr %6, align 8, !tbaa !124
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call fastcc i32 @poselib_preview_exit(ptr noundef %0, ptr noundef nonnull %1) #11, !range !129
  br label %17

11:                                               ; preds = %3
  %12 = tail call fastcc i32 @poselib_preview_handle_event(ptr noundef nonnull %1, ptr noundef %2) #11
  %13 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %5, i64 0, i32 13
  %14 = load i16, ptr %13, align 2, !tbaa !130
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call fastcc void @poselib_preview_apply(ptr noundef %0, ptr noundef nonnull %1) #11
  br label %17

17:                                               ; preds = %11, %16, %9
  %18 = phi i32 [ %10, %9 ], [ %12, %16 ], [ %12, %11 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @poselib_preview_cancel(ptr noundef %0, ptr nocapture noundef %1) #1 !PGOFuncName !131 {
  %3 = tail call fastcc i32 @poselib_preview_exit(ptr noundef %0, ptr noundef %1) #11, !range !129
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @poselib_preview_exec(ptr noundef %0, ptr nocapture noundef %1) #1 !PGOFuncName !132 {
  tail call fastcc void @poselib_preview_init_data(ptr noundef %0, ptr noundef %1) #11
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !123
  %5 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 12
  %6 = load i16, ptr %5, align 8, !tbaa !124
  %7 = icmp eq i16 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call fastcc void @poselib_preview_cleanup(ptr noundef %0, ptr noundef nonnull %1) #11
  br label %11

9:                                                ; preds = %2
  store i16 3, ptr %5, align 8, !tbaa !124
  tail call fastcc void @poselib_preview_apply(ptr noundef %0, ptr noundef nonnull %1) #11
  store i16 1, ptr %5, align 8, !tbaa !124
  %10 = tail call fastcc i32 @poselib_preview_exit(ptr noundef %0, ptr noundef nonnull %1) #11, !range !129
  br label %11

11:                                               ; preds = %9, %8
  %12 = phi i32 [ 2, %8 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.34, i32 noundef -1, i32 noundef -2, i32 noundef 2147483647, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 2147483647) #12
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !101
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_poselib_object(ptr noundef %0) unnamed_addr #1 !PGOFuncName !133 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @CTX_wm_area(ptr noundef nonnull %0) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 8
  %8 = load i8, ptr %7, align 8, !tbaa !134
  %9 = icmp eq i8 %8, 4
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call ptr @ED_object_context(ptr noundef nonnull %0) #12
  br label %15

12:                                               ; preds = %6, %3
  %13 = tail call ptr @CTX_data_active_object(ptr noundef nonnull %0) #12
  %14 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %13) #12
  br label %15

15:                                               ; preds = %1, %12, %10
  %16 = phi ptr [ %11, %10 ], [ %14, %12 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @poselib_init_new(ptr nocapture noundef %0) unnamed_addr #1 !PGOFuncName !136 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @id_us_min(ptr noundef nonnull %7) #12
  br label %10

10:                                               ; preds = %9, %5
  %11 = load ptr, ptr @G, align 8, !tbaa !137
  %12 = tail call ptr @add_empty_action(ptr noundef %11, ptr noundef nonnull @.str.39) #12
  store ptr %12, ptr %6, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.bAction, ptr %12, i64 0, i32 7
  store i32 16975, ptr %13, align 8, !tbaa !139
  br label %14

14:                                               ; preds = %1, %10
  %15 = phi ptr [ %12, %10 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_object_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_object_pose_armature_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @add_empty_action(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_dlrbTree_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @action_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_dlrbTree_linkedlist_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_dlrbTree_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiLayoutSetOperatorContext(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemIntO(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @poselib_get_free_index(ptr noundef readonly %0) unnamed_addr #5 !PGOFuncName !140 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = icmp eq ptr %5, null
  br i1 %6, label %34, label %7

7:                                                ; preds = %3, %23
  %8 = phi ptr [ %24, %23 ], [ %5, %3 ]
  %9 = phi i8 [ %25, %23 ], [ 0, %3 ]
  %10 = phi i32 [ %18, %23 ], [ 0, %3 ]
  %11 = phi i32 [ %16, %23 ], [ 0, %3 ]
  %12 = getelementptr inbounds %struct.TimeMarker, ptr %8, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !61
  %14 = add nsw i32 %11, 1
  %15 = icmp eq i32 %13, %14
  %16 = select i1 %15, i32 %14, i32 %11
  %17 = icmp sgt i32 %13, %10
  %18 = tail call i32 @llvm.smax.i32(i32 %13, i32 %10)
  %19 = select i1 %17, i1 true, i1 %15
  %20 = select i1 %19, i8 1, i8 %9
  %21 = load ptr, ptr %8, align 8, !tbaa !60
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %7, %26
  %24 = phi ptr [ %21, %7 ], [ %5, %26 ]
  %25 = phi i8 [ %20, %7 ], [ 0, %26 ]
  br label %7, !llvm.loop !141

26:                                               ; preds = %7
  %27 = icmp eq i8 %20, 0
  br i1 %27, label %28, label %23

28:                                               ; preds = %26
  %29 = icmp slt i32 %16, %18
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = add nsw i32 %16, 1
  br label %34

32:                                               ; preds = %28
  %33 = add nuw nsw i32 %18, 1
  br label %34

34:                                               ; preds = %1, %3, %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ], [ 1, %3 ], [ 1, %1 ]
  ret i32 %35
}

; Function Attrs: optsize
declare void @uiItemMenuF(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @poselib_add_menu_invoke__replacemenu(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 !PGOFuncName !142 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = tail call fastcc ptr @get_poselib_object(ptr noundef %0) #11
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = tail call ptr @WM_operatortype_find(ptr noundef nonnull @.str.10, i8 noundef zeroext 1) #12
  tail call void @uiLayoutSetOperatorContext(ptr noundef %1, i32 noundef 6) #12
  %10 = getelementptr inbounds %struct.bAction, ptr %8, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %3, %13
  %14 = phi ptr [ %18, %13 ], [ %11, %3 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  %15 = getelementptr inbounds %struct.TimeMarker, ptr %14, i64 0, i32 3
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %1, ptr noundef %9, ptr noundef nonnull %15, i32 noundef 172, ptr noundef null, i32 noundef 6, i32 noundef 1) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !143
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  %16 = getelementptr inbounds %struct.TimeMarker, ptr %14, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !61
  call void @RNA_int_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.12, i32 noundef %17) #12
  call void @RNA_string_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.15, ptr noundef nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  %18 = load ptr, ptr %14, align 8, !tbaa !60
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %13, !llvm.loop !144

20:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: optsize
declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemFullO_ptr(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @poselib_validate(ptr noundef %0) unnamed_addr #1 !PGOFuncName !145 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call fastcc ptr @poselib_init_new(ptr noundef nonnull %0) #11
  br label %13

13:                                               ; preds = %7, %1, %3, %11
  %14 = phi ptr [ %12, %11 ], [ null, %3 ], [ null, %1 ], [ %9, %7 ]
  ret ptr %14
}

; Function Attrs: optsize
declare ptr @ANIM_builtin_keyingset_get_named(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ANIM_apply_keyingset(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: optsize
declare void @delete_fcurve_key(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @RNA_enum_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_item_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_operator_props_popup_confirm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @poselib_preview_init_data(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 !PGOFuncName !146 {
  %3 = tail call fastcc ptr @get_poselib_object(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = tail call i32 @RNA_int_get(ptr noundef %5, ptr noundef nonnull @.str.34) #12
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !60
  %8 = tail call ptr %7(i64 noundef 456, ptr noundef nonnull @.str.49) #12
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %8, ptr %9, align 8, !tbaa !123
  %10 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %8, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !147
  %11 = icmp eq ptr %3, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %8, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  br label %21

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %8, i64 0, i32 6
  %16 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 18
  %17 = load <2 x ptr>, ptr %16, align 8, !tbaa !60
  %18 = shufflevector <2 x ptr> %17, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %18, ptr %15, align 8, !tbaa !60
  %19 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 17
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  br label %21

21:                                               ; preds = %12, %14
  %22 = phi ptr [ %15, %14 ], [ %13, %12 ]
  %23 = phi ptr [ %20, %14 ], [ null, %12 ]
  %24 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %8, i64 0, i32 7
  %25 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %8, i64 0, i32 8
  store ptr %23, ptr %25, align 8, !tbaa !148
  %26 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  %27 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %8, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !149
  %28 = tail call ptr @CTX_wm_area(ptr noundef %0) #12
  %29 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %8, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !150
  switch i32 %6, label %38 [
    i32 -1, label %30
    i32 -2, label %34
  ]

30:                                               ; preds = %21
  %31 = load ptr, ptr %25, align 8, !tbaa !148
  %32 = tail call fastcc ptr @poselib_get_active_pose(ptr noundef %31) #11
  %33 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %8, i64 0, i32 9
  store ptr %32, ptr %33, align 8, !tbaa !151
  br label %47

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %8, i64 0, i32 14
  %36 = load i16, ptr %35, align 4, !tbaa !152
  %37 = or i16 %36, 2
  store i16 %37, ptr %35, align 4, !tbaa !152
  br label %47

38:                                               ; preds = %21
  %39 = load ptr, ptr %25, align 8, !tbaa !148
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.bAction, ptr %39, i64 0, i32 4
  %43 = tail call ptr @BLI_findlink(ptr noundef nonnull %42, i32 noundef %6) #12
  br label %44

44:                                               ; preds = %38, %41
  %45 = phi ptr [ %43, %41 ], [ null, %38 ]
  %46 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %8, i64 0, i32 9
  store ptr %45, ptr %46, align 8, !tbaa !151
  br label %47

47:                                               ; preds = %34, %44, %30
  %48 = load ptr, ptr %10, align 8, !tbaa !147
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %24, align 8, !tbaa !153
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %22, align 8, !tbaa !154
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53, %50, %47
  %57 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %58 = load ptr, ptr %57, align 8, !tbaa !58
  tail call void @BKE_report(ptr noundef %58, i32 noundef 32, ptr noundef nonnull @.str.50) #12
  %59 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %8, i64 0, i32 12
  store i16 -1, ptr %59, align 8, !tbaa !124
  br label %100

60:                                               ; preds = %53
  %61 = load ptr, ptr %25, align 8, !tbaa !148
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %65 = load ptr, ptr %64, align 8, !tbaa !58
  tail call void @BKE_report(ptr noundef %65, i32 noundef 32, ptr noundef nonnull @.str.51) #12
  %66 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %8, i64 0, i32 12
  store i16 -1, ptr %66, align 8, !tbaa !124
  br label %100

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %8, i64 0, i32 9
  %69 = load ptr, ptr %68, align 8, !tbaa !151
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.bAction, ptr %61, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !69
  %74 = icmp eq ptr %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  store ptr %73, ptr %68, align 8, !tbaa !151
  %76 = icmp sgt i32 %6, -2
  br i1 %76, label %77, label %84

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %79 = load ptr, ptr %78, align 8, !tbaa !58
  tail call void @BKE_report(ptr noundef %79, i32 noundef 16, ptr noundef nonnull @.str.52) #12
  br label %84

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %82 = load ptr, ptr %81, align 8, !tbaa !58
  tail call void @BKE_report(ptr noundef %82, i32 noundef 32, ptr noundef nonnull @.str.53) #12
  %83 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %8, i64 0, i32 12
  store i16 -1, ptr %83, align 8, !tbaa !124
  br label %100

84:                                               ; preds = %77, %75, %67
  %85 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %8, i64 0, i32 4
  tail call void @RNA_id_pointer_create(ptr noundef %3, ptr noundef nonnull %85) #12
  tail call fastcc void @poselib_backup_posecopy(ptr noundef nonnull %8) #11
  %86 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %8, i64 0, i32 12
  store i16 0, ptr %86, align 8, !tbaa !124
  %87 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %8, i64 0, i32 13
  store i16 1, ptr %87, align 2, !tbaa !130
  %88 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %8, i64 0, i32 14
  %89 = load i16, ptr %88, align 4, !tbaa !152
  %90 = or i16 %89, 1
  store i16 %90, ptr %88, align 4, !tbaa !152
  %91 = load ptr, ptr %24, align 8, !tbaa !153
  %92 = getelementptr inbounds %struct.bPose, ptr %91, i64 0, i32 2
  %93 = load i16, ptr %92, align 8, !tbaa !155
  %94 = and i16 %93, -7
  %95 = or disjoint i16 %94, 2
  store i16 %95, ptr %92, align 8, !tbaa !155
  %96 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %8, i64 0, i32 17
  store i8 0, ptr %96, align 8, !tbaa !117
  %97 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %8, i64 0, i32 16
  store i8 0, ptr %97, align 8, !tbaa !117
  %98 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %8, i64 0, i32 18
  store i8 0, ptr %98, align 8, !tbaa !117
  %99 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %8, i64 0, i32 15
  store i16 0, ptr %99, align 2, !tbaa !157
  br label %100

100:                                              ; preds = %84, %80, %63, %56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @poselib_preview_cleanup(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 !PGOFuncName !158 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !123
  %5 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !149
  %7 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !147
  %9 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !153
  %11 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !154
  %13 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !148
  %15 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !151
  %17 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !150
  tail call void @ED_area_headerprint(ptr noundef %18, ptr noundef null) #12
  %19 = getelementptr inbounds %struct.bPose, ptr %10, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !155
  %21 = or i16 %20, 4
  store i16 %21, ptr %19, align 8, !tbaa !155
  %22 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 12
  %23 = load i16, ptr %22, align 8, !tbaa !124
  switch i16 %23, label %47 [
    i16 2, label %24
    i16 1, label %31
  ]

24:                                               ; preds = %2
  tail call fastcc void @poselib_backup_restore(ptr noundef nonnull %4) #11
  %25 = getelementptr inbounds %struct.bArmature, ptr %12, i64 0, i32 8
  %26 = load i32, ptr %25, align 8, !tbaa !159
  %27 = and i32 %26, 64
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  tail call void @DAG_id_tag_update(ptr noundef %8, i16 noundef signext 2) #12
  br label %47

30:                                               ; preds = %24
  tail call void @BKE_pose_where_is(ptr noundef %6, ptr noundef %8) #12
  br label %47

31:                                               ; preds = %2
  tail call fastcc void @poselib_keytag_pose(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %4) #11
  %32 = getelementptr inbounds %struct.bAction, ptr %14, i64 0, i32 4
  %33 = tail call i32 @BLI_findindex(ptr noundef nonnull %32, ptr noundef %16) #12
  %34 = add nsw i32 %33, 1
  %35 = getelementptr inbounds %struct.bAction, ptr %14, i64 0, i32 6
  store i32 %34, ptr %35, align 4, !tbaa !100
  tail call void @DAG_id_tag_update(ptr noundef %8, i16 noundef signext 2) #12
  %36 = icmp eq ptr %6, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 20
  %39 = load ptr, ptr %38, align 8, !tbaa !161
  %40 = getelementptr inbounds %struct.ToolSettings, ptr %39, i64 0, i32 21
  %41 = load i16, ptr %40, align 8, !tbaa !162
  %42 = icmp eq i16 %41, 3
  br i1 %42, label %47, label %46

43:                                               ; preds = %31
  %44 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !169
  %45 = icmp eq i16 %44, 3
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %37
  tail call void @BKE_pose_where_is(ptr noundef %6, ptr noundef %8) #12
  br label %47

47:                                               ; preds = %2, %37, %43, %46, %29, %30
  %48 = load ptr, ptr %7, align 8, !tbaa !147
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %48) #12
  tail call fastcc void @poselib_backup_free_data(ptr noundef nonnull %4) #11
  %49 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 1
  tail call void @BLI_freelistN(ptr noundef nonnull %49) #12
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !60
  tail call void %50(ptr noundef nonnull %4) #12
  store ptr null, ptr %3, align 8, !tbaa !123
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @poselib_preview_apply(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !173 {
  %3 = alloca [65 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !123
  %7 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %6, i64 0, i32 13
  %8 = load i16, ptr %7, align 2, !tbaa !130
  %9 = icmp eq i16 %8, 1
  br i1 %9, label %10, label %48

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %6, i64 0, i32 14
  %12 = load i16, ptr %11, align 4, !tbaa !152
  %13 = and i16 %12, 1
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  tail call fastcc void @poselib_backup_restore(ptr noundef nonnull %6) #11
  %16 = load i16, ptr %11, align 4, !tbaa !152
  br label %19

17:                                               ; preds = %10
  %18 = and i16 %12, -2
  store i16 %18, ptr %11, align 4, !tbaa !152
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i16 [ %18, %17 ], [ %16, %15 ]
  %21 = and i16 %20, 2
  %22 = icmp eq i16 %21, 0
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !98
  br i1 %22, label %25, label %32

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %6, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !148
  %28 = getelementptr inbounds %struct.bAction, ptr %27, i64 0, i32 4
  %29 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %6, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !151
  %31 = tail call i32 @BLI_findindex(ptr noundef nonnull %28, ptr noundef %30) #12
  tail call void @RNA_int_set(ptr noundef %24, ptr noundef nonnull @.str.34, i32 noundef %31) #12
  tail call fastcc void @poselib_apply_pose(ptr noundef nonnull %6) #11
  br label %33

32:                                               ; preds = %19
  tail call void @RNA_int_set(ptr noundef %24, ptr noundef nonnull @.str.34, i32 noundef -2) #12
  br label %33

33:                                               ; preds = %32, %25
  %34 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %6, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !154
  %36 = getelementptr inbounds %struct.bArmature, ptr %35, i64 0, i32 8
  %37 = load i32, ptr %36, align 8, !tbaa !159
  %38 = and i32 %37, 64
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %6, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !147
  tail call void @DAG_id_tag_update(ptr noundef %42, i16 noundef signext 2) #12
  br label %48

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %6, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !149
  %46 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %6, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !147
  tail call void @BKE_pose_where_is(ptr noundef %45, ptr noundef %47) #12
  br label %48

48:                                               ; preds = %40, %43, %2
  %49 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %6, i64 0, i32 12
  %50 = load i16, ptr %49, align 8, !tbaa !124
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %99

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %6, i64 0, i32 14
  %54 = load i16, ptr %53, align 4, !tbaa !152
  %55 = and i16 %54, 2
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %6, i64 0, i32 18
  %59 = tail call ptr @BLI_strncpy(ptr noundef nonnull %58, ptr noundef nonnull @.str.55, i64 noundef 200) #12
  %60 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %6, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !150
  tail call void @ED_area_headerprint(ptr noundef %61, ptr noundef nonnull %58) #12
  br label %99

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %6, i64 0, i32 16
  %64 = load i8, ptr %63, align 8, !tbaa !117
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %91, label %66

66:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %67 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %6, i64 0, i32 15
  %68 = load i16, ptr %67, align 2, !tbaa !157
  %69 = icmp ult i16 %68, 64
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = zext nneg i16 %68 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr nonnull align 8 %63, i64 %71, i1 false)
  %72 = getelementptr inbounds [65 x i8], ptr %3, i64 0, i64 %71
  store i8 124, ptr %72, align 1, !tbaa !117
  %73 = add nuw nsw i16 %68, 1
  %74 = zext nneg i16 %73 to i64
  %75 = getelementptr inbounds [65 x i8], ptr %3, i64 0, i64 %74
  %76 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %6, i64 0, i32 16, i64 %71
  %77 = sub nuw nsw i64 64, %71
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %75, ptr nonnull align 1 %76, i64 %77, i1 false)
  br label %80

78:                                               ; preds = %66
  %79 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %63, i64 noundef 65) #12
  br label %80

80:                                               ; preds = %78, %70
  %81 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %6, i64 0, i32 9
  %82 = load ptr, ptr %81, align 8, !tbaa !151
  %83 = icmp eq ptr %82, null
  %84 = getelementptr inbounds %struct.TimeMarker, ptr %82, i64 0, i32 3
  %85 = select i1 %83, ptr @.str.56, ptr %84
  %86 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %85, i64 noundef 64) #12
  %87 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %6, i64 0, i32 18
  %88 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %87, i64 noundef 200, ptr noundef nonnull @.str.57, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %89 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %6, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !150
  call void @ED_area_headerprint(ptr noundef %90, ptr noundef nonnull %87) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %3) #13
  br label %99

91:                                               ; preds = %62
  %92 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %6, i64 0, i32 18
  %93 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %6, i64 0, i32 9
  %94 = load ptr, ptr %93, align 8, !tbaa !151
  %95 = getelementptr inbounds %struct.TimeMarker, ptr %94, i64 0, i32 3
  %96 = tail call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %92, i64 noundef 200, ptr noundef nonnull @.str.58, ptr noundef nonnull %95) #12
  %97 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %6, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !150
  tail call void @ED_area_headerprint(ptr noundef %98, ptr noundef nonnull %92) #12
  br label %99

99:                                               ; preds = %57, %91, %80, %48
  %100 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %6, i64 0, i32 5
  %101 = load ptr, ptr %100, align 8, !tbaa !147
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85196800, ptr noundef %101) #12
  store i16 0, ptr %7, align 2, !tbaa !130
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @poselib_get_active_pose(ptr noundef %0) unnamed_addr #1 !PGOFuncName !174 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !100
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bAction, ptr %0, i64 0, i32 4
  %9 = add nsw i32 %5, -1
  %10 = tail call ptr @BLI_findlink(ptr noundef nonnull %8, i32 noundef %9) #12
  br label %11

11:                                               ; preds = %1, %3, %7
  %12 = phi ptr [ %10, %7 ], [ null, %3 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @poselib_backup_posecopy(ptr noundef %0) unnamed_addr #1 !PGOFuncName !175 {
  %2 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !148
  %4 = getelementptr inbounds %struct.bAction, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 7
  %9 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 10
  %10 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 11
  br label %11

11:                                               ; preds = %7, %43
  %12 = phi ptr [ %5, %7 ], [ %44, %43 ]
  %13 = load ptr, ptr %8, align 8, !tbaa !153
  %14 = getelementptr inbounds %struct.bActionGroup, ptr %12, i64 0, i32 5
  %15 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %13, ptr noundef nonnull %14) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %43, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !60
  %19 = tail call ptr %18(i64 noundef 576, ptr noundef nonnull @.str.54) #12
  %20 = getelementptr inbounds %struct.tPoseLib_Backup, ptr %19, i64 0, i32 2
  store ptr %15, ptr %20, align 8, !tbaa !176
  %21 = getelementptr inbounds %struct.tPoseLib_Backup, ptr %19, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %21, ptr noundef nonnull align 8 dereferenceable(544) %15, i64 544, i1 false)
  %22 = getelementptr inbounds %struct.bPoseChannel, ptr %15, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !179
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %23) #12
  %27 = getelementptr inbounds %struct.tPoseLib_Backup, ptr %19, i64 0, i32 4
  store ptr %26, ptr %27, align 8, !tbaa !180
  br label %28

28:                                               ; preds = %25, %17
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef nonnull %19) #12
  %29 = getelementptr inbounds %struct.bPoseChannel, ptr %15, i64 0, i32 12
  %30 = load ptr, ptr %29, align 8, !tbaa !181
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.Bone, ptr %30, i64 0, i32 10
  %34 = load i32, ptr %33, align 8, !tbaa !182
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, ptr %9, align 8, !tbaa !184
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %9, align 8, !tbaa !184
  br label %40

40:                                               ; preds = %37, %32, %28
  %41 = load i32, ptr %10, align 4, !tbaa !185
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %10, align 4, !tbaa !185
  br label %43

43:                                               ; preds = %11, %40
  %44 = load ptr, ptr %12, align 8, !tbaa !60
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %11, !llvm.loop !186

46:                                               ; preds = %43, %1
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @poselib_backup_restore(ptr nocapture noundef readonly %0) unnamed_addr #1 !PGOFuncName !187 {
  %2 = load ptr, ptr %0, align 8, !tbaa !60
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1, %16
  %5 = phi ptr [ %17, %16 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.tPoseLib_Backup, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !176
  %8 = getelementptr inbounds %struct.tPoseLib_Backup, ptr %5, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %7, ptr noundef nonnull align 8 dereferenceable(544) %8, i64 544, i1 false)
  %9 = getelementptr inbounds %struct.tPoseLib_Backup, ptr %5, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !180
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr %6, align 8, !tbaa !176
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !179
  tail call void @IDP_SyncGroupValues(ptr noundef %15, ptr noundef nonnull %10) #12
  br label %16

16:                                               ; preds = %4, %12
  %17 = load ptr, ptr %5, align 8, !tbaa !60
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %4, !llvm.loop !188

19:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_pose_where_is(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @poselib_keytag_pose(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !PGOFuncName !189 {
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %2, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !153
  %7 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %2, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !148
  %9 = tail call ptr @ANIM_get_keyingset_for_autokeying(ptr noundef %1, ptr noundef nonnull @.str.45) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %10 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %2, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !147
  %12 = tail call i32 @autokeyframe_cfra_can_key(ptr noundef %1, ptr noundef %11) #12
  %13 = trunc i32 %12 to i16
  %14 = getelementptr inbounds %struct.bAction, ptr %8, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !60
  %16 = icmp eq ptr %15, null
  br i1 %16, label %58, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %2, i64 0, i32 10
  %19 = icmp eq i16 %13, 0
  br label %20

20:                                               ; preds = %17, %55
  %21 = phi ptr [ %15, %17 ], [ %56, %55 ]
  %22 = getelementptr inbounds %struct.bActionGroup, ptr %21, i64 0, i32 5
  %23 = call ptr @BKE_pose_channel_find_name(ptr noundef %6, ptr noundef nonnull %22) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %55, label %25

25:                                               ; preds = %20
  %26 = load i32, ptr %18, align 8, !tbaa !184
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.bPoseChannel, ptr %23, i64 0, i32 12
  %30 = load ptr, ptr %29, align 8, !tbaa !181
  %31 = icmp eq ptr %30, null
  br i1 %31, label %55, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.Bone, ptr %30, i64 0, i32 10
  %34 = load i32, ptr %33, align 8, !tbaa !182
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %32, %25
  br i1 %19, label %47, label %38

38:                                               ; preds = %37
  %39 = load ptr, ptr %10, align 8, !tbaa !147
  call void @ANIM_relative_keyingset_add_source(ptr noundef nonnull %4, ptr noundef %39, ptr noundef nonnull @RNA_PoseBone, ptr noundef nonnull %23) #12
  %40 = getelementptr inbounds %struct.bPoseChannel, ptr %23, i64 0, i32 12
  %41 = load ptr, ptr %40, align 8, !tbaa !181
  %42 = icmp eq ptr %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.Bone, ptr %41, i64 0, i32 10
  %45 = load i32, ptr %44, align 8, !tbaa !182
  %46 = and i32 %45, -8193
  store i32 %46, ptr %44, align 8, !tbaa !182
  br label %55

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.bPoseChannel, ptr %23, i64 0, i32 12
  %49 = load ptr, ptr %48, align 8, !tbaa !181
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.Bone, ptr %49, i64 0, i32 10
  %53 = load i32, ptr %52, align 8, !tbaa !182
  %54 = or i32 %53, 8192
  store i32 %54, ptr %52, align 8, !tbaa !182
  br label %55

55:                                               ; preds = %20, %43, %38, %51, %47, %32, %28
  %56 = load ptr, ptr %21, align 8, !tbaa !60
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %20, !llvm.loop !190

58:                                               ; preds = %55, %3
  %59 = icmp eq i16 %13, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 22, i32 5
  %62 = load i32, ptr %61, align 8, !tbaa !78
  %63 = sitofp i32 %62 to float
  %64 = call i32 @ANIM_apply_keyingset(ptr noundef %0, ptr noundef nonnull %4, ptr noundef null, ptr noundef %9, i16 noundef signext 0, float noundef %63) #12
  call void @BLI_freelistN(ptr noundef nonnull %4) #12
  br label %65

65:                                               ; preds = %60, %58
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239468545, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @poselib_backup_free_data(ptr noundef %0) unnamed_addr #1 !PGOFuncName !191 {
  %2 = load ptr, ptr %0, align 8, !tbaa !192
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1, %13
  %5 = phi ptr [ %6, %13 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !193
  %7 = getelementptr inbounds %struct.tPoseLib_Backup, ptr %5, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !180
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  tail call void @IDP_FreeProperty(ptr noundef nonnull %8) #12
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !60
  %12 = load ptr, ptr %7, align 8, !tbaa !180
  tail call void %11(ptr noundef %12) #12
  br label %13

13:                                               ; preds = %10, %4
  tail call void @BLI_freelinkN(ptr noundef nonnull %0, ptr noundef nonnull %5) #12
  %14 = icmp eq ptr %6, null
  br i1 %14, label %15, label %4, !llvm.loop !194

15:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IDP_SyncGroupValues(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ANIM_get_keyingset_for_autokeying(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @autokeyframe_cfra_can_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ANIM_relative_keyingset_add_source(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @poselib_apply_pose(ptr noundef %0) unnamed_addr #1 !PGOFuncName !195 {
  %2 = alloca %struct.KeyframeEditData, align 8
  %3 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 4
  %4 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !154
  %6 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !153
  %8 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !148
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, i8 0, i64 64, i1 false)
  %10 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !151
  %12 = icmp eq ptr %11, null
  br i1 %12, label %58, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.TimeMarker, ptr %11, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !61
  %16 = tail call ptr @ANIM_editkeyframes_ok(i16 noundef signext 2) #12
  %17 = sitofp i32 %15 to float
  %18 = getelementptr inbounds %struct.KeyframeEditData, ptr %2, i64 0, i32 3
  %19 = insertelement <2 x float> poison, float %17, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = fadd <2 x float> %20, <float -5.000000e-01, float 5.000000e-01>
  store <2 x float> %21, ptr %18, align 8, !tbaa !106
  %22 = getelementptr inbounds %struct.bAction, ptr %9, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !60
  %24 = icmp eq ptr %23, null
  br i1 %24, label %58, label %25

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 10
  %27 = getelementptr inbounds %struct.bArmature, ptr %5, i64 0, i32 15
  br label %28

28:                                               ; preds = %25, %55
  %29 = phi ptr [ %23, %25 ], [ %56, %55 ]
  %30 = call signext i16 @ANIM_animchanneldata_keyframes_loop(ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull %29, i32 noundef 9, ptr noundef null, ptr noundef %16, ptr noundef null) #12
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %55, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.bActionGroup, ptr %29, i64 0, i32 5
  %34 = call ptr @BKE_pose_channel_find_name(ptr noundef %7, ptr noundef nonnull %33) #12
  %35 = icmp eq ptr %34, null
  br i1 %35, label %55, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr %26, align 8, !tbaa !184
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.bPoseChannel, ptr %34, i64 0, i32 12
  %41 = load ptr, ptr %40, align 8, !tbaa !181
  %42 = icmp eq ptr %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.Bone, ptr %41, i64 0, i32 10
  %45 = load i32, ptr %44, align 8, !tbaa !182
  %46 = and i32 %45, 65
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.Bone, ptr %41, i64 0, i32 25
  %50 = load i32, ptr %49, align 8, !tbaa !196
  %51 = load i32, ptr %27, align 8, !tbaa !197
  %52 = and i32 %51, %50
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %36, %48
  call void @animsys_evaluate_action_group(ptr noundef nonnull %3, ptr noundef %9, ptr noundef nonnull %29, ptr noundef null, float noundef %17) #12
  br label %55

55:                                               ; preds = %48, %54, %39, %43, %28, %32
  %56 = load ptr, ptr %29, align 8, !tbaa !60
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %28, !llvm.loop !198

58:                                               ; preds = %55, %13, %1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #13
  ret void
}

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ANIM_editkeyframes_ok(i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare signext i16 @ANIM_animchanneldata_keyframes_loop(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @animsys_evaluate_action_group(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @poselib_preview_exit(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 !PGOFuncName !199 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !123
  %5 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 12
  %6 = load i16, ptr %5, align 8, !tbaa !124
  tail call fastcc void @poselib_preview_cleanup(ptr noundef %0, ptr noundef %1) #11
  %7 = icmp eq i16 %6, -1
  %8 = icmp eq i16 %6, 2
  %9 = or i1 %7, %8
  %10 = select i1 %9, i32 2, i32 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @poselib_preview_handle_event(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !PGOFuncName !200 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !123
  %5 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 3
  %6 = load i16, ptr %5, align 2, !tbaa !201
  %7 = icmp ult i16 %6, 2
  br i1 %7, label %8, label %113

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 17
  %10 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 16
  %11 = tail call ptr @BLI_strncpy(ptr noundef nonnull %9, ptr noundef nonnull %10, i64 noundef 64) #12
  %12 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 14
  %13 = load i16, ptr %12, align 4, !tbaa !152
  %14 = and i16 %13, 2
  %15 = icmp eq i16 %14, 0
  %16 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %17 = load i16, ptr %16, align 8, !tbaa !204
  br i1 %15, label %27, label %18

18:                                               ; preds = %8
  switch i16 %17, label %113 [
    i16 218, label %19
    i16 3, label %19
    i16 1, label %21
    i16 220, label %21
    i16 163, label %21
    i16 221, label %21
    i16 150, label %23
    i16 151, label %23
    i16 152, label %23
    i16 153, label %23
    i16 154, label %23
    i16 155, label %23
    i16 156, label %23
    i16 157, label %23
    i16 158, label %23
    i16 159, label %23
    i16 164, label %23
    i16 162, label %23
    i16 2, label %23
    i16 4, label %23
    i16 219, label %24
  ]

19:                                               ; preds = %18, %18
  %20 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 12
  store i16 2, ptr %20, align 8, !tbaa !124
  br label %113

21:                                               ; preds = %18, %18, %18, %18
  %22 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 12
  store i16 1, ptr %22, align 8, !tbaa !124
  br label %113

23:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18
  br label %113

24:                                               ; preds = %18
  %25 = and i16 %13, -3
  store i16 %25, ptr %12, align 4, !tbaa !152
  %26 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 13
  store i16 1, ptr %26, align 2, !tbaa !130
  br label %113

27:                                               ; preds = %8
  switch i16 %17, label %110 [
    i16 218, label %28
    i16 3, label %28
    i16 1, label %30
    i16 220, label %30
    i16 163, label %30
    i16 221, label %30
    i16 219, label %32
    i16 168, label %35
    i16 10, label %35
    i16 169, label %37
    i16 11, label %37
    i16 138, label %39
    i16 140, label %41
    i16 139, label %43
    i16 137, label %58
    i16 167, label %71
    i16 170, label %85
    i16 2, label %113
    i16 4, label %113
    i16 150, label %104
    i16 151, label %104
    i16 152, label %104
    i16 153, label %104
    i16 154, label %104
    i16 155, label %104
    i16 156, label %104
    i16 157, label %104
    i16 158, label %104
    i16 159, label %104
    i16 164, label %104
    i16 162, label %104
  ]

28:                                               ; preds = %27, %27
  %29 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 12
  store i16 2, ptr %29, align 8, !tbaa !124
  br label %113

30:                                               ; preds = %27, %27, %27, %27
  %31 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 12
  store i16 1, ptr %31, align 8, !tbaa !124
  br label %113

32:                                               ; preds = %27
  %33 = or disjoint i16 %13, 2
  store i16 %33, ptr %12, align 4, !tbaa !152
  %34 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 13
  store i16 1, ptr %34, align 2, !tbaa !130
  br label %113

35:                                               ; preds = %27, %27
  tail call fastcc void @poselib_preview_get_next(ptr noundef nonnull %4, i32 noundef -1) #11
  %36 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 13
  store i16 1, ptr %36, align 2, !tbaa !130
  br label %113

37:                                               ; preds = %27, %27
  tail call fastcc void @poselib_preview_get_next(ptr noundef nonnull %4, i32 noundef 1) #11
  %38 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 13
  store i16 1, ptr %38, align 2, !tbaa !130
  br label %113

39:                                               ; preds = %27
  tail call fastcc void @poselib_preview_get_next(ptr noundef nonnull %4, i32 noundef -5) #11
  %40 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 13
  store i16 1, ptr %40, align 2, !tbaa !130
  br label %113

41:                                               ; preds = %27
  tail call fastcc void @poselib_preview_get_next(ptr noundef nonnull %4, i32 noundef 5) #11
  %42 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 13
  store i16 1, ptr %42, align 2, !tbaa !130
  br label %113

43:                                               ; preds = %27
  %44 = load i8, ptr %10, align 8, !tbaa !117
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 15
  %48 = load i16, ptr %47, align 2, !tbaa !157
  %49 = sext i16 %48 to i64
  %50 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #14
  %51 = icmp ugt i64 %50, %49
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = add i16 %48, 1
  store i16 %53, ptr %47, align 2, !tbaa !157
  br label %54

54:                                               ; preds = %52, %46
  %55 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 13
  store i16 2, ptr %55, align 2, !tbaa !130
  br label %113

56:                                               ; preds = %43
  tail call fastcc void @poselib_preview_get_next(ptr noundef nonnull %4, i32 noundef 1) #11
  %57 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 13
  store i16 1, ptr %57, align 2, !tbaa !130
  br label %113

58:                                               ; preds = %27
  %59 = load i8, ptr %10, align 8, !tbaa !117
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 15
  %63 = load i16, ptr %62, align 2, !tbaa !157
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = add i16 %63, -1
  store i16 %66, ptr %62, align 2, !tbaa !157
  br label %67

67:                                               ; preds = %65, %61
  %68 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 13
  store i16 2, ptr %68, align 2, !tbaa !130
  br label %113

69:                                               ; preds = %58
  tail call fastcc void @poselib_preview_get_next(ptr noundef nonnull %4, i32 noundef -1) #11
  %70 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 13
  store i16 1, ptr %70, align 2, !tbaa !130
  br label %113

71:                                               ; preds = %27
  %72 = load i8, ptr %10, align 8, !tbaa !117
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 15
  store i16 0, ptr %75, align 2, !tbaa !157
  %76 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 13
  store i16 2, ptr %76, align 2, !tbaa !130
  br label %113

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 8
  %79 = load ptr, ptr %78, align 8, !tbaa !148
  %80 = getelementptr inbounds %struct.bAction, ptr %79, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !69
  %82 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 9
  store ptr %81, ptr %82, align 8, !tbaa !151
  %83 = getelementptr inbounds %struct.bAction, ptr %79, i64 0, i32 6
  store i32 1, ptr %83, align 4, !tbaa !100
  %84 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 13
  store i16 1, ptr %84, align 2, !tbaa !130
  br label %113

85:                                               ; preds = %27
  %86 = load i8, ptr %10, align 8, !tbaa !117
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #14
  %90 = trunc i64 %89 to i16
  %91 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 15
  store i16 %90, ptr %91, align 2, !tbaa !157
  %92 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 13
  store i16 2, ptr %92, align 2, !tbaa !130
  br label %113

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 8
  %95 = load ptr, ptr %94, align 8, !tbaa !148
  %96 = getelementptr inbounds %struct.bAction, ptr %95, i64 0, i32 4, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !205
  %98 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 9
  store ptr %97, ptr %98, align 8, !tbaa !151
  %99 = getelementptr inbounds %struct.bAction, ptr %95, i64 0, i32 4
  %100 = tail call i32 @BLI_countlist(ptr noundef nonnull %99) #12
  %101 = load ptr, ptr %94, align 8, !tbaa !148
  %102 = getelementptr inbounds %struct.bAction, ptr %101, i64 0, i32 6
  store i32 %100, ptr %102, align 4, !tbaa !100
  %103 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %4, i64 0, i32 13
  store i16 1, ptr %103, align 2, !tbaa !130
  br label %113

104:                                              ; preds = %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27, %27
  %105 = load i8, ptr %10, align 8, !tbaa !117
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 8
  %109 = load i8, ptr %108, align 2, !tbaa !206
  tail call fastcc void @poselib_preview_handle_search(ptr noundef nonnull %4, i16 noundef zeroext %17, i8 noundef zeroext %109) #11
  br label %113

110:                                              ; preds = %27
  %111 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 8
  %112 = load i8, ptr %111, align 2, !tbaa !206
  tail call fastcc void @poselib_preview_handle_search(ptr noundef nonnull %4, i16 noundef zeroext %17, i8 noundef zeroext %112) #11
  br label %113

113:                                              ; preds = %2, %28, %30, %32, %35, %37, %39, %41, %110, %56, %54, %69, %67, %77, %74, %93, %88, %107, %27, %27, %104, %19, %21, %23, %24, %18
  %114 = phi i32 [ 1, %2 ], [ 1, %18 ], [ 1, %24 ], [ 8, %23 ], [ 1, %21 ], [ 1, %19 ], [ 1, %110 ], [ 1, %107 ], [ 1, %88 ], [ 1, %93 ], [ 1, %74 ], [ 1, %77 ], [ 1, %67 ], [ 1, %69 ], [ 1, %54 ], [ 1, %56 ], [ 1, %41 ], [ 1, %39 ], [ 1, %37 ], [ 1, %35 ], [ 1, %32 ], [ 1, %30 ], [ 1, %28 ], [ 8, %27 ], [ 8, %27 ], [ 8, %104 ]
  ret i32 %114
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @poselib_preview_get_next(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !PGOFuncName !207 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %145, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 16
  %6 = load i8, ptr %5, align 8, !tbaa !117
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %91, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 17
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %9) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 1
  tail call void @BLI_freelistN(ptr noundef nonnull %13) #12
  %14 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !148
  %16 = getelementptr inbounds %struct.bAction, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %12, %28
  %20 = phi ptr [ %29, %28 ], [ %17, %12 ]
  %21 = getelementptr inbounds %struct.TimeMarker, ptr %20, i64 0, i32 3
  %22 = tail call ptr @BLI_strcasestr(ptr noundef nonnull %21, ptr noundef nonnull %5) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !60
  %26 = tail call ptr %25(i64 noundef 24, ptr noundef nonnull @.str.59) #12
  %27 = getelementptr inbounds %struct.LinkData, ptr %26, i64 0, i32 2
  store ptr %20, ptr %27, align 8, !tbaa !208
  tail call void @BLI_addtail(ptr noundef nonnull %13, ptr noundef %26) #12
  br label %28

28:                                               ; preds = %19, %24
  %29 = load ptr, ptr %20, align 8, !tbaa !60
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %19, !llvm.loop !210

31:                                               ; preds = %28, %12
  %32 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 9
  store ptr null, ptr %32, align 8, !tbaa !151
  br label %33

33:                                               ; preds = %31, %8
  %34 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 1
  %35 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %34) #11, !range !211
  %36 = icmp eq i8 %35, 0
  %37 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 9
  br i1 %36, label %39, label %38

38:                                               ; preds = %33
  store ptr null, ptr %37, align 8, !tbaa !151
  br label %145

39:                                               ; preds = %33, %43
  %40 = phi ptr [ %41, %43 ], [ %34, %33 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !60
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.LinkData, ptr %41, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !208
  %46 = load ptr, ptr %37, align 8, !tbaa !151
  %47 = icmp eq ptr %45, %46
  br i1 %47, label %50, label %39, !llvm.loop !212

48:                                               ; preds = %39
  %49 = load ptr, ptr %34, align 8, !tbaa !213
  br label %50

50:                                               ; preds = %43, %48
  %51 = phi ptr [ %49, %48 ], [ %41, %43 ]
  %52 = icmp sgt i32 %1, 0
  %53 = icmp eq ptr %51, null
  br i1 %52, label %57, label %54

54:                                               ; preds = %50
  br i1 %53, label %145, label %55

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 1, i32 1
  br label %71

57:                                               ; preds = %50
  br i1 %53, label %145, label %58

58:                                               ; preds = %57, %65
  %59 = phi ptr [ %66, %65 ], [ %51, %57 ]
  %60 = phi i32 [ %67, %65 ], [ %1, %57 ]
  %61 = load ptr, ptr %59, align 8, !tbaa !214
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load ptr, ptr %34, align 8, !tbaa !213
  br label %65

65:                                               ; preds = %58, %63
  %66 = phi ptr [ %64, %63 ], [ %61, %58 ]
  %67 = add nsw i32 %60, -1
  %68 = icmp ne ptr %66, null
  %69 = icmp ne i32 %67, 0
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %58, label %85, !llvm.loop !215

71:                                               ; preds = %55, %79
  %72 = phi ptr [ %51, %55 ], [ %80, %79 ]
  %73 = phi i32 [ %1, %55 ], [ %81, %79 ]
  %74 = getelementptr inbounds %struct.LinkData, ptr %72, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !216
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load ptr, ptr %56, align 8, !tbaa !217
  br label %79

79:                                               ; preds = %71, %77
  %80 = phi ptr [ %78, %77 ], [ %75, %71 ]
  %81 = add nsw i32 %73, 1
  %82 = icmp ne ptr %80, null
  %83 = icmp ne i32 %81, 0
  %84 = select i1 %82, i1 %83, i1 false
  br i1 %84, label %71, label %85, !llvm.loop !218

85:                                               ; preds = %79, %65
  %86 = phi ptr [ %66, %65 ], [ %80, %79 ]
  %87 = icmp eq ptr %86, null
  br i1 %87, label %145, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.LinkData, ptr %86, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !208
  store ptr %90, ptr %37, align 8, !tbaa !151
  br label %145

91:                                               ; preds = %4
  %92 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 9
  %93 = load ptr, ptr %92, align 8, !tbaa !151
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 8
  %97 = load ptr, ptr %96, align 8, !tbaa !148
  %98 = getelementptr inbounds %struct.bAction, ptr %97, i64 0, i32 4
  %99 = load ptr, ptr %98, align 8, !tbaa !69
  store ptr %99, ptr %92, align 8, !tbaa !151
  br label %100

100:                                              ; preds = %95, %91
  %101 = phi ptr [ %99, %95 ], [ %93, %91 ]
  %102 = icmp sgt i32 %1, 0
  %103 = icmp eq ptr %101, null
  br i1 %102, label %104, label %122

104:                                              ; preds = %100
  br i1 %103, label %145, label %105

105:                                              ; preds = %104
  %106 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 8
  br label %107

107:                                              ; preds = %105, %116
  %108 = phi ptr [ %101, %105 ], [ %117, %116 ]
  %109 = phi i32 [ %1, %105 ], [ %118, %116 ]
  %110 = load ptr, ptr %108, align 8, !tbaa !71
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load ptr, ptr %106, align 8, !tbaa !148
  %114 = getelementptr inbounds %struct.bAction, ptr %113, i64 0, i32 4
  %115 = load ptr, ptr %114, align 8, !tbaa !69
  br label %116

116:                                              ; preds = %107, %112
  %117 = phi ptr [ %115, %112 ], [ %110, %107 ]
  %118 = add nsw i32 %109, -1
  %119 = icmp ne ptr %117, null
  %120 = icmp ne i32 %118, 0
  %121 = select i1 %119, i1 %120, i1 false
  br i1 %121, label %107, label %141, !llvm.loop !219

122:                                              ; preds = %100
  br i1 %103, label %145, label %123

123:                                              ; preds = %122
  %124 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 8
  br label %125

125:                                              ; preds = %123, %135
  %126 = phi ptr [ %101, %123 ], [ %136, %135 ]
  %127 = phi i32 [ %1, %123 ], [ %137, %135 ]
  %128 = getelementptr inbounds %struct.TimeMarker, ptr %126, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !220
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load ptr, ptr %124, align 8, !tbaa !148
  %133 = getelementptr inbounds %struct.bAction, ptr %132, i64 0, i32 4, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !205
  br label %135

135:                                              ; preds = %125, %131
  %136 = phi ptr [ %134, %131 ], [ %129, %125 ]
  %137 = add nsw i32 %127, 1
  %138 = icmp ne ptr %136, null
  %139 = icmp ne i32 %137, 0
  %140 = select i1 %138, i1 %139, i1 false
  br i1 %140, label %125, label %141, !llvm.loop !221

141:                                              ; preds = %135, %116
  %142 = phi ptr [ %117, %116 ], [ %136, %135 ]
  %143 = icmp eq ptr %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %141
  store ptr %142, ptr %92, align 8, !tbaa !151
  br label %145

145:                                              ; preds = %122, %104, %54, %57, %141, %144, %38, %88, %85, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @poselib_preview_handle_search(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #1 !PGOFuncName !222 {
  switch i16 %1, label %69 [
    i16 223, label %4
    i16 224, label %36
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 16
  %6 = load i8, ptr %5, align 8, !tbaa !117
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %69, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 15
  %10 = load i16, ptr %9, align 2, !tbaa !157
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %69, label %12

12:                                               ; preds = %8
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #14
  %14 = trunc i64 %13 to i32
  %15 = shl i32 %14, 16
  %16 = ashr exact i32 %15, 16
  %17 = sext i16 %10 to i32
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %33, label %19

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
  br i1 %30, label %31, label %19, !llvm.loop !223

31:                                               ; preds = %19
  %32 = load i16, ptr %9, align 2, !tbaa !157
  br label %33

33:                                               ; preds = %31, %12
  %34 = phi i16 [ %32, %31 ], [ %10, %12 ]
  %35 = add i16 %34, -1
  store i16 %35, ptr %9, align 2, !tbaa !157
  br label %101

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 16
  %38 = load i8, ptr %37, align 8, !tbaa !117
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %69, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 16, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !117
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %69, label %44

44:                                               ; preds = %40
  %45 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %37) #14
  %46 = trunc i64 %45 to i32
  %47 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 15
  %48 = load i16, ptr %47, align 2, !tbaa !157
  %49 = sext i16 %48 to i32
  %50 = shl i32 %46, 16
  %51 = ashr exact i32 %50, 16
  %52 = icmp sgt i32 %51, %49
  br i1 %52, label %53, label %66

53:                                               ; preds = %44
  %54 = sext i16 %48 to i64
  %55 = shl i64 %45, 48
  %56 = ashr exact i64 %55, 48
  br label %57

57:                                               ; preds = %53, %57
  %58 = phi i64 [ %54, %53 ], [ %59, %57 ]
  %59 = add nsw i64 %58, 1
  %60 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 16, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !117
  %62 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 16, i64 %58
  store i8 %61, ptr %62, align 1, !tbaa !117
  %63 = icmp eq i64 %59, %56
  br i1 %63, label %64, label %57, !llvm.loop !224

64:                                               ; preds = %57
  tail call fastcc void @poselib_preview_get_next(ptr noundef nonnull %0, i32 noundef 1) #11
  %65 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 13
  store i16 1, ptr %65, align 2, !tbaa !130
  br label %66

66:                                               ; preds = %44, %64
  %67 = icmp eq i8 %2, 0
  %68 = or i1 %67, %52
  br i1 %68, label %103, label %71

69:                                               ; preds = %36, %40, %4, %8, %3
  %70 = icmp eq i8 %2, 0
  br i1 %70, label %103, label %71

71:                                               ; preds = %66, %69
  %72 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 15
  %73 = load i16, ptr %72, align 2, !tbaa !157
  %74 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 16
  %75 = load i8, ptr %74, align 8, !tbaa !117
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %94, label %77

77:                                               ; preds = %71
  %78 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %74) #14
  %79 = trunc i64 %78 to i16
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %94, label %81

81:                                               ; preds = %77
  %82 = icmp slt i16 %73, %79
  br i1 %82, label %83, label %96

83:                                               ; preds = %81
  %84 = shl i64 %78, 48
  %85 = ashr exact i64 %84, 48
  %86 = sext i16 %73 to i64
  br label %87

87:                                               ; preds = %83, %87
  %88 = phi i64 [ %85, %83 ], [ %89, %87 ]
  %89 = add nsw i64 %88, -1
  %90 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 16, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !117
  %92 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 16, i64 %88
  store i8 %91, ptr %92, align 1, !tbaa !117
  %93 = icmp sgt i64 %89, %86
  br i1 %93, label %87, label %96, !llvm.loop !225

94:                                               ; preds = %71, %77
  %95 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 16, i64 1
  store i8 0, ptr %95, align 1, !tbaa !117
  br label %96

96:                                               ; preds = %87, %81, %94
  %97 = sext i16 %73 to i64
  %98 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 16, i64 %97
  store i8 %2, ptr %98, align 1, !tbaa !117
  %99 = load i16, ptr %72, align 2, !tbaa !157
  %100 = add i16 %99, 1
  store i16 %100, ptr %72, align 2, !tbaa !157
  br label %101

101:                                              ; preds = %96, %33
  tail call fastcc void @poselib_preview_get_next(ptr noundef nonnull %0, i32 noundef 1) #11
  %102 = getelementptr inbounds %struct.tPoseLib_PreviewData, ptr %0, i64 0, i32 13
  store i16 1, ptr %102, align 2, !tbaa !130
  br label %103

103:                                              ; preds = %101, %66, %69
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @BLI_strcasestr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !226 {
  %2 = load ptr, ptr %0, align 8, !tbaa !227
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize willreturn memory(read) }

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
!47 = !{!"pose_lib.c:poselib_new_exec"}
!48 = !{!"pose_lib.c:poselib_unlink_exec"}
!49 = !{!50, !36, i64 280}
!50 = !{!"Object", !51, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !52, i64 140, !52, i64 144, !52, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !53, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !52, i64 432, !52, i64 436, !36, i64 440, !36, i64 448, !52, i64 456, !52, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !54, i64 616, !54, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !52, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !52, i64 968, !52, i64 972, !52, i64 976, !52, i64 980, !52, i64 984, !54, i64 988, !54, i64 992, !54, i64 996, !54, i64 1000, !54, i64 1004, !54, i64 1008, !54, i64 1012, !54, i64 1016, !54, i64 1020, !54, i64 1024, !54, i64 1028, !54, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !54, i64 1048, !54, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !54, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !52, i64 1144, !52, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !54, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !55, i64 1304, !55, i64 1312, !52, i64 1320, !52, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!51 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !52, i64 100, !52, i64 104, !52, i64 108, !36, i64 112}
!52 = !{!"int", !37, i64 0}
!53 = !{!"bAnimVizSettings", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !52, i64 32, !52, i64 36, !52, i64 40, !52, i64 44}
!54 = !{!"float", !37, i64 0}
!55 = !{!"long", !37, i64 0}
!56 = !{!"pose_lib.c:has_poselib_pose_data_poll"}
!57 = !{!"pose_lib.c:poselib_sanitize_exec"}
!58 = !{!59, !36, i64 120}
!59 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!60 = !{!36, !36, i64 0}
!61 = !{!62, !52, i64 16}
!62 = !{!"TimeMarker", !36, i64 0, !36, i64 8, !52, i64 16, !37, i64 20, !52, i64 84, !36, i64 88}
!63 = !{!64, !54, i64 44}
!64 = !{!"ActKeyColumn", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 41, !41, i64 42, !54, i64 44, !41, i64 48, !41, i64 50}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!62, !52, i64 84}
!68 = distinct !{!68, !66}
!69 = !{!70, !36, i64 168}
!70 = !{!"bAction", !51, i64 0, !39, i64 120, !39, i64 136, !39, i64 152, !39, i64 168, !52, i64 184, !52, i64 188, !52, i64 192, !52, i64 196}
!71 = !{!62, !36, i64 0}
!72 = distinct !{!72, !66}
!73 = !{!35, !36, i64 48}
!74 = !{!35, !36, i64 88}
!75 = !{!"pose_lib.c:poselib_add_menu_invoke"}
!76 = !{!50, !36, i64 288}
!77 = !{!59, !36, i64 88}
!78 = !{!79, !52, i64 680}
!79 = !{!"Scene", !51, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !52, i64 232, !52, i64 236, !52, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !80, i64 280, !89, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !52, i64 4380, !39, i64 4384, !90, i64 4400, !91, i64 4416, !94, i64 4600, !36, i64 4608, !95, i64 4616, !36, i64 4640, !55, i64 4648, !55, i64 4656, !82, i64 4664, !83, i64 4824, !96, i64 4888, !36, i64 4952}
!80 = !{!"RenderData", !81, i64 0, !36, i64 248, !36, i64 256, !84, i64 264, !85, i64 328, !52, i64 400, !52, i64 404, !52, i64 408, !54, i64 412, !52, i64 416, !52, i64 420, !52, i64 424, !52, i64 428, !41, i64 432, !41, i64 434, !54, i64 436, !54, i64 440, !54, i64 444, !54, i64 448, !54, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !52, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !52, i64 484, !52, i64 488, !41, i64 492, !41, i64 494, !52, i64 496, !52, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !52, i64 516, !52, i64 520, !52, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !86, i64 544, !86, i64 560, !87, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !54, i64 612, !54, i64 616, !54, i64 620, !54, i64 624, !52, i64 628, !54, i64 632, !54, i64 636, !54, i64 640, !54, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !54, i64 660, !54, i64 664, !41, i64 668, !41, i64 670, !54, i64 672, !54, i64 676, !37, i64 680, !52, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !52, i64 2520, !41, i64 2524, !41, i64 2526, !54, i64 2528, !54, i64 2532, !41, i64 2536, !41, i64 2538, !54, i64 2540, !41, i64 2544, !41, i64 2546, !52, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !54, i64 2560, !54, i64 2564, !36, i64 2568, !52, i64 2576, !54, i64 2580, !37, i64 2584, !88, i64 2616, !52, i64 3976, !52, i64 3980}
!81 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !54, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !82, i64 24, !83, i64 184}
!82 = !{!"ColorManagedViewSettings", !52, i64 0, !52, i64 4, !37, i64 8, !37, i64 72, !54, i64 136, !54, i64 140, !36, i64 144, !36, i64 152}
!83 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!84 = !{!"QuicktimeCodecSettings", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !52, i64 32, !52, i64 36, !52, i64 40, !52, i64 44, !41, i64 48, !41, i64 50, !52, i64 52, !52, i64 56, !52, i64 60}
!85 = !{!"FFMpegCodecData", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !54, i64 32, !52, i64 36, !52, i64 40, !52, i64 44, !52, i64 48, !52, i64 52, !52, i64 56, !52, i64 60, !36, i64 64}
!86 = !{!"rctf", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12}
!87 = !{!"rcti", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12}
!88 = !{!"BakeData", !81, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !54, i64 1280, !54, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!89 = !{!"AudioData", !52, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !52, i64 16, !41, i64 20, !41, i64 22, !54, i64 24, !54, i64 28}
!90 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!91 = !{!"GameData", !90, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !92, i64 40, !41, i64 64, !41, i64 66, !54, i64 68, !93, i64 72, !54, i64 128, !54, i64 132, !52, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !54, i64 164, !54, i64 168, !54, i64 172, !54, i64 176, !54, i64 180}
!92 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !54, i64 8, !54, i64 12, !36, i64 16}
!93 = !{!"RecastData", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36, !52, i64 40, !54, i64 44, !54, i64 48, !41, i64 52, !41, i64 54}
!94 = !{!"UnitSettings", !54, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!95 = !{!"PhysicsSettings", !37, i64 0, !52, i64 12, !52, i64 16, !52, i64 20}
!96 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!97 = !{!"pose_lib.c:poselib_add_exec"}
!98 = !{!59, !36, i64 112}
!99 = distinct !{!99, !66}
!100 = !{!70, !52, i64 188}
!101 = !{!35, !36, i64 104}
!102 = !{!"pose_lib.c:poselib_remove_exec"}
!103 = !{!104, !36, i64 48}
!104 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 48, !36, i64 56, !52, i64 64, !54, i64 68, !41, i64 72, !41, i64 74, !52, i64 76, !36, i64 80, !52, i64 88, !37, i64 92, !54, i64 104, !54, i64 108}
!105 = !{!104, !52, i64 64}
!106 = !{!54, !54, i64 0}
!107 = distinct !{!107, !66}
!108 = distinct !{!108, !66}
!109 = !{!"pose_lib.c:poselib_stored_pose_itemf"}
!110 = !{!52, !52, i64 0}
!111 = !{!112, !36, i64 24}
!112 = !{!"EnumPropertyItem", !52, i64 0, !36, i64 8, !52, i64 16, !36, i64 24, !36, i64 32}
!113 = !{!112, !36, i64 8}
!114 = !{!112, !52, i64 16}
!115 = !{!112, !52, i64 0}
!116 = distinct !{!116, !66}
!117 = !{!37, !37, i64 0}
!118 = !{!"pose_lib.c:poselib_rename_invoke"}
!119 = !{!"pose_lib.c:poselib_rename_exec"}
!120 = !{!35, !36, i64 64}
!121 = !{!35, !36, i64 56}
!122 = !{!"pose_lib.c:poselib_preview_invoke"}
!123 = !{!59, !36, i64 96}
!124 = !{!125, !41, i64 120}
!125 = !{!"tPoseLib_PreviewData", !39, i64 0, !39, i64 16, !36, i64 32, !36, i64 40, !126, i64 48, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !52, i64 112, !52, i64 116, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !37, i64 128, !37, i64 192, !37, i64 256}
!126 = !{!"PointerRNA", !127, i64 0, !36, i64 8, !36, i64 16}
!127 = !{!"", !36, i64 0}
!128 = !{!"pose_lib.c:poselib_preview_modal"}
!129 = !{i32 2, i32 5}
!130 = !{!125, !41, i64 122}
!131 = !{!"pose_lib.c:poselib_preview_cancel"}
!132 = !{!"pose_lib.c:poselib_preview_exec"}
!133 = !{!"pose_lib.c:get_poselib_object"}
!134 = !{!135, !37, i64 72}
!135 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !87, i64 56, !37, i64 72, !37, i64 73, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !41, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !39, i64 96, !39, i64 112, !39, i64 128, !39, i64 144}
!136 = !{!"pose_lib.c:poselib_init_new"}
!137 = !{!138, !36, i64 0}
!138 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !52, i64 2096, !52, i64 2100, !37, i64 2104, !52, i64 2108, !52, i64 2112, !37, i64 2116}
!139 = !{!70, !52, i64 192}
!140 = !{!"pose_lib.c:poselib_get_free_index"}
!141 = distinct !{!141, !66}
!142 = !{!"pose_lib.c:poselib_add_menu_invoke__replacemenu"}
!143 = !{i64 0, i64 8, !60, i64 8, i64 8, !60, i64 16, i64 8, !60}
!144 = distinct !{!144, !66}
!145 = !{!"pose_lib.c:poselib_validate"}
!146 = !{!"pose_lib.c:poselib_preview_init_data"}
!147 = !{!125, !36, i64 72}
!148 = !{!125, !36, i64 96}
!149 = !{!125, !36, i64 32}
!150 = !{!125, !36, i64 40}
!151 = !{!125, !36, i64 104}
!152 = !{!125, !41, i64 124}
!153 = !{!125, !36, i64 88}
!154 = !{!125, !36, i64 80}
!155 = !{!156, !41, i64 24}
!156 = !{!"bPose", !39, i64 0, !36, i64 16, !41, i64 24, !41, i64 26, !52, i64 28, !52, i64 32, !54, i64 36, !37, i64 40, !37, i64 52, !39, i64 64, !52, i64 80, !52, i64 84, !36, i64 88, !36, i64 96, !53, i64 104, !37, i64 152}
!157 = !{!125, !41, i64 126}
!158 = !{!"pose_lib.c:poselib_preview_cleanup"}
!159 = !{!160, !52, i64 192}
!160 = !{!"bArmature", !51, i64 0, !36, i64 120, !39, i64 128, !39, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !52, i64 192, !52, i64 196, !52, i64 200, !52, i64 204, !41, i64 208, !41, i64 210, !52, i64 212, !52, i64 216, !52, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !52, i64 232, !52, i64 236, !52, i64 240, !52, i64 244, !52, i64 248, !52, i64 252}
!161 = !{!79, !36, i64 264}
!162 = !{!163, !41, i64 344}
!163 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !54, i64 32, !54, i64 36, !54, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !54, i64 52, !41, i64 56, !37, i64 58, !37, i64 59, !164, i64 64, !166, i64 168, !54, i64 336, !54, i64 340, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 349, !41, i64 350, !54, i64 352, !54, i64 356, !54, i64 360, !54, i64 364, !54, i64 368, !54, i64 372, !54, i64 376, !54, i64 380, !54, i64 384, !54, i64 388, !41, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !41, i64 434, !41, i64 436, !41, i64 438, !41, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !52, i64 448, !52, i64 452, !52, i64 456, !52, i64 460, !41, i64 464, !41, i64 466, !52, i64 468, !54, i64 472, !54, i64 476, !167, i64 480, !168, i64 608}
!164 = !{!"ImagePaintSettings", !165, i64 0, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !37, i64 48, !52, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !54, i64 100}
!165 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !52, i64 28, !52, i64 32, !52, i64 36}
!166 = !{!"ParticleEditSettings", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !37, i64 8, !36, i64 120, !54, i64 128, !54, i64 132, !52, i64 136, !52, i64 140, !52, i64 144, !52, i64 148, !36, i64 152, !36, i64 160}
!167 = !{!"UnifiedPaintSettings", !52, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !37, i64 16, !37, i64 28, !52, i64 40, !37, i64 44, !54, i64 52, !52, i64 56, !52, i64 60, !37, i64 64, !37, i64 65, !54, i64 72, !37, i64 76, !52, i64 84, !54, i64 88, !37, i64 92, !37, i64 100, !52, i64 108, !36, i64 112, !54, i64 120, !52, i64 124}
!168 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !37, i64 20, !37, i64 21, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36}
!169 = !{!170, !41, i64 8976}
!170 = !{!"UserDef", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !52, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !52, i64 8484, !52, i64 8488, !52, i64 8492, !41, i64 8496, !41, i64 8498, !52, i64 8500, !52, i64 8504, !52, i64 8508, !52, i64 8512, !52, i64 8516, !52, i64 8520, !52, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !52, i64 8912, !52, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !54, i64 8956, !54, i64 8960, !52, i64 8964, !41, i64 8968, !41, i64 8970, !54, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !171, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !52, i64 10896, !52, i64 10900, !54, i64 10904, !54, i64 10908, !52, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !172, i64 10928}
!171 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!172 = !{!"WalkNavigation", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !41, i64 24, !37, i64 26}
!173 = !{!"pose_lib.c:poselib_preview_apply"}
!174 = !{!"pose_lib.c:poselib_get_active_pose"}
!175 = !{!"pose_lib.c:poselib_backup_posecopy"}
!176 = !{!177, !36, i64 16}
!177 = !{!"tPoseLib_Backup", !36, i64 0, !36, i64 8, !36, i64 16, !178, i64 24, !36, i64 568}
!178 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !37, i64 40, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !39, i64 144, !39, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !54, i64 264, !41, i64 268, !41, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !54, i64 524, !54, i64 528, !54, i64 532, !36, i64 536}
!179 = !{!178, !36, i64 16}
!180 = !{!177, !36, i64 568}
!181 = !{!178, !36, i64 120}
!182 = !{!183, !52, i64 176}
!183 = !{!"Bone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !37, i64 48, !54, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !52, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !54, i64 268, !54, i64 272, !54, i64 276, !54, i64 280, !54, i64 284, !54, i64 288, !54, i64 292, !54, i64 296, !54, i64 300, !54, i64 304, !37, i64 308, !52, i64 320, !41, i64 324, !37, i64 326}
!184 = !{!125, !52, i64 112}
!185 = !{!125, !52, i64 116}
!186 = distinct !{!186, !66}
!187 = !{!"pose_lib.c:poselib_backup_restore"}
!188 = distinct !{!188, !66}
!189 = !{!"pose_lib.c:poselib_keytag_pose"}
!190 = distinct !{!190, !66}
!191 = !{!"pose_lib.c:poselib_backup_free_data"}
!192 = !{!125, !36, i64 0}
!193 = !{!177, !36, i64 0}
!194 = distinct !{!194, !66}
!195 = !{!"pose_lib.c:poselib_apply_pose"}
!196 = !{!183, !52, i64 320}
!197 = !{!160, !52, i64 216}
!198 = distinct !{!198, !66}
!199 = !{!"pose_lib.c:poselib_preview_exit"}
!200 = !{!"pose_lib.c:poselib_preview_handle_event"}
!201 = !{!202, !41, i64 18}
!202 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !52, i64 20, !52, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !52, i64 48, !52, i64 52, !203, i64 56, !52, i64 64, !52, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !52, i64 108, !36, i64 112}
!203 = !{!"double", !37, i64 0}
!204 = !{!202, !41, i64 16}
!205 = !{!70, !36, i64 176}
!206 = !{!202, !37, i64 42}
!207 = !{!"pose_lib.c:poselib_preview_get_next"}
!208 = !{!209, !36, i64 16}
!209 = !{!"LinkData", !36, i64 0, !36, i64 8, !36, i64 16}
!210 = distinct !{!210, !66}
!211 = !{i8 0, i8 2}
!212 = distinct !{!212, !66}
!213 = !{!125, !36, i64 16}
!214 = !{!209, !36, i64 0}
!215 = distinct !{!215, !66}
!216 = !{!209, !36, i64 8}
!217 = !{!125, !36, i64 24}
!218 = distinct !{!218, !66}
!219 = distinct !{!219, !66}
!220 = !{!62, !36, i64 8}
!221 = distinct !{!221, !66}
!222 = !{!"pose_lib.c:poselib_preview_handle_search"}
!223 = distinct !{!223, !66}
!224 = distinct !{!224, !66}
!225 = distinct !{!225, !66}
!226 = !{!"pose_lib.c:BLI_listbase_is_empty"}
!227 = !{!39, !36, i64 0}
