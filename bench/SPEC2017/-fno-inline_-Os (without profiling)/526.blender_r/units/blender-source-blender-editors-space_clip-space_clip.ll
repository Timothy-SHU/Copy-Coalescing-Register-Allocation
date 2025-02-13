; ModuleID = 'blender/source/blender/editors/space_clip/space_clip.c'
source_filename = "blender/source/blender/editors/space_clip/space_clip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SpaceType = type { ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.wmNotifier = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
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
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.wmDrag = type { ptr, ptr, i32, i32, ptr, [1024 x i8], double, ptr, float, i32, i32, [200 x i8], i32 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.wmDropBox = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16 }

@.str = private unnamed_addr constant [15 x i8] c"edit_movieclip\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"edit_mask\00", align 1
@clip_context_dir = dso_local global [3 x ptr] [ptr @.str, ptr @.str.1, ptr null], align 16
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"spacetype clip\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Clip\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"spacetype clip region\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"spacetype clip region preview\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"spacetype clip region properties\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"spacetype clip region tools\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"spacetype clip tool properties region\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"spacetype clip channels region\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"initclip\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"header for clip\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"tools for clip\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"tool properties for clip\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"properties for clip\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"channels for clip\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"preview for clip\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"main area for clip\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [13 x i8] c"CLIP_OT_open\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"CLIP_OT_tools\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"CLIP_OT_properties\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"CLIP_OT_track_markers\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"backwards\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"WM_OT_context_toggle_enum\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"data_path\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"space_data.mode\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"value_1\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"TRACKING\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"value_2\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"MASK\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"CLIP_OT_solve_camera\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"CLIP_OT_set_solver_keyframe\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"keyframe\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"CLIP_OT_prefetch\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"Clip Editor\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"CLIP_OT_view_pan\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"CLIP_OT_view_zoom\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"CLIP_OT_view_zoom_in\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"CLIP_OT_view_zoom_out\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"CLIP_OT_view_zoom_ratio\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"ratio\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"CLIP_OT_view_all\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"fit_view\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"CLIP_OT_view_selected\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"CLIP_OT_view_ndof\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"CLIP_OT_frame_jump\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"position\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"CLIP_OT_change_frame\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"CLIP_OT_select\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"CLIP_OT_select_all\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"CLIP_OT_select_border\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"CLIP_OT_select_circle\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"CLIP_MT_select_grouped\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"CLIP_OT_select_lasso\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"deselect\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"CLIP_OT_add_marker_slide\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"CLIP_OT_delete_marker\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"CLIP_OT_slide_marker\00", align 1
@.str.61 = private unnamed_addr constant [24 x i8] c"CLIP_OT_disable_markers\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"CLIP_OT_delete_track\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"CLIP_OT_lock_tracks\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"CLIP_OT_hide_tracks\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"unselected\00", align 1
@.str.66 = private unnamed_addr constant [26 x i8] c"CLIP_OT_hide_tracks_clear\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"CLIP_OT_slide_plane_marker\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"CLIP_OT_keyframe_insert\00", align 1
@.str.69 = private unnamed_addr constant [24 x i8] c"CLIP_OT_keyframe_delete\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"CLIP_OT_join_tracks\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"CLIP_MT_tracking_specials\00", align 1
@.str.72 = private unnamed_addr constant [21 x i8] c"WM_OT_context_toggle\00", align 1
@.str.73 = private unnamed_addr constant [26 x i8] c"space_data.lock_selection\00", align 1
@.str.74 = private unnamed_addr constant [25 x i8] c"space_data.show_disabled\00", align 1
@.str.75 = private unnamed_addr constant [30 x i8] c"space_data.show_marker_search\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"space_data.use_mute_footage\00", align 1
@.str.77 = private unnamed_addr constant [25 x i8] c"CLIP_OT_clear_track_path\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"clear_active\00", align 1
@.str.79 = private unnamed_addr constant [19 x i8] c"CLIP_OT_cursor_set\00", align 1
@.str.80 = private unnamed_addr constant [23 x i8] c"WM_OT_context_set_enum\00", align 1
@.str.81 = private unnamed_addr constant [23 x i8] c"space_data.pivot_point\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.83 = private unnamed_addr constant [20 x i8] c"BOUNDING_BOX_CENTER\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"MEDIAN_POINT\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"CURSOR\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"INDIVIDUAL_ORIGINS\00", align 1
@.str.87 = private unnamed_addr constant [20 x i8] c"CLIP_OT_copy_tracks\00", align 1
@.str.88 = private unnamed_addr constant [21 x i8] c"CLIP_OT_paste_tracks\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"Clip Graph Editor\00", align 1
@.str.90 = private unnamed_addr constant [21 x i8] c"CLIP_OT_graph_select\00", align 1
@.str.91 = private unnamed_addr constant [33 x i8] c"CLIP_OT_graph_select_all_markers\00", align 1
@.str.92 = private unnamed_addr constant [28 x i8] c"CLIP_OT_graph_select_border\00", align 1
@.str.93 = private unnamed_addr constant [27 x i8] c"CLIP_OT_graph_delete_curve\00", align 1
@.str.94 = private unnamed_addr constant [26 x i8] c"CLIP_OT_graph_delete_knot\00", align 1
@.str.95 = private unnamed_addr constant [23 x i8] c"CLIP_OT_graph_view_all\00", align 1
@.str.96 = private unnamed_addr constant [35 x i8] c"CLIP_OT_graph_center_current_frame\00", align 1
@.str.97 = private unnamed_addr constant [28 x i8] c"space_data.lock_time_cursor\00", align 1
@.str.98 = private unnamed_addr constant [30 x i8] c"CLIP_OT_graph_disable_markers\00", align 1
@.str.99 = private unnamed_addr constant [22 x i8] c"Clip Dopesheet Editor\00", align 1
@.str.100 = private unnamed_addr constant [33 x i8] c"CLIP_OT_dopesheet_select_channel\00", align 1
@.str.101 = private unnamed_addr constant [27 x i8] c"CLIP_OT_dopesheet_view_all\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.105 = private unnamed_addr constant [20 x i8] c"clip preview region\00", align 1
@.str.106 = private unnamed_addr constant [21 x i8] c"clip channels region\00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"Mask Editing\00", align 1
@str = private unnamed_addr constant [65 x i8] c"Clip\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_spacetype_clip() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str.2) #9
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 20, ptr %3, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #9
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @clip_new, ptr %5, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @clip_free, ptr %6, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @clip_init, ptr %7, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @clip_duplicate, ptr %8, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @clip_operatortypes, ptr %9, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @clip_keymap, ptr %10, align 8, !tbaa !18
  %11 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 9
  store ptr @clip_listener, ptr %11, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 15
  store ptr @clip_context, ptr %12, align 8, !tbaa !20
  %13 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 14
  store ptr @clip_dropboxes, ptr %13, align 8, !tbaa !21
  %14 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 10
  store ptr @clip_refresh, ptr %14, align 8, !tbaa !22
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %16 = tail call ptr %15(i64 noundef 184, ptr noundef nonnull @.str.4) #9
  %17 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !23
  %18 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 3
  store ptr @clip_main_area_init, ptr %18, align 8, !tbaa !26
  %19 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 5
  store ptr @clip_main_area_draw, ptr %19, align 8, !tbaa !27
  %20 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 6
  store ptr @clip_main_area_listener, ptr %20, align 8, !tbaa !28
  %21 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 20
  store i32 49, ptr %21, align 8, !tbaa !29
  %22 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %16) #9
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %24 = tail call ptr %23(i64 noundef 184, ptr noundef nonnull @.str.5) #9
  %25 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 2
  store i32 7, ptr %25, align 8, !tbaa !23
  %26 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 19
  store i32 240, ptr %26, align 4, !tbaa !30
  %27 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 3
  store ptr @clip_preview_area_init, ptr %27, align 8, !tbaa !26
  %28 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 5
  store ptr @clip_preview_area_draw, ptr %28, align 8, !tbaa !27
  %29 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 6
  store ptr @clip_preview_area_listener, ptr %29, align 8, !tbaa !28
  %30 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 20
  store i32 19, ptr %30, align 8, !tbaa !29
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %24) #9
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %32 = tail call ptr %31(i64 noundef 184, ptr noundef nonnull @.str.6) #9
  %33 = getelementptr inbounds %struct.ARegionType, ptr %32, i64 0, i32 2
  store i32 4, ptr %33, align 8, !tbaa !23
  %34 = getelementptr inbounds %struct.ARegionType, ptr %32, i64 0, i32 18
  store i32 160, ptr %34, align 8, !tbaa !31
  %35 = getelementptr inbounds %struct.ARegionType, ptr %32, i64 0, i32 20
  store i32 17, ptr %35, align 8, !tbaa !29
  %36 = getelementptr inbounds %struct.ARegionType, ptr %32, i64 0, i32 3
  store ptr @clip_properties_area_init, ptr %36, align 8, !tbaa !26
  %37 = getelementptr inbounds %struct.ARegionType, ptr %32, i64 0, i32 5
  store ptr @clip_properties_area_draw, ptr %37, align 8, !tbaa !27
  %38 = getelementptr inbounds %struct.ARegionType, ptr %32, i64 0, i32 6
  store ptr @clip_properties_area_listener, ptr %38, align 8, !tbaa !28
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %32) #9
  tail call void @ED_clip_buttons_register(ptr noundef %32) #9
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %40 = tail call ptr %39(i64 noundef 184, ptr noundef nonnull @.str.7) #9
  %41 = getelementptr inbounds %struct.ARegionType, ptr %40, i64 0, i32 2
  store i32 5, ptr %41, align 8, !tbaa !23
  %42 = getelementptr inbounds %struct.ARegionType, ptr %40, i64 0, i32 18
  store i32 160, ptr %42, align 8, !tbaa !31
  %43 = getelementptr inbounds %struct.ARegionType, ptr %40, i64 0, i32 20
  store i32 17, ptr %43, align 8, !tbaa !29
  %44 = getelementptr inbounds %struct.ARegionType, ptr %40, i64 0, i32 6
  store ptr @clip_props_area_listener, ptr %44, align 8, !tbaa !28
  %45 = getelementptr inbounds %struct.ARegionType, ptr %40, i64 0, i32 3
  store ptr @clip_tools_area_init, ptr %45, align 8, !tbaa !26
  %46 = getelementptr inbounds %struct.ARegionType, ptr %40, i64 0, i32 5
  store ptr @clip_tools_area_draw, ptr %46, align 8, !tbaa !27
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %40) #9
  %47 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %48 = tail call ptr %47(i64 noundef 184, ptr noundef nonnull @.str.8) #9
  %49 = getelementptr inbounds %struct.ARegionType, ptr %48, i64 0, i32 2
  store i32 6, ptr %49, align 8, !tbaa !23
  %50 = getelementptr inbounds %struct.ARegionType, ptr %48, i64 0, i32 18
  store i32 0, ptr %50, align 8, !tbaa !31
  %51 = getelementptr inbounds %struct.ARegionType, ptr %48, i64 0, i32 19
  store i32 120, ptr %51, align 4, !tbaa !30
  %52 = getelementptr inbounds %struct.ARegionType, ptr %48, i64 0, i32 20
  store i32 17, ptr %52, align 8, !tbaa !29
  %53 = getelementptr inbounds %struct.ARegionType, ptr %48, i64 0, i32 6
  store ptr @clip_props_area_listener, ptr %53, align 8, !tbaa !28
  %54 = getelementptr inbounds %struct.ARegionType, ptr %48, i64 0, i32 3
  store ptr @clip_tools_area_init, ptr %54, align 8, !tbaa !26
  %55 = getelementptr inbounds %struct.ARegionType, ptr %48, i64 0, i32 5
  store ptr @clip_tools_area_draw, ptr %55, align 8, !tbaa !27
  tail call void @ED_clip_tool_props_register(ptr noundef %48) #9
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %48) #9
  %56 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %57 = tail call ptr %56(i64 noundef 184, ptr noundef nonnull @.str.4) #9
  %58 = getelementptr inbounds %struct.ARegionType, ptr %57, i64 0, i32 2
  store i32 1, ptr %58, align 8, !tbaa !23
  %59 = getelementptr inbounds %struct.ARegionType, ptr %57, i64 0, i32 19
  store i32 26, ptr %59, align 4, !tbaa !30
  %60 = getelementptr inbounds %struct.ARegionType, ptr %57, i64 0, i32 20
  store i32 83, ptr %60, align 8, !tbaa !29
  %61 = getelementptr inbounds %struct.ARegionType, ptr %57, i64 0, i32 3
  store ptr @clip_header_area_init, ptr %61, align 8, !tbaa !26
  %62 = getelementptr inbounds %struct.ARegionType, ptr %57, i64 0, i32 5
  store ptr @clip_header_area_draw, ptr %62, align 8, !tbaa !27
  %63 = getelementptr inbounds %struct.ARegionType, ptr %57, i64 0, i32 6
  store ptr @clip_header_area_listener, ptr %63, align 8, !tbaa !28
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %57) #9
  tail call void @BKE_spacetype_register(ptr noundef %2) #9
  %64 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %65 = tail call ptr %64(i64 noundef 184, ptr noundef nonnull @.str.9) #9
  %66 = getelementptr inbounds %struct.ARegionType, ptr %65, i64 0, i32 2
  store i32 2, ptr %66, align 8, !tbaa !23
  %67 = getelementptr inbounds %struct.ARegionType, ptr %65, i64 0, i32 18
  store i32 160, ptr %67, align 8, !tbaa !31
  %68 = getelementptr inbounds %struct.ARegionType, ptr %65, i64 0, i32 20
  store i32 17, ptr %68, align 8, !tbaa !29
  %69 = getelementptr inbounds %struct.ARegionType, ptr %65, i64 0, i32 6
  store ptr @clip_channels_area_listener, ptr %69, align 8, !tbaa !28
  %70 = getelementptr inbounds %struct.ARegionType, ptr %65, i64 0, i32 3
  store ptr @clip_channels_area_init, ptr %70, align 8, !tbaa !26
  %71 = getelementptr inbounds %struct.ARegionType, ptr %65, i64 0, i32 5
  store ptr @clip_channels_area_draw, ptr %71, align 8, !tbaa !27
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %65) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @clip_new(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %3 = tail call ptr %2(i64 noundef 408, ptr noundef nonnull @.str.10) #9
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 3
  store i32 20, ptr %4, align 8, !tbaa !32
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  store i32 53265, ptr %5, align 8, !tbaa !39
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 8
  store float 1.000000e+00, ptr %6, align 4, !tbaa !40
  %7 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 15
  store i32 20, ptr %7, align 8, !tbaa !41
  %8 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 11, i32 2
  store i32 120, ptr %8, align 4, !tbaa !42
  %9 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 25
  store i32 2, ptr %9, align 8, !tbaa !43
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %11 = tail call ptr %10(i64 noundef 384, ptr noundef nonnull @.str.11) #9
  %12 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %11) #9
  %13 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 8
  store i16 1, ptr %13, align 2, !tbaa !44
  %14 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 9
  store i16 2, ptr %14, align 8, !tbaa !49
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %16 = tail call ptr %15(i64 noundef 384, ptr noundef nonnull @.str.12) #9
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %16) #9
  %17 = getelementptr inbounds %struct.ARegion, ptr %16, i64 0, i32 8
  store i16 5, ptr %17, align 2, !tbaa !44
  %18 = getelementptr inbounds %struct.ARegion, ptr %16, i64 0, i32 9
  store i16 3, ptr %18, align 8, !tbaa !49
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %20 = tail call ptr %19(i64 noundef 384, ptr noundef nonnull @.str.13) #9
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %20) #9
  %21 = getelementptr inbounds %struct.ARegion, ptr %20, i64 0, i32 8
  store i16 6, ptr %21, align 2, !tbaa !44
  %22 = getelementptr inbounds %struct.ARegion, ptr %20, i64 0, i32 9
  store i16 34, ptr %22, align 8, !tbaa !49
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %24 = tail call ptr %23(i64 noundef 384, ptr noundef nonnull @.str.14) #9
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %24) #9
  %25 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 8
  store i16 4, ptr %25, align 2, !tbaa !44
  %26 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 9
  store i16 4, ptr %26, align 8, !tbaa !49
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %28 = tail call ptr %27(i64 noundef 384, ptr noundef nonnull @.str.15) #9
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %28) #9
  %29 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 8
  store i16 2, ptr %29, align 2, !tbaa !44
  %30 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 9
  store i16 3, ptr %30, align 8, !tbaa !49
  %31 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 9
  store i16 8, ptr %31, align 8, !tbaa !50
  %32 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 14
  store i16 2, ptr %32, align 2, !tbaa !51
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %34 = tail call ptr %33(i64 noundef 384, ptr noundef nonnull @.str.16) #9
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %34) #9
  tail call fastcc void @init_preview_region(ptr noundef %0, ptr noundef %34) #10
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %36 = tail call ptr %35(i64 noundef 384, ptr noundef nonnull @.str.17) #9
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %36) #9
  %37 = getelementptr inbounds %struct.ARegion, ptr %36, i64 0, i32 8
  store i16 0, ptr %37, align 2, !tbaa !44
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clip_free(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  store ptr null, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 11, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @IMB_freeImBuf(ptr noundef nonnull %4) #9
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 11, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @IMB_freeImBuf(ptr noundef nonnull %9) #9
  br label %12

12:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clip_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.3, i32 noundef 20, i32 noundef 0) #9
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 21
  %5 = tail call ptr @WM_event_add_dropbox_handler(ptr noundef nonnull %4, ptr noundef %3) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @clip_duplicate(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
  %3 = tail call ptr %2(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 11
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 11, i32 6
  store i16 0, ptr %4, align 8, !tbaa !55
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clip_operatortypes() #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_open) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_reload) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_view_pan) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_view_zoom) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_view_zoom_in) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_view_zoom_out) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_view_zoom_ratio) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_view_all) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_view_selected) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_change_frame) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_rebuild_proxy) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_mode_set) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_view_ndof) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_prefetch) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_set_scene_frames) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_cursor_set) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_tools) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_properties) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_frame_jump) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_set_center_principal) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_select) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_select_all) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_select_border) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_select_lasso) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_select_circle) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_select_grouped) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_add_marker) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_add_marker_at_click) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_slide_marker) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_delete_track) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_delete_marker) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_track_markers) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_refine_markers) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_solve_camera) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_clear_solution) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_disable_markers) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_hide_tracks) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_hide_tracks_clear) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_lock_tracks) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_set_solver_keyframe) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_set_origin) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_set_plane) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_set_axis) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_set_scale) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_set_solution_scale) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_apply_solution_scale) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_detect_features) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_stabilize_2d_add) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_stabilize_2d_remove) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_stabilize_2d_select) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_stabilize_2d_set_rotation) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_clear_track_path) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_join_tracks) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_track_copy_color) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_clean_tracks) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_tracking_object_new) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_tracking_object_remove) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_copy_tracks) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_paste_tracks) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_create_plane_track) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_slide_plane_marker) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_keyframe_insert) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_keyframe_delete) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_graph_select) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_graph_select_border) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_graph_select_all_markers) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_graph_delete_curve) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_graph_delete_knot) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_graph_view_all) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_graph_center_current_frame) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_graph_disable_markers) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_dopesheet_select_channel) #9
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_dopesheet_view_all) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clip_keymap(ptr noundef %0) #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef 20, i32 noundef 0) #9
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 111, i32 noundef 1, i32 noundef 4, i32 noundef 0) #9
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef 116, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %5 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef 110, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef 137, i32 noundef 1, i32 noundef 4, i32 noundef 0) #9
  %7 = getelementptr inbounds %struct.wmKeyMapItem, ptr %6, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %8, ptr noundef nonnull @.str.22, i32 noundef 1) #9
  %9 = load ptr, ptr %7, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %9, ptr noundef nonnull @.str.23, i32 noundef 0) #9
  %10 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef 139, i32 noundef 1, i32 noundef 4, i32 noundef 0) #9
  %11 = getelementptr inbounds %struct.wmKeyMapItem, ptr %10, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %12, ptr noundef nonnull @.str.22, i32 noundef 0) #9
  %13 = load ptr, ptr %11, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %13, ptr noundef nonnull @.str.23, i32 noundef 0) #9
  %14 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef 116, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %15 = getelementptr inbounds %struct.wmKeyMapItem, ptr %14, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %16, ptr noundef nonnull @.str.22, i32 noundef 0) #9
  %17 = load ptr, ptr %15, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %17, ptr noundef nonnull @.str.23, i32 noundef 1) #9
  %18 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef 116, i32 noundef 1, i32 noundef 3, i32 noundef 0) #9
  %19 = getelementptr inbounds %struct.wmKeyMapItem, ptr %18, i64 0, i32 17
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %20, ptr noundef nonnull @.str.22, i32 noundef 1) #9
  %21 = load ptr, ptr %19, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %21, ptr noundef nonnull @.str.23, i32 noundef 1) #9
  %22 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef 219, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %23 = getelementptr inbounds %struct.wmKeyMapItem, ptr %22, i64 0, i32 17
  %24 = load ptr, ptr %23, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %24, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #9
  %25 = load ptr, ptr %23, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %25, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #9
  %26 = load ptr, ptr %23, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %26, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #9
  %27 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.31, i32 noundef 115, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %28 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef 113, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %29 = getelementptr inbounds %struct.wmKeyMapItem, ptr %28, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %30, ptr noundef nonnull @.str.33, i32 noundef 0) #9
  %31 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef 101, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %32 = getelementptr inbounds %struct.wmKeyMapItem, ptr %31, i64 0, i32 17
  %33 = load ptr, ptr %32, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %33, ptr noundef nonnull @.str.33, i32 noundef 1) #9
  %34 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.34, i32 noundef 112, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %35 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef 20, i32 noundef 0) #9
  %36 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.36, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %37 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.36, i32 noundef 2, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %38 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.36, i32 noundef 14, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %39 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.37, i32 noundef 2, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %40 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.37, i32 noundef 15, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %41 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.37, i32 noundef 14, i32 noundef 0, i32 noundef 2, i32 noundef 0) #9
  %42 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.38, i32 noundef 12, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %43 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.39, i32 noundef 13, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %44 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.38, i32 noundef 164, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %45 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.39, i32 noundef 162, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %46 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.40, i32 noundef 158, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %47 = getelementptr inbounds %struct.wmKeyMapItem, ptr %46, i64 0, i32 17
  %48 = load ptr, ptr %47, align 8, !tbaa !56
  tail call void @RNA_float_set(ptr noundef %48, ptr noundef nonnull @.str.41, float noundef 8.000000e+00) #9
  %49 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.40, i32 noundef 154, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %50 = getelementptr inbounds %struct.wmKeyMapItem, ptr %49, i64 0, i32 17
  %51 = load ptr, ptr %50, align 8, !tbaa !56
  tail call void @RNA_float_set(ptr noundef %51, ptr noundef nonnull @.str.41, float noundef 4.000000e+00) #9
  %52 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.40, i32 noundef 152, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %53 = getelementptr inbounds %struct.wmKeyMapItem, ptr %52, i64 0, i32 17
  %54 = load ptr, ptr %53, align 8, !tbaa !56
  tail call void @RNA_float_set(ptr noundef %54, ptr noundef nonnull @.str.41, float noundef 2.000000e+00) #9
  %55 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.40, i32 noundef 158, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %56 = getelementptr inbounds %struct.wmKeyMapItem, ptr %55, i64 0, i32 17
  %57 = load ptr, ptr %56, align 8, !tbaa !56
  tail call void @RNA_float_set(ptr noundef %57, ptr noundef nonnull @.str.41, float noundef 8.000000e+00) #9
  %58 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.40, i32 noundef 154, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %59 = getelementptr inbounds %struct.wmKeyMapItem, ptr %58, i64 0, i32 17
  %60 = load ptr, ptr %59, align 8, !tbaa !56
  tail call void @RNA_float_set(ptr noundef %60, ptr noundef nonnull @.str.41, float noundef 4.000000e+00) #9
  %61 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.40, i32 noundef 152, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %62 = getelementptr inbounds %struct.wmKeyMapItem, ptr %61, i64 0, i32 17
  %63 = load ptr, ptr %62, align 8, !tbaa !56
  tail call void @RNA_float_set(ptr noundef %63, ptr noundef nonnull @.str.41, float noundef 2.000000e+00) #9
  %64 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.40, i32 noundef 151, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %65 = getelementptr inbounds %struct.wmKeyMapItem, ptr %64, i64 0, i32 17
  %66 = load ptr, ptr %65, align 8, !tbaa !56
  tail call void @RNA_float_set(ptr noundef %66, ptr noundef nonnull @.str.41, float noundef 1.000000e+00) #9
  %67 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.40, i32 noundef 152, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %68 = getelementptr inbounds %struct.wmKeyMapItem, ptr %67, i64 0, i32 17
  %69 = load ptr, ptr %68, align 8, !tbaa !56
  tail call void @RNA_float_set(ptr noundef %69, ptr noundef nonnull @.str.41, float noundef 5.000000e-01) #9
  %70 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.40, i32 noundef 154, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %71 = getelementptr inbounds %struct.wmKeyMapItem, ptr %70, i64 0, i32 17
  %72 = load ptr, ptr %71, align 8, !tbaa !56
  tail call void @RNA_float_set(ptr noundef %72, ptr noundef nonnull @.str.41, float noundef 2.500000e-01) #9
  %73 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.40, i32 noundef 158, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %74 = getelementptr inbounds %struct.wmKeyMapItem, ptr %73, i64 0, i32 17
  %75 = load ptr, ptr %74, align 8, !tbaa !56
  tail call void @RNA_float_set(ptr noundef %75, ptr noundef nonnull @.str.41, float noundef 1.250000e-01) #9
  %76 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.42, i32 noundef 167, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %77 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.42, i32 noundef 102, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %78 = getelementptr inbounds %struct.wmKeyMapItem, ptr %77, i64 0, i32 17
  %79 = load ptr, ptr %78, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %79, ptr noundef nonnull @.str.43, i32 noundef 1) #9
  %80 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.44, i32 noundef 199, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %81 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.42, i32 noundef 402, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %82 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.45, i32 noundef 400, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %83 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.46, i32 noundef 137, i32 noundef 1, i32 noundef 3, i32 noundef 0) #9
  %84 = getelementptr inbounds %struct.wmKeyMapItem, ptr %83, i64 0, i32 17
  %85 = load ptr, ptr %84, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %85, ptr noundef nonnull @.str.47, i32 noundef 0) #9
  %86 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.46, i32 noundef 139, i32 noundef 1, i32 noundef 3, i32 noundef 0) #9
  %87 = getelementptr inbounds %struct.wmKeyMapItem, ptr %86, i64 0, i32 17
  %88 = load ptr, ptr %87, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %88, ptr noundef nonnull @.str.47, i32 noundef 1) #9
  %89 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.46, i32 noundef 137, i32 noundef 1, i32 noundef 5, i32 noundef 0) #9
  %90 = getelementptr inbounds %struct.wmKeyMapItem, ptr %89, i64 0, i32 17
  %91 = load ptr, ptr %90, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %91, ptr noundef nonnull @.str.47, i32 noundef 2) #9
  %92 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.46, i32 noundef 139, i32 noundef 1, i32 noundef 5, i32 noundef 0) #9
  %93 = getelementptr inbounds %struct.wmKeyMapItem, ptr %92, i64 0, i32 17
  %94 = load ptr, ptr %93, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %94, ptr noundef nonnull @.str.47, i32 noundef 3) #9
  %95 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.48, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %96 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.49, i32 noundef 6, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %97 = getelementptr inbounds %struct.wmKeyMapItem, ptr %96, i64 0, i32 17
  %98 = load ptr, ptr %97, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %98, ptr noundef nonnull @.str.50, i32 noundef 0) #9
  %99 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.49, i32 noundef 6, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %100 = getelementptr inbounds %struct.wmKeyMapItem, ptr %99, i64 0, i32 17
  %101 = load ptr, ptr %100, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %101, ptr noundef nonnull @.str.50, i32 noundef 1) #9
  %102 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.51, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %103 = getelementptr inbounds %struct.wmKeyMapItem, ptr %102, i64 0, i32 17
  %104 = load ptr, ptr %103, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %104, ptr noundef nonnull @.str.52, i32 noundef 0) #9
  %105 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.51, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %106 = getelementptr inbounds %struct.wmKeyMapItem, ptr %105, i64 0, i32 17
  %107 = load ptr, ptr %106, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %107, ptr noundef nonnull @.str.52, i32 noundef 3) #9
  %108 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.53, i32 noundef 98, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %109 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.54, i32 noundef 99, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %110 = tail call ptr @WM_keymap_add_menu(ptr noundef %35, ptr noundef nonnull @.str.55, i32 noundef 103, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %111 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.56, i32 noundef 20486, i32 noundef -1, i32 noundef 6, i32 noundef 0) #9
  %112 = getelementptr inbounds %struct.wmKeyMapItem, ptr %111, i64 0, i32 17
  %113 = load ptr, ptr %112, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %113, ptr noundef nonnull @.str.57, i32 noundef 0) #9
  %114 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.56, i32 noundef 20486, i32 noundef -1, i32 noundef 7, i32 noundef 0) #9
  %115 = getelementptr inbounds %struct.wmKeyMapItem, ptr %114, i64 0, i32 17
  %116 = load ptr, ptr %115, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %116, ptr noundef nonnull @.str.57, i32 noundef 1) #9
  %117 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.58, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %118 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.59, i32 noundef 224, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %119 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.59, i32 noundef 120, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %120 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.60, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %121 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.61, i32 noundef 100, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %122 = getelementptr inbounds %struct.wmKeyMapItem, ptr %121, i64 0, i32 17
  %123 = load ptr, ptr %122, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %123, ptr noundef nonnull @.str.52, i32 noundef 2) #9
  %124 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.62, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %125 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.62, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %126 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.63, i32 noundef 108, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %127 = getelementptr inbounds %struct.wmKeyMapItem, ptr %126, i64 0, i32 17
  %128 = load ptr, ptr %127, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %128, ptr noundef nonnull @.str.52, i32 noundef 0) #9
  %129 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.63, i32 noundef 108, i32 noundef 1, i32 noundef 4, i32 noundef 0) #9
  %130 = getelementptr inbounds %struct.wmKeyMapItem, ptr %129, i64 0, i32 17
  %131 = load ptr, ptr %130, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %131, ptr noundef nonnull @.str.52, i32 noundef 1) #9
  %132 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.64, i32 noundef 104, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %133 = getelementptr inbounds %struct.wmKeyMapItem, ptr %132, i64 0, i32 17
  %134 = load ptr, ptr %133, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %134, ptr noundef nonnull @.str.65, i32 noundef 0) #9
  %135 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.64, i32 noundef 104, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %136 = getelementptr inbounds %struct.wmKeyMapItem, ptr %135, i64 0, i32 17
  %137 = load ptr, ptr %136, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %137, ptr noundef nonnull @.str.65, i32 noundef 1) #9
  %138 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.66, i32 noundef 104, i32 noundef 1, i32 noundef 4, i32 noundef 0) #9
  %139 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.67, i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %140 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.68, i32 noundef 105, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %141 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.69, i32 noundef 105, i32 noundef 1, i32 noundef 4, i32 noundef 0) #9
  %142 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.70, i32 noundef 106, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %143 = tail call ptr @WM_keymap_add_menu(ptr noundef %35, ptr noundef nonnull @.str.71, i32 noundef 119, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %144 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.72, i32 noundef 108, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %145 = getelementptr inbounds %struct.wmKeyMapItem, ptr %144, i64 0, i32 17
  %146 = load ptr, ptr %145, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %146, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.73) #9
  %147 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.72, i32 noundef 100, i32 noundef 1, i32 noundef 4, i32 noundef 0) #9
  %148 = getelementptr inbounds %struct.wmKeyMapItem, ptr %147, i64 0, i32 17
  %149 = load ptr, ptr %148, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %149, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.74) #9
  %150 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.72, i32 noundef 115, i32 noundef 1, i32 noundef 4, i32 noundef 0) #9
  %151 = getelementptr inbounds %struct.wmKeyMapItem, ptr %150, i64 0, i32 17
  %152 = load ptr, ptr %151, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %152, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.75) #9
  %153 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.72, i32 noundef 109, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %154 = getelementptr inbounds %struct.wmKeyMapItem, ptr %153, i64 0, i32 17
  %155 = load ptr, ptr %154, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %155, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.76) #9
  tail call void @transform_keymap_for_space(ptr noundef %0, ptr noundef %35, i32 noundef 20) #9
  %156 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.77, i32 noundef 116, i32 noundef 1, i32 noundef 4, i32 noundef 0) #9
  %157 = getelementptr inbounds %struct.wmKeyMapItem, ptr %156, i64 0, i32 17
  %158 = load ptr, ptr %157, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %158, ptr noundef nonnull @.str.52, i32 noundef 1) #9
  %159 = load ptr, ptr %157, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %159, ptr noundef nonnull @.str.78, i32 noundef 0) #9
  %160 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.77, i32 noundef 116, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %161 = getelementptr inbounds %struct.wmKeyMapItem, ptr %160, i64 0, i32 17
  %162 = load ptr, ptr %161, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %162, ptr noundef nonnull @.str.52, i32 noundef 0) #9
  %163 = load ptr, ptr %161, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %163, ptr noundef nonnull @.str.78, i32 noundef 0) #9
  %164 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.77, i32 noundef 116, i32 noundef 1, i32 noundef 5, i32 noundef 0) #9
  %165 = getelementptr inbounds %struct.wmKeyMapItem, ptr %164, i64 0, i32 17
  %166 = load ptr, ptr %165, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %166, ptr noundef nonnull @.str.52, i32 noundef 2) #9
  %167 = load ptr, ptr %165, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %167, ptr noundef nonnull @.str.78, i32 noundef 0) #9
  %168 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.79, i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %169 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.80, i32 noundef 227, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %170 = getelementptr inbounds %struct.wmKeyMapItem, ptr %169, i64 0, i32 17
  %171 = load ptr, ptr %170, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %171, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.81) #9
  %172 = load ptr, ptr %170, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %172, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83) #9
  %173 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.80, i32 noundef 227, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %174 = getelementptr inbounds %struct.wmKeyMapItem, ptr %173, i64 0, i32 17
  %175 = load ptr, ptr %174, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %175, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.81) #9
  %176 = load ptr, ptr %174, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %176, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.84) #9
  %177 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.80, i32 noundef 226, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %178 = getelementptr inbounds %struct.wmKeyMapItem, ptr %177, i64 0, i32 17
  %179 = load ptr, ptr %178, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %179, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.81) #9
  %180 = load ptr, ptr %178, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %180, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.85) #9
  %181 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.80, i32 noundef 226, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %182 = getelementptr inbounds %struct.wmKeyMapItem, ptr %181, i64 0, i32 17
  %183 = load ptr, ptr %182, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %183, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.81) #9
  %184 = load ptr, ptr %182, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %184, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.86) #9
  %185 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.87, i32 noundef 99, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %186 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.88, i32 noundef 118, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %187 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.89, i32 noundef 20, i32 noundef 0) #9
  %188 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.48, i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %189 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.90, i32 noundef 6, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %190 = getelementptr inbounds %struct.wmKeyMapItem, ptr %189, i64 0, i32 17
  %191 = load ptr, ptr %190, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %191, ptr noundef nonnull @.str.50, i32 noundef 0) #9
  %192 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.90, i32 noundef 6, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %193 = getelementptr inbounds %struct.wmKeyMapItem, ptr %192, i64 0, i32 17
  %194 = load ptr, ptr %193, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %194, ptr noundef nonnull @.str.50, i32 noundef 1) #9
  %195 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.91, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %196 = getelementptr inbounds %struct.wmKeyMapItem, ptr %195, i64 0, i32 17
  %197 = load ptr, ptr %196, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %197, ptr noundef nonnull @.str.52, i32 noundef 0) #9
  %198 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.91, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %199 = getelementptr inbounds %struct.wmKeyMapItem, ptr %198, i64 0, i32 17
  %200 = load ptr, ptr %199, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %200, ptr noundef nonnull @.str.52, i32 noundef 3) #9
  %201 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.92, i32 noundef 98, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %202 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.93, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %203 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.93, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %204 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.94, i32 noundef 224, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %205 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.94, i32 noundef 120, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %206 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.95, i32 noundef 167, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %207 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.95, i32 noundef 402, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %208 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.96, i32 noundef 199, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %209 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.72, i32 noundef 108, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %210 = getelementptr inbounds %struct.wmKeyMapItem, ptr %209, i64 0, i32 17
  %211 = load ptr, ptr %210, align 8, !tbaa !56
  tail call void @RNA_string_set(ptr noundef %211, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.97) #9
  %212 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.77, i32 noundef 116, i32 noundef 1, i32 noundef 4, i32 noundef 0) #9
  %213 = getelementptr inbounds %struct.wmKeyMapItem, ptr %212, i64 0, i32 17
  %214 = load ptr, ptr %213, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %214, ptr noundef nonnull @.str.52, i32 noundef 1) #9
  %215 = load ptr, ptr %213, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %215, ptr noundef nonnull @.str.78, i32 noundef 1) #9
  %216 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.77, i32 noundef 116, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %217 = getelementptr inbounds %struct.wmKeyMapItem, ptr %216, i64 0, i32 17
  %218 = load ptr, ptr %217, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %218, ptr noundef nonnull @.str.52, i32 noundef 0) #9
  %219 = load ptr, ptr %217, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %219, ptr noundef nonnull @.str.78, i32 noundef 1) #9
  %220 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.77, i32 noundef 116, i32 noundef 1, i32 noundef 5, i32 noundef 0) #9
  %221 = getelementptr inbounds %struct.wmKeyMapItem, ptr %220, i64 0, i32 17
  %222 = load ptr, ptr %221, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %222, ptr noundef nonnull @.str.52, i32 noundef 2) #9
  %223 = load ptr, ptr %221, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %223, ptr noundef nonnull @.str.78, i32 noundef 1) #9
  %224 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.98, i32 noundef 100, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  %225 = getelementptr inbounds %struct.wmKeyMapItem, ptr %224, i64 0, i32 17
  %226 = load ptr, ptr %225, align 8, !tbaa !56
  tail call void @RNA_enum_set(ptr noundef %226, ptr noundef nonnull @.str.52, i32 noundef 2) #9
  tail call void @transform_keymap_for_space(ptr noundef %0, ptr noundef %187, i32 noundef 20) #9
  %227 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.99, i32 noundef 20, i32 noundef 0) #9
  %228 = tail call ptr @WM_keymap_add_item(ptr noundef %227, ptr noundef nonnull @.str.100, i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %229 = getelementptr inbounds %struct.wmKeyMapItem, ptr %228, i64 0, i32 17
  %230 = load ptr, ptr %229, align 8, !tbaa !56
  tail call void @RNA_boolean_set(ptr noundef %230, ptr noundef nonnull @.str.50, i32 noundef 1) #9
  %231 = tail call ptr @WM_keymap_add_item(ptr noundef %227, ptr noundef nonnull @.str.101, i32 noundef 167, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %232 = tail call ptr @WM_keymap_add_item(ptr noundef %227, ptr noundef nonnull @.str.101, i32 noundef 402, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clip_listener(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !58
  switch i32 %5, label %46 [
    i32 67108864, label %6
    i32 335544320, label %10
    i32 352321536, label %19
    i32 268435456, label %26
    i32 50331648, label %31
    i32 251658240, label %35
    i32 369098752, label %40
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !60
  switch i32 %8, label %46 [
    i32 196608, label %9
    i32 1114112, label %45
  ]

9:                                                ; preds = %6
  tail call fastcc void @clip_scopes_tag_refresh(ptr noundef %1) #10
  br label %45

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !60
  switch i32 %12, label %14 [
    i32 3342336, label %13
    i32 5898240, label %13
  ]

13:                                               ; preds = %10, %10
  tail call fastcc void @clip_scopes_tag_refresh(ptr noundef %1) #10
  tail call void @ED_area_tag_redraw(ptr noundef %1) #9
  br label %14

14:                                               ; preds = %10, %13
  %15 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %16 = load i32, ptr %15, align 8, !tbaa !61
  switch i32 %16, label %46 [
    i32 4, label %17
    i32 1, label %17
    i32 2, label %17
    i32 6, label %18
  ]

17:                                               ; preds = %14, %14, %14
  tail call fastcc void @clip_stabilization_tag_refresh(ptr noundef %1) #10
  br label %18

18:                                               ; preds = %14, %17
  tail call fastcc void @clip_scopes_tag_refresh(ptr noundef %1) #10
  br label %45

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !60
  switch i32 %21, label %23 [
    i32 5898240, label %22
    i32 5963776, label %22
    i32 1507328, label %22
  ]

22:                                               ; preds = %19, %19, %19
  tail call void @ED_area_tag_redraw(ptr noundef %1) #9
  br label %23

23:                                               ; preds = %19, %22
  %24 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %25 = load i32, ptr %24, align 8, !tbaa !61
  switch i32 %25, label %46 [
    i32 6, label %45
    i32 1, label %45
  ]

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !60
  %29 = icmp eq i32 %28, 5898240
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  tail call fastcc void @clip_scopes_tag_refresh(ptr noundef %1) #10
  br label %45

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !60
  %34 = icmp eq i32 %33, 262144
  br i1 %34, label %45, label %46

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %37 = load i32, ptr %36, align 8, !tbaa !60
  %38 = icmp eq i32 %37, 1245184
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  tail call fastcc void @clip_scopes_tag_refresh(ptr noundef %1) #10
  tail call fastcc void @clip_stabilization_tag_refresh(ptr noundef %1) #10
  br label %45

40:                                               ; preds = %3
  %41 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %42 = load i32, ptr %41, align 8, !tbaa !61
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  tail call fastcc void @clip_scopes_check_gpencil_change(ptr noundef %1) #10
  br label %45

45:                                               ; preds = %31, %23, %23, %9, %6, %18, %30, %39, %44
  tail call void @ED_area_tag_redraw(ptr noundef %1) #9
  br label %46

46:                                               ; preds = %45, %40, %35, %31, %26, %23, %14, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @clip_context(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %5 = tail call zeroext i8 @CTX_data_dir(ptr noundef %1) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @CTX_data_dir_set(ptr noundef %2, ptr noundef nonnull @clip_context_dir) #9
  br label %24

8:                                                ; preds = %3
  %9 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str) #9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef nonnull %13) #9
  br label %24

16:                                               ; preds = %8
  %17 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.1) #9
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 28
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef nonnull %21) #9
  br label %24

24:                                               ; preds = %16, %19, %23, %11, %15, %7
  %25 = phi i32 [ 1, %7 ], [ 1, %15 ], [ 1, %11 ], [ 1, %23 ], [ 1, %19 ], [ 0, %16 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clip_dropboxes() #0 {
  %1 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.3, i32 noundef 20, i32 noundef 0) #9
  %2 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @clip_drop_poll, ptr noundef nonnull @clip_drop_copy) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clip_refresh(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #9
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = tail call ptr @BKE_area_find_region_type(ptr noundef %1, i32 noundef 0) #9
  %9 = tail call ptr @BKE_area_find_region_type(ptr noundef %1, i32 noundef 5) #9
  %10 = tail call ptr @BKE_area_find_region_type(ptr noundef %1, i32 noundef 6) #9
  %11 = tail call fastcc ptr @ED_clip_has_preview_region(ptr noundef %0, ptr noundef %1) #10
  %12 = tail call ptr @ED_clip_has_properties_region(ptr noundef %1) #9
  %13 = tail call fastcc ptr @ED_clip_has_channels_region(ptr noundef %1) #10
  %14 = getelementptr inbounds %struct.SpaceClip, ptr %7, i64 0, i32 14
  %15 = load i16, ptr %14, align 2, !tbaa !65
  switch i16 %15, label %37 [
    i16 0, label %17
    i16 1, label %35
    i16 2, label %16
  ]

16:                                               ; preds = %2
  br label %35

17:                                               ; preds = %2
  %18 = icmp eq ptr %8, null
  br i1 %18, label %58, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 10
  %21 = load i16, ptr %20, align 2, !tbaa !66
  %22 = and i16 %21, 1
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = and i16 %21, -2
  store i16 %25, ptr %20, align 2, !tbaa !66
  %26 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2, i32 14
  %27 = load i16, ptr %26, align 2, !tbaa !51
  %28 = and i16 %27, -1025
  store i16 %28, ptr %26, align 2, !tbaa !51
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i8 [ 0, %19 ], [ 1, %24 ]
  %31 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 9
  %32 = load i16, ptr %31, align 8, !tbaa !49
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %58, label %34

34:                                               ; preds = %29
  store i16 0, ptr %31, align 8, !tbaa !49
  br label %58

35:                                               ; preds = %2, %16
  %36 = phi i1 [ false, %16 ], [ true, %2 ]
  tail call fastcc void @reinit_preview_region(ptr noundef %0, ptr noundef %11) #10
  br label %37

37:                                               ; preds = %35, %2
  %38 = phi i1 [ true, %2 ], [ false, %35 ]
  %39 = phi i1 [ true, %2 ], [ %36, %35 ]
  %40 = icmp eq ptr %8, null
  br i1 %40, label %77, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 10
  %43 = load i16, ptr %42, align 2, !tbaa !66
  %44 = and i16 %43, 1
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = or disjoint i16 %43, 1
  store i16 %47, ptr %42, align 2, !tbaa !66
  %48 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2, i32 14
  %49 = load i16, ptr %48, align 2, !tbaa !51
  %50 = and i16 %49, -1025
  store i16 %50, ptr %48, align 2, !tbaa !51
  %51 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 26
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %51) #9
  br label %52

52:                                               ; preds = %46, %41
  %53 = phi i8 [ 1, %46 ], [ 0, %41 ]
  %54 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 9
  %55 = load i16, ptr %54, align 8, !tbaa !49
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %77, label %57

57:                                               ; preds = %52
  store i16 0, ptr %54, align 8, !tbaa !49
  br label %77

58:                                               ; preds = %34, %29, %17
  %59 = phi i8 [ 1, %34 ], [ %30, %29 ], [ 0, %17 ]
  %60 = icmp eq ptr %12, null
  br i1 %60, label %97, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 10
  %63 = load i16, ptr %62, align 2, !tbaa !66
  %64 = and i16 %63, 1
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = and i16 %63, -2
  store i16 %67, ptr %62, align 2, !tbaa !66
  %68 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 14
  %69 = load i16, ptr %68, align 2, !tbaa !51
  %70 = and i16 %69, -1025
  store i16 %70, ptr %68, align 2, !tbaa !51
  br label %71

71:                                               ; preds = %66, %61
  %72 = phi i8 [ %59, %61 ], [ 1, %66 ]
  %73 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 9
  %74 = load i16, ptr %73, align 8, !tbaa !49
  %75 = icmp eq i16 %74, 4
  br i1 %75, label %97, label %76

76:                                               ; preds = %71
  store i16 4, ptr %73, align 8, !tbaa !49
  br label %97

77:                                               ; preds = %57, %52, %37
  %78 = phi i8 [ 0, %37 ], [ %53, %52 ], [ 1, %57 ]
  %79 = icmp eq ptr %12, null
  br i1 %79, label %116, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 10
  %82 = load i16, ptr %81, align 2, !tbaa !66
  %83 = and i16 %82, 1
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = or disjoint i16 %82, 1
  store i16 %86, ptr %81, align 2, !tbaa !66
  %87 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 2, i32 14
  %88 = load i16, ptr %87, align 2, !tbaa !51
  %89 = and i16 %88, -1025
  store i16 %89, ptr %87, align 2, !tbaa !51
  %90 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 26
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %90) #9
  br label %91

91:                                               ; preds = %85, %80
  %92 = phi i8 [ 1, %85 ], [ %78, %80 ]
  %93 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 9
  %94 = load i16, ptr %93, align 8, !tbaa !49
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %116, label %96

96:                                               ; preds = %91
  store i16 0, ptr %93, align 8, !tbaa !49
  br label %116

97:                                               ; preds = %76, %71, %58
  %98 = phi i8 [ 1, %76 ], [ %72, %71 ], [ %59, %58 ]
  %99 = icmp eq ptr %9, null
  br i1 %99, label %136, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 10
  %102 = load i16, ptr %101, align 2, !tbaa !66
  %103 = and i16 %102, 1
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = and i16 %102, -2
  store i16 %106, ptr %101, align 2, !tbaa !66
  %107 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 2, i32 14
  %108 = load i16, ptr %107, align 2, !tbaa !51
  %109 = and i16 %108, -1025
  store i16 %109, ptr %107, align 2, !tbaa !51
  br label %110

110:                                              ; preds = %105, %100
  %111 = phi i8 [ %98, %100 ], [ 1, %105 ]
  %112 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 9
  %113 = load i16, ptr %112, align 8, !tbaa !49
  %114 = icmp eq i16 %113, 3
  br i1 %114, label %136, label %115

115:                                              ; preds = %110
  store i16 3, ptr %112, align 8, !tbaa !49
  br label %136

116:                                              ; preds = %96, %91, %77
  %117 = phi i8 [ %78, %77 ], [ %92, %91 ], [ 1, %96 ]
  %118 = icmp eq ptr %9, null
  br i1 %118, label %155, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 10
  %121 = load i16, ptr %120, align 2, !tbaa !66
  %122 = and i16 %121, 1
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = or disjoint i16 %121, 1
  store i16 %125, ptr %120, align 2, !tbaa !66
  %126 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 2, i32 14
  %127 = load i16, ptr %126, align 2, !tbaa !51
  %128 = and i16 %127, -1025
  store i16 %128, ptr %126, align 2, !tbaa !51
  %129 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 26
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %129) #9
  br label %130

