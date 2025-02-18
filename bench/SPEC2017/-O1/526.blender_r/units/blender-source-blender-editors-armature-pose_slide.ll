; ModuleID = 'blender/source/blender/editors/armature/pose_slide.c'
source_filename = "blender/source/blender/editors/armature/pose_slide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.StructRNA = type opaque
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.tPoseSlideOp = type { ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.DLRBT_Tree, i32, i32, i32, i32, i32, float }
%struct.DLRBT_Tree = type { ptr, ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%union.tPosePropagate_ModeData = type { %struct.ListBase }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.tPChanFCurveLink = type { ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], float, [3 x float], ptr }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.ActKeyBlock = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i16, float, float, float, i16, i16 }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.CfraElem = type { ptr, ptr, float, i32 }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.ActKeyColumn = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i16, float, i16, i16 }

@.str = private unnamed_addr constant [10 x i8] c"Push Pose\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"POSE_OT_push\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Exaggerate the current pose\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Relax Pose\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"POSE_OT_relax\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"Make the current pose more similar to its surrounding ones\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Pose Breakdowner\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"POSE_OT_breakdown\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"Create a suitable breakdown pose on the current frame\00", align 1
@POSE_OT_propagate.terminate_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.9, i32 0, ptr @.str.10, ptr @.str.11 }, %struct.EnumPropertyItem { i32 2, ptr @.str.12, i32 0, ptr @.str.13, ptr @.str.14 }, %struct.EnumPropertyItem { i32 1, ptr @.str.15, i32 0, ptr @.str.16, ptr @.str.17 }, %struct.EnumPropertyItem { i32 3, ptr @.str.18, i32 0, ptr @.str.19, ptr @.str.20 }, %struct.EnumPropertyItem { i32 4, ptr @.str.21, i32 0, ptr @.str.22, ptr @.str.23 }, %struct.EnumPropertyItem { i32 5, ptr @.str.24, i32 0, ptr @.str.25, ptr @.str.26 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.9 = private unnamed_addr constant [11 x i8] c"WHILE_HELD\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"While Held\00", align 1
@.str.11 = private unnamed_addr constant [89 x i8] c"Propagate pose to all keyframes after current frame that don't change (Default behavior)\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"NEXT_KEY\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"To Next Keyframe\00", align 1
@.str.14 = private unnamed_addr constant [66 x i8] c"Propagate pose to first keyframe following the current frame only\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"LAST_KEY\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"To Last Keyframe\00", align 1
@.str.17 = private unnamed_addr constant [69 x i8] c"Propagate pose to the last keyframe only (i.e. making action cyclic)\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"BEFORE_FRAME\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Before Frame\00", align 1
@.str.20 = private unnamed_addr constant [75 x i8] c"Propagate pose to all keyframes between current frame and 'Frame' property\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"BEFORE_END\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"Before Last Keyframe\00", align 1
@.str.23 = private unnamed_addr constant [75 x i8] c"Propagate pose to all keyframes from current frame until no more are found\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"SELECTED_MARKERS\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"On Selected Markers\00", align 1
@.str.26 = private unnamed_addr constant [95 x i8] c"Propagate pose to all keyframes occurring on frames with Scene Markers after the current frame\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"Propagate Pose\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"POSE_OT_propagate\00", align 1
@.str.29 = private unnamed_addr constant [80 x i8] c"Copy selected aspects of the current pose to subsequent poses already keyframed\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"Terminate Mode\00", align 1
@.str.32 = private unnamed_addr constant [68 x i8] c"Method used to determine when to stop propagating pose to keyframes\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"end_frame\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"End Frame\00", align 1
@.str.35 = private unnamed_addr constant [62 x i8] c"Frame to stop propagating frames to (for 'Before Frame' mode)\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.36 = private unnamed_addr constant [13 x i8] c"tPoseSlideOp\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"percentage\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"prev_frame\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"next_frame\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.40 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"rotation_euler\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"rotation_quaternion\00", align 1
@RNA_PoseBone = external global %struct.StructRNA, align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"[\22\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"No keyframes to slide between\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"Breakdown\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"Sliding-Tool\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"%s: %d %%\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"Previous Keyframe\00", align 1
@.str.51 = private unnamed_addr constant [62 x i8] c"Frame number of keyframe immediately before the current frame\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"Next Keyframe\00", align 1
@.str.53 = private unnamed_addr constant [61 x i8] c"Frame number of keyframe immediately after the current frame\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"Percentage\00", align 1
@.str.55 = private unnamed_addr constant [43 x i8] c"Weighting factor for the sliding operation\00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"No object to propagate poses for\00", align 1
@.str.57 = private unnamed_addr constant [35 x i8] c"No keyframed poses to propagate to\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @POSE_OT_push(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_slide_push_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @pose_slide_push_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @pose_slide_modal, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @pose_slide_cancel, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %9, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef -300000, i32 noundef 300000, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef 50) #8
  %13 = load ptr, ptr %10, align 8, !tbaa !50
  %14 = tail call ptr @RNA_def_int(ptr noundef %13, ptr noundef nonnull @.str.39, i32 noundef 0, i32 noundef -300000, i32 noundef 300000, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef 0, i32 noundef 50) #8
  %15 = load ptr, ptr %10, align 8, !tbaa !50
  %16 = tail call ptr @RNA_def_float_percentage(ptr noundef %15, ptr noundef nonnull @.str.37, float noundef 5.000000e-01, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, float noundef 0x3FD3333340000000, float noundef 0x3FE6666660000000) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_slide_push_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc i32 @pose_slide_init(ptr noundef %0, ptr noundef %1, i16 noundef signext 0), !range !51
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  br i1 %4, label %7, label %9

7:                                                ; preds = %2
  %8 = icmp eq ptr %6, null
  br i1 %8, label %25, label %19

9:                                                ; preds = %2
  tail call fastcc void @pose_slide_apply(ptr noundef %0, ptr noundef %6)
  %10 = load ptr, ptr %6, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.tPoseSlideOp, ptr %6, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = getelementptr inbounds %struct.tPoseSlideOp, ptr %6, i64 0, i32 5
  %14 = getelementptr inbounds %struct.tPoseSlideOp, ptr %6, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !60
  %16 = sitofp i32 %15 to float
  tail call void @poseAnim_mapping_autoKeyframe(ptr noundef %0, ptr noundef %10, ptr noundef %12, ptr noundef nonnull %13, float noundef %16) #8
  %17 = load ptr, ptr %5, align 8, !tbaa !52
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %9, %7
  %20 = phi ptr [ %6, %7 ], [ %17, %9 ]
  %21 = phi i32 [ 2, %7 ], [ 4, %9 ]
  %22 = getelementptr inbounds %struct.tPoseSlideOp, ptr %20, i64 0, i32 5
  tail call void @poseAnim_mapping_free(ptr noundef nonnull %22) #8
  %23 = getelementptr inbounds %struct.tPoseSlideOp, ptr %20, i64 0, i32 6
  tail call void @BLI_dlrbTree_free(ptr noundef nonnull %23) #8
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %24(ptr noundef nonnull %20) #8
  br label %25

25:                                               ; preds = %19, %9, %7
  %26 = phi i32 [ 2, %7 ], [ 4, %9 ], [ %21, %19 ]
  store ptr null, ptr %5, align 8, !tbaa !52
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_slide_push_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @pose_slide_init(ptr noundef %0, ptr noundef %1, i16 noundef signext 0), !range !51
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  br i1 %5, label %8, label %15

8:                                                ; preds = %3
  %9 = icmp eq ptr %7, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.tPoseSlideOp, ptr %7, i64 0, i32 5
  tail call void @poseAnim_mapping_free(ptr noundef nonnull %11) #8
  %12 = getelementptr inbounds %struct.tPoseSlideOp, ptr %7, i64 0, i32 6
  tail call void @BLI_dlrbTree_free(ptr noundef nonnull %12) #8
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %13(ptr noundef nonnull %7) #8
  br label %14

14:                                               ; preds = %8, %10
  store ptr null, ptr %6, align 8, !tbaa !52
  br label %17

15:                                               ; preds = %3
  %16 = tail call fastcc i32 @pose_slide_invoke_common(ptr noundef %0, ptr noundef %1, ptr noundef %7), !range !62
  br label %17

17:                                               ; preds = %15, %14
  %18 = phi i32 [ 2, %14 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_slide_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [32 x i8], align 16
  %5 = alloca [32 x i8], align 16
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #8
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !63
  switch i16 %10, label %72 [
    i16 1, label %11
    i16 220, label %11
    i16 218, label %28
    i16 3, label %28
    i16 4, label %42
  ]

11:                                               ; preds = %3, %3
  %12 = getelementptr inbounds %struct.tPoseSlideOp, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !66
  tail call void @ED_area_headerprint(ptr noundef %13, ptr noundef null) #8
  tail call void @WM_cursor_modal_restore(ptr noundef %8) #8
  %14 = load ptr, ptr %7, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.tPoseSlideOp, ptr %7, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  %17 = getelementptr inbounds %struct.tPoseSlideOp, ptr %7, i64 0, i32 5
  %18 = getelementptr inbounds %struct.tPoseSlideOp, ptr %7, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !60
  %20 = sitofp i32 %19 to float
  tail call void @poseAnim_mapping_autoKeyframe(ptr noundef %0, ptr noundef %14, ptr noundef %16, ptr noundef nonnull %17, float noundef %20) #8
  %21 = load ptr, ptr %6, align 8, !tbaa !52
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.tPoseSlideOp, ptr %21, i64 0, i32 5
  tail call void @poseAnim_mapping_free(ptr noundef nonnull %24) #8
  %25 = getelementptr inbounds %struct.tPoseSlideOp, ptr %21, i64 0, i32 6
  tail call void @BLI_dlrbTree_free(ptr noundef nonnull %25) #8
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %26(ptr noundef nonnull %21) #8
  br label %27

27:                                               ; preds = %11, %23
  store ptr null, ptr %6, align 8, !tbaa !52
  br label %72

28:                                               ; preds = %3, %3
  %29 = getelementptr inbounds %struct.tPoseSlideOp, ptr %7, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !66
  tail call void @ED_area_headerprint(ptr noundef %30, ptr noundef null) #8
  tail call void @WM_cursor_modal_restore(ptr noundef %8) #8
  %31 = getelementptr inbounds %struct.tPoseSlideOp, ptr %7, i64 0, i32 5
  tail call void @poseAnim_mapping_reset(ptr noundef nonnull %31) #8
  %32 = load ptr, ptr %7, align 8, !tbaa !54
  %33 = getelementptr inbounds %struct.tPoseSlideOp, ptr %7, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !59
  tail call void @poseAnim_mapping_refresh(ptr noundef %0, ptr noundef %32, ptr noundef %34) #8
  %35 = load ptr, ptr %6, align 8, !tbaa !52
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.tPoseSlideOp, ptr %35, i64 0, i32 5
  tail call void @poseAnim_mapping_free(ptr noundef nonnull %38) #8
  %39 = getelementptr inbounds %struct.tPoseSlideOp, ptr %35, i64 0, i32 6
  tail call void @BLI_dlrbTree_free(ptr noundef nonnull %39) #8
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %40(ptr noundef nonnull %35) #8
  br label %41

41:                                               ; preds = %28, %37
  store ptr null, ptr %6, align 8, !tbaa !52
  br label %72

42:                                               ; preds = %3
  %43 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !67
  %45 = getelementptr inbounds %struct.tPoseSlideOp, ptr %7, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !68
  %47 = getelementptr inbounds %struct.ARegion, ptr %46, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !69
  %49 = sub nsw i32 %44, %48
  %50 = sitofp i32 %49 to float
  %51 = getelementptr inbounds %struct.ARegion, ptr %46, i64 0, i32 5
  %52 = load i16, ptr %51, align 8, !tbaa !74
  %53 = sitofp i16 %52 to float
  %54 = fdiv float %50, %53
  %55 = getelementptr inbounds %struct.tPoseSlideOp, ptr %7, i64 0, i32 12
  store float %54, ptr %55, align 4, !tbaa !75
  %56 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !76
  tail call void @RNA_float_set(ptr noundef %57, ptr noundef nonnull @.str.37, float noundef %54) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  %58 = getelementptr inbounds %struct.tPoseSlideOp, ptr %7, i64 0, i32 10
  %59 = load i32, ptr %58, align 4, !tbaa !77
  switch i32 %59, label %63 [
    i32 0, label %60
    i32 1, label %61
    i32 2, label %62
  ]

60:                                               ; preds = %42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %5, ptr noundef nonnull align 1 dereferenceable(10) @.str, i64 10, i1 false) #8
  br label %64

61:                                               ; preds = %42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) %5, ptr noundef nonnull align 1 dereferenceable(11) @.str.3, i64 11, i1 false) #8
  br label %64

