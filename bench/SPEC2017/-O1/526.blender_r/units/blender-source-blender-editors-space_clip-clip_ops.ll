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
%struct.wmTimer = type { ptr, ptr, ptr, double, i32, ptr, double, double, double, double, double, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
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
%struct.ProxyBuildJob = type { ptr, ptr, ptr, i32, i8, ptr }
%struct.wmNDOFMotionData = type { [3 x float], [3 x float], float, i32 }
%struct.wmOperatorTypeMacro = type { ptr, ptr, [64 x i8], ptr, ptr }
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
@.str.91 = private unnamed_addr constant [23 x i8] c"proxy threaded handles\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"proxy frame\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.93 = private unnamed_addr constant [28 x i8] c"movieclip proxy memory file\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_open(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @open_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @open_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @open_cancel, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2096, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 19, i16 noundef signext 0) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @open_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca %struct.PointerRNA, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  %8 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  %9 = tail call ptr @CTX_wm_screen(ptr noundef %0) #10
  %10 = tail call ptr @CTX_data_main(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #10
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = tail call i32 @RNA_collection_length(ptr noundef %12, ptr noundef nonnull @.str.79) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #10
  %16 = load ptr, ptr %11, align 8, !tbaa !48
  %17 = tail call i32 @RNA_boolean_get(ptr noundef %16, ptr noundef nonnull @.str.80) #10
  %18 = load ptr, ptr %11, align 8, !tbaa !48
  call void @RNA_string_get(ptr noundef %18, ptr noundef nonnull @.str.81, ptr noundef nonnull %6) #10
  %19 = and i32 %17, 255
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr @G, align 8, !tbaa !50
  %23 = getelementptr inbounds %struct.Main, ptr %22, i64 0, i32 2
  call void @BLI_path_rel(ptr noundef nonnull %6, ptr noundef nonnull %23) #10
  br label %24

24:                                               ; preds = %21, %15
  %25 = load ptr, ptr %11, align 8, !tbaa !48
  %26 = call ptr @RNA_struct_find_property(ptr noundef %25, ptr noundef nonnull @.str.79) #10
  %27 = load ptr, ptr %11, align 8, !tbaa !48
  %28 = call i32 @RNA_property_collection_lookup_int(ptr noundef %27, ptr noundef %26, i32 noundef 0, ptr noundef nonnull %5) #10
  call void @RNA_string_get(ptr noundef nonnull %5, ptr noundef nonnull @.str.82, ptr noundef nonnull %7) #10
  call void @BLI_join_dirfile(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  %29 = tail call ptr @__errno_location() #11
  store i32 0, ptr %29, align 4, !tbaa !53
  %30 = call ptr @BKE_movieclip_file_add(ptr noundef %10, ptr noundef nonnull %4) #10
  %31 = icmp eq ptr %30, null
  %32 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !54
  %34 = icmp eq ptr %33, null
  br i1 %31, label %38, label %50

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !55
  tail call void @BKE_report(ptr noundef %37, i32 noundef 32, ptr noundef nonnull @.str.83) #10
  br label %72

38:                                               ; preds = %24
  br i1 %34, label %41, label %39

39:                                               ; preds = %38
  %40 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %40(ptr noundef nonnull %33) #10
  br label %41

41:                                               ; preds = %39, %38
  %42 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %43 = load ptr, ptr %42, align 8, !tbaa !55
  %44 = load i32, ptr %29, align 4, !tbaa !53
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = call ptr @strerror(i32 noundef %44) #10
  br label %48

48:                                               ; preds = %41, %46
  %49 = phi ptr [ %47, %46 ], [ @.str.85, %41 ]
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %43, i32 noundef 32, ptr noundef nonnull @.str.84, ptr noundef nonnull %4, ptr noundef %49) #10
  br label %72

50:                                               ; preds = %24
  br i1 %34, label %51, label %55

51:                                               ; preds = %50
  %52 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %53 = call ptr %52(i64 noundef 32, ptr noundef nonnull @.str.86) #10
  store ptr %53, ptr %32, align 8, !tbaa !54
  %54 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %53, i64 0, i32 1
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef %53, ptr noundef nonnull %54) #10
  br label %55

55:                                               ; preds = %51, %50
  %56 = load ptr, ptr %32, align 8, !tbaa !54
  %57 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !57
  %59 = icmp eq ptr %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.ID, ptr %30, i64 0, i32 6
  %62 = load i32, ptr %61, align 4, !tbaa !61
  %63 = add nsw i32 %62, -1
  store i32 %63, ptr %61, align 4, !tbaa !61
  call void @RNA_id_pointer_create(ptr noundef nonnull %30, ptr noundef nonnull %3) #10
  %64 = load ptr, ptr %57, align 8, !tbaa !57
  call void @RNA_property_pointer_set(ptr noundef %56, ptr noundef %64, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %3) #10
  %65 = load ptr, ptr %57, align 8, !tbaa !57
  call void @RNA_property_update(ptr noundef %0, ptr noundef %56, ptr noundef %65) #10
  br label %69

66:                                               ; preds = %55
  %67 = icmp eq ptr %8, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %66
  call void @ED_space_clip_set_clip(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %8, ptr noundef nonnull %30) #10
  br label %69

69:                                               ; preds = %66, %68, %60
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544323, ptr noundef nonnull %30) #10
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %71 = load ptr, ptr %32, align 8, !tbaa !54
  call void %70(ptr noundef %71) #10
  br label %72

72:                                               ; preds = %69, %48, %35
  %73 = phi i32 [ 4, %69 ], [ 2, %48 ], [ 2, %35 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @open_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [1024 x i8], align 16
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @ED_space_clip_get_clip(ptr noundef nonnull %5) #10
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.MovieClip, ptr %10, i64 0, i32 2
  %14 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %13, i64 noundef 1024) #10
  %15 = load ptr, ptr @G, align 8, !tbaa !50
  %16 = getelementptr inbounds %struct.Main, ptr %15, i64 0, i32 2
  %17 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %4, ptr noundef nonnull %16) #10
  %18 = call zeroext i8 @BLI_parent_dir(ptr noundef nonnull %4) #10
  br label %21

19:                                               ; preds = %9
  %20 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 9), i64 noundef 1024) #10
  br label %21

21:                                               ; preds = %19, %12
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %23, ptr noundef nonnull @.str.79) #10
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = call i32 @open_exec(ptr noundef %0, ptr noundef %1), !range !73
  br label %42

28:                                               ; preds = %21
  %29 = load ptr, ptr %22, align 8, !tbaa !48
  %30 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %29, ptr noundef nonnull @.str.80) #10
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load ptr, ptr %22, align 8, !tbaa !48
  %34 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !74
  %35 = and i32 %34, 1048576
  call void @RNA_boolean_set(ptr noundef %33, ptr noundef nonnull @.str.80, i32 noundef %35) #10
  br label %36

36:                                               ; preds = %32, %28
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %38 = call ptr %37(i64 noundef 32, ptr noundef nonnull @.str.86) #10
  %39 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %38, ptr %39, align 8, !tbaa !54
  %40 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %38, i64 0, i32 1
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef %38, ptr noundef nonnull %40) #10
  %41 = load ptr, ptr %22, align 8, !tbaa !48
  call void @RNA_string_set(ptr noundef %41, ptr noundef nonnull @.str.81, ptr noundef nonnull %4) #10
  call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #10
  br label %42

42:                                               ; preds = %36, %26
  %43 = phi i32 [ %27, %26 ], [ 1, %36 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #10
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal void @open_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  tail call void %3(ptr noundef %5) #10
  store ptr null, ptr %4, align 8, !tbaa !54
  ret void
}

declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_reload(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @reload_exec, ptr %4, align 8, !tbaa !44
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @reload_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_movieclip(ptr noundef %0) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @BKE_movieclip_reload(ptr noundef nonnull %3) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef nonnull %3) #10
  br label %6

