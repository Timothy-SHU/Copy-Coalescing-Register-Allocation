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
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.tPoseSlideOp = type { ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.DLRBT_Tree, i32, i32, i32, i32, i32, float }
%struct.DLRBT_Tree = type { ptr, ptr, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
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
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.ActKeyColumn = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i16, float, i16, i16 }
%struct.ActKeyBlock = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i16, float, float, float, i16, i16 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.CfraElem = type { ptr, ptr, float, i32 }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @POSE_OT_push(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_slide_push_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @pose_slide_push_invoke, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @pose_slide_modal, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @pose_slide_cancel, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %8, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %9, align 8, !tbaa !20
  tail call fastcc void @pose_slide_opdef_properties(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_slide_push_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc i32 @pose_slide_init(ptr noundef %0, ptr noundef %1, i16 noundef signext 0) #9, !range !21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call fastcc void @pose_slide_exit(ptr noundef %1) #9
  br label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  tail call fastcc void @pose_slide_exec_common(ptr noundef %0, ptr noundef %1, ptr noundef %8) #9
  br label %9

9:                                                ; preds = %6, %5
  %10 = phi i32 [ 2, %5 ], [ 4, %6 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_slide_push_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @pose_slide_init(ptr noundef %0, ptr noundef %1, i16 noundef signext 0) #9, !range !21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call fastcc void @pose_slide_exit(ptr noundef %1) #9
  br label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = tail call fastcc i32 @pose_slide_invoke_common(ptr noundef %0, ptr noundef %1, ptr noundef %9) #9, !range !24
  br label %11

11:                                               ; preds = %7, %6
  %12 = phi i32 [ 2, %6 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_slide_modal(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = tail call ptr @CTX_wm_window(ptr noundef %0) #10
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !25
  switch i16 %8, label %31 [
    i16 1, label %9
    i16 220, label %9
    i16 218, label %12
    i16 3, label %12
    i16 4, label %15
  ]

9:                                                ; preds = %3, %3
  %10 = getelementptr inbounds %struct.tPoseSlideOp, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !29
  tail call void @ED_area_headerprint(ptr noundef %11, ptr noundef null) #10
  tail call void @WM_cursor_modal_restore(ptr noundef %6) #10
  tail call fastcc void @pose_slide_autoKeyframe(ptr noundef %0, ptr noundef %5) #9
  tail call fastcc void @pose_slide_exit(ptr noundef nonnull %1) #9
  br label %31

12:                                               ; preds = %3, %3
  %13 = getelementptr inbounds %struct.tPoseSlideOp, ptr %5, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !29
  tail call void @ED_area_headerprint(ptr noundef %14, ptr noundef null) #10
  tail call void @WM_cursor_modal_restore(ptr noundef %6) #10
  tail call fastcc void @pose_slide_reset(ptr noundef %5) #9
  tail call fastcc void @pose_slide_refresh(ptr noundef %0, ptr noundef %5) #9
  tail call fastcc void @pose_slide_exit(ptr noundef nonnull %1) #9
  br label %31

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !33
  %18 = getelementptr inbounds %struct.tPoseSlideOp, ptr %5, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !35
  %22 = sub nsw i32 %17, %21
  %23 = sitofp i32 %22 to float
  %24 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 5
  %25 = load i16, ptr %24, align 8, !tbaa !40
  %26 = sitofp i16 %25 to float
  %27 = fdiv float %23, %26
  %28 = getelementptr inbounds %struct.tPoseSlideOp, ptr %5, i64 0, i32 12
  store float %27, ptr %28, align 4, !tbaa !41
  %29 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !42
  tail call void @RNA_float_set(ptr noundef %30, ptr noundef nonnull @.str.37, float noundef %27) #10
  tail call fastcc void @pose_slide_draw_status(ptr noundef %5) #9
  tail call fastcc void @pose_slide_reset(ptr noundef %5) #9
  tail call fastcc void @pose_slide_apply(ptr noundef %0, ptr noundef %5) #9
  br label %31

31:                                               ; preds = %3, %15, %12, %9
  %32 = phi i32 [ 1, %15 ], [ 2, %12 ], [ 4, %9 ], [ 9, %3 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @pose_slide_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 {
  tail call fastcc void @pose_slide_exit(ptr noundef %1) #9
  ret void
}

; Function Attrs: optsize
declare i32 @ED_operator_posemode(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pose_slide_opdef_properties(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = tail call ptr @RNA_def_int(ptr noundef %3, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef -300000, i32 noundef 300000, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef 50) #10
  %5 = load ptr, ptr %2, align 8, !tbaa !43
  %6 = tail call ptr @RNA_def_int(ptr noundef %5, ptr noundef nonnull @.str.39, i32 noundef 0, i32 noundef -300000, i32 noundef 300000, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef 0, i32 noundef 50) #10
  %7 = load ptr, ptr %2, align 8, !tbaa !43
  %8 = tail call ptr @RNA_def_float_percentage(ptr noundef %7, ptr noundef nonnull @.str.37, float noundef 5.000000e-01, float noundef 0.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, float noundef 0x3FD3333340000000, float noundef 0x3FE6666660000000) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @POSE_OT_relax(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_slide_relax_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @pose_slide_relax_invoke, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @pose_slide_modal, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @pose_slide_cancel, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %8, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %9, align 8, !tbaa !20
  tail call fastcc void @pose_slide_opdef_properties(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_slide_relax_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc i32 @pose_slide_init(ptr noundef %0, ptr noundef %1, i16 noundef signext 1) #9, !range !21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call fastcc void @pose_slide_exit(ptr noundef %1) #9
  br label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  tail call fastcc void @pose_slide_exec_common(ptr noundef %0, ptr noundef %1, ptr noundef %8) #9
  br label %9

9:                                                ; preds = %6, %5
  %10 = phi i32 [ 2, %5 ], [ 4, %6 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_slide_relax_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @pose_slide_init(ptr noundef %0, ptr noundef %1, i16 noundef signext 1) #9, !range !21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call fastcc void @pose_slide_exit(ptr noundef %1) #9
  br label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = tail call fastcc i32 @pose_slide_invoke_common(ptr noundef %0, ptr noundef %1, ptr noundef %9) #9, !range !24
  br label %11

11:                                               ; preds = %7, %6
  %12 = phi i32 [ 2, %6 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @POSE_OT_breakdown(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_slide_breakdown_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @pose_slide_breakdown_invoke, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @pose_slide_modal, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @pose_slide_cancel, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %8, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %9, align 8, !tbaa !20
  tail call fastcc void @pose_slide_opdef_properties(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_slide_breakdown_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = tail call fastcc i32 @pose_slide_init(ptr noundef %0, ptr noundef %1, i16 noundef signext 2) #9, !range !21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call fastcc void @pose_slide_exit(ptr noundef %1) #9
  br label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  tail call fastcc void @pose_slide_exec_common(ptr noundef %0, ptr noundef %1, ptr noundef %8) #9
  br label %9

9:                                                ; preds = %6, %5
  %10 = phi i32 [ 2, %5 ], [ 4, %6 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_slide_breakdown_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call fastcc i32 @pose_slide_init(ptr noundef %0, ptr noundef %1, i16 noundef signext 2) #9, !range !21
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call fastcc void @pose_slide_exit(ptr noundef %1) #9
  br label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = tail call fastcc i32 @pose_slide_invoke_common(ptr noundef %0, ptr noundef %1, ptr noundef %9) #9, !range !24
  br label %11

11:                                               ; preds = %7, %6
  %12 = phi i32 [ 2, %6 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @POSE_OT_propagate(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pose_propagate_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_posemode, ptr %5, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !20
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.30, ptr noundef nonnull @POSE_OT_propagate.terminate_items, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #10
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !44
  %11 = load ptr, ptr %7, align 8, !tbaa !43
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.33, float noundef 2.500000e+02, float noundef 0x3810000000000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, float noundef 1.000000e+00, float noundef 2.500000e+02) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pose_propagate_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %union.tPosePropagate_ModeData, align 8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %6 = tail call ptr @CTX_data_active_object(ptr noundef %0) #10
  %7 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %6) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !50
  br label %15

15:                                               ; preds = %2, %9, %13
  %16 = phi ptr [ %14, %13 ], [ null, %9 ], [ null, %2 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = tail call i32 @RNA_enum_get(ptr noundef %18, ptr noundef nonnull @.str.30) #10
  br i1 %8, label %20, label %23

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  tail call void @BKE_report(ptr noundef %22, i32 noundef 32, ptr noundef nonnull @.str.56) #10
  br label %66

23:                                               ; preds = %15
  %24 = icmp eq ptr %16, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !52
  tail call void @BKE_report(ptr noundef %27, i32 noundef 32, ptr noundef nonnull @.str.57) #10
  br label %66

28:                                               ; preds = %23
  call void @poseAnim_mapping_get(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef nonnull %16) #10
  %29 = icmp eq i32 %19, 5
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 24
  call void @ED_markers_make_cfra_list(ptr noundef nonnull %31, ptr noundef nonnull %4, i16 noundef signext 1) #10
  br label %35

32:                                               ; preds = %28
  %33 = load ptr, ptr %17, align 8, !tbaa !42
  %34 = call float @RNA_float_get(ptr noundef %33, ptr noundef nonnull @.str.33) #10
  store float %34, ptr %4, align 8, !tbaa !53
  br label %35

35:                                               ; preds = %32, %30
  %36 = load ptr, ptr %3, align 8, !tbaa !54
  %37 = icmp eq ptr %36, null
  br i1 %37, label %63, label %38

38:                                               ; preds = %35
  %39 = icmp eq i32 %19, 0
  %40 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 5
  br label %44

41:                                               ; preds = %54, %50
  %42 = load ptr, ptr %45, align 8, !tbaa !54
  %43 = icmp eq ptr %42, null
  br i1 %43, label %63, label %44, !llvm.loop !55

44:                                               ; preds = %38, %41
  %45 = phi ptr [ %36, %38 ], [ %42, %41 ]
  br i1 %39, label %46, label %50

46:                                               ; preds = %44
  %47 = load i32, ptr %40, align 8, !tbaa !57
  %48 = sitofp i32 %47 to float
  %49 = call fastcc float @pose_propagate_get_boneHoldEndFrame(ptr noundef nonnull %7, ptr noundef nonnull %45, float noundef %48) #9
  store float %49, ptr %4, align 8, !tbaa !53
  br label %50

50:                                               ; preds = %46, %44
  %51 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %45, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !54
  %53 = icmp eq ptr %52, null
  br i1 %53, label %41, label %54

54:                                               ; preds = %50, %54
  %55 = phi ptr [ %61, %54 ], [ %52, %50 ]
  %56 = getelementptr inbounds %struct.LinkData, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !74
  %58 = load i32, ptr %40, align 8, !tbaa !57
  %59 = sitofp i32 %58 to float
  %60 = load ptr, ptr %4, align 8
  call fastcc void @pose_propagate_fcurve(ptr noundef %1, ptr noundef nonnull %7, ptr noundef %57, float noundef %59, ptr %60) #9
  %61 = load ptr, ptr %55, align 8, !tbaa !54
  %62 = icmp eq ptr %61, null
  br i1 %62, label %41, label %54, !llvm.loop !76

63:                                               ; preds = %41, %35
  call void @poseAnim_mapping_free(ptr noundef nonnull %3) #10
  br i1 %29, label %64, label %65

64:                                               ; preds = %63
  call void @BLI_freelistN(ptr noundef nonnull %4) #10
  br label %65

65:                                               ; preds = %64, %63
  call void @poseAnim_mapping_refresh(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %7) #10
  br label %66

66:                                               ; preds = %65, %25, %20
  %67 = phi i32 [ 2, %20 ], [ 2, %25 ], [ 4, %65 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret i32 %67
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @pose_slide_init(ptr noundef %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !54
  %5 = tail call ptr %4(i64 noundef 104, ptr noundef nonnull @.str.36) #10
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %5, ptr %6, align 8, !tbaa !22
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  store ptr %7, ptr %5, align 8, !tbaa !77
  %8 = tail call ptr @CTX_data_active_object(ptr noundef %0) #10
  %9 = tail call ptr @BKE_object_pose_armature_get(ptr noundef %8) #10
  %10 = getelementptr inbounds %struct.tPoseSlideOp, ptr %5, i64 0, i32 3
  store ptr %9, ptr %10, align 8, !tbaa !78
  %11 = icmp eq ptr %9, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !79
  br label %15

15:                                               ; preds = %3, %12
  %16 = phi ptr [ %14, %12 ], [ null, %3 ]
  %17 = getelementptr inbounds %struct.tPoseSlideOp, ptr %5, i64 0, i32 4
  store ptr %16, ptr %17, align 8, !tbaa !80
  %18 = tail call ptr @CTX_wm_area(ptr noundef %0) #10
  %19 = getelementptr inbounds %struct.tPoseSlideOp, ptr %5, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !29
  %20 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  %21 = getelementptr inbounds %struct.tPoseSlideOp, ptr %5, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !34
  %22 = load ptr, ptr %5, align 8, !tbaa !77
  %23 = getelementptr inbounds %struct.Scene, ptr %22, i64 0, i32 22, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !57
  %25 = getelementptr inbounds %struct.tPoseSlideOp, ptr %5, i64 0, i32 7
  store i32 %24, ptr %25, align 8, !tbaa !81
  %26 = zext nneg i16 %2 to i32
  %27 = getelementptr inbounds %struct.tPoseSlideOp, ptr %5, i64 0, i32 10
  store i32 %26, ptr %27, align 4, !tbaa !82
  %28 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !42
  %30 = tail call float @RNA_float_get(ptr noundef %29, ptr noundef nonnull @.str.37) #10
  %31 = getelementptr inbounds %struct.tPoseSlideOp, ptr %5, i64 0, i32 12
  store float %30, ptr %31, align 4, !tbaa !41
  %32 = load ptr, ptr %28, align 8, !tbaa !42
  %33 = tail call i32 @RNA_int_get(ptr noundef %32, ptr noundef nonnull @.str.38) #10
  %34 = getelementptr inbounds %struct.tPoseSlideOp, ptr %5, i64 0, i32 8
  store i32 %33, ptr %34, align 4, !tbaa !83
  %35 = load ptr, ptr %28, align 8, !tbaa !42
  %36 = tail call i32 @RNA_int_get(ptr noundef %35, ptr noundef nonnull @.str.39) #10
  %37 = getelementptr inbounds %struct.tPoseSlideOp, ptr %5, i64 0, i32 9
  store i32 %36, ptr %37, align 8, !tbaa !84
  %38 = load ptr, ptr %10, align 8, !tbaa !78
  %39 = icmp eq ptr %38, null
  br i1 %39, label %60, label %40

40:                                               ; preds = %15
  %41 = load ptr, ptr %17, align 8, !tbaa !80
  %42 = icmp eq ptr %41, null
  br i1 %42, label %60, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.Object, ptr %38, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !45
  %46 = icmp eq ptr %45, null
  br i1 %46, label %60, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %45, align 8, !tbaa !50
  %49 = icmp eq ptr %48, null
  br i1 %49, label %60, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.tPoseSlideOp, ptr %5, i64 0, i32 5
  tail call void @poseAnim_mapping_get(ptr noundef %0, ptr noundef nonnull %51, ptr noundef nonnull %38, ptr noundef nonnull %48) #10
  %52 = load ptr, ptr %10, align 8, !tbaa !78
  %53 = getelementptr inbounds %struct.Object, ptr %52, i64 0, i32 18
  %54 = load ptr, ptr %53, align 8, !tbaa !85
  %55 = getelementptr inbounds %struct.bPose, ptr %54, i64 0, i32 2
  %56 = load i16, ptr %55, align 8, !tbaa !86
  %57 = and i16 %56, -7
  %58 = or disjoint i16 %57, 2
  store i16 %58, ptr %55, align 8, !tbaa !86
  %59 = getelementptr inbounds %struct.tPoseSlideOp, ptr %5, i64 0, i32 6
  tail call void @BLI_dlrbTree_init(ptr noundef nonnull %59) #10
  br label %60

60:                                               ; preds = %15, %40, %43, %47, %50
  %61 = phi i32 [ 1, %50 ], [ 0, %47 ], [ 0, %43 ], [ 0, %40 ], [ 0, %15 ]
  ret i32 %61
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pose_slide_exit(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tPoseSlideOp, ptr %3, i64 0, i32 5
  tail call void @poseAnim_mapping_free(ptr noundef nonnull %6) #10
  %7 = getelementptr inbounds %struct.tPoseSlideOp, ptr %3, i64 0, i32 6
  tail call void @BLI_dlrbTree_free(ptr noundef nonnull %7) #10
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %8(ptr noundef nonnull %3) #10
  br label %9

9:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pose_slide_exec_common(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  tail call fastcc void @pose_slide_apply(ptr noundef %0, ptr noundef %2) #9
  tail call fastcc void @pose_slide_autoKeyframe(ptr noundef %0, ptr noundef %2) #9
  tail call fastcc void @pose_slide_exit(ptr noundef %1) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_object_pose_armature_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @poseAnim_mapping_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_dlrbTree_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @poseAnim_mapping_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_dlrbTree_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pose_slide_apply(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tPoseSlideOp, ptr %1, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !83
  %5 = getelementptr inbounds %struct.tPoseSlideOp, ptr %1, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !84
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = insertelement <2 x i32> poison, i32 %4, i64 0
  %10 = shufflevector <2 x i32> %9, <2 x i32> poison, <2 x i32> zeroinitializer
  %11 = add nsw <2 x i32> %10, <i32 -1, i32 1>
  store <2 x i32> %11, ptr %3, align 4, !tbaa !88
  br label %12

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds %struct.tPoseSlideOp, ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = icmp eq ptr %14, null
  br i1 %15, label %55, label %16

16:                                               ; preds = %12, %52
  %17 = phi ptr [ %53, %52 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !89
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !91
  %22 = and i16 %21, 1
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 20
  tail call fastcc void @pose_slide_apply_vec3(ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull %25, ptr noundef nonnull @.str.40) #9
  %26 = load i16, ptr %20, align 8, !tbaa !91
  br label %27

27:                                               ; preds = %24, %16
  %28 = phi i16 [ %26, %24 ], [ %21, %16 ]
  %29 = and i16 %28, 4
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 21
  tail call fastcc void @pose_slide_apply_vec3(ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull %32, ptr noundef nonnull @.str.41) #9
  %33 = load i16, ptr %20, align 8, !tbaa !91
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i16 [ %33, %31 ], [ %28, %27 ]
  %36 = and i16 %35, 2
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 26
  %40 = load i16, ptr %39, align 4, !tbaa !93
  %41 = icmp sgt i16 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.bPoseChannel, ptr %19, i64 0, i32 22
  tail call fastcc void @pose_slide_apply_vec3(ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull %43, ptr noundef nonnull @.str.42) #9
  br label %47

44:                                               ; preds = %38
  %45 = icmp eq i16 %40, -1
  br i1 %45, label %47, label %46

46:                                               ; preds = %44
  tail call fastcc void @pose_slide_apply_quat(ptr noundef %1, ptr noundef nonnull %17) #9
  br label %47

47:                                               ; preds = %42, %44, %46, %34
  %48 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %17, i64 0, i32 11
  %49 = load ptr, ptr %48, align 8, !tbaa !94
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  tail call fastcc void @pose_slide_apply_props(ptr noundef %1, ptr noundef nonnull %17) #9
  br label %52

52:                                               ; preds = %51, %47
  %53 = load ptr, ptr %17, align 8, !tbaa !54
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %16, !llvm.loop !95

55:                                               ; preds = %52, %12
  tail call fastcc void @pose_slide_refresh(ptr noundef %0, ptr noundef %1) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pose_slide_autoKeyframe(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !77
  %4 = getelementptr inbounds %struct.tPoseSlideOp, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.tPoseSlideOp, ptr %1, i64 0, i32 5
  %7 = getelementptr inbounds %struct.tPoseSlideOp, ptr %1, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !81
  %9 = sitofp i32 %8 to float
  tail call void @poseAnim_mapping_autoKeyframe(ptr noundef %0, ptr noundef %3, ptr noundef %5, ptr noundef nonnull %6, float noundef %9) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pose_slide_apply_vec3(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  %7 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.43, ptr noundef %6, ptr noundef %3) #10
  %8 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %1, i64 0, i32 2
  %9 = tail call ptr @poseAnim_mapping_getNextFCurve(ptr noundef nonnull %8, ptr noundef null, ptr noundef %7) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %4, %11
  %12 = phi ptr [ %19, %11 ], [ %9, %4 ]
  %13 = getelementptr inbounds %struct.LinkData, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  %15 = getelementptr inbounds %struct.FCurve, ptr %14, i64 0, i32 11
  %16 = load i32, ptr %15, align 4, !tbaa !97
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds float, ptr %2, i64 %17
  tail call fastcc void @pose_slide_apply_val(ptr noundef %0, ptr noundef %14, ptr noundef %18) #9
  %19 = tail call ptr @poseAnim_mapping_getNextFCurve(ptr noundef nonnull %8, ptr noundef nonnull %12, ptr noundef %7) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %11, !llvm.loop !99

21:                                               ; preds = %11, %4
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  tail call void %22(ptr noundef %7) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pose_slide_apply_quat(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [4 x float], align 16
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  %9 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !89
  %11 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !96
  %13 = tail call ptr (ptr, ...) @BLI_sprintfN(ptr noundef nonnull @.str.43, ptr noundef %12, ptr noundef nonnull @.str.44) #10
  %14 = getelementptr inbounds %struct.tPoseSlideOp, ptr %0, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !81
  %16 = sitofp i32 %15 to float
  %17 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %1, i64 0, i32 2
  %18 = tail call ptr @poseAnim_mapping_getNextFCurve(ptr noundef nonnull %17, ptr noundef null, ptr noundef %13) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20

20:                                               ; preds = %2, %34
  %21 = phi ptr [ %39, %34 ], [ %18, %2 ]
  %22 = phi ptr [ %38, %34 ], [ null, %2 ]
  %23 = phi ptr [ %37, %34 ], [ null, %2 ]
  %24 = phi ptr [ %36, %34 ], [ null, %2 ]
  %25 = phi ptr [ %35, %34 ], [ null, %2 ]
  %26 = getelementptr inbounds %struct.LinkData, ptr %21, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !74
  %28 = getelementptr inbounds %struct.FCurve, ptr %27, i64 0, i32 11
  %29 = load i32, ptr %28, align 4, !tbaa !97
  switch i32 %29, label %34 [
    i32 3, label %30
    i32 2, label %31
    i32 1, label %32
    i32 0, label %33
  ]

30:                                               ; preds = %20
  br label %34

31:                                               ; preds = %20
  br label %34

32:                                               ; preds = %20
  br label %34

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %20, %33, %32, %31, %30
  %35 = phi ptr [ %25, %20 ], [ %25, %33 ], [ %25, %32 ], [ %25, %31 ], [ %27, %30 ]
  %36 = phi ptr [ %24, %20 ], [ %24, %33 ], [ %24, %32 ], [ %27, %31 ], [ %24, %30 ]
  %37 = phi ptr [ %23, %20 ], [ %23, %33 ], [ %27, %32 ], [ %23, %31 ], [ %23, %30 ]
  %38 = phi ptr [ %22, %20 ], [ %27, %33 ], [ %22, %32 ], [ %22, %31 ], [ %22, %30 ]
  %39 = tail call ptr @poseAnim_mapping_getNextFCurve(ptr noundef nonnull %17, ptr noundef nonnull %21, ptr noundef %13) #10
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %20, !llvm.loop !100

41:                                               ; preds = %34, %2
  %42 = phi ptr [ null, %2 ], [ %35, %34 ]
  %43 = phi ptr [ null, %2 ], [ %36, %34 ]
  %44 = phi ptr [ null, %2 ], [ %37, %34 ]
  %45 = phi ptr [ null, %2 ], [ %38, %34 ]
  %46 = icmp ne ptr %45, null
  %47 = icmp ne ptr %44, null
  %48 = select i1 %46, i1 %47, i1 false
  %49 = icmp ne ptr %43, null
  %50 = select i1 %48, i1 %49, i1 false
  %51 = icmp ne ptr %42, null
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %53, label %118

53:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %54 = getelementptr inbounds %struct.tPoseSlideOp, ptr %0, i64 0, i32 8
  %55 = load i32, ptr %54, align 4, !tbaa !83
  %56 = sitofp i32 %55 to float
  %57 = tail call float @evaluate_fcurve(ptr noundef nonnull %45, float noundef %56) #10
  store float %57, ptr %3, align 16, !tbaa !101
  %58 = load i32, ptr %54, align 4, !tbaa !83
  %59 = sitofp i32 %58 to float
  %60 = tail call float @evaluate_fcurve(ptr noundef nonnull %44, float noundef %59) #10
  %61 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 1
  store float %60, ptr %61, align 4, !tbaa !101
  %62 = load i32, ptr %54, align 4, !tbaa !83
  %63 = sitofp i32 %62 to float
  %64 = tail call float @evaluate_fcurve(ptr noundef nonnull %43, float noundef %63) #10
  %65 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 2
  store float %64, ptr %65, align 8, !tbaa !101
  %66 = load i32, ptr %54, align 4, !tbaa !83
  %67 = sitofp i32 %66 to float
  %68 = tail call float @evaluate_fcurve(ptr noundef nonnull %42, float noundef %67) #10
  %69 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 3
  store float %68, ptr %69, align 4, !tbaa !101
  %70 = getelementptr inbounds %struct.tPoseSlideOp, ptr %0, i64 0, i32 9
  %71 = load i32, ptr %70, align 8, !tbaa !84
  %72 = sitofp i32 %71 to float
  %73 = tail call float @evaluate_fcurve(ptr noundef nonnull %45, float noundef %72) #10
  store float %73, ptr %4, align 16, !tbaa !101
  %74 = load i32, ptr %70, align 8, !tbaa !84
  %75 = sitofp i32 %74 to float
  %76 = tail call float @evaluate_fcurve(ptr noundef nonnull %44, float noundef %75) #10
  %77 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  store float %76, ptr %77, align 4, !tbaa !101
  %78 = load i32, ptr %70, align 8, !tbaa !84
  %79 = sitofp i32 %78 to float
  %80 = tail call float @evaluate_fcurve(ptr noundef nonnull %43, float noundef %79) #10
  %81 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  store float %80, ptr %81, align 8, !tbaa !101
  %82 = load i32, ptr %70, align 8, !tbaa !84
  %83 = sitofp i32 %82 to float
  %84 = tail call float @evaluate_fcurve(ptr noundef nonnull %42, float noundef %83) #10
  %85 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  store float %84, ptr %85, align 4, !tbaa !101
  %86 = getelementptr inbounds %struct.tPoseSlideOp, ptr %0, i64 0, i32 10
  %87 = load i32, ptr %86, align 4, !tbaa !82
  switch i32 %87, label %96 [
    i32 2, label %88
    i32 0, label %92
  ]

88:                                               ; preds = %53
  %89 = getelementptr inbounds %struct.bPoseChannel, ptr %10, i64 0, i32 23
  %90 = getelementptr inbounds %struct.tPoseSlideOp, ptr %0, i64 0, i32 12
  %91 = load float, ptr %90, align 4, !tbaa !41
  call void @interp_qt_qtqt(ptr noundef nonnull %89, ptr noundef nonnull %3, ptr noundef nonnull %4, float noundef %91) #10
  br label %117

92:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %93 = getelementptr inbounds %struct.bPoseChannel, ptr %10, i64 0, i32 23
  call void @sub_qt_qtqt(ptr noundef nonnull %5, ptr noundef nonnull %93, ptr noundef nonnull %3) #10
  call void @copy_qt_qt(ptr noundef nonnull %6, ptr noundef nonnull %93) #10
  %94 = getelementptr inbounds %struct.tPoseSlideOp, ptr %0, i64 0, i32 12
  %95 = load float, ptr %94, align 4, !tbaa !41
  call void @add_qt_qtqt(ptr noundef nonnull %93, ptr noundef nonnull %6, ptr noundef nonnull %5, float noundef %95) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  br label %117

96:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  %97 = getelementptr inbounds %struct.tPoseSlideOp, ptr %0, i64 0, i32 12
  %98 = load float, ptr %97, align 4, !tbaa !41
  %99 = fmul float %98, 1.000000e+01
  %100 = tail call float @llvm.ceil.f32(float %99)
  %101 = fptosi float %100 to i32
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.bPoseChannel, ptr %10, i64 0, i32 23
  br label %105

105:                                              ; preds = %103, %105
  %106 = phi i32 [ %101, %103 ], [ %107, %105 ]
  %107 = add nsw i32 %106, -1
  %108 = load i32, ptr %54, align 4, !tbaa !83
  %109 = sitofp i32 %108 to float
  %110 = fsub float %16, %109
  %111 = load i32, ptr %70, align 8, !tbaa !84
  %112 = sub nsw i32 %111, %108
  %113 = sitofp i32 %112 to float
  %114 = fdiv float %110, %113
  call void @interp_qt_qtqt(ptr noundef nonnull %7, ptr noundef nonnull %3, ptr noundef nonnull %4, float noundef %114) #10
  call void @copy_qt_qt(ptr noundef nonnull %8, ptr noundef nonnull %104) #10
  call void @interp_qt_qtqt(ptr noundef nonnull %104, ptr noundef nonnull %8, ptr noundef nonnull %7, float noundef 0x3FC5555560000000) #10
  %115 = icmp ugt i32 %106, 1
  br i1 %115, label %105, label %116, !llvm.loop !102

116:                                              ; preds = %105, %96
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  br label %117

117:                                              ; preds = %92, %116, %88
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %118

118:                                              ; preds = %117, %41
  %119 = load ptr, ptr @MEM_freeN, align 8, !tbaa !54
  call void %119(ptr noundef %13) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pose_slide_apply_props(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %6 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !96
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #12
  %9 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !89
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_PoseBone, ptr noundef %10, ptr noundef nonnull %3) #10
  %11 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = icmp eq ptr %12, null
  br i1 %13, label %46, label %14

14:                                               ; preds = %2
  %15 = shl i64 %8, 32
  %16 = ashr exact i64 %15, 32
  br label %17

17:                                               ; preds = %14, %43
  %18 = phi ptr [ %12, %14 ], [ %44, %43 ]
  %19 = getelementptr inbounds %struct.LinkData, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !74
  %21 = getelementptr inbounds %struct.FCurve, ptr %20, i64 0, i32 12
  %22 = load ptr, ptr %21, align 8, !tbaa !103
  %23 = icmp eq ptr %22, null
  br i1 %23, label %43, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %6, align 8, !tbaa !96
  %26 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) %25) #12
  %27 = getelementptr inbounds i8, ptr %26, i64 %16
  %28 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(1) @.str.45) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %24
  %31 = call ptr @RNA_struct_find_property(ptr noundef nonnull %3, ptr noundef nonnull %28) #10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %30
  %34 = call i32 @RNA_property_type(ptr noundef nonnull %31) #10
  switch i32 %34, label %43 [
    i32 2, label %35
    i32 0, label %38
    i32 4, label %38
    i32 1, label %38
  ]

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %36 = call float @RNA_property_float_get(ptr noundef nonnull %3, ptr noundef nonnull %31) #10
  store float %36, ptr %4, align 4, !tbaa !101
  call fastcc void @pose_slide_apply_val(ptr noundef %0, ptr noundef nonnull %20, ptr noundef nonnull %4) #9
  %37 = load float, ptr %4, align 4, !tbaa !101
  call void @RNA_property_float_set(ptr noundef nonnull %3, ptr noundef nonnull %31, float noundef %37) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %43

38:                                               ; preds = %33, %33, %33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %39 = call i32 @RNA_property_int_get(ptr noundef nonnull %3, ptr noundef nonnull %31) #10
  %40 = sitofp i32 %39 to float
  store float %40, ptr %5, align 4, !tbaa !101
  call fastcc void @pose_slide_apply_val(ptr noundef %0, ptr noundef nonnull %20, ptr noundef nonnull %5) #9
  %41 = load float, ptr %5, align 4, !tbaa !101
  %42 = fptosi float %41 to i32
  call void @RNA_property_int_set(ptr noundef nonnull %3, ptr noundef nonnull %31, i32 noundef %42) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  br label %43

43:                                               ; preds = %24, %35, %38, %33, %30, %17
  %44 = load ptr, ptr %18, align 8, !tbaa !54
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %17, !llvm.loop !104

46:                                               ; preds = %43, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pose_slide_refresh(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !77
  %4 = getelementptr inbounds %struct.tPoseSlideOp, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !78
  tail call void @poseAnim_mapping_refresh(ptr noundef %0, ptr noundef %3, ptr noundef %5) #10
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_sprintfN(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @poseAnim_mapping_getNextFCurve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pose_slide_apply_val(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tPoseSlideOp, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.tPoseSlideOp, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !83
  %8 = sitofp i32 %7 to float
  %9 = tail call float @evaluate_fcurve(ptr noundef %1, float noundef %8) #10
  %10 = getelementptr inbounds %struct.tPoseSlideOp, ptr %0, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !84
  %12 = sitofp i32 %11 to float
  %13 = tail call float @evaluate_fcurve(ptr noundef %1, float noundef %12) #10
  %14 = getelementptr inbounds %struct.tPoseSlideOp, ptr %0, i64 0, i32 10
  %15 = load i32, ptr %14, align 4, !tbaa !82
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.tPoseSlideOp, ptr %0, i64 0, i32 12
  %19 = load float, ptr %18, align 4, !tbaa !41
  %20 = fsub float 1.000000e+00, %19
  %21 = fmul float %13, %19
  %22 = tail call float @llvm.fmuladd.f32(float %9, float %20, float %21)
  br label %71

23:                                               ; preds = %3
  %24 = sitofp i32 %5 to float
  %25 = load i32, ptr %6, align 4, !tbaa !83
  %26 = sitofp i32 %25 to float
  %27 = fsub float %24, %26
  %28 = load i32, ptr %10, align 8, !tbaa !84
  %29 = sitofp i32 %28 to float
  %30 = fsub float %29, %24
  %31 = fadd float %27, %30
  %32 = fdiv float %27, %31
  %33 = fdiv float %30, %31
  switch i32 %15, label %73 [
    i32 0, label %34
    i32 1, label %53
  ]

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.tPoseSlideOp, ptr %0, i64 0, i32 12
  %36 = load float, ptr %35, align 4, !tbaa !41
  %37 = fmul float %36, 1.000000e+01
  %38 = tail call float @llvm.ceil.f32(float %37)
  %39 = fptosi float %38 to i32
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %34
  %42 = fmul float %13, %32
  %43 = tail call float @llvm.fmuladd.f32(float %9, float %33, float %42)
  %44 = fneg float %43
  %45 = load float, ptr %2, align 4, !tbaa !101
  br label %46

46:                                               ; preds = %41, %46
  %47 = phi float [ %45, %41 ], [ %51, %46 ]
  %48 = phi i32 [ %39, %41 ], [ %49, %46 ]
  %49 = add nsw i32 %48, -1
  %50 = tail call float @llvm.fmuladd.f32(float %47, float 6.000000e+00, float %44)
  %51 = fdiv float %50, 5.000000e+00
  %52 = icmp ugt i32 %48, 1
  br i1 %52, label %46, label %71, !llvm.loop !105

53:                                               ; preds = %23
  %54 = getelementptr inbounds %struct.tPoseSlideOp, ptr %0, i64 0, i32 12
  %55 = load float, ptr %54, align 4, !tbaa !41
  %56 = fmul float %55, 1.000000e+01
  %57 = tail call float @llvm.ceil.f32(float %56)
  %58 = fptosi float %57 to i32
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %53
  %61 = fmul float %13, %32
  %62 = tail call float @llvm.fmuladd.f32(float %9, float %33, float %61)
  %63 = load float, ptr %2, align 4, !tbaa !101
  br label %64

64:                                               ; preds = %60, %64
  %65 = phi float [ %63, %60 ], [ %69, %64 ]
  %66 = phi i32 [ %58, %60 ], [ %67, %64 ]
  %67 = add nsw i32 %66, -1
  %68 = tail call float @llvm.fmuladd.f32(float %65, float 5.000000e+00, float %62)
  %69 = fdiv float %68, 6.000000e+00
  %70 = icmp ugt i32 %66, 1
  br i1 %70, label %64, label %71, !llvm.loop !106

71:                                               ; preds = %64, %46, %17
  %72 = phi float [ %22, %17 ], [ %51, %46 ], [ %69, %64 ]
  store float %72, ptr %2, align 4, !tbaa !101
  br label %73

73:                                               ; preds = %71, %53, %34, %23
  ret void
}

; Function Attrs: optsize
declare float @evaluate_fcurve(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: optsize
declare void @interp_qt_qtqt(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sub_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @add_qt_qtqt(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @RNA_property_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_property_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_property_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_property_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @poseAnim_mapping_refresh(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @poseAnim_mapping_autoKeyframe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @pose_slide_invoke_common(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca float, align 4
  %5 = getelementptr inbounds %struct.tPoseSlideOp, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = tail call ptr @CTX_wm_window(ptr noundef %0) #10
  %10 = getelementptr inbounds %struct.tPoseSlideOp, ptr %2, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.tPoseSlideOp, ptr %2, i64 0, i32 6
  br label %18

15:                                               ; preds = %23, %18
  %16 = load ptr, ptr %19, align 8, !tbaa !54
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18, !llvm.loop !107

18:                                               ; preds = %13, %15
  %19 = phi ptr [ %11, %13 ], [ %16, %15 ]
  %20 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = icmp eq ptr %21, null
  br i1 %22, label %15, label %23

23:                                               ; preds = %18, %23
  %24 = phi ptr [ %27, %23 ], [ %21, %18 ]
  %25 = getelementptr inbounds %struct.LinkData, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !74
  tail call void @fcurve_to_keylist(ptr noundef %8, ptr noundef %26, ptr noundef nonnull %14, ptr noundef null) #10
  %27 = load ptr, ptr %24, align 8, !tbaa !54
  %28 = icmp eq ptr %27, null
  br i1 %28, label %15, label %23, !llvm.loop !108

29:                                               ; preds = %15, %3
  %30 = getelementptr inbounds %struct.tPoseSlideOp, ptr %2, i64 0, i32 6
  tail call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %30) #10
  %31 = getelementptr inbounds %struct.tPoseSlideOp, ptr %2, i64 0, i32 6, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !109
  %33 = icmp eq ptr %32, null
  br i1 %33, label %98, label %34

34:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %35 = getelementptr inbounds %struct.tPoseSlideOp, ptr %2, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !81
  %37 = sitofp i32 %36 to float
  store float %37, ptr %4, align 4, !tbaa !101
  %38 = call ptr @BLI_dlrbTree_search_exact(ptr noundef nonnull %30, ptr noundef nonnull @compare_ak_cfraPtr, ptr noundef nonnull %4) #10
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %65

40:                                               ; preds = %34
  %41 = call ptr @BLI_dlrbTree_search_prev(ptr noundef nonnull %30, ptr noundef nonnull @compare_ak_cfraPtr, ptr noundef nonnull %4) #10
  %42 = call ptr @BLI_dlrbTree_search_next(ptr noundef nonnull %30, ptr noundef nonnull @compare_ak_cfraPtr, ptr noundef nonnull %4) #10
  %43 = icmp eq ptr %41, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ActKeyColumn, ptr %41, i64 0, i32 8
  %46 = load float, ptr %45, align 4, !tbaa !110
  br label %51

47:                                               ; preds = %40
  %48 = load i32, ptr %35, align 8, !tbaa !81
  %49 = add nsw i32 %48, -1
  %50 = sitofp i32 %49 to float
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi float [ %46, %44 ], [ %50, %47 ]
  %53 = fptosi float %52 to i32
  %54 = getelementptr inbounds %struct.tPoseSlideOp, ptr %2, i64 0, i32 8
  store i32 %53, ptr %54, align 4, !tbaa !83
  %55 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !42
  call void @RNA_int_set(ptr noundef %56, ptr noundef nonnull @.str.38, i32 noundef %53) #10
  %57 = icmp eq ptr %42, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.ActKeyColumn, ptr %42, i64 0, i32 8
  %60 = load float, ptr %59, align 4, !tbaa !110
  br label %91

61:                                               ; preds = %51
  %62 = load i32, ptr %35, align 8, !tbaa !81
  %63 = add nsw i32 %62, 1
  %64 = sitofp i32 %63 to float
  br label %91

65:                                               ; preds = %34
  %66 = getelementptr inbounds %struct.ActKeyColumn, ptr %38, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !112
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.ActKeyColumn, ptr %67, i64 0, i32 8
  %71 = load float, ptr %70, align 4, !tbaa !110
  br label %76

72:                                               ; preds = %65
  %73 = load i32, ptr %35, align 8, !tbaa !81
  %74 = add nsw i32 %73, -1
  %75 = sitofp i32 %74 to float
  br label %76

76:                                               ; preds = %72, %69
  %77 = phi float [ %71, %69 ], [ %75, %72 ]
  %78 = fptosi float %77 to i32
  %79 = getelementptr inbounds %struct.tPoseSlideOp, ptr %2, i64 0, i32 8
  store i32 %78, ptr %79, align 4, !tbaa !83
  %80 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %81 = load ptr, ptr %80, align 8, !tbaa !42
  call void @RNA_int_set(ptr noundef %81, ptr noundef nonnull @.str.38, i32 noundef %78) #10
  %82 = load ptr, ptr %38, align 8, !tbaa !113
  %83 = icmp eq ptr %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.ActKeyColumn, ptr %82, i64 0, i32 8
  %86 = load float, ptr %85, align 4, !tbaa !110
  br label %91

87:                                               ; preds = %76
  %88 = load i32, ptr %35, align 8, !tbaa !81
  %89 = add nsw i32 %88, 1
  %90 = sitofp i32 %89 to float
  br label %91

91:                                               ; preds = %84, %87, %58, %61
  %92 = phi float [ %60, %58 ], [ %64, %61 ], [ %86, %84 ], [ %90, %87 ]
  %93 = phi ptr [ %55, %58 ], [ %55, %61 ], [ %80, %84 ], [ %80, %87 ]
  %94 = fptosi float %92 to i32
  %95 = getelementptr inbounds %struct.tPoseSlideOp, ptr %2, i64 0, i32 9
  store i32 %94, ptr %95, align 8, !tbaa !84
  %96 = load ptr, ptr %93, align 8, !tbaa !42
  call void @RNA_int_set(ptr noundef %96, ptr noundef nonnull @.str.39, i32 noundef %94) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call fastcc void @pose_slide_apply(ptr noundef %0, ptr noundef nonnull %2) #9
  call fastcc void @pose_slide_refresh(ptr noundef %0, ptr noundef nonnull %2) #9
  call void @WM_cursor_modal_set(ptr noundef %9, i32 noundef 16) #10
  call fastcc void @pose_slide_draw_status(ptr noundef nonnull %2) #9
  %97 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #10
  br label %101

98:                                               ; preds = %29
  %99 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %100 = load ptr, ptr %99, align 8, !tbaa !52
  tail call void @BKE_report(ptr noundef %100, i32 noundef 32, ptr noundef nonnull @.str.46) #10
  tail call fastcc void @pose_slide_exit(ptr noundef %1) #9
  br label %101

101:                                              ; preds = %91, %98
  %102 = phi i32 [ 1, %91 ], [ 2, %98 ]
  ret i32 %102
}

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @fcurve_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_dlrbTree_linkedlist_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_dlrbTree_search_exact(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare signext i16 @compare_ak_cfraPtr(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare ptr @BLI_dlrbTree_search_prev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_dlrbTree_search_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pose_slide_draw_status(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [32 x i8], align 16
  %3 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  %4 = getelementptr inbounds %struct.tPoseSlideOp, ptr %0, i64 0, i32 10
  %5 = load i32, ptr %4, align 4, !tbaa !82
  switch i32 %5, label %9 [
    i32 0, label %6
    i32 1, label %7
    i32 2, label %8
  ]

6:                                                ; preds = %1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %3, ptr noundef nonnull align 1 dereferenceable(10) @.str, i64 10, i1 false) #10
  br label %10

7:                                                ; preds = %1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) %3, ptr noundef nonnull align 1 dereferenceable(11) @.str.3, i64 11, i1 false) #10
  br label %10

8:                                                ; preds = %1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %3, ptr noundef nonnull align 1 dereferenceable(10) @.str.47, i64 10, i1 false) #10
  br label %10

9:                                                ; preds = %1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) %3, ptr noundef nonnull align 1 dereferenceable(13) @.str.48, i64 13, i1 false) #10
  br label %10

10:                                               ; preds = %9, %8, %7, %6
  %11 = getelementptr inbounds %struct.tPoseSlideOp, ptr %0, i64 0, i32 12
  %12 = load float, ptr %11, align 4, !tbaa !41
  %13 = fmul float %12, 1.000000e+02
  %14 = fptosi float %13 to i32
  %15 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %2, i64 noundef 32, ptr noundef nonnull @.str.49, ptr noundef nonnull %3, i32 noundef %14) #10
  %16 = getelementptr inbounds %struct.tPoseSlideOp, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !29
  call void @ED_area_headerprint(ptr noundef %17, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #11
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pose_slide_reset(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tPoseSlideOp, ptr %0, i64 0, i32 5
  tail call void @poseAnim_mapping_reset(ptr noundef nonnull %2) #10
  ret void
}

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @poseAnim_mapping_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_float_percentage(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_markers_make_cfra_list(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @pose_propagate_get_boneHoldEndFrame(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #0 {
  %4 = alloca float, align 4
  %5 = alloca %struct.DLRBT_Tree, align 8
  %6 = alloca %struct.DLRBT_Tree, align 8
  store float %2, ptr %4, align 4, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  call void @BLI_dlrbTree_init(ptr noundef nonnull %5) #10
  call void @BLI_dlrbTree_init(ptr noundef nonnull %6) #10
  %9 = getelementptr inbounds %struct.tPChanFCurveLink, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3, %12
  %13 = phi ptr [ %16, %12 ], [ %10, %3 ]
  %14 = getelementptr inbounds %struct.LinkData, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !74
  call void @fcurve_to_keylist(ptr noundef %8, ptr noundef %15, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %16 = load ptr, ptr %13, align 8, !tbaa !54
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %12, !llvm.loop !114

18:                                               ; preds = %12, %3
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %5) #10
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %6) #10
  %19 = call ptr @BLI_dlrbTree_search_exact(ptr noundef nonnull %6, ptr noundef nonnull @compare_ab_cfraPtr, ptr noundef nonnull %4) #10
  %20 = call zeroext i8 @actkeyblock_is_valid(ptr noundef %19, ptr noundef nonnull %5) #10
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = call ptr @BLI_dlrbTree_search_exact(ptr noundef nonnull %5, ptr noundef nonnull @compare_ak_cfraPtr, ptr noundef nonnull %4) #10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %64

25:                                               ; preds = %22
  %26 = call ptr @BLI_dlrbTree_search_next(ptr noundef nonnull %6, ptr noundef nonnull @compare_ab_cfraPtr, ptr noundef nonnull %4) #10
  %27 = call zeroext i8 @actkeyblock_is_valid(ptr noundef %26, ptr noundef nonnull %5) #10
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = call ptr @BLI_dlrbTree_search_prev(ptr noundef nonnull %6, ptr noundef nonnull @compare_ab_cfraPtr, ptr noundef nonnull %4) #10
  %31 = call zeroext i8 @actkeyblock_is_valid(ptr noundef %30, ptr noundef nonnull %5) #10
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %64, label %33

33:                                               ; preds = %29, %25, %18
  %34 = phi ptr [ %26, %25 ], [ %19, %18 ], [ %30, %29 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %64, label %36

36:                                               ; preds = %33, %55
  %37 = phi ptr [ %38, %55 ], [ %34, %33 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !115
  %39 = icmp eq ptr %38, null
  br i1 %39, label %61, label %40

40:                                               ; preds = %36
  %41 = call zeroext i8 @actkeyblock_is_valid(ptr noundef nonnull %38, ptr noundef nonnull %5) #10
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.ActKeyBlock, ptr %37, i64 0, i32 10
  %45 = load float, ptr %44, align 4, !tbaa !117
  %46 = getelementptr inbounds %struct.ActKeyBlock, ptr %38, i64 0, i32 9
  %47 = load float, ptr %46, align 8, !tbaa !118
  %48 = fcmp une float %45, %47
  br i1 %48, label %61, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.ActKeyBlock, ptr %37, i64 0, i32 12
  %51 = load i16, ptr %50, align 2, !tbaa !119
  %52 = getelementptr inbounds %struct.ActKeyBlock, ptr %38, i64 0, i32 12
  %53 = load i16, ptr %52, align 2, !tbaa !119
  %54 = icmp eq i16 %51, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.ActKeyBlock, ptr %37, i64 0, i32 8
  %57 = load float, ptr %56, align 4, !tbaa !120
  %58 = getelementptr inbounds %struct.ActKeyBlock, ptr %38, i64 0, i32 8
  %59 = load float, ptr %58, align 4, !tbaa !120
  %60 = fcmp une float %57, %59
  br i1 %60, label %61, label %36

61:                                               ; preds = %55, %49, %43, %40, %36
  %62 = getelementptr inbounds %struct.ActKeyBlock, ptr %37, i64 0, i32 10
  %63 = load float, ptr %62, align 4, !tbaa !117
  br label %64

64:                                               ; preds = %29, %22, %61, %33
  %65 = phi float [ %63, %61 ], [ %2, %33 ], [ %2, %22 ], [ %2, %29 ]
  call void @BLI_dlrbTree_free(ptr noundef nonnull %5) #10
  call void @BLI_dlrbTree_free(ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  ret float %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pose_propagate_fcurve(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, float noundef %3, ptr %4) unnamed_addr #0 {
  %6 = alloca float, align 4
  %7 = alloca i8, align 1
  %8 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.30) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store float 0.000000e+00, ptr %6, align 4, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  %11 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = icmp eq ptr %12, null
  %14 = ptrtoint ptr %4 to i64
  %15 = trunc i64 %14 to i32
  %16 = bitcast i32 %15 to float
  br i1 %13, label %81, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.FCurve, ptr %2, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !122
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %81, label %21

21:                                               ; preds = %17
  %22 = call fastcc zeroext i8 @pose_propagate_get_refVal(ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %6) #9, !range !123
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %81, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %11, align 8, !tbaa !121
  %26 = load i32, ptr %18, align 8, !tbaa !122
  %27 = call i32 @binarysearch_bezt_index(ptr noundef %25, float noundef %3, i32 noundef %26, ptr noundef nonnull %7) #10
  %28 = load ptr, ptr %11, align 8, !tbaa !121
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds %struct.BezTriple, ptr %28, i64 %29, i32 0, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !101
  %32 = fcmp olt float %31, %3
  %33 = zext i1 %32 to i32
  %34 = add nsw i32 %27, %33
  %35 = load i32, ptr %18, align 8, !tbaa !122
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %81

37:                                               ; preds = %24
  %38 = sext i32 %34 to i64
  %39 = getelementptr inbounds %struct.BezTriple, ptr %28, i64 %38
  %40 = icmp eq ptr %4, null
  %41 = add i32 %35, -1
  %42 = load float, ptr %6, align 4
  br label %43

43:                                               ; preds = %37, %76
  %44 = phi i16 [ 1, %37 ], [ %77, %76 ]
  %45 = phi ptr [ %39, %37 ], [ %79, %76 ]
  %46 = phi i32 [ %34, %37 ], [ %78, %76 ]
  switch i32 %10, label %69 [
    i32 3, label %53
    i32 0, label %53
    i32 2, label %57
    i32 1, label %59
    i32 5, label %47
  ]

47:                                               ; preds = %43
  br i1 %40, label %76, label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds [3 x [3 x float]], ptr %45, i64 0, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !101
  %51 = call fastcc i32 @iroundf(float noundef %50) #9
  %52 = sitofp i32 %51 to float
  br label %61

53:                                               ; preds = %43, %43
  %54 = getelementptr inbounds [3 x [3 x float]], ptr %45, i64 0, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !101
  %56 = fcmp ogt float %55, %16
  br i1 %56, label %81, label %69

57:                                               ; preds = %43
  %58 = icmp eq i16 %44, 0
  br i1 %58, label %81, label %69

59:                                               ; preds = %43
  %60 = icmp eq i32 %46, %41
  br i1 %60, label %69, label %76

61:                                               ; preds = %48, %66
  %62 = phi ptr [ %4, %48 ], [ %67, %66 ]
  %63 = getelementptr inbounds %struct.CfraElem, ptr %62, i64 0, i32 2
  %64 = load float, ptr %63, align 8, !tbaa !124
  %65 = fcmp oeq float %64, %52
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr %62, align 8, !tbaa !126
  %68 = icmp eq ptr %67, null
  br i1 %68, label %76, label %61, !llvm.loop !127

69:                                               ; preds = %61, %43, %57, %59, %53
  %70 = getelementptr inbounds [3 x [3 x float]], ptr %45, i64 0, i64 2, i64 1
  store float %42, ptr %70, align 4, !tbaa !101
  %71 = getelementptr inbounds [3 x [3 x float]], ptr %45, i64 0, i64 1, i64 1
  store float %42, ptr %71, align 4, !tbaa !101
  %72 = getelementptr inbounds [3 x float], ptr %45, i64 0, i64 1
  store float %42, ptr %72, align 4, !tbaa !101
  %73 = getelementptr inbounds %struct.BezTriple, ptr %45, i64 0, i32 8
  %74 = load i8, ptr %73, align 4, !tbaa !128
  %75 = or i8 %74, 1
  store i8 %75, ptr %73, align 4, !tbaa !128
  br label %76

76:                                               ; preds = %66, %47, %59, %69
  %77 = phi i16 [ 0, %69 ], [ %44, %59 ], [ %44, %47 ], [ %44, %66 ]
  %78 = add nuw nsw i32 %46, 1
  %79 = getelementptr inbounds %struct.BezTriple, ptr %45, i64 1
  %80 = icmp ult i32 %78, %35
  br i1 %80, label %43, label %81, !llvm.loop !130

81:                                               ; preds = %57, %53, %76, %24, %21, %5, %17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare signext i16 @compare_ab_cfraPtr(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare zeroext i8 @actkeyblock_is_valid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @pose_propagate_get_refVal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @RNA_id_pointer_create(ptr noundef %0, ptr noundef nonnull %4) #10
  %7 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !103
  %9 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %4, ptr noundef %8, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %58, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %6, align 8, !tbaa !54
  %13 = call zeroext i8 @RNA_property_array_check(ptr noundef %12) #10
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.FCurve, ptr %1, i64 0, i32 11
  %17 = load i32, ptr %16, align 4, !tbaa !97
  %18 = load ptr, ptr %6, align 8, !tbaa !54
  %19 = call i32 @RNA_property_array_length(ptr noundef nonnull %5, ptr noundef %18) #10
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %15
  %22 = load ptr, ptr %6, align 8, !tbaa !54
  %23 = call i32 @RNA_property_type(ptr noundef %22) #10
  switch i32 %23, label %58 [
    i32 0, label %24
    i32 1, label %29
    i32 2, label %34
  ]

24:                                               ; preds = %21
  %25 = load ptr, ptr %6, align 8, !tbaa !54
  %26 = load i32, ptr %16, align 4, !tbaa !97
  %27 = call i32 @RNA_property_boolean_get_index(ptr noundef nonnull %5, ptr noundef %25, i32 noundef %26) #10
  %28 = sitofp i32 %27 to float
  br label %56

29:                                               ; preds = %21
  %30 = load ptr, ptr %6, align 8, !tbaa !54
  %31 = load i32, ptr %16, align 4, !tbaa !97
  %32 = call i32 @RNA_property_int_get_index(ptr noundef nonnull %5, ptr noundef %30, i32 noundef %31) #10
  %33 = sitofp i32 %32 to float
  br label %56

34:                                               ; preds = %21
  %35 = load ptr, ptr %6, align 8, !tbaa !54
  %36 = load i32, ptr %16, align 4, !tbaa !97
  %37 = call float @RNA_property_float_get_index(ptr noundef nonnull %5, ptr noundef %35, i32 noundef %36) #10
  br label %56

38:                                               ; preds = %11
  %39 = load ptr, ptr %6, align 8, !tbaa !54
  %40 = call i32 @RNA_property_type(ptr noundef %39) #10
  switch i32 %40, label %58 [
    i32 0, label %41
    i32 1, label %45
    i32 4, label %49
    i32 2, label %53
  ]

41:                                               ; preds = %38
  %42 = load ptr, ptr %6, align 8, !tbaa !54
  %43 = call i32 @RNA_property_boolean_get(ptr noundef nonnull %5, ptr noundef %42) #10
  %44 = sitofp i32 %43 to float
  br label %56

45:                                               ; preds = %38
  %46 = load ptr, ptr %6, align 8, !tbaa !54
  %47 = call i32 @RNA_property_int_get(ptr noundef nonnull %5, ptr noundef %46) #10
  %48 = sitofp i32 %47 to float
  br label %56

49:                                               ; preds = %38
  %50 = load ptr, ptr %6, align 8, !tbaa !54
  %51 = call i32 @RNA_property_enum_get(ptr noundef nonnull %5, ptr noundef %50) #10
  %52 = sitofp i32 %51 to float
  br label %56

53:                                               ; preds = %38
  %54 = load ptr, ptr %6, align 8, !tbaa !54
  %55 = call float @RNA_property_float_get(ptr noundef nonnull %5, ptr noundef %54) #10
  br label %56

56:                                               ; preds = %41, %45, %49, %53, %34, %29, %24
  %57 = phi float [ %28, %24 ], [ %33, %29 ], [ %37, %34 ], [ %55, %53 ], [ %52, %49 ], [ %48, %45 ], [ %44, %41 ]
  store float %57, ptr %2, align 4, !tbaa !101
  br label %58

58:                                               ; preds = %56, %38, %21, %15, %3
  %59 = phi i8 [ 0, %15 ], [ 0, %3 ], [ 0, %21 ], [ 0, %38 ], [ 1, %56 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret i8 %59
}

; Function Attrs: optsize
declare i32 @binarysearch_bezt_index(ptr noundef, float noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iroundf(float noundef %0) unnamed_addr #6 {
  %2 = fadd float %0, 5.000000e-01
  %3 = tail call float @llvm.floor.f32(float %2)
  %4 = fptosi float %3 to i32
  ret i32 %4
}

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @RNA_path_resolve_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @RNA_property_array_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_property_boolean_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_property_int_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @RNA_property_float_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize willreturn memory(read) }

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
!13 = !{!6, !7, i64 8}
!14 = !{!6, !7, i64 24}
!15 = !{!6, !7, i64 32}
!16 = !{!6, !7, i64 48}
!17 = !{!6, !7, i64 64}
!18 = !{!6, !7, i64 56}
!19 = !{!6, !7, i64 72}
!20 = !{!6, !12, i64 184}
!21 = !{i32 0, i32 2}
!22 = !{!23, !7, i64 96}
!23 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!24 = !{i32 1, i32 3}
!25 = !{!26, !12, i64 16}
!26 = !{!"wmEvent", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 18, !27, i64 20, !27, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !12, i64 44, !12, i64 46, !27, i64 48, !27, i64 52, !28, i64 56, !27, i64 64, !27, i64 68, !12, i64 72, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 106, !27, i64 108, !7, i64 112}
!27 = !{!"int", !8, i64 0}
!28 = !{!"double", !8, i64 0}
!29 = !{!30, !7, i64 8}
!30 = !{!"tPoseSlideOp", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !31, i64 56, !27, i64 80, !27, i64 84, !27, i64 88, !27, i64 92, !27, i64 96, !32, i64 100}
!31 = !{!"DLRBT_Tree", !7, i64 0, !7, i64 8, !7, i64 16}
!32 = !{!"float", !8, i64 0}
!33 = !{!26, !27, i64 20}
!34 = !{!30, !7, i64 16}
!35 = !{!36, !27, i64 176}
!36 = !{!"ARegion", !7, i64 0, !7, i64 8, !37, i64 16, !39, i64 176, !39, i64 192, !12, i64 208, !12, i64 210, !12, i64 212, !12, i64 214, !12, i64 216, !12, i64 218, !32, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !7, i64 240, !10, i64 248, !10, i64 264, !10, i64 280, !10, i64 296, !10, i64 312, !10, i64 328, !10, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!37 = !{!"View2D", !38, i64 0, !38, i64 16, !39, i64 32, !39, i64 48, !39, i64 64, !8, i64 80, !8, i64 88, !32, i64 96, !32, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !27, i64 136, !27, i64 140, !7, i64 144, !7, i64 152}
!38 = !{!"rctf", !32, i64 0, !32, i64 4, !32, i64 8, !32, i64 12}
!39 = !{!"rcti", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12}
!40 = !{!36, !12, i64 208}
!41 = !{!30, !32, i64 100}
!42 = !{!23, !7, i64 112}
!43 = !{!6, !7, i64 88}
!44 = !{!6, !7, i64 104}
!45 = !{!46, !7, i64 120}
!46 = !{!"Object", !47, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !27, i64 140, !27, i64 144, !27, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !48, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !27, i64 432, !27, i64 436, !7, i64 440, !7, i64 448, !27, i64 456, !27, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !32, i64 616, !32, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !27, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !27, i64 968, !27, i64 972, !27, i64 976, !27, i64 980, !27, i64 984, !32, i64 988, !32, i64 992, !32, i64 996, !32, i64 1000, !32, i64 1004, !32, i64 1008, !32, i64 1012, !32, i64 1016, !32, i64 1020, !32, i64 1024, !32, i64 1028, !32, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !32, i64 1048, !32, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !32, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !27, i64 1144, !27, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !32, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !49, i64 1304, !49, i64 1312, !27, i64 1320, !27, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!47 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !27, i64 100, !27, i64 104, !27, i64 108, !7, i64 112}
!48 = !{!"bAnimVizSettings", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !27, i64 32, !27, i64 36, !27, i64 40, !27, i64 44}
!49 = !{!"long", !8, i64 0}
!50 = !{!51, !7, i64 0}
!51 = !{!"AnimData", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !7, i64 40, !10, i64 48, !10, i64 64, !27, i64 80, !27, i64 84, !12, i64 88, !12, i64 90, !32, i64 92}
!52 = !{!23, !7, i64 120}
!53 = !{!8, !8, i64 0}
!54 = !{!7, !7, i64 0}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!58, !27, i64 680}
!58 = !{!"Scene", !47, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !27, i64 232, !27, i64 236, !27, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !59, i64 280, !66, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !27, i64 4380, !10, i64 4384, !67, i64 4400, !68, i64 4416, !71, i64 4600, !7, i64 4608, !72, i64 4616, !7, i64 4640, !49, i64 4648, !49, i64 4656, !61, i64 4664, !62, i64 4824, !73, i64 4888, !7, i64 4952}
!59 = !{!"RenderData", !60, i64 0, !7, i64 248, !7, i64 256, !63, i64 264, !64, i64 328, !27, i64 400, !27, i64 404, !27, i64 408, !32, i64 412, !27, i64 416, !27, i64 420, !27, i64 424, !27, i64 428, !12, i64 432, !12, i64 434, !32, i64 436, !32, i64 440, !32, i64 444, !32, i64 448, !32, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !27, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !27, i64 484, !27, i64 488, !12, i64 492, !12, i64 494, !27, i64 496, !27, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !27, i64 516, !27, i64 520, !27, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !38, i64 544, !38, i64 560, !39, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !32, i64 612, !32, i64 616, !32, i64 620, !32, i64 624, !27, i64 628, !32, i64 632, !32, i64 636, !32, i64 640, !32, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !32, i64 660, !32, i64 664, !12, i64 668, !12, i64 670, !32, i64 672, !32, i64 676, !8, i64 680, !27, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !27, i64 2520, !12, i64 2524, !12, i64 2526, !32, i64 2528, !32, i64 2532, !12, i64 2536, !12, i64 2538, !32, i64 2540, !12, i64 2544, !12, i64 2546, !27, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !32, i64 2560, !32, i64 2564, !7, i64 2568, !27, i64 2576, !32, i64 2580, !8, i64 2584, !65, i64 2616, !27, i64 3976, !27, i64 3980}
!60 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !32, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !61, i64 24, !62, i64 184}
!61 = !{!"ColorManagedViewSettings", !27, i64 0, !27, i64 4, !8, i64 8, !8, i64 72, !32, i64 136, !32, i64 140, !7, i64 144, !7, i64 152}
!62 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!63 = !{!"QuicktimeCodecSettings", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !27, i64 16, !27, i64 20, !27, i64 24, !27, i64 28, !27, i64 32, !27, i64 36, !27, i64 40, !27, i64 44, !12, i64 48, !12, i64 50, !27, i64 52, !27, i64 56, !27, i64 60}
!64 = !{!"FFMpegCodecData", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !27, i64 16, !27, i64 20, !27, i64 24, !27, i64 28, !32, i64 32, !27, i64 36, !27, i64 40, !27, i64 44, !27, i64 48, !27, i64 52, !27, i64 56, !27, i64 60, !7, i64 64}
!65 = !{!"BakeData", !60, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !32, i64 1280, !32, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!66 = !{!"AudioData", !27, i64 0, !32, i64 4, !32, i64 8, !32, i64 12, !27, i64 16, !12, i64 20, !12, i64 22, !32, i64 24, !32, i64 28}
!67 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!68 = !{!"GameData", !67, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !69, i64 40, !12, i64 64, !12, i64 66, !32, i64 68, !70, i64 72, !32, i64 128, !32, i64 132, !27, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !32, i64 164, !32, i64 168, !32, i64 172, !32, i64 176, !32, i64 180}
!69 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !32, i64 8, !32, i64 12, !7, i64 16}
!70 = !{!"RecastData", !32, i64 0, !32, i64 4, !32, i64 8, !32, i64 12, !32, i64 16, !32, i64 20, !32, i64 24, !32, i64 28, !32, i64 32, !32, i64 36, !27, i64 40, !32, i64 44, !32, i64 48, !12, i64 52, !12, i64 54}
!71 = !{!"UnitSettings", !32, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!72 = !{!"PhysicsSettings", !8, i64 0, !27, i64 12, !27, i64 16, !27, i64 20}
!73 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!74 = !{!75, !7, i64 16}
!75 = !{!"LinkData", !7, i64 0, !7, i64 8, !7, i64 16}
!76 = distinct !{!76, !56}
!77 = !{!30, !7, i64 0}
!78 = !{!30, !7, i64 24}
!79 = !{!46, !7, i64 296}
!80 = !{!30, !7, i64 32}
!81 = !{!30, !27, i64 80}
!82 = !{!30, !27, i64 92}
!83 = !{!30, !27, i64 84}
!84 = !{!30, !27, i64 88}
!85 = !{!46, !7, i64 288}
!86 = !{!87, !12, i64 24}
!87 = !{!"bPose", !10, i64 0, !7, i64 16, !12, i64 24, !12, i64 26, !27, i64 28, !27, i64 32, !32, i64 36, !8, i64 40, !8, i64 52, !10, i64 64, !27, i64 80, !27, i64 84, !7, i64 88, !7, i64 96, !48, i64 104, !8, i64 152}
!88 = !{!27, !27, i64 0}
!89 = !{!90, !7, i64 32}
!90 = !{!"tPChanFCurveLink", !7, i64 0, !7, i64 8, !10, i64 16, !7, i64 32, !7, i64 40, !8, i64 48, !8, i64 60, !8, i64 72, !8, i64 84, !32, i64 100, !8, i64 104, !7, i64 120}
!91 = !{!92, !12, i64 104}
!92 = !{!"bPoseChannel", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !8, i64 40, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !8, i64 112, !8, i64 113, !8, i64 114, !7, i64 120, !7, i64 128, !7, i64 136, !10, i64 144, !10, i64 160, !7, i64 176, !7, i64 184, !7, i64 192, !8, i64 200, !8, i64 212, !8, i64 224, !8, i64 236, !8, i64 252, !32, i64 264, !12, i64 268, !12, i64 270, !8, i64 272, !8, i64 336, !8, i64 400, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !32, i64 524, !32, i64 528, !32, i64 532, !7, i64 536}
!93 = !{!92, !12, i64 268}
!94 = !{!90, !7, i64 120}
!95 = distinct !{!95, !56}
!96 = !{!90, !7, i64 40}
!97 = !{!98, !27, i64 76}
!98 = !{!"FCurve", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !7, i64 48, !7, i64 56, !27, i64 64, !32, i64 68, !12, i64 72, !12, i64 74, !27, i64 76, !7, i64 80, !27, i64 88, !8, i64 92, !32, i64 104, !32, i64 108}
!99 = distinct !{!99, !56}
!100 = distinct !{!100, !56}
!101 = !{!32, !32, i64 0}
!102 = distinct !{!102, !56}
!103 = !{!98, !7, i64 80}
!104 = distinct !{!104, !56}
!105 = distinct !{!105, !56}
!106 = distinct !{!106, !56}
!107 = distinct !{!107, !56}
!108 = distinct !{!108, !56}
!109 = !{!30, !7, i64 72}
!110 = !{!111, !32, i64 44}
!111 = !{!"ActKeyColumn", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !8, i64 41, !12, i64 42, !32, i64 44, !12, i64 48, !12, i64 50}
!112 = !{!111, !7, i64 8}
!113 = !{!111, !7, i64 0}
!114 = distinct !{!114, !56}
!115 = !{!116, !7, i64 0}
!116 = !{!"ActKeyBlock", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !8, i64 41, !12, i64 42, !32, i64 44, !32, i64 48, !32, i64 52, !12, i64 56, !12, i64 58}
!117 = !{!116, !32, i64 52}
!118 = !{!116, !32, i64 48}
!119 = !{!116, !12, i64 58}
!120 = !{!116, !32, i64 44}
!121 = !{!98, !7, i64 48}
!122 = !{!98, !27, i64 64}
!123 = !{i8 0, i8 2}
!124 = !{!125, !32, i64 16}
!125 = !{!"CfraElem", !7, i64 0, !7, i64 8, !32, i64 16, !27, i64 20}
!126 = !{!125, !7, i64 0}
!127 = distinct !{!127, !56}
!128 = !{!129, !8, i64 52}
!129 = !{!"BezTriple", !8, i64 0, !32, i64 36, !32, i64 40, !32, i64 44, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !8, i64 52, !8, i64 53, !8, i64 54, !8, i64 55, !32, i64 56, !32, i64 60, !32, i64 64, !8, i64 68}
!130 = distinct !{!130, !56}