62:                                               ; preds = %42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %5, ptr noundef nonnull align 1 dereferenceable(10) @.str.47, i64 10, i1 false) #8
  br label %64

63:                                               ; preds = %42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) %5, ptr noundef nonnull align 1 dereferenceable(13) @.str.48, i64 13, i1 false) #8
  br label %64

64:                                               ; preds = %60, %61, %62, %63
  %65 = load float, ptr %55, align 4, !tbaa !75
  %66 = fmul float %65, 1.000000e+02
  %67 = fptosi float %66 to i32
  %68 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 32, ptr noundef nonnull @.str.49, ptr noundef nonnull %5, i32 noundef %67) #8
  %69 = getelementptr inbounds %struct.tPoseSlideOp, ptr %7, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !66
  call void @ED_area_headerprint(ptr noundef %70, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #8
  %71 = getelementptr inbounds %struct.tPoseSlideOp, ptr %7, i64 0, i32 5
  call void @poseAnim_mapping_reset(ptr noundef nonnull %71) #8
  call fastcc void @pose_slide_apply(ptr noundef %0, ptr noundef %7)
  br label %72

72:                                               ; preds = %3, %64, %41, %27
  %73 = phi i32 [ 1, %64 ], [ 2, %41 ], [ 4, %27 ], [ 9, %3 ]
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define internal void @pose_slide_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tPoseSlideOp, ptr %4, i64 0, i32 5
  tail call void @poseAnim_mapping_free(ptr noundef nonnull %7) #8
  %8 = getelementptr inbounds %struct.tPoseSlideOp, ptr %4, i64 0, i32 6
  tail call void @BLI_dlrbTree_free(ptr noundef nonnull %8) #8
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %9(ptr noundef nonnull %4) #8
  br label %10

10:                                               ; preds = %2, %6
  store ptr null, ptr %3, align 8, !tbaa !52
  ret void
}

declare i32 @ED_operator_posemode(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @POSE_OT_relax(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_slide_relax_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @pose_slide_relax_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @pose_slide_modal, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @pose_slide_cancel, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %9, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef -300000, i32 noundef 300000, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef 50) #8
  %13 = load ptr, ptr %10, align 8, !tbaa !50
  %14 = tail call ptr @RNA_def_int(ptr noundef %13, ptr noundef nonnull @.str.39, i32 noundef 0, i32 noundef -300000, i32 noundef 300000, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef 0, i32 noundef 50) #8
  %15 = load ptr, ptr %10, align 8, !tbaa !50
  %16 = tail call ptr @RNA_def_float_percentage(ptr noundef %15, ptr noundef nonnull @.str.37, float noundef 5.000000e-01, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, float noundef 0x3FD3333340000000, float noundef 0x3FE6666660000000) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_slide_relax_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc i32 @pose_slide_init(ptr noundef %0, ptr noundef %1, i16 noundef signext 1), !range !51
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  br i1 %4, label %7, label %9

7:                                                ; preds = %2
  %8 = icmp eq ptr %6, null
  br i1 %8, label %25, label %19

9:                                                ; preds = %2
  tail call fastcc void @pose_slide_apply(ptr noundef %0, ptr noundef %6)
  %10 = load ptr, ptr %6, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.tPoseSlideOp, ptr %6, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = getelementptr inbounds %struct.tPoseSlideOp, ptr %6, i64 0, i32 5
  %14 = getelementptr inbounds %struct.tPoseSlideOp, ptr %6, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !60
  %16 = sitofp i32 %15 to float
  tail call void @poseAnim_mapping_autoKeyframe(ptr noundef %0, ptr noundef %10, ptr noundef %12, ptr noundef nonnull %13, float noundef %16) #8
  %17 = load ptr, ptr %5, align 8, !tbaa !52
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %9, %7
  %20 = phi ptr [ %6, %7 ], [ %17, %9 ]
  %21 = phi i32 [ 2, %7 ], [ 4, %9 ]
  %22 = getelementptr inbounds %struct.tPoseSlideOp, ptr %20, i64 0, i32 5
  tail call void @poseAnim_mapping_free(ptr noundef nonnull %22) #8
  %23 = getelementptr inbounds %struct.tPoseSlideOp, ptr %20, i64 0, i32 6
  tail call void @BLI_dlrbTree_free(ptr noundef nonnull %23) #8
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %24(ptr noundef nonnull %20) #8
  br label %25

25:                                               ; preds = %19, %9, %7
  %26 = phi i32 [ 2, %7 ], [ 4, %9 ], [ %21, %19 ]
  store ptr null, ptr %5, align 8, !tbaa !52
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_slide_relax_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @pose_slide_init(ptr noundef %0, ptr noundef %1, i16 noundef signext 1), !range !51
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  br i1 %5, label %8, label %15

8:                                                ; preds = %3
  %9 = icmp eq ptr %7, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.tPoseSlideOp, ptr %7, i64 0, i32 5
  tail call void @poseAnim_mapping_free(ptr noundef nonnull %11) #8
  %12 = getelementptr inbounds %struct.tPoseSlideOp, ptr %7, i64 0, i32 6
  tail call void @BLI_dlrbTree_free(ptr noundef nonnull %12) #8
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %13(ptr noundef nonnull %7) #8
  br label %14

14:                                               ; preds = %8, %10
  store ptr null, ptr %6, align 8, !tbaa !52
  br label %17

15:                                               ; preds = %3
  %16 = tail call fastcc i32 @pose_slide_invoke_common(ptr noundef %0, ptr noundef %1, ptr noundef %7), !range !62
  br label %17

17:                                               ; preds = %15, %14
  %18 = phi i32 [ 2, %14 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local void @POSE_OT_breakdown(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_slide_breakdown_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @pose_slide_breakdown_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @pose_slide_modal, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @pose_slide_cancel, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %8, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %9, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef -300000, i32 noundef 300000, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef 50) #8
  %13 = load ptr, ptr %10, align 8, !tbaa !50
  %14 = tail call ptr @RNA_def_int(ptr noundef %13, ptr noundef nonnull @.str.39, i32 noundef 0, i32 noundef -300000, i32 noundef 300000, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef 0, i32 noundef 50) #8
  %15 = load ptr, ptr %10, align 8, !tbaa !50
  %16 = tail call ptr @RNA_def_float_percentage(ptr noundef %15, ptr noundef nonnull @.str.37, float noundef 5.000000e-01, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, float noundef 0x3FD3333340000000, float noundef 0x3FE6666660000000) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_slide_breakdown_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc i32 @pose_slide_init(ptr noundef %0, ptr noundef %1, i16 noundef signext 2), !range !51
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  br i1 %4, label %7, label %9

7:                                                ; preds = %2
  %8 = icmp eq ptr %6, null
  br i1 %8, label %25, label %19

9:                                                ; preds = %2
  tail call fastcc void @pose_slide_apply(ptr noundef %0, ptr noundef %6)
  %10 = load ptr, ptr %6, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.tPoseSlideOp, ptr %6, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = getelementptr inbounds %struct.tPoseSlideOp, ptr %6, i64 0, i32 5
  %14 = getelementptr inbounds %struct.tPoseSlideOp, ptr %6, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !60
  %16 = sitofp i32 %15 to float
  tail call void @poseAnim_mapping_autoKeyframe(ptr noundef %0, ptr noundef %10, ptr noundef %12, ptr noundef nonnull %13, float noundef %16) #8
  %17 = load ptr, ptr %5, align 8, !tbaa !52
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %9, %7
  %20 = phi ptr [ %6, %7 ], [ %17, %9 ]
  %21 = phi i32 [ 2, %7 ], [ 4, %9 ]
  %22 = getelementptr inbounds %struct.tPoseSlideOp, ptr %20, i64 0, i32 5
  tail call void @poseAnim_mapping_free(ptr noundef nonnull %22) #8
  %23 = getelementptr inbounds %struct.tPoseSlideOp, ptr %20, i64 0, i32 6
  tail call void @BLI_dlrbTree_free(ptr noundef nonnull %23) #8
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %24(ptr noundef nonnull %20) #8
  br label %25

25:                                               ; preds = %19, %9, %7
  %26 = phi i32 [ 2, %7 ], [ 4, %9 ], [ %21, %19 ]
  store ptr null, ptr %5, align 8, !tbaa !52
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_slide_breakdown_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @pose_slide_init(ptr noundef %0, ptr noundef %1, i16 noundef signext 2), !range !51
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  br i1 %5, label %8, label %15

8:                                                ; preds = %3
  %9 = icmp eq ptr %7, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.tPoseSlideOp, ptr %7, i64 0, i32 5
  tail call void @poseAnim_mapping_free(ptr noundef nonnull %11) #8
  %12 = getelementptr inbounds %struct.tPoseSlideOp, ptr %7, i64 0, i32 6
  tail call void @BLI_dlrbTree_free(ptr noundef nonnull %12) #8
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %13(ptr noundef nonnull %7) #8
  br label %14

14:                                               ; preds = %8, %10
  store ptr null, ptr %6, align 8, !tbaa !52
  br label %17

15:                                               ; preds = %3
  %16 = tail call fastcc i32 @pose_slide_invoke_common(ptr noundef %0, ptr noundef %1, ptr noundef %7), !range !62
  br label %17

17:                                               ; preds = %15, %14
  %18 = phi i32 [ 2, %14 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local void @POSE_OT_propagate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_propagate_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.30, ptr noundef nonnull @POSE_OT_propagate.terminate_items, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #8
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !78
  %11 = load ptr, ptr %7, align 8, !tbaa !50
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.33, float noundef 2.500000e+02, float noundef 0x3810000000000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, float noundef 1.000000e+00, float noundef 2.500000e+02) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pose_propagate_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = alloca float, align 4
  %9 = alloca %struct.DLRBT_Tree, align 8
  %10 = alloca %struct.DLRBT_Tree, align 8
  %11 = alloca %struct.ListBase, align 8
  %12 = alloca %union.tPosePropagate_ModeData, align 8
  %13 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %14 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %15 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %14) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !79
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !84
  br label %23

23:                                               ; preds = %2, %17, %21
  %24 = phi ptr [ %22, %21 ], [ null, %17 ], [ null, %2 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #8
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !76
  %27 = tail call i32 @RNA_enum_get(ptr noundef %26, ptr noundef nonnull @.str.30) #8
  br i1 %16, label %28, label %31

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !86
  tail call void @BKE_report(ptr noundef %30, i32 noundef 32, ptr noundef nonnull @.str.56) #8
  br label %261

31:                                               ; preds = %23
  %32 = icmp eq ptr %24, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !86
  tail call void @BKE_report(ptr noundef %35, i32 noundef 32, ptr noundef nonnull @.str.57) #8
  br label %261

36:                                               ; preds = %31
  call void @poseAnim_mapping_get(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %15, ptr noundef nonnull %24) #8
  %37 = icmp eq i32 %27, 5
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 24
  call void @ED_markers_make_cfra_list(ptr noundef nonnull %39, ptr noundef nonnull %12, i16 noundef signext 1) #8
  br label %43

40:                                               ; preds = %36
  %41 = load ptr, ptr %25, align 8, !tbaa !76
  %42 = call float @RNA_float_get(ptr noundef %41, ptr noundef nonnull @.str.33) #8
  store float %42, ptr %12, align 8, !tbaa !87
  br label %43

43:                                               ; preds = %40, %38
  %44 = load ptr, ptr %11, align 8, !tbaa !61
  %45 = icmp eq ptr %44, null
  br i1 %45, label %258, label %46

46:                                               ; preds = %43
  %47 = icmp eq i32 %27, 0
  %48 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 5
  %49 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 1
  %50 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 5
  br label %54

51:                                               ; preds = %255, %125
  %52 = load ptr, ptr %55, align 8, !tbaa !61
  %53 = icmp eq ptr %52, null
  br i1 %53, label %258, label %54, !llvm.loop !88

54:                                               ; preds = %46, %51
  %55 = phi ptr [ %44, %46 ], [ %52, %51 ]
  br i1 %47, label %56, label %125

56:                                               ; preds = %54
  %57 = load i32, ptr %48, align 8, !tbaa !91
  %58 = sitofp i32 %57 to float
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  store float %58, ptr %8, align 4, !tbaa !108
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #8
  %59 = load ptr, ptr %49, align 8, !tbaa !79
  call void @BLI_dlrbTree_init(ptr noundef nonnull %9) #8
  call void @BLI_dlrbTree_init(ptr noundef nonnull %10) #8
  %60 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %55, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !61
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %56, %63
  %64 = phi ptr [ %67, %63 ], [ %61, %56 ]
  %65 = getelementptr inbounds %struct.LinkData, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !109
  call void @fcurve_to_keylist(ptr noundef %59, ptr noundef %66, ptr noundef nonnull %9, ptr noundef nonnull %10) #8
  %67 = load ptr, ptr %64, align 8, !tbaa !61
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %63, !llvm.loop !111

69:                                               ; preds = %63, %56
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %9) #8
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %10) #8
  %70 = call ptr @BLI_dlrbTree_search_exact(ptr noundef nonnull %10, ptr noundef nonnull @compare_ab_cfraPtr, ptr noundef nonnull %8) #8
  %71 = call zeroext i8 @actkeyblock_is_valid(ptr noundef %70, ptr noundef nonnull %9) #8
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = call ptr @BLI_dlrbTree_search_exact(ptr noundef nonnull %9, ptr noundef nonnull @compare_ak_cfraPtr, ptr noundef nonnull %8) #8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = call ptr @BLI_dlrbTree_search_next(ptr noundef nonnull %10, ptr noundef nonnull @compare_ab_cfraPtr, ptr noundef nonnull %8) #8
  %78 = call zeroext i8 @actkeyblock_is_valid(ptr noundef %77, ptr noundef nonnull %9) #8
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = call ptr @BLI_dlrbTree_search_prev(ptr noundef nonnull %10, ptr noundef nonnull @compare_ab_cfraPtr, ptr noundef nonnull %8) #8
  %82 = call zeroext i8 @actkeyblock_is_valid(ptr noundef %81, ptr noundef nonnull %9) #8
  %83 = icmp eq i8 %82, 0
  %84 = select i1 %83, ptr null, ptr %81
  br label %85

