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
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
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

; Function Attrs: nounwind uwtable
define dso_local void @ED_spacetype_clip() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str.2) #8
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 20, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #8
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @clip_new, ptr %5, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @clip_free, ptr %6, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @clip_init, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @clip_duplicate, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @clip_operatortypes, ptr %9, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @clip_keymap, ptr %10, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 9
  store ptr @clip_listener, ptr %11, align 8, !tbaa !48
  %12 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 15
  store ptr @clip_context, ptr %12, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 14
  store ptr @clip_dropboxes, ptr %13, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 10
  store ptr @clip_refresh, ptr %14, align 8, !tbaa !51
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %16 = tail call ptr %15(i64 noundef 184, ptr noundef nonnull @.str.4) #8
  %17 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !52
  %18 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 3
  store ptr @clip_main_area_init, ptr %18, align 8, !tbaa !55
  %19 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 5
  store ptr @clip_main_area_draw, ptr %19, align 8, !tbaa !56
  %20 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 6
  store ptr @clip_main_area_listener, ptr %20, align 8, !tbaa !57
  %21 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 20
  store i32 49, ptr %21, align 8, !tbaa !58
  %22 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %16) #8
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %24 = tail call ptr %23(i64 noundef 184, ptr noundef nonnull @.str.5) #8
  %25 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 2
  store i32 7, ptr %25, align 8, !tbaa !52
  %26 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 19
  store i32 240, ptr %26, align 4, !tbaa !59
  %27 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 3
  store ptr @clip_preview_area_init, ptr %27, align 8, !tbaa !55
  %28 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 5
  store ptr @clip_preview_area_draw, ptr %28, align 8, !tbaa !56
  %29 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 6
  store ptr @clip_preview_area_listener, ptr %29, align 8, !tbaa !57
  %30 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 20
  store i32 19, ptr %30, align 8, !tbaa !58
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %24) #8
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %32 = tail call ptr %31(i64 noundef 184, ptr noundef nonnull @.str.6) #8
  %33 = getelementptr inbounds %struct.ARegionType, ptr %32, i64 0, i32 2
  store i32 4, ptr %33, align 8, !tbaa !52
  %34 = getelementptr inbounds %struct.ARegionType, ptr %32, i64 0, i32 18
  store i32 160, ptr %34, align 8, !tbaa !60
  %35 = getelementptr inbounds %struct.ARegionType, ptr %32, i64 0, i32 20
  store i32 17, ptr %35, align 8, !tbaa !58
  %36 = getelementptr inbounds %struct.ARegionType, ptr %32, i64 0, i32 3
  store ptr @clip_properties_area_init, ptr %36, align 8, !tbaa !55
  %37 = getelementptr inbounds %struct.ARegionType, ptr %32, i64 0, i32 5
  store ptr @clip_properties_area_draw, ptr %37, align 8, !tbaa !56
  %38 = getelementptr inbounds %struct.ARegionType, ptr %32, i64 0, i32 6
  store ptr @clip_properties_area_listener, ptr %38, align 8, !tbaa !57
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %32) #8
  tail call void @ED_clip_buttons_register(ptr noundef %32) #8
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %40 = tail call ptr %39(i64 noundef 184, ptr noundef nonnull @.str.7) #8
  %41 = getelementptr inbounds %struct.ARegionType, ptr %40, i64 0, i32 2
  store i32 5, ptr %41, align 8, !tbaa !52
  %42 = getelementptr inbounds %struct.ARegionType, ptr %40, i64 0, i32 18
  store i32 160, ptr %42, align 8, !tbaa !60
  %43 = getelementptr inbounds %struct.ARegionType, ptr %40, i64 0, i32 20
  store i32 17, ptr %43, align 8, !tbaa !58
  %44 = getelementptr inbounds %struct.ARegionType, ptr %40, i64 0, i32 6
  store ptr @clip_props_area_listener, ptr %44, align 8, !tbaa !57
  %45 = getelementptr inbounds %struct.ARegionType, ptr %40, i64 0, i32 3
  store ptr @clip_tools_area_init, ptr %45, align 8, !tbaa !55
  %46 = getelementptr inbounds %struct.ARegionType, ptr %40, i64 0, i32 5
  store ptr @clip_tools_area_draw, ptr %46, align 8, !tbaa !56
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %40) #8
  %47 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %48 = tail call ptr %47(i64 noundef 184, ptr noundef nonnull @.str.8) #8
  %49 = getelementptr inbounds %struct.ARegionType, ptr %48, i64 0, i32 2
  store i32 6, ptr %49, align 8, !tbaa !52
  %50 = getelementptr inbounds %struct.ARegionType, ptr %48, i64 0, i32 18
  store i32 0, ptr %50, align 8, !tbaa !60
  %51 = getelementptr inbounds %struct.ARegionType, ptr %48, i64 0, i32 19
  store i32 120, ptr %51, align 4, !tbaa !59
  %52 = getelementptr inbounds %struct.ARegionType, ptr %48, i64 0, i32 20
  store i32 17, ptr %52, align 8, !tbaa !58
  %53 = getelementptr inbounds %struct.ARegionType, ptr %48, i64 0, i32 6
  store ptr @clip_props_area_listener, ptr %53, align 8, !tbaa !57
  %54 = getelementptr inbounds %struct.ARegionType, ptr %48, i64 0, i32 3
  store ptr @clip_tools_area_init, ptr %54, align 8, !tbaa !55
  %55 = getelementptr inbounds %struct.ARegionType, ptr %48, i64 0, i32 5
  store ptr @clip_tools_area_draw, ptr %55, align 8, !tbaa !56
  tail call void @ED_clip_tool_props_register(ptr noundef %48) #8
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %48) #8
  %56 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %57 = tail call ptr %56(i64 noundef 184, ptr noundef nonnull @.str.4) #8
  %58 = getelementptr inbounds %struct.ARegionType, ptr %57, i64 0, i32 2
  store i32 1, ptr %58, align 8, !tbaa !52
  %59 = getelementptr inbounds %struct.ARegionType, ptr %57, i64 0, i32 19
  store i32 26, ptr %59, align 4, !tbaa !59
  %60 = getelementptr inbounds %struct.ARegionType, ptr %57, i64 0, i32 20
  store i32 83, ptr %60, align 8, !tbaa !58
  %61 = getelementptr inbounds %struct.ARegionType, ptr %57, i64 0, i32 3
  store ptr @clip_header_area_init, ptr %61, align 8, !tbaa !55
  %62 = getelementptr inbounds %struct.ARegionType, ptr %57, i64 0, i32 5
  store ptr @clip_header_area_draw, ptr %62, align 8, !tbaa !56
  %63 = getelementptr inbounds %struct.ARegionType, ptr %57, i64 0, i32 6
  store ptr @clip_header_area_listener, ptr %63, align 8, !tbaa !57
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %57) #8
  tail call void @BKE_spacetype_register(ptr noundef %2) #8
  %64 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %65 = tail call ptr %64(i64 noundef 184, ptr noundef nonnull @.str.9) #8
  %66 = getelementptr inbounds %struct.ARegionType, ptr %65, i64 0, i32 2
  store i32 2, ptr %66, align 8, !tbaa !52
  %67 = getelementptr inbounds %struct.ARegionType, ptr %65, i64 0, i32 18
  store i32 160, ptr %67, align 8, !tbaa !60
  %68 = getelementptr inbounds %struct.ARegionType, ptr %65, i64 0, i32 20
  store i32 17, ptr %68, align 8, !tbaa !58
  %69 = getelementptr inbounds %struct.ARegionType, ptr %65, i64 0, i32 6
  store ptr @clip_channels_area_listener, ptr %69, align 8, !tbaa !57
  %70 = getelementptr inbounds %struct.ARegionType, ptr %65, i64 0, i32 3
  store ptr @clip_channels_area_init, ptr %70, align 8, !tbaa !55
  %71 = getelementptr inbounds %struct.ARegionType, ptr %65, i64 0, i32 5
  store ptr @clip_channels_area_draw, ptr %71, align 8, !tbaa !56
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %65) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal ptr @clip_new(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 408, ptr noundef nonnull @.str.10) #8
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 3
  store i32 20, ptr %4, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  store i32 53265, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 8
  store float 1.000000e+00, ptr %6, align 4, !tbaa !69
  %7 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 15
  store i32 20, ptr %7, align 8, !tbaa !70
  %8 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 11, i32 2
  store i32 120, ptr %8, align 4, !tbaa !71
  %9 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 25
  store i32 2, ptr %9, align 8, !tbaa !72
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = tail call ptr %10(i64 noundef 384, ptr noundef nonnull @.str.11) #8
  %12 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %11) #8
  %13 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 8
  store i16 1, ptr %13, align 2, !tbaa !73
  %14 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 9
  store i16 2, ptr %14, align 8, !tbaa !78
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %16 = tail call ptr %15(i64 noundef 384, ptr noundef nonnull @.str.12) #8
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %16) #8
  %17 = getelementptr inbounds %struct.ARegion, ptr %16, i64 0, i32 8
  store i16 5, ptr %17, align 2, !tbaa !73
  %18 = getelementptr inbounds %struct.ARegion, ptr %16, i64 0, i32 9
  store i16 3, ptr %18, align 8, !tbaa !78
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %20 = tail call ptr %19(i64 noundef 384, ptr noundef nonnull @.str.13) #8
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %20) #8
  %21 = getelementptr inbounds %struct.ARegion, ptr %20, i64 0, i32 8
  store i16 6, ptr %21, align 2, !tbaa !73
  %22 = getelementptr inbounds %struct.ARegion, ptr %20, i64 0, i32 9
  store i16 34, ptr %22, align 8, !tbaa !78
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %24 = tail call ptr %23(i64 noundef 384, ptr noundef nonnull @.str.14) #8
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %24) #8
  %25 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 8
  store i16 4, ptr %25, align 2, !tbaa !73
  %26 = getelementptr inbounds %struct.ARegion, ptr %24, i64 0, i32 9
  store i16 4, ptr %26, align 8, !tbaa !78
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %28 = tail call ptr %27(i64 noundef 384, ptr noundef nonnull @.str.15) #8
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %28) #8
  %29 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 8
  store i16 2, ptr %29, align 2, !tbaa !73
  %30 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 9
  store i16 3, ptr %30, align 8, !tbaa !78
  %31 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 9
  store i16 8, ptr %31, align 8, !tbaa !79
  %32 = getelementptr inbounds %struct.ARegion, ptr %28, i64 0, i32 2, i32 14
  store i16 2, ptr %32, align 2, !tbaa !80
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %34 = tail call ptr %33(i64 noundef 384, ptr noundef nonnull @.str.16) #8
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %34) #8
  tail call fastcc void @init_preview_region(ptr noundef %0, ptr noundef %34)
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %36 = tail call ptr %35(i64 noundef 384, ptr noundef nonnull @.str.17) #8
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %36) #8
  %37 = getelementptr inbounds %struct.ARegion, ptr %36, i64 0, i32 8
  store i16 0, ptr %37, align 2, !tbaa !73
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal void @clip_free(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 10
  store ptr null, ptr %2, align 8, !tbaa !81
  %3 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 11, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @IMB_freeImBuf(ptr noundef nonnull %4) #8
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 11, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @IMB_freeImBuf(ptr noundef nonnull %9) #8
  br label %12

12:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clip_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.3, i32 noundef 20, i32 noundef 0) #8
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 21
  %5 = tail call ptr @WM_event_add_dropbox_handler(ptr noundef nonnull %4, ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @clip_duplicate(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 11
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 11, i32 6
  store i16 0, ptr %4, align 8, !tbaa !84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal void @clip_operatortypes() #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_open) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_reload) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_view_pan) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_view_zoom) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_view_zoom_in) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_view_zoom_out) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_view_zoom_ratio) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_view_all) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_view_selected) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_change_frame) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_rebuild_proxy) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_mode_set) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_view_ndof) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_prefetch) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_set_scene_frames) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_cursor_set) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_tools) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_properties) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_frame_jump) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_set_center_principal) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_select) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_select_all) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_select_border) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_select_lasso) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_select_circle) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_select_grouped) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_add_marker) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_add_marker_at_click) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_slide_marker) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_delete_track) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_delete_marker) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_track_markers) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_refine_markers) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_solve_camera) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_clear_solution) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_disable_markers) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_hide_tracks) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_hide_tracks_clear) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_lock_tracks) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_set_solver_keyframe) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_set_origin) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_set_plane) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_set_axis) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_set_scale) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_set_solution_scale) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_apply_solution_scale) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_detect_features) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_stabilize_2d_add) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_stabilize_2d_remove) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_stabilize_2d_select) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_stabilize_2d_set_rotation) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_clear_track_path) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_join_tracks) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_track_copy_color) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_clean_tracks) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_tracking_object_new) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_tracking_object_remove) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_copy_tracks) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_paste_tracks) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_create_plane_track) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_slide_plane_marker) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_keyframe_insert) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_keyframe_delete) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_graph_select) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_graph_select_border) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_graph_select_all_markers) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_graph_delete_curve) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_graph_delete_knot) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_graph_view_all) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_graph_center_current_frame) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_graph_disable_markers) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_dopesheet_select_channel) #8
  tail call void @WM_operatortype_append(ptr noundef nonnull @CLIP_OT_dopesheet_view_all) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clip_keymap(ptr noundef %0) #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef 20, i32 noundef 0) #8
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 111, i32 noundef 1, i32 noundef 4, i32 noundef 0) #8
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef 116, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %5 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef 110, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef 137, i32 noundef 1, i32 noundef 4, i32 noundef 0) #8
  %7 = getelementptr inbounds %struct.wmKeyMapItem, ptr %6, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %8, ptr noundef nonnull @.str.22, i32 noundef 1) #8
  %9 = load ptr, ptr %7, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %9, ptr noundef nonnull @.str.23, i32 noundef 0) #8
  %10 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef 139, i32 noundef 1, i32 noundef 4, i32 noundef 0) #8
  %11 = getelementptr inbounds %struct.wmKeyMapItem, ptr %10, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %12, ptr noundef nonnull @.str.22, i32 noundef 0) #8
  %13 = load ptr, ptr %11, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %13, ptr noundef nonnull @.str.23, i32 noundef 0) #8
  %14 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef 116, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %15 = getelementptr inbounds %struct.wmKeyMapItem, ptr %14, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %16, ptr noundef nonnull @.str.22, i32 noundef 0) #8
  %17 = load ptr, ptr %15, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %17, ptr noundef nonnull @.str.23, i32 noundef 1) #8
  %18 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.21, i32 noundef 116, i32 noundef 1, i32 noundef 3, i32 noundef 0) #8
  %19 = getelementptr inbounds %struct.wmKeyMapItem, ptr %18, i64 0, i32 17
  %20 = load ptr, ptr %19, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %20, ptr noundef nonnull @.str.22, i32 noundef 1) #8
  %21 = load ptr, ptr %19, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %21, ptr noundef nonnull @.str.23, i32 noundef 1) #8
  %22 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef 219, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %23 = getelementptr inbounds %struct.wmKeyMapItem, ptr %22, i64 0, i32 17
  %24 = load ptr, ptr %23, align 8, !tbaa !85
  tail call void @RNA_string_set(ptr noundef %24, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #8
  %25 = load ptr, ptr %23, align 8, !tbaa !85
  tail call void @RNA_string_set(ptr noundef %25, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #8
  %26 = load ptr, ptr %23, align 8, !tbaa !85
  tail call void @RNA_string_set(ptr noundef %26, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #8
  %27 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.31, i32 noundef 115, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %28 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef 113, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %29 = getelementptr inbounds %struct.wmKeyMapItem, ptr %28, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !85
  tail call void @RNA_enum_set(ptr noundef %30, ptr noundef nonnull @.str.33, i32 noundef 0) #8
  %31 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef 101, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %32 = getelementptr inbounds %struct.wmKeyMapItem, ptr %31, i64 0, i32 17
  %33 = load ptr, ptr %32, align 8, !tbaa !85
  tail call void @RNA_enum_set(ptr noundef %33, ptr noundef nonnull @.str.33, i32 noundef 1) #8
  %34 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.34, i32 noundef 112, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %35 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef 20, i32 noundef 0) #8
  %36 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.36, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %37 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.36, i32 noundef 2, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %38 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.36, i32 noundef 14, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %39 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.37, i32 noundef 2, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %40 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.37, i32 noundef 15, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %41 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.37, i32 noundef 14, i32 noundef 0, i32 noundef 2, i32 noundef 0) #8
  %42 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.38, i32 noundef 12, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %43 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.39, i32 noundef 13, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %44 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.38, i32 noundef 164, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %45 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.39, i32 noundef 162, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %46 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.40, i32 noundef 158, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %47 = getelementptr inbounds %struct.wmKeyMapItem, ptr %46, i64 0, i32 17
  %48 = load ptr, ptr %47, align 8, !tbaa !85
  tail call void @RNA_float_set(ptr noundef %48, ptr noundef nonnull @.str.41, float noundef 8.000000e+00) #8
  %49 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.40, i32 noundef 154, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %50 = getelementptr inbounds %struct.wmKeyMapItem, ptr %49, i64 0, i32 17
  %51 = load ptr, ptr %50, align 8, !tbaa !85
  tail call void @RNA_float_set(ptr noundef %51, ptr noundef nonnull @.str.41, float noundef 4.000000e+00) #8
  %52 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.40, i32 noundef 152, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %53 = getelementptr inbounds %struct.wmKeyMapItem, ptr %52, i64 0, i32 17
  %54 = load ptr, ptr %53, align 8, !tbaa !85
  tail call void @RNA_float_set(ptr noundef %54, ptr noundef nonnull @.str.41, float noundef 2.000000e+00) #8
  %55 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.40, i32 noundef 158, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %56 = getelementptr inbounds %struct.wmKeyMapItem, ptr %55, i64 0, i32 17
  %57 = load ptr, ptr %56, align 8, !tbaa !85
  tail call void @RNA_float_set(ptr noundef %57, ptr noundef nonnull @.str.41, float noundef 8.000000e+00) #8
  %58 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.40, i32 noundef 154, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %59 = getelementptr inbounds %struct.wmKeyMapItem, ptr %58, i64 0, i32 17
  %60 = load ptr, ptr %59, align 8, !tbaa !85
  tail call void @RNA_float_set(ptr noundef %60, ptr noundef nonnull @.str.41, float noundef 4.000000e+00) #8
  %61 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.40, i32 noundef 152, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %62 = getelementptr inbounds %struct.wmKeyMapItem, ptr %61, i64 0, i32 17
  %63 = load ptr, ptr %62, align 8, !tbaa !85
  tail call void @RNA_float_set(ptr noundef %63, ptr noundef nonnull @.str.41, float noundef 2.000000e+00) #8
  %64 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.40, i32 noundef 151, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %65 = getelementptr inbounds %struct.wmKeyMapItem, ptr %64, i64 0, i32 17
  %66 = load ptr, ptr %65, align 8, !tbaa !85
  tail call void @RNA_float_set(ptr noundef %66, ptr noundef nonnull @.str.41, float noundef 1.000000e+00) #8
  %67 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.40, i32 noundef 152, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %68 = getelementptr inbounds %struct.wmKeyMapItem, ptr %67, i64 0, i32 17
  %69 = load ptr, ptr %68, align 8, !tbaa !85
  tail call void @RNA_float_set(ptr noundef %69, ptr noundef nonnull @.str.41, float noundef 5.000000e-01) #8
  %70 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.40, i32 noundef 154, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %71 = getelementptr inbounds %struct.wmKeyMapItem, ptr %70, i64 0, i32 17
  %72 = load ptr, ptr %71, align 8, !tbaa !85
  tail call void @RNA_float_set(ptr noundef %72, ptr noundef nonnull @.str.41, float noundef 2.500000e-01) #8
  %73 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.40, i32 noundef 158, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %74 = getelementptr inbounds %struct.wmKeyMapItem, ptr %73, i64 0, i32 17
  %75 = load ptr, ptr %74, align 8, !tbaa !85
  tail call void @RNA_float_set(ptr noundef %75, ptr noundef nonnull @.str.41, float noundef 1.250000e-01) #8
  %76 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.42, i32 noundef 167, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %77 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.42, i32 noundef 102, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %78 = getelementptr inbounds %struct.wmKeyMapItem, ptr %77, i64 0, i32 17
  %79 = load ptr, ptr %78, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %79, ptr noundef nonnull @.str.43, i32 noundef 1) #8
  %80 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.44, i32 noundef 199, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %81 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.42, i32 noundef 402, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %82 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.45, i32 noundef 400, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %83 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.46, i32 noundef 137, i32 noundef 1, i32 noundef 3, i32 noundef 0) #8
  %84 = getelementptr inbounds %struct.wmKeyMapItem, ptr %83, i64 0, i32 17
  %85 = load ptr, ptr %84, align 8, !tbaa !85
  tail call void @RNA_enum_set(ptr noundef %85, ptr noundef nonnull @.str.47, i32 noundef 0) #8
  %86 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.46, i32 noundef 139, i32 noundef 1, i32 noundef 3, i32 noundef 0) #8
  %87 = getelementptr inbounds %struct.wmKeyMapItem, ptr %86, i64 0, i32 17
  %88 = load ptr, ptr %87, align 8, !tbaa !85
  tail call void @RNA_enum_set(ptr noundef %88, ptr noundef nonnull @.str.47, i32 noundef 1) #8
  %89 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.46, i32 noundef 137, i32 noundef 1, i32 noundef 5, i32 noundef 0) #8
  %90 = getelementptr inbounds %struct.wmKeyMapItem, ptr %89, i64 0, i32 17
  %91 = load ptr, ptr %90, align 8, !tbaa !85
  tail call void @RNA_enum_set(ptr noundef %91, ptr noundef nonnull @.str.47, i32 noundef 2) #8
  %92 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.46, i32 noundef 139, i32 noundef 1, i32 noundef 5, i32 noundef 0) #8
  %93 = getelementptr inbounds %struct.wmKeyMapItem, ptr %92, i64 0, i32 17
  %94 = load ptr, ptr %93, align 8, !tbaa !85
  tail call void @RNA_enum_set(ptr noundef %94, ptr noundef nonnull @.str.47, i32 noundef 3) #8
  %95 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.48, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %96 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.49, i32 noundef 6, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %97 = getelementptr inbounds %struct.wmKeyMapItem, ptr %96, i64 0, i32 17
  %98 = load ptr, ptr %97, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %98, ptr noundef nonnull @.str.50, i32 noundef 0) #8
  %99 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.49, i32 noundef 6, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %100 = getelementptr inbounds %struct.wmKeyMapItem, ptr %99, i64 0, i32 17
  %101 = load ptr, ptr %100, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %101, ptr noundef nonnull @.str.50, i32 noundef 1) #8
  %102 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.51, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %103 = getelementptr inbounds %struct.wmKeyMapItem, ptr %102, i64 0, i32 17
  %104 = load ptr, ptr %103, align 8, !tbaa !85
  tail call void @RNA_enum_set(ptr noundef %104, ptr noundef nonnull @.str.52, i32 noundef 0) #8
  %105 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.51, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %106 = getelementptr inbounds %struct.wmKeyMapItem, ptr %105, i64 0, i32 17
  %107 = load ptr, ptr %106, align 8, !tbaa !85
  tail call void @RNA_enum_set(ptr noundef %107, ptr noundef nonnull @.str.52, i32 noundef 3) #8
  %108 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.53, i32 noundef 98, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %109 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.54, i32 noundef 99, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %110 = tail call ptr @WM_keymap_add_menu(ptr noundef %35, ptr noundef nonnull @.str.55, i32 noundef 103, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %111 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.56, i32 noundef 20486, i32 noundef -1, i32 noundef 6, i32 noundef 0) #8
  %112 = getelementptr inbounds %struct.wmKeyMapItem, ptr %111, i64 0, i32 17
  %113 = load ptr, ptr %112, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %113, ptr noundef nonnull @.str.57, i32 noundef 0) #8
  %114 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.56, i32 noundef 20486, i32 noundef -1, i32 noundef 7, i32 noundef 0) #8
  %115 = getelementptr inbounds %struct.wmKeyMapItem, ptr %114, i64 0, i32 17
  %116 = load ptr, ptr %115, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %116, ptr noundef nonnull @.str.57, i32 noundef 1) #8
  %117 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.58, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %118 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.59, i32 noundef 224, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %119 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.59, i32 noundef 120, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %120 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.60, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %121 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.61, i32 noundef 100, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %122 = getelementptr inbounds %struct.wmKeyMapItem, ptr %121, i64 0, i32 17
  %123 = load ptr, ptr %122, align 8, !tbaa !85
  tail call void @RNA_enum_set(ptr noundef %123, ptr noundef nonnull @.str.52, i32 noundef 2) #8
  %124 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.62, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %125 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.62, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %126 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.63, i32 noundef 108, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %127 = getelementptr inbounds %struct.wmKeyMapItem, ptr %126, i64 0, i32 17
  %128 = load ptr, ptr %127, align 8, !tbaa !85
  tail call void @RNA_enum_set(ptr noundef %128, ptr noundef nonnull @.str.52, i32 noundef 0) #8
  %129 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.63, i32 noundef 108, i32 noundef 1, i32 noundef 4, i32 noundef 0) #8
  %130 = getelementptr inbounds %struct.wmKeyMapItem, ptr %129, i64 0, i32 17
  %131 = load ptr, ptr %130, align 8, !tbaa !85
  tail call void @RNA_enum_set(ptr noundef %131, ptr noundef nonnull @.str.52, i32 noundef 1) #8
  %132 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.64, i32 noundef 104, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %133 = getelementptr inbounds %struct.wmKeyMapItem, ptr %132, i64 0, i32 17
  %134 = load ptr, ptr %133, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %134, ptr noundef nonnull @.str.65, i32 noundef 0) #8
  %135 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.64, i32 noundef 104, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %136 = getelementptr inbounds %struct.wmKeyMapItem, ptr %135, i64 0, i32 17
  %137 = load ptr, ptr %136, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %137, ptr noundef nonnull @.str.65, i32 noundef 1) #8
  %138 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.66, i32 noundef 104, i32 noundef 1, i32 noundef 4, i32 noundef 0) #8
  %139 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.67, i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %140 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.68, i32 noundef 105, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %141 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.69, i32 noundef 105, i32 noundef 1, i32 noundef 4, i32 noundef 0) #8
  %142 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.70, i32 noundef 106, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %143 = tail call ptr @WM_keymap_add_menu(ptr noundef %35, ptr noundef nonnull @.str.71, i32 noundef 119, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %144 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.72, i32 noundef 108, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %145 = getelementptr inbounds %struct.wmKeyMapItem, ptr %144, i64 0, i32 17
  %146 = load ptr, ptr %145, align 8, !tbaa !85
  tail call void @RNA_string_set(ptr noundef %146, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.73) #8
  %147 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.72, i32 noundef 100, i32 noundef 1, i32 noundef 4, i32 noundef 0) #8
  %148 = getelementptr inbounds %struct.wmKeyMapItem, ptr %147, i64 0, i32 17
  %149 = load ptr, ptr %148, align 8, !tbaa !85
  tail call void @RNA_string_set(ptr noundef %149, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.74) #8
  %150 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.72, i32 noundef 115, i32 noundef 1, i32 noundef 4, i32 noundef 0) #8
  %151 = getelementptr inbounds %struct.wmKeyMapItem, ptr %150, i64 0, i32 17
  %152 = load ptr, ptr %151, align 8, !tbaa !85
  tail call void @RNA_string_set(ptr noundef %152, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.75) #8
  %153 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.72, i32 noundef 109, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %154 = getelementptr inbounds %struct.wmKeyMapItem, ptr %153, i64 0, i32 17
  %155 = load ptr, ptr %154, align 8, !tbaa !85
  tail call void @RNA_string_set(ptr noundef %155, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.76) #8
  tail call void @transform_keymap_for_space(ptr noundef %0, ptr noundef %35, i32 noundef 20) #8
  %156 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.77, i32 noundef 116, i32 noundef 1, i32 noundef 4, i32 noundef 0) #8
  %157 = getelementptr inbounds %struct.wmKeyMapItem, ptr %156, i64 0, i32 17
  %158 = load ptr, ptr %157, align 8, !tbaa !85
  tail call void @RNA_enum_set(ptr noundef %158, ptr noundef nonnull @.str.52, i32 noundef 1) #8
  %159 = load ptr, ptr %157, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %159, ptr noundef nonnull @.str.78, i32 noundef 0) #8
  %160 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.77, i32 noundef 116, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %161 = getelementptr inbounds %struct.wmKeyMapItem, ptr %160, i64 0, i32 17
  %162 = load ptr, ptr %161, align 8, !tbaa !85
  tail call void @RNA_enum_set(ptr noundef %162, ptr noundef nonnull @.str.52, i32 noundef 0) #8
  %163 = load ptr, ptr %161, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %163, ptr noundef nonnull @.str.78, i32 noundef 0) #8
  %164 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.77, i32 noundef 116, i32 noundef 1, i32 noundef 5, i32 noundef 0) #8
  %165 = getelementptr inbounds %struct.wmKeyMapItem, ptr %164, i64 0, i32 17
  %166 = load ptr, ptr %165, align 8, !tbaa !85
  tail call void @RNA_enum_set(ptr noundef %166, ptr noundef nonnull @.str.52, i32 noundef 2) #8
  %167 = load ptr, ptr %165, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %167, ptr noundef nonnull @.str.78, i32 noundef 0) #8
  %168 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.79, i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %169 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.80, i32 noundef 227, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %170 = getelementptr inbounds %struct.wmKeyMapItem, ptr %169, i64 0, i32 17
  %171 = load ptr, ptr %170, align 8, !tbaa !85
  tail call void @RNA_string_set(ptr noundef %171, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.81) #8
  %172 = load ptr, ptr %170, align 8, !tbaa !85
  tail call void @RNA_string_set(ptr noundef %172, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83) #8
  %173 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.80, i32 noundef 227, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %174 = getelementptr inbounds %struct.wmKeyMapItem, ptr %173, i64 0, i32 17
  %175 = load ptr, ptr %174, align 8, !tbaa !85
  tail call void @RNA_string_set(ptr noundef %175, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.81) #8
  %176 = load ptr, ptr %174, align 8, !tbaa !85
  tail call void @RNA_string_set(ptr noundef %176, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.84) #8
  %177 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.80, i32 noundef 226, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %178 = getelementptr inbounds %struct.wmKeyMapItem, ptr %177, i64 0, i32 17
  %179 = load ptr, ptr %178, align 8, !tbaa !85
  tail call void @RNA_string_set(ptr noundef %179, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.81) #8
  %180 = load ptr, ptr %178, align 8, !tbaa !85
  tail call void @RNA_string_set(ptr noundef %180, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.85) #8
  %181 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.80, i32 noundef 226, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %182 = getelementptr inbounds %struct.wmKeyMapItem, ptr %181, i64 0, i32 17
  %183 = load ptr, ptr %182, align 8, !tbaa !85
  tail call void @RNA_string_set(ptr noundef %183, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.81) #8
  %184 = load ptr, ptr %182, align 8, !tbaa !85
  tail call void @RNA_string_set(ptr noundef %184, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.86) #8
  %185 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.87, i32 noundef 99, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %186 = tail call ptr @WM_keymap_add_item(ptr noundef %35, ptr noundef nonnull @.str.88, i32 noundef 118, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %187 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.89, i32 noundef 20, i32 noundef 0) #8
  %188 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.48, i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %189 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.90, i32 noundef 6, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %190 = getelementptr inbounds %struct.wmKeyMapItem, ptr %189, i64 0, i32 17
  %191 = load ptr, ptr %190, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %191, ptr noundef nonnull @.str.50, i32 noundef 0) #8
  %192 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.90, i32 noundef 6, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %193 = getelementptr inbounds %struct.wmKeyMapItem, ptr %192, i64 0, i32 17
  %194 = load ptr, ptr %193, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %194, ptr noundef nonnull @.str.50, i32 noundef 1) #8
  %195 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.91, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %196 = getelementptr inbounds %struct.wmKeyMapItem, ptr %195, i64 0, i32 17
  %197 = load ptr, ptr %196, align 8, !tbaa !85
  tail call void @RNA_enum_set(ptr noundef %197, ptr noundef nonnull @.str.52, i32 noundef 0) #8
  %198 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.91, i32 noundef 105, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %199 = getelementptr inbounds %struct.wmKeyMapItem, ptr %198, i64 0, i32 17
  %200 = load ptr, ptr %199, align 8, !tbaa !85
  tail call void @RNA_enum_set(ptr noundef %200, ptr noundef nonnull @.str.52, i32 noundef 3) #8
  %201 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.92, i32 noundef 98, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %202 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.93, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %203 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.93, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %204 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.94, i32 noundef 224, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %205 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.94, i32 noundef 120, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %206 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.95, i32 noundef 167, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %207 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.95, i32 noundef 402, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %208 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.96, i32 noundef 199, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %209 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.72, i32 noundef 108, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %210 = getelementptr inbounds %struct.wmKeyMapItem, ptr %209, i64 0, i32 17
  %211 = load ptr, ptr %210, align 8, !tbaa !85
  tail call void @RNA_string_set(ptr noundef %211, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.97) #8
  %212 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.77, i32 noundef 116, i32 noundef 1, i32 noundef 4, i32 noundef 0) #8
  %213 = getelementptr inbounds %struct.wmKeyMapItem, ptr %212, i64 0, i32 17
  %214 = load ptr, ptr %213, align 8, !tbaa !85
  tail call void @RNA_enum_set(ptr noundef %214, ptr noundef nonnull @.str.52, i32 noundef 1) #8
  %215 = load ptr, ptr %213, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %215, ptr noundef nonnull @.str.78, i32 noundef 1) #8
  %216 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.77, i32 noundef 116, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %217 = getelementptr inbounds %struct.wmKeyMapItem, ptr %216, i64 0, i32 17
  %218 = load ptr, ptr %217, align 8, !tbaa !85
  tail call void @RNA_enum_set(ptr noundef %218, ptr noundef nonnull @.str.52, i32 noundef 0) #8
  %219 = load ptr, ptr %217, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %219, ptr noundef nonnull @.str.78, i32 noundef 1) #8
  %220 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.77, i32 noundef 116, i32 noundef 1, i32 noundef 5, i32 noundef 0) #8
  %221 = getelementptr inbounds %struct.wmKeyMapItem, ptr %220, i64 0, i32 17
  %222 = load ptr, ptr %221, align 8, !tbaa !85
  tail call void @RNA_enum_set(ptr noundef %222, ptr noundef nonnull @.str.52, i32 noundef 2) #8
  %223 = load ptr, ptr %221, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %223, ptr noundef nonnull @.str.78, i32 noundef 1) #8
  %224 = tail call ptr @WM_keymap_add_item(ptr noundef %187, ptr noundef nonnull @.str.98, i32 noundef 100, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %225 = getelementptr inbounds %struct.wmKeyMapItem, ptr %224, i64 0, i32 17
  %226 = load ptr, ptr %225, align 8, !tbaa !85
  tail call void @RNA_enum_set(ptr noundef %226, ptr noundef nonnull @.str.52, i32 noundef 2) #8
  tail call void @transform_keymap_for_space(ptr noundef %0, ptr noundef %187, i32 noundef 20) #8
  %227 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.99, i32 noundef 20, i32 noundef 0) #8
  %228 = tail call ptr @WM_keymap_add_item(ptr noundef %227, ptr noundef nonnull @.str.100, i32 noundef 5, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %229 = getelementptr inbounds %struct.wmKeyMapItem, ptr %228, i64 0, i32 17
  %230 = load ptr, ptr %229, align 8, !tbaa !85
  tail call void @RNA_boolean_set(ptr noundef %230, ptr noundef nonnull @.str.50, i32 noundef 1) #8
  %231 = tail call ptr @WM_keymap_add_item(ptr noundef %227, ptr noundef nonnull @.str.101, i32 noundef 167, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  %232 = tail call ptr @WM_keymap_add_item(ptr noundef %227, ptr noundef nonnull @.str.101, i32 noundef 402, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clip_listener(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !87
  switch i32 %5, label %206 [
    i32 67108864, label %6
    i32 335544320, label %34
    i32 352321536, label %98
    i32 268435456, label %105
    i32 50331648, label %134
    i32 251658240, label %138
    i32 369098752, label %172
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !89
  switch i32 %8, label %206 [
    i32 196608, label %9
    i32 1114112, label %205
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  %12 = getelementptr inbounds %struct.SpaceClip, ptr %11, i64 0, i32 13
  %13 = load i16, ptr %12, align 4, !tbaa !92
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %205

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %15, %29
  %20 = phi ptr [ %30, %29 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.ARegion, ptr %20, i64 0, i32 8
  %22 = load i16, ptr %21, align 2, !tbaa !73
  %23 = icmp eq i16 %22, 4
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ARegion, ptr %20, i64 0, i32 10
  %26 = load i16, ptr %25, align 2, !tbaa !93
  %27 = and i16 %26, 1
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %205

29:                                               ; preds = %24, %19
  %30 = load ptr, ptr %20, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %19, !llvm.loop !94

32:                                               ; preds = %29, %15
  %33 = getelementptr inbounds %struct.SpaceClip, ptr %11, i64 0, i32 11
  store i16 0, ptr %33, align 8, !tbaa !84
  br label %205

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %36 = load i32, ptr %35, align 8, !tbaa !89
  switch i32 %36, label %63 [
    i32 3342336, label %37
    i32 5898240, label %37
  ]

37:                                               ; preds = %34, %34
  %38 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %39 = load ptr, ptr %38, align 8, !tbaa !90
  %40 = getelementptr inbounds %struct.SpaceClip, ptr %39, i64 0, i32 13
  %41 = load i16, ptr %40, align 4, !tbaa !92
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = icmp eq ptr %45, null
  br i1 %46, label %60, label %47

47:                                               ; preds = %43, %57
  %48 = phi ptr [ %58, %57 ], [ %45, %43 ]
  %49 = getelementptr inbounds %struct.ARegion, ptr %48, i64 0, i32 8
  %50 = load i16, ptr %49, align 2, !tbaa !73
  %51 = icmp eq i16 %50, 4
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.ARegion, ptr %48, i64 0, i32 10
  %54 = load i16, ptr %53, align 2, !tbaa !93
  %55 = and i16 %54, 1
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52, %47
  %58 = load ptr, ptr %48, align 8, !tbaa !34
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %47, !llvm.loop !94

60:                                               ; preds = %57, %43
  %61 = getelementptr inbounds %struct.SpaceClip, ptr %39, i64 0, i32 11
  store i16 0, ptr %61, align 8, !tbaa !84
  br label %62

62:                                               ; preds = %52, %37, %60
  tail call void @ED_area_tag_redraw(ptr noundef %1) #8
  br label %63

63:                                               ; preds = %34, %62
  %64 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %65 = load i32, ptr %64, align 8, !tbaa !97
  switch i32 %65, label %206 [
    i32 4, label %66
    i32 1, label %66
    i32 2, label %66
    i32 6, label %73
  ]

66:                                               ; preds = %63, %63, %63
  %67 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %68 = load ptr, ptr %67, align 8, !tbaa !90
  %69 = tail call ptr @ED_space_clip_get_clip(ptr noundef %68) #8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.MovieClip, ptr %69, i64 0, i32 11, i32 5, i32 9
  store i32 0, ptr %72, align 8, !tbaa !98
  br label %73

73:                                               ; preds = %71, %66, %63
  %74 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %75 = load ptr, ptr %74, align 8, !tbaa !90
  %76 = getelementptr inbounds %struct.SpaceClip, ptr %75, i64 0, i32 13
  %77 = load i16, ptr %76, align 4, !tbaa !92
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %205

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  %81 = load ptr, ptr %80, align 8, !tbaa !34
  %82 = icmp eq ptr %81, null
  br i1 %82, label %96, label %83

83:                                               ; preds = %79, %93
  %84 = phi ptr [ %94, %93 ], [ %81, %79 ]
  %85 = getelementptr inbounds %struct.ARegion, ptr %84, i64 0, i32 8
  %86 = load i16, ptr %85, align 2, !tbaa !73
  %87 = icmp eq i16 %86, 4
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.ARegion, ptr %84, i64 0, i32 10
  %90 = load i16, ptr %89, align 2, !tbaa !93
  %91 = and i16 %90, 1
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %205

93:                                               ; preds = %88, %83
  %94 = load ptr, ptr %84, align 8, !tbaa !34
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %83, !llvm.loop !94

96:                                               ; preds = %93, %79
  %97 = getelementptr inbounds %struct.SpaceClip, ptr %75, i64 0, i32 11
  store i16 0, ptr %97, align 8, !tbaa !84
  br label %205

98:                                               ; preds = %3
  %99 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %100 = load i32, ptr %99, align 8, !tbaa !89
  switch i32 %100, label %102 [
    i32 5898240, label %101
    i32 5963776, label %101
    i32 1507328, label %101
  ]

101:                                              ; preds = %98, %98, %98
  tail call void @ED_area_tag_redraw(ptr noundef %1) #8
  br label %102

102:                                              ; preds = %98, %101
  %103 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %104 = load i32, ptr %103, align 8, !tbaa !97
  switch i32 %104, label %206 [
    i32 6, label %205
    i32 1, label %205
  ]

105:                                              ; preds = %3
  %106 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %107 = load i32, ptr %106, align 8, !tbaa !89
  %108 = icmp eq i32 %107, 5898240
  br i1 %108, label %109, label %206

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %111 = load ptr, ptr %110, align 8, !tbaa !90
  %112 = getelementptr inbounds %struct.SpaceClip, ptr %111, i64 0, i32 13
  %113 = load i16, ptr %112, align 4, !tbaa !92
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %115, label %205

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  %117 = load ptr, ptr %116, align 8, !tbaa !34
  %118 = icmp eq ptr %117, null
  br i1 %118, label %132, label %119

119:                                              ; preds = %115, %129
  %120 = phi ptr [ %130, %129 ], [ %117, %115 ]
  %121 = getelementptr inbounds %struct.ARegion, ptr %120, i64 0, i32 8
  %122 = load i16, ptr %121, align 2, !tbaa !73
  %123 = icmp eq i16 %122, 4
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.ARegion, ptr %120, i64 0, i32 10
  %126 = load i16, ptr %125, align 2, !tbaa !93
  %127 = and i16 %126, 1
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %129, label %205

129:                                              ; preds = %124, %119
  %130 = load ptr, ptr %120, align 8, !tbaa !34
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %119, !llvm.loop !94

132:                                              ; preds = %129, %115
  %133 = getelementptr inbounds %struct.SpaceClip, ptr %111, i64 0, i32 11
  store i16 0, ptr %133, align 8, !tbaa !84
  br label %205

134:                                              ; preds = %3
  %135 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %136 = load i32, ptr %135, align 8, !tbaa !89
  %137 = icmp eq i32 %136, 262144
  br i1 %137, label %205, label %206

138:                                              ; preds = %3
  %139 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %140 = load i32, ptr %139, align 8, !tbaa !89
  %141 = icmp eq i32 %140, 1245184
  br i1 %141, label %142, label %206

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %144 = load ptr, ptr %143, align 8, !tbaa !90
  %145 = getelementptr inbounds %struct.SpaceClip, ptr %144, i64 0, i32 13
  %146 = load i16, ptr %145, align 4, !tbaa !92
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %148, label %167

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  %150 = load ptr, ptr %149, align 8, !tbaa !34
  %151 = icmp eq ptr %150, null
  br i1 %151, label %165, label %152

152:                                              ; preds = %148, %162
  %153 = phi ptr [ %163, %162 ], [ %150, %148 ]
  %154 = getelementptr inbounds %struct.ARegion, ptr %153, i64 0, i32 8
  %155 = load i16, ptr %154, align 2, !tbaa !73
  %156 = icmp eq i16 %155, 4
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.ARegion, ptr %153, i64 0, i32 10
  %159 = load i16, ptr %158, align 2, !tbaa !93
  %160 = and i16 %159, 1
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %157, %152
  %163 = load ptr, ptr %153, align 8, !tbaa !34
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %152, !llvm.loop !94

165:                                              ; preds = %162, %148
  %166 = getelementptr inbounds %struct.SpaceClip, ptr %144, i64 0, i32 11
  store i16 0, ptr %166, align 8, !tbaa !84
  br label %167

167:                                              ; preds = %157, %142, %165
  %168 = tail call ptr @ED_space_clip_get_clip(ptr noundef %144) #8
  %169 = icmp eq ptr %168, null
  br i1 %169, label %205, label %170

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.MovieClip, ptr %168, i64 0, i32 11, i32 5, i32 9
  store i32 0, ptr %171, align 8, !tbaa !98
  br label %205

172:                                              ; preds = %3
  %173 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %174 = load i32, ptr %173, align 8, !tbaa !97
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %206

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %178 = load ptr, ptr %177, align 8, !tbaa !90
  %179 = getelementptr inbounds %struct.SpaceClip, ptr %178, i64 0, i32 23
  %180 = load i16, ptr %179, align 4, !tbaa !100
  %181 = icmp eq i16 %180, 1
  br i1 %181, label %182, label %205

182:                                              ; preds = %176
  %183 = getelementptr inbounds %struct.SpaceClip, ptr %178, i64 0, i32 13
  %184 = load i16, ptr %183, align 4, !tbaa !92
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %186, label %205

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  %188 = load ptr, ptr %187, align 8, !tbaa !34
  %189 = icmp eq ptr %188, null
  br i1 %189, label %203, label %190

190:                                              ; preds = %186, %200
  %191 = phi ptr [ %201, %200 ], [ %188, %186 ]
  %192 = getelementptr inbounds %struct.ARegion, ptr %191, i64 0, i32 8
  %193 = load i16, ptr %192, align 2, !tbaa !73
  %194 = icmp eq i16 %193, 4
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.ARegion, ptr %191, i64 0, i32 10
  %197 = load i16, ptr %196, align 2, !tbaa !93
  %198 = and i16 %197, 1
  %199 = icmp eq i16 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %195, %190
  %201 = load ptr, ptr %191, align 8, !tbaa !34
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %190, !llvm.loop !94

203:                                              ; preds = %200, %186
  %204 = getelementptr inbounds %struct.SpaceClip, ptr %178, i64 0, i32 11
  store i16 0, ptr %204, align 8, !tbaa !84
  br label %205

205:                                              ; preds = %195, %124, %88, %24, %203, %182, %176, %170, %167, %134, %132, %109, %102, %102, %96, %73, %6, %9, %32
  tail call void @ED_area_tag_redraw(ptr noundef %1) #8
  br label %206

206:                                              ; preds = %205, %172, %138, %134, %105, %102, %63, %6, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @clip_context(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %5 = tail call zeroext i8 @CTX_data_dir(ptr noundef %1) #8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @CTX_data_dir_set(ptr noundef %2, ptr noundef nonnull @clip_context_dir) #8
  br label %24

8:                                                ; preds = %3
  %9 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str) #8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !81
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef nonnull %13) #8
  br label %24

16:                                               ; preds = %8
  %17 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.1) #8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 28
  %21 = load ptr, ptr %20, align 8, !tbaa !101
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef nonnull %21) #8
  br label %24

24:                                               ; preds = %16, %19, %23, %11, %15, %7
  %25 = phi i32 [ 1, %7 ], [ 1, %15 ], [ 1, %11 ], [ 1, %23 ], [ 1, %19 ], [ 0, %16 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal void @clip_dropboxes() #0 {
  %1 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.3, i32 noundef 20, i32 noundef 0) #8
  %2 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @clip_drop_poll, ptr noundef nonnull @clip_drop_copy) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clip_refresh(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #8
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #8
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = tail call ptr @BKE_area_find_region_type(ptr noundef %1, i32 noundef 0) #8
  %9 = tail call ptr @BKE_area_find_region_type(ptr noundef %1, i32 noundef 5) #8
  %10 = tail call ptr @BKE_area_find_region_type(ptr noundef %1, i32 noundef 6) #8
  %11 = tail call ptr @BKE_area_find_region_type(ptr noundef %1, i32 noundef 7) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = tail call ptr @BKE_area_find_region_type(ptr noundef %1, i32 noundef 0) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %18 = tail call ptr %17(i64 noundef 384, ptr noundef nonnull @.str.105) #8
  %19 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %19, ptr noundef nonnull %14, ptr noundef %18) #8
  tail call fastcc void @init_preview_region(ptr noundef %0, ptr noundef %18)
  br label %20

20:                                               ; preds = %2, %13, %16
  %21 = phi ptr [ %18, %16 ], [ %11, %2 ], [ null, %13 ]
  %22 = tail call ptr @ED_clip_has_properties_region(ptr noundef %1) #8
  %23 = tail call ptr @BKE_area_find_region_type(ptr noundef %1, i32 noundef 2) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = tail call ptr @BKE_area_find_region_type(ptr noundef %1, i32 noundef 7) #8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %30 = tail call ptr %29(i64 noundef 384, ptr noundef nonnull @.str.106) #8
  %31 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %31, ptr noundef nonnull %26, ptr noundef %30) #8
  %32 = getelementptr inbounds %struct.ARegion, ptr %30, i64 0, i32 8
  store i16 2, ptr %32, align 2, !tbaa !73
  %33 = getelementptr inbounds %struct.ARegion, ptr %30, i64 0, i32 9
  store i16 3, ptr %33, align 8, !tbaa !78
  %34 = getelementptr inbounds %struct.ARegion, ptr %30, i64 0, i32 2, i32 9
  store i16 8, ptr %34, align 8, !tbaa !79
  %35 = getelementptr inbounds %struct.ARegion, ptr %30, i64 0, i32 2, i32 14
  store i16 2, ptr %35, align 2, !tbaa !80
  br label %36

36:                                               ; preds = %20, %25, %28
  %37 = phi ptr [ %30, %28 ], [ %23, %20 ], [ null, %25 ]
  %38 = getelementptr inbounds %struct.SpaceClip, ptr %7, i64 0, i32 14
  %39 = load i16, ptr %38, align 2, !tbaa !102
  switch i16 %39, label %67 [
    i16 0, label %40
    i16 1, label %41
    i16 2, label %54
  ]

40:                                               ; preds = %36
  br label %67

41:                                               ; preds = %36
  %42 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %43 = getelementptr inbounds %struct.SpaceClip, ptr %42, i64 0, i32 14
  %44 = load i16, ptr %43, align 2, !tbaa !102
  %45 = icmp eq i16 %44, 2
  %46 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 14
  %47 = load i16, ptr %46, align 2, !tbaa !80
  %48 = and i16 %47, 2
  %49 = icmp eq i16 %48, 0
  br i1 %45, label %50, label %52

50:                                               ; preds = %41
  br i1 %49, label %51, label %67

51:                                               ; preds = %50
  tail call fastcc void @init_preview_region(ptr noundef %0, ptr noundef %21)
  br label %67

52:                                               ; preds = %41
  br i1 %49, label %67, label %53

53:                                               ; preds = %52
  tail call fastcc void @init_preview_region(ptr noundef %0, ptr noundef %21)
  br label %67

54:                                               ; preds = %36
  %55 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %56 = getelementptr inbounds %struct.SpaceClip, ptr %55, i64 0, i32 14
  %57 = load i16, ptr %56, align 2, !tbaa !102
  %58 = icmp eq i16 %57, 2
  %59 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 14
  %60 = load i16, ptr %59, align 2, !tbaa !80
  %61 = and i16 %60, 2
  %62 = icmp eq i16 %61, 0
  br i1 %58, label %63, label %65

63:                                               ; preds = %54
  br i1 %62, label %64, label %67

64:                                               ; preds = %63
  tail call fastcc void @init_preview_region(ptr noundef %0, ptr noundef %21)
  br label %67

65:                                               ; preds = %54
  br i1 %62, label %67, label %66

66:                                               ; preds = %65
  tail call fastcc void @init_preview_region(ptr noundef %0, ptr noundef %21)
  br label %67

67:                                               ; preds = %66, %65, %64, %63, %53, %52, %51, %50, %36, %40
  %68 = phi i1 [ true, %36 ], [ true, %40 ], [ false, %50 ], [ false, %51 ], [ false, %52 ], [ false, %53 ], [ false, %63 ], [ false, %64 ], [ false, %65 ], [ false, %66 ]
  %69 = phi i1 [ true, %36 ], [ false, %40 ], [ true, %50 ], [ true, %51 ], [ true, %52 ], [ true, %53 ], [ true, %63 ], [ true, %64 ], [ true, %65 ], [ true, %66 ]
  %70 = phi i1 [ true, %36 ], [ true, %40 ], [ true, %50 ], [ true, %51 ], [ true, %52 ], [ true, %53 ], [ false, %63 ], [ false, %64 ], [ false, %65 ], [ false, %66 ]
  %71 = icmp eq ptr %8, null
  br i1 %69, label %89, label %72

72:                                               ; preds = %67
  br i1 %71, label %83, label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 10
  %75 = load i16, ptr %74, align 2, !tbaa !93
  %76 = and i16 %75, 1
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = and i16 %75, -2
  store i16 %79, ptr %74, align 2, !tbaa !93
  %80 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2, i32 14
  %81 = load i16, ptr %80, align 2, !tbaa !80
  %82 = and i16 %81, -1025
  store i16 %82, ptr %80, align 2, !tbaa !80
  br label %83

83:                                               ; preds = %78, %73, %72
  %84 = phi i8 [ 1, %78 ], [ 0, %73 ], [ 0, %72 ]
  br i1 %71, label %109, label %85

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 9
  %87 = load i16, ptr %86, align 8, !tbaa !78
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %109, label %107

89:                                               ; preds = %67
  br i1 %71, label %101, label %90

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 10
  %92 = load i16, ptr %91, align 2, !tbaa !93
  %93 = and i16 %92, 1
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = or disjoint i16 %92, 1
  store i16 %96, ptr %91, align 2, !tbaa !93
  %97 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2, i32 14
  %98 = load i16, ptr %97, align 2, !tbaa !80
  %99 = and i16 %98, -1025
  store i16 %99, ptr %97, align 2, !tbaa !80
  %100 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 26
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %100) #8
  br label %101

101:                                              ; preds = %95, %90, %89
  %102 = phi i8 [ 0, %90 ], [ 1, %95 ], [ 0, %89 ]
  br i1 %71, label %109, label %103

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 9
  %105 = load i16, ptr %104, align 8, !tbaa !78
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %103, %85
  %108 = phi ptr [ %86, %85 ], [ %104, %103 ]
  store i16 0, ptr %108, align 8, !tbaa !78
  br label %109

109:                                              ; preds = %107, %101, %103, %83, %85
  %110 = phi i8 [ %84, %85 ], [ %84, %83 ], [ %102, %103 ], [ %102, %101 ], [ 1, %107 ]
  %111 = icmp eq ptr %22, null
  br i1 %69, label %130, label %112

112:                                              ; preds = %109
  br i1 %111, label %123, label %113

113:                                              ; preds = %112
  %114 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 10
  %115 = load i16, ptr %114, align 2, !tbaa !93
  %116 = and i16 %115, 1
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = and i16 %115, -2
  store i16 %119, ptr %114, align 2, !tbaa !93
  %120 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 2, i32 14
  %121 = load i16, ptr %120, align 2, !tbaa !80
  %122 = and i16 %121, -1025
  store i16 %122, ptr %120, align 2, !tbaa !80
  br label %123

123:                                              ; preds = %118, %113, %112
  %124 = phi i8 [ 1, %118 ], [ %110, %113 ], [ %110, %112 ]
  br i1 %111, label %149, label %125

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 9
  %127 = load i16, ptr %126, align 8, !tbaa !78
  %128 = icmp eq i16 %127, 4
  br i1 %128, label %149, label %129

129:                                              ; preds = %125
  store i16 4, ptr %126, align 8, !tbaa !78
  br label %149

130:                                              ; preds = %109
  br i1 %111, label %142, label %131

131:                                              ; preds = %130
  %132 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 10
  %133 = load i16, ptr %132, align 2, !tbaa !93
  %134 = and i16 %133, 1
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = or disjoint i16 %133, 1
  store i16 %137, ptr %132, align 2, !tbaa !93
  %138 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 2, i32 14
  %139 = load i16, ptr %138, align 2, !tbaa !80
  %140 = and i16 %139, -1025
  store i16 %140, ptr %138, align 2, !tbaa !80
  %141 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 26
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %141) #8
  br label %142

