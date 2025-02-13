; ModuleID = 'blender/source/blender/editors/mask/mask_edit.c'
source_filename = "blender/source/blender/editors/mask/mask_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.wmKeyMap = type { ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperatorTypeMacro = type { ptr, ptr, [64 x i8], ptr, ptr }

@.str = private unnamed_addr constant [13 x i8] c"Mask Editing\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"MASK_OT_new\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"MASK_MT_add\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"MASK_OT_add_vertex_slide\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"MASK_OT_add_feather_vertex_slide\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"MASK_OT_delete\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"MASK_OT_select\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"deselect\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"toggle\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"MASK_OT_select_all\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"MASK_OT_select_linked\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"MASK_OT_select_linked_pick\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"MASK_OT_select_border\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"MASK_OT_select_circle\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"MASK_OT_select_lasso\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"MASK_OT_select_more\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"MASK_OT_select_less\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"MASK_OT_hide_view_clear\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"MASK_OT_hide_view_set\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"unselected\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"CLIP_OT_select\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"MASK_OT_cyclic_toggle\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"MASK_OT_slide_point\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"MASK_OT_slide_spline_curvature\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"MASK_OT_handle_type_set\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"MASK_OT_normals_make_consistent\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"MASK_OT_parent_set\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"MASK_OT_parent_clear\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"MASK_OT_shape_key_insert\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"MASK_OT_shape_key_clear\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"MASK_OT_duplicate_move\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"MASK_OT_copy_splines\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"MASK_OT_paste_splines\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"UV_OT_cursor_set\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"TRANSFORM_OT_translate\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"TRANSFORM_OT_resize\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"TRANSFORM_OT_rotate\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"TRANSFORM_OT_transform\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"Add Vertex and Slide\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"Add new vertex and slide it\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"MASK_OT_add_vertex\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"is_new_point\00", align 1
@.str.45 = private unnamed_addr constant [29 x i8] c"Add Feather Vertex and Slide\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"Add new vertex to feather and slide it\00", align 1
@.str.47 = private unnamed_addr constant [36 x i8] c"Add new feather vertex and slide it\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"MASK_OT_add_feather_vertex\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"slide_feather\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"Add Duplicate\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"Duplicate mask and move\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"MASK_OT_duplicate\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"proportional\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"mirror\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_maskedit_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !34
  switch i8 %6, label %13 [
    i8 20, label %7
    i8 8, label %9
    i8 6, label %11
  ]

7:                                                ; preds = %4
  %8 = tail call i32 @ED_space_clip_maskedit_poll(ptr noundef %0) #6
  br label %13

9:                                                ; preds = %4
  %10 = tail call i32 @ED_space_sequencer_maskedit_poll(ptr noundef %0) #6
  br label %13

11:                                               ; preds = %4
  %12 = tail call i32 @ED_space_image_maskedit_poll(ptr noundef %0) #6
  br label %13