85:                                               ; preds = %80, %76, %73, %69
  %86 = phi ptr [ %77, %76 ], [ %70, %69 ], [ %84, %80 ], [ null, %73 ]
  %87 = icmp eq ptr %86, null
  br i1 %87, label %123, label %88

88:                                               ; preds = %85, %115
  %89 = phi ptr [ %116, %115 ], [ %86, %85 ]
  %90 = load ptr, ptr %89, align 8, !tbaa !112
  %91 = icmp eq ptr %90, null
  br i1 %91, label %119, label %92

92:                                               ; preds = %88
  %93 = call zeroext i8 @actkeyblock_is_valid(ptr noundef nonnull %90, ptr noundef nonnull %9) #8
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %115, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.ActKeyBlock, ptr %89, i64 0, i32 10
  %97 = load float, ptr %96, align 4, !tbaa !114
  %98 = getelementptr inbounds %struct.ActKeyBlock, ptr %90, i64 0, i32 9
  %99 = load float, ptr %98, align 8, !tbaa !115
  %100 = fcmp une float %97, %99
  br i1 %100, label %115, label %101

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.ActKeyBlock, ptr %89, i64 0, i32 12
  %103 = load i16, ptr %102, align 2, !tbaa !116
  %104 = getelementptr inbounds %struct.ActKeyBlock, ptr %90, i64 0, i32 12
  %105 = load i16, ptr %104, align 2, !tbaa !116
  %106 = icmp eq i16 %103, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.ActKeyBlock, ptr %89, i64 0, i32 8
  %109 = load float, ptr %108, align 4, !tbaa !117
  %110 = getelementptr inbounds %struct.ActKeyBlock, ptr %90, i64 0, i32 8
  %111 = load float, ptr %110, align 4, !tbaa !117
  %112 = fcmp une float %109, %111
  %113 = select i1 %112, ptr %89, ptr %90
  %114 = select i1 %112, i32 6, i32 0
  br label %115

115:                                              ; preds = %107, %101, %95, %92
  %116 = phi ptr [ %89, %92 ], [ %89, %95 ], [ %89, %101 ], [ %113, %107 ]
  %117 = phi i32 [ 6, %92 ], [ 6, %95 ], [ 6, %101 ], [ %114, %107 ]
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %88, label %119

119:                                              ; preds = %115, %88
  %120 = phi ptr [ %116, %115 ], [ %89, %88 ]
  %121 = getelementptr inbounds %struct.ActKeyBlock, ptr %120, i64 0, i32 10
  %122 = load float, ptr %121, align 4, !tbaa !114
  br label %123

