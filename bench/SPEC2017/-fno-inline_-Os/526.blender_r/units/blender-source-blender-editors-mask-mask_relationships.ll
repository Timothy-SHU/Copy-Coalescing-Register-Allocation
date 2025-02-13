; ModuleID = 'blender/source/blender/editors/mask/mask_relationships.c'
source_filename = "blender/source/blender/editors/mask/mask_relationships.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.Mask = type { %struct.ID, ptr, %struct.ListBase, i32, i32, i32, i32, i32, i32 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.MaskLayer = type { ptr, ptr, [64 x i8], %struct.ListBase, %struct.ListBase, ptr, ptr, float, i8, i8, i8, [7 x i8], i8, i8 }
%struct.MaskSpline = type { ptr, ptr, i16, i8, i8, i32, ptr, %struct.MaskParent, ptr }
%struct.MaskParent = type { i32, i32, ptr, [64 x i8], [64 x i8], [2 x float], [4 x [2 x float]] }
%struct.MaskSplinePoint = type { %struct.BezTriple, i32, i32, ptr, %struct.MaskParent }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.MovieTrackingPlaneTrack = type { ptr, ptr, [64 x i8], ptr, i32, i32, ptr, i32, i32, ptr, float, i32 }
%struct.MovieTrackingObject = type { ptr, ptr, [64 x i8], i32, float, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Clear Parent\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Clear the mask's parenting\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"MASK_OT_parent_clear\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Make Parent\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Set the mask's parenting\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"MASK_OT_parent_set\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_parent_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_parent_clear_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_maskedit_mask_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mask_parent_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !47 {
  %3 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.Mask, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %50, label %7

7:                                                ; preds = %2, %47
  %8 = phi ptr [ %48, %47 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.MaskLayer, ptr %8, i64 0, i32 13
  %10 = load i8, ptr %9, align 1, !tbaa !49
  %11 = and i8 %10, 3
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %47

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.MaskLayer, ptr %8, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = icmp eq ptr %15, null
  br i1 %16, label %47, label %20

17:                                               ; preds = %44, %20
  %18 = load ptr, ptr %21, align 8, !tbaa !48
  %19 = icmp eq ptr %18, null
  br i1 %19, label %47, label %20, !llvm.loop !52

20:                                               ; preds = %13, %17
  %21 = phi ptr [ %18, %17 ], [ %15, %13 ]
  %22 = getelementptr inbounds %struct.MaskSpline, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !54
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %17

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.MaskSpline, ptr %21, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !58
  %28 = zext nneg i32 %23 to i64
  br label %29

29:                                               ; preds = %25, %44
  %30 = phi i64 [ 0, %25 ], [ %45, %44 ]
  %31 = getelementptr inbounds %struct.MaskSplinePoint, ptr %27, i64 %30
  %32 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 7
  %33 = load i8, ptr %32, align 1, !tbaa !59
  %34 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 8
  %35 = load i8, ptr %34, align 4, !tbaa !62
  %36 = or i8 %35, %33
  %37 = getelementptr inbounds %struct.BezTriple, ptr %31, i64 0, i32 9
  %38 = load i8, ptr %37, align 1, !tbaa !63
  %39 = or i8 %36, %38
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.MaskSplinePoint, ptr %27, i64 %30, i32 4, i32 2
  store ptr null, ptr %43, align 8, !tbaa !64
  br label %44

44:                                               ; preds = %42, %29
  %45 = add nuw nsw i64 %30, 1
  %46 = icmp eq i64 %45, %28
  br i1 %46, label %17, label %29, !llvm.loop !65

47:                                               ; preds = %17, %13, %7
  %48 = load ptr, ptr %8, align 8, !tbaa !48
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %7, !llvm.loop !66

50:                                               ; preds = %47, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358285312, ptr noundef %3) #7
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 0) #7
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_maskedit_mask_poll(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @MASK_OT_parent_set(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mask_parent_set_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_maskedit_mask_poll, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mask_parent_set_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !67 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [4 x [2 x float]], align 16
  %5 = alloca [2 x float], align 4
  %6 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #7
  %7 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #7
  %8 = tail call ptr @ED_space_clip_get_clip(ptr noundef %7) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4)
  %9 = icmp eq ptr %7, null
  %10 = icmp eq ptr %8, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %94, label %12

12:                                               ; preds = %2
  %13 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef nonnull %7) #7
  %14 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 11
  %15 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %14) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %94, label %17