130:                                              ; preds = %124, %119
  %131 = phi i8 [ 1, %124 ], [ %117, %119 ]
  %132 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 9
  %133 = load i16, ptr %132, align 8, !tbaa !49
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %155, label %135

135:                                              ; preds = %130
  store i16 0, ptr %132, align 8, !tbaa !49
  br label %155

136:                                              ; preds = %115, %110, %97
  %137 = phi i8 [ 1, %115 ], [ %111, %110 ], [ %98, %97 ]
  %138 = icmp eq ptr %10, null
  br i1 %138, label %198, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 10
  %141 = load i16, ptr %140, align 2, !tbaa !66
  %142 = and i16 %141, 1
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %139
  %145 = and i16 %141, -2
  store i16 %145, ptr %140, align 2, !tbaa !66
  %146 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2, i32 14
  %147 = load i16, ptr %146, align 2, !tbaa !51
  %148 = and i16 %147, -1025
  store i16 %148, ptr %146, align 2, !tbaa !51
  br label %149

149:                                              ; preds = %144, %139
  %150 = phi i8 [ %137, %139 ], [ 1, %144 ]
  %151 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 9
  %152 = load i16, ptr %151, align 8, !tbaa !49
  %153 = icmp eq i16 %152, 34
  br i1 %153, label %198, label %154