123:                                              ; preds = %85, %119
  %124 = phi float [ %122, %119 ], [ %58, %85 ]
  call void @BLI_dlrbTree_free(ptr noundef nonnull %9) #8
  call void @BLI_dlrbTree_free(ptr noundef nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  store float %124, ptr %12, align 8, !tbaa !87
  br label %125

125:                                              ; preds = %123, %54
  %126 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %55, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !61
  %128 = icmp eq ptr %127, null
  br i1 %128, label %51, label %129

129:                                              ; preds = %125, %255
  %130 = phi ptr [ %256, %255 ], [ %127, %125 ]
  %131 = getelementptr inbounds %struct.LinkData, ptr %130, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !109
  %133 = load i32, ptr %50, align 8, !tbaa !91
  %134 = sitofp i32 %133 to float
  %135 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store ptr %135, ptr %6, align 8
  %136 = load ptr, ptr %25, align 8, !tbaa !76
  %137 = call i32 @RNA_enum_get(ptr noundef %136, ptr noundef nonnull @.str.30) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  %138 = getelementptr inbounds %struct.FCurve, ptr %132, i64 0, i32 5
  %139 = load ptr, ptr %138, align 8, !tbaa !118
  %140 = icmp eq ptr %139, null
  br i1 %140, label %255, label %141

141:                                              ; preds = %129
  %142 = getelementptr inbounds %struct.FCurve, ptr %132, i64 0, i32 7
  %143 = load i32, ptr %142, align 8, !tbaa !120
  %144 = icmp ult i32 %143, 2
  br i1 %144, label %255, label %145

145:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @RNA_id_pointer_create(ptr noundef nonnull %15, ptr noundef nonnull %3) #8
  %146 = getelementptr inbounds %struct.FCurve, ptr %132, i64 0, i32 12
  %147 = load ptr, ptr %146, align 8, !tbaa !121
  %148 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %3, ptr noundef %147, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %195, label %150

150:                                              ; preds = %145
  %151 = load ptr, ptr %5, align 8, !tbaa !61
  %152 = call zeroext i8 @RNA_property_array_check(ptr noundef %151) #8
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %177, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.FCurve, ptr %132, i64 0, i32 11
  %156 = load i32, ptr %155, align 4, !tbaa !122
  %157 = load ptr, ptr %5, align 8, !tbaa !61
  %158 = call i32 @RNA_property_array_length(ptr noundef nonnull %4, ptr noundef %157) #8
  %159 = icmp slt i32 %156, %158
  br i1 %159, label %160, label %195

160:                                              ; preds = %154
  %161 = load ptr, ptr %5, align 8, !tbaa !61
  %162 = call i32 @RNA_property_type(ptr noundef %161) #8
  switch i32 %162, label %195 [
    i32 0, label %163
    i32 1, label %168
    i32 2, label %173
  ]

163:                                              ; preds = %160
  %164 = load ptr, ptr %5, align 8, !tbaa !61
  %165 = load i32, ptr %155, align 4, !tbaa !122
  %166 = call i32 @RNA_property_boolean_get_index(ptr noundef nonnull %4, ptr noundef %164, i32 noundef %165) #8
  %167 = sitofp i32 %166 to float
  br label %195

168:                                              ; preds = %160
  %169 = load ptr, ptr %5, align 8, !tbaa !61
  %170 = load i32, ptr %155, align 4, !tbaa !122
  %171 = call i32 @RNA_property_int_get_index(ptr noundef nonnull %4, ptr noundef %169, i32 noundef %170) #8
  %172 = sitofp i32 %171 to float
  br label %195

173:                                              ; preds = %160
  %174 = load ptr, ptr %5, align 8, !tbaa !61
  %175 = load i32, ptr %155, align 4, !tbaa !122
  %176 = call float @RNA_property_float_get_index(ptr noundef nonnull %4, ptr noundef %174, i32 noundef %175) #8
  br label %195

177:                                              ; preds = %150
  %178 = load ptr, ptr %5, align 8, !tbaa !61
  %179 = call i32 @RNA_property_type(ptr noundef %178) #8
  switch i32 %179, label %195 [
    i32 0, label %180
    i32 1, label %184
    i32 4, label %188
    i32 2, label %192
  ]

180:                                              ; preds = %177
  %181 = load ptr, ptr %5, align 8, !tbaa !61
  %182 = call i32 @RNA_property_boolean_get(ptr noundef nonnull %4, ptr noundef %181) #8
  %183 = sitofp i32 %182 to float
  br label %195

184:                                              ; preds = %177
  %185 = load ptr, ptr %5, align 8, !tbaa !61
  %186 = call i32 @RNA_property_int_get(ptr noundef nonnull %4, ptr noundef %185) #8
  %187 = sitofp i32 %186 to float
  br label %195

188:                                              ; preds = %177
  %189 = load ptr, ptr %5, align 8, !tbaa !61
  %190 = call i32 @RNA_property_enum_get(ptr noundef nonnull %4, ptr noundef %189) #8
  %191 = sitofp i32 %190 to float
  br label %195

192:                                              ; preds = %177
  %193 = load ptr, ptr %5, align 8, !tbaa !61
  %194 = call float @RNA_property_float_get(ptr noundef nonnull %4, ptr noundef %193) #8
  br label %195

195:                                              ; preds = %192, %188, %184, %180, %177, %173, %168, %163, %160, %154, %145
  %196 = phi float [ 0.000000e+00, %145 ], [ 0.000000e+00, %177 ], [ %194, %192 ], [ %191, %188 ], [ %187, %184 ], [ %183, %180 ], [ 0.000000e+00, %160 ], [ %176, %173 ], [ %172, %168 ], [ %167, %163 ], [ 0.000000e+00, %154 ]
  %197 = phi i1 [ true, %145 ], [ true, %177 ], [ false, %192 ], [ false, %188 ], [ false, %184 ], [ false, %180 ], [ true, %160 ], [ false, %173 ], [ false, %168 ], [ false, %163 ], [ true, %154 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  br i1 %197, label %255, label %198

198:                                              ; preds = %195
  %199 = load ptr, ptr %138, align 8, !tbaa !118
  %200 = load i32, ptr %142, align 8, !tbaa !120
  %201 = call i32 @binarysearch_bezt_index(ptr noundef %199, float noundef %134, i32 noundef %200, ptr noundef nonnull %7) #8
  %202 = load ptr, ptr %138, align 8, !tbaa !118
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds %struct.BezTriple, ptr %202, i64 %203, i32 0, i64 1
  %205 = load float, ptr %204, align 4, !tbaa !108
  %206 = fcmp olt float %205, %134
  %207 = zext i1 %206 to i32
  %208 = add nsw i32 %201, %207
  %209 = load i32, ptr %142, align 8, !tbaa !120
  %210 = icmp ult i32 %208, %209
  br i1 %210, label %211, label %255

211:                                              ; preds = %198
  %212 = sext i32 %208 to i64
  %213 = getelementptr inbounds %struct.BezTriple, ptr %202, i64 %212
  %214 = add i32 %209, -1
  %215 = load float, ptr %6, align 8
  br label %216

216:                                              ; preds = %211, %250
  %217 = phi i16 [ 1, %211 ], [ %251, %250 ]
  %218 = phi ptr [ %213, %211 ], [ %253, %250 ]
  %219 = phi i32 [ %208, %211 ], [ %252, %250 ]
  switch i32 %137, label %243 [
    i32 3, label %222
    i32 0, label %222
    i32 2, label %226
    i32 1, label %228
    i32 5, label %220
  ]

220:                                              ; preds = %216
  %221 = getelementptr inbounds [3 x [3 x float]], ptr %218, i64 0, i64 1
  br label %230

222:                                              ; preds = %216, %216
  %223 = getelementptr inbounds [3 x [3 x float]], ptr %218, i64 0, i64 1
  %224 = load float, ptr %223, align 4, !tbaa !108
  %225 = fcmp ogt float %224, %215
  br i1 %225, label %255, label %243

226:                                              ; preds = %216
  %227 = icmp eq i16 %217, 0
  br i1 %227, label %255, label %243

228:                                              ; preds = %216
  %229 = icmp eq i32 %219, %214
  br i1 %229, label %243, label %250

230:                                              ; preds = %220, %234
  %231 = phi ptr [ %232, %234 ], [ %6, %220 ]
  %232 = load ptr, ptr %231, align 8, !tbaa !87
  %233 = icmp eq ptr %232, null
  br i1 %233, label %250, label %234

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.CfraElem, ptr %232, i64 0, i32 2
  %236 = load float, ptr %235, align 8, !tbaa !123
  %237 = load float, ptr %221, align 4, !tbaa !108
  %238 = fadd float %237, 5.000000e-01
  %239 = call float @llvm.floor.f32(float %238)
  %240 = fptosi float %239 to i32
  %241 = sitofp i32 %240 to float
  %242 = fcmp oeq float %236, %241
  br i1 %242, label %243, label %230, !llvm.loop !125

243:                                              ; preds = %234, %228, %226, %222, %216
  %244 = getelementptr inbounds [3 x [3 x float]], ptr %218, i64 0, i64 2, i64 1
  store float %196, ptr %244, align 4, !tbaa !108
  %245 = getelementptr inbounds [3 x [3 x float]], ptr %218, i64 0, i64 1, i64 1
  store float %196, ptr %245, align 4, !tbaa !108
  %246 = getelementptr inbounds [3 x float], ptr %218, i64 0, i64 1
  store float %196, ptr %246, align 4, !tbaa !108
  %247 = getelementptr inbounds %struct.BezTriple, ptr %218, i64 0, i32 8
  %248 = load i8, ptr %247, align 4, !tbaa !126
  %249 = or i8 %248, 1
  store i8 %249, ptr %247, align 4, !tbaa !126
  br label %250

250:                                              ; preds = %230, %243, %228
  %251 = phi i16 [ 0, %243 ], [ %217, %228 ], [ %217, %230 ]
  %252 = add nuw nsw i32 %219, 1
  %253 = getelementptr inbounds %struct.BezTriple, ptr %218, i64 1
  %254 = icmp ult i32 %252, %209
  br i1 %254, label %216, label %255, !llvm.loop !128

255:                                              ; preds = %226, %222, %250, %198, %129, %141, %195
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  %256 = load ptr, ptr %130, align 8, !tbaa !61
  %257 = icmp eq ptr %256, null
  br i1 %257, label %51, label %129, !llvm.loop !129

258:                                              ; preds = %51, %43
  call void @poseAnim_mapping_free(ptr noundef nonnull %11) #8
  br i1 %37, label %259, label %260

259:                                              ; preds = %258
  call void @BLI_freelistN(ptr noundef nonnull %12) #8
  br label %260

260:                                              ; preds = %259, %258
  call void @poseAnim_mapping_refresh(ptr noundef %0, ptr noundef %13, ptr noundef nonnull %15) #8
  br label %261

261:                                              ; preds = %260, %33, %28
  %262 = phi i32 [ 2, %28 ], [ 2, %33 ], [ 4, %260 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8
  ret i32 %262
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @pose_slide_init(ptr noundef %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !61
  %5 = tail call ptr %4(i64 noundef 104, ptr noundef nonnull @.str.36) #8
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %5, ptr %6, align 8, !tbaa !52
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  store ptr %7, ptr %5, align 8, !tbaa !54
  %8 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %9 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %8) #8
  %10 = getelementptr inbounds %struct.tPoseSlideOp, ptr %5, i64 0, i32 3
  store ptr %9, ptr %10, align 8, !tbaa !59
  %11 = icmp eq ptr %9, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !130
  br label %15

15:                                               ; preds = %3, %12
  %16 = phi ptr [ %14, %12 ], [ null, %3 ]
  %17 = getelementptr inbounds %struct.tPoseSlideOp, ptr %5, i64 0, i32 4
  store ptr %16, ptr %17, align 8, !tbaa !131
  %18 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %19 = getelementptr inbounds %struct.tPoseSlideOp, ptr %5, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !66
  %20 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %21 = getelementptr inbounds %struct.tPoseSlideOp, ptr %5, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !68
  %22 = load ptr, ptr %5, align 8, !tbaa !54
  %23 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 22, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !91
  %25 = getelementptr inbounds %struct.tPoseSlideOp, ptr %5, i64 0, i32 7
  store i32 %24, ptr %25, align 8, !tbaa !60
  %26 = zext nneg i16 %2 to i32
  %27 = getelementptr inbounds %struct.tPoseSlideOp, ptr %5, i64 0, i32 10
  store i32 %26, ptr %27, align 4, !tbaa !77
  %28 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !76
  %30 = tail call float @RNA_float_get(ptr noundef %29, ptr noundef nonnull @.str.37) #8
  %31 = getelementptr inbounds %struct.tPoseSlideOp, ptr %5, i64 0, i32 12
  store float %30, ptr %31, align 4, !tbaa !75
  %32 = load ptr, ptr %28, align 8, !tbaa !76
  %33 = tail call i32 @RNA_int_get(ptr noundef %32, ptr noundef nonnull @.str.38) #8
  %34 = getelementptr inbounds %struct.tPoseSlideOp, ptr %5, i64 0, i32 8
  store i32 %33, ptr %34, align 4, !tbaa !132
  %35 = load ptr, ptr %28, align 8, !tbaa !76
  %36 = tail call i32 @RNA_int_get(ptr noundef %35, ptr noundef nonnull @.str.39) #8
  %37 = getelementptr inbounds %struct.tPoseSlideOp, ptr %5, i64 0, i32 9
  store i32 %36, ptr %37, align 8, !tbaa !133
  %38 = load ptr, ptr %10, align 8, !tbaa !59
  %39 = icmp eq ptr %38, null
  br i1 %39, label %60, label %40

40:                                               ; preds = %15
  %41 = load ptr, ptr %17, align 8, !tbaa !131
  %42 = icmp eq ptr %41, null
  br i1 %42, label %60, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.Object, ptr %38, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !79
  %46 = icmp eq ptr %45, null
  br i1 %46, label %60, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %45, align 8, !tbaa !84
  %49 = icmp eq ptr %48, null
  br i1 %49, label %60, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.tPoseSlideOp, ptr %5, i64 0, i32 5
  tail call void @poseAnim_mapping_get(ptr noundef %0, ptr noundef nonnull %51, ptr noundef nonnull %38, ptr noundef nonnull %48) #8
  %52 = load ptr, ptr %10, align 8, !tbaa !59
  %53 = getelementptr inbounds %struct.Object, ptr %52, i64 0, i32 18
  %54 = load ptr, ptr %53, align 8, !tbaa !134
  %55 = getelementptr inbounds %struct.bPose, ptr %54, i64 0, i32 2
  %56 = load i16, ptr %55, align 8, !tbaa !135
  %57 = and i16 %56, -7
  %58 = or disjoint i16 %57, 2
  store i16 %58, ptr %55, align 8, !tbaa !135
  %59 = getelementptr inbounds %struct.tPoseSlideOp, ptr %5, i64 0, i32 6
  tail call void @BLI_dlrbTree_init(ptr noundef nonnull %59) #8
  br label %60

60:                                               ; preds = %15, %40, %43, %47, %50
  %61 = phi i32 [ 1, %50 ], [ 0, %47 ], [ 0, %43 ], [ 0, %40 ], [ 0, %15 ]
  ret i32 %61
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_object_pose_armature_get(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @poseAnim_mapping_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_dlrbTree_init(ptr noundef) local_unnamed_addr #1

declare void @poseAnim_mapping_free(ptr noundef) local_unnamed_addr #1

declare void @BLI_dlrbTree_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @pose_slide_apply(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  %11 = alloca [4 x float], align 16
  %12 = getelementptr inbounds %struct.tPoseSlideOp, ptr %1, i64 0, i32 8
  %13 = load i32, ptr %12, align 4, !tbaa !132
  %14 = getelementptr inbounds %struct.tPoseSlideOp, ptr %1, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !133
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = add nsw i32 %13, -1
  store i32 %18, ptr %12, align 4, !tbaa !132
  %19 = add nsw i32 %15, 1
  store i32 %19, ptr %14, align 8, !tbaa !133
  br label %20

20:                                               ; preds = %17, %2
  %21 = getelementptr inbounds %struct.tPoseSlideOp, ptr %1, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !61
  %23 = icmp eq ptr %22, null
  br i1 %23, label %263, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tPoseSlideOp, ptr %1, i64 0, i32 7
  %26 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %27 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 2
  %28 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 3
  %29 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  %30 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  %31 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %32 = getelementptr inbounds %struct.tPoseSlideOp, ptr %1, i64 0, i32 10
  %33 = getelementptr inbounds %struct.tPoseSlideOp, ptr %1, i64 0, i32 12
  %34 = getelementptr inbounds %struct.tPoseSlideOp, ptr %1, i64 0, i32 12
  %35 = getelementptr inbounds %struct.tPoseSlideOp, ptr %1, i64 0, i32 12
  br label %36

36:                                               ; preds = %24, %260
  %37 = phi ptr [ %22, %24 ], [ %261, %260 ]
  %38 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !137
  %40 = getelementptr inbounds %struct.bPoseChannel, ptr %39, i64 0, i32 5
  %41 = load i16, ptr %40, align 8, !tbaa !139
  %42 = and i16 %41, 1
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %64, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.bPoseChannel, ptr %39, i64 0, i32 20
  %46 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %37, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !141
  %48 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.43, ptr noundef %47, ptr noundef nonnull @.str.40) #8
  %49 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %37, i64 0, i32 2
  %50 = call ptr @poseAnim_mapping_getNextFCurve(ptr noundef nonnull %49, ptr noundef null, ptr noundef %48) #8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %62, label %52

52:                                               ; preds = %44, %52
  %53 = phi ptr [ %60, %52 ], [ %50, %44 ]
  %54 = getelementptr inbounds %struct.LinkData, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !109
  %56 = getelementptr inbounds %struct.FCurve, ptr %55, i64 0, i32 11
  %57 = load i32, ptr %56, align 4, !tbaa !122
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, ptr %45, i64 %58
  call fastcc void @pose_slide_apply_val(ptr noundef %1, ptr noundef %55, ptr noundef nonnull %59)
  %60 = call ptr @poseAnim_mapping_getNextFCurve(ptr noundef nonnull %49, ptr noundef nonnull %53, ptr noundef %48) #8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %52, !llvm.loop !142

62:                                               ; preds = %52, %44
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %63(ptr noundef %48) #8
  br label %64

64:                                               ; preds = %62, %36
  %65 = load i16, ptr %40, align 8, !tbaa !139
  %66 = and i16 %65, 4
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %88, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.bPoseChannel, ptr %39, i64 0, i32 21
  %70 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %37, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !141
  %72 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.43, ptr noundef %71, ptr noundef nonnull @.str.41) #8
  %73 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %37, i64 0, i32 2
  %74 = call ptr @poseAnim_mapping_getNextFCurve(ptr noundef nonnull %73, ptr noundef null, ptr noundef %72) #8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %86, label %76

76:                                               ; preds = %68, %76
  %77 = phi ptr [ %84, %76 ], [ %74, %68 ]
  %78 = getelementptr inbounds %struct.LinkData, ptr %77, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !109
  %80 = getelementptr inbounds %struct.FCurve, ptr %79, i64 0, i32 11
  %81 = load i32, ptr %80, align 4, !tbaa !122
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, ptr %69, i64 %82
  call fastcc void @pose_slide_apply_val(ptr noundef %1, ptr noundef %79, ptr noundef nonnull %83)
  %84 = call ptr @poseAnim_mapping_getNextFCurve(ptr noundef nonnull %73, ptr noundef nonnull %77, ptr noundef %72) #8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %76, !llvm.loop !142

86:                                               ; preds = %76, %68
  %87 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %87(ptr noundef %72) #8
  br label %88

88:                                               ; preds = %86, %64
  %89 = load i16, ptr %40, align 8, !tbaa !139
  %90 = and i16 %89, 2
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %215, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.bPoseChannel, ptr %39, i64 0, i32 26
  %94 = load i16, ptr %93, align 4, !tbaa !143
  %95 = icmp sgt i16 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.bPoseChannel, ptr %39, i64 0, i32 22
  %98 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %37, i64 0, i32 4
  %99 = load ptr, ptr %98, align 8, !tbaa !141
  %100 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.43, ptr noundef %99, ptr noundef nonnull @.str.42) #8
  %101 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %37, i64 0, i32 2
  %102 = call ptr @poseAnim_mapping_getNextFCurve(ptr noundef nonnull %101, ptr noundef null, ptr noundef %100) #8
  %103 = icmp eq ptr %102, null
  br i1 %103, label %212, label %104

104:                                              ; preds = %96, %104
  %105 = phi ptr [ %112, %104 ], [ %102, %96 ]
  %106 = getelementptr inbounds %struct.LinkData, ptr %105, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !109
  %108 = getelementptr inbounds %struct.FCurve, ptr %107, i64 0, i32 11
  %109 = load i32, ptr %108, align 4, !tbaa !122
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, ptr %97, i64 %110
  call fastcc void @pose_slide_apply_val(ptr noundef %1, ptr noundef %107, ptr noundef nonnull %111)
  %112 = call ptr @poseAnim_mapping_getNextFCurve(ptr noundef nonnull %101, ptr noundef nonnull %105, ptr noundef %100) #8
  %113 = icmp eq ptr %112, null
  br i1 %113, label %212, label %104, !llvm.loop !142

114:                                              ; preds = %92
  %115 = icmp eq i16 %94, -1
  br i1 %115, label %215, label %116

116:                                              ; preds = %114
  %117 = load ptr, ptr %38, align 8, !tbaa !137
  %118 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %37, i64 0, i32 4
  %119 = load ptr, ptr %118, align 8, !tbaa !141
  %120 = call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.43, ptr noundef %119, ptr noundef nonnull @.str.44) #8
  %121 = load i32, ptr %25, align 8, !tbaa !60
  %122 = sitofp i32 %121 to float
  %123 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %37, i64 0, i32 2
  %124 = call ptr @poseAnim_mapping_getNextFCurve(ptr noundef nonnull %123, ptr noundef null, ptr noundef %120) #8
  %125 = icmp eq ptr %124, null
  br i1 %125, label %147, label %126

126:                                              ; preds = %116, %140
  %127 = phi ptr [ %145, %140 ], [ %124, %116 ]
  %128 = phi ptr [ %144, %140 ], [ null, %116 ]
  %129 = phi ptr [ %143, %140 ], [ null, %116 ]
  %130 = phi ptr [ %142, %140 ], [ null, %116 ]
  %131 = phi ptr [ %141, %140 ], [ null, %116 ]
  %132 = getelementptr inbounds %struct.LinkData, ptr %127, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !109
  %134 = getelementptr inbounds %struct.FCurve, ptr %133, i64 0, i32 11
  %135 = load i32, ptr %134, align 4, !tbaa !122
  switch i32 %135, label %140 [
    i32 3, label %136
    i32 2, label %137
    i32 1, label %138
    i32 0, label %139
  ]

136:                                              ; preds = %126
  br label %140

137:                                              ; preds = %126
  br label %140

138:                                              ; preds = %126
  br label %140

139:                                              ; preds = %126
  br label %140

140:                                              ; preds = %139, %138, %137, %136, %126
  %141 = phi ptr [ %131, %126 ], [ %131, %139 ], [ %131, %138 ], [ %131, %137 ], [ %133, %136 ]
  %142 = phi ptr [ %130, %126 ], [ %130, %139 ], [ %130, %138 ], [ %133, %137 ], [ %130, %136 ]
  %143 = phi ptr [ %129, %126 ], [ %129, %139 ], [ %133, %138 ], [ %129, %137 ], [ %129, %136 ]
  %144 = phi ptr [ %128, %126 ], [ %133, %139 ], [ %128, %138 ], [ %128, %137 ], [ %128, %136 ]
  %145 = call ptr @poseAnim_mapping_getNextFCurve(ptr noundef nonnull %123, ptr noundef nonnull %127, ptr noundef %120) #8
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %126, !llvm.loop !144

147:                                              ; preds = %140, %116
  %148 = phi ptr [ null, %116 ], [ %141, %140 ]
  %149 = phi ptr [ null, %116 ], [ %142, %140 ]
  %150 = phi ptr [ null, %116 ], [ %143, %140 ]
  %151 = phi ptr [ null, %116 ], [ %144, %140 ]
  %152 = icmp ne ptr %151, null
  %153 = icmp ne ptr %150, null
  %154 = select i1 %152, i1 %153, i1 false
  %155 = icmp ne ptr %149, null
  %156 = select i1 %154, i1 %155, i1 false
  %157 = icmp ne ptr %148, null
  %158 = select i1 %156, i1 %157, i1 false
  br i1 %158, label %159, label %212

159:                                              ; preds = %147
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  %160 = load i32, ptr %12, align 4, !tbaa !132
  %161 = sitofp i32 %160 to float
  %162 = call float @evaluate_fcurve(ptr noundef nonnull %151, float noundef %161) #8
  store float %162, ptr %6, align 16, !tbaa !108
  %163 = load i32, ptr %12, align 4, !tbaa !132
  %164 = sitofp i32 %163 to float
  %165 = call float @evaluate_fcurve(ptr noundef nonnull %150, float noundef %164) #8
  store float %165, ptr %26, align 4, !tbaa !108
  %166 = load i32, ptr %12, align 4, !tbaa !132
  %167 = sitofp i32 %166 to float
  %168 = call float @evaluate_fcurve(ptr noundef nonnull %149, float noundef %167) #8
  store float %168, ptr %27, align 8, !tbaa !108
  %169 = load i32, ptr %12, align 4, !tbaa !132
  %170 = sitofp i32 %169 to float
  %171 = call float @evaluate_fcurve(ptr noundef nonnull %148, float noundef %170) #8
  store float %171, ptr %28, align 4, !tbaa !108
  %172 = load i32, ptr %14, align 8, !tbaa !133
  %173 = sitofp i32 %172 to float
  %174 = call float @evaluate_fcurve(ptr noundef nonnull %151, float noundef %173) #8
  store float %174, ptr %7, align 16, !tbaa !108
  %175 = load i32, ptr %14, align 8, !tbaa !133
  %176 = sitofp i32 %175 to float
  %177 = call float @evaluate_fcurve(ptr noundef nonnull %150, float noundef %176) #8
  store float %177, ptr %29, align 4, !tbaa !108
  %178 = load i32, ptr %14, align 8, !tbaa !133
  %179 = sitofp i32 %178 to float
  %180 = call float @evaluate_fcurve(ptr noundef nonnull %149, float noundef %179) #8
  store float %180, ptr %30, align 8, !tbaa !108
  %181 = load i32, ptr %14, align 8, !tbaa !133
  %182 = sitofp i32 %181 to float
  %183 = call float @evaluate_fcurve(ptr noundef nonnull %148, float noundef %182) #8
  store float %183, ptr %31, align 4, !tbaa !108
  %184 = load i32, ptr %32, align 4, !tbaa !77
  switch i32 %184, label %191 [
    i32 2, label %185
    i32 0, label %188
  ]

185:                                              ; preds = %159
  %186 = getelementptr inbounds %struct.bPoseChannel, ptr %117, i64 0, i32 23
  %187 = load float, ptr %34, align 4, !tbaa !75
  call void @interp_qt_qtqt(ptr noundef nonnull %186, ptr noundef nonnull %6, ptr noundef nonnull %7, float noundef %187) #8
  br label %211

188:                                              ; preds = %159
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  %189 = getelementptr inbounds %struct.bPoseChannel, ptr %117, i64 0, i32 23
  call void @sub_qt_qtqt(ptr noundef nonnull %8, ptr noundef nonnull %189, ptr noundef nonnull %6) #8
  call void @copy_qt_qt(ptr noundef nonnull %9, ptr noundef nonnull %189) #8
  %190 = load float, ptr %33, align 4, !tbaa !75
  call void @add_qt_qtqt(ptr noundef nonnull %189, ptr noundef nonnull %9, ptr noundef nonnull %8, float noundef %190) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  br label %211

191:                                              ; preds = %159
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8
  %192 = load float, ptr %35, align 4, !tbaa !75
  %193 = fmul float %192, 1.000000e+01
  %194 = call float @llvm.ceil.f32(float %193)
  %195 = fptosi float %194 to i32
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %210

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.bPoseChannel, ptr %117, i64 0, i32 23
  br label %199

199:                                              ; preds = %197, %199
  %200 = phi i32 [ %195, %197 ], [ %201, %199 ]
  %201 = add nsw i32 %200, -1
  %202 = load i32, ptr %12, align 4, !tbaa !132
  %203 = sitofp i32 %202 to float
  %204 = fsub float %122, %203
  %205 = load i32, ptr %14, align 8, !tbaa !133
  %206 = sub nsw i32 %205, %202
  %207 = sitofp i32 %206 to float
  %208 = fdiv float %204, %207
  call void @interp_qt_qtqt(ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %7, float noundef %208) #8
  call void @copy_qt_qt(ptr noundef nonnull %11, ptr noundef nonnull %198) #8
  call void @interp_qt_qtqt(ptr noundef nonnull %198, ptr noundef nonnull %11, ptr noundef nonnull %10, float noundef 0x3FC5555560000000) #8
  %209 = icmp sgt i32 %200, 1
  br i1 %209, label %199, label %210, !llvm.loop !145

210:                                              ; preds = %199, %191
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8
  br label %211

211:                                              ; preds = %210, %188, %185
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  br label %212

212:                                              ; preds = %104, %211, %147, %96
  %213 = phi ptr [ %100, %96 ], [ %120, %147 ], [ %120, %211 ], [ %100, %104 ]
  %214 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  call void %214(ptr noundef %213) #8
  br label %215

215:                                              ; preds = %212, %114, %88
  %216 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %37, i64 0, i32 11
  %217 = load ptr, ptr %216, align 8, !tbaa !146
  %218 = icmp eq ptr %217, null
  br i1 %218, label %260, label %219

219:                                              ; preds = %215
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %220 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %37, i64 0, i32 4
  %221 = load ptr, ptr %220, align 8, !tbaa !141
  %222 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %221) #9
  %223 = load ptr, ptr %38, align 8, !tbaa !137
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_PoseBone, ptr noundef %223, ptr noundef nonnull %3) #8
  %224 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %37, i64 0, i32 2
  %225 = load ptr, ptr %224, align 8, !tbaa !61
  %226 = icmp eq ptr %225, null
  br i1 %226, label %259, label %227

