; ModuleID = 'blender/source/blender/editors/space_clip/tracking_select.c'
source_filename = "blender/source/blender/editors/space_clip/tracking_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.rctf = type { float, float, float, float }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.MovieTrackingPlaneTrack = type { ptr, ptr, [64 x i8], ptr, i32, i32, ptr, i32, i32, ptr, float, i32 }

@.str = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Select tracking markers\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"CLIP_OT_select\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Extend\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"Extend selection rather than clearing the existing selection\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.8 = private unnamed_addr constant [80 x i8] c"Mouse location in normalized coordinates, 0.0 to 1.0 is within the image bounds\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Border Select\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Select markers using border selection\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"CLIP_OT_select_border\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Lasso Select\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"Select markers using lasso selection\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"CLIP_OT_select_lasso\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@RNA_OperatorMousePath = external global %struct.StructRNA, align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"deselect\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"Deselect\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"Deselect rather than select items\00", align 1
@.str.21 = private unnamed_addr constant [57 x i8] c"Extend selection instead of deselecting everything first\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"Circle Select\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"Select markers using circle selection\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"CLIP_OT_select_circle\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"Radius\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"gesture_mode\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"Gesture Mode\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"(De)select All\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"Change selection of all tracking markers\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"CLIP_OT_select_all\00", align 1
@CLIP_OT_select_grouped.select_group_items = internal global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.36, i32 0, ptr @.str.37, ptr @.str.38 }, %struct.EnumPropertyItem { i32 1, ptr @.str.39, i32 0, ptr @.str.40, ptr @.str.41 }, %struct.EnumPropertyItem { i32 2, ptr @.str.42, i32 0, ptr @.str.43, ptr @.str.44 }, %struct.EnumPropertyItem { i32 3, ptr @.str.45, i32 0, ptr @.str.46, ptr @.str.47 }, %struct.EnumPropertyItem { i32 4, ptr @.str.48, i32 0, ptr @.str.49, ptr @.str.50 }, %struct.EnumPropertyItem { i32 5, ptr @.str.51, i32 0, ptr @.str.52, ptr @.str.53 }, %struct.EnumPropertyItem { i32 6, ptr @.str.54, i32 0, ptr @.str.55, ptr @.str.56 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.36 = private unnamed_addr constant [10 x i8] c"KEYFRAMED\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"Keyframed tracks\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"Select all keyframed tracks\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"ESTIMATED\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"Estimated tracks\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"Select all estimated tracks\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"TRACKED\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"Tracked tracks\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"Select all tracked tracks\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"LOCKED\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"Locked tracks\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"Select all locked tracks\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"DISABLED\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"Disabled tracks\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"Select all disabled tracks\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"COLOR\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"Tracks with same color\00", align 1
@.str.53 = private unnamed_addr constant [50 x i8] c"Select all tracks with same color as active track\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"Failed Tracks\00", align 1
@.str.56 = private unnamed_addr constant [51 x i8] c"Select all tracks which failed to be reconstructed\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"Select Grouped\00", align 1
@.str.58 = private unnamed_addr constant [39 x i8] c"Select all tracks from specified group\00", align 1
@.str.59 = private unnamed_addr constant [23 x i8] c"CLIP_OT_select_grouped\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c"Clear action to execute\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.63 = private unnamed_addr constant [7 x i8] c"action\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CLIP_OT_select(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @select_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @select_poll, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, float noundef -1.000000e+02, float noundef 1.000000e+02) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !49 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  call void @RNA_float_get_array(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef nonnull %3) #9
  %6 = load ptr, ptr %4, align 8, !tbaa !50
  %7 = call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.3) #9
  call fastcc void @mouse_select(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !52 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.3) #9
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = tail call ptr @tracking_marker_check_slide(ptr noundef %0, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @ED_space_clip_get_clip(ptr noundef %5) #9
  %17 = getelementptr inbounds %struct.MovieClip, ptr %16, i64 0, i32 11, i32 6
  store ptr %13, ptr %17, align 8, !tbaa !53
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef null) #9
  br label %22

18:                                               ; preds = %12, %3
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_clip_mouse_pos(ptr noundef %5, ptr noundef %6, ptr noundef nonnull %19, ptr noundef nonnull %4) #9
  %20 = load ptr, ptr %7, align 8, !tbaa !50
  call void @RNA_float_set_array(ptr noundef %20, ptr noundef nonnull @.str.6, ptr noundef nonnull %4) #9
  %21 = call i32 @select_exec(ptr noundef %0, ptr noundef nonnull %1) #11
  br label %22

22:                                               ; preds = %15, %18
  %23 = phi i32 [ 4, %18 ], [ 8, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @select_poll(ptr noundef %0) #0 !PGOFuncName !66 {
  %2 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 14
  %10 = load i16, ptr %9, align 2, !tbaa !73
  %11 = icmp eq i16 %10, 0
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %1, %4, %8
  %14 = phi i32 [ 0, %4 ], [ %12, %8 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CLIP_OT_select_border(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_border_select_invoke, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @border_select_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_border_select_modal, ptr %6, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %8, align 8, !tbaa !47
  tail call void @WM_operator_properties_gesture_border(ptr noundef nonnull %0, i8 noundef zeroext 1) #9
  ret void
}

; Function Attrs: optsize
declare i32 @WM_border_select_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @border_select_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !75 {
  %3 = alloca %struct.rcti, align 4
  %4 = alloca %struct.rctf, align 4
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %7 = tail call ptr @ED_space_clip_get_clip(ptr noundef %5) #9
  %8 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11
  %9 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %8) #9
  %10 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %11 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %5) #9
  call void @WM_operator_properties_border_to_rcti(ptr noundef %1, ptr noundef nonnull %3) #9
  %12 = load i32, ptr %3, align 4, !tbaa !76
  %13 = sitofp i32 %12 to float
  %14 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !78
  %16 = sitofp i32 %15 to float
  %17 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 2
  call void @ED_clip_point_stable_pos(ptr noundef %5, ptr noundef %6, float noundef %13, float noundef %16, ptr noundef nonnull %4, ptr noundef nonnull %17) #9
  %18 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !79
  %20 = sitofp i32 %19 to float
  %21 = getelementptr inbounds %struct.rcti, ptr %3, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !80
  %23 = sitofp i32 %22 to float
  %24 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 1
  %25 = getelementptr inbounds %struct.rctf, ptr %4, i64 0, i32 3
  call void @ED_clip_point_stable_pos(ptr noundef %5, ptr noundef %6, float noundef %20, float noundef %23, ptr noundef nonnull %24, ptr noundef nonnull %25) #9
  %26 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !50
  %28 = call i32 @RNA_int_get(ptr noundef %27, ptr noundef nonnull @.str.31) #9
  %29 = load ptr, ptr %26, align 8, !tbaa !50
  %30 = call i32 @RNA_boolean_get(ptr noundef %29, ptr noundef nonnull @.str.3) #9
  %31 = load ptr, ptr %9, align 8, !tbaa !81
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 12
  %35 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 10
  %36 = icmp eq i32 %28, 3
  %37 = icmp eq i32 %30, 0
  br label %45

38:                                               ; preds = %75, %2
  %39 = phi i8 [ 0, %2 ], [ %76, %75 ]
  %40 = load ptr, ptr %10, align 8, !tbaa !81
  %41 = icmp eq ptr %40, null
  br i1 %41, label %112, label %42

42:                                               ; preds = %38
  %43 = icmp eq i32 %28, 3
  %44 = icmp eq i32 %30, 0
  br label %79

45:                                               ; preds = %33, %75
  %46 = phi ptr [ %31, %33 ], [ %77, %75 ]
  %47 = phi i8 [ 0, %33 ], [ %76, %75 ]
  %48 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %46, i64 0, i32 13
  %49 = load i32, ptr %48, align 8, !tbaa !82
  %50 = and i32 %49, 32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %45
  %53 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %46, i32 noundef %11) #9
  %54 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %53, i64 0, i32 5
  %55 = load i32, ptr %54, align 4, !tbaa !84
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %52
  %59 = load i32, ptr %34, align 8, !tbaa !85
  %60 = and i32 %59, 128
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %35, align 8, !tbaa !67
  %64 = getelementptr inbounds %struct.MovieClip, ptr %63, i64 0, i32 11, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !53
  %66 = icmp eq ptr %65, %46
  br i1 %66, label %67, label %75

67:                                               ; preds = %62, %58, %52
  %68 = call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef nonnull %4, ptr noundef nonnull %53) #9
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  br i1 %36, label %71, label %72

71:                                               ; preds = %70
  call void @BKE_tracking_track_flag_set(ptr noundef nonnull %46, i32 noundef 7, i32 noundef 1) #9
  br label %75

72:                                               ; preds = %70
  call void @BKE_tracking_track_flag_clear(ptr noundef nonnull %46, i32 noundef 7, i32 noundef 1) #9
  br label %75

73:                                               ; preds = %67
  br i1 %37, label %74, label %75

74:                                               ; preds = %73
  call void @BKE_tracking_track_flag_clear(ptr noundef nonnull %46, i32 noundef 7, i32 noundef 1) #9
  br label %75

75:                                               ; preds = %62, %73, %74, %71, %72, %45
  %76 = phi i8 [ %47, %45 ], [ %47, %62 ], [ 1, %73 ], [ 1, %74 ], [ 1, %71 ], [ 1, %72 ]
  %77 = load ptr, ptr %46, align 8, !tbaa !81
  %78 = icmp eq ptr %77, null
  br i1 %78, label %38, label %45, !llvm.loop !86

