; ModuleID = 'blender/source/blender/editors/space_clip/clip_ops.c'
source_filename = "blender/source/blender/editors/space_clip/clip_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.PropertyPointerRNA = type { %struct.PointerRNA, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.ViewPanData = type { float, float, float, float, float, float, i32, ptr }
%struct.ViewZoomData = type { float, float, float, i32, [2 x float], ptr, double }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ProxyBuildJob = type { ptr, ptr, ptr, i32, i8, ptr }
%struct.wmNDOFMotionData = type { [3 x float], [3 x float], float, i32 }
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
%struct.wmOperatorTypeMacro = type { ptr, ptr, [64 x i8], ptr, ptr }
%struct.wmTimer = type { ptr, ptr, ptr, double, i32, ptr, double, double, double, double, double, i32 }
%struct.ProxyQueue = type { i32, i32, i32, i32, ptr, ptr, ptr }
%struct.ProxyThread = type { ptr, ptr, ptr, i32, ptr, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Open Clip\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Load a sequence of frames or a movie file\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"CLIP_OT_open\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Reload Clip\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Reload clip\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"CLIP_OT_reload\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"View Pan\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"CLIP_OT_view_pan\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Pan the view\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.11 = private unnamed_addr constant [73 x i8] c"Offset in floating point units, 1.0 is the width and height of the image\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"View Zoom\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"CLIP_OT_view_zoom\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Zoom in/out the view\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"factor\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"Factor\00", align 1
@.str.17 = private unnamed_addr constant [67 x i8] c"Zoom factor, values higher than 1.0 zoom in, lower values zoom out\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"View Zoom In\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"CLIP_OT_view_zoom_in\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"Zoom in the view\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"Cursor location in screen coordinates\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"View Zoom Out\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"CLIP_OT_view_zoom_out\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Zoom out the view\00", align 1
@.str.27 = private unnamed_addr constant [52 x i8] c"Cursor location in normalized (0.0-1.0) coordinates\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"View Zoom Ratio\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"CLIP_OT_view_zoom_ratio\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"Set the zoom ratio (based on clip size)\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"ratio\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"Ratio\00", align 1
@.str.33 = private unnamed_addr constant [65 x i8] c"Zoom ratio, 1.0 is 1:1, higher is zoomed in, lower is zoomed out\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"View All\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"CLIP_OT_view_all\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"View whole image with markers\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"fit_view\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"Fit View\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"Fit frame to the viewport\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"View Selected\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"CLIP_OT_view_selected\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"View all selected elements\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"Change Frame\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"CLIP_OT_change_frame\00", align 1
@.str.45 = private unnamed_addr constant [46 x i8] c"Interactively change the current frame number\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"Frame\00", align 1
@.str.48 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"Rebuild Proxy and Timecode Indices\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"CLIP_OT_rebuild_proxy\00", align 1
@.str.51 = private unnamed_addr constant [68 x i8] c"Rebuild all selected proxies and timecode indices in the background\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"Set Clip Mode\00", align 1
@.str.53 = private unnamed_addr constant [30 x i8] c"Set the clip interaction mode\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"CLIP_OT_mode_set\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@clip_editor_mode_items = external global [0 x %struct.EnumPropertyItem], align 8
@.str.56 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"NDOF Pan/Zoom\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"CLIP_OT_view_ndof\00", align 1
@.str.59 = private unnamed_addr constant [43 x i8] c"Use a 3D mouse device to pan/zoom the view\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"Prefetch Frames\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"CLIP_OT_prefetch\00", align 1
@.str.62 = private unnamed_addr constant [55 x i8] c"Prefetch frames from disk for faster playback/tracking\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"Set Scene Frames\00", align 1
@.str.64 = private unnamed_addr constant [25 x i8] c"CLIP_OT_set_scene_frames\00", align 1
@.str.65 = private unnamed_addr constant [71 x i8] c"Set scene's start and end frame to match clip's start frame and length\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"Set 2D Cursor\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"Set 2D cursor location\00", align 1
@.str.68 = private unnamed_addr constant [19 x i8] c"CLIP_OT_cursor_set\00", align 1
@.str.69 = private unnamed_addr constant [47 x i8] c"Cursor location in normalized clip coordinates\00", align 1
@.str.70 = private unnamed_addr constant [24 x i8] c"CLIP_OT_add_marker_move\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"Add Marker and Move\00", align 1
@.str.72 = private unnamed_addr constant [36 x i8] c"Add new marker and move it on movie\00", align 1
@.str.73 = private unnamed_addr constant [19 x i8] c"CLIP_OT_add_marker\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"TRANSFORM_OT_translate\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"release_confirm\00", align 1
@.str.76 = private unnamed_addr constant [25 x i8] c"CLIP_OT_add_marker_slide\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"Add Marker and Slide\00", align 1
@.str.78 = private unnamed_addr constant [66 x i8] c"Add new marker and slide it with mouse until mouse button release\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"relative_path\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.82 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.83 = private unnamed_addr constant [31 x i8] c"No files selected to be opened\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.84 = private unnamed_addr constant [21 x i8] c"Cannot read '%s': %s\00", align 1
@.str.85 = private unnamed_addr constant [30 x i8] c"unsupported movie clip format\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.86 = private unnamed_addr constant [23 x i8] c"OpenPropertyPointerRNA\00", align 1
@U = external global %struct.UserDef, align 8
@.str.87 = private unnamed_addr constant [16 x i8] c"ClipViewPanData\00", align 1
@.str.88 = private unnamed_addr constant [17 x i8] c"ClipViewZoomData\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"Building Proxies\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"proxy rebuild job\00", align 1
@__const.proxy_bitflag_to_array.size_flags = private unnamed_addr constant [2 x [4 x i32]] [[4 x i32] [i32 1, i32 2, i32 4, i32 8], [4 x i32] [i32 16, i32 32, i32 64, i32 128]], align 16
@.str.91 = private unnamed_addr constant [23 x i8] c"proxy threaded handles\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"proxy frame\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.93 = private unnamed_addr constant [28 x i8] c"movieclip proxy memory file\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CLIP_OT_open(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @open_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @open_invoke, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @open_cancel, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2096, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 19, i16 noundef signext 0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @open_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  %8 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #13
  %9 = tail call ptr @CTX_wm_screen(ptr noundef %0) #13
  %10 = tail call ptr @CTX_data_main(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #14
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  %13 = tail call i32 @RNA_collection_length(ptr noundef %12, ptr noundef nonnull @.str.79) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #14
  %16 = load ptr, ptr %11, align 8, !tbaa !19
  %17 = tail call i32 @RNA_boolean_get(ptr noundef %16, ptr noundef nonnull @.str.80) #13
  %18 = load ptr, ptr %11, align 8, !tbaa !19
  call void @RNA_string_get(ptr noundef %18, ptr noundef nonnull @.str.81, ptr noundef nonnull %6) #13
  %19 = and i32 %17, 255
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr @G, align 8, !tbaa !21
  %23 = getelementptr inbounds %struct.Main, ptr %22, i64 0, i32 2
  call void @BLI_path_rel(ptr noundef nonnull %6, ptr noundef nonnull %23) #13
  br label %24

24:                                               ; preds = %21, %15
  %25 = load ptr, ptr %11, align 8, !tbaa !19
  %26 = call ptr @RNA_struct_find_property(ptr noundef %25, ptr noundef nonnull @.str.79) #13
  %27 = load ptr, ptr %11, align 8, !tbaa !19
  %28 = call i32 @RNA_property_collection_lookup_int(ptr noundef %27, ptr noundef %26, i32 noundef 0, ptr noundef nonnull %5) #13
  call void @RNA_string_get(ptr noundef nonnull %5, ptr noundef nonnull @.str.82, ptr noundef nonnull %7) #13
  call void @BLI_join_dirfile(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  %29 = tail call ptr @__errno_location() #15
  store i32 0, ptr %29, align 4, !tbaa !24
  %30 = call ptr @BKE_movieclip_file_add(ptr noundef %10, ptr noundef nonnull %4) #13
  %31 = icmp eq ptr %30, null
  %32 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !25
  %34 = icmp eq ptr %33, null
  br i1 %31, label %38, label %50

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !26
  tail call void @BKE_report(ptr noundef %37, i32 noundef 32, ptr noundef nonnull @.str.83) #13
  br label %70

38:                                               ; preds = %24
  br i1 %34, label %41, label %39

39:                                               ; preds = %38
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !27
  call void %40(ptr noundef nonnull %33) #13
  br label %41

41:                                               ; preds = %39, %38
  %42 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !26
  %44 = load i32, ptr %29, align 4, !tbaa !24
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = call ptr @strerror(i32 noundef %44) #13
  br label %48

48:                                               ; preds = %41, %46
  %49 = phi ptr [ %47, %46 ], [ @.str.85, %41 ]
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %43, i32 noundef 32, ptr noundef nonnull @.str.84, ptr noundef nonnull %4, ptr noundef %49) #13
  br label %70

50:                                               ; preds = %24
  br i1 %34, label %51, label %53

51:                                               ; preds = %50
  call fastcc void @open_init(ptr noundef %0, ptr noundef nonnull %1) #16
  %52 = load ptr, ptr %32, align 8, !tbaa !25
  br label %53

53:                                               ; preds = %51, %50
  %54 = phi ptr [ %52, %51 ], [ %33, %50 ]
  %55 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !28
  %57 = icmp eq ptr %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.ID, ptr %30, i64 0, i32 6
  %60 = load i32, ptr %59, align 4, !tbaa !32
  %61 = add nsw i32 %60, -1
  store i32 %61, ptr %59, align 4, !tbaa !32
  call void @RNA_id_pointer_create(ptr noundef nonnull %30, ptr noundef nonnull %3) #13
  %62 = load ptr, ptr %55, align 8, !tbaa !28
  call void @RNA_property_pointer_set(ptr noundef nonnull %54, ptr noundef %62, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %3) #13
  %63 = load ptr, ptr %55, align 8, !tbaa !28
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %54, ptr noundef %63) #13
  br label %67

64:                                               ; preds = %53
  %65 = icmp eq ptr %8, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %64
  call void @ED_space_clip_set_clip(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %8, ptr noundef nonnull %30) #13
  br label %67

67:                                               ; preds = %64, %66, %58
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544323, ptr noundef nonnull %30) #13
  %68 = load ptr, ptr @MEM_freeN, align 8, !tbaa !27
  %69 = load ptr, ptr %32, align 8, !tbaa !25
  call void %68(ptr noundef %69) #13
  br label %70

70:                                               ; preds = %67, %48, %35
  %71 = phi i32 [ 4, %67 ], [ 2, %48 ], [ 2, %35 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret i32 %71
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @open_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [1024 x i8], align 16
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @ED_space_clip_get_clip(ptr noundef nonnull %5) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 2
  %12 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %11, i64 noundef 1024) #13
  %13 = load ptr, ptr @G, align 8, !tbaa !21
  %14 = getelementptr inbounds %struct.Main, ptr %13, i64 0, i32 2
  %15 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %4, ptr noundef nonnull %14) #13
  %16 = call zeroext i8 @BLI_parent_dir(ptr noundef nonnull %4) #13
  br label %19

17:                                               ; preds = %3, %7
  %18 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 9), i64 noundef 1024) #13
  br label %19

19:                                               ; preds = %17, %10
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !19
  %22 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %21, ptr noundef nonnull @.str.79) #13
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = call i32 @open_exec(ptr noundef %0, ptr noundef nonnull %1) #16, !range !44
  br label %35

