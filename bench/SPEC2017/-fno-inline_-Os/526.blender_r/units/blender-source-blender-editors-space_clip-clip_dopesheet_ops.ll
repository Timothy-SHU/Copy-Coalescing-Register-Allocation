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

; Function Attrs: noinline nounwind optsize uwtable
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
  %10 = tail call ptr @RNA_def_float_vector(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, float noundef -1.000000e+02, float noundef 1.000000e+02) #8
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @dopesheet_select_channel_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !49 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !50
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !50
  %12 = sitofp i32 %11 to float
  %13 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @UI_view2d_region_to_view(ptr noundef nonnull %6, float noundef %9, float noundef %12, ptr noundef nonnull %4, ptr noundef nonnull %13) #8
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  call void @RNA_float_set_array(ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #8
  %16 = call i32 @dopesheet_select_channel_exec(ptr noundef %0, ptr noundef %1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @dopesheet_select_channel_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !54 {
  %3 = alloca [2 x float], align 4
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %5 = tail call ptr @ED_space_clip_get_clip(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11
  %7 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %6) #8
  %8 = tail call ptr @BKE_tracking_object_get_tracks(ptr noundef nonnull %6, ptr noundef %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.6) #8
  %12 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11, i32 12, i32 2
  %13 = load i16, ptr %12, align 2, !tbaa !55
  %14 = load ptr, ptr %9, align 8, !tbaa !52
  call void @RNA_float_get_array(ptr noundef %14, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #8
  %15 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !57
  %17 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !59
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
  %28 = load ptr, ptr %27, align 8, !tbaa !63
  %29 = icmp eq ptr %28, null
  br i1 %29, label %62, label %30

30:                                               ; preds = %2
  %31 = and i32 %11, 255
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11, i32 6
  %34 = and i16 %13, 2
  %35 = icmp eq i16 %34, 0
  br label %36

36:                                               ; preds = %30, %58
  %37 = phi ptr [ %28, %30 ], [ %60, %58 ]
  %38 = phi i32 [ 0, %30 ], [ %59, %58 ]
  %39 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %37, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !64
  %41 = icmp eq i32 %38, %26
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %40, i64 0, i32 13
  %44 = load i32, ptr %43, align 8, !tbaa !66
  %45 = or i32 %44, 1024
  %46 = xor i32 %44, 1024
  %47 = select i1 %32, i32 %45, i32 %46
  store i32 %47, ptr %43, align 8, !tbaa !66
  %48 = and i32 %47, 1024
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  store ptr %40, ptr %33, align 8, !tbaa !68
  call void @BKE_tracking_track_select(ptr noundef %8, ptr noundef nonnull %40, i32 noundef 7, i8 noundef zeroext 1) #8
  br label %58

51:                                               ; preds = %42
  br i1 %35, label %52, label %58

52:                                               ; preds = %51
  call void @BKE_tracking_track_deselect(ptr noundef nonnull %40, i32 noundef 7) #8
  br label %58

53:                                               ; preds = %36
  br i1 %32, label %54, label %58

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %40, i64 0, i32 13
  %56 = load i32, ptr %55, align 8, !tbaa !66
  %57 = and i32 %56, -1025
  store i32 %57, ptr %55, align 8, !tbaa !66
  br label %58

58:                                               ; preds = %53, %54, %50, %52, %51
  %59 = add nuw nsw i32 %38, 1
  %60 = load ptr, ptr %37, align 8, !tbaa !63
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %36, !llvm.loop !74

62:                                               ; preds = %58, %2
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @dopesheet_select_channel_poll(ptr noundef %0) #0 !PGOFuncName !76 {
  %2 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 14
  %10 = load i16, ptr %9, align 2, !tbaa !83
  %11 = icmp eq i16 %10, 2
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %1, %4, %8
  %14 = phi i32 [ %12, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @dopesheet_view_all_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !84 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %5 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #8
  %6 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11, i32 12, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = icmp eq ptr %7, null
  br i1 %8, label %36, label %9

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %23, %9 ], [ %7, %2 ]
  %11 = phi i32 [ %22, %9 ], [ -2147483648, %2 ]
  %12 = phi i32 [ %16, %9 ], [ 2147483647, %2 ]
  %13 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %10, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !85
  %15 = load i32, ptr %14, align 4, !tbaa !50
  %16 = tail call fastcc i32 @min_ii(i32 noundef %12, i32 noundef %15) #10
  %17 = getelementptr inbounds %struct.MovieTrackingDopesheetChannel, ptr %10, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !86
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %14, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !50
  %22 = tail call fastcc i32 @max_ii(i32 noundef %11, i32 noundef %21) #10
  %23 = load ptr, ptr %10, align 8, !tbaa !63
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %9, !llvm.loop !87

25:                                               ; preds = %9
  %26 = icmp slt i32 %16, %22
  br i1 %26, label %27, label %36

27:                                               ; preds = %25
  %28 = sitofp i32 %16 to float
  %29 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1
  store float %28, ptr %29, align 8, !tbaa !88
  %30 = sitofp i32 %22 to float
  %31 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1, i32 1
  store float %30, ptr %31, align 4, !tbaa !92
  %32 = tail call fastcc float @BLI_rctf_size_x(ptr noundef nonnull %29) #10
  %33 = fmul float %32, 0x3F847AE140000000
  %34 = fsub float %28, %33
  store float %34, ptr %29, align 8, !tbaa !88
  %35 = fadd float %33, %30
  store float %35, ptr %31, align 4, !tbaa !92
  tail call void @ED_region_tag_redraw(ptr noundef %4) #8
  br label %36

36:                                               ; preds = %2, %27, %25
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @space_clip_dopesheet_poll(ptr noundef %0) #0 !PGOFuncName !93 {
  %2 = tail call i32 @ED_space_clip_tracking_poll(ptr noundef %0) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 14
  %7 = load i16, ptr %6, align 2, !tbaa !83
  %8 = icmp eq i16 %7, 2
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %11 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 8
  %12 = load i16, ptr %11, align 2, !tbaa !94
  %13 = icmp eq i16 %12, 7
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %4, %1, %9
  %16 = phi i32 [ %14, %9 ], [ 0, %1 ], [ 0, %4 ]
  ret i32 %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_tracks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: optsize
declare void @BKE_tracking_track_select(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_track_deselect(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !96 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !97 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_x(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !98 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !99
  %4 = load float, ptr %0, align 4, !tbaa !100
  %5 = fsub float %3, %4
  ret float %5
}

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_space_clip_tracking_poll(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }

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
!44 = !{!35, !36, i64 48}
!45 = !{!35, !36, i64 32}
!46 = !{!35, !36, i64 72}
!47 = !{!35, !41, i64 184}
!48 = !{!35, !36, i64 88}
!49 = !{!"clip_dopesheet_ops.c:dopesheet_select_channel_invoke"}
!50 = !{!51, !51, i64 0}
!51 = !{!"int", !37, i64 0}
!52 = !{!53, !36, i64 112}
!53 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!54 = !{!"clip_dopesheet_ops.c:dopesheet_select_channel_exec"}
!55 = !{!56, !41, i64 6}
!56 = !{!"MovieTrackingDopesheet", !51, i64 0, !41, i64 4, !41, i64 6, !39, i64 8, !39, i64 24, !51, i64 40, !51, i64 44}
!57 = !{!58, !58, i64 0}
!58 = !{!"float", !37, i64 0}
!59 = !{!60, !41, i64 8948}
!60 = !{!"UserDef", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12, !51, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !51, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !51, i64 8484, !51, i64 8488, !51, i64 8492, !41, i64 8496, !41, i64 8498, !51, i64 8500, !51, i64 8504, !51, i64 8508, !51, i64 8512, !51, i64 8516, !51, i64 8520, !51, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !51, i64 8912, !51, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !58, i64 8956, !58, i64 8960, !51, i64 8964, !41, i64 8968, !41, i64 8970, !58, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !61, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !51, i64 10896, !51, i64 10900, !58, i64 10904, !58, i64 10908, !51, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !62, i64 10928}
!61 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!62 = !{!"WalkNavigation", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !41, i64 24, !37, i64 26}
!63 = !{!36, !36, i64 0}
!64 = !{!65, !36, i64 16}
!65 = !{!"MovieTrackingDopesheetChannel", !36, i64 0, !36, i64 8, !36, i64 16, !51, i64 24, !37, i64 28, !51, i64 92, !36, i64 96, !51, i64 104, !51, i64 108}
!66 = !{!67, !51, i64 152}
!67 = !{!"MovieTrackingTrack", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !51, i64 120, !51, i64 124, !36, i64 128, !37, i64 136, !58, i64 148, !51, i64 152, !51, i64 156, !51, i64 160, !37, i64 164, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !51, i64 184, !58, i64 188, !36, i64 192, !58, i64 200, !58, i64 204}
!68 = !{!69, !36, i64 232}
!69 = !{!"MovieTracking", !70, i64 0, !71, i64 72, !39, i64 128, !39, i64 144, !72, i64 160, !73, i64 184, !36, i64 232, !36, i64 240, !39, i64 248, !51, i64 264, !51, i64 268, !36, i64 272, !56, i64 280}
!70 = !{!"MovieTrackingSettings", !51, i64 0, !41, i64 4, !41, i64 6, !58, i64 8, !41, i64 12, !41, i64 14, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !58, i64 24, !41, i64 28, !41, i64 30, !51, i64 32, !51, i64 36, !51, i64 40, !41, i64 44, !41, i64 46, !58, i64 48, !51, i64 52, !51, i64 56, !58, i64 60, !58, i64 64, !51, i64 68}
!71 = !{!"MovieTrackingCamera", !36, i64 0, !41, i64 8, !41, i64 10, !58, i64 12, !58, i64 16, !58, i64 20, !41, i64 24, !41, i64 26, !37, i64 28, !58, i64 36, !58, i64 40, !58, i64 44, !58, i64 48, !58, i64 52}
!72 = !{!"MovieTrackingReconstruction", !51, i64 0, !58, i64 4, !51, i64 8, !51, i64 12, !36, i64 16}
!73 = !{!"MovieTrackingStabilization", !51, i64 0, !51, i64 4, !51, i64 8, !58, i64 12, !36, i64 16, !58, i64 24, !58, i64 28, !58, i64 32, !51, i64 36, !51, i64 40, !58, i64 44}
!74 = distinct !{!74, !75}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!"clip_dopesheet_ops.c:dopesheet_select_channel_poll"}
!77 = !{!78, !36, i64 64}
!78 = !{!"SpaceClip", !36, i64 0, !36, i64 8, !39, i64 16, !51, i64 32, !58, i64 36, !58, i64 40, !58, i64 44, !58, i64 48, !58, i64 52, !79, i64 56, !36, i64 64, !80, i64 72, !51, i64 208, !41, i64 212, !41, i64 214, !51, i64 216, !37, i64 220, !58, i64 228, !58, i64 232, !51, i64 236, !37, i64 240, !37, i64 304, !51, i64 368, !41, i64 372, !41, i64 374, !51, i64 376, !51, i64 380, !37, i64 384, !82, i64 392}
!79 = !{!"MovieClipUser", !51, i64 0, !41, i64 4, !41, i64 6}
!80 = !{!"MovieClipScopes", !41, i64 0, !41, i64 2, !51, i64 4, !51, i64 8, !51, i64 12, !81, i64 16, !36, i64 80, !36, i64 88, !37, i64 96, !41, i64 104, !41, i64 106, !51, i64 108, !36, i64 112, !36, i64 120, !37, i64 128}
!81 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !51, i64 56, !51, i64 60}
!82 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!83 = !{!78, !41, i64 214}
!84 = !{!"clip_dopesheet_ops.c:dopesheet_view_all_exec"}
!85 = !{!65, !36, i64 96}
!86 = !{!65, !51, i64 92}
!87 = distinct !{!87, !75}
!88 = !{!89, !58, i64 16}
!89 = !{!"View2D", !90, i64 0, !90, i64 16, !91, i64 32, !91, i64 48, !91, i64 64, !37, i64 80, !37, i64 88, !58, i64 96, !58, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !51, i64 136, !51, i64 140, !36, i64 144, !36, i64 152}
!90 = !{!"rctf", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12}
!91 = !{!"rcti", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12}
!92 = !{!89, !58, i64 20}
!93 = !{!"clip_dopesheet_ops.c:space_clip_dopesheet_poll"}
!94 = !{!95, !41, i64 214}
!95 = !{!"ARegion", !36, i64 0, !36, i64 8, !89, i64 16, !91, i64 176, !91, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !58, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!96 = !{!"clip_dopesheet_ops.c:min_ii"}
!97 = !{!"clip_dopesheet_ops.c:max_ii"}
!98 = !{!"clip_dopesheet_ops.c:BLI_rctf_size_x"}
!99 = !{!90, !58, i64 4}
!100 = !{!90, !58, i64 0}