142:                                              ; preds = %136, %131, %130
  %143 = phi i8 [ %110, %131 ], [ 1, %136 ], [ %110, %130 ]
  br i1 %111, label %149, label %144

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 9
  %146 = load i16, ptr %145, align 8, !tbaa !78
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %144
  store i16 0, ptr %145, align 8, !tbaa !78
  br label %149

149:                                              ; preds = %142, %144, %148, %123, %125, %129
  %150 = phi i8 [ 1, %129 ], [ %124, %125 ], [ %124, %123 ], [ 1, %148 ], [ %143, %144 ], [ %143, %142 ]
  %151 = icmp eq ptr %9, null
  br i1 %69, label %170, label %152

152:                                              ; preds = %149
  br i1 %151, label %163, label %153

153:                                              ; preds = %152
  %154 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 10
  %155 = load i16, ptr %154, align 2, !tbaa !93
  %156 = and i16 %155, 1
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = and i16 %155, -2
  store i16 %159, ptr %154, align 2, !tbaa !93
  %160 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 2, i32 14
  %161 = load i16, ptr %160, align 2, !tbaa !80
  %162 = and i16 %161, -1025
  store i16 %162, ptr %160, align 2, !tbaa !80
  br label %163

163:                                              ; preds = %158, %153, %152
  %164 = phi i8 [ 1, %158 ], [ %150, %153 ], [ %150, %152 ]
  br i1 %151, label %189, label %165

