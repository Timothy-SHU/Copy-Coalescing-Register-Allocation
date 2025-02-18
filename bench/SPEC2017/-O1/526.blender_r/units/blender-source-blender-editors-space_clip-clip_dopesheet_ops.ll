; ModuleID = 'blender/source/blender/editors/space_clip/clip_dopesheet_ops.c'
source_filename = "blender/source/blender/editors/space_clip/clip_dopesheet_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
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
%struct.MovieTrackingDopesheetChannel = type { ptr, ptr, ptr, i32, [64 x i8], i32, ptr, i32, i32 }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }

@.str = private unnamed_addr constant [15 x i8] c"Select Channel\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Select movie tracking channel\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"CLIP_OT_dopesheet_select_channel\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Mouse location to select channel\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Extend\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"Extend selection rather than clearing the existing selection\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"View All\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Reset viewable area to show full keyframe range\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"CLIP_OT_dopesheet_view_all\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_dopesheet_select_channel(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @dopesheet_select_channel_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @dopesheet_select_channel_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @dopesheet_select_channel_poll, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_float_vector(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, float noundef -1.000000e+02, float noundef 1.000000e+02) #6
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @dopesheet_select_channel_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !49
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !49
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %6, float noundef %9, float noundef %12, ptr noundef nonnull %4, ptr noundef nonnull %13) #6
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  call void @RNA_float_set_array(ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #6
  %16 = call i32 @dopesheet_select_channel_exec(ptr noundef %0, ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @dopesheet_select_channel_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x float], align 4
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #6
  %5 = tail call ptr @ED_space_clip_get_clip(ptr noundef %4) #6
  %6 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11
  %7 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %6) #6
  %8 = tail call ptr @BKE_tracking_object_get_tracks(ptr noundef nonnull %6, ptr noundef %7) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.6) #6
  %12 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11, i32 12, i32 2
  %13 = load i16, ptr %12, align 2, !tbaa !53
  %14 = load ptr, ptr %9, align 8, !tbaa !51
  call void @RNA_float_get_array(ptr noundef %14, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #6
  %15 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !55
  %17 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !57
  %18 = sitofp i16 %17 to float
  %19 = fmul float %18, 0x3FD99999A0000000
  %20 = call float @llvm.fmuladd.f32(float %18, float 0xBFE99999A0000000, float %19)
  %21 = fsub float %16, %20
  %22 = fneg float %21
  %23 = fmul float %18, 0x3FB99999A0000000
  %24 = call float @llvm.fmuladd.f32(float %18, float 0x3FE99999A0000000, float %23)
  %25 = fdiv float %22, %24
  %26 = fptosi float %25 to i32
  %27 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11, i32 12, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !61
  %29 = icmp eq ptr %28, null
  br i1 %29, label %63, label %30

30:                                               ; preds = %2
  %31 = trunc i32 %11 to i8
  %32 = icmp eq i8 %31, 0
  %33 = icmp eq i8 %31, 0
  %34 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11, i32 6
  %35 = and i16 %13, 2
  %36 = icmp eq i16 %35, 0
  br label %37

37:                                               ; preds = %30, %59
  %38 = phi ptr [ %28, %30 ], [ %61, %59 ]
  %39 = phi i32 [ 0, %30 ], [ %60, %59 ]
  %40 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %38, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !62
  %42 = icmp eq i32 %39, %26
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %41, i64 0, i32 13
  %45 = load i32, ptr %44, align 8, !tbaa !64
  %46 = or i32 %45, 1024
  %47 = xor i32 %45, 1024
  %48 = select i1 %33, i32 %46, i32 %47
  store i32 %48, ptr %44, align 8, !tbaa !64
  %49 = and i32 %48, 1024
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  store ptr %41, ptr %34, align 8, !tbaa !66
  call void @BKE_tracking_track_select(ptr noundef %8, ptr noundef %41, i32 noundef 7, i8 noundef zeroext 1) #6
  br label %59

52:                                               ; preds = %43
  br i1 %36, label %53, label %59

53:                                               ; preds = %52
  call void @BKE_tracking_track_deselect(ptr noundef %41, i32 noundef 7) #6
  br label %59

54:                                               ; preds = %37
  br i1 %32, label %55, label %59

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %41, i64 0, i32 13
  %57 = load i32, ptr %56, align 8, !tbaa !64
  %58 = and i32 %57, -1025
  store i32 %58, ptr %56, align 8, !tbaa !64
  br label %59

59:                                               ; preds = %54, %55, %51, %53, %52
  %60 = add nuw nsw i32 %39, 1
  %61 = load ptr, ptr %38, align 8, !tbaa !61
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %37, !llvm.loop !72

63:                                               ; preds = %59, %2
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @dopesheet_select_channel_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 14
  %10 = load i16, ptr %9, align 2, !tbaa !81
  %11 = icmp eq i16 %10, 2
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %1, %4, %8
  %14 = phi i32 [ %12, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %14
}

declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_dopesheet_view_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @dopesheet_view_all_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @space_clip_dopesheet_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @dopesheet_view_all_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #6
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #6
  %5 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #6
  %6 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11, i32 12, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %23, %9 ], [ %7, %2 ]
  %11 = phi i32 [ %22, %9 ], [ -2147483648, %2 ]
  %12 = phi i32 [ %16, %9 ], [ 2147483647, %2 ]
  %13 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %10, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !82
  %15 = load i32, ptr %14, align 4, !tbaa !49
  %16 = tail call i32 @llvm.smin.i32(i32 %12, i32 %15)
  %17 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %10, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !83
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %14, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !49
  %22 = tail call i32 @llvm.smax.i32(i32 %21, i32 %11)
  %23 = load ptr, ptr %10, align 8, !tbaa !61
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %9, !llvm.loop !84