227:                                              ; preds = %219
  %228 = shl i64 %222, 32
  %229 = ashr exact i64 %228, 32
  br label %230

230:                                              ; preds = %227, %256
  %231 = phi ptr [ %225, %227 ], [ %257, %256 ]
  %232 = getelementptr inbounds %struct.LinkData, ptr %231, i64 0, i32 2
  %233 = load ptr, ptr %232, align 8, !tbaa !109
  %234 = getelementptr inbounds %struct.FCurve, ptr %233, i64 0, i32 12
  %235 = load ptr, ptr %234, align 8, !tbaa !121
  %236 = icmp eq ptr %235, null
  br i1 %236, label %256, label %237

237:                                              ; preds = %230
  %238 = load ptr, ptr %220, align 8, !tbaa !141
  %239 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %235, ptr noundef nonnull dereferenceable(1) %238) #9
  %240 = getelementptr inbounds i8, ptr %239, i64 %229
  %241 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %240, ptr noundef nonnull dereferenceable(1) @.str.45) #9
  %242 = icmp eq ptr %241, null
  br i1 %242, label %256, label %243

243:                                              ; preds = %237
  %244 = call ptr @RNA_struct_find_property(ptr noundef nonnull %3, ptr noundef nonnull %241) #8
  %245 = icmp eq ptr %244, null
  br i1 %245, label %256, label %246