165:                                              ; preds = %163
  %166 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 9
  %167 = load i16, ptr %166, align 8, !tbaa !78
  %168 = icmp eq i16 %167, 3
  br i1 %168, label %189, label %169

169:                                              ; preds = %165
  store i16 3, ptr %166, align 8, !tbaa !78
  br label %189

170:                                              ; preds = %149
  br i1 %151, label %182, label %171

171:                                              ; preds = %170
  %172 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 10
  %173 = load i16, ptr %172, align 2, !tbaa !93
  %174 = and i16 %173, 1
  %175 = icmp eq i16 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %171
  %177 = or disjoint i16 %173, 1
  store i16 %177, ptr %172, align 2, !tbaa !93
  %178 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 2, i32 14
  %179 = load i16, ptr %178, align 2, !tbaa !80
  %180 = and i16 %179, -1025
  store i16 %180, ptr %178, align 2, !tbaa !80
  %181 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 26
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %181) #8
  br label %182

182:                                              ; preds = %176, %171, %170
  %183 = phi i8 [ %150, %171 ], [ 1, %176 ], [ %150, %170 ]
  br i1 %151, label %189, label %184

184:                                              ; preds = %182
  %185 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 9
  %186 = load i16, ptr %185, align 8, !tbaa !78
  %187 = icmp eq i16 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %184
  store i16 0, ptr %185, align 8, !tbaa !78
  br label %189