25:                                               ; preds = %9, %2
  %26 = phi i32 [ 2147483647, %2 ], [ %16, %9 ]
  %27 = phi i32 [ -2147483648, %2 ], [ %22, %9 ]
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = sitofp i32 %26 to float
  %31 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1
  store float %30, ptr %31, align 8, !tbaa !85
  %32 = sitofp i32 %27 to float
  %33 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1, i32 1
  store float %32, ptr %33, align 4, !tbaa !89
  %34 = fsub float %32, %30
  %35 = fmul float %34, 0x3F847AE140000000
  %36 = fsub float %30, %35
  store float %36, ptr %31, align 8, !tbaa !85
  %37 = fadd float %35, %32
  store float %37, ptr %33, align 4, !tbaa !89
  tail call void @ED_region_tag_redraw(ptr noundef %4) #6
  br label %38

38:                                               ; preds = %29, %25
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @space_clip_dopesheet_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_space_clip_tracking_poll(ptr noundef %0) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 14
  %7 = load i16, ptr %6, align 2, !tbaa !81
  %8 = icmp eq i16 %7, 2
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #6
  %11 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 8
  %12 = load i16, ptr %11, align 2, !tbaa !90
  %13 = icmp eq i16 %12, 7
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %4, %9
  %16 = phi i32 [ %14, %9 ], [ undef, %4 ]
  br i1 %8, label %18, label %17

17:                                               ; preds = %15, %1
  br label %18

18:                                               ; preds = %15, %17
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  ret i32 %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #1

declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_object_get_active(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_object_get_tracks(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare void @BKE_tracking_track_select(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @BKE_tracking_track_deselect(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #1

declare i32 @ED_space_clip_tracking_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 48}
!45 = !{!35, !36, i64 32}
!46 = !{!35, !36, i64 72}
!47 = !{!35, !41, i64 184}
!48 = !{!35, !36, i64 88}
!49 = !{!50, !50, i64 0}
!50 = !{!"int", !37, i64 0}
!51 = !{!52, !36, i64 112}
!52 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!53 = !{!54, !41, i64 6}
!54 = !{!"MovieTrackingDopesheet", !50, i64 0, !41, i64 4, !41, i64 6, !39, i64 8, !39, i64 24, !50, i64 40, !50, i64 44}
!55 = !{!56, !56, i64 0}
!56 = !{!"float", !37, i64 0}
!57 = !{!58, !41, i64 8948}
!58 = !{!"UserDef", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !50, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !50, i64 8484, !50, i64 8488, !50, i64 8492, !41, i64 8496, !41, i64 8498, !50, i64 8500, !50, i64 8504, !50, i64 8508, !50, i64 8512, !50, i64 8516, !50, i64 8520, !50, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !50, i64 8912, !50, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !56, i64 8956, !56, i64 8960, !50, i64 8964, !41, i64 8968, !41, i64 8970, !56, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !59, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !50, i64 10896, !50, i64 10900, !56, i64 10904, !56, i64 10908, !50, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !60, i64 10928}
!59 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!60 = !{!"WalkNavigation", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !41, i64 24, !37, i64 26}
!61 = !{!36, !36, i64 0}
!62 = !{!63, !36, i64 16}
!63 = !{!"MovieTrackingDopesheetChannel", !36, i64 0, !36, i64 8, !36, i64 16, !50, i64 24, !37, i64 28, !50, i64 92, !36, i64 96, !50, i64 104, !50, i64 108}
!64 = !{!65, !50, i64 152}
!65 = !{!"MovieTrackingTrack", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !50, i64 120, !50, i64 124, !36, i64 128, !37, i64 136, !56, i64 148, !50, i64 152, !50, i64 156, !50, i64 160, !37, i64 164, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !50, i64 184, !56, i64 188, !36, i64 192, !56, i64 200, !56, i64 204}
!66 = !{!67, !36, i64 232}
!67 = !{!"MovieTracking", !68, i64 0, !69, i64 72, !39, i64 128, !39, i64 144, !70, i64 160, !71, i64 184, !36, i64 232, !36, i64 240, !39, i64 248, !50, i64 264, !50, i64 268, !36, i64 272, !54, i64 280}
!68 = !{!"MovieTrackingSettings", !50, i64 0, !41, i64 4, !41, i64 6, !56, i64 8, !41, i64 12, !41, i64 14, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !56, i64 24, !41, i64 28, !41, i64 30, !50, i64 32, !50, i64 36, !50, i64 40, !41, i64 44, !41, i64 46, !56, i64 48, !50, i64 52, !50, i64 56, !56, i64 60, !56, i64 64, !50, i64 68}
!69 = !{!"MovieTrackingCamera", !36, i64 0, !41, i64 8, !41, i64 10, !56, i64 12, !56, i64 16, !56, i64 20, !41, i64 24, !41, i64 26, !37, i64 28, !56, i64 36, !56, i64 40, !56, i64 44, !56, i64 48, !56, i64 52}
!70 = !{!"MovieTrackingReconstruction", !50, i64 0, !56, i64 4, !50, i64 8, !50, i64 12, !36, i64 16}
!71 = !{!"MovieTrackingStabilization", !50, i64 0, !50, i64 4, !50, i64 8, !56, i64 12, !36, i64 16, !56, i64 24, !56, i64 28, !56, i64 32, !50, i64 36, !50, i64 40, !56, i64 44}
!72 = distinct !{!72, !73, !74}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"llvm.loop.unroll.disable"}
!75 = !{!76, !36, i64 64}
!76 = !{!"SpaceClip", !36, i64 0, !36, i64 8, !39, i64 16, !50, i64 32, !56, i64 36, !56, i64 40, !56, i64 44, !56, i64 48, !56, i64 52, !77, i64 56, !36, i64 64, !78, i64 72, !50, i64 208, !41, i64 212, !41, i64 214, !50, i64 216, !37, i64 220, !56, i64 228, !56, i64 232, !50, i64 236, !37, i64 240, !37, i64 304, !50, i64 368, !41, i64 372, !41, i64 374, !50, i64 376, !50, i64 380, !37, i64 384, !80, i64 392}
!77 = !{!"MovieClipUser", !50, i64 0, !41, i64 4, !41, i64 6}
!78 = !{!"MovieClipScopes", !41, i64 0, !41, i64 2, !50, i64 4, !50, i64 8, !50, i64 12, !79, i64 16, !36, i64 80, !36, i64 88, !37, i64 96, !41, i64 104, !41, i64 106, !50, i64 108, !36, i64 112, !36, i64 120, !37, i64 128}
!79 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !50, i64 56, !50, i64 60}
!80 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!81 = !{!76, !41, i64 214}
!82 = !{!63, !36, i64 96}
!83 = !{!63, !50, i64 92}
!84 = distinct !{!84, !73, !74}
!85 = !{!86, !56, i64 16}
!86 = !{!"View2D", !87, i64 0, !87, i64 16, !88, i64 32, !88, i64 48, !88, i64 64, !37, i64 80, !37, i64 88, !56, i64 96, !56, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !50, i64 136, !50, i64 140, !36, i64 144, !36, i64 152}
!87 = !{!"rctf", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12}
!88 = !{!"rcti", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!89 = !{!86, !56, i64 20}
!90 = !{!91, !41, i64 214}
!91 = !{!"ARegion", !36, i64 0, !36, i64 8, !86, i64 16, !88, i64 176, !88, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !56, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