6:                                                ; preds = %2, %5
  %7 = phi i32 [ 4, %5 ], [ 2, %2 ]
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_view_pan(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_pan_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view_pan_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @view_pan_modal, ptr %6, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @view_pan_cancel, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_view_clip_poll, ptr %8, align 8, !tbaa !79
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 4, ptr %9, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  %12 = tail call ptr @RNA_def_float_vector(ptr noundef %11, ptr noundef nonnull @.str.9, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_pan_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x float], align 4
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  call void @RNA_float_get_array(ptr noundef %6, ptr noundef nonnull @.str.9, ptr noundef nonnull %3) #10
  %7 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 12
  %8 = load i32, ptr %7, align 8, !tbaa !81
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  %11 = load float, ptr %3, align 4, !tbaa !87
  %12 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  br i1 %10, label %19, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 6
  %15 = load float, ptr %14, align 4, !tbaa !88
  %16 = fadd float %11, %15
  store float %16, ptr %14, align 4, !tbaa !88
  %17 = load float, ptr %12, align 4, !tbaa !87
  %18 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 7
  br label %25

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 4
  %21 = load float, ptr %20, align 4, !tbaa !89
  %22 = fadd float %11, %21
  store float %22, ptr %20, align 4, !tbaa !89
  %23 = load float, ptr %12, align 4, !tbaa !87
  %24 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 5
  br label %25

25:                                               ; preds = %19, %13
  %26 = phi ptr [ %24, %19 ], [ %18, %13 ]
  %27 = phi float [ %23, %19 ], [ %17, %13 ]
  %28 = load float, ptr %26, align 8, !tbaa !87
  %29 = fadd float %27, %28
  store float %29, ptr %26, align 8, !tbaa !87
  %30 = call ptr @CTX_wm_region(ptr noundef %0) #10
  call void @ED_region_tag_redraw(ptr noundef %30) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_pan_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !90
  %8 = icmp eq i16 %7, 14
  %9 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  br i1 %8, label %10, label %56

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %12 = load i32, ptr %11, align 8, !tbaa !93
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !94
  %15 = sub nsw i32 %12, %14
  %16 = sitofp i32 %15 to float
  %17 = getelementptr inbounds %struct.SpaceClip, ptr %9, i64 0, i32 8
  %18 = load float, ptr %17, align 4, !tbaa !95
  %19 = fdiv float %16, %18
  store float %19, ptr %5, align 4, !tbaa !87
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 13
  %21 = load i32, ptr %20, align 4, !tbaa !96
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !97
  %24 = sub nsw i32 %21, %23
  %25 = sitofp i32 %24 to float
  %26 = fdiv float %25, %18
  %27 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %26, ptr %27, align 4, !tbaa !87
  %28 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !48
  call void @RNA_float_set_array(ptr noundef %29, ptr noundef nonnull @.str.9, ptr noundef nonnull %5) #10
  %30 = call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %31 = load ptr, ptr %28, align 8, !tbaa !48
  call void @RNA_float_get_array(ptr noundef %31, ptr noundef nonnull @.str.9, ptr noundef nonnull %4) #10
  %32 = getelementptr inbounds %struct.SpaceClip, ptr %30, i64 0, i32 12
  %33 = load i32, ptr %32, align 8, !tbaa !81
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  %36 = load float, ptr %4, align 4, !tbaa !87
  %37 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  br i1 %35, label %44, label %38

38:                                               ; preds = %10
  %39 = getelementptr inbounds %struct.SpaceClip, ptr %30, i64 0, i32 6
  %40 = load float, ptr %39, align 4, !tbaa !88
  %41 = fadd float %36, %40
  store float %41, ptr %39, align 4, !tbaa !88
  %42 = load float, ptr %37, align 4, !tbaa !87
  %43 = getelementptr inbounds %struct.SpaceClip, ptr %30, i64 0, i32 7
  br label %50

44:                                               ; preds = %10
  %45 = getelementptr inbounds %struct.SpaceClip, ptr %30, i64 0, i32 4
  %46 = load float, ptr %45, align 4, !tbaa !89
  %47 = fadd float %36, %46
  store float %47, ptr %45, align 4, !tbaa !89
  %48 = load float, ptr %37, align 4, !tbaa !87
  %49 = getelementptr inbounds %struct.SpaceClip, ptr %30, i64 0, i32 5
  br label %50

50:                                               ; preds = %38, %44
  %51 = phi ptr [ %43, %38 ], [ %49, %44 ]
  %52 = phi float [ %42, %38 ], [ %48, %44 ]
  %53 = load float, ptr %51, align 8, !tbaa !87
  %54 = fadd float %52, %53
  store float %54, ptr %51, align 8, !tbaa !87
  %55 = call ptr @CTX_wm_region(ptr noundef %0) #10
  call void @ED_region_tag_redraw(ptr noundef %55) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %87

56:                                               ; preds = %3
  %57 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %58 = tail call ptr %57(i64 noundef 40, ptr noundef nonnull @.str.87) #10
  %59 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %58, ptr %59, align 8, !tbaa !54
  %60 = tail call ptr @CTX_wm_window(ptr noundef %0) #10
  tail call void @WM_cursor_modal_set(ptr noundef %60, i32 noundef 14) #10
  %61 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %62 = load i32, ptr %61, align 4, !tbaa !94
  %63 = sitofp i32 %62 to float
  store float %63, ptr %58, align 8, !tbaa !98
  %64 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %65 = load i32, ptr %64, align 8, !tbaa !97
  %66 = sitofp i32 %65 to float
  %67 = getelementptr inbounds %struct.ViewPanData, ptr %58, i64 0, i32 1
  store float %66, ptr %67, align 4, !tbaa !100
  %68 = getelementptr inbounds %struct.SpaceClip, ptr %9, i64 0, i32 12
  %69 = load i32, ptr %68, align 8, !tbaa !81
  %70 = and i32 %69, 4
  %71 = icmp eq i32 %70, 0
  %72 = getelementptr inbounds %struct.ViewPanData, ptr %58, i64 0, i32 7
  %73 = getelementptr inbounds %struct.SpaceClip, ptr %9, i64 0, i32 6
  %74 = getelementptr inbounds %struct.SpaceClip, ptr %9, i64 0, i32 4
  %75 = select i1 %71, ptr %74, ptr %73
  store ptr %75, ptr %72, align 8, !tbaa !101
  %76 = getelementptr inbounds %struct.ViewPanData, ptr %58, i64 0, i32 2
  %77 = load float, ptr %75, align 4, !tbaa !87
  store float %77, ptr %76, align 4, !tbaa !87
  %78 = getelementptr inbounds float, ptr %75, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !87
  %80 = getelementptr inbounds %struct.ViewPanData, ptr %58, i64 0, i32 3
  store float %79, ptr %80, align 4, !tbaa !87
  %81 = getelementptr inbounds %struct.ViewPanData, ptr %58, i64 0, i32 4
  store float %77, ptr %81, align 4, !tbaa !87
  %82 = getelementptr inbounds %struct.ViewPanData, ptr %58, i64 0, i32 5
  store float %79, ptr %82, align 4, !tbaa !87
  %83 = load i16, ptr %6, align 8, !tbaa !90
  %84 = sext i16 %83 to i32
  %85 = getelementptr inbounds %struct.ViewPanData, ptr %58, i64 0, i32 6
  store i32 %84, ptr %85, align 8, !tbaa !102
  %86 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #10
  br label %87

87:                                               ; preds = %56, %50
  %88 = phi i32 [ 4, %50 ], [ 1, %56 ]
  ret i32 %88
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_pan_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !90
  switch i16 %10, label %79 [
    i16 4, label %11
    i16 218, label %63
    i16 221, label %75
  ]

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ViewPanData, ptr %8, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !101
  %14 = getelementptr inbounds %struct.ViewPanData, ptr %8, i64 0, i32 4
  %15 = load float, ptr %14, align 4, !tbaa !87
  store float %15, ptr %13, align 4, !tbaa !87
  %16 = getelementptr inbounds %struct.ViewPanData, ptr %8, i64 0, i32 5
  %17 = load float, ptr %16, align 4, !tbaa !87
  %18 = getelementptr inbounds float, ptr %13, i64 1
  store float %17, ptr %18, align 4, !tbaa !87
  %19 = load float, ptr %8, align 8, !tbaa !98
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !94
  %22 = sitofp i32 %21 to float
  %23 = fsub float %19, %22
  %24 = getelementptr inbounds %struct.SpaceClip, ptr %6, i64 0, i32 8
  %25 = load float, ptr %24, align 4, !tbaa !95
  %26 = fdiv float %23, %25
  store float %26, ptr %5, align 4, !tbaa !87
  %27 = getelementptr inbounds %struct.ViewPanData, ptr %8, i64 0, i32 1
  %28 = load float, ptr %27, align 4, !tbaa !100
  %29 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !97
  %31 = sitofp i32 %30 to float
  %32 = fsub float %28, %31
  %33 = fdiv float %32, %25
  %34 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %33, ptr %34, align 4, !tbaa !87
  %35 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !48
  call void @RNA_float_set_array(ptr noundef %36, ptr noundef nonnull @.str.9, ptr noundef nonnull %5) #10
  %37 = call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %38 = load ptr, ptr %35, align 8, !tbaa !48
  call void @RNA_float_get_array(ptr noundef %38, ptr noundef nonnull @.str.9, ptr noundef nonnull %4) #10
  %39 = getelementptr inbounds %struct.SpaceClip, ptr %37, i64 0, i32 12
  %40 = load i32, ptr %39, align 8, !tbaa !81
  %41 = and i32 %40, 4
  %42 = icmp eq i32 %41, 0
  %43 = load float, ptr %4, align 4, !tbaa !87
  %44 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  br i1 %42, label %51, label %45

45:                                               ; preds = %11
  %46 = getelementptr inbounds %struct.SpaceClip, ptr %37, i64 0, i32 6
  %47 = load float, ptr %46, align 4, !tbaa !88
  %48 = fadd float %43, %47
  store float %48, ptr %46, align 4, !tbaa !88
  %49 = load float, ptr %44, align 4, !tbaa !87
  %50 = getelementptr inbounds %struct.SpaceClip, ptr %37, i64 0, i32 7
  br label %57

51:                                               ; preds = %11
  %52 = getelementptr inbounds %struct.SpaceClip, ptr %37, i64 0, i32 4
  %53 = load float, ptr %52, align 4, !tbaa !89
  %54 = fadd float %43, %53
  store float %54, ptr %52, align 4, !tbaa !89
  %55 = load float, ptr %44, align 4, !tbaa !87
  %56 = getelementptr inbounds %struct.SpaceClip, ptr %37, i64 0, i32 5
  br label %57

57:                                               ; preds = %45, %51
  %58 = phi ptr [ %50, %45 ], [ %56, %51 ]
  %59 = phi float [ %49, %45 ], [ %55, %51 ]
  %60 = load float, ptr %58, align 8, !tbaa !87
  %61 = fadd float %59, %60
  store float %61, ptr %58, align 8, !tbaa !87
  %62 = call ptr @CTX_wm_region(ptr noundef %0) #10
  call void @ED_region_tag_redraw(ptr noundef %62) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %92

63:                                               ; preds = %3
  %64 = getelementptr inbounds %struct.ViewPanData, ptr %8, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !101
  %66 = getelementptr inbounds %struct.ViewPanData, ptr %8, i64 0, i32 4
  %67 = load float, ptr %66, align 4, !tbaa !87
  store float %67, ptr %65, align 4, !tbaa !87
  %68 = getelementptr inbounds %struct.ViewPanData, ptr %8, i64 0, i32 5
  %69 = load float, ptr %68, align 4, !tbaa !87
  %70 = getelementptr inbounds float, ptr %65, i64 1
  store float %69, ptr %70, align 4, !tbaa !87
  %71 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  tail call void @ED_region_tag_redraw(ptr noundef %71) #10
  %72 = tail call ptr @CTX_wm_window(ptr noundef %0) #10
  tail call void @WM_cursor_modal_restore(ptr noundef %72) #10
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %74 = load ptr, ptr %7, align 8, !tbaa !54
  tail call void %73(ptr noundef %74) #10
  br label %92

75:                                               ; preds = %3
  %76 = tail call ptr @CTX_wm_window(ptr noundef %0) #10
  tail call void @WM_cursor_modal_restore(ptr noundef %76) #10
  %77 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %78 = load ptr, ptr %7, align 8, !tbaa !54
  tail call void %77(ptr noundef %78) #10
  br label %92

79:                                               ; preds = %3
  %80 = sext i16 %10 to i32
  %81 = getelementptr inbounds %struct.ViewPanData, ptr %8, i64 0, i32 6
  %82 = load i32, ptr %81, align 8, !tbaa !102
  %83 = icmp eq i32 %82, %80
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %86 = load i16, ptr %85, align 2, !tbaa !103
  %87 = icmp eq i16 %86, 2
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = tail call ptr @CTX_wm_window(ptr noundef %0) #10
  tail call void @WM_cursor_modal_restore(ptr noundef %89) #10
  %90 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %91 = load ptr, ptr %7, align 8, !tbaa !54
  tail call void %90(ptr noundef %91) #10
  br label %92

92:                                               ; preds = %57, %84, %79, %88, %75, %63
  %93 = phi i32 [ 4, %88 ], [ 4, %75 ], [ 2, %63 ], [ 1, %79 ], [ 1, %84 ], [ 1, %57 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define internal void @view_pan_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.ViewPanData, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !101
  %7 = getelementptr inbounds %struct.ViewPanData, ptr %4, i64 0, i32 4
  %8 = load float, ptr %7, align 4, !tbaa !87
  store float %8, ptr %6, align 4, !tbaa !87
  %9 = getelementptr inbounds %struct.ViewPanData, ptr %4, i64 0, i32 5
  %10 = load float, ptr %9, align 4, !tbaa !87
  %11 = getelementptr inbounds float, ptr %6, i64 1
  store float %10, ptr %11, align 4, !tbaa !87
  %12 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  tail call void @ED_region_tag_redraw(ptr noundef %12) #10
  %13 = tail call ptr @CTX_wm_window(ptr noundef %0) #10
  tail call void @WM_cursor_modal_restore(ptr noundef %13) #10
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %15 = load ptr, ptr %3, align 8, !tbaa !54
  tail call void %14(ptr noundef %15) #10
  ret void
}

declare i32 @ED_space_clip_view_clip_poll(ptr noundef) #1

declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_view_zoom(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_zoom_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view_zoom_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @view_zoom_modal, ptr %6, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @view_zoom_cancel, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_view_clip_poll, ptr %8, align 8, !tbaa !79
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 20, ptr %9, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.15, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #10
  tail call void @RNA_def_property_flag(ptr noundef %12, i32 noundef 524288) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_zoom_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = tail call float @RNA_float_get(ptr noundef %4, ptr noundef nonnull @.str.15) #10
  %6 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  %7 = getelementptr inbounds %struct.SpaceClip, ptr %6, i64 0, i32 8
  %8 = load float, ptr %7, align 4, !tbaa !95
  %9 = fmul float %5, %8
  tail call fastcc void @sclip_zoom_set(ptr noundef %0, float noundef %9, ptr noundef null)
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  tail call void @ED_region_tag_redraw(ptr noundef %10) #10
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_zoom_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !90
  %7 = and i16 %6, -2
  %8 = icmp eq i16 %7, 14
  br i1 %8, label %9, label %42

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %11 = load i32, ptr %10, align 8, !tbaa !93
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !94
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 13
  %15 = load i32, ptr %14, align 4, !tbaa !96
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !97
  %18 = add i32 %11, %15
  %19 = add i32 %13, %17
  %20 = sub i32 %18, %19
  %21 = sitofp i32 %20 to float
  %22 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !104
  %23 = and i32 %22, 33554432
  %24 = icmp eq i32 %23, 0
  %25 = fneg float %21
  %26 = select i1 %24, float %21, float %25
  %27 = fdiv float %26, 3.000000e+02
  %28 = fadd float %27, 1.000000e+00
  %29 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  tail call void @RNA_float_set(ptr noundef %30, ptr noundef nonnull @.str.15, float noundef %28) #10
  %31 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %32 = icmp eq ptr %2, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %9
  %34 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  %35 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_clip_mouse_pos(ptr noundef %34, ptr noundef %31, ptr noundef nonnull %35, ptr noundef nonnull %4) #10
  br label %36

36:                                               ; preds = %9, %33
  %37 = phi ptr [ %4, %33 ], [ null, %9 ]
  %38 = call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  %39 = getelementptr inbounds %struct.SpaceClip, ptr %38, i64 0, i32 8
  %40 = load float, ptr %39, align 4, !tbaa !95
  %41 = fmul float %28, %40
  call fastcc void @sclip_zoom_set(ptr noundef %0, float noundef %41, ptr noundef %37)
  call void @ED_region_tag_redraw(ptr noundef %31) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %75

42:                                               ; preds = %3
  %43 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  %44 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  %45 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %46 = tail call ptr %45(i64 noundef 40, ptr noundef nonnull @.str.88) #10
  %47 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %46, ptr %47, align 8, !tbaa !54
  %48 = tail call ptr @CTX_wm_window(ptr noundef %0) #10
  tail call void @WM_cursor_modal_set(ptr noundef %48, i32 noundef 14) #10
  %49 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 26), align 2, !tbaa !105
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = tail call ptr @CTX_wm_manager(ptr noundef %0) #10
  %53 = tail call ptr @CTX_wm_window(ptr noundef %0) #10
  %54 = tail call ptr @WM_event_add_timer(ptr noundef %52, ptr noundef %53, i32 noundef 272, double noundef 0x3F847AE140000000) #10
  %55 = getelementptr inbounds %struct.ViewZoomData, ptr %46, i64 0, i32 5
  store ptr %54, ptr %55, align 8, !tbaa !106
  %56 = tail call double @PIL_check_seconds_timer() #10
  %57 = getelementptr inbounds %struct.ViewZoomData, ptr %46, i64 0, i32 6
  store double %56, ptr %57, align 8, !tbaa !108
  br label %58

58:                                               ; preds = %42, %51
  %59 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %60 = load i32, ptr %59, align 4, !tbaa !94
  %61 = sitofp i32 %60 to float
  store float %61, ptr %46, align 8, !tbaa !109
  %62 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %63 = load i32, ptr %62, align 8, !tbaa !97
  %64 = sitofp i32 %63 to float
  %65 = getelementptr inbounds %struct.ViewZoomData, ptr %46, i64 0, i32 1
  store float %64, ptr %65, align 4, !tbaa !110
  %66 = getelementptr inbounds %struct.SpaceClip, ptr %43, i64 0, i32 8
  %67 = load float, ptr %66, align 4, !tbaa !95
  %68 = getelementptr inbounds %struct.ViewZoomData, ptr %46, i64 0, i32 2
  store float %67, ptr %68, align 8, !tbaa !111
  %69 = load i16, ptr %5, align 8, !tbaa !90
  %70 = sext i16 %69 to i32
  %71 = getelementptr inbounds %struct.ViewZoomData, ptr %46, i64 0, i32 3
  store i32 %70, ptr %71, align 4, !tbaa !112
  %72 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %73 = getelementptr inbounds %struct.ViewZoomData, ptr %46, i64 0, i32 4
  tail call void @ED_clip_mouse_pos(ptr noundef %43, ptr noundef %44, ptr noundef nonnull %72, ptr noundef nonnull %73) #10
  %74 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #10
  br label %75

75:                                               ; preds = %58, %36
  %76 = phi i32 [ 4, %36 ], [ 1, %58 ]
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_zoom_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !90
  switch i16 %7, label %16 [
    i16 272, label %8
    i16 4, label %15
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %10 = load ptr, ptr %9, align 8, !tbaa !113
  %11 = getelementptr inbounds %struct.ViewZoomData, ptr %5, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !106
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %8
  tail call fastcc void @view_zoom_apply(ptr noundef %0, ptr noundef %5, ptr noundef %1, ptr noundef %2)
  br label %40

15:                                               ; preds = %3
  tail call fastcc void @view_zoom_apply(ptr noundef %0, ptr noundef %5, ptr noundef %1, ptr noundef %2)
  br label %40

16:                                               ; preds = %3
  %17 = sext i16 %7 to i32
  %18 = getelementptr inbounds %struct.ViewZoomData, ptr %5, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !112
  %20 = icmp eq i32 %19, %17
  br i1 %20, label %21, label %40

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %23 = load i16, ptr %22, align 2, !tbaa !103
  %24 = icmp eq i16 %23, 2
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  %27 = load ptr, ptr %4, align 8, !tbaa !54
  %28 = getelementptr inbounds %struct.ViewZoomData, ptr %27, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !106
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = tail call ptr @CTX_wm_manager(ptr noundef %0) #10
  %33 = load ptr, ptr %28, align 8, !tbaa !106
  %34 = getelementptr inbounds %struct.wmTimer, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !114
  tail call void @WM_event_remove_timer(ptr noundef %32, ptr noundef %35, ptr noundef %33) #10
  br label %36

36:                                               ; preds = %25, %31
  %37 = tail call ptr @CTX_wm_window(ptr noundef %0) #10
  tail call void @WM_cursor_modal_restore(ptr noundef %37) #10
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %39 = load ptr, ptr %4, align 8, !tbaa !54
  tail call void %38(ptr noundef %39) #10
  br label %40

40:                                               ; preds = %15, %14, %8, %21, %16, %36
  %41 = phi i32 [ 4, %36 ], [ 1, %16 ], [ 1, %21 ], [ 1, %8 ], [ 1, %14 ], [ 1, %15 ]
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal void @view_zoom_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call fastcc void @view_zoom_exit(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1)
  ret void
}

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_view_zoom_in(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_zoom_in_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view_zoom_in_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_view_clip_poll, ptr %6, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = tail call ptr @RNA_def_float_vector(ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, float noundef -1.000000e+01, float noundef 1.000000e+01) #10
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 524288) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_zoom_in_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  call void @RNA_float_get_array(ptr noundef %5, ptr noundef nonnull @.str.21, ptr noundef nonnull %3) #10
  %6 = call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  %7 = getelementptr inbounds %struct.SpaceClip, ptr %6, i64 0, i32 8
  %8 = load float, ptr %7, align 4, !tbaa !95
  %9 = fmul float %8, 0x3FF428A300000000
  call fastcc void @sclip_zoom_set(ptr noundef %0, float noundef %9, ptr noundef nonnull %3)
  %10 = call ptr @CTX_wm_region(ptr noundef %0) #10
  call void @ED_region_tag_redraw(ptr noundef %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_zoom_in_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_clip_mouse_pos(ptr noundef %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %5) #10
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  call void @RNA_float_set_array(ptr noundef %10, ptr noundef nonnull @.str.21, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %11 = load ptr, ptr %9, align 8, !tbaa !48
  call void @RNA_float_get_array(ptr noundef %11, ptr noundef nonnull @.str.21, ptr noundef nonnull %4) #10
  %12 = call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  %13 = getelementptr inbounds %struct.SpaceClip, ptr %12, i64 0, i32 8
  %14 = load float, ptr %13, align 4, !tbaa !95
  %15 = fmul float %14, 0x3FF428A300000000
  call fastcc void @sclip_zoom_set(ptr noundef %0, float noundef %15, ptr noundef nonnull %4)
  %16 = call ptr @CTX_wm_region(ptr noundef %0) #10
  call void @ED_region_tag_redraw(ptr noundef %16) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_view_zoom_out(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_zoom_out_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @view_zoom_out_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_view_clip_poll, ptr %6, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = tail call ptr @RNA_def_float_vector(ptr noundef %8, ptr noundef nonnull @.str.21, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.27, float noundef -1.000000e+01, float noundef 1.000000e+01) #10
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 524288) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_zoom_out_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  call void @RNA_float_get_array(ptr noundef %5, ptr noundef nonnull @.str.21, ptr noundef nonnull %3) #10
  %6 = call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  %7 = getelementptr inbounds %struct.SpaceClip, ptr %6, i64 0, i32 8
  %8 = load float, ptr %7, align 4, !tbaa !95
  %9 = fmul float %8, 0x3FE965FEA0000000
  call fastcc void @sclip_zoom_set(ptr noundef %0, float noundef %9, ptr noundef nonnull %3)
  %10 = call ptr @CTX_wm_region(ptr noundef %0) #10
  call void @ED_region_tag_redraw(ptr noundef %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_zoom_out_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_clip_mouse_pos(ptr noundef %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %5) #10
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  call void @RNA_float_set_array(ptr noundef %10, ptr noundef nonnull @.str.21, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %11 = load ptr, ptr %9, align 8, !tbaa !48
  call void @RNA_float_get_array(ptr noundef %11, ptr noundef nonnull @.str.21, ptr noundef nonnull %4) #10
  %12 = call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  %13 = getelementptr inbounds %struct.SpaceClip, ptr %12, i64 0, i32 8
  %14 = load float, ptr %13, align 4, !tbaa !95
  %15 = fmul float %14, 0x3FE965FEA0000000
  call fastcc void @sclip_zoom_set(ptr noundef %0, float noundef %15, ptr noundef nonnull %4)
  %16 = call ptr @CTX_wm_region(ptr noundef %0) #10
  call void @ED_region_tag_redraw(ptr noundef %16) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_view_zoom_ratio(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.28, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.29, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_zoom_ratio_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_view_clip_poll, ptr %5, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = tail call ptr @RNA_def_float(ptr noundef %7, ptr noundef nonnull @.str.31, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_zoom_ratio_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = tail call float @RNA_float_get(ptr noundef %5, ptr noundef nonnull @.str.31) #10
  tail call fastcc void @sclip_zoom_set(ptr noundef %0, float noundef %6, ptr noundef null)
  %7 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 4
  %8 = load float, ptr %7, align 4, !tbaa !89
  %9 = fptosi float %8 to i32
  %10 = sitofp i32 %9 to float
  store float %10, ptr %7, align 4, !tbaa !89
  %11 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 5
  %12 = load float, ptr %11, align 8, !tbaa !116
  %13 = fptosi float %12 to i32
  %14 = sitofp i32 %13 to float
  store float %14, ptr %11, align 8, !tbaa !116
  %15 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  tail call void @ED_region_tag_redraw(ptr noundef %15) #10
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_view_all(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.34, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.35, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.36, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_all_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_view_clip_poll, ptr %5, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.37, i32 noundef 0, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #10
  tail call void @RNA_def_property_flag(ptr noundef %8, i32 noundef 268435456) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.37) #10
  %10 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  call void @ED_space_clip_get_size(ptr noundef %10, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  call void @ED_space_clip_get_aspect(ptr noundef %10, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %12 = load i32, ptr %3, align 4, !tbaa !53
  %13 = sitofp i32 %12 to float
  %14 = load float, ptr %5, align 4, !tbaa !87
  %15 = fmul float %14, %13
  %16 = fptosi float %15 to i32
  store i32 %16, ptr %3, align 4, !tbaa !53
  %17 = load i32, ptr %4, align 4, !tbaa !53
  %18 = sitofp i32 %17 to float
  %19 = load float, ptr %6, align 4, !tbaa !87
  %20 = fmul float %19, %18
  %21 = fptosi float %20 to i32
  store i32 %21, ptr %4, align 4, !tbaa !53
  %22 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 3
  %23 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 3, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !117
  %25 = load i32, ptr %22, align 4, !tbaa !119
  %26 = sub nsw i32 %24, %25
  %27 = add nsw i32 %26, 1
  %28 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 3, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !120
  %30 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 3, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !121
  %32 = sub nsw i32 %29, %31
  %33 = add nsw i32 %32, 1
  %34 = and i32 %9, 255
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %2
  %37 = sitofp i32 %27 to float
  %38 = add nsw i32 %16, 10
  %39 = sitofp i32 %38 to float
  %40 = fdiv float %37, %39
  %41 = sitofp i32 %33 to float
  %42 = add nsw i32 %21, 10
  %43 = sitofp i32 %42 to float
  %44 = fdiv float %41, %43
  %45 = fcmp olt float %40, %44
  %46 = select i1 %45, float %40, float %44
  call fastcc void @sclip_zoom_set(ptr noundef %0, float noundef %46, ptr noundef null)
  br label %79

47:                                               ; preds = %2
  %48 = icmp slt i32 %26, %16
  br i1 %48, label %54, label %49

49:                                               ; preds = %47
  %50 = icmp slt i32 %32, %21
  %51 = or i32 %32, %26
  %52 = icmp sgt i32 %51, -1
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %58, label %75

54:                                               ; preds = %47
  %55 = icmp sgt i32 %26, -1
  %56 = icmp sgt i32 %32, -1
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %58, label %75

58:                                               ; preds = %54, %49
  %59 = sitofp i32 %27 to float
  %60 = sitofp i32 %16 to float
  %61 = fdiv float %59, %60
  %62 = sitofp i32 %33 to float
  %63 = sitofp i32 %21 to float
  %64 = fdiv float %62, %63
  %65 = fcmp olt float %61, %64
  %66 = select i1 %65, float %61, float %64
  %67 = fdiv float 1.000000e+00, %66
  %68 = fpext float %67 to double
  %69 = call double @log(double noundef %68) #10
  %70 = fdiv double %69, 0x3FE62E42FEFA39EF
  %71 = call double @llvm.ceil.f64(double %70)
  %72 = call double @exp2(double %71) #10
  %73 = fptrunc double %72 to float
  %74 = fdiv float 1.000000e+00, %73
  call fastcc void @sclip_zoom_set(ptr noundef %0, float noundef %74, ptr noundef null)
  br label %79

75:                                               ; preds = %54, %49
  %76 = call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  %77 = call ptr @CTX_wm_region(ptr noundef %0) #10
  %78 = getelementptr inbounds %struct.SpaceClip, ptr %76, i64 0, i32 8
  store float 1.000000e+00, ptr %78, align 4, !tbaa !95
  br label %79

79:                                               ; preds = %58, %75, %36
  %80 = getelementptr inbounds %struct.SpaceClip, ptr %10, i64 0, i32 5
  store float 0.000000e+00, ptr %80, align 8, !tbaa !116
  %81 = getelementptr inbounds %struct.SpaceClip, ptr %10, i64 0, i32 4
  store float 0.000000e+00, ptr %81, align 4, !tbaa !89
  call void @ED_region_tag_redraw(ptr noundef %11) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 4
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_view_selected(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.40, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.41, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.42, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @view_selected_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_view_clip_poll, ptr %5, align 8, !tbaa !79
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @view_selected_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 6
  store float 0.000000e+00, ptr %5, align 4, !tbaa !88
  %6 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 7
  store float 0.000000e+00, ptr %6, align 8, !tbaa !122
  %7 = tail call zeroext i8 @ED_clip_view_selection(ptr noundef %0, ptr noundef %4, i8 noundef zeroext 1) #10
  tail call void @ED_region_tag_redraw(ptr noundef %4) #10
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_change_frame(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.43, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.44, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.45, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @change_frame_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @change_frame_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @change_frame_modal, ptr %6, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @change_frame_poll, ptr %7, align 8, !tbaa !79
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 6, ptr %8, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.46, i32 noundef 0, i32 noundef -300000, i32 noundef 300000, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef -300000, i32 noundef 300000) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @change_frame_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = tail call i32 @RNA_int_get(ptr noundef %5, ptr noundef nonnull @.str.46) #10
  %7 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  store i32 %6, ptr %7, align 8, !tbaa !123
  %8 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !74
  %9 = and i32 %8, 16777216
  %10 = icmp eq i32 %9, 0
  %11 = tail call i32 @llvm.smax.i32(i32 %6, i32 0)
  %12 = select i1 %10, i32 %6, i32 %11
  store i32 %12, ptr %7, align 8
  %13 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 8
  store float 0.000000e+00, ptr %13, align 4, !tbaa !141
  %14 = tail call ptr @CTX_data_main(ptr noundef %0) #10
  tail call void @sound_seek_scene(ptr noundef %14, ptr noundef %3) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %3) #10
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @change_frame_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  %7 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 8
  %8 = load i16, ptr %7, align 2, !tbaa !142
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !53
  %13 = icmp sgt i32 %12, 16
  br i1 %13, label %66, label %14

14:                                               ; preds = %10, %3
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  %17 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  %18 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %19 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 8
  %20 = load i16, ptr %19, align 2, !tbaa !142
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 22, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !145
  %25 = sitofp i32 %24 to float
  %26 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 22, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !146
  %28 = sitofp i32 %27 to float
  %29 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 5
  %30 = load i16, ptr %29, align 8, !tbaa !147
  %31 = sitofp i16 %30 to float
  %32 = fsub float %28, %25
  %33 = fadd float %32, 1.000000e+00
  %34 = fdiv float %31, %33
  %35 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %36 = load i32, ptr %35, align 4, !tbaa !53
  %37 = sitofp i32 %36 to float
  %38 = fdiv float %37, %34
  %39 = fadd float %38, %25
  br label %51

40:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %41 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 2
  %42 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %43 = load i32, ptr %42, align 4, !tbaa !53
  %44 = sitofp i32 %43 to float
  %45 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %46 = load i32, ptr %45, align 4, !tbaa !53
  %47 = sitofp i32 %46 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %41, float noundef %44, float noundef %47, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %48 = load float, ptr %4, align 4, !tbaa !87
  %49 = fadd float %48, 5.000000e-01
  %50 = call float @llvm.floor.f32(float %49)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %51

51:                                               ; preds = %22, %40
  %52 = phi float [ %39, %22 ], [ %50, %40 ]
  %53 = fptosi float %52 to i32
  call void @RNA_int_set(ptr noundef %16, ptr noundef nonnull @.str.46, i32 noundef %53) #10
  %54 = call ptr @CTX_data_scene(ptr noundef %0) #10
  %55 = load ptr, ptr %15, align 8, !tbaa !48
  %56 = call i32 @RNA_int_get(ptr noundef %55, ptr noundef nonnull @.str.46) #10
  %57 = getelementptr inbounds %struct.Scene, ptr %54, i64 0, i32 22, i32 5
  store i32 %56, ptr %57, align 8, !tbaa !123
  %58 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !74
  %59 = and i32 %58, 16777216
  %60 = icmp eq i32 %59, 0
  %61 = call i32 @llvm.smax.i32(i32 %56, i32 0)
  %62 = select i1 %60, i32 %56, i32 %61
  store i32 %62, ptr %57, align 8
  %63 = getelementptr inbounds %struct.Scene, ptr %54, i64 0, i32 22, i32 8
  store float 0.000000e+00, ptr %63, align 4, !tbaa !141
  %64 = call ptr @CTX_data_main(ptr noundef %0) #10
  call void @sound_seek_scene(ptr noundef %64, ptr noundef %54) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %54) #10
  %65 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #10
  br label %66

66:                                               ; preds = %10, %51
  %67 = phi i32 [ 1, %51 ], [ 8, %10 ]
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @change_frame_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !90
  switch i16 %7, label %63 [
    i16 218, label %64
    i16 4, label %8
    i16 1, label %59
    i16 3, label %59
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  %12 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %13 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 8
  %14 = load i16, ptr %13, align 2, !tbaa !142
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !145
  %19 = sitofp i32 %18 to float
  %20 = getelementptr inbounds %struct.Scene, ptr %12, i64 0, i32 22, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !146
  %22 = sitofp i32 %21 to float
  %23 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 5
  %24 = load i16, ptr %23, align 8, !tbaa !147
  %25 = sitofp i16 %24 to float
  %26 = fsub float %22, %19
  %27 = fadd float %26, 1.000000e+00
  %28 = fdiv float %25, %27
  %29 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %30 = load i32, ptr %29, align 4, !tbaa !53
  %31 = sitofp i32 %30 to float
  %32 = fdiv float %31, %28
  %33 = fadd float %32, %19
  br label %45

34:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %35 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 2
  %36 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %37 = load i32, ptr %36, align 4, !tbaa !53
  %38 = sitofp i32 %37 to float
  %39 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %40 = load i32, ptr %39, align 4, !tbaa !53
  %41 = sitofp i32 %40 to float
  call void @UI_view2d_region_to_view(ptr noundef nonnull %35, float noundef %38, float noundef %41, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %42 = load float, ptr %4, align 4, !tbaa !87
  %43 = fadd float %42, 5.000000e-01
  %44 = call float @llvm.floor.f32(float %43)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %45

45:                                               ; preds = %16, %34
  %46 = phi float [ %33, %16 ], [ %44, %34 ]
  %47 = fptosi float %46 to i32
  call void @RNA_int_set(ptr noundef %10, ptr noundef nonnull @.str.46, i32 noundef %47) #10
  %48 = call ptr @CTX_data_scene(ptr noundef %0) #10
  %49 = load ptr, ptr %9, align 8, !tbaa !48
  %50 = call i32 @RNA_int_get(ptr noundef %49, ptr noundef nonnull @.str.46) #10
  %51 = getelementptr inbounds %struct.Scene, ptr %48, i64 0, i32 22, i32 5
  store i32 %50, ptr %51, align 8, !tbaa !123
  %52 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !74
  %53 = and i32 %52, 16777216
  %54 = icmp eq i32 %53, 0
  %55 = call i32 @llvm.smax.i32(i32 %50, i32 0)
  %56 = select i1 %54, i32 %50, i32 %55
  store i32 %56, ptr %51, align 8
  %57 = getelementptr inbounds %struct.Scene, ptr %48, i64 0, i32 22, i32 8
  store float 0.000000e+00, ptr %57, align 4, !tbaa !141
  %58 = call ptr @CTX_data_main(ptr noundef %0) #10
  call void @sound_seek_scene(ptr noundef %58, ptr noundef %48) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %48) #10
  br label %63

59:                                               ; preds = %3, %3
  %60 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %61 = load i16, ptr %60, align 2, !tbaa !103
  %62 = icmp eq i16 %61, 2
  br i1 %62, label %64, label %63

63:                                               ; preds = %59, %3, %45
  br label %64

64:                                               ; preds = %59, %3, %63
  %65 = phi i32 [ 1, %63 ], [ 4, %3 ], [ 4, %59 ]
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define internal i32 @change_frame_poll(ptr noundef %0) #0 {
  %2 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !148
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @ED_space_clip_poll(ptr noundef %0) #10
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  ret i32 %7
}

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_rebuild_proxy(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.49, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.50, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.51, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @clip_rebuild_proxy_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_poll, ptr %5, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @clip_rebuild_proxy_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #10
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  %6 = tail call ptr @ED_space_clip_get_clip(ptr noundef %5) #10
  %7 = getelementptr inbounds %struct.MovieClip, ptr %6, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !149
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %40, label %11

11:                                               ; preds = %2
  %12 = tail call ptr @CTX_wm_manager(ptr noundef %0) #10
  %13 = tail call ptr @CTX_wm_window(ptr noundef %0) #10
  %14 = tail call ptr @WM_jobs_get(ptr noundef %12, ptr noundef %13, ptr noundef %4, ptr noundef nonnull @.str.89, i32 noundef 4, i32 noundef 10) #10
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %16 = tail call ptr %15(i64 noundef 40, ptr noundef nonnull @.str.90) #10
  store ptr %3, ptr %16, align 8, !tbaa !150
  %17 = tail call ptr @CTX_data_main(ptr noundef %0) #10
  %18 = getelementptr inbounds %struct.ProxyBuildJob, ptr %16, i64 0, i32 1
  store ptr %17, ptr %18, align 8, !tbaa !152
  %19 = getelementptr inbounds %struct.ProxyBuildJob, ptr %16, i64 0, i32 2
  store ptr %6, ptr %19, align 8, !tbaa !153
  %20 = load i32, ptr %7, align 8, !tbaa !149
  %21 = and i32 %20, 3
  %22 = getelementptr inbounds %struct.ProxyBuildJob, ptr %16, i64 0, i32 3
  store i32 %21, ptr %22, align 8, !tbaa !154
  %23 = getelementptr inbounds %struct.MovieClip, ptr %6, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !155
  %25 = icmp eq ptr %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.MovieClip, ptr %6, i64 0, i32 13, i32 4
  %28 = load i16, ptr %27, align 2, !tbaa !156
  %29 = sext i16 %28 to i32
  %30 = getelementptr inbounds %struct.MovieClip, ptr %6, i64 0, i32 13, i32 3
  %31 = load i16, ptr %30, align 4, !tbaa !157
  %32 = sext i16 %31 to i32
  %33 = getelementptr inbounds %struct.MovieClip, ptr %6, i64 0, i32 13, i32 2
  %34 = load i16, ptr %33, align 2, !tbaa !158
  %35 = sext i16 %34 to i32
  %36 = tail call ptr @IMB_anim_index_rebuild_context(ptr noundef nonnull %24, i32 noundef %29, i32 noundef %32, i32 noundef %35) #10
  %37 = getelementptr inbounds %struct.ProxyBuildJob, ptr %16, i64 0, i32 5
  store ptr %36, ptr %37, align 8, !tbaa !159
  br label %38

38:                                               ; preds = %26, %11
  tail call void @WM_jobs_customdata_set(ptr noundef %14, ptr noundef nonnull %16, ptr noundef nonnull @proxy_freejob) #10
  tail call void @WM_jobs_timer(ptr noundef %14, double noundef 2.000000e-01, i32 noundef 338886656, i32 noundef 0) #10
  tail call void @WM_jobs_callbacks(ptr noundef %14, ptr noundef nonnull @proxy_startjob, ptr noundef null, ptr noundef null, ptr noundef nonnull @proxy_endjob) #10
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !160
  %39 = tail call ptr @CTX_wm_manager(ptr noundef %0) #10
  tail call void @WM_jobs_start(ptr noundef %39, ptr noundef %14) #10
  tail call void @ED_area_tag_redraw(ptr noundef %4) #10
  br label %40

40:                                               ; preds = %2, %38
  %41 = phi i32 [ 4, %38 ], [ 2, %2 ]
  ret i32 %41
}

declare i32 @ED_space_clip_poll(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_mode_set(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.52, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.53, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.54, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @mode_set_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_poll, ptr %5, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = tail call ptr @RNA_def_enum(ptr noundef %7, ptr noundef nonnull @.str.55, ptr noundef nonnull @clip_editor_mode_items, i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.48) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mode_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.55) #10
  %7 = trunc i32 %6 to i16
  %8 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 13
  store i16 %7, ptr %8, align 4, !tbaa !161
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252903424, ptr noundef null) #10
  ret i32 4
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_view_ndof(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.57, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.58, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.59, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @clip_view_ndof_invoke, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_view_clip_poll, ptr %5, align 8, !tbaa !79
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @clip_view_ndof_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !90
  %7 = icmp eq i16 %6, 400
  br i1 %7, label %8, label %41

8:                                                ; preds = %3
  %9 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %12 = load ptr, ptr %11, align 8, !tbaa !113
  call void @WM_event_ndof_pan_get(ptr noundef %12, ptr noundef nonnull %4, i8 noundef zeroext 1) #10
  %13 = getelementptr inbounds %struct.wmNDOFMotionData, ptr %12, i64 0, i32 2
  %14 = load float, ptr %13, align 4, !tbaa !162
  %15 = fmul float %14, 6.000000e+02
  %16 = getelementptr inbounds %struct.SpaceClip, ptr %9, i64 0, i32 8
  %17 = load float, ptr %16, align 4, !tbaa !95
  %18 = fdiv float %15, %17
  %19 = load float, ptr %4, align 4, !tbaa !87
  %20 = fmul float %19, %18
  store float %20, ptr %4, align 4, !tbaa !87
  %21 = getelementptr inbounds float, ptr %4, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !87
  %23 = fmul float %18, %22
  store float %23, ptr %21, align 4, !tbaa !87
  %24 = fneg float %14
  %25 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !87
  %27 = fmul float %26, %24
  store float %27, ptr %25, align 4, !tbaa !87
  %28 = fadd float %27, 1.000000e+00
  %29 = call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  %30 = getelementptr inbounds %struct.SpaceClip, ptr %29, i64 0, i32 8
  %31 = load float, ptr %30, align 4, !tbaa !95
  %32 = fmul float %28, %31
  call fastcc void @sclip_zoom_set(ptr noundef %0, float noundef %32, ptr noundef null)
  %33 = load float, ptr %4, align 4, !tbaa !87
  %34 = getelementptr inbounds %struct.SpaceClip, ptr %9, i64 0, i32 4
  %35 = load float, ptr %34, align 4, !tbaa !89
  %36 = fadd float %33, %35
  store float %36, ptr %34, align 4, !tbaa !89
  %37 = load float, ptr %21, align 4, !tbaa !87
  %38 = getelementptr inbounds %struct.SpaceClip, ptr %9, i64 0, i32 5
  %39 = load float, ptr %38, align 8, !tbaa !116
  %40 = fadd float %37, %39
  store float %40, ptr %38, align 8, !tbaa !116
  call void @ED_region_tag_redraw(ptr noundef %10) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  br label %41

41:                                               ; preds = %3, %8
  %42 = phi i32 [ 4, %8 ], [ 2, %3 ]
  ret i32 %42
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_prefetch(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.60, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.61, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.62, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_view_clip_poll, ptr %4, align 8, !tbaa !79
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @clip_prefetch_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @clip_prefetch_modal, ptr %6, align 8, !tbaa !78
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @clip_prefetch_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  tail call void @clip_start_prefetch_job(ptr noundef %0) #10
  %4 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #10
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @clip_prefetch_modal(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #10
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #10
  %6 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef %5, i32 noundef 13) #10
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !90
  %11 = icmp eq i16 %10, 218
  %12 = select i1 %11, i32 1, i32 8
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ 12, %3 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_set_scene_frames(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.63, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.64, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.65, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_view_clip_poll, ptr %4, align 8, !tbaa !79
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @clip_set_scene_frames_exec, ptr %5, align 8, !tbaa !44
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @clip_set_scene_frames_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_movieclip(ptr noundef %0) #10
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %5 = icmp eq ptr %4, null
  %6 = icmp eq ptr %3, null
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @BKE_movieclip_get_duration(ptr noundef %3) #10
  %10 = getelementptr inbounds %struct.MovieClip, ptr %3, i64 0, i32 16
  %11 = load i32, ptr %10, align 8, !tbaa !164
  %12 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 6
  store i32 %11, ptr %12, align 4, !tbaa !145
  %13 = add i32 %9, -1
  %14 = add i32 %13, %11
  %15 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 22, i32 7
  %16 = tail call i32 @llvm.smax.i32(i32 %14, i32 %11)
  store i32 %16, ptr %15, align 8, !tbaa !146
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %4) #10
  br label %17

17:                                               ; preds = %2, %8
  %18 = phi i32 [ 4, %8 ], [ 2, %2 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_cursor_set(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.66, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.67, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.68, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @clip_set_2d_cursor_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @clip_set_2d_cursor_invoke, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_poll, ptr %6, align 8, !tbaa !79
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = tail call ptr @RNA_def_float_vector(ptr noundef %9, ptr noundef nonnull @.str.21, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.69, float noundef -1.000000e+01, float noundef 1.000000e+01) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @clip_set_2d_cursor_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 4, !tbaa !161
  %6 = icmp eq i16 %5, 3
  %7 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 25
  %8 = load i32, ptr %7, align 8, !tbaa !165
  %9 = icmp eq i32 %8, 1
  %10 = or i1 %6, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 27
  tail call void @RNA_float_get_array(ptr noundef %13, ptr noundef nonnull @.str.21, ptr noundef nonnull %14) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252903424, ptr noundef null) #10
  br label %15

15:                                               ; preds = %2, %11
  %16 = phi i32 [ 4, %11 ], [ 2, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @clip_set_2d_cursor_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  %6 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_clip_mouse_pos(ptr noundef %6, ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %4) #10
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  call void @RNA_float_set_array(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef nonnull %4) #10
  %10 = call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  %11 = getelementptr inbounds %struct.SpaceClip, ptr %10, i64 0, i32 13
  %12 = load i16, ptr %11, align 4, !tbaa !161
  %13 = icmp eq i16 %12, 3
  %14 = getelementptr inbounds %struct.SpaceClip, ptr %10, i64 0, i32 25
  %15 = load i32, ptr %14, align 8, !tbaa !165
  %16 = icmp eq i32 %15, 1
  %17 = or i1 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load ptr, ptr %8, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.SpaceClip, ptr %10, i64 0, i32 27
  call void @RNA_float_get_array(ptr noundef %19, ptr noundef nonnull @.str.21, ptr noundef nonnull %20) #10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252903424, ptr noundef null) #10
  br label %21

21:                                               ; preds = %3, %18
  %22 = phi i32 [ 4, %18 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_operatormacros_clip() local_unnamed_addr #0 {
  %1 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef 3) #10
  %2 = tail call ptr @WM_operatortype_macro_define(ptr noundef %1, ptr noundef nonnull @.str.73) #10
  %3 = tail call ptr @WM_operatortype_macro_define(ptr noundef %1, ptr noundef nonnull @.str.74) #10
  %4 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !166
  %6 = tail call zeroext i8 @RNA_struct_idprops_unset(ptr noundef %5, ptr noundef nonnull @.str.75) #10
  %7 = tail call ptr @WM_operatortype_append_macro(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 3) #10
  %8 = tail call ptr @WM_operatortype_macro_define(ptr noundef %7, ptr noundef nonnull @.str.73) #10
  %9 = tail call ptr @WM_operatortype_macro_define(ptr noundef %7, ptr noundef nonnull @.str.74) #10
  %10 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !166
  tail call void @RNA_boolean_set(ptr noundef %11, ptr noundef nonnull @.str.75, i32 noundef 1) #10
  ret void
}

declare ptr @WM_operatortype_append_macro(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @WM_operatortype_macro_define(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @RNA_struct_idprops_unset(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

declare i32 @RNA_collection_length(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_path_rel(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_property_collection_lookup_int(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare ptr @BKE_movieclip_file_add(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #5

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_property_pointer_set(ptr noundef, ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) local_unnamed_addr #1

declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_space_clip_set_clip(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @uiIDContextProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BLI_parent_dir(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_event_add_fileselect(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_edit_movieclip(ptr noundef) local_unnamed_addr #1

declare void @BKE_movieclip_reload(ptr noundef) local_unnamed_addr #1

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #1

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @sclip_zoom_set(ptr noundef %0, float noundef %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  %8 = getelementptr inbounds %struct.SpaceClip, ptr %6, i64 0, i32 8
  %9 = load float, ptr %8, align 4, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store float %1, ptr %8, align 4, !tbaa !95
  %10 = fcmp olt float %1, 0x3FB99999A0000000
  %11 = fcmp ogt float %1, 4.000000e+00
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %43

13:                                               ; preds = %3
  call void @ED_space_clip_get_size(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %14 = load float, ptr %8, align 4, !tbaa !95
  %15 = load i32, ptr %4, align 4, !tbaa !53
  %16 = sitofp i32 %15 to float
  %17 = fmul float %14, %16
  %18 = fptosi float %17 to i32
  store i32 %18, ptr %4, align 4, !tbaa !53
  %19 = load i32, ptr %5, align 4, !tbaa !53
  %20 = sitofp i32 %19 to float
  %21 = fmul float %14, %20
  %22 = fptosi float %21 to i32
  store i32 %22, ptr %5, align 4, !tbaa !53
  %23 = icmp slt i32 %18, 4
  %24 = icmp slt i32 %22, 4
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %42, label %26

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3
  %28 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !117
  %30 = load i32, ptr %27, align 4, !tbaa !119
  %31 = sub nsw i32 %29, %30
  %32 = sitofp i32 %31 to float
  %33 = fcmp ult float %14, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !120
  %37 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !121
  %39 = sub nsw i32 %36, %38
  %40 = sitofp i32 %39 to float
  %41 = fcmp ult float %14, %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %34, %26, %13
  store float %9, ptr %8, align 4, !tbaa !95
  br label %43

43:                                               ; preds = %42, %3, %34
  %44 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !104
  %45 = and i32 %44, 1048576
  %46 = icmp ne i32 %45, 0
  %47 = icmp ne ptr %2, null
  %48 = and i1 %47, %46
  br i1 %48, label %49, label %87

49:                                               ; preds = %43
  call void @ED_space_clip_get_size(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %50 = load float, ptr %2, align 4, !tbaa !87
  %51 = fadd float %50, -5.000000e-01
  %52 = load i32, ptr %4, align 4, !tbaa !53
  %53 = sitofp i32 %52 to float
  %54 = getelementptr inbounds %struct.SpaceClip, ptr %6, i64 0, i32 4
  %55 = load float, ptr %54, align 4, !tbaa !89
  %56 = fneg float %55
  %57 = call float @llvm.fmuladd.f32(float %51, float %53, float %56)
  %58 = load float, ptr %8, align 4, !tbaa !95
  %59 = fsub float %58, %9
  %60 = fmul float %57, %59
  %61 = fdiv float %60, %58
  %62 = getelementptr inbounds float, ptr %2, i64 1
  %63 = load float, ptr %62, align 4, !tbaa !87
  %64 = fadd float %63, -5.000000e-01
  %65 = load i32, ptr %5, align 4, !tbaa !53
  %66 = sitofp i32 %65 to float
  %67 = getelementptr inbounds %struct.SpaceClip, ptr %6, i64 0, i32 5
  %68 = load float, ptr %67, align 8, !tbaa !116
  %69 = fneg float %68
  %70 = call float @llvm.fmuladd.f32(float %64, float %66, float %69)
  %71 = fmul float %59, %70
  %72 = fdiv float %71, %58
  %73 = getelementptr inbounds %struct.SpaceClip, ptr %6, i64 0, i32 12
  %74 = load i32, ptr %73, align 8, !tbaa !81
  %75 = and i32 %74, 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %49
  %78 = getelementptr inbounds %struct.SpaceClip, ptr %6, i64 0, i32 6
  %79 = load float, ptr %78, align 4, !tbaa !88
  %80 = fadd float %61, %79
  store float %80, ptr %78, align 4, !tbaa !88
  %81 = getelementptr inbounds %struct.SpaceClip, ptr %6, i64 0, i32 7
  %82 = load float, ptr %81, align 8, !tbaa !122
  %83 = fadd float %72, %82
  store float %83, ptr %81, align 8, !tbaa !122
  br label %87

84:                                               ; preds = %49
  %85 = fadd float %55, %61
  store float %85, ptr %54, align 4, !tbaa !89
  %86 = fadd float %68, %72
  store float %86, ptr %67, align 8, !tbaa !116
  br label %87

87:                                               ; preds = %77, %84, %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

declare void @ED_space_clip_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare void @ED_clip_mouse_pos(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #1

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

declare double @PIL_check_seconds_timer() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @view_zoom_apply(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 26), align 2, !tbaa !105
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %44

7:                                                ; preds = %4
  %8 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  %9 = tail call double @PIL_check_seconds_timer() #10
  %10 = getelementptr inbounds %struct.ViewZoomData, ptr %1, i64 0, i32 6
  %11 = load double, ptr %10, align 8, !tbaa !108
  %12 = fsub double %9, %11
  %13 = fptrunc double %12 to float
  %14 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !104
  %15 = and i32 %14, 67108864
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 4
  %19 = load i32, ptr %18, align 4, !tbaa !94
  %20 = sitofp i32 %19 to float
  %21 = load float, ptr %1, align 8, !tbaa !109
  %22 = fsub float %20, %21
  br label %30

23:                                               ; preds = %7
  %24 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !97
  %26 = sitofp i32 %25 to float
  %27 = getelementptr inbounds %struct.ViewZoomData, ptr %1, i64 0, i32 1
  %28 = load float, ptr %27, align 4, !tbaa !110
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
  store double %9, ptr %10, align 8, !tbaa !108
  %38 = getelementptr inbounds %struct.SpaceClip, ptr %8, i64 0, i32 8
  %39 = load float, ptr %38, align 4, !tbaa !95
  %40 = fmul float %39, %37
  %41 = getelementptr inbounds %struct.ViewZoomData, ptr %1, i64 0, i32 2
  %42 = load float, ptr %41, align 8, !tbaa !111
  %43 = fdiv float %40, %42
  br label %64

44:                                               ; preds = %4
  %45 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 4
  %46 = load i32, ptr %45, align 4, !tbaa !94
  %47 = sitofp i32 %46 to float
  %48 = load float, ptr %1, align 8, !tbaa !109
  %49 = fsub float %47, %48
  %50 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !97
  %52 = sitofp i32 %51 to float
  %53 = fadd float %49, %52
  %54 = getelementptr inbounds %struct.ViewZoomData, ptr %1, i64 0, i32 1
  %55 = load float, ptr %54, align 4, !tbaa !110
  %56 = fsub float %53, %55
  %57 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !104
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
  %67 = load ptr, ptr %66, align 8, !tbaa !48
  tail call void @RNA_float_set(ptr noundef %67, ptr noundef nonnull @.str.15, float noundef %65) #10
  %68 = getelementptr inbounds %struct.ViewZoomData, ptr %1, i64 0, i32 2
  %69 = load float, ptr %68, align 8, !tbaa !111
  %70 = fmul float %65, %69
  %71 = getelementptr inbounds %struct.ViewZoomData, ptr %1, i64 0, i32 4
  tail call fastcc void @sclip_zoom_set(ptr noundef %0, float noundef %70, ptr noundef nonnull %71)
  %72 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  tail call void @ED_region_tag_redraw(ptr noundef %72) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @view_zoom_exit(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp eq i8 %2, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ViewZoomData, ptr %6, i64 0, i32 2
  %10 = load float, ptr %9, align 8, !tbaa !111
  %11 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 8
  store float %10, ptr %11, align 4, !tbaa !95
  %12 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  tail call void @ED_region_tag_redraw(ptr noundef %12) #10
  br label %13

13:                                               ; preds = %8, %3
  %14 = getelementptr inbounds %struct.ViewZoomData, ptr %6, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !106
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @CTX_wm_manager(ptr noundef %0) #10
  %19 = load ptr, ptr %14, align 8, !tbaa !106
  %20 = getelementptr inbounds %struct.wmTimer, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !114
  tail call void @WM_event_remove_timer(ptr noundef %18, ptr noundef %21, ptr noundef %19) #10
  br label %22

22:                                               ; preds = %17, %13
  %23 = tail call ptr @CTX_wm_window(ptr noundef %0) #10
  tail call void @WM_cursor_modal_restore(ptr noundef %23) #10
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  %25 = load ptr, ptr %5, align 8, !tbaa !54
  tail call void %24(ptr noundef %25) #10
  ret void
}

declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_space_clip_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #6

declare zeroext i8 @ED_clip_view_selection(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @sound_seek_scene(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @UI_view2d_region_to_view(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #6

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

declare ptr @WM_jobs_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @IMB_anim_index_rebuild_context(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @WM_jobs_customdata_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @proxy_freejob(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  tail call void %2(ptr noundef %0) #10
  ret void
}

declare void @WM_jobs_timer(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @WM_jobs_callbacks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @proxy_startjob(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ProxyQueue, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca [4 x i32], align 16
  %12 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #10
  %14 = getelementptr inbounds %struct.MovieClip, ptr %13, i64 0, i32 13, i32 3
  %15 = load i16, ptr %14, align 4, !tbaa !157
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 1, ptr %10, align 16, !tbaa !53
  br label %20

20:                                               ; preds = %19, %4
  %21 = phi i32 [ 1, %19 ], [ 0, %4 ]
  %22 = and i32 %16, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = add nuw nsw i32 %21, 1
  %26 = zext nneg i32 %21 to i64
  %27 = getelementptr inbounds i32, ptr %10, i64 %26
  store i32 2, ptr %27, align 4, !tbaa !53
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i32 [ %25, %24 ], [ %21, %20 ]
  %30 = and i32 %16, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = add nuw nsw i32 %29, 1
  %34 = zext nneg i32 %29 to i64
  %35 = getelementptr inbounds i32, ptr %10, i64 %34
  store i32 3, ptr %35, align 4, !tbaa !53
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i32 [ %33, %32 ], [ %29, %28 ]
  %38 = and i32 %16, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = add nuw nsw i32 %37, 1
  %42 = zext nneg i32 %37 to i64
  %43 = getelementptr inbounds i32, ptr %10, i64 %42
  store i32 4, ptr %43, align 4, !tbaa !53
  br label %44

44:                                               ; preds = %36, %40
  %45 = phi i32 [ %41, %40 ], [ %37, %36 ]
  %46 = and i32 %16, 16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i32 1, ptr %11, align 16, !tbaa !53
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi i32 [ 1, %48 ], [ 0, %44 ]
  %51 = and i32 %16, 32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = add nuw nsw i32 %50, 1
  %55 = zext nneg i32 %50 to i64
  %56 = getelementptr inbounds i32, ptr %11, i64 %55
  store i32 2, ptr %56, align 4, !tbaa !53
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i32 [ %54, %53 ], [ %50, %49 ]
  %59 = and i32 %16, 64
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = add nuw nsw i32 %58, 1
  %63 = zext nneg i32 %58 to i64
  %64 = getelementptr inbounds i32, ptr %11, i64 %63
  store i32 3, ptr %64, align 4, !tbaa !53
  br label %65

65:                                               ; preds = %61, %57
  %66 = phi i32 [ %62, %61 ], [ %58, %57 ]
  %67 = and i32 %16, 128
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = add nuw nsw i32 %66, 1
  %71 = zext nneg i32 %66 to i64
  %72 = getelementptr inbounds i32, ptr %11, i64 %71
  store i32 4, ptr %72, align 4, !tbaa !53
  br label %73

73:                                               ; preds = %65, %69
  %74 = phi i32 [ %70, %69 ], [ %66, %65 ]
  %75 = getelementptr inbounds %struct.MovieClip, ptr %13, i64 0, i32 3
  %76 = load i32, ptr %75, align 8, !tbaa !168
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %125

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 5
  %80 = load ptr, ptr %79, align 8, !tbaa !159
  %81 = icmp eq ptr %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  tail call void @IMB_anim_index_rebuild(ptr noundef nonnull %80, ptr noundef %1, ptr noundef %2, ptr noundef %3) #10
  br label %83

83:                                               ; preds = %82, %78
  %84 = icmp eq i32 %74, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %83
  %86 = load i16, ptr %1, align 2, !tbaa !169
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %179, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 4
  store i8 1, ptr %89, align 4, !tbaa !170
  br label %179

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.MovieClip, ptr %13, i64 0, i32 15
  %92 = load i32, ptr %91, align 4, !tbaa !171
  %93 = tail call i32 @BLI_system_thread_count() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  call void @BKE_movieclip_get_size(ptr noundef %13, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %9) #10
  %94 = getelementptr inbounds %struct.MovieClip, ptr %13, i64 0, i32 11
  %95 = load i32, ptr %8, align 4, !tbaa !53
  %96 = load i32, ptr %9, align 4, !tbaa !53
  %97 = call ptr @BKE_tracking_distortion_new(ptr noundef nonnull %94, i32 noundef %95, i32 noundef %96) #10
  call void @BKE_tracking_distortion_set_threads(ptr noundef %97, i32 noundef %93) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  %98 = icmp slt i32 %92, 1
  br i1 %98, label %117, label %99

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 3
  %101 = add nsw i32 %92, -1
  %102 = sitofp i32 %101 to float
  br label %103

103:                                              ; preds = %99, %111
  %104 = phi i32 [ 1, %99 ], [ %115, %111 ]
  %105 = load i32, ptr %100, align 8, !tbaa !154
  call void @BKE_movieclip_build_proxy_frame(ptr noundef %13, i32 noundef %105, ptr noundef %97, i32 noundef %104, ptr noundef nonnull %11, i32 noundef %74, i8 noundef zeroext 1) #10
  %106 = load i16, ptr %1, align 2, !tbaa !169
  %107 = icmp ne i16 %106, 0
  %108 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8
  %109 = icmp ne i8 %108, 0
  %110 = select i1 %107, i1 true, i1 %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %103
  store i16 1, ptr %2, align 2, !tbaa !169
  %112 = sitofp i32 %104 to float
  %113 = fadd float %112, -1.000000e+00
  %114 = fdiv float %113, %102
  store float %114, ptr %3, align 4, !tbaa !87
  %115 = add nuw i32 %104, 1
  %116 = icmp eq i32 %104, %92
  br i1 %116, label %117, label %103, !llvm.loop !172

117:                                              ; preds = %111, %103, %90
  %118 = icmp eq ptr %97, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %117
  call void @BKE_tracking_distortion_free(ptr noundef nonnull %97) #10
  br label %120

120:                                              ; preds = %119, %117
  %121 = load i16, ptr %1, align 2, !tbaa !169
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %179, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 4
  store i8 1, ptr %124, align 4, !tbaa !170
  br label %179

125:                                              ; preds = %73
  %126 = load ptr, ptr %0, align 8, !tbaa !150
  %127 = tail call ptr @BLI_task_scheduler_get() #10
  %128 = getelementptr inbounds %struct.Scene, ptr %126, i64 0, i32 22, i32 6
  %129 = load i32, ptr %128, align 4, !tbaa !145
  %130 = getelementptr inbounds %struct.Scene, ptr %126, i64 0, i32 22, i32 7
  %131 = load i32, ptr %130, align 8, !tbaa !146
  %132 = tail call i32 @BLI_task_scheduler_num_threads(ptr noundef %127) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #10
  %133 = icmp ne i32 %74, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  call void @BKE_movieclip_get_size(ptr noundef %13, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  br label %135

135:                                              ; preds = %134, %125
  %136 = getelementptr inbounds %struct.ProxyQueue, ptr %7, i64 0, i32 3
  call void @BLI_spin_init(ptr noundef nonnull %136) #10
  store i32 %129, ptr %7, align 8, !tbaa !175
  %137 = getelementptr inbounds %struct.ProxyQueue, ptr %7, i64 0, i32 1
  store i32 %129, ptr %137, align 4, !tbaa !177
  %138 = getelementptr inbounds %struct.ProxyQueue, ptr %7, i64 0, i32 2
  store i32 %131, ptr %138, align 8, !tbaa !178
  %139 = getelementptr inbounds %struct.ProxyQueue, ptr %7, i64 0, i32 4
  store ptr %1, ptr %139, align 8, !tbaa !179
  %140 = getelementptr inbounds %struct.ProxyQueue, ptr %7, i64 0, i32 5
  store ptr %2, ptr %140, align 8, !tbaa !180
  %141 = getelementptr inbounds %struct.ProxyQueue, ptr %7, i64 0, i32 6
  store ptr %3, ptr %141, align 8, !tbaa !181
  %142 = call ptr @BLI_task_pool_create(ptr noundef %127, ptr noundef nonnull %7) #10
  %143 = load ptr, ptr @MEM_callocN, align 8, !tbaa !56
  %144 = sext i32 %132 to i64
  %145 = mul nsw i64 %144, 48
  %146 = call ptr %143(i64 noundef %145, ptr noundef nonnull @.str.91) #10
  %147 = icmp sgt i32 %132, 0
  br i1 %147, label %148, label %166

148:                                              ; preds = %135
  %149 = getelementptr inbounds %struct.MovieClip, ptr %13, i64 0, i32 11
  %150 = zext nneg i32 %132 to i64
  br label %151

151:                                              ; preds = %148, %163
  %152 = phi i64 [ 0, %148 ], [ %164, %163 ]
  %153 = getelementptr inbounds %struct.ProxyThread, ptr %146, i64 %152
  store ptr %13, ptr %153, align 8, !tbaa !182
  %154 = getelementptr inbounds %struct.ProxyThread, ptr %146, i64 %152, i32 3
  store i32 %45, ptr %154, align 8, !tbaa !184
  %155 = getelementptr inbounds %struct.ProxyThread, ptr %146, i64 %152, i32 2
  store ptr %10, ptr %155, align 8, !tbaa !185
  %156 = getelementptr inbounds %struct.ProxyThread, ptr %146, i64 %152, i32 5
  store i32 %74, ptr %156, align 8, !tbaa !186
  %157 = getelementptr inbounds %struct.ProxyThread, ptr %146, i64 %152, i32 4
  store ptr %11, ptr %157, align 8, !tbaa !187
  br i1 %133, label %158, label %163

158:                                              ; preds = %151
  %159 = load i32, ptr %5, align 4, !tbaa !53
  %160 = load i32, ptr %6, align 4, !tbaa !53
  %161 = call ptr @BKE_tracking_distortion_new(ptr noundef nonnull %149, i32 noundef %159, i32 noundef %160) #10
  %162 = getelementptr inbounds %struct.ProxyThread, ptr %146, i64 %152, i32 1
  store ptr %161, ptr %162, align 8, !tbaa !188
  br label %163

163:                                              ; preds = %158, %151
  call void @BLI_task_pool_push(ptr noundef %142, ptr noundef nonnull @proxy_task_func, ptr noundef nonnull %153, i8 noundef zeroext 0, i32 noundef 0) #10
  %164 = add nuw nsw i64 %152, 1
  %165 = icmp eq i64 %164, %150
  br i1 %165, label %166, label %151, !llvm.loop !189

166:                                              ; preds = %163, %135
  call void @BLI_task_pool_work_and_wait(ptr noundef %142) #10
  call void @BLI_task_pool_free(ptr noundef %142) #10
  %167 = icmp sgt i32 %132, 0
  %168 = select i1 %133, i1 %167, i1 false
  br i1 %168, label %169, label %177

169:                                              ; preds = %166
  %170 = zext i32 %132 to i64
  br label %171

171:                                              ; preds = %169, %171
  %172 = phi i64 [ 0, %169 ], [ %175, %171 ]
  %173 = getelementptr inbounds %struct.ProxyThread, ptr %146, i64 %172, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !188
  call void @BKE_tracking_distortion_free(ptr noundef %174) #10
  %175 = add nuw nsw i64 %172, 1
  %176 = icmp eq i64 %175, %170
  br i1 %176, label %177, label %171, !llvm.loop !190

177:                                              ; preds = %171, %166
  call void @BLI_spin_end(ptr noundef nonnull %136) #10
  %178 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %178(ptr noundef %146) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %179

179:                                              ; preds = %123, %120, %88, %85, %177
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @proxy_endjob(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !153
  %4 = getelementptr inbounds %struct.MovieClip, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !155
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @IMB_close_anim_proxies(ptr noundef nonnull %5) #10
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !159
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ProxyBuildJob, ptr %0, i64 0, i32 4
  %14 = load i8, ptr %13, align 4, !tbaa !170
  %15 = zext i8 %14 to i16
  tail call void @IMB_anim_index_rebuild_finish(ptr noundef nonnull %10, i16 noundef signext %15) #10
  br label %16

16:                                               ; preds = %12, %8
  %17 = load ptr, ptr %2, align 8, !tbaa !153
  tail call void @BKE_movieclip_reload(ptr noundef %17) #10
  %18 = load ptr, ptr %2, align 8, !tbaa !153
  tail call void @WM_main_add_notifier(i32 noundef 338886656, ptr noundef %18) #10
  ret void
}

declare void @WM_jobs_start(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #1

declare void @IMB_anim_index_rebuild(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BLI_system_thread_count() local_unnamed_addr #1

declare void @BKE_movieclip_get_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_distortion_new(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @BKE_tracking_distortion_set_threads(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BKE_movieclip_build_proxy_frame(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @BKE_tracking_distortion_free(ptr noundef) local_unnamed_addr #1

declare ptr @BLI_task_scheduler_get() local_unnamed_addr #1

declare i32 @BLI_task_scheduler_num_threads(ptr noundef) local_unnamed_addr #1

declare void @BLI_spin_init(ptr noundef) local_unnamed_addr #1

declare ptr @BLI_task_pool_create(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_task_pool_push(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @proxy_task_func(ptr noundef %0, ptr nocapture noundef readonly %1, i32 %2) #0 {
  %4 = alloca %struct.MovieClipUser, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = tail call ptr @BLI_task_pool_userdata(ptr noundef %0) #10
  %7 = getelementptr inbounds %struct.ProxyQueue, ptr %6, i64 0, i32 3
  %8 = getelementptr inbounds %struct.ProxyQueue, ptr %6, i64 0, i32 4
  %9 = getelementptr inbounds %struct.ProxyQueue, ptr %6, i64 0, i32 2
  %10 = getelementptr inbounds %struct.ProxyQueue, ptr %6, i64 0, i32 5
  %11 = getelementptr inbounds %struct.ProxyQueue, ptr %6, i64 0, i32 1
  %12 = getelementptr inbounds %struct.ProxyQueue, ptr %6, i64 0, i32 6
  %13 = getelementptr inbounds %struct.ProxyThread, ptr %1, i64 0, i32 2
  %14 = getelementptr inbounds %struct.ProxyThread, ptr %1, i64 0, i32 3
  %15 = getelementptr inbounds %struct.ProxyThread, ptr %1, i64 0, i32 1
  %16 = getelementptr inbounds %struct.ProxyThread, ptr %1, i64 0, i32 4
  %17 = getelementptr inbounds %struct.ProxyThread, ptr %1, i64 0, i32 5
  br label %18

18:                                               ; preds = %75, %3
  %19 = phi i64 [ undef, %3 ], [ %71, %75 ]
  %20 = phi i32 [ undef, %3 ], [ %72, %75 ]
  %21 = load ptr, ptr %1, align 8, !tbaa !182
  call void @BLI_spin_lock(ptr noundef nonnull %7) #10
  %22 = load ptr, ptr %8, align 8, !tbaa !179
  %23 = load i16, ptr %22, align 2, !tbaa !169
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %66

25:                                               ; preds = %18
  %26 = load i32, ptr %6, align 8, !tbaa !175
  %27 = load i32, ptr %9, align 8, !tbaa !178
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %66, label %29

29:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  store i64 0, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #10
  %30 = load i32, ptr %6, align 8, !tbaa !175
  store i32 %30, ptr %4, align 8, !tbaa !191
  call void @BKE_movieclip_filename_for_frame(ptr noundef %21, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %31 = call i32 @BLI_open(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0) #10
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  call void @BLI_spin_unlock(ptr noundef nonnull %7) #10
  br label %61

34:                                               ; preds = %29
  %35 = call i64 @BLI_file_descriptor_size(i32 noundef %31) #10
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 @close(i32 noundef %31) #10
  call void @BLI_spin_unlock(ptr noundef nonnull %7) #10
  br label %61

39:                                               ; preds = %34
  %40 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %41 = call ptr %40(i64 noundef %35, ptr noundef nonnull @.str.93) #10
  %42 = call i64 @read(i32 noundef %31, ptr noundef %41, i64 noundef %35) #10
  %43 = icmp eq i64 %42, %35
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = call i32 @close(i32 noundef %31) #10
  call void @BLI_spin_unlock(ptr noundef nonnull %7) #10
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %46(ptr noundef %41) #10
  br label %61

47:                                               ; preds = %39
  %48 = load i32, ptr %6, align 8, !tbaa !175
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %6, align 8, !tbaa !175
  %50 = call i32 @close(i32 noundef %31) #10
  %51 = load ptr, ptr %10, align 8, !tbaa !180
  store i16 1, ptr %51, align 2, !tbaa !169
  %52 = load i32, ptr %6, align 8, !tbaa !175
  %53 = load i32, ptr %11, align 4, !tbaa !177
  %54 = sub nsw i32 %52, %53
  %55 = sitofp i32 %54 to float
  %56 = load i32, ptr %9, align 8, !tbaa !178
  %57 = sub nsw i32 %56, %53
  %58 = sitofp i32 %57 to float
  %59 = fdiv float %55, %58
  %60 = load ptr, ptr %12, align 8, !tbaa !181
  store float %59, ptr %60, align 4, !tbaa !87
  br label %61

61:                                               ; preds = %47, %44, %37, %33
  %62 = phi i64 [ %19, %33 ], [ %19, %37 ], [ %35, %47 ], [ %19, %44 ]
  %63 = phi i32 [ %20, %33 ], [ %20, %37 ], [ %48, %47 ], [ %20, %44 ]
  %64 = phi ptr [ null, %33 ], [ null, %37 ], [ %41, %47 ], [ %41, %44 ]
  %65 = phi i1 [ false, %33 ], [ false, %37 ], [ true, %47 ], [ false, %44 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br i1 %65, label %66, label %70

66:                                               ; preds = %61, %25, %18
  %67 = phi i64 [ %19, %25 ], [ %62, %61 ], [ %19, %18 ]
  %68 = phi i32 [ %20, %25 ], [ %63, %61 ], [ %20, %18 ]
  %69 = phi ptr [ null, %25 ], [ %64, %61 ], [ null, %18 ]
  call void @BLI_spin_unlock(ptr noundef nonnull %7) #10
  br label %70

70:                                               ; preds = %61, %66
  %71 = phi i64 [ %67, %66 ], [ %62, %61 ]
  %72 = phi i32 [ %68, %66 ], [ %63, %61 ]
  %73 = phi ptr [ %69, %66 ], [ null, %61 ]
  %74 = icmp eq ptr %73, null
  br i1 %74, label %87, label %75

75:                                               ; preds = %70
  %76 = load ptr, ptr %1, align 8, !tbaa !182
  %77 = getelementptr inbounds %struct.MovieClip, ptr %76, i64 0, i32 18
  %78 = call ptr @IMB_ibImageFromMemory(ptr noundef nonnull %73, i64 noundef %71, i32 noundef 8321, ptr noundef nonnull %77, ptr noundef nonnull @.str.92) #10
  %79 = load ptr, ptr %1, align 8, !tbaa !182
  %80 = load ptr, ptr %13, align 8, !tbaa !185
  %81 = load i32, ptr %14, align 8, !tbaa !184
  call void @BKE_movieclip_build_proxy_frame_for_ibuf(ptr noundef %79, ptr noundef %78, ptr noundef null, i32 noundef %72, ptr noundef %80, i32 noundef %81, i8 noundef zeroext 0) #10
  %82 = load ptr, ptr %1, align 8, !tbaa !182
  %83 = load ptr, ptr %15, align 8, !tbaa !188
  %84 = load ptr, ptr %16, align 8, !tbaa !187
  %85 = load i32, ptr %17, align 8, !tbaa !186
  call void @BKE_movieclip_build_proxy_frame_for_ibuf(ptr noundef %82, ptr noundef %78, ptr noundef %83, i32 noundef %72, ptr noundef %84, i32 noundef %85, i8 noundef zeroext 1) #10
  call void @IMB_freeImBuf(ptr noundef %78) #10
  %86 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %86(ptr noundef nonnull %73) #10
  br label %18, !llvm.loop !192

87:                                               ; preds = %70
  ret void
}

declare void @BLI_task_pool_work_and_wait(ptr noundef) local_unnamed_addr #1

declare void @BLI_task_pool_free(ptr noundef) local_unnamed_addr #1

declare void @BLI_spin_end(ptr noundef) local_unnamed_addr #1

declare ptr @BLI_task_pool_userdata(ptr noundef) local_unnamed_addr #1

declare ptr @IMB_ibImageFromMemory(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_movieclip_build_proxy_frame_for_ibuf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #1

declare void @BLI_spin_lock(ptr noundef) local_unnamed_addr #1

declare void @BKE_movieclip_filename_for_frame(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BLI_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @BLI_spin_unlock(ptr noundef) local_unnamed_addr #1

declare i64 @BLI_file_descriptor_size(i32 noundef) local_unnamed_addr #1

declare i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

declare void @IMB_close_anim_proxies(ptr noundef) local_unnamed_addr #1

declare void @IMB_anim_index_rebuild_finish(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_event_ndof_pan_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @clip_start_prefetch_job(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @WM_jobs_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BKE_movieclip_get_duration(ptr noundef) local_unnamed_addr #1

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }

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
!45 = !{!35, !36, i64 48}
!46 = !{!35, !36, i64 56}
!47 = !{!35, !41, i64 184}
!48 = !{!49, !36, i64 112}
!49 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!50 = !{!51, !36, i64 0}
!51 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !52, i64 2096, !52, i64 2100, !37, i64 2104, !52, i64 2108, !52, i64 2112, !37, i64 2116}
!52 = !{!"int", !37, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!49, !36, i64 96}
!55 = !{!49, !36, i64 120}
!56 = !{!36, !36, i64 0}
!57 = !{!58, !36, i64 24}
!58 = !{!"PropertyPointerRNA", !59, i64 0, !36, i64 24}
!59 = !{!"PointerRNA", !60, i64 0, !36, i64 8, !36, i64 16}
!60 = !{!"", !36, i64 0}
!61 = !{!62, !52, i64 100}
!62 = !{!"MovieClip", !63, i64 0, !36, i64 120, !37, i64 128, !52, i64 1152, !52, i64 1156, !37, i64 1160, !64, i64 1168, !64, i64 1172, !36, i64 1176, !36, i64 1184, !36, i64 1192, !65, i64 1200, !36, i64 1528, !71, i64 1536, !52, i64 2312, !52, i64 2316, !52, i64 2320, !52, i64 2324, !72, i64 2328}
!63 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !52, i64 100, !52, i64 104, !52, i64 108, !36, i64 112}
!64 = !{!"float", !37, i64 0}
!65 = !{!"MovieTracking", !66, i64 0, !67, i64 72, !39, i64 128, !39, i64 144, !68, i64 160, !69, i64 184, !36, i64 232, !36, i64 240, !39, i64 248, !52, i64 264, !52, i64 268, !36, i64 272, !70, i64 280}
!66 = !{!"MovieTrackingSettings", !52, i64 0, !41, i64 4, !41, i64 6, !64, i64 8, !41, i64 12, !41, i64 14, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !64, i64 24, !41, i64 28, !41, i64 30, !52, i64 32, !52, i64 36, !52, i64 40, !41, i64 44, !41, i64 46, !64, i64 48, !52, i64 52, !52, i64 56, !64, i64 60, !64, i64 64, !52, i64 68}
!67 = !{!"MovieTrackingCamera", !36, i64 0, !41, i64 8, !41, i64 10, !64, i64 12, !64, i64 16, !64, i64 20, !41, i64 24, !41, i64 26, !37, i64 28, !64, i64 36, !64, i64 40, !64, i64 44, !64, i64 48, !64, i64 52}
!68 = !{!"MovieTrackingReconstruction", !52, i64 0, !64, i64 4, !52, i64 8, !52, i64 12, !36, i64 16}
!69 = !{!"MovieTrackingStabilization", !52, i64 0, !52, i64 4, !52, i64 8, !64, i64 12, !36, i64 16, !64, i64 24, !64, i64 28, !64, i64 32, !52, i64 36, !52, i64 40, !64, i64 44}
!70 = !{!"MovieTrackingDopesheet", !52, i64 0, !41, i64 4, !41, i64 6, !39, i64 8, !39, i64 24, !52, i64 40, !52, i64 44}
!71 = !{!"MovieClipProxy", !37, i64 0, !41, i64 768, !41, i64 770, !41, i64 772, !41, i64 774}
!72 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!73 = !{i32 2, i32 5}
!74 = !{!75, !52, i64 8}
!75 = !{!"UserDef", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !52, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !52, i64 8484, !52, i64 8488, !52, i64 8492, !41, i64 8496, !41, i64 8498, !52, i64 8500, !52, i64 8504, !52, i64 8508, !52, i64 8512, !52, i64 8516, !52, i64 8520, !52, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !52, i64 8912, !52, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !64, i64 8956, !64, i64 8960, !52, i64 8964, !41, i64 8968, !41, i64 8970, !64, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !76, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !52, i64 10896, !52, i64 10900, !64, i64 10904, !64, i64 10908, !52, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !77, i64 10928}
!76 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!77 = !{!"WalkNavigation", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !64, i64 16, !64, i64 20, !41, i64 24, !37, i64 26}
!78 = !{!35, !36, i64 64}
!79 = !{!35, !36, i64 72}
!80 = !{!35, !36, i64 88}
!81 = !{!82, !52, i64 208}
!82 = !{!"SpaceClip", !36, i64 0, !36, i64 8, !39, i64 16, !52, i64 32, !64, i64 36, !64, i64 40, !64, i64 44, !64, i64 48, !64, i64 52, !83, i64 56, !36, i64 64, !84, i64 72, !52, i64 208, !41, i64 212, !41, i64 214, !52, i64 216, !37, i64 220, !64, i64 228, !64, i64 232, !52, i64 236, !37, i64 240, !37, i64 304, !52, i64 368, !41, i64 372, !41, i64 374, !52, i64 376, !52, i64 380, !37, i64 384, !86, i64 392}
!83 = !{!"MovieClipUser", !52, i64 0, !41, i64 4, !41, i64 6}
!84 = !{!"MovieClipScopes", !41, i64 0, !41, i64 2, !52, i64 4, !52, i64 8, !52, i64 12, !85, i64 16, !36, i64 80, !36, i64 88, !37, i64 96, !41, i64 104, !41, i64 106, !52, i64 108, !36, i64 112, !36, i64 120, !37, i64 128}
!85 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !52, i64 56, !52, i64 60}
!86 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!87 = !{!64, !64, i64 0}
!88 = !{!82, !64, i64 44}
!89 = !{!82, !64, i64 36}
!90 = !{!91, !41, i64 16}
!91 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !52, i64 20, !52, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !52, i64 48, !52, i64 52, !92, i64 56, !52, i64 64, !52, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !52, i64 108, !36, i64 112}
!92 = !{!"double", !37, i64 0}
!93 = !{!91, !52, i64 48}
!94 = !{!91, !52, i64 20}
!95 = !{!82, !64, i64 52}
!96 = !{!91, !52, i64 52}
!97 = !{!91, !52, i64 24}
!98 = !{!99, !64, i64 0}
!99 = !{!"ViewPanData", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !64, i64 16, !64, i64 20, !52, i64 24, !36, i64 32}
!100 = !{!99, !64, i64 4}
!101 = !{!99, !36, i64 32}
!102 = !{!99, !52, i64 24}
!103 = !{!91, !41, i64 18}
!104 = !{!75, !52, i64 8484}
!105 = !{!75, !41, i64 8498}
!106 = !{!107, !36, i64 24}
!107 = !{!"ViewZoomData", !64, i64 0, !64, i64 4, !64, i64 8, !52, i64 12, !37, i64 16, !36, i64 24, !92, i64 32}
!108 = !{!107, !92, i64 32}
!109 = !{!107, !64, i64 0}
!110 = !{!107, !64, i64 4}
!111 = !{!107, !64, i64 8}
!112 = !{!107, !52, i64 12}
!113 = !{!91, !36, i64 112}
!114 = !{!115, !36, i64 16}
!115 = !{!"wmTimer", !36, i64 0, !36, i64 8, !36, i64 16, !92, i64 24, !52, i64 32, !36, i64 40, !92, i64 48, !92, i64 56, !92, i64 64, !92, i64 72, !92, i64 80, !52, i64 88}
!116 = !{!82, !64, i64 40}
!117 = !{!118, !52, i64 4}
!118 = !{!"rcti", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12}
!119 = !{!118, !52, i64 0}
!120 = !{!118, !52, i64 12}
!121 = !{!118, !52, i64 8}
!122 = !{!82, !64, i64 48}
!123 = !{!124, !52, i64 680}
!124 = !{!"Scene", !63, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !52, i64 232, !52, i64 236, !52, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !125, i64 280, !133, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !52, i64 4380, !39, i64 4384, !134, i64 4400, !135, i64 4416, !138, i64 4600, !36, i64 4608, !139, i64 4616, !36, i64 4640, !140, i64 4648, !140, i64 4656, !127, i64 4664, !128, i64 4824, !72, i64 4888, !36, i64 4952}
!125 = !{!"RenderData", !126, i64 0, !36, i64 248, !36, i64 256, !129, i64 264, !130, i64 328, !52, i64 400, !52, i64 404, !52, i64 408, !64, i64 412, !52, i64 416, !52, i64 420, !52, i64 424, !52, i64 428, !41, i64 432, !41, i64 434, !64, i64 436, !64, i64 440, !64, i64 444, !64, i64 448, !64, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !52, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !52, i64 484, !52, i64 488, !41, i64 492, !41, i64 494, !52, i64 496, !52, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !52, i64 516, !52, i64 520, !52, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !131, i64 544, !131, i64 560, !118, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !64, i64 612, !64, i64 616, !64, i64 620, !64, i64 624, !52, i64 628, !64, i64 632, !64, i64 636, !64, i64 640, !64, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !64, i64 660, !64, i64 664, !41, i64 668, !41, i64 670, !64, i64 672, !64, i64 676, !37, i64 680, !52, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !52, i64 2520, !41, i64 2524, !41, i64 2526, !64, i64 2528, !64, i64 2532, !41, i64 2536, !41, i64 2538, !64, i64 2540, !41, i64 2544, !41, i64 2546, !52, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !64, i64 2560, !64, i64 2564, !36, i64 2568, !52, i64 2576, !64, i64 2580, !37, i64 2584, !132, i64 2616, !52, i64 3976, !52, i64 3980}
!126 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !64, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !127, i64 24, !128, i64 184}
!127 = !{!"ColorManagedViewSettings", !52, i64 0, !52, i64 4, !37, i64 8, !37, i64 72, !64, i64 136, !64, i64 140, !36, i64 144, !36, i64 152}
!128 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!129 = !{!"QuicktimeCodecSettings", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !52, i64 32, !52, i64 36, !52, i64 40, !52, i64 44, !41, i64 48, !41, i64 50, !52, i64 52, !52, i64 56, !52, i64 60}
!130 = !{!"FFMpegCodecData", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !64, i64 32, !52, i64 36, !52, i64 40, !52, i64 44, !52, i64 48, !52, i64 52, !52, i64 56, !52, i64 60, !36, i64 64}
!131 = !{!"rctf", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12}
!132 = !{!"BakeData", !126, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !64, i64 1280, !64, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!133 = !{!"AudioData", !52, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !52, i64 16, !41, i64 20, !41, i64 22, !64, i64 24, !64, i64 28}
!134 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!135 = !{!"GameData", !134, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !136, i64 40, !41, i64 64, !41, i64 66, !64, i64 68, !137, i64 72, !64, i64 128, !64, i64 132, !52, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !64, i64 164, !64, i64 168, !64, i64 172, !64, i64 176, !64, i64 180}
!136 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !64, i64 8, !64, i64 12, !36, i64 16}
!137 = !{!"RecastData", !64, i64 0, !64, i64 4, !64, i64 8, !64, i64 12, !64, i64 16, !64, i64 20, !64, i64 24, !64, i64 28, !64, i64 32, !64, i64 36, !52, i64 40, !64, i64 44, !64, i64 48, !41, i64 52, !41, i64 54}
!138 = !{!"UnitSettings", !64, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!139 = !{!"PhysicsSettings", !37, i64 0, !52, i64 12, !52, i64 16, !52, i64 20}
!140 = !{!"long", !37, i64 0}
!141 = !{!124, !64, i64 692}
!142 = !{!143, !41, i64 214}
!143 = !{!"ARegion", !36, i64 0, !36, i64 8, !144, i64 16, !118, i64 176, !118, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !64, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!144 = !{!"View2D", !131, i64 0, !131, i64 16, !118, i64 32, !118, i64 48, !118, i64 64, !37, i64 80, !37, i64 88, !64, i64 96, !64, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !52, i64 136, !52, i64 140, !36, i64 144, !36, i64 152}
!145 = !{!124, !52, i64 684}
!146 = !{!124, !52, i64 688}
!147 = !{!143, !41, i64 208}
!148 = !{!51, !37, i64 2090}
!149 = !{!62, !52, i64 2312}
!150 = !{!151, !36, i64 0}
!151 = !{!"ProxyBuildJob", !36, i64 0, !36, i64 8, !36, i64 16, !52, i64 24, !37, i64 28, !36, i64 32}
!152 = !{!151, !36, i64 8}
!153 = !{!151, !36, i64 16}
!154 = !{!151, !52, i64 24}
!155 = !{!62, !36, i64 1176}
!156 = !{!62, !41, i64 2310}
!157 = !{!62, !41, i64 2308}
!158 = !{!62, !41, i64 2306}
!159 = !{!151, !36, i64 32}
!160 = !{!51, !37, i64 2080}
!161 = !{!82, !41, i64 212}
!162 = !{!163, !64, i64 24}
!163 = !{!"wmNDOFMotionData", !37, i64 0, !37, i64 12, !64, i64 24, !52, i64 28}
!164 = !{!62, !52, i64 2320}
!165 = !{!82, !52, i64 376}
!166 = !{!167, !36, i64 88}
!167 = !{!"wmOperatorTypeMacro", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88}
!168 = !{!62, !52, i64 1152}
!169 = !{!41, !41, i64 0}
!170 = !{!151, !37, i64 28}
!171 = !{!62, !52, i64 2316}
!172 = distinct !{!172, !173, !174}
!173 = !{!"llvm.loop.mustprogress"}
!174 = !{!"llvm.loop.unroll.disable"}
!175 = !{!176, !52, i64 0}
!176 = !{!"ProxyQueue", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !36, i64 16, !36, i64 24, !36, i64 32}
!177 = !{!176, !52, i64 4}
!178 = !{!176, !52, i64 8}
!179 = !{!176, !36, i64 16}
!180 = !{!176, !36, i64 24}
!181 = !{!176, !36, i64 32}
!182 = !{!183, !36, i64 0}
!183 = !{!"ProxyThread", !36, i64 0, !36, i64 8, !36, i64 16, !52, i64 24, !36, i64 32, !52, i64 40}
!184 = !{!183, !52, i64 24}
!185 = !{!183, !36, i64 16}
!186 = !{!183, !52, i64 40}
!187 = !{!183, !36, i64 32}
!188 = !{!183, !36, i64 8}
!189 = distinct !{!189, !173, !174}
!190 = distinct !{!190, !173, !174}
!191 = !{!83, !52, i64 0}
!192 = distinct !{!192, !173, !174}
