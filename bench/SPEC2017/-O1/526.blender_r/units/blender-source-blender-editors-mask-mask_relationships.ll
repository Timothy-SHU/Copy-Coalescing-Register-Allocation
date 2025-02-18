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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @mask_parent_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.Mask, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  br i1 %6, label %50, label %7

7:                                                ; preds = %2, %47
  %8 = phi ptr [ %48, %47 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.MaskLayer, ptr %8, i64 0, i32 13
  %10 = load i8, ptr %9, align 1, !tbaa !48
  %11 = and i8 %10, 3
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %47

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.MaskLayer, ptr %8, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, null
  br i1 %16, label %47, label %20

17:                                               ; preds = %44, %20
  %18 = load ptr, ptr %21, align 8, !tbaa !47
  %19 = icmp eq ptr %18, null
  br i1 %19, label %47, label %20, !llvm.loop !51

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
  %48 = load ptr, ptr %8, align 8, !tbaa !47
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %7, !llvm.loop !66

50:                                               ; preds = %47, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358285312, ptr noundef %3) #6
  tail call void @DAG_id_tag_update(ptr noundef %3, i16 noundef signext 0) #6
  ret i32 4
}

declare i32 @ED_maskedit_mask_poll(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
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

; Function Attrs: nounwind uwtable
define internal noundef i32 @mask_parent_set_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca [2 x float], align 4
  %4 = alloca [4 x [2 x float]], align 16
  %5 = alloca [2 x float], align 4
  %6 = tail call ptr @CTX_data_edit_mask(ptr noundef %0) #6
  %7 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #6
  %8 = tail call ptr @ED_space_clip_get_clip(ptr noundef %7) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4)
  %9 = icmp eq ptr %7, null
  %10 = icmp eq ptr %8, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %106, label %12

12:                                               ; preds = %2
  %13 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %7) #6
  %14 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 11
  %15 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %14) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %106, label %17

17:                                               ; preds = %12
  %18 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %14) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %17
  %21 = tail call ptr @BKE_tracking_marker_get(ptr noundef nonnull %18, i32 noundef %13) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %22 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 7
  %23 = load float, ptr %21, align 4, !tbaa !67
  %24 = load float, ptr %22, align 4, !tbaa !67
  %25 = fadd float %23, %24
  store float %25, ptr %5, align 4, !tbaa !67
  %26 = getelementptr inbounds float, ptr %21, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !67
  %28 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 7, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !67
  %30 = fadd float %27, %29
  %31 = getelementptr inbounds float, ptr %5, i64 1
  store float %30, ptr %31, align 4, !tbaa !67
  %32 = getelementptr inbounds %struct.SpaceClip, ptr %7, i64 0, i32 9
  call void @BKE_mask_coord_from_movieclip(ptr noundef %8, ptr noundef nonnull %32, ptr noundef nonnull %3, ptr noundef nonnull %5) #6
  %33 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  br label %41

34:                                               ; preds = %17
  %35 = tail call ptr @BKE_tracking_plane_track_get_active(ptr noundef nonnull %14) #6
  %36 = icmp eq ptr %35, null
  br i1 %36, label %106, label %37

37:                                               ; preds = %34
  %38 = tail call ptr @BKE_tracking_plane_marker_get(ptr noundef nonnull %35, i32 noundef %13) #6
  store float 0.000000e+00, ptr %3, align 4, !tbaa !67
  %39 = getelementptr inbounds float, ptr %3, i64 1
  store float 0.000000e+00, ptr %39, align 4, !tbaa !67
  %40 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %35, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(32) %38, i64 32, i1 false)
  br label %41

41:                                               ; preds = %37, %20
  %42 = phi ptr [ %33, %20 ], [ %40, %37 ]
  %43 = phi i32 [ 0, %20 ], [ 1, %37 ]
  %44 = getelementptr inbounds %struct.Mask, ptr %6, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !47
  %46 = icmp eq ptr %45, null
  br i1 %46, label %105, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.MovieTrackingObject, ptr %15, i64 0, i32 2
  %49 = getelementptr inbounds float, ptr %3, i64 1
  br label %50

50:                                               ; preds = %47, %102
  %51 = phi ptr [ %45, %47 ], [ %103, %102 ]
  %52 = getelementptr inbounds %struct.MaskLayer, ptr %51, i64 0, i32 13
  %53 = load i8, ptr %52, align 1, !tbaa !48
  %54 = and i8 %53, 3
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %102

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.MaskLayer, ptr %51, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !47
  %59 = icmp eq ptr %58, null
  br i1 %59, label %102, label %63

60:                                               ; preds = %97, %63
  %61 = load ptr, ptr %64, align 8, !tbaa !47
  %62 = icmp eq ptr %61, null
  br i1 %62, label %102, label %63, !llvm.loop !68

63:                                               ; preds = %56, %60
  %64 = phi ptr [ %61, %60 ], [ %58, %56 ]
  %65 = getelementptr inbounds %struct.MaskSpline, ptr %64, i64 0, i32 5
  %66 = load i32, ptr %65, align 4, !tbaa !54
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %60

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.MaskSpline, ptr %64, i64 0, i32 6
  br label %70