79:                                               ; preds = %42, %108
  %80 = phi ptr [ %40, %42 ], [ %110, %108 ]
  %81 = phi i8 [ %39, %42 ], [ %109, %108 ]
  %82 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %80, i64 0, i32 8
  %83 = load i32, ptr %82, align 4, !tbaa !88
  %84 = and i32 %83, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %108

86:                                               ; preds = %79
  %87 = call ptr @BKE_tracking_plane_marker_get(ptr noundef nonnull %80, i32 noundef %11) #9
  br label %88

88:                                               ; preds = %86, %105
  %89 = phi i64 [ 0, %86 ], [ %106, %105 ]
  %90 = getelementptr inbounds [4 x [2 x float]], ptr %87, i64 0, i64 %89
  %91 = call zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef nonnull %4, ptr noundef %90) #9
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %88
  %94 = load i32, ptr %82, align 4, !tbaa !88
  br i1 %43, label %95, label %97

95:                                               ; preds = %93
  %96 = or i32 %94, 1
  br label %103

97:                                               ; preds = %93
  %98 = and i32 %94, -2
  br label %103

99:                                               ; preds = %88
  br i1 %44, label %100, label %105

100:                                              ; preds = %99
  %101 = load i32, ptr %82, align 4, !tbaa !88
  %102 = and i32 %101, -2
  br label %103

103:                                              ; preds = %100, %95, %97
  %104 = phi i32 [ %98, %97 ], [ %96, %95 ], [ %102, %100 ]
  store i32 %104, ptr %82, align 4, !tbaa !88
  br label %105

105:                                              ; preds = %103, %99
  %106 = add nuw nsw i64 %89, 1
  %107 = icmp eq i64 %106, 4
  br i1 %107, label %108, label %88, !llvm.loop !90

108:                                              ; preds = %105, %79
  %109 = phi i8 [ %81, %79 ], [ 1, %105 ]
  %110 = load ptr, ptr %80, align 8, !tbaa !81
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %79, !llvm.loop !91

112:                                              ; preds = %108, %38
  %113 = phi i8 [ %39, %38 ], [ %109, %108 ]
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %8) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef null) #9
  br label %116

116:                                              ; preds = %112, %115
  %117 = phi i32 [ 4, %115 ], [ 2, %112 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret i32 %117
}