154:                                              ; preds = %149
  store i16 34, ptr %151, align 8, !tbaa !49
  br label %198

155:                                              ; preds = %135, %130, %116
  %156 = phi i8 [ %117, %116 ], [ %131, %130 ], [ 1, %135 ]
  %157 = icmp eq ptr %10, null
  br i1 %157, label %175, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 10
  %160 = load i16, ptr %159, align 2, !tbaa !66
  %161 = and i16 %160, 1
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = or disjoint i16 %160, 1
  store i16 %164, ptr %159, align 2, !tbaa !66
  %165 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2, i32 14
  %166 = load i16, ptr %165, align 2, !tbaa !51
  %167 = and i16 %166, -1025
  store i16 %167, ptr %165, align 2, !tbaa !51
  %168 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 26
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %168) #9
  br label %169

169:                                              ; preds = %163, %158
  %170 = phi i8 [ 1, %163 ], [ %156, %158 ]
  %171 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 9
  %172 = load i16, ptr %171, align 8, !tbaa !49
  %173 = icmp eq i16 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %169
  store i16 0, ptr %171, align 8, !tbaa !49
  br i1 %38, label %198, label %177

175:                                              ; preds = %155, %169
  %176 = phi i8 [ %170, %169 ], [ %156, %155 ]
  br i1 %38, label %198, label %177