17:                                               ; preds = %12
  %18 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %14) #7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = tail call ptr @BKE_tracking_marker_get(ptr noundef nonnull %18, i32 noundef %13) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  %22 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 7
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %5, ptr noundef %21, ptr noundef nonnull %22) #9
  %23 = getelementptr inbounds %struct.SpaceClip, ptr %7, i64 0, i32 9
  call void @BKE_mask_coord_from_movieclip(ptr noundef nonnull %8, ptr noundef nonnull %23, ptr noundef nonnull %3, ptr noundef nonnull %5) #7
  %24 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  br label %31

25:                                               ; preds = %17
  %26 = tail call ptr @BKE_tracking_plane_track_get_active(ptr noundef nonnull %14) #7
  %27 = icmp eq ptr %26, null
  br i1 %27, label %94, label %28

28:                                               ; preds = %25
  %29 = tail call ptr @BKE_tracking_plane_marker_get(ptr noundef nonnull %26, i32 noundef %13) #7
  call fastcc void @zero_v2(ptr noundef nonnull %3) #9
  %30 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %26, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(32) %29, i64 32, i1 false)
  br label %31

31:                                               ; preds = %28, %20
  %32 = phi ptr [ %24, %20 ], [ %30, %28 ]
  %33 = phi i32 [ 0, %20 ], [ 1, %28 ]
  %34 = getelementptr inbounds %struct.Mask, ptr %6, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !48
  %36 = icmp eq ptr %35, null
  br i1 %36, label %93, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.MovieTrackingObject, ptr %15, i64 0, i32 2
  br label %39

39:                                               ; preds = %37, %90
  %40 = phi ptr [ %35, %37 ], [ %91, %90 ]
  %41 = getelementptr inbounds %struct.MaskLayer, ptr %40, i64 0, i32 13
  %42 = load i8, ptr %41, align 1, !tbaa !49
  %43 = and i8 %42, 3
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %90

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.MaskLayer, ptr %40, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !48
  %48 = icmp eq ptr %47, null
  br i1 %48, label %90, label %52

49:                                               ; preds = %85, %52
  %50 = load ptr, ptr %53, align 8, !tbaa !48
  %51 = icmp eq ptr %50, null
  br i1 %51, label %90, label %52, !llvm.loop !68

52:                                               ; preds = %45, %49
  %53 = phi ptr [ %50, %49 ], [ %47, %45 ]
  %54 = getelementptr inbounds %struct.MaskSpline, ptr %53, i64 0, i32 5
  %55 = load i32, ptr %54, align 4, !tbaa !54
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %49

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.MaskSpline, ptr %53, i64 0, i32 6
  br label %59

59:                                               ; preds = %57, %85
  %60 = phi i32 [ %55, %57 ], [ %86, %85 ]
  %61 = phi i64 [ 0, %57 ], [ %87, %85 ]
  %62 = load ptr, ptr %58, align 8, !tbaa !58
  %63 = getelementptr inbounds %struct.MaskSplinePoint, ptr %62, i64 %61
  %64 = getelementptr inbounds %struct.BezTriple, ptr %63, i64 0, i32 7
  %65 = load i8, ptr %64, align 1, !tbaa !59
  %66 = getelementptr inbounds %struct.BezTriple, ptr %63, i64 0, i32 8
  %67 = load i8, ptr %66, align 4, !tbaa !62
  %68 = or i8 %67, %65
  %69 = getelementptr inbounds %struct.BezTriple, ptr %63, i64 0, i32 9
  %70 = load i8, ptr %69, align 1, !tbaa !63
  %71 = or i8 %68, %70
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %59
  %75 = getelementptr inbounds %struct.MaskSplinePoint, ptr %62, i64 %61, i32 4
  store i32 17229, ptr %75, align 8, !tbaa !69
  %76 = getelementptr inbounds %struct.MaskSplinePoint, ptr %62, i64 %61, i32 4, i32 2
  store ptr %8, ptr %76, align 8, !tbaa !64
  %77 = getelementptr inbounds %struct.MaskSplinePoint, ptr %62, i64 %61, i32 4, i32 1
  store i32 %33, ptr %77, align 4, !tbaa !70
  %78 = getelementptr inbounds %struct.MaskSplinePoint, ptr %62, i64 %61, i32 4, i32 3
  %79 = call ptr @BLI_strncpy(ptr noundef nonnull %78, ptr noundef nonnull %38, i64 noundef 64) #7
  %80 = getelementptr inbounds %struct.MaskSplinePoint, ptr %62, i64 %61, i32 4, i32 4
  %81 = call ptr @BLI_strncpy(ptr noundef nonnull %80, ptr noundef nonnull %32, i64 noundef 64) #7
  %82 = getelementptr inbounds %struct.MaskSplinePoint, ptr %62, i64 %61, i32 4, i32 5
  call fastcc void @copy_v2_v2(ptr noundef nonnull %82, ptr noundef nonnull %3) #9
  %83 = getelementptr inbounds %struct.MaskSplinePoint, ptr %62, i64 %61, i32 4, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %83, ptr noundef nonnull align 16 dereferenceable(32) %4, i64 32, i1 false)
  %84 = load i32, ptr %54, align 4, !tbaa !54
  br label %85

