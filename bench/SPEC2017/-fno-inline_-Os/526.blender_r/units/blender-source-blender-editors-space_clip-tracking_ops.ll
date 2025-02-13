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
%struct.MovieTrackingObject = type { ptr, ptr, [64 x i8], i32, float, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, i32, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.SlidePlaneMarkerData = type { i32, ptr, ptr, i32, i32, i32, ptr, [2 x i32], [2 x float], [2 x float], i8 }
%struct.MovieTrackingPlaneMarker = type { [4 x [2 x float]], i32, i32 }
%struct.SolveCameraJob = type { ptr, ptr, %struct.MovieClipUser, ptr, [256 x i8], ptr }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bObjectSolverConstraint = type { ptr, i32, i32, [64 x i8], [4 x [4 x float]], ptr }
%struct.MovieReconstructedCamera = type { i32, float, [4 x [4 x float]] }
%struct.bGPdata = type { %struct.ID, %struct.ListBase, i32, i16, i16, ptr }
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }

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

; Function Attrs: noinline nounwind optsize uwtable
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
  %10 = tail call ptr @RNA_def_float_vector(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, float noundef -1.000000e+00, float noundef 1.000000e+00) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_marker_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !49 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #18
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %8, ptr noundef nonnull @.str.3) #18
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call void @ED_clip_mouse_pos(ptr noundef %5, ptr noundef %6, ptr noundef nonnull %12, ptr noundef nonnull %4) #18
  %13 = load ptr, ptr %7, align 8, !tbaa !50
  call void @RNA_float_set_array(ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %14

14:                                               ; preds = %11, %3
  %15 = call i32 @add_marker_exec(ptr noundef %0, ptr noundef nonnull %1) #20, !range !52
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_marker_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !53 {
  %3 = alloca [2 x float], align 4
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %5 = tail call ptr @ED_space_clip_get_clip(ptr noundef %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  call void @RNA_float_get_array(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #18
  %8 = load float, ptr %3, align 4, !tbaa !54
  %9 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !54
  %11 = call fastcc zeroext i8 @add_marker(ptr noundef %0, float noundef %8, float noundef %10) #20, !range !56
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 6
  store <2 x float> zeroinitializer, ptr %14, align 4, !tbaa !54
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %5) #18
  br label %15

15:                                               ; preds = %2, %13
  %16 = phi i32 [ 4, %13 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret i32 %16
}

; Function Attrs: optsize
declare i32 @ED_space_clip_tracking_poll(ptr noundef) #1

; Function Attrs: optsize
declare ptr @RNA_def_float_vector(ptr noundef, ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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
  store ptr @add_marker_at_click_modal, ptr %6, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 7, ptr %7, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_marker_at_click_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !58 {
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #18
  tail call void @ED_area_headerprint(ptr noundef %4, ptr noundef nonnull @.str.248) #18
  %5 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #18
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_marker_at_click_modal(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !59 {
  %4 = alloca [2 x float], align 4
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %6 = tail call ptr @ED_space_clip_get_clip(ptr noundef %5) #18
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !60
  switch i16 %9, label %32 [
    i16 4, label %33
    i16 1, label %10
    i16 218, label %30
  ]

10:                                               ; preds = %3
  %11 = tail call ptr @CTX_wm_area(ptr noundef %0) #18
  tail call void @ED_area_headerprint(ptr noundef %11, ptr noundef null) #18
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !64
  %14 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !65
  %16 = sub nsw i32 %13, %15
  %17 = sitofp i32 %16 to float
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !70
  %20 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 3, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !71
  %22 = sub nsw i32 %19, %21
  %23 = sitofp i32 %22 to float
  %24 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @ED_clip_point_stable_pos(ptr noundef %5, ptr noundef %7, float noundef %17, float noundef %23, ptr noundef nonnull %4, ptr noundef nonnull %24) #18
  %25 = load float, ptr %4, align 4, !tbaa !54
  %26 = load float, ptr %24, align 4, !tbaa !54
  %27 = call fastcc zeroext i8 @add_marker(ptr noundef %0, float noundef %25, float noundef %26) #20, !range !56
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %10
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %6) #18
  br label %33

30:                                               ; preds = %3
  %31 = tail call ptr @CTX_wm_area(ptr noundef %0) #18
  tail call void @ED_area_headerprint(ptr noundef %31, ptr noundef null) #18
  br label %33

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %10, %3, %32, %30, %29
  %34 = phi i32 [ 8, %32 ], [ 2, %30 ], [ 4, %29 ], [ 1, %3 ], [ 2, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret i32 %34
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: optsize
declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @delete_track_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !72 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #18
  %7 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %5) #18
  %8 = load ptr, ptr %6, align 8, !tbaa !73
  %9 = load ptr, ptr %7, align 8, !tbaa !73
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
  %19 = load ptr, ptr %18, align 8, !tbaa !74
  %20 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %18, i64 0, i32 8
  %21 = load i32, ptr %20, align 4, !tbaa !76
  %22 = and i32 %21, 3
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  tail call void @BKE_tracking_plane_track_free(ptr noundef nonnull %18) #18
  tail call void @BLI_freelinkN(ptr noundef nonnull %7, ptr noundef nonnull %18) #18
  br label %25

25:                                               ; preds = %16, %24
  %26 = phi i8 [ 1, %24 ], [ %17, %16 ]
  %27 = icmp eq ptr %19, null
  br i1 %27, label %11, label %16, !llvm.loop !77

28:                                               ; preds = %14, %57
  %29 = phi i8 [ %12, %14 ], [ %58, %57 ]
  %30 = phi ptr [ %8, %14 ], [ %31, %57 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !79
  %32 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %30, i64 0, i32 13
  %33 = load i32, ptr %32, align 8, !tbaa !81
  %34 = and i32 %33, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %28
  %37 = and i32 %33, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load i32, ptr %15, align 8, !tbaa !82
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %30, i64 0, i32 14
  %45 = load i32, ptr %44, align 4, !tbaa !88
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43, %39
  %49 = and i32 %40, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %30, i64 0, i32 15
  %53 = load i32, ptr %52, align 8, !tbaa !89
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51, %43, %36
  tail call void @clip_delete_track(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %30) #18
  br label %57

57:                                               ; preds = %56, %51, %48, %28
  %58 = phi i8 [ 1, %56 ], [ %29, %51 ], [ %29, %48 ], [ %29, %28 ]
  %59 = icmp eq ptr %31, null
  br i1 %59, label %60, label %28, !llvm.loop !90

60:                                               ; preds = %57, %11
  %61 = phi i8 [ %12, %11 ], [ %58, %57 ]
  %62 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %63 = load i32, ptr %62, align 8, !tbaa !82
  %64 = and i32 %63, -5
  store i32 %64, ptr %62, align 8, !tbaa !82
  %65 = icmp eq i8 %61, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %4) #18
  br label %67

67:                                               ; preds = %66, %60
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @delete_marker_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !91 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #18
  %7 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %5) #18
  %8 = load ptr, ptr %6, align 8, !tbaa !73
  %9 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %3) #18
  %10 = icmp eq ptr %8, null
  br i1 %10, label %57, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  br label %13

13:                                               ; preds = %11, %51
  %14 = phi ptr [ %8, %11 ], [ %17, %51 ]
  %15 = phi i8 [ 0, %11 ], [ %53, %51 ]
  %16 = phi i8 [ 0, %11 ], [ %52, %51 ]
  %17 = load ptr, ptr %14, align 8, !tbaa !79
  %18 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %14, i64 0, i32 13
  %19 = load i32, ptr %18, align 8, !tbaa !81
  %20 = and i32 %19, 32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %13
  %23 = and i32 %19, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load i32, ptr %12, align 8, !tbaa !82
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %14, i64 0, i32 14
  %31 = load i32, ptr %30, align 4, !tbaa !88
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29, %25
  %35 = and i32 %26, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %14, i64 0, i32 15
  %39 = load i32, ptr %38, align 8, !tbaa !89
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %37, %29, %22
  %43 = tail call ptr @BKE_tracking_marker_get_exact(ptr noundef nonnull %14, i32 noundef %9) #18
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %14, i64 0, i32 8
  %47 = load i32, ptr %46, align 8, !tbaa !92
  %48 = icmp sgt i32 %47, 1
  %49 = zext i1 %48 to i8
  %50 = or i8 %16, %49
  tail call void @clip_delete_marker(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %14, ptr noundef nonnull %43) #18
  br label %51

51:                                               ; preds = %42, %45, %37, %34, %13
  %52 = phi i8 [ %16, %37 ], [ %16, %34 ], [ %16, %13 ], [ %50, %45 ], [ %16, %42 ]
  %53 = phi i8 [ %15, %37 ], [ %15, %34 ], [ %15, %13 ], [ 1, %45 ], [ %15, %42 ]
  %54 = icmp eq ptr %17, null
  br i1 %54, label %55, label %13, !llvm.loop !93

55:                                               ; preds = %51
  %56 = icmp eq i8 %52, 0
  br label %57

57:                                               ; preds = %55, %2
  %58 = phi i1 [ true, %2 ], [ %56, %55 ]
  %59 = phi i8 [ 0, %2 ], [ %53, %55 ]
  %60 = load ptr, ptr %7, align 8, !tbaa !73
  %61 = icmp eq ptr %60, null
  br i1 %61, label %82, label %62

62:                                               ; preds = %57, %79
  %63 = phi i8 [ %80, %79 ], [ %59, %57 ]
  %64 = phi ptr [ %65, %79 ], [ %60, %57 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !74
  %66 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %64, i64 0, i32 8
  %67 = load i32, ptr %66, align 4, !tbaa !76
  %68 = and i32 %67, 3
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %79

70:                                               ; preds = %62
  %71 = tail call ptr @BKE_tracking_plane_marker_get_exact(ptr noundef nonnull %64, i32 noundef %9) #18
  %72 = icmp eq ptr %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %64, i64 0, i32 7
  %75 = load i32, ptr %74, align 8, !tbaa !94
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  tail call void @BKE_tracking_plane_track_free(ptr noundef nonnull %64) #18
  tail call void @BLI_freelinkN(ptr noundef nonnull %7, ptr noundef nonnull %64) #18
  br label %79

78:                                               ; preds = %73
  tail call void @BKE_tracking_plane_marker_delete(ptr noundef nonnull %64, i32 noundef %9) #18
  br label %79

79:                                               ; preds = %70, %78, %77, %62
  %80 = phi i8 [ %63, %62 ], [ %63, %70 ], [ 1, %78 ], [ 1, %77 ]
  %81 = icmp eq ptr %65, null
  br i1 %81, label %82, label %62, !llvm.loop !95

82:                                               ; preds = %79, %57
  %83 = phi i8 [ %59, %57 ], [ %80, %79 ]
  br i1 %58, label %84, label %88

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %86 = load i32, ptr %85, align 8, !tbaa !82
  %87 = and i32 %86, -5
  store i32 %87, ptr %85, align 8, !tbaa !82
  br label %88

88:                                               ; preds = %84, %82
  %89 = icmp eq i8 %83, 0
  %90 = select i1 %89, i32 2, i32 4
  ret i32 %90
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @tracking_marker_check_slide(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x float], align 4
  %9 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #18
  %11 = tail call ptr @ED_space_clip_get_clip(ptr noundef %9) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  %12 = getelementptr inbounds %struct.MovieClip, ptr %11, i64 0, i32 11
  %13 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %12) #18
  %14 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %9) #18
  call void @ED_space_clip_get_size(ptr noundef %9, ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %15 = load i32, ptr %6, align 4, !tbaa !96
  %16 = icmp eq i32 %15, 0
  %17 = load i32, ptr %7, align 4
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %114, label %20

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  call void @ED_clip_mouse_pos(ptr noundef %9, ptr noundef %10, ptr noundef nonnull %21, ptr noundef nonnull %8) #18
  %22 = load ptr, ptr %13, align 8, !tbaa !97
  %23 = icmp eq ptr %22, null
  br i1 %23, label %114, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.SpaceClip, ptr %9, i64 0, i32 12
  br label %26

26:                                               ; preds = %24, %111
  %27 = phi ptr [ %22, %24 ], [ %112, %111 ]
  %28 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %27, i64 0, i32 13
  %29 = load i32, ptr %28, align 8, !tbaa !81
  %30 = and i32 %29, 32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %111

32:                                               ; preds = %26
  %33 = and i32 %29, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %32
  %36 = load i32, ptr %25, align 8, !tbaa !82
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %27, i64 0, i32 14
  %41 = load i32, ptr %40, align 4, !tbaa !88
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39, %35
  %45 = and i32 %36, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %111, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %27, i64 0, i32 15
  %49 = load i32, ptr %48, align 8, !tbaa !89
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  %52 = and i32 %29, 64
  %53 = icmp eq i32 %52, 0
  %54 = and i1 %53, %51
  br i1 %54, label %58, label %111

55:                                               ; preds = %39, %32
  %56 = and i32 %29, 64
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %111

58:                                               ; preds = %47, %55
  %59 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %27, i32 noundef %14) #18
  %60 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %59, i64 0, i32 5
  %61 = load i32, ptr %60, align 4, !tbaa !98
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %111

64:                                               ; preds = %58
  %65 = load i32, ptr %6, align 4, !tbaa !96
  %66 = load i32, ptr %7, align 4, !tbaa !96
  %67 = call fastcc i32 @mouse_on_offset(ptr noundef %9, ptr noundef nonnull %27, ptr noundef nonnull %59, ptr noundef nonnull %8, i32 noundef %65, i32 noundef %66) #20, !range !99
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %99

69:                                               ; preds = %64
  %70 = load i32, ptr %25, align 8, !tbaa !82
  %71 = and i32 %70, 2
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %69
  %74 = load i32, ptr %6, align 4, !tbaa !96
  %75 = load i32, ptr %7, align 4, !tbaa !96
  %76 = call fastcc i32 @mouse_on_corner(ptr noundef nonnull %9, ptr noundef nonnull %59, ptr noundef nonnull %8, i32 noundef 1, i32 noundef %74, i32 noundef %75) #20
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %73
  %79 = load i32, ptr %6, align 4, !tbaa !96
  %80 = load i32, ptr %7, align 4, !tbaa !96
  %81 = call fastcc i32 @mouse_on_corner(ptr noundef nonnull %9, ptr noundef nonnull %59, ptr noundef nonnull %8, i32 noundef 0, i32 noundef %79, i32 noundef %80) #20
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %78
  %84 = load i32, ptr %25, align 8, !tbaa !82
  br label %85

85:                                               ; preds = %83, %69
  %86 = phi i32 [ %84, %83 ], [ %70, %69 ]
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %111, label %89

89:                                               ; preds = %85
  %90 = load i32, ptr %6, align 4, !tbaa !96
  %91 = load i32, ptr %7, align 4, !tbaa !96
  %92 = call fastcc i32 @get_mouse_pattern_corner(ptr noundef nonnull %9, ptr noundef nonnull %59, ptr noundef nonnull %8, i32 noundef %90, i32 noundef %91) #20
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i32, ptr %6, align 4, !tbaa !96
  %96 = load i32, ptr %7, align 4, !tbaa !96
  %97 = call fastcc i32 @mouse_on_tilt(ptr noundef nonnull %9, ptr noundef nonnull %59, ptr noundef nonnull %8, i32 noundef %95, i32 noundef %96) #20, !range !99
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %94, %78, %73, %64, %89
  %100 = phi i32 [ 0, %89 ], [ 2, %73 ], [ 0, %64 ], [ 1, %78 ], [ 3, %94 ]
  %101 = phi i32 [ 2, %89 ], [ 4, %73 ], [ 1, %64 ], [ 4, %78 ], [ 2, %94 ]
  %102 = phi i32 [ %92, %89 ], [ -1, %73 ], [ -1, %64 ], [ -1, %78 ], [ -1, %94 ]
  %103 = icmp eq ptr %2, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  store i32 %101, ptr %2, align 4, !tbaa !96
  br label %105

105:                                              ; preds = %104, %99
  %106 = icmp eq ptr %3, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %105
  store i32 %100, ptr %3, align 4, !tbaa !96
  br label %108

108:                                              ; preds = %107, %105
  %109 = icmp eq ptr %4, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %108
  store i32 %102, ptr %4, align 4, !tbaa !96
  br label %114

111:                                              ; preds = %85, %94, %58, %55, %47, %44, %26
  %112 = load ptr, ptr %27, align 8, !tbaa !97
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %26, !llvm.loop !100

114:                                              ; preds = %111, %20, %110, %108, %5
  %115 = phi ptr [ null, %5 ], [ %27, %110 ], [ %27, %108 ], [ null, %20 ], [ null, %111 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  ret ptr %115
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @CTX_wm_space_clip(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_get_active_tracks(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_space_clip_get_clip_frame_number(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_space_clip_get_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_clip_mouse_pos(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @mouse_on_offset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !101 {
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  call void @BKE_tracking_marker_pattern_minmax(ptr noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %9) #18
  %10 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 7
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %7, ptr noundef %2, ptr noundef nonnull %10) #20
  %11 = sitofp i32 %4 to float
  %12 = fdiv float 1.200000e+01, %11
  %13 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 8
  %14 = load float, ptr %13, align 4, !tbaa !102
  %15 = fdiv float %12, %14
  %16 = sitofp i32 %5 to float
  %17 = fdiv float 1.200000e+01, %16
  %18 = fdiv float %17, %14
  %19 = load float, ptr %9, align 4, !tbaa !54
  %20 = load float, ptr %8, align 4, !tbaa !54
  %21 = fsub float %19, %20
  %22 = fmul float %21, 5.000000e-01
  %23 = call fastcc float @min_ff(float noundef %15, float noundef %22) #20
  %24 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !54
  %26 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !54
  %28 = fsub float %25, %27
  %29 = fmul float %28, 5.000000e-01
  %30 = call fastcc float @min_ff(float noundef %18, float noundef %29) #20
  %31 = load float, ptr %3, align 4, !tbaa !54
  %32 = load float, ptr %7, align 4, !tbaa !54
  %33 = fsub float %32, %23
  %34 = fcmp ult float %31, %33
  %35 = fadd float %23, %32
  %36 = fcmp ugt float %31, %35
  %37 = or i1 %34, %36
  br i1 %37, label %49, label %38

38:                                               ; preds = %6
  %39 = getelementptr inbounds float, ptr %3, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !54
  %41 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !54
  %43 = fsub float %42, %30
  %44 = fcmp ult float %40, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = fadd float %30, %42
  %47 = fcmp ole float %40, %46
  %48 = zext i1 %47 to i32
  br label %49

49:                                               ; preds = %45, %38, %6
  %50 = phi i32 [ 0, %38 ], [ 0, %6 ], [ %48, %45 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  ret i32 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @mouse_on_corner(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !103 {
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  %10 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %1, i64 0, i32 2
  call fastcc void @copy_v2_v2(ptr noundef nonnull %7, ptr noundef nonnull %10) #20
  %11 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %1, i64 0, i32 3
  call fastcc void @copy_v2_v2(ptr noundef nonnull %8, ptr noundef nonnull %11) #20
  %12 = insertelement <2 x i32> poison, i32 %4, i64 0
  %13 = insertelement <2 x i32> %12, i32 %5, i64 1
  %14 = sitofp <2 x i32> %13 to <2 x float>
  %15 = load float, ptr %7, align 4, !tbaa !54
  %16 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !54
  %18 = load float, ptr %8, align 4, !tbaa !54
  %19 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !54
  %21 = icmp eq i32 %3, 0
  %22 = fdiv <2 x float> zeroinitializer, %14
  %23 = insertelement <2 x float> poison, float %18, i64 0
  %24 = insertelement <2 x float> %23, float %17, i64 1
  %25 = fadd <2 x float> %24, %22
  %26 = fsub <2 x float> %24, %22
  %27 = shufflevector <2 x float> %25, <2 x float> %26, <2 x i32> <i32 0, i32 3>
  %28 = insertelement <2 x float> poison, float %15, i64 0
  %29 = insertelement <2 x float> %28, float %20, i64 1
  %30 = fsub <2 x float> %29, %22
  %31 = fadd <2 x float> %29, %22
  %32 = shufflevector <2 x float> %30, <2 x float> %31, <2 x i32> <i32 0, i32 3>
  %33 = load <2 x float>, ptr %1, align 4, !tbaa !54
  %34 = insertelement <2 x i1> poison, i1 %21, i64 0
  %35 = shufflevector <2 x i1> %34, <2 x i1> poison, <2 x i32> zeroinitializer
  %36 = select <2 x i1> %35, <2 x float> %27, <2 x float> %32
  %37 = fadd <2 x float> %36, %33
  store <2 x float> %37, ptr %9, align 8
  %38 = call fastcc i32 @mouse_on_slide_zone(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 4, ptr noundef %2, ptr noundef nonnull %9, i32 noundef %4, i32 noundef %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  ret i32 %38
}

; Function Attrs: nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable
define internal fastcc i32 @get_mouse_pattern_corner(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #4 !PGOFuncName !104 {
  %6 = alloca [2 x float], align 4
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %10, %7 ]
  %9 = phi float [ 0x47EFFFFFE0000000, %5 ], [ %15, %7 ]
  %10 = add nuw nsw i64 %8, 1
  %11 = and i64 %10, 3
  %12 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %1, i64 0, i32 1, i64 %8
  %13 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %1, i64 0, i32 1, i64 %11
  %14 = tail call fastcc float @len_squared_v2v2(ptr noundef nonnull %12, ptr noundef nonnull %13) #20
  %15 = tail call fastcc float @min_ff(float noundef %14, float noundef %9) #20
  %16 = icmp eq i64 %10, 4
  br i1 %16, label %17, label %7, !llvm.loop !105

17:                                               ; preds = %7
  %18 = tail call float @sqrtf(float noundef %15) #18
  %19 = sitofp i32 %3 to float
  %20 = fdiv float 1.200000e+01, %19
  %21 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 8
  %22 = load float, ptr %21, align 4, !tbaa !102
  %23 = fdiv float %20, %22
  %24 = sitofp i32 %4 to float
  %25 = fdiv float 1.200000e+01, %24
  %26 = fdiv float %25, %22
  %27 = fmul float %18, 2.000000e+00
  %28 = fdiv float %27, 3.000000e+00
  %29 = tail call fastcc float @min_ff(float noundef %23, float noundef %28) #20
  %30 = fmul float %18, %19
  %31 = fdiv float %30, %24
  %32 = fmul float %31, 2.000000e+00
  %33 = fdiv float %32, 3.000000e+00
  %34 = tail call fastcc float @min_ff(float noundef %26, float noundef %33) #20
  %35 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %36 = getelementptr inbounds float, ptr %2, i64 1
  %37 = load float, ptr %2, align 4, !tbaa !54
  br label %38

38:                                               ; preds = %17, %69
  %39 = phi i64 [ 0, %17 ], [ %70, %69 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %40 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %1, i64 0, i32 1, i64 %39
  call fastcc void @add_v2_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %40, ptr noundef %1) #20
  %41 = load float, ptr %6, align 4, !tbaa !54
  %42 = fsub float %41, %29
  %43 = fadd float %29, %41
  %44 = fcmp olt float %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = fcmp ugt float %42, %37
  %47 = fcmp ugt float %37, %43
  %48 = or i1 %46, %47
  br i1 %48, label %69, label %53

49:                                               ; preds = %38
  %50 = fcmp ugt float %43, %37
  %51 = fcmp ugt float %37, %42
  %52 = or i1 %50, %51
  br i1 %52, label %69, label %53

53:                                               ; preds = %49, %45
  %54 = load float, ptr %35, align 4, !tbaa !54
  %55 = fsub float %54, %34
  %56 = fadd float %34, %54
  %57 = fcmp olt float %55, %56
  %58 = load float, ptr %36, align 4, !tbaa !54
  br i1 %57, label %59, label %63

59:                                               ; preds = %53
  %60 = fcmp ole float %55, %58
  %61 = fcmp ole float %58, %56
  %62 = and i1 %60, %61
  br i1 %62, label %67, label %69

63:                                               ; preds = %53
  %64 = fcmp ole float %56, %58
  %65 = fcmp ole float %58, %55
  %66 = and i1 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63, %59
  %68 = trunc i64 %39 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  br label %72

69:                                               ; preds = %49, %45, %63, %59
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  %70 = add nuw nsw i64 %39, 1
  %71 = icmp eq i64 %70, 4
  br i1 %71, label %72, label %38, !llvm.loop !106

72:                                               ; preds = %69, %67
  %73 = phi i32 [ %68, %67 ], [ -1, %69 ]
  ret i32 %73
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @mouse_on_tilt(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !107 {
  %6 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call fastcc void @slide_marker_tilt_slider(ptr noundef %1, ptr noundef nonnull %6) #20
  %7 = call fastcc i32 @mouse_on_slide_zone(ptr noundef %0, ptr noundef %1, i32 noundef 2, ptr noundef %2, ptr noundef nonnull %6, i32 noundef %3, i32 noundef %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  ret i32 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
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
  store ptr @slide_marker_modal, ptr %6, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 23, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_float_vector(ptr noundef %9, ptr noundef nonnull @.str.18, i32 noundef 2, ptr noundef null, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @slide_marker_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !108 {
  %4 = tail call fastcc ptr @slide_marker_customdata(ptr noundef %0, ptr noundef %2) #20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %8 = tail call ptr @ED_space_clip_get_clip(ptr noundef %7) #18
  %9 = getelementptr inbounds %struct.SlideMarkerData, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !109
  %11 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 11, i32 6
  store ptr %10, ptr %11, align 8, !tbaa !111
  %12 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 11, i32 7
  store ptr null, ptr %12, align 8, !tbaa !118
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %4, ptr %13, align 8, !tbaa !119
  tail call fastcc void @hide_cursor(ptr noundef %0) #20
  %14 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #18
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef null) #18
  br label %15

15:                                               ; preds = %3, %6
  %16 = phi i32 [ 1, %6 ], [ 8, %3 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @slide_marker_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !120 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 8
  %7 = alloca [2 x float], align 4
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 8
  %12 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %13 = tail call ptr @CTX_wm_region(ptr noundef %0) #18
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !119
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %17 = load i16, ptr %16, align 8, !tbaa !60
  switch i16 %17, label %339 [
    i16 212, label %18
    i16 215, label %18
    i16 217, label %18
    i16 216, label %18
    i16 4, label %38
    i16 1, label %331
    i16 218, label %337
  ]

18:                                               ; preds = %3, %3, %3, %3
  %19 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 1
  %20 = load i16, ptr %19, align 2, !tbaa !121
  %21 = icmp eq i16 %20, 1
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  switch i16 %17, label %29 [
    i16 212, label %23
    i16 215, label %23
  ]

23:                                               ; preds = %22, %22
  %24 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %25 = load i16, ptr %24, align 2, !tbaa !122
  %26 = icmp eq i16 %25, 2
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 13
  store i8 %27, ptr %28, align 8, !tbaa !123
  br label %38

29:                                               ; preds = %22, %18
  %30 = and i16 %17, -2
  %31 = icmp eq i16 %30, 216
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %34 = load i16, ptr %33, align 2, !tbaa !122
  %35 = icmp eq i16 %34, 1
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 14
  store i8 %36, ptr %37, align 1, !tbaa !124
  br label %38

38:                                               ; preds = %23, %29, %32, %3
  %39 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %40 = load i32, ptr %39, align 4, !tbaa !96
  %41 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !96
  %43 = sub nsw i32 %40, %42
  %44 = sitofp i32 %43 to float
  %45 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %46 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 4, i64 1
  %47 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 5
  %48 = load i32, ptr %47, align 8, !tbaa !125
  %49 = sitofp i32 %48 to float
  %50 = fdiv float %44, %49
  %51 = getelementptr inbounds %struct.SpaceClip, ptr %12, i64 0, i32 8
  %52 = load float, ptr %51, align 4, !tbaa !102
  %53 = fdiv float %50, %52
  %54 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 13
  %55 = load i8, ptr %54, align 8, !tbaa !123
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %38
  %58 = fneg float %53
  %59 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 6
  %60 = load i32, ptr %59, align 4, !tbaa !126
  %61 = sitofp i32 %60 to float
  %62 = fdiv float %58, %61
  %63 = fmul float %62, %49
  br label %74

64:                                               ; preds = %38
  %65 = load i32, ptr %45, align 4, !tbaa !96
  %66 = load i32, ptr %46, align 4, !tbaa !96
  %67 = sub nsw i32 %65, %66
  %68 = sitofp i32 %67 to float
  %69 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 6
  %70 = load i32, ptr %69, align 4, !tbaa !126
  %71 = sitofp i32 %70 to float
  %72 = fdiv float %68, %71
  %73 = fdiv float %72, %52
  br label %74

74:                                               ; preds = %64, %57
  %75 = phi float [ %63, %57 ], [ %73, %64 ]
  %76 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 14
  %77 = load i8, ptr %76, align 1, !tbaa !124
  %78 = icmp eq i8 %77, 0
  %79 = insertelement <2 x float> poison, float %53, i64 0
  %80 = insertelement <2 x float> %79, float %75, i64 1
  %81 = fdiv <2 x float> %80, <float 5.000000e+00, float 5.000000e+00>
  %82 = insertelement <2 x i1> poison, i1 %78, i64 0
  %83 = shufflevector <2 x i1> %82, <2 x i1> poison, <2 x i32> zeroinitializer
  %84 = select <2 x i1> %83, <2 x float> %80, <2 x float> %81
  %85 = load i16, ptr %15, align 8, !tbaa !127
  switch i16 %85, label %325 [
    i16 1, label %86
    i16 2, label %115
    i16 4, label %288
  ]

86:                                               ; preds = %74
  %87 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 1
  %88 = load i16, ptr %87, align 2, !tbaa !121
  %89 = icmp eq i16 %88, 2
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 18
  %92 = load float, ptr %91, align 4, !tbaa !54
  %93 = extractelement <2 x float> %84, i64 0
  %94 = fadd float %93, %92
  %95 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 10
  %96 = load ptr, ptr %95, align 8, !tbaa !128
  store float %94, ptr %96, align 4, !tbaa !54
  %97 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 18, i64 1
  br label %106

98:                                               ; preds = %86
  %99 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 17
  %100 = load float, ptr %99, align 4, !tbaa !54
  %101 = extractelement <2 x float> %84, i64 0
  %102 = fadd float %101, %100
  %103 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 9
  %104 = load ptr, ptr %103, align 8, !tbaa !129
  store float %102, ptr %104, align 4, !tbaa !54
  %105 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 17, i64 1
  br label %106

106:                                              ; preds = %98, %90
  %107 = phi ptr [ %105, %98 ], [ %97, %90 ]
  %108 = phi ptr [ %104, %98 ], [ %96, %90 ]
  %109 = load float, ptr %107, align 4, !tbaa !54
  %110 = extractelement <2 x float> %84, i64 1
  %111 = fadd float %110, %109
  %112 = getelementptr inbounds float, ptr %108, i64 1
  store float %111, ptr %112, align 4, !tbaa !54
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #18
  %113 = getelementptr inbounds %struct.SpaceClip, ptr %12, i64 0, i32 10
  %114 = load ptr, ptr %113, align 8, !tbaa !130
  tail call void @DAG_id_tag_update(ptr noundef %114, i16 noundef signext 0) #18
  br label %325

115:                                              ; preds = %74
  %116 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 1
  %117 = load i16, ptr %116, align 2, !tbaa !121
  switch i16 %117, label %325 [
    i16 1, label %118
    i16 2, label %161
    i16 0, label %187
    i16 3, label %208
  ]

118:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %119 = sitofp i32 %42 to float
  %120 = load i32, ptr %46, align 4, !tbaa !96
  %121 = sitofp i32 %120 to float
  %122 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  call void @ED_clip_point_stable_pos(ptr noundef nonnull %12, ptr noundef %13, float noundef %119, float noundef %121, ptr noundef nonnull %4, ptr noundef nonnull %122) #18
  %123 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 17
  call fastcc void @sub_v2_v2(ptr noundef nonnull %4, ptr noundef nonnull %123) #20
  %124 = call fastcc float @len_squared_v2(ptr noundef nonnull %4) #20
  %125 = fcmp une float %124, 0.000000e+00
  br i1 %125, label %126, label %158

126:                                              ; preds = %118
  %127 = load i8, ptr %76, align 1, !tbaa !124
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %126
  %130 = load <2 x i32>, ptr %41, align 8, !tbaa !96
  %131 = sitofp <2 x i32> %130 to <2 x float>
  %132 = load <2 x i32>, ptr %39, align 4, !tbaa !96
  %133 = sub nsw <2 x i32> %132, %130
  %134 = sitofp <2 x i32> %133 to <2 x float>
  %135 = fdiv <2 x float> %134, <float 5.000000e+00, float 5.000000e+00>
  %136 = fadd <2 x float> %135, %131
  br label %140

137:                                              ; preds = %126
  %138 = load <2 x i32>, ptr %39, align 4, !tbaa !96
  %139 = sitofp <2 x i32> %138 to <2 x float>
  br label %140

140:                                              ; preds = %137, %129
  %141 = phi <2 x float> [ %136, %129 ], [ %139, %137 ]
  %142 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %143 = extractelement <2 x float> %141, i64 0
  %144 = extractelement <2 x float> %141, i64 1
  call void @ED_clip_point_stable_pos(ptr noundef nonnull %12, ptr noundef %13, float noundef %143, float noundef %144, ptr noundef nonnull %5, ptr noundef nonnull %142) #18
  call fastcc void @sub_v2_v2(ptr noundef nonnull %5, ptr noundef nonnull %123) #20
  %145 = call fastcc float @len_v2(ptr noundef nonnull %5) #20
  %146 = call fastcc float @len_v2(ptr noundef nonnull %4) #20
  %147 = fdiv float %145, %146
  %148 = fcmp ogt float %147, 0.000000e+00
  br i1 %148, label %149, label %158

149:                                              ; preds = %140
  %150 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 11
  br label %151

151:                                              ; preds = %149, %151
  %152 = phi i64 [ 0, %149 ], [ %156, %151 ]
  %153 = load ptr, ptr %150, align 8, !tbaa !131
  %154 = getelementptr inbounds [2 x float], ptr %153, i64 %152
  %155 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 19, i64 %152
  call fastcc void @mul_v2_v2fl(ptr noundef %154, ptr noundef nonnull %155, float noundef %147) #20
  %156 = add nuw nsw i64 %152, 1
  %157 = icmp eq i64 %156, 4
  br i1 %157, label %158, label %151, !llvm.loop !132

158:                                              ; preds = %151, %140, %118
  %159 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !133
  call void @BKE_tracking_marker_clamp(ptr noundef %160, i32 noundef 1) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %325

161:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  store <2 x float> %84, ptr %6, align 8, !tbaa !54
  %162 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !109
  %164 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %163, i64 0, i32 8
  %165 = load i32, ptr %164, align 8, !tbaa !92
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %183

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 20
  br label %169

169:                                              ; preds = %167, %169
  %170 = phi i64 [ 0, %167 ], [ %177, %169 ]
  %171 = phi ptr [ %163, %167 ], [ %178, %169 ]
  %172 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %171, i64 0, i32 10
  %173 = load ptr, ptr %172, align 8, !tbaa !134
  %174 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %173, i64 %170
  %175 = load ptr, ptr %168, align 8, !tbaa !135
  %176 = getelementptr inbounds [2 x float], ptr %175, i64 %170
  call fastcc void @add_v2_v2v2(ptr noundef %174, ptr noundef %176, ptr noundef nonnull %6) #20
  %177 = add nuw nsw i64 %170, 1
  %178 = load ptr, ptr %162, align 8, !tbaa !109
  %179 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %178, i64 0, i32 8
  %180 = load i32, ptr %179, align 8, !tbaa !92
  %181 = sext i32 %180 to i64
  %182 = icmp slt i64 %177, %181
  br i1 %182, label %169, label %183, !llvm.loop !136

183:                                              ; preds = %169, %161
  %184 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 10
  %185 = load ptr, ptr %184, align 8, !tbaa !128
  %186 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 18
  call fastcc void @sub_v2_v2v2(ptr noundef %185, ptr noundef nonnull %186, ptr noundef nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  br label %325

187:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %188 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 9
  %189 = load ptr, ptr %188, align 8, !tbaa !129
  call fastcc void @copy_v2_v2(ptr noundef nonnull %7, ptr noundef %189) #20
  %190 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 12
  %191 = load float, ptr %190, align 8, !tbaa !54
  %192 = extractelement <2 x float> %84, i64 0
  %193 = fadd float %192, %191
  store float %193, ptr %189, align 4, !tbaa !54
  %194 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 12, i64 1
  %195 = load float, ptr %194, align 4, !tbaa !54
  %196 = extractelement <2 x float> %84, i64 1
  %197 = fadd float %196, %195
  %198 = getelementptr inbounds float, ptr %189, i64 1
  store float %197, ptr %198, align 4, !tbaa !54
  %199 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 11
  %200 = load ptr, ptr %199, align 8, !tbaa !131
  %201 = tail call fastcc zeroext i8 @slide_check_corners(ptr noundef %200) #20
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %187
  %204 = load ptr, ptr %188, align 8, !tbaa !129
  call fastcc void @copy_v2_v2(ptr noundef %204, ptr noundef nonnull %7) #20
  br label %205

205:                                              ; preds = %203, %187
  %206 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 3
  %207 = load ptr, ptr %206, align 8, !tbaa !133
  tail call void @BKE_tracking_marker_clamp(ptr noundef %207, i32 noundef 1) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  br label %325

208:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  br i1 %78, label %221, label %209

209:                                              ; preds = %208
  %210 = load i32, ptr %46, align 4, !tbaa !96
  %211 = load i32, ptr %45, align 4, !tbaa !96
  %212 = sub nsw i32 %211, %210
  %213 = sitofp i32 %212 to float
  %214 = insertelement <2 x i32> poison, i32 %210, i64 0
  %215 = insertelement <2 x i32> %214, i32 %42, i64 1
  %216 = sitofp <2 x i32> %215 to <2 x float>
  %217 = insertelement <2 x float> poison, float %213, i64 0
  %218 = insertelement <2 x float> %217, float %44, i64 1
  %219 = fdiv <2 x float> %218, <float 5.000000e+00, float 5.000000e+00>
  %220 = fadd <2 x float> %219, %216
  br label %226

221:                                              ; preds = %208
  %222 = load i32, ptr %45, align 4, !tbaa !96
  %223 = insertelement <2 x i32> poison, i32 %222, i64 0
  %224 = insertelement <2 x i32> %223, i32 %40, i64 1
  %225 = sitofp <2 x i32> %224 to <2 x float>
  br label %226

226:                                              ; preds = %221, %209
  %227 = phi <2 x float> [ %220, %209 ], [ %225, %221 ]
  %228 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 12
  %229 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 17
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %228, ptr noundef nonnull %229) #20
  %230 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  %231 = extractelement <2 x float> %227, i64 0
  %232 = extractelement <2 x float> %227, i64 1
  call void @ED_clip_point_stable_pos(ptr noundef nonnull %12, ptr noundef %13, float noundef %232, float noundef %231, ptr noundef nonnull %9, ptr noundef nonnull %230) #18
  call fastcc void @sub_v2_v2(ptr noundef nonnull %9, ptr noundef nonnull %229) #20
  %233 = call fastcc float @len_squared_v2(ptr noundef nonnull %8) #20
  %234 = fcmp une float %233, 0.000000e+00
  br i1 %234, label %235, label %241

235:                                              ; preds = %226
  %236 = call fastcc float @len_v2(ptr noundef nonnull %9) #20
  %237 = call fastcc float @len_v2(ptr noundef nonnull %8) #20
  %238 = fdiv float %236, %237
  %239 = fcmp olt float %238, 0.000000e+00
  br i1 %239, label %240, label %241

240:                                              ; preds = %235
  br label %241

241:                                              ; preds = %235, %240, %226
  %242 = phi float [ 0.000000e+00, %240 ], [ %238, %235 ], [ 1.000000e+00, %226 ]
  %243 = call float @angle_signed_v2v2(ptr noundef nonnull %8, ptr noundef nonnull %9) #18
  %244 = fneg float %243
  %245 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 11
  %246 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 6
  %247 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  %248 = load ptr, ptr %245, align 8, !tbaa !131
  br label %249

249:                                              ; preds = %241, %249
  %250 = phi ptr [ %248, %241 ], [ %281, %249 ]
  %251 = phi i64 [ 0, %241 ], [ %283, %249 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  %252 = getelementptr inbounds [2 x float], ptr %250, i64 %251
  %253 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 19, i64 %251
  call fastcc void @mul_v2_v2fl(ptr noundef %252, ptr noundef nonnull %253, float noundef %242) #20
  %254 = load ptr, ptr %245, align 8, !tbaa !131
  %255 = getelementptr inbounds [2 x float], ptr %254, i64 %251
  call fastcc void @copy_v2_v2(ptr noundef nonnull %10, ptr noundef %255) #20
  %256 = load i32, ptr %47, align 8, !tbaa !125
  %257 = sitofp i32 %256 to float
  %258 = load float, ptr %10, align 4, !tbaa !54
  %259 = fmul float %258, %257
  %260 = load i32, ptr %246, align 4, !tbaa !126
  %261 = sitofp i32 %260 to float
  %262 = load float, ptr %247, align 4, !tbaa !54
  %263 = fmul float %262, %261
  %264 = call float @cosf(float %243)
  %265 = call float @sinf(float noundef %244) #18
  %266 = fneg float %263
  %267 = fmul float %265, %266
  %268 = call float @llvm.fmuladd.f32(float %259, float %264, float %267)
  %269 = load i32, ptr %47, align 8, !tbaa !125
  %270 = sitofp i32 %269 to float
  %271 = fdiv float %268, %270
  %272 = load ptr, ptr %245, align 8, !tbaa !131
  %273 = getelementptr inbounds [2 x float], ptr %272, i64 %251
  store float %271, ptr %273, align 4, !tbaa !54
  %274 = call float @cosf(float %243)
  %275 = call float @sinf(float noundef %244) #18
  %276 = fmul float %259, %275
  %277 = call float @llvm.fmuladd.f32(float %263, float %274, float %276)
  %278 = load i32, ptr %246, align 4, !tbaa !126
  %279 = sitofp i32 %278 to float
  %280 = fdiv float %277, %279
  %281 = load ptr, ptr %245, align 8, !tbaa !131
  %282 = getelementptr inbounds [2 x float], ptr %281, i64 %251, i64 1
  store float %280, ptr %282, align 4, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  %283 = add nuw nsw i64 %251, 1
  %284 = icmp eq i64 %283, 4
  br i1 %284, label %285, label %249, !llvm.loop !137

285:                                              ; preds = %249
  %286 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 3
  %287 = load ptr, ptr %286, align 8, !tbaa !133
  call void @BKE_tracking_marker_clamp(ptr noundef %287, i32 noundef 1) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  br label %325

288:                                              ; preds = %74
  %289 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 1
  %290 = load i16, ptr %289, align 2, !tbaa !121
  %291 = icmp eq i16 %290, 1
  br i1 %291, label %292, label %315

292:                                              ; preds = %288
  %293 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 15
  %294 = load float, ptr %293, align 4, !tbaa !54
  %295 = extractelement <2 x float> %84, i64 0
  %296 = fsub float %294, %295
  %297 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 7
  %298 = load ptr, ptr %297, align 8, !tbaa !138
  store float %296, ptr %298, align 4, !tbaa !54
  %299 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 16
  %300 = load float, ptr %299, align 4, !tbaa !54
  %301 = fadd float %295, %300
  %302 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 8
  %303 = load ptr, ptr %302, align 8, !tbaa !139
  store float %301, ptr %303, align 4, !tbaa !54
  %304 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 15, i64 1
  %305 = load float, ptr %304, align 4, !tbaa !54
  %306 = extractelement <2 x float> %84, i64 1
  %307 = fadd float %306, %305
  %308 = getelementptr inbounds float, ptr %298, i64 1
  store float %307, ptr %308, align 4, !tbaa !54
  %309 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 16, i64 1
  %310 = load float, ptr %309, align 4, !tbaa !54
  %311 = fsub float %310, %306
  %312 = getelementptr inbounds float, ptr %303, i64 1
  store float %311, ptr %312, align 4, !tbaa !54
  %313 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 3
  %314 = load ptr, ptr %313, align 8, !tbaa !133
  tail call void @BKE_tracking_marker_clamp(ptr noundef %314, i32 noundef 3) #18
  br label %322

315:                                              ; preds = %288
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  store <2 x float> %84, ptr %11, align 8, !tbaa !54
  %316 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 7
  %317 = load ptr, ptr %316, align 8, !tbaa !138
  %318 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 15
  call fastcc void @add_v2_v2v2(ptr noundef %317, ptr noundef nonnull %318, ptr noundef nonnull %11) #20
  %319 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 8
  %320 = load ptr, ptr %319, align 8, !tbaa !139
  %321 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 16
  call fastcc void @add_v2_v2v2(ptr noundef %320, ptr noundef nonnull %321, ptr noundef nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  br label %322

322:                                              ; preds = %315, %292
  %323 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 3
  %324 = load ptr, ptr %323, align 8, !tbaa !133
  tail call void @BKE_tracking_marker_clamp(ptr noundef %324, i32 noundef 4) #18
  br label %325

325:                                              ; preds = %74, %115, %183, %285, %205, %158, %322, %106
  %326 = getelementptr inbounds %struct.SlideMarkerData, ptr %15, i64 0, i32 3
  %327 = load ptr, ptr %326, align 8, !tbaa !133
  %328 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %327, i64 0, i32 5
  %329 = load i32, ptr %328, align 4, !tbaa !98
  %330 = and i32 %329, -3
  store i32 %330, ptr %328, align 4, !tbaa !98
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef null) #18
  br label %339

331:                                              ; preds = %3
  %332 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %333 = load i16, ptr %332, align 2, !tbaa !122
  %334 = icmp eq i16 %333, 2
  br i1 %334, label %335, label %339

335:                                              ; preds = %331
  tail call fastcc void @apply_mouse_slide(ptr noundef %0, ptr noundef %15) #20
  %336 = load ptr, ptr %14, align 8, !tbaa !119
  tail call fastcc void @free_slide_data(ptr noundef %336) #20
  tail call fastcc void @show_cursor(ptr noundef %0) #20
  br label %339

337:                                              ; preds = %3
  tail call fastcc void @cancel_mouse_slide(ptr noundef %15) #20
  %338 = load ptr, ptr %14, align 8, !tbaa !119
  tail call fastcc void @free_slide_data(ptr noundef %338) #20
  tail call fastcc void @show_cursor(ptr noundef %0) #20
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef null) #18
  br label %339

339:                                              ; preds = %325, %3, %331, %337, %335
  %340 = phi i32 [ 2, %337 ], [ 4, %335 ], [ 1, %331 ], [ 1, %3 ], [ 1, %325 ]
  ret i32 %340
}

; Function Attrs: noinline nounwind optsize uwtable
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
  store ptr @track_markers_modal, ptr %6, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %7, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !48
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #18
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #18
  %13 = load ptr, ptr %8, align 8, !tbaa !48
  %14 = tail call ptr @RNA_def_string(ptr noundef %13, ptr noundef nonnull @.str.30, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #18
  tail call void @RNA_def_property_flag(ptr noundef %14, i32 noundef 268435456) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @track_markers_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !140 {
  %3 = alloca %struct.MovieClipUser, align 8
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store i64 0, ptr %3, align 8
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.24) #18
  %10 = trunc i32 %9 to i8
  %11 = load ptr, ptr %7, align 8, !tbaa !50
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.27) #18
  %13 = trunc i32 %12 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %14 = load ptr, ptr %7, align 8, !tbaa !50
  %15 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %14, ptr noundef nonnull @.str.30) #18
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %2
  %18 = tail call ptr @CTX_data_main(ptr noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #19
  %19 = load ptr, ptr %7, align 8, !tbaa !50
  call void @RNA_string_get(ptr noundef %19, ptr noundef nonnull @.str.30, ptr noundef nonnull %5) #18
  %20 = getelementptr inbounds %struct.Main, ptr %18, i64 0, i32 42
  %21 = call ptr @BLI_findstring(ptr noundef nonnull %20, ptr noundef nonnull %5, i32 noundef 34) #18
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #19
  br label %85

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !141
  %27 = sitofp i32 %26 to float
  %28 = call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef nonnull %21, float noundef %27) #18
  %29 = fptosi float %28 to i32
  store i32 %29, ptr %3, align 8, !tbaa !160
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #19
  br label %37

30:                                               ; preds = %2
  %31 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %32 = icmp eq ptr %31, null
  br i1 %32, label %85, label %33

33:                                               ; preds = %30
  %34 = tail call ptr @ED_space_clip_get_clip(ptr noundef nonnull %31) #18
  %35 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef nonnull %31) #18
  %36 = getelementptr inbounds %struct.SpaceClip, ptr %31, i64 0, i32 9
  br label %37

37:                                               ; preds = %24, %33
  %38 = phi i32 [ %29, %24 ], [ %35, %33 ]
  %39 = phi ptr [ %3, %24 ], [ %36, %33 ]
  %40 = phi ptr [ %21, %24 ], [ %34, %33 ]
  %41 = phi ptr [ null, %24 ], [ %31, %33 ]
  %42 = call fastcc i32 @track_count_markers(ptr noundef %41, ptr noundef %40, i32 noundef %38) #20
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %85, label %44

44:                                               ; preds = %37
  call fastcc void @track_init_markers(ptr noundef %41, ptr noundef %40, i32 noundef %38, ptr noundef nonnull %4) #20
  %45 = icmp eq i8 %10, 0
  %46 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 6
  %47 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 7
  %48 = select i1 %45, ptr %47, ptr %46
  %49 = load i32, ptr %48, align 4, !tbaa !96
  %50 = load i32, ptr %4, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %44
  br i1 %45, label %56, label %53

53:                                               ; preds = %52
  %54 = sub nsw i32 %38, %50
  %55 = call i32 @llvm.smax.i32(i32 %49, i32 %54)
  br label %59

56:                                               ; preds = %52
  %57 = add nsw i32 %50, %38
  %58 = call i32 @llvm.smin.i32(i32 %49, i32 %57)
  br label %59

59:                                               ; preds = %53, %56, %44
  %60 = phi i32 [ %55, %53 ], [ %58, %56 ], [ %49, %44 ]
  %61 = sitofp i32 %60 to float
  %62 = call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef %40, float noundef %61) #18
  %63 = fptosi float %62 to i32
  %64 = and i32 %9, 255
  %65 = call fastcc zeroext i8 @track_markers_check_direction(i32 noundef %64, i32 noundef %38, i32 noundef %63) #20, !range !56
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %85, label %67

67:                                               ; preds = %59
  %68 = call ptr @BKE_tracking_context_new(ptr noundef %40, ptr noundef nonnull %39, i8 noundef zeroext %10, i8 noundef zeroext %13) #18
  %69 = select i1 %45, i32 1, i32 -1
  %70 = icmp eq i8 %13, 0
  br label %71

71:                                               ; preds = %77, %67
  %72 = phi i32 [ %38, %67 ], [ %78, %77 ]
  %73 = icmp eq i32 %72, %63
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = call zeroext i8 @BKE_tracking_context_step(ptr noundef %68) #18
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = add nsw i32 %72, %69
  br i1 %70, label %79, label %71, !llvm.loop !161

79:                                               ; preds = %77, %74, %71
  %80 = phi i32 [ %78, %77 ], [ %72, %74 ], [ %63, %71 ]
  call void @BKE_tracking_context_sync(ptr noundef %68) #18
  call void @BKE_tracking_context_finish(ptr noundef %68) #18
  call void @BKE_tracking_context_free(ptr noundef %68) #18
  %81 = sitofp i32 %80 to float
  %82 = call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef %40, float noundef %81) #18
  %83 = fptosi float %82 to i32
  %84 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 5
  store i32 %83, ptr %84, align 8, !tbaa !141
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544322, ptr noundef %40) #18
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef %6) #18
  br label %85

85:                                               ; preds = %23, %59, %37, %30, %79
  %86 = phi i32 [ 4, %79 ], [ 2, %30 ], [ 2, %37 ], [ 2, %59 ], [ 2, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret i32 %86
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @track_markers_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !162 {
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #18
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.24) #18
  %9 = load ptr, ptr %6, align 8, !tbaa !50
  %10 = tail call i32 @RNA_boolean_get(ptr noundef %9, ptr noundef nonnull @.str.27) #18
  %11 = icmp eq ptr %5, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !163
  tail call void @BKE_report(ptr noundef %14, i32 noundef 32, ptr noundef nonnull @.str.251) #18
  br label %52

15:                                               ; preds = %3
  %16 = tail call ptr @ED_space_clip_get_clip(ptr noundef nonnull %5) #18
  %17 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef nonnull %5) #18
  %18 = tail call ptr @CTX_wm_manager(ptr noundef %0) #18
  %19 = tail call zeroext i8 @WM_jobs_test(ptr noundef %18, ptr noundef %4, i32 noundef 0) #18
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.MovieClip, ptr %16, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !164
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = tail call fastcc i32 @track_count_markers(ptr noundef nonnull %5, ptr noundef nonnull %16, i32 noundef %17) #20
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %52, label %28

28:                                               ; preds = %25
  %29 = and i32 %10, 255
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = tail call i32 @track_markers_exec(ptr noundef %0, ptr noundef nonnull %1) #20, !range !52
  br label %52

33:                                               ; preds = %28
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !97
  %35 = tail call ptr %34(i64 noundef 64, ptr noundef nonnull @.str.252) #18
  %36 = and i32 %8, 255
  %37 = tail call fastcc i32 @track_markers_initjob(ptr noundef %0, ptr noundef %35, i32 noundef %36) #20, !range !99
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  tail call void @track_markers_freejob(ptr noundef %35) #20
  br label %52

40:                                               ; preds = %33
  %41 = tail call ptr @CTX_wm_manager(ptr noundef %0) #18
  %42 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  %43 = tail call ptr @WM_jobs_get(ptr noundef %41, ptr noundef %42, ptr noundef %4, ptr noundef nonnull @.str.21, i32 noundef 4, i32 noundef 11) #18
  tail call void @WM_jobs_customdata_set(ptr noundef %43, ptr noundef %35, ptr noundef nonnull @track_markers_freejob) #18
  %44 = getelementptr inbounds %struct.TrackMarkersJob, ptr %35, i64 0, i32 6
  %45 = load float, ptr %44, align 8, !tbaa !167
  %46 = fcmp ogt float %45, 0.000000e+00
  %47 = fdiv float %45, 1.000000e+03
  %48 = fpext float %47 to double
  %49 = select i1 %46, double %48, double 2.000000e-01
  tail call void @WM_jobs_timer(ptr noundef %43, double noundef %49, i32 noundef 335544322, i32 noundef 0) #18
  tail call void @WM_jobs_callbacks(ptr noundef %43, ptr noundef nonnull @track_markers_startjob, ptr noundef null, ptr noundef nonnull @track_markers_updatejob, ptr noundef nonnull @track_markers_endjob) #18
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !169
  %50 = tail call ptr @CTX_wm_manager(ptr noundef %0) #18
  tail call void @WM_jobs_start(ptr noundef %50, ptr noundef %43) #18
  tail call void @WM_cursor_wait(i8 noundef zeroext 0) #18
  %51 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #18
  br label %52

52:                                               ; preds = %25, %21, %15, %40, %39, %31, %12
  %53 = phi i32 [ 2, %12 ], [ 1, %40 ], [ 2, %39 ], [ %32, %31 ], [ 2, %15 ], [ 2, %21 ], [ 2, %25 ]
  ret i32 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @track_markers_modal(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !171 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #18
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #18
  %6 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef %5, i32 noundef 0) #18
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !60
  %11 = icmp eq i16 %10, 218
  %12 = select i1 %11, i32 1, i32 8
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ 12, %3 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @refine_marker_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !172 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #18
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.24) #18
  %10 = trunc i32 %9 to i8
  %11 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %3) #18
  %12 = load ptr, ptr %6, align 8, !tbaa !97
  %13 = icmp eq ptr %12, null
  br i1 %13, label %47, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  br label %16

16:                                               ; preds = %14, %44
  %17 = phi ptr [ %12, %14 ], [ %45, %44 ]
  %18 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 13
  %19 = load i32, ptr %18, align 8, !tbaa !81
  %20 = and i32 %19, 32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = and i32 %19, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load i32, ptr %15, align 8, !tbaa !82
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 14
  %31 = load i32, ptr %30, align 4, !tbaa !88
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29, %25
  %35 = and i32 %26, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 15
  %39 = load i32, ptr %38, align 8, !tbaa !89
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37, %29, %22
  %43 = tail call ptr @BKE_tracking_marker_get(ptr noundef nonnull %17, i32 noundef %11) #18
  tail call void @BKE_tracking_refine_marker(ptr noundef %4, ptr noundef nonnull %17, ptr noundef %43, i8 noundef zeroext %10) #18
  br label %44

44:                                               ; preds = %16, %34, %37, %42
  %45 = load ptr, ptr %17, align 8, !tbaa !97
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %16, !llvm.loop !173

47:                                               ; preds = %44, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544322, ptr noundef %4) #18
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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
  store ptr @solve_camera_modal, ptr %6, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_space_clip_tracking_poll, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %8, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @solve_camera_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !174 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false)
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !97
  %5 = tail call ptr %4(i64 noundef 296, ptr noundef nonnull @.str.253) #18
  %6 = call fastcc i32 @solve_camera_initjob(ptr noundef %0, ptr noundef %5, ptr noundef %1, ptr noundef nonnull %3) #20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i8, ptr %3, align 16, !tbaa !175
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !163
  call void @BKE_report(ptr noundef %13, i32 noundef 32, ptr noundef nonnull %3) #18
  br label %15

14:                                               ; preds = %2
  call void @solve_camera_startjob(ptr noundef %5, ptr noundef null, ptr noundef null, ptr noundef null) #20
  br label %15

15:                                               ; preds = %8, %11, %14
  %16 = phi i32 [ 4, %14 ], [ 2, %11 ], [ 2, %8 ]
  call void @solve_camera_freejob(ptr noundef %5) #20
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #19
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @solve_camera_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !176 {
  %4 = alloca [256 x i8], align 16
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #18
  %6 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %7 = tail call ptr @ED_space_clip_get_clip(ptr noundef %6) #18
  %8 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11
  %9 = tail call ptr @BKE_tracking_get_active_reconstruction(ptr noundef nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false)
  %10 = tail call ptr @CTX_wm_manager(ptr noundef %0) #18
  %11 = tail call zeroext i8 @WM_jobs_test(ptr noundef %10, ptr noundef %5, i32 noundef 0) #18
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %3
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !97
  %15 = tail call ptr %14(i64 noundef 296, ptr noundef nonnull @.str.253) #18
  %16 = call fastcc i32 @solve_camera_initjob(ptr noundef %0, ptr noundef %15, ptr noundef %1, ptr noundef nonnull %4) #20
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load i8, ptr %4, align 16, !tbaa !175
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !163
  call void @BKE_report(ptr noundef %23, i32 noundef 32, ptr noundef nonnull %4) #18
  br label %24

24:                                               ; preds = %21, %18
  call void @solve_camera_freejob(ptr noundef %15) #20
  br label %36

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11, i32 11
  %27 = load ptr, ptr %26, align 8, !tbaa !177
  %28 = call ptr @BLI_strncpy(ptr noundef %27, ptr noundef nonnull @.str.257, i64 noundef 256) #18
  %29 = load i32, ptr %9, align 8, !tbaa !178
  %30 = and i32 %29, -2
  store i32 %30, ptr %9, align 8, !tbaa !178
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544322, ptr noundef %7) #18
  %31 = call ptr @CTX_wm_manager(ptr noundef %0) #18
  %32 = call ptr @CTX_wm_window(ptr noundef %0) #18
  %33 = call ptr @WM_jobs_get(ptr noundef %31, ptr noundef %32, ptr noundef %5, ptr noundef nonnull @.str.36, i32 noundef 4, i32 noundef 12) #18
  call void @WM_jobs_customdata_set(ptr noundef %33, ptr noundef %15, ptr noundef nonnull @solve_camera_freejob) #18
  call void @WM_jobs_timer(ptr noundef %33, double noundef 1.000000e-01, i32 noundef 335544322, i32 noundef 0) #18
  call void @WM_jobs_callbacks(ptr noundef %33, ptr noundef nonnull @solve_camera_startjob, ptr noundef null, ptr noundef nonnull @solve_camera_updatejob, ptr noundef null) #18
  store i8 0, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !169
  %34 = call ptr @CTX_wm_manager(ptr noundef %0) #18
  call void @WM_jobs_start(ptr noundef %34, ptr noundef %33) #18
  call void @WM_cursor_wait(i8 noundef zeroext 0) #18
  %35 = call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #18
  br label %36

36:                                               ; preds = %3, %25, %24
  %37 = phi i32 [ 1, %25 ], [ 2, %24 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #19
  ret i32 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @solve_camera_modal(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !179 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #18
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #18
  %6 = tail call zeroext i8 @WM_jobs_test(ptr noundef %4, ptr noundef %5, i32 noundef 0) #18
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !60
  %11 = icmp eq i16 %10, 218
  %12 = select i1 %11, i32 1, i32 8
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ 12, %3 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @clear_solution_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !180 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #18
  %7 = tail call ptr @BKE_tracking_get_active_reconstruction(ptr noundef nonnull %5) #18
  %8 = load ptr, ptr %6, align 8, !tbaa !97
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %2, %10
  %11 = phi ptr [ %15, %10 ], [ %8, %2 ]
  %12 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %11, i64 0, i32 13
  %13 = load i32, ptr %12, align 8, !tbaa !81
  %14 = and i32 %13, -3
  store i32 %14, ptr %12, align 8, !tbaa !81
  %15 = load ptr, ptr %11, align 8, !tbaa !97
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %10, !llvm.loop !181

17:                                               ; preds = %10, %2
  %18 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %7, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !182
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !97
  tail call void %22(ptr noundef nonnull %19) #18
  br label %23

23:                                               ; preds = %21, %17
  store ptr null, ptr %18, align 8, !tbaa !182
  %24 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %7, i64 0, i32 3
  store i32 0, ptr %24, align 4, !tbaa !183
  %25 = load i32, ptr %7, align 8, !tbaa !178
  %26 = and i32 %25, -2
  store i32 %26, ptr %7, align 8, !tbaa !178
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #18
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544322, ptr noundef %4) #18
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef null) #18
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.54, ptr noundef nonnull @CLIP_OT_clear_track_path.clear_path_actions, i32 noundef 1, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56) #18
  %10 = load ptr, ptr %7, align 8, !tbaa !48
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.57, i32 noundef 0, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @clear_track_path_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !184 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #18
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.54) #18
  %10 = load ptr, ptr %7, align 8, !tbaa !50
  %11 = tail call i32 @RNA_boolean_get(ptr noundef %10, ptr noundef nonnull @.str.57) #18
  %12 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %3) #18
  %13 = and i32 %11, 255
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load ptr, ptr %6, align 8, !tbaa !97
  %17 = icmp eq ptr %16, null
  br i1 %17, label %54, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  br label %24

20:                                               ; preds = %2
  %21 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %5) #18
  %22 = icmp eq ptr %21, null
  br i1 %22, label %54, label %23

23:                                               ; preds = %20
  tail call void @BKE_tracking_track_path_clear(ptr noundef nonnull %21, i32 noundef %12, i32 noundef %9) #18
  br label %54

24:                                               ; preds = %18, %51
  %25 = phi ptr [ %16, %18 ], [ %52, %51 ]
  %26 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %25, i64 0, i32 13
  %27 = load i32, ptr %26, align 8, !tbaa !81
  %28 = and i32 %27, 32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %24
  %31 = and i32 %27, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = load i32, ptr %19, align 8, !tbaa !82
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %25, i64 0, i32 14
  %39 = load i32, ptr %38, align 4, !tbaa !88
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37, %33
  %43 = and i32 %34, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %25, i64 0, i32 15
  %47 = load i32, ptr %46, align 8, !tbaa !89
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45, %37, %30
  tail call void @BKE_tracking_track_path_clear(ptr noundef nonnull %25, i32 noundef %12, i32 noundef %9) #18
  br label %51

51:                                               ; preds = %50, %45, %42, %24
  %52 = load ptr, ptr %25, align 8, !tbaa !97
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %24, !llvm.loop !185

54:                                               ; preds = %51, %15, %20, %23
  tail call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %5) #18
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544322, ptr noundef %4) #18
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.54, ptr noundef nonnull @CLIP_OT_disable_markers.actions_items, i32 noundef 0, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.72) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @disable_markers_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !186 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #18
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.54) #18
  %11 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %3) #18
  %12 = icmp eq ptr %7, null
  br i1 %12, label %62, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  br label %15