177:                                              ; preds = %174, %175
  %178 = phi i8 [ 1, %174 ], [ %176, %175 ]
  %179 = icmp eq ptr %11, null
  br i1 %179, label %219, label %180

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 10
  %182 = load i16, ptr %181, align 2, !tbaa !66
  %183 = and i16 %182, 1
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %192, label %185

185:                                              ; preds = %180
  %186 = and i16 %182, -2
  store i16 %186, ptr %181, align 2, !tbaa !66
  %187 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2
  %188 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2, i32 14
  %189 = load i16, ptr %188, align 2, !tbaa !51
  %190 = and i16 %189, -1025
  store i16 %190, ptr %188, align 2, !tbaa !51
  %191 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %191, ptr noundef nonnull align 8 dereferenceable(16) %187, i64 16, i1 false), !tbaa.struct !67
  br label %192

192:                                              ; preds = %185, %180
  %193 = phi i8 [ %178, %180 ], [ 1, %185 ]
  %194 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 9
  %195 = load i16, ptr %194, align 8, !tbaa !49
  %196 = icmp eq i16 %195, 0
  br i1 %196, label %219, label %197

197:                                              ; preds = %192
  store i16 0, ptr %194, align 8, !tbaa !49
  br i1 %39, label %241, label %222

198:                                              ; preds = %136, %149, %154, %174, %175
  %199 = phi i8 [ %176, %175 ], [ 1, %174 ], [ %137, %136 ], [ %150, %149 ], [ 1, %154 ]
  %200 = phi i1 [ %39, %175 ], [ %39, %174 ], [ true, %136 ], [ true, %149 ], [ true, %154 ]
  %201 = icmp eq ptr %11, null
  br i1 %201, label %219, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 10
  %204 = load i16, ptr %203, align 2, !tbaa !66
  %205 = and i16 %204, 1
  %206 = icmp eq i16 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %202
  %208 = or disjoint i16 %204, 1
  store i16 %208, ptr %203, align 2, !tbaa !66
  %209 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2, i32 14
  %210 = load i16, ptr %209, align 2, !tbaa !51
  %211 = and i16 %210, -1025
  store i16 %211, ptr %209, align 2, !tbaa !51
  %212 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 26
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %212) #9
  br label %213