189:                                              ; preds = %182, %184, %188, %163, %165, %169
  %190 = phi i8 [ 1, %169 ], [ %164, %165 ], [ %164, %163 ], [ 1, %188 ], [ %183, %184 ], [ %183, %182 ]
  %191 = icmp eq ptr %10, null
  br i1 %69, label %210, label %192

192:                                              ; preds = %189
  br i1 %191, label %203, label %193

193:                                              ; preds = %192
  %194 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 10
  %195 = load i16, ptr %194, align 2, !tbaa !93
  %196 = and i16 %195, 1
  %197 = icmp eq i16 %196, 0
  br i1 %197, label %203, label %198

198:                                              ; preds = %193
  %199 = and i16 %195, -2
  store i16 %199, ptr %194, align 2, !tbaa !93
  %200 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2, i32 14
  %201 = load i16, ptr %200, align 2, !tbaa !80
  %202 = and i16 %201, -1025
  store i16 %202, ptr %200, align 2, !tbaa !80
  br label %203

203:                                              ; preds = %198, %193, %192
  %204 = phi i8 [ 1, %198 ], [ %190, %193 ], [ %190, %192 ]
  br i1 %191, label %229, label %205

205:                                              ; preds = %203
  %206 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 9
  %207 = load i16, ptr %206, align 8, !tbaa !78
  %208 = icmp eq i16 %207, 34
  br i1 %208, label %229, label %209