70:                                               ; preds = %68, %97
  %71 = phi i64 [ 0, %68 ], [ %98, %97 ]
  %72 = load ptr, ptr %69, align 8, !tbaa !58
  %73 = getelementptr inbounds %struct.MaskSplinePoint, ptr %72, i64 %71
  %74 = getelementptr inbounds %struct.BezTriple, ptr %73, i64 0, i32 7
  %75 = load i8, ptr %74, align 1, !tbaa !59
  %76 = getelementptr inbounds %struct.BezTriple, ptr %73, i64 0, i32 8
  %77 = load i8, ptr %76, align 4, !tbaa !62
  %78 = or i8 %77, %75
  %79 = getelementptr inbounds %struct.BezTriple, ptr %73, i64 0, i32 9
  %80 = load i8, ptr %79, align 1, !tbaa !63
  %81 = or i8 %78, %80
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %70
  %85 = getelementptr inbounds %struct.MaskSplinePoint, ptr %72, i64 %71, i32 4
  store i32 17229, ptr %85, align 8, !tbaa !69
  %86 = getelementptr inbounds %struct.MaskSplinePoint, ptr %72, i64 %71, i32 4, i32 2
  store ptr %8, ptr %86, align 8, !tbaa !64
  %87 = getelementptr inbounds %struct.MaskSplinePoint, ptr %72, i64 %71, i32 4, i32 1
  store i32 %43, ptr %87, align 4, !tbaa !70
  %88 = getelementptr inbounds %struct.MaskSplinePoint, ptr %72, i64 %71, i32 4, i32 3
  %89 = call ptr @BLI_strncpy(ptr noundef nonnull %88, ptr noundef nonnull %48, i64 noundef 64) #6
  %90 = getelementptr inbounds %struct.MaskSplinePoint, ptr %72, i64 %71, i32 4, i32 4
  %91 = call ptr @BLI_strncpy(ptr noundef nonnull %90, ptr noundef nonnull %42, i64 noundef 64) #6
  %92 = getelementptr inbounds %struct.MaskSplinePoint, ptr %72, i64 %71, i32 4, i32 5
  %93 = load float, ptr %3, align 4, !tbaa !67
  store float %93, ptr %92, align 4, !tbaa !67
  %94 = load float, ptr %49, align 4, !tbaa !67
  %95 = getelementptr inbounds float, ptr %92, i64 1
  store float %94, ptr %95, align 4, !tbaa !67
  %96 = getelementptr inbounds %struct.MaskSplinePoint, ptr %72, i64 %71, i32 4, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %96, ptr noundef nonnull align 16 dereferenceable(32) %4, i64 32, i1 false)
  br label %97

97:                                               ; preds = %84, %70
  %98 = add nuw nsw i64 %71, 1
  %99 = load i32, ptr %65, align 4, !tbaa !54
  %100 = sext i32 %99 to i64
  %101 = icmp slt i64 %98, %100
  br i1 %101, label %70, label %60, !llvm.loop !71

102:                                              ; preds = %60, %56, %50
  %103 = load ptr, ptr %51, align 8, !tbaa !47
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %50, !llvm.loop !72

105:                                              ; preds = %102, %41
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 358285312, ptr noundef %6) #6
  call void @DAG_id_tag_update(ptr noundef %6, i16 noundef signext 0) #6
  br label %106

106:                                              ; preds = %34, %12, %2, %105
  %107 = phi i32 [ 4, %105 ], [ 2, %2 ], [ 2, %12 ], [ 2, %34 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  ret i32 %107
}

declare i32 @ED_space_clip_maskedit_mask_poll(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @CTX_data_edit_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #2

declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #2

declare i32 @ED_space_clip_get_clip_frame_number(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_object_get_active(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_track_get_active(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_mask_coord_from_movieclip(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare ptr @BKE_tracking_plane_track_get_active(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_plane_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!36, !36, i64 0}
!48 = !{!49, !37, i64 143}
!49 = !{!"MaskLayer", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 80, !39, i64 96, !36, i64 112, !36, i64 120, !50, i64 128, !37, i64 132, !37, i64 133, !37, i64 134, !37, i64 135, !37, i64 142, !37, i64 143}
!50 = !{!"float", !37, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !56, i64 20}
!55 = !{!"MaskSpline", !36, i64 0, !36, i64 8, !41, i64 16, !37, i64 18, !37, i64 19, !56, i64 20, !36, i64 24, !57, i64 32, !36, i64 216}
!56 = !{!"int", !37, i64 0}
!57 = !{!"MaskParent", !56, i64 0, !56, i64 4, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 144, !37, i64 152}
!58 = !{!55, !36, i64 24}
!59 = !{!60, !37, i64 51}
!60 = !{!"MaskSplinePoint", !61, i64 0, !56, i64 72, !56, i64 76, !36, i64 80, !57, i64 88}
!61 = !{!"BezTriple", !37, i64 0, !50, i64 36, !50, i64 40, !50, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !50, i64 56, !50, i64 60, !50, i64 64, !37, i64 68}
!62 = !{!60, !37, i64 52}
!63 = !{!60, !37, i64 53}
!64 = !{!60, !36, i64 96}
!65 = distinct !{!65, !52, !53}
!66 = distinct !{!66, !52, !53}
!67 = !{!50, !50, i64 0}
!68 = distinct !{!68, !52, !53}
!69 = !{!60, !56, i64 88}
!70 = !{!60, !56, i64 92}
!71 = distinct !{!71, !52, !53}
!72 = distinct !{!72, !52, !53}