26:                                               ; preds = %19
  %27 = load ptr, ptr %20, align 8, !tbaa !19
  %28 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %27, ptr noundef nonnull @.str.80) #13
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load ptr, ptr %20, align 8, !tbaa !19
  %32 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !45
  %33 = and i32 %32, 1048576
  call void @RNA_boolean_set(ptr noundef %31, ptr noundef nonnull @.str.80, i32 noundef %33) #13
  br label %34

34:                                               ; preds = %30, %26
  call fastcc void @open_init(ptr noundef %0, ptr noundef nonnull %1) #16
  call fastcc void @clip_filesel(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %4) #16
  br label %35

35:                                               ; preds = %34, %24
  %36 = phi i32 [ %25, %24 ], [ 1, %34 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #14
  ret i32 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @open_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !27
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  tail call void %3(ptr noundef %5) #13
  store ptr null, ptr %4, align 8, !tbaa !25
  ret void
}

; Function Attrs: optsize
declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_reload(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @reload_exec, ptr %4, align 8, !tbaa !15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @reload_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_movieclip(ptr noundef %0) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @BKE_movieclip_reload(ptr noundef nonnull %3) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef nonnull %3) #13
  br label %6

6:                                                ; preds = %2, %5
  %7 = phi i32 [ 4, %5 ], [ 2, %2 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CLIP_OT_view_pan(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_pan_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view_pan_invoke, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @view_pan_modal, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @view_pan_cancel, ptr %7, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_view_clip_poll, ptr %8, align 8, !tbaa !50
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %9, align 8, !tbaa !18
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.9, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_pan_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x float], align 4
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  call void @RNA_float_get_array(ptr noundef %6, ptr noundef nonnull @.str.9, ptr noundef nonnull %3) #13
  %7 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 12
  %8 = load i32, ptr %7, align 8, !tbaa !52
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  %11 = load float, ptr %3, align 4, !tbaa !58
  %12 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  br i1 %10, label %19, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 6
  %15 = load float, ptr %14, align 4, !tbaa !59
  %16 = fadd float %11, %15
  store float %16, ptr %14, align 4, !tbaa !59
  %17 = load float, ptr %12, align 4, !tbaa !58
  %18 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 7
  br label %25

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 4
  %21 = load float, ptr %20, align 4, !tbaa !60
  %22 = fadd float %11, %21
  store float %22, ptr %20, align 4, !tbaa !60
  %23 = load float, ptr %12, align 4, !tbaa !58
  %24 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 5
  br label %25

25:                                               ; preds = %19, %13
  %26 = phi ptr [ %24, %19 ], [ %18, %13 ]
  %27 = phi float [ %23, %19 ], [ %17, %13 ]
  %28 = load float, ptr %26, align 8, !tbaa !58
  %29 = fadd float %27, %28
  store float %29, ptr %26, align 8, !tbaa !58
  %30 = call ptr @CTX_wm_region(ptr noundef %0) #13
  call void @ED_region_tag_redraw(ptr noundef %30) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_pan_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 8
  %5 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !61
  %7 = icmp eq i16 %6, 14
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %12 = getelementptr inbounds %struct.SpaceClip, ptr %9, i64 0, i32 8
  %13 = load float, ptr %12, align 4, !tbaa !64
  %14 = load <2 x i32>, ptr %10, align 8, !tbaa !24
  %15 = load <2 x i32>, ptr %11, align 4, !tbaa !24
  %16 = sub nsw <2 x i32> %14, %15
  %17 = sitofp <2 x i32> %16 to <2 x float>
  %18 = insertelement <2 x float> poison, float %13, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = fdiv <2 x float> %17, %19
  store <2 x float> %20, ptr %4, align 8, !tbaa !58
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !19
  call void @RNA_float_set_array(ptr noundef %22, ptr noundef nonnull @.str.9, ptr noundef nonnull %4) #13
  %23 = call i32 @view_pan_exec(ptr noundef %0, ptr noundef %1) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %25

24:                                               ; preds = %3
  tail call fastcc void @view_pan_init(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #16
  br label %25

25:                                               ; preds = %24, %8
  %26 = phi i32 [ 4, %8 ], [ 1, %24 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_pan_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 8
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !61
  switch i16 %9, label %29 [
    i16 4, label %10
    i16 218, label %27
    i16 221, label %28
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ViewPanData, ptr %7, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = getelementptr inbounds %struct.ViewPanData, ptr %7, i64 0, i32 4
  tail call fastcc void @copy_v2_v2(ptr noundef %12, ptr noundef nonnull %13) #16
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %15 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 8
  %16 = load float, ptr %15, align 4, !tbaa !64
  %17 = load <2 x float>, ptr %7, align 8, !tbaa !58
  %18 = load <2 x i32>, ptr %14, align 4, !tbaa !24
  %19 = sitofp <2 x i32> %18 to <2 x float>
  %20 = fsub <2 x float> %17, %19
  %21 = insertelement <2 x float> poison, float %16, i64 0
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> zeroinitializer
  %23 = fdiv <2 x float> %20, %22
  store <2 x float> %23, ptr %4, align 8, !tbaa !58
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !19
  call void @RNA_float_set_array(ptr noundef %25, ptr noundef nonnull @.str.9, ptr noundef nonnull %4) #13
  %26 = call i32 @view_pan_exec(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %39

27:                                               ; preds = %3
  tail call fastcc void @view_pan_exit(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 1) #16
  br label %39

28:                                               ; preds = %3
  tail call fastcc void @view_pan_exit(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 0) #16
  br label %39

29:                                               ; preds = %3
  %30 = sext i16 %9 to i32
  %31 = getelementptr inbounds %struct.ViewPanData, ptr %7, i64 0, i32 6
  %32 = load i32, ptr %31, align 8, !tbaa !67
  %33 = icmp eq i32 %32, %30
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %36 = load i16, ptr %35, align 2, !tbaa !68
  %37 = icmp eq i16 %36, 2
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  tail call fastcc void @view_pan_exit(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 0) #16
  br label %39

39:                                               ; preds = %10, %34, %29, %38, %28, %27
  %40 = phi i32 [ 4, %38 ], [ 4, %28 ], [ 2, %27 ], [ 1, %29 ], [ 1, %34 ], [ 1, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret i32 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view_pan_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call fastcc void @view_pan_exit(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #16
  ret void
}

; Function Attrs: optsize
declare i32 @ED_space_clip_view_clip_poll(ptr noundef) #1

; Function Attrs: optsize
declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CLIP_OT_view_zoom(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_zoom_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view_zoom_invoke, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @view_zoom_modal, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @view_zoom_cancel, ptr %7, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_view_clip_poll, ptr %8, align 8, !tbaa !50
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 20, ptr %9, align 8, !tbaa !18
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.15, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #13
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 524288) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_zoom_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !19
  %5 = tail call float @RNA_float_get(ptr noundef %4, ptr noundef nonnull @.str.15) #13
  tail call fastcc void @sclip_zoom_set_factor(ptr noundef %0, float noundef %5, ptr noundef null) #16
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  tail call void @ED_region_tag_redraw(ptr noundef %6) #13
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_zoom_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !61
  %6 = and i16 %5, -2
  %7 = icmp eq i16 %6, 14
  br i1 %7, label %8, label %30

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %10 = load i32, ptr %9, align 8, !tbaa !69
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !70
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 13
  %14 = load i32, ptr %13, align 4, !tbaa !71
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !72
  %17 = add i32 %10, %14
  %18 = add i32 %12, %16
  %19 = sub i32 %17, %18
  %20 = sitofp i32 %19 to float
  %21 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !73
  %22 = and i32 %21, 33554432
  %23 = icmp eq i32 %22, 0
  %24 = fneg float %20
  %25 = select i1 %23, float %20, float %24
  %26 = fdiv float %25, 3.000000e+02
  %27 = fadd float %26, 1.000000e+00
  %28 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !19
  tail call void @RNA_float_set(ptr noundef %29, ptr noundef nonnull @.str.15, float noundef %27) #13
  tail call fastcc void @sclip_zoom_set_factor_exec(ptr noundef %0, ptr noundef nonnull %2, float noundef %27) #16
  br label %31

30:                                               ; preds = %3
  tail call fastcc void @view_zoom_init(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #16
  br label %31

31:                                               ; preds = %30, %8
  %32 = phi i32 [ 4, %8 ], [ 1, %30 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_zoom_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !61
  switch i16 %7, label %16 [
    i16 272, label %8
    i16 4, label %15
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %10 = load ptr, ptr %9, align 8, !tbaa !74
  %11 = getelementptr inbounds %struct.ViewZoomData, ptr %5, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !75
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  tail call fastcc void @view_zoom_apply(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1, ptr noundef nonnull %2) #16
  br label %26

15:                                               ; preds = %3
  tail call fastcc void @view_zoom_apply(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %1, ptr noundef nonnull %2) #16
  br label %26

16:                                               ; preds = %3
  %17 = sext i16 %7 to i32
  %18 = getelementptr inbounds %struct.ViewZoomData, ptr %5, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !77
  %20 = icmp eq i32 %19, %17
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %23 = load i16, ptr %22, align 2, !tbaa !68
  %24 = icmp eq i16 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call fastcc void @view_zoom_exit(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 0) #16
  br label %26

26:                                               ; preds = %15, %14, %8, %21, %16, %25
  %27 = phi i32 [ 4, %25 ], [ 1, %16 ], [ 1, %21 ], [ 1, %8 ], [ 1, %14 ], [ 1, %15 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @view_zoom_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call fastcc void @view_zoom_exit(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #16
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CLIP_OT_view_zoom_in(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_zoom_in_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view_zoom_in_invoke, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_view_clip_poll, ptr %6, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = tail call ptr @RNA_def_float_vector(ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, float noundef -1.000000e+01, float noundef 1.000000e+01) #13
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 524288) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_zoom_in_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  call void @RNA_float_get_array(ptr noundef %5, ptr noundef nonnull @.str.21, ptr noundef nonnull %3) #13
  call fastcc void @sclip_zoom_set_factor(ptr noundef %0, float noundef 0x3FF428A300000000, ptr noundef nonnull %3) #16
  %6 = call ptr @CTX_wm_region(ptr noundef %0) #13
  call void @ED_region_tag_redraw(ptr noundef %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_zoom_in_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #13
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_clip_mouse_pos(ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %4) #13
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  call void @RNA_float_set_array(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef nonnull %4) #13
  %10 = call i32 @view_zoom_in_exec(ptr noundef %0, ptr noundef %1) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CLIP_OT_view_zoom_out(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_zoom_out_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view_zoom_out_invoke, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_view_clip_poll, ptr %6, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = tail call ptr @RNA_def_float_vector(ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.27, float noundef -1.000000e+01, float noundef 1.000000e+01) #13
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 524288) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_zoom_out_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  call void @RNA_float_get_array(ptr noundef %5, ptr noundef nonnull @.str.21, ptr noundef nonnull %3) #13
  call fastcc void @sclip_zoom_set_factor(ptr noundef %0, float noundef 0x3FE965FEA0000000, ptr noundef nonnull %3) #16
  %6 = call ptr @CTX_wm_region(ptr noundef %0) #13
  call void @ED_region_tag_redraw(ptr noundef %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_zoom_out_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #13
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_clip_mouse_pos(ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %4) #13
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  call void @RNA_float_set_array(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef nonnull %4) #13
  %10 = call i32 @view_zoom_out_exec(ptr noundef %0, ptr noundef %1) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CLIP_OT_view_zoom_ratio(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.28, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.29, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_zoom_ratio_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_view_clip_poll, ptr %5, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = tail call ptr @RNA_def_float(ptr noundef %7, ptr noundef nonnull @.str.31, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_zoom_ratio_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = tail call float @RNA_float_get(ptr noundef %5, ptr noundef nonnull @.str.31) #13
  tail call fastcc void @sclip_zoom_set(ptr noundef %0, float noundef %6, ptr noundef null) #16
  %7 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 4
  %8 = load <2 x float>, ptr %7, align 4, !tbaa !58
  %9 = fptosi <2 x float> %8 to <2 x i32>
  %10 = sitofp <2 x i32> %9 to <2 x float>
  store <2 x float> %10, ptr %7, align 4, !tbaa !58
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  tail call void @ED_region_tag_redraw(ptr noundef %11) #13
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CLIP_OT_view_all(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.34, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.35, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.36, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_all_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_view_clip_poll, ptr %5, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.37, i32 noundef 0, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #13
  tail call void @RNA_def_property_flag(ptr noundef %8, i32 noundef 268435456) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.37) #13
  %10 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #13
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  call void @ED_space_clip_get_size(ptr noundef %10, ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  call void @ED_space_clip_get_aspect(ptr noundef %10, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %12 = load i32, ptr %3, align 4, !tbaa !24
  %13 = sitofp i32 %12 to float
  %14 = load float, ptr %5, align 4, !tbaa !58
  %15 = fmul float %14, %13
  %16 = fptosi float %15 to i32
  store i32 %16, ptr %3, align 4, !tbaa !24
  %17 = load i32, ptr %4, align 4, !tbaa !24
  %18 = sitofp i32 %17 to float
  %19 = load float, ptr %6, align 4, !tbaa !58
  %20 = fmul float %19, %18
  %21 = fptosi float %20 to i32
  store i32 %21, ptr %4, align 4, !tbaa !24
  %22 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 3
  %23 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %22) #16
  %24 = add nsw i32 %23, 1
  %25 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %22) #16
  %26 = add nsw i32 %25, 1
  %27 = and i32 %9, 255
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %2
  %30 = sitofp i32 %24 to float
  %31 = add nsw i32 %16, 10
  %32 = sitofp i32 %31 to float
  %33 = fdiv float %30, %32
  %34 = sitofp i32 %26 to float
  %35 = add nsw i32 %21, 10
  %36 = sitofp i32 %35 to float
  %37 = fdiv float %34, %36
  %38 = call fastcc float @min_ff(float noundef %33, float noundef %37) #16
  br label %61

39:                                               ; preds = %2
  %40 = icmp slt i32 %23, %16
  br i1 %40, label %46, label %41

41:                                               ; preds = %39
  %42 = icmp slt i32 %25, %21
  %43 = or i32 %25, %23
  %44 = icmp sgt i32 %43, -1
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %50, label %61

46:                                               ; preds = %39
  %47 = icmp sgt i32 %23, -1
  %48 = icmp sgt i32 %25, -1
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %61

50:                                               ; preds = %46, %41
  %51 = sitofp i32 %24 to float
  %52 = sitofp i32 %16 to float
  %53 = fdiv float %51, %52
  %54 = sitofp i32 %26 to float
  %55 = sitofp i32 %21 to float
  %56 = fdiv float %54, %55
  %57 = call fastcc float @min_ff(float noundef %53, float noundef %56) #16
  %58 = fdiv float 1.000000e+00, %57
  %59 = call fastcc float @power_of_2(float noundef %58) #16
  %60 = fdiv float 1.000000e+00, %59
  br label %61

61:                                               ; preds = %41, %46, %50, %29
  %62 = phi float [ %60, %50 ], [ %38, %29 ], [ 1.000000e+00, %46 ], [ 1.000000e+00, %41 ]
  call fastcc void @sclip_zoom_set(ptr noundef %0, float noundef %62, ptr noundef null) #16
  %63 = getelementptr inbounds %struct.SpaceClip, ptr %10, i64 0, i32 4
  store <2 x float> zeroinitializer, ptr %63, align 4, !tbaa !58
  call void @ED_region_tag_redraw(ptr noundef %11) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_view_selected(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.40, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.41, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.42, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_selected_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_view_clip_poll, ptr %5, align 8, !tbaa !50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @view_selected_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #13
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 6
  store <2 x float> zeroinitializer, ptr %5, align 4, !tbaa !58
  %6 = tail call zeroext i8 @ED_clip_view_selection(ptr noundef %0, ptr noundef %4, i8 noundef zeroext 1) #13
  tail call void @ED_region_tag_redraw(ptr noundef %4) #13
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CLIP_OT_change_frame(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.43, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.44, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.45, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @change_frame_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @change_frame_invoke, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @change_frame_modal, ptr %6, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @change_frame_poll, ptr %7, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 6, ptr %8, align 8, !tbaa !18
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef -300000, i32 noundef 300000, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef -300000, i32 noundef 300000) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @change_frame_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call fastcc void @change_frame_apply(ptr noundef %0, ptr noundef %1) #16
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @change_frame_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 8
  %6 = load i16, ptr %5, align 2, !tbaa !78
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !24
  %11 = icmp sgt i32 %10, 16
  br i1 %11, label %17, label %12

12:                                               ; preds = %8, %3
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = tail call fastcc i32 @frame_from_event(ptr noundef %0, ptr noundef %2) #16
  tail call void @RNA_int_set(ptr noundef %14, ptr noundef nonnull @.str.46, i32 noundef %15) #13
  tail call fastcc void @change_frame_apply(ptr noundef %0, ptr noundef %1) #16
  %16 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #13
  br label %17

17:                                               ; preds = %8, %12
  %18 = phi i32 [ 1, %12 ], [ 8, %8 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @change_frame_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !61
  switch i16 %5, label %14 [
    i16 218, label %15
    i16 4, label %6
    i16 1, label %10
    i16 3, label %10
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = tail call fastcc i32 @frame_from_event(ptr noundef %0, ptr noundef nonnull %2) #16
  tail call void @RNA_int_set(ptr noundef %8, ptr noundef nonnull @.str.46, i32 noundef %9) #13
  tail call fastcc void @change_frame_apply(ptr noundef %0, ptr noundef %1) #16
  br label %14

10:                                               ; preds = %3, %3
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %12 = load i16, ptr %11, align 2, !tbaa !68
  %13 = icmp eq i16 %12, 2
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %3, %6
  br label %15

15:                                               ; preds = %10, %3, %14
  %16 = phi i32 [ 1, %14 ], [ 4, %3 ], [ 4, %10 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @change_frame_poll(ptr noundef %0) #0 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !83
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @ED_space_clip_poll(ptr noundef %0) #13
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_rebuild_proxy(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.49, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.50, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.51, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @clip_rebuild_proxy_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_poll, ptr %5, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @clip_rebuild_proxy_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #13
  %6 = tail call ptr @ED_space_clip_get_clip(ptr noundef %5) #13
  %7 = getelementptr inbounds %struct.MovieClip, ptr %6, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !84
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %40, label %11

11:                                               ; preds = %2
  %12 = tail call ptr @CTX_wm_manager(ptr noundef %0) #13
  %13 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %14 = tail call ptr @WM_jobs_get(ptr noundef %12, ptr noundef %13, ptr noundef %4, ptr noundef nonnull @.str.89, i32 noundef 4, i32 noundef 10) #13
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !27
  %16 = tail call ptr %15(i64 noundef 40, ptr noundef nonnull @.str.90) #13
  store ptr %3, ptr %16, align 8, !tbaa !85
  %17 = tail call ptr @CTX_data_main(ptr noundef %0) #13
  %18 = getelementptr inbounds %struct.ProxyBuildJob, ptr %16, i64 0, i32 1
  store ptr %17, ptr %18, align 8, !tbaa !87
  %19 = getelementptr inbounds %struct.ProxyBuildJob, ptr %16, i64 0, i32 2
  store ptr %6, ptr %19, align 8, !tbaa !88
  %20 = load i32, ptr %7, align 8, !tbaa !84
  %21 = and i32 %20, 3
  %22 = getelementptr inbounds %struct.ProxyBuildJob, ptr %16, i64 0, i32 3
  store i32 %21, ptr %22, align 8, !tbaa !89
  %23 = getelementptr inbounds %struct.MovieClip, ptr %6, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !90
  %25 = icmp eq ptr %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.MovieClip, ptr %6, i64 0, i32 13, i32 4
  %28 = load i16, ptr %27, align 2, !tbaa !91
  %29 = sext i16 %28 to i32
  %30 = getelementptr inbounds %struct.MovieClip, ptr %6, i64 0, i32 13, i32 3
  %31 = load i16, ptr %30, align 4, !tbaa !92
  %32 = sext i16 %31 to i32
  %33 = getelementptr inbounds %struct.MovieClip, ptr %6, i64 0, i32 13, i32 2
  %34 = load i16, ptr %33, align 2, !tbaa !93
  %35 = sext i16 %34 to i32
  %36 = tail call ptr @IMB_anim_index_rebuild_context(ptr noundef nonnull %24, i32 noundef %29, i32 noundef %32, i32 noundef %35) #13
  %37 = getelementptr inbounds %struct.ProxyBuildJob, ptr %16, i64 0, i32 5
  store ptr %36, ptr %37, align 8, !tbaa !94
  br label %38

38:                                               ; preds = %26, %11
  tail call void @WM_jobs_customdata_set(ptr noundef %14, ptr noundef nonnull %16, ptr noundef nonnull @proxy_freejob) #13
  tail call void @WM_jobs_timer(ptr noundef %14, double noundef 2.000000e-01, i32 noundef 338886656, i32 noundef 0) #13
  tail call void @WM_jobs_callbacks(ptr noundef %14, ptr noundef nonnull @proxy_startjob, ptr noundef null, ptr noundef null, ptr noundef nonnull @proxy_endjob) #13
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !95
  %39 = tail call ptr @CTX_wm_manager(ptr noundef %0) #13
  tail call void @WM_jobs_start(ptr noundef %39, ptr noundef %14) #13
  tail call void @ED_area_tag_redraw(ptr noundef %4) #13
  br label %40

40:                                               ; preds = %2, %38
  %41 = phi i32 [ 4, %38 ], [ 2, %2 ]
  ret i32 %41
}

; Function Attrs: optsize
declare i32 @ED_space_clip_poll(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CLIP_OT_mode_set(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.52, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.53, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.54, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mode_set_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_poll, ptr %5, align 8, !tbaa !50
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = tail call ptr @RNA_def_enum(ptr noundef %7, ptr noundef nonnull @.str.55, ptr noundef nonnull @clip_editor_mode_items, i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.48) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mode_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.55) #13
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 13
  store i16 %7, ptr %8, align 4, !tbaa !96
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252903424, ptr noundef null) #13
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_view_ndof(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.57, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.58, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.59, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @clip_view_ndof_invoke, ptr %4, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_view_clip_poll, ptr %5, align 8, !tbaa !50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @clip_view_ndof_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [3 x float], align 8
  %5 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !61
  %7 = icmp eq i16 %6, 400
  br i1 %7, label %8, label %28

8:                                                ; preds = %3
  %9 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #13
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %12 = load ptr, ptr %11, align 8, !tbaa !74
  call void @WM_event_ndof_pan_get(ptr noundef %12, ptr noundef nonnull %4, i8 noundef zeroext 1) #13
  %13 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %12, i64 0, i32 2
  %14 = load float, ptr %13, align 4, !tbaa !97
  %15 = fmul float %14, 6.000000e+02
  %16 = getelementptr inbounds %struct.SpaceClip, ptr %9, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !64
  %18 = fdiv float %15, %17
  call fastcc void @mul_v2_fl(ptr noundef nonnull %4, float noundef %18) #16
  %19 = fneg float %14
  %20 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %21 = load float, ptr %20, align 8, !tbaa !58
  %22 = fmul float %21, %19
  store float %22, ptr %20, align 8, !tbaa !58
  %23 = fadd float %22, 1.000000e+00
  call fastcc void @sclip_zoom_set_factor(ptr noundef %0, float noundef %23, ptr noundef null) #16
  %24 = getelementptr inbounds %struct.SpaceClip, ptr %9, i64 0, i32 4
  %25 = load <2 x float>, ptr %4, align 8, !tbaa !58
  %26 = load <2 x float>, ptr %24, align 4, !tbaa !58
  %27 = fadd <2 x float> %25, %26
  store <2 x float> %27, ptr %24, align 4, !tbaa !58
  call void @ED_region_tag_redraw(ptr noundef %10) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  br label %28

28:                                               ; preds = %3, %8
  %29 = phi i32 [ 4, %8 ], [ 2, %3 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_prefetch(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.60, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.61, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.62, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_view_clip_poll, ptr %4, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @clip_prefetch_invoke, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @clip_prefetch_modal, ptr %6, align 8, !tbaa !49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @clip_prefetch_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  tail call void @clip_start_prefetch_job(ptr noundef %0) #13
  %4 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #13
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @clip_prefetch_modal(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #13
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #13
  %6 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef %5, i32 noundef 13) #13
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !61
  %11 = icmp eq i16 %10, 218
  %12 = select i1 %11, i32 1, i32 8
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ 12, %3 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_set_scene_frames(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.63, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.64, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.65, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_view_clip_poll, ptr %4, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @clip_set_scene_frames_exec, ptr %5, align 8, !tbaa !15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @clip_set_scene_frames_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_movieclip(ptr noundef %0) #13
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %5 = icmp eq ptr %4, null
  %6 = icmp eq ptr %3, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @BKE_movieclip_get_duration(ptr noundef nonnull %3) #13
  %10 = getelementptr inbounds %struct.MovieClip, ptr %3, i64 0, i32 16
  %11 = load i32, ptr %10, align 8, !tbaa !99
  %12 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 6
  store i32 %11, ptr %12, align 4, !tbaa !100
  %13 = add i32 %9, -1
  %14 = add i32 %13, %11
  %15 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 7
  %16 = tail call fastcc i32 @max_ii(i32 noundef %11, i32 noundef %14) #16
  store i32 %16, ptr %15, align 8, !tbaa !117
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef nonnull %4) #13
  br label %17

17:                                               ; preds = %2, %8
  %18 = phi i32 [ 4, %8 ], [ 2, %2 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CLIP_OT_cursor_set(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.66, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.67, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.68, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @clip_set_2d_cursor_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @clip_set_2d_cursor_invoke, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_poll, ptr %6, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = tail call ptr @RNA_def_float_vector(ptr noundef %9, ptr noundef nonnull @.str.21, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.69, float noundef -1.000000e+01, float noundef 1.000000e+01) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @clip_set_2d_cursor_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 4, !tbaa !96
  %6 = icmp eq i16 %5, 3
  %7 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 25
  %8 = load i32, ptr %7, align 8, !tbaa !118
  %9 = icmp eq i32 %8, 1
  %10 = or i1 %6, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 27
  tail call void @RNA_float_get_array(ptr noundef %13, ptr noundef nonnull @.str.21, ptr noundef nonnull %14) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252903424, ptr noundef null) #13
  br label %15

15:                                               ; preds = %2, %11
  %16 = phi i32 [ 4, %11 ], [ 2, %2 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @clip_set_2d_cursor_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %6 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_clip_mouse_pos(ptr noundef %6, ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %4) #13
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  call void @RNA_float_set_array(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef nonnull %4) #13
  %10 = call i32 @clip_set_2d_cursor_exec(ptr noundef %0, ptr noundef %1) #16, !range !44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_operatormacros_clip() local_unnamed_addr #0 {
  %1 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef 3) #13
  %2 = tail call ptr @WM_operatortype_macro_define(ptr noundef %1, ptr noundef nonnull @.str.73) #13
  %3 = tail call ptr @WM_operatortype_macro_define(ptr noundef %1, ptr noundef nonnull @.str.74) #13
  %4 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !119
  %6 = tail call zeroext i8 @RNA_struct_idprops_unset(ptr noundef %5, ptr noundef nonnull @.str.75) #13
  %7 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 3) #13
  %8 = tail call ptr @WM_operatortype_macro_define(ptr noundef %7, ptr noundef nonnull @.str.73) #13
  %9 = tail call ptr @WM_operatortype_macro_define(ptr noundef %7, ptr noundef nonnull @.str.74) #13
  %10 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !119
  tail call void @RNA_boolean_set(ptr noundef %11, ptr noundef nonnull @.str.75, i32 noundef 1) #13
  ret void
}

; Function Attrs: optsize
declare ptr @WM_operatortype_append_macro(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_operatortype_macro_define(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_idprops_unset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_collection_length(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_path_rel(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_property_collection_lookup_int(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BKE_movieclip_file_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @open_init(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !27
  %4 = tail call ptr %3(i64 noundef 32, ptr noundef nonnull @.str.86) #13
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %4, ptr %5, align 8, !tbaa !25
  %6 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %4, i64 0, i32 1
  tail call void @uiIDContextProperty(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %6) #13
  ret void
}

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_property_pointer_set(ptr noundef, ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_space_clip_set_clip(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @uiIDContextProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BLI_parent_dir(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clip_filesel(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  tail call void @RNA_string_set(ptr noundef %5, ptr noundef nonnull @.str.81, ptr noundef %2) #13
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_fileselect(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_edit_movieclip(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_movieclip_reload(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view_pan_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #13
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !27
  %6 = tail call ptr %5(i64 noundef 40, ptr noundef nonnull @.str.87) #13
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %6, ptr %7, align 8, !tbaa !25
  %8 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  tail call void @WM_cursor_modal_set(ptr noundef %8, i32 noundef 14) #13
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %10 = load <2 x i32>, ptr %9, align 4, !tbaa !24
  %11 = sitofp <2 x i32> %10 to <2 x float>
  store <2 x float> %11, ptr %6, align 8, !tbaa !58
  %12 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 12
  %13 = load i32, ptr %12, align 8, !tbaa !52
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 4
  %17 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 6
  %18 = select i1 %15, ptr %16, ptr %17
  %19 = getelementptr inbounds %struct.ViewPanData, ptr %6, i64 0, i32 7
  store ptr %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.ViewPanData, ptr %6, i64 0, i32 2
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %20, ptr noundef nonnull %18) #16
  %21 = getelementptr inbounds %struct.ViewPanData, ptr %6, i64 0, i32 4
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %21, ptr noundef nonnull %20) #16
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %23 = load i16, ptr %22, align 8, !tbaa !61
  %24 = sext i16 %23 to i32
  %25 = getelementptr inbounds %struct.ViewPanData, ptr %6, i64 0, i32 6
  store i32 %24, ptr %25, align 8, !tbaa !67
  %26 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #13
  ret void
}

; Function Attrs: optsize
declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load float, ptr %1, align 4, !tbaa !58
  store float %3, ptr %0, align 4, !tbaa !58
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !58
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !58
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view_pan_exit(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = icmp eq i8 %2, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.ViewPanData, ptr %7, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = getelementptr inbounds %struct.ViewPanData, ptr %7, i64 0, i32 4
  tail call fastcc void @copy_v2_v2(ptr noundef %9, ptr noundef nonnull %10) #16
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  tail call void @ED_region_tag_redraw(ptr noundef %11) #13
  br label %12

12:                                               ; preds = %6, %3
  %13 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  tail call void @WM_cursor_modal_restore(ptr noundef %13) #13
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !27
  %15 = load ptr, ptr %4, align 8, !tbaa !25
  tail call void %14(ptr noundef %15) #13
  ret void
}

; Function Attrs: optsize
declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sclip_zoom_set_factor(ptr noundef %0, float noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 8
  %6 = load float, ptr %5, align 4, !tbaa !64
  %7 = fmul float %6, %1
  tail call fastcc void @sclip_zoom_set(ptr noundef %0, float noundef %7, ptr noundef %2) #16
  ret void
}

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sclip_zoom_set(ptr noundef %0, float noundef %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #13
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %8 = getelementptr inbounds %struct.SpaceClip, ptr %6, i64 0, i32 8
  %9 = load float, ptr %8, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store float %1, ptr %8, align 4, !tbaa !64
  %10 = fcmp olt float %1, 0x3FB99999A0000000
  %11 = fcmp ogt float %1, 4.000000e+00
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %3
  call void @ED_space_clip_get_size(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %14 = load float, ptr %8, align 4, !tbaa !64
  %15 = load i32, ptr %4, align 4, !tbaa !24
  %16 = load i32, ptr %5, align 4, !tbaa !24
  %17 = insertelement <2 x i32> poison, i32 %16, i64 0
  %18 = insertelement <2 x i32> %17, i32 %15, i64 1
  %19 = sitofp <2 x i32> %18 to <2 x float>
  %20 = insertelement <2 x float> poison, float %14, i64 0
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %22 = fmul <2 x float> %21, %19
  %23 = fptosi <2 x float> %22 to <2 x i32>
  %24 = extractelement <2 x i32> %23, i64 1
  store i32 %24, ptr %4, align 4, !tbaa !24
  %25 = extractelement <2 x i32> %23, i64 0
  store i32 %25, ptr %5, align 4, !tbaa !24
  %26 = icmp slt <2 x i32> %23, <i32 4, i32 4>
  %27 = extractelement <2 x i1> %26, i64 0
  %28 = extractelement <2 x i1> %26, i64 1
  %29 = select i1 %28, i1 %27, i1 false
  br i1 %29, label %39, label %30

30:                                               ; preds = %13
  %31 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3
  %32 = call fastcc i32 @BLI_rcti_size_x(ptr noundef nonnull %31) #16
  %33 = sitofp i32 %32 to float
  %34 = fcmp ult float %14, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = call fastcc i32 @BLI_rcti_size_y(ptr noundef nonnull %31) #16
  %37 = sitofp i32 %36 to float
  %38 = fcmp ult float %14, %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %30, %13
  store float %9, ptr %8, align 4, !tbaa !64
  br label %40

40:                                               ; preds = %39, %3, %35
  %41 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !73
  %42 = and i32 %41, 1048576
  %43 = icmp ne i32 %42, 0
  %44 = icmp ne ptr %2, null
  %45 = and i1 %44, %43
  br i1 %45, label %46, label %76

46:                                               ; preds = %40
  call void @ED_space_clip_get_size(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %47 = load i32, ptr %4, align 4, !tbaa !24
  %48 = getelementptr inbounds %struct.SpaceClip, ptr %6, i64 0, i32 4
  %49 = load float, ptr %8, align 4, !tbaa !64
  %50 = fsub float %49, %9
  %51 = load i32, ptr %5, align 4, !tbaa !24
  %52 = load <2 x float>, ptr %2, align 4, !tbaa !58
  %53 = fadd <2 x float> %52, <float -5.000000e-01, float -5.000000e-01>
  %54 = insertelement <2 x i32> poison, i32 %47, i64 0
  %55 = insertelement <2 x i32> %54, i32 %51, i64 1
  %56 = sitofp <2 x i32> %55 to <2 x float>
  %57 = load <2 x float>, ptr %48, align 4, !tbaa !58
  %58 = fneg <2 x float> %57
  %59 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %53, <2 x float> %56, <2 x float> %58)
  %60 = insertelement <2 x float> poison, float %50, i64 0
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %62 = fmul <2 x float> %59, %61
  %63 = insertelement <2 x float> poison, float %49, i64 0
  %64 = shufflevector <2 x float> %63, <2 x float> poison, <2 x i32> zeroinitializer
  %65 = fdiv <2 x float> %62, %64
  %66 = getelementptr inbounds %struct.SpaceClip, ptr %6, i64 0, i32 12
  %67 = load i32, ptr %66, align 8, !tbaa !52
  %68 = and i32 %67, 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %46
  %71 = getelementptr inbounds %struct.SpaceClip, ptr %6, i64 0, i32 6
  %72 = load <2 x float>, ptr %71, align 4, !tbaa !58
  %73 = fadd <2 x float> %65, %72
  store <2 x float> %73, ptr %71, align 4, !tbaa !58
  br label %76

74:                                               ; preds = %46
  %75 = fadd <2 x float> %57, %65
  store <2 x float> %75, ptr %48, align 4, !tbaa !58
  br label %76

76:                                               ; preds = %70, %74, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret void
}

; Function Attrs: optsize
declare void @ED_space_clip_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_x(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !121
  %4 = load i32, ptr %0, align 4, !tbaa !122
  %5 = sub nsw i32 %3, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_size_y(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !123
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !124
  %6 = sub nsw i32 %3, %5
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sclip_zoom_set_factor_exec(ptr noundef %0, ptr noundef %1, float noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %6 = icmp eq ptr %1, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #13
  %9 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  call void @ED_clip_mouse_pos(ptr noundef %8, ptr noundef %5, ptr noundef nonnull %9, ptr noundef nonnull %4) #13
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %4, %7 ], [ null, %3 ]
  call fastcc void @sclip_zoom_set_factor(ptr noundef %0, float noundef %2, ptr noundef %11) #16
  call void @ED_region_tag_redraw(ptr noundef %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view_zoom_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #13
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %6 = load ptr, ptr @MEM_callocN, align 8, !tbaa !27
  %7 = tail call ptr %6(i64 noundef 40, ptr noundef nonnull @.str.88) #13
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %7, ptr %8, align 8, !tbaa !25
  %9 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  tail call void @WM_cursor_modal_set(ptr noundef %9, i32 noundef 14) #13
  %10 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 26), align 2, !tbaa !125
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = tail call ptr @CTX_wm_manager(ptr noundef %0) #13
  %14 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  %15 = tail call ptr @WM_event_add_timer(ptr noundef %13, ptr noundef %14, i32 noundef 272, double noundef 0x3F847AE140000000) #13
  %16 = getelementptr inbounds %struct.ViewZoomData, ptr %7, i64 0, i32 5
  store ptr %15, ptr %16, align 8, !tbaa !75
  %17 = tail call double @PIL_check_seconds_timer() #13
  %18 = getelementptr inbounds %struct.ViewZoomData, ptr %7, i64 0, i32 6
  store double %17, ptr %18, align 8, !tbaa !126
  br label %19

19:                                               ; preds = %12, %3
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %21 = load <2 x i32>, ptr %20, align 4, !tbaa !24
  %22 = sitofp <2 x i32> %21 to <2 x float>
  store <2 x float> %22, ptr %7, align 8, !tbaa !58
  %23 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 8
  %24 = load float, ptr %23, align 4, !tbaa !64
  %25 = getelementptr inbounds %struct.ViewZoomData, ptr %7, i64 0, i32 2
  store float %24, ptr %25, align 8, !tbaa !127
  %26 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %27 = load i16, ptr %26, align 8, !tbaa !61
  %28 = sext i16 %27 to i32
  %29 = getelementptr inbounds %struct.ViewZoomData, ptr %7, i64 0, i32 3
  store i32 %28, ptr %29, align 4, !tbaa !77
  %30 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %31 = getelementptr inbounds %struct.ViewZoomData, ptr %7, i64 0, i32 4
  tail call void @ED_clip_mouse_pos(ptr noundef %4, ptr noundef %5, ptr noundef nonnull %30, ptr noundef nonnull %31) #13
  %32 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #13
  ret void
}

; Function Attrs: optsize
declare void @ED_clip_mouse_pos(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view_zoom_apply(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 26), align 2, !tbaa !125
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %44

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #13
  %9 = tail call double @PIL_check_seconds_timer() #13
  %10 = getelementptr inbounds %struct.ViewZoomData, ptr %1, i64 0, i32 6
  %11 = load double, ptr %10, align 8, !tbaa !126
  %12 = fsub double %9, %11
  %13 = fptrunc double %12 to float
  %14 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !73
  %15 = and i32 %14, 67108864
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !70
  %20 = sitofp i32 %19 to float
  %21 = load float, ptr %1, align 8, !tbaa !128
  %22 = fsub float %20, %21
  br label %30

23:                                               ; preds = %7
  %24 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !72
  %26 = sitofp i32 %25 to float
  %27 = getelementptr inbounds %struct.ViewZoomData, ptr %1, i64 0, i32 1
  %28 = load float, ptr %27, align 4, !tbaa !129
  %29 = fsub float %26, %28
  br label %30

30:                                               ; preds = %23, %17
  %31 = phi float [ %22, %17 ], [ %29, %23 ]
  %32 = and i32 %14, 33554432
  %33 = icmp eq i32 %32, 0
  %34 = fneg float %31
  %35 = select i1 %33, float %31, float %34
  %36 = fdiv float %35, 2.000000e+01
  %37 = tail call float @llvm.fmuladd.f32(float %36, float %13, float 1.000000e+00)
  store double %9, ptr %10, align 8, !tbaa !126
  %38 = getelementptr inbounds %struct.SpaceClip, ptr %8, i64 0, i32 8
  %39 = load float, ptr %38, align 4, !tbaa !64
  %40 = fmul float %39, %37
  %41 = getelementptr inbounds %struct.ViewZoomData, ptr %1, i64 0, i32 2
  %42 = load float, ptr %41, align 8, !tbaa !127
  %43 = fdiv float %40, %42
  br label %64

44:                                               ; preds = %4
  %45 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 4
  %46 = load i32, ptr %45, align 4, !tbaa !70
  %47 = sitofp i32 %46 to float
  %48 = load float, ptr %1, align 8, !tbaa !128
  %49 = fsub float %47, %48
  %50 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !72
  %52 = sitofp i32 %51 to float
  %53 = fadd float %49, %52
  %54 = getelementptr inbounds %struct.ViewZoomData, ptr %1, i64 0, i32 1
  %55 = load float, ptr %54, align 4, !tbaa !129
  %56 = fsub float %53, %55
  %57 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !73
  %58 = and i32 %57, 33554432
  %59 = icmp eq i32 %58, 0
  %60 = fneg float %56
  %61 = select i1 %59, float %56, float %60
  %62 = fdiv float %61, 3.000000e+02
  %63 = fadd float %62, 1.000000e+00
  br label %64

64:                                               ; preds = %44, %30
  %65 = phi float [ %43, %30 ], [ %63, %44 ]
  %66 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 7
  %67 = load ptr, ptr %66, align 8, !tbaa !19
  tail call void @RNA_float_set(ptr noundef %67, ptr noundef nonnull @.str.15, float noundef %65) #13
  %68 = getelementptr inbounds %struct.ViewZoomData, ptr %1, i64 0, i32 2
  %69 = load float, ptr %68, align 8, !tbaa !127
  %70 = fmul float %65, %69
  %71 = getelementptr inbounds %struct.ViewZoomData, ptr %1, i64 0, i32 4
  tail call fastcc void @sclip_zoom_set(ptr noundef %0, float noundef %70, ptr noundef nonnull %71) #16
  %72 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  tail call void @ED_region_tag_redraw(ptr noundef %72) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @view_zoom_exit(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !25
  %7 = icmp eq i8 %2, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ViewZoomData, ptr %6, i64 0, i32 2
  %10 = load float, ptr %9, align 8, !tbaa !127
  %11 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 8
  store float %10, ptr %11, align 4, !tbaa !64
  %12 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  tail call void @ED_region_tag_redraw(ptr noundef %12) #13
  br label %13

13:                                               ; preds = %8, %3
  %14 = getelementptr inbounds %struct.ViewZoomData, ptr %6, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !75
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @CTX_wm_manager(ptr noundef %0) #13
  %19 = load ptr, ptr %14, align 8, !tbaa !75
  %20 = getelementptr inbounds %struct.wmTimer, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !130
  tail call void @WM_event_remove_timer(ptr noundef %18, ptr noundef %21, ptr noundef %19) #13
  br label %22

22:                                               ; preds = %17, %13
  %23 = tail call ptr @CTX_wm_window(ptr noundef %0) #13
  tail call void @WM_cursor_modal_restore(ptr noundef %23) #13
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !27
  %25 = load ptr, ptr %5, align 8, !tbaa !25
  tail call void %24(ptr noundef %25) #13
  ret void
}

; Function Attrs: optsize
declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_space_clip_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #9 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @power_of_2(float noundef %0) unnamed_addr #0 {
  %2 = fpext float %0 to double
  %3 = tail call double @log(double noundef %2) #13
  %4 = fdiv double %3, 0x3FE62E42FEFA39EF
  %5 = tail call double @llvm.ceil.f64(double %4)
  %6 = tail call double @exp2(double %5) #14
  %7 = fptrunc double %6 to float
  ret float %7
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #8

; Function Attrs: optsize
declare zeroext i8 @ED_clip_view_selection(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @change_frame_apply(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = tail call i32 @RNA_int_get(ptr noundef %5, ptr noundef nonnull @.str.46) #13
  %7 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %8 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !45
  %9 = and i32 %8, 16777216
  %10 = icmp eq i32 %9, 0
  %11 = tail call i32 @llvm.smax.i32(i32 %6, i32 0)
  %12 = select i1 %10, i32 %6, i32 %11
  store i32 %12, ptr %7, align 8
  %13 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 8
  store float 0.000000e+00, ptr %13, align 4, !tbaa !132
  %14 = tail call ptr @CTX_data_main(ptr noundef %0) #13
  tail call void @sound_seek_scene(ptr noundef %14, ptr noundef %3) #13
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %3) #13
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sound_seek_scene(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @frame_from_event(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #13
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #13
  %7 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 8
  %8 = load i16, ptr %7, align 2, !tbaa !78
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 6
  %12 = load <2 x i32>, ptr %11, align 4, !tbaa !24
  %13 = sitofp <2 x i32> %12 to <2 x float>
  %14 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 5
  %15 = load i16, ptr %14, align 8, !tbaa !133
  %16 = sitofp i16 %15 to float
  %17 = extractelement <2 x float> %13, i64 0
  %18 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %19 = fsub <2 x float> %18, %13
  %20 = extractelement <2 x float> %19, i64 0
  %21 = fadd float %20, 1.000000e+00
  %22 = fdiv float %16, %21
  %23 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !24
  %25 = sitofp i32 %24 to float
  %26 = fdiv float %25, %22
  %27 = fadd float %26, %17
  %28 = fptosi float %27 to i32
  br label %39

29:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  %30 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %31 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  %32 = load i32, ptr %31, align 4, !tbaa !24
  %33 = sitofp i32 %32 to float
  %34 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6, i64 1
  %35 = load i32, ptr %34, align 4, !tbaa !24
  %36 = sitofp i32 %35 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %30, float noundef %33, float noundef %36, ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  %37 = load float, ptr %3, align 4, !tbaa !58
  %38 = call fastcc i32 @iroundf(float noundef %37) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br label %39

39:                                               ; preds = %29, %10
  %40 = phi i32 [ %28, %10 ], [ %38, %29 ]
  ret i32 %40
}

; Function Attrs: optsize
declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iroundf(float noundef %0) unnamed_addr #9 {
  %2 = fadd float %0, 5.000000e-01
  %3 = tail call float @llvm.floor.f32(float %2)
  %4 = fptosi float %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #8

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_jobs_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @IMB_anim_index_rebuild_context(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_jobs_customdata_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @proxy_freejob(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !27
  tail call void %2(ptr noundef %0) #13
  ret void
}

; Function Attrs: optsize
declare void @WM_jobs_timer(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_jobs_callbacks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @proxy_startjob(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca [4 x i32], align 16
  %6 = alloca [4 x i32], align 16
  %7 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  %9 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 13, i32 3
  %10 = load i16, ptr %9, align 4, !tbaa !92
  %11 = sext i16 %10 to i32
  %12 = call fastcc i32 @proxy_bitflag_to_array(i32 noundef %11, ptr noundef nonnull %5, i32 noundef 0) #16
  %13 = call fastcc i32 @proxy_bitflag_to_array(i32 noundef %11, ptr noundef nonnull %6, i32 noundef 1) #16
  %14 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !134
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  call fastcc void @do_movie_proxy(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef %13, ptr noundef %1, ptr noundef %2, ptr noundef %3) #16
  br label %19

18:                                               ; preds = %4
  call fastcc void @do_sequence_proxy(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %12, ptr noundef nonnull %6, i32 noundef %13, ptr noundef %1, ptr noundef %2, ptr noundef %3) #16
  br label %19

19:                                               ; preds = %18, %17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @proxy_endjob(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = getelementptr inbounds %struct.MovieClip, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @IMB_close_anim_proxies(ptr noundef nonnull %5) #13
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !94
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 4
  %14 = load i8, ptr %13, align 4, !tbaa !135
  %15 = zext i8 %14 to i16
  tail call void @IMB_anim_index_rebuild_finish(ptr noundef nonnull %10, i16 noundef signext %15) #13
  br label %16

16:                                               ; preds = %12, %8
  %17 = load ptr, ptr %2, align 8, !tbaa !88
  tail call void @BKE_movieclip_reload(ptr noundef %17) #13
  %18 = load ptr, ptr %2, align 8, !tbaa !88
  tail call void @WM_main_add_notifier(i32 noundef 338886656, ptr noundef %18) #13
  ret void
}

; Function Attrs: optsize
declare void @WM_jobs_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc i32 @proxy_bitflag_to_array(i32 noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = icmp ne i32 %2, 0
  %5 = zext i1 %4 to i64
  %6 = getelementptr inbounds [2 x [4 x i32]], ptr @__const.proxy_bitflag_to_array.size_flags, i64 0, i64 %5
  %7 = load i32, ptr %6, align 16, !tbaa !24
  %8 = and i32 %7, %0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 1, ptr %1, align 4, !tbaa !24
  br label %11

11:                                               ; preds = %10, %3
  %12 = phi i32 [ 1, %10 ], [ 0, %3 ]
  %13 = getelementptr inbounds [2 x [4 x i32]], ptr @__const.proxy_bitflag_to_array.size_flags, i64 0, i64 %5, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !24
  %15 = and i32 %14, %0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = add nuw nsw i32 %12, 1
  %19 = zext nneg i32 %12 to i64
  %20 = getelementptr inbounds i32, ptr %1, i64 %19
  store i32 2, ptr %20, align 4, !tbaa !24
  br label %21

21:                                               ; preds = %17, %11
  %22 = phi i32 [ %18, %17 ], [ %12, %11 ]
  %23 = getelementptr inbounds [2 x [4 x i32]], ptr @__const.proxy_bitflag_to_array.size_flags, i64 0, i64 %5, i64 2
  %24 = load i32, ptr %23, align 8, !tbaa !24
  %25 = and i32 %24, %0
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = add nuw nsw i32 %22, 1
  %29 = zext nneg i32 %22 to i64
  %30 = getelementptr inbounds i32, ptr %1, i64 %29
  store i32 3, ptr %30, align 4, !tbaa !24
  br label %31

31:                                               ; preds = %27, %21
  %32 = phi i32 [ %28, %27 ], [ %22, %21 ]
  %33 = getelementptr inbounds [2 x [4 x i32]], ptr @__const.proxy_bitflag_to_array.size_flags, i64 0, i64 %5, i64 3
  %34 = load i32, ptr %33, align 4, !tbaa !24
  %35 = and i32 %34, %0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = add nuw nsw i32 %32, 1
  %39 = zext nneg i32 %32 to i64
  %40 = getelementptr inbounds i32, ptr %1, i64 %39
  store i32 4, ptr %40, align 4, !tbaa !24
  br label %41

41:                                               ; preds = %37, %31
  %42 = phi i32 [ %38, %37 ], [ %32, %31 ]
  ret i32 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_movie_proxy(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !88
  %11 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !94
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %6
  tail call void @IMB_anim_index_rebuild(ptr noundef nonnull %12, ptr noundef %3, ptr noundef %4, ptr noundef %5) #13
  br label %15

15:                                               ; preds = %14, %6
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = load i16, ptr %3, align 2, !tbaa !136
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %55, label %53

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.MovieClip, ptr %10, i64 0, i32 15
  %22 = load i32, ptr %21, align 4, !tbaa !137
  %23 = tail call i32 @BLI_system_thread_count() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  call void @BKE_movieclip_get_size(ptr noundef %10, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %8) #13
  %24 = getelementptr inbounds %struct.MovieClip, ptr %10, i64 0, i32 11
  %25 = load i32, ptr %7, align 4, !tbaa !24
  %26 = load i32, ptr %8, align 4, !tbaa !24
  %27 = call ptr @BKE_tracking_distortion_new(ptr noundef nonnull %24, i32 noundef %25, i32 noundef %26) #13
  call void @BKE_tracking_distortion_set_threads(ptr noundef %27, i32 noundef %23) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  %28 = icmp slt i32 %22, 1
  br i1 %28, label %47, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 3
  %31 = add nsw i32 %22, -1
  %32 = sitofp i32 %31 to float
  br label %33

33:                                               ; preds = %29, %41
  %34 = phi i32 [ 1, %29 ], [ %45, %41 ]
  %35 = load i32, ptr %30, align 8, !tbaa !89
  call void @BKE_movieclip_build_proxy_frame(ptr noundef %10, i32 noundef %35, ptr noundef %27, i32 noundef %34, ptr noundef %1, i32 noundef %2, i8 noundef zeroext 1) #13
  %36 = load i16, ptr %3, align 2, !tbaa !136
  %37 = icmp ne i16 %36, 0
  %38 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8
  %39 = icmp ne i8 %38, 0
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %33
  store i16 1, ptr %4, align 2, !tbaa !136
  %42 = sitofp i32 %34 to float
  %43 = fadd float %42, -1.000000e+00
  %44 = fdiv float %43, %32
  store float %44, ptr %5, align 4, !tbaa !58
  %45 = add nuw i32 %34, 1
  %46 = icmp eq i32 %34, %22
  br i1 %46, label %47, label %33, !llvm.loop !138

47:                                               ; preds = %41, %33, %20
  %48 = icmp eq ptr %27, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %47
  call void @BKE_tracking_distortion_free(ptr noundef nonnull %27) #13
  br label %50

50:                                               ; preds = %49, %47
  %51 = load i16, ptr %3, align 2, !tbaa !136
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50, %17
  %54 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 4
  store i8 1, ptr %54, align 4, !tbaa !135
  br label %55

55:                                               ; preds = %53, %50, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_sequence_proxy(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ProxyQueue, align 8
  %12 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  %14 = load ptr, ptr %0, align 8, !tbaa !85
  %15 = tail call ptr @BLI_task_scheduler_get() #13
  %16 = getelementptr inbounds %struct.Scene, ptr %14, i64 0, i32 22, i32 6
  %17 = load <2 x i32>, ptr %16, align 4, !tbaa !24
  %18 = tail call i32 @BLI_task_scheduler_num_threads(ptr noundef %15) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #14
  %19 = icmp ne i32 %4, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %8
  call void @BKE_movieclip_get_size(ptr noundef %13, ptr noundef null, ptr noundef nonnull %9, ptr noundef nonnull %10) #13
  br label %21

21:                                               ; preds = %20, %8
  %22 = getelementptr inbounds %struct.ProxyQueue, ptr %11, i64 0, i32 3
  call void @BLI_spin_init(ptr noundef nonnull %22) #13
  %23 = extractelement <2 x i32> %17, i64 0
  store i32 %23, ptr %11, align 8, !tbaa !140
  %24 = getelementptr inbounds %struct.ProxyQueue, ptr %11, i64 0, i32 1
  store <2 x i32> %17, ptr %24, align 4, !tbaa !24
  %25 = getelementptr inbounds %struct.ProxyQueue, ptr %11, i64 0, i32 4
  store ptr %5, ptr %25, align 8, !tbaa !142
  %26 = getelementptr inbounds %struct.ProxyQueue, ptr %11, i64 0, i32 5
  store ptr %6, ptr %26, align 8, !tbaa !143
  %27 = getelementptr inbounds %struct.ProxyQueue, ptr %11, i64 0, i32 6
  store ptr %7, ptr %27, align 8, !tbaa !144
  %28 = call ptr @BLI_task_pool_create(ptr noundef %15, ptr noundef nonnull %11) #13
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !27
  %30 = sext i32 %18 to i64
  %31 = mul nsw i64 %30, 48
  %32 = call ptr %29(i64 noundef %31, ptr noundef nonnull @.str.91) #13
  %33 = icmp sgt i32 %18, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.MovieClip, ptr %13, i64 0, i32 11
  %36 = zext nneg i32 %18 to i64
  br label %37

37:                                               ; preds = %34, %49
  %38 = phi i64 [ 0, %34 ], [ %50, %49 ]
  %39 = getelementptr inbounds %struct.ProxyThread, ptr %32, i64 %38
  store ptr %13, ptr %39, align 8, !tbaa !145
  %40 = getelementptr inbounds %struct.ProxyThread, ptr %32, i64 %38, i32 3
  store i32 %2, ptr %40, align 8, !tbaa !147
  %41 = getelementptr inbounds %struct.ProxyThread, ptr %32, i64 %38, i32 2
  store ptr %1, ptr %41, align 8, !tbaa !148
  %42 = getelementptr inbounds %struct.ProxyThread, ptr %32, i64 %38, i32 5
  store i32 %4, ptr %42, align 8, !tbaa !149
  %43 = getelementptr inbounds %struct.ProxyThread, ptr %32, i64 %38, i32 4
  store ptr %3, ptr %43, align 8, !tbaa !150
  br i1 %19, label %44, label %49

44:                                               ; preds = %37
  %45 = load i32, ptr %9, align 4, !tbaa !24
  %46 = load i32, ptr %10, align 4, !tbaa !24
  %47 = call ptr @BKE_tracking_distortion_new(ptr noundef nonnull %35, i32 noundef %45, i32 noundef %46) #13
  %48 = getelementptr inbounds %struct.ProxyThread, ptr %32, i64 %38, i32 1
  store ptr %47, ptr %48, align 8, !tbaa !151
  br label %49

49:                                               ; preds = %44, %37
  call void @BLI_task_pool_push(ptr noundef %28, ptr noundef nonnull @proxy_task_func, ptr noundef nonnull %39, i8 noundef zeroext 0, i32 noundef 0) #13
  %50 = add nuw nsw i64 %38, 1
  %51 = icmp eq i64 %50, %36
  br i1 %51, label %52, label %37, !llvm.loop !152

52:                                               ; preds = %49, %21
  call void @BLI_task_pool_work_and_wait(ptr noundef %28) #13
  call void @BLI_task_pool_free(ptr noundef %28) #13
  %53 = and i1 %19, %33
  br i1 %53, label %54, label %62

54:                                               ; preds = %52
  %55 = zext nneg i32 %18 to i64
  br label %56

56:                                               ; preds = %54, %56
  %57 = phi i64 [ 0, %54 ], [ %60, %56 ]
  %58 = getelementptr inbounds %struct.ProxyThread, ptr %32, i64 %57, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !151
  call void @BKE_tracking_distortion_free(ptr noundef %59) #13
  %60 = add nuw nsw i64 %57, 1
  %61 = icmp eq i64 %60, %55
  br i1 %61, label %62, label %56, !llvm.loop !153

62:                                               ; preds = %56, %52
  call void @BLI_spin_end(ptr noundef nonnull %22) #13
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !27
  call void %63(ptr noundef %32) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  ret void
}

; Function Attrs: optsize
declare void @IMB_anim_index_rebuild(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLI_system_thread_count() local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_movieclip_get_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_distortion_new(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_distortion_set_threads(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_movieclip_build_proxy_frame(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_distortion_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_task_scheduler_get() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLI_task_scheduler_num_threads(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_spin_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_task_pool_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_task_pool_push(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @proxy_task_func(ptr noundef %0, ptr nocapture noundef readonly %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = tail call ptr @BLI_task_pool_userdata(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %7 = load ptr, ptr %1, align 8, !tbaa !145
  %8 = call fastcc ptr @proxy_thread_next_frame(ptr noundef %6, ptr noundef %7, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ProxyThread, ptr %1, i64 0, i32 2
  %12 = getelementptr inbounds %struct.ProxyThread, ptr %1, i64 0, i32 3
  %13 = getelementptr inbounds %struct.ProxyThread, ptr %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct.ProxyThread, ptr %1, i64 0, i32 4
  %15 = getelementptr inbounds %struct.ProxyThread, ptr %1, i64 0, i32 5
  br label %16

16:                                               ; preds = %10, %16
  %17 = phi ptr [ %8, %10 ], [ %32, %16 ]
  %18 = load i64, ptr %4, align 8, !tbaa !154
  %19 = load ptr, ptr %1, align 8, !tbaa !145
  %20 = getelementptr inbounds %struct.MovieClip, ptr %19, i64 0, i32 18
  %21 = tail call ptr @IMB_ibImageFromMemory(ptr noundef nonnull %17, i64 noundef %18, i32 noundef 8321, ptr noundef nonnull %20, ptr noundef nonnull @.str.92) #13
  %22 = load ptr, ptr %1, align 8, !tbaa !145
  %23 = load i32, ptr %5, align 4, !tbaa !24
  %24 = load ptr, ptr %11, align 8, !tbaa !148
  %25 = load i32, ptr %12, align 8, !tbaa !147
  tail call void @BKE_movieclip_build_proxy_frame_for_ibuf(ptr noundef %22, ptr noundef %21, ptr noundef null, i32 noundef %23, ptr noundef %24, i32 noundef %25, i8 noundef zeroext 0) #13
  %26 = load ptr, ptr %1, align 8, !tbaa !145
  %27 = load ptr, ptr %13, align 8, !tbaa !151
  %28 = load ptr, ptr %14, align 8, !tbaa !150
  %29 = load i32, ptr %15, align 8, !tbaa !149
  tail call void @BKE_movieclip_build_proxy_frame_for_ibuf(ptr noundef %26, ptr noundef %21, ptr noundef %27, i32 noundef %23, ptr noundef %28, i32 noundef %29, i8 noundef zeroext 1) #13
  tail call void @IMB_freeImBuf(ptr noundef %21) #13
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !27
  tail call void %30(ptr noundef nonnull %17) #13
  %31 = load ptr, ptr %1, align 8, !tbaa !145
  %32 = call fastcc ptr @proxy_thread_next_frame(ptr noundef %6, ptr noundef %31, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %16, !llvm.loop !155

34:                                               ; preds = %16, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret void
}

; Function Attrs: optsize
declare void @BLI_task_pool_work_and_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_task_pool_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_spin_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_task_pool_userdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @proxy_thread_next_frame(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca %struct.MovieClipUser, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = getelementptr inbounds %struct.ProxyQueue, ptr %0, i64 0, i32 3
  tail call void @BLI_spin_lock(ptr noundef nonnull %7) #13
  %8 = getelementptr inbounds %struct.ProxyQueue, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !142
  %10 = load i16, ptr %9, align 2, !tbaa !136
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %52

12:                                               ; preds = %4
  %13 = load i32, ptr %0, align 8, !tbaa !140
  %14 = getelementptr inbounds %struct.ProxyQueue, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !156
  %16 = icmp sgt i32 %13, %15
  br i1 %16, label %52, label %17

17:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  store i64 0, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #14
  store i32 %13, ptr %5, align 8, !tbaa !157
  call void @BKE_movieclip_filename_for_frame(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %18 = call i32 @BLI_open(ptr noundef nonnull %6, i32 noundef 0, i32 noundef 0) #13
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @BLI_spin_unlock(ptr noundef nonnull %7) #13
  br label %34

21:                                               ; preds = %17
  %22 = call i64 @BLI_file_descriptor_size(i32 noundef %18) #13
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @close(i32 noundef %18) #13
  call void @BLI_spin_unlock(ptr noundef nonnull %7) #13
  br label %34

26:                                               ; preds = %21
  %27 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !27
  %28 = call ptr %27(i64 noundef %22, ptr noundef nonnull @.str.93) #13
  %29 = call i64 @read(i32 noundef %18, ptr noundef %28, i64 noundef %22) #13
  %30 = icmp eq i64 %29, %22
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = call i32 @close(i32 noundef %18) #13
  call void @BLI_spin_unlock(ptr noundef nonnull %7) #13
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !27
  call void %33(ptr noundef %28) #13
  br label %34

34:                                               ; preds = %20, %24, %31
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  br label %54

35:                                               ; preds = %26
  store i64 %22, ptr %2, align 8, !tbaa !154
  %36 = load i32, ptr %0, align 8, !tbaa !140
  store i32 %36, ptr %3, align 4, !tbaa !24
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %0, align 8, !tbaa !140
  %38 = call i32 @close(i32 noundef %18) #13
  %39 = getelementptr inbounds %struct.ProxyQueue, ptr %0, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !143
  store i16 1, ptr %40, align 2, !tbaa !136
  %41 = load i32, ptr %0, align 8, !tbaa !140
  %42 = getelementptr inbounds %struct.ProxyQueue, ptr %0, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !158
  %44 = sub nsw i32 %41, %43
  %45 = sitofp i32 %44 to float
  %46 = load i32, ptr %14, align 8, !tbaa !156
  %47 = sub nsw i32 %46, %43
  %48 = sitofp i32 %47 to float
  %49 = fdiv float %45, %48
  %50 = getelementptr inbounds %struct.ProxyQueue, ptr %0, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !144
  store float %49, ptr %51, align 4, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  br label %52

52:                                               ; preds = %35, %12, %4
  %53 = phi ptr [ null, %4 ], [ %28, %35 ], [ null, %12 ]
  call void @BLI_spin_unlock(ptr noundef nonnull %7) #13
  br label %54

54:                                               ; preds = %34, %52
  %55 = phi ptr [ %53, %52 ], [ null, %34 ]
  ret ptr %55
}

; Function Attrs: optsize
declare ptr @IMB_ibImageFromMemory(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_movieclip_build_proxy_frame_for_ibuf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_movieclip_filename_for_frame(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLI_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @BLI_file_descriptor_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare void @IMB_close_anim_proxies(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_anim_index_rebuild_finish(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_ndof_pan_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #6 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !58
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !58
  ret void
}

; Function Attrs: optsize
declare void @clip_start_prefetch_job(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @WM_jobs_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BKE_movieclip_get_duration(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize willreturn memory(none) }
attributes #16 = { optsize }

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
!13 = !{!6, !7, i64 24}
!14 = !{!6, !7, i64 8}
!15 = !{!6, !7, i64 32}
!16 = !{!6, !7, i64 48}
!17 = !{!6, !7, i64 56}
!18 = !{!6, !12, i64 184}
!19 = !{!20, !7, i64 112}
!20 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!21 = !{!22, !7, i64 0}
!22 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !10, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !12, i64 2084, !12, i64 2086, !12, i64 2088, !8, i64 2090, !12, i64 2092, !23, i64 2096, !23, i64 2100, !8, i64 2104, !23, i64 2108, !23, i64 2112, !8, i64 2116}
!23 = !{!"int", !8, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!20, !7, i64 96}
!26 = !{!20, !7, i64 120}
!27 = !{!7, !7, i64 0}
!28 = !{!29, !7, i64 24}
!29 = !{!"PropertyPointerRNA", !30, i64 0, !7, i64 24}
!30 = !{!"PointerRNA", !31, i64 0, !7, i64 8, !7, i64 16}
!31 = !{!"", !7, i64 0}
!32 = !{!33, !23, i64 100}
!33 = !{!"MovieClip", !34, i64 0, !7, i64 120, !8, i64 128, !23, i64 1152, !23, i64 1156, !8, i64 1160, !35, i64 1168, !35, i64 1172, !7, i64 1176, !7, i64 1184, !7, i64 1192, !36, i64 1200, !7, i64 1528, !42, i64 1536, !23, i64 2312, !23, i64 2316, !23, i64 2320, !23, i64 2324, !43, i64 2328}
!34 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !23, i64 100, !23, i64 104, !23, i64 108, !7, i64 112}
!35 = !{!"float", !8, i64 0}
!36 = !{!"MovieTracking", !37, i64 0, !38, i64 72, !10, i64 128, !10, i64 144, !39, i64 160, !40, i64 184, !7, i64 232, !7, i64 240, !10, i64 248, !23, i64 264, !23, i64 268, !7, i64 272, !41, i64 280}
!37 = !{!"MovieTrackingSettings", !23, i64 0, !12, i64 4, !12, i64 6, !35, i64 8, !12, i64 12, !12, i64 14, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !35, i64 24, !12, i64 28, !12, i64 30, !23, i64 32, !23, i64 36, !23, i64 40, !12, i64 44, !12, i64 46, !35, i64 48, !23, i64 52, !23, i64 56, !35, i64 60, !35, i64 64, !23, i64 68}
!38 = !{!"MovieTrackingCamera", !7, i64 0, !12, i64 8, !12, i64 10, !35, i64 12, !35, i64 16, !35, i64 20, !12, i64 24, !12, i64 26, !8, i64 28, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52}
!39 = !{!"MovieTrackingReconstruction", !23, i64 0, !35, i64 4, !23, i64 8, !23, i64 12, !7, i64 16}
!40 = !{!"MovieTrackingStabilization", !23, i64 0, !23, i64 4, !23, i64 8, !35, i64 12, !7, i64 16, !35, i64 24, !35, i64 28, !35, i64 32, !23, i64 36, !23, i64 40, !35, i64 44}
!41 = !{!"MovieTrackingDopesheet", !23, i64 0, !12, i64 4, !12, i64 6, !10, i64 8, !10, i64 24, !23, i64 40, !23, i64 44}
!42 = !{!"MovieClipProxy", !8, i64 0, !12, i64 768, !12, i64 770, !12, i64 772, !12, i64 774}
!43 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!44 = !{i32 2, i32 5}
!45 = !{!46, !23, i64 8}
!46 = !{!"UserDef", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !23, i64 8468, !12, i64 8472, !12, i64 8474, !12, i64 8476, !12, i64 8478, !12, i64 8480, !12, i64 8482, !23, i64 8484, !23, i64 8488, !23, i64 8492, !12, i64 8496, !12, i64 8498, !23, i64 8500, !23, i64 8504, !23, i64 8508, !23, i64 8512, !23, i64 8516, !23, i64 8520, !23, i64 8524, !12, i64 8528, !12, i64 8530, !12, i64 8532, !12, i64 8534, !10, i64 8536, !10, i64 8552, !10, i64 8568, !10, i64 8584, !10, i64 8600, !10, i64 8616, !10, i64 8632, !8, i64 8648, !12, i64 8712, !12, i64 8714, !12, i64 8716, !12, i64 8718, !12, i64 8720, !12, i64 8722, !12, i64 8724, !12, i64 8726, !8, i64 8728, !12, i64 8896, !12, i64 8898, !12, i64 8900, !12, i64 8902, !12, i64 8904, !12, i64 8906, !12, i64 8908, !12, i64 8910, !23, i64 8912, !23, i64 8916, !12, i64 8920, !12, i64 8922, !12, i64 8924, !12, i64 8926, !12, i64 8928, !12, i64 8930, !12, i64 8932, !12, i64 8934, !12, i64 8936, !12, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !12, i64 8944, !12, i64 8946, !12, i64 8948, !12, i64 8950, !12, i64 8952, !12, i64 8954, !35, i64 8956, !35, i64 8960, !23, i64 8964, !12, i64 8968, !12, i64 8970, !35, i64 8972, !12, i64 8976, !12, i64 8978, !12, i64 8980, !12, i64 8982, !47, i64 8984, !8, i64 9760, !8, i64 9772, !12, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !23, i64 10896, !23, i64 10900, !35, i64 10904, !35, i64 10908, !23, i64 10912, !12, i64 10916, !12, i64 10918, !12, i64 10920, !12, i64 10922, !12, i64 10924, !12, i64 10926, !48, i64 10928}
!47 = !{!"ColorBand", !12, i64 0, !12, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!48 = !{!"WalkNavigation", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !12, i64 24, !8, i64 26}
!49 = !{!6, !7, i64 64}
!50 = !{!6, !7, i64 72}
!51 = !{!6, !7, i64 88}
!52 = !{!53, !23, i64 208}
!53 = !{!"SpaceClip", !7, i64 0, !7, i64 8, !10, i64 16, !23, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !54, i64 56, !7, i64 64, !55, i64 72, !23, i64 208, !12, i64 212, !12, i64 214, !23, i64 216, !8, i64 220, !35, i64 228, !35, i64 232, !23, i64 236, !8, i64 240, !8, i64 304, !23, i64 368, !12, i64 372, !12, i64 374, !23, i64 376, !23, i64 380, !8, i64 384, !57, i64 392}
!54 = !{!"MovieClipUser", !23, i64 0, !12, i64 4, !12, i64 6}
!55 = !{!"MovieClipScopes", !12, i64 0, !12, i64 2, !23, i64 4, !23, i64 8, !23, i64 12, !56, i64 16, !7, i64 80, !7, i64 88, !8, i64 96, !12, i64 104, !12, i64 106, !23, i64 108, !7, i64 112, !7, i64 120, !8, i64 128}
!56 = !{!"MovieTrackingMarker", !8, i64 0, !8, i64 8, !8, i64 40, !8, i64 48, !23, i64 56, !23, i64 60}
!57 = !{!"MaskSpaceInfo", !7, i64 0, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11}
!58 = !{!35, !35, i64 0}
!59 = !{!53, !35, i64 44}
!60 = !{!53, !35, i64 36}
!61 = !{!62, !12, i64 16}
!62 = !{!"wmEvent", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 18, !23, i64 20, !23, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !12, i64 44, !12, i64 46, !23, i64 48, !23, i64 52, !63, i64 56, !23, i64 64, !23, i64 68, !12, i64 72, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 106, !23, i64 108, !7, i64 112}
!63 = !{!"double", !8, i64 0}
!64 = !{!53, !35, i64 52}
!65 = !{!66, !7, i64 32}
!66 = !{!"ViewPanData", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !23, i64 24, !7, i64 32}
!67 = !{!66, !23, i64 24}
!68 = !{!62, !12, i64 18}
!69 = !{!62, !23, i64 48}
!70 = !{!62, !23, i64 20}
!71 = !{!62, !23, i64 52}
!72 = !{!62, !23, i64 24}
!73 = !{!46, !23, i64 8484}
!74 = !{!62, !7, i64 112}
!75 = !{!76, !7, i64 24}
!76 = !{!"ViewZoomData", !35, i64 0, !35, i64 4, !35, i64 8, !23, i64 12, !8, i64 16, !7, i64 24, !63, i64 32}
!77 = !{!76, !23, i64 12}
!78 = !{!79, !12, i64 214}
!79 = !{!"ARegion", !7, i64 0, !7, i64 8, !80, i64 16, !82, i64 176, !82, i64 192, !12, i64 208, !12, i64 210, !12, i64 212, !12, i64 214, !12, i64 216, !12, i64 218, !35, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !7, i64 240, !10, i64 248, !10, i64 264, !10, i64 280, !10, i64 296, !10, i64 312, !10, i64 328, !10, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!80 = !{!"View2D", !81, i64 0, !81, i64 16, !82, i64 32, !82, i64 48, !82, i64 64, !8, i64 80, !8, i64 88, !35, i64 96, !35, i64 100, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !12, i64 112, !12, i64 114, !12, i64 116, !12, i64 118, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !7, i64 128, !23, i64 136, !23, i64 140, !7, i64 144, !7, i64 152}
!81 = !{!"rctf", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!82 = !{!"rcti", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12}
!83 = !{!22, !8, i64 2090}
!84 = !{!33, !23, i64 2312}
!85 = !{!86, !7, i64 0}
!86 = !{!"ProxyBuildJob", !7, i64 0, !7, i64 8, !7, i64 16, !23, i64 24, !8, i64 28, !7, i64 32}
!87 = !{!86, !7, i64 8}
!88 = !{!86, !7, i64 16}
!89 = !{!86, !23, i64 24}
!90 = !{!33, !7, i64 1176}
!91 = !{!33, !12, i64 2310}
!92 = !{!33, !12, i64 2308}
!93 = !{!33, !12, i64 2306}
!94 = !{!86, !7, i64 32}
!95 = !{!22, !8, i64 2080}
!96 = !{!53, !12, i64 212}
!97 = !{!98, !35, i64 24}
!98 = !{!"wmNDOFMotionData", !8, i64 0, !8, i64 12, !35, i64 24, !23, i64 28}
!99 = !{!33, !23, i64 2320}
!100 = !{!101, !23, i64 684}
!101 = !{!"Scene", !34, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !23, i64 232, !23, i64 236, !23, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !102, i64 280, !109, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !23, i64 4380, !10, i64 4384, !110, i64 4400, !111, i64 4416, !114, i64 4600, !7, i64 4608, !115, i64 4616, !7, i64 4640, !116, i64 4648, !116, i64 4656, !104, i64 4664, !105, i64 4824, !43, i64 4888, !7, i64 4952}
!102 = !{!"RenderData", !103, i64 0, !7, i64 248, !7, i64 256, !106, i64 264, !107, i64 328, !23, i64 400, !23, i64 404, !23, i64 408, !35, i64 412, !23, i64 416, !23, i64 420, !23, i64 424, !23, i64 428, !12, i64 432, !12, i64 434, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !23, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !23, i64 484, !23, i64 488, !12, i64 492, !12, i64 494, !23, i64 496, !23, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !23, i64 516, !23, i64 520, !23, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !81, i64 544, !81, i64 560, !82, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !35, i64 612, !35, i64 616, !35, i64 620, !35, i64 624, !23, i64 628, !35, i64 632, !35, i64 636, !35, i64 640, !35, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !35, i64 660, !35, i64 664, !12, i64 668, !12, i64 670, !35, i64 672, !35, i64 676, !8, i64 680, !23, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !23, i64 2520, !12, i64 2524, !12, i64 2526, !35, i64 2528, !35, i64 2532, !12, i64 2536, !12, i64 2538, !35, i64 2540, !12, i64 2544, !12, i64 2546, !23, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !35, i64 2560, !35, i64 2564, !7, i64 2568, !23, i64 2576, !35, i64 2580, !8, i64 2584, !108, i64 2616, !23, i64 3976, !23, i64 3980}
!103 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !35, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !104, i64 24, !105, i64 184}
!104 = !{!"ColorManagedViewSettings", !23, i64 0, !23, i64 4, !8, i64 8, !8, i64 72, !35, i64 136, !35, i64 140, !7, i64 144, !7, i64 152}
!105 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!106 = !{!"QuicktimeCodecSettings", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24, !23, i64 28, !23, i64 32, !23, i64 36, !23, i64 40, !23, i64 44, !12, i64 48, !12, i64 50, !23, i64 52, !23, i64 56, !23, i64 60}
!107 = !{!"FFMpegCodecData", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24, !23, i64 28, !35, i64 32, !23, i64 36, !23, i64 40, !23, i64 44, !23, i64 48, !23, i64 52, !23, i64 56, !23, i64 60, !7, i64 64}
!108 = !{!"BakeData", !103, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !35, i64 1280, !35, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!109 = !{!"AudioData", !23, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !23, i64 16, !12, i64 20, !12, i64 22, !35, i64 24, !35, i64 28}
!110 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!111 = !{!"GameData", !110, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !112, i64 40, !12, i64 64, !12, i64 66, !35, i64 68, !113, i64 72, !35, i64 128, !35, i64 132, !23, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180}
!112 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !35, i64 8, !35, i64 12, !7, i64 16}
!113 = !{!"RecastData", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !23, i64 40, !35, i64 44, !35, i64 48, !12, i64 52, !12, i64 54}
!114 = !{!"UnitSettings", !35, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!115 = !{!"PhysicsSettings", !8, i64 0, !23, i64 12, !23, i64 16, !23, i64 20}
!116 = !{!"long", !8, i64 0}
!117 = !{!101, !23, i64 688}
!118 = !{!53, !23, i64 376}
!119 = !{!120, !7, i64 88}
!120 = !{!"wmOperatorTypeMacro", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88}
!121 = !{!82, !23, i64 4}
!122 = !{!82, !23, i64 0}
!123 = !{!82, !23, i64 12}
!124 = !{!82, !23, i64 8}
!125 = !{!46, !12, i64 8498}
!126 = !{!76, !63, i64 32}
!127 = !{!76, !35, i64 8}
!128 = !{!76, !35, i64 0}
!129 = !{!76, !35, i64 4}
!130 = !{!131, !7, i64 16}
!131 = !{!"wmTimer", !7, i64 0, !7, i64 8, !7, i64 16, !63, i64 24, !23, i64 32, !7, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !63, i64 80, !23, i64 88}
!132 = !{!101, !35, i64 692}
!133 = !{!79, !12, i64 208}
!134 = !{!33, !23, i64 1152}
!135 = !{!86, !8, i64 28}
!136 = !{!12, !12, i64 0}
!137 = !{!33, !23, i64 2316}
!138 = distinct !{!138, !139}
!139 = !{!"llvm.loop.mustprogress"}
!140 = !{!141, !23, i64 0}
!141 = !{!"ProxyQueue", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !7, i64 16, !7, i64 24, !7, i64 32}
!142 = !{!141, !7, i64 16}
!143 = !{!141, !7, i64 24}
!144 = !{!141, !7, i64 32}
!145 = !{!146, !7, i64 0}
!146 = !{!"ProxyThread", !7, i64 0, !7, i64 8, !7, i64 16, !23, i64 24, !7, i64 32, !23, i64 40}
!147 = !{!146, !23, i64 24}
!148 = !{!146, !7, i64 16}
!149 = !{!146, !23, i64 40}
!150 = !{!146, !7, i64 32}
!151 = !{!146, !7, i64 8}
!152 = distinct !{!152, !139}
!153 = distinct !{!153, !139}
!154 = !{!116, !116, i64 0}
!155 = distinct !{!155, !139}
!156 = !{!141, !23, i64 8}
!157 = !{!54, !23, i64 0}
!158 = !{!141, !23, i64 4}