209:                                              ; preds = %205
  store i16 34, ptr %206, align 8, !tbaa !78
  br label %229

210:                                              ; preds = %189
  br i1 %191, label %222, label %211

211:                                              ; preds = %210
  %212 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 10
  %213 = load i16, ptr %212, align 2, !tbaa !93
  %214 = and i16 %213, 1
  %215 = icmp eq i16 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %211
  %217 = or disjoint i16 %213, 1
  store i16 %217, ptr %212, align 2, !tbaa !93
  %218 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2, i32 14
  %219 = load i16, ptr %218, align 2, !tbaa !80
  %220 = and i16 %219, -1025
  store i16 %220, ptr %218, align 2, !tbaa !80
  %221 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 26
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %221) #8
  br label %222

222:                                              ; preds = %216, %211, %210
  %223 = phi i8 [ %190, %211 ], [ 1, %216 ], [ %190, %210 ]
  br i1 %191, label %229, label %224

224:                                              ; preds = %222
  %225 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 9
  %226 = load i16, ptr %225, align 8, !tbaa !78
  %227 = icmp eq i16 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %224
  store i16 0, ptr %225, align 8, !tbaa !78
  br label %229

229:                                              ; preds = %222, %224, %228, %203, %205, %209
  %230 = phi i8 [ 1, %209 ], [ %204, %205 ], [ %204, %203 ], [ 1, %228 ], [ %223, %224 ], [ %223, %222 ]
  %231 = icmp eq ptr %21, null
  br i1 %68, label %251, label %232

232:                                              ; preds = %229
  br i1 %231, label %245, label %233

233:                                              ; preds = %232
  %234 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 10
  %235 = load i16, ptr %234, align 2, !tbaa !93
  %236 = and i16 %235, 1
  %237 = icmp eq i16 %236, 0
  br i1 %237, label %245, label %238

238:                                              ; preds = %233
  %239 = and i16 %235, -2
  store i16 %239, ptr %234, align 2, !tbaa !93
  %240 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2
  %241 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 14
  %242 = load i16, ptr %241, align 2, !tbaa !80
  %243 = and i16 %242, -1025
  store i16 %243, ptr %241, align 2, !tbaa !80
  %244 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %244, ptr noundef nonnull align 8 dereferenceable(16) %240, i64 16, i1 false), !tbaa.struct !103
  br label %245

245:                                              ; preds = %238, %233, %232
  %246 = phi i8 [ 1, %238 ], [ %230, %233 ], [ %230, %232 ]
  br i1 %231, label %271, label %247

247:                                              ; preds = %245
  %248 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 9
  %249 = load i16, ptr %248, align 8, !tbaa !78
  %250 = icmp eq i16 %249, 0
  br i1 %250, label %271, label %269

251:                                              ; preds = %229
  br i1 %231, label %263, label %252

252:                                              ; preds = %251
  %253 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 10
  %254 = load i16, ptr %253, align 2, !tbaa !93
  %255 = and i16 %254, 1
  %256 = icmp eq i16 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %252
  %258 = or disjoint i16 %254, 1
  store i16 %258, ptr %253, align 2, !tbaa !93
  %259 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 14
  %260 = load i16, ptr %259, align 2, !tbaa !80
  %261 = and i16 %260, -1025
  store i16 %261, ptr %259, align 2, !tbaa !80
  %262 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 26
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %262) #8
  br label %263

263:                                              ; preds = %257, %252, %251
  %264 = phi i8 [ %230, %252 ], [ 1, %257 ], [ %230, %251 ]
  br i1 %231, label %271, label %265

265:                                              ; preds = %263
  %266 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 9
  %267 = load i16, ptr %266, align 8, !tbaa !78
  %268 = icmp eq i16 %267, 0
  br i1 %268, label %271, label %269

269:                                              ; preds = %265, %247
  %270 = phi ptr [ %248, %247 ], [ %266, %265 ]
  store i16 0, ptr %270, align 8, !tbaa !78
  br label %271

271:                                              ; preds = %269, %263, %265, %245, %247
  %272 = phi i8 [ %246, %247 ], [ %246, %245 ], [ %264, %265 ], [ %264, %263 ], [ 1, %269 ]
  %273 = icmp eq ptr %37, null
  br i1 %70, label %292, label %274

274:                                              ; preds = %271
  br i1 %273, label %285, label %275

275:                                              ; preds = %274
  %276 = getelementptr inbounds %struct.ARegion, ptr %37, i64 0, i32 10
  %277 = load i16, ptr %276, align 2, !tbaa !93
  %278 = and i16 %277, 1
  %279 = icmp eq i16 %278, 0
  br i1 %279, label %285, label %280

280:                                              ; preds = %275
  %281 = and i16 %277, -2
  store i16 %281, ptr %276, align 2, !tbaa !93
  %282 = getelementptr inbounds %struct.ARegion, ptr %37, i64 0, i32 2, i32 14
  %283 = load i16, ptr %282, align 2, !tbaa !80
  %284 = and i16 %283, -1025
  store i16 %284, ptr %282, align 2, !tbaa !80
  br label %285

285:                                              ; preds = %280, %275, %274
  %286 = phi i8 [ 1, %280 ], [ %272, %275 ], [ %272, %274 ]
  br i1 %273, label %311, label %287

287:                                              ; preds = %285
  %288 = getelementptr inbounds %struct.ARegion, ptr %37, i64 0, i32 9
  %289 = load i16, ptr %288, align 8, !tbaa !78
  %290 = icmp eq i16 %289, 3
  br i1 %290, label %311, label %291

291:                                              ; preds = %287
  store i16 3, ptr %288, align 8, !tbaa !78
  br label %311

292:                                              ; preds = %271
  br i1 %273, label %304, label %293

293:                                              ; preds = %292
  %294 = getelementptr inbounds %struct.ARegion, ptr %37, i64 0, i32 10
  %295 = load i16, ptr %294, align 2, !tbaa !93
  %296 = and i16 %295, 1
  %297 = icmp eq i16 %296, 0
  br i1 %297, label %298, label %304

298:                                              ; preds = %293
  %299 = or disjoint i16 %295, 1
  store i16 %299, ptr %294, align 2, !tbaa !93
  %300 = getelementptr inbounds %struct.ARegion, ptr %37, i64 0, i32 2, i32 14
  %301 = load i16, ptr %300, align 2, !tbaa !80
  %302 = and i16 %301, -1025
  store i16 %302, ptr %300, align 2, !tbaa !80
  %303 = getelementptr inbounds %struct.ARegion, ptr %37, i64 0, i32 26
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %303) #8
  br label %304

304:                                              ; preds = %298, %293, %292
  %305 = phi i8 [ %272, %293 ], [ 1, %298 ], [ %272, %292 ]
  br i1 %273, label %311, label %306

306:                                              ; preds = %304
  %307 = getelementptr inbounds %struct.ARegion, ptr %37, i64 0, i32 9
  %308 = load i16, ptr %307, align 8, !tbaa !78
  %309 = icmp eq i16 %308, 0
  br i1 %309, label %311, label %310

310:                                              ; preds = %306
  store i16 0, ptr %307, align 8, !tbaa !78
  br label %311

311:                                              ; preds = %304, %306, %310, %285, %287, %291
  %312 = phi i8 [ 1, %291 ], [ %286, %287 ], [ %286, %285 ], [ 1, %310 ], [ %305, %306 ], [ %305, %304 ]
  %313 = icmp eq i8 %312, 0
  br i1 %313, label %315, label %314

314:                                              ; preds = %311
  tail call void @ED_area_initialize(ptr noundef %3, ptr noundef %4, ptr noundef %1) #8
  tail call void @ED_area_tag_redraw(ptr noundef %1) #8
  br label %315

315:                                              ; preds = %314, %311
  %316 = getelementptr inbounds %struct.SpaceClip, ptr %7, i64 0, i32 9
  %317 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 22, i32 5
  %318 = load i32, ptr %317, align 8, !tbaa !105
  tail call void @BKE_movieclip_user_set_frame(ptr noundef nonnull %316, i32 noundef %318) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clip_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !124
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !125
  %9 = sext i16 %8 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext 0, i32 noundef %6, i32 noundef %9) #8
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !126
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.107, i32 noundef 0, i32 noundef 0) #8
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %16 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %12, ptr noundef nonnull %14, ptr noundef nonnull %15) #8
  %17 = load ptr, ptr %10, align 8, !tbaa !126
  %18 = tail call ptr @WM_keymap_find(ptr noundef %17, ptr noundef nonnull @.str.3, i32 noundef 20, i32 noundef 0) #8
  %19 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %18, ptr noundef nonnull %14, ptr noundef nonnull %15) #8
  %20 = load ptr, ptr %10, align 8, !tbaa !126
  %21 = tail call ptr @WM_keymap_find(ptr noundef %20, ptr noundef nonnull @.str.35, i32 noundef 20, i32 noundef 0) #8
  %22 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %21, ptr noundef nonnull %14, ptr noundef nonnull %15) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clip_main_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %18 = tail call ptr @ED_space_clip_get_clip(ptr noundef %17) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #8
  %19 = icmp ne ptr %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.MovieClip, ptr %18, i64 0, i32 12
  %22 = load ptr, ptr %21, align 8, !tbaa !129
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.SpaceClip, ptr %17, i64 0, i32 9
  tail call void @BKE_tracking_context_sync_user(ptr noundef nonnull %22, ptr noundef nonnull %25) #8
  br label %26

26:                                               ; preds = %24, %20, %2
  %27 = getelementptr inbounds %struct.SpaceClip, ptr %17, i64 0, i32 12
  %28 = load i32, ptr %27, align 8, !tbaa !68
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %57, label %31

31:                                               ; preds = %26
  br i1 %19, label %32, label %39

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.MovieClip, ptr %18, i64 0, i32 11, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !137
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = tail call ptr @ED_space_clip_get_stable_buffer(ptr noundef %17, ptr noundef null, ptr noundef null, ptr noundef null) #8
  br label %39