213:                                              ; preds = %207, %202
  %214 = phi i8 [ 1, %207 ], [ %199, %202 ]
  %215 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 9
  %216 = load i16, ptr %215, align 8, !tbaa !49
  %217 = icmp eq i16 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %213
  store i16 0, ptr %215, align 8, !tbaa !49
  br i1 %200, label %241, label %222

219:                                              ; preds = %198, %177, %213, %192
  %220 = phi i1 [ %39, %192 ], [ %200, %213 ], [ %39, %177 ], [ %200, %198 ]
  %221 = phi i8 [ %193, %192 ], [ %214, %213 ], [ %178, %177 ], [ %199, %198 ]
  br i1 %220, label %241, label %222

222:                                              ; preds = %218, %197, %219
  %223 = phi i8 [ 1, %197 ], [ %221, %219 ], [ 1, %218 ]
  %224 = icmp eq ptr %13, null
  br i1 %224, label %261, label %225

225:                                              ; preds = %222
  %226 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 10
  %227 = load i16, ptr %226, align 2, !tbaa !66
  %228 = and i16 %227, 1
  %229 = icmp eq i16 %228, 0
  br i1 %229, label %235, label %230

230:                                              ; preds = %225
  %231 = and i16 %227, -2
  store i16 %231, ptr %226, align 2, !tbaa !66
  %232 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2, i32 14
  %233 = load i16, ptr %232, align 2, !tbaa !51
  %234 = and i16 %233, -1025
  store i16 %234, ptr %232, align 2, !tbaa !51
  br label %235

235:                                              ; preds = %230, %225
  %236 = phi i8 [ %223, %225 ], [ 1, %230 ]
  %237 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 9
  %238 = load i16, ptr %237, align 8, !tbaa !49
  %239 = icmp eq i16 %238, 3
  br i1 %239, label %261, label %240

240:                                              ; preds = %235
  store i16 3, ptr %237, align 8, !tbaa !49
  br label %264

241:                                              ; preds = %218, %197, %219
  %242 = phi i8 [ 1, %197 ], [ %221, %219 ], [ 1, %218 ]
  %243 = icmp eq ptr %13, null
  br i1 %243, label %261, label %244

244:                                              ; preds = %241
  %245 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 10
  %246 = load i16, ptr %245, align 2, !tbaa !66
  %247 = and i16 %246, 1
  %248 = icmp eq i16 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %244
  %250 = or disjoint i16 %246, 1
  store i16 %250, ptr %245, align 2, !tbaa !66
  %251 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 2, i32 14
  %252 = load i16, ptr %251, align 2, !tbaa !51
  %253 = and i16 %252, -1025
  store i16 %253, ptr %251, align 2, !tbaa !51
  %254 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 26
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %254) #9
  br label %255

255:                                              ; preds = %249, %244
  %256 = phi i8 [ 1, %249 ], [ %242, %244 ]
  %257 = getelementptr inbounds %struct.ARegion, ptr %13, i64 0, i32 9
  %258 = load i16, ptr %257, align 8, !tbaa !49
  %259 = icmp eq i16 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %255
  store i16 0, ptr %257, align 8, !tbaa !49
  br label %264

261:                                              ; preds = %241, %222, %255, %235
  %262 = phi i8 [ %236, %235 ], [ %256, %255 ], [ %223, %222 ], [ %242, %241 ]
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %260, %240, %261
  tail call void @ED_area_initialize(ptr noundef %3, ptr noundef %4, ptr noundef nonnull %1) #9
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #9
  br label %265

265:                                              ; preds = %264, %261
  %266 = getelementptr inbounds %struct.SpaceClip, ptr %7, i64 0, i32 9
  %267 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 5
  %268 = load i32, ptr %267, align 8, !tbaa !69
  tail call void @BKE_movieclip_user_set_frame(ptr noundef nonnull %266, i32 noundef %268) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clip_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !88
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !89
  %9 = sext i16 %8 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext 0, i32 noundef %6, i32 noundef %9) #9
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.107, i32 noundef 0, i32 noundef 0) #9
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %16 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %12, ptr noundef nonnull %14, ptr noundef nonnull %15) #9
  %17 = load ptr, ptr %10, align 8, !tbaa !90
  %18 = tail call ptr @WM_keymap_find(ptr noundef %17, ptr noundef nonnull @.str.3, i32 noundef 20, i32 noundef 0) #9
  %19 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %18, ptr noundef nonnull %14, ptr noundef nonnull %15) #9
  %20 = load ptr, ptr %10, align 8, !tbaa !90
  %21 = tail call ptr @WM_keymap_find(ptr noundef %20, ptr noundef nonnull @.str.35, i32 noundef 20, i32 noundef 0) #9
  %22 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %21, ptr noundef nonnull %14, ptr noundef nonnull %15) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clip_main_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %14 = tail call ptr @ED_space_clip_get_clip(ptr noundef %13) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  %15 = icmp ne ptr %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.MovieClip, ptr %14, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !93
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.SpaceClip, ptr %13, i64 0, i32 9
  tail call void @BKE_tracking_context_sync_user(ptr noundef nonnull %18, ptr noundef nonnull %21) #9
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct.SpaceClip, ptr %13, i64 0, i32 12
  %24 = load i32, ptr %23, align 8, !tbaa !39
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %53, label %32

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.SpaceClip, ptr %13, i64 0, i32 12
  %29 = load i32, ptr %28, align 8, !tbaa !39
  %30 = and i32 %29, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %53, label %39

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.MovieClip, ptr %14, i64 0, i32 11, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !102
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = tail call ptr @ED_space_clip_get_stable_buffer(ptr noundef nonnull %13, ptr noundef null, ptr noundef null, ptr noundef null) #9
  br label %39

39:                                               ; preds = %27, %37, %32
  %40 = phi ptr [ %23, %37 ], [ %23, %32 ], [ %28, %27 ]
  %41 = phi ptr [ %38, %37 ], [ null, %32 ], [ null, %27 ]
  %42 = tail call zeroext i8 @ED_clip_view_selection(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #9
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.SpaceClip, ptr %13, i64 0, i32 6
  %46 = getelementptr inbounds %struct.SpaceClip, ptr %13, i64 0, i32 4
  %47 = load <2 x float>, ptr %45, align 4, !tbaa !68
  %48 = load <2 x float>, ptr %46, align 4, !tbaa !68
  %49 = fadd <2 x float> %47, %48
  store <2 x float> %49, ptr %46, align 4, !tbaa !68
  br label %50

50:                                               ; preds = %44, %39
  %51 = icmp eq ptr %41, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %50
  tail call void @IMB_freeImBuf(ptr noundef nonnull %41) #9
  br label %53

53:                                               ; preds = %27, %50, %52, %22
  %54 = phi ptr [ %28, %27 ], [ %40, %50 ], [ %40, %52 ], [ %23, %22 ]
  tail call void @UI_ThemeClearColor(i32 noundef 2) #9
  tail call void @glClear(i32 noundef 16384) #9
  tail call fastcc void @movieclip_main_area_set_view2d(ptr noundef %0, ptr noundef %1) #10
  tail call void @clip_draw_main(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %1) #9
  %55 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @UI_view2d_view_to_region_fl(ptr noundef nonnull %55, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %7, ptr noundef nonnull %8) #9
  call void @ED_space_clip_get_size(ptr noundef nonnull %13, ptr noundef nonnull %9, ptr noundef nonnull %10) #9
  call void @ED_space_clip_get_zoom(ptr noundef nonnull %13, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  call void @ED_space_clip_get_aspect(ptr noundef nonnull %13, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %56 = getelementptr inbounds %struct.SpaceClip, ptr %13, i64 0, i32 13
  %57 = load i16, ptr %56, align 4, !tbaa !103
  %58 = icmp eq i16 %57, 3
  br i1 %58, label %59, label %76

59:                                               ; preds = %53
  %60 = call ptr @CTX_data_edit_mask(ptr noundef %0) #9
  %61 = icmp ne ptr %60, null
  %62 = and i1 %15, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = call ptr @CTX_wm_area(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  call void @ED_mask_get_size(ptr noundef %64, ptr noundef nonnull %11, ptr noundef nonnull %12) #9
  %65 = getelementptr inbounds %struct.SpaceClip, ptr %13, i64 0, i32 28, i32 1
  %66 = load i8, ptr %65, align 8, !tbaa !104
  %67 = getelementptr inbounds %struct.SpaceClip, ptr %13, i64 0, i32 28, i32 2
  %68 = load i8, ptr %67, align 1, !tbaa !105
  %69 = getelementptr inbounds %struct.SpaceClip, ptr %13, i64 0, i32 28, i32 3
  %70 = load i8, ptr %69, align 2, !tbaa !106
  %71 = load i32, ptr %11, align 4, !tbaa !107
  %72 = load i32, ptr %12, align 4, !tbaa !107
  %73 = load float, ptr %3, align 4, !tbaa !68
  %74 = load float, ptr %4, align 4, !tbaa !68
  %75 = getelementptr inbounds %struct.SpaceClip, ptr %13, i64 0, i32 20
  call void @ED_mask_draw_region(ptr noundef nonnull %60, ptr noundef %1, i8 noundef zeroext %66, i8 noundef zeroext %68, i8 noundef zeroext %70, i32 noundef %71, i32 noundef %72, float noundef %73, float noundef %74, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %75, ptr noundef %0) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  br label %76

76:                                               ; preds = %59, %63, %53
  %77 = load i16, ptr %56, align 4, !tbaa !103
  %78 = icmp eq i16 %77, 3
  %79 = getelementptr inbounds %struct.SpaceClip, ptr %13, i64 0, i32 25
  %80 = load i32, ptr %79, align 8, !tbaa !43
  %81 = icmp eq i32 %80, 1
  %82 = or i1 %78, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %76
  call void @glPushMatrix() #9
  %84 = load float, ptr %7, align 4, !tbaa !68
  %85 = load float, ptr %8, align 4, !tbaa !68
  call void @glTranslatef(float noundef %84, float noundef %85, float noundef 0.000000e+00) #9
  %86 = load float, ptr %5, align 4, !tbaa !68
  %87 = load float, ptr %6, align 4, !tbaa !68
  call void @glScalef(float noundef %86, float noundef %87, float noundef 0.000000e+00) #9
  %88 = getelementptr inbounds %struct.SpaceClip, ptr %13, i64 0, i32 20
  call void @glMultMatrixf(ptr noundef nonnull %88) #9
  %89 = load i32, ptr %9, align 4, !tbaa !107
  %90 = sitofp i32 %89 to float
  %91 = load i32, ptr %10, align 4, !tbaa !107
  %92 = sitofp i32 %91 to float
  call void @glScalef(float noundef %90, float noundef %92, float noundef 0.000000e+00) #9
  %93 = getelementptr inbounds %struct.SpaceClip, ptr %13, i64 0, i32 27
  call void @draw_image_cursor(ptr noundef %1, ptr noundef nonnull %93) #9
  call void @glPopMatrix() #9
  br label %94

94:                                               ; preds = %83, %76
  call void @clip_draw_cache_and_notes(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %1) #9
  %95 = load i32, ptr %54, align 8, !tbaa !39
  %96 = and i32 %95, 4096
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  call void @clip_draw_grease_pencil(ptr noundef %0, i32 noundef 1) #9
  br label %99

99:                                               ; preds = %98, %94
  call void @UI_view2d_view_restore(ptr noundef %0) #9
  %100 = load i32, ptr %54, align 8, !tbaa !39
  %101 = and i32 %100, 4096
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  call void @clip_draw_grease_pencil(ptr noundef %0, i32 noundef 0) #9
  br label %104

104:                                              ; preds = %103, %99
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clip_main_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !58
  %7 = icmp eq i32 %6, 369098752
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !61
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @ED_region_tag_redraw(ptr noundef %2) #9
  br label %13

13:                                               ; preds = %8, %12, %4
  ret void
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clip_preview_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !88
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !89
  %9 = sext i16 %8 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext -1, i32 noundef %6, i32 noundef %9) #9
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef 20, i32 noundef 0) #9
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %16 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %12, ptr noundef nonnull %14, ptr noundef nonnull %15) #9
  %17 = load ptr, ptr %10, align 8, !tbaa !90
  %18 = tail call ptr @WM_keymap_find(ptr noundef %17, ptr noundef nonnull @.str.89, i32 noundef 20, i32 noundef 0) #9
  %19 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %18, ptr noundef nonnull %14, ptr noundef nonnull %15) #9
  %20 = load ptr, ptr %10, align 8, !tbaa !90
  %21 = tail call ptr @WM_keymap_find(ptr noundef %20, ptr noundef nonnull @.str.99, i32 noundef 20, i32 noundef 0) #9
  %22 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %21, ptr noundef nonnull %14, ptr noundef nonnull %15) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clip_preview_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 14
  %5 = load i16, ptr %4, align 2, !tbaa !65
  switch i16 %5, label %8 [
    i16 1, label %6
    i16 2, label %7
  ]