246:                                              ; preds = %243
  %247 = call i32 @RNA_property_type(ptr noundef nonnull %244) #8
  switch i32 %247, label %256 [
    i32 2, label %248
    i32 0, label %251
    i32 4, label %251
    i32 1, label %251
  ]

248:                                              ; preds = %246
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  %249 = call float @RNA_property_float_get(ptr noundef nonnull %3, ptr noundef nonnull %244) #8
  store float %249, ptr %4, align 4, !tbaa !108
  call fastcc void @pose_slide_apply_val(ptr noundef %1, ptr noundef %233, ptr noundef nonnull %4)
  %250 = load float, ptr %4, align 4, !tbaa !108
  call void @RNA_property_float_set(ptr noundef nonnull %3, ptr noundef nonnull %244, float noundef %250) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %256

251:                                              ; preds = %246, %246, %246
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %252 = call i32 @RNA_property_int_get(ptr noundef nonnull %3, ptr noundef nonnull %244) #8
  %253 = sitofp i32 %252 to float
  store float %253, ptr %5, align 4, !tbaa !108
  call fastcc void @pose_slide_apply_val(ptr noundef %1, ptr noundef %233, ptr noundef nonnull %5)
  %254 = load float, ptr %5, align 4, !tbaa !108
  %255 = fptosi float %254 to i32
  call void @RNA_property_int_set(ptr noundef nonnull %3, ptr noundef nonnull %244, i32 noundef %255) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %256

256:                                              ; preds = %251, %248, %246, %243, %237, %230
  %257 = load ptr, ptr %231, align 8, !tbaa !61
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %230, !llvm.loop !147

259:                                              ; preds = %256, %219
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  br label %260

260:                                              ; preds = %259, %215
  %261 = load ptr, ptr %37, align 8, !tbaa !61
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %36, !llvm.loop !148

263:                                              ; preds = %260, %20
  %264 = load ptr, ptr %1, align 8, !tbaa !54
  %265 = getelementptr inbounds %struct.tPoseSlideOp, ptr %1, i64 0, i32 3
  %266 = load ptr, ptr %265, align 8, !tbaa !59
  call void @poseAnim_mapping_refresh(ptr noundef %0, ptr noundef %264, ptr noundef %266) #8
  ret void
}

declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #1

declare ptr @poseAnim_mapping_getNextFCurve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @pose_slide_apply_val(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tPoseSlideOp, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.tPoseSlideOp, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !132
  %8 = sitofp i32 %7 to float
  %9 = tail call float @evaluate_fcurve(ptr noundef %1, float noundef %8) #8
  %10 = getelementptr inbounds %struct.tPoseSlideOp, ptr %0, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !133
  %12 = sitofp i32 %11 to float
  %13 = tail call float @evaluate_fcurve(ptr noundef %1, float noundef %12) #8
  %14 = getelementptr inbounds %struct.tPoseSlideOp, ptr %0, i64 0, i32 10
  %15 = load i32, ptr %14, align 4, !tbaa !77
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.tPoseSlideOp, ptr %0, i64 0, i32 12
  %19 = load float, ptr %18, align 4, !tbaa !75
  %20 = fsub float 1.000000e+00, %19
  br label %32

21:                                               ; preds = %3
  %22 = sitofp i32 %5 to float
  %23 = load i32, ptr %6, align 4, !tbaa !132
  %24 = sitofp i32 %23 to float
  %25 = fsub float %22, %24
  %26 = load i32, ptr %10, align 8, !tbaa !133
  %27 = sitofp i32 %26 to float
  %28 = fsub float %27, %22
  %29 = fadd float %25, %28
  %30 = fdiv float %25, %29
  %31 = fdiv float %28, %29
  br label %32

32:                                               ; preds = %21, %17
  %33 = phi float [ %20, %17 ], [ %31, %21 ]
  %34 = phi float [ %19, %17 ], [ %30, %21 ]
  switch i32 %15, label %77 [
    i32 0, label %35
    i32 1, label %54
    i32 2, label %72
  ]

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.tPoseSlideOp, ptr %0, i64 0, i32 12
  %37 = load float, ptr %36, align 4, !tbaa !75
  %38 = fmul float %37, 1.000000e+01
  %39 = tail call float @llvm.ceil.f32(float %38)
  %40 = fptosi float %39 to i32
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %77

42:                                               ; preds = %35
  %43 = fmul float %13, %34
  %44 = tail call float @llvm.fmuladd.f32(float %9, float %33, float %43)
  %45 = fneg float %44
  %46 = load float, ptr %2, align 4, !tbaa !108
  br label %47

47:                                               ; preds = %42, %47
  %48 = phi float [ %46, %42 ], [ %52, %47 ]
  %49 = phi i32 [ %40, %42 ], [ %50, %47 ]
  %50 = add nsw i32 %49, -1
  %51 = tail call float @llvm.fmuladd.f32(float %48, float 6.000000e+00, float %45)
  %52 = fdiv float %51, 5.000000e+00
  %53 = icmp sgt i32 %49, 1
  br i1 %53, label %47, label %75, !llvm.loop !149

54:                                               ; preds = %32
  %55 = getelementptr inbounds %struct.tPoseSlideOp, ptr %0, i64 0, i32 12
  %56 = load float, ptr %55, align 4, !tbaa !75
  %57 = fmul float %56, 1.000000e+01
  %58 = tail call float @llvm.ceil.f32(float %57)
  %59 = fptosi float %58 to i32
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %54
  %62 = fmul float %13, %34
  %63 = tail call float @llvm.fmuladd.f32(float %9, float %33, float %62)
  %64 = load float, ptr %2, align 4, !tbaa !108
  br label %65

65:                                               ; preds = %61, %65
  %66 = phi float [ %64, %61 ], [ %70, %65 ]
  %67 = phi i32 [ %59, %61 ], [ %68, %65 ]
  %68 = add nsw i32 %67, -1
  %69 = tail call float @llvm.fmuladd.f32(float %66, float 5.000000e+00, float %63)
  %70 = fdiv float %69, 6.000000e+00
  %71 = icmp sgt i32 %67, 1
  br i1 %71, label %65, label %75, !llvm.loop !150

72:                                               ; preds = %32
  %73 = fmul float %13, %34
  %74 = tail call float @llvm.fmuladd.f32(float %9, float %33, float %73)
  br label %75

75:                                               ; preds = %65, %47, %72
  %76 = phi float [ %74, %72 ], [ %52, %47 ], [ %70, %65 ]
  store float %76, ptr %2, align 4, !tbaa !108
  br label %77

77:                                               ; preds = %75, %54, %35, %32
  ret void
}