39:                                               ; preds = %37, %32, %31
  %40 = phi ptr [ %38, %37 ], [ null, %32 ], [ null, %31 ]
  %41 = tail call zeroext i8 @ED_clip_view_selection(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.SpaceClip, ptr %17, i64 0, i32 6
  %45 = load float, ptr %44, align 4, !tbaa !138
  %46 = getelementptr inbounds %struct.SpaceClip, ptr %17, i64 0, i32 4
  %47 = load float, ptr %46, align 4, !tbaa !139
  %48 = fadd float %45, %47
  store float %48, ptr %46, align 4, !tbaa !139
  %49 = getelementptr inbounds %struct.SpaceClip, ptr %17, i64 0, i32 7
  %50 = load float, ptr %49, align 8, !tbaa !140
  %51 = getelementptr inbounds %struct.SpaceClip, ptr %17, i64 0, i32 5
  %52 = load float, ptr %51, align 8, !tbaa !141
  %53 = fadd float %50, %52
  store float %53, ptr %51, align 8, !tbaa !141
  br label %54

54:                                               ; preds = %43, %39
  %55 = icmp eq ptr %40, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %54
  tail call void @IMB_freeImBuf(ptr noundef nonnull %40) #8
  br label %57

57:                                               ; preds = %54, %56, %26
  tail call void @UI_ThemeClearColor(i32 noundef 2) #8
  tail call void @glClear(i32 noundef 16384) #8
  %58 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  call void @ED_space_clip_get_size(ptr noundef %58, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  call void @ED_space_clip_get_aspect(ptr noundef %58, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %59 = load i32, ptr %5, align 4, !tbaa !142
  %60 = sitofp i32 %59 to float
  %61 = load float, ptr %3, align 4, !tbaa !104
  %62 = fmul float %61, %60
  %63 = load i32, ptr %6, align 4, !tbaa !142
  %64 = sitofp i32 %63 to float
  %65 = load float, ptr %4, align 4, !tbaa !104
  %66 = fmul float %65, %64
  %67 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %68 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !143
  %70 = load i32, ptr %67, align 4, !tbaa !144
  %71 = sub nsw i32 %69, %70
  %72 = add nsw i32 %71, 1
  %73 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !145
  %75 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %76 = load i32, ptr %75, align 4, !tbaa !146
  %77 = sub nsw i32 %74, %76
  %78 = add nsw i32 %77, 1
  %79 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  store float 0.000000e+00, ptr %79, align 8, !tbaa !147
  %80 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 2
  store float 0.000000e+00, ptr %80, align 8, !tbaa !148
  %81 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 1
  store float %62, ptr %81, align 4, !tbaa !149
  %82 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 3
  store float %66, ptr %82, align 4, !tbaa !150
  %83 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %84 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4, i32 2
  store i32 0, ptr %84, align 8, !tbaa !151
  store i32 0, ptr %83, align 8, !tbaa !152
  %85 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4, i32 1
  store i32 %72, ptr %85, align 4, !tbaa !153
  %86 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4, i32 3
  store i32 %78, ptr %86, align 4, !tbaa !154
  %87 = sitofp i32 %70 to float
  %88 = sitofp i32 %72 to float
  %89 = getelementptr inbounds %struct.SpaceClip, ptr %58, i64 0, i32 8
  %90 = load float, ptr %89, align 4, !tbaa !69
  %91 = fneg float %90
  %92 = call float @llvm.fmuladd.f32(float %91, float %62, float %88)
  %93 = fmul float %92, 5.000000e-01
  %94 = fadd float %93, %87
  %95 = sitofp i32 %76 to float
  %96 = sitofp i32 %78 to float
  %97 = call float @llvm.fmuladd.f32(float %91, float %66, float %96)
  %98 = fmul float %97, 5.000000e-01
  %99 = fadd float %98, %95
  %100 = getelementptr inbounds %struct.SpaceClip, ptr %58, i64 0, i32 4
  %101 = load float, ptr %100, align 4, !tbaa !139
  %102 = call float @llvm.fmuladd.f32(float %91, float %101, float %94)
  %103 = getelementptr inbounds %struct.SpaceClip, ptr %58, i64 0, i32 5
  %104 = load float, ptr %103, align 8, !tbaa !141
  %105 = call float @llvm.fmuladd.f32(float %91, float %104, float %99)
  %106 = fsub float %87, %102
  %107 = fdiv float %106, %90
  %108 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  store float %107, ptr %108, align 8, !tbaa !155
  %109 = fdiv float %88, %90
  %110 = fadd float %109, %107
  %111 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  store float %110, ptr %111, align 4, !tbaa !156
  %112 = fsub float %95, %105
  %113 = fdiv float %112, %90
  %114 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  store float %113, ptr %114, align 8, !tbaa !157
  %115 = fdiv float %96, %90
  %116 = fadd float %115, %113
  %117 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  store float %116, ptr %117, align 4, !tbaa !158
  %118 = fdiv float %107, %62
  store float %118, ptr %108, align 8, !tbaa !155
  %119 = fdiv float %110, %62
  store float %119, ptr %111, align 4, !tbaa !156
  %120 = fdiv float %113, %66
  store float %120, ptr %114, align 8, !tbaa !157
  %121 = fdiv float %116, %66
  store float %121, ptr %117, align 4, !tbaa !158
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @clip_draw_main(ptr noundef %0, ptr noundef %17, ptr noundef %1) #8
  call void @UI_view2d_view_to_region_fl(ptr noundef nonnull %79, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull %11, ptr noundef nonnull %12) #8
  call void @ED_space_clip_get_size(ptr noundef %17, ptr noundef nonnull %13, ptr noundef nonnull %14) #8
  call void @ED_space_clip_get_zoom(ptr noundef %17, ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %10) #8
  call void @ED_space_clip_get_aspect(ptr noundef %17, ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  %122 = getelementptr inbounds %struct.SpaceClip, ptr %17, i64 0, i32 13
  %123 = load i16, ptr %122, align 4, !tbaa !92
  %124 = icmp eq i16 %123, 3
  br i1 %124, label %125, label %142

125:                                              ; preds = %57
  %126 = call ptr @CTX_data_edit_mask(ptr noundef %0) #8
  %127 = icmp ne ptr %126, null
  %128 = and i1 %19, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %125
  %130 = call ptr @CTX_wm_area(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #8
  call void @ED_mask_get_size(ptr noundef %130, ptr noundef nonnull %15, ptr noundef nonnull %16) #8
  %131 = getelementptr inbounds %struct.SpaceClip, ptr %17, i64 0, i32 28, i32 1
  %132 = load i8, ptr %131, align 8, !tbaa !159
  %133 = getelementptr inbounds %struct.SpaceClip, ptr %17, i64 0, i32 28, i32 2
  %134 = load i8, ptr %133, align 1, !tbaa !160
  %135 = getelementptr inbounds %struct.SpaceClip, ptr %17, i64 0, i32 28, i32 3
  %136 = load i8, ptr %135, align 2, !tbaa !161
  %137 = load i32, ptr %15, align 4, !tbaa !142
  %138 = load i32, ptr %16, align 4, !tbaa !142
  %139 = load float, ptr %7, align 4, !tbaa !104
  %140 = load float, ptr %8, align 4, !tbaa !104
  %141 = getelementptr inbounds %struct.SpaceClip, ptr %17, i64 0, i32 20
  call void @ED_mask_draw_region(ptr noundef nonnull %126, ptr noundef %1, i8 noundef zeroext %132, i8 noundef zeroext %134, i8 noundef zeroext %136, i32 noundef %137, i32 noundef %138, float noundef %139, float noundef %140, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %141, ptr noundef %0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #8
  br label %142

142:                                              ; preds = %125, %129, %57
  %143 = load i16, ptr %122, align 4, !tbaa !92
  %144 = icmp eq i16 %143, 3
  %145 = getelementptr inbounds %struct.SpaceClip, ptr %17, i64 0, i32 25
  %146 = load i32, ptr %145, align 8, !tbaa !72
  %147 = icmp eq i32 %146, 1
  %148 = or i1 %144, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %142
  call void @glPushMatrix() #8
  %150 = load float, ptr %11, align 4, !tbaa !104
  %151 = load float, ptr %12, align 4, !tbaa !104
  call void @glTranslatef(float noundef %150, float noundef %151, float noundef 0.000000e+00) #8
  %152 = load float, ptr %9, align 4, !tbaa !104
  %153 = load float, ptr %10, align 4, !tbaa !104
  call void @glScalef(float noundef %152, float noundef %153, float noundef 0.000000e+00) #8
  %154 = getelementptr inbounds %struct.SpaceClip, ptr %17, i64 0, i32 20
  call void @glMultMatrixf(ptr noundef nonnull %154) #8
  %155 = load i32, ptr %13, align 4, !tbaa !142
  %156 = sitofp i32 %155 to float
  %157 = load i32, ptr %14, align 4, !tbaa !142
  %158 = sitofp i32 %157 to float
  call void @glScalef(float noundef %156, float noundef %158, float noundef 0.000000e+00) #8
  %159 = getelementptr inbounds %struct.SpaceClip, ptr %17, i64 0, i32 27
  call void @draw_image_cursor(ptr noundef %1, ptr noundef nonnull %159) #8
  call void @glPopMatrix() #8
  br label %160

160:                                              ; preds = %149, %142
  call void @clip_draw_cache_and_notes(ptr noundef %0, ptr noundef %17, ptr noundef %1) #8
  %161 = load i32, ptr %27, align 8, !tbaa !68
  %162 = and i32 %161, 4096
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %160
  call void @clip_draw_grease_pencil(ptr noundef %0, i32 noundef 1) #8
  br label %165

165:                                              ; preds = %164, %160
  call void @UI_view2d_view_restore(ptr noundef %0) #8
  %166 = load i32, ptr %27, align 8, !tbaa !68
  %167 = and i32 %166, 4096
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %165
  call void @clip_draw_grease_pencil(ptr noundef %0, i32 noundef 0) #8
  br label %170

170:                                              ; preds = %169, %165
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clip_main_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !87
  %7 = icmp eq i32 %6, 369098752
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !97
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @ED_region_tag_redraw(ptr noundef %2) #8
  br label %13

13:                                               ; preds = %8, %12, %4
  ret void
}

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @clip_preview_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !124
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !125
  %9 = sext i16 %8 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext -1, i32 noundef %6, i32 noundef %9) #8
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !126
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef 20, i32 noundef 0) #8
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %16 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %12, ptr noundef nonnull %14, ptr noundef nonnull %15) #8
  %17 = load ptr, ptr %10, align 8, !tbaa !126
  %18 = tail call ptr @WM_keymap_find(ptr noundef %17, ptr noundef nonnull @.str.89, i32 noundef 20, i32 noundef 0) #8
  %19 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %18, ptr noundef nonnull %14, ptr noundef nonnull %15) #8
  %20 = load ptr, ptr %10, align 8, !tbaa !126
  %21 = tail call ptr @WM_keymap_find(ptr noundef %20, ptr noundef nonnull @.str.99, i32 noundef 20, i32 noundef 0) #8
  %22 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %21, ptr noundef nonnull %14, ptr noundef nonnull %15) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clip_preview_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 14
  %5 = load i16, ptr %4, align 2, !tbaa !102
  switch i16 %5, label %45 [
    i16 1, label %6
    i16 2, label %21
  ]

6:                                                ; preds = %2
  %7 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %9 = getelementptr inbounds %struct.SpaceClip, ptr %7, i64 0, i32 12
  %10 = load i32, ptr %9, align 8, !tbaa !68
  %11 = and i32 %10, 131072
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  tail call void @ED_clip_graph_center_current_frame(ptr noundef %8, ptr noundef %1) #8
  br label %14

14:                                               ; preds = %6, %13
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @UI_ThemeClearColor(i32 noundef 2) #8
  tail call void @glClear(i32 noundef 16384) #8
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %15) #8
  tail call void @clip_draw_graph(ptr noundef %7, ptr noundef %1, ptr noundef %8) #8
  tail call void @UI_view2d_view_restore(ptr noundef %0) #8
  %16 = load i32, ptr %9, align 8, !tbaa !68
  %17 = and i32 %16, 262144
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i16
  %20 = tail call ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr noundef nonnull %15, i16 noundef signext %19, i16 noundef signext 0, i16 noundef signext 3, i16 noundef signext 0) #8
  tail call void @UI_view2d_scrollers_draw(ptr noundef %0, ptr noundef nonnull %15, ptr noundef %20) #8
  br label %43

21:                                               ; preds = %2
  %22 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %23 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %24 = tail call ptr @ED_space_clip_get_clip(ptr noundef %23) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.MovieClip, ptr %24, i64 0, i32 11
  tail call void @BKE_tracking_dopesheet_update(ptr noundef nonnull %27) #8
  br label %28

28:                                               ; preds = %21, %26
  %29 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @UI_ThemeClearColor(i32 noundef 2) #8
  tail call void @glClear(i32 noundef 16384) #8
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %29) #8
  %30 = getelementptr inbounds %struct.SpaceClip, ptr %23, i64 0, i32 12
  %31 = load i32, ptr %30, align 8, !tbaa !68
  %32 = and i32 %31, 262144
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i16
  %35 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %36 = load i16, ptr %35, align 8, !tbaa !124
  %37 = sext i16 %36 to i32
  %38 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %39 = load i16, ptr %38, align 2, !tbaa !125
  %40 = sext i16 %39 to i32
  %41 = tail call ptr @UI_view2d_grid_calc(ptr noundef %22, ptr noundef nonnull %29, i16 noundef signext %34, i16 noundef signext 1, i16 noundef signext -1, i16 noundef signext -1, i32 noundef %37, i32 noundef %40) #8
  tail call void @UI_view2d_grid_draw(ptr noundef nonnull %29, ptr noundef %41, i32 noundef 31) #8
  tail call void @UI_view2d_grid_free(ptr noundef %41) #8
  tail call void @clip_draw_dopesheet_main(ptr noundef %23, ptr noundef %1, ptr noundef %22) #8
  tail call void @UI_view2d_view_restore(ptr noundef %0) #8
  %42 = tail call ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr noundef nonnull %29, i16 noundef signext %34, i16 noundef signext 1, i16 noundef signext -1, i16 noundef signext -1) #8
  tail call void @UI_view2d_scrollers_draw(ptr noundef %0, ptr noundef nonnull %29, ptr noundef %42) #8
  br label %43

43:                                               ; preds = %14, %28
  %44 = phi ptr [ %42, %28 ], [ %20, %14 ]
  tail call void @UI_view2d_scrollers_free(ptr noundef %44) #8
  br label %45

45:                                               ; preds = %43, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @clip_preview_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #3 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clip_properties_area_init(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #8
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !126
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef 20, i32 noundef 0) #8
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %5) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clip_properties_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !81
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 9
  %7 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 11
  tail call void @BKE_movieclip_update_scopes(ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #8
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef -1) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clip_properties_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !87
  switch i32 %6, label %16 [
    i32 369098752, label %7
    i32 184549376, label %11
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !89
  %10 = icmp eq i32 %9, 5963776
  br i1 %10, label %15, label %16

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !97
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %7
  tail call void @ED_region_tag_redraw(ptr noundef %2) #8
  br label %16

16:                                               ; preds = %15, %11, %7, %4
  ret void
}

declare void @ED_clip_buttons_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @clip_props_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !87
  switch i32 %6, label %24 [
    i32 16777216, label %7
    i32 67108864, label %11
    i32 251658240, label %15
    i32 369098752, label %19
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !89
  %10 = icmp eq i32 %9, 262144
  br i1 %10, label %23, label %24

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !89
  %14 = icmp eq i32 %13, 720896
  br i1 %14, label %23, label %24

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !89
  %18 = icmp eq i32 %17, 1245184
  br i1 %18, label %23, label %24

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %21 = load i32, ptr %20, align 8, !tbaa !97
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %15, %11, %7
  tail call void @ED_region_tag_redraw(ptr noundef %2) #8
  br label %24

24:                                               ; preds = %23, %19, %15, %11, %7, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clip_tools_area_init(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #8
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !126
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef 20, i32 noundef 0) #8
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %6, ptr noundef %5) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clip_tools_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef -1) #8
  ret void
}