15:                                               ; preds = %13, %59
  %16 = phi ptr [ %7, %13 ], [ %60, %59 ]
  %17 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 13
  %18 = load i32, ptr %17, align 8, !tbaa !81
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %59

21:                                               ; preds = %15
  %22 = and i32 %18, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = load i32, ptr %14, align 8, !tbaa !82
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 14
  %30 = load i32, ptr %29, align 4, !tbaa !88
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28, %24
  %34 = and i32 %25, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %59, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 15
  %38 = load i32, ptr %37, align 8, !tbaa !89
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
  %48 = tail call ptr @BKE_tracking_marker_ensure(ptr noundef nonnull %16, i32 noundef %11) #18
  %49 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %48, i64 0, i32 5
  %50 = load i32, ptr %49, align 4, !tbaa !98
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
  store i32 %58, ptr %49, align 4, !tbaa !98
  br label %59

59:                                               ; preds = %57, %44, %36, %33, %15
  %60 = load ptr, ptr %16, align 8, !tbaa !79
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %15, !llvm.loop !187

62:                                               ; preds = %59, %2
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #18
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544322, ptr noundef %4) #18
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.76, i32 noundef 0, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_origin_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !188 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %7 = tail call ptr @ED_space_clip_get_clip(ptr noundef %6) #18
  %8 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #18
  %10 = tail call fastcc ptr @get_camera_with_movieclip(ptr noundef %9, ptr noundef %7) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  %11 = tail call fastcc i32 @count_selected_bundles(ptr noundef %0) #20
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !163
  tail call void @BKE_report(ptr noundef %15, i32 noundef 32, ptr noundef nonnull @.str.258) #18
  br label %78