declare float @evaluate_fcurve(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare void @interp_qt_qtqt(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare void @sub_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @add_qt_qtqt(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #1

declare float @RNA_property_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_property_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare i32 @RNA_property_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_property_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @poseAnim_mapping_refresh(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @poseAnim_mapping_autoKeyframe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @pose_slide_invoke_common(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [32 x i8], align 16
  %5 = alloca [32 x i8], align 16
  %6 = alloca float, align 4
  %7 = getelementptr inbounds %struct.tPoseSlideOp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = tail call ptr @CTX_wm_window(ptr noundef %0) #8
  %12 = getelementptr inbounds %struct.tPoseSlideOp, ptr %2, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !61
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.tPoseSlideOp, ptr %2, i64 0, i32 6
  br label %20

17:                                               ; preds = %25, %20
  %18 = load ptr, ptr %21, align 8, !tbaa !61
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20, !llvm.loop !151

20:                                               ; preds = %15, %17
  %21 = phi ptr [ %13, %15 ], [ %18, %17 ]
  %22 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !61
  %24 = icmp eq ptr %23, null
  br i1 %24, label %17, label %25

25:                                               ; preds = %20, %25
  %26 = phi ptr [ %29, %25 ], [ %23, %20 ]
  %27 = getelementptr inbounds %struct.LinkData, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !109
  tail call void @fcurve_to_keylist(ptr noundef %10, ptr noundef %28, ptr noundef nonnull %16, ptr noundef null) #8
  %29 = load ptr, ptr %26, align 8, !tbaa !61
  %30 = icmp eq ptr %29, null
  br i1 %30, label %17, label %25, !llvm.loop !152

31:                                               ; preds = %17, %3
  %32 = getelementptr inbounds %struct.tPoseSlideOp, ptr %2, i64 0, i32 6
  tail call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %32) #8
  %33 = getelementptr inbounds %struct.tPoseSlideOp, ptr %2, i64 0, i32 6, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !153
  %35 = icmp eq ptr %34, null
  br i1 %35, label %116, label %36

36:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  %37 = getelementptr inbounds %struct.tPoseSlideOp, ptr %2, i64 0, i32 7
  %38 = load i32, ptr %37, align 8, !tbaa !60
  %39 = sitofp i32 %38 to float
  store float %39, ptr %6, align 4, !tbaa !108
  %40 = call ptr @BLI_dlrbTree_search_exact(ptr noundef nonnull %32, ptr noundef nonnull @compare_ak_cfraPtr, ptr noundef nonnull %6) #8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %67

42:                                               ; preds = %36
  %43 = call ptr @BLI_dlrbTree_search_prev(ptr noundef nonnull %32, ptr noundef nonnull @compare_ak_cfraPtr, ptr noundef nonnull %6) #8
  %44 = call ptr @BLI_dlrbTree_search_next(ptr noundef nonnull %32, ptr noundef nonnull @compare_ak_cfraPtr, ptr noundef nonnull %6) #8
  %45 = icmp eq ptr %43, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ActKeyColumn, ptr %43, i64 0, i32 8
  %48 = load float, ptr %47, align 4, !tbaa !154
  br label %53

49:                                               ; preds = %42
  %50 = load i32, ptr %37, align 8, !tbaa !60
  %51 = add nsw i32 %50, -1
  %52 = sitofp i32 %51 to float
  br label %53

53:                                               ; preds = %49, %46
  %54 = phi float [ %48, %46 ], [ %52, %49 ]
  %55 = fptosi float %54 to i32
  %56 = getelementptr inbounds %struct.tPoseSlideOp, ptr %2, i64 0, i32 8
  store i32 %55, ptr %56, align 4, !tbaa !132
  %57 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !76
  call void @RNA_int_set(ptr noundef %58, ptr noundef nonnull @.str.38, i32 noundef %55) #8
  %59 = icmp eq ptr %44, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.ActKeyColumn, ptr %44, i64 0, i32 8
  %62 = load float, ptr %61, align 4, !tbaa !154
  br label %93

63:                                               ; preds = %53
  %64 = load i32, ptr %37, align 8, !tbaa !60
  %65 = add nsw i32 %64, 1
  %66 = sitofp i32 %65 to float
  br label %93

67:                                               ; preds = %36
  %68 = getelementptr inbounds %struct.ActKeyColumn, ptr %40, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !156
  %70 = icmp eq ptr %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.ActKeyColumn, ptr %69, i64 0, i32 8
  %73 = load float, ptr %72, align 4, !tbaa !154
  br label %78

74:                                               ; preds = %67
  %75 = load i32, ptr %37, align 8, !tbaa !60
  %76 = add nsw i32 %75, -1
  %77 = sitofp i32 %76 to float
  br label %78

78:                                               ; preds = %74, %71
  %79 = phi float [ %73, %71 ], [ %77, %74 ]
  %80 = fptosi float %79 to i32
  %81 = getelementptr inbounds %struct.tPoseSlideOp, ptr %2, i64 0, i32 8
  store i32 %80, ptr %81, align 4, !tbaa !132
  %82 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %83 = load ptr, ptr %82, align 8, !tbaa !76
  call void @RNA_int_set(ptr noundef %83, ptr noundef nonnull @.str.38, i32 noundef %80) #8
  %84 = load ptr, ptr %40, align 8, !tbaa !157
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.ActKeyColumn, ptr %84, i64 0, i32 8
  %88 = load float, ptr %87, align 4, !tbaa !154
  br label %93

89:                                               ; preds = %78
  %90 = load i32, ptr %37, align 8, !tbaa !60
  %91 = add nsw i32 %90, 1
  %92 = sitofp i32 %91 to float
  br label %93

93:                                               ; preds = %86, %89, %60, %63
  %94 = phi float [ %62, %60 ], [ %66, %63 ], [ %88, %86 ], [ %92, %89 ]
  %95 = phi ptr [ %57, %60 ], [ %57, %63 ], [ %82, %86 ], [ %82, %89 ]
  %96 = fptosi float %94 to i32
  %97 = getelementptr inbounds %struct.tPoseSlideOp, ptr %2, i64 0, i32 9
  store i32 %96, ptr %97, align 8, !tbaa !133
  %98 = load ptr, ptr %95, align 8, !tbaa !76
  call void @RNA_int_set(ptr noundef %98, ptr noundef nonnull @.str.39, i32 noundef %96) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call fastcc void @pose_slide_apply(ptr noundef %0, ptr noundef %2)
  %99 = load ptr, ptr %2, align 8, !tbaa !54
  %100 = load ptr, ptr %7, align 8, !tbaa !59
  call void @poseAnim_mapping_refresh(ptr noundef %0, ptr noundef %99, ptr noundef %100) #8
  call void @WM_cursor_modal_set(ptr noundef %11, i32 noundef 16) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  %101 = getelementptr inbounds %struct.tPoseSlideOp, ptr %2, i64 0, i32 10
  %102 = load i32, ptr %101, align 4, !tbaa !77
  switch i32 %102, label %106 [
    i32 0, label %103
    i32 1, label %104
    i32 2, label %105
  ]

103:                                              ; preds = %93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %5, ptr noundef nonnull align 1 dereferenceable(10) @.str, i64 10, i1 false) #8
  br label %107

104:                                              ; preds = %93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) %5, ptr noundef nonnull align 1 dereferenceable(11) @.str.3, i64 11, i1 false) #8
  br label %107

105:                                              ; preds = %93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %5, ptr noundef nonnull align 1 dereferenceable(10) @.str.47, i64 10, i1 false) #8
  br label %107

106:                                              ; preds = %93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) %5, ptr noundef nonnull align 1 dereferenceable(13) @.str.48, i64 13, i1 false) #8
  br label %107

107:                                              ; preds = %103, %104, %105, %106
  %108 = getelementptr inbounds %struct.tPoseSlideOp, ptr %2, i64 0, i32 12
  %109 = load float, ptr %108, align 4, !tbaa !75
  %110 = fmul float %109, 1.000000e+02
  %111 = fptosi float %110 to i32
  %112 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 32, ptr noundef nonnull @.str.49, ptr noundef nonnull %5, i32 noundef %111) #8
  %113 = getelementptr inbounds %struct.tPoseSlideOp, ptr %2, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !66
  call void @ED_area_headerprint(ptr noundef %114, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #8
  %115 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #8
  br label %127

116:                                              ; preds = %31
  %117 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %118 = load ptr, ptr %117, align 8, !tbaa !86
  tail call void @BKE_report(ptr noundef %118, i32 noundef 32, ptr noundef nonnull @.str.46) #8
  %119 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %120 = load ptr, ptr %119, align 8, !tbaa !52
  %121 = icmp eq ptr %120, null
  br i1 %121, label %126, label %122

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.tPoseSlideOp, ptr %120, i64 0, i32 5
  tail call void @poseAnim_mapping_free(ptr noundef nonnull %123) #8
  %124 = getelementptr inbounds %struct.tPoseSlideOp, ptr %120, i64 0, i32 6
  tail call void @BLI_dlrbTree_free(ptr noundef nonnull %124) #8
  %125 = load ptr, ptr @MEM_freeN, align 8, !tbaa !61
  tail call void %125(ptr noundef nonnull %120) #8
  br label %126

126:                                              ; preds = %116, %122
  store ptr null, ptr %119, align 8, !tbaa !52
  br label %127

127:                                              ; preds = %107, %126
  %128 = phi i32 [ 1, %107 ], [ 2, %126 ]
  ret i32 %128
}

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

declare void @fcurve_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_dlrbTree_linkedlist_sync(ptr noundef) local_unnamed_addr #1