; Function Attrs: optsize
declare i32 @WM_border_select_modal(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare i32 @ED_space_clip_tracking_poll(ptr noundef) #1

; Function Attrs: optsize
declare void @WM_operator_properties_gesture_border(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CLIP_OT_select_lasso(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_lasso_invoke, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_lasso_modal, ptr %5, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @clip_lasso_select_exec, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @WM_gesture_lasso_cancel, ptr %8, align 8, !tbaa !92
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %9, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_collection_runtime(ptr noundef %11, ptr noundef nonnull @.str.15, ptr noundef nonnull @RNA_OperatorMousePath, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #9
  %13 = load ptr, ptr %10, align 8, !tbaa !48
  %14 = tail call ptr @RNA_def_boolean(ptr noundef %13, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #9
  %15 = load ptr, ptr %10, align 8, !tbaa !48
  %16 = tail call ptr @RNA_def_boolean(ptr noundef %15, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.21) #9
  ret void
}

; Function Attrs: optsize
declare i32 @WM_gesture_lasso_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare i32 @WM_gesture_lasso_modal(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @clip_lasso_select_exec(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !93 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %4 = call ptr @WM_gesture_lasso_path_to_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.18) #9
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i8
  %12 = load i32, ptr %3, align 4, !tbaa !94
  %13 = trunc i32 %12 to i16
  call fastcc void @do_lasso_select_marker(ptr noundef %0, ptr noundef nonnull %4, i16 noundef signext %13, i8 noundef zeroext %11) #11
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !81
  call void %14(ptr noundef nonnull %4) #9
  br label %15

15:                                               ; preds = %2, %6
  %16 = phi i32 [ 4, %6 ], [ 8, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %16
}

; Function Attrs: optsize
declare void @WM_gesture_lasso_cancel(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare ptr @RNA_def_collection_runtime(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CLIP_OT_select_circle(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.22, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.24, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_gesture_circle_invoke, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @WM_gesture_circle_modal, ptr %5, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @circle_select_exec, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %8, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.17, i32 noundef -2147483648, i32 noundef 2147483647) #9
  %12 = load ptr, ptr %9, align 8, !tbaa !48
  %13 = tail call ptr @RNA_def_int(ptr noundef %12, ptr noundef nonnull @.str.27, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.17, i32 noundef -2147483648, i32 noundef 2147483647) #9
  %14 = load ptr, ptr %9, align 8, !tbaa !48
  %15 = tail call ptr @RNA_def_int(ptr noundef %14, ptr noundef nonnull @.str.29, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.17, i32 noundef 1, i32 noundef 2147483647) #9
  %16 = load ptr, ptr %9, align 8, !tbaa !48
  %17 = tail call ptr @RNA_def_int(ptr noundef %16, ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.17, i32 noundef -2147483648, i32 noundef 2147483647) #9
  ret void
}

; Function Attrs: optsize
declare i32 @WM_gesture_circle_invoke(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare i32 @WM_gesture_circle_modal(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @circle_select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !95 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 8
  %9 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %11 = tail call ptr @ED_space_clip_get_clip(ptr noundef %9) #9
  %12 = getelementptr inbounds %struct.MovieClip, ptr %11, i64 0, i32 11
  %13 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %12) #9
  %14 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  %15 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %9) #9
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = tail call i32 @RNA_int_get(ptr noundef %17, ptr noundef nonnull @.str.25) #9
  %19 = load ptr, ptr %16, align 8, !tbaa !50
  %20 = tail call i32 @RNA_int_get(ptr noundef %19, ptr noundef nonnull @.str.27) #9
  %21 = load ptr, ptr %16, align 8, !tbaa !50
  %22 = tail call i32 @RNA_int_get(ptr noundef %21, ptr noundef nonnull @.str.29) #9
  %23 = load ptr, ptr %16, align 8, !tbaa !50
  %24 = tail call i32 @RNA_int_get(ptr noundef %23, ptr noundef nonnull @.str.31) #9
  call void @ED_space_clip_get_size(ptr noundef %9, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  call void @ED_space_clip_get_zoom(ptr noundef %9, ptr noundef %10, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %25 = load i32, ptr %3, align 4, !tbaa !94
  %26 = load float, ptr %5, align 4, !tbaa !96
  %27 = sitofp i32 %22 to float
  %28 = load i32, ptr %4, align 4, !tbaa !94
  %29 = load float, ptr %6, align 4, !tbaa !96
  %30 = insertelement <2 x i32> poison, i32 %25, i64 0
  %31 = insertelement <2 x i32> %30, i32 %28, i64 1
  %32 = sitofp <2 x i32> %31 to <2 x float>
  %33 = insertelement <2 x float> poison, float %26, i64 0
  %34 = insertelement <2 x float> %33, float %29, i64 1
  %35 = fmul <2 x float> %34, %32
  %36 = insertelement <2 x float> poison, float %27, i64 0
  %37 = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> zeroinitializer
  %38 = fdiv <2 x float> %35, %37
  store <2 x float> %38, ptr %8, align 8, !tbaa !96
  %39 = sitofp i32 %18 to float
  %40 = sitofp i32 %20 to float
  %41 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  call void @ED_clip_point_stable_pos(ptr noundef %9, ptr noundef %10, float noundef %39, float noundef %40, ptr noundef nonnull %7, ptr noundef nonnull %41) #9
  %42 = load ptr, ptr %13, align 8, !tbaa !81
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %2
  %45 = getelementptr inbounds %struct.SpaceClip, ptr %9, i64 0, i32 12
  %46 = getelementptr inbounds %struct.SpaceClip, ptr %9, i64 0, i32 10
  %47 = icmp eq i32 %24, 3
  br label %55

48:                                               ; preds = %83, %2
  %49 = phi i8 [ 0, %2 ], [ %84, %83 ]
  %50 = load ptr, ptr %14, align 8, !tbaa !81
  %51 = icmp eq ptr %50, null
  br i1 %51, label %112, label %52

52:                                               ; preds = %48
  %53 = icmp eq i32 %24, 3
  %54 = zext i1 %53 to i32
  br label %87

55:                                               ; preds = %44, %83
  %56 = phi ptr [ %42, %44 ], [ %85, %83 ]
  %57 = phi i8 [ 0, %44 ], [ %84, %83 ]
  %58 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %56, i64 0, i32 13
  %59 = load i32, ptr %58, align 8, !tbaa !82
  %60 = and i32 %59, 32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %55
  %63 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %56, i32 noundef %15) #9
  %64 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %63, i64 0, i32 5
  %65 = load i32, ptr %64, align 4, !tbaa !84
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %62
  %69 = load i32, ptr %45, align 8, !tbaa !85
  %70 = and i32 %69, 128
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %46, align 8, !tbaa !67
  %74 = getelementptr inbounds %struct.MovieClip, ptr %73, i64 0, i32 11, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !53
  %76 = icmp eq ptr %75, %56
  br i1 %76, label %77, label %83

77:                                               ; preds = %72, %68, %62
  %78 = call fastcc i32 @marker_inside_ellipse(ptr noundef nonnull %63, ptr noundef nonnull %7, ptr noundef nonnull %8) #11, !range !97
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  br i1 %47, label %81, label %82

81:                                               ; preds = %80
  call void @BKE_tracking_track_flag_set(ptr noundef nonnull %56, i32 noundef 7, i32 noundef 1) #9
  br label %83

82:                                               ; preds = %80
  call void @BKE_tracking_track_flag_clear(ptr noundef nonnull %56, i32 noundef 7, i32 noundef 1) #9
  br label %83

83:                                               ; preds = %72, %77, %82, %81, %55
  %84 = phi i8 [ %57, %55 ], [ %57, %77 ], [ %57, %72 ], [ 1, %82 ], [ 1, %81 ]
  %85 = load ptr, ptr %56, align 8, !tbaa !81
  %86 = icmp eq ptr %85, null
  br i1 %86, label %48, label %55, !llvm.loop !98

87:                                               ; preds = %52, %108
  %88 = phi ptr [ %50, %52 ], [ %110, %108 ]
  %89 = phi i8 [ %49, %52 ], [ %109, %108 ]
  %90 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %88, i64 0, i32 8
  %91 = load i32, ptr %90, align 4, !tbaa !88
  %92 = and i32 %91, 2
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %87
  %95 = call ptr @BKE_tracking_plane_marker_get(ptr noundef nonnull %88, i32 noundef %15) #9
  br label %96

96:                                               ; preds = %94, %105
  %97 = phi i64 [ 0, %94 ], [ %106, %105 ]
  %98 = getelementptr inbounds [4 x [2 x float]], ptr %95, i64 0, i64 %97
  %99 = call fastcc i32 @point_inside_ellipse(ptr noundef %98, ptr noundef nonnull %7, ptr noundef nonnull %8) #11, !range !97
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %96
  %102 = load i32, ptr %90, align 4, !tbaa !88
  %103 = and i32 %102, -2
  %104 = or disjoint i32 %103, %54
  store i32 %104, ptr %90, align 4, !tbaa !88
  br label %105

105:                                              ; preds = %101, %96
  %106 = add nuw nsw i64 %97, 1
  %107 = icmp eq i64 %106, 4
  br i1 %107, label %108, label %96, !llvm.loop !99

108:                                              ; preds = %105, %87
  %109 = phi i8 [ %89, %87 ], [ 1, %105 ]
  %110 = load ptr, ptr %88, align 8, !tbaa !81
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %87, !llvm.loop !100

112:                                              ; preds = %108, %48
  %113 = phi i8 [ %49, %48 ], [ %109, %108 ]
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %12) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef null) #9
  br label %116

116:                                              ; preds = %112, %115
  %117 = phi i32 [ 4, %115 ], [ 2, %112 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %117
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CLIP_OT_select_all(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.34, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.35, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_all_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  tail call void @WM_operator_properties_select_all(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !101 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #9
  %7 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %5) #9
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.63) #9
  %11 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %3) #9
  %12 = icmp eq i32 %10, 0
  %13 = load ptr, ptr %6, align 8, !tbaa !81
  br i1 %12, label %14, label %76

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %16 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 10
  %17 = icmp eq ptr %13, null
  br i1 %17, label %62, label %18

18:                                               ; preds = %14, %59
  %19 = phi ptr [ %60, %59 ], [ %13, %14 ]
  %20 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %19, i64 0, i32 13
  %21 = load i32, ptr %20, align 8, !tbaa !82
  %22 = and i32 %21, 32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %18
  %25 = and i32 %21, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load i32, ptr %15, align 8, !tbaa !85
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %19, i64 0, i32 14
  %33 = load i32, ptr %32, align 4, !tbaa !102
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31, %27
  %37 = and i32 %28, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %19, i64 0, i32 15
  %41 = load i32, ptr %40, align 8, !tbaa !103
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %39, %31, %24
  %45 = tail call ptr @BKE_tracking_marker_get(ptr noundef nonnull %19, i32 noundef %11) #9
  %46 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %45, i64 0, i32 5
  %47 = load i32, ptr %46, align 4, !tbaa !84
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %44
  %51 = load i32, ptr %15, align 8, !tbaa !85
  %52 = and i32 %51, 128
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %16, align 8, !tbaa !67
  %56 = getelementptr inbounds %struct.MovieClip, ptr %55, i64 0, i32 11, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !53
  %58 = icmp eq ptr %57, %19
  br i1 %58, label %62, label %59

59:                                               ; preds = %18, %36, %39, %54
  %60 = load ptr, ptr %19, align 8, !tbaa !81
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %18, !llvm.loop !104

62:                                               ; preds = %59, %54, %50, %44, %14
  %63 = phi i32 [ 1, %14 ], [ 2, %44 ], [ 2, %50 ], [ 2, %54 ], [ 1, %59 ]
  br label %64

64:                                               ; preds = %68, %62
  %65 = phi ptr [ %7, %62 ], [ %66, %68 ]
  %66 = load ptr, ptr %65, align 8, !tbaa !81
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %66, i64 0, i32 8
  %70 = load i32, ptr %69, align 4, !tbaa !88
  %71 = and i32 %70, 3
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %64, !llvm.loop !105

73:                                               ; preds = %64, %68
  %74 = phi i32 [ %63, %64 ], [ 2, %68 ]
  %75 = load ptr, ptr %6, align 8, !tbaa !81
  br label %76

76:                                               ; preds = %73, %2
  %77 = phi ptr [ %13, %2 ], [ %75, %73 ]
  %78 = phi i32 [ %10, %2 ], [ %74, %73 ]
  %79 = icmp eq ptr %77, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %82 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 10
  br label %87

83:                                               ; preds = %153, %76
  %84 = phi i8 [ 0, %76 ], [ %154, %153 ]
  %85 = load ptr, ptr %7, align 8, !tbaa !81
  %86 = icmp eq ptr %85, null
  br i1 %86, label %182, label %157

87:                                               ; preds = %80, %153
  %88 = phi ptr [ %77, %80 ], [ %155, %153 ]
  %89 = phi i8 [ 0, %80 ], [ %154, %153 ]
  %90 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %88, i64 0, i32 13
  %91 = load i32, ptr %90, align 8, !tbaa !82
  %92 = and i32 %91, 32
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %128

94:                                               ; preds = %87
  %95 = tail call ptr @BKE_tracking_marker_get(ptr noundef nonnull %88, i32 noundef %11) #9
  %96 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %95, i64 0, i32 5
  %97 = load i32, ptr %96, align 4, !tbaa !84
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %94
  %101 = load i32, ptr %81, align 8, !tbaa !85
  %102 = and i32 %101, 128
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr %82, align 8, !tbaa !67
  %106 = getelementptr inbounds %struct.MovieClip, ptr %105, i64 0, i32 11, i32 6
  %107 = load ptr, ptr %106, align 8, !tbaa !53
  %108 = icmp eq ptr %107, %88
  br i1 %108, label %109, label %128

109:                                              ; preds = %104, %100, %94
  switch i32 %78, label %128 [
    i32 1, label %110
    i32 2, label %116
    i32 3, label %122
  ]

110:                                              ; preds = %109
  %111 = load <2 x i32>, ptr %90, align 8, !tbaa !94
  %112 = or <2 x i32> %111, <i32 1, i32 1>
  store <2 x i32> %112, ptr %90, align 8, !tbaa !94
  %113 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %88, i64 0, i32 15
  %114 = load i32, ptr %113, align 8, !tbaa !103
  %115 = or i32 %114, 1
  store i32 %115, ptr %113, align 8, !tbaa !103
  br label %128

116:                                              ; preds = %109
  %117 = load <2 x i32>, ptr %90, align 8, !tbaa !94
  %118 = and <2 x i32> %117, <i32 -2, i32 -2>
  store <2 x i32> %118, ptr %90, align 8, !tbaa !94
  %119 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %88, i64 0, i32 15
  %120 = load i32, ptr %119, align 8, !tbaa !103
  %121 = and i32 %120, -2
  store i32 %121, ptr %119, align 8, !tbaa !103
  br label %128

122:                                              ; preds = %109
  %123 = load <2 x i32>, ptr %90, align 8, !tbaa !94
  %124 = xor <2 x i32> %123, <i32 1, i32 1>
  store <2 x i32> %124, ptr %90, align 8, !tbaa !94
  %125 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %88, i64 0, i32 15
  %126 = load i32, ptr %125, align 8, !tbaa !103
  %127 = xor i32 %126, 1
  store i32 %127, ptr %125, align 8, !tbaa !103
  br label %128

128:                                              ; preds = %104, %109, %122, %116, %110, %87
  %129 = load i32, ptr %90, align 8, !tbaa !82
  %130 = and i32 %129, 32
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %153

132:                                              ; preds = %128
  %133 = and i32 %129, 1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %132
  %136 = load i32, ptr %81, align 8, !tbaa !85
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %88, i64 0, i32 14
  %141 = load i32, ptr %140, align 4, !tbaa !102
  %142 = and i32 %141, 1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %139, %135
  %145 = and i32 %136, 2
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %88, i64 0, i32 15
  %149 = load i32, ptr %148, align 8, !tbaa !103
  %150 = and i32 %149, 1
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %147, %139, %132
  br label %153

153:                                              ; preds = %128, %144, %147, %152
  %154 = phi i8 [ 1, %152 ], [ %89, %147 ], [ %89, %144 ], [ %89, %128 ]
  %155 = load ptr, ptr %88, align 8, !tbaa !81
  %156 = icmp eq ptr %155, null
  br i1 %156, label %83, label %87, !llvm.loop !106

157:                                              ; preds = %83, %178
  %158 = phi ptr [ %180, %178 ], [ %85, %83 ]
  %159 = phi i8 [ %179, %178 ], [ %84, %83 ]
  %160 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %158, i64 0, i32 8
  %161 = load i32, ptr %160, align 4, !tbaa !88
  %162 = and i32 %161, 2
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %178

164:                                              ; preds = %157
  switch i32 %78, label %173 [
    i32 1, label %165
    i32 2, label %167
    i32 3, label %169
  ]

165:                                              ; preds = %164
  %166 = or i32 %161, 1
  br label %171

167:                                              ; preds = %164
  %168 = and i32 %161, -4
  br label %171

169:                                              ; preds = %164
  %170 = xor i32 %161, 1
  br label %171

171:                                              ; preds = %165, %167, %169
  %172 = phi i32 [ %170, %169 ], [ %168, %167 ], [ %166, %165 ]
  store i32 %172, ptr %160, align 4, !tbaa !88
  br label %173

173:                                              ; preds = %171, %164
  %174 = phi i32 [ %161, %164 ], [ %172, %171 ]
  %175 = and i32 %174, 1
  %176 = icmp eq i32 %175, 0
  %177 = select i1 %176, i8 %159, i8 1
  br label %178

178:                                              ; preds = %173, %157
  %179 = phi i8 [ %159, %157 ], [ %177, %173 ]
  %180 = load ptr, ptr %158, align 8, !tbaa !81
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %157, !llvm.loop !107

182:                                              ; preds = %178, %83
  %183 = phi i8 [ %84, %83 ], [ %179, %178 ]
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %187 = load i32, ptr %186, align 8, !tbaa !85
  %188 = and i32 %187, -5
  store i32 %188, ptr %186, align 8, !tbaa !85
  br label %189

189:                                              ; preds = %185, %182
  tail call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %5) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef null) #9
  ret i32 4
}

; Function Attrs: optsize
declare void @WM_operator_properties_select_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CLIP_OT_select_grouped(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.57, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.58, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.59, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @select_groped_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.60, ptr noundef nonnull @CLIP_OT_select_grouped.select_group_items, i32 noundef 1, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @select_groped_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !108 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #9
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.60) #9
  %10 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %3) #9
  %11 = load ptr, ptr %6, align 8, !tbaa !81
  %12 = icmp eq ptr %11, null
  br i1 %12, label %105, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  br label %15

15:                                               ; preds = %13, %102
  %16 = phi ptr [ %11, %13 ], [ %103, %102 ]
  %17 = tail call ptr @BKE_tracking_marker_get(ptr noundef nonnull %16, i32 noundef %10) #9
  switch i32 %9, label %102 [
    i32 0, label %18
    i32 1, label %30
    i32 2, label %35
    i32 3, label %47
    i32 4, label %52
    i32 5, label %57
    i32 6, label %75
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %17, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !109
  %21 = icmp eq i32 %20, %10
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %17, i64 0, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !84
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi i1 [ false, %18 ], [ %26, %22 ]
  %29 = zext i1 %28 to i8
  br label %81

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %17, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !109
  %33 = icmp ne i32 %32, %10
  %34 = zext i1 %33 to i8
  br label %81

35:                                               ; preds = %15
  %36 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %17, i64 0, i32 4
  %37 = load i32, ptr %36, align 4, !tbaa !109
  %38 = icmp eq i32 %37, %10
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %17, i64 0, i32 5
  %41 = load i32, ptr %40, align 4, !tbaa !84
  %42 = and i32 %41, 2
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i1 [ false, %35 ], [ %43, %39 ]
  %46 = zext i1 %45 to i8
  br label %81

47:                                               ; preds = %15
  %48 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 13
  %49 = load i32, ptr %48, align 8, !tbaa !82
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 64
  br label %81

52:                                               ; preds = %15
  %53 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %17, i64 0, i32 5
  %54 = load i32, ptr %53, align 4, !tbaa !84
  %55 = trunc i32 %54 to i8
  %56 = and i8 %55, 1
  br label %81

57:                                               ; preds = %15
  %58 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %5) #9
  %59 = icmp eq ptr %58, null
  br i1 %59, label %102, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 13
  %62 = load i32, ptr %61, align 8, !tbaa !82
  %63 = and i32 %62, 128
  %64 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %58, i64 0, i32 13
  %65 = load i32, ptr %64, align 8, !tbaa !82
  %66 = and i32 %65, 128
  %67 = icmp eq i32 %63, %66
  %68 = zext i1 %67 to i8
  %69 = icmp ne i32 %63, 0
  %70 = and i1 %69, %67
  br i1 %70, label %71, label %81

71:                                               ; preds = %60
  %72 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 16
  %73 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %58, i64 0, i32 16
  %74 = tail call fastcc zeroext i8 @equals_v3v3(ptr noundef nonnull %72, ptr noundef nonnull %73) #11, !range !110
  br label %81

75:                                               ; preds = %15
  %76 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 13
  %77 = load i32, ptr %76, align 8, !tbaa !82
  %78 = and i32 %77, 2
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i8
  br label %81

81:                                               ; preds = %71, %60, %30, %47, %75, %52, %44, %27
  %82 = phi i8 [ %29, %27 ], [ %34, %30 ], [ %46, %44 ], [ %51, %47 ], [ %56, %52 ], [ %80, %75 ], [ %74, %71 ], [ %68, %60 ]
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %102, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 13
  %86 = load i32, ptr %85, align 8, !tbaa !82
  %87 = or i32 %86, 1
  store i32 %87, ptr %85, align 8, !tbaa !82
  %88 = load i32, ptr %14, align 8, !tbaa !85
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 14
  %93 = load i32, ptr %92, align 4, !tbaa !102
  %94 = or i32 %93, 1
  store i32 %94, ptr %92, align 4, !tbaa !102
  br label %95

95:                                               ; preds = %91, %84
  %96 = and i32 %88, 2
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 15
  %100 = load i32, ptr %99, align 8, !tbaa !103
  %101 = or i32 %100, 1
  store i32 %101, ptr %99, align 8, !tbaa !103
  br label %102

102:                                              ; preds = %15, %57, %95, %98, %81
  %103 = load ptr, ptr %16, align 8, !tbaa !81
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %15, !llvm.loop !111

105:                                              ; preds = %102, %2
  tail call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %5) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 338886656, ptr noundef %4) #9
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mouse_select(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !112 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %7 = tail call ptr @ED_space_clip_get_clip(ptr noundef %6) #9
  %8 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11
  %9 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %8) #9
  %10 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %8) #9
  %11 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %12 = call fastcc ptr @find_nearest_track(ptr noundef %6, ptr noundef %9, ptr noundef %1, ptr noundef nonnull %4) #11
  %13 = call fastcc ptr @find_nearest_plane_track(ptr noundef %6, ptr noundef %10, ptr noundef %1, ptr noundef nonnull %5) #11
  %14 = icmp ne ptr %12, null
  %15 = icmp ne ptr %13, null
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load float, ptr %4, align 4, !tbaa !96
  %19 = load float, ptr %5, align 4, !tbaa !96
  %20 = fcmp olt float %18, %19
  %21 = select i1 %20, ptr %12, ptr null
  %22 = select i1 %20, ptr null, ptr %13
  br label %23