16:                                               ; preds = %2
  %17 = tail call fastcc ptr @get_orientation_object(ptr noundef %0) #20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !163
  tail call void @BKE_report(ptr noundef %21, i32 noundef 32, ptr noundef nonnull @.str.259) #18
  br label %78

22:                                               ; preds = %16
  %23 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %8) #18
  %24 = tail call ptr @BKE_tracking_object_get_tracks(ptr noundef nonnull %8, ptr noundef %23) #18
  %25 = load ptr, ptr %24, align 8, !tbaa !73
  call fastcc void @zero_v3(ptr noundef nonnull %5) #20
  %26 = icmp eq ptr %25, null
  br i1 %26, label %66, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.SpaceClip, ptr %6, i64 0, i32 12
  br label %29

29:                                               ; preds = %27, %63
  %30 = phi ptr [ %25, %27 ], [ %64, %63 ]
  %31 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %30, i64 0, i32 13
  %32 = load i32, ptr %31, align 8, !tbaa !81
  %33 = and i32 %32, 32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %29
  %36 = and i32 %32, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %35
  %39 = load i32, ptr %28, align 8, !tbaa !82
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %30, i64 0, i32 14
  %44 = load i32, ptr %43, align 4, !tbaa !88
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %42, %38
  %48 = and i32 %39, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %30, i64 0, i32 15
  %52 = load i32, ptr %51, align 8, !tbaa !89
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  %55 = and i32 %32, 2
  %56 = icmp eq i32 %55, 0
  %57 = or i1 %56, %54
  br i1 %57, label %63, label %61

58:                                               ; preds = %42, %35
  %59 = and i32 %32, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %50, %58
  %62 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %30, i64 0, i32 11
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %62) #20
  br label %63

63:                                               ; preds = %61, %58, %50, %47, %29
  %64 = load ptr, ptr %30, align 8, !tbaa !79
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %29, !llvm.loop !189

66:                                               ; preds = %63, %22
  %67 = sitofp i32 %11 to float
  %68 = fdiv float 1.000000e+00, %67
  call fastcc void @mul_v3_fl(ptr noundef nonnull %5, float noundef %68) #20
  call void @BKE_tracking_get_camera_object_matrix(ptr noundef %9, ptr noundef %10, ptr noundef nonnull %3) #18
  call void @mul_v3_m4v3(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5) #18
  %69 = getelementptr inbounds %struct.MovieTrackingObject, ptr %23, i64 0, i32 3
  %70 = load i32, ptr %69, align 8, !tbaa !190
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 33
  call fastcc void @sub_v3_v3(ptr noundef nonnull %74, ptr noundef nonnull %4) #20
  br label %77

75:                                               ; preds = %66
  call fastcc void @object_solver_inverted_matrix(ptr noundef %9, ptr noundef nonnull %17, ptr noundef nonnull %3) #20
  call void @mul_v3_m4v3(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %76 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 33
  call fastcc void @copy_v3_v3(ptr noundef nonnull %76, ptr noundef nonnull %4) #20
  br label %77

77:                                               ; preds = %75, %73
  call void @DAG_id_tag_update(ptr noundef %7, i16 noundef signext 0) #18
  call void @DAG_id_tag_update(ptr noundef nonnull %17, i16 noundef signext 1) #18
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544322, ptr noundef %7) #18
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #18
  br label %78

78:                                               ; preds = %77, %19, %13
  %79 = phi i32 [ 2, %13 ], [ 4, %77 ], [ 2, %19 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  ret i32 %79
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @set_orientation_poll(ptr noundef %0) #0 !PGOFuncName !192 {
  %2 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #18
  %6 = tail call ptr @ED_space_clip_get_clip(ptr noundef nonnull %2) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.MovieClip, ptr %6, i64 0, i32 11
  %10 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %9) #18
  %11 = getelementptr inbounds %struct.MovieTrackingObject, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !190
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !193
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Base, ptr %17, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !194
  %22 = icmp ne ptr %21, null
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %19, %15, %8, %1, %4
  %25 = phi i32 [ 0, %4 ], [ 0, %1 ], [ 0, %15 ], [ %23, %19 ], [ 1, %8 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.88, ptr noundef nonnull @CLIP_OT_set_plane.plane_items, i32 noundef 0, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_plane_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !196 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [3 x float], align 8
  %8 = alloca [4 x [4 x float]], align 16
  %9 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %10 = tail call ptr @ED_space_clip_get_clip(ptr noundef %9) #18
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #18
  %12 = tail call fastcc ptr @get_camera_with_movieclip(ptr noundef %11, ptr noundef %10) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = tail call i32 @RNA_enum_get(ptr noundef %14, ptr noundef nonnull @.str.88) #18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %8, i8 0, i64 64, i1 false)
  %16 = getelementptr inbounds [4 x float], ptr %8, i64 0, i64 2
  store float -1.000000e+00, ptr %16, align 8
  %17 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 1, i64 1
  store float 1.000000e+00, ptr %17, align 4
  %18 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 2
  store float 1.000000e+00, ptr %18, align 16
  %19 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 3, i64 3
  store float 1.000000e+00, ptr %19, align 4
  %20 = tail call fastcc i32 @count_selected_bundles(ptr noundef %0) #20
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !163
  tail call void @BKE_report(ptr noundef %24, i32 noundef 32, ptr noundef nonnull @.str.260) #18
  br label %118

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.MovieClip, ptr %10, i64 0, i32 11
  %27 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %26) #18
  %28 = tail call ptr @BKE_tracking_object_get_tracks(ptr noundef nonnull %26, ptr noundef %27) #18
  %29 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %26) #18
  %30 = tail call fastcc ptr @get_orientation_object(ptr noundef %0) #20
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !163
  tail call void @BKE_report(ptr noundef %34, i32 noundef 32, ptr noundef nonnull @.str.259) #18
  br label %118

35:                                               ; preds = %25
  call void @BKE_tracking_get_camera_object_matrix(ptr noundef %11, ptr noundef %12, ptr noundef nonnull %4) #18
  %36 = load ptr, ptr %28, align 8, !tbaa !97
  %37 = icmp eq ptr %36, null
  br i1 %37, label %86, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.SpaceClip, ptr %9, i64 0, i32 12
  br label %40

40:                                               ; preds = %38, %79
  %41 = phi ptr [ %36, %38 ], [ %82, %79 ]
  %42 = phi i32 [ 0, %38 ], [ %81, %79 ]
  %43 = phi ptr [ null, %38 ], [ %80, %79 ]
  %44 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %41, i64 0, i32 13
  %45 = load i32, ptr %44, align 8, !tbaa !81
  %46 = and i32 %45, 34
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %79

48:                                               ; preds = %40
  %49 = and i32 %45, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = load i32, ptr %39, align 8, !tbaa !82
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %41, i64 0, i32 14
  %57 = load i32, ptr %56, align 4, !tbaa !88
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55, %51
  %61 = and i32 %52, 2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %41, i64 0, i32 15
  %65 = load i32, ptr %64, align 8, !tbaa !89
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %63, %55, %48
  %69 = sext i32 %42 to i64
  %70 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 %69
  %71 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %41, i64 0, i32 11
  call void @mul_v3_m4v3(ptr noundef nonnull %70, ptr noundef nonnull %4, ptr noundef nonnull %71) #18
  %72 = icmp eq i32 %42, 0
  %73 = icmp eq ptr %41, %29
  %74 = select i1 %72, i1 true, i1 %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %70) #20
  br label %76

76:                                               ; preds = %68, %75
  %77 = phi ptr [ %43, %75 ], [ %41, %68 ]
  %78 = add nsw i32 %42, 1
  br label %79

79:                                               ; preds = %76, %63, %60, %40
  %80 = phi ptr [ %77, %76 ], [ %43, %63 ], [ %43, %60 ], [ %43, %40 ]
  %81 = phi i32 [ %78, %76 ], [ %42, %63 ], [ %42, %60 ], [ %42, %40 ]
  %82 = load ptr, ptr %41, align 8, !tbaa !97
  %83 = icmp ne ptr %82, null
  %84 = icmp slt i32 %81, 3
  %85 = select i1 %83, i1 %84, i1 false
  br i1 %85, label %40, label %86, !llvm.loop !197

86:                                               ; preds = %79, %35
  %87 = phi ptr [ null, %35 ], [ %80, %79 ]
  %88 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 1
  call fastcc void @sub_v3_v3(ptr noundef nonnull %88, ptr noundef nonnull %3) #20
  %89 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2
  call fastcc void @sub_v3_v3(ptr noundef nonnull %89, ptr noundef nonnull %3) #20
  call void @unit_m4(ptr noundef nonnull %4) #18
  switch i32 %15, label %96 [
    i32 0, label %90
    i32 1, label %93
  ]

90:                                               ; preds = %86
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %88, ptr noundef nonnull %89) #20
  %91 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %91, ptr noundef nonnull %88) #20
  %92 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 2
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %92, ptr noundef nonnull %4, ptr noundef nonnull %91) #20
  br label %96

93:                                               ; preds = %86
  %94 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 2
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %94, ptr noundef nonnull %88, ptr noundef nonnull %89) #20
  %95 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %95, ptr noundef nonnull %88) #20
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %95, ptr noundef nonnull %94) #20
  br label %96

96:                                               ; preds = %86, %93, %90
  call fastcc void @normalize_v3(ptr noundef nonnull %4) #20
  %97 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 1
  call fastcc void @normalize_v3(ptr noundef nonnull %97) #20
  %98 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 2
  call fastcc void @normalize_v3(ptr noundef nonnull %98) #20
  %99 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3
  %100 = load <2 x float>, ptr %7, align 8, !tbaa !54
  store <2 x float> %100, ptr %99, align 16, !tbaa !54
  %101 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %102 = load float, ptr %101, align 8, !tbaa !54
  %103 = getelementptr inbounds [4 x [4 x float]], ptr %4, i64 0, i64 3, i64 2
  store float %102, ptr %103, align 8, !tbaa !54
  %104 = getelementptr inbounds %struct.MovieTrackingObject, ptr %27, i64 0, i32 3
  %105 = load i32, ptr %104, align 8, !tbaa !190
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %96
  %109 = call zeroext i8 @invert_m4(ptr noundef nonnull %4) #18
  call void @BKE_object_to_mat4(ptr noundef nonnull %30, ptr noundef nonnull %5) #18
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %4) #18
  call void @BKE_object_apply_mat4(ptr noundef nonnull %30, ptr noundef nonnull %6, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %110 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 33, i64 2
  %111 = load float, ptr %110, align 8, !tbaa !54
  %112 = fcmp olt float %111, 0.000000e+00
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = call zeroext i8 @invert_m4(ptr noundef nonnull %8) #18
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %4) #18
  br label %115

115:                                              ; preds = %96, %113
  %116 = phi ptr [ %6, %113 ], [ %4, %96 ]
  call void @BKE_object_apply_mat4(ptr noundef nonnull %30, ptr noundef nonnull %116, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  br label %117

117:                                              ; preds = %115, %108
  call void @BKE_object_where_is_calc(ptr noundef %11, ptr noundef nonnull %30) #18
  call fastcc void @set_axis(ptr noundef %11, ptr noundef nonnull %30, ptr noundef %10, ptr noundef nonnull %27, ptr noundef %87, i8 noundef zeroext 88) #20
  call void @DAG_id_tag_update(ptr noundef %10, i16 noundef signext 0) #18
  call void @DAG_id_tag_update(ptr noundef nonnull %30, i16 noundef signext 1) #18
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544322, ptr noundef %10) #18
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #18
  br label %118

118:                                              ; preds = %117, %32, %22
  %119 = phi i32 [ 2, %22 ], [ 4, %117 ], [ 2, %32 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #19
  ret i32 %119
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.98, ptr noundef nonnull @CLIP_OT_set_axis.axis_actions, i32 noundef 0, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_axis_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !198 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %5) #18
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #18
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.98) #18
  %11 = tail call fastcc i32 @count_selected_bundles(ptr noundef %0) #20
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !163
  tail call void @BKE_report(ptr noundef %15, i32 noundef 32, ptr noundef nonnull @.str.261) #18
  br label %67

16:                                               ; preds = %2
  %17 = tail call fastcc ptr @get_orientation_object(ptr noundef %0) #20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !163
  tail call void @BKE_report(ptr noundef %21, i32 noundef 32, ptr noundef nonnull @.str.259) #18
  br label %67

22:                                               ; preds = %16
  %23 = tail call ptr @BKE_tracking_object_get_tracks(ptr noundef nonnull %5, ptr noundef %6) #18
  %24 = load ptr, ptr %23, align 8, !tbaa !97
  %25 = icmp eq ptr %24, null
  br i1 %25, label %63, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  br label %28

28:                                               ; preds = %26, %60
  %29 = phi ptr [ %24, %26 ], [ %61, %60 ]
  %30 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %29, i64 0, i32 13
  %31 = load i32, ptr %30, align 8, !tbaa !81
  %32 = and i32 %31, 32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %28
  %35 = and i32 %31, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %34
  %38 = load i32, ptr %27, align 8, !tbaa !82
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %29, i64 0, i32 14
  %43 = load i32, ptr %42, align 4, !tbaa !88
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41, %37
  %47 = and i32 %38, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %29, i64 0, i32 15
  %51 = load i32, ptr %50, align 8, !tbaa !89
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  %54 = and i32 %31, 2
  %55 = icmp eq i32 %54, 0
  %56 = or i1 %55, %53
  br i1 %56, label %60, label %63

57:                                               ; preds = %41, %34
  %58 = and i32 %31, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57, %49, %46, %28
  %61 = load ptr, ptr %29, align 8, !tbaa !97
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %28, !llvm.loop !199

63:                                               ; preds = %60, %57, %49, %22
  %64 = phi ptr [ null, %22 ], [ %29, %49 ], [ %29, %57 ], [ null, %60 ]
  %65 = icmp eq i32 %10, 0
  %66 = select i1 %65, i8 88, i8 89
  tail call fastcc void @set_axis(ptr noundef %7, ptr noundef nonnull %17, ptr noundef %4, ptr noundef %6, ptr noundef %64, i8 noundef zeroext %66) #20
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #18
  tail call void @DAG_id_tag_update(ptr noundef nonnull %17, i16 noundef signext 1) #18
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544322, ptr noundef %4) #18
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #18
  br label %67

67:                                               ; preds = %63, %19, %13
  %68 = phi i32 [ 2, %13 ], [ 4, %63 ], [ 2, %19 ]
  ret i32 %68
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %10 = tail call ptr @RNA_def_float(ptr noundef %9, ptr noundef nonnull @.str.104, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, float noundef -1.000000e+02, float noundef 1.000000e+02) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_scale_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !200 {
  %3 = tail call fastcc i32 @do_set_scale(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #20, !range !52
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_scale_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !201 {
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %5 = tail call ptr @ED_space_clip_get_clip(ptr noundef %4) #18
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %7, ptr noundef nonnull @.str.104) #18
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load ptr, ptr %6, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11, i32 0, i32 18
  %13 = load float, ptr %12, align 8, !tbaa !202
  tail call void @RNA_float_set(ptr noundef %11, ptr noundef nonnull @.str.104, float noundef %13) #18
  br label %14

14:                                               ; preds = %10, %3
  %15 = tail call i32 @set_scale_exec(ptr noundef %0, ptr noundef nonnull %1) #20, !range !52
  ret i32 %15
}

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
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
  %10 = tail call ptr @RNA_def_float(ptr noundef %9, ptr noundef nonnull @.str.104, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, float noundef -1.000000e+02, float noundef 1.000000e+02) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_solution_scale_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !203 {
  %3 = tail call fastcc i32 @do_set_scale(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 0) #20, !range !52
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_solution_scale_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !204 {
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %5 = tail call ptr @ED_space_clip_get_clip(ptr noundef %4) #18
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %7, ptr noundef nonnull @.str.104) #18
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load ptr, ptr %6, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11, i32 0, i32 22
  %13 = load float, ptr %12, align 8, !tbaa !205
  tail call void @RNA_float_set(ptr noundef %11, ptr noundef nonnull @.str.104, float noundef %13) #18
  br label %14

14:                                               ; preds = %10, %3
  %15 = tail call i32 @set_solution_scale_exec(ptr noundef %0, ptr noundef nonnull %1) #20, !range !52
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @set_solution_scale_poll(ptr noundef %0) #0 !PGOFuncName !206 {
  %2 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @ED_space_clip_get_clip(ptr noundef nonnull %2) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11
  %9 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %8) #18
  %10 = getelementptr inbounds %struct.MovieTrackingObject, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !190
  %12 = and i32 %11, 1
  %13 = xor i32 %12, 1
  br label %14

14:                                               ; preds = %4, %1, %7
  %15 = phi i32 [ %13, %7 ], [ 0, %1 ], [ 0, %4 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %10 = tail call ptr @RNA_def_float(ptr noundef %9, ptr noundef nonnull @.str.104, float noundef 0.000000e+00, float noundef 0xC7EFFFFFE0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, float noundef -1.000000e+02, float noundef 1.000000e+02) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @apply_solution_scale_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !207 {
  %3 = tail call fastcc i32 @do_set_scale(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1) #20, !range !52
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @apply_solution_scale_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !208 {
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %5 = tail call ptr @ED_space_clip_get_clip(ptr noundef %4) #18
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %7, ptr noundef nonnull @.str.104) #18
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load ptr, ptr %6, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11, i32 0, i32 18
  %13 = load float, ptr %12, align 8, !tbaa !202
  tail call void @RNA_float_set(ptr noundef %11, ptr noundef nonnull @.str.104, float noundef %13) #18
  br label %14

14:                                               ; preds = %10, %3
  %15 = tail call i32 @apply_solution_scale_exec(ptr noundef %0, ptr noundef nonnull %1) #20, !range !52
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @apply_solution_scale_poll(ptr noundef %0) #0 !PGOFuncName !209 {
  %2 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @ED_space_clip_get_clip(ptr noundef nonnull %2) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11
  %9 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %8) #18
  %10 = getelementptr inbounds %struct.MovieTrackingObject, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !190
  %12 = and i32 %11, 1
  br label %13

13:                                               ; preds = %4, %1, %7
  %14 = phi i32 [ %12, %7 ], [ 0, %1 ], [ 0, %4 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_center_principal_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !210 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %6 = tail call ptr @ED_space_clip_get_clip(ptr noundef %5) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %7 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 9
  call void @BKE_movieclip_get_size(ptr noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %8 = load i32, ptr %3, align 4, !tbaa !96
  %9 = icmp eq i32 %8, 0
  %10 = load i32, ptr %4, align 4
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = insertelement <2 x i32> poison, i32 %8, i64 0
  %15 = insertelement <2 x i32> %14, i32 %10, i64 1
  %16 = sitofp <2 x i32> %15 to <2 x float>
  %17 = getelementptr inbounds %struct.MovieClip, ptr %6, i64 0, i32 11, i32 1, i32 8
  %18 = fmul <2 x float> %16, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %18, ptr %17, align 4, !tbaa !54
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %6) #18
  br label %19

19:                                               ; preds = %2, %13
  %20 = phi i32 [ 4, %13 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.119, i32 noundef 0, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @hide_tracks_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !211 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #18
  %7 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %5) #18
  %8 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %5) #18
  %9 = tail call ptr @BKE_tracking_plane_track_get_active(ptr noundef nonnull %5) #18
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = tail call i32 @RNA_boolean_get(ptr noundef %11, ptr noundef nonnull @.str.119) #18
  %13 = load ptr, ptr %6, align 8, !tbaa !97
  %14 = icmp eq ptr %13, null
  br i1 %14, label %76, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  br label %17

17:                                               ; preds = %15, %73
  %18 = phi ptr [ %13, %15 ], [ %74, %73 ]
  switch i32 %12, label %73 [
    i32 0, label %19
    i32 1, label %44
  ]

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 13
  %21 = load i32, ptr %20, align 8, !tbaa !81
  %22 = and i32 %21, 32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %73

24:                                               ; preds = %19
  %25 = and i32 %21, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %69

27:                                               ; preds = %24
  %28 = load i32, ptr %16, align 8, !tbaa !82
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 14
  %33 = load i32, ptr %32, align 4, !tbaa !88
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %69

36:                                               ; preds = %31, %27
  %37 = and i32 %28, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %73, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 15
  %41 = load i32, ptr %40, align 8, !tbaa !89
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %73, label %69

44:                                               ; preds = %17
  %45 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 13
  %46 = load i32, ptr %45, align 8, !tbaa !81
  %47 = and i32 %46, 32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %44
  %50 = and i32 %46, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %49
  %53 = load i32, ptr %16, align 8, !tbaa !82
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 14
  %58 = load i32, ptr %57, align 4, !tbaa !88
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %56, %52
  %62 = and i32 %53, 2
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %18, i64 0, i32 15
  %66 = load i32, ptr %65, align 8, !tbaa !89
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %44, %61, %64, %24, %31, %39
  %70 = phi i32 [ %21, %39 ], [ %21, %31 ], [ %21, %24 ], [ %46, %64 ], [ %46, %61 ], [ %46, %44 ]
  %71 = phi ptr [ %20, %39 ], [ %20, %31 ], [ %20, %24 ], [ %45, %64 ], [ %45, %61 ], [ %45, %44 ]
  %72 = or i32 %70, 32
  store i32 %72, ptr %71, align 8, !tbaa !81
  br label %73

73:                                               ; preds = %69, %19, %36, %39, %17, %49, %56, %64
  %74 = load ptr, ptr %18, align 8, !tbaa !97
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %17, !llvm.loop !212

76:                                               ; preds = %73, %2
  %77 = icmp eq ptr %8, null
  br i1 %77, label %85, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %8, i64 0, i32 13
  %80 = load i32, ptr %79, align 8, !tbaa !81
  %81 = and i32 %80, 32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 6
  store ptr null, ptr %84, align 8, !tbaa !213
  br label %85

85:                                               ; preds = %83, %78, %76
  %86 = icmp eq i32 %12, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %89 = load i32, ptr %88, align 8, !tbaa !82
  %90 = and i32 %89, -5
  store i32 %90, ptr %88, align 8, !tbaa !82
  br label %91

91:                                               ; preds = %87, %85
  %92 = load ptr, ptr %7, align 8, !tbaa !97
  %93 = icmp eq ptr %92, null
  br i1 %93, label %116, label %94

94:                                               ; preds = %91
  %95 = icmp eq i32 %12, 1
  br label %96

96:                                               ; preds = %94, %113
  %97 = phi ptr [ %92, %94 ], [ %114, %113 ]
  br i1 %86, label %98, label %103

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %97, i64 0, i32 8
  %100 = load i32, ptr %99, align 4, !tbaa !76
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %113, label %109

103:                                              ; preds = %96
  br i1 %95, label %104, label %113

104:                                              ; preds = %103
  %105 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %97, i64 0, i32 8
  %106 = load i32, ptr %105, align 4, !tbaa !76
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104, %98
  %110 = phi i32 [ %100, %98 ], [ %106, %104 ]
  %111 = phi ptr [ %99, %98 ], [ %105, %104 ]
  %112 = or i32 %110, 2
  store i32 %112, ptr %111, align 4, !tbaa !76
  br label %113

113:                                              ; preds = %109, %98, %104, %103
  %114 = load ptr, ptr %97, align 8, !tbaa !97
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %96, !llvm.loop !214

116:                                              ; preds = %113, %91
  %117 = icmp eq ptr %9, null
  br i1 %117, label %125, label %118

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %9, i64 0, i32 8
  %120 = load i32, ptr %119, align 4, !tbaa !76
  %121 = and i32 %120, 32
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 7
  store ptr null, ptr %124, align 8, !tbaa !215
  br label %125

125:                                              ; preds = %123, %118, %116
  tail call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %5) #18
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 338886656, ptr noundef null) #18
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @hide_tracks_clear_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !216 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #18
  %7 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %5) #18
  %8 = load ptr, ptr %6, align 8, !tbaa !97
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %13, %2
  %11 = load ptr, ptr %7, align 8, !tbaa !97
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %20

13:                                               ; preds = %2, %13
  %14 = phi ptr [ %18, %13 ], [ %8, %2 ]
  %15 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %14, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !81
  %17 = and i32 %16, -33
  store i32 %17, ptr %15, align 8, !tbaa !81
  %18 = load ptr, ptr %14, align 8, !tbaa !97
  %19 = icmp eq ptr %18, null
  br i1 %19, label %10, label %13, !llvm.loop !217

20:                                               ; preds = %10, %20
  %21 = phi ptr [ %25, %20 ], [ %11, %10 ]
  %22 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %21, i64 0, i32 8
  %23 = load i32, ptr %22, align 4, !tbaa !76
  %24 = and i32 %23, -3
  store i32 %24, ptr %22, align 4, !tbaa !76
  %25 = load ptr, ptr %21, align 8, !tbaa !97
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %20, !llvm.loop !218

27:                                               ; preds = %20, %10
  tail call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %5) #18
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 338886656, ptr noundef null) #18
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.137, ptr noundef nonnull @CLIP_OT_detect_features.placement_items, i32 noundef 0, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.139) #18
  %10 = load ptr, ptr %7, align 8, !tbaa !48
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.140, i32 noundef 16, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.142, i32 noundef 0, i32 noundef 300) #18
  %12 = load ptr, ptr %7, align 8, !tbaa !48
  %13 = tail call ptr @RNA_def_float(ptr noundef %12, ptr noundef nonnull @.str.143, float noundef 5.000000e-01, float noundef 0x3F1A36E2E0000000, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, float noundef 0x3F1A36E2E0000000, float noundef 0x47EFFFFFE0000000) #18
  %14 = load ptr, ptr %7, align 8, !tbaa !48
  %15 = tail call ptr @RNA_def_int(ptr noundef %14, ptr noundef nonnull @.str.146, i32 noundef 120, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.147, i32 noundef 0, i32 noundef 300) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @detect_features_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !219 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 14
  %6 = load i32, ptr %5, align 8, !tbaa !220
  %7 = and i32 %6, 3
  %8 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 9
  %9 = tail call ptr @BKE_movieclip_get_ibuf_flag(ptr noundef %4, ptr noundef nonnull %8, i32 noundef %7, i32 noundef 1) #18
  %10 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %11 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %10) #18
  %12 = load ptr, ptr %11, align 8, !tbaa !73
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = tail call i32 @RNA_enum_get(ptr noundef %14, ptr noundef nonnull @.str.137) #18
  %16 = load ptr, ptr %13, align 8, !tbaa !50
  %17 = tail call i32 @RNA_int_get(ptr noundef %16, ptr noundef nonnull @.str.140) #18
  %18 = load ptr, ptr %13, align 8, !tbaa !50
  %19 = tail call i32 @RNA_int_get(ptr noundef %18, ptr noundef nonnull @.str.146) #18
  %20 = load ptr, ptr %13, align 8, !tbaa !50
  %21 = tail call float @RNA_float_get(ptr noundef %20, ptr noundef nonnull @.str.143) #18
  %22 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %3) #18
  %23 = icmp eq ptr %9, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !163
  tail call void @BKE_report(ptr noundef %26, i32 noundef 32, ptr noundef nonnull @.str.263) #18
  br label %49