declare ptr @BLI_dlrbTree_search_exact(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare signext i16 @compare_ak_cfraPtr(ptr noundef, ptr noundef) #1

declare ptr @BLI_dlrbTree_search_prev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_dlrbTree_search_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #1

declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare void @poseAnim_mapping_reset(ptr noundef) local_unnamed_addr #1

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @RNA_def_float_percentage(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_markers_make_cfra_list(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

declare signext i16 @compare_ab_cfraPtr(ptr noundef, ptr noundef) #1

declare zeroext i8 @actkeyblock_is_valid(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @binarysearch_bezt_index(ptr noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @RNA_path_resolve_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @RNA_property_array_check(ptr noundef) local_unnamed_addr #1

declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_property_boolean_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @RNA_property_int_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare float @RNA_property_float_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!45 = !{!35, !36, i64 48}
!46 = !{!35, !36, i64 64}
!47 = !{!35, !36, i64 56}
!48 = !{!35, !36, i64 72}
!49 = !{!35, !41, i64 184}
!50 = !{!35, !36, i64 88}
!51 = !{i32 0, i32 2}
!52 = !{!53, !36, i64 96}
!53 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!54 = !{!55, !36, i64 0}
!55 = !{!"tPoseSlideOp", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !56, i64 56, !57, i64 80, !57, i64 84, !57, i64 88, !57, i64 92, !57, i64 96, !58, i64 100}
!56 = !{!"DLRBT_Tree", !36, i64 0, !36, i64 8, !36, i64 16}
!57 = !{!"int", !37, i64 0}
!58 = !{!"float", !37, i64 0}
!59 = !{!55, !36, i64 24}
!60 = !{!55, !57, i64 80}
!61 = !{!36, !36, i64 0}
!62 = !{i32 1, i32 3}
!63 = !{!64, !41, i64 16}
!64 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !57, i64 20, !57, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !57, i64 48, !57, i64 52, !65, i64 56, !57, i64 64, !57, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !57, i64 108, !36, i64 112}
!65 = !{!"double", !37, i64 0}
!66 = !{!55, !36, i64 8}
!67 = !{!64, !57, i64 20}
!68 = !{!55, !36, i64 16}
!69 = !{!70, !57, i64 176}
!70 = !{!"ARegion", !36, i64 0, !36, i64 8, !71, i64 16, !73, i64 176, !73, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !58, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!71 = !{!"View2D", !72, i64 0, !72, i64 16, !73, i64 32, !73, i64 48, !73, i64 64, !37, i64 80, !37, i64 88, !58, i64 96, !58, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !57, i64 136, !57, i64 140, !36, i64 144, !36, i64 152}
!72 = !{!"rctf", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12}
!73 = !{!"rcti", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12}
!74 = !{!70, !41, i64 208}
!75 = !{!55, !58, i64 100}
!76 = !{!53, !36, i64 112}
!77 = !{!55, !57, i64 92}
!78 = !{!35, !36, i64 104}
!79 = !{!80, !36, i64 120}
!80 = !{!"Object", !81, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !57, i64 140, !57, i64 144, !57, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !82, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !57, i64 432, !57, i64 436, !36, i64 440, !36, i64 448, !57, i64 456, !57, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !58, i64 616, !58, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !57, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !57, i64 968, !57, i64 972, !57, i64 976, !57, i64 980, !57, i64 984, !58, i64 988, !58, i64 992, !58, i64 996, !58, i64 1000, !58, i64 1004, !58, i64 1008, !58, i64 1012, !58, i64 1016, !58, i64 1020, !58, i64 1024, !58, i64 1028, !58, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !58, i64 1048, !58, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !58, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !57, i64 1144, !57, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !58, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !83, i64 1304, !83, i64 1312, !57, i64 1320, !57, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!81 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !57, i64 100, !57, i64 104, !57, i64 108, !36, i64 112}
!82 = !{!"bAnimVizSettings", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !57, i64 32, !57, i64 36, !57, i64 40, !57, i64 44}
!83 = !{!"long", !37, i64 0}
!84 = !{!85, !36, i64 0}
!85 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !36, i64 40, !39, i64 48, !39, i64 64, !57, i64 80, !57, i64 84, !41, i64 88, !41, i64 90, !58, i64 92}
!86 = !{!53, !36, i64 120}
!87 = !{!37, !37, i64 0}
!88 = distinct !{!88, !89, !90}
!89 = !{!"llvm.loop.mustprogress"}
!90 = !{!"llvm.loop.unroll.disable"}
!91 = !{!92, !57, i64 680}
!92 = !{!"Scene", !81, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !57, i64 232, !57, i64 236, !57, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !93, i64 280, !100, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !57, i64 4380, !39, i64 4384, !101, i64 4400, !102, i64 4416, !105, i64 4600, !36, i64 4608, !106, i64 4616, !36, i64 4640, !83, i64 4648, !83, i64 4656, !95, i64 4664, !96, i64 4824, !107, i64 4888, !36, i64 4952}
!93 = !{!"RenderData", !94, i64 0, !36, i64 248, !36, i64 256, !97, i64 264, !98, i64 328, !57, i64 400, !57, i64 404, !57, i64 408, !58, i64 412, !57, i64 416, !57, i64 420, !57, i64 424, !57, i64 428, !41, i64 432, !41, i64 434, !58, i64 436, !58, i64 440, !58, i64 444, !58, i64 448, !58, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !57, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !57, i64 484, !57, i64 488, !41, i64 492, !41, i64 494, !57, i64 496, !57, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !57, i64 516, !57, i64 520, !57, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !72, i64 544, !72, i64 560, !73, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !58, i64 612, !58, i64 616, !58, i64 620, !58, i64 624, !57, i64 628, !58, i64 632, !58, i64 636, !58, i64 640, !58, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !58, i64 660, !58, i64 664, !41, i64 668, !41, i64 670, !58, i64 672, !58, i64 676, !37, i64 680, !57, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !57, i64 2520, !41, i64 2524, !41, i64 2526, !58, i64 2528, !58, i64 2532, !41, i64 2536, !41, i64 2538, !58, i64 2540, !41, i64 2544, !41, i64 2546, !57, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !58, i64 2560, !58, i64 2564, !36, i64 2568, !57, i64 2576, !58, i64 2580, !37, i64 2584, !99, i64 2616, !57, i64 3976, !57, i64 3980}
!94 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !58, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !95, i64 24, !96, i64 184}
!95 = !{!"ColorManagedViewSettings", !57, i64 0, !57, i64 4, !37, i64 8, !37, i64 72, !58, i64 136, !58, i64 140, !36, i64 144, !36, i64 152}
!96 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!97 = !{!"QuicktimeCodecSettings", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !57, i64 24, !57, i64 28, !57, i64 32, !57, i64 36, !57, i64 40, !57, i64 44, !41, i64 48, !41, i64 50, !57, i64 52, !57, i64 56, !57, i64 60}
!98 = !{!"FFMpegCodecData", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !57, i64 24, !57, i64 28, !58, i64 32, !57, i64 36, !57, i64 40, !57, i64 44, !57, i64 48, !57, i64 52, !57, i64 56, !57, i64 60, !36, i64 64}
!99 = !{!"BakeData", !94, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !58, i64 1280, !58, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!100 = !{!"AudioData", !57, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !57, i64 16, !41, i64 20, !41, i64 22, !58, i64 24, !58, i64 28}
!101 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!102 = !{!"GameData", !101, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !103, i64 40, !41, i64 64, !41, i64 66, !58, i64 68, !104, i64 72, !58, i64 128, !58, i64 132, !57, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !58, i64 164, !58, i64 168, !58, i64 172, !58, i64 176, !58, i64 180}
!103 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !58, i64 8, !58, i64 12, !36, i64 16}
!104 = !{!"RecastData", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !58, i64 24, !58, i64 28, !58, i64 32, !58, i64 36, !57, i64 40, !58, i64 44, !58, i64 48, !41, i64 52, !41, i64 54}
!105 = !{!"UnitSettings", !58, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!106 = !{!"PhysicsSettings", !37, i64 0, !57, i64 12, !57, i64 16, !57, i64 20}
!107 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!108 = !{!58, !58, i64 0}
!109 = !{!110, !36, i64 16}
!110 = !{!"LinkData", !36, i64 0, !36, i64 8, !36, i64 16}
!111 = distinct !{!111, !89, !90}
!112 = !{!113, !36, i64 0}
!113 = !{!"ActKeyBlock", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 41, !41, i64 42, !58, i64 44, !58, i64 48, !58, i64 52, !41, i64 56, !41, i64 58}
!114 = !{!113, !58, i64 52}
!115 = !{!113, !58, i64 48}
!116 = !{!113, !41, i64 58}
!117 = !{!113, !58, i64 44}
!118 = !{!119, !36, i64 48}
!119 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 48, !36, i64 56, !57, i64 64, !58, i64 68, !41, i64 72, !41, i64 74, !57, i64 76, !36, i64 80, !57, i64 88, !37, i64 92, !58, i64 104, !58, i64 108}
!120 = !{!119, !57, i64 64}
!121 = !{!119, !36, i64 80}
!122 = !{!119, !57, i64 76}
!123 = !{!124, !58, i64 16}
!124 = !{!"CfraElem", !36, i64 0, !36, i64 8, !58, i64 16, !57, i64 20}
!125 = distinct !{!125, !89, !90}
!126 = !{!127, !37, i64 52}
!127 = !{!"BezTriple", !37, i64 0, !58, i64 36, !58, i64 40, !58, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !58, i64 56, !58, i64 60, !58, i64 64, !37, i64 68}
!128 = distinct !{!128, !89, !90}
!129 = distinct !{!129, !89, !90}
!130 = !{!80, !36, i64 296}
!131 = !{!55, !36, i64 32}
!132 = !{!55, !57, i64 84}
!133 = !{!55, !57, i64 88}
!134 = !{!80, !36, i64 288}
!135 = !{!136, !41, i64 24}
!136 = !{!"bPose", !39, i64 0, !36, i64 16, !41, i64 24, !41, i64 26, !57, i64 28, !57, i64 32, !58, i64 36, !37, i64 40, !37, i64 52, !39, i64 64, !57, i64 80, !57, i64 84, !36, i64 88, !36, i64 96, !82, i64 104, !37, i64 152}
!137 = !{!138, !36, i64 32}
!138 = !{!"tPChanFCurveLink", !36, i64 0, !36, i64 8, !39, i64 16, !36, i64 32, !36, i64 40, !37, i64 48, !37, i64 60, !37, i64 72, !37, i64 84, !58, i64 100, !37, i64 104, !36, i64 120}
!139 = !{!140, !41, i64 104}
!140 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !37, i64 40, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !39, i64 144, !39, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !58, i64 264, !41, i64 268, !41, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !58, i64 524, !58, i64 528, !58, i64 532, !36, i64 536}
!141 = !{!138, !36, i64 40}
!142 = distinct !{!142, !89, !90}
!143 = !{!140, !41, i64 268}
!144 = distinct !{!144, !89, !90}
!145 = distinct !{!145, !89, !90}
!146 = !{!138, !36, i64 120}
!147 = distinct !{!147, !89, !90}
!148 = distinct !{!148, !89, !90}
!149 = distinct !{!149, !89, !90}
!150 = distinct !{!150, !89, !90}
!151 = distinct !{!151, !89, !90}
!152 = distinct !{!152, !89, !90}
!153 = !{!55, !36, i64 72}
!154 = !{!155, !58, i64 44}
!155 = !{!"ActKeyColumn", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 41, !41, i64 42, !58, i64 44, !41, i64 48, !41, i64 50}
!156 = !{!155, !36, i64 8}
!157 = !{!155, !36, i64 0}