6:                                                ; preds = %2
  tail call fastcc void @graph_area_draw(ptr noundef %0, ptr noundef %1) #10
  br label %8

7:                                                ; preds = %2
  tail call fastcc void @dopesheet_area_draw(ptr noundef %0, ptr noundef %1) #10
  br label %8

8:                                                ; preds = %2, %7, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @clip_preview_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #3 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clip_properties_area_init(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #9
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef 20, i32 noundef 0) #9
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %5) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clip_properties_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 9
  %7 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 11
  tail call void @BKE_movieclip_update_scopes(ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef -1) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clip_properties_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !58
  switch i32 %6, label %16 [
    i32 369098752, label %7
    i32 184549376, label %11
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !60
  %10 = icmp eq i32 %9, 5963776
  br i1 %10, label %15, label %16

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !61
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %7
  tail call void @ED_region_tag_redraw(ptr noundef %2) #9
  br label %16

16:                                               ; preds = %15, %11, %7, %4
  ret void
}

; Function Attrs: optsize
declare void @ED_clip_buttons_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clip_props_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !58
  switch i32 %6, label %24 [
    i32 16777216, label %7
    i32 67108864, label %11
    i32 251658240, label %15
    i32 369098752, label %19
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !60
  %10 = icmp eq i32 %9, 262144
  br i1 %10, label %23, label %24

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !60
  %14 = icmp eq i32 %13, 720896
  br i1 %14, label %23, label %24

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !60
  %18 = icmp eq i32 %17, 1245184
  br i1 %18, label %23, label %24

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %21 = load i32, ptr %20, align 8, !tbaa !61
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %15, %11, %7
  tail call void @ED_region_tag_redraw(ptr noundef %2) #9
  br label %24

24:                                               ; preds = %23, %19, %15, %11, %7, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clip_tools_area_init(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #9
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef 20, i32 noundef 0) #9
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %5) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clip_tools_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef -1) #9
  ret void
}

; Function Attrs: optsize
declare void @ED_clip_tool_props_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clip_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @ED_region_header_init(ptr noundef %1) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clip_header_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clip_header_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !58
  %7 = icmp eq i32 %6, 67108864
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !60
  %11 = icmp eq i32 %10, 983040
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @ED_region_tag_redraw(ptr noundef %2) #9
  br label %13

13:                                               ; preds = %12, %8, %4
  ret void
}