27:                                               ; preds = %2
  %28 = icmp eq i32 %15, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %27
  %30 = tail call fastcc ptr @detect_get_layer(ptr noundef nonnull %4) #20
  %31 = icmp eq i32 %15, 2
  %32 = zext i1 %31 to i8
  br label %33

33:                                               ; preds = %29, %27
  %34 = phi i8 [ %32, %29 ], [ 0, %27 ]
  %35 = phi ptr [ %30, %29 ], [ null, %27 ]
  %36 = icmp eq ptr %12, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %33, %37
  %38 = phi ptr [ %45, %37 ], [ %12, %33 ]
  %39 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %38, i64 0, i32 13
  %40 = load <2 x i32>, ptr %39, align 8, !tbaa !96
  %41 = and <2 x i32> %40, <i32 -2, i32 -2>
  store <2 x i32> %41, ptr %39, align 8, !tbaa !96
  %42 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %38, i64 0, i32 15
  %43 = load i32, ptr %42, align 8, !tbaa !89
  %44 = and i32 %43, -2
  store i32 %44, ptr %42, align 8, !tbaa !89
  %45 = load ptr, ptr %38, align 8, !tbaa !79
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %37, !llvm.loop !221

47:                                               ; preds = %37, %33
  %48 = fdiv float %21, 1.000000e+05
  tail call void @BKE_tracking_detect_harris(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %9, i32 noundef %22, i32 noundef %17, float noundef %48, i32 noundef %19, ptr noundef %35, i8 noundef zeroext %34) #18
  tail call void @IMB_freeImBuf(ptr noundef nonnull %9) #18
  tail call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %10) #18
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef null) #18
  br label %49

49:                                               ; preds = %47, %24
  %50 = phi i32 [ 4, %47 ], [ 2, %24 ]
  ret i32 %50
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.163, ptr noundef nonnull @CLIP_OT_frame_jump.position_items, i32 noundef 0, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.165) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @frame_jump_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !222 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #18
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %5 = tail call ptr @ED_space_clip_get_clip(ptr noundef %4) #18
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.163) #18
  %9 = icmp slt i32 %8, 2
  %10 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11
  br i1 %9, label %11, label %45

11:                                               ; preds = %2
  %12 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %10) #18
  %13 = icmp eq ptr %12, null
  br i1 %13, label %83, label %14

14:                                               ; preds = %11
  %15 = icmp eq i32 %8, 1
  %16 = select i1 %15, i32 1, i32 -1
  %17 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 7
  %18 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 9
  %19 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 6
  %20 = load i32, ptr %18, align 8, !tbaa !223
  %21 = add nsw i32 %20, %16
  %22 = load i32, ptr %19, align 4, !tbaa !224
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %74, label %24

24:                                               ; preds = %14, %39
  %25 = phi i32 [ %42, %39 ], [ %21, %14 ]
  %26 = load i32, ptr %17, align 8, !tbaa !225
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %74, label %28

28:                                               ; preds = %24
  %29 = sitofp i32 %25 to float
  %30 = tail call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef %5, float noundef %29) #18
  %31 = fptosi float %30 to i32
  %32 = tail call ptr @BKE_tracking_marker_get_exact(ptr noundef nonnull %12, i32 noundef %31) #18
  %33 = icmp eq ptr %32, null
  br i1 %33, label %74, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %32, i64 0, i32 5
  %36 = load i32, ptr %35, align 4, !tbaa !98
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %74

39:                                               ; preds = %34
  %40 = load i32, ptr %18, align 8, !tbaa !223
  %41 = add nsw i32 %40, %16
  store i32 %41, ptr %18, align 8, !tbaa !223
  %42 = add nsw i32 %41, %16
  %43 = load i32, ptr %19, align 4, !tbaa !224
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %74, label %24

45:                                               ; preds = %2
  %46 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11, i32 4
  %47 = load i32, ptr %46, align 8, !tbaa !226
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %74, label %50

50:                                               ; preds = %45
  %51 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %4) #18
  %52 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %10) #18
  %53 = icmp eq i32 %8, 3
  %54 = select i1 %53, i32 1, i32 -1
  %55 = add nsw i32 %51, %54
  %56 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 6
  %57 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 7
  br label %58

58:                                               ; preds = %66, %50
  %59 = phi i32 [ %55, %50 ], [ %60, %66 ]
  %60 = add nsw i32 %59, %54
  %61 = load i32, ptr %56, align 4, !tbaa !224
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %74, label %63

63:                                               ; preds = %58
  %64 = load i32, ptr %57, align 8, !tbaa !225
  %65 = icmp sgt i32 %60, %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %63
  %67 = tail call ptr @BKE_tracking_camera_get_reconstructed(ptr noundef nonnull %10, ptr noundef %52, i32 noundef %59) #18
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %58

69:                                               ; preds = %66
  %70 = sitofp i32 %59 to float
  %71 = tail call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef %5, float noundef %70) #18
  %72 = fptosi float %71 to i32
  %73 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 9
  store i32 %72, ptr %73, align 8, !tbaa !223
  br label %74

74:                                               ; preds = %63, %58, %39, %24, %34, %28, %14, %69, %45
  %75 = getelementptr inbounds %struct.Scene, ptr %3, i64 0, i32 22, i32 5
  %76 = load i32, ptr %75, align 8, !tbaa !141
  %77 = getelementptr inbounds %struct.SpaceClip, ptr %4, i64 0, i32 9
  %78 = load i32, ptr %77, align 8, !tbaa !223
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %82, label %80

80:                                               ; preds = %74
  store i32 %78, ptr %75, align 8, !tbaa !141
  %81 = tail call ptr @CTX_data_main(ptr noundef %0) #18
  tail call void @sound_seek_scene(ptr noundef %81, ptr noundef nonnull %3) #18
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 67305472, ptr noundef nonnull %3) #18
  br label %82

82:                                               ; preds = %80, %74
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 338886656, ptr noundef null) #18
  br label %83

83:                                               ; preds = %11, %82
  %84 = phi i32 [ 4, %82 ], [ 2, %11 ]
  ret i32 %84
}

; Function Attrs: optsize
declare i32 @ED_space_clip_poll(ptr noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @join_tracks_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !227 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #18
  %7 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %5) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !163
  tail call void @BKE_report(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str.264) #18
  br label %57

12:                                               ; preds = %2
  %13 = load ptr, ptr %6, align 8, !tbaa !73
  %14 = icmp eq ptr %13, null
  br i1 %14, label %56, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %17 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 5, i32 4
  br label %18

18:                                               ; preds = %15, %54
  %19 = phi ptr [ %13, %15 ], [ %20, %54 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !79
  %21 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %19, i64 0, i32 13
  %22 = load i32, ptr %21, align 8, !tbaa !81
  %23 = and i32 %22, 32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %18
  %26 = and i32 %22, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  %29 = load i32, ptr %16, align 8, !tbaa !82
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %19, i64 0, i32 14
  %34 = load i32, ptr %33, align 4, !tbaa !88
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32, %28
  %38 = and i32 %29, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %19, i64 0, i32 15
  %42 = load i32, ptr %41, align 8, !tbaa !89
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  %45 = icmp eq ptr %19, %7
  %46 = or i1 %45, %44
  br i1 %46, label %54, label %49

47:                                               ; preds = %32, %25
  %48 = icmp eq ptr %19, %7
  br i1 %48, label %54, label %49

49:                                               ; preds = %40, %47
  tail call void @BKE_tracking_tracks_join(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %19) #18
  %50 = load ptr, ptr %17, align 8, !tbaa !228
  %51 = icmp eq ptr %50, %19
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store ptr %7, ptr %17, align 8, !tbaa !228
  br label %53

53:                                               ; preds = %52, %49
  tail call void @BKE_tracking_track_free(ptr noundef nonnull %19) #18
  tail call void @BLI_freelinkN(ptr noundef nonnull %6, ptr noundef nonnull %19) #18
  br label %54

54:                                               ; preds = %53, %47, %40, %37, %18
  %55 = icmp eq ptr %20, null
  br i1 %55, label %56, label %18, !llvm.loop !229

56:                                               ; preds = %54, %12
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %4) #18
  br label %57

57:                                               ; preds = %56, %9
  %58 = phi i32 [ 4, %56 ], [ 2, %9 ]
  ret i32 %58
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.54, ptr noundef nonnull @CLIP_OT_lock_tracks.actions_items, i32 noundef 0, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.179) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @lock_tracks_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !230 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #18
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = tail call i32 @RNA_enum_get(ptr noundef %9, ptr noundef nonnull @.str.54) #18
  %11 = icmp eq ptr %7, null
  br i1 %11, label %52, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  br label %14

14:                                               ; preds = %12, %49
  %15 = phi ptr [ %7, %12 ], [ %50, %49 ]
  %16 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %15, i64 0, i32 13
  %17 = load i32, ptr %16, align 8, !tbaa !81
  %18 = and i32 %17, 32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %14
  %21 = and i32 %17, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = load i32, ptr %13, align 8, !tbaa !82
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %15, i64 0, i32 14
  %29 = load i32, ptr %28, align 4, !tbaa !88
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27, %23
  %33 = and i32 %24, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %15, i64 0, i32 15
  %37 = load i32, ptr %36, align 8, !tbaa !89
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
  store i32 %48, ptr %16, align 8, !tbaa !81
  br label %49

49:                                               ; preds = %47, %35, %32, %14
  %50 = load ptr, ptr %15, align 8, !tbaa !79
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %14, !llvm.loop !231

52:                                               ; preds = %49, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544322, ptr noundef %4) #18
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.188, ptr noundef nonnull @CLIP_OT_set_solver_keyframe.keyframe_items, i32 noundef 0, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_solver_keyframe_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !232 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %5) #18
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.188) #18
  %10 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 9
  %11 = load i32, ptr %10, align 8, !tbaa !223
  %12 = sitofp i32 %11 to float
  %13 = tail call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef %4, float noundef %12) #18
  %14 = fptosi float %13 to i32
  %15 = icmp eq i32 %9, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.MovieTrackingObject, ptr %6, i64 0, i32 8
  store i32 %14, ptr %17, align 8, !tbaa !233
  br label %20

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.MovieTrackingObject, ptr %6, i64 0, i32 9
  store i32 %14, ptr %19, align 4, !tbaa !234
  br label %20

20:                                               ; preds = %18, %16
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 338886656, ptr noundef %4) #18
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @track_copy_color_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !235 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #18
  %7 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %5) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %59, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %6, align 8, !tbaa !97
  %11 = icmp eq ptr %10, null
  br i1 %11, label %58, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %14 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %7, i64 0, i32 13
  %15 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %7, i64 0, i32 16
  br label %16

16:                                               ; preds = %12, %55
  %17 = phi ptr [ %10, %12 ], [ %56, %55 ]
  %18 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 13
  %19 = load i32, ptr %18, align 8, !tbaa !81
  %20 = and i32 %19, 32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %16
  %23 = and i32 %19, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %22
  %26 = load i32, ptr %13, align 8, !tbaa !82
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 14
  %31 = load i32, ptr %30, align 4, !tbaa !88
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29, %25
  %35 = and i32 %26, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 15
  %39 = load i32, ptr %38, align 8, !tbaa !89
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  %42 = icmp eq ptr %17, %7
  %43 = or i1 %42, %41
  br i1 %43, label %55, label %46

44:                                               ; preds = %29, %22
  %45 = icmp eq ptr %17, %7
  br i1 %45, label %55, label %46

46:                                               ; preds = %37, %44
  %47 = and i32 %19, -161
  store i32 %47, ptr %18, align 8, !tbaa !81
  %48 = load i32, ptr %14, align 8, !tbaa !81
  %49 = and i32 %48, 128
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %17, i64 0, i32 16
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %52, ptr noundef nonnull %15) #20
  %53 = load i32, ptr %18, align 8, !tbaa !81
  %54 = or i32 %53, 128
  store i32 %54, ptr %18, align 8, !tbaa !81
  br label %55

55:                                               ; preds = %46, %51, %44, %37, %34, %16
  %56 = load ptr, ptr %17, align 8, !tbaa !97
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %16, !llvm.loop !236

58:                                               ; preds = %55, %9
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 338886656, ptr noundef %4) #18
  br label %59

59:                                               ; preds = %2, %58
  %60 = phi i32 [ 4, %58 ], [ 2, %2 ]
  ret i32 %60
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @stabilize_2d_add_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !237 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #18
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  %8 = icmp eq ptr %7, null
  br i1 %8, label %60, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %11 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 5, i32 1
  br label %12

12:                                               ; preds = %50, %9
  %13 = phi ptr [ %55, %50 ], [ %7, %9 ]
  %14 = phi i1 [ false, %50 ], [ true, %9 ]
  br label %15

15:                                               ; preds = %12, %47
  %16 = phi ptr [ %48, %47 ], [ %13, %12 ]
  %17 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 13
  %18 = load i32, ptr %17, align 8, !tbaa !81
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %15
  %22 = and i32 %18, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = load i32, ptr %10, align 8, !tbaa !82
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 14
  %30 = load i32, ptr %29, align 4, !tbaa !88
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28, %24
  %34 = and i32 %25, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 15
  %38 = load i32, ptr %37, align 8, !tbaa !89
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  %41 = and i32 %18, 256
  %42 = icmp eq i32 %41, 0
  %43 = and i1 %42, %40
  br i1 %43, label %50, label %47

44:                                               ; preds = %28, %21
  %45 = and i32 %18, 256
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44, %36, %33, %15
  %48 = load ptr, ptr %16, align 8, !tbaa !97
  %49 = icmp eq ptr %48, null
  br i1 %49, label %57, label %15, !llvm.loop !238

50:                                               ; preds = %44, %36
  %51 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %16, i64 0, i32 13
  %52 = or disjoint i32 %18, 256
  store i32 %52, ptr %51, align 8, !tbaa !81
  %53 = load i32, ptr %11, align 4, !tbaa !239
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %11, align 4, !tbaa !239
  %55 = load ptr, ptr %16, align 8, !tbaa !97
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %12, !llvm.loop !238

57:                                               ; preds = %47
  br i1 %14, label %60, label %58

58:                                               ; preds = %50, %57
  %59 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 5, i32 9
  store i32 0, ptr %59, align 8, !tbaa !240
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #18
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 338886656, ptr noundef %4) #18
  br label %60

60:                                               ; preds = %2, %58, %57
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @stabilize_2d_poll(ptr noundef %0) #0 !PGOFuncName !241 {
  %2 = tail call i32 @ED_space_clip_tracking_poll(ptr noundef %0) #18
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %6 = tail call ptr @ED_space_clip_get_clip(ptr noundef %5) #18
  %7 = getelementptr inbounds %struct.MovieClip, ptr %6, i64 0, i32 11
  %8 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %7) #18
  %9 = getelementptr inbounds %struct.MovieTrackingObject, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !190
  %11 = and i32 %10, 1
  br label %12

12:                                               ; preds = %1, %4
  %13 = phi i32 [ %11, %4 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @stabilize_2d_remove_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !242 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #18
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  %8 = icmp eq ptr %7, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 5, i32 2
  br label %11

11:                                               ; preds = %9, %32
  %12 = phi ptr [ %7, %9 ], [ %34, %32 ]
  %13 = phi i32 [ 0, %9 ], [ %33, %32 ]
  %14 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %12, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !81
  %16 = and i32 %15, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %11
  %19 = load i32, ptr %10, align 8, !tbaa !243
  %20 = icmp eq i32 %13, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %12, i64 0, i32 13
  %23 = and i32 %15, -257
  store i32 %23, ptr %22, align 8, !tbaa !81
  %24 = add nsw i32 %13, -1
  store i32 %24, ptr %10, align 8, !tbaa !243
  %25 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 5, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !239
  %27 = add nsw i32 %26, -1
  store i32 %27, ptr %25, align 4, !tbaa !239
  %28 = icmp slt i32 %13, 1
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  store i32 0, ptr %10, align 8, !tbaa !243
  br label %36

30:                                               ; preds = %18
  %31 = add nsw i32 %13, 1
  br label %32

32:                                               ; preds = %30, %11
  %33 = phi i32 [ %31, %30 ], [ %13, %11 ]
  %34 = load ptr, ptr %12, align 8, !tbaa !97
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %11, !llvm.loop !244

36:                                               ; preds = %29, %21
  %37 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 5, i32 9
  store i32 0, ptr %37, align 8, !tbaa !240
  tail call void @DAG_id_tag_update(ptr noundef nonnull %4, i16 noundef signext 0) #18
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 338886656, ptr noundef nonnull %4) #18
  br label %38

38:                                               ; preds = %32, %2, %36
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @stabilize_2d_select_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !245 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #18
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  %8 = icmp eq ptr %7, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %2, %21
  %10 = phi ptr [ %22, %21 ], [ %7, %2 ]
  %11 = phi i1 [ false, %21 ], [ true, %2 ]
  br label %12

12:                                               ; preds = %9, %18
  %13 = phi ptr [ %19, %18 ], [ %10, %9 ]
  %14 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %13, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !81
  %16 = and i32 %15, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load ptr, ptr %13, align 8, !tbaa !97
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %12, !llvm.loop !246

21:                                               ; preds = %12
  tail call void @BKE_tracking_track_flag_set(ptr noundef nonnull %13, i32 noundef 7, i32 noundef 1) #18
  %22 = load ptr, ptr %13, align 8, !tbaa !97
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %9, !llvm.loop !246

24:                                               ; preds = %18
  br i1 %11, label %26, label %25

25:                                               ; preds = %21, %24
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 341442560, ptr noundef %4) #18
  br label %26

26:                                               ; preds = %2, %25, %24
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @stabilize_2d_set_rotation_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !247 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %5) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 5, i32 4
  store ptr %6, ptr %9, align 8, !tbaa !248
  %10 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 5, i32 9
  store i32 0, ptr %10, align 8, !tbaa !240
  tail call void @DAG_id_tag_update(ptr noundef %4, i16 noundef signext 0) #18
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 338886656, ptr noundef %4) #18
  br label %11

11:                                               ; preds = %8, %2
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.217, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.219, i32 noundef 0, i32 noundef 2147483647) #18
  %11 = load ptr, ptr %8, align 8, !tbaa !48
  %12 = tail call ptr @RNA_def_float(ptr noundef %11, ptr noundef nonnull @.str.220, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.222, float noundef 0.000000e+00, float noundef 1.000000e+02) #18
  %13 = load ptr, ptr %8, align 8, !tbaa !48
  %14 = tail call ptr @RNA_def_enum(ptr noundef %13, ptr noundef nonnull @.str.54, ptr noundef nonnull @CLIP_OT_clean_tracks.actions_items, i32 noundef 0, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.223) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @clean_tracks_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !249 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #18
  %7 = tail call ptr @BKE_tracking_track_get_active(ptr noundef nonnull %5) #18
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.217) #18
  %11 = load ptr, ptr %8, align 8, !tbaa !50
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.54) #18
  %13 = load ptr, ptr %8, align 8, !tbaa !50
  %14 = tail call float @RNA_float_get(ptr noundef %13, ptr noundef nonnull @.str.220) #18
  %15 = fcmp une float %14, 0.000000e+00
  %16 = icmp eq i32 %12, 2
  %17 = select i1 %15, i1 %16, i1 false
  %18 = select i1 %17, i32 1, i32 %12
  %19 = load ptr, ptr %6, align 8, !tbaa !73
  %20 = icmp eq ptr %19, null
  br i1 %20, label %59, label %21

21:                                               ; preds = %2
  %22 = icmp eq i32 %18, 2
  %23 = zext i1 %22 to i32
  %24 = fcmp oeq float %14, 0.000000e+00
  %25 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 6
  br label %26

26:                                               ; preds = %21, %57
  %27 = phi ptr [ %19, %21 ], [ %28, %57 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !79
  %29 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %27, i64 0, i32 13
  %30 = load i32, ptr %29, align 8, !tbaa !81
  %31 = and i32 %30, 96
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %26
  %34 = tail call fastcc zeroext i8 @is_track_clean(ptr noundef nonnull %27, i32 noundef %10, i32 noundef %23) #20, !range !56
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  br i1 %24, label %57, label %37

37:                                               ; preds = %36
  %38 = load i32, ptr %29, align 8, !tbaa !81
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %27, i64 0, i32 12
  %43 = load float, ptr %42, align 4, !tbaa !250
  %44 = fcmp olt float %43, %14
  br i1 %44, label %57, label %45

45:                                               ; preds = %33, %41
  switch i32 %18, label %49 [
    i32 0, label %46
    i32 1, label %47
  ]

46:                                               ; preds = %45
  tail call void @BKE_tracking_track_flag_set(ptr noundef nonnull %27, i32 noundef 7, i32 noundef 1) #18
  br label %49

47:                                               ; preds = %45
  %48 = icmp eq ptr %27, %7
  br i1 %48, label %55, label %56

49:                                               ; preds = %46, %45
  %50 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %27, i64 0, i32 8
  %51 = load i32, ptr %50, align 8, !tbaa !92
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = icmp eq ptr %27, %7
  br i1 %54, label %55, label %56

55:                                               ; preds = %53, %47
  store ptr null, ptr %25, align 8, !tbaa !213
  br label %56

56:                                               ; preds = %55, %53, %47
  tail call void @BKE_tracking_track_free(ptr noundef nonnull %27) #18
  tail call void @BLI_freelinkN(ptr noundef nonnull %6, ptr noundef nonnull %27) #18
  br label %57

57:                                               ; preds = %56, %41, %49, %36, %37, %26
  %58 = icmp eq ptr %28, null
  br i1 %58, label %59, label %26, !llvm.loop !251

59:                                               ; preds = %57, %2
  tail call void @BKE_tracking_dopesheet_tag_update(ptr noundef nonnull %5) #18
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 341442560, ptr noundef %4) #18
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @clean_tracks_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !252 {
  %4 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %5 = tail call ptr @ED_space_clip_get_clip(ptr noundef %4) #18
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  %8 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %7, ptr noundef nonnull @.str.217) #18
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load ptr, ptr %6, align 8, !tbaa !50
  %12 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11, i32 0, i32 19
  %13 = load i32, ptr %12, align 4, !tbaa !253
  tail call void @RNA_int_set(ptr noundef %11, ptr noundef nonnull @.str.217, i32 noundef %13) #18
  br label %14

14:                                               ; preds = %10, %3
  %15 = load ptr, ptr %6, align 8, !tbaa !50
  %16 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %15, ptr noundef nonnull @.str.220) #18
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load ptr, ptr %6, align 8, !tbaa !50
  %20 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11, i32 0, i32 21
  %21 = load float, ptr %20, align 4, !tbaa !254
  tail call void @RNA_float_set(ptr noundef %19, ptr noundef nonnull @.str.220, float noundef %21) #18
  br label %22

22:                                               ; preds = %18, %14
  %23 = load ptr, ptr %6, align 8, !tbaa !50
  %24 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %23, ptr noundef nonnull @.str.54) #18
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load ptr, ptr %6, align 8, !tbaa !50
  %28 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11, i32 0, i32 20
  %29 = load i32, ptr %28, align 8, !tbaa !255
  tail call void @RNA_enum_set(ptr noundef %27, ptr noundef nonnull @.str.54, i32 noundef %29) #18
  br label %30

30:                                               ; preds = %26, %22
  %31 = tail call i32 @clean_tracks_exec(ptr noundef %0, ptr noundef nonnull %1) #20
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tracking_object_new_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !256 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_object_add(ptr noundef nonnull %5, ptr noundef nonnull @.str.266) #18
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %4) #18
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @tracking_object_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !257 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %5) #18
  %7 = getelementptr inbounds %struct.MovieTrackingObject, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !190
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !163
  tail call void @BKE_report(ptr noundef %13, i32 noundef 16, ptr noundef nonnull @.str.267) #18
  br label %16

14:                                               ; preds = %2
  %15 = tail call zeroext i8 @BKE_tracking_object_delete(ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %4) #18
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i32 [ 2, %11 ], [ 4, %14 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @copy_tracks_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !258 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %5) #18
  tail call fastcc void @clear_invisible_track_selection(ptr noundef %3, ptr noundef %4) #20
  tail call void @BKE_tracking_clipboard_copy_tracks(ptr noundef nonnull %5, ptr noundef %6) #18
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paste_tracks_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !259 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %5) #18
  %7 = tail call ptr @BKE_tracking_object_get_tracks(ptr noundef nonnull %5, ptr noundef %6) #18
  tail call void @BKE_tracking_tracks_deselect_all(ptr noundef %7) #18
  tail call void @BKE_tracking_clipboard_paste_tracks(ptr noundef nonnull %5, ptr noundef %6) #18
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %4) #18
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @paste_tracks_poll(ptr noundef %0) #0 !PGOFuncName !260 {
  %2 = tail call i32 @ED_space_clip_tracking_poll(ptr noundef %0) #18
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call zeroext i8 @BKE_tracking_clipboard_has_tracks() #18
  %6 = zext i8 %5 to i32
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi i32 [ %6, %4 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @create_plane_track_tracks_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !261 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #18
  %7 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %5) #18
  %8 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %3) #18
  %9 = tail call ptr @BKE_tracking_plane_track_add(ptr noundef nonnull %5, ptr noundef %7, ptr noundef %6, i32 noundef %8) #18
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !163
  tail call void @BKE_report(ptr noundef %13, i32 noundef 32, ptr noundef nonnull @.str.268) #18
  br label %20

14:                                               ; preds = %2
  tail call void @BKE_tracking_tracks_deselect_all(ptr noundef %6) #18
  %15 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %9, i64 0, i32 8
  %16 = load i32, ptr %15, align 4, !tbaa !76
  %17 = or i32 %16, 1
  store i32 %17, ptr %15, align 4, !tbaa !76
  %18 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 6
  store ptr null, ptr %18, align 8, !tbaa !213
  %19 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11, i32 7
  store ptr %9, ptr %19, align 8, !tbaa !215
  tail call void @BKE_tracking_track_plane_from_existing_motion(ptr noundef nonnull %9, i32 noundef %8) #18
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %4) #18
  br label %20

20:                                               ; preds = %14, %11
  %21 = phi i32 [ 2, %11 ], [ 4, %14 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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
  store ptr @slide_plane_marker_modal, ptr %6, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 23, ptr %7, align 8, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @slide_plane_marker_invoke(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !262 {
  %4 = tail call fastcc ptr @slide_plane_marker_customdata(ptr noundef %0, ptr noundef %2) #20
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %8 = tail call ptr @ED_space_clip_get_clip(ptr noundef %7) #18
  %9 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !263
  %11 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 11, i32 7
  store ptr %10, ptr %11, align 8, !tbaa !118
  %12 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 11, i32 6
  store ptr null, ptr %12, align 8, !tbaa !111
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %4, ptr %13, align 8, !tbaa !119
  tail call fastcc void @hide_cursor(ptr noundef %0) #20
  %14 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #18
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274333696, ptr noundef null) #18
  br label %15

15:                                               ; preds = %3, %6
  %16 = phi i32 [ 1, %6 ], [ 8, %3 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @slide_plane_marker_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !265 {
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  %8 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %9 = tail call ptr @ED_space_clip_get_clip(ptr noundef %8) #18
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !60
  switch i16 %13, label %127 [
    i16 212, label %14
    i16 215, label %14
    i16 217, label %14
    i16 216, label %14
    i16 4, label %23
    i16 1, label %105
    i16 3, label %105
    i16 218, label %122
  ]

14:                                               ; preds = %3, %3, %3, %3
  %15 = and i16 %13, -2
  %16 = icmp eq i16 %15, 216
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %19 = load i16, ptr %18, align 2, !tbaa !122
  %20 = icmp eq i16 %19, 1
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %11, i64 0, i32 10
  store i8 %21, ptr %22, align 8, !tbaa !266
  br label %23

23:                                               ; preds = %14, %17, %3
  %24 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %25 = load i32, ptr %24, align 4, !tbaa !96
  %26 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %11, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !96
  %28 = sub nsw i32 %25, %27
  %29 = sitofp i32 %28 to float
  %30 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %31 = load i32, ptr %30, align 4, !tbaa !96
  %32 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %11, i64 0, i32 7, i64 1
  %33 = load i32, ptr %32, align 4, !tbaa !96
  %34 = sub nsw i32 %31, %33
  %35 = sitofp i32 %34 to float
  %36 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %11, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !267
  %38 = sitofp i32 %37 to float
  %39 = fdiv float %29, %38
  %40 = getelementptr inbounds %struct.SpaceClip, ptr %8, i64 0, i32 8
  %41 = load float, ptr %40, align 4, !tbaa !102
  %42 = fdiv float %39, %41
  %43 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %11, i64 0, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !268
  %45 = sitofp i32 %44 to float
  %46 = fdiv float %35, %45
  %47 = fdiv float %46, %41
  %48 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %11, i64 0, i32 10
  %49 = load i8, ptr %48, align 8, !tbaa !266
  %50 = icmp eq i8 %49, 0
  %51 = fdiv float %42, 5.000000e+00
  %52 = fdiv float %47, 5.000000e+00
  %53 = select i1 %50, float %47, float %52
  %54 = select i1 %50, float %42, float %51
  %55 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %11, i64 0, i32 8
  %56 = load float, ptr %55, align 8, !tbaa !54
  %57 = fadd float %56, %54
  %58 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %11, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !269
  store float %57, ptr %59, align 4, !tbaa !54
  %60 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %11, i64 0, i32 8, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !54
  %62 = fadd float %61, %53
  %63 = getelementptr inbounds float, ptr %59, i64 1
  store float %62, ptr %63, align 4, !tbaa !54
  %64 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %11, i64 0, i32 5
  %65 = load i32, ptr %64, align 8, !tbaa !270
  %66 = add nsw i32 %65, 1
  %67 = srem i32 %66, 4
  %68 = add nsw i32 %65, 3
  %69 = srem i32 %68, 4
  %70 = add nsw i32 %65, 2
  %71 = srem i32 %70, 4
  %72 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %11, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !271
  %74 = sext i32 %67 to i64
  %75 = getelementptr inbounds [4 x [2 x float]], ptr %73, i64 0, i64 %74
  %76 = sext i32 %69 to i64
  %77 = getelementptr inbounds [4 x [2 x float]], ptr %73, i64 0, i64 %76
  %78 = sext i32 %71 to i64
  %79 = getelementptr inbounds [4 x [2 x float]], ptr %73, i64 0, i64 %78
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %4, ptr noundef %75, ptr noundef nonnull %59) #20
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %5, ptr noundef nonnull %59, ptr noundef %77) #20
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %6, ptr noundef %77, ptr noundef %79) #20
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %7, ptr noundef %79, ptr noundef %75) #20
  %80 = call fastcc float @cross_v2v2(ptr noundef nonnull %5, ptr noundef nonnull %4) #20
  %81 = fcmp olt float %80, 0.000000e+00
  br i1 %81, label %82, label %85