23:                                               ; preds = %17, %3
  %24 = phi ptr [ %12, %3 ], [ %21, %17 ]
  %25 = phi ptr [ %13, %3 ], [ %22, %17 ]
  %26 = icmp eq i32 %2, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  tail call fastcc void @delect_all_plane_tracks(ptr noundef %10) #11
  %28 = icmp eq ptr %24, null
  br i1 %28, label %86, label %31

29:                                               ; preds = %23
  %30 = icmp eq ptr %24, null
  br i1 %30, label %88, label %33

31:                                               ; preds = %27
  %32 = tail call fastcc i32 @track_mouse_area(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %24) #11, !range !113
  br label %83

33:                                               ; preds = %29
  %34 = tail call fastcc i32 @track_mouse_area(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %24) #11, !range !113
  %35 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %24, i64 0, i32 13
  %36 = load i32, ptr %35, align 8, !tbaa !82
  %37 = and i32 %36, 32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %33
  %40 = and i32 %36, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.SpaceClip, ptr %6, i64 0, i32 12
  %44 = load i32, ptr %43, align 8, !tbaa !85
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %24, i64 0, i32 14
  %49 = load i32, ptr %48, align 4, !tbaa !102
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47, %42
  %53 = and i32 %44, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %24, i64 0, i32 15
  %57 = load i32, ptr %56, align 8, !tbaa !103
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %55, %47, %39
  switch i32 %34, label %67 [
    i32 1, label %61
    i32 2, label %62
  ]

61:                                               ; preds = %60
  br i1 %41, label %82, label %73

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %24, i64 0, i32 14
  %64 = load i32, ptr %63, align 4, !tbaa !102
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %83, label %73