13:                                               ; preds = %1, %4, %11, %9, %7
  %14 = phi i32 [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_space_clip_maskedit_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_space_sequencer_maskedit_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_space_image_maskedit_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ED_maskedit_mask_poll(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_area(ptr noundef %0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ScrArea, ptr %2, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !34
  switch i8 %6, label %13 [
    i8 20, label %7
    i8 8, label %9
    i8 6, label %11
  ]

7:                                                ; preds = %4
  %8 = tail call i32 @ED_space_clip_maskedit_mask_poll(ptr noundef %0) #6
  br label %13

9:                                                ; preds = %4
  %10 = tail call i32 @ED_space_sequencer_maskedit_mask_poll(ptr noundef %0) #6
  br label %13

11:                                               ; preds = %4
  %12 = tail call i32 @ED_space_image_maskedit_mask_poll(ptr noundef %0) #6
  br label %13

13:                                               ; preds = %1, %4, %11, %9, %7
  %14 = phi i32 [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: optsize
declare i32 @ED_space_clip_maskedit_mask_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_space_sequencer_maskedit_mask_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_space_image_maskedit_mask_poll(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mask_mouse_pos(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 8
  %8 = load i8, ptr %7, align 8, !tbaa !34
  switch i8 %8, label %29 [
    i8 20, label %9
    i8 8, label %15
    i8 6, label %23
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  tail call void @ED_clip_mouse_pos(ptr noundef %11, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6
  %12 = getelementptr inbounds %struct.SpaceClip, ptr %11, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.SpaceClip, ptr %11, i64 0, i32 9
  tail call void @BKE_mask_coord_from_movieclip(ptr noundef %13, ptr noundef nonnull %14, ptr noundef %3, ptr noundef %3) #6
  br label %31

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %17 = load i32, ptr %2, align 4, !tbaa !51
  %18 = sitofp i32 %17 to float
  %19 = getelementptr inbounds i32, ptr %2, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !51
  %21 = sitofp i32 %20 to float
  %22 = getelementptr inbounds float, ptr %3, i64 1
  tail call void @UI_view2d_region_to_view(ptr noundef nonnull %16, float noundef %18, float noundef %21, ptr noundef %3, ptr noundef nonnull %22) #6
  br label %31

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  tail call void @ED_image_mouse_pos(ptr noundef %25, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6
  %26 = getelementptr inbounds %struct.SpaceImage, ptr %25, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !52
  %28 = getelementptr inbounds %struct.SpaceImage, ptr %25, i64 0, i32 6
  tail call void @BKE_mask_coord_from_image(ptr noundef %27, ptr noundef nonnull %28, ptr noundef %3, ptr noundef %3) #6
  br label %31

29:                                               ; preds = %6
  tail call fastcc void @zero_v2(ptr noundef %3) #7
  br label %31

30:                                               ; preds = %4
  tail call fastcc void @zero_v2(ptr noundef %3) #7
  br label %31

31:                                               ; preds = %9, %15, %23, %29, %30
  ret void
}

; Function Attrs: optsize
declare void @ED_clip_mouse_pos(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_coord_from_movieclip(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_image_mouse_pos(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_coord_from_image(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v2(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !57 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mask_point_pos(ptr noundef readonly %0, ptr noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  %8 = icmp eq ptr %0, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 8
  %11 = load i8, ptr %10, align 8, !tbaa !34
  switch i8 %11, label %27 [
    i8 20, label %12
    i8 8, label %19
    i8 6, label %20
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  call void @ED_clip_point_stable_pos(ptr noundef %14, ptr noundef %1, float noundef %2, float noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %15) #6
  %16 = getelementptr inbounds %struct.SpaceClip, ptr %14, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  %18 = getelementptr inbounds %struct.SpaceClip, ptr %14, i64 0, i32 9
  call void @BKE_mask_coord_from_movieclip(ptr noundef %17, ptr noundef nonnull %18, ptr noundef nonnull %7, ptr noundef nonnull %7) #6
  br label %29

19:                                               ; preds = %9
  call fastcc void @zero_v2(ptr noundef nonnull %7) #7
  br label %29

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  call void @ED_image_point_pos(ptr noundef %22, ptr noundef %1, float noundef %2, float noundef %3, ptr noundef nonnull %7, ptr noundef nonnull %23) #6
  %24 = getelementptr inbounds %struct.SpaceImage, ptr %22, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = getelementptr inbounds %struct.SpaceImage, ptr %22, i64 0, i32 6
  call void @BKE_mask_coord_from_image(ptr noundef %25, ptr noundef nonnull %26, ptr noundef nonnull %7, ptr noundef nonnull %7) #6
  br label %29

27:                                               ; preds = %9
  call fastcc void @zero_v2(ptr noundef nonnull %7) #7
  br label %29

28:                                               ; preds = %6
  call fastcc void @zero_v2(ptr noundef nonnull %7) #7
  br label %29

29:                                               ; preds = %12, %19, %20, %27, %28
  %30 = load float, ptr %7, align 4, !tbaa !58
  store float %30, ptr %4, align 4, !tbaa !58
  %31 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !58
  store float %32, ptr %5, align 4, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret void
}

; Function Attrs: optsize
declare void @ED_clip_point_stable_pos(ptr noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_image_point_pos(ptr noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mask_point_pos__reverse(ptr noundef readonly %0, ptr noundef %1, float noundef %2, float noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  %8 = icmp eq ptr %0, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 8
  %11 = load i8, ptr %10, align 8, !tbaa !34
  switch i8 %11, label %27 [
    i8 20, label %12
    i8 8, label %19
    i8 6, label %20
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  store float %2, ptr %7, align 4, !tbaa !58
  %15 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  store float %3, ptr %15, align 4, !tbaa !58
  %16 = getelementptr inbounds %struct.SpaceClip, ptr %14, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  %18 = getelementptr inbounds %struct.SpaceClip, ptr %14, i64 0, i32 9
  call void @BKE_mask_coord_to_movieclip(ptr noundef %17, ptr noundef nonnull %18, ptr noundef nonnull %7, ptr noundef nonnull %7) #6
  call void @ED_clip_point_stable_pos__reverse(ptr noundef %14, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %7) #6
  br label %29

19:                                               ; preds = %9
  call fastcc void @zero_v2(ptr noundef nonnull %7) #7
  br label %29

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  store float %2, ptr %7, align 4, !tbaa !58
  %23 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  store float %3, ptr %23, align 4, !tbaa !58
  %24 = getelementptr inbounds %struct.SpaceImage, ptr %22, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = getelementptr inbounds %struct.SpaceImage, ptr %22, i64 0, i32 6
  call void @BKE_mask_coord_to_image(ptr noundef %25, ptr noundef nonnull %26, ptr noundef nonnull %7, ptr noundef nonnull %7) #6
  call void @ED_image_point_pos__reverse(ptr noundef %22, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %7) #6
  br label %29

27:                                               ; preds = %9
  call fastcc void @zero_v2(ptr noundef nonnull %7) #7
  br label %29

28:                                               ; preds = %6
  call fastcc void @zero_v2(ptr noundef nonnull %7) #7
  br label %29

29:                                               ; preds = %12, %19, %20, %27, %28
  %30 = load float, ptr %7, align 4, !tbaa !58
  store float %30, ptr %4, align 4, !tbaa !58
  %31 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !58
  store float %32, ptr %5, align 4, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret void
}

; Function Attrs: optsize
declare void @BKE_mask_coord_to_movieclip(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_clip_point_stable_pos__reverse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mask_coord_to_image(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_image_point_pos__reverse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mask_get_size(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 8
  %11 = load i8, ptr %10, align 8, !tbaa !34
  switch i8 %11, label %14 [
    i8 20, label %12
    i8 8, label %16
    i8 6, label %13
  ]

12:                                               ; preds = %9
  tail call void @ED_space_clip_get_size(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2) #6
  br label %16

13:                                               ; preds = %9
  tail call void @ED_space_image_get_size(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2) #6
  br label %16

14:                                               ; preds = %9
  store i32 0, ptr %1, align 4, !tbaa !51
  store i32 0, ptr %2, align 4, !tbaa !51
  br label %16

15:                                               ; preds = %5, %3
  store i32 0, ptr %1, align 4, !tbaa !51
  store i32 0, ptr %2, align 4, !tbaa !51
  br label %16

16:                                               ; preds = %12, %13, %14, %9, %15
  ret void
}

; Function Attrs: optsize
declare void @ED_space_clip_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_space_image_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mask_zoom(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 8
  %12 = load i8, ptr %11, align 8, !tbaa !34
  switch i8 %12, label %16 [
    i8 20, label %13
    i8 8, label %14
    i8 6, label %15
  ]

13:                                               ; preds = %10
  tail call void @ED_space_clip_get_zoom(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6
  br label %18

14:                                               ; preds = %10
  store float 1.000000e+00, ptr %3, align 4, !tbaa !58
  store float 1.000000e+00, ptr %2, align 4, !tbaa !58
  br label %18

15:                                               ; preds = %10
  tail call void @ED_space_image_get_zoom(ptr noundef nonnull %8, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6
  br label %18

16:                                               ; preds = %10
  store float 1.000000e+00, ptr %3, align 4, !tbaa !58
  store float 1.000000e+00, ptr %2, align 4, !tbaa !58
  br label %18

17:                                               ; preds = %6, %4
  store float 1.000000e+00, ptr %3, align 4, !tbaa !58
  store float 1.000000e+00, ptr %2, align 4, !tbaa !58
  br label %18

18:                                               ; preds = %13, %14, %15, %16, %17
  ret void
}

; Function Attrs: optsize
declare void @ED_space_clip_get_zoom(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_space_image_get_zoom(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mask_get_aspect(ptr noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 8
  %12 = load i8, ptr %11, align 8, !tbaa !34
  switch i8 %12, label %16 [
    i8 20, label %13
    i8 8, label %14
    i8 6, label %15
  ]

13:                                               ; preds = %10
  tail call void @ED_space_clip_get_aspect(ptr noundef nonnull %8, ptr noundef %2, ptr noundef %3) #6
  br label %18

14:                                               ; preds = %10
  store float 1.000000e+00, ptr %3, align 4, !tbaa !58
  store float 1.000000e+00, ptr %2, align 4, !tbaa !58
  br label %18

15:                                               ; preds = %10
  tail call void @ED_space_image_get_aspect(ptr noundef nonnull %8, ptr noundef %2, ptr noundef %3) #6
  br label %18

16:                                               ; preds = %10
  store float 1.000000e+00, ptr %3, align 4, !tbaa !58
  store float 1.000000e+00, ptr %2, align 4, !tbaa !58
  br label %18

17:                                               ; preds = %6, %4
  store float 1.000000e+00, ptr %3, align 4, !tbaa !58
  store float 1.000000e+00, ptr %2, align 4, !tbaa !58
  br label %18

18:                                               ; preds = %13, %14, %15, %16, %17
  ret void
}

; Function Attrs: optsize
declare void @ED_space_clip_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_space_image_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_mask_pixelspace_factor(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = icmp eq ptr %0, null
  br i1 %9, label %35, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = icmp eq ptr %12, null
  br i1 %13, label %35, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 8
  %16 = load i8, ptr %15, align 8, !tbaa !34
  switch i8 %16, label %34 [
    i8 20, label %17
    i8 8, label %25
    i8 6, label %26
  ]

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  %18 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @UI_view2d_scale_get(ptr noundef nonnull %18, ptr noundef %2, ptr noundef %3) #6
  call void @ED_space_clip_get_aspect(ptr noundef nonnull %12, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  %19 = load float, ptr %5, align 4, !tbaa !58
  %20 = load float, ptr %2, align 4, !tbaa !58
  %21 = fmul float %19, %20
  store float %21, ptr %2, align 4, !tbaa !58
  %22 = load float, ptr %6, align 4, !tbaa !58
  %23 = load float, ptr %3, align 4, !tbaa !58
  %24 = fmul float %22, %23
  store float %24, ptr %3, align 4, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %36

25:                                               ; preds = %14
  store float 1.000000e+00, ptr %3, align 4, !tbaa !58
  store float 1.000000e+00, ptr %2, align 4, !tbaa !58
  br label %36

26:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  %27 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @UI_view2d_scale_get(ptr noundef nonnull %27, ptr noundef %2, ptr noundef %3) #6
  call void @ED_space_image_get_aspect(ptr noundef nonnull %12, ptr noundef nonnull %7, ptr noundef nonnull %8) #6
  %28 = load float, ptr %7, align 4, !tbaa !58
  %29 = load float, ptr %2, align 4, !tbaa !58
  %30 = fmul float %28, %29
  store float %30, ptr %2, align 4, !tbaa !58
  %31 = load float, ptr %8, align 4, !tbaa !58
  %32 = load float, ptr %3, align 4, !tbaa !58
  %33 = fmul float %31, %32
  store float %33, ptr %3, align 4, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  br label %36

34:                                               ; preds = %14
  store float 1.000000e+00, ptr %3, align 4, !tbaa !58
  store float 1.000000e+00, ptr %2, align 4, !tbaa !58
  br label %36

35:                                               ; preds = %10, %4
  store float 1.000000e+00, ptr %3, align 4, !tbaa !58
  store float 1.000000e+00, ptr %2, align 4, !tbaa !58
  br label %36

36:                                               ; preds = %17, %25, %26, %34, %35
  ret void
}

; Function Attrs: optsize
declare void @UI_view2d_scale_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ED_mask_cursor_location_get(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 8
  %6 = load i8, ptr %5, align 8, !tbaa !34
  switch i8 %6, label %16 [
    i8 20, label %7
    i8 8, label %11
    i8 6, label %12
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds %struct.SpaceClip, ptr %9, i64 0, i32 27
  tail call fastcc void @copy_v2_v2(ptr noundef %1, ptr noundef nonnull %10) #7
  br label %18

11:                                               ; preds = %4
  tail call fastcc void @zero_v2(ptr noundef %1) #7
  br label %18

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct.SpaceImage, ptr %14, i64 0, i32 11
  tail call fastcc void @copy_v2_v2(ptr noundef %1, ptr noundef nonnull %15) #7
  br label %18

16:                                               ; preds = %4
  tail call fastcc void @zero_v2(ptr noundef %1) #7
  br label %18

17:                                               ; preds = %2
  tail call fastcc void @zero_v2(ptr noundef %1) #7
  br label %18

18:                                               ; preds = %7, %11, %12, %16, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !59 {
  %3 = load float, ptr %1, align 4, !tbaa !58
  store float %3, ptr %0, align 4, !tbaa !58
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !58
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_operatortypes_mask() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_new) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_layer_new) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_layer_remove) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_add_vertex) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_add_feather_vertex) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_primitive_circle_add) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_primitive_square_add) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_switch_direction) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_normals_make_consistent) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_delete) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_select) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_select_all) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_select_border) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_select_lasso) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_select_circle) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_select_linked_pick) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_select_linked) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_select_more) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_select_less) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_hide_view_clear) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_hide_view_set) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_feather_weight_clear) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_slide_point) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_slide_spline_curvature) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_cyclic_toggle) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_handle_type_set) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_parent_set) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_parent_clear) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_shape_key_insert) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_shape_key_clear) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_shape_key_feather_reset) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_shape_key_rekey) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_layer_move) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_duplicate) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_copy_splines) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @MASK_OT_paste_splines) #6
  ret void
}

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @MASK_OT_new(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_layer_new(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_layer_remove(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_add_vertex(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_add_feather_vertex(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_primitive_circle_add(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_primitive_square_add(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_switch_direction(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_normals_make_consistent(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_delete(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_select(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_select_all(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_select_border(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_select_lasso(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_select_circle(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_select_linked_pick(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_select_linked(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_select_more(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_select_less(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_hide_view_clear(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_hide_view_set(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_feather_weight_clear(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_slide_point(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_slide_spline_curvature(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_cyclic_toggle(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_handle_type_set(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_parent_set(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_parent_clear(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_shape_key_insert(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_shape_key_clear(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_shape_key_feather_reset(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_shape_key_rekey(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_layer_move(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_duplicate(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_copy_splines(ptr noundef) #2

; Function Attrs: optsize
declare void @MASK_OT_paste_splines(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_keymap_mask(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #6
  %3 = getelementptr inbounds %struct.wmKeyMap, ptr %2, i64 0, i32 9
  store ptr @ED_maskedit_poll, ptr %3, align 8, !tbaa !60
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef 1, i32 noundef 4, i32 noundef 0) #6
  %5 = tail call ptr @WM_keymap_add_menu(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 97, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  tail call void @ED_keymap_proportional_cycle(ptr noundef %0, ptr noundef %2) #6
  tail call void @ED_keymap_proportional_maskmode(ptr noundef %0, ptr noundef %2) #6
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 5, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 5, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  %8 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %9 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %10 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 6, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %11 = getelementptr inbounds %struct.wmKeyMapItem, ptr %10, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  tail call void @RNA_boolean_set(ptr noundef %12, ptr noundef nonnull @.str.7, i32 noundef 0) #6
  %13 = load ptr, ptr %11, align 8, !tbaa !62
  tail call void @RNA_boolean_set(ptr noundef %13, ptr noundef nonnull @.str.8, i32 noundef 0) #6
  %14 = load ptr, ptr %11, align 8, !tbaa !62
  tail call void @RNA_boolean_set(ptr noundef %14, ptr noundef nonnull @.str.9, i32 noundef 0) #6
  %15 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef 6, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  %16 = getelementptr inbounds %struct.wmKeyMapItem, ptr %15, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !62
  tail call void @RNA_boolean_set(ptr noundef %17, ptr noundef nonnull @.str.7, i32 noundef 0) #6
  %18 = load ptr, ptr %16, align 8, !tbaa !62
  tail call void @RNA_boolean_set(ptr noundef %18, ptr noundef nonnull @.str.8, i32 noundef 0) #6
  %19 = load ptr, ptr %16, align 8, !tbaa !62
  tail call void @RNA_boolean_set(ptr noundef %19, ptr noundef nonnull @.str.9, i32 noundef 1) #6
  %20 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %21 = getelementptr inbounds %struct.wmKeyMapItem, ptr %20, i64 0, i32 17
  %22 = load ptr, ptr %21, align 8, !tbaa !62
  tail call void @RNA_enum_set(ptr noundef %22, ptr noundef nonnull @.str.11, i32 noundef 0) #6
  %23 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %24 = getelementptr inbounds %struct.wmKeyMapItem, ptr %23, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !62
  tail call void @RNA_enum_set(ptr noundef %25, ptr noundef nonnull @.str.11, i32 noundef 3) #6
  %26 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 108, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %27 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %28 = getelementptr inbounds %struct.wmKeyMapItem, ptr %27, i64 0, i32 17
  %29 = load ptr, ptr %28, align 8, !tbaa !62
  tail call void @RNA_boolean_set(ptr noundef %29, ptr noundef nonnull @.str.8, i32 noundef 0) #6
  %30 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  %31 = getelementptr inbounds %struct.wmKeyMapItem, ptr %30, i64 0, i32 17
  %32 = load ptr, ptr %31, align 8, !tbaa !62
  tail call void @RNA_boolean_set(ptr noundef %32, ptr noundef nonnull @.str.8, i32 noundef 1) #6
  %33 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 98, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %34 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef 99, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %35 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 20486, i32 noundef -1, i32 noundef 6, i32 noundef 0) #6
  %36 = getelementptr inbounds %struct.wmKeyMapItem, ptr %35, i64 0, i32 17
  %37 = load ptr, ptr %36, align 8, !tbaa !62
  tail call void @RNA_boolean_set(ptr noundef %37, ptr noundef nonnull @.str.8, i32 noundef 0) #6
  %38 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 20486, i32 noundef -1, i32 noundef 7, i32 noundef 0) #6
  %39 = getelementptr inbounds %struct.wmKeyMapItem, ptr %38, i64 0, i32 17
  %40 = load ptr, ptr %39, align 8, !tbaa !62
  tail call void @RNA_boolean_set(ptr noundef %40, ptr noundef nonnull @.str.8, i32 noundef 1) #6
  %41 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 164, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %42 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 162, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %43 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef 104, i32 noundef 1, i32 noundef 4, i32 noundef 0) #6
  %44 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef 104, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %45 = getelementptr inbounds %struct.wmKeyMapItem, ptr %44, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !62
  tail call void @RNA_boolean_set(ptr noundef %46, ptr noundef nonnull @.str.21, i32 noundef 0) #6
  %47 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef 104, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  %48 = getelementptr inbounds %struct.wmKeyMapItem, ptr %47, i64 0, i32 17
  %49 = load ptr, ptr %48, align 8, !tbaa !62
  tail call void @RNA_boolean_set(ptr noundef %49, ptr noundef nonnull @.str.21, i32 noundef 1) #6
  %50 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.22, i32 noundef 6, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %51 = getelementptr inbounds %struct.wmKeyMapItem, ptr %50, i64 0, i32 17
  %52 = load ptr, ptr %51, align 8, !tbaa !62
  tail call void @RNA_boolean_set(ptr noundef %52, ptr noundef nonnull @.str.7, i32 noundef 0) #6
  %53 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef 99, i32 noundef 1, i32 noundef 4, i32 noundef 0) #6
  %54 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %55 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %56 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.26, i32 noundef 118, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %57 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef 110, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %58 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef 112, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %59 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.29, i32 noundef 112, i32 noundef 1, i32 noundef 4, i32 noundef 0) #6
  %60 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.30, i32 noundef 105, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %61 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.31, i32 noundef 105, i32 noundef 1, i32 noundef 4, i32 noundef 0) #6
  %62 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef 100, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  %63 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.33, i32 noundef 99, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %64 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.34, i32 noundef 118, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %65 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.35, i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %66 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.36, i32 noundef 103, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %67 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.36, i32 noundef 20487, i32 noundef -1, i32 noundef 0, i32 noundef 0) #6
  %68 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.37, i32 noundef 115, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %69 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.38, i32 noundef 114, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %70 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.39, i32 noundef 115, i32 noundef 1, i32 noundef 4, i32 noundef 0) #6
  %71 = getelementptr inbounds %struct.wmKeyMapItem, ptr %70, i64 0, i32 17
  %72 = load ptr, ptr %71, align 8, !tbaa !62
  tail call void @RNA_enum_set(ptr noundef %72, ptr noundef nonnull @.str.40, i32 noundef 17) #6
  ret void
}

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_keymap_add_menu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_keymap_proportional_cycle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_keymap_proportional_maskmode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_operatormacros_mask() local_unnamed_addr #0 {
  %1 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef 3) #6
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %1, i64 0, i32 3
  store ptr @.str.42, ptr %2, align 8, !tbaa !64
  %3 = tail call ptr @WM_operatortype_macro_define(ptr noundef %1, ptr noundef nonnull @.str.43) #6
  %4 = tail call ptr @WM_operatortype_macro_define(ptr noundef %1, ptr noundef nonnull @.str.24) #6
  %5 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  tail call void @RNA_boolean_set(ptr noundef %6, ptr noundef nonnull @.str.44, i32 noundef 1) #6
  %7 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef 3) #6
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %7, i64 0, i32 3
  store ptr @.str.47, ptr %8, align 8, !tbaa !64
  %9 = tail call ptr @WM_operatortype_macro_define(ptr noundef %7, ptr noundef nonnull @.str.48) #6
  %10 = tail call ptr @WM_operatortype_macro_define(ptr noundef %7, ptr noundef nonnull @.str.24) #6
  %11 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  tail call void @RNA_boolean_set(ptr noundef %12, ptr noundef nonnull @.str.49, i32 noundef 1) #6
  %13 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef 3) #6
  %14 = tail call ptr @WM_operatortype_macro_define(ptr noundef %13, ptr noundef nonnull @.str.52) #6
  %15 = tail call ptr @WM_operatortype_macro_define(ptr noundef %13, ptr noundef nonnull @.str.36) #6
  %16 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  tail call void @RNA_enum_set(ptr noundef %17, ptr noundef nonnull @.str.53, i32 noundef 0) #6
  %18 = load ptr, ptr %16, align 8, !tbaa !67
  tail call void @RNA_boolean_set(ptr noundef %18, ptr noundef nonnull @.str.54, i32 noundef 0) #6
  ret void
}

; Function Attrs: optsize
declare ptr @WM_operatortype_append_macro(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_operatortype_macro_define(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind }

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
!34 = !{!35, !37, i64 72}
!35 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !39, i64 56, !37, i64 72, !37, i64 73, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !41, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !42, i64 96, !42, i64 112, !42, i64 128, !42, i64 144}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!40 = !{!"int", !37, i64 0}
!41 = !{!"short", !37, i64 0}
!42 = !{!"ListBase", !36, i64 0, !36, i64 8}
!43 = !{!35, !36, i64 96}
!44 = !{!45, !36, i64 64}
!45 = !{!"SpaceClip", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !46, i64 36, !46, i64 40, !46, i64 44, !46, i64 48, !46, i64 52, !47, i64 56, !36, i64 64, !48, i64 72, !40, i64 208, !41, i64 212, !41, i64 214, !40, i64 216, !37, i64 220, !46, i64 228, !46, i64 232, !40, i64 236, !37, i64 240, !37, i64 304, !40, i64 368, !41, i64 372, !41, i64 374, !40, i64 376, !40, i64 380, !37, i64 384, !50, i64 392}
!46 = !{!"float", !37, i64 0}
!47 = !{!"MovieClipUser", !40, i64 0, !41, i64 4, !41, i64 6}
!48 = !{!"MovieClipScopes", !41, i64 0, !41, i64 2, !40, i64 4, !40, i64 8, !40, i64 12, !49, i64 16, !36, i64 80, !36, i64 88, !37, i64 96, !41, i64 104, !41, i64 106, !40, i64 108, !36, i64 112, !36, i64 120, !37, i64 128}
!49 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !40, i64 56, !40, i64 60}
!50 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!51 = !{!40, !40, i64 0}
!52 = !{!53, !36, i64 40}
!53 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !40, i64 36, !36, i64 40, !54, i64 48, !36, i64 88, !55, i64 96, !56, i64 5360, !36, i64 10520, !37, i64 10528, !46, i64 10536, !46, i64 10540, !46, i64 10544, !46, i64 10548, !46, i64 10552, !37, i64 10556, !37, i64 10557, !41, i64 10558, !41, i64 10560, !41, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !50, i64 10568}
!54 = !{!"ImageUser", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !41, i64 28, !41, i64 30, !41, i64 32, !41, i64 34, !40, i64 36}
!55 = !{!"Scopes", !40, i64 0, !40, i64 4, !40, i64 8, !46, i64 12, !40, i64 16, !46, i64 20, !46, i64 24, !40, i64 28, !46, i64 32, !40, i64 36, !37, i64 40, !56, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !40, i64 5256, !40, i64 5260}
!56 = !{!"Histogram", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !46, i64 5128, !46, i64 5132, !41, i64 5136, !41, i64 5138, !40, i64 5140, !37, i64 5144}
!57 = !{!"mask_edit.c:zero_v2"}
!58 = !{!46, !46, i64 0}
!59 = !{!"mask_edit.c:copy_v2_v2"}
!60 = !{!61, !36, i64 120}
!61 = !{!"wmKeyMap", !36, i64 0, !36, i64 8, !42, i64 16, !42, i64 32, !37, i64 48, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !36, i64 120, !36, i64 128}
!62 = !{!63, !36, i64 176}
!63 = !{!"wmKeyMapItem", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !37, i64 88, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !41, i64 164, !41, i64 166, !41, i64 168, !41, i64 170, !41, i64 172, !41, i64 174, !36, i64 176}
!64 = !{!65, !36, i64 24}
!65 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !42, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !66, i64 152, !41, i64 184}
!66 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!67 = !{!68, !36, i64 88}
!68 = !{!"wmOperatorTypeMacro", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88}