82:                                               ; preds = %23
  %83 = tail call float @closest_to_line_v2(ptr noundef nonnull %59, ptr noundef nonnull %59, ptr noundef %77, ptr noundef %75) #18
  %84 = load ptr, ptr %58, align 8, !tbaa !269
  br label %85

85:                                               ; preds = %82, %23
  %86 = phi ptr [ %84, %82 ], [ %59, %23 ]
  %87 = call fastcc float @cross_v2v2(ptr noundef nonnull %6, ptr noundef nonnull %5) #20
  %88 = fcmp olt float %87, 0.000000e+00
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = tail call float @closest_to_line_v2(ptr noundef %86, ptr noundef %86, ptr noundef %77, ptr noundef %79) #18
  %91 = load ptr, ptr %58, align 8, !tbaa !269
  br label %92

92:                                               ; preds = %89, %85
  %93 = phi ptr [ %91, %89 ], [ %86, %85 ]
  %94 = call fastcc float @cross_v2v2(ptr noundef nonnull %4, ptr noundef nonnull %7) #20
  %95 = fcmp olt float %94, 0.000000e+00
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = tail call float @closest_to_line_v2(ptr noundef %93, ptr noundef %93, ptr noundef %75, ptr noundef %79) #18
  %98 = load ptr, ptr %58, align 8, !tbaa !269
  br label %99

99:                                               ; preds = %96, %92
  %100 = phi ptr [ %98, %96 ], [ %93, %92 ]
  %101 = load i32, ptr %24, align 4, !tbaa !96
  store i32 %101, ptr %26, align 8, !tbaa !96
  %102 = load i32, ptr %30, align 4, !tbaa !96
  store i32 %102, ptr %32, align 4, !tbaa !96
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %55, ptr noundef %100) #20
  %103 = getelementptr inbounds %struct.SpaceClip, ptr %8, i64 0, i32 10
  %104 = load ptr, ptr %103, align 8, !tbaa !130
  tail call void @DAG_id_tag_update(ptr noundef %104, i16 noundef signext 0) #18
  br label %124

105:                                              ; preds = %3, %3
  %106 = zext nneg i16 %13 to i32
  %107 = load i32, ptr %11, align 8, !tbaa !272
  %108 = icmp eq i32 %107, %106
  br i1 %108, label %109, label %127

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %111 = load i16, ptr %110, align 2, !tbaa !122
  %112 = icmp eq i16 %111, 2
  br i1 %112, label %113, label %127

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %11, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !271
  %116 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %115, i64 0, i32 2
  %117 = load i32, ptr %116, align 4, !tbaa !273
  %118 = and i32 %117, -3
  store i32 %118, ptr %116, align 4, !tbaa !273
  tail call fastcc void @slide_plane_marker_update_homographies(ptr noundef %8, ptr noundef nonnull %11) #20
  %119 = load ptr, ptr %10, align 8, !tbaa !119
  tail call fastcc void @free_slide_plane_marker_data(ptr noundef %119) #20
  tail call fastcc void @show_cursor(ptr noundef %0) #20
  %120 = getelementptr inbounds %struct.SpaceClip, ptr %8, i64 0, i32 10
  %121 = load ptr, ptr %120, align 8, !tbaa !130
  tail call void @DAG_id_tag_update(ptr noundef %121, i16 noundef signext 0) #18
  br label %124

122:                                              ; preds = %3
  tail call fastcc void @cancel_mouse_slide_plane_marker(ptr noundef %11) #20
  %123 = load ptr, ptr %10, align 8, !tbaa !119
  tail call fastcc void @free_slide_plane_marker_data(ptr noundef %123) #20
  tail call fastcc void @show_cursor(ptr noundef %0) #20
  br label %124

124:                                              ; preds = %113, %122, %99
  %125 = phi ptr [ null, %99 ], [ %9, %122 ], [ %9, %113 ]
  %126 = phi i32 [ 1, %99 ], [ 2, %122 ], [ 4, %113 ]
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %125) #18
  br label %127