67:                                               ; preds = %33, %52, %55, %60
  %68 = phi i32 [ %34, %60 ], [ 7, %55 ], [ 7, %52 ], [ 7, %33 ]
  %69 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %24, i64 0, i32 15
  %70 = load i32, ptr %69, align 8, !tbaa !103
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %67, %62, %61
  %74 = phi i32 [ %68, %67 ], [ 2, %62 ], [ 1, %61 ]
  %75 = icmp eq ptr %24, %11
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  tail call void @BKE_tracking_track_deselect(ptr noundef nonnull %11, i32 noundef %74) #9
  br label %113

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11, i32 6
  store ptr %24, ptr %78, align 8, !tbaa !53
  %79 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11, i32 7
  store ptr null, ptr %79, align 8, !tbaa !114
  br label %113

80:                                               ; preds = %67
  %81 = icmp eq i32 %68, 1
  br i1 %81, label %82, label %83

82:                                               ; preds = %61, %80
  br label %83

83:                                               ; preds = %31, %62, %80, %82
  %84 = phi i32 [ 7, %82 ], [ %68, %80 ], [ 7, %31 ], [ 2, %62 ]
  %85 = trunc i32 %2 to i8
  tail call void @BKE_tracking_track_select(ptr noundef %9, ptr noundef nonnull %24, i32 noundef %84, i8 noundef zeroext %85) #9
  br label %106

86:                                               ; preds = %27
  %87 = icmp eq ptr %25, null
  br i1 %87, label %111, label %95

88:                                               ; preds = %29
  %89 = icmp eq ptr %25, null
  br i1 %89, label %113, label %90

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %25, i64 0, i32 8
  %92 = load i32, ptr %91, align 4, !tbaa !88
  %93 = and i32 %92, 3
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %100, label %102

95:                                               ; preds = %86
  tail call fastcc void @delect_all_tracks(ptr noundef %9) #11
  %96 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %25, i64 0, i32 8
  %97 = load i32, ptr %96, align 4, !tbaa !88
  %98 = and i32 %97, 3
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %106, label %102

100:                                              ; preds = %90
  %101 = and i32 %92, -4
  store i32 %101, ptr %91, align 4, !tbaa !88
  br label %106

102:                                              ; preds = %95, %90
  %103 = phi i32 [ %97, %95 ], [ %92, %90 ]
  %104 = phi ptr [ %96, %95 ], [ %91, %90 ]
  %105 = or i32 %103, 1
  store i32 %105, ptr %104, align 4, !tbaa !88
  br label %106

106:                                              ; preds = %102, %100, %95, %83
  %107 = phi ptr [ %24, %83 ], [ null, %95 ], [ null, %100 ], [ null, %102 ]
  %108 = phi ptr [ null, %83 ], [ %25, %95 ], [ %25, %100 ], [ %25, %102 ]
  %109 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11, i32 6
  store ptr %107, ptr %109, align 8, !tbaa !53
  %110 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11, i32 7
  store ptr %108, ptr %110, align 8, !tbaa !114
  br i1 %26, label %111, label %113

111:                                              ; preds = %86, %106
  %112 = getelementptr inbounds %struct.SpaceClip, ptr %6, i64 0, i32 6
  store <2 x float> zeroinitializer, ptr %112, align 4, !tbaa !96
  br label %113

