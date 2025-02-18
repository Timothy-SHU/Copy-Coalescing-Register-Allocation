; ModuleID = 'blender/source/blender/editors/space_clip/tracking_ops.c'
source_filename = "blender/source/blender/editors/space_clip/tracking_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
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
%struct.MovieTrackingPlaneTrack = type { ptr, ptr, [64 x i8], ptr, i32, i32, ptr, i32, i32, ptr, float, i32 }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.SlideMarkerData = type { i16, i16, ptr, ptr, [2 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, [2 x float], i8, i8, [2 x float], [2 x float], [2 x float], [2 x float], [4 x [2 x float]], ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
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
%struct.TrackMarkersJob = type { ptr, i32, i32, i32, i32, ptr, float, ptr, ptr, ptr }
%struct.SolveCameraJob = type { ptr, ptr, %struct.MovieClipUser, ptr, [256 x i8], ptr }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.MovieTrackingObject = type { ptr, ptr, [64 x i8], i32, float, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, i32, i32 }
%struct.bGPdata = type { %struct.ID, %struct.ListBase, i32, i16, i16, ptr }
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }
%struct.SlidePlaneMarkerData = type { i32, ptr, ptr, i32, i32, i32, ptr, [2 x i32], [2 x float], [2 x float], i8 }
%struct.MovieTrackingPlaneMarker = type { [4 x [2 x float]], i32, i32 }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bObjectSolverConstraint = type { ptr, i32, i32, [64 x i8], [4 x [4 x float]], ptr }
%struct.MovieReconstructedCamera = type { i32, float, [4 x [4 x float]] }

@.str = private unnamed_addr constant [11 x i8] c"Add Marker\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"CLIP_OT_add_marker\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Place new marker at specified location\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Location of marker on frame\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Add Marker at Click\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"CLIP_OT_add_marker_at_click\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Place new marker at the desired (clicked) position\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Delete Track\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"CLIP_OT_delete_track\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Delete selected tracks\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Delete Marker\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"CLIP_OT_delete_marker\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"Delete marker for current frame from selected tracks\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Slide Marker\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"Slide marker areas\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"CLIP_OT_slide_marker\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.20 = private unnamed_addr constant [73 x i8] c"Offset in floating point units, 1.0 is the width and height of the image\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"Track Markers\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"Track selected markers\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"CLIP_OT_track_markers\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"backwards\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"Backwards\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"Do backwards tracking\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"Track Sequence\00", align 1
@.str.29 = private unnamed_addr constant [60 x i8] c"Track marker during image sequence rather than single image\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"clip\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"Movie Clip\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"Movie Clip to be tracked\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"Refine Markers\00", align 1
@.str.34 = private unnamed_addr constant [97 x i8] c"Refine selected markers positions by running the tracker from track's reference to current frame\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"CLIP_OT_refine_markers\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"Solve Camera\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"Solve camera motion from tracks\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"CLIP_OT_solve_camera\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"Clear Solution\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"Clear all calculated data\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"CLIP_OT_clear_solution\00", align 1
@CLIP_OT_clear_track_path.clear_path_actions = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.42, i32 0, ptr @.str.43, ptr @.str.44 }, %struct.EnumPropertyItem { i32 1, ptr @.str.45, i32 0, ptr @.str.46, ptr @.str.47 }, %struct.EnumPropertyItem { i32 2, ptr @.str.48, i32 0, ptr @.str.49, ptr @.str.50 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.42 = private unnamed_addr constant [5 x i8] c"UPTO\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"Clear up-to\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"Clear path up to current frame\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"REMAINED\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"Clear remained\00", align 1
@.str.47 = private unnamed_addr constant [47 x i8] c"Clear path at remaining frames (after current)\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"Clear all\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"Clear the whole path\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"Clear Track Path\00", align 1
@.str.52 = private unnamed_addr constant [68 x i8] c"Clear tracks after/before current position or clear the whole track\00", align 1
@.str.53 = private unnamed_addr constant [25 x i8] c"CLIP_OT_clear_track_path\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"Clear action to execute\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"clear_active\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"Clear Active\00", align 1
@.str.59 = private unnamed_addr constant [55 x i8] c"Clear active track only instead of all selected tracks\00", align 1
@CLIP_OT_disable_markers.actions_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.60, i32 0, ptr @.str.61, ptr @.str.62 }, %struct.EnumPropertyItem { i32 1, ptr @.str.63, i32 0, ptr @.str.64, ptr @.str.65 }, %struct.EnumPropertyItem { i32 2, ptr @.str.66, i32 0, ptr @.str.67, ptr @.str.68 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.60 = private unnamed_addr constant [8 x i8] c"DISABLE\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"Disable\00", align 1
@.str.62 = private unnamed_addr constant [25 x i8] c"Disable selected markers\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"ENABLE\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"Enable\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"Enable selected markers\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"TOGGLE\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"Toggle\00", align 1
@.str.68 = private unnamed_addr constant [42 x i8] c"Toggle disabled flag for selected markers\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"Disable Markers\00", align 1
@.str.70 = private unnamed_addr constant [32 x i8] c"Disable/enable selected markers\00", align 1
@.str.71 = private unnamed_addr constant [24 x i8] c"CLIP_OT_disable_markers\00", align 1
@.str.72 = private unnamed_addr constant [26 x i8] c"Disable action to execute\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"Set Origin\00", align 1
@.str.74 = private unnamed_addr constant [84 x i8] c"Set active marker as origin by moving camera (or its parent if present) in 3D space\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"CLIP_OT_set_origin\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"use_median\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"Use Median\00", align 1
@.str.78 = private unnamed_addr constant [47 x i8] c"Set origin to median point of selected bundles\00", align 1
@CLIP_OT_set_plane.plane_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.79, i32 0, ptr @.str.80, ptr @.str.81 }, %struct.EnumPropertyItem { i32 1, ptr @.str.82, i32 0, ptr @.str.83, ptr @.str.84 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.79 = private unnamed_addr constant [6 x i8] c"FLOOR\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"Floor\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"Set floor plane\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"WALL\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"Wall\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"Set wall plane\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"Set Plane\00", align 1
@.str.86 = private unnamed_addr constant [94 x i8] c"Set plane based on 3 selected bundles by moving camera (or its parent if present) in 3D space\00", align 1
@.str.87 = private unnamed_addr constant [18 x i8] c"CLIP_OT_set_plane\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"plane\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"Plane\00", align 1
@.str.90 = private unnamed_addr constant [33 x i8] c"Plane to be used for orientation\00", align 1
@CLIP_OT_set_axis.axis_actions = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.91, i32 0, ptr @.str.91, ptr @.str.92 }, %struct.EnumPropertyItem { i32 1, ptr @.str.93, i32 0, ptr @.str.93, ptr @.str.94 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.91 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.92 = private unnamed_addr constant [26 x i8] c"Align bundle align X axis\00", align 1
@.str.93 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.94 = private unnamed_addr constant [26 x i8] c"Align bundle align Y axis\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"Set Axis\00", align 1
@.str.96 = private unnamed_addr constant [143 x i8] c"Set direction of scene axis rotating camera (or its parent if present) and assume selected track lies on real axis, joining it with the origin\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"CLIP_OT_set_axis\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"Axis\00", align 1
@.str.100 = private unnamed_addr constant [34 x i8] c"Axis to use to align bundle along\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"Set Scale\00", align 1
@.str.102 = private unnamed_addr constant [64 x i8] c"Set scale of scene by scaling camera (or its parent if present)\00", align 1
@.str.103 = private unnamed_addr constant [18 x i8] c"CLIP_OT_set_scale\00", align 1
@.str.104 = private unnamed_addr constant [9 x i8] c"distance\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"Distance\00", align 1
@.str.106 = private unnamed_addr constant [33 x i8] c"Distance between selected tracks\00", align 1
@.str.107 = private unnamed_addr constant [19 x i8] c"Set Solution Scale\00", align 1
@.str.108 = private unnamed_addr constant [69 x i8] c"Set object solution scale using distance between two selected tracks\00", align 1
@.str.109 = private unnamed_addr constant [27 x i8] c"CLIP_OT_set_solution_scale\00", align 1
@.str.110 = private unnamed_addr constant [21 x i8] c"Apply Solution Scale\00", align 1
@.str.111 = private unnamed_addr constant [90 x i8] c"Apply scale on solution itself to make distance between selected tracks equals to desired\00", align 1
@.str.112 = private unnamed_addr constant [29 x i8] c"CLIP_OT_apply_solution_scale\00", align 1
@.str.113 = private unnamed_addr constant [24 x i8] c"Set Principal to Center\00", align 1
@.str.114 = private unnamed_addr constant [40 x i8] c"Set optical center to center of footage\00", align 1
@.str.115 = private unnamed_addr constant [29 x i8] c"CLIP_OT_set_center_principal\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"Hide Tracks\00", align 1
@.str.117 = private unnamed_addr constant [21 x i8] c"Hide selected tracks\00", align 1
@.str.118 = private unnamed_addr constant [20 x i8] c"CLIP_OT_hide_tracks\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"unselected\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"Unselected\00", align 1
@.str.121 = private unnamed_addr constant [23 x i8] c"Hide unselected tracks\00", align 1
@.str.122 = private unnamed_addr constant [18 x i8] c"Hide Tracks Clear\00", align 1
@.str.123 = private unnamed_addr constant [27 x i8] c"Clear hide selected tracks\00", align 1
@.str.124 = private unnamed_addr constant [26 x i8] c"CLIP_OT_hide_tracks_clear\00", align 1
@CLIP_OT_detect_features.placement_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.125, i32 0, ptr @.str.126, ptr @.str.127 }, %struct.EnumPropertyItem { i32 1, ptr @.str.128, i32 0, ptr @.str.129, ptr @.str.130 }, %struct.EnumPropertyItem { i32 2, ptr @.str.131, i32 0, ptr @.str.132, ptr @.str.133 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.125 = private unnamed_addr constant [6 x i8] c"FRAME\00", align 1
@.str.126 = private unnamed_addr constant [12 x i8] c"Whole Frame\00", align 1
@.str.127 = private unnamed_addr constant [37 x i8] c"Place markers across the whole frame\00", align 1
@.str.128 = private unnamed_addr constant [15 x i8] c"INSIDE_GPENCIL\00", align 1
@.str.129 = private unnamed_addr constant [21 x i8] c"Inside grease pencil\00", align 1
@.str.130 = private unnamed_addr constant [60 x i8] c"Place markers only inside areas outlined with grease pencil\00", align 1
@.str.131 = private unnamed_addr constant [16 x i8] c"OUTSIDE_GPENCIL\00", align 1
@.str.132 = private unnamed_addr constant [22 x i8] c"Outside grease pencil\00", align 1
@.str.133 = private unnamed_addr constant [61 x i8] c"Place markers only outside areas outlined with grease pencil\00", align 1
@.str.134 = private unnamed_addr constant [16 x i8] c"Detect Features\00", align 1
@.str.135 = private unnamed_addr constant [57 x i8] c"Automatically detect features and place markers to track\00", align 1
@.str.136 = private unnamed_addr constant [24 x i8] c"CLIP_OT_detect_features\00", align 1
@.str.137 = private unnamed_addr constant [10 x i8] c"placement\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"Placement\00", align 1
@.str.139 = private unnamed_addr constant [32 x i8] c"Placement for detected features\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"margin\00", align 1
@.str.141 = private unnamed_addr constant [7 x i8] c"Margin\00", align 1
@.str.142 = private unnamed_addr constant [77 x i8] c"Only features further than margin pixels from the image edges are considered\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.144 = private unnamed_addr constant [10 x i8] c"Threshold\00", align 1
@.str.145 = private unnamed_addr constant [61 x i8] c"Threshold level to consider feature good enough for tracking\00", align 1
@.str.146 = private unnamed_addr constant [13 x i8] c"min_distance\00", align 1
@.str.147 = private unnamed_addr constant [47 x i8] c"Minimal distance accepted between two features\00", align 1
@CLIP_OT_frame_jump.position_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.148, i32 0, ptr @.str.149, ptr @.str.150 }, %struct.EnumPropertyItem { i32 1, ptr @.str.151, i32 0, ptr @.str.152, ptr @.str.153 }, %struct.EnumPropertyItem { i32 2, ptr @.str.154, i32 0, ptr @.str.155, ptr @.str.156 }, %struct.EnumPropertyItem { i32 2, ptr @.str.157, i32 0, ptr @.str.158, ptr @.str.159 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.148 = private unnamed_addr constant [10 x i8] c"PATHSTART\00", align 1
@.str.149 = private unnamed_addr constant [11 x i8] c"Path Start\00", align 1
@.str.150 = private unnamed_addr constant [30 x i8] c"Jump to start of current path\00", align 1
@.str.151 = private unnamed_addr constant [8 x i8] c"PATHEND\00", align 1
@.str.152 = private unnamed_addr constant [9 x i8] c"Path End\00", align 1
@.str.153 = private unnamed_addr constant [28 x i8] c"Jump to end of current path\00", align 1
@.str.154 = private unnamed_addr constant [11 x i8] c"FAILEDPREV\00", align 1
@.str.155 = private unnamed_addr constant [16 x i8] c"Previous Failed\00", align 1
@.str.156 = private unnamed_addr constant [30 x i8] c"Jump to previous failed frame\00", align 1
@.str.157 = private unnamed_addr constant [9 x i8] c"FAILNEXT\00", align 1
@.str.158 = private unnamed_addr constant [12 x i8] c"Next Failed\00", align 1
@.str.159 = private unnamed_addr constant [26 x i8] c"Jump to next failed frame\00", align 1
@.str.160 = private unnamed_addr constant [14 x i8] c"Jump to Frame\00", align 1
@.str.161 = private unnamed_addr constant [22 x i8] c"Jump to special frame\00", align 1
@.str.162 = private unnamed_addr constant [19 x i8] c"CLIP_OT_frame_jump\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"position\00", align 1
@.str.164 = private unnamed_addr constant [9 x i8] c"Position\00", align 1
@.str.165 = private unnamed_addr constant [20 x i8] c"Position to jump to\00", align 1
@.str.166 = private unnamed_addr constant [12 x i8] c"Join Tracks\00", align 1
@.str.167 = private unnamed_addr constant [21 x i8] c"Join selected tracks\00", align 1
@.str.168 = private unnamed_addr constant [20 x i8] c"CLIP_OT_join_tracks\00", align 1
@CLIP_OT_lock_tracks.actions_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.169, i32 0, ptr @.str.170, ptr @.str.171 }, %struct.EnumPropertyItem { i32 1, ptr @.str.172, i32 0, ptr @.str.173, ptr @.str.174 }, %struct.EnumPropertyItem { i32 2, ptr @.str.66, i32 0, ptr @.str.67, ptr @.str.175 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.169 = private unnamed_addr constant [5 x i8] c"LOCK\00", align 1
@.str.170 = private unnamed_addr constant [5 x i8] c"Lock\00", align 1
@.str.171 = private unnamed_addr constant [21 x i8] c"Lock selected tracks\00", align 1
@.str.172 = private unnamed_addr constant [7 x i8] c"UNLOCK\00", align 1
@.str.173 = private unnamed_addr constant [7 x i8] c"Unlock\00", align 1
@.str.174 = private unnamed_addr constant [23 x i8] c"Unlock selected tracks\00", align 1
@.str.175 = private unnamed_addr constant [39 x i8] c"Toggle locked flag for selected tracks\00", align 1
@.str.176 = private unnamed_addr constant [12 x i8] c"Lock Tracks\00", align 1
@.str.177 = private unnamed_addr constant [28 x i8] c"Lock/unlock selected tracks\00", align 1
@.str.178 = private unnamed_addr constant [20 x i8] c"CLIP_OT_lock_tracks\00", align 1
@.str.179 = private unnamed_addr constant [23 x i8] c"Lock action to execute\00", align 1
@CLIP_OT_set_solver_keyframe.keyframe_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.180, i32 0, ptr @.str.181, ptr @.str.182 }, %struct.EnumPropertyItem { i32 1, ptr @.str.183, i32 0, ptr @.str.184, ptr @.str.182 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.180 = private unnamed_addr constant [11 x i8] c"KEYFRAME_A\00", align 1
@.str.181 = private unnamed_addr constant [11 x i8] c"Keyframe A\00", align 1
@.str.182 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.183 = private unnamed_addr constant [11 x i8] c"KEYFRAME_B\00", align 1
@.str.184 = private unnamed_addr constant [11 x i8] c"Keyframe B\00", align 1
@.str.185 = private unnamed_addr constant [20 x i8] c"Set Solver Keyframe\00", align 1
@.str.186 = private unnamed_addr constant [28 x i8] c"Set keyframe used by solver\00", align 1
@.str.187 = private unnamed_addr constant [28 x i8] c"CLIP_OT_set_solver_keyframe\00", align 1
@.str.188 = private unnamed_addr constant [9 x i8] c"keyframe\00", align 1
@.str.189 = private unnamed_addr constant [9 x i8] c"Keyframe\00", align 1
@.str.190 = private unnamed_addr constant [16 x i8] c"Keyframe to set\00", align 1
@.str.191 = private unnamed_addr constant [11 x i8] c"Copy Color\00", align 1
@.str.192 = private unnamed_addr constant [34 x i8] c"Copy color to all selected tracks\00", align 1
@.str.193 = private unnamed_addr constant [25 x i8] c"CLIP_OT_track_copy_color\00", align 1
@.str.194 = private unnamed_addr constant [25 x i8] c"Add Stabilization Tracks\00", align 1
@.str.195 = private unnamed_addr constant [45 x i8] c"Add selected tracks to 2D stabilization tool\00", align 1
@.str.196 = private unnamed_addr constant [25 x i8] c"CLIP_OT_stabilize_2d_add\00", align 1
@.str.197 = private unnamed_addr constant [27 x i8] c"Remove Stabilization Track\00", align 1
@.str.198 = private unnamed_addr constant [41 x i8] c"Remove selected track from stabilization\00", align 1
@.str.199 = private unnamed_addr constant [28 x i8] c"CLIP_OT_stabilize_2d_remove\00", align 1
@.str.200 = private unnamed_addr constant [28 x i8] c"Select Stabilization Tracks\00", align 1
@.str.201 = private unnamed_addr constant [47 x i8] c"Select tracks which are used for stabilization\00", align 1
@.str.202 = private unnamed_addr constant [28 x i8] c"CLIP_OT_stabilize_2d_select\00", align 1
@.str.203 = private unnamed_addr constant [19 x i8] c"Set Rotation Track\00", align 1
@.str.204 = private unnamed_addr constant [68 x i8] c"Use active track to compensate rotation when doing 2D stabilization\00", align 1
@.str.205 = private unnamed_addr constant [34 x i8] c"CLIP_OT_stabilize_2d_set_rotation\00", align 1
@CLIP_OT_clean_tracks.actions_items = internal global [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.206, i32 0, ptr @.str.207, ptr @.str.208 }, %struct.EnumPropertyItem { i32 1, ptr @.str.209, i32 0, ptr @.str.9, ptr @.str.210 }, %struct.EnumPropertyItem { i32 2, ptr @.str.211, i32 0, ptr @.str.212, ptr @.str.213 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.206 = private unnamed_addr constant [7 x i8] c"SELECT\00", align 1
@.str.207 = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@.str.208 = private unnamed_addr constant [22 x i8] c"Select unclean tracks\00", align 1
@.str.209 = private unnamed_addr constant [13 x i8] c"DELETE_TRACK\00", align 1
@.str.210 = private unnamed_addr constant [22 x i8] c"Delete unclean tracks\00", align 1
@.str.211 = private unnamed_addr constant [16 x i8] c"DELETE_SEGMENTS\00", align 1
@.str.212 = private unnamed_addr constant [16 x i8] c"Delete Segments\00", align 1
@.str.213 = private unnamed_addr constant [34 x i8] c"Delete unclean segments of tracks\00", align 1
@.str.214 = private unnamed_addr constant [13 x i8] c"Clean Tracks\00", align 1
@.str.215 = private unnamed_addr constant [50 x i8] c"Clean tracks with high error values or few frames\00", align 1
@.str.216 = private unnamed_addr constant [21 x i8] c"CLIP_OT_clean_tracks\00", align 1
@.str.217 = private unnamed_addr constant [7 x i8] c"frames\00", align 1
@.str.218 = private unnamed_addr constant [15 x i8] c"Tracked Frames\00", align 1
@.str.219 = private unnamed_addr constant [72 x i8] c"Effect on tracks which are tracked less than specified amount of frames\00", align 1
@.str.220 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.221 = private unnamed_addr constant [19 x i8] c"Reprojection Error\00", align 1
@.str.222 = private unnamed_addr constant [59 x i8] c"Effect on tracks which have got larger re-projection error\00", align 1
@.str.223 = private unnamed_addr constant [26 x i8] c"Cleanup action to execute\00", align 1
@.str.224 = private unnamed_addr constant [20 x i8] c"Add Tracking Object\00", align 1
@.str.225 = private unnamed_addr constant [28 x i8] c"Add new object for tracking\00", align 1
@.str.226 = private unnamed_addr constant [28 x i8] c"CLIP_OT_tracking_object_new\00", align 1
@.str.227 = private unnamed_addr constant [23 x i8] c"Remove Tracking Object\00", align 1
@.str.228 = private unnamed_addr constant [27 x i8] c"Remove object for tracking\00", align 1
@.str.229 = private unnamed_addr constant [31 x i8] c"CLIP_OT_tracking_object_remove\00", align 1
@.str.230 = private unnamed_addr constant [12 x i8] c"Copy Tracks\00", align 1
@.str.231 = private unnamed_addr constant [34 x i8] c"Copy selected tracks to clipboard\00", align 1
@.str.232 = private unnamed_addr constant [20 x i8] c"CLIP_OT_copy_tracks\00", align 1
@.str.233 = private unnamed_addr constant [13 x i8] c"Paste Tracks\00", align 1
@.str.234 = private unnamed_addr constant [28 x i8] c"Paste tracks from clipboard\00", align 1
@.str.235 = private unnamed_addr constant [21 x i8] c"CLIP_OT_paste_tracks\00", align 1
@.str.236 = private unnamed_addr constant [19 x i8] c"Create Plane Track\00", align 1
@.str.237 = private unnamed_addr constant [52 x i8] c"Create new plane track out of selected point tracks\00", align 1
@.str.238 = private unnamed_addr constant [27 x i8] c"CLIP_OT_create_plane_track\00", align 1
@.str.239 = private unnamed_addr constant [19 x i8] c"Slide Plane Marker\00", align 1
@.str.240 = private unnamed_addr constant [25 x i8] c"Slide plane marker areas\00", align 1
@.str.241 = private unnamed_addr constant [27 x i8] c"CLIP_OT_slide_plane_marker\00", align 1
@.str.242 = private unnamed_addr constant [16 x i8] c"Insert keyframe\00", align 1
@.str.243 = private unnamed_addr constant [54 x i8] c"Insert a keyframe to selected tracks at current frame\00", align 1
@.str.244 = private unnamed_addr constant [24 x i8] c"CLIP_OT_keyframe_insert\00", align 1
@.str.245 = private unnamed_addr constant [16 x i8] c"Delete keyframe\00", align 1
@.str.246 = private unnamed_addr constant [56 x i8] c"Delete a keyframe from selected tracks at current frame\00", align 1
@.str.247 = private unnamed_addr constant [24 x i8] c"CLIP_OT_keyframe_delete\00", align 1
@.str.248 = private unnamed_addr constant [56 x i8] c"Use LMB click to define location where place the marker\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.249 = private unnamed_addr constant [18 x i8] c"slide marker data\00", align 1
@.str.250 = private unnamed_addr constant [14 x i8] c"slide marekrs\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.251 = private unnamed_addr constant [61 x i8] c"Invoking this operator only supported from Clip Editor space\00", align 1
@.str.252 = private unnamed_addr constant [21 x i8] c"TrackMarkersJob data\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.253 = private unnamed_addr constant [20 x i8] c"SolveCameraJob data\00", align 1
@.str.254 = private unnamed_addr constant [19 x i8] c"solve camera stats\00", align 1
@.str.255 = private unnamed_addr constant [58 x i8] c"Some data failed to reconstruct (see console for details)\00", align 1
@.str.256 = private unnamed_addr constant [34 x i8] c"Average re-projection error: %.3f\00", align 1
@.str.257 = private unnamed_addr constant [33 x i8] c"Solving camera | Preparing solve\00", align 1
@.str.258 = private unnamed_addr constant [76 x i8] c"At least one track with bundle should be selected to define origin position\00", align 1
@.str.259 = private unnamed_addr constant [34 x i8] c"No object to apply orientation on\00", align 1
@.str.260 = private unnamed_addr constant [57 x i8] c"Three tracks with bundles are needed to orient the floor\00", align 1
@.str.261 = private unnamed_addr constant [59 x i8] c"Single track with bundle should be selected to define axis\00", align 1
@.str.262 = private unnamed_addr constant [56 x i8] c"Two tracks with bundles should be selected to set scale\00", align 1
@.str.263 = private unnamed_addr constant [44 x i8] c"Feature detection requires valid clip frame\00", align 1
@.str.264 = private unnamed_addr constant [27 x i8] c"No active track to join to\00", align 1
@.str.265 = private unnamed_addr constant [22 x i8] c"track cleaned markers\00", align 1
@.str.266 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.267 = private unnamed_addr constant [50 x i8] c"Object used for camera tracking cannot be deleted\00", align 1
@.str.268 = private unnamed_addr constant [56 x i8] c"Need at least 4 selected point tracks to create a plane\00", align 1
@.str.269 = private unnamed_addr constant [24 x i8] c"slide plane marker data\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_add_marker(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @add_marker_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_marker_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_float_vector(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, float noundef -1.000000e+00, float noundef 1.000000e+00) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_marker_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %9, ptr noundef nonnull @.str.3) #9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_clip_mouse_pos(ptr noundef %6, ptr noundef %7, ptr noundef nonnull %13, ptr noundef nonnull %5) #9
  %14 = load ptr, ptr %8, align 8, !tbaa !49
  call void @RNA_float_set_array(ptr noundef %14, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %15

15:                                               ; preds = %12, %3
  %16 = call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %17 = call ptr @ED_space_clip_get_clip(ptr noundef %16) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %18 = load ptr, ptr %8, align 8, !tbaa !49
  call void @RNA_float_get_array(ptr noundef %18, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #9
  %19 = load float, ptr %4, align 4, !tbaa !51
  %20 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !51
  %22 = call fastcc zeroext i8 @add_marker(ptr noundef %0, float noundef %19, float noundef %21), !range !53
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.SpaceClip, ptr %16, i64 0, i32 6
  store float 0.000000e+00, ptr %25, align 4, !tbaa !54
  %26 = getelementptr inbounds %struct.SpaceClip, ptr %16, i64 0, i32 7
  store float 0.000000e+00, ptr %26, align 8, !tbaa !61
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %17) #9
  br label %27

27:                                               ; preds = %15, %24
  %28 = phi i32 [ 4, %24 ], [ 2, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_marker_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x float], align 4
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %5 = tail call ptr @ED_space_clip_get_clip(ptr noundef %4) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  call void @RNA_float_get_array(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #9
  %8 = load float, ptr %3, align 4, !tbaa !51
  %9 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !51
  %11 = call fastcc zeroext i8 @add_marker(ptr noundef %0, float noundef %8, float noundef %10), !range !53
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 6
  store float 0.000000e+00, ptr %14, align 4, !tbaa !54
  %15 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 7
  store float 0.000000e+00, ptr %15, align 8, !tbaa !61
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %5) #9
  br label %16

16:                                               ; preds = %2, %13
  %17 = phi i32 [ 4, %13 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %17
}

declare i32 @ED_space_clip_tracking_poll(ptr noundef) #1

declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_add_marker_at_click(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @add_marker_at_click_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @add_marker_at_click_modal, ptr %6, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %7, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_marker_at_click_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  tail call void @ED_area_headerprint(ptr noundef %4, ptr noundef nonnull @.str.248) #9
  %5 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #9
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_marker_at_click_modal(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %6 = tail call ptr @ED_space_clip_get_clip(ptr noundef %5) #9
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !63
  switch i16 %9, label %32 [
    i16 4, label %33
    i16 1, label %10
    i16 218, label %30
  ]

10:                                               ; preds = %3
  %11 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  tail call void @ED_area_headerprint(ptr noundef %11, ptr noundef null) #9
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !66
  %14 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !67
  %16 = sub nsw i32 %13, %15
  %17 = sitofp i32 %16 to float
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !72
  %20 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !73
  %22 = sub nsw i32 %19, %21
  %23 = sitofp i32 %22 to float
  %24 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @ED_clip_point_stable_pos(ptr noundef %5, ptr noundef %7, float noundef %17, float noundef %23, ptr noundef nonnull %4, ptr noundef nonnull %24) #9
  %25 = load float, ptr %4, align 4, !tbaa !51
  %26 = load float, ptr %24, align 4, !tbaa !51
  %27 = call fastcc zeroext i8 @add_marker(ptr noundef %0, float noundef %25, float noundef %26), !range !53
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %6) #9
  br label %33

30:                                               ; preds = %3
  %31 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  tail call void @ED_area_headerprint(ptr noundef %31, ptr noundef null) #9
  br label %33

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %10, %3, %32, %30, %29
  %34 = phi i32 [ 8, %32 ], [ 2, %30 ], [ 4, %29 ], [ 1, %3 ], [ 2, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  ret i32 %34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_delete_track(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @delete_track_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  ret void
}

declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @delete_track_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #9
  %7 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %5) #9
  %8 = load ptr, ptr %6, align 8, !tbaa !74
  %9 = load ptr, ptr %7, align 8, !tbaa !74
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %25, %2
  %12 = phi i8 [ 0, %2 ], [ %26, %25 ]
  %13 = icmp eq ptr %8, null
  br i1 %13, label %60, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  br label %28

16:                                               ; preds = %2, %25
  %17 = phi i8 [ %26, %25 ], [ 0, %2 ]
  %18 = phi ptr [ %19, %25 ], [ %9, %2 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !75
  %20 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %18, i64 0, i32 8
  %21 = load i32, ptr %20, align 4, !tbaa !77
  %22 = and i32 %21, 3
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  tail call void @BKE_tracking_plane_track_free(ptr noundef nonnull %18) #9
  tail call void @BLI_freelinkN(ptr noundef nonnull %7, ptr noundef nonnull %18) #9
  br label %25

25:                                               ; preds = %16, %24
  %26 = phi i8 [ 1, %24 ], [ %17, %16 ]
  %27 = icmp eq ptr %19, null
  br i1 %27, label %11, label %16, !llvm.loop !78

28:                                               ; preds = %14, %57
  %29 = phi i8 [ %12, %14 ], [ %58, %57 ]
  %30 = phi ptr [ %8, %14 ], [ %31, %57 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !81
  %32 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %30, i64 0, i32 13
  %33 = load i32, ptr %32, align 8, !tbaa !83
  %34 = and i32 %33, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %28
  %37 = and i32 %33, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load i32, ptr %15, align 8, !tbaa !84
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %30, i64 0, i32 14
  %45 = load i32, ptr %44, align 4, !tbaa !85
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43, %39
  %49 = and i32 %40, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %30, i64 0, i32 15
  %53 = load i32, ptr %52, align 8, !tbaa !86
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51, %43, %36
  tail call void @clip_delete_track(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %30) #9
  br label %57

57:                                               ; preds = %56, %51, %48, %28
  %58 = phi i8 [ 1, %56 ], [ %29, %51 ], [ %29, %48 ], [ %29, %28 ]
  %59 = icmp eq ptr %31, null
  br i1 %59, label %60, label %28, !llvm.loop !87

60:                                               ; preds = %57, %11
  %61 = phi i8 [ %12, %11 ], [ %58, %57 ]
  %62 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %63 = load i32, ptr %62, align 8, !tbaa !84
  %64 = and i32 %63, -5
  store i32 %64, ptr %62, align 8, !tbaa !84
  %65 = icmp eq i8 %61, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %4) #9
  br label %67

67:                                               ; preds = %66, %60
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_delete_marker(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @delete_marker_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @delete_marker_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #9
  %7 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %5) #9
  %8 = load ptr, ptr %6, align 8, !tbaa !74
  %9 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %3) #9
  %10 = icmp eq ptr %8, null
  br i1 %10, label %57, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  br label %13

13:                                               ; preds = %11, %51
  %14 = phi ptr [ %8, %11 ], [ %17, %51 ]
  %15 = phi i8 [ 0, %11 ], [ %53, %51 ]
  %16 = phi i8 [ 0, %11 ], [ %52, %51 ]
  %17 = load ptr, ptr %14, align 8, !tbaa !81
  %18 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %14, i64 0, i32 13
  %19 = load i32, ptr %18, align 8, !tbaa !83
  %20 = and i32 %19, 32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %13
  %23 = and i32 %19, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load i32, ptr %12, align 8, !tbaa !84
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %14, i64 0, i32 14
  %31 = load i32, ptr %30, align 4, !tbaa !85
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29, %25
  %35 = and i32 %26, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %14, i64 0, i32 15
  %39 = load i32, ptr %38, align 8, !tbaa !86
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %37, %29, %22
  %43 = tail call ptr @BKE_tracking_marker_get_exact(ptr noundef nonnull %14, i32 noundef %9) #9
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %14, i64 0, i32 8
  %47 = load i32, ptr %46, align 8, !tbaa !88
  %48 = icmp sgt i32 %47, 1
  %49 = zext i1 %48 to i8
  %50 = or i8 %16, %49
  tail call void @clip_delete_marker(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %14, ptr noundef nonnull %43) #9
  br label %51

51:                                               ; preds = %42, %45, %37, %34, %13
  %52 = phi i8 [ %16, %37 ], [ %16, %34 ], [ %16, %13 ], [ %50, %45 ], [ %16, %42 ]
  %53 = phi i8 [ %15, %37 ], [ %15, %34 ], [ %15, %13 ], [ 1, %45 ], [ %15, %42 ]
  %54 = icmp eq ptr %17, null
  br i1 %54, label %55, label %13, !llvm.loop !89

55:                                               ; preds = %51
  %56 = icmp eq i8 %52, 0
  br label %57

57:                                               ; preds = %55, %2
  %58 = phi i1 [ true, %2 ], [ %56, %55 ]
  %59 = phi i8 [ 0, %2 ], [ %53, %55 ]
  %60 = load ptr, ptr %7, align 8, !tbaa !74
  %61 = icmp eq ptr %60, null
  br i1 %61, label %82, label %62

62:                                               ; preds = %57, %79
  %63 = phi i8 [ %80, %79 ], [ %59, %57 ]
  %64 = phi ptr [ %65, %79 ], [ %60, %57 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !75
  %66 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %64, i64 0, i32 8
  %67 = load i32, ptr %66, align 4, !tbaa !77
  %68 = and i32 %67, 3
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %79

70:                                               ; preds = %62
  %71 = tail call ptr @BKE_tracking_plane_marker_get_exact(ptr noundef nonnull %64, i32 noundef %9) #9
  %72 = icmp eq ptr %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %64, i64 0, i32 7
  %75 = load i32, ptr %74, align 8, !tbaa !90
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  tail call void @BKE_tracking_plane_track_free(ptr noundef nonnull %64) #9
  tail call void @BLI_freelinkN(ptr noundef nonnull %7, ptr noundef nonnull %64) #9
  br label %79

78:                                               ; preds = %73
  tail call void @BKE_tracking_plane_marker_delete(ptr noundef nonnull %64, i32 noundef %9) #9
  br label %79

79:                                               ; preds = %70, %78, %77, %62
  %80 = phi i8 [ %63, %62 ], [ %63, %70 ], [ 1, %78 ], [ 1, %77 ]
  %81 = icmp eq ptr %65, null
  br i1 %81, label %82, label %62, !llvm.loop !91

82:                                               ; preds = %79, %57
  %83 = phi i8 [ %59, %57 ], [ %80, %79 ]
  br i1 %58, label %84, label %88

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %86 = load i32, ptr %85, align 8, !tbaa !84
  %87 = and i32 %86, -5
  store i32 %87, ptr %85, align 8, !tbaa !84
  br label %88

88:                                               ; preds = %84, %82
  %89 = icmp eq i8 %83, 0
  %90 = select i1 %89, i32 2, i32 4
  ret i32 %90
}

; Function Attrs: nounwind uwtable
define dso_local ptr @tracking_marker_check_slide(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x float], align 4
  %14 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %15 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %16 = tail call ptr @ED_space_clip_get_clip(ptr noundef %14) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #9
  %17 = getelementptr inbounds %struct.MovieClip, ptr %16, i64 0, i32 11
  %18 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %17) #9
  %19 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %14) #9
  call void @ED_space_clip_get_size(ptr noundef %14, ptr noundef nonnull %11, ptr noundef nonnull %12) #9
  %20 = load i32, ptr %11, align 4, !tbaa !92
  %21 = icmp eq i32 %20, 0
  %22 = load i32, ptr %12, align 4
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %319, label %25

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  call void @ED_clip_mouse_pos(ptr noundef %14, ptr noundef %15, ptr noundef nonnull %26, ptr noundef nonnull %13) #9
  %27 = load ptr, ptr %18, align 8, !tbaa !93
  %28 = icmp eq ptr %27, null
  br i1 %28, label %319, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.SpaceClip, ptr %14, i64 0, i32 12
  %31 = getelementptr inbounds %struct.SpaceClip, ptr %14, i64 0, i32 8
  %32 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  %33 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  %34 = getelementptr inbounds float, ptr %13, i64 1
  %35 = getelementptr inbounds %struct.SpaceClip, ptr %14, i64 0, i32 12
  %36 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  %37 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %38 = getelementptr inbounds %struct.SpaceClip, ptr %14, i64 0, i32 12
  %39 = getelementptr inbounds float, ptr %13, i64 1
  %40 = getelementptr inbounds float, ptr %6, i64 1
  %41 = icmp eq ptr %2, null
  %42 = icmp eq ptr %3, null
  %43 = icmp eq ptr %4, null
  br label %44

44:                                               ; preds = %29, %312
  %45 = phi ptr [ %27, %29 ], [ %317, %312 ]
  %46 = phi ptr [ undef, %29 ], [ %316, %312 ]
  %47 = phi i32 [ -1, %29 ], [ %315, %312 ]
  %48 = phi i32 [ 0, %29 ], [ %314, %312 ]
  %49 = phi i32 [ -1, %29 ], [ %313, %312 ]
  %50 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %45, i64 0, i32 13
  %51 = load i32, ptr %50, align 8, !tbaa !83
  %52 = and i32 %51, 32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %312

54:                                               ; preds = %44
  %55 = and i32 %51, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %54
  %58 = load i32, ptr %30, align 8, !tbaa !84
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %45, i64 0, i32 14
  %63 = load i32, ptr %62, align 4, !tbaa !85
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %61, %57
  %67 = and i32 %58, 2
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %312, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %45, i64 0, i32 15
  %71 = load i32, ptr %70, align 8, !tbaa !86
  %72 = and i32 %71, 1
  %73 = icmp ne i32 %72, 0
  %74 = and i32 %51, 64
  %75 = icmp eq i32 %74, 0
  %76 = and i1 %75, %73
  br i1 %76, label %80, label %312

77:                                               ; preds = %61, %54
  %78 = and i32 %51, 64
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %312

80:                                               ; preds = %69, %77
  %81 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %45, i32 noundef %19) #9
  %82 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %81, i64 0, i32 5
  %83 = load i32, ptr %82, align 4, !tbaa !94
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %306

86:                                               ; preds = %80
  %87 = load i32, ptr %11, align 4, !tbaa !92
  %88 = load i32, ptr %12, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  call void @BKE_tracking_marker_pattern_minmax(ptr noundef %81, ptr noundef nonnull %9, ptr noundef nonnull %10) #9
  %89 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %45, i64 0, i32 7
  %90 = load float, ptr %81, align 4, !tbaa !51
  %91 = load float, ptr %89, align 4, !tbaa !51
  %92 = fadd float %90, %91
  %93 = getelementptr inbounds float, ptr %81, i64 1
  %94 = load float, ptr %93, align 4, !tbaa !51
  %95 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %45, i64 0, i32 7, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !51
  %97 = fadd float %94, %96
  %98 = sitofp i32 %87 to float
  %99 = fdiv float 1.200000e+01, %98
  %100 = load float, ptr %31, align 4, !tbaa !95
  %101 = fdiv float %99, %100
  %102 = sitofp i32 %88 to float
  %103 = fdiv float 1.200000e+01, %102
  %104 = fdiv float %103, %100
  %105 = load float, ptr %10, align 4, !tbaa !51
  %106 = load float, ptr %9, align 4, !tbaa !51
  %107 = fsub float %105, %106
  %108 = fmul float %107, 5.000000e-01
  %109 = fcmp olt float %101, %108
  %110 = select i1 %109, float %101, float %108
  %111 = load float, ptr %32, align 4, !tbaa !51
  %112 = load float, ptr %33, align 4, !tbaa !51
  %113 = fsub float %111, %112
  %114 = fmul float %113, 5.000000e-01
  %115 = fcmp olt float %104, %114
  %116 = select i1 %115, float %104, float %114
  %117 = load float, ptr %13, align 4, !tbaa !51
  %118 = fsub float %92, %110
  %119 = fcmp ult float %117, %118
  %120 = fadd float %92, %110
  %121 = fcmp ugt float %117, %120
  %122 = or i1 %119, %121
  br i1 %122, label %131, label %123

123:                                              ; preds = %86
  %124 = load float, ptr %34, align 4, !tbaa !51
  %125 = fsub float %97, %116
  %126 = fcmp ult float %124, %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = fadd float %97, %116
  %129 = fcmp ole float %124, %128
  %130 = zext i1 %129 to i32
  br label %131

131:                                              ; preds = %86, %123, %127
  %132 = phi i32 [ 0, %123 ], [ 0, %86 ], [ %130, %127 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  %133 = icmp eq i32 %132, 0
  %134 = select i1 %133, i32 %49, i32 0
  %135 = select i1 %133, i32 %48, i32 1
  br i1 %133, label %136, label %179

136:                                              ; preds = %131
  %137 = load i32, ptr %35, align 8, !tbaa !84
  %138 = and i32 %137, 2
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %179, label %140

140:                                              ; preds = %136
  %141 = load i32, ptr %11, align 4, !tbaa !92
  %142 = load i32, ptr %12, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  %143 = sitofp i32 %141 to float
  %144 = fdiv float 0.000000e+00, %143
  %145 = sitofp i32 %142 to float
  %146 = fdiv float 0.000000e+00, %145
  %147 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %81, i64 0, i32 3, i64 1
  %148 = load float, ptr %147, align 4, !tbaa !51
  %149 = fadd float %148, %146
  %150 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %81, i64 0, i32 2
  %151 = load float, ptr %150, align 4, !tbaa !51
  %152 = fsub float %151, %144
  %153 = load float, ptr %81, align 4, !tbaa !51
  %154 = fadd float %153, %152
  store float %154, ptr %8, align 4, !tbaa !51
  %155 = load float, ptr %93, align 4, !tbaa !51
  %156 = fadd float %149, %155
  store float %156, ptr %36, align 4, !tbaa !51
  %157 = call fastcc i32 @mouse_on_slide_zone(ptr noundef %14, ptr noundef nonnull %81, i32 noundef 4, ptr noundef nonnull %13, ptr noundef nonnull %8, i32 noundef %141, i32 noundef %142)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %179

159:                                              ; preds = %140
  %160 = load i32, ptr %11, align 4, !tbaa !92
  %161 = load i32, ptr %12, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  %162 = sitofp i32 %160 to float
  %163 = fdiv float 0.000000e+00, %162
  %164 = sitofp i32 %161 to float
  %165 = fdiv float 0.000000e+00, %164
  %166 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %81, i64 0, i32 3
  %167 = load float, ptr %166, align 4, !tbaa !51
  %168 = fadd float %163, %167
  %169 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %81, i64 0, i32 2, i64 1
  %170 = load float, ptr %169, align 4, !tbaa !51
  %171 = fsub float %170, %165
  %172 = load float, ptr %81, align 4, !tbaa !51
  %173 = fadd float %168, %172
  store float %173, ptr %7, align 4, !tbaa !51
  %174 = load float, ptr %93, align 4, !tbaa !51
  %175 = fadd float %171, %174
  store float %175, ptr %37, align 4, !tbaa !51
  %176 = call fastcc i32 @mouse_on_slide_zone(ptr noundef %14, ptr noundef nonnull %81, i32 noundef 4, ptr noundef nonnull %13, ptr noundef nonnull %7, i32 noundef %160, i32 noundef %161)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %159
  br label %179

179:                                              ; preds = %140, %178, %159, %136, %131
  %180 = phi i32 [ %134, %131 ], [ 1, %178 ], [ %134, %159 ], [ %134, %136 ], [ 2, %140 ]
  %181 = phi i32 [ %135, %131 ], [ 4, %178 ], [ %135, %159 ], [ %135, %136 ], [ 4, %140 ]
  %182 = phi i1 [ false, %131 ], [ false, %178 ], [ true, %159 ], [ true, %136 ], [ false, %140 ]
  br i1 %182, label %183, label %295

183:                                              ; preds = %179
  %184 = load i32, ptr %38, align 8, !tbaa !84
  %185 = and i32 %184, 1
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %295, label %187

187:                                              ; preds = %183
  %188 = load i32, ptr %11, align 4, !tbaa !92
  %189 = load i32, ptr %12, align 4, !tbaa !92
  br label %190

190:                                              ; preds = %187, %190
  %191 = phi i64 [ 0, %187 ], [ %193, %190 ]
  %192 = phi float [ 0x47EFFFFFE0000000, %187 ], [ %208, %190 ]
  %193 = add nuw nsw i64 %191, 1
  %194 = and i64 %193, 3
  %195 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %81, i64 0, i32 1, i64 %191
  %196 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %81, i64 0, i32 1, i64 %194
  %197 = load float, ptr %196, align 4, !tbaa !51
  %198 = load float, ptr %195, align 4, !tbaa !51
  %199 = fsub float %197, %198
  %200 = getelementptr inbounds float, ptr %196, i64 1
  %201 = load float, ptr %200, align 4, !tbaa !51
  %202 = getelementptr inbounds float, ptr %195, i64 1
  %203 = load float, ptr %202, align 4, !tbaa !51
  %204 = fsub float %201, %203
  %205 = fmul float %204, %204
  %206 = call float @llvm.fmuladd.f32(float %199, float %199, float %205)
  %207 = fcmp olt float %206, %192
  %208 = select i1 %207, float %206, float %192
  %209 = icmp eq i64 %193, 4
  br i1 %209, label %210, label %190, !llvm.loop !96

210:                                              ; preds = %190
  %211 = call float @sqrtf(float noundef %208) #9
  %212 = sitofp i32 %188 to float
  %213 = fdiv float 1.200000e+01, %212
  %214 = load float, ptr %31, align 4, !tbaa !95
  %215 = fdiv float %213, %214
  %216 = sitofp i32 %189 to float
  %217 = fdiv float 1.200000e+01, %216
  %218 = fdiv float %217, %214
  %219 = fmul float %211, 2.000000e+00
  %220 = fdiv float %219, 3.000000e+00
  %221 = fcmp olt float %215, %220
  %222 = select i1 %221, float %215, float %220
  %223 = fmul float %211, %212
  %224 = fdiv float %223, %216
  %225 = fmul float %224, 2.000000e+00
  %226 = fdiv float %225, 3.000000e+00
  %227 = fcmp olt float %218, %226
  %228 = select i1 %227, float %218, float %226
  %229 = load float, ptr %81, align 4, !tbaa !51
  %230 = load float, ptr %93, align 4, !tbaa !51
  %231 = load float, ptr %13, align 4
  %232 = load float, ptr %39, align 4
  br label %236

233:                                              ; preds = %268
  %234 = add nuw nsw i64 %237, 1
  %235 = icmp eq i64 %234, 4
  br i1 %235, label %272, label %236, !llvm.loop !97

236:                                              ; preds = %210, %233
  %237 = phi i64 [ 0, %210 ], [ %234, %233 ]
  %238 = phi i32 [ undef, %210 ], [ %271, %233 ]
  %239 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %81, i64 0, i32 1, i64 %237
  %240 = load float, ptr %239, align 4, !tbaa !51
  %241 = fadd float %240, %229
  %242 = getelementptr inbounds float, ptr %239, i64 1
  %243 = load float, ptr %242, align 4, !tbaa !51
  %244 = fadd float %243, %230
  %245 = fsub float %241, %222
  %246 = fadd float %222, %241
  %247 = fcmp olt float %245, %246
  br i1 %247, label %248, label %252

248:                                              ; preds = %236
  %249 = fcmp ugt float %245, %231
  %250 = fcmp ugt float %231, %246
  %251 = or i1 %249, %250
  br i1 %251, label %268, label %256

252:                                              ; preds = %236
  %253 = fcmp ugt float %246, %231
  %254 = fcmp ugt float %231, %245
  %255 = or i1 %253, %254
  br i1 %255, label %268, label %256

256:                                              ; preds = %252, %248
  %257 = fsub float %244, %228
  %258 = fadd float %228, %244
  %259 = fcmp olt float %257, %258
  br i1 %259, label %260, label %264

260:                                              ; preds = %256
  %261 = fcmp ole float %257, %232
  %262 = fcmp ole float %232, %258
  %263 = and i1 %261, %262
  br label %268

264:                                              ; preds = %256
  %265 = fcmp ole float %258, %232
  %266 = fcmp ole float %232, %257
  %267 = and i1 %265, %266
  br label %268

268:                                              ; preds = %264, %260, %252, %248
  %269 = phi i1 [ false, %248 ], [ false, %252 ], [ %263, %260 ], [ %267, %264 ]
  %270 = trunc i64 %237 to i32
  %271 = select i1 %269, i32 %270, i32 %238
  br i1 %269, label %272, label %233

272:                                              ; preds = %233, %268
  %273 = phi i32 [ %271, %268 ], [ -1, %233 ]
  %274 = icmp eq i32 %273, -1
  br i1 %274, label %275, label %295

275:                                              ; preds = %272
  %276 = load i32, ptr %11, align 4, !tbaa !92
  %277 = load i32, ptr %12, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %278 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %81, i64 0, i32 1, i64 1
  %279 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %81, i64 0, i32 1, i64 2
  %280 = load float, ptr %278, align 4, !tbaa !51
  %281 = load float, ptr %279, align 4, !tbaa !51
  %282 = fadd float %280, %281
  store float %282, ptr %6, align 4, !tbaa !51
  %283 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %81, i64 0, i32 1, i64 1, i64 1
  %284 = load float, ptr %283, align 4, !tbaa !51
  %285 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %81, i64 0, i32 1, i64 2, i64 1
  %286 = load float, ptr %285, align 4, !tbaa !51
  %287 = fadd float %284, %286
  store float %287, ptr %40, align 4, !tbaa !51
  %288 = load float, ptr %81, align 4, !tbaa !51
  %289 = fadd float %282, %288
  store float %289, ptr %6, align 4, !tbaa !51
  %290 = load float, ptr %93, align 4, !tbaa !51
  %291 = fadd float %287, %290
  store float %291, ptr %40, align 4, !tbaa !51
  %292 = call fastcc i32 @mouse_on_slide_zone(ptr noundef %14, ptr noundef nonnull %81, i32 noundef 2, ptr noundef nonnull %13, ptr noundef nonnull %6, i32 noundef %276, i32 noundef %277)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %295, label %294

294:                                              ; preds = %275
  br label %295

295:                                              ; preds = %294, %275, %272, %183, %179
  %296 = phi i32 [ %180, %179 ], [ %180, %183 ], [ 3, %294 ], [ %180, %275 ], [ 0, %272 ]
  %297 = phi i32 [ %181, %179 ], [ %181, %183 ], [ 2, %294 ], [ %181, %275 ], [ 2, %272 ]
  %298 = phi i32 [ %47, %179 ], [ %47, %183 ], [ %47, %294 ], [ %47, %275 ], [ %273, %272 ]
  %299 = phi i1 [ false, %179 ], [ true, %183 ], [ false, %294 ], [ true, %275 ], [ false, %272 ]
  br i1 %299, label %306, label %300

300:                                              ; preds = %295
  br i1 %41, label %302, label %301

301:                                              ; preds = %300
  store i32 %297, ptr %2, align 4, !tbaa !92
  br label %302

302:                                              ; preds = %301, %300
  br i1 %42, label %304, label %303

303:                                              ; preds = %302
  store i32 %296, ptr %3, align 4, !tbaa !92
  br label %304

304:                                              ; preds = %303, %302
  br i1 %43, label %306, label %305

305:                                              ; preds = %304
  store i32 %298, ptr %4, align 4, !tbaa !92
  br label %306

306:                                              ; preds = %80, %295, %304, %305
  %307 = phi i32 [ %296, %305 ], [ %296, %304 ], [ %296, %295 ], [ %49, %80 ]
  %308 = phi i32 [ %297, %305 ], [ %297, %304 ], [ %297, %295 ], [ %48, %80 ]
  %309 = phi i32 [ %298, %305 ], [ %298, %304 ], [ %298, %295 ], [ %47, %80 ]
  %310 = phi i1 [ false, %305 ], [ false, %304 ], [ true, %295 ], [ true, %80 ]
  %311 = phi ptr [ %45, %305 ], [ %45, %304 ], [ %46, %295 ], [ %46, %80 ]
  br i1 %310, label %312, label %319

312:                                              ; preds = %306, %77, %69, %66, %44
  %313 = phi i32 [ %307, %306 ], [ %49, %77 ], [ %49, %69 ], [ %49, %66 ], [ %49, %44 ]
  %314 = phi i32 [ %308, %306 ], [ %48, %77 ], [ %48, %69 ], [ %48, %66 ], [ %48, %44 ]
  %315 = phi i32 [ %309, %306 ], [ %47, %77 ], [ %47, %69 ], [ %47, %66 ], [ %47, %44 ]
  %316 = phi ptr [ %311, %306 ], [ %46, %77 ], [ %46, %69 ], [ %46, %66 ], [ %46, %44 ]
  %317 = load ptr, ptr %45, align 8, !tbaa !93
  %318 = icmp eq ptr %317, null
  br i1 %318, label %319, label %44, !llvm.loop !98

319:                                              ; preds = %306, %312, %25, %5
  %320 = phi ptr [ null, %5 ], [ null, %25 ], [ null, %312 ], [ %311, %306 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #9
  ret ptr %320
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_get_active_tracks(ptr noundef) local_unnamed_addr #1

declare i32 @ED_space_clip_get_clip_frame_number(ptr noundef) local_unnamed_addr #1

declare void @ED_space_clip_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_clip_mouse_pos(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_slide_marker(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @slide_marker_invoke, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @slide_marker_modal, ptr %6, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 23, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_float_vector(ptr noundef %9, ptr noundef nonnull @.str.18, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @slide_marker_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %12 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %10) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  call void @ED_space_clip_get_size(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %13 = load i32, ptr %4, align 4, !tbaa !92
  %14 = icmp eq i32 %13, 0
  %15 = load i32, ptr %5, align 4
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %146, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_clip_mouse_pos(ptr noundef %10, ptr noundef %11, ptr noundef nonnull %19, ptr noundef nonnull %6) #9
  %20 = call ptr @tracking_marker_check_slide(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %146, label %22

22:                                               ; preds = %18
  %23 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %20, i32 noundef %12) #9
  %24 = load i32, ptr %7, align 4, !tbaa !92
  %25 = load i32, ptr %9, align 4, !tbaa !92
  %26 = load i32, ptr %8, align 4, !tbaa !92
  %27 = load i32, ptr %4, align 4, !tbaa !92
  %28 = load i32, ptr %5, align 4, !tbaa !92
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !93
  %30 = call ptr %29(i64 noundef 168, ptr noundef nonnull @.str.249) #9
  %31 = call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %10) #9
  %32 = call ptr @BKE_tracking_marker_ensure(ptr noundef nonnull %20, i32 noundef %31) #9
  %33 = trunc i32 %24 to i16
  store i16 %33, ptr %30, align 8, !tbaa !99
  %34 = trunc i32 %26 to i16
  %35 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 1
  store i16 %34, ptr %35, align 2, !tbaa !101
  %36 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 2
  store ptr %20, ptr %36, align 8, !tbaa !102
  %37 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 3
  store ptr %32, ptr %37, align 8, !tbaa !103
  switch i32 %24, label %109 [
    i32 1, label %38
    i32 2, label %42
    i32 4, label %104
  ]

38:                                               ; preds = %22
  %39 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 9
  store ptr %32, ptr %39, align 8, !tbaa !104
  %40 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %20, i64 0, i32 7
  %41 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 10
  store ptr %40, ptr %41, align 8, !tbaa !105
  br label %109

42:                                               ; preds = %22
  switch i32 %26, label %109 [
    i32 1, label %43
    i32 2, label %46
    i32 0, label %73
    i32 3, label %84
  ]

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %32, i64 0, i32 1
  %45 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 11
  store ptr %44, ptr %45, align 8, !tbaa !106
  br label %109

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 9
  store ptr %32, ptr %47, align 8, !tbaa !104
  %48 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %20, i64 0, i32 7
  %49 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 10
  store ptr %48, ptr %49, align 8, !tbaa !105
  %50 = load ptr, ptr @MEM_callocN, align 8, !tbaa !93
  %51 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %20, i64 0, i32 8
  %52 = load i32, ptr %51, align 8, !tbaa !88
  %53 = sext i32 %52 to i64
  %54 = shl nsw i64 %53, 3
  %55 = call ptr %50(i64 noundef %54, ptr noundef nonnull @.str.250) #9
  %56 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 20
  store ptr %55, ptr %56, align 8, !tbaa !107
  %57 = load i32, ptr %51, align 8, !tbaa !88
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %109

59:                                               ; preds = %46
  %60 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %20, i64 0, i32 10
  %61 = load ptr, ptr %60, align 8, !tbaa !108
  %62 = zext nneg i32 %57 to i64
  br label %63

63:                                               ; preds = %59, %63
  %64 = phi i64 [ 0, %59 ], [ %71, %63 ]
  %65 = getelementptr inbounds [2 x float], ptr %55, i64 %64
  %66 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %61, i64 %64
  %67 = load float, ptr %66, align 4, !tbaa !51
  store float %67, ptr %65, align 4, !tbaa !51
  %68 = getelementptr inbounds float, ptr %66, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !51
  %70 = getelementptr inbounds float, ptr %65, i64 1
  store float %69, ptr %70, align 4, !tbaa !51
  %71 = add nuw nsw i64 %64, 1
  %72 = icmp eq i64 %71, %62
  br i1 %72, label %109, label %63, !llvm.loop !109

73:                                               ; preds = %42
  %74 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %32, i64 0, i32 1
  %75 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 11
  store ptr %74, ptr %75, align 8, !tbaa !106
  %76 = sext i32 %25 to i64
  %77 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %32, i64 0, i32 1, i64 %76
  %78 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 9
  store ptr %77, ptr %78, align 8, !tbaa !104
  %79 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 12
  %80 = load float, ptr %77, align 4, !tbaa !51
  store float %80, ptr %79, align 4, !tbaa !51
  %81 = getelementptr inbounds float, ptr %77, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !51
  %83 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 12, i64 1
  store float %82, ptr %83, align 4, !tbaa !51
  br label %109

84:                                               ; preds = %42
  %85 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %32, i64 0, i32 1
  %86 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 11
  store ptr %85, ptr %86, align 8, !tbaa !106
  %87 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 12
  %88 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %32, i64 0, i32 1, i64 1
  %89 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %32, i64 0, i32 1, i64 2
  %90 = load float, ptr %88, align 4, !tbaa !51
  %91 = load float, ptr %89, align 4, !tbaa !51
  %92 = fadd float %90, %91
  store float %92, ptr %87, align 4, !tbaa !51
  %93 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %32, i64 0, i32 1, i64 1, i64 1
  %94 = load float, ptr %93, align 4, !tbaa !51
  %95 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %32, i64 0, i32 1, i64 2, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !51
  %97 = fadd float %94, %96
  %98 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 12, i64 1
  store float %97, ptr %98, align 4, !tbaa !51
  %99 = load float, ptr %32, align 4, !tbaa !51
  %100 = fadd float %92, %99
  store float %100, ptr %87, align 4, !tbaa !51
  %101 = getelementptr inbounds float, ptr %32, i64 1
  %102 = load float, ptr %101, align 4, !tbaa !51
  %103 = fadd float %97, %102
  store float %103, ptr %98, align 4, !tbaa !51
  br label %109

104:                                              ; preds = %22
  %105 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %32, i64 0, i32 2
  %106 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 7
  store ptr %105, ptr %106, align 8, !tbaa !110
  %107 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %32, i64 0, i32 3
  %108 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 8
  store ptr %107, ptr %108, align 8, !tbaa !111
  br label %109

109:                                              ; preds = %63, %46, %104, %84, %73, %43, %42, %38, %22
  %110 = load i32, ptr %19, align 4, !tbaa !92
  %111 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 4
  store i32 %110, ptr %111, align 8, !tbaa !92
  %112 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %113 = load i32, ptr %112, align 4, !tbaa !92
  %114 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 4, i64 1
  store i32 %113, ptr %114, align 4, !tbaa !92
  %115 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 5
  store i32 %27, ptr %115, align 8, !tbaa !112
  %116 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 6
  store i32 %28, ptr %116, align 4, !tbaa !113
  %117 = icmp eq i32 %26, 1
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 13
  store i8 1, ptr %119, align 8, !tbaa !114
  br label %120

120:                                              ; preds = %118, %109
  %121 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 19
  %122 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %32, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %121, ptr noundef nonnull align 4 dereferenceable(32) %122, i64 32, i1 false)
  %123 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 15
  %124 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %32, i64 0, i32 2
  %125 = load float, ptr %124, align 4, !tbaa !51
  store float %125, ptr %123, align 4, !tbaa !51
  %126 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %32, i64 0, i32 2, i64 1
  %127 = load float, ptr %126, align 4, !tbaa !51
  %128 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 15, i64 1
  store float %127, ptr %128, align 4, !tbaa !51
  %129 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 16
  %130 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %32, i64 0, i32 3
  %131 = load float, ptr %130, align 4, !tbaa !51
  store float %131, ptr %129, align 4, !tbaa !51
  %132 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %32, i64 0, i32 3, i64 1
  %133 = load float, ptr %132, align 4, !tbaa !51
  %134 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 16, i64 1
  store float %133, ptr %134, align 4, !tbaa !51
  %135 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 17
  %136 = load float, ptr %32, align 4, !tbaa !51
  store float %136, ptr %135, align 4, !tbaa !51
  %137 = getelementptr inbounds float, ptr %32, i64 1
  %138 = load float, ptr %137, align 4, !tbaa !51
  %139 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 17, i64 1
  store float %138, ptr %139, align 4, !tbaa !51
  %140 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 18
  %141 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %20, i64 0, i32 7
  %142 = load float, ptr %141, align 4, !tbaa !51
  store float %142, ptr %140, align 4, !tbaa !51
  %143 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %20, i64 0, i32 7, i64 1
  %144 = load float, ptr %143, align 4, !tbaa !51
  %145 = getelementptr inbounds %struct.SlideMarkerData, ptr %30, i64 0, i32 18, i64 1
  store float %144, ptr %145, align 4, !tbaa !51
  br label %146

146:                                              ; preds = %3, %18, %120
  %147 = phi ptr [ null, %3 ], [ %30, %120 ], [ null, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %148 = icmp eq ptr %147, null
  br i1 %148, label %159, label %149

149:                                              ; preds = %146
  %150 = call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %151 = call ptr @ED_space_clip_get_clip(ptr noundef %150) #9
  %152 = getelementptr inbounds %struct.SlideMarkerData, ptr %147, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !102
  %154 = getelementptr inbounds %struct.MovieClip, ptr %151, i64 0, i32 11, i32 6
  store ptr %153, ptr %154, align 8, !tbaa !115
  %155 = getelementptr inbounds %struct.MovieClip, ptr %151, i64 0, i32 11, i32 7
  store ptr null, ptr %155, align 8, !tbaa !122
  %156 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %147, ptr %156, align 8, !tbaa !123
  %157 = call ptr @CTX_wm_window(ptr noundef %0) #9
  call void @WM_cursor_set(ptr noundef %157, i32 noundef 1007) #9
  %158 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef null) #9
  br label %159

159:                                              ; preds = %146, %149
  %160 = phi i32 [ 1, %149 ], [ 8, %146 ]
  ret i32 %160
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @slide_marker_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [2 x float], align 8
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !123
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !63
  switch i16 %14, label %555 [
    i16 212, label %15
    i16 215, label %15
    i16 217, label %15
    i16 216, label %15
    i16 4, label %35
    i16 1, label %439
    i16 218, label %493
  ]

15:                                               ; preds = %3, %3, %3, %3
  %16 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 1
  %17 = load i16, ptr %16, align 2, !tbaa !101
  %18 = icmp eq i16 %17, 1
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  switch i16 %14, label %26 [
    i16 212, label %20
    i16 215, label %20
  ]

20:                                               ; preds = %19, %19
  %21 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %22 = load i16, ptr %21, align 2, !tbaa !124
  %23 = icmp eq i16 %22, 2
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 13
  store i8 %24, ptr %25, align 8, !tbaa !114
  br label %26

26:                                               ; preds = %19, %20, %15
  %27 = and i16 %14, -2
  %28 = icmp eq i16 %27, 216
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %31 = load i16, ptr %30, align 2, !tbaa !124
  %32 = icmp eq i16 %31, 1
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 14
  store i8 %33, ptr %34, align 1, !tbaa !125
  br label %35

35:                                               ; preds = %26, %29, %3
  %36 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %37 = load i32, ptr %36, align 4, !tbaa !92
  %38 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !92
  %40 = sub nsw i32 %37, %39
  %41 = sitofp i32 %40 to float
  %42 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %43 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 4, i64 1
  %44 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 5
  %45 = load i32, ptr %44, align 8, !tbaa !112
  %46 = sitofp i32 %45 to float
  %47 = fdiv float %41, %46
  %48 = getelementptr inbounds %struct.SpaceClip, ptr %9, i64 0, i32 8
  %49 = load float, ptr %48, align 4, !tbaa !95
  %50 = fdiv float %47, %49
  %51 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 13
  %52 = load i8, ptr %51, align 8, !tbaa !114
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %35
  %55 = fneg float %50
  %56 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 6
  %57 = load i32, ptr %56, align 4, !tbaa !113
  %58 = sitofp i32 %57 to float
  %59 = fdiv float %55, %58
  %60 = fmul float %59, %46
  br label %71

61:                                               ; preds = %35
  %62 = load i32, ptr %42, align 4, !tbaa !92
  %63 = load i32, ptr %43, align 4, !tbaa !92
  %64 = sub nsw i32 %62, %63
  %65 = sitofp i32 %64 to float
  %66 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 6
  %67 = load i32, ptr %66, align 4, !tbaa !113
  %68 = sitofp i32 %67 to float
  %69 = fdiv float %65, %68
  %70 = fdiv float %69, %49
  br label %71

71:                                               ; preds = %61, %54
  %72 = phi float [ %60, %54 ], [ %70, %61 ]
  %73 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 14
  %74 = load i8, ptr %73, align 1, !tbaa !125
  %75 = icmp eq i8 %74, 0
  %76 = fdiv float %50, 5.000000e+00
  %77 = fdiv float %72, 5.000000e+00
  %78 = select i1 %75, float %72, float %77
  %79 = select i1 %75, float %50, float %76
  %80 = load i16, ptr %12, align 8, !tbaa !99
  switch i16 %80, label %433 [
    i16 1, label %81
    i16 2, label %107
    i16 4, label %387
  ]

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 1
  %83 = load i16, ptr %82, align 2, !tbaa !101
  %84 = icmp eq i16 %83, 2
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 18
  %87 = load float, ptr %86, align 4, !tbaa !51
  %88 = fadd float %79, %87
  %89 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 10
  %90 = load ptr, ptr %89, align 8, !tbaa !105
  store float %88, ptr %90, align 4, !tbaa !51
  %91 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 18, i64 1
  br label %99

92:                                               ; preds = %81
  %93 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 17
  %94 = load float, ptr %93, align 4, !tbaa !51
  %95 = fadd float %79, %94
  %96 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 9
  %97 = load ptr, ptr %96, align 8, !tbaa !104
  store float %95, ptr %97, align 4, !tbaa !51
  %98 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 17, i64 1
  br label %99

99:                                               ; preds = %92, %85
  %100 = phi ptr [ %98, %92 ], [ %91, %85 ]
  %101 = phi ptr [ %97, %92 ], [ %90, %85 ]
  %102 = load float, ptr %100, align 4, !tbaa !51
  %103 = fadd float %78, %102
  %104 = getelementptr inbounds float, ptr %101, i64 1
  store float %103, ptr %104, align 4, !tbaa !51
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #9
  %105 = getelementptr inbounds %struct.SpaceClip, ptr %9, i64 0, i32 10
  %106 = load ptr, ptr %105, align 8, !tbaa !126
  tail call void @DAG_id_tag_update(ptr noundef %106, i16 noundef signext 0) #9
  br label %433

107:                                              ; preds = %71
  %108 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 1
  %109 = load i16, ptr %108, align 2, !tbaa !101
  switch i16 %109, label %433 [
    i16 1, label %122
    i16 2, label %110
    i16 0, label %221
    i16 3, label %286
  ]

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !102
  %113 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %112, i64 0, i32 8
  %114 = load i32, ptr %113, align 8, !tbaa !88
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %211

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %112, i64 0, i32 10
  %118 = load ptr, ptr %117, align 8, !tbaa !108
  %119 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 20
  %120 = load ptr, ptr %119, align 8, !tbaa !107
  %121 = zext nneg i32 %114 to i64
  br label %199

122:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %123 = sitofp i32 %39 to float
  %124 = load i32, ptr %43, align 4, !tbaa !92
  %125 = sitofp i32 %124 to float
  %126 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  call void @ED_clip_point_stable_pos(ptr noundef %9, ptr noundef %10, float noundef %123, float noundef %125, ptr noundef nonnull %5, ptr noundef nonnull %126) #9
  %127 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 17
  %128 = load float, ptr %127, align 4, !tbaa !51
  %129 = load float, ptr %5, align 4, !tbaa !51
  %130 = fsub float %129, %128
  store float %130, ptr %5, align 4, !tbaa !51
  %131 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 17, i64 1
  %132 = load float, ptr %131, align 4, !tbaa !51
  %133 = load float, ptr %126, align 4, !tbaa !51
  %134 = fsub float %133, %132
  store float %134, ptr %126, align 4, !tbaa !51
  %135 = fmul float %134, %134
  %136 = call float @llvm.fmuladd.f32(float %130, float %130, float %135)
  %137 = fcmp une float %136, 0.000000e+00
  br i1 %137, label %138, label %196

138:                                              ; preds = %122
  %139 = load i8, ptr %73, align 1, !tbaa !125
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %156, label %141

141:                                              ; preds = %138
  %142 = load i32, ptr %38, align 8, !tbaa !92
  %143 = sitofp i32 %142 to float
  %144 = load i32, ptr %36, align 4, !tbaa !92
  %145 = sub nsw i32 %144, %142
  %146 = sitofp i32 %145 to float
  %147 = fdiv float %146, 5.000000e+00
  %148 = fadd float %147, %143
  %149 = load i32, ptr %43, align 4, !tbaa !92
  %150 = sitofp i32 %149 to float
  %151 = load i32, ptr %42, align 4, !tbaa !92
  %152 = sub nsw i32 %151, %149
  %153 = sitofp i32 %152 to float
  %154 = fdiv float %153, 5.000000e+00
  %155 = fadd float %154, %150
  br label %161

156:                                              ; preds = %138
  %157 = load i32, ptr %36, align 4, !tbaa !92
  %158 = sitofp i32 %157 to float
  %159 = load i32, ptr %42, align 4, !tbaa !92
  %160 = sitofp i32 %159 to float
  br label %161

161:                                              ; preds = %156, %141
  %162 = phi float [ %155, %141 ], [ %160, %156 ]
  %163 = phi float [ %148, %141 ], [ %158, %156 ]
  %164 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  call void @ED_clip_point_stable_pos(ptr noundef %9, ptr noundef %10, float noundef %163, float noundef %162, ptr noundef nonnull %6, ptr noundef nonnull %164) #9
  %165 = load float, ptr %127, align 4, !tbaa !51
  %166 = load float, ptr %6, align 4, !tbaa !51
  %167 = fsub float %166, %165
  store float %167, ptr %6, align 4, !tbaa !51
  %168 = load float, ptr %131, align 4, !tbaa !51
  %169 = load float, ptr %164, align 4, !tbaa !51
  %170 = fsub float %169, %168
  store float %170, ptr %164, align 4, !tbaa !51
  %171 = fmul float %170, %170
  %172 = call float @llvm.fmuladd.f32(float %167, float %167, float %171)
  %173 = call float @sqrtf(float noundef %172) #9
  %174 = load float, ptr %5, align 4, !tbaa !51
  %175 = load float, ptr %126, align 4, !tbaa !51
  %176 = fmul float %175, %175
  %177 = call float @llvm.fmuladd.f32(float %174, float %174, float %176)
  %178 = call float @sqrtf(float noundef %177) #9
  %179 = fdiv float %173, %178
  %180 = fcmp ogt float %179, 0.000000e+00
  br i1 %180, label %181, label %196

181:                                              ; preds = %161
  %182 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 11
  %183 = load ptr, ptr %182, align 8, !tbaa !106
  br label %184

184:                                              ; preds = %181, %184
  %185 = phi i64 [ 0, %181 ], [ %194, %184 ]
  %186 = getelementptr inbounds [2 x float], ptr %183, i64 %185
  %187 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 19, i64 %185
  %188 = load float, ptr %187, align 4, !tbaa !51
  %189 = fmul float %179, %188
  store float %189, ptr %186, align 4, !tbaa !51
  %190 = getelementptr inbounds float, ptr %187, i64 1
  %191 = load float, ptr %190, align 4, !tbaa !51
  %192 = fmul float %179, %191
  %193 = getelementptr inbounds float, ptr %186, i64 1
  store float %192, ptr %193, align 4, !tbaa !51
  %194 = add nuw nsw i64 %185, 1
  %195 = icmp eq i64 %194, 4
  br i1 %195, label %196, label %184, !llvm.loop !127

196:                                              ; preds = %184, %161, %122
  %197 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 3
  %198 = load ptr, ptr %197, align 8, !tbaa !103
  call void @BKE_tracking_marker_clamp(ptr noundef %198, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %433

199:                                              ; preds = %116, %199
  %200 = phi i64 [ 0, %116 ], [ %209, %199 ]
  %201 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %118, i64 %200
  %202 = getelementptr inbounds [2 x float], ptr %120, i64 %200
  %203 = load float, ptr %202, align 4, !tbaa !51
  %204 = fadd float %79, %203
  store float %204, ptr %201, align 4, !tbaa !51
  %205 = getelementptr inbounds float, ptr %202, i64 1
  %206 = load float, ptr %205, align 4, !tbaa !51
  %207 = fadd float %78, %206
  %208 = getelementptr inbounds float, ptr %201, i64 1
  store float %207, ptr %208, align 4, !tbaa !51
  %209 = add nuw nsw i64 %200, 1
  %210 = icmp eq i64 %209, %121
  br i1 %210, label %211, label %199, !llvm.loop !128

211:                                              ; preds = %199, %110
  %212 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 10
  %213 = load ptr, ptr %212, align 8, !tbaa !105
  %214 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 18
  %215 = load float, ptr %214, align 4, !tbaa !51
  %216 = fsub float %215, %79
  store float %216, ptr %213, align 4, !tbaa !51
  %217 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 18, i64 1
  %218 = load float, ptr %217, align 4, !tbaa !51
  %219 = fsub float %218, %78
  %220 = getelementptr inbounds float, ptr %213, i64 1
  store float %219, ptr %220, align 4, !tbaa !51
  br label %433

221:                                              ; preds = %107
  %222 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 9
  %223 = load ptr, ptr %222, align 8, !tbaa !104
  %224 = load float, ptr %223, align 4, !tbaa !51
  %225 = getelementptr inbounds float, ptr %223, i64 1
  %226 = load float, ptr %225, align 4, !tbaa !51
  %227 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 12
  %228 = load float, ptr %227, align 8, !tbaa !51
  %229 = fadd float %79, %228
  store float %229, ptr %223, align 4, !tbaa !51
  %230 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 12, i64 1
  %231 = load float, ptr %230, align 4, !tbaa !51
  %232 = fadd float %78, %231
  store float %232, ptr %225, align 4, !tbaa !51
  %233 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 11
  %234 = load ptr, ptr %233, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  store i64 0, ptr %4, align 8
  %235 = getelementptr inbounds [2 x float], ptr %234, i64 1
  %236 = getelementptr inbounds [2 x float], ptr %234, i64 2
  %237 = getelementptr inbounds [2 x float], ptr %234, i64 3
  %238 = call i32 @isect_point_quad_v2(ptr noundef nonnull %4, ptr noundef %234, ptr noundef nonnull %235, ptr noundef nonnull %236, ptr noundef nonnull %237) #9
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %280, label %240

240:                                              ; preds = %221, %276
  %241 = phi i64 [ %245, %276 ], [ 0, %221 ]
  %242 = phi float [ %277, %276 ], [ 0.000000e+00, %221 ]
  %243 = icmp eq i64 %241, 4
  br i1 %243, label %279, label %244

244:                                              ; preds = %240
  %245 = add nuw nsw i64 %241, 1
  %246 = and i64 %245, 3
  %247 = add nuw i64 %241, 3
  %248 = and i64 %247, 3
  %249 = getelementptr inbounds [2 x float], ptr %234, i64 %241
  %250 = getelementptr inbounds [2 x float], ptr %234, i64 %248
  %251 = load float, ptr %249, align 4, !tbaa !51
  %252 = load float, ptr %250, align 4, !tbaa !51
  %253 = fsub float %251, %252
  %254 = getelementptr inbounds float, ptr %249, i64 1
  %255 = load float, ptr %254, align 4, !tbaa !51
  %256 = getelementptr inbounds float, ptr %250, i64 1
  %257 = load float, ptr %256, align 4, !tbaa !51
  %258 = fsub float %255, %257
  %259 = getelementptr inbounds [2 x float], ptr %234, i64 %246
  %260 = load float, ptr %259, align 4, !tbaa !51
  %261 = fsub float %260, %251
  %262 = getelementptr inbounds float, ptr %259, i64 1
  %263 = load float, ptr %262, align 4, !tbaa !51
  %264 = fsub float %263, %255
  %265 = fneg float %258
  %266 = fmul float %261, %265
  %267 = call float @llvm.fmuladd.f32(float %253, float %264, float %266)
  %268 = call float @llvm.fabs.f32(float %267)
  %269 = fcmp ogt float %268, 0x3E80000000000000
  br i1 %269, label %270, label %276

270:                                              ; preds = %244
  %271 = fcmp oeq float %242, 0.000000e+00
  br i1 %271, label %276, label %272

272:                                              ; preds = %270
  %273 = fmul float %242, %267
  %274 = fcmp olt float %273, 0.000000e+00
  br i1 %274, label %276, label %275

275:                                              ; preds = %272
  br label %276

276:                                              ; preds = %275, %272, %270, %244
  %277 = phi float [ %242, %272 ], [ %242, %244 ], [ %267, %270 ], [ %242, %275 ]
  %278 = phi i1 [ false, %272 ], [ true, %244 ], [ true, %270 ], [ true, %275 ]
  br i1 %278, label %240, label %280, !llvm.loop !129

279:                                              ; preds = %240
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %283

280:                                              ; preds = %276, %221
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  %281 = load ptr, ptr %222, align 8, !tbaa !104
  store float %224, ptr %281, align 4, !tbaa !51
  %282 = getelementptr inbounds float, ptr %281, i64 1
  store float %226, ptr %282, align 4, !tbaa !51
  br label %283

283:                                              ; preds = %279, %280
  %284 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 3
  %285 = load ptr, ptr %284, align 8, !tbaa !103
  call void @BKE_tracking_marker_clamp(ptr noundef %285, i32 noundef 1) #9
  br label %433

286:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  br i1 %75, label %298, label %287

287:                                              ; preds = %286
  %288 = sitofp i32 %39 to float
  %289 = fdiv float %41, 5.000000e+00
  %290 = fadd float %289, %288
  %291 = load i32, ptr %43, align 4, !tbaa !92
  %292 = sitofp i32 %291 to float
  %293 = load i32, ptr %42, align 4, !tbaa !92
  %294 = sub nsw i32 %293, %291
  %295 = sitofp i32 %294 to float
  %296 = fdiv float %295, 5.000000e+00
  %297 = fadd float %296, %292
  br label %302

298:                                              ; preds = %286
  %299 = sitofp i32 %37 to float
  %300 = load i32, ptr %42, align 4, !tbaa !92
  %301 = sitofp i32 %300 to float
  br label %302

302:                                              ; preds = %298, %287
  %303 = phi float [ %297, %287 ], [ %301, %298 ]
  %304 = phi float [ %290, %287 ], [ %299, %298 ]
  %305 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 12
  %306 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 17
  %307 = load float, ptr %305, align 4, !tbaa !51
  %308 = load float, ptr %306, align 4, !tbaa !51
  %309 = fsub float %307, %308
  store float %309, ptr %7, align 4, !tbaa !51
  %310 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 12, i64 1
  %311 = load float, ptr %310, align 4, !tbaa !51
  %312 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 17, i64 1
  %313 = load float, ptr %312, align 4, !tbaa !51
  %314 = fsub float %311, %313
  %315 = getelementptr inbounds float, ptr %7, i64 1
  store float %314, ptr %315, align 4, !tbaa !51
  %316 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  call void @ED_clip_point_stable_pos(ptr noundef %9, ptr noundef %10, float noundef %304, float noundef %303, ptr noundef nonnull %8, ptr noundef nonnull %316) #9
  %317 = load float, ptr %306, align 4, !tbaa !51
  %318 = load float, ptr %8, align 4, !tbaa !51
  %319 = fsub float %318, %317
  store float %319, ptr %8, align 4, !tbaa !51
  %320 = load float, ptr %312, align 4, !tbaa !51
  %321 = load float, ptr %316, align 4, !tbaa !51
  %322 = fsub float %321, %320
  store float %322, ptr %316, align 4, !tbaa !51
  %323 = load float, ptr %7, align 4, !tbaa !51
  %324 = load float, ptr %315, align 4, !tbaa !51
  %325 = fmul float %324, %324
  %326 = call float @llvm.fmuladd.f32(float %323, float %323, float %325)
  %327 = fcmp une float %326, 0.000000e+00
  br i1 %327, label %328, label %340

328:                                              ; preds = %302
  %329 = fmul float %322, %322
  %330 = call float @llvm.fmuladd.f32(float %319, float %319, float %329)
  %331 = call float @sqrtf(float noundef %330) #9
  %332 = load float, ptr %7, align 4, !tbaa !51
  %333 = load float, ptr %315, align 4, !tbaa !51
  %334 = fmul float %333, %333
  %335 = call float @llvm.fmuladd.f32(float %332, float %332, float %334)
  %336 = call float @sqrtf(float noundef %335) #9
  %337 = fdiv float %331, %336
  %338 = fcmp olt float %337, 0.000000e+00
  br i1 %338, label %339, label %340

339:                                              ; preds = %328
  br label %340

340:                                              ; preds = %328, %339, %302
  %341 = phi float [ 0.000000e+00, %339 ], [ %337, %328 ], [ 1.000000e+00, %302 ]
  %342 = call float @angle_signed_v2v2(ptr noundef nonnull %7, ptr noundef nonnull %8) #9
  %343 = fneg float %342
  %344 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 11
  %345 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 6
  br label %346

346:                                              ; preds = %340, %346
  %347 = phi i64 [ 0, %340 ], [ %382, %346 ]
  %348 = load ptr, ptr %344, align 8, !tbaa !106
  %349 = getelementptr inbounds [2 x float], ptr %348, i64 %347
  %350 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 19, i64 %347
  %351 = load float, ptr %350, align 4, !tbaa !51
  %352 = fmul float %341, %351
  store float %352, ptr %349, align 4, !tbaa !51
  %353 = getelementptr inbounds float, ptr %350, i64 1
  %354 = load float, ptr %353, align 4, !tbaa !51
  %355 = fmul float %341, %354
  %356 = getelementptr inbounds float, ptr %349, i64 1
  store float %355, ptr %356, align 4, !tbaa !51
  %357 = load i32, ptr %44, align 8, !tbaa !112
  %358 = sitofp i32 %357 to float
  %359 = fmul float %352, %358
  %360 = load i32, ptr %345, align 4, !tbaa !113
  %361 = sitofp i32 %360 to float
  %362 = fmul float %355, %361
  %363 = call float @cosf(float %342)
  %364 = call float @sinf(float noundef %343) #9
  %365 = fneg float %362
  %366 = fmul float %364, %365
  %367 = call float @llvm.fmuladd.f32(float %359, float %363, float %366)
  %368 = load i32, ptr %44, align 8, !tbaa !112
  %369 = sitofp i32 %368 to float
  %370 = fdiv float %367, %369
  %371 = load ptr, ptr %344, align 8, !tbaa !106
  %372 = getelementptr inbounds [2 x float], ptr %371, i64 %347
  store float %370, ptr %372, align 4, !tbaa !51
  %373 = call float @cosf(float %342)
  %374 = call float @sinf(float noundef %343) #9
  %375 = fmul float %359, %374
  %376 = call float @llvm.fmuladd.f32(float %362, float %373, float %375)
  %377 = load i32, ptr %345, align 4, !tbaa !113
  %378 = sitofp i32 %377 to float
  %379 = fdiv float %376, %378
  %380 = load ptr, ptr %344, align 8, !tbaa !106
  %381 = getelementptr inbounds [2 x float], ptr %380, i64 %347, i64 1
  store float %379, ptr %381, align 4, !tbaa !51
  %382 = add nuw nsw i64 %347, 1
  %383 = icmp eq i64 %382, 4
  br i1 %383, label %384, label %346, !llvm.loop !130

384:                                              ; preds = %346
  %385 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 3
  %386 = load ptr, ptr %385, align 8, !tbaa !103
  call void @BKE_tracking_marker_clamp(ptr noundef %386, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  br label %433

387:                                              ; preds = %71
  %388 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 1
  %389 = load i16, ptr %388, align 2, !tbaa !101
  %390 = icmp eq i16 %389, 1
  %391 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 16, i64 1
  br i1 %390, label %392, label %412

392:                                              ; preds = %387
  %393 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 15
  %394 = load float, ptr %393, align 4, !tbaa !51
  %395 = fsub float %394, %79
  %396 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 7
  %397 = load ptr, ptr %396, align 8, !tbaa !110
  store float %395, ptr %397, align 4, !tbaa !51
  %398 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 16
  %399 = load float, ptr %398, align 4, !tbaa !51
  %400 = fadd float %79, %399
  %401 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 8
  %402 = load ptr, ptr %401, align 8, !tbaa !111
  store float %400, ptr %402, align 4, !tbaa !51
  %403 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 15, i64 1
  %404 = load float, ptr %403, align 4, !tbaa !51
  %405 = fadd float %78, %404
  %406 = getelementptr inbounds float, ptr %397, i64 1
  store float %405, ptr %406, align 4, !tbaa !51
  %407 = load float, ptr %391, align 4, !tbaa !51
  %408 = fsub float %407, %78
  %409 = getelementptr inbounds float, ptr %402, i64 1
  store float %408, ptr %409, align 4, !tbaa !51
  %410 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 3
  %411 = load ptr, ptr %410, align 8, !tbaa !103
  tail call void @BKE_tracking_marker_clamp(ptr noundef %411, i32 noundef 3) #9
  br label %430

412:                                              ; preds = %387
  %413 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 7
  %414 = load ptr, ptr %413, align 8, !tbaa !110
  %415 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 15
  %416 = load float, ptr %415, align 4, !tbaa !51
  %417 = fadd float %79, %416
  store float %417, ptr %414, align 4, !tbaa !51
  %418 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 15, i64 1
  %419 = load float, ptr %418, align 4, !tbaa !51
  %420 = fadd float %78, %419
  %421 = getelementptr inbounds float, ptr %414, i64 1
  store float %420, ptr %421, align 4, !tbaa !51
  %422 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 8
  %423 = load ptr, ptr %422, align 8, !tbaa !111
  %424 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 16
  %425 = load float, ptr %424, align 4, !tbaa !51
  %426 = fadd float %79, %425
  store float %426, ptr %423, align 4, !tbaa !51
  %427 = load float, ptr %391, align 4, !tbaa !51
  %428 = fadd float %78, %427
  %429 = getelementptr inbounds float, ptr %423, i64 1
  store float %428, ptr %429, align 4, !tbaa !51
  br label %430

430:                                              ; preds = %412, %392
  %431 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 3
  %432 = load ptr, ptr %431, align 8, !tbaa !103
  tail call void @BKE_tracking_marker_clamp(ptr noundef %432, i32 noundef 4) #9
  br label %433

433:                                              ; preds = %71, %107, %211, %384, %283, %196, %430, %99
  %434 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 3
  %435 = load ptr, ptr %434, align 8, !tbaa !103
  %436 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %435, i64 0, i32 5
  %437 = load i32, ptr %436, align 4, !tbaa !94
  %438 = and i32 %437, -3
  store i32 %438, ptr %436, align 4, !tbaa !94
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef null) #9
  br label %555

439:                                              ; preds = %3
  %440 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %441 = load i16, ptr %440, align 2, !tbaa !124
  %442 = icmp eq i16 %441, 2
  br i1 %442, label %443, label %555

443:                                              ; preds = %439
  %444 = load i16, ptr %12, align 8, !tbaa !99
  %445 = icmp eq i16 %444, 1
  br i1 %445, label %446, label %483

446:                                              ; preds = %443
  %447 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %448 = tail call ptr @ED_space_clip_get_clip(ptr noundef %447) #9
  %449 = getelementptr inbounds %struct.MovieClip, ptr %448, i64 0, i32 11
  %450 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %449) #9
  %451 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %447) #9
  %452 = load ptr, ptr %450, align 8, !tbaa !93
  %453 = icmp eq ptr %452, null
  br i1 %453, label %483, label %454

454:                                              ; preds = %446
  %455 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 2
  br label %456

456:                                              ; preds = %454, %480
  %457 = phi ptr [ %452, %454 ], [ %481, %480 ]
  %458 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %457, i64 0, i32 8
  %459 = load i32, ptr %458, align 4, !tbaa !77
  %460 = and i32 %459, 8
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %462, label %480

462:                                              ; preds = %456
  %463 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %457, i64 0, i32 4
  %464 = load i32, ptr %463, align 8, !tbaa !131
  %465 = icmp sgt i32 %464, 0
  br i1 %465, label %466, label %480

466:                                              ; preds = %462
  %467 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %457, i64 0, i32 3
  %468 = load ptr, ptr %467, align 8, !tbaa !132
  %469 = load ptr, ptr %455, align 8, !tbaa !102
  %470 = zext nneg i32 %464 to i64
  br label %474

471:                                              ; preds = %474
  %472 = add nuw nsw i64 %475, 1
  %473 = icmp eq i64 %472, %470
  br i1 %473, label %480, label %474, !llvm.loop !133

474:                                              ; preds = %466, %471
  %475 = phi i64 [ 0, %466 ], [ %472, %471 ]
  %476 = getelementptr inbounds ptr, ptr %468, i64 %475
  %477 = load ptr, ptr %476, align 8, !tbaa !93
  %478 = icmp eq ptr %477, %469
  br i1 %478, label %479, label %471

479:                                              ; preds = %474
  tail call void @BKE_tracking_track_plane_from_existing_motion(ptr noundef nonnull %457, i32 noundef %451) #9
  br label %480

480:                                              ; preds = %471, %462, %479, %456
  %481 = load ptr, ptr %457, align 8, !tbaa !93
  %482 = icmp eq ptr %481, null
  br i1 %482, label %483, label %456, !llvm.loop !134

483:                                              ; preds = %480, %446, %443
  %484 = load ptr, ptr %11, align 8, !tbaa !123
  %485 = getelementptr inbounds %struct.SlideMarkerData, ptr %484, i64 0, i32 20
  %486 = load ptr, ptr %485, align 8, !tbaa !107
  %487 = icmp eq ptr %486, null
  br i1 %487, label %490, label %488

488:                                              ; preds = %483
  %489 = load ptr, ptr @MEM_freeN, align 8, !tbaa !93
  tail call void %489(ptr noundef nonnull %486) #9
  br label %490

490:                                              ; preds = %483, %488
  %491 = load ptr, ptr @MEM_freeN, align 8, !tbaa !93
  tail call void %491(ptr noundef %484) #9
  %492 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  tail call void @WM_cursor_set(ptr noundef %492, i32 noundef 1006) #9
  br label %555

493:                                              ; preds = %3
  %494 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 2
  %495 = load ptr, ptr %494, align 8, !tbaa !102
  %496 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 3
  %497 = load ptr, ptr %496, align 8, !tbaa !103
  %498 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %497, i64 0, i32 1
  %499 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %498, ptr noundef nonnull align 4 dereferenceable(32) %499, i64 32, i1 false)
  %500 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %497, i64 0, i32 2
  %501 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 15
  %502 = load float, ptr %501, align 4, !tbaa !51
  store float %502, ptr %500, align 4, !tbaa !51
  %503 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 15, i64 1
  %504 = load float, ptr %503, align 4, !tbaa !51
  %505 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %497, i64 0, i32 2, i64 1
  store float %504, ptr %505, align 4, !tbaa !51
  %506 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %497, i64 0, i32 3
  %507 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 16
  %508 = load float, ptr %507, align 4, !tbaa !51
  store float %508, ptr %506, align 4, !tbaa !51
  %509 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 16, i64 1
  %510 = load float, ptr %509, align 4, !tbaa !51
  %511 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %497, i64 0, i32 3, i64 1
  store float %510, ptr %511, align 4, !tbaa !51
  %512 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 17
  %513 = load float, ptr %512, align 4, !tbaa !51
  store float %513, ptr %497, align 4, !tbaa !51
  %514 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 17, i64 1
  %515 = load float, ptr %514, align 4, !tbaa !51
  %516 = getelementptr inbounds float, ptr %497, i64 1
  store float %515, ptr %516, align 4, !tbaa !51
  %517 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %495, i64 0, i32 7
  %518 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 18
  %519 = load float, ptr %518, align 4, !tbaa !51
  store float %519, ptr %517, align 4, !tbaa !51
  %520 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 18, i64 1
  %521 = load float, ptr %520, align 4, !tbaa !51
  %522 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %495, i64 0, i32 7, i64 1
  store float %521, ptr %522, align 4, !tbaa !51
  %523 = getelementptr inbounds %struct.SlideMarkerData, ptr %12, i64 0, i32 20
  %524 = load ptr, ptr %523, align 8, !tbaa !107
  %525 = icmp eq ptr %524, null
  br i1 %525, label %545, label %526

526:                                              ; preds = %493
  %527 = load ptr, ptr %494, align 8, !tbaa !102
  %528 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %527, i64 0, i32 8
  %529 = load i32, ptr %528, align 8, !tbaa !88
  %530 = icmp sgt i32 %529, 0
  br i1 %530, label %531, label %545

531:                                              ; preds = %526
  %532 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %527, i64 0, i32 10
  %533 = load ptr, ptr %532, align 8, !tbaa !108
  %534 = zext nneg i32 %529 to i64
  br label %535

535:                                              ; preds = %531, %535
  %536 = phi i64 [ 0, %531 ], [ %543, %535 ]
  %537 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %533, i64 %536
  %538 = getelementptr inbounds [2 x float], ptr %524, i64 %536
  %539 = load float, ptr %538, align 4, !tbaa !51
  store float %539, ptr %537, align 4, !tbaa !51
  %540 = getelementptr inbounds float, ptr %538, i64 1
  %541 = load float, ptr %540, align 4, !tbaa !51
  %542 = getelementptr inbounds float, ptr %537, i64 1
  store float %541, ptr %542, align 4, !tbaa !51
  %543 = add nuw nsw i64 %536, 1
  %544 = icmp eq i64 %543, %534
  br i1 %544, label %545, label %535, !llvm.loop !135

545:                                              ; preds = %535, %526, %493
  %546 = load ptr, ptr %11, align 8, !tbaa !123
  %547 = getelementptr inbounds %struct.SlideMarkerData, ptr %546, i64 0, i32 20
  %548 = load ptr, ptr %547, align 8, !tbaa !107
  %549 = icmp eq ptr %548, null
  br i1 %549, label %552, label %550

550:                                              ; preds = %545
  %551 = load ptr, ptr @MEM_freeN, align 8, !tbaa !93
  tail call void %551(ptr noundef nonnull %548) #9
  br label %552

552:                                              ; preds = %545, %550
  %553 = load ptr, ptr @MEM_freeN, align 8, !tbaa !93
  tail call void %553(ptr noundef %546) #9
  %554 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  tail call void @WM_cursor_set(ptr noundef %554, i32 noundef 1006) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef null) #9
  br label %555

555:                                              ; preds = %433, %3, %439, %552, %490
  %556 = phi i32 [ 2, %552 ], [ 4, %490 ], [ 1, %439 ], [ 1, %3 ], [ 1, %433 ]
  ret i32 %556
}

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_track_markers(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @track_markers_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @track_markers_invoke, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @track_markers_modal, ptr %6, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #9
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #9
  %13 = load ptr, ptr %8, align 8, !tbaa !48
  %14 = tail call ptr @RNA_def_string(ptr noundef %13, ptr noundef nonnull @.str.30, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #9
  tail call void @RNA_def_property_flag(ptr noundef %14, i32 noundef 268435456) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @track_markers_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.MovieClipUser, align 8
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store i64 0, ptr %3, align 8
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.24) #9
  %10 = trunc i32 %9 to i8
  %11 = load ptr, ptr %7, align 8, !tbaa !49
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.27) #9
  %13 = trunc i32 %12 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %14 = load ptr, ptr %7, align 8, !tbaa !49
  %15 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %14, ptr noundef nonnull @.str.30) #9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %2
  %18 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  %19 = load ptr, ptr %7, align 8, !tbaa !49
  call void @RNA_string_get(ptr noundef %19, ptr noundef nonnull @.str.30, ptr noundef nonnull %5) #9
  %20 = getelementptr inbounds %struct.Main, ptr %18, i64 0, i32 42
  %21 = call ptr @BLI_findstring(ptr noundef nonnull %20, ptr noundef nonnull %5, i32 noundef 34) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !136
  %26 = sitofp i32 %25 to float
  %27 = call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef nonnull %21, float noundef %26) #9
  %28 = fptosi float %27 to i32
  store i32 %28, ptr %3, align 8, !tbaa !155
  br label %29

29:                                               ; preds = %17, %23
  %30 = phi i32 [ %28, %23 ], [ undef, %17 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  br i1 %22, label %89, label %38

31:                                               ; preds = %2
  %32 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %89, label %34

34:                                               ; preds = %31
  %35 = tail call ptr @ED_space_clip_get_clip(ptr noundef nonnull %32) #9
  %36 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef nonnull %32) #9
  %37 = getelementptr inbounds %struct.SpaceClip, ptr %32, i64 0, i32 9
  br label %38

38:                                               ; preds = %29, %34
  %39 = phi i32 [ %30, %29 ], [ %36, %34 ]
  %40 = phi ptr [ %3, %29 ], [ %37, %34 ]
  %41 = phi ptr [ %21, %29 ], [ %35, %34 ]
  %42 = phi ptr [ null, %29 ], [ %32, %34 ]
  %43 = call fastcc i32 @track_count_markers(ptr noundef %42, ptr noundef %41, i32 noundef %39)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %89, label %45

45:                                               ; preds = %38
  call fastcc void @track_init_markers(ptr noundef %42, ptr noundef %41, i32 noundef %39, ptr noundef nonnull %4)
  %46 = icmp eq i8 %10, 0
  %47 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 6
  %48 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 7
  %49 = select i1 %46, ptr %48, ptr %47
  %50 = load i32, ptr %49, align 4, !tbaa !92
  %51 = load i32, ptr %4, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %45
  br i1 %46, label %57, label %54

54:                                               ; preds = %53
  %55 = sub nsw i32 %39, %51
  %56 = call i32 @llvm.smax.i32(i32 %50, i32 %55)
  br label %60

57:                                               ; preds = %53
  %58 = add nsw i32 %51, %39
  %59 = call i32 @llvm.smin.i32(i32 %50, i32 %58)
  br label %60

60:                                               ; preds = %54, %57, %45
  %61 = phi i32 [ %56, %54 ], [ %59, %57 ], [ %50, %45 ]
  %62 = sitofp i32 %61 to float
  %63 = call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef %41, float noundef %62) #9
  %64 = fptosi float %63 to i32
  %65 = and i32 %9, 255
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %60
  %68 = icmp slt i32 %39, %64
  br i1 %68, label %89, label %71

69:                                               ; preds = %60
  %70 = icmp sgt i32 %39, %64
  br i1 %70, label %89, label %71

71:                                               ; preds = %69, %67
  %72 = call ptr @BKE_tracking_context_new(ptr noundef %41, ptr noundef nonnull %40, i8 noundef zeroext %10, i8 noundef zeroext %13) #9
  %73 = select i1 %46, i32 1, i32 -1
  %74 = icmp eq i8 %13, 0
  br label %75

75:                                               ; preds = %81, %71
  %76 = phi i32 [ %39, %71 ], [ %82, %81 ]
  %77 = icmp eq i32 %76, %64
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = call zeroext i8 @BKE_tracking_context_step(ptr noundef %72) #9
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = add nsw i32 %76, %73
  br i1 %74, label %83, label %75, !llvm.loop !156

83:                                               ; preds = %81, %78, %75
  %84 = phi i32 [ %82, %81 ], [ %76, %78 ], [ %76, %75 ]
  call void @BKE_tracking_context_sync(ptr noundef %72) #9
  call void @BKE_tracking_context_finish(ptr noundef %72) #9
  call void @BKE_tracking_context_free(ptr noundef %72) #9
  %85 = sitofp i32 %84 to float
  %86 = call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef %41, float noundef %85) #9
  %87 = fptosi float %86 to i32
  %88 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  store i32 %87, ptr %88, align 8, !tbaa !136
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544322, ptr noundef %41) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %6) #9
  br label %89

89:                                               ; preds = %69, %67, %38, %31, %29, %83
  %90 = phi i32 [ 4, %83 ], [ 2, %29 ], [ 2, %31 ], [ 2, %38 ], [ 2, %67 ], [ 2, %69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret i32 %90
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @track_markers_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  %6 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.24) #9
  %10 = load ptr, ptr %7, align 8, !tbaa !49
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.27) #9
  %12 = icmp eq ptr %6, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !157
  tail call void @BKE_report(ptr noundef %15, i32 noundef 32, ptr noundef nonnull @.str.251) #9
  br label %119

16:                                               ; preds = %3
  %17 = tail call ptr @ED_space_clip_get_clip(ptr noundef nonnull %6) #9
  %18 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef nonnull %6) #9
  %19 = tail call ptr @CTX_wm_manager(ptr noundef %0) #9
  %20 = tail call zeroext i8 @WM_jobs_test(ptr noundef %19, ptr noundef %5, i32 noundef 0) #9
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %119

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.MovieClip, ptr %17, i64 0, i32 12
  %24 = load ptr, ptr %23, align 8, !tbaa !158
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %119

26:                                               ; preds = %22
  %27 = tail call fastcc i32 @track_count_markers(ptr noundef nonnull %6, ptr noundef %17, i32 noundef %18)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %119, label %29

29:                                               ; preds = %26
  %30 = and i32 %11, 255
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = tail call i32 @track_markers_exec(ptr noundef %0, ptr noundef %1), !range !161
  br label %119

34:                                               ; preds = %29
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !93
  %36 = tail call ptr %35(i64 noundef 64, ptr noundef nonnull @.str.252) #9
  %37 = and i32 %9, 255
  %38 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %39 = tail call ptr @ED_space_clip_get_clip(ptr noundef %38) #9
  %40 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %41 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %38) #9
  call fastcc void @track_init_markers(ptr noundef %38, ptr noundef %39, i32 noundef %41, ptr noundef nonnull %4)
  %42 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %38) #9
  %43 = getelementptr inbounds %struct.TrackMarkersJob, ptr %36, i64 0, i32 1
  store i32 %42, ptr %43, align 8, !tbaa !162
  %44 = getelementptr inbounds %struct.TrackMarkersJob, ptr %36, i64 0, i32 5
  store ptr %39, ptr %44, align 8, !tbaa !164
  %45 = getelementptr inbounds %struct.TrackMarkersJob, ptr %36, i64 0, i32 4
  store i32 %37, ptr %45, align 4, !tbaa !165
  %46 = icmp eq i32 %37, 0
  %47 = getelementptr inbounds %struct.TrackMarkersJob, ptr %36, i64 0, i32 2
  %48 = getelementptr inbounds %struct.Scene, ptr %40, i64 0, i32 22, i32 7
  %49 = getelementptr inbounds %struct.Scene, ptr %40, i64 0, i32 22, i32 6
  %50 = select i1 %46, ptr %48, ptr %49
  %51 = load i32, ptr %50, align 4, !tbaa !92
  store i32 %51, ptr %47, align 4, !tbaa !166
  %52 = load i32, ptr %4, align 4, !tbaa !92
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %34
  %55 = getelementptr inbounds %struct.TrackMarkersJob, ptr %36, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !166
  br i1 %46, label %60, label %57

57:                                               ; preds = %54
  %58 = sub nsw i32 %42, %52
  %59 = tail call i32 @llvm.smax.i32(i32 %56, i32 %58)
  br label %63

60:                                               ; preds = %54
  %61 = add nsw i32 %52, %42
  %62 = tail call i32 @llvm.smin.i32(i32 %56, i32 %61)
  br label %63

63:                                               ; preds = %57, %60
  %64 = phi i32 [ %62, %60 ], [ %59, %57 ]
  store i32 %64, ptr %55, align 4, !tbaa !166
  br label %65

65:                                               ; preds = %63, %34
  %66 = getelementptr inbounds %struct.TrackMarkersJob, ptr %36, i64 0, i32 2
  %67 = load i32, ptr %66, align 4, !tbaa !166
  %68 = sitofp i32 %67 to float
  %69 = tail call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef %39, float noundef %68) #9
  %70 = fptosi float %69 to i32
  store i32 %70, ptr %66, align 4, !tbaa !166
  %71 = getelementptr inbounds %struct.MovieClip, ptr %39, i64 0, i32 11, i32 0, i32 12
  %72 = load i16, ptr %71, align 2, !tbaa !167
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.Scene, ptr %40, i64 0, i32 22, i32 55
  %76 = load i16, ptr %75, align 4, !tbaa !168
  %77 = sitofp i16 %76 to float
  %78 = fdiv float 1.000000e+00, %77
  %79 = fmul float %78, 1.000000e+03
  %80 = getelementptr inbounds %struct.TrackMarkersJob, ptr %36, i64 0, i32 6
  store float %79, ptr %80, align 8, !tbaa !169
  switch i16 %72, label %86 [
    i16 2, label %83
    i16 4, label %81
    i16 5, label %82
  ]

81:                                               ; preds = %74
  br label %83

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %74, %81, %82
  %84 = phi float [ 5.000000e-01, %82 ], [ 4.000000e+00, %81 ], [ 2.000000e+00, %74 ]
  %85 = fmul float %79, %84
  store float %85, ptr %80, align 8, !tbaa !169
  br label %86

86:                                               ; preds = %83, %74, %65
  %87 = getelementptr inbounds %struct.SpaceClip, ptr %38, i64 0, i32 9
  %88 = trunc i32 %9 to i8
  %89 = tail call ptr @BKE_tracking_context_new(ptr noundef %39, ptr noundef nonnull %87, i8 noundef zeroext %88, i8 noundef zeroext 1) #9
  store ptr %89, ptr %36, align 8, !tbaa !170
  %90 = getelementptr inbounds %struct.MovieClip, ptr %39, i64 0, i32 12
  store ptr %89, ptr %90, align 8, !tbaa !158
  %91 = load i32, ptr %43, align 8, !tbaa !162
  %92 = getelementptr inbounds %struct.TrackMarkersJob, ptr %36, i64 0, i32 3
  store i32 %91, ptr %92, align 8, !tbaa !171
  %93 = getelementptr inbounds %struct.TrackMarkersJob, ptr %36, i64 0, i32 8
  store ptr %40, ptr %93, align 8, !tbaa !172
  %94 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  %95 = getelementptr inbounds %struct.TrackMarkersJob, ptr %36, i64 0, i32 7
  store ptr %94, ptr %95, align 8, !tbaa !173
  %96 = tail call ptr @CTX_wm_screen(ptr noundef %0) #9
  %97 = getelementptr inbounds %struct.TrackMarkersJob, ptr %36, i64 0, i32 9
  store ptr %96, ptr %97, align 8, !tbaa !174
  %98 = load i32, ptr %43, align 8, !tbaa !162
  %99 = load i32, ptr %66, align 4, !tbaa !166
  br i1 %46, label %102, label %100

100:                                              ; preds = %86
  %101 = icmp slt i32 %98, %99
  br i1 %101, label %116, label %104

102:                                              ; preds = %86
  %103 = icmp sgt i32 %98, %99
  br i1 %103, label %116, label %104

104:                                              ; preds = %102, %100
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %105 = tail call ptr @CTX_wm_manager(ptr noundef %0) #9
  %106 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  %107 = tail call ptr @WM_jobs_get(ptr noundef %105, ptr noundef %106, ptr noundef %5, ptr noundef nonnull @.str.21, i32 noundef 4, i32 noundef 11) #9
  tail call void @WM_jobs_customdata_set(ptr noundef %107, ptr noundef nonnull %36, ptr noundef nonnull @track_markers_freejob) #9
  %108 = getelementptr inbounds %struct.TrackMarkersJob, ptr %36, i64 0, i32 6
  %109 = load float, ptr %108, align 8, !tbaa !169
  %110 = fcmp ogt float %109, 0.000000e+00
  %111 = fdiv float %109, 1.000000e+03
  %112 = fpext float %111 to double
  %113 = select i1 %110, double %112, double 2.000000e-01
  tail call void @WM_jobs_timer(ptr noundef %107, double noundef %113, i32 noundef 335544322, i32 noundef 0) #9
  tail call void @WM_jobs_callbacks(ptr noundef %107, ptr noundef nonnull @track_markers_startjob, ptr noundef null, ptr noundef nonnull @track_markers_updatejob, ptr noundef nonnull @track_markers_endjob) #9
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !175
  %114 = tail call ptr @CTX_wm_manager(ptr noundef %0) #9
  tail call void @WM_jobs_start(ptr noundef %114, ptr noundef %107) #9
  tail call void @WM_cursor_wait(i8 noundef zeroext 0) #9
  %115 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #9
  br label %119

116:                                              ; preds = %100, %102
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %117 = load ptr, ptr %36, align 8, !tbaa !170
  tail call void @BKE_tracking_context_free(ptr noundef %117) #9
  %118 = load ptr, ptr @MEM_freeN, align 8, !tbaa !93
  tail call void %118(ptr noundef nonnull %36) #9
  br label %119

119:                                              ; preds = %26, %22, %16, %104, %116, %32, %13
  %120 = phi i32 [ 2, %13 ], [ 1, %104 ], [ 2, %116 ], [ %33, %32 ], [ 2, %16 ], [ 2, %22 ], [ 2, %26 ]
  ret i32 %120
}

; Function Attrs: nounwind uwtable
define internal i32 @track_markers_modal(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #9
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  %6 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef %5, i32 noundef 0) #9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !63
  %11 = icmp eq i16 %10, 218
  %12 = select i1 %11, i32 1, i32 8
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ 12, %3 ], [ %12, %8 ]
  ret i32 %14
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_refine_markers(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.34, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.35, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @refine_marker_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @refine_marker_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #9
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.24) #9
  %10 = trunc i32 %9 to i8
  %11 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %3) #9
  %12 = load ptr, ptr %6, align 8, !tbaa !93
  %13 = icmp eq ptr %12, null
  br i1 %13, label %47, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  br label %16

16:                                               ; preds = %14, %44
  %17 = phi ptr [ %12, %14 ], [ %45, %44 ]
  %18 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 13
  %19 = load i32, ptr %18, align 8, !tbaa !83
  %20 = and i32 %19, 32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = and i32 %19, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load i32, ptr %15, align 8, !tbaa !84
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 14
  %31 = load i32, ptr %30, align 4, !tbaa !85
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29, %25
  %35 = and i32 %26, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 15
  %39 = load i32, ptr %38, align 8, !tbaa !86
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37, %29, %22
  %43 = tail call ptr @BKE_tracking_marker_get(ptr noundef nonnull %17, i32 noundef %11) #9
  tail call void @BKE_tracking_refine_marker(ptr noundef %4, ptr noundef nonnull %17, ptr noundef %43, i8 noundef zeroext %10) #9
  br label %44

44:                                               ; preds = %16, %34, %37, %42
  %45 = load ptr, ptr %17, align 8, !tbaa !93
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %16, !llvm.loop !177

47:                                               ; preds = %44, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544322, ptr noundef %4) #9
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_solve_camera(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.37, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.38, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @solve_camera_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @solve_camera_invoke, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @solve_camera_modal, ptr %6, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %8, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @solve_camera_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false)
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !93
  %5 = tail call ptr %4(i64 noundef 296, ptr noundef nonnull @.str.253) #9
  %6 = call fastcc i32 @solve_camera_initjob(ptr noundef %0, ptr noundef %5, ptr noundef %1, ptr noundef nonnull %3)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i8, ptr %3, align 16, !tbaa !178
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !157
  call void @BKE_report(ptr noundef %13, i32 noundef 32, ptr noundef nonnull %3) #9
  br label %18

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.SolveCameraJob, ptr %5, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !179
  %17 = getelementptr inbounds %struct.SolveCameraJob, ptr %5, i64 0, i32 4
  call void @BKE_tracking_reconstruction_solve(ptr noundef %16, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %17, i32 noundef 256) #9
  br label %18

18:                                               ; preds = %8, %11, %14
  %19 = phi i32 [ 4, %14 ], [ 2, %11 ], [ 2, %8 ]
  call void @solve_camera_freejob(ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #9
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @solve_camera_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca [256 x i8], align 16
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  %6 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %7 = tail call ptr @ED_space_clip_get_clip(ptr noundef %6) #9
  %8 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11
  %9 = tail call ptr @BKE_tracking_get_active_reconstruction(ptr noundef nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false)
  %10 = tail call ptr @CTX_wm_manager(ptr noundef %0) #9
  %11 = tail call zeroext i8 @WM_jobs_test(ptr noundef %10, ptr noundef %5, i32 noundef 0) #9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %3
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !93
  %15 = tail call ptr %14(i64 noundef 296, ptr noundef nonnull @.str.253) #9
  %16 = call fastcc i32 @solve_camera_initjob(ptr noundef %0, ptr noundef %15, ptr noundef %1, ptr noundef nonnull %4)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load i8, ptr %4, align 16, !tbaa !178
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !157
  call void @BKE_report(ptr noundef %23, i32 noundef 32, ptr noundef nonnull %4) #9
  br label %24

24:                                               ; preds = %21, %18
  call void @solve_camera_freejob(ptr noundef %15)
  br label %36

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11, i32 11
  %27 = load ptr, ptr %26, align 8, !tbaa !181
  %28 = call ptr @BLI_strncpy(ptr noundef %27, ptr noundef nonnull @.str.257, i64 noundef 256) #9
  %29 = load i32, ptr %9, align 8, !tbaa !182
  %30 = and i32 %29, -2
  store i32 %30, ptr %9, align 8, !tbaa !182
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544322, ptr noundef %7) #9
  %31 = call ptr @CTX_wm_manager(ptr noundef %0) #9
  %32 = call ptr @CTX_wm_window(ptr noundef %0) #9
  %33 = call ptr @WM_jobs_get(ptr noundef %31, ptr noundef %32, ptr noundef %5, ptr noundef nonnull @.str.36, i32 noundef 4, i32 noundef 12) #9
  call void @WM_jobs_customdata_set(ptr noundef %33, ptr noundef %15, ptr noundef nonnull @solve_camera_freejob) #9
  call void @WM_jobs_timer(ptr noundef %33, double noundef 1.000000e-01, i32 noundef 335544322, i32 noundef 0) #9
  call void @WM_jobs_callbacks(ptr noundef %33, ptr noundef nonnull @solve_camera_startjob, ptr noundef null, ptr noundef nonnull @solve_camera_updatejob, ptr noundef null) #9
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !175
  %34 = call ptr @CTX_wm_manager(ptr noundef %0) #9
  call void @WM_jobs_start(ptr noundef %34, ptr noundef %33) #9
  call void @WM_cursor_wait(i8 noundef zeroext 0) #9
  %35 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #9
  br label %36

36:                                               ; preds = %3, %25, %24
  %37 = phi i32 [ 1, %25 ], [ 2, %24 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #9
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @solve_camera_modal(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #9
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  %6 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef %5, i32 noundef 0) #9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !63
  %11 = icmp eq i16 %10, 218
  %12 = select i1 %11, i32 1, i32 8
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ 12, %3 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_clear_solution(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.41, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @clear_solution_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @clear_solution_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #9
  %7 = tail call ptr @BKE_tracking_get_active_reconstruction(ptr noundef nonnull %5) #9
  %8 = load ptr, ptr %6, align 8, !tbaa !93
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2, %10
  %11 = phi ptr [ %15, %10 ], [ %8, %2 ]
  %12 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %11, i64 0, i32 13
  %13 = load i32, ptr %12, align 8, !tbaa !83
  %14 = and i32 %13, -3
  store i32 %14, ptr %12, align 8, !tbaa !83
  %15 = load ptr, ptr %11, align 8, !tbaa !93
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %10, !llvm.loop !183

17:                                               ; preds = %10, %2
  %18 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %7, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !184
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !93
  tail call void %22(ptr noundef nonnull %19) #9
  br label %23

23:                                               ; preds = %21, %17
  store ptr null, ptr %18, align 8, !tbaa !184
  %24 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %7, i64 0, i32 3
  store i32 0, ptr %24, align 4, !tbaa !185
  %25 = load i32, ptr %7, align 8, !tbaa !182
  %26 = and i32 %25, -2
  store i32 %26, ptr %7, align 8, !tbaa !182
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544322, ptr noundef %4) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef null) #9
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_clear_track_path(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.51, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.52, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.53, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @clear_track_path_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.54, ptr noundef nonnull @CLIP_OT_clear_track_path.clear_path_actions, i32 noundef 1, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56) #9
  %10 = load ptr, ptr %7, align 8, !tbaa !48
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.57, i32 noundef 0, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @clear_track_path_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #9
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.54) #9
  %10 = load ptr, ptr %7, align 8, !tbaa !49
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.57) #9
  %12 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %3) #9
  %13 = and i32 %11, 255
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load ptr, ptr %6, align 8, !tbaa !93
  %17 = icmp eq ptr %16, null
  br i1 %17, label %54, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  br label %24

20:                                               ; preds = %2
  %21 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %5) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %54, label %23

23:                                               ; preds = %20
  tail call void @BKE_tracking_track_path_clear(ptr noundef nonnull %21, i32 noundef %12, i32 noundef %9) #9
  br label %54

24:                                               ; preds = %18, %51
  %25 = phi ptr [ %16, %18 ], [ %52, %51 ]
  %26 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %25, i64 0, i32 13
  %27 = load i32, ptr %26, align 8, !tbaa !83
  %28 = and i32 %27, 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %24
  %31 = and i32 %27, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = load i32, ptr %19, align 8, !tbaa !84
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %25, i64 0, i32 14
  %39 = load i32, ptr %38, align 4, !tbaa !85
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37, %33
  %43 = and i32 %34, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %25, i64 0, i32 15
  %47 = load i32, ptr %46, align 8, !tbaa !86
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45, %37, %30
  tail call void @BKE_tracking_track_path_clear(ptr noundef nonnull %25, i32 noundef %12, i32 noundef %9) #9
  br label %51

51:                                               ; preds = %50, %45, %42, %24
  %52 = load ptr, ptr %25, align 8, !tbaa !93
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %24, !llvm.loop !186

54:                                               ; preds = %51, %15, %20, %23
  tail call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %5) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544322, ptr noundef %4) #9
  ret i32 4
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_disable_markers(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.69, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.70, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.71, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @disable_markers_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.54, ptr noundef nonnull @CLIP_OT_disable_markers.actions_items, i32 noundef 0, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.72) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @disable_markers_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #9
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.54) #9
  %11 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %3) #9
  %12 = icmp eq ptr %7, null
  br i1 %12, label %62, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  br label %15

15:                                               ; preds = %13, %59
  %16 = phi ptr [ %7, %13 ], [ %60, %59 ]
  %17 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 13
  %18 = load i32, ptr %17, align 8, !tbaa !83
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %59

21:                                               ; preds = %15
  %22 = and i32 %18, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = load i32, ptr %14, align 8, !tbaa !84
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 14
  %30 = load i32, ptr %29, align 4, !tbaa !85
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28, %24
  %34 = and i32 %25, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %59, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 15
  %38 = load i32, ptr %37, align 8, !tbaa !86
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  %41 = and i32 %18, 64
  %42 = icmp eq i32 %41, 0
  %43 = and i1 %42, %40
  br i1 %43, label %47, label %59

44:                                               ; preds = %28, %21
  %45 = and i32 %18, 64
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %36, %44
  %48 = tail call ptr @BKE_tracking_marker_ensure(ptr noundef nonnull %16, i32 noundef %11) #9
  %49 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %48, i64 0, i32 5
  %50 = load i32, ptr %49, align 4, !tbaa !94
  switch i32 %10, label %55 [
    i32 0, label %51
    i32 1, label %53
  ]

51:                                               ; preds = %47
  %52 = or i32 %50, 1
  br label %57

53:                                               ; preds = %47
  %54 = and i32 %50, -2
  br label %57

55:                                               ; preds = %47
  %56 = xor i32 %50, 1
  br label %57

57:                                               ; preds = %53, %55, %51
  %58 = phi i32 [ %52, %51 ], [ %56, %55 ], [ %54, %53 ]
  store i32 %58, ptr %49, align 4, !tbaa !94
  br label %59

59:                                               ; preds = %57, %44, %36, %33, %15
  %60 = load ptr, ptr %16, align 8, !tbaa !81
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %15, !llvm.loop !187

62:                                               ; preds = %59, %2
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544322, ptr noundef %4) #9
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_set_origin(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.73, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.74, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.75, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @set_origin_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @set_orientation_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.76, i32 noundef 0, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @set_origin_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %7 = tail call ptr @ED_space_clip_get_clip(ptr noundef %6) #9
  %8 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !188
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = tail call ptr @BKE_object_movieclip_get(ptr noundef %9, ptr noundef nonnull %11, i8 noundef zeroext 0) #9
  %15 = icmp eq ptr %14, %7
  br i1 %15, label %36, label %16

16:                                               ; preds = %13, %2
  %17 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !93
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %16, %33
  %21 = phi ptr [ %34, %33 ], [ %18, %16 ]
  %22 = getelementptr inbounds %struct.Base, ptr %21, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !189
  %24 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !191
  %26 = icmp eq i16 %25, 11
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = tail call ptr @BKE_object_movieclip_get(ptr noundef %9, ptr noundef %23, i8 noundef zeroext 0) #9
  %29 = icmp eq ptr %28, %7
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.Base, ptr %21, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !189
  br label %36

33:                                               ; preds = %27, %20
  %34 = load ptr, ptr %21, align 8, !tbaa !93
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %20, !llvm.loop !194

36:                                               ; preds = %33, %13, %16, %30
  %37 = phi ptr [ %11, %13 ], [ %32, %30 ], [ %11, %16 ], [ %11, %33 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %38 = tail call fastcc i32 @count_selected_bundles(ptr noundef %0)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !157
  tail call void @BKE_report(ptr noundef %42, i32 noundef 32, ptr noundef nonnull @.str.258) #9
  br label %196

43:                                               ; preds = %36
  %44 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %45 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %46 = tail call ptr @ED_space_clip_get_clip(ptr noundef %45) #9
  %47 = getelementptr inbounds %struct.MovieClip, ptr %46, i64 0, i32 11
  %48 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %47) #9
  %49 = getelementptr inbounds %struct.MovieTrackingObject, ptr %48, i64 0, i32 3
  %50 = load i32, ptr %49, align 8, !tbaa !195
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %77, label %53

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.Scene, ptr %44, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !188
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = tail call ptr @BKE_object_movieclip_get(ptr noundef %44, ptr noundef nonnull %55, i8 noundef zeroext 0) #9
  %59 = icmp eq ptr %58, %46
  br i1 %59, label %85, label %60

60:                                               ; preds = %57, %53
  %61 = getelementptr inbounds %struct.Scene, ptr %44, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !93
  %63 = icmp eq ptr %62, null
  br i1 %63, label %85, label %64

64:                                               ; preds = %60, %74
  %65 = phi ptr [ %75, %74 ], [ %62, %60 ]
  %66 = getelementptr inbounds %struct.Base, ptr %65, i64 0, i32 7
  %67 = load ptr, ptr %66, align 8, !tbaa !189
  %68 = getelementptr inbounds %struct.Object, ptr %67, i64 0, i32 3
  %69 = load i16, ptr %68, align 8, !tbaa !191
  %70 = icmp eq i16 %69, 11
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = tail call ptr @BKE_object_movieclip_get(ptr noundef %44, ptr noundef %67, i8 noundef zeroext 0) #9
  %73 = icmp eq ptr %72, %46
  br i1 %73, label %81, label %74

74:                                               ; preds = %71, %64
  %75 = load ptr, ptr %65, align 8, !tbaa !93
  %76 = icmp eq ptr %75, null
  br i1 %76, label %85, label %64, !llvm.loop !194

77:                                               ; preds = %43
  %78 = getelementptr inbounds %struct.Scene, ptr %44, i64 0, i32 6
  %79 = load ptr, ptr %78, align 8, !tbaa !197
  %80 = icmp eq ptr %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %71, %77
  %82 = phi ptr [ %79, %77 ], [ %65, %71 ]
  %83 = getelementptr inbounds %struct.Base, ptr %82, i64 0, i32 7
  %84 = load ptr, ptr %83, align 8, !tbaa !189
  br label %85

85:                                               ; preds = %74, %81, %60, %57, %77
  %86 = phi ptr [ null, %77 ], [ %55, %57 ], [ %55, %60 ], [ %84, %81 ], [ %55, %74 ]
  %87 = icmp eq ptr %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.Object, ptr %86, i64 0, i32 9
  %90 = load ptr, ptr %89, align 8, !tbaa !198
  %91 = icmp eq ptr %90, null
  %92 = select i1 %91, ptr %86, ptr %90
  br label %93

93:                                               ; preds = %85, %88
  %94 = phi ptr [ null, %85 ], [ %92, %88 ]
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %98 = load ptr, ptr %97, align 8, !tbaa !157
  tail call void @BKE_report(ptr noundef %98, i32 noundef 32, ptr noundef nonnull @.str.259) #9
  br label %196

99:                                               ; preds = %93
  %100 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %8) #9
  %101 = tail call ptr @BKE_tracking_object_get_tracks(ptr noundef nonnull %8, ptr noundef %100) #9
  %102 = load ptr, ptr %101, align 8, !tbaa !74
  store float 0.000000e+00, ptr %5, align 4, !tbaa !51
  %103 = getelementptr inbounds float, ptr %5, i64 1
  store float 0.000000e+00, ptr %103, align 4, !tbaa !51
  %104 = getelementptr inbounds float, ptr %5, i64 2
  store float 0.000000e+00, ptr %104, align 4, !tbaa !51
  %105 = icmp eq ptr %102, null
  br i1 %105, label %159, label %106

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.SpaceClip, ptr %6, i64 0, i32 12
  br label %108

108:                                              ; preds = %106, %153
  %109 = phi ptr [ %102, %106 ], [ %157, %153 ]
  %110 = phi float [ 0.000000e+00, %106 ], [ %156, %153 ]
  %111 = phi float [ 0.000000e+00, %106 ], [ %155, %153 ]
  %112 = phi float [ 0.000000e+00, %106 ], [ %154, %153 ]
  %113 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %109, i64 0, i32 13
  %114 = load i32, ptr %113, align 8, !tbaa !83
  %115 = and i32 %114, 32
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %153

117:                                              ; preds = %108
  %118 = and i32 %114, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %140

120:                                              ; preds = %117
  %121 = load i32, ptr %107, align 8, !tbaa !84
  %122 = and i32 %121, 1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %109, i64 0, i32 14
  %126 = load i32, ptr %125, align 4, !tbaa !85
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %124, %120
  %130 = and i32 %121, 2
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %153, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %109, i64 0, i32 15
  %134 = load i32, ptr %133, align 8, !tbaa !86
  %135 = and i32 %134, 1
  %136 = icmp eq i32 %135, 0
  %137 = and i32 %114, 2
  %138 = icmp eq i32 %137, 0
  %139 = or i1 %138, %136
  br i1 %139, label %153, label %143

140:                                              ; preds = %124, %117
  %141 = and i32 %114, 2
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %153, label %143

143:                                              ; preds = %132, %140
  %144 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %109, i64 0, i32 11
  %145 = load float, ptr %144, align 4, !tbaa !51
  %146 = fadd float %145, %110
  %147 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %109, i64 0, i32 11, i64 1
  %148 = load float, ptr %147, align 4, !tbaa !51
  %149 = fadd float %148, %111
  %150 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %109, i64 0, i32 11, i64 2
  %151 = load float, ptr %150, align 4, !tbaa !51
  %152 = fadd float %151, %112
  br label %153

153:                                              ; preds = %143, %140, %132, %129, %108
  %154 = phi float [ %152, %143 ], [ %112, %140 ], [ %112, %132 ], [ %112, %129 ], [ %112, %108 ]
  %155 = phi float [ %149, %143 ], [ %111, %140 ], [ %111, %132 ], [ %111, %129 ], [ %111, %108 ]
  %156 = phi float [ %146, %143 ], [ %110, %140 ], [ %110, %132 ], [ %110, %129 ], [ %110, %108 ]
  %157 = load ptr, ptr %109, align 8, !tbaa !81
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %108, !llvm.loop !199

159:                                              ; preds = %153, %99
  %160 = phi float [ 0.000000e+00, %99 ], [ %154, %153 ]
  %161 = phi float [ 0.000000e+00, %99 ], [ %155, %153 ]
  %162 = phi float [ 0.000000e+00, %99 ], [ %156, %153 ]
  store float %162, ptr %5, align 4, !tbaa !51
  store float %161, ptr %103, align 4, !tbaa !51
  store float %160, ptr %104, align 4, !tbaa !51
  %163 = sitofp i32 %38 to float
  %164 = fdiv float 1.000000e+00, %163
  %165 = fmul float %164, %162
  store float %165, ptr %5, align 4, !tbaa !51
  %166 = fmul float %164, %161
  store float %166, ptr %103, align 4, !tbaa !51
  %167 = load float, ptr %104, align 4, !tbaa !51
  %168 = fmul float %164, %167
  store float %168, ptr %104, align 4, !tbaa !51
  call void @BKE_tracking_get_camera_object_matrix(ptr noundef %9, ptr noundef %37, ptr noundef nonnull %3) #9
  call void @mul_v3_m4v3(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5) #9
  %169 = getelementptr inbounds %struct.MovieTrackingObject, ptr %100, i64 0, i32 3
  %170 = load i32, ptr %169, align 8, !tbaa !195
  %171 = and i32 %170, 1
  %172 = icmp eq i32 %171, 0
  %173 = getelementptr inbounds float, ptr %4, i64 1
  %174 = getelementptr inbounds %struct.Object, ptr %94, i64 0, i32 33, i64 1
  br i1 %172, label %188, label %175

175:                                              ; preds = %159
  %176 = getelementptr inbounds %struct.Object, ptr %94, i64 0, i32 33
  %177 = load float, ptr %4, align 4, !tbaa !51
  %178 = load float, ptr %176, align 4, !tbaa !51
  %179 = fsub float %178, %177
  store float %179, ptr %176, align 4, !tbaa !51
  %180 = load float, ptr %173, align 4, !tbaa !51
  %181 = load float, ptr %174, align 4, !tbaa !51
  %182 = fsub float %181, %180
  store float %182, ptr %174, align 4, !tbaa !51
  %183 = getelementptr inbounds float, ptr %4, i64 2
  %184 = load float, ptr %183, align 4, !tbaa !51
  %185 = getelementptr inbounds %struct.Object, ptr %94, i64 0, i32 33, i64 2
  %186 = load float, ptr %185, align 4, !tbaa !51
  %187 = fsub float %186, %184
  store float %187, ptr %185, align 4, !tbaa !51
  br label %195

188:                                              ; preds = %159
  call fastcc void @object_solver_inverted_matrix(ptr noundef %9, ptr noundef nonnull %94, ptr noundef nonnull %3)
  call void @mul_v3_m4v3(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %189 = getelementptr inbounds %struct.Object, ptr %94, i64 0, i32 33
  %190 = load float, ptr %4, align 4, !tbaa !51
  store float %190, ptr %189, align 4, !tbaa !51
  %191 = load float, ptr %173, align 4, !tbaa !51
  store float %191, ptr %174, align 4, !tbaa !51
  %192 = getelementptr inbounds float, ptr %4, i64 2
  %193 = load float, ptr %192, align 4, !tbaa !51
  %194 = getelementptr inbounds %struct.Object, ptr %94, i64 0, i32 33, i64 2
  store float %193, ptr %194, align 4, !tbaa !51
  br label %195

195:                                              ; preds = %188, %175
  call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 0) #9
  call void @DAG_id_tag_update(ptr noundef nonnull %94, i16 noundef signext 1) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544322, ptr noundef %7) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #9
  br label %196

196:                                              ; preds = %195, %96, %40
  %197 = phi i32 [ 2, %40 ], [ 4, %195 ], [ 2, %96 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  ret i32 %197
}

; Function Attrs: nounwind uwtable
define internal i32 @set_orientation_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %6 = tail call ptr @ED_space_clip_get_clip(ptr noundef nonnull %2) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.MovieClip, ptr %6, i64 0, i32 11
  %10 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %9) #9
  %11 = getelementptr inbounds %struct.MovieTrackingObject, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !195
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !197
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Base, ptr %17, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !189
  %22 = icmp ne ptr %21, null
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %4, %8, %15, %19
  %25 = phi i32 [ 1, %8 ], [ %23, %19 ], [ 0, %15 ], [ undef, %4 ]
  br i1 %7, label %26, label %27

26:                                               ; preds = %24, %1
  br label %27

27:                                               ; preds = %24, %26
  %28 = phi i32 [ 0, %26 ], [ %25, %24 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_set_plane(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.85, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.86, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.87, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @set_plane_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @set_orientation_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.88, ptr noundef nonnull @CLIP_OT_set_plane.plane_items, i32 noundef 0, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @set_plane_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %9 = tail call ptr @ED_space_clip_get_clip(ptr noundef %8) #9
  %10 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %11 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !188
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = tail call ptr @BKE_object_movieclip_get(ptr noundef %10, ptr noundef nonnull %12, i8 noundef zeroext 0) #9
  %16 = icmp eq ptr %15, %9
  br i1 %16, label %37, label %17

17:                                               ; preds = %14, %2
  %18 = getelementptr inbounds %struct.Scene, ptr %10, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !93
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %17, %34
  %22 = phi ptr [ %35, %34 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.Base, ptr %22, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !189
  %25 = getelementptr inbounds %struct.Object, ptr %24, i64 0, i32 3
  %26 = load i16, ptr %25, align 8, !tbaa !191
  %27 = icmp eq i16 %26, 11
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = tail call ptr @BKE_object_movieclip_get(ptr noundef %10, ptr noundef %24, i8 noundef zeroext 0) #9
  %30 = icmp eq ptr %29, %9
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.Base, ptr %22, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !189
  br label %37

34:                                               ; preds = %28, %21
  %35 = load ptr, ptr %22, align 8, !tbaa !93
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %21, !llvm.loop !194

37:                                               ; preds = %34, %14, %17, %31
  %38 = phi ptr [ %12, %14 ], [ %33, %31 ], [ %12, %17 ], [ %12, %34 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  %39 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !49
  %41 = tail call i32 @RNA_enum_get(ptr noundef %40, ptr noundef nonnull @.str.88) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %7, i8 0, i64 64, i1 false)
  %42 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  store float -1.000000e+00, ptr %42, align 8
  %43 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1, i64 1
  store float 1.000000e+00, ptr %43, align 4
  %44 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2
  store float 1.000000e+00, ptr %44, align 16
  %45 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 3, i64 3
  store float 1.000000e+00, ptr %45, align 4
  %46 = tail call fastcc i32 @count_selected_bundles(ptr noundef %0)
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %51, label %48

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %50 = load ptr, ptr %49, align 8, !tbaa !157
  tail call void @BKE_report(ptr noundef %50, i32 noundef 32, ptr noundef nonnull @.str.260) #9
  br label %350

51:                                               ; preds = %37
  %52 = getelementptr inbounds %struct.MovieClip, ptr %9, i64 0, i32 11
  %53 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %52) #9
  %54 = tail call ptr @BKE_tracking_object_get_tracks(ptr noundef nonnull %52, ptr noundef %53) #9
  %55 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %52) #9
  %56 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %57 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %58 = tail call ptr @ED_space_clip_get_clip(ptr noundef %57) #9
  %59 = getelementptr inbounds %struct.MovieClip, ptr %58, i64 0, i32 11
  %60 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %59) #9
  %61 = getelementptr inbounds %struct.MovieTrackingObject, ptr %60, i64 0, i32 3
  %62 = load i32, ptr %61, align 8, !tbaa !195
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %89, label %65

65:                                               ; preds = %51
  %66 = getelementptr inbounds %struct.Scene, ptr %56, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !188
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = tail call ptr @BKE_object_movieclip_get(ptr noundef %56, ptr noundef nonnull %67, i8 noundef zeroext 0) #9
  %71 = icmp eq ptr %70, %58
  br i1 %71, label %97, label %72

72:                                               ; preds = %69, %65
  %73 = getelementptr inbounds %struct.Scene, ptr %56, i64 0, i32 5
  %74 = load ptr, ptr %73, align 8, !tbaa !93
  %75 = icmp eq ptr %74, null
  br i1 %75, label %97, label %76

76:                                               ; preds = %72, %86
  %77 = phi ptr [ %87, %86 ], [ %74, %72 ]
  %78 = getelementptr inbounds %struct.Base, ptr %77, i64 0, i32 7
  %79 = load ptr, ptr %78, align 8, !tbaa !189
  %80 = getelementptr inbounds %struct.Object, ptr %79, i64 0, i32 3
  %81 = load i16, ptr %80, align 8, !tbaa !191
  %82 = icmp eq i16 %81, 11
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = tail call ptr @BKE_object_movieclip_get(ptr noundef %56, ptr noundef %79, i8 noundef zeroext 0) #9
  %85 = icmp eq ptr %84, %58
  br i1 %85, label %93, label %86

86:                                               ; preds = %83, %76
  %87 = load ptr, ptr %77, align 8, !tbaa !93
  %88 = icmp eq ptr %87, null
  br i1 %88, label %97, label %76, !llvm.loop !194

89:                                               ; preds = %51
  %90 = getelementptr inbounds %struct.Scene, ptr %56, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8, !tbaa !197
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %83, %89
  %94 = phi ptr [ %91, %89 ], [ %77, %83 ]
  %95 = getelementptr inbounds %struct.Base, ptr %94, i64 0, i32 7
  %96 = load ptr, ptr %95, align 8, !tbaa !189
  br label %97

97:                                               ; preds = %86, %93, %72, %69, %89
  %98 = phi ptr [ null, %89 ], [ %67, %69 ], [ %67, %72 ], [ %96, %93 ], [ %67, %86 ]
  %99 = icmp eq ptr %98, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.Object, ptr %98, i64 0, i32 9
  %102 = load ptr, ptr %101, align 8, !tbaa !198
  %103 = icmp eq ptr %102, null
  %104 = select i1 %103, ptr %98, ptr %102
  br label %105

105:                                              ; preds = %97, %100
  %106 = phi ptr [ null, %97 ], [ %104, %100 ]
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %110 = load ptr, ptr %109, align 8, !tbaa !157
  tail call void @BKE_report(ptr noundef %110, i32 noundef 32, ptr noundef nonnull @.str.259) #9
  br label %350

111:                                              ; preds = %105
  call void @BKE_tracking_get_camera_object_matrix(ptr noundef %10, ptr noundef %38, ptr noundef nonnull %4) #9
  %112 = load ptr, ptr %54, align 8, !tbaa !93
  %113 = icmp eq ptr %112, null
  br i1 %113, label %176, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.SpaceClip, ptr %8, i64 0, i32 12
  br label %116

116:                                              ; preds = %114, %166
  %117 = phi ptr [ %112, %114 ], [ %172, %166 ]
  %118 = phi i32 [ 0, %114 ], [ %171, %166 ]
  %119 = phi ptr [ null, %114 ], [ %170, %166 ]
  %120 = phi float [ 0.000000e+00, %114 ], [ %169, %166 ]
  %121 = phi float [ 0.000000e+00, %114 ], [ %168, %166 ]
  %122 = phi float [ 0.000000e+00, %114 ], [ %167, %166 ]
  %123 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %117, i64 0, i32 13
  %124 = load i32, ptr %123, align 8, !tbaa !83
  %125 = and i32 %124, 34
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %127, label %166

127:                                              ; preds = %116
  %128 = and i32 %124, 1
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %147

130:                                              ; preds = %127
  %131 = load i32, ptr %115, align 8, !tbaa !84
  %132 = and i32 %131, 1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %117, i64 0, i32 14
  %136 = load i32, ptr %135, align 4, !tbaa !85
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %134, %130
  %140 = and i32 %131, 2
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %166, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %117, i64 0, i32 15
  %144 = load i32, ptr %143, align 8, !tbaa !86
  %145 = and i32 %144, 1
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %166, label %147

147:                                              ; preds = %142, %134, %127
  %148 = sext i32 %118 to i64
  %149 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 %148
  %150 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %117, i64 0, i32 11
  call void @mul_v3_m4v3(ptr noundef nonnull %149, ptr noundef nonnull %4, ptr noundef nonnull %150) #9
  %151 = icmp eq i32 %118, 0
  %152 = icmp eq ptr %117, %55
  %153 = select i1 %151, i1 true, i1 %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %147
  %155 = load float, ptr %149, align 4, !tbaa !51
  %156 = getelementptr inbounds float, ptr %149, i64 1
  %157 = load float, ptr %156, align 4, !tbaa !51
  %158 = getelementptr inbounds float, ptr %149, i64 2
  %159 = load float, ptr %158, align 4, !tbaa !51
  br label %160

160:                                              ; preds = %147, %154
  %161 = phi float [ %155, %154 ], [ %122, %147 ]
  %162 = phi float [ %157, %154 ], [ %121, %147 ]
  %163 = phi float [ %159, %154 ], [ %120, %147 ]
  %164 = phi ptr [ %119, %154 ], [ %117, %147 ]
  %165 = add nsw i32 %118, 1
  br label %166

166:                                              ; preds = %160, %142, %139, %116
  %167 = phi float [ %122, %139 ], [ %122, %142 ], [ %161, %160 ], [ %122, %116 ]
  %168 = phi float [ %121, %139 ], [ %121, %142 ], [ %162, %160 ], [ %121, %116 ]
  %169 = phi float [ %120, %139 ], [ %120, %142 ], [ %163, %160 ], [ %120, %116 ]
  %170 = phi ptr [ %119, %139 ], [ %119, %142 ], [ %164, %160 ], [ %119, %116 ]
  %171 = phi i32 [ %118, %139 ], [ %118, %142 ], [ %165, %160 ], [ %118, %116 ]
  %172 = load ptr, ptr %117, align 8, !tbaa !93
  %173 = icmp ne ptr %172, null
  %174 = icmp slt i32 %171, 3
  %175 = select i1 %173, i1 %174, i1 false
  br i1 %175, label %116, label %176, !llvm.loop !200

176:                                              ; preds = %166, %111
  %177 = phi float [ 0.000000e+00, %111 ], [ %167, %166 ]
  %178 = phi float [ 0.000000e+00, %111 ], [ %168, %166 ]
  %179 = phi float [ 0.000000e+00, %111 ], [ %169, %166 ]
  %180 = phi ptr [ null, %111 ], [ %170, %166 ]
  %181 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 1
  %182 = load float, ptr %3, align 16, !tbaa !51
  %183 = load float, ptr %181, align 4, !tbaa !51
  %184 = fsub float %183, %182
  store float %184, ptr %181, align 4, !tbaa !51
  %185 = getelementptr inbounds float, ptr %3, i64 1
  %186 = load float, ptr %185, align 4, !tbaa !51
  %187 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 1, i64 1
  %188 = load float, ptr %187, align 16, !tbaa !51
  %189 = fsub float %188, %186
  store float %189, ptr %187, align 16, !tbaa !51
  %190 = getelementptr inbounds float, ptr %3, i64 2
  %191 = load float, ptr %190, align 8, !tbaa !51
  %192 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 1, i64 2
  %193 = load float, ptr %192, align 4, !tbaa !51
  %194 = fsub float %193, %191
  store float %194, ptr %192, align 4, !tbaa !51
  %195 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2
  %196 = load float, ptr %195, align 8, !tbaa !51
  %197 = fsub float %196, %182
  store float %197, ptr %195, align 8, !tbaa !51
  %198 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2, i64 1
  %199 = load float, ptr %198, align 4, !tbaa !51
  %200 = fsub float %199, %186
  store float %200, ptr %198, align 4, !tbaa !51
  %201 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2, i64 2
  %202 = load float, ptr %201, align 16, !tbaa !51
  %203 = fsub float %202, %191
  store float %203, ptr %201, align 16, !tbaa !51
  call void @unit_m4(ptr noundef nonnull %4) #9
  switch i32 %41, label %267 [
    i32 0, label %204
    i32 1, label %237
  ]

204:                                              ; preds = %176
  %205 = load float, ptr %187, align 16, !tbaa !51
  %206 = load float, ptr %201, align 16, !tbaa !51
  %207 = load float, ptr %192, align 4, !tbaa !51
  %208 = load float, ptr %198, align 4, !tbaa !51
  %209 = fneg float %207
  %210 = fmul float %208, %209
  %211 = call float @llvm.fmuladd.f32(float %205, float %206, float %210)
  store float %211, ptr %4, align 16, !tbaa !51
  %212 = load float, ptr %195, align 8, !tbaa !51
  %213 = load float, ptr %181, align 4, !tbaa !51
  %214 = fneg float %213
  %215 = fmul float %206, %214
  %216 = call float @llvm.fmuladd.f32(float %207, float %212, float %215)
  %217 = getelementptr inbounds float, ptr %4, i64 1
  store float %216, ptr %217, align 4, !tbaa !51
  %218 = fneg float %205
  %219 = fmul float %212, %218
  %220 = call float @llvm.fmuladd.f32(float %213, float %208, float %219)
  %221 = getelementptr inbounds float, ptr %4, i64 2
  store float %220, ptr %221, align 8, !tbaa !51
  %222 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 1
  store float %213, ptr %222, align 16, !tbaa !51
  %223 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 1, i64 1
  store float %205, ptr %223, align 4, !tbaa !51
  %224 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 1, i64 2
  store float %207, ptr %224, align 8, !tbaa !51
  %225 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 2
  %226 = fneg float %220
  %227 = fmul float %205, %226
  %228 = call float @llvm.fmuladd.f32(float %216, float %207, float %227)
  store float %228, ptr %225, align 16, !tbaa !51
  %229 = fneg float %211
  %230 = fmul float %207, %229
  %231 = call float @llvm.fmuladd.f32(float %220, float %213, float %230)
  %232 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 2, i64 1
  store float %231, ptr %232, align 4, !tbaa !51
  %233 = fneg float %216
  %234 = fmul float %213, %233
  %235 = call float @llvm.fmuladd.f32(float %211, float %205, float %234)
  %236 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 2, i64 2
  store float %235, ptr %236, align 8, !tbaa !51
  br label %267

237:                                              ; preds = %176
  %238 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 2
  %239 = load float, ptr %187, align 16, !tbaa !51
  %240 = load float, ptr %201, align 16, !tbaa !51
  %241 = load float, ptr %192, align 4, !tbaa !51
  %242 = load float, ptr %198, align 4, !tbaa !51
  %243 = fneg float %241
  %244 = fmul float %242, %243
  %245 = call float @llvm.fmuladd.f32(float %239, float %240, float %244)
  store float %245, ptr %238, align 16, !tbaa !51
  %246 = load float, ptr %195, align 8, !tbaa !51
  %247 = load float, ptr %181, align 4, !tbaa !51
  %248 = fneg float %247
  %249 = fmul float %240, %248
  %250 = call float @llvm.fmuladd.f32(float %241, float %246, float %249)
  %251 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 2, i64 1
  store float %250, ptr %251, align 4, !tbaa !51
  %252 = fneg float %239
  %253 = fmul float %246, %252
  %254 = call float @llvm.fmuladd.f32(float %247, float %242, float %253)
  %255 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 2, i64 2
  store float %254, ptr %255, align 8, !tbaa !51
  %256 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 1
  store float %247, ptr %256, align 16, !tbaa !51
  %257 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 1, i64 1
  store float %239, ptr %257, align 4, !tbaa !51
  %258 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 1, i64 2
  store float %241, ptr %258, align 8, !tbaa !51
  %259 = fmul float %250, %243
  %260 = call float @llvm.fmuladd.f32(float %239, float %254, float %259)
  store float %260, ptr %4, align 16, !tbaa !51
  %261 = fmul float %254, %248
  %262 = call float @llvm.fmuladd.f32(float %241, float %245, float %261)
  %263 = getelementptr inbounds float, ptr %4, i64 1
  store float %262, ptr %263, align 4, !tbaa !51
  %264 = fmul float %245, %252
  %265 = call float @llvm.fmuladd.f32(float %247, float %250, float %264)
  %266 = getelementptr inbounds float, ptr %4, i64 2
  store float %265, ptr %266, align 8, !tbaa !51
  br label %267

267:                                              ; preds = %176, %237, %204
  %268 = load float, ptr %4, align 16, !tbaa !51
  %269 = getelementptr inbounds float, ptr %4, i64 1
  %270 = load float, ptr %269, align 4, !tbaa !51
  %271 = fmul float %270, %270
  %272 = call float @llvm.fmuladd.f32(float %268, float %268, float %271)
  %273 = getelementptr inbounds float, ptr %4, i64 2
  %274 = load float, ptr %273, align 8, !tbaa !51
  %275 = call float @llvm.fmuladd.f32(float %274, float %274, float %272)
  %276 = fcmp ogt float %275, 0x38AA95A5C0000000
  br i1 %276, label %277, label %286

277:                                              ; preds = %267
  %278 = call float @sqrtf(float noundef %275) #9
  %279 = fdiv float 1.000000e+00, %278
  %280 = load float, ptr %4, align 16, !tbaa !51
  %281 = fmul float %280, %279
  store float %281, ptr %4, align 16, !tbaa !51
  %282 = load float, ptr %269, align 4, !tbaa !51
  %283 = fmul float %279, %282
  store float %283, ptr %269, align 4, !tbaa !51
  %284 = load float, ptr %273, align 8, !tbaa !51
  %285 = fmul float %279, %284
  br label %287

286:                                              ; preds = %267
  store float 0.000000e+00, ptr %4, align 16, !tbaa !51
  store float 0.000000e+00, ptr %269, align 4, !tbaa !51
  br label %287

287:                                              ; preds = %277, %286
  %288 = phi float [ 0.000000e+00, %286 ], [ %285, %277 ]
  store float %288, ptr %273, align 8, !tbaa !51
  %289 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 1
  %290 = load float, ptr %289, align 16, !tbaa !51
  %291 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 1, i64 1
  %292 = load float, ptr %291, align 4, !tbaa !51
  %293 = fmul float %292, %292
  %294 = call float @llvm.fmuladd.f32(float %290, float %290, float %293)
  %295 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 1, i64 2
  %296 = load float, ptr %295, align 8, !tbaa !51
  %297 = call float @llvm.fmuladd.f32(float %296, float %296, float %294)
  %298 = fcmp ogt float %297, 0x38AA95A5C0000000
  br i1 %298, label %299, label %308

299:                                              ; preds = %287
  %300 = call float @sqrtf(float noundef %297) #9
  %301 = fdiv float 1.000000e+00, %300
  %302 = load float, ptr %289, align 16, !tbaa !51
  %303 = fmul float %302, %301
  store float %303, ptr %289, align 16, !tbaa !51
  %304 = load float, ptr %291, align 4, !tbaa !51
  %305 = fmul float %301, %304
  store float %305, ptr %291, align 4, !tbaa !51
  %306 = load float, ptr %295, align 8, !tbaa !51
  %307 = fmul float %301, %306
  br label %309

308:                                              ; preds = %287
  store float 0.000000e+00, ptr %289, align 16, !tbaa !51
  store float 0.000000e+00, ptr %291, align 4, !tbaa !51
  br label %309

309:                                              ; preds = %299, %308
  %310 = phi float [ 0.000000e+00, %308 ], [ %307, %299 ]
  store float %310, ptr %295, align 8, !tbaa !51
  %311 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 2
  %312 = load float, ptr %311, align 16, !tbaa !51
  %313 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 2, i64 1
  %314 = load float, ptr %313, align 4, !tbaa !51
  %315 = fmul float %314, %314
  %316 = call float @llvm.fmuladd.f32(float %312, float %312, float %315)
  %317 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 2, i64 2
  %318 = load float, ptr %317, align 8, !tbaa !51
  %319 = call float @llvm.fmuladd.f32(float %318, float %318, float %316)
  %320 = fcmp ogt float %319, 0x38AA95A5C0000000
  br i1 %320, label %321, label %330

321:                                              ; preds = %309
  %322 = call float @sqrtf(float noundef %319) #9
  %323 = fdiv float 1.000000e+00, %322
  %324 = load float, ptr %311, align 16, !tbaa !51
  %325 = fmul float %324, %323
  store float %325, ptr %311, align 16, !tbaa !51
  %326 = load float, ptr %313, align 4, !tbaa !51
  %327 = fmul float %323, %326
  store float %327, ptr %313, align 4, !tbaa !51
  %328 = load float, ptr %317, align 8, !tbaa !51
  %329 = fmul float %323, %328
  br label %331

330:                                              ; preds = %309
  store float 0.000000e+00, ptr %311, align 16, !tbaa !51
  store float 0.000000e+00, ptr %313, align 4, !tbaa !51
  br label %331

331:                                              ; preds = %321, %330
  %332 = phi float [ 0.000000e+00, %330 ], [ %329, %321 ]
  store float %332, ptr %317, align 8, !tbaa !51
  %333 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3
  store float %177, ptr %333, align 16, !tbaa !51
  %334 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 1
  store float %178, ptr %334, align 4, !tbaa !51
  %335 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 2
  store float %179, ptr %335, align 8, !tbaa !51
  %336 = getelementptr inbounds %struct.MovieTrackingObject, ptr %53, i64 0, i32 3
  %337 = load i32, ptr %336, align 8, !tbaa !195
  %338 = and i32 %337, 1
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %347, label %340

340:                                              ; preds = %331
  %341 = call zeroext i8 @invert_m4(ptr noundef nonnull %4) #9
  call void @BKE_object_to_mat4(ptr noundef nonnull %106, ptr noundef nonnull %5) #9
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %4) #9
  call void @BKE_object_apply_mat4(ptr noundef nonnull %106, ptr noundef nonnull %6, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %342 = getelementptr inbounds %struct.Object, ptr %106, i64 0, i32 33, i64 2
  %343 = load float, ptr %342, align 8, !tbaa !51
  %344 = fcmp olt float %343, 0.000000e+00
  br i1 %344, label %345, label %349

345:                                              ; preds = %340
  %346 = call zeroext i8 @invert_m4(ptr noundef nonnull %7) #9
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %4) #9
  br label %347

347:                                              ; preds = %331, %345
  %348 = phi ptr [ %6, %345 ], [ %4, %331 ]
  call void @BKE_object_apply_mat4(ptr noundef nonnull %106, ptr noundef nonnull %348, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  br label %349

349:                                              ; preds = %347, %340
  call void @BKE_object_where_is_calc(ptr noundef %10, ptr noundef nonnull %106) #9
  call fastcc void @set_axis(ptr noundef %10, ptr noundef nonnull %106, ptr noundef %9, ptr noundef %53, ptr noundef %180, i8 noundef zeroext 88)
  call void @DAG_id_tag_update(ptr noundef %9, i16 noundef signext 0) #9
  call void @DAG_id_tag_update(ptr noundef nonnull %106, i16 noundef signext 1) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544322, ptr noundef %9) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #9
  br label %350

350:                                              ; preds = %349, %108, %48
  %351 = phi i32 [ 2, %48 ], [ 4, %349 ], [ 2, %108 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #9
  ret i32 %351
}

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_set_axis(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.95, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.96, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.97, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @set_axis_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @set_orientation_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.98, ptr noundef nonnull @CLIP_OT_set_axis.axis_actions, i32 noundef 0, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @set_axis_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %5) #9
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.98) #9
  %11 = tail call fastcc i32 @count_selected_bundles(ptr noundef %0)
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !157
  tail call void @BKE_report(ptr noundef %15, i32 noundef 32, ptr noundef nonnull @.str.261) #9
  br label %117

16:                                               ; preds = %2
  %17 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %18 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %19 = tail call ptr @ED_space_clip_get_clip(ptr noundef %18) #9
  %20 = getelementptr inbounds %struct.MovieClip, ptr %19, i64 0, i32 11
  %21 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %20) #9
  %22 = getelementptr inbounds %struct.MovieTrackingObject, ptr %21, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !195
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %50, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.Scene, ptr %17, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !188
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @BKE_object_movieclip_get(ptr noundef %17, ptr noundef nonnull %28, i8 noundef zeroext 0) #9
  %32 = icmp eq ptr %31, %19
  br i1 %32, label %58, label %33

33:                                               ; preds = %30, %26
  %34 = getelementptr inbounds %struct.Scene, ptr %17, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !93
  %36 = icmp eq ptr %35, null
  br i1 %36, label %58, label %37

37:                                               ; preds = %33, %47
  %38 = phi ptr [ %48, %47 ], [ %35, %33 ]
  %39 = getelementptr inbounds %struct.Base, ptr %38, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !189
  %41 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 3
  %42 = load i16, ptr %41, align 8, !tbaa !191
  %43 = icmp eq i16 %42, 11
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = tail call ptr @BKE_object_movieclip_get(ptr noundef %17, ptr noundef %40, i8 noundef zeroext 0) #9
  %46 = icmp eq ptr %45, %19
  br i1 %46, label %54, label %47

47:                                               ; preds = %44, %37
  %48 = load ptr, ptr %38, align 8, !tbaa !93
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %37, !llvm.loop !194

50:                                               ; preds = %16
  %51 = getelementptr inbounds %struct.Scene, ptr %17, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !197
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %44, %50
  %55 = phi ptr [ %52, %50 ], [ %38, %44 ]
  %56 = getelementptr inbounds %struct.Base, ptr %55, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !189
  br label %58

58:                                               ; preds = %47, %54, %33, %30, %50
  %59 = phi ptr [ null, %50 ], [ %28, %30 ], [ %28, %33 ], [ %57, %54 ], [ %28, %47 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.Object, ptr %59, i64 0, i32 9
  %63 = load ptr, ptr %62, align 8, !tbaa !198
  %64 = icmp eq ptr %63, null
  %65 = select i1 %64, ptr %59, ptr %63
  br label %66

66:                                               ; preds = %58, %61
  %67 = phi ptr [ null, %58 ], [ %65, %61 ]
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %71 = load ptr, ptr %70, align 8, !tbaa !157
  tail call void @BKE_report(ptr noundef %71, i32 noundef 32, ptr noundef nonnull @.str.259) #9
  br label %117

72:                                               ; preds = %66
  %73 = tail call ptr @BKE_tracking_object_get_tracks(ptr noundef nonnull %5, ptr noundef %6) #9
  %74 = load ptr, ptr %73, align 8, !tbaa !93
  %75 = icmp eq ptr %74, null
  br i1 %75, label %113, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  br label %78

78:                                               ; preds = %76, %110
  %79 = phi ptr [ %74, %76 ], [ %111, %110 ]
  %80 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %79, i64 0, i32 13
  %81 = load i32, ptr %80, align 8, !tbaa !83
  %82 = and i32 %81, 32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %78
  %85 = and i32 %81, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %84
  %88 = load i32, ptr %77, align 8, !tbaa !84
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %79, i64 0, i32 14
  %93 = load i32, ptr %92, align 4, !tbaa !85
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %91, %87
  %97 = and i32 %88, 2
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %79, i64 0, i32 15
  %101 = load i32, ptr %100, align 8, !tbaa !86
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  %104 = and i32 %81, 2
  %105 = icmp eq i32 %104, 0
  %106 = or i1 %105, %103
  br i1 %106, label %110, label %113

107:                                              ; preds = %91, %84
  %108 = and i32 %81, 2
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107, %99, %96, %78
  %111 = load ptr, ptr %79, align 8, !tbaa !93
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %78, !llvm.loop !201

113:                                              ; preds = %110, %107, %99, %72
  %114 = phi ptr [ %74, %72 ], [ %111, %110 ], [ %79, %107 ], [ %79, %99 ]
  %115 = icmp eq i32 %10, 0
  %116 = select i1 %115, i8 88, i8 89
  tail call fastcc void @set_axis(ptr noundef %7, ptr noundef nonnull %67, ptr noundef %4, ptr noundef %6, ptr noundef %114, i8 noundef zeroext %116)
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #9
  tail call void @DAG_id_tag_update(ptr noundef nonnull %67, i16 noundef signext 1) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544322, ptr noundef %4) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #9
  br label %117

117:                                              ; preds = %113, %69, %13
  %118 = phi i32 [ 2, %13 ], [ 4, %113 ], [ 2, %69 ]
  ret i32 %118
}

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_set_scale(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.101, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.102, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.103, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @set_scale_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @set_scale_invoke, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @set_orientation_poll, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_float(ptr noundef %9, ptr noundef nonnull @.str.104, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, float noundef -1.000000e+02, float noundef 1.000000e+02) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @set_scale_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call fastcc i32 @do_set_scale(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0), !range !161
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @set_scale_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %5 = tail call ptr @ED_space_clip_get_clip(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %7, ptr noundef nonnull @.str.104) #9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load ptr, ptr %6, align 8, !tbaa !49
  %12 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11, i32 0, i32 18
  %13 = load float, ptr %12, align 8, !tbaa !202
  tail call void @RNA_float_set(ptr noundef %11, ptr noundef nonnull @.str.104, float noundef %13) #9
  br label %14

14:                                               ; preds = %10, %3
  %15 = tail call fastcc i32 @do_set_scale(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0), !range !161
  ret i32 %15
}

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_set_solution_scale(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.107, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.108, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.109, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @set_solution_scale_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @set_solution_scale_invoke, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @set_solution_scale_poll, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_float(ptr noundef %9, ptr noundef nonnull @.str.104, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, float noundef -1.000000e+02, float noundef 1.000000e+02) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @set_solution_scale_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call fastcc i32 @do_set_scale(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 0), !range !161
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @set_solution_scale_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %5 = tail call ptr @ED_space_clip_get_clip(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %7, ptr noundef nonnull @.str.104) #9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load ptr, ptr %6, align 8, !tbaa !49
  %12 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11, i32 0, i32 22
  %13 = load float, ptr %12, align 8, !tbaa !203
  tail call void @RNA_float_set(ptr noundef %11, ptr noundef nonnull @.str.104, float noundef %13) #9
  br label %14

14:                                               ; preds = %10, %3
  %15 = tail call fastcc i32 @do_set_scale(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 0), !range !161
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @set_solution_scale_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @ED_space_clip_get_clip(ptr noundef nonnull %2) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11
  %9 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %8) #9
  %10 = getelementptr inbounds %struct.MovieTrackingObject, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !195
  %12 = and i32 %11, 1
  %13 = xor i32 %12, 1
  br label %14

14:                                               ; preds = %4, %7
  %15 = phi i32 [ %13, %7 ], [ undef, %4 ]
  br i1 %6, label %16, label %17

16:                                               ; preds = %14, %1
  br label %17

17:                                               ; preds = %14, %16
  %18 = phi i32 [ 0, %16 ], [ %15, %14 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_apply_solution_scale(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.110, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.111, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.112, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @apply_solution_scale_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @apply_solution_scale_invoke, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @apply_solution_scale_poll, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_float(ptr noundef %9, ptr noundef nonnull @.str.104, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, float noundef -1.000000e+02, float noundef 1.000000e+02) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @apply_solution_scale_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call fastcc i32 @do_set_scale(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1), !range !161
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @apply_solution_scale_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %5 = tail call ptr @ED_space_clip_get_clip(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %7, ptr noundef nonnull @.str.104) #9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load ptr, ptr %6, align 8, !tbaa !49
  %12 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11, i32 0, i32 18
  %13 = load float, ptr %12, align 8, !tbaa !202
  tail call void @RNA_float_set(ptr noundef %11, ptr noundef nonnull @.str.104, float noundef %13) #9
  br label %14

14:                                               ; preds = %10, %3
  %15 = tail call fastcc i32 @do_set_scale(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1), !range !161
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @apply_solution_scale_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @ED_space_clip_get_clip(ptr noundef nonnull %2) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11
  %9 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %8) #9
  %10 = getelementptr inbounds %struct.MovieTrackingObject, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !195
  %12 = and i32 %11, 1
  br label %13

13:                                               ; preds = %4, %7
  %14 = phi i32 [ %12, %7 ], [ undef, %4 ]
  br i1 %6, label %15, label %16

15:                                               ; preds = %13, %1
  br label %16

16:                                               ; preds = %13, %15
  %17 = phi i32 [ 0, %15 ], [ %14, %13 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_set_center_principal(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.113, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.114, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.115, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @set_center_principal_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @set_center_principal_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %6 = tail call ptr @ED_space_clip_get_clip(ptr noundef %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %7 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 9
  call void @BKE_movieclip_get_size(ptr noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %8 = load i32, ptr %3, align 4, !tbaa !92
  %9 = icmp eq i32 %8, 0
  %10 = load i32, ptr %4, align 4
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = sitofp i32 %8 to float
  %15 = fmul float %14, 5.000000e-01
  %16 = getelementptr inbounds %struct.MovieClip, ptr %6, i64 0, i32 11, i32 1, i32 8
  store float %15, ptr %16, align 4, !tbaa !51
  %17 = sitofp i32 %10 to float
  %18 = fmul float %17, 5.000000e-01
  %19 = getelementptr inbounds %struct.MovieClip, ptr %6, i64 0, i32 11, i32 1, i32 8, i64 1
  store float %18, ptr %19, align 4, !tbaa !51
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %6) #9
  br label %20

20:                                               ; preds = %2, %13
  %21 = phi i32 [ 4, %13 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_hide_tracks(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.116, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.117, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.118, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @hide_tracks_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.119, i32 noundef 0, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @hide_tracks_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #9
  %7 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %5) #9
  %8 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %5) #9
  %9 = tail call ptr @BKE_tracking_plane_track_get_active(ptr noundef nonnull %5) #9
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.119) #9
  %13 = load ptr, ptr %6, align 8, !tbaa !93
  %14 = icmp eq ptr %13, null
  br i1 %14, label %79, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %17 = icmp eq i32 %12, 1
  %18 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  br label %19

19:                                               ; preds = %15, %76
  %20 = phi ptr [ %13, %15 ], [ %77, %76 ]
  switch i32 %12, label %76 [
    i32 0, label %21
    i32 1, label %47
  ]

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %20, i64 0, i32 13
  %23 = load i32, ptr %22, align 8, !tbaa !83
  %24 = and i32 %23, 32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = and i32 %23, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %72

29:                                               ; preds = %26
  %30 = load i32, ptr %16, align 8, !tbaa !84
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %20, i64 0, i32 14
  %35 = load i32, ptr %34, align 4, !tbaa !85
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %72

38:                                               ; preds = %33, %29
  %39 = and i32 %30, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %20, i64 0, i32 15
  %43 = load i32, ptr %42, align 8, !tbaa !86
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %41, %38, %21
  br i1 %17, label %47, label %76

47:                                               ; preds = %19, %46
  %48 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %20, i64 0, i32 13
  %49 = load i32, ptr %48, align 8, !tbaa !83
  %50 = and i32 %49, 32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %47
  %53 = and i32 %49, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %52
  %56 = load i32, ptr %18, align 8, !tbaa !84
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %20, i64 0, i32 14
  %61 = load i32, ptr %60, align 4, !tbaa !85
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %59, %55
  %65 = and i32 %56, 2
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %20, i64 0, i32 15
  %69 = load i32, ptr %68, align 8, !tbaa !86
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %47, %64, %67, %26, %33, %41
  %73 = phi i32 [ %23, %41 ], [ %23, %33 ], [ %23, %26 ], [ %49, %67 ], [ %49, %64 ], [ %49, %47 ]
  %74 = phi ptr [ %22, %41 ], [ %22, %33 ], [ %22, %26 ], [ %48, %67 ], [ %48, %64 ], [ %48, %47 ]
  %75 = or i32 %73, 32
  store i32 %75, ptr %74, align 8, !tbaa !83
  br label %76

76:                                               ; preds = %72, %19, %46, %52, %59, %67
  %77 = load ptr, ptr %20, align 8, !tbaa !93
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %19, !llvm.loop !204

79:                                               ; preds = %76, %2
  %80 = icmp eq ptr %8, null
  br i1 %80, label %88, label %81

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %8, i64 0, i32 13
  %83 = load i32, ptr %82, align 8, !tbaa !83
  %84 = and i32 %83, 32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 6
  store ptr null, ptr %87, align 8, !tbaa !205
  br label %88

88:                                               ; preds = %86, %81, %79
  %89 = icmp eq i32 %12, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %92 = load i32, ptr %91, align 8, !tbaa !84
  %93 = and i32 %92, -5
  store i32 %93, ptr %91, align 8, !tbaa !84
  br label %94

94:                                               ; preds = %90, %88
  %95 = load ptr, ptr %7, align 8, !tbaa !93
  %96 = icmp eq ptr %95, null
  br i1 %96, label %119, label %97

97:                                               ; preds = %94
  %98 = icmp eq i32 %12, 1
  br label %99

99:                                               ; preds = %97, %116
  %100 = phi ptr [ %95, %97 ], [ %117, %116 ]
  br i1 %89, label %101, label %106

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %100, i64 0, i32 8
  %103 = load i32, ptr %102, align 4, !tbaa !77
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101, %99
  br i1 %98, label %107, label %116

107:                                              ; preds = %106
  %108 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %100, i64 0, i32 8
  %109 = load i32, ptr %108, align 4, !tbaa !77
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107, %101
  %113 = phi i32 [ %103, %101 ], [ %109, %107 ]
  %114 = phi ptr [ %102, %101 ], [ %108, %107 ]
  %115 = or i32 %113, 2
  store i32 %115, ptr %114, align 4, !tbaa !77
  br label %116

116:                                              ; preds = %112, %107, %106
  %117 = load ptr, ptr %100, align 8, !tbaa !93
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %99, !llvm.loop !206

119:                                              ; preds = %116, %94
  %120 = icmp eq ptr %9, null
  br i1 %120, label %128, label %121

121:                                              ; preds = %119
  %122 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %9, i64 0, i32 8
  %123 = load i32, ptr %122, align 4, !tbaa !77
  %124 = and i32 %123, 32
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 7
  store ptr null, ptr %127, align 8, !tbaa !207
  br label %128

128:                                              ; preds = %126, %121, %119
  tail call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %5) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 338886656, ptr noundef null) #9
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_hide_tracks_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.122, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.123, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.124, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @hide_tracks_clear_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @hide_tracks_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #9
  %7 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %5) #9
  %8 = load ptr, ptr %6, align 8, !tbaa !93
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %13, %2
  %11 = load ptr, ptr %7, align 8, !tbaa !93
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %20

13:                                               ; preds = %2, %13
  %14 = phi ptr [ %18, %13 ], [ %8, %2 ]
  %15 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %14, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !83
  %17 = and i32 %16, -33
  store i32 %17, ptr %15, align 8, !tbaa !83
  %18 = load ptr, ptr %14, align 8, !tbaa !93
  %19 = icmp eq ptr %18, null
  br i1 %19, label %10, label %13, !llvm.loop !208

20:                                               ; preds = %10, %20
  %21 = phi ptr [ %25, %20 ], [ %11, %10 ]
  %22 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %21, i64 0, i32 8
  %23 = load i32, ptr %22, align 4, !tbaa !77
  %24 = and i32 %23, -3
  store i32 %24, ptr %22, align 4, !tbaa !77
  %25 = load ptr, ptr %21, align 8, !tbaa !93
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %20, !llvm.loop !209

27:                                               ; preds = %20, %10
  tail call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %5) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 338886656, ptr noundef null) #9
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_detect_features(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.134, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.135, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.136, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @detect_features_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.137, ptr noundef nonnull @CLIP_OT_detect_features.placement_items, i32 noundef 0, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.139) #9
  %10 = load ptr, ptr %7, align 8, !tbaa !48
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.140, i32 noundef 16, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.142, i32 noundef 0, i32 noundef 300) #9
  %12 = load ptr, ptr %7, align 8, !tbaa !48
  %13 = tail call ptr @RNA_def_float(ptr noundef %12, ptr noundef nonnull @.str.143, float noundef 5.000000e-01, float noundef 0x3F1A36E2E0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, float noundef 0x3F1A36E2E0000000, float noundef 0x47EFFFFFE0000000) #9
  %14 = load ptr, ptr %7, align 8, !tbaa !48
  %15 = tail call ptr @RNA_def_int(ptr noundef %14, ptr noundef nonnull @.str.146, i32 noundef 120, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.147, i32 noundef 0, i32 noundef 300) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @detect_features_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 14
  %6 = load i32, ptr %5, align 8, !tbaa !210
  %7 = and i32 %6, 3
  %8 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 9
  %9 = tail call ptr @BKE_movieclip_get_ibuf_flag(ptr noundef %4, ptr noundef nonnull %8, i32 noundef %7, i32 noundef 1) #9
  %10 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %11 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %10) #9
  %12 = load ptr, ptr %11, align 8, !tbaa !74
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = tail call i32 @RNA_enum_get(ptr noundef %14, ptr noundef nonnull @.str.137) #9
  %16 = load ptr, ptr %13, align 8, !tbaa !49
  %17 = tail call i32 @RNA_int_get(ptr noundef %16, ptr noundef nonnull @.str.140) #9
  %18 = load ptr, ptr %13, align 8, !tbaa !49
  %19 = tail call i32 @RNA_int_get(ptr noundef %18, ptr noundef nonnull @.str.146) #9
  %20 = load ptr, ptr %13, align 8, !tbaa !49
  %21 = tail call float @RNA_float_get(ptr noundef %20, ptr noundef nonnull @.str.143) #9
  %22 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %3) #9
  %23 = icmp eq ptr %9, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !157
  tail call void @BKE_report(ptr noundef %26, i32 noundef 32, ptr noundef nonnull @.str.263) #9
  br label %67

27:                                               ; preds = %2
  %28 = icmp eq i32 %15, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 10
  %31 = load ptr, ptr %30, align 8, !tbaa !211
  %32 = icmp eq ptr %31, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.bGPdata, ptr %31, i64 0, i32 1
  br label %35

35:                                               ; preds = %39, %33
  %36 = phi ptr [ %34, %33 ], [ %37, %39 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !93
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.bGPDlayer, ptr %37, i64 0, i32 4
  %41 = load i32, ptr %40, align 8, !tbaa !212
  %42 = and i32 %41, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %35, label %44, !llvm.loop !214

44:                                               ; preds = %35, %39, %29
  %45 = phi ptr [ null, %29 ], [ %37, %39 ], [ null, %35 ]
  %46 = icmp eq i32 %15, 2
  %47 = zext i1 %46 to i8
  br label %48

48:                                               ; preds = %44, %27
  %49 = phi i8 [ %47, %44 ], [ 0, %27 ]
  %50 = phi ptr [ %45, %44 ], [ null, %27 ]
  %51 = icmp eq ptr %12, null
  br i1 %51, label %65, label %52

52:                                               ; preds = %48, %52
  %53 = phi ptr [ %63, %52 ], [ %12, %48 ]
  %54 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %53, i64 0, i32 13
  %55 = load i32, ptr %54, align 8, !tbaa !83
  %56 = and i32 %55, -2
  store i32 %56, ptr %54, align 8, !tbaa !83
  %57 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %53, i64 0, i32 14
  %58 = load i32, ptr %57, align 4, !tbaa !85
  %59 = and i32 %58, -2
  store i32 %59, ptr %57, align 4, !tbaa !85
  %60 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %53, i64 0, i32 15
  %61 = load i32, ptr %60, align 8, !tbaa !86
  %62 = and i32 %61, -2
  store i32 %62, ptr %60, align 8, !tbaa !86
  %63 = load ptr, ptr %53, align 8, !tbaa !81
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %52, !llvm.loop !215

65:                                               ; preds = %52, %48
  %66 = fdiv float %21, 1.000000e+05
  tail call void @BKE_tracking_detect_harris(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %9, i32 noundef %22, i32 noundef %17, float noundef %66, i32 noundef %19, ptr noundef %50, i8 noundef zeroext %49) #9
  tail call void @IMB_freeImBuf(ptr noundef nonnull %9) #9
  tail call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %10) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef null) #9
  br label %67

67:                                               ; preds = %65, %24
  %68 = phi i32 [ 4, %65 ], [ 2, %24 ]
  ret i32 %68
}

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_frame_jump(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.160, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.161, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.162, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @frame_jump_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.163, ptr noundef nonnull @CLIP_OT_frame_jump.position_items, i32 noundef 0, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.165) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @frame_jump_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %5 = tail call ptr @ED_space_clip_get_clip(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.163) #9
  %9 = icmp slt i32 %8, 2
  %10 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11
  br i1 %9, label %11, label %45

11:                                               ; preds = %2
  %12 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %10) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %85, label %14

14:                                               ; preds = %11
  %15 = icmp eq i32 %8, 1
  %16 = select i1 %15, i32 1, i32 -1
  %17 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 7
  %18 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 9
  %19 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 6
  %20 = load i32, ptr %18, align 8, !tbaa !216
  %21 = add nsw i32 %20, %16
  %22 = load i32, ptr %19, align 4, !tbaa !217
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %76, label %24

24:                                               ; preds = %14, %39
  %25 = phi i32 [ %42, %39 ], [ %21, %14 ]
  %26 = load i32, ptr %17, align 8, !tbaa !218
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %76, label %28

28:                                               ; preds = %24
  %29 = sitofp i32 %25 to float
  %30 = tail call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef %5, float noundef %29) #9
  %31 = fptosi float %30 to i32
  %32 = tail call ptr @BKE_tracking_marker_get_exact(ptr noundef nonnull %12, i32 noundef %31) #9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %76, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %32, i64 0, i32 5
  %36 = load i32, ptr %35, align 4, !tbaa !94
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %34
  %40 = load i32, ptr %18, align 8, !tbaa !216
  %41 = add nsw i32 %40, %16
  store i32 %41, ptr %18, align 8, !tbaa !216
  %42 = add nsw i32 %41, %16
  %43 = load i32, ptr %19, align 4, !tbaa !217
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %76, label %24

45:                                               ; preds = %2
  %46 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11, i32 4
  %47 = load i32, ptr %46, align 8, !tbaa !219
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %76, label %50

50:                                               ; preds = %45
  %51 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %4) #9
  %52 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %10) #9
  %53 = icmp eq i32 %8, 3
  %54 = select i1 %53, i32 1, i32 -1
  %55 = add nsw i32 %51, %54
  %56 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 7
  %57 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 6
  %58 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 9
  br label %59

59:                                               ; preds = %74, %50
  %60 = phi i32 [ %55, %50 ], [ %75, %74 ]
  %61 = add nsw i32 %60, %54
  %62 = load i32, ptr %57, align 4, !tbaa !217
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %76, label %64

64:                                               ; preds = %59
  %65 = load i32, ptr %56, align 8, !tbaa !218
  %66 = icmp sgt i32 %61, %65
  br i1 %66, label %76, label %67

67:                                               ; preds = %64
  %68 = tail call ptr @BKE_tracking_camera_get_reconstructed(ptr noundef nonnull %10, ptr noundef %52, i32 noundef %60) #9
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = sitofp i32 %60 to float
  %72 = tail call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef %5, float noundef %71) #9
  %73 = fptosi float %72 to i32
  store i32 %73, ptr %58, align 8, !tbaa !216
  br label %74

74:                                               ; preds = %67, %70
  %75 = phi i32 [ %60, %70 ], [ %61, %67 ]
  br i1 %69, label %76, label %59

76:                                               ; preds = %64, %59, %74, %39, %24, %28, %34, %14, %45
  %77 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %78 = load i32, ptr %77, align 8, !tbaa !136
  %79 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 9
  %80 = load i32, ptr %79, align 8, !tbaa !216
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %84, label %82

82:                                               ; preds = %76
  store i32 %80, ptr %77, align 8, !tbaa !136
  %83 = tail call ptr @CTX_data_main(ptr noundef %0) #9
  tail call void @sound_seek_scene(ptr noundef %83, ptr noundef %3) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %3) #9
  br label %84

84:                                               ; preds = %82, %76
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 338886656, ptr noundef null) #9
  br label %85

85:                                               ; preds = %11, %84
  %86 = phi i32 [ 4, %84 ], [ 2, %11 ]
  ret i32 %86
}

declare i32 @ED_space_clip_poll(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_join_tracks(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.166, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.167, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.168, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @join_tracks_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @join_tracks_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #9
  %7 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %5) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !157
  tail call void @BKE_report(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str.264) #9
  br label %57

12:                                               ; preds = %2
  %13 = load ptr, ptr %6, align 8, !tbaa !74
  %14 = icmp eq ptr %13, null
  br i1 %14, label %56, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %17 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 5, i32 4
  br label %18

18:                                               ; preds = %15, %54
  %19 = phi ptr [ %13, %15 ], [ %20, %54 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !81
  %21 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %19, i64 0, i32 13
  %22 = load i32, ptr %21, align 8, !tbaa !83
  %23 = and i32 %22, 32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %18
  %26 = and i32 %22, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  %29 = load i32, ptr %16, align 8, !tbaa !84
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %19, i64 0, i32 14
  %34 = load i32, ptr %33, align 4, !tbaa !85
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32, %28
  %38 = and i32 %29, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %19, i64 0, i32 15
  %42 = load i32, ptr %41, align 8, !tbaa !86
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  %45 = icmp eq ptr %19, %7
  %46 = or i1 %45, %44
  br i1 %46, label %54, label %49

47:                                               ; preds = %32, %25
  %48 = icmp eq ptr %19, %7
  br i1 %48, label %54, label %49

49:                                               ; preds = %40, %47
  tail call void @BKE_tracking_tracks_join(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %19) #9
  %50 = load ptr, ptr %17, align 8, !tbaa !220
  %51 = icmp eq ptr %50, %19
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store ptr %7, ptr %17, align 8, !tbaa !220
  br label %53

53:                                               ; preds = %52, %49
  tail call void @BKE_tracking_track_free(ptr noundef nonnull %19) #9
  tail call void @BLI_freelinkN(ptr noundef nonnull %6, ptr noundef nonnull %19) #9
  br label %54

54:                                               ; preds = %53, %47, %40, %37, %18
  %55 = icmp eq ptr %20, null
  br i1 %55, label %56, label %18, !llvm.loop !221

56:                                               ; preds = %54, %12
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %4) #9
  br label %57

57:                                               ; preds = %56, %9
  %58 = phi i32 [ 4, %56 ], [ 2, %9 ]
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_lock_tracks(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.176, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.177, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.178, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @lock_tracks_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.54, ptr noundef nonnull @CLIP_OT_lock_tracks.actions_items, i32 noundef 0, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.179) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @lock_tracks_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #9
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.54) #9
  %11 = icmp eq ptr %7, null
  br i1 %11, label %52, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  br label %14

14:                                               ; preds = %12, %49
  %15 = phi ptr [ %7, %12 ], [ %50, %49 ]
  %16 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %15, i64 0, i32 13
  %17 = load i32, ptr %16, align 8, !tbaa !83
  %18 = and i32 %17, 32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %14
  %21 = and i32 %17, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = load i32, ptr %13, align 8, !tbaa !84
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %15, i64 0, i32 14
  %29 = load i32, ptr %28, align 4, !tbaa !85
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27, %23
  %33 = and i32 %24, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %15, i64 0, i32 15
  %37 = load i32, ptr %36, align 8, !tbaa !86
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %35, %27, %20
  switch i32 %10, label %45 [
    i32 0, label %41
    i32 1, label %43
  ]

41:                                               ; preds = %40
  %42 = or i32 %17, 64
  br label %47

43:                                               ; preds = %40
  %44 = and i32 %17, -97
  br label %47

45:                                               ; preds = %40
  %46 = xor i32 %17, 64
  br label %47

47:                                               ; preds = %43, %45, %41
  %48 = phi i32 [ %42, %41 ], [ %46, %45 ], [ %44, %43 ]
  store i32 %48, ptr %16, align 8, !tbaa !83
  br label %49

49:                                               ; preds = %47, %35, %32, %14
  %50 = load ptr, ptr %15, align 8, !tbaa !81
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %14, !llvm.loop !222

52:                                               ; preds = %49, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544322, ptr noundef %4) #9
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_set_solver_keyframe(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.185, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.186, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.187, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @set_solver_keyframe_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.188, ptr noundef nonnull @CLIP_OT_set_solver_keyframe.keyframe_items, i32 noundef 0, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @set_solver_keyframe_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %5) #9
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.188) #9
  %10 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !216
  %12 = sitofp i32 %11 to float
  %13 = tail call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef %4, float noundef %12) #9
  %14 = fptosi float %13 to i32
  %15 = icmp eq i32 %9, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.MovieTrackingObject, ptr %6, i64 0, i32 8
  store i32 %14, ptr %17, align 8, !tbaa !223
  br label %20

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.MovieTrackingObject, ptr %6, i64 0, i32 9
  store i32 %14, ptr %19, align 4, !tbaa !224
  br label %20

20:                                               ; preds = %18, %16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 338886656, ptr noundef %4) #9
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_track_copy_color(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.191, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.192, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.193, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @track_copy_color_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @track_copy_color_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #9
  %7 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %5) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %65, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %6, align 8, !tbaa !93
  %11 = icmp eq ptr %10, null
  br i1 %11, label %64, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %14 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %7, i64 0, i32 13
  %15 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %7, i64 0, i32 16
  %16 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %7, i64 0, i32 16, i64 1
  %17 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %7, i64 0, i32 16, i64 2
  br label %18

18:                                               ; preds = %12, %61
  %19 = phi ptr [ %10, %12 ], [ %62, %61 ]
  %20 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %19, i64 0, i32 13
  %21 = load i32, ptr %20, align 8, !tbaa !83
  %22 = and i32 %21, 32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %18
  %25 = and i32 %21, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = load i32, ptr %13, align 8, !tbaa !84
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %19, i64 0, i32 14
  %33 = load i32, ptr %32, align 4, !tbaa !85
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31, %27
  %37 = and i32 %28, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %61, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %19, i64 0, i32 15
  %41 = load i32, ptr %40, align 8, !tbaa !86
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  %44 = icmp eq ptr %19, %7
  %45 = or i1 %44, %43
  br i1 %45, label %61, label %48

46:                                               ; preds = %31, %24
  %47 = icmp eq ptr %19, %7
  br i1 %47, label %61, label %48

48:                                               ; preds = %39, %46
  %49 = and i32 %21, -161
  store i32 %49, ptr %20, align 8, !tbaa !83
  %50 = load i32, ptr %14, align 8, !tbaa !83
  %51 = and i32 %50, 128
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %19, i64 0, i32 16
  %55 = load float, ptr %15, align 4, !tbaa !51
  store float %55, ptr %54, align 4, !tbaa !51
  %56 = load float, ptr %16, align 4, !tbaa !51
  %57 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %19, i64 0, i32 16, i64 1
  store float %56, ptr %57, align 4, !tbaa !51
  %58 = load float, ptr %17, align 4, !tbaa !51
  %59 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %19, i64 0, i32 16, i64 2
  store float %58, ptr %59, align 4, !tbaa !51
  %60 = or i32 %21, 128
  store i32 %60, ptr %20, align 8, !tbaa !83
  br label %61

61:                                               ; preds = %48, %53, %46, %39, %36, %18
  %62 = load ptr, ptr %19, align 8, !tbaa !93
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %18, !llvm.loop !225

64:                                               ; preds = %61, %9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 338886656, ptr noundef %4) #9
  br label %65

65:                                               ; preds = %2, %64
  %66 = phi i32 [ 4, %64 ], [ 2, %2 ]
  ret i32 %66
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_stabilize_2d_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.194, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.195, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.196, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @stabilize_2d_add_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @stabilize_2d_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @stabilize_2d_add_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #9
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = icmp eq ptr %7, null
  br i1 %8, label %57, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %11 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 5, i32 1
  br label %12

12:                                               ; preds = %9, %49
  %13 = phi ptr [ %7, %9 ], [ %51, %49 ]
  %14 = phi i32 [ 0, %9 ], [ %50, %49 ]
  %15 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %13, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !83
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %12
  %20 = and i32 %16, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %19
  %23 = load i32, ptr %10, align 8, !tbaa !84
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %13, i64 0, i32 14
  %28 = load i32, ptr %27, align 4, !tbaa !85
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26, %22
  %32 = and i32 %23, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %13, i64 0, i32 15
  %36 = load i32, ptr %35, align 8, !tbaa !86
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  %39 = and i32 %16, 256
  %40 = icmp eq i32 %39, 0
  %41 = and i1 %40, %38
  br i1 %41, label %45, label %49

42:                                               ; preds = %26, %19
  %43 = and i32 %16, 256
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %34, %42
  %46 = or disjoint i32 %16, 256
  store i32 %46, ptr %15, align 8, !tbaa !83
  %47 = load i32, ptr %11, align 4, !tbaa !226
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %11, align 4, !tbaa !226
  br label %49

49:                                               ; preds = %45, %42, %34, %31, %12
  %50 = phi i32 [ 1, %45 ], [ %14, %42 ], [ %14, %34 ], [ %14, %31 ], [ %14, %12 ]
  %51 = load ptr, ptr %13, align 8, !tbaa !93
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %12, !llvm.loop !227

53:                                               ; preds = %49
  %54 = icmp eq i32 %50, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 5, i32 9
  store i32 0, ptr %56, align 8, !tbaa !228
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 338886656, ptr noundef %4) #9
  br label %57

57:                                               ; preds = %2, %55, %53
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @stabilize_2d_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_space_clip_tracking_poll(ptr noundef %0) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %6 = tail call ptr @ED_space_clip_get_clip(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.MovieClip, ptr %6, i64 0, i32 11
  %8 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %7) #9
  %9 = getelementptr inbounds %struct.MovieTrackingObject, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !195
  %11 = and i32 %10, 1
  br label %12

12:                                               ; preds = %1, %4
  %13 = phi i32 [ %11, %4 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_stabilize_2d_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.197, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.198, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.199, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @stabilize_2d_remove_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @stabilize_2d_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @stabilize_2d_remove_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #9
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = icmp eq ptr %7, null
  br i1 %8, label %39, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 5, i32 2
  br label %11

11:                                               ; preds = %9, %33
  %12 = phi ptr [ %7, %9 ], [ %35, %33 ]
  %13 = phi i32 [ 0, %9 ], [ %34, %33 ]
  %14 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %12, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !83
  %16 = and i32 %15, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %11
  %19 = load i32, ptr %10, align 8, !tbaa !229
  %20 = icmp eq i32 %13, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %12, i64 0, i32 13
  %23 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 5, i32 2
  %24 = and i32 %15, -257
  store i32 %24, ptr %22, align 8, !tbaa !83
  %25 = add nsw i32 %19, -1
  store i32 %25, ptr %23, align 8, !tbaa !229
  %26 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 5, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !226
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr %26, align 4, !tbaa !226
  %29 = icmp slt i32 %19, 1
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  store i32 0, ptr %23, align 8, !tbaa !229
  br label %37

31:                                               ; preds = %18
  %32 = add nsw i32 %13, 1
  br label %33

33:                                               ; preds = %31, %11
  %34 = phi i32 [ %32, %31 ], [ %13, %11 ]
  %35 = load ptr, ptr %12, align 8, !tbaa !93
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %11, !llvm.loop !230

37:                                               ; preds = %30, %21
  %38 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 5, i32 9
  store i32 0, ptr %38, align 8, !tbaa !228
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 338886656, ptr noundef %4) #9
  br label %39

39:                                               ; preds = %33, %2, %37
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_stabilize_2d_select(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.200, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.201, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.202, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @stabilize_2d_select_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @stabilize_2d_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @stabilize_2d_select_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #9
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %2, %17
  %10 = phi ptr [ %19, %17 ], [ %7, %2 ]
  %11 = phi i32 [ %18, %17 ], [ 0, %2 ]
  %12 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %10, i64 0, i32 13
  %13 = load i32, ptr %12, align 8, !tbaa !83
  %14 = and i32 %13, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  tail call void @BKE_tracking_track_flag_set(ptr noundef nonnull %10, i32 noundef 7, i32 noundef 1) #9
  br label %17

17:                                               ; preds = %16, %9
  %18 = phi i32 [ 1, %16 ], [ %11, %9 ]
  %19 = load ptr, ptr %10, align 8, !tbaa !93
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %9, !llvm.loop !231

21:                                               ; preds = %17
  %22 = icmp eq i32 %18, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %21
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 341442560, ptr noundef %4) #9
  br label %24

24:                                               ; preds = %2, %23, %21
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_stabilize_2d_set_rotation(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.203, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.204, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.205, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @stabilize_2d_set_rotation_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @stabilize_2d_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @stabilize_2d_set_rotation_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %5) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 5, i32 4
  store ptr %6, ptr %9, align 8, !tbaa !232
  %10 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 5, i32 9
  store i32 0, ptr %10, align 8, !tbaa !228
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 338886656, ptr noundef %4) #9
  br label %11

11:                                               ; preds = %8, %2
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @CLIP_OT_clean_tracks(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.214, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.215, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.216, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @clean_tracks_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @clean_tracks_invoke, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.217, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.219, i32 noundef 0, i32 noundef 2147483647) #9
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.220, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.222, float noundef 0.000000e+00, float noundef 1.000000e+02) #9
  %13 = load ptr, ptr %8, align 8, !tbaa !48
  %14 = tail call ptr @RNA_def_enum(ptr noundef %13, ptr noundef nonnull @.str.54, ptr noundef nonnull @CLIP_OT_clean_tracks.actions_items, i32 noundef 0, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.223) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @clean_tracks_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #9
  %7 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %5) #9
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.217) #9
  %11 = load ptr, ptr %8, align 8, !tbaa !49
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.54) #9
  %13 = load ptr, ptr %8, align 8, !tbaa !49
  %14 = tail call float @RNA_float_get(ptr noundef %13, ptr noundef nonnull @.str.220) #9
  %15 = fcmp une float %14, 0.000000e+00
  %16 = icmp eq i32 %12, 2
  %17 = select i1 %15, i1 %16, i1 false
  %18 = select i1 %17, i32 1, i32 %12
  %19 = load ptr, ptr %6, align 8, !tbaa !74
  %20 = icmp eq ptr %19, null
  br i1 %20, label %204, label %21

21:                                               ; preds = %2
  %22 = icmp eq i32 %18, 2
  %23 = icmp eq i32 %10, 0
  %24 = fcmp oeq float %14, 0.000000e+00
  %25 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 6
  %26 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 6
  br label %27

27:                                               ; preds = %21, %202
  %28 = phi ptr [ %19, %21 ], [ %29, %202 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !81
  %30 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %28, i64 0, i32 13
  %31 = load i32, ptr %30, align 8, !tbaa !83
  %32 = and i32 %31, 96
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %202

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %28, i64 0, i32 10
  %36 = load ptr, ptr %35, align 8, !tbaa !108
  %37 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %28, i64 0, i32 8
  %38 = load i32, ptr %37, align 8, !tbaa !88
  br i1 %22, label %39, label %44

39:                                               ; preds = %34
  %40 = load ptr, ptr @MEM_callocN, align 8, !tbaa !93
  %41 = sext i32 %38 to i64
  %42 = shl nsw i64 %41, 6
  %43 = tail call ptr %40(i64 noundef %42, ptr noundef nonnull @.str.265) #9
  br label %44

44:                                               ; preds = %39, %34
  %45 = phi ptr [ %43, %39 ], [ null, %34 ]
  %46 = getelementptr %struct.MovieTrackingMarker, ptr %36, i64 1, i32 4
  %47 = getelementptr %struct.MovieTrackingMarker, ptr %36, i64 -1, i32 4
  %48 = icmp sgt i32 %38, 0
  br i1 %48, label %49, label %163

49:                                               ; preds = %44
  %50 = add nsw i32 %38, -1
  %51 = sext i32 %50 to i64
  %52 = zext i32 %50 to i64
  %53 = zext nneg i32 %38 to i64
  br label %54

54:                                               ; preds = %153, %49
  %55 = phi i64 [ %159, %153 ], [ 0, %49 ]
  %56 = phi i8 [ %157, %153 ], [ 1, %49 ]
  %57 = phi i32 [ %156, %153 ], [ 0, %49 ]
  %58 = phi i32 [ %160, %153 ], [ 0, %49 ]
  %59 = phi i32 [ %155, %153 ], [ 0, %49 ]
  %60 = phi i32 [ %154, %153 ], [ -1, %49 ]
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %36, i64 %55, i32 5
  %64 = load i32, ptr %63, align 4, !tbaa !94
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  %67 = trunc i64 %55 to i32
  %68 = select i1 %66, i32 %67, i32 -1
  %69 = select i1 %66, i32 %57, i32 1
  br label %70

70:                                               ; preds = %62, %54
  %71 = phi i32 [ %60, %54 ], [ %68, %62 ]
  %72 = phi i32 [ %57, %54 ], [ %69, %62 ]
  %73 = icmp sgt i32 %71, -1
  br i1 %73, label %74, label %93

74:                                               ; preds = %70
  %75 = icmp eq i64 %55, %52
  %76 = icmp slt i64 %55, %51
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %36, i64 %55, i32 4
  %79 = load i32, ptr %78, align 4, !tbaa !233
  %80 = getelementptr %struct.MovieTrackingMarker, ptr %46, i64 %55
  %81 = load i32, ptr %80, align 4, !tbaa !233
  %82 = add nsw i32 %81, -1
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %36, i64 %55, i32 5
  %86 = load i32, ptr %85, align 4, !tbaa !94
  %87 = and i32 %86, 1
  %88 = icmp ne i32 %87, 0
  br label %89

89:                                               ; preds = %84, %77, %74
  %90 = phi i1 [ false, %74 ], [ true, %77 ], [ %88, %84 ]
  %91 = or i1 %75, %90
  %92 = zext i1 %91 to i32
  br label %93

93:                                               ; preds = %89, %70
  %94 = phi i32 [ %92, %89 ], [ 0, %70 ]
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %153, label %96

96:                                               ; preds = %93
  %97 = zext i32 %71 to i64
  %98 = icmp eq i64 %55, %97
  %99 = trunc i64 %55 to i32
  br i1 %98, label %107, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %36, i64 %55, i32 4
  %102 = load i32, ptr %101, align 4, !tbaa !233
  %103 = getelementptr %struct.MovieTrackingMarker, ptr %47, i64 %55
  %104 = load i32, ptr %103, align 4, !tbaa !233
  %105 = add nsw i32 %104, 1
  %106 = icmp eq i32 %102, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %100, %96
  %108 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %36, i64 %55, i32 5
  %109 = load i32, ptr %108, align 4, !tbaa !94
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  %112 = add nuw nsw i32 %58, 1
  %113 = select i1 %111, i32 %112, i32 %99
  br label %114

114:                                              ; preds = %107, %100
  %115 = phi i32 [ %99, %100 ], [ %113, %107 ]
  %116 = sub i32 %115, %71
  %117 = icmp sge i32 %116, %10
  %118 = select i1 %23, i1 true, i1 %117
  %119 = or i1 %22, %118
  %120 = select i1 %118, i8 %56, i8 0
  br i1 %119, label %121, label %153

121:                                              ; preds = %114
  br i1 %22, label %122, label %153

122:                                              ; preds = %121
  %123 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %36, i64 %55, i32 5
  %124 = load i32, ptr %123, align 4, !tbaa !94
  %125 = and i32 %124, 1
  br i1 %118, label %126, label %150

126:                                              ; preds = %122
  %127 = add i32 %125, %116
  %128 = icmp eq i32 %72, 0
  br i1 %128, label %141, label %129

129:                                              ; preds = %126
  %130 = sext i32 %59 to i64
  %131 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %45, i64 %130
  %132 = sext i32 %71 to i64
  %133 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %36, i64 %132
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %131, ptr noundef nonnull align 4 dereferenceable(64) %133, i64 64, i1 false)
  %134 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %45, i64 %130, i32 4
  %135 = load i32, ptr %134, align 4, !tbaa !233
  %136 = add nsw i32 %135, -1
  store i32 %136, ptr %134, align 4, !tbaa !233
  %137 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %45, i64 %130, i32 5
  %138 = load i32, ptr %137, align 4, !tbaa !94
  %139 = or i32 %138, 1
  store i32 %139, ptr %137, align 4, !tbaa !94
  %140 = add nsw i32 %59, 1
  br label %141

141:                                              ; preds = %129, %126
  %142 = phi i32 [ %140, %129 ], [ %59, %126 ]
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %45, i64 %143
  %145 = sext i32 %71 to i64
  %146 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %36, i64 %145
  %147 = sext i32 %127 to i64
  %148 = shl nsw i64 %147, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %144, ptr align 4 %146, i64 %148, i1 false)
  %149 = add nsw i32 %142, %127
  br label %153

150:                                              ; preds = %122
  %151 = icmp eq i32 %125, 0
  %152 = select i1 %151, i32 %72, i32 1
  br label %153

153:                                              ; preds = %114, %121, %141, %150, %93
  %154 = phi i32 [ %71, %93 ], [ %71, %114 ], [ -1, %141 ], [ -1, %150 ], [ -1, %121 ]
  %155 = phi i32 [ %59, %93 ], [ %59, %114 ], [ %149, %141 ], [ %59, %150 ], [ %59, %121 ]
  %156 = phi i32 [ %72, %93 ], [ %72, %114 ], [ 0, %141 ], [ %152, %150 ], [ %72, %121 ]
  %157 = phi i8 [ %56, %93 ], [ 0, %114 ], [ %120, %141 ], [ %120, %150 ], [ %120, %121 ]
  %158 = phi i1 [ true, %93 ], [ false, %114 ], [ true, %141 ], [ true, %150 ], [ true, %121 ]
  %159 = add nuw nsw i64 %55, 1
  %160 = add nuw nsw i32 %58, 1
  %161 = icmp ult i64 %159, %53
  %162 = select i1 %158, i1 %161, i1 false
  br i1 %162, label %54, label %163, !llvm.loop !234

163:                                              ; preds = %153, %44
  %164 = phi i32 [ 0, %44 ], [ %155, %153 ]
  %165 = phi i8 [ 1, %44 ], [ %157, %153 ]
  br i1 %22, label %166, label %174

166:                                              ; preds = %163
  %167 = load ptr, ptr @MEM_freeN, align 8, !tbaa !93
  %168 = load ptr, ptr %35, align 8, !tbaa !108
  tail call void %167(ptr noundef %168) #9
  %169 = icmp eq i32 %164, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %166
  store ptr %45, ptr %35, align 8, !tbaa !108
  br label %173

171:                                              ; preds = %166
  store ptr null, ptr %35, align 8, !tbaa !108
  %172 = load ptr, ptr @MEM_freeN, align 8, !tbaa !93
  tail call void %172(ptr noundef %45) #9
  br label %173

173:                                              ; preds = %171, %170
  store i32 %164, ptr %37, align 8, !tbaa !88
  br label %174

174:                                              ; preds = %163, %173
  %175 = icmp eq i8 %165, 0
  br i1 %175, label %185, label %176

176:                                              ; preds = %174
  br i1 %24, label %202, label %177

177:                                              ; preds = %176
  %178 = load i32, ptr %30, align 8, !tbaa !83
  %179 = and i32 %178, 2
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %202, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %28, i64 0, i32 12
  %183 = load float, ptr %182, align 4, !tbaa !235
  %184 = fcmp olt float %183, %14
  br i1 %184, label %202, label %185

185:                                              ; preds = %174, %181
  switch i32 %18, label %191 [
    i32 0, label %186
    i32 1, label %187
  ]

186:                                              ; preds = %185
  tail call void @BKE_tracking_track_flag_set(ptr noundef nonnull %28, i32 noundef 7, i32 noundef 1) #9
  br label %191

187:                                              ; preds = %185
  %188 = icmp eq ptr %28, %7
  br i1 %188, label %189, label %190

189:                                              ; preds = %187
  store ptr null, ptr %25, align 8, !tbaa !205
  br label %190

190:                                              ; preds = %189, %187
  tail call void @BKE_tracking_track_free(ptr noundef nonnull %28) #9
  tail call void @BLI_freelinkN(ptr noundef nonnull %6, ptr noundef nonnull %28) #9
  br label %191

191:                                              ; preds = %185, %190, %186
  %192 = phi ptr [ %28, %186 ], [ null, %190 ], [ %28, %185 ]
  %193 = icmp eq ptr %192, null
  br i1 %193, label %202, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %192, i64 0, i32 8
  %196 = load i32, ptr %195, align 8, !tbaa !88
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %194
  %199 = icmp eq ptr %192, %7
  br i1 %199, label %200, label %201

200:                                              ; preds = %198
  store ptr null, ptr %26, align 8, !tbaa !205
  br label %201

201:                                              ; preds = %200, %198
  tail call void @BKE_tracking_track_free(ptr noundef nonnull %192) #9
  tail call void @BLI_freelinkN(ptr noundef nonnull %6, ptr noundef nonnull %192) #9
  br label %202

202:                                              ; preds = %181, %201, %194, %191, %176, %177, %27
  %203 = icmp eq ptr %29, null
  br i1 %203, label %204, label %27, !llvm.loop !236

204:                                              ; preds = %202, %2
  tail call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %5) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 341442560, ptr noundef %4) #9
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @clean_tracks_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %5 = tail call ptr @ED_space_clip_get_clip(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %7, ptr noundef nonnull @.str.217) #9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load ptr, ptr %6, align 8, !tbaa !49
  %12 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11, i32 0, i32 19
  %13 = load i32, ptr %12, align 4, !tbaa !237
  tail call void @RNA_int_set(ptr noundef %11, ptr noundef nonnull @.str.217, i32 noundef %13) #9
  br label %14

14:                                               ; preds = %10, %3
  %15 = load ptr, ptr %6, align 8, !tbaa !49
  %16 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %15, ptr noundef nonnull @.str.220) #9
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load ptr, ptr %6, align 8, !tbaa !49
  %20 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11, i32 0, i32 21
  %21 = load float, ptr %20, align 4, !tbaa !238
  tail call void @RNA_float_set(ptr noundef %19, ptr noundef nonnull @.str.220, float noundef %21) #9
  br label %22

22:                                               ; preds = %18, %14
  %23 = load ptr, ptr %6, align 8, !tbaa !49
  %24 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %23, ptr noundef nonnull @.str.54) #9
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load ptr, ptr %6, align 8, !tbaa !49
  %28 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11, i32 0, i32 20
  %29 = load i32, ptr %28, align 8, !tbaa !239
  tail call void @RNA_enum_set(ptr noundef %27, ptr noundef nonnull @.str.54, i32 noundef %29) #9
  br label %30

30:                                               ; preds = %26, %22
  %31 = tail call i32 @clean_tracks_exec(ptr noundef %0, ptr noundef %1)
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_tracking_object_new(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.224, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.225, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.226, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @tracking_object_new_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tracking_object_new_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_object_add(ptr noundef nonnull %5, ptr noundef nonnull @.str.266) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %4) #9
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_tracking_object_remove(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.227, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.228, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.229, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @tracking_object_remove_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tracking_object_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %5) #9
  %7 = getelementptr inbounds %struct.MovieTrackingObject, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !195
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !157
  tail call void @BKE_report(ptr noundef %13, i32 noundef 16, ptr noundef nonnull @.str.267) #9
  br label %16

14:                                               ; preds = %2
  %15 = tail call zeroext i8 @BKE_tracking_object_delete(ptr noundef nonnull %5, ptr noundef %6) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %4) #9
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i32 [ 2, %11 ], [ 4, %14 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_copy_tracks(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.230, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.231, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.232, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @copy_tracks_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 1, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @copy_tracks_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %5) #9
  %7 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #9
  %8 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %9 = load i32, ptr %8, align 8, !tbaa !84
  %10 = shl i32 %9, 1
  %11 = and i32 %10, 6
  %12 = xor i32 %11, 6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %7, align 8, !tbaa !93
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %14, %24
  %18 = phi ptr [ %25, %24 ], [ %15, %14 ]
  %19 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 13
  %20 = load i32, ptr %19, align 8, !tbaa !83
  %21 = and i32 %20, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  tail call void @BKE_tracking_track_flag_clear(ptr noundef nonnull %18, i32 noundef %12, i32 noundef 1) #9
  br label %24

24:                                               ; preds = %23, %17
  %25 = load ptr, ptr %18, align 8, !tbaa !93
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %17, !llvm.loop !240

27:                                               ; preds = %24, %2, %14
  tail call void @BKE_tracking_clipboard_copy_tracks(ptr noundef nonnull %5, ptr noundef %6) #9
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_paste_tracks(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.233, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.234, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.235, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paste_tracks_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @paste_tracks_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @paste_tracks_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %5) #9
  %7 = tail call ptr @BKE_tracking_object_get_tracks(ptr noundef nonnull %5, ptr noundef %6) #9
  tail call void @BKE_tracking_tracks_deselect_all(ptr noundef %7) #9
  tail call void @BKE_tracking_clipboard_paste_tracks(ptr noundef nonnull %5, ptr noundef %6) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %4) #9
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @paste_tracks_poll(ptr noundef %0) #0 {
  %2 = tail call i32 @ED_space_clip_tracking_poll(ptr noundef %0) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call zeroext i8 @BKE_tracking_clipboard_has_tracks() #9
  %6 = zext i8 %5 to i32
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi i32 [ %6, %4 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_create_plane_track(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.236, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.237, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.238, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @create_plane_track_tracks_exec, ptr %4, align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @create_plane_track_tracks_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #9
  %7 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %5) #9
  %8 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %3) #9
  %9 = tail call ptr @BKE_tracking_plane_track_add(ptr noundef nonnull %5, ptr noundef %7, ptr noundef %6, i32 noundef %8) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !157
  tail call void @BKE_report(ptr noundef %13, i32 noundef 32, ptr noundef nonnull @.str.268) #9
  br label %20

14:                                               ; preds = %2
  tail call void @BKE_tracking_tracks_deselect_all(ptr noundef %6) #9
  %15 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %9, i64 0, i32 8
  %16 = load i32, ptr %15, align 4, !tbaa !77
  %17 = or i32 %16, 1
  store i32 %17, ptr %15, align 4, !tbaa !77
  %18 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 6
  store ptr null, ptr %18, align 8, !tbaa !205
  %19 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 7
  store ptr %9, ptr %19, align 8, !tbaa !207
  tail call void @BKE_tracking_track_plane_from_existing_motion(ptr noundef nonnull %9, i32 noundef %8) #9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %4) #9
  br label %20

20:                                               ; preds = %14, %11
  %21 = phi i32 [ 2, %11 ], [ 4, %14 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_slide_plane_marker(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.239, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.240, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.241, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @slide_plane_marker_invoke, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @slide_plane_marker_modal, ptr %6, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 23, ptr %7, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @slide_plane_marker_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x float], align 4
  %10 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %11 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  %12 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %10) #9
  call void @ED_space_clip_get_size(ptr noundef %10, ptr noundef nonnull %7, ptr noundef nonnull %8) #9
  %13 = load i32, ptr %7, align 4, !tbaa !92
  %14 = icmp eq i32 %13, 0
  %15 = load i32, ptr %8, align 4
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %139, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_clip_mouse_pos(ptr noundef %10, ptr noundef %11, ptr noundef nonnull %19, ptr noundef nonnull %9) #9
  %20 = call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %21 = call ptr @CTX_wm_region(ptr noundef %0) #9
  %22 = call ptr @ED_space_clip_get_clip(ptr noundef %20) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  %23 = getelementptr inbounds %struct.MovieClip, ptr %22, i64 0, i32 11
  %24 = call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %23) #9
  %25 = call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %20) #9
  call void @ED_space_clip_get_size(ptr noundef %20, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %26 = load i32, ptr %4, align 4, !tbaa !92
  %27 = icmp eq i32 %26, 0
  %28 = load i32, ptr %5, align 4
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %104, label %31

31:                                               ; preds = %18
  call void @ED_clip_mouse_pos(ptr noundef %20, ptr noundef %21, ptr noundef nonnull %19, ptr noundef nonnull %6) #9
  %32 = load ptr, ptr %24, align 8, !tbaa !93
  %33 = icmp eq ptr %32, null
  br i1 %33, label %104, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.SpaceClip, ptr %20, i64 0, i32 8
  %36 = getelementptr inbounds float, ptr %6, i64 1
  br label %37

37:                                               ; preds = %34, %99
  %38 = phi ptr [ %32, %34 ], [ %102, %99 ]
  %39 = phi ptr [ undef, %34 ], [ %101, %99 ]
  %40 = phi i32 [ undef, %34 ], [ %100, %99 ]
  %41 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %38, i64 0, i32 8
  %42 = load i32, ptr %41, align 4, !tbaa !77
  %43 = and i32 %42, 3
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %99

45:                                               ; preds = %37
  %46 = call ptr @BKE_tracking_plane_marker_get(ptr noundef nonnull %38, i32 noundef %25) #9
  %47 = load i32, ptr %4, align 4, !tbaa !92
  %48 = load i32, ptr %5, align 4, !tbaa !92
  %49 = sitofp i32 %47 to float
  %50 = fdiv float 1.200000e+01, %49
  %51 = load float, ptr %35, align 4, !tbaa !95
  %52 = fdiv float %50, %51
  %53 = sitofp i32 %48 to float
  %54 = fdiv float 1.200000e+01, %53
  %55 = fdiv float %54, %51
  %56 = load float, ptr %6, align 4
  %57 = load float, ptr %36, align 4
  br label %58

58:                                               ; preds = %45, %89
  %59 = phi i64 [ 0, %45 ], [ %90, %89 ]
  %60 = phi i1 [ false, %45 ], [ %91, %89 ]
  %61 = getelementptr inbounds [4 x [2 x float]], ptr %46, i64 0, i64 %59
  %62 = load float, ptr %61, align 4, !tbaa !51
  %63 = fsub float %62, %52
  %64 = fadd float %62, %52
  %65 = fcmp olt float %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = fcmp ugt float %63, %56
  %68 = fcmp ugt float %56, %64
  %69 = or i1 %67, %68
  br i1 %69, label %86, label %74

70:                                               ; preds = %58
  %71 = fcmp ugt float %64, %56
  %72 = fcmp ugt float %56, %63
  %73 = or i1 %71, %72
  br i1 %73, label %86, label %74

74:                                               ; preds = %70, %66
  %75 = getelementptr inbounds float, ptr %61, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !51
  %77 = fsub float %76, %55
  %78 = fadd float %55, %76
  %79 = fcmp olt float %77, %78
  %80 = select i1 %79, float %77, float %78
  %81 = select i1 %79, float %78, float %77
  %82 = fcmp ole float %80, %57
  %83 = fcmp ole float %57, %81
  %84 = and i1 %82, %83
  %85 = zext i1 %84 to i8
  br label %86

86:                                               ; preds = %74, %70, %66
  %87 = phi i8 [ %85, %74 ], [ 0, %66 ], [ 0, %70 ]
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = add nuw nsw i64 %59, 1
  %91 = icmp ugt i64 %59, 2
  %92 = icmp eq i64 %90, 4
  br i1 %92, label %95, label %58, !llvm.loop !241

93:                                               ; preds = %86
  %94 = trunc i64 %59 to i32
  br label %95

95:                                               ; preds = %89, %93
  %96 = phi i1 [ %60, %93 ], [ %91, %89 ]
  %97 = phi i32 [ %94, %93 ], [ %40, %89 ]
  %98 = phi ptr [ %38, %93 ], [ %39, %89 ]
  br i1 %96, label %99, label %104

99:                                               ; preds = %95, %37
  %100 = phi i32 [ %97, %95 ], [ %40, %37 ]
  %101 = phi ptr [ %98, %95 ], [ %39, %37 ]
  %102 = load ptr, ptr %38, align 8, !tbaa !93
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %37, !llvm.loop !242

104:                                              ; preds = %99, %95, %31, %18
  %105 = phi i32 [ undef, %18 ], [ undef, %31 ], [ %97, %95 ], [ %100, %99 ]
  %106 = phi ptr [ null, %18 ], [ null, %31 ], [ %98, %95 ], [ null, %99 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %107 = icmp eq ptr %106, null
  br i1 %107, label %139, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr @MEM_callocN, align 8, !tbaa !93
  %110 = call ptr %109(i64 noundef 80, ptr noundef nonnull @.str.269) #9
  %111 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %112 = load i16, ptr %111, align 8, !tbaa !63
  %113 = sext i16 %112 to i32
  store i32 %113, ptr %110, align 8, !tbaa !243
  %114 = call ptr @BKE_tracking_plane_marker_ensure(ptr noundef nonnull %106, i32 noundef %12) #9
  %115 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %110, i64 0, i32 1
  store ptr %106, ptr %115, align 8, !tbaa !245
  %116 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %110, i64 0, i32 2
  store ptr %114, ptr %116, align 8, !tbaa !246
  %117 = load i32, ptr %7, align 4, !tbaa !92
  %118 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %110, i64 0, i32 3
  store i32 %117, ptr %118, align 8, !tbaa !247
  %119 = load i32, ptr %8, align 4, !tbaa !92
  %120 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %110, i64 0, i32 4
  store i32 %119, ptr %120, align 4, !tbaa !248
  %121 = load i32, ptr %19, align 4, !tbaa !92
  %122 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %110, i64 0, i32 7
  store i32 %121, ptr %122, align 8, !tbaa !92
  %123 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %124 = load i32, ptr %123, align 4, !tbaa !92
  %125 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %110, i64 0, i32 7, i64 1
  store i32 %124, ptr %125, align 4, !tbaa !92
  %126 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %110, i64 0, i32 5
  store i32 %105, ptr %126, align 8, !tbaa !249
  %127 = sext i32 %105 to i64
  %128 = getelementptr inbounds [4 x [2 x float]], ptr %114, i64 0, i64 %127
  %129 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %110, i64 0, i32 6
  store ptr %128, ptr %129, align 8, !tbaa !250
  %130 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %110, i64 0, i32 8
  %131 = load float, ptr %128, align 4, !tbaa !51
  store float %131, ptr %130, align 4, !tbaa !51
  %132 = getelementptr inbounds float, ptr %128, i64 1
  %133 = load float, ptr %132, align 4, !tbaa !51
  %134 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %110, i64 0, i32 8, i64 1
  store float %133, ptr %134, align 4, !tbaa !51
  %135 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %110, i64 0, i32 9
  %136 = load float, ptr %128, align 4, !tbaa !51
  store float %136, ptr %135, align 4, !tbaa !51
  %137 = load float, ptr %132, align 4, !tbaa !51
  %138 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %110, i64 0, i32 9, i64 1
  store float %137, ptr %138, align 4, !tbaa !51
  br label %139

139:                                              ; preds = %3, %104, %108
  %140 = phi ptr [ null, %3 ], [ %110, %108 ], [ null, %104 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  %141 = icmp eq ptr %140, null
  br i1 %141, label %152, label %142

142:                                              ; preds = %139
  %143 = call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %144 = call ptr @ED_space_clip_get_clip(ptr noundef %143) #9
  %145 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %140, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !245
  %147 = getelementptr inbounds %struct.MovieClip, ptr %144, i64 0, i32 11, i32 7
  store ptr %146, ptr %147, align 8, !tbaa !122
  %148 = getelementptr inbounds %struct.MovieClip, ptr %144, i64 0, i32 11, i32 6
  store ptr null, ptr %148, align 8, !tbaa !115
  %149 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %140, ptr %149, align 8, !tbaa !123
  %150 = call ptr @CTX_wm_window(ptr noundef %0) #9
  call void @WM_cursor_set(ptr noundef %150, i32 noundef 1007) #9
  %151 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef null) #9
  br label %152

152:                                              ; preds = %139, %142
  %153 = phi i32 [ 1, %142 ], [ 8, %139 ]
  ret i32 %153
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @slide_plane_marker_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %5 = tail call ptr @ED_space_clip_get_clip(ptr noundef %4) #9
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !123
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !63
  switch i16 %9, label %159 [
    i16 212, label %10
    i16 215, label %10
    i16 217, label %10
    i16 216, label %10
    i16 4, label %19
    i16 1, label %124
    i16 3, label %124
    i16 218, label %146
  ]

10:                                               ; preds = %3, %3, %3, %3
  %11 = and i16 %9, -2
  %12 = icmp eq i16 %11, 216
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %15 = load i16, ptr %14, align 2, !tbaa !124
  %16 = icmp eq i16 %15, 1
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %7, i64 0, i32 10
  store i8 %17, ptr %18, align 8, !tbaa !251
  br label %19

19:                                               ; preds = %10, %13, %3
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !92
  %22 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %7, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !92
  %24 = sub nsw i32 %21, %23
  %25 = sitofp i32 %24 to float
  %26 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %27 = load i32, ptr %26, align 4, !tbaa !92
  %28 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %7, i64 0, i32 7, i64 1
  %29 = load i32, ptr %28, align 4, !tbaa !92
  %30 = sub nsw i32 %27, %29
  %31 = sitofp i32 %30 to float
  %32 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %7, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !247
  %34 = sitofp i32 %33 to float
  %35 = fdiv float %25, %34
  %36 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 8
  %37 = load float, ptr %36, align 4, !tbaa !95
  %38 = fdiv float %35, %37
  %39 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %7, i64 0, i32 4
  %40 = load i32, ptr %39, align 4, !tbaa !248
  %41 = sitofp i32 %40 to float
  %42 = fdiv float %31, %41
  %43 = fdiv float %42, %37
  %44 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %7, i64 0, i32 10
  %45 = load i8, ptr %44, align 8, !tbaa !251
  %46 = icmp eq i8 %45, 0
  %47 = fdiv float %38, 5.000000e+00
  %48 = fdiv float %43, 5.000000e+00
  %49 = select i1 %46, float %43, float %48
  %50 = select i1 %46, float %38, float %47
  %51 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %7, i64 0, i32 8
  %52 = load float, ptr %51, align 8, !tbaa !51
  %53 = fadd float %52, %50
  %54 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %7, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !250
  store float %53, ptr %55, align 4, !tbaa !51
  %56 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %7, i64 0, i32 8, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !51
  %58 = fadd float %57, %49
  %59 = getelementptr inbounds float, ptr %55, i64 1
  store float %58, ptr %59, align 4, !tbaa !51
  %60 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %7, i64 0, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !249
  %62 = add nsw i32 %61, 1
  %63 = srem i32 %62, 4
  %64 = add nsw i32 %61, 3
  %65 = srem i32 %64, 4
  %66 = add nsw i32 %61, 2
  %67 = srem i32 %66, 4
  %68 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %7, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !246
  %70 = sext i32 %63 to i64
  %71 = getelementptr inbounds [4 x [2 x float]], ptr %69, i64 0, i64 %70
  %72 = sext i32 %65 to i64
  %73 = getelementptr inbounds [4 x [2 x float]], ptr %69, i64 0, i64 %72
  %74 = sext i32 %67 to i64
  %75 = getelementptr inbounds [4 x [2 x float]], ptr %69, i64 0, i64 %74
  %76 = load float, ptr %71, align 4, !tbaa !51
  %77 = fsub float %76, %53
  %78 = getelementptr inbounds float, ptr %71, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !51
  %80 = fsub float %79, %58
  %81 = load float, ptr %73, align 4, !tbaa !51
  %82 = fsub float %53, %81
  %83 = getelementptr inbounds float, ptr %73, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !51
  %85 = fsub float %58, %84
  %86 = load float, ptr %75, align 4, !tbaa !51
  %87 = fsub float %81, %86
  %88 = getelementptr inbounds float, ptr %75, i64 1
  %89 = load float, ptr %88, align 4, !tbaa !51
  %90 = fsub float %84, %89
  %91 = fsub float %86, %76
  %92 = fsub float %89, %79
  %93 = fneg float %85
  %94 = fmul float %77, %93
  %95 = tail call float @llvm.fmuladd.f32(float %82, float %80, float %94)
  %96 = fcmp olt float %95, 0.000000e+00
  br i1 %96, label %97, label %99

97:                                               ; preds = %19
  %98 = tail call float @closest_to_line_v2(ptr noundef nonnull %55, ptr noundef nonnull %55, ptr noundef nonnull %73, ptr noundef nonnull %71) #9
  br label %99

99:                                               ; preds = %97, %19
  %100 = fneg float %90
  %101 = fmul float %82, %100
  %102 = tail call float @llvm.fmuladd.f32(float %87, float %85, float %101)
  %103 = fcmp olt float %102, 0.000000e+00
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load ptr, ptr %54, align 8, !tbaa !250
  %106 = tail call float @closest_to_line_v2(ptr noundef %105, ptr noundef %105, ptr noundef nonnull %73, ptr noundef nonnull %75) #9
  br label %107

107:                                              ; preds = %104, %99
  %108 = fneg float %80
  %109 = fmul float %91, %108
  %110 = tail call float @llvm.fmuladd.f32(float %77, float %92, float %109)
  %111 = fcmp olt float %110, 0.000000e+00
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load ptr, ptr %54, align 8, !tbaa !250
  %114 = tail call float @closest_to_line_v2(ptr noundef %113, ptr noundef %113, ptr noundef nonnull %71, ptr noundef nonnull %75) #9
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i32, ptr %20, align 4, !tbaa !92
  store i32 %116, ptr %22, align 8, !tbaa !92
  %117 = load i32, ptr %26, align 4, !tbaa !92
  store i32 %117, ptr %28, align 4, !tbaa !92
  %118 = load ptr, ptr %54, align 8, !tbaa !250
  %119 = load float, ptr %118, align 4, !tbaa !51
  store float %119, ptr %51, align 4, !tbaa !51
  %120 = getelementptr inbounds float, ptr %118, i64 1
  %121 = load float, ptr %120, align 4, !tbaa !51
  store float %121, ptr %56, align 4, !tbaa !51
  %122 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 10
  %123 = load ptr, ptr %122, align 8, !tbaa !126
  tail call void @DAG_id_tag_update(ptr noundef %123, i16 noundef signext 0) #9
  br label %156

124:                                              ; preds = %3, %3
  %125 = sext i16 %9 to i32
  %126 = load i32, ptr %7, align 8, !tbaa !243
  %127 = icmp eq i32 %126, %125
  br i1 %127, label %128, label %159

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %130 = load i16, ptr %129, align 2, !tbaa !124
  %131 = icmp eq i16 %130, 2
  br i1 %131, label %132, label %159

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %7, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !246
  %135 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %134, i64 0, i32 2
  %136 = load i32, ptr %135, align 4, !tbaa !252
  %137 = and i32 %136, -3
  store i32 %137, ptr %135, align 4, !tbaa !252
  %138 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %4) #9
  %139 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %7, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !245
  tail call void @BKE_tracking_track_plane_from_existing_motion(ptr noundef %140, i32 noundef %138) #9
  %141 = load ptr, ptr %6, align 8, !tbaa !123
  %142 = load ptr, ptr @MEM_freeN, align 8, !tbaa !93
  tail call void %142(ptr noundef %141) #9
  %143 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  tail call void @WM_cursor_set(ptr noundef %143, i32 noundef 1006) #9
  %144 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 10
  %145 = load ptr, ptr %144, align 8, !tbaa !126
  tail call void @DAG_id_tag_update(ptr noundef %145, i16 noundef signext 0) #9
  br label %156

146:                                              ; preds = %3
  %147 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %7, i64 0, i32 6
  %148 = load ptr, ptr %147, align 8, !tbaa !250
  %149 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %7, i64 0, i32 9
  %150 = load float, ptr %149, align 4, !tbaa !51
  store float %150, ptr %148, align 4, !tbaa !51
  %151 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %7, i64 0, i32 9, i64 1
  %152 = load float, ptr %151, align 4, !tbaa !51
  %153 = getelementptr inbounds float, ptr %148, i64 1
  store float %152, ptr %153, align 4, !tbaa !51
  %154 = load ptr, ptr @MEM_freeN, align 8, !tbaa !93
  tail call void %154(ptr noundef %7) #9
  %155 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  tail call void @WM_cursor_set(ptr noundef %155, i32 noundef 1006) #9
  br label %156

156:                                              ; preds = %132, %146, %115
  %157 = phi ptr [ null, %115 ], [ %5, %146 ], [ %5, %132 ]
  %158 = phi i32 [ 1, %115 ], [ 2, %146 ], [ 4, %132 ]
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %157) #9
  br label %159

159:                                              ; preds = %156, %3, %128, %124
  %160 = phi i32 [ 1, %124 ], [ 1, %128 ], [ 1, %3 ], [ %158, %156 ]
  ret i32 %160
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_keyframe_insert(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.242, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.243, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.244, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @keyframe_insert_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @keyframe_insert_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  tail call fastcc void @keyframe_set_flag(ptr noundef %0, i8 noundef zeroext 1)
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CLIP_OT_keyframe_delete(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  store ptr @.str.245, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.246, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.247, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %4, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @keyframe_delete_exec, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @keyframe_delete_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  tail call fastcc void @keyframe_set_flag(ptr noundef %0, i8 noundef zeroext 0)
  ret i32 4
}

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @add_marker(ptr noundef %0, float noundef %1, float noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %7 = tail call ptr @ED_space_clip_get_clip(ptr noundef %6) #9
  %8 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11
  %9 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %8) #9
  %10 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  %11 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %6) #9
  call void @ED_space_clip_get_size(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %12 = load i32, ptr %4, align 4, !tbaa !92
  %13 = icmp eq i32 %12, 0
  %14 = load i32, ptr %5, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = call ptr @BKE_tracking_track_add(ptr noundef nonnull %8, ptr noundef %9, float noundef %1, float noundef %2, i32 noundef %11, i32 noundef %12, i32 noundef %14) #9
  call void @BKE_tracking_track_select(ptr noundef %9, ptr noundef %18, i32 noundef 7, i8 noundef zeroext 0) #9
  call void @BKE_tracking_plane_tracks_deselect_all(ptr noundef %10) #9
  %19 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11, i32 6
  store ptr %18, ptr %19, align 8, !tbaa !205
  %20 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11, i32 7
  store ptr null, ptr %20, align 8, !tbaa !207
  br label %21

21:                                               ; preds = %3, %17
  %22 = phi i8 [ 1, %17 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i8 %22
}

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_get_active_plane_tracks(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_track_add(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @BKE_tracking_track_select(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @BKE_tracking_plane_tracks_deselect_all(ptr noundef) local_unnamed_addr #1

declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_clip_point_stable_pos(ptr noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_tracking_plane_track_free(ptr noundef) local_unnamed_addr #1

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @clip_delete_track(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_marker_get_exact(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @clip_delete_marker(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_plane_marker_get_exact(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BKE_tracking_plane_marker_delete(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BKE_tracking_marker_pattern_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @mouse_on_slide_zone(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  %10 = icmp eq i32 %2, 4
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %1, i64 0, i32 2
  %13 = load float, ptr %12, align 4, !tbaa !51
  store float %13, ptr %8, align 4, !tbaa !51
  %14 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %1, i64 0, i32 2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !51
  %16 = getelementptr inbounds float, ptr %8, i64 1
  store float %15, ptr %16, align 4, !tbaa !51
  %17 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %1, i64 0, i32 3
  %18 = load float, ptr %17, align 4, !tbaa !51
  store float %18, ptr %9, align 4, !tbaa !51
  %19 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %1, i64 0, i32 3, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !51
  %21 = getelementptr inbounds float, ptr %9, i64 1
  store float %20, ptr %21, align 4, !tbaa !51
  br label %23

22:                                               ; preds = %7
  call void @BKE_tracking_marker_pattern_minmax(ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9) #9
  br label %23

23:                                               ; preds = %22, %11
  %24 = sitofp i32 %5 to float
  %25 = fdiv float 0.000000e+00, %24
  %26 = load float, ptr %8, align 4, !tbaa !51
  %27 = fsub float %26, %25
  store float %27, ptr %8, align 4, !tbaa !51
  %28 = sitofp i32 %6 to float
  %29 = fdiv float 0.000000e+00, %28
  %30 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !51
  %32 = fsub float %31, %29
  store float %32, ptr %30, align 4, !tbaa !51
  %33 = load float, ptr %9, align 4, !tbaa !51
  %34 = fadd float %25, %33
  store float %34, ptr %9, align 4, !tbaa !51
  %35 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !51
  %37 = fadd float %29, %36
  store float %37, ptr %35, align 4, !tbaa !51
  %38 = fdiv float 1.200000e+01, %24
  %39 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 8
  %40 = load float, ptr %39, align 4, !tbaa !95
  %41 = fdiv float %38, %40
  %42 = fdiv float 1.200000e+01, %28
  %43 = fdiv float %42, %40
  %44 = fsub float %34, %27
  %45 = fdiv float %44, 6.000000e+00
  %46 = fcmp olt float %41, %45
  %47 = select i1 %46, float %41, float %45
  %48 = fsub float %37, %32
  %49 = fdiv float %48, 6.000000e+00
  %50 = fcmp olt float %43, %49
  %51 = select i1 %50, float %43, float %49
  %52 = load float, ptr %4, align 4, !tbaa !51
  %53 = fsub float %52, %47
  %54 = fadd float %52, %47
  %55 = fcmp olt float %53, %54
  %56 = load float, ptr %3, align 4, !tbaa !51
  br i1 %55, label %57, label %61

57:                                               ; preds = %23
  %58 = fcmp ugt float %53, %56
  %59 = fcmp ugt float %56, %54
  %60 = or i1 %58, %59
  br i1 %60, label %79, label %65

61:                                               ; preds = %23
  %62 = fcmp ugt float %54, %56
  %63 = fcmp ugt float %56, %53
  %64 = or i1 %62, %63
  br i1 %64, label %79, label %65

65:                                               ; preds = %61, %57
  %66 = getelementptr inbounds float, ptr %4, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !51
  %68 = fsub float %67, %51
  %69 = fadd float %51, %67
  %70 = fcmp olt float %68, %69
  %71 = getelementptr inbounds float, ptr %3, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !51
  %73 = select i1 %70, float %68, float %69
  %74 = select i1 %70, float %69, float %68
  %75 = fcmp ole float %73, %72
  %76 = fcmp ole float %72, %74
  %77 = and i1 %75, %76
  %78 = zext i1 %77 to i32
  br label %79

79:                                               ; preds = %61, %57, %65
  %80 = phi i32 [ %78, %65 ], [ 0, %57 ], [ 0, %61 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  ret i32 %80
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare ptr @BKE_tracking_marker_ensure(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

declare void @WM_cursor_set(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @BKE_tracking_marker_clamp(ptr noundef, i32 noundef) local_unnamed_addr #1

declare float @angle_signed_v2v2(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare i32 @isect_point_quad_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

declare void @BKE_tracking_track_plane_from_existing_motion(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @track_count_markers(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MovieClip, ptr %1, i64 0, i32 11
  %5 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %4) #9
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = icmp eq ptr %6, null
  br i1 %7, label %66, label %8

8:                                                ; preds = %3
  %9 = icmp eq ptr %0, null
  %10 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  br label %11

11:                                               ; preds = %8, %62
  %12 = phi ptr [ %6, %8 ], [ %64, %62 ]
  %13 = phi i32 [ 0, %8 ], [ %63, %62 ]
  %14 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %12, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !83
  br i1 %9, label %34, label %16

16:                                               ; preds = %11
  %17 = and i32 %15, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %62

19:                                               ; preds = %16
  %20 = and i32 %15, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %19
  %23 = load i32, ptr %10, align 8, !tbaa !84
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %12, i64 0, i32 14
  %28 = load i32, ptr %27, align 4, !tbaa !85
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %26, %22
  %32 = and i32 %23, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %62, label %42

34:                                               ; preds = %11
  %35 = and i32 %15, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %12, i64 0, i32 14
  %39 = load i32, ptr %38, align 4, !tbaa !85
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37, %31
  %43 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %12, i64 0, i32 15
  %44 = load i32, ptr %43, align 8, !tbaa !86
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %26, %19, %37, %34, %42
  %48 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %12, i64 0, i32 13
  %49 = load i32, ptr %48, align 8, !tbaa !83
  %50 = and i32 %49, 64
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = tail call ptr @BKE_tracking_marker_get(ptr noundef nonnull %12, i32 noundef %2) #9
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %53, i64 0, i32 5
  %57 = load i32, ptr %56, align 4, !tbaa !94
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55, %52
  %61 = add nsw i32 %13, 1
  br label %62

62:                                               ; preds = %16, %31, %55, %60, %47, %42
  %63 = phi i32 [ %13, %47 ], [ %13, %42 ], [ %61, %60 ], [ %13, %55 ], [ %13, %31 ], [ %13, %16 ]
  %64 = load ptr, ptr %12, align 8, !tbaa !93
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %11, !llvm.loop !254

66:                                               ; preds = %62, %3
  %67 = phi i32 [ 0, %3 ], [ %63, %62 ]
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define internal fastcc void @track_init_markers(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.MovieClip, ptr %1, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #9
  %7 = icmp eq ptr %0, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #9
  %10 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  %11 = load i32, ptr %10, align 8, !tbaa !84
  %12 = shl i32 %11, 1
  %13 = and i32 %12, 6
  %14 = xor i32 %13, 6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %8
  %17 = load ptr, ptr %9, align 8, !tbaa !93
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %16, %26
  %20 = phi ptr [ %27, %26 ], [ %17, %16 ]
  %21 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %20, i64 0, i32 13
  %22 = load i32, ptr %21, align 8, !tbaa !83
  %23 = and i32 %22, 32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  tail call void @BKE_tracking_track_flag_clear(ptr noundef nonnull %20, i32 noundef %14, i32 noundef 1) #9
  br label %26

26:                                               ; preds = %25, %19
  %27 = load ptr, ptr %20, align 8, !tbaa !93
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %19, !llvm.loop !240

29:                                               ; preds = %26, %16, %8, %4
  %30 = load ptr, ptr %6, align 8, !tbaa !93
  %31 = icmp eq ptr %30, null
  br i1 %31, label %89, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  br label %34

34:                                               ; preds = %32, %85
  %35 = phi ptr [ %30, %32 ], [ %87, %85 ]
  %36 = phi i32 [ 0, %32 ], [ %86, %85 ]
  %37 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %35, i64 0, i32 13
  %38 = load i32, ptr %37, align 8, !tbaa !83
  br i1 %7, label %57, label %39

39:                                               ; preds = %34
  %40 = and i32 %38, 32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %85

42:                                               ; preds = %39
  %43 = and i32 %38, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %70

45:                                               ; preds = %42
  %46 = load i32, ptr %33, align 8, !tbaa !84
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %35, i64 0, i32 14
  %51 = load i32, ptr %50, align 4, !tbaa !85
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %49, %45
  %55 = and i32 %46, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %85, label %65

57:                                               ; preds = %34
  %58 = and i32 %38, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %35, i64 0, i32 14
  %62 = load i32, ptr %61, align 4, !tbaa !85
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60, %54
  %66 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %35, i64 0, i32 15
  %67 = load i32, ptr %66, align 8, !tbaa !86
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %49, %42, %60, %57, %65
  %71 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %35, i64 0, i32 13
  %72 = load i32, ptr %71, align 8, !tbaa !83
  %73 = and i32 %72, 96
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = tail call ptr @BKE_tracking_marker_ensure(ptr noundef nonnull %35, i32 noundef %2) #9
  %77 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %35, i64 0, i32 17
  %78 = load i16, ptr %77, align 8, !tbaa !255
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = icmp eq i32 %36, 0
  %82 = sext i16 %78 to i32
  br i1 %81, label %85, label %83

83:                                               ; preds = %80
  %84 = tail call i32 @llvm.smin.i32(i32 %36, i32 %82)
  br label %85

85:                                               ; preds = %80, %39, %54, %70, %83, %75, %65
  %86 = phi i32 [ %84, %83 ], [ %36, %75 ], [ %36, %70 ], [ %36, %65 ], [ %36, %54 ], [ %36, %39 ], [ %82, %80 ]
  %87 = load ptr, ptr %35, align 8, !tbaa !93
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %34, !llvm.loop !256

89:                                               ; preds = %85, %29
  %90 = phi i32 [ 0, %29 ], [ %86, %85 ]
  store i32 %90, ptr %3, align 4, !tbaa !92
  ret void
}

declare ptr @BKE_tracking_context_new(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare zeroext i8 @BKE_tracking_context_step(ptr noundef) local_unnamed_addr #1

declare void @BKE_tracking_context_sync(ptr noundef) local_unnamed_addr #1

declare void @BKE_tracking_context_finish(ptr noundef) local_unnamed_addr #1

declare void @BKE_tracking_context_free(ptr noundef) local_unnamed_addr #1

declare float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef, float noundef) local_unnamed_addr #1

declare void @BKE_tracking_track_flag_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @WM_jobs_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @track_markers_freejob(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !170
  tail call void @BKE_tracking_context_free(ptr noundef %2) #9
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !93
  tail call void %3(ptr noundef nonnull %0) #9
  ret void
}

declare ptr @WM_jobs_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @WM_jobs_customdata_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_jobs_timer(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @WM_jobs_callbacks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @track_markers_startjob(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.TrackMarkersJob, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !162
  %7 = getelementptr inbounds %struct.TrackMarkersJob, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.TrackMarkersJob, ptr %0, i64 0, i32 6
  %9 = getelementptr inbounds %struct.TrackMarkersJob, ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %struct.TrackMarkersJob, ptr %0, i64 0, i32 3
  br label %11

11:                                               ; preds = %37, %4
  %12 = phi i32 [ %6, %4 ], [ %48, %37 ]
  %13 = load i32, ptr %7, align 4, !tbaa !166
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %54, label %15

15:                                               ; preds = %11
  %16 = load float, ptr %8, align 8, !tbaa !169
  %17 = fcmp ogt float %16, 0.000000e+00
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = tail call double @PIL_check_seconds_timer() #9
  %20 = load ptr, ptr %0, align 8, !tbaa !170
  %21 = tail call zeroext i8 @BKE_tracking_context_step(ptr noundef %20) #9
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %54, label %23

23:                                               ; preds = %18
  %24 = tail call double @PIL_check_seconds_timer() #9
  %25 = fsub double %24, %19
  %26 = load float, ptr %8, align 8, !tbaa !169
  %27 = fptrunc double %25 to float
  %28 = fcmp ogt float %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = fsub float %26, %27
  %31 = fptosi float %30 to i32
  tail call void @PIL_sleep_ms(i32 noundef %31) #9
  br label %32

32:                                               ; preds = %23, %29
  br i1 %22, label %54, label %37

33:                                               ; preds = %15
  %34 = load ptr, ptr %0, align 8, !tbaa !170
  %35 = tail call zeroext i8 @BKE_tracking_context_step(ptr noundef %34) #9
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %32, %33
  store i16 1, ptr %2, align 2, !tbaa !257
  %38 = load i32, ptr %5, align 8, !tbaa !162
  %39 = sub nsw i32 %12, %38
  %40 = sitofp i32 %39 to float
  %41 = load i32, ptr %7, align 4, !tbaa !166
  %42 = sub nsw i32 %41, %38
  %43 = sitofp i32 %42 to float
  %44 = fdiv float %40, %43
  store float %44, ptr %3, align 4, !tbaa !51
  %45 = load i32, ptr %9, align 4, !tbaa !165
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 1, i32 -1
  %48 = add nsw i32 %47, %12
  store i32 %48, ptr %10, align 8, !tbaa !171
  %49 = load i16, ptr %1, align 2, !tbaa !257
  %50 = icmp eq i16 %49, 0
  %51 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %11, label %54, !llvm.loop !258

54:                                               ; preds = %18, %32, %37, %33, %11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @track_markers_updatejob(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !170
  tail call void @BKE_tracking_context_sync(ptr noundef %2) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @track_markers_endjob(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.TrackMarkersJob, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  %4 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 40
  %5 = load ptr, ptr %4, align 8, !tbaa !259
  %6 = getelementptr inbounds %struct.TrackMarkersJob, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !164
  %8 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 12
  store ptr null, ptr %8, align 8, !tbaa !158
  %9 = getelementptr inbounds %struct.TrackMarkersJob, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !171
  %11 = sitofp i32 %10 to float
  %12 = tail call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef %7, float noundef %11) #9
  %13 = fptosi float %12 to i32
  %14 = getelementptr inbounds %struct.TrackMarkersJob, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !172
  %16 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 22, i32 5
  store i32 %13, ptr %16, align 8, !tbaa !136
  %17 = icmp eq ptr %5, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load ptr, ptr %2, align 8, !tbaa !173
  tail call void @ED_update_for_newframe(ptr noundef %19, ptr noundef %15, i32 noundef 0) #9
  br label %20

20:                                               ; preds = %18, %1
  %21 = load ptr, ptr %0, align 8, !tbaa !170
  tail call void @BKE_tracking_context_sync(ptr noundef %21) #9
  %22 = load ptr, ptr %0, align 8, !tbaa !170
  tail call void @BKE_tracking_context_finish(ptr noundef %22) #9
  %23 = load ptr, ptr %14, align 8, !tbaa !172
  tail call void @WM_main_add_notifier(i32 noundef 67305472, ptr noundef %23) #9
  ret void
}

declare void @WM_jobs_start(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #1

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #1

declare double @PIL_check_seconds_timer() local_unnamed_addr #1

declare void @PIL_sleep_ms(i32 noundef) local_unnamed_addr #1

declare void @ED_update_for_newframe(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_tracking_refine_marker(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @solve_camera_initjob(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %8 = tail call ptr @ED_space_clip_get_clip(ptr noundef %7) #9
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %10 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 11
  %11 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  %12 = tail call zeroext i8 @BKE_tracking_reconstruction_check(ptr noundef nonnull %10, ptr noundef %11, ptr noundef %3, i32 noundef 256) #9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.SpaceClip, ptr %7, i64 0, i32 9
  call void @BKE_movieclip_get_size(ptr noundef %8, ptr noundef nonnull %15, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %16 = getelementptr inbounds %struct.SolveCameraJob, ptr %1, i64 0, i32 1
  store ptr %8, ptr %16, align 8, !tbaa !261
  store ptr %9, ptr %1, align 8, !tbaa !262
  %17 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !157
  %19 = getelementptr inbounds %struct.SolveCameraJob, ptr %1, i64 0, i32 3
  store ptr %18, ptr %19, align 8, !tbaa !263
  %20 = getelementptr inbounds %struct.SolveCameraJob, ptr %1, i64 0, i32 2
  %21 = load i64, ptr %15, align 8
  store i64 %21, ptr %20, align 8
  %22 = getelementptr inbounds %struct.MovieTrackingObject, ptr %11, i64 0, i32 8
  %23 = load i32, ptr %22, align 8, !tbaa !223
  %24 = getelementptr inbounds %struct.MovieTrackingObject, ptr %11, i64 0, i32 9
  %25 = load i32, ptr %24, align 4, !tbaa !224
  %26 = load i32, ptr %5, align 4, !tbaa !92
  %27 = load i32, ptr %6, align 4, !tbaa !92
  %28 = call ptr @BKE_tracking_reconstruction_context_new(ptr noundef %8, ptr noundef %11, i32 noundef %23, i32 noundef %25, i32 noundef %26, i32 noundef %27) #9
  %29 = getelementptr inbounds %struct.SolveCameraJob, ptr %1, i64 0, i32 5
  store ptr %28, ptr %29, align 8, !tbaa !179
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !93
  %31 = call ptr %30(i64 noundef 256, ptr noundef nonnull @.str.254) #9
  %32 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 11, i32 11
  store ptr %31, ptr %32, align 8, !tbaa !181
  br label %33

33:                                               ; preds = %4, %14
  %34 = phi i32 [ 1, %14 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal void @solve_camera_freejob(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.SolveCameraJob, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !261
  %6 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11
  %7 = load ptr, ptr %0, align 8, !tbaa !262
  %8 = getelementptr inbounds %struct.SolveCameraJob, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !179
  %10 = icmp eq ptr %9, null
  br i1 %10, label %47, label %11

11:                                               ; preds = %1
  %12 = tail call zeroext i8 @BKE_tracking_reconstruction_finish(ptr noundef nonnull %9, ptr noundef nonnull %6) #9
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr inbounds %struct.SolveCameraJob, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !263
  br i1 %13, label %16, label %17

16:                                               ; preds = %11
  tail call void @BKE_report(ptr noundef %15, i32 noundef 16, ptr noundef nonnull @.str.255) #9
  br label %21

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11, i32 4, i32 1
  %19 = load float, ptr %18, align 4, !tbaa !264
  %20 = fpext float %19 to double
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %15, i32 noundef 2, ptr noundef nonnull @.str.256, double noundef %20) #9
  br label %21

21:                                               ; preds = %17, %16
  %22 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 41
  %23 = load ptr, ptr %22, align 8, !tbaa !265
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @id_us_min(ptr noundef %5) #9
  br label %26

26:                                               ; preds = %25, %21
  store ptr %5, ptr %22, align 8, !tbaa !265
  tail call void @id_us_plus(ptr noundef %5) #9
  %27 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !188
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 19
  %32 = load ptr, ptr %31, align 8, !tbaa !266
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ID, ptr %32, i64 0, i32 4
  %36 = load i16, ptr %35, align 8, !tbaa !257
  %37 = icmp eq i16 %36, 16707
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %39 = getelementptr inbounds %struct.SolveCameraJob, ptr %0, i64 0, i32 2
  call void @BKE_movieclip_get_size(ptr noundef %5, ptr noundef nonnull %39, ptr noundef nonnull %2, ptr noundef nonnull %3) #9
  %40 = load i32, ptr %2, align 4, !tbaa !92
  %41 = load i32, ptr %3, align 4, !tbaa !92
  call void @BKE_tracking_camera_to_blender(ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %32, i32 noundef %40, i32 noundef %41) #9
  call void @WM_main_add_notifier(i32 noundef 83886080, ptr noundef nonnull %32) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %42

42:                                               ; preds = %38, %34, %30, %26
  %43 = load ptr, ptr @MEM_freeN, align 8, !tbaa !93
  %44 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11, i32 11
  %45 = load ptr, ptr %44, align 8, !tbaa !181
  call void %43(ptr noundef %45) #9
  store ptr null, ptr %44, align 8, !tbaa !181
  call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 0) #9
  call void @WM_main_add_notifier(i32 noundef 335544322, ptr noundef %5) #9
  call void @WM_main_add_notifier(i32 noundef 85065728, ptr noundef null) #9
  call void @WM_main_add_notifier(i32 noundef 67108864, ptr noundef %7) #9
  %46 = load ptr, ptr %8, align 8, !tbaa !179
  call void @BKE_tracking_reconstruction_context_free(ptr noundef %46) #9
  br label %47

47:                                               ; preds = %1, %42
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !93
  call void %48(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @solve_camera_startjob(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.SolveCameraJob, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !179
  %7 = getelementptr inbounds %struct.SolveCameraJob, ptr %0, i64 0, i32 4
  tail call void @BKE_tracking_reconstruction_solve(ptr noundef %6, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %7, i32 noundef 256) #9
  ret void
}

declare ptr @BKE_tracking_object_get_active(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_tracking_reconstruction_check(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BKE_movieclip_get_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_reconstruction_context_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_tracking_reconstruction_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @id_us_min(ptr noundef) local_unnamed_addr #1

declare void @id_us_plus(ptr noundef) local_unnamed_addr #1

declare void @BKE_tracking_camera_to_blender(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @BKE_tracking_reconstruction_context_free(ptr noundef) local_unnamed_addr #1

declare void @BKE_tracking_reconstruction_solve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_get_active_reconstruction(ptr noundef) local_unnamed_addr #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @solve_camera_updatejob(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.SolveCameraJob, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !261
  %4 = getelementptr inbounds %struct.MovieClip, ptr %3, i64 0, i32 11, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !181
  %6 = getelementptr inbounds %struct.SolveCameraJob, ptr %0, i64 0, i32 4
  %7 = tail call ptr @BLI_strncpy(ptr noundef %5, ptr noundef nonnull %6, i64 noundef 256) #9
  ret void
}

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_track_get_active(ptr noundef) local_unnamed_addr #1

declare void @BKE_tracking_track_path_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @BKE_tracking_dopesheet_tag_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @count_selected_bundles(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %3 = tail call ptr @ED_space_clip_get_clip(ptr noundef %2) #9
  %4 = getelementptr inbounds %struct.MovieClip, ptr %3, i64 0, i32 11
  %5 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %4) #9
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = icmp eq ptr %6, null
  br i1 %7, label %45, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 12
  br label %10

10:                                               ; preds = %8, %41
  %11 = phi ptr [ %6, %8 ], [ %43, %41 ]
  %12 = phi i32 [ 0, %8 ], [ %42, %41 ]
  %13 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %11, i64 0, i32 13
  %14 = load i32, ptr %13, align 8, !tbaa !83
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %10
  %18 = and i32 %14, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load i32, ptr %9, align 8, !tbaa !84
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %11, i64 0, i32 14
  %26 = load i32, ptr %25, align 4, !tbaa !85
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24, %20
  %30 = and i32 %21, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %11, i64 0, i32 15
  %34 = load i32, ptr %33, align 8, !tbaa !86
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32, %24, %17
  %38 = lshr i32 %14, 1
  %39 = and i32 %38, 1
  %40 = add i32 %39, %12
  br label %41

41:                                               ; preds = %37, %32, %29, %10
  %42 = phi i32 [ %12, %32 ], [ %12, %29 ], [ %12, %10 ], [ %40, %37 ]
  %43 = load ptr, ptr %11, align 8, !tbaa !93
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %10, !llvm.loop !267

45:                                               ; preds = %41, %1
  %46 = phi i32 [ 0, %1 ], [ %42, %41 ]
  ret i32 %46
}

declare ptr @BKE_tracking_object_get_tracks(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_tracking_get_camera_object_matrix(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @object_solver_inverted_matrix(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 106
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 2
  br label %9

9:                                                ; preds = %7, %31
  %10 = phi ptr [ %5, %7 ], [ %33, %31 ]
  %11 = phi i8 [ 0, %7 ], [ %32, %31 ]
  %12 = tail call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %10) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %9
  %15 = load i16, ptr %12, align 8, !tbaa !268
  %16 = icmp eq i16 %15, 28
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.bConstraint, ptr %10, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !270
  %20 = icmp eq i8 %11, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %19, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !272
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load ptr, ptr %8, align 8, !tbaa !188
  br label %27

27:                                               ; preds = %21, %25
  %28 = phi ptr [ %26, %25 ], [ %23, %21 ]
  tail call void @BKE_object_where_is_calc_mat4(ptr noundef %0, ptr noundef %28, ptr noundef %2) #9
  br label %29

29:                                               ; preds = %27, %17
  %30 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %19, i64 0, i32 4
  tail call void @mul_m4_m4m4(ptr noundef %2, ptr noundef %2, ptr noundef nonnull %30) #9
  br label %31

31:                                               ; preds = %14, %29, %9
  %32 = phi i8 [ %11, %9 ], [ 1, %29 ], [ %11, %14 ]
  %33 = load ptr, ptr %10, align 8, !tbaa !93
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %9, !llvm.loop !274

35:                                               ; preds = %31
  %36 = icmp eq i8 %32, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %35
  %38 = tail call zeroext i8 @invert_m4(ptr noundef %2) #9
  br label %40

39:                                               ; preds = %3, %35
  tail call void @unit_m4(ptr noundef %2) #9
  br label %40

40:                                               ; preds = %39, %37
  ret void
}

declare ptr @BKE_object_movieclip_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #1

declare void @BKE_object_where_is_calc_mat4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @invert_m4(ptr noundef) local_unnamed_addr #1

declare void @unit_m4(ptr noundef) local_unnamed_addr #1

declare void @BKE_object_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_object_apply_mat4(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @BKE_object_where_is_calc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @set_axis(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, ptr nocapture noundef readonly %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #0 {
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [4 x [4 x float]], align 16
  %14 = alloca [3 x [3 x float]], align 16
  %15 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !188
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = tail call ptr @BKE_object_movieclip_get(ptr noundef %0, ptr noundef nonnull %16, i8 noundef zeroext 0) #9
  %20 = icmp eq ptr %19, %2
  br i1 %20, label %41, label %21

21:                                               ; preds = %18, %6
  %22 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !93
  %24 = icmp eq ptr %23, null
  br i1 %24, label %41, label %25

25:                                               ; preds = %21, %38
  %26 = phi ptr [ %39, %38 ], [ %23, %21 ]
  %27 = getelementptr inbounds %struct.Base, ptr %26, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !189
  %29 = getelementptr inbounds %struct.Object, ptr %28, i64 0, i32 3
  %30 = load i16, ptr %29, align 8, !tbaa !191
  %31 = icmp eq i16 %30, 11
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = tail call ptr @BKE_object_movieclip_get(ptr noundef %0, ptr noundef %28, i8 noundef zeroext 0) #9
  %34 = icmp eq ptr %33, %2
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.Base, ptr %26, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !189
  br label %41

38:                                               ; preds = %32, %25
  %39 = load ptr, ptr %26, align 8, !tbaa !93
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %25, !llvm.loop !194

41:                                               ; preds = %38, %18, %21, %35
  %42 = phi ptr [ %16, %18 ], [ %37, %35 ], [ %16, %21 ], [ %16, %38 ]
  %43 = getelementptr inbounds %struct.MovieTrackingObject, ptr %3, i64 0, i32 3
  %44 = load i32, ptr %43, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #9
  call void @BKE_object_to_mat4(ptr noundef %1, ptr noundef nonnull %9) #9
  call void @BKE_tracking_get_camera_object_matrix(ptr noundef %0, ptr noundef %42, ptr noundef nonnull %7) #9
  %45 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %4, i64 0, i32 11
  call void @mul_v3_m4v3(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %45) #9
  %46 = load float, ptr %8, align 4, !tbaa !51
  store float %46, ptr %10, align 4, !tbaa !51
  %47 = getelementptr inbounds float, ptr %8, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !51
  %49 = getelementptr inbounds float, ptr %10, i64 1
  store float %48, ptr %49, align 4, !tbaa !51
  %50 = getelementptr inbounds float, ptr %8, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !51
  %52 = getelementptr inbounds float, ptr %10, i64 2
  store float %51, ptr %52, align 4, !tbaa !51
  %53 = and i32 %44, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #9
  call fastcc void @object_solver_inverted_matrix(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11)
  call void @mul_v3_m4v3(ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull %8) #9
  %56 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %11, ptr noundef nonnull %9) #9
  call void @mul_v3_m4v3(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %8) #9
  %57 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 3
  %58 = load float, ptr %57, align 16, !tbaa !51
  %59 = load float, ptr %8, align 4, !tbaa !51
  %60 = fsub float %59, %58
  store float %60, ptr %8, align 4, !tbaa !51
  %61 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 3, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !51
  %63 = load float, ptr %47, align 4, !tbaa !51
  %64 = fsub float %63, %62
  store float %64, ptr %47, align 4, !tbaa !51
  %65 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 3, i64 2
  %66 = load float, ptr %65, align 8, !tbaa !51
  %67 = load float, ptr %50, align 4, !tbaa !51
  %68 = fsub float %67, %66
  store float %68, ptr %50, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #9
  br label %69

69:                                               ; preds = %55, %41
  %70 = load float, ptr %8, align 4, !tbaa !51
  %71 = load float, ptr %47, align 4, !tbaa !51
  %72 = fmul float %71, %71
  %73 = call float @llvm.fmuladd.f32(float %70, float %70, float %72)
  %74 = fcmp olt float %73, 0x3EB0C6F7C0000000
  br i1 %74, label %269, label %75

75:                                               ; preds = %69
  call void @unit_m4(ptr noundef nonnull %7) #9
  %76 = icmp eq i8 %5, 88
  br i1 %76, label %77, label %130

77:                                               ; preds = %75
  %78 = load float, ptr %49, align 4, !tbaa !51
  %79 = call float @llvm.fabs.f32(float %78)
  %80 = fcmp olt float %79, 0x3F50624DE0000000
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  store float -1.000000e+00, ptr %7, align 16, !tbaa !51
  %82 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  store float 0.000000e+00, ptr %82, align 4, !tbaa !51
  %83 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  store float 0.000000e+00, ptr %83, align 8, !tbaa !51
  %84 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1
  store float 0.000000e+00, ptr %84, align 16, !tbaa !51
  %85 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1, i64 1
  store float -1.000000e+00, ptr %85, align 4, !tbaa !51
  %86 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1, i64 2
  store float 0.000000e+00, ptr %86, align 8, !tbaa !51
  %87 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2
  store float 0.000000e+00, ptr %87, align 16, !tbaa !51
  %88 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2, i64 1
  store float 0.000000e+00, ptr %88, align 4, !tbaa !51
  %89 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2, i64 2
  store float 1.000000e+00, ptr %89, align 8, !tbaa !51
  br label %185

90:                                               ; preds = %77
  %91 = load float, ptr %8, align 4, !tbaa !51
  store float %91, ptr %7, align 16, !tbaa !51
  %92 = load float, ptr %47, align 4, !tbaa !51
  %93 = getelementptr inbounds float, ptr %7, i64 1
  store float %92, ptr %93, align 4, !tbaa !51
  %94 = load float, ptr %50, align 4, !tbaa !51
  %95 = getelementptr inbounds float, ptr %7, i64 2
  store float %94, ptr %95, align 8, !tbaa !51
  %96 = call float @llvm.fabs.f32(float %94)
  %97 = fcmp olt float %96, 0x3F50624DE0000000
  %98 = select i1 %54, i1 true, i1 %97
  %99 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1, i64 2
  br i1 %98, label %100, label %109

100:                                              ; preds = %90
  store float 0.000000e+00, ptr %95, align 8, !tbaa !51
  %101 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2
  store float 0.000000e+00, ptr %101, align 16, !tbaa !51
  %102 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2, i64 1
  store float 0.000000e+00, ptr %102, align 4, !tbaa !51
  %103 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2, i64 2
  store float 1.000000e+00, ptr %103, align 8, !tbaa !51
  %104 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1
  %105 = fsub float 0.000000e+00, %92
  store float %105, ptr %104, align 16, !tbaa !51
  %106 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1, i64 1
  store float %91, ptr %106, align 4, !tbaa !51
  %107 = fmul float %91, -0.000000e+00
  %108 = call float @llvm.fmuladd.f32(float %92, float 0.000000e+00, float %107)
  store float %108, ptr %99, align 8, !tbaa !51
  br label %185

109:                                              ; preds = %90
  store float 0.000000e+00, ptr %50, align 4, !tbaa !51
  %110 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1
  %111 = fneg float %94
  %112 = fmul float %92, %111
  %113 = call float @llvm.fmuladd.f32(float %92, float 0.000000e+00, float %112)
  store float %113, ptr %110, align 16, !tbaa !51
  %114 = fneg float %91
  %115 = fmul float %91, -0.000000e+00
  %116 = call float @llvm.fmuladd.f32(float %94, float %91, float %115)
  %117 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1, i64 1
  store float %116, ptr %117, align 4, !tbaa !51
  %118 = fneg float %92
  %119 = fmul float %91, %118
  %120 = call float @llvm.fmuladd.f32(float %91, float %92, float %119)
  store float %120, ptr %99, align 8, !tbaa !51
  %121 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2
  %122 = fmul float %116, %111
  %123 = call float @llvm.fmuladd.f32(float %92, float %120, float %122)
  store float %123, ptr %121, align 16, !tbaa !51
  %124 = fmul float %120, %114
  %125 = call float @llvm.fmuladd.f32(float %94, float %113, float %124)
  %126 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2, i64 1
  store float %125, ptr %126, align 4, !tbaa !51
  %127 = fmul float %113, %118
  %128 = call float @llvm.fmuladd.f32(float %91, float %116, float %127)
  %129 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2, i64 2
  store float %128, ptr %129, align 8, !tbaa !51
  br label %185

130:                                              ; preds = %75
  %131 = load float, ptr %10, align 4, !tbaa !51
  %132 = call float @llvm.fabs.f32(float %131)
  %133 = fcmp olt float %132, 0x3F50624DE0000000
  br i1 %133, label %134, label %143

134:                                              ; preds = %130
  store float -1.000000e+00, ptr %7, align 16, !tbaa !51
  %135 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  store float 0.000000e+00, ptr %135, align 4, !tbaa !51
  %136 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  store float 0.000000e+00, ptr %136, align 8, !tbaa !51
  %137 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1
  store float 0.000000e+00, ptr %137, align 16, !tbaa !51
  %138 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1, i64 1
  store float -1.000000e+00, ptr %138, align 4, !tbaa !51
  %139 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1, i64 2
  store float 0.000000e+00, ptr %139, align 8, !tbaa !51
  %140 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2
  store float 0.000000e+00, ptr %140, align 16, !tbaa !51
  %141 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2, i64 1
  store float 0.000000e+00, ptr %141, align 4, !tbaa !51
  %142 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2, i64 2
  store float 1.000000e+00, ptr %142, align 8, !tbaa !51
  br label %185

143:                                              ; preds = %130
  %144 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1
  %145 = load float, ptr %8, align 4, !tbaa !51
  store float %145, ptr %144, align 16, !tbaa !51
  %146 = load float, ptr %47, align 4, !tbaa !51
  %147 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1, i64 1
  store float %146, ptr %147, align 4, !tbaa !51
  %148 = load float, ptr %50, align 4, !tbaa !51
  %149 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1, i64 2
  store float %148, ptr %149, align 8, !tbaa !51
  %150 = call float @llvm.fabs.f32(float %148)
  %151 = fcmp olt float %150, 0x3F50624DE0000000
  %152 = select i1 %54, i1 true, i1 %151
  br i1 %152, label %153, label %162

153:                                              ; preds = %143
  store float 0.000000e+00, ptr %149, align 8, !tbaa !51
  %154 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2
  store float 0.000000e+00, ptr %154, align 16, !tbaa !51
  %155 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2, i64 1
  store float 0.000000e+00, ptr %155, align 4, !tbaa !51
  %156 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2, i64 2
  store float 1.000000e+00, ptr %156, align 8, !tbaa !51
  store float %146, ptr %7, align 16, !tbaa !51
  %157 = fsub float 0.000000e+00, %145
  %158 = getelementptr inbounds float, ptr %7, i64 1
  store float %157, ptr %158, align 4, !tbaa !51
  %159 = fmul float %146, -0.000000e+00
  %160 = call float @llvm.fmuladd.f32(float %145, float 0.000000e+00, float %159)
  %161 = getelementptr inbounds float, ptr %7, i64 2
  store float %160, ptr %161, align 8, !tbaa !51
  br label %185

162:                                              ; preds = %143
  store float 0.000000e+00, ptr %50, align 4, !tbaa !51
  %163 = fmul float %146, -0.000000e+00
  %164 = call float @llvm.fmuladd.f32(float %146, float %148, float %163)
  store float %164, ptr %7, align 16, !tbaa !51
  %165 = fneg float %145
  %166 = fmul float %148, %165
  %167 = call float @llvm.fmuladd.f32(float %145, float 0.000000e+00, float %166)
  %168 = getelementptr inbounds float, ptr %7, i64 1
  store float %167, ptr %168, align 4, !tbaa !51
  %169 = fneg float %146
  %170 = fmul float %145, %169
  %171 = call float @llvm.fmuladd.f32(float %145, float %146, float %170)
  %172 = getelementptr inbounds float, ptr %7, i64 2
  store float %171, ptr %172, align 8, !tbaa !51
  %173 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2
  %174 = fneg float %171
  %175 = fmul float %146, %174
  %176 = call float @llvm.fmuladd.f32(float %167, float %148, float %175)
  store float %176, ptr %173, align 16, !tbaa !51
  %177 = fneg float %164
  %178 = fmul float %148, %177
  %179 = call float @llvm.fmuladd.f32(float %171, float %145, float %178)
  %180 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2, i64 1
  store float %179, ptr %180, align 4, !tbaa !51
  %181 = fneg float %167
  %182 = fmul float %145, %181
  %183 = call float @llvm.fmuladd.f32(float %164, float %146, float %182)
  %184 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2, i64 2
  store float %183, ptr %184, align 8, !tbaa !51
  br label %185

185:                                              ; preds = %134, %162, %153, %81, %109, %100
  %186 = phi i1 [ false, %81 ], [ true, %100 ], [ true, %109 ], [ false, %134 ], [ true, %153 ], [ true, %162 ]
  %187 = load float, ptr %7, align 16, !tbaa !51
  %188 = getelementptr inbounds float, ptr %7, i64 1
  %189 = load float, ptr %188, align 4, !tbaa !51
  %190 = fmul float %189, %189
  %191 = call float @llvm.fmuladd.f32(float %187, float %187, float %190)
  %192 = getelementptr inbounds float, ptr %7, i64 2
  %193 = load float, ptr %192, align 8, !tbaa !51
  %194 = call float @llvm.fmuladd.f32(float %193, float %193, float %191)
  %195 = fcmp ogt float %194, 0x38AA95A5C0000000
  br i1 %195, label %196, label %205

196:                                              ; preds = %185
  %197 = call float @sqrtf(float noundef %194) #9
  %198 = fdiv float 1.000000e+00, %197
  %199 = load float, ptr %7, align 16, !tbaa !51
  %200 = fmul float %199, %198
  store float %200, ptr %7, align 16, !tbaa !51
  %201 = load float, ptr %188, align 4, !tbaa !51
  %202 = fmul float %198, %201
  store float %202, ptr %188, align 4, !tbaa !51
  %203 = load float, ptr %192, align 8, !tbaa !51
  %204 = fmul float %198, %203
  br label %206

205:                                              ; preds = %185
  store float 0.000000e+00, ptr %7, align 16, !tbaa !51
  store float 0.000000e+00, ptr %188, align 4, !tbaa !51
  br label %206

206:                                              ; preds = %196, %205
  %207 = phi float [ 0.000000e+00, %205 ], [ %204, %196 ]
  store float %207, ptr %192, align 8, !tbaa !51
  %208 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1
  %209 = load float, ptr %208, align 16, !tbaa !51
  %210 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1, i64 1
  %211 = load float, ptr %210, align 4, !tbaa !51
  %212 = fmul float %211, %211
  %213 = call float @llvm.fmuladd.f32(float %209, float %209, float %212)
  %214 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1, i64 2
  %215 = load float, ptr %214, align 8, !tbaa !51
  %216 = call float @llvm.fmuladd.f32(float %215, float %215, float %213)
  %217 = fcmp ogt float %216, 0x38AA95A5C0000000
  br i1 %217, label %218, label %227

218:                                              ; preds = %206
  %219 = call float @sqrtf(float noundef %216) #9
  %220 = fdiv float 1.000000e+00, %219
  %221 = load float, ptr %208, align 16, !tbaa !51
  %222 = fmul float %221, %220
  store float %222, ptr %208, align 16, !tbaa !51
  %223 = load float, ptr %210, align 4, !tbaa !51
  %224 = fmul float %220, %223
  store float %224, ptr %210, align 4, !tbaa !51
  %225 = load float, ptr %214, align 8, !tbaa !51
  %226 = fmul float %220, %225
  br label %228

227:                                              ; preds = %206
  store float 0.000000e+00, ptr %208, align 16, !tbaa !51
  store float 0.000000e+00, ptr %210, align 4, !tbaa !51
  br label %228

228:                                              ; preds = %218, %227
  %229 = phi float [ 0.000000e+00, %227 ], [ %226, %218 ]
  store float %229, ptr %214, align 8, !tbaa !51
  %230 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2
  %231 = load float, ptr %230, align 16, !tbaa !51
  %232 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2, i64 1
  %233 = load float, ptr %232, align 4, !tbaa !51
  %234 = fmul float %233, %233
  %235 = call float @llvm.fmuladd.f32(float %231, float %231, float %234)
  %236 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2, i64 2
  %237 = load float, ptr %236, align 8, !tbaa !51
  %238 = call float @llvm.fmuladd.f32(float %237, float %237, float %235)
  %239 = fcmp ogt float %238, 0x38AA95A5C0000000
  br i1 %239, label %240, label %249

240:                                              ; preds = %228
  %241 = call float @sqrtf(float noundef %238) #9
  %242 = fdiv float 1.000000e+00, %241
  %243 = load float, ptr %230, align 16, !tbaa !51
  %244 = fmul float %243, %242
  store float %244, ptr %230, align 16, !tbaa !51
  %245 = load float, ptr %232, align 4, !tbaa !51
  %246 = fmul float %242, %245
  store float %246, ptr %232, align 4, !tbaa !51
  %247 = load float, ptr %236, align 8, !tbaa !51
  %248 = fmul float %242, %247
  br label %250

249:                                              ; preds = %228
  store float 0.000000e+00, ptr %230, align 16, !tbaa !51
  store float 0.000000e+00, ptr %232, align 4, !tbaa !51
  br label %250

250:                                              ; preds = %240, %249
  %251 = phi float [ 0.000000e+00, %249 ], [ %248, %240 ]
  store float %251, ptr %236, align 8, !tbaa !51
  br i1 %54, label %252, label %254

252:                                              ; preds = %250
  %253 = call zeroext i8 @invert_m4(ptr noundef nonnull %7) #9
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %9) #9
  br label %268

254:                                              ; preds = %250
  br i1 %186, label %255, label %267

255:                                              ; preds = %254
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %14) #9
  call void @BKE_object_rot_to_mat3(ptr noundef %1, ptr noundef nonnull %14, i8 noundef zeroext 1) #9
  %256 = call zeroext i8 @invert_m3(ptr noundef nonnull %14) #9
  call void @mul_m4_m4m3(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %14) #9
  call void @unit_m4(ptr noundef nonnull %12) #9
  %257 = getelementptr inbounds [4 x [4 x float]], ptr %12, i64 0, i64 3
  %258 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 3
  %259 = load float, ptr %258, align 16, !tbaa !51
  store float %259, ptr %257, align 16, !tbaa !51
  %260 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 3, i64 1
  %261 = load float, ptr %260, align 4, !tbaa !51
  %262 = getelementptr inbounds [4 x [4 x float]], ptr %12, i64 0, i64 3, i64 1
  store float %261, ptr %262, align 4, !tbaa !51
  %263 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 3, i64 2
  %264 = load float, ptr %263, align 8, !tbaa !51
  %265 = getelementptr inbounds [4 x [4 x float]], ptr %12, i64 0, i64 3, i64 2
  store float %264, ptr %265, align 8, !tbaa !51
  %266 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %12) #9
  call void @_va_mul_m4_series_5(ptr noundef nonnull %7, ptr noundef nonnull %12, ptr noundef nonnull %7, ptr noundef nonnull %13, ptr noundef nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #9
  br label %268

267:                                              ; preds = %254
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %7) #9
  br label %268

268:                                              ; preds = %255, %267, %252
  call void @BKE_object_apply_mat4(ptr noundef %1, ptr noundef nonnull %7, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  br label %269

269:                                              ; preds = %69, %268
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #9
  ret void
}

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_object_rot_to_mat3(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare zeroext i8 @invert_m3(ptr noundef) local_unnamed_addr #1

declare void @mul_m4_m4m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_va_mul_m4_series_5(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @do_set_scale(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca [2 x [3 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %8 = tail call ptr @ED_space_clip_get_clip(ptr noundef %7) #9
  %9 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 11
  %10 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %9) #9
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %12 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !188
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = tail call ptr @BKE_object_movieclip_get(ptr noundef %11, ptr noundef nonnull %13, i8 noundef zeroext 0) #9
  %17 = icmp eq ptr %16, %8
  br i1 %17, label %38, label %18

18:                                               ; preds = %15, %4
  %19 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !93
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %18, %35
  %23 = phi ptr [ %36, %35 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.Base, ptr %23, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !189
  %26 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 3
  %27 = load i16, ptr %26, align 8, !tbaa !191
  %28 = icmp eq i16 %27, 11
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = tail call ptr @BKE_object_movieclip_get(ptr noundef %11, ptr noundef %25, i8 noundef zeroext 0) #9
  %31 = icmp eq ptr %30, %8
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.Base, ptr %23, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !189
  br label %38

35:                                               ; preds = %29, %22
  %36 = load ptr, ptr %23, align 8, !tbaa !93
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %22, !llvm.loop !194

38:                                               ; preds = %35, %15, %18, %32
  %39 = phi ptr [ %13, %15 ], [ %34, %32 ], [ %13, %18 ], [ %13, %35 ]
  %40 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  %41 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !49
  %43 = tail call float @RNA_float_get(ptr noundef %42, ptr noundef nonnull @.str.104) #9
  %44 = tail call fastcc i32 @count_selected_bundles(ptr noundef %0)
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !157
  tail call void @BKE_report(ptr noundef %48, i32 noundef 32, ptr noundef nonnull @.str.262) #9
  br label %294

49:                                               ; preds = %38
  %50 = icmp eq i8 %2, 0
  %51 = icmp eq i8 %3, 0
  %52 = or i8 %3, %2
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %110

54:                                               ; preds = %49
  %55 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %56 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %57 = tail call ptr @ED_space_clip_get_clip(ptr noundef %56) #9
  %58 = getelementptr inbounds %struct.MovieClip, ptr %57, i64 0, i32 11
  %59 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %58) #9
  %60 = getelementptr inbounds %struct.MovieTrackingObject, ptr %59, i64 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !195
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %88, label %64

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.Scene, ptr %55, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !188
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = tail call ptr @BKE_object_movieclip_get(ptr noundef %55, ptr noundef nonnull %66, i8 noundef zeroext 0) #9
  %70 = icmp eq ptr %69, %57
  br i1 %70, label %96, label %71

71:                                               ; preds = %68, %64
  %72 = getelementptr inbounds %struct.Scene, ptr %55, i64 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !93
  %74 = icmp eq ptr %73, null
  br i1 %74, label %96, label %75

75:                                               ; preds = %71, %85
  %76 = phi ptr [ %86, %85 ], [ %73, %71 ]
  %77 = getelementptr inbounds %struct.Base, ptr %76, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !189
  %79 = getelementptr inbounds %struct.Object, ptr %78, i64 0, i32 3
  %80 = load i16, ptr %79, align 8, !tbaa !191
  %81 = icmp eq i16 %80, 11
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = tail call ptr @BKE_object_movieclip_get(ptr noundef %55, ptr noundef %78, i8 noundef zeroext 0) #9
  %84 = icmp eq ptr %83, %57
  br i1 %84, label %92, label %85

85:                                               ; preds = %82, %75
  %86 = load ptr, ptr %76, align 8, !tbaa !93
  %87 = icmp eq ptr %86, null
  br i1 %87, label %96, label %75, !llvm.loop !194

88:                                               ; preds = %54
  %89 = getelementptr inbounds %struct.Scene, ptr %55, i64 0, i32 6
  %90 = load ptr, ptr %89, align 8, !tbaa !197
  %91 = icmp eq ptr %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %82, %88
  %93 = phi ptr [ %90, %88 ], [ %76, %82 ]
  %94 = getelementptr inbounds %struct.Base, ptr %93, i64 0, i32 7
  %95 = load ptr, ptr %94, align 8, !tbaa !189
  br label %96

96:                                               ; preds = %85, %92, %71, %68, %88
  %97 = phi ptr [ null, %88 ], [ %66, %68 ], [ %66, %71 ], [ %95, %92 ], [ %66, %85 ]
  %98 = icmp eq ptr %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.Object, ptr %97, i64 0, i32 9
  %101 = load ptr, ptr %100, align 8, !tbaa !198
  %102 = icmp eq ptr %101, null
  %103 = select i1 %102, ptr %97, ptr %101
  br label %104

104:                                              ; preds = %96, %99
  %105 = phi ptr [ null, %96 ], [ %103, %99 ]
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %109 = load ptr, ptr %108, align 8, !tbaa !157
  tail call void @BKE_report(ptr noundef %109, i32 noundef 32, ptr noundef nonnull @.str.259) #9
  br label %294

110:                                              ; preds = %104, %49
  %111 = phi ptr [ null, %49 ], [ %105, %104 ]
  call void @BKE_tracking_get_camera_object_matrix(ptr noundef %11, ptr noundef %39, ptr noundef nonnull %6) #9
  %112 = load ptr, ptr %40, align 8, !tbaa !93
  %113 = icmp eq ptr %112, null
  br i1 %113, label %152, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.SpaceClip, ptr %7, i64 0, i32 12
  br label %116

116:                                              ; preds = %114, %148
  %117 = phi ptr [ %112, %114 ], [ %150, %148 ]
  %118 = phi i32 [ 0, %114 ], [ %149, %148 ]
  %119 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %117, i64 0, i32 13
  %120 = load i32, ptr %119, align 8, !tbaa !83
  %121 = and i32 %120, 32
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %148

123:                                              ; preds = %116
  %124 = and i32 %120, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %143

126:                                              ; preds = %123
  %127 = load i32, ptr %115, align 8, !tbaa !84
  %128 = and i32 %127, 1
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %117, i64 0, i32 14
  %132 = load i32, ptr %131, align 4, !tbaa !85
  %133 = and i32 %132, 1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %130, %126
  %136 = and i32 %127, 2
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %117, i64 0, i32 15
  %140 = load i32, ptr %139, align 8, !tbaa !86
  %141 = and i32 %140, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %138, %130, %123
  %144 = sext i32 %118 to i64
  %145 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 0, i64 %144
  %146 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %117, i64 0, i32 11
  call void @mul_v3_m4v3(ptr noundef nonnull %145, ptr noundef nonnull %6, ptr noundef nonnull %146) #9
  %147 = add nsw i32 %118, 1
  br label %148

148:                                              ; preds = %143, %138, %135, %116
  %149 = phi i32 [ %147, %143 ], [ %118, %138 ], [ %118, %135 ], [ %118, %116 ]
  %150 = load ptr, ptr %117, align 8, !tbaa !93
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %116, !llvm.loop !275

152:                                              ; preds = %148, %110
  %153 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 0, i64 1
  %154 = load float, ptr %153, align 4, !tbaa !51
  %155 = load float, ptr %5, align 16, !tbaa !51
  %156 = fsub float %155, %154
  store float %156, ptr %5, align 16, !tbaa !51
  %157 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 0, i64 1, i64 1
  %158 = load float, ptr %157, align 16, !tbaa !51
  %159 = getelementptr inbounds float, ptr %5, i64 1
  %160 = load float, ptr %159, align 4, !tbaa !51
  %161 = fsub float %160, %158
  store float %161, ptr %159, align 4, !tbaa !51
  %162 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 0, i64 1, i64 2
  %163 = load float, ptr %162, align 4, !tbaa !51
  %164 = getelementptr inbounds float, ptr %5, i64 2
  %165 = load float, ptr %164, align 8, !tbaa !51
  %166 = fsub float %165, %163
  store float %166, ptr %164, align 8, !tbaa !51
  %167 = fmul float %161, %161
  %168 = call float @llvm.fmuladd.f32(float %156, float %156, float %167)
  %169 = call float @llvm.fmuladd.f32(float %166, float %166, float %168)
  %170 = call float @sqrtf(float noundef %169) #9
  %171 = fcmp ogt float %170, 0x3EE4F8B580000000
  br i1 %171, label %172, label %294

172:                                              ; preds = %152
  %173 = load float, ptr %5, align 16, !tbaa !51
  %174 = load float, ptr %159, align 4, !tbaa !51
  %175 = fmul float %174, %174
  %176 = call float @llvm.fmuladd.f32(float %173, float %173, float %175)
  %177 = load float, ptr %164, align 8, !tbaa !51
  %178 = call float @llvm.fmuladd.f32(float %177, float %177, float %176)
  %179 = call float @sqrtf(float noundef %178) #9
  %180 = fdiv float %43, %179
  br i1 %51, label %220, label %181

181:                                              ; preds = %172
  %182 = call ptr @BKE_tracking_get_active_reconstruction(ptr noundef nonnull %9) #9
  %183 = load ptr, ptr %40, align 8, !tbaa !93
  %184 = icmp eq ptr %183, null
  br i1 %184, label %198, label %185

185:                                              ; preds = %181, %185
  %186 = phi ptr [ %196, %185 ], [ %183, %181 ]
  %187 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %186, i64 0, i32 11
  %188 = load float, ptr %187, align 4, !tbaa !51
  %189 = fmul float %180, %188
  store float %189, ptr %187, align 4, !tbaa !51
  %190 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %186, i64 0, i32 11, i64 1
  %191 = load float, ptr %190, align 4, !tbaa !51
  %192 = fmul float %180, %191
  store float %192, ptr %190, align 4, !tbaa !51
  %193 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %186, i64 0, i32 11, i64 2
  %194 = load float, ptr %193, align 4, !tbaa !51
  %195 = fmul float %180, %194
  store float %195, ptr %193, align 4, !tbaa !51
  %196 = load ptr, ptr %186, align 8, !tbaa !93
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %185, !llvm.loop !276

198:                                              ; preds = %185, %181
  %199 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %182, i64 0, i32 4
  %200 = load ptr, ptr %199, align 8, !tbaa !184
  %201 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %182, i64 0, i32 3
  %202 = load i32, ptr %201, align 4, !tbaa !185
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %219

204:                                              ; preds = %198
  %205 = zext nneg i32 %202 to i64
  br label %206

206:                                              ; preds = %204, %206
  %207 = phi i64 [ 0, %204 ], [ %217, %206 ]
  %208 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %200, i64 %207, i32 2, i64 3
  %209 = load float, ptr %208, align 4, !tbaa !51
  %210 = fmul float %180, %209
  store float %210, ptr %208, align 4, !tbaa !51
  %211 = getelementptr inbounds float, ptr %208, i64 1
  %212 = load float, ptr %211, align 4, !tbaa !51
  %213 = fmul float %180, %212
  store float %213, ptr %211, align 4, !tbaa !51
  %214 = getelementptr inbounds float, ptr %208, i64 2
  %215 = load float, ptr %214, align 4, !tbaa !51
  %216 = fmul float %180, %215
  store float %216, ptr %214, align 4, !tbaa !51
  %217 = add nuw nsw i64 %207, 1
  %218 = icmp eq i64 %217, %205
  br i1 %218, label %219, label %206, !llvm.loop !277

219:                                              ; preds = %206, %198
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544322, ptr noundef %8) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #9
  br label %294

220:                                              ; preds = %172
  %221 = getelementptr inbounds %struct.MovieTrackingObject, ptr %10, i64 0, i32 3
  %222 = load i32, ptr %221, align 8, !tbaa !195
  %223 = and i32 %222, 1
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %244, label %225

225:                                              ; preds = %220
  %226 = getelementptr inbounds %struct.Object, ptr %111, i64 0, i32 36
  %227 = load float, ptr %226, align 4, !tbaa !51
  %228 = fmul float %180, %227
  store float %228, ptr %226, align 4, !tbaa !51
  %229 = getelementptr inbounds %struct.Object, ptr %111, i64 0, i32 36, i64 1
  %230 = load float, ptr %229, align 4, !tbaa !51
  %231 = fmul float %180, %230
  store float %231, ptr %229, align 4, !tbaa !51
  %232 = getelementptr inbounds %struct.Object, ptr %111, i64 0, i32 36, i64 2
  %233 = load float, ptr %232, align 4, !tbaa !51
  %234 = fmul float %180, %233
  store float %234, ptr %232, align 4, !tbaa !51
  %235 = getelementptr inbounds %struct.Object, ptr %111, i64 0, i32 33
  %236 = load float, ptr %235, align 4, !tbaa !51
  %237 = fmul float %180, %236
  store float %237, ptr %235, align 4, !tbaa !51
  %238 = getelementptr inbounds %struct.Object, ptr %111, i64 0, i32 33, i64 1
  %239 = load float, ptr %238, align 4, !tbaa !51
  %240 = fmul float %180, %239
  store float %240, ptr %238, align 4, !tbaa !51
  %241 = getelementptr inbounds %struct.Object, ptr %111, i64 0, i32 33, i64 2
  %242 = load float, ptr %241, align 4, !tbaa !51
  %243 = fmul float %180, %242
  store float %243, ptr %241, align 4, !tbaa !51
  br label %290

244:                                              ; preds = %220
  br i1 %50, label %245, label %288

245:                                              ; preds = %244
  %246 = getelementptr inbounds %struct.Object, ptr %111, i64 0, i32 106
  %247 = load ptr, ptr %246, align 8, !tbaa !93
  %248 = icmp eq ptr %247, null
  br i1 %248, label %271, label %249

249:                                              ; preds = %245, %268
  %250 = phi ptr [ %269, %268 ], [ %247, %245 ]
  %251 = phi ptr [ %267, %268 ], [ undef, %245 ]
  %252 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %250) #9
  %253 = icmp eq ptr %252, null
  br i1 %253, label %265, label %254

254:                                              ; preds = %249
  %255 = load i16, ptr %252, align 8, !tbaa !268
  %256 = icmp eq i16 %255, 28
  br i1 %256, label %257, label %265

257:                                              ; preds = %254
  %258 = getelementptr inbounds %struct.bConstraint, ptr %250, i64 0, i32 2
  %259 = load ptr, ptr %258, align 8, !tbaa !270
  %260 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %259, i64 0, i32 5
  %261 = load ptr, ptr %260, align 8, !tbaa !272
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %265

263:                                              ; preds = %257
  %264 = load ptr, ptr %12, align 8, !tbaa !188
  br label %265

265:                                              ; preds = %263, %257, %254, %249
  %266 = phi i32 [ 4, %249 ], [ 1, %257 ], [ 1, %263 ], [ 0, %254 ]
  %267 = phi ptr [ %251, %249 ], [ %261, %257 ], [ %264, %263 ], [ %251, %254 ]
  switch i32 %266, label %271 [
    i32 0, label %268
    i32 4, label %268
  ]

268:                                              ; preds = %265, %265
  %269 = load ptr, ptr %250, align 8, !tbaa !93
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %249, !llvm.loop !278

271:                                              ; preds = %265, %268, %245
  %272 = phi ptr [ null, %245 ], [ %267, %265 ], [ null, %268 ]
  %273 = fdiv float 1.000000e+00, %180
  %274 = getelementptr inbounds %struct.Object, ptr %111, i64 0, i32 36
  %275 = getelementptr inbounds %struct.Object, ptr %111, i64 0, i32 36, i64 2
  store float %273, ptr %275, align 4, !tbaa !51
  %276 = getelementptr inbounds %struct.Object, ptr %111, i64 0, i32 36, i64 1
  store float %273, ptr %276, align 4, !tbaa !51
  store float %273, ptr %274, align 4, !tbaa !51
  %277 = icmp eq ptr %272, null
  br i1 %277, label %290, label %278

278:                                              ; preds = %271
  %279 = getelementptr inbounds %struct.Object, ptr %272, i64 0, i32 36
  %280 = load float, ptr %279, align 4, !tbaa !51
  %281 = fdiv float %273, %280
  store float %281, ptr %274, align 4, !tbaa !51
  %282 = getelementptr inbounds %struct.Object, ptr %272, i64 0, i32 36, i64 1
  %283 = load float, ptr %282, align 4, !tbaa !51
  %284 = fdiv float %273, %283
  store float %284, ptr %276, align 4, !tbaa !51
  %285 = getelementptr inbounds %struct.Object, ptr %272, i64 0, i32 36, i64 2
  %286 = load float, ptr %285, align 4, !tbaa !51
  %287 = fdiv float %273, %286
  store float %287, ptr %275, align 4, !tbaa !51
  br label %290

288:                                              ; preds = %244
  %289 = getelementptr inbounds %struct.MovieTrackingObject, ptr %10, i64 0, i32 4
  store float %180, ptr %289, align 4, !tbaa !279
  br label %290

290:                                              ; preds = %271, %278, %288, %225
  call void @DAG_id_tag_update(ptr noundef %8, i16 noundef signext 0) #9
  %291 = icmp eq ptr %111, null
  br i1 %291, label %293, label %292

292:                                              ; preds = %290
  call void @DAG_id_tag_update(ptr noundef nonnull %111, i16 noundef signext 1) #9
  br label %293

293:                                              ; preds = %292, %290
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544322, ptr noundef %8) #9
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #9
  br label %294

294:                                              ; preds = %152, %293, %219, %107, %46
  %295 = phi i32 [ 2, %46 ], [ 2, %107 ], [ 4, %219 ], [ 4, %293 ], [ 4, %152 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  ret i32 %295
}

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_plane_track_get_active(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_movieclip_get_ibuf_flag(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_tracking_detect_harris(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_camera_get_reconstructed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @sound_seek_scene(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_tracking_tracks_join(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_tracking_track_free(ptr noundef) local_unnamed_addr #1

declare void @BKE_tracking_track_flag_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_object_add(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_tracking_object_delete(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_tracking_clipboard_copy_tracks(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BKE_tracking_tracks_deselect_all(ptr noundef) local_unnamed_addr #1

declare void @BKE_tracking_clipboard_paste_tracks(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @BKE_tracking_clipboard_has_tracks() local_unnamed_addr #1

declare ptr @BKE_tracking_plane_track_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_plane_marker_ensure(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @BKE_tracking_plane_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #1

declare float @closest_to_line_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @keyframe_set_flag(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #9
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #9
  %7 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %5) #9
  %8 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %3) #9
  %9 = load ptr, ptr %6, align 8, !tbaa !93
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %13 = icmp eq i8 %1, 0
  br label %19

14:                                               ; preds = %58, %2
  %15 = load ptr, ptr %7, align 8, !tbaa !93
  %16 = icmp eq ptr %15, null
  br i1 %16, label %93, label %17

17:                                               ; preds = %14
  %18 = icmp eq i8 %1, 0
  br label %61

19:                                               ; preds = %11, %58
  %20 = phi ptr [ %9, %11 ], [ %59, %58 ]
  %21 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %20, i64 0, i32 13
  %22 = load i32, ptr %21, align 8, !tbaa !83
  %23 = and i32 %22, 32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %19
  %26 = and i32 %22, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load i32, ptr %12, align 8, !tbaa !84
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %20, i64 0, i32 14
  %34 = load i32, ptr %33, align 4, !tbaa !85
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32, %28
  %38 = and i32 %29, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %20, i64 0, i32 15
  %42 = load i32, ptr %41, align 8, !tbaa !86
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %40, %32, %25
  br i1 %13, label %51, label %46

46:                                               ; preds = %45
  %47 = tail call ptr @BKE_tracking_marker_ensure(ptr noundef nonnull %20, i32 noundef %8) #9
  %48 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %47, i64 0, i32 5
  %49 = load i32, ptr %48, align 4, !tbaa !94
  %50 = and i32 %49, -3
  store i32 %50, ptr %48, align 4, !tbaa !94
  br label %58

51:                                               ; preds = %45
  %52 = tail call ptr @BKE_tracking_marker_get_exact(ptr noundef nonnull %20, i32 noundef %8) #9
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %52, i64 0, i32 5
  %56 = load i32, ptr %55, align 4, !tbaa !94
  %57 = or i32 %56, 2
  store i32 %57, ptr %55, align 4, !tbaa !94
  br label %58

58:                                               ; preds = %51, %54, %19, %37, %40, %46
  %59 = load ptr, ptr %20, align 8, !tbaa !93
  %60 = icmp eq ptr %59, null
  br i1 %60, label %14, label %19, !llvm.loop !280

61:                                               ; preds = %17, %90
  %62 = phi ptr [ %15, %17 ], [ %91, %90 ]
  %63 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %62, i64 0, i32 8
  %64 = load i32, ptr %63, align 4, !tbaa !77
  %65 = and i32 %64, 3
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %90

67:                                               ; preds = %61
  br i1 %18, label %78, label %68

68:                                               ; preds = %67
  %69 = tail call ptr @BKE_tracking_plane_marker_ensure(ptr noundef nonnull %62, i32 noundef %8) #9
  %70 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %69, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !252
  %72 = and i32 %71, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %68
  %75 = and i32 %71, -3
  store i32 %75, ptr %70, align 4, !tbaa !252
  %76 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %69, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !281
  tail call void @BKE_tracking_track_plane_from_existing_motion(ptr noundef nonnull %62, i32 noundef %77) #9
  br label %90

78:                                               ; preds = %67
  %79 = tail call ptr @BKE_tracking_plane_marker_get_exact(ptr noundef nonnull %62, i32 noundef %8) #9
  %80 = icmp eq ptr %79, null
  br i1 %80, label %90, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %79, i64 0, i32 2
  %83 = load i32, ptr %82, align 4, !tbaa !252
  %84 = and i32 %83, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = or disjoint i32 %83, 2
  store i32 %87, ptr %82, align 4, !tbaa !252
  %88 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %79, i64 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !281
  tail call void @BKE_tracking_retrack_plane_from_existing_motion_at_segment(ptr noundef nonnull %62, i32 noundef %89) #9
  br label %90

90:                                               ; preds = %78, %86, %81, %68, %74, %61
  %91 = load ptr, ptr %62, align 8, !tbaa !93
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %61, !llvm.loop !282

93:                                               ; preds = %90, %14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %4) #9
  ret void
}

declare void @BKE_tracking_retrack_plane_from_existing_motion_at_segment(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

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
!42 = !{!35, !36, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 48}
!45 = !{!35, !36, i64 32}
!46 = !{!35, !36, i64 72}
!47 = !{!35, !41, i64 184}
!48 = !{!35, !36, i64 88}
!49 = !{!50, !36, i64 112}
!50 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!51 = !{!52, !52, i64 0}
!52 = !{!"float", !37, i64 0}
!53 = !{i8 0, i8 2}
!54 = !{!55, !52, i64 44}
!55 = !{!"SpaceClip", !36, i64 0, !36, i64 8, !39, i64 16, !56, i64 32, !52, i64 36, !52, i64 40, !52, i64 44, !52, i64 48, !52, i64 52, !57, i64 56, !36, i64 64, !58, i64 72, !56, i64 208, !41, i64 212, !41, i64 214, !56, i64 216, !37, i64 220, !52, i64 228, !52, i64 232, !56, i64 236, !37, i64 240, !37, i64 304, !56, i64 368, !41, i64 372, !41, i64 374, !56, i64 376, !56, i64 380, !37, i64 384, !60, i64 392}
!56 = !{!"int", !37, i64 0}
!57 = !{!"MovieClipUser", !56, i64 0, !41, i64 4, !41, i64 6}
!58 = !{!"MovieClipScopes", !41, i64 0, !41, i64 2, !56, i64 4, !56, i64 8, !56, i64 12, !59, i64 16, !36, i64 80, !36, i64 88, !37, i64 96, !41, i64 104, !41, i64 106, !56, i64 108, !36, i64 112, !36, i64 120, !37, i64 128}
!59 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !56, i64 56, !56, i64 60}
!60 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!61 = !{!55, !52, i64 48}
!62 = !{!35, !36, i64 64}
!63 = !{!64, !41, i64 16}
!64 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !56, i64 20, !56, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !56, i64 48, !56, i64 52, !65, i64 56, !56, i64 64, !56, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !56, i64 108, !36, i64 112}
!65 = !{!"double", !37, i64 0}
!66 = !{!64, !56, i64 20}
!67 = !{!68, !56, i64 176}
!68 = !{!"ARegion", !36, i64 0, !36, i64 8, !69, i64 16, !71, i64 176, !71, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !52, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!69 = !{!"View2D", !70, i64 0, !70, i64 16, !71, i64 32, !71, i64 48, !71, i64 64, !37, i64 80, !37, i64 88, !52, i64 96, !52, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !56, i64 136, !56, i64 140, !36, i64 144, !36, i64 152}
!70 = !{!"rctf", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12}
!71 = !{!"rcti", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12}
!72 = !{!64, !56, i64 24}
!73 = !{!68, !56, i64 184}
!74 = !{!39, !36, i64 0}
!75 = !{!76, !36, i64 0}
!76 = !{!"MovieTrackingPlaneTrack", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !56, i64 88, !56, i64 92, !36, i64 96, !56, i64 104, !56, i64 108, !36, i64 112, !52, i64 120, !56, i64 124}
!77 = !{!76, !56, i64 108}
!78 = distinct !{!78, !79, !80}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !{!82, !36, i64 0}
!82 = !{!"MovieTrackingTrack", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !56, i64 120, !56, i64 124, !36, i64 128, !37, i64 136, !52, i64 148, !56, i64 152, !56, i64 156, !56, i64 160, !37, i64 164, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !56, i64 184, !52, i64 188, !36, i64 192, !52, i64 200, !52, i64 204}
!83 = !{!82, !56, i64 152}
!84 = !{!55, !56, i64 208}
!85 = !{!82, !56, i64 156}
!86 = !{!82, !56, i64 160}
!87 = distinct !{!87, !79, !80}
!88 = !{!82, !56, i64 120}
!89 = distinct !{!89, !79, !80}
!90 = !{!76, !56, i64 104}
!91 = distinct !{!91, !79, !80}
!92 = !{!56, !56, i64 0}
!93 = !{!36, !36, i64 0}
!94 = !{!59, !56, i64 60}
!95 = !{!55, !52, i64 52}
!96 = distinct !{!96, !79, !80}
!97 = distinct !{!97, !79, !80}
!98 = distinct !{!98, !79, !80}
!99 = !{!100, !41, i64 0}
!100 = !{!"", !41, i64 0, !41, i64 2, !36, i64 8, !36, i64 16, !37, i64 24, !56, i64 32, !56, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !37, i64 80, !37, i64 88, !37, i64 89, !37, i64 92, !37, i64 100, !37, i64 108, !37, i64 116, !37, i64 124, !36, i64 160}
!101 = !{!100, !41, i64 2}
!102 = !{!100, !36, i64 8}
!103 = !{!100, !36, i64 16}
!104 = !{!100, !36, i64 56}
!105 = !{!100, !36, i64 64}
!106 = !{!100, !36, i64 72}
!107 = !{!100, !36, i64 160}
!108 = !{!82, !36, i64 128}
!109 = distinct !{!109, !79, !80}
!110 = !{!100, !36, i64 40}
!111 = !{!100, !36, i64 48}
!112 = !{!100, !56, i64 32}
!113 = !{!100, !56, i64 36}
!114 = !{!100, !37, i64 88}
!115 = !{!116, !36, i64 232}
!116 = !{!"MovieTracking", !117, i64 0, !118, i64 72, !39, i64 128, !39, i64 144, !119, i64 160, !120, i64 184, !36, i64 232, !36, i64 240, !39, i64 248, !56, i64 264, !56, i64 268, !36, i64 272, !121, i64 280}
!117 = !{!"MovieTrackingSettings", !56, i64 0, !41, i64 4, !41, i64 6, !52, i64 8, !41, i64 12, !41, i64 14, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !52, i64 24, !41, i64 28, !41, i64 30, !56, i64 32, !56, i64 36, !56, i64 40, !41, i64 44, !41, i64 46, !52, i64 48, !56, i64 52, !56, i64 56, !52, i64 60, !52, i64 64, !56, i64 68}
!118 = !{!"MovieTrackingCamera", !36, i64 0, !41, i64 8, !41, i64 10, !52, i64 12, !52, i64 16, !52, i64 20, !41, i64 24, !41, i64 26, !37, i64 28, !52, i64 36, !52, i64 40, !52, i64 44, !52, i64 48, !52, i64 52}
!119 = !{!"MovieTrackingReconstruction", !56, i64 0, !52, i64 4, !56, i64 8, !56, i64 12, !36, i64 16}
!120 = !{!"MovieTrackingStabilization", !56, i64 0, !56, i64 4, !56, i64 8, !52, i64 12, !36, i64 16, !52, i64 24, !52, i64 28, !52, i64 32, !56, i64 36, !56, i64 40, !52, i64 44}
!121 = !{!"MovieTrackingDopesheet", !56, i64 0, !41, i64 4, !41, i64 6, !39, i64 8, !39, i64 24, !56, i64 40, !56, i64 44}
!122 = !{!116, !36, i64 240}
!123 = !{!50, !36, i64 96}
!124 = !{!64, !41, i64 18}
!125 = !{!100, !37, i64 89}
!126 = !{!55, !36, i64 64}
!127 = distinct !{!127, !79, !80}
!128 = distinct !{!128, !79, !80}
!129 = distinct !{!129, !79, !80}
!130 = distinct !{!130, !79, !80}
!131 = !{!76, !56, i64 88}
!132 = !{!76, !36, i64 80}
!133 = distinct !{!133, !79, !80}
!134 = distinct !{!134, !79, !80}
!135 = distinct !{!135, !79, !80}
!136 = !{!137, !56, i64 680}
!137 = !{!"Scene", !138, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !56, i64 232, !56, i64 236, !56, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !139, i64 280, !146, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !56, i64 4380, !39, i64 4384, !147, i64 4400, !148, i64 4416, !151, i64 4600, !36, i64 4608, !152, i64 4616, !36, i64 4640, !153, i64 4648, !153, i64 4656, !141, i64 4664, !142, i64 4824, !154, i64 4888, !36, i64 4952}
!138 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !56, i64 100, !56, i64 104, !56, i64 108, !36, i64 112}
!139 = !{!"RenderData", !140, i64 0, !36, i64 248, !36, i64 256, !143, i64 264, !144, i64 328, !56, i64 400, !56, i64 404, !56, i64 408, !52, i64 412, !56, i64 416, !56, i64 420, !56, i64 424, !56, i64 428, !41, i64 432, !41, i64 434, !52, i64 436, !52, i64 440, !52, i64 444, !52, i64 448, !52, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !56, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !56, i64 484, !56, i64 488, !41, i64 492, !41, i64 494, !56, i64 496, !56, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !56, i64 516, !56, i64 520, !56, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !70, i64 544, !70, i64 560, !71, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !52, i64 612, !52, i64 616, !52, i64 620, !52, i64 624, !56, i64 628, !52, i64 632, !52, i64 636, !52, i64 640, !52, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !52, i64 660, !52, i64 664, !41, i64 668, !41, i64 670, !52, i64 672, !52, i64 676, !37, i64 680, !56, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !56, i64 2520, !41, i64 2524, !41, i64 2526, !52, i64 2528, !52, i64 2532, !41, i64 2536, !41, i64 2538, !52, i64 2540, !41, i64 2544, !41, i64 2546, !56, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !52, i64 2560, !52, i64 2564, !36, i64 2568, !56, i64 2576, !52, i64 2580, !37, i64 2584, !145, i64 2616, !56, i64 3976, !56, i64 3980}
!140 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !52, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !141, i64 24, !142, i64 184}
!141 = !{!"ColorManagedViewSettings", !56, i64 0, !56, i64 4, !37, i64 8, !37, i64 72, !52, i64 136, !52, i64 140, !36, i64 144, !36, i64 152}
!142 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!143 = !{!"QuicktimeCodecSettings", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !56, i64 40, !56, i64 44, !41, i64 48, !41, i64 50, !56, i64 52, !56, i64 56, !56, i64 60}
!144 = !{!"FFMpegCodecData", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !56, i64 28, !52, i64 32, !56, i64 36, !56, i64 40, !56, i64 44, !56, i64 48, !56, i64 52, !56, i64 56, !56, i64 60, !36, i64 64}
!145 = !{!"BakeData", !140, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !52, i64 1280, !52, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!146 = !{!"AudioData", !56, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !56, i64 16, !41, i64 20, !41, i64 22, !52, i64 24, !52, i64 28}
!147 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!148 = !{!"GameData", !147, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !149, i64 40, !41, i64 64, !41, i64 66, !52, i64 68, !150, i64 72, !52, i64 128, !52, i64 132, !56, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !52, i64 164, !52, i64 168, !52, i64 172, !52, i64 176, !52, i64 180}
!149 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !52, i64 8, !52, i64 12, !36, i64 16}
!150 = !{!"RecastData", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !52, i64 32, !52, i64 36, !56, i64 40, !52, i64 44, !52, i64 48, !41, i64 52, !41, i64 54}
!151 = !{!"UnitSettings", !52, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!152 = !{!"PhysicsSettings", !37, i64 0, !56, i64 12, !56, i64 16, !56, i64 20}
!153 = !{!"long", !37, i64 0}
!154 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!155 = !{!57, !56, i64 0}
!156 = distinct !{!156, !79, !80}
!157 = !{!50, !36, i64 120}
!158 = !{!159, !36, i64 1528}
!159 = !{!"MovieClip", !138, i64 0, !36, i64 120, !37, i64 128, !56, i64 1152, !56, i64 1156, !37, i64 1160, !52, i64 1168, !52, i64 1172, !36, i64 1176, !36, i64 1184, !36, i64 1192, !116, i64 1200, !36, i64 1528, !160, i64 1536, !56, i64 2312, !56, i64 2316, !56, i64 2320, !56, i64 2324, !154, i64 2328}
!160 = !{!"MovieClipProxy", !37, i64 0, !41, i64 768, !41, i64 770, !41, i64 772, !41, i64 774}
!161 = !{i32 2, i32 5}
!162 = !{!163, !56, i64 8}
!163 = !{!"TrackMarkersJob", !36, i64 0, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20, !36, i64 24, !52, i64 32, !36, i64 40, !36, i64 48, !36, i64 56}
!164 = !{!163, !36, i64 24}
!165 = !{!163, !56, i64 20}
!166 = !{!163, !56, i64 12}
!167 = !{!117, !41, i64 30}
!168 = !{!137, !41, i64 820}
!169 = !{!163, !52, i64 32}
!170 = !{!163, !36, i64 0}
!171 = !{!163, !56, i64 16}
!172 = !{!163, !36, i64 48}
!173 = !{!163, !36, i64 40}
!174 = !{!163, !36, i64 56}
!175 = !{!176, !37, i64 2080}
!176 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !56, i64 2096, !56, i64 2100, !37, i64 2104, !56, i64 2108, !56, i64 2112, !37, i64 2116}
!177 = distinct !{!177, !79, !80}
!178 = !{!37, !37, i64 0}
!179 = !{!180, !36, i64 288}
!180 = !{!"", !36, i64 0, !36, i64 8, !57, i64 16, !36, i64 24, !37, i64 32, !36, i64 288}
!181 = !{!116, !36, i64 272}
!182 = !{!119, !56, i64 0}
!183 = distinct !{!183, !79, !80}
!184 = !{!119, !36, i64 16}
!185 = !{!119, !56, i64 12}
!186 = distinct !{!186, !79, !80}
!187 = distinct !{!187, !79, !80}
!188 = !{!137, !36, i64 128}
!189 = !{!190, !36, i64 32}
!190 = !{!"Base", !36, i64 0, !36, i64 8, !56, i64 16, !56, i64 20, !56, i64 24, !41, i64 28, !41, i64 30, !36, i64 32}
!191 = !{!192, !41, i64 136}
!192 = !{!"Object", !138, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !56, i64 140, !56, i64 144, !56, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !193, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !56, i64 432, !56, i64 436, !36, i64 440, !36, i64 448, !56, i64 456, !56, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !52, i64 616, !52, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !56, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !56, i64 968, !56, i64 972, !56, i64 976, !56, i64 980, !56, i64 984, !52, i64 988, !52, i64 992, !52, i64 996, !52, i64 1000, !52, i64 1004, !52, i64 1008, !52, i64 1012, !52, i64 1016, !52, i64 1020, !52, i64 1024, !52, i64 1028, !52, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !52, i64 1048, !52, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !52, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !56, i64 1144, !56, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !52, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !153, i64 1304, !153, i64 1312, !56, i64 1320, !56, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!193 = !{!"bAnimVizSettings", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !56, i64 32, !56, i64 36, !56, i64 40, !56, i64 44}
!194 = distinct !{!194, !79, !80}
!195 = !{!196, !56, i64 80}
!196 = !{!"MovieTrackingObject", !36, i64 0, !36, i64 8, !37, i64 16, !56, i64 80, !52, i64 84, !39, i64 88, !39, i64 104, !119, i64 120, !56, i64 144, !56, i64 148}
!197 = !{!137, !36, i64 168}
!198 = !{!192, !36, i64 216}
!199 = distinct !{!199, !79, !80}
!200 = distinct !{!200, !79, !80}
!201 = distinct !{!201, !79, !80}
!202 = !{!159, !52, i64 1248}
!203 = !{!159, !52, i64 1264}
!204 = distinct !{!204, !79, !80}
!205 = !{!159, !36, i64 1432}
!206 = distinct !{!206, !79, !80}
!207 = !{!159, !36, i64 1440}
!208 = distinct !{!208, !79, !80}
!209 = distinct !{!209, !79, !80}
!210 = !{!159, !56, i64 2312}
!211 = !{!159, !36, i64 1192}
!212 = !{!213, !56, i64 40}
!213 = !{!"bGPDlayer", !36, i64 0, !36, i64 8, !39, i64 16, !36, i64 32, !56, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 64}
!214 = distinct !{!214, !79, !80}
!215 = distinct !{!215, !79, !80}
!216 = !{!55, !56, i64 56}
!217 = !{!137, !56, i64 684}
!218 = !{!137, !56, i64 688}
!219 = !{!159, !56, i64 1360}
!220 = !{!116, !36, i64 200}
!221 = distinct !{!221, !79, !80}
!222 = distinct !{!222, !79, !80}
!223 = !{!196, !56, i64 144}
!224 = !{!196, !56, i64 148}
!225 = distinct !{!225, !79, !80}
!226 = !{!120, !56, i64 4}
!227 = distinct !{!227, !79, !80}
!228 = !{!120, !56, i64 40}
!229 = !{!120, !56, i64 8}
!230 = distinct !{!230, !79, !80}
!231 = distinct !{!231, !79, !80}
!232 = !{!120, !36, i64 16}
!233 = !{!59, !56, i64 56}
!234 = distinct !{!234, !79, !80}
!235 = !{!82, !52, i64 148}
!236 = distinct !{!236, !79, !80}
!237 = !{!159, !56, i64 1252}
!238 = !{!159, !52, i64 1260}
!239 = !{!159, !56, i64 1256}
!240 = distinct !{!240, !79, !80}
!241 = distinct !{!241, !79, !80}
!242 = distinct !{!242, !79, !80}
!243 = !{!244, !56, i64 0}
!244 = !{!"SlidePlaneMarkerData", !56, i64 0, !36, i64 8, !36, i64 16, !56, i64 24, !56, i64 28, !56, i64 32, !36, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72}
!245 = !{!244, !36, i64 8}
!246 = !{!244, !36, i64 16}
!247 = !{!244, !56, i64 24}
!248 = !{!244, !56, i64 28}
!249 = !{!244, !56, i64 32}
!250 = !{!244, !36, i64 40}
!251 = !{!244, !37, i64 72}
!252 = !{!253, !56, i64 36}
!253 = !{!"MovieTrackingPlaneMarker", !37, i64 0, !56, i64 32, !56, i64 36}
!254 = distinct !{!254, !79, !80}
!255 = !{!82, !41, i64 176}
!256 = distinct !{!256, !79, !80}
!257 = !{!41, !41, i64 0}
!258 = distinct !{!258, !79, !80}
!259 = !{!260, !36, i64 1552}
!260 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !41, i64 1040, !41, i64 1042, !41, i64 1044, !41, i64 1046, !153, i64 1048, !37, i64 1056, !41, i64 1072, !36, i64 1080, !39, i64 1088, !39, i64 1104, !39, i64 1120, !39, i64 1136, !39, i64 1152, !39, i64 1168, !39, i64 1184, !39, i64 1200, !39, i64 1216, !39, i64 1232, !39, i64 1248, !39, i64 1264, !39, i64 1280, !39, i64 1296, !39, i64 1312, !39, i64 1328, !39, i64 1344, !39, i64 1360, !39, i64 1376, !39, i64 1392, !39, i64 1408, !39, i64 1424, !39, i64 1440, !39, i64 1456, !39, i64 1472, !39, i64 1488, !39, i64 1504, !39, i64 1520, !39, i64 1536, !39, i64 1552, !39, i64 1568, !39, i64 1584, !39, i64 1600, !39, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!261 = !{!180, !36, i64 8}
!262 = !{!180, !36, i64 0}
!263 = !{!180, !36, i64 24}
!264 = !{!116, !52, i64 164}
!265 = !{!137, !36, i64 4640}
!266 = !{!192, !36, i64 296}
!267 = distinct !{!267, !79, !80}
!268 = !{!269, !41, i64 0}
!269 = !{!"bConstraintTypeInfo", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 36, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128}
!270 = !{!271, !36, i64 16}
!271 = !{!"bConstraint", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 26, !37, i64 28, !37, i64 29, !37, i64 30, !41, i64 94, !52, i64 96, !52, i64 100, !36, i64 104, !52, i64 112, !52, i64 116}
!272 = !{!273, !36, i64 144}
!273 = !{!"bObjectSolverConstraint", !36, i64 0, !56, i64 8, !56, i64 12, !37, i64 16, !37, i64 80, !36, i64 144}
!274 = distinct !{!274, !79, !80}
!275 = distinct !{!275, !79, !80}
!276 = distinct !{!276, !79, !80}
!277 = distinct !{!277, !79, !80}
!278 = distinct !{!278, !79, !80}
!279 = !{!196, !52, i64 84}
!280 = distinct !{!280, !79, !80}
!281 = !{!253, !56, i64 32}
!282 = distinct !{!282, !79, !80}