85:                                               ; preds = %74, %59
  %86 = phi i32 [ %84, %74 ], [ %60, %59 ]
  %87 = add nuw nsw i64 %61, 1
  %88 = sext i32 %86 to i64
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %59, label %49, !llvm.loop !71

90:                                               ; preds = %49, %45, %39
  %91 = load ptr, ptr %40, align 8, !tbaa !48
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %39, !llvm.loop !72

93:                                               ; preds = %90, %31
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358285312, ptr noundef %6) #7
  call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 0) #7
  br label %94

94:                                               ; preds = %25, %12, %2, %93
  %95 = phi i32 [ 4, %93 ], [ 2, %2 ], [ 2, %12 ], [ 2, %25 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i32 %95
}

; Function Attrs: optsize
declare i32 @ED_space_clip_maskedit_mask_poll(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @CTX_data_edit_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_space_clip_get_clip_frame_number(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_track_get_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !73 {
  %4 = load float, ptr %1, align 4, !tbaa !74
  %5 = load float, ptr %2, align 4, !tbaa !74
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !74
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !74
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !74
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !74
  ret void
}

; Function Attrs: optsize
declare void @BKE_mask_coord_from_movieclip(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare ptr @BKE_tracking_plane_track_get_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_plane_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #0 !PGOFuncName !75 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !74
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !76 {
  %3 = load float, ptr %1, align 4, !tbaa !74
  store float %3, ptr %0, align 4, !tbaa !74
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !74
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !74
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }
attributes #9 = { optsize }

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
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!"mask_relationships.c:mask_parent_clear_exec"}
!48 = !{!36, !36, i64 0}
!49 = !{!50, !37, i64 143}
!50 = !{!"MaskLayer", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 80, !39, i64 96, !36, i64 112, !36, i64 120, !51, i64 128, !37, i64 132, !37, i64 133, !37, i64 134, !37, i64 135, !37, i64 142, !37, i64 143}
!51 = !{!"float", !37, i64 0}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!55, !56, i64 20}
!55 = !{!"MaskSpline", !36, i64 0, !36, i64 8, !41, i64 16, !37, i64 18, !37, i64 19, !56, i64 20, !36, i64 24, !57, i64 32, !36, i64 216}
!56 = !{!"int", !37, i64 0}
!57 = !{!"MaskParent", !56, i64 0, !56, i64 4, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 144, !37, i64 152}
!58 = !{!55, !36, i64 24}
!59 = !{!60, !37, i64 51}
!60 = !{!"MaskSplinePoint", !61, i64 0, !56, i64 72, !56, i64 76, !36, i64 80, !57, i64 88}
!61 = !{!"BezTriple", !37, i64 0, !51, i64 36, !51, i64 40, !51, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !51, i64 56, !51, i64 60, !51, i64 64, !37, i64 68}
!62 = !{!60, !37, i64 52}
!63 = !{!60, !37, i64 53}
!64 = !{!60, !36, i64 96}
!65 = distinct !{!65, !53}
!66 = distinct !{!66, !53}
!67 = !{!"mask_relationships.c:mask_parent_set_exec"}
!68 = distinct !{!68, !53}
!69 = !{!60, !56, i64 88}
!70 = !{!60, !56, i64 92}
!71 = distinct !{!71, !53}
!72 = distinct !{!72, !53}
!73 = !{!"mask_relationships.c:add_v2_v2v2"}
!74 = !{!51, !51, i64 0}
!75 = !{!"mask_relationships.c:zero_v2"}
!76 = !{!"mask_relationships.c:copy_v2_v2"}