113:                                              ; preds = %76, %77, %88, %111, %106
  tail call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %8) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_get_active_tracks(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_get_active_plane_tracks(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_track_get_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_nearest_track(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !115 {
  %5 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %0) #9
  %6 = load ptr, ptr %1, align 8, !tbaa !81
  %7 = icmp eq ptr %6, null
  br i1 %7, label %100, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  %10 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  %11 = getelementptr inbounds float, ptr %2, i64 1
  br label %12

12:                                               ; preds = %8, %95
  %13 = phi ptr [ %6, %8 ], [ %98, %95 ]
  %14 = phi ptr [ null, %8 ], [ %97, %95 ]
  %15 = phi float [ 0.000000e+00, %8 ], [ %96, %95 ]
  %16 = tail call ptr @BKE_tracking_marker_get(ptr noundef nonnull %13, i32 noundef %5) #9
  %17 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %13, i64 0, i32 13
  %18 = load i32, ptr %17, align 8, !tbaa !82
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %95

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %16, i64 0, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !84
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  %26 = load i32, ptr %9, align 8, !tbaa !85
  %27 = and i32 %26, 128
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %25, i1 true, i1 %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %21
  %31 = load ptr, ptr %10, align 8, !tbaa !67
  %32 = getelementptr inbounds %struct.MovieClip, ptr %31, i64 0, i32 11, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !53
  %34 = icmp eq ptr %33, %13
  br i1 %34, label %35, label %95

35:                                               ; preds = %30, %21
  %36 = load float, ptr %2, align 4, !tbaa !96
  %37 = load float, ptr %16, align 4, !tbaa !96
  %38 = fsub float %36, %37
  %39 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %13, i64 0, i32 7
  %40 = load float, ptr %39, align 8, !tbaa !96
  %41 = fsub float %38, %40
  %42 = load float, ptr %11, align 4, !tbaa !96
  %43 = getelementptr inbounds [2 x float], ptr %16, i64 0, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !96
  %45 = fsub float %42, %44
  %46 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %13, i64 0, i32 7, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !96
  %48 = fsub float %45, %47
  %49 = fmul float %48, %48
  %50 = tail call float @llvm.fmuladd.f32(float %41, float %41, float %49)
  %51 = tail call float @llvm.sqrt.f32(float %50)
  %52 = and i32 %26, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %35
  %55 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %16, i64 0, i32 1
  %56 = tail call fastcc float @dist_to_crns(ptr noundef nonnull %2, ptr noundef nonnull %16, ptr noundef nonnull %55) #11
  %57 = load i32, ptr %9, align 8, !tbaa !85
  br label %58

58:                                               ; preds = %54, %35
  %59 = phi i32 [ %57, %54 ], [ %26, %35 ]
  %60 = phi float [ %56, %54 ], [ 0x47EFFFFFE0000000, %35 ]
  %61 = and i32 %59, 2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %87, label %63

63:                                               ; preds = %58
  %64 = load i32, ptr %17, align 8, !tbaa !82
  %65 = and i32 %64, 32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %63
  %68 = and i32 %64, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = and i32 %59, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %13, i64 0, i32 14
  %75 = load i32, ptr %74, align 4, !tbaa !102
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %70, %73
  %79 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %13, i64 0, i32 15
  %80 = load i32, ptr %79, align 8, !tbaa !103
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %78, %73, %67
  %84 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %16, i64 0, i32 2
  %85 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %16, i64 0, i32 3
  %86 = tail call fastcc float @dist_to_rect(ptr noundef nonnull %2, ptr noundef nonnull %16, ptr noundef nonnull %84, ptr noundef nonnull %85) #11
  br label %87

87:                                               ; preds = %83, %78, %63, %58
  %88 = phi float [ %86, %83 ], [ 0x47EFFFFFE0000000, %78 ], [ 0x47EFFFFFE0000000, %63 ], [ 0x47EFFFFFE0000000, %58 ]
  %89 = tail call fastcc float @min_fff(float noundef %51, float noundef %60, float noundef %88) #11
  %90 = icmp eq ptr %14, null
  %91 = fcmp olt float %89, %15
  %92 = select i1 %90, i1 true, i1 %91
  %93 = select i1 %92, float %89, float %15
  %94 = select i1 %92, ptr %13, ptr %14
  br label %95

95:                                               ; preds = %87, %30, %12
  %96 = phi float [ %93, %87 ], [ %15, %30 ], [ %15, %12 ]
  %97 = phi ptr [ %94, %87 ], [ %14, %30 ], [ %14, %12 ]
  %98 = load ptr, ptr %13, align 8, !tbaa !81
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %12, !llvm.loop !116

100:                                              ; preds = %95, %4
  %101 = phi float [ 0.000000e+00, %4 ], [ %96, %95 ]
  %102 = phi ptr [ null, %4 ], [ %97, %95 ]
  store float %101, ptr %3, align 4, !tbaa !96
  ret ptr %102
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_nearest_plane_track(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !117 {
  %5 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %0) #9
  %6 = load ptr, ptr %1, align 8, !tbaa !81
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %4, %24
  %9 = phi ptr [ %27, %24 ], [ %6, %4 ]
  %10 = phi ptr [ %26, %24 ], [ null, %4 ]
  %11 = phi float [ %25, %24 ], [ 0.000000e+00, %4 ]
  %12 = tail call ptr @BKE_tracking_plane_marker_get(ptr noundef nonnull %9, i32 noundef %5) #9
  %13 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %9, i64 0, i32 8
  %14 = load i32, ptr %13, align 4, !tbaa !88
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %8
  %18 = tail call fastcc float @dist_to_crns_abs(ptr noundef %2, ptr noundef %12) #11
  %19 = icmp eq ptr %10, null
  %20 = fcmp olt float %18, %11
  %21 = select i1 %19, i1 true, i1 %20
  %22 = select i1 %21, float %18, float %11
  %23 = select i1 %21, ptr %9, ptr %10
  br label %24

24:                                               ; preds = %17, %8
  %25 = phi float [ %22, %17 ], [ %11, %8 ]
  %26 = phi ptr [ %23, %17 ], [ %10, %8 ]
  %27 = load ptr, ptr %9, align 8, !tbaa !81
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %8, !llvm.loop !118

29:                                               ; preds = %24, %4
  %30 = phi float [ 0.000000e+00, %4 ], [ %25, %24 ]
  %31 = phi ptr [ null, %4 ], [ %26, %24 ]
  store float %30, ptr %3, align 4, !tbaa !96
  ret ptr %31
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delect_all_plane_tracks(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !119 {
  %2 = load ptr, ptr %0, align 8, !tbaa !81
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %9, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %5, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !88
  %8 = and i32 %7, -2
  store i32 %8, ptr %6, align 4, !tbaa !88
  %9 = load ptr, ptr %5, align 8, !tbaa !81
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !llvm.loop !120

11:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @track_mouse_area(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !121 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %9 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %8) #9
  %10 = tail call ptr @BKE_tracking_marker_get(ptr noundef %2, i32 noundef %9) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  call void @ED_space_clip_get_size(ptr noundef %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  call void @BKE_tracking_marker_pattern_minmax(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %11 = load float, ptr %4, align 4, !tbaa !96
  %12 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %10, i64 0, i32 2
  %13 = load float, ptr %12, align 4, !tbaa !96
  %14 = fsub float %11, %13
  %15 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %10, i64 0, i32 3
  %16 = load float, ptr %15, align 4, !tbaa !96
  %17 = load float, ptr %5, align 4, !tbaa !96
  %18 = fsub float %16, %17
  %19 = call float @llvm.fabs.f32(float %11)
  %20 = call float @llvm.fabs.f32(float %17)
  %21 = call fastcc float @min_ffff(float noundef %14, float noundef %18, float noundef %19, float noundef %20) #11
  %22 = fmul float %21, 5.000000e-01
  %23 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !96
  %25 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %10, i64 0, i32 2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !96
  %27 = fsub float %24, %26
  %28 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %10, i64 0, i32 3, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !96
  %30 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !96
  %32 = fsub float %29, %31
  %33 = call float @llvm.fabs.f32(float %24)
  %34 = call float @llvm.fabs.f32(float %31)
  %35 = call fastcc float @min_ffff(float noundef %27, float noundef %32, float noundef %33, float noundef %34) #11
  %36 = fmul float %35, 5.000000e-01
  %37 = load i32, ptr %6, align 4, !tbaa !94
  %38 = sitofp i32 %37 to float
  %39 = fdiv float 2.000000e+00, %38
  %40 = call fastcc float @max_ff(float noundef %22, float noundef %39) #11
  %41 = load i32, ptr %7, align 4, !tbaa !94
  %42 = sitofp i32 %41 to float
  %43 = fdiv float 2.000000e+00, %42
  %44 = call fastcc float @max_ff(float noundef %36, float noundef %43) #11
  %45 = getelementptr inbounds %struct.SpaceClip, ptr %8, i64 0, i32 12
  %46 = load i32, ptr %45, align 8, !tbaa !85
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %3
  %50 = call fastcc i32 @mouse_on_rect(ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %15, float noundef %40, float noundef %44) #11, !range !97
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %93

52:                                               ; preds = %49, %3
  %53 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %10, i64 0, i32 5
  %54 = load i32, ptr %53, align 4, !tbaa !84
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %92

57:                                               ; preds = %52
  %58 = and i32 %46, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %10, i64 0, i32 1
  %62 = call fastcc i32 @mouse_on_crns(ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %61, float noundef %40, float noundef %44) #11, !range !97
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %93

64:                                               ; preds = %60
  %65 = load i32, ptr %6, align 4, !tbaa !94
  %66 = sitofp i32 %65 to float
  br label %67

67:                                               ; preds = %64, %57
  %68 = phi float [ %66, %64 ], [ %38, %57 ]
  %69 = fdiv float 1.200000e+01, %68
  %70 = load float, ptr %1, align 4, !tbaa !96
  %71 = load float, ptr %10, align 4, !tbaa !96
  %72 = fsub float %70, %71
  %73 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2, i64 0, i32 7
  %74 = load float, ptr %73, align 8, !tbaa !96
  %75 = fsub float %72, %74
  %76 = call float @llvm.fabs.f32(float %75)
  %77 = fcmp olt float %76, %69
  br i1 %77, label %78, label %92

78:                                               ; preds = %67
  %79 = load i32, ptr %7, align 4, !tbaa !94
  %80 = sitofp i32 %79 to float
  %81 = fdiv float 1.200000e+01, %80
  %82 = getelementptr inbounds float, ptr %1, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !96
  %84 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !96
  %86 = fsub float %83, %85
  %87 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %2, i64 0, i32 7, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !96
  %89 = fsub float %86, %88
  %90 = call float @llvm.fabs.f32(float %89)
  %91 = fcmp ugt float %90, %81
  br i1 %91, label %92, label %93

92:                                               ; preds = %67, %78, %52
  br label %93

93:                                               ; preds = %78, %60, %49, %92
  %94 = phi i32 [ -1, %92 ], [ 4, %49 ], [ 2, %60 ], [ 1, %78 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %94
}

; Function Attrs: optsize
declare void @BKE_tracking_track_deselect(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_track_select(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delect_all_tracks(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !122 {
  %2 = load ptr, ptr %0, align 8, !tbaa !81
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call void @BKE_tracking_track_flag_clear(ptr noundef nonnull %5, i32 noundef 7, i32 noundef 1) #9
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !123

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_tracking_dopesheet_tag_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_space_clip_get_clip_frame_number(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @dist_to_crns(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !124 {
  %4 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %5 = load <2 x float>, ptr %0, align 4, !tbaa !96
  %6 = load <2 x float>, ptr %1, align 4, !tbaa !96
  %7 = fsub <2 x float> %5, %6
  store <2 x float> %7, ptr %4, align 8, !tbaa !96
  %8 = getelementptr inbounds [2 x float], ptr %2, i64 1
  %9 = getelementptr inbounds [2 x float], ptr %2, i64 2
  %10 = getelementptr inbounds [2 x float], ptr %2, i64 3
  %11 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %4, ptr noundef %2, ptr noundef nonnull %8) #9
  %12 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef nonnull %9) #9
  %13 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %4, ptr noundef nonnull %9, ptr noundef nonnull %10) #9
  %14 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %4, ptr noundef nonnull %10, ptr noundef %2) #9
  %15 = call fastcc float @min_ffff(float noundef %11, float noundef %12, float noundef %13, float noundef %14) #11
  %16 = call float @sqrtf(float noundef %15) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret float %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @dist_to_rect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !125 {
  %5 = alloca [2 x float], align 8
  %6 = alloca [2 x float], align 8
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 8
  %9 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %10 = load <2 x float>, ptr %0, align 4, !tbaa !96
  %11 = load <2 x float>, ptr %1, align 4, !tbaa !96
  %12 = fsub <2 x float> %10, %11
  store <2 x float> %12, ptr %5, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  %13 = load <2 x float>, ptr %2, align 4, !tbaa !96
  store <2 x float> %13, ptr %6, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  %14 = getelementptr inbounds float, ptr %7, i64 1
  %15 = extractelement <2 x float> %13, i64 1
  store float %15, ptr %14, align 4, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  %16 = load <2 x float>, ptr %3, align 4, !tbaa !96
  %17 = extractelement <2 x float> %16, i64 0
  store float %17, ptr %7, align 4, !tbaa !96
  store <2 x float> %16, ptr %8, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  %18 = extractelement <2 x float> %13, i64 0
  store float %18, ptr %9, align 4, !tbaa !96
  %19 = getelementptr inbounds float, ptr %9, i64 1
  %20 = extractelement <2 x float> %16, i64 1
  store float %20, ptr %19, align 4, !tbaa !96
  %21 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  %22 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %8) #9
  %23 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %9) #9
  %24 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef nonnull %6) #9
  %25 = call fastcc float @min_ffff(float noundef %21, float noundef %22, float noundef %23, float noundef %24) #11
  %26 = call float @sqrtf(float noundef %25) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret float %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_fff(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #6 !PGOFuncName !126 {
  %4 = tail call fastcc float @min_ff(float noundef %0, float noundef %1) #11
  %5 = tail call fastcc float @min_ff(float noundef %4, float noundef %2) #11
  ret float %5
}

; Function Attrs: optsize
declare float @dist_squared_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ffff(float noundef %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #6 !PGOFuncName !127 {
  %5 = tail call fastcc float @min_fff(float noundef %0, float noundef %1, float noundef %2) #11
  %6 = tail call fastcc float @min_ff(float noundef %5, float noundef %3) #11
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !128 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare ptr @BKE_tracking_plane_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @dist_to_crns_abs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !129 {
  %3 = getelementptr inbounds [2 x float], ptr %1, i64 1
  %4 = getelementptr inbounds [2 x float], ptr %1, i64 2
  %5 = getelementptr inbounds [2 x float], ptr %1, i64 3
  %6 = tail call float @dist_squared_to_line_segment_v2(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #9
  %7 = tail call float @dist_squared_to_line_segment_v2(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %8 = tail call float @dist_squared_to_line_segment_v2(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %9 = tail call float @dist_squared_to_line_segment_v2(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1) #9
  %10 = tail call fastcc float @min_ffff(float noundef %6, float noundef %7, float noundef %8, float noundef %9) #11
  %11 = tail call float @sqrtf(float noundef %10) #9
  ret float %11
}

; Function Attrs: optsize
declare void @ED_space_clip_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_marker_pattern_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !130 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @mouse_on_rect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, float noundef %4, float noundef %5) unnamed_addr #7 !PGOFuncName !131 {
  %7 = load float, ptr %1, align 4, !tbaa !96
  %8 = load float, ptr %2, align 4, !tbaa !96
  %9 = fadd float %7, %8
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !96
  %12 = getelementptr inbounds float, ptr %2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !96
  %14 = fadd float %11, %13
  %15 = load float, ptr %3, align 4, !tbaa !96
  %16 = fadd float %7, %15
  %17 = tail call fastcc i32 @mouse_on_side(ptr noundef %0, float noundef %9, float noundef %14, float noundef %16, float noundef %14, float noundef %4, float noundef %5) #11, !range !97
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %6
  %20 = getelementptr inbounds float, ptr %3, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !96
  %22 = fadd float %11, %21
  %23 = tail call fastcc i32 @mouse_on_side(ptr noundef %0, float noundef %9, float noundef %14, float noundef %9, float noundef %22, float noundef %4, float noundef %5) #11, !range !97
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = tail call fastcc i32 @mouse_on_side(ptr noundef %0, float noundef %9, float noundef %22, float noundef %16, float noundef %22, float noundef %4, float noundef %5) #11, !range !97
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = tail call fastcc i32 @mouse_on_side(ptr noundef %0, float noundef %16, float noundef %14, float noundef %16, float noundef %22, float noundef %4, float noundef %5) #11, !range !97
  br label %30

30:                                               ; preds = %28, %25, %19, %6
  %31 = phi i32 [ 1, %25 ], [ 1, %19 ], [ 1, %6 ], [ %29, %28 ]
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @mouse_on_crns(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, float noundef %3, float noundef %4) unnamed_addr #0 !PGOFuncName !132 {
  %6 = tail call fastcc float @dist_to_crns(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  %7 = tail call fastcc float @max_ff(float noundef %3, float noundef %4) #11
  %8 = fcmp olt float %6, %7
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @mouse_on_side(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) unnamed_addr #7 !PGOFuncName !133 {
  %8 = fcmp ogt float %1, %3
  %9 = select i1 %8, float %1, float %3
  %10 = select i1 %8, float %3, float %1
  %11 = fcmp ogt float %2, %4
  %12 = select i1 %11, float %2, float %4
  %13 = load float, ptr %0, align 4, !tbaa !96
  %14 = fsub float %10, %5
  %15 = fcmp ult float %13, %14
  %16 = fadd float %9, %5
  %17 = fcmp ugt float %13, %16
  %18 = or i1 %15, %17
  br i1 %18, label %29, label %19

19:                                               ; preds = %7
  %20 = select i1 %11, float %4, float %2
  %21 = getelementptr inbounds float, ptr %0, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !96
  %23 = fsub float %20, %6
  %24 = fcmp ult float %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = fadd float %12, %6
  %27 = fcmp ole float %22, %26
  %28 = zext i1 %27 to i32
  br label %29

29:                                               ; preds = %19, %25, %7
  %30 = phi i32 [ 0, %7 ], [ 0, %19 ], [ %28, %25 ]
  ret i32 %30
}

; Function Attrs: optsize
declare void @BKE_tracking_track_flag_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @tracking_marker_check_slide(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_clip_mouse_pos(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_operator_properties_border_to_rcti(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_clip_point_stable_pos(ptr noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BLI_rctf_isect_pt_v(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_track_flag_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_gesture_lasso_path_to_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_lasso_select_marker(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !134 {
  %5 = alloca %struct.rcti, align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %9 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %10 = tail call ptr @ED_space_clip_get_clip(ptr noundef %8) #9
  %11 = getelementptr inbounds %struct.MovieClip, ptr %10, i64 0, i32 11
  %12 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %11) #9
  %13 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  %14 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %8) #9
  %15 = sext i16 %2 to i32
  call void @BLI_lasso_boundbox(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %15) #9
  %16 = load ptr, ptr %12, align 8, !tbaa !81
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.SpaceClip, ptr %8, i64 0, i32 12
  %20 = getelementptr inbounds %struct.SpaceClip, ptr %8, i64 0, i32 10
  %21 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %22 = icmp eq i8 %3, 0
  br label %31

23:                                               ; preds = %71, %4
  %24 = phi i8 [ 0, %4 ], [ %72, %71 ]
  %25 = load ptr, ptr %13, align 8, !tbaa !81
  %26 = icmp eq ptr %25, null
  br i1 %26, label %111, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %29 = icmp ne i8 %3, 0
  %30 = zext i1 %29 to i32
  br label %75

31:                                               ; preds = %18, %71
  %32 = phi ptr [ %16, %18 ], [ %73, %71 ]
  %33 = phi i8 [ 0, %18 ], [ %72, %71 ]
  %34 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %32, i64 0, i32 13
  %35 = load i32, ptr %34, align 8, !tbaa !82
  %36 = and i32 %35, 32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %31
  %39 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %32, i32 noundef %14) #9
  %40 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %39, i64 0, i32 5
  %41 = load i32, ptr %40, align 4, !tbaa !84
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %38
  %45 = load i32, ptr %19, align 8, !tbaa !85
  %46 = and i32 %45, 128
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %20, align 8, !tbaa !67
  %50 = getelementptr inbounds %struct.MovieClip, ptr %49, i64 0, i32 11, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !53
  %52 = icmp eq ptr %51, %32
  br i1 %52, label %53, label %71

53:                                               ; preds = %48, %44, %38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @ED_clip_point_stable_pos__reverse(ptr noundef %8, ptr noundef %9, ptr noundef nonnull %39, ptr noundef nonnull %6) #9
  %54 = load float, ptr %6, align 4, !tbaa !96
  %55 = fptosi float %54 to i32
  %56 = load float, ptr %21, align 4, !tbaa !96
  %57 = fptosi float %56 to i32
  %58 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %5, i32 noundef %55, i32 noundef %57) #9
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %53
  %61 = load float, ptr %6, align 4, !tbaa !96
  %62 = fptosi float %61 to i32
  %63 = load float, ptr %21, align 4, !tbaa !96
  %64 = fptosi float %63 to i32
  %65 = call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %1, i32 noundef %15, i32 noundef %62, i32 noundef %64, i32 noundef 12000) #9
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  br i1 %22, label %69, label %68

68:                                               ; preds = %67
  call void @BKE_tracking_track_flag_set(ptr noundef nonnull %32, i32 noundef 7, i32 noundef 1) #9
  br label %70

69:                                               ; preds = %67
  call void @BKE_tracking_track_flag_clear(ptr noundef nonnull %32, i32 noundef 7, i32 noundef 1) #9
  br label %70

70:                                               ; preds = %68, %69, %60, %53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  br label %71

71:                                               ; preds = %48, %70, %31
  %72 = phi i8 [ %33, %31 ], [ 1, %70 ], [ %33, %48 ]
  %73 = load ptr, ptr %32, align 8, !tbaa !81
  %74 = icmp eq ptr %73, null
  br i1 %74, label %23, label %31, !llvm.loop !135

75:                                               ; preds = %27, %107
  %76 = phi ptr [ %25, %27 ], [ %109, %107 ]
  %77 = phi i8 [ %24, %27 ], [ %108, %107 ]
  %78 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %76, i64 0, i32 8
  %79 = load i32, ptr %78, align 4, !tbaa !88
  %80 = and i32 %79, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %107

82:                                               ; preds = %75
  %83 = call ptr @BKE_tracking_plane_marker_get(ptr noundef nonnull %76, i32 noundef %14) #9
  br label %84

84:                                               ; preds = %82, %104
  %85 = phi i64 [ 0, %82 ], [ %105, %104 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  %86 = getelementptr inbounds [4 x [2 x float]], ptr %83, i64 0, i64 %85
  call void @ED_clip_point_stable_pos__reverse(ptr noundef %8, ptr noundef %9, ptr noundef %86, ptr noundef nonnull %7) #9
  %87 = load float, ptr %7, align 4, !tbaa !96
  %88 = fptosi float %87 to i32
  %89 = load float, ptr %28, align 4, !tbaa !96
  %90 = fptosi float %89 to i32
  %91 = call zeroext i8 @BLI_rcti_isect_pt(ptr noundef nonnull %5, i32 noundef %88, i32 noundef %90) #9
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %84
  %94 = load float, ptr %7, align 4, !tbaa !96
  %95 = fptosi float %94 to i32
  %96 = load float, ptr %28, align 4, !tbaa !96
  %97 = fptosi float %96 to i32
  %98 = call zeroext i8 @BLI_lasso_is_point_inside(ptr noundef %1, i32 noundef %15, i32 noundef %95, i32 noundef %97, i32 noundef 12000) #9
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %93
  %101 = load i32, ptr %78, align 4, !tbaa !88
  %102 = and i32 %101, -2
  %103 = or disjoint i32 %102, %30
  store i32 %103, ptr %78, align 4, !tbaa !88
  br label %104

104:                                              ; preds = %100, %93, %84
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  %105 = add nuw nsw i64 %85, 1
  %106 = icmp eq i64 %105, 4
  br i1 %106, label %107, label %84, !llvm.loop !136

107:                                              ; preds = %104, %75
  %108 = phi i8 [ %77, %75 ], [ 1, %104 ]
  %109 = load ptr, ptr %76, align 8, !tbaa !81
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %75, !llvm.loop !137

111:                                              ; preds = %107, %23
  %112 = phi i8 [ %24, %23 ], [ %108, %107 ]
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %11) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef null) #9
  br label %115

115:                                              ; preds = %114, %111
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret void
}

; Function Attrs: optsize
declare void @BLI_lasso_boundbox(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_clip_point_stable_pos__reverse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BLI_rcti_isect_pt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BLI_lasso_is_point_inside(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_space_clip_get_zoom(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @marker_inside_ellipse(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !PGOFuncName !138 {
  %4 = tail call fastcc i32 @point_inside_ellipse(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11, !range !97
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @point_inside_ellipse(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 !PGOFuncName !139 {
  %4 = load float, ptr %0, align 4, !tbaa !96
  %5 = load float, ptr %1, align 4, !tbaa !96
  %6 = fsub float %4, %5
  %7 = load float, ptr %2, align 4, !tbaa !96
  %8 = fmul float %6, %7
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !96
  %11 = getelementptr inbounds float, ptr %1, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !96
  %13 = fsub float %10, %12
  %14 = getelementptr inbounds float, ptr %2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !96
  %16 = fmul float %13, %15
  %17 = fmul float %16, %16
  %18 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %17)
  %19 = fcmp olt float %18, 1.000000e+00
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @equals_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !140 {
  %3 = load float, ptr %0, align 4, !tbaa !96
  %4 = load float, ptr %1, align 4, !tbaa !96
  %5 = fcmp oeq float %3, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !96
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !96
  %11 = fcmp oeq float %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !96
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !96
  %17 = fcmp oeq float %14, %16
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %12, %6, %2
  %20 = phi i8 [ 0, %6 ], [ 0, %2 ], [ %18, %12 ]
  ret i8 %20
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { optsize }

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
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 48}
!46 = !{!35, !36, i64 72}
!47 = !{!35, !41, i64 184}
!48 = !{!35, !36, i64 88}
!49 = !{!"tracking_select.c:select_exec"}
!50 = !{!51, !36, i64 112}
!51 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!52 = !{!"tracking_select.c:select_invoke"}
!53 = !{!54, !36, i64 1432}
!54 = !{!"MovieClip", !55, i64 0, !36, i64 120, !37, i64 128, !56, i64 1152, !56, i64 1156, !37, i64 1160, !57, i64 1168, !57, i64 1172, !36, i64 1176, !36, i64 1184, !36, i64 1192, !58, i64 1200, !36, i64 1528, !64, i64 1536, !56, i64 2312, !56, i64 2316, !56, i64 2320, !56, i64 2324, !65, i64 2328}
!55 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !56, i64 100, !56, i64 104, !56, i64 108, !36, i64 112}
!56 = !{!"int", !37, i64 0}
!57 = !{!"float", !37, i64 0}
!58 = !{!"MovieTracking", !59, i64 0, !60, i64 72, !39, i64 128, !39, i64 144, !61, i64 160, !62, i64 184, !36, i64 232, !36, i64 240, !39, i64 248, !56, i64 264, !56, i64 268, !36, i64 272, !63, i64 280}
!59 = !{!"MovieTrackingSettings", !56, i64 0, !41, i64 4, !41, i64 6, !57, i64 8, !41, i64 12, !41, i64 14, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !57, i64 24, !41, i64 28, !41, i64 30, !56, i64 32, !56, i64 36, !56, i64 40, !41, i64 44, !41, i64 46, !57, i64 48, !56, i64 52, !56, i64 56, !57, i64 60, !57, i64 64, !56, i64 68}
!60 = !{!"MovieTrackingCamera", !36, i64 0, !41, i64 8, !41, i64 10, !57, i64 12, !57, i64 16, !57, i64 20, !41, i64 24, !41, i64 26, !37, i64 28, !57, i64 36, !57, i64 40, !57, i64 44, !57, i64 48, !57, i64 52}
!61 = !{!"MovieTrackingReconstruction", !56, i64 0, !57, i64 4, !56, i64 8, !56, i64 12, !36, i64 16}
!62 = !{!"MovieTrackingStabilization", !56, i64 0, !56, i64 4, !56, i64 8, !57, i64 12, !36, i64 16, !57, i64 24, !57, i64 28, !57, i64 32, !56, i64 36, !56, i64 40, !57, i64 44}
!63 = !{!"MovieTrackingDopesheet", !56, i64 0, !41, i64 4, !41, i64 6, !39, i64 8, !39, i64 24, !56, i64 40, !56, i64 44}
!64 = !{!"MovieClipProxy", !37, i64 0, !41, i64 768, !41, i64 770, !41, i64 772, !41, i64 774}
!65 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!66 = !{!"tracking_select.c:select_poll"}
!67 = !{!68, !36, i64 64}
!68 = !{!"SpaceClip", !36, i64 0, !36, i64 8, !39, i64 16, !56, i64 32, !57, i64 36, !57, i64 40, !57, i64 44, !57, i64 48, !57, i64 52, !69, i64 56, !36, i64 64, !70, i64 72, !56, i64 208, !41, i64 212, !41, i64 214, !56, i64 216, !37, i64 220, !57, i64 228, !57, i64 232, !56, i64 236, !37, i64 240, !37, i64 304, !56, i64 368, !41, i64 372, !41, i64 374, !56, i64 376, !56, i64 380, !37, i64 384, !72, i64 392}
!69 = !{!"MovieClipUser", !56, i64 0, !41, i64 4, !41, i64 6}
!70 = !{!"MovieClipScopes", !41, i64 0, !41, i64 2, !56, i64 4, !56, i64 8, !56, i64 12, !71, i64 16, !36, i64 80, !36, i64 88, !37, i64 96, !41, i64 104, !41, i64 106, !56, i64 108, !36, i64 112, !36, i64 120, !37, i64 128}
!71 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !56, i64 56, !56, i64 60}
!72 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!73 = !{!68, !41, i64 214}
!74 = !{!35, !36, i64 64}
!75 = !{!"tracking_select.c:border_select_exec"}
!76 = !{!77, !56, i64 0}
!77 = !{!"rcti", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12}
!78 = !{!77, !56, i64 8}
!79 = !{!77, !56, i64 4}
!80 = !{!77, !56, i64 12}
!81 = !{!36, !36, i64 0}
!82 = !{!83, !56, i64 152}
!83 = !{!"MovieTrackingTrack", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !56, i64 120, !56, i64 124, !36, i64 128, !37, i64 136, !57, i64 148, !56, i64 152, !56, i64 156, !56, i64 160, !37, i64 164, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !56, i64 184, !57, i64 188, !36, i64 192, !57, i64 200, !57, i64 204}
!84 = !{!71, !56, i64 60}
!85 = !{!68, !56, i64 208}
!86 = distinct !{!86, !87}
!87 = !{!"llvm.loop.mustprogress"}
!88 = !{!89, !56, i64 108}
!89 = !{!"MovieTrackingPlaneTrack", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !56, i64 88, !56, i64 92, !36, i64 96, !56, i64 104, !56, i64 108, !36, i64 112, !57, i64 120, !56, i64 124}
!90 = distinct !{!90, !87}
!91 = distinct !{!91, !87}
!92 = !{!35, !36, i64 56}
!93 = !{!"tracking_select.c:clip_lasso_select_exec"}
!94 = !{!56, !56, i64 0}
!95 = !{!"tracking_select.c:circle_select_exec"}
!96 = !{!57, !57, i64 0}
!97 = !{i32 0, i32 2}
!98 = distinct !{!98, !87}
!99 = distinct !{!99, !87}
!100 = distinct !{!100, !87}
!101 = !{!"tracking_select.c:select_all_exec"}
!102 = !{!83, !56, i64 156}
!103 = !{!83, !56, i64 160}
!104 = distinct !{!104, !87}
!105 = distinct !{!105, !87}
!106 = distinct !{!106, !87}
!107 = distinct !{!107, !87}
!108 = !{!"tracking_select.c:select_groped_exec"}
!109 = !{!71, !56, i64 56}
!110 = !{i8 0, i8 2}
!111 = distinct !{!111, !87}
!112 = !{!"tracking_select.c:mouse_select"}
!113 = !{i32 -1, i32 5}
!114 = !{!54, !36, i64 1440}
!115 = !{!"tracking_select.c:find_nearest_track"}
!116 = distinct !{!116, !87}
!117 = !{!"tracking_select.c:find_nearest_plane_track"}
!118 = distinct !{!118, !87}
!119 = !{!"tracking_select.c:delect_all_plane_tracks"}
!120 = distinct !{!120, !87}
!121 = !{!"tracking_select.c:track_mouse_area"}
!122 = !{!"tracking_select.c:delect_all_tracks"}
!123 = distinct !{!123, !87}
!124 = !{!"tracking_select.c:dist_to_crns"}
!125 = !{!"tracking_select.c:dist_to_rect"}
!126 = !{!"tracking_select.c:min_fff"}
!127 = !{!"tracking_select.c:min_ffff"}
!128 = !{!"tracking_select.c:min_ff"}
!129 = !{!"tracking_select.c:dist_to_crns_abs"}
!130 = !{!"tracking_select.c:max_ff"}
!131 = !{!"tracking_select.c:mouse_on_rect"}
!132 = !{!"tracking_select.c:mouse_on_crns"}
!133 = !{!"tracking_select.c:mouse_on_side"}
!134 = !{!"tracking_select.c:do_lasso_select_marker"}
!135 = distinct !{!135, !87}
!136 = distinct !{!136, !87}
!137 = distinct !{!137, !87}
!138 = !{!"tracking_select.c:marker_inside_ellipse"}
!139 = !{!"tracking_select.c:point_inside_ellipse"}
!140 = !{!"tracking_select.c:equals_v3v3"}