127:                                              ; preds = %124, %3, %109, %105
  %128 = phi i32 [ 1, %105 ], [ 1, %109 ], [ 1, %3 ], [ %126, %124 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret i32 %128
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @keyframe_insert_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !275 {
  tail call fastcc void @keyframe_set_flag(ptr noundef %0, i8 noundef zeroext 1) #20
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @keyframe_delete_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !276 {
  tail call fastcc void @keyframe_set_flag(ptr noundef %0, i8 noundef zeroext 0) #20
  ret i32 4
}

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_float_set_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_float_get_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @add_marker(ptr noundef %0, float noundef %1, float noundef %2) unnamed_addr #0 !PGOFuncName !277 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %7 = tail call ptr @ED_space_clip_get_clip(ptr noundef %6) #18
  %8 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11
  %9 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %8) #18
  %10 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  %11 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %6) #18
  call void @ED_space_clip_get_size(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %12 = load i32, ptr %4, align 4, !tbaa !96
  %13 = icmp eq i32 %12, 0
  %14 = load i32, ptr %5, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = call ptr @BKE_tracking_track_add(ptr noundef nonnull %8, ptr noundef %9, float noundef %1, float noundef %2, i32 noundef %11, i32 noundef %12, i32 noundef %14) #18
  call void @BKE_tracking_track_select(ptr noundef %9, ptr noundef %18, i32 noundef 7, i8 noundef zeroext 0) #18
  call void @BKE_tracking_plane_tracks_deselect_all(ptr noundef %10) #18
  %19 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11, i32 6
  store ptr %18, ptr %19, align 8, !tbaa !213
  %20 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11, i32 7
  store ptr null, ptr %20, align 8, !tbaa !215
  br label %21

21:                                               ; preds = %3, %17
  %22 = phi i8 [ 1, %17 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret i8 %22
}

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_get_active_plane_tracks(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_track_add(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_track_select(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_plane_tracks_deselect_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_area_headerprint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_clip_point_stable_pos(ptr noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_plane_track_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @clip_delete_track(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_marker_get_exact(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @clip_delete_marker(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_plane_marker_get_exact(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_plane_marker_delete(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_marker_pattern_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !278 {
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = load float, ptr %2, align 4, !tbaa !54
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !54
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @min_ff(float noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !279 {
  %3 = fcmp olt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !280 {
  %3 = load float, ptr %1, align 4, !tbaa !54
  store float %3, ptr %0, align 4, !tbaa !54
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @mouse_on_slide_zone(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 !PGOFuncName !281 {
  %8 = alloca [2 x float], align 4
  %9 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  %10 = icmp eq i32 %2, 4
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %1, i64 0, i32 2
  call fastcc void @copy_v2_v2(ptr noundef nonnull %8, ptr noundef nonnull %12) #20
  %13 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %1, i64 0, i32 3
  call fastcc void @copy_v2_v2(ptr noundef nonnull %9, ptr noundef nonnull %13) #20
  br label %15

14:                                               ; preds = %7
  call void @BKE_tracking_marker_pattern_minmax(ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9) #18
  br label %15

15:                                               ; preds = %14, %11
  %16 = sitofp i32 %5 to float
  %17 = fdiv float 0.000000e+00, %16
  %18 = load float, ptr %8, align 4, !tbaa !54
  %19 = fsub float %18, %17
  %20 = sitofp i32 %6 to float
  %21 = fdiv float 0.000000e+00, %20
  %22 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !54
  %24 = fsub float %23, %21
  %25 = load float, ptr %9, align 4, !tbaa !54
  %26 = fadd float %17, %25
  %27 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !54
  %29 = fadd float %21, %28
  %30 = fdiv float 1.200000e+01, %16
  %31 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 8
  %32 = load float, ptr %31, align 4, !tbaa !102
  %33 = fdiv float %30, %32
  %34 = fdiv float 1.200000e+01, %20
  %35 = fdiv float %34, %32
  %36 = fsub float %26, %19
  %37 = fdiv float %36, 6.000000e+00
  %38 = call fastcc float @min_ff(float noundef %33, float noundef %37) #20
  %39 = fsub float %29, %24
  %40 = fdiv float %39, 6.000000e+00
  %41 = call fastcc float @min_ff(float noundef %35, float noundef %40) #20
  %42 = load float, ptr %4, align 4, !tbaa !54
  %43 = fsub float %42, %38
  %44 = fadd float %38, %42
  %45 = fcmp olt float %43, %44
  %46 = load float, ptr %3, align 4, !tbaa !54
  br i1 %45, label %47, label %51

47:                                               ; preds = %15
  %48 = fcmp ugt float %43, %46
  %49 = fcmp ugt float %46, %44
  %50 = or i1 %48, %49
  br i1 %50, label %69, label %55

51:                                               ; preds = %15
  %52 = fcmp ugt float %44, %46
  %53 = fcmp ugt float %46, %43
  %54 = or i1 %52, %53
  br i1 %54, label %69, label %55

55:                                               ; preds = %51, %47
  %56 = getelementptr inbounds float, ptr %4, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !54
  %58 = fsub float %57, %41
  %59 = fadd float %41, %57
  %60 = fcmp olt float %58, %59
  %61 = getelementptr inbounds float, ptr %3, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !54
  %63 = select i1 %60, float %58, float %59
  %64 = select i1 %60, float %59, float %58
  %65 = fcmp ole float %63, %62
  %66 = fcmp ole float %62, %64
  %67 = and i1 %65, %66
  %68 = zext i1 %67 to i32
  br label %69

69:                                               ; preds = %51, %47, %55
  %70 = phi i32 [ %68, %55 ], [ 0, %47 ], [ 0, %51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  ret i32 %70
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !282 {
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #20
  %4 = call fastcc float @dot_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret float %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !283 {
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = load float, ptr %2, align 4, !tbaa !54
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !54
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !284 {
  %3 = load float, ptr %0, align 4, !tbaa !54
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  ret float %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @slide_marker_tilt_slider(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #5 !PGOFuncName !285 {
  %3 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %0, i64 0, i32 1, i64 2
  tail call fastcc void @add_v2_v2v2(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  tail call fastcc void @add_v2_v2(ptr noundef %1, ptr noundef %0) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !286 {
  %3 = load float, ptr %1, align 4, !tbaa !54
  %4 = load float, ptr %0, align 4, !tbaa !54
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !54
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !54
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @slide_marker_customdata(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !287 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %11 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %9) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #19
  call void @ED_space_clip_get_size(ptr noundef %9, ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %12 = load i32, ptr %3, align 4, !tbaa !96
  %13 = icmp eq i32 %12, 0
  %14 = load i32, ptr %4, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  call void @ED_clip_mouse_pos(ptr noundef %9, ptr noundef %10, ptr noundef nonnull %18, ptr noundef nonnull %5) #18
  %19 = call ptr @tracking_marker_check_slide(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = call ptr @BKE_tracking_marker_get(ptr noundef nonnull %19, i32 noundef %11) #18
  %23 = load i32, ptr %6, align 4, !tbaa !96
  %24 = load i32, ptr %8, align 4, !tbaa !96
  %25 = load i32, ptr %7, align 4, !tbaa !96
  %26 = load i32, ptr %3, align 4, !tbaa !96
  %27 = load i32, ptr %4, align 4, !tbaa !96
  %28 = call fastcc ptr @create_slide_marker_data(ptr noundef %9, ptr noundef nonnull %19, ptr noundef %1, i32 noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26, i32 noundef %27) #20
  br label %29

29:                                               ; preds = %17, %21, %2
  %30 = phi ptr [ null, %2 ], [ %28, %21 ], [ null, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @hide_cursor(ptr noundef %0) unnamed_addr #0 !PGOFuncName !288 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  tail call void @WM_cursor_set(ptr noundef %2, i32 noundef 1007) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_slide_marker_data(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 !PGOFuncName !289 {
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !97
  %10 = tail call ptr %9(i64 noundef 168, ptr noundef nonnull @.str.249) #18
  %11 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %0) #18
  %12 = tail call ptr @BKE_tracking_marker_ensure(ptr noundef %1, i32 noundef %11) #18
  %13 = trunc i32 %3 to i16
  store i16 %13, ptr %10, align 8, !tbaa !127
  %14 = trunc i32 %5 to i16
  %15 = getelementptr inbounds %struct.SlideMarkerData, ptr %10, i64 0, i32 1
  store i16 %14, ptr %15, align 2, !tbaa !121
  %16 = getelementptr inbounds %struct.SlideMarkerData, ptr %10, i64 0, i32 2
  store ptr %1, ptr %16, align 8, !tbaa !109
  %17 = getelementptr inbounds %struct.SlideMarkerData, ptr %10, i64 0, i32 3
  store ptr %12, ptr %17, align 8, !tbaa !133
  switch i32 %3, label %67 [
    i32 1, label %18
    i32 2, label %22
    i32 4, label %62
  ]

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.SlideMarkerData, ptr %10, i64 0, i32 9
  store ptr %12, ptr %19, align 8, !tbaa !129
  %20 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 7
  %21 = getelementptr inbounds %struct.SlideMarkerData, ptr %10, i64 0, i32 10
  store ptr %20, ptr %21, align 8, !tbaa !128
  br label %67

22:                                               ; preds = %8
  switch i32 %5, label %67 [
    i32 1, label %23
    i32 2, label %26
    i32 0, label %51
    i32 3, label %58
  ]

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 0, i32 1
  %25 = getelementptr inbounds %struct.SlideMarkerData, ptr %10, i64 0, i32 11
  store ptr %24, ptr %25, align 8, !tbaa !131
  br label %67

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.SlideMarkerData, ptr %10, i64 0, i32 9
  store ptr %12, ptr %27, align 8, !tbaa !129
  %28 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 7
  %29 = getelementptr inbounds %struct.SlideMarkerData, ptr %10, i64 0, i32 10
  store ptr %28, ptr %29, align 8, !tbaa !128
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !97
  %31 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 8
  %32 = load i32, ptr %31, align 8, !tbaa !92
  %33 = sext i32 %32 to i64
  %34 = shl nsw i64 %33, 3
  %35 = tail call ptr %30(i64 noundef %34, ptr noundef nonnull @.str.250) #18
  %36 = getelementptr inbounds %struct.SlideMarkerData, ptr %10, i64 0, i32 20
  store ptr %35, ptr %36, align 8, !tbaa !135
  %37 = load i32, ptr %31, align 8, !tbaa !92
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 10
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi i64 [ 0, %39 ], [ %47, %41 ]
  %43 = load ptr, ptr %36, align 8, !tbaa !135
  %44 = getelementptr inbounds [2 x float], ptr %43, i64 %42
  %45 = load ptr, ptr %40, align 8, !tbaa !134
  %46 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %45, i64 %42
  tail call fastcc void @copy_v2_v2(ptr noundef %44, ptr noundef %46) #20
  %47 = add nuw nsw i64 %42, 1
  %48 = load i32, ptr %31, align 8, !tbaa !92
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %41, label %67, !llvm.loop !290

51:                                               ; preds = %22
  %52 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 0, i32 1
  %53 = getelementptr inbounds %struct.SlideMarkerData, ptr %10, i64 0, i32 11
  store ptr %52, ptr %53, align 8, !tbaa !131
  %54 = sext i32 %4 to i64
  %55 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 0, i32 1, i64 %54
  %56 = getelementptr inbounds %struct.SlideMarkerData, ptr %10, i64 0, i32 9
  store ptr %55, ptr %56, align 8, !tbaa !129
  %57 = getelementptr inbounds %struct.SlideMarkerData, ptr %10, i64 0, i32 12
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %57, ptr noundef nonnull %55) #20
  br label %67

58:                                               ; preds = %22
  %59 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 0, i32 1
  %60 = getelementptr inbounds %struct.SlideMarkerData, ptr %10, i64 0, i32 11
  store ptr %59, ptr %60, align 8, !tbaa !131
  %61 = getelementptr inbounds %struct.SlideMarkerData, ptr %10, i64 0, i32 12
  tail call fastcc void @slide_marker_tilt_slider(ptr noundef %12, ptr noundef nonnull %61) #20
  br label %67

62:                                               ; preds = %8
  %63 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 0, i32 2
  %64 = getelementptr inbounds %struct.SlideMarkerData, ptr %10, i64 0, i32 7
  store ptr %63, ptr %64, align 8, !tbaa !138
  %65 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 0, i32 3
  %66 = getelementptr inbounds %struct.SlideMarkerData, ptr %10, i64 0, i32 8
  store ptr %65, ptr %66, align 8, !tbaa !139
  br label %67

67:                                               ; preds = %41, %26, %8, %22, %58, %51, %23, %62, %18
  %68 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %69 = load i32, ptr %68, align 4, !tbaa !96
  %70 = getelementptr inbounds %struct.SlideMarkerData, ptr %10, i64 0, i32 4
  store i32 %69, ptr %70, align 8, !tbaa !96
  %71 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %72 = load i32, ptr %71, align 4, !tbaa !96
  %73 = getelementptr inbounds %struct.SlideMarkerData, ptr %10, i64 0, i32 4, i64 1
  store i32 %72, ptr %73, align 4, !tbaa !96
  %74 = getelementptr inbounds %struct.SlideMarkerData, ptr %10, i64 0, i32 5
  store i32 %6, ptr %74, align 8, !tbaa !125
  %75 = getelementptr inbounds %struct.SlideMarkerData, ptr %10, i64 0, i32 6
  store i32 %7, ptr %75, align 4, !tbaa !126
  %76 = icmp eq i32 %5, 1
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.SlideMarkerData, ptr %10, i64 0, i32 13
  store i8 1, ptr %78, align 8, !tbaa !123
  br label %79

79:                                               ; preds = %77, %67
  %80 = getelementptr inbounds %struct.SlideMarkerData, ptr %10, i64 0, i32 19
  %81 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %80, ptr noundef nonnull align 4 dereferenceable(32) %81, i64 32, i1 false)
  %82 = getelementptr inbounds %struct.SlideMarkerData, ptr %10, i64 0, i32 15
  %83 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 0, i32 2
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %82, ptr noundef nonnull %83) #20
  %84 = getelementptr inbounds %struct.SlideMarkerData, ptr %10, i64 0, i32 16
  %85 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %12, i64 0, i32 3
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %84, ptr noundef nonnull %85) #20
  %86 = getelementptr inbounds %struct.SlideMarkerData, ptr %10, i64 0, i32 17
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %86, ptr noundef %12) #20
  %87 = getelementptr inbounds %struct.SlideMarkerData, ptr %10, i64 0, i32 18
  %88 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %1, i64 0, i32 7
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %87, ptr noundef nonnull %88) #20
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @BKE_tracking_marker_ensure(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_cursor_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !291 {
  %3 = load float, ptr %1, align 4, !tbaa !54
  %4 = load float, ptr %0, align 4, !tbaa !54
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !54
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !54
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v2(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !292 {
  %2 = load float, ptr %0, align 4, !tbaa !54
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !54
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_v2(ptr nocapture noundef readonly %0) unnamed_addr #8 !PGOFuncName !293 {
  %2 = load float, ptr %0, align 4, !tbaa !54
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !54
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = tail call float @llvm.sqrt.f32(float %6)
  ret float %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v2_v2fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #5 !PGOFuncName !294 {
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !54
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare void @BKE_tracking_marker_clamp(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @slide_check_corners(ptr noundef %0) unnamed_addr #0 !PGOFuncName !295 {
  %2 = alloca [2 x float], align 8
  %3 = alloca [2 x float], align 4
  %4 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store i64 0, ptr %2, align 8
  %5 = getelementptr inbounds [2 x float], ptr %0, i64 1
  %6 = getelementptr inbounds [2 x float], ptr %0, i64 2
  %7 = getelementptr inbounds [2 x float], ptr %0, i64 3
  %8 = call i32 @isect_point_quad_v2(ptr noundef nonnull %2, ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %1, %29
  %11 = phi i64 [ %13, %29 ], [ 0, %1 ]
  %12 = phi float [ %30, %29 ], [ 0.000000e+00, %1 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %13 = add nuw nsw i64 %11, 1
  %14 = and i64 %13, 3
  %15 = add nuw i64 %11, 3
  %16 = and i64 %15, 3
  %17 = getelementptr inbounds [2 x float], ptr %0, i64 %11
  %18 = getelementptr inbounds [2 x float], ptr %0, i64 %16
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %3, ptr noundef %17, ptr noundef %18) #20
  %19 = getelementptr inbounds [2 x float], ptr %0, i64 %14
  call fastcc void @sub_v2_v2v2(ptr noundef nonnull %4, ptr noundef %19, ptr noundef %17) #20
  %20 = call fastcc float @cross_v2v2(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %21 = call float @llvm.fabs.f32(float %20)
  %22 = fcmp ogt float %21, 0x3E80000000000000
  br i1 %22, label %23, label %29

23:                                               ; preds = %10
  %24 = fcmp oeq float %12, 0.000000e+00
  br i1 %24, label %29, label %25

25:                                               ; preds = %23
  %26 = fmul float %12, %20
  %27 = fcmp olt float %26, 0.000000e+00
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  br label %32

29:                                               ; preds = %25, %10, %23
  %30 = phi float [ %12, %10 ], [ %20, %23 ], [ %12, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  %31 = icmp eq i64 %13, 4
  br i1 %31, label %32, label %10, !llvm.loop !296

32:                                               ; preds = %29, %28, %1
  %33 = phi i8 [ 0, %1 ], [ 0, %28 ], [ 1, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret i8 %33
}

; Function Attrs: optsize
declare float @angle_signed_v2v2(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @apply_mouse_slide(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !297 {
  %3 = load i16, ptr %1, align 8, !tbaa !127
  %4 = icmp eq i16 %3, 1
  br i1 %4, label %5, label %42

5:                                                ; preds = %2
  %6 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %7 = tail call ptr @ED_space_clip_get_clip(ptr noundef %6) #18
  %8 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 11
  %9 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %8) #18
  %10 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %6) #18
  %11 = load ptr, ptr %9, align 8, !tbaa !97
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.SlideMarkerData, ptr %1, i64 0, i32 2
  br label %15

15:                                               ; preds = %13, %39
  %16 = phi ptr [ %11, %13 ], [ %40, %39 ]
  %17 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %16, i64 0, i32 8
  %18 = load i32, ptr %17, align 4, !tbaa !76
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %16, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !298
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %16, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !299
  %28 = load ptr, ptr %14, align 8, !tbaa !109
  %29 = zext nneg i32 %23 to i64
  br label %33

30:                                               ; preds = %33
  %31 = add nuw nsw i64 %34, 1
  %32 = icmp eq i64 %31, %29
  br i1 %32, label %39, label %33, !llvm.loop !300

33:                                               ; preds = %25, %30
  %34 = phi i64 [ 0, %25 ], [ %31, %30 ]
  %35 = getelementptr inbounds ptr, ptr %27, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !97
  %37 = icmp eq ptr %36, %28
  br i1 %37, label %38, label %30

38:                                               ; preds = %33
  tail call void @BKE_tracking_track_plane_from_existing_motion(ptr noundef nonnull %16, i32 noundef %10) #18
  br label %39

39:                                               ; preds = %30, %21, %38, %15
  %40 = load ptr, ptr %16, align 8, !tbaa !97
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %15, !llvm.loop !301

42:                                               ; preds = %39, %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_slide_data(ptr noundef %0) unnamed_addr #0 !PGOFuncName !302 {
  %2 = getelementptr inbounds %struct.SlideMarkerData, ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !135
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !97
  tail call void %6(ptr noundef nonnull %3) #18
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !97
  tail call void %8(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @show_cursor(ptr noundef %0) unnamed_addr #0 !PGOFuncName !303 {
  %2 = tail call ptr @CTX_wm_window(ptr noundef %0) #18
  tail call void @WM_cursor_set(ptr noundef %2, i32 noundef 1006) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @cancel_mouse_slide(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !304 {
  %2 = getelementptr inbounds %struct.SlideMarkerData, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !109
  %4 = getelementptr inbounds %struct.SlideMarkerData, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !133
  %6 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %5, i64 0, i32 1
  %7 = getelementptr inbounds %struct.SlideMarkerData, ptr %0, i64 0, i32 19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(32) %7, i64 32, i1 false)
  %8 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %5, i64 0, i32 2
  %9 = getelementptr inbounds %struct.SlideMarkerData, ptr %0, i64 0, i32 15
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %8, ptr noundef nonnull %9) #20
  %10 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %5, i64 0, i32 3
  %11 = getelementptr inbounds %struct.SlideMarkerData, ptr %0, i64 0, i32 16
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %10, ptr noundef nonnull %11) #20
  %12 = getelementptr inbounds %struct.SlideMarkerData, ptr %0, i64 0, i32 17
  tail call fastcc void @copy_v2_v2(ptr noundef %5, ptr noundef nonnull %12) #20
  %13 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %3, i64 0, i32 7
  %14 = getelementptr inbounds %struct.SlideMarkerData, ptr %0, i64 0, i32 18
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %13, ptr noundef nonnull %14) #20
  %15 = getelementptr inbounds %struct.SlideMarkerData, ptr %0, i64 0, i32 20
  %16 = load ptr, ptr %15, align 8, !tbaa !135
  %17 = icmp eq ptr %16, null
  br i1 %17, label %37, label %18

18:                                               ; preds = %1
  %19 = load ptr, ptr %2, align 8, !tbaa !109
  %20 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %19, i64 0, i32 8
  %21 = load i32, ptr %20, align 8, !tbaa !92
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %18, %23
  %24 = phi i64 [ %31, %23 ], [ 0, %18 ]
  %25 = phi ptr [ %32, %23 ], [ %19, %18 ]
  %26 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %25, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !134
  %28 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %27, i64 %24
  %29 = load ptr, ptr %15, align 8, !tbaa !135
  %30 = getelementptr inbounds [2 x float], ptr %29, i64 %24
  tail call fastcc void @copy_v2_v2(ptr noundef %28, ptr noundef %30) #20
  %31 = add nuw nsw i64 %24, 1
  %32 = load ptr, ptr %2, align 8, !tbaa !109
  %33 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %32, i64 0, i32 8
  %34 = load i32, ptr %33, align 8, !tbaa !92
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %31, %35
  br i1 %36, label %23, label %37, !llvm.loop !305

37:                                               ; preds = %23, %18, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: optsize
declare i32 @isect_point_quad_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @cross_v2v2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !306 {
  %3 = load float, ptr %0, align 4, !tbaa !54
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !54
  %8 = load float, ptr %1, align 4, !tbaa !54
  %9 = fneg float %7
  %10 = fmul float %8, %9
  %11 = tail call float @llvm.fmuladd.f32(float %3, float %5, float %10)
  ret float %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: optsize
declare void @BKE_tracking_track_plane_from_existing_motion(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @track_count_markers(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !307 {
  %4 = getelementptr inbounds %struct.MovieClip, ptr %1, i64 0, i32 11
  %5 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %4) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !97
  %7 = icmp eq ptr %6, null
  br i1 %7, label %69, label %8

8:                                                ; preds = %3
  %9 = icmp eq ptr %0, null
  %10 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  br label %11

11:                                               ; preds = %8, %65
  %12 = phi ptr [ %6, %8 ], [ %67, %65 ]
  %13 = phi i32 [ 0, %8 ], [ %66, %65 ]
  %14 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %12, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !81
  br i1 %9, label %39, label %16

16:                                               ; preds = %11
  %17 = and i32 %15, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %16
  %20 = and i32 %15, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %19
  %23 = load i32, ptr %10, align 8, !tbaa !82
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %12, i64 0, i32 14
  %28 = load i32, ptr %27, align 4, !tbaa !88
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %26, %22
  %32 = and i32 %23, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %65, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %12, i64 0, i32 15
  %36 = load i32, ptr %35, align 8, !tbaa !89
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %65, label %52

39:                                               ; preds = %11
  %40 = and i32 %15, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %12, i64 0, i32 14
  %44 = load i32, ptr %43, align 4, !tbaa !88
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %12, i64 0, i32 15
  %49 = load i32, ptr %48, align 8, !tbaa !89
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %34, %26, %19, %42, %39, %47
  %53 = and i32 %15, 64
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = tail call ptr @BKE_tracking_marker_get(ptr noundef nonnull %12, i32 noundef %2) #18
  %57 = icmp eq ptr %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %56, i64 0, i32 5
  %60 = load i32, ptr %59, align 4, !tbaa !98
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58, %55
  %64 = add nsw i32 %13, 1
  br label %65

65:                                               ; preds = %34, %16, %31, %58, %63, %52, %47
  %66 = phi i32 [ %13, %52 ], [ %13, %47 ], [ %64, %63 ], [ %13, %58 ], [ %13, %31 ], [ %13, %16 ], [ %13, %34 ]
  %67 = load ptr, ptr %12, align 8, !tbaa !97
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %11, !llvm.loop !308

69:                                               ; preds = %65, %3
  %70 = phi i32 [ 0, %3 ], [ %66, %65 ]
  ret i32 %70
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @track_init_markers(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !309 {
  %5 = getelementptr inbounds %struct.MovieClip, ptr %1, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #18
  %7 = icmp eq ptr %0, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call fastcc void @clear_invisible_track_selection(ptr noundef nonnull %0, ptr noundef %1) #20
  br label %9

9:                                                ; preds = %8, %4
  %10 = load ptr, ptr %6, align 8, !tbaa !97
  %11 = icmp eq ptr %10, null
  br i1 %11, label %72, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  br label %14

14:                                               ; preds = %12, %68
  %15 = phi ptr [ %10, %12 ], [ %70, %68 ]
  %16 = phi i32 [ 0, %12 ], [ %69, %68 ]
  %17 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %15, i64 0, i32 13
  %18 = load i32, ptr %17, align 8, !tbaa !81
  br i1 %7, label %42, label %19

19:                                               ; preds = %14
  %20 = and i32 %18, 32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %68

22:                                               ; preds = %19
  %23 = and i32 %18, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %55

25:                                               ; preds = %22
  %26 = load i32, ptr %13, align 8, !tbaa !82
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %15, i64 0, i32 14
  %31 = load i32, ptr %30, align 4, !tbaa !88
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %29, %25
  %35 = and i32 %26, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %68, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %15, i64 0, i32 15
  %39 = load i32, ptr %38, align 8, !tbaa !89
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %68, label %55

42:                                               ; preds = %14
  %43 = and i32 %18, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %15, i64 0, i32 14
  %47 = load i32, ptr %46, align 4, !tbaa !88
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %15, i64 0, i32 15
  %52 = load i32, ptr %51, align 8, !tbaa !89
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %37, %29, %22, %45, %42, %50
  %56 = and i32 %18, 96
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = tail call ptr @BKE_tracking_marker_ensure(ptr noundef nonnull %15, i32 noundef %2) #18
  %60 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %15, i64 0, i32 17
  %61 = load i16, ptr %60, align 8, !tbaa !310
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = icmp eq i32 %16, 0
  %65 = sext i16 %61 to i32
  br i1 %64, label %68, label %66

66:                                               ; preds = %63
  %67 = tail call fastcc i32 @min_ii(i32 noundef %16, i32 noundef %65) #20, !range !311
  br label %68

68:                                               ; preds = %63, %37, %19, %34, %55, %66, %58, %50
  %69 = phi i32 [ %67, %66 ], [ %16, %58 ], [ %16, %55 ], [ %16, %50 ], [ %16, %34 ], [ %16, %19 ], [ %16, %37 ], [ %65, %63 ]
  %70 = load ptr, ptr %15, align 8, !tbaa !97
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %14, !llvm.loop !312

72:                                               ; preds = %68, %9
  %73 = phi i32 [ 0, %9 ], [ %69, %68 ]
  store i32 %73, ptr %3, align 4, !tbaa !96
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @track_markers_check_direction(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 !PGOFuncName !313 {
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = icmp slt i32 %1, %2
  br i1 %6, label %10, label %9

7:                                                ; preds = %3
  %8 = icmp sgt i32 %1, %2
  br i1 %8, label %10, label %9

9:                                                ; preds = %7, %5
  br label %10

10:                                               ; preds = %7, %5, %9
  %11 = phi i8 [ 1, %9 ], [ 0, %5 ], [ 0, %7 ]
  ret i8 %11
}

; Function Attrs: optsize
declare ptr @BKE_tracking_context_new(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_tracking_context_step(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_context_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_context_finish(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_context_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_invisible_track_selection(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !314 {
  %3 = getelementptr inbounds %struct.MovieClip, ptr %1, i64 0, i32 11
  %4 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %3) #18
  %5 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 12
  %6 = load i32, ptr %5, align 8, !tbaa !82
  %7 = shl i32 %6, 1
  %8 = and i32 %7, 6
  %9 = xor i32 %8, 6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8, !tbaa !97
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %11, %21
  %15 = phi ptr [ %22, %21 ], [ %12, %11 ]
  %16 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %15, i64 0, i32 13
  %17 = load i32, ptr %16, align 8, !tbaa !81
  %18 = and i32 %17, 32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  tail call void @BKE_tracking_track_flag_clear(ptr noundef nonnull %15, i32 noundef %9, i32 noundef 1) #18
  br label %21

21:                                               ; preds = %20, %14
  %22 = load ptr, ptr %15, align 8, !tbaa !97
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %14, !llvm.loop !315

24:                                               ; preds = %21, %11, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !316 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: optsize
declare void @BKE_tracking_track_flag_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @WM_jobs_test(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @track_markers_initjob(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !317 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %6 = tail call ptr @ED_space_clip_get_clip(ptr noundef %5) #18
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %8 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %5) #18
  call fastcc void @track_init_markers(ptr noundef %5, ptr noundef %6, i32 noundef %8, ptr noundef nonnull %4) #20
  %9 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %5) #18
  %10 = getelementptr inbounds %struct.TrackMarkersJob, ptr %1, i64 0, i32 1
  store i32 %9, ptr %10, align 8, !tbaa !318
  %11 = getelementptr inbounds %struct.TrackMarkersJob, ptr %1, i64 0, i32 5
  store ptr %6, ptr %11, align 8, !tbaa !319
  %12 = getelementptr inbounds %struct.TrackMarkersJob, ptr %1, i64 0, i32 4
  store i32 %2, ptr %12, align 4, !tbaa !320
  %13 = icmp eq i32 %2, 0
  %14 = getelementptr inbounds %struct.TrackMarkersJob, ptr %1, i64 0, i32 2
  br i1 %13, label %15, label %20

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !225
  store i32 %17, ptr %14, align 4, !tbaa !321
  %18 = load i32, ptr %4, align 4, !tbaa !96
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %28

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !224
  store i32 %22, ptr %14, align 4, !tbaa !321
  %23 = load i32, ptr %4, align 4, !tbaa !96
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = sub nsw i32 %9, %23
  %27 = tail call i32 @llvm.smax.i32(i32 %22, i32 %26)
  br label %31

28:                                               ; preds = %15
  %29 = add nsw i32 %18, %9
  %30 = tail call i32 @llvm.smin.i32(i32 %17, i32 %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i32 [ %27, %25 ], [ %30, %28 ]
  store i32 %32, ptr %14, align 4, !tbaa !321
  br label %33

33:                                               ; preds = %31, %20, %15
  %34 = phi i32 [ %22, %20 ], [ %17, %15 ], [ %32, %31 ]
  %35 = getelementptr inbounds %struct.TrackMarkersJob, ptr %1, i64 0, i32 2
  %36 = sitofp i32 %34 to float
  %37 = tail call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef %6, float noundef %36) #18
  %38 = fptosi float %37 to i32
  store i32 %38, ptr %35, align 4, !tbaa !321
  %39 = getelementptr inbounds %struct.MovieClip, ptr %6, i64 0, i32 11, i32 0, i32 12
  %40 = load i16, ptr %39, align 2, !tbaa !322
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 55
  %44 = load i16, ptr %43, align 4, !tbaa !323
  %45 = sitofp i16 %44 to float
  %46 = fdiv float 1.000000e+00, %45
  %47 = fmul float %46, 1.000000e+03
  %48 = getelementptr inbounds %struct.TrackMarkersJob, ptr %1, i64 0, i32 6
  store float %47, ptr %48, align 8, !tbaa !167
  switch i16 %40, label %54 [
    i16 2, label %51
    i16 4, label %49
    i16 5, label %50
  ]

49:                                               ; preds = %42
  br label %51

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %42, %49, %50
  %52 = phi float [ 5.000000e-01, %50 ], [ 4.000000e+00, %49 ], [ 2.000000e+00, %42 ]
  %53 = fmul float %47, %52
  store float %53, ptr %48, align 8, !tbaa !167
  br label %54

54:                                               ; preds = %51, %42, %33
  %55 = getelementptr inbounds %struct.SpaceClip, ptr %5, i64 0, i32 9
  %56 = trunc i32 %2 to i8
  %57 = tail call ptr @BKE_tracking_context_new(ptr noundef nonnull %6, ptr noundef nonnull %55, i8 noundef zeroext %56, i8 noundef zeroext 1) #18
  store ptr %57, ptr %1, align 8, !tbaa !324
  %58 = getelementptr inbounds %struct.MovieClip, ptr %6, i64 0, i32 12
  store ptr %57, ptr %58, align 8, !tbaa !164
  %59 = load i32, ptr %10, align 8, !tbaa !318
  %60 = getelementptr inbounds %struct.TrackMarkersJob, ptr %1, i64 0, i32 3
  store i32 %59, ptr %60, align 8, !tbaa !325
  %61 = getelementptr inbounds %struct.TrackMarkersJob, ptr %1, i64 0, i32 8
  store ptr %7, ptr %61, align 8, !tbaa !326
  %62 = tail call ptr @CTX_data_main(ptr noundef %0) #18
  %63 = getelementptr inbounds %struct.TrackMarkersJob, ptr %1, i64 0, i32 7
  store ptr %62, ptr %63, align 8, !tbaa !327
  %64 = tail call ptr @CTX_wm_screen(ptr noundef %0) #18
  %65 = getelementptr inbounds %struct.TrackMarkersJob, ptr %1, i64 0, i32 9
  store ptr %64, ptr %65, align 8, !tbaa !328
  %66 = load i32, ptr %10, align 8, !tbaa !318
  %67 = load i32, ptr %35, align 4, !tbaa !321
  %68 = tail call fastcc zeroext i8 @track_markers_check_direction(i32 noundef %2, i32 noundef %66, i32 noundef %67) #20, !range !56
  %69 = zext nneg i8 %68 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret i32 %69
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @track_markers_freejob(ptr noundef %0) #0 !PGOFuncName !329 {
  %2 = load ptr, ptr %0, align 8, !tbaa !324
  tail call void @BKE_tracking_context_free(ptr noundef %2) #18
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !97
  tail call void %3(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: optsize
declare ptr @WM_jobs_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_jobs_customdata_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_jobs_timer(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_jobs_callbacks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @track_markers_startjob(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 !PGOFuncName !330 {
  %5 = getelementptr inbounds %struct.TrackMarkersJob, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !318
  %7 = getelementptr inbounds %struct.TrackMarkersJob, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.TrackMarkersJob, ptr %0, i64 0, i32 6
  %9 = getelementptr inbounds %struct.TrackMarkersJob, ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %struct.TrackMarkersJob, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %7, align 4, !tbaa !321
  br label %12

12:                                               ; preds = %51, %4
  %13 = phi i32 [ %11, %4 ], [ %41, %51 ]
  %14 = phi i32 [ %6, %4 ], [ %48, %51 ]
  %15 = icmp eq i32 %14, %13
  br i1 %15, label %54, label %16

16:                                               ; preds = %12
  %17 = load float, ptr %8, align 8, !tbaa !167
  %18 = fcmp ogt float %17, 0.000000e+00
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = tail call double @PIL_check_seconds_timer() #18
  %21 = load ptr, ptr %0, align 8, !tbaa !324
  %22 = tail call zeroext i8 @BKE_tracking_context_step(ptr noundef %21) #18
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %54, label %24

24:                                               ; preds = %19
  %25 = tail call double @PIL_check_seconds_timer() #18
  %26 = fsub double %25, %20
  %27 = load float, ptr %8, align 8, !tbaa !167
  %28 = fptrunc double %26 to float
  %29 = fcmp ogt float %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = fsub float %27, %28
  %32 = fptosi float %31 to i32
  tail call void @PIL_sleep_ms(i32 noundef %32) #18
  br label %37

33:                                               ; preds = %16
  %34 = load ptr, ptr %0, align 8, !tbaa !324
  %35 = tail call zeroext i8 @BKE_tracking_context_step(ptr noundef %34) #18
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %24, %30, %33
  store i16 1, ptr %2, align 2, !tbaa !331
  %38 = load i32, ptr %5, align 8, !tbaa !318
  %39 = sub nsw i32 %14, %38
  %40 = sitofp i32 %39 to float
  %41 = load i32, ptr %7, align 4, !tbaa !321
  %42 = sub nsw i32 %41, %38
  %43 = sitofp i32 %42 to float
  %44 = fdiv float %40, %43
  store float %44, ptr %3, align 4, !tbaa !54
  %45 = load i32, ptr %9, align 4, !tbaa !320
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 1, i32 -1
  %48 = add nsw i32 %47, %14
  store i32 %48, ptr %10, align 8, !tbaa !325
  %49 = load i16, ptr %1, align 2, !tbaa !331
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %37
  %52 = tail call fastcc zeroext i8 @track_markers_testbreak() #20
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %12, label %54, !llvm.loop !332

54:                                               ; preds = %19, %37, %51, %33, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @track_markers_updatejob(ptr nocapture noundef readonly %0) #0 !PGOFuncName !333 {
  %2 = load ptr, ptr %0, align 8, !tbaa !324
  tail call void @BKE_tracking_context_sync(ptr noundef %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @track_markers_endjob(ptr nocapture noundef readonly %0) #0 !PGOFuncName !334 {
  %2 = getelementptr inbounds %struct.TrackMarkersJob, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !327
  %4 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 40
  %5 = load ptr, ptr %4, align 8, !tbaa !335
  %6 = getelementptr inbounds %struct.TrackMarkersJob, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !319
  %8 = getelementptr inbounds %struct.MovieClip, ptr %7, i64 0, i32 12
  store ptr null, ptr %8, align 8, !tbaa !164
  %9 = getelementptr inbounds %struct.TrackMarkersJob, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !325
  %11 = sitofp i32 %10 to float
  %12 = tail call float @BKE_movieclip_remap_clip_to_scene_frame(ptr noundef %7, float noundef %11) #18
  %13 = fptosi float %12 to i32
  %14 = getelementptr inbounds %struct.TrackMarkersJob, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !326
  %16 = getelementptr inbounds %struct.Scene, ptr %15, i64 0, i32 22, i32 5
  store i32 %13, ptr %16, align 8, !tbaa !141
  %17 = icmp eq ptr %5, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load ptr, ptr %2, align 8, !tbaa !327
  tail call void @ED_update_for_newframe(ptr noundef %19, ptr noundef nonnull %15, i32 noundef 0) #18
  br label %20

20:                                               ; preds = %18, %1
  %21 = load ptr, ptr %0, align 8, !tbaa !324
  tail call void @BKE_tracking_context_sync(ptr noundef %21) #18
  %22 = load ptr, ptr %0, align 8, !tbaa !324
  tail call void @BKE_tracking_context_finish(ptr noundef %22) #18
  %23 = load ptr, ptr %14, align 8, !tbaa !326
  tail call void @WM_main_add_notifier(i32 noundef 67305472, ptr noundef %23) #18
  ret void
}

; Function Attrs: optsize
declare void @WM_jobs_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_cursor_wait(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #1

; Function Attrs: optsize
declare void @PIL_sleep_ms(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @track_markers_testbreak() unnamed_addr #13 !PGOFuncName !337 {
  %1 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 7), align 8, !tbaa !169
  ret i8 %1
}

; Function Attrs: optsize
declare void @ED_update_for_newframe(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_refine_marker(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @solve_camera_initjob(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !338 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %8 = tail call ptr @ED_space_clip_get_clip(ptr noundef %7) #18
  %9 = tail call ptr @CTX_data_scene(ptr noundef %0) #18
  %10 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 11
  %11 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  %12 = tail call zeroext i8 @BKE_tracking_reconstruction_check(ptr noundef nonnull %10, ptr noundef %11, ptr noundef %3, i32 noundef 256) #18
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.SpaceClip, ptr %7, i64 0, i32 9
  call void @BKE_movieclip_get_size(ptr noundef %8, ptr noundef nonnull %15, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  %16 = getelementptr inbounds %struct.SolveCameraJob, ptr %1, i64 0, i32 1
  store ptr %8, ptr %16, align 8, !tbaa !339
  store ptr %9, ptr %1, align 8, !tbaa !341
  %17 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !163
  %19 = getelementptr inbounds %struct.SolveCameraJob, ptr %1, i64 0, i32 3
  store ptr %18, ptr %19, align 8, !tbaa !342
  %20 = getelementptr inbounds %struct.SolveCameraJob, ptr %1, i64 0, i32 2
  %21 = load i64, ptr %15, align 8
  store i64 %21, ptr %20, align 8
  %22 = getelementptr inbounds %struct.MovieTrackingObject, ptr %11, i64 0, i32 8
  %23 = load i32, ptr %22, align 8, !tbaa !233
  %24 = getelementptr inbounds %struct.MovieTrackingObject, ptr %11, i64 0, i32 9
  %25 = load i32, ptr %24, align 4, !tbaa !234
  %26 = load i32, ptr %5, align 4, !tbaa !96
  %27 = load i32, ptr %6, align 4, !tbaa !96
  %28 = call ptr @BKE_tracking_reconstruction_context_new(ptr noundef %8, ptr noundef %11, i32 noundef %23, i32 noundef %25, i32 noundef %26, i32 noundef %27) #18
  %29 = getelementptr inbounds %struct.SolveCameraJob, ptr %1, i64 0, i32 5
  store ptr %28, ptr %29, align 8, !tbaa !343
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !97
  %31 = call ptr %30(i64 noundef 256, ptr noundef nonnull @.str.254) #18
  %32 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 11, i32 11
  store ptr %31, ptr %32, align 8, !tbaa !177
  br label %33

33:                                               ; preds = %4, %14
  %34 = phi i32 [ 1, %14 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @solve_camera_freejob(ptr noundef %0) #0 !PGOFuncName !344 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.SolveCameraJob, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !339
  %6 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11
  %7 = load ptr, ptr %0, align 8, !tbaa !341
  %8 = getelementptr inbounds %struct.SolveCameraJob, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !343
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !97
  tail call void %12(ptr noundef nonnull %0) #18
  br label %50

13:                                               ; preds = %1
  %14 = tail call zeroext i8 @BKE_tracking_reconstruction_finish(ptr noundef nonnull %9, ptr noundef nonnull %6) #18
  %15 = icmp eq i8 %14, 0
  %16 = getelementptr inbounds %struct.SolveCameraJob, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !342
  br i1 %15, label %18, label %19

18:                                               ; preds = %13
  tail call void @BKE_report(ptr noundef %17, i32 noundef 16, ptr noundef nonnull @.str.255) #18
  br label %23

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11, i32 4, i32 1
  %21 = load float, ptr %20, align 4, !tbaa !345
  %22 = fpext float %21 to double
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %17, i32 noundef 2, ptr noundef nonnull @.str.256, double noundef %22) #18
  br label %23

23:                                               ; preds = %19, %18
  %24 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 41
  %25 = load ptr, ptr %24, align 8, !tbaa !346
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @id_us_min(ptr noundef %5) #18
  br label %28

28:                                               ; preds = %27, %23
  store ptr %5, ptr %24, align 8, !tbaa !346
  tail call void @id_us_plus(ptr noundef %5) #18
  %29 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !347
  %31 = icmp eq ptr %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 19
  %34 = load ptr, ptr %33, align 8, !tbaa !348
  %35 = icmp eq ptr %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ID, ptr %34, i64 0, i32 4
  %38 = load i16, ptr %37, align 8, !tbaa !331
  %39 = icmp eq i16 %38, 16707
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  %41 = getelementptr inbounds %struct.SolveCameraJob, ptr %0, i64 0, i32 2
  call void @BKE_movieclip_get_size(ptr noundef %5, ptr noundef nonnull %41, ptr noundef nonnull %2, ptr noundef nonnull %3) #18
  %42 = load i32, ptr %2, align 4, !tbaa !96
  %43 = load i32, ptr %3, align 4, !tbaa !96
  call void @BKE_tracking_camera_to_blender(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %34, i32 noundef %42, i32 noundef %43) #18
  call void @WM_main_add_notifier(i32 noundef 83886080, ptr noundef nonnull %34) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  br label %44

44:                                               ; preds = %40, %36, %32, %28
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !97
  %46 = getelementptr inbounds %struct.MovieClip, ptr %5, i64 0, i32 11, i32 11
  %47 = load ptr, ptr %46, align 8, !tbaa !177
  call void %45(ptr noundef %47) #18
  store ptr null, ptr %46, align 8, !tbaa !177
  call void @DAG_id_tag_update(ptr noundef %5, i16 noundef signext 0) #18
  call void @WM_main_add_notifier(i32 noundef 335544322, ptr noundef %5) #18
  call void @WM_main_add_notifier(i32 noundef 85065728, ptr noundef null) #18
  call void @WM_main_add_notifier(i32 noundef 67108864, ptr noundef nonnull %7) #18
  %48 = load ptr, ptr %8, align 8, !tbaa !343
  call void @BKE_tracking_reconstruction_context_free(ptr noundef %48) #18
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !97
  call void %49(ptr noundef nonnull %0) #18
  br label %50

50:                                               ; preds = %44, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @solve_camera_startjob(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !PGOFuncName !351 {
  %5 = getelementptr inbounds %struct.SolveCameraJob, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !343
  %7 = getelementptr inbounds %struct.SolveCameraJob, ptr %0, i64 0, i32 4
  tail call void @BKE_tracking_reconstruction_solve(ptr noundef %6, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %7, i32 noundef 256) #18
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_tracking_reconstruction_check(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_movieclip_get_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_reconstruction_context_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_tracking_reconstruction_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @id_us_min(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_camera_to_blender(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_reconstruction_context_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_reconstruction_solve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_get_active_reconstruction(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @solve_camera_updatejob(ptr noundef %0) #0 !PGOFuncName !352 {
  %2 = getelementptr inbounds %struct.SolveCameraJob, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !339
  %4 = getelementptr inbounds %struct.MovieClip, ptr %3, i64 0, i32 11, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !177
  %6 = getelementptr inbounds %struct.SolveCameraJob, ptr %0, i64 0, i32 4
  %7 = tail call ptr @BLI_strncpy(ptr noundef %5, ptr noundef nonnull %6, i64 noundef 256) #18
  ret void
}

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_track_get_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_track_path_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_dopesheet_tag_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_camera_with_movieclip(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #0 !PGOFuncName !353 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !347
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @BKE_object_movieclip_get(ptr noundef nonnull %0, ptr noundef nonnull %4, i8 noundef zeroext 0) #18
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %29, label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !97
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %9, %26
  %14 = phi ptr [ %27, %26 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !194
  %17 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 3
  %18 = load i16, ptr %17, align 8, !tbaa !354
  %19 = icmp eq i16 %18, 11
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = tail call ptr @BKE_object_movieclip_get(ptr noundef %0, ptr noundef nonnull %16, i8 noundef zeroext 0) #18
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.Base, ptr %14, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !194
  br label %29

26:                                               ; preds = %20, %13
  %27 = load ptr, ptr %14, align 8, !tbaa !97
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %13, !llvm.loop !355

29:                                               ; preds = %26, %9, %23, %6
  %30 = phi ptr [ %4, %6 ], [ %25, %23 ], [ %4, %9 ], [ %4, %26 ]
  ret ptr %30
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @count_selected_bundles(ptr noundef %0) unnamed_addr #0 !PGOFuncName !356 {
  %2 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %3 = tail call ptr @ED_space_clip_get_clip(ptr noundef %2) #18
  %4 = getelementptr inbounds %struct.MovieClip, ptr %3, i64 0, i32 11
  %5 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %4) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !97
  %7 = icmp eq ptr %6, null
  br i1 %7, label %45, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.SpaceClip, ptr %2, i64 0, i32 12
  br label %10

10:                                               ; preds = %8, %41
  %11 = phi ptr [ %6, %8 ], [ %43, %41 ]
  %12 = phi i32 [ 0, %8 ], [ %42, %41 ]
  %13 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %11, i64 0, i32 13
  %14 = load i32, ptr %13, align 8, !tbaa !81
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %10
  %18 = and i32 %14, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load i32, ptr %9, align 8, !tbaa !82
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %11, i64 0, i32 14
  %26 = load i32, ptr %25, align 4, !tbaa !88
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24, %20
  %30 = and i32 %21, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %11, i64 0, i32 15
  %34 = load i32, ptr %33, align 8, !tbaa !89
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
  %43 = load ptr, ptr %11, align 8, !tbaa !97
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %10, !llvm.loop !357

45:                                               ; preds = %41, %1
  %46 = phi i32 [ 0, %1 ], [ %42, %41 ]
  ret i32 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_orientation_object(ptr noundef %0) unnamed_addr #0 !PGOFuncName !358 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #18
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %5) #18
  %7 = getelementptr inbounds %struct.MovieTrackingObject, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !190
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call fastcc ptr @get_camera_with_movieclip(ptr noundef %2, ptr noundef %4) #20
  br label %20

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !193
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Base, ptr %15, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !194
  br label %20

20:                                               ; preds = %17, %11
  %21 = phi ptr [ %12, %11 ], [ %19, %17 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !359
  %26 = icmp eq ptr %25, null
  %27 = select i1 %26, ptr %21, ptr %25
  br label %28

28:                                               ; preds = %13, %23, %20
  %29 = phi ptr [ null, %20 ], [ %27, %23 ], [ null, %13 ]
  ret ptr %29
}

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_tracks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #2 !PGOFuncName !360 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !54
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !361 {
  %3 = load float, ptr %1, align 4, !tbaa !54
  %4 = load float, ptr %0, align 4, !tbaa !54
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !54
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !54
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !54
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !54
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !54
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #5 !PGOFuncName !362 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !54
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare void @BKE_tracking_get_camera_object_matrix(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !363 {
  %3 = load float, ptr %1, align 4, !tbaa !54
  %4 = load float, ptr %0, align 4, !tbaa !54
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !54
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !54
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !54
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !54
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !54
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @object_solver_inverted_matrix(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !364 {
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 106
  %5 = load ptr, ptr %4, align 8, !tbaa !97
  %6 = icmp eq ptr %5, null
  br i1 %6, label %40, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 2
  br label %9

9:                                                ; preds = %33, %7
  %10 = phi ptr [ %35, %33 ], [ %5, %7 ]
  %11 = phi i1 [ false, %33 ], [ true, %7 ]
  br label %12

12:                                               ; preds = %9, %30
  %13 = phi ptr [ %31, %30 ], [ %10, %9 ]
  %14 = tail call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %13) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  %17 = load i16, ptr %14, align 8, !tbaa !365
  %18 = icmp eq i16 %17, 28
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.bConstraint, ptr %13, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !367
  br i1 %11, label %22, label %33

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %21, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !369
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load ptr, ptr %8, align 8, !tbaa !347
  br label %28

28:                                               ; preds = %22, %26
  %29 = phi ptr [ %27, %26 ], [ %24, %22 ]
  tail call void @BKE_object_where_is_calc_mat4(ptr noundef %0, ptr noundef %29, ptr noundef %2) #18
  br label %33

30:                                               ; preds = %16, %12
  %31 = load ptr, ptr %13, align 8, !tbaa !97
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %12, !llvm.loop !371

33:                                               ; preds = %19, %28
  %34 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %21, i64 0, i32 4
  tail call void @mul_m4_m4m4(ptr noundef %2, ptr noundef %2, ptr noundef nonnull %34) #18
  %35 = load ptr, ptr %13, align 8, !tbaa !97
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %9, !llvm.loop !371

37:                                               ; preds = %30
  br i1 %11, label %40, label %38

38:                                               ; preds = %33, %37
  %39 = tail call zeroext i8 @invert_m4(ptr noundef %2) #18
  br label %41

40:                                               ; preds = %3, %37
  tail call void @unit_m4(ptr noundef %2) #18
  br label %41

41:                                               ; preds = %40, %38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !372 {
  %3 = load float, ptr %1, align 4, !tbaa !54
  store float %3, ptr %0, align 4, !tbaa !54
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_object_movieclip_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_object_where_is_calc_mat4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @invert_m4(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !373 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !54
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !54
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !54
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !54
  %15 = load float, ptr %8, align 4, !tbaa !54
  %16 = load float, ptr %2, align 4, !tbaa !54
  %17 = load float, ptr %1, align 4, !tbaa !54
  %18 = load float, ptr %6, align 4, !tbaa !54
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !54
  %23 = load float, ptr %1, align 4, !tbaa !54
  %24 = load float, ptr %10, align 4, !tbaa !54
  %25 = load float, ptr %4, align 4, !tbaa !54
  %26 = load float, ptr %2, align 4, !tbaa !54
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #14 !PGOFuncName !374 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #20
  ret void
}

; Function Attrs: optsize
declare void @BKE_object_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_object_apply_mat4(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_object_where_is_calc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_axis(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #0 !PGOFuncName !375 {
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [4 x [4 x float]], align 16
  %14 = alloca [3 x [3 x float]], align 16
  %15 = tail call fastcc ptr @get_camera_with_movieclip(ptr noundef %0, ptr noundef %2) #20
  %16 = getelementptr inbounds %struct.MovieTrackingObject, ptr %3, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #19
  call void @BKE_object_to_mat4(ptr noundef %1, ptr noundef nonnull %9) #18
  call void @BKE_tracking_get_camera_object_matrix(ptr noundef %0, ptr noundef %15, ptr noundef nonnull %7) #18
  %18 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %4, i64 0, i32 11
  call void @mul_v3_m4v3(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %18) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %8) #20
  %19 = and i32 %17, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #19
  call fastcc void @object_solver_inverted_matrix(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11) #20
  call void @mul_v3_m4v3(ptr noundef nonnull %8, ptr noundef nonnull %11, ptr noundef nonnull %8) #18
  %22 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %11, ptr noundef nonnull %9) #18
  call void @mul_v3_m4v3(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %8) #18
  %23 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 3
  call fastcc void @sub_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %23) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #19
  br label %24

24:                                               ; preds = %21, %6
  %25 = call fastcc float @len_squared_v2(ptr noundef nonnull %8) #20
  %26 = fcmp olt float %25, 0x3EB0C6F7C0000000
  br i1 %26, label %91, label %27

27:                                               ; preds = %24
  call void @unit_m4(ptr noundef nonnull %7) #18
  %28 = icmp eq i8 %5, 88
  br i1 %28, label %29, label %54

29:                                               ; preds = %27
  %30 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !54
  %32 = call float @llvm.fabs.f32(float %31)
  %33 = fcmp olt float %32, 0x3F50624DE0000000
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %7, align 16, !tbaa !54
  %35 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  store float 0.000000e+00, ptr %35, align 8, !tbaa !54
  %36 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1
  store <2 x float> <float 0.000000e+00, float -1.000000e+00>, ptr %36, align 16, !tbaa !54
  %37 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1, i64 2
  store float 0.000000e+00, ptr %37, align 8, !tbaa !54
  %38 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2
  store <2 x float> zeroinitializer, ptr %38, align 16, !tbaa !54
  %39 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2, i64 2
  store float 1.000000e+00, ptr %39, align 8, !tbaa !54
  br label %77

40:                                               ; preds = %29
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #20
  br i1 %20, label %41, label %46

41:                                               ; preds = %40
  %42 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !54
  %44 = call float @llvm.fabs.f32(float %43)
  %45 = fcmp olt float %44, 0x3F50624DE0000000
  br i1 %45, label %46, label %51

46:                                               ; preds = %41, %40
  %47 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  store float 0.000000e+00, ptr %47, align 8, !tbaa !54
  %48 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2
  store <2 x float> zeroinitializer, ptr %48, align 16, !tbaa !54
  %49 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2, i64 2
  store float 1.000000e+00, ptr %49, align 8, !tbaa !54
  %50 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %50, ptr noundef nonnull %48, ptr noundef nonnull %7) #20
  br label %77

51:                                               ; preds = %41
  store float 0.000000e+00, ptr %42, align 4, !tbaa !54
  %52 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %52, ptr noundef nonnull %7, ptr noundef nonnull %8) #20
  %53 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %53, ptr noundef nonnull %7, ptr noundef nonnull %52) #20
  br label %77

54:                                               ; preds = %27
  %55 = load float, ptr %10, align 4, !tbaa !54
  %56 = call float @llvm.fabs.f32(float %55)
  %57 = fcmp olt float %56, 0x3F50624DE0000000
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %7, align 16, !tbaa !54
  %59 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  store float 0.000000e+00, ptr %59, align 8, !tbaa !54
  %60 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1
  store <2 x float> <float 0.000000e+00, float -1.000000e+00>, ptr %60, align 16, !tbaa !54
  %61 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1, i64 2
  store float 0.000000e+00, ptr %61, align 8, !tbaa !54
  %62 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2
  store <2 x float> zeroinitializer, ptr %62, align 16, !tbaa !54
  %63 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2, i64 2
  store float 1.000000e+00, ptr %63, align 8, !tbaa !54
  br label %77

64:                                               ; preds = %54
  %65 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %65, ptr noundef nonnull %8) #20
  br i1 %20, label %66, label %71

66:                                               ; preds = %64
  %67 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !54
  %69 = call float @llvm.fabs.f32(float %68)
  %70 = fcmp olt float %69, 0x3F50624DE0000000
  br i1 %70, label %71, label %75

71:                                               ; preds = %66, %64
  %72 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1, i64 2
  store float 0.000000e+00, ptr %72, align 8, !tbaa !54
  %73 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2
  store <2 x float> zeroinitializer, ptr %73, align 16, !tbaa !54
  %74 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2, i64 2
  store float 1.000000e+00, ptr %74, align 8, !tbaa !54
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %65, ptr noundef nonnull %73) #20
  br label %77

75:                                               ; preds = %66
  store float 0.000000e+00, ptr %67, align 4, !tbaa !54
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %65) #20
  %76 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %76, ptr noundef nonnull %7, ptr noundef nonnull %65) #20
  br label %77

77:                                               ; preds = %58, %75, %71, %34, %51, %46
  %78 = phi i1 [ false, %34 ], [ true, %46 ], [ true, %51 ], [ false, %58 ], [ true, %71 ], [ true, %75 ]
  call fastcc void @normalize_v3(ptr noundef nonnull %7) #20
  %79 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 1
  call fastcc void @normalize_v3(ptr noundef nonnull %79) #20
  %80 = getelementptr inbounds [4 x [4 x float]], ptr %7, i64 0, i64 2
  call fastcc void @normalize_v3(ptr noundef nonnull %80) #20
  br i1 %20, label %83, label %81

81:                                               ; preds = %77
  %82 = call zeroext i8 @invert_m4(ptr noundef nonnull %7) #18
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %9) #18
  br label %90

83:                                               ; preds = %77
  br i1 %78, label %84, label %89

84:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %14) #19
  call void @BKE_object_rot_to_mat3(ptr noundef %1, ptr noundef nonnull %14, i8 noundef zeroext 1) #18
  %85 = call zeroext i8 @invert_m3(ptr noundef nonnull %14) #18
  call void @mul_m4_m4m3(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %14) #18
  call void @unit_m4(ptr noundef nonnull %12) #18
  %86 = getelementptr inbounds [4 x [4 x float]], ptr %12, i64 0, i64 3
  %87 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %86, ptr noundef nonnull %87) #20
  %88 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %13, ptr noundef nonnull %12) #18
  call void @_va_mul_m4_series_5(ptr noundef nonnull %7, ptr noundef nonnull %12, ptr noundef nonnull %7, ptr noundef nonnull %13, ptr noundef nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #19
  br label %90

89:                                               ; preds = %83
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %7) #18
  br label %90

90:                                               ; preds = %84, %89, %81
  call void @BKE_object_apply_mat4(ptr noundef %1, ptr noundef nonnull %7, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  br label %91

91:                                               ; preds = %24, %90
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !PGOFuncName !376 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #20
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #18
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #20
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #20
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !PGOFuncName !377 {
  %3 = load float, ptr %0, align 4, !tbaa !54
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !54
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !54
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #5 !PGOFuncName !378 {
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !54
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !54
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !54
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_object_rot_to_mat3(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @invert_m3(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_m4_m4m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_va_mul_m4_series_5(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @do_set_scale(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 !PGOFuncName !379 {
  %5 = alloca [2 x [3 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %8 = tail call ptr @ED_space_clip_get_clip(ptr noundef %7) #18
  %9 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 11
  %10 = tail call ptr @BKE_tracking_object_get_active(ptr noundef nonnull %9) #18
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #18
  %12 = tail call fastcc ptr @get_camera_with_movieclip(ptr noundef %11, ptr noundef %8) #20
  %13 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #19
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = tail call float @RNA_float_get(ptr noundef %15, ptr noundef nonnull @.str.104) #18
  %17 = tail call fastcc i32 @count_selected_bundles(ptr noundef %0) #20
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !163
  tail call void @BKE_report(ptr noundef %21, i32 noundef 32, ptr noundef nonnull @.str.262) #18
  br label %138

22:                                               ; preds = %4
  %23 = icmp eq i8 %2, 0
  %24 = icmp eq i8 %3, 0
  %25 = or i8 %3, %2
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = tail call fastcc ptr @get_orientation_object(ptr noundef %0) #20
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !163
  tail call void @BKE_report(ptr noundef %32, i32 noundef 32, ptr noundef nonnull @.str.259) #18
  br label %138

33:                                               ; preds = %27, %22
  %34 = phi ptr [ null, %22 ], [ %28, %27 ]
  call void @BKE_tracking_get_camera_object_matrix(ptr noundef %11, ptr noundef %12, ptr noundef nonnull %6) #18
  %35 = load ptr, ptr %13, align 8, !tbaa !97
  %36 = icmp eq ptr %35, null
  br i1 %36, label %75, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.SpaceClip, ptr %7, i64 0, i32 12
  br label %39

39:                                               ; preds = %37, %71
  %40 = phi ptr [ %35, %37 ], [ %73, %71 ]
  %41 = phi i32 [ 0, %37 ], [ %72, %71 ]
  %42 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %40, i64 0, i32 13
  %43 = load i32, ptr %42, align 8, !tbaa !81
  %44 = and i32 %43, 32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %39
  %47 = and i32 %43, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load i32, ptr %38, align 8, !tbaa !82
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %40, i64 0, i32 14
  %55 = load i32, ptr %54, align 4, !tbaa !88
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53, %49
  %59 = and i32 %50, 2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %40, i64 0, i32 15
  %63 = load i32, ptr %62, align 8, !tbaa !89
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61, %53, %46
  %67 = sext i32 %41 to i64
  %68 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %40, i64 0, i32 11
  call void @mul_v3_m4v3(ptr noundef nonnull %68, ptr noundef nonnull %6, ptr noundef nonnull %69) #18
  %70 = add nsw i32 %41, 1
  br label %71

71:                                               ; preds = %66, %61, %58, %39
  %72 = phi i32 [ %70, %66 ], [ %41, %61 ], [ %41, %58 ], [ %41, %39 ]
  %73 = load ptr, ptr %40, align 8, !tbaa !97
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %39, !llvm.loop !380

75:                                               ; preds = %71, %33
  %76 = getelementptr inbounds [2 x [3 x float]], ptr %5, i64 0, i64 1
  call fastcc void @sub_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %76) #20
  %77 = call fastcc float @len_v3(ptr noundef nonnull %5) #20
  %78 = fcmp ogt float %77, 0x3EE4F8B580000000
  br i1 %78, label %79, label %138

79:                                               ; preds = %75
  %80 = call fastcc float @len_v3(ptr noundef nonnull %5) #20
  %81 = fdiv float %16, %80
  br i1 %24, label %105, label %82

82:                                               ; preds = %79
  %83 = call ptr @BKE_tracking_get_active_reconstruction(ptr noundef nonnull %9) #18
  %84 = load ptr, ptr %13, align 8, !tbaa !97
  %85 = icmp eq ptr %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %82, %86
  %87 = phi ptr [ %89, %86 ], [ %84, %82 ]
  %88 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %87, i64 0, i32 11
  call fastcc void @mul_v3_fl(ptr noundef nonnull %88, float noundef %81) #20
  %89 = load ptr, ptr %87, align 8, !tbaa !97
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %86, !llvm.loop !381

91:                                               ; preds = %86, %82
  %92 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %83, i64 0, i32 4
  %93 = load ptr, ptr %92, align 8, !tbaa !182
  %94 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %83, i64 0, i32 3
  %95 = load i32, ptr %94, align 4, !tbaa !183
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %91, %97
  %98 = phi i64 [ %100, %97 ], [ 0, %91 ]
  %99 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %93, i64 %98, i32 2, i64 3
  call fastcc void @mul_v3_fl(ptr noundef nonnull %99, float noundef %81) #20
  %100 = add nuw nsw i64 %98, 1
  %101 = load i32, ptr %94, align 4, !tbaa !183
  %102 = sext i32 %101 to i64
  %103 = icmp slt i64 %100, %102
  br i1 %103, label %97, label %104, !llvm.loop !382

104:                                              ; preds = %97, %91
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544322, ptr noundef %8) #18
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #18
  br label %138

105:                                              ; preds = %79
  %106 = getelementptr inbounds %struct.MovieTrackingObject, ptr %10, i64 0, i32 3
  %107 = load i32, ptr %106, align 8, !tbaa !190
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.Object, ptr %34, i64 0, i32 36
  call fastcc void @mul_v3_fl(ptr noundef nonnull %111, float noundef %81) #20
  %112 = getelementptr inbounds %struct.Object, ptr %34, i64 0, i32 33
  call fastcc void @mul_v3_fl(ptr noundef nonnull %112, float noundef %81) #20
  br label %134

113:                                              ; preds = %105
  br i1 %23, label %114, label %131

114:                                              ; preds = %113
  %115 = call fastcc ptr @object_solver_camera(ptr noundef %11, ptr noundef %34) #20
  %116 = fdiv float 1.000000e+00, %81
  %117 = getelementptr inbounds %struct.Object, ptr %34, i64 0, i32 36
  %118 = getelementptr inbounds %struct.Object, ptr %34, i64 0, i32 36, i64 2
  store float %116, ptr %118, align 4, !tbaa !54
  %119 = getelementptr inbounds %struct.Object, ptr %34, i64 0, i32 36, i64 1
  store float %116, ptr %119, align 4, !tbaa !54
  store float %116, ptr %117, align 4, !tbaa !54
  %120 = icmp eq ptr %115, null
  br i1 %120, label %133, label %121

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.Object, ptr %115, i64 0, i32 36
  %123 = load float, ptr %122, align 4, !tbaa !54
  %124 = fdiv float %116, %123
  store float %124, ptr %117, align 4, !tbaa !54
  %125 = getelementptr inbounds %struct.Object, ptr %115, i64 0, i32 36, i64 1
  %126 = load float, ptr %125, align 4, !tbaa !54
  %127 = fdiv float %116, %126
  store float %127, ptr %119, align 4, !tbaa !54
  %128 = getelementptr inbounds %struct.Object, ptr %115, i64 0, i32 36, i64 2
  %129 = load float, ptr %128, align 4, !tbaa !54
  %130 = fdiv float %116, %129
  store float %130, ptr %118, align 4, !tbaa !54
  br label %133

131:                                              ; preds = %113
  %132 = getelementptr inbounds %struct.MovieTrackingObject, ptr %10, i64 0, i32 4
  store float %81, ptr %132, align 4, !tbaa !383
  br label %134

133:                                              ; preds = %114, %121
  call void @DAG_id_tag_update(ptr noundef %8, i16 noundef signext 0) #18
  br label %136

134:                                              ; preds = %131, %110
  call void @DAG_id_tag_update(ptr noundef %8, i16 noundef signext 0) #18
  %135 = icmp eq ptr %34, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %133, %134
  call void @DAG_id_tag_update(ptr noundef nonnull %34, i16 noundef signext 1) #18
  br label %137

137:                                              ; preds = %136, %134
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544322, ptr noundef %8) #18
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #18
  br label %138

138:                                              ; preds = %75, %137, %104, %30, %19
  %139 = phi i32 [ 2, %19 ], [ 2, %30 ], [ 4, %104 ], [ 4, %137 ], [ 4, %75 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  ret i32 %139
}

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #14 !PGOFuncName !384 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #20
  %3 = tail call float @sqrtf(float noundef %2) #18
  ret float %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @object_solver_camera(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !385 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 106
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2, %22
  %7 = phi ptr [ %23, %22 ], [ %4, %2 ]
  %8 = tail call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %7) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = load i16, ptr %8, align 8, !tbaa !365
  %12 = icmp eq i16 %11, 28
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.bConstraint, ptr %7, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !367
  %16 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !369
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !347
  br label %25

22:                                               ; preds = %6, %10
  %23 = load ptr, ptr %7, align 8, !tbaa !97
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %6, !llvm.loop !386

25:                                               ; preds = %22, %2, %19, %13
  %26 = phi ptr [ %17, %13 ], [ %21, %19 ], [ null, %2 ], [ null, %22 ]
  ret ptr %26
}

; Function Attrs: optsize
declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_plane_track_get_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_movieclip_get_ibuf_flag(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @detect_get_layer(ptr nocapture noundef readonly %0) unnamed_addr #15 !PGOFuncName !387 {
  %2 = getelementptr inbounds %struct.MovieClip, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !388
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bGPdata, ptr %3, i64 0, i32 1
  br label %7

7:                                                ; preds = %11, %5
  %8 = phi ptr [ %6, %5 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bGPDlayer, ptr %9, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !389
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %7, label %16, !llvm.loop !391

16:                                               ; preds = %7, %11, %1
  %17 = phi ptr [ null, %1 ], [ null, %7 ], [ %9, %11 ]
  ret ptr %17
}

; Function Attrs: optsize
declare void @BKE_tracking_detect_harris(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_camera_get_reconstructed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sound_seek_scene(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_tracks_join(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_track_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_track_flag_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_track_clean(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !392 {
  %4 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !134
  %6 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !92
  %8 = icmp ne i32 %2, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %3
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !97
  %11 = sext i32 %7 to i64
  %12 = shl nsw i64 %11, 6
  %13 = tail call ptr %10(i64 noundef %12, ptr noundef nonnull @.str.265) #18
  br label %14

14:                                               ; preds = %9, %3
  %15 = phi ptr [ %13, %9 ], [ null, %3 ]
  %16 = getelementptr %struct.MovieTrackingMarker, ptr %5, i64 1, i32 4
  %17 = getelementptr %struct.MovieTrackingMarker, ptr %5, i64 -1, i32 4
  %18 = icmp sgt i32 %7, 0
  br i1 %18, label %19, label %123

19:                                               ; preds = %14
  %20 = add nsw i32 %7, -1
  %21 = icmp eq i32 %1, 0
  %22 = zext nneg i32 %20 to i64
  %23 = zext nneg i32 %20 to i64
  %24 = zext nneg i32 %7 to i64
  br label %25

25:                                               ; preds = %19, %115
  %26 = phi i64 [ 0, %19 ], [ %120, %115 ]
  %27 = phi i8 [ 1, %19 ], [ %119, %115 ]
  %28 = phi i32 [ 0, %19 ], [ %118, %115 ]
  %29 = phi i32 [ 0, %19 ], [ %121, %115 ]
  %30 = phi i32 [ 0, %19 ], [ %117, %115 ]
  %31 = phi i32 [ -1, %19 ], [ %116, %115 ]
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %5, i64 %26, i32 5
  %35 = load i32, ptr %34, align 4, !tbaa !98
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  %38 = trunc i64 %26 to i32
  br i1 %37, label %39, label %115

39:                                               ; preds = %33, %25
  %40 = phi i32 [ %31, %25 ], [ %38, %33 ]
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %42, label %115

42:                                               ; preds = %39
  %43 = icmp eq i64 %26, %22
  %44 = icmp ult i64 %26, %23
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %5, i64 %26, i32 4
  %47 = load i32, ptr %46, align 4, !tbaa !393
  %48 = getelementptr %struct.MovieTrackingMarker, ptr %16, i64 %26
  %49 = load i32, ptr %48, align 4, !tbaa !393
  %50 = add nsw i32 %49, -1
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %5, i64 %26, i32 5
  %54 = load i32, ptr %53, align 4, !tbaa !98
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %42, %52
  %58 = phi i1 [ false, %42 ], [ %56, %52 ]
  %59 = or i1 %43, %58
  br i1 %59, label %60, label %115

60:                                               ; preds = %45, %57
  %61 = zext nneg i32 %40 to i64
  %62 = icmp eq i64 %26, %61
  %63 = trunc i64 %26 to i32
  br i1 %62, label %71, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %5, i64 %26, i32 4
  %66 = load i32, ptr %65, align 4, !tbaa !393
  %67 = getelementptr %struct.MovieTrackingMarker, ptr %17, i64 %26
  %68 = load i32, ptr %67, align 4, !tbaa !393
  %69 = add nsw i32 %68, 1
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %64, %60
  %72 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %5, i64 %26, i32 5
  %73 = load i32, ptr %72, align 4, !tbaa !98
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  %76 = add nuw nsw i32 %29, 1
  %77 = select i1 %75, i32 %76, i32 %63
  br label %78

78:                                               ; preds = %71, %64
  %79 = phi i32 [ %63, %64 ], [ %77, %71 ]
  %80 = sub i32 %79, %40
  %81 = icmp sge i32 %80, %1
  %82 = select i1 %21, i1 true, i1 %81
  %83 = or i1 %8, %82
  br i1 %83, label %84, label %134

84:                                               ; preds = %78
  %85 = select i1 %82, i8 %27, i8 0
  br i1 %8, label %86, label %115

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %5, i64 %26, i32 5
  %88 = load i32, ptr %87, align 4, !tbaa !98
  %89 = and i32 %88, 1
  br i1 %82, label %90, label %112

90:                                               ; preds = %86
  %91 = add i32 %89, %80
  %92 = icmp eq i32 %28, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %90
  %94 = sext i32 %30 to i64
  %95 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %15, i64 %94
  %96 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %5, i64 %61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %95, ptr noundef nonnull align 4 dereferenceable(64) %96, i64 64, i1 false)
  %97 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %15, i64 %94, i32 4
  %98 = load i32, ptr %97, align 4, !tbaa !393
  %99 = add nsw i32 %98, -1
  store i32 %99, ptr %97, align 4, !tbaa !393
  %100 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %15, i64 %94, i32 5
  %101 = load i32, ptr %100, align 4, !tbaa !98
  %102 = or i32 %101, 1
  store i32 %102, ptr %100, align 4, !tbaa !98
  %103 = add nsw i32 %30, 1
  br label %104

104:                                              ; preds = %93, %90
  %105 = phi i32 [ %103, %93 ], [ %30, %90 ]
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %15, i64 %106
  %108 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %5, i64 %61
  %109 = sext i32 %91 to i64
  %110 = shl nsw i64 %109, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %107, ptr align 4 %108, i64 %110, i1 false)
  %111 = add nsw i32 %105, %91
  br label %115

112:                                              ; preds = %86
  %113 = icmp eq i32 %89, 0
  %114 = select i1 %113, i32 %28, i32 1
  br label %115

115:                                              ; preds = %33, %39, %57, %104, %112, %84
  %116 = phi i32 [ -1, %84 ], [ -1, %112 ], [ -1, %104 ], [ %40, %57 ], [ %40, %39 ], [ -1, %33 ]
  %117 = phi i32 [ %30, %84 ], [ %30, %112 ], [ %111, %104 ], [ %30, %57 ], [ %30, %39 ], [ %30, %33 ]
  %118 = phi i32 [ %28, %84 ], [ %114, %112 ], [ 0, %104 ], [ %28, %57 ], [ %28, %39 ], [ 1, %33 ]
  %119 = phi i8 [ %85, %84 ], [ 0, %112 ], [ %27, %104 ], [ %27, %57 ], [ %27, %39 ], [ %27, %33 ]
  %120 = add nuw nsw i64 %26, 1
  %121 = add nuw nsw i32 %29, 1
  %122 = icmp eq i64 %120, %24
  br i1 %122, label %123, label %25, !llvm.loop !394

123:                                              ; preds = %115, %14
  %124 = phi i32 [ 0, %14 ], [ %117, %115 ]
  %125 = phi i8 [ 1, %14 ], [ %119, %115 ]
  br i1 %8, label %126, label %134

126:                                              ; preds = %123
  %127 = load ptr, ptr @MEM_freeN, align 8, !tbaa !97
  %128 = load ptr, ptr %4, align 8, !tbaa !134
  tail call void %127(ptr noundef %128) #18
  %129 = icmp eq i32 %124, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %126
  store ptr %15, ptr %4, align 8, !tbaa !134
  br label %133

131:                                              ; preds = %126
  store ptr null, ptr %4, align 8, !tbaa !134
  %132 = load ptr, ptr @MEM_freeN, align 8, !tbaa !97
  tail call void %132(ptr noundef %15) #18
  br label %133

133:                                              ; preds = %131, %130
  store i32 %124, ptr %6, align 8, !tbaa !92
  br label %134

134:                                              ; preds = %78, %133, %123
  %135 = phi i8 [ %125, %133 ], [ %125, %123 ], [ 0, %78 ]
  ret i8 %135
}

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_object_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_tracking_object_delete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_clipboard_copy_tracks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_tracks_deselect_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_clipboard_paste_tracks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_tracking_clipboard_has_tracks() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_plane_track_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @slide_plane_marker_customdata(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !395 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %9 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %7) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  call void @ED_space_clip_get_size(ptr noundef %7, ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %10 = load i32, ptr %3, align 4, !tbaa !96
  %11 = icmp eq i32 %10, 0
  %12 = load i32, ptr %4, align 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %45, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  call void @ED_clip_mouse_pos(ptr noundef %7, ptr noundef %8, ptr noundef nonnull %16, ptr noundef nonnull %5) #18
  %17 = call fastcc ptr @tracking_plane_marker_check_slide(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %45, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !97
  %21 = call ptr %20(i64 noundef 80, ptr noundef nonnull @.str.269) #18
  %22 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 2
  %23 = load i16, ptr %22, align 8, !tbaa !60
  %24 = sext i16 %23 to i32
  store i32 %24, ptr %21, align 8, !tbaa !272
  %25 = call ptr @BKE_tracking_plane_marker_ensure(ptr noundef nonnull %17, i32 noundef %9) #18
  %26 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %21, i64 0, i32 1
  store ptr %17, ptr %26, align 8, !tbaa !263
  %27 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %21, i64 0, i32 2
  store ptr %25, ptr %27, align 8, !tbaa !271
  %28 = load i32, ptr %3, align 4, !tbaa !96
  %29 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %21, i64 0, i32 3
  store i32 %28, ptr %29, align 8, !tbaa !267
  %30 = load i32, ptr %4, align 4, !tbaa !96
  %31 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %21, i64 0, i32 4
  store i32 %30, ptr %31, align 4, !tbaa !268
  %32 = load i32, ptr %16, align 4, !tbaa !96
  %33 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %21, i64 0, i32 7
  store i32 %32, ptr %33, align 8, !tbaa !96
  %34 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6, i64 1
  %35 = load i32, ptr %34, align 4, !tbaa !96
  %36 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %21, i64 0, i32 7, i64 1
  store i32 %35, ptr %36, align 4, !tbaa !96
  %37 = load i32, ptr %6, align 4, !tbaa !96
  %38 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %21, i64 0, i32 5
  store i32 %37, ptr %38, align 8, !tbaa !270
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds [4 x [2 x float]], ptr %25, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %21, i64 0, i32 6
  store ptr %40, ptr %41, align 8, !tbaa !269
  %42 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %21, i64 0, i32 8
  call fastcc void @copy_v2_v2(ptr noundef nonnull %42, ptr noundef %40) #20
  %43 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %21, i64 0, i32 9
  %44 = load ptr, ptr %41, align 8, !tbaa !269
  call fastcc void @copy_v2_v2(ptr noundef nonnull %43, ptr noundef %44) #20
  br label %45

45:                                               ; preds = %15, %19, %2
  %46 = phi ptr [ null, %2 ], [ %21, %19 ], [ null, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  ret ptr %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @tracking_plane_marker_check_slide(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) unnamed_addr #0 !PGOFuncName !396 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x float], align 4
  %7 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %8 = tail call ptr @CTX_wm_region(ptr noundef %0) #18
  %9 = tail call ptr @ED_space_clip_get_clip(ptr noundef %7) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %10 = getelementptr inbounds %struct.MovieClip, ptr %9, i64 0, i32 11
  %11 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %10) #18
  %12 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %7) #18
  call void @ED_space_clip_get_size(ptr noundef %7, ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  %13 = load i32, ptr %4, align 4, !tbaa !96
  %14 = icmp eq i32 %13, 0
  %15 = load i32, ptr %5, align 4
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %47, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 6
  call void @ED_clip_mouse_pos(ptr noundef %7, ptr noundef %8, ptr noundef nonnull %19, ptr noundef nonnull %6) #18
  %20 = load ptr, ptr %11, align 8, !tbaa !97
  %21 = icmp eq ptr %20, null
  br i1 %21, label %47, label %22

22:                                               ; preds = %18, %44
  %23 = phi ptr [ %45, %44 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %23, i64 0, i32 8
  %25 = load i32, ptr %24, align 4, !tbaa !76
  %26 = and i32 %25, 3
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = call ptr @BKE_tracking_plane_marker_get(ptr noundef nonnull %23, i32 noundef %12) #18
  %30 = load i32, ptr %4, align 4, !tbaa !96
  %31 = load i32, ptr %5, align 4, !tbaa !96
  br label %32

32:                                               ; preds = %28, %41
  %33 = phi i64 [ 0, %28 ], [ %42, %41 ]
  %34 = getelementptr inbounds [4 x [2 x float]], ptr %29, i64 0, i64 %33
  %35 = call fastcc zeroext i8 @mouse_on_plane_slide_zone(ptr noundef %7, ptr noundef nonnull %6, ptr noundef %34, i32 noundef %30, i32 noundef %31) #20, !range !56
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = icmp eq ptr %2, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %37
  %40 = trunc i64 %33 to i32
  store i32 %40, ptr %2, align 4, !tbaa !96
  br label %47

41:                                               ; preds = %32
  %42 = add nuw nsw i64 %33, 1
  %43 = icmp eq i64 %42, 4
  br i1 %43, label %44, label %32, !llvm.loop !397

44:                                               ; preds = %41, %22
  %45 = load ptr, ptr %23, align 8, !tbaa !97
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %22, !llvm.loop !398

47:                                               ; preds = %44, %18, %39, %37, %3
  %48 = phi ptr [ null, %3 ], [ %23, %37 ], [ %23, %39 ], [ null, %18 ], [ null, %44 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret ptr %48
}

; Function Attrs: optsize
declare ptr @BKE_tracking_plane_marker_ensure(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_plane_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @mouse_on_plane_slide_zone(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #8 !PGOFuncName !399 {
  %6 = sitofp i32 %3 to float
  %7 = fdiv float 1.200000e+01, %6
  %8 = getelementptr inbounds %struct.SpaceClip, ptr %0, i64 0, i32 8
  %9 = load float, ptr %8, align 4, !tbaa !102
  %10 = fdiv float %7, %9
  %11 = sitofp i32 %4 to float
  %12 = fdiv float 1.200000e+01, %11
  %13 = fdiv float %12, %9
  %14 = load float, ptr %2, align 4, !tbaa !54
  %15 = fsub float %14, %10
  %16 = fadd float %14, %10
  %17 = fcmp olt float %15, %16
  %18 = load float, ptr %1, align 4, !tbaa !54
  br i1 %17, label %19, label %23

19:                                               ; preds = %5
  %20 = fcmp ugt float %15, %18
  %21 = fcmp ugt float %18, %16
  %22 = or i1 %20, %21
  br i1 %22, label %41, label %27

23:                                               ; preds = %5
  %24 = fcmp ugt float %16, %18
  %25 = fcmp ugt float %18, %15
  %26 = or i1 %24, %25
  br i1 %26, label %41, label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds float, ptr %2, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !54
  %30 = fsub float %29, %13
  %31 = fadd float %13, %29
  %32 = fcmp olt float %30, %31
  %33 = getelementptr inbounds float, ptr %1, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !54
  %35 = select i1 %32, float %30, float %31
  %36 = select i1 %32, float %31, float %30
  %37 = fcmp ole float %35, %34
  %38 = fcmp ole float %34, %36
  %39 = and i1 %37, %38
  %40 = zext i1 %39 to i8
  br label %41

41:                                               ; preds = %23, %19, %27
  %42 = phi i8 [ %40, %27 ], [ 0, %19 ], [ 0, %23 ]
  ret i8 %42
}

; Function Attrs: optsize
declare float @closest_to_line_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @slide_plane_marker_update_homographies(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !400 {
  %3 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %0) #18
  %4 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !263
  tail call void @BKE_tracking_track_plane_from_existing_motion(ptr noundef %5, i32 noundef %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_slide_plane_marker_data(ptr noundef %0) unnamed_addr #0 !PGOFuncName !401 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !97
  tail call void %2(ptr noundef %0) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @cancel_mouse_slide_plane_marker(ptr nocapture noundef readonly %0) unnamed_addr #16 !PGOFuncName !402 {
  %2 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !269
  %4 = getelementptr inbounds %struct.SlidePlaneMarkerData, ptr %0, i64 0, i32 9
  tail call fastcc void @copy_v2_v2(ptr noundef %3, ptr noundef nonnull %4) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @keyframe_set_flag(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !PGOFuncName !403 {
  %3 = tail call ptr @CTX_wm_space_clip(ptr noundef %0) #18
  %4 = tail call ptr @ED_space_clip_get_clip(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.MovieClip, ptr %4, i64 0, i32 11
  %6 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %5) #18
  %7 = tail call ptr @BKE_tracking_get_active_plane_tracks(ptr noundef nonnull %5) #18
  %8 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %3) #18
  %9 = load ptr, ptr %6, align 8, !tbaa !97
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.SpaceClip, ptr %3, i64 0, i32 12
  %13 = icmp eq i8 %1, 0
  br label %19

14:                                               ; preds = %58, %2
  %15 = load ptr, ptr %7, align 8, !tbaa !97
  %16 = icmp eq ptr %15, null
  br i1 %16, label %93, label %17

17:                                               ; preds = %14
  %18 = icmp eq i8 %1, 0
  br label %61

19:                                               ; preds = %11, %58
  %20 = phi ptr [ %9, %11 ], [ %59, %58 ]
  %21 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %20, i64 0, i32 13
  %22 = load i32, ptr %21, align 8, !tbaa !81
  %23 = and i32 %22, 32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %19
  %26 = and i32 %22, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load i32, ptr %12, align 8, !tbaa !82
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %20, i64 0, i32 14
  %34 = load i32, ptr %33, align 4, !tbaa !88
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32, %28
  %38 = and i32 %29, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %20, i64 0, i32 15
  %42 = load i32, ptr %41, align 8, !tbaa !89
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %40, %32, %25
  br i1 %13, label %51, label %46

46:                                               ; preds = %45
  %47 = tail call ptr @BKE_tracking_marker_ensure(ptr noundef nonnull %20, i32 noundef %8) #18
  %48 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %47, i64 0, i32 5
  %49 = load i32, ptr %48, align 4, !tbaa !98
  %50 = and i32 %49, -3
  store i32 %50, ptr %48, align 4, !tbaa !98
  br label %58

51:                                               ; preds = %45
  %52 = tail call ptr @BKE_tracking_marker_get_exact(ptr noundef nonnull %20, i32 noundef %8) #18
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %52, i64 0, i32 5
  %56 = load i32, ptr %55, align 4, !tbaa !98
  %57 = or i32 %56, 2
  store i32 %57, ptr %55, align 4, !tbaa !98
  br label %58

58:                                               ; preds = %51, %54, %19, %37, %40, %46
  %59 = load ptr, ptr %20, align 8, !tbaa !97
  %60 = icmp eq ptr %59, null
  br i1 %60, label %14, label %19, !llvm.loop !404

61:                                               ; preds = %17, %90
  %62 = phi ptr [ %15, %17 ], [ %91, %90 ]
  %63 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %62, i64 0, i32 8
  %64 = load i32, ptr %63, align 4, !tbaa !76
  %65 = and i32 %64, 3
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %90

67:                                               ; preds = %61
  br i1 %18, label %78, label %68

68:                                               ; preds = %67
  %69 = tail call ptr @BKE_tracking_plane_marker_ensure(ptr noundef nonnull %62, i32 noundef %8) #18
  %70 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %69, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !273
  %72 = and i32 %71, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %68
  %75 = and i32 %71, -3
  store i32 %75, ptr %70, align 4, !tbaa !273
  %76 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %69, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !405
  tail call void @BKE_tracking_track_plane_from_existing_motion(ptr noundef nonnull %62, i32 noundef %77) #18
  br label %90

78:                                               ; preds = %67
  %79 = tail call ptr @BKE_tracking_plane_marker_get_exact(ptr noundef nonnull %62, i32 noundef %8) #18
  %80 = icmp eq ptr %79, null
  br i1 %80, label %90, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %79, i64 0, i32 2
  %83 = load i32, ptr %82, align 4, !tbaa !273
  %84 = and i32 %83, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = or disjoint i32 %83, 2
  store i32 %87, ptr %82, align 4, !tbaa !273
  %88 = getelementptr inbounds %struct.MovieTrackingPlaneMarker, ptr %79, i64 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !405
  tail call void @BKE_tracking_retrack_plane_from_existing_motion_at_segment(ptr noundef nonnull %62, i32 noundef %89) #18
  br label %90

90:                                               ; preds = %78, %86, %81, %68, %74, %61
  %91 = load ptr, ptr %62, align 8, !tbaa !97
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %61, !llvm.loop !406

93:                                               ; preds = %90, %14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 335544321, ptr noundef %4) #18
  ret void
}

; Function Attrs: optsize
declare void @BKE_tracking_retrack_plane_from_existing_motion_at_segment(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind optsize }
attributes #19 = { nounwind }
attributes #20 = { optsize }

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
!42 = !{!35, !36, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 48}
!45 = !{!35, !36, i64 32}
!46 = !{!35, !36, i64 72}
!47 = !{!35, !41, i64 184}
!48 = !{!35, !36, i64 88}
!49 = !{!"tracking_ops.c:add_marker_invoke"}
!50 = !{!51, !36, i64 112}
!51 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!52 = !{i32 2, i32 5}
!53 = !{!"tracking_ops.c:add_marker_exec"}
!54 = !{!55, !55, i64 0}
!55 = !{!"float", !37, i64 0}
!56 = !{i8 0, i8 2}
!57 = !{!35, !36, i64 64}
!58 = !{!"tracking_ops.c:add_marker_at_click_invoke"}
!59 = !{!"tracking_ops.c:add_marker_at_click_modal"}
!60 = !{!61, !41, i64 16}
!61 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !62, i64 20, !62, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !62, i64 48, !62, i64 52, !63, i64 56, !62, i64 64, !62, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !62, i64 108, !36, i64 112}
!62 = !{!"int", !37, i64 0}
!63 = !{!"double", !37, i64 0}
!64 = !{!61, !62, i64 20}
!65 = !{!66, !62, i64 176}
!66 = !{!"ARegion", !36, i64 0, !36, i64 8, !67, i64 16, !69, i64 176, !69, i64 192, !41, i64 208, !41, i64 210, !41, i64 212, !41, i64 214, !41, i64 216, !41, i64 218, !55, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !36, i64 240, !39, i64 248, !39, i64 264, !39, i64 280, !39, i64 296, !39, i64 312, !39, i64 328, !39, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!67 = !{!"View2D", !68, i64 0, !68, i64 16, !69, i64 32, !69, i64 48, !69, i64 64, !37, i64 80, !37, i64 88, !55, i64 96, !55, i64 100, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !36, i64 128, !62, i64 136, !62, i64 140, !36, i64 144, !36, i64 152}
!68 = !{!"rctf", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12}
!69 = !{!"rcti", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12}
!70 = !{!61, !62, i64 24}
!71 = !{!66, !62, i64 184}
!72 = !{!"tracking_ops.c:delete_track_exec"}
!73 = !{!39, !36, i64 0}
!74 = !{!75, !36, i64 0}
!75 = !{!"MovieTrackingPlaneTrack", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !62, i64 88, !62, i64 92, !36, i64 96, !62, i64 104, !62, i64 108, !36, i64 112, !55, i64 120, !62, i64 124}
!76 = !{!75, !62, i64 108}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!80, !36, i64 0}
!80 = !{!"MovieTrackingTrack", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !62, i64 120, !62, i64 124, !36, i64 128, !37, i64 136, !55, i64 148, !62, i64 152, !62, i64 156, !62, i64 160, !37, i64 164, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !62, i64 184, !55, i64 188, !36, i64 192, !55, i64 200, !55, i64 204}
!81 = !{!80, !62, i64 152}
!82 = !{!83, !62, i64 208}
!83 = !{!"SpaceClip", !36, i64 0, !36, i64 8, !39, i64 16, !62, i64 32, !55, i64 36, !55, i64 40, !55, i64 44, !55, i64 48, !55, i64 52, !84, i64 56, !36, i64 64, !85, i64 72, !62, i64 208, !41, i64 212, !41, i64 214, !62, i64 216, !37, i64 220, !55, i64 228, !55, i64 232, !62, i64 236, !37, i64 240, !37, i64 304, !62, i64 368, !41, i64 372, !41, i64 374, !62, i64 376, !62, i64 380, !37, i64 384, !87, i64 392}
!84 = !{!"MovieClipUser", !62, i64 0, !41, i64 4, !41, i64 6}
!85 = !{!"MovieClipScopes", !41, i64 0, !41, i64 2, !62, i64 4, !62, i64 8, !62, i64 12, !86, i64 16, !36, i64 80, !36, i64 88, !37, i64 96, !41, i64 104, !41, i64 106, !62, i64 108, !36, i64 112, !36, i64 120, !37, i64 128}
!86 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !62, i64 56, !62, i64 60}
!87 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!88 = !{!80, !62, i64 156}
!89 = !{!80, !62, i64 160}
!90 = distinct !{!90, !78}
!91 = !{!"tracking_ops.c:delete_marker_exec"}
!92 = !{!80, !62, i64 120}
!93 = distinct !{!93, !78}
!94 = !{!75, !62, i64 104}
!95 = distinct !{!95, !78}
!96 = !{!62, !62, i64 0}
!97 = !{!36, !36, i64 0}
!98 = !{!86, !62, i64 60}
!99 = !{i32 0, i32 2}
!100 = distinct !{!100, !78}
!101 = !{!"tracking_ops.c:mouse_on_offset"}
!102 = !{!83, !55, i64 52}
!103 = !{!"tracking_ops.c:mouse_on_corner"}
!104 = !{!"tracking_ops.c:get_mouse_pattern_corner"}
!105 = distinct !{!105, !78}
!106 = distinct !{!106, !78}
!107 = !{!"tracking_ops.c:mouse_on_tilt"}
!108 = !{!"tracking_ops.c:slide_marker_invoke"}
!109 = !{!110, !36, i64 8}
!110 = !{!"", !41, i64 0, !41, i64 2, !36, i64 8, !36, i64 16, !37, i64 24, !62, i64 32, !62, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !37, i64 80, !37, i64 88, !37, i64 89, !37, i64 92, !37, i64 100, !37, i64 108, !37, i64 116, !37, i64 124, !36, i64 160}
!111 = !{!112, !36, i64 232}
!112 = !{!"MovieTracking", !113, i64 0, !114, i64 72, !39, i64 128, !39, i64 144, !115, i64 160, !116, i64 184, !36, i64 232, !36, i64 240, !39, i64 248, !62, i64 264, !62, i64 268, !36, i64 272, !117, i64 280}
!113 = !{!"MovieTrackingSettings", !62, i64 0, !41, i64 4, !41, i64 6, !55, i64 8, !41, i64 12, !41, i64 14, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !55, i64 24, !41, i64 28, !41, i64 30, !62, i64 32, !62, i64 36, !62, i64 40, !41, i64 44, !41, i64 46, !55, i64 48, !62, i64 52, !62, i64 56, !55, i64 60, !55, i64 64, !62, i64 68}
!114 = !{!"MovieTrackingCamera", !36, i64 0, !41, i64 8, !41, i64 10, !55, i64 12, !55, i64 16, !55, i64 20, !41, i64 24, !41, i64 26, !37, i64 28, !55, i64 36, !55, i64 40, !55, i64 44, !55, i64 48, !55, i64 52}
!115 = !{!"MovieTrackingReconstruction", !62, i64 0, !55, i64 4, !62, i64 8, !62, i64 12, !36, i64 16}
!116 = !{!"MovieTrackingStabilization", !62, i64 0, !62, i64 4, !62, i64 8, !55, i64 12, !36, i64 16, !55, i64 24, !55, i64 28, !55, i64 32, !62, i64 36, !62, i64 40, !55, i64 44}
!117 = !{!"MovieTrackingDopesheet", !62, i64 0, !41, i64 4, !41, i64 6, !39, i64 8, !39, i64 24, !62, i64 40, !62, i64 44}
!118 = !{!112, !36, i64 240}
!119 = !{!51, !36, i64 96}
!120 = !{!"tracking_ops.c:slide_marker_modal"}
!121 = !{!110, !41, i64 2}
!122 = !{!61, !41, i64 18}
!123 = !{!110, !37, i64 88}
!124 = !{!110, !37, i64 89}
!125 = !{!110, !62, i64 32}
!126 = !{!110, !62, i64 36}
!127 = !{!110, !41, i64 0}
!128 = !{!110, !36, i64 64}
!129 = !{!110, !36, i64 56}
!130 = !{!83, !36, i64 64}
!131 = !{!110, !36, i64 72}
!132 = distinct !{!132, !78}
!133 = !{!110, !36, i64 16}
!134 = !{!80, !36, i64 128}
!135 = !{!110, !36, i64 160}
!136 = distinct !{!136, !78}
!137 = distinct !{!137, !78}
!138 = !{!110, !36, i64 40}
!139 = !{!110, !36, i64 48}
!140 = !{!"tracking_ops.c:track_markers_exec"}
!141 = !{!142, !62, i64 680}
!142 = !{!"Scene", !143, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !62, i64 232, !62, i64 236, !62, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !144, i64 280, !151, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !62, i64 4380, !39, i64 4384, !152, i64 4400, !153, i64 4416, !156, i64 4600, !36, i64 4608, !157, i64 4616, !36, i64 4640, !158, i64 4648, !158, i64 4656, !146, i64 4664, !147, i64 4824, !159, i64 4888, !36, i64 4952}
!143 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !62, i64 100, !62, i64 104, !62, i64 108, !36, i64 112}
!144 = !{!"RenderData", !145, i64 0, !36, i64 248, !36, i64 256, !148, i64 264, !149, i64 328, !62, i64 400, !62, i64 404, !62, i64 408, !55, i64 412, !62, i64 416, !62, i64 420, !62, i64 424, !62, i64 428, !41, i64 432, !41, i64 434, !55, i64 436, !55, i64 440, !55, i64 444, !55, i64 448, !55, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !62, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !62, i64 484, !62, i64 488, !41, i64 492, !41, i64 494, !62, i64 496, !62, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !62, i64 516, !62, i64 520, !62, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !68, i64 544, !68, i64 560, !69, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !55, i64 612, !55, i64 616, !55, i64 620, !55, i64 624, !62, i64 628, !55, i64 632, !55, i64 636, !55, i64 640, !55, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !55, i64 660, !55, i64 664, !41, i64 668, !41, i64 670, !55, i64 672, !55, i64 676, !37, i64 680, !62, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !62, i64 2520, !41, i64 2524, !41, i64 2526, !55, i64 2528, !55, i64 2532, !41, i64 2536, !41, i64 2538, !55, i64 2540, !41, i64 2544, !41, i64 2546, !62, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !55, i64 2560, !55, i64 2564, !36, i64 2568, !62, i64 2576, !55, i64 2580, !37, i64 2584, !150, i64 2616, !62, i64 3976, !62, i64 3980}
!145 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !55, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !146, i64 24, !147, i64 184}
!146 = !{!"ColorManagedViewSettings", !62, i64 0, !62, i64 4, !37, i64 8, !37, i64 72, !55, i64 136, !55, i64 140, !36, i64 144, !36, i64 152}
!147 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!148 = !{!"QuicktimeCodecSettings", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !62, i64 16, !62, i64 20, !62, i64 24, !62, i64 28, !62, i64 32, !62, i64 36, !62, i64 40, !62, i64 44, !41, i64 48, !41, i64 50, !62, i64 52, !62, i64 56, !62, i64 60}
!149 = !{!"FFMpegCodecData", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !62, i64 16, !62, i64 20, !62, i64 24, !62, i64 28, !55, i64 32, !62, i64 36, !62, i64 40, !62, i64 44, !62, i64 48, !62, i64 52, !62, i64 56, !62, i64 60, !36, i64 64}
!150 = !{!"BakeData", !145, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !55, i64 1280, !55, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!151 = !{!"AudioData", !62, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !62, i64 16, !41, i64 20, !41, i64 22, !55, i64 24, !55, i64 28}
!152 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!153 = !{!"GameData", !152, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !154, i64 40, !41, i64 64, !41, i64 66, !55, i64 68, !155, i64 72, !55, i64 128, !55, i64 132, !62, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !55, i64 164, !55, i64 168, !55, i64 172, !55, i64 176, !55, i64 180}
!154 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !55, i64 8, !55, i64 12, !36, i64 16}
!155 = !{!"RecastData", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !55, i64 24, !55, i64 28, !55, i64 32, !55, i64 36, !62, i64 40, !55, i64 44, !55, i64 48, !41, i64 52, !41, i64 54}
!156 = !{!"UnitSettings", !55, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!157 = !{!"PhysicsSettings", !37, i64 0, !62, i64 12, !62, i64 16, !62, i64 20}
!158 = !{!"long", !37, i64 0}
!159 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!160 = !{!84, !62, i64 0}
!161 = distinct !{!161, !78}
!162 = !{!"tracking_ops.c:track_markers_invoke"}
!163 = !{!51, !36, i64 120}
!164 = !{!165, !36, i64 1528}
!165 = !{!"MovieClip", !143, i64 0, !36, i64 120, !37, i64 128, !62, i64 1152, !62, i64 1156, !37, i64 1160, !55, i64 1168, !55, i64 1172, !36, i64 1176, !36, i64 1184, !36, i64 1192, !112, i64 1200, !36, i64 1528, !166, i64 1536, !62, i64 2312, !62, i64 2316, !62, i64 2320, !62, i64 2324, !159, i64 2328}
!166 = !{!"MovieClipProxy", !37, i64 0, !41, i64 768, !41, i64 770, !41, i64 772, !41, i64 774}
!167 = !{!168, !55, i64 32}
!168 = !{!"TrackMarkersJob", !36, i64 0, !62, i64 8, !62, i64 12, !62, i64 16, !62, i64 20, !36, i64 24, !55, i64 32, !36, i64 40, !36, i64 48, !36, i64 56}
!169 = !{!170, !37, i64 2080}
!170 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !62, i64 2096, !62, i64 2100, !37, i64 2104, !62, i64 2108, !62, i64 2112, !37, i64 2116}
!171 = !{!"tracking_ops.c:track_markers_modal"}
!172 = !{!"tracking_ops.c:refine_marker_exec"}
!173 = distinct !{!173, !78}
!174 = !{!"tracking_ops.c:solve_camera_exec"}
!175 = !{!37, !37, i64 0}
!176 = !{!"tracking_ops.c:solve_camera_invoke"}
!177 = !{!112, !36, i64 272}
!178 = !{!115, !62, i64 0}
!179 = !{!"tracking_ops.c:solve_camera_modal"}
!180 = !{!"tracking_ops.c:clear_solution_exec"}
!181 = distinct !{!181, !78}
!182 = !{!115, !36, i64 16}
!183 = !{!115, !62, i64 12}
!184 = !{!"tracking_ops.c:clear_track_path_exec"}
!185 = distinct !{!185, !78}
!186 = !{!"tracking_ops.c:disable_markers_exec"}
!187 = distinct !{!187, !78}
!188 = !{!"tracking_ops.c:set_origin_exec"}
!189 = distinct !{!189, !78}
!190 = !{!191, !62, i64 80}
!191 = !{!"MovieTrackingObject", !36, i64 0, !36, i64 8, !37, i64 16, !62, i64 80, !55, i64 84, !39, i64 88, !39, i64 104, !115, i64 120, !62, i64 144, !62, i64 148}
!192 = !{!"tracking_ops.c:set_orientation_poll"}
!193 = !{!142, !36, i64 168}
!194 = !{!195, !36, i64 32}
!195 = !{!"Base", !36, i64 0, !36, i64 8, !62, i64 16, !62, i64 20, !62, i64 24, !41, i64 28, !41, i64 30, !36, i64 32}
!196 = !{!"tracking_ops.c:set_plane_exec"}
!197 = distinct !{!197, !78}
!198 = !{!"tracking_ops.c:set_axis_exec"}
!199 = distinct !{!199, !78}
!200 = !{!"tracking_ops.c:set_scale_exec"}
!201 = !{!"tracking_ops.c:set_scale_invoke"}
!202 = !{!165, !55, i64 1248}
!203 = !{!"tracking_ops.c:set_solution_scale_exec"}
!204 = !{!"tracking_ops.c:set_solution_scale_invoke"}
!205 = !{!165, !55, i64 1264}
!206 = !{!"tracking_ops.c:set_solution_scale_poll"}
!207 = !{!"tracking_ops.c:apply_solution_scale_exec"}
!208 = !{!"tracking_ops.c:apply_solution_scale_invoke"}
!209 = !{!"tracking_ops.c:apply_solution_scale_poll"}
!210 = !{!"tracking_ops.c:set_center_principal_exec"}
!211 = !{!"tracking_ops.c:hide_tracks_exec"}
!212 = distinct !{!212, !78}
!213 = !{!165, !36, i64 1432}
!214 = distinct !{!214, !78}
!215 = !{!165, !36, i64 1440}
!216 = !{!"tracking_ops.c:hide_tracks_clear_exec"}
!217 = distinct !{!217, !78}
!218 = distinct !{!218, !78}
!219 = !{!"tracking_ops.c:detect_features_exec"}
!220 = !{!165, !62, i64 2312}
!221 = distinct !{!221, !78}
!222 = !{!"tracking_ops.c:frame_jump_exec"}
!223 = !{!83, !62, i64 56}
!224 = !{!142, !62, i64 684}
!225 = !{!142, !62, i64 688}
!226 = !{!165, !62, i64 1360}
!227 = !{!"tracking_ops.c:join_tracks_exec"}
!228 = !{!112, !36, i64 200}
!229 = distinct !{!229, !78}
!230 = !{!"tracking_ops.c:lock_tracks_exec"}
!231 = distinct !{!231, !78}
!232 = !{!"tracking_ops.c:set_solver_keyframe_exec"}
!233 = !{!191, !62, i64 144}
!234 = !{!191, !62, i64 148}
!235 = !{!"tracking_ops.c:track_copy_color_exec"}
!236 = distinct !{!236, !78}
!237 = !{!"tracking_ops.c:stabilize_2d_add_exec"}
!238 = distinct !{!238, !78}
!239 = !{!116, !62, i64 4}
!240 = !{!116, !62, i64 40}
!241 = !{!"tracking_ops.c:stabilize_2d_poll"}
!242 = !{!"tracking_ops.c:stabilize_2d_remove_exec"}
!243 = !{!116, !62, i64 8}
!244 = distinct !{!244, !78}
!245 = !{!"tracking_ops.c:stabilize_2d_select_exec"}
!246 = distinct !{!246, !78}
!247 = !{!"tracking_ops.c:stabilize_2d_set_rotation_exec"}
!248 = !{!116, !36, i64 16}
!249 = !{!"tracking_ops.c:clean_tracks_exec"}
!250 = !{!80, !55, i64 148}
!251 = distinct !{!251, !78}
!252 = !{!"tracking_ops.c:clean_tracks_invoke"}
!253 = !{!165, !62, i64 1252}
!254 = !{!165, !55, i64 1260}
!255 = !{!165, !62, i64 1256}
!256 = !{!"tracking_ops.c:tracking_object_new_exec"}
!257 = !{!"tracking_ops.c:tracking_object_remove_exec"}
!258 = !{!"tracking_ops.c:copy_tracks_exec"}
!259 = !{!"tracking_ops.c:paste_tracks_exec"}
!260 = !{!"tracking_ops.c:paste_tracks_poll"}
!261 = !{!"tracking_ops.c:create_plane_track_tracks_exec"}
!262 = !{!"tracking_ops.c:slide_plane_marker_invoke"}
!263 = !{!264, !36, i64 8}
!264 = !{!"SlidePlaneMarkerData", !62, i64 0, !36, i64 8, !36, i64 16, !62, i64 24, !62, i64 28, !62, i64 32, !36, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72}
!265 = !{!"tracking_ops.c:slide_plane_marker_modal"}
!266 = !{!264, !37, i64 72}
!267 = !{!264, !62, i64 24}
!268 = !{!264, !62, i64 28}
!269 = !{!264, !36, i64 40}
!270 = !{!264, !62, i64 32}
!271 = !{!264, !36, i64 16}
!272 = !{!264, !62, i64 0}
!273 = !{!274, !62, i64 36}
!274 = !{!"MovieTrackingPlaneMarker", !37, i64 0, !62, i64 32, !62, i64 36}
!275 = !{!"tracking_ops.c:keyframe_insert_exec"}
!276 = !{!"tracking_ops.c:keyframe_delete_exec"}
!277 = !{!"tracking_ops.c:add_marker"}
!278 = !{!"tracking_ops.c:add_v2_v2v2"}
!279 = !{!"tracking_ops.c:min_ff"}
!280 = !{!"tracking_ops.c:copy_v2_v2"}
!281 = !{!"tracking_ops.c:mouse_on_slide_zone"}
!282 = !{!"tracking_ops.c:len_squared_v2v2"}
!283 = !{!"tracking_ops.c:sub_v2_v2v2"}
!284 = !{!"tracking_ops.c:dot_v2v2"}
!285 = !{!"tracking_ops.c:slide_marker_tilt_slider"}
!286 = !{!"tracking_ops.c:add_v2_v2"}
!287 = !{!"tracking_ops.c:slide_marker_customdata"}
!288 = !{!"tracking_ops.c:hide_cursor"}
!289 = !{!"tracking_ops.c:create_slide_marker_data"}
!290 = distinct !{!290, !78}
!291 = !{!"tracking_ops.c:sub_v2_v2"}
!292 = !{!"tracking_ops.c:len_squared_v2"}
!293 = !{!"tracking_ops.c:len_v2"}
!294 = !{!"tracking_ops.c:mul_v2_v2fl"}
!295 = !{!"tracking_ops.c:slide_check_corners"}
!296 = distinct !{!296, !78}
!297 = !{!"tracking_ops.c:apply_mouse_slide"}
!298 = !{!75, !62, i64 88}
!299 = !{!75, !36, i64 80}
!300 = distinct !{!300, !78}
!301 = distinct !{!301, !78}
!302 = !{!"tracking_ops.c:free_slide_data"}
!303 = !{!"tracking_ops.c:show_cursor"}
!304 = !{!"tracking_ops.c:cancel_mouse_slide"}
!305 = distinct !{!305, !78}
!306 = !{!"tracking_ops.c:cross_v2v2"}
!307 = !{!"tracking_ops.c:track_count_markers"}
!308 = distinct !{!308, !78}
!309 = !{!"tracking_ops.c:track_init_markers"}
!310 = !{!80, !41, i64 176}
!311 = !{i32 -32768, i32 32768}
!312 = distinct !{!312, !78}
!313 = !{!"tracking_ops.c:track_markers_check_direction"}
!314 = !{!"tracking_ops.c:clear_invisible_track_selection"}
!315 = distinct !{!315, !78}
!316 = !{!"tracking_ops.c:min_ii"}
!317 = !{!"tracking_ops.c:track_markers_initjob"}
!318 = !{!168, !62, i64 8}
!319 = !{!168, !36, i64 24}
!320 = !{!168, !62, i64 20}
!321 = !{!168, !62, i64 12}
!322 = !{!113, !41, i64 30}
!323 = !{!142, !41, i64 820}
!324 = !{!168, !36, i64 0}
!325 = !{!168, !62, i64 16}
!326 = !{!168, !36, i64 48}
!327 = !{!168, !36, i64 40}
!328 = !{!168, !36, i64 56}
!329 = !{!"tracking_ops.c:track_markers_freejob"}
!330 = !{!"tracking_ops.c:track_markers_startjob"}
!331 = !{!41, !41, i64 0}
!332 = distinct !{!332, !78}
!333 = !{!"tracking_ops.c:track_markers_updatejob"}
!334 = !{!"tracking_ops.c:track_markers_endjob"}
!335 = !{!336, !36, i64 1552}
!336 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !41, i64 1040, !41, i64 1042, !41, i64 1044, !41, i64 1046, !158, i64 1048, !37, i64 1056, !41, i64 1072, !36, i64 1080, !39, i64 1088, !39, i64 1104, !39, i64 1120, !39, i64 1136, !39, i64 1152, !39, i64 1168, !39, i64 1184, !39, i64 1200, !39, i64 1216, !39, i64 1232, !39, i64 1248, !39, i64 1264, !39, i64 1280, !39, i64 1296, !39, i64 1312, !39, i64 1328, !39, i64 1344, !39, i64 1360, !39, i64 1376, !39, i64 1392, !39, i64 1408, !39, i64 1424, !39, i64 1440, !39, i64 1456, !39, i64 1472, !39, i64 1488, !39, i64 1504, !39, i64 1520, !39, i64 1536, !39, i64 1552, !39, i64 1568, !39, i64 1584, !39, i64 1600, !39, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!337 = !{!"tracking_ops.c:track_markers_testbreak"}
!338 = !{!"tracking_ops.c:solve_camera_initjob"}
!339 = !{!340, !36, i64 8}
!340 = !{!"", !36, i64 0, !36, i64 8, !84, i64 16, !36, i64 24, !37, i64 32, !36, i64 288}
!341 = !{!340, !36, i64 0}
!342 = !{!340, !36, i64 24}
!343 = !{!340, !36, i64 288}
!344 = !{!"tracking_ops.c:solve_camera_freejob"}
!345 = !{!112, !55, i64 164}
!346 = !{!142, !36, i64 4640}
!347 = !{!142, !36, i64 128}
!348 = !{!349, !36, i64 296}
!349 = !{!"Object", !143, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !62, i64 140, !62, i64 144, !62, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !350, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !62, i64 432, !62, i64 436, !36, i64 440, !36, i64 448, !62, i64 456, !62, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !55, i64 616, !55, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !62, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !62, i64 968, !62, i64 972, !62, i64 976, !62, i64 980, !62, i64 984, !55, i64 988, !55, i64 992, !55, i64 996, !55, i64 1000, !55, i64 1004, !55, i64 1008, !55, i64 1012, !55, i64 1016, !55, i64 1020, !55, i64 1024, !55, i64 1028, !55, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !55, i64 1048, !55, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !55, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !62, i64 1144, !62, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !55, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !158, i64 1304, !158, i64 1312, !62, i64 1320, !62, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!350 = !{!"bAnimVizSettings", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !62, i64 32, !62, i64 36, !62, i64 40, !62, i64 44}
!351 = !{!"tracking_ops.c:solve_camera_startjob"}
!352 = !{!"tracking_ops.c:solve_camera_updatejob"}
!353 = !{!"tracking_ops.c:get_camera_with_movieclip"}
!354 = !{!349, !41, i64 136}
!355 = distinct !{!355, !78}
!356 = !{!"tracking_ops.c:count_selected_bundles"}
!357 = distinct !{!357, !78}
!358 = !{!"tracking_ops.c:get_orientation_object"}
!359 = !{!349, !36, i64 216}
!360 = !{!"tracking_ops.c:zero_v3"}
!361 = !{!"tracking_ops.c:add_v3_v3"}
!362 = !{!"tracking_ops.c:mul_v3_fl"}
!363 = !{!"tracking_ops.c:sub_v3_v3"}
!364 = !{!"tracking_ops.c:object_solver_inverted_matrix"}
!365 = !{!366, !41, i64 0}
!366 = !{!"bConstraintTypeInfo", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 36, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128}
!367 = !{!368, !36, i64 16}
!368 = !{!"bConstraint", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 26, !37, i64 28, !37, i64 29, !37, i64 30, !41, i64 94, !55, i64 96, !55, i64 100, !36, i64 104, !55, i64 112, !55, i64 116}
!369 = !{!370, !36, i64 144}
!370 = !{!"bObjectSolverConstraint", !36, i64 0, !62, i64 8, !62, i64 12, !37, i64 16, !37, i64 80, !36, i64 144}
!371 = distinct !{!371, !78}
!372 = !{!"tracking_ops.c:copy_v3_v3"}
!373 = !{!"tracking_ops.c:cross_v3_v3v3"}
!374 = !{!"tracking_ops.c:normalize_v3"}
!375 = !{!"tracking_ops.c:set_axis"}
!376 = !{!"tracking_ops.c:normalize_v3_v3"}
!377 = !{!"tracking_ops.c:dot_v3v3"}
!378 = !{!"tracking_ops.c:mul_v3_v3fl"}
!379 = !{!"tracking_ops.c:do_set_scale"}
!380 = distinct !{!380, !78}
!381 = distinct !{!381, !78}
!382 = distinct !{!382, !78}
!383 = !{!191, !55, i64 84}
!384 = !{!"tracking_ops.c:len_v3"}
!385 = !{!"tracking_ops.c:object_solver_camera"}
!386 = distinct !{!386, !78}
!387 = !{!"tracking_ops.c:detect_get_layer"}
!388 = !{!165, !36, i64 1192}
!389 = !{!390, !62, i64 40}
!390 = !{!"bGPDlayer", !36, i64 0, !36, i64 8, !39, i64 16, !36, i64 32, !62, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 64}
!391 = distinct !{!391, !78}
!392 = !{!"tracking_ops.c:is_track_clean"}
!393 = !{!86, !62, i64 56}
!394 = distinct !{!394, !78}
!395 = !{!"tracking_ops.c:slide_plane_marker_customdata"}
!396 = !{!"tracking_ops.c:tracking_plane_marker_check_slide"}
!397 = distinct !{!397, !78}
!398 = distinct !{!398, !78}
!399 = !{!"tracking_ops.c:mouse_on_plane_slide_zone"}
!400 = !{!"tracking_ops.c:slide_plane_marker_update_homographies"}
!401 = !{!"tracking_ops.c:free_slide_plane_marker_data"}
!402 = !{!"tracking_ops.c:cancel_mouse_slide_plane_marker"}
!403 = !{!"tracking_ops.c:keyframe_set_flag"}
!404 = distinct !{!404, !78}
!405 = !{!274, !62, i64 32}
!406 = distinct !{!406, !78}