declare void @ED_clip_tool_props_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @clip_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @ED_region_header_init(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clip_header_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clip_header_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !87
  %7 = icmp eq i32 %6, 67108864
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !89
  %11 = icmp eq i32 %10, 983040
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @ED_region_tag_redraw(ptr noundef %2) #8
  br label %13

13:                                               ; preds = %12, %8, %4
  ret void
}

declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @clip_channels_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #3 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clip_channels_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  store i16 8, ptr %4, align 8, !tbaa !79
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %6 = load i16, ptr %5, align 8, !tbaa !124
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %9 = load i16, ptr %8, align 2, !tbaa !125
  %10 = sext i16 %9 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext 1, i32 noundef %7, i32 noundef %10) #8
  %11 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !126
  %13 = tail call ptr @WM_keymap_find(ptr noundef %12, ptr noundef nonnull @.str.99, i32 noundef 20, i32 noundef 0) #8
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %16 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %17 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %14, ptr noundef %13, ptr noundef nonnull %15, ptr noundef nonnull %16) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clip_channels_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  tail call void @BKE_tracking_dopesheet_update(ptr noundef nonnull %7) #8
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @UI_ThemeClearColor(i32 noundef 2) #8
  tail call void @glClear(i32 noundef 16384) #8
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %9) #8
  tail call void @clip_draw_dopesheet_channels(ptr noundef %0, ptr noundef %1) #8
  tail call void @UI_view2d_view_restore(ptr noundef %0) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @init_preview_region(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 8
  store i16 7, ptr %6, align 2, !tbaa !73
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 9
  store i16 1, ptr %7, align 8, !tbaa !78
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 10
  %9 = load i16, ptr %8, align 2, !tbaa !93
  %10 = or i16 %9, 1
  store i16 %10, ptr %8, align 2, !tbaa !93
  %11 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 14
  %12 = load i16, ptr %11, align 2, !tbaa !102
  %13 = icmp eq i16 %12, 2
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  br i1 %13, label %15, label %40

15:                                               ; preds = %2
  store float -1.000000e+01, ptr %14, align 8, !tbaa !147
  %16 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 11
  %17 = load i16, ptr %16, align 4, !tbaa !162
  %18 = sext i16 %17 to i32
  %19 = sub nsw i32 0, %18
  %20 = sitofp i32 %19 to float
  %21 = fdiv float %20, 3.000000e+00
  %22 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 2
  store float %21, ptr %22, align 8, !tbaa !148
  %23 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 10
  %24 = load i16, ptr %23, align 2, !tbaa !163
  %25 = sitofp i16 %24 to float
  %26 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 1
  store float %25, ptr %26, align 4, !tbaa !149
  %27 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 3
  store float 0.000000e+00, ptr %27, align 4, !tbaa !150
  %28 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !103
  %29 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 5
  store float 0.000000e+00, ptr %29, align 8, !tbaa !104
  %30 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 5, i64 1
  store float 0.000000e+00, ptr %30, align 4, !tbaa !104
  %31 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 6
  store float 3.000000e+05, ptr %31, align 8, !tbaa !104
  %32 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 6, i64 1
  store float 0x47EFFFFFE0000000, ptr %32, align 4, !tbaa !104
  %33 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 7
  store float 0x3F847AE140000000, ptr %33, align 8, !tbaa !164
  %34 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 8
  store float 5.000000e+01, ptr %34, align 4, !tbaa !165
  %35 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  store i16 74, ptr %35, align 8, !tbaa !79
  %36 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 12
  store i16 512, ptr %36, align 2, !tbaa !166
  %37 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 13
  store i16 16, ptr %37, align 8, !tbaa !167
  %38 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 15
  store i16 4, ptr %38, align 4, !tbaa !168
  %39 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 14
  store i16 2, ptr %39, align 2, !tbaa !80
  br label %56

40:                                               ; preds = %2
  store float 0.000000e+00, ptr %14, align 8, !tbaa !147
  %41 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 2
  store float -1.000000e+01, ptr %41, align 8, !tbaa !148
  %42 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !169
  %44 = sitofp i32 %43 to float
  %45 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 1
  store float %44, ptr %45, align 4, !tbaa !149
  %46 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 3
  store float 1.000000e+01, ptr %46, align 4, !tbaa !150
  %47 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %47, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !103
  %48 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 5
  store float 0x3810000000000000, ptr %48, align 8, !tbaa !104
  %49 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 5, i64 1
  store float 0x3810000000000000, ptr %49, align 4, !tbaa !104
  %50 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 6
  store float 3.000000e+05, ptr %50, align 8, !tbaa !104
  %51 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 6, i64 1
  store float 0x47EFFFFFE0000000, ptr %51, align 4, !tbaa !104
  %52 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  store i16 105, ptr %52, align 8, !tbaa !79
  %53 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 7
  store float 0.000000e+00, ptr %53, align 8, !tbaa !164
  %54 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 8
  store float 0.000000e+00, ptr %54, align 4, !tbaa !165
  %55 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %55, i8 0, i64 10, i1 false)
  br label %56

56:                                               ; preds = %40, %15
  ret void
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

declare ptr @WM_dropboxmap_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_event_add_dropbox_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #2

declare void @CLIP_OT_open(ptr noundef) #2

declare void @CLIP_OT_reload(ptr noundef) #2

declare void @CLIP_OT_view_pan(ptr noundef) #2

declare void @CLIP_OT_view_zoom(ptr noundef) #2

declare void @CLIP_OT_view_zoom_in(ptr noundef) #2

declare void @CLIP_OT_view_zoom_out(ptr noundef) #2

declare void @CLIP_OT_view_zoom_ratio(ptr noundef) #2

declare void @CLIP_OT_view_all(ptr noundef) #2

declare void @CLIP_OT_view_selected(ptr noundef) #2

declare void @CLIP_OT_change_frame(ptr noundef) #2

declare void @CLIP_OT_rebuild_proxy(ptr noundef) #2

declare void @CLIP_OT_mode_set(ptr noundef) #2

declare void @CLIP_OT_view_ndof(ptr noundef) #2

declare void @CLIP_OT_prefetch(ptr noundef) #2

declare void @CLIP_OT_set_scene_frames(ptr noundef) #2

declare void @CLIP_OT_cursor_set(ptr noundef) #2

declare void @CLIP_OT_tools(ptr noundef) #2

declare void @CLIP_OT_properties(ptr noundef) #2

declare void @CLIP_OT_frame_jump(ptr noundef) #2

declare void @CLIP_OT_set_center_principal(ptr noundef) #2

declare void @CLIP_OT_select(ptr noundef) #2

declare void @CLIP_OT_select_all(ptr noundef) #2

declare void @CLIP_OT_select_border(ptr noundef) #2

declare void @CLIP_OT_select_lasso(ptr noundef) #2

declare void @CLIP_OT_select_circle(ptr noundef) #2

declare void @CLIP_OT_select_grouped(ptr noundef) #2

declare void @CLIP_OT_add_marker(ptr noundef) #2

declare void @CLIP_OT_add_marker_at_click(ptr noundef) #2

declare void @CLIP_OT_slide_marker(ptr noundef) #2

declare void @CLIP_OT_delete_track(ptr noundef) #2

declare void @CLIP_OT_delete_marker(ptr noundef) #2

declare void @CLIP_OT_track_markers(ptr noundef) #2

declare void @CLIP_OT_refine_markers(ptr noundef) #2

declare void @CLIP_OT_solve_camera(ptr noundef) #2

declare void @CLIP_OT_clear_solution(ptr noundef) #2

declare void @CLIP_OT_disable_markers(ptr noundef) #2

declare void @CLIP_OT_hide_tracks(ptr noundef) #2

declare void @CLIP_OT_hide_tracks_clear(ptr noundef) #2

declare void @CLIP_OT_lock_tracks(ptr noundef) #2

declare void @CLIP_OT_set_solver_keyframe(ptr noundef) #2

declare void @CLIP_OT_set_origin(ptr noundef) #2

declare void @CLIP_OT_set_plane(ptr noundef) #2

declare void @CLIP_OT_set_axis(ptr noundef) #2

declare void @CLIP_OT_set_scale(ptr noundef) #2

declare void @CLIP_OT_set_solution_scale(ptr noundef) #2

declare void @CLIP_OT_apply_solution_scale(ptr noundef) #2

declare void @CLIP_OT_detect_features(ptr noundef) #2

declare void @CLIP_OT_stabilize_2d_add(ptr noundef) #2

declare void @CLIP_OT_stabilize_2d_remove(ptr noundef) #2

declare void @CLIP_OT_stabilize_2d_select(ptr noundef) #2

declare void @CLIP_OT_stabilize_2d_set_rotation(ptr noundef) #2

declare void @CLIP_OT_clear_track_path(ptr noundef) #2

declare void @CLIP_OT_join_tracks(ptr noundef) #2

declare void @CLIP_OT_track_copy_color(ptr noundef) #2

declare void @CLIP_OT_clean_tracks(ptr noundef) #2

declare void @CLIP_OT_tracking_object_new(ptr noundef) #2

declare void @CLIP_OT_tracking_object_remove(ptr noundef) #2

declare void @CLIP_OT_copy_tracks(ptr noundef) #2

declare void @CLIP_OT_paste_tracks(ptr noundef) #2

declare void @CLIP_OT_create_plane_track(ptr noundef) #2

declare void @CLIP_OT_slide_plane_marker(ptr noundef) #2

declare void @CLIP_OT_keyframe_insert(ptr noundef) #2

declare void @CLIP_OT_keyframe_delete(ptr noundef) #2

declare void @CLIP_OT_graph_select(ptr noundef) #2

declare void @CLIP_OT_graph_select_border(ptr noundef) #2

declare void @CLIP_OT_graph_select_all_markers(ptr noundef) #2

declare void @CLIP_OT_graph_delete_curve(ptr noundef) #2

declare void @CLIP_OT_graph_delete_knot(ptr noundef) #2

declare void @CLIP_OT_graph_view_all(ptr noundef) #2

declare void @CLIP_OT_graph_center_current_frame(ptr noundef) #2

declare void @CLIP_OT_graph_disable_markers(ptr noundef) #2

declare void @CLIP_OT_dopesheet_select_channel(ptr noundef) #2

declare void @CLIP_OT_dopesheet_view_all(ptr noundef) #2

declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare ptr @WM_keymap_add_menu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @transform_keymap_for_space(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @CTX_data_dir(ptr noundef) local_unnamed_addr #2

declare void @CTX_data_dir_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @CTX_data_equals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CTX_data_id_pointer_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_dropbox_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @clip_drop_poll(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #5 {
  %4 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !170
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !173
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

; Function Attrs: nounwind uwtable
define internal void @clip_drop_copy(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #8
  %6 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 5
  call void @BLI_split_dirfile(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5, i64 noundef 1024, i64 noundef 1024) #8
  %7 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !174
  call void @RNA_string_set(ptr noundef %8, ptr noundef nonnull @.str.102, ptr noundef nonnull %4) #8
  %9 = load ptr, ptr %7, align 8, !tbaa !174
  call void @RNA_collection_clear(ptr noundef %9, ptr noundef nonnull @.str.103) #8
  %10 = load ptr, ptr %7, align 8, !tbaa !174
  call void @RNA_collection_add(ptr noundef %10, ptr noundef nonnull @.str.103, ptr noundef nonnull %3) #8
  call void @RNA_string_set(ptr noundef nonnull %3, ptr noundef nonnull @.str.104, ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret void
}

declare void @BLI_split_dirfile(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @RNA_collection_clear(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_collection_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ED_clip_has_properties_region(ptr noundef) local_unnamed_addr #2

declare void @WM_event_remove_handlers(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_area_initialize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_movieclip_user_set_frame(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_region_reinit(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_event_add_keymap_handler_bb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_tracking_context_sync_user(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_space_clip_get_stable_buffer(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_clip_view_selection(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @UI_ThemeClearColor(i32 noundef) local_unnamed_addr #2

declare void @glClear(i32 noundef) local_unnamed_addr #2

declare void @clip_draw_main(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_view_to_region_fl(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_space_clip_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_space_clip_get_zoom(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_space_clip_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_mask(ptr noundef) local_unnamed_addr #2

declare void @ED_mask_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_mask_draw_region(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, float noundef, float noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glPushMatrix() local_unnamed_addr #2

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glMultMatrixf(ptr noundef) local_unnamed_addr #2

declare void @draw_image_cursor(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @glPopMatrix() local_unnamed_addr #2

declare void @clip_draw_cache_and_notes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @clip_draw_grease_pencil(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @UI_view2d_view_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

declare void @ED_clip_graph_center_current_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_view_ortho(ptr noundef) local_unnamed_addr #2

declare void @clip_draw_graph(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @UI_view2d_scrollers_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

declare void @UI_view2d_scrollers_draw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_scrollers_free(ptr noundef) local_unnamed_addr #2

declare void @BKE_tracking_dopesheet_update(ptr noundef) local_unnamed_addr #2

declare ptr @UI_view2d_grid_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @UI_view2d_grid_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @UI_view2d_grid_free(ptr noundef) local_unnamed_addr #2

declare void @clip_draw_dopesheet_main(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_panels_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_event_add_keymap_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_movieclip_update_scopes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_panels(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_region_header_init(ptr noundef) local_unnamed_addr #2

declare void @ED_region_header(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @clip_draw_dopesheet_channels(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 80}
!39 = !{!"SpaceType", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 80, !40, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !41, i64 176, !41, i64 192, !40, i64 208}
!40 = !{!"int", !36, i64 0}
!41 = !{!"ListBase", !35, i64 0, !35, i64 8}
!42 = !{!39, !35, i64 88}
!43 = !{!39, !35, i64 96}
!44 = !{!39, !35, i64 104}
!45 = !{!39, !35, i64 136}
!46 = !{!39, !35, i64 144}
!47 = !{!39, !35, i64 152}
!48 = !{!39, !35, i64 120}
!49 = !{!39, !35, i64 168}
!50 = !{!39, !35, i64 160}
!51 = !{!39, !35, i64 128}
!52 = !{!53, !40, i64 16}
!53 = !{!"ARegionType", !35, i64 0, !35, i64 8, !40, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !41, i64 104, !41, i64 120, !41, i64 136, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !54, i64 172, !54, i64 174, !54, i64 176}
!54 = !{!"short", !36, i64 0}
!55 = !{!53, !35, i64 24}
!56 = !{!53, !35, i64 40}
!57 = !{!53, !35, i64 48}
!58 = !{!53, !40, i64 168}
!59 = !{!53, !40, i64 164}
!60 = !{!53, !40, i64 160}
!61 = !{!62, !40, i64 32}
!62 = !{!"SpaceClip", !35, i64 0, !35, i64 8, !41, i64 16, !40, i64 32, !63, i64 36, !63, i64 40, !63, i64 44, !63, i64 48, !63, i64 52, !64, i64 56, !35, i64 64, !65, i64 72, !40, i64 208, !54, i64 212, !54, i64 214, !40, i64 216, !36, i64 220, !63, i64 228, !63, i64 232, !40, i64 236, !36, i64 240, !36, i64 304, !40, i64 368, !54, i64 372, !54, i64 374, !40, i64 376, !40, i64 380, !36, i64 384, !67, i64 392}
!63 = !{!"float", !36, i64 0}
!64 = !{!"MovieClipUser", !40, i64 0, !54, i64 4, !54, i64 6}
!65 = !{!"MovieClipScopes", !54, i64 0, !54, i64 2, !40, i64 4, !40, i64 8, !40, i64 12, !66, i64 16, !35, i64 80, !35, i64 88, !36, i64 96, !54, i64 104, !54, i64 106, !40, i64 108, !35, i64 112, !35, i64 120, !36, i64 128}
!66 = !{!"MovieTrackingMarker", !36, i64 0, !36, i64 8, !36, i64 40, !36, i64 48, !40, i64 56, !40, i64 60}
!67 = !{!"MaskSpaceInfo", !35, i64 0, !36, i64 8, !36, i64 9, !36, i64 10, !36, i64 11}
!68 = !{!62, !40, i64 208}
!69 = !{!62, !63, i64 52}
!70 = !{!62, !40, i64 216}
!71 = !{!62, !40, i64 76}
!72 = !{!62, !40, i64 376}
!73 = !{!74, !54, i64 214}
!74 = !{!"ARegion", !35, i64 0, !35, i64 8, !75, i64 16, !77, i64 176, !77, i64 192, !54, i64 208, !54, i64 210, !54, i64 212, !54, i64 214, !54, i64 216, !54, i64 218, !63, i64 220, !54, i64 224, !54, i64 226, !54, i64 228, !54, i64 230, !54, i64 232, !54, i64 234, !54, i64 236, !54, i64 238, !35, i64 240, !41, i64 248, !41, i64 264, !41, i64 280, !41, i64 296, !41, i64 312, !41, i64 328, !41, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!75 = !{!"View2D", !76, i64 0, !76, i64 16, !77, i64 32, !77, i64 48, !77, i64 64, !36, i64 80, !36, i64 88, !63, i64 96, !63, i64 100, !54, i64 104, !54, i64 106, !54, i64 108, !54, i64 110, !54, i64 112, !54, i64 114, !54, i64 116, !54, i64 118, !54, i64 120, !54, i64 122, !54, i64 124, !54, i64 126, !35, i64 128, !40, i64 136, !40, i64 140, !35, i64 144, !35, i64 152}
!76 = !{!"rctf", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12}
!77 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!78 = !{!74, !54, i64 216}
!79 = !{!74, !54, i64 120}
!80 = !{!74, !54, i64 130}
!81 = !{!62, !35, i64 64}
!82 = !{!62, !35, i64 160}
!83 = !{!62, !35, i64 152}
!84 = !{!62, !54, i64 72}
!85 = !{!86, !35, i64 176}
!86 = !{!"wmKeyMapItem", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !36, i64 88, !54, i64 152, !54, i64 154, !54, i64 156, !54, i64 158, !54, i64 160, !54, i64 162, !54, i64 164, !54, i64 166, !54, i64 168, !54, i64 170, !54, i64 172, !54, i64 174, !35, i64 176}
!87 = !{!88, !40, i64 36}
!88 = !{!"wmNotifier", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !35, i64 56}
!89 = !{!88, !40, i64 40}
!90 = !{!91, !35, i64 96}
!91 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !77, i64 56, !36, i64 72, !36, i64 73, !54, i64 74, !54, i64 76, !54, i64 78, !54, i64 80, !54, i64 82, !54, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !41, i64 96, !41, i64 112, !41, i64 128, !41, i64 144}
!92 = !{!62, !54, i64 212}
!93 = !{!74, !54, i64 218}
!94 = distinct !{!94, !95, !96}
!95 = !{!"llvm.loop.mustprogress"}
!96 = !{!"llvm.loop.unroll.disable"}
!97 = !{!88, !40, i64 48}
!98 = !{!99, !40, i64 40}
!99 = !{!"MovieTrackingStabilization", !40, i64 0, !40, i64 4, !40, i64 8, !63, i64 12, !35, i64 16, !63, i64 24, !63, i64 28, !63, i64 32, !40, i64 36, !40, i64 40, !63, i64 44}
!100 = !{!62, !54, i64 372}
!101 = !{!62, !35, i64 392}
!102 = !{!62, !54, i64 214}
!103 = !{i64 0, i64 4, !104, i64 4, i64 4, !104, i64 8, i64 4, !104, i64 12, i64 4, !104}
!104 = !{!63, !63, i64 0}
!105 = !{!106, !40, i64 680}
!106 = !{!"Scene", !107, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !41, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !54, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !108, i64 280, !115, i64 4264, !41, i64 4296, !41, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !54, i64 4376, !54, i64 4378, !40, i64 4380, !41, i64 4384, !116, i64 4400, !117, i64 4416, !120, i64 4600, !35, i64 4608, !121, i64 4616, !35, i64 4640, !122, i64 4648, !122, i64 4656, !110, i64 4664, !111, i64 4824, !123, i64 4888, !35, i64 4952}
!107 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !54, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!108 = !{!"RenderData", !109, i64 0, !35, i64 248, !35, i64 256, !112, i64 264, !113, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !63, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !54, i64 432, !54, i64 434, !63, i64 436, !63, i64 440, !63, i64 444, !63, i64 448, !63, i64 452, !54, i64 456, !54, i64 458, !54, i64 460, !54, i64 462, !54, i64 464, !54, i64 466, !40, i64 468, !54, i64 472, !54, i64 474, !54, i64 476, !54, i64 478, !54, i64 480, !54, i64 482, !40, i64 484, !40, i64 488, !54, i64 492, !54, i64 494, !40, i64 496, !40, i64 500, !54, i64 504, !54, i64 506, !54, i64 508, !54, i64 510, !54, i64 512, !36, i64 514, !36, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !54, i64 528, !54, i64 530, !54, i64 532, !54, i64 534, !54, i64 536, !54, i64 538, !54, i64 540, !54, i64 542, !76, i64 544, !76, i64 560, !77, i64 576, !41, i64 592, !54, i64 608, !54, i64 610, !63, i64 612, !63, i64 616, !63, i64 620, !63, i64 624, !40, i64 628, !63, i64 632, !63, i64 636, !63, i64 640, !63, i64 644, !54, i64 648, !54, i64 650, !54, i64 652, !54, i64 654, !54, i64 656, !54, i64 658, !63, i64 660, !63, i64 664, !54, i64 668, !54, i64 670, !63, i64 672, !63, i64 676, !36, i64 680, !40, i64 1704, !54, i64 1708, !54, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !40, i64 2520, !54, i64 2524, !54, i64 2526, !63, i64 2528, !63, i64 2532, !54, i64 2536, !54, i64 2538, !63, i64 2540, !54, i64 2544, !54, i64 2546, !40, i64 2548, !54, i64 2552, !54, i64 2554, !54, i64 2556, !54, i64 2558, !63, i64 2560, !63, i64 2564, !35, i64 2568, !40, i64 2576, !63, i64 2580, !36, i64 2584, !114, i64 2616, !40, i64 3976, !40, i64 3980}
!109 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !54, i64 8, !54, i64 10, !63, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !110, i64 24, !111, i64 184}
!110 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 72, !63, i64 136, !63, i64 140, !35, i64 144, !35, i64 152}
!111 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!112 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !54, i64 48, !54, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!113 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !63, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !35, i64 64}
!114 = !{!"BakeData", !109, i64 0, !36, i64 248, !54, i64 1272, !54, i64 1274, !54, i64 1276, !54, i64 1278, !63, i64 1280, !63, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!115 = !{!"AudioData", !40, i64 0, !63, i64 4, !63, i64 8, !63, i64 12, !40, i64 16, !54, i64 20, !54, i64 22, !63, i64 24, !63, i64 28}
!116 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!117 = !{!"GameData", !116, i64 0, !54, i64 16, !54, i64 18, !54, i64 20, !54, i64 22, !54, i64 24, !54, i64 26, !54, i64 28, !54, i64 30, !54, i64 32, !36, i64 34, !118, i64 40, !54, i64 64, !54, i64 66, !63, i64 68, !119, i64 72, !63, i64 128, !63, i64 132, !40, i64 136, !54, i64 140, !54, i64 142, !54, i64 144, !54, i64 146, !54, i64 148, !54, i64 150, !54, i64 152, !54, i64 154, !54, i64 156, !54, i64 158, !54, i64 160, !54, i64 162, !63, i64 164, !63, i64 168, !63, i64 172, !63, i64 176, !63, i64 180}
!118 = !{!"GameDome", !54, i64 0, !54, i64 2, !54, i64 4, !54, i64 6, !63, i64 8, !63, i64 12, !35, i64 16}
!119 = !{!"RecastData", !63, i64 0, !63, i64 4, !63, i64 8, !63, i64 12, !63, i64 16, !63, i64 20, !63, i64 24, !63, i64 28, !63, i64 32, !63, i64 36, !40, i64 40, !63, i64 44, !63, i64 48, !54, i64 52, !54, i64 54}
!120 = !{!"UnitSettings", !63, i64 0, !36, i64 4, !36, i64 5, !54, i64 6}
!121 = !{!"PhysicsSettings", !36, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!122 = !{!"long", !36, i64 0}
!123 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!124 = !{!74, !54, i64 208}
!125 = !{!74, !54, i64 210}
!126 = !{!127, !35, i64 296}
!127 = !{!"wmWindowManager", !107, i64 0, !35, i64 120, !35, i64 128, !41, i64 136, !40, i64 152, !54, i64 156, !54, i64 158, !41, i64 160, !41, i64 176, !128, i64 192, !41, i64 232, !41, i64 248, !41, i64 264, !41, i64 280, !35, i64 296, !35, i64 304, !35, i64 312, !41, i64 320, !35, i64 336, !36, i64 344, !36, i64 345}
!128 = !{!"ReportList", !41, i64 0, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !35, i64 32}
!129 = !{!130, !35, i64 1528}
!130 = !{!"MovieClip", !107, i64 0, !35, i64 120, !36, i64 128, !40, i64 1152, !40, i64 1156, !36, i64 1160, !63, i64 1168, !63, i64 1172, !35, i64 1176, !35, i64 1184, !35, i64 1192, !131, i64 1200, !35, i64 1528, !136, i64 1536, !40, i64 2312, !40, i64 2316, !40, i64 2320, !40, i64 2324, !123, i64 2328}
!131 = !{!"MovieTracking", !132, i64 0, !133, i64 72, !41, i64 128, !41, i64 144, !134, i64 160, !99, i64 184, !35, i64 232, !35, i64 240, !41, i64 248, !40, i64 264, !40, i64 268, !35, i64 272, !135, i64 280}
!132 = !{!"MovieTrackingSettings", !40, i64 0, !54, i64 4, !54, i64 6, !63, i64 8, !54, i64 12, !54, i64 14, !54, i64 16, !54, i64 18, !54, i64 20, !54, i64 22, !63, i64 24, !54, i64 28, !54, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !54, i64 44, !54, i64 46, !63, i64 48, !40, i64 52, !40, i64 56, !63, i64 60, !63, i64 64, !40, i64 68}
!133 = !{!"MovieTrackingCamera", !35, i64 0, !54, i64 8, !54, i64 10, !63, i64 12, !63, i64 16, !63, i64 20, !54, i64 24, !54, i64 26, !36, i64 28, !63, i64 36, !63, i64 40, !63, i64 44, !63, i64 48, !63, i64 52}
!134 = !{!"MovieTrackingReconstruction", !40, i64 0, !63, i64 4, !40, i64 8, !40, i64 12, !35, i64 16}
!135 = !{!"MovieTrackingDopesheet", !40, i64 0, !54, i64 4, !54, i64 6, !41, i64 8, !41, i64 24, !40, i64 40, !40, i64 44}
!136 = !{!"MovieClipProxy", !36, i64 0, !54, i64 768, !54, i64 770, !54, i64 772, !54, i64 774}
!137 = !{!130, !40, i64 1384}
!138 = !{!62, !63, i64 44}
!139 = !{!62, !63, i64 36}
!140 = !{!62, !63, i64 48}
!141 = !{!62, !63, i64 40}
!142 = !{!40, !40, i64 0}
!143 = !{!77, !40, i64 4}
!144 = !{!77, !40, i64 0}
!145 = !{!77, !40, i64 12}
!146 = !{!77, !40, i64 8}
!147 = !{!74, !63, i64 16}
!148 = !{!74, !63, i64 24}
!149 = !{!74, !63, i64 20}
!150 = !{!74, !63, i64 28}
!151 = !{!74, !40, i64 88}
!152 = !{!74, !40, i64 80}
!153 = !{!74, !40, i64 84}
!154 = !{!74, !40, i64 92}
!155 = !{!74, !63, i64 32}
!156 = !{!74, !63, i64 36}
!157 = !{!74, !63, i64 40}
!158 = !{!74, !63, i64 44}
!159 = !{!62, !36, i64 400}
!160 = !{!62, !36, i64 401}
!161 = !{!62, !36, i64 402}
!162 = !{!91, !54, i64 76}
!163 = !{!91, !54, i64 74}
!164 = !{!74, !63, i64 112}
!165 = !{!74, !63, i64 116}
!166 = !{!74, !54, i64 126}
!167 = !{!74, !54, i64 128}
!168 = !{!74, !54, i64 132}
!169 = !{!106, !40, i64 688}
!170 = !{!171, !40, i64 20}
!171 = !{!"wmDrag", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !35, i64 24, !36, i64 32, !172, i64 1056, !35, i64 1064, !63, i64 1072, !40, i64 1076, !40, i64 1080, !36, i64 1084, !40, i64 1284}
!172 = !{!"double", !36, i64 0}
!173 = !{!171, !40, i64 16}
!174 = !{!175, !35, i64 48}
!175 = !{!"wmDropBox", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !54, i64 56}