; Function Attrs: optsize
declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @clip_channels_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #3 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clip_channels_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  store i16 8, ptr %4, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %6 = load i16, ptr %5, align 8, !tbaa !88
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %9 = load i16, ptr %8, align 2, !tbaa !89
  %10 = sext i16 %9 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext 1, i32 noundef %7, i32 noundef %10) #9
  %11 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !90
  %13 = tail call ptr @WM_keymap_find(ptr noundef %12, ptr noundef nonnull @.str.99, i32 noundef 20, i32 noundef 0) #9
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %16 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %17 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %14, ptr noundef %13, ptr noundef nonnull %15, ptr noundef nonnull %16) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clip_channels_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  tail call void @BKE_tracking_dopesheet_update(ptr noundef nonnull %7) #9
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @UI_ThemeClearColor(i32 noundef 2) #9
  tail call void @glClear(i32 noundef 16384) #9
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %9) #9
  tail call void @clip_draw_dopesheet_channels(ptr noundef %0, ptr noundef %1) #9
  tail call void @UI_view2d_view_restore(ptr noundef %0) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_preview_region(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 8
  store i16 7, ptr %6, align 2, !tbaa !44
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 9
  store i16 1, ptr %7, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 10
  %9 = load i16, ptr %8, align 2, !tbaa !66
  %10 = or i16 %9, 1
  store i16 %10, ptr %8, align 2, !tbaa !66
  %11 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 14
  %12 = load i16, ptr %11, align 2, !tbaa !65
  %13 = icmp eq i16 %12, 2
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  br i1 %13, label %15, label %31

15:                                               ; preds = %2
  store float -1.000000e+01, ptr %14, align 8, !tbaa !108
  %16 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 11
  %17 = load i16, ptr %16, align 4, !tbaa !109
  %18 = sext i16 %17 to i32
  %19 = sub nsw i32 0, %18
  %20 = sitofp i32 %19 to float
  %21 = fdiv float %20, 3.000000e+00
  %22 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 2
  store float %21, ptr %22, align 8, !tbaa !110
  %23 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 10
  %24 = load i16, ptr %23, align 2, !tbaa !111
  %25 = sitofp i16 %24 to float
  %26 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 1
  store float %25, ptr %26, align 4, !tbaa !112
  %27 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 3
  store float 0.000000e+00, ptr %27, align 4, !tbaa !113
  %28 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !67
  %29 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 5
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 3.000000e+05, float 0x47EFFFFFE0000000>, ptr %29, align 8, !tbaa !68
  %30 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 7
  store float 0x3F847AE140000000, ptr %30, align 8, !tbaa !114
  br label %41

31:                                               ; preds = %2
  store float 0.000000e+00, ptr %14, align 8, !tbaa !108
  %32 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 2
  %33 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 7
  %34 = load i32, ptr %33, align 8, !tbaa !115
  %35 = sitofp i32 %34 to float
  %36 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 1
  store float %35, ptr %36, align 4, !tbaa !112
  store <2 x float> <float -1.000000e+01, float 1.000000e+01>, ptr %32, align 8, !tbaa !68
  %37 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !67
  %38 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 5
  store <4 x float> <float 0x3810000000000000, float 0x3810000000000000, float 3.000000e+05, float 0x47EFFFFFE0000000>, ptr %38, align 8, !tbaa !68
  %39 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 7
  store float 0.000000e+00, ptr %39, align 8, !tbaa !114
  %40 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 11
  store i16 0, ptr %40, align 4, !tbaa !116
  br label %41

41:                                               ; preds = %31, %15
  %42 = phi float [ 5.000000e+01, %15 ], [ 0.000000e+00, %31 ]
  %43 = phi i16 [ 74, %15 ], [ 105, %31 ]
  %44 = phi <4 x i16> [ <i16 512, i16 16, i16 2, i16 4>, %15 ], [ zeroinitializer, %31 ]
  %45 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 8
  store float %42, ptr %45, align 4
  %46 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  store i16 %43, ptr %46, align 8
  %47 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 12
  store <4 x i16> %44, ptr %47, align 2
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_dropboxmap_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_dropbox_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CLIP_OT_open(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_reload(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_view_pan(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_view_zoom(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_view_zoom_in(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_view_zoom_out(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_view_zoom_ratio(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_view_all(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_view_selected(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_change_frame(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_rebuild_proxy(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_mode_set(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_view_ndof(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_prefetch(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_set_scene_frames(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_cursor_set(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_tools(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_properties(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_frame_jump(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_set_center_principal(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_select(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_select_all(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_select_border(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_select_lasso(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_select_circle(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_select_grouped(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_add_marker(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_add_marker_at_click(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_slide_marker(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_delete_track(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_delete_marker(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_track_markers(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_refine_markers(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_solve_camera(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_clear_solution(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_disable_markers(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_hide_tracks(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_hide_tracks_clear(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_lock_tracks(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_set_solver_keyframe(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_set_origin(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_set_plane(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_set_axis(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_set_scale(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_set_solution_scale(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_apply_solution_scale(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_detect_features(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_stabilize_2d_add(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_stabilize_2d_remove(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_stabilize_2d_select(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_stabilize_2d_set_rotation(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_clear_track_path(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_join_tracks(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_track_copy_color(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_clean_tracks(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_tracking_object_new(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_tracking_object_remove(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_copy_tracks(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_paste_tracks(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_create_plane_track(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_slide_plane_marker(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_keyframe_insert(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_keyframe_delete(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_graph_select(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_graph_select_border(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_graph_select_all_markers(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_graph_delete_curve(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_graph_delete_knot(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_graph_view_all(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_graph_center_current_frame(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_graph_disable_markers(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_dopesheet_select_channel(ptr noundef) #2

; Function Attrs: optsize
declare void @CLIP_OT_dopesheet_view_all(ptr noundef) #2

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_keymap_add_menu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @transform_keymap_for_space(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @clip_scopes_tag_refresh(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 4, !tbaa !103
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %7, %21
  %12 = phi ptr [ %22, %21 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 8
  %14 = load i16, ptr %13, align 2, !tbaa !44
  %15 = icmp eq i16 %14, 4
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ARegion, ptr %12, i64 0, i32 10
  %18 = load i16, ptr %17, align 2, !tbaa !66
  %19 = and i16 %18, 1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %11, %16
  %22 = load ptr, ptr %12, align 8, !tbaa !5
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %11, !llvm.loop !117

24:                                               ; preds = %21, %7
  %25 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 11
  store i16 0, ptr %25, align 8, !tbaa !55
  br label %26

26:                                               ; preds = %16, %1, %24
  ret void
}

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clip_stabilization_tag_refresh(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 5, i32 9
  store i32 0, ptr %7, align 8, !tbaa !119
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @clip_scopes_check_gpencil_change(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 23
  %5 = load i16, ptr %4, align 4, !tbaa !120
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call fastcc void @clip_scopes_tag_refresh(ptr noundef nonnull %0) #10
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: optsize
declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CTX_data_dir(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_data_dir_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CTX_data_equals(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_data_id_pointer_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_dropbox_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal noundef i32 @clip_drop_poll(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #6 {
  %4 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !121
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !124
  switch i32 %9, label %10 [
    i32 0, label %11
    i32 696, label %11
    i32 697, label %11
    i32 694, label %11
  ]

10:                                               ; preds = %7, %3
  br label %11

11:                                               ; preds = %7, %7, %7, %7, %10
  %12 = phi i32 [ 0, %10 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ], [ 1, %7 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @clip_drop_copy(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #11
  %6 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 5
  call void @BLI_split_dirfile(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5, i64 noundef 1024, i64 noundef 1024) #9
  %7 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !125
  call void @RNA_string_set(ptr noundef %8, ptr noundef nonnull @.str.102, ptr noundef nonnull %4) #9
  %9 = load ptr, ptr %7, align 8, !tbaa !125
  call void @RNA_collection_clear(ptr noundef %9, ptr noundef nonnull @.str.103) #9
  %10 = load ptr, ptr %7, align 8, !tbaa !125
  call void @RNA_collection_add(ptr noundef %10, ptr noundef nonnull @.str.103, ptr noundef nonnull %3) #9
  call void @RNA_string_set(ptr noundef nonnull %3, ptr noundef nonnull @.str.104, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: optsize
declare void @BLI_split_dirfile(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_collection_clear(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_collection_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ED_clip_has_preview_region(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @BKE_area_find_region_type(ptr noundef %1, i32 noundef 7) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = tail call ptr @BKE_area_find_region_type(ptr noundef %1, i32 noundef 0) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %10 = tail call ptr %9(i64 noundef 384, ptr noundef nonnull @.str.105) #9
  %11 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %11, ptr noundef nonnull %6, ptr noundef %10) #9
  tail call fastcc void @init_preview_region(ptr noundef %0, ptr noundef %10) #10
  br label %12

12:                                               ; preds = %5, %2, %8
  %13 = phi ptr [ %10, %8 ], [ %3, %2 ], [ null, %5 ]
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @ED_clip_has_properties_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ED_clip_has_channels_region(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 2) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %15

4:                                                ; preds = %1
  %5 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 7) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %9 = tail call ptr %8(i64 noundef 384, ptr noundef nonnull @.str.106) #9
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef %9) #9
  %11 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 8
  store i16 2, ptr %11, align 2, !tbaa !44
  %12 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 9
  store i16 3, ptr %12, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 2, i32 9
  store i16 8, ptr %13, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 2, i32 14
  store i16 2, ptr %14, align 2, !tbaa !51
  br label %15

15:                                               ; preds = %4, %1, %7
  %16 = phi ptr [ %9, %7 ], [ %2, %1 ], [ null, %4 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reinit_preview_region(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 14
  %5 = load i16, ptr %4, align 2, !tbaa !65
  %6 = icmp eq i16 %5, 2
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 14
  %8 = load i16, ptr %7, align 2, !tbaa !51
  %9 = and i16 %8, 2
  %10 = icmp eq i16 %9, 0
  br i1 %6, label %11, label %12

11:                                               ; preds = %2
  br i1 %10, label %13, label %14

12:                                               ; preds = %2
  br i1 %10, label %14, label %13

13:                                               ; preds = %12, %11
  tail call fastcc void @init_preview_region(ptr noundef %0, ptr noundef nonnull %1) #10
  br label %14

14:                                               ; preds = %13, %12, %11
  ret void
}

; Function Attrs: optsize
declare void @WM_event_remove_handlers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_initialize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_movieclip_user_set_frame(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_region_reinit(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_keymap_handler_bb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_tracking_context_sync_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_space_clip_get_stable_buffer(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_clip_view_selection(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeClearColor(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glClear(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @movieclip_main_area_set_view2d(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  call void @ED_space_clip_get_size(ptr noundef %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  call void @ED_space_clip_get_aspect(ptr noundef %7, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %8 = load i32, ptr %5, align 4, !tbaa !107
  %9 = load float, ptr %3, align 4, !tbaa !68
  %10 = load i32, ptr %6, align 4, !tbaa !107
  %11 = load float, ptr %4, align 4, !tbaa !68
  %12 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %13 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %12) #10
  %14 = add nsw i32 %13, 1
  %15 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %12) #10
  %16 = add nsw i32 %15, 1
  %17 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  store float 0.000000e+00, ptr %17, align 8, !tbaa !108
  %18 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 2
  store float 0.000000e+00, ptr %18, align 8, !tbaa !110
  %19 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 1
  %20 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 3
  %21 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %22 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4, i32 2
  store i32 0, ptr %22, align 8, !tbaa !127
  store i32 0, ptr %21, align 8, !tbaa !128
  %23 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4, i32 1
  store i32 %14, ptr %23, align 4, !tbaa !129
  %24 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4, i32 3
  store i32 %16, ptr %24, align 4, !tbaa !130
  %25 = load i32, ptr %12, align 8, !tbaa !131
  %26 = sitofp i32 %25 to float
  %27 = sitofp i32 %14 to float
  %28 = getelementptr inbounds %struct.SpaceClip, ptr %7, i64 0, i32 8
  %29 = load float, ptr %28, align 4, !tbaa !40
  %30 = fneg float %29
  %31 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !132
  %33 = sitofp i32 %32 to float
  %34 = sitofp i32 %16 to float
  %35 = getelementptr inbounds %struct.SpaceClip, ptr %7, i64 0, i32 4
  %36 = load float, ptr %35, align 4, !tbaa !133
  %37 = getelementptr inbounds %struct.SpaceClip, ptr %7, i64 0, i32 5
  %38 = load float, ptr %37, align 8, !tbaa !134
  %39 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %40 = insertelement <2 x i32> poison, i32 %8, i64 0
  %41 = insertelement <2 x i32> %40, i32 %10, i64 1
  %42 = sitofp <2 x i32> %41 to <2 x float>
  %43 = insertelement <2 x float> poison, float %9, i64 0
  %44 = insertelement <2 x float> %43, float %11, i64 1
  %45 = fmul <2 x float> %44, %42
  %46 = shufflevector <2 x float> %45, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %47 = extractelement <2 x float> %45, i64 0
  store float %47, ptr %19, align 4, !tbaa !112
  %48 = extractelement <2 x float> %45, i64 1
  store float %48, ptr %20, align 4, !tbaa !113
  %49 = call float @llvm.fmuladd.f32(float %30, float %47, float %27)
  %50 = fmul float %49, 5.000000e-01
  %51 = fadd float %50, %26
  %52 = call float @llvm.fmuladd.f32(float %30, float %48, float %34)
  %53 = fmul float %52, 5.000000e-01
  %54 = fadd float %53, %33
  %55 = call float @llvm.fmuladd.f32(float %30, float %36, float %51)
  %56 = call float @llvm.fmuladd.f32(float %30, float %38, float %54)
  %57 = fsub float %26, %55
  %58 = insertelement <2 x float> poison, float %27, i64 0
  %59 = insertelement <2 x float> %58, float %57, i64 1
  %60 = insertelement <2 x float> poison, float %29, i64 0
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %62 = fdiv <2 x float> %59, %61
  %63 = shufflevector <2 x float> %62, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %64 = fadd <2 x float> %62, %63
  %65 = shufflevector <2 x float> %64, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %66 = fsub float %33, %56
  %67 = insertelement <2 x float> poison, float %34, i64 0
  %68 = insertelement <2 x float> %67, float %66, i64 1
  %69 = fdiv <2 x float> %68, %61
  %70 = shufflevector <2 x float> %69, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %71 = fadd <2 x float> %69, %70
  %72 = shufflevector <2 x float> %71, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %73 = shufflevector <2 x float> %62, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %74 = shufflevector <4 x float> %73, <4 x float> %65, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %75 = shufflevector <2 x float> %69, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %76 = shufflevector <4 x float> %74, <4 x float> %75, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %77 = shufflevector <4 x float> %76, <4 x float> %72, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %78 = fdiv <4 x float> %77, %46
  store <4 x float> %78, ptr %39, align 8, !tbaa !68
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret void
}

; Function Attrs: optsize
declare void @clip_draw_main(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_view_to_region_fl(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_space_clip_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_space_clip_get_zoom(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_space_clip_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_mask_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_mask_draw_region(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, float noundef, float noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glMultMatrixf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @draw_image_cursor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @clip_draw_cache_and_notes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @clip_draw_grease_pencil(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_view_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !135
  %4 = load i32, ptr %0, align 4, !tbaa !136
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !137
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !138
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @graph_area_draw(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %6 = load i32, ptr %5, align 8, !tbaa !39
  %7 = and i32 %6, 131072
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @ED_clip_graph_center_current_frame(ptr noundef %4, ptr noundef %1) #9
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @UI_ThemeClearColor(i32 noundef 2) #9
  tail call void @glClear(i32 noundef 16384) #9
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %11) #9
  tail call void @clip_draw_graph(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %4) #9
  tail call void @UI_view2d_view_restore(ptr noundef %0) #9
  %12 = load i32, ptr %5, align 8, !tbaa !39
  %13 = and i32 %12, 262144
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i16
  %16 = tail call ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr noundef nonnull %11, i16 noundef signext %15, i16 noundef signext 0, i16 noundef signext 3, i16 noundef signext 0) #9
  tail call void @UI_view2d_scrollers_draw(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %16) #9
  tail call void @UI_view2d_scrollers_free(ptr noundef %16) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dopesheet_area_draw(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %5 = tail call ptr @ED_space_clip_get_clip(ptr noundef %4) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11
  tail call void @BKE_tracking_dopesheet_update(ptr noundef nonnull %8) #9
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @UI_ThemeClearColor(i32 noundef 2) #9
  tail call void @glClear(i32 noundef 16384) #9
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %10) #9
  %11 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 12
  %12 = load i32, ptr %11, align 8, !tbaa !39
  %13 = and i32 %12, 262144
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i16
  %16 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %17 = load i16, ptr %16, align 8, !tbaa !88
  %18 = sext i16 %17 to i32
  %19 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %20 = load i16, ptr %19, align 2, !tbaa !89
  %21 = sext i16 %20 to i32
  %22 = tail call ptr @UI_view2d_grid_calc(ptr noundef %3, ptr noundef nonnull %10, i16 noundef signext %15, i16 noundef signext 1, i16 noundef signext -1, i16 noundef signext -1, i32 noundef %18, i32 noundef %21) #9
  tail call void @UI_view2d_grid_draw(ptr noundef nonnull %10, ptr noundef %22, i32 noundef 31) #9
  tail call void @UI_view2d_grid_free(ptr noundef %22) #9
  tail call void @clip_draw_dopesheet_main(ptr noundef %4, ptr noundef %1, ptr noundef %3) #9
  tail call void @UI_view2d_view_restore(ptr noundef %0) #9
  %23 = tail call ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr noundef nonnull %10, i16 noundef signext %15, i16 noundef signext 1, i16 noundef signext -1, i16 noundef signext -1) #9
  tail call void @UI_view2d_scrollers_draw(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %23) #9
  tail call void @UI_view2d_scrollers_free(ptr noundef %23) #9
  ret void
}

; Function Attrs: optsize
declare void @ED_clip_graph_center_current_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_view_ortho(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @clip_draw_graph(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @UI_view2d_scrollers_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_scrollers_draw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_scrollers_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_tracking_dopesheet_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @UI_view2d_grid_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_grid_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_grid_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @clip_draw_dopesheet_main(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_panels_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_keymap_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_movieclip_update_scopes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_panels(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_header_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_header(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @clip_draw_dopesheet_channels(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 80}
!10 = !{!"SpaceType", !6, i64 0, !6, i64 8, !7, i64 16, !11, i64 80, !11, i64 84, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !12, i64 176, !12, i64 192, !11, i64 208}
!11 = !{!"int", !7, i64 0}
!12 = !{!"ListBase", !6, i64 0, !6, i64 8}
!13 = !{!10, !6, i64 88}
!14 = !{!10, !6, i64 96}
!15 = !{!10, !6, i64 104}
!16 = !{!10, !6, i64 136}
!17 = !{!10, !6, i64 144}
!18 = !{!10, !6, i64 152}
!19 = !{!10, !6, i64 120}
!20 = !{!10, !6, i64 168}
!21 = !{!10, !6, i64 160}
!22 = !{!10, !6, i64 128}
!23 = !{!24, !11, i64 16}
!24 = !{!"ARegionType", !6, i64 0, !6, i64 8, !11, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !12, i64 104, !12, i64 120, !12, i64 136, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !11, i64 168, !25, i64 172, !25, i64 174, !25, i64 176}
!25 = !{!"short", !7, i64 0}
!26 = !{!24, !6, i64 24}
!27 = !{!24, !6, i64 40}
!28 = !{!24, !6, i64 48}
!29 = !{!24, !11, i64 168}
!30 = !{!24, !11, i64 164}
!31 = !{!24, !11, i64 160}
!32 = !{!33, !11, i64 32}
!33 = !{!"SpaceClip", !6, i64 0, !6, i64 8, !12, i64 16, !11, i64 32, !34, i64 36, !34, i64 40, !34, i64 44, !34, i64 48, !34, i64 52, !35, i64 56, !6, i64 64, !36, i64 72, !11, i64 208, !25, i64 212, !25, i64 214, !11, i64 216, !7, i64 220, !34, i64 228, !34, i64 232, !11, i64 236, !7, i64 240, !7, i64 304, !11, i64 368, !25, i64 372, !25, i64 374, !11, i64 376, !11, i64 380, !7, i64 384, !38, i64 392}
!34 = !{!"float", !7, i64 0}
!35 = !{!"MovieClipUser", !11, i64 0, !25, i64 4, !25, i64 6}
!36 = !{!"MovieClipScopes", !25, i64 0, !25, i64 2, !11, i64 4, !11, i64 8, !11, i64 12, !37, i64 16, !6, i64 80, !6, i64 88, !7, i64 96, !25, i64 104, !25, i64 106, !11, i64 108, !6, i64 112, !6, i64 120, !7, i64 128}
!37 = !{!"MovieTrackingMarker", !7, i64 0, !7, i64 8, !7, i64 40, !7, i64 48, !11, i64 56, !11, i64 60}
!38 = !{!"MaskSpaceInfo", !6, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11}
!39 = !{!33, !11, i64 208}
!40 = !{!33, !34, i64 52}
!41 = !{!33, !11, i64 216}
!42 = !{!33, !11, i64 76}
!43 = !{!33, !11, i64 376}
!44 = !{!45, !25, i64 214}
!45 = !{!"ARegion", !6, i64 0, !6, i64 8, !46, i64 16, !48, i64 176, !48, i64 192, !25, i64 208, !25, i64 210, !25, i64 212, !25, i64 214, !25, i64 216, !25, i64 218, !34, i64 220, !25, i64 224, !25, i64 226, !25, i64 228, !25, i64 230, !25, i64 232, !25, i64 234, !25, i64 236, !25, i64 238, !6, i64 240, !12, i64 248, !12, i64 264, !12, i64 280, !12, i64 296, !12, i64 312, !12, i64 328, !12, i64 344, !6, i64 360, !6, i64 368, !6, i64 376}
!46 = !{!"View2D", !47, i64 0, !47, i64 16, !48, i64 32, !48, i64 48, !48, i64 64, !7, i64 80, !7, i64 88, !34, i64 96, !34, i64 100, !25, i64 104, !25, i64 106, !25, i64 108, !25, i64 110, !25, i64 112, !25, i64 114, !25, i64 116, !25, i64 118, !25, i64 120, !25, i64 122, !25, i64 124, !25, i64 126, !6, i64 128, !11, i64 136, !11, i64 140, !6, i64 144, !6, i64 152}
!47 = !{!"rctf", !34, i64 0, !34, i64 4, !34, i64 8, !34, i64 12}
!48 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!49 = !{!45, !25, i64 216}
!50 = !{!45, !25, i64 120}
!51 = !{!45, !25, i64 130}
!52 = !{!33, !6, i64 64}
!53 = !{!33, !6, i64 160}
!54 = !{!33, !6, i64 152}
!55 = !{!33, !25, i64 72}
!56 = !{!57, !6, i64 176}
!57 = !{!"wmKeyMapItem", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 80, !7, i64 88, !25, i64 152, !25, i64 154, !25, i64 156, !25, i64 158, !25, i64 160, !25, i64 162, !25, i64 164, !25, i64 166, !25, i64 168, !25, i64 170, !25, i64 172, !25, i64 174, !6, i64 176}
!58 = !{!59, !11, i64 36}
!59 = !{!"wmNotifier", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !6, i64 56}
!60 = !{!59, !11, i64 40}
!61 = !{!59, !11, i64 48}
!62 = !{!33, !6, i64 392}
!63 = !{!64, !6, i64 96}
!64 = !{!"ScrArea", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !48, i64 56, !7, i64 72, !7, i64 73, !25, i64 74, !25, i64 76, !25, i64 78, !25, i64 80, !25, i64 82, !25, i64 84, !7, i64 86, !7, i64 87, !6, i64 88, !12, i64 96, !12, i64 112, !12, i64 128, !12, i64 144}
!65 = !{!33, !25, i64 214}
!66 = !{!45, !25, i64 218}
!67 = !{i64 0, i64 4, !68, i64 4, i64 4, !68, i64 8, i64 4, !68, i64 12, i64 4, !68}
!68 = !{!34, !34, i64 0}
!69 = !{!70, !11, i64 680}
!70 = !{!"Scene", !71, i64 0, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !12, i64 152, !6, i64 168, !6, i64 176, !7, i64 184, !7, i64 196, !7, i64 208, !7, i64 220, !11, i64 232, !11, i64 236, !11, i64 240, !25, i64 244, !7, i64 246, !7, i64 247, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !72, i64 280, !79, i64 4264, !12, i64 4296, !12, i64 4312, !6, i64 4328, !6, i64 4336, !6, i64 4344, !6, i64 4352, !6, i64 4360, !6, i64 4368, !25, i64 4376, !25, i64 4378, !11, i64 4380, !12, i64 4384, !80, i64 4400, !81, i64 4416, !84, i64 4600, !6, i64 4608, !85, i64 4616, !6, i64 4640, !86, i64 4648, !86, i64 4656, !74, i64 4664, !75, i64 4824, !87, i64 4888, !6, i64 4952}
!71 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !25, i64 98, !11, i64 100, !11, i64 104, !11, i64 108, !6, i64 112}
!72 = !{!"RenderData", !73, i64 0, !6, i64 248, !6, i64 256, !76, i64 264, !77, i64 328, !11, i64 400, !11, i64 404, !11, i64 408, !34, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !11, i64 428, !25, i64 432, !25, i64 434, !34, i64 436, !34, i64 440, !34, i64 444, !34, i64 448, !34, i64 452, !25, i64 456, !25, i64 458, !25, i64 460, !25, i64 462, !25, i64 464, !25, i64 466, !11, i64 468, !25, i64 472, !25, i64 474, !25, i64 476, !25, i64 478, !25, i64 480, !25, i64 482, !11, i64 484, !11, i64 488, !25, i64 492, !25, i64 494, !11, i64 496, !11, i64 500, !25, i64 504, !25, i64 506, !25, i64 508, !25, i64 510, !25, i64 512, !7, i64 514, !7, i64 515, !11, i64 516, !11, i64 520, !11, i64 524, !25, i64 528, !25, i64 530, !25, i64 532, !25, i64 534, !25, i64 536, !25, i64 538, !25, i64 540, !25, i64 542, !47, i64 544, !47, i64 560, !48, i64 576, !12, i64 592, !25, i64 608, !25, i64 610, !34, i64 612, !34, i64 616, !34, i64 620, !34, i64 624, !11, i64 628, !34, i64 632, !34, i64 636, !34, i64 640, !34, i64 644, !25, i64 648, !25, i64 650, !25, i64 652, !25, i64 654, !25, i64 656, !25, i64 658, !34, i64 660, !34, i64 664, !25, i64 668, !25, i64 670, !34, i64 672, !34, i64 676, !7, i64 680, !11, i64 1704, !25, i64 1708, !25, i64 1710, !7, i64 1712, !7, i64 2480, !7, i64 2496, !7, i64 2512, !7, i64 2513, !7, i64 2514, !7, i64 2515, !11, i64 2520, !25, i64 2524, !25, i64 2526, !34, i64 2528, !34, i64 2532, !25, i64 2536, !25, i64 2538, !34, i64 2540, !25, i64 2544, !25, i64 2546, !11, i64 2548, !25, i64 2552, !25, i64 2554, !25, i64 2556, !25, i64 2558, !34, i64 2560, !34, i64 2564, !6, i64 2568, !11, i64 2576, !34, i64 2580, !7, i64 2584, !78, i64 2616, !11, i64 3976, !11, i64 3980}
!73 = !{!"ImageFormatData", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !25, i64 8, !25, i64 10, !34, i64 12, !7, i64 16, !7, i64 17, !7, i64 18, !74, i64 24, !75, i64 184}
!74 = !{!"ColorManagedViewSettings", !11, i64 0, !11, i64 4, !7, i64 8, !7, i64 72, !34, i64 136, !34, i64 140, !6, i64 144, !6, i64 152}
!75 = !{!"ColorManagedDisplaySettings", !7, i64 0}
!76 = !{!"QuicktimeCodecSettings", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !25, i64 48, !25, i64 50, !11, i64 52, !11, i64 56, !11, i64 60}
!77 = !{!"FFMpegCodecData", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !34, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !6, i64 64}
!78 = !{!"BakeData", !73, i64 0, !7, i64 248, !25, i64 1272, !25, i64 1274, !25, i64 1276, !25, i64 1278, !34, i64 1280, !34, i64 1284, !7, i64 1288, !7, i64 1291, !7, i64 1292, !7, i64 1293, !7, i64 1296}
!79 = !{!"AudioData", !11, i64 0, !34, i64 4, !34, i64 8, !34, i64 12, !11, i64 16, !25, i64 20, !25, i64 22, !34, i64 24, !34, i64 28}
!80 = !{!"GameFraming", !7, i64 0, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15}
!81 = !{!"GameData", !80, i64 0, !25, i64 16, !25, i64 18, !25, i64 20, !25, i64 22, !25, i64 24, !25, i64 26, !25, i64 28, !25, i64 30, !25, i64 32, !7, i64 34, !82, i64 40, !25, i64 64, !25, i64 66, !34, i64 68, !83, i64 72, !34, i64 128, !34, i64 132, !11, i64 136, !25, i64 140, !25, i64 142, !25, i64 144, !25, i64 146, !25, i64 148, !25, i64 150, !25, i64 152, !25, i64 154, !25, i64 156, !25, i64 158, !25, i64 160, !25, i64 162, !34, i64 164, !34, i64 168, !34, i64 172, !34, i64 176, !34, i64 180}
!82 = !{!"GameDome", !25, i64 0, !25, i64 2, !25, i64 4, !25, i64 6, !34, i64 8, !34, i64 12, !6, i64 16}
!83 = !{!"RecastData", !34, i64 0, !34, i64 4, !34, i64 8, !34, i64 12, !34, i64 16, !34, i64 20, !34, i64 24, !34, i64 28, !34, i64 32, !34, i64 36, !11, i64 40, !34, i64 44, !34, i64 48, !25, i64 52, !25, i64 54}
!84 = !{!"UnitSettings", !34, i64 0, !7, i64 4, !7, i64 5, !25, i64 6}
!85 = !{!"PhysicsSettings", !7, i64 0, !11, i64 12, !11, i64 16, !11, i64 20}
!86 = !{!"long", !7, i64 0}
!87 = !{!"ColorManagedColorspaceSettings", !7, i64 0}
!88 = !{!45, !25, i64 208}
!89 = !{!45, !25, i64 210}
!90 = !{!91, !6, i64 296}
!91 = !{!"wmWindowManager", !71, i64 0, !6, i64 120, !6, i64 128, !12, i64 136, !11, i64 152, !25, i64 156, !25, i64 158, !12, i64 160, !12, i64 176, !92, i64 192, !12, i64 232, !12, i64 248, !12, i64 264, !12, i64 280, !6, i64 296, !6, i64 304, !6, i64 312, !12, i64 320, !6, i64 336, !7, i64 344, !7, i64 345}
!92 = !{!"ReportList", !12, i64 0, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !6, i64 32}
!93 = !{!94, !6, i64 1528}
!94 = !{!"MovieClip", !71, i64 0, !6, i64 120, !7, i64 128, !11, i64 1152, !11, i64 1156, !7, i64 1160, !34, i64 1168, !34, i64 1172, !6, i64 1176, !6, i64 1184, !6, i64 1192, !95, i64 1200, !6, i64 1528, !101, i64 1536, !11, i64 2312, !11, i64 2316, !11, i64 2320, !11, i64 2324, !87, i64 2328}
!95 = !{!"MovieTracking", !96, i64 0, !97, i64 72, !12, i64 128, !12, i64 144, !98, i64 160, !99, i64 184, !6, i64 232, !6, i64 240, !12, i64 248, !11, i64 264, !11, i64 268, !6, i64 272, !100, i64 280}
!96 = !{!"MovieTrackingSettings", !11, i64 0, !25, i64 4, !25, i64 6, !34, i64 8, !25, i64 12, !25, i64 14, !25, i64 16, !25, i64 18, !25, i64 20, !25, i64 22, !34, i64 24, !25, i64 28, !25, i64 30, !11, i64 32, !11, i64 36, !11, i64 40, !25, i64 44, !25, i64 46, !34, i64 48, !11, i64 52, !11, i64 56, !34, i64 60, !34, i64 64, !11, i64 68}
!97 = !{!"MovieTrackingCamera", !6, i64 0, !25, i64 8, !25, i64 10, !34, i64 12, !34, i64 16, !34, i64 20, !25, i64 24, !25, i64 26, !7, i64 28, !34, i64 36, !34, i64 40, !34, i64 44, !34, i64 48, !34, i64 52}
!98 = !{!"MovieTrackingReconstruction", !11, i64 0, !34, i64 4, !11, i64 8, !11, i64 12, !6, i64 16}
!99 = !{!"MovieTrackingStabilization", !11, i64 0, !11, i64 4, !11, i64 8, !34, i64 12, !6, i64 16, !34, i64 24, !34, i64 28, !34, i64 32, !11, i64 36, !11, i64 40, !34, i64 44}
!100 = !{!"MovieTrackingDopesheet", !11, i64 0, !25, i64 4, !25, i64 6, !12, i64 8, !12, i64 24, !11, i64 40, !11, i64 44}
!101 = !{!"MovieClipProxy", !7, i64 0, !25, i64 768, !25, i64 770, !25, i64 772, !25, i64 774}
!102 = !{!94, !11, i64 1384}
!103 = !{!33, !25, i64 212}
!104 = !{!33, !7, i64 400}
!105 = !{!33, !7, i64 401}
!106 = !{!33, !7, i64 402}
!107 = !{!11, !11, i64 0}
!108 = !{!45, !34, i64 16}
!109 = !{!64, !25, i64 76}
!110 = !{!45, !34, i64 24}
!111 = !{!64, !25, i64 74}
!112 = !{!45, !34, i64 20}
!113 = !{!45, !34, i64 28}
!114 = !{!45, !34, i64 112}
!115 = !{!70, !11, i64 688}
!116 = !{!45, !25, i64 124}
!117 = distinct !{!117, !118}
!118 = !{!"llvm.loop.mustprogress"}
!119 = !{!99, !11, i64 40}
!120 = !{!33, !25, i64 372}
!121 = !{!122, !11, i64 20}
!122 = !{!"wmDrag", !6, i64 0, !6, i64 8, !11, i64 16, !11, i64 20, !6, i64 24, !7, i64 32, !123, i64 1056, !6, i64 1064, !34, i64 1072, !11, i64 1076, !11, i64 1080, !7, i64 1084, !11, i64 1284}
!123 = !{!"double", !7, i64 0}
!124 = !{!122, !11, i64 16}
!125 = !{!126, !6, i64 48}
!126 = !{!"wmDropBox", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !25, i64 56}
!127 = !{!45, !11, i64 88}
!128 = !{!45, !11, i64 80}
!129 = !{!45, !11, i64 84}
!130 = !{!45, !11, i64 92}
!131 = !{!45, !11, i64 176}
!132 = !{!45, !11, i64 184}
!133 = !{!33, !34, i64 36}
!134 = !{!33, !34, i64 40}
!135 = !{!48, !11, i64 4}
!136 = !{!48, !11, i64 0}
!137 = !{!48, !11, i64 12}
!138 = !{!48, !11, i64 8}
